// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Luba-Lulua (`lua`).
class AppLocalizationsLua extends AppLocalizations {
  AppLocalizationsLua([String locale = 'lua']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'Ambula foto wa action ne manya malu ayi onso.';

  @override
  String get homeHint =>
      'Mukanda wa action, écran wa application wa bourse, tshikandakanda anyi logo wa kompanyi – tshintu tshionso tshidi tshileja action.';

  @override
  String get takePhoto => 'Ambula foto';

  @override
  String get chooseFromGallery => 'Sungula mu galerie';

  @override
  String get chooseImage => 'Sungula tshimfuanyi';

  @override
  String get enterTickerManually => 'Funda ticker wewe muine';

  @override
  String get tickerInputLabel => 'Tshimanyinu tshia ticker';

  @override
  String get tickerInputHint => 'tshilejilu: AAPL';

  @override
  String get lookUp => 'Keba';

  @override
  String demoModeBanner(String symbols) {
    return 'Mode démo – kakuena clé wa mamanyisha a tshisalu. Mamanyisha a tshilejilu adiku bua: $symbols.';
  }

  @override
  String get recognizing => 'Tudi tukonkonona tshimfuanyi…';

  @override
  String get loadingData => 'Tudi tupeta mamanyisha…';

  @override
  String get noCandidatesTitle => 'Kakuena action utudi bamanye';

  @override
  String get noCandidatesBody =>
      'Katuena mua kumanya action mu tshimfuanyi etshi. Teta foto udi umueneka bimpe, anyi funda ticker wewe muine.';

  @override
  String get whatWeSaw => 'Tshitudi bamone';

  @override
  String get chooseCandidateTitle => 'Uvua musue action kayi?';

  @override
  String confidencePercent(int percent) {
    return 'Bujadiki $percent%';
  }

  @override
  String get settings => 'Malongolola';

  @override
  String get language => 'Muakulu';

  @override
  String get systemLanguage => 'Muakulu wa système';

  @override
  String get about => 'Malu a application';

  @override
  String get disclaimer =>
      'Application eu udi ufila anu mamanyisha; kena ufila mibelu ya kuteka mfranga. Mamanyisha adi mua kulua bitekete anyi kuikala ne bilema.';

  @override
  String dataSource(String source) {
    return 'Mpokolo wa mamanyisha: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Dimanya tshimfuanyi: $source';
  }

  @override
  String get retry => 'Teta kabidi';

  @override
  String get cancel => 'Lekela';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Buikila';

  @override
  String get errorGeneric => 'Tshilema tshienzeke.';

  @override
  String get errorSectionUnavailable => 'Katuena mua kuleja tshitupa etshi.';

  @override
  String get notAvailable => 'kakuena';

  @override
  String get sectionIdentity => 'Bimanyinu bia action';

  @override
  String get sectionPrice => 'Mushinga';

  @override
  String get sectionValuation => 'Dikonkonona dia mushinga';

  @override
  String get sectionFinancials => 'Malu a mfranga';

  @override
  String get sectionDividend => 'Dividende';

  @override
  String get sectionProfile => 'Mamanyisha a kompanyi';

  @override
  String get sectionAnalysts => 'Meji a bakonkononyi';

  @override
  String get sectionNews => 'Lumu';

  @override
  String get sectionRecognition => 'Mushindu utudi bamanye action';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Bourse';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Mfranga';

  @override
  String get labelCountry => 'Ditunga';

  @override
  String get labelIndustry => 'Industrie';

  @override
  String get labelSector => 'Secteur';

  @override
  String get labelWebsite => 'Site web';

  @override
  String get labelIpoDate => 'Dituku dia IPO';

  @override
  String get labelMarketCap => 'Mushinga wa kompanyi ku bourse';

  @override
  String get labelSharesOutstanding => 'Action ya mu tshisalu';

  @override
  String get labelEmployees => 'Bena mudimu';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Siège';

  @override
  String get labelDescription => 'Diumvuija';

  @override
  String get labelLastPrice => 'Mushinga wa ndekelu';

  @override
  String get labelChange => 'Dishintuluka';

  @override
  String get labelOpen => 'Mushinga wa kumpala';

  @override
  String get labelDayHigh => 'Mushinga wa kuulu wa dituku';

  @override
  String get labelDayLow => 'Mushinga wa kuinshi wa dituku';

  @override
  String get labelPreviousClose => 'Mushinga wa ndekelu wa dituku dipite';

  @override
  String get labelWeek52High => 'Mushinga wa kuulu wa mingu 52';

  @override
  String get labelWeek52Low => 'Mushinga wa kuinshi wa mingu 52';

  @override
  String get labelAverageVolume10d => 'Volume wa pankatshi (matuku 10)';

  @override
  String updatedAt(String time) {
    return 'Mise à jour: $time';
  }

  @override
  String get labelPeTrailing => 'P/E (wa kunyima)';

  @override
  String get labelPeForward => 'P/E (wa kumpala)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / cash flow udi ushala';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Bêta';

  @override
  String get labelRevenueTtm => 'Mfranga idi ibuela (TTM)';

  @override
  String get labelNetIncomeTtm => 'Dipeta dia ndekelu (TTM)';

  @override
  String get labelGrossMargin => 'Marge brute';

  @override
  String get labelOperatingMargin => 'Marge opérationnelle';

  @override
  String get labelNetMargin => 'Marge nette';

  @override
  String get labelRoe => 'Dipeta pa fonds propres (ROE)';

  @override
  String get labelRoa => 'Dipeta pa bintu bia kompanyi (ROA)';

  @override
  String get labelDebtToEquity => 'Mabanza / fonds propres';

  @override
  String get labelCurrentRatio => 'Ratio wa liquidité';

  @override
  String get labelRevenueGrowth => 'Dikola dia mfranga idi ibuela (YoY)';

  @override
  String get labelEpsGrowth => 'Dikola dia EPS (YoY)';

  @override
  String get labelDividendYield => 'Rendement wa dividende';

  @override
  String get labelDividendPerShare => 'Dividende pa action umue';

  @override
  String get labelPayoutRatio => 'Tshitupa tshia dipeta tshiabanyibua';

  @override
  String get labelConsensus => 'Meji a bonso';

  @override
  String get ratingStrongBuy => 'Sumba bikole';

  @override
  String get ratingBuy => 'Sumba';

  @override
  String get ratingHold => 'Lama';

  @override
  String get ratingSell => 'Sumbisha';

  @override
  String get ratingStrongSell => 'Sumbisha bikole';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'bakonkononyi $count',
      one: 'mukonkononyi 1',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Tshikondo: $period';
  }

  @override
  String get noNews => 'Kakuena lumu lupia.';

  @override
  String get openArticle => 'Bulula mukanda';

  @override
  String get openLinkFailed => 'Katuena mua kubulula lien.';

  @override
  String get recognitionSummary => 'Mu mêyi makese';

  @override
  String get recognitionEvidence => 'Bua tshinyi tudi tuela meji nunku';

  @override
  String get recognitionRawText => 'Mêyi atudi babale mu tshimfuanyi';

  @override
  String get errMissingAnthropicKey =>
      'Katuena mua kumanya bimfuanyi (kakuena ANTHROPIC_API_KEY). Funda ticker wewe muine.';

  @override
  String get errRecognitionUnreachable =>
      'Katuena mua kufika ku service wa dimanya bimfuanyi. Tangila connexion webe wa internet.';

  @override
  String errRecognitionHttp(String status) {
    return 'Service wa dimanya bimfuanyi wafila tshilema (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Service wa dimanya bimfuanyi wapangila kuenza mudimu ne tshimfuanyi etshi.';

  @override
  String get errRecognitionTruncated =>
      'Diandamuna dia dimanya bimfuanyi diakosoka. Teta kabidi.';

  @override
  String get errRecognitionBadResponse =>
      'Diandamuna dia kukemesha kudi service wa dimanya bimfuanyi.';

  @override
  String get errRecognitionEmpty =>
      'Service wa dimanya bimfuanyi wafila diandamuna kadiyi ne tshintu.';

  @override
  String get errMissingFinnhubKey =>
      'Katuena mua kupeta mamanyisha a tshisalu (kakuena FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Katuena mua kufika ku service wa mamanyisha a tshisalu. Tangila connexion webe wa internet.';

  @override
  String get errMarketRateLimited =>
      'Malomba a bungi bikole ku service wa mamanyisha a tshisalu. Indila minite umue.';

  @override
  String errMarketHttp(String status) {
    return 'Service wa mamanyisha a tshisalu wafila tshilema (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Diandamuna dia kukemesha kudi service wa mamanyisha a tshisalu.';

  @override
  String errNoQuote(String symbol) {
    return 'Katuena bapete mushinga wa $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Katuena bapete mamanyisha a kompanyi wa $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Mu mode démo mudi anu $symbols. Bueja FINNHUB_API_KEY bua kupeta mamanyisha a mpindieu.';
  }

  @override
  String errUnknown(String detail) {
    return 'Tshilema tshienzeke: $detail';
  }

  @override
  String get newSearch => 'Dikeba dipia';

  @override
  String get recentSearches => 'Biuvua mukebe';

  @override
  String get noRecentSearches => 'Kuena muanji kukeba tshintu.';

  @override
  String get clearRecent => 'Jimija biuvua mukebe';

  @override
  String get greeting => 'Tutangile action kayi?';

  @override
  String get searchHint => 'Ticker anyi dîna dia kompanyi';

  @override
  String get attachImage => 'Bueja tshimfuanyi';

  @override
  String get searchResultsTitle => 'Bitudi bapete';

  @override
  String errNoResults(String query) {
    return 'Katuena bapete action bua « $query ».';
  }

  @override
  String get quickBarHint => 'Funda ticker anyi dîna dia kompanyi…';

  @override
  String get openFullWindow => 'Bulula fenêtre';

  @override
  String hotkeyHint(String shortcut) {
    return 'Finya $shortcut muaba wonso bua kubikila WhatStock.';
  }

  @override
  String get trayOpen => 'Bulula WhatStock';

  @override
  String get trayQuickSearch => 'Dikeba dia lukasa';

  @override
  String get trayQuit => 'Patuka';

  @override
  String get appearance => 'Dimueneka';

  @override
  String get themeSystem => 'Système';

  @override
  String get themeDark => 'Mufitu';

  @override
  String get themeLight => 'Butoke';

  @override
  String get back => 'Pingana';

  @override
  String get aiSectionTitle => 'Dikonkonona dia AI';

  @override
  String get aiIntro =>
      'Diumvuija dia bule difunda kudi AI: lumu lupia mu mêyi makese, mudimu wa kompanyi, bukole, njiwu ne malu masokome, mushinga, mushindu udi mushinga mua kuya ne malu adi mua kuenzeka mu mêso a psychologie, sociologie, technique ne macro-économie, ne malu a kutangila.';

  @override
  String get aiGenerate => 'Enza dikonkonona';

  @override
  String get aiRegenerate => 'Enza kabidi';

  @override
  String get aiGenerating =>
      'Tudi tulongolola dikonkonona… bidi mua kuangata minite umue anyi ibidi.';

  @override
  String get aiSources => 'Mpokolo';

  @override
  String aiGeneratedAt(String time) {
    return 'Dienzibue $time';
  }

  @override
  String get aiDisclaimer =>
      'Dikonkonona edi difunda kudi AI ku mamanyisha a patoke ne lumu lupia. Didi mua kuikala ne bilema anyi kuikala dia kale, ne kadiena mibelu ya kuteka mfranga.';

  @override
  String get errAiNotConfigured =>
      'Katuena mua kuenza dikonkonona dia AI (kakuena ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Katuena mua kufika ku service wa AI. Tangila connexion webe wa internet.';

  @override
  String errAiHttp(String status) {
    return 'Service wa AI wafila tshilema (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Service wa AI wabenga kukonkonona action eu.';

  @override
  String get errAiBadResponse => 'Diandamuna dia kukemesha kudi service wa AI.';

  @override
  String get sectionChart => 'Graphique wa mushinga';

  @override
  String get rangeOneWeek => 'Lumingu 1';

  @override
  String get rangeOneMonth => 'Ngondo 1';

  @override
  String get rangeThreeMonths => 'Ngondo 3';

  @override
  String get rangeOneYear => 'Tshidimu 1';

  @override
  String get rangeFiveYears => 'Bidimu 5';

  @override
  String get chartUnavailable =>
      'Kakuena mishinga ya kale mu mpokolo wa mamanyisha eu.';

  @override
  String get sectionStatements => 'Rapport ya mfranga (tshidimu ne tshidimu)';

  @override
  String get labelFiscalYear => 'Tshidimu tshia mfranga';

  @override
  String get labelRevenue => 'Mfranga idi ibuela';

  @override
  String get labelNetIncome => 'Dipeta dia ndekelu';

  @override
  String get labelTotalAssets => 'Bintu bionso bia kompanyi';

  @override
  String get labelTotalLiabilities => 'Mabanza onso';

  @override
  String get labelEquity => 'Fonds propres';

  @override
  String get labelOperatingCashFlow => 'Cash flow wa mudimu';

  @override
  String get statementsUnavailable =>
      'Kakuena rapport ya mfranga bua action eu.';

  @override
  String get launchAtLogin => 'Bulula pa kubuela';

  @override
  String get hotkeyLabel => 'Raccourci wa clavier';

  @override
  String get hotkeyRecordHint => 'Finya apa, pashishe finya touche ipia';

  @override
  String get hotkeyReset => 'Pingaja bia kumpala';

  @override
  String get pasteImage => 'Teka tshimfuanyi tshia presse-papiers';

  @override
  String get errClipboardNoImage => 'Kakuena tshimfuanyi mu presse-papiers.';

  @override
  String get favorites => 'Biudi musue';

  @override
  String get addToFavorites => 'Bueja mu biudi musue';

  @override
  String get removeFromFavorites => 'Umbusha mu biudi musue';

  @override
  String get noFavorites =>
      'Kakuena tshintu apa. Finya mutoto pa action bua kubueja.';

  @override
  String get displayCurrency => 'Mfranga ya kuleja';

  @override
  String get displayCurrencyNone => 'Anu mfranga ya action';

  @override
  String labelConverted(String currency) {
    return '≈ mu $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Taux: 1 $from = $rate $to (BCE, $date)';
  }

  @override
  String get updates => 'Mise à jour';

  @override
  String currentVersion(String version) {
    return 'Version $version';
  }

  @override
  String get autoUpdate => 'Bueja mise à jour automatiquement';

  @override
  String get checkForUpdates => 'Keba mise à jour';

  @override
  String get updateChecking => 'Tudi tukeba mise à jour…';

  @override
  String get updateUpToDate => 'Udi ne version mupia.';

  @override
  String updateAvailable(String version) {
    return 'Version $version udiku.';
  }

  @override
  String get updateDownloading => 'Tudi tupuekesha mise à jour kunyima…';

  @override
  String get updateDownloaded =>
      'Mise à jour udi mulongolola. Tuadija kabidi bua kujikija.';

  @override
  String get updateNow => 'Mise à jour';

  @override
  String get restartNow => 'Tuadija kabidi';

  @override
  String get updatesViaStore =>
      'Mise à jour idi ilua anu ku store wa application.';

  @override
  String get updateCheckFailed => 'Katuena mua kukeba mise à jour.';

  @override
  String get subscription => 'Abonnement';

  @override
  String get planTrial => 'Diteta';

  @override
  String get planNormal => 'Wa tshianana';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Kakuena forfait';

  @override
  String planAnalysesPerMonth(int count) {
    return 'Makonkonona $count ku ngondo';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Diteta dia patupu dia matuku $days ne makonkonona $count';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Matuku $days a diteta mashadile',
      one: 'Dituku 1 dia diteta dishadile',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Diteta diebe dia patupu diajika. Sungula forfait bua kutungunuka ne kukonkonona.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Makonkonona $remaining mashadile pa $total mu tshikondo etshi';
  }

  @override
  String extraCredits(int count) {
    return 'Makonkonona $count a kubueja';
  }

  @override
  String renewsOn(String date) {
    return 'Udi utuadija kabidi $date';
  }

  @override
  String get choosePlan => 'Sungula forfait';

  @override
  String get currentPlan => 'Forfait webe wa mpindieu';

  @override
  String get subscribe => 'Buela mu abonnement';

  @override
  String get perMonth => '/ ngondo';

  @override
  String get extraPacksTitle =>
      'Udi ne dijinga dia bungi? Sumba makonkonona a kubueja';

  @override
  String get extraPacksHint =>
      'Makonkonona a kubueja katu ajika; atu enza mudimu panyima pa tshitupa tshiebe tshia ngondo.';

  @override
  String get buy => 'Sumba';

  @override
  String get restorePurchases => 'Pingaja biuvua musumbe';

  @override
  String get manageSubscription => 'Lombola abonnement';

  @override
  String get purchaseSuccess =>
      'Twasakidila! Bintu biuvua musumbe bidi bienza mudimu.';

  @override
  String get purchasePending => 'Disumba didi dindila…';

  @override
  String get purchaseFailed => 'Katuena mua kujikija disumba.';

  @override
  String get purchaseCanceled => 'Udi mulekele disumba.';

  @override
  String get billingUnavailable =>
      'Disumba kadiena muanji mu plateforme eu. Buela mu abonnement ku telefone webe anyi ku Mac; forfait webe udi wenza mudimu ku bintu biebe bionso.';

  @override
  String get errQuotaExceeded =>
      'Kakuena makonkonona mashadile mu tshikondo etshi. Bandisha forfait webe anyi sumba makonkonona a kubueja.';

  @override
  String get errTrialExpired =>
      'Diteta diebe dia patupu diajika. Sungula forfait bua kutungunuka.';

  @override
  String get errNoPlan =>
      'Udi ne dijinga dia forfait udi wenza mudimu bua dikonkonona dia AI.';

  @override
  String get viewPlans => 'Tangila forfait';

  @override
  String get usageTitle => 'Dienzela mudimu';

  @override
  String get demoPurchaseNote =>
      'Difuta dia démo: disumba mu plateforme eu ndia manaya.';

  @override
  String get mostPopular => 'Udi bantu basue bikole';

  @override
  String get bestValue => 'Mushinga muimpe bikole';

  @override
  String get planFeaturesCommon =>
      'Dimanya dia foto, mamanyisha a mpindieu, graphique, biudi musue ne miakulu 120 yonso bidi mu forfait yonso. Tshitupa tshia ngondo ntshia makonkonona a AI.';

  @override
  String get searchLanguages => 'Keba muakulu…';

  @override
  String get noLanguageMatch => 'Katuena bapete muakulu.';

  @override
  String get aiSettings => 'Dikonkonona dia AI';

  @override
  String get aiLength => 'Bule';

  @override
  String get aiDepthBrief => 'Muipi';

  @override
  String get aiDepthStandard => 'Wa pankatshi';

  @override
  String get aiDepthDeep => 'Mule';

  @override
  String get aiDepthBriefDesc => 'Malu a mushinga, lukasa.';

  @override
  String get aiDepthStandardDesc => 'Rapport mujima ne bitupa bionso.';

  @override
  String get aiDepthDeepDesc =>
      'Makeba a bungi ku internet, difuanyikija ne kompanyi ya bakuabu ne malu a bungi.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Bu mêyi $min–$max';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'udi uangata makonkonona $count',
      one: 'udi uangata dikonkonona 1',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Niveau wa mubadi';

  @override
  String get aiReaderBeginner => 'Mubangi';

  @override
  String get aiReaderExperienced => 'Mumanyi';

  @override
  String get aiReaderBeginnerDesc =>
      'Muakulu mupepele; dîyi dionso dia technique didi diumvuijibua.';

  @override
  String get aiReaderExperiencedDesc =>
      'Mifundu mikole, ne mêyi a mfranga adi bamanye.';

  @override
  String get aiCounterArgument => 'Bualu bukole bua kubenga';

  @override
  String get aiCounterArgumentDesc =>
      'Misangu yonso, diumvuija dikese ditu dijika ne bualu bukole bua kubenga meji adi diamba.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Too ne misangu $count ya dikeba ku internet bua dikonkonona dimue ne forfait webe',
      one: 'Too ne musangu 1 wa dikeba ku internet bua dikonkonona dimue ne forfait webe',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Pa bule wa pankatshi, bilondeshile forfait: Wa tshianana $normal, Pro $pro, Max $max, Ultra $ultra. « Muipi » udi ukepesha 2, « Mule » udi uvudija 2.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'too ne misangu $count ya dikeba ku internet',
      one: 'too ne musangu 1 wa dikeba ku internet',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Misangu $count ya dikeba ku internet bua dikonkonona dimue',
      one: 'Musangu 1 wa dikeba ku internet bua dikonkonona dimue',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Bule ebu budi bulomba makonkonona $needed, kadi mashadile anu $left. Sungula bule bukese mu Malongolola anyi peta makonkonona makuabu.';
  }

  @override
  String get outlookMarketMood => 'Muoyo wa tshisalu';

  @override
  String get moodVeryPessimistic => 'Ditekemena dikese bikole';

  @override
  String get moodPessimistic => 'Ditekemena dikese';

  @override
  String get moodNeutral => 'Pankatshi';

  @override
  String get moodOptimistic => 'Ditekemena';

  @override
  String get moodVeryOptimistic => 'Ditekemena dikole';

  @override
  String get scenarioBull => 'Scénario wa kubanda';

  @override
  String get scenarioBase => 'Scénario wa pankatshi';

  @override
  String get scenarioBear => 'Scénario wa kupueka';

  @override
  String outlookCurrentPrice(String price) {
    return 'Mushinga wa mpindieu: $price';
  }

  @override
  String get outlookKeyLevels => 'Niveau ya mushinga';

  @override
  String get keyLevelSupport => 'Support';

  @override
  String get keyLevelResistance => 'Résistance';

  @override
  String get keyLevelAnchor => 'Ancrage';

  @override
  String get upcomingEvents => 'Malu adi alua';

  @override
  String get outlookChartNote =>
      'Mikalu ya tshilejilu anu; mishindu ya malu kuenzeka mmeji patupu, ki mbia bulelela to.';

  @override
  String get accountTitle => 'Compte';

  @override
  String get signIn => 'Buela';

  @override
  String get signOut => 'Patuka';

  @override
  String get notSignedIn => 'Kuena mubuele';

  @override
  String get accountBenefit =>
      'Buela bua abonnement webe enze mudimu ku bintu biebe bionso.';

  @override
  String get accountSyncedNote =>
      'Abonnement webe ne makonkonona mashadile bidi bimue ku bintu bionso.';

  @override
  String get signInTitle => 'Buela mu WhatStock';

  @override
  String get emailLabel => 'Adresse e-mail';

  @override
  String get continueWithEmail => 'Tungunuka ne e-mail';

  @override
  String codeSentTo(String email) {
    return 'Tuakutumina code wa nomba 6 ku $email. Udi wenza mudimu minite 10.';
  }

  @override
  String get codeLabel => 'Code wa kubuela';

  @override
  String get resendCode => 'Tuma code mupia';

  @override
  String get useDifferentEmail => 'Enzela e-mail mukuabu mudimu';

  @override
  String get errInvalidCode => 'Code udi ne tshilema anyi dîba diende diapita.';

  @override
  String get errInvalidEmail => 'Funda adresse e-mail muimpe.';

  @override
  String get errSignInFailed =>
      'Kubuela kuapangila. Tangila connexion webe, pashishe teta kabidi.';

  @override
  String get checkoutWaiting =>
      'Jikija difuta mu navigateur webe. Paudi ujikija, application udi udivuija mupia nkayende.';

  @override
  String get paymentViaStripe =>
      'Difuta dilama bimpe mu navigateur webe ku Stripe. Udi mua kulekela dîba dionso.';

  @override
  String get paymentViaStore =>
      'Udi ufuta ku compte webe wa App Store anyi Google Play. Udi mua kulekela dîba dionso mu malongolola a store.';

  @override
  String get keySpace => 'Espace';

  @override
  String get doubleOptionTitle => 'Finya Option misangu ibidi';

  @override
  String get doubleOptionSubtitle =>
      'Kufinya touche Option misangu ibidi lukasa kudi kubikila kabidi WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Bua bienze mudimu kabidi mu application ikuabu, anyisha WhatStock mu Réglages Système → Confidentialité et sécurité → Surveillance de l’entrée, pashishe bulula application kabidi.';

  @override
  String get openSystemSettings => 'Bulula Réglages Système';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Finya $shortcut anyi finya Option misangu ibidi muaba wonso bua kubikila WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Tshidi mua kuenzeka bikole';

  @override
  String get longTermToday => 'Lelu';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: 'bidimu $years',
      one: 'tshidimu 1',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range ku tshidimu';
  }

  @override
  String longTermLikely(String price) {
    return 'bidi mua kuikala $price';
  }

  @override
  String get confidenceLow => 'Bujadiki bukese';

  @override
  String get confidenceMedium => 'Bujadiki bua pankatshi';

  @override
  String get confidenceHigh => 'Bujadiki bukole';

  @override
  String get longTermNote =>
      'Mikalu ya tshikondo tshile idi ilonda meji mafunda, ne idi ivula padi dîba dipita. Dividende kena mu mishinga eyi. Mbimanyinu bia meji patupu, ki mbia bulelela to.';

  @override
  String get portfolio => 'Portefeuille';

  @override
  String get portfolioEmpty =>
      'Kakuena tshintu apa. Bulula action, finya « Bueja mu portefeuille » bua kulonda action yebe.';

  @override
  String get portfolioLocalNote =>
      'Bilama anu mu tshintu etshi. Mishinga yonso idi ishintuluibua ku taux wa BCE; mishinga idi mua kulua bitekete.';

  @override
  String get addToPortfolio => 'Bueja mu portefeuille';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Bueja $symbol';
  }

  @override
  String get portfolioQuantity => 'Bungi bua action';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Mushinga wa action umue ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Dituku dia kusumba';

  @override
  String get portfolioAdd => 'Bueja';

  @override
  String get portfolioInvalidNumber => 'Funda nomba mupite zéro.';

  @override
  String portfolioAdded(String symbol) {
    return 'Tuabueja $symbol mu portefeuille webe.';
  }

  @override
  String get portfolioTotalValue => 'Mushinga wonso';

  @override
  String get portfolioToday => 'Lelu';

  @override
  String get portfolioGainLoss => 'Dipeta/Dijimija';

  @override
  String get portfolioInvested => 'Mfranga uvua muteke';

  @override
  String get portfolioAllocation => 'Diabanya';

  @override
  String get portfolioPositions => 'Position';

  @override
  String portfolioAvgCost(String price) {
    return 'mushinga wa pankatshi $price';
  }

  @override
  String get portfolioYourPosition => 'Position webe';

  @override
  String get portfolioPurchases => 'Biuvua musumbe';

  @override
  String get portfolioRemove => 'Umbusha';

  @override
  String get portfolioExcluded =>
      'Katuena tubala position kayiyi ne mushinga anyi taux wa mfranga mu mishinga yonso.';

  @override
  String get priceAlerts => 'Alerte ya mushinga';

  @override
  String get setPriceAlert => 'Teka alerte wa mushinga';

  @override
  String alertDialogTitle(String symbol) {
    return 'Alerte wa mushinga · $symbol';
  }

  @override
  String get alertKindAbove => 'Udi ubanda kupita';

  @override
  String get alertKindBelow => 'Udi upueka muinshi mua';

  @override
  String get alertKindMove => 'Udi ushintuluka bikole mu dituku dimue';

  @override
  String alertTargetPrice(String currency) {
    return 'Mushinga ($currency)';
  }

  @override
  String get alertMovePercent => 'Dishintuluka dia dituku (%)';

  @override
  String get alertAlreadyMet => 'Mushinga udi mumane kupita niveau eu.';

  @override
  String get alertSave => 'Teka alerte';

  @override
  String alertCreated(String symbol) {
    return 'Alerte wa $symbol mutekibue.';
  }

  @override
  String get alertsEmpty =>
      'Kakuena alerte apa. Bulula action, finya cloche bua kuteka umue.';

  @override
  String get alertsNote =>
      'Alerte idi itangidibua minite 5 yonso padi WhatStock wenza mudimu. Ku ordinateur, udi utungunuka mu barre wa menu anyi mu tray; ku telefone, mpindieu alerte idi ilua anu padi application mubulula.';

  @override
  String alertDescAbove(String price) {
    return 'Kupita $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Muinshi mua $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Dishintuluka dia dituku ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Wakubikila $date ku $price';
  }

  @override
  String get alertRearm => 'Teka kabidi';

  @override
  String get alertDelete => 'Jimija';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol mubande kupita $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol mupueke muinshi mua $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol mushintuluke $percent lelu';
  }

  @override
  String alertHitBody(String price) {
    return 'Mushinga wa mpindieu: $price';
  }

  @override
  String get alertOpen => 'Bulula';

  @override
  String get keepInTrayTitle => 'Tungunuka ne mudimu padi fenêtre mubuikila';

  @override
  String get keepInTraySubtitle =>
      'WhatStock udi ushala mu barre wa menu anyi mu tray, nunku raccourci ne alerte ya mushinga bidi bitungunuka ne mudimu.';

  @override
  String get termsOfUse => 'Mikenji ya dienzela mudimu';

  @override
  String get privacyPolicy => 'Mikenji ya dilama dia mamanyisha ebe';

  @override
  String get subscriptionLegal =>
      'Abonnement udi utuadija kabidi nkayende ngondo yonso too ne paudi ulekela. Paudi ubuela mu abonnement, udi witaba Mikenji ya dienzela mudimu ne Mikenji ya dilama dia mamanyisha ebe.';

  @override
  String get deleteAccount => 'Jimija compte';

  @override
  String get deleteAccountTitle => 'Udi musue kujimija compte webe?';

  @override
  String get deleteAccountBody =>
      'Tudi tujimija tshiendelele compte webe ne bintu bionso bilama mu serveur wetu (e-mail, tshitupa tshia ngondo, dienzela mudimu), ne makonkonona onso ashadile adi ajimina. Abonnement uvua mufute mu navigateur udi ujika diakamue; abonnement wa App Store anyi Google Play udi ne bua kulekeledibua mu malongolola a store.';

  @override
  String get deleteLocalData =>
      'Jimija kabidi mamanyisha a mu tshintu etshi (portefeuille, alerte, biudi musue, biuvua mukebe, makonkonona malama)';

  @override
  String get deleteAccountConfirm => 'Jimija tshiendelele';

  @override
  String get accountDeleted => 'Tuajimija compte webe.';

  @override
  String get errDeleteAccount =>
      'Katuena mua kujimija compte. Tangila connexion webe, pashishe teta kabidi.';

  @override
  String get aiTrialBriefNote =>
      'Makonkonona a diteta adi mîpi ne adi enzeka ne modele wa AI wa lukasa. Ne forfait, udi upeta AI wetu mupite bukole, makeba a bungi ku internet, ne bule bua Wa pankatshi ne Mule.';

  @override
  String get billingMonthly => 'Ku ngondo';

  @override
  String get billingYearly => 'Ku tshidimu';

  @override
  String get yearlyDiscount => 'Ngondo 2 patupu';

  @override
  String get perYear => '/ tshidimu';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price ku ngondo';
  }

  @override
  String get subscriptionLegalYearly =>
      'Abonnement wa tshidimu udi utuadija kabidi nkayende tshidimu tshionso too ne paudi ulekela. Paudi ubuela mu abonnement, udi witaba Mikenji ya dienzela mudimu ne Mikenji ya dilama dia mamanyisha ebe.';

  @override
  String get myAnalyses => 'Makonkonona anyi';

  @override
  String get navAlerts => 'Alerte';

  @override
  String get inviteTitle => 'Ditangila dia kumpala dia musokoko';

  @override
  String get inviteBody =>
      'Mpindieu, WhatStock udi anu bua bantu badi babikidibue. Funda code wa dibikila uvua mupete.';

  @override
  String get inviteCodeLabel => 'Code wa dibikila';

  @override
  String get inviteContinue => 'Tungunuka';

  @override
  String get inviteInvalid => 'Code wa dibikila eu udi ne tshilema.';

  @override
  String get inviteExpired =>
      'Dîba dia dibikila edi diapita. Lomba code mupiamupia kudi muntu uvua mukubikile.';

  @override
  String get inviteDeviceLimit =>
      'Code wa dibikila eu udi mutumika kale ku bungi bua bintu bia bungi menemene bidi bianyishibue.';

  @override
  String get previewConfidential => 'Ditangila dia musokoko';

  @override
  String get errPreviewDailyLimit =>
      'Mukalu wa makonkonona a lelu mu ditangila edi diajika. Teta kabidi makelela.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'mêba $count mapite',
      one: 'dîba 1 dipite',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'matuku $count mapite',
      one: 'dituku 1 dipite',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Kuenza dikonkonona edi dipiadipia?';

  @override
  String staleBody(String age) {
    return 'Dikonkonona edi diakenzibua $age. Kubangila ku tshikondo atshi, mishinga, ngumu ne bipeta bidi mua kuikala bishintuluke.';
  }

  @override
  String get staleKeep => 'Leja dia kumpala';

  @override
  String get staleRefresh => 'Enza dipiadipia';

  @override
  String seeAll(int count) {
    return 'Mona yonso ($count)';
  }

  @override
  String get searchAnalyses => 'Keba mu makonkonona ebe';

  @override
  String get deleteAnalysis => 'Jimija';

  @override
  String analysisDeleted(String symbol) {
    return 'Dikonkonona dia $symbol diajimijibua';
  }

  @override
  String get keyLevelAlertHint =>
      'Finya niveau bua kupeta alerte padi mushinga ufika kuine.';

  @override
  String get shareAnalysisTitle => 'Abanya dikonkonona';

  @override
  String get shareAsImage => 'Abanya bu tshimfuanyi';

  @override
  String get shareAsText => 'Abanya bu mifundu';

  @override
  String get shareCardFooter => 'Bienze ne WhatStock';

  @override
  String get shareCardDisclaimer =>
      'Dikonkonona dia AI · kadiena mibelu ya kuteka mfranga';

  @override
  String get referralTitle => 'Bikila balunda';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'makonkonona $count a kubueja',
      one: 'dikonkonona 1 dia kubueja',
    );
    return 'Abanya code webe. Mulunda webe neapete $_temp0 diakamue, ne wewe neupete bia muomumue panyima pa dikonkonona diende dia kumpala.';
  }

  @override
  String get referralYourCode => 'Code webe';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Bawakabikila: $invited · Bakapeta difutu: $rewarded';
  }

  @override
  String get referralHaveCode => 'Udi ne code wa mulunda?';

  @override
  String get referralRedeem => 'Enza nadi';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Makonkonona $count a kubueja mabuejibua. Moyo webe!',
      one: 'Dikonkonona 1 dia kubueja diabuejibua. Moyo webe!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown => 'Code eu kena. Mukonkonone, utete kabidi.';

  @override
  String get referralErrOwn => 'Kuena mua kuenza nadi code webe nkayebe.';

  @override
  String get referralErrAlready => 'Wakamba kuenza nadi code wa mulunda.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'makonkonona $count a kubueja',
      one: 'dikonkonona 1 dia kubueja',
    );
    return 'Ndi ngonkonona ba-action ne WhatStock: wangata foto wa action, AI udi umumvuija. Ne code wanyi $code neupete $_temp0.';
  }

  @override
  String get referralCopied => 'Code mmukopiibue';

  @override
  String get onboardTitle1 => 'Ambula foto wa action';

  @override
  String get onboardBody1 =>
      'Ekrâ wa application wa broker, tshikandakanda anyi logo wa kompanyi bidi bikumbane: WhatStock udi umanya action eu ne ukuleja mushinga wayi, grafiki ne bimfuanyi bia mushinga.';

  @override
  String get onboardTitle2 => 'Umvua bimpe mu minite mikese';

  @override
  String get onboardBody2 =>
      'Dikonkonona dia AI didi diumvuija tshidi tshinyungisha action, njiwu, mushinga wayi ne malu asatu adi mua kuenzeka ku mushinga, ne miaba ya mumanyisha ne mu muakulu webe.';

  @override
  String get onboardTitle3 => 'Ikala mumanye malu onso';

  @override
  String get onboardBody3 =>
      'Biudi musue, portefeuille webe ne alerte ya mushinga bidi bikumanyisha. Makonkonona ebe adi ashala mu tshiamu tshiebe, alongolola bua kuabulula kabidi.';

  @override
  String get onboardNext => 'Bidi bilonda';

  @override
  String get onboardStart => 'Tuanjile';

  @override
  String get onboardSkip => 'Pita';

  @override
  String changesTitle(String date) {
    return 'Kubangila ku dikonkonona dia kumpala ($date)';
  }

  @override
  String get changesPrice => 'Mushinga';

  @override
  String get changesNoMajor => 'Malu adi alua kaena ashintuluke bikole to.';

  @override
  String get changesPreviousSummary => 'Tshikoso tshia kumpala';

  @override
  String get telemetryTitle => 'Tuambuluisha bua kulengeja WhatStock';

  @override
  String get telemetryBody =>
      'Abanya statistiques ya mudimu kayi ne dîna ne ba-rapport ya dipanga dia programme: midimu kayi idibu benza nayi ne tshidi katshiyi bimpe. Kakuena musangu nansha umue utudi tutuma ba-action biebe, makonkonona ebe anyi malu ebe a pa buebe. Udi mua kushintulula bualu ebu dîba dionso mu Malongolola.';

  @override
  String get telemetryAllow => 'Itaba';

  @override
  String get telemetryDecline => 'Tòo, tuasakidila';

  @override
  String get telemetrySetting =>
      'Statistiques kayi ne dîna ne ba-rapport ya dipanga';

  @override
  String get telemetrySettingHint =>
      'Misangu idibu benza ne midimu ne ba-rapport ya bilema, kakuyi malu a pa buebe anyi malu adi mu makebulula ne makonkonona ebe.';

  @override
  String get askButton => 'Ebeja bua dikonkonona edi';

  @override
  String askTitle(String symbol) {
    return 'Nkonko bua $symbol';
  }

  @override
  String get askIntro =>
      'Ebeja tshionso bua dikonkonona: njiwu kampanda idi ileja tshinyi, tshinyi tshidi mua kushintulula malu a kumpala, mushindu uvua tshibalu kampanda tshibadibue. Mandamuna adi ashindamene pa dikonkonona edi, ne kaena mibelu ya kuteka mfranga.';

  @override
  String get askHint => 'Funda lukonko…';

  @override
  String get askSend => 'Tuma';

  @override
  String get askThinking => 'Mu kuela meji…';

  @override
  String get askSuggest1 => 'Njiwu munene kupita yonso n\'kayi?';

  @override
  String get askSuggest2 => 'Tshinyi tshidi mua kushintulula malu a kumpala?';

  @override
  String get askSuggest3 => 'Umvuija bualu ebu mu mushindu mupepele';

  @override
  String get askMaxReached =>
      'Elu luvua lukonko lua ndekelu bua dikonkonona edi. Enza dikonkonona dipiadipia bua kuebeja kabidi.';

  @override
  String get errAskLimit =>
      'Ufiki ku mukalu wa nkonko ya lelu. Teta kabidi makelela.';

  @override
  String get eventTomorrow => 'Makelela';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'panyima pa matuku $days',
      one: 'panyima pa dituku 1',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Mapeta a trimestre';

  @override
  String get eventBeforeOpen => 'kumpala kua tshisalu kuunzuluka';

  @override
  String get eventAfterClose => 'panyima pa tshisalu kuibikiibua';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS idibu batekemene: $value';
  }

  @override
  String get eventFromAnalysis => 'Mu dikonkonona diebe';

  @override
  String get eventsHint =>
      'Matuku a mapeta a biudi musue ne a ba action ba mu portefeuille webe bua matuku 90 alua, ne malu adi ne matuku makonkonona ebe mamanyishe.';

  @override
  String get eventsEmpty =>
      'Kakuena malu adi ne matuku mu matuku 90 alua to. Bueja biudi musue anyi ba action mu portefeuille bua kumona apa matuku a mapeta abi.';

  @override
  String get compareTitle => 'Kufuanyikija';

  @override
  String get compareAdd => 'Bueja action';

  @override
  String get compareRemove => 'Umbusha';

  @override
  String get compareTickerHint => 'Ticker, bu tshilejelu MSFT';

  @override
  String get compareHint =>
      'Mibelu minene ku luseke ne luseke; mushinga mulenga menemene mu mulongo wonso udi muleja. Makuta adi mu mfranga ya action yonso.';

  @override
  String get compareNoAnalysis => 'Kuena dikonkonona panu';

  @override
  String get portfolioDividends => 'Dividende wa tshidimu';

  @override
  String portfolioDividendYield(String percent) {
    return 'Rendement $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Dividende wa tshidimu udibu bindile udi ushindamene pa ba-dividende bavuabu bafute mu ngondo 12 mishale; difuta dia matuku atshilualua kadiena ne garantie to.';

  @override
  String positionDividend(String amount) {
    return 'Dividende: $amount ku tshidimu';
  }

  @override
  String get chartAvgCost => 'Mushinga webe';

  @override
  String get chartAlertLevel => 'Alerte';

  @override
  String get marketsToday => 'Bisalu lelu';

  @override
  String get notesTitle => 'Mifundu yanyi';

  @override
  String get notesHint =>
      'Bua tshinyi wakayisumba, udi utangila tshinyi, tshinyi tshidi mua kukusaka bua kuyipana?';

  @override
  String get notesInfo =>
      'Bilama anu mu tshintu etshi. Dikonkonona dia AI didi diangata mifundu yebe.';

  @override
  String notesSaved(String date) {
    return 'Bilama: $date';
  }

  @override
  String get peersTitle => 'Bikompanyi bifuanangane';

  @override
  String get portfolioExport => 'Umusha bu CSV';

  @override
  String get portfolioImport => 'Bueja kumbukila mu CSV';

  @override
  String get portfolioImportHint =>
      'Teka tshisumbu tshimue ku mulongo wonso: tshimanyinu tshia ticker, bungi, mushinga, mfranga, dituku (YYYY-MM-DD). Bikolone bidi mua kutapulula ne virgule, point-virgule anyi tabulation; mulongo wa mutu ki mbwa bualu bukole to.';

  @override
  String get portfolioImportButton => 'Bueja';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Bisumbu $count biabuejibua',
      one: 'Tshisumbu 1 tshiabuejibua',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Milongo $count mishiyibua',
      one: 'Mulongo 1 mushiyibua',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Portefeuille, biudi musue, alerte ya mushinga ne mifundu bidi bimue ku bintu biebe bionso.';

  @override
  String syncLast(String time) {
    return 'Synchronisation ya ndekelu: $time';
  }

  @override
  String get syncNow => 'Synchroniser katataka';

  @override
  String get syncFailed =>
      'Synchronisation kayena mienze to. Neyikebe kabidi yoyi nkayayi.';

  @override
  String get alertEmailTitle => 'E-mail padi alerte ijuka';

  @override
  String get alertEmailOn =>
      'Tudi tutangila alerte yebe minite mikese yonso ne tukutumina e-mail, nansha padi application mukanga.';

  @override
  String get alertEmailSignIn =>
      'Buela ne e-mail webe mu Malongolola bua kupeta alerte ku e-mail, nansha padi application mukanga.';

  @override
  String get portfolioHistory => 'Mushinga mu bikondo';

  @override
  String get portfolioReviewTitle => 'Dikonkonona dia portefeuille kudi AI';

  @override
  String get portfolioReviewIntro =>
      'AI udi utangila portefeuille webe yonso: mushindu udi makuta asangisha muaba umue, bitupa bia mudimu ne makuta a matunga makuabu, njiwu idi ma-action ebe mabanye, ne ma-dividende. Udi uangata dikonkonona 1.';

  @override
  String get portfolioReviewButton => 'Konkonona portefeuille wanyi';

  @override
  String get portfolioReviewAgain => 'Konkonona kabidi';

  @override
  String get portfolioReviewWorking => 'Tudi tukonkonona portefeuille webe…';

  @override
  String get digestTitle => 'Bikole bia lumingu ku e-mail';

  @override
  String get digestHint =>
      'Dituku dionso dia kumpala dia lumingu: mudi biudi musue ne portefeuille webe bienze mu lumingu luakapita, ne matuku a mapeta alualua.';

  @override
  String get benchmarkTitle => 'Kufuanyikija ne S&P 500';

  @override
  String get benchmarkYours => 'Bintu biuvua musumbe';

  @override
  String get benchmarkIndex => 'Makuta amue mu S&P 500';

  @override
  String benchmarkAhead(String points) {
    return 'Bimpe kupita indice ku ma points a pourcentage $points';
  }

  @override
  String benchmarkBehind(String points) {
    return 'Panyima pa indice ku ma points a pourcentage $points';
  }

  @override
  String get benchmarkHint =>
      'Bu muvua makuta a tshintu tshionso tshiuvua musumbe muteke mu fonds indiciel wa S&P 500 dituku dimue adi. Ma dividendes kaena mu bualu; bipeta bia kale kabiena bileja bia matuku atshilualua to.';

  @override
  String get portfolioSell => 'Sumbisha';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Sumbisha $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Mushinga wa kusumbisha action umue ($currency)';
  }

  @override
  String get portfolioSellDate => 'Dituku dia kusumbisha';

  @override
  String get portfolioSellAll => 'Yonso';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Udi ne $quantity';
  }

  @override
  String get portfolioSold => 'Musumbisha';

  @override
  String get portfolioRealized => 'Dipeta dia bushuwa';

  @override
  String get portfolioClosed => 'Position mijibule';

  @override
  String get portfolioClosedNote => 'Action yonso mmisumbisha';

  @override
  String get portfolioTransactions => 'Kusumba ne kusumbisha';

  @override
  String get portfolioRealizedByYear => 'Dipeta dia bushuwa ku tshidimu';

  @override
  String get portfolioRealizedHint =>
      'Bisumbisha bidi bitangidibua kumpala ne biuvua musumbe bia kale menemene (FIFO), bishintulula ku mushinga wa dishintuluija dia lelu. Bua mukanda wa bitadi, enza mudimu ne mukanda wa broker webe.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Kubangila ku dikonkonona edi, mapeta mapia a ngondo isatu mmapatuke ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Mapeta mapia';

  @override
  String get portfolioImportBrokers =>
      'Bidi bimanyisha kabidi bintu bidi bipatuka mu Revolut, Trading 212 ne Interactive Brokers, pamue ne bisumbishibua; dividende ne makuta adibu batula bidi bishiyibua.';

  @override
  String get portfolioImportFile => 'Sungula fichier';

  @override
  String offlineBanner(String time) {
    return 'Kakuena connexion to – tudi tuleja mamanyisha a ndekelu akavua mabika ($time).';
  }

  @override
  String get glossMarketCap =>
      'Mushinga wa kompanyi mujima ku bourse: mushinga wa action × bungi bua ba-action.';

  @override
  String get glossSharesOutstanding =>
      'Bungi bua ba-action bidi kompanyi mupatule. Bikala bivudila, action yonso idi ne tshitupa tshikese; kusumba kabidi ba-action (buyback) kudi kubipuekesha.';

  @override
  String get glossPeTrailing =>
      'Mushinga ÷ dipeta dia action umue mu ngondo 12 idi mipite: bidimu bungi kayi bia dipeta dia lelu biudi ufuta. Wa panshi udi mupepele, kadi ba-kompanyi badi bakola lukasa batu ne P/E wa muulu.';

  @override
  String get glossPeForward =>
      'Bu P/E, kadi ne dipeta didi ba-analyste bindile mu ngondo 12 idi ilua. Bikala muikale panshi pa P/E wa kunyima, badi bindile ne: dipeta nedikole.';

  @override
  String get glossPb =>
      'Mushinga ÷ mushinga wa mu mikanda (bintu bia kompanyi kumbusha mabanza) bua action umue. Pabuipi ne 1 kudi kumvuija ne: tshisalu tshidi tshiangata kompanyi bu mudi bintu biayi pa dibeji.';

  @override
  String get glossPs =>
      'Mushinga wa ku tshisalu ÷ mfranga idi ibuela mu tshidimu. Udi muimpe bua ba-kompanyi badi kabayi bapete dipeta dinene anyi kabayi nadi; ufuanyike mu mudimu umue.';

  @override
  String get glossEvToFcf =>
      'Mushinga wa kompanyi ne mabanza (EV) ÷ mfranga idiyi ipeta mu tshidimu umue panyima pa ba-investissement. Wa panshi udi umvuija ne: udi upeta mfranga mivule bua mushinga au.';

  @override
  String get glossPeg =>
      'P/E ÷ dikola dia dipeta didibu bindile mu tshidimu (%). Pabuipi ne 1 batu bamumona bu muakane; udi utangila P/E ne dikola.';

  @override
  String get glossEps =>
      'Dipeta dia action umue mu ngondo 12 idi mipite. EPS udi ubanda tshidimu ne tshidimu udi umue wa ku bimanyinu binene bia kompanyi mimpe.';

  @override
  String get glossBeta =>
      'Mudi action wenda pamue ne tshisalu: 1 = bu tshisalu, 1,5 = dinyungana dinene pabuipi ne 50%, panshi pa 1 = mupole.';

  @override
  String get glossRevenueTtm =>
      'Mfranga yonso ya bintu bipana mu ngondo 12 idi mipite, kumpala kua mafutu onso.';

  @override
  String get glossNetIncomeTtm =>
      'Dipeta didi dishala panyima pa mafutu onso, ba-intérêt ne mitulu mu ngondo 12 idi mipite.';

  @override
  String get glossGrossMargin =>
      'Tshitupa tshia mfranga idi ibuela tshidi tshishala panyima pa mafutu a kuenza bintu. Marge brute wa muulu udi utamba kuleja bukole bua kuteka mushinga.';

  @override
  String get glossOperatingMargin =>
      'Tshitupa tshia mfranga idi ibuela tshidi tshishala panyima pa kuendesha mudimu (difutu, loyer, publicité), kumpala kua ba-intérêt ne mitulu.';

  @override
  String get glossNetMargin =>
      'Tshitupa tshia mfranga idi ibuela tshidi tshilua dipeta dia ndekelu. 20% udi umvuija ne: mu 100 yonso ya bintu bipana, 20 ndipeta.';

  @override
  String get glossRoe =>
      'Dipeta pa fonds propres: dipeta dia tshidimu ÷ mfranga ya bena kompanyi. Udi uleja mudi bakokeshi benza bimpe mudimu ne mfranga ya bena ba-action; kupita pabuipi ne 15% kudi bukole.';

  @override
  String get glossRoa =>
      'Dipeta pa bintu bia kompanyi: dipeta dia tshidimu ÷ bintu bionso bidi kompanyi nabi. Ufuanyike mu mudimu umue.';

  @override
  String get glossDebtToEquity =>
      'Mabanza ÷ fonds propres. Wa muulu udi umvuija mfranga mivule ya ku mabanza: njiwu mikole padi ba-intérêt babanda anyi mudimu wenda bitekete.';

  @override
  String get glossCurrentRatio =>
      'Bintu bia tshikondo tshikese ÷ mabanza a kufuta mu tshidimu umue. Kupita 1 kudi kumvuija ne: kompanyi udi mua kufuta mabanza ende a pabuipi.';

  @override
  String get glossRevenueGrowth =>
      'Mudi mfranga idi ibuela mikole pa kuyifuanyikija ne tshidimu tshishale.';

  @override
  String get glossEpsGrowth =>
      'Mudi dipeta dia action umue dikole pa kudifuanyikija ne tshidimu tshishale.';

  @override
  String get glossDividendYield =>
      'Dividende wa tshidimu ÷ mushinga wa action: mfranga yaudi mua kupeta tshidimu tshionso, mu pourcentage wa tshiudi mufute.';

  @override
  String get glossDividendPerShare =>
      'Dividende udibu bafute bua action umue mu tshidimu tshishale.';

  @override
  String get glossPayoutRatio =>
      'Tshitupa tshia dipeta tshidibu bapana bu dividende. Kupita 100%, kompanyi udi ufuta bipite bidiye upeta, ne bualu ebu kabutu bushala matuku a bungi to.';

  @override
  String get glossTitle => 'Bidi bumvuija tshinyi?';

  @override
  String get watchNewsTitle => 'Lumu lua ba action bebe';

  @override
  String get undo => 'Alukila';

  @override
  String get watchSort => 'Longolola';

  @override
  String get watchSortOwn => 'Bulongolodi buanyi';

  @override
  String get watchSortGainers => 'Bidi bibande bikole kumpala';

  @override
  String get watchSortLosers => 'Bidi bipueke bikole kumpala';

  @override
  String get watchSortName => 'Bilondeshile ticker (A–Z)';

  @override
  String get watchHint =>
      'Koka tshikuatshilu bua kulongolola kabidi, sesa ku tshiakabadi bua kumbusha. Mulongo udi uleja matuku 30 adi apite.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: dikonkonona diebe didi dilongolola.';
  }

  @override
  String alertFromCost(String price) {
    return 'Bilondeshile mushinga webe wa pankatshi wa kusumba ($price):';
  }

  @override
  String get briefTitle => 'Lelu ne bintu biebe bia mu tshisumbu';

  @override
  String get briefButton => 'Kufunda dia lelu';

  @override
  String get briefHint =>
      'Muvungu mukese wa AI wa mudi portefeuille webe ne biudi musue biakatamba lelu ne bidi mukanda ya lumu ilela. Kakuena kudifila dikonkonona.';

  @override
  String get briefRefresh => 'Kuvuija bipiabipia';

  @override
  String get sectionEarnings => 'Mapeta a trimestre';

  @override
  String earningsNext(String date) {
    return 'Rapport udi ulonda: $date';
  }

  @override
  String get earningsExpected => 'EPS idibu batekemene';

  @override
  String get earningsReported => 'EPS idibu bamanyishe';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Bu muomumue anyi bupite EPS idibu batekemene mu $beats pa ma-trimestre $total a ndekelu',
      one:
          'Bu muomumue anyi bupite EPS idibu batekemene mu $beats pa trimestre 1',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol neapatule mapeta a trimestre makelela';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol udi upatula mapeta a trimestre lelu';
  }

  @override
  String get earningsRemindersTitle => 'Bivuluija bia mapeta';

  @override
  String get earningsRemindersSubtitle =>
      'Dimanyisha dituku dimue kumpala kua actions ya biudi musue anyi ya portefeuille webe kupatula mapeta a trimestre';

  @override
  String addAllToFavorites(int count) {
    return 'Bueja yonso mu biudi musue ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Bueja kumbukila mu foto wa ekran';

  @override
  String get holdingsReading => 'Tudi tubala bitupa biebe…';

  @override
  String get holdingsReviewTitle => 'Bitupa bipetangane';

  @override
  String get holdingsReviewHint =>
      'Tangila manomba kumpala kua kuabueja. Mushinga udi mushinga wa pankatshi uvua musumbe tshitupa tshimue, kauena mushinga wa lelu to.';

  @override
  String get holdingsNoPrice =>
      'Kakuena mushinga wa pankatshi wa kusumba mu tshimfuanyi to';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Bueja bitupa $count',
      one: 'Bueja tshitupa 1',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Katuena bapete bitupa bia actions mu tshimfuanyi etshi to. Teta foto wa ekran wa dibeji dia bitupa biebe mu application wa courtier webe.';

  @override
  String get week52Range => 'Bunene bua mingu 52';

  @override
  String week52BelowHigh(String percent) {
    return '$percent kuinshi kua mushinga wa kuulu wa mingu 52';
  }

  @override
  String get week52AtHigh => 'Ku mushinga wa kuulu wa mingu 52';

  @override
  String get alertKindTrailing => 'Udi upueka ku tshisongo';

  @override
  String get alertTrailingPercent => 'Dipueka ku tshisongo (%)';

  @override
  String get alertTrailingHint =>
      'Udi ulonda mushinga ku mutu: udi ukumanyisha padi mushinga upueka bia nunku ku tshisongo tshiawu kumbukila pawakatshiteka.';

  @override
  String alertDescTrailing(String percent) {
    return 'Dipueka dia $percent ku tshisongo';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'tshisongo too ne mpindieu: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol mupueke $percent ku tshisongo';
  }

  @override
  String get sectionInsiders => 'Mushinga wa bakokeshi ba kompanyi';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kusumba: $count',
      one: 'Kusumba: 1',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kusumbisha: $count',
      one: 'Kusumbisha: 1',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Bionso: action $shares';
  }

  @override
  String get insiderBuy => 'Kusumba';

  @override
  String get insiderSell => 'Kusumbisha';

  @override
  String get insiderHint =>
      'Kusumba ne kusumbisha mu tshisalu tshidi tshibuluke kua bakokeshi ne ba-directeur mu matuku 90 adi mapite (SEC Form 4). Kuenza mudimu ne ba-option ne ba-action badi bapesha bu difutu kabiena bibala to.';

  @override
  String get insiderNone =>
      'Kakuena kusumba anyi kusumbisha kua bakokeshi mu tshisalu tshidi tshibuluke mu matuku 90 adi mapite to.';

  @override
  String get analystTrend => 'Mushindu udi meji mashintuluke ngondo ne ngondo';

  @override
  String get watchListAll => 'Yonso';

  @override
  String get watchListNew => 'Liste mupiamupia';

  @override
  String get watchListName => 'Dîna dia liste';

  @override
  String get watchListRename => 'Shintulula dîna dia liste';

  @override
  String get watchListDelete => 'Umbusha liste';

  @override
  String get watchListAddTo => 'Bueja mu liste';

  @override
  String get watchListEmpty =>
      'Kakuena aksio mu liste eu to. Tuta butɔ wa liste udi pabuipi ne aksio bua kuyibueja.';

  @override
  String get portfolioAskTitle => 'Nkonko bua portefeuille webe';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'Kopi wa kulama';

  @override
  String get backupSave => 'Lama kopi';

  @override
  String get backupSaveHint =>
      'Biudi musue biebe, ba liste, portefeuille, alerte ne mifundu yebe mu fichier umue.';

  @override
  String get backupRestore => 'Pingaja ku kopi wa kulama';

  @override
  String get backupRestoreHint =>
      'Udi usakidila bidi mu fichier; kakuena tshintu tshia biudi nabi katataka tshidi tshijimina to.';

  @override
  String get backupRestored => 'Kopi wa kulama mmupingaja.';

  @override
  String get backupInvalid =>
      'Fichier eu ki mmukopi wa kulama wa WhatStock to.';

  @override
  String get allocationPositions => 'Actions';

  @override
  String get allocationSectors => 'Secteurs';

  @override
  String get allocationCurrencies => 'Mfranga';

  @override
  String get compareReturn1y => 'Diakalenga dia tshidimu 1';

  @override
  String get compareFromHigh => 'Kumbukila ku mushinga wa kuulu wa mingu 52';

  @override
  String get briefAutoTitle => 'Mukusa wa dituku dionso dinda dionso';

  @override
  String get briefAutoSubtitle =>
      '“Lelu ne bintu biebe bia mu tshisumbu” bidi bienzeka nkayabi panyima pa 7:00 wa mu dinda padi application wenza mudimu; ku ordinatêre, dimanyisha nedikuambile. Bidi bienzeja mukalu wa nkonko yebe ya dituku dionso, kabiyi dikonkonona.';

  @override
  String get targetsButton => 'Diabanya dia tshipatshila';

  @override
  String get targetsTitle => 'Diabanya dia tshipatshila';

  @override
  String get targetsHint =>
      'Teka tshitupa tshia portfolio tshidi action yonso ne bua kupeta. Shiya muaba mutupu bikala kakuyi tshipatshila. Pashishe app neikuleje tshia kusumba anyi kusumbisha bua kufika kuoku.';

  @override
  String targetsSum(String percent) {
    return 'Bionso: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Sumba ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Sumbisha ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Mufike ku tshipatshila';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol mupite EPS idibu batekemene';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol kafiki ku EPS idibu batekemene to';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'EPS idibu bamanyishe $actual, batekemene $estimate';
  }

  @override
  String get newsExplain => 'Bualu ebu budi bumvuija tshinyi?';

  @override
  String get watchAlertAll => 'Dimanyisha bua dishintuluka dinene dia dituku';

  @override
  String get watchAlertAllHint =>
      'Dimanyisha dia mushinga bua tshiabu tshionso tshidi mu liste eu: nedituta padi tshishintuluka nunku mu dituku dimue, kulu anyi panshi. Bidi ne dimanyisha kumpala nebishale nadi.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mamanyisha $count maateka',
      one: 'Dimanyisha 1 diateka',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Umusha diakamuena didi diangata (CSV)';

  @override
  String get portfolioAnnualReturn => 'Dipeta dia tshidimu';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / tshidimu';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Dipeta dia tshidimu didibu bapime ne mfranga (XIRR): didi ditangila tshikondo tshiwakasumba ne tshiwakasumbisha, nunku mfranga yuudi musakidile pashishe kayena idinyanga to. Didi dimweneka padi tshisumbu tshiebe tshia kumpala tshikumbaja tshidimu tshimue to kupita; ba-dividende kabavuamu to.';

  @override
  String get eventsAddToCalendar => 'Bueja mu kalandriye (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Dimanyisha dia portefeuille';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Dimanyisha padi portefeuille webe yonso ishintuluka nunku mu dituku dimue.';

  @override
  String get portfolioMoveAlertOff => 'Mijima';

  @override
  String portfolioMoveUp(String percent) {
    return 'Portefeuille webe mubande $percent lelu';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Portefeuille webe mupuekele $percent lelu';
  }

  @override
  String get whatIfTitle => 'Bu wewe muikale muteke mfranga?';

  @override
  String get whatIfAmount => 'Bungi';

  @override
  String whatIfResult(String amount, String period) {
    return 'Bu wewe muikale muteke $amount mu tshikondo tshia $period, lelu bivua ne mushinga wa';
  }

  @override
  String get whatIfNote =>
      'Bidi bishindamene anu pa mushinga wa action: ba-dividende, makuta a mudimu ne bitadi kabiyi mu bualu ebu to. Bipeta bia kale kabiyi bileja bia kumpala to.';

  @override
  String get watchShare => 'Abanya liste';

  @override
  String get watchImport => 'Bueja bimanyinu bia ticker';

  @override
  String get watchImportHint =>
      'Teka bimanyinu bia ticker bitapuluke ne virgule, mpata anyi mulongo mupiamupia – bu mudi liste udi muntu mukuabanyine.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Aksio $count yabuejibua',
      one: 'Aksio 1 yabuejibua',
      zero: 'Kakuena aksio mupiamupia',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Bidi binene bikole kumpala';

  @override
  String get positionsSortGain => 'Dipeta dionso dikole kumpala';

  @override
  String get positionsSortToday => 'Bidi bimpe lelu kumpala';

  @override
  String get chartMyBuys => 'Biuvua musumbe';

  @override
  String get chartMySells => 'Biuvua mupane';

  @override
  String get shortcutsTitle => 'Ba raccourci wa clavier';

  @override
  String usMarketOpen(String time) {
    return 'Tshisalu tsha Amerika ntshibuluke · netshiibuikidibue panyima pa $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Tshisalu tsha Amerika ntshibuikidibue · netshibuluke panyima pa $time';
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
    return '$days matuku $hours h';
  }

  @override
  String get portfolioGoalSet => 'Teka tshipatshila';

  @override
  String get portfolioGoalTitle => 'Tshipatshila tsha portefeuille';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · Tshipatshila: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Tshipatshila tshikumbaja: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Umbusha tshipatshila';

  @override
  String get alertEdit => 'Shintulula alerte';

  @override
  String get positionOpenLots => 'Bidi anu ne bebe (bia kale kumpala)';

  @override
  String get lotRemoved => 'Kusumba anyi kusumbisha kuajimijibua';

  @override
  String get alertDeleted => 'Dimanyisha diajimijibua';

  @override
  String get alertsClearTriggered => 'Jimija mamanyisha avua mambule';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mamanyisha $count majimijibua',
      one: 'Dimanyisha 1 diajimijibua',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Dibeji dia kumpala';

  @override
  String get allocationCountries => 'Matunga';

  @override
  String get newsExplainNoteResearch =>
      'Diumvuija dia AI: didi dikeba malu a bulelela ku Internet, dibulula mukanda ne dimona mushindu udi mpokolo eu mua kueyemenyibua. Kadiena mibelu ya kuteka mfranga. Bidi bienzeja mukalu wa nkonko yebe ya dituku dionso, kabiyi dikonkonona.';

  @override
  String get sourceOfficial => 'Bya bukokeshi';

  @override
  String get sourcePressRelease => 'Mukenji wa kompanyi';

  @override
  String get sourceMajorNews => 'Lumu lunene';

  @override
  String get sourceOpinion => 'Meji';

  @override
  String get earningsSummaryButton => 'Tshivua mu lapolo wa ndekelu ntshinyi?';

  @override
  String get earningsSummaryNote =>
      'Diumvuija dikese dia AI dia dimanyisha dia mapeta a kompani ne dia malu adi bijadiki bifunde, adi dipeta ku Internet. Kadiena mibelu ya kuteka mfranga. Bidi bienzeja mukalu wa nkonko yebe ya dituku dionso, kabiyi dikonkonona.';

  @override
  String get compareLastSurprise => 'EPS wa trimestre mushale vs batekemene';

  @override
  String get compareNextReport => 'Rapport udi ulonda';

  @override
  String get resolvingDescription => 'Tudi tukeba action yudi wamba…';

  @override
  String get instrumentTitle => 'Bualu bua tshintu etshi';

  @override
  String get instrumentHint =>
      'Kakuena malu a kompani bua tshimanyinu etshi – tshidi mua kuikala ETF, fond anyi mukanda wa dépôt. Ebeja AI ntshinyi tshidi, ntshinyi tshidi munda ne mushinga watshi udi bungi munyi.';

  @override
  String get instrumentAsk => 'Etshi ntshinyi?';

  @override
  String get instrumentNote =>
      'Diumvuija dia AI didi difuma ku dibeji dia fond dia mupatudi ne ku ba site ya mfranga idi dipeta ku Internet. Kadiena mibelu ya kuteka mfranga. Bidi bienzeja mukalu wa nkonko yebe ya dituku dionso, kabiyi dikonkonona.';

  @override
  String suggestAskAi(String query) {
    return 'Ebeja AI: « $query »';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Kakuena mushinga wa mpindieu wa $symbols.';
  }

  @override
  String get eventsRecentResults => 'Mapeta mapiamapia bamanyishe';
}
