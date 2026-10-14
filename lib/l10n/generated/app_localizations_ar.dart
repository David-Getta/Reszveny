// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'صوّر سهماً وتعرّف على كل شيء عنه.';

  @override
  String get homeHint =>
      'شهادة أسهم، أو شاشة تطبيق وساطة، أو صحيفة، أو شعار شركة – أي شيء يحدد السهم.';

  @override
  String get takePhoto => 'التقاط صورة';

  @override
  String get chooseFromGallery => 'اختيار من المعرض';

  @override
  String get chooseImage => 'اختيار صورة';

  @override
  String get enterTickerManually => 'إدخال رمز السهم يدوياً';

  @override
  String get tickerInputLabel => 'رمز السهم';

  @override
  String get tickerInputHint => 'مثال: AAPL';

  @override
  String get lookUp => 'بحث';

  @override
  String demoModeBanner(String symbols) {
    return 'الوضع التجريبي – لم يتم تكوين مفتاح بيانات السوق. تتوفر بيانات نموذجية لـ: $symbols.';
  }

  @override
  String get recognizing => 'جارٍ تحليل الصورة…';

  @override
  String get loadingData => 'جارٍ تحميل البيانات…';

  @override
  String get noCandidatesTitle => 'لم يتم التعرف على أي سهم';

  @override
  String get noCandidatesBody =>
      'لم نتمكن من تحديد سهم في هذه الصورة. جرّب صورة أوضح أو أدخل رمز السهم يدوياً.';

  @override
  String get whatWeSaw => 'ما رأيناه';

  @override
  String get chooseCandidateTitle => 'أي سهم تقصد؟';

  @override
  String confidencePercent(int percent) {
    return 'ثقة بنسبة $percent%';
  }

  @override
  String get settings => 'الإعدادات';

  @override
  String get language => 'اللغة';

  @override
  String get systemLanguage => 'الافتراضي للنظام';

  @override
  String get about => 'حول التطبيق';

  @override
  String get disclaimer =>
      'يقدّم هذا التطبيق معلومات فقط ولا يُعدّ نصيحة استثمارية. قد تكون البيانات متأخرة أو غير دقيقة.';

  @override
  String dataSource(String source) {
    return 'مصدر البيانات: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'التعرف: $source';
  }

  @override
  String get retry => 'إعادة المحاولة';

  @override
  String get cancel => 'إلغاء';

  @override
  String get ok => 'موافق';

  @override
  String get close => 'إغلاق';

  @override
  String get errorGeneric => 'حدث خطأ ما.';

  @override
  String get errorSectionUnavailable => 'تعذر تحميل هذا القسم.';

  @override
  String get notAvailable => 'غير متاح';

  @override
  String get sectionIdentity => 'التعريف';

  @override
  String get sectionPrice => 'السعر';

  @override
  String get sectionValuation => 'التقييم';

  @override
  String get sectionFinancials => 'البيانات المالية';

  @override
  String get sectionDividend => 'التوزيعات';

  @override
  String get sectionProfile => 'ملف الشركة';

  @override
  String get sectionAnalysts => 'تقييمات المحللين';

  @override
  String get sectionNews => 'الأخبار';

  @override
  String get sectionRecognition => 'تفاصيل التعرف';

  @override
  String get labelSymbol => 'رمز السهم';

  @override
  String get labelExchange => 'البورصة';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'العملة';

  @override
  String get labelCountry => 'الدولة';

  @override
  String get labelIndustry => 'الصناعة';

  @override
  String get labelSector => 'القطاع';

  @override
  String get labelWebsite => 'الموقع الإلكتروني';

  @override
  String get labelIpoDate => 'تاريخ IPO';

  @override
  String get labelMarketCap => 'القيمة السوقية';

  @override
  String get labelSharesOutstanding => 'الأسهم القائمة';

  @override
  String get labelEmployees => 'الموظفون';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'المقر الرئيسي';

  @override
  String get labelDescription => 'الوصف';

  @override
  String get labelLastPrice => 'آخر سعر';

  @override
  String get labelChange => 'التغير';

  @override
  String get labelOpen => 'الافتتاح';

  @override
  String get labelDayHigh => 'أعلى سعر اليوم';

  @override
  String get labelDayLow => 'أدنى سعر اليوم';

  @override
  String get labelPreviousClose => 'الإغلاق السابق';

  @override
  String get labelWeek52High => 'أعلى سعر في 52 أسبوعاً';

  @override
  String get labelWeek52Low => 'أدنى سعر في 52 أسبوعاً';

  @override
  String get labelAverageVolume10d => 'متوسط حجم التداول (10 أيام)';

  @override
  String updatedAt(String time) {
    return 'آخر تحديث $time';
  }

  @override
  String get labelPeTrailing => 'P/E (تاريخي)';

  @override
  String get labelPeForward => 'P/E (مستقبلي)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / التدفق النقدي الحر';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'بيتا';

  @override
  String get labelRevenueTtm => 'الإيرادات (TTM)';

  @override
  String get labelNetIncomeTtm => 'صافي الدخل (TTM)';

  @override
  String get labelGrossMargin => 'هامش الربح الإجمالي';

  @override
  String get labelOperatingMargin => 'هامش الربح التشغيلي';

  @override
  String get labelNetMargin => 'هامش الربح الصافي';

  @override
  String get labelRoe => 'العائد على حقوق الملكية';

  @override
  String get labelRoa => 'العائد على الأصول';

  @override
  String get labelDebtToEquity => 'الدين / حقوق الملكية';

  @override
  String get labelCurrentRatio => 'نسبة السيولة الجارية';

  @override
  String get labelRevenueGrowth => 'نمو الإيرادات (YoY)';

  @override
  String get labelEpsGrowth => 'نمو EPS (YoY)';

  @override
  String get labelDividendYield => 'عائد التوزيعات';

  @override
  String get labelDividendPerShare => 'التوزيعات لكل سهم';

  @override
  String get labelPayoutRatio => 'نسبة التوزيع';

  @override
  String get labelConsensus => 'الإجماع';

  @override
  String get ratingStrongBuy => 'شراء قوي';

  @override
  String get ratingBuy => 'شراء';

  @override
  String get ratingHold => 'احتفاظ';

  @override
  String get ratingSell => 'بيع';

  @override
  String get ratingStrongSell => 'بيع قوي';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count محلل',
      many: '$count محللاً',
      few: '$count محللين',
      two: 'محللان',
      one: 'محلل واحد',
      zero: 'لا يوجد محللون',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'الفترة: $period';
  }

  @override
  String get noNews => 'لا توجد أخبار حديثة.';

  @override
  String get openArticle => 'فتح المقال';

  @override
  String get openLinkFailed => 'تعذر فتح الرابط.';

  @override
  String get recognitionSummary => 'الملخص';

  @override
  String get recognitionEvidence => 'لماذا نعتقد ذلك';

  @override
  String get recognitionRawText => 'النص المقروء من الصورة';

  @override
  String get errMissingAnthropicKey =>
      'لم يتم تكوين التعرف على الصور (لا يوجد ANTHROPIC_API_KEY). أدخل رمز السهم يدوياً.';

  @override
  String get errRecognitionUnreachable =>
      'تعذر الوصول إلى خدمة التعرف. تحقق من اتصالك بالإنترنت.';

  @override
  String errRecognitionHttp(String status) {
    return 'أعادت خدمة التعرف خطأً (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'لم تتمكن خدمة التعرف من معالجة هذه الصورة.';

  @override
  String get errRecognitionTruncated =>
      'تم اقتطاع استجابة التعرف. يرجى المحاولة مرة أخرى.';

  @override
  String get errRecognitionBadResponse => 'استجابة غير متوقعة من خدمة التعرف.';

  @override
  String get errRecognitionEmpty => 'أعادت خدمة التعرف استجابة فارغة.';

  @override
  String get errMissingFinnhubKey =>
      'لم يتم تكوين بيانات السوق (لا يوجد FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'تعذر الوصول إلى خدمة بيانات السوق. تحقق من اتصالك بالإنترنت.';

  @override
  String get errMarketRateLimited =>
      'طلبات كثيرة جداً إلى خدمة بيانات السوق. يرجى الانتظار دقيقة.';

  @override
  String errMarketHttp(String status) {
    return 'أعادت خدمة بيانات السوق خطأً (HTTP $status).';
  }

  @override
  String get errMarketBadResponse => 'استجابة غير متوقعة من خدمة بيانات السوق.';

  @override
  String errNoQuote(String symbol) {
    return 'لم يتم العثور على بيانات سعر لـ $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'لم يتم العثور على ملف شركة لـ $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'الوضع التجريبي يدعم $symbols فقط. أضف FINNHUB_API_KEY للحصول على بيانات مباشرة.';
  }

  @override
  String errUnknown(String detail) {
    return 'حدث خطأ ما: $detail';
  }

  @override
  String get newSearch => 'بحث جديد';

  @override
  String get recentSearches => 'الأخيرة';

  @override
  String get noRecentSearches => 'لا توجد عمليات بحث أخيرة بعد.';

  @override
  String get clearRecent => 'مسح الأخيرة';

  @override
  String get greeting => 'أي سهم نلقي نظرة عليه؟';

  @override
  String get searchHint => 'رمز السهم أو اسم الشركة';

  @override
  String get attachImage => 'إرفاق صورة';

  @override
  String get searchResultsTitle => 'نتائج البحث';

  @override
  String errNoResults(String query) {
    return 'لم يتم العثور على أسهم لـ “$query”.';
  }

  @override
  String get quickBarHint => 'اكتب رمز السهم أو اسم الشركة…';

  @override
  String get openFullWindow => 'فتح النافذة';

  @override
  String hotkeyHint(String shortcut) {
    return 'اضغط $shortcut في أي مكان لاستدعاء WhatStock.';
  }

  @override
  String get trayOpen => 'فتح WhatStock';

  @override
  String get trayQuickSearch => 'بحث سريع';

  @override
  String get trayQuit => 'إنهاء';

  @override
  String get appearance => 'المظهر';

  @override
  String get themeSystem => 'النظام';

  @override
  String get themeDark => 'داكن';

  @override
  String get themeLight => 'فاتح';

  @override
  String get back => 'رجوع';

  @override
  String get aiSectionTitle => 'تحليل بالذكاء الاصطناعي';

  @override
  String get aiIntro =>
      'نظرة عامة مفصّلة مكتوبة بالذكاء الاصطناعي: ملخص لآخر الأخبار، ونشاط الشركة، ونقاط القوة، والمخاطر والعوامل الخفية، والتقييم، وتوقعات للسعر مع سيناريوهات من زوايا نفسية واجتماعية وتقنية وكلية، وما يجب متابعته.';

  @override
  String get aiGenerate => 'إنشاء التحليل';

  @override
  String get aiRegenerate => 'إعادة الإنشاء';

  @override
  String get aiGenerating =>
      'جارٍ إعداد التحليل… قد يستغرق ذلك دقيقة أو دقيقتين.';

  @override
  String get aiSources => 'المصادر';

  @override
  String aiGeneratedAt(String time) {
    return 'تم الإنشاء $time';
  }

  @override
  String get aiDisclaimer =>
      'تحليل مُنشأ بالذكاء الاصطناعي استناداً إلى بيانات عامة وأخبار حديثة. قد يحتوي على أخطاء أو يكون قديماً، ولا يُعدّ نصيحة استثمارية.';

  @override
  String get errAiNotConfigured =>
      'لم يتم تكوين التحليل بالذكاء الاصطناعي (لا يوجد ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'تعذر الوصول إلى خدمة الذكاء الاصطناعي. تحقق من اتصالك بالإنترنت.';

  @override
  String errAiHttp(String status) {
    return 'أعادت خدمة الذكاء الاصطناعي خطأً (HTTP $status).';
  }

  @override
  String get errAiRefused => 'رفضت خدمة الذكاء الاصطناعي تحليل هذا السهم.';

  @override
  String get errAiBadResponse => 'استجابة غير متوقعة من خدمة الذكاء الاصطناعي.';

  @override
  String get sectionChart => 'الرسم البياني للسعر';

  @override
  String get rangeOneWeek => 'أسبوع';

  @override
  String get rangeOneMonth => 'شهر';

  @override
  String get rangeThreeMonths => '3 أشهر';

  @override
  String get rangeOneYear => 'سنة';

  @override
  String get rangeFiveYears => '5 سنوات';

  @override
  String get chartUnavailable =>
      'سجل الأسعار غير متاح من مصدر البيانات الحالي.';

  @override
  String get sectionStatements => 'القوائم المالية (سنوية)';

  @override
  String get labelFiscalYear => 'السنة المالية';

  @override
  String get labelRevenue => 'الإيرادات';

  @override
  String get labelNetIncome => 'صافي الدخل';

  @override
  String get labelTotalAssets => 'إجمالي الأصول';

  @override
  String get labelTotalLiabilities => 'إجمالي الالتزامات';

  @override
  String get labelEquity => 'حقوق المساهمين';

  @override
  String get labelOperatingCashFlow => 'التدفق النقدي التشغيلي';

  @override
  String get statementsUnavailable =>
      'القوائم المالية المعلنة غير متاحة لهذا السهم.';

  @override
  String get launchAtLogin => 'التشغيل عند تسجيل الدخول';

  @override
  String get hotkeyLabel => 'اختصار عام';

  @override
  String get hotkeyRecordHint => 'انقر هنا ثم اضغط على مجموعة المفاتيح الجديدة';

  @override
  String get hotkeyReset => 'إعادة التعيين إلى الافتراضي';

  @override
  String get pasteImage => 'لصق صورة من الحافظة';

  @override
  String get errClipboardNoImage => 'لا توجد صورة في الحافظة.';

  @override
  String get favorites => 'المفضلة';

  @override
  String get addToFavorites => 'إضافة إلى المفضلة';

  @override
  String get removeFromFavorites => 'إزالة من المفضلة';

  @override
  String get noFavorites =>
      'لا توجد مفضلات بعد. انقر على النجمة بجانب سهم لإضافته.';

  @override
  String get displayCurrency => 'عملة العرض';

  @override
  String get displayCurrencyNone => 'عملة السهم الأصلية فقط';

  @override
  String labelConverted(String currency) {
    return '≈ بعملة $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'سعر الصرف: 1 $from = $rate $to (ECB، $date)';
  }

  @override
  String get updates => 'التحديثات';

  @override
  String currentVersion(String version) {
    return 'الإصدار $version';
  }

  @override
  String get autoUpdate => 'تثبيت التحديثات تلقائيًا';

  @override
  String get checkForUpdates => 'التحقق من التحديثات';

  @override
  String get updateChecking => 'جارٍ التحقق من التحديثات…';

  @override
  String get updateUpToDate => 'أنت تستخدم أحدث إصدار.';

  @override
  String updateAvailable(String version) {
    return 'الإصدار $version متاح.';
  }

  @override
  String get updateDownloading => 'جارٍ تنزيل التحديث في الخلفية…';

  @override
  String get updateDownloaded => 'التحديث جاهز. أعد التشغيل لتثبيته.';

  @override
  String get updateNow => 'تحديث';

  @override
  String get restartNow => 'إعادة التشغيل';

  @override
  String get updatesViaStore => 'تصل التحديثات تلقائيًا عبر متجر التطبيقات.';

  @override
  String get updateCheckFailed => 'تعذر التحقق من التحديثات.';

  @override
  String get subscription => 'الاشتراك';

  @override
  String get planTrial => 'تجريبي';

  @override
  String get planNormal => 'عادي';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'لا توجد خطة نشطة';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count تحليل في الشهر';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'تجربة مجانية لمدة $days يوم تتضمن $count تحليل';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'بقي $days يوم من الفترة التجريبية',
      many: 'بقي $days يوماً من الفترة التجريبية',
      few: 'بقيت $days أيام من الفترة التجريبية',
      two: 'بقي يومان من الفترة التجريبية',
      one: 'بقي يوم واحد من الفترة التجريبية',
      zero: 'لم يبقَ أي يوم من الفترة التجريبية',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'انتهت فترتك التجريبية المجانية. اختر خطة لمتابعة التحليل.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'بقي $remaining من $total تحليل في هذه الفترة';
  }

  @override
  String extraCredits(int count) {
    return '$count تحليل إضافي';
  }

  @override
  String renewsOn(String date) {
    return 'يتجدد في $date';
  }

  @override
  String get choosePlan => 'اختر خطة';

  @override
  String get currentPlan => 'الخطة الحالية';

  @override
  String get subscribe => 'اشترك';

  @override
  String get perMonth => '/ شهر';

  @override
  String get extraPacksTitle => 'تحتاج إلى المزيد؟ اشترِ تحليلات إضافية';

  @override
  String get extraPacksHint =>
      'التحليلات الإضافية لا تنتهي صلاحيتها أبداً وتُستخدم بعد استهلاك حصتك الشهرية.';

  @override
  String get buy => 'شراء';

  @override
  String get restorePurchases => 'استعادة المشتريات';

  @override
  String get manageSubscription => 'إدارة الاشتراك';

  @override
  String get purchaseSuccess => 'شكراً! عملية الشراء نشطة الآن.';

  @override
  String get purchasePending => 'عملية الشراء قيد الانتظار…';

  @override
  String get purchaseFailed => 'تعذر إكمال عملية الشراء.';

  @override
  String get purchaseCanceled => 'تم إلغاء عملية الشراء.';

  @override
  String get billingUnavailable =>
      'المشتريات غير متاحة على هذه المنصة حتى الآن. اشترك من هاتفك أو جهاز Mac؛ ستعمل خطتك على جميع الأجهزة.';

  @override
  String get errQuotaExceeded =>
      'لم يبقَ لديك أي تحليلات لهذه الفترة. قم بترقية خطتك أو اشترِ تحليلات إضافية.';

  @override
  String get errTrialExpired =>
      'انتهت فترتك التجريبية المجانية. اختر خطة للمتابعة.';

  @override
  String get errNoPlan => 'يلزم وجود خطة نشطة للتحليل بالذكاء الاصطناعي.';

  @override
  String get viewPlans => 'عرض الخطط';

  @override
  String get usageTitle => 'الاستخدام';

  @override
  String get demoPurchaseNote =>
      'فوترة تجريبية: عمليات الشراء على هذه المنصة محاكاة فقط.';

  @override
  String get mostPopular => 'الأكثر شيوعاً';

  @override
  String get bestValue => 'أفضل قيمة';

  @override
  String get planFeaturesCommon =>
      'التعرف على الصور والبيانات المباشرة والرسوم البيانية والمفضلة وجميع اللغات الـ120 مضمّنة في كل خطة. تغطي الحصة التحليلات بالذكاء الاصطناعي.';

  @override
  String get searchLanguages => 'ابحث عن لغة…';

  @override
  String get noLanguageMatch => 'لا توجد لغة مطابقة.';

  @override
  String get aiSettings => 'تحليل بالذكاء الاصطناعي';

  @override
  String get aiLength => 'الطول';

  @override
  String get aiDepthBrief => 'موجز';

  @override
  String get aiDepthStandard => 'قياسي';

  @override
  String get aiDepthDeep => 'معمّق';

  @override
  String get aiDepthBriefDesc => 'الأساسيات بسرعة.';

  @override
  String get aiDepthStandardDesc => 'تقرير كامل بجميع الأقسام.';

  @override
  String get aiDepthDeepDesc =>
      'مزيد من عمليات البحث على الويب، ومقارنة بالشركات المنافسة، وتفاصيل أعمق.';

  @override
  String aiDepthWords(String min, String max) {
    return 'نحو $min–$max كلمة';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'يستهلك $count تحليل',
      many: 'يستهلك $count تحليلاً',
      few: 'يستهلك $count تحليلات',
      two: 'يستهلك تحليلين',
      one: 'يستهلك تحليلاً واحداً',
      zero: 'لا يستهلك أي تحليل',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'مستوى القارئ';

  @override
  String get aiReaderBeginner => 'مبتدئ';

  @override
  String get aiReaderExperienced => 'متمرّس';

  @override
  String get aiReaderBeginnerDesc => 'لغة بسيطة، مع شرح كل مصطلح تقني.';

  @override
  String get aiReaderExperiencedDesc =>
      'نص أكثر كثافة بالمصطلحات المالية المعتادة.';

  @override
  String get aiCounterArgument => 'أقوى حجة مضادة';

  @override
  String get aiCounterArgumentDesc =>
      'يُختتم الملخص دائماً بأقوى حجة ضد استنتاجه.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'حتى $count عملية بحث على الويب لكل تحليل ضمن خطتك',
      many: 'حتى $count عملية بحث على الويب لكل تحليل ضمن خطتك',
      few: 'حتى $count عمليات بحث على الويب لكل تحليل ضمن خطتك',
      two: 'حتى بحثين على الويب لكل تحليل ضمن خطتك',
      one: 'حتى بحث واحد على الويب لكل تحليل ضمن خطتك',
      zero: 'لا يشمل التحليل أي بحث على الويب ضمن خطتك',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'عمليات البحث على الويب في الطول القياسي حسب الخطة: عادي $normal، Pro $pro، Max $max، Ultra $ultra. يستخدم الموجز عمليتين أقل، والمعمّق عمليتين أكثر.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'حتى $count عملية بحث على الويب',
      many: 'حتى $count عملية بحث على الويب',
      few: 'حتى $count عمليات بحث على الويب',
      two: 'حتى بحثين على الويب',
      one: 'حتى بحث واحد على الويب',
      zero: 'بدون بحث على الويب',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count عملية بحث على الويب لكل تحليل',
      many: '$count عملية بحث على الويب لكل تحليل',
      few: '$count عمليات بحث على الويب لكل تحليل',
      two: 'بحثان على الويب لكل تحليل',
      one: 'بحث واحد على الويب لكل تحليل',
      zero: 'بدون بحث على الويب في التحليل',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'يتطلب هذا الطول عدداً من التحليلات قدره $needed، لكن المتبقي لديك $left فقط. اختر طولاً أقصر من الإعدادات أو احصل على مزيد من التحليلات.';
  }

  @override
  String get outlookMarketMood => 'مزاج السوق';

  @override
  String get moodVeryPessimistic => 'متشائم جداً';

  @override
  String get moodPessimistic => 'متشائم';

  @override
  String get moodNeutral => 'محايد';

  @override
  String get moodOptimistic => 'متفائل';

  @override
  String get moodVeryOptimistic => 'متفائل جداً';

  @override
  String get scenarioBull => 'السيناريو المتفائل';

  @override
  String get scenarioBase => 'السيناريو الأساسي';

  @override
  String get scenarioBear => 'السيناريو المتشائم';

  @override
  String outlookCurrentPrice(String price) {
    return 'السعر الحالي: $price';
  }

  @override
  String get outlookKeyLevels => 'المستويات الرئيسية';

  @override
  String get keyLevelSupport => 'الدعم';

  @override
  String get keyLevelResistance => 'المقاومة';

  @override
  String get keyLevelAnchor => 'المستوى المرجعي';

  @override
  String get upcomingEvents => 'الأحداث القادمة';

  @override
  String get outlookChartNote =>
      'نطاقات استرشادية؛ الاحتمالات تقديرات تقريبية وليست تنبؤات.';

  @override
  String get accountTitle => 'الحساب';

  @override
  String get signIn => 'تسجيل الدخول';

  @override
  String get signOut => 'تسجيل الخروج';

  @override
  String get notSignedIn => 'لم تسجّل الدخول';

  @override
  String get accountBenefit => 'سجّل الدخول ليعمل اشتراكك على جميع أجهزتك.';

  @override
  String get accountSyncedNote =>
      'اشتراكك والتحليلات المتبقية متطابقة على كل جهاز.';

  @override
  String get signInTitle => 'تسجيل الدخول إلى WhatStock';

  @override
  String get emailLabel => 'البريد الإلكتروني';

  @override
  String get continueWithEmail => 'المتابعة بالبريد الإلكتروني';

  @override
  String codeSentTo(String email) {
    return 'أرسلنا رمزًا مكوّنًا من 6 أرقام إلى $email. وهو صالح لمدة 10 دقائق.';
  }

  @override
  String get codeLabel => 'رمز تسجيل الدخول';

  @override
  String get resendCode => 'إرسال رمز جديد';

  @override
  String get useDifferentEmail => 'استخدام بريد إلكتروني آخر';

  @override
  String get errInvalidCode => 'الرمز غير صحيح أو انتهت صلاحيته.';

  @override
  String get errInvalidEmail => 'يرجى إدخال عنوان بريد إلكتروني صالح.';

  @override
  String get errSignInFailed =>
      'تعذّر تسجيل الدخول. تحقق من اتصالك وحاول مرة أخرى.';

  @override
  String get checkoutWaiting =>
      'أكمل الدفع في المتصفح. سيتم تحديث التطبيق تلقائيًا عند الانتهاء.';

  @override
  String get paymentViaStripe =>
      'دفع آمن في المتصفح عبر Stripe. يمكنك الإلغاء في أي وقت.';

  @override
  String get paymentViaStore =>
      'تتم الفوترة عبر حسابك في App Store أو Google Play. يمكنك الإلغاء في أي وقت من إعدادات المتجر.';

  @override
  String get keySpace => 'مسافة';

  @override
  String get doubleOptionTitle => 'الضغط مرتين على Option';

  @override
  String get doubleOptionSubtitle =>
      'يؤدي الضغط على مفتاح Option مرتين بسرعة أيضًا إلى استدعاء WhatStock.';

  @override
  String get doubleOptionPermission =>
      'لكي تعمل هذه الميزة في التطبيقات الأخرى أيضًا، اسمح لـ WhatStock من إعدادات النظام ← الخصوصية والأمن ← مراقبة الإدخال، ثم أعد فتح التطبيق.';

  @override
  String get openSystemSettings => 'فتح إعدادات النظام';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'اضغط $shortcut أو اضغط Option مرتين في أي مكان لاستدعاء WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'الأرجح';

  @override
  String get longTermToday => 'اليوم';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years سنة',
      many: '$years سنة',
      few: '$years سنوات',
      two: 'سنتان',
      one: 'سنة واحدة',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range سنويًا';
  }

  @override
  String longTermLikely(String price) {
    return 'الأرجح $price';
  }

  @override
  String get confidenceLow => 'ثقة منخفضة';

  @override
  String get confidenceMedium => 'ثقة متوسطة';

  @override
  String get confidenceHigh => 'ثقة عالية';

  @override
  String get longTermNote =>
      'تستند النطاقات طويلة الأجل إلى الافتراضات المذكورة وتتسع مع مرور الوقت. الأسعار لا تشمل توزيعات الأرباح. تقديرات تقريبية وليست تنبؤات.';

  @override
  String get portfolio => 'المحفظة';

  @override
  String get portfolioEmpty =>
      'لا شيء هنا بعد. افتح سهمًا وانقر على «إضافة إلى المحفظة» لمتابعة ما تملكه.';

  @override
  String get portfolioLocalNote =>
      'تُحفظ على هذا الجهاز فقط. تُحوَّل الإجماليات بأسعار الصرف المرجعية للبنك المركزي الأوروبي؛ وقد تتأخر الأسعار.';

  @override
  String get addToPortfolio => 'إضافة إلى المحفظة';

  @override
  String portfolioAddTitle(String symbol) {
    return 'إضافة $symbol';
  }

  @override
  String get portfolioQuantity => 'عدد الأسهم';

  @override
  String portfolioBuyPrice(String currency) {
    return 'سعر السهم ($currency)';
  }

  @override
  String get portfolioBuyDate => 'تاريخ الشراء';

  @override
  String get portfolioAdd => 'إضافة';

  @override
  String get portfolioInvalidNumber => 'أدخل رقمًا أكبر من صفر.';

  @override
  String portfolioAdded(String symbol) {
    return 'تمت إضافة $symbol إلى المحفظة.';
  }

  @override
  String get portfolioTotalValue => 'القيمة الإجمالية';

  @override
  String get portfolioToday => 'اليوم';

  @override
  String get portfolioGainLoss => 'الربح/الخسارة';

  @override
  String get portfolioInvested => 'المبلغ المستثمر';

  @override
  String get portfolioAllocation => 'التوزيع';

  @override
  String get portfolioPositions => 'المراكز';

  @override
  String portfolioAvgCost(String price) {
    return 'متوسط التكلفة $price';
  }

  @override
  String get portfolioYourPosition => 'مركزك';

  @override
  String get portfolioPurchases => 'عمليات الشراء';

  @override
  String get portfolioRemove => 'إزالة';

  @override
  String get portfolioExcluded =>
      'لا تُحتسب في الإجماليات المراكز التي ليس لها سعر أو سعر صرف.';

  @override
  String get priceAlerts => 'تنبيهات السعر';

  @override
  String get setPriceAlert => 'ضبط تنبيه سعر';

  @override
  String alertDialogTitle(String symbol) {
    return 'تنبيه سعر · $symbol';
  }

  @override
  String get alertKindAbove => 'يرتفع فوق';

  @override
  String get alertKindBelow => 'ينخفض تحت';

  @override
  String get alertKindMove => 'يتحرك كثيرًا خلال اليوم';

  @override
  String alertTargetPrice(String currency) {
    return 'السعر ($currency)';
  }

  @override
  String get alertMovePercent => 'الحركة اليومية (%)';

  @override
  String get alertAlreadyMet => 'تجاوز السعر هذا المستوى بالفعل.';

  @override
  String get alertSave => 'ضبط التنبيه';

  @override
  String alertCreated(String symbol) {
    return 'تم ضبط تنبيه لـ $symbol.';
  }

  @override
  String get alertsEmpty => 'لا توجد تنبيهات بعد. افتح سهمًا وانقر على الجرس.';

  @override
  String get alertsNote =>
      'تُفحص التنبيهات كل 5 دقائق أثناء تشغيل WhatStock. على الكمبيوتر يستمر التطبيق في شريط القوائم أو علبة النظام؛ وعلى الهاتف تصل التنبيهات حاليًا عندما يكون التطبيق مفتوحًا فقط.';

  @override
  String alertDescAbove(String price) {
    return 'فوق $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'تحت $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'حركة يومية ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'تفعّل في $date عند $price';
  }

  @override
  String get alertRearm => 'إعادة التفعيل';

  @override
  String get alertDelete => 'حذف';

  @override
  String alertHitAbove(String symbol, String price) {
    return 'ارتفع $symbol فوق $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return 'انخفض $symbol تحت $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return 'تحرك $symbol بنسبة $percent اليوم';
  }

  @override
  String alertHitBody(String price) {
    return 'السعر الحالي: $price';
  }

  @override
  String get alertOpen => 'فتح';

  @override
  String get keepInTrayTitle => 'الاستمرار بعد إغلاق النافذة';

  @override
  String get keepInTraySubtitle =>
      'يبقى WhatStock في شريط القوائم أو علبة النظام، لذلك يستمر عمل الاختصار وتنبيهات السعر.';

  @override
  String get termsOfUse => 'شروط الاستخدام';

  @override
  String get privacyPolicy => 'سياسة الخصوصية';

  @override
  String get subscriptionLegal =>
      'يتجدد الاشتراك تلقائيًا كل شهر حتى تلغيه. بالاشتراك فإنك توافق على شروط الاستخدام وسياسة الخصوصية.';

  @override
  String get deleteAccount => 'حذف الحساب';

  @override
  String get deleteAccountTitle => 'هل تريد حذف حسابك؟';

  @override
  String get deleteAccountBody =>
      'سيُحذف حسابك وكل ما نخزّنه على خادمنا (البريد الإلكتروني، الرصيد، الاستخدام) نهائيًا، وتضيع التحليلات غير المستخدمة. يُلغى الاشتراك المدفوع عبر المتصفح فورًا؛ أما اشتراك App Store أو Google Play فيجب إلغاؤه من إعدادات المتجر.';

  @override
  String get deleteLocalData =>
      'احذف أيضًا البيانات على هذا الجهاز (المحفظة، التنبيهات، المفضلة، السجل، التحليلات المحفوظة)';

  @override
  String get deleteAccountConfirm => 'حذف نهائي';

  @override
  String get accountDeleted => 'تم حذف حسابك.';

  @override
  String get errDeleteAccount =>
      'تعذّر حذف الحساب. تحقق من الاتصال وحاول مرة أخرى.';

  @override
  String get aiTrialBriefNote =>
      'تحليلات الفترة التجريبية موجزة وتُنجز بنموذج ذكاء اصطناعي أسرع. مع خطة، تحصل على أقوى نموذج ذكاء اصطناعي لدينا، ومزيد من البحث على الويب، وطولَي «قياسي» و«معمّق».';

  @override
  String get billingMonthly => 'شهري';

  @override
  String get billingYearly => 'سنوي';

  @override
  String get yearlyDiscount => 'شهران مجاناً';

  @override
  String get perYear => '/ سنة';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price شهرياً';
  }

  @override
  String get subscriptionLegalYearly =>
      'يتجدد الاشتراك السنوي تلقائيًا كل سنة حتى تلغيه. بالاشتراك فإنك توافق على شروط الاستخدام وسياسة الخصوصية.';

  @override
  String get myAnalyses => 'تحليلاتي';

  @override
  String get navAlerts => 'التنبيهات';

  @override
  String get inviteTitle => 'معاينة مغلقة';

  @override
  String get inviteBody =>
      'WhatStock متاح حاليًا بالدعوة فقط. أدخل رمز الدعوة الذي تلقيته.';

  @override
  String get inviteCodeLabel => 'رمز الدعوة';

  @override
  String get inviteContinue => 'متابعة';

  @override
  String get inviteInvalid => 'رمز الدعوة هذا غير صالح.';

  @override
  String get inviteExpired =>
      'انتهت صلاحية هذه الدعوة. اطلب رمزًا جديدًا من الشخص الذي دعاك.';

  @override
  String get inviteDeviceLimit =>
      'رمز الدعوة هذا مستخدم بالفعل على الحد الأقصى من الأجهزة.';

  @override
  String get previewConfidential => 'معاينة سرية';

  @override
  String get errPreviewDailyLimit =>
      'تم بلوغ الحد اليومي للتحليلات في هذه المعاينة. حاول مرة أخرى غدًا.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'منذ $count ساعة',
      many: 'منذ $count ساعة',
      few: 'منذ $count ساعات',
      two: 'منذ ساعتين',
      one: 'منذ ساعة واحدة',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'منذ $count يوم',
      many: 'منذ $count يومًا',
      few: 'منذ $count أيام',
      two: 'منذ يومين',
      one: 'منذ يوم واحد',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'هل تريد تحديث هذا التحليل؟';

  @override
  String staleBody(String age) {
    return 'أُنشئ هذا التحليل $age. ربما تغيّرت الأسعار والأخبار والنتائج منذ ذلك الحين.';
  }

  @override
  String get staleKeep => 'عرض التحليل السابق';

  @override
  String get staleRefresh => 'إنشاء تحليل جديد';

  @override
  String seeAll(int count) {
    return 'عرض الكل ($count)';
  }

  @override
  String get searchAnalyses => 'ابحث في تحليلاتك';

  @override
  String get deleteAnalysis => 'حذف';

  @override
  String analysisDeleted(String symbol) {
    return 'تم حذف تحليل $symbol';
  }

  @override
  String get keyLevelAlertHint =>
      'انقر على مستوى لتلقي تنبيه عندما يصل السعر إليه.';

  @override
  String get shareAnalysisTitle => 'مشاركة التحليل';

  @override
  String get shareAsImage => 'مشاركة كصورة';

  @override
  String get shareAsText => 'مشاركة كنص';

  @override
  String get shareCardFooter => 'صُنع باستخدام WhatStock';

  @override
  String get shareCardDisclaimer =>
      'تحليل بالذكاء الاصطناعي · ليس نصيحة استثمارية';

  @override
  String get referralTitle => 'ادعُ أصدقاءك';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count تحليل إضافي',
      many: '$count تحليلاً إضافياً',
      few: '$count تحليلات إضافية',
      two: 'تحليلين إضافيين',
      one: 'تحليل إضافي واحد',
    );
    return 'شارك رمزك. يحصل صديقك فوراً على $_temp0، وتحصل أنت على المثل بعد أول تحليل له.';
  }

  @override
  String get referralYourCode => 'رمزك';

  @override
  String referralStats(int invited, int rewarded) {
    return 'المدعوون: $invited · المكافآت: $rewarded';
  }

  @override
  String get referralHaveCode => 'لديك رمز من صديق؟';

  @override
  String get referralRedeem => 'تفعيل';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'تمت إضافة $count تحليل إضافي. أهلاً بك!',
      many: 'تمت إضافة $count تحليلاً إضافياً. أهلاً بك!',
      few: 'تمت إضافة $count تحليلات إضافية. أهلاً بك!',
      two: 'تمت إضافة تحليلين إضافيين. أهلاً بك!',
      one: 'تمت إضافة تحليل إضافي واحد. أهلاً بك!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'هذا الرمز غير موجود. تحقق منه وحاول مرة أخرى.';

  @override
  String get referralErrOwn => 'لا يمكنك تفعيل رمزك الخاص.';

  @override
  String get referralErrAlready => 'لقد فعّلت رمز صديق من قبل.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count تحليل إضافي',
      many: '$count تحليلاً إضافياً',
      few: '$count تحليلات إضافية',
      two: 'تحليلين إضافيين',
      one: 'تحليل إضافي واحد',
    );
    return 'أحلّل الأسهم باستخدام WhatStock: صوّر سهماً ويشرحه لك الذكاء الاصطناعي. باستخدام رمزي $code تحصل على $_temp0.';
  }

  @override
  String get referralCopied => 'تم نسخ الرمز';

  @override
  String get onboardTitle1 => 'صوّر سهماً';

  @override
  String get onboardBody1 =>
      'تكفي شاشة تطبيق وساطة أو صحيفة أو شعار شركة: يتعرّف WhatStock على السهم ويعرض سعره ورسمه البياني وأهم أرقامه.';

  @override
  String get onboardTitle2 => 'افهمه في دقائق';

  @override
  String get onboardBody2 =>
      'يشرح لك التحليل بالذكاء الاصطناعي ما يحرّك السهم ومخاطره وتقييمه، وثلاثة سيناريوهات لاتجاه سعره، مع المصادر وبلغتك.';

  @override
  String get onboardTitle3 => 'ابقَ على اطلاع دائم';

  @override
  String get onboardBody3 =>
      'المفضلة ومحفظتك وتنبيهات السعر تبقيك على اطلاع. تبقى تحليلاتك على جهازك، جاهزة لتفتحها من جديد.';

  @override
  String get onboardNext => 'التالي';

  @override
  String get onboardStart => 'لنبدأ';

  @override
  String get onboardSkip => 'تخطٍّ';

  @override
  String changesTitle(String date) {
    return 'منذ التحليل السابق ($date)';
  }

  @override
  String get changesPrice => 'السعر';

  @override
  String get changesNoMajor => 'لم تتغير التوقعات بشكل جوهري.';

  @override
  String get changesPreviousSummary => 'الملخص السابق';

  @override
  String get telemetryTitle => 'ساعدنا في تحسين WhatStock';

  @override
  String get telemetryBody =>
      'شارك إحصاءات استخدام مجهولة الهوية وتقارير الأعطال: الميزات المستخدمة وما الذي حدث من خطأ. لا تتم مشاركة أسهمك أو تحليلاتك أو بياناتك الشخصية أبدًا. يمكنك تغيير ذلك في أي وقت من الإعدادات.';

  @override
  String get telemetryAllow => 'السماح';

  @override
  String get telemetryDecline => 'لا، شكرًا';

  @override
  String get telemetrySetting => 'إحصاءات مجهولة الهوية وتقارير الأعطال';

  @override
  String get telemetrySettingHint =>
      'مدى تكرار استخدام الميزات وتقارير الأخطاء، دون بيانات شخصية أو محتوى عمليات البحث والتحليلات الخاصة بك.';

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
