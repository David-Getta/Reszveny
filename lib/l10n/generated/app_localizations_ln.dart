// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lingala (`ln`).
class AppLocalizationsLn extends AppLocalizations {
  AppLocalizationsLn([String locale = 'ln']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Bɛta foto ya action mpe yeba makambo nyɔnsɔ etali yango.';

  @override
  String get homeHint =>
      'Mokanda ya action, écran ya application ya bourse, zulunalo to logo ya kompanyi – elɔkɔ nyɔnsɔ oyo emonisaka action.';

  @override
  String get takePhoto => 'Bɛta foto';

  @override
  String get chooseFromGallery => 'Pɔna na galerie';

  @override
  String get chooseImage => 'Pɔna elilingi';

  @override
  String get enterTickerManually => 'Koma ticker yo moko';

  @override
  String get tickerInputLabel => 'Elembo ya ticker';

  @override
  String get tickerInputHint => 'ndakisa: AAPL';

  @override
  String get lookUp => 'Luka';

  @override
  String demoModeBanner(String symbols) {
    return 'Mode démo – fungola ya ba-donnée ya zando ebongisami te. Ba-donnée ya ndakisa ezali mpo na: $symbols.';
  }

  @override
  String get recognizing => 'Ezali kotalatala elilingi…';

  @override
  String get loadingData => 'Ezali kozwa ba-donnée…';

  @override
  String get noCandidatesTitle => 'Action moko te eyebani';

  @override
  String get noCandidatesBody =>
      'Tokokaki te koyeba action na elilingi oyo. Meka foto oyo emonani malamu, to koma ticker yo moko.';

  @override
  String get whatWeSaw => 'Oyo tomoni';

  @override
  String get chooseCandidateTitle => 'Olingaki action nini?';

  @override
  String confidencePercent(int percent) {
    return 'Bosikisiki $percent%';
  }

  @override
  String get settings => 'Ba-paramètre';

  @override
  String get language => 'Lokota';

  @override
  String get systemLanguage => 'Lokota ya système';

  @override
  String get about => 'Na ntina na application';

  @override
  String get disclaimer =>
      'Application oyo epesaka kaka ba-information; ezali toli ya kotia mbɔngɔ te. Ba-donnée ekoki koya na retard to kozala sikisiki te.';

  @override
  String dataSource(String source) {
    return 'Ba-donnée euti na: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Koyeba elilingi: $source';
  }

  @override
  String get retry => 'Meka lisusu';

  @override
  String get cancel => 'Tika';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Kanga';

  @override
  String get errorGeneric => 'Libunga moko esalemi.';

  @override
  String get errorSectionUnavailable => 'Tokokaki te kolakisa eteni oyo.';

  @override
  String get notAvailable => 'ezali te';

  @override
  String get sectionIdentity => 'Bilembo ya action';

  @override
  String get sectionPrice => 'Ntalo';

  @override
  String get sectionValuation => 'Motuya';

  @override
  String get sectionFinancials => 'Makambo ya mbɔngɔ';

  @override
  String get sectionDividend => 'Dividende';

  @override
  String get sectionProfile => 'Profil ya kompanyi';

  @override
  String get sectionAnalysts => 'Makanisi ya ba-analyste';

  @override
  String get sectionNews => 'Nsango';

  @override
  String get sectionRecognition => 'Ndenge toyebi action';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Bourse';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Mbɔngɔ';

  @override
  String get labelCountry => 'Mboka';

  @override
  String get labelIndustry => 'Industrie';

  @override
  String get labelSector => 'Secteur';

  @override
  String get labelWebsite => 'Site web';

  @override
  String get labelIpoDate => 'Mokɔlɔ ya IPO';

  @override
  String get labelMarketCap => 'Motuya na bourse';

  @override
  String get labelSharesOutstanding => 'Ba-action oyo ezali na zando';

  @override
  String get labelEmployees => 'Basali';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Biro monene';

  @override
  String get labelDescription => 'Bolimboli';

  @override
  String get labelLastPrice => 'Ntalo ya nsuka';

  @override
  String get labelChange => 'Bobongwani';

  @override
  String get labelOpen => 'Ntalo ya ebandeli';

  @override
  String get labelDayHigh => 'Likolo ya mokɔlɔ';

  @override
  String get labelDayLow => 'Na nse ya mokɔlɔ';

  @override
  String get labelPreviousClose => 'Ekangeli ya liboso';

  @override
  String get labelWeek52High => 'Likolo ya pɔsɔ 52';

  @override
  String get labelWeek52Low => 'Na nse ya pɔsɔ 52';

  @override
  String get labelAverageVolume10d => 'Volume ya katikati (mikɔlɔ 10)';

  @override
  String updatedAt(String time) {
    return 'Ebongisami $time';
  }

  @override
  String get labelPeTrailing => 'P/E (oyo eleki)';

  @override
  String get labelPeForward => 'P/E (oyo ekoya)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / cash flow oyo etikali';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Bêta';

  @override
  String get labelRevenueTtm => 'Mosolo nyɔnsɔ (TTM)';

  @override
  String get labelNetIncomeTtm => 'Litomba ya peto (TTM)';

  @override
  String get labelGrossMargin => 'Marge brute';

  @override
  String get labelOperatingMargin => 'Marge opérationnelle';

  @override
  String get labelNetMargin => 'Marge nette';

  @override
  String get labelRoe => 'Litomba na fonds propres (ROE)';

  @override
  String get labelRoa => 'Litomba na bozwi (ROA)';

  @override
  String get labelDebtToEquity => 'Nyongo / fonds propres';

  @override
  String get labelCurrentRatio => 'Ratio ya liquidité';

  @override
  String get labelRevenueGrowth => 'Bokoli ya mosolo (YoY)';

  @override
  String get labelEpsGrowth => 'Bokoli ya EPS (YoY)';

  @override
  String get labelDividendYield => 'Rendement ya dividende';

  @override
  String get labelDividendPerShare => 'Dividende na action moko';

  @override
  String get labelPayoutRatio => 'Eteni ya litomba ekabolami';

  @override
  String get labelConsensus => 'Boyokani';

  @override
  String get ratingStrongBuy => 'Somba makasi';

  @override
  String get ratingBuy => 'Somba';

  @override
  String get ratingHold => 'Bomba';

  @override
  String get ratingSell => 'Tɛka';

  @override
  String get ratingStrongSell => 'Tɛka makasi';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ba-analyste $count',
      one: 'analyste 1',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Eleko: $period';
  }

  @override
  String get noNews => 'Nsango ya sika ezali te.';

  @override
  String get openArticle => 'Fungola lisolo';

  @override
  String get openLinkFailed => 'Tokokaki te kofungola lien.';

  @override
  String get recognitionSummary => 'Na mokuse';

  @override
  String get recognitionEvidence => 'Mpo na nini tokanisi bongo';

  @override
  String get recognitionRawText => 'Makomi oyo etangami na elilingi';

  @override
  String get errMissingAnthropicKey =>
      'Koyeba bililingi ebongisami te (ANTHROPIC_API_KEY ezali te). Koma ticker yo moko.';

  @override
  String get errRecognitionUnreachable =>
      'Tokokaki te kokɔta na service ya koyeba bililingi. Tala soki internet na yo ezali kosala.';

  @override
  String errRecognitionHttp(String status) {
    return 'Service ya koyeba bililingi ezongisi libunga (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Service ya koyeba bililingi ekokaki te kosala na elilingi oyo.';

  @override
  String get errRecognitionTruncated =>
      'Eyano ya service ya koyeba bililingi ekatami. Meka lisusu.';

  @override
  String get errRecognitionBadResponse =>
      'Eyano ya kokamwa euti na service ya koyeba bililingi.';

  @override
  String get errRecognitionEmpty =>
      'Service ya koyeba bililingi ezongisi eyano ya pamba.';

  @override
  String get errMissingFinnhubKey =>
      'Ba-donnée ya zando ebongisami te (FINNHUB_API_KEY ezali te).';

  @override
  String get errMarketUnreachable =>
      'Tokokaki te kokɔta na service ya ba-donnée ya zando. Tala soki internet na yo ezali kosala.';

  @override
  String get errMarketRateLimited =>
      'Masɛngi ebele koleka epai ya service ya ba-donnée ya zando. Zela miniti moko.';

  @override
  String errMarketHttp(String status) {
    return 'Service ya ba-donnée ya zando ezongisi libunga (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Eyano ya kokamwa euti na service ya ba-donnée ya zando.';

  @override
  String errNoQuote(String symbol) {
    return 'Ntalo moko te ezwami mpo na $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Profil ya kompanyi ezwami te mpo na $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Mode démo endimaka kaka $symbols. Bakisa FINNHUB_API_KEY mpo na ba-donnée ya sikoyo.';
  }

  @override
  String errUnknown(String detail) {
    return 'Libunga moko esalemi: $detail';
  }

  @override
  String get newSearch => 'Boluki ya sika';

  @override
  String get recentSearches => 'Oyo olukaki';

  @override
  String get noRecentSearches => 'Olukaki naino elɔkɔ te.';

  @override
  String get clearRecent => 'Limwisa oyo olukaki';

  @override
  String get greeting => 'Totala action nini?';

  @override
  String get searchHint => 'Ticker to nkombo ya kompanyi';

  @override
  String get attachImage => 'Bakisa elilingi';

  @override
  String get searchResultsTitle => 'Oyo emonani';

  @override
  String errNoResults(String query) {
    return 'Action moko te ezwami mpo na « $query ».';
  }

  @override
  String get quickBarHint => 'Koma ticker to nkombo ya kompanyi…';

  @override
  String get openFullWindow => 'Fungola lininisa';

  @override
  String hotkeyHint(String shortcut) {
    return 'Fina $shortcut esika nyɔnsɔ mpo na kobenga WhatStock.';
  }

  @override
  String get trayOpen => 'Fungola WhatStock';

  @override
  String get trayQuickSearch => 'Boluki ya noki';

  @override
  String get trayQuit => 'Bima';

  @override
  String get appearance => 'Lolenge';

  @override
  String get themeSystem => 'Système';

  @override
  String get themeDark => 'Molili';

  @override
  String get themeLight => 'Polele';

  @override
  String get back => 'Zonga';

  @override
  String get aiSectionTitle => 'Analyse ya AI';

  @override
  String get aiIntro =>
      'Bolimboli ya mozindo oyo AI ekomi: nsango ya sika na mokuse, mombongo, makasi, makama mpe makambo ebombami, motuya, ndenge ntalo ekoki kokende na ba-scénario na miso ya psychologie, sociologie, technique mpe macro-économie, mpe makambo ya kolanda.';

  @override
  String get aiGenerate => 'Bimisa analyse';

  @override
  String get aiRegenerate => 'Bimisa lisusu';

  @override
  String get aiGenerating =>
      'Ezali kobongisa analyse… ekoki kozwa miniti moko to mibale.';

  @override
  String get aiSources => 'Ba-source';

  @override
  String aiGeneratedAt(String time) {
    return 'Ebimisami $time';
  }

  @override
  String get aiDisclaimer =>
      'Analyse oyo AI ebimisi na ba-donnée ya polele mpe nsango ya sika. Ekoki kozala na mabunga to kozala ya kala, mpe ezali toli ya kotia mbɔngɔ te.';

  @override
  String get errAiNotConfigured =>
      'Analyse ya AI ebongisami te (ANTHROPIC_API_KEY ezali te).';

  @override
  String get errAiUnreachable =>
      'Tokokaki te kokɔta na service ya AI. Tala soki internet na yo ezali kosala.';

  @override
  String errAiHttp(String status) {
    return 'Service ya AI ezongisi libunga (HTTP $status).';
  }

  @override
  String get errAiRefused =>
      'Service ya AI eboyi kosala analyse ya action oyo.';

  @override
  String get errAiBadResponse => 'Eyano ya kokamwa euti na service ya AI.';

  @override
  String get sectionChart => 'Graphique ya ntalo';

  @override
  String get rangeOneWeek => 'Pɔsɔ 1';

  @override
  String get rangeOneMonth => 'Sanza 1';

  @override
  String get rangeThreeMonths => 'Sanza 3';

  @override
  String get rangeOneYear => 'Mobu 1';

  @override
  String get rangeFiveYears => 'Mibu 5';

  @override
  String get chartUnavailable =>
      'Ntalo ya kala ezali te na source ya ba-donnée oyo.';

  @override
  String get sectionStatements => 'Ba-rapport ya mbɔngɔ (mobu na mobu)';

  @override
  String get labelFiscalYear => 'Mobu ya mbɔngɔ';

  @override
  String get labelRevenue => 'Mosolo nyɔnsɔ';

  @override
  String get labelNetIncome => 'Litomba ya peto';

  @override
  String get labelTotalAssets => 'Bozwi nyɔnsɔ';

  @override
  String get labelTotalLiabilities => 'Nyongo nyɔnsɔ';

  @override
  String get labelEquity => 'Fonds propres';

  @override
  String get labelOperatingCashFlow => 'Cash flow ya mosala';

  @override
  String get statementsUnavailable =>
      'Ba-rapport ya mbɔngɔ ezali te mpo na action oyo.';

  @override
  String get launchAtLogin => 'Fungola ntango ya kokɔta';

  @override
  String get hotkeyLabel => 'Raccourci ya clavier';

  @override
  String get hotkeyRecordHint => 'Fina awa, sima fina ba-touche ya sika';

  @override
  String get hotkeyReset => 'Zongisa oyo ya ebandeli';

  @override
  String get pasteImage => 'Tia elilingi oyo okopiaki';

  @override
  String get errClipboardNoImage => 'Okopiaki elilingi te.';

  @override
  String get favorites => 'Oyo olingaka';

  @override
  String get addToFavorites => 'Bakisa na oyo olingaka';

  @override
  String get removeFromFavorites => 'Longola na oyo olingaka';

  @override
  String get noFavorites =>
      'Naino elɔkɔ te awa. Fina monzoto ya action mpo na kobakisa yango.';

  @override
  String get displayCurrency => 'Mbɔngɔ ya komonisa';

  @override
  String get displayCurrencyNone => 'Kaka mbɔngɔ ya action yango moko';

  @override
  String labelConverted(String currency) {
    return '≈ na $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Taux: 1 $from = $rate $to (BCE, $date)';
  }

  @override
  String get updates => 'Ba-mise à jour';

  @override
  String currentVersion(String version) {
    return 'Version $version';
  }

  @override
  String get autoUpdate => 'Tia ba-mise à jour automatiquement';

  @override
  String get checkForUpdates => 'Luka ba-mise à jour';

  @override
  String get updateChecking => 'Ezali koluka ba-mise à jour…';

  @override
  String get updateUpToDate => 'Ozali na version ya sika koleka.';

  @override
  String updateAvailable(String version) {
    return 'Version $version ezali.';
  }

  @override
  String get updateDownloading => 'Ezali kokitisa mise à jour na nsima…';

  @override
  String get updateDownloaded =>
      'Mise à jour ebongi. Banda lisusu mpo na kotia yango.';

  @override
  String get updateNow => 'Sala mise à jour';

  @override
  String get restartNow => 'Banda lisusu';

  @override
  String get updatesViaStore =>
      'Ba-mise à jour eyaka yango moko na nzela ya store ya ba-application.';

  @override
  String get updateCheckFailed => 'Tokokaki te koluka ba-mise à jour.';

  @override
  String get subscription => 'Abonnement';

  @override
  String get planTrial => 'Komeka';

  @override
  String get planNormal => 'Ya momesano';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Forfait moko te ezali kosala';

  @override
  String planAnalysesPerMonth(int count) {
    return 'Ba-analyse $count na sanza';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Komeka ofele ya mikɔlɔ $days na ba-analyse $count';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Etikali mikɔlɔ $days ya komeka',
      one: 'Etikali mokɔlɔ 1 ya komeka',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Komeka na yo ya ofele esili. Pɔna forfait mpo na kokoba kosala ba-analyse.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Ba-analyse $remaining etikali na $total na eleko oyo';
  }

  @override
  String extraCredits(int count) {
    return 'Ba-analyse $count ya kobakisa';
  }

  @override
  String renewsOn(String date) {
    return 'Ekozongisama sika $date';
  }

  @override
  String get choosePlan => 'Pɔna forfait';

  @override
  String get currentPlan => 'Forfait na yo ya sikoyo';

  @override
  String get subscribe => 'Mikomisa';

  @override
  String get perMonth => '/ sanza';

  @override
  String get extraPacksTitle =>
      'Ozali na posa ya mingi? Somba ba-analyse ya kobakisa';

  @override
  String get extraPacksHint =>
      'Ba-analyse ya kobakisa esilaka te, mpe esalelamaka nsima ya oyo ya sanza na yo.';

  @override
  String get buy => 'Somba';

  @override
  String get restorePurchases => 'Zongisa bosombi';

  @override
  String get manageSubscription => 'Kamba abonnement';

  @override
  String get purchaseSuccess => 'Matɔndi! Bosombi na yo ebandi kosala.';

  @override
  String get purchasePending => 'Bosombi ezali kozela…';

  @override
  String get purchaseFailed => 'Bosombi ekokaki kosila te.';

  @override
  String get purchaseCanceled => 'Bosombi etikami.';

  @override
  String get billingUnavailable =>
      'Bosombi ezali naino te na plateforme oyo. Mikomisa na telefone na yo to na Mac; forfait na yo ekosala na bisaleli nyɔnsɔ.';

  @override
  String get errQuotaExceeded =>
      'Ba-analyse etikali lisusu te na eleko oyo. Mata na forfait ya likolo to somba ba-analyse ya kobakisa.';

  @override
  String get errTrialExpired =>
      'Komeka na yo ya ofele esili. Pɔna forfait mpo na kokoba.';

  @override
  String get errNoPlan =>
      'Esengeli forfait oyo ezali kosala mpo na analyse ya AI.';

  @override
  String get viewPlans => 'Tala ba-forfait';

  @override
  String get usageTitle => 'Bosaleli';

  @override
  String get demoPurchaseNote =>
      'Bofuti ya démo: bosombi ezali ya kosakana na plateforme oyo.';

  @override
  String get mostPopular => 'Oyo bato balingaka mingi';

  @override
  String get bestValue => 'Motuya malamu koleka';

  @override
  String get planFeaturesCommon =>
      'Koyeba foto, ba-donnée ya sikoyo, ba-graphique, oyo olingaka mpe nkota 120 nyɔnsɔ ezali na forfait nyɔnsɔ. Eteni ya sanza ezali mpo na ba-analyse ya AI.';

  @override
  String get searchLanguages => 'Luka lokota…';

  @override
  String get noLanguageMatch => 'Lokota moko te ekokani.';

  @override
  String get aiSettings => 'Analyse ya AI';

  @override
  String get aiLength => 'Bolai';

  @override
  String get aiDepthBrief => 'Mokuse';

  @override
  String get aiDepthStandard => 'Ya katikati';

  @override
  String get aiDepthDeep => 'Ya mozindo';

  @override
  String get aiDepthBriefDesc => 'Makambo ya ntina, noki.';

  @override
  String get aiDepthStandardDesc => 'Rapport mobimba na biteni nyɔnsɔ.';

  @override
  String get aiDepthDeepDesc =>
      'Boluki mingi na internet, kokokanisa na ba-concurrent mpe makambo mingi ya mozindo.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Pene na maloba $min–$max';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'esalelaka ba-analyse $count',
      one: 'esalelaka analyse 1',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Niveau ya motangi';

  @override
  String get aiReaderBeginner => 'Mobandi';

  @override
  String get aiReaderExperienced => 'Moyebi';

  @override
  String get aiReaderBeginnerDesc =>
      'Lokota ya pɛtɛɛ; liloba nyɔnsɔ ya technique elimbolami.';

  @override
  String get aiReaderExperiencedDesc =>
      'Makomi ya makasi koleka, na maloba ya finance oyo esalelamaka.';

  @override
  String get aiCounterArgument => 'Likanisi ya kotɛmɛla oyo eleki makasi';

  @override
  String get aiCounterArgumentDesc =>
      'Bolimboli ya mokuse esukaka ntango nyɔnsɔ na likanisi ya makasi koleka oyo etɛmɛli bosukisi na yango moko.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Tii mbala $count ya koluka na internet mpo na analyse moko na forfait na yo',
      one: 'Tii mbala 1 ya koluka na internet mpo na analyse moko na forfait na yo',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Na bolai ya katikati, na kolanda forfait: Ya momesano $normal, Pro $pro, Max $max, Ultra $ultra. « Mokuse » esalelaka 2 na nse, « Ya mozindo » 2 koleka.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tii mbala $count ya koluka na internet',
      one: 'tii mbala 1 ya koluka na internet',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mbala $count ya koluka na internet mpo na analyse moko',
      one: 'Mbala 1 ya koluka na internet mpo na analyse moko',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Bolai oyo esengeli ba-analyse $needed, kasi etikali kaka $left. Pɔna bolai ya mokuse na Ba-paramètre to zwa ba-analyse mosusu.';
  }

  @override
  String get outlookMarketMood => 'Motɛma ya zando';

  @override
  String get moodVeryPessimistic => 'Kozanga elikya mingi';

  @override
  String get moodPessimistic => 'Kozanga elikya';

  @override
  String get moodNeutral => 'Katikati';

  @override
  String get moodOptimistic => 'Elikya';

  @override
  String get moodVeryOptimistic => 'Elikya mingi';

  @override
  String get scenarioBull => 'Scénario ya komata';

  @override
  String get scenarioBase => 'Scénario ya katikati';

  @override
  String get scenarioBear => 'Scénario ya kokita';

  @override
  String outlookCurrentPrice(String price) {
    return 'Ntalo ya sikoyo: $price';
  }

  @override
  String get outlookKeyLevels => 'Ba-niveau ya ntina';

  @override
  String get keyLevelSupport => 'Support';

  @override
  String get keyLevelResistance => 'Résistance';

  @override
  String get keyLevelAnchor => 'Ancrage';

  @override
  String get upcomingEvents => 'Makambo oyo ekoya';

  @override
  String get outlookChartNote =>
      'Ndelo ya ndakisa; makoki ya kosalema ezali kaka bokanisi, kasi bisakoli te.';

  @override
  String get accountTitle => 'Compte';

  @override
  String get signIn => 'Kɔta';

  @override
  String get signOut => 'Bima';

  @override
  String get notSignedIn => 'Okɔti te';

  @override
  String get accountBenefit =>
      'Kɔta mpo abonnement na yo esala na bisaleli na yo nyɔnsɔ.';

  @override
  String get accountSyncedNote =>
      'Abonnement na yo mpe ba-analyse oyo etikali ezali ndenge moko na bisaleli nyɔnsɔ.';

  @override
  String get signInTitle => 'Kɔta na WhatStock';

  @override
  String get emailLabel => 'Adresse e-mail';

  @override
  String get continueWithEmail => 'Koba na e-mail';

  @override
  String codeSentTo(String email) {
    return 'Totindeli yo code ya mituya 6 na $email. Ezali na nguya mpo na miniti 10.';
  }

  @override
  String get codeLabel => 'Code ya kokɔta';

  @override
  String get resendCode => 'Tinda code ya sika';

  @override
  String get useDifferentEmail => 'Salela e-mail mosusu';

  @override
  String get errInvalidCode => 'Code ezali malamu te to eleki ntango.';

  @override
  String get errInvalidEmail => 'Koma adresse e-mail ya malamu.';

  @override
  String get errSignInFailed =>
      'Kokɔta elongi te. Tala soki internet na yo ezali kosala mpe meka lisusu.';

  @override
  String get checkoutWaiting =>
      'Silisa kofuta na navigateur na yo. Application ekobongisama yango moko soki osilisi.';

  @override
  String get paymentViaStripe =>
      'Kofuta ebatelami na navigateur na yo na nzela ya Stripe. Okoki kotika ntango nyɔnsɔ.';

  @override
  String get paymentViaStore =>
      'Ofutaka na nzela ya compte na yo ya App Store to Google Play. Okoki kotika ntango nyɔnsɔ na ba-paramètre ya store.';

  @override
  String get keySpace => 'Espace';

  @override
  String get doubleOptionTitle => 'Fina Option mbala mibale';

  @override
  String get doubleOptionSubtitle =>
      'Kofina touche Option mbala mibale noki ebengaka mpe WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Mpo esala mpe na ba-application mosusu, pesa WhatStock ndingisa na Réglages Système → Confidentialité et sécurité → Surveillance de l’entrée, sima fungola application lisusu.';

  @override
  String get openSystemSettings => 'Fungola Réglages Système';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Fina $shortcut to fina Option mbala mibale esika nyɔnsɔ mpo na kobenga WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Oyo ekoki mingi kosalema';

  @override
  String get longTermToday => 'Lɛlɔ';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: 'mibu $years',
      one: 'mobu 1',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range na mobu';
  }

  @override
  String longTermLikely(String price) {
    return 'ekoki mingi kozala $price';
  }

  @override
  String get confidenceLow => 'Bosikisiki mokɛ';

  @override
  String get confidenceMedium => 'Bosikisiki ya katikati';

  @override
  String get confidenceHigh => 'Bosikisiki makasi';

  @override
  String get longTermNote =>
      'Ndelo ya ntango molai etongami na makanisi oyo emonisami mpe ekolaka na ntango. Ntalo ezali na dividende te. Bokanisi kaka, bisakoli te.';

  @override
  String get portfolio => 'Portefeuille';

  @override
  String get portfolioEmpty =>
      'Naino elɔkɔ te awa. Fungola action mpe fina « Bakisa na portefeuille » mpo na kolanda oyo ozali na yango.';

  @override
  String get portfolioLocalNote =>
      'Ebombami kaka na esaleli oyo. Mitango mobimba ebongolami na ba-taux ya référence ya BCE; ntalo ekoki koya na retard.';

  @override
  String get addToPortfolio => 'Bakisa na portefeuille';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Bakisa $symbol';
  }

  @override
  String get portfolioQuantity => 'Motango ya ba-action';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Ntalo ya action moko ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Mokɔlɔ ya kosomba';

  @override
  String get portfolioAdd => 'Bakisa';

  @override
  String get portfolioInvalidNumber => 'Koma motango oyo eleki zéro.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol ebakisami na portefeuille na yo.';
  }

  @override
  String get portfolioTotalValue => 'Motuya mobimba';

  @override
  String get portfolioToday => 'Lɛlɔ';

  @override
  String get portfolioGainLoss => 'Litomba/Bobungisi';

  @override
  String get portfolioInvested => 'Mbɔngɔ otiaki';

  @override
  String get portfolioAllocation => 'Bokaboli';

  @override
  String get portfolioPositions => 'Ba-position';

  @override
  String portfolioAvgCost(String price) {
    return 'ntalo ya katikati $price';
  }

  @override
  String get portfolioYourPosition => 'Position na yo';

  @override
  String get portfolioPurchases => 'Bosombi';

  @override
  String get portfolioRemove => 'Longola';

  @override
  String get portfolioExcluded =>
      'Ba-position oyo ezangi ntalo to taux ya mbɔngɔ etangami te na mitango.';

  @override
  String get priceAlerts => 'Makebisi ya ntalo';

  @override
  String get setPriceAlert => 'Tia likebisi ya ntalo';

  @override
  String alertDialogTitle(String symbol) {
    return 'Likebisi ya ntalo · $symbol';
  }

  @override
  String get alertKindAbove => 'Soki emati likolo ya';

  @override
  String get alertKindBelow => 'Soki ekiti na nse ya';

  @override
  String get alertKindMove => 'Soki eningani mingi na mokɔlɔ moko';

  @override
  String alertTargetPrice(String currency) {
    return 'Ntalo ($currency)';
  }

  @override
  String get alertMovePercent => 'Bobongwani ya mokɔlɔ (%)';

  @override
  String get alertAlreadyMet => 'Ntalo esili koleka ndelo oyo.';

  @override
  String get alertSave => 'Tia likebisi';

  @override
  String alertCreated(String symbol) {
    return 'Likebisi etiami mpo na $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Naino likebisi moko te. Fungola action mpe fina ngonga mpo na kotia moko.';

  @override
  String get alertsNote =>
      'Makebisi etalamaka nsima ya miniti 5 nyɔnsɔ ntango WhatStock ezali kosala. Na ordinateur, ekobi kosala na barre ya menu to na tray; na telefone, mpo na sikoyo makebisi eyaka kaka soki application efungwami.';

  @override
  String alertDescAbove(String price) {
    return 'Likolo ya $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Na nse ya $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Bobongwani ya mokɔlɔ ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Ebɛtaki $date na ntalo $price';
  }

  @override
  String get alertRearm => 'Tia lisusu';

  @override
  String get alertDelete => 'Limwisa';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol emati likolo ya $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol ekiti na nse ya $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol eningani $percent lɛlɔ';
  }

  @override
  String alertHitBody(String price) {
    return 'Ntalo ya sikoyo: $price';
  }

  @override
  String get alertOpen => 'Fungola';

  @override
  String get keepInTrayTitle => 'Koba kosala ntango lininisa ekangami';

  @override
  String get keepInTraySubtitle =>
      'WhatStock etikalaka na barre ya menu to na tray, bongo raccourci mpe makebisi ya ntalo ekobaka kosala.';

  @override
  String get termsOfUse => 'Mibeko ya bosaleli';

  @override
  String get privacyPolicy => 'Mibeko ya kobatela ba-donnée';

  @override
  String get subscriptionLegal =>
      'Abonnement ezongisamaka yango moko sanza nyɔnsɔ tii okotika yango. Na komikomisa, ondimi Mibeko ya bosaleli mpe Mibeko ya kobatela ba-donnée.';

  @override
  String get deleteAccount => 'Limwisa compte';

  @override
  String get deleteAccountTitle => 'Olingi kolimwisa compte na yo?';

  @override
  String get deleteAccountBody =>
      'Compte na yo mpe nyɔnsɔ oyo ebombami na serveur na biso (e-mail, eteni ya sanza, bosaleli) ekolimwisama mpo na libela, mpe ba-analyse oyo osalelaki te ekobunga. Abonnement oyo ofutaki na navigateur ekotikama mbala moko; abonnement ya App Store to Google Play esengeli kotikama na ba-paramètre ya store.';

  @override
  String get deleteLocalData =>
      'Limwisa mpe ba-donnée na esaleli oyo (portefeuille, makebisi, oyo olingaka, oyo olukaki, ba-analyse ebombami)';

  @override
  String get deleteAccountConfirm => 'Limwisa mpo na libela';

  @override
  String get accountDeleted => 'Compte na yo elimwisami.';

  @override
  String get errDeleteAccount =>
      'Tokokaki te kolimwisa compte. Tala soki internet na yo ezali kosala mpe meka lisusu.';

  @override
  String get aiTrialBriefNote =>
      'Ba-analyse ya komeka ezali mokuse mpe esalemaka na modèle ya AI oyo ekendaka noki. Na forfait, ozwaka AI na biso ya makasi koleka, boluki mingi na internet, mpe bolai Ya katikati mpe Ya mozindo.';

  @override
  String get billingMonthly => 'Sanza na sanza';

  @override
  String get billingYearly => 'Mobu na mobu';

  @override
  String get yearlyDiscount => 'Sanza 2 ofele';

  @override
  String get perYear => '/ mobu';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price na sanza';
  }

  @override
  String get subscriptionLegalYearly =>
      'Abonnement ya mbula ezongisamaka yango moko mbula nyɔnsɔ tii okotika yango. Na komikomisa, ondimi Mibeko ya bosaleli mpe Mibeko ya kobatela ba-donnée.';

  @override
  String get myAnalyses => 'Ba analyse na ngai';

  @override
  String get navAlerts => 'Makebisi';

  @override
  String get inviteTitle => 'Botali ya liboso ya sekele';

  @override
  String get inviteBody =>
      'Sikoyo WhatStock ezali kaka na libyangi. Kɔtisa code ya libyangi oyo ozwaki.';

  @override
  String get inviteCodeLabel => 'Code ya libyangi';

  @override
  String get inviteContinue => 'Kokoba';

  @override
  String get inviteInvalid => 'Code oyo ya libyangi ezali malamu te.';

  @override
  String get inviteExpired =>
      'Libyangi oyo eleki ntango. Senga code ya sika epai ya moto oyo abyangaki yo.';

  @override
  String get inviteDeviceLimit =>
      'Code oyo ya libyangi esalelami kala na motango ya likolo ya bisaleli.';

  @override
  String get previewConfidential => 'Botali ya sekele';

  @override
  String get errPreviewDailyLimit =>
      'Ndelo ya ba-analyse ya lelo mpo na botali oyo ekoki. Meka lisusu lobi.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'bangonga $count eleki',
      one: 'ngonga 1 eleki',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'mikɔlɔ $count eleki',
      one: 'mokɔlɔ 1 eleki',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Kobongisa analyse oyo?';

  @override
  String staleBody(String age) {
    return 'Analyse oyo esalemaki $age. Banda wana, ntalo, nsango mpe mbano ekoki kobongwana.';
  }

  @override
  String get staleKeep => 'Lakisa oyo ya kala';

  @override
  String get staleRefresh => 'Salá oyo ya sika';

  @override
  String seeAll(int count) {
    return 'Talá nyonso ($count)';
  }

  @override
  String get searchAnalyses => 'Luká na ba analyse na yo';

  @override
  String get deleteAnalysis => 'Limwisa';

  @override
  String analysisDeleted(String symbol) {
    return 'Analyse ya $symbol elimwisami';
  }

  @override
  String get keyLevelAlertHint =>
      'Fina niveau moko mpo na kozwa likebisi ntango ntalo ekokoma wana.';

  @override
  String get shareAnalysisTitle => 'Kabola analyse';

  @override
  String get shareAsImage => 'Kabola lokola elilingi';

  @override
  String get shareAsText => 'Kabola lokola makomi';

  @override
  String get shareCardFooter => 'Esalemi na WhatStock';

  @override
  String get shareCardDisclaimer =>
      'Analyse ya AI · ezali toli ya kotia mbɔngɔ te';

  @override
  String get referralTitle => 'Benga baninga';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ba-analyse $count ya kobakisa',
      one: 'analyse 1 ya kobakisa',
    );
    return 'Kabola code na yo. Moninga na yo akozwa $_temp0 mbala moko, mpe yo okozwa ndenge moko nsima ya analyse na ye ya liboso.';
  }

  @override
  String get referralYourCode => 'Code na yo';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Babengami: $invited · Bazwi lifuta: $rewarded';
  }

  @override
  String get referralHaveCode => 'Ozali na code ya moninga?';

  @override
  String get referralRedeem => 'Salela';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ba-analyse $count ya kobakisa ebakisami. Boyei malamu!',
      one: 'Analyse 1 ya kobakisa ebakisami. Boyei malamu!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Code oyo ezali te. Tala yango mpe meka lisusu.';

  @override
  String get referralErrOwn => 'Okoki te kosalela code na yo moko.';

  @override
  String get referralErrAlready => 'Osilisi kosalela code ya moninga.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ba-analyse $count ya kobakisa',
      one: 'analyse 1 ya kobakisa',
    );
    return 'Nazali kotala ba-action na WhatStock: ozwa foto ya action mpe AI elimboli yango. Na code na ngai $code okozwa $_temp0.';
  }

  @override
  String get referralCopied => 'Code ekopiami';

  @override
  String get onboardTitle1 => 'Bɛta foto ya action';

  @override
  String get onboardBody1 =>
      'Ekrá ya application ya broker, zulunalo to logo ya kompanyi ekoki: WhatStock eyebi action yango mpe elakisi yo ntalo na yango, grafiki mpe mitángo ya ntina.';

  @override
  String get onboardTitle2 => 'Sosola yango na miniti moke';

  @override
  String get onboardBody2 =>
      'Analyse ya AI elimboli nini etindaka action, makama, motuya na yango mpe makambo misato oyo ekoki kokómela ntalo, na bisika ya nsango mpe na monoko na yo.';

  @override
  String get onboardTitle3 => 'Yeba makambo nyɔnsɔ ntango nyɔnsɔ';

  @override
  String get onboardBody3 =>
      'Oyo olingaka, portefeuille na yo mpe makebisi ya ntalo ekoyebisa yo makambo. Ba analyse na yo etikalaka na appareil na yo, ya kofungola lisusu.';

  @override
  String get onboardNext => 'Oyo elandi';

  @override
  String get onboardStart => 'Tóbanda';

  @override
  String get onboardSkip => 'Leka';

  @override
  String changesTitle(String date) {
    return 'Banda analyse ya kala ($date)';
  }

  @override
  String get changesPrice => 'Ntalo';

  @override
  String get changesNoMajor =>
      'Ndenge makambo ekoki kozala ebongwani mingi te.';

  @override
  String get changesPreviousSummary => 'Mokuse ya kala';

  @override
  String get telemetryTitle => 'Salisa biso kobongisa WhatStock';

  @override
  String get telemetryBody =>
      'Kabola ba-statistique ya kosalela oyo ezangi nkombo mpe ba-rapport ya ba-plantage: biloko nini basalelaka mpe nini etambolaki malamu te. Ata moke te ba-action na yo, ba-analyse na yo to ba-donnée na yo ya moko. Okoki kobongola yango ntango nyonso na Ba-paramètre.';

  @override
  String get telemetryAllow => 'Pesa ndingisa';

  @override
  String get telemetryDecline => 'Te, matondi';

  @override
  String get telemetrySetting =>
      'Ba-statistique ezangi nkombo mpe ba-rapport ya ba-plantage';

  @override
  String get telemetrySettingHint =>
      'Mbala boni basalelaka biloko mpe ba-rapport ya ba-erreur, kozanga ba-donnée ya moko to makambo ya bolukiluki mpe ba-analyse na yo.';

  @override
  String get askButton => 'Tuna mituna na ntina ya analyse oyo';

  @override
  String askTitle(String symbol) {
    return 'Mituna na ntina ya $symbol';
  }

  @override
  String get askIntro =>
      'Tuna nyonso oyo olingi na ntina ya analyse: likama moko elakisi nini, nini ekoki kobongola makanisi ya mikolo ezali koya, ndenge motango moko etangamaki. Biyano esimbami na analyse oyo, mpe ezali toli ya kotia mbɔngɔ te.';

  @override
  String get askHint => 'Komá motuna…';

  @override
  String get askSend => 'Tinda';

  @override
  String get askThinking => 'Ezali kokanisa…';

  @override
  String get askSuggest1 => 'Likama monene ezali nini?';

  @override
  String get askSuggest2 =>
      'Nini ekoki kobongola makanisi ya mikolo ezali koya?';

  @override
  String get askSuggest3 => 'Limbolá yango na ndenge ya pɛtɛɛ';

  @override
  String get askMaxReached =>
      'Wana ezalaki motuna ya nsuka mpo na analyse oyo. Bimisa analyse ya sika mpo na kotuna lisusu.';

  @override
  String get errAskLimit =>
      'Okómi na ndelo ya mituna ya lelo. Meka lisusu lobi.';

  @override
  String get eventTomorrow => 'Lobi';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'nsima ya mikolo $days',
      one: 'nsima ya mokolo 1',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Ba résultats ya trimestre';

  @override
  String get eventBeforeOpen => 'liboso ya kofungwama ya zando';

  @override
  String get eventAfterClose => 'nsima ya kokangama ya zando';

  @override
  String eventEpsEstimate(String value) {
    return 'Estimation ya EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Na analyse na yo';

  @override
  String get eventsHint =>
      'Ba dati ya ba résultats ya oyo olingaka mpe ya ba action ya portefeuille na yo mpo na mikolo 90 oyo ekoya, mpe makambo oyo ezali na dati oyo ba analyse na yo emonisi.';

  @override
  String get eventsEmpty =>
      'Makambo oyo ezali na dati ezali te na mikolo 90 oyo ekoya. Bakisá oyo olingaka to ba action na portefeuille mpo na komona awa ba dati ya ba résultats na yango.';
}
