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
      'ಈ ಸಾಧನದಲ್ಲಿ ಮಾತ್ರ ಸಂಗ್ರಹಿಸಲಾಗಿದೆ. ಒಟ್ಟು ಮೊತ್ತಗಳನ್ನು ECB ಉಲ್ಲೇಖ ದರಗಳಲ್ಲಿ ಪರಿವರ್ತಿಸಲಾಗುತ್ತದೆ; ಬೆಲೆಗಳು ವಿಳಂಬವಾಗಿರಬಹುದು.';

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
  String get eventsHint =>
      'ಮುಂದಿನ 90 ದಿನಗಳಲ್ಲಿ ನಿಮ್ಮ ಮೆಚ್ಚಿನ ಮತ್ತು ಪೋರ್ಟ್‌ಫೋಲಿಯೊ ಷೇರುಗಳ ಫಲಿತಾಂಶ ದಿನಾಂಕಗಳು ಹಾಗೂ ನಿಮ್ಮ ವಿಶ್ಲೇಷಣೆಗಳು ಗುರುತಿಸಿದ ದಿನಾಂಕವಿರುವ ಘಟನೆಗಳು.';

  @override
  String get eventsEmpty =>
      'ಮುಂದಿನ 90 ದಿನಗಳಲ್ಲಿ ದಿನಾಂಕವಿರುವ ಯಾವುದೇ ಘಟನೆಗಳಿಲ್ಲ. ಅವುಗಳ ಫಲಿತಾಂಶ ದಿನಾಂಕಗಳನ್ನು ಇಲ್ಲಿ ನೋಡಲು ಮೆಚ್ಚಿನವುಗಳು ಅಥವಾ ಪೋರ್ಟ್‌ಫೋಲಿಯೊ ಷೇರುಗಳನ್ನು ಸೇರಿಸಿ.';

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
}
