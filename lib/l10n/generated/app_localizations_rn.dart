// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Rundi (`rn`).
class AppLocalizationsRn extends AppLocalizations {
  AppLocalizationsRn([String locale = 'rn']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Fata ifoto y\'umugabane, umenye vyose ku bijanye na wo.';

  @override
  String get homeHint =>
      'Icemezo c\'imigabane, ikirahure ca porogarama y\'umuhuza w\'imari, ikinyamakuru canke ikimenyetso c\'isosiyete – ikintu cose kigaragaza umugabane.';

  @override
  String get takePhoto => 'Fata ifoto';

  @override
  String get chooseFromGallery => 'Hitamwo mu mafoto';

  @override
  String get chooseImage => 'Hitamwo ifoto';

  @override
  String get enterTickerManually => 'Andika ticker wewe nyene';

  @override
  String get tickerInputLabel => 'Ikimenyetso (ticker)';

  @override
  String get tickerInputHint => 'akarorero: AAPL';

  @override
  String get lookUp => 'Rondera';

  @override
  String demoModeBanner(String symbols) {
    return 'Uburyo bw\'akarorero – nta rufunguzo rw\'amakuru y\'isoko rwashizweho. Amakuru y\'akarorero araboneka kuri: $symbols.';
  }

  @override
  String get recognizing => 'Turiko turasesangura ifoto…';

  @override
  String get loadingData => 'Amakuru ariko araza…';

  @override
  String get noCandidatesTitle => 'Nta mugabane wamenyekanye';

  @override
  String get noCandidatesBody =>
      'Ntitwashoboye kumenya umugabane kuri iyi foto. Gerageza ifoto ibonekera neza, canke wandike ticker wewe nyene.';

  @override
  String get whatWeSaw => 'Ivyo twabonye';

  @override
  String get chooseCandidateTitle => 'Ni uwuhe mugabane washaka kuvuga?';

  @override
  String confidencePercent(int percent) {
    return 'Icizere $percent%';
  }

  @override
  String get settings => 'Ivyo gutunganya';

  @override
  String get language => 'Ururimi';

  @override
  String get systemLanguage => 'Ururimi rwa sisitemu';

  @override
  String get about => 'Ibijanye na porogarama';

  @override
  String get disclaimer =>
      'Iyi porogarama itanga amakuru gusa, si inama yo gushora imari. Amakuru arashobora gutebuka canke ntabe ari yo.';

  @override
  String dataSource(String source) {
    return 'Inkomoko y\'amakuru: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Kumenya ifoto: $source';
  }

  @override
  String get retry => 'Subira ugerageze';

  @override
  String get cancel => 'Hagarika';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Ugara';

  @override
  String get errorGeneric => 'Habaye ikosa.';

  @override
  String get errorSectionUnavailable => 'Iki gice nticashoboye kuboneka.';

  @override
  String get notAvailable => 'ntibiboneka';

  @override
  String get sectionIdentity => 'Akaranga';

  @override
  String get sectionPrice => 'Igiciro';

  @override
  String get sectionValuation => 'Agaciro';

  @override
  String get sectionFinancials => 'Imari';

  @override
  String get sectionDividend => 'Inyungu ku migabane';

  @override
  String get sectionProfile => 'Akaranga k\'isosiyete';

  @override
  String get sectionAnalysts => 'Ivyiyumviro vy\'abasesanguzi';

  @override
  String get sectionNews => 'Amakuru mashasha';

  @override
  String get sectionRecognition => 'Ingene vyamenyekanye';

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
  String get labelIpoDate => 'Itarike ya IPO';

  @override
  String get labelMarketCap => 'Agaciro ku isoko';

  @override
  String get labelSharesOutstanding => 'Imigabane yose yasohowe';

  @override
  String get labelEmployees => 'Abakozi';

  @override
  String get labelCeo => 'Umuyobozi mukuru';

  @override
  String get labelHeadquarters => 'Icicaro gikuru';

  @override
  String get labelDescription => 'Insiguro';

  @override
  String get labelLastPrice => 'Igiciro ca nyuma';

  @override
  String get labelChange => 'Ihinduka';

  @override
  String get labelOpen => 'Iyugururwa';

  @override
  String get labelDayHigh => 'Hejuru ku musi';

  @override
  String get labelDayLow => 'Hasi ku musi';

  @override
  String get labelPreviousClose => 'Iyugarwa riheruka';

  @override
  String get labelWeek52High => 'Hejuru mu ndwi 52';

  @override
  String get labelWeek52Low => 'Hasi mu ndwi 52';

  @override
  String get labelAverageVolume10d => 'Ingano mpuzandengo (imisi 10)';

  @override
  String updatedAt(String time) {
    return 'Vyavuguruwe $time';
  }

  @override
  String get labelPeTrailing => 'P/E (iheruka)';

  @override
  String get labelPeForward => 'P/E (yitezwe)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / amahera asigara (FCF)';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Amahera yinjiye (TTM)';

  @override
  String get labelNetIncomeTtm => 'Inyungu isigaye (TTM)';

  @override
  String get labelGrossMargin => 'Igipimo c\'inyungu yose';

  @override
  String get labelOperatingMargin => 'Igipimo c\'inyungu y\'ibikorwa';

  @override
  String get labelNetMargin => 'Igipimo c\'inyungu isigaye';

  @override
  String get labelRoe => 'Inyungu ku mari y\'abanyamigabane (ROE)';

  @override
  String get labelRoa => 'Inyungu ku itunga (ROA)';

  @override
  String get labelDebtToEquity => 'Umwenda / imari y\'abanyamigabane';

  @override
  String get labelCurrentRatio => 'Igipimo c\'ubushobozi bwo kuriha';

  @override
  String get labelRevenueGrowth => 'Iyongerekana ry\'amahera yinjiye (YoY)';

  @override
  String get labelEpsGrowth => 'Iyongerekana rya EPS (YoY)';

  @override
  String get labelDividendYield => 'Igipimo c\'inyungu ku migabane';

  @override
  String get labelDividendPerShare => 'Inyungu kuri buri mugabane';

  @override
  String get labelPayoutRatio => 'Igipimo c\'inyungu igaburwa';

  @override
  String get labelConsensus => 'Iciyumviro rusangi';

  @override
  String get ratingStrongBuy => 'Gura cane';

  @override
  String get ratingBuy => 'Gura';

  @override
  String get ratingHold => 'Gumana';

  @override
  String get ratingSell => 'Gurisha';

  @override
  String get ratingStrongSell => 'Gurisha cane';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Abasesanguzi $count',
      one: 'Umusesanguzi 1',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Igihe: $period';
  }

  @override
  String get noNews => 'Nta makuru mashasha ahari.';

  @override
  String get openArticle => 'Ugurura inkuru';

  @override
  String get openLinkFailed => 'Ntivyakunze kwugurura umurongo.';

  @override
  String get recognitionSummary => 'Incamake';

  @override
  String get recognitionEvidence => 'Igituma tubivuga';

  @override
  String get recognitionRawText => 'Inyandiko yasomwe ku ifoto';

  @override
  String get errMissingAnthropicKey =>
      'Kumenya amafoto ntibirashirwaho (nta ANTHROPIC_API_KEY). Andika ticker wewe nyene.';

  @override
  String get errRecognitionUnreachable =>
      'Ntivyakunze gushika kuri serivisi yo kumenya amafoto. Raba ko interineti yawe ikora.';

  @override
  String errRecognitionHttp(String status) {
    return 'Serivisi yo kumenya amafoto yagarukanye ikosa (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Serivisi yo kumenya amafoto ntiyashoboye gusesangura iyi foto.';

  @override
  String get errRecognitionTruncated =>
      'Inyishu yo kumenya ifoto yaciwe hagati. Subira ugerageze.';

  @override
  String get errRecognitionBadResponse =>
      'Inyishu itari yitezwe ivuye kuri serivisi yo kumenya amafoto.';

  @override
  String get errRecognitionEmpty =>
      'Serivisi yo kumenya amafoto yagarukanye inyishu itarimwo ikintu.';

  @override
  String get errMissingFinnhubKey =>
      'Amakuru y\'isoko ntarashirwaho (nta FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Ntivyakunze gushika kuri serivisi y\'amakuru y\'isoko. Raba ko interineti yawe ikora.';

  @override
  String get errMarketRateLimited =>
      'Hari ivyasabwe vyinshi cane kuri serivisi y\'amakuru y\'isoko. Rindira umunota umwe.';

  @override
  String errMarketHttp(String status) {
    return 'Serivisi y\'amakuru y\'isoko yagarukanye ikosa (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Inyishu itari yitezwe ivuye kuri serivisi y\'amakuru y\'isoko.';

  @override
  String errNoQuote(String symbol) {
    return 'Nta makuru y\'igiciro yabonetse kuri $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Nta karanga k\'isosiyete kabonetse kuri $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Uburyo bw\'akarorero bwemera $symbols gusa. Ongeramwo FINNHUB_API_KEY kugira uronke amakuru y\'ako kanya.';
  }

  @override
  String errUnknown(String detail) {
    return 'Habaye ikosa: $detail';
  }

  @override
  String get newSearch => 'Ukurondera gushasha';

  @override
  String get recentSearches => 'Ivyo uheruka';

  @override
  String get noRecentSearches => 'Nta vyo uraheruka kurondera.';

  @override
  String get clearRecent => 'Futa ivyo uheruka';

  @override
  String get greeting => 'Turabe uwuhe mugabane?';

  @override
  String get searchHint => 'Ticker canke izina ry\'isosiyete';

  @override
  String get attachImage => 'Omeka ifoto';

  @override
  String get searchResultsTitle => 'Ivyavuye mu kurondera';

  @override
  String errNoResults(String query) {
    return 'Nta migabane yabonetse kuri “$query”.';
  }

  @override
  String get quickBarHint => 'Andika ticker canke izina ry\'isosiyete…';

  @override
  String get openFullWindow => 'Ugurura idirisha';

  @override
  String hotkeyHint(String shortcut) {
    return 'Fyonda $shortcut aho uri hose kugira uhamagare WhatStock.';
  }

  @override
  String get trayOpen => 'Ugurura WhatStock';

  @override
  String get trayQuickSearch => 'Ukurondera vuba';

  @override
  String get trayQuit => 'Sohoka';

  @override
  String get appearance => 'Isura';

  @override
  String get themeSystem => 'Sisitemu';

  @override
  String get themeDark => 'Umwijima';

  @override
  String get themeLight => 'Umuco';

  @override
  String get back => 'Subira inyuma';

  @override
  String get aiSectionTitle => 'Isesangura rya AI';

  @override
  String get aiIntro =>
      'Isesangura ryimbitse ryanditswe na AI: incamake y\'amakuru mashasha, ibikorwa vy\'isosiyete, inkomezi, ingorane n\'ibintu bihishije, agaciro, ingene igiciro gishobora kugenda n\'ivyoshobora kuba urabiye mu mpande z\'imitekerereze, imibano y\'abantu, ubuhinga n\'ubutunzi bwagutse, hamwe n\'ivyo gukurikirana.';

  @override
  String get aiGenerate => 'Kora isesangura';

  @override
  String get aiRegenerate => 'Subira urikore';

  @override
  String get aiGenerating =>
      'Turiko turategura isesangura… birashobora gufata umunota umwe canke ibiri.';

  @override
  String get aiSources => 'Inkomoko';

  @override
  String aiGeneratedAt(String time) {
    return 'Ryakozwe $time';
  }

  @override
  String get aiDisclaimer =>
      'Isesangura ryakozwe na AI rishingiye ku makuru rusangi n\'amakuru mashasha. Rirashobora kugira amakosa canke kuba ritakiri ku gihe, kandi si inama yo gushora imari.';

  @override
  String get errAiNotConfigured =>
      'Isesangura rya AI ntirirashirwaho (nta ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Ntivyakunze gushika kuri serivisi ya AI. Raba ko interineti yawe ikora.';

  @override
  String errAiHttp(String status) {
    return 'Serivisi ya AI yagarukanye ikosa (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Serivisi ya AI yanse gusesangura uyu mugabane.';

  @override
  String get errAiBadResponse =>
      'Inyishu itari yitezwe ivuye kuri serivisi ya AI.';

  @override
  String get sectionChart => 'Igishushanyo c\'igiciro';

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
      'Akahise k\'igiciro ntikaboneka mu nkomoko y\'amakuru iriho ubu.';

  @override
  String get sectionStatements => 'Raporo z\'imari (z\'umwaka)';

  @override
  String get labelFiscalYear => 'Umwaka w\'imari';

  @override
  String get labelRevenue => 'Amahera yinjiye';

  @override
  String get labelNetIncome => 'Inyungu isigaye';

  @override
  String get labelTotalAssets => 'Itunga ryose';

  @override
  String get labelTotalLiabilities => 'Imyenda yose';

  @override
  String get labelEquity => 'Imari y\'abanyamigabane';

  @override
  String get labelOperatingCashFlow => 'Amahera ava mu bikorwa';

  @override
  String get statementsUnavailable =>
      'Raporo z\'imari zasohowe ntiziboneka kuri uyu mugabane.';

  @override
  String get launchAtLogin => 'Ugurura igihe winjiye';

  @override
  String get hotkeyLabel => 'Inzira ngufi rusangi';

  @override
  String get hotkeyRecordHint => 'Fyonda hano, maze ufyonde utubuto dushasha';

  @override
  String get hotkeyReset => 'Subiza ivyari bisanzwe';

  @override
  String get pasteImage => 'Omeka ifoto iri mu bubiko bw\'akanya gato';

  @override
  String get errClipboardNoImage => 'Nta foto iri mu bubiko bw\'akanya gato.';

  @override
  String get favorites => 'Ivyo ukunda';

  @override
  String get addToFavorites => 'Shira mu vyo ukunda';

  @override
  String get removeFromFavorites => 'Kura mu vyo ukunda';

  @override
  String get noFavorites =>
      'Nta mugabane uraja mu vyo ukunda. Fyonda inyenyeri ku mugabane kugira uwushiremwo.';

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
  String get autoUpdate => 'Shiramwo ivugurura mu buryo bwikora';

  @override
  String get checkForUpdates => 'Raba ivugurura';

  @override
  String get updateChecking => 'Turiko turaraba ivugurura…';

  @override
  String get updateUpToDate => 'Ufise verisiyo iheruka.';

  @override
  String updateAvailable(String version) {
    return 'Verisiyo $version irahari.';
  }

  @override
  String get updateDownloading => 'Turiko turazana ivugurura inyuma…';

  @override
  String get updateDownloaded =>
      'Ivugurura riteguye. Subira utangure porogarama kugira urishiremwo.';

  @override
  String get updateNow => 'Vugurura';

  @override
  String get restartNow => 'Subira utangure';

  @override
  String get updatesViaStore =>
      'Ivugurura riza ubwaryo biciye mu iduka rya porogarama.';

  @override
  String get updateCheckFailed => 'Ntivyakunze kuraba ivugurura.';

  @override
  String get subscription => 'Iyandikisha';

  @override
  String get planTrial => 'Igeragezwa';

  @override
  String get planNormal => 'Isanzwe';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Nta paki ikora';

  @override
  String planAnalysesPerMonth(int count) {
    return 'Amasesangura $count ku kwezi';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Igeragezwa ry\'ubuntu ry\'imisi $days n\'amasesangura $count';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Hasigaye imisi $days y\'igeragezwa',
      one: 'Hasigaye umusi 1 w\'igeragezwa',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Igeragezwa ryawe ry\'ubuntu ryarangiye. Hitamwo ipaki kugira ubandanye gusesangura.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Hasigaye amasesangura $remaining kuri $total muri iki gihe';
  }

  @override
  String extraCredits(int count) {
    return 'Amasesangura $count y\'inyongera';
  }

  @override
  String renewsOn(String date) {
    return 'Rizovugururwa $date';
  }

  @override
  String get choosePlan => 'Hitamwo ipaki';

  @override
  String get currentPlan => 'Ipaki ufise';

  @override
  String get subscribe => 'Iyandikishe';

  @override
  String get perMonth => '/ ukwezi';

  @override
  String get extraPacksTitle =>
      'Ukeneye ibindi? Gura amasesangura y\'inyongera';

  @override
  String get extraPacksHint =>
      'Amasesangura y\'inyongera ntarangira kandi akoreshwa inyuma y\'ayo uhabwa buri kwezi.';

  @override
  String get buy => 'Gura';

  @override
  String get restorePurchases => 'Garura ivyo waguze';

  @override
  String get manageSubscription => 'Genzura iyandikisha';

  @override
  String get purchaseSuccess => 'Urakoze! Ivyo waguze birakora.';

  @override
  String get purchasePending => 'Ukugura kuracarindiriwe…';

  @override
  String get purchaseFailed => 'Ukugura ntikwashoboye kurangira.';

  @override
  String get purchaseCanceled => 'Ukugura kwahagaritswe.';

  @override
  String get billingUnavailable =>
      'Ukugura ntikurashoboka kuri iyi sisitemu. Iyandikishe kuri terefone yawe canke kuri Mac; ipaki yawe izokora ku bikoresho vyose.';

  @override
  String get errQuotaExceeded =>
      'Nta masesangura agusigaranye muri iki gihe. Duza ipaki yawe canke ugure amasesangura y\'inyongera.';

  @override
  String get errTrialExpired =>
      'Igeragezwa ryawe ry\'ubuntu ryarangiye. Hitamwo ipaki kugira ubandanye.';

  @override
  String get errNoPlan =>
      'Ukeneye ipaki ikora kugira ukoreshe isesangura rya AI.';

  @override
  String get viewPlans => 'Raba amapaki';

  @override
  String get usageTitle => 'Ikoreshwa';

  @override
  String get demoPurchaseNote =>
      'Uburiho bw\'akarorero: ukugura kuri iyi sisitemu ni ukwigana gusa.';

  @override
  String get mostPopular => 'Ikunzwe cane';

  @override
  String get bestValue => 'Ihendutse kuruta';

  @override
  String get planFeaturesCommon =>
      'Kumenya amafoto, amakuru y\'ako kanya, ibishushanyo, ivyo ukunda n\'indimi zose 120 biri muri buri paki. Ingano uhabwa ireba amasesangura ya AI.';

  @override
  String get searchLanguages => 'Rondera ururimi…';

  @override
  String get noLanguageMatch => 'Nta rurimi ruhuye.';

  @override
  String get aiSettings => 'Isesangura rya AI';

  @override
  String get aiLength => 'Uburebure';

  @override
  String get aiDepthBrief => 'Rigufi';

  @override
  String get aiDepthStandard => 'Risanzwe';

  @override
  String get aiDepthDeep => 'Ryimbitse';

  @override
  String get aiDepthBriefDesc => 'Ivy\'ingenzi, vuba.';

  @override
  String get aiDepthStandardDesc => 'Raporo yuzuye ifise ibice vyose.';

  @override
  String get aiDepthDeepDesc =>
      'Ukurondera kwinshi kuri interineti, kugereranya n\'amasosiyete bahiganwa n\'insiguro zimbitse.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Amajambo nka $min–$max';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'rikoresha amasesangura $count',
      one: 'rikoresha isesangura 1',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Urwego rw\'umusomyi';

  @override
  String get aiReaderBeginner => 'Uwutangura';

  @override
  String get aiReaderExperienced => 'Uwumenyereye';

  @override
  String get aiReaderBeginnerDesc =>
      'Ururimi rworoshe; buri jambo ry\'ubuhinga rirasigurwa.';

  @override
  String get aiReaderExperiencedDesc =>
      'Inyandiko ikomatanye ikoresha amajambo asanzwe y\'imari.';

  @override
  String get aiCounterArgument => 'Iciyumviro gihakana gikomeye kuruta';

  @override
  String get aiCounterArgumentDesc =>
      'Incamake yama isozwa n\'iciyumviro gikomeye kuruta ibindi gihakana umwanzuro wayo.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Gushika ku kurondera $count kuri interineti kuri buri sesangura mu paki yawe',
      one: 'Gushika ku kurondera 1 kuri interineti kuri buri sesangura mu paki yawe',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Ukurondera kuri interineti ku burebure busanzwe, bivanye n\'ipaki: Isanzwe $normal, Pro $pro, Max $max, Ultra $ultra. Rigufi: 2 bike, Ryimbitse: 2 vyiyongereye.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'gushika ku kurondera $count kuri interineti',
      one: 'gushika ku kurondera 1 kuri interineti',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ukurondera $count kuri interineti kuri buri sesangura',
      one: 'Ukurondera 1 kuri interineti kuri buri sesangura',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Ubu burebure bukenera amasesangura $needed, mugabo hasigaye $left gusa. Hitamwo uburebure bugufi mu “Ivyo gutunganya” canke uronke ayandi masesangura.';
  }

  @override
  String get outlookMarketMood => 'Umwuka w\'isoko';

  @override
  String get moodVeryPessimistic => 'Kwiheba cane';

  @override
  String get moodPessimistic => 'Kwiheba';

  @override
  String get moodNeutral => 'Hagati na hagati';

  @override
  String get moodOptimistic => 'Icizere';

  @override
  String get moodVeryOptimistic => 'Icizere cinshi';

  @override
  String get scenarioBull => 'Nivyagenda neza';

  @override
  String get scenarioBase => 'Ingene bisanzwe';

  @override
  String get scenarioBear => 'Nivyagenda nabi';

  @override
  String outlookCurrentPrice(String price) {
    return 'Igiciro c\'ubu: $price';
  }

  @override
  String get outlookKeyLevels => 'Ibipimo nyamukuru';

  @override
  String get keyLevelSupport => 'Urwego rwo hasi (support)';

  @override
  String get keyLevelResistance => 'Urwego rwo hejuru (resistance)';

  @override
  String get keyLevelAnchor => 'Igipimo fatizo';

  @override
  String get upcomingEvents => 'Ivyitezwe kuba';

  @override
  String get outlookChartNote =>
      'Imbibe zigereranijwe; amahirwe ni ibigereranyo, si ubuhanuzi.';

  @override
  String get accountTitle => 'Konti';

  @override
  String get signIn => 'Injira';

  @override
  String get signOut => 'Sohoka';

  @override
  String get notSignedIn => 'Ntiwinjiye';

  @override
  String get accountBenefit =>
      'Injira kugira iyandikisha ryawe rikore ku bikoresho vyawe vyose.';

  @override
  String get accountSyncedNote =>
      'Iyandikisha ryawe n\'amasesangura agusigaranye ni bimwe ku bikoresho vyose.';

  @override
  String get signInTitle => 'Injira muri WhatStock';

  @override
  String get emailLabel => 'Aderese ya imeyili';

  @override
  String get continueWithEmail => 'Bandanya ukoresheje imeyili';

  @override
  String codeSentTo(String email) {
    return 'Twarungitse kode y\'ibiharuro 6 kuri $email. Imara iminota 10.';
  }

  @override
  String get codeLabel => 'Kode yo kwinjira';

  @override
  String get resendCode => 'Rungika kode nshasha';

  @override
  String get useDifferentEmail => 'Koresha iyindi imeyili';

  @override
  String get errInvalidCode => 'Kode si yo canke yarengeje igihe.';

  @override
  String get errInvalidEmail => 'Andika aderese ya imeyili yemewe.';

  @override
  String get errSignInFailed =>
      'Kwinjira ntivyakunze. Raba interineti yawe usubire ugerageze.';

  @override
  String get checkoutWaiting =>
      'Rangiza kuriha muri navigateri yawe. Porogarama izovugururwa ubwayo nivyarangira.';

  @override
  String get paymentViaStripe =>
      'Kuriha gutekanye muri navigateri biciye kuri Stripe. Hagarika igihe cose ushakiye.';

  @override
  String get paymentViaStore =>
      'Uriha biciye kuri konti yawe ya App Store canke Google Play. Hagarika igihe cose mu vyo gutunganya vy\'iduka.';

  @override
  String get keySpace => 'Umwanya';

  @override
  String get doubleOptionTitle => 'Fyonda Option kabiri';

  @override
  String get doubleOptionSubtitle =>
      'Gufyonda Option kabiri vuba na vyo bihamagara WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Kugira bikore no mu zindi porogarama, emerera WhatStock muri System Settings → Privacy & Security → Input Monitoring, maze wongere wugurure porogarama.';

  @override
  String get openSystemSettings => 'Ugurura System Settings';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Fyonda $shortcut canke ufyonde Option kabiri aho uri hose kugira uhamagare WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Birashoboka cane';

  @override
  String get longTermToday => 'Uno musi';

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
    return 'birashoboka cane $price';
  }

  @override
  String get confidenceLow => 'Icizere gike';

  @override
  String get confidenceMedium => 'Icizere kiringaniye';

  @override
  String get confidenceHigh => 'Icizere kinini';

  @override
  String get longTermNote =>
      'Imbibe z\'igihe kirekire zishingiye ku vyavuzwe kandi zigenda ziraguka uko igihe kigenda. Ibiciro ntibiharura inyungu ku migabane. Ni ibigereranyo, si ubuhanuzi.';

  @override
  String get portfolio => 'Ishoramari';

  @override
  String get portfolioEmpty =>
      'Nta kirimwo. Ugurura umugabane maze ufyonde “Shira mu ishoramari” kugira ukurikirane ivyo utunze.';

  @override
  String get portfolioLocalNote =>
      'Bibitswe kuri iki gikoresho gusa. Igiteranyo giharurwa ku bipimo fatizo vya ECB; ibiciro birashobora gutebuka.';

  @override
  String get addToPortfolio => 'Shira mu ishoramari';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Ongeramwo $symbol';
  }

  @override
  String get portfolioQuantity => 'Igitigiri c\'imigabane';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Igiciro ca buri mugabane ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Itarike y\'ukugura';

  @override
  String get portfolioAdd => 'Ongeramwo';

  @override
  String get portfolioInvalidNumber => 'Andika igiharuro kiruta zero.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol yashizwe mu ishoramari ryawe.';
  }

  @override
  String get portfolioTotalValue => 'Agaciro kose';

  @override
  String get portfolioToday => 'Uno musi';

  @override
  String get portfolioGainLoss => 'Inyungu/igihombo';

  @override
  String get portfolioInvested => 'Ayashowe';

  @override
  String get portfolioAllocation => 'Ugusaranganya';

  @override
  String get portfolioPositions => 'Imigabane ufise';

  @override
  String portfolioAvgCost(String price) {
    return 'igiciro mpuzandengo $price';
  }

  @override
  String get portfolioYourPosition => 'Imigabane yawe';

  @override
  String get portfolioPurchases => 'Ivyo waguze';

  @override
  String get portfolioRemove => 'Kuramwo';

  @override
  String get portfolioExcluded =>
      'Imigabane idafise igiciro canke igipimo c\'ivunjisha ntiharurwa mu giteranyo.';

  @override
  String get priceAlerts => 'Imenyesha ry\'ibiciro';

  @override
  String get setPriceAlert => 'Shiraho imenyesha ry\'igiciro';

  @override
  String alertDialogTitle(String symbol) {
    return 'Imenyesha ry\'igiciro · $symbol';
  }

  @override
  String get alertKindAbove => 'Nikiduga hejuru ya';

  @override
  String get alertKindBelow => 'Nikimanuka munsi ya';

  @override
  String get alertKindMove => 'Nigihinduka cane mu musi umwe';

  @override
  String alertTargetPrice(String currency) {
    return 'Igiciro ($currency)';
  }

  @override
  String get alertMovePercent => 'Ihinduka ry\'umusi (%)';

  @override
  String get alertAlreadyMet => 'Igiciro camaze kurenga uru rwego.';

  @override
  String get alertSave => 'Shiraho imenyesha';

  @override
  String alertCreated(String symbol) {
    return 'Imenyesha rya $symbol ryashizweho.';
  }

  @override
  String get alertsEmpty =>
      'Nta menyesha ry\'igiciro rirahari. Ugurura umugabane maze ufyonde inzogera kugira urishireho.';

  @override
  String get alertsNote =>
      'Imenyesha risuzumwa buri minota 5 igihe WhatStock iriko irakora. Kuri orudinateri iguma ikora mu murongo wa menu canke mu gice c\'imenyesha; kuri terefone, ubu imenyesha riza gusa iyo porogarama yuguruye.';

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
    return 'Ihinduka ry\'umusi ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Ryavuze $date kuri $price';
  }

  @override
  String get alertRearm => 'Subira urikoreshe';

  @override
  String get alertDelete => 'Futa';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol yaduze hejuru ya $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol yamanutse munsi ya $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol yahindutse $percent uno musi';
  }

  @override
  String alertHitBody(String price) {
    return 'Igiciro c\'ubu: $price';
  }

  @override
  String get alertOpen => 'Ugurura';

  @override
  String get keepInTrayTitle => 'Bandanya gukora idirisha ryugaye';

  @override
  String get keepInTraySubtitle =>
      'WhatStock iguma mu murongo wa menu canke mu gice c\'imenyesha, gutyo inzira ngufi n\'imenyesha ry\'ibiciro bigabandanya gukora.';

  @override
  String get termsOfUse => 'Amategeko y\'ikoreshwa';

  @override
  String get privacyPolicy => 'Politike y\'ibanga';

  @override
  String get subscriptionLegal =>
      'Iyandikisha rivugururwa ubwaryo buri kwezi gushika uhagaritse. Mu kwiyandikisha wemera Amategeko y\'ikoreshwa na Politike y\'ibanga.';

  @override
  String get deleteAccount => 'Futa konti';

  @override
  String get deleteAccountTitle => 'Urashaka gufuta konti yawe?';

  @override
  String get deleteAccountBody =>
      'Konti yawe n\'ibintu vyose bibitswe kuri seriveri yacu (imeyili, ingano uhabwa, ikoreshwa) bizofutwa burundu, kandi amasesangura utakoresheje azotakara. Iyandikisha ryarihiwe muri navigateri rica rihagarikwa; iyandikisha rya App Store canke Google Play ritegerezwa guhagarikwa mu vyo gutunganya vy\'iduka.';

  @override
  String get deleteLocalData =>
      'Futa n\'amakuru ari kuri iki gikoresho (ishoramari, imenyesha, ivyo ukunda, akahise, amasesangura wabitse)';

  @override
  String get deleteAccountConfirm => 'Futa burundu';

  @override
  String get accountDeleted => 'Konti yawe yafuswe.';

  @override
  String get errDeleteAccount =>
      'Konti ntiyashoboye gufutwa. Raba interineti yawe usubire ugerageze.';

  @override
  String get aiTrialBriefNote =>
      'Amasesangura y\'igeragezwa ni magufi kandi akorwa na AI yihuta kurushiriza. Ufise ipaki, uronka AI yacu ishoboye kuruta izindi, ukurondera kwinshi kuri interineti n\'uburebure Risanzwe na Ryimbitse.';

  @override
  String get billingMonthly => 'Ku kwezi';

  @override
  String get billingYearly => 'Ku mwaka';

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
      'Iyandikisha ry\'umwaka rivugururwa ubwaryo buri mwaka gushika uhagaritse. Mu kwiyandikisha wemera Amategeko y\'ikoreshwa na Politike y\'ibanga.';

  @override
  String get myAnalyses => 'Amasesangura yanje';

  @override
  String get navAlerts => 'Imenyesha';

  @override
  String get inviteTitle => 'Igerageza ry\'imbere ryihariye';

  @override
  String get inviteBody =>
      'Ubu WhatStock iraboneka gusa ku butumire. Andika kode y\'ubutumire waronse.';

  @override
  String get inviteCodeLabel => 'Kode y\'ubutumire';

  @override
  String get inviteContinue => 'Bandanya';

  @override
  String get inviteInvalid => 'Iyi kode y\'ubutumire si yo.';

  @override
  String get inviteExpired =>
      'Ubu butumire bwarengeje igihe. Saba uwagutumiye kode nshasha.';

  @override
  String get inviteDeviceLimit =>
      'Iyi kode y\'ubutumire isanzwe ikoreshwa ku gitigiri ntarengwa c\'ibikoresho.';

  @override
  String get previewConfidential => 'Igerageza ry\'ibanga';

  @override
  String get errPreviewDailyLimit =>
      'Urugero rw\'isesengura rw\'uyu munsi kuri iri gerageza rwashitse. Subira ugerageze ejo.';

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
      other: 'hashize imisi $count',
      one: 'hashize umusi 1',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Urashaka kuvugurura iri sesangura?';

  @override
  String staleBody(String age) {
    return 'Ryakozwe $age. Kuva ico gihe, ibiciro, amakuru n\'ivyavuyemwo vyoshobora kuba vyarahindutse.';
  }

  @override
  String get staleKeep => 'Erekana irya mbere';

  @override
  String get staleRefresh => 'Kora irishasha';

  @override
  String seeAll(int count) {
    return 'Raba vyose ($count)';
  }

  @override
  String get searchAnalyses => 'Rondera mu masesangura yawe';

  @override
  String get deleteAnalysis => 'Futa';

  @override
  String analysisDeleted(String symbol) {
    return 'Isesangura rya $symbol ryafuswe';
  }

  @override
  String get keyLevelAlertHint =>
      'Fyonda ku gipimo kugira uronke imenyesha igiciro kigeze kuri co.';

  @override
  String get shareAnalysisTitle => 'Sangiza isesangura';

  @override
  String get shareAsImage => 'Sangiza nk\'ishusho';

  @override
  String get shareAsText => 'Sangiza nk\'inyandiko';

  @override
  String get shareCardFooter => 'Vyakozwe na WhatStock';

  @override
  String get shareCardDisclaimer =>
      'Isesangura rya AI · si inama yo gushora imari';

  @override
  String get referralTitle => 'Tumira abagenzi';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'amasesangura $count y\'inyongera',
      one: 'isesangura 1 ry\'inyongera',
    );
    return 'Sangiza kode yawe. Umugenzi wawe aca aronka $_temp0, nawe ukaronka ivyo nyene inyuma y\'isesangura ryiwe rya mbere.';
  }

  @override
  String get referralYourCode => 'Kode yawe';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Abatumiwe: $invited · Abahawe impano: $rewarded';
  }

  @override
  String get referralHaveCode => 'Ufise kode y\'umugenzi?';

  @override
  String get referralRedeem => 'Koresha';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Wongerewe amasesangura $count y\'inyongera. Kaze!',
      one: 'Wongerewe isesangura 1 ry\'inyongera. Kaze!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Iyi kode ntibaho. Yisuzume hanyuma wongere ugerageze.';

  @override
  String get referralErrOwn => 'Ntushobora gukoresha kode yawe bwite.';

  @override
  String get referralErrAlready => 'Wamaze gukoresha kode y\'umugenzi.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'amasesangura $count y\'inyongera',
      one: 'isesangura 1 ry\'inyongera',
    );
    return 'Nsesangura imigabane nkoresheje WhatStock: fotora umugabane, AI ikawusigura. Ukoresheje kode yanje $code uronka $_temp0.';
  }

  @override
  String get referralCopied => 'Kode yakopowe';

  @override
  String get onboardTitle1 => 'Fata ifoto y\'umugabane';

  @override
  String get onboardBody1 =>
      'Ikirahure c\'apulikasiyo y\'umuhuza, ikinyamakuru canke ikimenyetso c\'isosiyete birahagije: WhatStock imenya umugabane ikakwereka igiciro cawo, igishushanyo n\'imibare nyamukuru.';

  @override
  String get onboardTitle2 => 'Bitahure mu minota mike';

  @override
  String get onboardBody2 =>
      'Isesangura rya AI risigura ikiyobora umugabane, ingorane, agaciro kawo n\'ivyiyumviro bitatu vy\'aho igiciro gishobora kuja – hamwe n\'aho vyavuye no mu rurimi rwawe.';

  @override
  String get onboardTitle3 => 'Guma umenya ibiriko biraba';

  @override
  String get onboardBody3 =>
      'Ivyo ukunda, ishoramari ryawe n\'imenyesha ry\'ibiciro bikumenyesha ibiriko biraba. Isesangura ryawe riguma ku gikoresho cawe, ryiteguye kwongera kwugururwa.';

  @override
  String get onboardNext => 'Ibikurikira';

  @override
  String get onboardStart => 'Tangura';

  @override
  String get onboardSkip => 'Simba';

  @override
  String changesTitle(String date) {
    return 'Kuva ku isesangura ryabanje ($date)';
  }

  @override
  String get changesPrice => 'Igiciro';

  @override
  String get changesNoMajor => 'Ivyitezwe ntivyahindutse cane.';

  @override
  String get changesPreviousSummary => 'Incamake ya mbere';

  @override
  String get telemetryTitle => 'Fasha gutunganya neza WhatStock';

  @override
  String get telemetryBody =>
      'Sangiza ibiharuro vy\'ikoreshwa n\'amakuru y\'ivyononekaye atagaragaza uwo uri we: ibikorwa bikoreshwa n\'ibitagenze neza. Nta na rimwe dusangiza imigabane yawe, isesangura ryawe canke amakuru yawe bwite. Ushobora guhindura ibi igihe cose muri Ivyo gutunganya.';

  @override
  String get telemetryAllow => 'Emera';

  @override
  String get telemetryDecline => 'Oya, urakoze';

  @override
  String get telemetrySetting =>
      'Ibiharuro bitagaragaza izina n\'amakuru y\'ivyononekaye';

  @override
  String get telemetrySettingHint =>
      'Incuro ibikorwa bikoreshwa n\'amakuru y\'amakosa, atarimwo amakuru bwite canke ibiri mu marondero n\'isesangura vyawe.';

  @override
  String get askButton => 'Baza ibijanye n\'iri sesangura';

  @override
  String askTitle(String symbol) {
    return 'Ibibazo kuri $symbol';
  }

  @override
  String get askIntro =>
      'Baza ico ushaka cose ku bijanye n\'isesangura: ico ingorane runaka isigura, ivyoshobora guhindura ivyitezwe, ingene igitigiri runaka cabonetse. Inyishu zishingiye kuri iri sesangura, kandi si inama yo gushora imari.';

  @override
  String get askHint => 'Baza ikibazo…';

  @override
  String get askSend => 'Rungika';

  @override
  String get askThinking => 'Ndiko ndiyumvira…';

  @override
  String get askSuggest1 => 'Ingorane nkuru ni iyihe?';

  @override
  String get askSuggest2 => 'Ni igiki coshobora guhindura ivyitezwe?';

  @override
  String get askSuggest3 => 'Bisobanure mu buryo bworoshe';

  @override
  String get askMaxReached =>
      'Ico cari ikibazo ca nyuma kuri iri sesangura. Kora isesangura rishasha kugira ubaze ibindi.';

  @override
  String get errAskLimit =>
      'Washitse ku rugero rw\'ibibazo rw\'uyu munsi. Subira ugerageze ejo.';

  @override
  String get eventTomorrow => 'Tomorrow';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'in $days days',
      one: 'in 1 day',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Quarterly results';

  @override
  String get eventBeforeOpen => 'before the open';

  @override
  String get eventAfterClose => 'after the close';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS estimate: $value';
  }

  @override
  String get eventFromAnalysis => 'From your analysis';

  @override
  String get eventsHint =>
      'Results dates of your favorites and portfolio stocks for the next 90 days, and the dated events your analyses flagged.';

  @override
  String get eventsEmpty =>
      'No dated events in the next 90 days. Add favorites or portfolio stocks to see their results dates here.';
}
