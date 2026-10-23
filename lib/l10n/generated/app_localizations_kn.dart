// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kannada (`kn`).
class AppLocalizationsKn extends AppLocalizations {
  AppLocalizationsKn([String locale = 'kn']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'ಒಂದು ಷೇರಿನ ಫೋಟೋ ತೆಗೆಯಿರಿ ಮತ್ತು ಅದರ ಬಗ್ಗೆ ಎಲ್ಲವನ್ನೂ ತಿಳಿಯಿರಿ.';

  @override
  String get homeHint =>
      'ಷೇರು ಪ್ರಮಾಣಪತ್ರ, ಬ್ರೋಕರೇಜ್ ಆ್ಯಪ್‌ನ ಸ್ಕ್ರೀನ್, ಪತ್ರಿಕೆ ಅಥವಾ ಕಂಪನಿಯ ಲೋಗೋ – ಷೇರನ್ನು ಗುರುತಿಸುವ ಯಾವುದಾದರೂ.';

  @override
  String get takePhoto => 'ಫೋಟೋ ತೆಗೆಯಿರಿ';

  @override
  String get chooseFromGallery => 'ಗ್ಯಾಲರಿಯಿಂದ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get chooseImage => 'ಚಿತ್ರವನ್ನು ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get enterTickerManually => 'ಟಿಕರ್ ಅನ್ನು ಹಸ್ತಚಾಲಿತವಾಗಿ ನಮೂದಿಸಿ';

  @override
  String get tickerInputLabel => 'ಟಿಕರ್ ಚಿಹ್ನೆ';

  @override
  String get tickerInputHint => 'ಉದಾ. AAPL';

  @override
  String get lookUp => 'ಹುಡುಕಿ';

  @override
  String demoModeBanner(String symbols) {
    return 'ಡೆಮೋ ಮೋಡ್ – ಮಾರುಕಟ್ಟೆ ಡೇಟಾ ಕೀ ಕಾನ್ಫಿಗರ್ ಮಾಡಿಲ್ಲ. ಮಾದರಿ ಡೇಟಾ ಇವುಗಳಿಗೆ ಲಭ್ಯವಿದೆ: $symbols.';
  }

  @override
  String get recognizing => 'ಚಿತ್ರವನ್ನು ವಿಶ್ಲೇಷಿಸಲಾಗುತ್ತಿದೆ…';

  @override
  String get loadingData => 'ಡೇಟಾ ಲೋಡ್ ಆಗುತ್ತಿದೆ…';

  @override
  String get noCandidatesTitle => 'ಯಾವುದೇ ಷೇರು ಗುರುತಿಸಲಾಗಿಲ್ಲ';

  @override
  String get noCandidatesBody =>
      'ಈ ಚಿತ್ರದಲ್ಲಿ ನಮಗೆ ಯಾವುದೇ ಷೇರನ್ನು ಗುರುತಿಸಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ. ಸ್ಪಷ್ಟವಾದ ಫೋಟೋ ಪ್ರಯತ್ನಿಸಿ, ಅಥವಾ ಟಿಕರ್ ಅನ್ನು ಹಸ್ತಚಾಲಿತವಾಗಿ ನಮೂದಿಸಿ.';

  @override
  String get whatWeSaw => 'ನಾವು ಕಂಡದ್ದು';

  @override
  String get chooseCandidateTitle => 'ನೀವು ಯಾವ ಷೇರನ್ನು ಉದ್ದೇಶಿಸಿದ್ದೀರಿ?';

  @override
  String confidencePercent(int percent) {
    return '$percent% ವಿಶ್ವಾಸ';
  }

  @override
  String get settings => 'ಸೆಟ್ಟಿಂಗ್‌ಗಳು';

  @override
  String get language => 'ಭಾಷೆ';

  @override
  String get systemLanguage => 'ಸಿಸ್ಟಂ ಡೀಫಾಲ್ಟ್';

  @override
  String get about => 'ಆ್ಯಪ್ ಕುರಿತು';

  @override
  String get disclaimer =>
      'ಈ ಆ್ಯಪ್ ಕೇವಲ ಮಾಹಿತಿಯನ್ನು ನೀಡುತ್ತದೆ, ಇದು ಹೂಡಿಕೆ ಸಲಹೆಯಲ್ಲ. ಡೇಟಾ ವಿಳಂಬವಾಗಿರಬಹುದು ಅಥವಾ ನಿಖರವಾಗಿಲ್ಲದಿರಬಹುದು.';

  @override
  String dataSource(String source) {
    return 'ಡೇಟಾ ಮೂಲ: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'ಗುರುತಿಸುವಿಕೆ: $source';
  }

  @override
  String get retry => 'ಮರುಪ್ರಯತ್ನಿಸಿ';

  @override
  String get cancel => 'ರದ್ದುಮಾಡಿ';

  @override
  String get ok => 'ಸರಿ';

  @override
  String get close => 'ಮುಚ್ಚಿ';

  @override
  String get errorGeneric => 'ಏನೋ ತಪ್ಪಾಗಿದೆ.';

  @override
  String get errorSectionUnavailable =>
      'ಈ ವಿಭಾಗವನ್ನು ಲೋಡ್ ಮಾಡಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ.';

  @override
  String get notAvailable => 'ಲಭ್ಯವಿಲ್ಲ';

  @override
  String get sectionIdentity => 'ಗುರುತು';

  @override
  String get sectionPrice => 'ಬೆಲೆ';

  @override
  String get sectionValuation => 'ಮೌಲ್ಯಮಾಪನ';

  @override
  String get sectionFinancials => 'ಹಣಕಾಸು ಅಂಕಿಅಂಶಗಳು';

  @override
  String get sectionDividend => 'ಡಿವಿಡೆಂಡ್';

  @override
  String get sectionProfile => 'ಕಂಪನಿ ಪ್ರೊಫೈಲ್';

  @override
  String get sectionAnalysts => 'ವಿಶ್ಲೇಷಕರ ರೇಟಿಂಗ್‌ಗಳು';

  @override
  String get sectionNews => 'ಸುದ್ದಿ';

  @override
  String get sectionRecognition => 'ಗುರುತಿಸುವಿಕೆಯ ವಿವರಗಳು';

  @override
  String get labelSymbol => 'ಟಿಕರ್';

  @override
  String get labelExchange => 'ಎಕ್ಸ್‌ಚೇಂಜ್';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'ಕರೆನ್ಸಿ';

  @override
  String get labelCountry => 'ದೇಶ';

  @override
  String get labelIndustry => 'ಉದ್ಯಮ';

  @override
  String get labelSector => 'ವಲಯ';

  @override
  String get labelWebsite => 'ವೆಬ್‌ಸೈಟ್';

  @override
  String get labelIpoDate => 'IPO ದಿನಾಂಕ';

  @override
  String get labelMarketCap => 'ಮಾರುಕಟ್ಟೆ ಬಂಡವಾಳ';

  @override
  String get labelSharesOutstanding => 'ಚಲಾವಣೆಯಲ್ಲಿರುವ ಷೇರುಗಳು';

  @override
  String get labelEmployees => 'ಉದ್ಯೋಗಿಗಳು';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'ಪ್ರಧಾನ ಕಚೇರಿ';

  @override
  String get labelDescription => 'ವಿವರಣೆ';

  @override
  String get labelLastPrice => 'ಕೊನೆಯ ಬೆಲೆ';

  @override
  String get labelChange => 'ಬದಲಾವಣೆ';

  @override
  String get labelOpen => 'ಆರಂಭಿಕ ಬೆಲೆ';

  @override
  String get labelDayHigh => 'ದಿನದ ಗರಿಷ್ಠ';

  @override
  String get labelDayLow => 'ದಿನದ ಕನಿಷ್ಠ';

  @override
  String get labelPreviousClose => 'ಹಿಂದಿನ ಮುಕ್ತಾಯ ಬೆಲೆ';

  @override
  String get labelWeek52High => '52 ವಾರಗಳ ಗರಿಷ್ಠ';

  @override
  String get labelWeek52Low => '52 ವಾರಗಳ ಕನಿಷ್ಠ';

  @override
  String get labelAverageVolume10d => 'ಸರಾಸರಿ ವಾಲ್ಯೂಮ್ (10 ದಿನಗಳು)';

  @override
  String updatedAt(String time) {
    return 'ಅಪ್‌ಡೇಟ್: $time';
  }

  @override
  String get labelPeTrailing => 'P/E (ಟ್ರೇಲಿಂಗ್)';

  @override
  String get labelPeForward => 'P/E (ಫಾರ್ವರ್ಡ್)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / ಫ್ರೀ ಕ್ಯಾಶ್ ಫ್ಲೋ';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'ಬೀಟಾ';

  @override
  String get labelRevenueTtm => 'ಆದಾಯ (TTM)';

  @override
  String get labelNetIncomeTtm => 'ನಿವ್ವಳ ಲಾಭ (TTM)';

  @override
  String get labelGrossMargin => 'ಒಟ್ಟು ಮಾರ್ಜಿನ್';

  @override
  String get labelOperatingMargin => 'ಕಾರ್ಯಾಚರಣಾ ಮಾರ್ಜಿನ್';

  @override
  String get labelNetMargin => 'ನಿವ್ವಳ ಮಾರ್ಜಿನ್';

  @override
  String get labelRoe => 'ಈಕ್ವಿಟಿ ಮೇಲಿನ ಪ್ರತಿಫಲ';

  @override
  String get labelRoa => 'ಆಸ್ತಿಗಳ ಮೇಲಿನ ಪ್ರತಿಫಲ';

  @override
  String get labelDebtToEquity => 'ಸಾಲ / ಈಕ್ವಿಟಿ';

  @override
  String get labelCurrentRatio => 'ಕರೆಂಟ್ ರೇಶಿಯೋ';

  @override
  String get labelRevenueGrowth => 'ಆದಾಯ ಬೆಳವಣಿಗೆ (YoY)';

  @override
  String get labelEpsGrowth => 'EPS ಬೆಳವಣಿಗೆ (YoY)';

  @override
  String get labelDividendYield => 'ಡಿವಿಡೆಂಡ್ ಯೀಲ್ಡ್';

  @override
  String get labelDividendPerShare => 'ಪ್ರತಿ ಷೇರಿಗೆ ಡಿವಿಡೆಂಡ್';

  @override
  String get labelPayoutRatio => 'ಪೇಔಟ್ ಅನುಪಾತ';

  @override
  String get labelYieldOnCost => 'ವೆಚ್ಚದ ಮೇಲೆ ಯೀಲ್ಡ್';

  @override
  String get labelDividendGrowth5y => 'ಡಿವಿಡೆಂಡ್ ಬೆಳವಣಿಗೆ (5 ವರ್ಷ)';

  @override
  String get dividendNone => 'ಕಳೆದ 12 ತಿಂಗಳಲ್ಲಿ ಯಾವುದೇ ಡಿವಿಡೆಂಡ್ ಪಾವತಿಸಿಲ್ಲ.';

  @override
  String get dividendOnYourShares => 'ನಿಮ್ಮ ಷೇರುಗಳ ಮೇಲೆ, ವಾರ್ಷಿಕ';

  @override
  String get labelConsensus => 'ಒಮ್ಮತ';

  @override
  String get ratingStrongBuy => 'ಬಲವಾದ ಖರೀದಿ';

  @override
  String get ratingBuy => 'ಖರೀದಿ';

  @override
  String get ratingHold => 'ಹೋಲ್ಡ್';

  @override
  String get ratingSell => 'ಮಾರಾಟ';

  @override
  String get ratingStrongSell => 'ಬಲವಾದ ಮಾರಾಟ';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ವಿಶ್ಲೇಷಕರು',
      one: '1 ವಿಶ್ಲೇಷಕ',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'ಅವಧಿ: $period';
  }

  @override
  String get noNews => 'ಇತ್ತೀಚಿನ ಸುದ್ದಿ ಇಲ್ಲ.';

  @override
  String get openArticle => 'ಲೇಖನ ತೆರೆಯಿರಿ';

  @override
  String get openLinkFailed => 'ಲಿಂಕ್ ತೆರೆಯಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ.';

  @override
  String get recognitionSummary => 'ಸಾರಾಂಶ';

  @override
  String get recognitionEvidence => 'ನಾವು ಹೀಗೆ ಏಕೆ ಭಾವಿಸುತ್ತೇವೆ';

  @override
  String get recognitionRawText => 'ಚಿತ್ರದಿಂದ ಓದಿದ ಪಠ್ಯ';

  @override
  String get errMissingAnthropicKey =>
      'ಚಿತ್ರ ಗುರುತಿಸುವಿಕೆಯನ್ನು ಕಾನ್ಫಿಗರ್ ಮಾಡಿಲ್ಲ (ANTHROPIC_API_KEY ಇಲ್ಲ). ಟಿಕರ್ ಅನ್ನು ಹಸ್ತಚಾಲಿತವಾಗಿ ನಮೂದಿಸಿ.';

  @override
  String get errRecognitionUnreachable =>
      'ಗುರುತಿಸುವಿಕೆ ಸೇವೆಯನ್ನು ತಲುಪಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ. ನಿಮ್ಮ ಇಂಟರ್ನೆಟ್ ಸಂಪರ್ಕವನ್ನು ಪರಿಶೀಲಿಸಿ.';

  @override
  String errRecognitionHttp(String status) {
    return 'ಗುರುತಿಸುವಿಕೆ ಸೇವೆ ದೋಷವನ್ನು ಹಿಂತಿರುಗಿಸಿದೆ (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'ಗುರುತಿಸುವಿಕೆ ಸೇವೆಗೆ ಈ ಚಿತ್ರವನ್ನು ಪ್ರಕ್ರಿಯೆಗೊಳಿಸಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ.';

  @override
  String get errRecognitionTruncated =>
      'ಗುರುತಿಸುವಿಕೆಯ ಪ್ರತಿಕ್ರಿಯೆ ಅರ್ಧಕ್ಕೆ ಕಡಿತಗೊಂಡಿದೆ. ದಯವಿಟ್ಟು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get errRecognitionBadResponse =>
      'ಗುರುತಿಸುವಿಕೆ ಸೇವೆಯಿಂದ ಅನಿರೀಕ್ಷಿತ ಪ್ರತಿಕ್ರಿಯೆ.';

  @override
  String get errRecognitionEmpty =>
      'ಗುರುತಿಸುವಿಕೆ ಸೇವೆ ಖಾಲಿ ಪ್ರತಿಕ್ರಿಯೆಯನ್ನು ಹಿಂತಿರುಗಿಸಿದೆ.';

  @override
  String get errMissingFinnhubKey =>
      'ಮಾರುಕಟ್ಟೆ ಡೇಟಾವನ್ನು ಕಾನ್ಫಿಗರ್ ಮಾಡಿಲ್ಲ (FINNHUB_API_KEY ಇಲ್ಲ).';

  @override
  String get errMarketUnreachable =>
      'ಮಾರುಕಟ್ಟೆ ಡೇಟಾ ಸೇವೆಯನ್ನು ತಲುಪಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ. ನಿಮ್ಮ ಇಂಟರ್ನೆಟ್ ಸಂಪರ್ಕವನ್ನು ಪರಿಶೀಲಿಸಿ.';

  @override
  String get errMarketRateLimited =>
      'ಮಾರುಕಟ್ಟೆ ಡೇಟಾ ಸೇವೆಗೆ ಹಲವಾರು ವಿನಂತಿಗಳು ಹೋಗಿವೆ. ದಯವಿಟ್ಟು ಒಂದು ನಿಮಿಷ ಕಾಯಿರಿ.';

  @override
  String errMarketHttp(String status) {
    return 'ಮಾರುಕಟ್ಟೆ ಡೇಟಾ ಸೇವೆ ದೋಷವನ್ನು ಹಿಂತಿರುಗಿಸಿದೆ (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'ಮಾರುಕಟ್ಟೆ ಡೇಟಾ ಸೇವೆಯಿಂದ ಅನಿರೀಕ್ಷಿತ ಪ್ರತಿಕ್ರಿಯೆ.';

  @override
  String errNoQuote(String symbol) {
    return '$symbol ಗಾಗಿ ಯಾವುದೇ ಬೆಲೆ ಡೇಟಾ ಸಿಗಲಿಲ್ಲ.';
  }

  @override
  String errNoProfile(String symbol) {
    return '$symbol ಗಾಗಿ ಯಾವುದೇ ಕಂಪನಿ ಪ್ರೊಫೈಲ್ ಸಿಗಲಿಲ್ಲ.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'ಡೆಮೋ ಮೋಡ್‌ನಲ್ಲಿ $symbols ಮಾತ್ರ ಲಭ್ಯವಿವೆ. ಲೈವ್ ಡೇಟಾಗಾಗಿ FINNHUB_API_KEY ಸೇರಿಸಿ.';
  }

  @override
  String errUnknown(String detail) {
    return 'ಏನೋ ತಪ್ಪಾಗಿದೆ: $detail';
  }

  @override
  String get newSearch => 'ಹೊಸ ಹುಡುಕಾಟ';

  @override
  String get recentSearches => 'ಇತ್ತೀಚಿನವು';

  @override
  String get noRecentSearches => 'ಇನ್ನೂ ಯಾವುದೇ ಇತ್ತೀಚಿನ ಹುಡುಕಾಟಗಳಿಲ್ಲ.';

  @override
  String get clearRecent => 'ಇತ್ತೀಚಿನವನ್ನು ತೆರವುಗೊಳಿಸಿ';

  @override
  String get greeting => 'ಇಂದು ಯಾವ ಷೇರನ್ನು ನೋಡೋಣ?';

  @override
  String get searchHint => 'ಟಿಕರ್ ಅಥವಾ ಕಂಪನಿಯ ಹೆಸರು';

  @override
  String get attachImage => 'ಚಿತ್ರವನ್ನು ಲಗತ್ತಿಸಿ';

  @override
  String get searchResultsTitle => 'ಹುಡುಕಾಟದ ಫಲಿತಾಂಶಗಳು';

  @override
  String errNoResults(String query) {
    return '“$query” ಗಾಗಿ ಯಾವುದೇ ಷೇರುಗಳು ಸಿಗಲಿಲ್ಲ.';
  }

  @override
  String get quickBarHint => 'ಟಿಕರ್ ಅಥವಾ ಕಂಪನಿಯ ಹೆಸರನ್ನು ಟೈಪ್ ಮಾಡಿ…';

  @override
  String get openFullWindow => 'ವಿಂಡೋ ತೆರೆಯಿರಿ';

  @override
  String hotkeyHint(String shortcut) {
    return 'ಎಲ್ಲಿಂದಲಾದರೂ WhatStock ತೆರೆಯಲು $shortcut ಒತ್ತಿರಿ.';
  }

  @override
  String get trayOpen => 'WhatStock ತೆರೆಯಿರಿ';

  @override
  String get trayQuickSearch => 'ತ್ವರಿತ ಹುಡುಕಾಟ';

  @override
  String get trayQuit => 'ನಿರ್ಗಮಿಸಿ';

  @override
  String get appearance => 'ನೋಟ';

  @override
  String get themeSystem => 'ಸಿಸ್ಟಂ';

  @override
  String get themeDark => 'ಡಾರ್ಕ್';

  @override
  String get themeLight => 'ಲೈಟ್';

  @override
  String get back => 'ಹಿಂದೆ';

  @override
  String get aiSectionTitle => 'AI ವಿಶ್ಲೇಷಣೆ';

  @override
  String get aiIntro =>
      'AI ಬರೆದ ವಿವರವಾದ ಅವಲೋಕನ: ಇತ್ತೀಚಿನ ಸುದ್ದಿಗಳ ಸಾರಾಂಶ, ವ್ಯವಹಾರ, ಸಾಮರ್ಥ್ಯಗಳು, ಅಪಾಯಗಳು ಮತ್ತು ಅಡಗಿದ ಅಂಶಗಳು, ಮೌಲ್ಯಮಾಪನ, ಮಾನಸಿಕ, ಸಾಮಾಜಿಕ, ತಾಂತ್ರಿಕ ಮತ್ತು ಸ್ಥೂಲ ಆರ್ಥಿಕ ದೃಷ್ಟಿಕೋನಗಳಿಂದ ಸನ್ನಿವೇಶಗಳೊಂದಿಗೆ ಬೆಲೆಯ ಮುನ್ನೋಟ, ಮತ್ತು ಯಾವುದರ ಮೇಲೆ ಕಣ್ಣಿಡಬೇಕು.';

  @override
  String get aiGenerate => 'ವಿಶ್ಲೇಷಣೆ ರಚಿಸಿ';

  @override
  String get aiRegenerate => 'ಮರು ರಚಿಸಿ';

  @override
  String get aiGenerating =>
      'ವಿಶ್ಲೇಷಣೆ ಸಿದ್ಧವಾಗುತ್ತಿದೆ… ಇದಕ್ಕೆ ಒಂದೆರಡು ನಿಮಿಷ ಬೇಕಾಗಬಹುದು.';

  @override
  String get aiSources => 'ಮೂಲಗಳು';

  @override
  String aiGeneratedAt(String time) {
    return 'ರಚಿಸಲಾಗಿದೆ: $time';
  }

  @override
  String get aiDisclaimer =>
      'ಸಾರ್ವಜನಿಕ ಡೇಟಾ ಮತ್ತು ಇತ್ತೀಚಿನ ಸುದ್ದಿಗಳನ್ನು ಆಧರಿಸಿದ AI-ರಚಿತ ವಿಶ್ಲೇಷಣೆ. ಇದರಲ್ಲಿ ದೋಷಗಳಿರಬಹುದು ಅಥವಾ ಇದು ಹಳೆಯದಾಗಿರಬಹುದು, ಮತ್ತು ಇದು ಹೂಡಿಕೆ ಸಲಹೆಯಲ್ಲ.';

  @override
  String get errAiNotConfigured =>
      'AI ವಿಶ್ಲೇಷಣೆಯನ್ನು ಕಾನ್ಫಿಗರ್ ಮಾಡಿಲ್ಲ (ANTHROPIC_API_KEY ಇಲ್ಲ).';

  @override
  String get errAiUnreachable =>
      'AI ಸೇವೆಯನ್ನು ತಲುಪಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ. ನಿಮ್ಮ ಇಂಟರ್ನೆಟ್ ಸಂಪರ್ಕವನ್ನು ಪರಿಶೀಲಿಸಿ.';

  @override
  String errAiHttp(String status) {
    return 'AI ಸೇವೆ ದೋಷವನ್ನು ಹಿಂತಿರುಗಿಸಿದೆ (HTTP $status).';
  }

  @override
  String get errAiRefused => 'AI ಸೇವೆ ಈ ಷೇರನ್ನು ವಿಶ್ಲೇಷಿಸಲು ನಿರಾಕರಿಸಿದೆ.';

  @override
  String get errAiBadResponse => 'AI ಸೇವೆಯಿಂದ ಅನಿರೀಕ್ಷಿತ ಪ್ರತಿಕ್ರಿಯೆ.';

  @override
  String get sectionChart => 'ಬೆಲೆ ಚಾರ್ಟ್';

  @override
  String get rangeOneWeek => '1W';

  @override
  String get rangeOneMonth => '1M';

  @override
  String get rangeThreeMonths => '3M';

  @override
  String get rangeOneYear => '1Y';

  @override
  String get rangeFiveYears => '5Y';

  @override
  String get chartUnavailable =>
      'ಪ್ರಸ್ತುತ ಡೇಟಾ ಮೂಲದಿಂದ ಬೆಲೆಯ ಇತಿಹಾಸ ಲಭ್ಯವಿಲ್ಲ.';

  @override
  String get sectionStatements => 'ಹಣಕಾಸು ಹೇಳಿಕೆಗಳು (ವಾರ್ಷಿಕ)';

  @override
  String get labelFiscalYear => 'ಹಣಕಾಸು ವರ್ಷ';

  @override
  String get labelRevenue => 'ಆದಾಯ';

  @override
  String get labelNetIncome => 'ನಿವ್ವಳ ಲಾಭ';

  @override
  String get labelTotalAssets => 'ಒಟ್ಟು ಆಸ್ತಿಗಳು';

  @override
  String get labelTotalLiabilities => 'ಒಟ್ಟು ಹೊಣೆಗಾರಿಕೆಗಳು';

  @override
  String get labelEquity => 'ಷೇರುದಾರರ ಈಕ್ವಿಟಿ';

  @override
  String get labelOperatingCashFlow => 'ಕಾರ್ಯಾಚರಣಾ ನಗದು ಹರಿವು';

  @override
  String get statementsUnavailable =>
      'ಈ ಷೇರಿಗೆ ವರದಿಯಾದ ಹಣಕಾಸು ಹೇಳಿಕೆಗಳು ಲಭ್ಯವಿಲ್ಲ.';

  @override
  String get launchAtLogin => 'ಲಾಗಿನ್ ಆದಾಗ ಪ್ರಾರಂಭಿಸಿ';

  @override
  String get hotkeyLabel => 'ಗ್ಲೋಬಲ್ ಶಾರ್ಟ್‌ಕಟ್';

  @override
  String get hotkeyRecordHint =>
      'ಇಲ್ಲಿ ಕ್ಲಿಕ್ ಮಾಡಿ, ನಂತರ ಹೊಸ ಕೀ ಸಂಯೋಜನೆಯನ್ನು ಒತ್ತಿರಿ';

  @override
  String get hotkeyReset => 'ಡೀಫಾಲ್ಟ್‌ಗೆ ರೀಸೆಟ್ ಮಾಡಿ';

  @override
  String get pasteImage => 'ಕ್ಲಿಪ್‌ಬೋರ್ಡ್‌ನಿಂದ ಚಿತ್ರವನ್ನು ಅಂಟಿಸಿ';

  @override
  String get errClipboardNoImage => 'ಕ್ಲಿಪ್‌ಬೋರ್ಡ್‌ನಲ್ಲಿ ಯಾವುದೇ ಚಿತ್ರವಿಲ್ಲ.';

  @override
  String get favorites => 'ಮೆಚ್ಚಿನವುಗಳು';

  @override
  String get addToFavorites => 'ಮೆಚ್ಚಿನವುಗಳಿಗೆ ಸೇರಿಸಿ';

  @override
  String get removeFromFavorites => 'ಮೆಚ್ಚಿನವುಗಳಿಂದ ತೆಗೆದುಹಾಕಿ';

  @override
  String get noFavorites =>
      'ಇನ್ನೂ ಯಾವುದೇ ಮೆಚ್ಚಿನವುಗಳಿಲ್ಲ. ಸೇರಿಸಲು ಷೇರಿನ ಮೇಲಿರುವ ನಕ್ಷತ್ರವನ್ನು ಟ್ಯಾಪ್ ಮಾಡಿ.';

  @override
  String get displayCurrency => 'ಪ್ರದರ್ಶನ ಕರೆನ್ಸಿ';

  @override
  String get displayCurrencyNone => 'ಷೇರಿನ ಸ್ವಂತ ಕರೆನ್ಸಿ ಮಾತ್ರ';

  @override
  String labelConverted(String currency) {
    return '≈ $currency ನಲ್ಲಿ';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'ದರ: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'ಅಪ್‌ಡೇಟ್‌ಗಳು';

  @override
  String currentVersion(String version) {
    return 'ಆವೃತ್ತಿ $version';
  }

  @override
  String get autoUpdate => 'ಅಪ್‌ಡೇಟ್‌ಗಳನ್ನು ಸ್ವಯಂಚಾಲಿತವಾಗಿ ಇನ್‌ಸ್ಟಾಲ್ ಮಾಡಿ';

  @override
  String get checkForUpdates => 'ಅಪ್‌ಡೇಟ್‌ಗಳಿಗಾಗಿ ಪರಿಶೀಲಿಸಿ';

  @override
  String get updateChecking => 'ಅಪ್‌ಡೇಟ್‌ಗಳಿಗಾಗಿ ಪರಿಶೀಲಿಸಲಾಗುತ್ತಿದೆ…';

  @override
  String get updateUpToDate => 'ನೀವು ಇತ್ತೀಚಿನ ಆವೃತ್ತಿಯಲ್ಲಿದ್ದೀರಿ.';

  @override
  String updateAvailable(String version) {
    return 'ಆವೃತ್ತಿ $version ಲಭ್ಯವಿದೆ.';
  }

  @override
  String get updateDownloading => 'ಅಪ್‌ಡೇಟ್ ಹಿನ್ನೆಲೆಯಲ್ಲಿ ಡೌನ್‌ಲೋಡ್ ಆಗುತ್ತಿದೆ…';

  @override
  String get updateDownloaded =>
      'ಅಪ್‌ಡೇಟ್ ಸಿದ್ಧವಾಗಿದೆ. ಇನ್‌ಸ್ಟಾಲ್ ಮಾಡಲು ಮರುಪ್ರಾರಂಭಿಸಿ.';

  @override
  String get updateNow => 'ಅಪ್‌ಡೇಟ್ ಮಾಡಿ';

  @override
  String get restartNow => 'ಮರುಪ್ರಾರಂಭಿಸಿ';

  @override
  String get updatesViaStore =>
      'ಅಪ್‌ಡೇಟ್‌ಗಳು ಆ್ಯಪ್ ಸ್ಟೋರ್ ಮೂಲಕ ಸ್ವಯಂಚಾಲಿತವಾಗಿ ಬರುತ್ತವೆ.';

  @override
  String get updateCheckFailed => 'ಅಪ್‌ಡೇಟ್‌ಗಳಿಗಾಗಿ ಪರಿಶೀಲಿಸಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ.';

  @override
  String get subscription => 'ಚಂದಾದಾರಿಕೆ';

  @override
  String get planTrial => 'ಪ್ರಾಯೋಗಿಕ';

  @override
  String get planNormal => 'ಸಾಮಾನ್ಯ';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'ಯಾವುದೇ ಸಕ್ರಿಯ ಪ್ಲಾನ್ ಇಲ್ಲ';

  @override
  String planAnalysesPerMonth(int count) {
    return 'ತಿಂಗಳಿಗೆ $count ವಿಶ್ಲೇಷಣೆಗಳು';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$count ವಿಶ್ಲೇಷಣೆಗಳೊಂದಿಗೆ $days ದಿನಗಳ ಉಚಿತ ಪ್ರಾಯೋಗಿಕ ಅವಧಿ';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'ಪ್ರಾಯೋಗಿಕ ಅವಧಿಯ $days ದಿನಗಳು ಬಾಕಿ',
      one: 'ಪ್ರಾಯೋಗಿಕ ಅವಧಿಯ 1 ದಿನ ಬಾಕಿ',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'ನಿಮ್ಮ ಉಚಿತ ಪ್ರಾಯೋಗಿಕ ಅವಧಿ ಮುಗಿದಿದೆ. ವಿಶ್ಲೇಷಣೆ ಮುಂದುವರಿಸಲು ಪ್ಲಾನ್ ಆಯ್ಕೆಮಾಡಿ.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'ಈ ಅವಧಿಯಲ್ಲಿ $total ರಲ್ಲಿ $remaining ವಿಶ್ಲೇಷಣೆಗಳು ಬಾಕಿ';
  }

  @override
  String extraCredits(int count) {
    return '$count ಹೆಚ್ಚುವರಿ ವಿಶ್ಲೇಷಣೆಗಳು';
  }

  @override
  String renewsOn(String date) {
    return '$date ರಂದು ನವೀಕರಣ';
  }

  @override
  String get choosePlan => 'ಪ್ಲಾನ್ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get currentPlan => 'ಪ್ರಸ್ತುತ ಪ್ಲಾನ್';

  @override
  String get subscribe => 'ಚಂದಾದಾರರಾಗಿ';

  @override
  String get perMonth => '/ ತಿಂಗಳು';

  @override
  String get extraPacksTitle =>
      'ಇನ್ನಷ್ಟು ಬೇಕೇ? ಹೆಚ್ಚುವರಿ ವಿಶ್ಲೇಷಣೆಗಳನ್ನು ಖರೀದಿಸಿ';

  @override
  String get extraPacksHint =>
      'ಹೆಚ್ಚುವರಿ ವಿಶ್ಲೇಷಣೆಗಳು ಎಂದಿಗೂ ಅವಧಿ ಮೀರುವುದಿಲ್ಲ ಮತ್ತು ನಿಮ್ಮ ಮಾಸಿಕ ಕೋಟಾ ಮುಗಿದ ನಂತರ ಬಳಸಲ್ಪಡುತ್ತವೆ.';

  @override
  String get buy => 'ಖರೀದಿಸಿ';

  @override
  String get restorePurchases => 'ಖರೀದಿಗಳನ್ನು ಮರುಸ್ಥಾಪಿಸಿ';

  @override
  String get manageSubscription => 'ಚಂದಾದಾರಿಕೆಯನ್ನು ನಿರ್ವಹಿಸಿ';

  @override
  String get purchaseSuccess => 'ಧನ್ಯವಾದಗಳು! ನಿಮ್ಮ ಖರೀದಿ ಸಕ್ರಿಯವಾಗಿದೆ.';

  @override
  String get purchasePending => 'ಖರೀದಿ ಬಾಕಿ ಇದೆ…';

  @override
  String get purchaseFailed => 'ಖರೀದಿಯನ್ನು ಪೂರ್ಣಗೊಳಿಸಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ.';

  @override
  String get purchaseCanceled => 'ಖರೀದಿಯನ್ನು ರದ್ದುಮಾಡಲಾಗಿದೆ.';

  @override
  String get billingUnavailable =>
      'ಈ ಪ್ಲಾಟ್‌ಫಾರ್ಮ್‌ನಲ್ಲಿ ಖರೀದಿಗಳು ಇನ್ನೂ ಲಭ್ಯವಿಲ್ಲ. ನಿಮ್ಮ ಫೋನ್ ಅಥವಾ Mac ನಲ್ಲಿ ಚಂದಾದಾರರಾಗಿ; ನಿಮ್ಮ ಪ್ಲಾನ್ ಪ್ರತಿಯೊಂದು ಸಾಧನದಲ್ಲೂ ಕಾರ್ಯನಿರ್ವಹಿಸುತ್ತದೆ.';

  @override
  String get errQuotaExceeded =>
      'ಈ ಅವಧಿಗೆ ನಿಮ್ಮ ಬಳಿ ಯಾವುದೇ ವಿಶ್ಲೇಷಣೆಗಳು ಉಳಿದಿಲ್ಲ. ನಿಮ್ಮ ಪ್ಲಾನ್ ಅಪ್‌ಗ್ರೇಡ್ ಮಾಡಿ ಅಥವಾ ಹೆಚ್ಚುವರಿ ವಿಶ್ಲೇಷಣೆಗಳನ್ನು ಖರೀದಿಸಿ.';

  @override
  String get errTrialExpired =>
      'ನಿಮ್ಮ ಉಚಿತ ಪ್ರಾಯೋಗಿಕ ಅವಧಿ ಮುಗಿದಿದೆ. ಮುಂದುವರಿಯಲು ಪ್ಲಾನ್ ಆಯ್ಕೆಮಾಡಿ.';

  @override
  String get errNoPlan => 'AI ವಿಶ್ಲೇಷಣೆಗೆ ಸಕ್ರಿಯ ಪ್ಲಾನ್ ಅಗತ್ಯವಿದೆ.';

  @override
  String get viewPlans => 'ಪ್ಲಾನ್‌ಗಳನ್ನು ನೋಡಿ';

  @override
  String get usageTitle => 'ಬಳಕೆ';

  @override
  String get demoPurchaseNote =>
      'ಡೆಮೋ ಬಿಲ್ಲಿಂಗ್: ಈ ಪ್ಲಾಟ್‌ಫಾರ್ಮ್‌ನಲ್ಲಿ ಖರೀದಿಗಳನ್ನು ಅನುಕರಿಸಲಾಗುತ್ತದೆ.';

  @override
  String get mostPopular => 'ಅತ್ಯಂತ ಜನಪ್ರಿಯ';

  @override
  String get bestValue => 'ಅತ್ಯುತ್ತಮ ಮೌಲ್ಯ';

  @override
  String get planFeaturesCommon =>
      'ಫೋಟೋ ಗುರುತಿಸುವಿಕೆ, ಲೈವ್ ಡೇಟಾ, ಚಾರ್ಟ್‌ಗಳು, ಮೆಚ್ಚಿನವುಗಳು ಮತ್ತು ಎಲ್ಲಾ 120 ಭಾಷೆಗಳು ಪ್ರತಿಯೊಂದು ಪ್ಲಾನ್‌ನಲ್ಲೂ ಸೇರಿವೆ. ಕೋಟಾ AI ವಿಶ್ಲೇಷಣೆಗಳಿಗೆ ಅನ್ವಯಿಸುತ್ತದೆ.';

  @override
  String get searchLanguages => 'ಭಾಷೆಗಳನ್ನು ಹುಡುಕಿ…';

  @override
  String get noLanguageMatch => 'ಯಾವುದೇ ಭಾಷೆ ಹೊಂದಿಕೆಯಾಗುತ್ತಿಲ್ಲ.';

  @override
  String get aiSettings => 'AI ವಿಶ್ಲೇಷಣೆ';

  @override
  String get aiLength => 'ಉದ್ದ';

  @override
  String get aiDepthBrief => 'ಸಂಕ್ಷಿಪ್ತ';

  @override
  String get aiDepthStandard => 'ಪ್ರಮಾಣಿತ';

  @override
  String get aiDepthDeep => 'ಆಳವಾದ';

  @override
  String get aiDepthBriefDesc => 'ಮುಖ್ಯ ಅಂಶಗಳು, ವೇಗವಾಗಿ.';

  @override
  String get aiDepthStandardDesc => 'ಎಲ್ಲ ವಿಭಾಗಗಳೊಂದಿಗೆ ಸಂಪೂರ್ಣ ವರದಿ.';

  @override
  String get aiDepthDeepDesc =>
      'ಹೆಚ್ಚಿನ ವೆಬ್ ಹುಡುಕಾಟಗಳು, ಸಮಾನ ಕಂಪನಿಗಳೊಂದಿಗೆ ಹೋಲಿಕೆ ಮತ್ತು ಆಳವಾದ ವಿವರ.';

  @override
  String aiDepthWords(String min, String max) {
    return 'ಸುಮಾರು $min–$max ಪದಗಳು';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ವಿಶ್ಲೇಷಣೆಗಳನ್ನು ಬಳಸುತ್ತದೆ',
      one: '1 ವಿಶ್ಲೇಷಣೆ ಬಳಸುತ್ತದೆ',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'ಓದುಗರ ಮಟ್ಟ';

  @override
  String get aiReaderBeginner => 'ಆರಂಭಿಕ';

  @override
  String get aiReaderExperienced => 'ಅನುಭವಿ';

  @override
  String get aiReaderBeginnerDesc =>
      'ಸರಳ ಭಾಷೆ; ಪ್ರತಿಯೊಂದು ತಾಂತ್ರಿಕ ಪದವನ್ನು ವಿವರಿಸಲಾಗುತ್ತದೆ.';

  @override
  String get aiReaderExperiencedDesc =>
      'ಪ್ರಮಾಣಿತ ಹಣಕಾಸು ಪರಿಭಾಷೆಯೊಂದಿಗೆ ಸಾಂದ್ರ ಪಠ್ಯ.';

  @override
  String get aiCounterArgument => 'ಅತ್ಯಂತ ಪ್ರಬಲ ಪ್ರತಿವಾದ';

  @override
  String get aiCounterArgumentDesc =>
      'ಸಾರಾಂಶವು ಯಾವಾಗಲೂ ತನ್ನದೇ ತೀರ್ಮಾನದ ವಿರುದ್ಧದ ಅತ್ಯಂತ ಪ್ರಬಲ ವಾದದೊಂದಿಗೆ ಕೊನೆಗೊಳ್ಳುತ್ತದೆ.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'ನಿಮ್ಮ ಪ್ಲಾನ್‌ನಲ್ಲಿ ಪ್ರತಿ ವಿಶ್ಲೇಷಣೆಗೆ ಗರಿಷ್ಠ $count ವೆಬ್ ಹುಡುಕಾಟಗಳು',
      one: 'ನಿಮ್ಮ ಪ್ಲಾನ್‌ನಲ್ಲಿ ಪ್ರತಿ ವಿಶ್ಲೇಷಣೆಗೆ ಗರಿಷ್ಠ 1 ವೆಬ್ ಹುಡುಕಾಟ',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'ಪ್ಲಾನ್ ಪ್ರಕಾರ ಪ್ರಮಾಣಿತ ಉದ್ದ: ಸಾಮಾನ್ಯ $normal, Pro $pro, Max $max, Ultra $ultra. ಸಂಕ್ಷಿಪ್ತದಲ್ಲಿ 2 ಕಡಿಮೆ, ಆಳವಾದದಲ್ಲಿ 2 ಹೆಚ್ಚು.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ಗರಿಷ್ಠ $count ವೆಬ್ ಹುಡುಕಾಟಗಳು',
      one: 'ಗರಿಷ್ಠ 1 ವೆಬ್ ಹುಡುಕಾಟ',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ಪ್ರತಿ ವಿಶ್ಲೇಷಣೆಗೆ $count ವೆಬ್ ಹುಡುಕಾಟಗಳು',
      one: 'ಪ್ರತಿ ವಿಶ್ಲೇಷಣೆಗೆ 1 ವೆಬ್ ಹುಡುಕಾಟ',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'ಈ ಉದ್ದಕ್ಕೆ $needed ವಿಶ್ಲೇಷಣೆಗಳು ಬೇಕು, ಆದರೆ $left ಮಾತ್ರ ಉಳಿದಿವೆ. ಸೆಟ್ಟಿಂಗ್‌ಗಳಲ್ಲಿ ಕಡಿಮೆ ಉದ್ದವನ್ನು ಆಯ್ಕೆಮಾಡಿ ಅಥವಾ ಇನ್ನಷ್ಟು ವಿಶ್ಲೇಷಣೆಗಳನ್ನು ಪಡೆಯಿರಿ.';
  }

  @override
  String get outlookMarketMood => 'ಮಾರುಕಟ್ಟೆಯ ಮನಸ್ಥಿತಿ';

  @override
  String get moodVeryPessimistic => 'ಬಹಳ ನಿರಾಶಾವಾದಿ';

  @override
  String get moodPessimistic => 'ನಿರಾಶಾವಾದಿ';

  @override
  String get moodNeutral => 'ತಟಸ್ಥ';

  @override
  String get moodOptimistic => 'ಆಶಾವಾದಿ';

  @override
  String get moodVeryOptimistic => 'ಬಹಳ ಆಶಾವಾದಿ';

  @override
  String get scenarioBull => 'ಏರಿಕೆಯ ಸನ್ನಿವೇಶ';

  @override
  String get scenarioBase => 'ಮೂಲ ಸನ್ನಿವೇಶ';

  @override
  String get scenarioBear => 'ಇಳಿಕೆಯ ಸನ್ನಿವೇಶ';

  @override
  String outlookCurrentPrice(String price) {
    return 'ಪ್ರಸ್ತುತ ಬೆಲೆ: $price';
  }

  @override
  String get outlookKeyLevels => 'ಪ್ರಮುಖ ಮಟ್ಟಗಳು';

  @override
  String get keyLevelSupport => 'ಸಪೋರ್ಟ್';

  @override
  String get keyLevelResistance => 'ರೆಸಿಸ್ಟೆನ್ಸ್';

  @override
  String get keyLevelAnchor => 'ಆಂಕರ್ ಮಟ್ಟ';

  @override
  String get upcomingEvents => 'ಮುಂಬರುವ ಘಟನೆಗಳು';

  @override
  String get outlookChartNote =>
      'ಸೂಚಕ ವ್ಯಾಪ್ತಿಗಳು; ಸಂಭವನೀಯತೆಗಳು ಸ್ಥೂಲ ಅಂದಾಜುಗಳು, ಭವಿಷ್ಯವಾಣಿಗಳಲ್ಲ.';

  @override
  String get accountTitle => 'ಖಾತೆ';

  @override
  String get signIn => 'ಸೈನ್ ಇನ್ ಮಾಡಿ';

  @override
  String get signOut => 'ಸೈನ್ ಔಟ್ ಮಾಡಿ';

  @override
  String get notSignedIn => 'ಸೈನ್ ಇನ್ ಆಗಿಲ್ಲ';

  @override
  String get accountBenefit =>
      'ನಿಮ್ಮ ಚಂದಾದಾರಿಕೆ ನಿಮ್ಮ ಎಲ್ಲಾ ಸಾಧನಗಳಲ್ಲಿ ಕಾರ್ಯನಿರ್ವಹಿಸಲು ಸೈನ್ ಇನ್ ಮಾಡಿ.';

  @override
  String get accountSyncedNote =>
      'ನಿಮ್ಮ ಚಂದಾದಾರಿಕೆ ಮತ್ತು ಉಳಿದ ವಿಶ್ಲೇಷಣೆಗಳು ಪ್ರತಿಯೊಂದು ಸಾಧನದಲ್ಲೂ ಒಂದೇ ಆಗಿರುತ್ತವೆ.';

  @override
  String get signInTitle => 'WhatStock ಗೆ ಸೈನ್ ಇನ್ ಮಾಡಿ';

  @override
  String get emailLabel => 'ಇಮೇಲ್ ವಿಳಾಸ';

  @override
  String get continueWithEmail => 'ಇಮೇಲ್ ಮೂಲಕ ಮುಂದುವರಿಯಿರಿ';

  @override
  String codeSentTo(String email) {
    return 'ನಾವು $email ಗೆ 6-ಅಂಕಿಯ ಕೋಡ್ ಕಳುಹಿಸಿದ್ದೇವೆ. ಇದು 10 ನಿಮಿಷಗಳವರೆಗೆ ಮಾನ್ಯವಾಗಿರುತ್ತದೆ.';
  }

  @override
  String get codeLabel => 'ಸೈನ್-ಇನ್ ಕೋಡ್';

  @override
  String get resendCode => 'ಹೊಸ ಕೋಡ್ ಕಳುಹಿಸಿ';

  @override
  String get useDifferentEmail => 'ಬೇರೆ ಇಮೇಲ್ ಬಳಸಿ';

  @override
  String get errInvalidCode => 'ಕೋಡ್ ತಪ್ಪಾಗಿದೆ ಅಥವಾ ಅವಧಿ ಮೀರಿದೆ.';

  @override
  String get errInvalidEmail => 'ದಯವಿಟ್ಟು ಮಾನ್ಯವಾದ ಇಮೇಲ್ ವಿಳಾಸವನ್ನು ನಮೂದಿಸಿ.';

  @override
  String get errSignInFailed =>
      'ಸೈನ್ ಇನ್ ವಿಫಲವಾಗಿದೆ. ನಿಮ್ಮ ಸಂಪರ್ಕವನ್ನು ಪರಿಶೀಲಿಸಿ ಮತ್ತು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get checkoutWaiting =>
      'ನಿಮ್ಮ ಬ್ರೌಸರ್‌ನಲ್ಲಿ ಪಾವತಿಯನ್ನು ಪೂರ್ಣಗೊಳಿಸಿ. ಅದು ಮುಗಿದ ತಕ್ಷಣ ಆ್ಯಪ್ ಸ್ವಯಂಚಾಲಿತವಾಗಿ ಅಪ್‌ಡೇಟ್ ಆಗುತ್ತದೆ.';

  @override
  String get paymentViaStripe =>
      'Stripe ಮೂಲಕ ನಿಮ್ಮ ಬ್ರೌಸರ್‌ನಲ್ಲಿ ಸುರಕ್ಷಿತ ಪಾವತಿ. ಯಾವಾಗ ಬೇಕಾದರೂ ರದ್ದುಮಾಡಿ.';

  @override
  String get paymentViaStore =>
      'ನಿಮ್ಮ App Store ಅಥವಾ Google Play ಖಾತೆಯ ಮೂಲಕ ಬಿಲ್ ಮಾಡಲಾಗುತ್ತದೆ. ಸ್ಟೋರ್ ಸೆಟ್ಟಿಂಗ್‌ಗಳಲ್ಲಿ ಯಾವಾಗ ಬೇಕಾದರೂ ರದ್ದುಮಾಡಿ.';

  @override
  String get keySpace => 'ಸ್ಪೇಸ್';

  @override
  String get doubleOptionTitle => 'Option ಅನ್ನು ಎರಡು ಬಾರಿ ಒತ್ತಿರಿ';

  @override
  String get doubleOptionSubtitle =>
      'Option ಕೀಯನ್ನು ಬೇಗನೆ ಎರಡು ಬಾರಿ ಒತ್ತಿದರೂ WhatStock ತೆರೆಯುತ್ತದೆ.';

  @override
  String get doubleOptionPermission =>
      'ಇತರ ಆ್ಯಪ್‌ಗಳಲ್ಲೂ ಇದು ಕಾರ್ಯನಿರ್ವಹಿಸಲು, ಸಿಸ್ಟಂ ಸೆಟ್ಟಿಂಗ್‌ಗಳು → ಗೌಪ್ಯತೆ ಮತ್ತು ಭದ್ರತೆ → ಇನ್‌ಪುಟ್ ಮಾನಿಟರಿಂಗ್‌ನಲ್ಲಿ WhatStock ಗೆ ಅನುಮತಿ ನೀಡಿ, ನಂತರ ಆ್ಯಪ್ ಅನ್ನು ಮತ್ತೆ ತೆರೆಯಿರಿ.';

  @override
  String get openSystemSettings => 'ಸಿಸ್ಟಂ ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ತೆರೆಯಿರಿ';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'ಎಲ್ಲಿಂದಲಾದರೂ WhatStock ತೆರೆಯಲು $shortcut ಒತ್ತಿರಿ ಅಥವಾ Option ಅನ್ನು ಎರಡು ಬಾರಿ ಒತ್ತಿರಿ.';
  }

  @override
  String get scenarioMostLikely => 'ಅತ್ಯಂತ ಸಂಭವನೀಯ';

  @override
  String get longTermToday => 'ಇಂದು';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years ವರ್ಷಗಳು',
      one: '1 ವರ್ಷ',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return 'ವರ್ಷಕ್ಕೆ $range';
  }

  @override
  String longTermLikely(String price) {
    return 'ಅತ್ಯಂತ ಸಂಭವನೀಯ $price';
  }

  @override
  String get confidenceLow => 'ಕಡಿಮೆ ವಿಶ್ವಾಸ';

  @override
  String get confidenceMedium => 'ಮಧ್ಯಮ ವಿಶ್ವಾಸ';

  @override
  String get confidenceHigh => 'ಹೆಚ್ಚಿನ ವಿಶ್ವಾಸ';

  @override
  String get longTermNote =>
      'ದೀರ್ಘಾವಧಿಯ ವ್ಯಾಪ್ತಿಗಳು ತಿಳಿಸಿದ ಊಹೆಗಳನ್ನು ಆಧರಿಸಿವೆ ಮತ್ತು ಸಮಯ ಕಳೆದಂತೆ ವಿಸ್ತಾರವಾಗುತ್ತವೆ. ಬೆಲೆಗಳು ಡಿವಿಡೆಂಡ್‌ಗಳನ್ನು ಒಳಗೊಂಡಿಲ್ಲ. ಇವು ಸ್ಥೂಲ ಅಂದಾಜುಗಳು, ಭವಿಷ್ಯವಾಣಿಗಳಲ್ಲ.';

  @override
  String get portfolio => 'ಪೋರ್ಟ್‌ಫೋಲಿಯೊ';

  @override
  String get portfolioEmpty =>
      'ಇಲ್ಲಿ ಇನ್ನೂ ಏನೂ ಇಲ್ಲ. ನಿಮ್ಮ ಹೂಡಿಕೆಗಳನ್ನು ಗಮನಿಸಲು ಒಂದು ಷೇರನ್ನು ತೆರೆದು “ಪೋರ್ಟ್‌ಫೋಲಿಯೊಗೆ ಸೇರಿಸಿ” ಟ್ಯಾಪ್ ಮಾಡಿ.';

  @override
  String get portfolioLocalNote =>
      'ಈ ಸಾಧನದಲ್ಲಿ ಮತ್ತು ನೀವು ಸೈನ್ ಇನ್ ಆಗಿದ್ದರೆ ನಿಮ್ಮ ಖಾತೆಯಲ್ಲಿ ಸಂಗ್ರಹಿಸಲಾಗಿದೆ. ಒಟ್ಟು ಮೊತ್ತಗಳನ್ನು ECB ಉಲ್ಲೇಖ ದರಗಳಲ್ಲಿ ಪರಿವರ್ತಿಸಲಾಗುತ್ತದೆ; ಬೆಲೆಗಳು ವಿಳಂಬವಾಗಿರಬಹುದು.';

  @override
  String get addToPortfolio => 'ಪೋರ್ಟ್‌ಫೋಲಿಯೊಗೆ ಸೇರಿಸಿ';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol ಸೇರಿಸಿ';
  }

  @override
  String get portfolioQuantity => 'ಷೇರುಗಳ ಸಂಖ್ಯೆ';

  @override
  String portfolioBuyPrice(String currency) {
    return 'ಪ್ರತಿ ಷೇರಿನ ಬೆಲೆ ($currency)';
  }

  @override
  String get portfolioBuyDate => 'ಖರೀದಿ ದಿನಾಂಕ';

  @override
  String get portfolioAdd => 'ಸೇರಿಸಿ';

  @override
  String get portfolioInvalidNumber => 'ಶೂನ್ಯಕ್ಕಿಂತ ದೊಡ್ಡ ಸಂಖ್ಯೆಯನ್ನು ನಮೂದಿಸಿ.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol ಅನ್ನು ನಿಮ್ಮ ಪೋರ್ಟ್‌ಫೋಲಿಯೊಗೆ ಸೇರಿಸಲಾಗಿದೆ.';
  }

  @override
  String get portfolioTotalValue => 'ಒಟ್ಟು ಮೌಲ್ಯ';

  @override
  String get portfolioToday => 'ಇಂದು';

  @override
  String get portfolioGainLoss => 'ಲಾಭ/ನಷ್ಟ';

  @override
  String homeDividendsThisYear(String amount) {
    return 'ಈ ವರ್ಷದ ಡಿವಿಡೆಂಡ್: $amount';
  }

  @override
  String get portfolioInvested => 'ಹೂಡಿಕೆ';

  @override
  String get portfolioAllocation => 'ಹಂಚಿಕೆ';

  @override
  String get portfolioPositions => 'ಪೊಸಿಷನ್‌ಗಳು';

  @override
  String portfolioAvgCost(String price) {
    return 'ಸರಾಸರಿ ವೆಚ್ಚ $price';
  }

  @override
  String get portfolioYourPosition => 'ನಿಮ್ಮ ಪೊಸಿಷನ್';

  @override
  String get portfolioPurchases => 'ಖರೀದಿಗಳು';

  @override
  String get portfolioRemove => 'ತೆಗೆದುಹಾಕಿ';

  @override
  String get portfolioExcluded =>
      'ಬೆಲೆ ಅಥವಾ ವಿನಿಮಯ ದರ ಇಲ್ಲದ ಪೊಸಿಷನ್‌ಗಳನ್ನು ಒಟ್ಟು ಮೊತ್ತದಿಂದ ಹೊರಗಿಡಲಾಗಿದೆ.';

  @override
  String get priceAlerts => 'ಬೆಲೆ ಅಲರ್ಟ್‌ಗಳು';

  @override
  String get setPriceAlert => 'ಬೆಲೆ ಅಲರ್ಟ್ ಹೊಂದಿಸಿ';

  @override
  String alertDialogTitle(String symbol) {
    return 'ಬೆಲೆ ಅಲರ್ಟ್ · $symbol';
  }

  @override
  String get alertKindAbove => 'ಇದಕ್ಕಿಂತ ಮೇಲೆ ಏರಿದರೆ';

  @override
  String get alertKindBelow => 'ಇದಕ್ಕಿಂತ ಕೆಳಗೆ ಇಳಿದರೆ';

  @override
  String get alertKindMove => 'ಒಂದು ದಿನದಲ್ಲಿ ಭಾರಿ ಏರಿಳಿತ';

  @override
  String alertTargetPrice(String currency) {
    return 'ಬೆಲೆ ($currency)';
  }

  @override
  String get alertMovePercent => 'ದೈನಂದಿನ ಏರಿಳಿತ (%)';

  @override
  String get alertAlreadyMet => 'ಬೆಲೆ ಈಗಾಗಲೇ ಈ ಮಟ್ಟವನ್ನು ದಾಟಿದೆ.';

  @override
  String get alertSave => 'ಅಲರ್ಟ್ ಹೊಂದಿಸಿ';

  @override
  String alertCreated(String symbol) {
    return '$symbol ಗೆ ಅಲರ್ಟ್ ಹೊಂದಿಸಲಾಗಿದೆ.';
  }

  @override
  String get alertsEmpty =>
      'ಇನ್ನೂ ಯಾವುದೇ ಬೆಲೆ ಅಲರ್ಟ್‌ಗಳಿಲ್ಲ. ಒಂದನ್ನು ಹೊಂದಿಸಲು ಷೇರನ್ನು ತೆರೆದು ಗಂಟೆಯನ್ನು ಟ್ಯಾಪ್ ಮಾಡಿ.';

  @override
  String get alertsNote =>
      'WhatStock ಚಾಲನೆಯಲ್ಲಿರುವಾಗ ಅಲರ್ಟ್‌ಗಳನ್ನು ಪ್ರತಿ 5 ನಿಮಿಷಕ್ಕೊಮ್ಮೆ ಪರಿಶೀಲಿಸಲಾಗುತ್ತದೆ. ಕಂಪ್ಯೂಟರ್‌ನಲ್ಲಿ ಇದು ಮೆನು ಬಾರ್ ಅಥವಾ ಸಿಸ್ಟಂ ಟ್ರೇಯಲ್ಲಿ ಚಾಲನೆಯಲ್ಲಿರುತ್ತದೆ; ಫೋನ್‌ನಲ್ಲಿ ಸದ್ಯಕ್ಕೆ ಆ್ಯಪ್ ತೆರೆದಿರುವಾಗ ಮಾತ್ರ ಅಲರ್ಟ್‌ಗಳು ಬರುತ್ತವೆ.';

  @override
  String alertDescAbove(String price) {
    return '$price ಕ್ಕಿಂತ ಮೇಲೆ';
  }

  @override
  String alertDescBelow(String price) {
    return '$price ಕ್ಕಿಂತ ಕೆಳಗೆ';
  }

  @override
  String alertDescMove(String percent) {
    return 'ದೈನಂದಿನ ಏರಿಳಿತ ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return '$date ರಂದು $price ನಲ್ಲಿ ಸಕ್ರಿಯವಾಯಿತು';
  }

  @override
  String get alertRearm => 'ಮತ್ತೆ ಸಕ್ರಿಯಗೊಳಿಸಿ';

  @override
  String get alertDelete => 'ಅಳಿಸಿ';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol $price ಕ್ಕಿಂತ ಮೇಲೇರಿದೆ';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol $price ಕ್ಕಿಂತ ಕೆಳಗಿಳಿದಿದೆ';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol ಇಂದು $percent ಏರಿಳಿತ ಕಂಡಿದೆ';
  }

  @override
  String alertHitBody(String price) {
    return 'ಪ್ರಸ್ತುತ ಬೆಲೆ: $price';
  }

  @override
  String get alertOpen => 'ತೆರೆಯಿರಿ';

  @override
  String get keepInTrayTitle => 'ವಿಂಡೋ ಮುಚ್ಚಿದಾಗಲೂ ಚಾಲನೆಯಲ್ಲಿರಲಿ';

  @override
  String get keepInTraySubtitle =>
      'WhatStock ಮೆನು ಬಾರ್ ಅಥವಾ ಸಿಸ್ಟಂ ಟ್ರೇಯಲ್ಲಿ ಇರುತ್ತದೆ, ಹೀಗಾಗಿ ಶಾರ್ಟ್‌ಕಟ್ ಮತ್ತು ಬೆಲೆ ಅಲರ್ಟ್‌ಗಳು ಕಾರ್ಯನಿರ್ವಹಿಸುತ್ತಲೇ ಇರುತ್ತವೆ.';

  @override
  String get termsOfUse => 'ಬಳಕೆಯ ನಿಯಮಗಳು';

  @override
  String get privacyPolicy => 'ಗೌಪ್ಯತಾ ನೀತಿ';

  @override
  String get subscriptionLegal =>
      'ನೀವು ರದ್ದುಮಾಡುವವರೆಗೆ ಚಂದಾದಾರಿಕೆಗಳು ಪ್ರತಿ ತಿಂಗಳು ಸ್ವಯಂಚಾಲಿತವಾಗಿ ನವೀಕರಣಗೊಳ್ಳುತ್ತವೆ. ಚಂದಾದಾರರಾಗುವ ಮೂಲಕ ನೀವು ಬಳಕೆಯ ನಿಯಮಗಳು ಮತ್ತು ಗೌಪ್ಯತಾ ನೀತಿಯನ್ನು ಒಪ್ಪುತ್ತೀರಿ.';

  @override
  String get deleteAccount => 'ಖಾತೆಯನ್ನು ಅಳಿಸಿ';

  @override
  String get deleteAccountTitle => 'ನಿಮ್ಮ ಖಾತೆಯನ್ನು ಅಳಿಸಬೇಕೇ?';

  @override
  String get deleteAccountBody =>
      'ನಿಮ್ಮ ಖಾತೆ ಮತ್ತು ನಮ್ಮ ಸರ್ವರ್‌ನಲ್ಲಿ ಸಂಗ್ರಹಿಸಲಾದ ಎಲ್ಲವೂ (ಇಮೇಲ್, ಕೋಟಾ, ಬಳಕೆ) ಶಾಶ್ವತವಾಗಿ ಅಳಿಸಲ್ಪಡುತ್ತದೆ, ಮತ್ತು ಬಳಸದ ವಿಶ್ಲೇಷಣೆಗಳು ಕಳೆದುಹೋಗುತ್ತವೆ. ಬ್ರೌಸರ್‌ನಲ್ಲಿ ಪಾವತಿಸಿದ ಚಂದಾದಾರಿಕೆಯನ್ನು ತಕ್ಷಣವೇ ರದ್ದುಮಾಡಲಾಗುತ್ತದೆ; App Store ಅಥವಾ Google Play ಚಂದಾದಾರಿಕೆಯನ್ನು ಸ್ಟೋರ್‌ನ ಸೆಟ್ಟಿಂಗ್‌ಗಳಲ್ಲಿ ರದ್ದುಮಾಡಬೇಕು.';

  @override
  String get deleteLocalData =>
      'ಈ ಸಾಧನದಲ್ಲಿನ ಡೇಟಾವನ್ನೂ ಅಳಿಸಿ (ಪೋರ್ಟ್‌ಫೋಲಿಯೊ, ಅಲರ್ಟ್‌ಗಳು, ಮೆಚ್ಚಿನವುಗಳು, ಇತಿಹಾಸ, ಉಳಿಸಿದ ವಿಶ್ಲೇಷಣೆಗಳು)';

  @override
  String get deleteAccountConfirm => 'ಶಾಶ್ವತವಾಗಿ ಅಳಿಸಿ';

  @override
  String get accountDeleted => 'ನಿಮ್ಮ ಖಾತೆಯನ್ನು ಅಳಿಸಲಾಗಿದೆ.';

  @override
  String get errDeleteAccount =>
      'ಖಾತೆಯನ್ನು ಅಳಿಸಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ. ನಿಮ್ಮ ಸಂಪರ್ಕವನ್ನು ಪರಿಶೀಲಿಸಿ ಮತ್ತು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get aiTrialBriefNote =>
      'ಪ್ರಾಯೋಗಿಕ ವಿಶ್ಲೇಷಣೆಗಳು ಸಂಕ್ಷಿಪ್ತವಾಗಿದ್ದು, ವೇಗವಾದ AI ಮಾದರಿಯಿಂದ ತಯಾರಾಗುತ್ತವೆ. ಪ್ಲಾನ್‌ನೊಂದಿಗೆ ನಿಮಗೆ ನಮ್ಮ ಅತ್ಯಂತ ಸಮರ್ಥ AI, ಹೆಚ್ಚಿನ ವೆಬ್ ಹುಡುಕಾಟಗಳು ಮತ್ತು ಪ್ರಮಾಣಿತ ಹಾಗೂ ಆಳವಾದ ಉದ್ದಗಳು ಸಿಗುತ್ತವೆ.';

  @override
  String get billingMonthly => 'ಮಾಸಿಕ';

  @override
  String get billingYearly => 'ವಾರ್ಷಿಕ';

  @override
  String get yearlyDiscount => '2 ತಿಂಗಳು ಉಚಿತ';

  @override
  String get perYear => '/ ವರ್ಷ';

  @override
  String pricePerMonthApprox(String price) {
    return 'ತಿಂಗಳಿಗೆ ≈ $price';
  }

  @override
  String get subscriptionLegalYearly =>
      'ನೀವು ರದ್ದುಮಾಡುವವರೆಗೆ ವಾರ್ಷಿಕ ಚಂದಾದಾರಿಕೆಗಳು ಪ್ರತಿ ವರ್ಷ ಸ್ವಯಂಚಾಲಿತವಾಗಿ ನವೀಕರಣಗೊಳ್ಳುತ್ತವೆ. ಚಂದಾದಾರರಾಗುವ ಮೂಲಕ ನೀವು ಬಳಕೆಯ ನಿಯಮಗಳು ಮತ್ತು ಗೌಪ್ಯತಾ ನೀತಿಯನ್ನು ಒಪ್ಪುತ್ತೀರಿ.';

  @override
  String get myAnalyses => 'ನನ್ನ ವಿಶ್ಲೇಷಣೆಗಳು';

  @override
  String get navAlerts => 'ಅಲರ್ಟ್‌ಗಳು';

  @override
  String get inviteTitle => 'ಮುಚ್ಚಿದ ಪೂರ್ವವೀಕ್ಷಣೆ';

  @override
  String get inviteBody =>
      'ಸದ್ಯಕ್ಕೆ WhatStock ಆಹ್ವಾನದ ಮೂಲಕ ಮಾತ್ರ ಲಭ್ಯವಿದೆ. ನೀವು ಪಡೆದ ಆಹ್ವಾನ ಕೋಡ್ ನಮೂದಿಸಿ.';

  @override
  String get inviteCodeLabel => 'ಆಹ್ವಾನ ಕೋಡ್';

  @override
  String get inviteContinue => 'ಮುಂದುವರಿಸಿ';

  @override
  String get inviteInvalid => 'ಈ ಆಹ್ವಾನ ಕೋಡ್ ಮಾನ್ಯವಾಗಿಲ್ಲ.';

  @override
  String get inviteExpired =>
      'ಈ ಆಹ್ವಾನದ ಅವಧಿ ಮುಗಿದಿದೆ. ನಿಮ್ಮನ್ನು ಆಹ್ವಾನಿಸಿದವರಿಂದ ಹೊಸ ಕೋಡ್ ಕೇಳಿ.';

  @override
  String get inviteDeviceLimit =>
      'ಈ ಆಹ್ವಾನ ಕೋಡ್ ಈಗಾಗಲೇ ಗರಿಷ್ಠ ಸಂಖ್ಯೆಯ ಸಾಧನಗಳಲ್ಲಿ ಬಳಕೆಯಲ್ಲಿದೆ.';

  @override
  String get previewConfidential => 'ಗೌಪ್ಯ ಪೂರ್ವವೀಕ್ಷಣೆ';

  @override
  String get errPreviewDailyLimit =>
      'ಈ ಪೂರ್ವವೀಕ್ಷಣೆಯ ಇಂದಿನ ವಿಶ್ಲೇಷಣೆ ಮಿತಿ ತಲುಪಿದೆ. ನಾಳೆ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಗಂಟೆಗಳ ಹಿಂದೆ',
      one: '1 ಗಂಟೆಯ ಹಿಂದೆ',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ದಿನಗಳ ಹಿಂದೆ',
      one: '1 ದಿನದ ಹಿಂದೆ',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'ಈ ವಿಶ್ಲೇಷಣೆಯನ್ನು ನವೀಕರಿಸಬೇಕೇ?';

  @override
  String staleBody(String age) {
    return 'ಈ ವಿಶ್ಲೇಷಣೆಯನ್ನು $age ರಚಿಸಲಾಗಿದೆ. ಅಂದಿನಿಂದ ಬೆಲೆಗಳು, ಸುದ್ದಿಗಳು ಮತ್ತು ಫಲಿತಾಂಶಗಳು ಬದಲಾಗಿರಬಹುದು.';
  }

  @override
  String get staleKeep => 'ಹಿಂದಿನದನ್ನು ತೋರಿಸಿ';

  @override
  String get staleRefresh => 'ಹೊಸದನ್ನು ರಚಿಸಿ';

  @override
  String seeAll(int count) {
    return 'ಎಲ್ಲವನ್ನೂ ನೋಡಿ ($count)';
  }

  @override
  String get searchAnalyses => 'ನಿಮ್ಮ ವಿಶ್ಲೇಷಣೆಗಳನ್ನು ಹುಡುಕಿ';

  @override
  String get deleteAnalysis => 'ಅಳಿಸಿ';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol ವಿಶ್ಲೇಷಣೆಯನ್ನು ಅಳಿಸಲಾಗಿದೆ';
  }

  @override
  String get keyLevelAlertHint =>
      'ಬೆಲೆ ಒಂದು ಮಟ್ಟವನ್ನು ತಲುಪಿದಾಗ ಅಲರ್ಟ್ ಪಡೆಯಲು ಆ ಮಟ್ಟವನ್ನು ಟ್ಯಾಪ್ ಮಾಡಿ.';

  @override
  String get shareAnalysisTitle => 'ವಿಶ್ಲೇಷಣೆ ಹಂಚಿಕೊಳ್ಳಿ';

  @override
  String get shareAsImage => 'ಚಿತ್ರವಾಗಿ ಹಂಚಿಕೊಳ್ಳಿ';

  @override
  String get shareAsText => 'ಪಠ್ಯವಾಗಿ ಹಂಚಿಕೊಳ್ಳಿ';

  @override
  String get shareCardFooter => 'WhatStock ನಿಂದ ರಚಿಸಲಾಗಿದೆ';

  @override
  String get shareCardDisclaimer => 'AI ವಿಶ್ಲೇಷಣೆ · ಹೂಡಿಕೆ ಸಲಹೆಯಲ್ಲ';

  @override
  String get referralTitle => 'ಸ್ನೇಹಿತರನ್ನು ಆಹ್ವಾನಿಸಿ';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಹೆಚ್ಚುವರಿ ವಿಶ್ಲೇಷಣೆಗಳು',
      one: '1 ಹೆಚ್ಚುವರಿ ವಿಶ್ಲೇಷಣೆ',
    );
    return 'ನಿಮ್ಮ ಕೋಡ್ ಹಂಚಿಕೊಳ್ಳಿ. ನಿಮ್ಮ ಸ್ನೇಹಿತರಿಗೆ ತಕ್ಷಣ $_temp0 ಸಿಗುತ್ತದೆ, ಅವರ ಮೊದಲ ವಿಶ್ಲೇಷಣೆಯ ನಂತರ ನಿಮಗೂ ಅಷ್ಟೇ ಸಿಗುತ್ತದೆ.';
  }

  @override
  String get referralYourCode => 'ನಿಮ್ಮ ಕೋಡ್';

  @override
  String referralStats(int invited, int rewarded) {
    return 'ಆಹ್ವಾನಿತರು: $invited · ಬಹುಮಾನ ದೊರೆತವರು: $rewarded';
  }

  @override
  String get referralHaveCode => 'ಸ್ನೇಹಿತರ ಕೋಡ್ ಇದೆಯೇ?';

  @override
  String get referralRedeem => 'ರಿಡೀಮ್ ಮಾಡಿ';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಹೆಚ್ಚುವರಿ ವಿಶ್ಲೇಷಣೆಗಳನ್ನು ಸೇರಿಸಲಾಗಿದೆ. ಸ್ವಾಗತ!',
      one: '1 ಹೆಚ್ಚುವರಿ ವಿಶ್ಲೇಷಣೆ ಸೇರಿಸಲಾಗಿದೆ. ಸ್ವಾಗತ!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'ಈ ಕೋಡ್ ಅಸ್ತಿತ್ವದಲ್ಲಿಲ್ಲ. ಪರಿಶೀಲಿಸಿ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get referralErrOwn => 'ನಿಮ್ಮದೇ ಕೋಡ್ ಅನ್ನು ರಿಡೀಮ್ ಮಾಡಲು ಸಾಧ್ಯವಿಲ್ಲ.';

  @override
  String get referralErrAlready =>
      'ನೀವು ಈಗಾಗಲೇ ಸ್ನೇಹಿತರ ಕೋಡ್ ರಿಡೀಮ್ ಮಾಡಿದ್ದೀರಿ.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಹೆಚ್ಚುವರಿ ವಿಶ್ಲೇಷಣೆಗಳು',
      one: '1 ಹೆಚ್ಚುವರಿ ವಿಶ್ಲೇಷಣೆ',
    );
    return 'ನಾನು WhatStock ಬಳಸಿ ಷೇರುಗಳನ್ನು ವಿಶ್ಲೇಷಿಸುತ್ತೇನೆ: ಷೇರಿನ ಫೋಟೋ ತೆಗೆಯಿರಿ, AI ಅದನ್ನು ವಿವರಿಸುತ್ತದೆ. ನನ್ನ ಕೋಡ್ $code ಬಳಸಿದರೆ ನಿಮಗೆ $_temp0 ಸಿಗುತ್ತದೆ.';
  }

  @override
  String get referralCopied => 'ಕೋಡ್ ನಕಲಿಸಲಾಗಿದೆ';

  @override
  String get onboardTitle1 => 'ಷೇರಿನ ಫೋಟೋ ತೆಗೆಯಿರಿ';

  @override
  String get onboardBody1 =>
      'ಬ್ರೋಕರೇಜ್ ಆ್ಯಪ್‌ನ ಸ್ಕ್ರೀನ್, ಪತ್ರಿಕೆ ಅಥವಾ ಕಂಪನಿಯ ಲೋಗೋ ಸಾಕು: WhatStock ಷೇರನ್ನು ಗುರುತಿಸಿ ಅದರ ಬೆಲೆ, ಚಾರ್ಟ್ ಮತ್ತು ಪ್ರಮುಖ ಅಂಕಿಅಂಶಗಳನ್ನು ತೋರಿಸುತ್ತದೆ.';

  @override
  String get onboardTitle2 => 'ನಿಮಿಷಗಳಲ್ಲಿ ಅರ್ಥಮಾಡಿಕೊಳ್ಳಿ';

  @override
  String get onboardBody2 =>
      'AI ವಿಶ್ಲೇಷಣೆಯು ಷೇರಿನ ಚಲನೆಗೆ ಕಾರಣಗಳು, ಅಪಾಯಗಳು, ಮೌಲ್ಯಮಾಪನ ಮತ್ತು ಬೆಲೆ ಎತ್ತ ಸಾಗಬಹುದು ಎಂಬುದರ ಮೂರು ಸನ್ನಿವೇಶಗಳನ್ನು ಮೂಲಗಳೊಂದಿಗೆ ನಿಮ್ಮ ಭಾಷೆಯಲ್ಲೇ ವಿವರಿಸುತ್ತದೆ.';

  @override
  String get onboardTitle3 => 'ಸದಾ ಅಪ್‌ಡೇಟ್ ಆಗಿರಿ';

  @override
  String get onboardBody3 =>
      'ಮೆಚ್ಚಿನವುಗಳು, ನಿಮ್ಮ ಪೋರ್ಟ್‌ಫೋಲಿಯೊ ಮತ್ತು ಬೆಲೆ ಅಲರ್ಟ್‌ಗಳು ನಿಮಗೆ ಮಾಹಿತಿ ನೀಡುತ್ತಿರುತ್ತವೆ. ನಿಮ್ಮ ವಿಶ್ಲೇಷಣೆಗಳು ನಿಮ್ಮ ಸಾಧನದಲ್ಲೇ ಉಳಿಯುತ್ತವೆ, ಮತ್ತೆ ತೆರೆಯಲು ಸಿದ್ಧವಾಗಿ.';

  @override
  String get onboardNext => 'ಮುಂದೆ';

  @override
  String get onboardStart => 'ಪ್ರಾರಂಭಿಸಿ';

  @override
  String get onboardSkip => 'ಬಿಟ್ಟುಬಿಡಿ';

  @override
  String changesTitle(String date) {
    return 'ಹಿಂದಿನ ವಿಶ್ಲೇಷಣೆಯಿಂದ ($date)';
  }

  @override
  String get changesPrice => 'ಬೆಲೆ';

  @override
  String get changesNoMajor => 'ಮುನ್ನೋಟದಲ್ಲಿ ಗಮನಾರ್ಹ ಬದಲಾವಣೆ ಇಲ್ಲ.';

  @override
  String get changesPreviousSummary => 'ಹಿಂದಿನ ಸಾರಾಂಶ';

  @override
  String get telemetryTitle => 'WhatStock ಅನ್ನು ಸುಧಾರಿಸಲು ಸಹಾಯ ಮಾಡಿ';

  @override
  String get telemetryBody =>
      'ಅನಾಮಧೇಯ ಬಳಕೆಯ ಅಂಕಿಅಂಶಗಳು ಮತ್ತು ಕ್ರ್ಯಾಶ್ ವರದಿಗಳನ್ನು ಹಂಚಿಕೊಳ್ಳಿ: ಯಾವ ಫೀಚರ್‌ಗಳನ್ನು ಬಳಸಲಾಗುತ್ತದೆ ಮತ್ತು ಏನು ತಪ್ಪಾಗಿದೆ. ನಿಮ್ಮ ಸ್ಟಾಕ್‌ಗಳು, ವಿಶ್ಲೇಷಣೆಗಳು ಅಥವಾ ವೈಯಕ್ತಿಕ ಡೇಟಾವನ್ನು ಎಂದಿಗೂ ಹಂಚಿಕೊಳ್ಳುವುದಿಲ್ಲ. ನೀವು ಇದನ್ನು ಯಾವಾಗ ಬೇಕಾದರೂ ಸೆಟ್ಟಿಂಗ್‌ಗಳಲ್ಲಿ ಬದಲಾಯಿಸಬಹುದು.';

  @override
  String get telemetryAllow => 'ಅನುಮತಿಸಿ';

  @override
  String get telemetryDecline => 'ಬೇಡ, ಧನ್ಯವಾದಗಳು';

  @override
  String get telemetrySetting => 'ಅನಾಮಧೇಯ ಅಂಕಿಅಂಶಗಳು ಮತ್ತು ಕ್ರ್ಯಾಶ್ ವರದಿಗಳು';

  @override
  String get telemetrySettingHint =>
      'ಫೀಚರ್‌ಗಳನ್ನು ಎಷ್ಟು ಬಾರಿ ಬಳಸಲಾಗುತ್ತದೆ ಮತ್ತು ದೋಷ ವರದಿಗಳು, ವೈಯಕ್ತಿಕ ಡೇಟಾ ಅಥವಾ ನಿಮ್ಮ ಹುಡುಕಾಟಗಳು ಮತ್ತು ವಿಶ್ಲೇಷಣೆಗಳ ವಿಷಯವಿಲ್ಲದೆ.';

  @override
  String get askButton => 'ಈ ವಿಶ್ಲೇಷಣೆಯ ಬಗ್ಗೆ ಕೇಳಿ';

  @override
  String askTitle(String symbol) {
    return '$symbol ಕುರಿತ ಪ್ರಶ್ನೆಗಳು';
  }

  @override
  String get askIntro =>
      'ವಿಶ್ಲೇಷಣೆಯ ಬಗ್ಗೆ ಏನು ಬೇಕಾದರೂ ಕೇಳಿ: ಒಂದು ಅಪಾಯದ ಅರ್ಥವೇನು, ಮುನ್ನೋಟವನ್ನು ಯಾವುದು ಬದಲಾಯಿಸಬಹುದು, ಒಂದು ಸಂಖ್ಯೆಯನ್ನು ಹೇಗೆ ಲೆಕ್ಕ ಹಾಕಲಾಗಿದೆ. ಉತ್ತರಗಳು ಈ ವಿಶ್ಲೇಷಣೆಯನ್ನು ಆಧರಿಸಿವೆ ಮತ್ತು ಇವು ಹೂಡಿಕೆ ಸಲಹೆಯಲ್ಲ.';

  @override
  String get askHint => 'ಪ್ರಶ್ನೆ ಕೇಳಿ…';

  @override
  String get askSend => 'ಕಳುಹಿಸಿ';

  @override
  String get askThinking => 'ಯೋಚಿಸಲಾಗುತ್ತಿದೆ…';

  @override
  String get askSuggest1 => 'ಅತಿದೊಡ್ಡ ಅಪಾಯ ಯಾವುದು?';

  @override
  String get askSuggest2 => 'ಮುನ್ನೋಟವನ್ನು ಯಾವುದು ಬದಲಾಯಿಸಬಹುದು?';

  @override
  String get askSuggest3 => 'ಸರಳವಾಗಿ ವಿವರಿಸಿ';

  @override
  String get askMaxReached =>
      'ಈ ವಿಶ್ಲೇಷಣೆಗೆ ಇದು ಕೊನೆಯ ಪ್ರಶ್ನೆಯಾಗಿತ್ತು. ಇನ್ನಷ್ಟು ಕೇಳಲು ಹೊಸ ವಿಶ್ಲೇಷಣೆ ರಚಿಸಿ.';

  @override
  String get errAskLimit =>
      'ನೀವು ಇಂದಿನ ಪ್ರಶ್ನೆಗಳ ಮಿತಿಯನ್ನು ತಲುಪಿದ್ದೀರಿ. ನಾಳೆ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get eventTomorrow => 'ನಾಳೆ';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days ದಿನಗಳಲ್ಲಿ',
      one: '1 ದಿನದಲ್ಲಿ',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'ತ್ರೈಮಾಸಿಕ ಫಲಿತಾಂಶಗಳು';

  @override
  String get eventBeforeOpen => 'ಮಾರುಕಟ್ಟೆ ತೆರೆಯುವ ಮೊದಲು';

  @override
  String get eventAfterClose => 'ಮಾರುಕಟ್ಟೆ ಮುಚ್ಚಿದ ನಂತರ';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS ಅಂದಾಜು: $value';
  }

  @override
  String get eventFromAnalysis => 'ನಿಮ್ಮ ವಿಶ್ಲೇಷಣೆಯಿಂದ';

  @override
  String get eventDividend => 'ಡಿವಿಡೆಂಡ್ ನಿರೀಕ್ಷಿತ';

  @override
  String get eventDividendEstimate => 'ನೀವು ದಾಖಲಿಸಿದ ಪಾವತಿಗಳಿಂದ ಅಂದಾಜಿಸಲಾಗಿದೆ';

  @override
  String get eventsHint =>
      'ಮುಂದಿನ 90 ದಿನಗಳಲ್ಲಿ ನಿಮ್ಮ ಮೆಚ್ಚಿನ ಮತ್ತು ಪೋರ್ಟ್‌ಫೋಲಿಯೊ ಷೇರುಗಳ ಫಲಿತಾಂಶ ದಿನಾಂಕಗಳು, ನಿಮ್ಮ ವಿಶ್ಲೇಷಣೆಗಳು ಗುರುತಿಸಿದ ದಿನಾಂಕವಿರುವ ಘಟನೆಗಳು ಹಾಗೂ ನೀವು ದಾಖಲಿಸಿದ ಪಾವತಿಗಳಿಂದ ನಿರೀಕ್ಷಿತ ಡಿವಿಡೆಂಡ್‌ಗಳು.';

  @override
  String get eventsEmpty =>
      'ಮುಂದಿನ 90 ದಿನಗಳಲ್ಲಿ ದಿನಾಂಕವಿರುವ ಯಾವುದೇ ಘಟನೆಗಳಿಲ್ಲ. ಅವುಗಳ ಫಲಿತಾಂಶ ದಿನಾಂಕಗಳನ್ನು ಇಲ್ಲಿ ನೋಡಲು ಮೆಚ್ಚಿನವುಗಳು ಅಥವಾ ಪೋರ್ಟ್‌ಫೋಲಿಯೊ ಷೇರುಗಳನ್ನು ಸೇರಿಸಿ; ದಾಖಲಿಸಿದ ಡಿವಿಡೆಂಡ್‌ಗಳ ನಿರೀಕ್ಷಿತ ಮುಂದಿನ ಪಾವತಿ ಇಲ್ಲಿ ಕಾಣಿಸುತ್ತದೆ.';

  @override
  String get compareTitle => 'ಹೋಲಿಕೆ';

  @override
  String get compareAdd => 'ಷೇರು ಸೇರಿಸಿ';

  @override
  String get compareRemove => 'ತೆಗೆದುಹಾಕಿ';

  @override
  String get compareTickerHint => 'ಟಿಕರ್, ಉದಾ. MSFT';

  @override
  String get compareHint =>
      'ಪ್ರಮುಖ ಅಂಕಿಅಂಶಗಳು ಅಕ್ಕಪಕ್ಕದಲ್ಲಿ; ಪ್ರತಿ ಸಾಲಿನ ಅತ್ಯುತ್ತಮ ಮೌಲ್ಯವನ್ನು ಹೈಲೈಟ್ ಮಾಡಲಾಗಿದೆ. ಮೊತ್ತಗಳು ಪ್ರತಿ ಷೇರಿನ ಸ್ವಂತ ಕರೆನ್ಸಿಯಲ್ಲಿವೆ.';

  @override
  String get compareNoAnalysis => 'ಇನ್ನೂ ಯಾವುದೇ ವಿಶ್ಲೇಷಣೆ ಇಲ್ಲ';

  @override
  String get portfolioDividends => 'ವಾರ್ಷಿಕ ಡಿವಿಡೆಂಡ್';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent ಯೀಲ್ಡ್';
  }

  @override
  String get portfolioDividendNote =>
      'ನಿರೀಕ್ಷಿತ ವಾರ್ಷಿಕ ಡಿವಿಡೆಂಡ್ ಕಳೆದ 12 ತಿಂಗಳಲ್ಲಿ ಪಾವತಿಸಿದ ಡಿವಿಡೆಂಡ್‌ಗಳನ್ನು ಆಧರಿಸಿದೆ; ಭವಿಷ್ಯದ ಪಾವತಿಗಳಿಗೆ ಖಾತರಿ ಇಲ್ಲ.';

  @override
  String positionDividend(String amount) {
    return 'ಡಿವಿಡೆಂಡ್: ವರ್ಷಕ್ಕೆ $amount';
  }

  @override
  String get chartAvgCost => 'ನಿಮ್ಮ ಸರಾಸರಿ';

  @override
  String get chartAlertLevel => 'ಅಲರ್ಟ್';

  @override
  String get marketsToday => 'ಇಂದಿನ ಮಾರುಕಟ್ಟೆಗಳು';

  @override
  String get notesTitle => 'ನನ್ನ ಟಿಪ್ಪಣಿಗಳು';

  @override
  String get notesHint =>
      'ನೀವು ಇದನ್ನು ಏಕೆ ಖರೀದಿಸಿದಿರಿ, ಯಾವುದರ ಮೇಲೆ ಕಣ್ಣಿಟ್ಟಿದ್ದೀರಿ, ಏನಾದರೆ ಮಾರುತ್ತೀರಿ?';

  @override
  String get notesInfo =>
      'ಈ ಸಾಧನದಲ್ಲಿ ಮತ್ತು ನೀವು ಸೈನ್ ಇನ್ ಆಗಿದ್ದರೆ ನಿಮ್ಮ ಖಾತೆಯಲ್ಲಿ ಸಂಗ್ರಹಿಸಲಾಗಿದೆ. AI ವಿಶ್ಲೇಷಣೆ ನಿಮ್ಮ ಟಿಪ್ಪಣಿಗಳನ್ನು ಪರಿಗಣಿಸುತ್ತದೆ.';

  @override
  String notesSaved(String date) {
    return 'ಉಳಿಸಲಾಗಿದೆ: $date';
  }

  @override
  String get peersTitle => 'ಇದೇ ರೀತಿಯ ಕಂಪನಿಗಳು';

  @override
  String get portfolioExport => 'CSV ಆಗಿ ರಫ್ತು ಮಾಡಿ';

  @override
  String get portfolioImport => 'CSV ಯಿಂದ ಆಮದು ಮಾಡಿ';

  @override
  String get portfolioImportHint =>
      'ಪ್ರತಿ ಸಾಲಿಗೆ ಒಂದು ಖರೀದಿಯನ್ನು ಅಂಟಿಸಿ: ಟಿಕರ್ ಚಿಹ್ನೆ, ಪ್ರಮಾಣ, ಬೆಲೆ, ಕರೆನ್ಸಿ, ದಿನಾಂಕ (YYYY-MM-DD). ಕಾಲಮ್‌ಗಳನ್ನು ಅಲ್ಪವಿರಾಮ, ಅರ್ಧವಿರಾಮ ಅಥವಾ ಟ್ಯಾಬ್‌ಗಳಿಂದ ಬೇರ್ಪಡಿಸಬಹುದು; ಶೀರ್ಷಿಕೆ ಸಾಲು ಐಚ್ಛಿಕ.';

  @override
  String get portfolioImportButton => 'ಆಮದು ಮಾಡಿ';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಖರೀದಿಗಳನ್ನು ಸೇರಿಸಲಾಗಿದೆ',
      one: '1 ಖರೀದಿ ಸೇರಿಸಲಾಗಿದೆ',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಸಾಲುಗಳನ್ನು ಬಿಟ್ಟುಬಿಡಲಾಗಿದೆ',
      one: '1 ಸಾಲು ಬಿಟ್ಟುಬಿಡಲಾಗಿದೆ',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'ಪೋರ್ಟ್‌ಫೋಲಿಯೊ, ಮೆಚ್ಚಿನವುಗಳು, ಬೆಲೆ ಅಲರ್ಟ್‌ಗಳು ಮತ್ತು ಟಿಪ್ಪಣಿಗಳು ನಿಮ್ಮ ಎಲ್ಲಾ ಸಾಧನಗಳಲ್ಲಿ ಸಿಂಕ್ ಆಗುತ್ತವೆ.';

  @override
  String syncLast(String time) {
    return 'ಕೊನೆಯ ಸಿಂಕ್: $time';
  }

  @override
  String get syncNow => 'ಈಗ ಸಿಂಕ್ ಮಾಡಿ';

  @override
  String get syncFailed =>
      'ಸಿಂಕ್ ವಿಫಲವಾಗಿದೆ. ಇದು ಸ್ವಯಂಚಾಲಿತವಾಗಿ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸುತ್ತದೆ.';

  @override
  String get alertEmailTitle => 'ಅಲರ್ಟ್ ಟ್ರಿಗರ್ ಆದಾಗ ಇಮೇಲ್';

  @override
  String get alertEmailOn =>
      'ನಾವು ಕೆಲವು ನಿಮಿಷಗಳಿಗೊಮ್ಮೆ ನಿಮ್ಮ ಅಲರ್ಟ್‌ಗಳನ್ನು ಪರಿಶೀಲಿಸಿ, ಆ್ಯಪ್ ಮುಚ್ಚಿದ್ದರೂ ನಿಮಗೆ ಇಮೇಲ್ ಕಳುಹಿಸುತ್ತೇವೆ.';

  @override
  String get alertEmailSignIn =>
      'ಆ್ಯಪ್ ಮುಚ್ಚಿದ್ದರೂ ಇಮೇಲ್ ಮೂಲಕ ಅಲರ್ಟ್‌ಗಳನ್ನು ಪಡೆಯಲು ಸೆಟ್ಟಿಂಗ್‌ಗಳಲ್ಲಿ ನಿಮ್ಮ ಇಮೇಲ್‌ನೊಂದಿಗೆ ಸೈನ್ ಇನ್ ಮಾಡಿ.';

  @override
  String get portfolioHistory => 'ಸಮಯದೊಂದಿಗೆ ಮೌಲ್ಯ';

  @override
  String get portfolioReviewTitle => 'AI ಪೋರ್ಟ್‌ಫೋಲಿಯೊ ವಿಮರ್ಶೆ';

  @override
  String get portfolioReviewIntro =>
      'AI ನಿಮ್ಮ ಸಂಪೂರ್ಣ ಪೋರ್ಟ್‌ಫೋಲಿಯೊವನ್ನು ಪರಿಶೀಲಿಸುತ್ತದೆ: ಕೇಂದ್ರೀಕರಣ, ವಲಯ ಮತ್ತು ಕರೆನ್ಸಿ ಅಪಾಯ, ನಿಮ್ಮ ಷೇರುಗಳ ಸಾಮಾನ್ಯ ಅಪಾಯಗಳು ಮತ್ತು ಲಾಭಾಂಶ. 1 ವಿಶ್ಲೇಷಣೆ ಬಳಸುತ್ತದೆ.';

  @override
  String get portfolioReviewButton => 'ನನ್ನ ಪೋರ್ಟ್‌ಫೋಲಿಯೊ ವಿಮರ್ಶಿಸಿ';

  @override
  String get portfolioReviewAgain => 'ಮತ್ತೆ ವಿಮರ್ಶಿಸಿ';

  @override
  String get portfolioReviewWorking =>
      'ನಿಮ್ಮ ಪೋರ್ಟ್‌ಫೋಲಿಯೊ ವಿಮರ್ಶಿಸಲಾಗುತ್ತಿದೆ…';

  @override
  String get digestTitle => 'ಇಮೇಲ್ ಮೂಲಕ ವಾರದ ಸಾರಾಂಶ';

  @override
  String get digestHint =>
      'ಪ್ರತಿ ಸೋಮವಾರ: ಕಳೆದ ವಾರ ನಿಮ್ಮ ಮೆಚ್ಚಿನವುಗಳು ಮತ್ತು ಪೋರ್ಟ್‌ಫೋಲಿಯೊ ಹೇಗೆ ಚಲಿಸಿದವು ಮತ್ತು ಅವುಗಳ ಮುಂಬರುವ ಫಲಿತಾಂಶ ದಿನಾಂಕಗಳು.';

  @override
  String get benchmarkTitle => 'S&P 500 ಜೊತೆ ಹೋಲಿಕೆ';

  @override
  String get benchmarkTitleIndex => 'ಸೂಚ್ಯಂಕದ ಜೊತೆ ಹೋಲಿಕೆ';

  @override
  String get benchmarkHintIndex =>
      'ಪ್ರತಿ ಖರೀದಿಯ ಮೊತ್ತವನ್ನು ಅದೇ ದಿನ ಆಯ್ಕೆ ಮಾಡಿದ ಸೂಚ್ಯಂಕವನ್ನು ಅನುಸರಿಸುವ ಫಂಡ್‌ನಲ್ಲಿ ಹೂಡಿಕೆ ಮಾಡಿದ್ದರೆ ಎಂಬಂತೆ. ಲಾಭಾಂಶ ಸೇರಿಲ್ಲ; ಹಿಂದಿನ ಆದಾಯವು ಭವಿಷ್ಯದ ಆದಾಯವನ್ನು ಸೂಚಿಸುವುದಿಲ್ಲ.';

  @override
  String get benchmarkYours => 'ನಿಮ್ಮ ಖರೀದಿಗಳು';

  @override
  String benchmarkAhead(String points) {
    return 'ಸೂಚ್ಯಂಕಕ್ಕಿಂತ $points ಶೇಕಡಾ ಅಂಕಗಳು ಉತ್ತಮ';
  }

  @override
  String benchmarkBehind(String points) {
    return 'ಸೂಚ್ಯಂಕಕ್ಕಿಂತ $points ಶೇಕಡಾ ಅಂಕಗಳು ಹಿಂದೆ';
  }

  @override
  String get portfolioSell => 'ಮಾರಾಟ ಮಾಡಿ';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbol ಮಾರಾಟ ಮಾಡಿ';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'ಪ್ರತಿ ಷೇರಿನ ಮಾರಾಟ ಬೆಲೆ ($currency)';
  }

  @override
  String get portfolioSellDate => 'ಮಾರಾಟ ದಿನಾಂಕ';

  @override
  String get portfolioSellAll => 'ಎಲ್ಲಾ';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'ನಿಮ್ಮ ಬಳಿ $quantity ಇವೆ';
  }

  @override
  String get portfolioSold => 'ಮಾರಾಟ';

  @override
  String get portfolioRealized => 'ವಾಸ್ತವಿಕ';

  @override
  String get portfolioClosed => 'ಮುಚ್ಚಿದ ಪೊಸಿಷನ್‌ಗಳು';

  @override
  String get portfolioClosedNote => 'ಎಲ್ಲಾ ಷೇರುಗಳು ಮಾರಾಟವಾಗಿವೆ';

  @override
  String get portfolioTransactions => 'ವಹಿವಾಟುಗಳು';

  @override
  String get portfolioRealizedByYear => 'ವರ್ಷವಾರು ವಾಸ್ತವಿಕ ಲಾಭ';

  @override
  String get portfolioRealizedHint =>
      'ಮಾರಾಟಗಳನ್ನು ಮೊದಲು ನಿಮ್ಮ ಅತ್ಯಂತ ಹಳೆಯ ಖರೀದಿಗಳೊಂದಿಗೆ ಹೊಂದಿಸಲಾಗುತ್ತದೆ (FIFO), ಇಂದಿನ ವಿನಿಮಯ ದರದಲ್ಲಿ ಪರಿವರ್ತಿಸಲಾಗಿದೆ. ತೆರಿಗೆ ರಿಟರ್ನ್‌ಗಾಗಿ ನಿಮ್ಮ ಬ್ರೋಕರ್‌ನ ಸ್ಟೇಟ್‌ಮೆಂಟ್ ಬಳಸಿ.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'ಈ ವಿಶ್ಲೇಷಣೆಯ ನಂತರ ಹೊಸ ತ್ರೈಮಾಸಿಕ ಫಲಿತಾಂಶಗಳು ಪ್ರಕಟವಾಗಿವೆ ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'ಹೊಸ ಫಲಿತಾಂಶಗಳು';

  @override
  String get portfolioImportBrokers =>
      'Revolut, Trading 212, Interactive Brokers, DEGIRO, Schwab, Fidelity ಮತ್ತು Robinhood ನ ರಫ್ತುಗಳನ್ನೂ ಮಾರಾಟಗಳು ಮತ್ತು ಡಿವಿಡೆಂಡ್ (ಮೂಲದಲ್ಲಿ ಕಡಿತವಾದ ತೆರಿಗೆ ಕಳೆದು) ಸಹಿತ ಗುರುತಿಸಲಾಗುತ್ತದೆ; ಠೇವಣಿಗಳನ್ನು ಬಿಟ್ಟುಬಿಡಲಾಗುತ್ತದೆ.';

  @override
  String get portfolioImportFile => 'ಫೈಲ್ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String offlineBanner(String time) {
    return 'ಸಂಪರ್ಕವಿಲ್ಲ – ಕೊನೆಯದಾಗಿ ಉಳಿಸಿದ ಡೇಟಾವನ್ನು ತೋರಿಸಲಾಗುತ್ತಿದೆ ($time).';
  }

  @override
  String get glossMarketCap =>
      'ಷೇರು ಮಾರುಕಟ್ಟೆಯಲ್ಲಿ ಇಡೀ ಕಂಪನಿಯ ಮೌಲ್ಯ: ಷೇರಿನ ಬೆಲೆ × ಷೇರುಗಳ ಸಂಖ್ಯೆ.';

  @override
  String get glossSharesOutstanding =>
      'ಕಂಪನಿ ಎಷ್ಟು ಷೇರುಗಳನ್ನು ಹೊರಡಿಸಿದೆ. ಇದು ಹೆಚ್ಚಾದರೆ, ಪ್ರತಿ ಷೇರಿನ ಪಾಲು ಚಿಕ್ಕದಾಗುತ್ತದೆ; ಬೈಬ್ಯಾಕ್‌ಗಳು ಇದನ್ನು ಕಡಿಮೆ ಮಾಡುತ್ತವೆ.';

  @override
  String get glossPeTrailing =>
      'ಬೆಲೆ ÷ ಕಳೆದ 12 ತಿಂಗಳ ಪ್ರತಿ ಷೇರಿನ ಗಳಿಕೆ: ಈಗಿನ ಲಾಭದ ಎಷ್ಟು ವರ್ಷಗಳಿಗೆ ನೀವು ಪಾವತಿಸುತ್ತಿದ್ದೀರಿ. ಕಡಿಮೆ ಎಂದರೆ ಅಗ್ಗ, ಆದರೆ ವೇಗವಾಗಿ ಬೆಳೆಯುವ ಕಂಪನಿಗಳ P/E ಸಾಮಾನ್ಯವಾಗಿ ಹೆಚ್ಚಿರುತ್ತದೆ.';

  @override
  String get glossPeForward =>
      'P/E ನಂತೆಯೇ, ಆದರೆ ಮುಂದಿನ 12 ತಿಂಗಳಿಗೆ ವಿಶ್ಲೇಷಕರು ನಿರೀಕ್ಷಿಸುವ ಲಾಭದೊಂದಿಗೆ. ಟ್ರೇಲಿಂಗ್ P/E ಗಿಂತ ಕಡಿಮೆ ಇದ್ದರೆ ಲಾಭ ಬೆಳೆಯುವ ನಿರೀಕ್ಷೆ ಇದೆ.';

  @override
  String get glossPb =>
      'ಬೆಲೆ ÷ ಪ್ರತಿ ಷೇರಿನ ಪುಸ್ತಕ ಮೌಲ್ಯ (ಆಸ್ತಿಗಳು ಕಳೆದು ಸಾಲಗಳು). ಸುಮಾರು 1 ಎಂದರೆ ಕಾಗದದ ಮೇಲೆ ಕಂಪನಿಗೆ ಇರುವಷ್ಟೇ ಮೌಲ್ಯವನ್ನು ಮಾರುಕಟ್ಟೆ ನೀಡುತ್ತದೆ.';

  @override
  String get glossPs =>
      'ಮಾರುಕಟ್ಟೆ ಮೌಲ್ಯ ÷ ವಾರ್ಷಿಕ ಆದಾಯ. ಇನ್ನೂ ಕಡಿಮೆ ಅಥವಾ ಯಾವುದೇ ಲಾಭವಿಲ್ಲದ ಕಂಪನಿಗಳಿಗೆ ಉಪಯುಕ್ತ; ಒಂದೇ ಉದ್ಯಮದೊಳಗೆ ಹೋಲಿಸಿ.';

  @override
  String get glossEvToFcf =>
      'ಸಾಲ ಸೇರಿದಂತೆ ಕಂಪನಿಯ ಮೌಲ್ಯ (EV) ÷ ಹೂಡಿಕೆಗಳ ನಂತರ ಒಂದು ವರ್ಷದಲ್ಲಿ ಅದು ಗಳಿಸುವ ನಗದು. ಕಡಿಮೆ ಎಂದರೆ ಬೆಲೆಗೆ ಹೆಚ್ಚು ನಗದು ಸಿಗುತ್ತದೆ.';

  @override
  String get glossPeg =>
      'P/E ÷ ನಿರೀಕ್ಷಿತ ವಾರ್ಷಿಕ ಲಾಭ ಬೆಳವಣಿಗೆ (%). ಸುಮಾರು 1 ಅನ್ನು ಸಾಮಾನ್ಯವಾಗಿ ನ್ಯಾಯಯುತ ಎನ್ನಲಾಗುತ್ತದೆ; ಇದು P/E ಅನ್ನು ಬೆಳವಣಿಗೆಯ ಬೆಳಕಿನಲ್ಲಿ ನೋಡುತ್ತದೆ.';

  @override
  String get glossEps =>
      'ಕಳೆದ 12 ತಿಂಗಳಲ್ಲಿ ಪ್ರತಿ ಷೇರಿನ ಲಾಭ. ವರ್ಷಗಳಲ್ಲಿ ಏರುತ್ತಿರುವ EPS ಆರೋಗ್ಯಕರ ಕಂಪನಿಯ ಅತ್ಯಂತ ಬಲವಾದ ಸೂಚನೆಗಳಲ್ಲಿ ಒಂದು.';

  @override
  String get glossBeta =>
      'ಷೇರು ಮಾರುಕಟ್ಟೆಯೊಂದಿಗೆ ಎಷ್ಟು ಏರಿಳಿಯುತ್ತದೆ: 1 = ಮಾರುಕಟ್ಟೆಯಂತೆ, 1.5 = ಸುಮಾರು 50% ದೊಡ್ಡ ಏರಿಳಿತಗಳು, 1 ಕ್ಕಿಂತ ಕಡಿಮೆ = ಹೆಚ್ಚು ಶಾಂತ.';

  @override
  String get glossRevenueTtm =>
      'ಕಳೆದ 12 ತಿಂಗಳ ಒಟ್ಟು ಮಾರಾಟ, ಯಾವುದೇ ವೆಚ್ಚಗಳ ಮೊದಲು.';

  @override
  String get glossNetIncomeTtm =>
      'ಕಳೆದ 12 ತಿಂಗಳಲ್ಲಿ ಎಲ್ಲಾ ವೆಚ್ಚಗಳು, ಬಡ್ಡಿ ಮತ್ತು ತೆರಿಗೆಗಳ ನಂತರ ಉಳಿದ ಲಾಭ.';

  @override
  String get glossGrossMargin =>
      'ಉತ್ಪನ್ನಗಳ ನೇರ ವೆಚ್ಚದ ನಂತರ ಉಳಿಯುವ ಆದಾಯದ ಪಾಲು. ಹೆಚ್ಚಿನ ಮಾರ್ಜಿನ್ ಸಾಮಾನ್ಯವಾಗಿ ಬೆಲೆ ನಿಗದಿಯ ಶಕ್ತಿಯನ್ನು ತೋರಿಸುತ್ತದೆ.';

  @override
  String get glossOperatingMargin =>
      'ವ್ಯವಹಾರ ನಡೆಸಿದ ನಂತರ (ಸಂಬಳ, ಬಾಡಿಗೆ, ಮಾರ್ಕೆಟಿಂಗ್), ಬಡ್ಡಿ ಮತ್ತು ತೆರಿಗೆಗಳ ಮೊದಲು ಉಳಿಯುವ ಆದಾಯದ ಪಾಲು.';

  @override
  String get glossNetMargin =>
      'ಅಂತಿಮ ಲಾಭವಾಗಿ ಉಳಿಯುವ ಆದಾಯದ ಪಾಲು. 20% ಎಂದರೆ ಪ್ರತಿ 100 ಮಾರಾಟದಲ್ಲಿ 20 ಲಾಭ.';

  @override
  String get glossRoe =>
      'ಈಕ್ವಿಟಿ ಮೇಲಿನ ಪ್ರತಿಫಲ: ವಾರ್ಷಿಕ ಲಾಭ ÷ ಮಾಲೀಕರ ಬಂಡವಾಳ. ಆಡಳಿತ ಮಂಡಳಿ ಷೇರುದಾರರ ಹಣವನ್ನು ಎಷ್ಟು ಚೆನ್ನಾಗಿ ಬಳಸುತ್ತದೆ ಎಂದು ತೋರಿಸುತ್ತದೆ; ಸುಮಾರು 15% ಕ್ಕಿಂತ ಹೆಚ್ಚು ಬಲವಾಗಿದೆ.';

  @override
  String get glossRoa =>
      'ಆಸ್ತಿಗಳ ಮೇಲಿನ ಪ್ರತಿಫಲ: ವಾರ್ಷಿಕ ಲಾಭ ÷ ಕಂಪನಿಯ ಎಲ್ಲಾ ಆಸ್ತಿಗಳು. ಒಂದೇ ಉದ್ಯಮದೊಳಗೆ ಹೋಲಿಸಿ.';

  @override
  String get glossDebtToEquity =>
      'ಸಾಲ ÷ ಮಾಲೀಕರ ಬಂಡವಾಳ. ಹೆಚ್ಚು ಎಂದರೆ ಹೆಚ್ಚು ಸಾಲದ ಹಣ: ಬಡ್ಡಿ ದರ ಏರಿದಾಗ ಅಥವಾ ವ್ಯವಹಾರ ನಿಧಾನವಾದಾಗ ಹೆಚ್ಚು ಅಪಾಯ.';

  @override
  String get glossCurrentRatio =>
      'ಅಲ್ಪಾವಧಿ ಆಸ್ತಿಗಳು ÷ ಒಂದು ವರ್ಷದೊಳಗೆ ಪಾವತಿಸಬೇಕಾದ ಬಿಲ್‌ಗಳು. 1 ಕ್ಕಿಂತ ಹೆಚ್ಚು ಎಂದರೆ ಕಂಪನಿ ಹತ್ತಿರದ ಬಿಲ್‌ಗಳನ್ನು ಭರಿಸಬಲ್ಲದು.';

  @override
  String get glossRevenueGrowth =>
      'ಒಂದು ವರ್ಷದ ಹಿಂದಿನದಕ್ಕೆ ಹೋಲಿಸಿದರೆ ಆದಾಯ ಎಷ್ಟು ಬೆಳೆದಿದೆ.';

  @override
  String get glossEpsGrowth =>
      'ಒಂದು ವರ್ಷದ ಹಿಂದಿನದಕ್ಕೆ ಹೋಲಿಸಿದರೆ ಪ್ರತಿ ಷೇರಿನ ಲಾಭ ಎಷ್ಟು ಬೆಳೆದಿದೆ.';

  @override
  String get glossDividendYield =>
      'ವಾರ್ಷಿಕ ಡಿವಿಡೆಂಡ್ ÷ ಷೇರಿನ ಬೆಲೆ: ನೀವು ಪಾವತಿಸಿದ ಮೊತ್ತದ ಶೇಕಡಾವಾರಾಗಿ ಪ್ರತಿ ವರ್ಷ ಸಿಗುವ ನಗದು ಆದಾಯ.';

  @override
  String get glossDividendPerShare =>
      'ಕಳೆದ ವರ್ಷ ಒಂದು ಷೇರಿಗೆ ಪಾವತಿಸಿದ ಡಿವಿಡೆಂಡ್.';

  @override
  String get glossPayoutRatio =>
      'ಲಾಭದಲ್ಲಿ ಡಿವಿಡೆಂಡ್ ಆಗಿ ಪಾವತಿಸುವ ಪಾಲು. 100% ಕ್ಕಿಂತ ಹೆಚ್ಚಾದರೆ ಕಂಪನಿ ಗಳಿಸುವುದಕ್ಕಿಂತ ಹೆಚ್ಚು ಪಾವತಿಸುತ್ತದೆ, ಇದು ಅಪರೂಪವಾಗಿ ಮುಂದುವರಿಯುತ್ತದೆ.';

  @override
  String get portfolioBeta => 'ಪೋರ್ಟ್‌ಫೋಲಿಯೊ ಬೀಟಾ';

  @override
  String get glossPortfolioBeta =>
      'ನಿಮ್ಮ ಷೇರುಗಳ ಬೀಟಾ, ಅವುಗಳ ಮೌಲ್ಯದ ಪ್ರಕಾರ ತೂಕ ನೀಡಲಾಗಿದೆ: ಮಾರುಕಟ್ಟೆ 1% ಚಲಿಸಿದಾಗ ನಿಮ್ಮ ಷೇರುಗಳು ಸುಮಾರು ಎಷ್ಟು ಶೇಕಡಾ ಚಲಿಸುತ್ತವೆ. 1 ಕ್ಕಿಂತ ಹೆಚ್ಚಿದ್ದರೆ ಅವು ಮಾರುಕಟ್ಟೆಗಿಂತ ಹೆಚ್ಚು ಏರಿಳಿಯುತ್ತವೆ, 1 ಕ್ಕಿಂತ ಕಡಿಮೆ ಇದ್ದರೆ ಕಡಿಮೆ. ನಗದು ಸೇರಿಲ್ಲ.';

  @override
  String get portfolioTop3 => 'ಟಾಪ್ 3 ಪೊಸಿಷನ್‌ಗಳು';

  @override
  String get glossPortfolioTop3 =>
      'ನಿಮ್ಮ ಷೇರುಗಳ ಮೌಲ್ಯದ ಎಷ್ಟು ಭಾಗ ನಿಮ್ಮ ಮೂರು ಅತಿದೊಡ್ಡ ಪೊಸಿಷನ್‌ಗಳಲ್ಲಿದೆ. ಇದು ಎಷ್ಟು ಹೆಚ್ಚಿದ್ದರೆ, ಒಂದೇ ಕಂಪನಿಯ ಕೆಟ್ಟ ಸುದ್ದಿ ಇಡೀ ಪೋರ್ಟ್‌ಫೋಲಿಯೊಗೆ ಅಷ್ಟು ಹೆಚ್ಚು ಹಾನಿ ಮಾಡಬಹುದು.';

  @override
  String get glossDividendGrowth5y =>
      'ಕಳೆದ ಐದು ವರ್ಷಗಳಲ್ಲಿ ಪ್ರತಿ ಷೇರಿಗೆ ಡಿವಿಡೆಂಡ್ ವರ್ಷಕ್ಕೆ ಸರಾಸರಿ ಎಷ್ಟು ಬೆಳೆದಿದೆ ಎಂಬುದು. ಸ್ಥಿರ ಬೆಳವಣಿಗೆ ಸಾಮಾನ್ಯವಾಗಿ ಕಂಪನಿಗೆ ತನ್ನ ನಗದು ಹರಿವಿನ ಮೇಲೆ ವಿಶ್ವಾಸವಿದೆ ಎಂದು ಸೂಚಿಸುತ್ತದೆ; ಕಡಿತವು ಹಲವು ಬಾರಿ ಎಚ್ಚರಿಕೆಯ ಸಂಕೇತ.';

  @override
  String get glossYieldOnCost =>
      'ಕಳೆದ 12 ತಿಂಗಳಲ್ಲಿ ಪಡೆದ ಡಿವಿಡೆಂಡ್‌ಗಳನ್ನು ನೀವು ಇನ್ನೂ ಹೊಂದಿರುವ ಷೇರುಗಳಿಗೆ ಪಾವತಿಸಿದ ಮೊತ್ತದಿಂದ ಭಾಗಿಸಿದ್ದು. ಡಿವಿಡೆಂಡ್ ಯೀಲ್ಡ್‌ಗಿಂತ ಭಿನ್ನವಾಗಿ, ಇದನ್ನು ಇಂದಿನ ಬೆಲೆಗೆ ಬದಲು ನಿಮ್ಮ ಸ್ವಂತ ಖರೀದಿ ಬೆಲೆಯ ಮೇಲೆ ಅಳೆಯಲಾಗುತ್ತದೆ.';

  @override
  String get glossTitle => 'ಇದರ ಅರ್ಥವೇನು?';

  @override
  String get watchNewsTitle => 'ನಿಮ್ಮ ಷೇರುಗಳ ಸುದ್ದಿ';

  @override
  String get undo => 'ರದ್ದುಗೊಳಿಸಿ';

  @override
  String get watchSort => 'ವಿಂಗಡಿಸಿ';

  @override
  String get watchSortOwn => 'ನನ್ನ ಕ್ರಮ';

  @override
  String get watchSortGainers => 'ಅತಿ ಹೆಚ್ಚು ಏರಿಕೆ ಮೊದಲು';

  @override
  String get watchSortLosers => 'ಅತಿ ಹೆಚ್ಚು ಇಳಿಕೆ ಮೊದಲು';

  @override
  String get watchSortName => 'ಟಿಕರ್ ಪ್ರಕಾರ (A–Z)';

  @override
  String get watchHint =>
      'ಕ್ರಮ ಬದಲಿಸಲು ಹ್ಯಾಂಡಲ್ ಎಳೆಯಿರಿ, ತೆಗೆದುಹಾಕಲು ಎಡಕ್ಕೆ ಸ್ವೈಪ್ ಮಾಡಿ. ರೇಖೆಯು ಕಳೆದ 30 ದಿನಗಳನ್ನು ತೋರಿಸುತ್ತದೆ.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: ನಿಮ್ಮ ವಿಶ್ಲೇಷಣೆ ಸಿದ್ಧವಾಗಿದೆ.';
  }

  @override
  String alertFromCost(String price) {
    return 'ನಿಮ್ಮ ಸರಾಸರಿ ಖರೀದಿ ಬೆಲೆಯಿಂದ ($price):';
  }

  @override
  String get briefTitle => 'ಇಂದು ನಿಮ್ಮ ಷೇರುಗಳೊಂದಿಗೆ';

  @override
  String get briefButton => 'ಇಂದಿನ ಸಾರಾಂಶ';

  @override
  String get briefHint =>
      'ನಿಮ್ಮ ಪೋರ್ಟ್‌ಫೋಲಿಯೊ ಮತ್ತು ಮೆಚ್ಚಿನವು ಇಂದು ಹೇಗೆ ಚಲಿಸಿದವು ಮತ್ತು ಇತ್ತೀಚಿನ ಸುದ್ದಿಗಳು ಅವುಗಳ ಬಗ್ಗೆ ಏನು ಹೇಳುತ್ತವೆ ಎಂಬುದರ ಸಣ್ಣ AI ಸಾರಾಂಶ. ಯಾವುದೇ ವಿಶ್ಲೇಷಣೆ ಬಳಸುವುದಿಲ್ಲ.';

  @override
  String get briefRefresh => 'ನವೀಕರಿಸಿ';

  @override
  String get sectionEarnings => 'ತ್ರೈಮಾಸಿಕ ಫಲಿತಾಂಶಗಳು';

  @override
  String earningsNext(String date) {
    return 'ಮುಂದಿನ ವರದಿ: $date';
  }

  @override
  String get earningsExpected => 'ನಿರೀಕ್ಷಿತ EPS';

  @override
  String get earningsReported => 'ವರದಿಯಾದ EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'ಕಳೆದ $total ತ್ರೈಮಾಸಿಕಗಳ ಪೈಕಿ $beats ರಲ್ಲಿ EPS ನಿರೀಕ್ಷೆಗೆ ಸಮ ಅಥವಾ ಹೆಚ್ಚು',
      one: '1 ತ್ರೈಮಾಸಿಕದ ಪೈಕಿ $beats ರಲ್ಲಿ EPS ನಿರೀಕ್ಷೆಗೆ ಸಮ ಅಥವಾ ಹೆಚ್ಚು',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol ನಾಳೆ ತ್ರೈಮಾಸಿಕ ಫಲಿತಾಂಶಗಳನ್ನು ಪ್ರಕಟಿಸುತ್ತದೆ';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol ಇಂದು ತ್ರೈಮಾಸಿಕ ಫಲಿತಾಂಶಗಳನ್ನು ಪ್ರಕಟಿಸುತ್ತದೆ';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return '$symbol ಡಿವಿಡೆಂಡ್ ಇಂದು ನಿರೀಕ್ಷಿತ';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'ಸುಮಾರು $amount. ಬಂದ ನಂತರ ಅದನ್ನು ನಿಮ್ಮ ಪೋರ್ಟ್‌ಫೋಲಿಯೊದಲ್ಲಿ ದಾಖಲಿಸಿ.';
  }

  @override
  String get dividendRemindersTitle => 'ಡಿವಿಡೆಂಡ್ ಜ್ಞಾಪನೆಗಳು';

  @override
  String get dividendRemindersSubtitle =>
      'ನೀವು ದಾಖಲಿಸಿದ ಪಾವತಿಗಳ ಲಯದ ಆಧಾರದಲ್ಲಿ ಡಿವಿಡೆಂಡ್ ನಿರೀಕ್ಷಿತವಾದ ದಿನ ಅಧಿಸೂಚನೆ, ಇದರಿಂದ ನೀವು ಅದನ್ನು ದಾಖಲಿಸಬಹುದು';

  @override
  String get earningsRemindersTitle => 'ಫಲಿತಾಂಶ ಜ್ಞಾಪನೆಗಳು';

  @override
  String get earningsRemindersSubtitle =>
      'ನಿಮ್ಮ ಮೆಚ್ಚಿನವುಗಳು ಅಥವಾ ಪೋರ್ಟ್‌ಫೋಲಿಯೊದ ಷೇರುಗಳು ತ್ರೈಮಾಸಿಕ ಫಲಿತಾಂಶಗಳನ್ನು ಪ್ರಕಟಿಸುವ ಹಿಂದಿನ ದಿನ ಅಧಿಸೂಚನೆ';

  @override
  String addAllToFavorites(int count) {
    return 'ಎಲ್ಲವನ್ನೂ ಮೆಚ್ಚಿನವುಗಳಿಗೆ ಸೇರಿಸಿ ($count)';
  }

  @override
  String get portfolioImportPhoto => 'ಸ್ಕ್ರೀನ್‌ಶಾಟ್‌ನಿಂದ ಆಮದು ಮಾಡಿ';

  @override
  String get holdingsReading => 'ನಿಮ್ಮ ಪೊಸಿಷನ್‌ಗಳನ್ನು ಓದಲಾಗುತ್ತಿದೆ…';

  @override
  String get holdingsReviewTitle => 'ಕಂಡುಬಂದ ಪೊಸಿಷನ್‌ಗಳು';

  @override
  String get holdingsReviewHint =>
      'ಸೇರಿಸುವ ಮೊದಲು ಸಂಖ್ಯೆಗಳನ್ನು ಪರಿಶೀಲಿಸಿ. ಬೆಲೆಯು ಪ್ರತಿ ಷೇರಿನ ನಿಮ್ಮ ಸರಾಸರಿ ಖರೀದಿ ಬೆಲೆ, ಇಂದಿನ ಬೆಲೆಯಲ್ಲ.';

  @override
  String get holdingsNoPrice => 'ಚಿತ್ರದಲ್ಲಿ ಸರಾಸರಿ ಖರೀದಿ ಬೆಲೆ ಇಲ್ಲ';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಪೊಸಿಷನ್‌ಗಳನ್ನು ಸೇರಿಸಿ',
      one: '1 ಪೊಸಿಷನ್ ಸೇರಿಸಿ',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'ಈ ಚಿತ್ರದಲ್ಲಿ ಯಾವುದೇ ಷೇರು ಪೊಸಿಷನ್‌ಗಳು ಕಂಡುಬಂದಿಲ್ಲ. ನಿಮ್ಮ ಬ್ರೋಕರ್‌ನ ಪೊಸಿಷನ್‌ಗಳು ಅಥವಾ ಹೋಲ್ಡಿಂಗ್ಸ್ ಪುಟದ ಸ್ಕ್ರೀನ್‌ಶಾಟ್ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get week52Range => '52 ವಾರಗಳ ವ್ಯಾಪ್ತಿ';

  @override
  String week52BelowHigh(String percent) {
    return '52 ವಾರಗಳ ಗರಿಷ್ಠಕ್ಕಿಂತ $percent ಕಡಿಮೆ';
  }

  @override
  String get week52AtHigh => '52 ವಾರಗಳ ಗರಿಷ್ಠದಲ್ಲಿ';

  @override
  String get alertKindTrailing => 'ಗರಿಷ್ಠದಿಂದ ಇಳಿದರೆ';

  @override
  String get alertTrailingPercent => 'ಗರಿಷ್ಠದಿಂದ ಇಳಿಕೆ (%)';

  @override
  String get alertTrailingHint =>
      'ಬೆಲೆಯನ್ನು ಮೇಲಕ್ಕೆ ಹಿಂಬಾಲಿಸುತ್ತದೆ: ಹೊಂದಿಸಿದಾಗಿನಿಂದ ತಲುಪಿದ ಅತ್ಯಧಿಕ ಮಟ್ಟದಿಂದ ಬೆಲೆ ಇಷ್ಟು ಇಳಿದಾಗ ಎಚ್ಚರಿಸುತ್ತದೆ.';

  @override
  String alertDescTrailing(String percent) {
    return 'ಗರಿಷ್ಠದಿಂದ $percent ಇಳಿಕೆ';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'ಇದುವರೆಗಿನ ಗರಿಷ್ಠ: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol ಗರಿಷ್ಠದಿಂದ $percent ಇಳಿದಿದೆ';
  }

  @override
  String get sectionInsiders => 'ಇನ್‌ಸೈಡರ್ ವಹಿವಾಟುಗಳು';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಖರೀದಿಗಳು',
      one: '1 ಖರೀದಿ',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಮಾರಾಟಗಳು',
      one: '1 ಮಾರಾಟ',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'ನಿವ್ವಳ: $shares ಷೇರುಗಳು';
  }

  @override
  String get insiderBuy => 'ಖರೀದಿ';

  @override
  String get insiderSell => 'ಮಾರಾಟ';

  @override
  String get insiderHint =>
      'ಕಳೆದ 90 ದಿನಗಳಲ್ಲಿ ಕಾರ್ಯನಿರ್ವಾಹಕರು ಮತ್ತು ನಿರ್ದೇಶಕರು ಮುಕ್ತ ಮಾರುಕಟ್ಟೆಯಲ್ಲಿ ಮಾಡಿದ ಖರೀದಿ ಮತ್ತು ಮಾರಾಟಗಳು (SEC Form 4). ಆಯ್ಕೆ (option) ಬಳಕೆ ಮತ್ತು ಷೇರು ಪುರಸ್ಕಾರಗಳನ್ನು ಎಣಿಸಲಾಗುವುದಿಲ್ಲ.';

  @override
  String get insiderNone =>
      'ಕಳೆದ 90 ದಿನಗಳಲ್ಲಿ ಮುಕ್ತ ಮಾರುಕಟ್ಟೆಯಲ್ಲಿ ಯಾವುದೇ ಇನ್‌ಸೈಡರ್ ಖರೀದಿ ಅಥವಾ ಮಾರಾಟ ನಡೆದಿಲ್ಲ.';

  @override
  String get analystTrend => 'ತಿಂಗಳಿಂದ ತಿಂಗಳಿಗೆ ಅಭಿಪ್ರಾಯಗಳು ಹೇಗೆ ಬದಲಾದವು';

  @override
  String get watchListAll => 'ಎಲ್ಲಾ';

  @override
  String get watchListNew => 'ಹೊಸ ಪಟ್ಟಿ';

  @override
  String get watchListName => 'ಪಟ್ಟಿಯ ಹೆಸರು';

  @override
  String get watchListRename => 'ಪಟ್ಟಿಯನ್ನು ಮರುಹೆಸರಿಸಿ';

  @override
  String get watchListDelete => 'ಪಟ್ಟಿಯನ್ನು ಅಳಿಸಿ';

  @override
  String get watchListAddTo => 'ಪಟ್ಟಿಗೆ ಸೇರಿಸಿ';

  @override
  String get watchListEmpty =>
      'ಈ ಪಟ್ಟಿಯಲ್ಲಿ ಇನ್ನೂ ಯಾವುದೇ ಷೇರುಗಳಿಲ್ಲ. ಸೇರಿಸಲು ಷೇರಿನ ಪಕ್ಕದಲ್ಲಿರುವ ಪಟ್ಟಿ ಬಟನ್ ಟ್ಯಾಪ್ ಮಾಡಿ.';

  @override
  String get portfolioAskTitle => 'ನಿಮ್ಮ ಪೋರ್ಟ್‌ಫೋಲಿಯೊ ಕುರಿತ ಪ್ರಶ್ನೆಗಳು';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'ಬ್ಯಾಕಪ್';

  @override
  String get backupSave => 'ಬ್ಯಾಕಪ್ ಉಳಿಸಿ';

  @override
  String get backupSaveHint =>
      'ನಿಮ್ಮ ಮೆಚ್ಚಿನವುಗಳು, ಪಟ್ಟಿಗಳು, ಪೋರ್ಟ್‌ಫೋಲಿಯೊ, ಅಲರ್ಟ್‌ಗಳು ಮತ್ತು ಟಿಪ್ಪಣಿಗಳು ಒಂದೇ ಫೈಲ್‌ನಲ್ಲಿ.';

  @override
  String get backupRestore => 'ಬ್ಯಾಕಪ್‌ನಿಂದ ಮರುಸ್ಥಾಪಿಸಿ';

  @override
  String get backupRestoreHint =>
      'ಫೈಲ್‌ನಲ್ಲಿರುವುದನ್ನು ಸೇರಿಸುತ್ತದೆ; ನಿಮ್ಮಲ್ಲಿ ಈಗ ಇರುವ ಯಾವುದೂ ಅಳಿಸಲ್ಪಡುವುದಿಲ್ಲ.';

  @override
  String get backupRestored => 'ಬ್ಯಾಕಪ್ ಮರುಸ್ಥಾಪಿಸಲಾಗಿದೆ.';

  @override
  String get backupInvalid => 'ಈ ಫೈಲ್ WhatStock ಬ್ಯಾಕಪ್ ಅಲ್ಲ.';

  @override
  String get allocationPositions => 'ಷೇರುಗಳು';

  @override
  String get allocationSectors => 'ವಲಯಗಳು';

  @override
  String get allocationCurrencies => 'ಕರೆನ್ಸಿಗಳು';

  @override
  String get allocationAccounts => 'ಖಾತೆಗಳು';

  @override
  String get compareReturn1y => '1 ವರ್ಷದ ಆದಾಯ';

  @override
  String get compareFromHigh => '52 ವಾರಗಳ ಗರಿಷ್ಠದಿಂದ ಅಂತರ';

  @override
  String get briefAutoTitle => 'ಪ್ರತಿದಿನ ಬೆಳಿಗ್ಗೆ ದೈನಂದಿನ ಸಾರಾಂಶ';

  @override
  String get briefAutoSubtitle =>
      'ಆ್ಯಪ್ ಚಾಲನೆಯಲ್ಲಿರುವಾಗ ಬೆಳಿಗ್ಗೆ 7:00ರ ನಂತರ “ಇಂದು ನಿಮ್ಮ ಷೇರುಗಳೊಂದಿಗೆ” ಸ್ವಯಂಚಾಲಿತವಾಗಿ ಸಿದ್ಧವಾಗುತ್ತದೆ; ಕಂಪ್ಯೂಟರ್‌ಗಳಲ್ಲಿ ಅಧಿಸೂಚನೆಯೊಂದು ನಿಮಗೆ ತಿಳಿಸುತ್ತದೆ. ಇದು ನಿಮ್ಮ ದೈನಂದಿನ ಪ್ರಶ್ನೆ ಮಿತಿಯನ್ನು ಬಳಸುತ್ತದೆ, ವಿಶ್ಲೇಷಣೆಯನ್ನಲ್ಲ.';

  @override
  String get targetsButton => 'ಗುರಿ ಹಂಚಿಕೆ';

  @override
  String get targetsTitle => 'ಗುರಿ ಹಂಚಿಕೆ';

  @override
  String get targetsHint =>
      'ಪೋರ್ಟ್‌ಫೋಲಿಯೊದಲ್ಲಿ ಪ್ರತಿಯೊಂದು ಷೇರಿಗೆ ಎಷ್ಟು ಪಾಲು ಇರಬೇಕು ಎಂದು ಹೊಂದಿಸಿ. ಗುರಿ ಇಲ್ಲದಿದ್ದರೆ ಕ್ಷೇತ್ರವನ್ನು ಖಾಲಿ ಬಿಡಿ. ನಂತರ ಅಲ್ಲಿಗೆ ತಲುಪಲು ಏನು ಖರೀದಿಸಬೇಕು ಅಥವಾ ಮಾರಾಟ ಮಾಡಬೇಕು ಎಂದು ಆ್ಯಪ್ ತೋರಿಸುತ್ತದೆ.';

  @override
  String targetsSum(String percent) {
    return 'ಒಟ್ಟು: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'ಖರೀದಿಸಿ ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'ಮಾರಾಟ ಮಾಡಿ ≈ $amount';
  }

  @override
  String get rebalanceOk => 'ಗುರಿಯಲ್ಲಿದೆ';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol ನಿರೀಕ್ಷಿತ EPS ಮೀರಿದೆ';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol ನಿರೀಕ್ಷಿತ EPS ತಲುಪಲಿಲ್ಲ';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'ವರದಿಯಾದ EPS $actual, ನಿರೀಕ್ಷಿತ $estimate';
  }

  @override
  String get newsExplain => 'ಇದರ ಅರ್ಥವೇನು?';

  @override
  String get watchAlertAll => 'ದೊಡ್ಡ ದೈನಂದಿನ ಏರಿಳಿತಕ್ಕೆ ಎಚ್ಚರಿಕೆ';

  @override
  String get watchAlertAllHint =>
      'ಈ ಪಟ್ಟಿಯಲ್ಲಿರುವ ಪ್ರತಿಯೊಂದು ಷೇರಿಗೂ ಬೆಲೆ ಎಚ್ಚರಿಕೆ: ಒಂದು ದಿನದಲ್ಲಿ ಇಷ್ಟು ಏರಿದರೆ ಅಥವಾ ಇಳಿದರೆ ತಿಳಿಸುತ್ತದೆ. ಈಗಾಗಲೇ ಎಚ್ಚರಿಕೆ ಇರುವ ಷೇರುಗಳಿಗೆ ಅವುಗಳದ್ದೇ ಉಳಿಯುತ್ತದೆ.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಎಚ್ಚರಿಕೆಗಳನ್ನು ಹೊಂದಿಸಲಾಗಿದೆ',
      one: '1 ಎಚ್ಚರಿಕೆ ಹೊಂದಿಸಲಾಗಿದೆ',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'ಪಡೆದ ಲಾಭವನ್ನು ರಫ್ತು ಮಾಡಿ (CSV)';

  @override
  String get portfolioAnnualReturn => 'ವಾರ್ಷಿಕ ರಿಟರ್ನ್';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / ವರ್ಷ';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'ಹಣ-ತೂಕದ ವಾರ್ಷಿಕ ರಿಟರ್ನ್ (XIRR): ನೀವು ಯಾವಾಗ ಖರೀದಿಸಿದಿರಿ ಮತ್ತು ಮಾರಾಟ ಮಾಡಿದಿರಿ ಎಂಬುದನ್ನು ಪರಿಗಣಿಸುತ್ತದೆ, ಆದ್ದರಿಂದ ನಂತರ ಸೇರಿಸಿದ ಹಣ ಅದನ್ನು ವಿರೂಪಗೊಳಿಸುವುದಿಲ್ಲ. ನಿಮ್ಮ ಮೊದಲ ಖರೀದಿಗೆ ಕನಿಷ್ಠ ಒಂದು ವರ್ಷವಾದ ನಂತರ ತೋರಿಸಲಾಗುತ್ತದೆ; ಡಿವಿಡೆಂಡ್‌ಗಳನ್ನು ಸೇರಿಸಲಾಗಿಲ್ಲ.';

  @override
  String get eventsAddToCalendar => 'ಕ್ಯಾಲೆಂಡರ್‌ಗೆ ಸೇರಿಸಿ (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'ಪೋರ್ಟ್‌ಫೋಲಿಯೊ ಎಚ್ಚರಿಕೆ';

  @override
  String get portfolioMoveAlertSubtitle =>
      'ನಿಮ್ಮ ಸಂಪೂರ್ಣ ಪೋರ್ಟ್‌ಫೋಲಿಯೊ ಒಂದೇ ದಿನದಲ್ಲಿ ಇಷ್ಟು ಏರಿಳಿತ ಕಂಡಾಗ ಅಧಿಸೂಚನೆ.';

  @override
  String get portfolioMoveAlertOff => 'ಆಫ್';

  @override
  String portfolioMoveUp(String percent) {
    return 'ಇಂದು ನಿಮ್ಮ ಪೋರ್ಟ್‌ಫೋಲಿಯೊ $percent ಏರಿದೆ';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'ಇಂದು ನಿಮ್ಮ ಪೋರ್ಟ್‌ಫೋಲಿಯೊ $percent ಇಳಿದಿದೆ';
  }

  @override
  String get whatIfTitle => 'ನೀವು ಹೂಡಿಕೆ ಮಾಡಿದ್ದರೆ?';

  @override
  String get whatIfAmount => 'ಮೊತ್ತ';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount ಹೂಡಿಕೆ (ಅವಧಿ: $period) ಇಂದು ಇಷ್ಟು ಮೌಲ್ಯದ್ದಾಗುತ್ತಿತ್ತು';
  }

  @override
  String get whatIfNote =>
      'ಷೇರಿನ ಬೆಲೆಯ ಆಧಾರದಲ್ಲಿ ಮಾತ್ರ: ಡಿವಿಡೆಂಡ್, ಶುಲ್ಕಗಳು ಮತ್ತು ತೆರಿಗೆಗಳು ಸೇರಿಲ್ಲ. ಹಿಂದಿನ ಆದಾಯ ಭವಿಷ್ಯದ ಆದಾಯವನ್ನು ಮುನ್ಸೂಚಿಸುವುದಿಲ್ಲ.';

  @override
  String get watchShare => 'ಪಟ್ಟಿಯನ್ನು ಹಂಚಿಕೊಳ್ಳಿ';

  @override
  String get watchImport => 'ಟಿಕರ್‌ಗಳನ್ನು ಸೇರಿಸಿ';

  @override
  String get watchImportHint =>
      'ಅಲ್ಪವಿರಾಮ, ಸ್ಪೇಸ್ ಅಥವಾ ಹೊಸ ಸಾಲುಗಳಿಂದ ಬೇರ್ಪಡಿಸಿದ ಟಿಕರ್‌ಗಳನ್ನು ಅಂಟಿಸಿ – ಉದಾಹರಣೆಗೆ, ಯಾರಾದರೂ ನಿಮ್ಮೊಂದಿಗೆ ಹಂಚಿಕೊಂಡ ಪಟ್ಟಿ.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಷೇರುಗಳನ್ನು ಸೇರಿಸಲಾಗಿದೆ',
      one: '1 ಷೇರು ಸೇರಿಸಲಾಗಿದೆ',
      zero: 'ಹೊಸ ಷೇರುಗಳಿಲ್ಲ',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'ಅತಿ ದೊಡ್ಡದು ಮೊದಲು';

  @override
  String get positionsSortGain => 'ಅತಿ ಹೆಚ್ಚು ಒಟ್ಟು ಆದಾಯ ಮೊದಲು';

  @override
  String get positionsSortToday => 'ಇಂದಿನ ಅತ್ಯುತ್ತಮ ಮೊದಲು';

  @override
  String get chartMyBuys => 'ನಿಮ್ಮ ಖರೀದಿಗಳು';

  @override
  String get chartMySells => 'ನಿಮ್ಮ ಮಾರಾಟಗಳು';

  @override
  String get shortcutsTitle => 'ಕೀಬೋರ್ಡ್ ಶಾರ್ಟ್‌ಕಟ್‌ಗಳು';

  @override
  String usMarketOpen(String time) {
    return 'ಯುಎಸ್ ಮಾರುಕಟ್ಟೆ ತೆರೆದಿದೆ · ಮುಚ್ಚಲು $time ಬಾಕಿ';
  }

  @override
  String usMarketClosed(String time) {
    return 'ಯುಎಸ್ ಮಾರುಕಟ್ಟೆ ಮುಚ್ಚಿದೆ · ತೆರೆಯಲು $time ಬಾಕಿ';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes ನಿಮಿ';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours ಗಂ $minutes ನಿಮಿ';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days ದಿ $hours ಗಂ';
  }

  @override
  String get dividendGoalSet => 'ಮಾಸಿಕ ಡಿವಿಡೆಂಡ್ ಗುರಿ ಹೊಂದಿಸಿ';

  @override
  String get dividendGoalTitle => 'ಮಾಸಿಕ ಡಿವಿಡೆಂಡ್ ಗುರಿ';

  @override
  String get dividendGoalAmount => 'ತಿಂಗಳಿಗೆ ಡಿವಿಡೆಂಡ್';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'ಈಗಿನ ಯೀಲ್ಡ್‌ನಲ್ಲಿ ತಿಂಗಳಿಗೆ ಸುಮಾರು $amount · $percent · ಗುರಿ: $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'ಈಗಿನ ಯೀಲ್ಡ್‌ನಲ್ಲಿ ತಿಂಗಳಿಗೆ ಸುಮಾರು $amount · ಗುರಿ ತಲುಪಿದೆ: $goal';
  }

  @override
  String get portfolioAccount => 'ಖಾತೆ';

  @override
  String get portfolioAccountHint => 'ಉದಾ. TBSZ 2026 (ಐಚ್ಛಿಕ)';

  @override
  String get portfolioAccountAdd => 'ಖಾತೆಯನ್ನು ನಮೂದಿಸಿ';

  @override
  String get portfolioAccountsAll => 'ಎಲ್ಲಾ ಖಾತೆಗಳು';

  @override
  String get portfolioAccountNote =>
      'ಈ ಖಾತೆಯ ವಹಿವಾಟುಗಳು ಮತ್ತು ಡಿವಿಡೆಂಡ್‌ಗಳು ಮಾತ್ರ. ನಗದು, ಗುರಿಗಳು ಮತ್ತು AI ವಿಮರ್ಶೆಯನ್ನು ‘ಎಲ್ಲಾ ಖಾತೆಗಳು’ ಅಡಿಯಲ್ಲಿ ತೋರಿಸಲಾಗುತ್ತದೆ.';

  @override
  String get portfolioNoAccount => 'ಖಾತೆ ಇಲ್ಲ';

  @override
  String portfolioFee(String currency) {
    return 'ಬ್ರೋಕರೇಜ್ ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'ಬ್ರೋಕರೇಜ್ ಸೇರಿಸಿ';

  @override
  String portfolioFeeRow(String amount) {
    return 'ಬ್ರೋಕರೇಜ್: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'ವಾರ್ಷಿಕ ಸಾರಾಂಶ';

  @override
  String get portfolioProceeds => 'ಮಾರಾಟದ ಆದಾಯ';

  @override
  String get portfolioCostBasis => 'ಖರೀದಿ ವೆಚ್ಚ';

  @override
  String get portfolioFeesPaid => 'ಪಾವತಿಸಿದ ಬ್ರೋಕರೇಜ್';

  @override
  String get portfolioAnnualSummaryNote =>
      'ಮೊತ್ತಗಳು ಮೂಲ ಕರೆನ್ಸಿಯಲ್ಲಿವೆ, ಪರಿವರ್ತಿಸಲಾಗಿಲ್ಲ. ಮಾರಾಟದ ಆದಾಯದಿಂದ ಮಾರಾಟದ ಬ್ರೋಕರೇಜ್ ಕಳೆಯಲಾಗಿದೆ; ಖರೀದಿ ವೆಚ್ಚದಲ್ಲಿ ಖರೀದಿಯ ಬ್ರೋಕರೇಜ್ ಸೇರಿದೆ (FIFO). ತೆರಿಗೆ ರಿಟರ್ನ್‌ಗಾಗಿ ನಿಮ್ಮ ತೆರಿಗೆ ಇಲಾಖೆ ಕೇಳುವ ವಿನಿಮಯ ದರದಲ್ಲಿ ಪರಿವರ್ತಿಸಿ.';

  @override
  String get portfolioShare => 'ಕಾರ್ಯಕ್ಷಮತೆ ಹಂಚಿಕೊಳ್ಳಿ';

  @override
  String get portfolioShareHeading => 'ನನ್ನ ಪೋರ್ಟ್‌ಫೋಲಿಯೊ';

  @override
  String get portfolioTopHoldings => 'ಅತಿದೊಡ್ಡ ಪೊಸಿಷನ್‌ಗಳು';

  @override
  String get portfolioShareNote =>
      'ಶೇಕಡಾವಾರು ಮಾತ್ರ ಹಂಚಿಕೊಳ್ಳಲಾಗುತ್ತದೆ, ಮೊತ್ತಗಳಲ್ಲ.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಪೊಸಿಷನ್‌ಗಳು',
      one: '1 ಪೊಸಿಷನ್',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'ಹೂಡಿಕೆ ಸಲಹೆಯಲ್ಲ';

  @override
  String get contributionButton => 'ಹೊಸ ಹಣ ಹೂಡಿಕೆ ಮಾಡಿ';

  @override
  String contributionAmount(String currency) {
    return 'ಹೂಡಿಕೆ ಮಾಡುವ ಮೊತ್ತ ($currency)';
  }

  @override
  String get contributionHint =>
      'ಖರೀದಿ ಮಾತ್ರ, ಮಾರಾಟವಿಲ್ಲ: ತಮ್ಮ ಗುರಿಗಿಂತ ಅತಿ ಹೆಚ್ಚು ಕೆಳಗಿರುವ ಪೊಸಿಷನ್‌ಗಳಿಗೆ ಮೊದಲು ಹಣ ಸಿಗುತ್ತದೆ.';

  @override
  String contributionShares(String shares) {
    return '≈ $shares ಷೇರುಗಳು';
  }

  @override
  String contributionMissing(String symbols) {
    return '$symbols ಗೆ ಪ್ರಸ್ತುತ ಬೆಲೆ ಲಭ್ಯವಿಲ್ಲ: ಹಂಚಿಕೆಯಿಂದ ಹೊರಗಿಡಲಾಗಿದೆ.';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'ವಾರ್ಷಿಕ ರಿಟರ್ನ್ ($rate) ಹೀಗೆಯೇ ಮುಂದುವರಿದರೆ, ನೀವು ಸುಮಾರು $year ಇಸವಿಯ ವೇಳೆಗೆ ಗುರಿ ತಲುಪುತ್ತೀರಿ.';
  }

  @override
  String get portfolioMaxDrawdown => 'ಅತಿದೊಡ್ಡ ಕುಸಿತ';

  @override
  String get glossMaxDrawdown =>
      'ನಿಮ್ಮ ಷೇರುಗಳ ಮೌಲ್ಯದಲ್ಲಿ ಹಿಂದಿನ ಒಂದು ಗರಿಷ್ಠ ಮಟ್ಟದಿಂದ ನಂತರದ ಕನಿಷ್ಠ ಮಟ್ಟದವರೆಗಿನ ಅತಿದೊಡ್ಡ ಕುಸಿತ, ನಿಮ್ಮ ಖರೀದಿ ಮತ್ತು ಮಾರಾಟದ ಪರಿಣಾಮವಿಲ್ಲದೆ (ಸಮಯ-ತೂಕದ). ನಿಮ್ಮ ಪೋರ್ಟ್‌ಫೋಲಿಯೊ ಈಗಾಗಲೇ ಎಷ್ಟು ಆಳವಾದ ಕುಸಿತವನ್ನು ಕಂಡಿದೆ ಎಂಬುದನ್ನು ಇದು ತೋರಿಸುತ್ತದೆ.';

  @override
  String watchSince(String date) {
    return 'ಮೆಚ್ಚಿನವುಗಳಿಗೆ ಸೇರಿಸಿದಾಗಿನಿಂದ ($date)';
  }

  @override
  String get portfolioSampleTry => 'ಮಾದರಿ ಪೋರ್ಟ್‌ಫೋಲಿಯೊದೊಂದಿಗೆ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get portfolioSampleBanner =>
      'ಇದು ಮಾದರಿ ಪೋರ್ಟ್‌ಫೋಲಿಯೊ. ಇದರ ಜೊತೆಗೆ ನಿಮ್ಮ ಸ್ವಂತ ಖರೀದಿಗಳನ್ನು ಸೇರಿಸಿ, ಅಥವಾ ಇದನ್ನು ತೆಗೆದುಹಾಕಿ.';

  @override
  String get portfolioSampleRemove => 'ಮಾದರಿ ತೆಗೆದುಹಾಕಿ';

  @override
  String get portfolioStopsAll => 'ಎಲ್ಲ ಪೊಸಿಷನ್‌ಗಳಿಗೆ ಟ್ರೇಲಿಂಗ್ ಸ್ಟಾಪ್';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಟ್ರೇಲಿಂಗ್ ಸ್ಟಾಪ್‌ಗಳನ್ನು ಹೊಂದಿಸಲಾಗಿದೆ',
      one: '1 ಟ್ರೇಲಿಂಗ್ ಸ್ಟಾಪ್ ಹೊಂದಿಸಲಾಗಿದೆ',
      zero: 'ಎಲ್ಲ ಪೊಸಿಷನ್‌ಗಳಿಗೂ ಈಗಾಗಲೇ ಟ್ರೇಲಿಂಗ್ ಸ್ಟಾಪ್ ಇದೆ',
    );
    return '$_temp0';
  }

  @override
  String portfolioSinceSale(String percent) {
    return 'ಮಾರಾಟದ ನಂತರ $percent';
  }

  @override
  String get lotPreviewRealized => 'ಈ ಮಾರಾಟದ ವಾಸ್ತವಿಕ ಲಾಭ-ನಷ್ಟ (FIFO):';

  @override
  String lotPreviewAverage(String after, String before) {
    return 'ಹೊಸ ಸರಾಸರಿ ವೆಚ್ಚ: $after (ಈಗ $before)';
  }

  @override
  String get portfolioYtdReturn => 'ಈ ವರ್ಷದ ರಿಟರ್ನ್';

  @override
  String get glossTwrYtd =>
      'ವರ್ಷದ ಆರಂಭದಿಂದ (ಅಥವಾ ನಿಮ್ಮ ಮೊದಲ ಖರೀದಿ ಈ ವರ್ಷವೇ ಆಗಿದ್ದರೆ ಅಂದಿನಿಂದ) ಸಮಯ-ತೂಕದ ರಿಟರ್ನ್: ಪ್ರತಿ ದಿನ ಆ ದಿನ ನಿಮ್ಮ ಬಳಿ ಇದ್ದ ಷೇರುಗಳ ಬದಲಾವಣೆಯನ್ನು ಎಣಿಸುತ್ತದೆ, ಮತ್ತು ದಿನಗಳನ್ನು ಒಂದಕ್ಕೊಂದು ಜೋಡಿಸಲಾಗುತ್ತದೆ – ನೀವು ಹಾಕುವ ಅಥವಾ ತೆಗೆಯುವ ಹಣ ರಿಟರ್ನ್ ಅಲ್ಲ, ಆದ್ದರಿಂದ ಇದನ್ನು ಸೂಚ್ಯಂಕದೊಂದಿಗೆ ಹೋಲಿಸಬಹುದು. ಕೆಳಗೆ: ಅದೇ ಅವಧಿಯಲ್ಲಿ ಆಯ್ಕೆ ಮಾಡಿದ ಸೂಚ್ಯಂಕ.';

  @override
  String alertDistance(String price, String percent) {
    return 'ಈಗ $price · ಇನ್ನೂ $percent ಬಾಕಿ';
  }

  @override
  String get watchSortSince => 'ಸೇರಿಸಿದಾಗಿನಿಂದ ಬದಲಾವಣೆ ಪ್ರಕಾರ';

  @override
  String get portfolioTodayMovers => 'ಇಂದು ಹೆಚ್ಚು ಏರಿಳಿತ ಕಂಡವು:';

  @override
  String get lotNoteAdd => 'ಟಿಪ್ಪಣಿ ಸೇರಿಸಿ';

  @override
  String get lotNoteBuyHint =>
      'ಏಕೆ ಖರೀದಿಸುತ್ತಿದ್ದೀರಿ? ಇದು ದಿನಾಂಕದೊಂದಿಗೆ ಷೇರಿನ ಟಿಪ್ಪಣಿಗಳಿಗೆ ಸೇರುತ್ತದೆ.';

  @override
  String get lotNoteSellHint =>
      'ಏಕೆ ಮಾರುತ್ತಿದ್ದೀರಿ? ಇದು ದಿನಾಂಕದೊಂದಿಗೆ ಷೇರಿನ ಟಿಪ್ಪಣಿಗಳಿಗೆ ಸೇರುತ್ತದೆ.';

  @override
  String get lotNoteBought => 'ಖರೀದಿ';

  @override
  String get positionHeld => 'ಹೊಂದಿರುವ ಅವಧಿ';

  @override
  String durationMonths(int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months ತಿಂಗಳುಗಳು',
      one: '$months ತಿಂಗಳು',
    );
    return '$_temp0';
  }

  @override
  String durationDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days ದಿನಗಳು',
      one: '$days ದಿನ',
    );
    return '$_temp0';
  }

  @override
  String positionHeldSince(String date) {
    return '$date ರಿಂದ';
  }

  @override
  String lotPreviewWeight(String after, String before) {
    return 'ನಂತರ ಪೋರ್ಟ್‌ಫೋಲಿಯೊದಲ್ಲಿ ಪಾಲು: $after (ಈಗ $before)';
  }

  @override
  String lotFromCash(String amount) {
    return 'ನಗದಿನಿಂದ ಪಾವತಿಸಿ (ಈಗ $amount)';
  }

  @override
  String lotToCash(String amount) {
    return 'ನಗದಿಗೆ ಸೇರಿಸಿ (ಈಗ $amount)';
  }

  @override
  String get onboardTitle4 => 'ನಿಮ್ಮ ಪೋರ್ಟ್‌ಫೋಲಿಯೊವನ್ನು ಟ್ರ್ಯಾಕ್ ಮಾಡಿ';

  @override
  String get onboardBody4 =>
      'ನಿಮ್ಮ ಬ್ರೋಕರ್‌ನ ಎಕ್ಸ್‌ಪೋರ್ಟ್ ಇಂಪೋರ್ಟ್ ಮಾಡಿ (Revolut, Trading 212, IBKR, DEGIRO, Schwab…) ಅಥವಾ ವಹಿವಾಟುಗಳನ್ನು ಕೈಯಾರೆ ಸೇರಿಸಿ: ಸೂಚ್ಯಂಕದ ಜೊತೆ ಹೋಲಿಸಿದ ನಿಮ್ಮ ರಿಟರ್ನ್, ನಿಮ್ಮ ಡಿವಿಡೆಂಡ್‌ಗಳು ಮತ್ತು ತೆರಿಗೆ ರಿಟರ್ನ್‌ಗಾಗಿ ವಾರ್ಷಿಕ ಸಾರಾಂಶವನ್ನು ನೋಡಿ.';

  @override
  String get lotEdit => 'ಎಡಿಟ್ ಮಾಡಿ';

  @override
  String lotEditTitle(String symbol) {
    return 'ವಹಿವಾಟು ಎಡಿಟ್ ಮಾಡಿ · $symbol';
  }

  @override
  String get lotSave => 'ಉಳಿಸಿ';

  @override
  String dividendEditTitle(String symbol) {
    return 'ಡಿವಿಡೆಂಡ್ ಎಡಿಟ್ ಮಾಡಿ · $symbol';
  }

  @override
  String get activityTitle => 'ಎಲ್ಲಾ ವಹಿವಾಟುಗಳು';

  @override
  String get activitySearchHint => 'ಟಿಕರ್ ಪ್ರಕಾರ ಫಿಲ್ಟರ್ ಮಾಡಿ';

  @override
  String get activityNoMatch => 'ಫಿಲ್ಟರ್‌ಗೆ ಹೊಂದುವ ಯಾವುದೇ ವಹಿವಾಟುಗಳಿಲ್ಲ.';

  @override
  String get portfolioGoalSet => 'ಗುರಿ ಹೊಂದಿಸಿ';

  @override
  String get portfolioGoalTitle => 'ಪೋರ್ಟ್‌ಫೋಲಿಯೊ ಗುರಿ';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · ಗುರಿ: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'ಗುರಿ ತಲುಪಿದೆ: $amount';
  }

  @override
  String get portfolioGoalRemove => 'ಗುರಿ ತೆಗೆದುಹಾಕಿ';

  @override
  String get alertEdit => 'ಅಲರ್ಟ್ ಎಡಿಟ್ ಮಾಡಿ';

  @override
  String get positionOpenLots => 'ಇನ್ನೂ ಹೊಂದಿರುವವು (ಹಳೆಯದು ಮೊದಲು)';

  @override
  String get lotRemoved => 'ವಹಿವಾಟನ್ನು ಅಳಿಸಲಾಗಿದೆ';

  @override
  String get alertDeleted => 'ಎಚ್ಚರಿಕೆಯನ್ನು ಅಳಿಸಲಾಗಿದೆ';

  @override
  String get alertsClearTriggered => 'ಟ್ರಿಗರ್ ಆದ ಎಚ್ಚರಿಕೆಗಳನ್ನು ತೆರವುಗೊಳಿಸಿ';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಎಚ್ಚರಿಕೆಗಳನ್ನು ತೆರವುಗೊಳಿಸಲಾಗಿದೆ',
      one: '1 ಎಚ್ಚರಿಕೆಯನ್ನು ತೆರವುಗೊಳಿಸಲಾಗಿದೆ',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'ಹೋಮ್ ಸ್ಕ್ರೀನ್';

  @override
  String get allocationCountries => 'ದೇಶಗಳು';

  @override
  String get newsExplainNoteResearch =>
      'AI ವಿವರಣೆ: ಇದು ವೆಬ್‌ನಲ್ಲಿ ಸಂಗತಿಗಳನ್ನು ಹುಡುಕುತ್ತದೆ, ಲೇಖನವನ್ನು ತೆರೆಯುತ್ತದೆ ಮತ್ತು ಮೂಲ ಎಷ್ಟು ವಿಶ್ವಾಸಾರ್ಹ ಎಂಬುದನ್ನು ನಿರ್ಣಯಿಸುತ್ತದೆ. ಇದು ಹೂಡಿಕೆ ಸಲಹೆಯಲ್ಲ. ಇದು ನಿಮ್ಮ ದೈನಂದಿನ ಪ್ರಶ್ನೆ ಮಿತಿಯನ್ನು ಬಳಸುತ್ತದೆ, ವಿಶ್ಲೇಷಣೆಯನ್ನಲ್ಲ.';

  @override
  String get sourceOfficial => 'ಅಧಿಕೃತ';

  @override
  String get sourcePressRelease => 'ಪತ್ರಿಕಾ ಪ್ರಕಟಣೆ';

  @override
  String get sourceMajorNews => 'ಪ್ರಮುಖ ಮಾಧ್ಯಮ';

  @override
  String get sourceOpinion => 'ಅಭಿಪ್ರಾಯ';

  @override
  String get earningsSummaryButton => 'ಇತ್ತೀಚಿನ ವರದಿಯಲ್ಲಿ ಏನಿತ್ತು?';

  @override
  String get earningsSummaryNote =>
      'ಕಂಪನಿಯ ಫಲಿತಾಂಶ ಪ್ರಕಟಣೆ ಮತ್ತು ವೆಬ್‌ನಲ್ಲಿ ಸಿಗುವ ಮಾಧ್ಯಮ ವರದಿಗಳ AI ಸಾರಾಂಶ. ಇದು ಹೂಡಿಕೆ ಸಲಹೆಯಲ್ಲ. ಇದು ನಿಮ್ಮ ದೈನಂದಿನ ಪ್ರಶ್ನೆ ಮಿತಿಯನ್ನು ಬಳಸುತ್ತದೆ, ವಿಶ್ಲೇಷಣೆಯನ್ನಲ್ಲ.';

  @override
  String get compareLastSurprise => 'ಕಳೆದ ತ್ರೈಮಾಸಿಕ EPS vs ನಿರೀಕ್ಷಿತ';

  @override
  String get compareNextReport => 'ಮುಂದಿನ ವರದಿ';

  @override
  String get resolvingDescription =>
      'ನೀವು ಯಾವ ಷೇರನ್ನು ಉದ್ದೇಶಿಸಿದ್ದೀರಿ ಎಂದು ಗುರುತಿಸಲಾಗುತ್ತಿದೆ…';

  @override
  String get instrumentTitle => 'ಈ ಸಾಧನದ ಬಗ್ಗೆ';

  @override
  String get instrumentHint =>
      'ಈ ಸಂಕೇತಕ್ಕೆ ಕಂಪನಿ ಪ್ರೊಫೈಲ್ ಇಲ್ಲ – ಇದು ETF, ಫಂಡ್ ಅಥವಾ ಡಿಪಾಸಿಟರಿ ರಸೀದಿ ಆಗಿರಬಹುದು. ಇದು ಏನು, ಇದರಲ್ಲಿ ಏನಿದೆ ಮತ್ತು ಇದರ ವೆಚ್ಚ ಎಷ್ಟು ಎಂದು AI ಅನ್ನು ಕೇಳಿ.';

  @override
  String get instrumentAsk => 'ಇದು ಏನು?';

  @override
  String get instrumentNote =>
      'ವಿತರಕರ ಫಂಡ್ ಪುಟ ಮತ್ತು ವೆಬ್‌ನಲ್ಲಿ ಸಿಗುವ ಹಣಕಾಸು ಸೈಟ್‌ಗಳಿಂದ AI ವಿವರಣೆ. ಇದು ಹೂಡಿಕೆ ಸಲಹೆಯಲ್ಲ. ಇದು ನಿಮ್ಮ ದೈನಂದಿನ ಪ್ರಶ್ನೆ ಮಿತಿಯನ್ನು ಬಳಸುತ್ತದೆ, ವಿಶ್ಲೇಷಣೆಯನ್ನಲ್ಲ.';

  @override
  String suggestAskAi(String query) {
    return 'AI ಅನ್ನು ಕೇಳಿ: “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return '$symbols ಗೆ ಪ್ರಸ್ತುತ ಬೆಲೆ ಲಭ್ಯವಿಲ್ಲ.';
  }

  @override
  String get eventsRecentResults => 'ಇತ್ತೀಚೆಗೆ ವರದಿಯಾದ ಫಲಿತಾಂಶಗಳು';

  @override
  String get saveToNotes => 'ನನ್ನ ಟಿಪ್ಪಣಿಗಳಿಗೆ ಉಳಿಸಿ';

  @override
  String get savedToNotes => 'ನಿಮ್ಮ ಟಿಪ್ಪಣಿಗಳಿಗೆ ಉಳಿಸಲಾಗಿದೆ';

  @override
  String get portfolioDividendsReceived => 'ಪಡೆದ ಡಿವಿಡೆಂಡ್‌ಗಳು';

  @override
  String get portfolioDividendsThisYear => 'ಈ ವರ್ಷ';

  @override
  String get portfolioDividendsAllTime => 'ಇದುವರೆಗೆ';

  @override
  String get portfolioAddDividend => 'ಡಿವಿಡೆಂಡ್ ಸೇರಿಸಿ';

  @override
  String portfolioDividendAmount(String currency) {
    return 'ಪಡೆದ ಮೊತ್ತ ($currency)';
  }

  @override
  String get portfolioDividendDate => 'ಪಾವತಿ ದಿನಾಂಕ';

  @override
  String get portfolioDividendsEmpty =>
      'ಇನ್ನೂ ಯಾವುದೇ ಡಿವಿಡೆಂಡ್ ದಾಖಲಾಗಿಲ್ಲ. ಕೈಯಾರೆ ಸೇರಿಸಿ, ಅಥವಾ ನಿಮ್ಮ ಬ್ರೋಕರ್‌ನ ಎಕ್ಸ್‌ಪೋರ್ಟ್ ಇಂಪೋರ್ಟ್ ಮಾಡಿ – ಅದರ ಡಿವಿಡೆಂಡ್ ಸಾಲುಗಳನ್ನೂ ತೆಗೆದುಕೊಳ್ಳಲಾಗುತ್ತದೆ.';

  @override
  String get portfolioSplit => 'ಸ್ಟಾಕ್ ಸ್ಪ್ಲಿಟ್';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'ಸ್ಟಾಕ್ ಸ್ಪ್ಲಿಟ್: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'ಸ್ಪ್ಲಿಟ್‌ಗಿಂತ ಮೊದಲಿನ ದಿನಾಂಕದ ಖರೀದಿ ಮತ್ತು ಮಾರಾಟಗಳನ್ನು ಹೊಂದಿಸಲಾಗುತ್ತದೆ: ಷೇರುಗಳ ಸಂಖ್ಯೆಯನ್ನು ಗುಣಿಸಿ, ಪ್ರತಿ ಷೇರಿನ ಬೆಲೆಯನ್ನು ಭಾಗಿಸಲಾಗುತ್ತದೆ, ಹೀಗಾಗಿ ವೆಚ್ಚ ಹಾಗೆಯೇ ಉಳಿಯುತ್ತದೆ.';

  @override
  String get portfolioSplitRatio => 'ಅನುಪಾತ (ಹೊಸ : ಹಳೆಯ)';

  @override
  String get portfolioSplitRatioError =>
      '10:1 ರಂತಹ ಅನುಪಾತವನ್ನು ನಮೂದಿಸಿ, ಅಥವಾ ರಿವರ್ಸ್ ಸ್ಪ್ಲಿಟ್‌ಗೆ 1:10.';

  @override
  String get portfolioSplitDate => 'ಸ್ಪ್ಲಿಟ್ ದಿನಾಂಕ';

  @override
  String portfolioSplitRow(String ratio) {
    return 'ಸ್ಟಾಕ್ ಸ್ಪ್ಲಿಟ್ $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'ಸ್ಟಾಕ್ ಸ್ಪ್ಲಿಟ್ ಅಳಿಸಲಾಗಿದೆ';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಸ್ಟಾಕ್ ಸ್ಪ್ಲಿಟ್‌ಗಳನ್ನು ಸೇರಿಸಲಾಗಿದೆ',
      one: '1 ಸ್ಟಾಕ್ ಸ್ಪ್ಲಿಟ್ ಸೇರಿಸಲಾಗಿದೆ',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಡಿವಿಡೆಂಡ್‌ಗಳನ್ನು ಸೇರಿಸಲಾಗಿದೆ',
      one: '1 ಡಿವಿಡೆಂಡ್ ಸೇರಿಸಲಾಗಿದೆ',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends =>
      'ಡಿವಿಡೆಂಡ್‌ಗಳನ್ನು ಎಕ್ಸ್‌ಪೋರ್ಟ್ ಮಾಡಿ (CSV)';

  @override
  String get portfolioDividendDeleted => 'ಡಿವಿಡೆಂಡ್ ಅಳಿಸಲಾಗಿದೆ';

  @override
  String get portfolioDividendsHint =>
      'ಮೊತ್ತಗಳು ನಿಮ್ಮ ಖಾತೆಗೆ ಬಂದಂತೆಯೇ, ಪಾವತಿ ಕರೆನ್ಸಿಯಲ್ಲಿ; ಒಟ್ಟು ಮೊತ್ತಗಳನ್ನು ಇಂದಿನ ದರದಲ್ಲಿ ಪರಿವರ್ತಿಸಲಾಗಿದೆ. ತೆರಿಗೆ ರಿಟರ್ನ್‌ಗೆ ನಿಮ್ಮ ಬ್ರೋಕರ್‌ನ ಸ್ಟೇಟ್‌ಮೆಂಟ್ ಬಳಸಿ.';

  @override
  String get awayTitle => 'ನೀವು ದೂರವಿದ್ದಾಗ';

  @override
  String awaySince(String when) {
    return '$when ರಿಂದ';
  }

  @override
  String get awayQuiet => 'ವಿಶೇಷವಾಗಿ ಏನೂ ಬದಲಾಗಿಲ್ಲ.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಅಲರ್ಟ್‌ಗಳು ಟ್ರಿಗರ್ ಆಗಿವೆ',
      one: '1 ಅಲರ್ಟ್ ಟ್ರಿಗರ್ ಆಗಿದೆ',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'ಫಲಿತಾಂಶ ಪ್ರಕಟಿಸಿದವು: $symbols';
  }

  @override
  String get moveWhyButton => 'ಇಂದು ಏಕೆ ಏರಿಳಿತವಾಗುತ್ತಿದೆ?';

  @override
  String moveWhyTitle(String percent) {
    return 'ಇಂದು $percent';
  }

  @override
  String get moveWhyNote =>
      'ವೆಬ್‌ನಲ್ಲಿ ಸಿಕ್ಕ ಇಂದಿನ ಸುದ್ದಿಗಳ ಆಧಾರದ AI ವಿವರಣೆ; ನಿಜವಾದ ಕಾರಣ ಅಜ್ಞಾತ ಅಥವಾ ಬೇರೆಯಾಗಿರಬಹುದು. ಹೂಡಿಕೆ ಸಲಹೆ ಅಲ್ಲ. ನಿಮ್ಮ ದೈನಂದಿನ ಪ್ರಶ್ನೆ ಕೋಟಾವನ್ನು ಬಳಸುತ್ತದೆ, ವಿಶ್ಲೇಷಣೆಯನ್ನಲ್ಲ.';

  @override
  String get sectionTechnical => 'ತಾಂತ್ರಿಕ ಚಿತ್ರಣ';

  @override
  String get labelSma50 => '50 ದಿನಗಳ ಸರಾಸರಿ';

  @override
  String get labelSma200 => '200 ದಿನಗಳ ಸರಾಸರಿ';

  @override
  String get labelRsi => 'RSI (14 ದಿನ)';

  @override
  String get labelVolatility30 => 'ಚಂಚಲತೆ (30 ದಿನ)';

  @override
  String techAbove(String percent) {
    return '$percent ಮೇಲೆ';
  }

  @override
  String techBelow(String percent) {
    return '$percent ಕೆಳಗೆ';
  }

  @override
  String get techOverbought => 'ಓವರ್‌ಬಾಟ್';

  @override
  String get techOversold => 'ಓವರ್‌ಸೋಲ್ಡ್';

  @override
  String get techNeutral => 'ತಟಸ್ಥ';

  @override
  String get techGoldenCross =>
      '50 ದಿನಗಳ ಸರಾಸರಿ 200 ದಿನಗಳ ಸರಾಸರಿಗಿಂತ ಮೇಲಿದೆ – ಸಾಂಪ್ರದಾಯಿಕ ವ್ಯಾಖ್ಯಾನದ ಪ್ರಕಾರ ಏರಿಕೆಯ ಪ್ರವೃತ್ತಿ.';

  @override
  String get techDeathCross =>
      '50 ದಿನಗಳ ಸರಾಸರಿ 200 ದಿನಗಳ ಸರಾಸರಿಗಿಂತ ಕೆಳಗಿದೆ – ಸಾಂಪ್ರದಾಯಿಕ ವ್ಯಾಖ್ಯಾನದ ಪ್ರಕಾರ ಇಳಿಕೆಯ ಪ್ರವೃತ್ತಿ.';

  @override
  String get glossSma50 =>
      'ಕಳೆದ 50 ವಹಿವಾಟು ದಿನಗಳ ಸರಾಸರಿ ಮುಕ್ತಾಯ ಬೆಲೆ. ಇದರ ಮೇಲಿನ ಬೆಲೆಯನ್ನು ಹೆಚ್ಚಾಗಿ ಅಲ್ಪಾವಧಿಯ ಬಲ, ಕೆಳಗಿನ ಬೆಲೆಯನ್ನು ದೌರ್ಬಲ್ಯ ಎಂದು ಓದಲಾಗುತ್ತದೆ.';

  @override
  String get glossSma200 =>
      'ಕಳೆದ 200 ವಹಿವಾಟು ದಿನಗಳ ಸರಾಸರಿ ಮುಕ್ತಾಯ ಬೆಲೆ – ಸಾಂಪ್ರದಾಯಿಕ ದೀರ್ಘಾವಧಿ ಪ್ರವೃತ್ತಿ ರೇಖೆ. ಅನೇಕ ಹೂಡಿಕೆದಾರರು ಇದರ ಮೇಲಿನ ಬೆಲೆಯನ್ನು ದೀರ್ಘಾವಧಿ ಏರಿಕೆಯ ಪ್ರವೃತ್ತಿ ಎಂದು ಪರಿಗಣಿಸುತ್ತಾರೆ.';

  @override
  String get glossRsi =>
      'ರಿಲೇಟಿವ್ ಸ್ಟ್ರೆಂತ್ ಇಂಡೆಕ್ಸ್: ಇತ್ತೀಚಿನ ಲಾಭಗಳನ್ನು ಇತ್ತೀಚಿನ ನಷ್ಟಗಳೊಂದಿಗೆ 0–100 ಮಾಪಕದಲ್ಲಿ ಹೋಲಿಸುತ್ತದೆ. 70ಕ್ಕಿಂತ ಮೇಲೆ ಷೇರನ್ನು ಹೆಚ್ಚಾಗಿ ಓವರ್‌ಬಾಟ್ (ವೇಗವಾಗಿ ಏರಿದೆ), 30ಕ್ಕಿಂತ ಕೆಳಗೆ ಓವರ್‌ಸೋಲ್ಡ್ ಎನ್ನಲಾಗುತ್ತದೆ – ಆದರೆ ಬಲವಾದ ಪ್ರವೃತ್ತಿ ಅಲ್ಲಿ ದೀರ್ಘಕಾಲ ಉಳಿಯಬಹುದು.';

  @override
  String get glossVolatility =>
      'ಬೆಲೆ ದಿನದಿಂದ ದಿನಕ್ಕೆ ಎಷ್ಟು ಏರಿಳಿತವಾಗುತ್ತದೆ, ವಾರ್ಷಿಕ ಲೆಕ್ಕದಲ್ಲಿ: 20% ಎಂದರೆ ಸಾಮಾನ್ಯ ವರ್ಷದಲ್ಲಿ ಬೆಲೆ ಸುಮಾರು ±20% ಒಳಗೆ ಚಲಿಸುತ್ತದೆ. ಹೆಚ್ಚಿನ ಚಂಚಲತೆ ಎಂದರೆ ಎರಡೂ ದಿಕ್ಕಿನಲ್ಲಿ ದೊಡ್ಡ ಚಲನೆಗಳು.';

  @override
  String get techNote =>
      'ದೈನಂದಿನ ಮುಕ್ತಾಯ ಬೆಲೆಗಳಿಂದ ಲೆಕ್ಕ ಹಾಕಲಾಗಿದೆ. ತಾಂತ್ರಿಕ ಸಂಕೇತಗಳು ಹಿಂದಿನದನ್ನು ವಿವರಿಸುತ್ತವೆ, ಭವಿಷ್ಯವನ್ನಲ್ಲ.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$count ಪೊಸಿಷನ್‌ಗಳಲ್ಲಿ $above ತಮ್ಮ 200 ದಿನಗಳ ಸರಾಸರಿಗಿಂತ ಮೇಲಿವೆ';
  }

  @override
  String get watchSignalsTitle => 'ಸಂಕೇತಗಳು';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · ಓವರ್‌ಸೋಲ್ಡ್';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · ಓವರ್‌ಬಾಟ್';
  }

  @override
  String get signalCrossedAbove => '200 ದಿನಗಳ ಸರಾಸರಿಯ ಮೇಲೆ ದಾಟಿದೆ';

  @override
  String get signalCrossedBelow => '200 ದಿನಗಳ ಸರಾಸರಿಯ ಕೆಳಗೆ ಇಳಿದಿದೆ';

  @override
  String get signalAlertsTitle => 'ತಾಂತ್ರಿಕ ಸಿಗ್ನಲ್ ಅಧಿಸೂಚನೆಗಳು';

  @override
  String get signalAlertsSubtitle =>
      'ದಿನಕ್ಕೆ ಒಮ್ಮೆ, ನೀವು ಅನುಸರಿಸುವ ಸ್ಟಾಕ್ ಓವರ್‌ಸೋಲ್ಡ್ ಅಥವಾ ಓವರ್‌ಬಾಟ್ (RSI) ಆದಾಗ, ಅಥವಾ ಅದರ ಬೆಲೆ 200 ದಿನಗಳ ಸರಾಸರಿಯನ್ನು ದಾಟಿದಾಗ.';

  @override
  String get signalAlertsNotification => 'ತಾಂತ್ರಿಕ ಸಿಗ್ನಲ್‌ಗಳು';

  @override
  String get glossaryPageTitle => 'ಪದಕೋಶ';

  @override
  String get glossaryPageSubtitle =>
      'ಆ್ಯಪ್ ತೋರಿಸುವ ಪ್ರತಿ ಅಂಕಿಯ ಸರಳ ವಿವರಣೆ, P/E ಯಿಂದ RSI ವರೆಗೆ';

  @override
  String get glossarySearchHint => 'ಪದಕೋಶದಲ್ಲಿ ಹುಡುಕಿ';

  @override
  String get portfolioCash => 'ನಗದು';

  @override
  String get portfolioCashTitle => 'ನಗದು ಬಾಕಿ';

  @override
  String get portfolioCashHint =>
      'ನಿಮ್ಮ ಬ್ರೋಕರ್ ಬಳಿ ಹೂಡಿಕೆ ಮಾಡದ ಹಣ, ಕರೆನ್ಸಿ ಪ್ರಕಾರ. ಇದು ಒಟ್ಟು ಮೌಲ್ಯ ಮತ್ತು ಹಂಚಿಕೆಯಲ್ಲಿ ಎಣಿಕೆಯಾಗುತ್ತದೆ; ರಿಟರ್ನ್‌ನಲ್ಲಿ ಅಲ್ಲ.';

  @override
  String portfolioCashAmount(String currency) {
    return 'ಮೊತ್ತ ($currency)';
  }

  @override
  String get portfolioCashEdit => 'ನಗದು ಬಾಕಿ ಹೊಂದಿಸಿ';

  @override
  String get portfolioDividendsByMonth => 'ತಿಂಗಳ ಪ್ರಕಾರ';

  @override
  String get dividendsLegendReceived => 'ಸ್ವೀಕೃತ';

  @override
  String get dividendsLegendExpected => 'ನಿರೀಕ್ಷಿತ';

  @override
  String get portfolioDividendsExpected => 'ಮುಂದೆ ನಿರೀಕ್ಷಿತ';

  @override
  String get portfolioDividendsExpectedNote =>
      'ನೀವು ದಾಖಲಿಸಿದ ಪಾವತಿಗಳ ದಿನಾಂಕ ಮತ್ತು ಮೊತ್ತಗಳಿಂದ ಅಂದಾಜಿಸಲಾಗಿದೆ; ಕಂಪನಿಗಳು ಇವನ್ನು ಬದಲಿಸಬಹುದು ಅಥವಾ ಬಿಟ್ಟುಬಿಡಬಹುದು.';

  @override
  String portfolioDividendAround(String date) {
    return 'ಸುಮಾರು $date';
  }
}
