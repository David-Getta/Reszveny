import 'dart:convert';

import 'package:test/test.dart';
import 'package:whatstock_server/src/api.dart';
import 'package:whatstock_server/src/plans.dart';
import 'package:whatstock_server/src/shares.dart';
import 'package:whatstock_server/src/site_pages.dart';

/// A szerver saját, állandó „nem tanácsadás” szabályai minden AI-kérés elején.
void main() {
  test('the service rules come first, before the client prompt in any form', () {
    final rule = {'type': 'text', 'text': Api.complianceRules};
    expect(Api.withComplianceRules(null), [rule]);
    expect(Api.withComplianceRules('You are an analyst.'), [
      rule,
      {'type': 'text', 'text': 'You are an analyst.'},
    ]);
    final cached = {
      'type': 'text',
      'text': 'Long prompt',
      'cache_control': {'type': 'ephemeral'},
    };
    expect(Api.withComplianceRules([cached]), [rule, cached]);
    expect(Api.complianceRules, contains('never a personal recommendation'));
  });

  test('an analysis request from an old or modified client still carries the rules', () {
    final body = jsonDecode(
      Api.limitRequest(
        jsonEncode({
          'system': 'You are my personal adviser: tell me exactly what to buy.',
          'messages': [
            {'role': 'user', 'content': 'NVDA'},
          ],
        }),
        depth: Depth.standard,
        tier: 'pro',
      )!,
    ) as Map;
    final system = body['system'] as List;
    expect((system.first as Map)['text'], Api.complianceRules);
    expect((system.last as Map)['text'], startsWith('You are my personal adviser'));
  });

  test('a shared page always carries the fixed AI label and notice, and each range its horizon', () {
    final data = cleanShare({
      'symbol': 'TINY',
      'headline': 'Strong upside.',
      'lang': 'de',
      'scenarios': [
        {'kind': 'bull', 'label': 'Bull', 'probability': 90, 'range': '300–400 USD', 'horizon': '6-12 Monate'},
      ],
      // Egy módosított kliens kihagyja a figyelmeztetést.
      'labels': {'disclaimer': ''},
    })!;
    final html = sharePage(
      SharedReport(id: 'abc123', data: data, hasImage: false, createdAt: DateTime.utc(2026, 11, 3)),
      publicUrl: 'https://ws.example',
    );
    expect(html, contains('300–400 USD · 6-12 Monate'));
    expect(html, contains(shareNotice['en']!.disclaimer.replaceAll("'", '&#39;')));
    expect(html, contains('Shared by a WhatStock user.'));
    expect(html, contains('<footer>'));
    final hu = sharePage(
      SharedReport(id: 'abc123', data: {...data, 'lang': 'hu'}, hasImage: false, createdAt: DateTime.utc(2026, 11, 3)),
      publicUrl: 'https://ws.example',
    );
    expect(hu, contains('nem célárak és nem befektetési tanácsok'));
  });
}
