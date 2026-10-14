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
}
