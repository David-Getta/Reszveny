// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kurdish (`ku`).
class AppLocalizationsKu extends AppLocalizations {
  AppLocalizationsKu([String locale = 'ku']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Wêneyê pişkekê bikişîne û her tiştî derbarê wê de hîn bibe.';

  @override
  String get homeHint =>
      'Belgeya pişkê, ekrana sepana brokerê, rojnameyek an logoya şirketekê – her tiştê ku pişkekê dide nasîn.';

  @override
  String get takePhoto => 'Wêne bikişîne';

  @override
  String get chooseFromGallery => 'Ji galeriyê hilbijêre';

  @override
  String get chooseImage => 'Wêneyekî hilbijêre';

  @override
  String get enterTickerManually => 'Sembolê bi destan binivîse';

  @override
  String get tickerInputLabel => 'Sembola pişkê';

  @override
  String get tickerInputHint => 'mînak AAPL';

  @override
  String get lookUp => 'Lê bigere';

  @override
  String demoModeBanner(String symbols) {
    return 'Moda demoyê – mifteya daneyên bazarê nehatiye mîhengkirin. Daneyên mînak ji bo van hene: $symbols.';
  }

  @override
  String get recognizing => 'Wêne tê analîzkirin…';

  @override
  String get loadingData => 'Dane tên barkirin…';

  @override
  String get noCandidatesTitle => 'Tu pişk nehat naskirin';

  @override
  String get noCandidatesBody =>
      'Me nikarî di vî wêneyî de pişkekê nas bikin. Wêneyekî zelaltir biceribîne, an sembolê bi destan binivîse.';

  @override
  String get whatWeSaw => 'Tiştê ku me dît';

  @override
  String get chooseCandidateTitle => 'Mebesta te kîjan pişk bû?';

  @override
  String confidencePercent(int percent) {
    return '$percent% pêbawerî';
  }

  @override
  String get settings => 'Mîheng';

  @override
  String get language => 'Ziman';

  @override
  String get systemLanguage => 'Standarda pergalê';

  @override
  String get about => 'Derbar';

  @override
  String get disclaimer =>
      'Ev sepan tenê agahiyan pêşkêş dike û ne şîreta veberhênanê ye. Dibe ku dane dereng bin an ne rast bin.';

  @override
  String dataSource(String source) {
    return 'Çavkaniya daneyan: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Naskirin: $source';
  }

  @override
  String get retry => 'Dîsa biceribîne';

  @override
  String get cancel => 'Betal bike';

  @override
  String get ok => 'Temam';

  @override
  String get close => 'Bigire';

  @override
  String get errorGeneric => 'Tiştek xelet çû.';

  @override
  String get errorSectionUnavailable => 'Ev beş nehat barkirin.';

  @override
  String get notAvailable => 'tune';

  @override
  String get sectionIdentity => 'Nasname';

  @override
  String get sectionPrice => 'Biha';

  @override
  String get sectionValuation => 'Nirxandin';

  @override
  String get sectionFinancials => 'Daneyên darayî';

  @override
  String get sectionDividend => 'Dîvîdend';

  @override
  String get sectionProfile => 'Profîla şirketê';

  @override
  String get sectionAnalysts => 'Nirxandinên analîstan';

  @override
  String get sectionNews => 'Nûçe';

  @override
  String get sectionRecognition => 'Hûrguliyên naskirinê';

  @override
  String get labelSymbol => 'Sembol';

  @override
  String get labelExchange => 'Borsa';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Dirav';

  @override
  String get labelCountry => 'Welat';

  @override
  String get labelIndustry => 'Pîşesazî';

  @override
  String get labelSector => 'Sektor';

  @override
  String get labelWebsite => 'Malper';

  @override
  String get labelIpoDate => 'Dîroka IPO-yê';

  @override
  String get labelMarketCap => 'Nirxa bazarê';

  @override
  String get labelSharesOutstanding => 'Pişkên belavkirî';

  @override
  String get labelEmployees => 'Karmend';

  @override
  String get labelCeo => 'Rêveberê giştî';

  @override
  String get labelHeadquarters => 'Navenda sereke';

  @override
  String get labelDescription => 'Danasîn';

  @override
  String get labelLastPrice => 'Bihaya dawî';

  @override
  String get labelChange => 'Guherîn';

  @override
  String get labelOpen => 'Vebûn';

  @override
  String get labelDayHigh => 'Bilindtirîna rojê';

  @override
  String get labelDayLow => 'Nizmtirîna rojê';

  @override
  String get labelPreviousClose => 'Girtina berê';

  @override
  String get labelWeek52High => 'Bilindtirîna 52 hefteyan';

  @override
  String get labelWeek52Low => 'Nizmtirîna 52 hefteyan';

  @override
  String get labelAverageVolume10d => 'Qebareya navînî (10 roj)';

  @override
  String updatedAt(String time) {
    return 'Nûkirin: $time';
  }

  @override
  String get labelPeTrailing => 'P/E (borî)';

  @override
  String get labelPeForward => 'P/E (pêşbînî)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / herikîna nexdê ya azad';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Dahat (TTM)';

  @override
  String get labelNetIncomeTtm => 'Qezenca net (TTM)';

  @override
  String get labelGrossMargin => 'Marjîna brût';

  @override
  String get labelOperatingMargin => 'Marjîna xebitandinê';

  @override
  String get labelNetMargin => 'Marjîna net';

  @override
  String get labelRoe => 'Vegera li ser sermayeyê';

  @override
  String get labelRoa => 'Vegera li ser hebûnan';

  @override
  String get labelDebtToEquity => 'Deyn / sermaye';

  @override
  String get labelCurrentRatio => 'Rêjeya heyî';

  @override
  String get labelRevenueGrowth => 'Mezinbûna dahatê (YoY)';

  @override
  String get labelEpsGrowth => 'Mezinbûna EPS-ê (YoY)';

  @override
  String get labelDividendYield => 'Rêjeya dîvîdendê';

  @override
  String get labelDividendPerShare => 'Dîvîdend ji bo her pişkê';

  @override
  String get labelPayoutRatio => 'Rêjeya belavkirinê';

  @override
  String get labelYieldOnCost => 'Rêje li gorî bihayê kirînê';

  @override
  String get labelDividendGrowth5y => 'Mezinbûna dîvîdendê (5 sal)';

  @override
  String get dividendNone => 'Di 12 mehên dawî de tu dîvîdend nehatiye dayîn.';

  @override
  String get dividendOnYourShares => 'Li ser pişkên te, salê';

  @override
  String get labelConsensus => 'Lihevkirin';

  @override
  String get ratingStrongBuy => 'Kirîna xurt';

  @override
  String get ratingBuy => 'Kirîn';

  @override
  String get ratingHold => 'Ragirtin';

  @override
  String get ratingSell => 'Firotin';

  @override
  String get ratingStrongSell => 'Firotina xurt';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analîst',
      one: '1 analîst',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Dem: $period';
  }

  @override
  String get noNews => 'Nûçeyên nû tune ne.';

  @override
  String get openArticle => 'Gotarê veke';

  @override
  String get openLinkFailed => 'Girêdan venebû.';

  @override
  String get recognitionSummary => 'Kurte';

  @override
  String get recognitionEvidence => 'Çima em wisa difikirin';

  @override
  String get recognitionRawText => 'Nivîsa ku ji wêneyê hat xwendin';

  @override
  String get errMissingAnthropicKey =>
      'Naskirina wêneyan nehatiye mîhengkirin (ANTHROPIC_API_KEY tune). Sembolê bi destan binivîse.';

  @override
  String get errRecognitionUnreachable =>
      'Negihîşt xizmeta naskirinê. Girêdana xwe ya înternetê kontrol bike.';

  @override
  String errRecognitionHttp(String status) {
    return 'Xizmeta naskirinê çewtiyek vegerand (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Xizmeta naskirinê nikarî vî wêneyî pêvajo bike.';

  @override
  String get errRecognitionTruncated =>
      'Bersiva naskirinê qut bû. Ji kerema xwe dîsa biceribîne.';

  @override
  String get errRecognitionBadResponse =>
      'Bersiveke neçaverêkirî ji xizmeta naskirinê hat.';

  @override
  String get errRecognitionEmpty =>
      'Xizmeta naskirinê bersiveke vala vegerand.';

  @override
  String get errMissingFinnhubKey =>
      'Daneyên bazarê nehatine mîhengkirin (FINNHUB_API_KEY tune).';

  @override
  String get errMarketUnreachable =>
      'Negihîşt xizmeta daneyên bazarê. Girêdana xwe ya înternetê kontrol bike.';

  @override
  String get errMarketRateLimited =>
      'Gelek daxwaz ji xizmeta daneyên bazarê re hatin şandin. Ji kerema xwe deqeyekê bisekine.';

  @override
  String errMarketHttp(String status) {
    return 'Xizmeta daneyên bazarê çewtiyek vegerand (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Bersiveke neçaverêkirî ji xizmeta daneyên bazarê hat.';

  @override
  String errNoQuote(String symbol) {
    return 'Ji bo $symbol daneyên bihayê nehatin dîtin.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Ji bo $symbol profîla şirketê nehat dîtin.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Moda demoyê tenê $symbols piştgirî dike. Ji bo daneyên zindî FINNHUB_API_KEY lê zêde bike.';
  }

  @override
  String errUnknown(String detail) {
    return 'Tiştek xelet çû: $detail';
  }

  @override
  String get newSearch => 'Lêgerîna nû';

  @override
  String get recentSearches => 'Yên dawî';

  @override
  String get noRecentSearches => 'Hîn lêgerînên dawî tune ne.';

  @override
  String get clearRecent => 'Yên dawî paqij bike';

  @override
  String get greeting => 'Em li kîjan pişkê binêrin?';

  @override
  String get searchHint => 'Sembol an navê şirketê';

  @override
  String get attachImage => 'Wêneyekî pê ve bike';

  @override
  String get searchResultsTitle => 'Encamên lêgerînê';

  @override
  String errNoResults(String query) {
    return 'Ji bo «$query» tu pişk nehat dîtin.';
  }

  @override
  String get quickBarHint => 'Sembol an navê şirketê binivîse…';

  @override
  String get openFullWindow => 'Paceyê veke';

  @override
  String hotkeyHint(String shortcut) {
    return 'Ji bo vexwendina WhatStock li her derê $shortcut bitikîne.';
  }

  @override
  String get trayOpen => 'WhatStock veke';

  @override
  String get trayQuickSearch => 'Lêgerîna bilez';

  @override
  String get trayQuit => 'Derkeve';

  @override
  String get appearance => 'Xuyang';

  @override
  String get themeSystem => 'Pergal';

  @override
  String get themeDark => 'Tarî';

  @override
  String get themeLight => 'Ronî';

  @override
  String get back => 'Vegere';

  @override
  String get aiSectionTitle => 'Analîza AI';

  @override
  String get aiIntro =>
      'Nêrîneke berfireh a ku AI nivîsandiye: kurteya nûçeyên dawî, karsazî, xalên xurt, rîsk û faktorên veşartî, nirxandin, pêşbîniya bihayê bi senaryoyan ji aliyên psîkolojîk, sosyolojîk, teknîkî û makro, û tiştên ku divê werin şopandin.';

  @override
  String get aiGenerate => 'Analîzê çêke';

  @override
  String get aiRegenerate => 'Ji nû ve çêke';

  @override
  String get aiGenerating =>
      'Analîz tê amadekirin… dibe ku deqeyek an du deqe bidome.';

  @override
  String get aiSources => 'Çavkanî';

  @override
  String aiGeneratedAt(String time) {
    return 'Çêkirin: $time';
  }

  @override
  String get aiDisclaimer =>
      'Analîza ku AI li ser bingeha daneyên giştî û nûçeyên dawî çêkiriye. Dibe ku çewtî tê de hebin an kevn bibe, û ne şîreta veberhênanê ye.';

  @override
  String get errAiNotConfigured =>
      'Analîza AI nehatiye mîhengkirin (ANTHROPIC_API_KEY tune).';

  @override
  String get errAiUnreachable =>
      'Negihîşt xizmeta AI. Girêdana xwe ya înternetê kontrol bike.';

  @override
  String errAiHttp(String status) {
    return 'Xizmeta AI çewtiyek vegerand (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Xizmeta AI analîzkirina vê pişkê red kir.';

  @override
  String get errAiBadResponse => 'Bersiveke neçaverêkirî ji xizmeta AI hat.';

  @override
  String get sectionChart => 'Grafîka bihayê';

  @override
  String get rangeOneWeek => '1H';

  @override
  String get rangeOneMonth => '1M';

  @override
  String get rangeThreeMonths => '3M';

  @override
  String get rangeOneYear => '1S';

  @override
  String get rangeFiveYears => '5S';

  @override
  String get chartUnavailable =>
      'Dîroka bihayê ji çavkaniya daneyan a heyî ne berdest e.';

  @override
  String get sectionStatements => 'Raporên darayî (salane)';

  @override
  String get labelFiscalYear => 'Sala darayî';

  @override
  String get labelRevenue => 'Dahat';

  @override
  String get labelNetIncome => 'Qezenca net';

  @override
  String get labelTotalAssets => 'Hebûnên giştî';

  @override
  String get labelTotalLiabilities => 'Deynên giştî';

  @override
  String get labelEquity => 'Sermayeya pişkdaran';

  @override
  String get labelOperatingCashFlow => 'Herikîna nexdê ya xebitandinê';

  @override
  String get statementsUnavailable =>
      'Ji bo vê pişkê raporên darayî yên weşandî ne berdest in.';

  @override
  String get launchAtLogin => 'Di têketinê de bide destpêkirin';

  @override
  String get hotkeyLabel => 'Kurteriya giştî';

  @override
  String get hotkeyRecordHint =>
      'Li vir bitikîne, paşê kombînasyona nû ya bişkokan bitikîne';

  @override
  String get hotkeyReset => 'Vegerîne standardê';

  @override
  String get pasteImage => 'Wêneyî ji panoyê bizeliqîne';

  @override
  String get errClipboardNoImage => 'Li ser panoyê wêne tune ye.';

  @override
  String get favorites => 'Bijare';

  @override
  String get addToFavorites => 'Li bijareyan zêde bike';

  @override
  String get removeFromFavorites => 'Ji bijareyan rake';

  @override
  String get noFavorites =>
      'Hîn bijare tune ne. Ji bo zêdekirinê li stêrka pişkekê bitikîne.';

  @override
  String get displayCurrency => 'Diravê nîşandanê';

  @override
  String get displayCurrencyNone => 'Tenê diravê pişkê bi xwe';

  @override
  String labelConverted(String currency) {
    return '≈ bi $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Rêje: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Rojanekirin';

  @override
  String currentVersion(String version) {
    return 'Guhertoya $version';
  }

  @override
  String get autoUpdate => 'Rojanekirinan bixweber saz bike';

  @override
  String get checkForUpdates => 'Li rojanekirinan bigere';

  @override
  String get updateChecking => 'Li rojanekirinan tê gerîn…';

  @override
  String get updateUpToDate => 'Tu li ser guhertoya herî dawî yî.';

  @override
  String updateAvailable(String version) {
    return 'Guhertoya $version berdest e.';
  }

  @override
  String get updateDownloading => 'Rojanekirin li paşperdeyê tê daxistin…';

  @override
  String get updateDownloaded =>
      'Rojanekirin amade ye. Ji bo sazkirinê ji nû ve bide destpêkirin.';

  @override
  String get updateNow => 'Rojane bike';

  @override
  String get restartNow => 'Ji nû ve bide destpêkirin';

  @override
  String get updatesViaStore =>
      'Rojanekirin bixweber bi riya firotgeha sepanan tên.';

  @override
  String get updateCheckFailed => 'Kontrolkirina rojanekirinan bi ser neket.';

  @override
  String get subscription => 'Abonetî';

  @override
  String get planTrial => 'Ceribandin';

  @override
  String get planNormal => 'Asayî';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Plana çalak tune';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count analîz di mehê de';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Ceribandina belaş a $days rojan bi $count analîzan';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Ji ceribandinê $days roj man',
      one: 'Ji ceribandinê 1 roj ma',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Ceribandina te ya belaş qediya. Ji bo ku analîzê bidomînî planekê hilbijêre.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Di vê heyamê de $remaining ji $total analîzan man';
  }

  @override
  String extraCredits(int count) {
    return '$count analîzên zêde';
  }

  @override
  String renewsOn(String date) {
    return 'Di $date de nû dibe';
  }

  @override
  String get choosePlan => 'Planekê hilbijêre';

  @override
  String get currentPlan => 'Plana heyî';

  @override
  String get subscribe => 'Bibe abone';

  @override
  String get perMonth => '/ meh';

  @override
  String get extraPacksTitle => 'Zêdetir lazim e? Analîzên zêde bikire';

  @override
  String get extraPacksHint =>
      'Analîzên zêde qet bi dawî nabin û piştî mafê te yê mehane tên bikaranîn.';

  @override
  String get buy => 'Bikire';

  @override
  String get restorePurchases => 'Kirînan vegerîne';

  @override
  String get manageSubscription => 'Abonetiyê birêve bibe';

  @override
  String get purchaseSuccess => 'Spas! Kirîna te çalak e.';

  @override
  String get purchasePending => 'Kirîn li bendê ye…';

  @override
  String get purchaseFailed => 'Kirîn nehat temamkirin.';

  @override
  String get purchaseCanceled => 'Kirîn hate betalkirin.';

  @override
  String get billingUnavailable =>
      'Kirîn hîn li ser vê platformê ne berdest e. Li ser telefon an Mac-a xwe bibe abone; plana te li ser hemû amûran dixebite.';

  @override
  String get errQuotaExceeded =>
      'Ji bo vê heyamê analîzên te nemane. Plana xwe bilind bike an analîzên zêde bikire.';

  @override
  String get errTrialExpired =>
      'Ceribandina te ya belaş qediya. Ji bo berdewamiyê planekê hilbijêre.';

  @override
  String get errNoPlan => 'Ji bo analîza AI planeke çalak pêwîst e.';

  @override
  String get viewPlans => 'Planan bibîne';

  @override
  String get usageTitle => 'Bikaranîn';

  @override
  String get demoPurchaseNote =>
      'Fatûreya demoyê: kirîn li ser vê platformê tên simulekirin.';

  @override
  String get mostPopular => 'Herî populer';

  @override
  String get bestValue => 'Nirxa herî baş';

  @override
  String get planFeaturesCommon =>
      'Naskirina wêneyan, daneyên zindî, grafîk, bijare û hemû 120 ziman di her planê de hene. Maf ji bo analîzên AI ye.';

  @override
  String get searchLanguages => 'Li zimanan bigere…';

  @override
  String get noLanguageMatch => 'Tu ziman li hev nayê.';

  @override
  String get aiSettings => 'Analîza AI';

  @override
  String get aiLength => 'Dirêjahî';

  @override
  String get aiDepthBrief => 'Kurt';

  @override
  String get aiDepthStandard => 'Standard';

  @override
  String get aiDepthDeep => 'Kûr';

  @override
  String get aiDepthBriefDesc => 'Tiştên sereke, bi lez.';

  @override
  String get aiDepthStandardDesc => 'Rapora tevahî bi hemû beşan.';

  @override
  String get aiDepthDeepDesc =>
      'Lêgerînên webê yên zêdetir, berhevdana bi hevrikan û hûrguliyên kûrtir.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Nêzîkî $min–$max peyv';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analîz bi kar tîne',
      one: '1 analîz bi kar tîne',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Asta xwîner';

  @override
  String get aiReaderBeginner => 'Destpêker';

  @override
  String get aiReaderExperienced => 'Bi ezmûn';

  @override
  String get aiReaderBeginnerDesc =>
      'Zimanê sade; her têgeha teknîkî tê ravekirin.';

  @override
  String get aiReaderExperiencedDesc =>
      'Nivîsa tîrtir bi termînolojiya darayî ya standard.';

  @override
  String get aiCounterArgument => 'Argumana dijber a herî xurt';

  @override
  String get aiCounterArgumentDesc =>
      'Kurte her tim bi argumana herî xurt a li dijî encama xwe bi dawî dibe.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Bi plana te heta $count lêgerînên webê ji bo her analîzê',
      one: 'Bi plana te heta 1 lêgerîna webê ji bo her analîzê',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Dirêjahiya standard li gorî planê: Asayî $normal, Pro $pro, Max $max, Ultra $ultra. Kurt 2 kêmtir, Kûr 2 zêdetir bi kar tîne.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'heta $count lêgerînên webê',
      one: 'heta 1 lêgerîna webê',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lêgerînên webê ji bo her analîzê',
      one: '1 lêgerîna webê ji bo her analîzê',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Ev dirêjahî $needed analîzan dixwaze, lê tenê $left man. Di Mîhengan de dirêjahiyeke kurttir hilbijêre an analîzên zêdetir bistîne.';
  }

  @override
  String get outlookMarketMood => 'Hesta bazarê';

  @override
  String get moodVeryPessimistic => 'Pir reşbîn';

  @override
  String get moodPessimistic => 'Reşbîn';

  @override
  String get moodNeutral => 'Bêalî';

  @override
  String get moodOptimistic => 'Geşbîn';

  @override
  String get moodVeryOptimistic => 'Pir geşbîn';

  @override
  String get scenarioBull => 'Senaryoya geşbîn';

  @override
  String get scenarioBase => 'Senaryoya bingehîn';

  @override
  String get scenarioBear => 'Senaryoya reşbîn';

  @override
  String outlookCurrentPrice(String price) {
    return 'Bihaya niha: $price';
  }

  @override
  String get outlookKeyLevels => 'Astên sereke';

  @override
  String get keyLevelSupport => 'Piştgirî';

  @override
  String get keyLevelResistance => 'Berxwedan';

  @override
  String get keyLevelAnchor => 'Lenger';

  @override
  String get upcomingEvents => 'Bûyerên pêş';

  @override
  String get outlookChartNote =>
      'Navberên nîşander; îhtîmal tenê texmînên giştî ne, ne pêşbînî.';

  @override
  String get accountTitle => 'Hesab';

  @override
  String get signIn => 'Têkeve';

  @override
  String get signOut => 'Derkeve';

  @override
  String get notSignedIn => 'Tu ne têketî yî';

  @override
  String get accountBenefit =>
      'Têkeve da ku abonetiya te li ser hemû amûrên te bixebite.';

  @override
  String get accountSyncedNote =>
      'Abonetiya te û analîzên te yên mayî li ser her amûrê heman in.';

  @override
  String get signInTitle => 'Têkeve WhatStock';

  @override
  String get emailLabel => 'Navnîşana e-nameyê';

  @override
  String get continueWithEmail => 'Bi e-nameyê berdewam bike';

  @override
  String codeSentTo(String email) {
    return 'Me kodeke 6 reqemî ji $email re şand. Ew 10 deqeyan derbasdar e.';
  }

  @override
  String get codeLabel => 'Koda têketinê';

  @override
  String get resendCode => 'Kodeke nû bişîne';

  @override
  String get useDifferentEmail => 'E-nameyeke din bi kar bîne';

  @override
  String get errInvalidCode => 'Kod xelet e an dema wê derbas bûye.';

  @override
  String get errInvalidEmail =>
      'Ji kerema xwe navnîşaneke e-nameyê ya derbasdar binivîse.';

  @override
  String get errSignInFailed =>
      'Têketin bi ser neket. Girêdana xwe kontrol bike û dîsa biceribîne.';

  @override
  String get checkoutWaiting =>
      'Dayînê di geroka xwe de temam bike. Dema ku biqede, sepan bixweber nû dibe.';

  @override
  String get paymentViaStripe =>
      'Dayîna ewle di gerokê de bi Stripe. Her dem dikarî betal bikî.';

  @override
  String get paymentViaStore =>
      'Bi hesabê te yê App Store an Google Play tê fatûrekirin. Her dem dikarî di mîhengên firotgehê de betal bikî.';

  @override
  String get keySpace => 'Valahî';

  @override
  String get doubleOptionTitle => 'Du caran Option bitikîne';

  @override
  String get doubleOptionSubtitle =>
      'Du caran bi lez tikandina bişkoka Option jî WhatStock vedixwîne.';

  @override
  String get doubleOptionPermission =>
      'Ji bo ku di sepanên din de jî bixebite, di Mîhengên Pergalê → Nepenî û Ewlehî → Şopandina Têketinê de destûrê bide WhatStock, paşê sepanê dîsa veke.';

  @override
  String get openSystemSettings => 'Mîhengên Pergalê veke';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Ji bo vexwendina WhatStock li her derê $shortcut bitikîne an du caran Option bitikîne.';
  }

  @override
  String get scenarioMostLikely => 'Ya herî muhtemel';

  @override
  String get longTermToday => 'Îro';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years sal',
      one: '1 sal',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range di salê de';
  }

  @override
  String longTermLikely(String price) {
    return 'herî muhtemel $price';
  }

  @override
  String get confidenceLow => 'Pêbaweriya kêm';

  @override
  String get confidenceMedium => 'Pêbaweriya navîn';

  @override
  String get confidenceHigh => 'Pêbaweriya bilind';

  @override
  String get longTermNote =>
      'Navberên demdirêj li ser texmînên diyarkirî ne û bi demê re fireh dibin. Dîvîdend di bihayan de nayên hesibandin. Texmînên giştî ne, ne pêşbînî.';

  @override
  String get portfolio => 'Portfolyo';

  @override
  String get portfolioEmpty =>
      'Hîn tiştek li vir tune. Pişkekê veke û li «Li portfolyoyê zêde bike» bitikîne da ku tiştên xwe bişopînî.';

  @override
  String get portfolioLocalNote =>
      'Li ser vê amûrê û, heke tu têketî bî, di hesabê te de tê tomarkirin. Kom bi rêjeyên referansê yên ECB tên guhertin; dibe ku biha dereng bin.';

  @override
  String get addToPortfolio => 'Li portfolyoyê zêde bike';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol zêde bike';
  }

  @override
  String get portfolioQuantity => 'Hejmara pişkan';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Biha ji bo her pişkê ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Dîroka kirînê';

  @override
  String get portfolioAdd => 'Zêde bike';

  @override
  String get portfolioInvalidNumber => 'Hejmareke ji sifirê mezintir binivîse.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol li portfolyoya te hate zêdekirin.';
  }

  @override
  String get portfolioTotalValue => 'Nirxa giştî';

  @override
  String get portfolioToday => 'Îro';

  @override
  String get portfolioGainLoss => 'Qezenc/zirar';

  @override
  String homeDividendsThisYear(String amount) {
    return 'Dividendên îsal: $amount';
  }

  @override
  String get portfolioInvested => 'Veberhênan';

  @override
  String get portfolioAllocation => 'Dabeşkirin';

  @override
  String get portfolioPositions => 'Pozîsyon';

  @override
  String portfolioAvgCost(String price) {
    return 'lêçûna navînî $price';
  }

  @override
  String get portfolioYourPosition => 'Pozîsyona te';

  @override
  String get portfolioPurchases => 'Kirîn';

  @override
  String get portfolioRemove => 'Rake';

  @override
  String get portfolioExcluded =>
      'Pozîsyonên bê biha an bê rêjeya diravan di komê de nayên hesibandin.';

  @override
  String get priceAlerts => 'Hişyariyên bihayê';

  @override
  String get setPriceAlert => 'Hişyariya bihayê saz bike';

  @override
  String alertDialogTitle(String symbol) {
    return 'Hişyariya bihayê · $symbol';
  }

  @override
  String get alertKindAbove => 'Derdikeve ser';

  @override
  String get alertKindBelow => 'Dadikeve bin';

  @override
  String get alertKindMove => 'Di rojekê de pir diguhere';

  @override
  String alertTargetPrice(String currency) {
    return 'Biha ($currency)';
  }

  @override
  String get alertMovePercent => 'Guherîna rojane (%)';

  @override
  String get alertAlreadyMet => 'Biha jixwe ji vê astê derbas bûye.';

  @override
  String get alertSave => 'Hişyarî saz bike';

  @override
  String alertCreated(String symbol) {
    return 'Ji bo $symbol hişyarî hate sazkirin.';
  }

  @override
  String get alertsEmpty =>
      'Hîn hişyariyên bihayê tune ne. Ji bo sazkirinê pişkekê veke û li zengilê bitikîne.';

  @override
  String get alertsNote =>
      'Dema WhatStock dixebite, hişyarî her 5 deqeyan tên kontrolkirin. Li ser komputerê ew di barika menuyê an tepsiyê de dixebite; li ser telefonê, niha hişyarî tenê dema ku sepan vekirî be tên.';

  @override
  String alertDescAbove(String price) {
    return 'Ser $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Bin $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Guherîna rojane ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return '$date li $price çalak bû';
  }

  @override
  String get alertRearm => 'Dîsa çalak bike';

  @override
  String get alertDelete => 'Jê bibe';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol derket ser $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol daket bin $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol îro $percent guherî';
  }

  @override
  String alertHitBody(String price) {
    return 'Bihaya niha: $price';
  }

  @override
  String get alertOpen => 'Veke';

  @override
  String get keepInTrayTitle => 'Dema pace girtî be jî bixebite';

  @override
  String get keepInTraySubtitle =>
      'WhatStock di barika menuyê an tepsiyê de dimîne, da ku kurterî û hişyariyên bihayê bixebitin.';

  @override
  String get termsOfUse => 'Mercên Bikaranînê';

  @override
  String get privacyPolicy => 'Polîtîkaya Nepeniyê';

  @override
  String get subscriptionLegal =>
      'Abonetî her meh bixweber nû dibin heta ku tu betal bikî. Bi abonebûnê tu Mercên Bikaranînê û Polîtîkaya Nepeniyê qebûl dikî.';

  @override
  String get deleteAccount => 'Hesabê jê bibe';

  @override
  String get deleteAccountTitle => 'Hesabê xwe jê dibî?';

  @override
  String get deleteAccountBody =>
      'Hesabê te û her tiştê li ser servera me tomarkirî (e-name, maf, bikaranîn) dê bi temamî were jêbirin, û analîzên ku nehatine bikaranîn winda dibin. Abonetiya ku di gerokê de hatiye dayîn yekser tê betalkirin; abonetiya App Store an Google Play divê di mîhengên firotgehê de were betalkirin.';

  @override
  String get deleteLocalData =>
      'Daneyên li ser vê amûrê jî jê bibe (portfolyo, hişyarî, bijare, dîrok, analîzên tomarkirî)';

  @override
  String get deleteAccountConfirm => 'Bi temamî jê bibe';

  @override
  String get accountDeleted => 'Hesabê te hate jêbirin.';

  @override
  String get errDeleteAccount =>
      'Hesab nehat jêbirin. Girêdana xwe kontrol bike û dîsa biceribîne.';

  @override
  String get aiTrialBriefNote =>
      'Analîzên ceribandinê kurt in û bi modeleke AI ya bileztir têne çêkirin. Bi planekê tu AI-ya me ya herî jêhatî, lêgerînên webê yên zêdetir û dirêjahiyên Standard û Kûr distînî.';

  @override
  String get billingMonthly => 'Mehane';

  @override
  String get billingYearly => 'Salane';

  @override
  String get yearlyDiscount => '2 meh belaş';

  @override
  String get perYear => '/ sal';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price di mehê de';
  }

  @override
  String get subscriptionLegalYearly =>
      'Abonetiyên salane her sal bixweber nû dibin heta ku tu betal bikî. Bi abonebûnê tu Mercên Bikaranînê û Polîtîkaya Nepeniyê qebûl dikî.';

  @override
  String get myAnalyses => 'Analîzên min';

  @override
  String get navAlerts => 'Hişyarî';

  @override
  String get inviteTitle => 'Pêşdîtina girtî';

  @override
  String get inviteBody =>
      'WhatStock niha tenê bi vexwendinê heye. Koda vexwendinê ya ku te wergirtiye binivîse.';

  @override
  String get inviteCodeLabel => 'Koda vexwendinê';

  @override
  String get inviteContinue => 'Bidomîne';

  @override
  String get inviteInvalid => 'Ev koda vexwendinê ne derbasdar e.';

  @override
  String get inviteExpired =>
      'Dema vê vexwendinê derbas bûye. Ji kesê ku tu vexwendî kodeke nû bixwaze.';

  @override
  String get inviteDeviceLimit =>
      'Ev koda vexwendinê jixwe li ser hejmara herî zêde ya amûran tê bikaranîn.';

  @override
  String get previewConfidential => 'Pêşdîtina nepenî';

  @override
  String get errPreviewDailyLimit =>
      'Sînorê analîzan ê îro yê vê pêşdîtinê qediya. Sibê dîsa biceribîne.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'berî $count saetan',
      one: 'berî saetekê',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'berî $count rojan',
      one: 'berî rojekê',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Vê analîzê nû bike?';

  @override
  String staleBody(String age) {
    return 'Ev analîz $age hate çêkirin. Ji wê demê ve dibe ku biha, nûçe û encam guheriribin.';
  }

  @override
  String get staleKeep => 'Ya berê nîşan bide';

  @override
  String get staleRefresh => 'Yeke nû çêke';

  @override
  String seeAll(int count) {
    return 'Hemûyan bibîne ($count)';
  }

  @override
  String get searchAnalyses => 'Di analîzên xwe de bigere';

  @override
  String get deleteAnalysis => 'Jê bibe';

  @override
  String analysisDeleted(String symbol) {
    return 'Analîza $symbol hate jêbirin';
  }

  @override
  String get keyLevelAlertHint =>
      'Li astekê bitikîne da ku dema biha digihêje wê, hişyariyekê bistînî.';

  @override
  String get shareAnalysisTitle => 'Analîzê parve bike';

  @override
  String get shareAsImage => 'Wek wêne parve bike';

  @override
  String get shareAsText => 'Wek nivîs parve bike';

  @override
  String get shareCardFooter => 'Bi WhatStock hatiye çêkirin';

  @override
  String get shareCardDisclaimer => 'Analîza AI · ne şîreta veberhênanê ye';

  @override
  String get referralTitle => 'Hevalan vexwîne';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analîzên zêde',
      one: '1 analîza zêde',
    );
    return 'Koda xwe parve bike. Hevalê te yekser $_temp0 distîne, û tu jî piştî analîza wî ya yekem heman qasî distînî.';
  }

  @override
  String get referralYourCode => 'Koda te';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Vexwendî: $invited · Xelatkirî: $rewarded';
  }

  @override
  String get referralHaveCode => 'Koda hevalekî te heye?';

  @override
  String get referralRedeem => 'Bi kar bîne';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analîzên zêde hatin zêdekirin. Bi xêr hatî!',
      one: '1 analîza zêde hat zêdekirin. Bi xêr hatî!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Ev kod tune ye. Kontrol bike û dîsa biceribîne.';

  @override
  String get referralErrOwn => 'Tu nikarî koda xwe bi kar bînî.';

  @override
  String get referralErrAlready => 'Te berê koda hevalekî bi kar aniye.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analîzên zêde',
      one: '1 analîza zêde',
    );
    return 'Ez bi WhatStockê pişkan analîz dikim: wêneyê pişkê bikişîne û AI wê rave dike. Bi koda min $code tu $_temp0 distînî.';
  }

  @override
  String get referralCopied => 'Kod hat kopîkirin';

  @override
  String get onboardTitle1 => 'Wêneyê pişkekê bikişîne';

  @override
  String get onboardBody1 =>
      'Ekrana sepana brokerê, rojnameyek an logoya şirketekê bes e: WhatStock pişkê nas dike û bihayê wê, grafîka wê û hejmarên wê yên sereke nîşan dide.';

  @override
  String get onboardTitle2 => 'Di çend deqeyan de fêm bike';

  @override
  String get onboardBody2 =>
      'Analîza AI rave dike ka çi pişkê dilivîne, xeterî çi ne, nirxandina wê çawa ye û sê senaryoyan pêşkêş dike ka biha dikare ber bi ku ve biçe, bi çavkaniyan û bi zimanê te.';

  @override
  String get onboardTitle3 => 'Her tim agahdar be';

  @override
  String get onboardBody3 =>
      'Bijare, portfolyoya te û hişyariyên bihayê te agahdar dihêlin. Analîzên te li ser cîhaza te dimînin, amade ne ku dîsa werin vekirin.';

  @override
  String get onboardNext => 'Pêşve';

  @override
  String get onboardStart => 'Dest pê bike';

  @override
  String get onboardSkip => 'Derbas bike';

  @override
  String changesTitle(String date) {
    return 'Ji analîza berê ve ($date)';
  }

  @override
  String get changesPrice => 'Biha';

  @override
  String get changesNoMajor => 'Pêşbînî bi giranî neguheriye.';

  @override
  String get changesPreviousSummary => 'Kurteya berê';

  @override
  String get telemetryTitle => 'Alîkariya pêşxistina WhatStock bike';

  @override
  String get telemetryBody =>
      'Statîstîkên bikaranînê yên anonîm û raporên têkçûnê parve bike: kîjan taybetmendî têne bikaranîn û çi xelet çû. Pişkên te, analîzên te an daneyên te yên kesane qet nayên şandin. Tu dikarî vê her dem di beşa Mîheng de biguherînî.';

  @override
  String get telemetryAllow => 'Destûr bide';

  @override
  String get telemetryDecline => 'Na, spas';

  @override
  String get telemetrySetting => 'Statîstîkên anonîm û raporên têkçûnê';

  @override
  String get telemetrySettingHint =>
      'Taybetmendî çiqas caran têne bikaranîn û raporên çewtiyan, bêyî daneyên kesane an naveroka lêgerîn û analîzên te.';

  @override
  String get askButton => 'Li ser vê analîzê bipirse';

  @override
  String askTitle(String symbol) {
    return 'Pirsên li ser $symbol';
  }

  @override
  String get askIntro =>
      'Li ser analîzê her tiştî bipirse: xetereyek tê çi wateyê, çi dikare pêşbîniyê biguherîne, hejmarek çawa hatiye hesibandin. Bersiv li ser bingeha vê analîzê ne û ne şîreta veberhênanê ne.';

  @override
  String get askHint => 'Pirsekê binivîse…';

  @override
  String get askSend => 'Bişîne';

  @override
  String get askThinking => 'Difikire…';

  @override
  String get askSuggest1 => 'Xetereya herî mezin çi ye?';

  @override
  String get askSuggest2 => 'Çi dikare pêşbîniyê biguherîne?';

  @override
  String get askSuggest3 => 'Bi awayekî hêsan rave bike';

  @override
  String get askMaxReached =>
      'Ev pirsa dawî ya vê analîzê bû. Ji bo pirsên din analîzeke nû çêke.';

  @override
  String get errAskLimit =>
      'Te sînorê pirsan ê îro qedand. Sibê dîsa biceribîne.';

  @override
  String get eventTomorrow => 'Sibê';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'di $days rojan de',
      one: 'di 1 rojê de',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Encamên sêmehî';

  @override
  String get eventBeforeOpen => 'berî vebûna borsayê';

  @override
  String get eventAfterClose => 'piştî girtina borsayê';

  @override
  String eventEpsEstimate(String value) {
    return 'Texmîna EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Ji analîza te';

  @override
  String get eventDividend => 'Dividend tê hêvîkirin';

  @override
  String get eventDividendEstimate =>
      'Ji dayînên te tomarkirî hatiye texmînkirin';

  @override
  String get eventsHint =>
      'Dîrokên encamên bijare û pişkên portfolyoya te ji bo 90 rojên bê, bûyerên bi dîrok ên ku analîzên te nîşan dane, û dividendên ku ji dayînên te tomarkirî tên hêvîkirin.';

  @override
  String get eventsEmpty =>
      'Di 90 rojên bê de bûyerên bi dîrok tune ne. Bijare an pişkên portfolyoyê lê zêde bike da ku dîrokên encamên wan li vir bibînî; dividendên tomarkirî dayîna xwe ya pêşî ya hêvîkirî nîşan didin.';

  @override
  String get compareTitle => 'Berhevdan';

  @override
  String get compareAdd => 'Pişkekê zêde bike';

  @override
  String get compareRemove => 'Rake';

  @override
  String get compareTickerHint => 'Sembol, mînak MSFT';

  @override
  String get compareHint =>
      'Hejmarên sereke li kêleka hev; nirxa herî baş di her rêzê de tê nîşankirin. Mîqdar bi dirava her pişkê bi xwe ne.';

  @override
  String get compareNoAnalysis => 'Hêj analîz tune';

  @override
  String get portfolioDividends => 'Dîvîdenda salane';

  @override
  String portfolioDividendYield(String percent) {
    return 'Rêje: $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Dîvîdenda salane ya tê payîn li ser bingeha dîvîdendên ku di 12 mehên dawî de hatine dayîn e; dayînên pêşerojê ne garantî ne.';

  @override
  String positionDividend(String amount) {
    return 'Dîvîdend: salê $amount';
  }

  @override
  String get chartAvgCost => 'Navîniya te';

  @override
  String get chartAlertLevel => 'Hişyarî';

  @override
  String get marketsToday => 'Bazar îro';

  @override
  String get notesTitle => 'Notên min';

  @override
  String get notesHint =>
      'Te çima kirî, tu li çi dinêrî, çi dê bike ku tu bifiroşî?';

  @override
  String get notesInfo =>
      'Li ser vê amûrê û, heke tu têketî bî, di hesabê te de tê tomarkirin. Analîza AI notên te li ber çavan digire.';

  @override
  String notesSaved(String date) {
    return 'Hat tomarkirin: $date';
  }

  @override
  String get peersTitle => 'Şirketên wekhev';

  @override
  String get portfolioExport => 'Wekî CSV derxe';

  @override
  String get portfolioImport => 'Ji CSV-ê têxe';

  @override
  String get portfolioImportHint =>
      'Di her rêzê de kirînek bixe: sembola pişkê, hejmar, biha, dirav, dîrok (SSSS-MM-RR). Stûn dikarin bi bêhnok, xalbêhnok an tabê werin veqetandin; rêza sernavê ne mecbûrî ye.';

  @override
  String get portfolioImportButton => 'Têxe';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count danûstandin hatin zêdekirin',
      one: '1 danûstandin hat zêdekirin',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count rêz hatin derbaskirin',
      one: '1 rêz hat derbaskirin',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Portfolyo, bijare, hişyariyên bihayê û not li ser hemû amûrên te têne hevdemkirin.';

  @override
  String syncLast(String time) {
    return 'Hevdemkirina dawî: $time';
  }

  @override
  String get syncNow => 'Niha hevdem bike';

  @override
  String get syncFailed =>
      'Hevdemkirin bi ser neket. Ew ê bi xweber dîsa biceribîne.';

  @override
  String get alertEmailTitle => 'E-name dema hişyariyek çêdibe';

  @override
  String get alertEmailOn =>
      'Em her çend deqeyan hişyariyên te kontrol dikin û ji te re e-name dişînin, heta dema ku sepan girtî be jî.';

  @override
  String get alertEmailSignIn =>
      'Di Mîhengan de bi e-nameya xwe têkeve da ku hişyariyan bi e-nameyê bistînî, heta dema ku sepan girtî be jî.';

  @override
  String get portfolioHistory => 'Nirx bi demê re';

  @override
  String get portfolioReviewTitle => 'Analîza portfolyoyê ya AI';

  @override
  String get portfolioReviewIntro =>
      'AI li tevahiya portfolyoya te dinêre: kombûn, girêdana bi sektor û diravan re, xetereyên hevpar ên pişkên te, û parên qezencê. 1 analîz bi kar tîne.';

  @override
  String get portfolioReviewButton => 'Portfolyoya min analîz bike';

  @override
  String get portfolioReviewAgain => 'Ji nû ve analîz bike';

  @override
  String get portfolioReviewWorking => 'Portfolyoya te tê analîzkirin…';

  @override
  String get digestTitle => 'Kurteya heftane bi e-nameyê';

  @override
  String get digestHint =>
      'Her duşem: bijareyên te û portfolyoya te hefteya borî çawa tevgeriyan, û dîrokên encamên wan ên pêşerojê.';

  @override
  String get benchmarkTitle => 'Li gorî S&P 500';

  @override
  String get benchmarkTitleIndex => 'Li gorî îndeksekê';

  @override
  String get benchmarkHintIndex =>
      'Wekî ku her kirîn di heman rojê de li fonekê ku li pey îndeksa hilbijartî diçe hatibe veberhênan. Dabeşên qazancê ne tê de; vegerên berê pêşerojê pêşbînî nakin.';

  @override
  String get benchmarkYours => 'Kirînên te';

  @override
  String benchmarkAhead(String points) {
    return '$points xalên sedî ji îndeksê baştir';
  }

  @override
  String benchmarkBehind(String points) {
    return '$points xalên sedî li pişt îndeksê';
  }

  @override
  String get portfolioSell => 'Bifiroşe';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbol bifiroşe';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Bihayê firotinê ji bo her pişkê ($currency)';
  }

  @override
  String get portfolioSellDate => 'Dîroka firotinê';

  @override
  String get portfolioSellAll => 'Hemû';

  @override
  String portfolioSellTooMany(String quantity) {
    return '$quantity li ba te hene';
  }

  @override
  String get portfolioSold => 'Hate firotin';

  @override
  String get portfolioRealized => 'Bidestxistî';

  @override
  String get portfolioClosed => 'Pozîsyonên girtî';

  @override
  String get portfolioClosedNote => 'Hemû pişk hatin firotin';

  @override
  String get portfolioTransactions => 'Danûstandin';

  @override
  String get portfolioRealizedByYear => 'Qezenca bidestxistî li gorî salan';

  @override
  String get portfolioRealizedHint =>
      'Firotin pêşî bi kirînên te yên herî kevn re têne hevberkirin (FIFO), bi rêjeya danûstandinê ya îro têne guhertin. Ji bo daxuyaniya bacê, rapora brokerê xwe bikar bîne.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Piştî vê analîzê encamên nû yên çaryekî hatin weşandin ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Encamên nû';

  @override
  String get portfolioImportBrokers =>
      'Derxistinên ji Revolut, Trading 212, Interactive Brokers, DEGIRO, Schwab, Fidelity û Robinhood jî tên naskirin, bi firotin û dîvîdendan re (piştî birîna baca ji çavkaniyê); razandin tên derbaskirin.';

  @override
  String get portfolioImportFile => 'Pelekê hilbijêre';

  @override
  String offlineBanner(String time) {
    return 'Girêdan tune – daneyên dawî yên tomarkirî têne nîşandan ($time).';
  }

  @override
  String get glossMarketCap =>
      'Tevahiya şirketê li borsayê çiqas dike: bihayê pişkê × hejmara pişkan.';

  @override
  String get glossSharesOutstanding =>
      'Şirketê çend pişk derxistine. Ger hejmar zêde bibe, her pişk xwediyê perçeyekî piçûktir e; dîsa-kirîna pişkan wê kêm dike.';

  @override
  String get glossPeTrailing =>
      'Biha ÷ qezenca her pişkê ya 12 mehên dawî: tu ji bo çend salên qezenca niha didî. Kêmtir erzantir e, lê şirketên ku bi lez mezin dibin bi gelemperî P/E-ya wan bilind e.';

  @override
  String get glossPeForward =>
      'Wekî P/E, lê bi qezenca ku analîst ji bo 12 mehên bê hêvî dikin. Ger ji P/E-ya borî kêmtir be, tê hêvîkirin ku qezenc zêde bibe.';

  @override
  String get glossPb =>
      'Biha ÷ nirxa defterê (hebûn kêmî deyn) ya her pişkê. Nêzîkî 1 tê wê wateyê ku bazar şirketê bi qasî tiştên wê yên li ser kaxezê dinirxîne.';

  @override
  String get glossPs =>
      'Nirxa bazarê ÷ dahata salane. Ji bo şirketên ku hê qezenca wan kêm e an tune ye bi kêr tê; di heman sektorê de berhev bike.';

  @override
  String get glossEvToFcf =>
      'Nirxa şirketê bi deynan re (EV) ÷ nexda ku piştî veberhênanan di salekê de çêdike. Kêmtir tê wê wateyê ku ji bo bihayê nexdê zêdetir distînî.';

  @override
  String get glossPeg =>
      'P/E ÷ mezinbûna qezencê ya salane ya tê hêvîkirin (%). Nêzîkî 1 pir caran adil tê dîtin; ew P/E-yê li gorî mezinbûnê nîşan dide.';

  @override
  String get glossEps =>
      'Qezenca her pişkê di 12 mehên dawî de. EPS-a ku bi salan bilind dibe yek ji nîşanên herî xurt ên şirketeke saxlem e.';

  @override
  String get glossBeta =>
      'Pişk çiqas bi bazarê re dilive: 1 = wekî bazarê, 1,5 = lebatên nêzîkî 50% mezintir, binê 1 = aramtir.';

  @override
  String get glossRevenueTtm =>
      'Tevahiya firotinên 12 mehên dawî, berî her lêçûnê.';

  @override
  String get glossNetIncomeTtm =>
      'Qezenca ku piştî hemû lêçûn, faîz û bacan di 12 mehên dawî de dimîne.';

  @override
  String get glossGrossMargin =>
      'Para dahatê ya ku piştî lêçûna rasterast a berheman dimîne. Marjîneke bilind pir caran hêza diyarkirina bihayê nîşan dide.';

  @override
  String get glossOperatingMargin =>
      'Para dahatê ya ku piştî birêvebirina karsaziyê (meaş, kirê, marketing) dimîne, berî faîz û bacan.';

  @override
  String get glossNetMargin =>
      'Para dahatê ya ku dibe qezenca dawî. 20% tê wê wateyê ku ji her 100 firotinê 20 qezenc e.';

  @override
  String get glossRoe =>
      'Vegera li ser sermayeyê: qezenca salane ÷ sermayeya xwediyan. Nîşan dide ku rêveberî çiqas baş pereyê pişkdaran bi kar tîne; ji nêzîkî 15% zêdetir xurt e.';

  @override
  String get glossRoa =>
      'Vegera li ser hebûnan: qezenca salane ÷ her tiştê ku şirket xwedî ye. Di heman sektorê de berhev bike.';

  @override
  String get glossDebtToEquity =>
      'Deyn ÷ sermayeya xwediyan. Bilindtir tê wateya pereyê deyn ê zêdetir: rîska zêdetir dema ku faîz bilind dibin an kar hêdî dibe.';

  @override
  String get glossCurrentRatio =>
      'Hebûnên kurtdemî ÷ fatûreyên ku divê di nav salekê de bên dayîn. Ji 1 zêdetir tê wê wateyê ku şirket dikare fatûreyên nêzîk bide.';

  @override
  String get glossRevenueGrowth => 'Dahat li gorî salekê berê çiqas zêde bûye.';

  @override
  String get glossEpsGrowth =>
      'Qezenca her pişkê li gorî salekê berê çiqas zêde bûye.';

  @override
  String get glossDividendYield =>
      'Dîvîdenda salane ÷ bihayê pişkê: dahata nexd a ku tu her sal distînî, wekî rêjeyek ji tiştê ku tu didî.';

  @override
  String get glossDividendPerShare =>
      'Dîvîdenda ku di sala borî de ji bo yek pişkê hatiye dayîn.';

  @override
  String get glossPayoutRatio =>
      'Para qezencê ya ku wekî dîvîdend tê dayîn. Ji 100% zêdetir şirket ji qezenca xwe zêdetir dide, ku kêm caran dom dike.';

  @override
  String get portfolioBeta => 'Betaya portfolyoyê';

  @override
  String get glossPortfolioBeta =>
      'Betaya pişkên te, li gorî nirxa wan hatiye pîvan: bi qasî çend ji sedî pişkên te dilivin dema ku bazar 1% dilive. Ji 1 bilindtir, ew ji bazarê zêdetir dihejin; ji 1 kêmtir, kêmtir. Pereyê nexd nayê hesibandin.';

  @override
  String get portfolioTop3 => '3 pozîsyonên herî mezin';

  @override
  String get glossPortfolioTop3 =>
      'Çiqas ji nirxa pişkên te di sê pozîsyonên te yên herî mezin de ye. Çiqas bilindtir be, nûçeyên xirab ên li ser tenê yek şîrketê ewqas zêdetir dikarin zirarê bidin tevahiya portfolyoyê.';

  @override
  String get glossDividendGrowth5y =>
      'Dîvîdenda her pişkê di pênc salên dawî de bi navînî salê çiqas mezin bûye. Mezinbûna domdar bi gelemperî nîşan dide ku pargîdanî bi herikîna xwe ya pereyan bawer e; kêmkirin pir caran nîşaneyek hişyariyê ye.';

  @override
  String get glossYieldOnCost =>
      'Dividendên ku di 12 mehên dawî de hatine wergirtin, dabeşî ya ku te ji bo pişkên hîn li destê te ne daye. Ne wek rêjeya dîvîdendê, ew li gorî bihayê kirîna te tê pîvandin, ne li gorî bihayê îro.';

  @override
  String get glossTitle => 'Ev tê çi wateyê?';

  @override
  String get watchNewsTitle => 'Nûçeyên pişkên te';

  @override
  String get undo => 'Vegerîne';

  @override
  String get watchSort => 'Rêz bike';

  @override
  String get watchSortOwn => 'Rêza min';

  @override
  String get watchSortGainers => 'Yên herî zêde bilind bûne pêşî';

  @override
  String get watchSortLosers => 'Yên herî zêde daketine pêşî';

  @override
  String get watchSortName => 'Li gorî sembolê (A–Z)';

  @override
  String get watchHint =>
      'Destikê bikişîne da ku rêzê biguherînî, ber bi çepê ve bişemitîne da ku rakî. Xet 30 rojên dawî nîşan dide.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: analîza te amade ye.';
  }

  @override
  String alertFromCost(String price) {
    return 'Li gorî bihayê kirînê yê navînî yê te ($price):';
  }

  @override
  String get briefTitle => 'Îro bi pişkên te re';

  @override
  String get briefButton => 'Îro kurt bike';

  @override
  String get briefHint =>
      'Kurteyek AI ya kurt li ser ka portfolyo û bijareyên te îro çawa tevgeriyan û nûçeyên dawî li ser wan çi dibêjin. Analîzekê bi kar nayîne.';

  @override
  String get briefRefresh => 'Nû bike';

  @override
  String get sectionEarnings => 'Encamên sêmehî';

  @override
  String earningsNext(String date) {
    return 'Rapora bê: $date';
  }

  @override
  String get earningsExpected => 'EPS ya tê payîn';

  @override
  String get earningsReported => 'EPS ya hatî ragihandin';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Di $beats ji $total sêmehên dawî de wekî EPS ya tê payîn an jortir',
      one: 'Di $beats ji 1 sêmehê de wekî EPS ya tê payîn an jortir',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol sibê encamên sêmehî eşkere dike';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol îro encamên sêmehî eşkere dike';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return 'Dividenda $symbol îro tê hêvîkirin';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Nêzî $amount. Dema ku gihîşt, wê di portfolyoya xwe de tomar bike.';
  }

  @override
  String get dividendRemindersTitle => 'Bîranînên dividendê';

  @override
  String get dividendRemindersSubtitle =>
      'Agahdariyek di roja ku li gorî rîtma dayînên te yên tomarkirî dividend tê hêvîkirin, da ku tu wê tomar bikî';

  @override
  String get earningsRemindersTitle => 'Bîranînên encaman';

  @override
  String get earningsRemindersSubtitle =>
      'Agahdariyek rojek berî ku pişkên di bijareyên te an portfolyoya te de encamên sêmehî eşkere bikin';

  @override
  String addAllToFavorites(int count) {
    return 'Hemûyan li bijareyan zêde bike ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Ji wêneya ekranê têxe';

  @override
  String get holdingsReading => 'Pozîsyonên te têne xwendin…';

  @override
  String get holdingsReviewTitle => 'Pozîsyonên hatine dîtin';

  @override
  String get holdingsReviewHint =>
      'Berî ku tu wan zêde bikî, hejmaran kontrol bike. Biha bihayê navînî yê kirîna te ji bo her pişkekê ye, ne bihayê îro.';

  @override
  String get holdingsNoPrice => 'Di wêneyê de bihayê navînî yê kirînê tune';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pozîsyonan zêde bike',
      one: '1 pozîsyonê zêde bike',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Di vê wêneyê de tu pozîsyonên pişkan nehatin dîtin. Wêneya ekranê ya rûpela pozîsyonan an xwedîtiyan a brokerê xwe biceribîne.';

  @override
  String get week52Range => 'Navbera 52 hefteyan';

  @override
  String week52BelowHigh(String percent) {
    return '$percent li jêr bilindtirîna 52 hefteyan';
  }

  @override
  String get week52AtHigh => 'Li bilindtirîna 52 hefteyan';

  @override
  String get alertKindTrailing => 'Ji lûtkeyê dadikeve';

  @override
  String get alertTrailingPercent => 'Daketina ji lûtkeyê (%)';

  @override
  String get alertTrailingHint =>
      'Bihayê ber bi jor ve dişopîne: dema ku biha ji asta xwe ya herî bilind ji dema ku te ew danî ewqas dakeve, hişyar dike.';

  @override
  String alertDescTrailing(String percent) {
    return '$percent daketin ji lûtkeyê';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'lûtke heta niha: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol ji lûtkeyê $percent daket';
  }

  @override
  String get sectionInsiders => 'Danûstandinên însayderan';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kirîn',
      one: '1 kirîn',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count firotin',
      one: '1 firotin',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Safî: $shares pişk';
  }

  @override
  String get insiderBuy => 'Kirî';

  @override
  String get insiderSell => 'Firotî';

  @override
  String get insiderHint =>
      'Kirîn û firotinên rêveber û derhêneran li bazara vekirî di 90 rojên dawî de (SEC Form 4). Bikaranîna opsiyonan û xelatên pişkan nayên hesibandin.';

  @override
  String get insiderNone =>
      'Di 90 rojên dawî de li bazara vekirî tu kirîn an firotina însayderan tune.';

  @override
  String get analystTrend => 'Nêrîn meh bi meh çawa guherîn';

  @override
  String get watchListAll => 'Hemû';

  @override
  String get watchListNew => 'Lîsteya nû';

  @override
  String get watchListName => 'Navê lîsteyê';

  @override
  String get watchListRename => 'Navê lîsteyê biguherîne';

  @override
  String get watchListDelete => 'Lîsteyê jê bibe';

  @override
  String get watchListAddTo => 'Li lîsteyekê zêde bike';

  @override
  String get watchListEmpty =>
      'Hîn di vê lîsteyê de tu pişk tune ne. Ji bo zêdekirinê, li bişkoka lîsteyê ya li kêleka pişkê bitikîne.';

  @override
  String get portfolioAskTitle => 'Pirsên li ser portfolyoya te';

  @override
  String get rangeYtd => 'Îsal';

  @override
  String get backupTitle => 'Paşeke';

  @override
  String get backupSave => 'Paşekeyê tomar bike';

  @override
  String get backupSaveHint =>
      'Bijareyên te, lîsteyên te, portfolyoya te, hişyariyên te û notên te di pelekî de.';

  @override
  String get backupRestore => 'Ji paşekeyê vegerîne';

  @override
  String get backupRestoreHint =>
      'Tiştên di pelê de lê zêde dike; ji tiştên ku niha li ba te ne tiştek nayê jêbirin.';

  @override
  String get backupRestored => 'Paşeke hate vegerandin.';

  @override
  String get backupInvalid => 'Ev pel ne paşekeyeke WhatStock e.';

  @override
  String get allocationPositions => 'Pişk';

  @override
  String get allocationSectors => 'Sektor';

  @override
  String get allocationCurrencies => 'Dirav';

  @override
  String get allocationAccounts => 'Hesab';

  @override
  String get compareReturn1y => 'Vegera 1 salî';

  @override
  String get compareFromHigh => 'Ji bilindtirîna 52 hefteyan';

  @override
  String get briefAutoTitle => 'Kurteya rojane her sibê';

  @override
  String get briefAutoSubtitle =>
      '“Îro bi pişkên te re” piştî saet 7:00an bi xweber tê amadekirin heta ku sepan dixebite; li ser komputeran agahdariyek te agahdar dike. Ji sînorê pirsên te yê rojane tê birîn, ne analîzek.';

  @override
  String get targetsButton => 'Dabeşkirina armanc';

  @override
  String get targetsTitle => 'Dabeşkirina armanc';

  @override
  String get targetsHint =>
      'Diyar bike ku divê her pişk çi qas para portfoliyoyê hebe. Heke armanc tune be, qadê vala bihêle. Paşê sepan nîşan dide ku ji bo gihîştina wê divê tu çi bikirî an bifiroşî.';

  @override
  String targetsSum(String percent) {
    return 'Tevahî: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Bikire ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Bifiroşe ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Li ser armancê';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol ji EPS ya tê payîn derbas bû';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol negihîşt EPS ya tê payîn';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'EPS ya hatî ragihandin $actual, tê payîn $estimate';
  }

  @override
  String get newsExplain => 'Ev tê çi wateyê?';

  @override
  String get watchAlertAll => 'Hişyarî ji bo guherînên mezin ên rojane';

  @override
  String get watchAlertAllHint =>
      'Hişyariya bihayê ji bo her pişkeke vê lîsteyê: dema ku di rojekê de ev qas bilind an nizm bibe, agahdar dike. Pişkên ku berê yek wan heye, ya xwe diparêzin.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hişyarî hatin danîn',
      one: '1 hişyarî hat danîn',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Qezenca bidestxistî derxe (CSV)';

  @override
  String get portfolioAnnualReturn => 'Qezenca salane';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / sal';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Qezenca salane ya li gorî pereyan pîvandî (XIRR): dema ku te kirî û firotî dihesibîne, ji ber vê yekê pereyên ku paşê hatine zêdekirin wê naguherînin. Gava kirîna te ya yekem herî kêm salek kevn be tê nîşandan; dîvîdend tê de nînin.';

  @override
  String get eventsAddToCalendar => 'Li salnameyê zêde bike (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Hişyariya portfolyoyê';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Agahdariyek dema ku tevahiya portfolyoya te di rojekê de ev qas diguhere.';

  @override
  String get portfolioMoveAlertOff => 'Girtî';

  @override
  String portfolioMoveUp(String percent) {
    return 'Portfolyoya te îro $percent bilind bû';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Portfolyoya te îro $percent daket';
  }

  @override
  String get whatIfTitle => 'Ger te veberhênan kiriba?';

  @override
  String get whatIfAmount => 'Mîqdar';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount ya ku $period berê hatibû veberhênan, îro dê bihêja';
  }

  @override
  String get whatIfNote =>
      'Tenê li ser bihayê pişkê ye: dîvîdend, xerc û bac ne tê de ne. Qezencên berê pêşerojê pêşbînî nakin.';

  @override
  String get watchShare => 'Lîsteyê parve bike';

  @override
  String get watchImport => 'Sembolên pişkan zêde bike';

  @override
  String get watchImportHint =>
      'Sembolên pişkan bi bêhnok, valahî an rêzên nû veqetandî bixe – wek mînak lîsteyek ku kesekî bi te re parve kiriye.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pişk hatin zêdekirin',
      one: '1 pişk hat zêdekirin',
      zero: 'Pişkên nû tune ne',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Yên herî mezin pêşî';

  @override
  String get positionsSortGain => 'Qezenca giştî ya herî zêde pêşî';

  @override
  String get positionsSortToday => 'Yên herî baş ên îro pêşî';

  @override
  String get chartMyBuys => 'Kirînên te';

  @override
  String get chartMySells => 'Firotinên te';

  @override
  String get shortcutsTitle => 'Kurteriyên klavyeyê';

  @override
  String usMarketOpen(String time) {
    return 'Bazara DYA vekirî ye · di $time de tê girtin';
  }

  @override
  String usMarketClosed(String time) {
    return 'Bazara DYA girtî ye · di $time de vedibe';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes deq';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours saet $minutes deq';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days roj $hours saet';
  }

  @override
  String get dividendGoalSet => 'Armanca dîvîdendê ya mehane deyne';

  @override
  String get dividendGoalTitle => 'Armanca dîvîdendê ya mehane';

  @override
  String get dividendGoalAmount => 'Dîvîdend di mehê de';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Bi rêjeya îro nêzî $amount di mehê de · $percent · Armanc: $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Bi rêjeya îro nêzî $amount di mehê de · Gihîştî armancê: $goal';
  }

  @override
  String get portfolioAccount => 'Hesab';

  @override
  String get portfolioAccountHint => 'mînak TBSZ 2026 (vebijarkî)';

  @override
  String get portfolioAccountAdd => 'Hesabekî diyar bike';

  @override
  String get portfolioAccountsAll => 'Hemû hesab';

  @override
  String get portfolioAccountNote =>
      'Tenê danûstandin û dividendên vî hesabî. Pereyê nexd, armanc û analîza AI di bin Hemû hesab de têne nîşandan.';

  @override
  String get portfolioNoAccount => 'Bê hesab';

  @override
  String portfolioFee(String currency) {
    return 'Komîsyon ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Komîsyonekê zêde bike';

  @override
  String portfolioFeeRow(String amount) {
    return 'Komîsyon: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'Kurteya salane';

  @override
  String get portfolioProceeds => 'Dahata firotinê';

  @override
  String get portfolioCostBasis => 'Lêçûna kirînê';

  @override
  String get portfolioFeesPaid => 'Komîsyona dayî';

  @override
  String get portfolioAnnualSummaryNote =>
      'Mîqdar bi diravê eslî ne, nehatine veguhertin. Dahata firotinê piştî derxistina komîsyona firotinê ye; lêçûna kirînê komîsyona kirînê dihewîne (FIFO). Ji bo daxuyaniya bacê, bi rêjeya danûstandinê ya ku rayedarê bacê dixwaze veguherîne.';

  @override
  String get portfolioShare => 'Encaman parve bike';

  @override
  String get portfolioShareHeading => 'Portfolyoya min';

  @override
  String get portfolioTopHoldings => 'Pozîsyonên herî mezin';

  @override
  String get portfolioShareNote =>
      'Tenê rêjeyên sedî tên parvekirin, ne mîqdar.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pozîsyon',
      one: '1 pozîsyon',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'Ne şîreta veberhênanê ye';

  @override
  String get contributionButton => 'Pereyên nû veberhêne';

  @override
  String contributionAmount(String currency) {
    return 'Mîqdara veberhênanê ($currency)';
  }

  @override
  String get contributionHint =>
      'Tenê kirîn, bê firotin: pozîsyonên ku herî zêde di bin armanca xwe de ne, pêşî pere distînin.';

  @override
  String contributionShares(String shares) {
    return '≈ $shares pişk';
  }

  @override
  String contributionMissing(String symbols) {
    return 'Ji bo $symbols bihayê niha tune: di dabeşkirinê de nayên hesibandin.';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'Ger qezenca salane wisa bimîne ($rate), tu dê nêzî sala $year bigihîjî armancê.';
  }

  @override
  String get portfolioMaxDrawdown => 'Daketina herî mezin';

  @override
  String get glossMaxDrawdown =>
      'Daketina herî mezin a nirxa pişkên te ji lûtkeyeke berê heta asteke herî nizm a paşê, bêyî bandora kirîn û firotinên te (li gorî demê pîvandî). Nîşan dide ku portfolyoya te heta niha çiqas kûr daketiye.';

  @override
  String watchSince(String date) {
    return 'Ji dema ku te li bijareyan zêde kir ($date)';
  }

  @override
  String get portfolioSampleTry => 'Bi portfolyoyeke mînak biceribîne';

  @override
  String get portfolioSampleBanner =>
      'Ev portfolyoyeke mînak e. Kirînên xwe li kêleka wê zêde bike, an wê rake.';

  @override
  String get portfolioSampleRemove => 'Mînakê rake';

  @override
  String get portfolioStopsAll =>
      'Hişyariya daketina ji lûtkeyê ji bo hemû pozîsyonan';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hişyarî hatin danîn',
      one: '1 hişyarî hat danîn',
      zero: 'Her pozîsyonek jixwe xwedî vê hişyariyê ye',
    );
    return '$_temp0';
  }

  @override
  String portfolioSinceSale(String percent) {
    return '$percent ji dema firotinê ve';
  }

  @override
  String get lotPreviewRealized => 'Bidestxistî ji vê firotinê (FIFO):';

  @override
  String lotPreviewAverage(String after, String before) {
    return 'Lêçûna navînî ya nû: $after (niha $before)';
  }

  @override
  String get portfolioYtdReturn => 'Qezenca îsal';

  @override
  String get glossTwrYtd =>
      'Qezenca li gorî demê pîvandî ji destpêka salê ve (an ji kirîna te ya yekem ve, heke ew îsal bû): her roj guherîna wan pişkan dihesibîne ku te wê rojê hebûn, û roj bi hev ve tên girêdan – pereyê ku tu dixî an derdixî ne qezenc e, ji ber vê yekê dikare bi îndeksekê re were berhevkirin. Li jêr: îndeksa hilbijartî di heman demê de.';

  @override
  String alertDistance(String price, String percent) {
    return 'Niha $price · $percent maye';
  }

  @override
  String get watchSortSince => 'Li gorî guherînê ji dema zêdekirinê';

  @override
  String get portfolioTodayMovers => 'Îro herî zêde guherîn:';

  @override
  String get lotNoteAdd => 'Notekê zêde bike';

  @override
  String get lotNoteBuyHint =>
      'Tu çima dikirî? Bi dîrokê re dikeve notên pişkê.';

  @override
  String get lotNoteSellHint =>
      'Tu çima difiroşî? Bi dîrokê re dikeve notên pişkê.';

  @override
  String get lotNoteBought => 'Hate kirîn';

  @override
  String get positionHeld => 'Dema xwedîkirinê';

  @override
  String durationMonths(int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months meh',
      one: '$months meh',
    );
    return '$_temp0';
  }

  @override
  String durationDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days roj',
      one: '$days roj',
    );
    return '$_temp0';
  }

  @override
  String positionHeldSince(String date) {
    return 'ji $date ve';
  }

  @override
  String lotPreviewWeight(String after, String before) {
    return 'Para di portfoliyoyê de piştre: $after (niha $before)';
  }

  @override
  String lotFromCash(String amount) {
    return 'Ji pereyê nexd bide (niha $amount)';
  }

  @override
  String lotToCash(String amount) {
    return 'Li pereyê nexd zêde bike (niha $amount)';
  }

  @override
  String get onboardTitle4 => 'Portfolyoya xwe bişopîne';

  @override
  String get onboardBody4 =>
      'Eksporta brokerê xwe import bike (Revolut, Trading 212, IBKR, DEGIRO, Schwab…) an danûstandinan bi destan lê zêde bike: qezenca xwe li gorî îndeksekê, dividendên xwe û kurteya salane ji bo daxuyaniya bacê bibîne.';

  @override
  String get lotEdit => 'Biguherîne';

  @override
  String lotEditTitle(String symbol) {
    return 'Danûstandinê biguherîne · $symbol';
  }

  @override
  String get lotSave => 'Tomar bike';

  @override
  String dividendEditTitle(String symbol) {
    return 'Dividendê biguherîne · $symbol';
  }

  @override
  String get activityTitle => 'Hemû danûstandin';

  @override
  String get activitySearchHint => 'Li gorî sembolê parzûn bike';

  @override
  String get activityNoMatch => 'Tu danûstandin bi parzûnê re li hev nayê.';

  @override
  String portfolioImportDuplicates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count berê hatine tomarkirin, nehatin zêdekirin',
      one: '1 berê hatiye tomarkirin, nehat zêdekirin',
    );
    return '$_temp0';
  }

  @override
  String get tickerChange => 'Guhertina sembolê';

  @override
  String tickerChangeTitle(String symbol) {
    return 'Guhertina sembolê · $symbol';
  }

  @override
  String get tickerChangeNew => 'Sembola nû';

  @override
  String get tickerChangeHint =>
      'Dema ku şirketek sembola xwe diguherîne (mînak FB → META): hemû danûstandin, dividend, dabeşkirinên paran, not û hişyarî derbasî sembola nû dibin.';

  @override
  String tickerChanged(String symbol) {
    return 'Hat guhastin bo $symbol';
  }

  @override
  String get referralErrSignIn =>
      'Bi e-nameya xwe têkeve da ku koda hevalekî bi kar bînî.';

  @override
  String get referralErrFull =>
      'Ev kod berê bi qasî herî zêde hatiye bikaranîn.';

  @override
  String portfolioGoalReachedBody(String value) {
    return 'Nirxa portfolyoya te niha $value e.';
  }

  @override
  String get errAiTruncated =>
      'Analîz berî ku biqede qut bû. Ji kerema xwe dîsa biceribîne – ji mafê te nehat kêmkirin.';

  @override
  String get errImageUnsupported =>
      'Ev wêne nayê xwendin. Wê wek JPEG an PNG tomar bike û dîsa biceribîne.';

  @override
  String get errRateLimited =>
      'Di demeke kurt de gelek daxwaz hatin şandin. Ji kerema xwe deqeyekê bisekine û dîsa biceribîne.';

  @override
  String get watchListNameTaken => 'Lîsteyek bi vî navî jixwe heye.';

  @override
  String watchListLimit(int max) {
    return 'Tu dikarî herî zêde $max lîsteyan çêkî.';
  }

  @override
  String get portfolioGoalSet => 'Armanc deyne';

  @override
  String get portfolioGoalTitle => 'Armanca portfolyoyê';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · Armanc: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Gihîştî armancê: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Armancê rake';

  @override
  String get alertEdit => 'Hişyariyê biguherîne';

  @override
  String get positionOpenLots => 'Hîn li ba te (yên herî kevn pêşî)';

  @override
  String get lotRemoved => 'Danûstandin hate jêbirin';

  @override
  String get alertDeleted => 'Hişyarî hate jêbirin';

  @override
  String get alertsClearTriggered => 'Hişyariyên çalakbûyî paqij bike';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hişyarî hatin paqijkirin',
      one: '1 hişyarî hate paqijkirin',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Ekrana sereke';

  @override
  String get allocationCountries => 'Welat';

  @override
  String get newsExplainNoteResearch =>
      'Ravekirina AI: ew rastiyan li ser webê lê dikole, gotarê vedike û dinirxîne ka çavkanî çiqas pêbawer e. Ne şîreta veberhênanê ye. Ji sînorê pirsên te yê rojane tê birîn, ne analîzek.';

  @override
  String get sourceOfficial => 'Fermî';

  @override
  String get sourcePressRelease => 'Daxuyanî';

  @override
  String get sourceMajorNews => 'Medyaya mezin';

  @override
  String get sourceOpinion => 'Nêrîn';

  @override
  String get earningsSummaryButton => 'Di rapora dawî de çi hebû?';

  @override
  String get earningsSummaryNote =>
      'Kurteya AI ya ragihandina encamên şirketê û nûçeyên çapemeniyê yên ku li ser webê dibîne. Ne şîreta veberhênanê ye. Ji sînorê pirsên te yê rojane tê birîn, ne analîzek.';

  @override
  String get compareLastSurprise => 'EPS ya dawî li hember ya tê payîn';

  @override
  String get compareNextReport => 'Rapora bê';

  @override
  String get resolvingDescription =>
      'Tê diyarkirin ka mebesta te kîjan pişk e…';

  @override
  String get instrumentTitle => 'Derbarê vê amûrê';

  @override
  String get instrumentHint =>
      'Ji bo vê sembolê profîla şirketê tune – dibe ku ETF, fond an jî belgeya emanetê be. Ji AI bipirse ev çi ye, çi di nav de heye û çiqas lêçûn dike.';

  @override
  String get instrumentAsk => 'Ev çi ye?';

  @override
  String get instrumentNote =>
      'Ravekirina AI ji rûpela fondê ya derxeran û malperên aborî yên ku li ser webê dibîne. Ne şîreta veberhênanê ye. Ji sînorê pirsên te yê rojane tê birîn, ne analîzek.';

  @override
  String suggestAskAi(String query) {
    return 'Ji AI bipirse: “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Ji bo $symbols bihayê niha tune.';
  }

  @override
  String get eventsRecentResults => 'Encamên nû ragihandî';

  @override
  String get saveToNotes => 'Di notên min de tomar bike';

  @override
  String get savedToNotes => 'Di notên te de hat tomarkirin';

  @override
  String get portfolioDividendsReceived => 'Dividendên wergirtî';

  @override
  String get portfolioDividendsThisYear => 'Îsal';

  @override
  String get portfolioDividendsAllTime => 'Hemû dem';

  @override
  String get portfolioAddDividend => 'Dividend lê zêde bike';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Mîqdara wergirtî ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Dîroka dayînê';

  @override
  String get portfolioDividendsEmpty =>
      'Hîn tu dividend nehatiye tomarkirin. Bi destan lê zêde bike, an eksporta brokerê xwe import bike – rêzên dividendê wê jî tên girtin.';

  @override
  String get portfolioSplit => 'Dabeşkirina paran';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Dabeşkirina paran: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Kirîn û firotinên ku dîroka wan berî dabeşkirinê ye tên sererastkirin: hejmara paran tê carandin û bihayê her parê tê dabeşkirin, loma lêçûn wekî xwe dimîne.';

  @override
  String get portfolioSplitRatio => 'Rêje (nû : kevn)';

  @override
  String get portfolioSplitRatioError =>
      'Rêjeyekê wekî 10:1 binivîse, an jî 1:10 ji bo dabeşkirina berevajî.';

  @override
  String get portfolioSplitDate => 'Dîroka dabeşkirinê';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Dabeşkirina paran $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Dabeşkirina paran hat jêbirin';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dabeşkirinên paran hatin zêdekirin',
      one: '1 dabeşkirina paran hat zêdekirin',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dividend hatin zêdekirin',
      one: '1 dividend hat zêdekirin',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Dividendan eksport bike (CSV)';

  @override
  String get portfolioDividendDeleted => 'Dividend hat jêbirin';

  @override
  String get portfolioDividendsHint =>
      'Mîqdar wek ku gihîştine hesabê te, bi diravê dayînê; giştî bi rêjeya îro tên veguhertin. Ji bo danezana baca xwe, raporta brokerê xwe bi kar bîne.';

  @override
  String get awayTitle => 'Dema tu ne li vir bûyî';

  @override
  String awaySince(String when) {
    return 'Ji $when ve';
  }

  @override
  String get awayQuiet => 'Tiştek zêde neguherî.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hişyarî çalak bûn',
      one: '1 hişyarî çalak bû',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Encam eşkere kirin: $symbols';
  }

  @override
  String get moveWhyButton => 'Çima îro diguhere?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent îro';
  }

  @override
  String get moveWhyNote =>
      'Ravekirina AI ji nûçeyên îro yên li ser webê hatine dîtin; sedema rastîn dibe ku nenas an cuda be. Ne şîreta veberhênanê ye. Kotaya pirsên te ya rojane bi kar tîne, ne analîzekê.';

  @override
  String get sectionTechnical => 'Wêneya teknîkî';

  @override
  String get labelSma50 => 'Navîniya 50 rojan';

  @override
  String get labelSma200 => 'Navîniya 200 rojan';

  @override
  String get labelRsi => 'RSI (14 roj)';

  @override
  String get labelVolatility30 => 'Guherbarî (30 roj)';

  @override
  String techAbove(String percent) {
    return '$percent jor';
  }

  @override
  String techBelow(String percent) {
    return '$percent jêr';
  }

  @override
  String get techOverbought => 'zêde kirî';

  @override
  String get techOversold => 'zêde firotî';

  @override
  String get techNeutral => 'bêalî';

  @override
  String get techGoldenCross =>
      'Navîniya 50 rojan li jor navîniya 200 rojan e – li gorî xwendina klasîk meyla bilindbûnê ye.';

  @override
  String get techDeathCross =>
      'Navîniya 50 rojan li jêr navîniya 200 rojan e – li gorî xwendina klasîk meyla daketinê ye.';

  @override
  String get glossSma50 =>
      'Navîniya bihayê girtinê ya 50 rojên bazirganiyê yên dawî. Bihayê li jor wê bi gelemperî wek hêza demkurt, li jêr wê wek lawazî tê xwendin.';

  @override
  String get glossSma200 =>
      'Navîniya bihayê girtinê ya 200 rojên bazirganiyê yên dawî – xeta meylê ya klasîk a demdirêj. Gelek veberhêner bihayê li jor wê wek meyla bilindbûnê ya demdirêj dibînin.';

  @override
  String get glossRsi =>
      'Nîşaneya hêza têkildar: qezencên dawî bi windahiyên dawî re li ser pîvanekê 0–100 dide ber hev. Li jor 70 pişk bi gelemperî zêde kirî tê gotin (zû bilind bûye), li jêr 30 zêde firotî – lê meyleke bihêz dikare demeke dirêj li wir bimîne.';

  @override
  String get glossVolatility =>
      'Biha roj bi roj çiqas diguhere, li gorî salekê hesibandî: 20% tê wateya ku di saleke asayî de biha di nav bi qasî ±20% de dilive. Guherbariya bilindtir tê wateya livên mezintir ber bi her du aliyan ve.';

  @override
  String get techNote =>
      'Ji bihayên girtinê yên rojane hatiye hesibandin. Nîşanên teknîkî rabirdûyê vedibêjin, ne paşerojê.';

  @override
  String portfolioAbove200(int above, int count) {
    return 'Ji $count pozîsyonan $above li ser navîniya xwe ya 200 rojan in';
  }

  @override
  String get watchSignalsTitle => 'Sînyal';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · zêde firotî';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · zêde kirî';
  }

  @override
  String get signalCrossedAbove => 'ji navîniya 200 rojan ber bi jor derbas bû';

  @override
  String get signalCrossedBelow => 'ji navîniya 200 rojan ber bi jêr derbas bû';

  @override
  String get signalAlertsTitle => 'Agahdariyên sînyalên teknîkî';

  @override
  String get signalAlertsSubtitle =>
      'Rojê carekê, dema ku pişkeke ku tu dişopînî zêde firotî an zêde kirî (RSI) dibe, an jî bihayê wê navîniya 200 rojan derbas dike.';

  @override
  String get signalAlertsNotification => 'Sînyalên teknîkî';

  @override
  String get glossaryPageTitle => 'Ferhengok';

  @override
  String get glossaryPageSubtitle =>
      'Ravekirinên hêsan ên her hejmara ku sepan nîşan dide, ji P/E heta RSI';

  @override
  String get glossarySearchHint => 'Di ferhengokê de bigere';

  @override
  String get portfolioCash => 'Pereyê nexd';

  @override
  String get portfolioCashTitle => 'Bakiyeya nexd';

  @override
  String get portfolioCashHint =>
      'Pereyê ku hîn nehatiye veberhênandin li cem brokerê te, li gorî dirav. Di nirxa giştî û dabeşkirinê de tê hesibandin; di qezencê de na.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Mîqdar ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Bakiyeya nexd diyar bike';

  @override
  String get portfolioDividendsByMonth => 'Li gorî mehan';

  @override
  String get dividendsLegendReceived => 'Wergirtî';

  @override
  String get dividendsLegendExpected => 'Tê payîn';

  @override
  String get portfolioDividendsExpected => 'Ya din a tê hêvîkirin';

  @override
  String get portfolioDividendsExpectedNote =>
      'Li gorî dîrok û mîqdarên dayînên ku te tomar kirine hatiye texmînkirin; şirket dikarin wan biguherînin an jî nedin.';

  @override
  String portfolioDividendAround(String date) {
    return 'li dora $date';
  }
}
