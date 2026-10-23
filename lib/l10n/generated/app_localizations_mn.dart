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
  String get labelYieldOnCost => 'Өртөг дээрх өгөөж';

  @override
  String get labelDividendGrowth5y => 'Ногдол ашгийн өсөлт (5 жил)';

  @override
  String get dividendNone => 'Сүүлийн 12 сард ногдол ашиг олгоогүй.';

  @override
  String get dividendOnYourShares => 'Таны хувьцаанд, жилд';

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
      'Энэ төхөөрөмжид, нэвтэрсэн бол таны бүртгэлд хадгалагдана. Нийт дүнг Европын Төв Банкны лавлах ханшаар хөрвүүлнэ; үнэ хоцрогдсон байж болно.';

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
  String homeDividendsThisYear(String amount) {
    return 'Энэ жилийн ногдол ашиг: $amount';
  }

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
  String get eventDividend => 'Ногдол ашиг хүлээгдэж байна';

  @override
  String get eventDividendEstimate => 'Таны бүртгэсэн төлбөрүүдээс тооцоолсон';

  @override
  String get eventsHint =>
      'Дуртай болон портфолио дахь хувьцаануудын ойрын 90 хоногийн тайлангийн огноо, таны шинжилгээнд тэмдэглэгдсэн огноотой үйл явдлууд, мөн таны бүртгэсэн төлбөрүүдээс хүлээгдэж буй ногдол ашиг.';

  @override
  String get eventsEmpty =>
      'Ойрын 90 хоногт огноотой үйл явдал алга. Тайлангийн огноог энд харахын тулд дуртай эсвэл портфолиодоо хувьцаа нэмнэ үү; бүртгэсэн ногдол ашиг нь дараагийн хүлээгдэж буй төлбөрийг харуулна.';

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
      'Энэ төхөөрөмжид, нэвтэрсэн бол таны бүртгэлд хадгалагдана. AI шинжилгээ таны тэмдэглэлийг харгалзан үзнэ.';

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
      other: '$count гүйлгээ нэмэгдлээ',
      one: '1 гүйлгээ нэмэгдлээ',
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

  @override
  String get portfolioReviewTitle => 'Портфолиогийн AI шинжилгээ';

  @override
  String get portfolioReviewIntro =>
      'AI таны портфолиог бүхэлд нь хянана: төвлөрөл, салбар болон валютын эрсдэл, таны хувьцаануудын нийтлэг эрсдэл, ногдол ашиг. 1 шинжилгээ зарцуулна.';

  @override
  String get portfolioReviewButton => 'Миний портфолиог шинжлэх';

  @override
  String get portfolioReviewAgain => 'Дахин шинжлэх';

  @override
  String get portfolioReviewWorking => 'Таны портфолиог шинжилж байна…';

  @override
  String get digestTitle => 'Имэйлээр долоо хоногийн тойм';

  @override
  String get digestHint =>
      'Даваа гараг бүр: таны дуртай хувьцаа болон портфолио өнгөрсөн долоо хоногт хэрхэн хөдөлсөн, мөн удахгүй гарах тайлангийн огноо.';

  @override
  String get benchmarkTitle => 'S&P 500-тай харьцуулахад';

  @override
  String get benchmarkTitleIndex => 'Индекстэй харьцуулахад';

  @override
  String get benchmarkHintIndex =>
      'Таны худалдан авалт бүрийг тухайн өдөрт нь сонгосон индексийг дагадаг санд хийсэн мэт. Ногдол ашиг ороогүй; өнгөрсөн өгөөж ирээдүйн өгөөжийг таамаглахгүй.';

  @override
  String get benchmarkYours => 'Таны худалдан авалт';

  @override
  String benchmarkAhead(String points) {
    return 'Индексээс $points хувийн пунктээр илүү';
  }

  @override
  String benchmarkBehind(String points) {
    return 'Индексээс $points хувийн пунктээр хоцорсон';
  }

  @override
  String get portfolioSell => 'Зарах';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbol зарах';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Нэгж хувьцааны зарсан үнэ ($currency)';
  }

  @override
  String get portfolioSellDate => 'Зарсан огноо';

  @override
  String get portfolioSellAll => 'Бүгд';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Танд $quantity байна';
  }

  @override
  String get portfolioSold => 'Зарсан';

  @override
  String get portfolioRealized => 'Бодит';

  @override
  String get portfolioClosed => 'Хаагдсан эзэмшил';

  @override
  String get portfolioClosedNote => 'Бүх хувьцааг зарсан';

  @override
  String get portfolioTransactions => 'Гүйлгээ';

  @override
  String get portfolioRealizedByYear => 'Жилээр бодит ашиг';

  @override
  String get portfolioRealizedHint =>
      'Борлуулалтыг эхлээд таны хамгийн эртний худалдан авалттай тулгана (FIFO), өнөөдрийн ханшаар хөрвүүлнэ. Татварын тайландаа брокерийнхоо хуулгыг ашиглана уу.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Энэ шинжилгээнээс хойш улирлын шинэ тайлан гарсан ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Шинэ тайлан';

  @override
  String get portfolioImportBrokers =>
      'Revolut, Trading 212, Interactive Brokers, DEGIRO, Schwab, Fidelity, Robinhood-ийн экспортыг мөн борлуулалт болон ногдол ашгийн (эх үүсвэрт суутгасан татварыг хассан) хамт танина; орлогыг алгасна.';

  @override
  String get portfolioImportFile => 'Файл сонгох';

  @override
  String offlineBanner(String time) {
    return 'Холболт алга – хамгийн сүүлд хадгалсан өгөгдлийг харуулж байна ($time).';
  }

  @override
  String get glossMarketCap =>
      'Компани бүхэлдээ хөрөнгийн зах дээр хэдий үнэтэй вэ: хувьцааны үнэ × хувьцааны тоо.';

  @override
  String get glossSharesOutstanding =>
      'Компани хэдэн хувьцаа гаргасан бэ. Энэ тоо өсвөл хувьцаа бүрт ногдох хэсэг багасна; хувьцаагаа буцаан худалдан авах нь үүнийг бууруулна.';

  @override
  String get glossPeTrailing =>
      'Үнэ ÷ сүүлийн 12 сарын нэгж хувьцаанд ногдох ашиг: одоогийн ашгийн хэдэн жилийнхийг төлж байгааг харуулна. Бага нь хямд, гэхдээ хурдан өсөж буй компаниудын P/E ихэвчлэн өндөр байдаг.';

  @override
  String get glossPeForward =>
      'P/E-тэй адил, гэхдээ шинжээчдийн дараагийн 12 сард хүлээж буй ашгаар тооцно. Өнгөрсөн P/E-ээс бага бол ашиг өснө гэж хүлээж байна гэсэн үг.';

  @override
  String get glossPb =>
      'Үнэ ÷ нэгж хувьцаанд ногдох дансны үнэ (хөрөнгөөс өрийг хассан). 1 орчим бол зах зээл компанийг цаасан дээр эзэмшиж буй хэмжээгээр нь үнэлж байна.';

  @override
  String get glossPs =>
      'Зах зээлийн үнэ цэнэ ÷ жилийн орлого. Ашиг бага эсвэл огт байхгүй компанид хэрэгтэй; нэг салбар дотор харьцуулаарай.';

  @override
  String get glossEvToFcf =>
      'Өрийг оруулсан компанийн үнэ цэнэ (EV) ÷ хөрөнгө оруулалтын дараа жилд бий болгох мөнгө. Бага байх тусам төлсөн үнэдээ илүү их мөнгө авна.';

  @override
  String get glossPeg =>
      'P/E ÷ хүлээгдэж буй жилийн ашгийн өсөлт (%). 1 орчмыг ихэвчлэн шударга гэж үздэг; P/E-г өсөлттэй нь харьцуулж харуулна.';

  @override
  String get glossEps =>
      'Сүүлийн 12 сарын нэгж хувьцаанд ногдох ашиг. Жил ирэх тусам өсөх EPS бол эрүүл компанийн хамгийн хүчтэй шинжүүдийн нэг.';

  @override
  String get glossBeta =>
      'Хувьцаа зах зээлтэй хэр зэрэг хамт хөдөлдөг вэ: 1 = зах зээлтэй адил, 1,5 = ойролцоогоор 50% илүү хэлбэлзэлтэй, 1-ээс бага = тайван.';

  @override
  String get glossRevenueTtm =>
      'Сүүлийн 12 сарын нийт борлуулалт, ямар ч зардал хасахаас өмнө.';

  @override
  String get glossNetIncomeTtm =>
      'Сүүлийн 12 сард бүх зардал, хүү, татварын дараа үлдсэн ашиг.';

  @override
  String get glossGrossMargin =>
      'Бүтээгдэхүүний шууд зардлын дараа орлогын хэдэн хувь үлддэг вэ. Өндөр маржин ихэвчлэн үнээ тогтоох чадварыг илтгэнэ.';

  @override
  String get glossOperatingMargin =>
      'Бизнесээ явуулах зардлын (цалин, түрээс, маркетинг) дараа, хүү ба татвараас өмнө орлогын хэдэн хувь үлддэг вэ.';

  @override
  String get glossNetMargin =>
      'Орлогын хэдэн хувь эцсийн ашиг болдог вэ. 20% гэдэг нь борлуулалтын 100 тутмаас 20 нь ашиг гэсэн үг.';

  @override
  String get glossRoe =>
      'Өөрийн хөрөнгийн өгөөж: жилийн ашиг ÷ эздийн хөрөнгө. Удирдлага хувьцаа эзэмшигчдийн мөнгийг хэр сайн ашиглаж буйг харуулна; ойролцоогоор 15%-иас дээш бол сайн.';

  @override
  String get glossRoa =>
      'Нийт хөрөнгийн өгөөж: жилийн ашиг ÷ компанийн эзэмшдэг бүх хөрөнгө. Нэг салбар дотор харьцуулаарай.';

  @override
  String get glossDebtToEquity =>
      'Өр ÷ эздийн хөрөнгө. Өндөр байх нь зээлсэн мөнгө их гэсэн үг: хүү өсөх эсвэл бизнес удаашрахад эрсдэл их.';

  @override
  String get glossCurrentRatio =>
      'Богино хугацаат хөрөнгө ÷ нэг жилийн дотор төлөх өглөг. 1-ээс дээш бол компани ойрын өглөгөө төлж чадна.';

  @override
  String get glossRevenueGrowth =>
      'Нэг жилийн өмнөхөөс орлого хэр их өссөн бэ.';

  @override
  String get glossEpsGrowth =>
      'Нэг жилийн өмнөхөөс нэгж хувьцаанд ногдох ашиг хэр их өссөн бэ.';

  @override
  String get glossDividendYield =>
      'Жилийн ногдол ашиг ÷ хувьцааны үнэ: төлсөн мөнгөнийхөө хувиар жилд авах мөнгөн орлого.';

  @override
  String get glossDividendPerShare =>
      'Өнгөрсөн жилд нэг хувьцаанд олгосон ногдол ашиг.';

  @override
  String get glossPayoutRatio =>
      'Ашгийн хэдэн хувийг ногдол ашиг болгон хуваарилдаг вэ. 100%-иас дээш бол компани олсноосоо их төлж байгаа бөгөөд энэ нь ховорхон удаан үргэлжилдэг.';

  @override
  String get portfolioBeta => 'Портфолионы бета';

  @override
  String get glossPortfolioBeta =>
      'Таны хувьцаануудын үнэ цэнээр жигнэсэн бета: зах зээл 1%-иар хөдлөхөд таны хувьцаа ойролцоогоор хэдэн хувиар хөдөлдгийг харуулна. 1-ээс дээш бол зах зээлээс илүү хэлбэлзэнэ, 1-ээс доош бол бага. Бэлэн мөнгийг тооцохгүй.';

  @override
  String get portfolioTop3 => 'Хамгийн том 3 эзэмшил';

  @override
  String get glossPortfolioTop3 =>
      'Таны хувьцаануудын үнэ цэнийн хэдэн хувь нь хамгийн том гурван эзэмшилд ногдож байгааг харуулна. Энэ нь өндөр байх тусам нэг компанийн муу мэдээ бүх портфолиод илүү их хохирол учруулж болно.';

  @override
  String get glossDividendGrowth5y =>
      'Сүүлийн таван жилд нэгж хувьцаанд ногдох ногдол ашиг жилд дунджаар хэр өссөн бэ. Тогтвортой өсөлт нь ихэвчлэн компани мөнгөн урсгалдаа итгэлтэй байгааг илтгэнэ; бууруулах нь ихэнхдээ анхааруулах дохио болдог.';

  @override
  String get glossYieldOnCost =>
      'Сүүлийн 12 сард хүлээн авсан ногдол ашгийг та одоо эзэмшиж байгаа хувьцаанд төлсөн мөнгөнд хуваасан дүн. Ногдол ашгийн өгөөжөөс ялгаатай нь өнөөдрийн үнээр бус, таны өөрийн худалдан авсан үнээр хэмжигддэг.';

  @override
  String get glossTitle => 'Энэ юу гэсэн үг вэ?';

  @override
  String get watchNewsTitle => 'Таны хувьцааны мэдээ';

  @override
  String get undo => 'Буцаах';

  @override
  String get watchSort => 'Эрэмбэлэх';

  @override
  String get watchSortOwn => 'Миний дараалал';

  @override
  String get watchSortGainers => 'Хамгийн их өссөн нь эхэнд';

  @override
  String get watchSortLosers => 'Хамгийн их унасан нь эхэнд';

  @override
  String get watchSortName => 'Тикерээр (A–Z)';

  @override
  String get watchHint =>
      'Дарааллыг өөрчлөхийн тулд бариулыг чирж, хасахын тулд зүүн тийш шударна уу. Шугам сүүлийн 30 хоногийг харуулна.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: таны шинжилгээ бэлэн боллоо.';
  }

  @override
  String alertFromCost(String price) {
    return 'Таны дундаж худалдан авсан үнээс ($price):';
  }

  @override
  String get briefTitle => 'Өнөөдөр таны хувьцаатай';

  @override
  String get briefButton => 'Өнөөдрийг дүгнэх';

  @override
  String get briefHint =>
      'Таны багц болон дуртай хувьцаанууд өнөөдөр хэрхэн хөдөлсөн, сүүлийн мэдээ тэдний талаар юу хэлж байгааг AI товч дүгнэнэ. Шинжилгээ зарцуулахгүй.';

  @override
  String get briefRefresh => 'Шинэчлэх';

  @override
  String get sectionEarnings => 'Улирлын тайлан';

  @override
  String earningsNext(String date) {
    return 'Дараагийн тайлан: $date';
  }

  @override
  String get earningsExpected => 'Хүлээгдэж буй EPS';

  @override
  String get earningsReported => 'Тайлагнасан EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Сүүлийн $total улирлаас $beats-д нь хүлээгдэж буй EPS-тэй тэнцүү буюу давсан',
      one: '1 улирлаас $beats-д нь хүлээгдэж буй EPS-тэй тэнцүү буюу давсан',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol маргааш улирлын тайлангаа танилцуулна';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol өнөөдөр улирлын тайлангаа танилцуулна';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return '$symbol өнөөдөр ногдол ашиг олгох төлөвтэй';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Ойролцоогоор $amount. Орж ирмэгц багцдаа бүртгээрэй.';
  }

  @override
  String get dividendRemindersTitle => 'Ногдол ашгийн сануулга';

  @override
  String get dividendRemindersSubtitle =>
      'Таны бүртгэсэн төлбөрүүдийн давтамжаар ногдол ашиг хүлээгдэж буй өдөр мэдэгдэл ирнэ, ингэснээр та үүнийг бүртгэж болно';

  @override
  String get earningsRemindersTitle => 'Тайлангийн сануулга';

  @override
  String get earningsRemindersSubtitle =>
      'Дуртай болон багцын тань хувьцаа улирлын тайлангаа гаргахаас өмнөх өдөр мэдэгдэл ирнэ';

  @override
  String addAllToFavorites(int count) {
    return 'Бүгдийг дуртайд нэмэх ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Дэлгэцийн зургаас импортлох';

  @override
  String get holdingsReading => 'Таны эзэмшлийг уншиж байна…';

  @override
  String get holdingsReviewTitle => 'Олдсон эзэмшил';

  @override
  String get holdingsReviewHint =>
      'Нэмэхээсээ өмнө тоонуудыг шалгаарай. Үнэ нь өнөөдрийн үнэ биш, нэг хувьцааны таны дундаж худалдан авалтын үнэ юм.';

  @override
  String get holdingsNoPrice => 'Зурган дээр дундаж худалдан авалтын үнэ алга';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count эзэмшил нэмэх',
      one: '1 эзэмшил нэмэх',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Энэ зурган дээр хувьцааны эзэмшил олдсонгүй. Брокерийнхаа позиц эсвэл эзэмшлийн хуудасны дэлгэцийн зургийг оролдоод үзээрэй.';

  @override
  String get week52Range => '52 долоо хоногийн хүрээ';

  @override
  String week52BelowHigh(String percent) {
    return '52 долоо хоногийн дээдээс $percent доогуур';
  }

  @override
  String get week52AtHigh => '52 долоо хоногийн дээд түвшинд';

  @override
  String get alertKindTrailing => 'Оргилоос унавал';

  @override
  String get alertTrailingPercent => 'Оргилоос унах (%)';

  @override
  String get alertTrailingHint =>
      'Үнийг дээш дагана: тохируулснаас хойших хамгийн өндөр түвшнээсээ үнэ ийм хэмжээгээр унавал мэдэгдэнэ.';

  @override
  String alertDescTrailing(String percent) {
    return 'Оргилоос $percent уналт';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'өнөөг хүртэлх оргил: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol оргилоосоо $percent унлаа';
  }

  @override
  String get sectionInsiders => 'Дотоод этгээдийн арилжаа';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count худалдан авалт',
      one: '1 худалдан авалт',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count борлуулалт',
      one: '1 борлуулалт',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Цэвэр: $shares хувьцаа';
  }

  @override
  String get insiderBuy => 'Авсан';

  @override
  String get insiderSell => 'Зарсан';

  @override
  String get insiderHint =>
      'Сүүлийн 90 хоногт удирдах албан тушаалтан болон ТУЗ-ийн гишүүдийн нээлттэй зах зээл дээр хийсэн худалдан авалт, борлуулалт (SEC Form 4). Опцион хэрэгжүүлэлт болон хувьцааны шагналыг тооцохгүй.';

  @override
  String get insiderNone =>
      'Сүүлийн 90 хоногт дотоод этгээдийн нээлттэй зах зээл дээрх худалдан авалт, борлуулалт байхгүй.';

  @override
  String get analystTrend => 'Санал бодол сар бүр хэрхэн өөрчлөгдсөн';

  @override
  String get watchListAll => 'Бүгд';

  @override
  String get watchListNew => 'Шинэ жагсаалт';

  @override
  String get watchListName => 'Жагсаалтын нэр';

  @override
  String get watchListRename => 'Жагсаалтын нэрийг өөрчлөх';

  @override
  String get watchListDelete => 'Жагсаалт устгах';

  @override
  String get watchListAddTo => 'Жагсаалтад нэмэх';

  @override
  String get watchListEmpty =>
      'Энэ жагсаалтад одоогоор хувьцаа алга. Нэмэхийн тулд хувьцааны хажууд байгаа жагсаалтын товчийг дарна уу.';

  @override
  String get portfolioAskTitle => 'Таны портфолиогийн талаарх асуултууд';

  @override
  String get rangeYtd => 'Энэ жил';

  @override
  String get backupTitle => 'Нөөцлөлт';

  @override
  String get backupSave => 'Нөөц хадгалах';

  @override
  String get backupSaveHint =>
      'Таны дуртай, жагсаалт, портфолио, сэрэмжлүүлэг, тэмдэглэл нэг файлд.';

  @override
  String get backupRestore => 'Нөөцөөс сэргээх';

  @override
  String get backupRestoreHint =>
      'Файлд байгааг нэмнэ; одоо байгаа зүйлсээс юу ч устахгүй.';

  @override
  String get backupRestored => 'Нөөцийг сэргээлээ.';

  @override
  String get backupInvalid => 'Энэ файл WhatStock-ийн нөөц биш байна.';

  @override
  String get allocationPositions => 'Хувьцаа';

  @override
  String get allocationSectors => 'Салбар';

  @override
  String get allocationCurrencies => 'Валют';

  @override
  String get allocationAccounts => 'Данс';

  @override
  String get compareReturn1y => '1 жилийн өгөөж';

  @override
  String get compareFromHigh => '52 долоо хоногийн дээдээс зай';

  @override
  String get briefAutoTitle => 'Өглөө бүр өдрийн тойм';

  @override
  String get briefAutoSubtitle =>
      '«Өнөөдөр таны хувьцаатай» нь апп ажиллаж байх үед 7:00 цагаас хойш автоматаар бэлтгэгдэнэ; компьютер дээр мэдэгдлээр танд мэдэгдэнэ. Өдрийн асуултын хязгаараас тань зарцуулна, шинжилгээ биш.';

  @override
  String get targetsButton => 'Зорилтот хуваарилалт';

  @override
  String get targetsTitle => 'Зорилтот хуваарилалт';

  @override
  String get targetsHint =>
      'Хувьцаа бүр багцын хэдэн хувийг эзлэх ёстойг тохируулна уу. Зорилт байхгүй бол талбарыг хоосон үлдээнэ үү. Дараа нь апп юу худалдан авах эсвэл зарахыг харуулна.';

  @override
  String targetsSum(String percent) {
    return 'Нийт: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Авах ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Зарах ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Зорилтод хүрсэн';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol хүлээгдэж буй EPS-ээс давлаа';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol хүлээгдэж буй EPS-д хүрсэнгүй';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'Тайлагнасан EPS $actual, хүлээгдэж буй $estimate';
  }

  @override
  String get newsExplain => 'Энэ юу гэсэн үг вэ?';

  @override
  String get watchAlertAll => 'Өдрийн их хөдөлгөөний сэрэмжлүүлэг';

  @override
  String get watchAlertAllHint =>
      'Энэ жагсаалтын хувьцаа бүрт үнийн сэрэмжлүүлэг: нэг өдөрт ийм хэмжээгээр өсөх эсвэл буурахад мэдэгдэнэ. Аль хэдийн сэрэмжлүүлэгтэй хувьцаанууд өөрийнхөө хэвээр үлдэнэ.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сэрэмжлүүлэг тохирууллаа',
      one: '1 сэрэмжлүүлэг тохирууллаа',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Хэрэгжсэн ашгийг экспортлох (CSV)';

  @override
  String get portfolioAnnualReturn => 'Жилийн өгөөж';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / жил';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Мөнгөн урсгалаар жигнэсэн жилийн өгөөж (XIRR): та хэзээ худалдан авч, зарсныг тооцдог тул хожим нэмсэн мөнгө үүнийг гажуудуулахгүй. Таны анхны худалдан авалт дор хаяж нэг жил болсон үед харагдана; ногдол ашиг орохгүй.';

  @override
  String get eventsAddToCalendar => 'Хуанлид нэмэх (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Багцын мэдэгдэл';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Таны багц бүхэлдээ нэг өдөрт ийм хэмжээгээр хөдлөхөд мэдэгдэл ирнэ.';

  @override
  String get portfolioMoveAlertOff => 'Унтраастай';

  @override
  String portfolioMoveUp(String percent) {
    return 'Таны багц өнөөдөр $percent өслөө';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Таны багц өнөөдөр $percent буурлаа';
  }

  @override
  String get whatIfTitle => 'Хэрэв та хөрөнгө оруулсан бол?';

  @override
  String get whatIfAmount => 'Дүн';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount хөрөнгө оруулалт (хугацаа: $period) өнөөдөр ийм үнэтэй байх байсан';
  }

  @override
  String get whatIfNote =>
      'Зөвхөн хувьцааны үнэд үндэслэсэн: ногдол ашиг, шимтгэл, татвар ороогүй. Өнгөрсөн өгөөж ирээдүйн өгөөжийг таамаглахгүй.';

  @override
  String get watchShare => 'Жагсаалтыг хуваалцах';

  @override
  String get watchImport => 'Тикер нэмэх';

  @override
  String get watchImportHint =>
      'Тикерүүдийг таслал, хоосон зай эсвэл шинэ мөрөөр тусгаарлан буулгана уу – жишээ нь хэн нэгний тантай хуваалцсан жагсаалт.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count хувьцаа нэмэгдлээ',
      one: '1 хувьцаа нэмэгдлээ',
      zero: 'Шинэ хувьцаа алга',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Хамгийн том нь эхэнд';

  @override
  String get positionsSortGain => 'Нийт өгөөж өндөр нь эхэнд';

  @override
  String get positionsSortToday => 'Өнөөдрийн шилдэг нь эхэнд';

  @override
  String get chartMyBuys => 'Таны худалдан авалт';

  @override
  String get chartMySells => 'Таны борлуулалт';

  @override
  String get shortcutsTitle => 'Гарын товчлол';

  @override
  String usMarketOpen(String time) {
    return 'АНУ-ын зах зээл нээлттэй · хаагдах хүртэл $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'АНУ-ын зах зээл хаалттай · нээгдэх хүртэл $time';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes мин';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours ц $minutes мин';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days хоног $hours ц';
  }

  @override
  String get dividendGoalSet => 'Сарын ногдол ашгийн зорилт тавих';

  @override
  String get dividendGoalTitle => 'Сарын ногдол ашгийн зорилт';

  @override
  String get dividendGoalAmount => 'Сарын ногдол ашиг';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Өнөөгийн өгөөжөөр сард ойролцоогоор $amount · $percent · зорилт: $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Өнөөгийн өгөөжөөр сард ойролцоогоор $amount · Зорилт биелсэн: $goal';
  }

  @override
  String get portfolioAccount => 'Данс';

  @override
  String get portfolioAccountHint => 'ж.нь TBSZ 2026 (заавал биш)';

  @override
  String get portfolioAccountAdd => 'Данс заах';

  @override
  String get portfolioAccountsAll => 'Бүх данс';

  @override
  String get portfolioAccountNote =>
      'Зөвхөн энэ дансны гүйлгээ ба ногдол ашиг. Бэлэн мөнгө, зорилт болон AI шинжилгээг «Бүх данс» хэсэгт харуулна.';

  @override
  String get portfolioNoAccount => 'Дансгүй';

  @override
  String portfolioFee(String currency) {
    return 'Шимтгэл ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Шимтгэл нэмэх';

  @override
  String portfolioFeeRow(String amount) {
    return 'Шимтгэл: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'Жилийн хураангуй';

  @override
  String get portfolioProceeds => 'Борлуулалтын орлого';

  @override
  String get portfolioCostBasis => 'Худалдан авалтын өртөг';

  @override
  String get portfolioFeesPaid => 'Төлсөн шимтгэл';

  @override
  String get portfolioAnnualSummaryNote =>
      'Дүнгүүд анхны валютаар, хөрвүүлээгүй. Борлуулалтын орлогоос зарах үеийн шимтгэлийг хассан; худалдан авалтын өртөгт авах үеийн шимтгэл багтсан (FIFO). Татварын тайландаа татварын байгууллагын шаардсан ханшаар хөрвүүлнэ үү.';

  @override
  String get portfolioShare => 'Гүйцэтгэлээ хуваалцах';

  @override
  String get portfolioShareHeading => 'Миний портфолио';

  @override
  String get portfolioTopHoldings => 'Хамгийн том эзэмшлүүд';

  @override
  String get portfolioShareNote =>
      'Зөвхөн хувийг хуваалцах бөгөөд дүнг харуулахгүй.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count эзэмшил',
      one: '$count эзэмшил',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'Хөрөнгө оруулалтын зөвлөгөө биш';

  @override
  String get contributionButton => 'Шинэ мөнгө оруулах';

  @override
  String contributionAmount(String currency) {
    return 'Оруулах дүн ($currency)';
  }

  @override
  String get contributionHint =>
      'Зөвхөн худалдан авна, зарахгүй: зорилтоосоо хамгийн их хоцорсон эзэмшилд мөнгө эхэлж очно.';

  @override
  String contributionShares(String shares) {
    return '≈ $shares хувьцаа';
  }

  @override
  String contributionMissing(String symbols) {
    return '$symbols-д одоогийн үнэ байхгүй: хуваарилалтад оруулаагүй.';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'Жилийн өгөөж ийм хэвээр байвал ($rate), та зорилтоо ойролцоогоор $year онд биелүүлнэ.';
  }

  @override
  String get portfolioMaxDrawdown => 'Хамгийн их уналт';

  @override
  String get glossMaxDrawdown =>
      'Таны хувьцаануудын үнэ цэнийн өмнөх оргилоос дараагийн хамгийн доод цэг хүртэлх хамгийн их уналт, таны худалдан авалт, борлуулалтын нөлөөгүйгээр (хугацаагаар жигнэсэн). Таны портфолио өнөөг хүртэл хэр гүн уналтыг туулсныг харуулна.';

  @override
  String watchSince(String date) {
    return 'Дуртайд нэмснээс хойш ($date)';
  }

  @override
  String get portfolioSampleTry => 'Жишээ портфолиогоор туршиж үзэх';

  @override
  String get portfolioSampleBanner =>
      'Энэ бол жишээ портфолио. Та хажууд нь өөрийн худалдан авалтаа нэмэх эсвэл үүнийг хасах боломжтой.';

  @override
  String get portfolioSampleRemove => 'Жишээг хасах';

  @override
  String get portfolioStopsAll => 'Бүх эзэмшилд оргилоос унах сэрэмжлүүлэг';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сэрэмжлүүлэг тохирууллаа',
      one: '1 сэрэмжлүүлэг тохирууллаа',
      zero: 'Бүх эзэмшилд энэ сэрэмжлүүлэг аль хэдийн байна',
    );
    return '$_temp0';
  }

  @override
  String portfolioSinceSale(String percent) {
    return '$percent зарснаас хойш';
  }

  @override
  String get lotPreviewRealized => 'Энэ борлуулалтын бодит үр дүн (FIFO):';

  @override
  String lotPreviewAverage(String after, String before) {
    return 'Шинэ дундаж өртөг: $after (одоо $before)';
  }

  @override
  String get portfolioYtdReturn => 'Энэ жилийн өгөөж';

  @override
  String get glossTwrYtd =>
      'Оны эхнээс (эсвэл анхны худалдан авалт тань энэ жил байсан бол түүнээс хойш) хугацаагаар жигнэсэн өгөөж: өдөр бүр тухайн өдөр танд байсан хувьцаануудын өөрчлөлтийг тооцож, өдрүүдийг хооронд нь гинжлэн холбоно – таны оруулсан эсвэл гаргасан мөнгө өгөөж биш тул үүнийг индекстэй харьцуулж болно. Доор нь: ижил хугацааны сонгосон индекс.';

  @override
  String alertDistance(String price, String percent) {
    return 'Одоо $price · $percent үлдсэн';
  }

  @override
  String get watchSortSince => 'Нэмснээс хойших өөрчлөлтөөр';

  @override
  String get portfolioTodayMovers => 'Өнөөдөр хамгийн их хөдөлсөн:';

  @override
  String get lotNoteAdd => 'Тэмдэглэл нэмэх';

  @override
  String get lotNoteBuyHint =>
      'Яагаад худалдаж авч байна вэ? Огноотойгоо хамт хувьцааны тэмдэглэлд нэмэгдэнэ.';

  @override
  String get lotNoteSellHint =>
      'Яагаад зарж байна вэ? Огноотойгоо хамт хувьцааны тэмдэглэлд нэмэгдэнэ.';

  @override
  String get lotNoteBought => 'Авсан';

  @override
  String get positionHeld => 'Эзэмшсэн хугацаа';

  @override
  String durationMonths(int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months сар',
      one: '$months сар',
    );
    return '$_temp0';
  }

  @override
  String durationDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days өдөр',
      one: '$days өдөр',
    );
    return '$_temp0';
  }

  @override
  String positionHeldSince(String date) {
    return '$date өдрөөс хойш';
  }

  @override
  String lotPreviewWeight(String after, String before) {
    return 'Дараа нь багц дахь эзлэх хувь: $after (одоо $before)';
  }

  @override
  String lotFromCash(String amount) {
    return 'Бэлэн мөнгөнөөс төлөх (одоо $amount)';
  }

  @override
  String lotToCash(String amount) {
    return 'Бэлэн мөнгөнд нэмэх (одоо $amount)';
  }

  @override
  String get onboardTitle4 => 'Портфолиогоо хянаарай';

  @override
  String get onboardBody4 =>
      'Брокерийнхоо экспортыг импортлоорой (Revolut, Trading 212, IBKR, DEGIRO, Schwab…), эсвэл гүйлгээгээ гараар нэмээрэй: индекстэй харьцуулсан өгөөж, ногдол ашиг болон татварын тайланд зориулсан жилийн хураангуйгаа хараарай.';

  @override
  String get lotEdit => 'Засах';

  @override
  String lotEditTitle(String symbol) {
    return 'Гүйлгээ засах · $symbol';
  }

  @override
  String get lotSave => 'Хадгалах';

  @override
  String dividendEditTitle(String symbol) {
    return 'Ногдол ашиг засах · $symbol';
  }

  @override
  String get activityTitle => 'Бүх гүйлгээ';

  @override
  String get activitySearchHint => 'Тикерээр шүүх';

  @override
  String get activityNoMatch => 'Шүүлтүүрт тохирох гүйлгээ олдсонгүй.';

  @override
  String portfolioImportDuplicates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count аль хэдийн бүртгэгдсэн, нэмэгдсэнгүй',
      one: '1 аль хэдийн бүртгэгдсэн, нэмэгдсэнгүй',
    );
    return '$_temp0';
  }

  @override
  String get portfolioGoalSet => 'Зорилт тавих';

  @override
  String get portfolioGoalTitle => 'Портфолиогийн зорилт';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · зорилт: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Зорилт биелсэн: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Зорилт хасах';

  @override
  String get alertEdit => 'Сэрэмжлүүлэг засах';

  @override
  String get positionOpenLots =>
      'Одоо ч эзэмшиж буй (хамгийн эртнийх нь эхэндээ)';

  @override
  String get lotRemoved => 'Гүйлгээг устгалаа';

  @override
  String get alertDeleted => 'Сэрэмжлүүлэг устгалаа';

  @override
  String get alertsClearTriggered => 'Идэвхжсэн сэрэмжлүүлгийг цэвэрлэх';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сэрэмжлүүлэг цэвэрлэлээ',
      one: '1 сэрэмжлүүлэг цэвэрлэлээ',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Нүүр дэлгэц';

  @override
  String get allocationCountries => 'Улс';

  @override
  String get newsExplainNoteResearch =>
      'AI-ийн тайлбар: баримтыг вэбээс хайж, нийтлэлийг нээн, эх сурвалж хэр найдвартай болохыг үнэлнэ. Хөрөнгө оруулалтын зөвлөгөө биш. Өдрийн асуултын хязгаараас тань зарцуулна, шинжилгээ биш.';

  @override
  String get sourceOfficial => 'Албан ёсны';

  @override
  String get sourcePressRelease => 'Хэвлэлийн мэдээ';

  @override
  String get sourceMajorNews => 'Томоохон хэвлэл';

  @override
  String get sourceOpinion => 'Үзэл бодол';

  @override
  String get earningsSummaryButton => 'Сүүлийн тайланд юу байсан бэ?';

  @override
  String get earningsSummaryNote =>
      'Компанийн үр дүнгийн мэдэгдэл болон вэбээс олсон хэвлэлийн мэдээний AI хураангуй. Хөрөнгө оруулалтын зөвлөгөө биш. Өдрийн асуултын хязгаараас тань зарцуулна, шинжилгээ биш.';

  @override
  String get compareLastSurprise => 'Сүүлийн улирлын EPS vs хүлээлт';

  @override
  String get compareNextReport => 'Дараагийн тайлан';

  @override
  String get resolvingDescription => 'Таны хэлж буй хувьцааг тодорхойлж байна…';

  @override
  String get instrumentTitle => 'Энэ хэрэглүүрийн тухай';

  @override
  String get instrumentHint =>
      'Энэ тэмдэгт компанийн танилцуулга байхгүй – энэ нь ETF, сан эсвэл хадгаламжийн баримт байж болно. Энэ юу вэ, юу агуулдаг вэ, зардал нь хэд вэ гэдгийг AI-аас асуугаарай.';

  @override
  String get instrumentAsk => 'Энэ юу вэ?';

  @override
  String get instrumentNote =>
      'Эмитентийн сангийн хуудас болон вэбээс олсон санхүүгийн сайтуудад тулгуурласан AI тайлбар. Хөрөнгө оруулалтын зөвлөгөө биш. Өдрийн асуултын хязгаараас тань зарцуулна, шинжилгээ биш.';

  @override
  String suggestAskAi(String query) {
    return 'AI-аас асуух: “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return '$symbols-д одоогийн үнэ байхгүй.';
  }

  @override
  String get eventsRecentResults => 'Саяхан гарсан тайлан';

  @override
  String get saveToNotes => 'Миний тэмдэглэлд хадгалах';

  @override
  String get savedToNotes => 'Таны тэмдэглэлд хадгалагдсан';

  @override
  String get portfolioDividendsReceived => 'Хүлээн авсан ногдол ашиг';

  @override
  String get portfolioDividendsThisYear => 'Энэ жил';

  @override
  String get portfolioDividendsAllTime => 'Нийт';

  @override
  String get portfolioAddDividend => 'Ногдол ашиг нэмэх';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Хүлээн авсан дүн ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Төлбөрийн огноо';

  @override
  String get portfolioDividendsEmpty =>
      'Ногдол ашиг бүртгэгдээгүй байна. Гараар нэмэх, эсвэл брокерийнхоо экспортыг импортлоорой – түүний ногдол ашгийн мөрүүд ч мөн уншигдана.';

  @override
  String get portfolioSplit => 'Хувьцааны хуваалт';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Хувьцааны хуваалт: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Хуваалтаас өмнөх огноотой худалдан авалт, борлуулалтыг тохируулна: хувьцааны тоог үржүүлж, нэгж хувьцааны үнийг хуваах тул өртөг хэвээр үлдэнэ.';

  @override
  String get portfolioSplitRatio => 'Харьцаа (шинэ : хуучин)';

  @override
  String get portfolioSplitRatioError =>
      '10:1 гэх мэт харьцаа оруулна уу, эсвэл урвуу хуваалтад 1:10.';

  @override
  String get portfolioSplitDate => 'Хуваалтын огноо';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Хувьцааны хуваалт $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Хувьцааны хуваалтыг устгасан';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count хувьцааны хуваалт нэмэгдсэн',
      one: '1 хувьцааны хуваалт нэмэгдсэн',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ногдол ашиг нэмэгдсэн',
      one: '1 ногдол ашиг нэмэгдсэн',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Ногдол ашгийг экспортлох (CSV)';

  @override
  String get portfolioDividendDeleted => 'Ногдол ашгийг устгасан';

  @override
  String get portfolioDividendsHint =>
      'Дүнгүүд таны данс руу орж ирсэн хэлбэрээр, төлбөрийн валютаар; нийлбэрийг өнөөдрийн ханшаар хөрвүүлнэ. Татварын тайландаа брокерийнхоо хуулгыг ашиглана уу.';

  @override
  String get awayTitle => 'Таныг эзгүй байх хооронд';

  @override
  String awaySince(String when) {
    return '$when-с хойш';
  }

  @override
  String get awayQuiet => 'Онцын хөдөлгөөн гарсангүй.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сэрэмжлүүлэг идэвхжсэн',
      one: '1 сэрэмжлүүлэг идэвхжсэн',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Үр дүн зарласан: $symbols';
  }

  @override
  String get moveWhyButton => 'Өнөөдөр яагаад хөдөлж байна вэ?';

  @override
  String moveWhyTitle(String percent) {
    return 'Өнөөдөр $percent';
  }

  @override
  String get moveWhyNote =>
      'Вэбээс олдсон өнөөдрийн мэдээнд үндэслэсэн хиймэл оюуны тайлбар; жинхэнэ шалтгаан тодорхойгүй эсвэл өөр байж болно. Хөрөнгө оруулалтын зөвлөгөө биш. Шинжилгээ бус, өдрийн асуултын эрхийг ашигладаг.';

  @override
  String get sectionTechnical => 'Техник дүр зураг';

  @override
  String get labelSma50 => '50 хоногийн дундаж';

  @override
  String get labelSma200 => '200 хоногийн дундаж';

  @override
  String get labelRsi => 'RSI (14 хоног)';

  @override
  String get labelVolatility30 => 'Хэлбэлзэл (30 хоног)';

  @override
  String techAbove(String percent) {
    return '$percent дээр';
  }

  @override
  String techBelow(String percent) {
    return '$percent доор';
  }

  @override
  String get techOverbought => 'хэт их худалдан авагдсан';

  @override
  String get techOversold => 'хэт их зарагдсан';

  @override
  String get techNeutral => 'саармаг';

  @override
  String get techGoldenCross =>
      '50 хоногийн дундаж 200 хоногийн дунджаас дээр байна – сонгодог тайлбараар өсөх хандлага.';

  @override
  String get techDeathCross =>
      '50 хоногийн дундаж 200 хоногийн дунджаас доор байна – сонгодог тайлбараар буурах хандлага.';

  @override
  String get glossSma50 =>
      'Сүүлийн 50 арилжааны өдрийн хаалтын үнийн дундаж. Үнэ түүнээс дээр байвал богино хугацааны хүч, доор байвал сул дорой байдал гэж ихэвчлэн тайлбарладаг.';

  @override
  String get glossSma200 =>
      'Сүүлийн 200 арилжааны өдрийн хаалтын үнийн дундаж – урт хугацааны хандлагын сонгодог шугам. Олон хөрөнгө оруулагч үнэ түүнээс дээр байвал урт хугацааны өсөх хандлага гэж үздэг.';

  @override
  String get glossRsi =>
      'Харьцангуй хүчний индекс: сүүлийн үеийн өсөлтийг сүүлийн үеийн бууралттай 0–100 хуваарь дээр харьцуулдаг. 70-аас дээш бол хувьцааг хэт их худалдан авагдсан (хурдан өссөн), 30-аас доош бол хэт их зарагдсан гэж ихэвчлэн нэрлэдэг – гэвч хүчтэй хандлага тэнд удаан хадгалагдаж болно.';

  @override
  String get glossVolatility =>
      'Үнэ өдрөөс өдөрт хэр их хэлбэлздэгийг жилийн хэмжээнд шилжүүлсэн: 20% гэдэг нь ердийн жилд ойролцоогоор ±20%-ийн хүрээнд хөдөлнө гэсэн үг. Хэлбэлзэл өндөр байх нь хоёр чиглэлд илүү том хөдөлгөөн гэсэн үг.';

  @override
  String get techNote =>
      'Өдрийн хаалтын үнээр тооцсон. Техник дохио нь өнгөрснийг дүрсэлдэг, ирээдүйг биш.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$count позициос $above нь 200 хоногийн дунджаасаа дээгүүр';
  }

  @override
  String get watchSignalsTitle => 'Дохио';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · хэт их зарагдсан';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · хэт их худалдан авагдсан';
  }

  @override
  String get signalCrossedAbove => '200 хоногийн дунджаас дээш гарсан';

  @override
  String get signalCrossedBelow => '200 хоногийн дунджаас доош орсон';

  @override
  String get signalAlertsTitle => 'Техник дохионы мэдэгдэл';

  @override
  String get signalAlertsSubtitle =>
      'Өдөрт нэг удаа, таны дагаж буй хувьцаа хэт их зарагдсан эсвэл хэт их худалдан авагдсан (RSI) болох, эсвэл үнэ нь 200 хоногийн дундажийг давах үед.';

  @override
  String get signalAlertsNotification => 'Техник дохио';

  @override
  String get glossaryPageTitle => 'Нэр томьёоны тайлбар';

  @override
  String get glossaryPageSubtitle =>
      'Аппын харуулдаг бүх үзүүлэлтийн энгийн тайлбар, P/E-ээс RSI хүртэл';

  @override
  String get glossarySearchHint => 'Тайлбар толиос хайх';

  @override
  String get portfolioCash => 'Бэлэн мөнгө';

  @override
  String get portfolioCashTitle => 'Бэлэн мөнгөний үлдэгдэл';

  @override
  String get portfolioCashHint =>
      'Брокер дээрх хөрөнгө оруулаагүй мөнгө, валют тус бүрээр. Нийт үнэ цэнэ болон хуваарилалтад тооцогдоно; өгөөжид тооцогдохгүй.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Дүн ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Бэлэн мөнгөний үлдэгдэл тохируулах';

  @override
  String get portfolioDividendsByMonth => 'Сараар';

  @override
  String get dividendsLegendReceived => 'Хүлээн авсан';

  @override
  String get dividendsLegendExpected => 'Хүлээгдэж буй';

  @override
  String get portfolioDividendsExpected => 'Дараагийн хүлээгдэж буй';

  @override
  String get portfolioDividendsExpectedNote =>
      'Таны бүртгэсэн төлбөрүүдийн огноо, дүнгээс тооцоолсон; компаниуд өөрчлөх эсвэл алгасах боломжтой.';

  @override
  String portfolioDividendAround(String date) {
    return '$date орчим';
  }
}
