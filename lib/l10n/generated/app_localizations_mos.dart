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
  String get eventsHint =>
      'Fo nong-n-yɩɩda la fo portfey sɛɛr-rãmbã ligd-yɛl rasem, rasem 90 sẽn watẽ wã pʊgẽ, la yɛl sẽn tar rasem fo vɛɛsgã sẽn wilgã.';

  @override
  String get eventsEmpty =>
      'Yɛl sẽn tar rasem ka be rasem 90 sẽn watẽ wã pʊgẽ ye. Paas nong-n-yɩɩda bɩ portfey sɛɛr n ges b ligd-yɛl rasem ka.';

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
}
