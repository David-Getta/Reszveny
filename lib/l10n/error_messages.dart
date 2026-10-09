import '../core/errors.dart';
import 'generated/app_localizations.dart';

/// Hibából felhasználónak szóló, lefordított üzenet.
String errorMessage(AppLocalizations l10n, Object error) {
  if (error is! AppException) return l10n.errUnknown(error.toString());
  final d = error.detail ?? '';
  return switch (error.code) {
    AppErrorCode.missingAnthropicKey => l10n.errMissingAnthropicKey,
    AppErrorCode.recognitionUnreachable => l10n.errRecognitionUnreachable,
    AppErrorCode.recognitionHttp => l10n.errRecognitionHttp(d),
    AppErrorCode.recognitionRefused => l10n.errRecognitionRefused,
    AppErrorCode.recognitionTruncated => l10n.errRecognitionTruncated,
    AppErrorCode.recognitionBadResponse => l10n.errRecognitionBadResponse,
    AppErrorCode.recognitionEmpty => l10n.errRecognitionEmpty,
    AppErrorCode.missingFinnhubKey => l10n.errMissingFinnhubKey,
    AppErrorCode.marketUnreachable => l10n.errMarketUnreachable,
    AppErrorCode.marketRateLimited => l10n.errMarketRateLimited,
    AppErrorCode.marketHttp => l10n.errMarketHttp(d),
    AppErrorCode.marketBadResponse => l10n.errMarketBadResponse,
    AppErrorCode.noQuote => l10n.errNoQuote(d),
    AppErrorCode.noProfile => l10n.errNoProfile(d),
    AppErrorCode.demoUnsupportedSymbol => l10n.errDemoUnsupportedSymbol(d),
    AppErrorCode.noResults => l10n.errNoResults(d),
    AppErrorCode.aiNotConfigured => l10n.errAiNotConfigured,
    AppErrorCode.aiUnreachable => l10n.errAiUnreachable,
    AppErrorCode.aiHttp => l10n.errAiHttp(d),
    AppErrorCode.aiRefused => l10n.errAiRefused,
    AppErrorCode.aiBadResponse => l10n.errAiBadResponse,
    AppErrorCode.clipboardNoImage => l10n.errClipboardNoImage,
    AppErrorCode.chartUnavailable => l10n.chartUnavailable,
    AppErrorCode.statementsUnavailable => l10n.statementsUnavailable,
  };
}
