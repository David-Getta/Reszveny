import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

/// E-mailek: belépőkód és értesítések (pl. teljesült árfolyam-riasztás).
abstract interface class Mailer {
  Future<void> sendLoginCode(String email, String code);

  Future<void> send(String email, {required String subject, required String text});
}

/// Fejlesztéshez: a kódot a szerver naplójába írja, és megjegyzi (tesztek).
class ConsoleMailer implements Mailer {
  final sent = <String, String>{};
  final messages = <({String to, String subject, String text})>[];

  @override
  Future<void> sendLoginCode(String email, String code) async {
    sent[email] = code;
    stdout.writeln('[mail] $email belépőkódja: $code');
  }

  @override
  Future<void> send(String email, {required String subject, required String text}) async {
    messages.add((to: email, subject: subject, text: text));
    stdout.writeln('[mail] $email: $subject');
  }
}

/// Resend (https://resend.com) HTTP API-val küld. Env: RESEND_API_KEY, MAIL_FROM.
class ResendMailer implements Mailer {
  ResendMailer({required this.apiKey, required this.from, http.Client? client}) : _client = client ?? http.Client();

  final String apiKey;
  final String from;
  final http.Client _client;

  @override
  Future<void> sendLoginCode(String email, String code) async {
    final res = await _client.post(
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
    );
    if (res.statusCode >= 300) throw HttpException('Resend ${res.statusCode}: ${res.body}');
  }

  @override
  Future<void> send(String email, {required String subject, required String text}) async {
    final res = await _client.post(
      Uri.parse('https://api.resend.com/emails'),
      headers: {'authorization': 'Bearer $apiKey', 'content-type': 'application/json'},
      body: jsonEncode({
        'from': from,
        'to': [email],
        'subject': subject,
        'text': text,
      }),
    );
    if (res.statusCode >= 300) throw HttpException('Resend ${res.statusCode}: ${res.body}');
  }
}
