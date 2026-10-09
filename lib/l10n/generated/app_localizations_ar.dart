// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'Reszveny';

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
    return 'اضغط $shortcut في أي مكان لاستدعاء Reszveny.';
  }

  @override
  String get trayOpen => 'فتح Reszveny';

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
}
