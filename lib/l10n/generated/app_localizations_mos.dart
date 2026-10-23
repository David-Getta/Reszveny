// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Mossi (`mos`).
class AppLocalizationsMos extends AppLocalizations {
  AppLocalizationsMos([String locale = 'mos']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'Rɩk aksiõ foto n bãng a yɛla fãa.';

  @override
  String get homeHint =>
      'Aksiõ sebre, burs aplikasiõ ekrã, kasɛt bɩ ãterpriz logo – bũmb fãa sẽn wilgd aksiõ.';

  @override
  String get takePhoto => 'Rɩk foto';

  @override
  String get chooseFromGallery => 'Yãk galri pʋgẽ';

  @override
  String get chooseImage => 'Yãk foto';

  @override
  String get enterTickerManually => 'Gʋls aksiõ bãnde f meng';

  @override
  String get tickerInputLabel => 'Aksiõ bãnde (ticker)';

  @override
  String get tickerInputHint => 'wala AAPL';

  @override
  String get lookUp => 'Bao';

  @override
  String demoModeBanner(String symbols) {
    return 'Wilgr sore – raaga bãngr kile ka be ye. Makr bãngr be $symbols yĩnga.';
  }

  @override
  String get recognizing => 'D vɛɛsd foto wã…';

  @override
  String get loadingData => 'Bãngrã watame…';

  @override
  String get noCandidatesTitle => 'Pa yã aksiõ ye';

  @override
  String get noCandidatesBody =>
      'D pa tõog n bãng aksiõ foto kãngã pʋgẽ ye. Mak foto sẽn vẽnegd n yɩɩda, bɩ f gʋls aksiõ bãnde f meng.';

  @override
  String get whatWeSaw => 'D sẽn yã';

  @override
  String get chooseCandidateTitle => 'Aksiõ bʋg la f rat?';

  @override
  String confidencePercent(int percent) {
    return 'Tẽeb $percent%';
  }

  @override
  String get settings => 'Seglgo';

  @override
  String get language => 'Goama';

  @override
  String get systemLanguage => 'Sistɛm goama';

  @override
  String get about => 'WhatStock yelle';

  @override
  String get disclaimer =>
      'Aplikasiõ kãngã kõta bãngr bala, a pa sagls ligd kẽesg wɛɛngẽ ye. Bãngrã tõe n kaoos n wa bɩ n pa zems ye.';

  @override
  String dataSource(String source) {
    return 'Bãngrã sẽn yi: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Foto vɛɛsgo: $source';
  }

  @override
  String get retry => 'Le mak';

  @override
  String get cancel => 'Bas';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Yõ';

  @override
  String get errorGeneric => 'Bũmb pa zems ye.';

  @override
  String get errorSectionUnavailable => 'Pa tõog n wilg pʋɩr kãngã ye.';

  @override
  String get notAvailable => 'ka be';

  @override
  String get sectionIdentity => 'A bãnde';

  @override
  String get sectionPrice => 'Koosgo';

  @override
  String get sectionValuation => 'Yõod vɛɛsgo';

  @override
  String get sectionFinancials => 'Ligd yɛla';

  @override
  String get sectionDividend => 'Dividãnd';

  @override
  String get sectionProfile => 'Ãterpriz yelle';

  @override
  String get sectionAnalysts => 'Vɛɛsdba tagsa';

  @override
  String get sectionNews => 'Kibaya';

  @override
  String get sectionRecognition => 'Vɛɛsgã yɛla';

  @override
  String get labelSymbol => 'Bãnde';

  @override
  String get labelExchange => 'Burs';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Ligd buudu';

  @override
  String get labelCountry => 'Tẽnga';

  @override
  String get labelIndustry => 'Tʋʋm buudu';

  @override
  String get labelSector => 'Tʋʋm zĩiga';

  @override
  String get labelWebsite => 'Ẽntɛrnɛt zĩiga';

  @override
  String get labelIpoDate => 'IPO daare';

  @override
  String get labelMarketCap => 'Burs yõodo';

  @override
  String get labelSharesOutstanding => 'Aksiõ sõor sẽn be raaga';

  @override
  String get labelEmployees => 'Tʋʋm-tʋmdba';

  @override
  String get labelCeo => 'Zu-soaba';

  @override
  String get labelHeadquarters => 'Zĩig-kãsenga';

  @override
  String get labelDescription => 'Wilgre';

  @override
  String get labelLastPrice => 'Koosg sẽn baase';

  @override
  String get labelChange => 'Toeeme';

  @override
  String get labelOpen => 'Pakre';

  @override
  String get labelDayHigh => 'Daarã yɩɩd fãa';

  @override
  String get labelDayLow => 'Daarã sik fãa';

  @override
  String get labelPreviousClose => 'Zaam koosgo';

  @override
  String get labelWeek52High => 'Yʋʋmd pʋgẽ yɩɩd fãa';

  @override
  String get labelWeek52Low => 'Yʋʋmd pʋgẽ sik fãa';

  @override
  String get labelAverageVolume10d => 'Raab-n-koosg sõor sʋka (rasem 10)';

  @override
  String updatedAt(String time) {
    return 'Paalgã: $time';
  }

  @override
  String get labelPeTrailing => 'P/E (sẽn loogã)';

  @override
  String get labelPeForward => 'P/E (sẽn watã)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / ligd sẽn kell (FCF)';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Ligd sẽn kẽe (TTM)';

  @override
  String get labelNetIncomeTtm => 'Nafa sɩda (TTM)';

  @override
  String get labelGrossMargin => 'Nafa fãa (%)';

  @override
  String get labelOperatingMargin => 'Tʋʋm nafa (%)';

  @override
  String get labelNetMargin => 'Nafa sɩda (%)';

  @override
  String get labelRoe => 'Nafa ne soab-rãmb ligdi';

  @override
  String get labelRoa => 'Nafa ne arzɛka';

  @override
  String get labelDebtToEquity => 'Samde / soab-rãmb ligdi';

  @override
  String get labelCurrentRatio => 'Ligd sẽn be nug pʋgẽ (ratio)';

  @override
  String get labelRevenueGrowth => 'Ligd sẽn kẽe paasgo (yʋʋmd fãa)';

  @override
  String get labelEpsGrowth => 'EPS paasgo (yʋʋmd fãa)';

  @override
  String get labelDividendYield => 'Dividãnd nafa';

  @override
  String get labelDividendPerShare => 'Dividãnd aksiõ fãa';

  @override
  String get labelPayoutRatio => 'Nafa sẽn pʋɩɩ (%)';

  @override
  String get labelYieldOnCost => 'Dividãnd nafa ligd f sẽn yao zugu';

  @override
  String get labelDividendGrowth5y => 'Dividãnd paasgo (yʋʋm 5)';

  @override
  String get dividendNone => 'B pa yao dividãnd kiis 12 sẽn loogã pʋgẽ ye.';

  @override
  String get dividendOnYourShares => 'F aksiõ-rãmba zugu, yʋʋmd fãa';

  @override
  String get labelConsensus => 'Yam-yembre';

  @override
  String get ratingStrongBuy => 'Da ne pãnga';

  @override
  String get ratingBuy => 'Da';

  @override
  String get ratingHold => 'Tall';

  @override
  String get ratingSell => 'Koose';

  @override
  String get ratingStrongSell => 'Koose ne pãnga';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'vɛɛsdb $count',
      one: 'vɛɛsd a yembre',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Wakato: $period';
  }

  @override
  String get noNews => 'Kibay paalb ka be ye.';

  @override
  String get openArticle => 'Pak sebrã';

  @override
  String get openLinkFailed => 'Pa tõog n pak link wã ye.';

  @override
  String get recognitionSummary => 'Kʋmbgo';

  @override
  String get recognitionEvidence => 'D sẽn tags woto wã võore';

  @override
  String get recognitionRawText => 'Gʋlsg sẽn be foto wã pʋgẽ';

  @override
  String get errMissingAnthropicKey =>
      'Foto vɛɛsg ka segl ye (ANTHROPIC_API_KEY ka be ye). Gʋls aksiõ bãnde f meng.';

  @override
  String get errRecognitionUnreachable =>
      'Pa tõog n ta foto vɛɛsg tʋʋmdã ye. Ges f ẽntɛrnɛt kõneksõ.';

  @override
  String errRecognitionHttp(String status) {
    return 'Foto vɛɛsg tʋʋmdã lebsa ne yel-wẽnde (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Foto vɛɛsg tʋʋmdã pa tõog n vɛɛs foto kãngã ye.';

  @override
  String get errRecognitionTruncated => 'Foto vɛɛsgã leokr pa sa ye. Le mak.';

  @override
  String get errRecognitionBadResponse =>
      'Foto vɛɛsg tʋʋmdã leokre pa zems ye.';

  @override
  String get errRecognitionEmpty => 'Foto vɛɛsg tʋʋmdã leokre ka tar bũmb ye.';

  @override
  String get errMissingFinnhubKey =>
      'Raaga bãngr ka segl ye (FINNHUB_API_KEY ka be ye).';

  @override
  String get errMarketUnreachable =>
      'Pa tõog n ta raaga bãngr tʋʋmdã ye. Ges f ẽntɛrnɛt kõneksõ.';

  @override
  String get errMarketRateLimited =>
      'Kosg wʋsg n kẽ raaga bãngr tʋʋmdã. Gũ minit a yembre.';

  @override
  String errMarketHttp(String status) {
    return 'Raaga bãngr tʋʋmdã lebsa ne yel-wẽnde (HTTP $status).';
  }

  @override
  String get errMarketBadResponse => 'Raaga bãngr tʋʋmdã leokre pa zems ye.';

  @override
  String errNoQuote(String symbol) {
    return 'Pa yã $symbol koosg bãngr ye.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Pa yã $symbol ãterpriz yelle ye.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Wilgr sore tʋmd ne $symbols bala. Paas FINNHUB_API_KEY n paam bãngr sẽn yaa rũnda.';
  }

  @override
  String errUnknown(String detail) {
    return 'Bũmb pa zems ye: $detail';
  }

  @override
  String get newSearch => 'Baoob paalga';

  @override
  String get recentSearches => 'Sẽn pa kaoose';

  @override
  String get noRecentSearches => 'Baoob sẽn pa kaoose ka be ye.';

  @override
  String get clearRecent => 'Yẽes sẽn pa kaoose';

  @override
  String get greeting => 'Aksiõ bʋg la d na n ges?';

  @override
  String get searchHint => 'Aksiõ bãnde bɩ ãterpriz yʋʋre';

  @override
  String get attachImage => 'Ning foto';

  @override
  String get searchResultsTitle => 'D sẽn yã';

  @override
  String errNoResults(String query) {
    return 'Pa yã aksiõ “$query” yĩnga ye.';
  }

  @override
  String get quickBarHint => 'Gʋls aksiõ bãnde bɩ ãterpriz yʋʋre…';

  @override
  String get openFullWindow => 'Pak fenɛtrã';

  @override
  String hotkeyHint(String shortcut) {
    return 'Dĩig $shortcut zĩig fãa n bool WhatStock.';
  }

  @override
  String get trayOpen => 'Pak WhatStock';

  @override
  String get trayQuickSearch => 'Baoob tao-tao';

  @override
  String get trayQuit => 'Yi';

  @override
  String get appearance => 'Wẽnemde';

  @override
  String get themeSystem => 'Sistɛm';

  @override
  String get themeDark => 'Likri';

  @override
  String get themeLight => 'Vẽenem';

  @override
  String get back => 'Lebg poorẽ';

  @override
  String get aiSectionTitle => 'AI vɛɛsgo';

  @override
  String get aiIntro =>
      'Vɛɛsg sẽn zulg, AI n gʋls: kibay paalb kʋmbgo, ãterprizã tʋʋmde, a pãnga, a yel-wẽna la bũmb nins sẽn solge, a yõodo, koosgã beoog yell ne yɛl-tões buud buud (sũ-yɛla, nin-buiid yɛla, teknik la ãnduni ligd yɛla), la bũmb nins f sẽn segd n gese.';

  @override
  String get aiGenerate => 'Maan vɛɛsgo';

  @override
  String get aiRegenerate => 'Le maan';

  @override
  String get aiGenerating =>
      'D segld vɛɛsgã… a tõe n rɩk minit a yembre bɩ a yiibu.';

  @override
  String get aiSources => 'Bãngr zĩisi';

  @override
  String aiGeneratedAt(String time) {
    return 'B maana $time';
  }

  @override
  String get aiDisclaimer =>
      'AI n maan vɛɛsg kãngã ne bãngr sẽn yaa nebã fãa dẽnda la kibay paalbã. A tõe n tar tudgri bɩ n kʋʋdg, la a pa sagls ligd kẽesg wɛɛngẽ ye.';

  @override
  String get errAiNotConfigured =>
      'AI vɛɛsg ka segl ye (ANTHROPIC_API_KEY ka be ye).';

  @override
  String get errAiUnreachable =>
      'Pa tõog n ta AI tʋʋmdã ye. Ges f ẽntɛrnɛt kõneksõ.';

  @override
  String errAiHttp(String status) {
    return 'AI tʋʋmdã lebsa ne yel-wẽnde (HTTP $status).';
  }

  @override
  String get errAiRefused => 'AI tʋʋmdã zãgsa n pa vɛɛs aksiõ kãngã ye.';

  @override
  String get errAiBadResponse => 'AI tʋʋmdã leokre pa zems ye.';

  @override
  String get sectionChart => 'Koosg graafik';

  @override
  String get rangeOneWeek => 'Rasem 7';

  @override
  String get rangeOneMonth => 'Kiuug 1';

  @override
  String get rangeThreeMonths => 'Kiuug 3';

  @override
  String get rangeOneYear => 'Yʋʋm 1';

  @override
  String get rangeFiveYears => 'Yʋʋm 5';

  @override
  String get chartUnavailable => 'Koosgã kibare ka be bãngr zĩig kãngã ye.';

  @override
  String get sectionStatements => 'Ligd sɛba (yʋʋmd fãa)';

  @override
  String get labelFiscalYear => 'Ligd yʋʋmde';

  @override
  String get labelRevenue => 'Ligd sẽn kẽe';

  @override
  String get labelNetIncome => 'Nafa sɩda';

  @override
  String get labelTotalAssets => 'Arzɛk fãa';

  @override
  String get labelTotalLiabilities => 'Samd fãa';

  @override
  String get labelEquity => 'Soab-rãmb ligdi';

  @override
  String get labelOperatingCashFlow => 'Tʋʋm ligd sẽn kẽed la sẽn yit';

  @override
  String get statementsUnavailable => 'Aksiõ kãngã ligd sɛba ka be ye.';

  @override
  String get launchAtLogin => 'Pak-a f sã n kẽ sistɛmã';

  @override
  String get hotkeyLabel => 'Sor-kʋɩɩlg zĩig fãa';

  @override
  String get hotkeyRecordHint => 'Dĩig ka, la f dĩig klavie paalgã';

  @override
  String get hotkeyReset => 'Lebs sẽn da beẽ';

  @override
  String get pasteImage => 'Ning foto f sẽn kopi wã';

  @override
  String get errClipboardNoImage => 'Foto ka be f sẽn kopi wã pʋgẽ ye.';

  @override
  String get favorites => 'Nong-n-yɩɩda';

  @override
  String get addToFavorites => 'Paas nong-n-yɩɩda pʋgẽ';

  @override
  String get removeFromFavorites => 'Yiis nong-n-yɩɩda pʋgẽ';

  @override
  String get noFavorites =>
      'Nong-n-yɩɩd ka be ye. Dĩig aksiõ ãdaar wã n paas-a.';

  @override
  String get displayCurrency => 'Wilgr ligd buudu';

  @override
  String get displayCurrencyNone => 'Aksiõ wã ligd buud bala';

  @override
  String labelConverted(String currency) {
    return '≈ $currency pʋgẽ';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Teekre: 1 $from = $rate $to (BCE, $date)';
  }

  @override
  String get updates => 'Paalem';

  @override
  String currentVersion(String version) {
    return 'Versiõ $version';
  }

  @override
  String get autoUpdate => 'Ning paalem a meng';

  @override
  String get checkForUpdates => 'Bao paalem';

  @override
  String get updateChecking => 'D baood paalem…';

  @override
  String get updateUpToDate => 'F tara versiõ sẽn yaa paalg fãa.';

  @override
  String updateAvailable(String version) {
    return 'Versiõ $version be.';
  }

  @override
  String get updateDownloading => 'D dɩkda paalmã poorẽ…';

  @override
  String get updateDownloaded => 'Paalmã segla. Le sɩng aplikasiõ wã n ning-a.';

  @override
  String get updateNow => 'Ning';

  @override
  String get restartNow => 'Le sɩng';

  @override
  String get updatesViaStore => 'Paalem watame a meng aplikasiõ raaga pʋgẽ.';

  @override
  String get updateCheckFailed => 'Pa tõog n bao paalem ye.';

  @override
  String get subscription => 'Abonmã';

  @override
  String get planTrial => 'Makre';

  @override
  String get planNormal => 'Sõma';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Forfɛ ka be ye';

  @override
  String planAnalysesPerMonth(int count) {
    return 'Vɛɛse $count kiuug fãa';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Makr zaalem rasem $days ne vɛɛse $count';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Makr rasem $days n kell',
      one: 'Makr daar a yembr n kell',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired => 'F makr zaalmã sa. Yãk forfɛ n kell n vɛɛse.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Vɛɛse $remaining n kell $total pʋgẽ wakat kãngã';
  }

  @override
  String extraCredits(int count) {
    return 'Vɛɛse $count sẽn paase';
  }

  @override
  String renewsOn(String date) {
    return 'Na n le sɩng $date';
  }

  @override
  String get choosePlan => 'Yãk forfɛ';

  @override
  String get currentPlan => 'Forfɛ ning f sẽn tarã';

  @override
  String get subscribe => 'Kẽ abonmã';

  @override
  String get perMonth => '/ kiuugu';

  @override
  String get extraPacksTitle => 'F rata n paase? Da vɛɛse sẽn paase';

  @override
  String get extraPacksHint =>
      'Vɛɛse sẽn paasã pa saad ye, b tʋmd ne-b f kiuug vɛɛsã sã n sa poorẽ.';

  @override
  String get buy => 'Da';

  @override
  String get restorePurchases => 'Lebs f raabã';

  @override
  String get manageSubscription => 'Get f abonmã yelle';

  @override
  String get purchaseSuccess => 'Barka! F raabã tʋmdame.';

  @override
  String get purchasePending => 'Raabã gũudame…';

  @override
  String get purchaseFailed => 'Raabã pa tõog n sa ye.';

  @override
  String get purchaseCanceled => 'B bas raabã.';

  @override
  String get billingUnavailable =>
      'Raab ka be plataform kãngã zugu ye. Kẽ abonmã f telefõnẽ bɩ f Mac zugu; f forfɛ na n tʋm f aparɛy fãa zugu.';

  @override
  String get errQuotaExceeded =>
      'Vɛɛsg ka le kell wakat kãngã ye. Yãk forfɛ sẽn yɩɩda bɩ da vɛɛse sẽn paase.';

  @override
  String get errTrialExpired => 'F makr zaalmã sa. Yãk forfɛ n kell.';

  @override
  String get errNoPlan => 'AI vɛɛsg rata forfɛ sẽn tʋmda.';

  @override
  String get viewPlans => 'Ges forfɛ rãmba';

  @override
  String get usageTitle => 'F sẽn tʋmã';

  @override
  String get demoPurchaseNote =>
      'Wilgr yaoobo: raab ning sẽn be plataform kãngã pa sɩd ye.';

  @override
  String get mostPopular => 'Neb wʋsg sẽn yãk';

  @override
  String get bestValue => 'Yõod sẽn yɩɩd fãa';

  @override
  String get planFeaturesCommon =>
      'Foto bãngre, bãngr sẽn yaa rũnda, graafik, nong-n-yɩɩda la goam 120 wã fãa be forfɛ fãa pʋgẽ. Vɛɛsã sõor yaa AI vɛɛse yĩnga.';

  @override
  String get searchLanguages => 'Bao goama…';

  @override
  String get noLanguageMatch => 'Goam ka zems ye.';

  @override
  String get aiSettings => 'AI vɛɛsgo';

  @override
  String get aiLength => 'Woglem';

  @override
  String get aiDepthBrief => 'Kʋɩɩlga';

  @override
  String get aiDepthStandard => 'Sʋka';

  @override
  String get aiDepthDeep => 'Zulungu';

  @override
  String get aiDepthBriefDesc => 'Bũmb sẽn yaa tilae, tao-tao.';

  @override
  String get aiDepthStandardDesc => 'Vɛɛsg sẽn pid ne a pʋɩr fãa.';

  @override
  String get aiDepthDeepDesc =>
      'Baoob wʋsg ẽntɛrnɛt zugu, ãterpriz a taab makre la yɛla sẽn zulg n yɩɩda.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Gomdã sõor: $min–$max';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'rɩkda vɛɛse $count',
      one: 'rɩkda vɛɛsg a yembre',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Karẽnda zĩiga';

  @override
  String get aiReaderBeginner => 'Sɩngda';

  @override
  String get aiReaderExperienced => 'Bãngda';

  @override
  String get aiReaderBeginnerDesc =>
      'Goam sẽn pa toogo; b wilgd teknik gomd fãa võore.';

  @override
  String get aiReaderExperiencedDesc =>
      'Gʋlsg sẽn pid n yɩɩda, ne ligd yɛla goam sẽn yaa rogem.';

  @override
  String get aiCounterArgument => 'Gom-zãgsg sẽn yɩɩd pãnga';

  @override
  String get aiCounterArgumentDesc =>
      'Kʋmbgã baasd wakat fãa ne gomd sẽn yɩɩd sõma n zãgsd a meng tagsgo.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'N tãag ẽntɛrnɛt baoob $count vɛɛsg fãa, f forfɛ wã pʋgẽ',
      one: 'N tãag ẽntɛrnɛt baoob a yembre vɛɛsg fãa, f forfɛ wã pʋgẽ',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Woglem sʋka forfɛ fãa: Sõma $normal, Pro $pro, Max $max, Ultra $ultra. Kʋɩɩlga boogd 2, Zulungu paasd 2.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'n tãag ẽntɛrnɛt baoob $count',
      one: 'n tãag ẽntɛrnɛt baoob a yembre',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ẽntɛrnɛt baoob $count vɛɛsg fãa',
      one: 'Ẽntɛrnɛt baoob a yembre vɛɛsg fãa',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Woglem kãngã rata vɛɛse $needed, la vɛɛse $left bala n kell. Yãk woglem sẽn kʋɩɩl n yɩɩd Seglgã pʋgẽ bɩ f paam vɛɛse sẽn paase.';
  }

  @override
  String get outlookMarketMood => 'Raaga sũuri';

  @override
  String get moodVeryPessimistic => 'Sũ-sãams wʋsgo';

  @override
  String get moodPessimistic => 'Sũ-sãamse';

  @override
  String get moodNeutral => 'Sʋka';

  @override
  String get moodOptimistic => 'Sũ-noogo';

  @override
  String get moodVeryOptimistic => 'Sũ-noog wʋsgo';

  @override
  String get scenarioBull => 'Yɩkr sore';

  @override
  String get scenarioBase => 'Sʋk sore';

  @override
  String get scenarioBear => 'Sigr sore';

  @override
  String outlookCurrentPrice(String price) {
    return 'Koosgã rũnda: $price';
  }

  @override
  String get outlookKeyLevels => 'Zĩis sẽn yaa tilae';

  @override
  String get keyLevelSupport => 'Sõngre';

  @override
  String get keyLevelResistance => 'Gɩdgre';

  @override
  String get keyLevelAnchor => 'Yãk-zĩiga';

  @override
  String get upcomingEvents => 'Yɛl sẽn wate';

  @override
  String get outlookChartNote =>
      'Zĩisã yaa wilgr bala; tõe-n-tõe yaa tagsg bala, pa beoog bãngr ye.';

  @override
  String get accountTitle => 'Kõnte';

  @override
  String get signIn => 'Kẽ';

  @override
  String get signOut => 'Yi';

  @override
  String get notSignedIn => 'F pa kẽ ye';

  @override
  String get accountBenefit => 'Kẽ tɩ f abonmã tʋm f aparɛy fãa zugu.';

  @override
  String get accountSyncedNote =>
      'F abonmã la f vɛɛse nins sẽn kellã yaa a yembr aparɛy fãa zugu.';

  @override
  String get signInTitle => 'Kẽ WhatStock pʋgẽ';

  @override
  String get emailLabel => 'E-mail adrɛs';

  @override
  String get continueWithEmail => 'Kell ne e-mail';

  @override
  String codeSentTo(String email) {
    return 'D tʋmsa kod sẽn tar sõor 6 $email zugu. A tʋmd minit 10.';
  }

  @override
  String get codeLabel => 'Kẽesg kod';

  @override
  String get resendCode => 'Tʋms kod paalga';

  @override
  String get useDifferentEmail => 'Tʋm ne e-mail a to';

  @override
  String get errInvalidCode => 'Kod wã pa zems ye bɩ a wakat sa.';

  @override
  String get errInvalidEmail => 'Gʋls e-mail adrɛs sẽn zems.';

  @override
  String get errSignInFailed => 'Kẽesgã pa tõog ye. Ges f kõneksõ la f le mak.';

  @override
  String get checkoutWaiting =>
      'Baas yaoobã f navigatɛɛrã pʋgẽ. Aplikasiõ wã na n toeem a meng a sã n sa.';

  @override
  String get paymentViaStripe =>
      'Yaoob sẽn tar koglg f navigatɛɛrã pʋgẽ, ne Stripe. F tõe n bas wakat fãa.';

  @override
  String get paymentViaStore =>
      'Yaoobã yitame f App Store bɩ Google Play kõnte wã pʋgẽ. F tõe n bas wakat fãa, raagã seglgã pʋgẽ.';

  @override
  String get keySpace => 'Espace';

  @override
  String get doubleOptionTitle => 'Dĩig Option naoor a yiibu';

  @override
  String get doubleOptionSubtitle =>
      'Dĩig Option naoor a yiibu tao-tao me boolda WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Sẽn na yɩl tɩ a tʋm aplikasiõ a taabã me pʋgẽ, sak WhatStock Réglages Système → Confidentialité et sécurité → Surveillance de l’entrée pʋgẽ, la f le pak aplikasiõ wã.';

  @override
  String get openSystemSettings => 'Pak Réglages Système';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Dĩig $shortcut bɩ f dĩig Option naoor a yiibu zĩig fãa n bool WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Sẽn tõe n yɩ n yɩɩda';

  @override
  String get longTermToday => 'Rũnda';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: 'yʋʋm $years',
      one: 'yʋʋmd a yembre',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range yʋʋmd fãa';
  }

  @override
  String longTermLikely(String price) {
    return 'sẽn tõe n yɩ n yɩɩda: $price';
  }

  @override
  String get confidenceLow => 'Tẽeb bilfu';

  @override
  String get confidenceMedium => 'Tẽeb sʋka';

  @override
  String get confidenceHigh => 'Tẽeb wʋsgo';

  @override
  String get longTermNote =>
      'Wakat wogdg zĩisã zĩnda tagsa nins b sẽn wilgã zugu, la b yaalgd ne wakato. Koosgã pa naag dividãnd ye. Tagsg bala, pa beoog bãngr ye.';

  @override
  String get portfolio => 'Portfey';

  @override
  String get portfolioEmpty =>
      'Bũmb ka be ka ye. Pak aksiõ n dĩig “Paas portfey pʋgẽ” n get f sẽn tarã.';

  @override
  String get portfolioLocalNote =>
      'B tall-a aparɛy kãngã zugu bala. B teekda ligd fãa ne BCE teekre; koosgã tõe n kaoos n wa.';

  @override
  String get addToPortfolio => 'Paas portfey pʋgẽ';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Paas $symbol';
  }

  @override
  String get portfolioQuantity => 'Aksiõ sõore';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Aksiõ fãa koosgo ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Raab daare';

  @override
  String get portfolioAdd => 'Paas';

  @override
  String get portfolioInvalidNumber => 'Gʋls sõor sẽn yɩɩd 0.';

  @override
  String portfolioAdded(String symbol) {
    return 'B paasa $symbol f portfey pʋgẽ.';
  }

  @override
  String get portfolioTotalValue => 'Yõod fãa';

  @override
  String get portfolioToday => 'Rũnda';

  @override
  String get portfolioGainLoss => 'Nafa/bõnem';

  @override
  String homeDividendsThisYear(String amount) {
    return 'Dividand yʋʋm-kãngã: $amount';
  }

  @override
  String get portfolioInvested => 'Ligd f sẽn kẽesã';

  @override
  String get portfolioAllocation => 'Pʋɩɩbo';

  @override
  String get portfolioPositions => 'Aksiõ f sẽn tarã';

  @override
  String portfolioAvgCost(String price) {
    return 'koosg sʋka $price';
  }

  @override
  String get portfolioYourPosition => 'F sẽn tarã';

  @override
  String get portfolioPurchases => 'Raaba';

  @override
  String get portfolioRemove => 'Yiis';

  @override
  String get portfolioExcluded =>
      'Aksiõ nins sẽn ka tar koosg bɩ teekre pa kẽ sõdgã pʋgẽ ye.';

  @override
  String get priceAlerts => 'Koosg gũusgo';

  @override
  String get setPriceAlert => 'Ning koosg gũusgo';

  @override
  String alertDialogTitle(String symbol) {
    return 'Koosg gũusgo · $symbol';
  }

  @override
  String get alertKindAbove => 'Yɩkd n loogd';

  @override
  String get alertKindBelow => 'Sigd n loogd';

  @override
  String get alertKindMove => 'Toeemd wʋsg daar a yembre';

  @override
  String alertTargetPrice(String currency) {
    return 'Koosgo ($currency)';
  }

  @override
  String get alertMovePercent => 'Daar toeemre (%)';

  @override
  String get alertAlreadyMet => 'Koosgã zoe n loog zĩig kãngã.';

  @override
  String get alertSave => 'Ning gũusgo';

  @override
  String alertCreated(String symbol) {
    return 'B ninga $symbol gũusgo.';
  }

  @override
  String get alertsEmpty =>
      'Koosg gũusg ka be ye. Pak aksiõ n dĩig gũusgã bãnde n ning a yembre.';

  @override
  String get alertsNote =>
      'B gesda gũusgã minit 5 fãa WhatStock sẽn tʋmdẽ wã. Ordinatɛɛr zugu, a kelgd n tʋmd menu wã zĩigẽ bɩ sistɛmã zĩigẽ; telefõn zugu, masã gũusg watẽ aplikasiõ wã sã n pak bala.';

  @override
  String alertDescAbove(String price) {
    return '$price zugu';
  }

  @override
  String alertDescBelow(String price) {
    return '$price tẽngre';
  }

  @override
  String alertDescMove(String percent) {
    return 'Daar toeemre ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'A tʋma $date, ne $price';
  }

  @override
  String get alertRearm => 'Le ning';

  @override
  String get alertDelete => 'Yẽes';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol yɩka n loog $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol siga n loog $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol toeema $percent rũnda';
  }

  @override
  String alertHitBody(String price) {
    return 'Koosgã rũnda: $price';
  }

  @override
  String get alertOpen => 'Pak';

  @override
  String get keepInTrayTitle => 'Kell n tʋm fenɛtrã sã n yõ';

  @override
  String get keepInTraySubtitle =>
      'WhatStock kelgd menu wã zĩigẽ bɩ sistɛmã zĩigẽ, tɩ sor-kʋɩɩlgã la koosg gũusgã kell n tʋm.';

  @override
  String get termsOfUse => 'Tʋʋm noy';

  @override
  String get privacyPolicy => 'Solgr noy';

  @override
  String get subscriptionLegal =>
      'Abonmã le sɩngd a meng kiuug fãa n tãag f sã n bas-a. F sã n kẽ abonmã, f sakda Tʋʋm noy la Solgr noy.';

  @override
  String get deleteAccount => 'Yẽes kõnte';

  @override
  String get deleteAccountTitle => 'F rata n yẽes f kõnte?';

  @override
  String get deleteAccountBody =>
      'F kõnte la bũmb nins fãa sẽn be d sɛrvɛɛrã zugu (e-mail, vɛɛs sõor, f sẽn tʋmã) na n yẽes wakat fãa, la vɛɛse nins f sẽn pa tʋm ne-b na n bõna. Abonmã f sẽn yaool navigatɛɛrã pʋgẽ na n bas masã; App Store bɩ Google Play abonmã, f segd n bas-a raagã seglgã pʋgẽ.';

  @override
  String get deleteLocalData =>
      'Yẽes bãngr nins sẽn be aparɛy kãngã zugu me (portfey, gũusgo, nong-n-yɩɩda, kibare, vɛɛse nins f sẽn tall)';

  @override
  String get deleteAccountConfirm => 'Yẽes wakat fãa';

  @override
  String get accountDeleted => 'B yẽesa f kõnte.';

  @override
  String get errDeleteAccount =>
      'Pa tõog n yẽes kõnte wã ye. Ges f kõneksõ la f le mak.';

  @override
  String get aiTrialBriefNote =>
      'Makr vɛɛse yaa kʋɩɩlga, la b maanda-b ne AI sẽn yaa tao-tao. Ne forfɛ, f paamda d AI sẽn yaa sõma n yɩɩd fãa, ẽntɛrnɛt baoob wʋsg, la woglem Sʋka ne Zulungu.';

  @override
  String get billingMonthly => 'Kiuug fãa';

  @override
  String get billingYearly => 'Yʋʋmd fãa';

  @override
  String get yearlyDiscount => 'Kiuud 2 zaalem';

  @override
  String get perYear => '/ yʋʋmde';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price kiuug fãa';
  }

  @override
  String get subscriptionLegalYearly =>
      'Abonmã le sɩngd a meng yʋʋmd fãa n tãag f sã n bas-a. F sã n kẽ abonmã, f sakda Tʋʋm noy la Solgr noy.';

  @override
  String get myAnalyses => 'M vɛɛsgã';

  @override
  String get navAlerts => 'Gũusgo';

  @override
  String get inviteTitle => 'Ges-taoor sẽn pa yaa ne fãa ye';

  @override
  String get inviteBody =>
      'Masã, WhatStock yaa ne boollg bal. Gʋls boollg kod ning f sẽn paame wã.';

  @override
  String get inviteCodeLabel => 'Boollg kod';

  @override
  String get inviteContinue => 'Kell taoore';

  @override
  String get inviteInvalid => 'Boollg kod kãngã pa zems ye.';

  @override
  String get inviteExpired =>
      'Boollg kãngã wakat sa. Kos ned ning sẽn bool-f wã kod a-to.';

  @override
  String get inviteDeviceLimit =>
      'Boollg kod kãngã tʋmd masã ne masĩn-dãmb sõor sẽn yaa wʋsg n yɩɩda.';

  @override
  String get previewConfidential => 'Ges-taoor solgr';

  @override
  String get errPreviewDailyLimit =>
      'Ges-taoor kãngã rũndã vẽnegr sõor sa. Le makr beoogo.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'lɛɛr $count sẽn loogã',
      one: 'lɛɛr a yembr sẽn loogã',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'rasem $count sẽn loogã',
      one: 'daar a yembr sẽn loogã',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'F rata n le maan vɛɛsgã bɩ?';

  @override
  String staleBody(String age) {
    return 'B maana-a $age. Rẽ poorẽ, ligdã, kibarã la yɩɩlgrã tõe n tekame.';
  }

  @override
  String get staleKeep => 'Wilg a ning sẽn deng-a';

  @override
  String get staleRefresh => 'Maan a paalga';

  @override
  String seeAll(int count) {
    return 'Ges fãa ($count)';
  }

  @override
  String get searchAnalyses => 'Bao f vɛɛsgã pʋgẽ';

  @override
  String get deleteAnalysis => 'Yẽes';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol vɛɛsgã yẽesame';
  }

  @override
  String get keyLevelAlertHint =>
      'Dĩig zĩig a ye n paam gũusg koosgã sã n ta be.';

  @override
  String get shareAnalysisTitle => 'Pʋɩ vɛɛsgã';

  @override
  String get shareAsImage => 'Pʋɩ wa foto';

  @override
  String get shareAsText => 'Pʋɩ wa gʋlsgo';

  @override
  String get shareCardFooter => 'A maana ne WhatStock';

  @override
  String get shareCardDisclaimer => 'AI vɛɛsgo · pa sagls ligd kẽesg wɛɛngẽ ye';

  @override
  String get referralTitle => 'Bool f zo-rãmba';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'vɛɛse $count sẽn paase',
      one: 'vɛɛse a yembr sẽn paase',
    );
    return 'Pʋɩ f kõodã. F zoa na n paama $_temp0 masã, la fo me na n paama woto a vɛɛs-pipi wã poore.';
  }

  @override
  String get referralYourCode => 'F kõodã';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Sẽn bool: $invited · Sẽn paam keoore: $rewarded';
  }

  @override
  String get referralHaveCode => 'F tara f zoa kõod bɩ?';

  @override
  String get referralRedeem => 'Tʋm ne';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'B paasa vɛɛse $count. Ne y waoogo!',
      one: 'B paasa vɛɛse a yembre. Ne y waoogo!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Kõod kãngã ka be ye. Ges-a la f lebg n maan-a le.';

  @override
  String get referralErrOwn => 'F pa tõe n tʋm ne f mens kõodã ye.';

  @override
  String get referralErrAlready => 'F tʋma ne f zoa kõod pĩnda.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'vɛɛse $count sẽn paase',
      one: 'vɛɛse a yembr sẽn paase',
    );
    return 'Mam vɛɛsda aksɔ̃ wã ne WhatStock: yõk aksɔ̃ foto, la AI wã na n wilg-a. Ne m kõodã $code, f na n paama $_temp0.';
  }

  @override
  String get referralCopied => 'Kõodã lebs n gʋlsame';

  @override
  String get onboardTitle1 => 'Rɩk aksiõ foto';

  @override
  String get onboardBody1 =>
      'Burs aplikasiõ ekrã, kasɛt bɩ ãterpriz logo sekame: WhatStock bãngda aksiõ wã la a wilgd a koosgo, a grafik la a sõd-kãsenga.';

  @override
  String get onboardTitle2 => 'Bãng-a minut bilf pʋgẽ';

  @override
  String get onboardBody2 =>
      'AI vɛɛsgã wilgda bũmb ning sẽn tikd aksiõ wã, a yel-beeda, a yõodo, la sor a tãab a koosgã sẽn tõe n tʋg n kẽnge – ne a tũudsã la y kʋdemd pʋgẽ.';

  @override
  String get onboardTitle3 => 'Ra n bãng kibay wakat fãa';

  @override
  String get onboardBody3 =>
      'Nong-n-yɩɩda, y portfey la koosg gũusgo kõta yãmb kibay. Y vɛɛsgã kẽnd y masĩn pʋgẽ, n segd tɩ y le pak-ba.';

  @override
  String get onboardNext => 'Rẽnda';

  @override
  String get onboardStart => 'D sɩnge';

  @override
  String get onboardSkip => 'Bas-a';

  @override
  String changesTitle(String date) {
    return 'Vɛɛsg sẽn deng-a poorẽ ($date)';
  }

  @override
  String get changesPrice => 'Koosgo';

  @override
  String get changesNoMajor => 'Bũmb pa toeeg wʋsg ye.';

  @override
  String get changesPreviousSummary => 'Vɛɛsg sẽn deng-a koe-bilfu';

  @override
  String get telemetryTitle => 'Sõng tɩ WhatStock yɩɩ sõma';

  @override
  String get telemetryBody =>
      'Tʋm ne tõnd sõdb sẽn pa tar yʋʋr ne yel-wẽnsã kibay: tʋʋm-teed nins b sẽn tʋmd ne bũmb ning sẽn pa kẽnd sõma. Pa fo sõorã, fo vɛɛsgã wall fo meng kibay ye. Y tõe n toeem-a wakat fãa Seglgo pʋgẽ.';

  @override
  String get telemetryAllow => 'Sak';

  @override
  String get telemetryDecline => 'Ayo, barka';

  @override
  String get telemetrySetting => 'Sõdb sẽn pa tar yʋʋr ne yel-wẽns kibay';

  @override
  String get telemetrySettingHint =>
      'Wakat a wããn la b tʋmd ne tʋʋm-teedã ne yel-wẽns kibay, sẽn pa tar fo meng kibay wall fo bʋʋsgo ne fo vɛɛsgã pʋgẽ bũmb.';

  @override
  String get askButton => 'Sok vɛɛsg kãngã wɛɛngẽ';

  @override
  String askTitle(String symbol) {
    return 'Sokre: $symbol';
  }

  @override
  String get askIntro =>
      'Sok bũmb fãa vɛɛsgã wɛɛngẽ: zu-loeeg a yembr võore, bũmb ning sẽn tõe n tedg beoogã ges-taoore, la b sẽn maan to-to n paam sõor a yembre. Leokrã zĩnda vɛɛsg kãngã zugu, la b pa sagls ligd kẽesg wɛɛngẽ ye.';

  @override
  String get askHint => 'Sok sokre…';

  @override
  String get askSend => 'Tʋm';

  @override
  String get askThinking => 'M tagsda…';

  @override
  String get askSuggest1 => 'Zu-loeeg ning sẽn yaa kãsengã yaa bõe?';

  @override
  String get askSuggest2 => 'Bõe n tõe n tedg beoogã ges-taoore?';

  @override
  String get askSuggest3 => 'Wilg-m-a ne gom-biis sẽn yaa nana';

  @override
  String get askMaxReached =>
      'Woto la sokr a yaoolem vɛɛsg kãngã yĩnga. Maan vɛɛsg-paalg n paam n le sok.';

  @override
  String get errAskLimit => 'Rũndã sokr sõorã sa. Le makr beoogo.';

  @override
  String get eventTomorrow => 'Beoogo';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'rasem $days poorẽ',
      one: 'raar a yembr poorẽ',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Kiuuy a tãab ligd-yɛla';

  @override
  String get eventBeforeOpen => 'yaar pakr taoore';

  @override
  String get eventAfterClose => 'yaar pagb poore';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS tagsgo: $value';
  }

  @override
  String get eventFromAnalysis => 'Yii fo vɛɛsgã pʊgẽ';

  @override
  String get eventDividend => 'Dividand sẽn gũud';

  @override
  String get eventDividendEstimate => 'B geelg-a ne f sẽn gʋls yaoodã';

  @override
  String get eventsHint =>
      'Fo nong-n-yɩɩda la fo portfey sɛɛr-rãmbã ligd-yɛl rasem, rasem 90 sẽn watẽ wã pʊgẽ, yɛl sẽn tar rasem fo vɛɛsgã sẽn wilgã, la dividand nins b sẽn gũud ne yaood nins f sẽn gʋlsã.';

  @override
  String get eventsEmpty =>
      'Yɛl sẽn tar rasem ka be rasem 90 sẽn watẽ wã pʊgẽ ye. Paas nong-n-yɩɩda bɩ portfey sɛɛr n ges b ligd-yɛl rasem ka; dividand nins f sẽn gʋlsã wilgda yaood sẽn pʋgd b sẽn gũud.';

  @override
  String get compareTitle => 'Makre';

  @override
  String get compareAdd => 'Paas aksiõ';

  @override
  String get compareRemove => 'Yiise';

  @override
  String get compareTickerHint => 'Ticker, wala MSFT';

  @override
  String get compareHint =>
      'Sõdb kãsems taab sʋka; sor fãa pʋgẽ, sẽn yɩɩd sõma la b wilgda. Ligdã be aksiõ kam fãa ligd buud pʋgẽ.';

  @override
  String get compareNoAnalysis => 'Vɛɛsgo ka zĩnd ne masã ye';

  @override
  String get portfolioDividends => 'Dividãnd yʋʋmd fãa';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent nafa';
  }

  @override
  String get portfolioDividendNote =>
      'Dividãnd ning b sẽn tẽed yʋʋmd fãa wã yaa dividãnd ning b sẽn yao kiis 12 sẽn loogã zugu; b pa tõe n kɩɩs tɩ b na n yao beoog ye.';

  @override
  String positionDividend(String amount) {
    return 'Dividãnd: $amount yʋʋmd fãa';
  }

  @override
  String get chartAvgCost => 'Fo koosg sʋka';

  @override
  String get chartAlertLevel => 'Gũusgo';

  @override
  String get marketsToday => 'Raaga rũnda';

  @override
  String get notesTitle => 'M gʋlsgo';

  @override
  String get notesHint =>
      'Bõe yĩng tɩ f da-a, bõe la f gũusdẽ, bõe n na yɩl tɩ f koos-a?';

  @override
  String get notesInfo =>
      'B tall-a aparɛy kãngã zugu bala. AI vɛɛsgã get f gʋlsgã.';

  @override
  String notesSaved(String date) {
    return 'B tall-a: $date';
  }

  @override
  String get peersTitle => 'Ãterpriz sẽn wõnda';

  @override
  String get portfolioExport => 'Yiis CSV pʋgẽ';

  @override
  String get portfolioImport => 'Kẽes n yi CSV';

  @override
  String get portfolioImportHint =>
      'Ning raab a ye sẽ fãa pʋgẽ: aksiõ bãnde (ticker), sõor, ligdi, ligd buudu, raar (YYYY-MM-DD). Tõe n welg kolon-rãmbã ne virgil, pwẽ-virgil bɩ tab; zug sẽ-pɛɛlgã pa tilae ye.';

  @override
  String get portfolioImportButton => 'Kẽes';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'B paasa raaba $count',
      one: 'B paasa raab a yembre',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'B bas sẽ-rãmb $count',
      one: 'B bas sẽ a yembre',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Portfey, nong-n-yɩɩda, koosg gũusgo la gʋlsgo yaa a yembr f aparɛy fãa zugu.';

  @override
  String syncLast(String time) {
    return 'Sync sẽn yaa sɛɛbo: $time';
  }

  @override
  String get syncNow => 'Sync masã';

  @override
  String get syncFailed => 'Sync pa tõog ye. A na n le maan a meng.';

  @override
  String get alertEmailTitle => 'E-mail koosg gũusg sã n zĩndi';

  @override
  String get alertEmailOn =>
      'D gesdame f koosg gũusgã minit bilf fãa, la d tʋʋmd-f e-mail, baa aplikasiõ wã sã n pagda.';

  @override
  String get alertEmailSignIn =>
      'Kẽ ne f e-mail Seglgã pʋgẽ n paam koosg gũusgã e-mail pʋgẽ, baa aplikasiõ wã sã n pagda.';

  @override
  String get portfolioHistory => 'Yõodã toeembo';

  @override
  String get portfolioReviewTitle => 'Portfey AI vɛɛsgo';

  @override
  String get portfolioReviewIntro =>
      'AI na n gese f portfey zãngã fãa: f ligd sẽn tigim zĩig a yembre, tʋʋm-sullã la ligd buudã f sẽn tik-b, f aksiyõ-rãmbã sẽn tũud-taab yel-beedã, la tɩɩlgã. Rɩkda vɛɛsg a yembre.';

  @override
  String get portfolioReviewButton => 'Vɛɛs m portfey';

  @override
  String get portfolioReviewAgain => 'Le vɛɛse';

  @override
  String get portfolioReviewWorking => 'D vɛɛsd f portfey…';

  @override
  String get digestTitle => 'Semen fãa koɛɛg-bãmb ne e-mail';

  @override
  String get digestHint =>
      'Tɛnen fãa: a nong-n-yɩɩda la a portfey sẽn kẽng to-to semen sẽn loogã, la b ligd-yɛla rasem nins sẽn watã.';

  @override
  String get benchmarkTitle => 'Makr ne S&P 500';

  @override
  String get benchmarkTitleIndex => 'Makr ne indɛks a yembre';

  @override
  String get benchmarkHintIndex =>
      'Wa f bũmb ning f sẽn da fãa ra kẽe ligd-koglg sẽn pʋgd indɛks ning f sẽn yãk wã, raar kãng menga. Dividãnd pa be ye; pĩnd yɩɩbã pa wilgd beoog yɩɩbã ye.';

  @override
  String get benchmarkYours => 'Bũmb ning f sẽn da';

  @override
  String benchmarkAhead(String points) {
    return 'Yɩɩda indɛks wã ne pursantaaz poẽn $points';
  }

  @override
  String benchmarkBehind(String points) {
    return 'Be indɛks wã poorẽ ne pursantaaz poẽn $points';
  }

  @override
  String get portfolioSell => 'Koose';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Koose $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Aksiõ fãa koosg ligdi ($currency)';
  }

  @override
  String get portfolioSellDate => 'Koosgã daare';

  @override
  String get portfolioSellAll => 'Fãa';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Y tara $quantity';
  }

  @override
  String get portfolioSold => 'B koosa';

  @override
  String get portfolioRealized => 'Nafa sẽn paame';

  @override
  String get portfolioClosed => 'Aksiõ sẽn koos fãa';

  @override
  String get portfolioClosedNote => 'Aksiõ wã fãa koosame';

  @override
  String get portfolioTransactions => 'Raaba la koosgo';

  @override
  String get portfolioRealizedByYear => 'Nafa sẽn paame yʋʋm fãa';

  @override
  String get portfolioRealizedHint =>
      'B sẽn koosã, b sɩngda n zĩndgda ne f raab kʋdemdã (FIFO), n lebg ne rũndã ligd teedgo. Lampo sebrã yĩnga, tʋm ne f broker sebrã.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Hal sẽn maan vaeesg kãngã, b yiisa ligd-yɛl paalse ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Ligd-yɛl paalse';

  @override
  String get portfolioImportBrokers =>
      'B miẽ a Revolut, Trading 212 la Interactive Brokers sɛb-rãmba me, ne koosgã; dividãnd la ligd sẽn ning-b n ka kẽesd ye.';

  @override
  String get portfolioImportFile => 'Yãk fiise';

  @override
  String offlineBanner(String time) {
    return 'Kõneksõ ka be ye – d wilgdame bãngr sẽn yaa sɛɛb n bĩngame ($time).';
  }

  @override
  String get glossMarketCap =>
      'Kʋmpaani wã fãa yõod burs raagẽ: aksiõ yõodo × aksiõ sõore.';

  @override
  String get glossSharesOutstanding =>
      'Aksiõ a wãna la kʋmpaani wã yiisi. B sã n paasdẽ, aksiõ fãa paoodo yaa bilfu; kʋmpaanã sã n le n da a aksiõ, b sõore booda.';

  @override
  String get glossPeTrailing =>
      'Yõodo ÷ nafa aksiõ fãa kiis 12 sẽn loogã pʋgẽ: yʋʋm a wãna nafa la f yaoodẽ. Sẽn yaa bilfã yõod yaa bilfu, la kʋmpaani sẽn paasd tao-tao P/E yɩɩda wakat wʋsgo.';

  @override
  String get glossPeForward =>
      'Wala P/E, la ne nafa b sẽn tẽed kiis 12 sẽn watã pʋgẽ. A sã n pa ta P/E (sẽn loogã) ye, b tẽeda tɩ nafã na n paasa.';

  @override
  String get glossPb =>
      'Yõodo ÷ sɛb pʋgẽ yõodo (arzɛka, b sã n yiis samdã) aksiõ fãa. 1 neng-neng rata n yeel tɩ raagã kõta kʋmpaanã yõod wala a sẽn tar sebrã zug.';

  @override
  String get glossPs =>
      'Burs yõodo ÷ ligd sẽn kẽe yʋʋmd fãa. A nafda kʋmpaani sẽn nan pa tar nafa wʋsg bɩ sẽn pa tar baa fʋɩ ye; makr-y-yã tʋʋm buud a ye pʋgẽ.';

  @override
  String get glossEvToFcf =>
      'Kʋmpaanã yõodo ne a samdã (EV) ÷ ligd a sẽn paamd yʋʋmd a ye pʋgẽ, a sã n yao a investisman-dã poore. Sẽn yaa bilfã rata n yeel tɩ f paamda ligd wʋsg ne yõodã.';

  @override
  String get glossPeg =>
      'P/E ÷ nafa paasg b sẽn tẽed yʋʋmd fãa (%). 1 neng-neng b geta wakat wʋsg tɩ zemsame; a makda P/E ne paasgã.';

  @override
  String get glossEps =>
      'Nafa aksiõ fãa kiis 12 sẽn loogã pʋgẽ. EPS sẽn paasd yʋʋmd fãa yaa kʋmpaani sẽn tar laafɩ bõn-yel sẽn yaa kãng-kãng a yembr.';

  @override
  String get glossBeta =>
      'Aksiõã sẽn kẽnd ne raagã to-to: 1 = wala raagã, 1,5 = kẽnd-n-lebg sẽn yɩɩd 50% neng-neng, 1 sẽn pa ta = maaga n yɩɩda.';

  @override
  String get glossRevenueTtm =>
      'Koosg fãa kiis 12 sẽn loogã pʋgẽ, b sẽn nan pa yiis ligd b sẽn yaoã.';

  @override
  String get glossNetIncomeTtm =>
      'Nafa sẽn kell b sã n yao ligd fãa, intere la lampo kiis 12 sẽn loogã pʋgẽ.';

  @override
  String get glossGrossMargin =>
      'Ligd sẽn kẽe pʋɩɩr sẽn kell b sã n yao bõn-naandã yõodo. Nafa sẽn yaa wʋsg wilgda wakat wʋsg tɩ kʋmpaanã tõe n ning a bõn-koosgã yõodo.';

  @override
  String get glossOperatingMargin =>
      'Ligd sẽn kẽe pʋɩɩr sẽn kell b sã n yao tʋʋmã ligdi (tʋm-tʋmdb yaoode, roog yaoode, mɛɛrkɛtɩŋ), b sẽn nan pa yao intere la lampo.';

  @override
  String get glossNetMargin =>
      'Ligd sẽn kẽe pʋɩɩr sẽn lebgd nafa sɩda. 20% rata n yeelame tɩ koosg 100 fãa pʋgẽ, 20 yaa nafa.';

  @override
  String get glossRoe =>
      'Nafa ne soab-rãmb ligdi: yʋʋmd nafa ÷ soab-rãmb ligdi. A wilgda taoor-dãmbã sẽn tʋmd ne aksiõ soab-rãmb ligdã to-to; a sã n yɩɩd 15% neng-neng, a yaa kãnga.';

  @override
  String get glossRoa =>
      'Nafa ne arzɛka: yʋʋmd nafa ÷ kʋmpaanã sẽn tar bũmb fãa. Makr-y-yã tʋʋm buud a ye pʋgẽ.';

  @override
  String get glossDebtToEquity =>
      'Samde ÷ soab-rãmb ligdi. Sẽn yɩɩdã rata n yeel tɩ ligd b sẽn pẽnga wʋsgo: zu-loees n yɩɩda intere sã n paasdẽ bɩ tʋʋmã sã n maagdẽ.';

  @override
  String get glossCurrentRatio =>
      'Arzɛk sẽn tõe n lebg ligd tao-tao ÷ samd b sẽn segd n yao yʋʋmd a ye pʋgẽ. A sã n yɩɩd 1, kʋmpaanã tõe n yao a samd sẽn kolgã.';

  @override
  String get glossRevenueGrowth =>
      'Ligd sẽn kẽe paasg to-to, b sã n mak ne yʋʋmd a ye sẽn looge.';

  @override
  String get glossEpsGrowth =>
      'Nafa aksiõ fãa paasg to-to, b sã n mak ne yʋʋmd a ye sẽn looge.';

  @override
  String get glossDividendYield =>
      'Yʋʋmd dividãnd ÷ aksiõ yõodo: ligd f sẽn na n paam yʋʋmd fãa, f sẽn yaoã pʋɩɩr pʋgẽ (%).';

  @override
  String get glossDividendPerShare =>
      'Dividãnd b sẽn yao aksiõ a ye yʋʋmd sẽn looga pʋgẽ.';

  @override
  String get glossPayoutRatio =>
      'Nafa pʋɩɩr b sẽn pʋɩt wala dividãnd. A sã n yɩɩd 100%, kʋmpaanã yaoda n yɩɩd a sẽn paamã, la yẽ pa kẽnd wakat wʋsg ye.';

  @override
  String get portfolioBeta => 'Portfey beta';

  @override
  String get glossPortfolioBeta =>
      'F aksiõ-rãmbã beta, sẽn mak ne b yõodo: a wilgda f aksiõ-rãmbã sẽn kẽnd wa wãna, raagã sã n kẽng 1%. 1 sẽn yɩɩda, b kẽnda n yɩɩd raagã; 1 sẽn pa ta, b kẽnda n pa ta raagã. Ligdã pa be pʋgẽ ye.';

  @override
  String get portfolioTop3 => 'Aksiõ kãsems 3';

  @override
  String get glossPortfolioTop3 =>
      'F aksiõ-rãmbã yõodã zĩig a wãna n be f aksiõ kãsems a tãabã pʋgẽ. A sã n yɩɩd n zẽka, kibar-wẽng sẽn tũ sosayet a ye bal tõe n sãam portfey wã fãa n paase.';

  @override
  String get glossDividendGrowth5y =>
      'Dividãnd aksiõ fãa sẽn paas to-to yʋʋmd fãa, b sã n mak a sʋka, yʋʋm a nu sẽn loogã pʋgẽ. Paasg sẽn pa sãamde wilgdame tɩ kʋmpaanã tẽeda a ligd sẽn kẽedã; a sã n booge, yaa makr sẽn wilgd tɩ f gũus f meng.';

  @override
  String get glossYieldOnCost =>
      'Dividãnd nins f sẽn paam kiuug 12 sẽn loogã, pʋɩ ne ligd ning f sẽn yao aksiõ nins f sẽn ket n tarã. A pa wa dividãnd nafa ye: b makd-a-la ne ligd ning f sẽn yao n da wã, la pa ne rũndã ligdã ye.';

  @override
  String get glossTitle => 'A rat n yeel bõe?';

  @override
  String get watchNewsTitle => 'Kibay f aksiõ-rã wɛɛngẽ';

  @override
  String get undo => 'Lebs-y';

  @override
  String get watchSort => 'Tik-y';

  @override
  String get watchSortOwn => 'M sẽn tik to-to';

  @override
  String get watchSortGainers => 'Sẽn zẽk wʋsg n deng';

  @override
  String get watchSortLosers => 'Sẽn sig wʋsg n deng';

  @override
  String get watchSortName => 'Bãnde (A–Z)';

  @override
  String get watchHint =>
      'Dɩk n yãag gãnegrã n tik-y-yã, yãag-y goabg n yiis. Sulgã wilgda rasem 30 sẽn loogã.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: f vẽenegrã sõama.';
  }

  @override
  String alertFromCost(String price) {
    return 'F sẽn da ne ligd sẽn yaa sʋka wã ($price) zugu:';
  }

  @override
  String get briefTitle => 'Rũndã ne f aksɩyõnã';

  @override
  String get briefButton => 'Wilg rũndã koeemã';

  @override
  String get briefHint =>
      'AI koe-bõon sẽn wilgd f portefeuille la f sẽn nong-rã sẽn tõog n lebg rũndã la kibar-paals sẽn yet b yelle. A pa tũud ne vẽenegr ye.';

  @override
  String get briefRefresh => 'Lebg-y a paalgo';

  @override
  String get sectionEarnings => 'Kiuuy a tãab ligd-yɛla';

  @override
  String earningsNext(String date) {
    return 'Kibay sẽn watẽ: $date';
  }

  @override
  String get earningsExpected => 'EPS sẽn gũudã';

  @override
  String get earningsReported => 'EPS sẽn wilgã';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Ta wall yɩɩg EPS sẽn gũudã kiuuy $beats pʊgẽ, $total sẽn loogã pʊsẽ',
      one: 'Ta wall yɩɩg EPS sẽn gũudã kiuuy $beats pʊgẽ, 1 pʊsẽ',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol: kiuuy a tãab ligd-yɛla beoogo';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol: kiuuy a tãab ligd-yɛla rũndã';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return '$symbol: dividand sẽn gũud rũndã';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Wa $amount. A sã n ta, gʋls-a f portfolio wã pʋgẽ.';
  }

  @override
  String get dividendRemindersTitle => 'Dividand tẽegre';

  @override
  String get dividendRemindersSubtitle =>
      'Gũusgu daar ning dividand sẽn gũud, b sẽn geelg ne f sẽn gʋls yaoodã, tɩ f tõe n gʋls-a';

  @override
  String get earningsRemindersTitle => 'Ligd-yɛla tẽegre';

  @override
  String get earningsRemindersSubtitle =>
      'Gũusgu daar sẽn deng f nong-n-yɩɩda la f portfolio wã kiuuy a tãab ligd-yɛla';

  @override
  String addAllToFavorites(int count) {
    return 'Paas fãa nong-n-yɩɩda pʋgẽ ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Kẽes n yi ekrã foto';

  @override
  String get holdingsReading => 'D karemd f sẽn tar wã…';

  @override
  String get holdingsReviewTitle => 'Sẽn tar d sẽn yã';

  @override
  String get holdingsReviewHint =>
      'Ges sõorã sõma n yaool n naag-ba. Ligdã yaa f raab ligd zɩɩlgã aksɔ̃ yembr fãa, pa rũndã ligd ye.';

  @override
  String get holdingsNoPrice => 'Raab ligd zɩɩlg ka be foto wã pʋgẽ ye';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Naag bũmb $count',
      one: 'Naag bũmb a yembre',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'D pa yã aksɔ̃ bũmb foto kãng pʋgẽ ye. Maan f broker wã aksɔ̃ seb-neng ekrã foto n ges.';

  @override
  String get week52Range => 'Yʋʋmd pʋgẽ ligdã sɛgb';

  @override
  String week52BelowHigh(String percent) {
    return '$percent sik n yi yʋʋmd pʋgẽ yɩɩd fãa';
  }

  @override
  String get week52AtHigh => 'Yʋʋmd pʋgẽ yɩɩd fãa zĩigẽ';

  @override
  String get alertKindTrailing => 'Sigd n yi zʋʋgã';

  @override
  String get alertTrailingPercent => 'Sigr n yi zʋʋgã (%)';

  @override
  String get alertTrailingHint =>
      'A pʋgd ligdã yɩkre: a wilgdame ligdã sã n sig woto n yi a zʋʋg ning a sẽn paam hal fo sẽn ning-a wã.';

  @override
  String alertDescTrailing(String percent) {
    return 'Sigr $percent n yi zʋʋgã';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'zʋʋg hal masã: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol siga $percent n yi a zʋʋgã';
  }

  @override
  String get sectionInsiders => 'Taoor-dãmbã raabo la koosgo';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'raabo $count',
      one: 'raabo 1',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'koosgo $count',
      one: 'koosgo 1',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Net: aksiõ $shares';
  }

  @override
  String get insiderBuy => 'A raa';

  @override
  String get insiderSell => 'A koosa';

  @override
  String get insiderHint =>
      'Sosaytã taoor-dãmbã la a gʋbgdbã raabo la koosgo raag pʋgẽ rasem 90 sẽn loogã (SEC Form 4). Opsiõ tʋʋmd la aksiõ kõobo pa kãadẽ ye.';

  @override
  String get insiderNone =>
      'Taoor-dãmbã raabo bɩ koosgo pa be raag pʋgẽ rasem 90 sẽn loogã ye.';

  @override
  String get analystTrend => 'Tags rãmb sẽn tees kiuug fãa';

  @override
  String get watchListAll => 'Fãa';

  @override
  String get watchListNew => 'Liste paalga';

  @override
  String get watchListName => 'Listã yʋʋre';

  @override
  String get watchListRename => 'Toeem listã yʋʋre';

  @override
  String get watchListDelete => 'Yiis listã';

  @override
  String get watchListAddTo => 'Paas liste pʋgẽ';

  @override
  String get watchListEmpty =>
      'Aksyõ ka be liste-kãngã pʋgẽ ye. Ningi listã butõ wã sẽn be aksyõã taobã n paas-a.';

  @override
  String get portfolioAskTitle => 'Sokre: f portfey';

  @override
  String get rangeYtd => 'Yʋʋm kãnga';

  @override
  String get backupTitle => 'Sẽn bʋʋd n bilgi';

  @override
  String get backupSave => 'Bʋʋd sẽn bilgi';

  @override
  String get backupSaveHint =>
      'Fo nong-n-yɩɩda, fo listɛ, fo portfey, fo koosg gũusgo la fo gʋlsgo, fiyie a yembre pʋgẽ.';

  @override
  String get backupRestore => 'Lebg n yik sẽn bʋʋd n bilgã pʋgẽ';

  @override
  String get backupRestoreHint =>
      'A paasda bũmb ning sẽn be fiyiã pʋgẽ; bũmb ka na n yikd fo sẽn tar masã ye.';

  @override
  String get backupRestored => 'Sẽn bʋʋd n bilgã lebga.';

  @override
  String get backupInvalid => 'Fiyie kãngã pa WhatStock bʋʋd n bilgi ye.';

  @override
  String get allocationPositions => 'Aksiõ';

  @override
  String get allocationSectors => 'Tʋʋm zĩise';

  @override
  String get allocationCurrencies => 'Ligd buudu';

  @override
  String get allocationAccounts => 'Kõnte';

  @override
  String get compareReturn1y => 'Yʋʋm 1 yõodo';

  @override
  String get compareFromHigh => 'Sẽn yi yʋʋmd pʋgẽ yɩɩd fãa';

  @override
  String get briefAutoTitle => 'Daar fãa kibar-kɩɩbsã yibeoog fãa';

  @override
  String get briefAutoSubtitle =>
      '“Rũndã ne f aksɩyõnã” maanda a menga yibeoog 7:00 poor tɩ app-ã ket n tʋmda; ordinatɛɛr-dãmb zugu, moonegr na n wilg-f. A tũuda f daar fãa sokr sõorã, pa vẽenegr ye.';

  @override
  String get targetsButton => 'Pʋɩɩbã sẽn data';

  @override
  String get targetsTitle => 'Pʋɩɩbã sẽn data';

  @override
  String get targetsHint =>
      'Wilg aksiõ fãa sẽn segd n paam portfolio wã pʋɩɩr a wãna. Bas zĩigã vɩʋʋg sã n ka tar raabo. App wã na n wilga y sẽn segd n da bɩ n koose.';

  @override
  String targetsSum(String percent) {
    return 'Gilli: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Da ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Koose ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Ta raabã';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol: EPS sẽn gũudã zugu';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol: EPS sẽn gũudã tẽngre';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'EPS sẽn wilgã $actual, sẽn gũudã $estimate';
  }

  @override
  String get newsExplain => 'Woto rata n yeel bõe?';

  @override
  String get watchAlertAll => 'Kibay daar toeemd wʋsg yĩnga';

  @override
  String get watchAlertAllHint =>
      'Ligd kibay bõn fãa sẽn be liste kãngã pʋgẽ yĩnga: a na n togsa fo, a sã n toeem woto daar a yembre, n zẽk bɩ n sig. Sẽn da tara kibay pĩnda na n gũusa b rẽndã.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'B ningame kibay $count',
      one: 'B ningame kibay a yembre',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Yiis yõod ning sẽn paame (CSV)';

  @override
  String get portfolioAnnualReturn => 'Yʋʋmd nafa';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / yʋʋmde';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Yʋʋmd nafa sẽn makd ne ligdi (XIRR): a gẽesda wakat ning f sẽn da la f sẽn koosã, rẽ n so tɩ ligd ning f sẽn paas poorã pa sãamd-a ye. B wilgda-a f raab pipiigã sã n ta yʋʋmd a yembr bal; dividãnd pa be pʋgẽ ye.';

  @override
  String get eventsAddToCalendar => 'Paas kalandiyẽ pʋgẽ (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Portfolio kɩbare';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Gũusgu f portfolio wã fãa sã n toeem woto rasem a yembr pʋgẽ.';

  @override
  String get portfolioMoveAlertOff => 'Kisgame';

  @override
  String portfolioMoveUp(String percent) {
    return 'F portfolio wã zĩiga $percent rũnda';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'F portfolio wã sigame $percent rũnda';
  }

  @override
  String get whatIfTitle => 'Fo sã n da kẽes ligdi?';

  @override
  String get whatIfAmount => 'Ligd sõore';

  @override
  String whatIfResult(String amount, String period) {
    return 'Fo sã n da kẽes $amount $period pʋgẽ, rũndã a na n yaa';
  }

  @override
  String get whatIfNote =>
      'Yaa aksyõ yaoobã bal zugu: dividãnd, ligd sẽn yaod la lampo pa be ye. Pĩnd yɩɩbã pa wilgd beoog yɩɩbã ye.';

  @override
  String get watchShare => 'Pʋɩ liste wã';

  @override
  String get watchImport => 'Paas aksiõ bãnde';

  @override
  String get watchImportHint =>
      'Ning aksiõ bãnde n welg-b ne virgil, zĩ-vɩɩlg bɩ sẽ-paalga – wala liste ninga sẽn pʋɩ-a ne foo.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'B paasa aksiõ $count',
      one: 'B paasa aksiõ a yembre',
      zero: 'Aksiõ paalg ka be ye',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Sẽn yaa kãsems n deng';

  @override
  String get positionsSortGain => 'Nafa gilli sẽn yaa wʋsg n deng';

  @override
  String get positionsSortToday => 'Rũnda sẽn sõmb n deng';

  @override
  String get chartMyBuys => 'Fo raaba';

  @override
  String get chartMySells => 'Fo koosgo';

  @override
  String get shortcutsTitle => 'Klavye sor-kʋɩɩlse';

  @override
  String usMarketOpen(String time) {
    return 'Amerik raaga pakame · na n pagdame $time poorẽ';
  }

  @override
  String usMarketClosed(String time) {
    return 'Amerik raaga pagdame · na n pakame $time poorẽ';
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
    return '$days rasem $hours h';
  }

  @override
  String get dividendGoalSet => 'Ning dividãnd raabo kiuug fãa';

  @override
  String get dividendGoalTitle => 'Dividãnd raabo kiuug fãa';

  @override
  String get dividendGoalAmount => 'Dividãnd kiuug fãa';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return '≈ $amount kiuug fãa ne rũndã nafa · $percent · Raabo: $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return '≈ $amount kiuug fãa ne rũndã nafa · Raabã paame: $goal';
  }

  @override
  String get portfolioAccount => 'Kõnte';

  @override
  String get portfolioAccountHint => 'wala TBSZ 2026 (f sã n data)';

  @override
  String get portfolioAccountAdd => 'Wilg kõnte';

  @override
  String get portfolioAccountsAll => 'Kõnte fãa';

  @override
  String get portfolioAccountNote =>
      'Kõntã-kãngã raaba, koosgo la dividand bal. Ligdi, raabo la AI vɛɛsgo be \"Kõnte fãa\" pʋgẽ.';

  @override
  String get portfolioNoAccount => 'Kõnte ka be ye';

  @override
  String portfolioFee(String currency) {
    return 'Ligd sẽn yaod ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Paas ligd sẽn yaod';

  @override
  String portfolioFeeRow(String amount) {
    return 'Ligd sẽn yaod: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'Yʋʋmd fãa sõdbo';

  @override
  String get portfolioProceeds => 'Koosgã ligdi';

  @override
  String get portfolioCostBasis => 'Raabã ligdi';

  @override
  String get portfolioFeesPaid => 'Ligd sẽn yaod fãa';

  @override
  String get portfolioAnnualSummaryNote =>
      'Ligdã yaa ne a pipi ligd buudã, b pa lebg-a ye. Koosgã ligdã, b vʋʋsa koosgã ligd sẽn yaodã; raabã ligdã pʋgẽ, raabã ligd sẽn yaodã be (FIFO). F lampo sebrã yĩnga, lebg ne ligd teedg kʋʋng ning lampo tʋʋm-dãmbã sẽn baoodã.';

  @override
  String get portfolioShare => 'Pʋɩ nafa la bõnem';

  @override
  String get portfolioShareHeading => 'M portfey';

  @override
  String get portfolioTopHoldings => 'Aksiõ kãsems';

  @override
  String get portfolioShareNote => 'Yaa % bala la b pʋɩɩd, pa ligd sõor ye.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Aksiõ $count',
      one: 'Aksiõ $count',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'Pa sagls ligd kẽesg wɛɛngẽ ye';

  @override
  String get contributionButton => 'Kẽes ligd-paalga';

  @override
  String contributionAmount(String currency) {
    return 'Ligd sõore f sẽn na n kẽes ($currency)';
  }

  @override
  String get contributionHint =>
      'Da bala, koosg ka be: aksiõ nins sẽn ka ta b raabã wʋsgo n deng n paamd ligdã.';

  @override
  String contributionShares(String shares) {
    return '≈ aksiõ $shares';
  }

  @override
  String contributionMissing(String symbols) {
    return '$symbols koosg ka be masã ye: b pa kẽes-b pʋɩɩbã pʋgẽ ye.';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'Yʋʋmd nafa sã n kell n yaa woto ($rate), f na n paama f raabã yʋʋmd $year wakatã.';
  }

  @override
  String get portfolioMaxDrawdown => 'Sigr sẽn yɩɩd fãa';

  @override
  String get glossMaxDrawdown =>
      'F aksiõ-rãmbã yõodã sigr sẽn yɩɩd fãa, sẽn sɩng zĩ-zẽk sẽn da reng n tãag zĩ-sabl sẽn wa poorẽ, tɩ f raabã ne f koosgã pa be pʋgẽ ye (sẽn mak ne wakato). A wilgda f portfey wã sẽn sig n tãag zĩig ning hal tɛka.';

  @override
  String watchSince(String date) {
    return 'Sẽn sɩng f sẽn paas-a nong-n-yɩɩda pʋgẽ ($date)';
  }

  @override
  String get portfolioSampleTry => 'Maan n ges ne makr portfey';

  @override
  String get portfolioSampleBanner =>
      'Yaa makr portfey. Paas bũmb ning f sẽn da a sẽɛgẽ, bɩ f yiis-a.';

  @override
  String get portfolioSampleRemove => 'Yiis makrã';

  @override
  String get portfolioStopsAll => 'Kibay sigr n yi zʋʋgã aksiõ fãa yĩnga';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'B ningame kibay $count',
      one: 'B ningame kibay a yembre',
      zero: 'Aksiõ fãa tara kibay kãnga',
    );
    return '$_temp0';
  }

  @override
  String portfolioSinceSale(String percent) {
    return '$percent sẽn sɩng f sẽn koos-a';
  }

  @override
  String get lotPreviewRealized => 'Nafa sẽn paame koosg kãngã (FIFO):';

  @override
  String lotPreviewAverage(String after, String before) {
    return 'Koosg sʋka paalga: $after (masã $before)';
  }

  @override
  String get portfolioGoalSet => 'Ning raabo';

  @override
  String get portfolioGoalTitle => 'Portfey raabo';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · Raabo: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Raabã paame: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Yiis raabã';

  @override
  String get alertEdit => 'Toeem gũusgo';

  @override
  String get positionOpenLots => 'F ne-a hal masã (kʋdemdã n deng)';

  @override
  String get lotRemoved => 'Raabã bɩ koosgã yẽesame';

  @override
  String get alertDeleted => 'Kibay yẽesame';

  @override
  String get alertsClearTriggered => 'Yẽes kibay nins sẽn yikã';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'B yẽesame kibay $count',
      one: 'B yẽesame kibay a yembre',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Sebr pipi';

  @override
  String get allocationCountries => 'Tẽnse';

  @override
  String get newsExplainNoteResearch =>
      'AI wilgri: a baoodame sɩd-kãensã internet zugu, n pakd sɛbrã, la a gesd bãngr zĩigã sẽn tõe n teeg a to to-to wã. Pa sagls ligd kẽesg wɛɛngẽ ye. A tũuda f daar fãa sokr sõorã, pa vẽenegr ye.';

  @override
  String get sourceOfficial => 'Ofisiel';

  @override
  String get sourcePressRelease => 'Koɛ-moonego';

  @override
  String get sourceMajorNews => 'Kibay-zĩ kãsenga';

  @override
  String get sourceOpinion => 'Tagsgo';

  @override
  String get earningsSummaryButton =>
      'Bõe n da be kibar-sebr sẽn yaa pʋgdẽ wã pʋgẽ?';

  @override
  String get earningsSummaryNote =>
      'AI koe-bõonga kompaanyã ligd-yɛl kibarã la kibar-tʋʋmdbã sẽn gʋls a zugu, a sẽn yã internet zugã. Pa sagls ligd kẽesg wɛɛngẽ ye. A tũuda f daar fãa sokr sõorã, pa vẽenegr ye.';

  @override
  String get compareLastSurprise => 'Kiuug sẽn loogã EPS ne sẽn gũudã';

  @override
  String get compareNextReport => 'Kibay sẽn watẽ';

  @override
  String get resolvingDescription => 'D baooda aksiõ ning f sẽn dat n yeelã…';

  @override
  String get instrumentTitle => 'Teoog kãngã yelle';

  @override
  String get instrumentHint =>
      'Kompaanyã kibar ka be makr kãngã yĩng ye – a tõe n yaa ETF, ligd-koglg bɩ depo sebre. Sok AI a yaa bõe, bõe n be a pʋgẽ la a ligd yaa wãna.';

  @override
  String get instrumentAsk => 'Yaa bõe?';

  @override
  String get instrumentNote =>
      'AI bilgr sẽn yit yiisdã ligd-koglg seb-neng la ligd zĩis nins a sẽn yã internet zugã. Pa sagls ligd kẽesg wɛɛngẽ ye. A tũuda f daar fãa sokr sõorã, pa vẽenegr ye.';

  @override
  String suggestAskAi(String query) {
    return 'Sok AI: « $query »';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return '$symbols koosg ka be masã ye.';
  }

  @override
  String get eventsRecentResults => 'Ligd-yɛl paal sẽn wilgã';

  @override
  String get saveToNotes => 'Bĩng m gʋlsgã pʋgẽ';

  @override
  String get savedToNotes => 'Bĩnga f gʋlsgã pʋgẽ';

  @override
  String get portfolioDividendsReceived => 'Dividand nins f sẽn paam';

  @override
  String get portfolioDividendsThisYear => 'Yʋʋm-kãngã';

  @override
  String get portfolioDividendsAllTime => 'Fãa';

  @override
  String get portfolioAddDividend => 'Paas dividand';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Ligd ning f sẽn paam ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Yaoob daar';

  @override
  String get portfolioDividendsEmpty =>
      'Dividand ka gʋls ye. Paas-b ne f nug, bɩ f kẽes f broker-ã export – a dividand gʋlsgã me n dɩkd.';

  @override
  String get portfolioSplit => 'Paart-rãmbã pʋɩɩbo';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Paart-rãmbã pʋɩɩbo: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Raabã la koosgã sẽn maan pʋɩɩbã taoor toeemame: paart-rãmbã sõor paasdame la paart a ye ligdã boogdame, tɩ ligdã fãa pa toeem ye.';

  @override
  String get portfolioSplitRatio => 'Pʋɩɩb sõor (paalg : kʋdg)';

  @override
  String get portfolioSplitRatioError =>
      'Gʋls pʋɩɩb sõor wa 10:1, bɩ 1:10 pʋɩɩb lebgr yĩnga.';

  @override
  String get portfolioSplitDate => 'Pʋɩɩbã daar';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Paart-rãmbã pʋɩɩbo $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Paart-rãmbã pʋɩɩbo yiisame';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Paart pʋɩɩb $count paasame',
      one: 'Paart pʋɩɩb a 1 paasame',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dividand $count paasame',
      one: 'Dividand 1 paasame',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Yiis dividand rãmbã (CSV)';

  @override
  String get portfolioDividendDeleted => 'Dividand yiisame';

  @override
  String get portfolioDividendsHint =>
      'Ligdã yaa wa a sẽn wa f kont pʋgẽ, ne yaoob ligdã; a fãa toeemda ne rũndã kʋʋngã. F lampo sebrã yĩnga, tũnug ne f broker-ã sebrã.';

  @override
  String get awayTitle => 'F sẽn da ka be wã';

  @override
  String awaySince(String when) {
    return 'Sẽn sɩng $when';
  }

  @override
  String get awayQuiet => 'Bũmb ka toeem wʋsg ye.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Keoogo $count n yik',
      one: 'Keoog a 1 n yik',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Biisã sẽn togs: $symbols';
  }

  @override
  String get moveWhyButton => 'Bõe yĩng t\'a vẽnegd rũndã?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent rũndã';
  }

  @override
  String get moveWhyNote =>
      'AI wilgri sẽn yit rũndã kibay sẽn yã ẽntɛrnɛt zugu; võor hakɩkã tõe n pa mi bɩ a yaa toor. Pa ligd rɩk saglg ye. A rɩkda f daar fãa sokr sõor la pa vaeesg ye.';

  @override
  String get sectionTechnical => 'Tekniik yel-gesgã';

  @override
  String get labelSma50 => 'Rasem 50 pʋgẽ sũur-sũur';

  @override
  String get labelSma200 => 'Rasem 200 pʋgẽ sũur-sũur';

  @override
  String get labelRsi => 'RSI (rasem 14)';

  @override
  String get labelVolatility30 => 'Toeengã (rasem 30)';

  @override
  String techAbove(String percent) {
    return '$percent yĩngri';
  }

  @override
  String techBelow(String percent) {
    return '$percent tẽngri';
  }

  @override
  String get techOverbought => 'b da-a wʋsg tɩ looge';

  @override
  String get techOversold => 'b koos-a wʋsg tɩ looge';

  @override
  String get techNeutral => 'sʋka';

  @override
  String get techGoldenCross =>
      'Rasem 50 sũur-sũurã bee rasem 200 sũur-sũurã yĩngri – a kẽnda yĩngri wa b sẽn mi n gese.';

  @override
  String get techDeathCross =>
      'Rasem 50 sũur-sũurã bee rasem 200 sũur-sũurã tẽngri – a kẽnda tẽngri wa b sẽn mi n gese.';

  @override
  String get glossSma50 =>
      'Koosem rasem 50 sẽn loog wã pagb ligdã sũur-sũur. Ligd sẽn be a yĩngri, b mi n gesame tɩ yaa pãng wakat bilfu, sẽn be tẽngri yaa pãn-komslem.';

  @override
  String get glossSma200 =>
      'Koosem rasem 200 sẽn loog wã pagb ligdã sũur-sũur – wakat wok sor-wɛɛng sẽn mi n gese. Ligd-ningdb wʋsg gesda ligd sẽn be a yĩngri wa wakat wok kẽnd yĩngri.';

  @override
  String get glossRsi =>
      'Pãng makr index (RSI): a makda yõod sẽn paam nindaare ne bõn sẽn paam nindaare, 0 n tãag 100. Sẽn yɩɩd 70, b mi n yetame tɩ b da-a wʋsg tɩ looge (a kẽnga yĩngri tao-tao), sẽn pa ta 30, b koos-a wʋsg tɩ looge – la kẽnd sẽn tar pãng tõe n pa be wakat wok.';

  @override
  String get glossVolatility =>
      'Ligdã sẽn toeemd daar fãa to-to, b maka yʋʋmd a ye: 20% rat n yeelame tɩ yʋʋmd fãa a kẽnda ±20% sʋka. Toeeng sẽn yɩɩd rat n yeelame tɩ kẽnd bɛd sor a yiibã fãa.';

  @override
  String get techNote =>
      'B geelg-a lame ne daar fãa pagb ligdã. Tekniik bãnd wilgda sẽn loogã, la pa sẽn wat ye.';

  @override
  String portfolioAbove200(int above, int count) {
    return 'Zĩis $above sẽn be $count pʋgẽ yɩɩda b raar 200 pʋ-sʋkã';
  }

  @override
  String get watchSignalsTitle => 'Bãnda';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · b koos-a wʋsg tɩ looge';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · b da-a wʋsg tɩ looge';
  }

  @override
  String get signalCrossedAbove => 'yik n yɩɩg rasem 200 pʋgẽ sũur-sũurã';

  @override
  String get signalCrossedBelow => 'sig n lʋɩ rasem 200 pʋgẽ sũur-sũurã tẽngr';

  @override
  String get signalAlertsTitle => 'Tekniik bãnd rãmb kibay';

  @override
  String get signalAlertsSubtitle =>
      'Daar fãa vugr bala, f sẽn gũusd tʋʋm-pʋg ning b koos-a wʋsg tɩ looge bɩ b da-a wʋsg tɩ looge (RSI), bɩ a ligdã sẽn pɩʋʋg rasem 200 pʋgẽ sũur-sũurã.';

  @override
  String get signalAlertsNotification => 'Tekniik bãnd rãmba';

  @override
  String get glossaryPageTitle => 'Gom-biis võor';

  @override
  String get glossaryPageSubtitle =>
      'Wilgr sẽn yaa nana ne nimbr fãa ãpl wã sẽn wilgd, sẽn sɩng ne P/E n tãag RSI';

  @override
  String get glossarySearchHint => 'Bao gom-biis võor pʋgẽ';

  @override
  String get portfolioCash => 'Ligdi';

  @override
  String get portfolioCashTitle => 'Ligd sẽn ket';

  @override
  String get portfolioCashHint =>
      'Ligd sẽn ka kẽes f broker nengẽ, ligd buud fãa. B geelg-a-la yõod fãa la pʋɩɩbo pʋgẽ; la ka nafa pʋgẽ ye.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Ligd sõor ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Ning ligd sẽn ket';

  @override
  String get portfolioDividendsByMonth => 'Kiuug fãa';

  @override
  String get dividendsLegendReceived => 'Sẽn paam';

  @override
  String get dividendsLegendExpected => 'Sẽn gũud';

  @override
  String get portfolioDividendsExpected => 'Sẽn gũud tɩ wa';

  @override
  String get portfolioDividendsExpectedNote =>
      'B geelg-a-la ne f sẽn gʋls yaoodã raya la a ligdã; kompaniirã tõe n toeem-a bɩ b ka yao ye.';

  @override
  String portfolioDividendAround(String date) {
    return 'sẽn kolg $date';
  }
}
