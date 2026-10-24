import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/models/stock_report.dart';
import '../../l10n/error_messages.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';

/// Az AI-válasz fajtája a jelentésben (a szerver csak ezeket fogadja).
enum AiReportKind { analysis, portfolio, ask, research, followup, brief }

/// Az elemzés teljes szövege a jelentéshez: lényeg, majd a szekciók címmel, bekezdéssel, pontokkal.
String reportPlainText(StockReport r) => [
  if (r.headline.isNotEmpty) r.headline,
  for (final s in r.sections) [s.title, ...s.paragraphs, for (final b in s.bullets) '• $b'].join('\n'),
].join('\n\n');

/// „Jelentés”: egy AI-válasz jelzése a fejlesztőknek (téves, sértő, egyéb), az appból
/// kilépés nélkül (Google Play AI-tartalom szabály). Közvetlen (kulcsos/demó) módban,
/// szerver nélkül nem jelenik meg.
class ReportAiButton extends StatelessWidget {
  const ReportAiButton({super.key, required this.kind, required this.text, this.symbol, this.compact = false});

  final AiReportKind kind;
  final String text;
  final String? symbol;

  /// Csak ikon (buborék alatt); egyébként ikon felirattal.
  final bool compact;

  @override
  Widget build(BuildContext context) {
    if (AppServices.of(context).backend == null || text.trim().isEmpty) return const SizedBox.shrink();
    final l10n = AppLocalizations.of(context);
    void open() => showReportAiDialog(context, kind: kind, text: text, symbol: symbol);
    if (compact) {
      return IconButton(
        key: ValueKey('ai-report-${kind.name}'),
        tooltip: l10n.aiReport,
        visualDensity: VisualDensity.compact,
        iconSize: 18,
        icon: Icon(Icons.outlined_flag_rounded, color: AppPalette.of(context).muted),
        onPressed: open,
      );
    }
    return TextButton.icon(
      key: ValueKey('ai-report-${kind.name}'),
      style: TextButton.styleFrom(visualDensity: VisualDensity.compact),
      icon: const Icon(Icons.outlined_flag_rounded, size: 18),
      label: Text(l10n.aiReport),
      onPressed: open,
    );
  }
}

/// A jelentés ablaka: ok, megjegyzés; küldés után köszönő üzenet.
Future<void> showReportAiDialog(
  BuildContext context, {
  required AiReportKind kind,
  required String text,
  String? symbol,
}) async {
  final services = AppServices.of(context);
  final backend = services.backend;
  if (backend == null) return;
  final l10n = AppLocalizations.of(context);
  final messenger = ScaffoldMessenger.of(context);
  final sent = await showDialog<({String reason, String note})>(
    context: context,
    builder: (_) => const _ReportDialog(),
  );
  if (sent == null) return;
  try {
    await backend.reportAi({
      'kind': kind.name,
      'reason': sent.reason,
      'text': text,
      'note': sent.note,
      'symbol': ?symbol,
      'platform': services.telemetry.platform,
      'version': ?services.updates.currentVersion,
    });
    messenger.showSnackBar(SnackBar(content: Text(l10n.aiReportThanks)));
  } catch (e) {
    messenger.showSnackBar(SnackBar(content: Text(errorMessage(l10n, e))));
  }
}

class _ReportDialog extends StatefulWidget {
  const _ReportDialog();

  @override
  State<_ReportDialog> createState() => _ReportDialogState();
}

class _ReportDialogState extends State<_ReportDialog> {
  String _reason = 'inaccurate';
  final _note = TextEditingController();

  @override
  void dispose() {
    _note.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    return AlertDialog(
      key: const ValueKey('ai-report-dialog'),
      scrollable: true,
      title: Text(l10n.aiReportTitle),
      content: SizedBox(
        width: 420,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RadioGroup<String>(
              groupValue: _reason,
              onChanged: (v) => setState(() => _reason = v ?? _reason),
              child: Column(
                children: [
                  for (final (value, label) in [
                    ('inaccurate', l10n.aiReportInaccurate),
                    ('harmful', l10n.aiReportHarmful),
                    ('other', l10n.aiReportOther),
                  ])
                    RadioListTile<String>(
                      key: ValueKey('ai-report-$value'),
                      contentPadding: EdgeInsets.zero,
                      dense: true,
                      value: value,
                      title: Text(label),
                    ),
                ],
              ),
            ),
            TextField(
              key: const ValueKey('ai-report-note'),
              controller: _note,
              maxLength: 1000,
              minLines: 1,
              maxLines: 4,
              decoration: InputDecoration(hintText: l10n.aiReportNoteHint, counterText: ''),
            ),
            const SizedBox(height: 10),
            Text(l10n.aiReportPrivacy, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(MaterialLocalizations.of(context).cancelButtonLabel),
        ),
        FilledButton(
          key: const ValueKey('ai-report-send'),
          onPressed: () => Navigator.of(context).pop((reason: _reason, note: _note.text.trim())),
          child: Text(l10n.aiReportSend),
        ),
      ],
    );
  }
}
