// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hausa (`ha`).
class AppLocalizationsHa extends AppLocalizations {
  AppLocalizationsHa([String locale = 'ha']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Ɗauki hoton hannun jari ka san duk abin da ya shafe shi.';

  @override
  String get homeHint =>
      'Takardar shaidar hannun jari, allon manhajar broker, jarida ko tambarin kamfani – duk abin da zai nuna hannun jari.';

  @override
  String get takePhoto => 'Ɗauki hoto';

  @override
  String get chooseFromGallery => 'Zaɓa daga gallery';

  @override
  String get chooseImage => 'Zaɓi hoto';

  @override
  String get enterTickerManually => 'Shigar da ticker da hannu';

  @override
  String get tickerInputLabel => 'Alamar ticker';

  @override
  String get tickerInputHint => 'misali AAPL';

  @override
  String get lookUp => 'Nema';

  @override
  String demoModeBanner(String symbols) {
    return 'Yanayin demo – ba a saita maɓallin bayanan kasuwa ba. Bayanan misali suna nan don: $symbols.';
  }

  @override
  String get recognizing => 'Ana nazarin hoton…';

  @override
  String get loadingData => 'Ana loda bayanai…';

  @override
  String get noCandidatesTitle => 'Ba a gane hannun jari ba';

  @override
  String get noCandidatesBody =>
      'Ba mu iya gane hannun jari a cikin wannan hoto ba. Gwada hoto mafi haske, ko shigar da ticker da hannu.';

  @override
  String get whatWeSaw => 'Abin da muka gani';

  @override
  String get chooseCandidateTitle => 'Wane hannun jari kake nufi?';

  @override
  String confidencePercent(int percent) {
    return 'Tabbaci $percent%';
  }

  @override
  String get settings => 'Saituna';

  @override
  String get language => 'Harshe';

  @override
  String get systemLanguage => 'Tsohon harshen na\'ura';

  @override
  String get about => 'Game da';

  @override
  String get disclaimer =>
      'Wannan manhaja tana ba da bayani ne kawai, ba shawarar zuba jari ba. Bayanai na iya jinkiri ko rashin daidaito.';

  @override
  String dataSource(String source) {
    return 'Tushen bayanai: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Ganewa: $source';
  }

  @override
  String get retry => 'Sake gwada';

  @override
  String get cancel => 'Soke';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Rufe';

  @override
  String get errorGeneric => 'Wani abu ya ɓaci.';

  @override
  String get errorSectionUnavailable => 'Ba a iya loda wannan sashe ba.';

  @override
  String get notAvailable => 'babu';

  @override
  String get sectionIdentity => 'Shaida';

  @override
  String get sectionPrice => 'Farashi';

  @override
  String get sectionValuation => 'Kimantawa';

  @override
  String get sectionFinancials => 'Bayanan kuɗi';

  @override
  String get sectionDividend => 'Rabon riba';

  @override
  String get sectionProfile => 'Bayanin kamfani';

  @override
  String get sectionAnalysts => 'Ƙimar manazarta';

  @override
  String get sectionNews => 'Labarai';

  @override
  String get sectionRecognition => 'Bayanan ganewa';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Kasuwar hannun jari';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Nau\'in kuɗi';

  @override
  String get labelCountry => 'Ƙasa';

  @override
  String get labelIndustry => 'Masana\'anta';

  @override
  String get labelSector => 'Sashe';

  @override
  String get labelWebsite => 'Gidan yanar gizo';

  @override
  String get labelIpoDate => 'Ranar IPO';

  @override
  String get labelMarketCap => 'Ƙimar kasuwa';

  @override
  String get labelSharesOutstanding => 'Hannun jarin da ke yawo';

  @override
  String get labelEmployees => 'Ma\'aikata';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Babban ofis';

  @override
  String get labelDescription => 'Bayani';

  @override
  String get labelLastPrice => 'Farashin ƙarshe';

  @override
  String get labelChange => 'Canji';

  @override
  String get labelOpen => 'Buɗewa';

  @override
  String get labelDayHigh => 'Mafi girma na rana';

  @override
  String get labelDayLow => 'Mafi ƙanƙanta na rana';

  @override
  String get labelPreviousClose => 'Rufewar baya';

  @override
  String get labelWeek52High => 'Mafi girma a makonni 52';

  @override
  String get labelWeek52Low => 'Mafi ƙanƙanta a makonni 52';

  @override
  String get labelAverageVolume10d => 'Matsakaicin volume (kwanaki 10)';

  @override
  String updatedAt(String time) {
    return 'An sabunta $time';
  }

  @override
  String get labelPeTrailing => 'P/E (trailing)';

  @override
  String get labelPeForward => 'P/E (forward)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / free cash flow';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Kuɗin shiga (TTM)';

  @override
  String get labelNetIncomeTtm => 'Tsantsar riba (TTM)';

  @override
  String get labelGrossMargin => 'Gross margin';

  @override
  String get labelOperatingMargin => 'Operating margin';

  @override
  String get labelNetMargin => 'Net margin';

  @override
  String get labelRoe => 'Ribar kan jari (ROE)';

  @override
  String get labelRoa => 'Ribar kan kadarori (ROA)';

  @override
  String get labelDebtToEquity => 'Bashi / jari';

  @override
  String get labelCurrentRatio => 'Current ratio';

  @override
  String get labelRevenueGrowth => 'Ƙaruwar kuɗin shiga (YoY)';

  @override
  String get labelEpsGrowth => 'Ƙaruwar EPS (YoY)';

  @override
  String get labelDividendYield => 'Yawan rabon riba';

  @override
  String get labelDividendPerShare => 'Rabon riba kan kowane hannun jari';

  @override
  String get labelPayoutRatio => 'Rabon biyan riba';

  @override
  String get labelConsensus => 'Matsayar manazarta';

  @override
  String get ratingStrongBuy => 'Saya sosai';

  @override
  String get ratingBuy => 'Saya';

  @override
  String get ratingHold => 'Riƙe';

  @override
  String get ratingSell => 'Sayar';

  @override
  String get ratingStrongSell => 'Sayar sosai';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Manazarta $count',
      one: 'Manazarci 1',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Lokaci: $period';
  }

  @override
  String get noNews => 'Babu sabbin labarai.';

  @override
  String get openArticle => 'Buɗe labarin';

  @override
  String get openLinkFailed => 'Ba a iya buɗe hanyar haɗin ba.';

  @override
  String get recognitionSummary => 'Taƙaitawa';

  @override
  String get recognitionEvidence => 'Dalilin da ya sa muke tunanin haka';

  @override
  String get recognitionRawText => 'Rubutun da aka karanta daga hoton';

  @override
  String get errMissingAnthropicKey =>
      'Ba a saita ganewar hoto ba (babu ANTHROPIC_API_KEY). Shigar da ticker da hannu.';

  @override
  String get errRecognitionUnreachable =>
      'Ba a iya kaiwa ga sabis na ganewa ba. Duba haɗin intanet ɗinka.';

  @override
  String errRecognitionHttp(String status) {
    return 'Sabis na ganewa ya dawo da kuskure (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Sabis na ganewa bai iya aiwatar da wannan hoto ba.';

  @override
  String get errRecognitionTruncated =>
      'An katse amsar ganewa. Da fatan a sake gwada.';

  @override
  String get errRecognitionBadResponse =>
      'Amsa da ba a yi tsammani ba daga sabis na ganewa.';

  @override
  String get errRecognitionEmpty =>
      'Sabis na ganewa ya dawo da amsa mara komai.';

  @override
  String get errMissingFinnhubKey =>
      'Ba a saita bayanan kasuwa ba (babu FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Ba a iya kaiwa ga sabis na bayanan kasuwa ba. Duba haɗin intanet ɗinka.';

  @override
  String get errMarketRateLimited =>
      'Buƙatu da yawa ga sabis na bayanan kasuwa. Da fatan a jira minti ɗaya.';

  @override
  String errMarketHttp(String status) {
    return 'Sabis na bayanan kasuwa ya dawo da kuskure (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Amsa da ba a yi tsammani ba daga sabis na bayanan kasuwa.';

  @override
  String errNoQuote(String symbol) {
    return 'Ba a sami bayanan farashi na $symbol ba.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Ba a sami bayanin kamfani na $symbol ba.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Yanayin demo yana goyon bayan $symbols kawai. Ƙara FINNHUB_API_KEY don bayanai kai tsaye.';
  }

  @override
  String errUnknown(String detail) {
    return 'Wani abu ya ɓaci: $detail';
  }

  @override
  String get newSearch => 'Sabon bincike';

  @override
  String get recentSearches => 'Na kwanan nan';

  @override
  String get noRecentSearches => 'Babu binciken kwanan nan tukuna.';

  @override
  String get clearRecent => 'Share na kwanan nan';

  @override
  String get greeting => 'Wane hannun jari za mu duba?';

  @override
  String get searchHint => 'Ticker ko sunan kamfani';

  @override
  String get attachImage => 'Haɗa hoto';

  @override
  String get searchResultsTitle => 'Sakamakon bincike';

  @override
  String errNoResults(String query) {
    return 'Ba a sami hannun jari don “$query” ba.';
  }

  @override
  String get quickBarHint => 'Rubuta ticker ko sunan kamfani…';

  @override
  String get openFullWindow => 'Buɗe taga';

  @override
  String hotkeyHint(String shortcut) {
    return 'Danna $shortcut a ko\'ina don kiran WhatStock.';
  }

  @override
  String get trayOpen => 'Buɗe WhatStock';

  @override
  String get trayQuickSearch => 'Bincike cikin sauri';

  @override
  String get trayQuit => 'Fita';

  @override
  String get appearance => 'Kamanni';

  @override
  String get themeSystem => 'Na\'ura';

  @override
  String get themeDark => 'Duhu';

  @override
  String get themeLight => 'Haske';

  @override
  String get back => 'Baya';

  @override
  String get aiSectionTitle => 'Nazarin AI';

  @override
  String get aiIntro =>
      'Cikakken bayani da AI ya rubuta: taƙaitaccen sabbin labarai, kasuwancin, ƙarfi, haɗari da abubuwan da ba a gani, ƙima, hasashen farashi tare da yanayoyi daga mahangar tunani, zamantakewa, fasaha da babban tattalin arziki, da abin da za a sa ido a kai.';

  @override
  String get aiGenerate => 'Ƙirƙiri nazari';

  @override
  String get aiRegenerate => 'Sake ƙirƙira';

  @override
  String get aiGenerating =>
      'Ana shirya nazarin… wannan na iya ɗaukar minti ɗaya ko biyu.';

  @override
  String get aiSources => 'Madogara';

  @override
  String aiGeneratedAt(String time) {
    return 'An ƙirƙira $time';
  }

  @override
  String get aiDisclaimer =>
      'Nazarin da AI ya ƙirƙira bisa bayanan da ake samu a fili da sabbin labarai. Yana iya ƙunsar kurakurai ko ya zama tsoho, kuma ba shawarar zuba jari ba ne.';

  @override
  String get errAiNotConfigured =>
      'Ba a saita nazarin AI ba (babu ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Ba a iya kaiwa ga sabis na AI ba. Duba haɗin intanet ɗinka.';

  @override
  String errAiHttp(String status) {
    return 'Sabis na AI ya dawo da kuskure (HTTP $status).';
  }

  @override
  String get errAiRefused =>
      'Sabis na AI ya ƙi yin nazarin wannan hannun jari.';

  @override
  String get errAiBadResponse =>
      'Amsa da ba a yi tsammani ba daga sabis na AI.';

  @override
  String get sectionChart => 'Jadawalin farashi';

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
      'Tarihin farashi babu shi daga madogarar bayanai ta yanzu.';

  @override
  String get sectionStatements => 'Rahotannin kuɗi (na shekara-shekara)';

  @override
  String get labelFiscalYear => 'Shekarar kuɗi';

  @override
  String get labelRevenue => 'Kuɗin shiga';

  @override
  String get labelNetIncome => 'Tsantsar riba';

  @override
  String get labelTotalAssets => 'Jimillar kadarori';

  @override
  String get labelTotalLiabilities => 'Jimillar basussuka';

  @override
  String get labelEquity => 'Jarin masu hannun jari';

  @override
  String get labelOperatingCashFlow => 'Kwararar kuɗin ayyuka';

  @override
  String get statementsUnavailable =>
      'Babu rahotannin kuɗi da aka bayar na wannan hannun jari.';

  @override
  String get launchAtLogin => 'Buɗe lokacin shiga';

  @override
  String get hotkeyLabel => 'Gajeriyar hanya ta gabaɗaya';

  @override
  String get hotkeyRecordHint =>
      'Danna nan, sannan ka danna sabon haɗin maɓallan';

  @override
  String get hotkeyReset => 'Mayar da tsoho';

  @override
  String get pasteImage => 'Liƙa hoto daga clipboard';

  @override
  String get errClipboardNoImage => 'Babu hoto a clipboard.';

  @override
  String get favorites => 'Abubuwan da aka fi so';

  @override
  String get addToFavorites => 'Ƙara zuwa abubuwan da aka fi so';

  @override
  String get removeFromFavorites => 'Cire daga abubuwan da aka fi so';

  @override
  String get noFavorites =>
      'Babu abubuwan da aka fi so tukuna. Taɓa tauraron da ke kan hannun jari don ƙara shi.';

  @override
  String get displayCurrency => 'Nau’in kuɗin nunawa';

  @override
  String get displayCurrencyNone => 'Nau’in kuɗin hannun jarin kaɗai';

  @override
  String labelConverted(String currency) {
    return '≈ a $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Farashin canji: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Sabuntawa';

  @override
  String currentVersion(String version) {
    return 'Sigar $version';
  }

  @override
  String get autoUpdate => 'Shigar da sabuntawa ta atomatik';

  @override
  String get checkForUpdates => 'Duba sabuntawa';

  @override
  String get updateChecking => 'Ana duba sabuntawa…';

  @override
  String get updateUpToDate => 'Kana amfani da sabuwar siga.';

  @override
  String updateAvailable(String version) {
    return 'Sigar $version tana nan.';
  }

  @override
  String get updateDownloading => 'Ana sauke sabuntawa a bayan fage…';

  @override
  String get updateDownloaded =>
      'Sabuntawa ta shirya. Sake kunna don shigar da ita.';

  @override
  String get updateNow => 'Sabunta';

  @override
  String get restartNow => 'Sake kunna';

  @override
  String get updatesViaStore =>
      'Sabuntawa suna zuwa ta atomatik ta hanyar shagon manhaja.';

  @override
  String get updateCheckFailed => 'Ba a iya duba sabuntawa ba.';

  @override
  String get subscription => 'Rajista';

  @override
  String get planTrial => 'Gwaji';

  @override
  String get planNormal => 'Na kullum';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Babu tsari mai aiki';

  @override
  String planAnalysesPerMonth(int count) {
    return 'Nazari $count a wata';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Gwaji kyauta na kwana $days tare da nazari $count';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Saura kwanaki $days na gwaji',
      one: 'Saura kwana 1 na gwaji',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Gwajin kyauta naka ya ƙare. Zaɓi tsari don ci gaba da nazari.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Saura nazari $remaining cikin $total a wannan lokaci';
  }

  @override
  String extraCredits(int count) {
    return 'Ƙarin nazari $count';
  }

  @override
  String renewsOn(String date) {
    return 'Za a sabunta $date';
  }

  @override
  String get choosePlan => 'Zaɓi tsari';

  @override
  String get currentPlan => 'Tsarin yanzu';

  @override
  String get subscribe => 'Yi rajista';

  @override
  String get perMonth => '/ wata';

  @override
  String get extraPacksTitle => 'Kana buƙatar ƙari? Sayi ƙarin nazari';

  @override
  String get extraPacksHint =>
      'Ƙarin nazari ba sa ƙarewa, kuma ana amfani da su bayan rabon ka na wata ya ƙare.';

  @override
  String get buy => 'Saya';

  @override
  String get restorePurchases => 'Dawo da abubuwan da aka saya';

  @override
  String get manageSubscription => 'Sarrafa rajista';

  @override
  String get purchaseSuccess => 'Mun gode! Sayen ka yana aiki yanzu.';

  @override
  String get purchasePending => 'Ana jiran sayen…';

  @override
  String get purchaseFailed => 'Ba a iya kammala sayen ba.';

  @override
  String get purchaseCanceled => 'An soke sayen.';

  @override
  String get billingUnavailable =>
      'Ba a samu sayayya a wannan dandali ba tukuna. Yi rajista a wayarka ko Mac; tsarin ka zai yi aiki a kowace na’ura.';

  @override
  String get errQuotaExceeded =>
      'Ba ka da sauran nazari a wannan lokaci. Haɓaka tsarin ka ko sayi ƙarin nazari.';

  @override
  String get errTrialExpired =>
      'Gwajin kyauta naka ya ƙare. Zaɓi tsari don ci gaba.';

  @override
  String get errNoPlan => 'Ana buƙatar tsari mai aiki don nazarin AI.';

  @override
  String get viewPlans => 'Duba tsare-tsare';

  @override
  String get usageTitle => 'Amfani';

  @override
  String get demoPurchaseNote =>
      'Biyan kuɗi na gwaji: ana kwaikwayon sayayya a wannan dandali.';

  @override
  String get mostPopular => 'Mafi shahara';

  @override
  String get bestValue => 'Mafi daraja';

  @override
  String get planFeaturesCommon =>
      'Ganewar hoto, bayanai kai tsaye, jadawalai, abubuwan da aka fi so da duk harsuna 120 suna cikin kowane tsari. Rabon yana shafar nazarin AI ne.';

  @override
  String get searchLanguages => 'Nemi harsuna…';

  @override
  String get noLanguageMatch => 'Babu harshen da ya dace.';

  @override
  String get aiSettings => 'Nazarin AI';

  @override
  String get aiLength => 'Tsawo';

  @override
  String get aiDepthBrief => 'Taƙaitacce';

  @override
  String get aiDepthStandard => 'Daidaitacce';

  @override
  String get aiDepthDeep => 'Mai zurfi';

  @override
  String get aiDepthBriefDesc => 'Muhimman abubuwa, cikin sauri.';

  @override
  String get aiDepthStandardDesc => 'Cikakken rahoto tare da kowane sashe.';

  @override
  String get aiDepthDeepDesc =>
      'Ƙarin binciken yanar gizo, kwatanta da kamfanoni makamantansu da ƙarin cikakkun bayanai.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Kimanin kalmomi $min–$max';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'yana amfani da nazari $count',
      one: 'yana amfani da nazari 1',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Matakin mai karatu';

  @override
  String get aiReaderBeginner => 'Mafari';

  @override
  String get aiReaderExperienced => 'Gogagge';

  @override
  String get aiReaderBeginnerDesc =>
      'Harshe mai sauƙi; ana bayyana kowace kalmar fasaha.';

  @override
  String get aiReaderExperiencedDesc =>
      'Rubutu mai cunkoson bayanai tare da kalmomin kuɗi na yau da kullum.';

  @override
  String get aiCounterArgument => 'Hujja mafi ƙarfi ta adawa';

  @override
  String get aiCounterArgumentDesc =>
      'Taƙaitawar koyaushe tana ƙarewa da hujja mafi ƙarfi da ke adawa da nata ƙarshen.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Har zuwa binciken yanar gizo $count a kowane nazari da tsarin ka',
      one: 'Har zuwa binciken yanar gizo 1 a kowane nazari da tsarin ka',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Daidaitaccen tsawo bisa tsari: Na kullum $normal, Pro $pro, Max $max, Ultra $ultra. Taƙaitacce yana amfani da 2 ƙasa, Mai zurfi 2 fiye.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'har zuwa binciken yanar gizo $count',
      one: 'har zuwa binciken yanar gizo 1',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Binciken yanar gizo $count a kowane nazari',
      one: 'Binciken yanar gizo 1 a kowane nazari',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Wannan tsawon yana buƙatar nazari $needed, amma saura $left kawai. Zaɓi gajeren tsawo a Saituna ko sami ƙarin nazari.';
  }

  @override
  String get outlookMarketMood => 'Ra\'ayin kasuwa';

  @override
  String get moodVeryPessimistic => 'Mara kyakkyawan fata sosai';

  @override
  String get moodPessimistic => 'Mara kyakkyawan fata';

  @override
  String get moodNeutral => 'Tsaka-tsaki';

  @override
  String get moodOptimistic => 'Mai kyakkyawan fata';

  @override
  String get moodVeryOptimistic => 'Mai kyakkyawan fata sosai';

  @override
  String get scenarioBull => 'Hasashen haɓaka';

  @override
  String get scenarioBase => 'Hasashen asali';

  @override
  String get scenarioBear => 'Hasashen faɗuwa';

  @override
  String outlookCurrentPrice(String price) {
    return 'Farashin yanzu: $price';
  }

  @override
  String get outlookKeyLevels => 'Muhimman matakai';

  @override
  String get keyLevelSupport => 'Tallafi';

  @override
  String get keyLevelResistance => 'Juriya';

  @override
  String get keyLevelAnchor => 'Ma\'auni';

  @override
  String get upcomingEvents => 'Abubuwan da ke tafe';

  @override
  String get outlookChartNote =>
      'Jeri na kimanin; yiwuwar faruwa ƙiyasi ne kawai, ba hasashe ba.';

  @override
  String get accountTitle => 'Asusu';

  @override
  String get signIn => 'Shiga';

  @override
  String get signOut => 'Fita';

  @override
  String get notSignedIn => 'Ba ka shiga ba';

  @override
  String get accountBenefit =>
      'Shiga domin rajistarka ta yi aiki a duk na\'urorinka.';

  @override
  String get accountSyncedNote =>
      'Rajistarka da sauran nazarinka iri ɗaya ne a kowace na\'ura.';

  @override
  String get signInTitle => 'Shiga WhatStock';

  @override
  String get emailLabel => 'Adireshin imel';

  @override
  String get continueWithEmail => 'Ci gaba da imel';

  @override
  String codeSentTo(String email) {
    return 'Mun aika lamba mai lambobi 6 zuwa $email. Tana aiki na minti 10.';
  }

  @override
  String get codeLabel => 'Lambar shiga';

  @override
  String get resendCode => 'Aika sabuwar lamba';

  @override
  String get useDifferentEmail => 'Yi amfani da wani imel';

  @override
  String get errInvalidCode => 'Lambar ba daidai ba ce ko ta ƙare.';

  @override
  String get errInvalidEmail =>
      'Da fatan za a shigar da adireshin imel mai inganci.';

  @override
  String get errSignInFailed =>
      'Shiga ya gaza. Duba haɗin intanet ɗinka sannan ka sake gwadawa.';

  @override
  String get checkoutWaiting =>
      'Kammala biyan kuɗi a cikin burauzarka. Manhajar za ta sabunta kanta ta atomatik idan an gama.';

  @override
  String get paymentViaStripe =>
      'Biyan kuɗi mai tsaro a cikin burauzarka ta hanyar Stripe. Soke a kowane lokaci.';

  @override
  String get paymentViaStore =>
      'Ana cajin kuɗi ta asusunka na App Store ko Google Play. Soke a kowane lokaci a cikin saitunan shago.';

  @override
  String get keySpace => 'Sarari';

  @override
  String get doubleOptionTitle => 'Danna Option sau biyu';

  @override
  String get doubleOptionSubtitle =>
      'Danna maɓallin Option sau biyu da sauri ma zai kira WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Don ya yi aiki a cikin sauran manhajoji ma, ka ba WhatStock izini a Saitunan Tsari → Sirri da Tsaro → Sa Ido kan Shigarwa, sannan ka sake buɗe manhajar.';

  @override
  String get openSystemSettings => 'Buɗe Saitunan Tsari';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Danna $shortcut ko ka danna Option sau biyu a ko\'ina don kiran WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Mafi yiwuwa';

  @override
  String get longTermToday => 'Yau';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: 'shekaru $years',
      one: 'shekara 1',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range a shekara';
  }

  @override
  String longTermLikely(String price) {
    return 'mafi yiwuwa $price';
  }

  @override
  String get confidenceLow => 'Ƙarancin tabbaci';

  @override
  String get confidenceMedium => 'Matsakaicin tabbaci';

  @override
  String get confidenceHigh => 'Babban tabbaci';

  @override
  String get longTermNote =>
      'Kewayon dogon lokaci sun dogara ne kan zato da aka bayyana, kuma suna faɗaɗa da lokaci. Farashin bai haɗa da rabon riba ba. Ƙiyasi ne kawai, ba hasashe ba.';

  @override
  String get portfolio => 'Jakar hannun jari';

  @override
  String get portfolioEmpty =>
      'Babu komai tukuna. Buɗe hannun jari ka taɓa “Ƙara zuwa jaka” don bin abin da ka mallaka.';

  @override
  String get portfolioLocalNote =>
      'Ana adana shi a wannan na’ura kawai. Ana canza jimillar da farashin musayar ECB; farashi na iya jinkiri.';

  @override
  String get addToPortfolio => 'Ƙara zuwa jaka';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Ƙara $symbol';
  }

  @override
  String get portfolioQuantity => 'Adadin hannun jari';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Farashin kowane hannun jari ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Ranar saye';

  @override
  String get portfolioAdd => 'Ƙara';

  @override
  String get portfolioInvalidNumber => 'Shigar da lamba fiye da sifili.';

  @override
  String portfolioAdded(String symbol) {
    return 'An ƙara $symbol zuwa jaka.';
  }

  @override
  String get portfolioTotalValue => 'Jimillar ƙima';

  @override
  String get portfolioToday => 'Yau';

  @override
  String get portfolioGainLoss => 'Riba/asara';

  @override
  String get portfolioInvested => 'Abin da aka zuba';

  @override
  String get portfolioAllocation => 'Rabon kaso';

  @override
  String get portfolioPositions => 'Matsayi';

  @override
  String portfolioAvgCost(String price) {
    return 'matsakaicin farashi $price';
  }

  @override
  String get portfolioYourPosition => 'Matsayinka';

  @override
  String get portfolioPurchases => 'Sayayya';

  @override
  String get portfolioRemove => 'Cire';

  @override
  String get portfolioExcluded =>
      'Ba a haɗa matsayin da ba su da farashi ko farashin musaya a cikin jimilla ba.';

  @override
  String get priceAlerts => 'Faɗakarwar farashi';

  @override
  String get setPriceAlert => 'Saita faɗakarwar farashi';

  @override
  String alertDialogTitle(String symbol) {
    return 'Faɗakarwar farashi · $symbol';
  }

  @override
  String get alertKindAbove => 'Idan ya haura sama da';

  @override
  String get alertKindBelow => 'Idan ya faɗi ƙasa da';

  @override
  String get alertKindMove => 'Idan ya motsa sosai a rana';

  @override
  String alertTargetPrice(String currency) {
    return 'Farashi ($currency)';
  }

  @override
  String get alertMovePercent => 'Motsin yini (%)';

  @override
  String get alertAlreadyMet => 'Farashin ya riga ya wuce wannan matakin.';

  @override
  String get alertSave => 'Saita faɗakarwa';

  @override
  String alertCreated(String symbol) {
    return 'An saita faɗakarwa don $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Babu faɗakarwa tukuna. Buɗe hannun jari ka taɓa ƙararrawa.';

  @override
  String get alertsNote =>
      'Ana duba faɗakarwa kowane minti 5 yayin da WhatStock ke aiki. A kwamfuta manhajar na ci gaba a sandar menu ko tiren tsarin; a waya, a yanzu tana faɗakarwa ne kawai idan manhajar a buɗe take.';

  @override
  String alertDescAbove(String price) {
    return 'Sama da $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Ƙasa da $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Motsin yini ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Ya tashi $date a $price';
  }

  @override
  String get alertRearm => 'Sake kunnawa';

  @override
  String get alertDelete => 'Share';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol ya haura sama da $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol ya faɗi ƙasa da $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol ya motsa $percent yau';
  }

  @override
  String alertHitBody(String price) {
    return 'Farashin yanzu: $price';
  }

  @override
  String get alertOpen => 'Buɗe';

  @override
  String get keepInTrayTitle => 'Ci gaba da aiki idan an rufe taga';

  @override
  String get keepInTraySubtitle =>
      'WhatStock na zama a sandar menu ko tiren tsarin, don haka gajeriyar hanya da faɗakarwar farashi su ci gaba da aiki.';

  @override
  String get termsOfUse => 'Sharuɗɗan Amfani';

  @override
  String get privacyPolicy => 'Manufar Sirri';

  @override
  String get subscriptionLegal =>
      'Biyan kuɗin wata-wata yana sabunta kansa kowane wata har sai ka soke. Ta hanyar biyan kuɗi ka yarda da Sharuɗɗan Amfani da Manufar Sirri.';

  @override
  String get deleteAccount => 'Share asusu';

  @override
  String get deleteAccountTitle => 'Za a share asusunka?';

  @override
  String get deleteAccountBody =>
      'Za a share asusunka da duk abin da muka adana a sabar mu (imel, iyaka, amfani) har abada, kuma nazarin da ba a yi amfani da shi ba zai ɓace. Biyan kuɗin da aka yi a burauza ana soke shi nan take; biyan kuɗin App Store ko Google Play dole ne ka soke shi a saitunan shagon.';

  @override
  String get deleteLocalData =>
      'Share bayanan da ke wannan na’ura ma (jaka, faɗakarwa, abubuwan da aka fi so, tarihi, nazarin da aka adana)';

  @override
  String get deleteAccountConfirm => 'Share har abada';

  @override
  String get accountDeleted => 'An share asusunka.';

  @override
  String get errDeleteAccount =>
      'Ba a iya share asusun ba. Duba haɗin intanet ka sake gwadawa.';

  @override
  String get aiTrialBriefNote =>
      'Nazarin gwaji taƙaitacce ne kuma ana yin su da samfurin AI mai sauri. Da tsari za ka sami AI ɗinmu mafi ƙarfi, ƙarin binciken yanar gizo, da tsawon Daidaitacce da Mai zurfi.';

  @override
  String get billingMonthly => 'Wata-wata';

  @override
  String get billingYearly => 'Shekara-shekara';

  @override
  String get yearlyDiscount => 'Wata 2 kyauta';

  @override
  String get perYear => '/ shekara';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price a wata';
  }

  @override
  String get subscriptionLegalYearly =>
      'Biyan kuɗin shekara-shekara yana sabunta kansa kowace shekara har sai ka soke. Ta hanyar biyan kuɗi ka yarda da Sharuɗɗan Amfani da Manufar Sirri.';

  @override
  String get myAnalyses => 'Nazarina';

  @override
  String get navAlerts => 'Faɗakarwa';

  @override
  String get inviteTitle => 'Duban farko na musamman';

  @override
  String get inviteBody =>
      'A yanzu ana samun WhatStock ne ta hanyar gayyata kawai. Shigar da lambar gayyatar da ka karɓa.';

  @override
  String get inviteCodeLabel => 'Lambar gayyata';

  @override
  String get inviteContinue => 'Ci gaba';

  @override
  String get inviteInvalid => 'Wannan lambar gayyata ba ta da inganci.';

  @override
  String get inviteExpired =>
      'Wannan gayyatar ta ƙare. Nemi sabuwar lamba daga wanda ya gayyace ka.';

  @override
  String get inviteDeviceLimit =>
      'An riga an yi amfani da wannan lambar gayyata a iyakar adadin na\'urori da aka yarda.';

  @override
  String get previewConfidential => 'Duban farko na sirri';

  @override
  String get errPreviewDailyLimit =>
      'An kai iyakar nazarin yau na wannan duban farko. Sake gwadawa gobe.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'sa\'o\'i $count da suka wuce',
      one: 'sa\'a 1 da ta wuce',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'kwanaki $count da suka wuce',
      one: 'kwana 1 da ya wuce',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Sabunta wannan nazari?';

  @override
  String staleBody(String age) {
    return 'An yi wannan nazari $age. Farashi, labarai da sakamako na iya canzawa tun daga lokacin.';
  }

  @override
  String get staleKeep => 'Nuna na baya';

  @override
  String get staleRefresh => 'Yi sabo';

  @override
  String seeAll(int count) {
    return 'Duba duka ($count)';
  }

  @override
  String get searchAnalyses => 'Bincika nazarinka';

  @override
  String get deleteAnalysis => 'Share';

  @override
  String analysisDeleted(String symbol) {
    return 'An share nazarin $symbol';
  }

  @override
  String get keyLevelAlertHint =>
      'Taɓa wani mataki don samun faɗakarwa idan farashi ya kai shi.';

  @override
  String get shareAnalysisTitle => 'Raba nazari';

  @override
  String get shareAsImage => 'Raba a matsayin hoto';

  @override
  String get shareAsText => 'Raba a matsayin rubutu';

  @override
  String get shareCardFooter => 'An yi da WhatStock';

  @override
  String get shareCardDisclaimer => 'Nazarin AI · ba shawarar zuba jari ba ne';

  @override
  String get referralTitle => 'Gayyaci abokai';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ƙarin nazari $count',
      one: 'ƙarin nazari 1',
    );
    return 'Raba lambarka. Abokinka zai samu $_temp0 nan take, kai ma za ka samu haka bayan nazarinsa na farko.';
  }

  @override
  String get referralYourCode => 'Lambarka';

  @override
  String referralStats(int invited, int rewarded) {
    return 'An gayyata: $invited · An ba da lada: $rewarded';
  }

  @override
  String get referralHaveCode => 'Kana da lamba daga aboki?';

  @override
  String get referralRedeem => 'Yi amfani';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'An ƙara maka ƙarin nazari $count. Barka da zuwa!',
      one: 'An ƙara maka ƙarin nazari 1. Barka da zuwa!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Wannan lambar ba ta wanzu ba. Duba ta ka sake gwadawa.';

  @override
  String get referralErrOwn => 'Ba za ka iya amfani da lambarka ta kanka ba.';

  @override
  String get referralErrAlready =>
      'Ka riga ka yi amfani da lambar wani abokinka.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ƙarin nazari $count',
      one: 'ƙarin nazari 1',
    );
    return 'Ina nazarin hannun jari da WhatStock: ka ɗauki hoton hannun jari, AI kuma ta yi bayani. Da lambata $code za ka samu $_temp0.';
  }

  @override
  String get referralCopied => 'An kwafi lambar';

  @override
  String get onboardTitle1 => 'Ɗauki hoton hannun jari';

  @override
  String get onboardBody1 =>
      'Allon manhajar broker, jarida ko tambarin kamfani ya isa: WhatStock zai gane hannun jarin ya nuna maka farashinsa, jadawalinsa da muhimman alƙaluma.';

  @override
  String get onboardTitle2 => 'Fahimta cikin mintuna kaɗan';

  @override
  String get onboardBody2 =>
      'Nazarin AI yana bayyana abin da ke motsa hannun jarin, haɗurran da ke tattare da shi, ƙimarsa da hasashe uku na inda farashin zai iya dosa, tare da majiyoyi kuma da harshenka.';

  @override
  String get onboardTitle3 => 'Ka kasance da labari koyaushe';

  @override
  String get onboardBody3 =>
      'Abubuwan da aka fi so, jakar hannun jarinka da faɗakarwar farashi za su sanar da kai. Nazarinka suna nan a na\'urarka, a shirye don ka sake buɗe su.';

  @override
  String get onboardNext => 'Na gaba';

  @override
  String get onboardStart => 'Mu fara';

  @override
  String get onboardSkip => 'Tsallake';

  @override
  String changesTitle(String date) {
    return 'Tun bayan nazarin baya ($date)';
  }

  @override
  String get changesPrice => 'Farashi';

  @override
  String get changesNoMajor => 'Hasashen bai canza sosai ba.';

  @override
  String get changesPreviousSummary => 'Taƙaitaccen nazarin baya';

  @override
  String get telemetryTitle => 'Taimaka mana inganta WhatStock';

  @override
  String get telemetryBody =>
      'Raba ƙididdigar amfani da rahotannin faɗuwar manhaja ba tare da suna ba: waɗanne fasaloli ake amfani da su da abin da ya lalace. Ba za mu taɓa raba hannayen jarinka, nazarinka ko bayananka na sirri ba. Kana iya canza wannan a kowane lokaci a Saituna.';

  @override
  String get telemetryAllow => 'Ba da izini';

  @override
  String get telemetryDecline => 'A\'a, na gode';

  @override
  String get telemetrySetting =>
      'Ƙididdiga marasa suna da rahotannin faɗuwar manhaja';

  @override
  String get telemetrySettingHint =>
      'Yawan amfani da fasaloli da rahotannin kurakurai, ba tare da bayanan sirri ko abubuwan da ke cikin bincikenka da nazarinka ba.';

  @override
  String get askButton => 'Tambaya game da wannan nazari';

  @override
  String askTitle(String symbol) {
    return 'Tambayoyi game da $symbol';
  }

  @override
  String get askIntro =>
      'Tambayi komai game da nazarin: ma\'anar wani haɗari, abin da zai iya canza hasashe, yadda aka samo wani adadi. Amsoshin sun dogara ne kan wannan nazari, kuma ba shawarar zuba jari ba ne.';

  @override
  String get askHint => 'Rubuta tambaya…';

  @override
  String get askSend => 'Aika';

  @override
  String get askThinking => 'Ana tunani…';

  @override
  String get askSuggest1 => 'Mene ne babban haɗari?';

  @override
  String get askSuggest2 => 'Me zai iya canza hasashen?';

  @override
  String get askSuggest3 => 'Bayyana shi a sauƙaƙe';

  @override
  String get askMaxReached =>
      'Wannan ita ce tambaya ta ƙarshe ga wannan nazari. Ƙirƙiri sabon nazari don ƙarin tambayoyi.';

  @override
  String get errAskLimit => 'An kai iyakar tambayoyin yau. Sake gwadawa gobe.';

  @override
  String get eventTomorrow => 'Gobe';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'nan da kwanaki $days',
      one: 'nan da kwana 1',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Sakamakon kuɗi na kwata';

  @override
  String get eventBeforeOpen => 'kafin buɗe kasuwa';

  @override
  String get eventAfterClose => 'bayan rufe kasuwa';

  @override
  String eventEpsEstimate(String value) {
    return 'Hasashen EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Daga nazarinka';

  @override
  String get eventsHint =>
      'Kwanakin sakamakon kuɗi na abubuwan da ka fi so da hannayen jarin jakarka na kwanaki 90 masu zuwa, da abubuwan da ke da kwanan wata da nazarinka suka nuna.';

  @override
  String get eventsEmpty =>
      'Babu abubuwa masu kwanan wata a kwanaki 90 masu zuwa. Ƙara abubuwan da ka fi so ko hannayen jari a jakarka don ganin kwanakin sakamakonsu a nan.';

  @override
  String get compareTitle => 'Kwatanta';

  @override
  String get compareAdd => 'Ƙara hannun jari';

  @override
  String get compareRemove => 'Cire';

  @override
  String get compareTickerHint => 'Ticker, misali MSFT';

  @override
  String get compareHint =>
      'Muhimman alƙaluma gefe da gefe; an haskaka mafi kyawun ƙima a kowane layi. Adadin kuɗi suna cikin nau\'in kuɗin kowane hannun jari.';

  @override
  String get compareNoAnalysis => 'Babu nazari tukuna';

  @override
  String get portfolioDividends => 'Rabon riba na shekara';

  @override
  String portfolioDividendYield(String percent) {
    return 'Yawan riba: $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Rabon riba da ake sa ran samu a shekara ya dogara ne kan rabon ribar da aka biya a cikin watanni 12 da suka wuce; babu tabbacin biyan kuɗi a nan gaba.';

  @override
  String positionDividend(String amount) {
    return 'Rabon riba: $amount a shekara';
  }

  @override
  String get chartAvgCost => 'Matsakaicinka';

  @override
  String get chartAlertLevel => 'Faɗakarwa';

  @override
  String get marketsToday => 'Kasuwanni yau';

  @override
  String get notesTitle => 'Bayanaina';

  @override
  String get notesHint =>
      'Me ya sa ka saya, me kake lura da shi, me zai sa ka sayar?';

  @override
  String get notesInfo =>
      'Ana adana shi a wannan na’ura kawai. Nazarin AI yana la’akari da bayananka.';

  @override
  String notesSaved(String date) {
    return 'An adana $date';
  }

  @override
  String get peersTitle => 'Kamfanoni masu kama';

  @override
  String get portfolioExport => 'Fitar a matsayin CSV';

  @override
  String get portfolioImport => 'Shigo da daga CSV';

  @override
  String get portfolioImportHint =>
      'Liƙa sayayya ɗaya a kowane layi: alamar ticker, yawa, farashi, nau\'in kuɗi, kwanan wata (YYYY-MM-DD). Ana iya raba ginshiƙai da waƙafi, waƙafi mai digo ko tab; layin take ba dole ba ne.';

  @override
  String get portfolioImportButton => 'Shigo da';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'An ƙara sayayya $count',
      one: 'An ƙara sayayya 1',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'An tsallake layuka $count',
      one: 'An tsallake layi 1',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Ana daidaita jakar hannun jari, abubuwan da aka fi so, faɗakarwar farashi da bayanai a duk na\'urorinka.';

  @override
  String syncLast(String time) {
    return 'Daidaitawa ta ƙarshe: $time';
  }

  @override
  String get syncNow => 'Daidaita yanzu';

  @override
  String get syncFailed => 'Daidaitawa ta gaza. Za a sake gwadawa ta atomatik.';

  @override
  String get alertEmailTitle => 'Imel idan faɗakarwa ta tashi';

  @override
  String get alertEmailOn =>
      'Muna duba faɗakarwarka bayan \'yan mintuna kuma mu aiko maka da imel, ko da manhajar a rufe take.';

  @override
  String get alertEmailSignIn =>
      'Shiga da imel ɗinka a Saituna don karɓar faɗakarwa ta imel, ko da manhajar a rufe take.';

  @override
  String get portfolioHistory => 'Ƙima a tsawon lokaci';

  @override
  String get portfolioReviewTitle => 'Nazarin jakar hannun jari ta AI';

  @override
  String get portfolioReviewIntro =>
      'AI zai duba dukkan jakar hannun jarinka: tattarar jari wuri ɗaya, dogaro kan sassa da kuɗaɗe, haɗarin da hannayen jarinka suke tarayya, da riba. Yana amfani da nazari 1.';

  @override
  String get portfolioReviewButton => 'Duba jakar hannun jarina';

  @override
  String get portfolioReviewAgain => 'Sake dubawa';

  @override
  String get portfolioReviewWorking => 'Ana duba jakar hannun jarinka…';

  @override
  String get digestTitle => 'Taƙaitawar mako ta imel';

  @override
  String get digestHint =>
      'Kowace Litinin: yadda abubuwan da ka fi so da jakar hannun jarinka suka motsa a makon da ya gabata, da kwanakin sakamakonsu masu zuwa.';

  @override
  String get benchmarkTitle => 'Kwatanta da S&P 500';

  @override
  String get benchmarkYours => 'Siyayyarka';

  @override
  String get benchmarkIndex => 'Kuɗi ɗaya a S&P 500';

  @override
  String benchmarkAhead(String points) {
    return 'Ya fi ma\'auni da maki kashi $points';
  }

  @override
  String benchmarkBehind(String points) {
    return 'Ya gaza ma\'auni da maki kashi $points';
  }

  @override
  String get benchmarkHint =>
      'Kamar an saka kuɗin kowace siyayya a asusun ma\'aunin S&P 500 a rana ɗaya. Ba a haɗa rabon riba ba; ribar da ta gabata ba ta hasashen ta gaba.';

  @override
  String get portfolioSell => 'Sayar';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Sayar da $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Farashin sayarwa na kowane hannun jari ($currency)';
  }

  @override
  String get portfolioSellDate => 'Ranar sayarwa';

  @override
  String get portfolioSellAll => 'Duka';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Kuna da $quantity';
  }

  @override
  String get portfolioSold => 'An sayar';

  @override
  String get portfolioRealized => 'Na zahiri';

  @override
  String get portfolioClosed => 'Rufaffun matsayi';

  @override
  String get portfolioClosedNote => 'An sayar da duk hannun jari';

  @override
  String get portfolioTransactions => 'Ma\'amaloli';

  @override
  String get portfolioRealizedByYear => 'Ribar na zahiri kowace shekara';

  @override
  String get portfolioRealizedHint =>
      'Ana daidaita sayarwa da tsofaffin sayayyarku tukuna (FIFO), an canza a farashin musaya na yau. Don bayanin harajinku, yi amfani da takardar bayanin dillalinku.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Tun bayan wannan nazari, an fitar da sabon sakamakon kwata ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Sabon sakamako';

  @override
  String get portfolioImportBrokers =>
      'Ana kuma gane fitarwa daga Revolut, Trading 212 da Interactive Brokers, tare da sayarwa; ana tsallake rabon riba da ajiya.';

  @override
  String get portfolioImportFile => 'Zaɓi fayil';

  @override
  String offlineBanner(String time) {
    return 'Babu haɗi – ana nuna bayanan da aka adana na ƙarshe ($time).';
  }

  @override
  String get glossMarketCap =>
      'Darajar kamfanin gaba ɗaya a kasuwar hannun jari: farashin hannun jari × yawan hannun jari.';

  @override
  String get glossSharesOutstanding =>
      'Yawan hannun jarin da kamfanin ya fitar. Idan ya ƙaru, kowane hannun jari yana da ƙaramin kaso; sake saye (buyback) yana rage shi.';

  @override
  String get glossPeTrailing =>
      'Farashi ÷ ribar kowane hannun jari ta watanni 12 da suka wuce: shekaru nawa na ribar yanzu kake biya. Ƙasa yana nufin mai rahusa, amma kamfanonin da ke girma da sauri yawanci suna da P/E mai yawa.';

  @override
  String get glossPeForward =>
      'Kamar P/E, amma da ribar da masu nazari ke tsammani a watanni 12 masu zuwa. Idan ya yi ƙasa da P/E (trailing), ana tsammanin ribar za ta ƙaru.';

  @override
  String get glossPb =>
      'Farashi ÷ darajar littafi (kadarori ban da basussuka) ta kowane hannun jari. Kusan 1 yana nufin kasuwa tana darajanta kamfanin daidai da abin da ya mallaka a takarda.';

  @override
  String get glossPs =>
      'Darajar kasuwa ÷ kuɗin shiga na shekara. Yana da amfani ga kamfanonin da ba su da riba ko kaɗan tukuna; kwatanta shi a cikin masana\'antu ɗaya.';

  @override
  String get glossEvToFcf =>
      'Darajar kamfani har da bashi (EV) ÷ kuɗin da yake samarwa a shekara bayan zuba jari. Ƙasa yana nufin kana samun ƙarin kuɗi kan farashin.';

  @override
  String get glossPeg =>
      'P/E ÷ ƙaruwar riba da ake tsammani a shekara (%). Kusan 1 ana ɗaukarsa daidai sau da yawa; yana duba P/E bisa la\'akari da girma.';

  @override
  String get glossEps =>
      'Riba kan kowane hannun jari a watanni 12 da suka wuce. EPS da ke ƙaruwa a tsawon shekaru ɗaya ne daga cikin manyan alamun kamfani mai lafiya.';

  @override
  String get glossBeta =>
      'Yadda hannun jarin ke motsawa tare da kasuwa: 1 = kamar kasuwa, 1.5 = kusan 50% motsi mafi girma, ƙasa da 1 = mafi natsuwa.';

  @override
  String get glossRevenueTtm =>
      'Jimillar tallace-tallace na watanni 12 da suka wuce, kafin kowane kashe kuɗi.';

  @override
  String get glossNetIncomeTtm =>
      'Ribar da ta rage bayan duk kashe kuɗi, ruwa da haraji a watanni 12 da suka wuce.';

  @override
  String get glossGrossMargin =>
      'Kason kuɗin shiga da ya rage bayan kuɗin kai tsaye na kayayyakin. Gross margin mai yawa sau da yawa yana nuna ikon ƙayyade farashi.';

  @override
  String get glossOperatingMargin =>
      'Kason kuɗin shiga da ya rage bayan gudanar da kasuwanci (albashi, haya, talla), kafin ruwa da haraji.';

  @override
  String get glossNetMargin =>
      'Kason kuɗin shiga da ya zama riba ta ƙarshe. 20% yana nufin cikin kowane 100 na tallace-tallace, 20 riba ne.';

  @override
  String get glossRoe =>
      'Ribar kan jari: ribar shekara ÷ jarin masu shi. Yana nuna yadda shugabanni ke amfani da kuɗin masu hannun jari; sama da kusan 15% yana da ƙarfi.';

  @override
  String get glossRoa =>
      'Ribar kan kadarori: ribar shekara ÷ duk abin da kamfanin ya mallaka. Kwatanta shi a cikin masana\'antu ɗaya.';

  @override
  String get glossDebtToEquity =>
      'Bashi ÷ jarin masu shi. Mafi yawa yana nufin ƙarin kuɗin aro: ƙarin haɗari idan kuɗin ruwa ya tashi ko kasuwanci ya yi sanyi.';

  @override
  String get glossCurrentRatio =>
      'Kadarori na ɗan gajeren lokaci ÷ basussukan da za a biya cikin shekara guda. Sama da 1 yana nufin kamfanin zai iya biyan basussukan da ke kusa.';

  @override
  String get glossRevenueGrowth =>
      'Nawa kuɗin shiga ya ƙaru idan aka kwatanta da shekara guda da ta wuce.';

  @override
  String get glossEpsGrowth =>
      'Nawa ribar kowane hannun jari ta ƙaru idan aka kwatanta da shekara guda da ta wuce.';

  @override
  String get glossDividendYield =>
      'Rabon riba na shekara ÷ farashin hannun jari: kuɗin da za ka samu kowace shekara, a matsayin kaso na abin da ka biya.';

  @override
  String get glossDividendPerShare =>
      'Rabon ribar da aka biya kan hannun jari ɗaya a shekarar da ta wuce.';

  @override
  String get glossPayoutRatio =>
      'Kason ribar da ake biya a matsayin rabon riba. Sama da 100% kamfanin yana biyan fiye da abin da yake samu, wanda ba kasafai yake ɗorewa ba.';

  @override
  String get glossTitle => 'Me yake nufi?';

  @override
  String get watchNewsTitle => 'Labarai kan hannun jarinka';

  @override
  String get undo => 'Mayar';

  @override
  String get watchSort => 'Jera';

  @override
  String get watchSortOwn => 'Tsarina';

  @override
  String get watchSortGainers => 'Mafi hauhawa farko';

  @override
  String get watchSortLosers => 'Mafi faɗuwa farko';

  @override
  String get watchSortName => 'Ta ticker (A–Z)';

  @override
  String get watchHint =>
      'Ja maƙalli don sake tsarawa, goge zuwa hagu don cirewa. Layin yana nuna kwanaki 30 da suka gabata.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: nazarinka ya shirya.';
  }

  @override
  String alertFromCost(String price) {
    return 'Daga matsakaicin farashin siyanka ($price):';
  }

  @override
  String get briefTitle => 'Yau tare da hannun jarinka';

  @override
  String get briefButton => 'Takaita yau';

  @override
  String get briefHint =>
      'Gajeren taƙaitaccen AI na yadda fayil ɗinka da waɗanda ka fi so suka motsa yau da abin da sabbin labarai ke cewa game da su. Ba ya amfani da nazari.';

  @override
  String get briefRefresh => 'Sabunta';

  @override
  String get sectionEarnings => 'Sakamakon kuɗi na kwata';

  @override
  String earningsNext(String date) {
    return 'Rahoto na gaba: $date';
  }

  @override
  String get earningsExpected => 'EPS da ake tsammani';

  @override
  String get earningsReported => 'EPS da aka bayyana';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Daidai ko sama da EPS da ake tsammani a kwata $beats cikin $total na baya-bayan nan',
      one: 'Daidai ko sama da EPS da ake tsammani a kwata $beats cikin 1',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol zai fitar da sakamakon kuɗi na kwata gobe';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol zai fitar da sakamakon kuɗi na kwata yau';
  }

  @override
  String get earningsRemindersTitle => 'Tunatarwar sakamakon kuɗi';

  @override
  String get earningsRemindersSubtitle =>
      'Sanarwa kwana ɗaya kafin hannayen jarin da ka fi so ko na fayil ɗinka su fitar da sakamakon kuɗi na kwata';

  @override
  String addAllToFavorites(int count) {
    return 'Ƙara duka zuwa abubuwan da aka fi so ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Shigo da daga hoton allo';

  @override
  String get holdingsReading => 'Ana karanta hannayen jarinka…';

  @override
  String get holdingsReviewTitle => 'Hannayen jari da aka samu';

  @override
  String get holdingsReviewHint =>
      'Duba lambobin kafin ka ƙara su. Farashin shi ne matsakaicin farashin sayenka na kowane hannun jari, ba farashin yau ba.';

  @override
  String get holdingsNoPrice => 'Babu matsakaicin farashin saye a hoton';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ƙara hannayen jari $count',
      one: 'Ƙara hannun jari 1',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Ba a sami hannayen jari a wannan hoton ba. Gwada hoton allo na shafin hannayen jarinka a manhajar dillalinka.';

  @override
  String get week52Range => 'Kewayon makonni 52';

  @override
  String week52BelowHigh(String percent) {
    return '$percent ƙasa da mafi girma a makonni 52';
  }

  @override
  String get week52AtHigh => 'A mafi girma a makonni 52';

  @override
  String get alertKindTrailing => 'Idan ya faɗo daga ƙoli';

  @override
  String get alertTrailingPercent => 'Faɗuwa daga ƙoli (%)';

  @override
  String get alertTrailingHint =>
      'Yana bin farashi sama: zai sanar idan farashi ya faɗi wannan adadin daga mafi girman matakinsa tun da ka saita shi.';

  @override
  String alertDescTrailing(String percent) {
    return 'Faɗuwar $percent daga ƙoli';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'ƙoli zuwa yanzu: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol ya faɗi $percent daga ƙolinsa';
  }

  @override
  String get sectionInsiders => 'Cinikin shugabannin kamfani';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'saye $count',
      one: 'saye 1',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'sayarwa $count',
      one: 'sayarwa 1',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Jimilla: hannun jari $shares';
  }

  @override
  String get insiderBuy => 'An saya';

  @override
  String get insiderSell => 'An sayar';

  @override
  String get insiderHint =>
      'Saye da sayarwar shugabanni da daraktoci a kasuwa a buɗe cikin kwanaki 90 da suka gabata (SEC Form 4). Ba a ƙidaya amfani da zaɓin hannun jari da kyautar hannun jari ba.';

  @override
  String get insiderNone =>
      'Babu saye ko sayarwar shugabanni a kasuwa a buɗe cikin kwanaki 90 da suka gabata.';

  @override
  String get analystTrend => 'Yadda ra\'ayoyi suka sauya wata-wata';

  @override
  String get watchListAll => 'Duka';

  @override
  String get watchListNew => 'Sabon jeri';

  @override
  String get watchListName => 'Sunan jeri';

  @override
  String get watchListRename => 'Sake sunan jeri';

  @override
  String get watchListDelete => 'Share jeri';

  @override
  String get watchListAddTo => 'Ƙara zuwa jeri';

  @override
  String get watchListEmpty =>
      'Babu hannun jari a wannan jerin tukuna. Matsa maɓallin jeri kusa da hannun jari don ƙara shi.';

  @override
  String get portfolioAskTitle => 'Tambayoyi game da jakar hannun jarinku';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'Ajiya';

  @override
  String get backupSave => 'Adana ajiya';

  @override
  String get backupSaveHint =>
      'Abubuwan da ka fi so, jerinka, jakar hannun jarinka, faɗakarwarka da bayananka a fayil ɗaya.';

  @override
  String get backupRestore => 'Maido daga ajiya';

  @override
  String get backupRestoreHint =>
      'Yana ƙara abin da ke cikin fayil ɗin; ba za a goge komai daga abin da kake da shi yanzu ba.';

  @override
  String get backupRestored => 'An maido da ajiya.';

  @override
  String get backupInvalid => 'Wannan fayil ba ajiyar WhatStock ba ce.';

  @override
  String get allocationPositions => 'Hannun jari';

  @override
  String get allocationSectors => 'Sassa';

  @override
  String get allocationCurrencies => 'Kuɗaɗe';

  @override
  String get compareReturn1y => 'Riba ta shekara 1';

  @override
  String get compareFromHigh => 'Daga mafi girma a makonni 52';

  @override
  String get briefAutoTitle =>
      'Taƙaitaccen bayani na yau da kullum kowace safiya';

  @override
  String get briefAutoSubtitle =>
      'Ana yin “Yau tare da hannun jarinka” kai tsaye bayan ƙarfe 7:00 na safe muddin manhajar tana aiki; a kwamfuta, sanarwa za ta sanar da kai. Yana amfani da iyakar tambayoyinka na yau da kullum, ba nazari ba.';

  @override
  String get targetsButton => 'Rabon kaso da ake so';

  @override
  String get targetsTitle => 'Rabon kaso da ake so';

  @override
  String get targetsHint =>
      'Saita kason fayil ɗin jari da kowane hannun jari zai samu. Bar filin babu komai idan babu manufa. Daga nan manhajar za ta nuna abin da za a saya ko a sayar don isa can.';

  @override
  String targetsSum(String percent) {
    return 'Jimilla: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Saya ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Sayar ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Ya kai manufa';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol ya zarce EPS da ake tsammani';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol bai kai EPS da ake tsammani ba';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'EPS da aka bayyana $actual, ana tsammani $estimate';
  }

  @override
  String get newsExplain => 'Me wannan yake nufi?';

  @override
  String get watchAlertAll => 'Faɗakarwa kan manyan motsin yini';

  @override
  String get watchAlertAllHint =>
      'Faɗakarwar farashi ga kowane hannun jari a wannan jeri: za ta yi ƙara idan ya motsa haka a rana ɗaya, sama ko ƙasa. Waɗanda suke da ita tun tuni za su riƙe tasu.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'An saita faɗakarwa $count',
      one: 'An saita faɗakarwa 1',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Fitar da ribar da aka samu (CSV)';

  @override
  String get portfolioAnnualReturn => 'Ribar shekara';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / shekara';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Ribar shekara da aka auna da kuɗi (XIRR): yana la\'akari da lokacin da kuka saya da kuka sayar, don haka kuɗin da aka ƙara daga baya ba sa karkatar da shi. Ana nuna shi da zarar sayayyarku ta farko ta kai aƙalla shekara ɗaya; ba a haɗa rabon riba ba.';

  @override
  String get eventsAddToCalendar => 'Ƙara zuwa kalanda (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Faɗakarwar fayil';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Sanarwa idan dukkan fayil ɗinka ya motsa haka a rana ɗaya.';

  @override
  String get portfolioMoveAlertOff => 'A kashe';

  @override
  String portfolioMoveUp(String percent) {
    return 'Fayil ɗinka ya tashi da $percent yau';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Fayil ɗinka ya sauka da $percent yau';
  }

  @override
  String get whatIfTitle => 'Da ka zuba jari fa?';

  @override
  String get whatIfAmount => 'Adadi';

  @override
  String whatIfResult(String amount, String period) {
    return 'Da ka zuba $amount tsawon $period, yau zai kai';
  }

  @override
  String get whatIfNote =>
      'Ya dogara ne kan farashin hannun jari kawai: ba a haɗa rabon riba, kuɗaɗen sabis da haraji ba. Ribar da ta gabata ba ta hasashen ta nan gaba.';

  @override
  String get watchShare => 'Raba jerin';

  @override
  String get watchImport => 'Ƙara alamun ticker';

  @override
  String get watchImportHint =>
      'Liƙa alamun ticker da aka raba da waƙafi, sarari ko sabon layi – misali jerin da wani ya raba maka.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'An ƙara hannayen jari $count',
      one: 'An ƙara hannun jari 1',
      zero: 'Babu sabbin hannayen jari',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Mafi girma farko';

  @override
  String get positionsSortGain => 'Mafi yawan riba gaba ɗaya farko';

  @override
  String get positionsSortToday => 'Mafi kyau yau farko';

  @override
  String get chartMyBuys => 'Sayayyarka';

  @override
  String get chartMySells => 'Siyarwarka';

  @override
  String get shortcutsTitle => 'Gajerun hanyoyin madannai';

  @override
  String usMarketOpen(String time) {
    return 'Kasuwar Amurka a buɗe · za ta rufe nan da $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Kasuwar Amurka a rufe · za ta buɗe nan da $time';
  }

  @override
  String durationMinutes(int minutes) {
    return 'minti $minutes';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return 'awa $hours minti $minutes';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return 'kwana $days awa $hours';
  }

  @override
  String get portfolioGoalSet => 'Saita buri';

  @override
  String get portfolioGoalTitle => 'Burin jakar hannun jari';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · Buri: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'An cimma buri: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Cire buri';

  @override
  String get alertEdit => 'Gyara faɗakarwa';

  @override
  String get positionOpenLots => 'Har yanzu a hannunka (mafi tsufa da farko)';

  @override
  String get lotRemoved => 'An share ma\'amala';

  @override
  String get alertDeleted => 'An share faɗakarwa';

  @override
  String get alertsClearTriggered => 'Share faɗakarwar da suka tashi';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'An share faɗakarwa $count',
      one: 'An share faɗakarwa 1',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Shafin farko';

  @override
  String get allocationCountries => 'Ƙasashe';

  @override
  String get newsExplainNoteResearch =>
      'Bayanin AI: yana bincika gaskiyar lamarin a yanar gizo, yana buɗe labarin kuma yana tantance yadda madogarar take da aminci. Ba shawarar zuba jari ba ne. Yana amfani da iyakar tambayoyinka na yau da kullum, ba nazari ba.';

  @override
  String get sourceOfficial => 'Na hukuma';

  @override
  String get sourcePressRelease => 'Sanarwa';

  @override
  String get sourceMajorNews => 'Babbar jarida';

  @override
  String get sourceOpinion => 'Ra\'ayi';

  @override
  String get earningsSummaryButton => 'Me ke cikin rahoton baya-bayan nan?';

  @override
  String get earningsSummaryNote =>
      'Taƙaitaccen bayanin AI na sanarwar sakamakon kamfanin da rahotannin jaridu da ya samu a yanar gizo. Ba shawarar zuba jari ba ne. Yana amfani da iyakar tambayoyinka na yau da kullum, ba nazari ba.';

  @override
  String get compareLastSurprise => 'EPS na kwata ta ƙarshe da tsammani';

  @override
  String get compareNextReport => 'Rahoto na gaba';

  @override
  String get resolvingDescription => 'Ana gano wane hannun jari kake nufi…';

  @override
  String get instrumentTitle => 'Game da wannan kadara';

  @override
  String get instrumentHint =>
      'Babu bayanin kamfani ga wannan alama – yana iya zama ETF, asusu ko takardar shaidar ajiya. Tambayi AI me ne shi, me ke cikinsa da kuma nawa ne kuɗinsa.';

  @override
  String get instrumentAsk => 'Me ne wannan?';

  @override
  String get instrumentNote =>
      'Bayanin AI daga shafin asusun mai bayarwa da shafukan kuɗi da ya samu a yanar gizo. Ba shawarar zuba jari ba ne. Yana amfani da iyakar tambayoyinka na yau da kullum, ba nazari ba.';

  @override
  String suggestAskAi(String query) {
    return 'Tambayi AI: “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Babu farashin yanzu na $symbols.';
  }

  @override
  String get eventsRecentResults => 'Sakamakon da aka bayyana kwanan nan';

  @override
  String get saveToNotes => 'Ajiye a bayanaina';

  @override
  String get savedToNotes => 'An ajiye a bayananka';

  @override
  String get portfolioDividendsReceived => 'Rabon riba da aka karɓa';

  @override
  String get portfolioDividendsThisYear => 'Bana';

  @override
  String get portfolioDividendsAllTime => 'Tun farko';

  @override
  String get portfolioAddDividend => 'Ƙara rabon riba';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Adadin da aka karɓa ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Ranar biya';

  @override
  String get portfolioDividendsEmpty =>
      'Ba a rubuta wani rabon riba ba tukuna. Ƙara da hannu, ko shigo da fitarwar dillalinka – layukan rabon riba na ciki ma ana ɗaukarsu.';

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'An ƙara rabon riba $count',
      one: 'An ƙara rabon riba 1',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Fitar da rabon riba (CSV)';

  @override
  String get portfolioDividendDeleted => 'An goge rabon riba';

  @override
  String get portfolioDividendsHint =>
      'Adadin kamar yadda ya shiga asusunka, a kuɗin biya; jimillolin ana canza su da farashin yau. Don bayanin harajinka, yi amfani da takardar dillalinka.';

  @override
  String get awayTitle => 'Lokacin da ba ka nan';

  @override
  String awaySince(String when) {
    return 'Tun $when';
  }

  @override
  String get awayQuiet => 'Babu abin da ya canja sosai.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Faɗakarwa $count sun kunna',
      one: 'Faɗakarwa 1 ta kunna',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Sun fitar da sakamako: $symbols';
  }

  @override
  String get moveWhyButton => 'Me ya sa yake motsi yau?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent yau';
  }

  @override
  String get moveWhyNote =>
      'Bayanin AI daga labaran yau da aka samu a yanar gizo; ainihin dalilin ba a sani ba ko kuma ya bambanta. Ba shawarar zuba jari ba ne. Yana amfani da adadin tambayoyinka na yau da kullum, ba bincike ba.';

  @override
  String get sectionTechnical => 'Hoton fasaha';

  @override
  String get labelSma50 => 'Matsakaicin kwana 50';

  @override
  String get labelSma200 => 'Matsakaicin kwana 200';

  @override
  String get labelRsi => 'RSI (kwana 14)';

  @override
  String get labelVolatility30 => 'Sauyin farashi (kwana 30)';

  @override
  String techAbove(String percent) {
    return '$percent sama';
  }

  @override
  String techBelow(String percent) {
    return '$percent ƙasa';
  }

  @override
  String get techOverbought => 'an saya fiye da kima';

  @override
  String get techOversold => 'an sayar fiye da kima';

  @override
  String get techNeutral => 'tsaka-tsaki';

  @override
  String get techGoldenCross =>
      'Matsakaicin kwana 50 yana sama da matsakaicin kwana 200 – bisa fassarar gargajiya, hawan farashi ne.';

  @override
  String get techDeathCross =>
      'Matsakaicin kwana 50 yana ƙasa da matsakaicin kwana 200 – bisa fassarar gargajiya, faɗuwar farashi ne.';

  @override
  String get glossSma50 =>
      'Matsakaicin farashin rufewa na kwanakin kasuwanci 50 na baya-bayan nan. Farashi da ke sama da shi akan ɗauka a matsayin ƙarfi na ɗan lokaci, na ƙasa kuma a matsayin rauni.';

  @override
  String get glossSma200 =>
      'Matsakaicin farashin rufewa na kwanakin kasuwanci 200 na baya-bayan nan – layin yanayi na dogon lokaci na gargajiya. Masu zuba jari da yawa suna ɗaukar farashi da ke sama da shi a matsayin hawan dogon lokaci.';

  @override
  String get glossRsi =>
      'Ma\'aunin ƙarfi na kwatance (RSI): yana kwatanta ribar kwanan nan da asarar kwanan nan a kan ma\'auni na 0–100. Sama da 70 akan ce an saya hannun jarin fiye da kima (ya hau da sauri), ƙasa da 30 an sayar fiye da kima – amma yanayi mai ƙarfi na iya tsayawa a nan na dogon lokaci.';

  @override
  String get glossVolatility =>
      'Yadda farashi yake sauyawa kowace rana, an lissafa a shekara: 20% na nufin a shekara ta yau da kullum farashi yana motsi cikin kusan ±20%. Sauyi mafi girma na nufin manyan motsi ta kowane bangare.';

  @override
  String get techNote =>
      'An lissafa daga farashin rufewa na kullum. Alamomin fasaha suna bayyana abin da ya wuce, ba nan gaba ba.';
}
