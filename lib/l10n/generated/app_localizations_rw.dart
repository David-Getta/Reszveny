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
  String get labelYieldOnCost => 'Inyungu ku giciro waguze';

  @override
  String get labelDividendGrowth5y =>
      'Izamuka ry\'inyungu ku migabane (imyaka 5)';

  @override
  String get dividendNone =>
      'Nta nyungu ku migabane yishyuwe mu mezi 12 ashize.';

  @override
  String get dividendOnYourShares => 'Ku migabane yawe, ku mwaka';

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
      'Bibitswe kuri iki gikoresho, no kuri konti yawe niba winjiye. Igiteranyo kibarwa ku bipimo fatizo bya ECB; ibiciro bishobora gutinda.';

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
  String homeDividendsThisYear(String amount) {
    return 'Amadividende y\'uyu mwaka: $amount';
  }

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

  @override
  String get onboardTitle1 => 'Fata ifoto y\'umugabane';

  @override
  String get onboardBody1 =>
      'Ekarani ya porogaramu y\'umuhuza, ikinyamakuru cyangwa ikirango cy\'ikigo birahagije: WhatStock imenya umugabane ikakwereka igiciro cyawo, igishushanyo n\'imibare y\'ingenzi.';

  @override
  String get onboardTitle2 => 'Byumve mu minota mike';

  @override
  String get onboardBody2 =>
      'Isesengura rya AI risobanura ibituma umugabane uhinduka, ibyago, agaciro kawo n\'ibishoboka bitatu ku cyerekezo igiciro gishobora gufata – hamwe n\'aho amakuru aturuka no mu rurimi rwawe.';

  @override
  String get onboardTitle3 => 'Ntucikwe n\'amakuru';

  @override
  String get onboardBody3 =>
      'Ibyo ukunda, ishoramari ryawe n\'imenyesha ry\'ibiciro bikugezaho amakuru. Isesengura ryawe riguma ku gikoresho cyawe, ryiteguye kongera gufungurwa.';

  @override
  String get onboardNext => 'Ibikurikira';

  @override
  String get onboardStart => 'Tangira';

  @override
  String get onboardSkip => 'Simbuka';

  @override
  String changesTitle(String date) {
    return 'Kuva ku isesengura ryabanje ($date)';
  }

  @override
  String get changesPrice => 'Igiciro';

  @override
  String get changesNoMajor => 'Ibiteganijwe ntibyahindutse cyane.';

  @override
  String get changesPreviousSummary => 'Incamake ibanza';

  @override
  String get telemetryTitle => 'Fasha kunoza WhatStock';

  @override
  String get telemetryBody =>
      'Sangiza imibare y\'ikoreshwa na raporo z\'ihagarara rya porogaramu bitagaragaza umwirondoro: ibikorwa bikoreshwa n\'ibyagenze nabi. Nta na rimwe imigabane yawe, isesengura ryawe cyangwa amakuru yawe bwite. Ushobora guhindura ibi igihe icyo ari cyo cyose mu Igenamiterere.';

  @override
  String get telemetryAllow => 'Emera';

  @override
  String get telemetryDecline => 'Oya, urakoze';

  @override
  String get telemetrySetting =>
      'Imibare itagaragaza umwirondoro na raporo z\'ihagarara';

  @override
  String get telemetrySettingHint =>
      'Inshuro ibikorwa bikoreshwa na raporo z\'amakosa, nta makuru bwite cyangwa ibikubiye mu byo washakishije n\'amasesengura yawe.';

  @override
  String get askButton => 'Baza ku bijyanye n\'iri sesengura';

  @override
  String askTitle(String symbol) {
    return 'Ibibazo kuri $symbol';
  }

  @override
  String get askIntro =>
      'Baza icyo ushaka cyose ku isesengura: icyo ibyago runaka bisobanura, icyahindura icyerekezo, uko umubare runaka wabazwe. Ibisubizo bishingiye kuri iri sesengura, kandi si inama yo gushora imari.';

  @override
  String get askHint => 'Baza ikibazo…';

  @override
  String get askSend => 'Ohereza';

  @override
  String get askThinking => 'Ndimo gutekereza…';

  @override
  String get askSuggest1 => 'Ibyago bikomeye kurusha ibindi ni ibihe?';

  @override
  String get askSuggest2 => 'Ni iki cyahindura icyerekezo?';

  @override
  String get askSuggest3 => 'Bisobanure mu buryo bworoshye';

  @override
  String get askMaxReached =>
      'Icyo cyari ikibazo cya nyuma kuri iri sesengura. Kora isesengura rishya kugira ngo ubaze ibindi.';

  @override
  String get errAskLimit =>
      'Wageze ku mubare ntarengwa w\'ibibazo by\'uyu munsi. Ongera ugerageze ejo.';

  @override
  String get eventTomorrow => 'Ejo';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'mu minsi $days',
      one: 'mu munsi 1',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Ibyavuye mu gihembwe';

  @override
  String get eventBeforeOpen => 'mbere y\'uko isoko rifungura';

  @override
  String get eventAfterClose => 'nyuma y\'uko isoko rifunga';

  @override
  String eventEpsEstimate(String value) {
    return 'Igereranyo rya EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Biva mu isesengura ryawe';

  @override
  String get eventDividend => 'Idividende yitezwe';

  @override
  String get eventDividendEstimate =>
      'Bigereranyijwe hashingiwe ku bwishyu wanditse';

  @override
  String get eventsHint =>
      'Amatariki y\'ibyavuye mu gihembwe by\'imigabane ukunda n\'iri mu ishoramari ryawe mu minsi 90 iri imbere, ibikorwa bifite amatariki amasesengura yawe yagaragaje, n\'amadividende yitezwe hashingiwe ku bwishyu wanditse.';

  @override
  String get eventsEmpty =>
      'Nta gikorwa gifite itariki mu minsi 90 iri imbere. Ongeramo ibyo ukunda cyangwa imigabane yo mu ishoramari kugira ngo ubone hano amatariki y\'ibyavuyemo; amadividende wanditse yerekana ubwishyu bukurikira bwitezwe.';

  @override
  String get compareTitle => 'Gereranya';

  @override
  String get compareAdd => 'Ongeramo umugabane';

  @override
  String get compareRemove => 'Kuramo';

  @override
  String get compareTickerHint => 'Ticker, urugero MSFT';

  @override
  String get compareHint =>
      'Imibare y\'ingenzi iri iruhande; agaciro keza kurusha akandi muri buri murongo kagaragajwe. Amafaranga ari mu ifaranga rya buri mugabane.';

  @override
  String get compareNoAnalysis => 'Nta sesengura rirabaho';

  @override
  String get portfolioDividends => 'Inyungu ku migabane ku mwaka';

  @override
  String portfolioDividendYield(String percent) {
    return 'Igipimo $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Inyungu ku migabane iteganyijwe ku mwaka ishingiye ku nyungu zishyuwe mu mezi 12 ashize; ubwishyu bw\'ahazaza ntibwemejwe.';

  @override
  String positionDividend(String amount) {
    return 'Inyungu ku migabane: $amount ku mwaka';
  }

  @override
  String get chartAvgCost => 'Mpuzandengo yawe';

  @override
  String get chartAlertLevel => 'Imenyesha';

  @override
  String get marketsToday => 'Amasoko uyu munsi';

  @override
  String get notesTitle => 'Ibyo nanditse';

  @override
  String get notesHint =>
      'Kuki wawuguze, ni iki ukurikirana, ni iki cyatuma uwugurisha?';

  @override
  String get notesInfo =>
      'Bibitswe kuri iki gikoresho, no kuri konti yawe niba winjiye. Isesengura rya AI ryita ku byo wanditse.';

  @override
  String notesSaved(String date) {
    return 'Byabitswe $date';
  }

  @override
  String get peersTitle => 'Ibigo bisa na cyo';

  @override
  String get portfolioExport => 'Ohereza nka CSV';

  @override
  String get portfolioImport => 'Injiza uvuye muri CSV';

  @override
  String get portfolioImportHint =>
      'Omekamo ikintu kimwe waguze kuri buri murongo: ticker, ingano, igiciro, ifaranga, itariki (YYYY-MM-DD). Inkingi zishobora gutandukanywa n\'akitso, akabago n\'akitso cyangwa tab; umurongo w\'imitwe si itegeko.';

  @override
  String get portfolioImportButton => 'Injiza';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Hongewemo ibyaguzwe $count',
      one: 'Hongewemo icyaguzwe 1',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Imirongo $count yasimbutswe',
      one: 'Umurongo 1 wasimbutswe',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Ishoramari, ibyo ukunda, imenyesha ry\'ibiciro n\'ibyo wanditse bihuzwa ku bikoresho byawe byose.';

  @override
  String syncLast(String time) {
    return 'Ihuza riheruka: $time';
  }

  @override
  String get syncNow => 'Huza ubu';

  @override
  String get syncFailed => 'Guhuza byanze. Bizongera kugerageza ubwabyo.';

  @override
  String get alertEmailTitle => 'Imeyili iyo imenyesha ribaye';

  @override
  String get alertEmailOn =>
      'Tugenzura imenyesha ryawe buri minota mike tukakoherereza imeyili, n\'igihe porogaramu ifunze.';

  @override
  String get alertEmailSignIn =>
      'Injira ukoresheje imeyili yawe muri Igenamiterere kugira ngo ubone imenyesha kuri imeyili, n\'igihe porogaramu ifunze.';

  @override
  String get portfolioHistory => 'Ihinduka ry\'agaciro';

  @override
  String get portfolioReviewTitle => 'Isesengura ry\'ishoramari rya AI';

  @override
  String get portfolioReviewIntro =>
      'AI isuzuma ishoramari ryawe ryose: kwegeranya amafaranga ahantu hamwe, kwishingikiriza ku nzego z\'ubucuruzi n\'amafaranga y\'amahanga, ingaruka imigabane yawe ihuriyeho, n\'inyungu ku migabane. Rikoresha isesengura 1.';

  @override
  String get portfolioReviewButton => 'Sesengura ishoramari ryanjye';

  @override
  String get portfolioReviewAgain => 'Ongera usesengure';

  @override
  String get portfolioReviewWorking => 'Turimo gusesengura ishoramari ryawe…';

  @override
  String get digestTitle => 'Incamake ya buri cyumweru kuri imeri';

  @override
  String get digestHint =>
      'Buri wa Mbere: uko ibyo ukunda n\'ishoramari ryawe byagenze mu cyumweru gishize, n\'amatariki y\'ibyavuye mu gihembwe ari imbere.';

  @override
  String get benchmarkTitle => 'Ugereranyije na S&P 500';

  @override
  String get benchmarkTitleIndex => 'Ugereranyije na index';

  @override
  String get benchmarkHintIndex =>
      'Nk\'aho buri cyo waguze cyashyizwe uwo munsi nyine mu kigega gikurikira index wahisemo. Inyungu ku migabane ntizirimo; inyungu zabanje ntizigaragaza iz\'ahazaza.';

  @override
  String get benchmarkYours => 'Ibyo waguze';

  @override
  String benchmarkAhead(String points) {
    return 'Iruta index ku manota ya ijanisha $points';
  }

  @override
  String benchmarkBehind(String points) {
    return 'Iri inyuma ya index ku manota ya ijanisha $points';
  }

  @override
  String get portfolioSell => 'Gurisha';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Gurisha $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Igiciro cyo kugurisha buri mugabane ($currency)';
  }

  @override
  String get portfolioSellDate => 'Itariki yo kugurisha';

  @override
  String get portfolioSellAll => 'Byose';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Ufite $quantity';
  }

  @override
  String get portfolioSold => 'Byagurishijwe';

  @override
  String get portfolioRealized => 'Ibyabonetse';

  @override
  String get portfolioClosed => 'Imigabane wagurishije yose';

  @override
  String get portfolioClosedNote => 'Imigabane yose yagurishijwe';

  @override
  String get portfolioTransactions => 'Ibyaguzwe n\'ibyagurishijwe';

  @override
  String get portfolioRealizedByYear => 'Inyungu zabonetse ku mwaka';

  @override
  String get portfolioRealizedHint =>
      'Ibyagurishijwe bibanza guhuzwa n\'ibyo waguze kera cyane (FIFO), bigahindurwa ku gipimo cy\'ivunjisha cy\'uyu munsi. Ku imenyekanisha ry\'umusoro, koresha raporo y\'umuhuza wawe (broker).';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Kuva iri sesengura ryakorwa, ibyavuye mu gihembwe bishya byasohotse ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Ibyavuyemo bishya';

  @override
  String get portfolioImportBrokers =>
      'Ibyoherejwe bivuye muri Revolut, Trading 212, Interactive Brokers, DEGIRO, Schwab, Fidelity na Robinhood na byo biramenyekana, hamwe n\'ibyagurishijwe n\'inyungu ku migabane (hamaze gukurwamo umusoro ufatirwa ku nkomoko); amafaranga yashyizwemo arasimbukwa.';

  @override
  String get portfolioImportFile => 'Hitamo dosiye';

  @override
  String offlineBanner(String time) {
    return 'Nta murandasi – herekanwa amakuru aheruka kubikwa ($time).';
  }

  @override
  String get glossMarketCap =>
      'Agaciro k\'ikigo cyose ku isoko ry\'imigabane: igiciro cy\'umugabane × umubare w\'imigabane.';

  @override
  String get glossSharesOutstanding =>
      'Umubare w\'imigabane ikigo cyatanze. Iyo wiyongereye, buri mugabane ugira igice gito; kugura imigabane yacyo bisubira biwugabanya.';

  @override
  String get glossPeTrailing =>
      'Igiciro ÷ inyungu kuri buri mugabane mu mezi 12 ashize: imyaka ingahe y\'inyungu y\'ubu wishyura. Iri hasi rihendutse, ariko ibigo bikura vuba akenshi bigira P/E iri hejuru.';

  @override
  String get glossPeForward =>
      'Nka P/E, ariko hakoreshejwe inyungu abasesenguzi biteze mu mezi 12 ari imbere. Iyo iri munsi ya P/E (iheruka), inyungu iteganyijwe kwiyongera.';

  @override
  String get glossPb =>
      'Igiciro ÷ agaciro kari mu bitabo (umutungo ukuyemo imyenda) kuri buri mugabane. Hafi ya 1 bivuze ko isoko riha ikigo agaciro k\'ibyo gitunze ku mpapuro.';

  @override
  String get glossPs =>
      'Agaciro ku isoko ÷ amafaranga yinjiye ku mwaka. Bifasha ku bigo bitaragira inyungu nyinshi cyangwa bitayifite; gereranya mu rwego rumwe.';

  @override
  String get glossEvToFcf =>
      'Agaciro k\'ikigo harimo n\'umwenda (EV) ÷ amafaranga cyinjiza mu mwaka nyuma y\'ishoramari. Iri hasi bivuze ko ubona amafaranga menshi ku giciro.';

  @override
  String get glossPeg =>
      'P/E ÷ izamuka ry\'inyungu riteganyijwe ku mwaka (%). Hafi ya 1 akenshi bifatwa nk\'ibikwiye; bipima P/E hagendewe ku izamuka.';

  @override
  String get glossEps =>
      'Inyungu kuri buri mugabane mu mezi 12 ashize. EPS izamuka uko imyaka igenda ni kimwe mu bimenyetso bikomeye by\'ikigo gihagaze neza.';

  @override
  String get glossBeta =>
      'Uko umugabane uhindagurika hamwe n\'isoko: 1 = nk\'isoko, 1,5 = ihindagurika riruta hafi 50%, munsi ya 1 = bituje.';

  @override
  String get glossRevenueTtm =>
      'Ibyagurishijwe byose mu mezi 12 ashize, mbere y\'ikiguzi icyo ari cyo cyose.';

  @override
  String get glossNetIncomeTtm =>
      'Inyungu isigaye nyuma y\'ibiguzi byose, inyungu z\'umwenda n\'imisoro mu mezi 12 ashize.';

  @override
  String get glossGrossMargin =>
      'Igice cy\'amafaranga yinjiye gisigara nyuma y\'ikiguzi cy\'ibicuruzwa ubwabyo. Igipimo kiri hejuru akenshi kigaragaza ububasha bwo gushyiraho ibiciro.';

  @override
  String get glossOperatingMargin =>
      'Igice cy\'amafaranga yinjiye gisigara nyuma yo gukoresha ibikorwa (imishahara, ubukode, kwamamaza), mbere y\'inyungu z\'umwenda n\'imisoro.';

  @override
  String get glossNetMargin =>
      'Igice cy\'amafaranga yinjiye gihinduka inyungu ya nyuma. 20% bivuze ko muri buri 100 y\'ibyagurishijwe, 20 ari inyungu.';

  @override
  String get glossRoe =>
      'Inyungu ku mari shingiro: inyungu y\'umwaka ÷ imari ya ba nyirayo. Igaragaza uko ubuyobozi bukoresha neza amafaranga y\'abanyamigabane; hejuru ya hafi 15% ni byiza cyane.';

  @override
  String get glossRoa =>
      'Inyungu ku mutungo: inyungu y\'umwaka ÷ umutungo wose w\'ikigo. Gereranya mu rwego rumwe.';

  @override
  String get glossDebtToEquity =>
      'Umwenda ÷ imari ya ba nyirayo. Iri hejuru bivuze amafaranga menshi yagujijwe: ibyago byinshi iyo inyungu z\'inguzanyo zizamutse cyangwa ibikorwa bigenda gahoro.';

  @override
  String get glossCurrentRatio =>
      'Umutungo w\'igihe gito ÷ amadeni agomba kwishyurwa mu mwaka. Hejuru ya 1 bivuze ko ikigo gishobora kwishyura amadeni yacyo ya vuba.';

  @override
  String get glossRevenueGrowth =>
      'Uko amafaranga yinjiye yiyongereye ugereranyije n\'umwaka ushize.';

  @override
  String get glossEpsGrowth =>
      'Uko inyungu kuri buri mugabane yiyongereye ugereranyije n\'umwaka ushize.';

  @override
  String get glossDividendYield =>
      'Inyungu ku migabane y\'umwaka ÷ igiciro cy\'umugabane: amafaranga wabona buri mwaka, mu ijanisha ry\'ibyo wishyura.';

  @override
  String get glossDividendPerShare =>
      'Inyungu yishyuwe ku mugabane umwe mu mwaka ushize.';

  @override
  String get glossPayoutRatio =>
      'Igice cy\'inyungu kigabanywa abanyamigabane. Hejuru ya 100% ikigo gitanga ibirenze ibyo cyinjiza, kandi ibyo ntibikunze kuramba.';

  @override
  String get portfolioBeta => 'Beta y\'ishoramari';

  @override
  String get glossPortfolioBeta =>
      'Beta y\'imigabane yawe, ipimwe hakurikijwe agaciro kayo: ni nk\'ijanisha imigabane yawe ihindagurikaho iyo isoko rihindagutse 1%. Hejuru ya 1 ihindagurika kurusha isoko, munsi ya 1 ihindagurika gake. Amafaranga ntabarirwamo.';

  @override
  String get portfolioTop3 => 'Imigabane 3 minini';

  @override
  String get glossPortfolioTop3 =>
      'Igice cy\'agaciro k\'imigabane yawe kiri mu migabane yawe itatu minini kurusha iyindi. Uko kiri hejuru, ni ko inkuru mbi z\'ikigo kimwe gusa zishobora kwangiza ishoramari ryawe ryose.';

  @override
  String get glossDividendGrowth5y =>
      'Uko inyungu kuri buri mugabane yazamutse ku mwaka, ku kigereranyo, mu myaka itanu ishize. Izamuka rihoraho akenshi risobanura ko ikigo cyizeye amafaranga cyinjiza; kuyigabanya akenshi ni ikimenyetso cyo kuburira.';

  @override
  String get glossYieldOnCost =>
      'Amadividende yakiriwe mu mezi 12 ashize agabanyijwe n\'ibyo wishyuye ku migabane ukigira. Bitandukanye n\'igipimo cy\'inyungu ku migabane, bipimwa ku giciro wowe ubwawe waguzeho, atari icy\'uyu munsi.';

  @override
  String get glossTitle => 'Bisobanura iki?';

  @override
  String get watchNewsTitle => 'Amakuru ku migabane yawe';

  @override
  String get undo => 'Subiza';

  @override
  String get watchSort => 'Tunganya';

  @override
  String get watchSortOwn => 'Uko nabitondetse';

  @override
  String get watchSortGainers => 'Ibyazamutse cyane mbere';

  @override
  String get watchSortLosers => 'Ibyamanutse cyane mbere';

  @override
  String get watchSortName => 'Ukurikije ticker (A–Z)';

  @override
  String get watchHint =>
      'Kurura agafashi kugira ngo uhindure uko bikurikirana, sunika ibumoso kugira ngo ukureho. Umurongo werekana iminsi 30 ishize.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: isesengura ryawe ryateguwe.';
  }

  @override
  String alertFromCost(String price) {
    return 'Uhereye ku giciro cyawe cyo kugura cy\'impuzandengo ($price):';
  }

  @override
  String get briefTitle => 'Uyu munsi n’imigabane yawe';

  @override
  String get briefButton => 'Incamake y’uyu munsi';

  @override
  String get briefHint =>
      'Incamake ngufi ya AI y’uko portfolio yawe n’ibyo ukunda byitwaye uyu munsi n’ibyo amakuru mashya avuga. Ntikoresha isesengura.';

  @override
  String get briefRefresh => 'Vugurura';

  @override
  String get sectionEarnings => 'Ibyavuye mu gihembwe';

  @override
  String earningsNext(String date) {
    return 'Raporo ikurikira: $date';
  }

  @override
  String get earningsExpected => 'EPS yari yitezwe';

  @override
  String get earningsReported => 'EPS yatangajwe';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Byanganye cyangwa birenze EPS yari yitezwe mu bihembwe $beats kuri $total biheruka',
      one:
          'Byanganye cyangwa birenze EPS yari yitezwe mu gihembwe $beats kuri 1',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol izatangaza ibyavuye mu gihembwe ejo';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol iratangaza ibyavuye mu gihembwe uyu munsi';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return '$symbol: idividende yitezwe uyu munsi';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Hafi $amount. Nimara kugera, uyandike muri portfolio yawe.';
  }

  @override
  String get dividendRemindersTitle => 'Kwibutswa idividende';

  @override
  String get dividendRemindersSubtitle =>
      'Imenyesha ku munsi idividende yitezwe hashingiwe ku buryo ubwishyu wanditse busanzwe buza, kugira ngo uyandike';

  @override
  String get earningsRemindersTitle => 'Kwibutswa ibyavuye mu gihembwe';

  @override
  String get earningsRemindersSubtitle =>
      'Imenyesha umunsi umwe mbere y\'uko ibyo ukunda cyangwa imigabane yo muri portfolio yawe bitangaza ibyavuye mu gihembwe';

  @override
  String addAllToFavorites(int count) {
    return 'Shyira byose mu byo ukunda ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Injiza uvuye ku ifoto ya ekara';

  @override
  String get holdingsReading => 'Turimo gusoma imigabane yawe…';

  @override
  String get holdingsReviewTitle => 'Imigabane yabonetse';

  @override
  String get holdingsReviewHint =>
      'Genzura imibare mbere yo kuyongeramo. Igiciro ni impuzandengo y\'igiciro waguzeho umugabane umwe, si igiciro cy\'uyu munsi.';

  @override
  String get holdingsNoPrice =>
      'Nta mpuzandengo y\'igiciro cyo kugura iri ku ifoto';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ongeramo imigabane $count',
      one: 'Ongeramo umugabane 1',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Nta migabane yabonetse kuri iyi foto. Gerageza ifoto ya ekara y\'urupapuro rw\'imigabane yawe kuri burokeri wawe.';

  @override
  String get week52Range => 'Igipimo cyo mu byumweru 52';

  @override
  String week52BelowHigh(String percent) {
    return '$percent munsi y\'hejuru mu byumweru 52';
  }

  @override
  String get week52AtHigh => 'Kuri hejuru mu byumweru 52';

  @override
  String get alertKindTrailing => 'Nikimanuka kuva ku isonga';

  @override
  String get alertTrailingPercent => 'Kumanuka kuva ku isonga (%)';

  @override
  String get alertTrailingHint =>
      'Ikurikira igiciro kizamuka: ikumenyesha igihe igiciro kimanutse kungana gutya kuva ku rwego rwo hejuru cyane kuva wayishyiraho.';

  @override
  String alertDescTrailing(String percent) {
    return 'Kumanuka kwa $percent kuva ku isonga';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'isonga kugeza ubu: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol yamanutseho $percent kuva ku isonga';
  }

  @override
  String get sectionInsiders => 'Ubucuruzi bw\'abari imbere mu kigo';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'kugura $count',
      one: 'kugura 1',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'kugurisha $count',
      one: 'kugurisha 1',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Igisigaye: imigabane $shares';
  }

  @override
  String get insiderBuy => 'Yaguze';

  @override
  String get insiderSell => 'Yagurishije';

  @override
  String get insiderHint =>
      'Kugura no kugurisha ku isoko rifunguye byakozwe n\'abayobozi n\'abagize inama y\'ubutegetsi mu minsi 90 ishize (SEC Form 4). Gukoresha uburenganzira bwo kugura (options) n\'imigabane yatanzwe nk\'ibihembo ntibibarwa.';

  @override
  String get insiderNone =>
      'Nta kugura cyangwa kugurisha by\'abari imbere mu kigo ku isoko rifunguye mu minsi 90 ishize.';

  @override
  String get analystTrend => 'Uko ibitekerezo byahindutse buri kwezi';

  @override
  String get watchListAll => 'Byose';

  @override
  String get watchListNew => 'Urutonde rushya';

  @override
  String get watchListName => 'Izina ry\'urutonde';

  @override
  String get watchListRename => 'Hindura izina ry\'urutonde';

  @override
  String get watchListDelete => 'Siba urutonde';

  @override
  String get watchListAddTo => 'Shyira ku rutonde';

  @override
  String get watchListEmpty =>
      'Nta migabane iri kuri uru rutonde. Kanda buto y\'urutonde iri iruhande rw\'umugabane kugira ngo uwongereho.';

  @override
  String get portfolioAskTitle => 'Ibibazo ku ishoramari ryawe';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'Kubika by\'inyongera';

  @override
  String get backupSave => 'Bika kopi y\'inyongera';

  @override
  String get backupSaveHint =>
      'Ibyo ukunda, intonde, ishoramari, imenyesha n\'ibyo wanditse muri dosiye imwe.';

  @override
  String get backupRestore => 'Garura uvuye kuri kopi y\'inyongera';

  @override
  String get backupRestoreHint =>
      'Yongeraho ibiri muri dosiye; nta na kimwe mu byo ufite ubu gisibwa.';

  @override
  String get backupRestored => 'Kopi y\'inyongera yagaruwe.';

  @override
  String get backupInvalid => 'Iyi dosiye si kopi y\'inyongera ya WhatStock.';

  @override
  String get allocationPositions => 'Imigabane';

  @override
  String get allocationSectors => 'Inzego';

  @override
  String get allocationCurrencies => 'Amafaranga';

  @override
  String get allocationAccounts => 'Konti';

  @override
  String get compareReturn1y => 'Inyungu y\'umwaka 1';

  @override
  String get compareFromHigh => 'Kuva hejuru mu byumweru 52';

  @override
  String get briefAutoTitle => 'Incamake ya buri munsi buri gitondo';

  @override
  String get briefAutoSubtitle =>
      '“Uyu munsi n’imigabane yawe” ikorwa ubwayo nyuma ya 7:00 za mu gitondo igihe porogaramu irimo gukora; kuri mudasobwa, imenyesha rizakubwira. Ikoresha umubare ntarengwa w’ibibazo byawe bya buri munsi, si isesengura.';

  @override
  String get targetsButton => 'Ikwirakwizwa rigamijwe';

  @override
  String get targetsTitle => 'Ikwirakwizwa rigamijwe';

  @override
  String get targetsHint =>
      'Shyiraho igice cy\'umutungo buri mugabane ukwiye kugira. Siga umwanya ari ubusa niba nta ntego. Porogaramu izakwereka icyo ugomba kugura cyangwa kugurisha.';

  @override
  String targetsSum(String percent) {
    return 'Igiteranyo: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Gura ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Gurisha ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Ku ntego';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol yarenze EPS yari yitezwe';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol ntiyageze kuri EPS yari yitezwe';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'EPS yatangajwe $actual, yari yitezwe $estimate';
  }

  @override
  String get newsExplain => 'Ibi bisobanuye iki?';

  @override
  String get watchAlertAll => 'Imenyesha ku mihindagurikire minini y\'umunsi';

  @override
  String get watchAlertAllHint =>
      'Imenyesha ry\'igiciro kuri buri mugabane uri kuri uru rutonde: rizavuga igihe uhindutse gutya mu munsi umwe, uzamuka cyangwa umanuka. Iyari isanganywe imenyesha izagumana iryayo.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Hashyizweho amamenyesha $count',
      one: 'Hashyizweho imenyesha 1',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Ohereza inyungu zabonetse (CSV)';

  @override
  String get portfolioAnnualReturn => 'Inyungu ku mwaka';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / umwaka';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Inyungu ku mwaka ipimwa hashingiwe ku mafaranga (XIRR): yita ku gihe waguriye n\'igihe wagurishirije, bityo amafaranga wongeyemo nyuma ntayigoreka. Igaragara iyo ibyo waguze bwa mbere bimaze nibura umwaka; inyungu ku migabane ntizirimo.';

  @override
  String get eventsAddToCalendar => 'Shyira kuri kalendari (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Imenyesha rya portfolio';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Imenyesha igihe portfolio yawe yose ihindutse bingana gutya mu munsi umwe.';

  @override
  String get portfolioMoveAlertOff => 'Bizimije';

  @override
  String portfolioMoveUp(String percent) {
    return 'Portfolio yawe yazamutseho $percent uyu munsi';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Portfolio yawe yagabanutseho $percent uyu munsi';
  }

  @override
  String get whatIfTitle => 'Iyo uba warashoye?';

  @override
  String get whatIfAmount => 'Amafaranga';

  @override
  String whatIfResult(String amount, String period) {
    return 'Iyo ushora $amount mu gihe cy\'$period, uyu munsi byari kuba bifite agaciro ka';
  }

  @override
  String get whatIfNote =>
      'Bishingiye gusa ku giciro cy\'umugabane: inyungu ku migabane, amafaranga ya serivisi n\'imisoro ntibirimo. Inyungu zabanje ntizigaragaza iz\'ahazaza.';

  @override
  String get watchShare => 'Sangiza urutonde';

  @override
  String get watchImport => 'Ongeramo ama ticker';

  @override
  String get watchImportHint =>
      'Omekamo ama ticker atandukanyijwe n\'akitso, umwanya cyangwa umurongo mushya – urugero, urutonde umuntu yagusangije.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Hongewemo imigabane $count',
      one: 'Hongewemo umugabane 1',
      zero: 'Nta migabane mishya',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Ibinini cyane mbere';

  @override
  String get positionsSortGain => 'Inyungu rusange nini mbere';

  @override
  String get positionsSortToday => 'Ibyiza by\'uyu munsi mbere';

  @override
  String get chartMyBuys => 'Ibyo waguze';

  @override
  String get chartMySells => 'Ibyo wagurishije';

  @override
  String get shortcutsTitle => 'Inzira z\'ubusamo za mwandikisho';

  @override
  String usMarketOpen(String time) {
    return 'Isoko rya Amerika rirafunguye · rirafunga mu $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Isoko rya Amerika rirafunze · rirafungura mu $time';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes min';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours h $minutes min';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days iminsi $hours h';
  }

  @override
  String get dividendGoalSet =>
      'Shyiraho intego y\'inyungu ku migabane ku kwezi';

  @override
  String get dividendGoalTitle => 'Intego y\'inyungu ku migabane ku kwezi';

  @override
  String get dividendGoalAmount => 'Inyungu ku migabane ku kwezi';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Hafi $amount ku kwezi ku gipimo cy\'ubu · $percent · Intego: $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Hafi $amount ku kwezi ku gipimo cy\'ubu · Wageze ku ntego: $goal';
  }

  @override
  String get portfolioAccount => 'Konti';

  @override
  String get portfolioAccountHint => 'urugero: TBSZ 2026 (si itegeko)';

  @override
  String get portfolioAccountAdd => 'Erekana konti';

  @override
  String get portfolioAccountsAll => 'Konti zose';

  @override
  String get portfolioAccountNote =>
      'Ibyaguzwe, ibyagurishijwe n\'amadividende kuri iyi konti gusa. Amafaranga, intego n\'isesengura rya AI bigaragara muri \"Konti zose\".';

  @override
  String get portfolioNoAccount => 'Nta konti';

  @override
  String portfolioFee(String currency) {
    return 'Komisiyo ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Ongeraho komisiyo';

  @override
  String portfolioFeeRow(String amount) {
    return 'Komisiyo: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'Incamake y\'umwaka';

  @override
  String get portfolioProceeds => 'Amafaranga yavuye mu igurisha';

  @override
  String get portfolioCostBasis => 'Igiciro cy\'ibyaguzwe';

  @override
  String get portfolioFeesPaid => 'Komisiyo zishyuwe';

  @override
  String get portfolioAnnualSummaryNote =>
      'Amafaranga ari mu ifaranga ry\'umwimerere, ntiyahinduwe. Amafaranga yavuye mu igurisha yakuweho komisiyo yo kugurisha; igiciro cy\'ibyaguzwe kirimo komisiyo yo kugura (FIFO). Ku imenyekanisha ry\'umusoro, hindura ku gipimo cy\'ivunjisha gisabwa n\'ikigo cy\'imisoro.';

  @override
  String get portfolioShare => 'Sangiza ibyavuyemo';

  @override
  String get portfolioShareHeading => 'Ishoramari ryanjye';

  @override
  String get portfolioTopHoldings => 'Imigabane minini';

  @override
  String get portfolioShareNote =>
      'Hasangizwa ijanisha gusa, nta mafaranga agaragara.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Imigabane $count',
      one: 'Umugabane $count',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'Si inama yo gushora imari';

  @override
  String get contributionButton => 'Shora amafaranga mashya';

  @override
  String contributionAmount(String currency) {
    return 'Amafaranga yo gushora ($currency)';
  }

  @override
  String get contributionHint =>
      'Kugura gusa, nta kugurisha: imigabane iri kure cyane munsi y\'intego yayo ni yo ibona amafaranga mbere.';

  @override
  String contributionShares(String shares) {
    return '≈ imigabane $shares';
  }

  @override
  String contributionMissing(String symbols) {
    return 'Nta giciro cya none cya $symbols: ntibibarirwa mu igabanywa.';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'Niba inyungu ku mwaka igumye uko iri ($rate), uzagera ku ntego hafi mu mwaka wa $year.';
  }

  @override
  String get portfolioMaxDrawdown => 'Igabanuka rinini kurusha andi';

  @override
  String get glossMaxDrawdown =>
      'Igabanuka rinini kurusha andi ry\'agaciro k\'imigabane yawe, kuva ku gasongero ka mbere kugera ku rwego rwo hasi rwakurikiyeho, hatitawe ku byo waguze n\'ibyo wagurishije (bipimwe hashingiwe ku gihe). Ryerekana uko ishoramari ryawe rimaze kumanuka cyane.';

  @override
  String watchSince(String date) {
    return 'Kuva wawushyira mu byo ukunda ($date)';
  }

  @override
  String get portfolioSampleTry => 'Gerageza n\'ishoramari ry\'icyitegererezo';

  @override
  String get portfolioSampleBanner =>
      'Iri ni ishoramari ry\'icyitegererezo. Ongeramo ibyo waguze ubwawe, cyangwa urikureho.';

  @override
  String get portfolioSampleRemove => 'Kuramo icyitegererezo';

  @override
  String get portfolioStopsAll =>
      'Imenyesha ryo kumanuka kuva ku isonga ku migabane yose';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Hashyizweho amamenyesha $count',
      one: 'Hashyizweho imenyesha 1',
      zero: 'Imigabane yose isanzwe ifite iri menyesha',
    );
    return '$_temp0';
  }

  @override
  String portfolioSinceSale(String percent) {
    return '$percent kuva wawugurisha';
  }

  @override
  String get lotPreviewRealized => 'Ibyabonetse kuri iri gurisha (FIFO):';

  @override
  String lotPreviewAverage(String after, String before) {
    return 'Igiciro mpuzandengo gishya: $after (ubu $before)';
  }

  @override
  String get portfolioYtdReturn => 'Inyungu y\'uyu mwaka';

  @override
  String get glossTwrYtd =>
      'Inyungu ipimwe hashingiwe ku gihe kuva mu ntangiriro z\'umwaka (cyangwa kuva waguze bwa mbere, niba byarabaye uyu mwaka): buri munsi ubara ihinduka ry\'imigabane wari ufite uwo munsi, maze iminsi igafatanywa nk\'urunigi – amafaranga ushyiramo cyangwa ukuramo si inyungu, ni yo mpamvu ishobora kugereranywa na index. Munsi yayo: index yatoranyijwe mu gihe kimwe.';

  @override
  String alertDistance(String price, String percent) {
    return 'Ubu $price · hasigaye $percent';
  }

  @override
  String get watchSortSince => 'Ukurikije ihinduka kuva wawushyiramo';

  @override
  String get portfolioTodayMovers => 'Ibyahindutse cyane uyu munsi:';

  @override
  String get lotNoteAdd => 'Ongeraho inyandiko';

  @override
  String get lotNoteBuyHint =>
      'Kuki uri kugura? Bizajya mu byo wanditse ku mugabane, hamwe n\'itariki.';

  @override
  String get lotNoteSellHint =>
      'Kuki uri kugurisha? Bizajya mu byo wanditse ku mugabane, hamwe n\'itariki.';

  @override
  String get lotNoteBought => 'Byaguzwe';

  @override
  String get positionHeld => 'Igihe umaze uwufite';

  @override
  String durationMonths(int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: 'amezi $months',
      one: 'ukwezi $months',
    );
    return '$_temp0';
  }

  @override
  String durationDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'iminsi $days',
      one: 'umunsi $days',
    );
    return '$_temp0';
  }

  @override
  String positionHeldSince(String date) {
    return 'kuva $date';
  }

  @override
  String lotPreviewWeight(String after, String before) {
    return 'Igice mu ishoramari nyuma: $after (ubu $before)';
  }

  @override
  String lotFromCash(String amount) {
    return 'Ishyura ukoresheje amafaranga (ubu $amount)';
  }

  @override
  String lotToCash(String amount) {
    return 'Ongera ku mafaranga (ubu $amount)';
  }

  @override
  String get onboardTitle4 => 'Kurikirana ishoramari ryawe';

  @override
  String get onboardBody4 =>
      'Injiza export ya broker wawe (Revolut, Trading 212, IBKR, DEGIRO, Schwab…) cyangwa wandike ibyo waguze n\'ibyo wagurishije n\'intoki: reba inyungu yawe ugereranyije na index, amadividende yawe n\'incamake y\'umwaka ku imenyekanisha ry\'umusoro.';

  @override
  String get lotEdit => 'Hindura';

  @override
  String lotEditTitle(String symbol) {
    return 'Hindura igikorwa cyo kugura cyangwa kugurisha · $symbol';
  }

  @override
  String get lotSave => 'Bika';

  @override
  String get portfolioGoalSet => 'Shyiraho intego';

  @override
  String get portfolioGoalTitle => 'Intego y\'ishoramari';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · Intego: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Wageze ku ntego: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Kuramo intego';

  @override
  String get alertEdit => 'Hindura imenyesha';

  @override
  String get positionOpenLots => 'Ibyo ugifite (ibya kera mbere)';

  @override
  String get lotRemoved => 'Igikorwa cyo kugura cyangwa kugurisha cyasibwe';

  @override
  String get alertDeleted => 'Imenyesha ryasibwe';

  @override
  String get alertsClearTriggered => 'Siba amamenyesha yabaye';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Hasibwe amamenyesha $count',
      one: 'Hasibwe imenyesha 1',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Ahabanza';

  @override
  String get allocationCountries => 'Ibihugu';

  @override
  String get newsExplainNoteResearch =>
      'Ibisobanuro bya AI: ishakisha ukuri kuri murandasi, ifungura inkuru kandi igasuzuma uko inkomoko yizewe. Si inama yo gushora imari. Ikoresha umubare ntarengwa w’ibibazo byawe bya buri munsi, si isesengura.';

  @override
  String get sourceOfficial => 'Byemewe';

  @override
  String get sourcePressRelease => 'Itangazo';

  @override
  String get sourceMajorNews => 'Ikinyamakuru gikomeye';

  @override
  String get sourceOpinion => 'Igitekerezo';

  @override
  String get earningsSummaryButton => 'Ni iki cyari muri raporo iheruka?';

  @override
  String get earningsSummaryNote =>
      'Incamake ya AI y’itangazo ry’ibyavuye mu kigo n’ibyo itangazamakuru ryanditse ibona kuri murandasi. Si inama yo gushora imari. Ikoresha umubare ntarengwa w’ibibazo byawe bya buri munsi, si isesengura.';

  @override
  String get compareLastSurprise => 'EPS y\'igihembwe gishize vs yitezwe';

  @override
  String get compareNextReport => 'Raporo ikurikira';

  @override
  String get resolvingDescription => 'Turimo gushaka umugabane ushaka kuvuga…';

  @override
  String get instrumentTitle => 'Ibyerekeye iki gikoresho';

  @override
  String get instrumentHint =>
      'Nta mwirondoro w’ikigo uhari kuri iki kimenyetso – gishobora kuba ETF, ikigega cyangwa icyemezo cy’ububiko. Baza AI icyo ari cyo, icyo kirimo n’ikiguzi cyacyo.';

  @override
  String get instrumentAsk => 'Iki ni iki?';

  @override
  String get instrumentNote =>
      'Ibisobanuro bya AI bishingiye ku rupapuro rw’ikigega rw’uwagishinze no ku mbuga z’imari ibona kuri murandasi. Si inama yo gushora imari. Ikoresha umubare ntarengwa w’ibibazo byawe bya buri munsi, si isesengura.';

  @override
  String suggestAskAi(String query) {
    return 'Baza AI: “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Nta giciro cya none cya $symbols.';
  }

  @override
  String get eventsRecentResults => 'Ibyatangajwe vuba';

  @override
  String get saveToNotes => 'Bika mu byo nanditse';

  @override
  String get savedToNotes => 'Byabitswe mu byo wanditse';

  @override
  String get portfolioDividendsReceived => 'Amadividende yakiriwe';

  @override
  String get portfolioDividendsThisYear => 'Uyu mwaka';

  @override
  String get portfolioDividendsAllTime => 'Byose kuva kera';

  @override
  String get portfolioAddDividend => 'Ongeraho idividende';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Amafaranga yakiriwe ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Itariki yo kwishyura';

  @override
  String get portfolioDividendsEmpty =>
      'Nta dividende irandikwa. Zongereho n\'intoki, cyangwa winjize export ya broker wawe – imirongo yayo y\'amadividende na yo irafatwa.';

  @override
  String get portfolioSplit => 'Igabanywa ry\'imigabane';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Igabanywa ry\'imigabane: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Ibyaguzwe n\'ibyagurishijwe mbere y\'igabanywa birahindurwa: umubare w\'imigabane ugwizwa, igiciro cya buri mugabane kigabanywa, bityo igiciro cyose kiguma kimwe.';

  @override
  String get portfolioSplitRatio => 'Igipimo (mishya : ya kera)';

  @override
  String get portfolioSplitRatioError =>
      'Andika igipimo nka 10:1, cyangwa 1:10 ku igabanywa risubira inyuma.';

  @override
  String get portfolioSplitDate => 'Itariki y\'igabanywa';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Igabanywa ry\'imigabane $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Igabanywa ry\'imigabane ryasibwe';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Amagabanywa y\'imigabane $count yongewemo',
      one: 'Igabanywa ry\'imigabane 1 ryongewemo',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Amadividende $count yongewemo',
      one: 'Idividende 1 ryongewemo',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Sohora amadividende (CSV)';

  @override
  String get portfolioDividendDeleted => 'Idividende ryasibwe';

  @override
  String get portfolioDividendsHint =>
      'Amafaranga nk\'uko yageze kuri konti yawe, mu ifaranga yishyuwemo; ibyose bihindurwa ku gipimo cy\'uyu munsi. Ku imenyekanisha ry\'imisoro, koresha inyandiko ya broker wawe.';

  @override
  String get awayTitle => 'Igihe wari udahari';

  @override
  String awaySince(String when) {
    return 'Kuva $when';
  }

  @override
  String get awayQuiet => 'Nta kintu cyahindutse cyane.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Amamenyesha $count yakoze',
      one: 'Imenyesha 1 ryakoze',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Ibisubizo byatangajwe: $symbols';
  }

  @override
  String get moveWhyButton => 'Kuki ihindagurika uyu munsi?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent uyu munsi';
  }

  @override
  String get moveWhyNote =>
      'Ibisobanuro bya AI bishingiye ku makuru y\'uyu munsi yabonetse kuri interineti; impamvu nyayo ishobora kuba itazwi cyangwa itandukanye. Si inama yo gushora imari. Bikoresha umubare w\'ibibazo byawe bya buri munsi, ntabwo ari isesengura.';

  @override
  String get sectionTechnical => 'Ishusho ya tekiniki';

  @override
  String get labelSma50 => 'Impuzandengo y\'iminsi 50';

  @override
  String get labelSma200 => 'Impuzandengo y\'iminsi 200';

  @override
  String get labelRsi => 'RSI (iminsi 14)';

  @override
  String get labelVolatility30 => 'Ihindagurika (iminsi 30)';

  @override
  String techAbove(String percent) {
    return '$percent hejuru';
  }

  @override
  String techBelow(String percent) {
    return '$percent munsi';
  }

  @override
  String get techOverbought => 'yaguzwe cyane';

  @override
  String get techOversold => 'yagurishijwe cyane';

  @override
  String get techNeutral => 'hagati';

  @override
  String get techGoldenCross =>
      'Impuzandengo y\'iminsi 50 iri hejuru y\'iy\'iminsi 200 – mu gusoma gisanzwe ni ukuzamuka.';

  @override
  String get techDeathCross =>
      'Impuzandengo y\'iminsi 50 iri munsi y\'iy\'iminsi 200 – mu gusoma gisanzwe ni ukumanuka.';

  @override
  String get glossSma50 =>
      'Impuzandengo y\'igiciro cyo gusoza cy\'iminsi 50 ishize y\'ubucuruzi. Igiciro kiri hejuru yayo akenshi gifatwa nk\'imbaraga z\'igihe gito, kiri munsi nk\'intege nke.';

  @override
  String get glossSma200 =>
      'Impuzandengo y\'igiciro cyo gusoza cy\'iminsi 200 ishize y\'ubucuruzi – umurongo usanzwe w\'icyerekezo cy\'igihe kirekire. Abashoramari benshi bafata igiciro kiri hejuru yayo nk\'ukuzamuka kw\'igihe kirekire.';

  @override
  String get glossRsi =>
      'Igipimo cy\'imbaraga zigereranyijwe (RSI): kigereranya inyungu za vuba n\'igihombo cya vuba ku rugero rwa 0–100. Hejuru ya 70 imigabane akenshi ivugwa ko yaguzwe cyane (yazamutse vuba), munsi ya 30 ko yagurishijwe cyane – ariko icyerekezo gikomeye gishobora kuhaguma igihe kirekire.';

  @override
  String get glossVolatility =>
      'Uko igiciro gihindagurika umunsi ku wundi, gipimwe ku mwaka: 20% bivuze ko umwaka usanzwe ugenda hafi ya ±20%. Ihindagurika ryinshi bivuze ingendo nini mu mpande zombi.';

  @override
  String get techNote =>
      'Byabazwe hakoreshejwe ibiciro byo gusoza bya buri munsi. Ibimenyetso bya tekiniki bisobanura ibyahise, ntabwo ari ibizaza.';

  @override
  String portfolioAbove200(int above, int count) {
    return 'Ibyo ufite $above muri $count biri hejuru y\'impuzandengo yabyo y\'iminsi 200';
  }

  @override
  String get watchSignalsTitle => 'Ibimenyetso';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · yagurishijwe cyane';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · yaguzwe cyane';
  }

  @override
  String get signalCrossedAbove =>
      'yarenze hejuru y\'impuzandengo y\'iminsi 200';

  @override
  String get signalCrossedBelow =>
      'yamanutse munsi y\'impuzandengo y\'iminsi 200';

  @override
  String get signalAlertsTitle => 'Imenyesha ry\'ibimenyetso bya tekiniki';

  @override
  String get signalAlertsSubtitle =>
      'Rimwe ku munsi, iyo umugabane ukurikirana wagurishijwe cyane cyangwa waguzwe cyane (RSI), cyangwa igiciro cyawo kirenze impuzandengo y\'iminsi 200.';

  @override
  String get signalAlertsNotification => 'Ibimenyetso bya tekiniki';

  @override
  String get glossaryPageTitle => 'Ibisobanuro by\'amagambo';

  @override
  String get glossaryPageSubtitle =>
      'Ibisobanuro byoroshye by\'imibare yose porogaramu yerekana, kuva ku P/E kugeza ku RSI';

  @override
  String get glossarySearchHint => 'Shakisha mu bisobanuro by\'amagambo';

  @override
  String get portfolioCash => 'Amafaranga';

  @override
  String get portfolioCashTitle => 'Amafaranga asigaye';

  @override
  String get portfolioCashHint =>
      'Amafaranga ataratangwa mu gushora kuri broker wawe, ku bwoko bw\'ifaranga. Abarwa mu gaciro kose no mu ikwirakwizwa; ntabarwa mu nyungu.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Umubare ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Shyiraho amafaranga asigaye';

  @override
  String get portfolioDividendsByMonth => 'Ku kwezi';

  @override
  String get dividendsLegendReceived => 'Yakiriwe';

  @override
  String get dividendsLegendExpected => 'Yitezwe';

  @override
  String get portfolioDividendsExpected => 'Ikurikira yitezwe';

  @override
  String get portfolioDividendsExpectedNote =>
      'Bigereranyijwe hashingiwe ku matariki n\'amafaranga y\'ubwishyu wanditse; ibigo bishobora kubihindura cyangwa kubireka.';

  @override
  String portfolioDividendAround(String date) {
    return 'ahagana $date';
  }
}
