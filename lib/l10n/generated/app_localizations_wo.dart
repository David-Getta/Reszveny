// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Wolof (`wo`).
class AppLocalizationsWo extends AppLocalizations {
  AppLocalizationsWo([String locale = 'wo']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'Jëlal nataalu aksiyoŋ te xam lépp ci moom.';

  @override
  String get homeHint =>
      'Kayitu aksiyoŋ, ekraŋu aplikasiyoŋu bursu, surnaal walla màndargay kompañi – lépp lu mën a won aksiyoŋ.';

  @override
  String get takePhoto => 'Jël nataal';

  @override
  String get chooseFromGallery => 'Tànn ci galeri bi';

  @override
  String get chooseImage => 'Tànn nataal';

  @override
  String get enterTickerManually => 'Bind màndarga bi ci sa loxo';

  @override
  String get tickerInputLabel => 'Màndargay aksiyoŋ';

  @override
  String get tickerInputHint => 'misaal: AAPL';

  @override
  String get lookUp => 'Seet';

  @override
  String demoModeBanner(String symbols) {
    return 'Mood demo – amul caabiy xibaari marse. Xibaar yu misaal am nañu ngir: $symbols.';
  }

  @override
  String get recognizing => 'Ñu ngi saytu nataal bi…';

  @override
  String get loadingData => 'Ñu ngi yebu xibaar yi…';

  @override
  String get noCandidatesTitle => 'Xàmmeewuñu benn aksiyoŋ';

  @override
  String get noCandidatesBody =>
      'Mënuñu xàmmee benn aksiyoŋ ci nataal bii. Jéemal ak nataal bu gën a leer, walla bindal màndarga bi ci sa loxo.';

  @override
  String get whatWeSaw => 'Li nu gis';

  @override
  String get chooseCandidateTitle => 'Ban aksiyoŋ nga bëggoon wax?';

  @override
  String confidencePercent(int percent) {
    return '$percent% kóolute';
  }

  @override
  String get settings => 'Tànneef';

  @override
  String get language => 'Làkk';

  @override
  String get systemLanguage => 'Li sistem bi tànn';

  @override
  String get about => 'Ci mbiri aplikasiyoŋ bi';

  @override
  String get disclaimer =>
      'Aplikasiyoŋ bii dafay joxe xibaar rekk, du ndigal ci wàllu dugal xaalis. Xibaar yi mën nañoo yéex walla juum.';

  @override
  String dataSource(String source) {
    return 'Fi xibaar yi jóge: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Xàmmee: $source';
  }

  @override
  String get retry => 'Jéemaatal';

  @override
  String get cancel => 'Neenal';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Tëj';

  @override
  String get errorGeneric => 'Am na njuumte.';

  @override
  String get errorSectionUnavailable => 'Mënuñu yebu xaaj bii.';

  @override
  String get notAvailable => 'amul';

  @override
  String get sectionIdentity => 'Màndarga yi';

  @override
  String get sectionPrice => 'Njëg';

  @override
  String get sectionValuation => 'Nattug njëg';

  @override
  String get sectionFinancials => 'Wàllu xaalis';

  @override
  String get sectionDividend => 'Dividand';

  @override
  String get sectionProfile => 'Xamle kompañi bi';

  @override
  String get sectionAnalysts => 'Xalaatu analist yi';

  @override
  String get sectionNews => 'Xibaar yi';

  @override
  String get sectionRecognition => 'Leeral ci xàmmee gi';

  @override
  String get labelSymbol => 'Màndarga';

  @override
  String get labelExchange => 'Bursu';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Xeetu xaalis';

  @override
  String get labelCountry => 'Réew';

  @override
  String get labelIndustry => 'Wàllu liggéey';

  @override
  String get labelSector => 'Sektëer';

  @override
  String get labelWebsite => 'Sit web';

  @override
  String get labelIpoDate => 'Bisu IPO';

  @override
  String get labelMarketCap => 'Kapitalisasiyoŋ';

  @override
  String get labelSharesOutstanding => 'Aksiyoŋ yi nekk ci marse';

  @override
  String get labelEmployees => 'Liggéeykat yi';

  @override
  String get labelCeo => 'Njiit';

  @override
  String get labelHeadquarters => 'Bérab bu mag';

  @override
  String get labelDescription => 'Melokaan';

  @override
  String get labelLastPrice => 'Njëg mu mujj';

  @override
  String get labelChange => 'Coppite';

  @override
  String get labelOpen => 'Njëgu ubbi';

  @override
  String get labelDayHigh => 'Gëna kawe ci bés bi';

  @override
  String get labelDayLow => 'Gëna suufe ci bés bi';

  @override
  String get labelPreviousClose => 'Njëgu tëj bu weesu';

  @override
  String get labelWeek52High => 'Gëna kawe ci 52 ayu-bés';

  @override
  String get labelWeek52Low => 'Gëna suufe ci 52 ayu-bés';

  @override
  String get labelAverageVolume10d => 'Dayob jaay-jënd bu diggu (10 fan)';

  @override
  String updatedAt(String time) {
    return 'Yeesal: $time';
  }

  @override
  String get labelPeTrailing => 'P/E (bu weesu)';

  @override
  String get labelPeForward => 'P/E (bu ñëw)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / xaalis bu des';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (12 weer yu mujj)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Njaay (12 weer yu mujj)';

  @override
  String get labelNetIncomeTtm => 'Benefis bu set (12 weer yu mujj)';

  @override
  String get labelGrossMargin => 'Dayob benefis bu njëkk';

  @override
  String get labelOperatingMargin => 'Dayob benefis ci liggéey';

  @override
  String get labelNetMargin => 'Dayob benefis bu set';

  @override
  String get labelRoe => 'Njureef ci alalu boppam';

  @override
  String get labelRoa => 'Njureef ci alal yépp';

  @override
  String get labelDebtToEquity => 'Bor / alalu boppam';

  @override
  String get labelCurrentRatio => 'Mën a fey bor yu gàtt';

  @override
  String get labelRevenueGrowth => 'Yokkuteg njaay (at ak at)';

  @override
  String get labelEpsGrowth => 'Yokkuteg EPS (at ak at)';

  @override
  String get labelDividendYield => 'Njureefu dividand';

  @override
  String get labelDividendPerShare => 'Dividand ci aksiyoŋ bu nekk';

  @override
  String get labelPayoutRatio => 'Dayob benefis bu ñu séddale';

  @override
  String get labelConsensus => 'Déggoo';

  @override
  String get ratingStrongBuy => 'Jënd bu dëgër';

  @override
  String get ratingBuy => 'Jënd';

  @override
  String get ratingHold => 'Denc';

  @override
  String get ratingSell => 'Jaay';

  @override
  String get ratingStrongSell => 'Jaay bu dëgër';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analist',
      one: '1 analist',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Diir: $period';
  }

  @override
  String get noNews => 'Amul xibaar yu bees.';

  @override
  String get openArticle => 'Ubbi jukki bi';

  @override
  String get openLinkFailed => 'Mënuñu ubbi lëkkalekaay bi.';

  @override
  String get recognitionSummary => 'Tënk';

  @override
  String get recognitionEvidence => 'Lu tax nu xalaat loolu';

  @override
  String get recognitionRawText => 'Mbind mi ñu jàng ci nataal bi';

  @override
  String get errMissingAnthropicKey =>
      'Xàmmeeb nataal bi jàppandiwul (amul ANTHROPIC_API_KEY). Bindal màndarga bi ci sa loxo.';

  @override
  String get errRecognitionUnreachable =>
      'Mënuñu jot ci sarwiisu xàmmee bi. Seetal sa internet.';

  @override
  String errRecognitionHttp(String status) {
    return 'Sarwiisu xàmmee bi delloo na njuumte (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Sarwiisu xàmmee bi mënul a liggéey ci nataal bii.';

  @override
  String get errRecognitionTruncated => 'Tontu xàmmee bi dagg na. Jéemaatal.';

  @override
  String get errRecognitionBadResponse =>
      'Sarwiisu xàmmee bi delloo na tontu bu ñu xaarul.';

  @override
  String get errRecognitionEmpty =>
      'Sarwiisu xàmmee bi delloo na tontu bu amul dara.';

  @override
  String get errMissingFinnhubKey =>
      'Xibaari marse yi jàppandiwuñu (amul FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Mënuñu jot ci sarwiisu xibaari marse bi. Seetal sa internet.';

  @override
  String get errMarketRateLimited =>
      'Laaj yi bari nañu lool ci sarwiisu xibaari marse bi. Xaaral benn minit.';

  @override
  String errMarketHttp(String status) {
    return 'Sarwiisu xibaari marse bi delloo na njuumte (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Sarwiisu xibaari marse bi delloo na tontu bu ñu xaarul.';

  @override
  String errNoQuote(String symbol) {
    return 'Gisuñu benn njëg ngir $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Gisuñu xamle kompañi ngir $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Mood demo bi dafay jàppale $symbols rekk. Yokkal FINNHUB_API_KEY ngir am xibaar yu tey.';
  }

  @override
  String errUnknown(String detail) {
    return 'Am na njuumte: $detail';
  }

  @override
  String get newSearch => 'Seet bu bees';

  @override
  String get recentSearches => 'Yu mujj';

  @override
  String get noRecentSearches => 'Amagul seet yu mujj.';

  @override
  String get clearRecent => 'Far yu mujj yi';

  @override
  String get greeting => 'Ban aksiyoŋ lanuy seet?';

  @override
  String get searchHint => 'Màndarga walla turu kompañi';

  @override
  String get attachImage => 'Takk nataal';

  @override
  String get searchResultsTitle => 'Li seet bi génne';

  @override
  String errNoResults(String query) {
    return 'Gisuñu benn aksiyoŋ ngir « $query ».';
  }

  @override
  String get quickBarHint => 'Bindal màndarga walla turu kompañi…';

  @override
  String get openFullWindow => 'Ubbi palanteer bi';

  @override
  String hotkeyHint(String shortcut) {
    return 'Bësal $shortcut fu mu mën a doon ngir woo WhatStock.';
  }

  @override
  String get trayOpen => 'Ubbi WhatStock';

  @override
  String get trayQuickSearch => 'Seet bu gaaw';

  @override
  String get trayQuit => 'Génn';

  @override
  String get appearance => 'Melo';

  @override
  String get themeSystem => 'Sistem';

  @override
  String get themeDark => 'Lëndëm';

  @override
  String get themeLight => 'Leer';

  @override
  String get back => 'Dellu';

  @override
  String get aiSectionTitle => 'Saytu AI';

  @override
  String get aiIntro =>
      'Leeral bu yaatu bu AI bind: tënku xibaar yu bees yi, liggéeyu kompañi bi, doole ak loraange yi ak li nëbbu, nattug njëg, gis-gisu njëg ak ay senaariyo ci wàllu xel, mbooloo, teknik ak koom-koom bu mag, ak li war a topp.';

  @override
  String get aiGenerate => 'Defar saytu';

  @override
  String get aiRegenerate => 'Defaraat';

  @override
  String get aiGenerating =>
      'Ñu ngi waajal saytu bi… mën na yàgg benn walla ñaari minit.';

  @override
  String get aiSources => 'Fi ñu jële';

  @override
  String aiGeneratedAt(String time) {
    return 'Defar nañu ko $time';
  }

  @override
  String get aiDisclaimer =>
      'AI moo defar saytu bii, ci xibaar yu siiwu ak xibaar yu bees. Mën na am ay njuumte walla mu màggat, te du ndigal ci dugal xaalis.';

  @override
  String get errAiNotConfigured =>
      'Saytu AI jàppandiwul (amul ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Mënuñu jot ci sarwiisu AI bi. Seetal sa internet.';

  @override
  String errAiHttp(String status) {
    return 'Sarwiisu AI bi delloo na njuumte (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Sarwiisu AI bi bañ na saytu aksiyoŋ bii.';

  @override
  String get errAiBadResponse => 'Sarwiisu AI bi delloo na tontu bu ñu xaarul.';

  @override
  String get sectionChart => 'Grafikub njëg';

  @override
  String get rangeOneWeek => '1S';

  @override
  String get rangeOneMonth => '1M';

  @override
  String get rangeThreeMonths => '3M';

  @override
  String get rangeOneYear => '1A';

  @override
  String get rangeFiveYears => '5A';

  @override
  String get chartUnavailable =>
      'Taariixu njëg mi amul ci fi xibaar yi jóge léegi.';

  @override
  String get sectionStatements => 'Kayiti xaalis (at mu nekk)';

  @override
  String get labelFiscalYear => 'Atum xaalis';

  @override
  String get labelRevenue => 'Njaay';

  @override
  String get labelNetIncome => 'Benefis bu set';

  @override
  String get labelTotalAssets => 'Alal yépp';

  @override
  String get labelTotalLiabilities => 'Bor yépp';

  @override
  String get labelEquity => 'Alalu boroom aksiyoŋ yi';

  @override
  String get labelOperatingCashFlow => 'Xaalis bu liggéey bi indi';

  @override
  String get statementsUnavailable =>
      'Kayiti xaalis yi amuñu ngir aksiyoŋ bii.';

  @override
  String get launchAtLogin => 'Tàmbali saa yoo duggee';

  @override
  String get hotkeyLabel => 'Yoon wu gàtt fépp';

  @override
  String get hotkeyRecordHint =>
      'Bësal fii, ba noppi bësal boto yu bees yi ñu boole';

  @override
  String get hotkeyReset => 'Delloo ko ni mu meloon';

  @override
  String get pasteImage => 'Taf nataal bi ñu kopi';

  @override
  String get errClipboardNoImage => 'Amul benn nataal bu ñu kopi.';

  @override
  String get favorites => 'Yi ma gënal';

  @override
  String get addToFavorites => 'Yokk ci yi ma gënal';

  @override
  String get removeFromFavorites => 'Far ci yi ma gënal';

  @override
  String get noFavorites =>
      'Amagul dara. Bësal biddiw bi ci aksiyoŋ ngir yokk ko.';

  @override
  String get displayCurrency => 'Xaalis bu ñuy wone';

  @override
  String get displayCurrencyNone => 'Xaalisu aksiyoŋ bi rekk';

  @override
  String labelConverted(String currency) {
    return '≈ ci $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Weccit: 1 $from = $rate $to (BCE, $date)';
  }

  @override
  String get updates => 'Yeesal yi';

  @override
  String currentVersion(String version) {
    return 'Wersiyoŋ $version';
  }

  @override
  String get autoUpdate => 'Samp yeesal yi ci boppam';

  @override
  String get checkForUpdates => 'Seet yeesal yi';

  @override
  String get updateChecking => 'Ñu ngi seet yeesal yi…';

  @override
  String get updateUpToDate => 'Yaa ngi ci wersiyoŋ bu mujj bi.';

  @override
  String updateAvailable(String version) {
    return 'Wersiyoŋ $version jàppandi na.';
  }

  @override
  String get updateDownloading => 'Ñu ngi yebu yeesal bi ci ginnaaw…';

  @override
  String get updateDownloaded => 'Yeesal bi pare na. Tàmbaliwaat ngir samp ko.';

  @override
  String get updateNow => 'Yeesal';

  @override
  String get restartNow => 'Tàmbaliwaat';

  @override
  String get updatesViaStore =>
      'Yeesal yi dañuy ñëw ci seen bopp jaare ci bitigu aplikasiyoŋ bi.';

  @override
  String get updateCheckFailed => 'Mënuñu seet yeesal yi.';

  @override
  String get subscription => 'Abonmaa';

  @override
  String get planTrial => 'Jéem';

  @override
  String get planNormal => 'Bu ñu miin';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Amul formil bu dox';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count saytu ci weer wi';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Jéem ci dara $days fan, ak $count saytu';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days fan yu jéem a des',
      one: '1 fan bu jéem a des',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Sa jéem ci dara jeex na. Tànnal benn formil ngir wéy di saytu.';

  @override
  String analysesRemaining(int remaining, int total) {
    return '$remaining saytu ci $total a des ci diir bii';
  }

  @override
  String extraCredits(int count) {
    return '$count saytu yu ñu yokk';
  }

  @override
  String renewsOn(String date) {
    return 'Dina yeesu $date';
  }

  @override
  String get choosePlan => 'Tànnal formil';

  @override
  String get currentPlan => 'Formil bi nga am';

  @override
  String get subscribe => 'Bindu';

  @override
  String get perMonth => '/ weer';

  @override
  String get extraPacksTitle => 'Soxla nga lu ëpp? Jëndal saytu yu ñu yokk';

  @override
  String get extraPacksHint =>
      'Saytu yu ñu yokk duñu jeex mukk, te ñuy jëfandikoo leen su sa dayob weer wi jeexee.';

  @override
  String get buy => 'Jënd';

  @override
  String get restorePurchases => 'Delloo say jënd';

  @override
  String get manageSubscription => 'Toppatoo abonmaa bi';

  @override
  String get purchaseSuccess => 'Jërëjëf! Sa jënd dox na.';

  @override
  String get purchasePending => 'Jënd bi ngi xaar…';

  @override
  String get purchaseFailed => 'Mënuñu matal jënd bi.';

  @override
  String get purchaseCanceled => 'Jënd bi neenu na.';

  @override
  String get billingUnavailable =>
      'Jënd mënagul a am ci platform bii. Bindu ci sa telefoon walla sa Mac; sa formil dina dox ci say masin yépp.';

  @override
  String get errQuotaExceeded =>
      'Desul la benn saytu ci diir bii. Yokkal sa formil walla jëndal saytu yu ñu yokk.';

  @override
  String get errTrialExpired =>
      'Sa jéem ci dara jeex na. Tànnal benn formil ngir wéy.';

  @override
  String get errNoPlan => 'Soxla nga formil bu dox ngir saytu AI.';

  @override
  String get viewPlans => 'Xool formil yi';

  @override
  String get usageTitle => 'Jëfandikoo';

  @override
  String get demoPurchaseNote =>
      'Fey demo: jënd yi ay misaal rekk lañu ci platform bii.';

  @override
  String get mostPopular => 'Ñi ëpp a ko tànn';

  @override
  String get bestValue => 'Njëg gu gën';

  @override
  String get planFeaturesCommon =>
      'Xàmmeeb nataal, xibaar yu tey, grafik yi, yi nga gënal ak 120 làkk yépp ñoo ngi ci formil yépp. Dayo bi mu ngi jëm ci saytu AI yi rekk.';

  @override
  String get searchLanguages => 'Seet làkk…';

  @override
  String get noLanguageMatch => 'Amul làkk bu dëppoo.';

  @override
  String get aiSettings => 'Saytu AI';

  @override
  String get aiLength => 'Guddaay';

  @override
  String get aiDepthBrief => 'Gàtt';

  @override
  String get aiDepthStandard => 'Digg';

  @override
  String get aiDepthDeep => 'Bu xóot';

  @override
  String get aiDepthBriefDesc => 'Li am solo rekk, ci gaaw.';

  @override
  String get aiDepthStandardDesc => 'Leeral bu mat ak xaaj yépp.';

  @override
  String get aiDepthDeepDesc =>
      'Seet yu ëpp ci internet, méngale ak kompañi yu ni mel, ak leeral bu gën a xóot.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Lu tollu ci $min–$max baat';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'dafay jël $count saytu',
      one: 'dafay jël 1 saytu',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Tolluwaayu jàngkat bi';

  @override
  String get aiReaderBeginner => 'Tàmbalikat';

  @override
  String get aiReaderExperienced => 'Boroom xam-xam';

  @override
  String get aiReaderBeginnerDesc =>
      'Làkk bu yomb; baat yu teknik yépp dañu leen di leeral.';

  @override
  String get aiReaderExperiencedDesc =>
      'Mbind mu gën a fees, ak baati xaalis yu ñu miin.';

  @override
  String get aiCounterArgument => 'Xalaat bu gëna dëgër bu ko safaanoo';

  @override
  String get aiCounterArgumentDesc =>
      'Tënk bi dafay mujj saa su nekk ak xalaat bi gëna baax bu safaanoo ak li mu wax.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ba $count seet ci internet ci saytu bu nekk ak sa formil',
      one: 'Ba 1 seet ci internet ci saytu bu nekk ak sa formil',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Guddaay bu digg ci formil: Bu ñu miin $normal, Pro $pro, Max $max, Ultra $ultra. Gàtt dafay jël 2 yu gën a tuuti, Bu xóot 2 yu ëpp.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ba $count seet ci internet',
      one: 'ba 1 seet ci internet',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count seet ci internet ci saytu bu nekk',
      one: '1 seet ci internet ci saytu bu nekk',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Guddaay bii dafay laaj $needed saytu, waaye $left rekk a des. Tànnal guddaay bu gën a gàtt ci Tànneef yi walla jëndal yeneen saytu.';
  }

  @override
  String get outlookMarketMood => 'Xelu marse bi';

  @override
  String get moodVeryPessimistic => 'Ñàkk yaakaar lool';

  @override
  String get moodPessimistic => 'Ñàkk yaakaar';

  @override
  String get moodNeutral => 'Ci diggante';

  @override
  String get moodOptimistic => 'Am yaakaar';

  @override
  String get moodVeryOptimistic => 'Am yaakaar lool';

  @override
  String get scenarioBull => 'Senaariyo yéeg';

  @override
  String get scenarioBase => 'Senaariyo digg';

  @override
  String get scenarioBear => 'Senaariyo wàcc';

  @override
  String outlookCurrentPrice(String price) {
    return 'Njëg mi léegi: $price';
  }

  @override
  String get outlookKeyLevels => 'Dayo yu am solo';

  @override
  String get keyLevelSupport => 'Jàppale';

  @override
  String get keyLevelResistance => 'Gàllankoor';

  @override
  String get keyLevelAnchor => 'Sukkandiku';

  @override
  String get upcomingEvents => 'Mbir yi di ñëw';

  @override
  String get outlookChartNote =>
      'Dayo yi ay misaal rekk lañu; mën-mën yi ay xalaat rekk lañu, du ay wax ci lu ñëw.';

  @override
  String get accountTitle => 'Kont';

  @override
  String get signIn => 'Dugg';

  @override
  String get signOut => 'Génn ci kont bi';

  @override
  String get notSignedIn => 'Duggagoo';

  @override
  String get accountBenefit => 'Duggal ngir sa abonmaa dox ci say masin yépp.';

  @override
  String get accountSyncedNote =>
      'Sa abonmaa ak saytu yi la des, benn lañu ci masin yépp.';

  @override
  String get signInTitle => 'Dugg ci WhatStock';

  @override
  String get emailLabel => 'Adrees imeel';

  @override
  String get continueWithEmail => 'Wéy ak imeel';

  @override
  String codeSentTo(String email) {
    return 'Yónne nanu kood bu am 6 siifar ci $email. Mu ngi dox diirub 10 minit.';
  }

  @override
  String get codeLabel => 'Koodu dugg';

  @override
  String get resendCode => 'Yónneel kood bu bees';

  @override
  String get useDifferentEmail => 'Jëfandikoo beneen imeel';

  @override
  String get errInvalidCode => 'Kood bi baaxul walla jeex na.';

  @override
  String get errInvalidEmail => 'Bindal adrees imeel bu baax.';

  @override
  String get errSignInFailed =>
      'Dugg bi antuwul. Seetal sa internet te jéemaat.';

  @override
  String get checkoutWaiting =>
      'Matalal fey bi ci sa navigatëer. Aplikasiyoŋ bi dina yeesu ci boppam bu noppee.';

  @override
  String get paymentViaStripe =>
      'Fey bu wóor ci sa navigatëer jaare ci Stripe. Mën nga ko neenal saa su la neexee.';

  @override
  String get paymentViaStore =>
      'Fey bi dafay jaare ci sa kontu App Store walla Google Play. Mën nga ko neenal saa su la neexee ci tànneefu bitig bi.';

  @override
  String get keySpace => 'Espace';

  @override
  String get doubleOptionTitle => 'Bësal Option ñaari yoon';

  @override
  String get doubleOptionSubtitle =>
      'Bës Option ñaari yoon ci gaaw dafay woo WhatStock itam.';

  @override
  String get doubleOptionPermission =>
      'Ngir mu dox ci yeneen aplikasiyoŋ itam, may WhatStock ci Réglages Système → Confidentialité et sécurité → Surveillance de l’entrée, ba noppi ubbiwaat aplikasiyoŋ bi.';

  @override
  String get openSystemSettings => 'Ubbi Réglages Système';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Bësal $shortcut walla bësal Option ñaari yoon fu mu mën a doon ngir woo WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Li gëna mën a am';

  @override
  String get longTermToday => 'Tey';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years at',
      one: '1 at',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range ci at mi';
  }

  @override
  String longTermLikely(String price) {
    return 'li gëna mën a am $price';
  }

  @override
  String get confidenceLow => 'Kóolute gu néew';

  @override
  String get confidenceMedium => 'Kóolute gu diggu';

  @override
  String get confidenceHigh => 'Kóolute gu kawe';

  @override
  String get longTermNote =>
      'Dayo yu yàgg yi ñu ngi sukkandiku ci xalaat yi ñu wax, te dañuy yaatu ak jamono. Njëg yi boolewul dividand. Ay xalaat rekk lañu, du ay wax ci lu ñëw.';

  @override
  String get portfolio => 'Sama aksiyoŋ yi';

  @override
  String get portfolioEmpty =>
      'Amagul dara fii. Ubbil aksiyoŋ te bës « Yokk ci sama aksiyoŋ yi » ngir topp li nga am.';

  @override
  String get portfolioLocalNote =>
      'Ci masin bii rekk lañu ko denc. Mboolem yi ñu ngi leen weccee ak njëgu BCE; njëg yi mën nañoo yéex.';

  @override
  String get addToPortfolio => 'Yokk ci sama aksiyoŋ yi';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Yokk $symbol';
  }

  @override
  String get portfolioQuantity => 'Limu aksiyoŋ';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Njëgu aksiyoŋ bu nekk ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Bisu jënd';

  @override
  String get portfolioAdd => 'Yokk';

  @override
  String get portfolioInvalidNumber => 'Bindal lim bu ëpp 0.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol yokku na ci sa aksiyoŋ yi.';
  }

  @override
  String get portfolioTotalValue => 'Mboolem njëg';

  @override
  String get portfolioToday => 'Tey';

  @override
  String get portfolioGainLoss => 'Benefis/ñàkk';

  @override
  String get portfolioInvested => 'Xaalis bi nga dugal';

  @override
  String get portfolioAllocation => 'Séddale';

  @override
  String get portfolioPositions => 'Aksiyoŋ yi';

  @override
  String portfolioAvgCost(String price) {
    return 'njëg mu diggu $price';
  }

  @override
  String get portfolioYourPosition => 'Li nga am';

  @override
  String get portfolioPurchases => 'Jënd yi';

  @override
  String get portfolioRemove => 'Far';

  @override
  String get portfolioExcluded =>
      'Aksiyoŋ yi amul njëg walla weccit, boolewuñu leen ci mboolem yi.';

  @override
  String get priceAlerts => 'Artu njëg';

  @override
  String get setPriceAlert => 'Def artu njëg';

  @override
  String alertDialogTitle(String symbol) {
    return 'Artu njëg · $symbol';
  }

  @override
  String get alertKindAbove => 'Su yéegee ba weesu';

  @override
  String get alertKindBelow => 'Su wàccee ba suufe';

  @override
  String get alertKindMove => 'Su coppitee lool ci benn bés';

  @override
  String alertTargetPrice(String currency) {
    return 'Njëg ($currency)';
  }

  @override
  String get alertMovePercent => 'Coppiteg bés (%)';

  @override
  String get alertAlreadyMet => 'Njëg mi weesu na dayo bii ba noppi.';

  @override
  String get alertSave => 'Def artu';

  @override
  String alertCreated(String symbol) {
    return 'Def nañu artu ngir $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Amagul benn artu njëg. Ubbil aksiyoŋ te bës sonet bi ngir def benn.';

  @override
  String get alertsNote =>
      'Ñuy seet artu yi 5 minit yu nekk bu WhatStock di dox. Ci ordinatëer, mu ngi wéy di dox ci barub menu walla ci tray bi; ci telefoon, fi mu nekk nii, artu yi dañuy ñëw su aplikasiyoŋ bi ubbeeku rekk.';

  @override
  String alertDescAbove(String price) {
    return 'Ci kaw $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Ci suufu $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Coppiteg bés ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Dox na $date ci $price';
  }

  @override
  String get alertRearm => 'Defaat ko';

  @override
  String get alertDelete => 'Far';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol yéeg na ba weesu $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol wàcc na ba suufe $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol coppiteeg na $percent tey';
  }

  @override
  String alertHitBody(String price) {
    return 'Njëg mi léegi: $price';
  }

  @override
  String get alertOpen => 'Ubbi';

  @override
  String get keepInTrayTitle => 'Wéy di dox bu palanteer bi tëjee';

  @override
  String get keepInTraySubtitle =>
      'WhatStock dafay des ci barub menu walla ci tray bi, ngir yoon wu gàtt wi ak artu njëg yi wéy di dox.';

  @override
  String get termsOfUse => 'Sàrti jëfandikoo';

  @override
  String get privacyPolicy => 'Politigu sutura';

  @override
  String get subscriptionLegal =>
      'Abonmaa yi dañuy yeesu ci seen bopp weer wu nekk ba nga neenal. Su nga bindoo, nangu nga Sàrti jëfandikoo ak Politigu sutura.';

  @override
  String get deleteAccount => 'Far kont bi';

  @override
  String get deleteAccountTitle => 'Far sa kont?';

  @override
  String get deleteAccountBody =>
      'Sa kont ak lépp lu ñu denc ci sunu serwëer (imeel, dayo, jëfandikoo) dinañu far ba fàww, te saytu yi nga jëfandikoowul dinañu réer. Abonmaa bu ñu fey ci navigatëer dinañu ko neenal ci saa si; abonmaa App Store walla Google Play, war nañu ko neenal ci tànneefu bitig bi.';

  @override
  String get deleteLocalData =>
      'Far itam xibaar yi nekk ci masin bii (aksiyoŋ yi, artu yi, yi nga gënal, taariix, saytu yu ñu denc)';

  @override
  String get deleteAccountConfirm => 'Far ba fàww';

  @override
  String get accountDeleted => 'Far nañu sa kont.';

  @override
  String get errDeleteAccount =>
      'Mënuñu far kont bi. Seetal sa internet te jéemaat.';

  @override
  String get aiTrialBriefNote =>
      'Saytu yi ci jéem bi gàtt lañu, te ab modèl AI bu gën a gaaw lañu leen di defe. Ak benn formil, dinga am sunu AI bi gën a mën, seet yu ëpp ci internet, ak guddaay Digg ak Bu xóot.';

  @override
  String get billingMonthly => 'Weer wu nekk';

  @override
  String get billingYearly => 'At mu nekk';

  @override
  String get yearlyDiscount => '2 weer yu amul fey';

  @override
  String get perYear => '/ at';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price ci weer wi';
  }

  @override
  String get subscriptionLegalYearly =>
      'Abonmaa yu at yi dañuy yeesu ci seen bopp at mu nekk ba nga neenal. Su nga bindoo, nangu nga Sàrti jëfandikoo ak Politigu sutura.';

  @override
  String get myAnalyses => 'Samay saytu';

  @override
  String get navAlerts => 'Artu';

  @override
  String get inviteTitle => 'Wone bu jëkk bu tëju';

  @override
  String get inviteBody =>
      'Léegi, ñi ñu woo rekk ñoo mën a jëfandikoo WhatStock. Dugalal koodu woote bi nga jot.';

  @override
  String get inviteCodeLabel => 'Koodu woote';

  @override
  String get inviteContinue => 'Wéy';

  @override
  String get inviteInvalid => 'Koodu woote bii baaxul.';

  @override
  String get inviteExpired =>
      'Woote bii jeex na. Laajal ki la woo benn kood bu bees.';

  @override
  String get inviteDeviceLimit =>
      'Koodu woote bii, ñu ngi koy jëfandikoo ba noppi ci limu masin yi gën a bare yi ñu may.';

  @override
  String get previewConfidential => 'Wone bu kumpa';

  @override
  String get errPreviewDailyLimit =>
      'Limu saytu yu tey yi ci wone bii jeex na. Jéemaatal ëllëg.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'am na $count waxtu',
      one: 'am na 1 waxtu',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'am na $count fan',
      one: 'am na 1 fan',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Ndax ñu yeesal saytu bii?';

  @override
  String staleBody(String age) {
    return 'Defar nañu ko $age. Njëg yi, xibaar yi ak njeexital yi man nañoo soppiku ci diggante bi.';
  }

  @override
  String get staleKeep => 'Wone bi jiitu';

  @override
  String get staleRefresh => 'Defar bu bees';

  @override
  String seeAll(int count) {
    return 'Gis yépp ($count)';
  }

  @override
  String get searchAnalyses => 'Seet ci say saytu';

  @override
  String get deleteAnalysis => 'Far';

  @override
  String analysisDeleted(String symbol) {
    return 'Far nañu saytu $symbol';
  }

  @override
  String get keyLevelAlertHint =>
      'Bës ci benn dayo ngir am artu bu njëg gi agsee fa.';

  @override
  String get shareAnalysisTitle => 'Séddoo saytu bi';

  @override
  String get shareAsImage => 'Séddoo ko ni nataal';

  @override
  String get shareAsText => 'Séddoo ko ni mbind';

  @override
  String get shareCardFooter => 'Defar nañu ko ak WhatStock';

  @override
  String get shareCardDisclaimer => 'Saytu AI · du ndigal ci dugal xaalis';

  @override
  String get referralTitle => 'Woo say xarit';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count saytu yu ñu yokk',
      one: '1 saytu bu ñu yokk',
    );
    return 'Séddoo sa kood. Sa xarit dina am ci saa si $_temp0, te yaw itam dinga am lu tollu noonu ginnaaw saytu bu jëkk bi mu def.';
  }

  @override
  String get referralYourCode => 'Sa kood';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Ñi nga woo: $invited · Ñi ñu yool: $rewarded';
  }

  @override
  String get referralHaveCode => 'Am nga kood bu sa xarit?';

  @override
  String get referralRedeem => 'Jëfandikoo';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Yokk nañu $count saytu. Dalal ak jàmm!',
      one: 'Yokk nañu 1 saytu. Dalal ak jàmm!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown => 'Kood bii amul. Seetaatal ko te jéemaat.';

  @override
  String get referralErrOwn => 'Mënuloo jëfandikoo sa kood bopp.';

  @override
  String get referralErrAlready => 'Jëfandikoo nga ba noppi kood bu sa xarit.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count saytu yu ñu yokk',
      one: '1 saytu bu ñu yokk',
    );
    return 'Damay saytu aksioŋ yi ak WhatStock: fotoal aksioŋ te AI dina la ko leeral. Ak sama kood $code dinga am $_temp0.';
  }

  @override
  String get referralCopied => 'Kood bi koppi nañu ko';

  @override
  String get onboardTitle1 => 'Jëlal nataalu aksiyoŋ';

  @override
  String get onboardBody1 =>
      'Ekraŋu aplikasiyoŋu bursu, ab surnaal walla màndargay kompañi doy na: WhatStock dina xàmmi aksiyoŋ bi te won la njëgam, grafik bi ak lim yi am solo.';

  @override
  String get onboardTitle2 => 'Xam ko ci ay simili rekk';

  @override
  String get onboardBody2 =>
      'Saytu AI bi dafay leeral li koy yengal aksiyoŋ bi, ay loraange, njëgam ju dëgg ak ñetti xalaat ci fan la njëg bi mën a jëm – ak fi xibaar yi jóge te ci sa làkk.';

  @override
  String get onboardTitle3 => 'Bul ñàkk benn xibaar';

  @override
  String get onboardBody3 =>
      'Yi ma gënal, sama aksiyoŋ yi ak artu njëg dinañu la yégal lu xew. Say saytu dañuy des ci sa jumtukaay, pare ngir nga ubbiwaat leen.';

  @override
  String get onboardNext => 'Ci kanam';

  @override
  String get onboardStart => 'Tàmbali';

  @override
  String get onboardSkip => 'Tëb';

  @override
  String changesTitle(String date) {
    return 'Li dale ci saytu bi jiitu ($date)';
  }

  @override
  String get changesPrice => 'Njëg';

  @override
  String get changesNoMajor => 'Li ñuy séentu soppikuwul lu bari.';

  @override
  String get changesPreviousSummary => 'Gàttal bi jiitu';

  @override
  String get telemetryTitle => 'Dimbali nu gën a rafetal WhatStock';

  @override
  String get telemetryBody =>
      'Séddoo limat yu amul tur ci jëfandikoo gi ak yéglekaay yu njuumte: ban mbir lañu jëfandikoo ak lan moo yàqu. Sa aksiyoŋ yi, sa saytu yi walla sa xibaar yu sutura duñu leen mukk yónne. Mën nga soppi lii saa su la neexee ci Tànneef.';

  @override
  String get telemetryAllow => 'Nangu';

  @override
  String get telemetryDecline => 'Déedéet, jërëjëf';

  @override
  String get telemetrySetting => 'Limat yu amul tur ak yéglekaay yu njuumte';

  @override
  String get telemetrySettingHint =>
      'Naka lañuy faral di jëfandikoo mbir yi ak yéglekaay yu njuumte, te amul sa xibaar yu sutura walla li nekk ci sa seet ak sa saytu.';

  @override
  String get askButton => 'Laaj ci saytu bii';

  @override
  String askTitle(String symbol) {
    return 'Laaj yi ci $symbol';
  }

  @override
  String get askIntro =>
      'Laajal lu la neex ci saytu bi: lu benn loraange tekki, lu mën a soppi li ñu séentu, naka lañu ame benn limu. Tontu yi ci saytu bii lañu sukkandiku, te du ndigal ci dugal xaalis.';

  @override
  String get askHint => 'Bindal sa laaj…';

  @override
  String get askSend => 'Yónne';

  @override
  String get askThinking => 'Mangi xalaat…';

  @override
  String get askSuggest1 => 'Lan mooy loraange bi gën a rëy?';

  @override
  String get askSuggest2 => 'Lan mën a soppi li ñu séentu?';

  @override
  String get askSuggest3 => 'Leeral ko ci anam bu yomb';

  @override
  String get askMaxReached =>
      'Loolu mooy laaj bu mujj bi ci saytu bii. Defaral saytu bu bees ngir laaj yeneen.';

  @override
  String get errAskLimit => 'Agsi nga ci limu laaj yu tey yi. Jéemaatal ëllëg.';

  @override
  String get eventTomorrow => 'Ëllëg';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'ci $days fan',
      one: 'ci 1 fan',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Njureef yu ñetti weer';

  @override
  String get eventBeforeOpen => 'balaa marse bi di ubbiku';

  @override
  String get eventAfterClose => 'bu marse bi tëjee';

  @override
  String eventEpsEstimate(String value) {
    return 'Xayma EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Ci sa saytu';

  @override
  String get eventsHint =>
      'Bisi njureef yu aksiyoŋ yi nga gënal ak yu sa portfolio ci 90 fan yii di ñëw, ak mbir yu am bis yi sa saytu yi tànn.';

  @override
  String get eventsEmpty =>
      'Amul mbir bu am bis ci 90 fan yii di ñëw. Yokkal yi nga gënal walla aksiyoŋ ngir gis fii seen bisi njureef.';

  @override
  String get compareTitle => 'Méngale';

  @override
  String get compareAdd => 'Yokk aksiyoŋ';

  @override
  String get compareRemove => 'Dindi';

  @override
  String get compareTickerHint => 'Màndargay aksiyoŋ, misaal MSFT';

  @override
  String get compareHint =>
      'Limi yu am solo yi ñu teg leen ci wetu; li gën ci rëdd gu nekk dañu ko feeñal. Xaalis yi ci xeetu xaalisu aksiyoŋ bu nekk lañu.';

  @override
  String get compareNoAnalysis => 'Amagul saytu';

  @override
  String get portfolioDividends => 'Dividand bu at';

  @override
  String portfolioDividendYield(String percent) {
    return 'Njureef $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Dividand bi ñu séentu at mu nekk dafa sukkandiku ci dividand yi ñu fey ci 12 weer yi weesu; feyu ëllëg yi wóoruñu.';

  @override
  String positionDividend(String amount) {
    return 'Dividand: $amount at mu nekk';
  }

  @override
  String get chartAvgCost => 'Sa diggu';

  @override
  String get chartAlertLevel => 'Artu';

  @override
  String get marketsToday => 'Marse yi tey';

  @override
  String get notesTitle => 'Samay notu';

  @override
  String get notesHint =>
      'Lu tax nga ko jënd, lan ngay topp, lan moo lay def nga jaay ko?';

  @override
  String get notesInfo =>
      'Ci masin bii rekk lañu ko denc. Saytu AI bi dafay jëfandikoo sa notu yi.';

  @override
  String notesSaved(String date) {
    return 'Denc nañu ko: $date';
  }

  @override
  String get peersTitle => 'Kompañi yu ko niru';

  @override
  String get portfolioExport => 'Génne ko ci CSV';

  @override
  String get portfolioImport => 'Duggal ko ci CSV';

  @override
  String get portfolioImportHint =>
      'Taqal benn jënd ci bépp rëdd: màndargay aksiyoŋ, lim, njëg, xeetu xaalis, bés (YYYY-MM-DD). Mën nañu xàjjale kolon yi ak wirgil, pwen-wirgil walla tab; rëddu bopp bi war-ul.';

  @override
  String get portfolioImportButton => 'Duggal';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Yokk nañu $count jënd',
      one: 'Yokk nañu 1 jënd',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Wacc nañu $count rëdd',
      one: 'Wacc nañu 1 rëdd',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Sa aksiyoŋ yi, yi nga gënal, artu njëg yi ak say notu ñoo yem ci say masin yépp.';

  @override
  String syncLast(String time) {
    return 'Synchro mujj: $time';
  }

  @override
  String get syncNow => 'Synchro léegi';

  @override
  String get syncFailed => 'Synchro bi antuwul. Dina jéemaat boppam.';

  @override
  String get alertEmailTitle => 'Imeel bu artu am';

  @override
  String get alertEmailOn =>
      'Danuy seet say artu ay minit yu néew yu nekk te yónnee la imeel, su aplikasiyoŋ bi tëju sax.';

  @override
  String get alertEmailSignIn =>
      'Dugg ak sa imeel ci Tànneef ngir jot artu yi ci imeel, su aplikasiyoŋ bi tëju sax.';

  @override
  String get portfolioHistory => 'Njëg ci diir jamono';

  @override
  String get portfolioReviewTitle => 'Saytu AI ci sa aksiyoŋ yi';

  @override
  String get portfolioReviewIntro =>
      'AI dina saytu sa aksiyoŋ yépp: ndax sa xaalis dajaloo na ci benn bérab, sektëer yi ak xaalisu réew yu wuute yi, loraange yi sa aksiyoŋ yi bokk, ak dividand yi. Dafay jël 1 saytu.';

  @override
  String get portfolioReviewButton => 'Saytul samay aksiyoŋ';

  @override
  String get portfolioReviewAgain => 'Saytuwaat';

  @override
  String get portfolioReviewWorking => 'Ñu ngi saytu sa aksiyoŋ yi…';
}
