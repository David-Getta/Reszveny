import 'dart:convert';

import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/share/share_text.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import 'annual_summary.dart';
import 'holdings_import.dart';
import 'cash_dialog.dart';
import 'portfolio_csv.dart';
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
          await shareText(
            portfolioCsv(
              services.portfolio.lots,
              dividends: services.portfolio.dividends,
              splits: services.portfolio.splits,
            ),
            subject: 'WhatStock portfolio.csv',
          );
        } else if (v == 'dividends') {
          await shareText(dividendsCsv(services.portfolio.dividends), subject: 'WhatStock dividends.csv');
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
        } else if (v == 'summary') {
          if (context.mounted) await showAnnualSummary(context);
        } else if (v == 'realized') {
          await shareText(realizedCsv(services.portfolio.allPositions), subject: 'WhatStock realized-gains.csv');
        } else if (v == 'photo') {
          if (context.mounted) await showHoldingsImport(context);
        } else if (context.mounted) {
          await showPortfolioImport(context);
        }
      },
      itemBuilder: (_) => [
        if (services.portfolio.lots.isNotEmpty)
          PopupMenuItem(
            key: const ValueKey('portfolio-export'),
            value: 'export',
            child: ListTile(leading: const Icon(Icons.ios_share_rounded), title: Text(l10n.portfolioExport)),
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

/// Importálás: a beillesztett vagy fájlból beolvasott sorok vételként vagy
/// eladásként kerülnek a portfólióba. A már meglévő, azonos tranzakciót (ugyanaz
/// a ticker, darab, ár, dátum és irány) nem veszi fel újra, így ugyanaz a
/// bróker-export kétszer is importálható.
Future<void> showPortfolioImport(BuildContext context) async {
  final l10n = AppLocalizations.of(context);
  final messenger = ScaffoldMessenger.of(context);
  final services = AppServices.of(context);
  final result = await showDialog<CsvImport>(context: context, builder: (_) => const _ImportDialog());
  if (result == null) return;
  // A számla is része a kulcsnak: ugyanaz a vétel két számlán két tranzakció
  // (a kis- és nagybetű nem számít, a tároló a meglévő írásmódot használja).
  String key(String symbol, double q, double p, DateTime? d, bool sell, String? account) =>
      '$symbol|$q|$p|${d?.toIso8601String().substring(0, 10)}|$sell|${account?.toLowerCase() ?? ''}';
  final existing = {
    for (final l in services.portfolio.lots) key(l.symbol, l.quantity, l.price, l.date, l.sell, l.account),
  };
  var added = 0;
  for (final l in result.lots) {
    if (!existing.add(key(l.symbol, l.quantity, l.price, l.date, l.sell, l.account))) continue;
    await services.portfolio.add(
      symbol: l.symbol,
      quantity: l.quantity,
      price: l.price,
      currency: l.currency,
      date: l.date,
      sell: l.sell,
      account: l.account,
      fee: l.fee,
    );
    added++;
  }
  // Kapott osztalékok: ugyanaz a tétel (ticker, összeg, dátum, számla) nem kerül be kétszer.
  String dKey(String symbol, double amount, DateTime? d, String? account) =>
      '$symbol|$amount|${d?.toIso8601String().substring(0, 10)}|${account?.toLowerCase() ?? ''}';
  final existingDividends = {for (final d in services.portfolio.dividends) dKey(d.symbol, d.amount, d.date, d.account)};
  var addedDividends = 0;
  for (final d in result.dividends) {
    if (!existingDividends.add(dKey(d.symbol, d.amount, d.date, d.account))) continue;
    await services.portfolio.addDividend(
      symbol: d.symbol,
      amount: d.amount,
      currency: d.currency,
      date: d.date,
      account: d.account,
    );
    addedDividends++;
  }
  // Felaprózások (saját exportból): a tároló nem veszi fel kétszer ugyanazt (ticker, nap, arány).
  var addedSplits = 0;
  for (final s in result.splits) {
    if (await services.portfolio.addSplit(symbol: s.symbol, from: s.from, to: s.to, date: s.date) != null) {
      addedSplits++;
    }
  }
  messenger.showSnackBar(
    SnackBar(
      content: Text(
        [
          l10n.portfolioImported(added),
          if (addedDividends > 0) l10n.portfolioDividendsImported(addedDividends),
          if (addedSplits > 0) l10n.portfolioSplitsImported(addedSplits),
          if (result.skipped > 0) l10n.portfolioImportSkipped(result.skipped),
        ].join(' · '),
      ),
    ),
  );
}

class _ImportDialog extends StatefulWidget {
  const _ImportDialog();

  @override
  State<_ImportDialog> createState() => _ImportDialogState();
}

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
          onPressed: () => Navigator.of(context).pop(parsePortfolioCsv(_text.text)),
          child: Text(l10n.portfolioImportButton),
        ),
      ],
    );
  }
}
