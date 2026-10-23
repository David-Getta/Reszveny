// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kazakh (`kk`).
class AppLocalizationsKk extends AppLocalizations {
  AppLocalizationsKk([String locale = 'kk']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'Акцияны суретке түсіріп, ол туралы бәрін біліңіз.';

  @override
  String get homeHint =>
      'Акция сертификаты, брокерлік қолданба экраны, газет немесе компания логотипі – акцияны анықтауға көмектесетін кез келген нәрсе.';

  @override
  String get takePhoto => 'Суретке түсіру';

  @override
  String get chooseFromGallery => 'Галереядан таңдау';

  @override
  String get chooseImage => 'Сурет таңдау';

  @override
  String get enterTickerManually => 'Тикерді қолмен енгізу';

  @override
  String get tickerInputLabel => 'Тикер';

  @override
  String get tickerInputHint => 'мысалы, AAPL';

  @override
  String get lookUp => 'Іздеу';

  @override
  String demoModeBanner(String symbols) {
    return 'Демо режим – нарықтық деректер кілті бапталмаған. Үлгі деректер мыналар үшін қолжетімді: $symbols.';
  }

  @override
  String get recognizing => 'Сурет талдануда…';

  @override
  String get loadingData => 'Деректер жүктелуде…';

  @override
  String get noCandidatesTitle => 'Акция танылмады';

  @override
  String get noCandidatesBody =>
      'Бұл суреттен акцияны анықтай алмадық. Анығырақ фото түсіріп көріңіз немесе тикерді қолмен енгізіңіз.';

  @override
  String get whatWeSaw => 'Біз не көрдік';

  @override
  String get chooseCandidateTitle => 'Қай акцияны меңзедіңіз?';

  @override
  String confidencePercent(int percent) {
    return '$percent% сенімділік';
  }

  @override
  String get settings => 'Параметрлер';

  @override
  String get language => 'Тіл';

  @override
  String get systemLanguage => 'Жүйе тілі';

  @override
  String get about => 'Қолданба туралы';

  @override
  String get disclaimer =>
      'Бұл қолданба тек ақпарат береді және инвестициялық кеңес болып табылмайды. Деректер кешігуі немесе дәл болмауы мүмкін.';

  @override
  String dataSource(String source) {
    return 'Дерек көзі: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Тану: $source';
  }

  @override
  String get retry => 'Қайталау';

  @override
  String get cancel => 'Бас тарту';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Жабу';

  @override
  String get errorGeneric => 'Бірдеңе дұрыс болмады.';

  @override
  String get errorSectionUnavailable => 'Бұл бөлімді жүктеу мүмкін болмады.';

  @override
  String get notAvailable => 'жоқ';

  @override
  String get sectionIdentity => 'Сәйкестендіру';

  @override
  String get sectionPrice => 'Баға';

  @override
  String get sectionValuation => 'Бағалау';

  @override
  String get sectionFinancials => 'Қаржылық көрсеткіштер';

  @override
  String get sectionDividend => 'Дивиденд';

  @override
  String get sectionProfile => 'Компания профилі';

  @override
  String get sectionAnalysts => 'Талдаушылар рейтингтері';

  @override
  String get sectionNews => 'Жаңалықтар';

  @override
  String get sectionRecognition => 'Тану мәліметтері';

  @override
  String get labelSymbol => 'Тикер';

  @override
  String get labelExchange => 'Биржа';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Валюта';

  @override
  String get labelCountry => 'Ел';

  @override
  String get labelIndustry => 'Сала';

  @override
  String get labelSector => 'Сектор';

  @override
  String get labelWebsite => 'Веб-сайт';

  @override
  String get labelIpoDate => 'IPO күні';

  @override
  String get labelMarketCap => 'Нарықтық капиталдандыру';

  @override
  String get labelSharesOutstanding => 'Айналымдағы акциялар';

  @override
  String get labelEmployees => 'Қызметкерлер';

  @override
  String get labelCeo => 'Бас директор';

  @override
  String get labelHeadquarters => 'Бас кеңсе';

  @override
  String get labelDescription => 'Сипаттама';

  @override
  String get labelLastPrice => 'Соңғы баға';

  @override
  String get labelChange => 'Өзгеріс';

  @override
  String get labelOpen => 'Ашылу';

  @override
  String get labelDayHigh => 'Күн максимумы';

  @override
  String get labelDayLow => 'Күн минимумы';

  @override
  String get labelPreviousClose => 'Алдыңғы жабылу';

  @override
  String get labelWeek52High => '52 апталық максимум';

  @override
  String get labelWeek52Low => '52 апталық минимум';

  @override
  String get labelAverageVolume10d => 'Орт. көлем (10 күн)';

  @override
  String updatedAt(String time) {
    return 'Жаңартылды: $time';
  }

  @override
  String get labelPeTrailing => 'P/E (өткен кезең)';

  @override
  String get labelPeForward => 'P/E (болжам)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / еркін ақша ағыны';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Бета';

  @override
  String get labelRevenueTtm => 'Түсім (TTM)';

  @override
  String get labelNetIncomeTtm => 'Таза пайда (TTM)';

  @override
  String get labelGrossMargin => 'Жалпы маржа';

  @override
  String get labelOperatingMargin => 'Операциялық маржа';

  @override
  String get labelNetMargin => 'Таза маржа';

  @override
  String get labelRoe => 'Капитал рентабельділігі';

  @override
  String get labelRoa => 'Активтер рентабельділігі';

  @override
  String get labelDebtToEquity => 'Қарыз / капитал';

  @override
  String get labelCurrentRatio => 'Ағымдағы өтімділік коэффициенті';

  @override
  String get labelRevenueGrowth => 'Түсім өсімі (YoY)';

  @override
  String get labelEpsGrowth => 'EPS өсімі (YoY)';

  @override
  String get labelDividendYield => 'Дивидендтік кірістілік';

  @override
  String get labelDividendPerShare => 'Бір акцияға дивиденд';

  @override
  String get labelPayoutRatio => 'Дивиденд төлеу коэффициенті';

  @override
  String get labelYieldOnCost => 'Сатып алу бағасына кірістілік';

  @override
  String get labelDividendGrowth5y => 'Дивиденд өсімі (5 ж.)';

  @override
  String get dividendNone => 'Соңғы 12 айда дивиденд төленбеген.';

  @override
  String get dividendOnYourShares => 'Акцияларыңызға, жылына';

  @override
  String get labelConsensus => 'Консенсус';

  @override
  String get ratingStrongBuy => 'Белсенді сатып алу';

  @override
  String get ratingBuy => 'Сатып алу';

  @override
  String get ratingHold => 'Ұстау';

  @override
  String get ratingSell => 'Сату';

  @override
  String get ratingStrongSell => 'Белсенді сату';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count талдаушы',
      one: '1 талдаушы',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Кезең: $period';
  }

  @override
  String get noNews => 'Соңғы жаңалықтар жоқ.';

  @override
  String get openArticle => 'Мақаланы ашу';

  @override
  String get openLinkFailed => 'Сілтемені ашу мүмкін болмады.';

  @override
  String get recognitionSummary => 'Қорытынды';

  @override
  String get recognitionEvidence => 'Неге солай ойлаймыз';

  @override
  String get recognitionRawText => 'Суреттен оқылған мәтін';

  @override
  String get errMissingAnthropicKey =>
      'Суретті тану бапталмаған (ANTHROPIC_API_KEY жоқ). Тикерді қолмен енгізіңіз.';

  @override
  String get errRecognitionUnreachable =>
      'Тану қызметіне қосылу мүмкін болмады. Интернет байланысын тексеріңіз.';

  @override
  String errRecognitionHttp(String status) {
    return 'Тану қызметі қате қайтарды (HTTP $status).';
  }

  @override
  String get errRecognitionRefused => 'Тану қызметі бұл суретті өңдей алмады.';

  @override
  String get errRecognitionTruncated =>
      'Тану қызметінің жауабы үзіліп қалды. Қайталап көріңіз.';

  @override
  String get errRecognitionBadResponse =>
      'Тану қызметінен күтпеген жауап келді.';

  @override
  String get errRecognitionEmpty => 'Тану қызметі бос жауап қайтарды.';

  @override
  String get errMissingFinnhubKey =>
      'Нарықтық деректер бапталмаған (FINNHUB_API_KEY жоқ).';

  @override
  String get errMarketUnreachable =>
      'Нарықтық деректер қызметіне қосылу мүмкін болмады. Интернет байланысын тексеріңіз.';

  @override
  String get errMarketRateLimited =>
      'Нарықтық деректер қызметіне тым көп сұрау жіберілді. Бір минут күтіңіз.';

  @override
  String errMarketHttp(String status) {
    return 'Нарықтық деректер қызметі қате қайтарды (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Нарықтық деректер қызметінен күтпеген жауап келді.';

  @override
  String errNoQuote(String symbol) {
    return '$symbol үшін баға деректері табылмады.';
  }

  @override
  String errNoProfile(String symbol) {
    return '$symbol үшін компания профилі табылмады.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Демо режим тек мыналарды қолдайды: $symbols. Нақты уақыттағы деректер үшін FINNHUB_API_KEY қосыңыз.';
  }

  @override
  String errUnknown(String detail) {
    return 'Бірдеңе дұрыс болмады: $detail';
  }

  @override
  String get newSearch => 'Жаңа іздеу';

  @override
  String get recentSearches => 'Соңғылар';

  @override
  String get noRecentSearches => 'Әзірге соңғы іздеулер жоқ.';

  @override
  String get clearRecent => 'Соңғыларды тазалау';

  @override
  String get greeting => 'Қай акцияны қарастырамыз?';

  @override
  String get searchHint => 'Тикер немесе компания атауы';

  @override
  String get attachImage => 'Сурет тіркеу';

  @override
  String get searchResultsTitle => 'Іздеу нәтижелері';

  @override
  String errNoResults(String query) {
    return '«$query» бойынша акция табылмады.';
  }

  @override
  String get quickBarHint => 'Тикер немесе компания атауын енгізіңіз…';

  @override
  String get openFullWindow => 'Терезені ашу';

  @override
  String hotkeyHint(String shortcut) {
    return 'WhatStock-ты шақыру үшін кез келген жерде $shortcut пернелерін басыңыз.';
  }

  @override
  String get trayOpen => 'WhatStock-ты ашу';

  @override
  String get trayQuickSearch => 'Жылдам іздеу';

  @override
  String get trayQuit => 'Шығу';

  @override
  String get appearance => 'Сыртқы түрі';

  @override
  String get themeSystem => 'Жүйелік';

  @override
  String get themeDark => 'Қараңғы';

  @override
  String get themeLight => 'Ашық';

  @override
  String get back => 'Артқа';

  @override
  String get aiSectionTitle => 'AI талдауы';

  @override
  String get aiIntro =>
      'AI жазған толық шолу: соңғы жаңалықтардың қысқаша мазмұны, бизнес, күшті жақтары, тәуекелдер мен жасырын факторлар, бағалау, психологиялық, әлеуметтанулық, техникалық және макро тұрғыдан сценарийлері бар баға болжамы, сондай-ақ неге назар аудару керектігі.';

  @override
  String get aiGenerate => 'Талдау жасау';

  @override
  String get aiRegenerate => 'Қайта жасау';

  @override
  String get aiGenerating =>
      'Талдау дайындалуда… бұл бір-екі минутқа созылуы мүмкін.';

  @override
  String get aiSources => 'Дереккөздер';

  @override
  String aiGeneratedAt(String time) {
    return 'Жасалды: $time';
  }

  @override
  String get aiDisclaimer =>
      'Ашық деректер мен соңғы жаңалықтарға негізделген, AI жасаған талдау. Онда қателер болуы немесе ол ескіруі мүмкін және ол инвестициялық кеңес болып табылмайды.';

  @override
  String get errAiNotConfigured =>
      'AI талдауы бапталмаған (ANTHROPIC_API_KEY жоқ).';

  @override
  String get errAiUnreachable =>
      'AI қызметіне қосылу мүмкін болмады. Интернет байланысын тексеріңіз.';

  @override
  String errAiHttp(String status) {
    return 'AI қызметі қате қайтарды (HTTP $status).';
  }

  @override
  String get errAiRefused => 'AI қызметі бұл акцияны талдаудан бас тартты.';

  @override
  String get errAiBadResponse => 'AI қызметінен күтпеген жауап келді.';

  @override
  String get sectionChart => 'Баға графигі';

  @override
  String get rangeOneWeek => '1Ап';

  @override
  String get rangeOneMonth => '1Ай';

  @override
  String get rangeThreeMonths => '3Ай';

  @override
  String get rangeOneYear => '1Ж';

  @override
  String get rangeFiveYears => '5Ж';

  @override
  String get chartUnavailable =>
      'Ағымдағы дерек көзінде баға тарихы қолжетімсіз.';

  @override
  String get sectionStatements => 'Қаржылық есептілік (жылдық)';

  @override
  String get labelFiscalYear => 'Қаржы жылы';

  @override
  String get labelRevenue => 'Түсім';

  @override
  String get labelNetIncome => 'Таза пайда';

  @override
  String get labelTotalAssets => 'Активтер жиыны';

  @override
  String get labelTotalLiabilities => 'Міндеттемелер жиыны';

  @override
  String get labelEquity => 'Меншікті капитал';

  @override
  String get labelOperatingCashFlow => 'Операциялық ақша ағыны';

  @override
  String get statementsUnavailable =>
      'Бұл акция үшін жарияланған қаржылық есептілік қолжетімсіз.';

  @override
  String get launchAtLogin => 'Жүйеге кіргенде іске қосу';

  @override
  String get hotkeyLabel => 'Ғаламдық пернелер тіркесімі';

  @override
  String get hotkeyRecordHint =>
      'Осы жерді басып, жаңа пернелер тіркесімін басыңыз';

  @override
  String get hotkeyReset => 'Әдепкі мәнге қайтару';

  @override
  String get pasteImage => 'Алмасу буферінен сурет қою';

  @override
  String get errClipboardNoImage => 'Алмасу буферінде сурет жоқ.';

  @override
  String get favorites => 'Таңдаулылар';

  @override
  String get addToFavorites => 'Таңдаулыларға қосу';

  @override
  String get removeFromFavorites => 'Таңдаулылардан алып тастау';

  @override
  String get noFavorites =>
      'Әзірге таңдаулылар жоқ. Қосу үшін акциядағы жұлдызшаны түртіңіз.';

  @override
  String get displayCurrency => 'Көрсету валютасы';

  @override
  String get displayCurrencyNone => 'Тек акцияның өз валютасы';

  @override
  String labelConverted(String currency) {
    return '≈ $currency есебімен';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Бағам: 1 $from = $rate $to (ЕОБ, $date)';
  }

  @override
  String get updates => 'Жаңартулар';

  @override
  String currentVersion(String version) {
    return 'Нұсқа $version';
  }

  @override
  String get autoUpdate => 'Жаңартуларды автоматты түрде орнату';

  @override
  String get checkForUpdates => 'Жаңартуларды тексеру';

  @override
  String get updateChecking => 'Жаңартулар тексерілуде…';

  @override
  String get updateUpToDate => 'Сізде ең соңғы нұсқа орнатылған.';

  @override
  String updateAvailable(String version) {
    return '$version нұсқасы қолжетімді.';
  }

  @override
  String get updateDownloading => 'Жаңарту фондық режимде жүктелуде…';

  @override
  String get updateDownloaded =>
      'Жаңарту дайын. Орнату үшін қолданбаны қайта іске қосыңыз.';

  @override
  String get updateNow => 'Жаңарту';

  @override
  String get restartNow => 'Қайта іске қосу';

  @override
  String get updatesViaStore =>
      'Жаңартулар қолданбалар дүкені арқылы автоматты түрде келеді.';

  @override
  String get updateCheckFailed => 'Жаңартуларды тексеру мүмкін болмады.';

  @override
  String get subscription => 'Жазылым';

  @override
  String get planTrial => 'Сынақ';

  @override
  String get planNormal => 'Қалыпты';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Белсенді тариф жоқ';

  @override
  String planAnalysesPerMonth(int count) {
    return 'Айына $count талдау';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$count талдауы бар $days күндік тегін сынақ';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Сынақ мерзімінің аяқталуына $days күн қалды',
      one: 'Сынақ мерзімінің аяқталуына 1 күн қалды',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Тегін сынақ мерзіміңіз аяқталды. Талдауды жалғастыру үшін тариф таңдаңыз.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Осы кезеңде $total талдаудың $remaining қалды';
  }

  @override
  String extraCredits(int count) {
    return '$count қосымша талдау';
  }

  @override
  String renewsOn(String date) {
    return '$date күні жаңартылады';
  }

  @override
  String get choosePlan => 'Тариф таңдаңыз';

  @override
  String get currentPlan => 'Ағымдағы тариф';

  @override
  String get subscribe => 'Жазылу';

  @override
  String get perMonth => '/ ай';

  @override
  String get extraPacksTitle =>
      'Көбірек керек пе? Қосымша талдаулар сатып алыңыз';

  @override
  String get extraPacksHint =>
      'Қосымша талдаулардың мерзімі ешқашан бітпейді және олар айлық лимитіңізден кейін пайдаланылады.';

  @override
  String get buy => 'Сатып алу';

  @override
  String get restorePurchases => 'Сатып алуларды қалпына келтіру';

  @override
  String get manageSubscription => 'Жазылымды басқару';

  @override
  String get purchaseSuccess => 'Рақмет! Сатып алуыңыз белсендірілді.';

  @override
  String get purchasePending => 'Сатып алу күтілуде…';

  @override
  String get purchaseFailed => 'Сатып алуды аяқтау мүмкін болмады.';

  @override
  String get purchaseCanceled => 'Сатып алудан бас тартылды.';

  @override
  String get billingUnavailable =>
      'Бұл платформада сатып алу әзірге қолжетімсіз. Телефоныңызда немесе Mac-те жазылыңыз – тарифіңіз барлық құрылғыда жұмыс істейді.';

  @override
  String get errQuotaExceeded =>
      'Бұл кезеңге талдауларыңыз қалмады. Жоғарырақ тарифке өтіңіз немесе қосымша талдаулар сатып алыңыз.';

  @override
  String get errTrialExpired =>
      'Тегін сынақ мерзіміңіз аяқталды. Жалғастыру үшін тариф таңдаңыз.';

  @override
  String get errNoPlan => 'AI талдауы үшін белсенді тариф қажет.';

  @override
  String get viewPlans => 'Тарифтерді көру';

  @override
  String get usageTitle => 'Пайдалану';

  @override
  String get demoPurchaseNote =>
      'Демо төлем: бұл платформада сатып алулар симуляцияланады.';

  @override
  String get mostPopular => 'Ең танымал';

  @override
  String get bestValue => 'Ең тиімді';

  @override
  String get planFeaturesCommon =>
      'Суреттен тану, нақты уақыттағы деректер, графиктер, таңдаулылар және барлық 120 тіл әр тарифке кіреді. Лимит AI талдауларына қатысты.';

  @override
  String get searchLanguages => 'Тілдерді іздеу…';

  @override
  String get noLanguageMatch => 'Сәйкес тіл табылмады.';

  @override
  String get aiSettings => 'AI талдауы';

  @override
  String get aiLength => 'Көлемі';

  @override
  String get aiDepthBrief => 'Қысқа';

  @override
  String get aiDepthStandard => 'Стандартты';

  @override
  String get aiDepthDeep => 'Терең';

  @override
  String get aiDepthBriefDesc => 'Ең маңыздысы, жылдам.';

  @override
  String get aiDepthStandardDesc => 'Барлық бөлімі бар толық есеп.';

  @override
  String get aiDepthDeepDesc =>
      'Көбірек веб-іздеу, бәсекелестермен салыстыру және тереңірек мәліметтер.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Шамамен $min–$max сөз';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count талдау жұмсалады',
      one: '1 талдау жұмсалады',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Оқырман деңгейі';

  @override
  String get aiReaderBeginner => 'Бастаушы';

  @override
  String get aiReaderExperienced => 'Тәжірибелі';

  @override
  String get aiReaderBeginnerDesc =>
      'Қарапайым тіл; әр арнайы термин түсіндіріледі.';

  @override
  String get aiReaderExperiencedDesc =>
      'Стандартты қаржы терминологиясы бар тығызырақ мәтін.';

  @override
  String get aiCounterArgument => 'Ең күшті қарсы дәлел';

  @override
  String get aiCounterArgumentDesc =>
      'Қорытынды әрқашан өз тұжырымына қарсы ең күшті дәлелмен аяқталады.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Тарифіңіз бойынша әр талдауға $count веб-іздеуге дейін',
      one: 'Тарифіңіз бойынша әр талдауға 1 веб-іздеуге дейін',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Тарифтер бойынша стандартты көлем: Қалыпты $normal, Pro $pro, Max $max, Ultra $ultra. Қысқа көлем 2-ге аз, Терең көлем 2-ге көп пайдаланады.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count веб-іздеуге дейін',
      one: '1 веб-іздеуге дейін',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Әр талдауға $count веб-іздеу',
      one: 'Әр талдауға 1 веб-іздеу',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Бұл көлемге $needed талдау қажет, бірақ тек $left қалды. Параметрлерден қысқарақ көлемді таңдаңыз немесе қосымша талдау алыңыз.';
  }

  @override
  String get outlookMarketMood => 'Нарық көңіл-күйі';

  @override
  String get moodVeryPessimistic => 'Өте пессимистік';

  @override
  String get moodPessimistic => 'Пессимистік';

  @override
  String get moodNeutral => 'Бейтарап';

  @override
  String get moodOptimistic => 'Оптимистік';

  @override
  String get moodVeryOptimistic => 'Өте оптимистік';

  @override
  String get scenarioBull => 'Оптимистік сценарий';

  @override
  String get scenarioBase => 'Базалық сценарий';

  @override
  String get scenarioBear => 'Пессимистік сценарий';

  @override
  String outlookCurrentPrice(String price) {
    return 'Ағымдағы баға: $price';
  }

  @override
  String get outlookKeyLevels => 'Негізгі деңгейлер';

  @override
  String get keyLevelSupport => 'Қолдау';

  @override
  String get keyLevelResistance => 'Қарсылық';

  @override
  String get keyLevelAnchor => 'Зәкір деңгейі';

  @override
  String get upcomingEvents => 'Алдағы оқиғалар';

  @override
  String get outlookChartNote =>
      'Шамамен алынған аралықтар; ықтималдықтар – болжам емес, шамалап берілген бағалар.';

  @override
  String get accountTitle => 'Аккаунт';

  @override
  String get signIn => 'Кіру';

  @override
  String get signOut => 'Шығу';

  @override
  String get notSignedIn => 'Аккаунтқа кірмегенсіз';

  @override
  String get accountBenefit =>
      'Жазылымыңыз барлық құрылғыңызда жұмыс істеуі үшін аккаунтқа кіріңіз.';

  @override
  String get accountSyncedNote =>
      'Жазылымыңыз бен қалған талдауларыңыз барлық құрылғыда бірдей.';

  @override
  String get signInTitle => 'WhatStock-қа кіру';

  @override
  String get emailLabel => 'Электрондық пошта мекенжайы';

  @override
  String get continueWithEmail => 'Email арқылы жалғастыру';

  @override
  String codeSentTo(String email) {
    return '$email мекенжайына 6 таңбалы код жібердік. Ол 10 минут жарамды.';
  }

  @override
  String get codeLabel => 'Кіру коды';

  @override
  String get resendCode => 'Жаңа код жіберу';

  @override
  String get useDifferentEmail => 'Басқа email пайдалану';

  @override
  String get errInvalidCode => 'Код қате немесе оның мерзімі өтіп кеткен.';

  @override
  String get errInvalidEmail =>
      'Жарамды электрондық пошта мекенжайын енгізіңіз.';

  @override
  String get errSignInFailed =>
      'Кіру сәтсіз аяқталды. Байланысты тексеріп, қайталап көріңіз.';

  @override
  String get checkoutWaiting =>
      'Төлемді браузерде аяқтаңыз. Төлем аяқталғанда қолданба автоматты түрде жаңартылады.';

  @override
  String get paymentViaStripe =>
      'Stripe арқылы браузерде қауіпсіз төлем. Кез келген уақытта бас тартуға болады.';

  @override
  String get paymentViaStore =>
      'Төлем App Store немесе Google Play аккаунтыңыз арқылы алынады. Кез келген уақытта дүкен параметрлерінде бас тартуға болады.';

  @override
  String get keySpace => 'Бос орын';

  @override
  String get doubleOptionTitle => 'Option пернесін екі рет басу';

  @override
  String get doubleOptionSubtitle =>
      'Option пернесін жылдам екі рет басу да WhatStock-ты шақырады.';

  @override
  String get doubleOptionPermission =>
      'Бұл басқа қолданбаларда да жұмыс істеуі үшін «Жүйе параметрлері» → «Құпиялылық және қауіпсіздік» → «Енгізуді бақылау» бөлімінде WhatStock-қа рұқсат беріп, қолданбаны қайта ашыңыз.';

  @override
  String get openSystemSettings => 'Жүйе параметрлерін ашу';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'WhatStock-ты шақыру үшін кез келген жерде $shortcut пернелерін басыңыз немесе Option пернесін екі рет басыңыз.';
  }

  @override
  String get scenarioMostLikely => 'Ең ықтимал';

  @override
  String get longTermToday => 'Бүгін';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years жыл',
      one: '1 жыл',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return 'жылына $range';
  }

  @override
  String longTermLikely(String price) {
    return 'ең ықтимал $price';
  }

  @override
  String get confidenceLow => 'Төмен сенімділік';

  @override
  String get confidenceMedium => 'Орташа сенімділік';

  @override
  String get confidenceHigh => 'Жоғары сенімділік';

  @override
  String get longTermNote =>
      'Ұзақ мерзімді аралықтар көрсетілген жорамалдарға негізделеді және уақыт өте келе кеңейеді. Бағаларға дивидендтер кірмейді. Бұл – болжам емес, шамалап берілген бағалар.';

  @override
  String get portfolio => 'Портфель';

  @override
  String get portfolioEmpty =>
      'Әзірге бос. Иелігіңіздегі акцияларды бақылау үшін акцияны ашып, «Портфельге қосу» түймесін түртіңіз.';

  @override
  String get portfolioLocalNote =>
      'Осы құрылғыда, ал аккаунтқа кірген болсаңыз, аккаунтыңызда да сақталады. Жиынтықтар ЕОБ анықтамалық бағамдары бойынша есептеледі; бағалар кешігуі мүмкін.';

  @override
  String get addToPortfolio => 'Портфельге қосу';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol қосу';
  }

  @override
  String get portfolioQuantity => 'Акциялар саны';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Бір акция бағасы ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Сатып алу күні';

  @override
  String get portfolioAdd => 'Қосу';

  @override
  String get portfolioInvalidNumber => 'Нөлден үлкен сан енгізіңіз.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol портфельге қосылды.';
  }

  @override
  String get portfolioTotalValue => 'Жалпы құны';

  @override
  String get portfolioToday => 'Бүгін';

  @override
  String get portfolioGainLoss => 'Пайда/шығын';

  @override
  String homeDividendsThisYear(String amount) {
    return 'Биылғы дивидендтер: $amount';
  }

  @override
  String get portfolioInvested => 'Салынған қаражат';

  @override
  String get portfolioAllocation => 'Құрылым';

  @override
  String get portfolioPositions => 'Позициялар';

  @override
  String portfolioAvgCost(String price) {
    return 'орт. баға $price';
  }

  @override
  String get portfolioYourPosition => 'Сіздің позицияңыз';

  @override
  String get portfolioPurchases => 'Сатып алулар';

  @override
  String get portfolioRemove => 'Жою';

  @override
  String get portfolioExcluded =>
      'Бағасы немесе валюта бағамы жоқ позициялар жиынтыққа кірмейді.';

  @override
  String get priceAlerts => 'Баға ескертулері';

  @override
  String get setPriceAlert => 'Баға ескертуін орнату';

  @override
  String alertDialogTitle(String symbol) {
    return 'Баға ескертуі · $symbol';
  }

  @override
  String get alertKindAbove => 'Жоғары көтерілсе';

  @override
  String get alertKindBelow => 'Төмен түссе';

  @override
  String get alertKindMove => 'Бір күнде қатты өзгерсе';

  @override
  String alertTargetPrice(String currency) {
    return 'Баға ($currency)';
  }

  @override
  String get alertMovePercent => 'Күндік өзгеріс (%)';

  @override
  String get alertAlreadyMet => 'Баға бұл деңгейден әлдеқашан өтіп кетті.';

  @override
  String get alertSave => 'Ескерту орнату';

  @override
  String alertCreated(String symbol) {
    return '$symbol үшін ескерту орнатылды.';
  }

  @override
  String get alertsEmpty =>
      'Әзірге баға ескертулері жоқ. Ескерту орнату үшін акцияны ашып, қоңырауды түртіңіз.';

  @override
  String get alertsNote =>
      'WhatStock жұмыс істеп тұрғанда ескертулер әр 5 минут сайын тексеріледі. Компьютерде қолданба мәзір жолағында немесе хабарландыру аймағында жұмысын жалғастырады; телефонда әзірге ескертулер тек қолданба ашық тұрғанда келеді.';

  @override
  String alertDescAbove(String price) {
    return '$price деңгейінен жоғары';
  }

  @override
  String alertDescBelow(String price) {
    return '$price деңгейінен төмен';
  }

  @override
  String alertDescMove(String percent) {
    return 'Күндік өзгеріс ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return '$date күні $price бағасында іске қосылды';
  }

  @override
  String get alertRearm => 'Қайта қосу';

  @override
  String get alertDelete => 'Жою';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol $price деңгейінен жоғары көтерілді';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol $price деңгейінен төмен түсті';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol бүгін $percent өзгерді';
  }

  @override
  String alertHitBody(String price) {
    return 'Ағымдағы баға: $price';
  }

  @override
  String get alertOpen => 'Ашу';

  @override
  String get keepInTrayTitle => 'Терезе жабылғанда да жұмыс істеу';

  @override
  String get keepInTraySubtitle =>
      'WhatStock мәзір жолағында немесе хабарландыру аймағында қалады, сондықтан пернелер тіркесімі мен баға ескертулері жұмысын жалғастырады.';

  @override
  String get termsOfUse => 'Пайдалану шарттары';

  @override
  String get privacyPolicy => 'Құпиялылық саясаты';

  @override
  String get subscriptionLegal =>
      'Жазылым сіз одан бас тартқанша ай сайын автоматты түрде ұзартылады. Жазылу арқылы сіз Пайдалану шарттары мен Құпиялылық саясатын қабылдайсыз.';

  @override
  String get deleteAccount => 'Аккаунтты жою';

  @override
  String get deleteAccountTitle => 'Аккаунтыңызды жою керек пе?';

  @override
  String get deleteAccountBody =>
      'Аккаунтыңыз және серверімізде сақталған барлық дерек (email, лимит, пайдалану) біржола жойылады, ал пайдаланылмаған талдаулар жоғалады. Браузерде төленген жазылым бірден тоқтатылады; App Store немесе Google Play жазылымынан дүкен параметрлерінде бас тарту керек.';

  @override
  String get deleteLocalData =>
      'Осы құрылғыдағы деректерді де жою (портфель, ескертулер, таңдаулылар, тарих, сақталған талдаулар)';

  @override
  String get deleteAccountConfirm => 'Біржола жою';

  @override
  String get accountDeleted => 'Аккаунтыңыз жойылды.';

  @override
  String get errDeleteAccount =>
      'Аккаунтты жою мүмкін болмады. Байланысты тексеріп, қайталап көріңіз.';

  @override
  String get aiTrialBriefNote =>
      'Сынақ талдаулары қысқа және жылдамырақ AI моделімен жасалады. Тарифпен ең қуатты AI-ымыз, көбірек веб-іздеу және стандартты әрі терең көлем қолжетімді болады.';

  @override
  String get billingMonthly => 'Айлық';

  @override
  String get billingYearly => 'Жылдық';

  @override
  String get yearlyDiscount => '2 ай тегін';

  @override
  String get perYear => '/ жыл';

  @override
  String pricePerMonthApprox(String price) {
    return 'айына ≈ $price';
  }

  @override
  String get subscriptionLegalYearly =>
      'Жылдық жазылым сіз одан бас тартқанша жыл сайын автоматты түрде ұзартылады. Жазылу арқылы сіз Пайдалану шарттары мен Құпиялылық саясатын қабылдайсыз.';

  @override
  String get myAnalyses => 'Менің талдауларым';

  @override
  String get navAlerts => 'Ескертулер';

  @override
  String get inviteTitle => 'Жабық алдын ала қарау';

  @override
  String get inviteBody =>
      'Әзірге WhatStock тек шақыру арқылы қолжетімді. Алған шақыру кодыңызды енгізіңіз.';

  @override
  String get inviteCodeLabel => 'Шақыру коды';

  @override
  String get inviteContinue => 'Жалғастыру';

  @override
  String get inviteInvalid => 'Бұл шақыру коды жарамсыз.';

  @override
  String get inviteExpired =>
      'Бұл шақырудың мерзімі өтіп кеткен. Сізді шақырған адамнан жаңа код сұраңыз.';

  @override
  String get inviteDeviceLimit =>
      'Бұл шақыру коды қазірдің өзінде рұқсат етілген ең көп құрылғыда пайдаланылуда.';

  @override
  String get previewConfidential => 'Құпия алдын ала қарау';

  @override
  String get errPreviewDailyLimit =>
      'Бұл алдын ала қараудың бүгінгі талдау лимиті таусылды. Ертең қайта көріңіз.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сағат бұрын',
      one: '1 сағат бұрын',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count күн бұрын',
      one: '1 күн бұрын',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Бұл талдауды жаңарту керек пе?';

  @override
  String staleBody(String age) {
    return 'Бұл талдау $age жасалған. Содан бері бағалар, жаңалықтар мен нәтижелер өзгерген болуы мүмкін.';
  }

  @override
  String get staleKeep => 'Бұрынғысын көрсету';

  @override
  String get staleRefresh => 'Жаңасын жасау';

  @override
  String seeAll(int count) {
    return 'Барлығын көру ($count)';
  }

  @override
  String get searchAnalyses => 'Талдауларыңызды іздеу';

  @override
  String get deleteAnalysis => 'Жою';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol талдауы жойылды';
  }

  @override
  String get keyLevelAlertHint =>
      'Баға деңгейге жеткенде ескерту алу үшін деңгейді түртіңіз.';

  @override
  String get shareAnalysisTitle => 'Талдаумен бөлісу';

  @override
  String get shareAsImage => 'Сурет ретінде бөлісу';

  @override
  String get shareAsText => 'Мәтін ретінде бөлісу';

  @override
  String get shareCardFooter => 'WhatStock арқылы жасалған';

  @override
  String get shareCardDisclaimer => 'AI талдауы · инвестициялық кеңес емес';

  @override
  String get referralTitle => 'Достарды шақыру';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count қосымша талдау',
      one: '1 қосымша талдау',
    );
    return 'Кодыңызбен бөлісіңіз. Досыңыз бірден $_temp0 алады, ал сіз де оның алғашқы талдауынан кейін сонша аласыз.';
  }

  @override
  String get referralYourCode => 'Сіздің кодыңыз';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Шақырылғандар: $invited · Сыйақы берілгендер: $rewarded';
  }

  @override
  String get referralHaveCode => 'Достың коды бар ма?';

  @override
  String get referralRedeem => 'Қолдану';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count қосымша талдау қосылды. Қош келдіңіз!',
      one: '1 қосымша талдау қосылды. Қош келдіңіз!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Мұндай код жоқ. Тексеріп, қайталап көріңіз.';

  @override
  String get referralErrOwn => 'Өз кодыңызды қолдана алмайсыз.';

  @override
  String get referralErrAlready => 'Сіз досыңыздың кодын бұрын қолданғансыз.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count қосымша талдау',
      one: '1 қосымша талдау',
    );
    return 'Мен акцияларды WhatStock арқылы талдаймын: акцияны суретке түсіресің, ал AI оны түсіндіреді. Менің $code кодыммен $_temp0 аласың.';
  }

  @override
  String get referralCopied => 'Код көшірілді';

  @override
  String get onboardTitle1 => 'Акцияны суретке түсіріңіз';

  @override
  String get onboardBody1 =>
      'Брокерлік қосымшаның экраны, газет немесе компания логотипі жеткілікті: WhatStock акцияны танып, оның бағасын, графигін және негізгі көрсеткіштерін көрсетеді.';

  @override
  String get onboardTitle2 => 'Бірнеше минутта түсініңіз';

  @override
  String get onboardBody2 =>
      'AI талдауы акцияға не әсер ететінін, тәуекелдерді, бағалауды және бағаның қайда бет алуы мүмкін екені туралы үш сценарийді дереккөздерімен және сіздің тіліңізде түсіндіреді.';

  @override
  String get onboardTitle3 => 'Әрдайым хабардар болыңыз';

  @override
  String get onboardBody3 =>
      'Таңдаулылар, портфеліңіз және баға ескертулері сізді үнемі хабардар етеді. Талдауларыңыз құрылғыңызда сақталады, қайта ашуға дайын.';

  @override
  String get onboardNext => 'Келесі';

  @override
  String get onboardStart => 'Бастау';

  @override
  String get onboardSkip => 'Өткізіп жіберу';

  @override
  String changesTitle(String date) {
    return 'Алдыңғы талдаудан бері ($date)';
  }

  @override
  String get changesPrice => 'Баға';

  @override
  String get changesNoMajor => 'Болжам айтарлықтай өзгерген жоқ.';

  @override
  String get changesPreviousSummary => 'Алдыңғы қорытынды';

  @override
  String get telemetryTitle => 'WhatStock-ты жақсартуға көмектесіңіз';

  @override
  String get telemetryBody =>
      'Пайдалану туралы анонимді статистика мен ақау туралы есептерді бөлісіңіз: қай функциялар қолданылады және не қате кетті. Акцияларыңыз, талдауларыңыз немесе жеке деректеріңіз ешқашан жіберілмейді. Мұны кез келген уақытта Параметрлер бөлімінде өзгертуге болады.';

  @override
  String get telemetryAllow => 'Рұқсат ету';

  @override
  String get telemetryDecline => 'Жоқ, рахмет';

  @override
  String get telemetrySetting => 'Анонимді статистика және ақау туралы есептер';

  @override
  String get telemetrySettingHint =>
      'Функциялардың қаншалықты жиі қолданылатыны және қате туралы есептер — жеке деректерсіз, іздеулеріңіз бен талдауларыңыздың мазмұнынсыз.';

  @override
  String get askButton => 'Талдау туралы сұрақ қою';

  @override
  String askTitle(String symbol) {
    return '$symbol туралы сұрақтар';
  }

  @override
  String get askIntro =>
      'Талдау туралы кез келген нәрсені сұраңыз: белгілі бір тәуекел нені білдіреді, болжамды не өзгертуі мүмкін, сан қалай есептелді. Жауаптар осы талдауға негізделген және инвестициялық кеңес болып табылмайды.';

  @override
  String get askHint => 'Сұрағыңызды жазыңыз…';

  @override
  String get askSend => 'Жіберу';

  @override
  String get askThinking => 'Ойланып жатыр…';

  @override
  String get askSuggest1 => 'Ең үлкен тәуекел қандай?';

  @override
  String get askSuggest2 => 'Болжамды не өзгертуі мүмкін?';

  @override
  String get askSuggest3 => 'Қарапайым тілмен түсіндір';

  @override
  String get askMaxReached =>
      'Бұл талдау бойынша соңғы сұрақ осы еді. Тағы сұрау үшін жаңа талдау жасаңыз.';

  @override
  String get errAskLimit =>
      'Бүгінгі сұрақтар лимитіне жеттіңіз. Ертең қайта көріңіз.';

  @override
  String get eventTomorrow => 'Ертең';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days күннен кейін',
      one: '1 күннен кейін',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Тоқсандық нәтижелер';

  @override
  String get eventBeforeOpen => 'биржа ашылғанға дейін';

  @override
  String get eventAfterClose => 'биржа жабылғаннан кейін';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS болжамы: $value';
  }

  @override
  String get eventFromAnalysis => 'Сіздің талдауыңыздан';

  @override
  String get eventDividend => 'Дивиденд күтілуде';

  @override
  String get eventDividendEstimate => 'Сіз жазған төлемдер бойынша бағаланды';

  @override
  String get eventsHint =>
      'Таңдаулылар мен портфельдегі акциялардың алдағы 90 күндегі есеп күндері, талдауларыңыз белгілеген күні бар оқиғалар және сіз жазған төлемдер бойынша күтілетін дивидендтер.';

  @override
  String get eventsEmpty =>
      'Алдағы 90 күнде күні белгіленген оқиға жоқ. Есеп күндерін осында көру үшін таңдаулыларға немесе портфельге акция қосыңыз; жазылған дивидендтердің күтілетін келесі төлемі осында көрсетіледі.';

  @override
  String get compareTitle => 'Салыстыру';

  @override
  String get compareAdd => 'Акция қосу';

  @override
  String get compareRemove => 'Жою';

  @override
  String get compareTickerHint => 'Тикер, мысалы MSFT';

  @override
  String get compareHint =>
      'Негізгі көрсеткіштер қатар; әр жолдағы ең жақсы мән белгіленген. Сомалар әр акцияның өз валютасында.';

  @override
  String get compareNoAnalysis => 'Әзірге талдау жоқ';

  @override
  String get portfolioDividends => 'Жылдық дивидендтер';

  @override
  String portfolioDividendYield(String percent) {
    return 'Кірістілік $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Күтілетін жылдық дивидендтер соңғы 12 айда төленген дивидендтерге негізделген; болашақ төлемдерге кепілдік жоқ.';

  @override
  String positionDividend(String amount) {
    return 'Дивиденд: жылына $amount';
  }

  @override
  String get chartAvgCost => 'Сіздің орт.';

  @override
  String get chartAlertLevel => 'Ескерту';

  @override
  String get marketsToday => 'Нарықтар бүгін';

  @override
  String get notesTitle => 'Менің жазбаларым';

  @override
  String get notesHint =>
      'Неге сатып алдыңыз, нені бақылап отырсыз, не сатуға итермелейді?';

  @override
  String get notesInfo =>
      'Осы құрылғыда, ал аккаунтқа кірген болсаңыз, аккаунтыңызда да сақталады. AI талдауы жазбаларыңызды ескереді.';

  @override
  String notesSaved(String date) {
    return 'Сақталды: $date';
  }

  @override
  String get peersTitle => 'Ұқсас компаниялар';

  @override
  String get portfolioExport => 'CSV ретінде экспорттау';

  @override
  String get portfolioImport => 'CSV-ден импорттау';

  @override
  String get portfolioImportHint =>
      'Әр жолға бір сатып алуды қойыңыз: тикер, саны, бағасы, валюта, күні (ЖЖЖЖ-АА-КК). Бағандар үтірмен, нүктелі үтірмен немесе табуляциямен бөлінуі мүмкін; тақырып жолы міндетті емес.';

  @override
  String get portfolioImportButton => 'Импорттау';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count операция қосылды',
      one: '1 операция қосылды',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count жол өткізіп жіберілді',
      one: '1 жол өткізіп жіберілді',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Портфель, таңдаулылар, баға ескертулері және жазбалар барлық құрылғыларыңызда синхрондалады.';

  @override
  String syncLast(String time) {
    return 'Соңғы синхрондау: $time';
  }

  @override
  String get syncNow => 'Қазір синхрондау';

  @override
  String get syncFailed =>
      'Синхрондау сәтсіз аяқталды. Автоматты түрде қайта әрекет жасалады.';

  @override
  String get alertEmailTitle => 'Ескерту іске қосылғанда электрондық хат';

  @override
  String get alertEmailOn =>
      'Ескертулеріңізді бірнеше минут сайын тексеріп, қолданба жабық тұрса да, сізге электрондық хат жібереміз.';

  @override
  String get alertEmailSignIn =>
      'Қолданба жабық тұрса да ескертулерді электрондық пошта арқылы алу үшін Параметрлерде электрондық поштаңызбен кіріңіз.';

  @override
  String get portfolioHistory => 'Құн динамикасы';

  @override
  String get portfolioReviewTitle => 'Портфельді AI талдауы';

  @override
  String get portfolioReviewIntro =>
      'AI бүкіл портфеліңізді қарайды: шоғырлану, сала мен валюта тәуекелі, акцияларыңыздың ортақ тәуекелдері және дивидендтер. 1 талдау жұмсалады.';

  @override
  String get portfolioReviewButton => 'Портфелімді талдау';

  @override
  String get portfolioReviewAgain => 'Қайта талдау';

  @override
  String get portfolioReviewWorking => 'Портфеліңіз талданып жатыр…';

  @override
  String get digestTitle => 'Электрондық поштамен апталық шолу';

  @override
  String get digestHint =>
      'Әр дүйсенбі: таңдаулыларыңыз бен портфеліңіз өткен аптада қалай өзгергені және олардың алдағы есеп күндері.';

  @override
  String get benchmarkTitle => 'S&P 500-мен салыстыру';

  @override
  String get benchmarkTitleIndex => 'Индекспен салыстыру';

  @override
  String get benchmarkHintIndex =>
      'Әр сатып алу сол күні таңдалған индексті қадағалайтын қорға салынғандай. Дивидендтерсіз; өткен табыстылық болашақты болжамайды.';

  @override
  String get benchmarkYours => 'Сатып алуларыңыз';

  @override
  String benchmarkAhead(String points) {
    return 'Индекстен $points пайыздық тармаққа жақсы';
  }

  @override
  String benchmarkBehind(String points) {
    return 'Индекстен $points пайыздық тармаққа артта';
  }

  @override
  String get portfolioSell => 'Сату';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbol сату';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Бір акцияның сату бағасы ($currency)';
  }

  @override
  String get portfolioSellDate => 'Сату күні';

  @override
  String get portfolioSellAll => 'Барлығы';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Сізде $quantity бар';
  }

  @override
  String get portfolioSold => 'Сатылды';

  @override
  String get portfolioRealized => 'Іске асқан';

  @override
  String get portfolioClosed => 'Жабық позициялар';

  @override
  String get portfolioClosedNote => 'Барлық акция сатылды';

  @override
  String get portfolioTransactions => 'Операциялар';

  @override
  String get portfolioRealizedByYear => 'Жылдар бойынша іске асқан пайда';

  @override
  String get portfolioRealizedHint =>
      'Сатулар алдымен ең ескі сатып алуларыңызбен сәйкестендіріледі (FIFO) және бүгінгі айырбас бағамы бойынша есептеледі. Салық декларациясы үшін брокеріңіздің үзінді көшірмесін пайдаланыңыз.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Осы талдаудан кейін жаңа тоқсандық есеп жарияланды ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Жаңа есеп';

  @override
  String get portfolioImportBrokers =>
      'Revolut, Trading 212, Interactive Brokers, DEGIRO, Schwab, Fidelity және Robinhood экспорттары да сатулармен және дивидендтермен (төлем көзінен ұсталған салықты шегергенде) бірге танылады; салымдар өткізіліп жіберіледі.';

  @override
  String get portfolioImportFile => 'Файл таңдау';

  @override
  String offlineBanner(String time) {
    return 'Байланыс жоқ – соңғы сақталған деректер көрсетілуде ($time).';
  }

  @override
  String get glossMarketCap =>
      'Бүкіл компанияның биржадағы құны: акция бағасы × акциялар саны.';

  @override
  String get glossSharesOutstanding =>
      'Компания қанша акция шығарғаны. Саны өссе, әр акцияға тиесілі үлес азаяды; акцияларды кері сатып алу оны азайтады.';

  @override
  String get glossPeTrailing =>
      'Баға ÷ соңғы 12 айдағы бір акцияға шаққандағы пайда: қазіргі пайданың неше жылына ақы төлейсіз. Төмені арзанырақ, бірақ жылдам өсетін компаниялардың P/E әдетте жоғары болады.';

  @override
  String get glossPeForward =>
      'P/E сияқты, бірақ талдаушылар келесі 12 айға күтетін пайдамен есептеледі. Өткен кезеңдегі P/E-ден төмен болса, пайданың өсуі күтіледі.';

  @override
  String get glossPb =>
      'Баға ÷ бір акцияға шаққандағы баланстық құн (активтер минус қарыздар). Шамамен 1 нарық компанияны оның қағаз жүзіндегі мүлкі бойынша бағалайтынын білдіреді.';

  @override
  String get glossPs =>
      'Нарықтық құн ÷ жылдық түсім. Пайдасы әлі аз немесе жоқ компаниялар үшін пайдалы; бір салада салыстырыңыз.';

  @override
  String get glossEvToFcf =>
      'Қарызды қоса алғандағы компания құны (EV) ÷ инвестициялардан кейін бір жылда тапқан ақшасы. Төмені бағаға шаққанда көбірек ақша аласыз дегенді білдіреді.';

  @override
  String get glossPeg =>
      'P/E ÷ күтілетін жылдық пайда өсімі (%). Шамамен 1 жиі әділ саналады; ол P/E-ні өсіммен салыстырып көрсетеді.';

  @override
  String get glossEps =>
      'Соңғы 12 айдағы бір акцияға шаққандағы пайда. Жылдар бойы өсіп келе жатқан EPS — сау компанияның ең күшті белгілерінің бірі.';

  @override
  String get glossBeta =>
      'Акцияның нарықпен бірге қаншалықты қозғалатыны: 1 = нарық сияқты, 1,5 = шамамен 50% үлкен ауытқулар, 1-ден төмен = тынышырақ.';

  @override
  String get glossRevenueTtm =>
      'Соңғы 12 айдағы жалпы сатылым, кез келген шығынға дейін.';

  @override
  String get glossNetIncomeTtm =>
      'Соңғы 12 айда барлық шығындардан, пайыздар мен салықтардан кейін қалған пайда.';

  @override
  String get glossGrossMargin =>
      'Тауарлардың тікелей өзіндік құнынан кейін түсімнің қалған үлесі. Жоғары маржа көбіне бағаны белгілеу күшін көрсетеді.';

  @override
  String get glossOperatingMargin =>
      'Бизнесті жүргізу шығындарынан (жалақы, жалдау ақысы, маркетинг) кейін, пайыздар мен салықтарға дейін түсімнің қалған үлесі.';

  @override
  String get glossNetMargin =>
      'Түсімнің түпкілікті пайдаға айналатын үлесі. 20% әр 100 сатылымның 20-сы пайда екенін білдіреді.';

  @override
  String get glossRoe =>
      'Капитал рентабельділігі: жылдық пайда ÷ иелердің капиталы. Басшылықтың акционерлер ақшасын қаншалықты тиімді пайдаланатынын көрсетеді; шамамен 15%-дан жоғары болса күшті.';

  @override
  String get glossRoa =>
      'Активтер рентабельділігі: жылдық пайда ÷ компанияның барлық мүлкі. Бір салада салыстырыңыз.';

  @override
  String get glossDebtToEquity =>
      'Қарыз ÷ иелердің капиталы. Жоғары болса, қарыз ақша көп: пайыздық мөлшерлеме өскенде не бизнес баяулағанда тәуекел жоғары.';

  @override
  String get glossCurrentRatio =>
      'Қысқа мерзімді активтер ÷ бір жыл ішінде төленетін міндеттемелер. 1-ден жоғары болса, компания жақын арадағы төлемдерін жаба алады.';

  @override
  String get glossRevenueGrowth =>
      'Түсімнің бір жыл бұрынғымен салыстырғанда қаншалықты өскені.';

  @override
  String get glossEpsGrowth =>
      'Бір акцияға шаққандағы пайданың бір жыл бұрынғымен салыстырғанда қаншалықты өскені.';

  @override
  String get glossDividendYield =>
      'Жылдық дивиденд ÷ акция бағасы: төлеген сомаңыздың пайызы ретінде жыл сайын алатын ақшалай табысыңыз.';

  @override
  String get glossDividendPerShare =>
      'Соңғы бір жылда бір акцияға төленген дивиденд.';

  @override
  String get glossPayoutRatio =>
      'Пайданың дивиденд ретінде төленетін үлесі. 100%-дан асса, компания тапқанынан көп төлейді, бұл сирек ұзаққа созылады.';

  @override
  String get portfolioBeta => 'Портфель бетасы';

  @override
  String get glossPortfolioBeta =>
      'Акцияларыңыздың құнына қарай өлшенген бетасы: нарық 1%-ға қозғалғанда акцияларыңыз шамамен қанша пайызға қозғалатыны. 1-ден жоғары болса, олар нарықтан көбірек ауытқиды, 1-ден төмен болса — азырақ. Қолма-қол қаражат есепке алынбайды.';

  @override
  String get portfolioTop3 => 'Ең ірі 3 позиция';

  @override
  String get glossPortfolioTop3 =>
      'Акцияларыңыз құнының қанша бөлігі ең ірі үш позицияңызға тиесілі. Ол неғұрлым жоғары болса, бір ғана компания туралы жаман жаңалық бүкіл портфельге соғұрлым көбірек зиян тигізуі мүмкін.';

  @override
  String get glossDividendGrowth5y =>
      'Соңғы бес жылда бір акцияға шаққандағы дивидендтің жылына орта есеппен қаншалықты өскені. Тұрақты өсім әдетте компанияның ақша ағынына сенетінін білдіреді; қысқарту көбіне ескерту белгісі болып табылады.';

  @override
  String get glossYieldOnCost =>
      'Соңғы 12 айда алынған дивидендтер әлі ұстап отырған акцияларға төлеген сомаңызға бөлінеді. Дивидендтік кірістіліктен айырмашылығы, ол бүгінгі бағаға емес, өзіңіздің сатып алу бағаңызға қатысты өлшенеді.';

  @override
  String get glossTitle => 'Бұл нені білдіреді?';

  @override
  String get watchNewsTitle => 'Акцияларыңыз туралы жаңалықтар';

  @override
  String get undo => 'Қайтару';

  @override
  String get watchSort => 'Сұрыптау';

  @override
  String get watchSortOwn => 'Менің ретім';

  @override
  String get watchSortGainers => 'Ең көп өскендер алдымен';

  @override
  String get watchSortLosers => 'Ең көп түскендер алдымен';

  @override
  String get watchSortName => 'Тикер бойынша (A–Z)';

  @override
  String get watchHint =>
      'Ретін өзгерту үшін тұтқаны сүйреңіз, жою үшін солға сырғытыңыз. Сызық соңғы 30 күнді көрсетеді.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: талдауыңыз дайын.';
  }

  @override
  String alertFromCost(String price) {
    return 'Орташа сатып алу бағаңыздан ($price):';
  }

  @override
  String get briefTitle => 'Бүгін акцияларыңызбен';

  @override
  String get briefButton => 'Бүгінді қорыту';

  @override
  String get briefHint =>
      'Портфеліңіз бен таңдаулыларыңыздың бүгін қалай өзгергені және соңғы жаңалықтардың олар туралы не дейтіні туралы қысқа AI қорытындысы. Талдау жұмсамайды.';

  @override
  String get briefRefresh => 'Жаңарту';

  @override
  String get sectionEarnings => 'Тоқсандық нәтижелер';

  @override
  String earningsNext(String date) {
    return 'Келесі есеп: $date';
  }

  @override
  String get earningsExpected => 'Күтілген EPS';

  @override
  String get earningsReported => 'Жарияланған EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: 'EPS күтілгеннен жоғары не тең: соңғы $total тоқсанның $beats',
      one: 'EPS күтілгеннен жоғары не тең: 1 тоқсанның $beats',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol ертең тоқсандық нәтижелерін жариялайды';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol бүгін тоқсандық нәтижелерін жариялайды';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return '$symbol дивиденді бүгін күтілуде';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Шамамен $amount. Түскен соң оны портфеліңізге жазыңыз.';
  }

  @override
  String get dividendRemindersTitle => 'Дивидендтер туралы еске салу';

  @override
  String get dividendRemindersSubtitle =>
      'Жазылған төлемдеріңіздің ырғағы бойынша дивиденд күтілетін күні хабарландыру, оны жазып қоюыңыз үшін';

  @override
  String get earningsRemindersTitle => 'Нәтижелер туралы еске салу';

  @override
  String get earningsRemindersSubtitle =>
      'Таңдаулыларыңыздағы немесе портфеліңіздегі акциялар тоқсандық нәтижелерін жариялардан бір күн бұрын хабарландыру';

  @override
  String addAllToFavorites(int count) {
    return 'Барлығын таңдаулыларға қосу ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Скриншоттан импорттау';

  @override
  String get holdingsReading => 'Позициялар оқылуда…';

  @override
  String get holdingsReviewTitle => 'Табылған позициялар';

  @override
  String get holdingsReviewHint =>
      'Қоспас бұрын сандарды тексеріңіз. Баға — бүгінгі баға емес, бір акцияның орташа сатып алу бағасы.';

  @override
  String get holdingsNoPrice => 'Суретте орташа сатып алу бағасы жоқ';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count позиция қосу',
      one: '1 позиция қосу',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Бұл суретте акция позициялары табылмады. Брокеріңіздің позициялар немесе активтер бетінің скриншотын қолданып көріңіз.';

  @override
  String get week52Range => '52 апталық диапазон';

  @override
  String week52BelowHigh(String percent) {
    return '52 апталық максимумнан $percent төмен';
  }

  @override
  String get week52AtHigh => '52 апталық максимумда';

  @override
  String get alertKindTrailing => 'Шыңнан түссе';

  @override
  String get alertTrailingPercent => 'Шыңнан төмендеу (%)';

  @override
  String get alertTrailingHint =>
      'Бағаны жоғары қарай қадағалайды: баға орнатылғаннан бергі ең жоғары деңгейінен осынша түссе, ескертеді.';

  @override
  String alertDescTrailing(String percent) {
    return 'Шыңнан $percent төмендеу';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'осы кезге дейінгі шың: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol шыңнан $percent түсті';
  }

  @override
  String get sectionInsiders => 'Инсайдерлік мәмілелер';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сатып алу',
      one: '1 сатып алу',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сату',
      one: '1 сату',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Таза: $shares акция';
  }

  @override
  String get insiderBuy => 'Сатып алынды';

  @override
  String get insiderSell => 'Сатылды';

  @override
  String get insiderHint =>
      'Соңғы 90 күнде басшылар мен директорлардың ашық нарықтағы сатып алулары мен сатулары (SEC Form 4). Опциондарды орындау және акциямен марапаттау есептелмейді.';

  @override
  String get insiderNone =>
      'Соңғы 90 күнде ашық нарықта инсайдерлік сатып алу немесе сату болған жоқ.';

  @override
  String get analystTrend => 'Пікірлер ай сайын қалай өзгерді';

  @override
  String get watchListAll => 'Барлығы';

  @override
  String get watchListNew => 'Жаңа тізім';

  @override
  String get watchListName => 'Тізім атауы';

  @override
  String get watchListRename => 'Тізімнің атын өзгерту';

  @override
  String get watchListDelete => 'Тізімді жою';

  @override
  String get watchListAddTo => 'Тізімге қосу';

  @override
  String get watchListEmpty =>
      'Бұл тізімде әзірге акциялар жоқ. Қосу үшін акцияның жанындағы тізім түймесін түртіңіз.';

  @override
  String get portfolioAskTitle => 'Портфеліңіз туралы сұрақтар';

  @override
  String get rangeYtd => 'Биыл';

  @override
  String get backupTitle => 'Сақтық көшірме';

  @override
  String get backupSave => 'Сақтық көшірмені сақтау';

  @override
  String get backupSaveHint =>
      'Таңдаулыларыңыз, тізімдеріңіз, портфеліңіз, ескертулеріңіз және жазбаларыңыз бір файлда.';

  @override
  String get backupRestore => 'Сақтық көшірмеден қалпына келтіру';

  @override
  String get backupRestoreHint =>
      'Файлдағыны қосады; қазіргі деректеріңізден ештеңе жойылмайды.';

  @override
  String get backupRestored => 'Сақтық көшірме қалпына келтірілді.';

  @override
  String get backupInvalid => 'Бұл файл WhatStock сақтық көшірмесі емес.';

  @override
  String get allocationPositions => 'Акциялар';

  @override
  String get allocationSectors => 'Секторлар';

  @override
  String get allocationCurrencies => 'Валюталар';

  @override
  String get allocationAccounts => 'Шоттар';

  @override
  String get compareReturn1y => '1 жылдық табыстылық';

  @override
  String get compareFromHigh => '52 апталық максимумнан қашықтық';

  @override
  String get briefAutoTitle => 'Күн сайын таңертең күнделікті шолу';

  @override
  String get briefAutoSubtitle =>
      '«Бүгін акцияларыңызбен» қолданба жұмыс істеп тұрғанда сағат 7:00-ден кейін автоматты түрде дайындалады; компьютерлерде бұл туралы хабарландыру көрсетіледі. Күнделікті сұрақтар лимитіңізден жұмсалады, талдау емес.';

  @override
  String get targetsButton => 'Мақсатты құрылым';

  @override
  String get targetsTitle => 'Мақсатты құрылым';

  @override
  String get targetsHint =>
      'Әр акция портфельдің қандай үлесін алуы керек екенін көрсетіңіз. Мақсат жоқ болса, өрісті бос қалдырыңыз. Содан кейін қолданба оған жету үшін не сатып алу немесе сату керегін көрсетеді.';

  @override
  String targetsSum(String percent) {
    return 'Барлығы: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Сатып алу ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Сату ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Мақсатқа сай';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol күтілген EPS-тен асты';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol күтілген EPS-ке жетпеді';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'Жарияланған EPS $actual, күтілген $estimate';
  }

  @override
  String get newsExplain => 'Бұл нені білдіреді?';

  @override
  String get watchAlertAll => 'Үлкен күндік өзгерістер туралы ескерту';

  @override
  String get watchAlertAllHint =>
      'Осы тізімдегі әр акцияға баға ескертуі: бір күнде осынша жоғары не төмен өзгерсе, хабар береді. Ескертуі бұрыннан бар акциялар өзінікін сақтайды.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ескерту орнатылды',
      one: '1 ескерту орнатылды',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized =>
      'Іске асырылған пайданы экспорттау (CSV)';

  @override
  String get portfolioAnnualReturn => 'Жылдық кірістілік';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / жыл';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Ақша ағындарымен өлшенген жылдық кірістілік (XIRR): қашан сатып алып, қашан сатқаныңызды ескереді, сондықтан кейін қосылған ақша оны бұрмаламайды. Алғашқы сатып алуыңызға кемінде бір жыл толғанда көрсетіледі; дивидендтер есепке алынбайды.';

  @override
  String get eventsAddToCalendar => 'Күнтізбеге қосу (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Портфель хабарландыруы';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Бүкіл портфеліңіз бір күнде осынша өзгергенде хабарландыру.';

  @override
  String get portfolioMoveAlertOff => 'Өшірулі';

  @override
  String portfolioMoveUp(String percent) {
    return 'Портфеліңіз бүгін $percent өсті';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Портфеліңіз бүгін $percent төмендеді';
  }

  @override
  String get whatIfTitle => 'Инвестиция салғаныңызда не болар еді?';

  @override
  String get whatIfAmount => 'Сома';

  @override
  String whatIfResult(String amount, String period) {
    return '$period бұрын салынған $amount бүгін мынаған тең болар еді';
  }

  @override
  String get whatIfNote =>
      'Тек акция бағасына негізделген: дивидендтер, комиссиялар мен салықтар есепке алынбаған. Өткен табыстылық болашақты болжамайды.';

  @override
  String get watchShare => 'Тізіммен бөлісу';

  @override
  String get watchImport => 'Тикер қосу';

  @override
  String get watchImportHint =>
      'Тикерлерді үтір, бос орын немесе жаңа жол арқылы бөліп қойыңыз – мысалы, біреу сізбен бөліскен тізімді.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count акция қосылды',
      one: '1 акция қосылды',
      zero: 'Жаңа акция жоқ',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Ең ірілері алдымен';

  @override
  String get positionsSortGain => 'Ең жоғары жалпы табыс алдымен';

  @override
  String get positionsSortToday => 'Бүгінгі үздіктер алдымен';

  @override
  String get chartMyBuys => 'Сіздің сатып алуларыңыз';

  @override
  String get chartMySells => 'Сіздің сатуларыңыз';

  @override
  String get shortcutsTitle => 'Пернелер тіркесімдері';

  @override
  String usMarketOpen(String time) {
    return 'АҚШ нарығы ашық · жабылуына $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'АҚШ нарығы жабық · ашылуына $time';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes мин';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours сағ $minutes мин';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days күн $hours сағ';
  }

  @override
  String get dividendGoalSet => 'Айлық дивиденд мақсатын қою';

  @override
  String get dividendGoalTitle => 'Айлық дивиденд мақсаты';

  @override
  String get dividendGoalAmount => 'Айына дивиденд';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Қазіргі кірістілікпен айына шамамен $amount · $percent · мақсат: $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Қазіргі кірістілікпен айына шамамен $amount · мақсат орындалды: $goal';
  }

  @override
  String get portfolioAccount => 'Шот';

  @override
  String get portfolioAccountHint => 'мысалы, TBSZ 2026 (міндетті емес)';

  @override
  String get portfolioAccountAdd => 'Шотты көрсету';

  @override
  String get portfolioAccountsAll => 'Барлық шоттар';

  @override
  String get portfolioAccountNote =>
      'Тек осы шоттың операциялары мен дивидендтері. Қолма-қол қаражат, мақсаттар және AI талдауы «Барлық шоттар» бөлімінде көрсетіледі.';

  @override
  String get portfolioNoAccount => 'Шотсыз';

  @override
  String portfolioFee(String currency) {
    return 'Комиссия ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Комиссия қосу';

  @override
  String portfolioFeeRow(String amount) {
    return 'Комиссия: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'Жылдық қорытынды';

  @override
  String get portfolioProceeds => 'Сатудан түскен түсім';

  @override
  String get portfolioCostBasis => 'Сатып алу құны';

  @override
  String get portfolioFeesPaid => 'Төленген комиссия';

  @override
  String get portfolioAnnualSummaryNote =>
      'Сомалар бастапқы валютада, айырбасталмаған. Сатудан түскен түсім сату комиссиясы шегерілгеннен кейін көрсетіледі; сатып алу құнына сатып алу комиссиясы кіреді (FIFO). Салық декларациясы үшін салық органыңыз талап ететін бағам бойынша айырбастаңыз.';

  @override
  String get portfolioShare => 'Нәтижелермен бөлісу';

  @override
  String get portfolioShareHeading => 'Менің портфелім';

  @override
  String get portfolioTopHoldings => 'Ең ірі позициялар';

  @override
  String get portfolioShareNote => 'Тек пайыздар бөлісіледі, сомалар емес.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count позиция',
      one: '1 позиция',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'Инвестициялық кеңес емес';

  @override
  String get contributionButton => 'Жаңа қаражат салу';

  @override
  String contributionAmount(String currency) {
    return 'Салынатын сома ($currency)';
  }

  @override
  String get contributionHint =>
      'Тек сатып алу, сатусыз: қаражатты алдымен мақсатынан ең көп қалып отырған позициялар алады.';

  @override
  String contributionShares(String shares) {
    return '≈ $shares акция';
  }

  @override
  String contributionMissing(String symbols) {
    return '$symbols үшін ағымдағы баға жоқ: бөлуге қосылмады.';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'Жылдық кірістілік сақталса ($rate), мақсатқа шамамен $year жылы жетесіз.';
  }

  @override
  String get portfolioMaxDrawdown => 'Ең үлкен құлдырау';

  @override
  String get glossMaxDrawdown =>
      'Акцияларыңыз құнының бұрынғы шыңнан кейінгі ең төменгі деңгейге дейінгі ең үлкен құлдырауы, сатып алу мен сатуларыңыздың әсерінсіз (уақыт бойынша өлшенген). Портфеліңіздің бұрын қаншалықты терең құлдырауды бастан өткергенін көрсетеді.';

  @override
  String watchSince(String date) {
    return 'Таңдаулыларға қосылғаннан бері ($date)';
  }

  @override
  String get portfolioSampleTry => 'Үлгі портфельмен сынап көру';

  @override
  String get portfolioSampleBanner =>
      'Бұл – үлгі портфель. Оның жанына өз сатып алуларыңызды қосыңыз немесе оны жойыңыз.';

  @override
  String get portfolioSampleRemove => 'Үлгіні жою';

  @override
  String get portfolioStopsAll => 'Барлық позицияға трейлинг-стоп';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count трейлинг-стоп орнатылды',
      one: '1 трейлинг-стоп орнатылды',
      zero: 'Барлық позицияда трейлинг-стоп бұрыннан бар',
    );
    return '$_temp0';
  }

  @override
  String portfolioSinceSale(String percent) {
    return '$percent сатқаннан бері';
  }

  @override
  String get lotPreviewRealized => 'Осы сатудан іске асқан (FIFO):';

  @override
  String lotPreviewAverage(String after, String before) {
    return 'Жаңа орташа баға: $after (қазір $before)';
  }

  @override
  String get portfolioYtdReturn => 'Биылғы кірістілік';

  @override
  String get glossTwrYtd =>
      'Жыл басынан бергі (немесе алғашқы сатып алуыңыз биыл болса, содан бергі) уақыт бойынша өлшенген кірістілік: әр күн сол күні сізде болған акциялардың өзгерісін есептейді, ал күндер бір-біріне тізбектеледі – сіз салған немесе шығарған ақша кірістілік емес, сондықтан оны индекспен салыстыруға болады. Астында: сол кезеңдегі таңдалған индекс.';

  @override
  String alertDistance(String price, String percent) {
    return 'Қазір $price · $percent қалды';
  }

  @override
  String get watchSortSince => 'Қосылғаннан бергі өзгеріс бойынша';

  @override
  String get portfolioTodayMovers => 'Бүгін ең көп өзгергендер:';

  @override
  String get lotNoteAdd => 'Жазба қосу';

  @override
  String get lotNoteBuyHint =>
      'Неге сатып алып жатырсыз? Ол күнімен бірге акция жазбаларына қосылады.';

  @override
  String get lotNoteSellHint =>
      'Неге сатып жатырсыз? Ол күнімен бірге акция жазбаларына қосылады.';

  @override
  String get lotNoteBought => 'Сатып алынды';

  @override
  String get positionHeld => 'Ұстау мерзімі';

  @override
  String durationMonths(int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months ай',
      one: '$months ай',
    );
    return '$_temp0';
  }

  @override
  String durationDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days күн',
      one: '$days күн',
    );
    return '$_temp0';
  }

  @override
  String positionHeldSince(String date) {
    return '$date бастап';
  }

  @override
  String lotPreviewWeight(String after, String before) {
    return 'Кейін портфельдегі үлес: $after (қазір $before)';
  }

  @override
  String lotFromCash(String amount) {
    return 'Қолма-қол қаражаттан төлеу (қазір $amount)';
  }

  @override
  String lotToCash(String amount) {
    return 'Қолма-қол қаражатқа қосу (қазір $amount)';
  }

  @override
  String get onboardTitle4 => 'Портфеліңізді бақылаңыз';

  @override
  String get onboardBody4 =>
      'Брокеріңіздің экспортын импорттаңыз (Revolut, Trading 212, IBKR, DEGIRO, Schwab…) немесе операцияларды қолмен қосыңыз: кірістілігіңізді индекспен салыстыра, дивидендтеріңізді және салық декларациясына арналған жылдық қорытындыны көріңіз.';

  @override
  String get lotEdit => 'Өңдеу';

  @override
  String lotEditTitle(String symbol) {
    return 'Операцияны өңдеу · $symbol';
  }

  @override
  String get lotSave => 'Сақтау';

  @override
  String dividendEditTitle(String symbol) {
    return 'Дивидендті өңдеу · $symbol';
  }

  @override
  String get activityTitle => 'Барлық операциялар';

  @override
  String get activitySearchHint => 'Тикер бойынша сүзу';

  @override
  String get activityNoMatch => 'Сүзгіге сәйкес операция жоқ.';

  @override
  String portfolioImportDuplicates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count бұрыннан жазылған, қосылмады',
      one: '1 бұрыннан жазылған, қосылмады',
    );
    return '$_temp0';
  }

  @override
  String get tickerChange => 'Тикерді ауыстыру';

  @override
  String tickerChangeTitle(String symbol) {
    return 'Тикерді ауыстыру · $symbol';
  }

  @override
  String get tickerChangeNew => 'Жаңа тикер';

  @override
  String get tickerChangeHint =>
      'Компания тикерін өзгерткенде (мысалы, FB → META): барлық операциялар, дивидендтер, акция бөлулері, жазба және ескертулер жаңа тикерге көшеді.';

  @override
  String tickerChanged(String symbol) {
    return '$symbol тикеріне көшірілді';
  }

  @override
  String get referralErrSignIn =>
      'Досыңыздың кодын қолдану үшін электрондық поштаңызбен кіріңіз.';

  @override
  String get referralErrFull => 'Бұл код қолдану шегіне жетті.';

  @override
  String portfolioGoalReachedBody(String value) {
    return 'Портфеліңіздің құны енді $value.';
  }

  @override
  String get errAiTruncated =>
      'Талдау аяқталмай үзіліп қалды. Қайталап көріңіз – лимитіңізден ештеңе есептелмеді.';

  @override
  String get errImageUnsupported =>
      'Бұл суретті оқу мүмкін емес. Оны JPEG немесе PNG пішімінде сақтап, қайталап көріңіз.';

  @override
  String get errRateLimited =>
      'Қысқа уақытта тым көп сұрау жіберілді. Бір минут күтіп, қайталап көріңіз.';

  @override
  String get watchListNameTaken => 'Бұл атаумен тізім бұрыннан бар.';

  @override
  String watchListLimit(int max) {
    return 'Ең көбі $max тізім жасай аласыз.';
  }

  @override
  String get portfolioGoalSet => 'Мақсат қою';

  @override
  String get portfolioGoalTitle => 'Портфель мақсаты';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · мақсат: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Мақсат орындалды: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Мақсатты жою';

  @override
  String get alertEdit => 'Ескертуді өңдеу';

  @override
  String get positionOpenLots => 'Әлі де қолыңызда (алдымен ең ескілері)';

  @override
  String get lotRemoved => 'Операция жойылды';

  @override
  String get alertDeleted => 'Ескерту жойылды';

  @override
  String get alertsClearTriggered => 'Іске қосылған ескертулерді тазалау';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ескерту тазаланды',
      one: '1 ескерту тазаланды',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Басты экран';

  @override
  String get allocationCountries => 'Елдер';

  @override
  String get newsExplainNoteResearch =>
      'AI түсіндірмесі: фактілерді интернеттен іздейді, мақаланы ашады және дереккөздің қаншалықты сенімді екенін бағалайды. Инвестициялық кеңес емес. Күнделікті сұрақтар лимитіңізден жұмсалады, талдау емес.';

  @override
  String get sourceOfficial => 'Ресми';

  @override
  String get sourcePressRelease => 'Пресс-релиз';

  @override
  String get sourceMajorNews => 'Ірі БАҚ';

  @override
  String get sourceOpinion => 'Пікір';

  @override
  String get earningsSummaryButton => 'Соңғы есепте не болды?';

  @override
  String get earningsSummaryNote =>
      'Компанияның нәтижелер туралы хабарламасы мен интернеттен тапқан баспасөз жарияланымдарының AI қорытындысы. Инвестициялық кеңес емес. Күнделікті сұрақтар лимитіңізден жұмсалады, талдау емес.';

  @override
  String get compareLastSurprise => 'Соңғы тоқсан EPS vs күтілген';

  @override
  String get compareNextReport => 'Келесі есеп';

  @override
  String get resolvingDescription =>
      'Қай акцияны айтып отырғаныңыз анықталуда…';

  @override
  String get instrumentTitle => 'Бұл құрал туралы';

  @override
  String get instrumentHint =>
      'Бұл символ үшін компания профилі жоқ – бұл ETF, қор немесе депозитарлық қолхат болуы мүмкін. AI-дан бұл не, құрамында не бар және бағасы қанша екенін сұраңыз.';

  @override
  String get instrumentAsk => 'Бұл не?';

  @override
  String get instrumentNote =>
      'Эмитенттің қор беті мен интернеттен тапқан қаржы сайттары негізіндегі AI түсіндірмесі. Инвестициялық кеңес емес. Күнделікті сұрақтар лимитіңізден жұмсалады, талдау емес.';

  @override
  String suggestAskAi(String query) {
    return 'AI-дан сұрау: «$query»';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return '$symbols үшін ағымдағы баға жоқ.';
  }

  @override
  String get eventsRecentResults => 'Жақында жарияланған нәтижелер';

  @override
  String get saveToNotes => 'Жазбаларыма сақтау';

  @override
  String get savedToNotes => 'Жазбаларыңызға сақталды';

  @override
  String get portfolioDividendsReceived => 'Алынған дивидендтер';

  @override
  String get portfolioDividendsThisYear => 'Биыл';

  @override
  String get portfolioDividendsAllTime => 'Барлық уақыт';

  @override
  String get portfolioAddDividend => 'Дивиденд қосу';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Алынған сома ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Төлем күні';

  @override
  String get portfolioDividendsEmpty =>
      'Дивидендтер әлі жазылмаған. Қолмен қосыңыз немесе брокеріңіздің экспортын импорттаңыз – ондағы дивиденд жолдары да алынады.';

  @override
  String get portfolioSplit => 'Акцияларды бөлу';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Акцияларды бөлу: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Бөлуге дейінгі күнмен белгіленген сатып алулар мен сатулар түзетіледі: акция саны көбейтіліп, бір акцияның бағасы бөлінеді, сондықтан шығын өзгермейді.';

  @override
  String get portfolioSplitRatio => 'Қатынас (жаңа : ескі)';

  @override
  String get portfolioSplitRatioError =>
      '10:1 сияқты қатынасты енгізіңіз, кері бөлу үшін 1:10.';

  @override
  String get portfolioSplitDate => 'Бөлу күні';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Акцияларды бөлу $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Акцияларды бөлу жойылды';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count акция бөлуі қосылды',
      one: '1 акция бөлуі қосылды',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дивиденд қосылды',
      one: '1 дивиденд қосылды',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Дивидендтерді экспорттау (CSV)';

  @override
  String get portfolioDividendDeleted => 'Дивиденд жойылды';

  @override
  String get portfolioDividendsHint =>
      'Сомалар шотыңызға келген күйінде, төлем валютасында; жиындар бүгінгі бағам бойынша айырбасталады. Салық декларациясы үшін брокеріңіздің үзінді көшірмесін пайдаланыңыз.';

  @override
  String get awayTitle => 'Сіз болмаған кезде';

  @override
  String awaySince(String when) {
    return '$when бастап';
  }

  @override
  String get awayQuiet => 'Көп нәрсе өзгерген жоқ.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count хабарландыру іске қосылды',
      one: '1 хабарландыру іске қосылды',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Нәтижелерін жариялады: $symbols';
  }

  @override
  String get moveWhyButton => 'Бүгін неге өзгеріп жатыр?';

  @override
  String moveWhyTitle(String percent) {
    return 'Бүгін $percent';
  }

  @override
  String get moveWhyNote =>
      'Интернеттен табылған бүгінгі жаңалықтар негізіндегі ЖИ түсіндірмесі; шынайы себеп белгісіз немесе басқа болуы мүмкін. Инвестициялық кеңес емес. Күнделікті сұрақ лимитіңізді пайдаланады, талдауды емес.';

  @override
  String get sectionTechnical => 'Техникалық көрініс';

  @override
  String get labelSma50 => '50 күндік орташа';

  @override
  String get labelSma200 => '200 күндік орташа';

  @override
  String get labelRsi => 'RSI (14 күн)';

  @override
  String get labelVolatility30 => 'Құбылмалылық (30 күн)';

  @override
  String techAbove(String percent) {
    return '$percent жоғары';
  }

  @override
  String techBelow(String percent) {
    return '$percent төмен';
  }

  @override
  String get techOverbought => 'шамадан тыс сатып алынған';

  @override
  String get techOversold => 'шамадан тыс сатылған';

  @override
  String get techNeutral => 'бейтарап';

  @override
  String get techGoldenCross =>
      '50 күндік орташа 200 күндік орташадан жоғары – классикалық түсіндірме бойынша өсу тренді.';

  @override
  String get techDeathCross =>
      '50 күндік орташа 200 күндік орташадан төмен – классикалық түсіндірме бойынша төмендеу тренді.';

  @override
  String get glossSma50 =>
      'Соңғы 50 сауда күнінің орташа жабылу бағасы. Одан жоғары баға көбінесе қысқа мерзімді күш, төмен баға әлсіздік деп оқылады.';

  @override
  String get glossSma200 =>
      'Соңғы 200 сауда күнінің орташа жабылу бағасы – классикалық ұзақ мерзімді тренд сызығы. Көп инвестор одан жоғары бағаны ұзақ мерзімді өсу тренді деп санайды.';

  @override
  String get glossRsi =>
      'Салыстырмалы күш индексі: соңғы өсімдерді соңғы шығындармен 0–100 шкаласында салыстырады. 70-тен жоғары болса, акцияны көбінесе шамадан тыс сатып алынған (тез өсті), 30-дан төмен болса шамадан тыс сатылған дейді – бірақ күшті тренд сол жерде ұзақ қала алады.';

  @override
  String get glossVolatility =>
      'Бағаның күннен күнге қалай ауытқуы, жылдық есепте: 20% дегеніміз қалыпты жылда баға шамамен ±20% аралығында қозғалады. Жоғары құбылмалылық – екі бағытта да үлкен қозғалыс.';

  @override
  String get techNote =>
      'Күнделікті жабылу бағаларынан есептелген. Техникалық сигналдар өткенді сипаттайды, болашақты емес.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$count позицияның ішінен $above позиция 200 күндік орташасынан жоғары';
  }

  @override
  String get watchSignalsTitle => 'Сигналдар';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · шамадан тыс сатылған';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · шамадан тыс сатып алынған';
  }

  @override
  String get signalCrossedAbove => '200 күндік орташадан жоғары өтті';

  @override
  String get signalCrossedBelow => '200 күндік орташадан төмен түсті';

  @override
  String get signalAlertsTitle => 'Техникалық сигнал хабарландырулары';

  @override
  String get signalAlertsSubtitle =>
      'Күніне бір рет, сіз бақылап отырған акция шамадан тыс сатылған немесе шамадан тыс сатып алынған (RSI) болғанда, не оның бағасы 200 күндік орташаны кесіп өткенде.';

  @override
  String get signalAlertsNotification => 'Техникалық сигналдар';

  @override
  String get glossaryPageTitle => 'Глоссарий';

  @override
  String get glossaryPageSubtitle =>
      'Қолданба көрсететін әр көрсеткіштің қарапайым түсіндірмесі, P/E-ден RSI-ге дейін';

  @override
  String get glossarySearchHint => 'Глоссарийден іздеу';

  @override
  String get portfolioCash => 'Қолма-қол қаражат';

  @override
  String get portfolioCashTitle => 'Қолма-қол қаражат қалдығы';

  @override
  String get portfolioCashHint =>
      'Брокеріңіздегі салынбаған қаражат, валюта бойынша. Жалпы құн мен құрылымда есептеледі; кірістілікте есептелмейді.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Сома ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Қолма-қол қалдықты орнату';

  @override
  String get portfolioDividendsByMonth => 'Ай бойынша';

  @override
  String get dividendsLegendReceived => 'Алынған';

  @override
  String get dividendsLegendExpected => 'Күтілетін';

  @override
  String get portfolioDividendsExpected => 'Келесі күтілетін';

  @override
  String get portfolioDividendsExpectedNote =>
      'Сіз жазған төлемдердің күндері мен сомалары бойынша бағаланған; компаниялар оларды өзгерте немесе өткізіп жібере алады.';

  @override
  String portfolioDividendAround(String date) {
    return 'шамамен $date';
  }
}
