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
  String get labelYieldOnCost => 'Bu\'aa gatii bittaa irratti';

  @override
  String get labelDividendGrowth5y => 'Guddina qooda bu\'aa (waggaa 5)';

  @override
  String get dividendNone =>
      'Ji\'oota 12 darban keessatti qoodni bu\'aa hin kaffalamne.';

  @override
  String get dividendOnYourShares => 'Aksiyoona kee irratti, waggaatti';

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
  String homeDividendsThisYear(String amount) {
    return 'Diviidendii bara kanaa: $amount';
  }

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
  String get eventDividend => 'Diviidendii eegamu';

  @override
  String get eventDividendEstimate =>
      'Kaffaltiiwwan ati galmeessiterraa tilmaamame';

  @override
  String get eventsHint =>
      'Guyyoota bu\'aa aksiyoonota filatamoo fi poortfooliyoo keetii guyyoota 90 itti aananitti, taateewwan guyyaa qaban kan xiinxalli kee agarsiise, akkasumas diviidendii kaffaltiiwwan ati galmeessiterraa eegamu.';

  @override
  String get eventsEmpty =>
      'Guyyoota 90 itti aananitti taateen guyyaa qabu hin jiru. Guyyoota bu\'aa isaanii asitti arguuf filatamoo ykn aksiyoonota poortfooliyoo dabali; diviidendiin galmeessite kaffaltii itti aanu eegamu ni agarsiisa.';

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
  String get benchmarkTitleIndex => 'Indeeksii tokko waliin wal bira qabame';

  @override
  String get benchmarkHintIndex =>
      'Akka waan bittaan kee hundi guyyuma sana fandii indeeksii filatame hordofu keessa galeetti. Qoodni bu\'aa hin hammatamne; bu\'aan darbe kan gara fuulduraa hin raaguu.';

  @override
  String get benchmarkYours => 'Bittaawwan kee';

  @override
  String benchmarkAhead(String points) {
    return 'Indeeksii caalaa qabxii dhibbeentaa ${points}n wayya';
  }

  @override
  String benchmarkBehind(String points) {
    return 'Indeeksii irraa qabxii dhibbeentaa ${points}n duubatti hafe';
  }

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
      'Ergiinsi Revolut, Trading 212, Interactive Brokers, DEGIRO, Schwab, Fidelity fi Robinhood irraa dhufan gurgurtaa fi qooda bu\'aa (erga gibirri qabame hir\'atee booda) wajjin ni beekamu; kuusaan ni darbamu.';

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
  String get portfolioBeta => 'Beetaa poortfooliyoo';

  @override
  String get glossPortfolioBeta =>
      'Beetaa aksiyoonota keetii, akka gatii isaaniitti madaalame: gabaan 1% yoo sochoo\'u, aksiyoonni kee tilmaamaan dhibbeentaa meeqa akka sochoo\'an agarsiisa. 1 ol yoo ta\'e gabaa caalaa jijjiiramu, 1 gadi yoo ta\'e xiqqaa. Maallaqni callaa hin dabalamne.';

  @override
  String get portfolioTop3 => 'Qabiyyeewwan gurguddoo 3';

  @override
  String get glossPortfolioTop3 =>
      'Gatii aksiyoonota keetii keessaa hammi kam qabiyyeewwan kee sadan gurguddoo keessa akka jiru. Hammuma ol ka\'een, oduun badaan dhaabbata tokkoo poortfooliyoo guutuu caalaatti miidhuu danda\'a.';

  @override
  String get glossDividendGrowth5y =>
      'Qoodni bu\'aa aksiyoona tokkoo waggoota shanan darban keessatti giddugaleessaan waggaatti hammam akka guddate. Guddinni itti fufaan yeroo baay\'ee dhaabbatichi yaa\'insa maallaqa isaa akka amanu agarsiisa; hir\'isuun immoo yeroo baay\'ee mallattoo akeekkachiisaati.';

  @override
  String get glossYieldOnCost =>
      'Diviidendii ji\'oota 12 darban keessa argame, maallaqa aksiyoonota ammas qabdu irratti kaffalteen hiramee. Dhibbeentaa qooda bu\'aa irraa adda ta\'ee, gatii har\'aatiin osoo hin taane gatii ati ittiin bitteen safarama.';

  @override
  String get glossTitle => 'Maal jechuudha?';

  @override
  String get watchNewsTitle => 'Oduu aksiyoonota keessanii';

  @override
  String get undo => 'Deebisi';

  @override
  String get watchSort => 'Tartiibessi';

  @override
  String get watchSortOwn => 'Tartiiba koo';

  @override
  String get watchSortGainers => 'Kan baay\'ee ol ka\'e dura';

  @override
  String get watchSortLosers => 'Kan baay\'ee gad bu\'e dura';

  @override
  String get watchSortName => 'Mallattoon (A–Z)';

  @override
  String get watchHint =>
      'Tartiiba jijjiiruuf qabduu harkisi, haquuf gara bitaatti sossoosi. Sararri guyyoota 30 darban agarsiisa.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: xiinxalli kee qophaa\'eera.';
  }

  @override
  String alertFromCost(String price) {
    return 'Gatii bittaa giddugaleessa kee ($price) irraa:';
  }

  @override
  String get briefTitle => 'Har’a aksiyoonota kee waliin';

  @override
  String get briefButton => 'Har’a cuunfi';

  @override
  String get briefHint =>
      'Cuunfaa gabaabaa AI kan portfolio kee fi filatamoonni kee har’a akkamitti akka sochoo’an fi oduun haaraan maal akka jedhu agarsiisu. Xiinxala hin fayyadamu.';

  @override
  String get briefRefresh => 'Haaromsi';

  @override
  String get sectionEarnings => 'Bu\'aa kurmaanaa';

  @override
  String earningsNext(String date) {
    return 'Gabaasa itti aanu: $date';
  }

  @override
  String get earningsExpected => 'EPS eegame';

  @override
  String get earningsReported => 'EPS gabaafame';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Kurmaanota $total darban keessaa $beats irratti EPS eegame wajjin wal qixxee ykn isa ol',
      one:
          'Kurmaana 1 keessaa $beats irratti EPS eegame wajjin wal qixxee ykn isa ol',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol boru bu\'aa kurmaanaa ifa baasa';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol har\'a bu\'aa kurmaanaa ifa baasa';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return '$symbol: har\'a diviidendii eegama';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Gara $amount. Yeroo ga\'u poortfooliyoo kee keessatti galmeessi.';
  }

  @override
  String get dividendRemindersTitle => 'Yaadachiisa diviidendii';

  @override
  String get dividendRemindersSubtitle =>
      'Beeksisa guyyaa diviidendiin akkaataa kaffaltiiwwan ati galmeessiteetiin eegamu, akka galmeessuu dandeessuuf';

  @override
  String get earningsRemindersTitle => 'Yaadachiisa bu\'aa';

  @override
  String get earningsRemindersSubtitle =>
      'Beeksisa guyyaa tokko dura filatamoon kee ykn aksiyoonni poortfooliyoo kee bu\'aa kurmaanaa ifa baasan';

  @override
  String addAllToFavorites(int count) {
    return 'Hunda filatamootti dabali ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Suuraa iskiriinii irraa galchi';

  @override
  String get holdingsReading => 'Qabeenya kee dubbisaa jira…';

  @override
  String get holdingsReviewTitle => 'Qabeenya argame';

  @override
  String get holdingsReviewHint =>
      'Osoo hin dabaliin dura lakkoofsota mirkaneessi. Gatiin kun gatii bittaa giddugaleessaa kee aksiyoona tokkoof ti, kan har\'aa miti.';

  @override
  String get holdingsNoPrice =>
      'Suuraa irratti gatiin bittaa giddugaleessaa hin jiru';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Qabeenya $count dabali',
      one: 'Qabeenya 1 dabali',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Suuraa kana irratti qabeenyi aksiyoonaa hin argamne. Suuraa iskiriinii fuula qabeenyaa brookarii keetii yaali.';

  @override
  String get week52Range => 'Daangaa torban 52';

  @override
  String week52BelowHigh(String percent) {
    return 'Ol\'aanaa torban 52 irraa $percent gadi';
  }

  @override
  String get week52AtHigh => 'Ol\'aanaa torban 52 irratti';

  @override
  String get alertKindTrailing => 'Ol\'aanaa irraa yoo bu\'e';

  @override
  String get alertTrailingPercent => 'Bu\'aa ol\'aanaa irraa (%)';

  @override
  String get alertTrailingHint =>
      'Gatii ol hordofa: erga qindeessitee as sadarkaa isaa ol\'aanaa irraa gatiin hammana yoo bu\'e si beeksisa.';

  @override
  String alertDescTrailing(String percent) {
    return 'Ol\'aanaa irraa $percent bu\'aa';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'ol\'aanaa hanga ammaa: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol ol\'aanaa isaa irraa $percent bu\'eera';
  }

  @override
  String get sectionInsiders => 'Daldala namoota keessaa';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'bittaa $count',
      one: 'bittaa 1',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'gurgurtaa $count',
      one: 'gurgurtaa 1',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Qulqulluu: aksiyoona $shares';
  }

  @override
  String get insiderBuy => 'Bitame';

  @override
  String get insiderSell => 'Gurgurame';

  @override
  String get insiderHint =>
      'Bittaa fi gurgurtaa gabaa banaa irratti hoji-gaggeessitootaa fi daarektarootaan guyyoota 90 darban keessatti raawwataman (SEC Form 4). Fayyadamni filannoo (option) fi badhaasni aksiyoonaa hin lakkaa\'aman.';

  @override
  String get insiderNone =>
      'Guyyoota 90 darban keessatti bittaan ykn gurgurtaan namoota keessaa gabaa banaa irratti hin jiru.';

  @override
  String get analystTrend => 'Akkaataa yaadni ji\'a ji\'aan jijjiirame';

  @override
  String get watchListAll => 'Hunda';

  @override
  String get watchListNew => 'Tarree haaraa';

  @override
  String get watchListName => 'Maqaa tarree';

  @override
  String get watchListRename => 'Maqaa tarree jijjiiri';

  @override
  String get watchListDelete => 'Tarree haqi';

  @override
  String get watchListAddTo => 'Tarreetti dabali';

  @override
  String get watchListEmpty =>
      'Tarree kana keessa ammallee aksiyoonni hin jiran. Dabaluuf furtuu tarree aksiyoona cinaa jiru tuqi.';

  @override
  String get portfolioAskTitle => 'Gaaffilee waa\'ee poortfooliyoo keessanii';

  @override
  String get rangeYtd => 'Bara kana';

  @override
  String get backupTitle => 'Kuusaa deebii';

  @override
  String get backupSave => 'Kuusaa deebii olkaa\'i';

  @override
  String get backupSaveHint =>
      'Filatamoo, tarreewwan, poortfooliyoo, akeekkachiisota fi yaadannoo kee faayilii tokko keessatti.';

  @override
  String get backupRestore => 'Kuusaa deebii irraa deebisi';

  @override
  String get backupRestoreHint =>
      'Waan faayilii keessa jiru ni dabala; waan amma qabdu keessaa homtuu hin haqamu.';

  @override
  String get backupRestored => 'Kuusaan deebii deebi\'eera.';

  @override
  String get backupInvalid => 'Faayiliin kun kuusaa deebii WhatStock miti.';

  @override
  String get allocationPositions => 'Aksiyoona';

  @override
  String get allocationSectors => 'Dameewwan';

  @override
  String get allocationCurrencies => 'Maallaqa';

  @override
  String get allocationAccounts => 'Herregoota';

  @override
  String get compareReturn1y => 'Bu\'aa waggaa 1';

  @override
  String get compareFromHigh => 'Ol\'aanaa torban 52 irraa fageenya';

  @override
  String get briefAutoTitle => 'Cuunfaa guyyaa ganama hunda';

  @override
  String get briefAutoSubtitle =>
      '“Har’a aksiyoonota kee waliin” yeroo appiin hojjechaa jirutti 7:00 ganamaa booda ofumaan qophaa’a; kompiitara irratti beeksisni sitti hima. Daangaa gaaffii guyyaa kee fayyadama, xiinxala miti.';

  @override
  String get targetsButton => 'Qoqqoodinsa galmaa';

  @override
  String get targetsTitle => 'Qoqqoodinsa galmaa';

  @override
  String get targetsHint =>
      'Aksiyoonni tokkoon tokkoon isaa qooda poortfooliyoo hammam qabaachuu akka qabu murteessi. Galmi yoo hin jiraanne dirree duwwaa dhiisi. Appichi booda maal bituu ykn gurguruu akka qabdu si agarsiisa.';

  @override
  String targetsSum(String percent) {
    return 'Waliigala: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Bitadhu ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Gurguri ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Galma irra';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol EPS eegame caale';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol EPS eegame hin geenye';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'EPS gabaafame $actual, eegame $estimate';
  }

  @override
  String get newsExplain => 'Kun maal jechuu dha?';

  @override
  String get watchAlertAll => 'Akeekkachiisa sochii guddaa guyyaa';

  @override
  String get watchAlertAllHint =>
      'Akeekkachiisa gatii aksiyoona tarree kana keessa jiru hundaaf: guyyaa tokkotti hammana yoo ol ykn gadi socho\'e ni beeksisa. Kanneen duraan qaban kan isaanii ni eeggatu.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Akeekkachiisni $count qindaa\'aniiru',
      one: 'Akeekkachiisni 1 qindaa\'eera',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Bu\'aa argame ergi (CSV)';

  @override
  String get portfolioAnnualReturn => 'Bu\'aa waggaa';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / waggaa';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Bu\'aa waggaa maallaqaan madaalame (XIRR): yeroo itti bitte fi gurgurte ni ilaala, kanaaf maallaqni booda dabalame hin jallisu. Erga bittaan kee jalqabaa yoo xiqqaate waggaa tokko guutee booda ni mul\'ata; qoodni bu\'aa hin dabalamne.';

  @override
  String get eventsAddToCalendar => 'Kaalaandariitti dabali (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Akeekkachiisa poortfooliyoo';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Beeksisa yeroo poortfooliyoon kee guutuun guyyaa tokkotti hammana socho\'u.';

  @override
  String get portfolioMoveAlertOff => 'Cufaa';

  @override
  String portfolioMoveUp(String percent) {
    return 'Poortfooliyoon kee har\'a $percent ol ka\'eera';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Poortfooliyoon kee har\'a $percent gad bu\'eera';
  }

  @override
  String get whatIfTitle => 'Osoo invastii gootee jiraattee hoo?';

  @override
  String get whatIfAmount => 'Hanga';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount $period dura invastii godhame har\'a gatii kana qabaata ture';
  }

  @override
  String get whatIfNote =>
      'Gatii aksiyoonaa qofa irratti hundaa\'a: qoodni bu\'aa, kaffaltiin tajaajilaa fi gibirri hin hammatamne. Bu\'aan darbe kan gara fuulduraa hin raaguu.';

  @override
  String get watchShare => 'Tarree qoodi';

  @override
  String get watchImport => 'Mallattoo aksiyoonaa dabali';

  @override
  String get watchImportHint =>
      'Mallattoo aksiyoonaa qoodduu, iddoo duwwaa ykn sarara haaraan addaan baafaman maxxansi – fakkeenyaaf tarree namni tokko siif qoode.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Aksiyoonni $count dabalamaniiru',
      one: 'Aksiyoonni 1 dabalameera',
      zero: 'Aksiyoonni haaraan hin jiru',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Kan guddaa dura';

  @override
  String get positionsSortGain => 'Bu\'aa waliigalaa ol aanaa dura';

  @override
  String get positionsSortToday => 'Kan har\'a caalu dura';

  @override
  String get chartMyBuys => 'Bittaawwan kee';

  @override
  String get chartMySells => 'Gurgurtaawwan kee';

  @override
  String get shortcutsTitle => 'Furtuuwwan gabaabaa kiiboordii';

  @override
  String usMarketOpen(String time) {
    return 'Gabaan Ameerikaa banaa dha · $time booda cufama';
  }

  @override
  String usMarketClosed(String time) {
    return 'Gabaan Ameerikaa cufaa dha · $time booda banama';
  }

  @override
  String durationMinutes(int minutes) {
    return 'daq. $minutes';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return 'sa\'a $hours daq. $minutes';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return 'guyyaa $days sa\'a $hours';
  }

  @override
  String get dividendGoalSet => 'Kaayyoo qooda bu\'aa ji\'aa kaa\'i';

  @override
  String get dividendGoalTitle => 'Kaayyoo qooda bu\'aa ji\'aa';

  @override
  String get dividendGoalAmount => 'Qooda bu\'aa ji\'atti';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Dhibbeentaa har\'aatiin ji\'atti gara $amount · $percent · Kaayyoo: $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Dhibbeentaa har\'aatiin ji\'atti gara $amount · Kaayyoon galma ga\'eera: $goal';
  }

  @override
  String get portfolioAccount => 'Herrega';

  @override
  String get portfolioAccountHint => 'fkn. TBSZ 2026 (dirqama miti)';

  @override
  String get portfolioAccountAdd => 'Herrega ibsi';

  @override
  String get portfolioAccountsAll => 'Herregoota hunda';

  @override
  String get portfolioAccountNote =>
      'Bittaa, gurgurtaa fi diviidendii herrega kanaa qofa. Maallaqni callaa, kaayyoowwan fi xiinxalli AI \"Herregoota hunda\" jalatti mul\'atu.';

  @override
  String get portfolioNoAccount => 'Herrega malee';

  @override
  String portfolioFee(String currency) {
    return 'Kaffaltii tajaajilaa ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Kaffaltii tajaajilaa dabali';

  @override
  String portfolioFeeRow(String amount) {
    return 'Kaffaltii tajaajilaa: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'Cuunfaa waggaa';

  @override
  String get portfolioProceeds => 'Galii gurgurtaa';

  @override
  String get portfolioCostBasis => 'Gatii bittaa';

  @override
  String get portfolioFeesPaid => 'Kaffaltii tajaajilaa kaffalame';

  @override
  String get portfolioAnnualSummaryNote =>
      'Maallaqni maallaqa jalqabaatiin, hin jijjiiramne. Galii gurgurtaa irraa kaffaltiin tajaajilaa gurgurtaa hir\'ifameera; gatiin bittaa kaffaltii tajaajilaa bittaa of keessaa qaba (FIFO). Gabaasa gibiraa keetiif, gatii jijjiirraa abbaan taayitaa gibiraa barbaaduun jijjiiri.';

  @override
  String get portfolioShare => 'Bu\'aa qoodi';

  @override
  String get portfolioShareHeading => 'Poortfooliyoo koo';

  @override
  String get portfolioTopHoldings => 'Qabiyyeewwan gurguddoo';

  @override
  String get portfolioShareNote =>
      'Dhibbeentaa qofatu qoodama, hammi maallaqaa hin qoodamu.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Qabiyyeewwan $count',
      one: 'Qabiyyee $count',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'Gorsa invastimantii miti';

  @override
  String get contributionButton => 'Maallaqa haaraa invastii godhi';

  @override
  String contributionAmount(String currency) {
    return 'Hanga invastii godhamu ($currency)';
  }

  @override
  String get contributionHint =>
      'Bituu qofa, gurgurtaa hin qabu: qabiyyeewwan galma isaanii irraa baay\'ee gadi jiran maallaqa dursanii argatu.';

  @override
  String contributionShares(String shares) {
    return '≈ aksiyoona $shares';
  }

  @override
  String contributionMissing(String symbols) {
    return 'Gatiin ammaa $symbols hin jiru: qoodinsa keessa hin galle.';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'Bu\'aan waggaa akkasumatti yoo itti fufe ($rate), kaayyoon kee gara bara $year galma ni ga\'a.';
  }

  @override
  String get portfolioMaxDrawdown => 'Gadi bu\'iinsa isa guddaa';

  @override
  String get glossMaxDrawdown =>
      'Gadi bu\'iinsa gatii aksiyoonota keetii isa guddaa, ol aantummaa duraa irraa hanga gadi aantummaa booda jiruutti, dhiibbaa bittaa fi gurgurtaa keetiin ala (yeroon madaalame). Poortfooliyoon kee hanga ammaatti gadi bu\'iinsa hammam gadi fagoo keessa akka darbe agarsiisa.';

  @override
  String watchSince(String date) {
    return 'Erga filatamootti dabaltee as ($date)';
  }

  @override
  String get portfolioSampleTry => 'Poortfooliyoo fakkeenyaatiin yaali';

  @override
  String get portfolioSampleBanner =>
      'Kun poortfooliyoo fakkeenyaati. Bittaawwan kee cinaa isaatti dabali, ykn isa haqi.';

  @override
  String get portfolioSampleRemove => 'Fakkeenya haqi';

  @override
  String get portfolioStopsAll =>
      'Akeekkachiisa ol\'aanaa irraa bu\'uu qabiyyeewwan hundaaf';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Akeekkachiisni $count qindaa\'aniiru',
      one: 'Akeekkachiisni 1 qindaa\'eera',
      zero: 'Qabiyyeen hundi duraanuu akeekkachiisa kana qaba',
    );
    return '$_temp0';
  }

  @override
  String portfolioSinceSale(String percent) {
    return '$percent erga gurgurtee as';
  }

  @override
  String get lotPreviewRealized =>
      'Gurgurtaa kana irratti kan dhugoome (FIFO):';

  @override
  String lotPreviewAverage(String after, String before) {
    return 'Baasii giddugaleessaa haaraa: $after (amma $before)';
  }

  @override
  String get portfolioYtdReturn => 'Bu\'aa bara kanaa';

  @override
  String get glossTwrYtd =>
      'Bu\'aa yeroon madaalame jalqaba waggaa irraa (yookiin bittaa kee isa jalqabaa irraa, yoo bara kana ture): guyyaan tokkoon tokkoon jijjiirama aksiyoonota guyyaa sana qabaatte herrega, guyyoonnis walitti hidhamu – maallaqni ati galchitu ykn baaftu bu\'aa miti, kanaaf indeeksii tokko waliin wal bira qabamuu danda\'a. Jala isaatti: indeeksii filatame yeroo walfakkaataa keessatti.';

  @override
  String alertDistance(String price, String percent) {
    return 'Amma $price · $percent hafeera';
  }

  @override
  String get portfolioGoalSet => 'Kaayyoo kaa\'i';

  @override
  String get portfolioGoalTitle => 'Kaayyoo poortfooliyoo';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · Kaayyoo: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Kaayyoon galma ga\'eera: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Kaayyoo haqi';

  @override
  String get alertEdit => 'Akeekkachiisa gulaali';

  @override
  String get positionOpenLots => 'Ammas harka kee jira (kan durii jalqaba)';

  @override
  String get lotRemoved => 'Bittaan ykn gurgurtaan haqameera';

  @override
  String get alertDeleted => 'Akeekkachiisni haqameera';

  @override
  String get alertsClearTriggered => 'Akeekkachiisota ka\'an haqi';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Akeekkachiisni $count haqamaniiru',
      one: 'Akeekkachiisni 1 haqameera',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Fuula jalqabaa';

  @override
  String get allocationCountries => 'Biyyoota';

  @override
  String get newsExplainNoteResearch =>
      'Ibsa AI: dhugaawwan interneetii irratti barbaada, barruu sana bana, madda sana hammam amanamaa akka ta\'e madaala. Gorsa invastimantii miti. Daangaa gaaffii guyyaa kee fayyadama, xiinxala miti.';

  @override
  String get sourceOfficial => 'Kan seeraa';

  @override
  String get sourcePressRelease => 'Ibsa miidiyaa';

  @override
  String get sourceMajorNews => 'Miidiyaa guddaa';

  @override
  String get sourceOpinion => 'Yaada';

  @override
  String get earningsSummaryButton => 'Gabaasa dhumaa keessa maaltu ture?';

  @override
  String get earningsSummaryNote =>
      'Cuunfaa AI beeksisa bu\'aa dhaabbatichaa fi gabaasa miidiyaa interneetii irratti argatuu. Gorsa invastimantii miti. Daangaa gaaffii guyyaa kee fayyadama, xiinxala miti.';

  @override
  String get compareLastSurprise => 'EPS kurmaana darbe vs eegame';

  @override
  String get compareNextReport => 'Gabaasa itti aanu';

  @override
  String get resolvingDescription =>
      'Aksiyoona ati jechuu barbaadde adda baafamaa jira…';

  @override
  String get instrumentTitle => 'Waa\'ee meeshaa kanaa';

  @override
  String get instrumentHint =>
      'Mallattoo kanaaf piroofaayilii dhaabbataa hin jiru – ETF, fandii yookiin ragaa kuufamaa ta\'uu danda\'a. AI gaafadhu inni maal akka ta\'e, maal akka qabatee fi baasii isaa hammam akka ta\'e.';

  @override
  String get instrumentAsk => 'Kun maali?';

  @override
  String get instrumentNote =>
      'Ibsa AI fuula fandii baasaa fi marsariitiiwwan faayinaansii interneetii irratti argatu irraa. Gorsa invastimantii miti. Daangaa gaaffii guyyaa kee fayyadama, xiinxala miti.';

  @override
  String suggestAskAi(String query) {
    return 'AI gaafadhu: “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Gatiin ammaa $symbols hin jiru.';
  }

  @override
  String get eventsRecentResults => 'Bu\'aa dhiheenya gabaafame';

  @override
  String get saveToNotes => 'Yaadannoo kootti olkaa\'i';

  @override
  String get savedToNotes => 'Yaadannoo keetti olkaa\'ame';

  @override
  String get portfolioDividendsReceived => 'Diviidendii argame';

  @override
  String get portfolioDividendsThisYear => 'Bara kana';

  @override
  String get portfolioDividendsAllTime => 'Waliigala';

  @override
  String get portfolioAddDividend => 'Diviidendii dabali';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Maallaqa argame ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Guyyaa kaffaltii';

  @override
  String get portfolioDividendsEmpty =>
      'Hanga ammaatti diviidendiin galmaa\'e hin jiru. Harkaan dabali, yookiin faayilii ekspoortii birookerii keetii galchi – tarreewwan diviidendii isaas ni fudhatamu.';

  @override
  String get portfolioSplit => 'Qoqqoodinsa aksiyoonaa';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Qoqqoodinsa aksiyoonaa: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Bittaa fi gurgurtaan guyyaa qoqqoodinsaa dura jiran ni sirreeffamu: baay\'inni aksiyoonaa ni baay\'ifama, gatiin aksiyoona tokkoo ni hiramaa, kanaafuu baasiin akkuma duraatti tura.';

  @override
  String get portfolioSplitRatio => 'Reeshoo (haaraa : moofaa)';

  @override
  String get portfolioSplitRatioError =>
      'Reeshoo akka 10:1 galchi, yookiin qoqqoodinsa duubatti deebi\'uuf 1:10.';

  @override
  String get portfolioSplitDate => 'Guyyaa qoqqoodinsaa';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Qoqqoodinsa aksiyoonaa $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Qoqqoodinsi aksiyoonaa haqameera';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Qoqqoodinsa aksiyoonaa $count dabalaman',
      one: 'Qoqqoodinsa aksiyoonaa 1 dabalame',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Diviidendii $count dabalaman',
      one: 'Diviidendii 1 dabalame',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Diviidendii ekspoortii godhi (CSV)';

  @override
  String get portfolioDividendDeleted => 'Diviidendiin haqame';

  @override
  String get portfolioDividendsHint =>
      'Maallaqni akkuma herrega kee irra ga\'etti, maallaqa kaffaltiitiin; ida\'amni sadarkaa har\'aatiin jijjiirama. Gabaasa gibiraa keetiif, ibsa birookerii keetii fayyadami.';

  @override
  String get awayTitle => 'Yeroo ati hin turin';

  @override
  String awaySince(String when) {
    return '$when irraa eegalee';
  }

  @override
  String get awayQuiet => 'Wanti baay\'ee jijjiirame hin jiru.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Akeekkachiisa $count ka\'an',
      one: 'Akeekkachiisa 1 ka\'e',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Bu\'aa gabaafame: $symbols';
  }

  @override
  String get moveWhyButton => 'Har\'a maaliif socho\'aa jira?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent har\'a';
  }

  @override
  String get moveWhyNote =>
      'Ibsa AI oduu har\'aa weebii irraa argame irratti hundaa\'e; sababni dhugaa hin beekamu ykn garaagara ta\'uu danda\'a. Gorsa invastimantii miti. Hiree gaaffii guyyaa keessan fayyadama, xiinxala miti.';

  @override
  String get sectionTechnical => 'Fakkii teeknikaa';

  @override
  String get labelSma50 => 'Giddugaleessa guyyaa 50';

  @override
  String get labelSma200 => 'Giddugaleessa guyyaa 200';

  @override
  String get labelRsi => 'RSI (guyyaa 14)';

  @override
  String get labelVolatility30 => 'Jijjiirama gatii (guyyaa 30)';

  @override
  String techAbove(String percent) {
    return '$percent ol';
  }

  @override
  String techBelow(String percent) {
    return '$percent gad';
  }

  @override
  String get techOverbought => 'baay\'ee bitame';

  @override
  String get techOversold => 'baay\'ee gurgurame';

  @override
  String get techNeutral => 'giddugaleessa';

  @override
  String get techGoldenCross =>
      'Giddugaleessi guyyaa 50 giddugaleessa guyyaa 200 ol jira – akka dubbisa beekamaatti kallattii olka\'u.';

  @override
  String get techDeathCross =>
      'Giddugaleessi guyyaa 50 giddugaleessa guyyaa 200 gad jira – akka dubbisa beekamaatti kallattii gadbu\'u.';

  @override
  String get glossSma50 =>
      'Giddugaleessa gatii cufiinsaa guyyoota daldalaa 50 dhumaa. Gatiin isaa ol jiru yeroo baay\'ee akka jabina yeroo gabaabaa, gad jiru ammoo akka dadhabbiitti ilaalama.';

  @override
  String get glossSma200 =>
      'Giddugaleessa gatii cufiinsaa guyyoota daldalaa 200 dhumaa – sarara kallattii yeroo dheeraa beekamaa. Invastaroonni baay\'een gatii isaa ol jiru akka kallattii olka\'u yeroo dheeraatti fudhatu.';

  @override
  String get glossRsi =>
      'Indeeksii jabina walfakkaataa: bu\'aa dhiheenyaa fi kasaaraa dhiheenyaa safartuu 0–100 irratti wal bira qaba. 70 ol aksiyoonni yeroo baay\'ee baay\'ee bitame (saffisaan ol ka\'e) jedhama, 30 gad ammoo baay\'ee gurgurame – garuu kallattiin cimaan yeroo dheeraa achi turuu danda\'a.';

  @override
  String get glossVolatility =>
      'Gatiin guyyaa guyyaatti hammam akka jijjiiramu, gara waggaatti safarame: 20% jechuun waggaa idilee keessa naannoo ±20% keessa socho\'a jechuu dha. Jijjiirama ol\'aanaa jechuun socho\'a guddaa kallattii lamaaniin jechuu dha.';

  @override
  String get techNote =>
      'Gatii cufiinsaa guyyaa irraa shallagame. Mallattooleen teeknikaa kan darbe ibsu, kan dhufu hin ibsan.';

  @override
  String portfolioAbove200(int above, int count) {
    return 'Qabiyyeewwan $count keessaa $above giddugaleessa guyyaa 200 isaanii ol jiru';
  }

  @override
  String get watchSignalsTitle => 'Mallattoolee';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · baay\'ee gurgurame';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · baay\'ee bitame';
  }

  @override
  String get signalCrossedAbove => 'giddugaleessa guyyaa 200 gararraa ce\'e';

  @override
  String get signalCrossedBelow => 'giddugaleessa guyyaa 200 gadi ce\'e';

  @override
  String get signalAlertsTitle => 'Beeksisa mallattoo teeknikaa';

  @override
  String get signalAlertsSubtitle =>
      'Guyyaatti al tokko, yeroo aksiyoonni ati hordoftu baay\'ee gurgurame yookiin baay\'ee bitame (RSI) ta\'u, yookiin gatiin isaa giddugaleessa guyyaa 200 qaxxaamuru.';

  @override
  String get signalAlertsNotification => 'Mallattoolee teeknikaa';

  @override
  String get glossaryPageTitle => 'Hiika jechootaa';

  @override
  String get glossaryPageSubtitle =>
      'Ibsa salphaa lakkoofsa hunda appiin agarsiisu, P/E irraa hanga RSI';

  @override
  String get glossarySearchHint => 'Hiika jechootaa keessa barbaadi';

  @override
  String get portfolioCash => 'Maallaqa callaa';

  @override
  String get portfolioCashTitle => 'Hafaa maallaqaa';

  @override
  String get portfolioCashHint =>
      'Maallaqa brokera kee bira jiru kan invastii hin godhamne, akka gosa maallaqaatiin. Gatii waliigalaa fi qoqqoodinsa keessatti lakkaa\'ama; bu\'aa keessatti hin lakkaa\'amu.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Hamma ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Hafaa maallaqaa qindeessi';

  @override
  String get portfolioDividendsByMonth => 'Ji\'aan';

  @override
  String get dividendsLegendReceived => 'Kan argame';

  @override
  String get dividendsLegendExpected => 'Kan eegamu';

  @override
  String get portfolioDividendsExpected => 'Itti aanee eegamu';

  @override
  String get portfolioDividendsExpectedNote =>
      'Guyyoota fi hamma kaffaltiiwwan ati galmeessiterraa tilmaamame; dhaabbileen jijjiiruu ykn dhiisuu ni danda\'u.';

  @override
  String portfolioDividendAround(String date) {
    return 'naannoo $date';
  }
}
