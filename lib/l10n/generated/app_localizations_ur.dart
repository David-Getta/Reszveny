// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'کسی شیئر کی تصویر لیں اور اس کے بارے میں سب کچھ جانیں۔';

  @override
  String get homeHint =>
      'شیئر سرٹیفکیٹ، بروکریج ایپ کی اسکرین، اخبار یا کمپنی کا لوگو – کوئی بھی چیز جو شیئر کی شناخت کرے۔';

  @override
  String get takePhoto => 'تصویر لیں';

  @override
  String get chooseFromGallery => 'گیلری سے منتخب کریں';

  @override
  String get chooseImage => 'تصویر منتخب کریں';

  @override
  String get enterTickerManually => 'ٹکر دستی طور پر درج کریں';

  @override
  String get tickerInputLabel => 'ٹکر سمبل';

  @override
  String get tickerInputHint => 'مثلاً AAPL';

  @override
  String get lookUp => 'تلاش کریں';

  @override
  String demoModeBanner(String symbols) {
    return 'ڈیمو موڈ – مارکیٹ ڈیٹا کی کوئی کلید ترتیب نہیں دی گئی۔ نمونہ ڈیٹا ان کے لیے دستیاب ہے: $symbols۔';
  }

  @override
  String get recognizing => 'تصویر کا تجزیہ ہو رہا ہے…';

  @override
  String get loadingData => 'ڈیٹا لوڈ ہو رہا ہے…';

  @override
  String get noCandidatesTitle => 'کوئی شیئر شناخت نہیں ہوا';

  @override
  String get noCandidatesBody =>
      'ہم اس تصویر میں کسی شیئر کی شناخت نہیں کر سکے۔ زیادہ واضح تصویر آزمائیں، یا ٹکر دستی طور پر درج کریں۔';

  @override
  String get whatWeSaw => 'ہم نے کیا دیکھا';

  @override
  String get chooseCandidateTitle => 'آپ کا مطلب کون سا شیئر تھا؟';

  @override
  String confidencePercent(int percent) {
    return '$percent% اعتماد';
  }

  @override
  String get settings => 'ترتیبات';

  @override
  String get language => 'زبان';

  @override
  String get systemLanguage => 'سسٹم ڈیفالٹ';

  @override
  String get about => 'تعارف';

  @override
  String get disclaimer =>
      'یہ ایپ صرف معلومات فراہم کرتی ہے اور سرمایہ کاری کا مشورہ نہیں ہے۔ ڈیٹا تاخیر سے یا غلط ہو سکتا ہے۔';

  @override
  String dataSource(String source) {
    return 'ڈیٹا کا ماخذ: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'شناخت: $source';
  }

  @override
  String get retry => 'دوبارہ کوشش کریں';

  @override
  String get cancel => 'منسوخ کریں';

  @override
  String get ok => 'ٹھیک ہے';

  @override
  String get close => 'بند کریں';

  @override
  String get errorGeneric => 'کچھ غلط ہو گیا۔';

  @override
  String get errorSectionUnavailable => 'یہ حصہ لوڈ نہیں ہو سکا۔';

  @override
  String get notAvailable => 'دستیاب نہیں';

  @override
  String get sectionIdentity => 'شناخت';

  @override
  String get sectionPrice => 'قیمت';

  @override
  String get sectionValuation => 'قدر کا تعین';

  @override
  String get sectionFinancials => 'مالیاتی اعداد';

  @override
  String get sectionDividend => 'ڈیویڈنڈ';

  @override
  String get sectionProfile => 'کمپنی پروفائل';

  @override
  String get sectionAnalysts => 'تجزیہ کاروں کی درجہ بندی';

  @override
  String get sectionNews => 'خبریں';

  @override
  String get sectionRecognition => 'شناخت کی تفصیلات';

  @override
  String get labelSymbol => 'ٹکر';

  @override
  String get labelExchange => 'ایکسچینج';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'کرنسی';

  @override
  String get labelCountry => 'ملک';

  @override
  String get labelIndustry => 'صنعت';

  @override
  String get labelSector => 'شعبہ';

  @override
  String get labelWebsite => 'ویب سائٹ';

  @override
  String get labelIpoDate => 'IPO کی تاریخ';

  @override
  String get labelMarketCap => 'مارکیٹ کیپ';

  @override
  String get labelSharesOutstanding => 'جاری شدہ شیئرز';

  @override
  String get labelEmployees => 'ملازمین';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'صدر دفتر';

  @override
  String get labelDescription => 'تفصیل';

  @override
  String get labelLastPrice => 'آخری قیمت';

  @override
  String get labelChange => 'تبدیلی';

  @override
  String get labelOpen => 'اوپن';

  @override
  String get labelDayHigh => 'دن کی بلند ترین';

  @override
  String get labelDayLow => 'دن کی کم ترین';

  @override
  String get labelPreviousClose => 'پچھلا کلوز';

  @override
  String get labelWeek52High => '52 ہفتوں کی بلند ترین';

  @override
  String get labelWeek52Low => '52 ہفتوں کی کم ترین';

  @override
  String get labelAverageVolume10d => 'اوسط والیوم (10 دن)';

  @override
  String updatedAt(String time) {
    return 'اپڈیٹ $time';
  }

  @override
  String get labelPeTrailing => 'P/E (ٹریلنگ)';

  @override
  String get labelPeForward => 'P/E (فارورڈ)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / فری کیش فلو';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'بیٹا';

  @override
  String get labelRevenueTtm => 'آمدنی (TTM)';

  @override
  String get labelNetIncomeTtm => 'خالص منافع (TTM)';

  @override
  String get labelGrossMargin => 'مجموعی مارجن';

  @override
  String get labelOperatingMargin => 'آپریٹنگ مارجن';

  @override
  String get labelNetMargin => 'خالص مارجن';

  @override
  String get labelRoe => 'ایکویٹی پر منافع';

  @override
  String get labelRoa => 'اثاثوں پر منافع';

  @override
  String get labelDebtToEquity => 'قرض / ایکویٹی';

  @override
  String get labelCurrentRatio => 'کرنٹ ریشو';

  @override
  String get labelRevenueGrowth => 'آمدنی میں اضافہ (YoY)';

  @override
  String get labelEpsGrowth => 'EPS میں اضافہ (YoY)';

  @override
  String get labelDividendYield => 'ڈیویڈنڈ ییلڈ';

  @override
  String get labelDividendPerShare => 'فی شیئر ڈیویڈنڈ';

  @override
  String get labelPayoutRatio => 'پے آؤٹ ریشو';

  @override
  String get labelConsensus => 'اتفاقِ رائے';

  @override
  String get ratingStrongBuy => 'اسٹرانگ بائی';

  @override
  String get ratingBuy => 'بائی';

  @override
  String get ratingHold => 'ہولڈ';

  @override
  String get ratingSell => 'سیل';

  @override
  String get ratingStrongSell => 'اسٹرانگ سیل';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count تجزیہ کار',
      one: '1 تجزیہ کار',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'مدت: $period';
  }

  @override
  String get noNews => 'کوئی حالیہ خبر نہیں۔';

  @override
  String get openArticle => 'مضمون کھولیں';

  @override
  String get openLinkFailed => 'لنک نہیں کھولا جا سکا۔';

  @override
  String get recognitionSummary => 'خلاصہ';

  @override
  String get recognitionEvidence => 'ہم ایسا کیوں سمجھتے ہیں';

  @override
  String get recognitionRawText => 'تصویر سے پڑھا گیا متن';

  @override
  String get errMissingAnthropicKey =>
      'تصویر کی شناخت ترتیب نہیں دی گئی (ANTHROPIC_API_KEY موجود نہیں)۔ ٹکر دستی طور پر درج کریں۔';

  @override
  String get errRecognitionUnreachable =>
      'شناختی سروس سے رابطہ نہیں ہو سکا۔ اپنا انٹرنیٹ کنکشن چیک کریں۔';

  @override
  String errRecognitionHttp(String status) {
    return 'شناختی سروس نے ایک خرابی واپس کی (HTTP $status)۔';
  }

  @override
  String get errRecognitionRefused =>
      'شناختی سروس اس تصویر پر کارروائی نہیں کر سکی۔';

  @override
  String get errRecognitionTruncated =>
      'شناختی جواب نامکمل رہا۔ براہ کرم دوبارہ کوشش کریں۔';

  @override
  String get errRecognitionBadResponse => 'شناختی سروس سے غیر متوقع جواب۔';

  @override
  String get errRecognitionEmpty => 'شناختی سروس نے خالی جواب واپس کیا۔';

  @override
  String get errMissingFinnhubKey =>
      'مارکیٹ ڈیٹا ترتیب نہیں دیا گیا (FINNHUB_API_KEY موجود نہیں)۔';

  @override
  String get errMarketUnreachable =>
      'مارکیٹ ڈیٹا سروس سے رابطہ نہیں ہو سکا۔ اپنا انٹرنیٹ کنکشن چیک کریں۔';

  @override
  String get errMarketRateLimited =>
      'مارکیٹ ڈیٹا سروس کو بہت زیادہ درخواستیں بھیجی گئیں۔ براہ کرم ایک منٹ انتظار کریں۔';

  @override
  String errMarketHttp(String status) {
    return 'مارکیٹ ڈیٹا سروس نے ایک خرابی واپس کی (HTTP $status)۔';
  }

  @override
  String get errMarketBadResponse => 'مارکیٹ ڈیٹا سروس سے غیر متوقع جواب۔';

  @override
  String errNoQuote(String symbol) {
    return '$symbol کے لیے قیمت کا کوئی ڈیٹا نہیں ملا۔';
  }

  @override
  String errNoProfile(String symbol) {
    return '$symbol کے لیے کمپنی پروفائل نہیں ملا۔';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'ڈیمو موڈ صرف $symbols کو سپورٹ کرتا ہے۔ لائیو ڈیٹا کے لیے FINNHUB_API_KEY شامل کریں۔';
  }

  @override
  String errUnknown(String detail) {
    return 'کچھ غلط ہو گیا: $detail';
  }

  @override
  String get newSearch => 'نئی تلاش';

  @override
  String get recentSearches => 'حالیہ';

  @override
  String get noRecentSearches => 'ابھی تک کوئی حالیہ تلاش نہیں۔';

  @override
  String get clearRecent => 'حالیہ صاف کریں';

  @override
  String get greeting => 'آج کون سا شیئر دیکھیں؟';

  @override
  String get searchHint => 'ٹکر یا کمپنی کا نام';

  @override
  String get attachImage => 'تصویر منسلک کریں';

  @override
  String get searchResultsTitle => 'تلاش کے نتائج';

  @override
  String errNoResults(String query) {
    return '“$query” کے لیے کوئی شیئر نہیں ملا۔';
  }

  @override
  String get quickBarHint => 'ٹکر یا کمپنی کا نام ٹائپ کریں…';

  @override
  String get openFullWindow => 'ونڈو کھولیں';

  @override
  String hotkeyHint(String shortcut) {
    return 'WhatStock کو کہیں سے بھی کھولنے کے لیے $shortcut دبائیں۔';
  }

  @override
  String get trayOpen => 'WhatStock کھولیں';

  @override
  String get trayQuickSearch => 'فوری تلاش';

  @override
  String get trayQuit => 'باہر نکلیں';

  @override
  String get appearance => 'ظاہری شکل';

  @override
  String get themeSystem => 'سسٹم';

  @override
  String get themeDark => 'ڈارک';

  @override
  String get themeLight => 'لائٹ';

  @override
  String get back => 'واپس';

  @override
  String get aiSectionTitle => 'AI تجزیہ';

  @override
  String get aiIntro =>
      'AI کا لکھا ہوا تفصیلی جائزہ: حالیہ خبروں کا خلاصہ، کاروبار، مضبوط پہلو، خطرات اور پوشیدہ عوامل، قدر کا تعین، نفسیاتی، معاشرتی، تکنیکی اور میکرو زاویوں سے منظرناموں کے ساتھ قیمت کا امکانی رخ، اور کن باتوں پر نظر رکھیں۔';

  @override
  String get aiGenerate => 'تجزیہ تیار کریں';

  @override
  String get aiRegenerate => 'دوبارہ تیار کریں';

  @override
  String get aiGenerating =>
      'تجزیہ تیار ہو رہا ہے… اس میں ایک دو منٹ لگ سکتے ہیں۔';

  @override
  String get aiSources => 'ماخذ';

  @override
  String aiGeneratedAt(String time) {
    return 'تیار کیا گیا $time';
  }

  @override
  String get aiDisclaimer =>
      'عوامی ڈیٹا اور حالیہ خبروں پر مبنی AI سے تیار کردہ تجزیہ۔ اس میں غلطیاں ہو سکتی ہیں یا یہ پرانا ہو سکتا ہے، اور یہ سرمایہ کاری کا مشورہ نہیں ہے۔';

  @override
  String get errAiNotConfigured =>
      'AI تجزیہ ترتیب نہیں دیا گیا (ANTHROPIC_API_KEY موجود نہیں)۔';

  @override
  String get errAiUnreachable =>
      'AI سروس سے رابطہ نہیں ہو سکا۔ اپنا انٹرنیٹ کنکشن چیک کریں۔';

  @override
  String errAiHttp(String status) {
    return 'AI سروس نے ایک خرابی واپس کی (HTTP $status)۔';
  }

  @override
  String get errAiRefused =>
      'AI سروس نے اس شیئر کا تجزیہ کرنے سے انکار کر دیا۔';

  @override
  String get errAiBadResponse => 'AI سروس سے غیر متوقع جواب۔';

  @override
  String get sectionChart => 'قیمت کا چارٹ';

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
      'موجودہ ڈیٹا ماخذ سے قیمت کی تاریخ دستیاب نہیں ہے۔';

  @override
  String get sectionStatements => 'مالیاتی گوشوارے (سالانہ)';

  @override
  String get labelFiscalYear => 'مالی سال';

  @override
  String get labelRevenue => 'آمدنی';

  @override
  String get labelNetIncome => 'خالص منافع';

  @override
  String get labelTotalAssets => 'کل اثاثے';

  @override
  String get labelTotalLiabilities => 'کل واجبات';

  @override
  String get labelEquity => 'شیئر ہولڈرز کی ایکویٹی';

  @override
  String get labelOperatingCashFlow => 'آپریٹنگ کیش فلو';

  @override
  String get statementsUnavailable =>
      'اس شیئر کے لیے رپورٹ شدہ مالیاتی گوشوارے دستیاب نہیں ہیں۔';

  @override
  String get launchAtLogin => 'لاگ ان پر شروع کریں';

  @override
  String get hotkeyLabel => 'گلوبل شارٹ کٹ';

  @override
  String get hotkeyRecordHint => 'یہاں کلک کریں، پھر نیا کی کمبینیشن دبائیں';

  @override
  String get hotkeyReset => 'ڈیفالٹ پر ری سیٹ کریں';

  @override
  String get pasteImage => 'کلپ بورڈ سے تصویر پیسٹ کریں';

  @override
  String get errClipboardNoImage => 'کلپ بورڈ میں کوئی تصویر نہیں ہے۔';

  @override
  String get favorites => 'پسندیدہ';

  @override
  String get addToFavorites => 'پسندیدہ میں شامل کریں';

  @override
  String get removeFromFavorites => 'پسندیدہ سے ہٹائیں';

  @override
  String get noFavorites =>
      'ابھی تک کوئی پسندیدہ نہیں۔ شامل کرنے کے لیے کسی شیئر پر ستارے کو ٹیپ کریں۔';

  @override
  String get displayCurrency => 'ڈسپلے کرنسی';

  @override
  String get displayCurrencyNone => 'صرف شیئر کی اپنی کرنسی';

  @override
  String labelConverted(String currency) {
    return '≈ $currency میں';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'شرح: 1 $from = $rate $to (ECB، $date)';
  }

  @override
  String get updates => 'اپ ڈیٹس';

  @override
  String currentVersion(String version) {
    return 'ورژن $version';
  }

  @override
  String get autoUpdate => 'اپ ڈیٹس خودکار طور پر انسٹال کریں';

  @override
  String get checkForUpdates => 'اپ ڈیٹس چیک کریں';

  @override
  String get updateChecking => 'اپ ڈیٹس چیک کی جا رہی ہیں…';

  @override
  String get updateUpToDate => 'آپ تازہ ترین ورژن استعمال کر رہے ہیں۔';

  @override
  String updateAvailable(String version) {
    return 'ورژن $version دستیاب ہے۔';
  }

  @override
  String get updateDownloading => 'اپ ڈیٹ پس منظر میں ڈاؤن لوڈ ہو رہی ہے…';

  @override
  String get updateDownloaded =>
      'اپ ڈیٹ تیار ہے۔ انسٹال کرنے کے لیے دوبارہ شروع کریں۔';

  @override
  String get updateNow => 'اپ ڈیٹ کریں';

  @override
  String get restartNow => 'دوبارہ شروع کریں';

  @override
  String get updatesViaStore =>
      'اپ ڈیٹس ایپ اسٹور کے ذریعے خودکار طور پر موصول ہوتی ہیں۔';

  @override
  String get updateCheckFailed => 'اپ ڈیٹس چیک نہیں کی جا سکیں۔';

  @override
  String get subscription => 'سبسکرپشن';

  @override
  String get planTrial => 'آزمائشی';

  @override
  String get planNormal => 'نارمل';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'کوئی فعال پلان نہیں';

  @override
  String planAnalysesPerMonth(int count) {
    return 'ماہانہ $count تجزیے';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$count تجزیوں کے ساتھ $days دن کا مفت آزمائشی دور';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'آزمائشی دور کے $days دن باقی',
      one: 'آزمائشی دور کا 1 دن باقی',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'آپ کا مفت آزمائشی دور ختم ہو گیا ہے۔ تجزیہ جاری رکھنے کے لیے کوئی پلان منتخب کریں۔';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'اس مدت میں $total میں سے $remaining تجزیے باقی';
  }

  @override
  String extraCredits(int count) {
    return '$count اضافی تجزیے';
  }

  @override
  String renewsOn(String date) {
    return '$date کو تجدید';
  }

  @override
  String get choosePlan => 'پلان منتخب کریں';

  @override
  String get currentPlan => 'موجودہ پلان';

  @override
  String get subscribe => 'سبسکرائب کریں';

  @override
  String get perMonth => '/ ماہ';

  @override
  String get extraPacksTitle => 'مزید چاہیے؟ اضافی تجزیے خریدیں';

  @override
  String get extraPacksHint =>
      'اضافی تجزیے کبھی ختم نہیں ہوتے اور آپ کے ماہانہ کوٹے کے بعد استعمال ہوتے ہیں۔';

  @override
  String get buy => 'خریدیں';

  @override
  String get restorePurchases => 'خریداریاں بحال کریں';

  @override
  String get manageSubscription => 'سبسکرپشن کا نظم کریں';

  @override
  String get purchaseSuccess => 'شکریہ! آپ کی خریداری فعال ہے۔';

  @override
  String get purchasePending => 'خریداری زیر التوا…';

  @override
  String get purchaseFailed => 'خریداری مکمل نہیں ہو سکی۔';

  @override
  String get purchaseCanceled => 'خریداری منسوخ کر دی گئی۔';

  @override
  String get billingUnavailable =>
      'اس پلیٹ فارم پر خریداری ابھی دستیاب نہیں۔ اپنے فون یا Mac پر سبسکرائب کریں؛ آپ کا پلان ہر ڈیوائس پر کام کرے گا۔';

  @override
  String get errQuotaExceeded =>
      'اس مدت کے لیے آپ کے تجزیے ختم ہو گئے ہیں۔ اپنا پلان اپگریڈ کریں یا اضافی تجزیے خریدیں۔';

  @override
  String get errTrialExpired =>
      'آپ کا مفت آزمائشی دور ختم ہو گیا ہے۔ جاری رکھنے کے لیے کوئی پلان منتخب کریں۔';

  @override
  String get errNoPlan => 'AI تجزیے کے لیے فعال پلان درکار ہے۔';

  @override
  String get viewPlans => 'پلان دیکھیں';

  @override
  String get usageTitle => 'استعمال';

  @override
  String get demoPurchaseNote =>
      'ڈیمو بلنگ: اس پلیٹ فارم پر خریداریاں نقلی ہیں۔';

  @override
  String get mostPopular => 'سب سے مقبول';

  @override
  String get bestValue => 'بہترین قدر';

  @override
  String get planFeaturesCommon =>
      'تصویر کی شناخت، لائیو ڈیٹا، چارٹس، پسندیدہ اور تمام 120 زبانیں ہر پلان میں شامل ہیں۔ کوٹا AI تجزیوں پر لاگو ہوتا ہے۔';

  @override
  String get searchLanguages => 'زبانیں تلاش کریں…';

  @override
  String get noLanguageMatch => 'کوئی زبان مطابقت نہیں رکھتی۔';

  @override
  String get aiSettings => 'AI تجزیہ';

  @override
  String get aiLength => 'طوالت';

  @override
  String get aiDepthBrief => 'مختصر';

  @override
  String get aiDepthStandard => 'معیاری';

  @override
  String get aiDepthDeep => 'تفصیلی';

  @override
  String get aiDepthBriefDesc => 'اہم نکات، فوراً۔';

  @override
  String get aiDepthStandardDesc => 'تمام حصوں کے ساتھ مکمل رپورٹ۔';

  @override
  String get aiDepthDeepDesc =>
      'زیادہ ویب تلاشیں، حریف کمپنیوں سے موازنہ اور گہری تفصیل۔';

  @override
  String aiDepthWords(String min, String max) {
    return 'تقریباً $min–$max الفاظ';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count تجزیے استعمال ہوتے ہیں',
      one: '$count تجزیہ استعمال ہوتا ہے',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'قاری کی سطح';

  @override
  String get aiReaderBeginner => 'مبتدی';

  @override
  String get aiReaderExperienced => 'تجربہ کار';

  @override
  String get aiReaderBeginnerDesc =>
      'آسان زبان؛ ہر تکنیکی اصطلاح کی وضاحت کی جاتی ہے۔';

  @override
  String get aiReaderExperiencedDesc =>
      'معیاری مالیاتی اصطلاحات کے ساتھ زیادہ جامع متن۔';

  @override
  String get aiCounterArgument => 'سب سے مضبوط جوابی دلیل';

  @override
  String get aiCounterArgumentDesc =>
      'خلاصہ ہمیشہ اپنے ہی نتیجے کے خلاف سب سے مضبوط دلیل پر ختم ہوتا ہے۔';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'آپ کے پلان میں فی تجزیہ زیادہ سے زیادہ $count ویب تلاشیں',
      one: 'آپ کے پلان میں فی تجزیہ زیادہ سے زیادہ $count ویب تلاش',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'معیاری طوالت پر پلان کے لحاظ سے ویب تلاشیں: نارمل $normal، Pro $pro، Max $max، Ultra $ultra۔ مختصر میں 2 کم اور تفصیلی میں 2 زیادہ۔';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'زیادہ سے زیادہ $count ویب تلاشیں',
      one: 'زیادہ سے زیادہ $count ویب تلاش',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'فی تجزیہ $count ویب تلاشیں',
      one: 'فی تجزیہ $count ویب تلاش',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'اس طوالت کے لیے $needed تجزیے درکار ہیں، لیکن صرف $left باقی ہیں۔ ترتیبات میں کم طوالت منتخب کریں یا مزید تجزیے حاصل کریں۔';
  }

  @override
  String get outlookMarketMood => 'مارکیٹ کا مزاج';

  @override
  String get moodVeryPessimistic => 'بہت مایوس کن';

  @override
  String get moodPessimistic => 'مایوس کن';

  @override
  String get moodNeutral => 'غیر جانبدار';

  @override
  String get moodOptimistic => 'پُرامید';

  @override
  String get moodVeryOptimistic => 'بہت پُرامید';

  @override
  String get scenarioBull => 'پُرامید منظرنامہ';

  @override
  String get scenarioBase => 'بنیادی منظرنامہ';

  @override
  String get scenarioBear => 'مایوس کن منظرنامہ';

  @override
  String outlookCurrentPrice(String price) {
    return 'موجودہ قیمت: $price';
  }

  @override
  String get outlookKeyLevels => 'اہم سطحیں';

  @override
  String get keyLevelSupport => 'سپورٹ';

  @override
  String get keyLevelResistance => 'مزاحمت';

  @override
  String get keyLevelAnchor => 'حوالہ جاتی سطح';

  @override
  String get upcomingEvents => 'آنے والے واقعات';

  @override
  String get outlookChartNote =>
      'تخمینی حدود؛ امکانات محض موٹے اندازے ہیں، پیش گوئیاں نہیں۔';

  @override
  String get accountTitle => 'اکاؤنٹ';

  @override
  String get signIn => 'سائن ان';

  @override
  String get signOut => 'سائن آؤٹ';

  @override
  String get notSignedIn => 'سائن ان نہیں ہیں';

  @override
  String get accountBenefit =>
      'سائن ان کریں تاکہ آپ کی سبسکرپشن آپ کے تمام آلات پر کام کرے۔';

  @override
  String get accountSyncedNote =>
      'آپ کی سبسکرپشن اور باقی تجزیے ہر آلے پر یکساں ہیں۔';

  @override
  String get signInTitle => 'WhatStock میں سائن ان کریں';

  @override
  String get emailLabel => 'ای میل پتہ';

  @override
  String get continueWithEmail => 'ای میل کے ساتھ جاری رکھیں';

  @override
  String codeSentTo(String email) {
    return 'ہم نے $email پر 6 ہندسوں کا کوڈ بھیجا ہے۔ یہ 10 منٹ تک کارآمد ہے۔';
  }

  @override
  String get codeLabel => 'سائن ان کوڈ';

  @override
  String get resendCode => 'نیا کوڈ بھیجیں';

  @override
  String get useDifferentEmail => 'دوسری ای میل استعمال کریں';

  @override
  String get errInvalidCode => 'کوڈ غلط ہے یا اس کی میعاد ختم ہو گئی ہے۔';

  @override
  String get errInvalidEmail => 'براہ کرم درست ای میل پتہ درج کریں۔';

  @override
  String get errSignInFailed =>
      'سائن ان ناکام رہا۔ اپنا کنکشن چیک کریں اور دوبارہ کوشش کریں۔';

  @override
  String get checkoutWaiting =>
      'اپنے براؤزر میں ادائیگی مکمل کریں۔ مکمل ہونے پر ایپ خود بخود اپ ڈیٹ ہو جائے گی۔';

  @override
  String get paymentViaStripe =>
      'Stripe کے ذریعے براؤزر میں محفوظ ادائیگی۔ کسی بھی وقت منسوخ کریں۔';

  @override
  String get paymentViaStore =>
      'بلنگ آپ کے App Store یا Google Play اکاؤنٹ کے ذریعے ہوتی ہے۔ اسٹور کی ترتیبات میں کسی بھی وقت منسوخ کریں۔';

  @override
  String get keySpace => 'اسپیس';

  @override
  String get doubleOptionTitle => 'Option کو دو بار دبائیں';

  @override
  String get doubleOptionSubtitle =>
      'Option کی کو جلدی سے دو بار دبانے سے بھی WhatStock کھل جاتا ہے۔';

  @override
  String get doubleOptionPermission =>
      'تاکہ یہ دوسری ایپس میں بھی کام کرے، سسٹم کی ترتیبات ← رازداری اور سیکیورٹی ← ان پٹ مانیٹرنگ میں WhatStock کو اجازت دیں، پھر ایپ دوبارہ کھولیں۔';

  @override
  String get openSystemSettings => 'سسٹم کی ترتیبات کھولیں';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'WhatStock کو کہیں سے بھی کھولنے کے لیے $shortcut دبائیں یا Option کو دو بار دبائیں۔';
  }

  @override
  String get scenarioMostLikely => 'سب سے زیادہ ممکن';

  @override
  String get longTermToday => 'آج';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years سال',
      one: '1 سال',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range سالانہ';
  }

  @override
  String longTermLikely(String price) {
    return 'سب سے زیادہ ممکن $price';
  }

  @override
  String get confidenceLow => 'کم اعتماد';

  @override
  String get confidenceMedium => 'درمیانہ اعتماد';

  @override
  String get confidenceHigh => 'زیادہ اعتماد';

  @override
  String get longTermNote =>
      'طویل مدتی حدود بیان کردہ مفروضات پر مبنی ہیں اور وقت کے ساتھ وسیع ہوتی جاتی ہیں۔ قیمتوں میں منافع منقسمہ شامل نہیں۔ موٹے اندازے ہیں، پیش گوئیاں نہیں۔';

  @override
  String get portfolio => 'پورٹ فولیو';

  @override
  String get portfolioEmpty =>
      'ابھی کچھ نہیں۔ کوئی شیئر کھولیں اور اپنی ملکیت پر نظر رکھنے کے لیے “پورٹ فولیو میں شامل کریں” پر ٹیپ کریں۔';

  @override
  String get portfolioLocalNote =>
      'صرف اسی ڈیوائس پر محفوظ ہوتا ہے۔ مجموعے ای سی بی کے حوالہ جاتی نرخوں پر تبدیل کیے جاتے ہیں؛ قیمتوں میں تاخیر ہو سکتی ہے۔';

  @override
  String get addToPortfolio => 'پورٹ فولیو میں شامل کریں';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol شامل کریں';
  }

  @override
  String get portfolioQuantity => 'شیئرز کی تعداد';

  @override
  String portfolioBuyPrice(String currency) {
    return 'فی شیئر قیمت ($currency)';
  }

  @override
  String get portfolioBuyDate => 'خریداری کی تاریخ';

  @override
  String get portfolioAdd => 'شامل کریں';

  @override
  String get portfolioInvalidNumber => 'صفر سے بڑا عدد درج کریں۔';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol پورٹ فولیو میں شامل ہو گیا۔';
  }

  @override
  String get portfolioTotalValue => 'کل مالیت';

  @override
  String get portfolioToday => 'آج';

  @override
  String get portfolioGainLoss => 'نفع/نقصان';

  @override
  String get portfolioInvested => 'سرمایہ کاری';

  @override
  String get portfolioAllocation => 'تقسیم';

  @override
  String get portfolioPositions => 'پوزیشنز';

  @override
  String portfolioAvgCost(String price) {
    return 'اوسط لاگت $price';
  }

  @override
  String get portfolioYourPosition => 'آپ کی پوزیشن';

  @override
  String get portfolioPurchases => 'خریداریاں';

  @override
  String get portfolioRemove => 'ہٹائیں';

  @override
  String get portfolioExcluded =>
      'جن پوزیشنز کی قیمت یا شرح تبادلہ دستیاب نہیں وہ مجموعوں میں شامل نہیں۔';

  @override
  String get priceAlerts => 'قیمت کے الرٹس';

  @override
  String get setPriceAlert => 'قیمت کا الرٹ لگائیں';

  @override
  String alertDialogTitle(String symbol) {
    return 'قیمت کا الرٹ · $symbol';
  }

  @override
  String get alertKindAbove => 'اس سے اوپر جائے';

  @override
  String get alertKindBelow => 'اس سے نیچے آئے';

  @override
  String get alertKindMove => 'ایک دن میں بہت ہلے';

  @override
  String alertTargetPrice(String currency) {
    return 'قیمت ($currency)';
  }

  @override
  String get alertMovePercent => 'روزانہ تبدیلی (%)';

  @override
  String get alertAlreadyMet => 'قیمت پہلے ہی اس سطح سے آگے ہے۔';

  @override
  String get alertSave => 'الرٹ لگائیں';

  @override
  String alertCreated(String symbol) {
    return '$symbol کے لیے الرٹ لگ گیا۔';
  }

  @override
  String get alertsEmpty =>
      'ابھی کوئی الرٹ نہیں۔ کوئی شیئر کھولیں اور گھنٹی پر ٹیپ کریں۔';

  @override
  String get alertsNote =>
      'جب تک WhatStock چل رہا ہے، الرٹس ہر 5 منٹ بعد چیک ہوتے ہیں۔ کمپیوٹر پر ایپ مینو بار یا سسٹم ٹرے میں چلتی رہتی ہے؛ فون پر فی الحال الرٹس صرف ایپ کھلی ہونے پر آتے ہیں۔';

  @override
  String alertDescAbove(String price) {
    return '$price سے اوپر';
  }

  @override
  String alertDescBelow(String price) {
    return '$price سے نیچے';
  }

  @override
  String alertDescMove(String percent) {
    return 'روزانہ تبدیلی ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return '$date کو $price پر فعال ہوا';
  }

  @override
  String get alertRearm => 'دوبارہ فعال کریں';

  @override
  String get alertDelete => 'حذف کریں';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol $price سے اوپر گیا';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol $price سے نیچے آیا';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol آج $percent ہلا';
  }

  @override
  String alertHitBody(String price) {
    return 'موجودہ قیمت: $price';
  }

  @override
  String get alertOpen => 'کھولیں';

  @override
  String get keepInTrayTitle => 'ونڈو بند ہونے کے بعد بھی چلتی رہے';

  @override
  String get keepInTraySubtitle =>
      'WhatStock مینو بار یا سسٹم ٹرے میں رہتی ہے تاکہ شارٹ کٹ اور قیمت کے الرٹس کام کرتے رہیں۔';

  @override
  String get termsOfUse => 'شرائطِ استعمال';

  @override
  String get privacyPolicy => 'رازداری کی پالیسی';

  @override
  String get subscriptionLegal =>
      'سبسکرپشن ہر مہینے خودبخود تجدید ہوتی ہے جب تک آپ اسے منسوخ نہ کریں۔ سبسکرائب کر کے آپ شرائطِ استعمال اور رازداری کی پالیسی قبول کرتے ہیں۔';

  @override
  String get deleteAccount => 'اکاؤنٹ حذف کریں';

  @override
  String get deleteAccountTitle => 'کیا آپ اپنا اکاؤنٹ حذف کرنا چاہتے ہیں؟';

  @override
  String get deleteAccountBody =>
      'آپ کا اکاؤنٹ اور ہمارے سرور پر محفوظ ہر چیز (ای میل، حد، استعمال) ہمیشہ کے لیے حذف ہو جائے گی، اور غیر استعمال شدہ تجزیے ضائع ہو جائیں گے۔ براؤزر میں ادا کی گئی سبسکرپشن فوراً منسوخ ہو جاتی ہے؛ App Store یا Google Play کی سبسکرپشن اسٹور کی ترتیبات میں منسوخ کرنی ہوگی۔';

  @override
  String get deleteLocalData =>
      'اس ڈیوائس کا ڈیٹا بھی حذف کریں (پورٹ فولیو، الرٹس، پسندیدہ، تاریخچہ، محفوظ تجزیے)';

  @override
  String get deleteAccountConfirm => 'ہمیشہ کے لیے حذف کریں';

  @override
  String get accountDeleted => 'آپ کا اکاؤنٹ حذف ہو گیا۔';

  @override
  String get errDeleteAccount =>
      'اکاؤنٹ حذف نہیں ہو سکا۔ کنکشن چیک کر کے دوبارہ کوشش کریں۔';

  @override
  String get aiTrialBriefNote =>
      'آزمائشی تجزیے مختصر ہوتے ہیں اور تیز تر AI ماڈل سے بنائے جاتے ہیں۔ پلان کے ساتھ آپ کو ہمارا سب سے قابل AI، زیادہ ویب تحقیق، اور معیاری و تفصیلی طوالت ملتی ہے۔';

  @override
  String get billingMonthly => 'ماہانہ';

  @override
  String get billingYearly => 'سالانہ';

  @override
  String get yearlyDiscount => '2 ماہ مفت';

  @override
  String get perYear => '/ سال';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price ماہانہ';
  }

  @override
  String get subscriptionLegalYearly =>
      'سالانہ سبسکرپشن ہر سال خودبخود تجدید ہوتی ہے جب تک آپ اسے منسوخ نہ کریں۔ سبسکرائب کر کے آپ شرائطِ استعمال اور رازداری کی پالیسی قبول کرتے ہیں۔';

  @override
  String get myAnalyses => 'میرے تجزیے';

  @override
  String get navAlerts => 'الرٹس';

  @override
  String get inviteTitle => 'نجی پیش نظارہ';

  @override
  String get inviteBody =>
      'WhatStock فی الحال صرف دعوت کے ذریعے دستیاب ہے۔ آپ کو موصول ہونے والا دعوتی کوڈ درج کریں۔';

  @override
  String get inviteCodeLabel => 'دعوتی کوڈ';

  @override
  String get inviteContinue => 'جاری رکھیں';

  @override
  String get inviteInvalid => 'یہ دعوتی کوڈ درست نہیں ہے۔';

  @override
  String get inviteExpired =>
      'اس دعوت کی میعاد ختم ہو گئی ہے۔ جس شخص نے آپ کو مدعو کیا تھا اس سے نیا کوڈ مانگیں۔';

  @override
  String get inviteDeviceLimit =>
      'یہ دعوتی کوڈ پہلے ہی زیادہ سے زیادہ اجازت شدہ آلات پر استعمال ہو رہا ہے۔';

  @override
  String get previewConfidential => 'خفیہ پیش نظارہ';

  @override
  String get errPreviewDailyLimit =>
      'اس پیش نظارے کی آج کی تجزیے کی حد پوری ہو گئی ہے۔ کل دوبارہ کوشش کریں۔';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count گھنٹے پہلے',
      one: '1 گھنٹہ پہلے',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count دن پہلے',
      one: '1 دن پہلے',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'یہ تجزیہ اپ ڈیٹ کریں؟';

  @override
  String staleBody(String age) {
    return 'یہ $age تیار کیا گیا تھا۔ ممکن ہے تب سے قیمتیں، خبریں اور نتائج بدل گئے ہوں۔';
  }

  @override
  String get staleKeep => 'پہلے والا دکھائیں';

  @override
  String get staleRefresh => 'نیا تیار کریں';

  @override
  String seeAll(int count) {
    return 'سب دیکھیں ($count)';
  }

  @override
  String get searchAnalyses => 'اپنے تجزیوں میں تلاش کریں';

  @override
  String get deleteAnalysis => 'حذف کریں';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol کا تجزیہ حذف کر دیا گیا';
  }

  @override
  String get keyLevelAlertHint =>
      'کسی سطح پر ٹیپ کریں تاکہ قیمت وہاں پہنچنے پر آپ کو الرٹ ملے۔';

  @override
  String get shareAnalysisTitle => 'تجزیہ شیئر کریں';

  @override
  String get shareAsImage => 'تصویر کے طور پر شیئر کریں';

  @override
  String get shareAsText => 'متن کے طور پر شیئر کریں';

  @override
  String get shareCardFooter => 'WhatStock سے تیار کردہ';

  @override
  String get shareCardDisclaimer => 'AI تجزیہ · سرمایہ کاری کا مشورہ نہیں';

  @override
  String get referralTitle => 'دوستوں کو مدعو کریں';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count اضافی تجزیے',
      one: '1 اضافی تجزیہ',
    );
    return 'اپنا کوڈ شیئر کریں۔ آپ کا دوست فوراً $_temp0 حاصل کرے گا، اور اس کے پہلے تجزیے کے بعد آپ بھی اتنے ہی حاصل کریں گے۔';
  }

  @override
  String get referralYourCode => 'آپ کا کوڈ';

  @override
  String referralStats(int invited, int rewarded) {
    return 'مدعو: $invited · انعام یافتہ: $rewarded';
  }

  @override
  String get referralHaveCode => 'کیا آپ کے پاس کسی دوست کا کوڈ ہے؟';

  @override
  String get referralRedeem => 'استعمال کریں';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count اضافی تجزیے شامل کر دیے گئے۔ خوش آمدید!',
      one: '1 اضافی تجزیہ شامل کر دیا گیا۔ خوش آمدید!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'یہ کوڈ موجود نہیں ہے۔ اسے چیک کر کے دوبارہ کوشش کریں۔';

  @override
  String get referralErrOwn => 'آپ اپنا کوڈ استعمال نہیں کر سکتے۔';

  @override
  String get referralErrAlready =>
      'آپ پہلے ہی کسی دوست کا کوڈ استعمال کر چکے ہیں۔';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count اضافی تجزیے',
      one: '1 اضافی تجزیہ',
    );
    return 'WhatStock سے حصص کا تجزیہ آسان ہے: کسی حصص کی تصویر لیں اور AI اس کی وضاحت کر دے گا۔ میرے کوڈ $code سے آپ $_temp0 حاصل کریں گے۔';
  }

  @override
  String get referralCopied => 'کوڈ کاپی ہو گیا';

  @override
  String get onboardTitle1 => 'کسی شیئر کی تصویر لیں';

  @override
  String get onboardBody1 =>
      'بروکریج ایپ کی اسکرین، اخبار یا کسی کمپنی کا لوگو کافی ہے: WhatStock شیئر کو پہچان کر اس کی قیمت، چارٹ اور اہم اعداد و شمار دکھاتا ہے۔';

  @override
  String get onboardTitle2 => 'منٹوں میں سمجھیں';

  @override
  String get onboardBody2 =>
      'AI تجزیہ بتاتا ہے کہ شیئر کو کیا چیز حرکت دیتی ہے، اس کے خطرات کیا ہیں، اس کی قدر کتنی ہے اور قیمت کس طرف جا سکتی ہے اس کے تین منظرنامے – ذرائع کے ساتھ اور آپ کی اپنی زبان میں۔';

  @override
  String get onboardTitle3 => 'ہر بات سے باخبر رہیں';

  @override
  String get onboardBody3 =>
      'پسندیدہ، آپ کا پورٹ فولیو اور قیمت کے الرٹس آپ کو باخبر رکھتے ہیں۔ آپ کے تجزیے آپ کے آلے پر محفوظ رہتے ہیں اور کسی بھی وقت دوبارہ کھولے جا سکتے ہیں۔';

  @override
  String get onboardNext => 'اگلا';

  @override
  String get onboardStart => 'شروع کریں';

  @override
  String get onboardSkip => 'چھوڑیں';

  @override
  String changesTitle(String date) {
    return 'پچھلے تجزیے کے بعد سے ($date)';
  }

  @override
  String get changesPrice => 'قیمت';

  @override
  String get changesNoMajor => 'امکانات میں کوئی خاص تبدیلی نہیں آئی۔';

  @override
  String get changesPreviousSummary => 'پچھلا خلاصہ';

  @override
  String get telemetryTitle => 'WhatStock کو بہتر بنانے میں مدد کریں';

  @override
  String get telemetryBody =>
      'استعمال کے گمنام اعداد و شمار اور کریش رپورٹس کا اشتراک کریں: کون سی خصوصیات استعمال ہوتی ہیں اور کیا غلط ہوا۔ آپ کے اسٹاکس، تجزیے یا ذاتی ڈیٹا کبھی شیئر نہیں کیے جاتے۔ آپ اسے کسی بھی وقت ترتیبات میں تبدیل کر سکتے ہیں۔';

  @override
  String get telemetryAllow => 'اجازت دیں';

  @override
  String get telemetryDecline => 'نہیں، شکریہ';

  @override
  String get telemetrySetting => 'گمنام اعداد و شمار اور کریش رپورٹس';

  @override
  String get telemetrySettingHint =>
      'خصوصیات کتنی بار استعمال ہوتی ہیں اور خرابی کی رپورٹس، ذاتی ڈیٹا یا آپ کی تلاشوں اور تجزیوں کے مواد کے بغیر۔';

  @override
  String get askButton => 'اس تجزیے کے بارے میں پوچھیں';

  @override
  String askTitle(String symbol) {
    return '$symbol کے بارے میں سوالات';
  }

  @override
  String get askIntro =>
      'تجزیے کے بارے میں کچھ بھی پوچھیں: کسی خطرے کا کیا مطلب ہے، کیا چیز امکانات کو بدل سکتی ہے، کوئی عدد کیسے نکالا گیا۔ جوابات اسی تجزیے پر مبنی ہیں اور سرمایہ کاری کا مشورہ نہیں ہیں۔';

  @override
  String get askHint => 'سوال پوچھیں…';

  @override
  String get askSend => 'بھیجیں';

  @override
  String get askThinking => 'سوچ رہا ہے…';

  @override
  String get askSuggest1 => 'سب سے بڑا خطرہ کیا ہے؟';

  @override
  String get askSuggest2 => 'کیا چیز امکانات کو بدل سکتی ہے؟';

  @override
  String get askSuggest3 => 'آسان الفاظ میں سمجھائیں';

  @override
  String get askMaxReached =>
      'یہ اس تجزیے کا آخری سوال تھا۔ مزید پوچھنے کے لیے نیا تجزیہ تیار کریں۔';

  @override
  String get errAskLimit =>
      'آپ آج کے سوالات کی حد تک پہنچ گئے ہیں۔ براہ کرم کل دوبارہ کوشش کریں۔';

  @override
  String get eventTomorrow => 'کل';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days دن میں',
      one: '1 دن میں',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'سہ ماہی نتائج';

  @override
  String get eventBeforeOpen => 'مارکیٹ کھلنے سے پہلے';

  @override
  String get eventAfterClose => 'مارکیٹ بند ہونے کے بعد';

  @override
  String eventEpsEstimate(String value) {
    return 'متوقع EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'آپ کے تجزیے سے';

  @override
  String get eventsHint =>
      'اگلے 90 دنوں میں آپ کے پسندیدہ اور پورٹ فولیو اسٹاکس کے نتائج کی تاریخیں، اور وہ تاریخ والے واقعات جن کی نشاندہی آپ کے تجزیوں نے کی۔';

  @override
  String get eventsEmpty =>
      'اگلے 90 دنوں میں کوئی تاریخ والا واقعہ نہیں۔ یہاں ان کے نتائج کی تاریخیں دیکھنے کے لیے پسندیدہ یا پورٹ فولیو اسٹاکس شامل کریں۔';

  @override
  String get compareTitle => 'موازنہ';

  @override
  String get compareAdd => 'اسٹاک شامل کریں';

  @override
  String get compareRemove => 'ہٹائیں';

  @override
  String get compareTickerHint => 'ٹکر، مثلاً MSFT';

  @override
  String get compareHint =>
      'اہم اعداد و شمار ساتھ ساتھ؛ ہر قطار میں بہترین قدر نمایاں ہے۔ رقوم ہر اسٹاک کی اپنی کرنسی میں ہیں۔';

  @override
  String get compareNoAnalysis => 'ابھی کوئی تجزیہ نہیں';

  @override
  String get portfolioDividends => 'سالانہ ڈیویڈنڈ';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent ییلڈ';
  }

  @override
  String get portfolioDividendNote =>
      'متوقع سالانہ ڈیویڈنڈ گزشتہ 12 ماہ میں ادا کیے گئے ڈیویڈنڈ پر مبنی ہے؛ مستقبل کی ادائیگیوں کی ضمانت نہیں۔';

  @override
  String positionDividend(String amount) {
    return 'ڈیویڈنڈ: سالانہ $amount';
  }

  @override
  String get chartAvgCost => 'آپ کی اوسط';

  @override
  String get chartAlertLevel => 'الرٹ';

  @override
  String get marketsToday => 'آج کی مارکیٹیں';

  @override
  String get notesTitle => 'میرے نوٹس';

  @override
  String get notesHint =>
      'آپ نے اسے کیوں خریدا، آپ کس چیز پر نظر رکھ رہے ہیں، کس بات پر آپ اسے بیچیں گے؟';

  @override
  String get notesInfo =>
      'صرف اسی ڈیوائس پر محفوظ ہوتا ہے۔ AI تجزیہ آپ کے نوٹس کو مدِنظر رکھتا ہے۔';

  @override
  String notesSaved(String date) {
    return 'محفوظ کیا گیا $date';
  }

  @override
  String get peersTitle => 'ملتی جلتی کمپنیاں';

  @override
  String get portfolioExport => 'CSV کے طور پر ایکسپورٹ کریں';

  @override
  String get portfolioImport => 'CSV سے امپورٹ کریں';

  @override
  String get portfolioImportHint =>
      'ہر سطر میں ایک خریداری پیسٹ کریں: ٹکر، مقدار، قیمت، کرنسی، تاریخ (YYYY-MM-DD)۔ کالموں کو کوما، سیمی کولن یا ٹیب سے الگ کیا جا سکتا ہے؛ ہیڈر کی سطر اختیاری ہے۔';

  @override
  String get portfolioImportButton => 'امپورٹ کریں';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count خریداریاں شامل کر دی گئیں',
      one: '1 خریداری شامل کر دی گئی',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count سطریں چھوڑ دی گئیں',
      one: '1 سطر چھوڑ دی گئی',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'پورٹ فولیو، پسندیدہ، قیمت کے الرٹس اور نوٹس آپ کے تمام آلات پر سنک ہوتے ہیں۔';

  @override
  String syncLast(String time) {
    return 'آخری سنک: $time';
  }

  @override
  String get syncNow => 'ابھی سنک کریں';

  @override
  String get syncFailed => 'سنک ناکام ہو گیا۔ یہ خود بخود دوبارہ کوشش کرے گا۔';

  @override
  String get alertEmailTitle => 'الرٹ ٹرگر ہونے پر ای میل';

  @override
  String get alertEmailOn =>
      'ہم ہر چند منٹ بعد آپ کے الرٹس چیک کرتے ہیں اور ایپ بند ہونے پر بھی آپ کو ای میل بھیجتے ہیں۔';

  @override
  String get alertEmailSignIn =>
      'ایپ بند ہونے پر بھی ای میل کے ذریعے الرٹس پانے کے لیے ترتیبات میں اپنے ای میل سے سائن ان کریں۔';

  @override
  String get portfolioHistory => 'وقت کے ساتھ مالیت';

  @override
  String get portfolioReviewTitle => 'AI پورٹ فولیو جائزہ';

  @override
  String get portfolioReviewIntro =>
      'AI آپ کے پورے پورٹ فولیو کا جائزہ لیتا ہے: ارتکاز، شعبوں اور کرنسیوں کا خطرہ، آپ کے شیئرز کے مشترکہ خطرات، اور ڈیویڈنڈ۔ 1 تجزیہ استعمال ہوتا ہے۔';

  @override
  String get portfolioReviewButton => 'میرے پورٹ فولیو کا جائزہ لیں';

  @override
  String get portfolioReviewAgain => 'دوبارہ جائزہ لیں';

  @override
  String get portfolioReviewWorking =>
      'آپ کے پورٹ فولیو کا جائزہ لیا جا رہا ہے…';

  @override
  String get digestTitle => 'ای میل کے ذریعے ہفتہ وار خلاصہ';

  @override
  String get digestHint =>
      'ہر پیر: پچھلے ہفتے آپ کے پسندیدہ اور پورٹ فولیو کیسے چلے، اور ان کے آنے والے نتائج کی تاریخیں۔';

  @override
  String get benchmarkTitle => 'S&P 500 سے موازنہ';

  @override
  String get benchmarkYours => 'آپ کی خریداریاں';

  @override
  String get benchmarkIndex => 'اتنی ہی رقم S&P 500 میں';

  @override
  String benchmarkAhead(String points) {
    return 'انڈیکس سے $points فیصد پوائنٹس بہتر';
  }

  @override
  String benchmarkBehind(String points) {
    return 'انڈیکس سے $points فیصد پوائنٹس پیچھے';
  }

  @override
  String get benchmarkHint =>
      'گویا ہر خریداری کی رقم اسی دن S&P 500 انڈیکس فنڈ میں لگائی گئی ہو۔ ڈیویڈنڈ شامل نہیں؛ ماضی کا منافع مستقبل کے منافع کی پیش گوئی نہیں کرتا۔';

  @override
  String get portfolioSell => 'فروخت کریں';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbol فروخت کریں';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'فی شیئر فروخت قیمت ($currency)';
  }

  @override
  String get portfolioSellDate => 'فروخت کی تاریخ';

  @override
  String get portfolioSellAll => 'سب';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'آپ کے پاس $quantity ہیں';
  }

  @override
  String get portfolioSold => 'فروخت شدہ';

  @override
  String get portfolioRealized => 'حاصل شدہ';

  @override
  String get portfolioClosed => 'بند پوزیشنز';

  @override
  String get portfolioClosedNote => 'تمام شیئرز فروخت ہو گئے';

  @override
  String get portfolioTransactions => 'لین دین';

  @override
  String get portfolioRealizedByYear => 'سال وار حاصل شدہ منافع';

  @override
  String get portfolioRealizedHint =>
      'فروخت کو پہلے آپ کی سب سے پرانی خریداریوں سے ملایا جاتا ہے (FIFO)، آج کی شرح مبادلہ پر تبدیل کر کے۔ ٹیکس ریٹرن کے لیے اپنے بروکر کا اسٹیٹمنٹ استعمال کریں۔';

  @override
  String staleNewResults(String symbol, String date) {
    return 'اس تجزیے کے بعد نئے سہ ماہی نتائج جاری ہوئے ہیں ($symbol، $date)۔';
  }

  @override
  String get newResultsBadge => 'نئے نتائج';

  @override
  String get portfolioImportBrokers =>
      'Revolut، Trading 212 اور Interactive Brokers کی ایکسپورٹ فائلیں بھی فروخت سمیت پہچانی جاتی ہیں؛ ڈیویڈنڈ اور جمع شدہ رقم چھوڑ دی جاتی ہے۔';

  @override
  String get portfolioImportFile => 'فائل منتخب کریں';

  @override
  String offlineBanner(String time) {
    return 'کنکشن نہیں ہے – آخری بار محفوظ کیا گیا ڈیٹا دکھایا جا رہا ہے ($time)۔';
  }

  @override
  String get glossMarketCap =>
      'اسٹاک مارکیٹ میں پوری کمپنی کی مالیت: شیئر کی قیمت × شیئرز کی تعداد۔';

  @override
  String get glossSharesOutstanding =>
      'کمپنی نے کتنے شیئرز جاری کیے ہیں۔ اگر یہ تعداد بڑھے تو ہر شیئر کا حصہ چھوٹا ہو جاتا ہے؛ بائی بیک اسے کم کرتے ہیں۔';

  @override
  String get glossPeTrailing =>
      'قیمت ÷ پچھلے 12 مہینوں کا فی شیئر منافع: آپ موجودہ منافع کے کتنے سالوں کی قیمت ادا کر رہے ہیں۔ کم ہو تو سستا ہے، لیکن تیزی سے بڑھنے والی کمپنیوں کا P/E عموماً زیادہ ہوتا ہے۔';

  @override
  String get glossPeForward =>
      'P/E جیسا ہی، لیکن اس منافع کے ساتھ جس کی تجزیہ کار اگلے 12 مہینوں میں توقع کرتے ہیں۔ ٹریلنگ P/E سے کم ہو تو منافع بڑھنے کی توقع ہے۔';

  @override
  String get glossPb =>
      'قیمت ÷ فی شیئر بک ویلیو (اثاثے منفی قرضے)۔ تقریباً 1 کا مطلب ہے کہ مارکیٹ کمپنی کی اتنی ہی قدر لگاتی ہے جتنا کاغذ پر اس کے پاس ہے۔';

  @override
  String get glossPs =>
      'مارکیٹ ویلیو ÷ سالانہ آمدنی۔ ان کمپنیوں کے لیے مفید جن کا منافع ابھی کم ہے یا بالکل نہیں؛ اسے ایک ہی صنعت کے اندر موازنہ کریں۔';

  @override
  String get glossEvToFcf =>
      'قرض سمیت کمپنی کی مالیت (EV) ÷ وہ نقد رقم جو وہ سرمایہ کاری کے بعد ایک سال میں پیدا کرتی ہے۔ کم ہو تو آپ کو قیمت کے بدلے زیادہ نقد ملتا ہے۔';

  @override
  String get glossPeg =>
      'P/E ÷ متوقع سالانہ منافع میں اضافہ (%)۔ تقریباً 1 کو اکثر مناسب سمجھا جاتا ہے؛ یہ P/E کو ترقی کی روشنی میں دیکھتا ہے۔';

  @override
  String get glossEps =>
      'پچھلے 12 مہینوں میں فی شیئر منافع۔ سال بہ سال بڑھتا ہوا EPS ایک صحت مند کمپنی کی مضبوط ترین علامات میں سے ایک ہے۔';

  @override
  String get glossBeta =>
      'شیئر عام طور پر مارکیٹ کے ساتھ کتنا حرکت کرتا ہے: 1 = مارکیٹ جیسا، 1.5 = تقریباً 50% زیادہ اتار چڑھاؤ، 1 سے کم = زیادہ پرسکون۔';

  @override
  String get glossRevenueTtm =>
      'پچھلے 12 مہینوں کی کل فروخت، کسی بھی خرچ سے پہلے۔';

  @override
  String get glossNetIncomeTtm =>
      'پچھلے 12 مہینوں میں تمام اخراجات، سود اور ٹیکسوں کے بعد بچنے والا منافع۔';

  @override
  String get glossGrossMargin =>
      'مصنوعات کی براہ راست لاگت کے بعد بچنے والا آمدنی کا حصہ۔ زیادہ مارجن اکثر قیمت طے کرنے کی طاقت ظاہر کرتا ہے۔';

  @override
  String get glossOperatingMargin =>
      'کاروبار چلانے کے اخراجات (تنخواہیں، کرایہ، مارکیٹنگ) کے بعد، سود اور ٹیکسوں سے پہلے بچنے والا آمدنی کا حصہ۔';

  @override
  String get glossNetMargin =>
      'آمدنی کا وہ حصہ جو آخرکار منافع بنتا ہے۔ 20% کا مطلب ہے کہ ہر 100 کی فروخت میں سے 20 منافع ہے۔';

  @override
  String get glossRoe =>
      'ایکویٹی پر منافع: سالانہ منافع ÷ مالکان کا سرمایہ۔ دکھاتا ہے کہ انتظامیہ شیئر ہولڈرز کا پیسہ کتنی اچھی طرح استعمال کرتی ہے؛ تقریباً 15% سے اوپر مضبوط ہے۔';

  @override
  String get glossRoa =>
      'اثاثوں پر منافع: سالانہ منافع ÷ کمپنی کی ملکیت میں موجود ہر چیز۔ اسے ایک ہی صنعت کے اندر موازنہ کریں۔';

  @override
  String get glossDebtToEquity =>
      'قرضے ÷ مالکان کا سرمایہ۔ زیادہ ہو تو ادھار کا پیسہ زیادہ: شرحِ سود بڑھنے یا کاروبار سست ہونے پر زیادہ خطرہ۔';

  @override
  String get glossCurrentRatio =>
      'قلیل مدتی اثاثے ÷ ایک سال کے اندر واجب الادا بل۔ 1 سے اوپر کا مطلب ہے کہ کمپنی قریبی بل ادا کر سکتی ہے۔';

  @override
  String get glossRevenueGrowth =>
      'ایک سال پہلے کے مقابلے میں آمدنی کتنی بڑھی۔';

  @override
  String get glossEpsGrowth =>
      'ایک سال پہلے کے مقابلے میں فی شیئر منافع کتنا بڑھا۔';

  @override
  String get glossDividendYield =>
      'سالانہ ڈیویڈنڈ ÷ شیئر کی قیمت: وہ نقد آمدنی جو آپ کو ہر سال ملے گی، آپ کی ادا کردہ رقم کے فیصد کے طور پر۔';

  @override
  String get glossDividendPerShare =>
      'پچھلے ایک سال میں ایک شیئر پر ادا کیا گیا ڈیویڈنڈ۔';

  @override
  String get glossPayoutRatio =>
      'منافع کا وہ حصہ جو ڈیویڈنڈ کے طور پر ادا ہوتا ہے۔ 100% سے اوپر کمپنی اپنی کمائی سے زیادہ ادا کرتی ہے، جو شاذ و نادر ہی دیر تک چلتا ہے۔';

  @override
  String get glossTitle => 'اس کا کیا مطلب ہے؟';

  @override
  String get watchNewsTitle => 'آپ کے شیئرز کی خبریں';

  @override
  String get undo => 'کالعدم کریں';

  @override
  String get watchSort => 'ترتیب دیں';

  @override
  String get watchSortOwn => 'میری ترتیب';

  @override
  String get watchSortGainers => 'سب سے زیادہ بڑھنے والے پہلے';

  @override
  String get watchSortLosers => 'سب سے زیادہ گرنے والے پہلے';

  @override
  String get watchSortName => 'ٹکر کے مطابق (A–Z)';

  @override
  String get watchHint =>
      'ترتیب بدلنے کے لیے ہینڈل گھسیٹیں، ہٹانے کے لیے بائیں سوائپ کریں۔ لکیر پچھلے 30 دن دکھاتی ہے۔';

  @override
  String analysisReady(String symbol) {
    return '$symbol: آپ کا تجزیہ تیار ہے۔';
  }

  @override
  String alertFromCost(String price) {
    return 'آپ کی اوسط قیمتِ خرید ($price) سے:';
  }

  @override
  String get briefTitle => 'آج آپ کے شیئرز کے ساتھ';

  @override
  String get briefButton => 'آج کا خلاصہ';

  @override
  String get briefHint =>
      'آج آپ کا پورٹ فولیو اور پسندیدہ شیئرز کیسے چلے اور تازہ خبریں ان کے بارے میں کیا کہتی ہیں، اس کا مختصر AI خلاصہ۔ اس میں کوئی تجزیہ خرچ نہیں ہوتا۔';

  @override
  String get briefRefresh => 'اپ ڈیٹ کریں';

  @override
  String get sectionEarnings => 'سہ ماہی نتائج';

  @override
  String earningsNext(String date) {
    return 'اگلی رپورٹ: $date';
  }

  @override
  String get earningsExpected => 'متوقع EPS';

  @override
  String get earningsReported => 'رپورٹ شدہ EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'پچھلی $total سہ ماہیوں میں سے $beats میں متوقع EPS کے برابر یا زیادہ',
      one: '1 سہ ماہی میں سے $beats میں متوقع EPS کے برابر یا زیادہ',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol کل سہ ماہی نتائج جاری کرے گا';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol آج سہ ماہی نتائج جاری کرے گا';
  }

  @override
  String get earningsRemindersTitle => 'نتائج کی یاد دہانیاں';

  @override
  String get earningsRemindersSubtitle =>
      'آپ کے پسندیدہ یا پورٹ فولیو کے اسٹاکس کے سہ ماہی نتائج سے ایک دن پہلے اطلاع';

  @override
  String addAllToFavorites(int count) {
    return 'سب پسندیدہ میں شامل کریں ($count)';
  }

  @override
  String get portfolioImportPhoto => 'اسکرین شاٹ سے امپورٹ کریں';

  @override
  String get holdingsReading => 'آپ کی پوزیشنز پڑھی جا رہی ہیں…';

  @override
  String get holdingsReviewTitle => 'ملنے والی پوزیشنز';

  @override
  String get holdingsReviewHint =>
      'شامل کرنے سے پہلے اعداد چیک کریں۔ قیمت فی شیئر آپ کی اوسط خریداری قیمت ہے، آج کی قیمت نہیں۔';

  @override
  String get holdingsNoPrice => 'تصویر میں اوسط خریداری قیمت نہیں ہے';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count پوزیشنز شامل کریں',
      one: '1 پوزیشن شامل کریں',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'اس تصویر میں شیئرز کی کوئی پوزیشن نہیں ملی۔ اپنے بروکر کے پوزیشنز یا ہولڈنگز صفحے کا اسکرین شاٹ آزمائیں۔';

  @override
  String get week52Range => '52 ہفتوں کی حد';

  @override
  String week52BelowHigh(String percent) {
    return '52 ہفتوں کی بلند ترین سطح سے $percent نیچے';
  }

  @override
  String get week52AtHigh => '52 ہفتوں کی بلند ترین سطح پر';

  @override
  String get alertKindTrailing => 'چوٹی سے نیچے آئے';

  @override
  String get alertTrailingPercent => 'چوٹی سے گراوٹ (%)';

  @override
  String get alertTrailingHint =>
      'قیمت کے ساتھ اوپر چلتا ہے: سیٹ کرنے کے بعد کی بلند ترین سطح سے قیمت اتنی گرے تو اطلاع دیتا ہے۔';

  @override
  String alertDescTrailing(String percent) {
    return 'چوٹی سے $percent گراوٹ';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'اب تک کی چوٹی: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol چوٹی سے $percent گرا';
  }

  @override
  String get sectionInsiders => 'انسائیڈر لین دین';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count خریداریاں',
      one: '1 خریداری',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count فروخت',
      one: '1 فروخت',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'خالص: $shares شیئرز';
  }

  @override
  String get insiderBuy => 'خریدے';

  @override
  String get insiderSell => 'فروخت کیے';

  @override
  String get insiderHint =>
      'گزشتہ 90 دنوں میں ایگزیکٹوز اور ڈائریکٹرز کی جانب سے اوپن مارکیٹ میں کی گئی خریداریاں اور فروخت (SEC Form 4)۔ آپشنز کا استعمال اور شیئر ایوارڈز شمار نہیں کیے جاتے۔';

  @override
  String get insiderNone =>
      'گزشتہ 90 دنوں میں اوپن مارکیٹ میں کوئی انسائیڈر خریداری یا فروخت نہیں ہوئی۔';

  @override
  String get analystTrend => 'ماہ بہ ماہ آراء کیسے بدلیں';

  @override
  String get watchListAll => 'سب';

  @override
  String get watchListNew => 'نئی فہرست';

  @override
  String get watchListName => 'فہرست کا نام';

  @override
  String get watchListRename => 'فہرست کا نام بدلیں';

  @override
  String get watchListDelete => 'فہرست حذف کریں';

  @override
  String get watchListAddTo => 'فہرست میں شامل کریں';

  @override
  String get watchListEmpty =>
      'اس فہرست میں ابھی کوئی شیئر نہیں ہے۔ شامل کرنے کے لیے شیئر کے ساتھ فہرست بٹن پر ٹیپ کریں۔';

  @override
  String get portfolioAskTitle => 'آپ کے پورٹ فولیو کے بارے میں سوالات';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'بیک اپ';

  @override
  String get backupSave => 'بیک اپ محفوظ کریں';

  @override
  String get backupSaveHint =>
      'آپ کے پسندیدہ، فہرستیں، پورٹ فولیو، الرٹس اور نوٹس ایک فائل میں۔';

  @override
  String get backupRestore => 'بیک اپ سے بحال کریں';

  @override
  String get backupRestoreHint =>
      'فائل میں موجود چیزیں شامل کرتا ہے؛ آپ کے پاس اس وقت موجود کچھ بھی حذف نہیں ہوتا۔';

  @override
  String get backupRestored => 'بیک اپ بحال ہو گیا۔';

  @override
  String get backupInvalid => 'یہ فائل WhatStock بیک اپ نہیں ہے۔';

  @override
  String get allocationPositions => 'حصص';

  @override
  String get allocationSectors => 'شعبے';

  @override
  String get allocationCurrencies => 'کرنسیاں';

  @override
  String get compareReturn1y => '1 سالہ منافع';

  @override
  String get compareFromHigh => '52 ہفتوں کی بلند ترین سطح سے فاصلہ';

  @override
  String get briefAutoTitle => 'ہر صبح روزانہ خلاصہ';

  @override
  String get briefAutoSubtitle =>
      'جب تک ایپ چل رہی ہو، صبح 7:00 بجے کے بعد “آج آپ کے شیئرز کے ساتھ” خود بخود تیار ہو جاتا ہے؛ کمپیوٹر پر ایک اطلاع آپ کو بتا دیتی ہے۔ یہ آپ کی روزانہ سوالات کی حد سے جاتا ہے، کوئی تجزیہ خرچ نہیں ہوتا۔';

  @override
  String get targetsButton => 'ہدفی تقسیم';

  @override
  String get targetsTitle => 'ہدفی تقسیم';

  @override
  String get targetsHint =>
      'طے کریں کہ ہر حصص کو پورٹ فولیو کا کتنا حصہ ملنا چاہیے۔ کوئی ہدف نہ ہو تو خانہ خالی چھوڑ دیں۔ پھر ایپ دکھائے گی کہ وہاں پہنچنے کے لیے کیا خریدنا یا فروخت کرنا ہے۔';

  @override
  String targetsSum(String percent) {
    return 'کل: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'خریدیں ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'فروخت کریں ≈ $amount';
  }

  @override
  String get rebalanceOk => 'ہدف پر';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol متوقع EPS سے آگے نکل گیا';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol متوقع EPS سے پیچھے رہ گیا';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'رپورٹ شدہ EPS $actual، متوقع $estimate';
  }

  @override
  String get newsExplain => 'اس کا کیا مطلب ہے؟';

  @override
  String get newsExplainNote =>
      'صرف سرخی اور خلاصے پر مبنی AI وضاحت۔ یہ سرمایہ کاری کا مشورہ نہیں ہے۔ یہ آپ کی روزانہ سوالات کی حد سے جاتا ہے، کوئی تجزیہ خرچ نہیں ہوتا۔';

  @override
  String get watchAlertAll => 'بڑی روزانہ تبدیلی پر الرٹ';

  @override
  String get watchAlertAllHint =>
      'اس فہرست کے ہر شیئر کے لیے قیمت کا الرٹ: جب ایک دن میں اتنا اوپر یا نیچے ہو تو بتائے گا۔ جن شیئرز پر پہلے سے الرٹ ہے، ان کا وہی رہے گا۔';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count الرٹ سیٹ کر دیے گئے',
      one: '1 الرٹ سیٹ کر دیا گیا',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'حاصل شدہ منافع ایکسپورٹ کریں (CSV)';

  @override
  String get portfolioAnnualReturn => 'سالانہ ریٹرن';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / سال';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'رقم کے لحاظ سے وزنی سالانہ ریٹرن (XIRR): یہ دیکھتا ہے کہ آپ نے کب خریدا اور بیچا، اس لیے بعد میں شامل کی گئی رقم اسے بگاڑتی نہیں۔ آپ کی پہلی خریداری کم از کم ایک سال پرانی ہونے پر دکھایا جاتا ہے؛ ڈیویڈنڈ شامل نہیں۔';

  @override
  String get eventsAddToCalendar => 'کیلنڈر میں شامل کریں (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'پورٹ فولیو الرٹ';

  @override
  String get portfolioMoveAlertSubtitle =>
      'جب آپ کا پورا پورٹ فولیو ایک دن میں اتنا ہلے تو اطلاع۔';

  @override
  String get portfolioMoveAlertOff => 'بند';

  @override
  String portfolioMoveUp(String percent) {
    return 'آج آپ کا پورٹ فولیو $percent بڑھا';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'آج آپ کا پورٹ فولیو $percent گرا';
  }

  @override
  String get whatIfTitle => 'اگر آپ نے سرمایہ کاری کی ہوتی؟';

  @override
  String get whatIfAmount => 'رقم';

  @override
  String whatIfResult(String amount, String period) {
    return '$period پہلے لگائے گئے $amount کی آج مالیت ہوتی';
  }

  @override
  String get whatIfNote =>
      'صرف شیئر کی قیمت پر مبنی: ڈیویڈنڈ، فیس اور ٹیکس شامل نہیں۔ ماضی کا منافع مستقبل کے منافع کی پیش گوئی نہیں کرتا۔';

  @override
  String get watchShare => 'فہرست شیئر کریں';

  @override
  String get watchImport => 'ٹکر شامل کریں';

  @override
  String get watchImportHint =>
      'کوما، اسپیس یا نئی سطر سے الگ کیے گئے ٹکر پیسٹ کریں – مثلاً کوئی فہرست جو کسی نے آپ کے ساتھ شیئر کی ہو۔';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count شیئرز شامل کر دیے گئے',
      one: '1 شیئر شامل کر دیا گیا',
      zero: 'کوئی نیا شیئر نہیں',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'سب سے بڑے پہلے';

  @override
  String get positionsSortGain => 'سب سے زیادہ کل منافع والے پہلے';

  @override
  String get positionsSortToday => 'آج کے بہترین پہلے';

  @override
  String get chartMyBuys => 'آپ کی خریداریاں';

  @override
  String get chartMySells => 'آپ کی فروخت';

  @override
  String get shortcutsTitle => 'کی بورڈ شارٹ کٹس';

  @override
  String usMarketOpen(String time) {
    return 'امریکی مارکیٹ کھلی ہے · $time میں بند ہوگی';
  }

  @override
  String usMarketClosed(String time) {
    return 'امریکی مارکیٹ بند ہے · $time میں کھلے گی';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes منٹ';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours گھنٹے $minutes منٹ';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days دن $hours گھنٹے';
  }

  @override
  String get portfolioGoalSet => 'ہدف مقرر کریں';

  @override
  String get portfolioGoalTitle => 'پورٹ فولیو کا ہدف';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · ہدف: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'ہدف حاصل ہو گیا: $amount';
  }

  @override
  String get portfolioGoalRemove => 'ہدف ہٹائیں';

  @override
  String get alertEdit => 'الرٹ میں ترمیم کریں';
}
