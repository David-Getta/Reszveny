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
  String get eventTomorrow => 'Gosasa';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'ka matšatši a $days',
      one: 'ka letšatši le 1',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Dipoelo tša kotara';

  @override
  String get eventBeforeOpen => 'pele mmaraka o bulwa';

  @override
  String get eventAfterClose => 'ka morago ga ge mmaraka o tswalelwa';

  @override
  String eventEpsEstimate(String value) {
    return 'Kakanyo ya EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Go tšwa tshekatshekong ya gago';

  @override
  String get eventsHint =>
      'Matšatši a dipoelo tša tše o di ratago le dišere tša photefolio ya gago mo matšatšing a 90 a a tlago, le ditiragalo tše di nago le matšatši tšeo ditshekatsheko tša gago di di supilego.';

  @override
  String get eventsEmpty =>
      'Ga go na ditiragalo tše di nago le matšatši mo matšatšing a 90 a a tlago. Oketša tše di ratwago goba dišere tša photefolio go bona matšatši a dipoelo tša tšona mo.';

  @override
  String get compareTitle => 'Bapetša';

  @override
  String get compareAdd => 'Oketša šere';

  @override
  String get compareRemove => 'Tloša';

  @override
  String get compareTickerHint => 'Ticker, mohlala MSFT';

  @override
  String get compareHint =>
      'Dipalo tše bohlokwa ka thoko ga tše dingwe; boleng bjo bokaone mothalading o mongwe le o mongwe bo gateletšwe. Ditšhelete di ka tšhelete ya šere ye nngwe le ye nngwe.';

  @override
  String get compareNoAnalysis => 'Ga go na tshekatsheko ga bjale';

  @override
  String get portfolioDividends => 'Dividende ya ngwaga';

  @override
  String portfolioDividendYield(String percent) {
    return 'Poelo ya $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Dividende ye e letetšwego ya ngwaga e theilwe godimo ga dividende ye e lefilwego dikgweding tše 12 tša go feta; ditefelo tša ka moso ga di tiišetšwe.';

  @override
  String positionDividend(String amount) {
    return 'Dividende: $amount ka ngwaga';
  }

  @override
  String get chartAvgCost => 'Theko ya gago';

  @override
  String get chartAlertLevel => 'Temošo';

  @override
  String get marketsToday => 'Mebaraka lehono';

  @override
  String get notesTitle => 'Dintlha tša ka';

  @override
  String get notesHint =>
      'Ke ka baka la eng o e rekile, o šetše eng, ke eng seo se ka go dirago gore o e rekiše?';

  @override
  String get notesInfo =>
      'E bolokilwe sedirišweng se fela. Tshekatsheko ya AI e ela hloko dintlha tša gago.';

  @override
  String notesSaved(String date) {
    return 'E bolokilwe: $date';
  }

  @override
  String get peersTitle => 'Dikhamphani tše di swanago';

  @override
  String get portfolioExport => 'Romela ka ntle bjalo ka CSV';

  @override
  String get portfolioImport => 'Tsenya go tšwa go CSV';

  @override
  String get portfolioImportHint =>
      'Kgomaretša theko e tee mothalong o mongwe le o mongwe: leswao la ticker, bontši, tefelo, tšhelete, letšatšikgwedi (YYYY-MM-DD). Dikholomo di ka arogantšwa ka khoma, semikholone goba tab; mothalo wa dihlogo ke boikgethelo.';

  @override
  String get portfolioImportButton => 'Tsenya';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Go okeditšwe ditheko tše $count',
      one: 'Go okeditšwe theko e 1',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Go tlogetšwe methalo ye $count',
      one: 'Go tlogetšwe mothalo o 1',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Photefolio, tše di ratwago, ditemošo tša theko le dintlha di sinkronaišwa didirišweng tša gago ka moka.';

  @override
  String syncLast(String time) {
    return 'Go sinkronaiša ga mafelelo: $time';
  }

  @override
  String get syncNow => 'Sinkronaiša bjale';

  @override
  String get syncFailed =>
      'Go sinkronaiša go paletšwe. Go tla lekwa gape ka go itiriša.';

  @override
  String get alertEmailTitle => 'Imeile ge temošo e tsoga';

  @override
  String get alertEmailOn =>
      'Re lekola ditemošo tša gago metsotso ye mengwe le ye mengwe ye mmalwa gomme re go romela imeile, le ge app e tswaletšwe.';

  @override
  String get alertEmailSignIn =>
      'Tsena ka imeile ya gago go Dipeakanyo gore o hwetše ditemošo ka imeile, le ge app e tswaletšwe.';

  @override
  String get portfolioHistory => 'Boleng go ya ka nako';

  @override
  String get portfolioReviewTitle => 'Tshekatsheko ya photefolio ya AI';

  @override
  String get portfolioReviewIntro =>
      'AI e lebelela photefolio ya gago ka moka: go kgobokanywa ga tšhelete lefelong le tee, go ithekga ka makala le ditšhelete, dikotsi tšeo dišere tša gago di di abelanago, le dipoelo tša dišere. E šomiša tshekatsheko e 1.';

  @override
  String get portfolioReviewButton => 'Sekaseka photefolio ya ka';

  @override
  String get portfolioReviewAgain => 'Sekaseka gape';

  @override
  String get portfolioReviewWorking => 'Re sekaseka photefolio ya gago…';

  @override
  String get digestTitle => 'Kakaretšo ya beke ka imeile';

  @override
  String get digestHint =>
      'Mošupologo o mongwe le o mongwe: ka fao tše o di ratago le photefolio ya gago di sepetšego ka gona bekeng ye e fetilego, le matšatši a dipoelo a a tlago.';

  @override
  String get benchmarkTitle => 'Bapetšwa le S&P 500';

  @override
  String get benchmarkYours => 'Dithekgo tša gago';

  @override
  String get benchmarkIndex => 'Tšhelete ye e swanago go S&P 500';

  @override
  String benchmarkAhead(String points) {
    return 'Bokaone go feta index ka dintlha tša phesente tše $points';
  }

  @override
  String benchmarkBehind(String points) {
    return 'Morago ga index ka dintlha tša phesente tše $points';
  }

  @override
  String get benchmarkHint =>
      'Bjalo ka ge eka theko ye nngwe le ye nngwe e beeleditšwe ka letšatši leo go S&P 500 index fund. Ga go akaretšwe letseno la dišere; dipoelo tša nakong ye e fetilego ga di bolele tša ka moso.';

  @override
  String get portfolioSell => 'Rekiša';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Rekiša $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Theko ya go rekiša ka šere ($currency)';
  }

  @override
  String get portfolioSellDate => 'Letšatšikgwedi la go rekiša';

  @override
  String get portfolioSellAll => 'Ka moka';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'O na le $quantity';
  }

  @override
  String get portfolioSold => 'E rekišitšwe';

  @override
  String get portfolioRealized => 'E phethagetšego';

  @override
  String get portfolioClosed => 'Maemo a tswaletšwego';

  @override
  String get portfolioClosedNote => 'Dišere ka moka di rekišitšwe';

  @override
  String get portfolioTransactions => 'Dithekišano';

  @override
  String get portfolioRealizedByYear => 'Poelo ye e phethagetšego ka ngwaga';

  @override
  String get portfolioRealizedHint =>
      'Dithekišo di bapetšwa pele le direko tša gago tša kgale kudu (FIFO), di fetošwa ka sekala sa phetošo sa lehono. Bakeng sa pego ya gago ya motšhelo, šomiša setatamente sa poroukara ya gago.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Go tloga ka tshekatsheko ye, go phatlaladitšwe dipoelo tše mpsha tša kotara ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Dipoelo tše mpsha';

  @override
  String get portfolioImportBrokers =>
      'Diromelwantle go tšwa go Revolut, Trading 212 le Interactive Brokers le tšona di a lemogwa, gotee le dithekišo; dividende le dipeeletšo di a tlogelwa.';

  @override
  String get portfolioImportFile => 'Kgetha faele';

  @override
  String offlineBanner(String time) {
    return 'Ga go na kgokagano – go bontšhwa data ya mafelelo yeo e bolokilwego ($time).';
  }

  @override
  String get glossMarketCap =>
      'Boleng bja khamphani ka moka mmarakeng wa dišere: theko ya šere × palo ya dišere.';

  @override
  String get glossSharesOutstanding =>
      'Ke dišere tše kae tšeo khamphani e di ntšhitšego. Ge palo e gola, šere e nngwe le e nngwe e na le seripa se sennyane; go reka dišere morago go a e fokotša.';

  @override
  String get glossPeTrailing =>
      'Theko ÷ poelo ka šere ya dikgwedi tše 12 tša go feta: o lefela mengwaga e mekae ya poelo ya bjale. Ya fase e tšhipa, eupša dikhamphani tše di golago ka pela gantši di na le P/E ye e phagamego.';

  @override
  String get glossPeForward =>
      'Bjalo ka P/E, eupša ka poelo yeo ditsebi di e letetšego dikgweding tše 12 tše di latelago. Ge e le ka fase ga P/E (ya go feta), poelo e letetšwe go gola.';

  @override
  String get glossPb =>
      'Theko ÷ boleng bja dipuku (dithoto go ntšhwa dikoloto) ka šere. Kgauswi le 1 go ra gore mmaraka o lekanya khamphani ka seo e nago le sona pampiring.';

  @override
  String get glossPs =>
      'Boleng bja mmaraka ÷ letseno la ngwaga. E thuša go dikhamphani tšeo di sa nago le poelo ye ntši goba di se na yona; bapetša ka gare ga intaseteri e tee.';

  @override
  String get glossEvToFcf =>
      'Boleng bja khamphani go akaretšwa dikoloto (EV) ÷ tšhelete yeo e e hwetšago ka ngwaga ka morago ga dipeeletšo. Ya fase e ra gore o hwetša tšhelete ye ntši go ya ka theko.';

  @override
  String get glossPeg =>
      'P/E ÷ kgolo ya poelo ye e letetšwego ka ngwaga (%). Kgauswi le 1 gantši go bonwa go lekane; e bapetša P/E le kgolo.';

  @override
  String get glossEps =>
      'Poelo ka šere dikgweding tše 12 tša go feta. EPS yeo e golago ngwaga le ngwaga ke se sengwe sa dipontšho tše maatla kudu tša khamphani ye e phetšego gabotse.';

  @override
  String get glossBeta =>
      'Šere e šutha bjang le mmaraka: 1 = bjalo ka mmaraka, 1.5 = diphetogo tše dikgolwanyana ka mo e ka bago 50%, ka fase ga 1 = e homotše kudu.';

  @override
  String get glossRevenueTtm =>
      'Thekišo ka moka ya dikgwedi tše 12 tša go feta, pele ga ditshenyagalelo.';

  @override
  String get glossNetIncomeTtm =>
      'Poelo ye e šalago ka morago ga ditshenyagalelo ka moka, tswala le motšhelo dikgweding tše 12 tša go feta.';

  @override
  String get glossGrossMargin =>
      'Karolo ya letseno ye e šalago ka morago ga ditshenyagalelo tša thwii tša ditšweletšwa. Moedi wo o phagamego gantši o bontšha maatla a go bea theko.';

  @override
  String get glossOperatingMargin =>
      'Karolo ya letseno ye e šalago ka morago ga go sepediša kgwebo (meputso, rente, papatšo), pele ga tswala le motšhelo.';

  @override
  String get glossNetMargin =>
      'Karolo ya letseno ye e fetogago poelo ya mafelelo. 20% e ra gore 20 go 100 ye nngwe le ye nngwe ya thekišo ke poelo.';

  @override
  String get glossRoe =>
      'Poelo go ekhwithi: poelo ya ngwaga ÷ letlotlo la beng. E bontšha ka fao bolaodi bo dirišago tšhelete ya beng ba dišere gabotse; godimo ga mo e ka bago 15% e matla.';

  @override
  String get glossRoa =>
      'Poelo go dithoto: poelo ya ngwaga ÷ tšohle tšeo khamphani e nago le tšona. Bapetša ka gare ga intaseteri e tee.';

  @override
  String get glossDebtToEquity =>
      'Sekoloto ÷ letlotlo la beng. Ya godimo e ra tšhelete ye ntši ye e adimilwego: kotsi ye kgolo ge tswala e rotoga goba kgwebo e nanya.';

  @override
  String get glossCurrentRatio =>
      'Dithoto tša nakwana ÷ dikoloto tše di swanetšego go lefelwa ka gare ga ngwaga. Godimo ga 1 e ra gore khamphani e kgona go lefela dikoloto tša yona tša kgauswi.';

  @override
  String get glossRevenueGrowth =>
      'Letseno le godile bjang go bapetšwa le ngwaga wa go feta.';

  @override
  String get glossEpsGrowth =>
      'Poelo ka šere e godile bjang go bapetšwa le ngwaga wa go feta.';

  @override
  String get glossDividendYield =>
      'Dividende ya ngwaga ÷ theko ya šere: letseno la kheše leo o le hwetšago ka ngwaga, bjalo ka phesente ya seo o se lefelago.';

  @override
  String get glossDividendPerShare =>
      'Dividende ye e lefetšwego šere e tee ngwageng wa go feta.';

  @override
  String get glossPayoutRatio =>
      'Karolo ya poelo ye e lefšwago bjalo ka dividende. Godimo ga 100% khamphani e lefa go feta seo e se hwetšago, e lego seo se sa tšwelego pele gantši.';

  @override
  String get glossTitle => 'Se bolela eng?';

  @override
  String get watchNewsTitle => 'Ditaba ka dišere tša gago';

  @override
  String get undo => 'Dirolla';

  @override
  String get watchSort => 'Beakanya';

  @override
  String get watchSortOwn => 'Thulaganyo ya ka';

  @override
  String get watchSortGainers => 'Tše di oketšegilego kudu pele';

  @override
  String get watchSortLosers => 'Tše di theogilego kudu pele';

  @override
  String get watchSortName => 'Ka ticker (A–Z)';

  @override
  String get watchHint =>
      'Goga seswaro go beakanya gape, kgoromeletša go le letshadi go tloša. Mothaladi o bontšha matšatši a 30 a go feta.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: tshekatsheko ya gago e loketše.';
  }

  @override
  String alertFromCost(String price) {
    return 'Go ya ka theko ya gago ya magareng ya go reka ($price):';
  }

  @override
  String get briefTitle => 'Lehono le dišere tša gago';

  @override
  String get briefButton => 'Kakaretša lehono';

  @override
  String get briefHint =>
      'Kakaretšo ye kopana ya AI ya ka moo portfolio ya gago le tše o di ratago di sepetšego ka gona lehono le seo ditaba tša moragorago di se bolelago. Ga e diriše tshekatsheko.';

  @override
  String get briefRefresh => 'Mpshafatša';

  @override
  String get sectionEarnings => 'Dipoelo tša kotara';

  @override
  String earningsNext(String date) {
    return 'Pego ye e latelago: $date';
  }

  @override
  String get earningsExpected => 'EPS ye e letetšwego';

  @override
  String get earningsReported => 'EPS ye e begilwego';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Go lekana goba go feta EPS ye e letetšwego go dikotara tše $beats go tše $total tša mafelelo',
      one:
          'Go lekana goba go feta EPS ye e letetšwego go kotara ye $beats go ye 1',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol: dipoelo tša kotara gosasa';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol: dipoelo tša kotara lehono';
  }

  @override
  String get earningsRemindersTitle => 'Dikgopotšo tša dipoelo';

  @override
  String get earningsRemindersSubtitle =>
      'Tsebišo letšatši pele tše di ratwago goba dišere tša potefolio ya gago di phatlalatša dipoelo tša kotara';

  @override
  String addAllToFavorites(int count) {
    return 'Oketša tšohle go tše di ratwago ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Tsenya go tšwa go seswantšho sa sekirini';

  @override
  String get holdingsReading => 'E bala dithoto tša gago…';

  @override
  String get holdingsReviewTitle => 'Dithoto tšeo di hweditšwego';

  @override
  String get holdingsReviewHint =>
      'Lekola dinomoro pele o di oketša. Theko ke theko ya gago ya magareng ya go reka šere e tee, e sego theko ya lehono.';

  @override
  String get holdingsNoPrice =>
      'Ga go na theko ya magareng ya go reka seswantšhong';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Oketša dithoto tše $count',
      one: 'Oketša thoto e 1',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Ga go dithoto tša dišere tšeo di hweditšwego seswantšhong se. Leka seswantšho sa sekirini sa letlakala la dithoto go broker ya gago.';

  @override
  String get week52Range => 'Bophara bja dibeke tše 52';

  @override
  String week52BelowHigh(String percent) {
    return '$percent ka fase ga ya godimo ya dibeke tše 52';
  }

  @override
  String get week52AtHigh => 'Go ya godimo ya dibeke tše 52';

  @override
  String get alertKindTrailing => 'E wela go tšwa godimodimo';

  @override
  String get alertTrailingPercent => 'Go wela go tšwa godimodimo (%)';

  @override
  String get alertTrailingHint =>
      'E latela theko ge e rotoga: e go tsebiša ge theko e wela ka bokaakaa go tšwa maemong a godimodimo go tloga ge o e beile.';

  @override
  String alertDescTrailing(String percent) {
    return 'Go wela ka $percent go tšwa godimodimo';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'godimodimo go fihla bjale: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol e wetše ka $percent go tšwa godimodimo';
  }

  @override
  String get sectionInsiders => 'Kgwebo ya batho ba ka gare';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ditheko tše $count',
      one: 'theko e 1',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'dithekišo tše $count',
      one: 'thekišo e 1',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Palomoka: dišere tše $shares';
  }

  @override
  String get insiderBuy => 'Rekile';

  @override
  String get insiderSell => 'Rekišitše';

  @override
  String get insiderHint =>
      'Ditheko le dithekišo mmarakeng wo o bulegilego tšeo di dirilwego ke balaodi le batsamaiši mo matšatšing a 90 a go feta (SEC Form 4). Go šomiša dikgetho (options) le dišere tšeo di filwego ga di balwe.';

  @override
  String get insiderNone =>
      'Ga go na ditheko goba dithekišo tša batho ba ka gare mmarakeng wo o bulegilego mo matšatšing a 90 a go feta.';

  @override
  String get analystTrend =>
      'Kamoo dikgopolo di fetogilego ka gona kgwedi le kgwedi';

  @override
  String get watchListAll => 'Tšohle';

  @override
  String get watchListNew => 'Lenaneo le leswa';

  @override
  String get watchListName => 'Leina la lenaneo';

  @override
  String get watchListRename => 'Fetoša leina la lenaneo';

  @override
  String get watchListDelete => 'Phumola lenaneo';

  @override
  String get watchListAddTo => 'Oketša lenaneong';

  @override
  String get watchListEmpty =>
      'Ga go na diabelo lenaneong le ga bjale. Kgotla konopo ya lenaneo kgauswi le seabelo go se oketša.';

  @override
  String get portfolioAskTitle => 'Dipotšišo ka photefolio ya gago';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'Polokelo ya thekgo';

  @override
  String get backupSave => 'Boloka polokelo ya thekgo';

  @override
  String get backupSaveHint =>
      'Tše o di ratago, mananeo, photefolio, ditemošo le dintlha tša gago faeleng e tee.';

  @override
  String get backupRestore => 'Bušetša go tšwa polokelong ya thekgo';

  @override
  String get backupRestoreHint =>
      'E oketša seo se lego faeleng; ga go selo seo o nago le sona bjale se phumolwago.';

  @override
  String get backupRestored => 'Polokelo ya thekgo e bušeditšwe.';

  @override
  String get backupInvalid => 'Faele ye ga se polokelo ya thekgo ya WhatStock.';

  @override
  String get allocationPositions => 'Dišere';

  @override
  String get allocationSectors => 'Makala';

  @override
  String get allocationCurrencies => 'Ditšhelete';

  @override
  String get compareReturn1y => 'Poelo ya ngwaga o 1';

  @override
  String get compareFromHigh => 'Go tšwa go ya godimo ya dibeke tše 52';

  @override
  String get briefAutoTitle => 'Kakaretšo ya letšatši ka letšatši mesong yohle';

  @override
  String get briefAutoSubtitle =>
      '“Lehono le dišere tša gago” e dirwa ka boyona ka morago ga 7:00 mesong ge app e šoma; dikhomphuthareng, tsebišo e tla go tsebiša. E diriša moedi wa gago wa dipotšišo wa letšatši le letšatši, e sego tshekatsheko.';

  @override
  String get targetsButton => 'Kabo ya nepo';

  @override
  String get targetsTitle => 'Kabo ya nepo';

  @override
  String get targetsHint =>
      'Bea gore šere ye nngwe le ye nngwe e swanetše go ba le karolo ye kae ya potefolio. Tlogela lepokisi le se na selo ge go se na nepo. Ka morago app e tla bontšha seo o swanetšego go se reka goba go se rekiša.';

  @override
  String targetsSum(String percent) {
    return 'Palomoka: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Reka ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Rekiša ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Go nepo';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol: godimo ga EPS ye e letetšwego';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol: ka tlase ga EPS ye e letetšwego';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'EPS ye e begilwego $actual, ye e letetšwego $estimate';
  }

  @override
  String get newsExplain => 'Se se ra goreng?';

  @override
  String get watchAlertAll => 'Temošo ya diphetogo tše kgolo tša letšatši';

  @override
  String get watchAlertAllHint =>
      'Temošo ya theko go šere ye nngwe le ye nngwe lenaneong le: e tla lla ge e šikinyega ka mo letšatšing le tee, godimo goba fase. Tšeo di šetšego di na le yona di tla dula le ya tšona.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Go beilwe ditemošo tše $count',
      one: 'Go beilwe temošo e 1',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized =>
      'Romela ka ntle dipoelo tšeo di hweditšwego (CSV)';

  @override
  String get portfolioAnnualReturn => 'Poelo ya ngwaga';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / ngwaga';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Poelo ya ngwaga yeo e lekanyeditšwego ka tšhelete (XIRR): e ela hloko gore o rekile le go rekiša neng, ka gona tšhelete yeo e okeditšwego ka morago ga e e kgopamiše. E bontšhwa ge theko ya gago ya mathomo e na le bonyane ngwaga o tee; dividende ga e akaretšwe.';

  @override
  String get eventsAddToCalendar => 'Oketša go khalendara (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Temošo ya potefolio';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Tsebišo ge potefolio ya gago ka moka e šutha ka tše kaalo ka letšatši le tee.';

  @override
  String get portfolioMoveAlertOff => 'Timilwe';

  @override
  String portfolioMoveUp(String percent) {
    return 'Potefolio ya gago e rotogile ka $percent lehono';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Potefolio ya gago e theogile ka $percent lehono';
  }

  @override
  String get whatIfTitle => 'Go ka be go le bjang ge o be o beeletše?';

  @override
  String get whatIfAmount => 'Palo';

  @override
  String whatIfResult(String amount, String period) {
    return 'Ge o be o beeletše $amount ka nako ya $period, lehono e be e tla ba ya boleng bja';
  }

  @override
  String get whatIfNote =>
      'Go theilwe fela godimo ga theko ya seabelo: dividende, ditefelo le motšhelo ga di akaretšwe. Dipoelo tša nakong ye e fetilego ga di bontšhe tša ka moso.';

  @override
  String get watchShare => 'Abelana lenaneo';

  @override
  String get watchImport => 'Oketša matšhwao a ticker';

  @override
  String get watchImportHint =>
      'Kgomaretša matšhwao a ticker ao a arogantšwego ka khoma, sekgoba goba methalo ye mefsa – mohlala, lenaneo leo motho o mongwe a le abelanego le wena.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Go okeditšwe dišere tše $count',
      one: 'Go okeditšwe šere e 1',
      zero: 'Ga go na dišere tše mpsha',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Tše kgolo kudu pele';

  @override
  String get positionsSortGain => 'Poelo ka moka ye kgolo pele';

  @override
  String get positionsSortToday => 'Tše kaone lehono pele';

  @override
  String get chartMyBuys => 'Tše o di rekilego';

  @override
  String get chartMySells => 'Tše o di rekišitšego';

  @override
  String get shortcutsTitle => 'Ditsela tše kopana tša khiboto';

  @override
  String usMarketOpen(String time) {
    return 'Mmaraka wa Amerika o bulegile · o tswalelwa ka morago ga $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Mmaraka wa Amerika o tswaletšwe · o bulwa ka morago ga $time';
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
    return '$days matšatši $hours h';
  }

  @override
  String get portfolioGoalSet => 'Bea maikemišetšo';

  @override
  String get portfolioGoalTitle => 'Maikemišetšo a photefolio';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · Maikemišetšo: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Maikemišetšo a fihleletšwe: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Tloša maikemišetšo';

  @override
  String get alertEdit => 'Lokiša temošo';

  @override
  String get positionOpenLots => 'Sa le go wena (tša kgale pele)';

  @override
  String get lotRemoved => 'Thekišano e phumotšwe';

  @override
  String get alertDeleted => 'Temošo e phumotšwe';

  @override
  String get alertsClearTriggered => 'Phumola ditemošo tše di diragetšego';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Go phumotšwe ditemošo tše $count',
      one: 'Go phumotšwe temošo e 1',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Letlakala la mathomo';

  @override
  String get allocationCountries => 'Dinaga';

  @override
  String get newsExplainNoteResearch =>
      'Tlhalošo ya AI: e nyaka dintlha wepeng, e bula sengwalwa gomme e lekola gore mothopo o a botega gakaakang. Ga se keletšo ya peeletšo. E diriša moedi wa gago wa dipotšišo wa letšatši le letšatši, e sego tshekatsheko.';
}
