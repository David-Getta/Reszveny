import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/core/models/stock_details.dart';
import 'package:reszveny/core/models/stock_report.dart';
import 'package:reszveny/features/analysis/analysis_options.dart';
import 'package:reszveny/features/analysis/report_store.dart';
import 'package:reszveny/features/analysis/stock_analyst.dart';
import 'package:reszveny/features/news/cached_research.dart';
import 'package:reszveny/features/news/daily_brief.dart' show AskSource;
import 'package:reszveny/features/news/research_store.dart';

/// A kért nyelven ad elemzést (a nyelv a címben is).
class _Analyst implements StockAnalyst {
  int calls = 0;

  @override
  String get name => 'test';

  @override
  Future<StockReport> analyze(
    StockDetails details, {
    String outputLanguage = 'English',
    AnalysisOptions options = const AnalysisOptions(),
  }) async {
    calls++;
    return StockReport(
      symbol: details.symbol,
      headline: outputLanguage,
      sections: const [
        ReportSection(kind: ReportSectionKind.summary, title: 'S', paragraphs: ['P']),
      ],
      generatedAt: DateTime.now(),
      language: outputLanguage,
    );
  }
}

/// Az elemzés csak a [gate] után fejeződik be.
class _SlowAnalyst extends _Analyst {
  final gate = Completer<void>();

  @override
  Future<StockReport> analyze(
    StockDetails details, {
    String outputLanguage = 'English',
    AnalysisOptions options = const AnalysisOptions(),
  }) async {
    await gate.future;
    return super.analyze(details, outputLanguage: outputLanguage, options: options);
  }
}

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('after switching the app language the old-language report is not shown, and a new one is made', () async {
    final analyst = _Analyst();
    final store = ReportStore(analyst: analyst);
    await store.generate(const StockDetails(symbol: 'AAPL'), outputLanguage: 'Hungarian');
    expect(store.report('AAPL')!.language, 'Hungarian');
    expect(await store.restore('AAPL', language: 'English'), isNull);
    expect(store.report('AAPL'), isNull);
    await store.generate(const StockDetails(symbol: 'AAPL'), outputLanguage: 'English');
    expect((analyst.calls, store.report('AAPL')!.language), (2, 'English'));
  });

  test('new results: an after-close US report counts from 22:00 UTC that day, in any time zone', () {
    final store = ReportStore(analyst: _Analyst());
    final r = StockReport(
      symbol: 'AAPL',
      headline: 'h',
      sections: const [],
      generatedAt: DateTime.utc(2026, 10, 20),
      nextEarnings: DateTime(2026, 10, 28),
    );
    store.clock = () => DateTime.utc(2026, 10, 28, 14, 30); // Sydney: okt. 29. 1:30
    expect(store.hasNewResults(r), isFalse);
    store.clock = () => DateTime.utc(2026, 10, 28, 22, 30);
    expect(store.hasNewResults(r), isTrue);
  });

  test('an analysis made on the report evening already has the results: no "new results" badge', () {
    final store = ReportStore(analyst: _Analyst());
    final evening = StockReport(
      symbol: 'AAPL',
      headline: 'h',
      sections: const [],
      generatedAt: DateTime.utc(2026, 10, 28, 22, 30),
      nextEarnings: DateTime(2026, 10, 28),
    );
    store.clock = () => DateTime.utc(2026, 10, 28, 22, 31);
    expect(store.hasNewResults(evening), isFalse);
    expect(store.isStale(evening), isFalse);
  });

  test('wiping the local data while an analysis runs does not write it back', () async {
    final analyst = _SlowAnalyst();
    final store = ReportStore(analyst: analyst);
    final running = store.generate(const StockDetails(symbol: 'AAPL'), outputLanguage: 'English');
    await Future<void>.delayed(Duration.zero);
    await store.clearCache();
    analyst.gate.complete();
    await running;
    expect(store.report('AAPL'), isNull);
    expect((await SharedPreferences.getInstance()).getKeys().where((k) => k.startsWith('report_')), isEmpty);
  });

  test('two lookups at once both keep their result after a restart', () async {
    final store = ResearchStore('test_research', keepFor: const Duration(days: 1));
    ({String text, List<AskSource> sources}) result(String t) => (text: t, sources: const <AskSource>[]);
    await Future.wait([
      store.get('a', () async {
        await Future<void>.delayed(const Duration(milliseconds: 5));
        return result('A');
      }),
      store.get('b', () async => result('B')),
    ]);
    final again = ResearchStore('test_research', keepFor: const Duration(days: 1));
    var asked = 0;
    final a = await again.get('a', () async {
      asked++;
      return result('fresh');
    });
    expect((a.text, asked), ('A', 0));
  });

  test('a failed lookup reaches the caller only (no stray error), and it can be asked again', () async {
    final cache = <String, Future<({String text, List<AskSource> sources})>>{};
    final store = ResearchStore('test_failed', keepFor: const Duration(days: 1));
    await expectLater(
      cachedResearch(cache: cache, store: store, key: 'k', ask: () async => throw Exception('500')),
      throwsException,
    );
    await Future<void>.delayed(Duration.zero);
    expect(cache, isEmpty);
    final ok = await cachedResearch(
      cache: cache,
      store: store,
      key: 'k',
      ask: () async => (text: 'fine', sources: const <AskSource>[]),
    );
    expect(ok.text, 'fine');
  });
}
