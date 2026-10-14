import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../../core/config/app_config.dart';
import '../../core/errors.dart';
import '../../core/models/stock_report.dart';
import 'claude_stock_analyst.dart';

/// Egy üzenet a „Kérdezz az elemzésről” beszélgetésben.
class ChatMessage {
  const ChatMessage({required this.fromUser, required this.text});

  final bool fromUser;
  final String text;
}

/// „Kérdezz az elemzésről”: rövid, a felhasználó nyelvén adott válaszok egy
/// elkészült elemzésről. A modell az elemzés szövegét és számait kapja meg
/// (webkeresés nélkül), így olcsó és gyors. Beszélgetésenként legfeljebb
/// [maxQuestions] kérdés (a kontextus és a költség korlátos marad).
class AnalysisChat extends ChangeNotifier {
  AnalysisChat({required this.config, http.Client? client, DateTime Function()? clock})
    : _client = client ?? http.Client(),
      _clock = clock ?? DateTime.now;

  final AppConfig config;
  final http.Client _client;
  final DateTime Function() _clock;

  static const maxQuestions = 6;

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
      list.add(ChatMessage(fromUser: false, text: answer));
    } catch (_) {
      list.removeLast();
      rethrow;
    } finally {
      _busy.remove(key);
      notifyListeners();
    }
  }

  Future<String> _send(
    StockReport report,
    List<ChatMessage> history, {
    required String companyName,
    required String language,
  }) async {
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
    };
    final http.Response res;
    try {
      res = await _client
          .post(
            Uri.parse(config.askEndpoint),
            headers: {
              'content-type': 'application/json',
              if (config.anthropicApiKey.isNotEmpty) 'x-api-key': config.anthropicApiKey,
              'anthropic-version': ClaudeStockAnalyst.anthropicVersion,
            },
            body: jsonEncode(body),
          )
          .timeout(const Duration(minutes: 2));
    } on Exception catch (e) {
      throw AnalysisException(AppErrorCode.aiUnreachable, cause: e);
    }
    if (res.statusCode == 429 && res.body.contains('ask_limit')) throw const AnalysisException(AppErrorCode.askLimit);
    if (res.statusCode == 402) throw AnalysisException(ClaudeStockAnalyst.quotaErrorFor(res.body), cause: res.body);
    if (res.statusCode != 200) {
      throw AnalysisException(AppErrorCode.aiHttp, detail: '${res.statusCode}', cause: res.body);
    }
    final Map<String, dynamic> j;
    try {
      j = jsonDecode(utf8.decode(res.bodyBytes)) as Map<String, dynamic>;
    } on FormatException catch (e) {
      throw AnalysisException(AppErrorCode.aiBadResponse, cause: e);
    }
    if (j['stop_reason'] == 'refusal') throw const AnalysisException(AppErrorCode.aiRefused);
    final text = [
      for (final b in (j['content'] as List? ?? const []))
        if (b is Map && b['type'] == 'text') b['text'] as String? ?? '',
    ].join().trim();
    if (text.isEmpty) throw const AnalysisException(AppErrorCode.aiBadResponse);
    return text;
  }

  /// A rendszerprompt: szerep, szabályok és az elemzés teljes szövege számokkal.
  @visibleForTesting
  static String systemPrompt(
    StockReport r, {
    required String companyName,
    required String language,
    required DateTime today,
  }) {
    final b = StringBuffer()
      ..writeln(
        'You are the WhatStock analyst. The reader has just read your analysis of '
        '${companyName.isEmpty ? r.symbol : '$companyName (${r.symbol})'} and asks follow-up questions about it.',
      )
      ..writeln()
      ..writeln('Rules:')
      ..writeln('- Answer in $language, the way a native financial journalist would explain it to a friend.')
      ..writeln(
        '- Be brief: at most about 150 words, in plain text with short paragraphs or "- " bullets; '
        'no headings, tables or Markdown emphasis.',
      )
      ..writeln(
        '- Base the answer on the analysis below and on general financial knowledge. You cannot search the web: '
        'if the question needs newer facts than the analysis, say so and suggest making a new analysis.',
      )
      ..writeln('- Explain terms simply when asked. Show the arithmetic when you compute a number from the analysis.')
      ..writeln(
        '- Do not tell the reader to buy or sell; describe trade-offs and scenarios, because you do not know '
        'their situation. If asked for a decision, explain what it depends on.',
      )
      ..writeln(
        '- If the question is unrelated to investing or this company, say briefly that you can only help with this analysis.',
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
