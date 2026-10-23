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
  String get labelYieldOnCost => 'Rendement na ntalo ya kosomba';

  @override
  String get labelDividendGrowth5y => 'Bokoli ya dividende (mibu 5)';

  @override
  String get dividendNone => 'Bafuti dividende te na sanza 12 oyo eleki.';

  @override
  String get dividendOnYourShares => 'Na ba action na yo, na mobu';

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
      one: 'analyste $count',
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
      one: 'Etikali mokɔlɔ $days ya komeka',
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
      one: 'esalelaka analyse $count',
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
      one:
          'Tii mbala $count ya koluka na internet mpo na analyse moko na forfait na yo',
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
      one: 'tii mbala $count ya koluka na internet',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mbala $count ya koluka na internet mpo na analyse moko',
      one: 'Mbala $count ya koluka na internet mpo na analyse moko',
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
      one: 'mobu $years',
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
      'Ebombami na esaleli oyo, mpe na compte na yo soki okɔti. Mitango mobimba ebongolami na ba-taux ya référence ya BCE; ntalo ekoki koya na retard.';

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
  String homeDividendsThisYear(String amount) {
    return 'Ba dividende ya mbula oyo: $amount';
  }

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
      one: 'ngonga $count eleki',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'mikɔlɔ $count eleki',
      one: 'mokɔlɔ $count eleki',
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
      one: 'analyse $count ya kobakisa',
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
      one: 'Analyse $count ya kobakisa ebakisami. Boyei malamu!',
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
      one: 'analyse $count ya kobakisa',
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
      one: 'nsima ya mokolo $days',
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
  String get eventDividend => 'Dividende ezelami';

  @override
  String get eventDividendEstimate => 'Etangami na ba futa oyo okomaki';

  @override
  String get eventsHint =>
      'Ba dati ya ba résultats ya oyo olingaka mpe ya ba action ya portefeuille na yo mpo na mikolo 90 oyo ekoya, makambo oyo ezali na dati oyo ba analyse na yo emonisi, mpe ba dividende oyo ezelami na ba futa oyo okomaki.';

  @override
  String get eventsEmpty =>
      'Makambo oyo ezali na dati ezali te na mikolo 90 oyo ekoya. Bakisá oyo olingaka to ba action na portefeuille mpo na komona awa ba dati ya ba résultats na yango; ba dividende oyo okomaki emonisaka futa na yango oyo ekolanda oyo ezelami.';

  @override
  String get compareTitle => 'Kokokanisa';

  @override
  String get compareAdd => 'Bakisa action';

  @override
  String get compareRemove => 'Longola';

  @override
  String get compareTickerHint => 'Ticker, ndakisa MSFT';

  @override
  String get compareHint =>
      'Mituya ya ntina pembeni na pembeni; motuya oyo eleki malamu na molɔngɔ moko moko emonisami. Mbɔngɔ ezali na mbɔngɔ ya action moko moko.';

  @override
  String get compareNoAnalysis => 'Analyse ezali naino te';

  @override
  String get portfolioDividends => 'Dividende ya mobu';

  @override
  String portfolioDividendYield(String percent) {
    return 'Rendement $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Dividende ya mobu oyo ezelamaki etongami na ba-dividende oyo bafutaki na sanza 12 oyo eleki; bafuti ya mikolo ezali koya ezali na garantie te.';

  @override
  String positionDividend(String amount) {
    return 'Dividende: $amount na mobu';
  }

  @override
  String get chartAvgCost => 'Ntalo na yo';

  @override
  String get chartAlertLevel => 'Likebisi';

  @override
  String get marketsToday => 'Mazando lɛlɔ';

  @override
  String get notesTitle => 'Ba note na ngai';

  @override
  String get notesHint =>
      'Mpo na nini osombaki yango, ozali kotala nini, nini ekoki kotinda yo oteka yango?';

  @override
  String get notesInfo =>
      'Ebombami na esaleli oyo, mpe na compte na yo soki okɔti. Analyse ya AI ezwaka ba note na yo na motuya.';

  @override
  String notesSaved(String date) {
    return 'Ebombami $date';
  }

  @override
  String get peersTitle => 'Bakompanyi oyo ekokani';

  @override
  String get portfolioExport => 'Bimisa lokola CSV';

  @override
  String get portfolioImport => 'Kotisa uta na CSV';

  @override
  String get portfolioImportHint =>
      'Tya esombi moko na molɔngɔ mokomoko: elembo ya ticker, motángo, ntalo, mbɔngɔ, mokɔlɔ (YYYY-MM-DD). Ba-colonne ekoki kokabwana na virgule, point-virgule to tabulation; molɔngɔ ya motó ezali na ntina te.';

  @override
  String get portfolioImportButton => 'Kotisa';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Bosombi mpe boteki $count ebakisami',
      one: 'Bosombi to boteki $count ebakisami',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Milɔngɔ $count etikalaki',
      one: 'Molɔngɔ $count etikalaki',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Portefeuille, oyo olingaka, makebisi ya ntalo mpe ba note ezali ndenge moko na bisaleli na yo nyɔnsɔ.';

  @override
  String syncLast(String time) {
    return 'Synchronisation ya nsuka: $time';
  }

  @override
  String get syncNow => 'Synchroniser sikoyo';

  @override
  String get syncFailed =>
      'Synchronisation ekoki te. Ekomeka lisusu yango moko.';

  @override
  String get alertEmailTitle => 'E-mail ntango likebisi esali';

  @override
  String get alertEmailOn =>
      'Totalaka makebisi na yo nsima ya miniti moke nyɔnsɔ mpe totindelaka yo e-mail, ata soki application ekangami.';

  @override
  String get alertEmailSignIn =>
      'Kɔta na e-mail na yo na Ba-paramètre mpo na kozwa makebisi na e-mail, ata soki application ekangami.';

  @override
  String get portfolioHistory => 'Motuya na ntango';

  @override
  String get portfolioReviewTitle => 'Analyse ya portefeuille na AI';

  @override
  String get portfolioReviewIntro =>
      'AI etalaka portefeuille na yo mobimba: koyangana ya mbongo na esika moko, bitape ya mombongo mpe mbongo ya bikolo, makama oyo ba-action na yo bakabolaka, mpe ba-dividende. Esalelaka analyse 1.';

  @override
  String get portfolioReviewButton => 'Salá analyse ya portefeuille na ngai';

  @override
  String get portfolioReviewAgain => 'Salá lisusu';

  @override
  String get portfolioReviewWorking =>
      'Tozali kosala analyse ya portefeuille na yo…';

  @override
  String get digestTitle => 'Bokuse ya pɔsɔ na e-mail';

  @override
  String get digestHint =>
      'Mokolo ya yambo nyonso: ndenge oyo olingaka mpe portefeuille na yo etambolaki na pɔsɔ eleki, mpe mikolo ya ba résultats oyo ezali koya.';

  @override
  String get benchmarkTitle => 'Kokokanisa na S&P 500';

  @override
  String get benchmarkTitleIndex => 'Kokokanisa na indice moko';

  @override
  String get benchmarkHintIndex =>
      'Lokola mbɔngɔ ya esombeli moko na moko etiamaki na fonds oyo elandaka indice oyo oponi na mokolo yango moko. Ba dividendes ezali te; matomba ya kala elakisaka te oyo ya mikolo ezali koya.';

  @override
  String get benchmarkYours => 'Biloko osombaki';

  @override
  String benchmarkAhead(String points) {
    return 'Eleki indice na ba points ya pourcentage $points';
  }

  @override
  String benchmarkBehind(String points) {
    return 'Ezali nsima ya indice na ba points ya pourcentage $points';
  }

  @override
  String get portfolioSell => 'Teka';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Teka $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Ntalo ya koteka action moko ($currency)';
  }

  @override
  String get portfolioSellDate => 'Mokɔlɔ ya koteka';

  @override
  String get portfolioSellAll => 'Nyonso';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Ozali na $quantity';
  }

  @override
  String get portfolioSold => 'Etekami';

  @override
  String get portfolioRealized => 'Litomba ya solo';

  @override
  String get portfolioClosed => 'Ba-position oyo ekangami';

  @override
  String get portfolioClosedNote => 'Ba-action nyonso etekami';

  @override
  String get portfolioTransactions => 'Bosombi mpe boteki';

  @override
  String get portfolioRealizedByYear => 'Litomba ya solo na mbula';

  @override
  String get portfolioRealizedHint =>
      'Boteki ekokanisamaka liboso na bosombi na yo ya kala koleka (FIFO), ebongolami na motuya ya mbongo ya lelo. Mpo na declaration ya mpako, salelá rapɔrɔ ya broker na yo.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Banda analyse oyo, ba résultats ya sika ya trimestre ebimi ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Résultats ya sika';

  @override
  String get portfolioImportBrokers =>
      'Ba-export ya Revolut, Trading 212, Interactive Brokers, DEGIRO, Schwab, Fidelity mpe Robinhood mpe eyebanaka, elongo na biteki mpe dividende (sima ya kolongola mpako oyo ekatamaka); mbongo oyo etiamaki ezali kolekisama.';

  @override
  String get portfolioImportFile => 'Pona fisyé moko';

  @override
  String offlineBanner(String time) {
    return 'Connexion ezali te – tozali kolakisa ba-donnée ya nsuka oyo ebombamaki ($time).';
  }

  @override
  String get glossMarketCap =>
      'Motuya ya kompanyi mobimba na bourse: ntalo ya action × motango ya ba-action.';

  @override
  String get glossSharesOutstanding =>
      'Motango ya ba-action oyo kompanyi ebimisaki. Soki ebakisami, action moko na moko ezwaka eteni moke; kosomba lisusu ba-action (buyback) ekitisaka yango.';

  @override
  String get glossPeTrailing =>
      'Ntalo ÷ litomba ya action moko na sanza 12 oyo eleki: mibu boni ya litomba ya lelo ofutaka. Oyo ya nse ezali na ntalo moke, kasi bakompanyi oyo bakolaka noki mingi bazalaka na P/E ya likoló.';

  @override
  String get glossPeForward =>
      'Lokola P/E, kasi na litomba oyo ba-analyste bazelaka na sanza 12 oyo ekoya. Soki ezali na nse ya P/E oyo eleki, bazelaka ete litomba ekola.';

  @override
  String get glossPb =>
      'Ntalo ÷ motuya na buku (bozwi longola nyongo) ya action moko. Pene na 1 elakisi ete zando epesi kompanyi motuya ya biloko ezali na yango na papye.';

  @override
  String get glossPs =>
      'Motuya na zando ÷ mosolo nyɔnsɔ ya mobu. Ebongi mpo na bakompanyi oyo bazali naino na litomba moke to te; kokanisa yango na kati ya mosala moko.';

  @override
  String get glossEvToFcf =>
      'Motuya ya kompanyi elongo na nyongo (EV) ÷ mbongo oyo ebimisaka na mobu moko nsima ya ba-investissement. Oyo ya nse elakisi ozwaka mbongo mingi mpo na ntalo yango.';

  @override
  String get glossPeg =>
      'P/E ÷ bokoli ya litomba oyo bazelaka na mobu (%). Pene na 1 mbala mingi ezali sembo; etalaka P/E na kotala bokoli.';

  @override
  String get glossEps =>
      'Litomba ya action moko na sanza 12 oyo eleki. EPS oyo ebakisamaka mobu na mobu ezali moko ya bilembo ya makasi koleka ya kompanyi oyo ezali malamu.';

  @override
  String get glossBeta =>
      'Ndenge action eningani elongo na zando: 1 = lokola zando, 1,5 = koningana monene pene na 50% koleka, na nse ya 1 = kimya mingi.';

  @override
  String get glossRevenueTtm =>
      'Mosolo nyɔnsɔ ya biloko etekamaki na sanza 12 oyo eleki, liboso ya ba-frais nyonso.';

  @override
  String get glossNetIncomeTtm =>
      'Litomba oyo etikali nsima ya ba-frais nyonso, ba-intérêt mpe mpako na sanza 12 oyo eleki.';

  @override
  String get glossGrossMargin =>
      'Eteni ya mosolo nyɔnsɔ oyo etikalaka nsima ya ntalo ya kosala biloko. Marge brute ya likoló mbala mingi elakisi nguya ya kotya ntalo.';

  @override
  String get glossOperatingMargin =>
      'Eteni ya mosolo nyɔnsɔ oyo etikalaka nsima ya kotambwisa mombongo (lifuti, loyer, publicité), liboso ya ba-intérêt mpe mpako.';

  @override
  String get glossNetMargin =>
      'Eteni ya mosolo nyɔnsɔ oyo ekomaka litomba ya nsuka. 20% elakisi ete na 100 nyonso ya biloko etekami, 20 ezali litomba.';

  @override
  String get glossRoe =>
      'Litomba na fonds propres: litomba ya mobu ÷ mbongo ya bankolo. Elakisi ndenge bakambi basalelaka malamu mbongo ya bato ya ba-action; koleka pene na 15% ezali makasi.';

  @override
  String get glossRoa =>
      'Litomba na bozwi: litomba ya mobu ÷ biloko nyonso kompanyi ezali na yango. Kokanisa yango na kati ya mosala moko.';

  @override
  String get glossDebtToEquity =>
      'Nyongo ÷ fonds propres. Oyo ya likoló elakisi mbongo mingi ya kodefa: likama mingi tango ba-intérêt emati to mombongo ekiti.';

  @override
  String get glossCurrentRatio =>
      'Bozwi ya ntango mokuse ÷ ba-facture ya kofuta na mobu moko. Koleka 1 elakisi ete kompanyi ekoki kofuta ba-facture na yango ya pene.';

  @override
  String get glossRevenueGrowth =>
      'Ndenge mosolo nyɔnsɔ ekoli soki tokokanisi na mobu oyo eleki.';

  @override
  String get glossEpsGrowth =>
      'Ndenge litomba ya action moko ekoli soki tokokanisi na mobu oyo eleki.';

  @override
  String get glossDividendYield =>
      'Dividende ya mobu ÷ ntalo ya action: mbongo okozwa mobu na mobu, na pourcentage ya oyo ofuti.';

  @override
  String get glossDividendPerShare =>
      'Dividende oyo bafutaki na action moko na mobu oyo eleki.';

  @override
  String get glossPayoutRatio =>
      'Eteni ya litomba oyo bakabolaka lokola dividende. Koleka 100%, kompanyi efutaka koleka oyo ezwaka, mpe yango eumelaka mingi te.';

  @override
  String get portfolioBeta => 'Bêta ya portefeuille';

  @override
  String get glossPortfolioBeta =>
      'Bêta ya ba-action na yo, oyo epesameli kilo na kolanda motuya na yango: pene na pourcentage boni ba-action na yo eningani ntango zando eningani 1%. Likolo ya 1, eningani koleka zando; na nse ya 1, moke. Mbɔngɔ ya mabɔkɔ etángami te.';

  @override
  String get portfolioTop3 => 'Ba-position 3 ya minene';

  @override
  String get glossPortfolioTop3 =>
      'Eteni nini ya motuya ya ba-action na yo ezali na ba-position na yo misato ya minene koleka. Soki ezali likolo mingi, nsango mabe ya kompanyi moko kaka ekoki kobebisa portefeuille mobimba mingi koleka.';

  @override
  String get glossDividendGrowth5y =>
      'Ndenge dividende ya action moko ekolaki mobu na mobu na kati-kati na mibu mitano oyo eleki. Bokoli ya ntango nyonso elakisaka mingimingi ete kompani ezali na elikya na mbongo oyo ekoti mpe ebimi; kokitisa yango ezalaka mbala mingi elembo ya likebisi.';

  @override
  String get glossYieldOnCost =>
      'Ba dividende oyo ozwaki na basanza 12 ya suka, ekabwani na mbɔngɔ oyo ofutaki mpo na ba action oyo ozali naino na yango. Ekeseni na rendement ya dividende: etalelamaka na ntalo oyo yo osombaki, kasi na ntalo ya lelo te.';

  @override
  String get glossTitle => 'Elakisi nini?';

  @override
  String get watchNewsTitle => 'Nsango ya ba action na yo';

  @override
  String get undo => 'Zongisa';

  @override
  String get watchSort => 'Tya na molongo';

  @override
  String get watchSortOwn => 'Molongo na ngai';

  @override
  String get watchSortGainers => 'Oyo emati mingi liboso';

  @override
  String get watchSortLosers => 'Oyo ekiti mingi liboso';

  @override
  String get watchSortName => 'Na ticker (A–Z)';

  @override
  String get watchHint =>
      'Benda esimbeli mpo na kobongola molongo, pusa na lobɔkɔ ya mwasi mpo na kolongola. Molɔngɔ ezali kolakisa mikolo 30 oyo eleki.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: botaleli na yo esili.';
  }

  @override
  String alertFromCost(String price) {
    return 'Kolanda ntalo na yo ya katikati ya kosomba ($price):';
  }

  @override
  String get briefTitle => 'Lelo na misolo na yo';

  @override
  String get briefButton => 'Kokesa mokolo ya lelo';

  @override
  String get briefHint =>
      'Bokuse ya AI ya ndenge portefeuille na yo mpe oyo olingaka eningani lelo mpe nini nsango ya sika elobi. Esalelaka botaleli te.';

  @override
  String get briefRefresh => 'Kozongisa sika';

  @override
  String get sectionEarnings => 'Ba résultats ya trimestre';

  @override
  String earningsNext(String date) {
    return 'Rapport oyo ekoya: $date';
  }

  @override
  String get earningsExpected => 'EPS oyo ezelamaki';

  @override
  String get earningsReported => 'EPS oyo eyebisami';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Ekokani to eleki EPS oyo ezelamaki na $beats kati ya ba trimestre $total ya nsuka',
      one:
          'Ekokani to eleki EPS oyo ezelamaki na $beats kati ya trimestre $total',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol ekobimisa ba résultats ya trimestre lobi';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol ezali kobimisa ba résultats ya trimestre lelo';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return 'Dividende ya $symbol ezelami lelo';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Pene na $amount. Koma yango na portefeuille na yo soki ekomi.';
  }

  @override
  String get dividendRemindersTitle => 'Bokundolisi ya dividende';

  @override
  String get dividendRemindersSubtitle =>
      'Liyebisi na mokolo oyo dividende ezelami engebene na ndenge ba futa oyo okomaki eyaka, mpo okoka kokoma yango';

  @override
  String get earningsRemindersTitle => 'Bokundolisi ya ba résultats';

  @override
  String get earningsRemindersSubtitle =>
      'Liyebisi mokolo moko liboso ba actions ya oyo olingaka to ya portefeuille na yo ebimisa ba résultats ya trimestre';

  @override
  String addAllToFavorites(int count) {
    return 'Bakisa nyonso na oyo olingaka ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Kotisa uta na foto ya ekran';

  @override
  String get holdingsReading => 'Ezali kotánga biteni na yo…';

  @override
  String get holdingsReviewTitle => 'Biteni oyo emonani';

  @override
  String get holdingsReviewHint =>
      'Talá mitángo liboso ya kobakisa yango. Ntalo ezali ntalo ya katikati oyo osombaki na yango action moko, kasi ntalo ya lelo te.';

  @override
  String get holdingsNoPrice =>
      'Ntalo ya katikati ya kosomba ezali na elilingi te';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Bakisa biteni $count',
      one: 'Bakisa eteni $count',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Biteni ya ba-action emonani na elilingi oyo te. Meka foto ya ekran ya lokasa ya biteni na yo na application ya courtier na yo.';

  @override
  String get week52Range => 'Bonene ya pɔsɔ 52';

  @override
  String week52BelowHigh(String percent) {
    return '$percent na nse ya likolo ya pɔsɔ 52';
  }

  @override
  String get week52AtHigh => 'Na likolo ya pɔsɔ 52';

  @override
  String get alertKindTrailing => 'Soki ekiti uta na nsɔngɛ';

  @override
  String get alertTrailingPercent => 'Bokiti uta na nsɔngɛ (%)';

  @override
  String get alertTrailingHint =>
      'Elandaka ntalo ntango ezali komata: eyebisaka soki ntalo ekiti boye uta na esika na yango ya likolo koleka banda otiaki yango.';

  @override
  String alertDescTrailing(String percent) {
    return 'Bokiti ya $percent uta na nsɔngɛ';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'nsɔngɛ tii sikawa: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol ekiti $percent uta na nsɔngɛ';
  }

  @override
  String get sectionInsiders => 'Mombongo ya bakambi ya kompani';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kosomba',
      one: '$count kosomba',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count koteka',
      one: '$count koteka',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Nyonso: ba-action $shares';
  }

  @override
  String get insiderBuy => 'Asombaki';

  @override
  String get insiderSell => 'Atekaki';

  @override
  String get insiderHint =>
      'Kosomba mpe koteka na zando ya polele oyo bakambi mpe ba-directeur basalaki na mikolo 90 oyo eleki (SEC Form 4). Kosalela ba-option mpe ba-action oyo bapesi lokola mbano etángami te.';

  @override
  String get insiderNone =>
      'Kosomba to koteka moko te ya bakambi na zando ya polele na mikolo 90 oyo eleki.';

  @override
  String get analystTrend => 'Ndenge makanisi ebongwanaki sanza na sanza';

  @override
  String get watchListAll => 'Nyonso';

  @override
  String get watchListNew => 'Liste ya sika';

  @override
  String get watchListName => 'Nkombo ya liste';

  @override
  String get watchListRename => 'Bongola nkombo ya liste';

  @override
  String get watchListDelete => 'Longola liste';

  @override
  String get watchListAddTo => 'Bakisa na liste';

  @override
  String get watchListEmpty =>
      'Aksio moko te ezali naino na liste oyo. Finá bouton ya liste pembeni ya aksio mpo na kobakisa yango.';

  @override
  String get portfolioAskTitle => 'Mituna na ntina ya portefeuille na yo';

  @override
  String get rangeYtd => 'Mobu oyo';

  @override
  String get backupTitle => 'Kopi ya kobomba';

  @override
  String get backupSave => 'Bomba kopi';

  @override
  String get backupSaveHint =>
      'Oyo olingaka, ba liste, portefeuille, makebisi mpe ba note na yo na fisyé moko.';

  @override
  String get backupRestore => 'Zongisa uta na kopi ya kobomba';

  @override
  String get backupRestoreHint =>
      'Ebakisaka oyo ezali na fisyé; eloko moko te ya oyo ozali na yango sikoyo ekolongwa.';

  @override
  String get backupRestored => 'Kopi ya kobomba ezongisami.';

  @override
  String get backupInvalid =>
      'Fisyé oyo ezali kopi ya kobomba ya WhatStock te.';

  @override
  String get allocationPositions => 'Ba-action';

  @override
  String get allocationSectors => 'Ba-secteur';

  @override
  String get allocationCurrencies => 'Mbɔngɔ';

  @override
  String get allocationAccounts => 'Ba-compte';

  @override
  String get compareReturn1y => 'Litomba ya mbula 1';

  @override
  String get compareFromHigh => 'Uta likolo ya pɔsɔ 52';

  @override
  String get briefAutoTitle => 'Bokuse ya mokolo na mokolo ntɔngɔ nyonso';

  @override
  String get briefAutoSubtitle =>
      '“Lelo na misolo na yo” esalemaka yango moko nsima ya 7:00 ya ntɔngɔ ntango application ezali kosala; na baordinatɛrɛ, liyebisi moko ekoyebisa yo. Esalelaka ndelo ya mituna na yo ya mokolo na mokolo, kasi botaleli te.';

  @override
  String get targetsButton => 'Bokaboli ya mokano';

  @override
  String get targetsTitle => 'Bokaboli ya mokano';

  @override
  String get targetsHint =>
      'Tyá ndambo ya portfolio oyo action moko na moko esengeli kozala na yango. Tiká esika mpamba soki mokano ezali te. Na sima, app ekolakisa nini osengeli kosomba to koteka mpo na kokóma kuna.';

  @override
  String targetsSum(String percent) {
    return 'Nyonso: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Somba ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Teka ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Ekoki mokano';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol eleki EPS oyo ezelamaki';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol ekoki te EPS oyo ezelamaki';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'EPS oyo eyebisami $actual, ezelamaki $estimate';
  }

  @override
  String get newsExplain => 'Yango elakisi nini?';

  @override
  String get watchAlertAll => 'Likebisi mpo na mbongwana monene ya mokɔlɔ';

  @override
  String get watchAlertAllHint =>
      'Likebisi ya ntalo mpo na aksio nyonso na liste oyo: ekobɛta soki eningani boye na mokɔlɔ moko, likoló to na nse. Oyo ezali na likebisi kala ekobatela ya yango.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Makebisi $count etyami',
      one: 'Likebisi $count etyami',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Bimisa matomba oyo ozwi (CSV)';

  @override
  String get portfolioAnnualReturn => 'Litomba ya mobu';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / mobu';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Litomba ya mobu oyo epimami na mbɔngɔ (XIRR): etalaka ntango osombaki mpe otekaki, yango wana mbɔngɔ oyo obakisaki na nsima ebebisaka yango te. Emonisamaka soki bosombi na yo ya liboso ekoki ata mobu moko; ba-dividende ezali kati te.';

  @override
  String get eventsAddToCalendar => 'Bakisa na manaka (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Likebisi ya portefeuille';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Liyebisi ntango portefeuille na yo mobimba eningani boye na mokolo moko.';

  @override
  String get portfolioMoveAlertOff => 'Ekangami';

  @override
  String portfolioMoveUp(String percent) {
    return 'Portefeuille na yo emati $percent lɛlɔ';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Portefeuille na yo ekiti $percent lɛlɔ';
  }

  @override
  String get whatIfTitle => 'Soki otiaki mbɔngɔ?';

  @override
  String get whatIfAmount => 'Motuya';

  @override
  String whatIfResult(String amount, String period) {
    return 'Soki otiaki $amount $period eleki, lelo ekozala na motuya ya';
  }

  @override
  String get whatIfNote =>
      'Etongami kaka na ntalo ya action: ba-dividende, ba-frais mpe mpako ezali te. Matomba ya kala elakisaka te oyo ya mikolo ekoya.';

  @override
  String get watchShare => 'Kabola liste';

  @override
  String get watchImport => 'Bakisa bilembo ya ticker';

  @override
  String get watchImportHint =>
      'Tya bilembo ya ticker oyo ekabwani na virgule, esika ya pamba to molɔngɔ ya sika – na ndakisa, liste oyo moto moko akabolelaki yo.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Baaksyo $count ebakisami',
      one: 'Aksyo $count ebakisami',
      zero: 'Aksyo ya sika ezali te',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Oyo ya monene liboso';

  @override
  String get positionsSortGain => 'Litomba mobimba mingi liboso';

  @override
  String get positionsSortToday => 'Oyo ya malamu lɛlɔ liboso';

  @override
  String get chartMyBuys => 'Bosombi na yo';

  @override
  String get chartMySells => 'Bitɛki na yo';

  @override
  String get shortcutsTitle => 'Ba raccourci ya clavier';

  @override
  String usMarketOpen(String time) {
    return 'Zando ya Amerika efungwami · ekokangama nsima ya $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Zando ya Amerika ekangami · ekofungwama nsima ya $time';
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
    return '$days mikolo $hours h';
  }

  @override
  String get dividendGoalSet => 'Tyá mokano ya dividende na sanza';

  @override
  String get dividendGoalTitle => 'Mokano ya dividende na sanza';

  @override
  String get dividendGoalAmount => 'Dividende na sanza';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Pene na $amount na sanza na rendement ya lelo · $percent · Mokano: $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Pene na $amount na sanza na rendement ya lelo · Okokisi mokano: $goal';
  }

  @override
  String get portfolioAccount => 'Compte';

  @override
  String get portfolioAccountHint => 'ndakisa: TBSZ 2026 (soki olingi)';

  @override
  String get portfolioAccountAdd => 'Lakisa compte';

  @override
  String get portfolioAccountsAll => 'Ba compte nyonso';

  @override
  String get portfolioAccountNote =>
      'Kaka bosombi, boteki mpe ba dividende ya compte oyo. Mbɔngɔ ya mabɔkɔ, mikano mpe analyse ya AI ezali kolakisama na Ba compte nyonso.';

  @override
  String get portfolioNoAccount => 'Na compte te';

  @override
  String portfolioFee(String currency) {
    return 'Frais ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Bakisa frais';

  @override
  String portfolioFeeRow(String amount) {
    return 'Frais: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'Bokuse ya mbula';

  @override
  String get portfolioProceeds => 'Mbongo ya boteki';

  @override
  String get portfolioCostBasis => 'Ntalo ya bosombi';

  @override
  String get portfolioFeesPaid => 'Frais oyo ofutaki';

  @override
  String get portfolioAnnualSummaryNote =>
      'Mbongo ezali na mbongo ya ebandeli, ebongolami te. Mbongo ya boteki elongolami frais ya boteki; ntalo ya bosombi ezali na frais ya bosombi (FIFO). Mpo na déclaration ya mpako na yo, bongola yango na motuya ya mbongo oyo bakonzi ya mpako basɛngaka.';

  @override
  String get portfolioShare => 'Kabola litomba/bobungisi';

  @override
  String get portfolioShareHeading => 'Portefeuille na ngai';

  @override
  String get portfolioTopHoldings => 'Ba-position ya minene';

  @override
  String get portfolioShareNote =>
      'Ba-pourcentage kaka nde ekabolamaka, mbongo te.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Biteni $count',
      one: 'Eteni $count',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'Ezali toli ya kotia mbɔngɔ te';

  @override
  String get contributionButton => 'Tia mbɔngɔ ya sika';

  @override
  String contributionAmount(String currency) {
    return 'Motuya ya kotia ($currency)';
  }

  @override
  String get contributionHint =>
      'Kosomba kaka, koteka te: ba-position oyo etikali mosika mingi na nse ya mokano na yango ekozwa mbɔngɔ liboso.';

  @override
  String contributionShares(String shares) {
    return '≈ ba-action $shares';
  }

  @override
  String contributionMissing(String symbols) {
    return 'Ntalo ya sikoyo ezali te mpo na $symbols: etangami te na bokaboli.';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'Soki litomba ya mobu etikali ndenge wana ($rate), okokokisa mokano pene na mobu $year.';
  }

  @override
  String get portfolioMaxDrawdown => 'Kokita ya monene koleka';

  @override
  String get glossMaxDrawdown =>
      'Kokita ya monene koleka ya motuya ya ba-action na yo, longwa na likolo moko ya liboso kino na nse moko ya nsima, kozanga kotánga bosombi mpe boteki na yo (epimami na ntango). Emonisaka ndenge portefeuille na yo esilaki kokita na mozindo.';

  @override
  String watchSince(String date) {
    return 'Banda obakisaki yango na oyo olingaka ($date)';
  }

  @override
  String get portfolioSampleTry => 'Meka na portefeuille ya ndakisa';

  @override
  String get portfolioSampleBanner =>
      'Oyo ezali portefeuille ya ndakisa. Bakisa biloko osombaki yo moko pembeni na yango, to longola yango.';

  @override
  String get portfolioSampleRemove => 'Longola ndakisa';

  @override
  String get portfolioStopsAll =>
      'Likebisi ya bokiti uta na nsɔngɛ mpo na biteni nyonso';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Makebisi $count etyami',
      one: 'Likebisi $count etyami',
      zero: 'Eteni nyonso esili kozala na likebisi oyo',
    );
    return '$_temp0';
  }

  @override
  String portfolioSinceSale(String percent) {
    return '$percent banda oteki yango';
  }

  @override
  String get lotPreviewRealized => 'Litomba ya solo na boteki oyo (FIFO):';

  @override
  String lotPreviewAverage(String after, String before) {
    return 'Ntalo ya sika ya katikati: $after (sikoyo $before)';
  }

  @override
  String get portfolioYtdReturn => 'Litomba ya mbula oyo';

  @override
  String get glossTwrYtd =>
      'Litomba epimami na ntango banda ebandeli ya mbula (to banda bosombi na yo ya liboso, soki esalemaki na mbula oyo): mokolo moko na moko etángaka mbongwana ya ba-action oyo ozalaki na yango na mokolo yango, mpe mikolo ekangisami moko na mosusu – mbongo oyo otyaka to obimisaka ezali litomba te, yango wana ekoki kokokanisama na indice moko. Na nse: indice oyo eponami na eleko kaka wana.';

  @override
  String alertDistance(String price, String percent) {
    return 'Sikoyo $price · etikali $percent';
  }

  @override
  String get watchSortSince => 'Na bobongwani banda ebakisamaki';

  @override
  String get portfolioTodayMovers => 'Oyo eningani mingi lɛlɔ:';

  @override
  String get lotNoteAdd => 'Bakisa note';

  @override
  String get lotNoteBuyHint =>
      'Mpo na nini ozali kosomba? Ekokɔta na ba note ya action, elongo na mokɔlɔ.';

  @override
  String get lotNoteSellHint =>
      'Mpo na nini ozali koteka? Ekokɔta na ba note ya action, elongo na mokɔlɔ.';

  @override
  String get lotNoteBought => 'Esombami';

  @override
  String get positionHeld => 'Ntango ya kosimba';

  @override
  String durationMonths(int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: 'sanza $months',
      one: 'sanza $months',
    );
    return '$_temp0';
  }

  @override
  String durationDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'mikɔlɔ $days',
      one: 'mokɔlɔ $days',
    );
    return '$_temp0';
  }

  @override
  String positionHeldSince(String date) {
    return 'banda $date';
  }

  @override
  String lotPreviewWeight(String after, String before) {
    return 'Ndambo ya portfolio na sima: $after (sikoyo $before)';
  }

  @override
  String lotFromCash(String amount) {
    return 'Futa na mbɔngɔ ya mabɔkɔ (sikoyo $amount)';
  }

  @override
  String lotToCash(String amount) {
    return 'Bakisa na mbɔngɔ ya mabɔkɔ (sikoyo $amount)';
  }

  @override
  String get onboardTitle4 => 'Landa portefeuille na yo';

  @override
  String get onboardBody4 =>
      'Kotisa export ya broker na yo (Revolut, Trading 212, IBKR, DEGIRO, Schwab…) to bakisa bosombi mpe boteki na maboko: talá litomba na yo pembeni ya indice moko, ba dividende na yo mpe bokuse ya mbula mpo na declaration ya mpako.';

  @override
  String get lotEdit => 'Bongola';

  @override
  String lotEditTitle(String symbol) {
    return 'Bongola bosombi to boteki · $symbol';
  }

  @override
  String get lotSave => 'Bomba';

  @override
  String dividendEditTitle(String symbol) {
    return 'Bongola dividende · $symbol';
  }

  @override
  String get activityTitle => 'Bosombi mpe boteki nyonso';

  @override
  String get activitySearchHint => 'Pona na ticker';

  @override
  String get activityNoMatch =>
      'Bosombi to boteki moko te ekokani na oyo oponi.';

  @override
  String portfolioImportDuplicates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count esilaki kokomama, ebakisami te',
      one: '$count esilaki kokomama, ebakisami te',
    );
    return '$_temp0';
  }

  @override
  String get portfolioGoalSet => 'Tyá mokano';

  @override
  String get portfolioGoalTitle => 'Mokano ya portefeuille';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · Mokano: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Okokisi mokano: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Longola mokano';

  @override
  String get alertEdit => 'Bongola likebisi';

  @override
  String get positionOpenLots => 'Ezali naino na yo (ya kala liboso)';

  @override
  String get lotRemoved => 'Bosombi to boteki elimwisami';

  @override
  String get alertDeleted => 'Likebisi elimwisami';

  @override
  String get alertsClearTriggered => 'Limwisa makebisi oyo esalaki';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Makebisi $count elimwisami',
      one: 'Likebisi $count elimwisami',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Lokasa ya liboso';

  @override
  String get allocationCountries => 'Mikili';

  @override
  String get newsExplainNoteResearch =>
      'Ndimbola ya AI: eluki makambo ya solo na Internet, efungoli lisolo mpe etali soki source yango ekoki kotyelama motema boni. Ezali toli ya kotia mbɔngɔ te. Esalelaka ndelo ya mituna na yo ya mokolo na mokolo, kasi botaleli te.';

  @override
  String get sourceOfficial => 'Ofisiele';

  @override
  String get sourcePressRelease => 'Liyebisi';

  @override
  String get sourceMajorNews => 'Zulunalo monene';

  @override
  String get sourceOpinion => 'Likanisi';

  @override
  String get earningsSummaryButton => 'Nini ezalaki na rapport ya suka?';

  @override
  String get earningsSummaryNote =>
      'Bokuse ya AI ya liyebisi ya ba résultats ya kompani mpe ya mikanda ya bapanzi-nsango oyo ezwi na Internet. Ezali toli ya kotia mbɔngɔ te. Esalelaka ndelo ya mituna na yo ya mokolo na mokolo, kasi botaleli te.';

  @override
  String get compareLastSurprise => 'EPS ya trimestre eleki vs oyo ezelamaki';

  @override
  String get compareNextReport => 'Rapport oyo ekoya';

  @override
  String get resolvingDescription => 'Ezali koluka action oyo olingi koloba…';

  @override
  String get instrumentTitle => 'Na ntina ya esaleli oyo';

  @override
  String get instrumentHint =>
      'Profil ya kompani ezali te mpo na elembo oyo – ekoki kozala ETF, fonds to mokanda ya dépôt. Tuna AI yango ezali nini, nini ezali na kati mpe ntalo na yango ezali boni.';

  @override
  String get instrumentAsk => 'Oyo ezali nini?';

  @override
  String get instrumentNote =>
      'Ndimbola ya AI oyo euti na lokasa ya fonds ya mobimisi mpe na ba site ya mbɔngɔ oyo ezwi na Internet. Ezali toli ya kotia mbɔngɔ te. Esalelaka ndelo ya mituna na yo ya mokolo na mokolo, kasi botaleli te.';

  @override
  String suggestAskAi(String query) {
    return 'Tuna AI: « $query »';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Ntalo ya sikoyo ezali te mpo na $symbols.';
  }

  @override
  String get eventsRecentResults => 'Ba résultats ya sika';

  @override
  String get saveToNotes => 'Bomba na ba note na ngai';

  @override
  String get savedToNotes => 'Ebombami na ba note na yo';

  @override
  String get portfolioDividendsReceived => 'Ba dividende oyo ozwaki';

  @override
  String get portfolioDividendsThisYear => 'Mbula oyo';

  @override
  String get portfolioDividendsAllTime => 'Ntango nyonso';

  @override
  String get portfolioAddDividend => 'Bakisa dividende';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Mbongo oyo ozwaki ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Mokolo ya kofuta';

  @override
  String get portfolioDividendsEmpty =>
      'Dividende moko te ekomami naino. Bakisa yango na maboko, to kotisa export ya broker na yo – ba ligne na yango ya dividende ekozwama mpe.';

  @override
  String get portfolioSplit => 'Bokabolami ya ba share';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Bokabolami ya ba share: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Kosomba mpe koteka oyo esalemaki liboso ya bokabolami ebongisami: motango ya ba share ebakisami mpe ntalo ya share moko ekabolami, yango wana mbongo oyo ofutaki ebongwani te.';

  @override
  String get portfolioSplitRatio => 'Emekeli (ya sika : ya kala)';

  @override
  String get portfolioSplitRatioError =>
      'Koma emekeli lokola 10:1, to 1:10 mpo na bokabolami ya kozongisa.';

  @override
  String get portfolioSplitDate => 'Mokolo ya bokabolami';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Bokabolami ya ba share $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Bokabolami ya ba share elongolami';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Bokabolami ya ba share $count ebakisami',
      one: 'Bokabolami ya ba share $count ebakisami',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ba dividende $count ebakisami',
      one: 'Dividende $count ebakisami',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Bimisa ba dividende (CSV)';

  @override
  String get portfolioDividendDeleted => 'Dividende elongolami';

  @override
  String get portfolioDividendsHint =>
      'Mbongo ndenge ekómaki na compte na yo, na mbongo ya kofuta; ba total ebongwanaka na ntalo ya lelo. Mpo na déclaration ya mpako na yo, salela relevé ya broker na yo.';

  @override
  String get awayTitle => 'Ntango ozalaki te';

  @override
  String awaySince(String when) {
    return 'Banda $when';
  }

  @override
  String get awayQuiet => 'Eloko moko te ebongwanaki mingi.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Makebisi $count ebimaki',
      one: 'Likebisi $count ebimaki',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Babimisi ba résultats na bango: $symbols';
  }

  @override
  String get moveWhyButton => 'Mpo na nini ezali kobongwana lelo?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent lelo';
  }

  @override
  String get moveWhyNote =>
      'Ndimbola ya AI euti na basango ya lelo oyo ezwamaki na internet; ntina ya solo ekoki koyebana te to kozala mosusu. Ezali toli ya kotia mbongo te. Esalelaka motango na yo ya mituna ya mokolo na mokolo, kasi analyse te.';

  @override
  String get sectionTechnical => 'Elilingi ya tekiniki';

  @override
  String get labelSma50 => 'Katikati ya mikolo 50';

  @override
  String get labelSma200 => 'Katikati ya mikolo 200';

  @override
  String get labelRsi => 'RSI (mikolo 14)';

  @override
  String get labelVolatility30 => 'Bobongwani ya ntalo (mikolo 30)';

  @override
  String techAbove(String percent) {
    return '$percent likoló';
  }

  @override
  String techBelow(String percent) {
    return '$percent na nse';
  }

  @override
  String get techOverbought => 'esombami mingi';

  @override
  String get techOversold => 'etekami mingi';

  @override
  String get techNeutral => 'na katikati';

  @override
  String get techGoldenCross =>
      'Katikati ya mikolo 50 ezali likoló ya katikati ya mikolo 200 – na ndenge ya kotánga ya kala, ezali nzela ya komata.';

  @override
  String get techDeathCross =>
      'Katikati ya mikolo 50 ezali na nse ya katikati ya mikolo 200 – na ndenge ya kotánga ya kala, ezali nzela ya kokita.';

  @override
  String get glossSma50 =>
      'Katikati ya ntalo ya nsuka ya mikolo 50 ya zando ya suka. Ntalo oyo ezali likoló na yango etalelamaka mbala mingi lokola makasi ya ntango mokuse, oyo ezali na nse lokola bolembu.';

  @override
  String get glossSma200 =>
      'Katikati ya ntalo ya nsuka ya mikolo 200 ya zando ya suka – molongo ya nzela ya ntango molai ya kala. Bato mingi oyo batyaka mbongo batalelaka ntalo oyo ezali likoló na yango lokola nzela ya komata ya ntango molai.';

  @override
  String get glossRsi =>
      'Emekeli ya makasi ya kokokanisa (RSI): ekokanisaka matomba ya mikolo oyo na bobungisi ya mikolo oyo na emekeli ya 0–100. Likoló ya 70 balobaka mbala mingi ete action esombami mingi (emataki noki), na nse ya 30 etekami mingi – kasi nzela ya makasi ekoki kotikala wana ntango molai.';

  @override
  String get glossVolatility =>
      'Ndenge ntalo ebongwanaka mokolo na mokolo, etángami na mbula moko: 20% elingi koloba ete na mbula ya momeseno ntalo etambolaka na kati ya ±20%. Bobongwani monene elingi koloba botamboli monene na ngámbo nyonso mibale.';

  @override
  String get techNote =>
      'Etángami uta na ntalo ya nsuka ya mokolo na mokolo. Bilembo ya tekiniki elobelaka makambo oyo eleki, kasi te oyo ekoya.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$above kati na ba-position $count ezali likoló ya katikati ya mikolo 200 na yango';
  }

  @override
  String get watchSignalsTitle => 'Bilembo';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · etekami mingi';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · esombami mingi';
  }

  @override
  String get signalCrossedAbove => 'emati likoló ya katikati ya mikolo 200';

  @override
  String get signalCrossedBelow => 'ekiti na nse ya katikati ya mikolo 200';

  @override
  String get signalAlertsTitle => 'Liyebisi ya bilembo ya tekinike';

  @override
  String get signalAlertsSubtitle =>
      'Mbala moko na mokolo, ntango action oyo ozali kolanda etekami mingi to esombami mingi (RSI), to ntalo na yango eleki katikati ya mikolo 200.';

  @override
  String get signalAlertsNotification => 'Bilembo ya tekinike';

  @override
  String get glossaryPageTitle => 'Ndimbola ya maloba';

  @override
  String get glossaryPageSubtitle =>
      'Ndimbola ya pete ya motángo nyonso oyo app ezali kolakisa, banda na P/E tii na RSI';

  @override
  String get glossarySearchHint => 'Luka na ndimbola ya maloba';

  @override
  String get portfolioCash => 'Mbɔngɔ ya mabɔkɔ';

  @override
  String get portfolioCashTitle => 'Mbɔngɔ ya mabɔkɔ etikali';

  @override
  String get portfolioCashHint =>
      'Mbɔngɔ oyo otiaki naino te na mombongo epai ya broker na yo, na mbɔngɔ mokomoko. Etangami na motuya mobimba mpe na bokaboli; etangami te na litomba.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Motuya ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Tiá mbɔngɔ ya mabɔkɔ';

  @override
  String get portfolioDividendsByMonth => 'Na sanza';

  @override
  String get dividendsLegendReceived => 'Oyo ezwami';

  @override
  String get dividendsLegendExpected => 'Oyo ezelami';

  @override
  String get portfolioDividendsExpected => 'Ezelami na nsima';

  @override
  String get portfolioDividendsExpectedNote =>
      'Etangami na mikolo mpe na motango ya mbongo ya bafuti oyo okomaki; ba kompanyi ekoki kobongola yango to kotika yango.';

  @override
  String portfolioDividendAround(String date) {
    return 'pene na $date';
  }
}
