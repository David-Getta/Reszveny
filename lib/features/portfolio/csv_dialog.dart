import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/share/share_text.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import 'portfolio_csv.dart';

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
          await shareText(portfolioCsv(services.portfolio.lots), subject: 'WhatStock portfolio.csv');
        } else if (context.mounted) {
          await showPortfolioImport(context);
        }
      },
      itemBuilder: (_) => [
        if (!services.portfolio.isEmpty)
          PopupMenuItem(
            key: const ValueKey('portfolio-export'),
            value: 'export',
            child: ListTile(leading: const Icon(Icons.ios_share_rounded), title: Text(l10n.portfolioExport)),
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

/// Importálás: a beillesztett sorok vételként kerülnek a portfólióba.
Future<void> showPortfolioImport(BuildContext context) async {
  final l10n = AppLocalizations.of(context);
  final messenger = ScaffoldMessenger.of(context);
  final services = AppServices.of(context);
  final result = await showDialog<CsvImport>(context: context, builder: (_) => const _ImportDialog());
  if (result == null) return;
  for (final l in result.lots) {
    await services.portfolio.add(
      symbol: l.symbol,
      quantity: l.quantity,
      price: l.price,
      currency: l.currency,
      date: l.date,
      sell: l.sell,
    );
  }
  messenger.showSnackBar(
    SnackBar(
      content: Text(
        [
          l10n.portfolioImported(result.lots.length),
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
