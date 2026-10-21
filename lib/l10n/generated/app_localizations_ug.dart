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
  String get labelYieldOnCost => 'سېتىۋالغان باھادىكى نىسبەت';

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
  String homeDividendsThisYear(String amount) {
    return 'بۇ يىلقى دىۋىدېندلار: $amount';
  }

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
  String get askButton => 'بۇ تەھلىل ھەققىدە سوراڭ';

  @override
  String askTitle(String symbol) {
    return '$symbol ھەققىدىكى سوئاللار';
  }

  @override
  String get askIntro =>
      'تەھلىل ھەققىدە خالىغان نەرسىنى سوراڭ: بىر خەۋپنىڭ مەنىسى نېمە، ئىستىقبالنى نېمە ئۆزگەرتىشى مۇمكىن، بىر سان قانداق ھېسابلانغان. جاۋابلار بۇ تەھلىلگە ئاساسلانغان بولۇپ، مەبلەغ سېلىش تەۋسىيەسى ئەمەس.';

  @override
  String get askHint => 'سوئال سوراڭ…';

  @override
  String get askSend => 'يوللاش';

  @override
  String get askThinking => 'ئويلىنىۋاتىدۇ…';

  @override
  String get askSuggest1 => 'ئەڭ چوڭ خەۋپ نېمە؟';

  @override
  String get askSuggest2 => 'ئىستىقبالنى نېمە ئۆزگەرتىشى مۇمكىن؟';

  @override
  String get askSuggest3 => 'ئاددىي قىلىپ چۈشەندۈرۈپ بەر';

  @override
  String get askMaxReached =>
      'بۇ تەھلىل ئۈچۈن بۇ ئاخىرقى سوئال ئىدى. تېخىمۇ كۆپ سوراش ئۈچۈن يېڭى تەھلىل ھاسىللاڭ.';

  @override
  String get errAskLimit => 'بۈگۈنكى سوئال چېكىگە يەتتىڭىز. ئەتە قايتا سىناڭ.';

  @override
  String get eventTomorrow => 'ئەتە';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days كۈندىن كېيىن',
      one: '1 كۈندىن كېيىن',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'پەسىللىك نەتىجە';

  @override
  String get eventBeforeOpen => 'بازار ئېچىلىشتىن بۇرۇن';

  @override
  String get eventAfterClose => 'بازار تاقالغاندىن كېيىن';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS مۆلچەرى: $value';
  }

  @override
  String get eventFromAnalysis => 'تەھلىلىڭىزدىن';

  @override
  String get eventDividend => 'كۈتۈلگەن دىۋىدېند';

  @override
  String get eventDividendEstimate =>
      'سىز خاتىرىلىگەن تۆلەملەردىن مۆلچەرلەنگەن';

  @override
  String get eventsHint =>
      'يىغقۇچ ۋە مەبلەغ بىرىكمىسىدىكى پاينامىلەرنىڭ كېيىنكى 90 كۈندىكى نەتىجە ئېلان قىلىش ۋاقىتلىرى، تەھلىللىرىڭىز بەلگىلىگەن ۋاقتى بار ئىشلار، شۇنداقلا سىز خاتىرىلىگەن تۆلەملەردىن كۈتۈلگەن دىۋىدېندلار.';

  @override
  String get eventsEmpty =>
      'كېيىنكى 90 كۈندە ۋاقتى بار ئىش يوق. نەتىجە ۋاقىتلىرىنى بۇ يەردە كۆرۈش ئۈچۈن يىغقۇچقا ياكى مەبلەغ بىرىكمىسىگە پاينامە قوشۇڭ؛ خاتىرىلەنگەن دىۋىدېندلار كېيىنكى كۈتۈلگەن تۆلەمنى كۆرسىتىدۇ.';

  @override
  String get compareTitle => 'سېلىشتۇرۇش';

  @override
  String get compareAdd => 'پاي چېكى قوشۇش';

  @override
  String get compareRemove => 'چىقىرىۋېتىش';

  @override
  String get compareTickerHint => 'پاي چېكى كودى، مەسىلەن MSFT';

  @override
  String get compareHint =>
      'ئاساسلىق كۆرسەتكۈچلەر يانمۇيان؛ ھەر بىر قۇردىكى ئەڭ ياخشى قىممەت گەۋدىلەندۈرۈلگەن. سوممىلار ھەر بىر پاي چېكىنىڭ ئۆز پۇل بىرلىكىدە.';

  @override
  String get compareNoAnalysis => 'تېخى تەھلىل يوق';

  @override
  String get portfolioDividends => 'يىللىق پايدا ئۈلۈشى';

  @override
  String portfolioDividendYield(String percent) {
    return 'نىسبىتى $percent';
  }

  @override
  String get portfolioDividendNote =>
      'مۆلچەرلەنگەن يىللىق پايدا ئۈلۈشى ئالدىنقى 12 ئايدا تۆلەنگەن پايدا ئۈلۈشىنى ئاساس قىلىدۇ؛ كەلگۈسىدىكى تۆلەملەرگە كاپالەت يوق.';

  @override
  String positionDividend(String amount) {
    return 'پايدا ئۈلۈشى: يىلىغا $amount';
  }

  @override
  String get chartAvgCost => 'ئوتتۇرىچىڭىز';

  @override
  String get chartAlertLevel => 'ئاگاھلاندۇرۇش';

  @override
  String get marketsToday => 'بۈگۈنكى بازارلار';

  @override
  String get notesTitle => 'خاتىرىلىرىم';

  @override
  String get notesHint =>
      'نېمىشقا سېتىۋالدىڭىز، نېمىگە دىققەت قىلىۋاتىسىز، نېمە سىزنى سېتىشقا مەجبۇرلايدۇ؟';

  @override
  String get notesInfo =>
      'پەقەت مۇشۇ ئۈسكۈنىدە ساقلىنىدۇ. AI تەھلىلى خاتىرىلىرىڭىزنى نەزەردە تۇتىدۇ.';

  @override
  String notesSaved(String date) {
    return 'ساقلاندى: $date';
  }

  @override
  String get peersTitle => 'ئوخشاش شىركەتلەر';

  @override
  String get portfolioExport => 'CSV قىلىپ چىقىرىش';

  @override
  String get portfolioImport => 'CSV دىن كىرگۈزۈش';

  @override
  String get portfolioImportHint =>
      'ھەر قۇرغا بىر سېتىۋېلىشنى چاپلاڭ: پاي چېكى كودى، سان، باھا، پۇل بىرلىكى، چېسلا (YYYY-MM-DD). ئىستونلارنى پەش، چېكىتلىك پەش ياكى tab بىلەن ئايرىشقا بولىدۇ؛ ماۋزۇ قۇرى ئىختىيارىي.';

  @override
  String get portfolioImportButton => 'كىرگۈزۈش';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count سېتىۋېلىش قوشۇلدى',
      one: '1 سېتىۋېلىش قوشۇلدى',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count قۇر ئاتلاپ ئۆتۈلدى',
      one: '1 قۇر ئاتلاپ ئۆتۈلدى',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'مەبلەغ بىرىكمىسى، يىغقۇچ، باھا ئاگاھلاندۇرۇشلىرى ۋە خاتىرىلەر بارلىق ئۈسكۈنىلىرىڭىزدە قەدەمداشلىنىدۇ.';

  @override
  String syncLast(String time) {
    return 'ئاخىرقى قەدەمداشلاش: $time';
  }

  @override
  String get syncNow => 'ھازىر قەدەمداشلا';

  @override
  String get syncFailed =>
      'قەدەمداشلاش مەغلۇپ بولدى. ئاپتوماتىك قايتا سىنايدۇ.';

  @override
  String get alertEmailTitle => 'ئاگاھلاندۇرۇش قوزغالغاندا ئېلخەت';

  @override
  String get alertEmailOn =>
      'ئاگاھلاندۇرۇشلىرىڭىزنى ھەر بىر نەچچە مىنۇتتا تەكشۈرۈپ، ئەپ تاقاق تۇرسىمۇ سىزگە ئېلخەت ئەۋەتىمىز.';

  @override
  String get alertEmailSignIn =>
      'ئەپ تاقاق تۇرسىمۇ ئاگاھلاندۇرۇشلارنى ئېلخەت ئارقىلىق تاپشۇرۇۋېلىش ئۈچۈن تەڭشەكتە ئېلخېتىڭىز بىلەن كىرىڭ.';

  @override
  String get portfolioHistory => 'قىممەت ئۆزگىرىشى';

  @override
  String get portfolioReviewTitle => 'مەبلەغ بىرىكمىسىنىڭ AI تەھلىلى';

  @override
  String get portfolioReviewIntro =>
      'AI پۈتكۈل مەبلەغ بىرىكمىڭىزنى كۆزدىن كەچۈرىدۇ: مەركەزلىشىش، ساھە ۋە پۇل تۈرى خەۋپى، پاي چەكلىرىڭىزنىڭ ئورتاق خەۋپلىرى ۋە پايدا ئۈلۈشى. 1 تەھلىل ئىشلىتىدۇ.';

  @override
  String get portfolioReviewButton => 'مەبلەغ بىرىكمەمنى تەھلىل قىلىش';

  @override
  String get portfolioReviewAgain => 'قايتا تەھلىل قىلىش';

  @override
  String get portfolioReviewWorking => 'مەبلەغ بىرىكمىڭىز تەھلىل قىلىنىۋاتىدۇ…';

  @override
  String get digestTitle => 'ئېلخەت ئارقىلىق ھەپتىلىك خۇلاسە';

  @override
  String get digestHint =>
      'ھەر دۈشەنبە: يىغقۇچىڭىز ۋە مەبلەغ بىرىكمىڭىزنىڭ ئۆتكەن ھەپتىدىكى ئۆزگىرىشى ۋە ئۇلارنىڭ يېقىنقى نەتىجە ئېلان قىلىش چېسلالىرى.';

  @override
  String get benchmarkTitle => 'S&P 500 بىلەن سېلىشتۇرۇش';

  @override
  String get benchmarkYours => 'سېتىۋالغانلىرىڭىز';

  @override
  String get benchmarkIndex => 'ئوخشاش سومما S&P 500 دە';

  @override
  String benchmarkAhead(String points) {
    return 'كۆرسەتكۈچتىن $points پىرسەنت نۇقتا ياخشى';
  }

  @override
  String benchmarkBehind(String points) {
    return 'كۆرسەتكۈچتىن $points پىرسەنت نۇقتا ئارقىدا';
  }

  @override
  String get benchmarkHint =>
      'خۇددى ھەر بىر سېتىۋېلىش شۇ كۈنىلا S&P 500 كۆرسەتكۈچ فوندىغا سېلىنغاندەك. پايدا ئۈلۈشى ھېسابلانمىغان؛ ئۆتمۈشتىكى پايدا كەلگۈسىنى ئالدىن بەلگىلىمەيدۇ.';

  @override
  String get portfolioSell => 'سېتىش';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbol نى سېتىش';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'ھەر پاينىڭ سېتىش باھاسى ($currency)';
  }

  @override
  String get portfolioSellDate => 'سېتىلغان ۋاقىت';

  @override
  String get portfolioSellAll => 'ھەممىسى';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'سىزدە $quantity بار';
  }

  @override
  String get portfolioSold => 'سېتىلدى';

  @override
  String get portfolioRealized => 'ئەمەلگە ئاشقان';

  @override
  String get portfolioClosed => 'تاقالغان پايلار';

  @override
  String get portfolioClosedNote => 'بارلىق پايلار سېتىلدى';

  @override
  String get portfolioTransactions => 'سودىلار';

  @override
  String get portfolioRealizedByYear => 'يىللار بويىچە ئەمەلگە ئاشقان پايدا';

  @override
  String get portfolioRealizedHint =>
      'سېتىشلار ئالدى بىلەن ئەڭ كونا سېتىۋېلىشلىرىڭىز بىلەن ماسلاشتۇرۇلىدۇ (FIFO)، بۈگۈنكى پېرېۋوت نىسبىتى بويىچە ئايلاندۇرۇلىدۇ. باج دوكلاتى ئۈچۈن ۋاسىتىچىڭىزنىڭ ھېسابات جەدۋىلىنى ئىشلىتىڭ.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'بۇ تەھلىلدىن كېيىن يېڭى پەسىللىك نەتىجە ئېلان قىلىندى ($symbol، $date).';
  }

  @override
  String get newResultsBadge => 'يېڭى نەتىجە';

  @override
  String get portfolioImportBrokers =>
      'Revolut، Trading 212 ۋە Interactive Brokers نىڭ چىقىرىلغان ھۆججەتلىرىمۇ سېتىشلار بىلەن بىللە تونۇلىدۇ؛ پايدا ئۈلۈشى ۋە ئامانەتلەر ئاتلاپ ئۆتۈلىدۇ.';

  @override
  String get portfolioImportFile => 'ھۆججەت تاللاش';

  @override
  String offlineBanner(String time) {
    return 'ئۇلىنىش يوق – ئەڭ ئاخىرقى ساقلانغان سانلىق مەلۇمات كۆرسىتىلىۋاتىدۇ ($time).';
  }

  @override
  String get glossMarketCap =>
      'پۈتۈن شىركەتنىڭ پاي بازىرىدىكى قىممىتى: پاي باھاسى × پاي سانى.';

  @override
  String get glossSharesOutstanding =>
      'شىركەت قانچە پاي تارقاتقان. سانى كۆپەيسە، ھەر بىر پايغا تېگىدىغان ئۈلۈش كىچىكلەيدۇ؛ قايتۇرۇپ سېتىۋېلىش ئۇنى ئازايتىدۇ.';

  @override
  String get glossPeTrailing =>
      'باھا ÷ ئاخىرقى 12 ئايدا ھەر پايغا توغرا كېلىدىغان پايدا: ھازىرقى پايدىنىڭ قانچە يىللىقىغا پۇل تۆلەيدىغانلىقىڭىز. تۆۋەنرەك بولسا ئەرزانراق، لېكىن تېز ئۆسىدىغان شىركەتلەرنىڭ P/E سى ئادەتتە يۇقىرى بولىدۇ.';

  @override
  String get glossPeForward =>
      'P/E غا ئوخشاش، لېكىن ئانالىزچىلار كېلەر 12 ئايغا مۆلچەرلىگەن پايدا بىلەن ھېسابلىنىدۇ. ئۆتكەن P/E دىن تۆۋەن بولسا، پايدىنىڭ ئېشىشى كۈتۈلىدۇ.';

  @override
  String get glossPb =>
      'باھا ÷ ھەر پايغا توغرا كېلىدىغان دەپتەر قىممىتى (مۈلۈك ئېلىش قەرز). 1 ئەتراپىدا بولسا، بازار شىركەتنى قەغەز يۈزىدىكى مۈلكىگە تەڭ باھالايدۇ دېگەنلىك.';

  @override
  String get glossPs =>
      'بازار قىممىتى ÷ يىللىق تىجارەت كىرىمى. پايدىسى تېخى ئاز ياكى يوق شىركەتلەر ئۈچۈن پايدىلىق؛ ئوخشاش ساھە ئىچىدە سېلىشتۇرۇڭ.';

  @override
  String get glossEvToFcf =>
      'قەرزنى ئۆز ئىچىگە ئالغان شىركەت قىممىتى (EV) ÷ مەبلەغ سېلىشتىن كېيىن بىر يىلدا ھاسىل قىلغان نەق پۇل. تۆۋەنرەك بولسا، تۆلىگەن باھاغا كۆپرەك نەق پۇل ئالىسىز.';

  @override
  String get glossPeg =>
      'P/E ÷ مۆلچەرلەنگەن يىللىق پايدا ئېشىشى (%). 1 ئەتراپى كۆپىنچە مۇۋاپىق دەپ قارىلىدۇ؛ ئۇ P/E نى ئېشىش نۇقتىسىدىن كۆرسىتىدۇ.';

  @override
  String get glossEps =>
      'ئاخىرقى 12 ئايدا ھەر پايغا توغرا كېلىدىغان پايدا. يىلدىن يىلغا ئۆسىدىغان EPS ساغلام شىركەتنىڭ ئەڭ كۈچلۈك بەلگىلىرىنىڭ بىرى.';

  @override
  String get glossBeta =>
      'پاينىڭ بازار بىلەن قانچىلىك بىللە ھەرىكەتلىنىدىغانلىقى: 1 = بازارغا ئوخشاش، 1.5 = تەخمىنەن 50% چوڭراق تەۋرىنىش، 1 دىن تۆۋەن = تىنچراق.';

  @override
  String get glossRevenueTtm =>
      'ئاخىرقى 12 ئايدىكى ئومۇمىي سېتىش، ھەرقانداق چىقىمدىن ئىلگىرى.';

  @override
  String get glossNetIncomeTtm =>
      'ئاخىرقى 12 ئايدا بارلىق چىقىم، ئۆسۈم ۋە باجدىن كېيىن قالغان پايدا.';

  @override
  String get glossGrossMargin =>
      'مەھسۇلاتلارنىڭ بىۋاسىتە تەننەرخىدىن كېيىن قالغان كىرىم ئۈلۈشى. يۇقىرى نىسبەت كۆپىنچە باھا بەلگىلەش كۈچىنى كۆرسىتىدۇ.';

  @override
  String get glossOperatingMargin =>
      'تىجارەتنى يۈرگۈزۈش چىقىمى (ئىش ھەققى، ئىجارە، بازار ئېچىش) دىن كېيىن، ئۆسۈم ۋە باجدىن ئىلگىرى قالغان كىرىم ئۈلۈشى.';

  @override
  String get glossNetMargin =>
      'كىرىمنىڭ ئاخىرقى پايداغا ئايلانغان ئۈلۈشى. 20% دېگەن ھەر 100 سېتىشتىن 20 سى پايدا دېگەنلىك.';

  @override
  String get glossRoe =>
      'ئۆز مەبلىغى پايدا نىسبىتى: يىللىق پايدا ÷ ئىگىلەرنىڭ مەبلىغى. رەھبەرلىكنىڭ پايچىلارنىڭ پۇلىنى قانچىلىك ياخشى ئىشلىتىدىغانلىقىنى كۆرسىتىدۇ؛ تەخمىنەن 15% دىن يۇقىرى بولسا كۈچلۈك.';

  @override
  String get glossRoa =>
      'مۈلۈك پايدا نىسبىتى: يىللىق پايدا ÷ شىركەتنىڭ بارلىق مۈلكى. ئوخشاش ساھە ئىچىدە سېلىشتۇرۇڭ.';

  @override
  String get glossDebtToEquity =>
      'قەرز ÷ ئىگىلەرنىڭ مەبلىغى. يۇقىرىراق بولسا قەرزگە ئالغان پۇل كۆپ: ئۆسۈم ئۆرلىگەندە ياكى تىجارەت ئاستىلىغاندا خەتەر چوڭراق.';

  @override
  String get glossCurrentRatio =>
      'قىسقا مۇددەتلىك مۈلۈك ÷ بىر يىل ئىچىدە تۆلىنىدىغان قەرز. 1 دىن يۇقىرى بولسا، شىركەت يېقىن مۇددەتلىك قەرزلىرىنى تۆلىيەلەيدۇ.';

  @override
  String get glossRevenueGrowth =>
      'تىجارەت كىرىمىنىڭ بىر يىل ئىلگىرىكىگە سېلىشتۇرغاندا قانچىلىك ئاشقانلىقى.';

  @override
  String get glossEpsGrowth =>
      'ھەر پايغا توغرا كېلىدىغان پايدىنىڭ بىر يىل ئىلگىرىكىگە سېلىشتۇرغاندا قانچىلىك ئاشقانلىقى.';

  @override
  String get glossDividendYield =>
      'يىللىق پايدا ئۈلۈشى ÷ پاي باھاسى: تۆلىگەن پۇلىڭىزنىڭ پىرسەنتى ھېسابىدا ھەر يىلى ئالىدىغان نەق كىرىمىڭىز.';

  @override
  String get glossDividendPerShare =>
      'ئۆتكەن بىر يىلدا بىر پايغا تارقىتىلغان پايدا ئۈلۈشى.';

  @override
  String get glossPayoutRatio =>
      'پايدىنىڭ پايدا ئۈلۈشى سۈپىتىدە تارقىتىلغان قىسمى. 100% دىن يۇقىرى بولسا، شىركەت تاپقىنىدىن كۆپ تارقىتىدۇ، بۇ ناھايىتى ئاز ئۇزاققا سوزۇلىدۇ.';

  @override
  String get glossYieldOnCost =>
      'ئاخىرقى 12 ئايدا تاپشۇرۇۋالغان دىۋىدېندلار، سىز تېخى تۇتۇپ تۇرغان پايلار ئۈچۈن تۆلىگەن پۇلغا بۆلۈنگەن. پايدا ئۈلۈشى نىسبىتىدىن پەرقلىق ھالدا، ئۇ بۈگۈنكى باھا بىلەن ئەمەس، بەلكى سىزنىڭ ئۆز سېتىۋالغان باھىڭىز بىلەن ئۆلچىنىدۇ.';

  @override
  String get glossTitle => 'بۇ نېمە دېگەنلىك؟';

  @override
  String get watchNewsTitle => 'پاي چەكلىرىڭىزگە ئائىت خەۋەرلەر';

  @override
  String get undo => 'يېنىۋېلىش';

  @override
  String get watchSort => 'تەرتىپلەش';

  @override
  String get watchSortOwn => 'مېنىڭ تەرتىپىم';

  @override
  String get watchSortGainers => 'ئەڭ كۆپ ئۆرلىگەنلەر ئالدىدا';

  @override
  String get watchSortLosers => 'ئەڭ كۆپ چۈشكەنلەر ئالدىدا';

  @override
  String get watchSortName => 'كود بويىچە (A–Z)';

  @override
  String get watchHint =>
      'تەرتىپنى ئۆزگەرتىش ئۈچۈن تۇتقۇچنى سۆرەڭ، چىقىرىۋېتىش ئۈچۈن سولغا سۈرۈڭ. سىزىق ئاخىرقى 30 كۈننى كۆرسىتىدۇ.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: تەھلىلىڭىز تەييار بولدى.';
  }

  @override
  String alertFromCost(String price) {
    return 'ئوتتۇرىچە سېتىۋېلىش باھايىڭىزدىن ($price):';
  }

  @override
  String get briefTitle => 'بۈگۈن پايچېكلىرىڭىز بىلەن';

  @override
  String get briefButton => 'بۈگۈننى خۇلاسىلە';

  @override
  String get briefHint =>
      'پورتفېلىڭىز ۋە ياقتۇرغانلىرىڭىزنىڭ بۈگۈن قانداق ئۆزگەرگەنلىكى ۋە ئەڭ يېڭى خەۋەرلەرنىڭ ئۇلار ھەققىدە نېمە دېگەنلىكى توغرىسىدىكى قىسقا AI خۇلاسىسى. تەھلىل سەرپ قىلمايدۇ.';

  @override
  String get briefRefresh => 'يېڭىلا';

  @override
  String get sectionEarnings => 'پەسىللىك نەتىجە';

  @override
  String earningsNext(String date) {
    return 'كېيىنكى دوكلات: $date';
  }

  @override
  String get earningsExpected => 'مۆلچەردىكى EPS';

  @override
  String get earningsReported => 'ئېلان قىلىنغان EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'ئاخىرقى $total پەسىلدە $beats قېتىم مۆلچەردىكى EPS غا تەڭ ياكى ئۇنىڭدىن يۇقىرى',
      one: '1 پەسىلدە $beats قېتىم مۆلچەردىكى EPS غا تەڭ ياكى ئۇنىڭدىن يۇقىرى',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol ئەتە پەسىللىك نەتىجىسىنى ئېلان قىلىدۇ';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol بۈگۈن پەسىللىك نەتىجىسىنى ئېلان قىلىدۇ';
  }

  @override
  String get earningsRemindersTitle => 'نەتىجە ئەسكەرتىشى';

  @override
  String get earningsRemindersSubtitle =>
      'يىغقۇچىڭىزدىكى ياكى مەبلەغ بىرىكمىڭىزدىكى پاي چېكلىرى پەسىللىك نەتىجىسىنى ئېلان قىلىشتىن بىر كۈن بۇرۇن ئۇقتۇرۇش';

  @override
  String addAllToFavorites(int count) {
    return 'ھەممىنى يىغقۇچقا قوشۇش ($count)';
  }

  @override
  String get portfolioImportPhoto => 'ئېكران كەسمىسىدىن كىرگۈزۈش';

  @override
  String get holdingsReading => 'پايلىرىڭىز ئوقۇلۇۋاتىدۇ…';

  @override
  String get holdingsReviewTitle => 'تېپىلغان پايلار';

  @override
  String get holdingsReviewHint =>
      'قوشۇشتىن بۇرۇن سانلارنى تەكشۈرۈڭ. باھا ھەر بىر پاينىڭ ئوتتۇرىچە سېتىۋېلىش باھاسى، بۈگۈنكى باھا ئەمەس.';

  @override
  String get holdingsNoPrice => 'رەسىمدە ئوتتۇرىچە سېتىۋېلىش باھاسى يوق';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count پاي قوشۇش',
      one: '1 پاي قوشۇش',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'بۇ رەسىمدە پاي تېپىلمىدى. ۋاكالەتچىڭىزنىڭ پاي ياكى مۈلۈك بېتىنىڭ ئېكران كەسمىسىنى سىناپ بېقىڭ.';

  @override
  String get week52Range => '52 ھەپتىلىك دائىرە';

  @override
  String week52BelowHigh(String percent) {
    return '52 ھەپتىلىك ئەڭ يۇقىرىدىن $percent تۆۋەن';
  }

  @override
  String get week52AtHigh => '52 ھەپتىلىك ئەڭ يۇقىرىدا';

  @override
  String get alertKindTrailing => 'چوققىدىن چۈشسە';

  @override
  String get alertTrailingPercent => 'چوققىدىن چۈشۈش (%)';

  @override
  String get alertTrailingHint =>
      'باھانى يۇقىرىغا ئەگىشىدۇ: باھا تەڭشىگەندىن بۇيانقى ئەڭ يۇقىرى سەۋىيىسىدىن مۇشۇنچىلىك چۈشسە ئەسكەرتىدۇ.';

  @override
  String alertDescTrailing(String percent) {
    return 'چوققىدىن $percent چۈشۈش';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'ھازىرغىچە چوققا: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol چوققىدىن $percent چۈشتى';
  }

  @override
  String get sectionInsiders => 'ئىچكى ئادەملەر سودىسى';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count قېتىم سېتىۋېلىش',
      one: '1 قېتىم سېتىۋېلىش',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count قېتىم سېتىش',
      one: '1 قېتىم سېتىش',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'ساپ: $shares پاي';
  }

  @override
  String get insiderBuy => 'سېتىۋالدى';

  @override
  String get insiderSell => 'ساتتى';

  @override
  String get insiderHint =>
      'يېقىنقى 90 كۈندە ئىجرائىيە ئەمەلدارلار ۋە دىرېكتورلارنىڭ ئوچۇق بازاردا قىلغان سېتىۋېلىش ۋە سېتىشلىرى (SEC Form 4). تاللاش ھوقۇقىنى ئىشلىتىش ۋە مۇكاپات پايلىرى ھېسابلانمايدۇ.';

  @override
  String get insiderNone =>
      'يېقىنقى 90 كۈندە ئوچۇق بازاردا ئىچكى ئادەملەرنىڭ سېتىۋېلىش ياكى سېتىشى يوق.';

  @override
  String get analystTrend => 'پىكىرلەرنىڭ ئايمۇئاي ئۆزگىرىشى';

  @override
  String get watchListAll => 'ھەممىسى';

  @override
  String get watchListNew => 'يېڭى تىزىملىك';

  @override
  String get watchListName => 'تىزىملىك نامى';

  @override
  String get watchListRename => 'تىزىملىك نامىنى ئۆزگەرتىش';

  @override
  String get watchListDelete => 'تىزىملىكنى ئۆچۈرۈش';

  @override
  String get watchListAddTo => 'تىزىملىككە قوشۇش';

  @override
  String get watchListEmpty =>
      'بۇ تىزىملىكتە تېخى پاي چېكى يوق. قوشۇش ئۈچۈن پاي چېكىنىڭ يېنىدىكى تىزىملىك كۇنۇپكىسىنى چېكىڭ.';

  @override
  String get portfolioAskTitle => 'مەبلەغ بىرىكمىڭىز ھەققىدىكى سوئاللار';

  @override
  String get rangeYtd => 'بۇ يىل';

  @override
  String get backupTitle => 'زاپاسلاش';

  @override
  String get backupSave => 'زاپاس ساقلاش';

  @override
  String get backupSaveHint =>
      'يىغقۇچىڭىز، تىزىملىكلىرىڭىز، مەبلەغ بىرىكمىڭىز، ئاگاھلاندۇرۇشلىرىڭىز ۋە خاتىرىلىرىڭىز بىر ھۆججەتتە.';

  @override
  String get backupRestore => 'زاپاستىن ئەسلىگە كەلتۈرۈش';

  @override
  String get backupRestoreHint =>
      'ھۆججەتتىكىلەرنى قوشىدۇ؛ ھازىر بار نەرسىلىرىڭىزدىن ھېچنېمە ئۆچۈرۈلمەيدۇ.';

  @override
  String get backupRestored => 'زاپاس ئەسلىگە كەلتۈرۈلدى.';

  @override
  String get backupInvalid => 'بۇ ھۆججەت WhatStock زاپىسى ئەمەس.';

  @override
  String get allocationPositions => 'پايلار';

  @override
  String get allocationSectors => 'ساھەلەر';

  @override
  String get allocationCurrencies => 'پۇللار';

  @override
  String get compareReturn1y => '1 يىللىق پايدا';

  @override
  String get compareFromHigh => '52 ھەپتىلىك ئەڭ يۇقىرىدىن ئارىلىق';

  @override
  String get briefAutoTitle => 'ھەر ئەتىگەن كۈندىلىك خۇلاسە';

  @override
  String get briefAutoSubtitle =>
      '«بۈگۈن پايچېكلىرىڭىز بىلەن» ئەپ ئىجرا بولۇۋاتقاندا ئەتىگەن سائەت 7:00 دىن كېيىن ئاپتوماتىك تەييارلىنىدۇ؛ كومپيۇتېرلاردا بىر ئۇقتۇرۇش سىزگە خەۋەر قىلىدۇ. كۈندىلىك سوئال چېكىڭىزدىن سەرپ بولىدۇ، تەھلىل ئەمەس.';

  @override
  String get targetsButton => 'نىشان تەقسىمات';

  @override
  String get targetsTitle => 'نىشان تەقسىمات';

  @override
  String get targetsHint =>
      'ھەر بىر پاينىڭ پورتفېلدىن قانچىلىك ئۈلۈش ئېلىشى كېرەكلىكىنى بەلگىلەڭ. نىشان بولمىسا رامكىنى بوش قالدۇرۇڭ. ئاندىن ئەپ ئۇنىڭغا يېتىش ئۈچۈن نېمە سېتىۋېلىش ياكى سېتىش كېرەكلىكىنى كۆرسىتىدۇ.';

  @override
  String targetsSum(String percent) {
    return 'جەمئىي: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'سېتىۋېلىش ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'سېتىش ≈ $amount';
  }

  @override
  String get rebalanceOk => 'نىشاندا';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol مۆلچەردىكى EPS دىن ئاشتى';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol مۆلچەردىكى EPS غا يەتمىدى';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'ئېلان قىلىنغان EPS $actual، مۆلچەر $estimate';
  }

  @override
  String get newsExplain => 'بۇ نېمە دېگەنلىك؟';

  @override
  String get watchAlertAll => 'چوڭ كۈنلۈك ئۆزگىرىشكە ئاگاھلاندۇرۇش';

  @override
  String get watchAlertAllHint =>
      'بۇ تىزىملىكتىكى ھەر بىر پاي چېكىگە باھا ئاگاھلاندۇرۇشى: بىر كۈندە مۇشۇنچىلىك ئۆرلىسە ياكى چۈشسە خەۋەر قىلىدۇ. ئاللىقاچان ئاگاھلاندۇرۇشى بار پاي چەكلىرى ئۆزىنىڭكىنى ساقلايدۇ.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ئاگاھلاندۇرۇش تەڭشەلدى',
      one: '1 ئاگاھلاندۇرۇش تەڭشەلدى',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'ئەمەلگە ئاشقان پايدىنى چىقىرىش (CSV)';

  @override
  String get portfolioAnnualReturn => 'يىللىق پايدا نىسبىتى';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / يىل';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'پۇل بىلەن ئۆلچەنگەن يىللىق پايدا نىسبىتى (XIRR): قاچان سېتىۋالغان ۋە ساتقانلىقىڭىزنى ھېسابقا ئالىدۇ، شۇڭا كېيىن قوشۇلغان پۇل ئۇنى بۇرمىلىمايدۇ. تۇنجى سېتىۋېلىشىڭىزغا كەم دېگەندە بىر يىل توشقاندا كۆرسىتىلىدۇ؛ پايدا ئۈلۈشى ئۆز ئىچىگە ئېلىنمىغان.';

  @override
  String get eventsAddToCalendar => 'كالېندارغا قوشۇش (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'مەبلەغ بىرىكمىسى ئاگاھلاندۇرۇشى';

  @override
  String get portfolioMoveAlertSubtitle =>
      'پۈتۈن مەبلەغ بىرىكمىڭىز بىر كۈندە مۇشۇنچىلىك ئۆزگەرگەندە ئۇقتۇرۇش.';

  @override
  String get portfolioMoveAlertOff => 'تاقاق';

  @override
  String portfolioMoveUp(String percent) {
    return 'مەبلەغ بىرىكمىڭىز بۈگۈن $percent ئۆستى';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'مەبلەغ بىرىكمىڭىز بۈگۈن $percent تۆۋەنلىدى';
  }

  @override
  String get whatIfTitle => 'مەبلەغ سالغان بولسىڭىز قانداق بولاتتى؟';

  @override
  String get whatIfAmount => 'سومما';

  @override
  String whatIfResult(String amount, String period) {
    return '$period ئىلگىرى سېلىنغان $amount بۈگۈن مۇنچىلىك بولاتتى';
  }

  @override
  String get whatIfNote =>
      'پەقەت پاي چېكى باھاسىغا ئاساسلانغان: پايدا ئۈلۈشى، ھەق ۋە باج ئۆز ئىچىگە ئېلىنمىغان. ئۆتمۈشتىكى پايدا كەلگۈسىنى مۆلچەرلىمەيدۇ.';

  @override
  String get watchShare => 'تىزىملىكنى ھەمبەھىرلەش';

  @override
  String get watchImport => 'پاي چېكى كودى قوشۇش';

  @override
  String get watchImportHint =>
      'پەش، بوشلۇق ياكى يېڭى قۇر بىلەن ئايرىلغان پاي چېكى كودلىرىنى چاپلاڭ – مەسىلەن، بىرەرسى سىز بىلەن ھەمبەھىرلىگەن تىزىملىك.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count پاي چېكى قوشۇلدى',
      one: '1 پاي چېكى قوشۇلدى',
      zero: 'يېڭى پاي چېكى يوق',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'ئەڭ چوڭلىرى ئالدىدا';

  @override
  String get positionsSortGain => 'ئومۇمىي پايدىسى ئەڭ يۇقىرىلار ئالدىدا';

  @override
  String get positionsSortToday => 'بۈگۈنكى ئەڭ ياخشىلار ئالدىدا';

  @override
  String get chartMyBuys => 'سېتىۋالغانلىرىڭىز';

  @override
  String get chartMySells => 'ساتقانلىرىڭىز';

  @override
  String get shortcutsTitle => 'كۇنۇپكا تاختىسى تېزلەتمىلىرى';

  @override
  String usMarketOpen(String time) {
    return 'ئامېرىكا بازىرى ئوچۇق · تاقىلىشقا $time قالدى';
  }

  @override
  String usMarketClosed(String time) {
    return 'ئامېرىكا بازىرى تاقاق · ئېچىلىشقا $time قالدى';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes مىنۇت';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours سائەت $minutes مىنۇت';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days كۈن $hours سائەت';
  }

  @override
  String get portfolioGoalSet => 'نىشان بەلگىلەش';

  @override
  String get portfolioGoalTitle => 'مەبلەغ بىرىكمىسى نىشانى';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · نىشان: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'نىشانغا يېتىلدى: $amount';
  }

  @override
  String get portfolioGoalRemove => 'نىشاننى ئۆچۈرۈش';

  @override
  String get alertEdit => 'ئاگاھلاندۇرۇشنى تەھرىرلەش';

  @override
  String get positionOpenLots => 'تېخى قولىڭىزدا (ئەڭ كونىسى ئالدىدا)';

  @override
  String get lotRemoved => 'سودا ئۆچۈرۈلدى';

  @override
  String get alertDeleted => 'ئاگاھلاندۇرۇش ئۆچۈرۈلدى';

  @override
  String get alertsClearTriggered => 'قوزغالغان ئاگاھلاندۇرۇشلارنى تازىلاش';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ئاگاھلاندۇرۇش تازىلاندى',
      one: '1 ئاگاھلاندۇرۇش تازىلاندى',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'باش ئېكران';

  @override
  String get allocationCountries => 'دۆلەتلەر';

  @override
  String get newsExplainNoteResearch =>
      'AI چۈشەندۈرۈشى: پاكىتلارنى توردىن ئىزدەيدۇ، ماقالىنى ئاچىدۇ ۋە مەنبەنىڭ قانچىلىك ئىشەنچلىك ئىكەنلىكىنى باھالايدۇ. مەبلەغ سېلىش تەۋسىيەسى ئەمەس. كۈندىلىك سوئال چېكىڭىزدىن سەرپ بولىدۇ، تەھلىل ئەمەس.';

  @override
  String get sourceOfficial => 'رەسمىي';

  @override
  String get sourcePressRelease => 'ئاخبارات باياناتى';

  @override
  String get sourceMajorNews => 'چوڭ مېدىيا';

  @override
  String get sourceOpinion => 'كۆز قاراش';

  @override
  String get earningsSummaryButton => 'ئەڭ يېڭى دوكلاتتا نېمىلەر بار ئىدى؟';

  @override
  String get earningsSummaryNote =>
      'شىركەتنىڭ نەتىجە ئېلانى ۋە توردىن تاپقان ئاخبارات خەۋەرلىرىنىڭ AI قىسقىچە مەزمۇنى. مەبلەغ سېلىش تەۋسىيەسى ئەمەس. كۈندىلىك سوئال چېكىڭىزدىن سەرپ بولىدۇ، تەھلىل ئەمەس.';

  @override
  String get compareLastSurprise => 'ئاخىرقى پەسىل EPS vs مۆلچەر';

  @override
  String get compareNextReport => 'كېيىنكى دوكلات';

  @override
  String get resolvingDescription =>
      'سىز دېمەكچى بولغان پاي چېكى ئېنىقلىنىۋاتىدۇ…';

  @override
  String get instrumentTitle => 'بۇ قورال ھەققىدە';

  @override
  String get instrumentHint =>
      'بۇ بەلگە ئۈچۈن شىركەت ئارخىپى يوق – بۇ ETF، فوند ياكى ئامانەت تالونى بولۇشى مۇمكىن. AI دىن بۇ نېمە، ئىچىدە نېمە بار ۋە قانچە پۇل كېتىدىغانلىقىنى سوراڭ.';

  @override
  String get instrumentAsk => 'بۇ نېمە؟';

  @override
  String get instrumentNote =>
      'چىقارغۇچىنىڭ فوند بېتى ۋە توردىن تاپقان مالىيە تور بەتلىرىگە ئاساسلانغان AI چۈشەندۈرۈشى. مەبلەغ سېلىش تەۋسىيەسى ئەمەس. كۈندىلىك سوئال چېكىڭىزدىن سەرپ بولىدۇ، تەھلىل ئەمەس.';

  @override
  String suggestAskAi(String query) {
    return 'AI دىن سوراڭ: «$query»';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return '$symbols ئۈچۈن نۆۋەتتىكى باھا يوق.';
  }

  @override
  String get eventsRecentResults => 'يېقىندا ئېلان قىلىنغان نەتىجىلەر';

  @override
  String get saveToNotes => 'خاتىرىلىرىمگە ساقلاش';

  @override
  String get savedToNotes => 'خاتىرىلىرىڭىزگە ساقلاندى';

  @override
  String get portfolioDividendsReceived => 'تاپشۇرۇۋالغان دىۋىدېندلار';

  @override
  String get portfolioDividendsThisYear => 'بۇ يىل';

  @override
  String get portfolioDividendsAllTime => 'جەمئىي';

  @override
  String get portfolioAddDividend => 'دىۋىدېند قوشۇش';

  @override
  String portfolioDividendAmount(String currency) {
    return 'تاپشۇرۇۋالغان سومما ($currency)';
  }

  @override
  String get portfolioDividendDate => 'پۇل تۆلەش چېسلاسى';

  @override
  String get portfolioDividendsEmpty =>
      'تېخى دىۋىدېند خاتىرىلەنمىدى. قولدا قوشۇڭ ياكى دەللالىڭىزنىڭ ئېكسپورت ھۆججىتىنى ئىمپورت قىلىڭ – ئۇنىڭدىكى دىۋىدېند قۇرلىرىمۇ ئېلىنىدۇ.';

  @override
  String get portfolioSplit => 'پاي بۆلۈش';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'پاي بۆلۈش: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'بۆلۈشتىن بۇرۇنقى چېسلادىكى سېتىۋېلىش ۋە سېتىشلار تەڭشىلىدۇ: پاي سانى كۆپەيتىلىدۇ، ھەر پاينىڭ باھاسى بۆلۈنىدۇ، شۇڭا تەننەرخ ئۆزگەرمەيدۇ.';

  @override
  String get portfolioSplitRatio => 'نىسبەت (يېڭى : كونا)';

  @override
  String get portfolioSplitRatioError =>
      '10:1 دەك نىسبەت كىرگۈزۈڭ، ياكى تەتۈر بۆلۈش ئۈچۈن 1:10.';

  @override
  String get portfolioSplitDate => 'بۆلۈش چېسلاسى';

  @override
  String portfolioSplitRow(String ratio) {
    return 'پاي بۆلۈش $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'پاي بۆلۈش ئۆچۈرۈلدى';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count پاي بۆلۈش قوشۇلدى',
      one: '1 پاي بۆلۈش قوشۇلدى',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count دىۋىدېند قوشۇلدى',
      one: '1 دىۋىدېند قوشۇلدى',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'دىۋىدېندلارنى ئېكسپورت قىلىش (CSV)';

  @override
  String get portfolioDividendDeleted => 'دىۋىدېند ئۆچۈرۈلدى';

  @override
  String get portfolioDividendsHint =>
      'سوممىلار ھېساباتىڭىزغا كەلگەن بويىچە، تۆلەش پۇل بىرلىكىدە؛ جەمئىي سومما بۈگۈنكى پەرق بويىچە ئالماشتۇرۇلىدۇ. باج مەلۇماتىڭىز ئۈچۈن دەللالىڭىزنىڭ ھېسابات جەدۋىلىنى ئىشلىتىڭ.';

  @override
  String get awayTitle => 'سىز يوق چاغدا';

  @override
  String awaySince(String when) {
    return '$when دىن باشلاپ';
  }

  @override
  String get awayQuiet => 'كۆپ ئۆزگىرىش بولمىدى.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ئاگاھلاندۇرۇش قوزغىتىلدى',
      one: '1 ئاگاھلاندۇرۇش قوزغىتىلدى',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'ئېلان قىلىنغان نەتىجىلەر: $symbols';
  }

  @override
  String get moveWhyButton => 'بۈگۈن نېمىشقا ئۆزگىرىۋاتىدۇ؟';

  @override
  String moveWhyTitle(String percent) {
    return 'بۈگۈن $percent';
  }

  @override
  String get moveWhyNote =>
      'توردىن تېپىلغان بۈگۈنكى خەۋەرلەرگە ئاساسلانغان AI چۈشەندۈرۈشى؛ ھەقىقىي سەۋەب نامەلۇم ياكى ئوخشىمىغان بولۇشى مۇمكىن. مەبلەغ سېلىش مەسلىھەتى ئەمەس. تەھلىل ئەمەس، كۈنلۈك سوئال چەكلىمىڭىزنى ئىشلىتىدۇ.';

  @override
  String get sectionTechnical => 'تېخنىكىلىق كۆرۈنۈش';

  @override
  String get labelSma50 => '50 كۈنلۈك ئوتتۇرىچە';

  @override
  String get labelSma200 => '200 كۈنلۈك ئوتتۇرىچە';

  @override
  String get labelRsi => 'RSI (14 كۈن)';

  @override
  String get labelVolatility30 => 'ئۆزگىرىشچانلىق (30 كۈن)';

  @override
  String techAbove(String percent) {
    return '$percent ئۈستىدە';
  }

  @override
  String techBelow(String percent) {
    return '$percent ئاستىدا';
  }

  @override
  String get techOverbought => 'ھەددىدىن زىيادە سېتىۋېلىنغان';

  @override
  String get techOversold => 'ھەددىدىن زىيادە سېتىلغان';

  @override
  String get techNeutral => 'بىتەرەپ';

  @override
  String get techGoldenCross =>
      '50 كۈنلۈك ئوتتۇرىچە 200 كۈنلۈك ئوتتۇرىچىنىڭ ئۈستىدە – كلاسسىك چۈشەندۈرۈش بويىچە ئۆرلەش يۈزلىنىشى.';

  @override
  String get techDeathCross =>
      '50 كۈنلۈك ئوتتۇرىچە 200 كۈنلۈك ئوتتۇرىچىنىڭ ئاستىدا – كلاسسىك چۈشەندۈرۈش بويىچە چۈشۈش يۈزلىنىشى.';

  @override
  String get glossSma50 =>
      'ئاخىرقى 50 سودا كۈنىنىڭ تاقاش باھاسىنىڭ ئوتتۇرىچىسى. ئۇنىڭ ئۈستىدىكى باھا كۆپىنچە قىسقا مۇددەتلىك كۈچ، ئاستىدىكىسى ئاجىزلىق دەپ قارىلىدۇ.';

  @override
  String get glossSma200 =>
      'ئاخىرقى 200 سودا كۈنىنىڭ تاقاش باھاسىنىڭ ئوتتۇرىچىسى – ئۇزۇن مۇددەتلىك يۈزلىنىشنىڭ كلاسسىك سىزىقى. نۇرغۇن مەبلەغ سالغۇچىلار ئۇنىڭ ئۈستىدىكى باھانى ئۇزۇن مۇددەتلىك ئۆرلەش يۈزلىنىشى دەپ قارايدۇ.';

  @override
  String get glossRsi =>
      'نىسپىي كۈچ كۆرسەتكۈچى: يېقىنقى پايدىنى يېقىنقى زىيان بىلەن 0–100 ئۆلچىكىدە سېلىشتۇرىدۇ. 70 دىن يۇقىرى بولسا پاي چېكى كۆپىنچە ھەددىدىن زىيادە سېتىۋېلىنغان (تېز ئۆرلىگەن)، 30 دىن تۆۋەن بولسا ھەددىدىن زىيادە سېتىلغان دېيىلىدۇ – ئەمما كۈچلۈك يۈزلىنىش ئۇ يەردە ئۇزۇن تۇرۇشى مۇمكىن.';

  @override
  String get glossVolatility =>
      'باھانىڭ كۈندىن-كۈنگە قانچىلىك ئۆزگىرىشى، بىر يىلغا ھېسابلانغان: 20% دېگەنلىك نورمال بىر يىلدا تەخمىنەن ±20% دائىرىسىدە ھەرىكەتلىنىدۇ دېگەنلىك. يۇقىرى ئۆزگىرىشچانلىق ئىككى يۆنىلىشتىمۇ چوڭ ھەرىكەتنى بىلدۈرىدۇ.';

  @override
  String get techNote =>
      'كۈندىلىك تاقاش باھاسىدىن ھېسابلانغان. تېخنىكىلىق سىگناللار ئۆتمۈشنى تەسۋىرلەيدۇ، كەلگۈسىنى ئەمەس.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$count ئورۇندىن $above ئى ئۆزىنىڭ 200 كۈنلۈك ئوتتۇرىچە قىممىتىدىن يۇقىرى';
  }

  @override
  String get watchSignalsTitle => 'سىگناللار';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · ھەددىدىن زىيادە سېتىلغان';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · ھەددىدىن زىيادە سېتىۋېلىنغان';
  }

  @override
  String get signalCrossedAbove => '200 كۈنلۈك ئوتتۇرىچىدىن يۇقىرىغا ئۆتتى';

  @override
  String get signalCrossedBelow => '200 كۈنلۈك ئوتتۇرىچىدىن تۆۋەنگە ئۆتتى';

  @override
  String get signalAlertsTitle => 'تېخنىكىلىق سىگنال ئۇقتۇرۇشلىرى';

  @override
  String get signalAlertsSubtitle =>
      'كۈندە بىر قېتىم، سىز ئەگەشكەن پاي چېكى ھەددىدىن زىيادە سېتىلغان ياكى ھەددىدىن زىيادە سېتىۋېلىنغان (RSI) ھالەتكە كىرگەندە، ياكى باھاسى 200 كۈنلۈك ئوتتۇرىچىدىن ئۆتكەندە.';

  @override
  String get signalAlertsNotification => 'تېخنىكىلىق سىگناللار';

  @override
  String get glossaryPageTitle => 'ئاتالغۇلار لۇغىتى';

  @override
  String get glossaryPageSubtitle =>
      'ئەپ كۆرسەتكەن ھەربىر سانغا ئاددىي چۈشەندۈرۈش، P/E دىن RSI غىچە';

  @override
  String get glossarySearchHint => 'لۇغەتتىن ئىزدەش';

  @override
  String get portfolioCash => 'نەق پۇل';

  @override
  String get portfolioCashTitle => 'نەق پۇل قالدۇقى';

  @override
  String get portfolioCashHint =>
      'بروكېرىڭىزدىكى سېلىنمىغان پۇل، پۇل تۈرى بويىچە. ئومۇمىي قىممەت ۋە تەقسىماتقا كىرىدۇ؛ پايداغا كىرمەيدۇ.';

  @override
  String portfolioCashAmount(String currency) {
    return 'سومما ($currency)';
  }

  @override
  String get portfolioCashEdit => 'نەق پۇل قالدۇقىنى تەڭشەش';

  @override
  String get portfolioDividendsExpected => 'كېيىنكى كۈتۈلگەن';

  @override
  String get portfolioDividendsExpectedNote =>
      'سىز خاتىرىلىگەن تۆلەملەرنىڭ چېسلا ۋە سوممىسىدىن مۆلچەرلەنگەن؛ شىركەتلەر ئۇلارنى ئۆزگەرتىشى ياكى ئۆتكۈزۈۋېتىشى مۇمكىن.';

  @override
  String portfolioDividendAround(String date) {
    return 'تەخمىنەن $date';
  }
}
