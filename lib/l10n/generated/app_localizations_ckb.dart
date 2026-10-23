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
  String get labelYieldOnCost => 'ڕێژەی قازانج بەپێی تێچوو';

  @override
  String get labelDividendGrowth5y => 'گەشەی قازانجی پشک (5 ساڵ)';

  @override
  String get dividendNone => 'لە 12 مانگی ڕابردوودا هیچ قازانجێکی پشک نەدراوە.';

  @override
  String get dividendOnYourShares => 'لەسەر پشکەکانت، ساڵانە';

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
  String homeDividendsThisYear(String amount) {
    return 'پشکی قازانجی ئەم ساڵ: $amount';
  }

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
  String get eventDividend => 'پشکی قازانجی چاوەڕوانکراو';

  @override
  String get eventDividendEstimate => 'خەمڵێنراو لە پارەدانە تۆمارکراوەکانت';

  @override
  String get eventsHint =>
      'بەرواری ئەنجامەکانی دڵخوازەکانت و پشکەکانی پۆرتفۆلیۆکەت بۆ 90 ڕۆژی داهاتوو، ئەو ڕووداوە بەرواردارانەی شیکارییەکانت دیاریان کردوون، و ئەو پشکی قازانجانەی لە پارەدانە تۆمارکراوەکانت چاوەڕوان دەکرێن.';

  @override
  String get eventsEmpty =>
      'لە 90 ڕۆژی داهاتوودا هیچ ڕووداوێکی بەروارداری نییە. دڵخواز یان پشکی پۆرتفۆلیۆ زیاد بکە بۆ ئەوەی بەرواری ئەنجامەکانیان لێرە ببینیت؛ پشکی قازانجی تۆمارکراو پارەدانی داهاتووی چاوەڕوانکراوی خۆیان نیشان دەدەن.';

  @override
  String get compareTitle => 'بەراوردکردن';

  @override
  String get compareAdd => 'زیادکردنی پشک';

  @override
  String get compareRemove => 'لابردن';

  @override
  String get compareTickerHint => 'هێمای پشک، بۆ نموونە MSFT';

  @override
  String get compareHint =>
      'ژمارە سەرەکییەکان لە تەنیشت یەکتر؛ باشترین بەها لە هەر ڕیزێکدا دیاریکراوە. بڕەکان بە دراوی خودی هەر پشکێکن.';

  @override
  String get compareNoAnalysis => 'هێشتا هیچ شیکارییەک نییە';

  @override
  String get portfolioDividends => 'قازانجی پشکی ساڵانە';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent ڕێژەی قازانج';
  }

  @override
  String get portfolioDividendNote =>
      'قازانجی پشکی ساڵانەی چاوەڕوانکراو لەسەر بنەمای ئەو قازانجانەیە کە لە 12 مانگی ڕابردوودا دراون؛ پارەدانەکانی داهاتوو گەرەنتی نین.';

  @override
  String positionDividend(String amount) {
    return 'قازانجی پشک: ساڵانە $amount';
  }

  @override
  String get chartAvgCost => 'تێکڕای تۆ';

  @override
  String get chartAlertLevel => 'ئاگادارکەرەوە';

  @override
  String get marketsToday => 'بازاڕەکان ئەمڕۆ';

  @override
  String get notesTitle => 'تێبینییەکانم';

  @override
  String get notesHint =>
      'بۆچی کڕیت، چاودێری چی دەکەیت، چی وات لێدەکات بیفرۆشیت؟';

  @override
  String get notesInfo =>
      'تەنها لەسەر ئەم ئامێرە پاشەکەوت دەکرێت. شیکاریی AI تێبینییەکانت لەبەرچاو دەگرێت.';

  @override
  String notesSaved(String date) {
    return 'پاشەکەوتکرا $date';
  }

  @override
  String get peersTitle => 'کۆمپانیا هاوشێوەکان';

  @override
  String get portfolioExport => 'هەناردەکردن وەک CSV';

  @override
  String get portfolioImport => 'هاوردەکردن لە CSV';

  @override
  String get portfolioImportHint =>
      'لە هەر هێڵێکدا یەک کڕین بلکێنە: هێمای پشک، بڕ، نرخ، دراو، بەروار (YYYY-MM-DD). ستوونەکان دەتوانرێت بە کۆما، خاڵبۆر یان تاب جیا بکرێنەوە؛ هێڵی سەردێڕ ئارەزوومەندانەیە.';

  @override
  String get portfolioImportButton => 'هاوردەکردن';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کڕین زیادکران',
      one: '1 کڕین زیادکرا',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count هێڵ پەڕێنران',
      one: '1 هێڵ پەڕێنرا',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'پۆرتفۆلیۆ، دڵخوازەکان، ئاگادارکەرەوەکانی نرخ و تێبینییەکان لەسەر هەموو ئامێرەکانت هاوکات دەکرێن.';

  @override
  String syncLast(String time) {
    return 'دوایین هاوکاتکردن: $time';
  }

  @override
  String get syncNow => 'ئێستا هاوکات بکە';

  @override
  String get syncFailed =>
      'هاوکاتکردن سەرکەوتوو نەبوو. بە شێوەی خۆکار دووبارە هەوڵ دەدرێتەوە.';

  @override
  String get alertEmailTitle => 'ئیمەیڵ کاتێک ئاگادارکەرەوەیەک کارا دەبێت';

  @override
  String get alertEmailOn =>
      'هەر چەند خولەکێک ئاگادارکەرەوەکانت دەپشکنین و ئیمەیڵت بۆ دەنێرین، تەنانەت کاتێک ئەپەکە داخراوە.';

  @override
  String get alertEmailSignIn =>
      'لە ڕێکخستنەکان بە ئیمەیڵەکەت بچۆ ژوورەوە بۆ ئەوەی ئاگادارکەرەوەکان بە ئیمەیڵ وەربگریت، تەنانەت کاتێک ئەپەکە داخراوە.';

  @override
  String get portfolioHistory => 'گۆڕانی بەها';

  @override
  String get portfolioReviewTitle => 'شیکاریی پۆرتفۆلیۆ بە AI';

  @override
  String get portfolioReviewIntro =>
      'AI سەیری هەموو پۆرتفۆلیۆکەت دەکات: چڕبوونەوە، کەوتنە بەر مەترسیی کەرت و دراو، مەترسییە هاوبەشەکانی پشکەکانت، و قازانجی پشک. 1 شیکاری بەکاردەهێنێت.';

  @override
  String get portfolioReviewButton => 'پۆرتفۆلیۆکەم شیکار بکە';

  @override
  String get portfolioReviewAgain => 'دووبارە شیکار بکە';

  @override
  String get portfolioReviewWorking => 'پۆرتفۆلیۆکەت شیکار دەکرێت…';

  @override
  String get digestTitle => 'پوختەی هەفتانە بە ئیمەیڵ';

  @override
  String get digestHint =>
      'هەموو دووشەممەیەک: دڵخوازەکانت و پۆرتفۆلیۆکەت هەفتەی ڕابردوو چۆن جووڵان، و بەروارە داهاتووەکانی ئەنجامەکانیان.';

  @override
  String get benchmarkTitle => 'بەراورد لەگەڵ S&P 500';

  @override
  String get benchmarkTitleIndex => 'بەراورد لەگەڵ ئیندێکسێک';

  @override
  String get benchmarkHintIndex =>
      'وەک ئەوەی هەر کڕینێک لە هەمان ڕۆژدا لە سندوقێک وەبەرهێنرابێت کە شوێن ئیندێکسی هەڵبژێردراو دەکەوێت. قازانجی پشک لەخۆناگرێت؛ گەڕانەوەی ڕابردوو پێشبینی داهاتوو ناکات.';

  @override
  String get benchmarkYours => 'کڕینەکانت';

  @override
  String benchmarkAhead(String points) {
    return '$points خاڵی سەدی باشترە لە ئیندێکسەکە';
  }

  @override
  String benchmarkBehind(String points) {
    return '$points خاڵی سەدی لە دوای ئیندێکسەکەیە';
  }

  @override
  String get portfolioSell => 'فرۆشتن';

  @override
  String portfolioSellTitle(String symbol) {
    return 'فرۆشتنی $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'نرخی فرۆشتنی هەر پشکێک ($currency)';
  }

  @override
  String get portfolioSellDate => 'بەرواری فرۆشتن';

  @override
  String get portfolioSellAll => 'هەموو';

  @override
  String portfolioSellTooMany(String quantity) {
    return '$quantity پشکت هەیە';
  }

  @override
  String get portfolioSold => 'فرۆشرا';

  @override
  String get portfolioRealized => 'بەدەستهاتوو';

  @override
  String get portfolioClosed => 'پۆزیشنە داخراوەکان';

  @override
  String get portfolioClosedNote => 'هەموو پشکەکان فرۆشران';

  @override
  String get portfolioTransactions => 'مامەڵەکان';

  @override
  String get portfolioRealizedByYear => 'قازانجی بەدەستهاتوو بەپێی ساڵ';

  @override
  String get portfolioRealizedHint =>
      'فرۆشتنەکان سەرەتا لەگەڵ کۆنترین کڕینەکانت ڕێکدەخرێن (FIFO)، و بە نرخی ئاڵوگۆڕی ئەمڕۆ دەگۆڕدرێن. بۆ ڕاپۆرتی باج، کەشفی بڕۆکەرەکەت بەکاربهێنە.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'لە دوای ئەم شیکارییەوە ئەنجامی وەرزیی نوێ بڵاوکراوەتەوە ($symbol، $date).';
  }

  @override
  String get newResultsBadge => 'ئەنجامی نوێ';

  @override
  String get portfolioImportBrokers =>
      'هەناردەکانی Revolut، Trading 212، Interactive Brokers، DEGIRO، Schwab، Fidelity و Robinhood یش لەگەڵ فرۆشتن و قازانجی پشک (دوای لێبڕینی باجی سەرچاوە) دەناسرێنەوە؛ پارە دانان پشتگوێ دەخرێت.';

  @override
  String get portfolioImportFile => 'فایلێک هەڵبژێرە';

  @override
  String offlineBanner(String time) {
    return 'پەیوەندی نییە – دوایین داتای پاشەکەوتکراو پیشان دەدرێت ($time).';
  }

  @override
  String get glossMarketCap =>
      'کۆی کۆمپانیاکە لە بازاڕی پشکدا چەندی بەهایە: نرخی پشک × ژمارەی پشکەکان.';

  @override
  String get glossSharesOutstanding =>
      'کۆمپانیاکە چەند پشکی بڵاوکردووەتەوە. ئەگەر زیاد بێت، هەر پشکێک بەشێکی بچووکتری دەبێت؛ کڕینەوەی پشک کەمی دەکاتەوە.';

  @override
  String get glossPeTrailing =>
      'نرخ ÷ قازانجی هەر پشکێک لە 12 مانگی ڕابردوودا: پارەی چەند ساڵ لە قازانجی ئێستا دەدەیت. نزمتر هەرزانترە، بەڵام کۆمپانیا خێرا گەشەکەرەکان زۆرجار P/E ـی بەرزیان هەیە.';

  @override
  String get glossPeForward =>
      'وەک P/E، بەڵام بە قازانجێک کە شیکەرەوەکان بۆ 12 مانگی داهاتوو چاوەڕێی دەکەن. ئەگەر لە P/E ـی ڕابردوو نزمتر بێت، چاوەڕێ دەکرێت قازانج گەشە بکات.';

  @override
  String get glossPb =>
      'نرخ ÷ بەهای دەفتەری (داراییەکان کەم قەرزەکان) بۆ هەر پشکێک. نزیکەی 1 واتە بازاڕ کۆمپانیاکە بەو بەهایە دادەنێت کە لەسەر کاغەز هەیەتی.';

  @override
  String get glossPs =>
      'بەهای بازاڕ ÷ داهاتی ساڵانە. بەسوودە بۆ ئەو کۆمپانیایانەی هێشتا قازانجیان کەمە یان نییە؛ لەناو هەمان پیشەسازیدا بەراوردی بکە.';

  @override
  String get glossEvToFcf =>
      'بەهای کۆمپانیا لەگەڵ قەرز (EV) ÷ ئەو پارە نەختەی لە ساڵێکدا دوای وەبەرهێنان بەرهەمی دەهێنێت. نزمتر واتە بەرامبەر بە نرخەکە پارەی زیاتر وەردەگریت.';

  @override
  String get glossPeg =>
      'P/E ÷ گەشەی قازانجی ساڵانەی چاوەڕوانکراو (%). نزیکەی 1 زۆرجار بە دادپەروەرانە دادەنرێت؛ P/E لە ڕووناکی گەشەدا پیشان دەدات.';

  @override
  String get glossEps =>
      'قازانجی هەر پشکێک لە 12 مانگی ڕابردوودا. بەرزبوونەوەی EPS ساڵ لە دوای ساڵ یەکێکە لە بەهێزترین نیشانەکانی کۆمپانیایەکی تەندروست.';

  @override
  String get glossBeta =>
      'پشکەکە چەند لەگەڵ بازاڕدا دەجووڵێت: 1 = وەک بازاڕ، 1.5 = نزیکەی 50% لەرزینی گەورەتر، خوار 1 = ئارامتر.';

  @override
  String get glossRevenueTtm =>
      'کۆی فرۆشتنی 12 مانگی ڕابردوو، پێش هەر تێچوونێک.';

  @override
  String get glossNetIncomeTtm =>
      'ئەو قازانجەی دوای هەموو تێچوون و سوود و باجەکان لە 12 مانگی ڕابردوودا دەمێنێتەوە.';

  @override
  String get glossGrossMargin =>
      'ئەو بەشەی داهات کە دوای تێچووی ڕاستەوخۆی بەرهەمەکان دەمێنێتەوە. ڕێژەی بەرز زۆرجار واتە توانای دیاریکردنی نرخ.';

  @override
  String get glossOperatingMargin =>
      'ئەو بەشەی داهات کە دوای تێچووی بەڕێوەبردنی کار (مووچە، کرێ، بازاڕکردن) و پێش سوود و باج دەمێنێتەوە.';

  @override
  String get glossNetMargin =>
      'ئەو بەشەی داهات کە دەبێتە قازانجی کۆتایی. 20% واتە لە هەر 100ی فرۆشتن 20 قازانجە.';

  @override
  String get glossRoe =>
      'قازانج بەرامبەر مافی خاوەندارێتی: قازانجی ساڵانە ÷ سەرمایەی خاوەنەکان. پیشان دەدات بەڕێوەبەرایەتی چەند باش پارەی پشکدارەکان بەکاردەهێنێت؛ سەروو نزیکەی 15% بەهێزە.';

  @override
  String get glossRoa =>
      'قازانج بەرامبەر داراییەکان: قازانجی ساڵانە ÷ هەموو ئەو شتانەی کۆمپانیاکە هەیەتی. لەناو هەمان پیشەسازیدا بەراوردی بکە.';

  @override
  String get glossDebtToEquity =>
      'قەرزەکان ÷ سەرمایەی خاوەنەکان. بەرزتر واتە پارەی قەرزکراوی زیاتر: مەترسی زیاتر کاتێک سوود بەرز دەبێتەوە یان کار خاو دەبێتەوە.';

  @override
  String get glossCurrentRatio =>
      'داراییە کورتخایەنەکان ÷ ئەو قەرزانەی لە ماوەی ساڵێکدا دەبێت بدرێنەوە. سەروو 1 واتە کۆمپانیاکە دەتوانێت قەرزە نزیکەکانی بداتەوە.';

  @override
  String get glossRevenueGrowth =>
      'داهات چەند گەشەی کردووە بە بەراورد بە ساڵێک پێشتر.';

  @override
  String get glossEpsGrowth =>
      'قازانجی هەر پشکێک چەند گەشەی کردووە بە بەراورد بە ساڵێک پێشتر.';

  @override
  String get glossDividendYield =>
      'قازانجی پشکی ساڵانە ÷ نرخی پشک: ئەو داهاتە نەختەی ساڵانە وەریدەگریت، وەک ڕێژەیەکی سەدی لەوەی دەیدەیت.';

  @override
  String get glossDividendPerShare =>
      'ئەو قازانجی پشکەی لە ساڵی ڕابردوودا بۆ یەک پشک دراوە.';

  @override
  String get glossPayoutRatio =>
      'ئەو بەشەی قازانج کە وەک قازانجی پشک دابەش دەکرێت. سەروو 100% کۆمپانیاکە زیاتر لە داهاتی خۆی دەدات، کە بە دەگمەن بەردەوام دەبێت.';

  @override
  String get portfolioBeta => 'بێتای پۆرتفۆلیۆ';

  @override
  String get glossPortfolioBeta =>
      'بێتای پشکەکانت، کێشکراو بەپێی بەهاکەیان: نزیکەی چەند لەسەدا پشکەکانت دەجووڵێن کاتێک بازاڕ 1% دەجووڵێت. سەرووی 1 زیاتر لە بازاڕ دەلەرزن، خوار 1 کەمتر. پارەی کاش لەخۆ ناگیرێت.';

  @override
  String get portfolioTop3 => '3 گەورەترین پۆزیشن';

  @override
  String get glossPortfolioTop3 =>
      'چەند لە بەهای پشکەکانت لە سێ گەورەترین پۆزیشنەکەتدایە. تا بەرزتر بێت، هەواڵی خراپی تەنها یەک کۆمپانیا زیاتر دەتوانێت زیان بە هەموو پۆرتفۆلیۆکە بگەیەنێت.';

  @override
  String get glossDividendGrowth5y =>
      'قازانجی هەر پشکێک لە پێنج ساڵی ڕابردوودا بە تێکڕا ساڵانە چەندە گەشەی کردووە. گەشەی جێگیر بە زۆری ئەوە دەگەیەنێت کە کۆمپانیاکە متمانەی بە ڕەوتی پارەی نەختی خۆی هەیە؛ کەمکردنەوەی بە زۆری نیشانەی ئاگادارکردنەوەیە.';

  @override
  String get glossYieldOnCost =>
      'قازانجی پشکی وەرگیراو لە ١٢ مانگی ڕابردوو دابەش بەسەر ئەوەی داوتە بۆ ئەو پشکانەی هێشتا هەتن. جیاواز لە ڕێژەی قازانجی پشک، ئەمە بە نرخی کڕینی خۆت دەپێورێت، نەک بە نرخی ئەمڕۆ.';

  @override
  String get glossTitle => 'مانای چییە؟';

  @override
  String get watchNewsTitle => 'هەواڵی پشکەکانت';

  @override
  String get undo => 'گەڕاندنەوە';

  @override
  String get watchSort => 'ڕیزکردن';

  @override
  String get watchSortOwn => 'ڕیزبەندی من';

  @override
  String get watchSortGainers => 'زۆرترین بەرزبوونەوە سەرەتا';

  @override
  String get watchSortLosers => 'زۆرترین دابەزین سەرەتا';

  @override
  String get watchSortName => 'بەپێی هێما (A–Z)';

  @override
  String get watchHint =>
      'دەسکەکە ڕابکێشە بۆ ڕیزکردنەوە، بۆ لای چەپ ڕایبماڵە بۆ لابردن. هێڵەکە 30 ڕۆژی ڕابردوو نیشان دەدات.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: شیکارییەکەت ئامادەیە.';
  }

  @override
  String alertFromCost(String price) {
    return 'بەپێی تێکڕای نرخی کڕینەکەت ($price):';
  }

  @override
  String get briefTitle => 'ئەمڕۆ لەگەڵ پشکەکانت';

  @override
  String get briefButton => 'کورتەی ئەمڕۆ';

  @override
  String get briefHint =>
      'کورتەیەکی AI لەسەر ئەوەی پۆرتفۆلیۆ و دڵخوازەکانت ئەمڕۆ چۆن جوڵان و نوێترین هەواڵەکان چی دەڵێن. شیکاری بەکارناهێنێت.';

  @override
  String get briefRefresh => 'نوێکردنەوە';

  @override
  String get sectionEarnings => 'قازانج';

  @override
  String earningsNext(String date) {
    return 'ڕاپۆرتی داهاتوو: $date';
  }

  @override
  String get earningsExpected => 'EPSی چاوەڕوانکراو';

  @override
  String get earningsReported => 'EPSی ڕاگەیەنراو';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'یەکسان یان سەرووی EPSی چاوەڕوانکراو لە $beats لە دوایین $total وەرزدا',
      one: 'یەکسان یان سەرووی EPSی چاوەڕوانکراو لە $beats لە 1 وەرزدا',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol سبەینێ ئەنجامە وەرزییەکان ڕادەگەیەنێت';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol ئەمڕۆ ئەنجامە وەرزییەکان ڕادەگەیەنێت';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return 'پشکی قازانجی $symbol ئەمڕۆ چاوەڕوان دەکرێت';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'نزیکەی $amount. کاتێک گەیشت، لە پۆرتفۆلیۆکەت تۆماری بکە.';
  }

  @override
  String get dividendRemindersTitle => 'بیرخەرەوەی پشکی قازانج';

  @override
  String get dividendRemindersSubtitle =>
      'ئاگادارکردنەوەیەک لەو ڕۆژەی بەپێی ڕیتمی پارەدانە تۆمارکراوەکانت پشکی قازانج چاوەڕوان دەکرێت، بۆ ئەوەی تۆماری بکەیت';

  @override
  String get earningsRemindersTitle => 'بیرخەرەوەی ئەنجامەکان';

  @override
  String get earningsRemindersSubtitle =>
      'ئاگادارکردنەوەیەک ڕۆژێک پێش ئەوەی پشکەکانی دڵخوازەکانت یان پۆرتفۆلیۆکەت ئەنجامە وەرزییەکانیان ڕابگەیەنن';

  @override
  String addAllToFavorites(int count) {
    return 'زیادکردنی هەموو بۆ دڵخوازەکان ($count)';
  }

  @override
  String get portfolioImportPhoto => 'هاوردەکردن لە وێنەی شاشە';

  @override
  String get holdingsReading => 'پۆزیشنەکانت دەخوێندرێنەوە…';

  @override
  String get holdingsReviewTitle => 'پۆزیشنە دۆزراوەکان';

  @override
  String get holdingsReviewHint =>
      'پێش زیادکردنیان ژمارەکان بپشکنە. نرخەکە تێکڕای نرخی کڕینی هەر پشکێکە، نەک نرخی ئەمڕۆ.';

  @override
  String get holdingsNoPrice => 'تێکڕای نرخی کڕین لە وێنەکەدا نییە';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'زیادکردنی $count پۆزیشن',
      one: 'زیادکردنی 1 پۆزیشن',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'هیچ پۆزیشنێکی پشک لەم وێنەیەدا نەدۆزرایەوە. وێنەی شاشەی پەڕەی پۆزیشنەکانی بڕۆکەرەکەت تاقی بکەرەوە.';

  @override
  String get week52Range => 'مەودای 52 هەفتە';

  @override
  String week52BelowHigh(String percent) {
    return '$percent لە خوار بەرزترینی 52 هەفتە';
  }

  @override
  String get week52AtHigh => 'لە بەرزترینی 52 هەفتەدا';

  @override
  String get alertKindTrailing => 'دادەبەزێت لە لووتکە';

  @override
  String get alertTrailingPercent => 'دابەزین لە لووتکە (%)';

  @override
  String get alertTrailingHint =>
      'بەدوای نرخدا بەرەو سەرەوە دەڕوات: ئاگادارت دەکاتەوە کاتێک نرخ ئەوەندە لە بەرزترین ئاستی لە کاتی دانانییەوە دادەبەزێت.';

  @override
  String alertDescTrailing(String percent) {
    return 'دابەزینی $percent لە لووتکە';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'لووتکە تا ئێستا: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol $percent لە لووتکە دابەزی';
  }

  @override
  String get sectionInsiders => 'مامەڵەی ناوخۆییەکان';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کڕین',
      one: '1 کڕین',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count فرۆشتن',
      one: '1 فرۆشتن',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'پوختە: $shares پشک';
  }

  @override
  String get insiderBuy => 'کڕدرا';

  @override
  String get insiderSell => 'فرۆشرا';

  @override
  String get insiderHint =>
      'کڕین و فرۆشتنی بەڕێوەبەران و ئەندامانی ئەنجومەن لە بازاڕی کراوەدا لە 90 ڕۆژی ڕابردوودا (SEC Form 4). جێبەجێکردنی ئۆپشن و خەڵاتی پشک ناژمێردرێن.';

  @override
  String get insiderNone =>
      'لە 90 ڕۆژی ڕابردوودا هیچ کڕین یان فرۆشتنێکی ناوخۆیی لە بازاڕی کراوەدا نەبووە.';

  @override
  String get analystTrend => 'بیروڕاکان چۆن مانگ بە مانگ گۆڕان';

  @override
  String get watchListAll => 'هەموو';

  @override
  String get watchListNew => 'لیستی نوێ';

  @override
  String get watchListName => 'ناوی لیست';

  @override
  String get watchListRename => 'گۆڕینی ناوی لیست';

  @override
  String get watchListDelete => 'سڕینەوەی لیست';

  @override
  String get watchListAddTo => 'زیادکردن بۆ لیستێک';

  @override
  String get watchListEmpty =>
      'هێشتا هیچ پشکێک لەم لیستەدا نییە. بۆ زیادکردن، دوگمەی لیست لە تەنیشت پشکەکە دابگرە.';

  @override
  String get portfolioAskTitle => 'پرسیارەکان دەربارەی پۆرتفۆلیۆکەت';

  @override
  String get rangeYtd => 'ئەمساڵ';

  @override
  String get backupTitle => 'یەدەگ';

  @override
  String get backupSave => 'پاشەکەوتکردنی یەدەگ';

  @override
  String get backupSaveHint =>
      'دڵخوازەکان، لیستەکان، پۆرتفۆلیۆ، ئاگادارییەکان و تێبینییەکانت لە یەک فایلدا.';

  @override
  String get backupRestore => 'گەڕاندنەوە لە یەدەگ';

  @override
  String get backupRestoreHint =>
      'ئەوەی لە فایلەکەدایە زیاد دەکات؛ هیچ شتێک لەوەی ئێستا هەتە ناسڕێتەوە.';

  @override
  String get backupRestored => 'یەدەگەکە گەڕێندرایەوە.';

  @override
  String get backupInvalid => 'ئەم فایلە یەدەگی WhatStock نییە.';

  @override
  String get allocationPositions => 'پشکەکان';

  @override
  String get allocationSectors => 'کەرتەکان';

  @override
  String get allocationCurrencies => 'دراوەکان';

  @override
  String get allocationAccounts => 'هەژمارەکان';

  @override
  String get compareReturn1y => 'قازانجی 1 ساڵ';

  @override
  String get compareFromHigh => 'دووری لە بەرزترینی 52 هەفتە';

  @override
  String get briefAutoTitle => 'پوختەی ڕۆژانە هەموو بەیانییەک';

  @override
  String get briefAutoSubtitle =>
      '«ئەمڕۆ لەگەڵ پشکەکانت» دوای کاتژمێر 7:00ی بەیانی خۆکارانە ئامادە دەکرێت تا ئەپەکە کار دەکات؛ لەسەر کۆمپیوتەر ئاگادارکردنەوەیەک پێت دەڵێت. لە سنووری پرسیارە ڕۆژانەکانت دەبرێت، شیکاری بەکارناهێنێت.';

  @override
  String get targetsButton => 'دابەشبوونی ئامانج';

  @override
  String get targetsTitle => 'دابەشبوونی ئامانج';

  @override
  String get targetsHint =>
      'دیاری بکە هەر پشکێک چەند بەشی پۆرتفۆلیۆکە بێت. ئەگەر ئامانجت نییە خانەکە بە بەتاڵی بهێڵەرەوە. پاشان ئەپەکە پیشانت دەدات چی بکڕیت یان بفرۆشیت بۆ گەیشتن بەوێ.';

  @override
  String targetsSum(String percent) {
    return 'کۆی گشتی: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'کڕین ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'فرۆشتن ≈ $amount';
  }

  @override
  String get rebalanceOk => 'لەسەر ئامانج';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol لە EPSی چاوەڕوانکراو تێپەڕی';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol نەگەیشتە EPSی چاوەڕوانکراو';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'EPSی ڕاگەیەنراو $actual، چاوەڕوانکراو $estimate';
  }

  @override
  String get newsExplain => 'ئەمە واتای چییە؟';

  @override
  String get watchAlertAll => 'ئاگادارکردنەوە بۆ جووڵەی گەورەی ڕۆژانە';

  @override
  String get watchAlertAllHint =>
      'ئاگادارکردنەوەی نرخ بۆ هەموو پشکێکی ئەم لیستە: کاتێک لە ڕۆژێکدا ئەوەندە بەرز یان نزم دەبێتەوە ئاگادارت دەکاتەوە. ئەو پشکانەی پێشتر یەکێکیان هەیە، هەر ئەوە دەمێنێتەوە.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ئاگادارکردنەوە دانران',
      one: '1 ئاگادارکردنەوە دانرا',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized =>
      'هەناردەکردنی قازانجی بەدەستهاتوو (CSV)';

  @override
  String get portfolioAnnualReturn => 'قازانجی ساڵانە';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / ساڵ';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'قازانجی ساڵانەی کێشکراو بە پارە (XIRR): ئەوە لەبەرچاو دەگرێت کە کەی کڕیوتە و فرۆشتووتە، بۆیە ئەو پارەیەی دواتر زیاد دەکرێت تێکی نادات. کاتێک نیشان دەدرێت کە لانیکەم یەک ساڵ بەسەر یەکەم کڕینتدا تێپەڕیبێت؛ قازانجی پشک تێیدا نییە.';

  @override
  String get eventsAddToCalendar => 'زیادکردن بۆ ڕۆژژمێر (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'ئاگاداری پۆرتفۆلیۆ';

  @override
  String get portfolioMoveAlertSubtitle =>
      'ئاگادارکردنەوەیەک کاتێک هەموو پۆرتفۆلیۆکەت لە ڕۆژێکدا ئەوەندە دەجووڵێت.';

  @override
  String get portfolioMoveAlertOff => 'کوژاوە';

  @override
  String portfolioMoveUp(String percent) {
    return 'پۆرتفۆلیۆکەت ئەمڕۆ $percent بەرز بووەوە';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'پۆرتفۆلیۆکەت ئەمڕۆ $percent دابەزی';
  }

  @override
  String get whatIfTitle => 'ئەگەر وەبەرهێنانت کردبا؟';

  @override
  String get whatIfAmount => 'بڕ';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount کە $period لەمەوبەر وەبەرهێنرابا، ئەمڕۆ بەهاکەی دەبوو';
  }

  @override
  String get whatIfNote =>
      'تەنها لەسەر بنەمای نرخی پشکە: قازانجی پشک، کرێ و باج لەخۆ ناگرێت. داهاتی ڕابردوو پێشبینی داهاتی داهاتوو ناکات.';

  @override
  String get watchShare => 'هاوبەشکردنی لیستەکە';

  @override
  String get watchImport => 'زیادکردنی هێمای پشکەکان';

  @override
  String get watchImportHint =>
      'هێمای پشکەکان بلکێنە کە بە کۆما، بۆشایی یان هێڵی نوێ جیا کراونەتەوە – بۆ نموونە لیستێک کە کەسێک لەگەڵت هاوبەشی کردووە.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count پشک زیادکران',
      one: '1 پشک زیادکرا',
      zero: 'هیچ پشکێکی نوێ نییە',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'گەورەترین سەرەتا';

  @override
  String get positionsSortGain => 'زۆرترین قازانجی گشتی سەرەتا';

  @override
  String get positionsSortToday => 'باشترینی ئەمڕۆ سەرەتا';

  @override
  String get chartMyBuys => 'کڕینەکانت';

  @override
  String get chartMySells => 'فرۆشتنەکانت';

  @override
  String get shortcutsTitle => 'کورتەڕێکانی تەختەکلیل';

  @override
  String usMarketOpen(String time) {
    return 'بازاڕی ئەمریکا کراوەیە · دوای $time دادەخرێت';
  }

  @override
  String usMarketClosed(String time) {
    return 'بازاڕی ئەمریکا داخراوە · دوای $time دەکرێتەوە';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes خولەک';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours کاتژمێر $minutes خولەک';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days ڕۆژ $hours کاتژمێر';
  }

  @override
  String get dividendGoalSet => 'دانانی ئامانجی مانگانەی پشکی قازانج';

  @override
  String get dividendGoalTitle => 'ئامانجی مانگانەی پشکی قازانج';

  @override
  String get dividendGoalAmount => 'پشکی قازانج لە مانگێکدا';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'بە ڕێژەی ئێستا نزیکەی $amount لە مانگێکدا · $percent · ئامانج: $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'بە ڕێژەی ئێستا نزیکەی $amount لە مانگێکدا · گەیشتیت بە ئامانج: $goal';
  }

  @override
  String get portfolioAccount => 'هەژمار';

  @override
  String get portfolioAccountHint => 'بۆ نموونە TBSZ 2026 (ئارەزوومەندانە)';

  @override
  String get portfolioAccountAdd => 'هەژمارێک دیاری بکە';

  @override
  String get portfolioAccountsAll => 'هەموو هەژمارەکان';

  @override
  String get portfolioAccountNote =>
      'تەنها مامەڵەکان و پشکی قازانجی ئەم هەژمارە. پارەی کاش، ئامانجەکان و شیکاریی AI لە «هەموو هەژمارەکان» پیشان دەدرێن.';

  @override
  String get portfolioNoAccount => 'بێ هەژمار';

  @override
  String portfolioFee(String currency) {
    return 'کۆمیسیۆن ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'کۆمیسیۆنێک زیاد بکە';

  @override
  String portfolioFeeRow(String amount) {
    return 'کۆمیسیۆن: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'پوختەی ساڵانە';

  @override
  String get portfolioProceeds => 'داهاتی فرۆشتن';

  @override
  String get portfolioCostBasis => 'تێچووی کڕین';

  @override
  String get portfolioFeesPaid => 'کۆمیسیۆنی دراو';

  @override
  String get portfolioAnnualSummaryNote =>
      'بڕەکان بە دراوی ڕەسەنن و نەگۆڕدراون. داهاتی فرۆشتن دوای لابردنی کۆمیسیۆنی فرۆشتنە؛ تێچووی کڕین کۆمیسیۆنی کڕین لەخۆدەگرێت (FIFO). بۆ ڕاپۆرتی باج، بە ئەو نرخی ئاڵوگۆڕەی دەسەڵاتی باجەکەت داوای دەکات بیانگۆڕە.';

  @override
  String get portfolioShare => 'هاوبەشکردنی ئەدا';

  @override
  String get portfolioShareHeading => 'پۆرتفۆلیۆکەم';

  @override
  String get portfolioTopHoldings => 'گەورەترین پۆزیشنەکان';

  @override
  String get portfolioShareNote =>
      'تەنها ڕێژەی سەدی هاوبەش دەکرێت، بڕی پارە نا.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count پۆزیشن',
      one: '1 پۆزیشن',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'ئامۆژگاریی وەبەرهێنان نییە';

  @override
  String get contributionButton => 'وەبەرهێنانی پارەی نوێ';

  @override
  String contributionAmount(String currency) {
    return 'بڕی وەبەرهێنان ($currency)';
  }

  @override
  String get contributionHint =>
      'تەنها کڕین، بێ فرۆشتن: ئەو پۆزیشنانەی زیاتر لە هەمووان لە ئامانجەکەیان دواکەوتوون، یەکەم پارەکە وەردەگرن.';

  @override
  String contributionShares(String shares) {
    return '≈ $shares پشک';
  }

  @override
  String contributionMissing(String symbols) {
    return 'نرخی ئێستا بۆ $symbols نییە: لە دابەشکردنەکە دەرکراون.';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'ئەگەر قازانجی ساڵانە وەک خۆی بمێنێتەوە ($rate)، نزیکەی ساڵی $year دەگەیت بە ئامانج.';
  }

  @override
  String get portfolioMaxDrawdown => 'گەورەترین دابەزین';

  @override
  String get glossMaxDrawdown =>
      'گەورەترین دابەزینی بەهای پشکەکانت لە لووتکەیەکی پێشووەوە بۆ نزمترین خاڵێکی دواتر، بەبێ کاریگەری کڕین و فرۆشتنەکانت (کێشکراو بە کات). نیشان دەدات پۆرتفۆلیۆکەت تا ئێستا چەند دابەزینێکی قووڵی بینیوە.';

  @override
  String watchSince(String date) {
    return 'لەو کاتەوەی زیادت کرد بۆ دڵخوازەکان ($date)';
  }

  @override
  String get portfolioSampleTry => 'تاقیکردنەوە بە پۆرتفۆلیۆی نموونە';

  @override
  String get portfolioSampleBanner =>
      'ئەمە پۆرتفۆلیۆیەکی نموونەیە. کڕینەکانی خۆت لە تەنیشتیەوە زیاد بکە، یان لایببە.';

  @override
  String get portfolioSampleRemove => 'لابردنی نموونە';

  @override
  String get portfolioStopsAll =>
      'ئاگادارکردنەوەی دابەزین لە لووتکە بۆ هەموو پۆزیشنەکان';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ئاگادارکردنەوە دانران',
      one: '1 ئاگادارکردنەوە دانرا',
      zero: 'هەموو پۆزیشنەکان پێشتر ئەم ئاگادارکردنەوەیەیان هەیە',
    );
    return '$_temp0';
  }

  @override
  String portfolioSinceSale(String percent) {
    return '$percent لەو کاتەوەی فرۆشتت';
  }

  @override
  String get lotPreviewRealized => 'بەدەستهاتوو لەم فرۆشتنە (FIFO):';

  @override
  String lotPreviewAverage(String after, String before) {
    return 'تێکڕای تێچووی نوێ: $after (ئێستا $before)';
  }

  @override
  String get portfolioYtdReturn => 'قازانجی ئەمساڵ';

  @override
  String get glossTwrYtd =>
      'قازانجی کێشکراو بە کات لە سەرەتای ساڵەوە (یان لە یەکەم کڕینتەوە، ئەگەر ئەمساڵ بووبێت): هەر ڕۆژێک گۆڕانی ئەو پشکانە دەژمێرێت کە ئەو ڕۆژە هەتبوون، و ڕۆژەکان بە زنجیرە بە یەکەوە دەبەسترێن – ئەو پارەیەی دایدەنێیت یان دەیکێشیتەوە قازانج نییە، بۆیە دەتوانرێت لەگەڵ ئیندێکسێک بەراورد بکرێت. لە خوارەوە: ئیندێکسی هەڵبژێردراو لە هەمان ماوەدا.';

  @override
  String alertDistance(String price, String percent) {
    return 'ئێستا $price · $percent ماوە';
  }

  @override
  String get watchSortSince => 'بەپێی گۆڕان لە کاتی زیادکردنەوە';

  @override
  String get portfolioTodayMovers => 'زۆرترین جووڵە ئەمڕۆ:';

  @override
  String get lotNoteAdd => 'تێبینییەک زیاد بکە';

  @override
  String get lotNoteBuyHint =>
      'بۆچی دەیکڕیت؟ لەگەڵ بەروارەکە دەچێتە ناو تێبینییەکانی پشکەکە.';

  @override
  String get lotNoteSellHint =>
      'بۆچی دەیفرۆشیت؟ لەگەڵ بەروارەکە دەچێتە ناو تێبینییەکانی پشکەکە.';

  @override
  String get lotNoteBought => 'کڕدرا';

  @override
  String get positionHeld => 'ماوەی هەڵگرتن';

  @override
  String durationMonths(int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months مانگ',
      one: '$months مانگ',
    );
    return '$_temp0';
  }

  @override
  String durationDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days ڕۆژ',
      one: '$days ڕۆژ',
    );
    return '$_temp0';
  }

  @override
  String positionHeldSince(String date) {
    return 'لە $dateەوە';
  }

  @override
  String get portfolioGoalSet => 'دانانی ئامانج';

  @override
  String get portfolioGoalTitle => 'ئامانجی پۆرتفۆلیۆ';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · ئامانج: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'گەیشتیت بە ئامانج: $amount';
  }

  @override
  String get portfolioGoalRemove => 'لابردنی ئامانج';

  @override
  String get alertEdit => 'دەستکاریکردنی ئاگادارکەرەوە';

  @override
  String get positionOpenLots => 'هێشتا لات ماوە (کۆنترین سەرەتا)';

  @override
  String get lotRemoved => 'مامەڵەکە سڕایەوە';

  @override
  String get alertDeleted => 'ئاگادارکردنەوە سڕایەوە';

  @override
  String get alertsClearTriggered => 'سڕینەوەی ئاگادارکردنەوە چالاکبووەکان';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ئاگادارکردنەوە سڕانەوە',
      one: '1 ئاگادارکردنەوە سڕایەوە',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'شاشەی سەرەکی';

  @override
  String get allocationCountries => 'وڵاتەکان';

  @override
  String get newsExplainNoteResearch =>
      'ڕوونکردنەوەی AI: ڕاستییەکان لە وێب دەگەڕێت، وتارەکە دەکاتەوە و هەڵدەسەنگێنێت سەرچاوەکە چەندە متمانەپێکراوە. ئامۆژگاریی وەبەرهێنان نییە. لە سنووری پرسیارە ڕۆژانەکانت دەبرێت، شیکاری بەکارناهێنێت.';

  @override
  String get sourceOfficial => 'فەرمی';

  @override
  String get sourcePressRelease => 'ڕاگەیەندراو';

  @override
  String get sourceMajorNews => 'میدیای گەورە';

  @override
  String get sourceOpinion => 'ڕا';

  @override
  String get earningsSummaryButton => 'لە دوایین ڕاپۆرتدا چی هەبوو؟';

  @override
  String get earningsSummaryNote =>
      'پوختەی AI بۆ ڕاگەیاندنی ئەنجامەکانی کۆمپانیاکە و ئەو هەواڵانەی ڕۆژنامەگەری کە لە وێبدا دەیاندۆزێتەوە. ئامۆژگاریی وەبەرهێنان نییە. لە سنووری پرسیارە ڕۆژانەکانت دەبرێت، شیکاری بەکارناهێنێت.';

  @override
  String get compareLastSurprise => 'EPSی چارەکی کۆتایی بەرامبەر چاوەڕوانکراو';

  @override
  String get compareNextReport => 'ڕاپۆرتی داهاتوو';

  @override
  String get resolvingDescription => 'ئەو پشکەی مەبەستتە دیاری دەکرێت…';

  @override
  String get instrumentTitle => 'دەربارەی ئەم ئامرازە';

  @override
  String get instrumentHint =>
      'هیچ پرۆفایلێکی کۆمپانیا بۆ ئەم هێمایە نییە – لەوانەیە ETF، سندوق یان پسوولەی سپاردن بێت. لە AI بپرسە ئەمە چییە، چی لەخۆدەگرێت و تێچووی چەندە.';

  @override
  String get instrumentAsk => 'ئەمە چییە؟';

  @override
  String get instrumentNote =>
      'ڕوونکردنەوەی AI لە پەڕەی سندوقی دەرکەر و ئەو ماڵپەڕە داراییانەی لە وێبدا دەیاندۆزێتەوە. ئامۆژگاریی وەبەرهێنان نییە. لە سنووری پرسیارە ڕۆژانەکانت دەبرێت، شیکاری بەکارناهێنێت.';

  @override
  String suggestAskAi(String query) {
    return 'لە AI بپرسە: «$query»';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'نرخی ئێستا بۆ $symbols نییە.';
  }

  @override
  String get eventsRecentResults => 'ئەنجامەکانی تازە ڕاگەیەنراو';

  @override
  String get saveToNotes => 'پاشەکەوتکردن لە تێبینییەکانم';

  @override
  String get savedToNotes => 'لە تێبینییەکانت پاشەکەوت کرا';

  @override
  String get portfolioDividendsReceived => 'پشکی قازانجی وەرگیراو';

  @override
  String get portfolioDividendsThisYear => 'ئەم ساڵ';

  @override
  String get portfolioDividendsAllTime => 'هەموو کات';

  @override
  String get portfolioAddDividend => 'پشکی قازانج زیاد بکە';

  @override
  String portfolioDividendAmount(String currency) {
    return 'بڕی وەرگیراو ($currency)';
  }

  @override
  String get portfolioDividendDate => 'ڕێکەوتی پارەدان';

  @override
  String get portfolioDividendsEmpty =>
      'هێشتا هیچ پشکی قازانج تۆمار نەکراوە. بە دەست زیادیان بکە، یان هەناردەی بڕۆکەرەکەت هاوردە بکە – ڕیزەکانی پشکی قازانجیش وەردەگیرێن.';

  @override
  String get portfolioSplit => 'دابەشکردنی پشک';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'دابەشکردنی پشک: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'کڕین و فرۆشتنەکانی پێش بەرواری دابەشکردن ڕێک دەخرێن: ژمارەی پشکەکان لێک دەدرێت و نرخی هەر پشکێک دابەش دەکرێت، بۆیە تێچوون وەک خۆی دەمێنێتەوە.';

  @override
  String get portfolioSplitRatio => 'ڕێژە (نوێ : کۆن)';

  @override
  String get portfolioSplitRatioError =>
      'ڕێژەیەک بنووسە وەک 10:1، یان 1:10 بۆ دابەشکردنی پێچەوانە.';

  @override
  String get portfolioSplitDate => 'بەرواری دابەشکردن';

  @override
  String portfolioSplitRow(String ratio) {
    return 'دابەشکردنی پشک $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'دابەشکردنی پشک سڕایەوە';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count دابەشکردنی پشک زیادکرا',
      one: '1 دابەشکردنی پشک زیادکرا',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count پشکی قازانج زیادکرا',
      one: '1 پشکی قازانج زیادکرا',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'هەناردەکردنی پشکی قازانج (CSV)';

  @override
  String get portfolioDividendDeleted => 'پشکی قازانج سڕایەوە';

  @override
  String get portfolioDividendsHint =>
      'بڕەکان وەک ئەوەی گەیشتوونە هەژمارەکەت، بە دراوی پارەدان؛ کۆکان بە نرخی ئەمڕۆ دەگۆڕدرێن. بۆ ڕاپۆرتی باجەکەت، بەیاننامەی بڕۆکەرەکەت بەکاربهێنە.';

  @override
  String get awayTitle => 'لە کاتی نەبوونت';

  @override
  String awaySince(String when) {
    return 'لە $whenەوە';
  }

  @override
  String get awayQuiet => 'هیچ شتێک زۆر نەگۆڕا.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ئاگادارکردنەوە چالاک بوون',
      one: '1 ئاگادارکردنەوە چالاک بوو',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'ئەنجامەکانیان ڕاگەیاند: $symbols';
  }

  @override
  String get moveWhyButton => 'بۆچی ئەمڕۆ دەجوڵێت؟';

  @override
  String moveWhyTitle(String percent) {
    return '$percent ئەمڕۆ';
  }

  @override
  String get moveWhyNote =>
      'ڕوونکردنەوەی AI لە هەواڵەکانی ئەمڕۆ کە لە وێب دۆزراونەتەوە؛ هۆکاری ڕاستەقینە لەوانەیە نەزانراو یان جیاواز بێت. ئامۆژگاری وەبەرهێنان نییە. بەشی ڕۆژانەی پرسیارەکانت بەکاردەهێنێت، نەک شیکاری.';

  @override
  String get sectionTechnical => 'وێنەی تەکنیکی';

  @override
  String get labelSma50 => 'تێکڕای ٥٠ ڕۆژ';

  @override
  String get labelSma200 => 'تێکڕای ٢٠٠ ڕۆژ';

  @override
  String get labelRsi => 'RSI (١٤ ڕۆژ)';

  @override
  String get labelVolatility30 => 'جووڵەی نرخ (٣٠ ڕۆژ)';

  @override
  String techAbove(String percent) {
    return '$percent سەرووتر';
  }

  @override
  String techBelow(String percent) {
    return '$percent خوارتر';
  }

  @override
  String get techOverbought => 'زۆر کڕدراو';

  @override
  String get techOversold => 'زۆر فرۆشراو';

  @override
  String get techNeutral => 'بێلایەن';

  @override
  String get techGoldenCross =>
      'تێکڕای ٥٠ ڕۆژ لە سەرووی تێکڕای ٢٠٠ ڕۆژە – بەپێی خوێندنەوەی کلاسیک ئاراستەی سەرکەوتنە.';

  @override
  String get techDeathCross =>
      'تێکڕای ٥٠ ڕۆژ لە خوارووی تێکڕای ٢٠٠ ڕۆژە – بەپێی خوێندنەوەی کلاسیک ئاراستەی دابەزینە.';

  @override
  String get glossSma50 =>
      'تێکڕای نرخی داخستنی ٥٠ ڕۆژی بازرگانی کۆتایی. نرخی سەرووی ئەو زۆرجار وەک بەهێزی کورتخایەن دەخوێنرێتەوە، خوارووی وەک لاوازی.';

  @override
  String get glossSma200 =>
      'تێکڕای نرخی داخستنی ٢٠٠ ڕۆژی بازرگانی کۆتایی – هێڵی ئاراستەی کلاسیکی درێژخایەن. زۆرێک لە وەبەرهێنەران نرخی سەرووی ئەو بە ئاراستەی سەرکەوتنی درێژخایەن دادەنێن.';

  @override
  String get glossRsi =>
      'پێوەری هێزی ڕێژەیی: قازانجەکانی ئەم دواییە لەگەڵ زیانەکانی ئەم دواییە لەسەر پێوانەی ٠–١٠٠ بەراورد دەکات. لە سەرووی ٧٠ زۆرجار دەوترێت پشکەکە زۆر کڕدراوە (بە خێرایی بەرزبووەتەوە)، لە خوارووی ٣٠ زۆر فرۆشراوە – بەڵام ئاراستەی بەهێز دەکرێت ماوەیەکی درێژ لەوێ بمێنێتەوە.';

  @override
  String get glossVolatility =>
      'نرخ ڕۆژ بە ڕۆژ چەند دەجووڵێت، بە پێوانەی ساڵێک: ٢٠% واتە لە ساڵێکی ئاسایی نرخ لە نێوان نزیکەی ±٢٠% دەجووڵێت. جووڵەی بەرزتر واتە جووڵەی گەورەتر بە هەردوو لا.';

  @override
  String get techNote =>
      'لە نرخەکانی داخستنی ڕۆژانە هەژمار کراوە. ئاماژەکانی تەکنیکی ڕابردوو باس دەکەن، نەک داهاتوو.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$above لە $count پۆزیشن لەسەرووی تێکڕای ٢٠٠ ڕۆژی خۆیانن';
  }

  @override
  String get watchSignalsTitle => 'ئاماژەکان';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · زۆر فرۆشراو';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · زۆر کڕدراو';
  }

  @override
  String get signalCrossedAbove => 'تێکڕای ٢٠٠ ڕۆژ بەرەو سەرەوە بڕی';

  @override
  String get signalCrossedBelow => 'تێکڕای ٢٠٠ ڕۆژ بەرەو خوارەوە بڕی';

  @override
  String get signalAlertsTitle => 'ئاگادارکردنەوەی سیگناڵی تەکنیکی';

  @override
  String get signalAlertsSubtitle =>
      'ڕۆژانە جارێک، کاتێک پشکێک کە شوێنی دەکەویت زۆر فرۆشراو یان زۆر کڕدراو دەبێت (RSI)، یان نرخەکەی تێکڕای ٢٠٠ ڕۆژ دەبڕێت.';

  @override
  String get signalAlertsNotification => 'سیگناڵە تەکنیکییەکان';

  @override
  String get glossaryPageTitle => 'فەرهەنگۆک';

  @override
  String get glossaryPageSubtitle =>
      'ڕوونکردنەوەی سادەی هەر ژمارەیەک کە ئەپەکە پیشانی دەدات، لە P/E تا RSI';

  @override
  String get glossarySearchHint => 'گەڕان لە فەرهەنگۆک';

  @override
  String get portfolioCash => 'پارەی کاش';

  @override
  String get portfolioCashTitle => 'باڵانسی کاش';

  @override
  String get portfolioCashHint =>
      'پارەی وەبەرنەهێنراو لای بڕۆکەرەکەت، بەپێی دراو. لە کۆی بەها و دابەشبوون دەژمێردرێت؛ لە قازانج نا.';

  @override
  String portfolioCashAmount(String currency) {
    return 'بڕ ($currency)';
  }

  @override
  String get portfolioCashEdit => 'دانانی باڵانسی کاش';

  @override
  String get portfolioDividendsByMonth => 'بەپێی مانگ';

  @override
  String get dividendsLegendReceived => 'وەرگیراو';

  @override
  String get dividendsLegendExpected => 'چاوەڕوانکراو';

  @override
  String get portfolioDividendsExpected => 'چاوەڕوانکراوی داهاتوو';

  @override
  String get portfolioDividendsExpectedNote =>
      'خەمڵێنراوە لە ڕێکەوت و بڕی ئەو پارەدانانەی تۆمارت کردوون؛ کۆمپانیاکان دەتوانن بیانگۆڕن یان بیانپەڕێنن.';

  @override
  String portfolioDividendAround(String date) {
    return 'نزیکەی $date';
  }
}
