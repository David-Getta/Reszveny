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
  String get labelYieldOnCost => 'العائد على التكلفة';

  @override
  String get labelDividendGrowth5y => 'نمو التوزيعات (5 سنوات)';

  @override
  String get dividendNone => 'لم تُدفع أي توزيعات خلال آخر 12 شهرًا.';

  @override
  String get dividendOnYourShares => 'على أسهمك، سنويًا';

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
      'تُحفظ على هذا الجهاز، وفي حسابك إذا سجّلت الدخول. تُحوَّل الإجماليات بأسعار الصرف المرجعية للبنك المركزي الأوروبي؛ وقد تتأخر الأسعار.';

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
  String homeDividendsThisYear(String amount) {
    return 'توزيعات الأرباح هذا العام: $amount';
  }

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
  String get askButton => 'اسأل عن هذا التحليل';

  @override
  String askTitle(String symbol) {
    return 'أسئلة حول $symbol';
  }

  @override
  String get askIntro =>
      'اسأل أي شيء عن التحليل: ماذا يعني خطر ما، وما الذي قد يغيّر التوقعات، وكيف حُسب رقم معيّن. تستند الإجابات إلى هذا التحليل ولا تُعدّ نصيحة استثمارية.';

  @override
  String get askHint => 'اكتب سؤالك…';

  @override
  String get askSend => 'إرسال';

  @override
  String get askThinking => 'جارٍ التفكير…';

  @override
  String get askSuggest1 => 'ما أكبر خطر؟';

  @override
  String get askSuggest2 => 'ما الذي قد يغيّر التوقعات؟';

  @override
  String get askSuggest3 => 'اشرح ذلك بعبارات بسيطة';

  @override
  String get askMaxReached =>
      'كان هذا آخر سؤال لهذا التحليل. أنشئ تحليلاً جديداً لطرح المزيد من الأسئلة.';

  @override
  String get errAskLimit =>
      'لقد بلغت الحد اليومي للأسئلة. يُرجى المحاولة مرة أخرى غدًا.';

  @override
  String get eventTomorrow => 'غدًا';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'بعد $days يوم',
      many: 'بعد $days يومًا',
      few: 'بعد $days أيام',
      two: 'بعد يومين',
      one: 'بعد يوم واحد',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'النتائج الفصلية';

  @override
  String get eventBeforeOpen => 'قبل افتتاح السوق';

  @override
  String get eventAfterClose => 'بعد إغلاق السوق';

  @override
  String eventEpsEstimate(String value) {
    return 'ربحية السهم المتوقعة: $value';
  }

  @override
  String get eventFromAnalysis => 'من تحليلك';

  @override
  String get eventDividend => 'توزيعات أرباح متوقعة';

  @override
  String get eventDividendEstimate => 'تقدير من الدفعات التي سجّلتها';

  @override
  String get eventsHint =>
      'مواعيد نتائج أسهمك المفضلة وأسهم محفظتك خلال الـ 90 يومًا القادمة، والأحداث المؤرخة التي رصدتها تحليلاتك، وتوزيعات الأرباح المتوقعة من الدفعات التي سجّلتها.';

  @override
  String get eventsEmpty =>
      'لا توجد أحداث مؤرخة خلال الـ 90 يومًا القادمة. أضف أسهمًا إلى المفضلة أو المحفظة لترى مواعيد نتائجها هنا؛ وتُظهر توزيعات الأرباح التي سجّلتها دفعتها التالية المتوقعة.';

  @override
  String get compareTitle => 'مقارنة';

  @override
  String get compareAdd => 'إضافة سهم';

  @override
  String get compareRemove => 'إزالة';

  @override
  String get compareTickerHint => 'رمز السهم، مثل MSFT';

  @override
  String get compareHint =>
      'الأرقام الرئيسية جنبًا إلى جنب، مع تمييز أفضل قيمة في كل صف. المبالغ معروضة بالعملة الخاصة بكل سهم.';

  @override
  String get compareNoAnalysis => 'لا يوجد تحليل بعد';

  @override
  String get portfolioDividends => 'التوزيعات السنوية';

  @override
  String portfolioDividendYield(String percent) {
    return 'عائد $percent';
  }

  @override
  String get portfolioDividendNote =>
      'تستند التوزيعات السنوية المتوقعة إلى التوزيعات المدفوعة خلال آخر 12 شهرًا؛ والمدفوعات المستقبلية غير مضمونة.';

  @override
  String positionDividend(String amount) {
    return 'التوزيعات: $amount سنويًا';
  }

  @override
  String get chartAvgCost => 'متوسطك';

  @override
  String get chartAlertLevel => 'تنبيه';

  @override
  String get marketsToday => 'الأسواق اليوم';

  @override
  String get notesTitle => 'ملاحظاتي';

  @override
  String get notesHint =>
      'لماذا اشتريته، وما الذي تتابعه، وما الذي قد يدفعك إلى بيعه؟';

  @override
  String get notesInfo =>
      'تُحفظ على هذا الجهاز، وفي حسابك إذا سجّلت الدخول. يأخذ التحليل بالذكاء الاصطناعي ملاحظاتك في الاعتبار.';

  @override
  String notesSaved(String date) {
    return 'تم الحفظ $date';
  }

  @override
  String get peersTitle => 'شركات مماثلة';

  @override
  String get portfolioExport => 'تصدير بصيغة CSV';

  @override
  String get portfolioImport => 'استيراد من CSV';

  @override
  String get portfolioImportHint =>
      'الصق عملية شراء واحدة في كل سطر: رمز السهم، الكمية، السعر، العملة، التاريخ (YYYY-MM-DD). يمكن فصل الأعمدة بفواصل أو فواصل منقوطة أو علامات جدولة؛ سطر العناوين اختياري.';

  @override
  String get portfolioImportButton => 'استيراد';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'تمت إضافة $count معاملة',
      many: 'تمت إضافة $count معاملة',
      few: 'تمت إضافة $count معاملات',
      two: 'تمت إضافة معاملتين',
      one: 'تمت إضافة معاملة واحدة',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'تم تخطي $count سطر',
      many: 'تم تخطي $count سطراً',
      few: 'تم تخطي $count أسطر',
      two: 'تم تخطي سطرين',
      one: 'تم تخطي سطر واحد',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'تتم مزامنة المحفظة والمفضلة وتنبيهات السعر والملاحظات على جميع أجهزتك.';

  @override
  String syncLast(String time) {
    return 'آخر مزامنة $time';
  }

  @override
  String get syncNow => 'مزامنة الآن';

  @override
  String get syncFailed => 'تعذّرت المزامنة. ستتم إعادة المحاولة تلقائيًا.';

  @override
  String get alertEmailTitle => 'بريد إلكتروني عند تحقق تنبيه';

  @override
  String get alertEmailOn =>
      'نتحقق من تنبيهاتك كل بضع دقائق ونرسل إليك بريدًا إلكترونيًا، حتى عندما يكون التطبيق مغلقًا.';

  @override
  String get alertEmailSignIn =>
      'سجّل الدخول ببريدك الإلكتروني في الإعدادات لتصلك التنبيهات بالبريد الإلكتروني، حتى عندما يكون التطبيق مغلقًا.';

  @override
  String get portfolioHistory => 'تطور القيمة';

  @override
  String get portfolioReviewTitle => 'مراجعة المحفظة بالذكاء الاصطناعي';

  @override
  String get portfolioReviewIntro =>
      'يفحص الذكاء الاصطناعي محفظتك بالكامل: التركّز، والتعرّض للقطاعات والعملات، والمخاطر المشتركة بين أسهمك، والتوزيعات. يستهلك تحليلاً واحداً.';

  @override
  String get portfolioReviewButton => 'راجِع محفظتي';

  @override
  String get portfolioReviewAgain => 'إعادة المراجعة';

  @override
  String get portfolioReviewWorking => 'جارٍ مراجعة محفظتك…';

  @override
  String get digestTitle => 'ملخص أسبوعي عبر البريد الإلكتروني';

  @override
  String get digestHint =>
      'كل يوم اثنين: أداء مفضلتك ومحفظتك خلال الأسبوع الماضي، ومواعيد نتائجها القادمة.';

  @override
  String get benchmarkTitle => 'مقارنة بمؤشر S&P 500';

  @override
  String get benchmarkTitleIndex => 'مقارنة بمؤشر';

  @override
  String get benchmarkHintIndex =>
      'كما لو أن كل عملية شراء استُثمرت في اليوم نفسه في صندوق يتتبع المؤشر المختار. لا تشمل توزيعات الأرباح؛ العوائد السابقة لا تتنبأ بالعوائد المستقبلية.';

  @override
  String get benchmarkYours => 'مشترياتك';

  @override
  String benchmarkAhead(String points) {
    return 'أفضل من المؤشر بـ $points نقطة مئوية';
  }

  @override
  String benchmarkBehind(String points) {
    return 'أقل من المؤشر بـ $points نقطة مئوية';
  }

  @override
  String get portfolioSell => 'بيع';

  @override
  String portfolioSellTitle(String symbol) {
    return 'بيع $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'سعر بيع السهم ($currency)';
  }

  @override
  String get portfolioSellDate => 'تاريخ البيع';

  @override
  String get portfolioSellAll => 'الكل';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'تملك $quantity';
  }

  @override
  String get portfolioSold => 'بيع';

  @override
  String get portfolioRealized => 'المحقق';

  @override
  String get portfolioClosed => 'المراكز المغلقة';

  @override
  String get portfolioClosedNote => 'تم بيع جميع الأسهم';

  @override
  String get portfolioTransactions => 'المعاملات';

  @override
  String get portfolioRealizedByYear => 'الأرباح المحققة حسب السنة';

  @override
  String get portfolioRealizedHint =>
      'تُطابَق المبيعات مع أقدم مشترياتك أولًا (FIFO)، وتُحوَّل بسعر الصرف الحالي. لإقرارك الضريبي، استخدم كشف حساب الوسيط.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'صدرت نتائج ربع سنوية جديدة منذ هذا التحليل ($symbol، $date).';
  }

  @override
  String get newResultsBadge => 'نتائج جديدة';

  @override
  String get portfolioImportBrokers =>
      'يتم التعرف أيضًا على ملفات التصدير من Revolut وTrading 212 وInteractive Brokers وDEGIRO وSchwab وFidelity وRobinhood، مع عمليات البيع والتوزيعات (بعد خصم ضريبة الاستقطاع)؛ ويتم تخطي الإيداعات.';

  @override
  String get portfolioImportFile => 'اختر ملفًا';

  @override
  String offlineBanner(String time) {
    return 'لا يوجد اتصال – يتم عرض آخر بيانات محفوظة ($time).';
  }

  @override
  String get glossMarketCap =>
      'قيمة الشركة كلها في سوق الأسهم: سعر السهم × عدد الأسهم.';

  @override
  String get glossSharesOutstanding =>
      'عدد الأسهم التي أصدرتها الشركة. إذا زاد، يملك كل سهم حصة أصغر؛ وعمليات إعادة الشراء تقلّله.';

  @override
  String get glossPeTrailing =>
      'السعر ÷ ربحية السهم في آخر 12 شهرًا: كم سنة من الأرباح الحالية تدفع ثمنها. الأقل أرخص، لكن الشركات سريعة النمو عادةً ما يكون لديها P/E مرتفع.';

  @override
  String get glossPeForward =>
      'مثل P/E، لكن بالأرباح التي يتوقعها المحللون للأشهر الـ12 القادمة. إذا كان أقل من P/E التاريخي، فهذا يعني أن الأرباح يُتوقع أن تنمو.';

  @override
  String get glossPb =>
      'السعر ÷ القيمة الدفترية (الأصول ناقص الديون) للسهم. قرابة 1 تعني أن السوق يقيّم الشركة بما تملكه على الورق.';

  @override
  String get glossPs =>
      'القيمة السوقية ÷ الإيرادات السنوية. مفيدة للشركات التي لا تحقق ربحًا يُذكر بعد؛ قارنها داخل القطاع نفسه.';

  @override
  String get glossEvToFcf =>
      'قيمة الشركة شاملةً الديون (EV) ÷ النقد الذي تولّده في سنة بعد الاستثمارات. الأقل يعني أنك تحصل على نقد أكثر مقابل السعر.';

  @override
  String get glossPeg =>
      'P/E ÷ نمو الأرباح السنوي المتوقع (%). قرابة 1 تُعدّ غالبًا قيمة عادلة؛ فهي تضع P/E في ضوء النمو.';

  @override
  String get glossEps =>
      'ربح السهم الواحد خلال آخر 12 شهرًا. ارتفاع EPS على مر السنين من أقوى علامات الشركة السليمة.';

  @override
  String get glossBeta =>
      'مدى ميل السهم إلى التحرك مع السوق: 1 = مثل السوق، 1.5 = تقلبات أكبر بنحو 50%، أقل من 1 = أهدأ.';

  @override
  String get glossRevenueTtm =>
      'إجمالي المبيعات في آخر 12 شهرًا، قبل أي تكاليف.';

  @override
  String get glossNetIncomeTtm =>
      'الربح المتبقي بعد كل التكاليف والفوائد والضرائب خلال آخر 12 شهرًا.';

  @override
  String get glossGrossMargin =>
      'حصة الإيرادات المتبقية بعد التكلفة المباشرة للمنتجات. الهامش المرتفع يعني غالبًا قوة في التسعير.';

  @override
  String get glossOperatingMargin =>
      'حصة الإيرادات المتبقية بعد تكاليف تشغيل النشاط (الأجور، الإيجار، التسويق)، قبل الفوائد والضرائب.';

  @override
  String get glossNetMargin =>
      'حصة الإيرادات التي تتحول إلى ربح نهائي. 20% تعني أن 20 من كل 100 من المبيعات ربح.';

  @override
  String get glossRoe =>
      'العائد على حقوق الملكية: الربح السنوي ÷ رأس مال المالكين. يبيّن مدى حسن استخدام الإدارة لأموال المساهمين؛ ما فوق 15% تقريبًا قوي.';

  @override
  String get glossRoa =>
      'العائد على الأصول: الربح السنوي ÷ كل ما تملكه الشركة. قارنه داخل القطاع نفسه.';

  @override
  String get glossDebtToEquity =>
      'الديون ÷ رأس مال المالكين. الأعلى يعني أموالًا مقترضة أكثر: مخاطرة أكبر عند ارتفاع الفائدة أو تباطؤ الأعمال.';

  @override
  String get glossCurrentRatio =>
      'الأصول قصيرة الأجل ÷ الالتزامات المستحقة خلال سنة. فوق 1 يعني أن الشركة تستطيع تغطية التزاماتها القريبة.';

  @override
  String get glossRevenueGrowth => 'مقدار نمو الإيرادات مقارنةً بالعام السابق.';

  @override
  String get glossEpsGrowth => 'مقدار نمو ربح السهم مقارنةً بالعام السابق.';

  @override
  String get glossDividendYield =>
      'التوزيعات السنوية ÷ سعر السهم: الدخل النقدي الذي ستحصل عليه سنويًا كنسبة مئوية مما تدفعه.';

  @override
  String get glossDividendPerShare =>
      'التوزيعات المدفوعة عن سهم واحد خلال العام الماضي.';

  @override
  String get glossPayoutRatio =>
      'حصة الأرباح المدفوعة كتوزيعات. فوق 100% تدفع الشركة أكثر مما تكسب، ونادرًا ما يدوم ذلك.';

  @override
  String get portfolioBeta => 'بيتا المحفظة';

  @override
  String get glossPortfolioBeta =>
      'متوسط بيتا أسهمك مرجّحًا بقيمتها: أي تقريبًا كم بالمئة تتحرك أسهمك عندما يتحرك السوق بنسبة 1%. فوق 1 تتقلب أكثر من السوق، وتحت 1 أقل. النقد غير مشمول.';

  @override
  String get portfolioTop3 => 'أكبر 3 مراكز';

  @override
  String get glossPortfolioTop3 =>
      'نسبة قيمة أسهمك الموجودة في أكبر ثلاثة مراكز لديك. كلما ارتفعت، زاد الضرر الذي قد تلحقه الأخبار السيئة عن شركة واحدة بالمحفظة كلها.';

  @override
  String get glossDividendGrowth5y =>
      'متوسط النمو السنوي للتوزيعات لكل سهم خلال السنوات الخمس الماضية. يدل النمو المستقر عادةً على ثقة الشركة بتدفقها النقدي؛ أما خفض التوزيعات فغالبًا ما يكون علامة تحذير.';

  @override
  String get glossYieldOnCost =>
      'توزيعات الأرباح المستلمة خلال آخر 12 شهرًا مقسومة على ما دفعته مقابل الأسهم التي ما زلت تحتفظ بها. على خلاف عائد التوزيعات، يُقاس هذا بسعر شرائك أنت، لا بسعر اليوم.';

  @override
  String get glossTitle => 'ماذا يعني ذلك؟';

  @override
  String get watchNewsTitle => 'أخبار أسهمك';

  @override
  String get undo => 'تراجع';

  @override
  String get watchSort => 'ترتيب';

  @override
  String get watchSortOwn => 'ترتيبي';

  @override
  String get watchSortGainers => 'الأكثر ارتفاعًا أولًا';

  @override
  String get watchSortLosers => 'الأكثر انخفاضًا أولًا';

  @override
  String get watchSortName => 'حسب رمز السهم (A–Z)';

  @override
  String get watchHint =>
      'اسحب المقبض لإعادة الترتيب، ومرّر لليسار للإزالة. يعرض الخط آخر 30 يومًا.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: تحليلك جاهز.';
  }

  @override
  String alertFromCost(String price) {
    return 'بناءً على متوسط سعر شرائك ($price):';
  }

  @override
  String get briefTitle => 'اليوم مع أسهمك';

  @override
  String get briefButton => 'لخّص اليوم';

  @override
  String get briefHint =>
      'ملخص قصير بالذكاء الاصطناعي لحركة محفظتك ومفضلاتك اليوم وما تقوله أحدث الأخبار عنها. لا يستهلك تحليلًا.';

  @override
  String get briefRefresh => 'تحديث';

  @override
  String get sectionEarnings => 'نتائج الأرباح';

  @override
  String earningsNext(String date) {
    return 'التقرير القادم: $date';
  }

  @override
  String get earningsExpected => 'ربحية السهم المتوقعة';

  @override
  String get earningsReported => 'ربحية السهم المُعلنة';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'ربحية السهم عند المتوقع أو أعلى في $beats من آخر $total من الأرباع',
      one: 'ربحية السهم عند المتوقع أو أعلى في $beats من ربع واحد',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol يعلن نتائجه الفصلية غدًا';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol يعلن نتائجه الفصلية اليوم';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return 'توزيعات أرباح $symbol متوقعة اليوم';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'نحو $amount. سجّلها في محفظتك عند وصولها.';
  }

  @override
  String get dividendRemindersTitle => 'تذكيرات توزيعات الأرباح';

  @override
  String get dividendRemindersSubtitle =>
      'إشعار في اليوم المتوقع لتوزيعات الأرباح بحسب وتيرة الدفعات التي سجّلتها، لتتمكن من تسجيلها';

  @override
  String get earningsRemindersTitle => 'تذكيرات النتائج';

  @override
  String get earningsRemindersSubtitle =>
      'إشعار قبل يوم من إعلان أسهم المفضلة أو محفظتك نتائجها الفصلية';

  @override
  String addAllToFavorites(int count) {
    return 'إضافة الكل إلى المفضلة ($count)';
  }

  @override
  String get portfolioImportPhoto => 'استيراد من لقطة شاشة';

  @override
  String get holdingsReading => 'جارٍ قراءة مراكزك…';

  @override
  String get holdingsReviewTitle => 'المراكز التي عُثر عليها';

  @override
  String get holdingsReviewHint =>
      'تحقّق من الأرقام قبل إضافتها. السعر هو متوسط سعر شرائك للسهم، وليس سعر اليوم.';

  @override
  String get holdingsNoPrice => 'لا يوجد متوسط سعر شراء في الصورة';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'إضافة $count مركز',
      many: 'إضافة $count مركزًا',
      few: 'إضافة $count مراكز',
      two: 'إضافة مركزين',
      one: 'إضافة مركز واحد',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'لم يُعثر على أي مراكز أسهم في هذه الصورة. جرّب لقطة شاشة لصفحة المراكز أو الحيازات لدى وسيطك.';

  @override
  String get week52Range => 'نطاق 52 أسبوعاً';

  @override
  String week52BelowHigh(String percent) {
    return 'أقل من أعلى سعر في 52 أسبوعاً بنسبة $percent';
  }

  @override
  String get week52AtHigh => 'عند أعلى سعر في 52 أسبوعاً';

  @override
  String get alertKindTrailing => 'ينخفض عن الذروة';

  @override
  String get alertTrailingPercent => 'الانخفاض عن الذروة (%)';

  @override
  String get alertTrailingHint =>
      'يتتبع السعر صعودًا: ينطلق التنبيه عندما ينخفض السعر بهذه النسبة عن أعلى مستوى بلغه منذ ضبطه.';

  @override
  String alertDescTrailing(String percent) {
    return 'انخفاض $percent عن الذروة';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'الذروة حتى الآن: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return 'انخفض $symbol بنسبة $percent عن ذروته';
  }

  @override
  String get sectionInsiders => 'تداولات المطلعين';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count عملية شراء',
      many: '$count عملية شراء',
      few: '$count عمليات شراء',
      two: 'عمليتا شراء',
      one: 'عملية شراء واحدة',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count عملية بيع',
      many: '$count عملية بيع',
      few: '$count عمليات بيع',
      two: 'عمليتا بيع',
      one: 'عملية بيع واحدة',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'الصافي: $shares سهم';
  }

  @override
  String get insiderBuy => 'اشترى';

  @override
  String get insiderSell => 'باع';

  @override
  String get insiderHint =>
      'عمليات الشراء والبيع في السوق المفتوحة من قبل المديرين التنفيذيين وأعضاء مجلس الإدارة خلال آخر 90 يومًا (SEC Form 4). لا تُحتسب ممارسة الخيارات ومنح الأسهم.';

  @override
  String get insiderNone =>
      'لا توجد عمليات شراء أو بيع للمطلعين في السوق المفتوحة خلال آخر 90 يومًا.';

  @override
  String get analystTrend => 'كيف تغيّرت الآراء شهرًا بعد شهر';

  @override
  String get watchListAll => 'الكل';

  @override
  String get watchListNew => 'قائمة جديدة';

  @override
  String get watchListName => 'اسم القائمة';

  @override
  String get watchListRename => 'إعادة تسمية القائمة';

  @override
  String get watchListDelete => 'حذف القائمة';

  @override
  String get watchListAddTo => 'إضافة إلى قائمة';

  @override
  String get watchListEmpty =>
      'لا توجد أسهم في هذه القائمة بعد. اضغط على زر القائمة بجانب السهم لإضافته.';

  @override
  String get portfolioAskTitle => 'أسئلة حول محفظتك';

  @override
  String get rangeYtd => 'هذا العام';

  @override
  String get backupTitle => 'النسخ الاحتياطي';

  @override
  String get backupSave => 'حفظ نسخة احتياطية';

  @override
  String get backupSaveHint =>
      'مفضلتك وقوائمك ومحفظتك وتنبيهاتك وملاحظاتك في ملف واحد.';

  @override
  String get backupRestore => 'الاستعادة من نسخة احتياطية';

  @override
  String get backupRestoreHint =>
      'يضيف ما في الملف؛ لن يُحذف شيء مما لديك الآن.';

  @override
  String get backupRestored => 'تمت استعادة النسخة الاحتياطية.';

  @override
  String get backupInvalid => 'هذا الملف ليس نسخة احتياطية من WhatStock.';

  @override
  String get allocationPositions => 'الأسهم';

  @override
  String get allocationSectors => 'القطاعات';

  @override
  String get allocationCurrencies => 'العملات';

  @override
  String get allocationAccounts => 'الحسابات';

  @override
  String get compareReturn1y => 'العائد خلال سنة';

  @override
  String get compareFromHigh => 'البعد عن أعلى سعر في 52 أسبوعاً';

  @override
  String get briefAutoTitle => 'ملخص يومي كل صباح';

  @override
  String get briefAutoSubtitle =>
      'يُعدّ «اليوم مع أسهمك» تلقائيًا بعد الساعة 7:00 صباحًا ما دام التطبيق يعمل، وعلى الحواسيب يُعلمك إشعار بذلك. يُحتسب من حدّ الأسئلة اليومي ولا يستهلك تحليلًا.';

  @override
  String get targetsButton => 'التوزيع المستهدف';

  @override
  String get targetsTitle => 'التوزيع المستهدف';

  @override
  String get targetsHint =>
      'حدّد الحصة التي ينبغي أن يشغلها كل سهم من المحفظة. اترك الحقل فارغًا إن لم يكن هناك هدف. سيعرض التطبيق بعد ذلك ما يجب شراؤه أو بيعه للوصول إليها.';

  @override
  String targetsSum(String percent) {
    return 'الإجمالي: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'شراء ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'بيع ≈ $amount';
  }

  @override
  String get rebalanceOk => 'ضمن الهدف';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol تجاوز ربحية السهم المتوقعة';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol لم يبلغ ربحية السهم المتوقعة';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'ربحية السهم المُعلنة $actual، المتوقعة $estimate';
  }

  @override
  String get newsExplain => 'ماذا يعني هذا؟';

  @override
  String get watchAlertAll => 'تنبيه عند التحركات اليومية الكبيرة';

  @override
  String get watchAlertAllHint =>
      'تنبيه سعري لكل سهم في هذه القائمة ينطلق عندما يتحرك بهذا القدر خلال يوم واحد، صعودًا أو هبوطًا. الأسهم التي لديها تنبيه بالفعل تحتفظ به.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'تم ضبط $count تنبيه',
      many: 'تم ضبط $count تنبيهًا',
      few: 'تم ضبط $count تنبيهات',
      two: 'تم ضبط تنبيهين',
      one: 'تم ضبط تنبيه واحد',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'تصدير الأرباح المحققة (CSV)';

  @override
  String get portfolioAnnualReturn => 'العائد السنوي';

  @override
  String portfolioPerYear(String percent) {
    return '$percent سنويًا';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'العائد السنوي المرجّح بالأموال (XIRR): يأخذ في الحسبان توقيت عمليات الشراء والبيع، فلا تشوّهه الأموال المضافة لاحقًا. يظهر بعد مرور سنة على الأقل على أول عملية شراء لك؛ ولا يشمل التوزيعات.';

  @override
  String get eventsAddToCalendar => 'إضافة إلى التقويم (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'تنبيه المحفظة';

  @override
  String get portfolioMoveAlertSubtitle =>
      'إشعار عندما تتحرك محفظتك بالكامل بهذا القدر خلال يوم واحد.';

  @override
  String get portfolioMoveAlertOff => 'إيقاف';

  @override
  String portfolioMoveUp(String percent) {
    return 'ارتفعت محفظتك بنسبة $percent اليوم';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'انخفضت محفظتك بنسبة $percent اليوم';
  }

  @override
  String get whatIfTitle => 'ماذا لو استثمرت؟';

  @override
  String get whatIfAmount => 'المبلغ';

  @override
  String whatIfResult(String amount, String period) {
    return 'لو استثمرت $amount قبل $period، لبلغت قيمتها اليوم';
  }

  @override
  String get whatIfNote =>
      'يستند إلى سعر السهم فقط: لا تشمل التوزيعات والرسوم والضرائب. العوائد السابقة لا تتنبأ بالعوائد المستقبلية.';

  @override
  String get watchShare => 'مشاركة القائمة';

  @override
  String get watchImport => 'إضافة رموز الأسهم';

  @override
  String get watchImportHint =>
      'الصق رموز الأسهم مفصولةً بفواصل أو مسافات أو أسطر جديدة، مثل قائمة شاركها شخص ما معك.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'تمت إضافة $count سهم',
      many: 'تمت إضافة $count سهمًا',
      few: 'تمت إضافة $count أسهم',
      two: 'تمت إضافة سهمين',
      one: 'تمت إضافة سهم واحد',
      zero: 'لا توجد أسهم جديدة',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'الأكبر أولًا';

  @override
  String get positionsSortGain => 'الأعلى عائدًا إجماليًا أولًا';

  @override
  String get positionsSortToday => 'الأفضل اليوم أولًا';

  @override
  String get chartMyBuys => 'مشترياتك';

  @override
  String get chartMySells => 'مبيعاتك';

  @override
  String get shortcutsTitle => 'اختصارات لوحة المفاتيح';

  @override
  String usMarketOpen(String time) {
    return 'السوق الأمريكية مفتوحة · تُغلق بعد $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'السوق الأمريكية مغلقة · تُفتح بعد $time';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes د';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours س $minutes د';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days ي $hours س';
  }

  @override
  String get dividendGoalSet => 'تحديد هدف شهري لتوزيعات الأرباح';

  @override
  String get dividendGoalTitle => 'هدف توزيعات الأرباح الشهري';

  @override
  String get dividendGoalAmount => 'توزيعات الأرباح شهريًا';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'نحو $amount شهريًا بالعوائد الحالية: $percent من هدفك البالغ $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'نحو $amount شهريًا بالعوائد الحالية: تم بلوغ هدفك البالغ $goal';
  }

  @override
  String get portfolioAccount => 'الحساب';

  @override
  String get portfolioAccountHint => 'مثال: TBSZ 2026 (اختياري)';

  @override
  String get portfolioAccountAdd => 'تحديد حساب';

  @override
  String get portfolioAccountsAll => 'جميع الحسابات';

  @override
  String get portfolioAccountNote =>
      'معاملات هذا الحساب وتوزيعات أرباحه فقط. يظهر النقد والأهداف ومراجعة الذكاء الاصطناعي ضمن «جميع الحسابات».';

  @override
  String get portfolioNoAccount => 'بدون حساب';

  @override
  String portfolioFee(String currency) {
    return 'العمولة ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'إضافة عمولة';

  @override
  String portfolioFeeRow(String amount) {
    return 'العمولة: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'الملخص السنوي';

  @override
  String get portfolioProceeds => 'عائدات البيع';

  @override
  String get portfolioCostBasis => 'تكلفة الاقتناء';

  @override
  String get portfolioFeesPaid => 'العمولات المدفوعة';

  @override
  String get portfolioAnnualSummaryNote =>
      'المبالغ بالعملة الأصلية دون تحويل. عائدات البيع صافية بعد خصم عمولة البيع؛ وتشمل تكلفة الاقتناء عمولة الشراء (FIFO). لإقرارك الضريبي، حوِّل المبالغ بسعر الصرف الذي تشترطه مصلحة الضرائب لديك.';

  @override
  String get portfolioShare => 'مشاركة الأداء';

  @override
  String get portfolioShareHeading => 'محفظتي';

  @override
  String get portfolioTopHoldings => 'أكبر المراكز';

  @override
  String get portfolioShareNote =>
      'تتم مشاركة النسب المئوية فقط، دون أي مبالغ.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count مركز',
      many: '$count مركزًا',
      few: '$count مراكز',
      two: 'مركزان',
      one: 'مركز واحد',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'ليس نصيحة استثمارية';

  @override
  String get contributionButton => 'استثمار أموال جديدة';

  @override
  String contributionAmount(String currency) {
    return 'المبلغ المراد استثماره ($currency)';
  }

  @override
  String get contributionHint =>
      'شراء فقط دون أي بيع: تحصل المراكز الأكثر تأخرًا عن هدفها على المال أولًا.';

  @override
  String contributionShares(String shares) {
    return '≈ $shares سهم';
  }

  @override
  String contributionMissing(String symbols) {
    return 'لا يوجد سعر حالي لـ $symbols، لذا استُبعدت من التوزيع.';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'إذا حافظ العائد السنوي على مستواه ($rate)، فستبلغ هدفك نحو عام $year.';
  }

  @override
  String get portfolioMaxDrawdown => 'أكبر تراجع';

  @override
  String get glossMaxDrawdown =>
      'أكبر هبوط في قيمة أسهمك من قمة سابقة إلى قاع لاحق، دون تأثير عمليات الشراء والبيع التي قمت بها (مرجّح زمنيًا). يُظهر مدى عمق التراجع الذي مرّت به محفظتك بالفعل.';

  @override
  String watchSince(String date) {
    return 'منذ إضافته إلى المفضلة ($date)';
  }

  @override
  String get portfolioSampleTry => 'تجربة محفظة نموذجية';

  @override
  String get portfolioSampleBanner =>
      'هذه محفظة نموذجية. أضف مشترياتك الخاصة إلى جانبها، أو أزلها.';

  @override
  String get portfolioSampleRemove => 'إزالة المحفظة النموذجية';

  @override
  String get portfolioStopsAll => 'وقف متحرك لجميع المراكز';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'تم ضبط وقف متحرك لـ $count مركز',
      many: 'تم ضبط وقف متحرك لـ $count مركزًا',
      few: 'تم ضبط وقف متحرك لـ $count مراكز',
      two: 'تم ضبط وقف متحرك لمركزين',
      one: 'تم ضبط وقف متحرك لمركز واحد',
      zero: 'لدى كل المراكز وقف متحرك بالفعل',
    );
    return '$_temp0';
  }

  @override
  String portfolioSinceSale(String percent) {
    return '$percent منذ البيع';
  }

  @override
  String get lotPreviewRealized => 'المحقق من هذا البيع (FIFO):';

  @override
  String lotPreviewAverage(String after, String before) {
    return 'متوسط التكلفة الجديد: $after (حاليًا $before)';
  }

  @override
  String get portfolioYtdReturn => 'العائد هذا العام';

  @override
  String get glossTwrYtd =>
      'العائد المرجّح زمنيًا منذ بداية العام (أو منذ أول عملية شراء لك إن كانت هذا العام): يحتسب كل يوم تغيّر الأسهم التي كنت تملكها في ذلك اليوم، ثم تُربط الأيام ببعضها – الأموال التي تودعها أو تسحبها ليست عائدًا، لذا يمكن مقارنته بمؤشر. وتحته: المؤشر المختار خلال الفترة نفسها.';

  @override
  String alertDistance(String price, String percent) {
    return 'حاليًا $price · يتبقى $percent';
  }

  @override
  String get watchSortSince => 'حسب التغير منذ الإضافة';

  @override
  String get portfolioTodayMovers => 'الأكثر تحركًا اليوم:';

  @override
  String get lotNoteAdd => 'إضافة ملاحظة';

  @override
  String get lotNoteBuyHint =>
      'لماذا تشتري؟ ستُضاف إلى ملاحظات السهم مع التاريخ.';

  @override
  String get lotNoteSellHint =>
      'لماذا تبيع؟ ستُضاف إلى ملاحظات السهم مع التاريخ.';

  @override
  String get lotNoteBought => 'شراء';

  @override
  String get positionHeld => 'مدة الاحتفاظ';

  @override
  String durationMonths(int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months شهر',
      many: '$months شهرًا',
      few: '$months أشهر',
      two: 'شهران',
      one: 'شهر واحد',
      zero: '$months شهر',
    );
    return '$_temp0';
  }

  @override
  String durationDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days يوم',
      many: '$days يومًا',
      few: '$days أيام',
      two: 'يومان',
      one: 'يوم واحد',
      zero: '$days يوم',
    );
    return '$_temp0';
  }

  @override
  String positionHeldSince(String date) {
    return 'منذ $date';
  }

  @override
  String lotPreviewWeight(String after, String before) {
    return 'الحصة من المحفظة بعد العملية: $after (حاليًا $before)';
  }

  @override
  String lotFromCash(String amount) {
    return 'الدفع من النقد (حاليًا $amount)';
  }

  @override
  String lotToCash(String amount) {
    return 'الإضافة إلى النقد (حاليًا $amount)';
  }

  @override
  String get onboardTitle4 => 'تابع محفظتك';

  @override
  String get onboardBody4 =>
      'استورد ملف التصدير من وسيطك (Revolut، Trading 212، IBKR، DEGIRO، Schwab…) أو أضف صفقاتك يدويًا: شاهد عائدك مقارنةً بمؤشر، وتوزيعات أرباحك، وملخصًا سنويًا لإقرارك الضريبي.';

  @override
  String get lotEdit => 'تعديل';

  @override
  String lotEditTitle(String symbol) {
    return 'تعديل المعاملة · $symbol';
  }

  @override
  String get lotSave => 'حفظ';

  @override
  String dividendEditTitle(String symbol) {
    return 'تعديل توزيعة الأرباح · $symbol';
  }

  @override
  String get activityTitle => 'جميع المعاملات';

  @override
  String get activitySearchHint => 'تصفية حسب رمز السهم';

  @override
  String get activityNoMatch => 'لا توجد معاملات مطابقة لعامل التصفية.';

  @override
  String portfolioImportDuplicates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count مسجّلة مسبقًا، لم تُضَف',
      many: '$count مسجّلة مسبقًا، لم تُضَف',
      few: '$count مسجّلة مسبقًا، لم تُضَف',
      two: 'اثنتان مسجّلتان مسبقًا، لم تُضافا',
      one: 'واحدة مسجّلة مسبقًا، لم تُضَف',
    );
    return '$_temp0';
  }

  @override
  String get tickerChange => 'تغيير رمز السهم';

  @override
  String tickerChangeTitle(String symbol) {
    return 'تغيير رمز السهم · $symbol';
  }

  @override
  String get tickerChangeNew => 'رمز السهم الجديد';

  @override
  String get tickerChangeHint =>
      'عندما تغيّر شركة رمز سهمها (مثل FB → META): تنتقل جميع المعاملات وتوزيعات الأرباح وتجزئات الأسهم والملاحظة والتنبيهات إلى الرمز الجديد.';

  @override
  String tickerChanged(String symbol) {
    return 'تم النقل إلى $symbol';
  }

  @override
  String get referralErrSignIn =>
      'سجّل الدخول ببريدك الإلكتروني لتفعيل رمز صديق.';

  @override
  String get referralErrFull => 'بلغ هذا الرمز الحد الأقصى لعدد مرات التفعيل.';

  @override
  String portfolioGoalReachedBody(String value) {
    return 'تبلغ قيمة محفظتك الآن $value.';
  }

  @override
  String get errAiTruncated =>
      'انقطع التحليل قبل اكتماله. يرجى المحاولة مرة أخرى – لم يُحتسب من حصتك.';

  @override
  String get errImageUnsupported =>
      'تعذّرت قراءة هذه الصورة. احفظها بتنسيق JPEG أو PNG وحاول مرة أخرى.';

  @override
  String get errRateLimited =>
      'طلبات كثيرة جداً خلال وقت قصير. يرجى الانتظار دقيقة ثم المحاولة مرة أخرى.';

  @override
  String get watchListNameTaken => 'توجد قائمة بهذا الاسم بالفعل.';

  @override
  String watchListLimit(int max) {
    return 'يمكنك إنشاء ما يصل إلى $max قائمة.';
  }

  @override
  String portfolioBuyBelowSold(String quantity) {
    return '$quantity على الأقل – تم بيع هذا العدد بالفعل';
  }

  @override
  String get restoreNothing => 'لم يتم العثور على مشتريات سابقة لاستعادتها.';

  @override
  String get manageSubscriptionElsewhere =>
      'لا يوجد هنا اشتراك لإدارته. تتم إدارة الاشتراك الذي تم شراؤه من App Store أو Google Play من إعدادات المتجر.';

  @override
  String get backupFailed =>
      'تعذر حفظ النسخة الاحتياطية. يرجى المحاولة مرة أخرى.';

  @override
  String get syncTooLarge =>
      'بياناتك كبيرة جدًا بحيث تتعذّر مزامنتها مع حسابك. احذف المعاملات أو الملاحظات التي لم تعد بحاجة إليها، وستتم إعادة المحاولة.';

  @override
  String get noteFull =>
      'ملاحظات هذا السهم ممتلئة، لذا لم تتم إضافة هذا الإدخال. اختصر الملاحظات وحاول مرة أخرى.';

  @override
  String portfolioNoRateFor(String symbols) {
    return 'لا يوجد سعر صرف لـ $symbols.';
  }

  @override
  String dividendsNotConverted(int count, String currencies) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          '$count من توزيعات الأرباح بـ $currencies ليس لها سعر صرف، لذا لا تُحتسب في الإجماليات.',
      one:
          'توزيع أرباح واحد بـ $currencies ليس له سعر صرف، لذا لا يُحتسب في الإجماليات.',
    );
    return '$_temp0';
  }

  @override
  String get portfolioGoalSet => 'تحديد هدف';

  @override
  String get portfolioGoalTitle => 'هدف المحفظة';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent من هدفك البالغ $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'تم بلوغ الهدف: $amount';
  }

  @override
  String get portfolioGoalRemove => 'إزالة الهدف';

  @override
  String get alertEdit => 'تعديل التنبيه';

  @override
  String get positionOpenLots => 'لا تزال بحوزتك (الأقدم أولًا)';

  @override
  String get lotRemoved => 'تم حذف المعاملة';

  @override
  String get alertDeleted => 'تم حذف التنبيه';

  @override
  String get alertsClearTriggered => 'مسح التنبيهات المُفعَّلة';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'تم مسح $count تنبيه',
      many: 'تم مسح $count تنبيهًا',
      few: 'تم مسح $count تنبيهات',
      two: 'تم مسح تنبيهين',
      one: 'تم مسح تنبيه واحد',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'الشاشة الرئيسية';

  @override
  String get allocationCountries => 'الدول';

  @override
  String get newsExplainNoteResearch =>
      'شرح بالذكاء الاصطناعي: يبحث عن الحقائق على الويب، ويفتح المقال، ويقيّم مدى موثوقية المصدر. لا يُعدّ نصيحة استثمارية. يُحتسب من حدّ الأسئلة اليومي ولا يستهلك تحليلًا.';

  @override
  String get sourceOfficial => 'رسمي';

  @override
  String get sourcePressRelease => 'بيان صحفي';

  @override
  String get sourceMajorNews => 'إعلام رئيسي';

  @override
  String get sourceOpinion => 'رأي';

  @override
  String get earningsSummaryButton => 'ماذا تضمّن أحدث تقرير؟';

  @override
  String get earningsSummaryNote =>
      'ملخّص بالذكاء الاصطناعي لإعلان نتائج الشركة والتغطية الصحفية التي يجدها على الويب. لا يُعدّ نصيحة استثمارية. يُحتسب من حدّ الأسئلة اليومي ولا يستهلك تحليلًا.';

  @override
  String get compareLastSurprise => 'ربحية السهم للربع الأخير مقابل المتوقع';

  @override
  String get compareNextReport => 'التقرير القادم';

  @override
  String get resolvingDescription => 'جارٍ تحديد السهم الذي تقصده…';

  @override
  String get instrumentTitle => 'حول هذه الأداة';

  @override
  String get instrumentHint =>
      'لا يوجد ملف شركة لهذا الرمز – قد يكون صندوقًا متداولًا (ETF) أو صندوقًا أو إيصال إيداع. اسأل الذكاء الاصطناعي ما هو، وما الذي يحتويه، وما تكلفته.';

  @override
  String get instrumentAsk => 'ما هذا؟';

  @override
  String get instrumentNote =>
      'شرح بالذكاء الاصطناعي من صفحة الصندوق لدى الجهة المُصدِرة والمواقع المالية التي يجدها على الويب. لا يُعدّ نصيحة استثمارية. يُحتسب من حدّ الأسئلة اليومي ولا يستهلك تحليلًا.';

  @override
  String suggestAskAi(String query) {
    return 'اسأل الذكاء الاصطناعي: «$query»';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'لا يوجد سعر حالي لـ $symbols.';
  }

  @override
  String get eventsRecentResults => 'النتائج المُعلنة مؤخرًا';

  @override
  String get saveToNotes => 'حفظ في ملاحظاتي';

  @override
  String get savedToNotes => 'تم الحفظ في ملاحظاتك';

  @override
  String get portfolioDividendsReceived => 'توزيعات الأرباح المستلمة';

  @override
  String get portfolioDividendsThisYear => 'هذا العام';

  @override
  String get portfolioDividendsAllTime => 'منذ البداية';

  @override
  String get portfolioAddDividend => 'إضافة توزيعات أرباح';

  @override
  String portfolioDividendAmount(String currency) {
    return 'المبلغ المستلم ($currency)';
  }

  @override
  String get portfolioDividendDate => 'تاريخ الدفع';

  @override
  String get portfolioDividendsEmpty =>
      'لم تُسجَّل أي توزيعات أرباح بعد. أضفها يدويًا، أو استورد ملف التصدير من وسيطك – تُلتقط صفوف التوزيعات فيه أيضًا.';

  @override
  String get portfolioSplit => 'تجزئة الأسهم';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'تجزئة الأسهم: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'تُعدَّل عمليات الشراء والبيع المؤرخة قبل التجزئة: يُضرب عدد الأسهم ويُقسم سعر السهم، فتبقى التكلفة كما هي.';

  @override
  String get portfolioSplitRatio => 'النسبة (جديد : قديم)';

  @override
  String get portfolioSplitRatioError =>
      'أدخل نسبة مثل 10:1، أو 1:10 للتجزئة العكسية.';

  @override
  String get portfolioSplitDate => 'تاريخ التجزئة';

  @override
  String portfolioSplitRow(String ratio) {
    return 'تجزئة الأسهم $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'تم حذف تجزئة الأسهم';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'تمت إضافة $count من تجزئات الأسهم',
      one: 'تمت إضافة تجزئة أسهم واحدة',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'تمت إضافة $count توزيعة أرباح',
      many: 'تمت إضافة $count توزيعة أرباح',
      few: 'تمت إضافة $count توزيعات أرباح',
      two: 'تمت إضافة توزيعتَي أرباح',
      one: 'تمت إضافة توزيعة أرباح واحدة',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'تصدير توزيعات الأرباح (CSV)';

  @override
  String get portfolioDividendDeleted => 'تم حذف توزيعة الأرباح';

  @override
  String get portfolioDividendsHint =>
      'المبالغ كما وصلت إلى حسابك، بعملة الدفع؛ وتُحوَّل المجاميع بسعر اليوم. لإقرارك الضريبي، استخدم كشف حساب وسيطك.';

  @override
  String get awayTitle => 'أثناء غيابك';

  @override
  String awaySince(String when) {
    return 'منذ $when';
  }

  @override
  String get awayQuiet => 'لم يتحرك شيء كثيرًا.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'تم تفعيل $count تنبيه',
      many: 'تم تفعيل $count تنبيهًا',
      few: 'تم تفعيل $count تنبيهات',
      two: 'تم تفعيل تنبيهين',
      one: 'تم تفعيل تنبيه واحد',
      zero: 'لم يتم تفعيل أي تنبيه',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'أعلنت نتائجها: $symbols';
  }

  @override
  String get moveWhyButton => 'لماذا يتحرك اليوم؟';

  @override
  String moveWhyTitle(String percent) {
    return '$percent اليوم';
  }

  @override
  String get moveWhyNote =>
      'تفسير بالذكاء الاصطناعي من أخبار اليوم على الويب؛ قد يكون السبب الحقيقي مجهولاً أو مختلفاً. ليست نصيحة استثمارية. يستهلك حصتك اليومية من الأسئلة، وليس تحليلاً.';

  @override
  String get sectionTechnical => 'الصورة الفنية';

  @override
  String get labelSma50 => 'متوسط 50 يومًا';

  @override
  String get labelSma200 => 'متوسط 200 يوم';

  @override
  String get labelRsi => 'RSI (14 يومًا)';

  @override
  String get labelVolatility30 => 'التقلب (30 يومًا)';

  @override
  String techAbove(String percent) {
    return '$percent أعلى';
  }

  @override
  String techBelow(String percent) {
    return '$percent أدنى';
  }

  @override
  String get techOverbought => 'تشبّع شرائي';

  @override
  String get techOversold => 'تشبّع بيعي';

  @override
  String get techNeutral => 'متعادل';

  @override
  String get techGoldenCross =>
      'متوسط 50 يومًا أعلى من متوسط 200 يوم – اتجاه صاعد وفق القراءة التقليدية.';

  @override
  String get techDeathCross =>
      'متوسط 50 يومًا أدنى من متوسط 200 يوم – اتجاه هابط وفق القراءة التقليدية.';

  @override
  String get glossSma50 =>
      'متوسط سعر الإغلاق لآخر 50 يوم تداول. غالبًا يُقرأ السعر فوقه كقوة قصيرة الأجل، وتحته كضعف.';

  @override
  String get glossSma200 =>
      'متوسط سعر الإغلاق لآخر 200 يوم تداول – خط الاتجاه التقليدي طويل الأجل. يعتبر كثير من المستثمرين السعر فوقه اتجاهًا صاعدًا طويل الأجل.';

  @override
  String get glossRsi =>
      'مؤشر القوة النسبية: يقارن المكاسب الأخيرة بالخسائر الأخيرة على مقياس من 0 إلى 100. فوق 70 يوصف السهم غالبًا بأنه في تشبّع شرائي (ارتفع بسرعة)، وتحت 30 في تشبّع بيعي – لكن الاتجاه القوي قد يبقى هناك طويلًا.';

  @override
  String get glossVolatility =>
      'مقدار تذبذب السعر من يوم لآخر، محسوبًا على أساس سنوي: 20% تعني أن سنة عادية تتحرك ضمن ±20% تقريبًا. التقلب الأعلى يعني تحركات أكبر في الاتجاهين.';

  @override
  String get techNote =>
      'محسوب من أسعار الإغلاق اليومية. الإشارات الفنية تصف الماضي، لا المستقبل.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$above من أصل $count مراكز فوق متوسط 200 يوم الخاص بها';
  }

  @override
  String get watchSignalsTitle => 'إشارات';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · تشبّع بيعي';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · تشبّع شرائي';
  }

  @override
  String get signalCrossedAbove => 'اخترق متوسط 200 يوم صعودًا';

  @override
  String get signalCrossedBelow => 'اخترق متوسط 200 يوم هبوطًا';

  @override
  String get signalAlertsTitle => 'إشعارات الإشارات الفنية';

  @override
  String get signalAlertsSubtitle =>
      'مرة واحدة يوميًا، عندما يصل سهم تتابعه إلى تشبّع بيعي أو تشبّع شرائي (RSI)، أو يتجاوز سعره متوسط 200 يوم.';

  @override
  String get signalAlertsNotification => 'إشارات فنية';

  @override
  String get glossaryPageTitle => 'مسرد المصطلحات';

  @override
  String get glossaryPageSubtitle =>
      'شروح بسيطة لكل رقم يعرضه التطبيق، من P/E إلى RSI';

  @override
  String get glossarySearchHint => 'البحث في المسرد';

  @override
  String get portfolioCash => 'النقد';

  @override
  String get portfolioCashTitle => 'الرصيد النقدي';

  @override
  String get portfolioCashHint =>
      'أموال غير مستثمرة لدى الوسيط، حسب العملة. تُحسب في القيمة الإجمالية والتوزيع، لا في العائد.';

  @override
  String portfolioCashAmount(String currency) {
    return 'المبلغ ($currency)';
  }

  @override
  String get portfolioCashEdit => 'تعيين الرصيد النقدي';

  @override
  String get portfolioDividendsByMonth => 'حسب الشهر';

  @override
  String get dividendsLegendReceived => 'مستلمة';

  @override
  String get dividendsLegendExpected => 'متوقعة';

  @override
  String get portfolioDividendsExpected => 'المتوقع تاليًا';

  @override
  String get portfolioDividendsExpectedNote =>
      'تقدير مبني على تواريخ ومبالغ الدفعات التي سجّلتها؛ قد تغيّرها الشركات أو تتخلّف عنها.';

  @override
  String portfolioDividendAround(String date) {
    return 'حوالي $date';
  }
}
