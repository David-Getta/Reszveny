import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

/// E-mailek: belépőkód és értesítések (pl. teljesült árfolyam-riasztás).
abstract interface class Mailer {
  Future<void> sendLoginCode(String email, String code);

  /// [headers]: további levélfejlécek (pl. `List-Unsubscribe`).
  Future<void> send(String email, {required String subject, required String text, Map<String, String>? headers});
}

/// Fejlesztéshez: a kódot a szerver naplójába írja, és megjegyzi (tesztek). Éles
/// módban ([redact]) se a cím, se a kód nem kerül a naplóba (aki a naplót látja, ne
/// léphessen be más nevében) – ilyenkor a levél egyszerűen nem megy ki.
class ConsoleMailer implements Mailer {
  ConsoleMailer({this.redact = false});

  final bool redact;
  final sent = <String, String>{};
  final messages = <({String to, String subject, String text, Map<String, String> headers})>[];

  @override
  Future<void> sendLoginCode(String email, String code) async {
    sent[email] = code;
    stdout.writeln(redact ? '[mail] belépőkód nem ment ki (nincs RESEND_API_KEY)' : '[mail] $email belépőkódja: $code');
  }

  @override
  Future<void> send(String email, {required String subject, required String text, Map<String, String>? headers}) async {
    messages.add((to: email, subject: subject, text: text, headers: headers ?? const {}));
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

  @override
  Future<void> sendLoginCode(String email, String code) async {
    final res = await _client
        .post(
          Uri.parse('https://api.resend.com/emails'),
          headers: {'authorization': 'Bearer $apiKey', 'content-type': 'application/json'},
          body: jsonEncode({
            'from': from,
            'to': [email],
            'subject': 'WhatStock belépőkód: $code',
            'text':
                'A WhatStock belépőkódod: $code\n\nYour WhatStock sign-in code: $code\n\n'
                'A kód 10 percig érvényes. / The code is valid for 10 minutes.',
          }),
        )
        .timeout(timeout);
    if (res.statusCode >= 300) throw HttpException('Resend ${res.statusCode}: ${res.body}');
  }

  @override
  Future<void> send(String email, {required String subject, required String text, Map<String, String>? headers}) async {
    final res = await _client
        .post(
          Uri.parse('https://api.resend.com/emails'),
          headers: {'authorization': 'Bearer $apiKey', 'content-type': 'application/json'},
          body: jsonEncode({
            'from': from,
            'to': [email],
            'subject': subject,
            'text': text,
            'headers': ?headers,
          }),
        )
        .timeout(timeout);
    if (res.statusCode >= 300) throw HttpException('Resend ${res.statusCode}: ${res.body}');
  }
}
