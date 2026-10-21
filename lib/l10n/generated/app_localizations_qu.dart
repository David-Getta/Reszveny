// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Quechua (`qu`).
class AppLocalizationsQu extends AppLocalizations {
  AppLocalizationsQu([String locale = 'qu']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Huk accionpa fotonta hurquy, hinaspa tukuy imatapas chaymanta yachay.';

  @override
  String get homeHint =>
      'Accionpa certificadon, broker aplicacionpa pantallan, periódico utaq empresapa logon – accionta riqsichiq imapas.';

  @override
  String get takePhoto => 'Foto hurquy';

  @override
  String get chooseFromGallery => 'Galeríamanta akllay';

  @override
  String get chooseImage => 'Huk rikch\'ayta akllay';

  @override
  String get enterTickerManually => 'Tickerta makiwan qillqay';

  @override
  String get tickerInputLabel => 'Símbolo (ticker)';

  @override
  String get tickerInputHint => 'kayhina: AAPL';

  @override
  String get lookUp => 'Maskay';

  @override
  String demoModeBanner(String symbols) {
    return 'Demo modo – qhatu datospaq llave mana churasqachu. Muestra datosqa kaykunapaq kan: $symbols.';
  }

  @override
  String get recognizing => 'Rikch\'ayta t\'aqwichkan…';

  @override
  String get loadingData => 'Datosta apamuchkan…';

  @override
  String get noCandidatesTitle => 'Mana ima accionpas riqsikunchu';

  @override
  String get noCandidatesBody =>
      'Kay rikch\'aypi mana accionta riqsiyta atirqaykuchu. Aswan sut\'i fotowan huktawan ruway, utaq tickerta makiwan qillqay.';

  @override
  String get whatWeSaw => 'Rikusqayku';

  @override
  String get chooseCandidateTitle => 'Mayqin accionta munarqanki?';

  @override
  String confidencePercent(int percent) {
    return '$percent% confianza';
  }

  @override
  String get settings => 'Allichaykuna';

  @override
  String get language => 'Simi';

  @override
  String get systemLanguage => 'Sistemapa simin';

  @override
  String get about => 'Kaymanta';

  @override
  String get disclaimer =>
      'Kay aplicacionqa willakuyllata qun, manam qullqi churanapaq yuyaychaychu. Datosqa qhipa utaq mana chiqaq kanman.';

  @override
  String dataSource(String source) {
    return 'Datospa pukyun: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Riqsiy: $source';
  }

  @override
  String get retry => 'Huktawan ruway';

  @override
  String get cancel => 'Cancelay';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Wichq\'ay';

  @override
  String get errorGeneric => 'Huk pantay karqan.';

  @override
  String get errorSectionUnavailable =>
      'Kay t\'aqata mana apamuyta atirqanchu.';

  @override
  String get notAvailable => 'mana kanchu';

  @override
  String get sectionIdentity => 'Riqsichiy';

  @override
  String get sectionPrice => 'Chanin';

  @override
  String get sectionValuation => 'Chaninchay';

  @override
  String get sectionFinancials => 'Qullqi kaqkuna';

  @override
  String get sectionDividend => 'Dividendo';

  @override
  String get sectionProfile => 'Empresamanta';

  @override
  String get sectionAnalysts => 'T\'aqwiqkunapa chaninchaynin';

  @override
  String get sectionNews => 'Willakuykuna';

  @override
  String get sectionRecognition => 'Riqsiymanta detallekuna';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Bolsa';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Qullqi';

  @override
  String get labelCountry => 'Suyu';

  @override
  String get labelIndustry => 'Industria';

  @override
  String get labelSector => 'Sector';

  @override
  String get labelWebsite => 'Web raphi';

  @override
  String get labelIpoDate => 'IPOpa p\'unchawnin';

  @override
  String get labelMarketCap => 'Qhatupi chanin';

  @override
  String get labelSharesOutstanding => 'Puriq accionkuna';

  @override
  String get labelEmployees => 'Llamk\'aqkuna';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Uma wasi';

  @override
  String get labelDescription => 'Sut\'inchay';

  @override
  String get labelLastPrice => 'Qhipa chanin';

  @override
  String get labelChange => 'Hukyay';

  @override
  String get labelOpen => 'Kichakuy';

  @override
  String get labelDayHigh => 'P\'unchawpa aswan hatunnin';

  @override
  String get labelDayLow => 'P\'unchawpa aswan uchuynin';

  @override
  String get labelPreviousClose => 'Ñawpaq wichq\'akuy';

  @override
  String get labelWeek52High => '52 semanapi aswan hatun';

  @override
  String get labelWeek52Low => '52 semanapi aswan uchuy';

  @override
  String get labelAverageVolume10d => 'Chawpi volumen (10 p\'unchaw)';

  @override
  String updatedAt(String time) {
    return 'Musuqchasqa $time';
  }

  @override
  String get labelPeTrailing => 'P/E (ñawpaq)';

  @override
  String get labelPeForward => 'P/E (hamuq)';

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
  String get labelRevenueTtm => 'Ingresos (TTM)';

  @override
  String get labelNetIncomeTtm => 'Ganancia neta (TTM)';

  @override
  String get labelGrossMargin => 'Margen bruto';

  @override
  String get labelOperatingMargin => 'Margen operativo';

  @override
  String get labelNetMargin => 'Margen neto';

  @override
  String get labelRoe => 'Patrimoniopa rendimienton';

  @override
  String get labelRoa => 'Activokunapa rendimienton';

  @override
  String get labelDebtToEquity => 'Manu / patrimonio';

  @override
  String get labelCurrentRatio => 'Ratio de liquidez';

  @override
  String get labelRevenueGrowth => 'Ingresospa wiñaynin (YoY)';

  @override
  String get labelEpsGrowth => 'EPSpa wiñaynin (YoY)';

  @override
  String get labelDividendYield => 'Dividendopa rendimienton';

  @override
  String get labelDividendPerShare => 'Sapa accionpaq dividendo';

  @override
  String get labelPayoutRatio => 'Ratio de reparto';

  @override
  String get labelConsensus => 'Consenso';

  @override
  String get ratingStrongBuy => 'Sinchita rantiy';

  @override
  String get ratingBuy => 'Rantiy';

  @override
  String get ratingHold => 'Waqaychay';

  @override
  String get ratingSell => 'Rantikuy';

  @override
  String get ratingStrongSell => 'Sinchita rantikuy';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count t\'aqwiq',
      one: '$count t\'aqwiq',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Pacha: $period';
  }

  @override
  String get noNews => 'Mana musuq willakuykuna kanchu.';

  @override
  String get openArticle => 'Qillqata kichay';

  @override
  String get openLinkFailed => 'Mana t\'inkita kichayta atirqanchu.';

  @override
  String get recognitionSummary => 'Pisichay';

  @override
  String get recognitionEvidence => 'Imarayku chhaynata yuyayku';

  @override
  String get recognitionRawText => 'Rikch\'aymanta ñawinchasqa qillqa';

  @override
  String get errMissingAnthropicKey =>
      'Rikch\'ay riqsiyqa mana churasqachu (mana ANTHROPIC_API_KEY kanchu). Tickerta makiwan qillqay.';

  @override
  String get errRecognitionUnreachable =>
      'Riqsiy servicioman mana chayayta atirqanchu. Internet t\'inkiyniykita qhaway.';

  @override
  String errRecognitionHttp(String status) {
    return 'Riqsiy servicioqa pantayta kutichirqan (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Riqsiy servicioqa kay rikch\'ayta mana ruwayta atirqanchu.';

  @override
  String get errRecognitionTruncated =>
      'Riqsiypa kutichiyninqa kuchusqa karqan. Ama hina kaspa, huktawan ruway.';

  @override
  String get errRecognitionBadResponse =>
      'Riqsiy serviciomanta mana suyasqa kutichiy.';

  @override
  String get errRecognitionEmpty =>
      'Riqsiy servicioqa ch\'usaq kutichiyta qurqan.';

  @override
  String get errMissingFinnhubKey =>
      'Qhatu datosqa mana churasqachu (mana FINNHUB_API_KEY kanchu).';

  @override
  String get errMarketUnreachable =>
      'Qhatu datos servicioman mana chayayta atirqanchu. Internet t\'inkiyniykita qhaway.';

  @override
  String get errMarketRateLimited =>
      'Qhatu datos servicioman ancha achka mañakuykuna. Ama hina kaspa, huk minutota suyay.';

  @override
  String errMarketHttp(String status) {
    return 'Qhatu datos servicioqa pantayta kutichirqan (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Qhatu datos serviciomanta mana suyasqa kutichiy.';

  @override
  String errNoQuote(String symbol) {
    return '$symbol accionpaq mana chanin datos tarikunchu.';
  }

  @override
  String errNoProfile(String symbol) {
    return '$symbol accionpaq mana empresamanta willakuy tarikunchu.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Demo modoqa kaykunallatam yanapan: $symbols. Kawsaq datospaq FINNHUB_API_KEY yapay.';
  }

  @override
  String errUnknown(String detail) {
    return 'Huk pantay karqan: $detail';
  }

  @override
  String get newSearch => 'Musuq maskay';

  @override
  String get recentSearches => 'Qhipa maskasqakuna';

  @override
  String get noRecentSearches => 'Manaraq maskasqakuna kanchu.';

  @override
  String get clearRecent => 'Qhipa maskasqakunata pichay';

  @override
  String get greeting => 'Mayqin accionta qhawasun?';

  @override
  String get searchHint => 'Ticker utaq empresapa sutin';

  @override
  String get attachImage => 'Rikch\'ayta k\'askachiy';

  @override
  String get searchResultsTitle => 'Maskaypa tarisqankuna';

  @override
  String errNoResults(String query) {
    return '«$query» maskaypaq mana ima accionpas tarikunchu.';
  }

  @override
  String get quickBarHint => 'Ticker utaq empresapa sutinta qillqay…';

  @override
  String get openFullWindow => 'Ventanata kichay';

  @override
  String hotkeyHint(String shortcut) {
    return 'Maypipas $shortcut ñit\'iy WhatStockta waqyanaykipaq.';
  }

  @override
  String get trayOpen => 'WhatStockta kichay';

  @override
  String get trayQuickSearch => 'Utqay maskay';

  @override
  String get trayQuit => 'Lluqsiy';

  @override
  String get appearance => 'Rikch\'akuy';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeDark => 'Tutayaq';

  @override
  String get themeLight => 'K\'anchaq';

  @override
  String get back => 'Kutiy';

  @override
  String get aiSectionTitle => 'AI t\'aqwiy';

  @override
  String get aiIntro =>
      'AI qillqasqan sut\'i qhawariy: qhipa willakuykunapa pisichaynin, negocio, kallpankuna, peligrokuna, pakasqa kaqkuna, chaninchay, chanin hamuqpaq escenariokuna (psicológico, sociológico, técnico, macro qhawariykunamanta), hinallataq ima qhawanapaq kaqkuna.';

  @override
  String get aiGenerate => 'T\'aqwiyta ruway';

  @override
  String get aiRegenerate => 'Musuqmanta ruway';

  @override
  String get aiGenerating =>
      'T\'aqwiyta wakichichkan… huk utaq iskay minutota unayanman.';

  @override
  String get aiSources => 'Pukyukuna';

  @override
  String aiGeneratedAt(String time) {
    return 'Ruwasqa $time';
  }

  @override
  String get aiDisclaimer =>
      'AI ruwasqan t\'aqwiy, llapanpaq datoskunapi qhipa willakuykunapipas sayasqa. Pantaykunayuq utaq mawk\'aña kanman, manataq qullqi churanapaq yuyaychaychu.';

  @override
  String get errAiNotConfigured =>
      'AI t\'aqwiyqa mana churasqachu (mana ANTHROPIC_API_KEY kanchu).';

  @override
  String get errAiUnreachable =>
      'AI servicioman mana chayayta atirqanchu. Internet t\'inkiyniykita qhaway.';

  @override
  String errAiHttp(String status) {
    return 'AI servicioqa pantayta kutichirqan (HTTP $status).';
  }

  @override
  String get errAiRefused =>
      'AI servicioqa kay accionta t\'aqwiyta mana munarqanchu.';

  @override
  String get errAiBadResponse => 'AI serviciomanta mana suyasqa kutichiy.';

  @override
  String get sectionChart => 'Chaninpa siq\'in';

  @override
  String get rangeOneWeek => '1S';

  @override
  String get rangeOneMonth => '1K';

  @override
  String get rangeThreeMonths => '3K';

  @override
  String get rangeOneYear => '1W';

  @override
  String get rangeFiveYears => '5W';

  @override
  String get chartUnavailable =>
      'Kunan datos pukyupiqa chaninpa ñawpa kaqninkuna mana kanchu.';

  @override
  String get sectionStatements => 'Qullqi willakuykuna (sapa wata)';

  @override
  String get labelFiscalYear => 'Fiscal wata';

  @override
  String get labelRevenue => 'Ingresos';

  @override
  String get labelNetIncome => 'Ganancia neta';

  @override
  String get labelTotalAssets => 'Llapan activokuna';

  @override
  String get labelTotalLiabilities => 'Llapan pasivokuna';

  @override
  String get labelEquity => 'Accionistakunapa patrimonion';

  @override
  String get labelOperatingCashFlow => 'Flujo de caja operativo';

  @override
  String get statementsUnavailable =>
      'Kay accionpaq mana qullqi willakuykuna kanchu.';

  @override
  String get launchAtLogin => 'Yaykuspa qallarichiy';

  @override
  String get hotkeyLabel => 'Llapanpaq atajo';

  @override
  String get hotkeyRecordHint =>
      'Kaypi ñit\'iy, chaymanta musuq teclakunata ñit\'iy';

  @override
  String get hotkeyReset => 'Ñawpaq kaqman kutichiy';

  @override
  String get pasteImage => 'Copiasqa rikch\'ayta churay';

  @override
  String get errClipboardNoImage => 'Mana copiasqa rikch\'ay kanchu.';

  @override
  String get favorites => 'Munasqakuna';

  @override
  String get addToFavorites => 'Munasqakunaman yapay';

  @override
  String get removeFromFavorites => 'Munasqakunamanta hurquy';

  @override
  String get noFavorites =>
      'Manaraq munasqakuna kanchu. Huk accionpi quyllurta ñit\'iy yapanaykipaq.';

  @override
  String get displayCurrency => 'Rikuchinapaq qullqi';

  @override
  String get displayCurrencyNone => 'Accionpa qullqillan';

  @override
  String labelConverted(String currency) {
    return '≈ $currency qullqipi';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Cambio: 1 $from = $rate $to (BCE, $date)';
  }

  @override
  String get updates => 'Musuqchaykuna';

  @override
  String currentVersion(String version) {
    return 'Versión $version';
  }

  @override
  String get autoUpdate => 'Musuqchaykunata kikinmanta churay';

  @override
  String get checkForUpdates => 'Musuqchaykunata maskay';

  @override
  String get updateChecking => 'Musuqchaykunata maskachkan…';

  @override
  String get updateUpToDate => 'Aswan musuq versiónniyuqmi kanki.';

  @override
  String updateAvailable(String version) {
    return '$version versiónqa kanñam.';
  }

  @override
  String get updateDownloading => 'Musuqchayta qhipanpi uraqachichkan…';

  @override
  String get updateDownloaded =>
      'Musuqchayqa listoña. Churanapaq wakmanta qallarichiy.';

  @override
  String get updateNow => 'Musuqchay';

  @override
  String get restartNow => 'Wakmanta qallarichiy';

  @override
  String get updatesViaStore =>
      'Musuqchaykunaqa app store nisqawan kikinmanta chayamun.';

  @override
  String get updateCheckFailed => 'Musuqchaykunata mana maskayta atirqanchu.';

  @override
  String get subscription => 'Suscripción';

  @override
  String get planTrial => 'Malliy';

  @override
  String get planNormal => 'Normal';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Mana activo plan kanchu';

  @override
  String planAnalysesPerMonth(int count) {
    return 'Sapa killa $count t\'aqwiy';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$days p\'unchaw gratis malliy, $count t\'aqwiywan';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Malliypaq $days p\'unchawllaña puchun',
      one: 'Malliypaq $days p\'unchawllaña puchun',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Gratis malliyniykiqa tukukunña. T\'aqwiyta qatipanaykipaq huk planta akllay.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Kay pachapaq $total t\'aqwiymanta $remaining puchun';
  }

  @override
  String extraCredits(int count) {
    return '$count yapa t\'aqwiy';
  }

  @override
  String renewsOn(String date) {
    return '$date p\'unchawpi musuqchakunqa';
  }

  @override
  String get choosePlan => 'Planta akllay';

  @override
  String get currentPlan => 'Kunan plan';

  @override
  String get subscribe => 'Suscribikuy';

  @override
  String get perMonth => '/ killa';

  @override
  String get extraPacksTitle =>
      'Astawanchu munanki? Yapa t\'aqwiykunata rantiy';

  @override
  String get extraPacksHint =>
      'Yapa t\'aqwiykunaqa manam hayk\'appas vencenchu, sapa killa t\'aqwiyniyki tukukuptinmi llamk\'achikun.';

  @override
  String get buy => 'Rantiy';

  @override
  String get restorePurchases => 'Rantisqakunata kutichiy';

  @override
  String get manageSubscription => 'Suscripciónta kamachiy';

  @override
  String get purchaseSuccess => 'Sulpayki! Rantisqaykiqa activoña.';

  @override
  String get purchasePending => 'Rantiy suyachkan…';

  @override
  String get purchaseFailed => 'Rantiyqa mana tukukuyta atirqanchu.';

  @override
  String get purchaseCanceled => 'Rantiyqa cancelasqa.';

  @override
  String get billingUnavailable =>
      'Kay plataformapiqa manaraq rantiy atikunchu. Celularniykipi utaq Macpi suscribikuy; planniykiqa llapan equipokunapi llamk\'anqa.';

  @override
  String get errQuotaExceeded =>
      'Kay pachapaq manaña t\'aqwiykuna puchunkichu. Planniykita wichachiy utaq yapa t\'aqwiykunata rantiy.';

  @override
  String get errTrialExpired =>
      'Gratis malliyniykiqa tukukunña. Qatipanaykipaq huk planta akllay.';

  @override
  String get errNoPlan => 'AI t\'aqwiypaqqa activo plan kananmi.';

  @override
  String get viewPlans => 'Plankunata qhaway';

  @override
  String get usageTitle => 'Llamk\'achiy';

  @override
  String get demoPurchaseNote =>
      'Demo cobro: kay plataformapiqa rantiykunaqa simulasqallam.';

  @override
  String get mostPopular => 'Aswan munasqa';

  @override
  String get bestValue => 'Aswan allin chanin';

  @override
  String get planFeaturesCommon =>
      'Sapa planpim kachkan foto riqsiy, kawsaq datos, siq\'ikuna, munasqakuna hinallataq llapan 120 simikuna. Kamachisqa yupayqa AI t\'aqwiykunapaqmi.';

  @override
  String get searchLanguages => 'Simita maskay…';

  @override
  String get noLanguageMatch => 'Mana ima simipas tupanchu.';

  @override
  String get aiSettings => 'AI t\'aqwiy';

  @override
  String get aiLength => 'Sunin';

  @override
  String get aiDepthBrief => 'Pisi';

  @override
  String get aiDepthStandard => 'Chawpi';

  @override
  String get aiDepthDeep => 'Ukhu';

  @override
  String get aiDepthBriefDesc => 'Aswan chaniyuq kaqkunalla, utqaylla.';

  @override
  String get aiDepthStandardDesc =>
      'Hunt\'asqa willakuy, llapan t\'aqakunawan.';

  @override
  String get aiDepthDeepDesc =>
      'Astawan web maskaykuna, kikin hina empresakunawan tupachiy, aswan ukhu detallekunapas.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Yaqa $min–$max simi';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count t\'aqwiyta llamk\'achin',
      one: '$count t\'aqwiyta llamk\'achin',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Ñawinchaqpa patan';

  @override
  String get aiReaderBeginner => 'Qallariq';

  @override
  String get aiReaderExperienced => 'Yachayniyuq';

  @override
  String get aiReaderBeginnerDesc =>
      'Sut\'i simi; sapa técnico simitam sut\'inchakun.';

  @override
  String get aiReaderExperiencedDesc =>
      'Aswan sinchi qillqa, qullqi simikunawan.';

  @override
  String get aiCounterArgument => 'Aswan sinchi contra yuyay';

  @override
  String get aiCounterArgumentDesc =>
      'Pisichayqa sapa kutim tukukun kikin tukukuyninpa contranpi aswan allin yuyaywan.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Planniykiwan sapa t\'aqwiypaq $count web maskaykama',
      one: 'Planniykiwan sapa t\'aqwiypaq $count web maskaykama',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Chawpi sunin plankama: Normal $normal, Pro $pro, Max $max, Ultra $ultra. Pisiqa 2 aswan pisita, Ukhuqa 2 aswan achkata llamk\'achin.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count web maskaykama',
      one: '$count web maskaykama',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'sapa t\'aqwiypaq $count web maskay',
      one: 'sapa t\'aqwiypaq $count web maskay',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Kay suniqa $needed t\'aqwiyta munan, ichaqa $left t\'aqwiyllam puchun. Allichaykunapi aswan pisi sunita akllay utaq astawan t\'aqwiykunata hap\'iy.';
  }

  @override
  String get outlookMarketMood => 'Qhatupa sunqun';

  @override
  String get moodVeryPessimistic => 'Ancha pesimista';

  @override
  String get moodPessimistic => 'Pesimista';

  @override
  String get moodNeutral => 'Neutral';

  @override
  String get moodOptimistic => 'Optimista';

  @override
  String get moodVeryOptimistic => 'Ancha optimista';

  @override
  String get scenarioBull => 'Wichaq escenario';

  @override
  String get scenarioBase => 'Chawpi escenario';

  @override
  String get scenarioBear => 'Uraykuq escenario';

  @override
  String outlookCurrentPrice(String price) {
    return 'Kunan chanin: $price';
  }

  @override
  String get outlookKeyLevels => 'Ancha chaniyuq patakuna';

  @override
  String get keyLevelSupport => 'Soporte';

  @override
  String get keyLevelResistance => 'Resistencia';

  @override
  String get keyLevelAnchor => 'Ancla';

  @override
  String get upcomingEvents => 'Hamuq ruwaykuna';

  @override
  String get outlookChartNote =>
      'Rikuchiq rangokuna; probabilidadkunaqa yaqa yuyaykunallam, manam hamuqta willaykunachu.';

  @override
  String get accountTitle => 'Cuenta';

  @override
  String get signIn => 'Yaykuy';

  @override
  String get signOut => 'Cuentamanta lluqsiy';

  @override
  String get notSignedIn => 'Mana yaykusqa';

  @override
  String get accountBenefit =>
      'Yaykuy, suscripciónniyki llapan equipoykikunapi llamk\'ananpaq.';

  @override
  String get accountSyncedNote =>
      'Suscripciónniyki puchuq t\'aqwiyniykikunapas sapa equipopi kaqllam.';

  @override
  String get signInTitle => 'WhatStockman yaykuy';

  @override
  String get emailLabel => 'Correo electrónico';

  @override
  String get continueWithEmail => 'Correowan qatipay';

  @override
  String codeSentTo(String email) {
    return '6 yupayniyuq códigota kay correoman apachirqayku: $email. 10 minutopaqmi valen.';
  }

  @override
  String get codeLabel => 'Yaykuna código';

  @override
  String get resendCode => 'Musuq códigota apachiy';

  @override
  String get useDifferentEmail => 'Huk correota llamk\'achiy';

  @override
  String get errInvalidCode => 'Códigoqa pantasqam utaq vencesqañam.';

  @override
  String get errInvalidEmail =>
      'Ama hina kaspa, allin correo electrónicota qillqay.';

  @override
  String get errSignInFailed =>
      'Mana yaykuyta atirqanchu. T\'inkiyniykita qhaway, huktawan ruway.';

  @override
  String get checkoutWaiting =>
      'Navegadorniykipi pagota tukuy. Tukukuptinqa aplicaciónmi kikinmanta musuqchakunqa.';

  @override
  String get paymentViaStripe =>
      'Navegadorniykipi Stripe nisqawan mana manchakuspa pagay. Mayk\'aqpas cancelayta atinki.';

  @override
  String get paymentViaStore =>
      'App Store utaq Google Play cuentaykiwan cobrakun. Tiendapa allichayninkunapi mayk\'aqpas cancelayta atinki.';

  @override
  String get keySpace => 'Espacio';

  @override
  String get doubleOptionTitle => 'Option iskay kutita ñit\'iy';

  @override
  String get doubleOptionSubtitle =>
      'Option teclata utqaylla iskay kutita ñit\'ispapas WhatStocktam waqyanki.';

  @override
  String get doubleOptionPermission =>
      'Huk aplicacionkunapipas llamk\'ananpaq, WhatStockta saqiy Ajustes del Sistema → Privacidad y seguridad → Monitorización de entrada nisqapi, chaymanta aplicaciónta wakmanta kichay.';

  @override
  String get openSystemSettings => 'Ajustes del Sistema nisqata kichay';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Maypipas $shortcut ñit\'iy utaq Option iskay kutita ñit\'iy WhatStockta waqyanaykipaq.';
  }

  @override
  String get scenarioMostLikely => 'Aswan atikuq';

  @override
  String get longTermToday => 'Kunan';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years wata',
      one: '$years wata',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range sapa wata';
  }

  @override
  String longTermLikely(String price) {
    return 'aswan atikuq $price';
  }

  @override
  String get confidenceLow => 'Pisi confianza';

  @override
  String get confidenceMedium => 'Chawpi confianza';

  @override
  String get confidenceHigh => 'Hatun confianza';

  @override
  String get longTermNote =>
      'Unay pachapaq rangokunaqa nisqa yuyaykunapi sayan, pacha purisqanman hinam kicharikun. Chaninkunaqa mana dividendokunata hap\'inchu. Yaqa yuyaykunallam, manam hamuqta willaykunachu.';

  @override
  String get portfolio => 'Portafolio';

  @override
  String get portfolioEmpty =>
      'Manaraq imapas kanchu. Huk accionta kichay hinaspa «Portafolioman yapay» nisqata ñit\'iy, kapuqniykita qatipanaykipaq.';

  @override
  String get portfolioLocalNote =>
      'Kay equipollapim waqaychasqa. Llapan yupaykunaqa BCEpa referencia tasankunawan tikrasqa; chaninkunaqa qhipa kanman.';

  @override
  String get addToPortfolio => 'Portafolioman yapay';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol yapay';
  }

  @override
  String get portfolioQuantity => 'Accionkunapa yupaynin';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Sapa accionpa chanin ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Rantisqa p\'unchaw';

  @override
  String get portfolioAdd => 'Yapay';

  @override
  String get portfolioInvalidNumber => 'Ceromanta aswan hatun yupayta qillqay.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol portafolioykiman yapasqa.';
  }

  @override
  String get portfolioTotalValue => 'Llapan chanin';

  @override
  String get portfolioToday => 'Kunan';

  @override
  String get portfolioGainLoss => 'Ganancia/pérdida';

  @override
  String get portfolioInvested => 'Churasqa qullqi';

  @override
  String get portfolioAllocation => 'Rakiy';

  @override
  String get portfolioPositions => 'Posicionkuna';

  @override
  String portfolioAvgCost(String price) {
    return 'chawpi chanin $price';
  }

  @override
  String get portfolioYourPosition => 'Posiciónniyki';

  @override
  String get portfolioPurchases => 'Rantisqakuna';

  @override
  String get portfolioRemove => 'Hurquy';

  @override
  String get portfolioExcluded =>
      'Chaninnin utaq tipo de cambionin mana kaq posicionkunaqa llapan yupaykunapi mana yupakunchu.';

  @override
  String get priceAlerts => 'Chanin willachiykuna';

  @override
  String get setPriceAlert => 'Chanin willachiyta churay';

  @override
  String alertDialogTitle(String symbol) {
    return 'Chanin willachiy · $symbol';
  }

  @override
  String get alertKindAbove => 'Kaymanta aswan wichan';

  @override
  String get alertKindBelow => 'Kaymanta aswan uraykun';

  @override
  String get alertKindMove => 'Huk p\'unchawpi ancha kuyun';

  @override
  String alertTargetPrice(String currency) {
    return 'Chanin ($currency)';
  }

  @override
  String get alertMovePercent => 'P\'unchawpa kuyuynin (%)';

  @override
  String get alertAlreadyMet => 'Chaninqa kay patatañam pasan.';

  @override
  String get alertSave => 'Willachiyta churay';

  @override
  String alertCreated(String symbol) {
    return '$symbol accionpaq willachiy churasqa.';
  }

  @override
  String get alertsEmpty =>
      'Manaraq chanin willachiykuna kanchu. Huk accionta kichay hinaspa campanata ñit\'iy hukta churanaykipaq.';

  @override
  String get alertsNote =>
      'WhatStock llamk\'achkaptinqa sapa 5 minutopi willachiykunata qhawan. Computadorapiqa menú barrapi utaq tray nisqapi llamk\'aspa qhipakun; celularpiqa, kunanpaqqa aplicación kichasqa kaptinllam willachiykuna chayamun.';

  @override
  String alertDescAbove(String price) {
    return '$price patanpi';
  }

  @override
  String alertDescBelow(String price) {
    return '$price uranpi';
  }

  @override
  String alertDescMove(String percent) {
    return 'P\'unchawpa kuyuynin ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return '$date p\'unchawpi $price chaninpi rikch\'arirqan';
  }

  @override
  String get alertRearm => 'Wakmanta activay';

  @override
  String get alertDelete => 'Qulluy';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol $price patanman wicharqan';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol $price uranman uraykurqan';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol kunan $percent kuyurqan';
  }

  @override
  String alertHitBody(String price) {
    return 'Kunan chanin: $price';
  }

  @override
  String get alertOpen => 'Kichay';

  @override
  String get keepInTrayTitle => 'Ventana wichq\'asqa kaptinpas llamk\'achun';

  @override
  String get keepInTraySubtitle =>
      'WhatStockqa menú barrapi utaq tray nisqapi qhipakun, chaymi atajopas chanin willachiykunapas llamk\'allanku.';

  @override
  String get termsOfUse => 'Llamk\'achiypa kamachiykunan';

  @override
  String get privacyPolicy => 'Privacidad kamachiy';

  @override
  String get subscriptionLegal =>
      'Suscripciónkunaqa sapa killa kikinmanta musuqchakunku cancelanaykikama. Suscribikuspaqa Llamk\'achiypa kamachiykunanta Privacidad kamachiytapas chaskinki.';

  @override
  String get deleteAccount => 'Cuentata qulluy';

  @override
  String get deleteAccountTitle => 'Cuentaykita qulluyta munankichu?';

  @override
  String get deleteAccountBody =>
      'Cuentayki hinallataq servidorniykupi waqaychasqa llapan kaqkuna (correo, cupo, llamk\'achiy) wiñaypaq qullusqa kanqa, mana llamk\'achisqa t\'aqwiykunapas chinkanqa. Navegadorpi pagasqa suscripciónqa chay kutillam cancelakun; App Store utaq Google Play suscripcióntaqa tiendapa allichayninkunapim cancelana.';

  @override
  String get deleteLocalData =>
      'Kay equipopi datostapas qulluy (portafolio, willachiykuna, munasqakuna, historial, waqaychasqa t\'aqwiykuna)';

  @override
  String get deleteAccountConfirm => 'Wiñaypaq qulluy';

  @override
  String get accountDeleted => 'Cuentaykiqa qullusqañam.';

  @override
  String get errDeleteAccount =>
      'Cuentataqa mana qulluyta atirqanchu. T\'inkiyniykita qhaway, huktawan ruway.';

  @override
  String get aiTrialBriefNote =>
      'Malliy t\'aqwiykunaqa pisillam, aswan utqay AI modelowanmi ruwasqa. Huk planwanqa aswan atiyniyuq AI-ykuta, astawan web maskaykunata, Chawpi, Ukhu sunikunatapas hap\'inki.';

  @override
  String get billingMonthly => 'Sapa killa';

  @override
  String get billingYearly => 'Sapa wata';

  @override
  String get yearlyDiscount => '2 killa gratis';

  @override
  String get perYear => '/ wata';

  @override
  String pricePerMonthApprox(String price) {
    return 'Sapa killa ≈ $price';
  }

  @override
  String get subscriptionLegalYearly =>
      'Watapaq suscripciónkunaqa sapa wata kikinmanta musuqchakunku cancelanaykikama. Suscribikuspaqa Llamk\'achiypa kamachiykunanta Privacidad kamachiytapas chaskinki.';

  @override
  String get myAnalyses => 'T\'aqwiyniykuna';

  @override
  String get navAlerts => 'Willachiykuna';

  @override
  String get inviteTitle => 'Wisq\'asqa ñawpaq qhawana';

  @override
  String get inviteBody =>
      'Kunanqa WhatStock invitacionllawanmi kachkan. Chaskisqayki invitación códigota qillqay.';

  @override
  String get inviteCodeLabel => 'Invitación código';

  @override
  String get inviteContinue => 'Qatipay';

  @override
  String get inviteInvalid => 'Kay invitación códigoqa manam allinchu.';

  @override
  String get inviteExpired =>
      'Kay invitacionqa vencesqañam. Invitasuqniykiman musuq códigota mañakuy.';

  @override
  String get inviteDeviceLimit =>
      'Kay invitación códigoqa ñam aswan achka atikusqan aparatokunapi llamk\'achisqaña.';

  @override
  String get previewConfidential => 'Pakasqa ñawpaq qhawana';

  @override
  String get errPreviewDailyLimit =>
      'Kay ñawpaq qhawanapa kunan p\'unchaw analisis limitenqa tukukunñam. Paqarin hukmanta kallpachakuy.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hora ñawpaqta',
      one: '1 hora ñawpaqta',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count p\'unchaw ñawpaqta',
      one: '1 p\'unchaw ñawpaqta',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Kay t\'aqwiyta musuqyachisunchu?';

  @override
  String staleBody(String age) {
    return '$age ruwasqa karqan. Chaymantapacha chanikuna, willakuykuna, lluqsiykunapas hukniraqyapunmanña.';
  }

  @override
  String get staleKeep => 'Ñawpaqninta qhawachiy';

  @override
  String get staleRefresh => 'Musuqta ruway';

  @override
  String seeAll(int count) {
    return 'Llapanta qhaway ($count)';
  }

  @override
  String get searchAnalyses => 'T\'aqwiyniykikunapi maskay';

  @override
  String get deleteAnalysis => 'Pichay';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol t\'aqwiyqa pichasqaña';
  }

  @override
  String get keyLevelAlertHint =>
      'Huk patata ñit\'iy, chanin chayman chayaptin willachiyta chaskinaykipaq.';

  @override
  String get shareAnalysisTitle => 'T\'aqwiyta rakiy';

  @override
  String get shareAsImage => 'Rikch\'a hina rakiy';

  @override
  String get shareAsText => 'Qillqa hina rakiy';

  @override
  String get shareCardFooter => 'WhatStockwan ruwasqa';

  @override
  String get shareCardDisclaimer =>
      'AI t\'aqwiy · manan qullqi churanapaq yuyaychaychu';

  @override
  String get referralTitle => 'Masiykikunata waqyay';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count yapa t\'aqwiyta',
      one: '1 yapa t\'aqwiyta',
    );
    return 'Kódigoykita rakiy. Masiyki chayllam $_temp0 chaskin, qanpas kikinta chaskinki ñawpaq t\'aqwiyninta ruwasqan qhipata.';
  }

  @override
  String get referralYourCode => 'Kódigoyki';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Waqyasqakuna: $invited · Premiyasqakuna: $rewarded';
  }

  @override
  String get referralHaveCode => 'Masiykiq kódigonchu kapusunki?';

  @override
  String get referralRedeem => 'Llamk\'achiy';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count yapa t\'aqwiy yapakun. Sumaq hamusqayki!',
      one: '1 yapa t\'aqwiy yapakun. Sumaq hamusqayki!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Kay kódigoqa manam kanchu. Qhawarispa wakmanta kallpachakuy.';

  @override
  String get referralErrOwn =>
      'Manam kikiykiq kódigoykita llamk\'achiyta atinkichu.';

  @override
  String get referralErrAlready =>
      'Ñam huk masiykiq kódigonta llamk\'achirqankiña.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count yapa t\'aqwiyta',
      one: '1 yapa t\'aqwiyta',
    );
    return 'WhatStockwan accionkunata t\'aqwini: huk accionta fotografiay, AI-taq sut\'inchan. $code kódigoywan $_temp0 chaskinki.';
  }

  @override
  String get referralCopied => 'Kódigo copiasqa';

  @override
  String get onboardTitle1 => 'Huk accionpa fotonta hurquy';

  @override
  String get onboardBody1 =>
      'Huk broker apppa pantallan, huk periódico utaq huk empresapa logon aypanmi: WhatStock accionta riqsin, chaninta, gráficonta, hatun yupaykunantapas rikuchisunki.';

  @override
  String get onboardTitle2 => 'Pisi minutopi hamut\'ay';

  @override
  String get onboardBody2 =>
      'AI t\'aqwiyqa willan ima accionta kuyuchisqanta, ima peligrokuna kasqanta, hayk\'a chaniyuq kasqanta, kimsa ñankunatapas maymanchus chanin rinman – pukyukunawan, qampa simiykipi.';

  @override
  String get onboardTitle3 => 'Sapa kuti yachaspa kay';

  @override
  String get onboardBody3 =>
      'Munasqakuna, portafolioyki, chanin willachiykunapas willasunki. T\'aqwiyniykikuna aparatoykipi qhepan, wakmanta kichanapaq listo.';

  @override
  String get onboardNext => 'Qatiq';

  @override
  String get onboardStart => 'Qallarisun';

  @override
  String get onboardSkip => 'Saltay';

  @override
  String changesTitle(String date) {
    return 'Ñawpaq t\'aqwiymanta pacha ($date)';
  }

  @override
  String get changesPrice => 'Chanin';

  @override
  String get changesNoMajor => 'Manam anchatachu imapas tikrakurqan.';

  @override
  String get changesPreviousSummary => 'Ñawpaq pisichasqa';

  @override
  String get telemetryTitle => 'WhatStock allinchanapaq yanapay';

  @override
  String get telemetryBody =>
      'Mana sutiyuq llamk\'achiy yupaykunata, urmaykuna willakuykunatapas rakinakuy: mayqin ruraykunata llamk\'achinku, ima pantasqatapas. Manapuni acciónniykikunata, t\'aqwiyniykikunata, sapaq willakuyniykikunatapas. Kayta Allichaykunapi ima pachapas tikrayta atinki.';

  @override
  String get telemetryAllow => 'Saqiy';

  @override
  String get telemetryDecline => 'Manam, sulpayki';

  @override
  String get telemetrySetting =>
      'Mana sutiyuq yupaykuna, urmaykuna willakuykunapas';

  @override
  String get telemetrySettingHint =>
      'Hayk\'a kutitataq ruraykunata llamk\'achinku, pantaykuna willakuykunapas, mana sapaq willakuykunawan, mana maskasqaykikunap t\'aqwiyniykikunap ukhunwanpas.';

  @override
  String get askButton => 'Kay t\'aqwiymanta tapukuy';

  @override
  String askTitle(String symbol) {
    return 'Tapukuykuna: $symbol';
  }

  @override
  String get askIntro =>
      'T\'aqwiymanta imatapas tapukuy: huk sasachakuy ima ninan, imataq qhawayta tikranman, huk yupay imayna tarisqa karqan. Kutichiykunaqa kay t\'aqwiypim sayan, manataq qullqi churanapaq yuyaychaychu.';

  @override
  String get askHint => 'Huk tapukuyta qillqay…';

  @override
  String get askSend => 'Apachiy';

  @override
  String get askThinking => 'Yuyaykuchkani…';

  @override
  String get askSuggest1 => 'Imataq aswan hatun sasachakuy?';

  @override
  String get askSuggest2 => 'Imataq qhawayta tikranman?';

  @override
  String get askSuggest3 => 'Mana sasallata sut\'inchay';

  @override
  String get askMaxReached =>
      'Chayqa kay t\'aqwiypaq qhipa tapukuymi karqan. Astawan tapukunaykipaq musuq t\'aqwiyta ruway.';

  @override
  String get errAskLimit =>
      'Kunan p\'unchawpa tapukuy limitenmanmi chayanki. Paqarin hukmanta kallpachakuy.';

  @override
  String get eventTomorrow => 'Paqarin';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days p\'unchaymanta',
      one: '1 p\'unchaymanta',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Kimsa killapa willakuynin';

  @override
  String get eventBeforeOpen => 'qhatu manaraq kichakuchkaptin';

  @override
  String get eventAfterClose => 'qhatu wichqakusqan qhipata';

  @override
  String eventEpsEstimate(String value) {
    return 'Suyakusqa EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'T\'aqwiyniykimanta';

  @override
  String get eventsHint =>
      'Munasqaykikunap, portafolioykip acciónninkunap willakuy p\'unchayninkuna hamuq 90 p\'unchaykunapi, t\'aqwiyniykikuna qhawachisqan p\'unchayniyuq ruwaykunapas.';

  @override
  String get eventsEmpty =>
      'Hamuq 90 p\'unchaykunapi mana p\'unchayniyuq ruwaykuna kanchu. Munasqakunata utaq portafolio acciónkunata yapay, kaypi willakuy p\'unchayninkuta qhawanaykipaq.';

  @override
  String get compareTitle => 'Tupachiy';

  @override
  String get compareAdd => 'Accionta yapay';

  @override
  String get compareRemove => 'Qichuy';

  @override
  String get compareTickerHint => 'Ticker, kayhina MSFT';

  @override
  String get compareHint =>
      'Hatun yupaykuna kuskalla; sapa siq\'ipi aswan allin chaniqa sut\'ichasqa. Qullqi yupaykunaqa sapa accionpa kikin qullqinpim.';

  @override
  String get compareNoAnalysis => 'Manaraq t\'aqwiy kanchu';

  @override
  String get portfolioDividends => 'Watapaq dividendo';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent rendimiento';
  }

  @override
  String get portfolioDividendNote =>
      'Suyasqa watapaq dividendoqa qhipa 12 killapi pagasqa dividendokunapim tiyan; hamuq pagokunaqa manam segurochu.';

  @override
  String positionDividend(String amount) {
    return 'Dividendo: watapi $amount';
  }

  @override
  String get chartAvgCost => 'Chawpiyki';

  @override
  String get chartAlertLevel => 'Willachiy';

  @override
  String get marketsToday => 'Kunan qhatukuna';

  @override
  String get notesTitle => 'Qillqasqaykuna';

  @override
  String get notesHint =>
      'Imaraykutaq rantirqanki, imatataq qhawachkanki, imataq vendenaykipaq tanqasunki?';

  @override
  String get notesInfo =>
      'Kay equipollapim waqaychasqa. AI t\'aqwiyqa qillqasqaykikunata qhawarin.';

  @override
  String notesSaved(String date) {
    return 'Waqaychasqa $date';
  }

  @override
  String get peersTitle => 'Kaqlla empresakuna';

  @override
  String get portfolioExport => 'CSV hina hurquy';

  @override
  String get portfolioImport => 'CSV-manta apamuy';

  @override
  String get portfolioImportHint =>
      'Sapa siqipi huk rantisqata k\'askachiy: ticker, hayk\'a, chanin, qullqi, p\'unchaw (YYYY-MM-DD). Columnakunaqa comawan, punto y comawan utaq tabwan t\'aqasqa kanman; uma siqiqa mana necesariochu.';

  @override
  String get portfolioImportButton => 'Apamuy';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count rantisqa yapakun',
      one: '1 rantisqa yapakun',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count siqi saqisqa',
      one: '1 siqi saqisqa',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Portafolio, munasqakuna, chanin willachiykuna, qillqasqakunapas llapan equipoykikunapi kaqllam.';

  @override
  String syncLast(String time) {
    return 'Qhipa sincronización: $time';
  }

  @override
  String get syncNow => 'Kunan sincronizay';

  @override
  String get syncFailed =>
      'Mana sincronizayta atikurqanchu. Kikillanmanta yapamanta kallpachakunqa.';

  @override
  String get alertEmailTitle => 'Correo willachiy rikhurimuptin';

  @override
  String get alertEmailOn =>
      'Sapa iskay kimsa minutopi willachiykunaykita qhawayku, correotataq kachamuykiku, aplicación wisq\'asqa kaptinpas.';

  @override
  String get alertEmailSignIn =>
      'Allichaykunapi correoykiwan yaykuy, willachiykunata correopi chaskinaykipaq, aplicación wisq\'asqa kaptinpas.';

  @override
  String get portfolioHistory => 'Chaninpa tikrakuynin';

  @override
  String get portfolioReviewTitle => 'Portafolio AI t\'aqwiy';

  @override
  String get portfolioReviewIntro =>
      'AI llapan portafolioykita qhawan: qullqiyki huk ladollapi huñusqa kasqanta, sectorkunapi qullqi rikchaqkunapipas hapisqa kasqanta, acciónniykikunapa kaqlla riesgonkunata, dividendokunatapas. 1 t\'aqwiyta llamk\'achin.';

  @override
  String get portfolioReviewButton => 'Portafolioyta t\'aqwiy';

  @override
  String get portfolioReviewAgain => 'Musuqmanta t\'aqwiy';

  @override
  String get portfolioReviewWorking => 'Portafolioykita t\'aqwichkan…';

  @override
  String get digestTitle => 'Sapa semana pisichasqa willakuy correowan';

  @override
  String get digestHint =>
      'Sapa lunes: munasqaykikuna, portafolioykipas qayna semanapi imayna kuyurirqan, hinallataq hamuq willakuyninkunapa p\'unchawninkuna.';

  @override
  String get benchmarkTitle => 'S&P 500-wan tupachisqa';

  @override
  String get benchmarkYours => 'Rantisqaykikuna';

  @override
  String get benchmarkIndex => 'Kikin qullqi S&P 500-pi';

  @override
  String benchmarkAhead(String points) {
    return 'Índicemanta $points punto porcentual aswan allin';
  }

  @override
  String benchmarkBehind(String points) {
    return 'Índicemanta $points punto porcentual qhipapi';
  }

  @override
  String get benchmarkHint =>
      'Sapa rantiyniyki qullqin chay p\'unchawllataq S&P 500 índice fondopi churasqa kanman hina. Dividendokuna mana yapasqachu; ñawpa gananciaqa mana hamuq gananciata willanchu.';

  @override
  String get portfolioSell => 'Rantikuy';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbol rantikuy';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Sapa accionpa rantikusqa chanin ($currency)';
  }

  @override
  String get portfolioSellDate => 'Rantikusqa p\'unchaw';

  @override
  String get portfolioSellAll => 'Llapan';

  @override
  String portfolioSellTooMany(String quantity) {
    return '$quantity kapusunki';
  }

  @override
  String get portfolioSold => 'Rantikusqa';

  @override
  String get portfolioRealized => 'Chiqaqpi';

  @override
  String get portfolioClosed => 'Wichq\'asqa posicionkuna';

  @override
  String get portfolioClosedNote => 'Llapan accionkuna rantikusqa';

  @override
  String get portfolioTransactions => 'Rantiy rantikuy';

  @override
  String get portfolioRealizedByYear => 'Watapi chiqaqpi ganancia';

  @override
  String get portfolioRealizedHint =>
      'Rantikusqakunaqa ñawpaqta aswan ñawpa rantisqaykikunawan tupachisqa (FIFO), kunan p\'unchawpa cambionwan tikrasqa. Impuesto willakuynikipaq, brókerniykipa extractonta llamk\'achiy.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Kay t\'aqwiy ruwasqa qhipaman, kimsa killapi musuq lluqsiykuna willakun ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Musuq lluqsiykuna';

  @override
  String get portfolioImportBrokers =>
      'Revolut, Trading 212, Interactive Brokers nisqakunamanta exportasqakunatapas riqsinmi, rantikusqakunawan; dividendokunata, churasqa qullqitapas saqinmi.';

  @override
  String get portfolioImportFile => 'Huk archivota akllay';

  @override
  String offlineBanner(String time) {
    return 'Mana t\'inkiy kanchu – qhipa waqaychasqa datos rikuchikuchkan ($time).';
  }

  @override
  String get glossMarketCap =>
      'Llapan empresa hayk\'a chaniyuq bolsapi: accionpa chanin × accionkunap yupaynin.';

  @override
  String get glossSharesOutstanding =>
      'Hayk\'a accionkunata empresa lluqsichirqan. Yapakuptinqa, sapa accionmanqa aswan huch\'uy t\'aqa chayan; kutichispa rantiyqa pisiyachin.';

  @override
  String get glossPeTrailing =>
      'Chanin ÷ sapa accionpa ganancian qhipa 12 killapi: hayk\'a watapaq kunan gananciata paganki. Aswan pisiqa aswan pisi chaniyuq, ichaqa utqhayta wiñaq empresakunaqa sapa kuti hatun P/E-yuq kanku.';

  @override
  String get glossPeForward =>
      'P/E hina, ichaqa hamuq 12 killapaq analistakunap suyasqan gananciawan. Ñawpaq P/E-manta aswan pisi kaptinqa, ganancia wiñananta suyanku.';

  @override
  String get glossPb =>
      'Chanin ÷ sapa accionpa libro chanin (kapuqkuna manukunata qichusqa). Yaqa 1 nisqaqa, qhatu empresata papelpi kapuqninman hina chanichan.';

  @override
  String get glossPs =>
      'Qhatupi chanin ÷ watapi ingresos. Pisi otaq mana ganancianyuq empresakunapaq allin; kikin industria ukhupi tupachiy.';

  @override
  String get glossEvToFcf =>
      'Empresap chanin manuntin (EV) ÷ inversionkuna qhipaman huk watapi ruwasqan qullqi. Aswan pisiqa, chaninmanta aswan qullqita chaskinki ninan.';

  @override
  String get glossPeg =>
      'P/E ÷ suyasqa watapi ganancia wiñay (%). Yaqa 1 sapa kuti chaniyuq nisqa; P/E-ta wiñaywan tupachin.';

  @override
  String get glossEps =>
      'Sapa accionpa ganancian qhipa 12 killapi. Wata wata wiñaq EPS qhali empresap aswan kallpasapa unanchankunamanta hukmi.';

  @override
  String get glossBeta =>
      'Accion qhatuwan kuska hayk\'ata kuyun: 1 = qhatu hina, 1.5 = yaqa 50% aswan hatun kuyuykuna, 1 uraypi = aswan thak.';

  @override
  String get glossRevenueTtm =>
      'Qhipa 12 killapi llapan qhatusqa, ima gastokunapas manaraq.';

  @override
  String get glossNetIncomeTtm =>
      'Llapan gastokuna, interes, impuestokuna qhipaman puchuq ganancia, qhipa 12 killapi.';

  @override
  String get glossGrossMargin =>
      'Ingresosmanta hayk\'a t\'aqa puchun productokunap chiqan gastonkuna qhipaman. Hatun margenqa sapa kuti chanita churay atiyta rikuchin.';

  @override
  String get glossOperatingMargin =>
      'Ingresosmanta hayk\'a t\'aqa puchun negociota purichiy qhipaman (pagokuna, alquiler, marketing), interes, impuestokuna manaraq.';

  @override
  String get glossNetMargin =>
      'Ingresosmanta hayk\'a t\'aqa tukukuy ganancia kapun. 20% nisqaqa, sapa 100 qhatusqamanta 20 ganancia.';

  @override
  String get glossRoe =>
      'Patrimoniopa rendimienton: watapi ganancia ÷ dueñokunap capitalnin. Rikuchin hayk\'a allinta umalliqkuna accionistakunap qullqinta llamk\'achinku; yaqa 15% hanaqpi kallpasapa.';

  @override
  String get glossRoa =>
      'Activokunapa rendimienton: watapi ganancia ÷ empresap llapan kapuqnin. Kikin industria ukhupi tupachiy.';

  @override
  String get glossDebtToEquity =>
      'Manu ÷ dueñokunap capitalnin. Aswan hatunqa aswan mañakusqa qullqi: interes wichaptin otaq negocio pisiyaptin aswan peligro.';

  @override
  String get glossCurrentRatio =>
      'Pisi pachapaq kapuqkuna ÷ huk wata ukhupi pagana cuentakuna. 1 hanaqpi kaptinqa, empresa qayllalla cuentankunata pagayta atin.';

  @override
  String get glossRevenueGrowth =>
      'Ingresos hayk\'ata wiñarqan huk wata ñawpaqmanta tupachisqa.';

  @override
  String get glossEpsGrowth =>
      'Sapa accionpa ganancian hayk\'ata wiñarqan huk wata ñawpaqmanta tupachisqa.';

  @override
  String get glossDividendYield =>
      'Watapi dividendo ÷ accionpa chanin: sapa wata chaskinayki qullqi, pagasqaykimanta porcentajepi.';

  @override
  String get glossDividendPerShare =>
      'Qhipa watapi huk accionpaq pagasqa dividendo.';

  @override
  String get glossPayoutRatio =>
      'Gananciamanta hayk\'a t\'aqa dividendo hina rakisqa. 100% hanaqpi, empresa ganasqanmanta aswanta pagan, chayqa pisillata unan.';

  @override
  String get glossTitle => 'Ima ninan?';

  @override
  String get watchNewsTitle => 'Accionniykikunamanta willakuykuna';

  @override
  String get undo => 'Kutichiy';

  @override
  String get watchSort => 'Ñiqichay';

  @override
  String get watchSortOwn => 'Ñiqichasqay';

  @override
  String get watchSortGainers => 'Aswan wichaqkuna ñawpaqta';

  @override
  String get watchSortLosers => 'Aswan urmaqkuna ñawpaqta';

  @override
  String get watchSortName => 'Ticker nisqaman hina (A–Z)';

  @override
  String get watchHint =>
      'Hapinata aysay ñiqichanapaq, lluq\'iman llusiy hurqunapaq. Siqiqa qhipa 30 p\'unchawkunata rikuchin.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: t\'aqwiyniykiqa listoñam.';
  }

  @override
  String alertFromCost(String price) {
    return 'Chawpi rantisqayki chaninmanta ($price):';
  }

  @override
  String get briefTitle => 'Kunan p’unchay acciónniykikunawan';

  @override
  String get briefButton => 'Kunan p’unchayta pisiyachiy';

  @override
  String get briefHint =>
      'AI nisqawan pisi willay, imaynatachus portafoliyuyki munasqaykikunapas kunan kuyurqanku, musuq willakuykunataq imatachus ninku. Mana t’aqwiyta apaykachanchu.';

  @override
  String get briefRefresh => 'Musuqchay';

  @override
  String get sectionEarnings => 'Kimsa killapa willakuynin';

  @override
  String earningsNext(String date) {
    return 'Qatiq willakuy: $date';
  }

  @override
  String get earningsExpected => 'Suyakusqa EPS';

  @override
  String get earningsReported => 'Willakusqa EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Qhipa $total kimsa killakunamanta $beats-pi suyakusqa EPS-wan kikin utaq aswan hatun',
      one:
          '1 kimsa killamanta $beats-pi suyakusqa EPS-wan kikin utaq aswan hatun',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol: paqarin kimsa killapa willakuynin';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol: kunan p\'unchaw kimsa killapa willakuynin';
  }

  @override
  String get earningsRemindersTitle => 'Willakuy yuyarichiykuna';

  @override
  String get earningsRemindersSubtitle =>
      'Munasqaykikunap utaq portafolioykipi acciónkunap kimsa killapa willakuynin manaraq lluqsichkaptin huk p\'unchaw ñawpaqta willachiy';

  @override
  String addAllToFavorites(int count) {
    return 'Llapanta munasqakunaman yapay ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Pantalla rikch\'aymanta apamuy';

  @override
  String get holdingsReading => 'Kapuqniykikunata ñawichkan…';

  @override
  String get holdingsReviewTitle => 'Tarisqa kapuqkuna';

  @override
  String get holdingsReviewHint =>
      'Yupaykunata qhawariy manaraq yapachkaspa. Chaninqa sapa acciónpaq chawpi rantisqa chaniykim, manam kunan p\'unchaw chaninchu.';

  @override
  String get holdingsNoPrice =>
      'Rikch\'aypi mana chawpi rantisqa chanin kanchu';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kapuqta yapay',
      one: '1 kapuqta yapay',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Kay rikch\'aypi mana acciónkunata tarinchikchu. Brokerniykiq kapuqnin p\'anqanmanta pantalla rikch\'ayta llamk\'achiy.';

  @override
  String get week52Range => '52 semanapi chiqan';

  @override
  String week52BelowHigh(String percent) {
    return '52 semanapi aswan hatunmanta $percent uraypi';
  }

  @override
  String get week52AtHigh => '52 semanapi aswan hatunpi';

  @override
  String get alertKindTrailing => 'Aswan hanaqmanta uraykun';

  @override
  String get alertTrailingPercent => 'Aswan hanaqmanta uraykuy (%)';

  @override
  String get alertTrailingHint =>
      'Chaninta wichayninpi qatin: churasqaykimanta aswan hanaq chaninmanta kay chhikata uraykuptin willasunki.';

  @override
  String alertDescTrailing(String percent) {
    return 'Aswan hanaqmanta $percent uraykuy';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'kunankama aswan hanaq: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol aswan hanaqninmanta $percent uraykurqan';
  }

  @override
  String get sectionInsiders => 'Ukhupi runakunapa rantinakuynin';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count rantiykuna',
      one: '1 rantiy',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count rantikuykuna',
      one: '1 rantikuy',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Llapan: $shares accionkuna';
  }

  @override
  String get insiderBuy => 'Rantirqan';

  @override
  String get insiderSell => 'Rantikurqan';

  @override
  String get insiderHint =>
      'Kamachiqkunapa umalliqkunapawan kichasqa qhatupi rantisqankuna rantikusqankunapas qhipa 90 p\'unchawkunapi (SEC Form 4). Opcionkunata llamk\'achiy, qusqa accionkunapas mana yupasqachu.';

  @override
  String get insiderNone =>
      'Qhipa 90 p\'unchawkunapi kichasqa qhatupi ukhupi runakunapa mana rantiynin nitaq rantikuynin kanchu.';

  @override
  String get analystTrend =>
      'Imaynatam yuyaykuna killanmanta killanman tikrarqan';

  @override
  String get watchListAll => 'Llapan';

  @override
  String get watchListNew => 'Musuq lista';

  @override
  String get watchListName => 'Listap sutin';

  @override
  String get watchListRename => 'Listap sutinta tikray';

  @override
  String get watchListDelete => 'Listata qulluy';

  @override
  String get watchListAddTo => 'Listaman yapay';

  @override
  String get watchListEmpty =>
      'Kay listapiqa manaraqmi accionkuna kanchu. Yapanapaq accionpa waqtanpi lista butonta ñit\'iy.';

  @override
  String get portfolioAskTitle => 'Tapukuykuna: portafolioyki';

  @override
  String get rangeYtd => 'Kunan wata';

  @override
  String get backupTitle => 'Waqaychasqa qillqa';

  @override
  String get backupSave => 'Waqaychasqata waqaychay';

  @override
  String get backupSaveHint =>
      'Munasqaykikuna, listaykikuna, portafolioyki, willachiykunayki, qillqasqaykikunapas huk archivopi.';

  @override
  String get backupRestore => 'Waqaychasqamanta kutichiy';

  @override
  String get backupRestoreHint =>
      'Archivopi kaqta yapan; kunan kapusqaykimanta manam imapas chinkachisqachu.';

  @override
  String get backupRestored => 'Waqaychasqa kutichisqa.';

  @override
  String get backupInvalid => 'Kay archivoqa manam WhatStock waqaychasqachu.';

  @override
  String get allocationPositions => 'Accionkuna';

  @override
  String get allocationSectors => 'Sectorkuna';

  @override
  String get allocationCurrencies => 'Qullqikuna';

  @override
  String get compareReturn1y => '1 watapi gananciay';

  @override
  String get compareFromHigh => '52 semanapi aswan hatunmanta karuynin';

  @override
  String get briefAutoTitle => 'Sapa p’unchay pisichasqa sapa tutamanta';

  @override
  String get briefAutoSubtitle =>
      '“Kunan p’unchay acciónniykikunawan” kikinmanta ruwakun tutamanta 7:00 qhipanta app llamk’ashaqtin; computadorakunapi huk willakuy willasunki. Sapa p’unchay tapukuy limitiykita apaykachan, manan t’aqwiytachu.';

  @override
  String get targetsButton => 'Munasqa rakiy';

  @override
  String get targetsTitle => 'Munasqa rakiy';

  @override
  String get targetsHint =>
      'Sapa accionpaq portafoliomanta hayk\'a rakinta kananta churay. Mana munasqa kaptinqa, k\'itita ch\'usaqta saqiy. Chaymantaqa app rikuchinqa ima rantinata utaq rantikunata.';

  @override
  String targetsSum(String percent) {
    return 'Llapan: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Rantiy ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Rantikuy ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Munasqapi';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol: suyakusqa EPS-manta aswan';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol: suyakusqa EPS-manta pisi';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'Willakusqa EPS $actual, suyakusqa $estimate';
  }

  @override
  String get newsExplain => 'Kayqa imatataq niyta munan?';

  @override
  String get watchAlertAll => 'Hatun p\'unchaw kuyuypaq willay';

  @override
  String get watchAlertAllHint =>
      'Kay listapi sapa acciónpaq chaninpa willaynin: huk p\'unchawpi kayhinata kuyuptin, wichayman utaq uraykuman, willasunki. Ñas willayniyuq kaqkuna paykunapata waqaychanqaku.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count willay churasqa',
      one: '1 willay churasqa',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Chaskisqa mirayta hurquy (CSV)';

  @override
  String get portfolioAnnualReturn => 'Watapaq rendimiento';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / wata';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Qullqiwan pesasqa watapaq rendimiento (XIRR): hayk\'ap rantisqaykita, rantikusqaykitapas qhawan, chaymi qhipaman yapasqa qullqiqa mana pantachinchu. Rikuchikun ñawpaq rantisqayki huk watayuq kaptin; dividendokunaqa manam yapasqachu.';

  @override
  String get eventsAddToCalendar => 'Kalendariuman yapay (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Portafolio willachiy';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Willachiy, tukuy portafolioyki huk p\'unchawpi chhayna kuyuriptin.';

  @override
  String get portfolioMoveAlertOff => 'Wañuchisqa';

  @override
  String portfolioMoveUp(String percent) {
    return 'Portafolioyki kunan $percent wicharirqan';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Portafolioyki kunan $percent uraykurqan';
  }

  @override
  String get whatIfTitle => '¿Imaynataq kanman qullqita churaspaqa?';

  @override
  String get whatIfAmount => 'Qullqi';

  @override
  String whatIfResult(String amount, String period) {
    return '$period ñawpaqta churasqa $amount kunan chaninchakunman';
  }

  @override
  String get whatIfNote =>
      'Acción chaninllapim tiyan: dividendokuna, pagokuna, impuestokunapas manam yapasqachu. Ñawpa gananciakunaqa manam hamuqta willanchu.';

  @override
  String get watchShare => 'Listata rakinakuy';

  @override
  String get watchImport => 'Ticker yapay';

  @override
  String get watchImportHint =>
      'Tickerkunata k\'askachiy, comawan, ch\'usaq k\'itiwan utaq musuq siqiwan t\'aqasqata – ahinataq, pipas qanwan rakinakusqan lista.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count accion yapakun',
      one: '1 accion yapakun',
      zero: 'Mana musuq accionkuna kanchu',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Aswan hatunkuna ñawpaqta';

  @override
  String get positionsSortGain => 'Aswan tukuy ganancia ñawpaqta';

  @override
  String get positionsSortToday => 'Kunan aswan allinkuna ñawpaqta';

  @override
  String get chartMyBuys => 'Rantisqaykikuna';

  @override
  String get chartMySells => 'Rantikusqaykikuna';

  @override
  String get shortcutsTitle => 'Teclado atajokuna';

  @override
  String usMarketOpen(String time) {
    return 'EE. UU. qhatu kichasqa · wichq\'akunqa $time-manta';
  }

  @override
  String usMarketClosed(String time) {
    return 'EE. UU. qhatu wichq\'asqa · kicharikunqa $time-manta';
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
    return '$days p\'unchay $hours h';
  }

  @override
  String get portfolioGoalSet => 'Hayparinata churay';

  @override
  String get portfolioGoalTitle => 'Portafoliopa hayparinan';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · Hayparina: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Hayparinaman chayarqanki: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Hayparinata hurquy';

  @override
  String get alertEdit => 'Willachiyta allichay';

  @override
  String get positionOpenLots =>
      'Kunankama hap\'isqa (aswan ñawpaqkuna ñawpaqta)';

  @override
  String get lotRemoved => 'Rantiy rantikuyqa pichasqaña';

  @override
  String get alertDeleted => 'Willay pichasqaña';

  @override
  String get alertsClearTriggered => 'Rikhurirqan willaykunata pichay';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count willay pichasqa',
      one: '1 willay pichasqa',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Qallariy pantalla';

  @override
  String get allocationCountries => 'Suyukuna';

  @override
  String get newsExplainNoteResearch =>
      'AI sut’ichay: web nisqapi chiqap kaqkunata maskhan, qillqata kichan, pukyuqa hayk’a iñinapaq kasqanta chaninchan. Manan qullqi churanapaq yuyaychaychu. Sapa p’unchay tapukuy limitiykita apaykachan, manan t’aqwiytachu.';

  @override
  String get sourceOfficial => 'Oficial';

  @override
  String get sourcePressRelease => 'Willakuy';

  @override
  String get sourceMajorNews => 'Hatun willakuq';

  @override
  String get sourceOpinion => 'Yuyay';

  @override
  String get earningsSummaryButton => '¿Ima kasharqa qhipa willakuypi?';

  @override
  String get earningsSummaryNote =>
      'Empresaq resultadonkunata willakusqanmanta, webpi tarisqan willakuykunamantawan AI pisichasqa. Manan qullqi churanapaq yuyaychaychu. Sapa p’unchay tapukuy limitiykita apaykachan, manan t’aqwiytachu.';

  @override
  String get compareLastSurprise => 'Qayna kimsa killa EPS vs suyakusqa';

  @override
  String get compareNextReport => 'Qatiq willakuy';

  @override
  String get resolvingDescription =>
      'Mayqin accionta ninki chayta maskhachkan…';

  @override
  String get instrumentTitle => 'Kay instrumentomanta';

  @override
  String get instrumentHint =>
      'Kay símbolopaq mana empresa perfil kanchu – ETF, fondo utaq certificado de depósito kanman. AI-ta tapuy imachus kasqanta, imakunachus chaypi kasqanta, hayk’achus chaninninta.';

  @override
  String get instrumentAsk => '¿Imataq kayri?';

  @override
  String get instrumentNote =>
      'Emisorpa fondo paginanmanta, webpi tarisqan qullqi sitiokunamantawan AI sut’inchasqa. Manan qullqi churanapaq yuyaychaychu. Sapa p’unchay tapukuy limitiykita apaykachan, manan t’aqwiytachu.';

  @override
  String suggestAskAi(String query) {
    return 'AI-ta tapuy: “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return '$symbols-paq kunan chaninnin mana kanchu.';
  }

  @override
  String get eventsRecentResults => 'Chayraq willakusqa willakuykuna';

  @override
  String get saveToNotes => 'Qillqasqaykunaman waqaychay';

  @override
  String get savedToNotes => 'Qillqasqaykikunaman waqaychasqa';

  @override
  String get portfolioDividendsReceived => 'Chaskisqa dividendokuna';

  @override
  String get portfolioDividendsThisYear => 'Kay wata';

  @override
  String get portfolioDividendsAllTime => 'Tukuy pacha';

  @override
  String get portfolioAddDividend => 'Dividendota yapay';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Chaskisqa qullqi ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Pagana p\'unchaw';

  @override
  String get portfolioDividendsEmpty =>
      'Manaraq ima dividendopas qillqasqachu. Makiwan yapay, utaq brokerniykipa exportninta apamuy – chaypi dividendo siq\'ikunapas hap\'isqa kanku.';

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dividendokuna yapasqa',
      one: '1 dividendo yapasqa',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Dividendokunata lluqsichiy (CSV)';

  @override
  String get portfolioDividendDeleted => 'Dividendo qulluchisqa';

  @override
  String get portfolioDividendsHint =>
      'Qullqikuna imaynam cuentaykiman chayamurqan hina, pagana qullqipi; tukuy yupaykuna kunan p\'unchaw chaninwan tikrasqa. Impuesto willakuyniykipaq, brokerniykipa willakuyninta llamk\'achiy.';

  @override
  String get awayTitle => 'Mana kashaqtiyki';

  @override
  String awaySince(String when) {
    return '${when}manta';
  }

  @override
  String get awayQuiet => 'Manam imapas anchata kuyurqanchu.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count willakuykuna rikch\'arirqa',
      one: '1 willakuy rikch\'arirqa',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Resultadokuna willasqa: $symbols';
  }

  @override
  String get moveWhyButton => '¿Imaraykutaq kunan kuyuchkan?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent kunan p\'unchaw';
  }

  @override
  String get moveWhyNote =>
      'Kunan p\'unchaw willakuykunamanta, webpi tarisqa, AI sut\'inchay; chiqap rayku mana riqsisqa utaq hukniraq kanman. Manam qullqi churanapaq yuyaychaychu. Sapa p\'unchaw tapukuyniykita tukun, manam t\'aqwiychu.';

  @override
  String get sectionTechnical => 'Tecnico rikuy';

  @override
  String get labelSma50 => '50 p\'unchaw chawpi';

  @override
  String get labelSma200 => '200 p\'unchaw chawpi';

  @override
  String get labelRsi => 'RSI (14 p\'unchaw)';

  @override
  String get labelVolatility30 => 'Tikrakuy (30 p\'unchaw)';

  @override
  String techAbove(String percent) {
    return '$percent hawanpi';
  }

  @override
  String techBelow(String percent) {
    return '$percent uranpi';
  }

  @override
  String get techOverbought => 'nishu rantisqa';

  @override
  String get techOversold => 'nishu vendesqa';

  @override
  String get techNeutral => 'chawpi';

  @override
  String get techGoldenCross =>
      '50 p\'unchaw chawpi 200 p\'unchaw chawpimanta hawanpi kachkan – ñawpa qhawariy hina wicharisqa puriy.';

  @override
  String get techDeathCross =>
      '50 p\'unchaw chawpi 200 p\'unchaw chawpimanta uranpi kachkan – ñawpa qhawariy hina uraykusqa puriy.';

  @override
  String get glossSma50 =>
      'Qhipa 50 qhatu p\'unchawkunapi wichq\'ay chaninkunapa chawpin. Chanin chaymanta hawanpi kaptin pisi pachapi kallpa hina qhawakun, uranpi kaptin pisi kallpa hina.';

  @override
  String get glossSma200 =>
      'Qhipa 200 qhatu p\'unchawkunapi wichq\'ay chaninkunapa chawpin – unay pacha puriypa ñawpa siq\'in. Achka qullqi churaqkuna chaymanta hawanpi chaninta unay pacha wicharisqa puriy hina qhawanku.';

  @override
  String get glossRsi =>
      'Kallpa tupachiy índice (RSI): qayna ganakuykunata qayna chinkachiykunawan 0–100 tupuypi tupachin. 70 hawanpi kaptin acción nishu rantisqa ninku (utqaylla wicharirqan), 30 uranpi kaptin nishu vendesqa – ichaqa kallpasapa puriy chaypi unay pacha qipakuyta atin.';

  @override
  String get glossVolatility =>
      'Chanin sapa p\'unchaw mayk\'ata tikrakun, huk watapi tupusqa: 20% ninmi huk watapi yaqa ±20% ukhupi puriyta. Aswan tikrakuy ninmi iskaynin ñanpi aswan hatun puriykunata.';

  @override
  String get techNote =>
      'Sapa p\'unchaw wichq\'ay chaninkunamanta yupasqa. Tecnico unanchakuna ñawpaqta willanku, manam hamuq pachata.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$count posicionmanta $above paykunapa 200 punchaw chawpinmanta hawanpi';
  }

  @override
  String get watchSignalsTitle => 'Willakuykuna';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · nishu vendesqa';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · nishu rantisqa';
  }

  @override
  String get signalCrossedAbove => '200 p\'unchaw chawpi hawanman wicharirqan';

  @override
  String get signalCrossedBelow => '200 p\'unchaw chawpi uranman urayrirqan';

  @override
  String get signalAlertsTitle => 'Tecnico señalkunamanta willaykuna';

  @override
  String get signalAlertsSubtitle =>
      'Sapa p\'unchaw huk kuti, qhawasqayki acción nishu vendesqa utaq nishu rantisqa (RSI) kaptin, utaq chaninnin 200 p\'unchaw chawpita chimpaptin.';

  @override
  String get signalAlertsNotification => 'Tecnico señalkuna';

  @override
  String get glossaryPageTitle => 'Rimaykunapa sutichaynin';

  @override
  String get glossaryPageSubtitle =>
      'Appa rikuchisqan sapa yupaypa sasa mana kaq sutichaynin, P/E-manta RSI-kama';

  @override
  String get glossarySearchHint => 'Rimaykunapa sutichayninpi maskay';
}
