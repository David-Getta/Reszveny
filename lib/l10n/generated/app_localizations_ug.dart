// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Uighur Uyghur (`ug`).
class AppLocalizationsUg extends AppLocalizations {
  AppLocalizationsUg([String locale = 'ug']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'پاي چېكىنىڭ سۈرىتىنى تارتىپ، ئۇ ھەقتىكى ھەممە ئۇچۇرغا ئېرىشىڭ.';

  @override
  String get homeHint =>
      'پاي چېكى گۇۋاھنامىسى، پاي چېكى ۋاكالەتچىسى ئەپىنىڭ ئېكرانى، گېزىت ياكى شىركەت بەلگىسى – پاي چېكىنى ئېنىقلىغىلى بولىدىغان ھەر قانداق نەرسە.';

  @override
  String get takePhoto => 'سۈرەتكە تارتىش';

  @override
  String get chooseFromGallery => 'سۈرەت ئامبىرىدىن تاللاش';

  @override
  String get chooseImage => 'رەسىم تاللاش';

  @override
  String get enterTickerManually => 'كودنى قولدا كىرگۈزۈش';

  @override
  String get tickerInputLabel => 'پاي چېكى كودى';

  @override
  String get tickerInputHint => 'مەسىلەن AAPL';

  @override
  String get lookUp => 'ئىزدەش';

  @override
  String demoModeBanner(String symbols) {
    return 'كۆرسەتمە ھالەت – بازار سانلىق مەلۇمات ئاچقۇچى سەپلەنمىگەن. تۆۋەندىكىلەرنىڭ ئەۋرىشكە سانلىق مەلۇماتى بار: $symbols.';
  }

  @override
  String get recognizing => 'رەسىم تەھلىل قىلىنىۋاتىدۇ…';

  @override
  String get loadingData => 'سانلىق مەلۇمات يۈكلىنىۋاتىدۇ…';

  @override
  String get noCandidatesTitle => 'پاي چېكى پەرقلەندۈرۈلمىدى';

  @override
  String get noCandidatesBody =>
      'بۇ رەسىمدىن پاي چېكىنى پەرقلەندۈرەلمىدۇق. تېخىمۇ ئېنىق سۈرەت تارتىپ بېقىڭ ياكى كودنى قولدا كىرگۈزۈڭ.';

  @override
  String get whatWeSaw => 'بىز كۆرگەنلەر';

  @override
  String get chooseCandidateTitle => 'قايسى پاي چېكىنى دېمەكچىدىڭىز؟';

  @override
  String confidencePercent(int percent) {
    return '$percent% ئىشەنچ';
  }

  @override
  String get settings => 'تەڭشەك';

  @override
  String get language => 'تىل';

  @override
  String get systemLanguage => 'سىستېما كۆڭۈلدىكىسى';

  @override
  String get about => 'ھەققىدە';

  @override
  String get disclaimer =>
      'بۇ ئەپ پەقەت ئۇچۇر تەمىنلەيدۇ، مەبلەغ سېلىش تەۋسىيەسى ئەمەس. سانلىق مەلۇماتلار كېچىكىشى ياكى خاتا بولۇشى مۇمكىن.';

  @override
  String dataSource(String source) {
    return 'سانلىق مەلۇمات مەنبەسى: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'پەرقلەندۈرۈش: $source';
  }

  @override
  String get retry => 'قايتا سىناش';

  @override
  String get cancel => 'بىكار قىلىش';

  @override
  String get ok => 'جەزملە';

  @override
  String get close => 'تاقاش';

  @override
  String get errorGeneric => 'خاتالىق كۆرۈلدى.';

  @override
  String get errorSectionUnavailable => 'بۇ بۆلەكنى يۈكلىگىلى بولمىدى.';

  @override
  String get notAvailable => 'يوق';

  @override
  String get sectionIdentity => 'سالاھىيەت ئۇچۇرى';

  @override
  String get sectionPrice => 'باھا';

  @override
  String get sectionValuation => 'قىممەت مۆلچەرى';

  @override
  String get sectionFinancials => 'مالىيە كۆرسەتكۈچلىرى';

  @override
  String get sectionDividend => 'پايدا ئۈلۈشى';

  @override
  String get sectionProfile => 'شىركەت ئارخىپى';

  @override
  String get sectionAnalysts => 'تەھلىلچىلەرنىڭ باھاسى';

  @override
  String get sectionNews => 'خەۋەرلەر';

  @override
  String get sectionRecognition => 'پەرقلەندۈرۈش تەپسىلاتى';

  @override
  String get labelSymbol => 'كود';

  @override
  String get labelExchange => 'بىرژا';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'پۇل بىرلىكى';

  @override
  String get labelCountry => 'دۆلەت';

  @override
  String get labelIndustry => 'كەسىپ';

  @override
  String get labelSector => 'ساھە';

  @override
  String get labelWebsite => 'تور بېكەت';

  @override
  String get labelIpoDate => 'IPO ۋاقتى';

  @override
  String get labelMarketCap => 'بازار قىممىتى';

  @override
  String get labelSharesOutstanding => 'ئوبوروتتىكى پاي سانى';

  @override
  String get labelEmployees => 'خىزمەتچى سانى';

  @override
  String get labelCeo => 'باش دىرېكتور';

  @override
  String get labelHeadquarters => 'باش شىتاب';

  @override
  String get labelDescription => 'چۈشەندۈرۈش';

  @override
  String get labelLastPrice => 'ئەڭ يېڭى باھا';

  @override
  String get labelChange => 'ئۆزگىرىش';

  @override
  String get labelOpen => 'ئېچىلىش باھاسى';

  @override
  String get labelDayHigh => 'كۈنلۈك ئەڭ يۇقىرى';

  @override
  String get labelDayLow => 'كۈنلۈك ئەڭ تۆۋەن';

  @override
  String get labelPreviousClose => 'ئالدىنقى يېپىلىش باھاسى';

  @override
  String get labelWeek52High => '52 ھەپتىلىك ئەڭ يۇقىرى';

  @override
  String get labelWeek52Low => '52 ھەپتىلىك ئەڭ تۆۋەن';

  @override
  String get labelAverageVolume10d => 'ئوتتۇرىچە سودا مىقدارى (10 كۈن)';

  @override
  String updatedAt(String time) {
    return 'يېڭىلانغان: $time';
  }

  @override
  String get labelPeTrailing => 'P/E (ئۆتكەن)';

  @override
  String get labelPeForward => 'P/E (مۆلچەر)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / ئەركىن نەق پۇل ئېقىمى';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'بېتا';

  @override
  String get labelRevenueTtm => 'تىجارەت كىرىمى (TTM)';

  @override
  String get labelNetIncomeTtm => 'ساپ پايدا (TTM)';

  @override
  String get labelGrossMargin => 'يالپى پايدا نىسبىتى';

  @override
  String get labelOperatingMargin => 'تىجارەت پايدا نىسبىتى';

  @override
  String get labelNetMargin => 'ساپ پايدا نىسبىتى';

  @override
  String get labelRoe => 'ئۆز مەبلىغى پايدا نىسبىتى';

  @override
  String get labelRoa => 'مۈلۈك پايدا نىسبىتى';

  @override
  String get labelDebtToEquity => 'قەرز / ئۆز مەبلىغى';

  @override
  String get labelCurrentRatio => 'ئوبوروت نىسبىتى';

  @override
  String get labelRevenueGrowth => 'كىرىم ئېشىشى (YoY)';

  @override
  String get labelEpsGrowth => 'EPS ئېشىشى (YoY)';

  @override
  String get labelDividendYield => 'پايدا ئۈلۈشى نىسبىتى';

  @override
  String get labelDividendPerShare => 'ھەر پايغا پايدا ئۈلۈشى';

  @override
  String get labelPayoutRatio => 'پايدا تەقسىملەش نىسبىتى';

  @override
  String get labelConsensus => 'ئورتاق پىكىر';

  @override
  String get ratingStrongBuy => 'كۈچلۈك سېتىۋېلىش';

  @override
  String get ratingBuy => 'سېتىۋېلىش';

  @override
  String get ratingHold => 'ساقلاش';

  @override
  String get ratingSell => 'سېتىش';

  @override
  String get ratingStrongSell => 'كۈچلۈك سېتىش';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count تەھلىلچى',
      one: '1 تەھلىلچى',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'مەزگىل: $period';
  }

  @override
  String get noNews => 'يېقىنقى خەۋەر يوق.';

  @override
  String get openArticle => 'ماقالىنى ئېچىش';

  @override
  String get openLinkFailed => 'ئۇلانمىنى ئاچقىلى بولمىدى.';

  @override
  String get recognitionSummary => 'خۇلاسە';

  @override
  String get recognitionEvidence => 'نېمە ئۈچۈن شۇنداق قارايمىز';

  @override
  String get recognitionRawText => 'رەسىمدىن ئوقۇلغان تېكىست';

  @override
  String get errMissingAnthropicKey =>
      'رەسىم پەرقلەندۈرۈش سەپلەنمىگەن (ANTHROPIC_API_KEY يوق). كودنى قولدا كىرگۈزۈڭ.';

  @override
  String get errRecognitionUnreachable =>
      'پەرقلەندۈرۈش مۇلازىمىتىگە ئۇلانغىلى بولمىدى. تور ئۇلىنىشىڭىزنى تەكشۈرۈڭ.';

  @override
  String errRecognitionHttp(String status) {
    return 'پەرقلەندۈرۈش مۇلازىمىتى خاتالىق قايتۇردى (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'پەرقلەندۈرۈش مۇلازىمىتى بۇ رەسىمنى بىر تەرەپ قىلالمىدى.';

  @override
  String get errRecognitionTruncated =>
      'پەرقلەندۈرۈش جاۋابى ئۈزۈلۈپ قالدى. قايتا سىناپ بېقىڭ.';

  @override
  String get errRecognitionBadResponse =>
      'پەرقلەندۈرۈش مۇلازىمىتىدىن ئويلىمىغان جاۋاب كەلدى.';

  @override
  String get errRecognitionEmpty =>
      'پەرقلەندۈرۈش مۇلازىمىتى قۇرۇق جاۋاب قايتۇردى.';

  @override
  String get errMissingFinnhubKey =>
      'بازار سانلىق مەلۇماتى سەپلەنمىگەن (FINNHUB_API_KEY يوق).';

  @override
  String get errMarketUnreachable =>
      'بازار سانلىق مەلۇمات مۇلازىمىتىگە ئۇلانغىلى بولمىدى. تور ئۇلىنىشىڭىزنى تەكشۈرۈڭ.';

  @override
  String get errMarketRateLimited =>
      'بازار سانلىق مەلۇمات مۇلازىمىتىگە بەك كۆپ ئىلتىماس يوللاندى. بىر مىنۇت ساقلاڭ.';

  @override
  String errMarketHttp(String status) {
    return 'بازار سانلىق مەلۇمات مۇلازىمىتى خاتالىق قايتۇردى (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'بازار سانلىق مەلۇمات مۇلازىمىتىدىن ئويلىمىغان جاۋاب كەلدى.';

  @override
  String errNoQuote(String symbol) {
    return '$symbol نىڭ باھا سانلىق مەلۇماتى تېپىلمىدى.';
  }

  @override
  String errNoProfile(String symbol) {
    return '$symbol نىڭ شىركەت ئارخىپى تېپىلمىدى.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'كۆرسەتمە ھالەت پەقەت $symbols نى قوللايدۇ. ئەمەلىي ۋاقىتلىق سانلىق مەلۇمات ئۈچۈن FINNHUB_API_KEY قوشۇڭ.';
  }

  @override
  String errUnknown(String detail) {
    return 'خاتالىق كۆرۈلدى: $detail';
  }

  @override
  String get newSearch => 'يېڭى ئىزدەش';

  @override
  String get recentSearches => 'يېقىنقىلار';

  @override
  String get noRecentSearches => 'تېخى يېقىنقى ئىزدەش يوق.';

  @override
  String get clearRecent => 'يېقىنقىلارنى تازىلاش';

  @override
  String get greeting => 'قايسى پاي چېكىنى كۆرەيلى؟';

  @override
  String get searchHint => 'كود ياكى شىركەت نامى';

  @override
  String get attachImage => 'رەسىم قوشۇش';

  @override
  String get searchResultsTitle => 'ئىزدەش نەتىجىسى';

  @override
  String errNoResults(String query) {
    return '«$query» بويىچە پاي چېكى تېپىلمىدى.';
  }

  @override
  String get quickBarHint => 'كود ياكى شىركەت نامىنى كىرگۈزۈڭ…';

  @override
  String get openFullWindow => 'كۆزنەكنى ئېچىش';

  @override
  String hotkeyHint(String shortcut) {
    return 'WhatStock نى چاقىرىش ئۈچۈن خالىغان يەردە $shortcut نى بېسىڭ.';
  }

  @override
  String get trayOpen => 'WhatStock نى ئېچىش';

  @override
  String get trayQuickSearch => 'تېز ئىزدەش';

  @override
  String get trayQuit => 'چېكىنىش';

  @override
  String get appearance => 'كۆرۈنۈش';

  @override
  String get themeSystem => 'سىستېما';

  @override
  String get themeDark => 'قاراڭغۇ';

  @override
  String get themeLight => 'يورۇق';

  @override
  String get back => 'قايتىش';

  @override
  String get aiSectionTitle => 'AI تەھلىلى';

  @override
  String get aiIntro =>
      'AI يازغان تەپسىلىي ئومۇمىي بايان: يېقىنقى خەۋەرلەرنىڭ خۇلاسىسى، شىركەتنىڭ تىجارىتى، ئارتۇقچىلىقلار، خەۋپلەر ۋە يوشۇرۇن ئامىللار، قىممەت مۆلچەرى، پسىخولوگىيىلىك، ئىجتىمائىي، تېخنىكىلىق ۋە ماكرو نۇقتىلاردىن سىنارىيىلىك باھا ئىستىقبالى، شۇنداقلا دىققەت قىلىشقا تېگىشلىك ئىشلار.';

  @override
  String get aiGenerate => 'تەھلىل ھاسىللاش';

  @override
  String get aiRegenerate => 'قايتا ھاسىللاش';

  @override
  String get aiGenerating =>
      'تەھلىل تەييارلىنىۋاتىدۇ… بۇ بىر-ئىككى مىنۇت ۋاقىت ئېلىشى مۇمكىن.';

  @override
  String get aiSources => 'مەنبەلەر';

  @override
  String aiGeneratedAt(String time) {
    return 'ھاسىللانغان ۋاقىت: $time';
  }

  @override
  String get aiDisclaimer =>
      'ئاممىۋى سانلىق مەلۇمات ۋە يېقىنقى خەۋەرلەرگە ئاساسەن AI ھاسىللىغان تەھلىل. ئۇنىڭدا خاتالىق ياكى كونىراپ كەتكەن ئۇچۇرلار بولۇشى مۇمكىن، ئۇ مەبلەغ سېلىش تەۋسىيەسى ئەمەس.';

  @override
  String get errAiNotConfigured =>
      'AI تەھلىلى سەپلەنمىگەن (ANTHROPIC_API_KEY يوق).';

  @override
  String get errAiUnreachable =>
      'AI مۇلازىمىتىگە ئۇلانغىلى بولمىدى. تور ئۇلىنىشىڭىزنى تەكشۈرۈڭ.';

  @override
  String errAiHttp(String status) {
    return 'AI مۇلازىمىتى خاتالىق قايتۇردى (HTTP $status).';
  }

  @override
  String get errAiRefused =>
      'AI مۇلازىمىتى بۇ پاي چېكىنى تەھلىل قىلىشنى رەت قىلدى.';

  @override
  String get errAiBadResponse => 'AI مۇلازىمىتىدىن ئويلىمىغان جاۋاب كەلدى.';

  @override
  String get sectionChart => 'باھا گرافىكى';

  @override
  String get rangeOneWeek => '1 ھەپتە';

  @override
  String get rangeOneMonth => '1 ئاي';

  @override
  String get rangeThreeMonths => '3 ئاي';

  @override
  String get rangeOneYear => '1 يىل';

  @override
  String get rangeFiveYears => '5 يىل';

  @override
  String get chartUnavailable =>
      'نۆۋەتتىكى سانلىق مەلۇمات مەنبەسىدە باھا تارىخى يوق.';

  @override
  String get sectionStatements => 'مالىيە دوكلاتلىرى (يىللىق)';

  @override
  String get labelFiscalYear => 'مالىيە يىلى';

  @override
  String get labelRevenue => 'تىجارەت كىرىمى';

  @override
  String get labelNetIncome => 'ساپ پايدا';

  @override
  String get labelTotalAssets => 'ئومۇمىي مۈلۈك';

  @override
  String get labelTotalLiabilities => 'ئومۇمىي قەرز';

  @override
  String get labelEquity => 'پاي ئىگىلىرى ھوقۇق-مەنپەئىتى';

  @override
  String get labelOperatingCashFlow => 'تىجارەت نەق پۇل ئېقىمى';

  @override
  String get statementsUnavailable =>
      'بۇ پاي چېكىنىڭ ئېلان قىلىنغان مالىيە دوكلاتلىرى يوق.';

  @override
  String get launchAtLogin => 'كىرگەندە ئاپتوماتىك قوزغىتىش';

  @override
  String get hotkeyLabel => 'ئومۇمىي تېزلەتمە كۇنۇپكا';

  @override
  String get hotkeyRecordHint =>
      'بۇ يەرنى چېكىپ، ئاندىن يېڭى كۇنۇپكا بىرىكمىسىنى بېسىڭ';

  @override
  String get hotkeyReset => 'كۆڭۈلدىكىگە قايتۇرۇش';

  @override
  String get pasteImage => 'چاپلاش تاختىسىدىن رەسىم چاپلاش';

  @override
  String get errClipboardNoImage => 'چاپلاش تاختىسىدا رەسىم يوق.';

  @override
  String get favorites => 'يىغقۇچ';

  @override
  String get addToFavorites => 'يىغقۇچقا قوشۇش';

  @override
  String get removeFromFavorites => 'يىغقۇچتىن چىقىرىۋېتىش';

  @override
  String get noFavorites =>
      'يىغقۇچ تېخى قۇرۇق. قوشۇش ئۈچۈن پاي چېكىدىكى يۇلتۇزنى چېكىڭ.';

  @override
  String get displayCurrency => 'كۆرسىتىش پۇل بىرلىكى';

  @override
  String get displayCurrencyNone => 'پەقەت پاي چېكىنىڭ ئۆز پۇل بىرلىكى';

  @override
  String labelConverted(String currency) {
    return '≈ $currency ھېسابىدا';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'ئالماشتۇرۇش نىسبىتى: 1 $from = $rate $to (ECB، $date)';
  }

  @override
  String get updates => 'يېڭىلانمىلار';

  @override
  String currentVersion(String version) {
    return 'نەشرى: $version';
  }

  @override
  String get autoUpdate => 'يېڭىلانمىلارنى ئاپتوماتىك ئورنىتىش';

  @override
  String get checkForUpdates => 'يېڭىلانما تەكشۈرۈش';

  @override
  String get updateChecking => 'يېڭىلانما تەكشۈرۈلۈۋاتىدۇ…';

  @override
  String get updateUpToDate => 'سىز ئەڭ يېڭى نەشرىنى ئىشلىتىۋاتىسىز.';

  @override
  String updateAvailable(String version) {
    return '$version نەشرى چىقتى.';
  }

  @override
  String get updateDownloading => 'يېڭىلانما ئارقا سۇپىدا چۈشۈرۈلۈۋاتىدۇ…';

  @override
  String get updateDownloaded =>
      'يېڭىلانما تەييار. ئورنىتىش ئۈچۈن قايتا قوزغىتىڭ.';

  @override
  String get updateNow => 'يېڭىلاش';

  @override
  String get restartNow => 'قايتا قوزغىتىش';

  @override
  String get updatesViaStore =>
      'يېڭىلانمىلار ئەپ دۇكىنى ئارقىلىق ئاپتوماتىك كېلىدۇ.';

  @override
  String get updateCheckFailed => 'يېڭىلانمىنى تەكشۈرگىلى بولمىدى.';

  @override
  String get subscription => 'مۇشتەرىلىك';

  @override
  String get planTrial => 'سىناق';

  @override
  String get planNormal => 'ئادەتتىكى';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'ئاكتىپ پىلان يوق';

  @override
  String planAnalysesPerMonth(int count) {
    return 'ئايدا $count قېتىم تەھلىل';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$count قېتىم تەھلىل بىلەن $days كۈنلۈك ھەقسىز سىناق';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'سىناق مۇددىتىدىن $days كۈن قالدى',
      one: 'سىناق مۇددىتىدىن 1 كۈن قالدى',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'ھەقسىز سىناق مۇددىتىڭىز توشتى. تەھلىلنى داۋاملاشتۇرۇش ئۈچۈن پىلان تاللاڭ.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'بۇ مەزگىلدە $total تەھلىلدىن $remaining قالدى';
  }

  @override
  String extraCredits(int count) {
    return '$count قوشۇمچە تەھلىل';
  }

  @override
  String renewsOn(String date) {
    return 'ئۇزارتىلىدىغان ۋاقىت: $date';
  }

  @override
  String get choosePlan => 'پىلان تاللاش';

  @override
  String get currentPlan => 'نۆۋەتتىكى پىلان';

  @override
  String get subscribe => 'مۇشتەرى بولۇش';

  @override
  String get perMonth => '/ ئاي';

  @override
  String get extraPacksTitle => 'يەنە كېرەكمۇ؟ قوشۇمچە تەھلىل سېتىۋېلىڭ';

  @override
  String get extraPacksHint =>
      'قوشۇمچە تەھلىللەرنىڭ ۋاقتى ئۆتمەيدۇ، ئۇلار ئايلىق نورمىڭىز تۈگىگەندىن كېيىن ئىشلىتىلىدۇ.';

  @override
  String get buy => 'سېتىۋېلىش';

  @override
  String get restorePurchases => 'سېتىۋالغانلارنى ئەسلىگە كەلتۈرۈش';

  @override
  String get manageSubscription => 'مۇشتەرىلىكنى باشقۇرۇش';

  @override
  String get purchaseSuccess => 'رەھمەت! سېتىۋالغىنىڭىز ئاكتىپلاندى.';

  @override
  String get purchasePending => 'سېتىۋېلىش كۈتۈلۈۋاتىدۇ…';

  @override
  String get purchaseFailed => 'سېتىۋېلىشنى تاماملىغىلى بولمىدى.';

  @override
  String get purchaseCanceled => 'سېتىۋېلىش بىكار قىلىندى.';

  @override
  String get billingUnavailable =>
      'بۇ سۇپىدا ھازىرچە سېتىۋالغىلى بولمايدۇ. تېلېفونىڭىز ياكى Mac ئارقىلىق مۇشتەرى بولۇڭ؛ پىلانىڭىز بارلىق ئۈسكۈنىلەردە ئىشلەيدۇ.';

  @override
  String get errQuotaExceeded =>
      'بۇ مەزگىلدە تەھلىلىڭىز قالمىدى. پىلانىڭىزنى ئۆرلىتىڭ ياكى قوشۇمچە تەھلىل سېتىۋېلىڭ.';

  @override
  String get errTrialExpired =>
      'ھەقسىز سىناق مۇددىتىڭىز توشتى. داۋاملاشتۇرۇش ئۈچۈن پىلان تاللاڭ.';

  @override
  String get errNoPlan => 'AI تەھلىلى ئۈچۈن ئاكتىپ پىلان كېرەك.';

  @override
  String get viewPlans => 'پىلانلارنى كۆرۈش';

  @override
  String get usageTitle => 'ئىشلىتىش ئەھۋالى';

  @override
  String get demoPurchaseNote =>
      'كۆرسەتمە ھەق تۆلەش: بۇ سۇپىدا سېتىۋېلىش تەقلىدىي ئېلىپ بېرىلىدۇ.';

  @override
  String get mostPopular => 'ئەڭ ئالقىشلىق';

  @override
  String get bestValue => 'ئەڭ پايدىلىق';

  @override
  String get planFeaturesCommon =>
      'رەسىم پەرقلەندۈرۈش، ئەمەلىي ۋاقىتلىق سانلىق مەلۇمات، گرافىكلار، يىغقۇچ ۋە بارلىق 120 تىل ھەر بىر پىلانغا كىرىدۇ. نورما AI تەھلىللىرى ئۈچۈندۇر.';

  @override
  String get searchLanguages => 'تىل ئىزدەش…';

  @override
  String get noLanguageMatch => 'ماس كېلىدىغان تىل يوق.';

  @override
  String get aiSettings => 'AI تەھلىلى';

  @override
  String get aiLength => 'ئۇزۇنلۇقى';

  @override
  String get aiDepthBrief => 'قىسقا';

  @override
  String get aiDepthStandard => 'ئۆلچەملىك';

  @override
  String get aiDepthDeep => 'چوڭقۇر';

  @override
  String get aiDepthBriefDesc => 'ئەڭ مۇھىم نۇقتىلار، تېز.';

  @override
  String get aiDepthStandardDesc => 'بارلىق بۆلەكلىرى بار تولۇق دوكلات.';

  @override
  String get aiDepthDeepDesc =>
      'تېخىمۇ كۆپ تور ئىزدەش، رەقىبلەر بىلەن سېلىشتۇرۇش ۋە تېخىمۇ چوڭقۇر تەپسىلات.';

  @override
  String aiDepthWords(String min, String max) {
    return 'تەخمىنەن $min–$max سۆز';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count تەھلىل ئىشلىتىدۇ',
      one: '1 تەھلىل ئىشلىتىدۇ',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'ئوقۇرمەن سەۋىيەسى';

  @override
  String get aiReaderBeginner => 'يېڭى باشلىغۇچى';

  @override
  String get aiReaderExperienced => 'تەجرىبىلىك';

  @override
  String get aiReaderBeginnerDesc =>
      'ئاددىي تىل؛ ھەر بىر كەسپىي ئاتالغۇ چۈشەندۈرۈلىدۇ.';

  @override
  String get aiReaderExperiencedDesc =>
      'ئۆلچەملىك مالىيە ئاتالغۇلىرى بىلەن تېخىمۇ ئىخچام تېكىست.';

  @override
  String get aiCounterArgument => 'ئەڭ كۈچلۈك قارشى پىكىر';

  @override
  String get aiCounterArgumentDesc =>
      'خۇلاسە ھەمىشە ئۆز يەكۈنىگە قارشى ئەڭ كۈچلۈك دەلىل بىلەن ئاخىرلىشىدۇ.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'پىلانىڭىزدا ھەر بىر تەھلىلگە كۆپ بولغاندا $count قېتىم تور ئىزدەش',
      one: 'پىلانىڭىزدا ھەر بىر تەھلىلگە كۆپ بولغاندا 1 قېتىم تور ئىزدەش',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'پىلان بويىچە ئۆلچەملىك ئۇزۇنلۇق: ئادەتتىكى $normal، Pro $pro، Max $max، Ultra $ultra. قىسقىسى 2 قېتىم ئاز، چوڭقۇرى 2 قېتىم كۆپ ئىشلىتىدۇ.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'كۆپ بولغاندا $count قېتىم تور ئىزدەش',
      one: 'كۆپ بولغاندا 1 قېتىم تور ئىزدەش',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ھەر بىر تەھلىلگە $count قېتىم تور ئىزدەش',
      one: 'ھەر بىر تەھلىلگە 1 قېتىم تور ئىزدەش',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'بۇ ئۇزۇنلۇققا $needed تەھلىل كېرەك، لېكىن پەقەت $left قالدى. تەڭشەكتىن قىسقىراق ئۇزۇنلۇقنى تاللاڭ ياكى تېخىمۇ كۆپ تەھلىل ئېلىڭ.';
  }

  @override
  String get outlookMarketMood => 'بازار كەيپىياتى';

  @override
  String get moodVeryPessimistic => 'ناھايىتى ئۈمىدسىز';

  @override
  String get moodPessimistic => 'ئۈمىدسىز';

  @override
  String get moodNeutral => 'بىتەرەپ';

  @override
  String get moodOptimistic => 'ئۈمىدۋار';

  @override
  String get moodVeryOptimistic => 'ناھايىتى ئۈمىدۋار';

  @override
  String get scenarioBull => 'ئۆرلەش سىنارىيىسى';

  @override
  String get scenarioBase => 'ئاساسىي سىنارىيە';

  @override
  String get scenarioBear => 'چۈشۈش سىنارىيىسى';

  @override
  String outlookCurrentPrice(String price) {
    return 'ھازىرقى باھا: $price';
  }

  @override
  String get outlookKeyLevels => 'ھالقىلىق سەۋىيەلەر';

  @override
  String get keyLevelSupport => 'تىرەك';

  @override
  String get keyLevelResistance => 'قارشىلىق';

  @override
  String get keyLevelAnchor => 'لەڭگەر';

  @override
  String get upcomingEvents => 'ئالدىدىكى مۇھىم ئىشلار';

  @override
  String get outlookChartNote =>
      'تەخمىنىي دائىرە؛ ئېھتىماللىقلار قوپال مۆلچەر، ئالدىن پەرەز ئەمەس.';

  @override
  String get accountTitle => 'ھېسابات';

  @override
  String get signIn => 'كىرىش';

  @override
  String get signOut => 'چىقىش';

  @override
  String get notSignedIn => 'كىرمىگەن';

  @override
  String get accountBenefit =>
      'مۇشتەرىلىكىڭىز بارلىق ئۈسكۈنىلىرىڭىزدە ئىشلىشى ئۈچۈن كىرىڭ.';

  @override
  String get accountSyncedNote =>
      'مۇشتەرىلىكىڭىز ۋە قالغان تەھلىللىرىڭىز بارلىق ئۈسكۈنىلەردە ئوخشاش.';

  @override
  String get signInTitle => 'WhatStock غا كىرىش';

  @override
  String get emailLabel => 'ئېلخەت ئادرېسى';

  @override
  String get continueWithEmail => 'ئېلخەت بىلەن داۋاملاشتۇرۇش';

  @override
  String codeSentTo(String email) {
    return '$email غا 6 خانىلىق كود ئەۋەتتۇق. ئۇ 10 مىنۇت ئىناۋەتلىك.';
  }

  @override
  String get codeLabel => 'كىرىش كودى';

  @override
  String get resendCode => 'يېڭى كود ئەۋەتىش';

  @override
  String get useDifferentEmail => 'باشقا ئېلخەت ئىشلىتىش';

  @override
  String get errInvalidCode => 'كود خاتا ياكى ۋاقتى ئۆتكەن.';

  @override
  String get errInvalidEmail => 'ئىناۋەتلىك ئېلخەت ئادرېسى كىرگۈزۈڭ.';

  @override
  String get errSignInFailed =>
      'كىرىش مەغلۇپ بولدى. ئۇلىنىشىڭىزنى تەكشۈرۈپ قايتا سىناڭ.';

  @override
  String get checkoutWaiting =>
      'ھەق تۆلەشنى توركۆرگۈڭىزدە تاماملاڭ. تاماملانغاندا ئەپ ئاپتوماتىك يېڭىلىنىدۇ.';

  @override
  String get paymentViaStripe =>
      'Stripe ئارقىلىق توركۆرگۈدە بىخەتەر ھەق تۆلەش. خالىغان ۋاقىتتا بىكار قىلالايسىز.';

  @override
  String get paymentViaStore =>
      'ھەق App Store ياكى Google Play ھېساباتىڭىز ئارقىلىق ئېلىنىدۇ. دۇكان تەڭشىكىدە خالىغان ۋاقىتتا بىكار قىلالايسىز.';

  @override
  String get keySpace => 'بوشلۇق';

  @override
  String get doubleOptionTitle => 'Option نى قوش بېسىش';

  @override
  String get doubleOptionSubtitle =>
      'Option كۇنۇپكىسىنى تېز ئىككى قېتىم باسسىڭىزمۇ WhatStock چاقىرىلىدۇ.';

  @override
  String get doubleOptionPermission =>
      'باشقا ئەپلەردىمۇ ئىشلىشى ئۈچۈن سىستېما تەڭشىكى ← شەخسىيەت ۋە بىخەتەرلىك ← كىرگۈزۈش نازارىتىدە WhatStock غا ئىجازەت بېرىپ، ئاندىن ئەپنى قايتا ئېچىڭ.';

  @override
  String get openSystemSettings => 'سىستېما تەڭشىكىنى ئېچىش';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'WhatStock نى چاقىرىش ئۈچۈن خالىغان يەردە $shortcut نى بېسىڭ ياكى Option نى قوش بېسىڭ.';
  }

  @override
  String get scenarioMostLikely => 'ئەڭ ئېھتىماللىق';

  @override
  String get longTermToday => 'بۈگۈن';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years يىل',
      one: '1 يىل',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return 'يىلىغا $range';
  }

  @override
  String longTermLikely(String price) {
    return 'ئەڭ ئېھتىماللىق $price';
  }

  @override
  String get confidenceLow => 'ئىشەنچ تۆۋەن';

  @override
  String get confidenceMedium => 'ئىشەنچ ئوتتۇراھال';

  @override
  String get confidenceHigh => 'ئىشەنچ يۇقىرى';

  @override
  String get longTermNote =>
      'ئۇزۇن مۇددەتلىك دائىرىلەر بايان قىلىنغان پەرەزلەرگە ئاساسلىنىدۇ ۋە ۋاقىت ئۆتكەنسېرى كېڭىيىدۇ. باھالارغا پايدا ئۈلۈشى كىرمەيدۇ. قوپال مۆلچەر، ئالدىن پەرەز ئەمەس.';

  @override
  String get portfolio => 'مەبلەغ بىرىكمىسى';

  @override
  String get portfolioEmpty =>
      'بۇ يەر تېخى قۇرۇق. قولىڭىزدىكى پاي چەكلىرىنى كۆزىتىش ئۈچۈن بىر پاي چېكىنى ئېچىپ «بىرىكمىگە قوشۇش» نى چېكىڭ.';

  @override
  String get portfolioLocalNote =>
      'پەقەت مۇشۇ ئۈسكۈنىدە ساقلىنىدۇ. جەمئىي سوممىلار ECB نىڭ پايدىلىنىش نىسبىتى بويىچە ئالماشتۇرۇلىدۇ؛ باھالار كېچىكىشى مۇمكىن.';

  @override
  String get addToPortfolio => 'بىرىكمىگە قوشۇش';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol نى قوشۇش';
  }

  @override
  String get portfolioQuantity => 'پاي سانى';

  @override
  String portfolioBuyPrice(String currency) {
    return 'ھەر پاينىڭ باھاسى ($currency)';
  }

  @override
  String get portfolioBuyDate => 'سېتىۋالغان ۋاقىت';

  @override
  String get portfolioAdd => 'قوشۇش';

  @override
  String get portfolioInvalidNumber => 'نۆلدىن چوڭ سان كىرگۈزۈڭ.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol بىرىكمىڭىزگە قوشۇلدى.';
  }

  @override
  String get portfolioTotalValue => 'ئومۇمىي قىممەت';

  @override
  String get portfolioToday => 'بۈگۈن';

  @override
  String get portfolioGainLoss => 'پايدا/زىيان';

  @override
  String get portfolioInvested => 'سېلىنغان مەبلەغ';

  @override
  String get portfolioAllocation => 'تەقسىمات';

  @override
  String get portfolioPositions => 'تۇتقان پايلار';

  @override
  String portfolioAvgCost(String price) {
    return 'ئوتتۇرىچە تەننەرخ $price';
  }

  @override
  String get portfolioYourPosition => 'سىزنىڭ پايلىرىڭىز';

  @override
  String get portfolioPurchases => 'سېتىۋېلىشلار';

  @override
  String get portfolioRemove => 'چىقىرىۋېتىش';

  @override
  String get portfolioExcluded =>
      'باھاسى ياكى ئالماشتۇرۇش نىسبىتى يوق پايلار جەمئىيگە كىرگۈزۈلمىدى.';

  @override
  String get priceAlerts => 'باھا ئاگاھلاندۇرۇشلىرى';

  @override
  String get setPriceAlert => 'باھا ئاگاھلاندۇرۇشى بەلگىلەش';

  @override
  String alertDialogTitle(String symbol) {
    return 'باھا ئاگاھلاندۇرۇشى · $symbol';
  }

  @override
  String get alertKindAbove => 'ئۈستىگە چىقسا';

  @override
  String get alertKindBelow => 'ئاستىغا چۈشسە';

  @override
  String get alertKindMove => 'بىر كۈندە كەسكىن ئۆزگەرسە';

  @override
  String alertTargetPrice(String currency) {
    return 'باھا ($currency)';
  }

  @override
  String get alertMovePercent => 'كۈنلۈك ئۆزگىرىش (%)';

  @override
  String get alertAlreadyMet => 'باھا ئاللىقاچان بۇ سەۋىيەدىن ئۆتۈپ كەتتى.';

  @override
  String get alertSave => 'ئاگاھلاندۇرۇش بەلگىلەش';

  @override
  String alertCreated(String symbol) {
    return '$symbol ئۈچۈن ئاگاھلاندۇرۇش بەلگىلەندى.';
  }

  @override
  String get alertsEmpty =>
      'تېخى باھا ئاگاھلاندۇرۇشى يوق. بەلگىلەش ئۈچۈن بىر پاي چېكىنى ئېچىپ قوڭغۇراقنى چېكىڭ.';

  @override
  String get alertsNote =>
      'WhatStock ئىجرا بولۇۋاتقاندا ئاگاھلاندۇرۇشلار ھەر 5 مىنۇتتا تەكشۈرۈلىدۇ. كومپيۇتېردا ئۇ تىزىملىك بالدىقى ياكى سىستېما تەخسىسىدە ئىشلەۋېرىدۇ؛ تېلېفوندا ھازىرچە ئەپ ئوچۇق ۋاقىتتىلا ئاگاھلاندۇرۇش كېلىدۇ.';

  @override
  String alertDescAbove(String price) {
    return '$price دىن يۇقىرى';
  }

  @override
  String alertDescBelow(String price) {
    return '$price دىن تۆۋەن';
  }

  @override
  String alertDescMove(String percent) {
    return 'كۈنلۈك ئۆزگىرىش ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return '$date دا $price باھادا قوزغالدى';
  }

  @override
  String get alertRearm => 'قايتا ئاكتىپلاش';

  @override
  String get alertDelete => 'ئۆچۈرۈش';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol $price دىن يۇقىرى ئۆرلىدى';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol $price دىن تۆۋەن چۈشتى';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol بۈگۈن $percent ئۆزگەردى';
  }

  @override
  String alertHitBody(String price) {
    return 'ھازىرقى باھا: $price';
  }

  @override
  String get alertOpen => 'ئېچىش';

  @override
  String get keepInTrayTitle => 'كۆزنەك تاقالغاندىمۇ ئىجرا بولۇۋېرىش';

  @override
  String get keepInTraySubtitle =>
      'WhatStock تىزىملىك بالدىقى ياكى سىستېما تەخسىسىدە تۇرىدۇ، شۇڭا تېزلەتمە كۇنۇپكا ۋە باھا ئاگاھلاندۇرۇشلىرى ئىشلەۋېرىدۇ.';

  @override
  String get termsOfUse => 'ئىشلىتىش شەرتلىرى';

  @override
  String get privacyPolicy => 'شەخسىيەت سىياسىتى';

  @override
  String get subscriptionLegal =>
      'مۇشتەرىلىك سىز بىكار قىلمىغۇچە ھەر ئايدا ئاپتوماتىك ئۇزارتىلىدۇ. مۇشتەرى بولۇش ئارقىلىق ئىشلىتىش شەرتلىرى ۋە شەخسىيەت سىياسىتىنى قوبۇل قىلغان بولىسىز.';

  @override
  String get deleteAccount => 'ھېساباتنى ئۆچۈرۈش';

  @override
  String get deleteAccountTitle => 'ھېساباتىڭىزنى ئۆچۈرەمسىز؟';

  @override
  String get deleteAccountBody =>
      'ھېساباتىڭىز ۋە مۇلازىمېتىرىمىزدا ساقلانغان بارلىق نەرسىلەر (ئېلخەت، نورما، ئىشلىتىش ئەھۋالى) مەڭگۈلۈك ئۆچۈرۈلىدۇ، ئىشلىتىلمىگەن تەھلىللەرمۇ يوقىلىدۇ. توركۆرگۈدە ھەق تۆلەنگەن مۇشتەرىلىك دەرھال بىكار قىلىنىدۇ؛ App Store ياكى Google Play مۇشتەرىلىكىنى دۇكاننىڭ تەڭشىكىدە بىكار قىلىشىڭىز كېرەك.';

  @override
  String get deleteLocalData =>
      'بۇ ئۈسكۈنىدىكى سانلىق مەلۇماتلارنىمۇ ئۆچۈرۈش (مەبلەغ بىرىكمىسى، ئاگاھلاندۇرۇشلار، يىغقۇچ، تارىخ، ساقلانغان تەھلىللەر)';

  @override
  String get deleteAccountConfirm => 'مەڭگۈلۈك ئۆچۈرۈش';

  @override
  String get accountDeleted => 'ھېساباتىڭىز ئۆچۈرۈلدى.';

  @override
  String get errDeleteAccount =>
      'ھېساباتنى ئۆچۈرگىلى بولمىدى. ئۇلىنىشىڭىزنى تەكشۈرۈپ قايتا سىناڭ.';

  @override
  String get aiTrialBriefNote =>
      'سىناق تەھلىللىرى قىسقا بولۇپ، تېزرەك AI مودېلى بىلەن ئىشلىنىدۇ. پىلان بىلەن ئەڭ ئىقتىدارلىق AI مودېلىمىزنى، تېخىمۇ كۆپ تور ئىزدەشنى ۋە ئۆلچەملىك ھەم چوڭقۇر ئۇزۇنلۇقلارنى قولغا كەلتۈرىسىز.';

  @override
  String get billingMonthly => 'ئايلىق';

  @override
  String get billingYearly => 'يىللىق';

  @override
  String get yearlyDiscount => '2 ئاي ھەقسىز';

  @override
  String get perYear => '/ يىل';

  @override
  String pricePerMonthApprox(String price) {
    return 'ئايدا ≈ $price';
  }

  @override
  String get subscriptionLegalYearly =>
      'يىللىق مۇشتەرىلىك سىز بىكار قىلمىغۇچە ھەر يىلى ئاپتوماتىك ئۇزارتىلىدۇ. مۇشتەرى بولۇش ئارقىلىق ئىشلىتىش شەرتلىرى ۋە شەخسىيەت سىياسىتىنى قوبۇل قىلغان بولىسىز.';

  @override
  String get myAnalyses => 'تەھلىللىرىم';

  @override
  String get navAlerts => 'ئاگاھلاندۇرۇش';

  @override
  String get inviteTitle => 'يېپىق ئالدىن كۆرۈش';

  @override
  String get inviteBody =>
      'WhatStock ھازىرچە پەقەت تەكلىپ ئارقىلىقلا ئىشلەتكىلى بولىدۇ. تاپشۇرۇۋالغان تەكلىپ كودىڭىزنى كىرگۈزۈڭ.';

  @override
  String get inviteCodeLabel => 'تەكلىپ كودى';

  @override
  String get inviteContinue => 'داۋاملاشتۇرۇش';

  @override
  String get inviteInvalid => 'بۇ تەكلىپ كودى ئىناۋەتسىز.';

  @override
  String get inviteExpired =>
      'بۇ تەكلىپنىڭ ۋاقتى ئۆتۈپ كەتتى. سىزنى تەكلىپ قىلغان كىشىدىن يېڭى كود سوراڭ.';

  @override
  String get inviteDeviceLimit =>
      'بۇ تەكلىپ كودى ئاللىبۇرۇن رۇخسەت قىلىنغان ئەڭ كۆپ ئۈسكۈنىدە ئىشلىتىلىۋاتىدۇ.';

  @override
  String get previewConfidential => 'مەخپىي ئالدىن كۆرۈش';

  @override
  String get errPreviewDailyLimit =>
      'بۇ ئالدىن كۆرۈشنىڭ بۈگۈنكى تەھلىل چېكىگە يېتىلدى. ئەتە قايتا سىناڭ.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count سائەت ئىلگىرى',
      one: '1 سائەت ئىلگىرى',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count كۈن ئىلگىرى',
      one: '1 كۈن ئىلگىرى',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'بۇ تەھلىلنى يېڭىلامسىز؟';

  @override
  String staleBody(String age) {
    return 'ئۇ $age تەييارلانغان. شۇنىڭدىن بۇيان باھا، خەۋەر ۋە نەتىجىلەر ئۆزگەرگەن بولۇشى مۇمكىن.';
  }

  @override
  String get staleKeep => 'ئىلگىرىكىسىنى كۆرسىتىش';

  @override
  String get staleRefresh => 'يېڭىسىنى ھاسىللاش';

  @override
  String seeAll(int count) {
    return 'ھەممىنى كۆرۈش ($count)';
  }

  @override
  String get searchAnalyses => 'تەھلىللىرىڭىزدىن ئىزدەش';

  @override
  String get deleteAnalysis => 'ئۆچۈرۈش';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol تەھلىلى ئۆچۈرۈلدى';
  }

  @override
  String get keyLevelAlertHint =>
      'باھا مەلۇم سەۋىيەگە يەتكەندە ئاگاھلاندۇرۇش ئېلىش ئۈچۈن شۇ سەۋىيەنى چېكىڭ.';

  @override
  String get shareAnalysisTitle => 'تەھلىلنى ھەمبەھىرلەش';

  @override
  String get shareAsImage => 'رەسىم سۈپىتىدە ھەمبەھىرلەش';

  @override
  String get shareAsText => 'تېكىست سۈپىتىدە ھەمبەھىرلەش';

  @override
  String get shareCardFooter => 'WhatStock ئارقىلىق ياسالغان';

  @override
  String get shareCardDisclaimer => 'AI تەھلىلى · مەبلەغ سېلىش تەۋسىيەسى ئەمەس';

  @override
  String get referralTitle => 'دوستلارنى تەكلىپ قىلىش';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count قوشۇمچە تەھلىل',
      one: '1 قوشۇمچە تەھلىل',
    );
    return 'كودىڭىزنى ھەمبەھىرلەڭ. دوستىڭىز دەرھال $_temp0 ئالىدۇ، سىز بولسا ئۇنىڭ تۇنجى تەھلىلىدىن كېيىن شۇنچىلىك ئالىسىز.';
  }

  @override
  String get referralYourCode => 'كودىڭىز';

  @override
  String referralStats(int invited, int rewarded) {
    return 'تەكلىپ قىلىنغانلار: $invited · مۇكاپاتلانغانلار: $rewarded';
  }

  @override
  String get referralHaveCode => 'دوستىڭىزدىن كود بارمۇ؟';

  @override
  String get referralRedeem => 'ئىشلىتىش';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count قوشۇمچە تەھلىل قوشۇلدى. خۇش كەلدىڭىز!',
      one: '1 قوشۇمچە تەھلىل قوشۇلدى. خۇش كەلدىڭىز!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown => 'بۇنداق كود يوق. تەكشۈرۈپ قايتا سىناڭ.';

  @override
  String get referralErrOwn => 'ئۆزىڭىزنىڭ كودىنى ئىشلىتەلمەيسىز.';

  @override
  String get referralErrAlready =>
      'سىز ئاللىبۇرۇن دوستىڭىزنىڭ كودىنى ئىشلەتكەنسىز.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count قوشۇمچە تەھلىل',
      one: '1 قوشۇمچە تەھلىل',
    );
    return 'مەن WhatStock ئارقىلىق پاي چېكى تەھلىل قىلىمەن: پاي چېكىنى رەسىمگە تارتىڭ، AI ئۇنى چۈشەندۈرۈپ بېرىدۇ. مېنىڭ $code كودۇم ئارقىلىق $_temp0 ئالىسىز.';
  }

  @override
  String get referralCopied => 'كود كۆچۈرۈلدى';

  @override
  String get onboardTitle1 => 'پاي چېكىنى سۈرەتكە تارتىڭ';

  @override
  String get onboardBody1 =>
      'ۋاسىتىچى ئەپنىڭ ئېكرانى، گېزىت ياكى شىركەت بەلگىسى يېتەرلىك: WhatStock پاي چېكىنى تونۇپ، ئۇنىڭ باھاسى، دىئاگراممىسى ۋە مۇھىم كۆرسەتكۈچلىرىنى كۆرسىتىپ بېرىدۇ.';

  @override
  String get onboardTitle2 => 'بىر نەچچە مىنۇتتا چۈشىنىڭ';

  @override
  String get onboardBody2 =>
      'AI تەھلىلى پاي چېكىنى نېمىنىڭ ھەرىكەتلەندۈرىدىغانلىقى، خەتەرلەر، قىممەت باھالاش ۋە باھانىڭ قەيەرگە بېرىشى مۇمكىنلىكى توغرىسىدىكى ئۈچ خىل ئەھۋالنى مەنبەلەر بىلەن ۋە ئۆز تىلىڭىزدا چۈشەندۈرۈپ بېرىدۇ.';

  @override
  String get onboardTitle3 => 'ھەمىشە خەۋەردار بولۇڭ';

  @override
  String get onboardBody3 =>
      'يىغقۇچ، مەبلەغ بىرىكمىڭىز ۋە باھا ئاگاھلاندۇرۇشلىرى سىزنى ۋەقەلەردىن خەۋەردار قىلىپ تۇرىدۇ. تەھلىللىرىڭىز ئۈسكۈنىڭىزدە ساقلىنىدۇ، خالىغان ۋاقىتتا قايتا ئاچالايسىز.';

  @override
  String get onboardNext => 'كېيىنكى';

  @override
  String get onboardStart => 'باشلاش';

  @override
  String get onboardSkip => 'ئاتلاش';

  @override
  String changesTitle(String date) {
    return 'ئالدىنقى تەھلىلدىن بۇيان ($date)';
  }

  @override
  String get changesPrice => 'باھا';

  @override
  String get changesNoMajor => 'ئىستىقبال كۆرۈنەرلىك ئۆزگەرمىدى.';

  @override
  String get changesPreviousSummary => 'ئالدىنقى خۇلاسە';

  @override
  String get telemetryTitle => 'WhatStock نى ياخشىلاشقا ياردەم بېرىڭ';

  @override
  String get telemetryBody =>
      'نامسىز ئىشلىتىش ستاتىستىكىسى ۋە يىمىرىلىش دوكلاتىنى ھەمبەھىرلەڭ: قايسى ئىقتىدارلار ئىشلىتىلىدۇ ۋە نېمە خاتا بولدى. پاي چېكىڭىز، تەھلىلىڭىز ياكى شەخسىي ئۇچۇرىڭىز ھەرگىز ھەمبەھىرلەنمەيدۇ. بۇنى خالىغان ۋاقىتتا تەڭشەكتە ئۆزگەرتەلەيسىز.';

  @override
  String get telemetryAllow => 'رۇخسەت';

  @override
  String get telemetryDecline => 'ياق، رەھمەت';

  @override
  String get telemetrySetting => 'نامسىز ستاتىستىكا ۋە يىمىرىلىش دوكلاتى';

  @override
  String get telemetrySettingHint =>
      'ئىقتىدارلارنىڭ ئىشلىتىلىش چاستوتىسى ۋە خاتالىق دوكلاتى، شەخسىي ئۇچۇر ياكى ئىزدەش ۋە تەھلىلىڭىزنىڭ مەزمۇنى كىرمەيدۇ.';

  @override
  String get askButton => 'Ask about this analysis';

  @override
  String askTitle(String symbol) {
    return 'Questions about $symbol';
  }

  @override
  String get askIntro =>
      'Ask anything about the analysis: what a risk means, what would change the outlook, how a number was worked out. The answers are based on this analysis and are not investment advice.';

  @override
  String get askHint => 'Ask a question…';

  @override
  String get askSend => 'Send';

  @override
  String get askThinking => 'Thinking…';

  @override
  String get askSuggest1 => 'What is the biggest risk?';

  @override
  String get askSuggest2 => 'What would change the outlook?';

  @override
  String get askSuggest3 => 'Explain it in simple terms';

  @override
  String get askMaxReached =>
      'That was the last question for this analysis. Make a new analysis to ask more.';

  @override
  String get errAskLimit =>
      'You have reached today\'s limit for questions. Please try again tomorrow.';
}
