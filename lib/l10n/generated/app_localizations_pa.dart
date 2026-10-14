// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Panjabi Punjabi (`pa`).
class AppLocalizationsPa extends AppLocalizations {
  AppLocalizationsPa([String locale = 'pa']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'ਕਿਸੇ ਸ਼ੇਅਰ ਦੀ ਫ਼ੋਟੋ ਖਿੱਚੋ ਅਤੇ ਉਸ ਬਾਰੇ ਸਭ ਕੁਝ ਜਾਣੋ।';

  @override
  String get homeHint =>
      'ਸ਼ੇਅਰ ਸਰਟੀਫ਼ਿਕੇਟ, ਬ੍ਰੋਕਰੇਜ ਐਪ ਦੀ ਸਕ੍ਰੀਨ, ਅਖ਼ਬਾਰ ਜਾਂ ਕੰਪਨੀ ਦਾ ਲੋਗੋ – ਕੋਈ ਵੀ ਚੀਜ਼ ਜੋ ਕਿਸੇ ਸ਼ੇਅਰ ਦੀ ਪਛਾਣ ਕਰੇ।';

  @override
  String get takePhoto => 'ਫ਼ੋਟੋ ਖਿੱਚੋ';

  @override
  String get chooseFromGallery => 'ਗੈਲਰੀ ਵਿੱਚੋਂ ਚੁਣੋ';

  @override
  String get chooseImage => 'ਚਿੱਤਰ ਚੁਣੋ';

  @override
  String get enterTickerManually => 'ਟਿਕਰ ਹੱਥੀਂ ਦਰਜ ਕਰੋ';

  @override
  String get tickerInputLabel => 'ਟਿਕਰ ਸਿੰਬਲ';

  @override
  String get tickerInputHint => 'ਜਿਵੇਂ AAPL';

  @override
  String get lookUp => 'ਲੱਭੋ';

  @override
  String demoModeBanner(String symbols) {
    return 'ਡੈਮੋ ਮੋਡ – ਕੋਈ ਮਾਰਕੀਟ ਡਾਟਾ ਕੁੰਜੀ ਕੌਂਫਿਗਰ ਨਹੀਂ ਹੈ। ਨਮੂਨਾ ਡਾਟਾ ਇਹਨਾਂ ਲਈ ਉਪਲਬਧ ਹੈ: $symbols।';
  }

  @override
  String get recognizing => 'ਚਿੱਤਰ ਦਾ ਵਿਸ਼ਲੇਸ਼ਣ ਹੋ ਰਿਹਾ ਹੈ…';

  @override
  String get loadingData => 'ਡਾਟਾ ਲੋਡ ਹੋ ਰਿਹਾ ਹੈ…';

  @override
  String get noCandidatesTitle => 'ਕੋਈ ਸ਼ੇਅਰ ਨਹੀਂ ਪਛਾਣਿਆ ਗਿਆ';

  @override
  String get noCandidatesBody =>
      'ਅਸੀਂ ਇਸ ਚਿੱਤਰ ਵਿੱਚ ਕਿਸੇ ਸ਼ੇਅਰ ਦੀ ਪਛਾਣ ਨਹੀਂ ਕਰ ਸਕੇ। ਕੋਈ ਸਾਫ਼ ਫ਼ੋਟੋ ਅਜ਼ਮਾਓ, ਜਾਂ ਟਿਕਰ ਹੱਥੀਂ ਦਰਜ ਕਰੋ।';

  @override
  String get whatWeSaw => 'ਅਸੀਂ ਕੀ ਦੇਖਿਆ';

  @override
  String get chooseCandidateTitle => 'ਤੁਹਾਡਾ ਮਤਲਬ ਕਿਹੜਾ ਸ਼ੇਅਰ ਸੀ?';

  @override
  String confidencePercent(int percent) {
    return '$percent% ਭਰੋਸਾ';
  }

  @override
  String get settings => 'ਸੈਟਿੰਗਾਂ';

  @override
  String get language => 'ਭਾਸ਼ਾ';

  @override
  String get systemLanguage => 'ਸਿਸਟਮ ਡਿਫ਼ੌਲਟ';

  @override
  String get about => 'ਐਪ ਬਾਰੇ';

  @override
  String get disclaimer =>
      'ਇਹ ਐਪ ਸਿਰਫ਼ ਜਾਣਕਾਰੀ ਦਿੰਦੀ ਹੈ ਅਤੇ ਇਹ ਨਿਵੇਸ਼ ਸਲਾਹ ਨਹੀਂ ਹੈ। ਡਾਟਾ ਦੇਰੀ ਨਾਲ ਜਾਂ ਗ਼ਲਤ ਹੋ ਸਕਦਾ ਹੈ।';

  @override
  String dataSource(String source) {
    return 'ਡਾਟਾ ਸਰੋਤ: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'ਪਛਾਣ: $source';
  }

  @override
  String get retry => 'ਮੁੜ ਕੋਸ਼ਿਸ਼ ਕਰੋ';

  @override
  String get cancel => 'ਰੱਦ ਕਰੋ';

  @override
  String get ok => 'ਠੀਕ ਹੈ';

  @override
  String get close => 'ਬੰਦ ਕਰੋ';

  @override
  String get errorGeneric => 'ਕੁਝ ਗ਼ਲਤ ਹੋ ਗਿਆ।';

  @override
  String get errorSectionUnavailable => 'ਇਹ ਸੈਕਸ਼ਨ ਲੋਡ ਨਹੀਂ ਹੋ ਸਕਿਆ।';

  @override
  String get notAvailable => 'ਉਪਲਬਧ ਨਹੀਂ';

  @override
  String get sectionIdentity => 'ਪਛਾਣ';

  @override
  String get sectionPrice => 'ਕੀਮਤ';

  @override
  String get sectionValuation => 'ਮੁਲਾਂਕਣ';

  @override
  String get sectionFinancials => 'ਵਿੱਤੀ ਅੰਕੜੇ';

  @override
  String get sectionDividend => 'ਲਾਭਅੰਸ਼';

  @override
  String get sectionProfile => 'ਕੰਪਨੀ ਪ੍ਰੋਫ਼ਾਈਲ';

  @override
  String get sectionAnalysts => 'ਵਿਸ਼ਲੇਸ਼ਕ ਰੇਟਿੰਗਾਂ';

  @override
  String get sectionNews => 'ਖ਼ਬਰਾਂ';

  @override
  String get sectionRecognition => 'ਪਛਾਣ ਦੇ ਵੇਰਵੇ';

  @override
  String get labelSymbol => 'ਟਿਕਰ';

  @override
  String get labelExchange => 'ਐਕਸਚੇਂਜ';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'ਮੁਦਰਾ';

  @override
  String get labelCountry => 'ਦੇਸ਼';

  @override
  String get labelIndustry => 'ਉਦਯੋਗ';

  @override
  String get labelSector => 'ਸੈਕਟਰ';

  @override
  String get labelWebsite => 'ਵੈੱਬਸਾਈਟ';

  @override
  String get labelIpoDate => 'IPO ਮਿਤੀ';

  @override
  String get labelMarketCap => 'ਮਾਰਕੀਟ ਕੈਪ';

  @override
  String get labelSharesOutstanding => 'ਬਕਾਇਆ ਸ਼ੇਅਰ';

  @override
  String get labelEmployees => 'ਕਰਮਚਾਰੀ';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'ਮੁੱਖ ਦਫ਼ਤਰ';

  @override
  String get labelDescription => 'ਵੇਰਵਾ';

  @override
  String get labelLastPrice => 'ਆਖ਼ਰੀ ਕੀਮਤ';

  @override
  String get labelChange => 'ਬਦਲਾਅ';

  @override
  String get labelOpen => 'ਓਪਨ';

  @override
  String get labelDayHigh => 'ਦਿਨ ਦਾ ਉੱਚਤਮ';

  @override
  String get labelDayLow => 'ਦਿਨ ਦਾ ਨਿਊਨਤਮ';

  @override
  String get labelPreviousClose => 'ਪਿਛਲਾ ਬੰਦ ਭਾਅ';

  @override
  String get labelWeek52High => '52-ਹਫ਼ਤੇ ਦਾ ਉੱਚਤਮ';

  @override
  String get labelWeek52Low => '52-ਹਫ਼ਤੇ ਦਾ ਨਿਊਨਤਮ';

  @override
  String get labelAverageVolume10d => 'ਔਸਤ ਵੌਲਿਊਮ (10 ਦਿਨ)';

  @override
  String updatedAt(String time) {
    return 'ਅੱਪਡੇਟ $time';
  }

  @override
  String get labelPeTrailing => 'P/E (ਟ੍ਰੇਲਿੰਗ)';

  @override
  String get labelPeForward => 'P/E (ਫ਼ਾਰਵਰਡ)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / ਫ੍ਰੀ ਕੈਸ਼ ਫ਼ਲੋ';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'ਬੀਟਾ';

  @override
  String get labelRevenueTtm => 'ਮਾਲੀਆ (TTM)';

  @override
  String get labelNetIncomeTtm => 'ਸ਼ੁੱਧ ਮੁਨਾਫ਼ਾ (TTM)';

  @override
  String get labelGrossMargin => 'ਕੁੱਲ ਮਾਰਜਿਨ';

  @override
  String get labelOperatingMargin => 'ਓਪਰੇਟਿੰਗ ਮਾਰਜਿਨ';

  @override
  String get labelNetMargin => 'ਸ਼ੁੱਧ ਮਾਰਜਿਨ';

  @override
  String get labelRoe => 'ਇਕੁਇਟੀ ’ਤੇ ਰਿਟਰਨ';

  @override
  String get labelRoa => 'ਸੰਪਤੀਆਂ ’ਤੇ ਰਿਟਰਨ';

  @override
  String get labelDebtToEquity => 'ਕਰਜ਼ਾ / ਇਕੁਇਟੀ';

  @override
  String get labelCurrentRatio => 'ਕਰੰਟ ਰੇਸ਼ੋ';

  @override
  String get labelRevenueGrowth => 'ਮਾਲੀਆ ਵਾਧਾ (YoY)';

  @override
  String get labelEpsGrowth => 'EPS ਵਾਧਾ (YoY)';

  @override
  String get labelDividendYield => 'ਲਾਭਅੰਸ਼ ਯੀਲਡ';

  @override
  String get labelDividendPerShare => 'ਪ੍ਰਤੀ ਸ਼ੇਅਰ ਲਾਭਅੰਸ਼';

  @override
  String get labelPayoutRatio => 'ਪੇਆਊਟ ਅਨੁਪਾਤ';

  @override
  String get labelConsensus => 'ਸਹਿਮਤੀ';

  @override
  String get ratingStrongBuy => 'ਮਜ਼ਬੂਤ ਖ਼ਰੀਦ';

  @override
  String get ratingBuy => 'ਖ਼ਰੀਦ';

  @override
  String get ratingHold => 'ਹੋਲਡ';

  @override
  String get ratingSell => 'ਵਿਕਰੀ';

  @override
  String get ratingStrongSell => 'ਮਜ਼ਬੂਤ ਵਿਕਰੀ';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ਵਿਸ਼ਲੇਸ਼ਕ',
      one: '1 ਵਿਸ਼ਲੇਸ਼ਕ',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'ਮਿਆਦ: $period';
  }

  @override
  String get noNews => 'ਕੋਈ ਹਾਲੀਆ ਖ਼ਬਰ ਨਹੀਂ।';

  @override
  String get openArticle => 'ਲੇਖ ਖੋਲ੍ਹੋ';

  @override
  String get openLinkFailed => 'ਲਿੰਕ ਨਹੀਂ ਖੁੱਲ੍ਹ ਸਕਿਆ।';

  @override
  String get recognitionSummary => 'ਸਾਰ';

  @override
  String get recognitionEvidence => 'ਸਾਨੂੰ ਅਜਿਹਾ ਕਿਉਂ ਲੱਗਦਾ ਹੈ';

  @override
  String get recognitionRawText => 'ਚਿੱਤਰ ਵਿੱਚੋਂ ਪੜ੍ਹਿਆ ਗਿਆ ਟੈਕਸਟ';

  @override
  String get errMissingAnthropicKey =>
      'ਚਿੱਤਰ ਪਛਾਣ ਕੌਂਫਿਗਰ ਨਹੀਂ ਹੈ (ANTHROPIC_API_KEY ਨਹੀਂ ਹੈ)। ਟਿਕਰ ਹੱਥੀਂ ਦਰਜ ਕਰੋ।';

  @override
  String get errRecognitionUnreachable =>
      'ਪਛਾਣ ਸੇਵਾ ਨਾਲ ਸੰਪਰਕ ਨਹੀਂ ਹੋ ਸਕਿਆ। ਆਪਣਾ ਇੰਟਰਨੈੱਟ ਕਨੈਕਸ਼ਨ ਜਾਂਚੋ।';

  @override
  String errRecognitionHttp(String status) {
    return 'ਪਛਾਣ ਸੇਵਾ ਨੇ ਤਰੁੱਟੀ ਵਾਪਸ ਕੀਤੀ (HTTP $status)।';
  }

  @override
  String get errRecognitionRefused =>
      'ਪਛਾਣ ਸੇਵਾ ਇਸ ਚਿੱਤਰ ਨੂੰ ਪ੍ਰੋਸੈੱਸ ਨਹੀਂ ਕਰ ਸਕੀ।';

  @override
  String get errRecognitionTruncated =>
      'ਪਛਾਣ ਦਾ ਜਵਾਬ ਅਧੂਰਾ ਰਹਿ ਗਿਆ। ਕਿਰਪਾ ਕਰਕੇ ਮੁੜ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get errRecognitionBadResponse => 'ਪਛਾਣ ਸੇਵਾ ਤੋਂ ਅਣਕਿਆਸਿਆ ਜਵਾਬ।';

  @override
  String get errRecognitionEmpty => 'ਪਛਾਣ ਸੇਵਾ ਨੇ ਖ਼ਾਲੀ ਜਵਾਬ ਵਾਪਸ ਕੀਤਾ।';

  @override
  String get errMissingFinnhubKey =>
      'ਮਾਰਕੀਟ ਡਾਟਾ ਕੌਂਫਿਗਰ ਨਹੀਂ ਹੈ (FINNHUB_API_KEY ਨਹੀਂ ਹੈ)।';

  @override
  String get errMarketUnreachable =>
      'ਮਾਰਕੀਟ ਡਾਟਾ ਸੇਵਾ ਨਾਲ ਸੰਪਰਕ ਨਹੀਂ ਹੋ ਸਕਿਆ। ਆਪਣਾ ਇੰਟਰਨੈੱਟ ਕਨੈਕਸ਼ਨ ਜਾਂਚੋ।';

  @override
  String get errMarketRateLimited =>
      'ਮਾਰਕੀਟ ਡਾਟਾ ਸੇਵਾ ਨੂੰ ਬਹੁਤ ਜ਼ਿਆਦਾ ਬੇਨਤੀਆਂ ਭੇਜੀਆਂ ਗਈਆਂ। ਕਿਰਪਾ ਕਰਕੇ ਇੱਕ ਮਿੰਟ ਉਡੀਕ ਕਰੋ।';

  @override
  String errMarketHttp(String status) {
    return 'ਮਾਰਕੀਟ ਡਾਟਾ ਸੇਵਾ ਨੇ ਤਰੁੱਟੀ ਵਾਪਸ ਕੀਤੀ (HTTP $status)।';
  }

  @override
  String get errMarketBadResponse => 'ਮਾਰਕੀਟ ਡਾਟਾ ਸੇਵਾ ਤੋਂ ਅਣਕਿਆਸਿਆ ਜਵਾਬ।';

  @override
  String errNoQuote(String symbol) {
    return '$symbol ਲਈ ਕੋਈ ਕੀਮਤ ਡਾਟਾ ਨਹੀਂ ਮਿਲਿਆ।';
  }

  @override
  String errNoProfile(String symbol) {
    return '$symbol ਲਈ ਕੋਈ ਕੰਪਨੀ ਪ੍ਰੋਫ਼ਾਈਲ ਨਹੀਂ ਮਿਲੀ।';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'ਡੈਮੋ ਮੋਡ ਸਿਰਫ਼ $symbols ਦਾ ਸਮਰਥਨ ਕਰਦਾ ਹੈ। ਲਾਈਵ ਡਾਟਾ ਲਈ FINNHUB_API_KEY ਜੋੜੋ।';
  }

  @override
  String errUnknown(String detail) {
    return 'ਕੁਝ ਗ਼ਲਤ ਹੋ ਗਿਆ: $detail';
  }

  @override
  String get newSearch => 'ਨਵੀਂ ਖੋਜ';

  @override
  String get recentSearches => 'ਹਾਲੀਆ';

  @override
  String get noRecentSearches => 'ਹਾਲੇ ਕੋਈ ਹਾਲੀਆ ਖੋਜ ਨਹੀਂ।';

  @override
  String get clearRecent => 'ਹਾਲੀਆ ਸਾਫ਼ ਕਰੋ';

  @override
  String get greeting => 'ਅੱਜ ਕਿਹੜਾ ਸ਼ੇਅਰ ਦੇਖੀਏ?';

  @override
  String get searchHint => 'ਟਿਕਰ ਜਾਂ ਕੰਪਨੀ ਦਾ ਨਾਮ';

  @override
  String get attachImage => 'ਚਿੱਤਰ ਨੱਥੀ ਕਰੋ';

  @override
  String get searchResultsTitle => 'ਖੋਜ ਨਤੀਜੇ';

  @override
  String errNoResults(String query) {
    return '“$query” ਲਈ ਕੋਈ ਸ਼ੇਅਰ ਨਹੀਂ ਮਿਲਿਆ।';
  }

  @override
  String get quickBarHint => 'ਟਿਕਰ ਜਾਂ ਕੰਪਨੀ ਦਾ ਨਾਮ ਟਾਈਪ ਕਰੋ…';

  @override
  String get openFullWindow => 'ਵਿੰਡੋ ਖੋਲ੍ਹੋ';

  @override
  String hotkeyHint(String shortcut) {
    return 'WhatStock ਨੂੰ ਕਿਤੋਂ ਵੀ ਖੋਲ੍ਹਣ ਲਈ $shortcut ਦਬਾਓ।';
  }

  @override
  String get trayOpen => 'WhatStock ਖੋਲ੍ਹੋ';

  @override
  String get trayQuickSearch => 'ਤੁਰੰਤ ਖੋਜ';

  @override
  String get trayQuit => 'ਬਾਹਰ ਜਾਓ';

  @override
  String get appearance => 'ਦਿੱਖ';

  @override
  String get themeSystem => 'ਸਿਸਟਮ';

  @override
  String get themeDark => 'ਗੂੜ੍ਹਾ';

  @override
  String get themeLight => 'ਹਲਕਾ';

  @override
  String get back => 'ਪਿੱਛੇ';

  @override
  String get aiSectionTitle => 'AI ਵਿਸ਼ਲੇਸ਼ਣ';

  @override
  String get aiIntro =>
      'AI ਵੱਲੋਂ ਲਿਖੀ ਵਿਸਤ੍ਰਿਤ ਝਲਕ: ਹਾਲੀਆ ਖ਼ਬਰਾਂ ਦਾ ਸਾਰ, ਕਾਰੋਬਾਰ, ਮਜ਼ਬੂਤੀਆਂ, ਜੋਖਮ ਅਤੇ ਲੁਕੇ ਕਾਰਕ, ਮੁਲਾਂਕਣ, ਮਨੋਵਿਗਿਆਨਕ, ਸਮਾਜਿਕ, ਤਕਨੀਕੀ ਅਤੇ ਮੈਕਰੋ-ਆਰਥਿਕ ਨਜ਼ਰੀਏ ਤੋਂ ਦ੍ਰਿਸ਼ਾਂ ਸਮੇਤ ਕੀਮਤ ਦਾ ਅਨੁਮਾਨ, ਅਤੇ ਕਿਨ੍ਹਾਂ ਗੱਲਾਂ ’ਤੇ ਨਜ਼ਰ ਰੱਖਣੀ ਹੈ।';

  @override
  String get aiGenerate => 'ਵਿਸ਼ਲੇਸ਼ਣ ਬਣਾਓ';

  @override
  String get aiRegenerate => 'ਮੁੜ ਬਣਾਓ';

  @override
  String get aiGenerating =>
      'ਵਿਸ਼ਲੇਸ਼ਣ ਤਿਆਰ ਹੋ ਰਿਹਾ ਹੈ… ਇਸ ਵਿੱਚ ਇੱਕ-ਦੋ ਮਿੰਟ ਲੱਗ ਸਕਦੇ ਹਨ।';

  @override
  String get aiSources => 'ਸਰੋਤ';

  @override
  String aiGeneratedAt(String time) {
    return 'ਬਣਾਇਆ ਗਿਆ $time';
  }

  @override
  String get aiDisclaimer =>
      'ਜਨਤਕ ਡਾਟਾ ਅਤੇ ਹਾਲੀਆ ਖ਼ਬਰਾਂ ’ਤੇ ਆਧਾਰਿਤ AI-ਰਚਿਤ ਵਿਸ਼ਲੇਸ਼ਣ। ਇਸ ਵਿੱਚ ਗ਼ਲਤੀਆਂ ਹੋ ਸਕਦੀਆਂ ਹਨ ਜਾਂ ਇਹ ਪੁਰਾਣਾ ਹੋ ਸਕਦਾ ਹੈ, ਅਤੇ ਇਹ ਨਿਵੇਸ਼ ਸਲਾਹ ਨਹੀਂ ਹੈ।';

  @override
  String get errAiNotConfigured =>
      'AI ਵਿਸ਼ਲੇਸ਼ਣ ਕੌਂਫਿਗਰ ਨਹੀਂ ਹੈ (ANTHROPIC_API_KEY ਨਹੀਂ ਹੈ)।';

  @override
  String get errAiUnreachable =>
      'AI ਸੇਵਾ ਨਾਲ ਸੰਪਰਕ ਨਹੀਂ ਹੋ ਸਕਿਆ। ਆਪਣਾ ਇੰਟਰਨੈੱਟ ਕਨੈਕਸ਼ਨ ਜਾਂਚੋ।';

  @override
  String errAiHttp(String status) {
    return 'AI ਸੇਵਾ ਨੇ ਤਰੁੱਟੀ ਵਾਪਸ ਕੀਤੀ (HTTP $status)।';
  }

  @override
  String get errAiRefused =>
      'AI ਸੇਵਾ ਨੇ ਇਸ ਸ਼ੇਅਰ ਦਾ ਵਿਸ਼ਲੇਸ਼ਣ ਕਰਨ ਤੋਂ ਇਨਕਾਰ ਕਰ ਦਿੱਤਾ।';

  @override
  String get errAiBadResponse => 'AI ਸੇਵਾ ਤੋਂ ਅਣਕਿਆਸਿਆ ਜਵਾਬ।';

  @override
  String get sectionChart => 'ਕੀਮਤ ਚਾਰਟ';

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
      'ਮੌਜੂਦਾ ਡਾਟਾ ਸਰੋਤ ਤੋਂ ਕੀਮਤ ਦਾ ਇਤਿਹਾਸ ਉਪਲਬਧ ਨਹੀਂ ਹੈ।';

  @override
  String get sectionStatements => 'ਵਿੱਤੀ ਬਿਆਨ (ਸਾਲਾਨਾ)';

  @override
  String get labelFiscalYear => 'ਵਿੱਤੀ ਸਾਲ';

  @override
  String get labelRevenue => 'ਮਾਲੀਆ';

  @override
  String get labelNetIncome => 'ਸ਼ੁੱਧ ਮੁਨਾਫ਼ਾ';

  @override
  String get labelTotalAssets => 'ਕੁੱਲ ਸੰਪਤੀਆਂ';

  @override
  String get labelTotalLiabilities => 'ਕੁੱਲ ਦੇਣਦਾਰੀਆਂ';

  @override
  String get labelEquity => 'ਸ਼ੇਅਰਧਾਰਕਾਂ ਦੀ ਇਕੁਇਟੀ';

  @override
  String get labelOperatingCashFlow => 'ਓਪਰੇਟਿੰਗ ਕੈਸ਼ ਫ਼ਲੋ';

  @override
  String get statementsUnavailable =>
      'ਇਸ ਸ਼ੇਅਰ ਲਈ ਰਿਪੋਰਟ ਕੀਤੇ ਵਿੱਤੀ ਬਿਆਨ ਉਪਲਬਧ ਨਹੀਂ ਹਨ।';

  @override
  String get launchAtLogin => 'ਲੌਗ-ਇਨ ’ਤੇ ਚਾਲੂ ਕਰੋ';

  @override
  String get hotkeyLabel => 'ਗਲੋਬਲ ਸ਼ਾਰਟਕੱਟ';

  @override
  String get hotkeyRecordHint => 'ਇੱਥੇ ਕਲਿੱਕ ਕਰੋ, ਫਿਰ ਨਵਾਂ ਕੁੰਜੀ ਸੁਮੇਲ ਦਬਾਓ';

  @override
  String get hotkeyReset => 'ਡਿਫ਼ੌਲਟ ’ਤੇ ਰੀਸੈੱਟ ਕਰੋ';

  @override
  String get pasteImage => 'ਕਲਿੱਪਬੋਰਡ ਤੋਂ ਚਿੱਤਰ ਪੇਸਟ ਕਰੋ';

  @override
  String get errClipboardNoImage => 'ਕਲਿੱਪਬੋਰਡ ’ਤੇ ਕੋਈ ਚਿੱਤਰ ਨਹੀਂ ਹੈ।';

  @override
  String get favorites => 'ਮਨਪਸੰਦ';

  @override
  String get addToFavorites => 'ਮਨਪਸੰਦ ਵਿੱਚ ਸ਼ਾਮਲ ਕਰੋ';

  @override
  String get removeFromFavorites => 'ਮਨਪਸੰਦ ਵਿੱਚੋਂ ਹਟਾਓ';

  @override
  String get noFavorites =>
      'ਹਾਲੇ ਕੋਈ ਮਨਪਸੰਦ ਨਹੀਂ। ਸ਼ਾਮਲ ਕਰਨ ਲਈ ਕਿਸੇ ਸ਼ੇਅਰ ’ਤੇ ਤਾਰੇ ਨੂੰ ਟੈਪ ਕਰੋ।';

  @override
  String get displayCurrency => 'ਡਿਸਪਲੇ ਮੁਦਰਾ';

  @override
  String get displayCurrencyNone => 'ਸਿਰਫ਼ ਸ਼ੇਅਰ ਦੀ ਆਪਣੀ ਮੁਦਰਾ';

  @override
  String labelConverted(String currency) {
    return '≈ $currency ਵਿੱਚ';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'ਦਰ: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'ਅੱਪਡੇਟ';

  @override
  String currentVersion(String version) {
    return 'ਵਰਜ਼ਨ $version';
  }

  @override
  String get autoUpdate => 'ਅੱਪਡੇਟ ਆਪਣੇ-ਆਪ ਇੰਸਟਾਲ ਕਰੋ';

  @override
  String get checkForUpdates => 'ਅੱਪਡੇਟਾਂ ਲਈ ਜਾਂਚ ਕਰੋ';

  @override
  String get updateChecking => 'ਅੱਪਡੇਟਾਂ ਦੀ ਜਾਂਚ ਹੋ ਰਹੀ ਹੈ…';

  @override
  String get updateUpToDate => 'ਤੁਸੀਂ ਨਵੀਨਤਮ ਵਰਜ਼ਨ ’ਤੇ ਹੋ।';

  @override
  String updateAvailable(String version) {
    return 'ਵਰਜ਼ਨ $version ਉਪਲਬਧ ਹੈ।';
  }

  @override
  String get updateDownloading => 'ਅੱਪਡੇਟ ਬੈਕਗ੍ਰਾਊਂਡ ਵਿੱਚ ਡਾਊਨਲੋਡ ਹੋ ਰਿਹਾ ਹੈ…';

  @override
  String get updateDownloaded => 'ਅੱਪਡੇਟ ਤਿਆਰ ਹੈ। ਇੰਸਟਾਲ ਕਰਨ ਲਈ ਮੁੜ-ਚਾਲੂ ਕਰੋ।';

  @override
  String get updateNow => 'ਅੱਪਡੇਟ ਕਰੋ';

  @override
  String get restartNow => 'ਮੁੜ-ਚਾਲੂ ਕਰੋ';

  @override
  String get updatesViaStore => 'ਅੱਪਡੇਟ ਐਪ ਸਟੋਰ ਰਾਹੀਂ ਆਪਣੇ-ਆਪ ਆਉਂਦੇ ਹਨ।';

  @override
  String get updateCheckFailed => 'ਅੱਪਡੇਟਾਂ ਦੀ ਜਾਂਚ ਨਹੀਂ ਹੋ ਸਕੀ।';

  @override
  String get subscription => 'ਸਬਸਕ੍ਰਿਪਸ਼ਨ';

  @override
  String get planTrial => 'ਟ੍ਰਾਇਲ';

  @override
  String get planNormal => 'ਸਧਾਰਨ';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'ਕੋਈ ਕਿਰਿਆਸ਼ੀਲ ਪਲਾਨ ਨਹੀਂ';

  @override
  String planAnalysesPerMonth(int count) {
    return 'ਪ੍ਰਤੀ ਮਹੀਨਾ $count ਵਿਸ਼ਲੇਸ਼ਣ';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$count ਵਿਸ਼ਲੇਸ਼ਣਾਂ ਨਾਲ $days ਦਿਨਾਂ ਦਾ ਮੁਫ਼ਤ ਟ੍ਰਾਇਲ';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'ਟ੍ਰਾਇਲ ਦੇ $days ਦਿਨ ਬਾਕੀ',
      one: 'ਟ੍ਰਾਇਲ ਦਾ 1 ਦਿਨ ਬਾਕੀ',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'ਤੁਹਾਡਾ ਮੁਫ਼ਤ ਟ੍ਰਾਇਲ ਖ਼ਤਮ ਹੋ ਗਿਆ ਹੈ। ਵਿਸ਼ਲੇਸ਼ਣ ਜਾਰੀ ਰੱਖਣ ਲਈ ਕੋਈ ਪਲਾਨ ਚੁਣੋ।';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'ਇਸ ਮਿਆਦ ਵਿੱਚ $total ਵਿੱਚੋਂ $remaining ਵਿਸ਼ਲੇਸ਼ਣ ਬਾਕੀ';
  }

  @override
  String extraCredits(int count) {
    return '$count ਵਾਧੂ ਵਿਸ਼ਲੇਸ਼ਣ';
  }

  @override
  String renewsOn(String date) {
    return '$date ਨੂੰ ਨਵਿਆਇਆ ਜਾਵੇਗਾ';
  }

  @override
  String get choosePlan => 'ਪਲਾਨ ਚੁਣੋ';

  @override
  String get currentPlan => 'ਮੌਜੂਦਾ ਪਲਾਨ';

  @override
  String get subscribe => 'ਸਬਸਕ੍ਰਾਈਬ ਕਰੋ';

  @override
  String get perMonth => '/ ਮਹੀਨਾ';

  @override
  String get extraPacksTitle => 'ਹੋਰ ਚਾਹੀਦੇ ਹਨ? ਵਾਧੂ ਵਿਸ਼ਲੇਸ਼ਣ ਖ਼ਰੀਦੋ';

  @override
  String get extraPacksHint =>
      'ਵਾਧੂ ਵਿਸ਼ਲੇਸ਼ਣਾਂ ਦੀ ਮਿਆਦ ਕਦੇ ਖ਼ਤਮ ਨਹੀਂ ਹੁੰਦੀ ਅਤੇ ਇਹ ਤੁਹਾਡੇ ਮਾਸਿਕ ਕੋਟੇ ਤੋਂ ਬਾਅਦ ਵਰਤੇ ਜਾਂਦੇ ਹਨ।';

  @override
  String get buy => 'ਖ਼ਰੀਦੋ';

  @override
  String get restorePurchases => 'ਖ਼ਰੀਦਾਂ ਮੁੜ-ਬਹਾਲ ਕਰੋ';

  @override
  String get manageSubscription => 'ਸਬਸਕ੍ਰਿਪਸ਼ਨ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ';

  @override
  String get purchaseSuccess => 'ਧੰਨਵਾਦ! ਤੁਹਾਡੀ ਖ਼ਰੀਦ ਕਿਰਿਆਸ਼ੀਲ ਹੈ।';

  @override
  String get purchasePending => 'ਖ਼ਰੀਦ ਬਕਾਇਆ ਹੈ…';

  @override
  String get purchaseFailed => 'ਖ਼ਰੀਦ ਪੂਰੀ ਨਹੀਂ ਹੋ ਸਕੀ।';

  @override
  String get purchaseCanceled => 'ਖ਼ਰੀਦ ਰੱਦ ਕੀਤੀ ਗਈ।';

  @override
  String get billingUnavailable =>
      'ਇਸ ਪਲੈਟਫ਼ਾਰਮ ’ਤੇ ਹਾਲੇ ਖ਼ਰੀਦਦਾਰੀ ਉਪਲਬਧ ਨਹੀਂ ਹੈ। ਆਪਣੇ ਫ਼ੋਨ ਜਾਂ Mac ’ਤੇ ਸਬਸਕ੍ਰਾਈਬ ਕਰੋ; ਤੁਹਾਡਾ ਪਲਾਨ ਹਰ ਡਿਵਾਈਸ ’ਤੇ ਕੰਮ ਕਰੇਗਾ।';

  @override
  String get errQuotaExceeded =>
      'ਇਸ ਮਿਆਦ ਲਈ ਤੁਹਾਡੇ ਕੋਲ ਕੋਈ ਵਿਸ਼ਲੇਸ਼ਣ ਬਾਕੀ ਨਹੀਂ ਹੈ। ਆਪਣਾ ਪਲਾਨ ਅੱਪਗ੍ਰੇਡ ਕਰੋ ਜਾਂ ਵਾਧੂ ਵਿਸ਼ਲੇਸ਼ਣ ਖ਼ਰੀਦੋ।';

  @override
  String get errTrialExpired =>
      'ਤੁਹਾਡਾ ਮੁਫ਼ਤ ਟ੍ਰਾਇਲ ਖ਼ਤਮ ਹੋ ਗਿਆ ਹੈ। ਜਾਰੀ ਰੱਖਣ ਲਈ ਕੋਈ ਪਲਾਨ ਚੁਣੋ।';

  @override
  String get errNoPlan => 'AI ਵਿਸ਼ਲੇਸ਼ਣ ਲਈ ਕਿਰਿਆਸ਼ੀਲ ਪਲਾਨ ਲੋੜੀਂਦਾ ਹੈ।';

  @override
  String get viewPlans => 'ਪਲਾਨ ਦੇਖੋ';

  @override
  String get usageTitle => 'ਵਰਤੋਂ';

  @override
  String get demoPurchaseNote =>
      'ਡੈਮੋ ਬਿਲਿੰਗ: ਇਸ ਪਲੈਟਫ਼ਾਰਮ ’ਤੇ ਖ਼ਰੀਦਾਂ ਸਿਮੂਲੇਟ ਕੀਤੀਆਂ ਜਾਂਦੀਆਂ ਹਨ।';

  @override
  String get mostPopular => 'ਸਭ ਤੋਂ ਮਸ਼ਹੂਰ';

  @override
  String get bestValue => 'ਸਭ ਤੋਂ ਵਧੀਆ ਮੁੱਲ';

  @override
  String get planFeaturesCommon =>
      'ਫ਼ੋਟੋ ਪਛਾਣ, ਲਾਈਵ ਡਾਟਾ, ਚਾਰਟ, ਮਨਪਸੰਦ ਅਤੇ ਸਾਰੀਆਂ 120 ਭਾਸ਼ਾਵਾਂ ਹਰ ਪਲਾਨ ਵਿੱਚ ਸ਼ਾਮਲ ਹਨ। ਕੋਟਾ AI ਵਿਸ਼ਲੇਸ਼ਣਾਂ ’ਤੇ ਲਾਗੂ ਹੁੰਦਾ ਹੈ।';

  @override
  String get searchLanguages => 'ਭਾਸ਼ਾਵਾਂ ਖੋਜੋ…';

  @override
  String get noLanguageMatch => 'ਕੋਈ ਭਾਸ਼ਾ ਮੇਲ ਨਹੀਂ ਖਾਂਦੀ।';

  @override
  String get aiSettings => 'AI ਵਿਸ਼ਲੇਸ਼ਣ';

  @override
  String get aiLength => 'ਲੰਬਾਈ';

  @override
  String get aiDepthBrief => 'ਸੰਖੇਪ';

  @override
  String get aiDepthStandard => 'ਮਿਆਰੀ';

  @override
  String get aiDepthDeep => 'ਵਿਸਤ੍ਰਿਤ';

  @override
  String get aiDepthBriefDesc => 'ਜ਼ਰੂਰੀ ਗੱਲਾਂ, ਫਟਾਫਟ।';

  @override
  String get aiDepthStandardDesc => 'ਹਰ ਸੈਕਸ਼ਨ ਨਾਲ ਪੂਰੀ ਰਿਪੋਰਟ।';

  @override
  String get aiDepthDeepDesc =>
      'ਵੱਧ ਵੈੱਬ ਖੋਜਾਂ, ਹਮਰੁਤਬਾ ਕੰਪਨੀਆਂ ਨਾਲ ਤੁਲਨਾ ਅਤੇ ਡੂੰਘਾ ਵੇਰਵਾ।';

  @override
  String aiDepthWords(String min, String max) {
    return 'ਲਗਭਗ $min–$max ਸ਼ਬਦ';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ਵਿਸ਼ਲੇਸ਼ਣ ਲੱਗਦੇ ਹਨ',
      one: '1 ਵਿਸ਼ਲੇਸ਼ਣ ਲੱਗਦਾ ਹੈ',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'ਪਾਠਕ ਪੱਧਰ';

  @override
  String get aiReaderBeginner => 'ਸ਼ੁਰੂਆਤੀ';

  @override
  String get aiReaderExperienced => 'ਤਜਰਬੇਕਾਰ';

  @override
  String get aiReaderBeginnerDesc =>
      'ਸੌਖੀ ਭਾਸ਼ਾ; ਹਰ ਤਕਨੀਕੀ ਸ਼ਬਦ ਸਮਝਾਇਆ ਜਾਂਦਾ ਹੈ।';

  @override
  String get aiReaderExperiencedDesc => 'ਮਿਆਰੀ ਵਿੱਤੀ ਸ਼ਬਦਾਵਲੀ ਨਾਲ ਸੰਘਣਾ ਟੈਕਸਟ।';

  @override
  String get aiCounterArgument => 'ਸਭ ਤੋਂ ਮਜ਼ਬੂਤ ਵਿਰੋਧੀ ਦਲੀਲ';

  @override
  String get aiCounterArgumentDesc =>
      'ਸਾਰ ਹਮੇਸ਼ਾ ਆਪਣੇ ਹੀ ਸਿੱਟੇ ਦੇ ਵਿਰੁੱਧ ਸਭ ਤੋਂ ਮਜ਼ਬੂਤ ਦਲੀਲ ਨਾਲ ਖ਼ਤਮ ਹੁੰਦਾ ਹੈ।';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ਤੁਹਾਡੇ ਪਲਾਨ ਵਿੱਚ ਪ੍ਰਤੀ ਵਿਸ਼ਲੇਸ਼ਣ ਵੱਧ ਤੋਂ ਵੱਧ $count ਵੈੱਬ ਖੋਜਾਂ',
      one: 'ਤੁਹਾਡੇ ਪਲਾਨ ਵਿੱਚ ਪ੍ਰਤੀ ਵਿਸ਼ਲੇਸ਼ਣ ਵੱਧ ਤੋਂ ਵੱਧ 1 ਵੈੱਬ ਖੋਜ',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'ਪਲਾਨ ਮੁਤਾਬਕ ਮਿਆਰੀ ਲੰਬਾਈ: ਸਧਾਰਨ $normal, Pro $pro, Max $max, Ultra $ultra। ਸੰਖੇਪ ਵਿੱਚ 2 ਘੱਟ, ਵਿਸਤ੍ਰਿਤ ਵਿੱਚ 2 ਵੱਧ।';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ਵੱਧ ਤੋਂ ਵੱਧ $count ਵੈੱਬ ਖੋਜਾਂ',
      one: 'ਵੱਧ ਤੋਂ ਵੱਧ 1 ਵੈੱਬ ਖੋਜ',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ਪ੍ਰਤੀ ਵਿਸ਼ਲੇਸ਼ਣ $count ਵੈੱਬ ਖੋਜਾਂ',
      one: 'ਪ੍ਰਤੀ ਵਿਸ਼ਲੇਸ਼ਣ 1 ਵੈੱਬ ਖੋਜ',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'ਇਸ ਲੰਬਾਈ ਲਈ $needed ਵਿਸ਼ਲੇਸ਼ਣ ਚਾਹੀਦੇ ਹਨ, ਪਰ ਸਿਰਫ਼ $left ਬਾਕੀ ਹਨ। ਸੈਟਿੰਗਾਂ ਵਿੱਚ ਛੋਟੀ ਲੰਬਾਈ ਚੁਣੋ ਜਾਂ ਹੋਰ ਵਿਸ਼ਲੇਸ਼ਣ ਲਓ।';
  }

  @override
  String get outlookMarketMood => 'ਬਾਜ਼ਾਰ ਦਾ ਮੂਡ';

  @override
  String get moodVeryPessimistic => 'ਬਹੁਤ ਨਿਰਾਸ਼ਾਵਾਦੀ';

  @override
  String get moodPessimistic => 'ਨਿਰਾਸ਼ਾਵਾਦੀ';

  @override
  String get moodNeutral => 'ਨਿਰਪੱਖ';

  @override
  String get moodOptimistic => 'ਆਸ਼ਾਵਾਦੀ';

  @override
  String get moodVeryOptimistic => 'ਬਹੁਤ ਆਸ਼ਾਵਾਦੀ';

  @override
  String get scenarioBull => 'ਤੇਜ਼ੀ ਦਾ ਦ੍ਰਿਸ਼';

  @override
  String get scenarioBase => 'ਆਧਾਰ ਦ੍ਰਿਸ਼';

  @override
  String get scenarioBear => 'ਮੰਦੀ ਦਾ ਦ੍ਰਿਸ਼';

  @override
  String outlookCurrentPrice(String price) {
    return 'ਮੌਜੂਦਾ ਕੀਮਤ: $price';
  }

  @override
  String get outlookKeyLevels => 'ਮੁੱਖ ਪੱਧਰ';

  @override
  String get keyLevelSupport => 'ਸਪੋਰਟ';

  @override
  String get keyLevelResistance => 'ਰਜ਼ਿਸਟੈਂਸ';

  @override
  String get keyLevelAnchor => 'ਐਂਕਰ ਪੱਧਰ';

  @override
  String get upcomingEvents => 'ਆਉਣ ਵਾਲੀਆਂ ਘਟਨਾਵਾਂ';

  @override
  String get outlookChartNote =>
      'ਸੰਕੇਤਕ ਦਾਇਰੇ; ਸੰਭਾਵਨਾਵਾਂ ਮੋਟੇ ਅੰਦਾਜ਼ੇ ਹਨ, ਭਵਿੱਖਬਾਣੀਆਂ ਨਹੀਂ।';

  @override
  String get accountTitle => 'ਖਾਤਾ';

  @override
  String get signIn => 'ਸਾਈਨ ਇਨ ਕਰੋ';

  @override
  String get signOut => 'ਸਾਈਨ ਆਊਟ ਕਰੋ';

  @override
  String get notSignedIn => 'ਸਾਈਨ ਇਨ ਨਹੀਂ ਕੀਤਾ';

  @override
  String get accountBenefit =>
      'ਸਾਈਨ ਇਨ ਕਰੋ ਤਾਂ ਜੋ ਤੁਹਾਡੀ ਸਬਸਕ੍ਰਿਪਸ਼ਨ ਤੁਹਾਡੇ ਸਾਰੇ ਡਿਵਾਈਸਾਂ ’ਤੇ ਕੰਮ ਕਰੇ।';

  @override
  String get accountSyncedNote =>
      'ਤੁਹਾਡੀ ਸਬਸਕ੍ਰਿਪਸ਼ਨ ਅਤੇ ਬਾਕੀ ਵਿਸ਼ਲੇਸ਼ਣ ਹਰ ਡਿਵਾਈਸ ’ਤੇ ਇੱਕੋ ਜਿਹੇ ਰਹਿੰਦੇ ਹਨ।';

  @override
  String get signInTitle => 'WhatStock ਵਿੱਚ ਸਾਈਨ ਇਨ ਕਰੋ';

  @override
  String get emailLabel => 'ਈਮੇਲ ਪਤਾ';

  @override
  String get continueWithEmail => 'ਈਮੇਲ ਨਾਲ ਜਾਰੀ ਰੱਖੋ';

  @override
  String codeSentTo(String email) {
    return 'ਅਸੀਂ $email ’ਤੇ 6 ਅੰਕਾਂ ਦਾ ਕੋਡ ਭੇਜਿਆ ਹੈ। ਇਹ 10 ਮਿੰਟਾਂ ਲਈ ਵੈਧ ਹੈ।';
  }

  @override
  String get codeLabel => 'ਸਾਈਨ-ਇਨ ਕੋਡ';

  @override
  String get resendCode => 'ਨਵਾਂ ਕੋਡ ਭੇਜੋ';

  @override
  String get useDifferentEmail => 'ਕੋਈ ਹੋਰ ਈਮੇਲ ਵਰਤੋ';

  @override
  String get errInvalidCode => 'ਕੋਡ ਗ਼ਲਤ ਹੈ ਜਾਂ ਉਸਦੀ ਮਿਆਦ ਖ਼ਤਮ ਹੋ ਗਈ ਹੈ।';

  @override
  String get errInvalidEmail => 'ਕਿਰਪਾ ਕਰਕੇ ਇੱਕ ਵੈਧ ਈਮੇਲ ਪਤਾ ਦਰਜ ਕਰੋ।';

  @override
  String get errSignInFailed =>
      'ਸਾਈਨ ਇਨ ਨਹੀਂ ਹੋ ਸਕਿਆ। ਆਪਣਾ ਕਨੈਕਸ਼ਨ ਜਾਂਚੋ ਅਤੇ ਮੁੜ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get checkoutWaiting =>
      'ਆਪਣੇ ਬ੍ਰਾਊਜ਼ਰ ਵਿੱਚ ਭੁਗਤਾਨ ਪੂਰਾ ਕਰੋ। ਪੂਰਾ ਹੁੰਦੇ ਹੀ ਐਪ ਆਪਣੇ-ਆਪ ਅੱਪਡੇਟ ਹੋ ਜਾਵੇਗੀ।';

  @override
  String get paymentViaStripe =>
      'Stripe ਰਾਹੀਂ ਤੁਹਾਡੇ ਬ੍ਰਾਊਜ਼ਰ ਵਿੱਚ ਸੁਰੱਖਿਅਤ ਭੁਗਤਾਨ। ਕਦੇ ਵੀ ਰੱਦ ਕਰੋ।';

  @override
  String get paymentViaStore =>
      'ਬਿਲਿੰਗ ਤੁਹਾਡੇ App Store ਜਾਂ Google Play ਖਾਤੇ ਰਾਹੀਂ ਹੁੰਦੀ ਹੈ। ਸਟੋਰ ਦੀਆਂ ਸੈਟਿੰਗਾਂ ਵਿੱਚ ਕਦੇ ਵੀ ਰੱਦ ਕਰੋ।';

  @override
  String get keySpace => 'ਸਪੇਸ';

  @override
  String get doubleOptionTitle => 'Option ਨੂੰ ਦੋ ਵਾਰ ਦਬਾਓ';

  @override
  String get doubleOptionSubtitle =>
      'Option ਕੁੰਜੀ ਨੂੰ ਛੇਤੀ-ਛੇਤੀ ਦੋ ਵਾਰ ਦਬਾਉਣ ਨਾਲ ਵੀ WhatStock ਖੁੱਲ੍ਹ ਜਾਂਦਾ ਹੈ।';

  @override
  String get doubleOptionPermission =>
      'ਦੂਜੀਆਂ ਐਪਾਂ ਵਿੱਚ ਵੀ ਇਹ ਕੰਮ ਕਰੇ, ਇਸ ਲਈ ਸਿਸਟਮ ਸੈਟਿੰਗਾਂ → ਪਰਦੇਦਾਰੀ ਅਤੇ ਸੁਰੱਖਿਆ → ਇਨਪੁੱਟ ਨਿਗਰਾਨੀ ਵਿੱਚ WhatStock ਨੂੰ ਇਜਾਜ਼ਤ ਦਿਓ, ਫਿਰ ਐਪ ਨੂੰ ਮੁੜ ਖੋਲ੍ਹੋ।';

  @override
  String get openSystemSettings => 'ਸਿਸਟਮ ਸੈਟਿੰਗਾਂ ਖੋਲ੍ਹੋ';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'WhatStock ਨੂੰ ਕਿਤੋਂ ਵੀ ਖੋਲ੍ਹਣ ਲਈ $shortcut ਦਬਾਓ ਜਾਂ Option ਨੂੰ ਦੋ ਵਾਰ ਦਬਾਓ।';
  }

  @override
  String get scenarioMostLikely => 'ਸਭ ਤੋਂ ਸੰਭਾਵੀ';

  @override
  String get longTermToday => 'ਅੱਜ';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years ਸਾਲ',
      one: '1 ਸਾਲ',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range ਪ੍ਰਤੀ ਸਾਲ';
  }

  @override
  String longTermLikely(String price) {
    return 'ਸਭ ਤੋਂ ਸੰਭਾਵੀ $price';
  }

  @override
  String get confidenceLow => 'ਘੱਟ ਭਰੋਸਾ';

  @override
  String get confidenceMedium => 'ਦਰਮਿਆਨਾ ਭਰੋਸਾ';

  @override
  String get confidenceHigh => 'ਉੱਚ ਭਰੋਸਾ';

  @override
  String get longTermNote =>
      'ਲੰਬੇ ਸਮੇਂ ਦੇ ਦਾਇਰੇ ਦੱਸੀਆਂ ਗਈਆਂ ਧਾਰਨਾਵਾਂ ’ਤੇ ਆਧਾਰਿਤ ਹਨ ਅਤੇ ਸਮੇਂ ਨਾਲ ਚੌੜੇ ਹੁੰਦੇ ਜਾਂਦੇ ਹਨ। ਕੀਮਤਾਂ ਵਿੱਚ ਲਾਭਅੰਸ਼ ਸ਼ਾਮਲ ਨਹੀਂ ਹੈ। ਇਹ ਮੋਟੇ ਅੰਦਾਜ਼ੇ ਹਨ, ਭਵਿੱਖਬਾਣੀਆਂ ਨਹੀਂ।';

  @override
  String get portfolio => 'ਪੋਰਟਫ਼ੋਲੀਓ';

  @override
  String get portfolioEmpty =>
      'ਹਾਲੇ ਇੱਥੇ ਕੁਝ ਨਹੀਂ ਹੈ। ਕੋਈ ਸ਼ੇਅਰ ਖੋਲ੍ਹੋ ਅਤੇ ਆਪਣੀ ਹੋਲਡਿੰਗ ’ਤੇ ਨਜ਼ਰ ਰੱਖਣ ਲਈ “ਪੋਰਟਫ਼ੋਲੀਓ ਵਿੱਚ ਸ਼ਾਮਲ ਕਰੋ” ’ਤੇ ਟੈਪ ਕਰੋ।';

  @override
  String get portfolioLocalNote =>
      'ਸਿਰਫ਼ ਇਸੇ ਡਿਵਾਈਸ ’ਤੇ ਸੁਰੱਖਿਅਤ ਹੈ। ਕੁੱਲ ਜੋੜ ECB ਦੀਆਂ ਸੰਦਰਭ ਦਰਾਂ ’ਤੇ ਬਦਲੇ ਜਾਂਦੇ ਹਨ; ਕੀਮਤਾਂ ਦੇਰੀ ਨਾਲ ਹੋ ਸਕਦੀਆਂ ਹਨ।';

  @override
  String get addToPortfolio => 'ਪੋਰਟਫ਼ੋਲੀਓ ਵਿੱਚ ਸ਼ਾਮਲ ਕਰੋ';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol ਸ਼ਾਮਲ ਕਰੋ';
  }

  @override
  String get portfolioQuantity => 'ਸ਼ੇਅਰਾਂ ਦੀ ਗਿਣਤੀ';

  @override
  String portfolioBuyPrice(String currency) {
    return 'ਪ੍ਰਤੀ ਸ਼ੇਅਰ ਕੀਮਤ ($currency)';
  }

  @override
  String get portfolioBuyDate => 'ਖ਼ਰੀਦ ਦੀ ਮਿਤੀ';

  @override
  String get portfolioAdd => 'ਸ਼ਾਮਲ ਕਰੋ';

  @override
  String get portfolioInvalidNumber => 'ਸਿਫ਼ਰ ਤੋਂ ਵੱਡੀ ਸੰਖਿਆ ਦਰਜ ਕਰੋ।';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol ਤੁਹਾਡੇ ਪੋਰਟਫ਼ੋਲੀਓ ਵਿੱਚ ਸ਼ਾਮਲ ਕੀਤਾ ਗਿਆ।';
  }

  @override
  String get portfolioTotalValue => 'ਕੁੱਲ ਮੁੱਲ';

  @override
  String get portfolioToday => 'ਅੱਜ';

  @override
  String get portfolioGainLoss => 'ਮੁਨਾਫ਼ਾ/ਘਾਟਾ';

  @override
  String get portfolioInvested => 'ਨਿਵੇਸ਼ ਕੀਤਾ';

  @override
  String get portfolioAllocation => 'ਵੰਡ';

  @override
  String get portfolioPositions => 'ਪੁਜ਼ੀਸ਼ਨਾਂ';

  @override
  String portfolioAvgCost(String price) {
    return 'ਔਸਤ ਲਾਗਤ $price';
  }

  @override
  String get portfolioYourPosition => 'ਤੁਹਾਡੀ ਪੁਜ਼ੀਸ਼ਨ';

  @override
  String get portfolioPurchases => 'ਖ਼ਰੀਦਾਂ';

  @override
  String get portfolioRemove => 'ਹਟਾਓ';

  @override
  String get portfolioExcluded =>
      'ਜਿਨ੍ਹਾਂ ਪੁਜ਼ੀਸ਼ਨਾਂ ਦੀ ਕੀਮਤ ਜਾਂ ਵਟਾਂਦਰਾ ਦਰ ਨਹੀਂ ਹੈ, ਉਹ ਕੁੱਲ ਜੋੜ ਵਿੱਚ ਸ਼ਾਮਲ ਨਹੀਂ ਹਨ।';

  @override
  String get priceAlerts => 'ਕੀਮਤ ਅਲਰਟ';

  @override
  String get setPriceAlert => 'ਕੀਮਤ ਅਲਰਟ ਸੈੱਟ ਕਰੋ';

  @override
  String alertDialogTitle(String symbol) {
    return 'ਕੀਮਤ ਅਲਰਟ · $symbol';
  }

  @override
  String get alertKindAbove => 'ਇਸ ਤੋਂ ਉੱਪਰ ਜਾਵੇ';

  @override
  String get alertKindBelow => 'ਇਸ ਤੋਂ ਹੇਠਾਂ ਆਵੇ';

  @override
  String get alertKindMove => 'ਇੱਕ ਦਿਨ ਵਿੱਚ ਵੱਡੀ ਹਿਲਜੁਲ';

  @override
  String alertTargetPrice(String currency) {
    return 'ਕੀਮਤ ($currency)';
  }

  @override
  String get alertMovePercent => 'ਰੋਜ਼ਾਨਾ ਬਦਲਾਅ (%)';

  @override
  String get alertAlreadyMet => 'ਕੀਮਤ ਪਹਿਲਾਂ ਹੀ ਇਸ ਪੱਧਰ ਤੋਂ ਪਾਰ ਹੈ।';

  @override
  String get alertSave => 'ਅਲਰਟ ਸੈੱਟ ਕਰੋ';

  @override
  String alertCreated(String symbol) {
    return '$symbol ਲਈ ਅਲਰਟ ਸੈੱਟ ਹੋ ਗਿਆ।';
  }

  @override
  String get alertsEmpty =>
      'ਹਾਲੇ ਕੋਈ ਕੀਮਤ ਅਲਰਟ ਨਹੀਂ। ਸੈੱਟ ਕਰਨ ਲਈ ਕੋਈ ਸ਼ੇਅਰ ਖੋਲ੍ਹੋ ਅਤੇ ਘੰਟੀ ’ਤੇ ਟੈਪ ਕਰੋ।';

  @override
  String get alertsNote =>
      'ਜਦੋਂ ਤੱਕ WhatStock ਚੱਲ ਰਿਹਾ ਹੈ, ਅਲਰਟ ਹਰ 5 ਮਿੰਟਾਂ ਬਾਅਦ ਜਾਂਚੇ ਜਾਂਦੇ ਹਨ। ਕੰਪਿਊਟਰ ’ਤੇ ਇਹ ਮੀਨੂ ਬਾਰ ਜਾਂ ਸਿਸਟਮ ਟ੍ਰੇ ਵਿੱਚ ਚੱਲਦਾ ਰਹਿੰਦਾ ਹੈ; ਫ਼ੋਨ ’ਤੇ ਫ਼ਿਲਹਾਲ ਅਲਰਟ ਉਦੋਂ ਹੀ ਆਉਂਦੇ ਹਨ ਜਦੋਂ ਐਪ ਖੁੱਲ੍ਹੀ ਹੋਵੇ।';

  @override
  String alertDescAbove(String price) {
    return '$price ਤੋਂ ਉੱਪਰ';
  }

  @override
  String alertDescBelow(String price) {
    return '$price ਤੋਂ ਹੇਠਾਂ';
  }

  @override
  String alertDescMove(String percent) {
    return 'ਰੋਜ਼ਾਨਾ ਬਦਲਾਅ ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return '$date ਨੂੰ $price ’ਤੇ ਚਾਲੂ ਹੋਇਆ';
  }

  @override
  String get alertRearm => 'ਮੁੜ ਚਾਲੂ ਕਰੋ';

  @override
  String get alertDelete => 'ਮਿਟਾਓ';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol $price ਤੋਂ ਉੱਪਰ ਗਿਆ';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol $price ਤੋਂ ਹੇਠਾਂ ਆਇਆ';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol ਵਿੱਚ ਅੱਜ $percent ਦਾ ਬਦਲਾਅ';
  }

  @override
  String alertHitBody(String price) {
    return 'ਮੌਜੂਦਾ ਕੀਮਤ: $price';
  }

  @override
  String get alertOpen => 'ਖੋਲ੍ਹੋ';

  @override
  String get keepInTrayTitle => 'ਵਿੰਡੋ ਬੰਦ ਹੋਣ ’ਤੇ ਵੀ ਚੱਲਦਾ ਰਹੇ';

  @override
  String get keepInTraySubtitle =>
      'WhatStock ਮੀਨੂ ਬਾਰ ਜਾਂ ਸਿਸਟਮ ਟ੍ਰੇ ਵਿੱਚ ਰਹਿੰਦਾ ਹੈ, ਤਾਂ ਜੋ ਸ਼ਾਰਟਕੱਟ ਅਤੇ ਕੀਮਤ ਅਲਰਟ ਕੰਮ ਕਰਦੇ ਰਹਿਣ।';

  @override
  String get termsOfUse => 'ਵਰਤੋਂ ਦੀਆਂ ਸ਼ਰਤਾਂ';

  @override
  String get privacyPolicy => 'ਪਰਦੇਦਾਰੀ ਨੀਤੀ';

  @override
  String get subscriptionLegal =>
      'ਸਬਸਕ੍ਰਿਪਸ਼ਨ ਹਰ ਮਹੀਨੇ ਆਪਣੇ-ਆਪ ਨਵਿਆਈ ਜਾਂਦੀ ਹੈ, ਜਦੋਂ ਤੱਕ ਤੁਸੀਂ ਇਸਨੂੰ ਰੱਦ ਨਹੀਂ ਕਰਦੇ। ਸਬਸਕ੍ਰਾਈਬ ਕਰਕੇ ਤੁਸੀਂ ਵਰਤੋਂ ਦੀਆਂ ਸ਼ਰਤਾਂ ਅਤੇ ਪਰਦੇਦਾਰੀ ਨੀਤੀ ਸਵੀਕਾਰ ਕਰਦੇ ਹੋ।';

  @override
  String get deleteAccount => 'ਖਾਤਾ ਮਿਟਾਓ';

  @override
  String get deleteAccountTitle => 'ਕੀ ਤੁਸੀਂ ਆਪਣਾ ਖਾਤਾ ਮਿਟਾਉਣਾ ਚਾਹੁੰਦੇ ਹੋ?';

  @override
  String get deleteAccountBody =>
      'ਤੁਹਾਡਾ ਖਾਤਾ ਅਤੇ ਸਾਡੇ ਸਰਵਰ ’ਤੇ ਰੱਖਿਆ ਸਭ ਕੁਝ (ਈਮੇਲ, ਕੋਟਾ, ਵਰਤੋਂ) ਹਮੇਸ਼ਾ ਲਈ ਮਿਟ ਜਾਵੇਗਾ, ਅਤੇ ਨਾ ਵਰਤੇ ਗਏ ਵਿਸ਼ਲੇਸ਼ਣ ਗੁਆਚ ਜਾਣਗੇ। ਬ੍ਰਾਊਜ਼ਰ ਵਿੱਚ ਭੁਗਤਾਨ ਕੀਤੀ ਸਬਸਕ੍ਰਿਪਸ਼ਨ ਤੁਰੰਤ ਰੱਦ ਹੋ ਜਾਂਦੀ ਹੈ; App Store ਜਾਂ Google Play ਦੀ ਸਬਸਕ੍ਰਿਪਸ਼ਨ ਸਟੋਰ ਦੀਆਂ ਸੈਟਿੰਗਾਂ ਵਿੱਚ ਰੱਦ ਕਰਨੀ ਪਵੇਗੀ।';

  @override
  String get deleteLocalData =>
      'ਇਸ ਡਿਵਾਈਸ ਦਾ ਡਾਟਾ ਵੀ ਮਿਟਾਓ (ਪੋਰਟਫ਼ੋਲੀਓ, ਅਲਰਟ, ਮਨਪਸੰਦ, ਇਤਿਹਾਸ, ਸੁਰੱਖਿਅਤ ਕੀਤੇ ਵਿਸ਼ਲੇਸ਼ਣ)';

  @override
  String get deleteAccountConfirm => 'ਹਮੇਸ਼ਾ ਲਈ ਮਿਟਾਓ';

  @override
  String get accountDeleted => 'ਤੁਹਾਡਾ ਖਾਤਾ ਮਿਟਾ ਦਿੱਤਾ ਗਿਆ ਹੈ।';

  @override
  String get errDeleteAccount =>
      'ਖਾਤਾ ਮਿਟਾਇਆ ਨਹੀਂ ਜਾ ਸਕਿਆ। ਆਪਣਾ ਕਨੈਕਸ਼ਨ ਜਾਂਚੋ ਅਤੇ ਮੁੜ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get aiTrialBriefNote =>
      'ਟ੍ਰਾਇਲ ਵਿਸ਼ਲੇਸ਼ਣ ਸੰਖੇਪ ਹੁੰਦੇ ਹਨ ਅਤੇ ਤੇਜ਼ AI ਮਾਡਲ ਨਾਲ ਬਣਾਏ ਜਾਂਦੇ ਹਨ। ਪਲਾਨ ਨਾਲ ਤੁਹਾਨੂੰ ਸਾਡਾ ਸਭ ਤੋਂ ਸਮਰੱਥ AI, ਵੱਧ ਵੈੱਬ ਖੋਜਾਂ, ਅਤੇ ਮਿਆਰੀ ਤੇ ਵਿਸਤ੍ਰਿਤ ਲੰਬਾਈ ਮਿਲਦੀ ਹੈ।';

  @override
  String get billingMonthly => 'ਮਹੀਨਾਵਾਰ';

  @override
  String get billingYearly => 'ਸਾਲਾਨਾ';

  @override
  String get yearlyDiscount => '2 ਮਹੀਨੇ ਮੁਫ਼ਤ';

  @override
  String get perYear => '/ ਸਾਲ';

  @override
  String pricePerMonthApprox(String price) {
    return 'ਪ੍ਰਤੀ ਮਹੀਨਾ ≈ $price';
  }

  @override
  String get subscriptionLegalYearly =>
      'ਸਾਲਾਨਾ ਸਬਸਕ੍ਰਿਪਸ਼ਨ ਹਰ ਸਾਲ ਆਪਣੇ-ਆਪ ਨਵਿਆਈ ਜਾਂਦੀ ਹੈ, ਜਦੋਂ ਤੱਕ ਤੁਸੀਂ ਇਸਨੂੰ ਰੱਦ ਨਹੀਂ ਕਰਦੇ। ਸਬਸਕ੍ਰਾਈਬ ਕਰਕੇ ਤੁਸੀਂ ਵਰਤੋਂ ਦੀਆਂ ਸ਼ਰਤਾਂ ਅਤੇ ਪਰਦੇਦਾਰੀ ਨੀਤੀ ਸਵੀਕਾਰ ਕਰਦੇ ਹੋ।';

  @override
  String get myAnalyses => 'ਮੇਰੇ ਵਿਸ਼ਲੇਸ਼ਣ';

  @override
  String get navAlerts => 'ਅਲਰਟ';

  @override
  String get inviteTitle => 'ਬੰਦ ਪ੍ਰੀਵਿਊ';

  @override
  String get inviteBody =>
      'WhatStock ਫ਼ਿਲਹਾਲ ਸਿਰਫ਼ ਸੱਦੇ ਰਾਹੀਂ ਉਪਲਬਧ ਹੈ। ਤੁਹਾਨੂੰ ਮਿਲਿਆ ਸੱਦਾ ਕੋਡ ਦਰਜ ਕਰੋ।';

  @override
  String get inviteCodeLabel => 'ਸੱਦਾ ਕੋਡ';

  @override
  String get inviteContinue => 'ਜਾਰੀ ਰੱਖੋ';

  @override
  String get inviteInvalid => 'ਇਹ ਸੱਦਾ ਕੋਡ ਵੈਧ ਨਹੀਂ ਹੈ।';

  @override
  String get inviteExpired =>
      'ਇਸ ਸੱਦੇ ਦੀ ਮਿਆਦ ਖ਼ਤਮ ਹੋ ਗਈ ਹੈ। ਜਿਸ ਨੇ ਤੁਹਾਨੂੰ ਸੱਦਾ ਦਿੱਤਾ ਸੀ, ਉਸ ਤੋਂ ਨਵਾਂ ਕੋਡ ਮੰਗੋ।';

  @override
  String get inviteDeviceLimit =>
      'ਇਹ ਸੱਦਾ ਕੋਡ ਪਹਿਲਾਂ ਹੀ ਵੱਧ ਤੋਂ ਵੱਧ ਗਿਣਤੀ ਦੇ ਡਿਵਾਈਸਾਂ \'ਤੇ ਵਰਤਿਆ ਜਾ ਰਿਹਾ ਹੈ।';

  @override
  String get previewConfidential => 'ਗੁਪਤ ਪ੍ਰੀਵਿਊ';

  @override
  String get errPreviewDailyLimit =>
      'ਇਸ ਪ੍ਰੀਵਿਊ ਦੀ ਅੱਜ ਦੀ ਵਿਸ਼ਲੇਸ਼ਣ ਸੀਮਾ ਪੂਰੀ ਹੋ ਗਈ ਹੈ। ਕੱਲ੍ਹ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ਘੰਟੇ ਪਹਿਲਾਂ',
      one: '1 ਘੰਟਾ ਪਹਿਲਾਂ',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ਦਿਨ ਪਹਿਲਾਂ',
      one: '1 ਦਿਨ ਪਹਿਲਾਂ',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'ਕੀ ਇਹ ਵਿਸ਼ਲੇਸ਼ਣ ਅੱਪਡੇਟ ਕਰਨਾ ਹੈ?';

  @override
  String staleBody(String age) {
    return 'ਇਹ $age ਬਣਾਇਆ ਗਿਆ ਸੀ। ਉਦੋਂ ਤੋਂ ਕੀਮਤਾਂ, ਖ਼ਬਰਾਂ ਅਤੇ ਨਤੀਜੇ ਬਦਲ ਚੁੱਕੇ ਹੋ ਸਕਦੇ ਹਨ।';
  }

  @override
  String get staleKeep => 'ਪਹਿਲਾਂ ਵਾਲਾ ਦਿਖਾਓ';

  @override
  String get staleRefresh => 'ਨਵਾਂ ਬਣਾਓ';

  @override
  String seeAll(int count) {
    return 'ਸਾਰੇ ਦੇਖੋ ($count)';
  }

  @override
  String get searchAnalyses => 'ਆਪਣੇ ਵਿਸ਼ਲੇਸ਼ਣ ਖੋਜੋ';

  @override
  String get deleteAnalysis => 'ਮਿਟਾਓ';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol ਵਿਸ਼ਲੇਸ਼ਣ ਮਿਟਾਇਆ ਗਿਆ';
  }

  @override
  String get keyLevelAlertHint =>
      'ਕੀਮਤ ਕਿਸੇ ਪੱਧਰ ’ਤੇ ਪਹੁੰਚਣ ’ਤੇ ਅਲਰਟ ਲੈਣ ਲਈ ਉਸ ਪੱਧਰ ’ਤੇ ਟੈਪ ਕਰੋ।';

  @override
  String get shareAnalysisTitle => 'ਵਿਸ਼ਲੇਸ਼ਣ ਸਾਂਝਾ ਕਰੋ';

  @override
  String get shareAsImage => 'ਤਸਵੀਰ ਵਜੋਂ ਸਾਂਝਾ ਕਰੋ';

  @override
  String get shareAsText => 'ਟੈਕਸਟ ਵਜੋਂ ਸਾਂਝਾ ਕਰੋ';

  @override
  String get shareCardFooter => 'WhatStock ਨਾਲ ਬਣਾਇਆ ਗਿਆ';

  @override
  String get shareCardDisclaimer => 'AI ਵਿਸ਼ਲੇਸ਼ਣ · ਨਿਵੇਸ਼ ਸਲਾਹ ਨਹੀਂ';

  @override
  String get referralTitle => 'ਦੋਸਤਾਂ ਨੂੰ ਸੱਦਾ ਦਿਓ';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ਵਾਧੂ ਵਿਸ਼ਲੇਸ਼ਣ ਮਿਲਣਗੇ',
      one: '1 ਵਾਧੂ ਵਿਸ਼ਲੇਸ਼ਣ ਮਿਲੇਗਾ',
    );
    return 'ਆਪਣਾ ਕੋਡ ਸਾਂਝਾ ਕਰੋ। ਤੁਹਾਡੇ ਦੋਸਤ ਨੂੰ ਤੁਰੰਤ $_temp0, ਅਤੇ ਉਨ੍ਹਾਂ ਦੇ ਪਹਿਲੇ ਵਿਸ਼ਲੇਸ਼ਣ ਤੋਂ ਬਾਅਦ ਤੁਹਾਨੂੰ ਵੀ ਇੰਨਾ ਹੀ ਮਿਲੇਗਾ।';
  }

  @override
  String get referralYourCode => 'ਤੁਹਾਡਾ ਕੋਡ';

  @override
  String referralStats(int invited, int rewarded) {
    return 'ਸੱਦੇ ਗਏ: $invited · ਇਨਾਮ ਮਿਲਿਆ: $rewarded';
  }

  @override
  String get referralHaveCode => 'ਕੀ ਤੁਹਾਡੇ ਕੋਲ ਕਿਸੇ ਦੋਸਤ ਦਾ ਕੋਡ ਹੈ?';

  @override
  String get referralRedeem => 'ਰਿਡੀਮ ਕਰੋ';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ਵਾਧੂ ਵਿਸ਼ਲੇਸ਼ਣ ਜੋੜੇ ਗਏ। ਜੀ ਆਇਆਂ ਨੂੰ!',
      one: '1 ਵਾਧੂ ਵਿਸ਼ਲੇਸ਼ਣ ਜੋੜਿਆ ਗਿਆ। ਜੀ ਆਇਆਂ ਨੂੰ!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'ਇਹ ਕੋਡ ਮੌਜੂਦ ਨਹੀਂ ਹੈ। ਜਾਂਚ ਕਰਕੇ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get referralErrOwn => 'ਤੁਸੀਂ ਆਪਣਾ ਕੋਡ ਰਿਡੀਮ ਨਹੀਂ ਕਰ ਸਕਦੇ।';

  @override
  String get referralErrAlready =>
      'ਤੁਸੀਂ ਪਹਿਲਾਂ ਹੀ ਕਿਸੇ ਦੋਸਤ ਦਾ ਕੋਡ ਰਿਡੀਮ ਕਰ ਚੁੱਕੇ ਹੋ।';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ਵਾਧੂ ਵਿਸ਼ਲੇਸ਼ਣ ਮਿਲਣਗੇ',
      one: '1 ਵਾਧੂ ਵਿਸ਼ਲੇਸ਼ਣ ਮਿਲੇਗਾ',
    );
    return 'WhatStock ਮੇਰੇ ਲਈ ਸ਼ੇਅਰਾਂ ਦਾ ਵਿਸ਼ਲੇਸ਼ਣ ਕਰਦਾ ਹੈ: ਸ਼ੇਅਰ ਦੀ ਫੋਟੋ ਖਿੱਚੋ ਅਤੇ AI ਉਸਨੂੰ ਸਮਝਾਉਂਦੀ ਹੈ। ਮੇਰੇ ਕੋਡ $code ਨਾਲ ਤੁਹਾਨੂੰ $_temp0।';
  }

  @override
  String get referralCopied => 'ਕੋਡ ਕਾਪੀ ਹੋ ਗਿਆ';

  @override
  String get onboardTitle1 => 'ਸ਼ੇਅਰ ਦੀ ਫ਼ੋਟੋ ਖਿੱਚੋ';

  @override
  String get onboardBody1 =>
      'ਬ੍ਰੋਕਰੇਜ ਐਪ ਦੀ ਸਕ੍ਰੀਨ, ਅਖ਼ਬਾਰ ਜਾਂ ਕੰਪਨੀ ਦਾ ਲੋਗੋ ਕਾਫ਼ੀ ਹੈ: WhatStock ਸ਼ੇਅਰ ਨੂੰ ਪਛਾਣਦਾ ਹੈ ਅਤੇ ਉਸਦੀ ਕੀਮਤ, ਚਾਰਟ ਅਤੇ ਮੁੱਖ ਅੰਕੜੇ ਦਿਖਾਉਂਦਾ ਹੈ।';

  @override
  String get onboardTitle2 => 'ਕੁਝ ਮਿੰਟਾਂ ਵਿੱਚ ਸਮਝੋ';

  @override
  String get onboardBody2 =>
      'AI ਵਿਸ਼ਲੇਸ਼ਣ ਦੱਸਦਾ ਹੈ ਕਿ ਸ਼ੇਅਰ ਨੂੰ ਕੀ ਹਿਲਾਉਂਦਾ ਹੈ, ਜੋਖਮ ਕੀ ਹਨ, ਮੁਲਾਂਕਣ ਕੀ ਹੈ ਅਤੇ ਕੀਮਤ ਕਿੱਧਰ ਜਾ ਸਕਦੀ ਹੈ ਇਸਦੇ ਤਿੰਨ ਦ੍ਰਿਸ਼ – ਸਰੋਤਾਂ ਸਮੇਤ ਅਤੇ ਤੁਹਾਡੀ ਭਾਸ਼ਾ ਵਿੱਚ।';

  @override
  String get onboardTitle3 => 'ਹਮੇਸ਼ਾ ਅੱਪਡੇਟ ਰਹੋ';

  @override
  String get onboardBody3 =>
      'ਮਨਪਸੰਦ, ਤੁਹਾਡਾ ਪੋਰਟਫ਼ੋਲੀਓ ਅਤੇ ਕੀਮਤ ਅਲਰਟ ਤੁਹਾਨੂੰ ਜਾਣਕਾਰੀ ਦਿੰਦੇ ਰਹਿੰਦੇ ਹਨ। ਤੁਹਾਡੇ ਵਿਸ਼ਲੇਸ਼ਣ ਤੁਹਾਡੀ ਡਿਵਾਈਸ \'ਤੇ ਰਹਿੰਦੇ ਹਨ, ਦੁਬਾਰਾ ਖੋਲ੍ਹਣ ਲਈ ਤਿਆਰ।';

  @override
  String get onboardNext => 'ਅੱਗੇ';

  @override
  String get onboardStart => 'ਸ਼ੁਰੂ ਕਰੋ';

  @override
  String get onboardSkip => 'ਛੱਡੋ';

  @override
  String changesTitle(String date) {
    return 'ਪਿਛਲੇ ਵਿਸ਼ਲੇਸ਼ਣ ਤੋਂ ਬਾਅਦ ($date)';
  }

  @override
  String get changesPrice => 'ਕੀਮਤ';

  @override
  String get changesNoMajor => 'ਨਜ਼ਰੀਏ ਵਿੱਚ ਕੋਈ ਖ਼ਾਸ ਬਦਲਾਅ ਨਹੀਂ ਆਇਆ।';

  @override
  String get changesPreviousSummary => 'ਪਿਛਲਾ ਸਾਰ';

  @override
  String get telemetryTitle => 'WhatStock ਨੂੰ ਬਿਹਤਰ ਬਣਾਉਣ ਵਿੱਚ ਮਦਦ ਕਰੋ';

  @override
  String get telemetryBody =>
      'ਗੁਮਨਾਮ ਵਰਤੋਂ ਅੰਕੜੇ ਅਤੇ ਕ੍ਰੈਸ਼ ਰਿਪੋਰਟਾਂ ਸਾਂਝੀਆਂ ਕਰੋ: ਕਿਹੜੀਆਂ ਵਿਸ਼ੇਸ਼ਤਾਵਾਂ ਵਰਤੀਆਂ ਜਾਂਦੀਆਂ ਹਨ ਅਤੇ ਕੀ ਗਲਤ ਹੋਇਆ। ਤੁਹਾਡੇ ਸ਼ੇਅਰ, ਵਿਸ਼ਲੇਸ਼ਣ ਜਾਂ ਨਿੱਜੀ ਡਾਟਾ ਕਦੇ ਨਹੀਂ। ਤੁਸੀਂ ਇਸਨੂੰ ਕਿਸੇ ਵੀ ਸਮੇਂ ਸੈਟਿੰਗਾਂ ਵਿੱਚ ਬਦਲ ਸਕਦੇ ਹੋ।';

  @override
  String get telemetryAllow => 'ਇਜਾਜ਼ਤ ਦਿਓ';

  @override
  String get telemetryDecline => 'ਨਹੀਂ, ਧੰਨਵਾਦ';

  @override
  String get telemetrySetting => 'ਗੁਮਨਾਮ ਅੰਕੜੇ ਅਤੇ ਕ੍ਰੈਸ਼ ਰਿਪੋਰਟਾਂ';

  @override
  String get telemetrySettingHint =>
      'ਵਿਸ਼ੇਸ਼ਤਾਵਾਂ ਕਿੰਨੀ ਵਾਰ ਵਰਤੀਆਂ ਜਾਂਦੀਆਂ ਹਨ ਅਤੇ ਗੜਬੜੀ ਰਿਪੋਰਟਾਂ, ਨਿੱਜੀ ਡਾਟਾ ਜਾਂ ਤੁਹਾਡੀਆਂ ਖੋਜਾਂ ਅਤੇ ਵਿਸ਼ਲੇਸ਼ਣਾਂ ਦੀ ਸਮੱਗਰੀ ਤੋਂ ਬਿਨਾਂ।';

  @override
  String get askButton => 'ਇਸ ਵਿਸ਼ਲੇਸ਼ਣ ਬਾਰੇ ਪੁੱਛੋ';

  @override
  String askTitle(String symbol) {
    return '$symbol ਬਾਰੇ ਸਵਾਲ';
  }

  @override
  String get askIntro =>
      'ਵਿਸ਼ਲੇਸ਼ਣ ਬਾਰੇ ਕੁਝ ਵੀ ਪੁੱਛੋ: ਕਿਸੇ ਜੋਖਮ ਦਾ ਕੀ ਮਤਲਬ ਹੈ, ਕਿਹੜੀ ਗੱਲ ਸੰਭਾਵਨਾਵਾਂ ਬਦਲ ਸਕਦੀ ਹੈ, ਕੋਈ ਅੰਕੜਾ ਕਿਵੇਂ ਕੱਢਿਆ ਗਿਆ। ਜਵਾਬ ਇਸ ਵਿਸ਼ਲੇਸ਼ਣ ’ਤੇ ਆਧਾਰਿਤ ਹਨ ਅਤੇ ਇਹ ਨਿਵੇਸ਼ ਸਲਾਹ ਨਹੀਂ ਹਨ।';

  @override
  String get askHint => 'ਕੋਈ ਸਵਾਲ ਪੁੱਛੋ…';

  @override
  String get askSend => 'ਭੇਜੋ';

  @override
  String get askThinking => 'ਸੋਚਿਆ ਜਾ ਰਿਹਾ ਹੈ…';

  @override
  String get askSuggest1 => 'ਸਭ ਤੋਂ ਵੱਡਾ ਜੋਖਮ ਕੀ ਹੈ?';

  @override
  String get askSuggest2 => 'ਕਿਹੜੀ ਗੱਲ ਸੰਭਾਵਨਾਵਾਂ ਬਦਲ ਸਕਦੀ ਹੈ?';

  @override
  String get askSuggest3 => 'ਸੌਖੇ ਸ਼ਬਦਾਂ ਵਿੱਚ ਸਮਝਾਓ';

  @override
  String get askMaxReached =>
      'ਇਸ ਵਿਸ਼ਲੇਸ਼ਣ ਲਈ ਇਹ ਆਖ਼ਰੀ ਸਵਾਲ ਸੀ। ਹੋਰ ਪੁੱਛਣ ਲਈ ਨਵਾਂ ਵਿਸ਼ਲੇਸ਼ਣ ਬਣਾਓ।';

  @override
  String get errAskLimit =>
      'ਤੁਸੀਂ ਅੱਜ ਦੀ ਸਵਾਲਾਂ ਦੀ ਸੀਮਾ ’ਤੇ ਪਹੁੰਚ ਗਏ ਹੋ। ਕੱਲ੍ਹ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';
}
