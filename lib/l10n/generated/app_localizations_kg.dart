// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kongo (`kg`).
class AppLocalizationsKg extends AppLocalizations {
  AppLocalizationsKg([String locale = 'kg']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'Baka foto ya action ye zaya mambu mawonso ma yau.';

  @override
  String get homeHint =>
      'Nkanda ya action, écran ya application ya bourse, zulunalu yovo logo ya kompani – konso kima kilenda songa action.';

  @override
  String get takePhoto => 'Baka foto';

  @override
  String get chooseFromGallery => 'Sola mu galerie';

  @override
  String get chooseImage => 'Sola kifwani';

  @override
  String get enterTickerManually => 'Soneka ticker ngeye kibeni';

  @override
  String get tickerInputLabel => 'Kidimbu kia ticker';

  @override
  String get tickerInputHint => 'mbandu: AAPL';

  @override
  String get lookUp => 'Tomba';

  @override
  String demoModeBanner(String symbols) {
    return 'Mode démo – ka kuena nsabi ya ntalu za zandu ko. Ntalu za mbandu zina kaka mu: $symbols.';
  }

  @override
  String get recognizing => 'Kutadila kifwani…';

  @override
  String get loadingData => 'Kutambula ntalu…';

  @override
  String get noCandidatesTitle => 'Ka tumweni action ko';

  @override
  String get noCandidatesBody =>
      'Ka tulendi zaya action mu kifwani kiaki ko. Meka foto yimonikanga mbote, yovo soneka ticker ngeye kibeni.';

  @override
  String get whatWeSaw => 'Mana tumweni';

  @override
  String get chooseCandidateTitle => 'Action nki uzolele?';

  @override
  String confidencePercent(int percent) {
    return 'Lukwikilu $percent%';
  }

  @override
  String get settings => 'Paramètres';

  @override
  String get language => 'Ndinga';

  @override
  String get systemLanguage => 'Ndinga ya système';

  @override
  String get about => 'Mambu ma application';

  @override
  String get disclaimer =>
      'Application yayi ivananga nsangu kaka; ka ivananga malongi ma kutula mbongo ko. Ntalu zilenda kwiza na nima yovo kukambwa kieleka.';

  @override
  String dataSource(String source) {
    return 'Ntuku ya ntalu: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Kuzaya kifwani: $source';
  }

  @override
  String get retry => 'Meka diaka';

  @override
  String get cancel => 'Bika';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Zibika';

  @override
  String get errorGeneric => 'Diambu dimosi ka dienda mbote ko.';

  @override
  String get errorSectionUnavailable => 'Ka tulendi monisa kitini kiaki ko.';

  @override
  String get notAvailable => 'ka kuena ko';

  @override
  String get sectionIdentity => 'Bidimbu bia action';

  @override
  String get sectionPrice => 'Ntalu';

  @override
  String get sectionValuation => 'Kuteza ntalu';

  @override
  String get sectionFinancials => 'Mambu ma mbongo';

  @override
  String get sectionDividend => 'Dividende';

  @override
  String get sectionProfile => 'Nsangu za kompani';

  @override
  String get sectionAnalysts => 'Mabanza ma analyste';

  @override
  String get sectionNews => 'Nsangu';

  @override
  String get sectionRecognition => 'Mpila tuzeyi action';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Bourse';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Mbongo';

  @override
  String get labelCountry => 'Nsi';

  @override
  String get labelIndustry => 'Industrie';

  @override
  String get labelSector => 'Secteur';

  @override
  String get labelWebsite => 'Site web';

  @override
  String get labelIpoDate => 'Kilumbu kia IPO';

  @override
  String get labelMarketCap => 'Ntalu ya kompani mu bourse';

  @override
  String get labelSharesOutstanding => 'Action zina mu zandu';

  @override
  String get labelEmployees => 'Bantu ba kisalu';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Siège';

  @override
  String get labelDescription => 'Ntendulu';

  @override
  String get labelLastPrice => 'Ntalu ya nsuka';

  @override
  String get labelChange => 'Nsoba';

  @override
  String get labelOpen => 'Ntalu ya ntete';

  @override
  String get labelDayHigh => 'Ntalu ya zulu ya kilumbu';

  @override
  String get labelDayLow => 'Ntalu ya nsi ya kilumbu';

  @override
  String get labelPreviousClose => 'Ntalu ya nsuka ya kilumbu kiaviokele';

  @override
  String get labelWeek52High => 'Ntalu ya zulu ya lumingu 52';

  @override
  String get labelWeek52Low => 'Ntalu ya nsi ya lumingu 52';

  @override
  String get labelAverageVolume10d => 'Volume ya kati (bilumbu 10)';

  @override
  String updatedAt(String time) {
    return 'Mise à jour: $time';
  }

  @override
  String get labelPeTrailing => 'P/E (ya nima)';

  @override
  String get labelPeForward => 'P/E (ya ntwala)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / cash flow ya kusiala';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Bêta';

  @override
  String get labelRevenueTtm => 'Mbongo zikota (TTM)';

  @override
  String get labelNetIncomeTtm => 'Mbakulu ya nsuka (TTM)';

  @override
  String get labelGrossMargin => 'Marge brute';

  @override
  String get labelOperatingMargin => 'Marge opérationnelle';

  @override
  String get labelNetMargin => 'Marge nette';

  @override
  String get labelRoe => 'Mbakulu mu fonds propres (ROE)';

  @override
  String get labelRoa => 'Mbakulu mu kimvwama (ROA)';

  @override
  String get labelDebtToEquity => 'Mfuka / fonds propres';

  @override
  String get labelCurrentRatio => 'Ratio ya liquidité';

  @override
  String get labelRevenueGrowth => 'Kukula kwa mbongo zikota (YoY)';

  @override
  String get labelEpsGrowth => 'Kukula kwa EPS (YoY)';

  @override
  String get labelDividendYield => 'Rendement ya dividende';

  @override
  String get labelDividendPerShare => 'Dividende mu action mosi';

  @override
  String get labelPayoutRatio => 'Kitini kia mbakulu kikabulwa';

  @override
  String get labelConsensus => 'Mabanza ma bawonso';

  @override
  String get ratingStrongBuy => 'Sumba ye ngolo';

  @override
  String get ratingBuy => 'Sumba';

  @override
  String get ratingHold => 'Lunda';

  @override
  String get ratingSell => 'Teka';

  @override
  String get ratingStrongSell => 'Teka ye ngolo';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'analyste $count',
      one: 'analyste 1',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Ntangu: $period';
  }

  @override
  String get noNews => 'Ka kuena nsangu za mpa ko.';

  @override
  String get openArticle => 'Zibula nkanda';

  @override
  String get openLinkFailed => 'Ka tulendi zibula lien ko.';

  @override
  String get recognitionSummary => 'Mu nkufi';

  @override
  String get recognitionEvidence => 'Kuma tubanzidi bobo';

  @override
  String get recognitionRawText => 'Masono matangwa mu kifwani';

  @override
  String get errMissingAnthropicKey =>
      'Kuzaya bifwani ka kuyidikwa ko (ka kuena ANTHROPIC_API_KEY ko). Soneka ticker ngeye kibeni.';

  @override
  String get errRecognitionUnreachable =>
      'Ka tulendi kuma ku service ya kuzaya bifwani ko. Tala vo internet aku isalanga.';

  @override
  String errRecognitionHttp(String status) {
    return 'Service ya kuzaya bifwani ivutudi erreur (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Service ya kuzaya bifwani ka ilendi sadila kifwani kiaki ko.';

  @override
  String get errRecognitionTruncated =>
      'Mvutu ya service ya kuzaya bifwani izengwa. Meka diaka.';

  @override
  String get errRecognitionBadResponse =>
      'Service ya kuzaya bifwani ivutudi mvutu yina ka tuvingila ko.';

  @override
  String get errRecognitionEmpty =>
      'Service ya kuzaya bifwani ivutudi mvutu ya mpamba.';

  @override
  String get errMissingFinnhubKey =>
      'Ntalu za zandu ka ziyidikwa ko (ka kuena FINNHUB_API_KEY ko).';

  @override
  String get errMarketUnreachable =>
      'Ka tulendi kuma ku service ya ntalu za zandu ko. Tala vo internet aku isalanga.';

  @override
  String get errMarketRateLimited =>
      'Tulombele mbala mingi beni ku service ya ntalu za zandu. Vingila minuti mosi.';

  @override
  String errMarketHttp(String status) {
    return 'Service ya ntalu za zandu ivutudi erreur (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Service ya ntalu za zandu ivutudi mvutu yina ka tuvingila ko.';

  @override
  String errNoQuote(String symbol) {
    return 'Ka tumweni ntalu ya $symbol ko.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Ka tumweni nsangu za kompani ya $symbol ko.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Mode démo itambulanga kaka $symbols. Yika FINNHUB_API_KEY mu baka ntalu za ntangu yayi.';
  }

  @override
  String errUnknown(String detail) {
    return 'Diambu dimosi ka dienda mbote ko: $detail';
  }

  @override
  String get newSearch => 'Tomba diaka';

  @override
  String get recentSearches => 'Mana utombele';

  @override
  String get noRecentSearches => 'Nate wau ka utombele kima ko.';

  @override
  String get clearRecent => 'Zimbisa mana utombele';

  @override
  String get greeting => 'Action nki tutala?';

  @override
  String get searchHint => 'Ticker yovo nkumbu ya kompani';

  @override
  String get attachImage => 'Yika kifwani';

  @override
  String get searchResultsTitle => 'Mana tubakidi';

  @override
  String errNoResults(String query) {
    return 'Ka tumweni action ko mu « $query ».';
  }

  @override
  String get quickBarHint => 'Soneka ticker yovo nkumbu ya kompani…';

  @override
  String get openFullWindow => 'Zibula nela';

  @override
  String hotkeyHint(String shortcut) {
    return 'Fina $shortcut konso fulu mu kubokila WhatStock.';
  }

  @override
  String get trayOpen => 'Zibula WhatStock';

  @override
  String get trayQuickSearch => 'Tomba nswalu';

  @override
  String get trayQuit => 'Basika';

  @override
  String get appearance => 'Mpila ya kumonika';

  @override
  String get themeSystem => 'Système';

  @override
  String get themeDark => 'Tombe';

  @override
  String get themeLight => 'Mwini';

  @override
  String get back => 'Vutuka';

  @override
  String get aiSectionTitle => 'Analyse ya AI';

  @override
  String get aiIntro =>
      'Ntendulu ya mvimba yina AI isonekene: nsangu za mpa mu nkufi, kisalu kia kompani, ngolo, mpasi zilenda kwiza ye mambu masweka, ntalu, mpila ntalu ilenda kwenda ye mbandu za mambu mu mpila ya psychologie, sociologie, technique ye macro-économie, ye mambu ma kutala.';

  @override
  String get aiGenerate => 'Vanga analyse';

  @override
  String get aiRegenerate => 'Vanga diaka';

  @override
  String get aiGenerating =>
      'Tueti yidika analyse… ilenda baka minuti mosi yovo zole.';

  @override
  String get aiSources => 'Ntuku';

  @override
  String aiGeneratedAt(String time) {
    return 'Ivangwa $time';
  }

  @override
  String get aiDisclaimer =>
      'Analyse yivangwa kwa AI mu ntalu za bantu bawonso ye nsangu za mpa. Ilenda kala ye mambu ka mena ma kieleka ko yovo kukala ya nkulu, ye ka ivananga malongi ma kutula mbongo ko.';

  @override
  String get errAiNotConfigured =>
      'Analyse ya AI ka iyidikwa ko (ka kuena ANTHROPIC_API_KEY ko).';

  @override
  String get errAiUnreachable =>
      'Ka tulendi kuma ku service ya AI ko. Tala vo internet aku isalanga.';

  @override
  String errAiHttp(String status) {
    return 'Service ya AI ivutudi erreur (HTTP $status).';
  }

  @override
  String get errAiRefused =>
      'Service ya AI ka izolele vanga analyse ya action yayi ko.';

  @override
  String get errAiBadResponse =>
      'Service ya AI ivutudi mvutu yina ka tuvingila ko.';

  @override
  String get sectionChart => 'Graphique ya ntalu';

  @override
  String get rangeOneWeek => 'Lumingu 1';

  @override
  String get rangeOneMonth => 'Ngonda 1';

  @override
  String get rangeThreeMonths => 'Ngonda 3';

  @override
  String get rangeOneYear => 'Mvu 1';

  @override
  String get rangeFiveYears => 'Mivu 5';

  @override
  String get chartUnavailable =>
      'Ntalu za ntama ka zina mu ntuku ya ntalu yayi ko.';

  @override
  String get sectionStatements => 'Rapport za mbongo (mvu ye mvu)';

  @override
  String get labelFiscalYear => 'Mvu wa mbongo';

  @override
  String get labelRevenue => 'Mbongo zikota';

  @override
  String get labelNetIncome => 'Mbakulu ya nsuka';

  @override
  String get labelTotalAssets => 'Kimvwama kiawonso';

  @override
  String get labelTotalLiabilities => 'Mfuka zawonso';

  @override
  String get labelEquity => 'Fonds propres';

  @override
  String get labelOperatingCashFlow => 'Cash flow ya kisalu';

  @override
  String get statementsUnavailable =>
      'Rapport za mbongo ka zina mu action yayi ko.';

  @override
  String get launchAtLogin => 'Zibula ntangu ya kukota';

  @override
  String get hotkeyLabel => 'Raccourci ya clavier';

  @override
  String get hotkeyRecordHint => 'Fina vava, bosi fina touche za mpa';

  @override
  String get hotkeyReset => 'Vutula ya ntete';

  @override
  String get pasteImage => 'Tula kifwani kia presse-papiers';

  @override
  String get errClipboardNoImage => 'Ka kuena kifwani mu presse-papiers ko.';

  @override
  String get favorites => 'Bizolwa';

  @override
  String get addToFavorites => 'Yika mu bizolwa';

  @override
  String get removeFromFavorites => 'Katula mu bizolwa';

  @override
  String get noFavorites =>
      'Nate wau ka kuena bizolwa ko. Fina mbwetete ya action mu kuyika yau.';

  @override
  String get displayCurrency => 'Mbongo ya kumonisa';

  @override
  String get displayCurrencyNone => 'Kaka mbongo ya action yau kibeni';

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
  String get autoUpdate => 'Tula mise à jour automatiquement';

  @override
  String get checkForUpdates => 'Tomba mise à jour';

  @override
  String get updateChecking => 'Kutomba mise à jour…';

  @override
  String get updateUpToDate => 'Wena ye version ya mpa beni.';

  @override
  String updateAvailable(String version) {
    return 'Version $version imonikidi.';
  }

  @override
  String get updateDownloading => 'Kukulumuna mise à jour na nima…';

  @override
  String get updateDownloaded =>
      'Mise à jour ikubama. Banda diaka mu kuyitula.';

  @override
  String get updateNow => 'Mise à jour';

  @override
  String get restartNow => 'Banda diaka';

  @override
  String get updatesViaStore =>
      'Mise à jour zikwizanga kaka mu nzila ya store ya application.';

  @override
  String get updateCheckFailed => 'Ka tulendi tomba mise à jour ko.';

  @override
  String get subscription => 'Abonnement';

  @override
  String get planTrial => 'Kumeka';

  @override
  String get planNormal => 'Ya ntete';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Ka kuena forfait ko';

  @override
  String planAnalysesPerMonth(int count) {
    return 'Analyse $count mu ngonda';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Kumeka ya mpamba ya bilumbu $days ye analyse $count';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Bisidi bilumbu $days bia kumeka',
      one: 'Kisidi kilumbu 1 kia kumeka',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Kumeka kwaku kwa mpamba kusukidi. Sola forfait mu kulanda vanga analyse.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Analyse $remaining zisidi mu $total mu ntangu yayi';
  }

  @override
  String extraCredits(int count) {
    return 'Analyse $count za kuyika';
  }

  @override
  String renewsOn(String date) {
    return 'Ibanda diaka $date';
  }

  @override
  String get choosePlan => 'Sola forfait';

  @override
  String get currentPlan => 'Forfait aku ya wau';

  @override
  String get subscribe => 'Kota mu abonnement';

  @override
  String get perMonth => '/ ngonda';

  @override
  String get extraPacksTitle => 'Uzolele mingi? Sumba analyse za kuyika';

  @override
  String get extraPacksHint =>
      'Analyse za kuyika ka zisukanga ko; zisadilwanga bosi kitini kiaku kia ngonda kisukidi.';

  @override
  String get buy => 'Sumba';

  @override
  String get restorePurchases => 'Vutula mana usumbidi';

  @override
  String get manageSubscription => 'Twadisa abonnement';

  @override
  String get purchaseSuccess => 'Matondo! Mana usumbidi mabandidi kusala.';

  @override
  String get purchasePending => 'Kusumba kweti vingila…';

  @override
  String get purchaseFailed => 'Kusumba ka kulendi suka ko.';

  @override
  String get purchaseCanceled => 'Kusumba kubikwa.';

  @override
  String get billingUnavailable =>
      'Kusumba ka kuena nate wau mu plateforme yayi ko. Kota mu abonnement mu telefone aku yovo Mac; forfait aku isalanga mu bisadilu biaku biawonso.';

  @override
  String get errQuotaExceeded =>
      'Ka kusidi analyse ko mu ntangu yayi. Tombula forfait aku yovo sumba analyse za kuyika.';

  @override
  String get errTrialExpired =>
      'Kumeka kwaku kwa mpamba kusukidi. Sola forfait mu kulanda.';

  @override
  String get errNoPlan =>
      'Forfait yina isalanga ifwete kala mu kuvanga analyse ya AI.';

  @override
  String get viewPlans => 'Tala forfait';

  @override
  String get usageTitle => 'Kusadila';

  @override
  String get demoPurchaseNote =>
      'Kufuta kwa démo: kusumba mu plateforme yayi i kwa kusakana kaka.';

  @override
  String get mostPopular => 'Yina bantu bazolanga beni';

  @override
  String get bestValue => 'Ntalu ya mbote beni';

  @override
  String get planFeaturesCommon =>
      'Kuzaya foto, ntalu za ntangu yayi, graphique, bizolwa ye ndinga 120 zawonso zina mu konso forfait. Kitini kia ngonda kitadidi kaka analyse za AI.';

  @override
  String get searchLanguages => 'Tomba ndinga…';

  @override
  String get noLanguageMatch => 'Ka kuena ndinga ifwanene ko.';

  @override
  String get aiSettings => 'Analyse ya AI';

  @override
  String get aiLength => 'Unda';

  @override
  String get aiDepthBrief => 'Nkufi';

  @override
  String get aiDepthStandard => 'Ya kati';

  @override
  String get aiDepthDeep => 'Ya nda';

  @override
  String get aiDepthBriefDesc => 'Mambu ma mfunu, nswalu.';

  @override
  String get aiDepthStandardDesc => 'Rapport ya mvimba ye bitini biawonso.';

  @override
  String get aiDepthDeepDesc =>
      'Kutomba mingi mu internet, kufwanikisa ye kompani zankaka ye mambu mingi.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Bonso mvovo $min–$max';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'isadilanga analyse $count',
      one: 'isadilanga analyse 1',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Niveau ya ntangi';

  @override
  String get aiReaderBeginner => 'Nlongoki';

  @override
  String get aiReaderExperienced => 'Nzayi';

  @override
  String get aiReaderBeginnerDesc =>
      'Ndinga ya pwelele; konso mvovo wa technique utendulwanga.';

  @override
  String get aiReaderExperiencedDesc =>
      'Masono ma ngolo, ye mivovo mia finance mizayakana.';

  @override
  String get aiCounterArgument => 'Diambu dia ngolo beni dia kukakidila';

  @override
  String get aiCounterArgumentDesc =>
      'Ntendulu ya nkufi isukanga ntangu yawonso ye diambu dia ngolo beni dia kukakidila nsukisa andi kibeni.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Nate mbala $count ya kutomba mu internet mu analyse mosi ye forfait aku',
      one: 'Nate mbala 1 ya kutomba mu internet mu analyse mosi ye forfait aku',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Mu unda wa kati, mu kulanda forfait: Ya ntete $normal, Pro $pro, Max $max, Ultra $ultra. « Nkufi » ikatulanga 2, « Ya nda » iyikanga 2.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'nate mbala $count ya kutomba mu internet',
      one: 'nate mbala 1 ya kutomba mu internet',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mbala $count ya kutomba mu internet mu analyse mosi',
      one: 'Mbala 1 ya kutomba mu internet mu analyse mosi',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Unda usolele ufwete analyse $needed, kansi zisidi kaka $left. Sola unda wa nkufi mu Paramètres yovo baka analyse zankaka.';
  }

  @override
  String get outlookMarketMood => 'Ntima wa zandu';

  @override
  String get moodVeryPessimistic => 'Kivuvu fioti beni';

  @override
  String get moodPessimistic => 'Kivuvu fioti';

  @override
  String get moodNeutral => 'Ya kati';

  @override
  String get moodOptimistic => 'Ye kivuvu';

  @override
  String get moodVeryOptimistic => 'Ye kivuvu kiayingi';

  @override
  String get scenarioBull => 'Scénario ya kutombuka';

  @override
  String get scenarioBase => 'Scénario ya kati';

  @override
  String get scenarioBear => 'Scénario ya kukulumuka';

  @override
  String outlookCurrentPrice(String price) {
    return 'Ntalu ya wau: $price';
  }

  @override
  String get outlookKeyLevels => 'Niveau za mfunu';

  @override
  String get keyLevelSupport => 'Support';

  @override
  String get keyLevelResistance => 'Résistance';

  @override
  String get keyLevelAnchor => 'Ancrage';

  @override
  String get upcomingEvents => 'Mambu ma kwiza';

  @override
  String get outlookChartNote =>
      'Ndilu za mbandu kaka. Mabanza ma mpila mambu malenda kala, ka mbikudulu ko.';

  @override
  String get accountTitle => 'Compte';

  @override
  String get signIn => 'Kota';

  @override
  String get signOut => 'Basika';

  @override
  String get notSignedIn => 'Ka ukotele ko';

  @override
  String get accountBenefit =>
      'Kota kimana abonnement aku isala mu bisadilu biaku biawonso.';

  @override
  String get accountSyncedNote =>
      'Abonnement aku ye analyse zisidi mpila mosi mu bisadilu biawonso.';

  @override
  String get signInTitle => 'Kota mu WhatStock';

  @override
  String get emailLabel => 'Adresse e-mail';

  @override
  String get continueWithEmail => 'Landa ye e-mail';

  @override
  String codeSentTo(String email) {
    return 'Tufidisidi code ya ntalu 6 ku $email. Isalanga mu minuti 10.';
  }

  @override
  String get codeLabel => 'Code ya kukota';

  @override
  String get resendCode => 'Fidisa code ya mpa';

  @override
  String get useDifferentEmail => 'Sadila e-mail yankaka';

  @override
  String get errInvalidCode =>
      'Code ka yena ya mbote ko yovo ntangu andi isukidi.';

  @override
  String get errInvalidEmail => 'Soneka adresse e-mail ya mbote.';

  @override
  String get errSignInFailed =>
      'Kukota ka kulendi ko. Tala vo internet aku isalanga, bosi meka diaka.';

  @override
  String get checkoutWaiting =>
      'Sukisa kufuta mu navigateur aku. Application isobanga yau kibeni vo kufuta kusukidi.';

  @override
  String get paymentViaStripe =>
      'Kufuta kukengelwa mu navigateur aku mu nzila ya Stripe. Ulenda bika ntangu yawonso.';

  @override
  String get paymentViaStore =>
      'Ufutanga mu nzila ya compte aku ya App Store yovo Google Play. Ulenda bika ntangu yawonso mu paramètres ya store.';

  @override
  String get keySpace => 'Espace';

  @override
  String get doubleOptionTitle => 'Fina Option mbala zole';

  @override
  String get doubleOptionSubtitle =>
      'Kufina touche Option mbala zole ye nswalu kubokilanga mpe WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Kimana isala mpe mu application zankaka, vana WhatStock nswa mu Réglages Système → Confidentialité et sécurité → Surveillance de l’entrée, bosi zibula application diaka.';

  @override
  String get openSystemSettings => 'Zibula Réglages Système';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Fina $shortcut yovo fina Option mbala zole konso fulu mu kubokila WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Yina ilenda kala beni';

  @override
  String get longTermToday => 'Unu';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: 'mivu $years',
      one: 'mvu 1',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range mu mvu';
  }

  @override
  String longTermLikely(String price) {
    return 'ilenda kala beni $price';
  }

  @override
  String get confidenceLow => 'Lukwikilu lwa fioti';

  @override
  String get confidenceMedium => 'Lukwikilu lwa kati';

  @override
  String get confidenceHigh => 'Lukwikilu lwa ngolo';

  @override
  String get longTermNote =>
      'Ndilu za ntangu ya nda zitungwa mu mabanza masonama, ye zikulanga ye ntangu. Ntalu ka zitadidi dividende ko. Mabanza kaka, ka mbikudulu ko.';

  @override
  String get portfolio => 'Portefeuille';

  @override
  String get portfolioEmpty =>
      'Nate wau ka kuena kima ko. Zibula action, fina « Yika mu portefeuille » mu kulanda action zaku.';

  @override
  String get portfolioLocalNote =>
      'Ilundwa kaka mu kisadilu kiaki. Ntalu zawonso zisobwanga mu taux ya BCE; ntalu zilenda kwiza na nima.';

  @override
  String get addToPortfolio => 'Yika mu portefeuille';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Yika $symbol';
  }

  @override
  String get portfolioQuantity => 'Ntalu ya action';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Ntalu ya action mosi ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Kilumbu kia kusumba';

  @override
  String get portfolioAdd => 'Yika';

  @override
  String get portfolioInvalidNumber => 'Soneka ntalu iluta zéro.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol iyikwa mu portefeuille aku.';
  }

  @override
  String get portfolioTotalValue => 'Ntalu yawonso';

  @override
  String get portfolioToday => 'Unu';

  @override
  String get portfolioGainLoss => 'Mbakulu/Mvidisu';

  @override
  String get portfolioInvested => 'Mbongo watula';

  @override
  String get portfolioAllocation => 'Nkabulu';

  @override
  String get portfolioPositions => 'Position';

  @override
  String portfolioAvgCost(String price) {
    return 'ntalu ya kati $price';
  }

  @override
  String get portfolioYourPosition => 'Position aku';

  @override
  String get portfolioPurchases => 'Mana usumbidi';

  @override
  String get portfolioRemove => 'Katula';

  @override
  String get portfolioExcluded =>
      'Position zikambwa ntalu yovo taux ya mbongo ka zitangwanga mu ntalu zawonso ko.';

  @override
  String get priceAlerts => 'Nkebisu za ntalu';

  @override
  String get setPriceAlert => 'Tula lukebisu lwa ntalu';

  @override
  String alertDialogTitle(String symbol) {
    return 'Lukebisu lwa ntalu · $symbol';
  }

  @override
  String get alertKindAbove => 'Itombuka kuluta';

  @override
  String get alertKindBelow => 'Ikulumuka ku nsi ya';

  @override
  String get alertKindMove => 'Inikuka beni mu kilumbu kimosi';

  @override
  String alertTargetPrice(String currency) {
    return 'Ntalu ($currency)';
  }

  @override
  String get alertMovePercent => 'Nsoba ya kilumbu (%)';

  @override
  String get alertAlreadyMet => 'Ntalu iviokele ndilu yayi.';

  @override
  String get alertSave => 'Tula lukebisu';

  @override
  String alertCreated(String symbol) {
    return 'Lukebisu lutulwa mu $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Nate wau ka kuena lukebisu ko. Zibula action, fina ngunga mu kutula lumosi.';

  @override
  String get alertsNote =>
      'Nkebisu zitadwanga konso minuti 5 ntangu WhatStock yeti sala. Mu ordinateur, ilandanga sala mu barre ya menu yovo mu tray; mu telefone, nate wau nkebisu zikwizanga kaka vo application izibuka.';

  @override
  String alertDescAbove(String price) {
    return 'Kuluta $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Ku nsi ya $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Nsoba ya kilumbu ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Lusikidi $date ku $price';
  }

  @override
  String get alertRearm => 'Tula diaka';

  @override
  String get alertDelete => 'Zimbisa';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol itombukidi kuluta $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol ikulumukidi ku nsi ya $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol inikukidi $percent unu';
  }

  @override
  String alertHitBody(String price) {
    return 'Ntalu ya wau: $price';
  }

  @override
  String get alertOpen => 'Zibula';

  @override
  String get keepInTrayTitle => 'Landa kusala vo nela izibikwa';

  @override
  String get keepInTraySubtitle =>
      'WhatStock isialanga mu barre ya menu yovo mu tray, kimana raccourci ye nkebisu za ntalu zilanda sala.';

  @override
  String get termsOfUse => 'Nsiku za kusadila';

  @override
  String get privacyPolicy => 'Nsiku za kukengela nsangu zaku';

  @override
  String get subscriptionLegal =>
      'Abonnement ivutukanga yau kibeni konso ngonda nate vo ubika yau. Mu kukota mu abonnement, utambudidi Nsiku za kusadila ye Nsiku za kukengela nsangu zaku.';

  @override
  String get deleteAccount => 'Zimbisa compte';

  @override
  String get deleteAccountTitle => 'Uzolele zimbisa compte aku?';

  @override
  String get deleteAccountBody =>
      'Compte aku ye mambu mawonso malundwa mu serveur eto (e-mail, kitini kia ngonda, kusadila) si mazimbiswa mvu ya mvu, ye analyse ka usadidi ko si zivila. Abonnement wafuta mu navigateur si ibikwa wau-wau; abonnement ya App Store yovo Google Play ifwete bikwa mu paramètres ya store.';

  @override
  String get deleteLocalData =>
      'Zimbisa mpe ntalu zina mu kisadilu kiaki (portefeuille, nkebisu, bizolwa, mana utombele, analyse zilundwa)';

  @override
  String get deleteAccountConfirm => 'Zimbisa mvu ya mvu';

  @override
  String get accountDeleted => 'Compte aku izimbiswa.';

  @override
  String get errDeleteAccount =>
      'Ka tulendi zimbisa compte ko. Tala vo internet aku isalanga, bosi meka diaka.';

  @override
  String get aiTrialBriefNote =>
      'Ba analyse ya kumeka ikele nkufi mpi bo ke salaka yo ti modele ya AI ya nswalu. Ti forfait, nge ta baka AI na beto ya kuluta mbote, kutomba mingi mu internet, ye unda Ya kati ye Ya nda.';

  @override
  String get billingMonthly => 'Konso ngonda';

  @override
  String get billingYearly => 'Konso mvu';

  @override
  String get yearlyDiscount => 'Ngonda 2 ya mpamba';

  @override
  String get perYear => '/ mvu';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price mu ngonda';
  }

  @override
  String get subscriptionLegalYearly =>
      'Abonnement ya mvula ivutukanga yau kibeni konso mvula nate vo ubika yau. Mu kukota mu abonnement, utambudidi Nsiku za kusadila ye Nsiku za kukengela nsangu zaku.';

  @override
  String get myAnalyses => 'Ba analyse na mono';

  @override
  String get navAlerts => 'Nkebisu';

  @override
  String get inviteTitle => 'Kutala ya ntete ya kukangama';

  @override
  String get inviteBody =>
      'Mu ntangu yayi, WhatStock ilenda sadilwa kaka na mbokolo. Sonika code ya mbokolo yina utambwidi.';

  @override
  String get inviteCodeLabel => 'Code ya mbokolo';

  @override
  String get inviteContinue => 'Landa';

  @override
  String get inviteInvalid => 'Code yayi ya mbokolo ka yena ya mbote ko.';

  @override
  String get inviteExpired =>
      'Ntangu ya mbokolo yayi isukidi. Lomba code ya mpa kwa muntu wakubokila.';

  @override
  String get inviteDeviceLimit =>
      'Code yayi ya mbokolo isadilwanga kala mu ntalu ya nene ya bisadulu.';

  @override
  String get previewConfidential => 'Kutala kwa nsweki';

  @override
  String get errPreviewDailyLimit =>
      'Ndilu ya analyse ya lumbu kiaki mu kutala yayi isukidi. Meka diaka mbazi.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'bantangu $count me luta',
      one: 'ntangu 1 me luta',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'bilumbu $count me luta',
      one: 'kilumbu 1 me luta',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Vanga analyse yai ya mpa?';

  @override
  String staleBody(String age) {
    return 'Analyse yai me vangama $age. Banda ntangu yina, bantalu, nsangu mpi mbuma lenda soba.';
  }

  @override
  String get staleKeep => 'Monisa ya ntete';

  @override
  String get staleRefresh => 'Vanga ya mpa';

  @override
  String seeAll(int count) {
    return 'Tala yonso ($count)';
  }

  @override
  String get searchAnalyses => 'Sosa na ba analyse na nge';

  @override
  String get deleteAnalysis => 'Zimbisa';

  @override
  String analysisDeleted(String symbol) {
    return 'Analyse ya $symbol me zimbisama';
  }

  @override
  String get keyLevelAlertHint =>
      'Fina niveau mosi sambu na kuzwa lukebisu ntangu ntalu ta kuma kuna.';

  @override
  String get shareAnalysisTitle => 'Kabula analyse';

  @override
  String get shareAsImage => 'Kabula bonso foto';

  @override
  String get shareAsText => 'Kabula bonso masonuku';

  @override
  String get shareCardFooter => 'Yisalama na WhatStock';

  @override
  String get shareCardDisclaimer =>
      'Analyse ya AI · ka malongi ma kutula mbongo ko';

  @override
  String get referralTitle => 'Bianga banduku';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'analyse $count za kuyika',
      one: 'analyse 1 ya kuyika',
    );
    return 'Kabula code na nge. Nduku na nge ta baka $_temp0 ntangu yina kaka, mpi nge ta baka mutindu mosi na nima ya analyse na yandi ya ntete.';
  }

  @override
  String get referralYourCode => 'Code na nge';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Me bianga: $invited · Me baka matabisi: $rewarded';
  }

  @override
  String get referralHaveCode => 'Nge kele ti code ya nduku?';

  @override
  String get referralRedeem => 'Sadila';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Analyse $count za kuyika me kota. Beto ke yamba nge!',
      one: 'Analyse 1 ya kuyika me kota. Beto ke yamba nge!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown => 'Code yai kele ve. Tala yo mpi meka diaka.';

  @override
  String get referralErrOwn => 'Nge lenda sadila ve code na nge mosi.';

  @override
  String get referralErrAlready => 'Nge me sadila dezia code ya nduku.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'analyse $count za kuyika',
      one: 'analyse 1 ya kuyika',
    );
    return 'Mono ke tadila ba-action na WhatStock: nge ke baka foto ya action mpi AI ke tendula yo. Na code na mono $code nge ta baka $_temp0.';
  }

  @override
  String get referralCopied => 'Code me kopiama';
}
