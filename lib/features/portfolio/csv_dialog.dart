import 'dart:convert';
import 'dart:typed_data';

import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/share/share_text.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import 'activity_page.dart';
import 'annual_summary.dart';
import 'bulk_stops.dart';
import 'holdings_import.dart';
import 'cash_dialog.dart';
import 'portfolio_csv.dart';
import 'portfolio_store.dart' show storedCurrency;
import 'portfolio_valuation.dart';

/// A portfólió menüje: exportálás CSV-be (megosztással), importálás beillesztett sorokból.
class PortfolioCsvMenu extends StatelessWidget {
  const PortfolioCsvMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final services = AppServices.of(context);
    return PopupMenuButton<String>(
      key: const ValueKey('portfolio-menu'),
      icon: const Icon(Icons.more_vert_rounded),
      onSelected: (v) async {
        if (v == 'export') {
          await _exportCsv(
            context,
            portfolioCsv(
              services.portfolio.lots,
              dividends: services.portfolio.dividends,
              splits: services.portfolio.splits,
            ),
            'WhatStock portfolio.csv',
          );
        } else if (v == 'dividends') {
          await _exportCsv(context, dividendsCsv(services.portfolio.dividends), 'WhatStock dividends.csv');
        } else if (v == 'cash') {
          if (context.mounted) {
            final positions = services.portfolio.positions;
            await showCashDialog(
              context,
              currency: PortfolioSnapshot.totalCurrency(
                positions,
                services.displayCurrency(Localizations.localeOf(context)),
              ),
            );
          }
        } else if (v == 'activity') {
          if (context.mounted) await showActivityPage(context);
        } else if (v == 'stops') {
          if (context.mounted) await showBulkStops(context);
        } else if (v == 'summary') {
          if (context.mounted) await showAnnualSummary(context);
        } else if (v == 'realized') {
          await _exportCsv(
            context,
            realizedCsv(services.portfolio.allPositions, stored: {for (final l in services.portfolio.lots) l.id: l}),
            'WhatStock realized-gains.csv',
          );
        } else if (v == 'photo') {
          if (context.mounted) await showHoldingsImport(context);
        } else if (context.mounted) {
          await showPortfolioImport(context);
        }
      },
      itemBuilder: (_) => [
        // Minden tranzakció egy listában (szűrve, javítható).
        if (services.portfolio.lots.isNotEmpty || services.portfolio.dividends.isNotEmpty)
          PopupMenuItem(
            key: const ValueKey('portfolio-activity'),
            value: 'activity',
            child: ListTile(leading: const Icon(Icons.history_rounded), title: Text(l10n.activityTitle)),
          ),
        if (services.portfolio.lots.isNotEmpty)
          PopupMenuItem(
            key: const ValueKey('portfolio-export'),
            value: 'export',
            child: ListTile(leading: const Icon(Icons.ios_share_rounded), title: Text(l10n.portfolioExport)),
          ),
        // Követő stop (esés a csúcstól) egyszerre minden pozícióra.
        if (services.portfolio.positions.isNotEmpty)
          PopupMenuItem(
            key: const ValueKey('portfolio-stops'),
            value: 'stops',
            child: ListTile(leading: const Icon(Icons.trending_down_rounded), title: Text(l10n.portfolioStopsAll)),
          ),
        // Éves összesítő (adóbevalláshoz), ha volt eladás, osztalék vagy díj.
        if (summaryYears(services.portfolio).isNotEmpty)
          PopupMenuItem(
            key: const ValueKey('portfolio-annual-summary'),
            value: 'summary',
            child: ListTile(leading: const Icon(Icons.summarize_outlined), title: Text(l10n.portfolioAnnualSummary)),
          ),
        if (services.portfolio.lots.any((l) => l.sell))
          PopupMenuItem(
            key: const ValueKey('portfolio-export-realized'),
            value: 'realized',
            child: ListTile(
              leading: const Icon(Icons.receipt_long_outlined),
              title: Text(l10n.portfolioExportRealized),
            ),
          ),
        if (services.portfolio.dividends.isNotEmpty)
          PopupMenuItem(
            key: const ValueKey('portfolio-export-dividends'),
            value: 'dividends',
            child: ListTile(leading: const Icon(Icons.payments_outlined), title: Text(l10n.portfolioExportDividends)),
          ),
        PopupMenuItem(
          key: const ValueKey('portfolio-cash-edit'),
          value: 'cash',
          child: ListTile(leading: const Icon(Icons.savings_outlined), title: Text(l10n.portfolioCashEdit)),
        ),
        PopupMenuItem(
          key: const ValueKey('portfolio-import-photo'),
          value: 'photo',
          child: ListTile(
            leading: const Icon(Icons.add_photo_alternate_outlined),
            title: Text(l10n.portfolioImportPhoto),
          ),
        ),
        PopupMenuItem(
          key: const ValueKey('portfolio-import'),
          value: 'import',
          child: ListTile(leading: const Icon(Icons.file_download_outlined), title: Text(l10n.portfolioImport)),
        ),
      ],
    );
  }
}

/// Egy export megosztása CSV-fájlként, a nyelv számformátumával (tizedesvesszős
/// nyelven pontosvesszővel – a helyi Excel így rögtön oszlopokra bontja), UTF-8
/// bájtsorrend-jellel, hogy az ékezetes számlanevek is jól jelenjenek meg. Ha a
/// platform nem tud fájlt megosztani, szövegként megy.
Future<void> _exportCsv(BuildContext context, String csv, String fileName) async {
  final text = localCsv(csv, decimalSeparator: Fmt(Localizations.localeOf(context).toString()).decimalSeparator);
  try {
    await shareFile(
      Uint8List.fromList(utf8.encode('\uFEFF$text')),
      fileName: fileName,
      mimeType: 'text/csv',
      subject: fileName,
    );
  } catch (_) {
    await shareText(text, subject: fileName);
  }
}

/// Importálás: a beillesztett vagy fájlból beolvasott sorok vételként vagy
/// eladásként kerülnek a portfólióba. A már meglévő, azonos tranzakciót (ugyanaz
/// a ticker, darab, ár, dátum és irány) nem veszi fel újra, így ugyanaz a
/// bróker-export kétszer is importálható.
Future<void> showPortfolioImport(BuildContext context) async {
  final l10n = AppLocalizations.of(context);
  final messenger = ScaffoldMessenger.of(context);
  final services = AppServices.of(context);
  final parsed = await showDialog<CsvImport>(context: context, builder: (_) => const _ImportDialog());
  if (parsed == null) return;
  // Ticker nélküli export (DEGIRO): az ISIN-ekhez a kereső adja a tickert.
  final isins = parsed.isins;
  if (isins.isNotEmpty) messenger.showSnackBar(SnackBar(content: Text(l10n.loadingData)));
  final resolved = isins.isEmpty ? parsed : parsed.withSymbols(await resolveIsins(services.marketData.search, isins));
  // A régi, fontnak címkézett pennyárak előbb GBX-re javítva (lásd `fixLegacyPence`).
  for (final l in resolved.lots) {
    if (storedCurrency(l.currency) == 'GBX') await services.portfolio.fixLegacyPence(l.symbol, pencePrice: l.price);
  }
  // Egy ticker tételei egy pénznemben: a más pénznemű sor a napja árfolyamán átváltva.
  final aligned = await resolved.inOneCurrency(
    services.portfolio.currencyOf,
    (from, to, day) async => (await services.fx.rateOn(from, to, day))?.rate,
  );
  // A már rögzített sorok kimaradnak (a frissebb export újbóli beolvasása nem dupláz).
  final (rest: result, :duplicates) = aligned.withoutRecorded(services.portfolio.lots, services.portfolio.dividends);
  // A felvett tételek azonosítói: az egész import egy koppintással visszavonható.
  final lotIds = <String>{}, dividendIds = <String>{}, splitIds = <String>{};
  // Egy kötegben: egyetlen értesítés és mentés a végén (nem tételenként).
  await services.portfolio.batch(() async {
    for (final l in result.lots) {
      final lot = await services.portfolio.add(
        symbol: l.symbol,
        quantity: l.quantity,
        price: l.price,
        currency: l.currency,
        date: l.date,
        sell: l.sell,
        account: l.account,
        fee: l.fee,
      );
      lotIds.add(lot.id);
    }
    for (final d in result.dividends) {
      final dividend = await services.portfolio.addDividend(
        symbol: d.symbol,
        amount: d.amount,
        currency: d.currency,
        date: d.date,
        account: d.account,
      );
      dividendIds.add(dividend.id);
    }
    // Felaprózások (saját exportból): a tároló nem veszi fel kétszer ugyanazt (ticker, nap, arány).
    for (final s in result.splits) {
      if (await services.portfolio.addSplit(symbol: s.symbol, from: s.from, to: s.to, date: s.date) case final split?) {
        splitIds.add(split.id);
        await services.alerts.applySplit(split.symbol, from: split.from, to: split.to, date: split.date);
      }
    }
  });
  messenger
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Text(
          [
            l10n.portfolioImported(lotIds.length),
            if (dividendIds.isNotEmpty) l10n.portfolioDividendsImported(dividendIds.length),
            if (splitIds.isNotEmpty) l10n.portfolioSplitsImported(splitIds.length),
            if (duplicates > 0) l10n.portfolioImportDuplicates(duplicates),
            if (result.skipped > 0) l10n.portfolioImportSkipped(result.skipped),
          ].join(' · '),
        ),
        action: lotIds.isEmpty && dividendIds.isEmpty && splitIds.isEmpty
            ? null
            : SnackBarAction(
                key: const ValueKey('portfolio-import-undo'),
                label: l10n.undo,
                onPressed: () async {
                  // A behozott felaprózások riasztás-átszámolása is visszafordul.
                  final splits = services.portfolio.splits.where((s) => splitIds.contains(s.id)).toList();
                  await services.portfolio.removeIds(lots: lotIds, dividends: dividendIds, splits: splitIds);
                  for (final s in splits) {
                    await services.alerts.applySplit(s.symbol, from: s.to, to: s.from, date: s.date);
                  }
                },
              ),
      ),
    );
}

class _ImportDialog extends StatefulWidget {
  const _ImportDialog();

  @override
  State<_ImportDialog> createState() => _ImportDialogState();
}

/// A beolvasható CSV legnagyobb mérete (egy több éves bróker-export is jóval kisebb).
const maxImportBytes = 3 * 1024 * 1024;

class _ImportDialogState extends State<_ImportDialog> {
  final _text = TextEditingController();

  /// Egy bróker-export vagy saját CSV beolvasása fájlból a szövegmezőbe.
  Future<void> _chooseFile() async {
    try {
      final file = await openFile(
        acceptedTypeGroups: const [
          XTypeGroup(
            label: 'CSV',
            extensions: ['csv', 'txt', 'tsv'],
            uniformTypeIdentifiers: ['public.comma-separated-values-text', 'public.plain-text'],
          ),
        ],
      );
      if (file == null) return;
      // Egy több megabájtos fájl a szövegmezőben és a beolvasáskor megakasztaná az appot.
      if (await file.length() > maxImportBytes) {
        if (mounted) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(AppLocalizations.of(context).fileTooLarge)));
        }
        return;
      }
      final bytes = await file.readAsBytes();
      // UTF-8 (BOM nélkül), különben Latin-1 (régebbi Excel-exportok).
      var text = utf8.decode(bytes, allowMalformed: true);
      if (text.contains('\uFFFD')) text = latin1.decode(bytes);
      _text.text = text.replaceFirst('\uFEFF', '');
    } catch (_) {
      // A fájlválasztó hibája (pl. nem támogatott platform): marad a beillesztés.
    }
  }

  @override
  void dispose() {
    _text.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    return AlertDialog(
      title: Text(l10n.portfolioImport),
      content: SizedBox(
        width: 480,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(l10n.portfolioImportHint, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: p.muted)),
              const SizedBox(height: 6),
              Text(l10n.portfolioImportBrokers, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: p.muted)),
              const SizedBox(height: 8),
              OutlinedButton.icon(
                key: const ValueKey('portfolio-import-file'),
                onPressed: _chooseFile,
                icon: const Icon(Icons.upload_file_rounded, size: 18),
                label: Text(l10n.portfolioImportFile),
              ),
              const SizedBox(height: 10),
              TextField(
                key: const ValueKey('portfolio-import-text'),
                controller: _text,
                minLines: 5,
                maxLines: 10,
                style: const TextStyle(fontFamily: 'monospace', fontSize: 13),
                decoration: const InputDecoration(
                  hintText: 'AAPL, 10, 180.50, USD, 2025-03-14',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(MaterialLocalizations.of(context).cancelButtonLabel),
        ),
        FilledButton(
          key: const ValueKey('portfolio-import-ok'),
          // Amerikai rendszer-beállításnál (az app nyelve ország nélküli) a kétértelmű perjeles
          // dátum hónappal kezdődik.
          onPressed: () => Navigator.of(context).pop(
            parsePortfolioCsv(
              _text.text,
              monthFirst: WidgetsBinding.instance.platformDispatcher.locale.countryCode == 'US',
            ),
          ),
          child: Text(l10n.portfolioImportButton),
        ),
      ],
    );
  }
}
