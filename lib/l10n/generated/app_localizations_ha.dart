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
}
