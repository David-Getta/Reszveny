// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sindhi (`sd`).
class AppLocalizationsSd extends AppLocalizations {
  AppLocalizationsSd([String locale = 'sd']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'ڪنهن شيئر جي تصوير ڪڍو ۽ ان بابت سڀ ڪجهه ڄاڻو.';

  @override
  String get homeHint =>
      'شيئر سرٽيفڪيٽ، بروڪريج ايپ جي اسڪرين، اخبار يا ڪمپني جو لوگو – ڪا به شيءِ جيڪا شيئر جي سڃاڻپ ڪرائي.';

  @override
  String get takePhoto => 'تصوير ڪڍو';

  @override
  String get chooseFromGallery => 'گيلري مان چونڊيو';

  @override
  String get chooseImage => 'تصوير چونڊيو';

  @override
  String get enterTickerManually => 'ٽڪر هٿ سان داخل ڪريو';

  @override
  String get tickerInputLabel => 'ٽڪر سمبل';

  @override
  String get tickerInputHint => 'مثال طور AAPL';

  @override
  String get lookUp => 'ڳوليو';

  @override
  String demoModeBanner(String symbols) {
    return 'ڊيمو موڊ – مارڪيٽ ڊيٽا جي ڪا ڪنجي ترتيب نه ڏني وئي آهي. نموني جي ڊيٽا هنن لاءِ موجود آهي: $symbols.';
  }

  @override
  String get recognizing => 'تصوير جو تجزيو ٿي رهيو آهي…';

  @override
  String get loadingData => 'ڊيٽا لوڊ ٿي رهي آهي…';

  @override
  String get noCandidatesTitle => 'ڪو شيئر سڃاتو نه ويو';

  @override
  String get noCandidatesBody =>
      'اسان هن تصوير ۾ ڪنهن شيئر جي سڃاڻپ نه ڪري سگهياسين. وڌيڪ صاف تصوير آزمايو، يا ٽڪر هٿ سان داخل ڪريو.';

  @override
  String get whatWeSaw => 'اسان ڇا ڏٺو';

  @override
  String get chooseCandidateTitle => 'توهان جو مطلب ڪهڙو شيئر هو؟';

  @override
  String confidencePercent(int percent) {
    return '$percent% اعتماد';
  }

  @override
  String get settings => 'سيٽنگون';

  @override
  String get language => 'ٻولي';

  @override
  String get systemLanguage => 'سسٽم ڊيفالٽ';

  @override
  String get about => 'ايپ بابت';

  @override
  String get disclaimer =>
      'هي ايپ صرف معلومات ڏئي ٿي ۽ سيڙپڪاري جو مشورو ناهي. ڊيٽا دير سان يا غلط ٿي سگهي ٿي.';

  @override
  String dataSource(String source) {
    return 'ڊيٽا جو ذريعو: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'سڃاڻپ: $source';
  }

  @override
  String get retry => 'ٻيهر ڪوشش ڪريو';

  @override
  String get cancel => 'منسوخ ڪريو';

  @override
  String get ok => 'ٺيڪ آهي';

  @override
  String get close => 'بند ڪريو';

  @override
  String get errorGeneric => 'ڪجهه غلط ٿي ويو.';

  @override
  String get errorSectionUnavailable => 'هي حصو لوڊ نه ٿي سگهيو.';

  @override
  String get notAvailable => 'موجود ناهي';

  @override
  String get sectionIdentity => 'سڃاڻپ';

  @override
  String get sectionPrice => 'قيمت';

  @override
  String get sectionValuation => 'قدر جو تعين';

  @override
  String get sectionFinancials => 'مالي انگ اکر';

  @override
  String get sectionDividend => 'ڊيويڊنڊ';

  @override
  String get sectionProfile => 'ڪمپني پروفائل';

  @override
  String get sectionAnalysts => 'تجزيه نگارن جي ريٽنگ';

  @override
  String get sectionNews => 'خبرون';

  @override
  String get sectionRecognition => 'سڃاڻپ جا تفصيل';

  @override
  String get labelSymbol => 'ٽڪر';

  @override
  String get labelExchange => 'ايڪسچينج';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'ڪرنسي';

  @override
  String get labelCountry => 'ملڪ';

  @override
  String get labelIndustry => 'صنعت';

  @override
  String get labelSector => 'شعبو';

  @override
  String get labelWebsite => 'ويب سائيٽ';

  @override
  String get labelIpoDate => 'IPO جي تاريخ';

  @override
  String get labelMarketCap => 'مارڪيٽ ڪيپ';

  @override
  String get labelSharesOutstanding => 'جاري ٿيل شيئر';

  @override
  String get labelEmployees => 'ملازم';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'هيڊ آفيس';

  @override
  String get labelDescription => 'تفصيل';

  @override
  String get labelLastPrice => 'آخري قيمت';

  @override
  String get labelChange => 'تبديلي';

  @override
  String get labelOpen => 'شروعاتي قيمت';

  @override
  String get labelDayHigh => 'ڏينهن جي وڌ ۾ وڌ';

  @override
  String get labelDayLow => 'ڏينهن جي گهٽ ۾ گهٽ';

  @override
  String get labelPreviousClose => 'پوئين بند قيمت';

  @override
  String get labelWeek52High => '52 هفتن جي وڌ ۾ وڌ';

  @override
  String get labelWeek52Low => '52 هفتن جي گهٽ ۾ گهٽ';

  @override
  String get labelAverageVolume10d => 'سراسري واليوم (10 ڏينهن)';

  @override
  String updatedAt(String time) {
    return 'اپڊيٽ: $time';
  }

  @override
  String get labelPeTrailing => 'P/E (ٽريلنگ)';

  @override
  String get labelPeForward => 'P/E (فارورڊ)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / فري ڪيش فلو';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'بيٽا';

  @override
  String get labelRevenueTtm => 'آمدني (TTM)';

  @override
  String get labelNetIncomeTtm => 'خالص منافعو (TTM)';

  @override
  String get labelGrossMargin => 'مجموعي مارجن';

  @override
  String get labelOperatingMargin => 'آپريٽنگ مارجن';

  @override
  String get labelNetMargin => 'خالص مارجن';

  @override
  String get labelRoe => 'ايڪوئٽي تي منافعو';

  @override
  String get labelRoa => 'اثاثن تي منافعو';

  @override
  String get labelDebtToEquity => 'قرض / ايڪوئٽي';

  @override
  String get labelCurrentRatio => 'ڪرنٽ ريشو';

  @override
  String get labelRevenueGrowth => 'آمدني ۾ واڌ (YoY)';

  @override
  String get labelEpsGrowth => 'EPS ۾ واڌ (YoY)';

  @override
  String get labelDividendYield => 'ڊيويڊنڊ ييلڊ';

  @override
  String get labelDividendPerShare => 'في شيئر ڊيويڊنڊ';

  @override
  String get labelPayoutRatio => 'پي آئوٽ ريشو';

  @override
  String get labelConsensus => 'گڏيل راءِ';

  @override
  String get ratingStrongBuy => 'پڪي خريداري';

  @override
  String get ratingBuy => 'خريداري';

  @override
  String get ratingHold => 'رکو';

  @override
  String get ratingSell => 'وڪرو';

  @override
  String get ratingStrongSell => 'پڪو وڪرو';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count تجزيه نگار',
      one: '1 تجزيه نگار',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'مدت: $period';
  }

  @override
  String get noNews => 'ڪا تازي خبر ناهي.';

  @override
  String get openArticle => 'مضمون کوليو';

  @override
  String get openLinkFailed => 'لنڪ کولي نه سگهياسين.';

  @override
  String get recognitionSummary => 'خلاصو';

  @override
  String get recognitionEvidence => 'اسان ائين ڇو ٿا سمجهون';

  @override
  String get recognitionRawText => 'تصوير مان پڙهيل متن';

  @override
  String get errMissingAnthropicKey =>
      'تصوير جي سڃاڻپ ترتيب نه ڏني وئي آهي (ANTHROPIC_API_KEY ناهي). ٽڪر هٿ سان داخل ڪريو.';

  @override
  String get errRecognitionUnreachable =>
      'سڃاڻپ سروس سان رابطو نه ٿي سگهيو. پنهنجو انٽرنيٽ ڪنيڪشن چيڪ ڪريو.';

  @override
  String errRecognitionHttp(String status) {
    return 'سڃاڻپ سروس غلطي موٽائي (HTTP $status).';
  }

  @override
  String get errRecognitionRefused => 'سڃاڻپ سروس هن تصوير تي عمل نه ڪري سگهي.';

  @override
  String get errRecognitionTruncated =>
      'سڃاڻپ جو جواب اڌ ۾ ڪٽجي ويو. مهرباني ڪري ٻيهر ڪوشش ڪريو.';

  @override
  String get errRecognitionBadResponse => 'سڃاڻپ سروس کان غير متوقع جواب آيو.';

  @override
  String get errRecognitionEmpty => 'سڃاڻپ سروس خالي جواب موٽايو.';

  @override
  String get errMissingFinnhubKey =>
      'مارڪيٽ ڊيٽا ترتيب نه ڏني وئي آهي (FINNHUB_API_KEY ناهي).';

  @override
  String get errMarketUnreachable =>
      'مارڪيٽ ڊيٽا سروس سان رابطو نه ٿي سگهيو. پنهنجو انٽرنيٽ ڪنيڪشن چيڪ ڪريو.';

  @override
  String get errMarketRateLimited =>
      'مارڪيٽ ڊيٽا سروس ڏانهن تمام گهڻيون درخواستون ويون. مهرباني ڪري هڪ منٽ انتظار ڪريو.';

  @override
  String errMarketHttp(String status) {
    return 'مارڪيٽ ڊيٽا سروس غلطي موٽائي (HTTP $status).';
  }

  @override
  String get errMarketBadResponse => 'مارڪيٽ ڊيٽا سروس کان غير متوقع جواب آيو.';

  @override
  String errNoQuote(String symbol) {
    return '$symbol لاءِ قيمت جي ڪا ڊيٽا نه ملي.';
  }

  @override
  String errNoProfile(String symbol) {
    return '$symbol لاءِ ڪمپني پروفائل نه مليو.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'ڊيمو موڊ صرف $symbols کي سپورٽ ڪري ٿو. لائيو ڊيٽا لاءِ FINNHUB_API_KEY شامل ڪريو.';
  }

  @override
  String errUnknown(String detail) {
    return 'ڪجهه غلط ٿي ويو: $detail';
  }

  @override
  String get newSearch => 'نئين ڳولا';

  @override
  String get recentSearches => 'تازيون';

  @override
  String get noRecentSearches => 'اڃا تائين ڪا تازي ڳولا ناهي.';

  @override
  String get clearRecent => 'تازيون صاف ڪريو';

  @override
  String get greeting => 'اڄ ڪهڙو شيئر ڏسون؟';

  @override
  String get searchHint => 'ٽڪر يا ڪمپني جو نالو';

  @override
  String get attachImage => 'تصوير ڳنڍيو';

  @override
  String get searchResultsTitle => 'ڳولا جا نتيجا';

  @override
  String errNoResults(String query) {
    return '“$query” لاءِ ڪو شيئر نه مليو.';
  }

  @override
  String get quickBarHint => 'ٽڪر يا ڪمپني جو نالو ٽائيپ ڪريو…';

  @override
  String get openFullWindow => 'ونڊو کوليو';

  @override
  String hotkeyHint(String shortcut) {
    return 'WhatStock کي ڪٿان به کولڻ لاءِ $shortcut دٻايو.';
  }

  @override
  String get trayOpen => 'WhatStock کوليو';

  @override
  String get trayQuickSearch => 'تڪڙي ڳولا';

  @override
  String get trayQuit => 'ٻاهر نڪرو';

  @override
  String get appearance => 'ڏيک';

  @override
  String get themeSystem => 'سسٽم';

  @override
  String get themeDark => 'اونداهو';

  @override
  String get themeLight => 'روشن';

  @override
  String get back => 'واپس';

  @override
  String get aiSectionTitle => 'AI تجزيو';

  @override
  String get aiIntro =>
      'AI جو لکيل تفصيلي جائزو: تازين خبرن جو خلاصو، ڪاروبار، مضبوط پهلو، خطرا ۽ لڪيل عنصر، قدر جو تعين، نفسياتي، سماجي، ٽيڪنيڪل ۽ ميڪرو زاوين کان منظرنامن سان قيمت جو امڪاني رخ، ۽ ڪهڙين ڳالهين تي نظر رکجي.';

  @override
  String get aiGenerate => 'تجزيو تيار ڪريو';

  @override
  String get aiRegenerate => 'ٻيهر تيار ڪريو';

  @override
  String get aiGenerating =>
      'تجزيو تيار ٿي رهيو آهي… ان ۾ هڪ ٻه منٽ لڳي سگهن ٿا.';

  @override
  String get aiSources => 'ذريعا';

  @override
  String aiGeneratedAt(String time) {
    return 'تيار ٿيو: $time';
  }

  @override
  String get aiDisclaimer =>
      'عوامي ڊيٽا ۽ تازين خبرن تي ٻڌل AI جو تيار ڪيل تجزيو. ان ۾ غلطيون ٿي سگهن ٿيون يا اهو پراڻو ٿي سگهي ٿو، ۽ اهو سيڙپڪاري جو مشورو ناهي.';

  @override
  String get errAiNotConfigured =>
      'AI تجزيو ترتيب نه ڏنو ويو آهي (ANTHROPIC_API_KEY ناهي).';

  @override
  String get errAiUnreachable =>
      'AI سروس سان رابطو نه ٿي سگهيو. پنهنجو انٽرنيٽ ڪنيڪشن چيڪ ڪريو.';

  @override
  String errAiHttp(String status) {
    return 'AI سروس غلطي موٽائي (HTTP $status).';
  }

  @override
  String get errAiRefused => 'AI سروس هن شيئر جو تجزيو ڪرڻ کان انڪار ڪيو.';

  @override
  String get errAiBadResponse => 'AI سروس کان غير متوقع جواب آيو.';

  @override
  String get sectionChart => 'قيمت جو چارٽ';

  @override
  String get rangeOneWeek => '1 هفتو';

  @override
  String get rangeOneMonth => '1 مهينو';

  @override
  String get rangeThreeMonths => '3 مهينا';

  @override
  String get rangeOneYear => '1 سال';

  @override
  String get rangeFiveYears => '5 سال';

  @override
  String get chartUnavailable =>
      'موجوده ڊيٽا ذريعي کان قيمت جي تاريخ موجود ناهي.';

  @override
  String get sectionStatements => 'مالي گوشوارا (سالياني)';

  @override
  String get labelFiscalYear => 'مالي سال';

  @override
  String get labelRevenue => 'آمدني';

  @override
  String get labelNetIncome => 'خالص منافعو';

  @override
  String get labelTotalAssets => 'ڪل اثاثا';

  @override
  String get labelTotalLiabilities => 'ڪل ذميواريون';

  @override
  String get labelEquity => 'شيئر هولڊرن جي ايڪوئٽي';

  @override
  String get labelOperatingCashFlow => 'آپريٽنگ ڪيش فلو';

  @override
  String get statementsUnavailable =>
      'هن شيئر لاءِ رپورٽ ٿيل مالي گوشوارا موجود ناهن.';

  @override
  String get launchAtLogin => 'لاگ ان تي شروع ڪريو';

  @override
  String get hotkeyLabel => 'گلوبل شارٽ ڪٽ';

  @override
  String get hotkeyRecordHint => 'هتي ڪلڪ ڪريو، پوءِ بٽڻن جو نئون ميلاپ دٻايو';

  @override
  String get hotkeyReset => 'ڊيفالٽ تي واپس آڻيو';

  @override
  String get pasteImage => 'ڪلپ بورڊ مان تصوير پيسٽ ڪريو';

  @override
  String get errClipboardNoImage => 'ڪلپ بورڊ تي ڪا تصوير ناهي.';

  @override
  String get favorites => 'پسنديده';

  @override
  String get addToFavorites => 'پسنديده ۾ شامل ڪريو';

  @override
  String get removeFromFavorites => 'پسنديده مان هٽايو';

  @override
  String get noFavorites =>
      'اڃا ڪو پسنديده ناهي. شامل ڪرڻ لاءِ ڪنهن شيئر جي تاري تي ٽيپ ڪريو.';

  @override
  String get displayCurrency => 'ڏيکارڻ جي ڪرنسي';

  @override
  String get displayCurrencyNone => 'صرف شيئر جي پنهنجي ڪرنسي';

  @override
  String labelConverted(String currency) {
    return '≈ $currency ۾';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'شرح: 1 $from = $rate $to (ECB، $date)';
  }

  @override
  String get updates => 'اپڊيٽس';

  @override
  String currentVersion(String version) {
    return 'ورزن $version';
  }

  @override
  String get autoUpdate => 'اپڊيٽس پاڻمرادو انسٽال ڪريو';

  @override
  String get checkForUpdates => 'اپڊيٽس چيڪ ڪريو';

  @override
  String get updateChecking => 'اپڊيٽس چيڪ ٿي رهيون آهن…';

  @override
  String get updateUpToDate => 'توهان وٽ تازو ورزن آهي.';

  @override
  String updateAvailable(String version) {
    return 'ورزن $version موجود آهي.';
  }

  @override
  String get updateDownloading => 'اپڊيٽ پس منظر ۾ ڊائونلوڊ ٿي رهي آهي…';

  @override
  String get updateDownloaded =>
      'اپڊيٽ تيار آهي. انسٽال ڪرڻ لاءِ ٻيهر شروع ڪريو.';

  @override
  String get updateNow => 'اپڊيٽ ڪريو';

  @override
  String get restartNow => 'ٻيهر شروع ڪريو';

  @override
  String get updatesViaStore => 'اپڊيٽس ايپ اسٽور ذريعي پاڻمرادو اينديون آهن.';

  @override
  String get updateCheckFailed => 'اپڊيٽس چيڪ نه ڪري سگهياسين.';

  @override
  String get subscription => 'سبسڪرپشن';

  @override
  String get planTrial => 'آزمائشي';

  @override
  String get planNormal => 'عام';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'ڪو فعال پلان ناهي';

  @override
  String planAnalysesPerMonth(int count) {
    return 'هر مهيني $count تجزيا';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$count تجزين سان $days ڏينهن جو مفت آزمائشي دور';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'آزمائشي دور جا $days ڏينهن باقي',
      one: 'آزمائشي دور جو 1 ڏينهن باقي',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'توهان جو مفت آزمائشي دور ختم ٿي ويو. تجزيا جاري رکڻ لاءِ ڪو پلان چونڊيو.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'هن مدت ۾ $total مان $remaining تجزيا باقي';
  }

  @override
  String extraCredits(int count) {
    return '$count اضافي تجزيا';
  }

  @override
  String renewsOn(String date) {
    return '$date تي تجديد ٿيندو';
  }

  @override
  String get choosePlan => 'پلان چونڊيو';

  @override
  String get currentPlan => 'موجوده پلان';

  @override
  String get subscribe => 'سبسڪرائيب ڪريو';

  @override
  String get perMonth => '/ مهينو';

  @override
  String get extraPacksTitle => 'وڌيڪ گهرجن؟ اضافي تجزيا خريد ڪريو';

  @override
  String get extraPacksHint =>
      'اضافي تجزين جي مدت ڪڏهن به ختم نه ٿيندي، ۽ اهي توهان جي مهيني واري ڪوٽا کان پوءِ استعمال ٿيندا آهن.';

  @override
  String get buy => 'خريد ڪريو';

  @override
  String get restorePurchases => 'خريداريون بحال ڪريو';

  @override
  String get manageSubscription => 'سبسڪرپشن سنڀاليو';

  @override
  String get purchaseSuccess => 'مهرباني! توهان جي خريداري فعال آهي.';

  @override
  String get purchasePending => 'خريداري التوا ۾ آهي…';

  @override
  String get purchaseFailed => 'خريداري مڪمل نه ٿي سگهي.';

  @override
  String get purchaseCanceled => 'خريداري منسوخ ڪئي وئي.';

  @override
  String get billingUnavailable =>
      'هن پليٽ فارم تي خريداري اڃا موجود ناهي. پنهنجي فون يا Mac تي سبسڪرائيب ڪريو؛ توهان جو پلان هر ڊوائيس تي ڪم ڪندو.';

  @override
  String get errQuotaExceeded =>
      'هن مدت لاءِ توهان وٽ ڪو تجزيو باقي ناهي. پنهنجو پلان اپگريڊ ڪريو يا اضافي تجزيا خريد ڪريو.';

  @override
  String get errTrialExpired =>
      'توهان جو مفت آزمائشي دور ختم ٿي ويو. جاري رکڻ لاءِ ڪو پلان چونڊيو.';

  @override
  String get errNoPlan => 'AI تجزيي لاءِ فعال پلان گهربل آهي.';

  @override
  String get viewPlans => 'پلان ڏسو';

  @override
  String get usageTitle => 'استعمال';

  @override
  String get demoPurchaseNote =>
      'ڊيمو بلنگ: هن پليٽ فارم تي خريداريون نقلي آهن.';

  @override
  String get mostPopular => 'سڀ کان مشهور';

  @override
  String get bestValue => 'بهترين قدر';

  @override
  String get planFeaturesCommon =>
      'تصوير جي سڃاڻپ، لائيو ڊيٽا، چارٽ، پسنديده ۽ سڀ 120 ٻوليون هر پلان ۾ شامل آهن. ڪوٽا AI تجزين تي لاڳو ٿئي ٿي.';

  @override
  String get searchLanguages => 'ٻوليون ڳوليو…';

  @override
  String get noLanguageMatch => 'ڪا ٻولي نه ملي.';

  @override
  String get aiSettings => 'AI تجزيو';

  @override
  String get aiLength => 'ڊيگهه';

  @override
  String get aiDepthBrief => 'مختصر';

  @override
  String get aiDepthStandard => 'معياري';

  @override
  String get aiDepthDeep => 'تفصيلي';

  @override
  String get aiDepthBriefDesc => 'ضروري ڳالهيون، جلدي.';

  @override
  String get aiDepthStandardDesc => 'سڀني حصن سان مڪمل رپورٽ.';

  @override
  String get aiDepthDeepDesc =>
      'وڌيڪ ويب ڳولائون، هم پله ڪمپنين سان ڀيٽ ۽ وڌيڪ تفصيل.';

  @override
  String aiDepthWords(String min, String max) {
    return 'لڳ ڀڳ $min–$max لفظ';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count تجزيا خرچ ٿين ٿا',
      one: '1 تجزيو خرچ ٿئي ٿو',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'پڙهندڙ جي سطح';

  @override
  String get aiReaderBeginner => 'شروعاتي';

  @override
  String get aiReaderExperienced => 'تجربيڪار';

  @override
  String get aiReaderBeginnerDesc =>
      'سادي ٻولي؛ هر فني اصطلاح جي وضاحت ڪئي ويندي آهي.';

  @override
  String get aiReaderExperiencedDesc =>
      'معياري مالي اصطلاحن سان وڌيڪ جامع متن.';

  @override
  String get aiCounterArgument => 'سڀ کان مضبوط جوابي دليل';

  @override
  String get aiCounterArgumentDesc =>
      'خلاصو هميشه پنهنجي ئي نتيجي خلاف سڀ کان مضبوط دليل تي ختم ٿيندو آهي.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'توهان جي پلان سان هر تجزيي ۾ وڌ ۾ وڌ $count ويب ڳولائون',
      one: 'توهان جي پلان سان هر تجزيي ۾ وڌ ۾ وڌ 1 ويب ڳولا',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'معياري ڊيگهه تي پلان موجب ويب ڳولائون: عام $normal، Pro $pro، Max $max، Ultra $ultra. مختصر ۾ 2 گهٽ، تفصيلي ۾ 2 وڌيڪ.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'وڌ ۾ وڌ $count ويب ڳولائون',
      one: 'وڌ ۾ وڌ 1 ويب ڳولا',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'هر تجزيي ۾ $count ويب ڳولائون',
      one: 'هر تجزيي ۾ 1 ويب ڳولا',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'هن ڊيگهه لاءِ $needed تجزيا گهرجن، پر صرف $left باقي آهن. سيٽنگن ۾ ننڍي ڊيگهه چونڊيو يا وڌيڪ تجزيا حاصل ڪريو.';
  }

  @override
  String get outlookMarketMood => 'مارڪيٽ جو مزاج';

  @override
  String get moodVeryPessimistic => 'تمام مايوس';

  @override
  String get moodPessimistic => 'مايوس';

  @override
  String get moodNeutral => 'غير جانبدار';

  @override
  String get moodOptimistic => 'پراميد';

  @override
  String get moodVeryOptimistic => 'تمام پراميد';

  @override
  String get scenarioBull => 'تيزي جو منظرنامو';

  @override
  String get scenarioBase => 'بنيادي منظرنامو';

  @override
  String get scenarioBear => 'مندي جو منظرنامو';

  @override
  String outlookCurrentPrice(String price) {
    return 'موجوده قيمت: $price';
  }

  @override
  String get outlookKeyLevels => 'اهم سطحون';

  @override
  String get keyLevelSupport => 'سپورٽ';

  @override
  String get keyLevelResistance => 'مزاحمت';

  @override
  String get keyLevelAnchor => 'حوالي جي سطح';

  @override
  String get upcomingEvents => 'ايندڙ واقعا';

  @override
  String get outlookChartNote =>
      'اندازاً حدون؛ امڪان رڳو موٽا اندازا آهن، اڳڪٿيون نه.';

  @override
  String get accountTitle => 'اڪائونٽ';

  @override
  String get signIn => 'سائن ان ڪريو';

  @override
  String get signOut => 'سائن آئوٽ ڪريو';

  @override
  String get notSignedIn => 'سائن ان ٿيل ناهي';

  @override
  String get accountBenefit =>
      'سائن ان ڪريو ته جيئن توهان جي سبسڪرپشن توهان جي سڀني ڊوائيسن تي ڪم ڪري.';

  @override
  String get accountSyncedNote =>
      'توهان جي سبسڪرپشن ۽ باقي تجزيا هر ڊوائيس تي ساڳيا آهن.';

  @override
  String get signInTitle => 'WhatStock ۾ سائن ان ڪريو';

  @override
  String get emailLabel => 'اي ميل پتو';

  @override
  String get continueWithEmail => 'اي ميل سان جاري رکو';

  @override
  String codeSentTo(String email) {
    return 'اسان $email تي 6 انگن وارو ڪوڊ موڪليو آهي. اهو 10 منٽن تائين ڪارآمد آهي.';
  }

  @override
  String get codeLabel => 'سائن ان ڪوڊ';

  @override
  String get resendCode => 'نئون ڪوڊ موڪليو';

  @override
  String get useDifferentEmail => 'ٻي اي ميل استعمال ڪريو';

  @override
  String get errInvalidCode => 'ڪوڊ غلط آهي يا ان جي مدت ختم ٿي وئي آهي.';

  @override
  String get errInvalidEmail => 'مهرباني ڪري صحيح اي ميل پتو داخل ڪريو.';

  @override
  String get errSignInFailed =>
      'سائن ان ناڪام ٿيو. پنهنجو ڪنيڪشن چيڪ ڪري ٻيهر ڪوشش ڪريو.';

  @override
  String get checkoutWaiting =>
      'پنهنجي برائوزر ۾ ادائگي مڪمل ڪريو. ادائگي مڪمل ٿيڻ تي ايپ پاڻمرادو اپڊيٽ ٿي ويندي.';

  @override
  String get paymentViaStripe =>
      'Stripe ذريعي برائوزر ۾ محفوظ ادائگي. ڪنهن به وقت منسوخ ڪري سگهو ٿا.';

  @override
  String get paymentViaStore =>
      'بل توهان جي App Store يا Google Play اڪائونٽ ذريعي ٿيندو. اسٽور جي سيٽنگن ۾ ڪنهن به وقت منسوخ ڪري سگهو ٿا.';

  @override
  String get keySpace => 'اسپيس';

  @override
  String get doubleOptionTitle => 'Option ٻه ڀيرا دٻايو';

  @override
  String get doubleOptionSubtitle =>
      'Option بٽڻ کي جلدي ٻه ڀيرا دٻائڻ سان به WhatStock کلي ٿو.';

  @override
  String get doubleOptionPermission =>
      'ٻين ايپس ۾ به ڪم ڪرڻ لاءِ، System Settings → Privacy & Security → Input Monitoring ۾ WhatStock کي اجازت ڏيو، پوءِ ايپ ٻيهر کوليو.';

  @override
  String get openSystemSettings => 'سسٽم سيٽنگون کوليو';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'WhatStock کي ڪٿان به کولڻ لاءِ $shortcut دٻايو يا Option ٻه ڀيرا دٻايو.';
  }

  @override
  String get scenarioMostLikely => 'سڀ کان وڌيڪ امڪاني';

  @override
  String get longTermToday => 'اڄ';

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
    return '$range سالياني';
  }

  @override
  String longTermLikely(String price) {
    return 'سڀ کان وڌيڪ امڪاني $price';
  }

  @override
  String get confidenceLow => 'گهٽ اعتماد';

  @override
  String get confidenceMedium => 'وچولو اعتماد';

  @override
  String get confidenceHigh => 'وڌيڪ اعتماد';

  @override
  String get longTermNote =>
      'ڊگهي مدي جون حدون بيان ڪيل مفروضن تي ٻڌل آهن ۽ وقت سان گڏ ويڪريون ٿينديون وڃن ٿيون. قيمتن ۾ ڊيويڊنڊ شامل ناهن. هي موٽا اندازا آهن، اڳڪٿيون نه.';

  @override
  String get portfolio => 'پورٽ فوليو';

  @override
  String get portfolioEmpty =>
      'اڃا هتي ڪجهه ناهي. ڪو شيئر کوليو ۽ پنهنجي ملڪيت تي نظر رکڻ لاءِ “پورٽ فوليو ۾ شامل ڪريو” تي ٽيپ ڪريو.';

  @override
  String get portfolioLocalNote =>
      'صرف هن ڊوائيس تي محفوظ ٿئي ٿو. مجموعا ECB جي حوالي واري شرح تي تبديل ڪيا وڃن ٿا؛ قيمتن ۾ دير ٿي سگهي ٿي.';

  @override
  String get addToPortfolio => 'پورٽ فوليو ۾ شامل ڪريو';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol شامل ڪريو';
  }

  @override
  String get portfolioQuantity => 'شيئرن جو تعداد';

  @override
  String portfolioBuyPrice(String currency) {
    return 'في شيئر قيمت ($currency)';
  }

  @override
  String get portfolioBuyDate => 'خريداري جي تاريخ';

  @override
  String get portfolioAdd => 'شامل ڪريو';

  @override
  String get portfolioInvalidNumber => 'صفر کان وڏو انگ داخل ڪريو.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol توهان جي پورٽ فوليو ۾ شامل ٿي ويو.';
  }

  @override
  String get portfolioTotalValue => 'ڪل قدر';

  @override
  String get portfolioToday => 'اڄ';

  @override
  String get portfolioGainLoss => 'نفعو/نقصان';

  @override
  String get portfolioInvested => 'سيڙپ ڪيل';

  @override
  String get portfolioAllocation => 'ورهاست';

  @override
  String get portfolioPositions => 'پوزيشنون';

  @override
  String portfolioAvgCost(String price) {
    return 'سراسري لاڳت $price';
  }

  @override
  String get portfolioYourPosition => 'توهان جي پوزيشن';

  @override
  String get portfolioPurchases => 'خريداريون';

  @override
  String get portfolioRemove => 'هٽايو';

  @override
  String get portfolioExcluded =>
      'جن پوزيشنن جي قيمت يا مٽا سٽا جي شرح موجود ناهي، اهي مجموعن ۾ شامل ناهن.';

  @override
  String get priceAlerts => 'قيمت جا الرٽ';

  @override
  String get setPriceAlert => 'قيمت جو الرٽ لڳايو';

  @override
  String alertDialogTitle(String symbol) {
    return 'قيمت جو الرٽ · $symbol';
  }

  @override
  String get alertKindAbove => 'مٿي وڃي';

  @override
  String get alertKindBelow => 'هيٺ اچي';

  @override
  String get alertKindMove => 'هڪ ڏينهن ۾ گهڻي لاهه چاڙهه';

  @override
  String alertTargetPrice(String currency) {
    return 'قيمت ($currency)';
  }

  @override
  String get alertMovePercent => 'روزاني لاهه چاڙهه (%)';

  @override
  String get alertAlreadyMet => 'قيمت اڳ ئي هن سطح کان پار آهي.';

  @override
  String get alertSave => 'الرٽ لڳايو';

  @override
  String alertCreated(String symbol) {
    return '$symbol لاءِ الرٽ لڳي ويو.';
  }

  @override
  String get alertsEmpty =>
      'اڃا ڪو قيمت جو الرٽ ناهي. الرٽ لڳائڻ لاءِ ڪو شيئر کوليو ۽ گهنٽي تي ٽيپ ڪريو.';

  @override
  String get alertsNote =>
      'جيستائين WhatStock هلي رهي آهي، الرٽ هر 5 منٽن کان پوءِ چيڪ ٿين ٿا. ڪمپيوٽر تي اها مينيو بار يا سسٽم ٽري ۾ هلندي رهي ٿي؛ فون تي في الحال الرٽ تڏهن ئي اچن ٿا جڏهن ايپ کليل هجي.';

  @override
  String alertDescAbove(String price) {
    return '$price کان مٿي';
  }

  @override
  String alertDescBelow(String price) {
    return '$price کان هيٺ';
  }

  @override
  String alertDescMove(String percent) {
    return 'روزاني لاهه چاڙهه ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return '$date تي، $price تي فعال ٿيو';
  }

  @override
  String get alertRearm => 'ٻيهر فعال ڪريو';

  @override
  String get alertDelete => 'ميٽيو';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol $price کان مٿي ويو';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol $price کان هيٺ ويو';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol ۾ اڄ $percent لاهه چاڙهه';
  }

  @override
  String alertHitBody(String price) {
    return 'موجوده قيمت: $price';
  }

  @override
  String get alertOpen => 'کوليو';

  @override
  String get keepInTrayTitle => 'ونڊو بند ٿيڻ کان پوءِ به هلندي رهي';

  @override
  String get keepInTraySubtitle =>
      'WhatStock مينيو بار يا سسٽم ٽري ۾ رهي ٿي، تنهنڪري شارٽ ڪٽ ۽ قيمت جا الرٽ ڪم ڪندا رهن ٿا.';

  @override
  String get termsOfUse => 'استعمال جا شرط';

  @override
  String get privacyPolicy => 'رازداري پاليسي';

  @override
  String get subscriptionLegal =>
      'سبسڪرپشن هر مهيني پاڻمرادو تجديد ٿيندي رهندي جيستائين توهان ان کي منسوخ نه ڪريو. سبسڪرائيب ڪري توهان استعمال جا شرط ۽ رازداري پاليسي قبول ڪريو ٿا.';

  @override
  String get deleteAccount => 'اڪائونٽ ميٽيو';

  @override
  String get deleteAccountTitle => 'ڇا توهان پنهنجو اڪائونٽ ميٽڻ چاهيو ٿا؟';

  @override
  String get deleteAccountBody =>
      'توهان جو اڪائونٽ ۽ اسان جي سرور تي محفوظ هر شيءِ (اي ميل، ڪوٽا، استعمال) هميشه لاءِ ميٽي ويندي، ۽ اڻ استعمال ٿيل تجزيا ضايع ٿي ويندا. برائوزر ۾ ادا ڪيل سبسڪرپشن فوراً منسوخ ٿي ويندي؛ App Store يا Google Play جي سبسڪرپشن اسٽور جي سيٽنگن ۾ منسوخ ڪرڻي پوندي.';

  @override
  String get deleteLocalData =>
      'هن ڊوائيس تي موجود ڊيٽا به ميٽيو (پورٽ فوليو، الرٽ، پسنديده، تاريخ، محفوظ ڪيل تجزيا)';

  @override
  String get deleteAccountConfirm => 'هميشه لاءِ ميٽيو';

  @override
  String get accountDeleted => 'توهان جو اڪائونٽ ميٽيو ويو.';

  @override
  String get errDeleteAccount =>
      'اڪائونٽ ميٽي نه سگهياسين. پنهنجو ڪنيڪشن چيڪ ڪري ٻيهر ڪوشش ڪريو.';

  @override
  String get aiTrialBriefNote =>
      'آزمائشي تجزيا مختصر هوندا آهن ۽ تيز AI ماڊل سان ٺهندا آهن. پلان سان توهان کي اسان جو سڀ کان قابل AI، وڌيڪ ويب ڳولائون، ۽ معياري توڙي تفصيلي ڊيگهه ملي ٿي.';

  @override
  String get billingMonthly => 'ماهوار';

  @override
  String get billingYearly => 'سالياني';

  @override
  String get yearlyDiscount => '2 مهينا مفت';

  @override
  String get perYear => '/ سال';

  @override
  String pricePerMonthApprox(String price) {
    return 'هر مهيني ≈ $price';
  }

  @override
  String get subscriptionLegalYearly =>
      'سالياني سبسڪرپشن هر سال پاڻمرادو تجديد ٿيندي رهندي جيستائين توهان ان کي منسوخ نه ڪريو. سبسڪرائيب ڪري توهان استعمال جا شرط ۽ رازداري پاليسي قبول ڪريو ٿا.';

  @override
  String get myAnalyses => 'منهنجا تجزيا';

  @override
  String get navAlerts => 'الرٽ';

  @override
  String get inviteTitle => 'بند پريويو';

  @override
  String get inviteBody =>
      'في الحال WhatStock رڳو دعوت ذريعي دستياب آهي. توهان کي مليل دعوت ڪوڊ داخل ڪريو.';

  @override
  String get inviteCodeLabel => 'دعوت ڪوڊ';

  @override
  String get inviteContinue => 'جاري رکو';

  @override
  String get inviteInvalid => 'هي دعوت ڪوڊ صحيح ناهي.';

  @override
  String get inviteExpired =>
      'هن دعوت جي مدت ختم ٿي وئي آهي. جنهن توهان کي دعوت ڏني، ان کان نئون ڪوڊ گهرو.';

  @override
  String get inviteDeviceLimit =>
      'هي دعوت ڪوڊ اڳ ۾ ئي وڌ کان وڌ ڊوائيسز تي استعمال ٿي رهيو آهي.';

  @override
  String get previewConfidential => 'رازدار پريويو';

  @override
  String get errPreviewDailyLimit =>
      'هن پريويو جي اڄ جي تجزيي جي حد پوري ٿي وئي آهي. سڀاڻي ٻيهر ڪوشش ڪريو.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ڪلاڪ اڳ',
      one: '1 ڪلاڪ اڳ',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ڏينهن اڳ',
      one: '1 ڏينهن اڳ',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'هي تجزيو تازو ڪجي؟';

  @override
  String staleBody(String age) {
    return 'هي $age تيار ٿيو هو. ان کان پوءِ قيمتون، خبرون ۽ نتيجا بدلجي سگهن ٿا.';
  }

  @override
  String get staleKeep => 'اڳوڻو ڏيکاريو';

  @override
  String get staleRefresh => 'نئون تيار ڪريو';

  @override
  String seeAll(int count) {
    return 'سڀ ڏسو ($count)';
  }

  @override
  String get searchAnalyses => 'پنهنجا تجزيا ڳوليو';

  @override
  String get deleteAnalysis => 'ميٽيو';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol جو تجزيو ميٽيو ويو';
  }

  @override
  String get keyLevelAlertHint =>
      'ڪنهن سطح تي ٽيپ ڪريو ته جيئن قيمت اتي پهچڻ تي الرٽ ملي.';

  @override
  String get shareAnalysisTitle => 'تجزيو شيئر ڪريو';

  @override
  String get shareAsImage => 'تصوير طور شيئر ڪريو';

  @override
  String get shareAsText => 'متن طور شيئر ڪريو';

  @override
  String get shareCardFooter => 'WhatStock سان ٺهيل';

  @override
  String get shareCardDisclaimer => 'AI تجزيو · سيڙپڪاري جو مشورو ناهي';

  @override
  String get referralTitle => 'دوستن کي دعوت ڏيو';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count اضافي تجزيا ملندا',
      one: '1 اضافي تجزيو ملندو',
    );
    return 'پنهنجو ڪوڊ شيئر ڪريو. توهان جي دوست کي فوري طور $_temp0، ۽ ان جي پهرين تجزيي کان پوءِ توهان کي به ايترو ئي ملندو.';
  }

  @override
  String get referralYourCode => 'توهان جو ڪوڊ';

  @override
  String referralStats(int invited, int rewarded) {
    return 'دعوت ڏنل: $invited · انعام مليل: $rewarded';
  }

  @override
  String get referralHaveCode => 'ڇا توهان وٽ ڪنهن دوست جو ڪوڊ آهي؟';

  @override
  String get referralRedeem => 'استعمال ڪريو';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count اضافي تجزيا شامل ڪيا ويا. ڀلي ڪري آيا!',
      one: '1 اضافي تجزيو شامل ڪيو ويو. ڀلي ڪري آيا!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown => 'هي ڪوڊ موجود ناهي. جانچي وري ڪوشش ڪريو.';

  @override
  String get referralErrOwn => 'توهان پنهنجو ڪوڊ استعمال نٿا ڪري سگهو.';

  @override
  String get referralErrAlready =>
      'توهان اڳ ۾ ئي ڪنهن دوست جو ڪوڊ استعمال ڪري چڪا آهيو.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count اضافي تجزيا ملندا',
      one: '1 اضافي تجزيو ملندو',
    );
    return 'WhatStock منهنجي لاءِ شيئرن جو تجزيو ڪري ٿو: شيئر جي تصوير ڪڍو ۽ AI ان کي سمجهائي ٿو. منهنجي ڪوڊ $code سان توهان کي $_temp0.';
  }

  @override
  String get referralCopied => 'ڪوڊ ڪاپي ٿي ويو';

  @override
  String get onboardTitle1 => 'ڪنهن شيئر جي تصوير ڪڍو';

  @override
  String get onboardBody1 =>
      'بروڪريج ايپ جي اسڪرين، اخبار يا ڪمپني جو لوگو ڪافي آهي: WhatStock شيئر کي سڃاڻي ٿو ۽ ان جي قيمت، چارٽ ۽ اهم انگ اکر ڏيکاري ٿو.';

  @override
  String get onboardTitle2 => 'ڪجهه منٽن ۾ سمجهو';

  @override
  String get onboardBody2 =>
      'AI تجزيو ٻڌائي ٿو ته شيئر کي ڇا ٿو هلائي، خطرا، قدر جو اندازو ۽ قيمت ڪيڏانهن وڃي سگهي ٿي ان جا ٽي امڪان – ذريعن سان ۽ اوهان جي ٻولي ۾.';

  @override
  String get onboardTitle3 => 'هميشه باخبر رهو';

  @override
  String get onboardBody3 =>
      'پسنديده، اوهان جو پورٽ فوليو ۽ قيمت جا الرٽ اوهان کي باخبر رکن ٿا. اوهان جا تجزيا اوهان جي ڊوائيس تي رهن ٿا، ٻيهر کولڻ لاءِ تيار.';

  @override
  String get onboardNext => 'اڳيون';

  @override
  String get onboardStart => 'شروع ڪريو';

  @override
  String get onboardSkip => 'ڇڏي ڏيو';

  @override
  String changesTitle(String date) {
    return 'اڳوڻي تجزيي کان پوءِ ($date)';
  }

  @override
  String get changesPrice => 'قيمت';

  @override
  String get changesNoMajor => 'منظرنامي ۾ ڪا خاص تبديلي ناهي آئي.';

  @override
  String get changesPreviousSummary => 'اڳوڻو خلاصو';

  @override
  String get telemetryTitle => 'WhatStock کي بهتر بڻائڻ ۾ مدد ڪريو';

  @override
  String get telemetryBody =>
      'گمنام استعمال جا انگ اکر ۽ ڪريش رپورٽون شيئر ڪريو: ڪهڙيون خاصيتون استعمال ٿين ٿيون ۽ ڇا غلط ٿيو. توهان جا شيئر، تجزيا يا ذاتي ڊيٽا ڪڏهن به نه. توهان هي ڪنهن به وقت سيٽنگن ۾ تبديل ڪري سگهو ٿا.';

  @override
  String get telemetryAllow => 'اجازت ڏيو';

  @override
  String get telemetryDecline => 'نه، مهرباني';

  @override
  String get telemetrySetting => 'گمنام انگ اکر ۽ ڪريش رپورٽون';

  @override
  String get telemetrySettingHint =>
      'خاصيتون ڪيترا ڀيرا استعمال ٿين ٿيون ۽ غلطي رپورٽون، ذاتي ڊيٽا يا توهان جي ڳولا ۽ تجزين جي مواد کان سواءِ.';

  @override
  String get askButton => 'هن تجزيي بابت پڇو';

  @override
  String askTitle(String symbol) {
    return '$symbol بابت سوال';
  }

  @override
  String get askIntro =>
      'تجزيي بابت ڪجهه به پڇو: ڪنهن خطري جو مطلب ڇا آهي، ڇا امڪانن کي بدلائي سگهي ٿو، ڪو انگ ڪيئن ڳڻيو ويو. جواب هن تجزيي تي ٻڌل آهن ۽ اهي سيڙپڪاري جو مشورو ناهن.';

  @override
  String get askHint => 'سوال پڇو…';

  @override
  String get askSend => 'موڪليو';

  @override
  String get askThinking => 'سوچ جاري آهي…';

  @override
  String get askSuggest1 => 'سڀ کان وڏو خطرو ڪهڙو آهي؟';

  @override
  String get askSuggest2 => 'ڇا امڪانن کي بدلائي سگهي ٿو؟';

  @override
  String get askSuggest3 => 'سادي نموني سمجهايو';

  @override
  String get askMaxReached =>
      'هن تجزيي لاءِ اهو آخري سوال هو. وڌيڪ پڇڻ لاءِ نئون تجزيو تيار ڪريو.';

  @override
  String get errAskLimit =>
      'توهان اڄ جي سوالن جي حد تائين پهچي ويا آهيو. سڀاڻي ٻيهر ڪوشش ڪريو.';

  @override
  String get eventTomorrow => 'سڀاڻي';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days ڏينهن ۾',
      one: '1 ڏينهن ۾',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'ٽه ماهي نتيجا';

  @override
  String get eventBeforeOpen => 'مارڪيٽ کلڻ کان اڳ';

  @override
  String get eventAfterClose => 'مارڪيٽ بند ٿيڻ کان پوءِ';

  @override
  String eventEpsEstimate(String value) {
    return 'اندازي مطابق EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'توهان جي تجزيي مان';

  @override
  String get eventsHint =>
      'ايندڙ 90 ڏينهن ۾ توهان جي پسنديده ۽ پورٽ فوليو شيئرن جي نتيجن جون تاريخون، ۽ توهان جي تجزين ۾ نشان لڳل تاريخ وارا واقعا.';

  @override
  String get eventsEmpty =>
      'ايندڙ 90 ڏينهن ۾ ڪو به تاريخ وارو واقعو ناهي. نتيجن جون تاريخون هتي ڏسڻ لاءِ پسنديده يا پورٽ فوليو شيئر شامل ڪريو.';

  @override
  String get compareTitle => 'ڀيٽ';

  @override
  String get compareAdd => 'شيئر شامل ڪريو';

  @override
  String get compareRemove => 'هٽايو';

  @override
  String get compareTickerHint => 'ٽڪر، مثال طور MSFT';

  @override
  String get compareHint =>
      'اهم انگ اکر هڪ ٻئي جي ڀرسان؛ هر قطار ۾ بهترين قدر نمايان ڪيل آهي. رقمون هر شيئر جي پنهنجي ڪرنسي ۾ آهن.';

  @override
  String get compareNoAnalysis => 'اڃا ڪو تجزيو ناهي';

  @override
  String get portfolioDividends => 'سالياني ڊيويڊنڊ';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent ييلڊ';
  }

  @override
  String get portfolioDividendNote =>
      'متوقع سالياني ڊيويڊنڊ گذريل 12 مهينن ۾ ادا ڪيل ڊيويڊنڊ تي ٻڌل آهي؛ مستقبل جي ادائگين جي ضمانت ناهي.';

  @override
  String positionDividend(String amount) {
    return 'ڊيويڊنڊ: سالياني $amount';
  }

  @override
  String get chartAvgCost => 'توهان جي سراسري';

  @override
  String get chartAlertLevel => 'الرٽ';

  @override
  String get marketsToday => 'اڄ جون مارڪيٽون';

  @override
  String get notesTitle => 'منهنجا نوٽس';

  @override
  String get notesHint =>
      'توهان اهو ڇو خريد ڪيو، ڇا تي نظر رکي رهيا آهيو، ڇا ٿيو ته وڪڻندا؟';

  @override
  String get notesInfo =>
      'صرف هن ڊوائيس تي محفوظ ٿئي ٿو. AI تجزيو توهان جا نوٽس نظر ۾ رکي ٿو.';

  @override
  String notesSaved(String date) {
    return 'محفوظ ٿيو: $date';
  }

  @override
  String get peersTitle => 'ساڳيون ڪمپنيون';

  @override
  String get portfolioExport => 'CSV طور ايڪسپورٽ ڪريو';

  @override
  String get portfolioImport => 'CSV مان امپورٽ ڪريو';

  @override
  String get portfolioImportHint =>
      'هر قطار ۾ هڪ خريداري پيسٽ ڪريو: ٽڪر، مقدار، قيمت، ڪرنسي، تاريخ (YYYY-MM-DD). ڪالم ڪاما، سيمي ڪالن يا ٽيب سان الڳ ٿي سگهن ٿا؛ هيڊر واري قطار اختياري آهي.';

  @override
  String get portfolioImportButton => 'امپورٽ ڪريو';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count خريداريون شامل ڪيون ويون',
      one: '1 خريداري شامل ڪئي وئي',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count قطارون ڇڏيون ويون',
      one: '1 قطار ڇڏي وئي',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'پورٽ فوليو، پسنديده، قيمت جا الرٽ ۽ نوٽس توهان جي سڀني ڊوائيسن تي سنڪ ٿين ٿا.';

  @override
  String syncLast(String time) {
    return 'آخري سنڪ: $time';
  }

  @override
  String get syncNow => 'هاڻي سنڪ ڪريو';

  @override
  String get syncFailed => 'سنڪ ناڪام ٿيو. اهو پاڻمرادو ٻيهر ڪوشش ڪندو.';
}
