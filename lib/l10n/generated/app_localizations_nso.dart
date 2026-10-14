// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Pedi Northern Sotho Sepedi (`nso`).
class AppLocalizationsNso extends AppLocalizations {
  AppLocalizationsNso([String locale = 'nso']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Tšea seswantšho sa šere gomme o ithute tšohle ka yona.';

  @override
  String get homeHint =>
      'Setifikeiti sa šere, sekirini sa app ya brokara, kuranta goba logo ya khamphani – selo le ge e le sefe se se laetšago šere.';

  @override
  String get takePhoto => 'Tšea seswantšho';

  @override
  String get chooseFromGallery => 'Kgetha go tšwa go galari';

  @override
  String get chooseImage => 'Kgetha seswantšho';

  @override
  String get enterTickerManually => 'Tsenya ticker ka seatla';

  @override
  String get tickerInputLabel => 'Leswao la ticker';

  @override
  String get tickerInputHint => 'mohl. AAPL';

  @override
  String get lookUp => 'Nyaka';

  @override
  String demoModeBanner(String symbols) {
    return 'Mokgwa wa pontšho – ga go na senotlelo sa data ya mmaraka seo se beakantšwego. Data ya mohlala e hwetšagala go: $symbols.';
  }

  @override
  String get recognizing => 'E sekaseka seswantšho…';

  @override
  String get loadingData => 'E laiša data…';

  @override
  String get noCandidatesTitle => 'Ga go šere yeo e lemogilwego';

  @override
  String get noCandidatesBody =>
      'Ga re a kgona go lemoga šere seswantšhong se. Leka seswantšho se se bonagalago gabotse, goba o tsenye ticker ka seatla.';

  @override
  String get whatWeSaw => 'Seo re se bonego';

  @override
  String get chooseCandidateTitle => 'O be o bolela šere efe?';

  @override
  String confidencePercent(int percent) {
    return 'Bonnete: $percent%';
  }

  @override
  String get settings => 'Dipeakanyo';

  @override
  String get language => 'Polelo';

  @override
  String get systemLanguage => 'Tlwaelo ya sistemo';

  @override
  String get about => 'Mabapi';

  @override
  String get disclaimer =>
      'App ye e fa tshedimošo fela gomme ga se keletšo ya peeletšo. Data e ka diega goba ya se nepagale.';

  @override
  String dataSource(String source) {
    return 'Mothopo wa data: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Temogo: $source';
  }

  @override
  String get retry => 'Leka gape';

  @override
  String get cancel => 'Khansela';

  @override
  String get ok => 'Go lokile';

  @override
  String get close => 'Tswalela';

  @override
  String get errorGeneric => 'Go na le seo se sa sepelago gabotse.';

  @override
  String get errorSectionUnavailable => 'Karolo ye ga e a kgona go laišwa.';

  @override
  String get notAvailable => 'ga e gona';

  @override
  String get sectionIdentity => 'Boitsebišo';

  @override
  String get sectionPrice => 'Theko';

  @override
  String get sectionValuation => 'Tekanyetšo ya boleng';

  @override
  String get sectionFinancials => 'Tshedimošo ya ditšhelete';

  @override
  String get sectionDividend => 'Dividende';

  @override
  String get sectionProfile => 'Profaele ya khamphani';

  @override
  String get sectionAnalysts => 'Ditekanyetšo tša basekaseki';

  @override
  String get sectionNews => 'Ditaba';

  @override
  String get sectionRecognition => 'Dintlha tša temogo';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Mmaraka wa dišere';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Tšhelete';

  @override
  String get labelCountry => 'Naga';

  @override
  String get labelIndustry => 'Intasteri';

  @override
  String get labelSector => 'Lekala';

  @override
  String get labelWebsite => 'Weposaete';

  @override
  String get labelIpoDate => 'Letšatšikgwedi la IPO';

  @override
  String get labelMarketCap => 'Boleng bja mmaraka';

  @override
  String get labelSharesOutstanding => 'Dišere tše di ntšhitšwego';

  @override
  String get labelEmployees => 'Bašomi';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Ntlokgolo';

  @override
  String get labelDescription => 'Tlhaloso';

  @override
  String get labelLastPrice => 'Theko ya mafelelo';

  @override
  String get labelChange => 'Phetogo';

  @override
  String get labelOpen => 'Theko ya go bula';

  @override
  String get labelDayHigh => 'Ya godimo ya letšatši';

  @override
  String get labelDayLow => 'Ya fase ya letšatši';

  @override
  String get labelPreviousClose => 'Theko ya go tswalela ya peleng';

  @override
  String get labelWeek52High => 'Ya godimo ya dibeke tše 52';

  @override
  String get labelWeek52Low => 'Ya fase ya dibeke tše 52';

  @override
  String get labelAverageVolume10d => 'Bolumo bja magareng (matšatši a 10)';

  @override
  String updatedAt(String time) {
    return 'E mpshafaditšwe: $time';
  }

  @override
  String get labelPeTrailing => 'P/E (ya go feta)';

  @override
  String get labelPeForward => 'P/E (ye e letetšwego)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / phallo ya tšhelete ye e lokologilego';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Letseno (TTM)';

  @override
  String get labelNetIncomeTtm => 'Poelo ya neto (TTM)';

  @override
  String get labelGrossMargin => 'Moedi wa poelo ka moka';

  @override
  String get labelOperatingMargin => 'Moedi wa poelo ya tšhomo';

  @override
  String get labelNetMargin => 'Moedi wa poelo ya neto';

  @override
  String get labelRoe => 'Poelo go ekhwithi';

  @override
  String get labelRoa => 'Poelo go dithoto';

  @override
  String get labelDebtToEquity => 'Sekoloto / ekhwithi';

  @override
  String get labelCurrentRatio => 'Current ratio';

  @override
  String get labelRevenueGrowth => 'Kgolo ya letseno (YoY)';

  @override
  String get labelEpsGrowth => 'Kgolo ya EPS (YoY)';

  @override
  String get labelDividendYield => 'Poelo ya dividende';

  @override
  String get labelDividendPerShare => 'Dividende ka šere';

  @override
  String get labelPayoutRatio => 'Tekanyo ya tefo';

  @override
  String get labelConsensus => 'Kwano';

  @override
  String get ratingStrongBuy => 'Reka kudu';

  @override
  String get ratingBuy => 'Reka';

  @override
  String get ratingHold => 'Swara';

  @override
  String get ratingSell => 'Rekiša';

  @override
  String get ratingStrongSell => 'Rekiša kudu';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'basekaseki ba $count',
      one: 'mosekaseki o 1',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Paka: $period';
  }

  @override
  String get noNews => 'Ga go na ditaba tša morago bjale.';

  @override
  String get openArticle => 'Bula sehlogo';

  @override
  String get openLinkFailed => 'Kgokagano ga e a kgona go bulwa.';

  @override
  String get recognitionSummary => 'Kakaretšo';

  @override
  String get recognitionEvidence => 'Lebaka leo re naganago bjalo';

  @override
  String get recognitionRawText => 'Sengwalwa seo se badilwego seswantšhong';

  @override
  String get errMissingAnthropicKey =>
      'Temogo ya diswantšho ga e a beakanywa (ga go ANTHROPIC_API_KEY). Tsenya ticker ka seatla.';

  @override
  String get errRecognitionUnreachable =>
      'Ga go kgonege go fihlelela tirelo ya temogo. Lekola kgokagano ya gago ya inthanete.';

  @override
  String errRecognitionHttp(String status) {
    return 'Tirelo ya temogo e bušitše phošo (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Tirelo ya temogo ga e a kgona go šoma seswantšho se.';

  @override
  String get errRecognitionTruncated =>
      'Karabo ya temogo e kgaogile. Hle leka gape.';

  @override
  String get errRecognitionBadResponse =>
      'Karabo yeo e sa letelwago go tšwa tirelong ya temogo.';

  @override
  String get errRecognitionEmpty =>
      'Tirelo ya temogo e bušitše karabo ye e se nago selo.';

  @override
  String get errMissingFinnhubKey =>
      'Data ya mmaraka ga e a beakanywa (ga go FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Ga go kgonege go fihlelela tirelo ya data ya mmaraka. Lekola kgokagano ya gago ya inthanete.';

  @override
  String get errMarketRateLimited =>
      'Dikgopelo tše dintši kudu go tirelo ya data ya mmaraka. Hle leta motsotso.';

  @override
  String errMarketHttp(String status) {
    return 'Tirelo ya data ya mmaraka e bušitše phošo (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Karabo yeo e sa letelwago go tšwa tirelong ya data ya mmaraka.';

  @override
  String errNoQuote(String symbol) {
    return 'Ga go data ya theko yeo e hweditšwego ya $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Ga go profaele ya khamphani yeo e hweditšwego ya $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Mokgwa wa pontšho o thekga $symbols fela. Oketša FINNHUB_API_KEY go hwetša data ya nako ya bjale.';
  }

  @override
  String errUnknown(String detail) {
    return 'Go na le seo se sa sepelago gabotse: $detail';
  }

  @override
  String get newSearch => 'Nyakišišo ye mpsha';

  @override
  String get recentSearches => 'Tša morago bjale';

  @override
  String get noRecentSearches => 'Ga go na dinyakišišo tša morago bjale.';

  @override
  String get clearRecent => 'Phumola tša morago bjale';

  @override
  String get greeting => 'Re lebelele šere efe?';

  @override
  String get searchHint => 'Ticker goba leina la khamphani';

  @override
  String get attachImage => 'Kgomaretša seswantšho';

  @override
  String get searchResultsTitle => 'Dipoelo tša nyakišišo';

  @override
  String errNoResults(String query) {
    return 'Ga go dišere tšeo di hweditšwego tša “$query”.';
  }

  @override
  String get quickBarHint => 'Ngwala ticker goba leina la khamphani…';

  @override
  String get openFullWindow => 'Bula lefasetere';

  @override
  String hotkeyHint(String shortcut) {
    return 'Tobetša $shortcut kae le kae go bitša WhatStock.';
  }

  @override
  String get trayOpen => 'Bula WhatStock';

  @override
  String get trayQuickSearch => 'Nyakišišo ya ka pela';

  @override
  String get trayQuit => 'Tšwa';

  @override
  String get appearance => 'Ponagalo';

  @override
  String get themeSystem => 'Sistemo';

  @override
  String get themeDark => 'Leswiswi';

  @override
  String get themeLight => 'Seetša';

  @override
  String get back => 'Morago';

  @override
  String get aiSectionTitle => 'Tshekatsheko ya AI';

  @override
  String get aiIntro =>
      'Kakaretšo ye e tletšego ye e ngwadilwego ke AI: kakaretšo ya ditaba tša morago bjale, kgwebo, maatla, dikotsi le mabaka ao a utilwego, tekanyetšo ya boleng, ponelopele ya theko ka maemo go tšwa mahlakoreng a monagano, a setšhaba, a thekniki le a ekonomi ka kakaretšo, le seo o swanetšego go se šetša.';

  @override
  String get aiGenerate => 'Tšweletša tshekatsheko';

  @override
  String get aiRegenerate => 'Tšweletša gape';

  @override
  String get aiGenerating =>
      'E lokišetša tshekatsheko… se se ka tšea motsotso o tee goba e mebedi.';

  @override
  String get aiSources => 'Methopo';

  @override
  String aiGeneratedAt(String time) {
    return 'E tšweleditšwe: $time';
  }

  @override
  String get aiDisclaimer =>
      'Tshekatsheko ye e tšweleditšwego ke AI go ya ka data ya setšhaba le ditaba tša morago bjale. E ka ba le diphošo goba ya ba ya kgale, gomme ga se keletšo ya peeletšo.';

  @override
  String get errAiNotConfigured =>
      'Tshekatsheko ya AI ga e a beakanywa (ga go ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Ga go kgonege go fihlelela tirelo ya AI. Lekola kgokagano ya gago ya inthanete.';

  @override
  String errAiHttp(String status) {
    return 'Tirelo ya AI e bušitše phošo (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Tirelo ya AI e ganne go sekaseka šere ye.';

  @override
  String get errAiBadResponse =>
      'Karabo yeo e sa letelwago go tšwa tirelong ya AI.';

  @override
  String get sectionChart => 'Tšhate ya theko';

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
      'Histori ya theko ga e hwetšagale go tšwa mothopong wa data wa bjale.';

  @override
  String get sectionStatements => 'Dipego tša ditšhelete (tša ngwaga)';

  @override
  String get labelFiscalYear => 'Ngwaga wa ditšhelete';

  @override
  String get labelRevenue => 'Letseno';

  @override
  String get labelNetIncome => 'Poelo ya neto';

  @override
  String get labelTotalAssets => 'Dithoto ka moka';

  @override
  String get labelTotalLiabilities => 'Dikoloto ka moka';

  @override
  String get labelEquity => 'Ekhwithi ya beng ba dišere';

  @override
  String get labelOperatingCashFlow => 'Phallo ya tšhelete ya tšhomo';

  @override
  String get statementsUnavailable =>
      'Dipego tša ditšhelete tšeo di begilwego ga di hwetšagale bakeng sa šere ye.';

  @override
  String get launchAtLogin => 'Thoma ge o tsena';

  @override
  String get hotkeyLabel => 'Tsela ye kopana ya kakaretšo';

  @override
  String get hotkeyRecordHint =>
      'Kgotla mo, ke moka o tobetše motswako o moswa wa dinotlelo';

  @override
  String get hotkeyReset => 'Bušetša go tlwaelo';

  @override
  String get pasteImage =>
      'Kgomaretša seswantšho go tšwa go letlapa la go kopiša';

  @override
  String get errClipboardNoImage =>
      'Ga go na seswantšho letlapeng la go kopiša.';

  @override
  String get favorites => 'Tše di ratwago';

  @override
  String get addToFavorites => 'Oketša go tše di ratwago';

  @override
  String get removeFromFavorites => 'Tloša go tše di ratwago';

  @override
  String get noFavorites =>
      'Ga go na tše di ratwago ga bjale. Kgotla naledi go šere go e oketša.';

  @override
  String get displayCurrency => 'Tšhelete ya go bontšha';

  @override
  String get displayCurrencyNone => 'Tšhelete ya šere fela';

  @override
  String labelConverted(String currency) {
    return '≈ ka $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Tekanyo: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Dimpshafatšo';

  @override
  String currentVersion(String version) {
    return 'Phetolelo $version';
  }

  @override
  String get autoUpdate => 'Tsenya dimpshafatšo ka go itiragalela';

  @override
  String get checkForUpdates => 'Lekola dimpshafatšo';

  @override
  String get updateChecking => 'E lekola dimpshafatšo…';

  @override
  String get updateUpToDate => 'O šomiša phetolelo ya morago bjale.';

  @override
  String updateAvailable(String version) {
    return 'Phetolelo $version e a hwetšagala.';
  }

  @override
  String get updateDownloading => 'E laolla mpshafatšo ka morago…';

  @override
  String get updateDownloaded =>
      'Mpshafatšo e loketše. Thoma gape go e tsenya.';

  @override
  String get updateNow => 'Mpshafatša';

  @override
  String get restartNow => 'Thoma gape';

  @override
  String get updatesViaStore =>
      'Dimpshafatšo di tla ka go itiragalela ka lebenkele la di-app.';

  @override
  String get updateCheckFailed => 'Go be go sa kgonege go lekola dimpshafatšo.';

  @override
  String get subscription => 'Ngwadišo';

  @override
  String get planTrial => 'Teko';

  @override
  String get planNormal => 'Tlwaelegilego';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Ga go leano leo le šomago';

  @override
  String planAnalysesPerMonth(int count) {
    return 'Ditshekatsheko tše $count ka kgwedi';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Teko ya mahala ya matšatši a $days ka ditshekatsheko tše $count';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Go šetše matšatši a $days a teko',
      one: 'Go šetše letšatši le 1 la teko',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Teko ya gago ya mahala e fedile. Kgetha leano go tšwela pele o sekaseka.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Go šetše ditshekatsheko tše $remaining go tše $total pakeng ye';
  }

  @override
  String extraCredits(int count) {
    return 'Ditshekatsheko tše $count tša tlaleletšo';
  }

  @override
  String renewsOn(String date) {
    return 'E mpshafatšwa ka $date';
  }

  @override
  String get choosePlan => 'Kgetha leano';

  @override
  String get currentPlan => 'Leano la bjale';

  @override
  String get subscribe => 'Ingwadiše';

  @override
  String get perMonth => '/ kgwedi';

  @override
  String get extraPacksTitle =>
      'O nyaka tše dingwe? Reka ditshekatsheko tša tlaleletšo';

  @override
  String get extraPacksHint =>
      'Ditshekatsheko tša tlaleletšo ga di fele gomme di šomišwa ka morago ga kabelo ya gago ya kgwedi.';

  @override
  String get buy => 'Reka';

  @override
  String get restorePurchases => 'Bušetša tše o di rekilego';

  @override
  String get manageSubscription => 'Laola ngwadišo';

  @override
  String get purchaseSuccess => 'Re a leboga! Seo o se rekilego se a šoma.';

  @override
  String get purchasePending => 'Go reka go sa emetše…';

  @override
  String get purchaseFailed => 'Go reka go be go sa kgone go phethwa.';

  @override
  String get purchaseCanceled => 'Go reka go khanseditšwe.';

  @override
  String get billingUnavailable =>
      'Go reka ga go eso hwetšagale sethaleng se. Ingwadiše ka mogala wa gago goba Mac; leano la gago le tla šoma sedirišweng se sengwe le se sengwe.';

  @override
  String get errQuotaExceeded =>
      'Ga o na ditshekatsheko tše di šetšego pakeng ye. Godiša leano la gago goba o reke ditshekatsheko tša tlaleletšo.';

  @override
  String get errTrialExpired =>
      'Teko ya gago ya mahala e fedile. Kgetha leano go tšwela pele.';

  @override
  String get errNoPlan => 'Tshekatsheko ya AI e nyaka leano leo le šomago.';

  @override
  String get viewPlans => 'Bona maano';

  @override
  String get usageTitle => 'Tšhomišo';

  @override
  String get demoPurchaseNote =>
      'Tefo ya pontšho: go reka sethaleng se ke go ekiša fela.';

  @override
  String get mostPopular => 'Ye e ratwago kudu';

  @override
  String get bestValue => 'Boleng bjo bokaone';

  @override
  String get planFeaturesCommon =>
      'Temogo ya diswantšho, data ya nako ya bjale, ditšhate, tše di ratwago le dipolelo ka moka tše 120 di akaretšwa leanong le lengwe le le lengwe. Kabelo e akaretša ditshekatsheko tša AI.';

  @override
  String get searchLanguages => 'Nyaka dipolelo…';

  @override
  String get noLanguageMatch => 'Ga go polelo ye e swanago.';

  @override
  String get aiSettings => 'Tshekatsheko ya AI';

  @override
  String get aiLength => 'Botelele';

  @override
  String get aiDepthBrief => 'Kopana';

  @override
  String get aiDepthStandard => 'Ya tlwaelo';

  @override
  String get aiDepthDeep => 'Ye e tseneletšego';

  @override
  String get aiDepthBriefDesc => 'Tše bohlokwa, ka pela.';

  @override
  String get aiDepthStandardDesc => 'Pego ye e feletšego ka dikarolo ka moka.';

  @override
  String get aiDepthDeepDesc =>
      'Dinyakišišo tše dintši tša wepe, papetšo le dikhamphani tše di swanago le dintlha tše di tseneletšego.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Mo e ka bago mantšu a $min–$max';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'e šomiša ditshekatsheko tše $count',
      one: 'e šomiša tshekatsheko e 1',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Maemo a mmadi';

  @override
  String get aiReaderBeginner => 'Mothomi';

  @override
  String get aiReaderExperienced => 'Wa maitemogelo';

  @override
  String get aiReaderBeginnerDesc =>
      'Polelo ye bonolo; lereo le lengwe le le lengwe la thekniki le a hlalošwa.';

  @override
  String get aiReaderExperiencedDesc =>
      'Sengwalwa se se tletšego ka mareo a tlwaelo a ditšhelete.';

  @override
  String get aiCounterArgument => 'Kganetšo ye maatla kudu';

  @override
  String get aiCounterArgumentDesc =>
      'Kakaretšo ka mehla e fetša ka kganetšo ye maatla kudu malebana le phetho ya yona.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Go fihla go dinyakišišo tše $count tša wepe ka tshekatsheko ka leano la gago',
      one: 'Go fihla go nyakišišo e 1 ya wepe ka tshekatsheko ka leano la gago',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Dinyakišišo tša wepe ka botelele bja tlwaelo go ya ka leano: Tlwaelegilego $normal, Pro $pro, Max $max, Ultra $ultra. Kopana: 2 ka fase, Ye e tseneletšego: 2 go feta.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'go fihla go dinyakišišo tše $count tša wepe',
      one: 'go fihla go nyakišišo e 1 ya wepe',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dinyakišišo tše $count tša wepe ka tshekatsheko',
      one: 'Nyakišišo e 1 ya wepe ka tshekatsheko',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Botelele bjo bo nyaka ditshekatsheko tše $needed, eupša go šetše tše $left fela. Kgetha botelele bjo bokopana go Dipeakanyo goba o hwetše ditshekatsheko tše dingwe.';
  }

  @override
  String get outlookMarketMood => 'Maikutlo a mmaraka';

  @override
  String get moodVeryPessimistic => 'Kholofelo ye nnyane kudu';

  @override
  String get moodPessimistic => 'Kholofelo ye nnyane';

  @override
  String get moodNeutral => 'Magareng';

  @override
  String get moodOptimistic => 'Kholofelo';

  @override
  String get moodVeryOptimistic => 'Kholofelo ye kgolo';

  @override
  String get scenarioBull => 'Maemo a go rotoga';

  @override
  String get scenarioBase => 'Maemo a motheo';

  @override
  String get scenarioBear => 'Maemo a go theoga';

  @override
  String outlookCurrentPrice(String price) {
    return 'Theko ya bjale: $price';
  }

  @override
  String get outlookKeyLevels => 'Maemo a bohlokwa';

  @override
  String get keyLevelSupport => 'Thekgo';

  @override
  String get keyLevelResistance => 'Kganetšo';

  @override
  String get keyLevelAnchor => 'Kankere';

  @override
  String get upcomingEvents => 'Ditiragalo tše di tlago';

  @override
  String get outlookChartNote =>
      'Mehlakanelo ya tšhupo; dikgonagalo ke dikakanyo tša kakaretšo, e sego diponelopele.';

  @override
  String get accountTitle => 'Akhaonto';

  @override
  String get signIn => 'Tsena';

  @override
  String get signOut => 'Tšwa';

  @override
  String get notSignedIn => 'Ga o a tsena';

  @override
  String get accountBenefit =>
      'Tsena gore ngwadišo ya gago e šome didirišweng ka moka tša gago.';

  @override
  String get accountSyncedNote =>
      'Ngwadišo ya gago le ditshekatsheko tše di šetšego di a swana sedirišweng se sengwe le se sengwe.';

  @override
  String get signInTitle => 'Tsena go WhatStock';

  @override
  String get emailLabel => 'Aterese ya imeile';

  @override
  String get continueWithEmail => 'Tšwela pele ka imeile';

  @override
  String codeSentTo(String email) {
    return 'Re romile khoutu ya dinomoro tše 6 go $email. E šoma metsotso ye 10.';
  }

  @override
  String get codeLabel => 'Khoutu ya go tsena';

  @override
  String get resendCode => 'Romela khoutu ye mpsha';

  @override
  String get useDifferentEmail => 'Šomiša imeile ye nngwe';

  @override
  String get errInvalidCode => 'Khoutu e fošagetše goba nako ya yona e fedile.';

  @override
  String get errInvalidEmail =>
      'Hle tsenya aterese ya imeile ye e nepagetšego.';

  @override
  String get errSignInFailed =>
      'Go tsena go paletšwe. Lekola kgokagano ya gago gomme o leke gape.';

  @override
  String get checkoutWaiting =>
      'Phetha tefo sebading sa gago. App e tla mpshafala ka go itiragalela ge e fedile.';

  @override
  String get paymentViaStripe =>
      'Tefo ye e bolokegilego sebading sa gago ka Stripe. Khansela nako efe goba efe.';

  @override
  String get paymentViaStore =>
      'O lefišwa ka akhaonto ya gago ya App Store goba Google Play. Khansela nako efe goba efe go dipeakanyo tša lebenkele la gago.';

  @override
  String get keySpace => 'Sekgoba';

  @override
  String get doubleOptionTitle => 'Tobetša Option gabedi';

  @override
  String get doubleOptionSubtitle =>
      'Go tobetša konopo ya Option gabedi ka pela le gona go bitša WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Gore e šome le ka di-app tše dingwe, dumelela WhatStock go Dipeakanyo tša Sistemo → Sephiri le Tšhireletšo → Tlhokomelo ya Tsenyo, ke moka o bule app gape.';

  @override
  String get openSystemSettings => 'Bula Dipeakanyo tša Sistemo';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Tobetša $shortcut goba o tobetše Option gabedi kae le kae go bitša WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Go ka direga kudu';

  @override
  String get longTermToday => 'Lehono';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: 'mengwaga ye $years',
      one: 'ngwaga o 1',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range ka ngwaga';
  }

  @override
  String longTermLikely(String price) {
    return 'go ka direga kudu $price';
  }

  @override
  String get confidenceLow => 'Bonnete bjo bo fasana';

  @override
  String get confidenceMedium => 'Bonnete bja magareng';

  @override
  String get confidenceHigh => 'Bonnete bjo bo phagamego';

  @override
  String get longTermNote =>
      'Mehlakanelo ya nako ye telele e theilwe godimo ga dikakanyo tše di boletšwego gomme e a gola ka nako. Ditheko ga di akaretše dividende. Dikakanyo tša kakaretšo, e sego diponelopele.';

  @override
  String get portfolio => 'Photefolio';

  @override
  String get portfolioEmpty =>
      'Ga go se sengwe mo ga bjale. Bula šere gomme o kgotle “Oketša go photefolio” go latela seo o nago le sona.';

  @override
  String get portfolioLocalNote =>
      'E bolokilwe sedirišweng se fela. Palomoka e fetolwa ka ditekanyo tša tšhupo tša ECB; ditheko di ka diega.';

  @override
  String get addToPortfolio => 'Oketša go photefolio';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Oketša $symbol';
  }

  @override
  String get portfolioQuantity => 'Palo ya dišere';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Theko ka šere ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Letšatšikgwedi la go reka';

  @override
  String get portfolioAdd => 'Oketša';

  @override
  String get portfolioInvalidNumber => 'Tsenya nomoro ye kgolo go feta lefela.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol e okeditšwe go photefolio ya gago.';
  }

  @override
  String get portfolioTotalValue => 'Boleng ka moka';

  @override
  String get portfolioToday => 'Lehono';

  @override
  String get portfolioGainLoss => 'Poelo/tahlegelo';

  @override
  String get portfolioInvested => 'Tše di beeleditšwego';

  @override
  String get portfolioAllocation => 'Kabo';

  @override
  String get portfolioPositions => 'Maemo';

  @override
  String portfolioAvgCost(String price) {
    return 'theko ya magareng $price';
  }

  @override
  String get portfolioYourPosition => 'Boemo bja gago';

  @override
  String get portfolioPurchases => 'Tše di rekilwego';

  @override
  String get portfolioRemove => 'Tloša';

  @override
  String get portfolioExcluded =>
      'Maemo ao a se nago theko goba tekanyo ya phetošo ya tšhelete ga a akaretšwe go palomoka.';

  @override
  String get priceAlerts => 'Ditemošo tša theko';

  @override
  String get setPriceAlert => 'Beakanya temošo ya theko';

  @override
  String alertDialogTitle(String symbol) {
    return 'Temošo ya theko · $symbol';
  }

  @override
  String get alertKindAbove => 'E rotoga go feta';

  @override
  String get alertKindBelow => 'E wela ka fase ga';

  @override
  String get alertKindMove => 'E šikinyega kudu ka letšatši le tee';

  @override
  String alertTargetPrice(String currency) {
    return 'Theko ($currency)';
  }

  @override
  String get alertMovePercent => 'Phetogo ya letšatši (%)';

  @override
  String get alertAlreadyMet => 'Theko e šetše e fetile boemo bjo.';

  @override
  String get alertSave => 'Beakanya temošo';

  @override
  String alertCreated(String symbol) {
    return 'Temošo e beakantšwe: $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Ga go na ditemošo tša theko ga bjale. Bula šere gomme o kgotle tšhipi go beakanya ye nngwe.';

  @override
  String get alertsNote =>
      'Ditemošo di lekolwa metsotso ye 5 ye nngwe le ye nngwe ge WhatStock e šoma. Khomphutheng e dula e šoma bareng ya menyu goba thereing; mogaleng, ga bjale ditemošo di fihla fela ge app e butšwe.';

  @override
  String alertDescAbove(String price) {
    return 'Godimo ga $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Ka fase ga $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Phetogo ya letšatši ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'E thomilwe $date go $price';
  }

  @override
  String get alertRearm => 'Bušetša temošo';

  @override
  String get alertDelete => 'Phumola';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol e rotogetše godimo ga $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol e wetše ka fase ga $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol e šuthile ka $percent lehono';
  }

  @override
  String alertHitBody(String price) {
    return 'Theko ya bjale: $price';
  }

  @override
  String get alertOpen => 'Bula';

  @override
  String get keepInTrayTitle =>
      'Tšwela pele o šoma ge lefasetere le tswaletšwe';

  @override
  String get keepInTraySubtitle =>
      'WhatStock e dula bareng ya menyu goba thereing, gore tsela ye kopana le ditemošo tša theko di tšwele pele di šoma.';

  @override
  String get termsOfUse => 'Mabaka a Tšhomišo';

  @override
  String get privacyPolicy => 'Pholisi ya Sephiri';

  @override
  String get subscriptionLegal =>
      'Dingwadišo di mpshafatšwa ka go itiragalela kgwedi le kgwedi go fihlela o di khansela. Ka go ingwadiša o amogela Mabaka a Tšhomišo le Pholisi ya Sephiri.';

  @override
  String get deleteAccount => 'Phumola akhaonto';

  @override
  String get deleteAccountTitle => 'Phumola akhaonto ya gago?';

  @override
  String get deleteAccountBody =>
      'Akhaonto ya gago le tšohle tše di bolokilwego go seva ya rena (imeile, kabelo, tšhomišo) di tla phumolwa ka mo go sa felego, gomme ditshekatsheko tše di sa šomišwago di tla lahlega. Ngwadišo ye e lefetšwego sebading e khanselwa gateetee; ngwadišo ya App Store goba Google Play e swanetše go khanselwa go dipeakanyo tša lebenkele.';

  @override
  String get deleteLocalData =>
      'Phumola le data ye e lego sedirišweng se (photefolio, ditemošo, tše di ratwago, histori, ditshekatsheko tše di bolokilwego)';

  @override
  String get deleteAccountConfirm => 'Phumola ka mo go sa felego';

  @override
  String get accountDeleted => 'Akhaonto ya gago e phumotšwe.';

  @override
  String get errDeleteAccount =>
      'Akhaonto ga e a kgona go phumolwa. Lekola kgokagano ya gago gomme o leke gape.';

  @override
  String get aiTrialBriefNote =>
      'Ditshekatsheko tša teko di kopana gomme di dirwa ka mmotlolo wa AI wo o akgofago. Ka leano o hwetša AI ya rena ye e nago le bokgoni bjo bogolo, dinyakišišo tše dintši tša wepe, le botelele bja Ya tlwaelo le Ye e tseneletšego.';

  @override
  String get billingMonthly => 'Ka kgwedi';

  @override
  String get billingYearly => 'Ka ngwaga';

  @override
  String get yearlyDiscount => 'Dikgwedi tše 2 mahala';

  @override
  String get perYear => '/ ngwaga';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price ka kgwedi';
  }

  @override
  String get subscriptionLegalYearly =>
      'Dingwadišo tša ngwaga di mpshafatšwa ka go itiragalela ngwaga le ngwaga go fihlela o di khansela. Ka go ingwadiša o amogela Mabaka a Tšhomišo le Pholisi ya Sephiri.';

  @override
  String get myAnalyses => 'Ditshekatsheko tša ka';

  @override
  String get navAlerts => 'Ditemošo';

  @override
  String get inviteTitle => 'Ponelopele ye e tswaletšwego';

  @override
  String get inviteBody =>
      'Gabjale WhatStock e hwetšagala ka taletšo fela. Tsenya khoutu ya taletšo yeo o e amogetšego.';

  @override
  String get inviteCodeLabel => 'Khoutu ya taletšo';

  @override
  String get inviteContinue => 'Tšwela pele';

  @override
  String get inviteInvalid => 'Khoutu ye ya taletšo ga e šome.';

  @override
  String get inviteExpired =>
      'Taletšo ye e fedile. Kgopela motho yo a go laleditšego khoutu ye mpsha.';

  @override
  String get inviteDeviceLimit =>
      'Khoutu ye ya taletšo e šetše e šomišwa go palo ye kgolo kudu ya didirišwa.';

  @override
  String get previewConfidential => 'Ponelopele ya sephiri';

  @override
  String get errPreviewDailyLimit =>
      'Moedi wa dinyakišišo tša lehono wa ponelopele ye o fihleletšwe. Leka gape gosasa.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'diiri tše $count tše di fetilego',
      one: 'iri e 1 ye e fetilego',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'matšatši a $count a a fetilego',
      one: 'letšatši le 1 le le fetilego',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Mpshafatša tshekatsheko ye?';

  @override
  String staleBody(String age) {
    return 'E dirilwe $age. Go tloga ka nako yeo, ditheko, ditaba le dipoelo di ka be di fetogile.';
  }

  @override
  String get staleKeep => 'Bontšha ya pele';

  @override
  String get staleRefresh => 'Dira ye mpsha';

  @override
  String seeAll(int count) {
    return 'Bona tšohle ($count)';
  }

  @override
  String get searchAnalyses => 'Nyaka ditshekatshekong tša gago';

  @override
  String get deleteAnalysis => 'Phumola';

  @override
  String analysisDeleted(String symbol) {
    return 'Tshekatsheko ya $symbol e phumotšwe';
  }

  @override
  String get keyLevelAlertHint =>
      'Kgotla maemo go hwetša temošo ge theko e fihla go ona.';

  @override
  String get shareAnalysisTitle => 'Abelana tshekatsheko';

  @override
  String get shareAsImage => 'Abelana bjalo ka seswantšho';

  @override
  String get shareAsText => 'Abelana bjalo ka sengwalwa';

  @override
  String get shareCardFooter => 'E dirilwe ka WhatStock';

  @override
  String get shareCardDisclaimer =>
      'Tshekatsheko ya AI · ga se keletšo ya peeletšo';

  @override
  String get referralTitle => 'Laletša bagwera';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ditshekatsheko tše $count tša tlaleletšo',
      one: 'tshekatsheko e 1 ya tlaleletšo',
    );
    return 'Abelana khoutu ya gago. Mogwera wa gago o hwetša $_temp0 gona bjale, gomme le wena o hwetša tše di swanago ka morago ga tshekatsheko ya gagwe ya mathomo.';
  }

  @override
  String get referralYourCode => 'Khoutu ya gago';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Ba laleditšwego: $invited · Ba putseditšwego: $rewarded';
  }

  @override
  String get referralHaveCode => 'Na o na le khoutu go tšwa go mogwera?';

  @override
  String get referralRedeem => 'Šomiša';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Go okeditšwe ditshekatsheko tše $count tša tlaleletšo. O amogetšwe!',
      one: 'Go okeditšwe tshekatsheko e 1 ya tlaleletšo. O amogetšwe!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Khoutu ye ga e gona. E hlahlobe gomme o leke gape.';

  @override
  String get referralErrOwn => 'O ka se šomiše khoutu ya gago.';

  @override
  String get referralErrAlready => 'O šetše o šomišitše khoutu ya mogwera.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ditshekatsheko tše $count tša tlaleletšo',
      one: 'tshekatsheko e 1 ya tlaleletšo',
    );
    return 'Ke sekaseka dišere ka WhatStock: tšea seswantšho sa šere gomme AI e a e hlaloša. Ka khoutu ya ka $code o hwetša $_temp0.';
  }

  @override
  String get referralCopied => 'Khoutu e kopilwe';

  @override
  String get onboardTitle1 => 'Tšea seswantšho sa šere';

  @override
  String get onboardBody1 =>
      'Sekirini sa app ya borokara, kuranta goba logo ya khamphani di lekane: WhatStock e lemoga šere gomme e go bontšha theko ya yona, tšhate le dipalo tše bohlokwa.';

  @override
  String get onboardTitle2 => 'E kwešiše ka metsotso e se mekae';

  @override
  String get onboardBody2 =>
      'Tshekatsheko ya AI e hlaloša seo se šuthišago šere, dikotsi, boleng bja yona le maemo a mararo a gore theko e ka ya kae – ka methopo le ka polelo ya gago.';

  @override
  String get onboardTitle3 => 'Dula o tseba tšohle';

  @override
  String get onboardBody3 =>
      'Tše di ratwago, photefolio ya gago le ditemošo tša theko di go tsebiša ka mehla. Ditshekatsheko tša gago di dula sedirišweng sa gago, di loketše go bulwa gape.';

  @override
  String get onboardNext => 'Latela';

  @override
  String get onboardStart => 'Thoma';

  @override
  String get onboardSkip => 'Tlola';

  @override
  String changesTitle(String date) {
    return 'Go tloga ka tshekatsheko ya pele ($date)';
  }

  @override
  String get changesPrice => 'Theko';

  @override
  String get changesNoMajor => 'Ponelopele ga se ya fetoga kudu.';

  @override
  String get changesPreviousSummary => 'Kakaretšo ya pele';

  @override
  String get telemetryTitle => 'Thuša go kaonafatša WhatStock';

  @override
  String get telemetryBody =>
      'Abelana dipalopalo tša tšhomišo le dipego tša go wa ka ntle le leina: ke dikarolo dife tšeo di šomišwago le gore go senyegile eng. Ga go mohla re abelanago dišere tša gago, ditshekatsheko goba tshedimošo ya gago ya sephiri. O ka fetoša se nako efe goba efe go Dipeakanyo.';

  @override
  String get telemetryAllow => 'Dumelela';

  @override
  String get telemetryDecline => 'Aowa, ke a leboga';

  @override
  String get telemetrySetting =>
      'Dipalopalo tša go hloka leina le dipego tša go wa';

  @override
  String get telemetrySettingHint =>
      'Gore dikarolo di šomišwa gakae le dipego tša diphošo, ka ntle le tshedimošo ya sephiri goba diteng tša dinyakišišo le ditshekatsheko tša gago.';

  @override
  String get askButton => 'Botšiša ka tshekatsheko ye';

  @override
  String askTitle(String symbol) {
    return 'Dipotšišo ka $symbol';
  }

  @override
  String get askIntro =>
      'Botšiša se sengwe le se sengwe ka tshekatsheko: seo kotsi e itšego e se bolelago, seo se ka fetošago tebelelo, le ka moo palo e itšego e hweditšwego ka gona. Dikarabo di theilwe godimo ga tshekatsheko ye gomme ga se keletšo ya peeletšo.';

  @override
  String get askHint => 'Botšiša potšišo…';

  @override
  String get askSend => 'Romela';

  @override
  String get askThinking => 'Ke a nagana…';

  @override
  String get askSuggest1 => 'Kotsi ye kgolo kudu ke efe?';

  @override
  String get askSuggest2 => 'Ke eng seo se ka fetošago tebelelo?';

  @override
  String get askSuggest3 => 'E hlaloše ka mantšu a bonolo';

  @override
  String get askMaxReached =>
      'Yeo e be e le potšišo ya mafelelo ya tshekatsheko ye. Tšweletša tshekatsheko ye mpsha go botšiša tše dingwe.';

  @override
  String get errAskLimit =>
      'O fihleletše moedi wa dipotšišo wa lehono. Leka gape gosasa.';

  @override
  String get eventTomorrow => 'Tomorrow';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'in $days days',
      one: 'in 1 day',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Quarterly results';

  @override
  String get eventBeforeOpen => 'before the open';

  @override
  String get eventAfterClose => 'after the close';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS estimate: $value';
  }

  @override
  String get eventFromAnalysis => 'From your analysis';

  @override
  String get eventsHint =>
      'Results dates of your favorites and portfolio stocks for the next 90 days, and the dated events your analyses flagged.';

  @override
  String get eventsEmpty =>
      'No dated events in the next 90 days. Add favorites or portfolio stocks to see their results dates here.';
}
