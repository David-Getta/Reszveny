// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kinyarwanda (`rw`).
class AppLocalizationsRw extends AppLocalizations {
  AppLocalizationsRw([String locale = 'rw']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Fata ifoto y\'umugabane, umenye byose biwerekeyeho.';

  @override
  String get homeHint =>
      'Icyemezo cy\'imigabane, mugaragaza ya porogaramu y\'umuhuza w\'imari, ikinyamakuru cyangwa ikirango cy\'ikigo – ikintu cyose kigaragaza umugabane.';

  @override
  String get takePhoto => 'Fata ifoto';

  @override
  String get chooseFromGallery => 'Hitamo mu mafoto';

  @override
  String get chooseImage => 'Hitamo ifoto';

  @override
  String get enterTickerManually => 'Andika ticker ubwawe';

  @override
  String get tickerInputLabel => 'Ikimenyetso (ticker)';

  @override
  String get tickerInputHint => 'urugero: AAPL';

  @override
  String get lookUp => 'Shakisha';

  @override
  String demoModeBanner(String symbols) {
    return 'Uburyo bw\'icyitegererezo – nta rufunguzo rw\'amakuru y\'isoko rwashyizweho. Amakuru y\'icyitegererezo araboneka kuri: $symbols.';
  }

  @override
  String get recognizing => 'Turimo gusesengura ifoto…';

  @override
  String get loadingData => 'Amakuru arimo kuza…';

  @override
  String get noCandidatesTitle => 'Nta mugabane wamenyekanye';

  @override
  String get noCandidatesBody =>
      'Ntitwashoboye kumenya umugabane kuri iyi foto. Gerageza ifoto igaragara neza, cyangwa wandike ticker ubwawe.';

  @override
  String get whatWeSaw => 'Ibyo twabonye';

  @override
  String get chooseCandidateTitle => 'Ni uwuhe mugabane washakaga?';

  @override
  String confidencePercent(int percent) {
    return 'Icyizere $percent%';
  }

  @override
  String get settings => 'Igenamiterere';

  @override
  String get language => 'Ururimi';

  @override
  String get systemLanguage => 'Ururimi rwa sisitemu';

  @override
  String get about => 'Ibyerekeye';

  @override
  String get disclaimer =>
      'Iyi porogaramu itanga amakuru gusa, ntabwo ari inama yo gushora imari. Amakuru ashobora gutinda cyangwa kuba atari yo.';

  @override
  String dataSource(String source) {
    return 'Inkomoko y\'amakuru: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Kumenya ifoto: $source';
  }

  @override
  String get retry => 'Ongera ugerageze';

  @override
  String get cancel => 'Hagarika';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Funga';

  @override
  String get errorGeneric => 'Habaye ikosa.';

  @override
  String get errorSectionUnavailable => 'Iki gice nticyashoboye gufunguka.';

  @override
  String get notAvailable => 'ntibihari';

  @override
  String get sectionIdentity => 'Umwirondoro';

  @override
  String get sectionPrice => 'Igiciro';

  @override
  String get sectionValuation => 'Igenagaciro';

  @override
  String get sectionFinancials => 'Imari';

  @override
  String get sectionDividend => 'Inyungu ku migabane';

  @override
  String get sectionProfile => 'Umwirondoro w\'ikigo';

  @override
  String get sectionAnalysts => 'Ibitekerezo by\'abasesenguzi';

  @override
  String get sectionNews => 'Amakuru mashya';

  @override
  String get sectionRecognition => 'Uko byamenyekanye';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Isoko ry\'imigabane';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Ifaranga';

  @override
  String get labelCountry => 'Igihugu';

  @override
  String get labelIndustry => 'Ishami';

  @override
  String get labelSector => 'Urwego';

  @override
  String get labelWebsite => 'Urubuga';

  @override
  String get labelIpoDate => 'Itariki ya IPO';

  @override
  String get labelMarketCap => 'Agaciro ku isoko';

  @override
  String get labelSharesOutstanding => 'Imigabane yose yatanzwe';

  @override
  String get labelEmployees => 'Abakozi';

  @override
  String get labelCeo => 'Umuyobozi mukuru';

  @override
  String get labelHeadquarters => 'Icyicaro gikuru';

  @override
  String get labelDescription => 'Ibisobanuro';

  @override
  String get labelLastPrice => 'Igiciro cya nyuma';

  @override
  String get labelChange => 'Ihinduka';

  @override
  String get labelOpen => 'Ifungura';

  @override
  String get labelDayHigh => 'Hejuru ku munsi';

  @override
  String get labelDayLow => 'Hasi ku munsi';

  @override
  String get labelPreviousClose => 'Ifunga riheruka';

  @override
  String get labelWeek52High => 'Hejuru mu byumweru 52';

  @override
  String get labelWeek52Low => 'Hasi mu byumweru 52';

  @override
  String get labelAverageVolume10d => 'Ingano mpuzandengo (iminsi 10)';

  @override
  String updatedAt(String time) {
    return 'Byavuguruwe $time';
  }

  @override
  String get labelPeTrailing => 'P/E (iheruka)';

  @override
  String get labelPeForward => 'P/E (iteganyijwe)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / amafaranga asigara (FCF)';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Amafaranga yinjiye (TTM)';

  @override
  String get labelNetIncomeTtm => 'Inyungu nyayo (TTM)';

  @override
  String get labelGrossMargin => 'Igipimo cy\'inyungu mbumbe';

  @override
  String get labelOperatingMargin => 'Igipimo cy\'inyungu y\'ibikorwa';

  @override
  String get labelNetMargin => 'Igipimo cy\'inyungu nyayo';

  @override
  String get labelRoe => 'Inyungu ku mari shingiro (ROE)';

  @override
  String get labelRoa => 'Inyungu ku mutungo (ROA)';

  @override
  String get labelDebtToEquity => 'Umwenda / imari shingiro';

  @override
  String get labelCurrentRatio => 'Igipimo cy\'ubwishyu';

  @override
  String get labelRevenueGrowth => 'Izamuka ry\'amafaranga yinjiye (YoY)';

  @override
  String get labelEpsGrowth => 'Izamuka rya EPS (YoY)';

  @override
  String get labelDividendYield => 'Igipimo cy\'inyungu ku migabane';

  @override
  String get labelDividendPerShare => 'Inyungu kuri buri mugabane';

  @override
  String get labelPayoutRatio => 'Igipimo cy\'inyungu igabanywa';

  @override
  String get labelConsensus => 'Igitekerezo rusange';

  @override
  String get ratingStrongBuy => 'Gura cyane';

  @override
  String get ratingBuy => 'Gura';

  @override
  String get ratingHold => 'Gumana';

  @override
  String get ratingSell => 'Gurisha';

  @override
  String get ratingStrongSell => 'Gurisha cyane';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Abasesenguzi $count',
      one: 'Umusesenguzi 1',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Igihe: $period';
  }

  @override
  String get noNews => 'Nta makuru mashya ahari.';

  @override
  String get openArticle => 'Fungura inkuru';

  @override
  String get openLinkFailed => 'Ntibyashobotse gufungura ihuza.';

  @override
  String get recognitionSummary => 'Incamake';

  @override
  String get recognitionEvidence => 'Impamvu tubitekereza';

  @override
  String get recognitionRawText => 'Inyandiko yasomwe ku ifoto';

  @override
  String get errMissingAnthropicKey =>
      'Kumenya amafoto ntibirashyirwaho (nta ANTHROPIC_API_KEY). Andika ticker ubwawe.';

  @override
  String get errRecognitionUnreachable =>
      'Ntibyashobotse kugera kuri serivisi yo kumenya amafoto. Reba ko murandasi yawe ikora.';

  @override
  String errRecognitionHttp(String status) {
    return 'Serivisi yo kumenya amafoto yagaruye ikosa (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Serivisi yo kumenya amafoto ntiyashoboye gusesengura iyi foto.';

  @override
  String get errRecognitionTruncated =>
      'Igisubizo cyo kumenya ifoto cyaciwe hagati. Ongera ugerageze.';

  @override
  String get errRecognitionBadResponse =>
      'Igisubizo kitari cyitezwe cyavuye muri serivisi yo kumenya amafoto.';

  @override
  String get errRecognitionEmpty =>
      'Serivisi yo kumenya amafoto yagaruye igisubizo kirimo ubusa.';

  @override
  String get errMissingFinnhubKey =>
      'Amakuru y\'isoko ntarashyirwaho (nta FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Ntibyashobotse kugera kuri serivisi y\'amakuru y\'isoko. Reba ko murandasi yawe ikora.';

  @override
  String get errMarketRateLimited =>
      'Ubusabe bwinshi cyane kuri serivisi y\'amakuru y\'isoko. Tegereza umunota umwe.';

  @override
  String errMarketHttp(String status) {
    return 'Serivisi y\'amakuru y\'isoko yagaruye ikosa (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Igisubizo kitari cyitezwe cyavuye muri serivisi y\'amakuru y\'isoko.';

  @override
  String errNoQuote(String symbol) {
    return 'Nta makuru y\'igiciro yabonetse kuri $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Nta mwirondoro w\'ikigo wabonetse kuri $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Uburyo bw\'icyitegererezo bwemera $symbols gusa. Ongeraho FINNHUB_API_KEY ngo ubone amakuru y\'ako kanya.';
  }

  @override
  String errUnknown(String detail) {
    return 'Habaye ikosa: $detail';
  }

  @override
  String get newSearch => 'Ishakisha rishya';

  @override
  String get recentSearches => 'Ibiheruka';

  @override
  String get noRecentSearches => 'Nta byo uheruka gushakisha.';

  @override
  String get clearRecent => 'Siba ibiheruka';

  @override
  String get greeting => 'Turebe uwuhe mugabane?';

  @override
  String get searchHint => 'Ticker cyangwa izina ry\'ikigo';

  @override
  String get attachImage => 'Omekaho ifoto';

  @override
  String get searchResultsTitle => 'Ibyavuye mu ishakisha';

  @override
  String errNoResults(String query) {
    return 'Nta migabane yabonetse kuri “$query”.';
  }

  @override
  String get quickBarHint => 'Andika ticker cyangwa izina ry\'ikigo…';

  @override
  String get openFullWindow => 'Fungura idirishya';

  @override
  String hotkeyHint(String shortcut) {
    return 'Kanda $shortcut aho uri hose ngo uhamagare WhatStock.';
  }

  @override
  String get trayOpen => 'Fungura WhatStock';

  @override
  String get trayQuickSearch => 'Ishakisha ryihuse';

  @override
  String get trayQuit => 'Sohoka';

  @override
  String get appearance => 'Imigaragarire';

  @override
  String get themeSystem => 'Sisitemu';

  @override
  String get themeDark => 'Umwijima';

  @override
  String get themeLight => 'Urumuri';

  @override
  String get back => 'Subira inyuma';

  @override
  String get aiSectionTitle => 'Isesengura rya AI';

  @override
  String get aiIntro =>
      'Isesengura rirambuye ryanditswe na AI: incamake y\'amakuru mashya, ubucuruzi bw\'ikigo, imbaraga, ibyago n\'ibintu bihishe, igenagaciro, icyerekezo cy\'igiciro n\'uko bishobora kugenda urebye mu mpande z\'imitekerereze, imibereho y\'abantu, tekiniki n\'ubukungu muri rusange, ndetse n\'ibyo gukurikirana.';

  @override
  String get aiGenerate => 'Kora isesengura';

  @override
  String get aiRegenerate => 'Ongera urikore';

  @override
  String get aiGenerating =>
      'Turimo gutegura isesengura… bishobora gufata umunota umwe cyangwa ibiri.';

  @override
  String get aiSources => 'Inkomoko';

  @override
  String aiGeneratedAt(String time) {
    return 'Ryakozwe $time';
  }

  @override
  String get aiDisclaimer =>
      'Isesengura ryakozwe na AI rishingiye ku makuru rusange n\'amakuru mashya. Rishobora kugira amakosa cyangwa kuba ritakigezweho, kandi si inama yo gushora imari.';

  @override
  String get errAiNotConfigured =>
      'Isesengura rya AI ntirirashyirwaho (nta ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Ntibyashobotse kugera kuri serivisi ya AI. Reba ko murandasi yawe ikora.';

  @override
  String errAiHttp(String status) {
    return 'Serivisi ya AI yagaruye ikosa (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Serivisi ya AI yanze gusesengura uyu mugabane.';

  @override
  String get errAiBadResponse =>
      'Igisubizo kitari cyitezwe cyavuye muri serivisi ya AI.';

  @override
  String get sectionChart => 'Igishushanyo cy\'igiciro';

  @override
  String get rangeOneWeek => '1W';

  @override
  String get rangeOneMonth => '1M';

  @override
  String get rangeThreeMonths => '3M';

  @override
  String get rangeOneYear => '1Y';

  @override
  String get rangeFiveYears => '5Y';

  @override
  String get chartUnavailable =>
      'Amateka y\'igiciro ntaboneka mu nkomoko y\'amakuru iriho ubu.';

  @override
  String get sectionStatements => 'Raporo z\'imari (z\'umwaka)';

  @override
  String get labelFiscalYear => 'Umwaka w\'ingengo y\'imari';

  @override
  String get labelRevenue => 'Amafaranga yinjiye';

  @override
  String get labelNetIncome => 'Inyungu nyayo';

  @override
  String get labelTotalAssets => 'Umutungo wose';

  @override
  String get labelTotalLiabilities => 'Imyenda yose';

  @override
  String get labelEquity => 'Imari shingiro y\'abanyamigabane';

  @override
  String get labelOperatingCashFlow => 'Amafaranga ava mu bikorwa';

  @override
  String get statementsUnavailable =>
      'Raporo z\'imari zatangajwe ntiziboneka kuri uyu mugabane.';

  @override
  String get launchAtLogin => 'Fungura iyo winjiye';

  @override
  String get hotkeyLabel => 'Inzira y\'ubusamo rusange';

  @override
  String get hotkeyRecordHint =>
      'Kanda hano, hanyuma ukande ihuriro rishya ry\'utubuto';

  @override
  String get hotkeyReset => 'Subiza ibisanzwe';

  @override
  String get pasteImage => 'Omeka ifoto iri mu bubiko bw\'agateganyo';

  @override
  String get errClipboardNoImage => 'Nta foto iri mu bubiko bw\'agateganyo.';

  @override
  String get favorites => 'Ibyo ukunda';

  @override
  String get addToFavorites => 'Shyira mu byo ukunda';

  @override
  String get removeFromFavorites => 'Kura mu byo ukunda';

  @override
  String get noFavorites =>
      'Nta mugabane urajya mu byo ukunda. Kanda inyenyeri ku mugabane ngo uwongeremo.';

  @override
  String get displayCurrency => 'Ifaranga ryo kwerekana';

  @override
  String get displayCurrencyNone => 'Ifaranga ry\'umugabane gusa';

  @override
  String labelConverted(String currency) {
    return '≈ mu $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Igipimo: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Ivugurura';

  @override
  String currentVersion(String version) {
    return 'Verisiyo $version';
  }

  @override
  String get autoUpdate => 'Shyiramo ivugurura mu buryo bwikora';

  @override
  String get checkForUpdates => 'Reba ivugurura';

  @override
  String get updateChecking => 'Turimo kureba ivugurura…';

  @override
  String get updateUpToDate => 'Ufite verisiyo iheruka.';

  @override
  String updateAvailable(String version) {
    return 'Verisiyo $version irahari.';
  }

  @override
  String get updateDownloading => 'Turimo gukuramo ivugurura inyuma…';

  @override
  String get updateDownloaded =>
      'Ivugurura riteguye. Ongera utangize porogaramu ngo urishyiremo.';

  @override
  String get updateNow => 'Vugurura';

  @override
  String get restartNow => 'Ongera utangize';

  @override
  String get updatesViaStore =>
      'Ivugurura riza mu buryo bwikora binyuze mu iduka rya porogaramu.';

  @override
  String get updateCheckFailed => 'Ntibyashobotse kureba ivugurura.';

  @override
  String get subscription => 'Ifatabuguzi';

  @override
  String get planTrial => 'Igerageza';

  @override
  String get planNormal => 'Isanzwe';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Nta gahunda ikora';

  @override
  String planAnalysesPerMonth(int count) {
    return 'Amasesengura $count ku kwezi';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Igerageza ry\'ubuntu ry\'iminsi $days n\'amasesengura $count';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Hasigaye iminsi $days y\'igerageza',
      one: 'Hasigaye umunsi 1 w\'igerageza',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Igerageza ryawe ry\'ubuntu ryarangiye. Hitamo gahunda ngo ukomeze gusesengura.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Hasigaye amasesengura $remaining kuri $total muri iki gihe';
  }

  @override
  String extraCredits(int count) {
    return 'Amasesengura $count y\'inyongera';
  }

  @override
  String renewsOn(String date) {
    return 'Rizavugururwa $date';
  }

  @override
  String get choosePlan => 'Hitamo gahunda';

  @override
  String get currentPlan => 'Gahunda ufite';

  @override
  String get subscribe => 'Iyandikishe';

  @override
  String get perMonth => '/ ukwezi';

  @override
  String get extraPacksTitle =>
      'Ukeneye ibindi? Gura amasesengura y\'inyongera';

  @override
  String get extraPacksHint =>
      'Amasesengura y\'inyongera ntarangira kandi akoreshwa nyuma y\'ayo wemerewe buri kwezi.';

  @override
  String get buy => 'Gura';

  @override
  String get restorePurchases => 'Garura ibyo waguze';

  @override
  String get manageSubscription => 'Genzura ifatabuguzi';

  @override
  String get purchaseSuccess => 'Urakoze! Ibyo waguze birakora.';

  @override
  String get purchasePending => 'Kugura birategerejwe…';

  @override
  String get purchaseFailed => 'Kugura ntibyashoboye kurangira.';

  @override
  String get purchaseCanceled => 'Kugura byahagaritswe.';

  @override
  String get billingUnavailable =>
      'Kugura ntibiraboneka kuri iyi sisitemu. Iyandikishe kuri terefone yawe cyangwa kuri Mac; gahunda yawe izakora ku bikoresho byose.';

  @override
  String get errQuotaExceeded =>
      'Nta masesengura agusigaranye muri iki gihe. Zamura gahunda yawe cyangwa ugure amasesengura y\'inyongera.';

  @override
  String get errTrialExpired =>
      'Igerageza ryawe ry\'ubuntu ryarangiye. Hitamo gahunda ngo ukomeze.';

  @override
  String get errNoPlan =>
      'Ukeneye gahunda ikora kugira ngo ukoreshe isesengura rya AI.';

  @override
  String get viewPlans => 'Reba gahunda';

  @override
  String get usageTitle => 'Ikoreshwa';

  @override
  String get demoPurchaseNote =>
      'Kwishyura by\'icyitegererezo: kugura kuri iyi sisitemu ni ukwigana gusa.';

  @override
  String get mostPopular => 'Ikunzwe cyane';

  @override
  String get bestValue => 'Ihendutse kurusha';

  @override
  String get planFeaturesCommon =>
      'Kumenya amafoto, amakuru y\'ako kanya, ibishushanyo, ibyo ukunda n\'indimi zose 120 biri muri buri gahunda. Ingano wemerewe ireba amasesengura ya AI.';

  @override
  String get searchLanguages => 'Shakisha ururimi…';

  @override
  String get noLanguageMatch => 'Nta rurimi ruhuye.';

  @override
  String get aiSettings => 'Isesengura rya AI';

  @override
  String get aiLength => 'Uburebure';

  @override
  String get aiDepthBrief => 'Rigufi';

  @override
  String get aiDepthStandard => 'Risanzwe';

  @override
  String get aiDepthDeep => 'Ryimbitse';

  @override
  String get aiDepthBriefDesc => 'Iby\'ingenzi, vuba.';

  @override
  String get aiDepthStandardDesc => 'Raporo yuzuye ifite ibice byose.';

  @override
  String get aiDepthDeepDesc =>
      'Ishakisha ryinshi kuri murandasi, kugereranya n\'ibigo bihanganye nacyo n\'ibisobanuro byimbitse.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Amagambo nka $min–$max';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'rikoresha amasesengura $count',
      one: 'rikoresha isesengura 1',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Urwego rw\'usoma';

  @override
  String get aiReaderBeginner => 'Utangiye';

  @override
  String get aiReaderExperienced => 'Inararibonye';

  @override
  String get aiReaderBeginnerDesc =>
      'Ururimi rworoshye; buri jambo rya tekiniki rirasobanurwa.';

  @override
  String get aiReaderExperiencedDesc =>
      'Inyandiko ikomatanyije ikoresha amagambo asanzwe y\'imari.';

  @override
  String get aiCounterArgument => 'Igitekerezo kivuguruza gikomeye kurusha';

  @override
  String get aiCounterArgumentDesc =>
      'Incamake buri gihe isozwa n\'igitekerezo gikomeye kurusha ibindi kivuguruza umwanzuro wayo.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Kugeza ku mashakisha $count kuri murandasi kuri buri sesengura muri gahunda yawe',
      one: 'Kugeza ku ishakisha 1 kuri murandasi kuri buri sesengura muri gahunda yawe',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Amashakisha kuri murandasi ku burebure busanzwe, bitewe na gahunda: Isanzwe $normal, Pro $pro, Max $max, Ultra $ultra. Rigufi: 2 make, Ryimbitse: 2 kurenzaho.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'kugeza ku mashakisha $count kuri murandasi',
      one: 'kugeza ku ishakisha 1 kuri murandasi',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Amashakisha $count kuri murandasi kuri buri sesengura',
      one: 'Ishakisha 1 kuri murandasi kuri buri sesengura',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Ubu burebure bukenera amasesengura $needed, ariko hasigaye $left gusa. Hitamo uburebure bugufi mu Igenamiterere cyangwa ushake andi masesengura.';
  }

  @override
  String get outlookMarketMood => 'Imyumvire y\'isoko';

  @override
  String get moodVeryPessimistic => 'Kwiheba cyane';

  @override
  String get moodPessimistic => 'Kwiheba';

  @override
  String get moodNeutral => 'Hagati na hagati';

  @override
  String get moodOptimistic => 'Icyizere';

  @override
  String get moodVeryOptimistic => 'Icyizere cyinshi';

  @override
  String get scenarioBull => 'Nibigenda neza';

  @override
  String get scenarioBase => 'Uko bisanzwe';

  @override
  String get scenarioBear => 'Nibigenda nabi';

  @override
  String outlookCurrentPrice(String price) {
    return 'Igiciro cy\'ubu: $price';
  }

  @override
  String get outlookKeyLevels => 'Ibipimo by\'ingenzi';

  @override
  String get keyLevelSupport => 'Urwego rwo hasi (support)';

  @override
  String get keyLevelResistance => 'Urwego rwo hejuru (resistance)';

  @override
  String get keyLevelAnchor => 'Igipimo fatizo';

  @override
  String get upcomingEvents => 'Ibiteganyijwe';

  @override
  String get outlookChartNote =>
      'Imbibi zigereranyije; amahirwe ni ibigereranyo, si ubuhanuzi.';

  @override
  String get accountTitle => 'Konti';

  @override
  String get signIn => 'Injira';

  @override
  String get signOut => 'Sohoka';

  @override
  String get notSignedIn => 'Ntabwo winjiye';

  @override
  String get accountBenefit =>
      'Injira kugira ngo ifatabuguzi ryawe rikore ku bikoresho byawe byose.';

  @override
  String get accountSyncedNote =>
      'Ifatabuguzi ryawe n\'amasesengura agusigaranye ni bimwe ku bikoresho byose.';

  @override
  String get signInTitle => 'Injira muri WhatStock';

  @override
  String get emailLabel => 'Aderesi ya imeri';

  @override
  String get continueWithEmail => 'Komeza ukoresheje imeri';

  @override
  String codeSentTo(String email) {
    return 'Twohereje kode y\'imibare 6 kuri $email. Imara iminota 10.';
  }

  @override
  String get codeLabel => 'Kode yo kwinjira';

  @override
  String get resendCode => 'Ohereza kode nshya';

  @override
  String get useDifferentEmail => 'Koresha indi imeri';

  @override
  String get errInvalidCode => 'Kode si yo cyangwa yarengeje igihe.';

  @override
  String get errInvalidEmail => 'Andika aderesi ya imeri yemewe.';

  @override
  String get errSignInFailed =>
      'Kwinjira ntibyakunze. Reba murandasi yawe wongere ugerageze.';

  @override
  String get checkoutWaiting =>
      'Soza kwishyura muri mushakisha yawe. Porogaramu irahita yivugurura nibirangira.';

  @override
  String get paymentViaStripe =>
      'Kwishyura kwizewe muri mushakisha binyuze kuri Stripe. Hagarika igihe cyose ushakiye.';

  @override
  String get paymentViaStore =>
      'Wishyuzwa binyuze kuri konti yawe ya App Store cyangwa Google Play. Hagarika igihe cyose mu igenamiterere ry\'iduka.';

  @override
  String get keySpace => 'Umwanya';

  @override
  String get doubleOptionTitle => 'Kanda Option kabiri';

  @override
  String get doubleOptionSubtitle =>
      'Gukanda Option kabiri vuba na byo bihamagara WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Kugira ngo bikore no mu zindi porogaramu, emerera WhatStock muri System Settings → Privacy & Security → Input Monitoring, hanyuma wongere ufungure porogaramu.';

  @override
  String get openSystemSettings => 'Fungura System Settings';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Kanda $shortcut cyangwa ukande Option kabiri aho uri hose ngo uhamagare WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Birashoboka cyane';

  @override
  String get longTermToday => 'Uyu munsi';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: 'imyaka $years',
      one: 'umwaka 1',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range ku mwaka';
  }

  @override
  String longTermLikely(String price) {
    return 'birashoboka cyane $price';
  }

  @override
  String get confidenceLow => 'Icyizere gike';

  @override
  String get confidenceMedium => 'Icyizere kiringaniye';

  @override
  String get confidenceHigh => 'Icyizere kinini';

  @override
  String get longTermNote =>
      'Imbibi z\'igihe kirekire zishingiye ku byavuzwe kandi zigenda zaguka uko igihe gihita. Ibiciro ntibibariramo inyungu ku migabane. Ni ibigereranyo, si ubuhanuzi.';

  @override
  String get portfolio => 'Ishoramari';

  @override
  String get portfolioEmpty =>
      'Nta kirimo. Fungura umugabane ukande “Shyira mu ishoramari” ngo ukurikirane ibyo utunze.';

  @override
  String get portfolioLocalNote =>
      'Bibitswe kuri iki gikoresho gusa. Igiteranyo kibarwa ku bipimo fatizo bya ECB; ibiciro bishobora gutinda.';

  @override
  String get addToPortfolio => 'Shyira mu ishoramari';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Ongeraho $symbol';
  }

  @override
  String get portfolioQuantity => 'Umubare w\'imigabane';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Igiciro cya buri mugabane ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Itariki yo kugura';

  @override
  String get portfolioAdd => 'Ongeraho';

  @override
  String get portfolioInvalidNumber => 'Andika umubare urenze zeru.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol yashyizwe mu ishoramari ryawe.';
  }

  @override
  String get portfolioTotalValue => 'Agaciro kose';

  @override
  String get portfolioToday => 'Uyu munsi';

  @override
  String get portfolioGainLoss => 'Inyungu/igihombo';

  @override
  String get portfolioInvested => 'Ayashowe';

  @override
  String get portfolioAllocation => 'Ikwirakwizwa';

  @override
  String get portfolioPositions => 'Imigabane ufite';

  @override
  String portfolioAvgCost(String price) {
    return 'igiciro mpuzandengo $price';
  }

  @override
  String get portfolioYourPosition => 'Imigabane yawe';

  @override
  String get portfolioPurchases => 'Ibyo waguze';

  @override
  String get portfolioRemove => 'Kuramo';

  @override
  String get portfolioExcluded =>
      'Imigabane idafite igiciro cyangwa igipimo cy\'ivunjisha ntibarirwa mu giteranyo.';

  @override
  String get priceAlerts => 'Imenyesha ry\'ibiciro';

  @override
  String get setPriceAlert => 'Shyiraho imenyesha ry\'igiciro';

  @override
  String alertDialogTitle(String symbol) {
    return 'Imenyesha ry\'igiciro · $symbol';
  }

  @override
  String get alertKindAbove => 'Nikizamuka hejuru ya';

  @override
  String get alertKindBelow => 'Nikimanuka munsi ya';

  @override
  String get alertKindMove => 'Nigihinduka cyane mu munsi umwe';

  @override
  String alertTargetPrice(String currency) {
    return 'Igiciro ($currency)';
  }

  @override
  String get alertMovePercent => 'Ihinduka ry\'umunsi (%)';

  @override
  String get alertAlreadyMet => 'Igiciro cyamaze kurenga uru rwego.';

  @override
  String get alertSave => 'Shyiraho imenyesha';

  @override
  String alertCreated(String symbol) {
    return 'Imenyesha rya $symbol ryashyizweho.';
  }

  @override
  String get alertsEmpty =>
      'Nta menyesha ry\'igiciro rirahari. Fungura umugabane ukande inzogera ngo urishyireho.';

  @override
  String get alertsNote =>
      'Imenyesha rigenzurwa buri minota 5 igihe WhatStock ikora. Kuri mudasobwa ikomeza gukora iri mu murongo wa menu cyangwa mu gice cy\'imenyesha; kuri terefone, ubu imenyesha riza gusa iyo porogaramu ifunguye.';

  @override
  String alertDescAbove(String price) {
    return 'Hejuru ya $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Munsi ya $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Ihinduka ry\'umunsi ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Ryabaye $date kuri $price';
  }

  @override
  String get alertRearm => 'Ongera urikoreshe';

  @override
  String get alertDelete => 'Siba';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol yazamutse hejuru ya $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol yamanutse munsi ya $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol yahindutseho $percent uyu munsi';
  }

  @override
  String alertHitBody(String price) {
    return 'Igiciro cy\'ubu: $price';
  }

  @override
  String get alertOpen => 'Fungura';

  @override
  String get keepInTrayTitle => 'Komeza gukora idirishya rifunze';

  @override
  String get keepInTraySubtitle =>
      'WhatStock iguma mu murongo wa menu cyangwa mu gice cy\'imenyesha, bityo inzira y\'ubusamo n\'imenyesha ry\'ibiciro bigakomeza gukora.';

  @override
  String get termsOfUse => 'Amabwiriza yo gukoresha';

  @override
  String get privacyPolicy => 'Politiki y\'ibanga';

  @override
  String get subscriptionLegal =>
      'Ifatabuguzi ryivugurura buri kwezi kugeza urihagaritse. Iyo wiyandikishije uba wemeye Amabwiriza yo gukoresha na Politiki y\'ibanga.';

  @override
  String get deleteAccount => 'Siba konti';

  @override
  String get deleteAccountTitle => 'Urashaka gusiba konti yawe?';

  @override
  String get deleteAccountBody =>
      'Konti yawe n\'ibintu byose bibitswe kuri seriveri yacu (imeri, ingano wemerewe, ikoreshwa) bizasibwa burundu, kandi amasesengura utakoresheje azatakara. Ifatabuguzi ryishyuwe muri mushakisha rihita rihagarikwa; ifatabuguzi rya App Store cyangwa Google Play rigomba guhagarikirwa mu igenamiterere ry\'iduka.';

  @override
  String get deleteLocalData =>
      'Siba n\'amakuru ari kuri iki gikoresho (ishoramari, imenyesha, ibyo ukunda, amateka, amasesengura wabitse)';

  @override
  String get deleteAccountConfirm => 'Siba burundu';

  @override
  String get accountDeleted => 'Konti yawe yasibwe.';

  @override
  String get errDeleteAccount =>
      'Konti ntiyashoboye gusibwa. Reba murandasi yawe wongere ugerageze.';

  @override
  String get aiTrialBriefNote =>
      'Amasesengura y\'igerageza ni magufi kandi akorwa na moderi ya AI yihuta. Ufite gahunda, ubona AI yacu ifite ubushobozi buruta ubundi, ishakisha ryinshi kuri murandasi, n\'uburebure busanzwe n\'ubwimbitse.';

  @override
  String get billingMonthly => 'Buri kwezi';

  @override
  String get billingYearly => 'Buri mwaka';

  @override
  String get yearlyDiscount => 'Amezi 2 y\'ubuntu';

  @override
  String get perYear => '/ umwaka';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price ku kwezi';
  }

  @override
  String get subscriptionLegalYearly =>
      'Ifatabuguzi ry\'umwaka ryivugurura buri mwaka kugeza urihagaritse. Iyo wiyandikishije uba wemeye Amabwiriza yo gukoresha na Politiki y\'ibanga.';

  @override
  String get myAnalyses => 'Amasesengura yanjye';

  @override
  String get navAlerts => 'Imenyesha';

  @override
  String get inviteTitle => 'Igerageza ryihariye';

  @override
  String get inviteBody =>
      'Ubu WhatStock iboneka gusa ku butumire. Andika kode y\'ubutumire wahawe.';

  @override
  String get inviteCodeLabel => 'Kode y\'ubutumire';

  @override
  String get inviteContinue => 'Komeza';

  @override
  String get inviteInvalid => 'Iyi kode y\'ubutumire ntiyemewe.';

  @override
  String get inviteExpired =>
      'Ubu butumire bwarengeje igihe. Saba uwagutumiye kode nshya.';

  @override
  String get inviteDeviceLimit =>
      'Iyi kode y\'ubutumire isanzwe ikoreshwa ku mubare ntarengwa w\'ibikoresho.';

  @override
  String get previewConfidential => 'Igerageza ry\'ibanga';

  @override
  String get errPreviewDailyLimit =>
      'Umubare ntarengwa w\'isesengura ry\'uyu munsi kuri iri gerageza wagezweho. Ongera ugerageze ejo.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'hashize amasaha $count',
      one: 'hashize isaha 1',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'hashize iminsi $count',
      one: 'hashize umunsi 1',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Urashaka kuvugurura iri sesengura?';

  @override
  String staleBody(String age) {
    return 'Ryakozwe $age. Kuva icyo gihe, ibiciro, amakuru n\'ibyavuyemo bishobora kuba byarahindutse.';
  }

  @override
  String get staleKeep => 'Erekana irya mbere';

  @override
  String get staleRefresh => 'Kora irishya';

  @override
  String seeAll(int count) {
    return 'Reba byose ($count)';
  }

  @override
  String get searchAnalyses => 'Shakisha mu masesengura yawe';

  @override
  String get deleteAnalysis => 'Siba';

  @override
  String analysisDeleted(String symbol) {
    return 'Isesengura rya $symbol ryasibwe';
  }

  @override
  String get keyLevelAlertHint =>
      'Kanda ku gipimo kugira ngo ubone imenyesha igihe igiciro kigeze kuri cyo.';

  @override
  String get shareAnalysisTitle => 'Sangiza isesengura';

  @override
  String get shareAsImage => 'Sangiza nk\'ifoto';

  @override
  String get shareAsText => 'Sangiza nk\'inyandiko';

  @override
  String get shareCardFooter => 'Byakozwe na WhatStock';

  @override
  String get shareCardDisclaimer =>
      'Isesengura rya AI · si inama yo gushora imari';

  @override
  String get referralTitle => 'Tumira inshuti';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'amasesengura $count y\'inyongera',
      one: 'isesengura 1 ry\'inyongera',
    );
    return 'Sangiza kode yawe. Inshuti yawe ihita ibona $_temp0, nawe ukabona nk\'ibyo nyuma y\'isesengura ryayo rya mbere.';
  }

  @override
  String get referralYourCode => 'Kode yawe';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Abatumiwe: $invited · Abahembwe: $rewarded';
  }

  @override
  String get referralHaveCode => 'Ufite kode y\'inshuti?';

  @override
  String get referralRedeem => 'Koresha';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Wongerewe amasesengura $count y\'inyongera. Murakaza neza!',
      one: 'Wongerewe isesengura 1 ry\'inyongera. Murakaza neza!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Iyi kode ntibaho. Yigenzure wongere ugerageze.';

  @override
  String get referralErrOwn => 'Ntushobora gukoresha kode yawe bwite.';

  @override
  String get referralErrAlready => 'Wamaze gukoresha kode y\'inshuti.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'amasesengura $count y\'inyongera',
      one: 'isesengura 1 ry\'inyongera',
    );
    return 'Nsesengura imigabane nkoresheje WhatStock: fotora umugabane, AI ikawusobanura. Ukoresheje kode yanjye $code ubona $_temp0.';
  }

  @override
  String get referralCopied => 'Kode yakopowe';
}
