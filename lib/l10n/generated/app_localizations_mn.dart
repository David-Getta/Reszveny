// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Mongolian (`mn`).
class AppLocalizationsMn extends AppLocalizations {
  AppLocalizationsMn([String locale = 'mn']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Хувьцааны зургийг аваад, түүний талаар бүгдийг мэдээрэй.';

  @override
  String get homeHint =>
      'Хувьцааны гэрчилгээ, брокерын аппын дэлгэц, сонин эсвэл компанийн лого – хувьцааг тодорхойлох ямар ч зүйл болно.';

  @override
  String get takePhoto => 'Зураг авах';

  @override
  String get chooseFromGallery => 'Галерейгаас сонгох';

  @override
  String get chooseImage => 'Зураг сонгох';

  @override
  String get enterTickerManually => 'Тикерийг гараар оруулах';

  @override
  String get tickerInputLabel => 'Тикер';

  @override
  String get tickerInputHint => 'ж.нь AAPL';

  @override
  String get lookUp => 'Хайх';

  @override
  String demoModeBanner(String symbols) {
    return 'Демо горим – зах зээлийн өгөгдлийн түлхүүр тохируулаагүй байна. Жишээ өгөгдөл дараах хувьцаанд бэлэн: $symbols.';
  }

  @override
  String get recognizing => 'Зургийг шинжилж байна…';

  @override
  String get loadingData => 'Өгөгдлийг ачаалж байна…';

  @override
  String get noCandidatesTitle => 'Хувьцаа танигдсангүй';

  @override
  String get noCandidatesBody =>
      'Энэ зургаас хувьцааг тодорхойлж чадсангүй. Илүү тод зураг авах эсвэл тикерийг гараар оруулна уу.';

  @override
  String get whatWeSaw => 'Бидний харсан зүйл';

  @override
  String get chooseCandidateTitle => 'Та аль хувьцааг хэлсэн бэ?';

  @override
  String confidencePercent(int percent) {
    return '$percent% итгэлтэй';
  }

  @override
  String get settings => 'Тохиргоо';

  @override
  String get language => 'Хэл';

  @override
  String get systemLanguage => 'Системийн хэл';

  @override
  String get about => 'Аппын тухай';

  @override
  String get disclaimer =>
      'Энэ апп зөвхөн мэдээллийн зориулалттай бөгөөд хөрөнгө оруулалтын зөвлөгөө биш юм. Өгөгдөл хоцрогдсон эсвэл алдаатай байж болно.';

  @override
  String dataSource(String source) {
    return 'Өгөгдлийн эх сурвалж: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Таних: $source';
  }

  @override
  String get retry => 'Дахин оролдох';

  @override
  String get cancel => 'Цуцлах';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Хаах';

  @override
  String get errorGeneric => 'Алдаа гарлаа.';

  @override
  String get errorSectionUnavailable => 'Энэ хэсгийг ачаалж чадсангүй.';

  @override
  String get notAvailable => 'байхгүй';

  @override
  String get sectionIdentity => 'Таних мэдээлэл';

  @override
  String get sectionPrice => 'Үнэ';

  @override
  String get sectionValuation => 'Үнэлгээ';

  @override
  String get sectionFinancials => 'Санхүүгийн үзүүлэлт';

  @override
  String get sectionDividend => 'Ногдол ашиг';

  @override
  String get sectionProfile => 'Компанийн танилцуулга';

  @override
  String get sectionAnalysts => 'Шинжээчдийн үнэлгээ';

  @override
  String get sectionNews => 'Мэдээ';

  @override
  String get sectionRecognition => 'Танилтын дэлгэрэнгүй';

  @override
  String get labelSymbol => 'Тикер';

  @override
  String get labelExchange => 'Бирж';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Валют';

  @override
  String get labelCountry => 'Улс';

  @override
  String get labelIndustry => 'Салбар';

  @override
  String get labelSector => 'Сектор';

  @override
  String get labelWebsite => 'Вэбсайт';

  @override
  String get labelIpoDate => 'IPO огноо';

  @override
  String get labelMarketCap => 'Зах зээлийн үнэлгээ';

  @override
  String get labelSharesOutstanding => 'Гүйлгээнд буй хувьцаа';

  @override
  String get labelEmployees => 'Ажилтны тоо';

  @override
  String get labelCeo => 'Гүйцэтгэх захирал';

  @override
  String get labelHeadquarters => 'Төв оффис';

  @override
  String get labelDescription => 'Тайлбар';

  @override
  String get labelLastPrice => 'Сүүлийн үнэ';

  @override
  String get labelChange => 'Өөрчлөлт';

  @override
  String get labelOpen => 'Нээлтийн үнэ';

  @override
  String get labelDayHigh => 'Өдрийн дээд';

  @override
  String get labelDayLow => 'Өдрийн доод';

  @override
  String get labelPreviousClose => 'Өмнөх хаалтын үнэ';

  @override
  String get labelWeek52High => '52 долоо хоногийн дээд';

  @override
  String get labelWeek52Low => '52 долоо хоногийн доод';

  @override
  String get labelAverageVolume10d => 'Дундаж хэмжээ (10 өдөр)';

  @override
  String updatedAt(String time) {
    return 'Шинэчилсэн: $time';
  }

  @override
  String get labelPeTrailing => 'P/E (өнгөрсөн)';

  @override
  String get labelPeForward => 'P/E (ирээдүйн)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / чөлөөт мөнгөн гүйлгээ';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Бета';

  @override
  String get labelRevenueTtm => 'Орлого (TTM)';

  @override
  String get labelNetIncomeTtm => 'Цэвэр ашиг (TTM)';

  @override
  String get labelGrossMargin => 'Нийт ашгийн маржин';

  @override
  String get labelOperatingMargin => 'Үйл ажиллагааны маржин';

  @override
  String get labelNetMargin => 'Цэвэр ашгийн маржин';

  @override
  String get labelRoe => 'Өөрийн хөрөнгийн өгөөж';

  @override
  String get labelRoa => 'Нийт хөрөнгийн өгөөж';

  @override
  String get labelDebtToEquity => 'Өр / өөрийн хөрөнгө';

  @override
  String get labelCurrentRatio => 'Хөрвөх чадварын харьцаа';

  @override
  String get labelRevenueGrowth => 'Орлогын өсөлт (YoY)';

  @override
  String get labelEpsGrowth => 'EPS өсөлт (YoY)';

  @override
  String get labelDividendYield => 'Ногдол ашгийн өгөөж';

  @override
  String get labelDividendPerShare => 'Нэгж хувьцаанд ногдох ногдол ашиг';

  @override
  String get labelPayoutRatio => 'Ногдол ашиг хуваарилалтын харьцаа';

  @override
  String get labelConsensus => 'Консенсус';

  @override
  String get ratingStrongBuy => 'Хүчтэй авах';

  @override
  String get ratingBuy => 'Авах';

  @override
  String get ratingHold => 'Барих';

  @override
  String get ratingSell => 'Зарах';

  @override
  String get ratingStrongSell => 'Хүчтэй зарах';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count шинжээч',
      one: '1 шинжээч',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Хугацаа: $period';
  }

  @override
  String get noNews => 'Сүүлийн үеийн мэдээ алга.';

  @override
  String get openArticle => 'Нийтлэлийг нээх';

  @override
  String get openLinkFailed => 'Холбоосыг нээж чадсангүй.';

  @override
  String get recognitionSummary => 'Хураангуй';

  @override
  String get recognitionEvidence => 'Яагаад ингэж бодож байна вэ';

  @override
  String get recognitionRawText => 'Зурагнаас уншсан текст';

  @override
  String get errMissingAnthropicKey =>
      'Зураг таних тохируулаагүй байна (ANTHROPIC_API_KEY алга). Тикерийг гараар оруулна уу.';

  @override
  String get errRecognitionUnreachable =>
      'Таних үйлчилгээтэй холбогдож чадсангүй. Интернэт холболтоо шалгана уу.';

  @override
  String errRecognitionHttp(String status) {
    return 'Таних үйлчилгээ алдаа буцаалаа (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Таних үйлчилгээ энэ зургийг боловсруулж чадсангүй.';

  @override
  String get errRecognitionTruncated =>
      'Таних үйлчилгээний хариу тасарсан. Дахин оролдоно уу.';

  @override
  String get errRecognitionBadResponse =>
      'Таних үйлчилгээнээс гэнэтийн хариу ирлээ.';

  @override
  String get errRecognitionEmpty => 'Таних үйлчилгээ хоосон хариу буцаалаа.';

  @override
  String get errMissingFinnhubKey =>
      'Зах зээлийн өгөгдөл тохируулаагүй байна (FINNHUB_API_KEY алга).';

  @override
  String get errMarketUnreachable =>
      'Зах зээлийн өгөгдлийн үйлчилгээтэй холбогдож чадсангүй. Интернэт холболтоо шалгана уу.';

  @override
  String get errMarketRateLimited =>
      'Зах зээлийн өгөгдлийн үйлчилгээнд хэт олон хүсэлт илгээлээ. Нэг минут хүлээнэ үү.';

  @override
  String errMarketHttp(String status) {
    return 'Зах зээлийн өгөгдлийн үйлчилгээ алдаа буцаалаа (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Зах зээлийн өгөгдлийн үйлчилгээнээс гэнэтийн хариу ирлээ.';

  @override
  String errNoQuote(String symbol) {
    return '$symbol хувьцааны үнийн өгөгдөл олдсонгүй.';
  }

  @override
  String errNoProfile(String symbol) {
    return '$symbol компанийн танилцуулга олдсонгүй.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Демо горим зөвхөн дараахыг дэмжинэ: $symbols. Бодит цагийн өгөгдөл авахын тулд FINNHUB_API_KEY нэмнэ үү.';
  }

  @override
  String errUnknown(String detail) {
    return 'Алдаа гарлаа: $detail';
  }

  @override
  String get newSearch => 'Шинэ хайлт';

  @override
  String get recentSearches => 'Сүүлийн хайлт';

  @override
  String get noRecentSearches => 'Сүүлийн хайлт одоогоор алга.';

  @override
  String get clearRecent => 'Сүүлийн хайлтыг цэвэрлэх';

  @override
  String get greeting => 'Аль хувьцааг харах вэ?';

  @override
  String get searchHint => 'Тикер эсвэл компанийн нэр';

  @override
  String get attachImage => 'Зураг хавсаргах';

  @override
  String get searchResultsTitle => 'Хайлтын үр дүн';

  @override
  String errNoResults(String query) {
    return '«$query» гэсэн хайлтаар хувьцаа олдсонгүй.';
  }

  @override
  String get quickBarHint => 'Тикер эсвэл компанийн нэр бичнэ үү…';

  @override
  String get openFullWindow => 'Цонх нээх';

  @override
  String hotkeyHint(String shortcut) {
    return 'WhatStock-ийг дуудахын тулд хаанаас ч $shortcut дарна уу.';
  }

  @override
  String get trayOpen => 'WhatStock нээх';

  @override
  String get trayQuickSearch => 'Шуурхай хайлт';

  @override
  String get trayQuit => 'Гарах';

  @override
  String get appearance => 'Харагдах байдал';

  @override
  String get themeSystem => 'Систем';

  @override
  String get themeDark => 'Бараан';

  @override
  String get themeLight => 'Цайвар';

  @override
  String get back => 'Буцах';

  @override
  String get aiSectionTitle => 'AI шинжилгээ';

  @override
  String get aiIntro =>
      'AI-ийн бичсэн дэлгэрэнгүй тойм: сүүлийн мэдээний хураангуй, бизнес, давуу тал, эрсдэл ба далд хүчин зүйлс, үнэлгээ, сэтгэл зүй, нийгэм судлал, техник болон макро өнцгөөс авч үзсэн хувилбар бүхий үнийн төлөв, мөн юуг анхаарах вэ.';

  @override
  String get aiGenerate => 'Шинжилгээ гаргах';

  @override
  String get aiRegenerate => 'Дахин гаргах';

  @override
  String get aiGenerating =>
      'Шинжилгээг бэлтгэж байна… энэ нэг хоёр минут үргэлжилж магадгүй.';

  @override
  String get aiSources => 'Эх сурвалж';

  @override
  String aiGeneratedAt(String time) {
    return 'Гаргасан: $time';
  }

  @override
  String get aiDisclaimer =>
      'Нийтэд нээлттэй өгөгдөл болон сүүлийн мэдээнд үндэслэн AI-ийн гаргасан шинжилгээ. Алдаатай эсвэл хуучирсан байж болох бөгөөд хөрөнгө оруулалтын зөвлөгөө биш юм.';

  @override
  String get errAiNotConfigured =>
      'AI шинжилгээ тохируулаагүй байна (ANTHROPIC_API_KEY алга).';

  @override
  String get errAiUnreachable =>
      'AI үйлчилгээтэй холбогдож чадсангүй. Интернэт холболтоо шалгана уу.';

  @override
  String errAiHttp(String status) {
    return 'AI үйлчилгээ алдаа буцаалаа (HTTP $status).';
  }

  @override
  String get errAiRefused => 'AI үйлчилгээ энэ хувьцааг шинжлэхээс татгалзлаа.';

  @override
  String get errAiBadResponse => 'AI үйлчилгээнээс гэнэтийн хариу ирлээ.';

  @override
  String get sectionChart => 'Үнийн график';

  @override
  String get rangeOneWeek => '7 хоног';

  @override
  String get rangeOneMonth => '1 сар';

  @override
  String get rangeThreeMonths => '3 сар';

  @override
  String get rangeOneYear => '1 жил';

  @override
  String get rangeFiveYears => '5 жил';

  @override
  String get chartUnavailable =>
      'Одоогийн өгөгдлийн эх сурвалжаас үнийн түүх авах боломжгүй.';

  @override
  String get sectionStatements => 'Санхүүгийн тайлан (жилийн)';

  @override
  String get labelFiscalYear => 'Санхүүгийн жил';

  @override
  String get labelRevenue => 'Орлого';

  @override
  String get labelNetIncome => 'Цэвэр ашиг';

  @override
  String get labelTotalAssets => 'Нийт хөрөнгө';

  @override
  String get labelTotalLiabilities => 'Нийт өр төлбөр';

  @override
  String get labelEquity => 'Эзэмшигчдийн өмч';

  @override
  String get labelOperatingCashFlow => 'Үндсэн үйл ажиллагааны мөнгөн гүйлгээ';

  @override
  String get statementsUnavailable =>
      'Энэ хувьцааны мэдээлсэн санхүүгийн тайлан байхгүй байна.';

  @override
  String get launchAtLogin => 'Нэвтрэх үед эхлүүлэх';

  @override
  String get hotkeyLabel => 'Глобал товчлол';

  @override
  String get hotkeyRecordHint => 'Энд дараад шинэ товчлуурын хослолыг дарна уу';

  @override
  String get hotkeyReset => 'Анхны тохиргоонд буцаах';

  @override
  String get pasteImage => 'Түр санах ойгоос зураг буулгах';

  @override
  String get errClipboardNoImage => 'Түр санах ойд зураг алга.';

  @override
  String get favorites => 'Дуртай';

  @override
  String get addToFavorites => 'Дуртайд нэмэх';

  @override
  String get removeFromFavorites => 'Дуртайгаас хасах';

  @override
  String get noFavorites =>
      'Дуртай хувьцаа одоогоор алга. Нэмэхийн тулд хувьцааны од дээр дарна уу.';

  @override
  String get displayCurrency => 'Харуулах валют';

  @override
  String get displayCurrencyNone => 'Зөвхөн хувьцааны өөрийн валют';

  @override
  String labelConverted(String currency) {
    return '≈ $currency валютаар';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Ханш: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Шинэчлэлт';

  @override
  String currentVersion(String version) {
    return 'Хувилбар $version';
  }

  @override
  String get autoUpdate => 'Шинэчлэлтийг автоматаар суулгах';

  @override
  String get checkForUpdates => 'Шинэчлэлт шалгах';

  @override
  String get updateChecking => 'Шинэчлэлт шалгаж байна…';

  @override
  String get updateUpToDate => 'Та хамгийн сүүлийн хувилбарыг ашиглаж байна.';

  @override
  String updateAvailable(String version) {
    return '$version хувилбар гарсан байна.';
  }

  @override
  String get updateDownloading => 'Шинэчлэлтийг арын горимд татаж байна…';

  @override
  String get updateDownloaded =>
      'Шинэчлэлт бэлэн боллоо. Суулгахын тулд дахин эхлүүлнэ үү.';

  @override
  String get updateNow => 'Шинэчлэх';

  @override
  String get restartNow => 'Дахин эхлүүлэх';

  @override
  String get updatesViaStore => 'Шинэчлэлт аппын дэлгүүрээр автоматаар ирнэ.';

  @override
  String get updateCheckFailed => 'Шинэчлэлт шалгаж чадсангүй.';

  @override
  String get subscription => 'Захиалга';

  @override
  String get planTrial => 'Туршилт';

  @override
  String get planNormal => 'Энгийн';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Идэвхтэй багц алга';

  @override
  String planAnalysesPerMonth(int count) {
    return 'Сард $count шинжилгээ';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$count шинжилгээтэй $days хоногийн үнэгүй туршилт';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Туршилтын хугацаа $days хоног үлдлээ',
      one: 'Туршилтын хугацаа 1 хоног үлдлээ',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Таны үнэгүй туршилтын хугацаа дууслаа. Шинжилгээ үргэлжлүүлэхийн тулд багц сонгоно уу.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Энэ хугацаанд $total шинжилгээнээс $remaining үлдсэн';
  }

  @override
  String extraCredits(int count) {
    return '$count нэмэлт шинжилгээ';
  }

  @override
  String renewsOn(String date) {
    return 'Сунгах огноо: $date';
  }

  @override
  String get choosePlan => 'Багц сонгох';

  @override
  String get currentPlan => 'Одоогийн багц';

  @override
  String get subscribe => 'Захиалах';

  @override
  String get perMonth => '/ сар';

  @override
  String get extraPacksTitle =>
      'Илүү хэрэгтэй юу? Нэмэлт шинжилгээ худалдаж аваарай';

  @override
  String get extraPacksHint =>
      'Нэмэлт шинжилгээний хугацаа хэзээ ч дуусахгүй бөгөөд сарын эрхээ дуусгасны дараа ашиглагдана.';

  @override
  String get buy => 'Худалдаж авах';

  @override
  String get restorePurchases => 'Худалдан авалтыг сэргээх';

  @override
  String get manageSubscription => 'Захиалга удирдах';

  @override
  String get purchaseSuccess => 'Баярлалаа! Таны худалдан авалт идэвхжлээ.';

  @override
  String get purchasePending => 'Худалдан авалт хүлээгдэж байна…';

  @override
  String get purchaseFailed => 'Худалдан авалтыг гүйцээж чадсангүй.';

  @override
  String get purchaseCanceled => 'Худалдан авалт цуцлагдлаа.';

  @override
  String get billingUnavailable =>
      'Энэ платформ дээр худалдан авалт одоогоор боломжгүй. Утас эсвэл Mac дээрээ захиалаарай; таны багц бүх төхөөрөмж дээр ажиллана.';

  @override
  String get errQuotaExceeded =>
      'Энэ хугацаанд танд шинжилгээ үлдсэнгүй. Багцаа ахиулах эсвэл нэмэлт шинжилгээ худалдаж аваарай.';

  @override
  String get errTrialExpired =>
      'Таны үнэгүй туршилтын хугацаа дууслаа. Үргэлжлүүлэхийн тулд багц сонгоно уу.';

  @override
  String get errNoPlan => 'AI шинжилгээнд идэвхтэй багц шаардлагатай.';

  @override
  String get viewPlans => 'Багцуудыг харах';

  @override
  String get usageTitle => 'Хэрэглээ';

  @override
  String get demoPurchaseNote =>
      'Демо төлбөр: энэ платформ дээр худалдан авалтыг дуурайлгана.';

  @override
  String get mostPopular => 'Хамгийн эрэлттэй';

  @override
  String get bestValue => 'Хамгийн ашигтай';

  @override
  String get planFeaturesCommon =>
      'Зураг таних, бодит цагийн өгөгдөл, график, дуртай хувьцаа болон бүх 120 хэл багц бүрд багтсан. Эрх нь AI шинжилгээнд хамаарна.';

  @override
  String get searchLanguages => 'Хэл хайх…';

  @override
  String get noLanguageMatch => 'Тохирох хэл олдсонгүй.';

  @override
  String get aiSettings => 'AI шинжилгээ';

  @override
  String get aiLength => 'Урт';

  @override
  String get aiDepthBrief => 'Товч';

  @override
  String get aiDepthStandard => 'Стандарт';

  @override
  String get aiDepthDeep => 'Гүнзгий';

  @override
  String get aiDepthBriefDesc => 'Гол санаа, хурдан.';

  @override
  String get aiDepthStandardDesc => 'Бүх хэсэгтэй бүрэн тайлан.';

  @override
  String get aiDepthDeepDesc =>
      'Илүү олон вэб хайлт, өрсөлдөгчидтэй харьцуулалт, илүү гүнзгий дэлгэрэнгүй.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Ойролцоогоор $min–$max үг';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count шинжилгээ зарцуулна',
      one: '1 шинжилгээ зарцуулна',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Уншигчийн түвшин';

  @override
  String get aiReaderBeginner => 'Анхан шат';

  @override
  String get aiReaderExperienced => 'Туршлагатай';

  @override
  String get aiReaderBeginnerDesc =>
      'Энгийн хэллэг; мэргэжлийн нэр томьёо бүрийг тайлбарлана.';

  @override
  String get aiReaderExperiencedDesc =>
      'Санхүүгийн стандарт нэр томьёотой, илүү нягт текст.';

  @override
  String get aiCounterArgument => 'Хамгийн хүчтэй эсрэг аргумент';

  @override
  String get aiCounterArgumentDesc =>
      'Хураангуй үргэлж өөрийн дүгнэлтийн эсрэг хамгийн хүчтэй аргументаар төгсөнө.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Таны багцаар нэг шинжилгээнд $count хүртэл вэб хайлт',
      one: 'Таны багцаар нэг шинжилгээнд 1 хүртэл вэб хайлт',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Багц тус бүрийн стандарт урт: Энгийн $normal, Pro $pro, Max $max, Ultra $ultra. Товч нь 2-оор бага, Гүнзгий нь 2-оор их.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count хүртэл вэб хайлт',
      one: '1 хүртэл вэб хайлт',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Нэг шинжилгээнд $count вэб хайлт',
      one: 'Нэг шинжилгээнд 1 вэб хайлт',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Энэ урттай шинжилгээнд $needed шинжилгээ шаардлагатай ч танд ердөө $left үлдсэн. Тохиргоо хэсгээс богино урт сонгох эсвэл нэмэлт шинжилгээ аваарай.';
  }

  @override
  String get outlookMarketMood => 'Зах зээлийн уур амьсгал';

  @override
  String get moodVeryPessimistic => 'Маш гутранги';

  @override
  String get moodPessimistic => 'Гутранги';

  @override
  String get moodNeutral => 'Төвийг сахисан';

  @override
  String get moodOptimistic => 'Өөдрөг';

  @override
  String get moodVeryOptimistic => 'Маш өөдрөг';

  @override
  String get scenarioBull => 'Өөдрөг хувилбар';

  @override
  String get scenarioBase => 'Суурь хувилбар';

  @override
  String get scenarioBear => 'Гутранги хувилбар';

  @override
  String outlookCurrentPrice(String price) {
    return 'Одоогийн үнэ: $price';
  }

  @override
  String get outlookKeyLevels => 'Гол түвшнүүд';

  @override
  String get keyLevelSupport => 'Дэмжлэг';

  @override
  String get keyLevelResistance => 'Эсэргүүцэл';

  @override
  String get keyLevelAnchor => 'Тулгуур түвшин';

  @override
  String get upcomingEvents => 'Удахгүй болох үйл явдал';

  @override
  String get outlookChartNote =>
      'Ойролцоо хүрээ; магадлал нь барагцаа үнэлгээ бөгөөд урьдчилсан таамаг биш.';

  @override
  String get accountTitle => 'Бүртгэл';

  @override
  String get signIn => 'Нэвтрэх';

  @override
  String get signOut => 'Гарах';

  @override
  String get notSignedIn => 'Нэвтрээгүй';

  @override
  String get accountBenefit =>
      'Захиалга тань бүх төхөөрөмж дээр ажиллахын тулд нэвтэрнэ үү.';

  @override
  String get accountSyncedNote =>
      'Таны захиалга болон үлдсэн шинжилгээ бүх төхөөрөмж дээр ижил байна.';

  @override
  String get signInTitle => 'WhatStock-д нэвтрэх';

  @override
  String get emailLabel => 'Имэйл хаяг';

  @override
  String get continueWithEmail => 'Имэйлээр үргэлжлүүлэх';

  @override
  String codeSentTo(String email) {
    return 'Бид $email хаяг руу 6 оронтой код илгээлээ. Код 10 минутын турш хүчинтэй.';
  }

  @override
  String get codeLabel => 'Нэвтрэх код';

  @override
  String get resendCode => 'Шинэ код илгээх';

  @override
  String get useDifferentEmail => 'Өөр имэйл ашиглах';

  @override
  String get errInvalidCode => 'Код буруу эсвэл хугацаа нь дууссан байна.';

  @override
  String get errInvalidEmail => 'Зөв имэйл хаяг оруулна уу.';

  @override
  String get errSignInFailed =>
      'Нэвтэрч чадсангүй. Холболтоо шалгаад дахин оролдоно уу.';

  @override
  String get checkoutWaiting =>
      'Төлбөрөө хөтөч дээрээ гүйцээнэ үү. Дууссаны дараа апп автоматаар шинэчлэгдэнэ.';

  @override
  String get paymentViaStripe =>
      'Хөтөч дээр Stripe үйлчилгээгээр дамжуулан аюулгүй төлнө. Хүссэн үедээ цуцлах боломжтой.';

  @override
  String get paymentViaStore =>
      'Төлбөрийг таны App Store эсвэл Google Play бүртгэлээр тооцно. Дэлгүүрийн тохиргооноос хүссэн үедээ цуцлах боломжтой.';

  @override
  String get keySpace => 'Зай';

  @override
  String get doubleOptionTitle => 'Option товчийг давхар дарах';

  @override
  String get doubleOptionSubtitle =>
      'Option товчийг хурдан хоёр удаа дарахад мөн WhatStock дуудагдана.';

  @override
  String get doubleOptionPermission =>
      'Бусад апп дээр ч ажиллуулахын тулд «Системийн тохиргоо» → «Нууцлал ба аюулгүй байдал» → «Оролтын хяналт» хэсэгт WhatStock-д зөвшөөрөл олгоод, аппыг дахин нээнэ үү.';

  @override
  String get openSystemSettings => 'Системийн тохиргоог нээх';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'WhatStock-ийг дуудахын тулд хаанаас ч $shortcut дарах эсвэл Option товчийг хоёр удаа дарна уу.';
  }

  @override
  String get scenarioMostLikely => 'Хамгийн магадлалтай';

  @override
  String get longTermToday => 'Өнөөдөр';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years жил',
      one: '1 жил',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return 'жилд $range';
  }

  @override
  String longTermLikely(String price) {
    return 'хамгийн магадлалтай нь $price';
  }

  @override
  String get confidenceLow => 'Бага итгэлтэй';

  @override
  String get confidenceMedium => 'Дунд зэрэг итгэлтэй';

  @override
  String get confidenceHigh => 'Өндөр итгэлтэй';

  @override
  String get longTermNote =>
      'Урт хугацааны хүрээ нь дурдсан таамаглалд үндэслэх бөгөөд цаг хугацаа өнгөрөх тусам өргөсдөг. Үнэд ногдол ашиг ороогүй. Барагцаа үнэлгээ бөгөөд урьдчилсан таамаг биш.';

  @override
  String get portfolio => 'Портфолио';

  @override
  String get portfolioEmpty =>
      'Энд одоогоор хоосон байна. Эзэмшиж буй хувьцаагаа хянахын тулд хувьцаа нээгээд «Портфолиод нэмэх» дээр дарна уу.';

  @override
  String get portfolioLocalNote =>
      'Зөвхөн энэ төхөөрөмжид хадгалагдана. Нийт дүнг Европын Төв Банкны лавлах ханшаар хөрвүүлнэ; үнэ хоцрогдсон байж болно.';

  @override
  String get addToPortfolio => 'Портфолиод нэмэх';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol нэмэх';
  }

  @override
  String get portfolioQuantity => 'Хувьцааны тоо';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Нэгж хувьцааны үнэ ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Худалдан авсан огноо';

  @override
  String get portfolioAdd => 'Нэмэх';

  @override
  String get portfolioInvalidNumber => 'Тэгээс их тоо оруулна уу.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol портфолиод нэмэгдлээ.';
  }

  @override
  String get portfolioTotalValue => 'Нийт үнэ цэнэ';

  @override
  String get portfolioToday => 'Өнөөдөр';

  @override
  String get portfolioGainLoss => 'Ашиг/алдагдал';

  @override
  String get portfolioInvested => 'Оруулсан хөрөнгө';

  @override
  String get portfolioAllocation => 'Хуваарилалт';

  @override
  String get portfolioPositions => 'Эзэмшил';

  @override
  String portfolioAvgCost(String price) {
    return 'дундаж өртөг $price';
  }

  @override
  String get portfolioYourPosition => 'Таны эзэмшил';

  @override
  String get portfolioPurchases => 'Худалдан авалтууд';

  @override
  String get portfolioRemove => 'Хасах';

  @override
  String get portfolioExcluded =>
      'Үнэ эсвэл валютын ханшгүй эзэмшлийг нийт дүнд тооцохгүй.';

  @override
  String get priceAlerts => 'Үнийн сэрэмжлүүлэг';

  @override
  String get setPriceAlert => 'Үнийн сэрэмжлүүлэг тохируулах';

  @override
  String alertDialogTitle(String symbol) {
    return 'Үнийн сэрэмжлүүлэг · $symbol';
  }

  @override
  String get alertKindAbove => 'Дээш гарвал';

  @override
  String get alertKindBelow => 'Доош унавал';

  @override
  String get alertKindMove => 'Нэг өдөрт их хөдлөвөл';

  @override
  String alertTargetPrice(String currency) {
    return 'Үнэ ($currency)';
  }

  @override
  String get alertMovePercent => 'Өдрийн хөдөлгөөн (%)';

  @override
  String get alertAlreadyMet => 'Үнэ энэ түвшнийг аль хэдийн давсан байна.';

  @override
  String get alertSave => 'Сэрэмжлүүлэг тохируулах';

  @override
  String alertCreated(String symbol) {
    return '$symbol хувьцаанд сэрэмжлүүлэг тохирууллаа.';
  }

  @override
  String get alertsEmpty =>
      'Үнийн сэрэмжлүүлэг одоогоор алга. Хувьцаа нээгээд хонх дээр дарж тохируулна уу.';

  @override
  String get alertsNote =>
      'WhatStock ажиллаж байх үед сэрэмжлүүлгийг 5 минут тутамд шалгана. Компьютер дээр апп цэсний мөр эсвэл системийн тавиурт үргэлжлүүлэн ажиллана; утсан дээр одоогоор зөвхөн апп нээлттэй үед сэрэмжлүүлэг ирнэ.';

  @override
  String alertDescAbove(String price) {
    return '$price үнээс дээш';
  }

  @override
  String alertDescBelow(String price) {
    return '$price үнээс доош';
  }

  @override
  String alertDescMove(String percent) {
    return 'Өдрийн хөдөлгөөн ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Идэвхжсэн: $date, үнэ $price';
  }

  @override
  String get alertRearm => 'Дахин идэвхжүүлэх';

  @override
  String get alertDelete => 'Устгах';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol $price үнээс дээш гарлаа';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol $price үнээс доош унлаа';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol өнөөдөр $percent хөдөллөө';
  }

  @override
  String alertHitBody(String price) {
    return 'Одоогийн үнэ: $price';
  }

  @override
  String get alertOpen => 'Нээх';

  @override
  String get keepInTrayTitle => 'Цонхыг хаасан ч ажилласаар байх';

  @override
  String get keepInTraySubtitle =>
      'WhatStock цэсний мөр эсвэл системийн тавиурт үлдэх тул товчлол болон үнийн сэрэмжлүүлэг үргэлжлэн ажиллана.';

  @override
  String get termsOfUse => 'Үйлчилгээний нөхцөл';

  @override
  String get privacyPolicy => 'Нууцлалын бодлого';

  @override
  String get subscriptionLegal =>
      'Захиалга таныг цуцлах хүртэл сар бүр автоматаар сунгагдана. Захиалснаар та Үйлчилгээний нөхцөл болон Нууцлалын бодлогыг хүлээн зөвшөөрнө.';

  @override
  String get deleteAccount => 'Бүртгэл устгах';

  @override
  String get deleteAccountTitle => 'Бүртгэлээ устгах уу?';

  @override
  String get deleteAccountBody =>
      'Таны бүртгэл болон манай сервер дээр хадгалагдсан бүх зүйл (имэйл, эрх, хэрэглээ) бүрмөсөн устах бөгөөд ашиглаагүй шинжилгээ алга болно. Хөтчөөр төлсөн захиалга шууд цуцлагдана; App Store эсвэл Google Play дэлгүүрээр хийсэн захиалгыг тухайн дэлгүүрийн тохиргооноос цуцлах шаардлагатай.';

  @override
  String get deleteLocalData =>
      'Энэ төхөөрөмж дээрх өгөгдлийг мөн устгах (портфолио, сэрэмжлүүлэг, дуртай, түүх, хадгалсан шинжилгээ)';

  @override
  String get deleteAccountConfirm => 'Бүрмөсөн устгах';

  @override
  String get accountDeleted => 'Таны бүртгэл устгагдлаа.';

  @override
  String get errDeleteAccount =>
      'Бүртгэлийг устгаж чадсангүй. Холболтоо шалгаад дахин оролдоно уу.';

  @override
  String get aiTrialBriefNote =>
      'Туршилтын шинжилгээ товч бөгөөд илүү хурдан AI загвараар хийгддэг. Багц авбал та манай хамгийн чадварлаг AI, илүү олон вэб хайлт болон Стандарт, Гүнзгий уртыг авна.';

  @override
  String get billingMonthly => 'Сараар';

  @override
  String get billingYearly => 'Жилээр';

  @override
  String get yearlyDiscount => '2 сар үнэгүй';

  @override
  String get perYear => '/ жил';

  @override
  String pricePerMonthApprox(String price) {
    return 'Сард ≈ $price';
  }

  @override
  String get subscriptionLegalYearly =>
      'Жилийн захиалга таныг цуцлах хүртэл жил бүр автоматаар сунгагдана. Захиалснаар та Үйлчилгээний нөхцөл болон Нууцлалын бодлогыг хүлээн зөвшөөрнө.';

  @override
  String get myAnalyses => 'Миний шинжилгээ';

  @override
  String get navAlerts => 'Сэрэмжлүүлэг';

  @override
  String get inviteTitle => 'Хаалттай урьдчилсан хувилбар';

  @override
  String get inviteBody =>
      'WhatStock одоогоор зөвхөн урилгаар ашиглах боломжтой. Хүлээн авсан урилгын кодоо оруулна уу.';

  @override
  String get inviteCodeLabel => 'Урилгын код';

  @override
  String get inviteContinue => 'Үргэлжлүүлэх';

  @override
  String get inviteInvalid => 'Энэ урилгын код хүчингүй байна.';

  @override
  String get inviteExpired =>
      'Энэ урилгын хугацаа дууссан байна. Таныг урьсан хүнээс шинэ код хүснэ үү.';

  @override
  String get inviteDeviceLimit =>
      'Энэ урилгын код аль хэдийн зөвшөөрөгдөх дээд тооны төхөөрөмж дээр ашиглагдаж байна.';

  @override
  String get previewConfidential => 'Нууц урьдчилсан хувилбар';

  @override
  String get errPreviewDailyLimit =>
      'Энэ урьдчилсан хувилбарын өнөөдрийн шинжилгээний хязгаар дууссан. Маргааш дахин оролдоно уу.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count цагийн өмнө',
      one: '1 цагийн өмнө',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count өдрийн өмнө',
      one: '1 өдрийн өмнө',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Энэ шинжилгээг шинэчлэх үү?';

  @override
  String staleBody(String age) {
    return 'Үүнийг $age гаргасан. Түүнээс хойш үнэ, мэдээ, үр дүн өөрчлөгдсөн байж болзошгүй.';
  }

  @override
  String get staleKeep => 'Өмнөхийг харуулах';

  @override
  String get staleRefresh => 'Шинээр гаргах';

  @override
  String seeAll(int count) {
    return 'Бүгдийг харах ($count)';
  }

  @override
  String get searchAnalyses => 'Шинжилгээнүүдээсээ хайх';

  @override
  String get deleteAnalysis => 'Устгах';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol шинжилгээг устгалаа';
  }

  @override
  String get keyLevelAlertHint =>
      'Үнэ тухайн түвшинд хүрэхэд сэрэмжлүүлэг авахын тулд түвшин дээр дарна уу.';

  @override
  String get shareAnalysisTitle => 'Шинжилгээг хуваалцах';

  @override
  String get shareAsImage => 'Зураг хэлбэрээр хуваалцах';

  @override
  String get shareAsText => 'Текст хэлбэрээр хуваалцах';

  @override
  String get shareCardFooter => 'WhatStock-оор бүтээв';

  @override
  String get shareCardDisclaimer =>
      'AI шинжилгээ · хөрөнгө оруулалтын зөвлөгөө биш';

  @override
  String get referralTitle => 'Найзаа урих';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count нэмэлт шинжилгээ',
      one: '1 нэмэлт шинжилгээ',
    );
    return 'Кодоо хуваалцаарай. Таны найз шууд $_temp0 авах бөгөөд түүнийг анхны шинжилгээгээ хийсний дараа та мөн адил хэмжээгээр авна.';
  }

  @override
  String get referralYourCode => 'Таны код';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Урьсан: $invited · Шагнал авсан: $rewarded';
  }

  @override
  String get referralHaveCode => 'Найзаасаа код авсан уу?';

  @override
  String get referralRedeem => 'Ашиглах';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count нэмэлт шинжилгээ нэмэгдлээ. Тавтай морил!',
      one: '1 нэмэлт шинжилгээ нэмэгдлээ. Тавтай морил!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Ийм код байхгүй байна. Шалгаад дахин оролдоно уу.';

  @override
  String get referralErrOwn => 'Та өөрийн кодыг ашиглах боломжгүй.';

  @override
  String get referralErrAlready =>
      'Та аль хэдийн найзынхаа кодыг ашигласан байна.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count нэмэлт шинжилгээ',
      one: '1 нэмэлт шинжилгээ',
    );
    return 'Би WhatStock-оор хувьцаа шинжилдэг: хувьцааны зургийг аваад, AI тайлбарлаж өгнө. Миний $code кодоор та $_temp0 авна.';
  }

  @override
  String get referralCopied => 'Код хуулагдлаа';

  @override
  String get onboardTitle1 => 'Хувьцааны зураг аваарай';

  @override
  String get onboardBody1 =>
      'Брокерын аппын дэлгэц, сонин эсвэл компанийн лого хангалттай: WhatStock хувьцааг таньж, үнэ, график болон гол үзүүлэлтүүдийг нь харуулна.';

  @override
  String get onboardTitle2 => 'Хэдхэн минутад ойлгоорой';

  @override
  String get onboardBody2 =>
      'AI шинжилгээ хувьцааг юу хөдөлгөж буйг, эрсдэл, үнэлгээ болон үнэ хаашаа явж болох гурван хувилбарыг эх сурвалжтайгаар, таны хэлээр тайлбарлана.';

  @override
  String get onboardTitle3 => 'Үргэлж мэдээлэлтэй байгаарай';

  @override
  String get onboardBody3 =>
      'Дуртай, таны портфолио болон үнийн сэрэмжлүүлэг танд цаг тухайд нь мэдэгдэнэ. Таны шинжилгээнүүд төхөөрөмж дээр тань хадгалагдаж, хүссэн үедээ дахин нээх боломжтой.';

  @override
  String get onboardNext => 'Дараах';

  @override
  String get onboardStart => 'Эхлэх';

  @override
  String get onboardSkip => 'Алгасах';

  @override
  String changesTitle(String date) {
    return 'Өмнөх шинжилгээнээс хойш ($date)';
  }

  @override
  String get changesPrice => 'Үнэ';

  @override
  String get changesNoMajor => 'Төлөв байдал төдийлөн өөрчлөгдөөгүй.';

  @override
  String get changesPreviousSummary => 'Өмнөх хураангуй';

  @override
  String get telemetryTitle => 'WhatStock-ийг сайжруулахад туслаарай';

  @override
  String get telemetryBody =>
      'Нэргүй хэрэглээний статистик болон алдааны тайлан хуваалцах: аль функцуудыг ашиглаж байгаа, юу буруу болсон. Таны хувьцаа, шинжилгээ, хувийн мэдээлэл хэзээ ч хуваалцагдахгүй. Үүнийг хүссэн үедээ Тохиргоо хэсэгт өөрчилж болно.';

  @override
  String get telemetryAllow => 'Зөвшөөрөх';

  @override
  String get telemetryDecline => 'Үгүй, баярлалаа';

  @override
  String get telemetrySetting => 'Нэргүй статистик ба алдааны тайлан';

  @override
  String get telemetrySettingHint =>
      'Функцуудыг хэр олон удаа ашигладаг болон алдааны мэдээлэл — хувийн мэдээлэл, таны хайлт, шинжилгээний агуулгагүйгээр.';

  @override
  String get askButton => 'Энэ шинжилгээний талаар асуух';

  @override
  String askTitle(String symbol) {
    return 'Асуултууд: $symbol';
  }

  @override
  String get askIntro =>
      'Шинжилгээний талаар юу ч асууж болно: эрсдэл юу гэсэн үг вэ, хэтийн төлөвийг юу өөрчилж болох вэ, тоог хэрхэн тооцоолсон бэ. Хариултууд энэ шинжилгээнд үндэслэсэн бөгөөд хөрөнгө оруулалтын зөвлөгөө биш юм.';

  @override
  String get askHint => 'Асуултаа бичнэ үү…';

  @override
  String get askSend => 'Илгээх';

  @override
  String get askThinking => 'Бодож байна…';

  @override
  String get askSuggest1 => 'Хамгийн том эрсдэл юу вэ?';

  @override
  String get askSuggest2 => 'Хэтийн төлөвийг юу өөрчилж болох вэ?';

  @override
  String get askSuggest3 => 'Энгийнээр тайлбарлаж өгөөч';

  @override
  String get askMaxReached =>
      'Энэ шинжилгээний сүүлийн асуулт байлаа. Дахин асуухын тулд шинэ шинжилгээ гаргана уу.';

  @override
  String get errAskLimit =>
      'Өнөөдрийн асуултын хязгаар дууслаа. Маргааш дахин оролдоно уу.';

  @override
  String get eventTomorrow => 'Маргааш';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days өдрийн дараа',
      one: '1 өдрийн дараа',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Улирлын тайлан';

  @override
  String get eventBeforeOpen => 'арилжаа нээгдэхээс өмнө';

  @override
  String get eventAfterClose => 'арилжаа хаагдсаны дараа';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS-ийн таамаг: $value';
  }

  @override
  String get eventFromAnalysis => 'Таны шинжилгээнээс';

  @override
  String get eventsHint =>
      'Дуртай болон портфолио дахь хувьцаануудын ойрын 90 хоногийн тайлангийн огноо, мөн таны шинжилгээнд тэмдэглэгдсэн огноотой үйл явдлууд.';

  @override
  String get eventsEmpty =>
      'Ойрын 90 хоногт огноотой үйл явдал алга. Тайлангийн огноог энд харахын тулд дуртай эсвэл портфолиодоо хувьцаа нэмнэ үү.';

  @override
  String get compareTitle => 'Харьцуулах';

  @override
  String get compareAdd => 'Хувьцаа нэмэх';

  @override
  String get compareRemove => 'Хасах';

  @override
  String get compareTickerHint => 'Тикер, жишээ нь MSFT';

  @override
  String get compareHint =>
      'Гол үзүүлэлтүүд зэрэгцээ; мөр бүрийн хамгийн сайн утгыг тодруулсан. Дүнгүүд нь хувьцаа тус бүрийн өөрийн валютаар байна.';

  @override
  String get compareNoAnalysis => 'Шинжилгээ хараахан алга';

  @override
  String get portfolioDividends => 'Жилийн ногдол ашиг';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent өгөөж';
  }

  @override
  String get portfolioDividendNote =>
      'Хүлээгдэж буй жилийн ногдол ашгийг сүүлийн 12 сард төлсөн ногдол ашигт үндэслэн тооцсон; ирээдүйн төлбөр баталгаатай биш.';

  @override
  String positionDividend(String amount) {
    return 'Ногдол ашиг: жилд $amount';
  }

  @override
  String get chartAvgCost => 'Таны дундаж';

  @override
  String get chartAlertLevel => 'Сэрэмжлүүлэг';

  @override
  String get marketsToday => 'Өнөөдрийн зах зээл';

  @override
  String get notesTitle => 'Миний тэмдэглэл';

  @override
  String get notesHint =>
      'Яагаад худалдаж авсан бэ, юуг ажиглаж байна вэ, юу болвол зарах вэ?';

  @override
  String get notesInfo =>
      'Зөвхөн энэ төхөөрөмжид хадгалагдана. AI шинжилгээ таны тэмдэглэлийг харгалзан үзнэ.';

  @override
  String notesSaved(String date) {
    return 'Хадгалсан: $date';
  }

  @override
  String get peersTitle => 'Төстэй компаниуд';

  @override
  String get portfolioExport => 'CSV болгон экспортлох';

  @override
  String get portfolioImport => 'CSV-ээс импортлох';

  @override
  String get portfolioImportHint =>
      'Мөр бүрт нэг худалдан авалт буулгана уу: тикер, тоо ширхэг, үнэ, валют, огноо (ЖЖЖЖ-СС-ӨӨ). Баганыг таслал, цэгтэй таслал эсвэл табаар тусгаарлаж болно; гарчгийн мөр заавал биш.';

  @override
  String get portfolioImportButton => 'Импортлох';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count худалдан авалт нэмэгдлээ',
      one: '1 худалдан авалт нэмэгдлээ',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count мөр алгаслаа',
      one: '1 мөр алгаслаа',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Портфолио, дуртай, үнийн сэрэмжлүүлэг болон тэмдэглэл таны бүх төхөөрөмж дээр синк хийгддэг.';

  @override
  String syncLast(String time) {
    return 'Сүүлд синк хийсэн: $time';
  }

  @override
  String get syncNow => 'Одоо синк хийх';

  @override
  String get syncFailed => 'Синк хийж чадсангүй. Автоматаар дахин оролдоно.';

  @override
  String get alertEmailTitle => 'Сэрэмжлүүлэг идэвхжихэд имэйл';

  @override
  String get alertEmailOn =>
      'Бид таны сэрэмжлүүлгийг хэдэн минут тутамд шалгаж, апп хаалттай байсан ч танд имэйл илгээнэ.';

  @override
  String get alertEmailSignIn =>
      'Апп хаалттай байсан ч сэрэмжлүүлгийг имэйлээр авахын тулд Тохиргоонд имэйлээрээ нэвтэрнэ үү.';

  @override
  String get portfolioHistory => 'Үнэ цэнийн өөрчлөлт';
}
