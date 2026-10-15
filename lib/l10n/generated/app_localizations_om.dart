// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Oromo (`om`).
class AppLocalizationsOm extends AppLocalizations {
  AppLocalizationsOm([String locale = 'om']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Suuraa aksiyoonaa kaasi, waa\'ee isaa waan hunda baradhu.';

  @override
  String get homeHint =>
      'Waraqaa ragaa aksiyoonaa, iskiriinii appii daldaltuu aksiyoonaa, gaazexaa ykn mallattoo dhaabbataa – waan aksiyoona tokko adda baasu kamiyyuu.';

  @override
  String get takePhoto => 'Suuraa kaasi';

  @override
  String get chooseFromGallery => 'Gaalarii irraa filadhu';

  @override
  String get chooseImage => 'Suuraa filadhu';

  @override
  String get enterTickerManually => 'Mallattoo harkaan galchi';

  @override
  String get tickerInputLabel => 'Mallattoo aksiyoonaa';

  @override
  String get tickerInputHint => 'fkn. AAPL';

  @override
  String get lookUp => 'Barbaadi';

  @override
  String demoModeBanner(String symbols) {
    return 'Haala agarsiisaa – furtuun odeeffannoo gabaa hin qindoofne. Odeeffannoon fakkeenyaa kanneen armaan gadiitiif ni argama: $symbols.';
  }

  @override
  String get recognizing => 'Suuraan xiinxalamaa jira…';

  @override
  String get loadingData => 'Odeeffannoon fe\'amaa jira…';

  @override
  String get noCandidatesTitle => 'Aksiyoonni tokkollee hin beekamne';

  @override
  String get noCandidatesBody =>
      'Suuraa kana keessatti aksiyoona adda baasuu hin dandeenye. Suuraa caalaatti ifa ta\'e yaali, ykn mallattoo harkaan galchi.';

  @override
  String get whatWeSaw => 'Waan arginee';

  @override
  String get chooseCandidateTitle => 'Aksiyoona kam jechuu kee ture?';

  @override
  String confidencePercent(int percent) {
    return 'Amanamummaa $percent%';
  }

  @override
  String get settings => 'Qindaa\'ina';

  @override
  String get language => 'Afaan';

  @override
  String get systemLanguage => 'Durtii sirnaa';

  @override
  String get about => 'Waa\'ee';

  @override
  String get disclaimer =>
      'Appiin kun odeeffannoo qofa kenna, gorsa invastimantii miti. Odeeffannoon tursiifamuu ykn sirrii ta\'uu dhiisuu danda\'a.';

  @override
  String dataSource(String source) {
    return 'Madda odeeffannoo: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Adda baasuu: $source';
  }

  @override
  String get retry => 'Irra deebi\'ii yaali';

  @override
  String get cancel => 'Haqi';

  @override
  String get ok => 'Tole';

  @override
  String get close => 'Cufi';

  @override
  String get errorGeneric => 'Wanti tokko dogoggoreera.';

  @override
  String get errorSectionUnavailable => 'Kutaan kun fe\'amuu hin dandeenye.';

  @override
  String get notAvailable => 'hin jiru';

  @override
  String get sectionIdentity => 'Eenyummaa';

  @override
  String get sectionPrice => 'Gatii';

  @override
  String get sectionValuation => 'Madaallii gatii';

  @override
  String get sectionFinancials => 'Odeeffannoo maallaqaa';

  @override
  String get sectionDividend => 'Qooda bu\'aa';

  @override
  String get sectionProfile => 'Ibsa dhaabbataa';

  @override
  String get sectionAnalysts => 'Madaallii xiinxaltootaa';

  @override
  String get sectionNews => 'Oduu';

  @override
  String get sectionRecognition => 'Bal\'ina adda baasuu';

  @override
  String get labelSymbol => 'Mallattoo';

  @override
  String get labelExchange => 'Gabaa aksiyoonaa';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Maallaqa';

  @override
  String get labelCountry => 'Biyya';

  @override
  String get labelIndustry => 'Industirii';

  @override
  String get labelSector => 'Damee';

  @override
  String get labelWebsite => 'Weebsaayitii';

  @override
  String get labelIpoDate => 'Guyyaa IPO';

  @override
  String get labelMarketCap => 'Kaappitaala gabaa';

  @override
  String get labelSharesOutstanding => 'Aksiyoonota raabsaman';

  @override
  String get labelEmployees => 'Hojjettoota';

  @override
  String get labelCeo => 'Hoji gaggeessaa olaanaa';

  @override
  String get labelHeadquarters => 'Waajjira muummee';

  @override
  String get labelDescription => 'Ibsa';

  @override
  String get labelLastPrice => 'Gatii dhumaa';

  @override
  String get labelChange => 'Jijjiirama';

  @override
  String get labelOpen => 'Gatii banamaa';

  @override
  String get labelDayHigh => 'Ol\'aanaa guyyaa';

  @override
  String get labelDayLow => 'Gadi aanaa guyyaa';

  @override
  String get labelPreviousClose => 'Cufinsa darbe';

  @override
  String get labelWeek52High => 'Ol\'aanaa torban 52';

  @override
  String get labelWeek52Low => 'Gadi aanaa torban 52';

  @override
  String get labelAverageVolume10d =>
      'Baay\'ina daldalaa giddugaleessaa (guyyaa 10)';

  @override
  String updatedAt(String time) {
    return 'Haaromfame: $time';
  }

  @override
  String get labelPeTrailing => 'P/E (kan darbe)';

  @override
  String get labelPeForward => 'P/E (kan eegamu)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / yaa\'a maallaqaa bilisaa';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beetaa';

  @override
  String get labelRevenueTtm => 'Galii (TTM)';

  @override
  String get labelNetIncomeTtm => 'Bu\'aa qulqulluu (TTM)';

  @override
  String get labelGrossMargin => 'Marjinii bu\'aa waliigalaa';

  @override
  String get labelOperatingMargin => 'Marjinii bu\'aa hojii';

  @override
  String get labelNetMargin => 'Marjinii bu\'aa qulqulluu';

  @override
  String get labelRoe => 'Deebii kaappitaalaa';

  @override
  String get labelRoa => 'Deebii qabeenyaa';

  @override
  String get labelDebtToEquity => 'Liqii / kaappitaala';

  @override
  String get labelCurrentRatio => 'Reeshoo ammee';

  @override
  String get labelRevenueGrowth => 'Guddina galii (waggaan)';

  @override
  String get labelEpsGrowth => 'Guddina EPS (waggaan)';

  @override
  String get labelDividendYield => 'Dhibbeentaa qooda bu\'aa';

  @override
  String get labelDividendPerShare => 'Qooda bu\'aa aksiyoona tokkoof';

  @override
  String get labelPayoutRatio => 'Reeshoo raabsa bu\'aa';

  @override
  String get labelConsensus => 'Waliigaltee';

  @override
  String get ratingStrongBuy => 'Bituu cimaa';

  @override
  String get ratingBuy => 'Bituu';

  @override
  String get ratingHold => 'Qabachuu';

  @override
  String get ratingSell => 'Gurguruu';

  @override
  String get ratingStrongSell => 'Gurguruu cimaa';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Xiinxaltoota $count',
      one: 'Xiinxalaa 1',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Yeroo: $period';
  }

  @override
  String get noNews => 'Oduun dhiyoo hin jiru.';

  @override
  String get openArticle => 'Barreeffama bani';

  @override
  String get openLinkFailed => 'Liinkii banuun hin danda\'amne.';

  @override
  String get recognitionSummary => 'Cuunfaa';

  @override
  String get recognitionEvidence => 'Maaliif akkas yaadna';

  @override
  String get recognitionRawText => 'Barreeffama suuraa irraa dubbifame';

  @override
  String get errMissingAnthropicKey =>
      'Adda baasuun suuraa hin qindoofne (ANTHROPIC_API_KEY hin jiru). Mallattoo harkaan galchi.';

  @override
  String get errRecognitionUnreachable =>
      'Tajaajila adda baasuu qunnamuun hin danda\'amne. Walqunnamtii interneetii kee mirkaneeffadhu.';

  @override
  String errRecognitionHttp(String status) {
    return 'Tajaajilli adda baasuu dogoggora deebiseera (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Tajaajilli adda baasuu suuraa kana hojjechuu hin dandeenye.';

  @override
  String get errRecognitionTruncated =>
      'Deebiin adda baasuu addaan citeera. Maaloo irra deebi\'ii yaali.';

  @override
  String get errRecognitionBadResponse =>
      'Tajaajila adda baasuu irraa deebii hin eegamne.';

  @override
  String get errRecognitionEmpty =>
      'Tajaajilli adda baasuu deebii duwwaa deebiseera.';

  @override
  String get errMissingFinnhubKey =>
      'Odeeffannoon gabaa hin qindoofne (FINNHUB_API_KEY hin jiru).';

  @override
  String get errMarketUnreachable =>
      'Tajaajila odeeffannoo gabaa qunnamuun hin danda\'amne. Walqunnamtii interneetii kee mirkaneeffadhu.';

  @override
  String get errMarketRateLimited =>
      'Tajaajila odeeffannoo gabaatiif gaaffiiwwan baay\'een ergamaniiru. Maaloo daqiiqaa tokko eegi.';

  @override
  String errMarketHttp(String status) {
    return 'Tajaajilli odeeffannoo gabaa dogoggora deebiseera (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Tajaajila odeeffannoo gabaa irraa deebii hin eegamne.';

  @override
  String errNoQuote(String symbol) {
    return 'Odeeffannoon gatii $symbol hin argamne.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Ibsi dhaabbataa $symbol hin argamne.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Haalli agarsiisaa kanneen qofa deeggara: $symbols. Odeeffannoo kallattiif FINNHUB_API_KEY dabali.';
  }

  @override
  String errUnknown(String detail) {
    return 'Wanti tokko dogoggoreera: $detail';
  }

  @override
  String get newSearch => 'Barbaacha haaraa';

  @override
  String get recentSearches => 'Kan dhiyoo';

  @override
  String get noRecentSearches => 'Hanga ammaatti barbaachi dhiyoo hin jiru.';

  @override
  String get clearRecent => 'Kan dhiyoo haqi';

  @override
  String get greeting => 'Aksiyoona kam haa ilaallu?';

  @override
  String get searchHint => 'Mallattoo ykn maqaa dhaabbataa';

  @override
  String get attachImage => 'Suuraa itti dabali';

  @override
  String get searchResultsTitle => 'Bu\'aa barbaachaa';

  @override
  String errNoResults(String query) {
    return 'Aksiyoonni “$query” waliin walsimu hin argamne.';
  }

  @override
  String get quickBarHint => 'Mallattoo ykn maqaa dhaabbataa barreessi…';

  @override
  String get openFullWindow => 'Foddaa bani';

  @override
  String hotkeyHint(String shortcut) {
    return 'WhatStock waamuuf iddoo kamittuu $shortcut dhiibi.';
  }

  @override
  String get trayOpen => 'WhatStock bani';

  @override
  String get trayQuickSearch => 'Barbaacha ariifataa';

  @override
  String get trayQuit => 'Ba\'i';

  @override
  String get appearance => 'Bifa';

  @override
  String get themeSystem => 'Sirna';

  @override
  String get themeDark => 'Dukkana';

  @override
  String get themeLight => 'Ifa';

  @override
  String get back => 'Duubatti';

  @override
  String get aiSectionTitle => 'Xiinxala AI';

  @override
  String get aiIntro =>
      'Ilaalcha bal\'aa AI\'n barreeffame: cuunfaa oduu dhiyoo, daldala dhaabbatichaa, cimina, balaawwanii fi wantoota dhokatoo, madaallii gatii, tilmaama gatii haalota garaagaraa waliin kallattii xiinsammuu, hawaasummaa, teeknikaa fi diinagdee guddaa irraa, akkasumas waan hordofuu qabdu.';

  @override
  String get aiGenerate => 'Xiinxala uumi';

  @override
  String get aiRegenerate => 'Irra deebi\'ii uumi';

  @override
  String get aiGenerating =>
      'Xiinxalli qophaa\'aa jira… kun daqiiqaa tokko ykn lama fudhachuu danda\'a.';

  @override
  String get aiSources => 'Maddoota';

  @override
  String aiGeneratedAt(String time) {
    return 'Kan uumame: $time';
  }

  @override
  String get aiDisclaimer =>
      'Xiinxala AI\'n uumame, odeeffannoo ummataa fi oduu dhiyoo irratti hundaa\'e. Dogoggora qabaachuu ykn yeroon isaa darbuu danda\'a, akkasumas gorsa invastimantii miti.';

  @override
  String get errAiNotConfigured =>
      'Xiinxalli AI hin qindoofne (ANTHROPIC_API_KEY hin jiru).';

  @override
  String get errAiUnreachable =>
      'Tajaajila AI qunnamuun hin danda\'amne. Walqunnamtii interneetii kee mirkaneeffadhu.';

  @override
  String errAiHttp(String status) {
    return 'Tajaajilli AI dogoggora deebiseera (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Tajaajilli AI aksiyoona kana xiinxaluu dide.';

  @override
  String get errAiBadResponse => 'Tajaajila AI irraa deebii hin eegamne.';

  @override
  String get sectionChart => 'Chaartii gatii';

  @override
  String get rangeOneWeek => 'Torban 1';

  @override
  String get rangeOneMonth => 'Ji\'a 1';

  @override
  String get rangeThreeMonths => 'Ji\'a 3';

  @override
  String get rangeOneYear => 'Waggaa 1';

  @override
  String get rangeFiveYears => 'Waggaa 5';

  @override
  String get chartUnavailable =>
      'Seenaan gatii madda odeeffannoo ammaa irraa hin argamu.';

  @override
  String get sectionStatements => 'Gabaasa maallaqaa (waggaa)';

  @override
  String get labelFiscalYear => 'Bara baajataa';

  @override
  String get labelRevenue => 'Galii';

  @override
  String get labelNetIncome => 'Bu\'aa qulqulluu';

  @override
  String get labelTotalAssets => 'Qabeenya waliigalaa';

  @override
  String get labelTotalLiabilities => 'Liqii waliigalaa';

  @override
  String get labelEquity => 'Kaappitaala abbootii aksiyoonaa';

  @override
  String get labelOperatingCashFlow => 'Yaa\'a maallaqaa hojii';

  @override
  String get statementsUnavailable =>
      'Aksiyoona kanaaf gabaasni maallaqaa gabaafame hin argamu.';

  @override
  String get launchAtLogin => 'Yeroo seentu jalqabi';

  @override
  String get hotkeyLabel => 'Furtuu gabaabaa waliigalaa';

  @override
  String get hotkeyRecordHint =>
      'Asitti cuqaasi, sana booda walitti qabama furtuu haaraa dhiibi';

  @override
  String get hotkeyReset => 'Gara durtiitti deebisi';

  @override
  String get pasteImage => 'Suuraa kilippboordii irraa maxxansi';

  @override
  String get errClipboardNoImage => 'Kilippboordii irra suuraan hin jiru.';

  @override
  String get favorites => 'Filatamoo';

  @override
  String get addToFavorites => 'Filatamootti dabali';

  @override
  String get removeFromFavorites => 'Filatamoo irraa haqi';

  @override
  String get noFavorites =>
      'Hanga ammaatti filatamoon hin jiran. Dabaluuf urjii aksiyoonaa irra jiru tuqi.';

  @override
  String get displayCurrency => 'Maallaqa agarsiisaa';

  @override
  String get displayCurrencyNone => 'Maallaqa aksiyoonichaa qofa';

  @override
  String labelConverted(String currency) {
    return '≈ gara ${currency}tti';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Sharafa: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Haaromsa';

  @override
  String currentVersion(String version) {
    return 'Vershinii $version';
  }

  @override
  String get autoUpdate => 'Haaromsa ofumaan fe\'i';

  @override
  String get checkForUpdates => 'Haaromsa ilaali';

  @override
  String get updateChecking => 'Haaromsi ilaalamaa jira…';

  @override
  String get updateUpToDate => 'Vershinii isa haaraa irra jirta.';

  @override
  String updateAvailable(String version) {
    return 'Vershiniin $version ni argama.';
  }

  @override
  String get updateDownloading => 'Haaromsi duubaan buufamaa jira…';

  @override
  String get updateDownloaded =>
      'Haaromsi qophaa\'eera. Fe\'uuf irra deebi\'ii jalqabsiisi.';

  @override
  String get updateNow => 'Haaromsi';

  @override
  String get restartNow => 'Irra deebi\'ii jalqabsiisi';

  @override
  String get updatesViaStore => 'Haaromsi ofumaan kuusaa appii keessaan dhufa.';

  @override
  String get updateCheckFailed => 'Haaromsa ilaaluun hin danda\'amne.';

  @override
  String get subscription => 'Miseensummaa';

  @override
  String get planTrial => 'Yaalii';

  @override
  String get planNormal => 'Idilee';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Karoorri hojii irra jiru hin jiru';

  @override
  String planAnalysesPerMonth(int count) {
    return 'Ji\'atti xiinxala $count';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Yaalii bilisaa guyyaa $days xiinxala $count waliin';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Guyyoonni yaalii $days hafaniiru',
      one: 'Guyyaan yaalii 1 hafeera',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Yaaliin bilisaa kee xumurameera. Xiinxaluu itti fufuuf karoora filadhu.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Yeroo kanaaf xiinxala $total keessaa $remaining hafeera';
  }

  @override
  String extraCredits(int count) {
    return 'Xiinxala dabalataa $count';
  }

  @override
  String renewsOn(String date) {
    return '$date haaromfama';
  }

  @override
  String get choosePlan => 'Karoora filadhu';

  @override
  String get currentPlan => 'Karoora ammaa';

  @override
  String get subscribe => 'Miseensa ta\'i';

  @override
  String get perMonth => '/ ji\'a';

  @override
  String get extraPacksTitle =>
      'Dabalata barbaaddaa? Xiinxala dabalataa bitadhu';

  @override
  String get extraPacksHint =>
      'Xiinxalli dabalataa yeroon isaa hin darbu; qooda kee ji\'aa erga fixxee booda itti fayyadamta.';

  @override
  String get buy => 'Bitadhu';

  @override
  String get restorePurchases => 'Bittaa deebisi';

  @override
  String get manageSubscription => 'Miseensummaa bulchi';

  @override
  String get purchaseSuccess => 'Galatoomi! Bittaan kee hojii irra jira.';

  @override
  String get purchasePending => 'Bittaan eegamaa jira…';

  @override
  String get purchaseFailed => 'Bittaan xumuramuu hin dandeenye.';

  @override
  String get purchaseCanceled => 'Bittaan haqameera.';

  @override
  String get billingUnavailable =>
      'Bittaan waltajjii kana irratti ammallee hin argamu. Bilbila kee ykn Mac irratti miseensa ta\'i; karoorri kee meeshaa hunda irratti ni hojjeta.';

  @override
  String get errQuotaExceeded =>
      'Yeroo kanaaf xiinxalli siif hafe hin jiru. Karoora kee ol guddisi ykn xiinxala dabalataa bitadhu.';

  @override
  String get errTrialExpired =>
      'Yaaliin bilisaa kee xumurameera. Itti fufuuf karoora filadhu.';

  @override
  String get errNoPlan =>
      'Xiinxala AI\'f karoorri hojii irra jiru barbaachisa.';

  @override
  String get viewPlans => 'Karoorota ilaali';

  @override
  String get usageTitle => 'Itti fayyadama';

  @override
  String get demoPurchaseNote =>
      'Kaffaltii agarsiisaa: waltajjii kana irratti bittaan fakkeessaa qofa.';

  @override
  String get mostPopular => 'Baay\'ee jaallatamaa';

  @override
  String get bestValue => 'Gatii gaarii';

  @override
  String get planFeaturesCommon =>
      'Suuraan adda baasuu, odeeffannoo kallattii, chaartiiwwan, filatamoo fi afaanonni 120 hundi karoora hunda keessatti hammatamaniiru. Qoodni ji\'aa xiinxala AI qofa ilaallata.';

  @override
  String get searchLanguages => 'Afaanota barbaadi…';

  @override
  String get noLanguageMatch => 'Afaan walsimu hin jiru.';

  @override
  String get aiSettings => 'Xiinxala AI';

  @override
  String get aiLength => 'Dheerina';

  @override
  String get aiDepthBrief => 'Gabaabaa';

  @override
  String get aiDepthStandard => 'Idilee';

  @override
  String get aiDepthDeep => 'Gadi fagoo';

  @override
  String get aiDepthBriefDesc => 'Ijoo dhimmaa, saffisaan.';

  @override
  String get aiDepthStandardDesc => 'Gabaasa guutuu kutaa hunda qabu.';

  @override
  String get aiDepthDeepDesc =>
      'Barbaacha weebii dabalataa, walbira qabiinsa dorgomtootaa fi bal\'ina gadi fagoo.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Tilmaamaan jechoota $min–$max';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'xiinxala $count fayyadama',
      one: 'xiinxala 1 fayyadama',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Sadarkaa dubbisaa';

  @override
  String get aiReaderBeginner => 'Jalqabaa';

  @override
  String get aiReaderExperienced => 'Muuxannoo qabu';

  @override
  String get aiReaderBeginnerDesc =>
      'Afaan salphaa; jechi teeknikaa hundi ni ibsama.';

  @override
  String get aiReaderExperiencedDesc =>
      'Barreeffama hiikaa cimaa, jechoota maallaqaa idilee fayyadamu.';

  @override
  String get aiCounterArgument => 'Falmii faallaa isa cimaa';

  @override
  String get aiCounterArgumentDesc =>
      'Cuunfaan yeroo hunda falmii murtoo isaa mormu isa cimaa ta\'een xumurama.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Karoora keetiin xiinxala tokkoof hanga barbaacha weebii $count',
      one: 'Karoora keetiin xiinxala tokkoof hanga barbaacha weebii 1',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Barbaacha weebii dheerina idileetiin, karooraan: Idilee $normal, Pro $pro, Max $max, Ultra $ultra. Gabaabaan 2 kan xiqqaatu, Gadi fagoon immoo 2 kan dabalu fayyadama.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'hanga barbaacha weebii $count',
      one: 'hanga barbaacha weebii 1',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'xiinxala tokkotti barbaacha weebii $count',
      one: 'xiinxala tokkotti barbaacha weebii 1',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Dheerinni kun xiinxala $needed barbaada, garuu kan hafe $left qofa. Qindaa\'ina keessatti dheerina gabaabaa filadhu ykn xiinxala dabalataa argadhu.';
  }

  @override
  String get outlookMarketMood => 'Miira gabaa';

  @override
  String get moodVeryPessimistic => 'Baay\'ee abdii kutataa';

  @override
  String get moodPessimistic => 'Abdii kutataa';

  @override
  String get moodNeutral => 'Giddu-galeessa';

  @override
  String get moodOptimistic => 'Abdii qabeessa';

  @override
  String get moodVeryOptimistic => 'Baay\'ee abdii qabeessa';

  @override
  String get scenarioBull => 'Haala guddinaa';

  @override
  String get scenarioBase => 'Haala bu\'uuraa';

  @override
  String get scenarioBear => 'Haala kufaatii';

  @override
  String outlookCurrentPrice(String price) {
    return 'Gatii ammaa: $price';
  }

  @override
  String get outlookKeyLevels => 'Sadarkaalee ijoo';

  @override
  String get keyLevelSupport => 'Deeggarsa';

  @override
  String get keyLevelResistance => 'Mormii';

  @override
  String get keyLevelAnchor => 'Wabii';

  @override
  String get upcomingEvents => 'Taateewwan dhufan';

  @override
  String get outlookChartNote =>
      'Hangaawwan agarsiisaa; carraaleen murtii tilmaamaa malee raagii miti.';

  @override
  String get accountTitle => 'Herrega';

  @override
  String get signIn => 'Seeni';

  @override
  String get signOut => 'Ba\'i';

  @override
  String get notSignedIn => 'Hin seenne';

  @override
  String get accountBenefit =>
      'Miseensummaan kee meeshaalee kee hunda irratti akka hojjetuuf seeni.';

  @override
  String get accountSyncedNote =>
      'Miseensummaan kee fi xiinxalli siif hafe meeshaa hunda irratti tokkuma.';

  @override
  String get signInTitle => 'WhatStock seeni';

  @override
  String get emailLabel => 'Teessoo imeelii';

  @override
  String get continueWithEmail => 'Imeeliin itti fufi';

  @override
  String codeSentTo(String email) {
    return 'Koodii lakkoofsa 6 qabu gara $email ergineerra. Daqiiqaa 10f hojjeta.';
  }

  @override
  String get codeLabel => 'Koodii seenumsaa';

  @override
  String get resendCode => 'Koodii haaraa ergi';

  @override
  String get useDifferentEmail => 'Imeelii biraa fayyadami';

  @override
  String get errInvalidCode => 'Koodiin dogoggora ykn yeroon isaa darbeera.';

  @override
  String get errInvalidEmail => 'Maaloo teessoo imeelii sirrii galchi.';

  @override
  String get errSignInFailed =>
      'Seenuun hin milkoofne. Walqunnamtii kee mirkaneeffadhuu irra deebi\'ii yaali.';

  @override
  String get checkoutWaiting =>
      'Kaffaltii biraawuzarii kee keessatti xumuri. Yeroo xumuramu appiin ofumaan haaromfama.';

  @override
  String get paymentViaStripe =>
      'Kaffaltii nageenya qabu, biraawuzarii kee keessatti Stripe\'n. Yeroo barbaadde haquu dandeessa.';

  @override
  String get paymentViaStore =>
      'Herrega App Store ykn Google Play keetiin kaffalama. Qindaa\'ina kuusaa keessatti yeroo barbaadde haquu dandeessa.';

  @override
  String get keySpace => 'Space';

  @override
  String get doubleOptionTitle => 'Option si\'a lama dhiibi';

  @override
  String get doubleOptionSubtitle =>
      'Furtuu Option si\'a lama saffisaan dhiibuunis WhatStock ni waama.';

  @override
  String get doubleOptionPermission =>
      'Appota biroo keessattis akka hojjetuuf, System Settings → Privacy & Security → Input Monitoring jalatti WhatStock hayyami, sana booda appicha irra deebi\'ii bani.';

  @override
  String get openSystemSettings => 'Qindaa\'ina sirnaa bani';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'WhatStock waamuuf iddoo kamittuu $shortcut dhiibi ykn Option si\'a lama dhiibi.';
  }

  @override
  String get scenarioMostLikely => 'Kan caalaa ta\'uu danda\'u';

  @override
  String get longTermToday => 'Har\'a';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: 'waggaa $years',
      one: 'waggaa 1',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range waggaatti';
  }

  @override
  String longTermLikely(String price) {
    return 'kan caalaa ta\'uu danda\'u $price';
  }

  @override
  String get confidenceLow => 'Amanamummaa gadi aanaa';

  @override
  String get confidenceMedium => 'Amanamummaa giddu-galeessaa';

  @override
  String get confidenceHigh => 'Amanamummaa ol\'aanaa';

  @override
  String get longTermNote =>
      'Hangaawwan yeroo dheeraa tilmaamota ibsaman irratti hundaa\'u, yeroo waliinis bal\'atu. Gatiin qooda bu\'aa hin dabalatu. Murtii tilmaamaa malee raagii miti.';

  @override
  String get portfolio => 'Poortfooliyoo';

  @override
  String get portfolioEmpty =>
      'Hanga ammaatti asitti homaa hin jiru. Waan qabdu hordofuuf aksiyoona tokko banii “Poortfooliyootti dabali” tuqi.';

  @override
  String get portfolioLocalNote =>
      'Meeshaa kana qofa irratti kuufama. Waliigalli sharafa wabii ECB tiin jijjiirama; gatiin tursiifamuu danda\'a.';

  @override
  String get addToPortfolio => 'Poortfooliyootti dabali';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol dabali';
  }

  @override
  String get portfolioQuantity => 'Baay\'ina aksiyoonaa';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Gatii aksiyoona tokkoo ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Guyyaa bittaa';

  @override
  String get portfolioAdd => 'Dabali';

  @override
  String get portfolioInvalidNumber => 'Lakkoofsa zeeroo caalu galchi.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol poortfooliyoo keetti dabalameera.';
  }

  @override
  String get portfolioTotalValue => 'Gatii waliigalaa';

  @override
  String get portfolioToday => 'Har\'a';

  @override
  String get portfolioGainLoss => 'Bu\'aa/kasaaraa';

  @override
  String get portfolioInvested => 'Kan invastii godhame';

  @override
  String get portfolioAllocation => 'Qoqqoodinsa';

  @override
  String get portfolioPositions => 'Qabiyyeewwan';

  @override
  String portfolioAvgCost(String price) {
    return 'baasii giddugaleessaa $price';
  }

  @override
  String get portfolioYourPosition => 'Qabiyyee kee';

  @override
  String get portfolioPurchases => 'Bittaawwan';

  @override
  String get portfolioRemove => 'Haqi';

  @override
  String get portfolioExcluded =>
      'Qabiyyeewwan gatii ykn sharafa hin qabne waliigala keessaa hafaniiru.';

  @override
  String get priceAlerts => 'Akeekkachiisa gatii';

  @override
  String get setPriceAlert => 'Akeekkachiisa gatii qindeessi';

  @override
  String alertDialogTitle(String symbol) {
    return 'Akeekkachiisa gatii · $symbol';
  }

  @override
  String get alertKindAbove => 'Ol yoo darbe';

  @override
  String get alertKindBelow => 'Gadi yoo bu\'e';

  @override
  String get alertKindMove => 'Guyyaa tokkotti baay\'ee yoo socho\'e';

  @override
  String alertTargetPrice(String currency) {
    return 'Gatii ($currency)';
  }

  @override
  String get alertMovePercent => 'Sochii guyyaa (%)';

  @override
  String get alertAlreadyMet => 'Gatiin duraanuu sadarkaa kana darbeera.';

  @override
  String get alertSave => 'Akeekkachiisa qindeessi';

  @override
  String alertCreated(String symbol) {
    return '$symbol: akeekkachiisni qindaa\'eera.';
  }

  @override
  String get alertsEmpty =>
      'Hanga ammaatti akeekkachiisni gatii hin jiru. Qindeessuuf aksiyoona tokko banii mallattoo bilbilaa tuqi.';

  @override
  String get alertsNote =>
      'Yeroo WhatStock hojjetu, akeekkachiisni daqiiqaa 5 hunda ni ilaalama. Kompiitara irratti baara meenuu ykn tireey keessatti hojjechuu itti fufa; bilbila irratti garuu, ammaaf akeekkachiisni kan dhufu yeroo appiin banaa ta\'e qofa.';

  @override
  String alertDescAbove(String price) {
    return '$price ol';
  }

  @override
  String alertDescBelow(String price) {
    return '$price gadi';
  }

  @override
  String alertDescMove(String percent) {
    return 'Sochii guyyaa ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return '$date, gatii $price irratti ka\'e';
  }

  @override
  String get alertRearm => 'Irra deebi\'ii hojii irra oolchi';

  @override
  String get alertDelete => 'Haqi';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol $price ol ka\'eera';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol $price gadi bu\'eera';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol har\'a $percent socho\'eera';
  }

  @override
  String alertHitBody(String price) {
    return 'Gatii ammaa: $price';
  }

  @override
  String get alertOpen => 'Bani';

  @override
  String get keepInTrayTitle => 'Yeroo foddaan cufamu hojjechuu itti fufi';

  @override
  String get keepInTraySubtitle =>
      'WhatStock baara meenuu ykn tireey keessa tura, kanaaf furtuun gabaabaa fi akeekkachiisni gatii hojjechuu itti fufu.';

  @override
  String get termsOfUse => 'Haalota Itti Fayyadamaa';

  @override
  String get privacyPolicy => 'Imaammata Dhuunfaa';

  @override
  String get subscriptionLegal =>
      'Miseensummaan hanga ati haqxutti ji\'a ji\'aan ofumaan haaromfama. Miseensa ta\'uudhaan Haalota Itti Fayyadamaa fi Imaammata Dhuunfaa fudhatta.';

  @override
  String get deleteAccount => 'Herrega haqi';

  @override
  String get deleteAccountTitle => 'Herrega kee haqxaa?';

  @override
  String get deleteAccountBody =>
      'Herregni kee fi wanti sarvara keenya irratti kuufame hundi (imeelii, qooda ji\'aa, itti fayyadama) bara baraan ni haqama, xiinxalli itti hin fayyadamnes ni bada. Miseensummaan biraawuzariin kaffalame battaluma haqama; miseensummaa App Store ykn Google Play garuu qindaa\'ina kuusaa keessatti haquu qabda.';

  @override
  String get deleteLocalData =>
      'Odeeffannoo meeshaa kana irra jirus haqi (poortfooliyoo, akeekkachiisa, filatamoo, seenaa, xiinxala kuufame)';

  @override
  String get deleteAccountConfirm => 'Bara baraan haqi';

  @override
  String get accountDeleted => 'Herregni kee haqameera.';

  @override
  String get errDeleteAccount =>
      'Herregni haqamuu hin dandeenye. Walqunnamtii kee mirkaneeffadhuu irra deebi\'ii yaali.';

  @override
  String get aiTrialBriefNote =>
      'Xiinxalli yaalii gabaabaa dha, moodeela AI saffisaa ta\'eenis hojjetama. Karooraan AI keenya isa hunda caalaa cimu, barbaacha weebii dabalataa, akkasumas dheerina Idilee fi Gadi fagoo argatta.';

  @override
  String get billingMonthly => 'Ji\'aan';

  @override
  String get billingYearly => 'Waggaan';

  @override
  String get yearlyDiscount => 'Ji\'a 2 bilisaa';

  @override
  String get perYear => '/ waggaa';

  @override
  String pricePerMonthApprox(String price) {
    return 'Ji\'atti ≈ $price';
  }

  @override
  String get subscriptionLegalYearly =>
      'Miseensummaan waggaa hanga ati haqxutti waggaa waggaan ofumaan haaromfama. Miseensa ta\'uudhaan Haalota Itti Fayyadamaa fi Imaammata Dhuunfaa fudhatta.';

  @override
  String get myAnalyses => 'Xiinxala koo';

  @override
  String get navAlerts => 'Akeekkachiisa';

  @override
  String get inviteTitle => 'Duraan-argii cufaa';

  @override
  String get inviteBody =>
      'WhatStock amma affeerraan qofa argama. Koodii affeerraa siif ergame galchi.';

  @override
  String get inviteCodeLabel => 'Koodii affeerraa';

  @override
  String get inviteContinue => 'Itti fufi';

  @override
  String get inviteInvalid => 'Koodiin affeerraa kun sirrii miti.';

  @override
  String get inviteExpired =>
      'Affeerraan kun yeroon isaa darbeera. Nama si affeere koodii haaraa gaafadhu.';

  @override
  String get inviteDeviceLimit =>
      'Koodiin affeerraa kun duraanuu meeshaalee lakkoofsa olaanaa hayyamameerratti fayyadamaa jira.';

  @override
  String get previewConfidential => 'Duraan-argii icciitii';

  @override
  String get errPreviewDailyLimit =>
      'Daangaan xiinxala har\'aa duraan-argii kanaa ga\'eera. Boru irra deebi\'ii yaali.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'sa\'aatii $count dura',
      one: 'sa\'aatii 1 dura',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'guyyaa $count dura',
      one: 'guyyaa 1 dura',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Xiinxala kana haaromsuu?';

  @override
  String staleBody(String age) {
    return 'Kun $age uumame. Sana booda gatiin, oduun fi bu\'aan jijjiiramuu danda\'u.';
  }

  @override
  String get staleKeep => 'Isa duraa agarsiisi';

  @override
  String get staleRefresh => 'Haaraa uumi';

  @override
  String seeAll(int count) {
    return 'Hunda ilaali ($count)';
  }

  @override
  String get searchAnalyses => 'Xiinxala kee keessa barbaadi';

  @override
  String get deleteAnalysis => 'Haqi';

  @override
  String analysisDeleted(String symbol) {
    return 'Xiinxalli $symbol haqameera';
  }

  @override
  String get keyLevelAlertHint =>
      'Yeroo gatiin sadarkaa tokko gahu akeekkachiisa argachuuf sadarkaa sana tuqi.';

  @override
  String get shareAnalysisTitle => 'Xiinxala qoodi';

  @override
  String get shareAsImage => 'Akka suuraatti qoodi';

  @override
  String get shareAsText => 'Akka barreeffamaatti qoodi';

  @override
  String get shareCardFooter => 'WhatStock\'n hojjetame';

  @override
  String get shareCardDisclaimer => 'Xiinxala AI · gorsa invastimantii miti';

  @override
  String get referralTitle => 'Hiriyoota affeeri';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'xiinxala dabalataa $count',
      one: 'xiinxala dabalataa 1',
    );
    return 'Koodii kee qoodi. Hiriyaan kee battalumatti $_temp0 argata, atis xiinxala isaa jalqabaa booda kanuma argatta.';
  }

  @override
  String get referralYourCode => 'Koodii kee';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Kan affeeraman: $invited · Kan badhaafaman: $rewarded';
  }

  @override
  String get referralHaveCode => 'Koodii hiriyaa irraa qabdaa?';

  @override
  String get referralRedeem => 'Fayyadami';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Xiinxalli dabalataa $count dabalameera. Baga nagaan dhufte!',
      one: 'Xiinxalli dabalataa 1 dabalameera. Baga nagaan dhufte!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Koodiin kun hin jiru. Mirkaneessiitii irra deebi\'ii yaali.';

  @override
  String get referralErrOwn => 'Koodii mataa keetii fayyadamuu hin dandeessu.';

  @override
  String get referralErrAlready =>
      'Koodii hiriyaa tokkoo duraan fayyadamteetta.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'xiinxala dabalataa $count',
      one: 'xiinxala dabalataa 1',
    );
    return 'Ani WhatStock\'n aksiyoonota nan xiinxala: suuraa aksiyoonaa kaasi, AI\'n siif ibsa. Koodii koo $code tiin $_temp0 argatta.';
  }

  @override
  String get referralCopied => 'Koodiin garagalfameera';

  @override
  String get onboardTitle1 => 'Suuraa aksiyoonaa kaasi';

  @override
  String get onboardBody1 =>
      'Iskiriiniin appii daldalaa, gaazexaan ykn mallattoon dhaabbataa gahaadha: WhatStock aksiyoona sana adda baasee gatii, chaartii fi lakkoofsota ijoo isaa siif agarsiisa.';

  @override
  String get onboardTitle2 => 'Daqiiqaa muraasatti hubadhu';

  @override
  String get onboardBody2 =>
      'Xiinxalli AI waan aksiyoona sochoosu, balaawwan, gatii isaa sirrii fi haala sadii gatiin itti deemuu danda\'u maddaa wajjin afaan keetiin siif ibsa.';

  @override
  String get onboardTitle3 => 'Yeroo hunda odeeffannoo qabaadhu';

  @override
  String get onboardBody3 =>
      'Filatamoon, poortfooliyoon kee fi akeekkachiisni gatii odeeffannoo siif kennu. Xiinxalli kee meeshaa kee irratti hafa, irra deebitee banuuf qophaa\'aadha.';

  @override
  String get onboardNext => 'Itti aanu';

  @override
  String get onboardStart => 'Jalqabi';

  @override
  String get onboardSkip => 'Darbi';

  @override
  String changesTitle(String date) {
    return 'Xiinxala duraa as ka ka\'ee ($date)';
  }

  @override
  String get changesPrice => 'Gatii';

  @override
  String get changesNoMajor => 'Ilaalchi baay\'ee hin jijjiiramne.';

  @override
  String get changesPreviousSummary => 'Cuunfaa duraa';

  @override
  String get telemetryTitle => 'WhatStock fooyyessuuf gargaari';

  @override
  String get telemetryBody =>
      'Istaatistiksii itti fayyadamaa fi gabaasa kufaatii maqaa malee qoodi: amaloota kam akka itti fayyadaman fi maaltu akka dogoggore. Aksiyoonni kee, xiinxalli kee yookaan odeeffannoon dhuunfaa kee gonkumaa hin qoodaman. Kana yeroo kamiyyuu Qindaa\'ina keessatti jijjiiruu dandeessa.';

  @override
  String get telemetryAllow => 'Hayyami';

  @override
  String get telemetryDecline => 'Lakki, galatoomi';

  @override
  String get telemetrySetting =>
      'Istaatistiksii maqaa malee fi gabaasa kufaatii';

  @override
  String get telemetrySettingHint =>
      'Amaloonni hammam akka itti fayyadaman fi gabaasa dogoggoraa, odeeffannoo dhuunfaa yookaan qabiyyee barbaacha fi xiinxala kee malee.';

  @override
  String get askButton => 'Waa\'ee xiinxala kanaa gaafadhu';

  @override
  String askTitle(String symbol) {
    return 'Gaaffilee waa\'ee $symbol';
  }

  @override
  String get askIntro =>
      'Waa\'ee xiinxalaa waan barbaadde gaafadhu: balaan tokko maal akka jechuu ta\'e, waan ilaalcha gara fuulduraa jijjiiruu danda\'u, lakkoofsi tokko akkamitti akka herregame. Deebiiwwan xiinxala kana irratti hundaa\'u, akkasumas gorsa invastimantii miti.';

  @override
  String get askHint => 'Gaaffii gaafadhu…';

  @override
  String get askSend => 'Ergi';

  @override
  String get askThinking => 'Yaadaa jira…';

  @override
  String get askSuggest1 => 'Balaan guddaan maali?';

  @override
  String get askSuggest2 =>
      'Ilaalcha gara fuulduraa maaltu jijjiiruu danda\'a?';

  @override
  String get askSuggest3 => 'Salphaatti ibsi';

  @override
  String get askMaxReached =>
      'Kun gaaffii xiinxala kanaaf dhumaa ture. Dabalataan gaafachuuf xiinxala haaraa uumi.';

  @override
  String get errAskLimit =>
      'Daangaa gaaffii har\'aa geessee jirta. Boru irra deebi\'ii yaali.';

  @override
  String get eventTomorrow => 'Boru';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'guyyaa $days booda',
      one: 'guyyaa 1 booda',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Bu\'aa kurmaanaa';

  @override
  String get eventBeforeOpen => 'gabaan osoo hin banamin';

  @override
  String get eventAfterClose => 'gabaan erga cufamee booda';

  @override
  String eventEpsEstimate(String value) {
    return 'Tilmaama EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Xiinxala kee irraa';

  @override
  String get eventsHint =>
      'Guyyoota bu\'aa aksiyoonota filatamoo fi poortfooliyoo keetii guyyoota 90 itti aananitti, akkasumas taateewwan guyyaa qaban kan xiinxalli kee agarsiise.';

  @override
  String get eventsEmpty =>
      'Guyyoota 90 itti aananitti taateen guyyaa qabu hin jiru. Guyyoota bu\'aa isaanii asitti arguuf filatamoo ykn aksiyoonota poortfooliyoo dabali.';

  @override
  String get compareTitle => 'Wal madaali';

  @override
  String get compareAdd => 'Aksiyoona dabali';

  @override
  String get compareRemove => 'Haqi';

  @override
  String get compareTickerHint => 'Ticker, fakkeenyaaf MSFT';

  @override
  String get compareHint =>
      'Lakkoofsota ijoo wal bira; tarree tokkoon tokkoon keessatti gatiin caalaan ifa ta\'eera. Baay\'inni maallaqaa maallaqa mataa aksiyoona tokkoon tokkoo isaaniitiin kenname.';

  @override
  String get compareNoAnalysis => 'Ammallee xiinxalli hin jiru';

  @override
  String get portfolioDividends => 'Qooda bu\'aa waggaa';

  @override
  String portfolioDividendYield(String percent) {
    return 'Dhibbeentaa $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Qoodni bu\'aa waggaa eegamu qooda bu\'aa ji\'oota 12 darban keessatti kaffalame irratti hundaa\'a; kaffaltiin gara fuulduraa wabii hin qabu.';

  @override
  String positionDividend(String amount) {
    return 'Qooda bu\'aa: waggaatti $amount';
  }

  @override
  String get chartAvgCost => 'Giddugaleessa kee';

  @override
  String get chartAlertLevel => 'Akeekkachiisa';

  @override
  String get marketsToday => 'Gabaawwan har\'a';

  @override
  String get notesTitle => 'Yaadannoo koo';

  @override
  String get notesHint =>
      'Maaliif bitte, maal hordofaa jirta, maaltu akka gurgurtu si taasisa?';

  @override
  String get notesInfo =>
      'Meeshaa kana qofa irratti kuufama. Xiinxalli AI yaadannoo kee tilmaama keessa galcha.';

  @override
  String notesSaved(String date) {
    return 'Kuufame: $date';
  }

  @override
  String get peersTitle => 'Dhaabbilee walfakkaatan';

  @override
  String get portfolioExport => 'Akka CSV-tti ergi';

  @override
  String get portfolioImport => 'CSV irraa galchi';

  @override
  String get portfolioImportHint =>
      'Sarara tokkotti bittaa tokko maxxansi: mallattoo aksiyoonaa, baay\'ina, gatii, maallaqa, guyyaa (YYYY-MM-DD). Utubaawwan qoodduu, qoodduu-tuqaa ykn tab\'n addaan baafamuu danda\'u; sararri mataduree dirqama miti.';

  @override
  String get portfolioImportButton => 'Galchi';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Bittaawwan $count dabalamaniiru',
      one: 'Bittaan 1 dabalameera',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Sararoonni $count darbamaniiru',
      one: 'Sararri 1 darbameera',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Poortfooliyoon, filatamoon, akeekkachiisni gatii fi yaadannoon meeshaalee kee hunda irratti walsimsiifamu.';

  @override
  String syncLast(String time) {
    return 'Walsimsiisa dhumaa: $time';
  }

  @override
  String get syncNow => 'Amma walsimsiisi';

  @override
  String get syncFailed =>
      'Walsimsiisuun hin milkoofne. Ofumaan irra deebi\'ee yaala.';

  @override
  String get alertEmailTitle => 'Imeelii yeroo akeekkachiisni ka\'u';

  @override
  String get alertEmailOn =>
      'Akeekkachiisa kee daqiiqaa muraasa hunda ni ilaalla, appiin cufaa ta\'ee illee imeeliin siif ergina.';

  @override
  String get alertEmailSignIn =>
      'Appiin cufaa ta\'ee illee akeekkachiisa imeeliin argachuuf, Qindaa\'ina keessatti imeelii keetiin seeni.';

  @override
  String get portfolioHistory => 'Jijjiirama gatii';

  @override
  String get portfolioReviewTitle => 'Xiinxala poortfooliyoo AI';

  @override
  String get portfolioReviewIntro =>
      'AI\'n poortfooliyoo kee guutuu ilaala: walitti qabamuu, saaxilamummaa damee fi maallaqaa, balaa aksiyoonni kee waliin qooddatan, fi qooda bu\'aa. Xiinxala 1 fayyadama.';

  @override
  String get portfolioReviewButton => 'Poortfooliyoo koo xiinxali';

  @override
  String get portfolioReviewAgain => 'Irra deebi\'ii xiinxali';

  @override
  String get portfolioReviewWorking => 'Poortfooliyoon kee xiinxalamaa jira…';

  @override
  String get digestTitle => 'Cuunfaa torbanii imeeliin';

  @override
  String get digestHint =>
      'Wiixata hunda: filatamoonni kee fi poortfooliyoon kee torban darbe akkamitti akka socho\'an, akkasumas guyyoota bu\'aa isaanii dhufan.';

  @override
  String get benchmarkTitle => 'S&P 500 waliin wal bira qabame';

  @override
  String get benchmarkYours => 'Bittaawwan kee';

  @override
  String get benchmarkIndex => 'Maallaqa walfakkaatu S&P 500 keessatti';

  @override
  String benchmarkAhead(String points) {
    return 'Indeeksii caalaa qabxii dhibbeentaa ${points}n wayya';
  }

  @override
  String benchmarkBehind(String points) {
    return 'Indeeksii irraa qabxii dhibbeentaa ${points}n duubatti hafe';
  }

  @override
  String get benchmarkHint =>
      'Akka waan bittaan hundi guyyuma sana fandii indeeksii S&P 500 keessatti invastii godhameetti. Diviidendii hin dabalatu; bu\'aan darbe bu\'aa gara fuulduraa hin tilmaamu.';

  @override
  String get portfolioSell => 'Gurguri';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbol gurguri';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Gatii gurgurtaa aksiyoona tokkoo ($currency)';
  }

  @override
  String get portfolioSellDate => 'Guyyaa gurgurtaa';

  @override
  String get portfolioSellAll => 'Hunda';

  @override
  String portfolioSellTooMany(String quantity) {
    return '$quantity qabda';
  }

  @override
  String get portfolioSold => 'Gurgurame';

  @override
  String get portfolioRealized => 'Kan dhugoome';

  @override
  String get portfolioClosed => 'Qabiyyeewwan cufaman';

  @override
  String get portfolioClosedNote => 'Aksiyoonni hundi gurguramaniiru';

  @override
  String get portfolioTransactions => 'Bittaa fi gurgurtaa';

  @override
  String get portfolioRealizedByYear => 'Bu\'aa dhugoome waggaan';

  @override
  String get portfolioRealizedHint =>
      'Gurgurtaan jalqaba bittaawwan kee warra durii waliin walsimsiifama (FIFO), gatii jijjiirraa har\'aatiin jijjiirama. Gabaasa gibiraa keetiif, ibsa daldalaa (broker) kee fayyadami.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Xiinxala kanaa booda bu\'aan kurmaanaa haaraan maxxanfameera ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Bu\'aa haaraa';

  @override
  String get portfolioImportBrokers =>
      'Ergiinsi Revolut, Trading 212 fi Interactive Brokers irraa dhufan gurgurtaa wajjin ni beekamu; qooda bu\'aa fi kuusaan ni darbamu.';

  @override
  String get portfolioImportFile => 'Faayilii filadhu';

  @override
  String offlineBanner(String time) {
    return 'Walqunnamtiin hin jiru – odeeffannoon dhuma irratti olkaa\'ame agarsiifamaa jira ($time).';
  }

  @override
  String get glossMarketCap =>
      'Gatii dhaabbatichi guutummaatti gabaa aksiyoonaa irratti qabu: gatii aksiyoonaa × baay\'ina aksiyoonotaa.';

  @override
  String get glossSharesOutstanding =>
      'Aksiyoonota meeqa akka dhaabbatichi raabse. Yoo baay\'atan, aksiyoonni tokko tokkoon qooda xiqqaa qaba; deebisanii bituun ni hir\'isa.';

  @override
  String get glossPeTrailing =>
      'Gatii ÷ bu\'aa aksiyoona tokkoo ji\'oota 12 darban: bu\'aa ammaa waggaa meeqaaf akka kaffaltu. Kan gadi aanu rakasa, garuu dhaabbileen saffisaan guddatan yeroo baay\'ee P/E ol\'aanaa qabu.';

  @override
  String get glossPeForward =>
      'Akkuma P/E, garuu bu\'aa xiinxaltoonni ji\'oota 12 itti aananiif eegan fayyadamuun. Yoo P/E (kan darbe) gadi ta\'e, bu\'aan ni guddata jedhamee eegama.';

  @override
  String get glossPb =>
      'Gatii ÷ gatii galmee (qabeenya irraa liqii hir\'isuun) aksiyoona tokkoof. Naannoo 1 jechuun gabaan dhaabbaticha waan waraqaa irratti qabuun madaala.';

  @override
  String get glossPs =>
      'Gatii gabaa ÷ galii waggaa. Dhaabbilee bu\'aa xiqqaa ykn homaa hin qabneef gargaara; industirii tokko keessatti wal bira qabi.';

  @override
  String get glossEvToFcf =>
      'Gatii dhaabbatichaa liqii dabalatee (EV) ÷ maallaqa inni erga invastimantii booda waggaatti argatu. Kan gadi aanu jechuun gatii kaffalteef maallaqa caalu argatta.';

  @override
  String get glossPeg =>
      'P/E ÷ guddina bu\'aa waggaa eegamu (%). Naannoo 1 yeroo baay\'ee madaalawaa jedhamee ilaalama; P/E guddina waliin madaala.';

  @override
  String get glossEps =>
      'Bu\'aa aksiyoona tokkoo ji\'oota 12 darban keessatti. EPS waggaa waggaan dabalu mallattoowwan dhaabbata fayya qabeessa ta\'e keessaa isa cimaa tokko.';

  @override
  String get glossBeta =>
      'Aksiyoonni gabaa waliin hammam akka sochoothu: 1 = akka gabaa, 1.5 = jijjiirama naannoo 50% caalu, 1 gadi = tasgabbaawaa.';

  @override
  String get glossRevenueTtm =>
      'Gurgurtaa waliigalaa ji\'oota 12 darbanii, baasii kamiyyuu dura.';

  @override
  String get glossNetIncomeTtm =>
      'Bu\'aa erga baasii hunda, dhala fi gibira booda hafe, ji\'oota 12 darban keessatti.';

  @override
  String get glossGrossMargin =>
      'Qooda galii erga baasii kallattii oomishaa booda hafu. Marjiniin ol\'aanaan yeroo baay\'ee humna gatii murteessuu agarsiisa.';

  @override
  String get glossOperatingMargin =>
      'Qooda galii erga baasii hojii (mindaa, kiraa, gabeessaa) booda hafu, dhalaa fi gibiraan dura.';

  @override
  String get glossNetMargin =>
      'Qooda galii bu\'aa dhumaa ta\'u. 20% jechuun gurgurtaa 100 hunda keessaa 20n bu\'aa dha.';

  @override
  String get glossRoe =>
      'Deebii kaappitaalaa: bu\'aa waggaa ÷ kaappitaala abbootii. Hoggansi maallaqa abbootii aksiyoonaa hammam gaarii itti fayyadamu agarsiisa; naannoo 15% ol cimaa dha.';

  @override
  String get glossRoa =>
      'Deebii qabeenyaa: bu\'aa waggaa ÷ qabeenya dhaabbatichi qabu hunda. Industirii tokko keessatti wal bira qabi.';

  @override
  String get glossDebtToEquity =>
      'Liqii ÷ kaappitaala abbootii. Kan ol\'aanu maallaqa liqeeffame caalaa jechuudha: dhalli yoo dabale ykn daldalli yoo laafe balaa guddaa.';

  @override
  String get glossCurrentRatio =>
      'Qabeenya yeroo gabaabaa ÷ kaffaltii waggaa tokko keessatti kaffalamuu qabu. 1 ol jechuun dhaabbatichi kaffaltii dhihoo isaa kaffaluu danda\'a.';

  @override
  String get glossRevenueGrowth =>
      'Galiin bara darbe waliin yoo wal bira qabamu hammam akka guddate.';

  @override
  String get glossEpsGrowth =>
      'Bu\'aan aksiyoona tokkoo bara darbe waliin yoo wal bira qabamu hammam akka guddate.';

  @override
  String get glossDividendYield =>
      'Qooda bu\'aa waggaa ÷ gatii aksiyoonaa: galii maallaqaa waggaatti argattu, dhibbeentaa waan kaffalteetiin.';

  @override
  String get glossDividendPerShare =>
      'Qooda bu\'aa aksiyoona tokkoof bara darbe kaffalame.';

  @override
  String get glossPayoutRatio =>
      'Bu\'aa keessaa hammi isaa akka qooda bu\'aatti raabsamu. 100% ol yoo ta\'e dhaabbatichi waan argatu caalaa kaffala, kun immoo yeroo dheeraa hin turu.';

  @override
  String get glossTitle => 'Maal jechuudha?';

  @override
  String get watchNewsTitle => 'Oduu aksiyoonota keessanii';
}
