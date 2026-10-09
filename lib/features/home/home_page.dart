import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/models/stock_candidate.dart';
import '../../l10n/error_messages.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../l10n/supported_locales.dart';
import '../capture/capture_service.dart';
import '../market_data/demo_market_data_provider.dart';
import '../recognition/stock_recognizer.dart';
import '../settings/settings_page.dart';
import '../stock_detail/stock_detail_page.dart';
import 'candidate_sheet.dart';

/// Kezdőképernyő: fotó / galéria / kézi ticker.
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _tickerController = TextEditingController();
  bool _busy = false;
  String? _busyLabel;

  @override
  void dispose() {
    _tickerController.dispose();
    super.dispose();
  }

  Future<void> _capture(bool camera) async {
    final services = AppServices.of(context);
    final l10n = AppLocalizations.of(context);
    final CapturedImage? image;
    try {
      image = camera ? await services.capture.fromCamera() : await services.capture.fromGallery();
    } catch (e) {
      _showError(e);
      return;
    }
    if (image == null || !mounted) return;

    setState(() {
      _busy = true;
      _busyLabel = l10n.recognizing;
    });
    final RecognitionResult result;
    try {
      final language = SupportedLocales.languageFor(Localizations.localeOf(context));
      result = await services.recognizer.recognize(image, outputLanguage: language.englishName);
    } catch (e) {
      if (mounted) setState(() => _busy = false);
      _showError(e);
      return;
    }
    if (!mounted) return;
    setState(() => _busy = false);

    if (result.isEmpty) {
      await _showNoCandidates(result);
      return;
    }
    final best = result.best!;
    final chosen = result.candidates.length == 1 && best.isConfident ? best : await showCandidateSheet(context, result);
    if (chosen == null || !mounted) return;
    _openDetails(chosen, recognition: result);
  }

  Future<void> _showNoCandidates(RecognitionResult result) async {
    final l10n = AppLocalizations.of(context);
    await showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.noCandidatesTitle),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l10n.noCandidatesBody),
            if (result.summary != null) ...[
              const SizedBox(height: 12),
              Text(l10n.whatWeSaw, style: Theme.of(context).textTheme.labelLarge),
              Text(result.summary!),
            ],
          ],
        ),
        actions: [TextButton(onPressed: () => Navigator.of(context).pop(), child: Text(l10n.ok))],
      ),
    );
  }

  void _lookUpManual() {
    final symbol = _tickerController.text.trim().toUpperCase();
    if (symbol.isEmpty) return;
    FocusScope.of(context).unfocus();
    _openDetails(StockCandidate(symbol: symbol, companyName: symbol, confidence: 1));
  }

  void _openDetails(StockCandidate candidate, {RecognitionResult? recognition}) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => StockDetailPage(candidate: candidate, recognition: recognition),
      ),
    );
  }

  void _showError(Object error) {
    if (!mounted) return;
    final l10n = AppLocalizations.of(context);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(errorMessage(l10n, error))));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final services = AppServices.of(context);
    final theme = Theme.of(context);
    final supportsCamera = services.capture.supportsCamera;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.appTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            tooltip: l10n.settings,
            onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (_) => const SettingsPage())),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 560),
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  if (services.config.isDemoMode)
                    Card(
                      color: theme.colorScheme.tertiaryContainer,
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          children: [
                            Icon(Icons.science_outlined, color: theme.colorScheme.onTertiaryContainer),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                l10n.demoModeBanner(DemoMarketDataProvider.supportedSymbols.join(', ')),
                                style: TextStyle(color: theme.colorScheme.onTertiaryContainer),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  const SizedBox(height: 24),
                  Icon(Icons.document_scanner_outlined, size: 96, color: theme.colorScheme.primary),
                  const SizedBox(height: 16),
                  Text(l10n.homeTagline, textAlign: TextAlign.center, style: theme.textTheme.headlineSmall),
                  const SizedBox(height: 8),
                  Text(l10n.homeHint, textAlign: TextAlign.center, style: theme.textTheme.bodyMedium),
                  const SizedBox(height: 32),
                  if (_busy) ...[
                    const Center(child: CircularProgressIndicator()),
                    const SizedBox(height: 12),
                    Text(_busyLabel ?? '', textAlign: TextAlign.center),
                  ] else ...[
                    if (supportsCamera)
                      FilledButton.icon(
                        onPressed: () => _capture(true),
                        icon: const Icon(Icons.photo_camera_outlined),
                        label: Text(l10n.takePhoto),
                      ),
                    if (supportsCamera) const SizedBox(height: 12),
                    (supportsCamera ? OutlinedButton.icon : FilledButton.icon)(
                      onPressed: () => _capture(false),
                      icon: const Icon(Icons.photo_library_outlined),
                      label: Text(supportsCamera ? l10n.chooseFromGallery : l10n.chooseImage),
                    ),
                  ],
                  const SizedBox(height: 32),
                  Text(l10n.enterTickerManually, style: theme.textTheme.titleMedium),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _tickerController,
                          textCapitalization: TextCapitalization.characters,
                          decoration: InputDecoration(labelText: l10n.tickerInputLabel, hintText: l10n.tickerInputHint),
                          onSubmitted: (_) => _lookUpManual(),
                        ),
                      ),
                      const SizedBox(width: 8),
                      FilledButton.tonal(onPressed: _busy ? null : _lookUpManual, child: Text(l10n.lookUp)),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Text(l10n.disclaimer, textAlign: TextAlign.center, style: theme.textTheme.bodySmall),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
