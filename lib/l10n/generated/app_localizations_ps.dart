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
  String get labelYieldOnCost => 'د پېرودلو بیې پر بنسټ ګټه';

  @override
  String get labelDividendGrowth5y => 'د ونډې ګټې وده (5 کاله)';

  @override
  String get dividendNone => 'په تېرو 12 میاشتو کې د ونډې ګټه نه ده ورکړل شوې.';

  @override
  String get dividendOnYourShares => 'ستاسو پر ونډو، کلنۍ';

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
  String homeDividendsThisYear(String amount) {
    return 'د سږکال ډیویډنډونه: $amount';
  }

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

  @override
  String get onboardTitle1 => 'د یوې ونډې انځور واخلئ';

  @override
  String get onboardBody1 =>
      'د بروکرۍ اپ سکرین، ورځپاڼه یا د شرکت لوګو بس دی: WhatStock ونډه پېژني او د هغې بیه، چارټ او مهمې شمېرې درښيي.';

  @override
  String get onboardTitle2 => 'په څو دقیقو کې یې وپوهېږئ';

  @override
  String get onboardBody2 =>
      'AI تحلیل تشریح کوي چې ونډه څه خوځوي، خطرونه یې کوم دي، ارزونه یې څنګه ده او بیه به کومې خوا ته لاړه شي د هغې درې سناریوګانې – له سرچینو سره او ستاسو په ژبه.';

  @override
  String get onboardTitle3 => 'تل خبر اوسئ';

  @override
  String get onboardBody3 =>
      'خوښې، ستاسو پورټفولیو او د بیې خبرتیاوې تاسو خبروي. ستاسو تحلیلونه ستاسو په وسیله کې پاتې کېږي، د بیا پرانیستلو لپاره چمتو.';

  @override
  String get onboardNext => 'بل';

  @override
  String get onboardStart => 'پیل کړئ';

  @override
  String get onboardSkip => 'تېر یې کړئ';

  @override
  String changesTitle(String date) {
    return 'له تېر تحلیل راهیسې ($date)';
  }

  @override
  String get changesPrice => 'بیه';

  @override
  String get changesNoMajor => 'په لیدلوري کې د پام وړ بدلون نه دی راغلی.';

  @override
  String get changesPreviousSummary => 'پخوانی لنډیز';

  @override
  String get telemetryTitle => 'د WhatStock په ښه کولو کې مرسته وکړئ';

  @override
  String get telemetryBody =>
      'بې نومه د کارونې شمېرنې او د کریش راپورونه شریک کړئ: کومې ځانګړتیاوې کارول کېږي او څه ستونزه پېښه شوه. ستاسو سټاکونه، تحلیلونه یا شخصي معلومات هېڅکله نه. تاسو کولی شئ دا هر وخت په تنظیماتو کې بدل کړئ.';

  @override
  String get telemetryAllow => 'اجازه ورکړئ';

  @override
  String get telemetryDecline => 'نه، مننه';

  @override
  String get telemetrySetting => 'بې نومه شمېرنې او د کریش راپورونه';

  @override
  String get telemetrySettingHint =>
      'ځانګړتیاوې څو ځله کارول کېږي او د تېروتنو راپورونه، پرته له شخصي معلوماتو یا ستاسو د لټونونو او تحلیلونو له منځپانګې.';

  @override
  String get askButton => 'د دې تحلیل په اړه پوښتنه وکړئ';

  @override
  String askTitle(String symbol) {
    return 'د $symbol په اړه پوښتنې';
  }

  @override
  String get askIntro =>
      'د تحلیل په اړه هر څه وپوښتئ: یو خطر څه معنا لري، کوم شی کولی شي لیدلوری بدل کړي، یوه شمېره څنګه محاسبه شوې. ځوابونه پر همدې تحلیل ولاړ دي او د پانګونې مشوره نه ده.';

  @override
  String get askHint => 'پوښتنه وکړئ…';

  @override
  String get askSend => 'ولېږئ';

  @override
  String get askThinking => 'فکر کوم…';

  @override
  String get askSuggest1 => 'تر ټولو لوی خطر کوم دی؟';

  @override
  String get askSuggest2 => 'کوم شی کولی شي لیدلوری بدل کړي؟';

  @override
  String get askSuggest3 => 'په ساده ډول یې تشریح کړه';

  @override
  String get askMaxReached =>
      'دا د دې تحلیل وروستۍ پوښتنه وه. د نورو پوښتنو لپاره نوی تحلیل جوړ کړئ.';

  @override
  String get errAskLimit =>
      'تاسو د نن ورځې د پوښتنو حد ته رسېدلي یاست. سبا بیا هڅه وکړئ.';

  @override
  String get eventTomorrow => 'سبا';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'په $days ورځو کې',
      one: 'په 1 ورځ کې',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'درېمیاشتنۍ پایلې';

  @override
  String get eventBeforeOpen => 'د بازار له پرانیستلو مخکې';

  @override
  String get eventAfterClose => 'د بازار له تړلو وروسته';

  @override
  String eventEpsEstimate(String value) {
    return 'اټکل شوی EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'ستاسو له تحلیل څخه';

  @override
  String get eventDividend => 'ډیویډنډ تمه کېږي';

  @override
  String get eventDividendEstimate =>
      'ستاسو د ثبت شویو تادیاتو له مخې اټکل شوی';

  @override
  String get eventsHint =>
      'ستاسو د خوښې او پورټفولیو ونډو د پایلو نېټې په راتلونکو 90 ورځو کې، هغه نېټه لرونکې پېښې چې ستاسو تحلیلونو په ګوته کړې دي، او هغه ډیویډنډونه چې ستاسو د ثبت شویو تادیاتو له مخې تمه کېږي.';

  @override
  String get eventsEmpty =>
      'په راتلونکو 90 ورځو کې کومه نېټه لرونکې پېښه نشته. خوښې یا د پورټفولیو ونډې اضافه کړئ چې دلته یې د پایلو نېټې ووینئ؛ ثبت شوي ډیویډنډونه خپله راتلونکې تمه کېدونکې تادیه ښیي.';

  @override
  String get compareTitle => 'پرتله';

  @override
  String get compareAdd => 'ونډه ورزیاته کړئ';

  @override
  String get compareRemove => 'لرې کړئ';

  @override
  String get compareTickerHint => 'ټیکر، لکه MSFT';

  @override
  String get compareHint =>
      'مهمې شمېرې څنګ په څنګ؛ په هر قطار کې غوره ارزښت روښانه شوی. اندازې د هرې ونډې په خپل پولي واحد کې دي.';

  @override
  String get compareNoAnalysis => 'تر اوسه تحلیل نشته';

  @override
  String get portfolioDividends => 'کلنۍ د ونډې ګټه';

  @override
  String portfolioDividendYield(String percent) {
    return 'د ګټې کچه $percent';
  }

  @override
  String get portfolioDividendNote =>
      'تمه شوې کلنۍ د ونډې ګټه په تېرو 12 میاشتو کې پر ورکړل شوې ګټې ولاړه ده؛ راتلونکې ورکړې تضمین نه دي.';

  @override
  String positionDividend(String amount) {
    return 'د ونډې ګټه: کلنۍ $amount';
  }

  @override
  String get chartAvgCost => 'ستاسو منځنی';

  @override
  String get chartAlertLevel => 'خبرتیا';

  @override
  String get marketsToday => 'د نن بازارونه';

  @override
  String get notesTitle => 'زما یادښتونه';

  @override
  String get notesHint =>
      'ولې مو واخیسته، پر څه نظر لرئ، څه به مو وپلورلو ته اړ کړي؟';

  @override
  String get notesInfo =>
      'یوازې په همدې وسیله کې ساتل کېږي. AI تحلیل ستاسو یادښتونه په پام کې نیسي.';

  @override
  String notesSaved(String date) {
    return 'خوندي شو: $date';
  }

  @override
  String get peersTitle => 'ورته شرکتونه';

  @override
  String get portfolioExport => 'د CSV په توګه صادرول';

  @override
  String get portfolioImport => 'له CSV څخه واردول';

  @override
  String get portfolioImportHint =>
      'په هره کرښه کې یو پېرود ولګوئ: ټیکر، شمېر، بیه، پولي واحد، نېټه (YYYY-MM-DD). ستنې د کامې، سیمي کولن یا ټب په واسطه بېلېدای شي؛ د سرلیک کرښه اختیاري ده.';

  @override
  String get portfolioImportButton => 'واردول';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count پېرودونه اضافه شول',
      one: '1 پېرود اضافه شو',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کرښې پرېښودل شوې',
      one: '1 کرښه پرېښودل شوه',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'پورټفولیو، خوښې، د بیې خبرتیاوې او یادښتونه ستاسو په ټولو وسیلو کې همغږي کېږي.';

  @override
  String syncLast(String time) {
    return 'وروستی همغږي: $time';
  }

  @override
  String get syncNow => 'اوس همغږي کړئ';

  @override
  String get syncFailed => 'همغږي ناکامه شوه. په اتومات ډول به بیا هڅه وشي.';

  @override
  String get alertEmailTitle => 'د خبرتیا د فعالېدو پر مهال برېښنالیک';

  @override
  String get alertEmailOn =>
      'موږ هرو څو دقیقو کې ستاسو خبرتیاوې ګورو او تاسو ته برېښنالیک درلېږو، حتی کله چې اپ تړل شوی وي.';

  @override
  String get alertEmailSignIn =>
      'د دې لپاره چې خبرتیاوې په برېښنالیک ترلاسه کړئ، حتی کله چې اپ تړل شوی وي، په تنظیماتو کې په خپل برېښنالیک ننوځئ.';

  @override
  String get portfolioHistory => 'د ارزښت بدلون';

  @override
  String get portfolioReviewTitle => 'د پورټفولیو AI بیاکتنه';

  @override
  String get portfolioReviewIntro =>
      'AI ستاسو ټول پورټفولیو ګوري: تمرکز، د سکټورونو او اسعارو خطر، ستاسو د سهمونو ګډ خطرونه، او ګټه وېش. 1 تحلیل لګوي.';

  @override
  String get portfolioReviewButton => 'زما پورټفولیو وڅېړئ';

  @override
  String get portfolioReviewAgain => 'بیا یې وڅېړئ';

  @override
  String get portfolioReviewWorking => 'ستاسو پورټفولیو څېړل کېږي…';

  @override
  String get digestTitle => 'د برېښنالیک له لارې اوونیز لنډیز';

  @override
  String get digestHint =>
      'هره دوشنبه: ستاسو خوښې او پورټفولیو تېره اوونۍ څنګه وخوځېدل، او د هغوی د راتلونکو پایلو نېټې.';

  @override
  String get benchmarkTitle => 'د S&P 500 سره پرتله';

  @override
  String get benchmarkTitleIndex => 'د یوه شاخص سره پرتله';

  @override
  String get benchmarkHintIndex =>
      'لکه ستاسو هره پېرودنه چې په همغه ورځ د ټاکل شوي شاخص تعقیبوونکي فنډ ته تللې وي. د ونډې ګټه پکې نه ده شامله؛ تېرې ګټې د راتلونکو وړاندوینه نه کوي.';

  @override
  String get benchmarkYours => 'ستاسو پېرودنې';

  @override
  String benchmarkAhead(String points) {
    return 'له شاخص څخه $points سلنه ټکي ښه';
  }

  @override
  String benchmarkBehind(String points) {
    return 'له شاخص څخه $points سلنه ټکي وروسته';
  }

  @override
  String get portfolioSell => 'وپلورئ';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbol وپلورئ';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'د هرې ونډې د پلور بیه ($currency)';
  }

  @override
  String get portfolioSellDate => 'د پلور نېټه';

  @override
  String get portfolioSellAll => 'ټول';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'تاسو $quantity لرئ';
  }

  @override
  String get portfolioSold => 'وپلورل شو';

  @override
  String get portfolioRealized => 'تحقق شوې';

  @override
  String get portfolioClosed => 'تړل شوي پوزیشنونه';

  @override
  String get portfolioClosedNote => 'ټولې ونډې وپلورل شوې';

  @override
  String get portfolioTransactions => 'راکړې ورکړې';

  @override
  String get portfolioRealizedByYear => 'په کلونو تحقق شوې ګټه';

  @override
  String get portfolioRealizedHint =>
      'پلورونه لومړی ستاسو له تر ټولو زړو پېرودونو سره سمون ورکول کېږي (FIFO)، د نن ورځې د اسعارو په نرخ اړول کېږي. د مالیې د اظهارنامې لپاره د خپل بروکر بیان وکاروئ.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'له دې تحلیل وروسته نوې درې میاشتنۍ پایلې خپرې شوې دي ($symbol، $date).';
  }

  @override
  String get newResultsBadge => 'نوې پایلې';

  @override
  String get portfolioImportBrokers =>
      'د Revolut، Trading 212 او Interactive Brokers صادرات هم د پلور سره پېژندل کېږي؛ د ونډې ګټه او زیرمې پرېښودل کېږي.';

  @override
  String get portfolioImportFile => 'فایل وټاکئ';

  @override
  String offlineBanner(String time) {
    return 'اتصال نشته – وروستي خوندي شوي معلومات ښودل کېږي ($time).';
  }

  @override
  String get glossMarketCap =>
      'ټول شرکت په سټاک بازار کې څومره ارزي: د ونډې بیه × د ونډو شمېر.';

  @override
  String get glossSharesOutstanding =>
      'شرکت څومره ونډې صادرې کړې دي. که دا زیاتې شي، هره ونډه کوچنۍ برخه لري؛ د ونډو بېرته پېرل یې کموي.';

  @override
  String get glossPeTrailing =>
      'بیه ÷ د تېرو 12 میاشتو په هره ونډه ګټه: تاسو د اوسنۍ ګټې د څو کلونو بیه ورکوئ. ټیټ ارزانه دی، خو چټک وده کوونکي شرکتونه معمولاً لوړ P/E لري.';

  @override
  String get glossPeForward =>
      'د P/E په څېر، خو د هغې ګټې پر بنسټ چې شنونکي یې د راتلونکو 12 میاشتو لپاره تمه لري. که له تېر P/E څخه ټیټ وي، تمه کېږي چې ګټه به زیاته شي.';

  @override
  String get glossPb =>
      'بیه ÷ په هره ونډه دفتري ارزښت (شتمني منفي پورونه). شاوخوا 1 په دې مانا چې بازار شرکت ته هغومره ارزښت ورکوي څومره چې یې په کاغذ کې لري.';

  @override
  String get glossPs =>
      'بازاري ارزښت ÷ کلنی عاید. د هغو شرکتونو لپاره ګټور چې لا لږه یا هېڅ ګټه نه لري؛ په یوه صنعت کې یې پرتله کړئ.';

  @override
  String get glossEvToFcf =>
      'د پور په ګډون د شرکت ارزښت (EV) ÷ هغه نغدې پیسې چې له پانګونې وروسته په یوه کال کې یې جوړوي. ټیټ په دې مانا چې د بیې په بدل کې ډېرې نغدې پیسې ترلاسه کوئ.';

  @override
  String get glossPeg =>
      'P/E ÷ د کلنۍ ګټې تمه شوې وده (%). شاوخوا 1 اکثراً مناسب ګڼل کېږي؛ P/E د ودې په رڼا کې ښيي.';

  @override
  String get glossEps =>
      'د تېرو 12 میاشتو په هره ونډه ګټه. کال په کال لوړېدونکی EPS د روغ شرکت له تر ټولو قوي نښو څخه یوه ده.';

  @override
  String get glossBeta =>
      'ونډه له بازار سره څومره خوځېږي: 1 = د بازار په څېر، 1.5 = شاوخوا 50% لوی بدلونونه، له 1 ټیټ = ارام.';

  @override
  String get glossRevenueTtm => 'د تېرو 12 میاشتو ټول پلور، له هر لګښت مخکې.';

  @override
  String get glossNetIncomeTtm =>
      'هغه ګټه چې د تېرو 12 میاشتو کې له ټولو لګښتونو، سود او مالیاتو وروسته پاتې کېږي.';

  @override
  String get glossGrossMargin =>
      'د عاید هغه برخه چې د محصولاتو له مستقیم لګښت وروسته پاتې کېږي. لوړ مارجن اکثراً د بیې ټاکلو ځواک ښيي.';

  @override
  String get glossOperatingMargin =>
      'د عاید هغه برخه چې د سوداګرۍ چلولو (معاشونه، کرایه، بازارموندنه) وروسته، له سود او مالیاتو مخکې پاتې کېږي.';

  @override
  String get glossNetMargin =>
      'د عاید هغه برخه چې وروستۍ ګټه کېږي. 20% په دې مانا چې د پلور له هرو 100 څخه 20 ګټه ده.';

  @override
  String get glossRoe =>
      'د پانګې عاید: کلنۍ ګټه ÷ د مالکانو پانګه. ښيي چې مدیریت د ونډه والو پیسې څومره ښه کاروي؛ له شاوخوا 15% پورته قوي دی.';

  @override
  String get glossRoa =>
      'د شتمنیو عاید: کلنۍ ګټه ÷ د شرکت ټولې شتمنۍ. په یوه صنعت کې یې پرتله کړئ.';

  @override
  String get glossDebtToEquity =>
      'پور ÷ د مالکانو پانګه. لوړ په دې مانا چې ډېرې پور اخیستل شوې پیسې: کله چې سود لوړ شي یا کار ورو شي ډېر خطر.';

  @override
  String get glossCurrentRatio =>
      'لنډمهاله شتمنۍ ÷ هغه بیلونه چې په یوه کال کې باید ورکړل شي. له 1 پورته په دې مانا چې شرکت کولی شي نږدې بیلونه ورکړي.';

  @override
  String get glossRevenueGrowth => 'عاید د یو کال مخکې په پرتله څومره وده کړې.';

  @override
  String get glossEpsGrowth =>
      'په هره ونډه ګټه د یو کال مخکې په پرتله څومره وده کړې.';

  @override
  String get glossDividendYield =>
      'کلنۍ وېشل شوې ګټه ÷ د ونډې بیه: هغه نغدي عاید چې هر کال یې ترلاسه کوئ، د هغه څه د سلنې په توګه چې تاسو یې ورکوئ.';

  @override
  String get glossDividendPerShare =>
      'هغه ګټه چې تېر کال په یوه ونډه ووېشل شوه.';

  @override
  String get glossPayoutRatio =>
      'د ګټې هغه برخه چې د وېشل شوې ګټې په توګه ورکول کېږي. له 100% پورته شرکت له خپل عاید ډېر ورکوي، چې ډېر کم دوام کوي.';

  @override
  String get portfolioBeta => 'د پورټفولیو بېټا';

  @override
  String get glossPortfolioBeta =>
      'ستاسو د ونډو بېټا، د هغوی د ارزښت له مخې وزن شوې: کله چې بازار 1% وخوځېږي، ستاسو ونډې شاوخوا څو سلنه خوځېږي. له 1 پورته وي نو تر بازار ډېر بدلون مومي، له 1 ټیټ وي نو لږ. نغدې پکې نه دي شاملې.';

  @override
  String get portfolioTop3 => 'تر ټولو لوی 3 پوزیشنونه';

  @override
  String get glossPortfolioTop3 =>
      'ستاسو د ونډو د ارزښت څومره برخه ستاسو په درېیو تر ټولو لویو پوزیشنونو کې ده. څومره چې لوړه وي، هومره د یوه شرکت بد خبر ټول پورټفولیو ته ډېر زیان رسولی شي.';

  @override
  String get glossDividendGrowth5y =>
      'په هره ونډه وېشل شوې ګټه په تېرو پنځو کلونو کې په منځني ډول هر کال څومره وده کړې. ثابته وده معمولاً دا معنا لري چې شرکت پر خپل نغدي جریان باور لري؛ کمول یې ډېری وخت د خبرتیا نښه وي.';

  @override
  String get glossYieldOnCost =>
      'په تېرو ۱۲ میاشتو کې ترلاسه شوي ډیویډنډونه، وېشل شوي پر هغه څه چې تاسو د هغو ونډو لپاره ورکړي چې لا هم یې لرئ. د ونډې ګټې کچې په خلاف، دا د نننۍ بیې پر ځای د خپلې پېرودلو بیې پر بنسټ اندازه کېږي.';

  @override
  String get glossTitle => 'دا څه مانا لري؟';

  @override
  String get watchNewsTitle => 'ستاسو د ونډو خبرونه';

  @override
  String get undo => 'بېرته راګرځول';

  @override
  String get watchSort => 'ترتیب';

  @override
  String get watchSortOwn => 'زما ترتیب';

  @override
  String get watchSortGainers => 'تر ټولو ډېر لوړ شوي لومړی';

  @override
  String get watchSortLosers => 'تر ټولو ډېر ټیټ شوي لومړی';

  @override
  String get watchSortName => 'د ټیکر له مخې (A–Z)';

  @override
  String get watchHint =>
      'د ترتیب بدلولو لپاره لاستی کش کړئ، د لرې کولو لپاره کیڼ لور ته سوایپ کړئ. کرښه تېرې 30 ورځې ښيي.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: ستاسو شننه چمتو ده.';
  }

  @override
  String alertFromCost(String price) {
    return 'ستاسو د اخیستلو له منځني بیې ($price) څخه:';
  }

  @override
  String get briefTitle => 'نن ستاسو له ونډو سره';

  @override
  String get briefButton => 'د نن لنډیز';

  @override
  String get briefHint =>
      'د AI لنډ لنډیز چې ستاسو پورټفولیو او خوښې نن څنګه بدلې شوې او وروستي خبرونه یې په اړه څه وايي. شننه نه لګوي.';

  @override
  String get briefRefresh => 'تازه کول';

  @override
  String get sectionEarnings => 'درېمیاشتنۍ پایلې';

  @override
  String earningsNext(String date) {
    return 'بل راپور: $date';
  }

  @override
  String get earningsExpected => 'متوقع EPS';

  @override
  String get earningsReported => 'اعلان شوی EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'له وروستیو $total درېمیاشتو څخه په $beats کې د متوقع EPS سره برابر یا ترې پورته',
      one: 'له 1 درېمیاشتې څخه په $beats کې د متوقع EPS سره برابر یا ترې پورته',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol سبا درېمیاشتنۍ پایلې خپروي';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol نن درېمیاشتنۍ پایلې خپروي';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return 'د $symbol ډیویډنډ نن تمه کېږي';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'شاوخوا $amount. کله چې ورسېږي، په خپل پورټفولیو کې یې ثبت کړئ.';
  }

  @override
  String get dividendRemindersTitle => 'د ډیویډنډ یادونې';

  @override
  String get dividendRemindersSubtitle =>
      'ستاسو د ثبت شویو تادیاتو د ریتم له مخې د ډیویډنډ د تمې په ورځ خبرتیا، څو یې ثبت کړای شئ';

  @override
  String get earningsRemindersTitle => 'د پایلو یادونې';

  @override
  String get earningsRemindersSubtitle =>
      'ستاسو د خوښو یا پورټفولیو د ونډو د درېمیاشتنیو پایلو له خپرېدو یوه ورځ مخکې خبرتیا';

  @override
  String addAllToFavorites(int count) {
    return 'ټول خوښو ته ورزیات کړئ ($count)';
  }

  @override
  String get portfolioImportPhoto => 'له سکرین شاټ څخه واردول';

  @override
  String get holdingsReading => 'ستاسو پوزیشنونه لوستل کېږي…';

  @override
  String get holdingsReviewTitle => 'موندل شوي پوزیشنونه';

  @override
  String get holdingsReviewHint =>
      'د اضافه کولو مخکې شمېرې وګورئ. بیه ستاسو د هرې ونډې منځنۍ د پېرود بیه ده، نه د نن ورځې بیه.';

  @override
  String get holdingsNoPrice => 'په انځور کې د پېرود منځنۍ بیه نشته';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count پوزیشنونه اضافه کړئ',
      one: '1 پوزیشن اضافه کړئ',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'په دې انځور کې د ونډو هېڅ پوزیشن ونه موندل شو. د خپل بروکر د پوزیشنونو یا شتمنیو د پاڼې سکرین شاټ وازمویئ.';

  @override
  String get week52Range => 'د 52 اونیو حد';

  @override
  String week52BelowHigh(String percent) {
    return 'د 52 اونیو له لوړې بیې $percent ټیټ';
  }

  @override
  String get week52AtHigh => 'د 52 اونیو په لوړه بیه';

  @override
  String get alertKindTrailing => 'له لوړې کچې ښکته شي';

  @override
  String get alertTrailingPercent => 'له لوړې کچې ښکته کېدل (%)';

  @override
  String get alertTrailingHint =>
      'بیه پورته تعقیبوي: کله چې بیه د ټاکلو راهیسې له تر ټولو لوړې کچې دومره ښکته شي، خبرتیا درکوي.';

  @override
  String alertDescTrailing(String percent) {
    return 'له لوړې کچې $percent ښکته';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'تر اوسه لوړه کچه: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol له لوړې کچې $percent ښکته شو';
  }

  @override
  String get sectionInsiders => 'د داخلي کسانو معاملې';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count پېرودونه',
      one: '1 پېرود',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count پلورونه',
      one: '1 پلور',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'خالص: $shares ونډې';
  }

  @override
  String get insiderBuy => 'پېرل شوي';

  @override
  String get insiderSell => 'پلورل شوي';

  @override
  String get insiderHint =>
      'په تېرو 90 ورځو کې د اجرايوي چارواکو او مدیرانو له خوا په پرانیستي بازار کې پېرودونه او پلورونه (SEC Form 4). د اختیارونو کارول او د ونډو جایزې نه شمېرل کېږي.';

  @override
  String get insiderNone =>
      'په تېرو 90 ورځو کې په پرانیستي بازار کې د داخلي کسانو هېڅ پېرود یا پلور نه دی شوی.';

  @override
  String get analystTrend => 'نظرونه میاشت په میاشت څنګه بدل شول';

  @override
  String get watchListAll => 'ټول';

  @override
  String get watchListNew => 'نوی لېست';

  @override
  String get watchListName => 'د لېست نوم';

  @override
  String get watchListRename => 'د لېست نوم بدل کړئ';

  @override
  String get watchListDelete => 'لېست ړنګ کړئ';

  @override
  String get watchListAddTo => 'لېست ته ورزیات کړئ';

  @override
  String get watchListEmpty =>
      'په دې لېست کې لا تر اوسه هېڅ ونډه نشته. د ورزیاتولو لپاره د ونډې تر څنګ د لېست تڼۍ ټک کړئ.';

  @override
  String get portfolioAskTitle => 'ستاسو د پورټفولیو په اړه پوښتنې';

  @override
  String get rangeYtd => 'سږکال';

  @override
  String get backupTitle => 'بیک اپ';

  @override
  String get backupSave => 'بیک اپ خوندي کړئ';

  @override
  String get backupSaveHint =>
      'ستاسو خوښې، لېستونه، پورټفولیو، خبرتیاوې او یادښتونه په یوه فایل کې.';

  @override
  String get backupRestore => 'له بیک اپ څخه بېرته راوړئ';

  @override
  String get backupRestoreHint =>
      'هغه څه زیاتوي چې په فایل کې دي؛ له هغه څه چې اوس لرئ هېڅ نه ړنګېږي.';

  @override
  String get backupRestored => 'بیک اپ بېرته راوړل شو.';

  @override
  String get backupInvalid => 'دا فایل د WhatStock بیک اپ نه دی.';

  @override
  String get allocationPositions => 'ونډې';

  @override
  String get allocationSectors => 'سکتورونه';

  @override
  String get allocationCurrencies => 'اسعار';

  @override
  String get allocationAccounts => 'حسابونه';

  @override
  String get compareReturn1y => 'د 1 کال عاید';

  @override
  String get compareFromHigh => 'د 52 اونیو له لوړې بیې واټن';

  @override
  String get briefAutoTitle => 'هر سهار ورځنی لنډیز';

  @override
  String get briefAutoSubtitle =>
      '«نن ستاسو له ونډو سره» تر هغه چې اپ چلېږي، د سهار له 7:00 بجو وروسته پخپله جوړېږي؛ په کمپیوټرونو کې یوه خبرتیا تاسو ته خبر درکوي. ستاسو د ورځنیو پوښتنو له حد څخه کمېږي، شننه نه لګوي.';

  @override
  String get targetsButton => 'د هدف وېش';

  @override
  String get targetsTitle => 'د هدف وېش';

  @override
  String get targetsHint =>
      'وټاکئ چې هره ونډه باید د پورټفولیو څومره برخه ولري. که هدف نه وي، خونه تشه پرېږدئ. بیا اپ ښيي چې هلته د رسېدو لپاره څه واخلئ یا وپلورئ.';

  @override
  String targetsSum(String percent) {
    return 'ټول: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'واخلئ ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'وپلورئ ≈ $amount';
  }

  @override
  String get rebalanceOk => 'په هدف کې';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol له متوقع EPS څخه پورته شو';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol متوقع EPS ته ونه رسېد';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'اعلان شوی EPS $actual، متوقع $estimate';
  }

  @override
  String get newsExplain => 'دا څه معنا لري؟';

  @override
  String get watchAlertAll => 'د لویو ورځنیو بدلونونو خبرتیا';

  @override
  String get watchAlertAllHint =>
      'د دې لېست هرې ونډې لپاره د بیې خبرتیا: کله چې په یوه ورځ کې دومره پورته یا ښکته شي، خبر درکوي. هغه ونډې چې دمخه یې لري، خپله ساتي.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count خبرتیاوې وټاکل شوې',
      one: '1 خبرتیا وټاکل شوه',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'ترلاسه شوې ګټه صادرول (CSV)';

  @override
  String get portfolioAnnualReturn => 'کلنۍ ګټه';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / کال';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'د پیسو له مخې وزن شوې کلنۍ ګټه (XIRR): دا په پام کې نیسي چې تاسو کله پېرل او پلورل کړي، نو وروسته اضافه شوې پیسې یې نه اړوي. هغه وخت ښودل کېږي چې ستاسو لومړی پېرود لږ تر لږه یو کال زوړ شي؛ د ونډې ګټه پکې شامله نه ده.';

  @override
  String get eventsAddToCalendar => 'جنتري ته ورزیات کړئ (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'د پورټفولیو خبرتیا';

  @override
  String get portfolioMoveAlertSubtitle =>
      'خبرتیا کله چې ستاسو ټول پورټفولیو په یوه ورځ کې دومره بدل شي.';

  @override
  String get portfolioMoveAlertOff => 'بند';

  @override
  String portfolioMoveUp(String percent) {
    return 'ستاسو پورټفولیو نن $percent لوړ شو';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'ستاسو پورټفولیو نن $percent ټیټ شو';
  }

  @override
  String get whatIfTitle => 'که مو پانګونه کړې وای؟';

  @override
  String get whatIfAmount => 'مقدار';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount چې $period مخکې پانګونه شوې وای، نن به یې ارزښت وای';
  }

  @override
  String get whatIfNote =>
      'یوازې د ونډې پر بیه ولاړ دی: د ونډې ګټه، فیسونه او مالیات پکې نه دي شامل. تېرې ګټې د راتلونکو وړاندوینه نه کوي.';

  @override
  String get watchShare => 'لېست شریک کړئ';

  @override
  String get watchImport => 'ټیکرونه زیات کړئ';

  @override
  String get watchImportHint =>
      'هغه ټیکرونه ولګوئ چې په کامې، تشې یا نوې کرښې سره بېل شوي وي – د بېلګې په توګه هغه لېست چې چا درسره شریک کړی وي.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ونډې اضافه شوې',
      one: '1 ونډه اضافه شوه',
      zero: 'نوې ونډې نشته',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'تر ټولو لوی لومړی';

  @override
  String get positionsSortGain => 'تر ټولو ډېره ټوله ګټه لومړی';

  @override
  String get positionsSortToday => 'د نن ورځې غوره لومړی';

  @override
  String get chartMyBuys => 'ستاسو پېرودونه';

  @override
  String get chartMySells => 'ستاسو پلورونه';

  @override
  String get shortcutsTitle => 'د کیبورډ شارټکټونه';

  @override
  String usMarketOpen(String time) {
    return 'د امریکا بازار خلاص دی · په $time کې بندیږي';
  }

  @override
  String usMarketClosed(String time) {
    return 'د امریکا بازار بند دی · په $time کې خلاصیږي';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes دقیقې';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours ساعته $minutes دقیقې';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days ورځې $hours ساعته';
  }

  @override
  String get dividendGoalSet => 'د میاشتنۍ ونډې ګټې موخه وټاکئ';

  @override
  String get dividendGoalTitle => 'د میاشتنۍ ونډې ګټې موخه';

  @override
  String get dividendGoalAmount => 'په میاشت کې د ونډې ګټه';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'د نن ورځې د ګټې په کچه په میاشت کې شاوخوا $amount · $percent · موخه: $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'د نن ورځې د ګټې په کچه په میاشت کې شاوخوا $amount · موخې ته ورسېدئ: $goal';
  }

  @override
  String get portfolioAccount => 'حساب';

  @override
  String get portfolioAccountHint => 'لکه TBSZ 2026 (اختیاري)';

  @override
  String get portfolioAccountAdd => 'حساب وټاکئ';

  @override
  String get portfolioAccountsAll => 'ټول حسابونه';

  @override
  String get portfolioAccountNote =>
      'یوازې د دې حساب راکړې ورکړې او ډیویډنډونه. نغدې، موخې او د AI بیاکتنه د «ټول حسابونه» لاندې ښودل کېږي.';

  @override
  String get portfolioNoAccount => 'حساب نشته';

  @override
  String portfolioFee(String currency) {
    return 'فیس ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'فیس اضافه کړئ';

  @override
  String portfolioFeeRow(String amount) {
    return 'فیس: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'کلنۍ لنډیز';

  @override
  String get portfolioProceeds => 'د پلور عاید';

  @override
  String get portfolioCostBasis => 'د پېرود لګښت';

  @override
  String get portfolioFeesPaid => 'ورکړل شوې فیس';

  @override
  String get portfolioAnnualSummaryNote =>
      'اندازې په اصلي اسعارو دي، نه دي اړول شوې. د پلور عاید د پلور فیس ترې کم شوی؛ د پېرود لګښت د پېرود فیس هم پکې شامل دی (FIFO). د مالیې د اظهارنامې لپاره، د اسعارو په هغه نرخ یې واړوئ چې ستاسو د مالیې اداره یې غواړي.';

  @override
  String get portfolioShare => 'کارکردګي شریک کړئ';

  @override
  String get portfolioShareHeading => 'زما پورټفولیو';

  @override
  String get portfolioTopHoldings => 'تر ټولو لوی پوزیشنونه';

  @override
  String get portfolioShareNote => 'یوازې سلنې شریکېږي، مقدارونه نه.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count پوزیشنونه',
      one: '$count پوزیشن',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'د پانګونې مشوره نه ده';

  @override
  String get contributionButton => 'نوې پیسې پانګونه کړئ';

  @override
  String contributionAmount(String currency) {
    return 'د پانګونې اندازه ($currency)';
  }

  @override
  String get contributionHint =>
      'یوازې پېرود، پلور نه: هغه پوزیشنونه چې له خپل هدف څخه تر ټولو ډېر ټیټ دي، لومړی پیسې ترلاسه کوي.';

  @override
  String contributionShares(String shares) {
    return '≈ $shares ونډې';
  }

  @override
  String contributionMissing(String symbols) {
    return 'د $symbols لپاره اوسنۍ بیه نشته: په وېش کې نه دي شامل.';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'که کلنۍ ګټه همداسې پاتې شي ($rate)، نو شاوخوا په $year کال کې به موخې ته ورسېږئ.';
  }

  @override
  String get portfolioMaxDrawdown => 'تر ټولو لوی کمښت';

  @override
  String get glossMaxDrawdown =>
      'ستاسو د ونډو په ارزښت کې له یوې پخوانۍ لوړې کچې څخه تر یوې وروستۍ ټیټې کچې پورې تر ټولو لوی کمښت، ستاسو د پېرلو او پلورلو له اغېز پرته (د وخت له مخې وزن شوی). دا ښيي چې ستاسو پورټفولیو تر اوسه څومره ژور کمښت لیدلی دی.';

  @override
  String watchSince(String date) {
    return 'خوښو ته له ورزیاتولو راهیسې ($date)';
  }

  @override
  String get portfolioSampleTry => 'د نمونه پورټفولیو سره ازمویل';

  @override
  String get portfolioSampleBanner =>
      'دا یو نمونه پورټفولیو ده. خپلې پېرودنې ورسره ورزیاتې کړئ، یا یې لرې کړئ.';

  @override
  String get portfolioSampleRemove => 'نمونه لرې کړئ';

  @override
  String get portfolioStopsAll =>
      'د ټولو پوزیشنونو لپاره له لوړې کچې د ښکته کېدو خبرتیا';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count خبرتیاوې وټاکل شوې',
      one: '1 خبرتیا وټاکل شوه',
      zero: 'ټول پوزیشنونه دمخه دا خبرتیا لري',
    );
    return '$_temp0';
  }

  @override
  String portfolioSinceSale(String percent) {
    return '$percent له پلور راهیسې';
  }

  @override
  String get lotPreviewRealized => 'په دې پلور کې تحقق شوې (FIFO):';

  @override
  String lotPreviewAverage(String after, String before) {
    return 'نوی منځنی لګښت: $after (اوس $before)';
  }

  @override
  String get portfolioYtdReturn => 'د سږکال ګټه';

  @override
  String get glossTwrYtd =>
      'د کال له پیل راهیسې (یا ستاسو له لومړي پېرلو راهیسې، که هغه سږکال وي) د وخت له مخې وزن شوې ګټه: هره ورځ د هغو ونډو بدلون حسابوي چې تاسو په هغه ورځ درلودې، او ورځې یو له بل سره د ځنځیر په څېر نښلول کېږي – هغه پیسې چې تاسو یې اچوئ یا باسئ ګټه نه ده، نو له یوه شاخص سره پرتله کېدای شي. لاندې: په همدې موده کې ټاکل شوی شاخص.';

  @override
  String get portfolioGoalSet => 'موخه وټاکئ';

  @override
  String get portfolioGoalTitle => 'د پورټفولیو موخه';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · موخه: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'موخې ته ورسېدئ: $amount';
  }

  @override
  String get portfolioGoalRemove => 'موخه لرې کړئ';

  @override
  String get alertEdit => 'خبرتیا سمه کړئ';

  @override
  String get positionOpenLots => 'لا هم ستاسو سره (تر ټولو زاړه لومړی)';

  @override
  String get lotRemoved => 'راکړه ورکړه ړنګه شوه';

  @override
  String get alertDeleted => 'خبرتیا ړنګه شوه';

  @override
  String get alertsClearTriggered => 'فعاله شوې خبرتیاوې پاکې کړئ';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count خبرتیاوې پاکې شوې',
      one: '1 خبرتیا پاکه شوه',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'کور پاڼه';

  @override
  String get allocationCountries => 'هېوادونه';

  @override
  String get newsExplainNoteResearch =>
      'د AI تشریح: په وېب کې حقایق لټوي، مقاله پرانیزي او ارزوي چې سرچینه څومره د باور وړ ده. د پانګونې مشوره نه ده. ستاسو د ورځنیو پوښتنو له حد څخه کمېږي، شننه نه لګوي.';

  @override
  String get sourceOfficial => 'رسمي';

  @override
  String get sourcePressRelease => 'مطبوعاتي اعلامیه';

  @override
  String get sourceMajorNews => 'لوی رسنۍ';

  @override
  String get sourceOpinion => 'نظر';

  @override
  String get earningsSummaryButton => 'په وروستي راپور کې څه وو؟';

  @override
  String get earningsSummaryNote =>
      'د شرکت د پایلو د اعلان او هغو رسنیزو خبرونو د AI لنډیز چې په وېب کې یې مومي. د پانګونې مشوره نه ده. ستاسو د ورځنیو پوښتنو له حد څخه کمېږي، شننه نه لګوي.';

  @override
  String get compareLastSurprise => 'د وروستۍ درېمیاشتنۍ EPS په پرتله متوقع';

  @override
  String get compareNextReport => 'بل راپور';

  @override
  String get resolvingDescription => 'دا معلومېږي چې ستاسو مطلب کومه ونډه ده…';

  @override
  String get instrumentTitle => 'د دې وسیلې په اړه';

  @override
  String get instrumentHint =>
      'د دې سمبول لپاره د شرکت پروفایل نشته – کېدای شي ETF، فنډ یا د امانت رسید وي. له AI وپوښتئ دا څه دی، څه پکې دي او څومره لګښت لري.';

  @override
  String get instrumentAsk => 'دا څه دی؟';

  @override
  String get instrumentNote =>
      'د خپرونکي د فنډ پاڼې او هغو مالي وېبپاڼو له مخې د AI تشریح چې په وېب کې یې مومي. د پانګونې مشوره نه ده. ستاسو د ورځنیو پوښتنو له حد څخه کمېږي، شننه نه لګوي.';

  @override
  String suggestAskAi(String query) {
    return 'له AI وپوښتئ: «$query»';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'د $symbols لپاره اوسنۍ بیه نشته.';
  }

  @override
  String get eventsRecentResults => 'وروستۍ اعلان شوې پایلې';

  @override
  String get saveToNotes => 'زما یادښتونو کې خوندي کړئ';

  @override
  String get savedToNotes => 'ستاسو یادښتونو کې خوندي شو';

  @override
  String get portfolioDividendsReceived => 'ترلاسه شوي ډیویډنډونه';

  @override
  String get portfolioDividendsThisYear => 'سږکال';

  @override
  String get portfolioDividendsAllTime => 'تر اوسه ټول';

  @override
  String get portfolioAddDividend => 'ډیویډنډ اضافه کړئ';

  @override
  String portfolioDividendAmount(String currency) {
    return 'ترلاسه شوې اندازه ($currency)';
  }

  @override
  String get portfolioDividendDate => 'د تادیې نېټه';

  @override
  String get portfolioDividendsEmpty =>
      'تر اوسه هیڅ ډیویډنډ ثبت نه دی. په لاس يې اضافه کړئ، یا د خپل بروکر اکسپورټ وارد کړئ – د هغه د ډیویډنډ کرښې هم اخیستل کېږي.';

  @override
  String get portfolioSplit => 'د ونډو ویش';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'د ونډو ویش: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'له ویش مخکې نېټې لرونکي پېرودنې او پلورنې سمون مومي: د ونډو شمېر ضرب کېږي او د هرې ونډې بیه وېشل کېږي، نو لګښت همداسې پاتې کېږي.';

  @override
  String get portfolioSplitRatio => 'تناسب (نوې : زړې)';

  @override
  String get portfolioSplitRatioError =>
      'لکه 10:1 تناسب ولیکئ، یا د معکوس ویش لپاره 1:10.';

  @override
  String get portfolioSplitDate => 'د ویش نېټه';

  @override
  String portfolioSplitRow(String ratio) {
    return 'د ونډو ویش $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'د ونډو ویش ړنګ شو';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count د ونډو ویشونه زیات شول',
      one: '1 د ونډو ویش زیات شو',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ډیویډنډونه اضافه شول',
      one: '1 ډیویډنډ اضافه شو',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'ډیویډنډونه صادر کړئ (CSV)';

  @override
  String get portfolioDividendDeleted => 'ډیویډنډ حذف شو';

  @override
  String get portfolioDividendsHint =>
      'اندازې هغسې دي چې ستاسو حساب ته راغلي، د تادیې په اسعارو؛ مجموعې د نن ورځې په نرخ بدلېږي. د مالیې راپور لپاره د خپل بروکر بیان وکاروئ.';

  @override
  String get awayTitle => 'کله چې تاسو نه وئ';

  @override
  String awaySince(String when) {
    return 'له $when راهیسې';
  }

  @override
  String get awayQuiet => 'څه ډېر بدلون نه و.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count خبرتیاوې فعالې شوې',
      one: '1 خبرتیا فعاله شوه',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'خپرې شوې پایلې: $symbols';
  }

  @override
  String get moveWhyButton => 'نن ولې خوځي؟';

  @override
  String moveWhyTitle(String percent) {
    return 'نن $percent';
  }

  @override
  String get moveWhyNote =>
      'د نن ورځې د خبرونو پر بنسټ چې په ویب کې موندل شوي، د AI تشریح؛ اصلي دلیل کېدای شي نامعلوم یا توپیر ولري. د پانګونې مشوره نه ده. ستاسو د ورځنیو پوښتنو حد کاروي، نه تحلیل.';

  @override
  String get sectionTechnical => 'تخنیکي انځور';

  @override
  String get labelSma50 => '۵۰ ورځنی اوسط';

  @override
  String get labelSma200 => '۲۰۰ ورځنی اوسط';

  @override
  String get labelRsi => 'RSI (۱۴ ورځې)';

  @override
  String get labelVolatility30 => 'بې‌ثباتي (۳۰ ورځې)';

  @override
  String techAbove(String percent) {
    return '$percent پورته';
  }

  @override
  String techBelow(String percent) {
    return '$percent ښکته';
  }

  @override
  String get techOverbought => 'ډېر پېرودل شوی';

  @override
  String get techOversold => 'ډېر پلورل شوی';

  @override
  String get techNeutral => 'بې‌طرفه';

  @override
  String get techGoldenCross =>
      '۵۰ ورځنی اوسط د ۲۰۰ ورځني اوسط له پورته دی – د کلاسیک تعبیر له مخې د پورته کېدو رنډ.';

  @override
  String get techDeathCross =>
      '۵۰ ورځنی اوسط د ۲۰۰ ورځني اوسط له ښکته دی – د کلاسیک تعبیر له مخې د ښکته کېدو رنډ.';

  @override
  String get glossSma50 =>
      'د تېرو ۵۰ تجارتي ورځو د تړلو بیې اوسط. له دې پورته بیه ډېری وخت د لنډمهاله ځواک، او ښکته بیه د کمزورتیا نښه ګڼل کېږي.';

  @override
  String get glossSma200 =>
      'د تېرو ۲۰۰ تجارتي ورځو د تړلو بیې اوسط – د اوږدمهاله رنډ کلاسیکه کرښه. ډېری پانګوال له دې پورته بیه د اوږدمهاله پورته کېدو رنډ ګڼي.';

  @override
  String get glossRsi =>
      'د نسبي ځواک شاخص: وروستۍ ګټې له وروستیو زیانونو سره د ۰–۱۰۰ په کچه پرتله کوي. له ۷۰ پورته سټاک ډېری وخت ډېر پېرودل شوی (ګړندی پورته شوی) او له ۳۰ ښکته ډېر پلورل شوی بلل کېږي – خو یو پیاوړی رنډ کولای شي اوږده موده هلته پاتې شي.';

  @override
  String get glossVolatility =>
      'بیه له یوې ورځې تر بلې څومره بدلېږي، د کال په کچه حساب شوې: ۲۰٪ یعنې یو عادي کال نږدې ±۲۰٪ په حدودو کې حرکت کوي. لوړه بې‌ثباتي یعنې دواړو خواوو ته لوی حرکتونه.';

  @override
  String get techNote =>
      'له ورځنیو تړلو بیو څخه حساب شوی. تخنیکي نښې تېر وخت بیانوي، نه راتلونکی.';

  @override
  String portfolioAbove200(int above, int count) {
    return 'له $count پوزیشنونو څخه $above د خپل 200-ورځني اوسط له پاسه';
  }

  @override
  String get watchSignalsTitle => 'اشارې';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · ډېر پلورل شوی';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · ډېر پېرودل شوی';
  }

  @override
  String get signalCrossedAbove => 'له ۲۰۰ ورځني اوسط پورته تېر شو';

  @override
  String get signalCrossedBelow => 'له ۲۰۰ ورځني اوسط ښکته تېر شو';

  @override
  String get signalAlertsTitle => 'د تخنیکي سیګنالونو خبرتیاوې';

  @override
  String get signalAlertsSubtitle =>
      'په ورځ یو ځل، کله چې ستاسو تعقیب شوی سټاک ډېر پلورل شوی یا ډېر پېرودل شوی (RSI) شي، یا بیه یې له ۲۰۰ ورځني اوسط تېره شي.';

  @override
  String get signalAlertsNotification => 'تخنیکي سیګنالونه';

  @override
  String get glossaryPageTitle => 'د اصطلاحاتو لړلیک';

  @override
  String get glossaryPageSubtitle =>
      'د اپ د هر شمېر ساده تشریح، له P/E څخه تر RSI پورې';

  @override
  String get glossarySearchHint => 'په اصطلاحاتو کې لټون';

  @override
  String get portfolioCash => 'نغدې';

  @override
  String get portfolioCashTitle => 'نغدي بیلانس';

  @override
  String get portfolioCashHint =>
      'ستاسو د بروکر سره پانګونه نه شوې پیسې، د اسعارو له مخې. دا په ټول ارزښت او وېش کې حسابېږي؛ په ګټه کې نه.';

  @override
  String portfolioCashAmount(String currency) {
    return 'مقدار ($currency)';
  }

  @override
  String get portfolioCashEdit => 'نغدي بیلانس ټاکل';

  @override
  String get portfolioDividendsByMonth => 'د میاشتو له مخې';

  @override
  String get dividendsLegendReceived => 'ترلاسه شوي';

  @override
  String get dividendsLegendExpected => 'تمه کېدونکي';

  @override
  String get portfolioDividendsExpected => 'راتلونکی تمه کېدونکی';

  @override
  String get portfolioDividendsExpectedNote =>
      'ستاسو د ثبت شویو تادیاتو له نېټو او اندازو اټکل شوی؛ شرکتونه کولای شي دا بدل کړي یا پرېږدي.';

  @override
  String portfolioDividendAround(String date) {
    return 'نږدې $date';
  }
}
