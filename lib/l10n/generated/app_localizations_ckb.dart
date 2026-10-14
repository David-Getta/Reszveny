// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Central Kurdish (`ckb`).
class AppLocalizationsCkb extends AppLocalizations {
  AppLocalizationsCkb([String locale = 'ckb']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'وێنەی پشکێک بگرە و هەموو شتێک دەربارەی بزانە.';

  @override
  String get homeHint =>
      'بڕوانامەی پشک، شاشەی ئەپی بڕۆکەر، ڕۆژنامەیەک یان لۆگۆی کۆمپانیایەک – هەر شتێک کە پشکێک دیاری بکات.';

  @override
  String get takePhoto => 'وێنە بگرە';

  @override
  String get chooseFromGallery => 'لە گەلەرییەوە هەڵبژێرە';

  @override
  String get chooseImage => 'وێنەیەک هەڵبژێرە';

  @override
  String get enterTickerManually => 'هێما بە دەست بنووسە';

  @override
  String get tickerInputLabel => 'هێمای پشک';

  @override
  String get tickerInputHint => 'بۆ نموونە AAPL';

  @override
  String get lookUp => 'بگەڕێ';

  @override
  String demoModeBanner(String symbols) {
    return 'دۆخی نموونە – کلیلی داتای بازاڕ ڕێکنەخراوە. داتای نموونە بۆ ئەمانە بەردەستە: $symbols.';
  }

  @override
  String get recognizing => 'وێنەکە شی دەکرێتەوە…';

  @override
  String get loadingData => 'داتا بار دەکرێت…';

  @override
  String get noCandidatesTitle => 'هیچ پشکێک نەناسرایەوە';

  @override
  String get noCandidatesBody =>
      'نەمانتوانی پشکێک لەم وێنەیەدا بناسینەوە. وێنەیەکی ڕوونتر تاقی بکەرەوە، یان هێماکە بە دەست بنووسە.';

  @override
  String get whatWeSaw => 'ئەوەی بینیمان';

  @override
  String get chooseCandidateTitle => 'مەبەستت کام پشک بوو؟';

  @override
  String confidencePercent(int percent) {
    return '$percent% دڵنیایی';
  }

  @override
  String get settings => 'ڕێکخستنەکان';

  @override
  String get language => 'زمان';

  @override
  String get systemLanguage => 'بنەڕەتی سیستەم';

  @override
  String get about => 'دەربارە';

  @override
  String get disclaimer =>
      'ئەم ئەپە تەنها زانیاری دەدات و ئامۆژگاریی وەبەرهێنان نییە. لەوانەیە داتاکان دواکەوتوو یان ناڕاست بن.';

  @override
  String dataSource(String source) {
    return 'سەرچاوەی داتا: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'ناسینەوە: $source';
  }

  @override
  String get retry => 'دووبارە هەوڵ بدەرەوە';

  @override
  String get cancel => 'هەڵوەشاندنەوە';

  @override
  String get ok => 'باشە';

  @override
  String get close => 'داخستن';

  @override
  String get errorGeneric => 'هەڵەیەک ڕوویدا.';

  @override
  String get errorSectionUnavailable => 'ئەم بەشە بار نەکرا.';

  @override
  String get notAvailable => 'نییە';

  @override
  String get sectionIdentity => 'ناسنامە';

  @override
  String get sectionPrice => 'نرخ';

  @override
  String get sectionValuation => 'هەڵسەنگاندن';

  @override
  String get sectionFinancials => 'زانیاریی دارایی';

  @override
  String get sectionDividend => 'قازانجی پشک';

  @override
  String get sectionProfile => 'پرۆفایلی کۆمپانیا';

  @override
  String get sectionAnalysts => 'هەڵسەنگاندنی شیکەرەوەکان';

  @override
  String get sectionNews => 'هەواڵەکان';

  @override
  String get sectionRecognition => 'وردەکاریی ناسینەوە';

  @override
  String get labelSymbol => 'هێما';

  @override
  String get labelExchange => 'بۆرسە';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'دراو';

  @override
  String get labelCountry => 'وڵات';

  @override
  String get labelIndustry => 'پیشەسازی';

  @override
  String get labelSector => 'کەرت';

  @override
  String get labelWebsite => 'ماڵپەڕ';

  @override
  String get labelIpoDate => 'بەرواری IPO';

  @override
  String get labelMarketCap => 'بەهای بازاڕ';

  @override
  String get labelSharesOutstanding => 'پشکە بڵاوکراوەکان';

  @override
  String get labelEmployees => 'فەرمانبەران';

  @override
  String get labelCeo => 'بەڕێوەبەری گشتی';

  @override
  String get labelHeadquarters => 'بارەگای سەرەکی';

  @override
  String get labelDescription => 'وەسف';

  @override
  String get labelLastPrice => 'دوایین نرخ';

  @override
  String get labelChange => 'گۆڕان';

  @override
  String get labelOpen => 'نرخی کردنەوە';

  @override
  String get labelDayHigh => 'بەرزترینی ڕۆژ';

  @override
  String get labelDayLow => 'نزمترینی ڕۆژ';

  @override
  String get labelPreviousClose => 'داخستنی پێشوو';

  @override
  String get labelWeek52High => 'بەرزترینی 52 هەفتە';

  @override
  String get labelWeek52Low => 'نزمترینی 52 هەفتە';

  @override
  String get labelAverageVolume10d => 'تێکڕای قەبارە (10 ڕۆژ)';

  @override
  String updatedAt(String time) {
    return 'نوێکرایەوە $time';
  }

  @override
  String get labelPeTrailing => 'P/E (ڕابردوو)';

  @override
  String get labelPeForward => 'P/E (داهاتوو)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / ڕەوتی پارەی ئازاد';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'بێتا';

  @override
  String get labelRevenueTtm => 'داهات (TTM)';

  @override
  String get labelNetIncomeTtm => 'قازانجی پوخت (TTM)';

  @override
  String get labelGrossMargin => 'ڕێژەی قازانجی گشتی';

  @override
  String get labelOperatingMargin => 'ڕێژەی قازانجی کارپێکردن';

  @override
  String get labelNetMargin => 'ڕێژەی قازانجی پوخت';

  @override
  String get labelRoe => 'قازانج بەرامبەر مافی خاوەندارێتی';

  @override
  String get labelRoa => 'قازانج بەرامبەر داراییەکان';

  @override
  String get labelDebtToEquity => 'قەرز / مافی خاوەندارێتی';

  @override
  String get labelCurrentRatio => 'ڕێژەی ڕەوانی';

  @override
  String get labelRevenueGrowth => 'گەشەی داهات (YoY)';

  @override
  String get labelEpsGrowth => 'گەشەی EPS (YoY)';

  @override
  String get labelDividendYield => 'ڕێژەی قازانجی پشک';

  @override
  String get labelDividendPerShare => 'قازانج بۆ هەر پشکێک';

  @override
  String get labelPayoutRatio => 'ڕێژەی دابەشکردن';

  @override
  String get labelConsensus => 'کۆدەنگی';

  @override
  String get ratingStrongBuy => 'کڕینی بەهێز';

  @override
  String get ratingBuy => 'کڕین';

  @override
  String get ratingHold => 'هێشتنەوە';

  @override
  String get ratingSell => 'فرۆشتن';

  @override
  String get ratingStrongSell => 'فرۆشتنی بەهێز';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count شیکەرەوە',
      one: '1 شیکەرەوە',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'ماوە: $period';
  }

  @override
  String get noNews => 'هیچ هەواڵێکی نوێ نییە.';

  @override
  String get openArticle => 'کردنەوەی وتار';

  @override
  String get openLinkFailed => 'بەستەرەکە نەکرایەوە.';

  @override
  String get recognitionSummary => 'پوختە';

  @override
  String get recognitionEvidence => 'بۆچی وا بیر دەکەینەوە';

  @override
  String get recognitionRawText => 'دەقی خوێندراوە لە وێنەکەوە';

  @override
  String get errMissingAnthropicKey =>
      'ناسینەوەی وێنە ڕێکنەخراوە (ANTHROPIC_API_KEY نییە). هێماکە بە دەست بنووسە.';

  @override
  String get errRecognitionUnreachable =>
      'نەگەیشتین بە خزمەتگوزاریی ناسینەوە. پەیوەندیی ئینتەرنێتەکەت بپشکنە.';

  @override
  String errRecognitionHttp(String status) {
    return 'خزمەتگوزاریی ناسینەوە هەڵەیەکی گەڕاندەوە (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'خزمەتگوزاریی ناسینەوە نەیتوانی ئەم وێنەیە پرۆسێس بکات.';

  @override
  String get errRecognitionTruncated =>
      'وەڵامی ناسینەوە بڕا. تکایە دووبارە هەوڵ بدەرەوە.';

  @override
  String get errRecognitionBadResponse =>
      'وەڵامێکی چاوەڕواننەکراو لە خزمەتگوزاریی ناسینەوە.';

  @override
  String get errRecognitionEmpty =>
      'خزمەتگوزاریی ناسینەوە وەڵامێکی بەتاڵی گەڕاندەوە.';

  @override
  String get errMissingFinnhubKey =>
      'داتای بازاڕ ڕێکنەخراوە (FINNHUB_API_KEY نییە).';

  @override
  String get errMarketUnreachable =>
      'نەگەیشتین بە خزمەتگوزاریی داتای بازاڕ. پەیوەندیی ئینتەرنێتەکەت بپشکنە.';

  @override
  String get errMarketRateLimited =>
      'داواکاریی زۆر بۆ خزمەتگوزاریی داتای بازاڕ نێردراوە. تکایە خولەکێک چاوەڕێ بکە.';

  @override
  String errMarketHttp(String status) {
    return 'خزمەتگوزاریی داتای بازاڕ هەڵەیەکی گەڕاندەوە (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'وەڵامێکی چاوەڕواننەکراو لە خزمەتگوزاریی داتای بازاڕ.';

  @override
  String errNoQuote(String symbol) {
    return 'هیچ داتایەکی نرخ بۆ $symbol نەدۆزرایەوە.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'هیچ پرۆفایلێکی کۆمپانیا بۆ $symbol نەدۆزرایەوە.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'دۆخی نموونە تەنها پشتگیریی $symbols دەکات. بۆ داتای ڕاستەوخۆ FINNHUB_API_KEY زیاد بکە.';
  }

  @override
  String errUnknown(String detail) {
    return 'هەڵەیەک ڕوویدا: $detail';
  }

  @override
  String get newSearch => 'گەڕانی نوێ';

  @override
  String get recentSearches => 'دواییەکان';

  @override
  String get noRecentSearches => 'هێشتا هیچ گەڕانێکی دوایی نییە.';

  @override
  String get clearRecent => 'سڕینەوەی دواییەکان';

  @override
  String get greeting => 'سەیری کام پشک بکەین؟';

  @override
  String get searchHint => 'هێما یان ناوی کۆمپانیا';

  @override
  String get attachImage => 'وێنەیەک هاوپێچ بکە';

  @override
  String get searchResultsTitle => 'ئەنجامەکانی گەڕان';

  @override
  String errNoResults(String query) {
    return 'هیچ پشکێک بۆ «$query» نەدۆزرایەوە.';
  }

  @override
  String get quickBarHint => 'هێما یان ناوی کۆمپانیا بنووسە…';

  @override
  String get openFullWindow => 'کردنەوەی پەنجەرە';

  @override
  String hotkeyHint(String shortcut) {
    return 'بۆ بانگکردنی WhatStock لە هەر شوێنێک $shortcut دابگرە.';
  }

  @override
  String get trayOpen => 'کردنەوەی WhatStock';

  @override
  String get trayQuickSearch => 'گەڕانی خێرا';

  @override
  String get trayQuit => 'دەرچوون';

  @override
  String get appearance => 'ڕووکار';

  @override
  String get themeSystem => 'سیستەم';

  @override
  String get themeDark => 'تاریک';

  @override
  String get themeLight => 'ڕووناک';

  @override
  String get back => 'گەڕانەوە';

  @override
  String get aiSectionTitle => 'شیکاریی AI';

  @override
  String get aiIntro =>
      'پێداچوونەوەیەکی ورد کە AI نووسیویەتی: پوختەی هەواڵە نوێیەکان، کارەکە، خاڵە بەهێزەکان، مەترسییەکان و هۆکارە شاراوەکان، هەڵسەنگاندن، ئاسۆی نرخ لەگەڵ سیناریۆ لە ڕوانگەی دەروونی، کۆمەڵایەتی، تەکنیکی و ماکرۆوە، و ئەو شتانەی دەبێت چاودێری بکرێن.';

  @override
  String get aiGenerate => 'دروستکردنی شیکاری';

  @override
  String get aiRegenerate => 'دووبارە دروستکردنەوە';

  @override
  String get aiGenerating =>
      'شیکارییەکە ئامادە دەکرێت… لەوانەیە یەک تا دوو خولەک بخایەنێت.';

  @override
  String get aiSources => 'سەرچاوەکان';

  @override
  String aiGeneratedAt(String time) {
    return 'دروستکرا $time';
  }

  @override
  String get aiDisclaimer =>
      'شیکارییەک کە AI لەسەر بنەمای داتای گشتی و هەواڵە نوێیەکان دروستی کردووە. لەوانەیە هەڵەی تێدا بێت یان کۆن بووبێت، و ئامۆژگاریی وەبەرهێنان نییە.';

  @override
  String get errAiNotConfigured =>
      'شیکاریی AI ڕێکنەخراوە (ANTHROPIC_API_KEY نییە).';

  @override
  String get errAiUnreachable =>
      'نەگەیشتین بە خزمەتگوزاریی AI. پەیوەندیی ئینتەرنێتەکەت بپشکنە.';

  @override
  String errAiHttp(String status) {
    return 'خزمەتگوزاریی AI هەڵەیەکی گەڕاندەوە (HTTP $status).';
  }

  @override
  String get errAiRefused => 'خزمەتگوزاریی AI ڕەتی کردەوە ئەم پشکە شی بکاتەوە.';

  @override
  String get errAiBadResponse => 'وەڵامێکی چاوەڕواننەکراو لە خزمەتگوزاریی AI.';

  @override
  String get sectionChart => 'هێڵکاریی نرخ';

  @override
  String get rangeOneWeek => '1 هەفتە';

  @override
  String get rangeOneMonth => '1 مانگ';

  @override
  String get rangeThreeMonths => '3 مانگ';

  @override
  String get rangeOneYear => '1 ساڵ';

  @override
  String get rangeFiveYears => '5 ساڵ';

  @override
  String get chartUnavailable =>
      'مێژووی نرخ لە سەرچاوەی داتای ئێستادا بەردەست نییە.';

  @override
  String get sectionStatements => 'ڕاپۆرتە داراییەکان (ساڵانە)';

  @override
  String get labelFiscalYear => 'ساڵی دارایی';

  @override
  String get labelRevenue => 'داهات';

  @override
  String get labelNetIncome => 'قازانجی پوخت';

  @override
  String get labelTotalAssets => 'کۆی داراییەکان';

  @override
  String get labelTotalLiabilities => 'کۆی قەرزەکان';

  @override
  String get labelEquity => 'مافی خاوەن پشکەکان';

  @override
  String get labelOperatingCashFlow => 'ڕەوتی پارەی کارپێکردن';

  @override
  String get statementsUnavailable =>
      'ڕاپۆرتە داراییە بڵاوکراوەکان بۆ ئەم پشکە بەردەست نین.';

  @override
  String get launchAtLogin => 'کردنەوە لە کاتی چوونەژوورەوە';

  @override
  String get hotkeyLabel => 'کورتەڕێی گشتی';

  @override
  String get hotkeyRecordHint =>
      'لێرە کرتە بکە، پاشان تێکەڵەی کلیلە نوێیەکە دابگرە';

  @override
  String get hotkeyReset => 'گەڕاندنەوە بۆ بنەڕەت';

  @override
  String get pasteImage => 'لکاندنی وێنە لە کلیپبۆردەوە';

  @override
  String get errClipboardNoImage => 'هیچ وێنەیەک لە کلیپبۆرددا نییە.';

  @override
  String get favorites => 'دڵخوازەکان';

  @override
  String get addToFavorites => 'زیادکردن بۆ دڵخوازەکان';

  @override
  String get removeFromFavorites => 'لابردن لە دڵخوازەکان';

  @override
  String get noFavorites =>
      'هێشتا هیچ دڵخوازێک نییە. بۆ زیادکردن، دەست لە ئەستێرەی پشکێک بدە.';

  @override
  String get displayCurrency => 'دراوی پیشاندان';

  @override
  String get displayCurrencyNone => 'تەنها دراوی خودی پشکەکە';

  @override
  String labelConverted(String currency) {
    return '≈ بە $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'نرخی گۆڕینەوە: 1 $from = $rate $to (ECB، $date)';
  }

  @override
  String get updates => 'نوێکردنەوەکان';

  @override
  String currentVersion(String version) {
    return 'وەشانی $version';
  }

  @override
  String get autoUpdate => 'نوێکردنەوەکان بە خۆکاری دابمەزرێنە';

  @override
  String get checkForUpdates => 'پشکنین بۆ نوێکردنەوە';

  @override
  String get updateChecking => 'پشکنین بۆ نوێکردنەوە…';

  @override
  String get updateUpToDate => 'تۆ دوایین وەشانت هەیە.';

  @override
  String updateAvailable(String version) {
    return 'وەشانی $version بەردەستە.';
  }

  @override
  String get updateDownloading => 'نوێکردنەوەکە لە پاشبنەدا دادەبەزێنرێت…';

  @override
  String get updateDownloaded =>
      'نوێکردنەوەکە ئامادەیە. بۆ دامەزراندنی، ئەپەکە دووبارە دەستپێبکەرەوە.';

  @override
  String get updateNow => 'نوێکردنەوە';

  @override
  String get restartNow => 'دەستپێکردنەوە';

  @override
  String get updatesViaStore =>
      'نوێکردنەوەکان بە خۆکاری لە ڕێگەی فرۆشگای ئەپەکانەوە دێن.';

  @override
  String get updateCheckFailed => 'نەتوانرا نوێکردنەوەکان بپشکنرێن.';

  @override
  String get subscription => 'ئابوونە';

  @override
  String get planTrial => 'تاقیکردنەوە';

  @override
  String get planNormal => 'ئاسایی';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'هیچ پلانێکی چالاک نییە';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count شیکاری لە مانگێکدا';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'تاقیکردنەوەی بەخۆڕایی $days ڕۆژە لەگەڵ $count شیکاری';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days ڕۆژ لە تاقیکردنەوە ماوە',
      one: '1 ڕۆژ لە تاقیکردنەوە ماوە',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'تاقیکردنەوە بەخۆڕاییەکەت کۆتایی هات. بۆ بەردەوامبوون لە شیکاری پلانێک هەڵبژێرە.';

  @override
  String analysesRemaining(int remaining, int total) {
    return '$remaining لە $total شیکاری بۆ ئەم ماوەیە ماوە';
  }

  @override
  String extraCredits(int count) {
    return '$count شیکاریی زیادە';
  }

  @override
  String renewsOn(String date) {
    return 'نوێ دەبێتەوە لە $date';
  }

  @override
  String get choosePlan => 'پلانێک هەڵبژێرە';

  @override
  String get currentPlan => 'پلانی ئێستا';

  @override
  String get subscribe => 'ئابوونە بە';

  @override
  String get perMonth => '/ مانگ';

  @override
  String get extraPacksTitle => 'زیاترت پێویستە؟ شیکاریی زیادە بکڕە';

  @override
  String get extraPacksHint =>
      'شیکارییە زیادەکان هەرگیز بەسەر ناچن و دوای بڕی مانگانەت بەکاردێن.';

  @override
  String get buy => 'کڕین';

  @override
  String get restorePurchases => 'گەڕاندنەوەی کڕینەکان';

  @override
  String get manageSubscription => 'بەڕێوەبردنی ئابوونە';

  @override
  String get purchaseSuccess => 'سوپاس! کڕینەکەت چالاکە.';

  @override
  String get purchasePending => 'کڕین لە چاوەڕوانیدایە…';

  @override
  String get purchaseFailed => 'کڕینەکە تەواو نەبوو.';

  @override
  String get purchaseCanceled => 'کڕین هەڵوەشێنرایەوە.';

  @override
  String get billingUnavailable =>
      'کڕین هێشتا لەم پلاتفۆرمەدا بەردەست نییە. لە مۆبایل یان Mac ئابوونە بە؛ پلانەکەت لەسەر هەموو ئامێرێک کار دەکات.';

  @override
  String get errQuotaExceeded =>
      'هیچ شیکارییەکت بۆ ئەم ماوەیە نەماوە. پلانەکەت بەرز بکەرەوە یان شیکاریی زیادە بکڕە.';

  @override
  String get errTrialExpired =>
      'تاقیکردنەوە بەخۆڕاییەکەت کۆتایی هات. بۆ بەردەوامبوون پلانێک هەڵبژێرە.';

  @override
  String get errNoPlan => 'بۆ شیکاریی AI پلانێکی چالاک پێویستە.';

  @override
  String get viewPlans => 'بینینی پلانەکان';

  @override
  String get usageTitle => 'بەکارهێنان';

  @override
  String get demoPurchaseNote =>
      'پارەدانی نموونە: کڕینەکان لەم پلاتفۆرمەدا لاسایی دەکرێنەوە.';

  @override
  String get mostPopular => 'بەناوبانگترین';

  @override
  String get bestValue => 'باشترین بەها';

  @override
  String get planFeaturesCommon =>
      'ناسینەوەی وێنە، داتای ڕاستەوخۆ، هێڵکارییەکان، دڵخوازەکان و هەر 120 زمانەکە لە هەموو پلانێکدا هەن. بڕەکە تەنها بۆ شیکاریی AI بەکاردێت.';

  @override
  String get searchLanguages => 'گەڕان لە زمانەکان…';

  @override
  String get noLanguageMatch => 'هیچ زمانێک ناگونجێت.';

  @override
  String get aiSettings => 'شیکاریی AI';

  @override
  String get aiLength => 'درێژی';

  @override
  String get aiDepthBrief => 'کورت';

  @override
  String get aiDepthStandard => 'ستاندارد';

  @override
  String get aiDepthDeep => 'قووڵ';

  @override
  String get aiDepthBriefDesc => 'خاڵە سەرەکییەکان، بە خێرایی.';

  @override
  String get aiDepthStandardDesc => 'ڕاپۆرتی تەواو بە هەموو بەشەکانەوە.';

  @override
  String get aiDepthDeepDesc =>
      'گەڕانی وێبی زیاتر، بەراوردکردن لەگەڵ ڕکابەران و وردەکاریی قووڵتر.';

  @override
  String aiDepthWords(String min, String max) {
    return 'نزیکەی $min–$max وشە';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count شیکاری بەکاردەهێنێت',
      one: '1 شیکاری بەکاردەهێنێت',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'ئاستی خوێنەر';

  @override
  String get aiReaderBeginner => 'سەرەتایی';

  @override
  String get aiReaderExperienced => 'شارەزا';

  @override
  String get aiReaderBeginnerDesc =>
      'زمانی سادە؛ هەموو زاراوەیەکی تەکنیکی ڕوون دەکرێتەوە.';

  @override
  String get aiReaderExperiencedDesc => 'دەقی چڕتر بە زاراوەی دارایی ستاندارد.';

  @override
  String get aiCounterArgument => 'بەهێزترین بەڵگەی پێچەوانە';

  @override
  String get aiCounterArgumentDesc =>
      'پوختەکە هەمیشە بە بەهێزترین بەڵگە دژی دەرەنجامی خۆی کۆتایی دێت.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'بە پلانەکەت تا $count گەڕانی وێب بۆ هەر شیکارییەک',
      one: 'بە پلانەکەت تا 1 گەڕانی وێب بۆ هەر شیکارییەک',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'درێژیی ستاندارد بەپێی پلان: ئاسایی $normal، Pro $pro، Max $max، Ultra $ultra. کورت 2 کەمتر و قووڵ 2 زیاتر بەکاردەهێنێت.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'تا $count گەڕانی وێب',
      one: 'تا 1 گەڕانی وێب',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count گەڕانی وێب بۆ هەر شیکارییەک',
      one: '1 گەڕانی وێب بۆ هەر شیکارییەک',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'ئەم درێژییە $needed شیکاریی پێویستە، بەڵام تەنها $left ماوە. لە ڕێکخستنەکاندا درێژییەکی کورتتر هەڵبژێرە یان شیکاریی زیاتر وەربگرە.';
  }

  @override
  String get outlookMarketMood => 'کەشی بازاڕ';

  @override
  String get moodVeryPessimistic => 'زۆر ڕەشبین';

  @override
  String get moodPessimistic => 'ڕەشبین';

  @override
  String get moodNeutral => 'بێلایەن';

  @override
  String get moodOptimistic => 'گەشبین';

  @override
  String get moodVeryOptimistic => 'زۆر گەشبین';

  @override
  String get scenarioBull => 'سیناریۆی گەشبینانە';

  @override
  String get scenarioBase => 'سیناریۆی بنەڕەتی';

  @override
  String get scenarioBear => 'سیناریۆی ڕەشبینانە';

  @override
  String outlookCurrentPrice(String price) {
    return 'نرخی ئێستا: $price';
  }

  @override
  String get outlookKeyLevels => 'ئاستە سەرەکییەکان';

  @override
  String get keyLevelSupport => 'پشتگیری';

  @override
  String get keyLevelResistance => 'بەرگری';

  @override
  String get keyLevelAnchor => 'لەنگەر';

  @override
  String get upcomingEvents => 'ڕووداوە داهاتووەکان';

  @override
  String get outlookChartNote =>
      'مەودای نزیکەیی؛ ئەگەرەکان خەمڵاندنی گشتین، نەک پێشبینی.';

  @override
  String get accountTitle => 'هەژمار';

  @override
  String get signIn => 'چوونەژوورەوە';

  @override
  String get signOut => 'چوونەدەرەوە';

  @override
  String get notSignedIn => 'نەچوویتە ژوورەوە';

  @override
  String get accountBenefit =>
      'بچۆ ژوورەوە بۆ ئەوەی ئابوونەکەت لەسەر هەموو ئامێرەکانت کار بکات.';

  @override
  String get accountSyncedNote =>
      'ئابوونە و شیکارییە ماوەکانت لەسەر هەموو ئامێرێک وەک یەکن.';

  @override
  String get signInTitle => 'چوونەژوورەوە بۆ WhatStock';

  @override
  String get emailLabel => 'ناونیشانی ئیمەیڵ';

  @override
  String get continueWithEmail => 'بەردەوامبوون بە ئیمەیڵ';

  @override
  String codeSentTo(String email) {
    return 'کۆدێکی 6 ژمارەییمان بۆ $email نارد. بۆ ماوەی 10 خولەک کارایە.';
  }

  @override
  String get codeLabel => 'کۆدی چوونەژوورەوە';

  @override
  String get resendCode => 'ناردنی کۆدێکی نوێ';

  @override
  String get useDifferentEmail => 'ئیمەیڵێکی تر بەکاربهێنە';

  @override
  String get errInvalidCode => 'کۆدەکە هەڵەیە یان بەسەرچووە.';

  @override
  String get errInvalidEmail => 'تکایە ناونیشانێکی ئیمەیڵی دروست بنووسە.';

  @override
  String get errSignInFailed =>
      'چوونەژوورەوە سەرکەوتوو نەبوو. پەیوەندییەکەت بپشکنە و دووبارە هەوڵ بدەرەوە.';

  @override
  String get checkoutWaiting =>
      'پارەدانەکە لە وێبگەڕەکەتدا تەواو بکە. کە تەواو بوو، ئەپەکە بە خۆکاری نوێ دەبێتەوە.';

  @override
  String get paymentViaStripe =>
      'پارەدانی پارێزراو لە وێبگەڕەکەتدا لە ڕێگەی Stripe. هەر کاتێک بتەوێت هەڵیبوەشێنەوە.';

  @override
  String get paymentViaStore =>
      'پارەکە لە ڕێگەی هەژمارەکەت لە App Store یان Google Play وەردەگیرێت. هەر کاتێک بتەوێت لە ڕێکخستنەکانی فرۆشگادا هەڵیبوەشێنەوە.';

  @override
  String get keySpace => 'بۆشایی';

  @override
  String get doubleOptionTitle => 'دوو جار Option داگرە';

  @override
  String get doubleOptionSubtitle =>
      'دوو جار داگرتنی خێرای کلیلی Option هەروەها WhatStock بانگ دەکات.';

  @override
  String get doubleOptionPermission =>
      'بۆ ئەوەی لە ئەپەکانی تریشدا کار بکات، لە ڕێکخستنەکانی سیستەم ← تایبەتێتی و ئاسایش ← چاودێریی تێخستن ڕێگە بە WhatStock بدە، پاشان ئەپەکە دووبارە بکەرەوە.';

  @override
  String get openSystemSettings => 'کردنەوەی ڕێکخستنەکانی سیستەم';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'بۆ بانگکردنی WhatStock لە هەر شوێنێک $shortcut دابگرە یان دوو جار Option دابگرە.';
  }

  @override
  String get scenarioMostLikely => 'زۆرترین ئەگەر';

  @override
  String get longTermToday => 'ئەمڕۆ';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years ساڵ',
      one: '1 ساڵ',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range لە ساڵێکدا';
  }

  @override
  String longTermLikely(String price) {
    return 'زۆرترین ئەگەر $price';
  }

  @override
  String get confidenceLow => 'دڵنیایی کەم';

  @override
  String get confidenceMedium => 'دڵنیایی مامناوەند';

  @override
  String get confidenceHigh => 'دڵنیایی بەرز';

  @override
  String get longTermNote =>
      'مەودا درێژخایەنەکان پشت بە گریمانە باسکراوەکان دەبەستن و لەگەڵ کاتدا فراوانتر دەبن. نرخەکان قازانجی پشک ناگرنەوە. خەمڵاندنی گشتین، نەک پێشبینی.';

  @override
  String get portfolio => 'پۆرتفۆلیۆ';

  @override
  String get portfolioEmpty =>
      'هێشتا هیچ شتێک لێرە نییە. پشکێک بکەرەوە و دەست لە «زیادکردن بۆ پۆرتفۆلیۆ» بدە بۆ ئەوەی بەدواداچوون بۆ ئەو پشکانە بکەیت کە هەتن.';

  @override
  String get portfolioLocalNote =>
      'تەنها لەسەر ئەم ئامێرە پاشەکەوت دەکرێت. کۆکان بە نرخە سەرچاوەییەکانی ECB دەگۆڕدرێن؛ لەوانەیە نرخەکان دواکەوتوو بن.';

  @override
  String get addToPortfolio => 'زیادکردن بۆ پۆرتفۆلیۆ';

  @override
  String portfolioAddTitle(String symbol) {
    return 'زیادکردنی $symbol';
  }

  @override
  String get portfolioQuantity => 'ژمارەی پشکەکان';

  @override
  String portfolioBuyPrice(String currency) {
    return 'نرخی هەر پشکێک ($currency)';
  }

  @override
  String get portfolioBuyDate => 'بەرواری کڕین';

  @override
  String get portfolioAdd => 'زیادکردن';

  @override
  String get portfolioInvalidNumber => 'ژمارەیەک لە سفر گەورەتر بنووسە.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol بۆ پۆرتفۆلیۆکەت زیادکرا.';
  }

  @override
  String get portfolioTotalValue => 'کۆی بەها';

  @override
  String get portfolioToday => 'ئەمڕۆ';

  @override
  String get portfolioGainLoss => 'قازانج/زەرەر';

  @override
  String get portfolioInvested => 'وەبەرهێنراو';

  @override
  String get portfolioAllocation => 'دابەشبوون';

  @override
  String get portfolioPositions => 'پۆزیشنەکان';

  @override
  String portfolioAvgCost(String price) {
    return 'تێکڕای تێچوو $price';
  }

  @override
  String get portfolioYourPosition => 'پۆزیشنەکەت';

  @override
  String get portfolioPurchases => 'کڕینەکان';

  @override
  String get portfolioRemove => 'لابردن';

  @override
  String get portfolioExcluded =>
      'ئەو پۆزیشنانەی نرخ یان نرخی گۆڕینەوەیان نییە لە کۆکان دەرکراون.';

  @override
  String get priceAlerts => 'ئاگادارکەرەوەکانی نرخ';

  @override
  String get setPriceAlert => 'دانانی ئاگادارکەرەوەی نرخ';

  @override
  String alertDialogTitle(String symbol) {
    return 'ئاگادارکەرەوەی نرخ · $symbol';
  }

  @override
  String get alertKindAbove => 'بەرز دەبێتەوە بۆ سەرووی';

  @override
  String get alertKindBelow => 'دادەبەزێت بۆ خوارووی';

  @override
  String get alertKindMove => 'لە ڕۆژێکدا زۆر دەجووڵێت';

  @override
  String alertTargetPrice(String currency) {
    return 'نرخ ($currency)';
  }

  @override
  String get alertMovePercent => 'جووڵەی ڕۆژانە (%)';

  @override
  String get alertAlreadyMet => 'نرخەکە پێشتر ئەم ئاستەی تێپەڕاندووە.';

  @override
  String get alertSave => 'دانانی ئاگادارکەرەوە';

  @override
  String alertCreated(String symbol) {
    return 'ئاگادارکەرەوە بۆ $symbol دانرا.';
  }

  @override
  String get alertsEmpty =>
      'هێشتا هیچ ئاگادارکەرەوەیەکی نرخ نییە. پشکێک بکەرەوە و دەست لە زەنگەکە بدە بۆ دانانی یەکێک.';

  @override
  String get alertsNote =>
      'تا WhatStock کار بکات، ئاگادارکەرەوەکان هەر 5 خولەک جارێک دەپشکنرێن. لەسەر کۆمپیوتەر لە شریتی مێنو یان سینیی سیستەمدا بەردەوام دەبێت؛ لەسەر مۆبایل، بۆ ئێستا ئاگادارکەرەوەکان تەنها کاتێک دێن کە ئەپەکە کراوەیە.';

  @override
  String alertDescAbove(String price) {
    return 'سەرووی $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'خوارووی $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'جووڵەی ڕۆژانە ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'لە $date لە $price چالاک بوو';
  }

  @override
  String get alertRearm => 'دووبارە چالاککردنەوە';

  @override
  String get alertDelete => 'سڕینەوە';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol بەرزبووەوە بۆ سەرووی $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol دابەزی بۆ خوارووی $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol ئەمڕۆ $percent جووڵا';
  }

  @override
  String alertHitBody(String price) {
    return 'نرخی ئێستا: $price';
  }

  @override
  String get alertOpen => 'کردنەوە';

  @override
  String get keepInTrayTitle =>
      'کاتێک پەنجەرەکە داخرا، بەردەوام بێت لە کارکردن';

  @override
  String get keepInTraySubtitle =>
      'WhatStock لە شریتی مێنو یان سینیی سیستەمدا دەمێنێتەوە، بۆیە کورتەڕێ و ئاگادارکەرەوەکانی نرخ بەردەوام کار دەکەن.';

  @override
  String get termsOfUse => 'مەرجەکانی بەکارهێنان';

  @override
  String get privacyPolicy => 'سیاسەتی تایبەتێتی';

  @override
  String get subscriptionLegal =>
      'ئابوونەکان هەموو مانگێک بە خۆکاری نوێ دەبنەوە تا هەڵیان دەوەشێنیتەوە. بە ئابوونەبوون، مەرجەکانی بەکارهێنان و سیاسەتی تایبەتێتی قبووڵ دەکەیت.';

  @override
  String get deleteAccount => 'سڕینەوەی هەژمار';

  @override
  String get deleteAccountTitle => 'هەژمارەکەت بسڕیتەوە؟';

  @override
  String get deleteAccountBody =>
      'هەژمارەکەت و هەموو ئەوەی لەسەر ڕاژەکارەکەمان پاشەکەوت کراوە (ئیمەیڵ، بڕ، بەکارهێنان) بە یەکجاری دەسڕدرێنەوە، و شیکارییە بەکارنەهێنراوەکان لەدەست دەچن. ئابوونەیەک کە لە وێبگەڕدا پارەی دراوە یەکسەر هەڵدەوەشێنرێتەوە؛ ئابوونەی App Store یان Google Play دەبێت لە ڕێکخستنەکانی فرۆشگادا هەڵبوەشێنرێتەوە.';

  @override
  String get deleteLocalData =>
      'داتاکانی سەر ئەم ئامێرەش بسڕەوە (پۆرتفۆلیۆ، ئاگادارکەرەوەکان، دڵخوازەکان، مێژوو، شیکارییە پاشەکەوتکراوەکان)';

  @override
  String get deleteAccountConfirm => 'بە یەکجاری بسڕەوە';

  @override
  String get accountDeleted => 'هەژمارەکەت سڕایەوە.';

  @override
  String get errDeleteAccount =>
      'هەژمارەکە نەسڕایەوە. پەیوەندییەکەت بپشکنە و دووبارە هەوڵ بدەرەوە.';

  @override
  String get aiTrialBriefNote =>
      'شیکارییەکانی تاقیکردنەوە کورتن و بە مۆدێلێکی AIی خێراتر دروست دەکرێن. بە پلانێک بەهێزترین AIی ئێمە، گەڕانی وێبی زیاتر و درێژیی ستاندارد و قووڵ وەردەگریت.';

  @override
  String get billingMonthly => 'مانگانە';

  @override
  String get billingYearly => 'ساڵانە';

  @override
  String get yearlyDiscount => '2 مانگ بێبەرامبەر';

  @override
  String get perYear => '/ ساڵ';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price لە مانگێکدا';
  }

  @override
  String get subscriptionLegalYearly =>
      'ئابوونە ساڵانەکان هەموو ساڵێک بە خۆکاری نوێ دەبنەوە تا هەڵیان دەوەشێنیتەوە. بە ئابوونەبوون، مەرجەکانی بەکارهێنان و سیاسەتی تایبەتێتی قبووڵ دەکەیت.';

  @override
  String get myAnalyses => 'شیکارییەکانم';

  @override
  String get navAlerts => 'ئاگادارییەکان';

  @override
  String get inviteTitle => 'پێشبینینی داخراو';

  @override
  String get inviteBody =>
      'WhatStock بۆ ئێستا تەنها بە بانگهێشت بەردەستە. ئەو کۆدی بانگهێشتەی وەرتگرتووە بنووسە.';

  @override
  String get inviteCodeLabel => 'کۆدی بانگهێشت';

  @override
  String get inviteContinue => 'بەردەوامبە';

  @override
  String get inviteInvalid => 'ئەم کۆدی بانگهێشتە دروست نییە.';

  @override
  String get inviteExpired =>
      'ئەم بانگهێشتە بەسەرچووە. داوای کۆدێکی نوێ لەو کەسە بکە کە بانگهێشتی کردوویت.';

  @override
  String get inviteDeviceLimit =>
      'ئەم کۆدی بانگهێشتە پێشتر لەسەر زۆرترین ژمارەی ڕێپێدراوی ئامێر بەکاردێت.';

  @override
  String get previewConfidential => 'پێشبینینی نهێنی';

  @override
  String get errPreviewDailyLimit =>
      'سنووری شیکاریی ئەمڕۆی ئەم پێشبینینە تەواو بووە. سبەی دووبارە هەوڵ بدەرەوە.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کاتژمێر لەمەوبەر',
      one: '1 کاتژمێر لەمەوبەر',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ڕۆژ لەمەوبەر',
      one: '1 ڕۆژ لەمەوبەر',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'ئەم شیکارییە نوێ بکرێتەوە؟';

  @override
  String staleBody(String age) {
    return '$age دروستکراوە. لەو کاتەوە لەوانەیە نرخ و هەواڵ و ئەنجامەکان گۆڕابن.';
  }

  @override
  String get staleKeep => 'پیشاندانی پێشووتر';

  @override
  String get staleRefresh => 'دروستکردنی نوێ';

  @override
  String seeAll(int count) {
    return 'بینینی هەموو ($count)';
  }

  @override
  String get searchAnalyses => 'لە شیکارییەکانت بگەڕێ';

  @override
  String get deleteAnalysis => 'سڕینەوە';

  @override
  String analysisDeleted(String symbol) {
    return 'شیکاریی $symbol سڕایەوە';
  }

  @override
  String get keyLevelAlertHint =>
      'دەست لە ئاستێک بدە بۆ ئەوەی کاتێک نرخ دەگاتە ئەو ئاستە ئاگادار بکرێیتەوە.';

  @override
  String get shareAnalysisTitle => 'هاوبەشکردنی شیکاری';

  @override
  String get shareAsImage => 'هاوبەشکردن وەک وێنە';

  @override
  String get shareAsText => 'هاوبەشکردن وەک دەق';

  @override
  String get shareCardFooter => 'بە WhatStock دروستکراوە';

  @override
  String get shareCardDisclaimer => 'شیکاریی AI · ئامۆژگاریی وەبەرهێنان نییە';

  @override
  String get referralTitle => 'هاوڕێکانت بانگهێشت بکە';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count شیکاریی زیادە',
      one: '1 شیکاریی زیادە',
    );
    return 'کۆدەکەت هاوبەش بکە. هاوڕێکەت دەستبەجێ $_temp0 وەردەگرێت، و تۆش دوای یەکەم شیکارییەکەی هەمان بڕ وەردەگریت.';
  }

  @override
  String get referralYourCode => 'کۆدەکەت';

  @override
  String referralStats(int invited, int rewarded) {
    return 'بانگهێشتکراو: $invited · خەڵاتکراو: $rewarded';
  }

  @override
  String get referralHaveCode => 'کۆدێکت لە هاوڕێیەکەوە هەیە؟';

  @override
  String get referralRedeem => 'بەکارهێنان';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count شیکاریی زیادە زیادکران. بەخێربێیت!',
      one: '1 شیکاریی زیادە زیادکرا. بەخێربێیت!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'ئەم کۆدە بوونی نییە. بیپشکنە و دووبارە هەوڵ بدەرەوە.';

  @override
  String get referralErrOwn => 'ناتوانیت کۆدی خۆت بەکاربهێنیت.';

  @override
  String get referralErrAlready => 'پێشتر کۆدی هاوڕێیەکت بەکارهێناوە.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count شیکاریی زیادە',
      one: '1 شیکاریی زیادە',
    );
    return 'من بە WhatStock پشکەکان شی دەکەمەوە: وێنەی پشکێک بگرە و AI ڕوونی دەکاتەوە. بە کۆدەکەم $code $_temp0 وەردەگریت.';
  }

  @override
  String get referralCopied => 'کۆد کۆپی کرا';

  @override
  String get onboardTitle1 => 'وێنەی پشکێک بگرە';

  @override
  String get onboardBody1 =>
      'شاشەی ئەپی بڕۆکەر، ڕۆژنامەیەک یان لۆگۆی کۆمپانیایەک بەسە: WhatStock پشکەکە دەناسێتەوە و نرخ و هێڵکاری و ژمارە سەرەکییەکانی پیشان دەدات.';

  @override
  String get onboardTitle2 => 'لە چەند خولەکێکدا تێی بگە';

  @override
  String get onboardBody2 =>
      'شیکاریی AI ڕوونی دەکاتەوە چی پشکەکە دەجووڵێنێت، مەترسییەکان، نرخاندنەکەی و سێ سیناریۆ بۆ ئەوەی نرخ بەرەو کوێ دەچێت – لەگەڵ سەرچاوەکان و بە زمانی خۆت.';

  @override
  String get onboardTitle3 => 'هەمیشە ئاگادار بە';

  @override
  String get onboardBody3 =>
      'دڵخوازەکان، پۆرتفۆلیۆکەت و ئاگادارکەرەوەکانی نرخ ئاگادارت دەکەنەوە. شیکارییەکانت لەسەر ئامێرەکەت دەمێننەوە و هەر کاتێک بتەوێت دەتوانیت دووبارە بیانکەیتەوە.';

  @override
  String get onboardNext => 'دواتر';

  @override
  String get onboardStart => 'دەست پێبکە';

  @override
  String get onboardSkip => 'تێپەڕاندن';

  @override
  String changesTitle(String date) {
    return 'لە شیکاریی پێشووەوە ($date)';
  }

  @override
  String get changesPrice => 'نرخ';

  @override
  String get changesNoMajor => 'پێشبینییەکان بە شێوەیەکی بەرچاو نەگۆڕاون.';

  @override
  String get changesPreviousSummary => 'پوختەی پێشوو';

  @override
  String get telemetryTitle => 'یارمەتیمان بدە بۆ باشترکردنی WhatStock';

  @override
  String get telemetryBody =>
      'ئاماری نەناسراوی بەکارهێنان و ڕاپۆرتی تێکچوون هاوبەش بکە: کام تایبەتمەندییانە بەکاردێن و چی هەڵە بوو. هەرگیز پشکەکانت، شیکارییەکانت یان زانیارییە کەسییەکانت هاوبەش ناکرێن. دەتوانیت هەر کاتێک لە ڕێکخستنەکان ئەمە بگۆڕیت.';

  @override
  String get telemetryAllow => 'ڕێگەدان';

  @override
  String get telemetryDecline => 'نا، سوپاس';

  @override
  String get telemetrySetting => 'ئاماری نەناسراو و ڕاپۆرتی تێکچوون';

  @override
  String get telemetrySettingHint =>
      'چەند جار تایبەتمەندییەکان بەکاردێن و ڕاپۆرتی هەڵەکان، بەبێ زانیاریی کەسی یان ناوەڕۆکی گەڕان و شیکارییەکانت.';

  @override
  String get askButton => 'پرسیار دەربارەی ئەم شیکارییە بکە';

  @override
  String askTitle(String symbol) {
    return 'پرسیارەکان دەربارەی $symbol';
  }

  @override
  String get askIntro =>
      'هەر شتێک دەربارەی شیکارییەکە بپرسە: مەترسییەک واتای چییە، چی دەتوانێت پێشبینییەکان بگۆڕێت، ژمارەیەک چۆن دەرهێنراوە. وەڵامەکان لەسەر بنەمای ئەم شیکارییەن و ئامۆژگاریی وەبەرهێنان نین.';

  @override
  String get askHint => 'پرسیارێک بنووسە…';

  @override
  String get askSend => 'ناردن';

  @override
  String get askThinking => 'بیر دەکاتەوە…';

  @override
  String get askSuggest1 => 'گەورەترین مەترسی چییە؟';

  @override
  String get askSuggest2 => 'چی دەتوانێت پێشبینییەکان بگۆڕێت؟';

  @override
  String get askSuggest3 => 'بە زمانێکی سادە ڕوونی بکەرەوە';

  @override
  String get askMaxReached =>
      'ئەمە دوایین پرسیار بوو بۆ ئەم شیکارییە. بۆ پرسیاری زیاتر شیکارییەکی نوێ دروست بکە.';

  @override
  String get errAskLimit =>
      'گەیشتیتە سنووری پرسیارەکانی ئەمڕۆ. تکایە سبەی دووبارە هەوڵ بدەرەوە.';

  @override
  String get eventTomorrow => 'سبەینێ';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'دوای $days ڕۆژ',
      one: 'دوای 1 ڕۆژ',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'ئەنجامە وەرزییەکان';

  @override
  String get eventBeforeOpen => 'پێش کرانەوەی بازاڕ';

  @override
  String get eventAfterClose => 'دوای داخستنی بازاڕ';

  @override
  String eventEpsEstimate(String value) {
    return 'EPSی چاوەڕوانکراو: $value';
  }

  @override
  String get eventFromAnalysis => 'لە شیکارییەکەتەوە';

  @override
  String get eventsHint =>
      'بەرواری ئەنجامەکانی دڵخوازەکانت و پشکەکانی پۆرتفۆلیۆکەت بۆ 90 ڕۆژی داهاتوو، و ئەو ڕووداوە بەرواردارانەی شیکارییەکانت دیاریان کردوون.';

  @override
  String get eventsEmpty =>
      'لە 90 ڕۆژی داهاتوودا هیچ ڕووداوێکی بەروارداری نییە. دڵخواز یان پشکی پۆرتفۆلیۆ زیاد بکە بۆ ئەوەی بەرواری ئەنجامەکانیان لێرە ببینیت.';
}
