// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class AppLocalizationsFa extends AppLocalizations {
  AppLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

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
    return 'برای فراخوانی WhatStock، در هر جایی $shortcut را فشار دهید.';
  }

  @override
  String get trayOpen => 'باز کردن WhatStock';

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
      'مروری جامع نوشته‌شده با هوش مصنوعی: خلاصه اخبار اخیر، کسب‌وکار، نقاط قوت، ریسک‌ها و عوامل پنهان، ارزش‌گذاری، چشم‌انداز قیمت با سناریوهایی از زوایای روان‌شناختی، جامعه‌شناختی، تکنیکال و کلان، و نکاتی که باید دنبال کنید.';

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

  @override
  String get updates => 'به‌روزرسانی‌ها';

  @override
  String currentVersion(String version) {
    return 'نسخهٔ $version';
  }

  @override
  String get autoUpdate => 'نصب خودکار به‌روزرسانی‌ها';

  @override
  String get checkForUpdates => 'بررسی به‌روزرسانی‌ها';

  @override
  String get updateChecking => 'در حال بررسی به‌روزرسانی‌ها…';

  @override
  String get updateUpToDate => 'شما از آخرین نسخه استفاده می‌کنید.';

  @override
  String updateAvailable(String version) {
    return 'نسخهٔ $version در دسترس است.';
  }

  @override
  String get updateDownloading => 'در حال بارگیری به‌روزرسانی در پس‌زمینه…';

  @override
  String get updateDownloaded =>
      'به‌روزرسانی آماده است. برای نصب، برنامه را دوباره راه‌اندازی کنید.';

  @override
  String get updateNow => 'به‌روزرسانی';

  @override
  String get restartNow => 'راه‌اندازی مجدد';

  @override
  String get updatesViaStore =>
      'به‌روزرسانی‌ها به‌طور خودکار از طریق فروشگاه برنامه‌ها دریافت می‌شوند.';

  @override
  String get updateCheckFailed => 'بررسی به‌روزرسانی‌ها ممکن نشد.';

  @override
  String get subscription => 'اشتراک';

  @override
  String get planTrial => 'آزمایشی';

  @override
  String get planNormal => 'معمولی';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'طرح فعالی وجود ندارد';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count تحلیل در ماه';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$days روز آزمایش رایگان با $count تحلیل';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days روز از دوره آزمایشی باقی مانده',
      one: '1 روز از دوره آزمایشی باقی مانده',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'دوره آزمایشی رایگان شما به پایان رسید. برای ادامه تحلیل یک طرح انتخاب کنید.';

  @override
  String analysesRemaining(int remaining, int total) {
    return '$remaining از $total تحلیل در این دوره باقی مانده';
  }

  @override
  String extraCredits(int count) {
    return '$count تحلیل اضافی';
  }

  @override
  String renewsOn(String date) {
    return 'تمدید در $date';
  }

  @override
  String get choosePlan => 'انتخاب طرح';

  @override
  String get currentPlan => 'طرح فعلی';

  @override
  String get subscribe => 'مشترک شوید';

  @override
  String get perMonth => '/ ماه';

  @override
  String get extraPacksTitle => 'بیشتر نیاز دارید؟ تحلیل اضافی بخرید';

  @override
  String get extraPacksHint =>
      'تحلیل‌های اضافی هرگز منقضی نمی‌شوند و پس از سهمیه ماهانه شما استفاده می‌شوند.';

  @override
  String get buy => 'خرید';

  @override
  String get restorePurchases => 'بازیابی خریدها';

  @override
  String get manageSubscription => 'مدیریت اشتراک';

  @override
  String get purchaseSuccess => 'متشکریم! خرید شما فعال شد.';

  @override
  String get purchasePending => 'خرید در انتظار…';

  @override
  String get purchaseFailed => 'خرید تکمیل نشد.';

  @override
  String get purchaseCanceled => 'خرید لغو شد.';

  @override
  String get billingUnavailable =>
      'خرید هنوز در این پلتفرم در دسترس نیست. در تلفن یا Mac خود مشترک شوید؛ طرح شما در همه دستگاه‌ها کار می‌کند.';

  @override
  String get errQuotaExceeded =>
      'تحلیلی برای این دوره باقی نمانده است. طرح خود را ارتقا دهید یا تحلیل اضافی بخرید.';

  @override
  String get errTrialExpired =>
      'دوره آزمایشی رایگان شما به پایان رسید. برای ادامه یک طرح انتخاب کنید.';

  @override
  String get errNoPlan => 'برای تحلیل هوش مصنوعی به یک طرح فعال نیاز است.';

  @override
  String get viewPlans => 'مشاهده طرح‌ها';

  @override
  String get usageTitle => 'میزان استفاده';

  @override
  String get demoPurchaseNote =>
      'پرداخت آزمایشی: خریدها در این پلتفرم شبیه‌سازی می‌شوند.';

  @override
  String get mostPopular => 'محبوب‌ترین';

  @override
  String get bestValue => 'بهترین ارزش';

  @override
  String get planFeaturesCommon =>
      'شناسایی عکس، داده‌های زنده، نمودارها، علاقه‌مندی‌ها و همه 120 زبان در هر طرح گنجانده شده‌اند. سهمیه مربوط به تحلیل‌های هوش مصنوعی است.';

  @override
  String get searchLanguages => 'جستجوی زبان‌ها…';

  @override
  String get noLanguageMatch => 'زبانی مطابقت ندارد.';

  @override
  String get aiSettings => 'تحلیل هوش مصنوعی';

  @override
  String get aiLength => 'طول';

  @override
  String get aiDepthBrief => 'کوتاه';

  @override
  String get aiDepthStandard => 'استاندارد';

  @override
  String get aiDepthDeep => 'عمیق';

  @override
  String get aiDepthBriefDesc => 'نکات اصلی، سریع.';

  @override
  String get aiDepthStandardDesc => 'گزارش کامل با همه بخش‌ها.';

  @override
  String get aiDepthDeepDesc =>
      'جستجوهای وب بیشتر، مقایسه با رقبا و جزئیات عمیق‌تر.';

  @override
  String aiDepthWords(String min, String max) {
    return 'حدود $min–$max کلمه';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count تحلیل مصرف می‌کند',
      one: '$count تحلیل مصرف می‌کند',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'سطح خواننده';

  @override
  String get aiReaderBeginner => 'مبتدی';

  @override
  String get aiReaderExperienced => 'باتجربه';

  @override
  String get aiReaderBeginnerDesc =>
      'زبان ساده؛ همه اصطلاحات تخصصی توضیح داده می‌شوند.';

  @override
  String get aiReaderExperiencedDesc => 'متنی فشرده‌تر با اصطلاحات رایج مالی.';

  @override
  String get aiCounterArgument => 'قوی‌ترین استدلال مخالف';

  @override
  String get aiCounterArgumentDesc =>
      'خلاصه همیشه با قوی‌ترین استدلال علیه نتیجه‌گیری خودش به پایان می‌رسد.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'تا $count جستجوی وب برای هر تحلیل با طرح شما',
      one: 'تا $count جستجوی وب برای هر تحلیل با طرح شما',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'تعداد جستجوی وب در طول استاندارد بر اساس طرح: معمولی $normal، Pro $pro، Max $max، Ultra $ultra. حالت کوتاه 2 جستجوی کمتر و حالت عمیق 2 جستجوی بیشتر دارد.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'تا $count جستجوی وب',
      one: 'تا $count جستجوی وب',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count جستجوی وب برای هر تحلیل',
      one: '$count جستجوی وب برای هر تحلیل',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'این طول به $needed تحلیل نیاز دارد، اما فقط $left تحلیل باقی مانده است. در تنظیمات طول کوتاه‌تری انتخاب کنید یا تحلیل بیشتری تهیه کنید.';
  }

  @override
  String get outlookMarketMood => 'حال‌وهوای بازار';

  @override
  String get moodVeryPessimistic => 'بسیار بدبینانه';

  @override
  String get moodPessimistic => 'بدبینانه';

  @override
  String get moodNeutral => 'خنثی';

  @override
  String get moodOptimistic => 'خوش‌بینانه';

  @override
  String get moodVeryOptimistic => 'بسیار خوش‌بینانه';

  @override
  String get scenarioBull => 'سناریوی خوش‌بینانه';

  @override
  String get scenarioBase => 'سناریوی پایه';

  @override
  String get scenarioBear => 'سناریوی بدبینانه';

  @override
  String outlookCurrentPrice(String price) {
    return 'قیمت فعلی: $price';
  }

  @override
  String get outlookKeyLevels => 'سطوح کلیدی';

  @override
  String get keyLevelSupport => 'حمایت';

  @override
  String get keyLevelResistance => 'مقاومت';

  @override
  String get keyLevelAnchor => 'سطح مرجع';

  @override
  String get upcomingEvents => 'رویدادهای پیش رو';

  @override
  String get outlookChartNote =>
      'بازه‌های تقریبی؛ احتمال‌ها برآوردهایی تقریبی‌اند، نه پیش‌بینی.';

  @override
  String get accountTitle => 'حساب کاربری';

  @override
  String get signIn => 'ورود';

  @override
  String get signOut => 'خروج';

  @override
  String get notSignedIn => 'وارد نشده‌اید';

  @override
  String get accountBenefit =>
      'وارد شوید تا اشتراک شما روی همه دستگاه‌هایتان کار کند.';

  @override
  String get accountSyncedNote =>
      'اشتراک و تحلیل‌های باقی‌مانده شما در همه دستگاه‌ها یکسان است.';

  @override
  String get signInTitle => 'ورود به WhatStock';

  @override
  String get emailLabel => 'نشانی ایمیل';

  @override
  String get continueWithEmail => 'ادامه با ایمیل';

  @override
  String codeSentTo(String email) {
    return 'یک کد 6 رقمی به $email فرستادیم. این کد 10 دقیقه اعتبار دارد.';
  }

  @override
  String get codeLabel => 'کد ورود';

  @override
  String get resendCode => 'ارسال کد جدید';

  @override
  String get useDifferentEmail => 'استفاده از ایمیل دیگر';

  @override
  String get errInvalidCode => 'کد نادرست است یا منقضی شده است.';

  @override
  String get errInvalidEmail => 'لطفاً یک نشانی ایمیل معتبر وارد کنید.';

  @override
  String get errSignInFailed =>
      'ورود ناموفق بود. اتصال خود را بررسی کنید و دوباره تلاش کنید.';

  @override
  String get checkoutWaiting =>
      'پرداخت را در مرورگر کامل کنید. برنامه پس از پایان به‌طور خودکار به‌روز می‌شود.';

  @override
  String get paymentViaStripe =>
      'پرداخت امن در مرورگر از طریق Stripe. هر زمان بخواهید می‌توانید لغو کنید.';

  @override
  String get paymentViaStore =>
      'هزینه از طریق حساب App Store یا Google Play شما دریافت می‌شود. هر زمان بخواهید می‌توانید از تنظیمات فروشگاه لغو کنید.';

  @override
  String get keySpace => 'فاصله';

  @override
  String get doubleOptionTitle => 'دو بار فشار دادن Option';

  @override
  String get doubleOptionSubtitle =>
      'دو بار فشار دادن سریع کلید Option نیز WhatStock را فرا می‌خواند.';

  @override
  String get doubleOptionPermission =>
      'برای اینکه در برنامه‌های دیگر هم کار کند، در تنظیمات سیستم ← حریم خصوصی و امنیت ← نظارت بر ورودی به WhatStock اجازه دهید و سپس برنامه را دوباره باز کنید.';

  @override
  String get openSystemSettings => 'باز کردن تنظیمات سیستم';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'برای فراخوانی WhatStock، در هر جایی $shortcut را فشار دهید یا Option را دو بار فشار دهید.';
  }

  @override
  String get scenarioMostLikely => 'محتمل‌ترین';

  @override
  String get longTermToday => 'امروز';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years سال',
      one: '$years سال',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range در سال';
  }

  @override
  String longTermLikely(String price) {
    return 'محتمل‌ترین $price';
  }

  @override
  String get confidenceLow => 'اطمینان کم';

  @override
  String get confidenceMedium => 'اطمینان متوسط';

  @override
  String get confidenceHigh => 'اطمینان زیاد';

  @override
  String get longTermNote =>
      'بازه‌های بلندمدت بر فرض‌های ذکرشده استوارند و با گذشت زمان گسترده‌تر می‌شوند. قیمت‌ها بدون سود سهام است. برآوردهای تقریبی‌اند، نه پیش‌بینی.';

  @override
  String get portfolio => 'سبد سهام';

  @override
  String get portfolioEmpty =>
      'هنوز خالی است. یک سهم را باز کنید و روی «افزودن به سبد» بزنید تا دارایی‌هایتان را دنبال کنید.';

  @override
  String get portfolioLocalNote =>
      'فقط روی همین دستگاه ذخیره می‌شود. جمع‌ها با نرخ‌های مرجع بانک مرکزی اروپا تبدیل می‌شوند؛ قیمت‌ها ممکن است با تأخیر باشند.';

  @override
  String get addToPortfolio => 'افزودن به سبد';

  @override
  String portfolioAddTitle(String symbol) {
    return 'افزودن $symbol';
  }

  @override
  String get portfolioQuantity => 'تعداد سهم';

  @override
  String portfolioBuyPrice(String currency) {
    return 'قیمت هر سهم ($currency)';
  }

  @override
  String get portfolioBuyDate => 'تاریخ خرید';

  @override
  String get portfolioAdd => 'افزودن';

  @override
  String get portfolioInvalidNumber => 'عددی بزرگ‌تر از صفر وارد کنید.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol به سبد افزوده شد.';
  }

  @override
  String get portfolioTotalValue => 'ارزش کل';

  @override
  String get portfolioToday => 'امروز';

  @override
  String get portfolioGainLoss => 'سود/زیان';

  @override
  String get portfolioInvested => 'سرمایه‌گذاری‌شده';

  @override
  String get portfolioAllocation => 'ترکیب';

  @override
  String get portfolioPositions => 'موقعیت‌ها';

  @override
  String portfolioAvgCost(String price) {
    return 'میانگین بهای خرید $price';
  }

  @override
  String get portfolioYourPosition => 'موقعیت شما';

  @override
  String get portfolioPurchases => 'خریدها';

  @override
  String get portfolioRemove => 'حذف';

  @override
  String get portfolioExcluded =>
      'موقعیت‌های بدون قیمت یا نرخ ارز در جمع‌ها لحاظ نمی‌شوند.';

  @override
  String get priceAlerts => 'هشدارهای قیمت';

  @override
  String get setPriceAlert => 'تنظیم هشدار قیمت';

  @override
  String alertDialogTitle(String symbol) {
    return 'هشدار قیمت · $symbol';
  }

  @override
  String get alertKindAbove => 'بالاتر از';

  @override
  String get alertKindBelow => 'پایین‌تر از';

  @override
  String get alertKindMove => 'نوسان زیاد در یک روز';

  @override
  String alertTargetPrice(String currency) {
    return 'قیمت ($currency)';
  }

  @override
  String get alertMovePercent => 'تغییر روزانه (%)';

  @override
  String get alertAlreadyMet => 'قیمت از این سطح گذشته است.';

  @override
  String get alertSave => 'تنظیم هشدار';

  @override
  String alertCreated(String symbol) {
    return 'هشدار برای $symbol تنظیم شد.';
  }

  @override
  String get alertsEmpty =>
      'هنوز هشداری نیست. یک سهم را باز کنید و روی زنگ بزنید.';

  @override
  String get alertsNote =>
      'هشدارها تا زمانی که WhatStock در حال اجراست هر ۵ دقیقه بررسی می‌شوند. روی رایانه، برنامه در نوار منو یا سینی سیستم ادامه می‌دهد؛ روی گوشی فعلاً فقط وقتی برنامه باز است هشدار می‌دهد.';

  @override
  String alertDescAbove(String price) {
    return 'بالاتر از $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'پایین‌تر از $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'تغییر روزانه ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'فعال‌شده در $date با قیمت $price';
  }

  @override
  String get alertRearm => 'فعال‌سازی دوباره';

  @override
  String get alertDelete => 'حذف';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol از $price بالاتر رفت';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol به زیر $price رسید';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol امروز $percent تغییر کرد';
  }

  @override
  String alertHitBody(String price) {
    return 'قیمت فعلی: $price';
  }

  @override
  String get alertOpen => 'باز کردن';

  @override
  String get keepInTrayTitle => 'پس از بستن پنجره هم اجرا شود';

  @override
  String get keepInTraySubtitle =>
      'WhatStock در نوار منو یا سینی سیستم می‌ماند تا میان‌بر و هشدارهای قیمت همچنان کار کنند.';

  @override
  String get termsOfUse => 'شرایط استفاده';

  @override
  String get privacyPolicy => 'سیاست حریم خصوصی';

  @override
  String get subscriptionLegal =>
      'اشتراک تا زمانی که لغوش نکنید هر ماه به‌طور خودکار تمدید می‌شود. با خرید اشتراک، شرایط استفاده و سیاست حریم خصوصی را می‌پذیرید.';

  @override
  String get deleteAccount => 'حذف حساب';

  @override
  String get deleteAccountTitle => 'حسابتان حذف شود؟';

  @override
  String get deleteAccountBody =>
      'حساب شما و همهٔ آنچه روی سرور ما ذخیره شده (ایمیل، سهمیه، استفاده) برای همیشه حذف می‌شود و تحلیل‌های استفاده‌نشده از بین می‌روند. اشتراکی که در مرورگر پرداخت شده فوراً لغو می‌شود؛ اشتراک App Store یا Google Play را باید در تنظیمات فروشگاه لغو کنید.';

  @override
  String get deleteLocalData =>
      'داده‌های این دستگاه هم حذف شود (سبد سهام، هشدارها، علاقه‌مندی‌ها، سابقه، تحلیل‌های ذخیره‌شده)';

  @override
  String get deleteAccountConfirm => 'حذف دائمی';

  @override
  String get accountDeleted => 'حساب شما حذف شد.';

  @override
  String get errDeleteAccount =>
      'حذف حساب ممکن نشد. اتصال را بررسی کنید و دوباره تلاش کنید.';

  @override
  String get aiTrialBriefNote =>
      'تحلیل‌های دوره آزمایشی کوتاه هستند و با یک مدل هوش مصنوعی سریع‌تر تهیه می‌شوند. با یک طرح، تواناترین هوش مصنوعی ما، جستجوی وب بیشتر و طول‌های استاندارد و عمیق را دریافت می‌کنید.';

  @override
  String get billingMonthly => 'ماهانه';

  @override
  String get billingYearly => 'سالانه';

  @override
  String get yearlyDiscount => '2 ماه رایگان';

  @override
  String get perYear => '/ سال';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price در ماه';
  }

  @override
  String get subscriptionLegalYearly =>
      'اشتراک سالانه تا زمانی که لغوش نکنید هر سال به‌طور خودکار تمدید می‌شود. با خرید اشتراک، شرایط استفاده و سیاست حریم خصوصی را می‌پذیرید.';

  @override
  String get myAnalyses => 'تحلیل‌های من';

  @override
  String get navAlerts => 'هشدارها';

  @override
  String get inviteTitle => 'پیش‌نمایش بسته';

  @override
  String get inviteBody =>
      'WhatStock فعلاً فقط با دعوت‌نامه در دسترس است. کد دعوتی را که دریافت کرده‌اید وارد کنید.';

  @override
  String get inviteCodeLabel => 'کد دعوت';

  @override
  String get inviteContinue => 'ادامه';

  @override
  String get inviteInvalid => 'این کد دعوت معتبر نیست.';

  @override
  String get inviteExpired =>
      'این دعوت منقضی شده است. از کسی که شما را دعوت کرده است یک کد جدید بخواهید.';

  @override
  String get inviteDeviceLimit =>
      'این کد دعوت هم‌اکنون روی حداکثر تعداد مجاز دستگاه‌ها استفاده می‌شود.';

  @override
  String get previewConfidential => 'پیش‌نمایش محرمانه';

  @override
  String get errPreviewDailyLimit =>
      'سقف تحلیل امروزِ این پیش‌نمایش پر شده است. فردا دوباره امتحان کنید.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ساعت پیش',
      one: '1 ساعت پیش',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count روز پیش',
      one: '1 روز پیش',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'این تحلیل به‌روز شود؟';

  @override
  String staleBody(String age) {
    return 'این تحلیل $age تولید شده است. ممکن است از آن زمان قیمت‌ها، اخبار و نتایج تغییر کرده باشند.';
  }

  @override
  String get staleKeep => 'نمایش تحلیل قبلی';

  @override
  String get staleRefresh => 'تولید تحلیل جدید';

  @override
  String seeAll(int count) {
    return 'دیدن همه ($count)';
  }

  @override
  String get searchAnalyses => 'جستجو در تحلیل‌های شما';

  @override
  String get deleteAnalysis => 'حذف';

  @override
  String analysisDeleted(String symbol) {
    return 'تحلیل $symbol حذف شد';
  }

  @override
  String get keyLevelAlertHint =>
      'روی یک سطح بزنید تا وقتی قیمت به آن رسید، هشدار بگیرید.';

  @override
  String get shareAnalysisTitle => 'اشتراک‌گذاری تحلیل';

  @override
  String get shareAsImage => 'اشتراک‌گذاری به‌صورت تصویر';

  @override
  String get shareAsText => 'اشتراک‌گذاری به‌صورت متن';

  @override
  String get shareCardFooter => 'ساخته‌شده با WhatStock';

  @override
  String get shareCardDisclaimer =>
      'تحلیل هوش مصنوعی · توصیه سرمایه‌گذاری نیست';

  @override
  String get referralTitle => 'دعوت از دوستان';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count تحلیل اضافی',
      one: '1 تحلیل اضافی',
    );
    return 'کد خود را به اشتراک بگذارید. دوستتان بلافاصله $_temp0 دریافت می‌کند و شما هم پس از نخستین تحلیل او همین مقدار را می‌گیرید.';
  }

  @override
  String get referralYourCode => 'کد شما';

  @override
  String referralStats(int invited, int rewarded) {
    return 'دعوت‌شده: $invited · پاداش‌گرفته: $rewarded';
  }

  @override
  String get referralHaveCode => 'کدی از یک دوست دارید؟';

  @override
  String get referralRedeem => 'اعمال کد';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count تحلیل اضافی افزوده شد. خوش آمدید!',
      one: '1 تحلیل اضافی افزوده شد. خوش آمدید!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'این کد وجود ندارد. آن را بررسی کنید و دوباره تلاش کنید.';

  @override
  String get referralErrOwn => 'نمی‌توانید کد خودتان را اعمال کنید.';

  @override
  String get referralErrAlready => 'شما قبلاً کد یک دوست را اعمال کرده‌اید.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count تحلیل اضافی',
      one: '1 تحلیل اضافی',
    );
    return 'من با WhatStock سهام را تحلیل می‌کنم: از یک سهم عکس بگیرید تا هوش مصنوعی آن را توضیح دهد. با کد من $code $_temp0 دریافت می‌کنید.';
  }

  @override
  String get referralCopied => 'کد کپی شد';

  @override
  String get onboardTitle1 => 'از یک سهم عکس بگیرید';

  @override
  String get onboardBody1 =>
      'صفحهٔ یک اپ کارگزاری، یک روزنامه یا لوگوی یک شرکت کافی است: WhatStock سهم را تشخیص می‌دهد و قیمت، نمودار و ارقام کلیدی آن را نشان می‌دهد.';

  @override
  String get onboardTitle2 => 'در چند دقیقه آن را بفهمید';

  @override
  String get onboardBody2 =>
      'تحلیل هوش مصنوعی توضیح می‌دهد چه چیزی سهم را حرکت می‌دهد، ریسک‌ها و ارزش‌گذاری آن چیست و سه سناریو برای مسیر احتمالی قیمت ارائه می‌کند؛ همراه با منابع و به زبان شما.';

  @override
  String get onboardTitle3 => 'همیشه در جریان باشید';

  @override
  String get onboardBody3 =>
      'علاقه‌مندی‌ها، سبد سهام شما و هشدارهای قیمت شما را در جریان نگه می‌دارند. تحلیل‌های شما روی دستگاهتان می‌مانند و هر زمان بخواهید می‌توانید دوباره بازشان کنید.';

  @override
  String get onboardNext => 'بعدی';

  @override
  String get onboardStart => 'شروع کنید';

  @override
  String get onboardSkip => 'رد شدن';

  @override
  String changesTitle(String date) {
    return 'از تحلیل قبلی تاکنون ($date)';
  }

  @override
  String get changesPrice => 'قیمت';

  @override
  String get changesNoMajor => 'چشم‌انداز تغییر چشمگیری نکرده است.';

  @override
  String get changesPreviousSummary => 'خلاصهٔ قبلی';

  @override
  String get telemetryTitle => 'به بهبود WhatStock کمک کنید';

  @override
  String get telemetryBody =>
      'آمار ناشناس استفاده و گزارش‌های خرابی را هم‌رسانی کنید: کدام قابلیت‌ها استفاده می‌شوند و چه مشکلی پیش آمده است. سهام، تحلیل‌ها یا داده‌های شخصی شما هرگز ارسال نمی‌شود. می‌توانید هر زمان این را در تنظیمات تغییر دهید.';

  @override
  String get telemetryAllow => 'اجازه دادن';

  @override
  String get telemetryDecline => 'نه، متشکرم';

  @override
  String get telemetrySetting => 'آمار ناشناس و گزارش‌های خرابی';

  @override
  String get telemetrySettingHint =>
      'میزان استفاده از قابلیت‌ها و گزارش‌های خطا، بدون داده‌های شخصی یا محتوای جستجوها و تحلیل‌های شما.';

  @override
  String get askButton => 'دربارهٔ این تحلیل بپرسید';

  @override
  String askTitle(String symbol) {
    return 'پرسش‌ها دربارهٔ $symbol';
  }

  @override
  String get askIntro =>
      'هر چیزی دربارهٔ تحلیل بپرسید: یک ریسک چه معنایی دارد، چه چیزی چشم‌انداز را تغییر می‌دهد، یک عدد چطور محاسبه شده است. پاسخ‌ها بر اساس همین تحلیل هستند و توصیه سرمایه‌گذاری نیستند.';

  @override
  String get askHint => 'پرسش خود را بنویسید…';

  @override
  String get askSend => 'ارسال';

  @override
  String get askThinking => 'در حال فکر کردن…';

  @override
  String get askSuggest1 => 'بزرگ‌ترین ریسک چیست؟';

  @override
  String get askSuggest2 => 'چه چیزی چشم‌انداز را تغییر می‌دهد؟';

  @override
  String get askSuggest3 => 'به زبان ساده توضیح بده';

  @override
  String get askMaxReached =>
      'این آخرین پرسش برای این تحلیل بود. برای پرسیدن بیشتر، یک تحلیل جدید ایجاد کنید.';

  @override
  String get errAskLimit =>
      'به سقف پرسش‌های امروز رسیده‌اید. لطفاً فردا دوباره امتحان کنید.';

  @override
  String get eventTomorrow => 'فردا';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days روز دیگر',
      one: '1 روز دیگر',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'نتایج فصلی';

  @override
  String get eventBeforeOpen => 'پیش از گشایش بازار';

  @override
  String get eventAfterClose => 'پس از بسته شدن بازار';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS پیش‌بینی‌شده: $value';
  }

  @override
  String get eventFromAnalysis => 'از تحلیل شما';

  @override
  String get eventsHint =>
      'تاریخ نتایج سهم‌های علاقه‌مندی‌ها و سبد سهام شما برای 90 روز آینده، و رویدادهای تاریخ‌داری که تحلیل‌هایتان مشخص کرده‌اند.';

  @override
  String get eventsEmpty =>
      'در 90 روز آینده هیچ رویداد تاریخ‌داری وجود ندارد. برای دیدن تاریخ نتایج در اینجا، سهمی را به علاقه‌مندی‌ها یا سبد سهام اضافه کنید.';

  @override
  String get compareTitle => 'مقایسه';

  @override
  String get compareAdd => 'افزودن سهم';

  @override
  String get compareRemove => 'حذف';

  @override
  String get compareTickerHint => 'نماد سهم، مثلاً MSFT';

  @override
  String get compareHint =>
      'ارقام کلیدی کنار هم؛ بهترین مقدار در هر ردیف برجسته شده است. مبالغ به واحد پولِ خودِ هر سهم است.';

  @override
  String get compareNoAnalysis => 'هنوز تحلیلی وجود ندارد';

  @override
  String get portfolioDividends => 'سود نقدی سالانه';

  @override
  String portfolioDividendYield(String percent) {
    return 'بازده $percent';
  }

  @override
  String get portfolioDividendNote =>
      'سود نقدی سالانهٔ مورد انتظار بر اساس سود نقدی پرداخت‌شده در 12 ماه گذشته محاسبه می‌شود؛ پرداخت‌های آینده تضمینی نیست.';

  @override
  String positionDividend(String amount) {
    return 'سود نقدی: سالانه $amount';
  }

  @override
  String get chartAvgCost => 'میانگین شما';

  @override
  String get chartAlertLevel => 'هشدار';

  @override
  String get marketsToday => 'بازارها امروز';

  @override
  String get notesTitle => 'یادداشت‌های من';

  @override
  String get notesHint =>
      'چرا آن را خریدید، به چه چیزی توجه دارید، چه چیزی باعث می‌شود آن را بفروشید؟';

  @override
  String get notesInfo =>
      'فقط روی همین دستگاه ذخیره می‌شود. تحلیل هوش مصنوعی یادداشت‌های شما را در نظر می‌گیرد.';

  @override
  String notesSaved(String date) {
    return 'ذخیره شد: $date';
  }

  @override
  String get peersTitle => 'شرکت‌های مشابه';

  @override
  String get portfolioExport => 'خروجی CSV';

  @override
  String get portfolioImport => 'وارد کردن از CSV';

  @override
  String get portfolioImportHint =>
      'در هر خط یک خرید جای‌گذاری کنید: نماد سهم، تعداد، قیمت، واحد پول، تاریخ (YYYY-MM-DD). ستون‌ها می‌توانند با ویرگول، نقطه‌ویرگول یا تب از هم جدا شوند؛ سطر عنوان اختیاری است.';

  @override
  String get portfolioImportButton => 'وارد کردن';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count خرید افزوده شد',
      one: '1 خرید افزوده شد',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count خط نادیده گرفته شد',
      one: '1 خط نادیده گرفته شد',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'سبد سهام، علاقه‌مندی‌ها، هشدارهای قیمت و یادداشت‌ها در همه دستگاه‌های شما همگام‌سازی می‌شوند.';

  @override
  String syncLast(String time) {
    return 'آخرین همگام‌سازی: $time';
  }

  @override
  String get syncNow => 'همگام‌سازی اکنون';

  @override
  String get syncFailed =>
      'همگام‌سازی ناموفق بود. به‌طور خودکار دوباره تلاش می‌شود.';

  @override
  String get alertEmailTitle => 'ایمیل هنگام فعال شدن هشدار';

  @override
  String get alertEmailOn =>
      'هشدارهای شما را هر چند دقیقه بررسی می‌کنیم و برایتان ایمیل می‌فرستیم، حتی وقتی برنامه بسته است.';

  @override
  String get alertEmailSignIn =>
      'برای دریافت هشدارها با ایمیل، حتی وقتی برنامه بسته است، در تنظیمات با ایمیل خود وارد شوید.';

  @override
  String get portfolioHistory => 'روند ارزش';

  @override
  String get portfolioReviewTitle => 'بررسی سبد سهام با هوش مصنوعی';

  @override
  String get portfolioReviewIntro =>
      'هوش مصنوعی کل سبد سهام شما را بررسی می‌کند: تمرکز، وابستگی به بخش‌ها و ارزها، ریسک‌های مشترک سهام‌تان و سود سهام. 1 تحلیل مصرف می‌کند.';

  @override
  String get portfolioReviewButton => 'بررسی سبد سهام من';

  @override
  String get portfolioReviewAgain => 'بررسی دوباره';

  @override
  String get portfolioReviewWorking => 'در حال بررسی سبد سهام شما…';

  @override
  String get digestTitle => 'خلاصه هفتگی از طریق ایمیل';

  @override
  String get digestHint =>
      'هر دوشنبه: عملکرد علاقه‌مندی‌ها و سبد سهام شما در هفته گذشته و تاریخ‌های پیش‌روی اعلام نتایج آن‌ها.';

  @override
  String get benchmarkTitle => 'مقایسه با S&P 500';

  @override
  String get benchmarkYours => 'خریدهای شما';

  @override
  String get benchmarkIndex => 'همان مبالغ در S&P 500';

  @override
  String benchmarkAhead(String points) {
    return '$points واحد درصد بهتر از شاخص';
  }

  @override
  String benchmarkBehind(String points) {
    return '$points واحد درصد عقب‌تر از شاخص';
  }

  @override
  String get benchmarkHint =>
      'گویی هر خرید در همان روز در یک صندوق شاخصی S&P 500 سرمایه‌گذاری شده بود. بدون سود نقدی؛ بازده گذشته بازده آینده را پیش‌بینی نمی‌کند.';

  @override
  String get portfolioSell => 'فروش';

  @override
  String portfolioSellTitle(String symbol) {
    return 'فروش $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'قیمت فروش هر سهم ($currency)';
  }

  @override
  String get portfolioSellDate => 'تاریخ فروش';

  @override
  String get portfolioSellAll => 'همه';

  @override
  String portfolioSellTooMany(String quantity) {
    return '$quantity سهم دارید';
  }

  @override
  String get portfolioSold => 'فروش';

  @override
  String get portfolioRealized => 'محقق‌شده';

  @override
  String get portfolioClosed => 'موقعیت‌های بسته';

  @override
  String get portfolioClosedNote => 'همه سهام فروخته شد';

  @override
  String get portfolioTransactions => 'تراکنش‌ها';

  @override
  String get portfolioRealizedByYear => 'سود محقق‌شده به تفکیک سال';

  @override
  String get portfolioRealizedHint =>
      'فروش‌ها ابتدا با قدیمی‌ترین خریدهای شما تطبیق داده می‌شوند (FIFO) و با نرخ ارز امروز تبدیل می‌شوند. برای اظهارنامه مالیاتی از صورت‌حساب کارگزار خود استفاده کنید.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'پس از این تحلیل، نتایج فصلی جدیدی منتشر شده است ($symbol، $date).';
  }

  @override
  String get newResultsBadge => 'نتایج جدید';

  @override
  String get portfolioImportBrokers =>
      'خروجی‌های Revolut، Trading 212 و Interactive Brokers هم همراه با فروش‌ها شناسایی می‌شوند؛ سود نقدی و واریزها نادیده گرفته می‌شوند.';

  @override
  String get portfolioImportFile => 'انتخاب فایل';

  @override
  String offlineBanner(String time) {
    return 'اتصال برقرار نیست – آخرین داده‌های ذخیره‌شده نمایش داده می‌شود ($time).';
  }

  @override
  String get glossMarketCap =>
      'ارزش کل شرکت در بازار سهام: قیمت سهم × تعداد سهام.';

  @override
  String get glossSharesOutstanding =>
      'تعداد سهامی که شرکت منتشر کرده است. اگر زیاد شود، هر سهم بخش کوچک‌تری از شرکت را دارد؛ بازخرید سهام آن را کم می‌کند.';

  @override
  String get glossPeTrailing =>
      'قیمت ÷ سود هر سهم در 12 ماه گذشته: بهای چند سال از سود فعلی را می‌پردازید. پایین‌تر یعنی ارزان‌تر، اما شرکت‌های پررشد معمولاً P/E بالایی دارند.';

  @override
  String get glossPeForward =>
      'مانند P/E، اما با سودی که تحلیلگران برای 12 ماه آینده انتظار دارند. اگر از P/E گذشته پایین‌تر باشد، یعنی انتظار رشد سود می‌رود.';

  @override
  String get glossPb =>
      'قیمت ÷ ارزش دفتری (دارایی‌ها منهای بدهی‌ها) هر سهم. حدود 1 یعنی بازار شرکت را به اندازهٔ دارایی‌اش روی کاغذ ارزش‌گذاری می‌کند.';

  @override
  String get glossPs =>
      'ارزش بازار ÷ درآمد سالانه. برای شرکت‌هایی که هنوز سود کمی دارند یا سودی ندارند مفید است؛ آن را در همان صنعت مقایسه کنید.';

  @override
  String get glossEvToFcf =>
      'ارزش شرکت همراه با بدهی (EV) ÷ پول نقدی که پس از سرمایه‌گذاری‌ها در یک سال تولید می‌کند. پایین‌تر یعنی در ازای قیمت، پول نقد بیشتری می‌گیرید.';

  @override
  String get glossPeg =>
      'P/E ÷ رشد سالانهٔ مورد انتظار سود (%). حدود 1 اغلب منصفانه دانسته می‌شود؛ P/E را در پرتو رشد نشان می‌دهد.';

  @override
  String get glossEps =>
      'سود هر سهم در 12 ماه گذشته. رشد EPS در طول سال‌ها یکی از قوی‌ترین نشانه‌های یک شرکت سالم است.';

  @override
  String get glossBeta =>
      'سهم تا چه حد همراه بازار حرکت می‌کند: 1 = مانند بازار، 1.5 = نوسان‌هایی حدود 50% بزرگ‌تر، کمتر از 1 = آرام‌تر.';

  @override
  String get glossRevenueTtm => 'کل فروش 12 ماه گذشته، پیش از هر هزینه‌ای.';

  @override
  String get glossNetIncomeTtm =>
      'سودی که پس از همهٔ هزینه‌ها، بهره و مالیات در 12 ماه گذشته باقی مانده است.';

  @override
  String get glossGrossMargin =>
      'بخشی از درآمد که پس از هزینهٔ مستقیم محصولات باقی می‌ماند. حاشیهٔ بالا اغلب نشانهٔ قدرت قیمت‌گذاری است.';

  @override
  String get glossOperatingMargin =>
      'بخشی از درآمد که پس از هزینه‌های ادارهٔ کسب‌وکار (دستمزد، اجاره، بازاریابی) و پیش از بهره و مالیات باقی می‌ماند.';

  @override
  String get glossNetMargin =>
      'بخشی از درآمد که در نهایت سود می‌شود. 20% یعنی از هر 100 واحد فروش، 20 واحد سود است.';

  @override
  String get glossRoe =>
      'بازده حقوق صاحبان سهام: سود سالانه ÷ سرمایهٔ مالکان. نشان می‌دهد مدیریت چقدر خوب از پول سهامداران استفاده می‌کند؛ بالای حدود 15% قوی است.';

  @override
  String get glossRoa =>
      'بازده دارایی‌ها: سود سالانه ÷ همهٔ دارایی‌های شرکت. آن را در همان صنعت مقایسه کنید.';

  @override
  String get glossDebtToEquity =>
      'بدهی‌ها ÷ سرمایهٔ مالکان. بالاتر یعنی پول قرضی بیشتر: ریسک بیشتر هنگام افزایش نرخ بهره یا کندی کسب‌وکار.';

  @override
  String get glossCurrentRatio =>
      'دارایی‌های کوتاه‌مدت ÷ بدهی‌هایی که ظرف یک سال سررسید می‌شوند. بالای 1 یعنی شرکت می‌تواند بدهی‌های نزدیکش را بپردازد.';

  @override
  String get glossRevenueGrowth =>
      'درآمد نسبت به یک سال پیش چقدر رشد کرده است.';

  @override
  String get glossEpsGrowth =>
      'سود هر سهم نسبت به یک سال پیش چقدر رشد کرده است.';

  @override
  String get glossDividendYield =>
      'سود نقدی سالانه ÷ قیمت سهم: درآمد نقدی که هر سال می‌گیرید، به‌صورت درصدی از مبلغی که می‌پردازید.';

  @override
  String get glossDividendPerShare =>
      'سود نقدی پرداخت‌شده به یک سهم در سال گذشته.';

  @override
  String get glossPayoutRatio =>
      'بخشی از سود که به‌صورت سود نقدی پرداخت می‌شود. بالای 100% یعنی شرکت بیش از درآمدش پرداخت می‌کند، که به‌ندرت دوام می‌آورد.';

  @override
  String get glossTitle => 'این یعنی چه؟';

  @override
  String get watchNewsTitle => 'اخبار سهام شما';

  @override
  String get undo => 'واگرد';

  @override
  String get watchSort => 'مرتب‌سازی';

  @override
  String get watchSortOwn => 'ترتیب من';

  @override
  String get watchSortGainers => 'بیشترین رشد اول';

  @override
  String get watchSortLosers => 'بیشترین افت اول';

  @override
  String get watchSortName => 'بر اساس نماد (A–Z)';

  @override
  String get watchHint =>
      'برای تغییر ترتیب، دستگیره را بکشید و برای حذف، به چپ بلغزانید. خط ۳۰ روز گذشته را نشان می‌دهد.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: تحلیل شما آماده است.';
  }

  @override
  String alertFromCost(String price) {
    return 'بر اساس میانگین قیمت خرید شما ($price):';
  }

  @override
  String get briefTitle => 'امروز با سهام شما';

  @override
  String get briefButton => 'خلاصهٔ امروز';

  @override
  String get briefHint =>
      'خلاصه‌ای کوتاه با هوش مصنوعی از حرکت امروز سبد و علاقه‌مندی‌های شما و آنچه تازه‌ترین اخبار درباره‌شان می‌گویند. تحلیلی مصرف نمی‌کند.';

  @override
  String get briefRefresh => 'به‌روزرسانی';

  @override
  String get sectionEarnings => 'گزارش سود';

  @override
  String earningsNext(String date) {
    return 'گزارش بعدی: $date';
  }

  @override
  String get earningsExpected => 'EPS مورد انتظار';

  @override
  String get earningsReported => 'EPS گزارش‌شده';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: 'برابر یا بالاتر از EPS مورد انتظار در $beats از $total فصل اخیر',
      one: 'برابر یا بالاتر از EPS مورد انتظار در $beats از 1 فصل',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol فردا نتایج فصلی را اعلام می‌کند';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol امروز نتایج فصلی را اعلام می‌کند';
  }

  @override
  String get earningsRemindersTitle => 'یادآور نتایج';

  @override
  String get earningsRemindersSubtitle =>
      'اعلانی یک روز پیش از آنکه سهام علاقه‌مندی‌ها یا سبد سهام شما نتایج فصلی را اعلام کنند';

  @override
  String addAllToFavorites(int count) {
    return 'افزودن همه به علاقه‌مندی‌ها ($count)';
  }

  @override
  String get portfolioImportPhoto => 'وارد کردن از اسکرین‌شات';

  @override
  String get holdingsReading => 'در حال خواندن موقعیت‌های شما…';

  @override
  String get holdingsReviewTitle => 'موقعیت‌های یافت‌شده';

  @override
  String get holdingsReviewHint =>
      'پیش از افزودن، اعداد را بررسی کنید. قیمت، میانگین بهای خرید شما برای هر سهم است، نه قیمت امروز.';

  @override
  String get holdingsNoPrice => 'میانگین بهای خرید در تصویر نیست';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'افزودن $count موقعیت',
      one: 'افزودن 1 موقعیت',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'هیچ موقعیت سهامی در این تصویر یافت نشد. یک اسکرین‌شات از صفحهٔ موقعیت‌ها یا دارایی‌های کارگزارتان را امتحان کنید.';

  @override
  String get week52Range => 'دامنهٔ 52 هفته';

  @override
  String week52BelowHigh(String percent) {
    return '$percent پایین‌تر از بیشترین قیمت 52 هفته';
  }

  @override
  String get week52AtHigh => 'در بیشترین قیمت 52 هفته';

  @override
  String get alertKindTrailing => 'افت از اوج';

  @override
  String get alertTrailingPercent => 'افت از اوج (%)';

  @override
  String get alertTrailingHint =>
      'قیمت را رو به بالا دنبال می‌کند: وقتی قیمت به این اندازه از بالاترین سطحش از زمان تنظیم هشدار افت کند، هشدار می‌دهد.';

  @override
  String alertDescTrailing(String percent) {
    return 'افت $percent از اوج';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'اوج تاکنون: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol $percent از اوج افت کرد';
  }

  @override
  String get sectionInsiders => 'معاملات افراد مطلع';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count خرید',
      one: '1 خرید',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count فروش',
      one: '1 فروش',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'خالص: $shares سهم';
  }

  @override
  String get insiderBuy => 'خرید';

  @override
  String get insiderSell => 'فروش';

  @override
  String get insiderHint =>
      'خرید و فروش مدیران اجرایی و اعضای هیئت‌مدیره در بازار آزاد طی 90 روز گذشته (SEC Form 4). اعمال اختیار معامله و اعطای سهام محاسبه نمی‌شود.';

  @override
  String get insiderNone =>
      'طی 90 روز گذشته هیچ خرید یا فروشی توسط افراد مطلع در بازار آزاد انجام نشده است.';

  @override
  String get analystTrend => 'تغییر دیدگاه‌ها ماه به ماه';

  @override
  String get watchListAll => 'همه';

  @override
  String get watchListNew => 'فهرست جدید';

  @override
  String get watchListName => 'نام فهرست';

  @override
  String get watchListRename => 'تغییر نام فهرست';

  @override
  String get watchListDelete => 'حذف فهرست';

  @override
  String get watchListAddTo => 'افزودن به فهرست';

  @override
  String get watchListEmpty =>
      'هنوز سهمی در این فهرست نیست. برای افزودن، روی دکمهٔ فهرست کنار سهم بزنید.';

  @override
  String get portfolioAskTitle => 'پرسش‌ها دربارهٔ سبد سهام شما';

  @override
  String get rangeYtd => 'امسال';

  @override
  String get backupTitle => 'پشتیبان‌گیری';

  @override
  String get backupSave => 'ذخیرهٔ نسخهٔ پشتیبان';

  @override
  String get backupSaveHint =>
      'علاقه‌مندی‌ها، فهرست‌ها، سبد سهام، هشدارها و یادداشت‌های شما در یک فایل.';

  @override
  String get backupRestore => 'بازیابی از نسخهٔ پشتیبان';

  @override
  String get backupRestoreHint =>
      'محتوای فایل را اضافه می‌کند؛ هیچ‌چیز از داده‌های فعلی شما حذف نمی‌شود.';

  @override
  String get backupRestored => 'نسخهٔ پشتیبان بازیابی شد.';

  @override
  String get backupInvalid => 'این فایل نسخهٔ پشتیبان WhatStock نیست.';

  @override
  String get allocationPositions => 'سهام';

  @override
  String get allocationSectors => 'بخش‌ها';

  @override
  String get allocationCurrencies => 'ارزها';

  @override
  String get compareReturn1y => 'بازده 1 ساله';

  @override
  String get compareFromHigh => 'فاصله از بیشترین قیمت 52 هفته';

  @override
  String get briefAutoTitle => 'خلاصهٔ روزانه هر صبح';

  @override
  String get briefAutoSubtitle =>
      '«امروز با سهام شما» تا وقتی برنامه در حال اجراست، بعد از ساعت 7:00 صبح خودکار ساخته می‌شود؛ در رایانه‌ها یک اعلان به شما خبر می‌دهد. از سهمیهٔ روزانهٔ پرسش‌های شما کم می‌شود، نه از تحلیل‌ها.';

  @override
  String get targetsButton => 'ترکیب هدف';

  @override
  String get targetsTitle => 'ترکیب هدف';

  @override
  String get targetsHint =>
      'مشخص کنید هر سهم چه سهمی از سبد داشته باشد. برای نداشتن هدف، فیلد را خالی بگذارید. سپس برنامه نشان می‌دهد برای رسیدن به آن چه باید بخرید یا بفروشید.';

  @override
  String targetsSum(String percent) {
    return 'مجموع: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'خرید ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'فروش ≈ $amount';
  }

  @override
  String get rebalanceOk => 'مطابق هدف';
}
