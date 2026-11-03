import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

/// E-mailek: belépőkód és értesítések (pl. teljesült árfolyam-riasztás).
abstract interface class Mailer {
  Future<void> sendLoginCode(String email, String code);

  /// [headers]: további levélfejlécek (pl. `List-Unsubscribe`). [idempotencyKey]: ugyanazzal
  /// a kulccsal a levél egyszer megy ki (egy időtúllépés utáni újrapróba se küldje kétszer).
  Future<void> send(
    String email, {
    required String subject,
    required String text,
    Map<String, String>? headers,
    String? idempotencyKey,
  });
}

/// A levelező átmenetileg nem fogad több levelet (HTTP 429): a kör álljon meg, és a
/// levél ne számítson sikertelen próbának.
class MailRateLimited implements Exception {
  const MailRateLimited();
  @override
  String toString() => 'MailRateLimited';
}

/// A tárgyból a vezérlőkarakterek (sortörés is) kimaradnak: felhasználói adat (ticker,
/// listanév) se nyithasson új fejlécsort.
String cleanSubject(String subject) => subject.replaceAll(RegExp(r'[\x00-\x1f\x7f]'), ' ');

/// Fejlesztéshez: a kódot a szerver naplójába írja, és megjegyzi (tesztek). Éles
/// módban ([redact]) se a cím, se a kód nem kerül a naplóba (aki a naplót látja, ne
/// léphessen be más nevében) – ilyenkor a levél egyszerűen nem megy ki.
class ConsoleMailer implements Mailer {
  ConsoleMailer({this.redact = false});

  final bool redact;
  final sent = <String, String>{};
  final messages = <({String to, String subject, String text, Map<String, String> headers, String? idempotencyKey})>[];

  /// Ennyi levél és kód marad meg (a tesztekhez): levélküldő nélküli éles szerveren
  /// se nőjön a memória minden riasztással és belépéssel.
  static const keep = 200;

  @override
  Future<void> sendLoginCode(String email, String code) async {
    if (sent.length >= keep && !sent.containsKey(email)) sent.remove(sent.keys.first);
    sent[email] = code;
    stdout.writeln(redact ? '[mail] belépőkód nem ment ki (nincs RESEND_API_KEY)' : '[mail] $email belépőkódja: $code');
  }

  @override
  Future<void> send(
    String email, {
    required String subject,
    required String text,
    Map<String, String>? headers,
    String? idempotencyKey,
  }) async {
    if (messages.length >= keep) messages.removeAt(0);
    messages.add((
      to: email,
      subject: cleanSubject(subject),
      text: text,
      headers: headers ?? const {},
      idempotencyKey: idempotencyKey,
    ));
    stdout.writeln(redact ? '[mail] levél nem ment ki (nincs RESEND_API_KEY)' : '[mail] $email: $subject');
  }
}

/// Resend (https://resend.com) HTTP API-val küld. Env: RESEND_API_KEY, MAIL_FROM.
class ResendMailer implements Mailer {
  ResendMailer({required this.apiKey, required this.from, http.Client? client}) : _client = client ?? http.Client();

  final String apiKey;
  final String from;
  final http.Client _client;

  /// Egy elakadt hívás ne tartsa fel örökre a riasztás- és a levélküldő kört.
  static const timeout = Duration(seconds: 20);

  static final _address = RegExp(r'''[^\s@<>()"',;:]+@[^\s@<>()"',;:]+''');

  /// A szolgáltató hibaválasza a naplóba: rövidítve, a benne idézett címek nélkül.
  static HttpException failure(http.Response res) {
    final body = res.body.replaceAll(_address, '<email>');
    return HttpException('Resend ${res.statusCode}: ${body.length > 300 ? '${body.substring(0, 300)}…' : body}');
  }

  /// Egy 429 után ennyit vár, és egyszer újrapróbálja (a másodpercenkénti keret hamar felszabadul).
  static const rateLimitWait = Duration(milliseconds: 1100);

  Future<void> _post(Map<String, Object?> body, {String? idempotencyKey}) async {
    Future<http.Response> post() => _client
        .post(
          Uri.parse('https://api.resend.com/emails'),
          headers: {
            'authorization': 'Bearer $apiKey',
            'content-type': 'application/json',
            'Idempotency-Key': ?idempotencyKey,
          },
          body: jsonEncode(body),
        )
        .timeout(timeout);
    var res = await post();
    if (res.statusCode == 429) {
      await Future<void>.delayed(rateLimitWait);
      res = await post();
      if (res.statusCode == 429) throw const MailRateLimited();
    }
    if (res.statusCode >= 300) throw failure(res);
  }

  @override
  Future<void> sendLoginCode(String email, String code) => _post({
    'from': from,
    'to': [email],
    'subject': 'WhatStock: $code – belépőkód · sign-in code',
    'text':
        'A WhatStock belépőkódod: $code\n\nYour WhatStock sign-in code: $code\n\n'
        'A kód 10 percig érvényes. / The code is valid for 10 minutes.',
  });

  @override
  Future<void> send(
    String email, {
    required String subject,
    required String text,
    Map<String, String>? headers,
    String? idempotencyKey,
  }) => _post({
    'from': from,
    'to': [email],
    'subject': cleanSubject(subject),
    'text': text,
    'headers': ?headers,
  }, idempotencyKey: idempotencyKey);
}
