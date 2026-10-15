// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tswana (`tn`).
class AppLocalizationsTn extends AppLocalizations {
  AppLocalizationsTn([String locale = 'tn']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Tsaya setshwantsho sa shere mme o ithute sengwe le sengwe ka yone.';

  @override
  String get homeHint =>
      'Setlankana sa dishere, sekirini sa app ya borokara, lokwalodikgang kgotsa letshwao la kompone – sepe fela se se supang shere.';

  @override
  String get takePhoto => 'Tsaya setshwantsho';

  @override
  String get chooseFromGallery => 'Tlhopha mo galaring';

  @override
  String get chooseImage => 'Tlhopha setshwantsho';

  @override
  String get enterTickerManually => 'Tsenya ticker ka seatla';

  @override
  String get tickerInputLabel => 'Tshwao ya ticker';

  @override
  String get tickerInputHint => 'jaaka AAPL';

  @override
  String get lookUp => 'Batla';

  @override
  String demoModeBanner(String symbols) {
    return 'Mokgwa wa tshupetso – ga go na senotlolo sa data ya mmaraka se se tsentsweng. Data ya sekai e teng bakeng sa: $symbols.';
  }

  @override
  String get recognizing => 'E sekaseka setshwantsho…';

  @override
  String get loadingData => 'E laisa data…';

  @override
  String get noCandidatesTitle => 'Ga go na shere e e lemogilweng';

  @override
  String get noCandidatesBody =>
      'Ga re a kgona go lemoga shere mo setshwantshong se. Leka setshwantsho se se bonalang sentle, kgotsa o tsenye ticker ka seatla.';

  @override
  String get whatWeSaw => 'Se re se boneng';

  @override
  String get chooseCandidateTitle => 'O ne o raya shere efe?';

  @override
  String confidencePercent(int percent) {
    return '$percent% ya tlhomamo';
  }

  @override
  String get settings => 'Dithulaganyo';

  @override
  String get language => 'Puo';

  @override
  String get systemLanguage => 'Tlwaelo ya sesteme';

  @override
  String get about => 'Ka ga app';

  @override
  String get disclaimer =>
      'App eno e fa tshedimosetso fela mme ga se kgakololo ya peeletso. Data e ka diega kgotsa ya se nepagale.';

  @override
  String dataSource(String source) {
    return 'Motswedi wa data: $source';
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
  String get ok => 'Go siame';

  @override
  String get close => 'Tswala';

  @override
  String get errorGeneric => 'Go na le sengwe se se sa tsamaang sentle.';

  @override
  String get errorSectionUnavailable => 'Karolo eno ga e a kgona go laisiwa.';

  @override
  String get notAvailable => 'ga e yo';

  @override
  String get sectionIdentity => 'Boitshupo';

  @override
  String get sectionPrice => 'Tlhwatlhwa';

  @override
  String get sectionValuation => 'Tekanyetso ya boleng';

  @override
  String get sectionFinancials => 'Dipalo tsa matlole';

  @override
  String get sectionDividend => 'Dividende';

  @override
  String get sectionProfile => 'Porofaele ya kompone';

  @override
  String get sectionAnalysts => 'Dikatlholo tsa basekaseki';

  @override
  String get sectionNews => 'Dikgang';

  @override
  String get sectionRecognition => 'Dintlha tsa temogo';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Mmaraka wa dishere';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Mofuta wa madi';

  @override
  String get labelCountry => 'Naga';

  @override
  String get labelIndustry => 'Intaseteri';

  @override
  String get labelSector => 'Lephata';

  @override
  String get labelWebsite => 'Webosaete';

  @override
  String get labelIpoDate => 'Letlha la IPO';

  @override
  String get labelMarketCap => 'Boleng jwa mmaraka';

  @override
  String get labelSharesOutstanding => 'Dishere tse di ntshitsweng';

  @override
  String get labelEmployees => 'Badiri';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Ntlokgolo';

  @override
  String get labelDescription => 'Tlhaloso';

  @override
  String get labelLastPrice => 'Tlhwatlhwa ya bofelo';

  @override
  String get labelChange => 'Phetogo';

  @override
  String get labelOpen => 'Pulo';

  @override
  String get labelDayHigh => 'Bogodimo jwa letsatsi';

  @override
  String get labelDayLow => 'Botlase jwa letsatsi';

  @override
  String get labelPreviousClose => 'Tswalo e e fetileng';

  @override
  String get labelWeek52High => 'Bogodimo jwa dibeke di le 52';

  @override
  String get labelWeek52Low => 'Botlase jwa dibeke di le 52';

  @override
  String get labelAverageVolume10d => 'Palogare ya kgwebo (malatsi a le 10)';

  @override
  String updatedAt(String time) {
    return 'E ntšhwafaditswe $time';
  }

  @override
  String get labelPeTrailing => 'P/E (e e fetileng)';

  @override
  String get labelPeForward => 'P/E (e e tlang)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / kelelo ya madi e e gololesegileng';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Letseno (TTM)';

  @override
  String get labelNetIncomeTtm => 'Poelo e e phepa (TTM)';

  @override
  String get labelGrossMargin => 'Seelo sa poelo ya kakaretso';

  @override
  String get labelOperatingMargin => 'Seelo sa poelo ya tiragatso';

  @override
  String get labelNetMargin => 'Seelo sa poelo e e phepa';

  @override
  String get labelRoe => 'Poelo mo matloleng a beng';

  @override
  String get labelRoa => 'Poelo mo dithotong';

  @override
  String get labelDebtToEquity => 'Dikoloto / matlole a beng';

  @override
  String get labelCurrentRatio => 'Seelo sa jaanong';

  @override
  String get labelRevenueGrowth => 'Kgolo ya letseno (YoY)';

  @override
  String get labelEpsGrowth => 'Kgolo ya EPS (YoY)';

  @override
  String get labelDividendYield => 'Poelo ya dividende';

  @override
  String get labelDividendPerShare => 'Dividende ka shere';

  @override
  String get labelPayoutRatio => 'Seelo sa tuelo';

  @override
  String get labelConsensus => 'Tumalano';

  @override
  String get ratingStrongBuy => 'Reka thata';

  @override
  String get ratingBuy => 'Reka';

  @override
  String get ratingHold => 'Tshwara';

  @override
  String get ratingSell => 'Rekisa';

  @override
  String get ratingStrongSell => 'Rekisa thata';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Basekaseki ba le $count',
      one: 'Mosekaseki a le mongwe',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Nako: $period';
  }

  @override
  String get noNews => 'Ga go na dikgang tsa bosheng.';

  @override
  String get openArticle => 'Bula setlhogo';

  @override
  String get openLinkFailed => 'Ga e a kgona go bula linki.';

  @override
  String get recognitionSummary => 'Kakaretso';

  @override
  String get recognitionEvidence => 'Ke eng re akanya jalo';

  @override
  String get recognitionRawText => 'Mokwalo o o badilweng mo setshwantshong';

  @override
  String get errMissingAnthropicKey =>
      'Temogo ya ditshwantsho ga e a rulaganngwa (ga go na ANTHROPIC_API_KEY). Tsenya ticker ka seatla.';

  @override
  String get errRecognitionUnreachable =>
      'Ga e a kgona go fitlhelela tirelo ya temogo. Tlhola kgolagano ya gago ya inthanete.';

  @override
  String errRecognitionHttp(String status) {
    return 'Tirelo ya temogo e busitse phoso (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Tirelo ya temogo ga e a kgona go dira setshwantsho se.';

  @override
  String get errRecognitionTruncated =>
      'Karabo ya temogo e kgaogile. Tswee-tswee leka gape.';

  @override
  String get errRecognitionBadResponse =>
      'Karabo e e sa solofelwang go tswa kwa tirelong ya temogo.';

  @override
  String get errRecognitionEmpty =>
      'Tirelo ya temogo e busitse karabo e e lolea.';

  @override
  String get errMissingFinnhubKey =>
      'Data ya mmaraka ga e a rulaganngwa (ga go na FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Ga e a kgona go fitlhelela tirelo ya data ya mmaraka. Tlhola kgolagano ya gago ya inthanete.';

  @override
  String get errMarketRateLimited =>
      'Dikopo di dintsi thata kwa tirelong ya data ya mmaraka. Tswee-tswee ema motsotso.';

  @override
  String errMarketHttp(String status) {
    return 'Tirelo ya data ya mmaraka e busitse phoso (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Karabo e e sa solofelwang go tswa kwa tirelong ya data ya mmaraka.';

  @override
  String errNoQuote(String symbol) {
    return 'Ga go na data ya tlhwatlhwa e e bonweng bakeng sa $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Ga go na porofaele ya kompone e e bonweng bakeng sa $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Mokgwa wa tshupetso o dirisa $symbols fela. Tsenya FINNHUB_API_KEY go bona data ya nako ya jaanong.';
  }

  @override
  String errUnknown(String detail) {
    return 'Go na le se se sa tsamaang sentle: $detail';
  }

  @override
  String get newSearch => 'Patlo e ntšha';

  @override
  String get recentSearches => 'Tsa bosheng';

  @override
  String get noRecentSearches => 'Ga go ise go nne le dipatlo tsa bosheng.';

  @override
  String get clearRecent => 'Phimola tsa bosheng';

  @override
  String get greeting => 'Re lebe shere efe?';

  @override
  String get searchHint => 'Ticker kgotsa leina la kompone';

  @override
  String get attachImage => 'Tlhomaganya setshwantsho';

  @override
  String get searchResultsTitle => 'Dipoelo tsa patlo';

  @override
  String errNoResults(String query) {
    return 'Ga go na dishere tse di bonweng bakeng sa “$query”.';
  }

  @override
  String get quickBarHint => 'Kwala ticker kgotsa leina la kompone…';

  @override
  String get openFullWindow => 'Bula fensetere';

  @override
  String hotkeyHint(String shortcut) {
    return 'Tobetsa $shortcut gongwe le gongwe go bitsa WhatStock.';
  }

  @override
  String get trayOpen => 'Bula WhatStock';

  @override
  String get trayQuickSearch => 'Patlo ya bonako';

  @override
  String get trayQuit => 'Tswa';

  @override
  String get appearance => 'Ponalo';

  @override
  String get themeSystem => 'Sesteme';

  @override
  String get themeDark => 'Lefifi';

  @override
  String get themeLight => 'Lesedi';

  @override
  String get back => 'Morago';

  @override
  String get aiSectionTitle => 'Tshekatsheko ya AI';

  @override
  String get aiIntro =>
      'Tshobokanyo e e tseneletseng e e kwadilweng ke AI: kakaretso ya dikgang tsa bosheng, kgwebo, dintlha tse di nonofileng, dikotsi le dintlha tse di fitlhegileng, boleng, ponelopele ya tlhwatlhwa e e nang le maemo a a ka nnang teng go tswa mo ditebong tsa monagano, tsa loago, tsa sethekeniki le tsa ikonomi e kgolo, le se o tshwanetseng go se ela tlhoko.';

  @override
  String get aiGenerate => 'Dira tshekatsheko';

  @override
  String get aiRegenerate => 'Dira gape';

  @override
  String get aiGenerating =>
      'E baakanya tshekatsheko… seno se ka tsaya motsotso kgotsa e mebedi.';

  @override
  String get aiSources => 'Metswedi';

  @override
  String aiGeneratedAt(String time) {
    return 'E dirilwe $time';
  }

  @override
  String get aiDisclaimer =>
      'Tshekatsheko e e dirilweng ke AI e theilwe mo data ya setšhaba le dikgang tsa bosheng. E ka nna le diphoso kgotsa ya bo e sa tlhole e le ya jaanong, e bile ga se kgakololo ya peeletso.';

  @override
  String get errAiNotConfigured =>
      'Tshekatsheko ya AI ga e a rulaganngwa (ga go na ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Ga e a kgona go fitlhelela tirelo ya AI. Tlhola kgolagano ya gago ya inthanete.';

  @override
  String errAiHttp(String status) {
    return 'Tirelo ya AI e busitse phoso (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Tirelo ya AI e ganne go sekaseka shere eno.';

  @override
  String get errAiBadResponse =>
      'Karabo e e sa solofelwang go tswa kwa tirelong ya AI.';

  @override
  String get sectionChart => 'Kerafo ya tlhwatlhwa';

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
      'Hisitori ya ditlhwatlhwa ga e yo mo motsweding wa data wa jaanong.';

  @override
  String get sectionStatements => 'Dipegelo tsa matlole (tsa ngwaga)';

  @override
  String get labelFiscalYear => 'Ngwaga wa matlole';

  @override
  String get labelRevenue => 'Letseno';

  @override
  String get labelNetIncome => 'Poelo e e phepa';

  @override
  String get labelTotalAssets => 'Dithoto tsotlhe';

  @override
  String get labelTotalLiabilities => 'Dikoloto tsotlhe';

  @override
  String get labelEquity => 'Matlole a beng ba dishere';

  @override
  String get labelOperatingCashFlow => 'Kelelo ya madi ya tiragatso';

  @override
  String get statementsUnavailable =>
      'Dipegelo tsa matlole tse di begilweng ga di yo bakeng sa shere eno.';

  @override
  String get launchAtLogin => 'Simolola fa o tsena';

  @override
  String get hotkeyLabel => 'Khutswafatso ya kakaretso';

  @override
  String get hotkeyRecordHint =>
      'Tobetsa fa, morago o tobetse motswako o mošwa wa dikonopo';

  @override
  String get hotkeyReset => 'Busetsa tlwaelo';

  @override
  String get pasteImage => 'Kgomaretsa setshwantsho go tswa mo klipbotong';

  @override
  String get errClipboardNoImage => 'Ga go na setshwantsho mo klipbotong.';

  @override
  String get favorites => 'Tse o di ratang';

  @override
  String get addToFavorites => 'Tsenya mo go tse o di ratang';

  @override
  String get removeFromFavorites => 'Tlosa mo go tse o di ratang';

  @override
  String get noFavorites =>
      'Ga go ise go nne le tse o di ratang. Tobetsa naledi mo shereng go e tsenya.';

  @override
  String get displayCurrency => 'Mofuta wa madi o o bontshiwang';

  @override
  String get displayCurrencyNone => 'Mofuta wa madi wa shere fela';

  @override
  String labelConverted(String currency) {
    return '≈ ka $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Seelo: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Dintšhwafatso';

  @override
  String currentVersion(String version) {
    return 'Kgatiso $version';
  }

  @override
  String get autoUpdate => 'Tsenya dintšhwafatso ka boiketsetso';

  @override
  String get checkForUpdates => 'Tlhola dintšhwafatso';

  @override
  String get updateChecking => 'E tlhola dintšhwafatso…';

  @override
  String get updateUpToDate => 'O na le kgatiso ya bosheng.';

  @override
  String updateAvailable(String version) {
    return 'Kgatiso $version e teng.';
  }

  @override
  String get updateDownloading => 'E dawunelouda ntšhwafatso kwa morago…';

  @override
  String get updateDownloaded =>
      'Ntšhwafatso e siametse. Simolola gape go e tsenya.';

  @override
  String get updateNow => 'Ntšhwafatsa';

  @override
  String get restartNow => 'Simolola gape';

  @override
  String get updatesViaStore =>
      'Dintšhwafatso di tla ka boiketsetso ka lebenkele la di-app.';

  @override
  String get updateCheckFailed => 'Ga e a kgona go tlhola dintšhwafatso.';

  @override
  String get subscription => 'Ikwadisetso';

  @override
  String get planTrial => 'Teko';

  @override
  String get planNormal => 'Tlwaelo';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Ga go na leano le le dirang';

  @override
  String planAnalysesPerMonth(int count) {
    return 'Ditshekatsheko di le $count ka kgwedi';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Teko ya mahala ya malatsi a le $days e e nang le ditshekatsheko di le $count';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Go setse malatsi a le $days a teko',
      one: 'Go setse letsatsi le le lengwe la teko',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Teko ya gago ya mahala e fedile. Tlhopha leano go tswelela o sekaseka.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Go setse ditshekatsheko di le $remaining go tse $total mo pakeng eno';
  }

  @override
  String extraCredits(int count) {
    return 'Ditshekatsheko tse di oketsegileng di le $count';
  }

  @override
  String renewsOn(String date) {
    return 'E ntšhwafala ka $date';
  }

  @override
  String get choosePlan => 'Tlhopha leano';

  @override
  String get currentPlan => 'Leano la jaanong';

  @override
  String get subscribe => 'Ikwadise';

  @override
  String get perMonth => '/ kgwedi';

  @override
  String get extraPacksTitle =>
      'O tlhoka tse dingwe? Reka ditshekatsheko tse di oketsegileng';

  @override
  String get extraPacksHint =>
      'Ditshekatsheko tse di oketsegileng ga di fele nako mme di dirisiwa morago ga kabelo ya gago ya kgwedi.';

  @override
  String get buy => 'Reka';

  @override
  String get restorePurchases => 'Busetsa ditheko';

  @override
  String get manageSubscription => 'Laola ikwadisetso';

  @override
  String get purchaseSuccess => 'Re a leboga! Theko ya gago e a dira.';

  @override
  String get purchasePending => 'Theko e emetse…';

  @override
  String get purchaseFailed => 'Theko ga e a kgona go weditswa.';

  @override
  String get purchaseCanceled => 'Theko e khanseletswe.';

  @override
  String get billingUnavailable =>
      'Ditheko ga di ise di nne teng mo polatefomong eno. Ikwadise mo founong ya gago kgotsa mo Mac; leano la gago le tla dira mo sedirisiweng sengwe le sengwe.';

  @override
  String get errQuotaExceeded =>
      'Ga o na ditshekatsheko tse di setseng mo pakeng eno. Tokafatsa leano la gago kgotsa o reke ditshekatsheko tse di oketsegileng.';

  @override
  String get errTrialExpired =>
      'Teko ya gago ya mahala e fedile. Tlhopha leano go tswelela.';

  @override
  String get errNoPlan =>
      'Go tlhokega leano le le dirang go dira tshekatsheko ya AI.';

  @override
  String get viewPlans => 'Bona maano';

  @override
  String get usageTitle => 'Tiriso';

  @override
  String get demoPurchaseNote =>
      'Tuelo ya tshupetso: ditheko di etsisiwa fela mo polatefomong eno.';

  @override
  String get mostPopular => 'E e ratwang thata';

  @override
  String get bestValue => 'Boleng jo bo gaisang';

  @override
  String get planFeaturesCommon =>
      'Temogo ya ditshwantsho, data ya nako ya jaanong, dikerafo, tse o di ratang le dipuo tsotlhe di le 120 di akarediwa mo leanong lengwe le lengwe. Kabelo e akaretsa ditshekatsheko tsa AI.';

  @override
  String get searchLanguages => 'Batla dipuo…';

  @override
  String get noLanguageMatch => 'Ga go na puo e e tsamaelanang.';

  @override
  String get aiSettings => 'Tshekatsheko ya AI';

  @override
  String get aiLength => 'Boleele';

  @override
  String get aiDepthBrief => 'Khutshwe';

  @override
  String get aiDepthStandard => 'Magareng';

  @override
  String get aiDepthDeep => 'E e tseneletseng';

  @override
  String get aiDepthBriefDesc => 'Dintlha tsa botlhokwa, ka bonako.';

  @override
  String get aiDepthStandardDesc =>
      'Pego e e feletseng e e nang le dikarolo tsotlhe.';

  @override
  String get aiDepthDeepDesc =>
      'Dipatlo tse dintsi tsa inthanete, papiso le bagaisani le dintlha tse di tseneletseng.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Mafoko a ka nna $min–$max';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'e dirisa ditshekatsheko di le $count',
      one: 'e dirisa tshekatsheko e le nngwe',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Maemo a mmadi';

  @override
  String get aiReaderBeginner => 'Mosimolodi';

  @override
  String get aiReaderExperienced => 'Yo o nang le maitemogelo';

  @override
  String get aiReaderBeginnerDesc =>
      'Puo e e motlhofo; lereo lengwe le lengwe la sethekeniki le a tlhalosiwa.';

  @override
  String get aiReaderExperiencedDesc =>
      'Mokwalo o o tletseng ka mareo a a tlwaelegileng a matlole.';

  @override
  String get aiCounterArgument => 'Kganetso e e nonofileng go gaisa';

  @override
  String get aiCounterArgumentDesc =>
      'Kakaretso ka metlha e fela ka kganetso e e nonofileng go gaisa kgatlhanong le tshwetso ya yone.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Go fitlha go dipatlo di le $count tsa inthanete mo tshekatshekong nngwe le nngwe ka leano la gago',
      one: 'Go fitlha go patlo e le nngwe ya inthanete mo tshekatshekong nngwe le nngwe ka leano la gago',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Dipatlo tsa inthanete ka boleele jwa Magareng go ya ka leano: Tlwaelo $normal, Pro $pro, Max $max, Ultra $ultra. Khutshwe e dirisa di le 2 go le kwa tlase, E e tseneletseng di le 2 go feta.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'go fitlha go dipatlo di le $count tsa inthanete',
      one: 'go fitlha go patlo e le nngwe ya inthanete',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dipatlo di le $count tsa inthanete mo tshekatshekong',
      one: 'Patlo e le nngwe ya inthanete mo tshekatshekong',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Boleele jono bo tlhoka ditshekatsheko di le $needed, mme go setse di le $left fela. Tlhopha boleele jo bo khutshwane mo Dithulaganyong kgotsa o tseye ditshekatsheko tse dingwe.';
  }

  @override
  String get outlookMarketMood => 'Maikutlo a mmaraka';

  @override
  String get moodVeryPessimistic => 'Tsholofelo e kwa tlase thata';

  @override
  String get moodPessimistic => 'Tsholofelo e kwa tlase';

  @override
  String get moodNeutral => 'Magareng';

  @override
  String get moodOptimistic => 'Tsholofelo e kwa godimo';

  @override
  String get moodVeryOptimistic => 'Tsholofelo e kwa godimo thata';

  @override
  String get scenarioBull => 'Seemo se se siameng';

  @override
  String get scenarioBase => 'Seemo sa motheo';

  @override
  String get scenarioBear => 'Seemo se se sa siamang';

  @override
  String outlookCurrentPrice(String price) {
    return 'Tlhwatlhwa ya jaanong: $price';
  }

  @override
  String get outlookKeyLevels => 'Maemo a botlhokwa';

  @override
  String get keyLevelSupport => 'Tshegetso';

  @override
  String get keyLevelResistance => 'Kganelo';

  @override
  String get keyLevelAnchor => 'Tshupetso';

  @override
  String get upcomingEvents => 'Ditiragalo tse di tlang';

  @override
  String get outlookChartNote =>
      'Dikgaolo tse di supang fela; dikgonagalo ke dikakanyo fela, ga se dipolelelopele.';

  @override
  String get accountTitle => 'Akhaonto';

  @override
  String get signIn => 'Tsena';

  @override
  String get signOut => 'Tswa';

  @override
  String get notSignedIn => 'Ga o a tsena';

  @override
  String get accountBenefit =>
      'Tsena gore ikwadisetso ya gago e dire mo didirisiweng tsotlhe tsa gago.';

  @override
  String get accountSyncedNote =>
      'Ikwadisetso ya gago le ditshekatsheko tse di setseng di a tshwana mo sedirisiweng sengwe le sengwe.';

  @override
  String get signInTitle => 'Tsena mo WhatStock';

  @override
  String get emailLabel => 'Aterese ya imeile';

  @override
  String get continueWithEmail => 'Tswelela ka imeile';

  @override
  String codeSentTo(String email) {
    return 'Re rometse khoutu ya dinomoro di le 6 kwa $email. E dira metsotso e le 10.';
  }

  @override
  String get codeLabel => 'Khoutu ya go tsena';

  @override
  String get resendCode => 'Romela khoutu e ntšha';

  @override
  String get useDifferentEmail => 'Dirisa imeile e nngwe';

  @override
  String get errInvalidCode => 'Khoutu e phoso kgotsa nako ya yone e fetile.';

  @override
  String get errInvalidEmail =>
      'Tswee-tswee tsenya aterese ya imeile e e nepagetseng.';

  @override
  String get errSignInFailed =>
      'Go tsena go paletswe. Tlhola kgolagano ya gago mme o leke gape.';

  @override
  String get checkoutWaiting =>
      'Wetsa tuelo mo sebatling sa gago. App e tla ntšhwafala ka boiketsetso fa e wetse.';

  @override
  String get paymentViaStripe =>
      'Tuelo e e sireletsegileng mo sebatling ka Stripe. Khansela nako nngwe le nngwe.';

  @override
  String get paymentViaStore =>
      'O duedisiwa ka akhaonto ya gago ya App Store kgotsa Google Play. Khansela nako nngwe le nngwe mo dithulaganyong tsa lebenkele.';

  @override
  String get keySpace => 'Space';

  @override
  String get doubleOptionTitle => 'Tobetsa Option gabedi';

  @override
  String get doubleOptionSubtitle =>
      'Go tobetsa konopo ya Option gabedi ka bonako le gone go bitsa WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Gore e dire le mo di-app tse dingwe, letla WhatStock mo System Settings → Privacy & Security → Input Monitoring, morago o bule app gape.';

  @override
  String get openSystemSettings => 'Bula System Settings';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Tobetsa $shortcut kgotsa tobetsa Option gabedi gongwe le gongwe go bitsa WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Se se ka diregang thata';

  @override
  String get longTermToday => 'Gompieno';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: 'dingwaga di le $years',
      one: 'ngwaga o le mongwe',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range ka ngwaga';
  }

  @override
  String longTermLikely(String price) {
    return 'kgonagalo e kgolo: $price';
  }

  @override
  String get confidenceLow => 'Tlhomamo e kwa tlase';

  @override
  String get confidenceMedium => 'Tlhomamo e e magareng';

  @override
  String get confidenceHigh => 'Tlhomamo e kwa godimo';

  @override
  String get longTermNote =>
      'Dikgaolo tsa paka e telele di theilwe mo dikakanyong tse di builweng mme di a atologa ka nako. Ditlhwatlhwa ga di akaretse dividende. Dikakanyo fela, ga se dipolelelopele.';

  @override
  String get portfolio => 'Potefolio';

  @override
  String get portfolioEmpty =>
      'Ga go ise go nne le sepe fa. Bula shere mme o tobetse “Tsenya mo potefoliong” go sala morago se o nang le sone.';

  @override
  String get portfolioLocalNote =>
      'E bolokilwe mo sedirisiweng seno fela. Dipalogotlhe di fetolwa ka diseelo tsa tshupetso tsa ECB; ditlhwatlhwa di ka diega.';

  @override
  String get addToPortfolio => 'Tsenya mo potefoliong';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Tsenya $symbol';
  }

  @override
  String get portfolioQuantity => 'Palo ya dishere';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Tlhwatlhwa ka shere ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Letlha la theko';

  @override
  String get portfolioAdd => 'Tsenya';

  @override
  String get portfolioInvalidNumber => 'Tsenya palo e e fetang lefela.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol e tsentswe mo potefoliong ya gago.';
  }

  @override
  String get portfolioTotalValue => 'Boleng jotlhe';

  @override
  String get portfolioToday => 'Gompieno';

  @override
  String get portfolioGainLoss => 'Poelo/tatlhegelo';

  @override
  String get portfolioInvested => 'Se se beeleditsweng';

  @override
  String get portfolioAllocation => 'Kabo';

  @override
  String get portfolioPositions => 'Dishere';

  @override
  String portfolioAvgCost(String price) {
    return 'palogare ya tlhwatlhwa $price';
  }

  @override
  String get portfolioYourPosition => 'Dishere tsa gago';

  @override
  String get portfolioPurchases => 'Ditheko';

  @override
  String get portfolioRemove => 'Tlosa';

  @override
  String get portfolioExcluded =>
      'Dishere tse di se nang tlhwatlhwa kgotsa seelo sa phetolo ya madi ga di akarediwe mo dipalogotlheng.';

  @override
  String get priceAlerts => 'Dikitsiso tsa tlhwatlhwa';

  @override
  String get setPriceAlert => 'Baya kitsiso ya tlhwatlhwa';

  @override
  String alertDialogTitle(String symbol) {
    return 'Kitsiso ya tlhwatlhwa · $symbol';
  }

  @override
  String get alertKindAbove => 'E tlhatlogela godimo ga';

  @override
  String get alertKindBelow => 'E wela kwa tlase ga';

  @override
  String get alertKindMove => 'E fetoga thata mo letsatsing';

  @override
  String alertTargetPrice(String currency) {
    return 'Tlhwatlhwa ($currency)';
  }

  @override
  String get alertMovePercent => 'Phetogo ya letsatsi (%)';

  @override
  String get alertAlreadyMet => 'Tlhwatlhwa e setse e fetile seemo seno.';

  @override
  String get alertSave => 'Baya kitsiso';

  @override
  String alertCreated(String symbol) {
    return 'Kitsiso ya $symbol e beilwe.';
  }

  @override
  String get alertsEmpty =>
      'Ga go ise go nne le dikitsiso tsa tlhwatlhwa. Bula shere mme o tobetse tlelo go baya nngwe.';

  @override
  String get alertsNote =>
      'Dikitsiso di tlhatlhobiwa metsotso e mengwe le e mengwe e le 5 fa WhatStock e ntse e dira. Mo khomputareng e tswelela e dira mo bareng ya menyu kgotsa mo tereing; mo founong, ga jaana dikitsiso di tla fela fa app e butswe.';

  @override
  String alertDescAbove(String price) {
    return 'Godimo ga $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Kwa tlase ga $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Phetogo ya letsatsi ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'E diragetse $date ka $price';
  }

  @override
  String get alertRearm => 'Tsosolosa';

  @override
  String get alertDelete => 'Phimola';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol e tlhatlogetse godimo ga $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol e wetse kwa tlase ga $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol e fetogile ka $percent gompieno';
  }

  @override
  String alertHitBody(String price) {
    return 'Tlhwatlhwa ya jaanong: $price';
  }

  @override
  String get alertOpen => 'Bula';

  @override
  String get keepInTrayTitle => 'Tswelela o dira fa fensetere e tswetswe';

  @override
  String get keepInTraySubtitle =>
      'WhatStock e nna mo bareng ya menyu kgotsa mo tereing, ka jalo khutswafatso le dikitsiso tsa tlhwatlhwa di tswelela di dira.';

  @override
  String get termsOfUse => 'Melawana ya Tiriso';

  @override
  String get privacyPolicy => 'Pholisi ya Sephiri';

  @override
  String get subscriptionLegal =>
      'Ikwadisetso e ntšhwafala ka boiketsetso kgwedi le kgwedi go fitlha o e khansela. Ka go ikwadisa o amogela Melawana ya Tiriso le Pholisi ya Sephiri.';

  @override
  String get deleteAccount => 'Phimola akhaonto';

  @override
  String get deleteAccountTitle => 'A o batla go phimola akhaonto ya gago?';

  @override
  String get deleteAccountBody =>
      'Akhaonto ya gago le sengwe le sengwe se se bolokilweng mo sefeleng sa rona (imeile, kabelo, tiriso) di tla phimolwa ka bosakhutleng, mme ditshekatsheko tse di sa dirisiwang di tla latlhega. Ikwadisetso e e duetsweng mo sebatling e khanselwa ka bonako; ikwadisetso ya App Store kgotsa Google Play e tshwanetse go khanselwa mo dithulaganyong tsa lebenkele.';

  @override
  String get deleteLocalData =>
      'Phimola le data e e mo sedirisiweng seno (potefolio, dikitsiso, tse o di ratang, hisitori, ditshekatsheko tse di bolokilweng)';

  @override
  String get deleteAccountConfirm => 'Phimola ka bosakhutleng';

  @override
  String get accountDeleted => 'Akhaonto ya gago e phimotswe.';

  @override
  String get errDeleteAccount =>
      'Akhaonto ga e a kgona go phimolwa. Tlhola kgolagano ya gago mme o leke gape.';

  @override
  String get aiTrialBriefNote =>
      'Ditshekatsheko tsa teko di khutshwe e bile di dirwa ka mofuta wa AI o o bonako. Ka leano o bona AI ya rona e e nonofileng go gaisa, dipatlo tse dintsi tsa inthanete, le boleele jwa Magareng le E e tseneletseng.';

  @override
  String get billingMonthly => 'Ka kgwedi';

  @override
  String get billingYearly => 'Ka ngwaga';

  @override
  String get yearlyDiscount => 'Dikgwedi di le 2 mahala';

  @override
  String get perYear => '/ ngwaga';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price ka kgwedi';
  }

  @override
  String get subscriptionLegalYearly =>
      'Ikwadisetso ya ngwaga e ntšhwafala ka boiketsetso ngwaga le ngwaga go fitlha o e khansela. Ka go ikwadisa o amogela Melawana ya Tiriso le Pholisi ya Sephiri.';

  @override
  String get myAnalyses => 'Ditshekatsheko tsa me';

  @override
  String get navAlerts => 'Dikitsiso';

  @override
  String get inviteTitle => 'Ponelopele e e tswetsweng';

  @override
  String get inviteBody =>
      'WhatStock e bonala fela ka taletso ka nako eno. Tsenya khoutu ya taletso e o e amogetseng.';

  @override
  String get inviteCodeLabel => 'Khoutu ya taletso';

  @override
  String get inviteContinue => 'Tswelela';

  @override
  String get inviteInvalid => 'Khoutu eno ya taletso ga e nepagale.';

  @override
  String get inviteExpired =>
      'Taletso eno e fetile nako. Kopa motho yo o go laleditseng khoutu e ntšha.';

  @override
  String get inviteDeviceLimit =>
      'Khoutu eno ya taletso e setse e dirisiwa mo palong e kgolo ka go fetisisa ya didirisiwa e e letleletsweng.';

  @override
  String get previewConfidential => 'Ponelopele ya sephiri';

  @override
  String get errPreviewDailyLimit =>
      'Tekanyetso ya ditshekatsheko ya gompieno ya ponelopele eno e fitlheletswe. Leka gape kamoso.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'diura di le $count tse di fetileng',
      one: 'ura e le 1 e e fetileng',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'malatsi a le $count a a fetileng',
      one: 'letsatsi le le 1 le le fetileng',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Ntšhafatsa tshekatsheko e?';

  @override
  String staleBody(String age) {
    return 'E dirilwe $age. Ditlhwatlhwa, dikgang le dipoelo di ka tswa di fetogile go tloga foo.';
  }

  @override
  String get staleKeep => 'Bontsha ya pele';

  @override
  String get staleRefresh => 'Dira e ntšhwa';

  @override
  String seeAll(int count) {
    return 'Bona tsotlhe ($count)';
  }

  @override
  String get searchAnalyses => 'Batla mo ditshekatshekong tsa gago';

  @override
  String get deleteAnalysis => 'Phimola';

  @override
  String analysisDeleted(String symbol) {
    return 'Tshekatsheko ya $symbol e phimotswe';
  }

  @override
  String get keyLevelAlertHint =>
      'Tobetsa maemo go amogela kitsiso fa tlhwatlhwa e fitlha kwa go one.';

  @override
  String get shareAnalysisTitle => 'Abelana tshekatsheko';

  @override
  String get shareAsImage => 'Abelana jaaka setshwantsho';

  @override
  String get shareAsText => 'Abelana jaaka mokwalo';

  @override
  String get shareCardFooter => 'E dirilwe ka WhatStock';

  @override
  String get shareCardDisclaimer =>
      'Tshekatsheko ya AI · ga se kgakololo ya peeletso';

  @override
  String get referralTitle => 'Laletsa ditsala';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ditshekatsheko tse di oketsegileng di le $count',
      one: 'tshekatsheko e le nngwe e e oketsegileng',
    );
    return 'Abelana khoutu ya gago. Tsala ya gago o bona $_temp0 ka bonako, mme le wena o bona tse di lekanang morago ga tshekatsheko ya gagwe ya ntlha.';
  }

  @override
  String get referralYourCode => 'Khoutu ya gago';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Ba ba laleditsweng: $invited · Dikatso: $rewarded';
  }

  @override
  String get referralHaveCode => 'A o na le khoutu ya tsala?';

  @override
  String get referralRedeem => 'Dirisa';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Go okeditswe ditshekatsheko di le $count. O amogetswe!',
      one: 'Go okeditswe tshekatsheko e le nngwe. O amogetswe!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Khoutu e ga e yo. E tlhole mme o leke gape.';

  @override
  String get referralErrOwn => 'Ga o kgone go dirisa khoutu ya gago.';

  @override
  String get referralErrAlready => 'O setse o dirisitse khoutu ya tsala.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ditshekatsheko tse di oketsegileng di le $count',
      one: 'tshekatsheko e le nngwe e e oketsegileng',
    );
    return 'Ke sekaseka diabe ka WhatStock: tsaya setshwantsho sa seabe mme AI e a se tlhalosa. Ka khoutu ya me $code o bona $_temp0.';
  }

  @override
  String get referralCopied => 'Khoutu e kopilwe';

  @override
  String get onboardTitle1 => 'Tsaya setshwantsho sa shere';

  @override
  String get onboardBody1 =>
      'Sekirini sa app ya borokara, lokwalodikgang kgotsa logo ya khampani di lekane: WhatStock e lemoga shere mme e go bontsha tlhwatlhwa ya yone, kerafo le dipalo tsa botlhokwa.';

  @override
  String get onboardTitle2 => 'E tlhaloganye mo metsotsong e le mmalwa';

  @override
  String get onboardBody2 =>
      'Tshekatsheko ya AI e tlhalosa se se tsamaisang shere, dikotsi, boleng jwa yone le maemo a le mararo a gore tlhwatlhwa e ka ya kae, ka metswedi le ka puo ya gago.';

  @override
  String get onboardTitle3 => 'Nna o itse sotlhe';

  @override
  String get onboardBody3 =>
      'Tse o di ratang, potefolio ya gago le dikitsiso tsa tlhwatlhwa di go itsise se se diragalang. Ditshekatsheko tsa gago di nna mo sedirisiweng sa gago, di siametse go bulwa gape.';

  @override
  String get onboardNext => 'E e latelang';

  @override
  String get onboardStart => 'Simolola';

  @override
  String get onboardSkip => 'Tlola';

  @override
  String changesTitle(String date) {
    return 'Go tloga tshekatshekong ya pele ($date)';
  }

  @override
  String get changesPrice => 'Tlhwatlhwa';

  @override
  String get changesNoMajor => 'Ponelopele ga e a fetoga thata.';

  @override
  String get changesPreviousSummary => 'Tshobokanyo ya pele';

  @override
  String get telemetryTitle => 'Thusa go tokafatsa WhatStock';

  @override
  String get telemetryBody =>
      'Abelana dipalopalo tsa tiriso tse di sa itsiweng le dipego tsa go wa: gore ke dikarolo dife tse di dirisiwang le gore go sentse eng. Ga re ke re abelana disheri tsa gago, ditshekatsheko tsa gago kgotsa tshedimosetso ya gago ya botho. O ka fetola se nako nngwe le nngwe mo Dithulaganyong.';

  @override
  String get telemetryAllow => 'Letla';

  @override
  String get telemetryDecline => 'Nnyaa, ke a leboga';

  @override
  String get telemetrySetting =>
      'Dipalopalo tse di sa itsiweng le dipego tsa go wa';

  @override
  String get telemetrySettingHint =>
      'Gore dikarolo di dirisiwa gangwe ga kae le dipego tsa diphoso, kwa ntle ga tshedimosetso ya botho kgotsa diteng tsa dipatlisiso le ditshekatsheko tsa gago.';

  @override
  String get askButton => 'Botsa ka tshekatsheko e';

  @override
  String askTitle(String symbol) {
    return 'Dipotso ka $symbol';
  }

  @override
  String get askIntro =>
      'Botsa sengwe le sengwe ka tshekatsheko: kotsi e raya eng, ke eng se se ka fetolang ponelopele, palo e badilwe jang. Dikarabo di theilwe mo tshekatshekong e, e bile ga se kgakololo ya peeletso.';

  @override
  String get askHint => 'Botsa potso…';

  @override
  String get askSend => 'Romela';

  @override
  String get askThinking => 'Ke a akanya…';

  @override
  String get askSuggest1 => 'Kotsi e kgolo go gaisa ke efe?';

  @override
  String get askSuggest2 => 'Ke eng se se ka fetolang ponelopele?';

  @override
  String get askSuggest3 => 'E tlhalose ka mafoko a a motlhofo';

  @override
  String get askMaxReached =>
      'Eo e ne e le potso ya bofelo ya tshekatsheko e. Dira tshekatsheko e ntšha go botsa go feta.';

  @override
  String get errAskLimit =>
      'O fitlhetse tekanyetso ya dipotso ya gompieno. Tsweetswee leka gape kamoso.';

  @override
  String get eventTomorrow => 'Kamoso';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'morago ga malatsi a le $days',
      one: 'morago ga letsatsi le le 1',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Dipoelo tsa kotara';

  @override
  String get eventBeforeOpen => 'pele mmaraka o bulwa';

  @override
  String get eventAfterClose => 'morago ga mmaraka o tswalwa';

  @override
  String eventEpsEstimate(String value) {
    return 'Kakanyo ya EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Go tswa mo tshekatshekong ya gago';

  @override
  String get eventsHint =>
      'Malatsi a dipoelo a dishere tse o di ratang le tsa potefolio ya gago mo malatsing a le 90 a a tlang, le ditiragalo tse di nang le malatsi tse ditshekatsheko tsa gago di di supileng.';

  @override
  String get eventsEmpty =>
      'Ga go na ditiragalo tse di nang le malatsi mo malatsing a le 90 a a tlang. Oketsa tse o di ratang kgotsa dishere tsa potefolio go bona malatsi a dipoelo tsa tsone fano.';

  @override
  String get compareTitle => 'Bapisa';

  @override
  String get compareAdd => 'Tsenya seabelo';

  @override
  String get compareRemove => 'Ntsha';

  @override
  String get compareTickerHint => 'Ticker, sekai MSFT';

  @override
  String get compareHint =>
      'Dipalo tsa botlhokwa di bapile; boleng jo bo gaisang mo moleng mongwe le mongwe bo tlhagisitswe. Madi a mo mofuteng wa madi wa seabelo sengwe le sengwe.';

  @override
  String get compareNoAnalysis => 'Ga go na tshekatsheko ga jaana';

  @override
  String get portfolioDividends => 'Dividende ya ngwaga';

  @override
  String portfolioDividendYield(String percent) {
    return 'Poelo ya $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Dividende e e solofetsweng ya ngwaga e theilwe mo dividendeng e e duetsweng mo dikgweding di le 12 tse di fetileng; dituelo tsa isago ga di tlhomamisiwe.';

  @override
  String positionDividend(String amount) {
    return 'Dividende: $amount ka ngwaga';
  }

  @override
  String get chartAvgCost => 'Palogare ya gago';

  @override
  String get chartAlertLevel => 'Kitsiso';

  @override
  String get marketsToday => 'Mebaraka gompieno';

  @override
  String get notesTitle => 'Dintlha tsa me';

  @override
  String get notesHint =>
      'Goreng o e rekile, o ela tlhoko eng, ke eng se se ka dirang gore o e rekise?';

  @override
  String get notesInfo =>
      'E bolokilwe mo sedirisiweng seno fela. Tshekatsheko ya AI e tsaya dintlha tsa gago tsia.';

  @override
  String notesSaved(String date) {
    return 'E bolokilwe $date';
  }
}
