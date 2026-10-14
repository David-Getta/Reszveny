// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Pushto Pashto (`ps`).
class AppLocalizationsPs extends AppLocalizations {
  AppLocalizationsPs([String locale = 'ps']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'د یوې ونډې انځور واخلئ او د هغې په اړه هر څه زده کړئ.';

  @override
  String get homeHint =>
      'د ونډې سند، د بروکرېج اپ پرده، ورځپاڼه یا د شرکت لوګو – هر هغه څه چې ونډه پرې وپېژندل شي.';

  @override
  String get takePhoto => 'انځور واخلئ';

  @override
  String get chooseFromGallery => 'له ګالري څخه یې وټاکئ';

  @override
  String get chooseImage => 'انځور وټاکئ';

  @override
  String get enterTickerManually => 'ټیکر پخپله ولیکئ';

  @override
  String get tickerInputLabel => 'ټیکر سمبول';

  @override
  String get tickerInputHint => 'لکه AAPL';

  @override
  String get lookUp => 'ولټوئ';

  @override
  String demoModeBanner(String symbols) {
    return 'ډیمو حالت – د بازار د معلوماتو کیلي نه ده تنظیم شوې. نمونه معلومات یوازې د دې لپاره شته: $symbols.';
  }

  @override
  String get recognizing => 'انځور تحلیلېږي…';

  @override
  String get loadingData => 'معلومات پورته کېږي…';

  @override
  String get noCandidatesTitle => 'هېڅ ونډه ونه پېژندل شوه';

  @override
  String get noCandidatesBody =>
      'موږ ونه توانېدو چې په دې انځور کې ونډه وپېژنو. یو روښانه انځور وازمویئ، یا ټیکر پخپله ولیکئ.';

  @override
  String get whatWeSaw => 'موږ څه ولیدل';

  @override
  String get chooseCandidateTitle => 'ستاسو مطلب کومه ونډه وه؟';

  @override
  String confidencePercent(int percent) {
    return '$percent% باور';
  }

  @override
  String get settings => 'تنظیمات';

  @override
  String get language => 'ژبه';

  @override
  String get systemLanguage => 'د سیسټم ډیفالټ';

  @override
  String get about => 'د اپ په اړه';

  @override
  String get disclaimer =>
      'دا اپ یوازې معلومات وړاندې کوي او د پانګونې مشوره نه ده. معلومات ښايي ځنډېدلي یا ناسم وي.';

  @override
  String dataSource(String source) {
    return 'د معلوماتو سرچینه: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'پېژندنه: $source';
  }

  @override
  String get retry => 'بیا هڅه وکړئ';

  @override
  String get cancel => 'لغوه کړئ';

  @override
  String get ok => 'سمه ده';

  @override
  String get close => 'بند کړئ';

  @override
  String get errorGeneric => 'یوه ستونزه رامنځته شوه.';

  @override
  String get errorSectionUnavailable => 'دا برخه پورته نه شوه.';

  @override
  String get notAvailable => 'نشته';

  @override
  String get sectionIdentity => 'پېژندنه';

  @override
  String get sectionPrice => 'بیه';

  @override
  String get sectionValuation => 'ارزونه';

  @override
  String get sectionFinancials => 'مالي ارقام';

  @override
  String get sectionDividend => 'د ونډې ګټه';

  @override
  String get sectionProfile => 'د شرکت پروفایل';

  @override
  String get sectionAnalysts => 'د شنونکو درجه بندي';

  @override
  String get sectionNews => 'خبرونه';

  @override
  String get sectionRecognition => 'د پېژندنې جزئیات';

  @override
  String get labelSymbol => 'ټیکر';

  @override
  String get labelExchange => 'بورس';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'پولي واحد';

  @override
  String get labelCountry => 'هېواد';

  @override
  String get labelIndustry => 'صنعت';

  @override
  String get labelSector => 'سکتور';

  @override
  String get labelWebsite => 'وېبپاڼه';

  @override
  String get labelIpoDate => 'د IPO نېټه';

  @override
  String get labelMarketCap => 'بازاري ارزښت';

  @override
  String get labelSharesOutstanding => 'صادرې شوې ونډې';

  @override
  String get labelEmployees => 'کارکوونکي';

  @override
  String get labelCeo => 'اجرائیوي رئیس';

  @override
  String get labelHeadquarters => 'مرکزي دفتر';

  @override
  String get labelDescription => 'تشریح';

  @override
  String get labelLastPrice => 'وروستۍ بیه';

  @override
  String get labelChange => 'بدلون';

  @override
  String get labelOpen => 'د پرانیستې بیه';

  @override
  String get labelDayHigh => 'د ورځې لوړه بیه';

  @override
  String get labelDayLow => 'د ورځې ټیټه بیه';

  @override
  String get labelPreviousClose => 'د تېرې ورځې پای بیه';

  @override
  String get labelWeek52High => 'د 52 اونیو لوړه بیه';

  @override
  String get labelWeek52Low => 'د 52 اونیو ټیټه بیه';

  @override
  String get labelAverageVolume10d => 'منځنی حجم (10 ورځې)';

  @override
  String updatedAt(String time) {
    return 'تازه شوی: $time';
  }

  @override
  String get labelPeTrailing => 'P/E (تېر)';

  @override
  String get labelPeForward => 'P/E (راتلونکی)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / آزاد نغدي جریان';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'بېټا';

  @override
  String get labelRevenueTtm => 'عاید (TTM)';

  @override
  String get labelNetIncomeTtm => 'خالصه ګټه (TTM)';

  @override
  String get labelGrossMargin => 'ناخالص مارجن';

  @override
  String get labelOperatingMargin => 'عملیاتي مارجن';

  @override
  String get labelNetMargin => 'خالص مارجن';

  @override
  String get labelRoe => 'د پانګې عاید';

  @override
  String get labelRoa => 'د شتمنیو عاید';

  @override
  String get labelDebtToEquity => 'پور / پانګه';

  @override
  String get labelCurrentRatio => 'جاري نسبت';

  @override
  String get labelRevenueGrowth => 'د عاید وده (YoY)';

  @override
  String get labelEpsGrowth => 'د EPS وده (YoY)';

  @override
  String get labelDividendYield => 'د ونډې ګټې کچه';

  @override
  String get labelDividendPerShare => 'په هره ونډه وېشل شوې ګټه';

  @override
  String get labelPayoutRatio => 'د ګټې وېش نسبت';

  @override
  String get labelConsensus => 'ګډ نظر';

  @override
  String get ratingStrongBuy => 'قوي پېرود';

  @override
  String get ratingBuy => 'پېرود';

  @override
  String get ratingHold => 'ساتل';

  @override
  String get ratingSell => 'پلور';

  @override
  String get ratingStrongSell => 'قوي پلور';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count شنونکي',
      one: '1 شنونکی',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'موده: $period';
  }

  @override
  String get noNews => 'تازه خبرونه نشته.';

  @override
  String get openArticle => 'مقاله پرانیزئ';

  @override
  String get openLinkFailed => 'لینک پرانیستل نه شو.';

  @override
  String get recognitionSummary => 'لنډیز';

  @override
  String get recognitionEvidence => 'ولې داسې فکر کوو';

  @override
  String get recognitionRawText => 'له انځور څخه لوستل شوی متن';

  @override
  String get errMissingAnthropicKey =>
      'د انځور پېژندنه تنظیم شوې نه ده (ANTHROPIC_API_KEY نشته). ټیکر پخپله ولیکئ.';

  @override
  String get errRecognitionUnreachable =>
      'د پېژندنې خدمت ته لاسرسی ونه شو. خپل انټرنېټ اتصال وګورئ.';

  @override
  String errRecognitionHttp(String status) {
    return 'د پېژندنې خدمت تېروتنه راوګرځوله (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'د پېژندنې خدمت ونه توانېد چې دا انځور پروسس کړي.';

  @override
  String get errRecognitionTruncated =>
      'د پېژندنې ځواب نیمګړی پاتې شو. مهرباني وکړئ بیا هڅه وکړئ.';

  @override
  String get errRecognitionBadResponse =>
      'د پېژندنې له خدمت څخه ناڅاپي ځواب راغی.';

  @override
  String get errRecognitionEmpty => 'د پېژندنې خدمت تش ځواب راکړ.';

  @override
  String get errMissingFinnhubKey =>
      'د بازار معلومات تنظیم شوي نه دي (FINNHUB_API_KEY نشته).';

  @override
  String get errMarketUnreachable =>
      'د بازار د معلوماتو خدمت ته لاسرسی ونه شو. خپل انټرنېټ اتصال وګورئ.';

  @override
  String get errMarketRateLimited =>
      'د بازار د معلوماتو خدمت ته ډېرې غوښتنې شوې. مهرباني وکړئ یوه دقیقه انتظار وکړئ.';

  @override
  String errMarketHttp(String status) {
    return 'د بازار د معلوماتو خدمت تېروتنه راوګرځوله (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'د بازار د معلوماتو له خدمت څخه ناڅاپي ځواب راغی.';

  @override
  String errNoQuote(String symbol) {
    return 'د $symbol لپاره د بیې معلومات ونه موندل شول.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'د $symbol لپاره د شرکت پروفایل ونه موندل شو.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'ډیمو حالت یوازې $symbols ملاتړ کوي. د ژوندیو معلوماتو لپاره FINNHUB_API_KEY ورزیات کړئ.';
  }

  @override
  String errUnknown(String detail) {
    return 'یوه ستونزه رامنځته شوه: $detail';
  }

  @override
  String get newSearch => 'نوی لټون';

  @override
  String get recentSearches => 'وروستي';

  @override
  String get noRecentSearches => 'تر اوسه وروستي لټونونه نشته.';

  @override
  String get clearRecent => 'وروستي پاک کړئ';

  @override
  String get greeting => 'نن کومه ونډه وګورو؟';

  @override
  String get searchHint => 'ټیکر یا د شرکت نوم';

  @override
  String get attachImage => 'انځور ونښلوئ';

  @override
  String get searchResultsTitle => 'د لټون پایلې';

  @override
  String errNoResults(String query) {
    return 'د «$query» لپاره هېڅ ونډه ونه موندل شوه.';
  }

  @override
  String get quickBarHint => 'ټیکر یا د شرکت نوم ولیکئ…';

  @override
  String get openFullWindow => 'کړکۍ پرانیزئ';

  @override
  String hotkeyHint(String shortcut) {
    return 'له هر ځای څخه د WhatStock راوستلو لپاره $shortcut کېکاږئ.';
  }

  @override
  String get trayOpen => 'WhatStock پرانیزئ';

  @override
  String get trayQuickSearch => 'چټک لټون';

  @override
  String get trayQuit => 'وتل';

  @override
  String get appearance => 'بڼه';

  @override
  String get themeSystem => 'سیسټم';

  @override
  String get themeDark => 'تیاره';

  @override
  String get themeLight => 'روښانه';

  @override
  String get back => 'شاته';

  @override
  String get aiSectionTitle => 'AI تحلیل';

  @override
  String get aiIntro =>
      'د AI لخوا لیکل شوې مفصله کتنه: د وروستیو خبرونو لنډیز، سوداګري، پیاوړي اړخونه، خطرونه او پټ عوامل، ارزونه، له رواني، ټولنیزو، تخنیکي او کلان اقتصادي زاویو د سناریوګانو سره د بیې لیدلوری، او هغه څه چې باید وڅارل شي.';

  @override
  String get aiGenerate => 'تحلیل جوړ کړئ';

  @override
  String get aiRegenerate => 'بیا یې جوړ کړئ';

  @override
  String get aiGenerating =>
      'تحلیل چمتو کېږي… دا ښايي یوه یا دوه دقیقې وخت ونیسي.';

  @override
  String get aiSources => 'سرچینې';

  @override
  String aiGeneratedAt(String time) {
    return 'جوړ شوی: $time';
  }

  @override
  String get aiDisclaimer =>
      'د عامه معلوماتو او وروستیو خبرونو پر بنسټ د AI لخوا جوړ شوی تحلیل. ښايي تېروتنې ولري یا زوړ وي، او د پانګونې مشوره نه ده.';

  @override
  String get errAiNotConfigured =>
      'AI تحلیل تنظیم شوی نه دی (ANTHROPIC_API_KEY نشته).';

  @override
  String get errAiUnreachable =>
      'د AI خدمت ته لاسرسی ونه شو. خپل انټرنېټ اتصال وګورئ.';

  @override
  String errAiHttp(String status) {
    return 'د AI خدمت تېروتنه راوګرځوله (HTTP $status).';
  }

  @override
  String get errAiRefused => 'د AI خدمت د دې ونډې له تحلیلولو ډډه وکړه.';

  @override
  String get errAiBadResponse => 'د AI له خدمت څخه ناڅاپي ځواب راغی.';

  @override
  String get sectionChart => 'د بیې چارټ';

  @override
  String get rangeOneWeek => '1 اونۍ';

  @override
  String get rangeOneMonth => '1 میاشت';

  @override
  String get rangeThreeMonths => '3 میاشتې';

  @override
  String get rangeOneYear => '1 کال';

  @override
  String get rangeFiveYears => '5 کاله';

  @override
  String get chartUnavailable =>
      'له اوسنۍ معلوماتي سرچینې څخه د بیې تاریخچه نشته.';

  @override
  String get sectionStatements => 'مالي صورتحسابونه (کلني)';

  @override
  String get labelFiscalYear => 'مالي کال';

  @override
  String get labelRevenue => 'عاید';

  @override
  String get labelNetIncome => 'خالصه ګټه';

  @override
  String get labelTotalAssets => 'ټولې شتمنۍ';

  @override
  String get labelTotalLiabilities => 'ټول مکلفیتونه';

  @override
  String get labelEquity => 'د ونډه والو پانګه';

  @override
  String get labelOperatingCashFlow => 'عملیاتي نغدي جریان';

  @override
  String get statementsUnavailable =>
      'د دې ونډې لپاره خپاره شوي مالي صورتحسابونه نشته.';

  @override
  String get launchAtLogin => 'د ننوتلو پر مهال پیلول';

  @override
  String get hotkeyLabel => 'عمومي شارټکټ';

  @override
  String get hotkeyRecordHint => 'دلته کلیک وکړئ، بیا د کیلیو نوی ترکیب کېکاږئ';

  @override
  String get hotkeyReset => 'ډیفالټ ته یې راوګرځوئ';

  @override
  String get pasteImage => 'له کلیپبورډ څخه انځور پېسټ کړئ';

  @override
  String get errClipboardNoImage => 'په کلیپبورډ کې انځور نشته.';

  @override
  String get favorites => 'خوښې';

  @override
  String get addToFavorites => 'خوښو ته ورزیات کړئ';

  @override
  String get removeFromFavorites => 'له خوښو لرې کړئ';

  @override
  String get noFavorites =>
      'تر اوسه خوښې نشته. د ورزیاتولو لپاره د یوې ونډې پر ستوري ټک وکړئ.';

  @override
  String get displayCurrency => 'د ښودلو پولي واحد';

  @override
  String get displayCurrencyNone => 'یوازې د ونډې خپل پولي واحد';

  @override
  String labelConverted(String currency) {
    return '≈ په $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'نرخ: 1 $from = $rate $to (ECB، $date)';
  }

  @override
  String get updates => 'اوسمهالونه';

  @override
  String currentVersion(String version) {
    return 'نسخه $version';
  }

  @override
  String get autoUpdate => 'اوسمهالونه پخپله نصبول';

  @override
  String get checkForUpdates => 'اوسمهالونه وګورئ';

  @override
  String get updateChecking => 'اوسمهالونه کتل کېږي…';

  @override
  String get updateUpToDate => 'تاسو وروستۍ نسخه لرئ.';

  @override
  String updateAvailable(String version) {
    return 'نسخه $version شته.';
  }

  @override
  String get updateDownloading => 'اوسمهال په شالید کې ښکته کېږي…';

  @override
  String get updateDownloaded =>
      'اوسمهال چمتو دی. د نصبولو لپاره اپ بیا پیل کړئ.';

  @override
  String get updateNow => 'اوسمهال کړئ';

  @override
  String get restartNow => 'بیا پیل کړئ';

  @override
  String get updatesViaStore => 'اوسمهالونه د اپ سټور له لارې پخپله راځي.';

  @override
  String get updateCheckFailed => 'اوسمهالونه ونه کتل شول.';

  @override
  String get subscription => 'ګډون';

  @override
  String get planTrial => 'آزمېښتي';

  @override
  String get planNormal => 'عادي';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'فعال پلان نشته';

  @override
  String planAnalysesPerMonth(int count) {
    return 'په میاشت کې $count تحلیلونه';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$days ورځنی وړیا آزمېښت له $count تحلیلونو سره';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'د آزمېښت $days ورځې پاتې دي',
      one: 'د آزمېښت 1 ورځ پاتې ده',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'ستاسو وړیا آزمېښت پای ته ورسېد. د تحلیل د دوام لپاره یو پلان وټاکئ.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'په دې موده کې له $total څخه $remaining تحلیلونه پاتې دي';
  }

  @override
  String extraCredits(int count) {
    return '$count اضافي تحلیلونه';
  }

  @override
  String renewsOn(String date) {
    return 'په $date نوی کېږي';
  }

  @override
  String get choosePlan => 'پلان وټاکئ';

  @override
  String get currentPlan => 'اوسنی پلان';

  @override
  String get subscribe => 'ګډون وکړئ';

  @override
  String get perMonth => '/ میاشت';

  @override
  String get extraPacksTitle => 'نور ته اړتیا لرئ؟ اضافي تحلیلونه واخلئ';

  @override
  String get extraPacksHint =>
      'اضافي تحلیلونه هېڅکله نه ختمېږي او ستاسو له میاشتنۍ سهمیې وروسته کارول کېږي.';

  @override
  String get buy => 'واخلئ';

  @override
  String get restorePurchases => 'پېرودونه بیا راوګرځوئ';

  @override
  String get manageSubscription => 'ګډون اداره کړئ';

  @override
  String get purchaseSuccess => 'مننه! ستاسو پېرود فعال دی.';

  @override
  String get purchasePending => 'پېرود په تمه دی…';

  @override
  String get purchaseFailed => 'پېرود بشپړ نه شو.';

  @override
  String get purchaseCanceled => 'پېرود لغوه شو.';

  @override
  String get billingUnavailable =>
      'په دې پلاتفورم کې لا تر اوسه پېرود ممکن نه دی. په خپل تلیفون یا Mac کې ګډون وکړئ؛ ستاسو پلان به په هره وسیله کار کوي.';

  @override
  String get errQuotaExceeded =>
      'په دې موده کې مو تحلیلونه پاتې نه دي. خپل پلان لوړ کړئ یا اضافي تحلیلونه واخلئ.';

  @override
  String get errTrialExpired =>
      'ستاسو وړیا آزمېښت پای ته ورسېد. د دوام لپاره یو پلان وټاکئ.';

  @override
  String get errNoPlan => 'د AI تحلیل لپاره فعال پلان ته اړتیا ده.';

  @override
  String get viewPlans => 'پلانونه وګورئ';

  @override
  String get usageTitle => 'کارونه';

  @override
  String get demoPurchaseNote =>
      'ډیمو بیلنګ: په دې پلاتفورم کې پېرودونه نمایشي دي.';

  @override
  String get mostPopular => 'تر ټولو مشهور';

  @override
  String get bestValue => 'غوره ارزښت';

  @override
  String get planFeaturesCommon =>
      'د انځور پېژندنه، ژوندي معلومات، چارټونه، خوښې او ټولې 120 ژبې په هر پلان کې شاملې دي. سهمیه یوازې پر AI تحلیلونو پلي کېږي.';

  @override
  String get searchLanguages => 'ژبې ولټوئ…';

  @override
  String get noLanguageMatch => 'هېڅ ژبه ونه موندل شوه.';

  @override
  String get aiSettings => 'AI تحلیل';

  @override
  String get aiLength => 'اوږدوالی';

  @override
  String get aiDepthBrief => 'لنډ';

  @override
  String get aiDepthStandard => 'معیاري';

  @override
  String get aiDepthDeep => 'ژور';

  @override
  String get aiDepthBriefDesc => 'اصلي ټکي، په چټکۍ.';

  @override
  String get aiDepthStandardDesc => 'بشپړ راپور له ټولو برخو سره.';

  @override
  String get aiDepthDeepDesc =>
      'ډېر وېب لټونونه، له سیالو شرکتونو سره پرتله او ژور جزئیات.';

  @override
  String aiDepthWords(String min, String max) {
    return 'شاوخوا $min–$max کلمې';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count تحلیلونه لګوي',
      one: '1 تحلیل لګوي',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'د لوستونکي کچه';

  @override
  String get aiReaderBeginner => 'پیلونکی';

  @override
  String get aiReaderExperienced => 'تجربه لرونکی';

  @override
  String get aiReaderBeginnerDesc => 'ساده ژبه؛ هره تخنیکي اصطلاح تشریح کېږي.';

  @override
  String get aiReaderExperiencedDesc => 'له معیاري مالي اصطلاحاتو سره ګڼ متن.';

  @override
  String get aiCounterArgument => 'تر ټولو قوي مخالف دلیل';

  @override
  String get aiCounterArgumentDesc =>
      'لنډیز تل د خپلې پایلې پر ضد په تر ټولو قوي دلیل پای ته رسېږي.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ستاسو په پلان کې په هر تحلیل کې تر $count وېب لټونونو پورې',
      one: 'ستاسو په پلان کې په هر تحلیل کې تر 1 وېب لټون پورې',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'په معیاري اوږدوالي کې د پلان له مخې وېب لټونونه: عادي $normal، Pro $pro، Max $max، Ultra $ultra. لنډ کې 2 کم، ژور کې 2 ډېر.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'تر $count وېب لټونونو پورې',
      one: 'تر 1 وېب لټون پورې',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'په هر تحلیل کې $count وېب لټونونه',
      one: 'په هر تحلیل کې 1 وېب لټون',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'دې اوږدوالي ته $needed تحلیلونه اړین دي، خو یوازې $left پاتې دي. په تنظیماتو کې لنډ اوږدوالی وټاکئ یا نور تحلیلونه ترلاسه کړئ.';
  }

  @override
  String get outlookMarketMood => 'د بازار روحیه';

  @override
  String get moodVeryPessimistic => 'ډېر ناهیلی';

  @override
  String get moodPessimistic => 'ناهیلی';

  @override
  String get moodNeutral => 'بې طرفه';

  @override
  String get moodOptimistic => 'هیلهمن';

  @override
  String get moodVeryOptimistic => 'ډېر هیلهمن';

  @override
  String get scenarioBull => 'خوشبینه سناریو';

  @override
  String get scenarioBase => 'اساسي سناریو';

  @override
  String get scenarioBear => 'بدبینه سناریو';

  @override
  String outlookCurrentPrice(String price) {
    return 'اوسنۍ بیه: $price';
  }

  @override
  String get outlookKeyLevels => 'مهمې کچې';

  @override
  String get keyLevelSupport => 'ملاتړ';

  @override
  String get keyLevelResistance => 'مقاومت';

  @override
  String get keyLevelAnchor => 'د حوالې کچه';

  @override
  String get upcomingEvents => 'راتلونکې پېښې';

  @override
  String get outlookChartNote =>
      'اټکلي حدود؛ احتمالات یوازې نږدې اټکلونه دي، وړاندوینې نه دي.';

  @override
  String get accountTitle => 'حساب';

  @override
  String get signIn => 'ننوتل';

  @override
  String get signOut => 'له حساب وتل';

  @override
  String get notSignedIn => 'ننوتي نه یاست';

  @override
  String get accountBenefit => 'ننوځئ څو ستاسو ګډون په ټولو وسیلو کې کار وکړي.';

  @override
  String get accountSyncedNote =>
      'ستاسو ګډون او پاتې تحلیلونه په هره وسیله کې یو شان دي.';

  @override
  String get signInTitle => 'WhatStock ته ننوځئ';

  @override
  String get emailLabel => 'برېښنالیک پته';

  @override
  String get continueWithEmail => 'له برېښنالیک سره دوام ورکړئ';

  @override
  String codeSentTo(String email) {
    return 'موږ $email ته یو 6 عددي کوډ ولېږه. دا تر 10 دقیقو پورې اعتبار لري.';
  }

  @override
  String get codeLabel => 'د ننوتلو کوډ';

  @override
  String get resendCode => 'نوی کوډ ولېږئ';

  @override
  String get useDifferentEmail => 'بل برېښنالیک وکاروئ';

  @override
  String get errInvalidCode => 'کوډ ناسم دی یا یې موده پای ته رسېدلې.';

  @override
  String get errInvalidEmail => 'مهرباني وکړئ یو سم برېښنالیک ولیکئ.';

  @override
  String get errSignInFailed =>
      'ننوتل ناکام شول. خپل اتصال وګورئ او بیا هڅه وکړئ.';

  @override
  String get checkoutWaiting =>
      'په خپل براوزر کې تادیه بشپړه کړئ. کله چې بشپړه شي، اپ به پخپله تازه شي.';

  @override
  String get paymentViaStripe =>
      'د Stripe له لارې په براوزر کې خوندي تادیه. هر وخت یې لغوه کولای شئ.';

  @override
  String get paymentViaStore =>
      'بیل ستاسو د App Store یا Google Play حساب له لارې کېږي. د سټور په تنظیماتو کې یې هر وخت لغوه کولای شئ.';

  @override
  String get keySpace => 'سپېس';

  @override
  String get doubleOptionTitle => 'Option دوه ځله کېکاږئ';

  @override
  String get doubleOptionSubtitle =>
      'د Option کیلي په چټکۍ دوه ځله کېکاږل هم WhatStock راوړي.';

  @override
  String get doubleOptionPermission =>
      'د دې لپاره چې په نورو اپونو کې هم کار وکړي، په System Settings → Privacy & Security → Input Monitoring کې WhatStock ته اجازه ورکړئ، او بیا اپ له سره پرانیزئ.';

  @override
  String get openSystemSettings => 'د سیسټم تنظیمات پرانیزئ';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'له هر ځای څخه د WhatStock راوستلو لپاره $shortcut کېکاږئ یا Option دوه ځله کېکاږئ.';
  }

  @override
  String get scenarioMostLikely => 'تر ټولو احتمالي';

  @override
  String get longTermToday => 'نن';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years کاله',
      one: '1 کال',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range په کال کې';
  }

  @override
  String longTermLikely(String price) {
    return 'تر ټولو احتمالي $price';
  }

  @override
  String get confidenceLow => 'ټیټ باور';

  @override
  String get confidenceMedium => 'منځنی باور';

  @override
  String get confidenceHigh => 'لوړ باور';

  @override
  String get longTermNote =>
      'اوږدمهاله حدود پر ویل شویو انګېرنو ولاړ دي او له وخت سره پراخېږي. په بیو کې وېشل شوې ګټې نه دي شاملې. دا نږدې اټکلونه دي، وړاندوینې نه دي.';

  @override
  String get portfolio => 'پورټفولیو';

  @override
  String get portfolioEmpty =>
      'دلته لا څه نشته. یوه ونډه پرانیزئ او «پورټفولیو ته ورزیات کړئ» ټک کړئ څو خپلې شتمنۍ تعقیب کړئ.';

  @override
  String get portfolioLocalNote =>
      'یوازې په همدې وسیله کې ساتل کېږي. ټولې اندازې د ECB د حوالې نرخونو سره بدلېږي؛ بیې ښايي ځنډېدلې وي.';

  @override
  String get addToPortfolio => 'پورټفولیو ته ورزیات کړئ';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol ورزیات کړئ';
  }

  @override
  String get portfolioQuantity => 'د ونډو شمېر';

  @override
  String portfolioBuyPrice(String currency) {
    return 'د هرې ونډې بیه ($currency)';
  }

  @override
  String get portfolioBuyDate => 'د پېرود نېټه';

  @override
  String get portfolioAdd => 'ورزیات کړئ';

  @override
  String get portfolioInvalidNumber => 'له صفر څخه لوی عدد ولیکئ.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol ستاسو پورټفولیو ته ورزیات شو.';
  }

  @override
  String get portfolioTotalValue => 'ټول ارزښت';

  @override
  String get portfolioToday => 'نن';

  @override
  String get portfolioGainLoss => 'ګټه/زیان';

  @override
  String get portfolioInvested => 'پانګونه شوې';

  @override
  String get portfolioAllocation => 'وېش';

  @override
  String get portfolioPositions => 'پوزیشنونه';

  @override
  String portfolioAvgCost(String price) {
    return 'منځنی لګښت $price';
  }

  @override
  String get portfolioYourPosition => 'ستاسو پوزیشن';

  @override
  String get portfolioPurchases => 'پېرودونه';

  @override
  String get portfolioRemove => 'لرې کړئ';

  @override
  String get portfolioExcluded =>
      'هغه پوزیشنونه چې بیه یا د تبادلې نرخ یې نشته، په ټولو اندازو کې نه دي شامل.';

  @override
  String get priceAlerts => 'د بیې خبرتیاوې';

  @override
  String get setPriceAlert => 'د بیې خبرتیا وټاکئ';

  @override
  String alertDialogTitle(String symbol) {
    return 'د بیې خبرتیا · $symbol';
  }

  @override
  String get alertKindAbove => 'پورته شي';

  @override
  String get alertKindBelow => 'ښکته شي';

  @override
  String get alertKindMove => 'په یوه ورځ کې ډېر بدلون';

  @override
  String alertTargetPrice(String currency) {
    return 'بیه ($currency)';
  }

  @override
  String get alertMovePercent => 'ورځنی بدلون (%)';

  @override
  String get alertAlreadyMet => 'بیه دمخه له دې کچې تېره شوې ده.';

  @override
  String get alertSave => 'خبرتیا وټاکئ';

  @override
  String alertCreated(String symbol) {
    return 'د $symbol لپاره خبرتیا وټاکل شوه.';
  }

  @override
  String get alertsEmpty =>
      'تر اوسه د بیې خبرتیا نشته. یوه ونډه پرانیزئ او د خبرتیا ټاکلو لپاره پر زنګ ټک وکړئ.';

  @override
  String get alertsNote =>
      'تر هغه چې WhatStock روان وي، خبرتیاوې هرې 5 دقیقې کتل کېږي. په کمپیوټر کې اپ په مینو بار یا ټرې کې روان پاتې کېږي؛ په تلیفون کې اوس مهال خبرتیاوې یوازې هغه وخت راځي چې اپ پرانیستی وي.';

  @override
  String alertDescAbove(String price) {
    return 'له $price پورته';
  }

  @override
  String alertDescBelow(String price) {
    return 'له $price ښکته';
  }

  @override
  String alertDescMove(String percent) {
    return 'ورځنی بدلون ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return '$date، په $price بیه فعاله شوه';
  }

  @override
  String get alertRearm => 'بیا یې فعاله کړئ';

  @override
  String get alertDelete => 'ړنګ کړئ';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol له $price پورته شو';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol له $price ښکته شو';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol نن $percent بدل شو';
  }

  @override
  String alertHitBody(String price) {
    return 'اوسنۍ بیه: $price';
  }

  @override
  String get alertOpen => 'پرانیزئ';

  @override
  String get keepInTrayTitle => 'د کړکۍ له بندېدو وروسته هم روان پاتې شي';

  @override
  String get keepInTraySubtitle =>
      'WhatStock په مینو بار یا ټرې کې پاتې کېږي، نو شارټکټ او د بیې خبرتیاوې کار ته دوام ورکوي.';

  @override
  String get termsOfUse => 'د کارونې شرایط';

  @override
  String get privacyPolicy => 'د محرمیت تګلاره';

  @override
  String get subscriptionLegal =>
      'ګډونونه هره میاشت پخپله نوي کېږي تر هغه چې تاسو یې لغوه کړئ. د ګډون په کولو سره تاسو د کارونې شرایط او د محرمیت تګلاره منئ.';

  @override
  String get deleteAccount => 'حساب ړنګ کړئ';

  @override
  String get deleteAccountTitle => 'خپل حساب ړنګوئ؟';

  @override
  String get deleteAccountBody =>
      'ستاسو حساب او زموږ په سرور کې ساتل شوي ټول شیان (برېښنالیک، سهمیه، کارونه) به د تل لپاره ړنګ شي، او نه کارول شوي تحلیلونه به له منځه ولاړ شي. په براوزر کې تادیه شوی ګډون سمدستي لغوه کېږي؛ د App Store یا Google Play ګډون باید د سټور په تنظیماتو کې لغوه شي.';

  @override
  String get deleteLocalData =>
      'په دې وسیله کې معلومات هم ړنګ کړئ (پورټفولیو، خبرتیاوې، خوښې، تاریخچه، خوندي شوي تحلیلونه)';

  @override
  String get deleteAccountConfirm => 'د تل لپاره ړنګ کړئ';

  @override
  String get accountDeleted => 'ستاسو حساب ړنګ شو.';

  @override
  String get errDeleteAccount =>
      'حساب ړنګ نه شو. خپل اتصال وګورئ او بیا هڅه وکړئ.';

  @override
  String get aiTrialBriefNote =>
      'آزمېښتي تحلیلونه لنډ دي او په یوه چټک AI ماډل جوړېږي. له پلان سره تاسو زموږ تر ټولو پیاوړی AI، ډېر وېب لټونونه، او معیاري او ژور اوږدوالی ترلاسه کوئ.';

  @override
  String get billingMonthly => 'میاشتنی';

  @override
  String get billingYearly => 'کلنی';

  @override
  String get yearlyDiscount => '2 میاشتې وړیا';

  @override
  String get perYear => '/ کال';

  @override
  String pricePerMonthApprox(String price) {
    return 'په میاشت کې ≈ $price';
  }

  @override
  String get subscriptionLegalYearly =>
      'کلني ګډونونه هر کال پخپله نوي کېږي تر هغه چې تاسو یې لغوه کړئ. د ګډون په کولو سره تاسو د کارونې شرایط او د محرمیت تګلاره منئ.';

  @override
  String get myAnalyses => 'زما تحلیلونه';

  @override
  String get navAlerts => 'خبرتیاوې';

  @override
  String get inviteTitle => 'تړلې مخکتنه';

  @override
  String get inviteBody =>
      'WhatStock اوس مهال یوازې د بلنې له لارې شتون لري. هغه د بلنې کوډ ولیکئ چې تاسو ترلاسه کړی دی.';

  @override
  String get inviteCodeLabel => 'د بلنې کوډ';

  @override
  String get inviteContinue => 'دوام ورکړئ';

  @override
  String get inviteInvalid => 'دا د بلنې کوډ اعتبار نه لري.';

  @override
  String get inviteExpired =>
      'د دې بلنې موده پای ته رسېدلې. له هغه چا نوی کوډ وغواړئ چې تاسو یې رابللي یاست.';

  @override
  String get inviteDeviceLimit =>
      'دا د بلنې کوډ لا دمخه د اعظمي شمېر وسیلو پر مخ کارول کېږي.';

  @override
  String get previewConfidential => 'محرمه مخکتنه';

  @override
  String get errPreviewDailyLimit =>
      'د دې مخکتنې د نن ورځې د تحلیلونو حد پوره شوی. سبا بیا هڅه وکړئ.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ساعته مخکې',
      one: '1 ساعت مخکې',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ورځې مخکې',
      one: '1 ورځ مخکې',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'دا تحلیل تازه کړئ؟';

  @override
  String staleBody(String age) {
    return 'دا $age جوړ شوی و. له هغه وخته بیې، خبرونه او پایلې کېدای شي بدلې شوې وي.';
  }

  @override
  String get staleKeep => 'پخوانی وښیاست';

  @override
  String get staleRefresh => 'نوی جوړ کړئ';

  @override
  String seeAll(int count) {
    return 'ټول وګورئ ($count)';
  }

  @override
  String get searchAnalyses => 'په خپلو تحلیلونو کې ولټوئ';

  @override
  String get deleteAnalysis => 'ړنګ کړئ';

  @override
  String analysisDeleted(String symbol) {
    return 'د $symbol تحلیل ړنګ شو';
  }

  @override
  String get keyLevelAlertHint =>
      'پر یوې کچې ټک وکړئ څو کله چې بیه هغې ته ورسیږي، خبرتیا ترلاسه کړئ.';

  @override
  String get shareAnalysisTitle => 'تحلیل شریک کړئ';

  @override
  String get shareAsImage => 'د انځور په توګه شریک کړئ';

  @override
  String get shareAsText => 'د متن په توګه شریک کړئ';

  @override
  String get shareCardFooter => 'د WhatStock په مرسته جوړ شوی';

  @override
  String get shareCardDisclaimer => 'AI تحلیل · د پانګونې مشوره نه ده';

  @override
  String get referralTitle => 'ملګري راوبلئ';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count اضافي تحلیلونه',
      one: '1 اضافي تحلیل',
    );
    return 'خپل کوډ شریک کړئ. ستاسو ملګری سمدستي $_temp0 ترلاسه کوي، او تاسو هم د هغه له لومړي تحلیل وروسته همدومره ترلاسه کوئ.';
  }

  @override
  String get referralYourCode => 'ستاسو کوډ';

  @override
  String referralStats(int invited, int rewarded) {
    return 'رابلل شوي: $invited · انعام اخیستي: $rewarded';
  }

  @override
  String get referralHaveCode => 'د ملګري کوډ لرئ؟';

  @override
  String get referralRedeem => 'وکاروئ';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count اضافي تحلیلونه اضافه شول. ښه راغلاست!',
      one: '1 اضافي تحلیل اضافه شو. ښه راغلاست!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown => 'دا کوډ نشته. وې ګورئ او بیا هڅه وکړئ.';

  @override
  String get referralErrOwn => 'تاسو خپل کوډ نشئ کارولی.';

  @override
  String get referralErrAlready => 'تاسو مخکې د یوه ملګري کوډ کارولی دی.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count اضافي تحلیلونه',
      one: '1 اضافي تحلیل',
    );
    return 'زه د WhatStock په مرسته ونډې تحلیلوم: د یوې ونډې انځور واخلئ او AI یې تشریح کوي. زما د کوډ $code سره تاسو $_temp0 ترلاسه کوئ.';
  }

  @override
  String get referralCopied => 'کوډ کاپي شو';
}
