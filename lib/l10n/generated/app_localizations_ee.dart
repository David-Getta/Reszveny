// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ewe (`ee`).
class AppLocalizationsEe extends AppLocalizations {
  AppLocalizationsEe([String locale = 'ee']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'Ɖe akpa aɖe ƒe foto eye nànya nu sia nu tso eŋu.';

  @override
  String get homeHint =>
      'Akpa ƒe agbalẽ, broker app ƒe sikrin, nyadzɔdzɔgbalẽ alo dɔwɔƒe ƒe dzesi – nu sia nu si fia akpa aɖe.';

  @override
  String get takePhoto => 'Ɖe foto';

  @override
  String get chooseFromGallery => 'Tia tso gallery me';

  @override
  String get chooseImage => 'Tia nɔnɔmetata';

  @override
  String get enterTickerManually => 'Ŋlɔ ticker la wò ŋutɔ';

  @override
  String get tickerInputLabel => 'Ticker dzesi';

  @override
  String get tickerInputHint => 'kpɔɖeŋu, AAPL';

  @override
  String get lookUp => 'Di';

  @override
  String demoModeBanner(String symbols) {
    return 'Demo mɔnu – womeɖo asi ŋuti nyatakaka ƒe safui aɖeke o. Kpɔɖeŋu nyatakakawo li na: $symbols.';
  }

  @override
  String get recognizing => 'Míele nɔnɔmetata la me kpɔm…';

  @override
  String get loadingData => 'Míele nyatakakawo xɔm…';

  @override
  String get noCandidatesTitle => 'Míekpɔ akpa aɖeke o';

  @override
  String get noCandidatesBody =>
      'Míete ŋu de dzesi akpa aɖeke le nɔnɔmetata sia me o. Ɖe foto si me kɔ wu, alo ŋlɔ ticker la wò ŋutɔ.';

  @override
  String get whatWeSaw => 'Nu si míekpɔ';

  @override
  String get chooseCandidateTitle => 'Akpa kae nèdi?';

  @override
  String confidencePercent(int percent) {
    return '$percent% kakaɖedzi';
  }

  @override
  String get settings => 'Ɖoɖowo';

  @override
  String get language => 'Gbe';

  @override
  String get systemLanguage => 'Sistem ƒe gbe';

  @override
  String get about => 'Eŋuti nyawo';

  @override
  String get disclaimer =>
      'App sia na nyatakakawo ko, menye aɖaŋuɖoɖo le gadede nu ŋu o. Nyatakakawo ate ŋu atsi megbe alo manɔ eme o.';

  @override
  String dataSource(String source) {
    return 'Nyatakakawo ƒe dzɔtsoƒe: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Dzesidede: $source';
  }

  @override
  String get retry => 'Gate kpɔ';

  @override
  String get cancel => 'Ɖe asi le eŋu';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Tui';

  @override
  String get errorGeneric => 'Nane gblẽ.';

  @override
  String get errorSectionUnavailable => 'Míete ŋu ɖe ta sia fia o.';

  @override
  String get notAvailable => 'meli o';

  @override
  String get sectionIdentity => 'Dzesiwo';

  @override
  String get sectionPrice => 'Asi';

  @override
  String get sectionValuation => 'Asi dzidzedze';

  @override
  String get sectionFinancials => 'Ga ŋuti nyawo';

  @override
  String get sectionDividend => 'Viɖemama';

  @override
  String get sectionProfile => 'Dɔwɔƒe ŋuti nyawo';

  @override
  String get sectionAnalysts => 'Numekulawo ƒe susu';

  @override
  String get sectionNews => 'Nyadzɔdzɔwo';

  @override
  String get sectionRecognition => 'Dzesidede ŋuti nyawo';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Akpawo ƒe asi';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Ga ƒomevi';

  @override
  String get labelCountry => 'Dukɔ';

  @override
  String get labelIndustry => 'Dɔwɔwɔ ƒomevi';

  @override
  String get labelSector => 'Dɔwɔwɔ ƒe akpa';

  @override
  String get labelWebsite => 'Website';

  @override
  String get labelIpoDate => 'IPO ŋkeke';

  @override
  String get labelMarketCap => 'Akpawo katã ƒe asi';

  @override
  String get labelSharesOutstanding => 'Akpa siwo le asi me';

  @override
  String get labelEmployees => 'Dɔwɔlawo';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Dɔwɔƒe gã';

  @override
  String get labelDescription => 'Ɖeɖefia';

  @override
  String get labelLastPrice => 'Asi mamlɛtɔ';

  @override
  String get labelChange => 'Tɔtrɔ';

  @override
  String get labelOpen => 'Gɔmedzedze asi';

  @override
  String get labelDayHigh => 'Ŋkeke la ƒe asi kɔkɔtɔ';

  @override
  String get labelDayLow => 'Ŋkeke la ƒe asi bɔbɔtɔ';

  @override
  String get labelPreviousClose => 'Nuwuwu asi si va yi';

  @override
  String get labelWeek52High => 'Kwasiɖa 52 ƒe asi kɔkɔtɔ';

  @override
  String get labelWeek52Low => 'Kwasiɖa 52 ƒe asi bɔbɔtɔ';

  @override
  String get labelAverageVolume10d => 'Asitsatsa ƒe agbɔsɔsɔ titina (ŋkeke 10)';

  @override
  String updatedAt(String time) {
    return 'Wowɔe yeye $time';
  }

  @override
  String get labelPeTrailing => 'P/E (si va yi)';

  @override
  String get labelPeForward => 'P/E (si gbɔna)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / ga si susɔ (FCF)';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (ɣleti 12 siwo va yi)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Gaxɔxɔ (ɣleti 12 siwo va yi)';

  @override
  String get labelNetIncomeTtm => 'Viɖe ŋutɔŋutɔ (ɣleti 12 siwo va yi)';

  @override
  String get labelGrossMargin => 'Viɖe ƒe akpa katã';

  @override
  String get labelOperatingMargin => 'Dɔwɔwɔ ƒe viɖe akpa';

  @override
  String get labelNetMargin => 'Viɖe ƒe akpa ŋutɔŋutɔ';

  @override
  String get labelRoe => 'Viɖe le akpatɔwo ƒe ga ŋu';

  @override
  String get labelRoa => 'Viɖe le nunɔamesiwo ŋu';

  @override
  String get labelDebtToEquity => 'Fe / akpatɔwo ƒe ga';

  @override
  String get labelCurrentRatio => 'Fe kpuiwo xexe ŋutete';

  @override
  String get labelRevenueGrowth => 'Gaxɔxɔ ƒe dzidziɖedzi (ƒe kple ƒe)';

  @override
  String get labelEpsGrowth => 'EPS ƒe dzidziɖedzi (ƒe kple ƒe)';

  @override
  String get labelDividendYield => 'Viɖemama ƒe agbɔsɔsɔ';

  @override
  String get labelDividendPerShare => 'Viɖemama le akpa ɖesiaɖe ŋu';

  @override
  String get labelPayoutRatio => 'Viɖe si wona ƒe agbɔsɔsɔ';

  @override
  String get labelConsensus => 'Susu si wolɔ̃ ɖe edzi';

  @override
  String get ratingStrongBuy => 'Ƒle vevie';

  @override
  String get ratingBuy => 'Ƒle';

  @override
  String get ratingHold => 'Lé ɖe asi';

  @override
  String get ratingSell => 'Dzra';

  @override
  String get ratingStrongSell => 'Dzra vevie';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'numekula $count',
      one: 'numekula 1',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Ɣeyiɣi: $period';
  }

  @override
  String get noNews => 'Nyadzɔdzɔ yeye aɖeke meli o.';

  @override
  String get openArticle => 'Ʋu nuŋlɔɖi la';

  @override
  String get openLinkFailed => 'Míete ŋu ʋu link la o.';

  @override
  String get recognitionSummary => 'Nya kpuie';

  @override
  String get recognitionEvidence => 'Nu si ta míebu nenema';

  @override
  String get recognitionRawText => 'Nuŋɔŋlɔ si míexlẽ le nɔnɔmetata la dzi';

  @override
  String get errMissingAnthropicKey =>
      'Womeɖo nɔnɔmetata dzesidede ɖi o (ANTHROPIC_API_KEY meli o). Ŋlɔ ticker la wò ŋutɔ.';

  @override
  String get errRecognitionUnreachable =>
      'Míete ŋu ɖo dzesidede sɛvis la gbɔ o. Kpɔ wò internet kadodo.';

  @override
  String errRecognitionHttp(String status) {
    return 'Dzesidede sɛvis la ɖo vodada ɖa (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Dzesidede sɛvis la mete ŋu wɔ dɔ ɖe nɔnɔmetata sia ŋu o.';

  @override
  String get errRecognitionTruncated =>
      'Dzesidede ƒe ŋuɖoɖo la tso le titina. Taflatse, gate kpɔ.';

  @override
  String get errRecognitionBadResponse =>
      'Ŋuɖoɖo si míekpɔ mɔ na o tso dzesidede sɛvis la gbɔ.';

  @override
  String get errRecognitionEmpty => 'Dzesidede sɛvis la ɖo ŋuɖoɖo gbɔlo ɖa.';

  @override
  String get errMissingFinnhubKey =>
      'Womeɖo asi ŋuti nyatakakawo ɖi o (FINNHUB_API_KEY meli o).';

  @override
  String get errMarketUnreachable =>
      'Míete ŋu ɖo asi ŋuti nyatakaka sɛvis la gbɔ o. Kpɔ wò internet kadodo.';

  @override
  String get errMarketRateLimited =>
      'Biabia geɖe akpa yi asi ŋuti nyatakaka sɛvis la gbɔ. Taflatse, lala miniti ɖeka.';

  @override
  String errMarketHttp(String status) {
    return 'Asi ŋuti nyatakaka sɛvis la ɖo vodada ɖa (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Ŋuɖoɖo si míekpɔ mɔ na o tso asi ŋuti nyatakaka sɛvis la gbɔ.';

  @override
  String errNoQuote(String symbol) {
    return 'Míekpɔ asi ŋuti nyatakaka aɖeke na $symbol o.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Míekpɔ dɔwɔƒe ŋuti nyatakaka aɖeke na $symbol o.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Demo mɔnu la xɔ $symbols ko. Tsɔ FINNHUB_API_KEY kpe ɖe eŋu be nàkpɔ nyatakaka yeyewo.';
  }

  @override
  String errUnknown(String detail) {
    return 'Nane gblẽ: $detail';
  }

  @override
  String get newSearch => 'Didi yeye';

  @override
  String get recentSearches => 'Nyitsɔ laa tɔwo';

  @override
  String get noRecentSearches => 'Mèdi naneke nyitsɔ laa o.';

  @override
  String get clearRecent => 'Tutu nyitsɔ laa tɔwo';

  @override
  String get greeting => 'Akpa kae míakpɔ?';

  @override
  String get searchHint => 'Ticker alo dɔwɔƒe ƒe ŋkɔ';

  @override
  String get attachImage => 'Tsɔ nɔnɔmetata kpe ɖe eŋu';

  @override
  String get searchResultsTitle => 'Didi ƒe emetsonuwo';

  @override
  String errNoResults(String query) {
    return 'Míekpɔ akpa aɖeke na “$query” o.';
  }

  @override
  String get quickBarHint => 'Ŋlɔ ticker alo dɔwɔƒe ƒe ŋkɔ…';

  @override
  String get openFullWindow => 'Ʋu fesre';

  @override
  String hotkeyHint(String shortcut) {
    return 'Zi $shortcut afi sia afi be nàyɔ WhatStock.';
  }

  @override
  String get trayOpen => 'Ʋu WhatStock';

  @override
  String get trayQuickSearch => 'Didi kabakaba';

  @override
  String get trayQuit => 'Dzudzɔ';

  @override
  String get appearance => 'Nɔnɔme';

  @override
  String get themeSystem => 'Sistem';

  @override
  String get themeDark => 'Viviti';

  @override
  String get themeLight => 'Kekeli';

  @override
  String get back => 'Trɔ megbe';

  @override
  String get aiSectionTitle => 'AI numekuku';

  @override
  String get aiIntro =>
      'Ɖeɖefia tsitotsito si AI ŋlɔ: nyadzɔdzɔ yeyewo ƒe nya kpuie, dɔwɔƒe la ƒe dɔ, eƒe ŋusẽ kple afɔku siwo le eŋu kple nu ɣaɣlawo, asi dzidzedze, asi si gbɔna kple nu siwo ate ŋu adzɔ le susu, hadomegbenɔnɔ, technical kple ganyawo ƒe akpa gã nu, kpakple nu siwo wòle be nàkpɔ ɖa.';

  @override
  String get aiGenerate => 'Wɔ numekuku';

  @override
  String get aiRegenerate => 'Gawɔe';

  @override
  String get aiGenerating =>
      'Míele numekuku la dzram ɖo… ate ŋu axɔ miniti ɖeka alo eve.';

  @override
  String get aiSources => 'Dzɔtsoƒewo';

  @override
  String aiGeneratedAt(String time) {
    return 'Wowɔe $time';
  }

  @override
  String get aiDisclaimer =>
      'AI ye wɔ numekuku sia tso nyatakaka siwo le ame sia ame si kple nyadzɔdzɔ yeyewo me. Vodadawo ate ŋu anɔ eme alo wòanye xoxo, eye menye aɖaŋuɖoɖo le gadede nu ŋu o.';

  @override
  String get errAiNotConfigured =>
      'Womeɖo AI numekuku ɖi o (ANTHROPIC_API_KEY meli o).';

  @override
  String get errAiUnreachable =>
      'Míete ŋu ɖo AI sɛvis la gbɔ o. Kpɔ wò internet kadodo.';

  @override
  String errAiHttp(String status) {
    return 'AI sɛvis la ɖo vodada ɖa (HTTP $status).';
  }

  @override
  String get errAiRefused =>
      'AI sɛvis la gbe be yemawɔ numekuku le akpa sia ŋu o.';

  @override
  String get errAiBadResponse =>
      'Ŋuɖoɖo si míekpɔ mɔ na o tso AI sɛvis la gbɔ.';

  @override
  String get sectionChart => 'Asi ƒe nɔnɔmetata';

  @override
  String get rangeOneWeek => '1K';

  @override
  String get rangeOneMonth => '1Ɣ';

  @override
  String get rangeThreeMonths => '3Ɣ';

  @override
  String get rangeOneYear => '1Ƒ';

  @override
  String get rangeFiveYears => '5Ƒ';

  @override
  String get chartUnavailable =>
      'Asi ƒe ŋutinya meli le nyatakaka dzɔtsoƒe si le zãzãm fifia me o.';

  @override
  String get sectionStatements => 'Ga ŋuti akɔntabubuwo (ƒe sia ƒe)';

  @override
  String get labelFiscalYear => 'Ga ƒe';

  @override
  String get labelRevenue => 'Gaxɔxɔ';

  @override
  String get labelNetIncome => 'Viɖe ŋutɔŋutɔ';

  @override
  String get labelTotalAssets => 'Nunɔamesiwo katã';

  @override
  String get labelTotalLiabilities => 'Fe katã';

  @override
  String get labelEquity => 'Akpatɔwo ƒe ga';

  @override
  String get labelOperatingCashFlow => 'Ga si dɔwɔwɔ he vɛ';

  @override
  String get statementsUnavailable =>
      'Ga ŋuti akɔntabubuwo meli na akpa sia o.';

  @override
  String get launchAtLogin => 'Dze egɔme ne ège ɖe eme';

  @override
  String get hotkeyLabel => 'Mɔ kpui (afi sia afi)';

  @override
  String get hotkeyRecordHint =>
      'Zi afi sia, emegbe zi safui yeye siwo nèwɔ ɖekae';

  @override
  String get hotkeyReset => 'Trɔ yi gɔmedzedze ɖoɖo dzi';

  @override
  String get pasteImage => 'Tsɔ nɔnɔmetata si nèkɔpi la de eme';

  @override
  String get errClipboardNoImage => 'Nɔnɔmetata aɖeke mele nu si nèkɔpi me o.';

  @override
  String get favorites => 'Nye lɔlɔ̃tɔwo';

  @override
  String get addToFavorites => 'Tsɔ kpe ɖe nye lɔlɔ̃tɔwo ŋu';

  @override
  String get removeFromFavorites => 'Ɖe ɖa le nye lɔlɔ̃tɔwo me';

  @override
  String get noFavorites =>
      'Naneke meli haɖe o. Zi ɣletivi la le akpa aɖe dzi be nàtsɔe akpe ɖe eŋu.';

  @override
  String get displayCurrency => 'Ga si woaɖe afia';

  @override
  String get displayCurrencyNone => 'Akpa la ŋutɔ ƒe ga ko';

  @override
  String labelConverted(String currency) {
    return '≈ le $currency me';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Gatɔtrɔ ƒe asi: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Yeyewɔwɔwo';

  @override
  String currentVersion(String version) {
    return 'Version $version';
  }

  @override
  String get autoUpdate => 'De yeyewɔwɔwo eme le eɖokui si';

  @override
  String get checkForUpdates => 'Kpɔ yeyewɔwɔwo';

  @override
  String get updateChecking => 'Míele yeyewɔwɔwo kpɔm…';

  @override
  String get updateUpToDate => 'Èle version yeyetɔ dzi.';

  @override
  String updateAvailable(String version) {
    return 'Version $version li.';
  }

  @override
  String get updateDownloading => 'Yeyewɔwɔ la le ɖeɖem le megbe…';

  @override
  String get updateDownloaded =>
      'Yeyewɔwɔ la le klalo. Gadze egɔme be nàde eme.';

  @override
  String get updateNow => 'Wɔe yeye';

  @override
  String get restartNow => 'Gadze egɔme';

  @override
  String get updatesViaStore =>
      'Yeyewɔwɔwo vana le wo ɖokui si to app store la dzi.';

  @override
  String get updateCheckFailed => 'Míete ŋu kpɔ yeyewɔwɔwo o.';

  @override
  String get subscription => 'Subscription';

  @override
  String get planTrial => 'Tetekpɔ';

  @override
  String get planNormal => 'Dzɔdzɔme';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Plan aɖeke mele dɔ wɔm o';

  @override
  String planAnalysesPerMonth(int count) {
    return 'Numekuku $count ɣleti sia ɣleti';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Tetekpɔ femaxee ŋkeke $days kple numekuku $count';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Tetekpɔ ŋkeke $days susɔ',
      one: 'Tetekpɔ ŋkeke 1 susɔ',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Wò tetekpɔ femaxee la wu enu. Tia plan aɖe be nàyi edzi anɔ numekuku wɔm.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Numekuku $remaining susɔ le $total me le ɣeyiɣi sia me';
  }

  @override
  String extraCredits(int count) {
    return 'Numekuku $count bubuwo';
  }

  @override
  String renewsOn(String date) {
    return 'Awɔe yeye $date';
  }

  @override
  String get choosePlan => 'Tia plan';

  @override
  String get currentPlan => 'Plan si le asiwò fifia';

  @override
  String get subscribe => 'Ŋlɔ ŋkɔ';

  @override
  String get perMonth => '/ ɣleti';

  @override
  String get extraPacksTitle => 'Èhiã bubu? Ƒle numekuku bubuwo';

  @override
  String get extraPacksHint =>
      'Numekuku bubuwo ƒe ɣeyiɣi metsona o gbeɖe, eye wozãa wo ne wò ɣleti ƒe agbɔsɔsɔ wu enu.';

  @override
  String get buy => 'Ƒle';

  @override
  String get restorePurchases => 'Gaxɔ nu siwo nèƒle';

  @override
  String get manageSubscription => 'Kpɔ subscription dzi';

  @override
  String get purchaseSuccess => 'Akpe! Nu si nèƒle la le dɔ wɔm.';

  @override
  String get purchasePending => 'Nuƒeƒle la le lalam…';

  @override
  String get purchaseFailed => 'Míete ŋu wu nuƒeƒle la nu o.';

  @override
  String get purchaseCanceled => 'Woɖe asi le nuƒeƒle la ŋu.';

  @override
  String get billingUnavailable =>
      'Nuƒeƒle meli le platform sia dzi haɖe o. Ŋlɔ ŋkɔ le wò fon alo Mac dzi; wò plan awɔ dɔ le wò mɔ̃wo katã dzi.';

  @override
  String get errQuotaExceeded =>
      'Numekuku aɖeke mesusɔ ɖe asiwò le ɣeyiɣi sia me o. Dzi wò plan ɖe edzi alo ƒle numekuku bubuwo.';

  @override
  String get errTrialExpired =>
      'Wò tetekpɔ femaxee la wu enu. Tia plan aɖe be nàyi edzi.';

  @override
  String get errNoPlan => 'Plan si le dɔ wɔm hiã hafi nàwɔ AI numekuku.';

  @override
  String get viewPlans => 'Kpɔ plan siwo li';

  @override
  String get usageTitle => 'Zãzã';

  @override
  String get demoPurchaseNote =>
      'Demo gaxexe: nuƒeƒlewo nye kpɔɖeŋu ko le platform sia dzi.';

  @override
  String get mostPopular => 'Ame geɖe lɔ̃e';

  @override
  String get bestValue => 'Viɖe gãtɔ';

  @override
  String get planFeaturesCommon =>
      'Foto dzesidede, nyatakaka yeyewo, nɔnɔmetatawo, lɔlɔ̃tɔwo kple gbe 120 katã le plan ɖesiaɖe me. Agbɔsɔsɔ la ku ɖe AI numekukuwo ko ŋu.';

  @override
  String get searchLanguages => 'Di gbewo…';

  @override
  String get noLanguageMatch => 'Gbe aɖeke mesɔ o.';

  @override
  String get aiSettings => 'AI numekuku';

  @override
  String get aiLength => 'Didime';

  @override
  String get aiDepthBrief => 'Kpui';

  @override
  String get aiDepthStandard => 'Titina';

  @override
  String get aiDepthDeep => 'Goglo';

  @override
  String get aiDepthBriefDesc => 'Nu veviwo ko, kabakaba.';

  @override
  String get aiDepthStandardDesc => 'Nuŋlɔɖi blibo kple ta ɖesiaɖe.';

  @override
  String get aiDepthDeepDesc =>
      'Internet dzi didi geɖe wu, tsɔtsɔ sɔ kple dɔwɔƒe siwo sɔ kplii, kple nyatakaka goglo wu.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Abe nya $min–$max ene';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'exɔa numekuku $count',
      one: 'exɔa numekuku 1',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Nuxlẽla ƒe ɖoƒe';

  @override
  String get aiReaderBeginner => 'Gɔmedzela';

  @override
  String get aiReaderExperienced => 'Aɖaŋula';

  @override
  String get aiReaderBeginnerDesc =>
      'Gbe bɔbɔe; woɖea technical nya ɖesiaɖe me.';

  @override
  String get aiReaderExperiencedDesc =>
      'Nuŋɔŋlɔ si me nya geɖe le, kple ganyawo ƒe nya siwo wozãna.';

  @override
  String get aiCounterArgument => 'Tsitretsiɖeŋu sesẽtɔ';

  @override
  String get aiCounterArgumentDesc =>
      'Nya kpuie la wuna nu ɣesiaɣi kple nya nyuitɔ si tsi tre ɖe eya ŋutɔ ƒe tameɖoɖo ŋu.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Va se ɖe internet dzi didi $count le numekuku ɖesiaɖe me le wò plan nu',
      one: 'Va se ɖe internet dzi didi 1 le numekuku ɖesiaɖe me le wò plan nu',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Titina didime le plan ɖesiaɖe nu: Dzɔdzɔme $normal, Pro $pro, Max $max, Ultra $ultra. Kpui ɖea 2 le eme, Goglo tsɔa 2 kpena ɖe eŋu.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'va se ɖe internet dzi didi $count',
      one: 'va se ɖe internet dzi didi 1',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Internet dzi didi $count le numekuku ɖesiaɖe me',
      one: 'Internet dzi didi 1 le numekuku ɖesiaɖe me',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Didime sia hiã numekuku $needed, gake $left koe susɔ. Tia didime kpui aɖe le Ɖoɖowo me alo xɔ numekuku bubuwo.';
  }

  @override
  String get outlookMarketMood => 'Asi la ƒe nɔnɔme';

  @override
  String get moodVeryPessimistic => 'Mɔkpɔkpɔ meli kura o';

  @override
  String get moodPessimistic => 'Mɔkpɔkpɔ mesɔ gbɔ o';

  @override
  String get moodNeutral => 'Le titina';

  @override
  String get moodOptimistic => 'Mɔkpɔkpɔ li';

  @override
  String get moodVeryOptimistic => 'Mɔkpɔkpɔ li ŋutɔ';

  @override
  String get scenarioBull => 'Asi yi dzi';

  @override
  String get scenarioBase => 'Nɔnɔme titina';

  @override
  String get scenarioBear => 'Asi ge ɖe anyi';

  @override
  String outlookCurrentPrice(String price) {
    return 'Asi fifia: $price';
  }

  @override
  String get outlookKeyLevels => 'Asi ƒe ɖoƒe veviwo';

  @override
  String get keyLevelSupport => 'Kpekpeɖeŋu';

  @override
  String get keyLevelResistance => 'Mɔxenu';

  @override
  String get keyLevelAnchor => 'Dzidzenu';

  @override
  String get upcomingEvents => 'Nudzɔdzɔ siwo gbɔna';

  @override
  String get outlookChartNote =>
      'Asi ƒe agbɔsɔsɔ siwo fia mɔ ko; mɔnukpɔkpɔwo nye susu ɖeɖe ko, menye nyagblɔɖiwo o.';

  @override
  String get accountTitle => 'Akɔnta';

  @override
  String get signIn => 'Ge ɖe eme';

  @override
  String get signOut => 'Do le eme';

  @override
  String get notSignedIn => 'Mège ɖe eme o';

  @override
  String get accountBenefit =>
      'Ge ɖe eme be wò subscription nawɔ dɔ le wò mɔ̃wo katã dzi.';

  @override
  String get accountSyncedNote =>
      'Wò subscription kple numekuku siwo susɔ le sɔ le mɔ̃wo katã dzi.';

  @override
  String get signInTitle => 'Ge ɖe WhatStock me';

  @override
  String get emailLabel => 'Email adrɛs';

  @override
  String get continueWithEmail => 'Yi edzi kple email';

  @override
  String codeSentTo(String email) {
    return 'Míeɖo code si me xexlẽdzesi 6 le ɖe $email. Ewɔa dɔ hena miniti 10.';
  }

  @override
  String get codeLabel => 'Gegeɖeme code';

  @override
  String get resendCode => 'Ɖo code yeye ɖa';

  @override
  String get useDifferentEmail => 'Zã email bubu';

  @override
  String get errInvalidCode => 'Code la mesɔ o alo eƒe ɣeyiɣi va yi.';

  @override
  String get errInvalidEmail => 'Taflatse, ŋlɔ email adrɛs si sɔ.';

  @override
  String get errSignInFailed =>
      'Gegeɖeme medze edzi o. Kpɔ wò kadodo eye nàgate kpɔ.';

  @override
  String get checkoutWaiting =>
      'Wu gaxexe la nu le wò browser me. App la awɔ eɖokui yeye ne ewu enu.';

  @override
  String get paymentViaStripe =>
      'Gaxexe dedie le wò browser me to Stripe dzi. Ɖe asi le eŋu ɣesiaɣi.';

  @override
  String get paymentViaStore =>
      'Wobia ga to wò App Store alo Google Play akɔnta dzi. Ɖe asi le eŋu ɣesiaɣi le wò store ƒe ɖoɖowo me.';

  @override
  String get keySpace => 'Space';

  @override
  String get doubleOptionTitle => 'Zi Option zi eve';

  @override
  String get doubleOptionSubtitle =>
      'Ne èzi Option zi eve kabakaba la, eya hã yɔa WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Be wòawɔ dɔ le app bubuwo hã me la, ɖe mɔ na WhatStock le System Settings → Privacy & Security → Input Monitoring me, emegbe gaʋu app la.';

  @override
  String get openSystemSettings => 'Ʋu System Settings';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Zi $shortcut alo zi Option zi eve afi sia afi be nàyɔ WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Nu si ate ŋu adzɔ wu';

  @override
  String get longTermToday => 'Egbe';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: 'ƒe $years',
      one: 'ƒe 1',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range le ƒe ɖesiaɖe me';
  }

  @override
  String longTermLikely(String price) {
    return 'si ate ŋu adzɔ wu: $price';
  }

  @override
  String get confidenceLow => 'Kakaɖedzi sue';

  @override
  String get confidenceMedium => 'Kakaɖedzi titina';

  @override
  String get confidenceHigh => 'Kakaɖedzi gã';

  @override
  String get longTermNote =>
      'Ɣeyiɣi didi ƒe asi agbɔsɔsɔwo nɔ te ɖe susu siwo woɖe fia dzi, eye wokekena ɖe enu ne ɣeyiɣi le yiyim. Asiwo mexɔ viɖemama ɖe eme o. Susu ɖeɖe ko, menye nyagblɔɖiwo o.';

  @override
  String get portfolio => 'Nye akpawo';

  @override
  String get portfolioEmpty =>
      'Naneke meli afi sia haɖe o. Ʋu akpa aɖe eye nàzi “Tsɔ kpe ɖe nye akpawo ŋu” be nàkpɔ nu siwo le asiwò dzi.';

  @override
  String get portfolioLocalNote =>
      'Wodzra wo ɖo ɖe mɔ̃ sia ko dzi. Wotrɔ akɔntabubu blibowo kple ECB ƒe gatɔtrɔ asiwo; asiwo ate ŋu atsi megbe.';

  @override
  String get addToPortfolio => 'Tsɔ kpe ɖe nye akpawo ŋu';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Tsɔ $symbol kpe ɖe eŋu';
  }

  @override
  String get portfolioQuantity => 'Akpawo ƒe xexlẽme';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Akpa ɖeka ƒe asi ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Ŋkeke si nèƒlee';

  @override
  String get portfolioAdd => 'Tsɔ kpe ɖe eŋu';

  @override
  String get portfolioInvalidNumber => 'Ŋlɔ xexlẽme si lolo wu 0.';

  @override
  String portfolioAdded(String symbol) {
    return 'Wotsɔ $symbol kpe ɖe wò akpawo ŋu.';
  }

  @override
  String get portfolioTotalValue => 'Asi blibo';

  @override
  String get portfolioToday => 'Egbe';

  @override
  String get portfolioGainLoss => 'Viɖe/nubu';

  @override
  String get portfolioInvested => 'Ga si nède eme';

  @override
  String get portfolioAllocation => 'Mama';

  @override
  String get portfolioPositions => 'Akpa siwo le asiwò';

  @override
  String portfolioAvgCost(String price) {
    return 'asi titina $price';
  }

  @override
  String get portfolioYourPosition => 'Nu si le asiwò';

  @override
  String get portfolioPurchases => 'Nuƒeƒlewo';

  @override
  String get portfolioRemove => 'Ɖe ɖa';

  @override
  String get portfolioExcluded =>
      'Akpa siwo ƒe asi alo gatɔtrɔ asi meli o la, wometsɔ wo de akɔntabubu blibowo me o.';

  @override
  String get priceAlerts => 'Asi ŋuti nuxlɔ̃amewo';

  @override
  String get setPriceAlert => 'Ɖo asi ŋuti nuxlɔ̃ame';

  @override
  String alertDialogTitle(String symbol) {
    return 'Asi ŋuti nuxlɔ̃ame · $symbol';
  }

  @override
  String get alertKindAbove => 'Ne eyi dzi wu';

  @override
  String get alertKindBelow => 'Ne eɖiɖi to ete';

  @override
  String get alertKindMove => 'Ne etrɔ ŋutɔ le ŋkeke ɖeka me';

  @override
  String alertTargetPrice(String currency) {
    return 'Asi ($currency)';
  }

  @override
  String get alertMovePercent => 'Ŋkeke ɖeka ƒe tɔtrɔ (%)';

  @override
  String get alertAlreadyMet => 'Asi la to ɖoƒe sia xoxo.';

  @override
  String get alertSave => 'Ɖo nuxlɔ̃ame';

  @override
  String alertCreated(String symbol) {
    return 'Woɖo nuxlɔ̃ame na $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Asi ŋuti nuxlɔ̃ame aɖeke meli haɖe o. Ʋu akpa aɖe eye nàzi gakpo la be nàɖo ɖeka.';

  @override
  String get alertsNote =>
      'Míekpɔa nuxlɔ̃amewo miniti 5 ɖesiaɖe ne WhatStock le dɔ wɔm. Le kɔmpiuta dzi la, eyia edzi wɔa dɔ le menu bar alo tray me; le fon dzi la, fifia nuxlɔ̃amewo vana ne app la le ʋuʋu ko.';

  @override
  String alertDescAbove(String price) {
    return 'Le $price dzi';
  }

  @override
  String alertDescBelow(String price) {
    return 'Le $price te';
  }

  @override
  String alertDescMove(String percent) {
    return 'Ŋkeke ɖeka ƒe tɔtrɔ ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Edze $date le $price';
  }

  @override
  String get alertRearm => 'Gaɖoe';

  @override
  String get alertDelete => 'Tutui';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol yi dzi wu $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol ɖiɖi to $price te';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol trɔ $percent egbe';
  }

  @override
  String alertHitBody(String price) {
    return 'Asi fifia: $price';
  }

  @override
  String get alertOpen => 'Ʋui';

  @override
  String get keepInTrayTitle => 'Yi edzi nàwɔ dɔ ne wotu fesre la';

  @override
  String get keepInTraySubtitle =>
      'WhatStock tsina menu bar alo tray me, eya ta mɔ kpui la kple asi ŋuti nuxlɔ̃amewo yia edzi wɔa dɔ.';

  @override
  String get termsOfUse => 'Zãzã ƒe Sewo';

  @override
  String get privacyPolicy => 'Adzamenyawo ƒe Ɖoɖo';

  @override
  String get subscriptionLegal =>
      'Subscription wɔa eɖokui yeye ɣleti sia ɣleti va se ɖe esime nàɖe asi le eŋu. Ne èŋlɔ ŋkɔ la, èlɔ̃ ɖe Zãzã ƒe Sewo kple Adzamenyawo ƒe Ɖoɖo dzi.';

  @override
  String get deleteAccount => 'Tutu akɔnta';

  @override
  String get deleteAccountTitle => 'Àtutu wò akɔnta?';

  @override
  String get deleteAccountBody =>
      'Woatutu wò akɔnta kple nu sia nu si le míaƒe server dzi (email, agbɔsɔsɔ, zãzã) ɖa keŋkeŋ, eye numekuku siwo mèzã o la abu. Subscription si nèxe le browser me la, woaɖe asi le eŋu enumake; App Store alo Google Play subscription ya la, ele be nàɖe asi le eŋu le store la ƒe ɖoɖowo me.';

  @override
  String get deleteLocalData =>
      'Tutu nyatakaka siwo le mɔ̃ sia dzi hã (akpawo, nuxlɔ̃amewo, lɔlɔ̃tɔwo, ŋutinya, numekuku siwo nèdzra ɖo)';

  @override
  String get deleteAccountConfirm => 'Tutui keŋkeŋ';

  @override
  String get accountDeleted => 'Wotutu wò akɔnta.';

  @override
  String get errDeleteAccount =>
      'Míete ŋu tutu akɔnta la o. Kpɔ wò kadodo eye nàgate kpɔ.';

  @override
  String get aiTrialBriefNote =>
      'Tetekpɔ numekukuwo le kpui eye AI model si wɔa dɔ kabakaba wu la wɔa wo. Ne plan le asiwò la, àxɔ míaƒe AI si ŋu ŋutete le wu, internet dzi didi geɖe wu, kple didime Titina kple Goglo.';

  @override
  String get billingMonthly => 'Ɣleti sia ɣleti';

  @override
  String get billingYearly => 'Ƒe sia ƒe';

  @override
  String get yearlyDiscount => 'Ɣleti 2 femaxee';

  @override
  String get perYear => '/ ƒe';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price ɣleti sia ɣleti';
  }

  @override
  String get subscriptionLegalYearly =>
      'Subscription wɔa eɖokui yeye ƒe sia ƒe va se ɖe esime nàɖe asi le eŋu. Ne èŋlɔ ŋkɔ la, èlɔ̃ ɖe Zãzã ƒe Sewo kple Adzamenyawo ƒe Ɖoɖo dzi.';

  @override
  String get myAnalyses => 'Nye numekukuwo';

  @override
  String get navAlerts => 'Nuxlɔ̃amewo';

  @override
  String get inviteTitle => 'Ŋgɔkpɔkpɔ si wotu';

  @override
  String get inviteBody =>
      'Fifia la, WhatStock le amesiwo wokpe ko si. Ŋlɔ kpekpe code si nèxɔ la ɖe eme.';

  @override
  String get inviteCodeLabel => 'Kpekpe code';

  @override
  String get inviteContinue => 'Yi edzi';

  @override
  String get inviteInvalid => 'Kpekpe code sia mesɔ o.';

  @override
  String get inviteExpired =>
      'Kpekpe sia ƒe ɣeyiɣi va yi. Bia code yeye tso ame si kpe wò la gbɔ.';

  @override
  String get inviteDeviceLimit =>
      'Wozã kpekpe code sia le mɔ̃ siwo ƒe xexlẽme ɖe mɔ wu la dzi xoxo.';

  @override
  String get previewConfidential => 'Ŋgɔkpɔkpɔ ɣaɣla';

  @override
  String get errPreviewDailyLimit =>
      'Ŋgɔkpɔkpɔ sia ƒe egbe numekuku ƒe seɖoƒe de. Gagbugbɔ te kpɔ etsɔ.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'gaƒoƒo $count si va yi',
      one: 'gaƒoƒo 1 si va yi',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ŋkeke $count si va yi',
      one: 'ŋkeke 1 si va yi',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Wɔ numekuku sia yeye?';

  @override
  String staleBody(String age) {
    return 'Wowɔe $age. Ɖewohĩ asixɔxɔwo, nyadzɔdzɔwo kple emetsonuwo trɔ tso ɣemaɣi.';
  }

  @override
  String get staleKeep => 'Fia xoxoa';

  @override
  String get staleRefresh => 'Wɔ yeye';

  @override
  String seeAll(int count) {
    return 'Kpɔ wo katã ($count)';
  }

  @override
  String get searchAnalyses => 'Di le wò numekukuwo me';

  @override
  String get deleteAnalysis => 'Tutui';

  @override
  String analysisDeleted(String symbol) {
    return 'Wotutu $symbol ƒe numekuku';
  }

  @override
  String get keyLevelAlertHint =>
      'Zi ɖoƒe aɖe be nàxɔ nuxlɔ̃ame ne asi la ɖo afima.';

  @override
  String get shareAnalysisTitle => 'Ma numekuku';

  @override
  String get shareAsImage => 'Ma abe nɔnɔmetata';

  @override
  String get shareAsText => 'Ma abe nuŋɔŋlɔ';

  @override
  String get shareCardFooter => 'Wotsɔ WhatStock wɔe';

  @override
  String get shareCardDisclaimer =>
      'AI numekuku · menye aɖaŋuɖoɖo le gadede nu ŋu o';

  @override
  String get referralTitle => 'Kpe xɔ̃wòwo';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'numekuku $count bubuwo',
      one: 'numekuku 1 bubu',
    );
    return 'Ma wò code. Wò xɔ̃ axɔ $_temp0 enumake, eye wò hã àxɔ nenema ke le eƒe numekuku gbãtɔ megbe.';
  }

  @override
  String get referralYourCode => 'Wò code';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Amesiwo nèkpe: $invited · Fetu: $rewarded';
  }

  @override
  String get referralHaveCode => 'Code aɖe le asiwò tso xɔ̃wò gbɔ?';

  @override
  String get referralRedeem => 'Zãe';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Wotsɔ numekuku $count bubuwo kpe ɖe eŋu. Woezɔ!',
      one: 'Wotsɔ numekuku 1 bubu kpe ɖe eŋu. Woezɔ!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown => 'Code sia meli o. Kpɔe eye nàgate kpɔ.';

  @override
  String get referralErrOwn => 'Màte ŋu azã wò ŋutɔ wò code o.';

  @override
  String get referralErrAlready => 'Èzã xɔ̃wò aɖe ƒe code xoxo.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'numekuku $count bubuwo',
      one: 'numekuku 1 bubu',
    );
    return 'Mezãa WhatStock tsɔ wɔa numekuku le akpawo ŋu: ɖe akpa aɖe ƒe foto eye AI aɖe eme. Ne èzã nye code $code la, àxɔ $_temp0.';
  }

  @override
  String get referralCopied => 'Wokɔpi code la';
}
