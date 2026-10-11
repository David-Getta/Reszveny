@Tags(['eval'])
library;

import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/features/analysis/analysis_options.dart';
import 'package:reszveny/features/analysis/claude_stock_analyst.dart';
import 'package:reszveny/features/analysis/report_quality.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/market_data/finnhub_market_data_provider.dart';
import 'package:reszveny/features/market_data/market_data_provider.dart';

/// Valódi API-hívásokkal futó prompt-eval. Pénzbe kerül, ezért csak kulccsal
/// és kézzel indul:
///
/// ```
/// flutter test --tags eval test/eval \
///   --dart-define=ANTHROPIC_API_KEY=... --dart-define=FINNHUB_API_KEY=... \
///   --dart-define=EVAL_SYMBOLS=AAPL,ASML,OTP.BD,BABA,MRNA,KO,SMCI \
///   --dart-define=EVAL_LANGUAGE=Hungarian --dart-define=EVAL_DEPTH=standard \
///   --dart-define=EVAL_OUT=docs/elemzes-minta
/// ```
///
/// Minden részvényhez kiírja a JSON-t és egy olvasható Markdown-t, a végén egy
/// összesítő táblát: minőségpontszám, hibák, szavak, tokenek, gyorsítótár-találat.
const _key = String.fromEnvironment('ANTHROPIC_API_KEY');
const _symbols = String.fromEnvironment('EVAL_SYMBOLS', defaultValue: 'AAPL,ASML,KO');
const _language = String.fromEnvironment('EVAL_LANGUAGE', defaultValue: 'Hungarian');
const _depth = String.fromEnvironment('EVAL_DEPTH', defaultValue: 'standard');
const _out = String.fromEnvironment('EVAL_OUT', defaultValue: 'docs/elemzes-minta');

void main() {
  test(
    'prompt eval on real stocks',
    () async {
      const config = AppConfig();
      final MarketDataProvider market = config.hasFinnhubKey
          ? FinnhubMarketDataProvider(config: config)
          : DemoMarketDataProvider(latency: Duration.zero);
      final analyst = ClaudeStockAnalyst(config: config);
      final options = AnalysisOptions(
        depth: AnalysisDepth.values.asNameMap()[_depth] ?? AnalysisDepth.standard,
        webSearches: AnalysisOptions.searchesFor(
          null,
          AnalysisDepth.values.asNameMap()[_depth] ?? AnalysisDepth.standard,
        ),
      );
      final dir = Directory('$_out/${ClaudeStockAnalyst.promptVersion}')..createSync(recursive: true);
      final rows = <String>[
        '| Ticker | Pont | Szavak | Input | Cache-olvasás | Output | Keresés | Hibák |',
        '|---|---|---|---|---|---|---|---|',
      ];
      for (final symbol in _symbols.split(',').map((s) => s.trim()).where((s) => s.isNotEmpty)) {
        final details = (await market.details(symbol)).withExtras(await market.analysisExtras(symbol));
        final report = await analyst.analyze(details, outputLanguage: _language, options: options);
        final q = ReportQuality.check(report, options: options);
        final u = analyst.lastUsage;
        File('${dir.path}/$symbol.json').writeAsStringSync(const JsonEncoder.withIndent('  ').convert(report.toJson()));
        final md = StringBuffer('# $symbol – ${report.headline}\n\n');
        for (final s in report.sections) {
          md.writeln('## ${s.title}\n');
          for (final p in s.paragraphs) {
            md.writeln('$p\n');
          }
          for (final b in s.bullets) {
            md.writeln('- $b');
          }
          md.writeln();
        }
        md.writeln('## Források\n');
        for (final s in report.sources) {
          md.writeln('- [${s.title}](${s.url})');
        }
        File('${dir.path}/$symbol.md').writeAsStringSync(md.toString());
        rows.add(
          '| $symbol | ${q.score} | ${q.wordCount} | ${u['input_tokens'] ?? 0} | ${u['cache_read_input_tokens'] ?? 0} '
          '| ${u['output_tokens'] ?? 0} | ${u['web_search_requests'] ?? 0} | ${q.issues.join('; ')} |',
        );
      }
      final summary = rows.join('\n');
      File('${dir.path}/SUMMARY.md')
          .writeAsStringSync('# Prompt ${ClaudeStockAnalyst.promptVersion} – $_language, $_depth\n\n$summary\n');
      // ignore: avoid_print
      print(summary);
    },
    skip: _key.isEmpty ? 'ANTHROPIC_API_KEY nincs megadva (--dart-define)' : false,
    timeout: const Timeout(Duration(minutes: 40)),
  );
}
