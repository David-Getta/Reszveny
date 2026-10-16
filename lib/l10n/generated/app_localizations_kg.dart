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

  @override
  String get onboardTitle1 => 'Baka foto ya action';

  @override
  String get onboardBody1 =>
      'Ekrani ya application ya courtier, zulunalu to logo ya kompani kelele: WhatStock ke zaya action yina ye ke songa nge ntalu ya yau, grafiki ye mintalu ya mfunu.';

  @override
  String get onboardTitle2 => 'Bakula yau na minuta fioti';

  @override
  String get onboardBody2 =>
      'Analyse ya AI ke tendula nki ke nyikisa action, makama, mfunu ya yau ye mambu tatu ya lenda kumina ntalu, ti bisina ya nsangu ye na ndinga na nge.';

  @override
  String get onboardTitle3 => 'Zaya mambu yonso ntangu yonso';

  @override
  String get onboardBody3 =>
      'Bizolwa, portefeuille na nge ye nkebisu za ntalu ke zabisa nge. Ba analyse na nge ke bikala na apparaye na nge, ya kukangula diaka.';

  @override
  String get onboardNext => 'Ya landa';

  @override
  String get onboardStart => 'Yantika';

  @override
  String get onboardSkip => 'Bika';

  @override
  String changesTitle(String date) {
    return 'Banda analyse ya ntete ($date)';
  }

  @override
  String get changesPrice => 'Ntalu';

  @override
  String get changesNoMajor => 'Mambu ya ke na ntwala ke sobaka mingi ve.';

  @override
  String get changesPreviousSummary => 'Nsukudulu ya ntete';

  @override
  String get telemetryTitle => 'Sadisa beto na kutomisa WhatStock';

  @override
  String get telemetryBody =>
      'Kabula statistiques ya kusadila kukonda zina mpi ba rapports ya ba plantages: inki bisalu bantu ke sadila mpi inki mambu ke salamaka mbote ve. Ata fioti ve ba actions na nge, ba analyse na nge to nsangu na nge ya kibeni. Nge lenda soba yo na ntangu yonso na Paramètres.';

  @override
  String get telemetryAllow => 'Pesa nzila';

  @override
  String get telemetryDecline => 'Ve, matondo';

  @override
  String get telemetrySetting =>
      'Statistiques kukonda zina mpi ba rapports ya ba plantages';

  @override
  String get telemetrySettingHint =>
      'Mbala ikwa bantu ke sadila bisalu mpi ba rapports ya ba erreurs, kukonda nsangu ya kibeni to mambu ya bisosa mpi ba analyse na nge.';

  @override
  String get askButton => 'Yuvula mu analyse yai';

  @override
  String askTitle(String symbol) {
    return 'Biuvu mu $symbol';
  }

  @override
  String get askIntro =>
      'Yuvula kima kiakonso mu analyse: nki dilenda kala nsasa ya vonza mosi, nki dilenda soba mambu ma lumbu ma ntwala, mpila ntalu mosi yitalwa. Mvutu zisimbidi mu analyse yai, ye ka i malongi ma kutula mbongo ko.';

  @override
  String get askHint => 'Sona kiuvu kiaku…';

  @override
  String get askSend => 'Tuma';

  @override
  String get askThinking => 'Yeti banza…';

  @override
  String get askSuggest1 => 'Vonza kinene i nki?';

  @override
  String get askSuggest2 => 'Nki dilenda soba mambu ma lumbu ma ntwala?';

  @override
  String get askSuggest3 => 'Tendula yo mu mpila ya pete';

  @override
  String get askMaxReached =>
      'Yoyo kiuvu kia nsuka mu analyse yai. Vanga analyse ya mpa mu yuvula diaka.';

  @override
  String get errAskLimit =>
      'Ufwene ndilu ya biuvu bia lumbu kiaki. Meka diaka mbazi.';

  @override
  String get eventTomorrow => 'Mbazi';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'na bilumbu $days',
      one: 'na kilumbu 1',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Ba résultats ya trimestre';

  @override
  String get eventBeforeOpen => 'ntwala ya kuzibuka ya zandu';

  @override
  String get eventAfterClose => 'na nima ya kukanga ya zandu';

  @override
  String eventEpsEstimate(String value) {
    return 'Estimation ya EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Na analyse na nge';

  @override
  String get eventsHint =>
      'Ba dati ya ba résultats ya bizolwa na nge mpi ya ba action ya portefeuille na nge sambu na bilumbu 90 ke kwiza, mpi mambu ya kele ti dati yina ba analyse na nge me monisa.';

  @override
  String get eventsEmpty =>
      'Mambu ya kele ti dati kele ve na bilumbu 90 ke kwiza. Yika bizolwa to ba action na portefeuille sambu na kumona ba dati ya ba résultats na yo awa.';

  @override
  String get compareTitle => 'Kufwanisa';

  @override
  String get compareAdd => 'Yika action';

  @override
  String get compareRemove => 'Katula';

  @override
  String get compareTickerHint => 'Ticker, mbandu MSFT';

  @override
  String get compareHint =>
      'Bitalu ya mfunu na lweka na lweka; ntalu ya kuluta mbote na konso ndonga me monisama. Bitalu ya mbongo kele na mbongo ya konso action.';

  @override
  String get compareNoAnalysis => 'Analyse ke na yo ntete ve';

  @override
  String get portfolioDividends => 'Dividende ya mvula';

  @override
  String portfolioDividendYield(String percent) {
    return 'Rendement $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Dividende ya mvula yina beto ke vingila me simbama na badividende yina bo futaka na bangonda 12 yina me luta; bafutu ya bilumbu ke kwisa kele ve ya kieleka.';

  @override
  String positionDividend(String amount) {
    return 'Dividende: $amount na mvula';
  }

  @override
  String get chartAvgCost => 'Ntalu na nge';

  @override
  String get chartAlertLevel => 'Lukebisu';

  @override
  String get marketsToday => 'Mazandu unu';

  @override
  String get notesTitle => 'Ba note na mono';

  @override
  String get notesHint =>
      'Sambu na nki nge sumbaka yo, nki nge ke tala, nki ta sala nge teka yo?';

  @override
  String get notesInfo =>
      'Ilundwa kaka mu kisadilu kiaki. Analyse ya AI ke tadilaka ba note na nge.';

  @override
  String notesSaved(String date) {
    return 'Ilundwa: $date';
  }

  @override
  String get peersTitle => 'Bakompani ya kufwana';

  @override
  String get portfolioExport => 'Basisa bonso CSV';

  @override
  String get portfolioImport => 'Kotisa katuka na CSV';

  @override
  String get portfolioImportHint =>
      'Tula kisumbi kimosi na konso ndonga: kidimbu kia ticker, kiteso, ntalu, mbongo, kilumbu (YYYY-MM-DD). Bakolonne lenda kabwana na virgule, point-virgule to tabulation; ndonga ya ntu ke ya mfunu ve.';

  @override
  String get portfolioImportButton => 'Kotisa';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Bisumbi $count me kota',
      one: 'Kisumbi 1 me kota',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Bandonga $count me bikama',
      one: 'Ndonga 1 me bikama',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Portefeuille, bizolwa, nkebisu za ntalu ye ba note ke vandaka mpila mosi na bisadilu na nge yonso.';

  @override
  String syncLast(String time) {
    return 'Synchronisation ya nsuka: $time';
  }

  @override
  String get syncNow => 'Synchroniser ntangu yai';

  @override
  String get syncFailed =>
      'Synchronisation me lemba. Yo ta meka diaka yo mosi.';

  @override
  String get alertEmailTitle => 'E-mail ntangu nkebisu me salama';

  @override
  String get alertEmailOn =>
      'Beto ke tadilaka nkebisu na nge konso maminuti fyoti mpi beto ke tindila nge e-mail, ata kana application me kangama.';

  @override
  String get alertEmailSignIn =>
      'Kota na e-mail na nge na Paramètres sambu na kubaka nkebisu na e-mail, ata kana application me kangama.';

  @override
  String get portfolioHistory => 'Ntalu na ntangu';

  @override
  String get portfolioReviewTitle => 'Analyse ya portefeuille na AI';

  @override
  String get portfolioReviewIntro =>
      'AI ke tala portefeuille na nge yonso: kuvukisa mbongo na kisika mosi, ba secteur ti ba mbongo ya nsi ya nzenza, ba kigonsa yina ba action na nge ke kabana, ti ba dividende. Isadilanga analyse 1.';

  @override
  String get portfolioReviewButton => 'Sala analyse ya portefeuille na mono';

  @override
  String get portfolioReviewAgain => 'Sala analyse diaka';

  @override
  String get portfolioReviewWorking =>
      'Tuke sala analyse ya portefeuille na nge…';

  @override
  String get digestTitle => 'Bunkufi ya konso mposo na e-mail';

  @override
  String get digestHint =>
      'Konso Kilumbu ya ntete: mutindu bizolwa na nge ye portefeuille na nge kusalaka na mposo yina me luta, ye bilumbu ya ba résultats yina ke kwisa.';

  @override
  String get benchmarkTitle => 'Kufwanikisa ti S&P 500';

  @override
  String get benchmarkYours => 'Bima nge sumbaka';

  @override
  String get benchmarkIndex => 'Mbongo mosi na S&P 500';

  @override
  String benchmarkAhead(String points) {
    return 'Mbote kuluta indice na ba point ya pourcentage $points';
  }

  @override
  String benchmarkBehind(String points) {
    return 'Na nima ya indice na ba point ya pourcentage $points';
  }

  @override
  String get benchmarkHint =>
      'Bonso nde mbongo ya konso kisumbu tulamaka na fonds indiciel S&P 500 na kilumbu yina mosi. Ba dividende kele ve; mbote ya ntama ke songa ve ya ntangu ke kwisa.';

  @override
  String get portfolioSell => 'Teka';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Teka $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Ntalu ya kuteka action mosi ($currency)';
  }

  @override
  String get portfolioSellDate => 'Kilumbu kia kuteka';

  @override
  String get portfolioSellAll => 'Yonso';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Nge kele ti $quantity';
  }

  @override
  String get portfolioSold => 'Me tekama';

  @override
  String get portfolioRealized => 'Mbakulu ya kieleka';

  @override
  String get portfolioClosed => 'Position ya kukangama';

  @override
  String get portfolioClosedNote => 'Ba action yonso me tekama';

  @override
  String get portfolioTransactions => 'Kusumba ti kuteka';

  @override
  String get portfolioRealizedByYear => 'Mbakulu ya kieleka na mvula';

  @override
  String get portfolioRealizedHint =>
      'Bo ke tadila ntete kuteka ti kusumba na nge ya ntama kibeni (FIFO), bo me soba yo na ntalu ya nsobolo ya bubu yai. Sambu na mukanda ya mpaku, sadila mukanda ya broker na nge.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Banda analyse yai, ba résultats ya mpa ya trimestre me basika ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Résultats ya mpa';

  @override
  String get portfolioImportBrokers =>
      'Bo ke zaba mpi mikanda ya ke basika na Revolut, Trading 212 ti Interactive Brokers, ti mitekisa; dividende ti mbongo ya bo ke tula ke bikama.';

  @override
  String get portfolioImportFile => 'Pona fisye mosi';

  @override
  String offlineBanner(String time) {
    return 'Kuvwanda ve na connexion – beto ke monisa bansangu ya nsuka ya bo bumbaka ($time).';
  }

  @override
  String get glossMarketCap =>
      'Ntalu ya kompani yonso mu bourse: ntalu ya action × kutanga ya ba action.';

  @override
  String get glossSharesOutstanding =>
      'Ba action ikwa kompani me basisa. Kana yo ke kuma mingi, konso action ke vanda ti kitini ya fioti; kusumba diaka ba action (buyback) ke kitisa yo.';

  @override
  String get glossPeTrailing =>
      'Ntalu ÷ mbakulu ya konso action na ngonda 12 ya me luta: mvula ikwa ya mbakulu ya ntangu yai nge ke futa. Ya nsi kele ya ntalu fioti, kansi ba kompani yina ke kula nswalu mingi ke vandaka ti P/E ya zulu.';

  @override
  String get glossPeForward =>
      'Bonso P/E, kansi ti mbakulu yina ba analyste ke vingila na ngonda 12 ke kwisa. Kana yo kele na nsi ya P/E ya nima, bo ke vingila nde mbakulu ta kula.';

  @override
  String get glossPb =>
      'Ntalu ÷ valeur comptable (kimvwama kukatula mfuka) ya konso action. Pene-pene ya 1 ke tendula nde zandu ke pesa kompani ntalu ya mambu yina yo kele na yo na papela.';

  @override
  String get glossPs =>
      'Ntalu ya zandu ÷ mbongo zikota ya mvula. Yo ke sadisa sambu na ba kompani yina kele ti mbakulu fioti to ve; fwanisa yo ti ba kompani ya kisalu mosi.';

  @override
  String get glossEvToFcf =>
      'Ntalu ya kompani ti mfuka (EV) ÷ mbongo yina yo ke basisa na mvula mosi na nima ya ba investissement. Ya nsi ke tendula nde nge ke baka mbongo mingi sambu na ntalu yango.';

  @override
  String get glossPeg =>
      'P/E ÷ kukula ya mbakulu ya mvula yina bo ke vingila (%). Pene-pene ya 1 mbala mingi bo ke mona yo ya mbote; yo ke tala P/E ti kukula.';

  @override
  String get glossEps =>
      'Mbakulu ya konso action na ngonda 12 ya me luta. EPS yina ke kuma mingi mvula na mvula kele mosi ya bidimbu ya ngolo ya kompani ya mbote.';

  @override
  String get glossBeta =>
      'Nki mutindu action ke nyengana ti zandu: 1 = bonso zandu, 1,5 = kunyengana kuluta pene-pene ya 50%, na nsi ya 1 = ya kuvunda.';

  @override
  String get glossRevenueTtm =>
      'Mbongo yonso ya kuteka ya ngonda 12 ya me luta, na ntwala ya bafrais yonso.';

  @override
  String get glossNetIncomeTtm =>
      'Mbakulu yina me bikala na nima ya bafrais yonso, intérêt mpi bampaku na ngonda 12 ya me luta.';

  @override
  String get glossGrossMargin =>
      'Kitini ya mbongo zikota yina ke bikala na nima ya bafrais ya kusala bima. Marge brute ya zulu mbala mingi ke monisa nde kompani lenda tula ntalu na yo mosi.';

  @override
  String get glossOperatingMargin =>
      'Kitini ya mbongo zikota yina ke bikala na nima ya kusadisa kisalu (lufutu, loyer, publicité), na ntwala ya intérêt mpi bampaku.';

  @override
  String get glossNetMargin =>
      'Kitini ya mbongo zikota yina ke kuma mbakulu ya nsuka. 20% ke tendula nde na konso 100 ya kuteka, 20 kele mbakulu.';

  @override
  String get glossRoe =>
      'Mbakulu mu fonds propres: mbakulu ya mvula ÷ mbongo ya bamfumu ya kompani. Yo ke monisa nki mutindu bakalaki ke sadila mbote mbongo ya bantu ya ba action; kuluta pene-pene ya 15% kele ngolo.';

  @override
  String get glossRoa =>
      'Mbakulu mu kimvwama: mbakulu ya mvula ÷ bima yonso ya kompani. Fwanisa yo ti ba kompani ya kisalu mosi.';

  @override
  String get glossDebtToEquity =>
      'Mfuka ÷ fonds propres. Ya zulu ke tendula mbongo mingi ya kudefa: kigonsa mingi ntangu intérêt ke mata to kisalu ke kulumuka.';

  @override
  String get glossCurrentRatio =>
      'Kimvwama ya ntangu fioti ÷ mfuka yina fwete futa na mvula mosi. Kuluta 1 ke tendula nde kompani lenda futa mfuka na yo ya pene-pene.';

  @override
  String get glossRevenueGrowth =>
      'Nki mutindu mbongo zikota me kula kana beto fwanisa ti mvula me luta.';

  @override
  String get glossEpsGrowth =>
      'Nki mutindu mbakulu ya konso action me kula kana beto fwanisa ti mvula me luta.';

  @override
  String get glossDividendYield =>
      'Dividende ya mvula ÷ ntalu ya action: mbongo yina nge ta baka konso mvula, na pourcentage ya yina nge me futa.';

  @override
  String get glossDividendPerShare =>
      'Dividende yina bo me futa na action mosi na mvula me luta.';

  @override
  String get glossPayoutRatio =>
      'Kitini ya mbakulu yina bo ke kabula bonso dividende. Kuluta 100%, kompani ke futa mingi kuluta yina yo ke zwa, mpi yo ke zingaka ve.';

  @override
  String get glossTitle => 'Yo ke tendula nki?';

  @override
  String get watchNewsTitle => 'Nsangu ya ba action na nge';

  @override
  String get undo => 'Vutula';

  @override
  String get watchSort => 'Tula na ndonga';

  @override
  String get watchSortOwn => 'Ndonga na mono';

  @override
  String get watchSortGainers => 'Yina me matama mingi ntete';

  @override
  String get watchSortLosers => 'Yina me kulumuka mingi ntete';

  @override
  String get watchSortName => 'Na ticker (A–Z)';

  @override
  String get watchHint =>
      'Benda kisimbidilu sambu na kusoba ndonga, nyerula na lumoso sambu na kukatula. Mulongo ke monisa bilumbu 30 ya me luta.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: nsosa na nge me kuma ya kubuka.';
  }
}
