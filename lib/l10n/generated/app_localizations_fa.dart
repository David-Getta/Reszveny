// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class AppLocalizationsFa extends AppLocalizations {
  AppLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get appTitle => 'StockLens';

  @override
  String get homeTagline =>
      'از یک سهم عکس بگیرید و همه‌چیز را درباره‌اش بدانید.';

  @override
  String get homeHint =>
      'برگه سهام، صفحه اپلیکیشن کارگزاری، روزنامه یا لوگوی شرکت – هر چیزی که سهم را مشخص کند.';

  @override
  String get takePhoto => 'عکس گرفتن';

  @override
  String get chooseFromGallery => 'انتخاب از گالری';

  @override
  String get chooseImage => 'انتخاب تصویر';

  @override
  String get enterTickerManually => 'ورود دستی نماد';

  @override
  String get tickerInputLabel => 'نماد سهم';

  @override
  String get tickerInputHint => 'مثلاً AAPL';

  @override
  String get lookUp => 'جستجو';

  @override
  String demoModeBanner(String symbols) {
    return 'حالت نمایشی – کلید داده‌های بازار تنظیم نشده است. داده‌های نمونه برای این نمادها موجود است: $symbols.';
  }

  @override
  String get recognizing => 'در حال تحلیل تصویر…';

  @override
  String get loadingData => 'در حال بارگذاری داده‌ها…';

  @override
  String get noCandidatesTitle => 'سهمی شناسایی نشد';

  @override
  String get noCandidatesBody =>
      'نتوانستیم سهمی را در این تصویر شناسایی کنیم. عکس واضح‌تری بگیرید یا نماد را به‌صورت دستی وارد کنید.';

  @override
  String get whatWeSaw => 'آنچه دیدیم';

  @override
  String get chooseCandidateTitle => 'منظورتان کدام سهم بود؟';

  @override
  String confidencePercent(int percent) {
    return '$percent٪ اطمینان';
  }

  @override
  String get settings => 'تنظیمات';

  @override
  String get language => 'زبان';

  @override
  String get systemLanguage => 'پیش‌فرض سیستم';

  @override
  String get about => 'درباره';

  @override
  String get disclaimer =>
      'این برنامه فقط اطلاعات ارائه می‌دهد و توصیه سرمایه‌گذاری نیست. داده‌ها ممکن است با تأخیر یا نادرست باشند.';

  @override
  String dataSource(String source) {
    return 'منبع داده: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'شناسایی: $source';
  }

  @override
  String get retry => 'تلاش مجدد';

  @override
  String get cancel => 'لغو';

  @override
  String get ok => 'تأیید';

  @override
  String get close => 'بستن';

  @override
  String get errorGeneric => 'مشکلی پیش آمد.';

  @override
  String get errorSectionUnavailable => 'این بخش بارگذاری نشد.';

  @override
  String get notAvailable => 'موجود نیست';

  @override
  String get sectionIdentity => 'مشخصات';

  @override
  String get sectionPrice => 'قیمت';

  @override
  String get sectionValuation => 'ارزش‌گذاری';

  @override
  String get sectionFinancials => 'اطلاعات مالی';

  @override
  String get sectionDividend => 'سود نقدی';

  @override
  String get sectionProfile => 'پروفایل شرکت';

  @override
  String get sectionAnalysts => 'نظر تحلیلگران';

  @override
  String get sectionNews => 'اخبار';

  @override
  String get sectionRecognition => 'جزئیات شناسایی';

  @override
  String get labelSymbol => 'نماد';

  @override
  String get labelExchange => 'بورس';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'واحد پول';

  @override
  String get labelCountry => 'کشور';

  @override
  String get labelIndustry => 'صنعت';

  @override
  String get labelSector => 'بخش';

  @override
  String get labelWebsite => 'وب‌سایت';

  @override
  String get labelIpoDate => 'تاریخ IPO';

  @override
  String get labelMarketCap => 'ارزش بازار';

  @override
  String get labelSharesOutstanding => 'سهام منتشرشده';

  @override
  String get labelEmployees => 'کارکنان';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'دفتر مرکزی';

  @override
  String get labelDescription => 'توضیحات';

  @override
  String get labelLastPrice => 'آخرین قیمت';

  @override
  String get labelChange => 'تغییر';

  @override
  String get labelOpen => 'قیمت بازگشایی';

  @override
  String get labelDayHigh => 'بیشترین قیمت روز';

  @override
  String get labelDayLow => 'کمترین قیمت روز';

  @override
  String get labelPreviousClose => 'قیمت پایانی قبلی';

  @override
  String get labelWeek52High => 'بیشترین قیمت 52 هفته';

  @override
  String get labelWeek52Low => 'کمترین قیمت 52 هفته';

  @override
  String get labelAverageVolume10d => 'میانگین حجم (10 روز)';

  @override
  String updatedAt(String time) {
    return 'به‌روزرسانی $time';
  }

  @override
  String get labelPeTrailing => 'P/E (گذشته)';

  @override
  String get labelPeForward => 'P/E (پیش‌رو)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / جریان نقدی آزاد';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'بتا';

  @override
  String get labelRevenueTtm => 'درآمد (TTM)';

  @override
  String get labelNetIncomeTtm => 'سود خالص (TTM)';

  @override
  String get labelGrossMargin => 'حاشیه سود ناخالص';

  @override
  String get labelOperatingMargin => 'حاشیه سود عملیاتی';

  @override
  String get labelNetMargin => 'حاشیه سود خالص';

  @override
  String get labelRoe => 'بازده حقوق صاحبان سهام';

  @override
  String get labelRoa => 'بازده دارایی‌ها';

  @override
  String get labelDebtToEquity => 'بدهی / حقوق صاحبان سهام';

  @override
  String get labelCurrentRatio => 'نسبت جاری';

  @override
  String get labelRevenueGrowth => 'رشد درآمد (YoY)';

  @override
  String get labelEpsGrowth => 'رشد EPS (YoY)';

  @override
  String get labelDividendYield => 'بازده سود نقدی';

  @override
  String get labelDividendPerShare => 'سود نقدی هر سهم';

  @override
  String get labelPayoutRatio => 'نسبت پرداخت سود';

  @override
  String get labelConsensus => 'اجماع';

  @override
  String get ratingStrongBuy => 'خرید قوی';

  @override
  String get ratingBuy => 'خرید';

  @override
  String get ratingHold => 'نگهداری';

  @override
  String get ratingSell => 'فروش';

  @override
  String get ratingStrongSell => 'فروش قوی';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count تحلیلگر',
      one: '1 تحلیلگر',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'دوره: $period';
  }

  @override
  String get noNews => 'خبر تازه‌ای وجود ندارد.';

  @override
  String get openArticle => 'باز کردن مقاله';

  @override
  String get openLinkFailed => 'پیوند باز نشد.';

  @override
  String get recognitionSummary => 'خلاصه';

  @override
  String get recognitionEvidence => 'چرا این‌طور فکر می‌کنیم';

  @override
  String get recognitionRawText => 'متن خوانده‌شده از تصویر';

  @override
  String get errMissingAnthropicKey =>
      'شناسایی تصویر تنظیم نشده است (ANTHROPIC_API_KEY وجود ندارد). نماد را به‌صورت دستی وارد کنید.';

  @override
  String get errRecognitionUnreachable =>
      'دسترسی به سرویس شناسایی ممکن نیست. اتصال اینترنت خود را بررسی کنید.';

  @override
  String errRecognitionHttp(String status) {
    return 'سرویس شناسایی خطا برگرداند (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'سرویس شناسایی نتوانست این تصویر را پردازش کند.';

  @override
  String get errRecognitionTruncated =>
      'پاسخ سرویس شناسایی ناقص بود. لطفاً دوباره تلاش کنید.';

  @override
  String get errRecognitionBadResponse => 'پاسخ غیرمنتظره از سرویس شناسایی.';

  @override
  String get errRecognitionEmpty => 'سرویس شناسایی پاسخ خالی برگرداند.';

  @override
  String get errMissingFinnhubKey =>
      'داده‌های بازار تنظیم نشده است (FINNHUB_API_KEY وجود ندارد).';

  @override
  String get errMarketUnreachable =>
      'دسترسی به سرویس داده‌های بازار ممکن نیست. اتصال اینترنت خود را بررسی کنید.';

  @override
  String get errMarketRateLimited =>
      'درخواست‌های زیادی به سرویس داده‌های بازار ارسال شده است. لطفاً یک دقیقه صبر کنید.';

  @override
  String errMarketHttp(String status) {
    return 'سرویس داده‌های بازار خطا برگرداند (HTTP $status).';
  }

  @override
  String get errMarketBadResponse => 'پاسخ غیرمنتظره از سرویس داده‌های بازار.';

  @override
  String errNoQuote(String symbol) {
    return 'داده قیمتی برای $symbol پیدا نشد.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'پروفایل شرکتی برای $symbol پیدا نشد.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'حالت نمایشی فقط از $symbols پشتیبانی می‌کند. برای داده‌های زنده یک FINNHUB_API_KEY اضافه کنید.';
  }

  @override
  String errUnknown(String detail) {
    return 'مشکلی پیش آمد: $detail';
  }

  @override
  String get newSearch => 'جستجوی جدید';

  @override
  String get recentSearches => 'اخیر';

  @override
  String get noRecentSearches => 'هنوز جستجوی اخیری وجود ندارد.';

  @override
  String get clearRecent => 'پاک کردن موارد اخیر';

  @override
  String get greeting => 'کدام سهم را بررسی کنیم؟';

  @override
  String get searchHint => 'نماد یا نام شرکت';

  @override
  String get attachImage => 'پیوست تصویر';

  @override
  String get searchResultsTitle => 'نتایج جستجو';

  @override
  String errNoResults(String query) {
    return 'سهمی برای «$query» پیدا نشد.';
  }

  @override
  String get quickBarHint => 'نماد یا نام شرکت را وارد کنید…';

  @override
  String get openFullWindow => 'باز کردن پنجره';

  @override
  String hotkeyHint(String shortcut) {
    return 'برای فراخوانی StockLens، در هر جایی $shortcut را فشار دهید.';
  }

  @override
  String get trayOpen => 'باز کردن StockLens';

  @override
  String get trayQuickSearch => 'جستجوی سریع';

  @override
  String get trayQuit => 'خروج';

  @override
  String get appearance => 'ظاهر';

  @override
  String get themeSystem => 'سیستم';

  @override
  String get themeDark => 'تیره';

  @override
  String get themeLight => 'روشن';

  @override
  String get back => 'بازگشت';

  @override
  String get aiSectionTitle => 'تحلیل هوش مصنوعی';

  @override
  String get aiIntro =>
      'مروری جامع نوشته‌شده با هوش مصنوعی: خلاصه اخبار اخیر، کسب‌وکار، نقاط قوت، ریسک‌ها و عوامل پنهان، ارزش‌گذاری و نکاتی که باید دنبال کنید.';

  @override
  String get aiGenerate => 'تولید تحلیل';

  @override
  String get aiRegenerate => 'تولید دوباره';

  @override
  String get aiGenerating =>
      'در حال آماده‌سازی تحلیل… این کار ممکن است یک یا دو دقیقه طول بکشد.';

  @override
  String get aiSources => 'منابع';

  @override
  String aiGeneratedAt(String time) {
    return 'تولیدشده $time';
  }

  @override
  String get aiDisclaimer =>
      'تحلیل تولیدشده با هوش مصنوعی بر اساس داده‌های عمومی و اخبار اخیر. ممکن است خطا داشته باشد یا قدیمی باشد و توصیه سرمایه‌گذاری نیست.';

  @override
  String get errAiNotConfigured =>
      'تحلیل هوش مصنوعی تنظیم نشده است (ANTHROPIC_API_KEY وجود ندارد).';

  @override
  String get errAiUnreachable =>
      'دسترسی به سرویس هوش مصنوعی ممکن نیست. اتصال اینترنت خود را بررسی کنید.';

  @override
  String errAiHttp(String status) {
    return 'سرویس هوش مصنوعی خطا برگرداند (HTTP $status).';
  }

  @override
  String get errAiRefused => 'سرویس هوش مصنوعی از تحلیل این سهم خودداری کرد.';

  @override
  String get errAiBadResponse => 'پاسخ غیرمنتظره از سرویس هوش مصنوعی.';

  @override
  String get sectionChart => 'نمودار قیمت';

  @override
  String get rangeOneWeek => '1 هفته';

  @override
  String get rangeOneMonth => '1 ماه';

  @override
  String get rangeThreeMonths => '3 ماه';

  @override
  String get rangeOneYear => '1 سال';

  @override
  String get rangeFiveYears => '5 سال';

  @override
  String get chartUnavailable =>
      'تاریخچه قیمت از منبع داده فعلی در دسترس نیست.';

  @override
  String get sectionStatements => 'صورت‌های مالی (سالانه)';

  @override
  String get labelFiscalYear => 'سال مالی';

  @override
  String get labelRevenue => 'درآمد';

  @override
  String get labelNetIncome => 'سود خالص';

  @override
  String get labelTotalAssets => 'کل دارایی‌ها';

  @override
  String get labelTotalLiabilities => 'کل بدهی‌ها';

  @override
  String get labelEquity => 'حقوق صاحبان سهام';

  @override
  String get labelOperatingCashFlow => 'جریان نقدی عملیاتی';

  @override
  String get statementsUnavailable =>
      'صورت‌های مالی گزارش‌شده برای این سهم در دسترس نیست.';

  @override
  String get launchAtLogin => 'اجرا هنگام ورود به سیستم';

  @override
  String get hotkeyLabel => 'کلید میانبر سراسری';

  @override
  String get hotkeyRecordHint =>
      'اینجا کلیک کنید و سپس ترکیب کلید جدید را فشار دهید';

  @override
  String get hotkeyReset => 'بازنشانی به پیش‌فرض';

  @override
  String get pasteImage => 'چسباندن تصویر از کلیپ‌بورد';

  @override
  String get errClipboardNoImage => 'تصویری در کلیپ‌بورد وجود ندارد.';

  @override
  String get favorites => 'علاقه‌مندی‌ها';

  @override
  String get addToFavorites => 'افزودن به علاقه‌مندی‌ها';

  @override
  String get removeFromFavorites => 'حذف از علاقه‌مندی‌ها';

  @override
  String get noFavorites =>
      'هنوز علاقه‌مندی‌ای وجود ندارد. برای افزودن، روی ستارهٔ یک سهم ضربه بزنید.';

  @override
  String get displayCurrency => 'واحد پول نمایش';

  @override
  String get displayCurrencyNone => 'فقط واحد پول خود سهم';

  @override
  String labelConverted(String currency) {
    return '≈ به $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'نرخ: 1 $from = $rate $to (ECB، $date)';
  }
}
