import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../../core/config/app_config.dart';
import '../../core/errors.dart';
import '../../core/models/stock_report.dart';
import '../news/daily_brief.dart' show AskSource, askWithSources;

/// Egy üzenet a „Kérdezz az elemzésről” beszélgetésben.
class ChatMessage {
  const ChatMessage({required this.fromUser, required this.text, this.sources = const []});

  final bool fromUser;
  final String text;

  /// A válaszhoz használt webes források (ha a modell utánanézett).
  final List<AskSource> sources;
}

/// „Kérdezz az elemzésről”: rövid, a felhasználó nyelvén adott válaszok egy
/// elkészült elemzésről. A modell az elemzés szövegét és számait kapja meg, és
/// ha a kérdéshez újabb vagy hiányzó tény kell, legfeljebb [maxSearches]
/// webkereséssel utánanéz (fizetős csomagban; a források a válasz alatt).
/// Beszélgetésenként legfeljebb [maxQuestions] kérdés.
class AnalysisChat extends ChangeNotifier {
  AnalysisChat({required this.config, http.Client? client, DateTime Function()? clock})
    : _client = client ?? http.Client(),
      _clock = clock ?? DateTime.now;

  final AppConfig config;
  final http.Client _client;
  final DateTime Function() _clock;

  static const maxQuestions = 6;

  /// Kérdésenként legfeljebb ennyi webkeresés (a szerver is korlátozza).
  static const maxSearches = 2;

  /// A portfólió-elemzés jelentésének „tickere”.
  static const portfolioSymbol = 'PORTFOLIO';

  final Map<String, List<ChatMessage>> _threads = {};
  final Set<String> _busy = {};

  static String _key(StockReport r) => '${r.symbol}|${r.generatedAt.toIso8601String()}';

  /// Az elemzéshez tartozó beszélgetés (az app futása alatt megmarad).
  List<ChatMessage> thread(StockReport r) => List.unmodifiable(_threads[_key(r)] ?? const <ChatMessage>[]);

  bool isBusy(StockReport r) => _busy.contains(_key(r));

  int questionsLeft(StockReport r) => maxQuestions - thread(r).where((m) => m.fromUser).length;

  /// Kérdés feltevése; a válasz a beszélgetés végére kerül. Hiba esetén a
  /// kérdés is kikerül (újra feltehető), és [AppException] jön.
  Future<void> ask(StockReport report, String question, {required String companyName, required String language}) async {
    final q = question.trim();
    final key = _key(report);
    if (q.isEmpty || _busy.contains(key) || questionsLeft(report) <= 0) return;
    final list = _threads.putIfAbsent(key, () => []);
    list.add(ChatMessage(fromUser: true, text: q));
    _busy.add(key);
    notifyListeners();
    try {
      final answer = await _send(report, list, companyName: companyName, language: language);
      list.add(ChatMessage(fromUser: false, text: answer.text, sources: answer.sources));
    } catch (_) {
      list.removeLast();
      rethrow;
    } finally {
      _busy.remove(key);
      notifyListeners();
    }
  }

  Future<({String text, List<AskSource> sources})> _send(
    StockReport report,
    List<ChatMessage> history, {
    required String companyName,
    required String language,
  }) {
    final body = {
      'model': config.anthropicModel,
      'max_tokens': 1500,
      'system': [
        {
          'type': 'text',
          'text': systemPrompt(report, companyName: companyName, language: language, today: _clock()),
          // Több kérdésnél az elemzés szövege gyorsítótárból megy.
          'cache_control': {'type': 'ephemeral'},
        },
      ],
      'messages': [
        for (final m in history) {'role': m.fromUser ? 'user' : 'assistant', 'content': m.text},
      ],
      'output_config': {'effort': 'low'},
      'tools': [
        {'type': 'web_search_20260209', 'name': 'web_search', 'max_uses': maxSearches},
      ],
    };
    return askWithSources(config, _client, body);
  }

  /// A rendszerprompt: szerep, szabályok és az elemzés teljes szövege számokkal.
  @visibleForTesting
  static String systemPrompt(
    StockReport r, {
    required String companyName,
    required String language,
    required DateTime today,
  }) {
    // A portfólió-elemzés is ilyen jelentés, „PORTFOLIO” jelöléssel.
    final portfolio = r.symbol == portfolioSymbol;
    final subject = portfolio
        ? 'their whole stock portfolio'
        : (companyName.isEmpty ? r.symbol : '$companyName (${r.symbol})');
    final b = StringBuffer()
      ..writeln(
        'You are the WhatStock analyst. The reader has just read your ${portfolio ? 'review' : 'analysis'} of '
        '$subject and asks follow-up questions about it.',
      )
      ..writeln()
      ..writeln('Rules:')
      ..writeln('- Answer in $language, the way a native financial journalist would explain it to a friend.')
      ..writeln(
        '- Be brief: at most about 150 words, in plain text with short paragraphs or "- " bullets; '
        'no headings, tables or Markdown emphasis.',
      )
      ..writeln(
        '- Base the answer on the analysis below and on general financial knowledge. If the question needs facts '
        'that are newer than the analysis or missing from it (recent news, how two companies are connected, a '
        'figure the analysis lacks), use web search if it is available, at most a couple of searches, and say in '
        'a few words where the fact comes from. If web search is not available, say that the question needs newer '
        'facts and suggest making a new analysis. Never invent facts.',
      )
      ..writeln('- Explain terms simply when asked. Show the arithmetic when you compute a number from the analysis.')
      ..writeln(
        '- Do not tell the reader to buy or sell; describe trade-offs and scenarios, because you do not know '
        'their situation. If asked for a decision, explain what it depends on.',
      )
      ..writeln(
        '- If the question is unrelated to investing or this ${portfolio ? 'portfolio' : 'company'}, '
        'say briefly that you can only help with this analysis.',
      )
      ..writeln()
      ..writeln(
        'Today: ${today.toIso8601String().substring(0, 10)}. Analysis made: ${r.generatedAt.toUtc().toIso8601String()}.',
      )
      ..writeln()
      ..writeln('<analysis>')
      ..writeln('Headline: ${r.headline}');
    for (final s in r.sections) {
      b
        ..writeln()
        ..writeln('## ${s.title}');
      for (final p in s.paragraphs) {
        b.writeln(p);
      }
      for (final bullet in s.bullets) {
        b.writeln('- $bullet');
      }
    }
    if (r.outlook case final o?) {
      b
        ..writeln()
        ..writeln('Outlook data (JSON): ${jsonEncode(o.toJson())}');
    }
    if (r.sources.isNotEmpty) {
      b
        ..writeln()
        ..writeln('Sources: ${r.sources.take(12).map((s) => s.title.isEmpty ? s.url : s.title).join('; ')}');
    }
    b.writeln('</analysis>');
    return b.toString();
  }
}
