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

  @override
  String get digestTitle => 'Tënk bu ayu-bés ci imeel';

  @override
  String get digestHint =>
      'Altine bu nekk: naka la yi nga gënal ak sa aksiyoŋ yi demee ci ayu-bés bi weesu, ak bési njureef yi ñuy ñëw.';

  @override
  String get benchmarkTitle => 'Méngale ak S&P 500';

  @override
  String get benchmarkYours => 'Li nga jënd';

  @override
  String get benchmarkIndex => 'Xaalis bu mel noonu ci S&P 500';

  @override
  String benchmarkAhead(String points) {
    return 'Gën indeks bi ak $points poñ ci téeméer';
  }

  @override
  String benchmarkBehind(String points) {
    return 'Ci gannaaw indeks bi ak $points poñ ci téeméer';
  }

  @override
  String get benchmarkHint =>
      'Ni ku xaalisu bépp jënd duggoon ci benn fonds indeks S&P 500 ci bés boobu. Dividende yi bokkuñu ci; njariñ yu weesu wonewul yu ëllëg.';

  @override
  String get portfolioSell => 'Jaay';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Jaay $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Njëgu jaay aksiyoŋ bu nekk ($currency)';
  }

  @override
  String get portfolioSellDate => 'Bisu jaay';

  @override
  String get portfolioSellAll => 'Lépp';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Am nga $quantity';
  }

  @override
  String get portfolioSold => 'Jaaye';

  @override
  String get portfolioRealized => 'Benefis bu wér';

  @override
  String get portfolioClosed => 'Aksiyoŋ yi nga jaay';

  @override
  String get portfolioClosedNote => 'Jaay nga aksiyoŋ yi yépp';

  @override
  String get portfolioTransactions => 'Jënd ak jaay';

  @override
  String get portfolioRealizedByYear => 'Benefis bu wér at bu nekk';

  @override
  String get portfolioRealizedHint =>
      'Jaay yi dañuy jëkk a méngoo ak sa jënd yi gën a yàgg (FIFO), ñu soppi ko ci njëgu weccit xaalis bu tey. Ngir sa déclaration lempo, jëfandikool kayitu sa broker.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Ci gannaaw saytu bii, njureef yu bees yu ñetti weer génn nañu ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Njureef yu bees';

  @override
  String get portfolioImportBrokers =>
      'Dañu xam itam export yu Revolut, Trading 212 ak Interactive Brokers, ak njaay yi; dividand yi ak xaalis bi ñu dugal, dañu leen di bàyyi.';

  @override
  String get portfolioImportFile => 'Tànnal ab fichier';

  @override
  String offlineBanner(String time) {
    return 'Amul internet – ñu ngi wone xibaar yi ñu denc mujj ($time).';
  }

  @override
  String get glossMarketCap =>
      'Ni sosiete bi yépp jarée ci marse bi: njëgu aksiyoŋ × limu aksiyoŋ yi.';

  @override
  String get glossSharesOutstanding =>
      'Ñaata aksiyoŋ la sosiete bi génne. Bu lim bi yokkoo, aksiyoŋ bu nekk am na wàll gu gën a tuuti; bu sosiete bi jëndaatee ay aksiyoŋam, lim bi dafay wàññeeku.';

  @override
  String get glossPeTrailing =>
      'Njëg ÷ benefis ci aksiyoŋ bu nekk ci 12 weer yu mujj: ñaata atu benefis bu léegi ngay fey. Bu gën a suufe, gën a yomb, waaye sosiete yu gaaw a màgg dañuy faral di am P/E bu kawe.';

  @override
  String get glossPeForward =>
      'Ni P/E, waaye ak benefis bi analist yi xaar ci 12 weer yi di ñëw. Bu gën a suufe P/E bu weesu, dañuy xaar benefis bi yokku.';

  @override
  String get glossPb =>
      'Njëg ÷ njëgu kayit (alal ñu wàññi ci bor yi) ci aksiyoŋ bu nekk. Lu jege 1 mu ngi tekki ne marse bi dafa jagleel sosiete bi li mu am ci kayit.';

  @override
  String get glossPs =>
      'Njëgu marse ÷ njaay ci at mi. Am na njariñ ci sosiete yu amagul benefis walla yu ci am tuuti; méngaleel ko ak yeneen ci benn mbir.';

  @override
  String get glossEvToFcf =>
      'Njëgu sosiete bi ak bor yi (EV) ÷ xaalis bi mu defar ci benn at ginnaaw ay dugal. Bu gën a suufe, dangay jot xaalis bu ëpp ci njëg bi.';

  @override
  String get glossPeg =>
      'P/E ÷ yokkuteg benefis bi ñu xaar ci at mi (%). Lu jege 1 dañu koy faral di jàppe ni lu jaadu; dafay xool P/E ci leeru yokkuteg bi.';

  @override
  String get glossEps =>
      'Benefis ci aksiyoŋ bu nekk ci 12 weer yu mujj. EPS buy yokku at ak at mooy benn ci firnde yi gën a dëgër ci sosiete bu wér.';

  @override
  String get glossBeta =>
      'Ni aksiyoŋ bi di faral di yëngu ak marse bi: 1 = ni marse bi, 1,5 = yëngu yu ëpp lu tollu ci 50%, suufu 1 = gën a dal.';

  @override
  String get glossRevenueTtm =>
      'Njaay yépp ci 12 weer yu mujj, bala ñuy wàññi benn depans.';

  @override
  String get glossNetIncomeTtm =>
      'Benefis bi des ginnaaw depans yépp, intere yi ak lempo yi ci 12 weer yu mujj.';

  @override
  String get glossGrossMargin =>
      'Wàllu njaay bi des ginnaaw njëgu defar marsandiis yi. Dayo bu kawe day faral di wone kàttan ci tëral njëg.';

  @override
  String get glossOperatingMargin =>
      'Wàllu njaay bi des ginnaaw depansu doxal liggéey bi (peyoor, luwaas, marketing), bala intere ak lempo yi.';

  @override
  String get glossNetMargin =>
      'Wàllu njaay bi nekk benefis bu mujj. 20% mu ngi tekki ne ci 100 yu nekk ci njaay, 20 ay benefis la.';

  @override
  String get glossRoe =>
      'Njureef ci alalu boppam: benefis ci at mi ÷ alalu boroom yi. Dafay wone ni njiit yi di jëfandikoo xaalisu aksiyoner yi; lu ëpp 15% lu dëgër la.';

  @override
  String get glossRoa =>
      'Njureef ci alal yépp: benefis ci at mi ÷ lépp li sosiete bi am. Méngaleel ko ak yeneen ci benn mbir.';

  @override
  String get glossDebtToEquity =>
      'Bor ÷ alalu boroom yi. Bu gën a kawe, xaalis bu ñu leble bu ëpp: risk bu gën a rëy bu intere yi yokkoo walla liggéey bi yéexee.';

  @override
  String get glossCurrentRatio =>
      'Alal yu gàtt ÷ fey yi wara am ci biir benn at. Lu ëpp 1 mu ngi tekki ne sosiete bi mën na fey bor yi jege.';

  @override
  String get glossRevenueGrowth =>
      'Ni njaay yi yokkoo bu ñu ko méngalee ak at ma weesu.';

  @override
  String get glossEpsGrowth =>
      'Ni benefis ci aksiyoŋ bu nekk yokkoo bu ñu ko méngalee ak at ma weesu.';

  @override
  String get glossDividendYield =>
      'Dividand ci at mi ÷ njëgu aksiyoŋ: xaalis bi ngay jot at mu nekk, ci pursaŋ ci li nga fey.';

  @override
  String get glossDividendPerShare =>
      'Dividand bi ñu fey ci benn aksiyoŋ ci at ma weesu.';

  @override
  String get glossPayoutRatio =>
      'Wàllu benefis bi ñu séddale ni dividand. Lu ëpp 100%, sosiete bi dafay fey lu ëpp li mu gañe, te loolu yàggul.';

  @override
  String get glossTitle => 'Lan la tekki?';

  @override
  String get watchNewsTitle => 'Xibaar yi ci say aksiyoŋ';

  @override
  String get undo => 'Delloo';

  @override
  String get watchSort => 'Toftal';

  @override
  String get watchSortOwn => 'Sama toftal';

  @override
  String get watchSortGainers => 'Yi gëna yokk jëkk';

  @override
  String get watchSortLosers => 'Yi gëna wàññiku jëkk';

  @override
  String get watchSortName => 'Ci màndarga (A–Z)';

  @override
  String get watchHint =>
      'Diri jàppukaay bi ngir soppi toftal bi, raaxas ci càmmooñ ngir far. Rëdd bi day wone 30 fan yi weesu.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: sa xayma gi pare na.';
  }

  @override
  String alertFromCost(String price) {
    return 'Bu jëm ci sa njëgu jënd bu diggante ($price):';
  }

  @override
  String get briefTitle => 'Tey ak sa aksiyoŋ yi';

  @override
  String get briefButton => 'Gàttal tey';

  @override
  String get briefHint =>
      'Gàttal bu gàtt bu AI ci ni sa portefeuille ak yi nga bëgg yëngóo tey ak li xibaar yu bees yi wax ci seen mbir. Du jëfandikoo xayma.';

  @override
  String get briefRefresh => 'Yeesal';

  @override
  String get sectionEarnings => 'Njureef';

  @override
  String earningsNext(String date) {
    return 'Njureef bi ci topp: $date';
  }

  @override
  String get earningsExpected => 'EPS bi ñu séentu';

  @override
  String get earningsReported => 'EPS bi ñu yégle';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Yem walla ëpp EPS bi ñu séentu ci $beats ci $total ñetti weer yu mujj',
      one: 'Yem walla ëpp EPS bi ñu séentu ci $beats ci 1 ñetti weer',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol dina génne njureefam yu ñetti weer ëllëg';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol dina génne njureefam yu ñetti weer tey';
  }

  @override
  String get earningsRemindersTitle => 'Fàttali njureef';

  @override
  String get earningsRemindersSubtitle =>
      'Yégle benn bés balaa aksioŋ yi nga gënal walla yi nekk ci sa portfolio di génne seen njureef yu ñetti weer';

  @override
  String addAllToFavorites(int count) {
    return 'Yokk yépp ci yi ma gënal ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Duggal ko ci nataalu ekraan';

  @override
  String get holdingsReading => 'Ñu ngi jàng sa aksiyoŋ yi…';

  @override
  String get holdingsReviewTitle => 'Aksiyoŋ yi ñu gis';

  @override
  String get holdingsReviewHint =>
      'Seetal lim yi balaa nga leen yokk. Njëg gi mooy sa njëgu jënd bu diggu ci benn aksiyoŋ, du njëgu tey.';

  @override
  String get holdingsNoPrice => 'Amul njëgu jënd bu diggu ci nataal bi';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Yokk $count aksiyoŋ',
      one: 'Yokk 1 aksiyoŋ',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Gisuñu benn aksiyoŋ ci nataal bii. Jéemal nataalu ekraan bu xëtu aksiyoŋ yi walla alal ji ci sa kurtiye.';

  @override
  String get week52Range => 'Diggante 52 ayu-bés';

  @override
  String week52BelowHigh(String percent) {
    return '$percent ci suufu gëna kawe ci 52 ayu-bés';
  }

  @override
  String get week52AtHigh => 'Ci gëna kawe ci 52 ayu-bés';

  @override
  String get alertKindTrailing => 'Su wàccee ci kaw ga';

  @override
  String get alertTrailingPercent => 'Wàcc gi ci kaw ga (%)';

  @override
  String get alertTrailingHint =>
      'Dafay topp njëg bi su yéegee: dina la xamal su njëg bi wàccee nii ci fa mu gën a kawe ba nga ko tëralee.';

  @override
  String alertDescTrailing(String percent) {
    return 'Wàcc $percent ci kaw ga';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'fa mu gën a kawe ba leegi: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol wàcc na $percent ci kaw ga';
  }

  @override
  String get sectionInsiders => 'Jënd ak jaay yu ñi ci biir';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jënd',
      one: '1 jënd',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jaay',
      one: '1 jaay',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Lu des: $shares aksiyoŋ';
  }

  @override
  String get insiderBuy => 'Jënd na';

  @override
  String get insiderSell => 'Jaay na';

  @override
  String get insiderHint =>
      'Jënd ak jaay ci marse bu ubbeeku yi njiit yi ak direktëer yi def ci 90 fan yu mujj yi (SEC Form 4). Jëfandikoo opsiyoŋ ak aksiyoŋ yu ñu jox bokkul ci.';

  @override
  String get insiderNone =>
      'Amul benn jënd walla jaay bu ñi ci biir def ci marse bu ubbeeku ci 90 fan yu mujj yi.';

  @override
  String get analystTrend => 'Naka la xalaat yi soppeekoo weer ak weer';

  @override
  String get watchListAll => 'Yépp';

  @override
  String get watchListNew => 'Limm bu bees';

  @override
  String get watchListName => 'Turu limm bi';

  @override
  String get watchListRename => 'Soppi turu limm bi';

  @override
  String get watchListDelete => 'Far limm bi';

  @override
  String get watchListAddTo => 'Yokk ci limm';

  @override
  String get watchListEmpty =>
      'Amagul benn aksiyoŋ ci limm bii. Bësal butoŋu limm bi ci wetu aksiyoŋ bi ngir yokk ko.';

  @override
  String get portfolioAskTitle => 'Laaj yi ci sa aksiyoŋ yi';

  @override
  String get rangeYtd => 'At mii';

  @override
  String get backupTitle => 'Denc ngir kaaraange';

  @override
  String get backupSave => 'Denc ab kaaraange';

  @override
  String get backupSaveHint =>
      'Yi nga gënal, sa limm yi, sa aksiyoŋ yi, sa artu yi ak sa notu yi ci benn fiise.';

  @override
  String get backupRestore => 'Delloo ci kaaraange bi';

  @override
  String get backupRestoreHint =>
      'Dafay yokk li nekk ci fiise bi; dara ci li nga am léegi duñu ko far.';

  @override
  String get backupRestored => 'Kaaraange bi delsi na.';

  @override
  String get backupInvalid => 'Fiise bii du kaaraangeb WhatStock.';

  @override
  String get allocationPositions => 'Aksiyoŋ yi';

  @override
  String get allocationSectors => 'Sektëer yi';

  @override
  String get allocationCurrencies => 'Xaalis yi';

  @override
  String get compareReturn1y => 'Njariñ ci 1 at';

  @override
  String get compareFromHigh => 'Ci gëna kawe ci 52 ayu-bés';

  @override
  String get briefAutoTitle => 'Tënk bu bés bu nekk, suba su nekk';

  @override
  String get briefAutoSubtitle =>
      '“Tey ak sa aksiyoŋ yi” dafay defaru boppam ginnaaw 7:00 suba bi diggante bi app bi di dox; ci ordinaatëer yi, ab yégle dina la ko xamal. Dafay jëfandikoo sa limu laaj yu bés bu nekk, du xayma.';

  @override
  String get targetsButton => 'Séddale bu ñu bëgg';

  @override
  String get targetsTitle => 'Séddale bu ñu bëgg';

  @override
  String get targetsHint =>
      'Tànnal ñaata wàll ci portefeuille bi la aksiyoŋ bu nekk war a am. Bàyyil barab bi mu des su amul jubluwaay. Aplikasioŋ bi dina la won li nga war a jënd walla jaay.';

  @override
  String targetsSum(String percent) {
    return 'Lépp: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Jënd ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Jaay ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Ci jubluwaay bi';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol weesu na EPS bi ñu séentu';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol agsiwul EPS bi ñu séentu';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'EPS bi ñu yégle $actual, bi ñu séentu $estimate';
  }

  @override
  String get newsExplain => 'Lan la lii tekki?';

  @override
  String get watchAlertAll => 'Artu ci coppite yu mag ci bés';

  @override
  String get watchAlertAllHint =>
      'Artu njëg ngir bépp aksiyoŋ ci limm bii: dina la xamal bu coppitee nii ci benn bés, kaw walla suuf. Yi am benn ba noppi dinañu des ak seen bos.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Teg nañu $count artu',
      one: 'Teg nañu 1 artu',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Génne njariñ yi ñu am (CSV)';

  @override
  String get portfolioAnnualReturn => 'Benefis bu at';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / at';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Benefis bu at bu ñu natt ci xaalis bi (XIRR): dafay xool kañ nga jënd ak kañ nga jaay, kon xaalis bi nga yokk ginnaaw du ko yàq. Dañu koy wone su sa jënd bu jëkk weesoo benn at lu néew-néew; dividand yi bokkuñu ci.';

  @override
  String get eventsAddToCalendar => 'Yokk ci kalandiriye bi (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Artu portfolio';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Yégle bu sa portfolio yépp coppitee nii ci benn bés.';

  @override
  String get portfolioMoveAlertOff => 'Fey';

  @override
  String portfolioMoveUp(String percent) {
    return 'Sa portfolio yokku na $percent tey';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Sa portfolio wàcc na $percent tey';
  }

  @override
  String get whatIfTitle => 'Lu am bu nga dugaloon xaalis?';

  @override
  String get whatIfAmount => 'Limu xaalis';

  @override
  String whatIfResult(String amount, String period) {
    return 'Bu nga dugaloon $amount ci diirub $period, tey dina tollu';
  }

  @override
  String get whatIfNote =>
      'Dafa sukkandiku rekk ci njëgu aksiyoŋ bi: dividand, peyu liggéey ak galag bokku ci. Ñeel gu weesu waxul lu ëllëg di indi.';

  @override
  String get watchShare => 'Séddoo limm bi';

  @override
  String get watchImport => 'Yokk màndargay aksiyoŋ';

  @override
  String get watchImportHint =>
      'Taqal màndargay aksiyoŋ yu ñu xàjjale ak wirgil, barab bu dëng walla rëdd bu bees – misaal, limm bu kenn séddoo ak yow.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Yokk nañu $count aksiyoŋ',
      one: 'Yokk nañu 1 aksiyoŋ',
      zero: 'Amul aksiyoŋ bu bees',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Yi gëna mag jëkk';

  @override
  String get positionsSortGain => 'Benefis bu gëna bari jëkk';

  @override
  String get positionsSortToday => 'Yi gëna baax tey jëkk';

  @override
  String get chartMyBuys => 'Say jënd';

  @override
  String get chartMySells => 'Say jaay';

  @override
  String get shortcutsTitle => 'Yoon yu gàtt yu klawie';

  @override
  String usMarketOpen(String time) {
    return 'Marse Amerig ubbeeku na · dina tëju ci $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Marse Amerig tëju na · dina ubbeeku ci $time';
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
    return '$days fan $hours h';
  }

  @override
  String get portfolioGoalSet => 'Taxawal jublu';

  @override
  String get portfolioGoalTitle => 'Jublu sama aksiyoŋ yi';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · Jublu: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Agsi nga ci sa jublu: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Far jublu bi';

  @override
  String get alertEdit => 'Soppi artu bi';

  @override
  String get positionOpenLots =>
      'Ñu ngi ci sa loxo ba tey (yi gën a yàgg jëkk)';

  @override
  String get lotRemoved => 'Far nañu jënd walla jaay bi';

  @override
  String get alertDeleted => 'Far nañu artu bi';

  @override
  String get alertsClearTriggered => 'Far artu yi dox';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Far nañu $count artu',
      one: 'Far nañu 1 artu',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Xët bu njëkk';

  @override
  String get allocationCountries => 'Réew yi';

  @override
  String get newsExplainNoteResearch =>
      'Leeral bu AI defar: dafay seet dëgg yi ci web bi, ubbi jukki bi te natt ba ban dayo la fi ñu ko jële wóore. Du ndigal ci dugal xaalis. Dafay jëfandikoo sa limu laaj yu bés bu nekk, du xayma.';

  @override
  String get sourceOfficial => 'Ofisiyel';

  @override
  String get sourcePressRelease => 'Yégle';

  @override
  String get sourceMajorNews => 'Médiya bu mag';

  @override
  String get sourceOpinion => 'Xalaat';

  @override
  String get earningsSummaryButton => 'Lan moo nekkoon ci rapoor bu mujj bi?';

  @override
  String get earningsSummaryNote =>
      'Gàttal bu AI defar ci yégle njureefu sosete bi ak li jaaynde yi bind ci, mu gis ko ci web bi. Du ndigal ci dugal xaalis. Dafay jëfandikoo sa limu laaj yu bés bu nekk, du xayma.';

  @override
  String get compareLastSurprise => 'EPS bu mujj vs bi ñu séentu';

  @override
  String get compareNextReport => 'Njureef bi ci topp';

  @override
  String get resolvingDescription => 'Ñu ngi wut aksiyoŋ bi nga bëgg a wax…';

  @override
  String get instrumentTitle => 'Ci mbirum jumtukaay bii';

  @override
  String get instrumentHint =>
      'Amul profil sosete ci màndarga bii – mën na nekk ETF, fon walla kayitu depo. Laaj AI lu mu doon, lu ci nekk ak ñaata la jar.';

  @override
  String get instrumentAsk => 'Lii lan la?';

  @override
  String get instrumentNote =>
      'Leeral bu AI defar ci xëtu fon bu ki ko génne ak sit yu koppar yi mu gis ci web bi. Du ndigal ci dugal xaalis. Dafay jëfandikoo sa limu laaj yu bés bu nekk, du xayma.';

  @override
  String suggestAskAi(String query) {
    return 'Laaj AI: « $query »';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Amul njëg bu léegi ngir $symbols.';
  }

  @override
  String get eventsRecentResults => 'Njureef yu bees yi ñu yégle';
}
