// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Uzbek (`uz`).
class AppLocalizationsUz extends AppLocalizations {
  AppLocalizationsUz([String locale = 'uz']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Aksiyani suratga oling va u haqida hamma narsani bilib oling.';

  @override
  String get homeHint =>
      'Aksiya sertifikati, broker ilovasi ekrani, gazeta yoki kompaniya logotipi – aksiyani aniqlashga yordam beradigan har qanday narsa.';

  @override
  String get takePhoto => 'Suratga olish';

  @override
  String get chooseFromGallery => 'Galereyadan tanlash';

  @override
  String get chooseImage => 'Rasm tanlash';

  @override
  String get enterTickerManually => 'Tikerni qoʻlda kiritish';

  @override
  String get tickerInputLabel => 'Tiker';

  @override
  String get tickerInputHint => 'masalan, AAPL';

  @override
  String get lookUp => 'Qidirish';

  @override
  String demoModeBanner(String symbols) {
    return 'Demo rejim – bozor maʼlumotlari kaliti sozlanmagan. Namuna maʼlumotlar quyidagilar uchun mavjud: $symbols.';
  }

  @override
  String get recognizing => 'Rasm tahlil qilinmoqda…';

  @override
  String get loadingData => 'Maʼlumotlar yuklanmoqda…';

  @override
  String get noCandidatesTitle => 'Aksiya aniqlanmadi';

  @override
  String get noCandidatesBody =>
      'Bu rasmda aksiyani aniqlay olmadik. Aniqroq suratni sinab koʻring yoki tikerni qoʻlda kiriting.';

  @override
  String get whatWeSaw => 'Nimani koʻrdik';

  @override
  String get chooseCandidateTitle => 'Qaysi aksiyani nazarda tutdingiz?';

  @override
  String confidencePercent(int percent) {
    return '$percent% ishonch';
  }

  @override
  String get settings => 'Sozlamalar';

  @override
  String get language => 'Til';

  @override
  String get systemLanguage => 'Tizim tili';

  @override
  String get about => 'Ilova haqida';

  @override
  String get disclaimer =>
      'Bu ilova faqat maʼlumot beradi va investitsiya maslahati hisoblanmaydi. Maʼlumotlar kechikkan yoki noaniq boʻlishi mumkin.';

  @override
  String dataSource(String source) {
    return 'Maʼlumotlar manbasi: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Aniqlash: $source';
  }

  @override
  String get retry => 'Qayta urinish';

  @override
  String get cancel => 'Bekor qilish';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Yopish';

  @override
  String get errorGeneric => 'Nimadir xato ketdi.';

  @override
  String get errorSectionUnavailable => 'Bu boʻlimni yuklab boʻlmadi.';

  @override
  String get notAvailable => 'yoʻq';

  @override
  String get sectionIdentity => 'Identifikatsiya';

  @override
  String get sectionPrice => 'Narx';

  @override
  String get sectionValuation => 'Baholash';

  @override
  String get sectionFinancials => 'Moliyaviy koʻrsatkichlar';

  @override
  String get sectionDividend => 'Dividend';

  @override
  String get sectionProfile => 'Kompaniya profili';

  @override
  String get sectionAnalysts => 'Tahlilchilar reytinglari';

  @override
  String get sectionNews => 'Yangiliklar';

  @override
  String get sectionRecognition => 'Aniqlash tafsilotlari';

  @override
  String get labelSymbol => 'Tiker';

  @override
  String get labelExchange => 'Birja';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Valyuta';

  @override
  String get labelCountry => 'Mamlakat';

  @override
  String get labelIndustry => 'Tarmoq';

  @override
  String get labelSector => 'Sektor';

  @override
  String get labelWebsite => 'Veb-sayt';

  @override
  String get labelIpoDate => 'IPO sanasi';

  @override
  String get labelMarketCap => 'Bozor kapitalizatsiyasi';

  @override
  String get labelSharesOutstanding => 'Muomaladagi aksiyalar';

  @override
  String get labelEmployees => 'Xodimlar';

  @override
  String get labelCeo => 'Bosh direktor';

  @override
  String get labelHeadquarters => 'Bosh ofis';

  @override
  String get labelDescription => 'Tavsif';

  @override
  String get labelLastPrice => 'Oxirgi narx';

  @override
  String get labelChange => 'Oʻzgarish';

  @override
  String get labelOpen => 'Ochilish';

  @override
  String get labelDayHigh => 'Kunlik maksimum';

  @override
  String get labelDayLow => 'Kunlik minimum';

  @override
  String get labelPreviousClose => 'Oldingi yopilish';

  @override
  String get labelWeek52High => '52 haftalik maksimum';

  @override
  String get labelWeek52Low => '52 haftalik minimum';

  @override
  String get labelAverageVolume10d => 'Oʻrt. hajm (10 kun)';

  @override
  String updatedAt(String time) {
    return 'Yangilandi: $time';
  }

  @override
  String get labelPeTrailing => 'P/E (oʻtgan davr)';

  @override
  String get labelPeForward => 'P/E (prognoz)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / erkin pul oqimi';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Tushum (TTM)';

  @override
  String get labelNetIncomeTtm => 'Sof foyda (TTM)';

  @override
  String get labelGrossMargin => 'Yalpi marja';

  @override
  String get labelOperatingMargin => 'Operatsion marja';

  @override
  String get labelNetMargin => 'Sof marja';

  @override
  String get labelRoe => 'Kapital rentabelligi';

  @override
  String get labelRoa => 'Aktivlar rentabelligi';

  @override
  String get labelDebtToEquity => 'Qarz / kapital';

  @override
  String get labelCurrentRatio => 'Joriy likvidlik koeffitsiyenti';

  @override
  String get labelRevenueGrowth => 'Tushum oʻsishi (YoY)';

  @override
  String get labelEpsGrowth => 'EPS oʻsishi (YoY)';

  @override
  String get labelDividendYield => 'Dividend daromadliligi';

  @override
  String get labelDividendPerShare => 'Bir aksiyaga dividend';

  @override
  String get labelPayoutRatio => 'Dividend toʻlov ulushi';

  @override
  String get labelYieldOnCost => 'Xarid narxiga daromadlilik';

  @override
  String get labelDividendGrowth5y => 'Dividend oʻsishi (5 yil)';

  @override
  String get dividendNone => 'Oxirgi 12 oyda dividend toʻlanmagan.';

  @override
  String get dividendOnYourShares => 'Aksiyalaringizga, yiliga';

  @override
  String get labelConsensus => 'Konsensus';

  @override
  String get ratingStrongBuy => 'Faol sotib olish';

  @override
  String get ratingBuy => 'Sotib olish';

  @override
  String get ratingHold => 'Ushlab turish';

  @override
  String get ratingSell => 'Sotish';

  @override
  String get ratingStrongSell => 'Faol sotish';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tahlilchi',
      one: '1 tahlilchi',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Davr: $period';
  }

  @override
  String get noNews => 'Soʻnggi yangiliklar yoʻq.';

  @override
  String get openArticle => 'Maqolani ochish';

  @override
  String get openLinkFailed => 'Havolani ochib boʻlmadi.';

  @override
  String get recognitionSummary => 'Xulosa';

  @override
  String get recognitionEvidence => 'Nega shunday deb oʻylaymiz';

  @override
  String get recognitionRawText => 'Rasmdan oʻqilgan matn';

  @override
  String get errMissingAnthropicKey =>
      'Rasmni aniqlash sozlanmagan (ANTHROPIC_API_KEY yoʻq). Tikerni qoʻlda kiriting.';

  @override
  String get errRecognitionUnreachable =>
      'Aniqlash xizmatiga ulanib boʻlmadi. Internet aloqasini tekshiring.';

  @override
  String errRecognitionHttp(String status) {
    return 'Aniqlash xizmati xato qaytardi (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Aniqlash xizmati bu rasmni qayta ishlay olmadi.';

  @override
  String get errRecognitionTruncated =>
      'Aniqlash xizmatining javobi uzilib qoldi. Qaytadan urinib koʻring.';

  @override
  String get errRecognitionBadResponse =>
      'Aniqlash xizmatidan kutilmagan javob keldi.';

  @override
  String get errRecognitionEmpty => 'Aniqlash xizmati boʻsh javob qaytardi.';

  @override
  String get errMissingFinnhubKey =>
      'Bozor maʼlumotlari sozlanmagan (FINNHUB_API_KEY yoʻq).';

  @override
  String get errMarketUnreachable =>
      'Bozor maʼlumotlari xizmatiga ulanib boʻlmadi. Internet aloqasini tekshiring.';

  @override
  String get errMarketRateLimited =>
      'Bozor maʼlumotlari xizmatiga juda koʻp soʻrov yuborildi. Bir daqiqa kuting.';

  @override
  String errMarketHttp(String status) {
    return 'Bozor maʼlumotlari xizmati xato qaytardi (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Bozor maʼlumotlari xizmatidan kutilmagan javob keldi.';

  @override
  String errNoQuote(String symbol) {
    return '$symbol uchun narx maʼlumotlari topilmadi.';
  }

  @override
  String errNoProfile(String symbol) {
    return '$symbol uchun kompaniya profili topilmadi.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Demo rejim faqat quyidagilarni qoʻllab-quvvatlaydi: $symbols. Real vaqtdagi maʼlumotlar uchun FINNHUB_API_KEY qoʻshing.';
  }

  @override
  String errUnknown(String detail) {
    return 'Nimadir xato ketdi: $detail';
  }

  @override
  String get newSearch => 'Yangi qidiruv';

  @override
  String get recentSearches => 'Soʻnggi';

  @override
  String get noRecentSearches => 'Hozircha soʻnggi qidiruvlar yoʻq.';

  @override
  String get clearRecent => 'Soʻnggilarni tozalash';

  @override
  String get greeting => 'Qaysi aksiyani koʻrib chiqamiz?';

  @override
  String get searchHint => 'Tiker yoki kompaniya nomi';

  @override
  String get attachImage => 'Rasm biriktirish';

  @override
  String get searchResultsTitle => 'Qidiruv natijalari';

  @override
  String errNoResults(String query) {
    return '«$query» boʻyicha aksiya topilmadi.';
  }

  @override
  String get quickBarHint => 'Tiker yoki kompaniya nomini kiriting…';

  @override
  String get openFullWindow => 'Oynani ochish';

  @override
  String hotkeyHint(String shortcut) {
    return 'WhatStockni chaqirish uchun istalgan joyda $shortcut tugmalarini bosing.';
  }

  @override
  String get trayOpen => 'WhatStockni ochish';

  @override
  String get trayQuickSearch => 'Tezkor qidiruv';

  @override
  String get trayQuit => 'Chiqish';

  @override
  String get appearance => 'Tashqi koʻrinish';

  @override
  String get themeSystem => 'Tizim';

  @override
  String get themeDark => 'Qorongʻi';

  @override
  String get themeLight => 'Yorugʻ';

  @override
  String get back => 'Orqaga';

  @override
  String get aiSectionTitle => 'AI tahlili';

  @override
  String get aiIntro =>
      'AI yozgan batafsil sharh: soʻnggi yangiliklar xulosasi, biznes, kuchli tomonlar, xatarlar va yashirin omillar, baholash, psixologik, sotsiologik, texnik va makro nuqtai nazardan ssenariylar bilan narx prognozi hamda nimalarga eʼtibor berish kerakligi.';

  @override
  String get aiGenerate => 'Tahlil yaratish';

  @override
  String get aiRegenerate => 'Qayta yaratish';

  @override
  String get aiGenerating =>
      'Tahlil tayyorlanmoqda… bu bir-ikki daqiqa vaqt olishi mumkin.';

  @override
  String get aiSources => 'Manbalar';

  @override
  String aiGeneratedAt(String time) {
    return 'Yaratildi: $time';
  }

  @override
  String get aiDisclaimer =>
      'Ochiq maʼlumotlar va soʻnggi yangiliklar asosida AI yaratgan tahlil. Unda xatolar boʻlishi yoki u eskirgan boʻlishi mumkin; bu investitsiya maslahati emas.';

  @override
  String get errAiNotConfigured =>
      'AI tahlili sozlanmagan (ANTHROPIC_API_KEY yoʻq).';

  @override
  String get errAiUnreachable =>
      'AI xizmatiga ulanib boʻlmadi. Internet aloqasini tekshiring.';

  @override
  String errAiHttp(String status) {
    return 'AI xizmati xato qaytardi (HTTP $status).';
  }

  @override
  String get errAiRefused => 'AI xizmati bu aksiyani tahlil qilishni rad etdi.';

  @override
  String get errAiBadResponse => 'AI xizmatidan kutilmagan javob keldi.';

  @override
  String get sectionChart => 'Narx grafigi';

  @override
  String get rangeOneWeek => '1H';

  @override
  String get rangeOneMonth => '1O';

  @override
  String get rangeThreeMonths => '3O';

  @override
  String get rangeOneYear => '1Y';

  @override
  String get rangeFiveYears => '5Y';

  @override
  String get chartUnavailable =>
      'Joriy maʼlumotlar manbasida narxlar tarixi mavjud emas.';

  @override
  String get sectionStatements => 'Moliyaviy hisobotlar (yillik)';

  @override
  String get labelFiscalYear => 'Moliyaviy yil';

  @override
  String get labelRevenue => 'Tushum';

  @override
  String get labelNetIncome => 'Sof foyda';

  @override
  String get labelTotalAssets => 'Jami aktivlar';

  @override
  String get labelTotalLiabilities => 'Jami majburiyatlar';

  @override
  String get labelEquity => 'Xususiy kapital';

  @override
  String get labelOperatingCashFlow => 'Operatsion pul oqimi';

  @override
  String get statementsUnavailable =>
      'Bu aksiya uchun eʼlon qilingan moliyaviy hisobotlar mavjud emas.';

  @override
  String get launchAtLogin => 'Tizimga kirganda ishga tushirish';

  @override
  String get hotkeyLabel => 'Global tezkor tugmalar';

  @override
  String get hotkeyRecordHint =>
      'Shu yerni bosing, soʻng yangi tugmalar birikmasini bosing';

  @override
  String get hotkeyReset => 'Standartga qaytarish';

  @override
  String get pasteImage => 'Rasmni buferdan joylash';

  @override
  String get errClipboardNoImage => 'Buferda rasm yoʻq.';

  @override
  String get favorites => 'Sevimlilar';

  @override
  String get addToFavorites => 'Sevimlilarga qoʻshish';

  @override
  String get removeFromFavorites => 'Sevimlilardan olib tashlash';

  @override
  String get noFavorites =>
      'Hozircha sevimlilar yoʻq. Qoʻshish uchun aksiyadagi yulduzchani bosing.';

  @override
  String get displayCurrency => 'Koʻrsatish valyutasi';

  @override
  String get displayCurrencyNone => 'Faqat aksiyaning oʻz valyutasi';

  @override
  String labelConverted(String currency) {
    return '≈ $currency hisobida';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Kurs: 1 $from = $rate $to (YeMB, $date)';
  }

  @override
  String get updates => 'Yangilanishlar';

  @override
  String currentVersion(String version) {
    return 'Versiya $version';
  }

  @override
  String get autoUpdate => 'Yangilanishlarni avtomatik oʻrnatish';

  @override
  String get checkForUpdates => 'Yangilanishlarni tekshirish';

  @override
  String get updateChecking => 'Yangilanishlar tekshirilmoqda…';

  @override
  String get updateUpToDate => 'Sizda eng soʻnggi versiya oʻrnatilgan.';

  @override
  String updateAvailable(String version) {
    return '$version versiyasi mavjud.';
  }

  @override
  String get updateDownloading => 'Yangilanish fonda yuklab olinmoqda…';

  @override
  String get updateDownloaded =>
      'Yangilanish tayyor. Oʻrnatish uchun ilovani qayta ishga tushiring.';

  @override
  String get updateNow => 'Yangilash';

  @override
  String get restartNow => 'Qayta ishga tushirish';

  @override
  String get updatesViaStore =>
      'Yangilanishlar ilovalar doʻkoni orqali avtomatik keladi.';

  @override
  String get updateCheckFailed => 'Yangilanishlarni tekshirib boʻlmadi.';

  @override
  String get subscription => 'Obuna';

  @override
  String get planTrial => 'Sinov';

  @override
  String get planNormal => 'Oddiy';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Faol tarif yoʻq';

  @override
  String planAnalysesPerMonth(int count) {
    return 'Oyiga $count ta tahlil';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$count ta tahlil bilan $days kunlik bepul sinov';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Sinov muddati tugashiga $days kun qoldi',
      one: 'Sinov muddati tugashiga 1 kun qoldi',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Bepul sinov muddati tugadi. Tahlil qilishda davom etish uchun tarif tanlang.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Bu davrda $total ta tahlildan $remaining tasi qoldi';
  }

  @override
  String extraCredits(int count) {
    return '$count ta qoʻshimcha tahlil';
  }

  @override
  String renewsOn(String date) {
    return '$date kuni yangilanadi';
  }

  @override
  String get choosePlan => 'Tarif tanlang';

  @override
  String get currentPlan => 'Joriy tarif';

  @override
  String get subscribe => 'Obuna boʻlish';

  @override
  String get perMonth => '/ oy';

  @override
  String get extraPacksTitle =>
      'Koʻproq kerakmi? Qoʻshimcha tahlillar sotib oling';

  @override
  String get extraPacksHint =>
      'Qoʻshimcha tahlillarning muddati hech qachon tugamaydi va ular oylik limitingizdan keyin ishlatiladi.';

  @override
  String get buy => 'Sotib olish';

  @override
  String get restorePurchases => 'Xaridlarni tiklash';

  @override
  String get manageSubscription => 'Obunani boshqarish';

  @override
  String get purchaseSuccess => 'Rahmat! Xaridingiz faollashtirildi.';

  @override
  String get purchasePending => 'Xarid kutilmoqda…';

  @override
  String get purchaseFailed => 'Xaridni yakunlab boʻlmadi.';

  @override
  String get purchaseCanceled => 'Xarid bekor qilindi.';

  @override
  String get billingUnavailable =>
      'Bu platformada xaridlar hozircha mavjud emas. Telefoningiz yoki Mac orqali obuna boʻling – tarifingiz barcha qurilmalarda ishlaydi.';

  @override
  String get errQuotaExceeded =>
      'Bu davr uchun tahlillaringiz qolmadi. Yuqoriroq tarifga oʻting yoki qoʻshimcha tahlillar sotib oling.';

  @override
  String get errTrialExpired =>
      'Bepul sinov muddati tugadi. Davom etish uchun tarif tanlang.';

  @override
  String get errNoPlan => 'AI tahlili uchun faol tarif kerak.';

  @override
  String get viewPlans => 'Tariflarni koʻrish';

  @override
  String get usageTitle => 'Foydalanish';

  @override
  String get demoPurchaseNote =>
      'Demo toʻlov: bu platformada xaridlar simulyatsiya qilinadi.';

  @override
  String get mostPopular => 'Eng ommabop';

  @override
  String get bestValue => 'Eng foydali';

  @override
  String get planFeaturesCommon =>
      'Suratdan aniqlash, real vaqtdagi maʼlumotlar, grafiklar, sevimlilar va barcha 120 ta til har bir tarifga kiritilgan. Limit AI tahlillariga tegishli.';

  @override
  String get searchLanguages => 'Tillarni qidirish…';

  @override
  String get noLanguageMatch => 'Mos til topilmadi.';

  @override
  String get aiSettings => 'AI tahlili';

  @override
  String get aiLength => 'Hajm';

  @override
  String get aiDepthBrief => 'Qisqa';

  @override
  String get aiDepthStandard => 'Standart';

  @override
  String get aiDepthDeep => 'Batafsil';

  @override
  String get aiDepthBriefDesc => 'Eng muhimi, tezda.';

  @override
  String get aiDepthStandardDesc => 'Barcha boʻlimlari bilan toʻliq hisobot.';

  @override
  String get aiDepthDeepDesc =>
      'Koʻproq veb-qidiruv, raqobatchilar bilan taqqoslash va chuqurroq tafsilotlar.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Taxminan $min–$max soʻz';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta tahlil sarflanadi',
      one: '1 ta tahlil sarflanadi',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Oʻquvchi darajasi';

  @override
  String get aiReaderBeginner => 'Boshlangʻich';

  @override
  String get aiReaderExperienced => 'Tajribali';

  @override
  String get aiReaderBeginnerDesc =>
      'Sodda til; har bir maxsus atama tushuntiriladi.';

  @override
  String get aiReaderExperiencedDesc =>
      'Standart moliyaviy atamalar bilan zichroq matn.';

  @override
  String get aiCounterArgument => 'Eng kuchli qarshi dalil';

  @override
  String get aiCounterArgumentDesc =>
      'Xulosa har doim oʻz natijasiga qarshi eng kuchli dalil bilan yakunlanadi.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tarifingiz boʻyicha har bir tahlilga $count tagacha veb-qidiruv',
      one: 'Tarifingiz boʻyicha har bir tahlilga 1 tagacha veb-qidiruv',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Tariflar boʻyicha standart hajm: Oddiy $normal, Pro $pro, Max $max, Ultra $ultra. Qisqa hajm 2 ta kam, Batafsil hajm 2 ta koʻp ishlatadi.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tagacha veb-qidiruv',
      one: '1 tagacha veb-qidiruv',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Har bir tahlilga $count ta veb-qidiruv',
      one: 'Har bir tahlilga 1 ta veb-qidiruv',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Bu hajm uchun $needed ta tahlil kerak, lekin faqat $left ta qoldi. Sozlamalarda qisqaroq hajmni tanlang yoki qoʻshimcha tahlillar oling.';
  }

  @override
  String get outlookMarketMood => 'Bozor kayfiyati';

  @override
  String get moodVeryPessimistic => 'Juda pessimistik';

  @override
  String get moodPessimistic => 'Pessimistik';

  @override
  String get moodNeutral => 'Neytral';

  @override
  String get moodOptimistic => 'Optimistik';

  @override
  String get moodVeryOptimistic => 'Juda optimistik';

  @override
  String get scenarioBull => 'Optimistik ssenariy';

  @override
  String get scenarioBase => 'Asosiy ssenariy';

  @override
  String get scenarioBear => 'Pessimistik ssenariy';

  @override
  String outlookCurrentPrice(String price) {
    return 'Joriy narx: $price';
  }

  @override
  String get outlookKeyLevels => 'Asosiy darajalar';

  @override
  String get keyLevelSupport => 'Qoʻllab-quvvatlash';

  @override
  String get keyLevelResistance => 'Qarshilik';

  @override
  String get keyLevelAnchor => 'Langar darajasi';

  @override
  String get upcomingEvents => 'Kutilayotgan voqealar';

  @override
  String get outlookChartNote =>
      'Taxminiy oraliqlar; ehtimollar prognoz emas, balki taxminiy baholar.';

  @override
  String get accountTitle => 'Hisob';

  @override
  String get signIn => 'Kirish';

  @override
  String get signOut => 'Chiqish';

  @override
  String get notSignedIn => 'Hisobga kirilmagan';

  @override
  String get accountBenefit =>
      'Obunangiz barcha qurilmalaringizda ishlashi uchun hisobingizga kiring.';

  @override
  String get accountSyncedNote =>
      'Obunangiz va qolgan tahlillaringiz barcha qurilmalarda bir xil.';

  @override
  String get signInTitle => 'WhatStockka kirish';

  @override
  String get emailLabel => 'Elektron pochta manzili';

  @override
  String get continueWithEmail => 'Email orqali davom etish';

  @override
  String codeSentTo(String email) {
    return '$email manziliga 6 xonali kod yubordik. U 10 daqiqa davomida amal qiladi.';
  }

  @override
  String get codeLabel => 'Kirish kodi';

  @override
  String get resendCode => 'Yangi kod yuborish';

  @override
  String get useDifferentEmail => 'Boshqa email ishlatish';

  @override
  String get errInvalidCode => 'Kod notoʻgʻri yoki muddati oʻtgan.';

  @override
  String get errInvalidEmail => 'Toʻgʻri elektron pochta manzilini kiriting.';

  @override
  String get errSignInFailed =>
      'Kirib boʻlmadi. Aloqani tekshirib, qaytadan urinib koʻring.';

  @override
  String get checkoutWaiting =>
      'Toʻlovni brauzeringizda yakunlang. Tugagach, ilova avtomatik yangilanadi.';

  @override
  String get paymentViaStripe =>
      'Stripe orqali brauzeringizda xavfsiz toʻlov. Istalgan vaqtda bekor qilish mumkin.';

  @override
  String get paymentViaStore =>
      'Toʻlov App Store yoki Google Play hisobingiz orqali amalga oshiriladi. Istalgan vaqtda doʻkon sozlamalarida bekor qilish mumkin.';

  @override
  String get keySpace => 'Probel';

  @override
  String get doubleOptionTitle => 'Option tugmasini ikki marta bosish';

  @override
  String get doubleOptionSubtitle =>
      'Option tugmasini tez ikki marta bosish ham WhatStockni chaqiradi.';

  @override
  String get doubleOptionPermission =>
      'Bu boshqa ilovalarda ham ishlashi uchun Tizim sozlamalari → Maxfiylik va xavfsizlik → Kiritishni kuzatish boʻlimida WhatStockka ruxsat bering, soʻng ilovani qayta oching.';

  @override
  String get openSystemSettings => 'Tizim sozlamalarini ochish';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'WhatStockni chaqirish uchun istalgan joyda $shortcut tugmalarini yoki Option tugmasini ikki marta bosing.';
  }

  @override
  String get scenarioMostLikely => 'Eng ehtimoliy';

  @override
  String get longTermToday => 'Bugun';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years yil',
      one: '1 yil',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return 'yiliga $range';
  }

  @override
  String longTermLikely(String price) {
    return 'eng ehtimoliy $price';
  }

  @override
  String get confidenceLow => 'Past ishonch';

  @override
  String get confidenceMedium => 'Oʻrtacha ishonch';

  @override
  String get confidenceHigh => 'Yuqori ishonch';

  @override
  String get longTermNote =>
      'Uzoq muddatli oraliqlar koʻrsatilgan farazlarga asoslanadi va vaqt oʻtishi bilan kengayadi. Narxlarga dividendlar kirmaydi. Bu prognoz emas, balki taxminiy baholar.';

  @override
  String get portfolio => 'Portfel';

  @override
  String get portfolioEmpty =>
      'Hozircha boʻsh. Sizdagi aksiyalarni kuzatish uchun aksiyani oching va «Portfelga qoʻshish» tugmasini bosing.';

  @override
  String get portfolioLocalNote =>
      'Faqat shu qurilmada saqlanadi. Jami summalar YeMB maʼlumotnoma kurslari boʻyicha hisoblanadi; narxlar kechikishi mumkin.';

  @override
  String get addToPortfolio => 'Portfelga qoʻshish';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol qoʻshish';
  }

  @override
  String get portfolioQuantity => 'Aksiyalar soni';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Bir aksiya narxi ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Xarid sanasi';

  @override
  String get portfolioAdd => 'Qoʻshish';

  @override
  String get portfolioInvalidNumber => 'Noldan katta son kiriting.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol portfelingizga qoʻshildi.';
  }

  @override
  String get portfolioTotalValue => 'Umumiy qiymat';

  @override
  String get portfolioToday => 'Bugun';

  @override
  String get portfolioGainLoss => 'Foyda/zarar';

  @override
  String homeDividendsThisYear(String amount) {
    return 'Shu yilgi dividendlar: $amount';
  }

  @override
  String get portfolioInvested => 'Kiritilgan mablagʻ';

  @override
  String get portfolioAllocation => 'Taqsimot';

  @override
  String get portfolioPositions => 'Pozitsiyalar';

  @override
  String portfolioAvgCost(String price) {
    return 'oʻrt. narx $price';
  }

  @override
  String get portfolioYourPosition => 'Sizning pozitsiyangiz';

  @override
  String get portfolioPurchases => 'Xaridlar';

  @override
  String get portfolioRemove => 'Olib tashlash';

  @override
  String get portfolioExcluded =>
      'Narxi yoki valyuta kursi boʻlmagan pozitsiyalar jami summalarga kiritilmaydi.';

  @override
  String get priceAlerts => 'Narx bildirishnomalari';

  @override
  String get setPriceAlert => 'Narx bildirishnomasini oʻrnatish';

  @override
  String alertDialogTitle(String symbol) {
    return 'Narx bildirishnomasi · $symbol';
  }

  @override
  String get alertKindAbove => 'Yuqoriga koʻtarilsa';

  @override
  String get alertKindBelow => 'Pastga tushsa';

  @override
  String get alertKindMove => 'Bir kunda keskin oʻzgarsa';

  @override
  String alertTargetPrice(String currency) {
    return 'Narx ($currency)';
  }

  @override
  String get alertMovePercent => 'Kunlik oʻzgarish (%)';

  @override
  String get alertAlreadyMet => 'Narx bu darajadan allaqachon oʻtgan.';

  @override
  String get alertSave => 'Bildirishnoma oʻrnatish';

  @override
  String alertCreated(String symbol) {
    return '$symbol uchun bildirishnoma oʻrnatildi.';
  }

  @override
  String get alertsEmpty =>
      'Hozircha narx bildirishnomalari yoʻq. Aksiyani oching va oʻrnatish uchun qoʻngʻiroqchani bosing.';

  @override
  String get alertsNote =>
      'WhatStock ishlab turganda bildirishnomalar har 5 daqiqada tekshiriladi. Kompyuterda ilova menyu satrida yoki bildirishnomalar maydonida ishlashda davom etadi; telefonda esa hozircha bildirishnomalar faqat ilova ochiq boʻlganda keladi.';

  @override
  String alertDescAbove(String price) {
    return '$price dan yuqori';
  }

  @override
  String alertDescBelow(String price) {
    return '$price dan past';
  }

  @override
  String alertDescMove(String percent) {
    return 'Kunlik oʻzgarish ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return '$date kuni $price narxida ishga tushdi';
  }

  @override
  String get alertRearm => 'Qayta yoqish';

  @override
  String get alertDelete => 'Oʻchirish';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol narxi $price dan oshdi';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol narxi $price dan pastga tushdi';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol bugun $percent ga oʻzgardi';
  }

  @override
  String alertHitBody(String price) {
    return 'Joriy narx: $price';
  }

  @override
  String get alertOpen => 'Ochish';

  @override
  String get keepInTrayTitle => 'Oyna yopilganda ham ishlashda davom etish';

  @override
  String get keepInTraySubtitle =>
      'WhatStock menyu satrida yoki bildirishnomalar maydonida qoladi, shuning uchun tezkor tugmalar va narx bildirishnomalari ishlashda davom etadi.';

  @override
  String get termsOfUse => 'Foydalanish shartlari';

  @override
  String get privacyPolicy => 'Maxfiylik siyosati';

  @override
  String get subscriptionLegal =>
      'Obuna bekor qilinmaguncha har oy avtomatik ravishda yangilanadi. Obuna boʻlish orqali siz Foydalanish shartlari va Maxfiylik siyosatini qabul qilasiz.';

  @override
  String get deleteAccount => 'Hisobni oʻchirish';

  @override
  String get deleteAccountTitle => 'Hisobingiz oʻchirilsinmi?';

  @override
  String get deleteAccountBody =>
      'Hisobingiz va serverimizda saqlangan barcha narsalar (email, limit, foydalanish) butunlay oʻchiriladi, ishlatilmagan tahlillar esa yoʻqoladi. Brauzerda toʻlangan obuna darhol bekor qilinadi; App Store yoki Google Play obunasini doʻkon sozlamalarida bekor qilish kerak.';

  @override
  String get deleteLocalData =>
      'Bu qurilmadagi maʼlumotlarni ham oʻchirish (portfel, bildirishnomalar, sevimlilar, tarix, saqlangan tahlillar)';

  @override
  String get deleteAccountConfirm => 'Butunlay oʻchirish';

  @override
  String get accountDeleted => 'Hisobingiz oʻchirildi.';

  @override
  String get errDeleteAccount =>
      'Hisobni oʻchirib boʻlmadi. Aloqani tekshirib, qaytadan urinib koʻring.';

  @override
  String get aiTrialBriefNote =>
      'Sinov tahlillari qisqa va tezroq AI modeli bilan tayyorlanadi. Tarif bilan eng kuchli AI modelimiz, koʻproq veb-qidiruv hamda Standart va Batafsil uzunliklarni olasiz.';

  @override
  String get billingMonthly => 'Oylik';

  @override
  String get billingYearly => 'Yillik';

  @override
  String get yearlyDiscount => '2 oy bepul';

  @override
  String get perYear => '/ yil';

  @override
  String pricePerMonthApprox(String price) {
    return 'Oyiga ≈ $price';
  }

  @override
  String get subscriptionLegalYearly =>
      'Yillik obuna bekor qilinmaguncha har yili avtomatik ravishda yangilanadi. Obuna boʻlish orqali siz Foydalanish shartlari va Maxfiylik siyosatini qabul qilasiz.';

  @override
  String get myAnalyses => 'Mening tahlillarim';

  @override
  String get navAlerts => 'Signallar';

  @override
  String get inviteTitle => 'Yopiq oldindan koʻrish';

  @override
  String get inviteBody =>
      'WhatStock hozircha faqat taklif orqali mavjud. Olgan taklif kodingizni kiriting.';

  @override
  String get inviteCodeLabel => 'Taklif kodi';

  @override
  String get inviteContinue => 'Davom etish';

  @override
  String get inviteInvalid => 'Bu taklif kodi yaroqsiz.';

  @override
  String get inviteExpired =>
      'Bu taklifning muddati oʻtgan. Sizni taklif qilgan kishidan yangi kod soʻrang.';

  @override
  String get inviteDeviceLimit =>
      'Bu taklif kodi allaqachon ruxsat etilgan eng koʻp qurilmada ishlatilmoqda.';

  @override
  String get previewConfidential => 'Maxfiy oldindan koʻrish';

  @override
  String get errPreviewDailyLimit =>
      'Bu oldindan koʻrishning bugungi tahlil limiti tugadi. Ertaga qayta urinib koʻring.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count soat oldin',
      one: '1 soat oldin',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kun oldin',
      one: '1 kun oldin',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Bu tahlil yangilansinmi?';

  @override
  String staleBody(String age) {
    return 'U $age tayyorlangan. Shundan beri narxlar, yangiliklar va natijalar oʻzgargan boʻlishi mumkin.';
  }

  @override
  String get staleKeep => 'Avvalgisini koʻrsatish';

  @override
  String get staleRefresh => 'Yangisini yaratish';

  @override
  String seeAll(int count) {
    return 'Barchasini koʻrish ($count)';
  }

  @override
  String get searchAnalyses => 'Tahlillaringizdan qidirish';

  @override
  String get deleteAnalysis => 'Oʻchirish';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol tahlili oʻchirildi';
  }

  @override
  String get keyLevelAlertHint =>
      'Narx darajaga yetganda bildirishnoma olish uchun darajani bosing.';

  @override
  String get shareAnalysisTitle => 'Tahlilni ulashish';

  @override
  String get shareAsImage => 'Rasm sifatida ulashish';

  @override
  String get shareAsText => 'Matn sifatida ulashish';

  @override
  String get shareCardFooter => 'WhatStock yordamida yaratilgan';

  @override
  String get shareCardDisclaimer => 'AI tahlili · investitsiya maslahati emas';

  @override
  String get referralTitle => 'Doʻstlarni taklif qilish';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta qoʻshimcha tahlil',
      one: '1 ta qoʻshimcha tahlil',
    );
    return 'Kodingizni ulashing. Doʻstingiz darhol $_temp0 oladi, siz esa uning birinchi tahlilidan keyin xuddi shuncha olasiz.';
  }

  @override
  String get referralYourCode => 'Sizning kodingiz';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Taklif qilinganlar: $invited · Mukofotlanganlar: $rewarded';
  }

  @override
  String get referralHaveCode => 'Doʻstingizdan kod bormi?';

  @override
  String get referralRedeem => 'Faollashtirish';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta qoʻshimcha tahlil qoʻshildi. Xush kelibsiz!',
      one: '1 ta qoʻshimcha tahlil qoʻshildi. Xush kelibsiz!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Bunday kod mavjud emas. Tekshirib, qaytadan urinib koʻring.';

  @override
  String get referralErrOwn => 'Oʻz kodingizni faollashtira olmaysiz.';

  @override
  String get referralErrAlready =>
      'Siz allaqachon doʻstingiz kodini faollashtirgansiz.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta qoʻshimcha tahlil',
      one: '1 ta qoʻshimcha tahlil',
    );
    return 'Men aksiyalarni WhatStock bilan tahlil qilaman: aksiyani suratga oling, AI uni tushuntirib beradi. Mening $code kodim bilan $_temp0 olasiz.';
  }

  @override
  String get referralCopied => 'Kod nusxalandi';

  @override
  String get onboardTitle1 => 'Aksiyani suratga oling';

  @override
  String get onboardBody1 =>
      'Broker ilovasi ekrani, gazeta yoki kompaniya logotipi kifoya: WhatStock aksiyani taniydi va uning narxi, grafigi hamda asosiy koʻrsatkichlarini koʻrsatadi.';

  @override
  String get onboardTitle2 => 'Bir necha daqiqada tushuning';

  @override
  String get onboardBody2 =>
      'AI tahlili aksiyani nima harakatlantirayotganini, xatarlarni, baholashni va narx qayerga borishi mumkinligi haqidagi uchta ssenariyni manbalar bilan va oʻz tilingizda tushuntirib beradi.';

  @override
  String get onboardTitle3 => 'Doimo xabardor boʻling';

  @override
  String get onboardBody3 =>
      'Sevimlilar, portfelingiz va narx bildirishnomalari sizni voqealardan boxabar qilib turadi. Tahlillaringiz qurilmangizda saqlanadi, ularni istalgan vaqtda qayta ochishingiz mumkin.';

  @override
  String get onboardNext => 'Keyingi';

  @override
  String get onboardStart => 'Boshlash';

  @override
  String get onboardSkip => 'Oʻtkazib yuborish';

  @override
  String changesTitle(String date) {
    return 'Oldingi tahlildan beri ($date)';
  }

  @override
  String get changesPrice => 'Narx';

  @override
  String get changesNoMajor => 'Istiqbol sezilarli darajada oʻzgarmadi.';

  @override
  String get changesPreviousSummary => 'Oldingi xulosa';

  @override
  String get telemetryTitle => 'WhatStock ilovasini yaxshilashga yordam bering';

  @override
  String get telemetryBody =>
      'Anonim foydalanish statistikasi va nosozlik hisobotlarini ulashing: qaysi funksiyalardan foydalanilayotgani va nima xato ketgani. Aksiyalaringiz, tahlillaringiz yoki shaxsiy maʼlumotlaringiz hech qachon yuborilmaydi. Buni istalgan vaqtda Sozlamalarda oʻzgartirishingiz mumkin.';

  @override
  String get telemetryAllow => 'Ruxsat berish';

  @override
  String get telemetryDecline => 'Yoʻq, rahmat';

  @override
  String get telemetrySetting => 'Anonim statistika va nosozlik hisobotlari';

  @override
  String get telemetrySettingHint =>
      'Funksiyalardan qanchalik tez-tez foydalanilishi va xatolik hisobotlari – shaxsiy maʼlumotlarsiz, qidiruv va tahlillaringiz mazmunisiz.';

  @override
  String get askButton => 'Bu tahlil haqida soʻrang';

  @override
  String askTitle(String symbol) {
    return '$symbol haqida savollar';
  }

  @override
  String get askIntro =>
      'Tahlil haqida istalgan narsani soʻrang: biror xavf nimani anglatadi, istiqbolni nima oʻzgartirishi mumkin, raqam qanday hisoblangan. Javoblar shu tahlilga asoslanadi va investitsiya maslahati emas.';

  @override
  String get askHint => 'Savol bering…';

  @override
  String get askSend => 'Yuborish';

  @override
  String get askThinking => 'Oʻylamoqda…';

  @override
  String get askSuggest1 => 'Eng katta xavf nima?';

  @override
  String get askSuggest2 => 'Istiqbolni nima oʻzgartirishi mumkin?';

  @override
  String get askSuggest3 => 'Sodda qilib tushuntirib ber';

  @override
  String get askMaxReached =>
      'Bu tahlil uchun bu oxirgi savol edi. Yana savol berish uchun yangi tahlil yarating.';

  @override
  String get errAskLimit =>
      'Bugungi savollar limitiga yetdingiz. Iltimos, ertaga qayta urinib koʻring.';

  @override
  String get eventTomorrow => 'Ertaga';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days kundan keyin',
      one: '1 kundan keyin',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Choraklik natijalar';

  @override
  String get eventBeforeOpen => 'bozor ochilishidan oldin';

  @override
  String get eventAfterClose => 'bozor yopilgandan keyin';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS prognozi: $value';
  }

  @override
  String get eventFromAnalysis => 'Tahlilingizdan';

  @override
  String get eventDividend => 'Kutilayotgan dividend';

  @override
  String get eventDividendEstimate =>
      'Siz yozgan toʻlovlar asosida hisoblangan';

  @override
  String get eventsHint =>
      'Sevimli va portfelingizdagi aksiyalarning keyingi 90 kundagi hisobot sanalari, tahlillaringiz belgilagan sanali voqealar hamda siz yozgan toʻlovlar asosida kutilayotgan dividendlar.';

  @override
  String get eventsEmpty =>
      'Keyingi 90 kunda sanali voqealar yoʻq. Hisobot sanalarini shu yerda koʻrish uchun sevimlilar yoki portfel aksiyalarini qoʻshing; yozilgan dividendlar keyingi kutilayotgan toʻlovni koʻrsatadi.';

  @override
  String get compareTitle => 'Taqqoslash';

  @override
  String get compareAdd => 'Aksiya qoʻshish';

  @override
  String get compareRemove => 'Olib tashlash';

  @override
  String get compareTickerHint => 'Tiker, masalan MSFT';

  @override
  String get compareHint =>
      'Asosiy koʻrsatkichlar yonma-yon; har bir qatordagi eng yaxshi qiymat ajratib koʻrsatilgan. Summalar har bir aksiyaning oʻz valyutasida.';

  @override
  String get compareNoAnalysis => 'Hali tahlil yoʻq';

  @override
  String get portfolioDividends => 'Yillik dividend';

  @override
  String portfolioDividendYield(String percent) {
    return 'Daromadlilik $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Kutilayotgan yillik dividend soʻnggi 12 oyda toʻlangan dividendlarga asoslanadi; kelgusi toʻlovlar kafolatlanmaydi.';

  @override
  String positionDividend(String amount) {
    return 'Dividend: yiliga $amount';
  }

  @override
  String get chartAvgCost => 'Sizning oʻrt.';

  @override
  String get chartAlertLevel => 'Bildirishnoma';

  @override
  String get marketsToday => 'Bugungi bozorlar';

  @override
  String get notesTitle => 'Mening qaydlarim';

  @override
  String get notesHint =>
      'Nega sotib oldingiz, nimani kuzatyapsiz, nima sizni sotishga undaydi?';

  @override
  String get notesInfo =>
      'Faqat shu qurilmada saqlanadi. AI tahlili qaydlaringizni hisobga oladi.';

  @override
  String notesSaved(String date) {
    return 'Saqlandi: $date';
  }

  @override
  String get peersTitle => 'O\'xshash kompaniyalar';

  @override
  String get portfolioExport => 'CSV sifatida eksport qilish';

  @override
  String get portfolioImport => 'CSV dan import qilish';

  @override
  String get portfolioImportHint =>
      'Har bir qatorga bitta xaridni joylang: tiker, miqdor, narx, valyuta, sana (YYYY-OO-KK). Ustunlar vergul, nuqtali vergul yoki tab bilan ajratilishi mumkin; sarlavha qatori ixtiyoriy.';

  @override
  String get portfolioImportButton => 'Import qilish';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta xarid qoʻshildi',
      one: '1 ta xarid qoʻshildi',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta qator oʻtkazib yuborildi',
      one: '1 ta qator oʻtkazib yuborildi',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Portfel, sevimlilar, narx bildirishnomalari va qaydlar barcha qurilmalaringizda sinxronlanadi.';

  @override
  String syncLast(String time) {
    return 'Oxirgi sinxronlash: $time';
  }

  @override
  String get syncNow => 'Hozir sinxronlash';

  @override
  String get syncFailed =>
      'Sinxronlab bo‘lmadi. Avtomatik ravishda qayta urinib ko‘riladi.';

  @override
  String get alertEmailTitle => 'Bildirishnoma ishga tushganda e-pochta';

  @override
  String get alertEmailOn =>
      'Bildirishnomalaringizni har bir necha daqiqada tekshiramiz va ilova yopiq boʻlsa ham sizga e-pochta yuboramiz.';

  @override
  String get alertEmailSignIn =>
      'Ilova yopiq boʻlsa ham bildirishnomalarni e-pochta orqali olish uchun Sozlamalarda e-pochtangiz bilan kiring.';

  @override
  String get portfolioHistory => 'Qiymat dinamikasi';

  @override
  String get portfolioReviewTitle => 'Portfelning AI tahlili';

  @override
  String get portfolioReviewIntro =>
      'AI butun portfelingizni koʻrib chiqadi: jamlanish, soha va valyuta xavfi, aksiyalaringizning umumiy xavflari va dividendlar. 1 ta tahlil sarflanadi.';

  @override
  String get portfolioReviewButton => 'Portfelimni tahlil qilish';

  @override
  String get portfolioReviewAgain => 'Qayta tahlil qilish';

  @override
  String get portfolioReviewWorking => 'Portfelingiz tahlil qilinmoqda…';

  @override
  String get digestTitle => 'Elektron pochta orqali haftalik xulosa';

  @override
  String get digestHint =>
      'Har dushanba: sevimlilaringiz va portfelingiz oʻtgan hafta qanday oʻzgargani hamda ularning yaqinlashayotgan hisobot sanalari.';

  @override
  String get benchmarkTitle => 'S&P 500 bilan taqqoslash';

  @override
  String get benchmarkYours => 'Xaridlaringiz';

  @override
  String get benchmarkIndex => 'Shu summalar S&P 500da';

  @override
  String benchmarkAhead(String points) {
    return 'Indeksdan $points foiz punkt yaxshiroq';
  }

  @override
  String benchmarkBehind(String points) {
    return 'Indeksdan $points foiz punkt ortda';
  }

  @override
  String get benchmarkHint =>
      'Goʻyo har bir xarid oʻsha kuni S&P 500 indeks fondiga kiritilgandek. Dividendlarsiz; oʻtgan daromad kelajakdagi daromadni bashorat qilmaydi.';

  @override
  String get portfolioSell => 'Sotish';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbol sotish';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Bir aksiyaning sotish narxi ($currency)';
  }

  @override
  String get portfolioSellDate => 'Sotish sanasi';

  @override
  String get portfolioSellAll => 'Hammasi';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Sizda $quantity bor';
  }

  @override
  String get portfolioSold => 'Sotildi';

  @override
  String get portfolioRealized => 'Amalga oshgan';

  @override
  String get portfolioClosed => 'Yopilgan pozitsiyalar';

  @override
  String get portfolioClosedNote => 'Barcha aksiyalar sotilgan';

  @override
  String get portfolioTransactions => 'Operatsiyalar';

  @override
  String get portfolioRealizedByYear => 'Yillar boʻyicha amalga oshgan foyda';

  @override
  String get portfolioRealizedHint =>
      'Sotuvlar avval eng eski xaridlaringiz bilan moslashtiriladi (FIFO) va bugungi valyuta kursida hisoblanadi. Soliq deklaratsiyasi uchun brokeringiz koʻchirmasidan foydalaning.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Ushbu tahlildan keyin yangi choraklik hisobot eʼlon qilindi ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Yangi hisobot';

  @override
  String get portfolioImportBrokers =>
      'Revolut, Trading 212 va Interactive Brokers eksportlari ham sotuvlar bilan birga taniladi; dividendlar va depozitlar o‘tkazib yuboriladi.';

  @override
  String get portfolioImportFile => 'Fayl tanlash';

  @override
  String offlineBanner(String time) {
    return 'Aloqa yo‘q – oxirgi saqlangan ma’lumotlar ko‘rsatilmoqda ($time).';
  }

  @override
  String get glossMarketCap =>
      'Butun kompaniyaning birjadagi qiymati: aksiya narxi × aksiyalar soni.';

  @override
  String get glossSharesOutstanding =>
      'Kompaniya nechta aksiya chiqargan. Soni oshsa, har bir aksiyaga kichikroq ulush toʻgʻri keladi; qayta sotib olish uni kamaytiradi.';

  @override
  String get glossPeTrailing =>
      'Narx ÷ oxirgi 12 oyda bir aksiyaga toʻgʻri keladigan foyda: hozirgi foydaning necha yili uchun toʻlayotganingiz. Pastrogʻi arzonroq, lekin tez oʻsayotgan kompaniyalarda P/E odatda yuqori.';

  @override
  String get glossPeForward =>
      'P/E kabi, lekin tahlilchilar keyingi 12 oyga kutayotgan foyda bilan. Oʻtgan davr P/E dan past boʻlsa, foyda oʻsishi kutilmoqda.';

  @override
  String get glossPb =>
      'Narx ÷ bir aksiyaga toʻgʻri keladigan balans qiymati (aktivlar minus qarzlar). Taxminan 1 bozor kompaniyani qogʻozdagi mulki qadar baholashini bildiradi.';

  @override
  String get glossPs =>
      'Bozor qiymati ÷ yillik tushum. Hali foydasi kam yoki umuman yoʻq kompaniyalar uchun foydali; bir soha ichida solishtiring.';

  @override
  String get glossEvToFcf =>
      'Qarz bilan birga kompaniya qiymati (EV) ÷ investitsiyalardan keyin bir yilda ishlab topadigan pul. Pastroq boʻlsa, narxga koʻproq pul olasiz.';

  @override
  String get glossPeg =>
      'P/E ÷ kutilayotgan yillik foyda oʻsishi (%). Taxminan 1 koʻpincha adolatli hisoblanadi; P/E ni oʻsish nuqtai nazaridan koʻrsatadi.';

  @override
  String get glossEps =>
      'Oxirgi 12 oyda bir aksiyaga toʻgʻri keladigan foyda. Yillar davomida oʻsib boruvchi EPS sogʻlom kompaniyaning eng kuchli belgilaridan biri.';

  @override
  String get glossBeta =>
      'Aksiya bozor bilan birga qanchalik harakatlanadi: 1 = bozor kabi, 1,5 = taxminan 50% kattaroq tebranishlar, 1 dan past = tinchroq.';

  @override
  String get glossRevenueTtm =>
      'Oxirgi 12 oydagi umumiy savdo, har qanday xarajatlardan oldin.';

  @override
  String get glossNetIncomeTtm =>
      'Oxirgi 12 oyda barcha xarajatlar, foizlar va soliqlardan keyin qolgan foyda.';

  @override
  String get glossGrossMargin =>
      'Mahsulotlarning bevosita xarajatlaridan keyin qolgan tushum ulushi. Yuqori marja koʻpincha narx belgilash kuchini bildiradi.';

  @override
  String get glossOperatingMargin =>
      'Biznesni yuritish xarajatlaridan (ish haqi, ijara, marketing) keyin, foizlar va soliqlardan oldin qolgan tushum ulushi.';

  @override
  String get glossNetMargin =>
      'Tushumning yakuniy foydaga aylanadigan ulushi. 20% har 100 savdodan 20 tasi foyda ekanini bildiradi.';

  @override
  String get glossRoe =>
      'Kapital rentabelligi: yillik foyda ÷ egalarning kapitali. Rahbariyat aksiyadorlar pulidan qanchalik yaxshi foydalanishini koʻrsatadi; taxminan 15% dan yuqorisi kuchli.';

  @override
  String get glossRoa =>
      'Aktivlar rentabelligi: yillik foyda ÷ kompaniyaning barcha mulki. Bir soha ichida solishtiring.';

  @override
  String get glossDebtToEquity =>
      'Qarzlar ÷ egalarning kapitali. Yuqoriroq boʻlsa, qarz pul koʻproq: stavkalar oshganda yoki ishlar sekinlashganda xavf kattaroq.';

  @override
  String get glossCurrentRatio =>
      'Qisqa muddatli aktivlar ÷ bir yil ichida toʻlanishi kerak boʻlgan majburiyatlar. 1 dan yuqori boʻlsa, kompaniya yaqin majburiyatlarini qoplay oladi.';

  @override
  String get glossRevenueGrowth =>
      'Tushum bir yil oldingiga nisbatan qanchaga oshgan.';

  @override
  String get glossEpsGrowth =>
      'Bir aksiyaga toʻgʻri keladigan foyda bir yil oldingiga nisbatan qanchaga oshgan.';

  @override
  String get glossDividendYield =>
      'Yillik dividend ÷ aksiya narxi: toʻlagan summangizga nisbatan foizda yiliga oladigan pul daromadingiz.';

  @override
  String get glossDividendPerShare =>
      'Oxirgi yilda bir aksiyaga toʻlangan dividend.';

  @override
  String get glossPayoutRatio =>
      'Foydaning dividend sifatida toʻlanadigan ulushi. 100% dan yuqori boʻlsa, kompaniya topganidan koʻproq toʻlaydi, bu kamdan-kam uzoq davom etadi.';

  @override
  String get portfolioBeta => 'Portfel betasi';

  @override
  String get glossPortfolioBeta =>
      'Aksiyalaringizning qiymatiga koʻra tortilgan betasi: bozor 1% harakatlanganda aksiyalaringiz taxminan necha foiz harakatlanishini koʻrsatadi. 1 dan yuqori boʻlsa, ular bozordan koʻproq tebranadi, 1 dan past boʻlsa — kamroq. Naqd pul hisobga olinmaydi.';

  @override
  String get portfolioTop3 => 'Eng yirik 3 pozitsiya';

  @override
  String get glossPortfolioTop3 =>
      'Aksiyalaringiz qiymatining qancha qismi eng yirik uchta pozitsiyangizda ekanini koʻrsatadi. U qanchalik yuqori boʻlsa, bitta kompaniya haqidagi yomon xabar butun portfelga shunchalik koʻp zarar yetkazishi mumkin.';

  @override
  String get glossDividendGrowth5y =>
      'Oxirgi besh yilda bir aksiyaga toʻgʻri keladigan dividend yiliga oʻrtacha qanchaga oshgani. Barqaror oʻsish odatda kompaniya oʻz pul oqimiga ishonishini bildiradi; qisqartirish koʻpincha ogohlantiruvchi belgi hisoblanadi.';

  @override
  String get glossYieldOnCost =>
      'So\'nggi 12 oyda olingan dividendlar hali ham saqlab turgan aksiyalaringiz uchun to\'lagan summangizga bo\'lingan. Dividend daromadliligidan farqli o\'laroq, u bugungi narxga emas, o\'zingizning xarid narxingizga nisbatan o\'lchanadi.';

  @override
  String get glossTitle => 'Bu nimani anglatadi?';

  @override
  String get watchNewsTitle => 'Aksiyalaringiz yangiliklari';

  @override
  String get undo => 'Qaytarish';

  @override
  String get watchSort => 'Saralash';

  @override
  String get watchSortOwn => 'Mening tartibim';

  @override
  String get watchSortGainers => 'Eng koʻp oʻsganlar avval';

  @override
  String get watchSortLosers => 'Eng koʻp tushganlar avval';

  @override
  String get watchSortName => 'Tiker boʻyicha (A–Z)';

  @override
  String get watchHint =>
      'Tartibni oʻzgartirish uchun tutqichni torting, olib tashlash uchun chapga suring. Chiziq oxirgi 30 kunni koʻrsatadi.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: tahlilingiz tayyor.';
  }

  @override
  String alertFromCost(String price) {
    return 'O‘rtacha xarid narxingizdan ($price):';
  }

  @override
  String get briefTitle => 'Bugun aksiyalaringiz bilan';

  @override
  String get briefButton => 'Bugunni xulosa qilish';

  @override
  String get briefHint =>
      'Portfelingiz va sevimlilaringiz bugun qanday harakatlangani va so‘nggi yangiliklar ular haqida nima deyotgani haqida qisqa AI xulosasi. Tahlil sarflanmaydi.';

  @override
  String get briefRefresh => 'Yangilash';

  @override
  String get sectionEarnings => 'Choraklik natijalar';

  @override
  String earningsNext(String date) {
    return 'Keyingi hisobot: $date';
  }

  @override
  String get earningsExpected => 'Kutilgan EPS';

  @override
  String get earningsReported => 'Eʼlon qilingan EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Soʻnggi $total chorakdan $beats tasida kutilgan EPS darajasida yoki undan yuqori',
      one:
          '1 chorakdan $beats tasida kutilgan EPS darajasida yoki undan yuqori',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol ertaga choraklik natijalarini e’lon qiladi';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol bugun choraklik natijalarini e’lon qiladi';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return '$symbol: bugun dividend kutilmoqda';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Taxminan $amount. Kelgach, uni portfelingizga yozib qoʻying.';
  }

  @override
  String get dividendRemindersTitle => 'Dividend eslatmalari';

  @override
  String get dividendRemindersSubtitle =>
      'Siz yozgan toʻlovlar maromiga koʻra dividend kutilayotgan kuni, uni yozib qoʻyishingiz uchun bildirishnoma';

  @override
  String get earningsRemindersTitle => 'Natijalar eslatmalari';

  @override
  String get earningsRemindersSubtitle =>
      'Sevimlilaringiz yoki portfelingizdagi aksiyalar choraklik natijalarini e’lon qilishidan bir kun oldin bildirishnoma';

  @override
  String addAllToFavorites(int count) {
    return 'Barchasini sevimlilarga qoʻshish ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Skrinshotdan import qilish';

  @override
  String get holdingsReading => 'Pozitsiyalaringiz oʻqilmoqda…';

  @override
  String get holdingsReviewTitle => 'Topilgan pozitsiyalar';

  @override
  String get holdingsReviewHint =>
      'Qoʻshishdan oldin raqamlarni tekshiring. Narx — bitta aksiya uchun oʻrtacha xarid narxingiz, bugungi narx emas.';

  @override
  String get holdingsNoPrice => 'Rasmda oʻrtacha xarid narxi yoʻq';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta pozitsiya qoʻshish',
      one: '1 ta pozitsiya qoʻshish',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Bu rasmda aksiya pozitsiyalari topilmadi. Brokeringizdagi pozitsiyalar yoki aktivlar sahifasining skrinshotini sinab koʻring.';

  @override
  String get week52Range => '52 haftalik diapazon';

  @override
  String week52BelowHigh(String percent) {
    return '52 haftalik maksimumdan $percent past';
  }

  @override
  String get week52AtHigh => '52 haftalik maksimumda';

  @override
  String get alertKindTrailing => 'Choʻqqidan tushsa';

  @override
  String get alertTrailingPercent => 'Choʻqqidan tushish (%)';

  @override
  String get alertTrailingHint =>
      'Narxni yuqoriga kuzatib boradi: oʻrnatilgandan beri eng yuqori darajasidan narx shuncha tushsa, xabar beradi.';

  @override
  String alertDescTrailing(String percent) {
    return 'Choʻqqidan $percent tushish';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'hozirgacha choʻqqi: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol choʻqqidan $percent ga tushdi';
  }

  @override
  String get sectionInsiders => 'Insayderlar bitimlari';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta xarid',
      one: '1 ta xarid',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta sotuv',
      one: '1 ta sotuv',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Sof: $shares aksiya';
  }

  @override
  String get insiderBuy => 'Sotib oldi';

  @override
  String get insiderSell => 'Sotdi';

  @override
  String get insiderHint =>
      'So‘nggi 90 kunda rahbarlar va direktorlar tomonidan ochiq bozorda amalga oshirilgan xaridlar va sotuvlar (SEC Form 4). Opsionlarni amalga oshirish va mukofot aksiyalari hisobga olinmaydi.';

  @override
  String get insiderNone =>
      'So‘nggi 90 kunda ochiq bozorda insayderlarning xaridi yoki sotuvi bo‘lmagan.';

  @override
  String get analystTrend => 'Fikrlar oyma-oy qanday o\'zgardi';

  @override
  String get watchListAll => 'Hammasi';

  @override
  String get watchListNew => 'Yangi roʻyxat';

  @override
  String get watchListName => 'Roʻyxat nomi';

  @override
  String get watchListRename => 'Roʻyxat nomini oʻzgartirish';

  @override
  String get watchListDelete => 'Roʻyxatni oʻchirish';

  @override
  String get watchListAddTo => 'Roʻyxatga qoʻshish';

  @override
  String get watchListEmpty =>
      'Bu roʻyxatda hali aksiyalar yoʻq. Qoʻshish uchun aksiya yonidagi roʻyxat tugmasini bosing.';

  @override
  String get portfolioAskTitle => 'Portfelingiz haqida savollar';

  @override
  String get rangeYtd => 'Bu yil';

  @override
  String get backupTitle => 'Zaxira nusxa';

  @override
  String get backupSave => 'Zaxira nusxani saqlash';

  @override
  String get backupSaveHint =>
      'Sevimlilar, roʻyxatlar, portfel, bildirishnomalar va qaydlaringiz bitta faylda.';

  @override
  String get backupRestore => 'Zaxira nusxadan tiklash';

  @override
  String get backupRestoreHint =>
      'Fayldagi narsalarni qoʻshadi; hozirgi maʼlumotlaringizdan hech narsa oʻchirilmaydi.';

  @override
  String get backupRestored => 'Zaxira nusxa tiklandi.';

  @override
  String get backupInvalid => 'Bu fayl WhatStock zaxira nusxasi emas.';

  @override
  String get allocationPositions => 'Aksiyalar';

  @override
  String get allocationSectors => 'Sektorlar';

  @override
  String get allocationCurrencies => 'Valyutalar';

  @override
  String get compareReturn1y => '1 yillik daromadlilik';

  @override
  String get compareFromHigh => '52 haftalik maksimumdan masofa';

  @override
  String get briefAutoTitle => 'Har tong kunlik xulosa';

  @override
  String get briefAutoSubtitle =>
      '«Bugun aksiyalaringiz bilan» ilova ishlab turganda soat 7:00 dan keyin avtomatik tayyorlanadi; kompyuterlarda bu haqda bildirishnoma xabar beradi. Kunlik savollar limitingizdan sarflanadi, tahlil emas.';

  @override
  String get targetsButton => 'Maqsadli taqsimot';

  @override
  String get targetsTitle => 'Maqsadli taqsimot';

  @override
  String get targetsHint =>
      'Har bir aksiya portfelning qancha ulushini egallashi kerakligini belgilang. Maqsad bo‘lmasa, maydonni bo‘sh qoldiring. Keyin ilova unga erishish uchun nimani sotib olish yoki sotish kerakligini ko‘rsatadi.';

  @override
  String targetsSum(String percent) {
    return 'Jami: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Sotib olish ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Sotish ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Maqsadda';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol kutilgan EPS’dan oshdi';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol kutilgan EPS’ga yetmadi';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'Eʼlon qilingan EPS $actual, kutilgan $estimate';
  }

  @override
  String get newsExplain => 'Bu nimani anglatadi?';

  @override
  String get watchAlertAll => 'Katta kunlik oʻzgarishlar haqida ogohlantirish';

  @override
  String get watchAlertAllHint =>
      'Bu roʻyxatdagi har bir aksiya uchun narx ogohlantirishi: bir kunda shuncha yuqoriga yoki pastga oʻzgarsa, xabar beradi. Allaqachon ogohlantirishi bor aksiyalar oʻzinikini saqlaydi.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta ogohlantirish oʻrnatildi',
      one: '1 ta ogohlantirish oʻrnatildi',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized =>
      'Amalga oshgan foydani eksport qilish (CSV)';

  @override
  String get portfolioAnnualReturn => 'Yillik daromadlilik';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / yil';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Pul oqimlari boʻyicha tortilgan yillik daromadlilik (XIRR): qachon sotib olganingiz va sotganingizni hisobga oladi, shuning uchun keyinroq qoʻshilgan pul uni buzmaydi. Birinchi xaridingizga kamida bir yil toʻlganda koʻrsatiladi; dividendlar kiritilmagan.';

  @override
  String get eventsAddToCalendar => 'Taqvimga qoʻshish (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Portfel ogohlantirishi';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Butun portfelingiz bir kunda shuncha oʻzgarganda bildirishnoma.';

  @override
  String get portfolioMoveAlertOff => 'Oʻchiq';

  @override
  String portfolioMoveUp(String percent) {
    return 'Portfelingiz bugun $percent ga oʻsdi';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Portfelingiz bugun $percent ga tushdi';
  }

  @override
  String get whatIfTitle => 'Sarmoya kiritganingizda nima boʻlardi?';

  @override
  String get whatIfAmount => 'Summa';

  @override
  String whatIfResult(String amount, String period) {
    return '$period oldin kiritilgan $amount bugun shuncha boʻlardi';
  }

  @override
  String get whatIfNote =>
      'Faqat aksiya narxiga asoslangan: dividendlar, komissiyalar va soliqlar hisobga olinmagan. Oʻtgan daromad kelajakdagisini bashorat qilmaydi.';

  @override
  String get watchShare => 'Roʻyxatni ulashish';

  @override
  String get watchImport => 'Tiker qoʻshish';

  @override
  String get watchImportHint =>
      'Tikerlarni vergul, boʻsh joy yoki yangi qator bilan ajratib joylang – masalan, kimdir siz bilan ulashgan roʻyxatni.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta aksiya qoʻshildi',
      one: '1 ta aksiya qoʻshildi',
      zero: 'Yangi aksiyalar yoʻq',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Eng yiriklari avval';

  @override
  String get positionsSortGain => 'Eng yuqori umumiy daromad avval';

  @override
  String get positionsSortToday => 'Bugungi eng yaxshilari avval';

  @override
  String get chartMyBuys => 'Xaridlaringiz';

  @override
  String get chartMySells => 'Sotuvlaringiz';

  @override
  String get shortcutsTitle => 'Tezkor tugmalar';

  @override
  String usMarketOpen(String time) {
    return 'AQSh bozori ochiq · yopilishiga $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'AQSh bozori yopiq · ochilishiga $time';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes daq';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours soat $minutes daq';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days kun $hours soat';
  }

  @override
  String get dividendGoalSet => 'Oylik dividend maqsadini belgilash';

  @override
  String get dividendGoalTitle => 'Oylik dividend maqsadi';

  @override
  String get dividendGoalAmount => 'Oyiga dividend';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Bugungi daromadlilikda oyiga taxminan $amount · $percent · maqsad: $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Bugungi daromadlilikda oyiga taxminan $amount · Maqsadga erishildi: $goal';
  }

  @override
  String get portfolioGoalSet => 'Maqsad belgilash';

  @override
  String get portfolioGoalTitle => 'Portfel maqsadi';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · maqsad: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Maqsadga erishildi: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Maqsadni olib tashlash';

  @override
  String get alertEdit => 'Bildirishnomani tahrirlash';

  @override
  String get positionOpenLots => 'Hali ham qoʻlingizda (avval eng eskilari)';

  @override
  String get lotRemoved => 'Operatsiya oʻchirildi';

  @override
  String get alertDeleted => 'Ogohlantirish oʻchirildi';

  @override
  String get alertsClearTriggered =>
      'Ishga tushgan ogohlantirishlarni tozalash';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta ogohlantirish tozalandi',
      one: '1 ta ogohlantirish tozalandi',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Bosh ekran';

  @override
  String get allocationCountries => 'Mamlakatlar';

  @override
  String get newsExplainNoteResearch =>
      'AI izohi: faktlarni internetda qidiradi, maqolani ochadi va manba qanchalik ishonchli ekanini baholaydi. Bu investitsiya maslahati emas. Kunlik savollar limitingizdan sarflanadi, tahlil emas.';

  @override
  String get sourceOfficial => 'Rasmiy';

  @override
  String get sourcePressRelease => 'Press-reliz';

  @override
  String get sourceMajorNews => 'Yirik OAV';

  @override
  String get sourceOpinion => 'Fikr';

  @override
  String get earningsSummaryButton => 'Soʻnggi hisobotda nima bor edi?';

  @override
  String get earningsSummaryNote =>
      'Kompaniyaning natijalar haqidagi eʼloni va internetda topgan matbuot xabarlarining AI xulosasi. Bu investitsiya maslahati emas. Kunlik savollar limitingizdan sarflanadi, tahlil emas.';

  @override
  String get compareLastSurprise => 'Soʻnggi chorak EPS vs kutilgan';

  @override
  String get compareNextReport => 'Keyingi hisobot';

  @override
  String get resolvingDescription =>
      'Qaysi aksiyani nazarda tutganingiz aniqlanmoqda…';

  @override
  String get instrumentTitle => 'Bu instrument haqida';

  @override
  String get instrumentHint =>
      'Bu simvol uchun kompaniya profili yoʻq – bu ETF, fond yoki depozitar tilxat boʻlishi mumkin. AI dan bu nima, tarkibida nima bor va qancha turishini soʻrang.';

  @override
  String get instrumentAsk => 'Bu nima?';

  @override
  String get instrumentNote =>
      'Emitentning fond sahifasi va internetda topgan moliyaviy saytlarga asoslangan AI izohi. Bu investitsiya maslahati emas. Kunlik savollar limitingizdan sarflanadi, tahlil emas.';

  @override
  String suggestAskAi(String query) {
    return 'AI-dan soʻrang: “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return '$symbols uchun joriy narx yoʻq.';
  }

  @override
  String get eventsRecentResults => 'Yaqinda eʼlon qilingan natijalar';

  @override
  String get saveToNotes => 'Qaydlarimga saqlash';

  @override
  String get savedToNotes => 'Qaydlaringizga saqlandi';

  @override
  String get portfolioDividendsReceived => 'Olingan dividendlar';

  @override
  String get portfolioDividendsThisYear => 'Shu yil';

  @override
  String get portfolioDividendsAllTime => 'Jami';

  @override
  String get portfolioAddDividend => 'Dividend qoʻshish';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Olingan summa ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Toʻlov sanasi';

  @override
  String get portfolioDividendsEmpty =>
      'Hali dividendlar yozilmagan. Ularni qoʻlda qoʻshing yoki brokeringiz eksportini import qiling – undagi dividend qatorlari ham olinadi.';

  @override
  String get portfolioSplit => 'Aksiyalarni boʻlish';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Aksiyalarni boʻlish: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Boʻlishdan oldingi sanadagi xaridlar va sotuvlar toʻgʻrilanadi: aksiyalar soni koʻpaytiriladi, bir aksiya narxi esa boʻlinadi, shuning uchun xarajat oʻzgarmaydi.';

  @override
  String get portfolioSplitRatio => 'Nisbat (yangi : eski)';

  @override
  String get portfolioSplitRatioError =>
      '10:1 kabi nisbat kiriting, yoki teskari boʻlish uchun 1:10.';

  @override
  String get portfolioSplitDate => 'Boʻlish sanasi';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Aksiyalarni boʻlish $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Aksiyalarni boʻlish oʻchirildi';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta aksiya boʻlinishi qoʻshildi',
      one: '1 ta aksiya boʻlinishi qoʻshildi',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dividend qoʻshildi',
      one: '1 dividend qoʻshildi',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Dividendlarni eksport qilish (CSV)';

  @override
  String get portfolioDividendDeleted => 'Dividend oʻchirildi';

  @override
  String get portfolioDividendsHint =>
      'Summalar hisobingizga kelgan holatda, toʻlov valyutasida; jami bugungi kurs boʻyicha konvertatsiya qilinadi. Soliq deklaratsiyasi uchun brokeringiz hisobotidan foydalaning.';

  @override
  String get awayTitle => 'Siz yoʻq boʻlganda';

  @override
  String awaySince(String when) {
    return '${when}dan beri';
  }

  @override
  String get awayQuiet => 'Katta oʻzgarish boʻlmadi.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ta ogohlantirish ishga tushdi',
      one: '1 ta ogohlantirish ishga tushdi',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Natijalar eʼlon qilindi: $symbols';
  }

  @override
  String get moveWhyButton => 'Bugun nega harakatlanmoqda?';

  @override
  String moveWhyTitle(String percent) {
    return 'Bugun $percent';
  }

  @override
  String get moveWhyNote =>
      'Internetdan topilgan bugungi yangiliklarga asoslangan AI izohi; haqiqiy sabab noma\'lum yoki boshqacha bo\'lishi mumkin. Investitsiya maslahati emas. Tahlil emas, kunlik savol limitingizni ishlatadi.';

  @override
  String get sectionTechnical => 'Texnik manzara';

  @override
  String get labelSma50 => '50 kunlik o\'rtacha';

  @override
  String get labelSma200 => '200 kunlik o\'rtacha';

  @override
  String get labelRsi => 'RSI (14 kun)';

  @override
  String get labelVolatility30 => 'O\'zgaruvchanlik (30 kun)';

  @override
  String techAbove(String percent) {
    return '$percent yuqorida';
  }

  @override
  String techBelow(String percent) {
    return '$percent pastda';
  }

  @override
  String get techOverbought => 'haddan ortiq sotib olingan';

  @override
  String get techOversold => 'haddan ortiq sotilgan';

  @override
  String get techNeutral => 'neytral';

  @override
  String get techGoldenCross =>
      '50 kunlik o\'rtacha 200 kunlik o\'rtachadan yuqorida – klassik talqinga ko\'ra o\'sish trendi.';

  @override
  String get techDeathCross =>
      '50 kunlik o\'rtacha 200 kunlik o\'rtachadan pastda – klassik talqinga ko\'ra pasayish trendi.';

  @override
  String get glossSma50 =>
      'So\'nggi 50 savdo kunining yopilish narxi o\'rtachasi. Undan yuqoridagi narx ko\'pincha qisqa muddatli kuch, pastdagisi zaiflik deb o\'qiladi.';

  @override
  String get glossSma200 =>
      'So\'nggi 200 savdo kunining yopilish narxi o\'rtachasi – uzoq muddatli trendning klassik chizig\'i. Ko\'p investorlar undan yuqoridagi narxni uzoq muddatli o\'sish trendi deb hisoblaydi.';

  @override
  String get glossRsi =>
      'Nisbiy kuch indeksi: so\'nggi o\'sishlarni so\'nggi pasayishlar bilan 0–100 shkalasida solishtiradi. 70 dan yuqorida aksiya ko\'pincha haddan ortiq sotib olingan (tez o\'sdi), 30 dan pastda haddan ortiq sotilgan deyiladi – lekin kuchli trend u yerda uzoq qolishi mumkin.';

  @override
  String get glossVolatility =>
      'Narx kundan kunga qanchalik o\'zgarishi, bir yilga hisoblangan: 20% odatiy yilda taxminan ±20% oralig\'ida harakat qilishini bildiradi. Yuqori o\'zgaruvchanlik ikki tomonga ham kattaroq harakatlarni bildiradi.';

  @override
  String get techNote =>
      'Kunlik yopilish narxlaridan hisoblangan. Texnik signallar o\'tmishni tasvirlaydi, kelajakni emas.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$count pozitsiyadan $above tasi o‘z 200 kunlik o‘rtachasidan yuqori';
  }

  @override
  String get watchSignalsTitle => 'Signallar';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · haddan ortiq sotilgan';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · haddan ortiq sotib olingan';
  }

  @override
  String get signalCrossedAbove => '200 kunlik o\'rtachadan yuqoriga chiqdi';

  @override
  String get signalCrossedBelow => '200 kunlik o\'rtachadan pastga tushdi';

  @override
  String get signalAlertsTitle => 'Texnik signal bildirishnomalari';

  @override
  String get signalAlertsSubtitle =>
      'Kuniga bir marta, siz kuzatayotgan aksiya haddan ortiq sotilgan yoki haddan ortiq sotib olingan (RSI) holatga kirganda, yoki uning narxi 200 kunlik o\'rtachani kesib o\'tganda.';

  @override
  String get signalAlertsNotification => 'Texnik signallar';

  @override
  String get glossaryPageTitle => 'Atamalar lug‘ati';

  @override
  String get glossaryPageSubtitle =>
      'Ilova ko‘rsatadigan har bir ko‘rsatkichning sodda izohi, P/E dan RSI gacha';

  @override
  String get glossarySearchHint => 'Lug‘atdan qidirish';

  @override
  String get portfolioCash => 'Naqd pul';

  @override
  String get portfolioCashTitle => 'Naqd pul qoldigʻi';

  @override
  String get portfolioCashHint =>
      'Brokeringizdagi investitsiya qilinmagan pul, valyuta boʻyicha. Umumiy qiymat va taqsimotga kiradi; daromadlilikka kirmaydi.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Summa ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Naqd pul qoldigʻini belgilash';

  @override
  String get portfolioDividendsByMonth => 'Oylar boʻyicha';

  @override
  String get dividendsLegendReceived => 'Olingan';

  @override
  String get dividendsLegendExpected => 'Kutilayotgan';

  @override
  String get portfolioDividendsExpected => 'Keyingi kutilayotgan';

  @override
  String get portfolioDividendsExpectedNote =>
      'Siz yozgan toʻlovlarning sana va summalari asosida hisoblangan; kompaniyalar ularni oʻzgartirishi yoki toʻlamasligi mumkin.';

  @override
  String portfolioDividendAround(String date) {
    return 'taxminan $date';
  }
}
