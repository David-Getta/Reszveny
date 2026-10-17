// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Guarani (`gn`).
class AppLocalizationsGn extends AppLocalizations {
  AppLocalizationsGn([String locale = 'gn']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Ejapyhy peteĩ acción raʼãnga ha eikuaa opa mbaʼe hese.';

  @override
  String get homeHint =>
      'Peteĩ acción kuatia, peteĩ tembiporuʼi bolsa-pegua mbaʼerechaha, periódico térã peteĩ empresa logo – oimeraẽ mbaʼe ohechaukáva peteĩ acción.';

  @override
  String get takePhoto => 'Ejapyhy taʼãnga';

  @override
  String get chooseFromGallery => 'Eiporavo taʼãnga atýgui';

  @override
  String get chooseImage => 'Eiporavo taʼãnga';

  @override
  String get enterTickerManually => 'Emoinge símbolo nde pópe';

  @override
  String get tickerInputLabel => 'Símbolo (ticker)';

  @override
  String get tickerInputHint => 'techapyrã: AAPL';

  @override
  String get lookUp => 'Eheka';

  @override
  String demoModeBanner(String symbols) {
    return 'Modo demo – ndaipóri clave ñemuha mbaʼekuaarãme g̃uarã. Mbaʼekuaarã techapyrã oĩ koʼãvape g̃uarã: $symbols.';
  }

  @override
  String get recognizing => 'Ohesaʼỹijohína taʼãnga…';

  @override
  String get loadingData => 'Mbaʼekuaarã henyhẽhína…';

  @override
  String get noCandidatesTitle => 'Ndojehechakuaái acción';

  @override
  String get noCandidatesBody =>
      'Ndorohechakuaái acción ko taʼãngápe. Ehaʼã taʼãnga hesakãvéva reheve, térã emoinge símbolo nde pópe.';

  @override
  String get whatWeSaw => 'Mbaʼépa rohecha';

  @override
  String get chooseCandidateTitle => '¿Mbaʼe acción-pa reipota?';

  @override
  String confidencePercent(int percent) {
    return '$percent% jerovia';
  }

  @override
  String get settings => 'Ñemboheko';

  @override
  String get language => 'Ñeʼẽ';

  @override
  String get systemLanguage => 'Apopyvusu ñeʼẽ';

  @override
  String get about => 'WhatStock rehegua';

  @override
  String get disclaimer =>
      'Ko tembiporuʼi omeʼẽ marandu añoite ha ndahaʼéi ñemoñeʼẽ inversión rehegua. Mbaʼekuaarã ikatu ndahaʼéi koʼag̃agua térã ndahaʼéi hekopete.';

  @override
  String dataSource(String source) {
    return 'Mbaʼekuaarã reñoiha: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Jehechakuaa: $source';
  }

  @override
  String get retry => 'Ehaʼã jey';

  @override
  String get cancel => 'Heja';

  @override
  String get ok => 'Moneĩ';

  @override
  String get close => 'Emboty';

  @override
  String get errorGeneric => 'Oĩvaicha osẽvaíva.';

  @override
  String get errorSectionUnavailable => 'Ko vore ndaikatúi henyhẽ.';

  @override
  String get notAvailable => 'ndaipóri';

  @override
  String get sectionIdentity => 'Jehechakuaaha';

  @override
  String get sectionPrice => 'Tepy';

  @override
  String get sectionValuation => 'Hepykue ñembopapa';

  @override
  String get sectionFinancials => 'Viru rehegua';

  @override
  String get sectionDividend => 'Dividendo';

  @override
  String get sectionProfile => 'Empresa rehegua';

  @override
  String get sectionAnalysts => 'Analistakuéra remiandu';

  @override
  String get sectionNews => 'Marandu';

  @override
  String get sectionRecognition => 'Jehechakuaa mbaʼemimi';

  @override
  String get labelSymbol => 'Símbolo';

  @override
  String get labelExchange => 'Bolsa';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Pirapire';

  @override
  String get labelCountry => 'Tetã';

  @override
  String get labelIndustry => 'Industria';

  @override
  String get labelSector => 'Sector';

  @override
  String get labelWebsite => 'Ñanduti renda';

  @override
  String get labelIpoDate => 'IPO arange';

  @override
  String get labelMarketCap => 'Hepykue bolsa-pe';

  @override
  String get labelSharesOutstanding => 'Acción osẽva ñemuhápe';

  @override
  String get labelEmployees => 'Mbaʼapohára';

  @override
  String get labelCeo => 'Mburuvicha guasu';

  @override
  String get labelHeadquarters => 'Óga guasu';

  @override
  String get labelDescription => 'Ñemohaʼãnga';

  @override
  String get labelLastPrice => 'Tepy ipahavéva';

  @override
  String get labelChange => 'Ñemoambue';

  @override
  String get labelOpen => 'Jeipeʼa';

  @override
  String get labelDayHigh => 'Ára yvatevéva';

  @override
  String get labelDayLow => 'Ára karapevéva';

  @override
  String get labelPreviousClose => 'Ñemboty mboyvegua';

  @override
  String get labelWeek52High => 'Yvatevéva 52 arapokõindýpe';

  @override
  String get labelWeek52Low => 'Karapevéva 52 arapokõindýpe';

  @override
  String get labelAverageVolume10d => 'Volumen mbytegua (10 ára)';

  @override
  String updatedAt(String time) {
    return 'Oñembohekopyahu $time';
  }

  @override
  String get labelPeTrailing => 'P/E (ohasavaʼekue)';

  @override
  String get labelPeForward => 'P/E (oúva)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / flujo de caja libre';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Viru oikéva (TTM)';

  @override
  String get labelNetIncomeTtm => 'Ganancia potĩ (TTM)';

  @override
  String get labelGrossMargin => 'Margen bruto';

  @override
  String get labelOperatingMargin => 'Margen operativo';

  @override
  String get labelNetMargin => 'Margen potĩ';

  @override
  String get labelRoe => 'Rendimiento capital propio rehe';

  @override
  String get labelRoa => 'Rendimiento activokuéra rehe';

  @override
  String get labelDebtToEquity => 'Deuda / capital propio';

  @override
  String get labelCurrentRatio => 'Liquidez corriente';

  @override
  String get labelRevenueGrowth => 'Viru oikéva jekakuaa (ary ha ary)';

  @override
  String get labelEpsGrowth => 'EPS jekakuaa (ary ha ary)';

  @override
  String get labelDividendYield => 'Dividendo rendimiento';

  @override
  String get labelDividendPerShare => 'Dividendo peteĩteĩ acción rehe';

  @override
  String get labelPayoutRatio => 'Ganancia oñembojaʼóva (%)';

  @override
  String get labelConsensus => 'Ñoñeʼẽmeʼẽ';

  @override
  String get ratingStrongBuy => 'Jejogua mbarete';

  @override
  String get ratingBuy => 'Jejogua';

  @override
  String get ratingHold => 'Ñongatu';

  @override
  String get ratingSell => 'Ñemu';

  @override
  String get ratingStrongSell => 'Ñemu mbarete';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analista',
      one: '1 analista',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Ára paʼũ: $period';
  }

  @override
  String get noNews => 'Ndaipóri marandu pyahu.';

  @override
  String get openArticle => 'Embojuruja jehaipyre';

  @override
  String get openLinkFailed => 'Ndaikatúi oñembojuruja juajuha.';

  @override
  String get recognitionSummary => 'Mombyky';

  @override
  String get recognitionEvidence => 'Mbaʼére roimoʼã upéicha';

  @override
  String get recognitionRawText => 'Moñeʼẽrã oñemoñeʼẽva taʼãngágui';

  @override
  String get errMissingAnthropicKey =>
      'Taʼãnga jehechakuaa noñembohekói (ndaipóri ANTHROPIC_API_KEY). Emoinge símbolo nde pópe.';

  @override
  String get errRecognitionUnreachable =>
      'Ndaikatúi oñeike jehechakuaa mbaʼepytyvõrãme. Ehecha oiko porãpa ne ñanduti.';

  @override
  String errRecognitionHttp(String status) {
    return 'Jehechakuaa mbaʼepytyvõrã ombohovái jejavy reheve (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Jehechakuaa mbaʼepytyvõrã ndaikatúi ohesaʼỹijo ko taʼãnga.';

  @override
  String get errRecognitionTruncated =>
      'Jehechakuaa mbohovái oñekytĩ. Ehaʼã jey.';

  @override
  String get errRecognitionBadResponse =>
      'Mbohovái oñehaʼarõʼỹva jehechakuaa mbaʼepytyvõrãgui.';

  @override
  String get errRecognitionEmpty =>
      'Jehechakuaa mbaʼepytyvõrã omeʼẽ mbohovái nandi.';

  @override
  String get errMissingFinnhubKey =>
      'Ñemuha mbaʼekuaarã noñembohekói (ndaipóri FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Ndaikatúi oñeike ñemuha mbaʼekuaarã mbaʼepytyvõrãme. Ehecha oiko porãpa ne ñanduti.';

  @override
  String get errMarketRateLimited =>
      'Hetaiterei mbaʼejerure ñemuha mbaʼekuaarã mbaʼepytyvõrãme. Ehaʼarõmi peteĩ aravoʼi.';

  @override
  String errMarketHttp(String status) {
    return 'Ñemuha mbaʼekuaarã mbaʼepytyvõrã ombohovái jejavy reheve (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Mbohovái oñehaʼarõʼỹva ñemuha mbaʼekuaarã mbaʼepytyvõrãgui.';

  @override
  String errNoQuote(String symbol) {
    return 'Ndojejuhúi tepy mbaʼekuaarã $symbol-pe g̃uarã.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Ndojejuhúi empresa rehegua $symbol-pe g̃uarã.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Modo demo ombaʼapo $symbols ndive añoite. Embojuaju FINNHUB_API_KEY mbaʼekuaarã koʼag̃aguávape g̃uarã.';
  }

  @override
  String errUnknown(String detail) {
    return 'Oĩvaicha osẽvaíva: $detail';
  }

  @override
  String get newSearch => 'Jeheka pyahu';

  @override
  String get recentSearches => 'Ramóva';

  @override
  String get noRecentSearches => 'Ndaipóri gueteri jeheka ramóva.';

  @override
  String get clearRecent => 'Emopotĩ ramóva';

  @override
  String get greeting => '¿Mbaʼe acción-pa jahecháta?';

  @override
  String get searchHint => 'Símbolo térã empresa réra';

  @override
  String get attachImage => 'Emoirũ taʼãnga';

  @override
  String get searchResultsTitle => 'Jeheka rapykuere';

  @override
  String errNoResults(String query) {
    return 'Ndojejuhúi acción “$query” rehegua.';
  }

  @override
  String get quickBarHint => 'Ehai símbolo térã empresa réra…';

  @override
  String get openFullWindow => 'Embojuruja ovetã';

  @override
  String hotkeyHint(String shortcut) {
    return 'Ejopy $shortcut oimeraẽ hendápe ehenói hag̃ua WhatStock.';
  }

  @override
  String get trayOpen => 'Embojuruja WhatStock';

  @override
  String get trayQuickSearch => 'Jeheka pyaʼe';

  @override
  String get trayQuit => 'Esẽ';

  @override
  String get appearance => 'Hechapy';

  @override
  String get themeSystem => 'Apopyvusu';

  @override
  String get themeDark => 'Ypytũ';

  @override
  String get themeLight => 'Tesakã';

  @override
  String get back => 'Tapykue';

  @override
  String get aiSectionTitle => 'AI jehesaʼỹijo';

  @override
  String get aiIntro =>
      'Jehesaʼỹijo mbaʼemimi reheve, AI ohaivaʼekue: marandu ramovéva mombyky, empresa rembiapo, imbaretekue, riesgokuéra ha mbaʼe kañymby, hepykue ñembopapa, tepy oúvarã escenario reheve (psicológico, sociológico, técnico ha macroeconómico), ha mbaʼépa reñatendevaʼerã.';

  @override
  String get aiGenerate => 'Emoheñói jehesaʼỹijo';

  @override
  String get aiRegenerate => 'Emoheñói jey';

  @override
  String get aiGenerating =>
      'Ojembosakoʼihína jehesaʼỹijo… ikatu ohasa peteĩ térã mokõi aravoʼi.';

  @override
  String get aiSources => 'Teñoiha';

  @override
  String aiGeneratedAt(String time) {
    return 'Oñemoheñói $time';
  }

  @override
  String get aiDisclaimer =>
      'Jehesaʼỹijo AI omoheñóiva mbaʼekuaarã opavavegua ha marandu ramovéva rupive. Ikatu oguereko jejavy térã ndahaʼevéi koʼag̃agua, ha ndahaʼéi ñemoñeʼẽ inversión rehegua.';

  @override
  String get errAiNotConfigured =>
      'AI jehesaʼỹijo noñembohekói (ndaipóri ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Ndaikatúi oñeike AI mbaʼepytyvõrãme. Ehecha oiko porãpa ne ñanduti.';

  @override
  String errAiHttp(String status) {
    return 'AI mbaʼepytyvõrã ombohovái jejavy reheve (HTTP $status).';
  }

  @override
  String get errAiRefused => 'AI mbaʼepytyvõrã ndohesaʼỹijoséi ko acción.';

  @override
  String get errAiBadResponse => 'Mbohovái oñehaʼarõʼỹva AI mbaʼepytyvõrãgui.';

  @override
  String get sectionChart => 'Tepy raʼãnga';

  @override
  String get rangeOneWeek => '7 ára';

  @override
  String get rangeOneMonth => '1 jasy';

  @override
  String get rangeThreeMonths => '3 jasy';

  @override
  String get rangeOneYear => '1 ary';

  @override
  String get rangeFiveYears => '5 ary';

  @override
  String get chartUnavailable =>
      'Tepy rembiasakue ndaipóri ko mbaʼekuaarã reñoihápe.';

  @override
  String get sectionStatements => 'Kuatia viru rehegua (arygua)';

  @override
  String get labelFiscalYear => 'Ary fiscal';

  @override
  String get labelRevenue => 'Viru oikéva';

  @override
  String get labelNetIncome => 'Ganancia potĩ';

  @override
  String get labelTotalAssets => 'Opaite activo';

  @override
  String get labelTotalLiabilities => 'Opaite pasivo';

  @override
  String get labelEquity => 'Capital propio';

  @override
  String get labelOperatingCashFlow => 'Flujo de caja operativo';

  @override
  String get statementsUnavailable =>
      'Ndaipóri kuatia viru rehegua ko acción-pe g̃uarã.';

  @override
  String get launchAtLogin => 'Emoñepyrũ eikévo apopyvusúpe';

  @override
  String get hotkeyLabel => 'Mbopyaʼeha opaitegua';

  @override
  String get hotkeyRecordHint =>
      'Eikutu koʼápe, upéi ejopy tairenda ñembojoaju pyahu';

  @override
  String get hotkeyReset => 'Embojevy ijypykuépe';

  @override
  String get pasteImage => 'Emboja taʼãnga kuatiajokohágui';

  @override
  String get errClipboardNoImage => 'Ndaipóri taʼãnga kuatiajokohápe.';

  @override
  String get favorites => 'Ojeguerohoryvéva';

  @override
  String get addToFavorites => 'Embojuaju ojeguerohoryvévape';

  @override
  String get removeFromFavorites => 'Embogue ojeguerohoryvévagui';

  @override
  String get noFavorites =>
      'Ndaipóri gueteri ojeguerohoryvéva. Eikutu acción mbyja ombojuaju hag̃ua.';

  @override
  String get displayCurrency => 'Pirapire ojehechaukáva';

  @override
  String get displayCurrencyNone => 'Acción pirapire añoite';

  @override
  String labelConverted(String currency) {
    return '≈ $currency-pe';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Ñemoambue repy: 1 $from = $rate $to (BCE, $date)';
  }

  @override
  String get updates => 'Ñembohekopyahu';

  @override
  String currentVersion(String version) {
    return 'Peteĩchagua $version';
  }

  @override
  String get autoUpdate => 'Emohenda ñembohekopyahu ijeheguiete';

  @override
  String get checkForUpdates => 'Eheka ñembohekopyahu';

  @override
  String get updateChecking => 'Ohekahína ñembohekopyahu…';

  @override
  String get updateUpToDate => 'Ereko peteĩchagua ipyahuvéva.';

  @override
  String updateAvailable(String version) {
    return 'Peteĩchagua $version oĩma.';
  }

  @override
  String get updateDownloading => 'Oguejyhína ñembohekopyahu mokõihápe…';

  @override
  String get updateDownloaded =>
      'Ñembohekopyahu oĩma. Emoñepyrũjey emohenda hag̃ua.';

  @override
  String get updateNow => 'Embohekopyahu';

  @override
  String get restartNow => 'Emoñepyrũjey';

  @override
  String get updatesViaStore =>
      'Ñembohekopyahu og̃uahẽ ijeheguiete tembiporuʼi ñemuhágui.';

  @override
  String get updateCheckFailed => 'Ndaikatúi ojeheka ñembohekopyahu.';

  @override
  String get subscription => 'Ñemboheraguapy';

  @override
  String get planTrial => 'Ñehaʼã';

  @override
  String get planNormal => 'Jepiguáva';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Ndaipóri plan oikóva';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count jehesaʼỹijo jasy ñavõ';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$days ára jeporu rei $count jehesaʼỹijo reheve';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Opyta $days ára jeporu rei',
      one: 'Opyta 1 ára jeporu rei',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Nde jeporu rei opáma. Eiporavo peteĩ plan rehesaʼỹijo jey hag̃ua.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Opyta $remaining jehesaʼỹijo $total-gui ko ára paʼũme';
  }

  @override
  String extraCredits(int count) {
    return '$count jehesaʼỹijo mbojuajupyre';
  }

  @override
  String renewsOn(String date) {
    return 'Oñembopyahúta $date-pe';
  }

  @override
  String get choosePlan => 'Eiporavo plan';

  @override
  String get currentPlan => 'Plan koʼag̃agua';

  @override
  String get subscribe => 'Eñemboheraguapy';

  @override
  String get perMonth => '/ jasy';

  @override
  String get extraPacksTitle => '¿Eikotevẽve? Ejogua jehesaʼỹijo mbojuajurã';

  @override
  String get extraPacksHint =>
      'Jehesaʼỹijo mbojuajurã arakaʼeve ndopái ha ojeporu nde cupo jasygua opa rire.';

  @override
  String get buy => 'Ejogua';

  @override
  String get restorePurchases => 'Embojevy jejogua';

  @override
  String get manageSubscription => 'Eñangareko ñemboheraguapy rehe';

  @override
  String get purchaseSuccess => '¡Aguyje! Nde jejogua oikóma.';

  @override
  String get purchasePending => 'Jejogua ohaʼarõhína…';

  @override
  String get purchaseFailed => 'Ndaikatúi oñemohuʼã jejogua.';

  @override
  String get purchaseCanceled => 'Jejogua ojeheja.';

  @override
  String get billingUnavailable =>
      'Jejogua ndaipóri gueteri ko plataforma-pe. Eñemboheraguapy ne pumbyrýpe térã Mac-pe; nde plan ombaʼapóta opa mbaʼeʼokápe.';

  @override
  String get errQuotaExceeded =>
      'Ndereguerekovéima jehesaʼỹijo ko ára paʼũme. Embotuichave nde plan térã ejogua jehesaʼỹijo mbojuajurã.';

  @override
  String get errTrialExpired =>
      'Nde jeporu rei opáma. Eiporavo peteĩ plan ekuʼejey hag̃ua.';

  @override
  String get errNoPlan => 'Eikotevẽ peteĩ plan oikóva AI jehesaʼỹijorã.';

  @override
  String get viewPlans => 'Ehecha plan-kuéra';

  @override
  String get usageTitle => 'Jeporu';

  @override
  String get demoPurchaseNote =>
      'Jehepymeʼẽ demo: ko plataforma-pe jejogua ndahaʼéi añetegua.';

  @override
  String get mostPopular => 'Ojeporuvéva';

  @override
  String get bestValue => 'Hepykue porãvéva';

  @override
  String get planFeaturesCommon =>
      'Taʼãnga jehechakuaa, mbaʼekuaarã koʼag̃agua, taʼãngaʼi, ojeguerohoryvéva ha 120 ñeʼẽ oĩ opa plan-pe. Cupo oñemeʼẽ AI jehesaʼỹijorã.';

  @override
  String get searchLanguages => 'Eheka ñeʼẽ…';

  @override
  String get noLanguageMatch => 'Ndaipóri ñeʼẽ ojojoguáva.';

  @override
  String get aiSettings => 'AI jehesaʼỹijo';

  @override
  String get aiLength => 'Pukukue';

  @override
  String get aiDepthBrief => 'Mbykymi';

  @override
  String get aiDepthStandard => 'Mbytegua';

  @override
  String get aiDepthDeep => 'Pypuku';

  @override
  String get aiDepthBriefDesc => 'Tekotevẽvéva, pyaʼe.';

  @override
  String get aiDepthStandardDesc => 'Informe tenyhẽ opaite vore reheve.';

  @override
  String get aiDepthDeepDesc =>
      'Hetave jeheka ñandutípe, ñembojoja ambue empresa ndive ha mbaʼemimive.';

  @override
  String aiDepthWords(String min, String max) {
    return '$min–$max ñeʼẽ rupi';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'oipuru $count jehesaʼỹijo',
      one: 'oipuru 1 jehesaʼỹijo',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Moñeʼẽhára nivel';

  @override
  String get aiReaderBeginner => 'Oñepyrũva';

  @override
  String get aiReaderExperienced => 'Ikatupyrýva';

  @override
  String get aiReaderBeginnerDesc =>
      'Ñeʼẽ hasyʼỹva; oñemyesakã opaite ñeʼẽ técnico.';

  @override
  String get aiReaderExperiencedDesc =>
      'Moñeʼẽrã ipyʼỹivéva, ñeʼẽ viru rehegua jepiguáva reheve.';

  @override
  String get aiCounterArgument => 'Ñeʼẽ ombotovéva imbaretevéva';

  @override
  String get aiCounterArgumentDesc =>
      'Mombyky opa meme ñeʼẽ imbaretevéva reheve ombotovéva ijeheguiete conclusión.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          '$count jeheka ñandutípe peve peteĩteĩ jehesaʼỹijópe nde plan ndive',
      one: '1 jeheka ñandutípe peve peteĩteĩ jehesaʼỹijópe nde plan ndive',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Pukukue mbytegua plan rupi: Jepiguáva $normal, Pro $pro, Max $max, Ultra $ultra. Mbykymi oipuru 2 saʼive, Pypuku 2 hetave.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jeheka ñandutípe peve',
      one: '1 jeheka ñandutípe peve',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jeheka ñandutípe peteĩteĩ jehesaʼỹijópe',
      one: '1 jeheka ñandutípe peteĩteĩ jehesaʼỹijópe',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Ko pukukue oikotevẽ $needed jehesaʼỹijo, ha opyta $left añoite. Eiporavo pukukue mbykyve Ñembohekópe térã ehupyty hetave jehesaʼỹijo.';
  }

  @override
  String get outlookMarketMood => 'Ñemuha remiandu';

  @override
  String get moodVeryPessimistic => 'Pesimista eterei';

  @override
  String get moodPessimistic => 'Pesimista';

  @override
  String get moodNeutral => 'Mbytegua';

  @override
  String get moodOptimistic => 'Optimista';

  @override
  String get moodVeryOptimistic => 'Optimista eterei';

  @override
  String get scenarioBull => 'Escenario ojupíva';

  @override
  String get scenarioBase => 'Escenario mbytegua';

  @override
  String get scenarioBear => 'Escenario oguejýva';

  @override
  String outlookCurrentPrice(String price) {
    return 'Tepy koʼag̃agua: $price';
  }

  @override
  String get outlookKeyLevels => 'Nivel tekotevẽvéva';

  @override
  String get keyLevelSupport => 'Soporte';

  @override
  String get keyLevelResistance => 'Resistencia';

  @override
  String get keyLevelAnchor => 'Ancla';

  @override
  String get upcomingEvents => 'Mbaʼe oikótava';

  @override
  String get outlookChartNote =>
      'Umi paʼũ haʼe techapyrã añoite; probabilidad haʼe ñembopapa haʼetévaicha, ndahaʼéi oúvarã jeikuaa.';

  @override
  String get accountTitle => 'Mbaʼete';

  @override
  String get signIn => 'Eike';

  @override
  String get signOut => 'Esẽ';

  @override
  String get notSignedIn => 'Ndereikéi gueteri';

  @override
  String get accountBenefit =>
      'Eike nde ñemboheraguapy ombaʼapo hag̃ua opa ne mbaʼeʼokápe.';

  @override
  String get accountSyncedNote =>
      'Nde ñemboheraguapy ha jehesaʼỹijo opytáva peteĩchaguánte opa mbaʼeʼokápe.';

  @override
  String get signInTitle => 'Eike WhatStock-pe';

  @override
  String get emailLabel => 'Ñanduti veve kundaharape';

  @override
  String get continueWithEmail => 'Ekuʼejey ñanduti veve ndive';

  @override
  String codeSentTo(String email) {
    return 'Romondo peteĩ código 6 papapy rehegua $email-pe. Oiko 10 aravoʼi aja.';
  }

  @override
  String get codeLabel => 'Código jeikerã';

  @override
  String get resendCode => 'Emondo código pyahu';

  @override
  String get useDifferentEmail => 'Eiporu ambue ñanduti veve';

  @override
  String get errInvalidCode => 'Código ndoikói térã ndoikovéima.';

  @override
  String get errInvalidEmail =>
      'Emoinge peteĩ ñanduti veve kundaharape oikóva.';

  @override
  String get errSignInFailed =>
      'Jeike ndoikói. Ehecha ne ñanduti ha ehaʼã jey.';

  @override
  String get checkoutWaiting =>
      'Emohuʼã jehepymeʼẽ nde kundahárape. Tembiporuʼi oñembohekopyahúta ijeheguiete opávo.';

  @override
  String get paymentViaStripe =>
      'Jehepymeʼẽ hekorosãva nde kundahárape Stripe rupive. Ikatu eheja oimeraẽ árape.';

  @override
  String get paymentViaStore =>
      'Ojehepymeʼẽ nde mbaʼete App Store térã Google Play rupive. Ikatu eheja oimeraẽ árape ñemuha ñembohekópe.';

  @override
  String get keySpace => 'Paʼũ';

  @override
  String get doubleOptionTitle => 'Ejopy mokõi jey Option';

  @override
  String get doubleOptionSubtitle =>
      'Ejopývo pyaʼe mokõi jey tairenda Option, ojuruja avei WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Ombaʼapo hag̃ua ambue tembiporuʼípe avei, emoneĩ WhatStock Ajustes del Sistema → Privacidad y seguridad → Monitorización de entrada-pe, ha upéi embojuruja jey tembiporuʼi.';

  @override
  String get openSystemSettings => 'Embojuruja Ajustes del Sistema';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Ejopy $shortcut térã ejopy mokõi jey Option oimeraẽ hendápe ehenói hag̃ua WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Ikatuvéva oiko';

  @override
  String get longTermToday => 'Ko árape';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years ary',
      one: '1 ary',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range ary ñavõ';
  }

  @override
  String longTermLikely(String price) {
    return 'ikatuvéva: $price';
  }

  @override
  String get confidenceLow => 'Jerovia karape';

  @override
  String get confidenceMedium => 'Jerovia mbytegua';

  @override
  String get confidenceHigh => 'Jerovia yvate';

  @override
  String get longTermNote =>
      'Paʼũ are peguáva oñemopyenda umi jeimoʼã oñemombeʼúvare ha ipysove ohasávo ára. Tepy ndoguerekói dividendo. Ñembopapa haʼetévaicha, ndahaʼéi oúvarã jeikuaa.';

  @override
  String get portfolio => 'Cartera';

  @override
  String get portfolioEmpty =>
      'Ndaipóri gueteri mbaʼeve. Embojuruja peteĩ acción ha eikutu “Embojuaju carterape” ehapykueho hag̃ua mbaʼe ereguerekóva.';

  @override
  String get portfolioLocalNote =>
      'Oñeñongatu ko mbaʼeʼokápe añoite. Opaite oñemoambue BCE ñemoambue repy rupi; tepy ikatu og̃uahẽ tarde.';

  @override
  String get addToPortfolio => 'Embojuaju carterape';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Embojuaju $symbol';
  }

  @override
  String get portfolioQuantity => 'Mboy acción';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Tepy peteĩteĩ acción ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Jejogua arange';

  @override
  String get portfolioAdd => 'Embojuaju';

  @override
  String get portfolioInvalidNumber => 'Emoinge peteĩ papapy tuichavéva 0-gui.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol oñembojuaju nde carterape.';
  }

  @override
  String get portfolioTotalValue => 'Opaite hepykue';

  @override
  String get portfolioToday => 'Ko árape';

  @override
  String get portfolioGainLoss => 'Ganancia/pérdida';

  @override
  String get portfolioInvested => 'Viru oñemoĩva';

  @override
  String get portfolioAllocation => 'Ñembojaʼo';

  @override
  String get portfolioPositions => 'Ereguerekóva';

  @override
  String portfolioAvgCost(String price) {
    return 'tepy mbytegua $price';
  }

  @override
  String get portfolioYourPosition => 'Ereguerekóva';

  @override
  String get portfolioPurchases => 'Jejogua';

  @override
  String get portfolioRemove => 'Embogue';

  @override
  String get portfolioExcluded =>
      'Umi acción ndorekóiva tepy térã ñemoambue repy noñembopapái opaitépe.';

  @override
  String get priceAlerts => 'Tepy maranduʼi';

  @override
  String get setPriceAlert => 'Emoĩ tepy maranduʼi';

  @override
  String alertDialogTitle(String symbol) {
    return 'Tepy maranduʼi · $symbol';
  }

  @override
  String get alertKindAbove => 'Ojupi ári';

  @override
  String get alertKindBelow => 'Oguejy guýpe';

  @override
  String get alertKindMove => 'Oñemonguʼeterei peteĩ árape';

  @override
  String alertTargetPrice(String currency) {
    return 'Tepy ($currency)';
  }

  @override
  String get alertMovePercent => 'Ára ñemonguʼe (%)';

  @override
  String get alertAlreadyMet => 'Tepy ohasáma ko nivel.';

  @override
  String get alertSave => 'Emoĩ maranduʼi';

  @override
  String alertCreated(String symbol) {
    return 'Maranduʼi oñemoĩ $symbol-pe g̃uarã.';
  }

  @override
  String get alertsEmpty =>
      'Ndaipóri gueteri tepy maranduʼi. Embojuruja peteĩ acción ha eikutu kampana emoĩ hag̃ua peteĩ.';

  @override
  String get alertsNote =>
      'Maranduʼi oñehechajey 5 aravoʼi ñavõ WhatStock ombaʼapo aja. Mohendahápe, osegi ombaʼapo poravorã rendápe térã apopyvusu bandejápe; pumbyrýpe, koʼag̃aite maranduʼi og̃uahẽ tembiporuʼi ijurujáramo añoite.';

  @override
  String alertDescAbove(String price) {
    return '$price ári';
  }

  @override
  String alertDescBelow(String price) {
    return '$price guýpe';
  }

  @override
  String alertDescMove(String percent) {
    return 'Ára ñemonguʼe ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Oñemyandy $date $price-pe';
  }

  @override
  String get alertRearm => 'Emyandy jey';

  @override
  String get alertDelete => 'Embogue';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol ojupi $price ári';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol oguejy $price guýpe';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol oñemonguʼe $percent ko árape';
  }

  @override
  String alertHitBody(String price) {
    return 'Tepy koʼag̃agua: $price';
  }

  @override
  String get alertOpen => 'Embojuruja';

  @override
  String get keepInTrayTitle => 'Osegi ombaʼapo ovetã oñembotývo';

  @override
  String get keepInTraySubtitle =>
      'WhatStock opyta poravorã rendápe térã apopyvusu bandejápe, upévare mbopyaʼeha ha tepy maranduʼi osegi ombaʼapo.';

  @override
  String get termsOfUse => 'Jeporurã reko';

  @override
  String get privacyPolicy => 'Temiñemi porureko';

  @override
  String get subscriptionLegal =>
      'Ñemboheraguapy oñembopyahu ijeheguiete jasy ñavõ ejoko peve. Eñemboheraguapývo, emoneĩ Jeporurã reko ha Temiñemi porureko.';

  @override
  String get deleteAccount => 'Embogue mbaʼete';

  @override
  String get deleteAccountTitle => '¿Emboguese ne mbaʼete?';

  @override
  String get deleteAccountBody =>
      'Ne mbaʼete ha opa mbaʼe oñeñongatúva ore mohendahavusúpe (ñanduti veve, cupo, jeporu) oñembogue opa árape g̃uarã, ha jehesaʼỹijo ojeporuʼỹva okañy. Ñemboheraguapy ojehepymeʼẽva kundahárape oñemboty pyaʼeterei; App Store térã Google Play ñemboheraguapy katu eheja vaʼerã ñemuha ñembohekópe.';

  @override
  String get deleteLocalData =>
      'Embogue avei mbaʼekuaarã ko mbaʼeʼokápe (cartera, maranduʼi, ojeguerohoryvéva, tembiasakue, jehesaʼỹijo ñongatupyre)';

  @override
  String get deleteAccountConfirm => 'Embogue opa árape g̃uarã';

  @override
  String get accountDeleted => 'Ne mbaʼete oñembogue.';

  @override
  String get errDeleteAccount =>
      'Ndaikatúi oñembogue mbaʼete. Ehecha ne ñanduti ha ehaʼã jey.';

  @override
  String get aiTrialBriefNote =>
      'Umi jehesaʼỹijo ñehaʼãme mbykymi ha ojejapo peteĩ AI modelo pyaʼevévape. Plan reheve rehupyty ore AI ipokatuvéva, hetave jeheka ñandutípe ha pukukue Mbytegua ha Pypuku.';

  @override
  String get billingMonthly => 'Jasykue';

  @override
  String get billingYearly => 'Arykue';

  @override
  String get yearlyDiscount => '2 jasy rei';

  @override
  String get perYear => '/ ary';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price jasy ñavõ';
  }

  @override
  String get subscriptionLegalYearly =>
      'Ñemboheraguapy oñembopyahu ijeheguiete ary ñavõ ejoko peve. Eñemboheraguapývo, emoneĩ Jeporurã reko ha Temiñemi porureko.';

  @override
  String get myAnalyses => 'Che jehesaʼỹijokuéra';

  @override
  String get navAlerts => 'Maranduʼi';

  @override
  String get inviteTitle => 'Jehechauka mboyvegua oñembotýva';

  @override
  String get inviteBody =>
      'Koʼág̃a WhatStock ojeporukuaa jeguenói rupive añoite. Emoinge código jeguenoirã nderehupyty vaʼekue.';

  @override
  String get inviteCodeLabel => 'Código jeguenoirã';

  @override
  String get inviteContinue => 'Ekuʼejey';

  @override
  String get inviteInvalid => 'Ko código jeguenoirã ndoikói.';

  @override
  String get inviteExpired =>
      'Ko jeguenói ndoikovéima. Ejerure peteĩ código pyahu pe ndeguenoi vaʼekuépe.';

  @override
  String get inviteDeviceLimit =>
      'Ko código jeguenoirã ojeporúma tembipuru papapy tuichavévape.';

  @override
  String get previewConfidential => 'Jehechauka ñemi';

  @override
  String get errPreviewDailyLimit =>
      'Ko jehechauka ohupytýma koʼág̃a guarã jehesaʼỹijo papapy. Eñehaʼã jey koʼẽrõ.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aravo ymave',
      one: '1 aravo ymave',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ára ymave',
      one: '1 ára ymave',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Embopyahu ko jehesaʼỹijo?';

  @override
  String staleBody(String age) {
    return 'Oñemoheñói $age. Ikatu oñemoambue umi hepykue, marandu ha tembiapo rapykuere upe guive.';
  }

  @override
  String get staleKeep => 'Ehechauka ymaguare';

  @override
  String get staleRefresh => 'Ejapo ipyahúva';

  @override
  String seeAll(int count) {
    return 'Ehecha opavave ($count)';
  }

  @override
  String get searchAnalyses => 'Eheka ne jehesaʼỹijokuérape';

  @override
  String get deleteAnalysis => 'Emboguete';

  @override
  String analysisDeleted(String symbol) {
    return 'Oñemboguete $symbol jehesaʼỹijo';
  }

  @override
  String get keyLevelAlertHint =>
      'Eikutu peteĩ nivel ehupyty hag̃ua maranduʼi tepy ohupytývo upe nivel.';

  @override
  String get shareAnalysisTitle => 'Emoherakuã jehesaʼỹijo';

  @override
  String get shareAsImage => 'Emoherakuã taʼãngamíicha';

  @override
  String get shareAsText => 'Emoherakuã moñeʼẽrãicha';

  @override
  String get shareCardFooter => 'Ojejapo WhatStock reheve';

  @override
  String get shareCardDisclaimer =>
      'AI jehesaʼỹijo · ndahaʼéi ñemoñeʼẽ inversión rehegua';

  @override
  String get referralTitle => 'Eguenoi ne angirũnguérape';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jehesaʼỹijo mbojuajupyre',
      one: '1 jehesaʼỹijo mbojuajupyre',
    );
    return 'Emoherakuã ne código. Ne angirũ ohupyty pyaʼe $_temp0, ha nde avei rehupytýta upeichaite ijehesaʼỹijo peteĩha rire.';
  }

  @override
  String get referralYourCode => 'Ne código';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Oñeguenoíva: $invited · Jopói: $rewarded';
  }

  @override
  String get referralHaveCode => '¿Reguereko peteĩ código ne angirũ mbaʼe?';

  @override
  String get referralRedeem => 'Eiporu';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Oñembojoaju $count jehesaʼỹijo mbojuajupyre. ¡Eguahẽ porãite!',
      one: 'Oñembojoaju 1 jehesaʼỹijo mbojuajupyre. ¡Eguahẽ porãite!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Ko código ndaipóri. Ehecha jey ha ehaʼã jey.';

  @override
  String get referralErrOwn => 'Ndaikatúi reiporu ne código voi.';

  @override
  String get referralErrAlready => 'Reiporúma peteĩ ne angirũ código.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jehesaʼỹijo mbojuajupyre',
      one: '1 jehesaʼỹijo mbojuajupyre',
    );
    return 'Ahesaʼỹijo acción-kuéra WhatStock rupive: ejapyhy peteĩ acción raʼãnga ha AI ohesape chupe. Che código $code rupive rehupytýta $_temp0.';
  }

  @override
  String get referralCopied => 'Código oñekopia';

  @override
  String get onboardTitle1 => 'Ejapyhy peteĩ acción raʼãnga';

  @override
  String get onboardBody1 =>
      'Oĩmaite peteĩ tembiporuʼi bolsa-pegua mbaʼerechaha, periódico térã empresa logo: WhatStock ohechakuaa pe acción ha ohechauka ijepy, igráfico ha umi papapy tenondeguáva.';

  @override
  String get onboardTitle2 => 'Ehechakuaa minuto mbovýpe';

  @override
  String get onboardBody2 =>
      'AI jehesaʼỹijo omyesakã mbaʼépa omýi pe acción, umi kyhyjeha, mbaʼeichaitépa ovale ha mbohapy tape ikatúva ohasa ijepy – marandu ypykuéra ndive ha ne ñeʼẽme.';

  @override
  String get onboardTitle3 => 'Eikuaa meme opa mbaʼe';

  @override
  String get onboardBody3 =>
      'Ojeguerohoryvéva, ne cartera ha tepy maranduʼi omomarandu ndéve. Ne jehesaʼỹijokuéra opyta ne tembiporuʼípe, ha ikatu reipeʼa jey oimeraẽ árape.';

  @override
  String get onboardNext => 'Upeigua';

  @override
  String get onboardStart => 'Ñañepyrũ';

  @override
  String get onboardSkip => 'Ehasa';

  @override
  String changesTitle(String date) {
    return 'Jehesaʼỹijo ymaguare guive ($date)';
  }

  @override
  String get changesPrice => 'Tepy';

  @override
  String get changesNoMajor =>
      'Ojehecháva tenonderã ndoñemoambuéi tuichaháicha.';

  @override
  String get changesPreviousSummary => 'Mombyky ymaguare';

  @override
  String get telemetryTitle => 'Eipytyvõ WhatStock iporãve hag̃ua';

  @override
  String get telemetryBody =>
      'Emoherakuã papapy jeporu rehegua ndojekuaáiva ha marandu jejavy rehegua: mbaʼe tembiapoukapýpa ojeporu ha mbaʼépa ndoikoporãi. Arakaʼeve ndojeguerahamoʼãi ne acciones, ne jehesaʼỹijo térã ne marandu ñemiguáva. Ikatu emoambue oimeraẽ árape Ñembohekópe.';

  @override
  String get telemetryAllow => 'Emoneĩ';

  @override
  String get telemetryDecline => 'Nahániri, aguyje';

  @override
  String get telemetrySetting =>
      'Papapy ndojekuaáiva ha marandu jejavy rehegua';

  @override
  String get telemetrySettingHint =>
      'Mbovy jey ojeporu tembiapoukapy ha marandu jejavy rehegua, ndoguerekói marandu ñemiguáva térã ne jeheka ha ne jehesaʼỹijo retepy.';

  @override
  String get askButton => 'Eporandu ko jehesaʼỹijo rehe';

  @override
  String askTitle(String symbol) {
    return 'Porandu $symbol rehegua';
  }

  @override
  String get askIntro =>
      'Eporandu oimeraẽ mbaʼe jehesaʼỹijo rehe: mbaʼépa heʼise peteĩ kyhyjerã, mbaʼépa ikatu omoambue tenonderã, mbaʼéichapa ojeipapa peteĩ papapy. Umi mbohovái oñemopyenda ko jehesaʼỹijo rehe ha ndahaʼéi ñemoñeʼẽ inversión rehegua.';

  @override
  String get askHint => 'Ehai nde porandu…';

  @override
  String get askSend => 'Emondo';

  @override
  String get askThinking => 'Opensa hína…';

  @override
  String get askSuggest1 => 'Mbaʼépa kyhyjerã tuichavéva?';

  @override
  String get askSuggest2 => 'Mbaʼépa ikatu omoambue tenonderã?';

  @override
  String get askSuggest3 => 'Emyesakã chéve ñeʼẽ hasyʼỹvape';

  @override
  String get askMaxReached =>
      'Kóva haʼe pe porandu paha ko jehesaʼỹijo guarã. Emoheñói jehesaʼỹijo pyahu eporandu hag̃ua hetave.';

  @override
  String get errAskLimit =>
      'Ehupytýma koʼág̃a guarã porandu papapy. Eñehaʼã jey koʼẽrõ.';

  @override
  String get eventTomorrow => 'Koʼẽrõ';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days ára rire',
      one: '1 ára rire',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Mbohapy jasy resultado';

  @override
  String get eventBeforeOpen => 'mercado ojepeʼa mboyve';

  @override
  String get eventAfterClose => 'mercado oñemboty rire';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS oñehaʼarõva: $value';
  }

  @override
  String get eventFromAnalysis => 'Nde jehesaʼỹijogui';

  @override
  String get eventsHint =>
      'Umi ojeguerohoryvéva ha nde cartera acción resultado ára 90 ára oúvape, ha umi mbaʼe ára reheguáva nde jehesaʼỹijokuéra ohechaukáva.';

  @override
  String get eventsEmpty =>
      'Ndaipóri mbaʼe ára reheguáva 90 ára oúvape. Embojuaju ojeguerohoryvéva térã cartera acción ehecha hag̃ua koʼápe iresultado ára.';

  @override
  String get compareTitle => 'Ñembojoja';

  @override
  String get compareAdd => 'Embojuaju peteĩ acción';

  @override
  String get compareRemove => 'Mboguete';

  @override
  String get compareTickerHint => 'Ticker, techapyrã MSFT';

  @override
  String get compareHint =>
      'Papapy tenondeguáva oñondive; peteĩteĩ tysỹime ojehechauka pe valor iporãvéva. Pirapire papapy oĩ peteĩteĩ acción pirapire tee rupive.';

  @override
  String get compareNoAnalysis => 'Ndaipóri gueteri jehesaʼỹijo';

  @override
  String get portfolioDividends => 'Dividendo arýpe';

  @override
  String portfolioDividendYield(String percent) {
    return 'Rendimiento $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Dividendo arýpe ojeroviaháva oñemopyenda dividendo oñehepymeʼẽvaʼekuére 12 jasy ohasavaʼekuépe; tenondeguáre ndaipóri garantía.';

  @override
  String positionDividend(String amount) {
    return 'Dividendo: $amount arýpe';
  }

  @override
  String get chartAvgCost => 'Ne mbytegua';

  @override
  String get chartAlertLevel => 'Maranduʼi';

  @override
  String get marketsToday => 'Merkádo ko árape';

  @override
  String get notesTitle => 'Che jehaipyrekuéra';

  @override
  String get notesHint =>
      '¿Mbaʼérepa rejogua, mbaʼépa remañahína, mbaʼépa ojapóta reñemu hag̃ua?';

  @override
  String get notesInfo =>
      'Oñeñongatu ko mbaʼeʼokápe añoite. AI jehesaʼỹijo ohecha ne jehaipyrekuéra.';

  @override
  String notesSaved(String date) {
    return 'Oñeñongatu $date';
  }

  @override
  String get peersTitle => 'Empresa ojoguáva';

  @override
  String get portfolioExport => 'Emondo CSV ramo';

  @override
  String get portfolioImport => 'Egueru CSV-gui';

  @override
  String get portfolioImportHint =>
      'Emboja peteĩ jejogua peteĩteĩ línea-pe: símbolo, mboýpa, hepykue, pirapire, ára (AAAA-MM-DD). Umi columna ikatu oñembojaʼo coma, punto y coma térã tabulación rupive; línea ñepyrũ ndahaʼéi tekotevẽ.';

  @override
  String get portfolioImportButton => 'Egueru';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Oñembojoaju $count jejogua',
      one: 'Oñembojoaju 1 jejogua',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ojeheja $count línea',
      one: 'Ojeheja 1 línea',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Cartera, ojeguerohoryvéva, tepy maranduʼi ha jehaipyre ojoja opa ne mbaʼeʼokápe.';

  @override
  String syncLast(String time) {
    return 'Sincronización pahaguápe: $time';
  }

  @override
  String get syncNow => 'Sincroniza koʼág̃a';

  @override
  String get syncFailed => 'Ndaikatúi oñesincroniza. Oñehaʼã jeýta ijeheguíva.';

  @override
  String get alertEmailTitle => 'Correo maranduʼi ojehu jave';

  @override
  String get alertEmailOn =>
      'Rohechajey ne maranduʼi sapyʼaitépe ha romondo ndéve correo, tembiporuʼi oñembotýramo jepe.';

  @override
  String get alertEmailSignIn =>
      'Eike ne correo reheve Ñembohekópe reguereko hag̃ua maranduʼi correo rupive, tembiporuʼi oñembotýramo jepe.';

  @override
  String get portfolioHistory => 'Hepykue ñemoambue';

  @override
  String get portfolioReviewTitle => 'Cartera jehesaʼỹijo AI rupive';

  @override
  String get portfolioReviewIntro =>
      'AI ohecha nde cartera tuichakue: mbaʼeichapa oñembyaty nde viru, sector ha korepoti ndive reñemboja, umi kyhyjerã ojoguáva ne acción-kuéra, ha dividendo. Oipuru 1 jehesaʼỹijo.';

  @override
  String get portfolioReviewButton => 'Ehesaʼỹijo che cartera';

  @override
  String get portfolioReviewAgain => 'Ehesaʼỹijo jey';

  @override
  String get portfolioReviewWorking => 'Ojehesaʼỹijohína nde cartera…';

  @override
  String get digestTitle => 'Arapokõindy ñemombyky ñanduti veve rupive';

  @override
  String get digestHint =>
      'Arakõi ñavõ: mbaʼéichapa oho ne ojeguerohoryvéva ha ne cartera arapokõindy ohasavaʼekuépe, ha umi resultado ára oúva.';

  @override
  String get benchmarkTitle => 'Ojeporombojoja S&P 500 ndive';

  @override
  String get benchmarkYours => 'Ne jogua';

  @override
  String get benchmarkIndex => 'Upéichagua viru S&P 500-pe';

  @override
  String benchmarkAhead(String points) {
    return '$points punto porcentual iporãve índice-gui';
  }

  @override
  String benchmarkBehind(String points) {
    return '$points punto porcentual oĩ índice rapykuévo';
  }

  @override
  String get benchmarkHint =>
      'Peteĩteĩ ne jogua viru ojemoĩramoguáicha peteĩ fondo indexado S&P 500-pe upe ára berõ. Ndoikéi dividendo; ganancia ohasaramoguare ndohechaukái tenonderãgua.';

  @override
  String get portfolioSell => 'Ñemu';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Ñemu $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Tepy ñemu peteĩteĩ acción ($currency)';
  }

  @override
  String get portfolioSellDate => 'Ñemu arange';

  @override
  String get portfolioSellAll => 'Opavave';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Ereguereko $quantity';
  }

  @override
  String get portfolioSold => 'Ñemu';

  @override
  String get portfolioRealized => 'Ojehupytýva';

  @override
  String get portfolioClosed => 'Ereguerekóva oñemuva';

  @override
  String get portfolioClosedNote => 'Opaite acción oñemuma';

  @override
  String get portfolioTransactions => 'Jejogua ha ñemu';

  @override
  String get portfolioRealizedByYear => 'Ganancia ojehupytýva ary ary';

  @override
  String get portfolioRealizedHint =>
      'Ñemu oñembojoja raẽ ne jejogua tujavéva ndive (FIFO), oñemoambuéva ko árape cambio repýpe. Ne declaración de impuestos-rã, eipuru nde bróker extracto.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Ko ñehesaʼỹijo rire, oñemoherakuã resultado trimestral pyahu ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Resultado pyahu';

  @override
  String get portfolioImportBrokers =>
      'Ojekuaa avei Revolut, Trading 212 ha Interactive Brokers exportación, ñemu ndive; dividendo ha depósito ojepoi.';

  @override
  String get portfolioImportFile => 'Eiporavo peteĩ archivo';

  @override
  String offlineBanner(String time) {
    return 'Ndaipóri ñanduti – ojehechauka umi mbaʼekuaarã oñeñongatu pahaguéva ($time).';
  }

  @override
  String get glossMarketCap =>
      'Mboýpa hepy pe empresa tuichakue bolsa-pe: acción repy × acción papapy.';

  @override
  String get glossSharesOutstanding =>
      'Mboy acción-pa pe empresa omosẽ. Okakuaáramo, peteĩteĩ acción oguereko pehẽ michĩvéva; umi recompra omboguejy chupe.';

  @override
  String get glossPeTrailing =>
      'Hepy ÷ ganancia peteĩteĩ acción rehe 12 jasy ohasavaʼekuépe: mboy ary ganancia koʼágãguáva rehepaga. Ijyvyvéva ivaratovéva, ha katu umi empresa okakuaa pyaʼéva oguereko jepi P/E yvate.';

  @override
  String get glossPeForward =>
      'Ojogua P/E-pe, ha katu umi analista ohaʼarõva ganancia 12 jasy oúvape. Ijyvyvéramo P/E ohasavaʼekuégui, ojehaʼarõ ganancia okakuaátaha.';

  @override
  String get glossPb =>
      'Hepy ÷ valor contable (activokuéra ojeipeʼa deuda) peteĩteĩ acción rehe. 1 rupi heʼise mercado omoepy pe empresa oguerekoháicha kuatiáre.';

  @override
  String get glossPs =>
      'Hepykue bolsa-pe ÷ viru oikéva ary pukukue. Iporã umi empresa ganancia michĩ térã ndorekóiva gueteri; embojoja peteĩ industria pegua ndive.';

  @override
  String get glossEvToFcf =>
      'Empresa hepykue deuda ndive (EV) ÷ viru ojapóva peteĩ arýpe inversión rire. Ijyvyvéramo, rehupyty hetave viru pe hepýpe.';

  @override
  String get glossPeg =>
      'P/E ÷ ganancia jekakuaa ojehaʼarõva ary ha ary (%). 1 rupi heta oimoʼã hekopete; ohechauka P/E jekakuaa rehe.';

  @override
  String get glossEps =>
      'Ganancia peteĩteĩ acción rehe 12 jasy ohasavaʼekuépe. EPS ojupíva ary ha ary haʼe peteĩ techaukarã imbaretevéva empresa hesãiva rehegua.';

  @override
  String get glossBeta =>
      'Mboýpa acción omýi mercado ndive: 1 = mercado ojoguáva, 1,5 = 50% rupi omýive, 1 guýpe = ipyʼaguapyve.';

  @override
  String get glossRevenueTtm =>
      'Opaite oñevendéva 12 jasy ohasavaʼekuépe, oimeraẽ gasto mboyve.';

  @override
  String get glossNetIncomeTtm =>
      'Ganancia opytáva opaite gasto, interés ha impuesto rire 12 jasy ohasavaʼekuépe.';

  @override
  String get glossGrossMargin =>
      'Viru oikéva pehẽ opytáva producto gasto directo rire. Margen yvate heʼise jepi ikatuha omoĩ hepy.';

  @override
  String get glossOperatingMargin =>
      'Viru oikéva pehẽ opytáva empresa ombaʼapo haguã gasto (salario, alquiler, marketing) rire, interés ha impuesto mboyve.';

  @override
  String get glossNetMargin =>
      'Viru oikéva pehẽ oikóva ganancia pahápe. 20% heʼise 100 oñevendévagui 20 haʼeha ganancia.';

  @override
  String get glossRoe =>
      'Rendimiento capital propio rehe: ganancia ary pukukue ÷ jára capital. Ohechauka mbaʼeichaitépa umi omotenondéva oipuru porã accionista viru; 15% rupi ári imbarete.';

  @override
  String get glossRoa =>
      'Rendimiento activokuéra rehe: ganancia ary pukukue ÷ opaite mbaʼe empresa oguerekóva. Embojoja peteĩ industria pegua ndive.';

  @override
  String get glossDebtToEquity =>
      'Deuda ÷ jára capital. Yvatevéramo, hetave viru ojeprestáva: hetave peligro interés ojupírõ térã negocio oguejýrõ.';

  @override
  String get glossCurrentRatio =>
      'Activo mbykymíva ÷ deuda oñepagavaʼerã peteĩ ary ryepýpe. 1 ári heʼise empresa ikatu opaga ideuda hiʼaguĩvéva.';

  @override
  String get glossRevenueGrowth =>
      'Mboýpa okakuaa viru oikéva ojejoguávo peteĩ ary tenondeguáva ndive.';

  @override
  String get glossEpsGrowth =>
      'Mboýpa okakuaa ganancia peteĩteĩ acción rehe ojejoguávo peteĩ ary tenondeguáva ndive.';

  @override
  String get glossDividendYield =>
      'Dividendo ary pukukue ÷ acción repy: viru rehupytýtava ary ha ary, porcentaje-pe rehepagávagui.';

  @override
  String get glossDividendPerShare =>
      'Dividendo oñepagáva peteĩ acción rehe ary ohasavaʼekuépe.';

  @override
  String get glossPayoutRatio =>
      'Ganancia pehẽ oñepagáva dividendo ramo. 100% ári, empresa opaga hetave ohupytývagui, ha upéva ndaipukúi jepi.';

  @override
  String get glossTitle => '¿Mbaʼe heʼise?';

  @override
  String get watchNewsTitle => 'Marandu nde acción-kuéra rehegua';

  @override
  String get undo => 'Mbojevy';

  @override
  String get watchSort => 'Mohenda';

  @override
  String get watchSortOwn => 'Che mohendapy';

  @override
  String get watchSortGainers => 'Ojupivéva raẽ';

  @override
  String get watchSortLosers => 'Oguejyvéva raẽ';

  @override
  String get watchSortName => 'Símbolo rupi (A–Z)';

  @override
  String get watchHint =>
      'Emboguata pe jokoha emohenda jey hag̃ua, emosyryry asúpe embogue hag̃ua. Pe línea ohechauka 30 ára ohasava\'ekue.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: nde jehesa\'ỹijo oĩma.';
  }

  @override
  String alertFromCost(String price) {
    return 'Nde jogua repy mbytépe ($price) ojehechaháicha:';
  }

  @override
  String get briefTitle => 'Ko árape ne acción-kuéra ndive';

  @override
  String get briefButton => 'Momichĩ ko ára';

  @override
  String get briefHint =>
      'Peteĩ AI momichĩmbyre mbykymi mba’éichapa ojere ko árape ne portafolio ha umi nde reiporavova ha mba’épa he’i umi marandu ipyahuvéva. Ndoipurúi jehesa’ỹijo.';

  @override
  String get briefRefresh => 'Mbopyahu';

  @override
  String get sectionEarnings => 'Resultado';

  @override
  String earningsNext(String date) {
    return 'Informe oúva: $date';
  }

  @override
  String get earningsExpected => 'EPS oñehaʼarõva';

  @override
  String get earningsReported => 'EPS oñemomaranduva';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'EPS oñehaʼarõvaicha térã hetave $beats-pe $total mbohapy jasy pahaguéva apytégui',
      one: 'EPS oñehaʼarõvaicha térã hetave $beats-pe 1 mbohapy jasy apytégui',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol ohechaukáta mbohapy jasy resultado koʼẽrõ';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol ohechauka mbohapy jasy resultado koʼága';
  }

  @override
  String get earningsRemindersTitle => 'Resultado manduʼarã';

  @override
  String get earningsRemindersSubtitle =>
      'Marandu peteĩ ára mboyve nde ojeguerohoryvéva térã nde portafólio acciones ohechauka mbohapy jasy resultado';

  @override
  String addAllToFavorites(int count) {
    return 'Embojuaju opavave ojeguerohoryvévape ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Egueru pantalla taʼãngágui';

  @override
  String get holdingsReading => 'Oñemoñeʼẽ hína ereguerekóva…';

  @override
  String get holdingsReviewTitle => 'Ereguerekóva ojejuhúva';

  @override
  String get holdingsReviewHint =>
      'Ehechajey papapy embojuaju mboyve. Tepy haʼe tepy mbytegua rejoguávakuri peteĩteĩ acción, ndahaʼéi ko árape tepy.';

  @override
  String get holdingsNoPrice => 'Ndaipóri tepy mbytegua taʼãngápe';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Embojuaju $count ereguerekóva',
      one: 'Embojuaju 1 ereguerekóva',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Ndojejuhúi acción ko taʼãngápe. Eñehaʼã peteĩ pantalla taʼãnga nde broker kuatiarogue ereguerekóvagui.';

  @override
  String get week52Range => '52 arapokõindýpe pa\'ũ';

  @override
  String week52BelowHigh(String percent) {
    return '$percent yvatevéva 52 arapokõindýpe guýpe';
  }

  @override
  String get week52AtHigh => 'Oĩ yvatevéva 52 arapokõindýpe-pe';

  @override
  String get alertKindTrailing => 'Oguejy yvateguágui';

  @override
  String get alertTrailingPercent => 'Guejy yvateguágui (%)';

  @override
  String get alertTrailingHint =>
      'Omoirũ tepy ojupívo: oikuaauka tepy oguejýramo kóichagua ijyvatevéva guive, remoĩ guive.';

  @override
  String alertDescTrailing(String percent) {
    return '$percent guejy yvateguágui';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'yvatevéva koʼãga peve: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol oguejy $percent yvateguágui';
  }

  @override
  String get sectionInsiders => 'Mburuvichakuéra jejogua ha ñemu';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jejogua',
      one: '1 jejogua',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ñemu',
      one: '1 ñemu',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Opytáva: $shares acción';
  }

  @override
  String get insiderBuy => 'Ojogua';

  @override
  String get insiderSell => 'Oñemu';

  @override
  String get insiderHint =>
      'Mburuvicha ha director-kuéra jejogua ha ñemu ñemuha ijurujávape ko 90 ára ohasávape (SEC Form 4). Ndojeipapái opción jeporu ha acción ojeme\'ẽva.';

  @override
  String get insiderNone =>
      'Ndaipóri mburuvichakuéra jejogua ni ñemu ñemuha ijurujávape ko 90 ára ohasávape.';

  @override
  String get analystTrend => 'Mbaʼéichapa oñemoambue umi temiandu jasy ha jasy';

  @override
  String get watchListAll => 'Opavave';

  @override
  String get watchListNew => 'Lista pyahu';

  @override
  String get watchListName => 'Lista réra';

  @override
  String get watchListRename => 'Emoambue lista réra';

  @override
  String get watchListDelete => 'Embogue lista';

  @override
  String get watchListAddTo => 'Embojuaju peteĩ listape';

  @override
  String get watchListEmpty =>
      'Ndaipóri gueteri acción ko listape. Ejopy lista votõ oĩva acción ykére embojuaju hag̃ua.';

  @override
  String get portfolioAskTitle => 'Porandu nde cartera rehegua';

  @override
  String get rangeYtd => 'Ko ary';

  @override
  String get backupTitle => 'Mbaʼekuaarã ñongatupyre';

  @override
  String get backupSave => 'Eñongatu mbaʼekuaarã';

  @override
  String get backupSaveHint =>
      'Ne ojeguerohoryvéva, ne lista, ne cartera, ne maranduʼi ha ne jehaipyre peteĩ archivo-pe.';

  @override
  String get backupRestore => 'Egueru jey ñongatupyre guive';

  @override
  String get backupRestoreHint =>
      'Ombojoapy oĩva archivo-pe; ndojeheʼói mbaʼeve ereko ko ágãva.';

  @override
  String get backupRestored => 'Ñongatupyre ojegueru jey.';

  @override
  String get backupInvalid => 'Ko archivo ndahaʼéi WhatStock ñongatupyre.';

  @override
  String get allocationPositions => 'Aksiõkuéra';

  @override
  String get allocationSectors => 'Sectorkuéra';

  @override
  String get allocationCurrencies => 'Pirapire';

  @override
  String get compareReturn1y => 'Ary 1 ganancia';

  @override
  String get compareFromHigh => 'Yvatevéva 52 arapokõindýpe guive';

  @override
  String get briefAutoTitle => 'Mbohysýi ára ha ára pyharevete';

  @override
  String get briefAutoSubtitle =>
      '“Ko árape ne acción-kuéra ndive” ojejapo ijehegui 7:00 rire app omba’apo aja; computadora-pe peteĩ marandu he’íta ndéve. Oipuru ne porandu papapy ára ha ára guarã, ndaha’éi jehesa’ỹijo.';

  @override
  String get targetsButton => 'Ñembojaʼo jehupytyrã';

  @override
  String get targetsTitle => 'Ñembojaʼo jehupytyrã';

  @override
  String get targetsHint =>
      'Emoĩ mboýpa peteĩteĩ aksiõ oguerekovaʼerã portfolio-gui. Ejei ñemyenyhẽha nandi ndaipóriramo jehupytyrã. Upe rire app ohechaukáta mbaʼépa ejoguavaʼerã térã eñemuvaʼerã eguahẽ hag̃ua upépe.';

  @override
  String targetsSum(String percent) {
    return 'Oĩmbáva: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Jogua ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Ñemu ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Jehupytyrãme';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol ohasa EPS oñehaʼarõvagui';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol ndohupytýi EPS oñehaʼarõva';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'EPS oñemomaranduva $actual, oñehaʼarõva $estimate';
  }

  @override
  String get newsExplain => 'Mbaʼépa heʼise kóva?';

  @override
  String get newsExplainNote =>
      'AI omyesakãva, titulo ha ñemombyky rupive añoite. Ndahaʼéi ñemoñeʼẽ inversión rehegua. Oipuru ne porandu papapy ára ha ára guarã, ndaha’éi jehesa’ỹijo.';

  @override
  String get watchAlertAll => 'Momarandu ára ñemonguʼe tuichávape';

  @override
  String get watchAlertAllHint =>
      'Hepykue momarandu opavave acción ko listapegua: omomarandúta oñemonguʼérõ kóicha peteĩ árape, yvate térã yvy gotyo. Oguerekóva peteĩ ymaite oñongatu imbaʼe.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Oñemohenda $count momarandu',
      one: 'Oñemohenda 1 momarandu',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Emondo viru jehupyty (CSV)';

  @override
  String get portfolioAnnualReturn => 'Rendimiento arýpe';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / ary';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Rendimiento arýpe oñepesáva viru rehe (XIRR): ohecha araka\'épa rejogua ha reñemu, upévare viru remoĩvéva upéi ndombyaíri chupe. Ojehechauka ne jejogua peteĩha ohasa rire ary peteĩ, sa\'ive ramo; dividendo ndoikéi.';

  @override
  String get eventsAddToCalendar => 'Embojuaju arapapahápe (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Portafólio marandu';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Marandu nde portafólio entero oñemonguʼe péicha peteĩ árape.';

  @override
  String get portfolioMoveAlertOff => 'Mbogue';

  @override
  String portfolioMoveUp(String percent) {
    return 'Nde portafólio ojupi $percent ko árape';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Nde portafólio oguejy $percent ko árape';
  }

  @override
  String get whatIfTitle => 'Mbaʼéichapa oikóta reinvertíramo?';

  @override
  String get whatIfAmount => 'Mboýpa';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount oñeinvertíva $period mboyve hepýta ko árape';
  }

  @override
  String get whatIfNote =>
      'Oñemopyenda acción repy añónte: ndoikéi dividendo, ñehepymeʼẽ ha impuesto. Ganancia ohasavaʼekue ndohechaukái tenondeguáva.';

  @override
  String get watchShare => 'Emoherakuã lista';

  @override
  String get watchImport => 'Embojoaju símbolo';

  @override
  String get watchImportHint =>
      'Emboja símbolo-kuéra ojeipeʼáva coma, paʼũ térã línea pyahu rupive – techapyrã, peteĩ lista ojekomparti vaʼekue nendive.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Oñembojoaju $count acción',
      one: 'Oñembojoaju 1 acción',
      zero: 'Ndaipóri acción pyahu',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Tuichavéva raẽ';

  @override
  String get positionsSortGain => 'Ganancia total tuichavéva raẽ';

  @override
  String get positionsSortToday => 'Ko árape iporãvéva raẽ';

  @override
  String get chartMyBuys => 'Ne jejogua';

  @override
  String get chartMySells => 'Ne ñemu';

  @override
  String get shortcutsTitle => 'Mbopyaʼeha teclado-pegua';

  @override
  String usMarketOpen(String time) {
    return 'Merkádo EUA ijurujáva · oñembotýta $time rire';
  }

  @override
  String usMarketClosed(String time) {
    return 'Merkádo EUA oñembotypáma · ojepeʼáta $time rire';
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
    return '$days ára $hours h';
  }

  @override
  String get portfolioGoalSet => 'Emoĩ jehupytyrã';

  @override
  String get portfolioGoalTitle => 'Cartera jehupytyrã';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · Jehupytyrã: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Rehupytýma jehupytyrã: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Embogue jehupytyrã';
}
