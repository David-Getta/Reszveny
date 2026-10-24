import 'package:flutter/material.dart';

import '../analysis/ai_consent.dart';
import '../../app_services.dart';
import '../../core/util/formatters.dart';
import '../../l10n/error_messages.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import '../capture/capture_service.dart';
import 'holdings_reader.dart';
import 'portfolio_store.dart' show storedCurrency;

/// Portfólió importálása a bróker „Pozícióim” képernyőjének képéről: kép
/// kiválasztása vagy beillesztése, beolvasás, majd átnézés és kijelölt sorok
/// felvétele vételként (darab és átlagár, dátum nélkül). Ugyanaz a sor kétszer
/// nem kerül fel.
Future<void> showHoldingsImport(BuildContext context) async {
  final services = AppServices.of(context);
  final l10n = AppLocalizations.of(context);
  final messenger = ScaffoldMessenger.of(context);
  final source = await showModalBottomSheet<String>(
    context: context,
    showDragHandle: true,
    builder: (context) => SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            key: const ValueKey('holdings-pick'),
            leading: const Icon(Icons.add_photo_alternate_outlined),
            title: Text(l10n.chooseImage),
            onTap: () => Navigator.of(context).pop('pick'),
          ),
          ListTile(
            key: const ValueKey('holdings-paste'),
            leading: const Icon(Icons.content_paste_rounded),
            title: Text(l10n.pasteImage),
            onTap: () => Navigator.of(context).pop('paste'),
          ),
        ],
      ),
    ),
  );
  if (source == null || !context.mounted) return;

  void fail(Object e) => messenger.showSnackBar(SnackBar(content: Text(errorMessage(l10n, e))));
  final CapturedImage? image;
  try {
    image = source == 'paste' ? await services.capture.fromClipboard() : await services.capture.fromGallery();
  } catch (e) {
    fail(e);
    return;
  }
  if (image == null || !context.mounted) return;
  if (!await ensureAiConsent(context) || !context.mounted) return;

  // A várakozó ablak az eredménnyel vagy a hibával zárul.
  final outcome = await showDialog<Object>(
    context: context,
    barrierDismissible: false,
    builder: (context) => _ReadingDialog(reading: services.holdingsReader.read(image!)),
  );
  if (outcome is! List<ReadHolding>) {
    if (outcome != null) fail(outcome);
    return;
  }
  final holdings = outcome;
  services.telemetry.track('holdings_read');
  if (!context.mounted) return;
  final chosen = await showDialog<List<ReadHolding>>(
    context: context,
    builder: (_) => _ReviewDialog(holdings: holdings),
  );
  if (chosen == null || chosen.isEmpty) return;

  String key(String symbol, double q, double p) => '$symbol|$q|$p';
  final existing = {
    for (final l in services.portfolio.lots)
      if (l.date == null && !l.sell) key(l.symbol, l.quantity, l.price),
  };
  var added = 0;
  // Egy kötegben: egyetlen értesítés és mentés a végén.
  await services.portfolio.batch(() async {
    for (final h in chosen) {
      if (!existing.add(key(h.symbol, h.quantity!, h.averagePrice!))) continue;
      var currency = h.currency;
      if (currency == null) {
        try {
          currency = (await services.marketData.profile(h.symbol)).currency;
        } catch (_) {}
      }
      var ccy = storedCurrency(currency ?? 'USD'), price = h.averagePrice!;
      if (ccy == 'GBX') await services.portfolio.fixLegacyPence(h.symbol, pencePrice: price);
      // Egy ticker tételei egy pénznemben: a meglévő pozícióéban, a mai árfolyamon átváltva.
      if (services.portfolio.currencyOf(h.symbol) case final held? when held != ccy) {
        if ((await services.fx.rate(ccy, held))?.rate case final r? when r.isFinite && r > 0) {
          (ccy, price) = (held, price * r);
        }
      }
      await services.portfolio.add(symbol: h.symbol, quantity: h.quantity!, price: price, currency: ccy);
      added++;
    }
  });
  messenger.showSnackBar(SnackBar(content: Text(l10n.portfolioImported(added))));
}

/// Várakozás a beolvasásra; a végén az eredménnyel (vagy a hibával) zárul.
class _ReadingDialog extends StatefulWidget {
  const _ReadingDialog({required this.reading});

  final Future<List<ReadHolding>> reading;

  @override
  State<_ReadingDialog> createState() => _ReadingDialogState();
}

class _ReadingDialogState extends State<_ReadingDialog> {
  @override
  void initState() {
    super.initState();
    widget.reading.then(
      (h) {
        if (mounted) Navigator.of(context).pop(h);
      },
      onError: (Object e) {
        if (mounted) Navigator.of(context).pop(e);
      },
    );
  }

  @override
  Widget build(BuildContext context) => AlertDialog(
    key: const ValueKey('holdings-reading'),
    content: Row(
      children: [
        const SizedBox(width: 24, height: 24, child: CircularProgressIndicator(strokeWidth: 2.5)),
        const SizedBox(width: 16),
        Expanded(child: Text(AppLocalizations.of(context).holdingsReading)),
      ],
    ),
  );
}

/// A beolvasott pozíciók átnézése: a teljes sorok alapból kijelölve.
class _ReviewDialog extends StatefulWidget {
  const _ReviewDialog({required this.holdings});

  final List<ReadHolding> holdings;

  @override
  State<_ReviewDialog> createState() => _ReviewDialogState();
}

class _ReviewDialogState extends State<_ReviewDialog> {
  late final Set<int> _selected = {
    for (final (i, h) in widget.holdings.indexed)
      if (h.complete) i,
  };

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    final muted = Theme.of(context).textTheme.bodySmall?.copyWith(color: p.muted);
    final holdings = widget.holdings;
    return AlertDialog(
      key: const ValueKey('holdings-review'),
      title: Text(l10n.holdingsReviewTitle),
      content: SizedBox(
        width: 480,
        child: holdings.isEmpty
            ? Text(l10n.holdingsNone)
            : SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(l10n.holdingsReviewHint, style: muted),
                    const SizedBox(height: 8),
                    for (final (i, h) in holdings.indexed)
                      CheckboxListTile(
                        key: ValueKey('holding-${h.symbol}'),
                        contentPadding: EdgeInsets.zero,
                        controlAffinity: ListTileControlAffinity.leading,
                        value: _selected.contains(i),
                        onChanged: h.complete
                            ? (v) => setState(() => v == true ? _selected.add(i) : _selected.remove(i))
                            : null,
                        title: Text(
                          h.complete
                              ? '${h.symbol} · ${fmt.number(h.quantity, decimals: h.quantity! % 1 == 0 ? 0 : 4)}'
                                    ' × ${fmt.price(h.averagePrice, h.currency)}'
                              : h.symbol,
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(
                          h.complete ? h.companyName : l10n.holdingsNoPrice,
                          style: muted,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
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
        if (holdings.isNotEmpty)
          FilledButton(
            key: const ValueKey('holdings-add'),
            onPressed: _selected.isEmpty
                ? null
                : () => Navigator.of(context).pop([for (final i in _selected.toList()..sort()) holdings[i]]),
            child: Text(l10n.holdingsAdd(_selected.length)),
          ),
      ],
    );
  }
}
