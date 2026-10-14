import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shelf/shelf.dart';
import 'package:test/test.dart';
import 'package:whatstock_server/src/api.dart';
import 'package:whatstock_server/src/db.dart';
import 'package:whatstock_server/src/purchase_verifier.dart';

void main() {
  late Store store;
  late Api api;
  late List<Map<String, dynamic>> upstream;

  setUp(() {
    store = Store.inMemory();
    upstream = [];
    api = Api(
      store: store,
      anthropicApiKey: 'sk-test',
      finnhubApiKey: 'fh',
      verifier: const DevVerifier(),
      anthropicModel: 'claude-opus-5-5',
      trialModel: 'claude-sonnet-5-5',
      client: MockClient((req) async {
        upstream.add((jsonDecode(req.body) as Map).cast<String, dynamic>());
        return http.Response(
          jsonEncode({
            'stop_reason': 'end_turn',
            'content': [
              {'type': 'text', 'text': 'Answer.'},
            ],
          }),
          200,
        );
      }),
    );
  });

  Future<(int, Map<String, dynamic>)> post(String path, Object? body, {String? token}) async {
    final res = await api.handler(
      Request(
        'POST',
        Uri.parse('http://localhost$path'),
        headers: {'content-type': 'application/json', if (token != null) 'authorization': 'Bearer $token'},
        body: body == null ? null : jsonEncode(body),
      ),
    );
    return (res.statusCode, (jsonDecode(await res.readAsString()) as Map).cast<String, dynamic>());
  }

  Future<(String, String)> newUser() async {
    final (_, b) = await post('/v1/auth/anonymous', null);
    return (b['token'] as String, b['user_id'] as String);
  }

  Map<String, dynamic> ask(List<String> turns) => {
    'system': 'You answer questions about the analysis.',
    'messages': [
      for (var i = 0; i < turns.length; i++) {'role': i.isEven ? 'user' : 'assistant', 'content': turns[i]},
    ],
    'max_tokens': 99999,
    'tools': [
      {'type': 'web_search_20260209', 'name': 'web_search'},
    ],
  };

  test('a follow-up question: the cheaper model in the trial, fixed limits, no tools', () async {
    final (token, uid) = await newUser();
    store.save(store.entitlement(uid)..tier = 'trial');
    final (status, body) = await post('/v1/ask', ask(['What if rates rise?']), token: token);
    expect(status, 200);
    expect(body['content'][0]['text'], 'Answer.');
    final sent = upstream.single;
    expect(sent['model'], 'claude-sonnet-5-5');
    expect(sent['max_tokens'], Api.askMaxTokens);
    expect(sent.containsKey('tools'), isFalse);
    expect((sent['messages'] as List).single['content'], 'What if rates rise?');

    store.save(store.entitlement(uid)..tier = 'pro');
    await post('/v1/ask', ask(['Q1', 'A1', 'Q2']), token: token);
    expect(upstream.last['model'], 'claude-opus-5-5');
  });

  test('daily limit, malformed conversations and accounts without a plan are refused', () async {
    final (token, uid) = await newUser();
    store.save(store.entitlement(uid)..tier = 'trial');
    for (var i = 0; i < Api.askPerDayTrial; i++) {
      expect((await post('/v1/ask', ask(['Q']), token: token)).$1, 200);
    }
    final (limited, body) = await post('/v1/ask', ask(['Q']), token: token);
    expect((limited, body['error']), (429, 'ask_limit'));

    final (t2, u2) = await newUser();
    store.save(store.entitlement(u2)..tier = 'pro');
    expect((await post('/v1/ask', ask(['Q', 'A']), token: t2)).$1, 400, reason: 'must end with the user');
    expect(
      (await post('/v1/ask', {
        'messages': [
          {'role': 'assistant', 'content': 'x'},
        ],
      }, token: t2)).$1,
      400,
    );
    expect(
      (await post('/v1/ask', {
        'messages': [
          {
            'role': 'user',
            'content': [
              {'type': 'image', 'source': {}},
            ],
          },
        ],
      }, token: t2)).$1,
      400,
    );
    expect((await post('/v1/ask', ask(['x' * (Api.askMaxChars + 1)]), token: t2)).$1, 400);

    final (t3, u3) = await newUser();
    store.save(store.entitlement(u3)..tier = null);
    expect((await post('/v1/ask', ask(['Q']), token: t3)).$1, 402);
    expect((await post('/v1/ask', ask(['Q']))).$1, 401);
  });
}
