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
  String get homeTagline => 'Aksiyani suratga oling va u haqida hamma narsani bilib oling.';

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
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count tahlilchi', one: '1 tahlilchi');
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
  String get errMissingAnthropicKey => 'Rasmni aniqlash sozlanmagan (ANTHROPIC_API_KEY yoʻq). Tikerni qoʻlda kiriting.';

  @override
  String get errRecognitionUnreachable => 'Aniqlash xizmatiga ulanib boʻlmadi. Internet aloqasini tekshiring.';

  @override
  String errRecognitionHttp(String status) {
    return 'Aniqlash xizmati xato qaytardi (HTTP $status).';
  }

  @override
  String get errRecognitionRefused => 'Aniqlash xizmati bu rasmni qayta ishlay olmadi.';

  @override
  String get errRecognitionTruncated => 'Aniqlash xizmatining javobi uzilib qoldi. Qaytadan urinib koʻring.';

  @override
  String get errRecognitionBadResponse => 'Aniqlash xizmatidan kutilmagan javob keldi.';

  @override
  String get errRecognitionEmpty => 'Aniqlash xizmati boʻsh javob qaytardi.';

  @override
  String get errMissingFinnhubKey => 'Bozor maʼlumotlari sozlanmagan (FINNHUB_API_KEY yoʻq).';

  @override
  String get errMarketUnreachable => 'Bozor maʼlumotlari xizmatiga ulanib boʻlmadi. Internet aloqasini tekshiring.';

  @override
  String get errMarketRateLimited => 'Bozor maʼlumotlari xizmatiga juda koʻp soʻrov yuborildi. Bir daqiqa kuting.';

  @override
  String errMarketHttp(String status) {
    return 'Bozor maʼlumotlari xizmati xato qaytardi (HTTP $status).';
  }

  @override
  String get errMarketBadResponse => 'Bozor maʼlumotlari xizmatidan kutilmagan javob keldi.';

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
  String get aiGenerating => 'Tahlil tayyorlanmoqda… bu bir-ikki daqiqa vaqt olishi mumkin.';

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
  String get errAiNotConfigured => 'AI tahlili sozlanmagan (ANTHROPIC_API_KEY yoʻq).';

  @override
  String get errAiUnreachable => 'AI xizmatiga ulanib boʻlmadi. Internet aloqasini tekshiring.';

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
  String get chartUnavailable => 'Joriy maʼlumotlar manbasida narxlar tarixi mavjud emas.';

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
  String get statementsUnavailable => 'Bu aksiya uchun eʼlon qilingan moliyaviy hisobotlar mavjud emas.';

  @override
  String get launchAtLogin => 'Tizimga kirganda ishga tushirish';

  @override
  String get hotkeyLabel => 'Global tezkor tugmalar';

  @override
  String get hotkeyRecordHint => 'Shu yerni bosing, soʻng yangi tugmalar birikmasini bosing';

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
  String get noFavorites => 'Hozircha sevimlilar yoʻq. Qoʻshish uchun aksiyadagi yulduzchani bosing.';

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
  String get updateDownloaded => 'Yangilanish tayyor. Oʻrnatish uchun ilovani qayta ishga tushiring.';

  @override
  String get updateNow => 'Yangilash';

  @override
  String get restartNow => 'Qayta ishga tushirish';

  @override
  String get updatesViaStore => 'Yangilanishlar ilovalar doʻkoni orqali avtomatik keladi.';

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
  String get trialExpired => 'Bepul sinov muddati tugadi. Tahlil qilishda davom etish uchun tarif tanlang.';

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
  String get extraPacksTitle => 'Koʻproq kerakmi? Qoʻshimcha tahlillar sotib oling';

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
  String get errTrialExpired => 'Bepul sinov muddati tugadi. Davom etish uchun tarif tanlang.';

  @override
  String get errNoPlan => 'AI tahlili uchun faol tarif kerak.';

  @override
  String get viewPlans => 'Tariflarni koʻrish';

  @override
  String get usageTitle => 'Foydalanish';

  @override
  String get demoPurchaseNote => 'Demo toʻlov: bu platformada xaridlar simulyatsiya qilinadi.';

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
  String get aiDepthDeepDesc => 'Koʻproq veb-qidiruv, raqobatchilar bilan taqqoslash va chuqurroq tafsilotlar.';

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
  String get aiReaderBeginnerDesc => 'Sodda til; har bir maxsus atama tushuntiriladi.';

  @override
  String get aiReaderExperiencedDesc => 'Standart moliyaviy atamalar bilan zichroq matn.';

  @override
  String get aiCounterArgument => 'Eng kuchli qarshi dalil';

  @override
  String get aiCounterArgumentDesc => 'Xulosa har doim oʻz natijasiga qarshi eng kuchli dalil bilan yakunlanadi.';

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
  String get outlookChartNote => 'Taxminiy oraliqlar; ehtimollar prognoz emas, balki taxminiy baholar.';

  @override
  String get accountTitle => 'Hisob';

  @override
  String get signIn => 'Kirish';

  @override
  String get signOut => 'Chiqish';

  @override
  String get notSignedIn => 'Hisobga kirilmagan';

  @override
  String get accountBenefit => 'Obunangiz barcha qurilmalaringizda ishlashi uchun hisobingizga kiring.';

  @override
  String get accountSyncedNote => 'Obunangiz va qolgan tahlillaringiz barcha qurilmalarda bir xil.';

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
  String get errSignInFailed => 'Kirib boʻlmadi. Aloqani tekshirib, qaytadan urinib koʻring.';

  @override
  String get checkoutWaiting => 'Toʻlovni brauzeringizda yakunlang. Tugagach, ilova avtomatik yangilanadi.';

  @override
  String get paymentViaStripe => 'Stripe orqali brauzeringizda xavfsiz toʻlov. Istalgan vaqtda bekor qilish mumkin.';

  @override
  String get paymentViaStore =>
      'Toʻlov App Store yoki Google Play hisobingiz orqali amalga oshiriladi. Istalgan vaqtda doʻkon sozlamalarida bekor qilish mumkin.';

  @override
  String get keySpace => 'Probel';

  @override
  String get doubleOptionTitle => 'Option tugmasini ikki marta bosish';

  @override
  String get doubleOptionSubtitle => 'Option tugmasini tez ikki marta bosish ham WhatStockni chaqiradi.';

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
    String _temp0 = intl.Intl.pluralLogic(years, locale: localeName, other: '$years yil', one: '1 yil');
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
  String get portfolioExcluded => 'Narxi yoki valyuta kursi boʻlmagan pozitsiyalar jami summalarga kiritilmaydi.';

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
  String get errDeleteAccount => 'Hisobni oʻchirib boʻlmadi. Aloqani tekshirib, qaytadan urinib koʻring.';

  @override
  String get aiTrialBriefNote =>
      'Sinov tahlillari qisqa va tezroq AI modeli bilan tayyorlanadi. Tarif bilan eng kuchli AI modelimiz, koʻproq veb-qidiruv hamda Standart va Batafsil uzunliklarni olasiz.';
}
