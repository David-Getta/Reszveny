// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hiligaynon (`hil`).
class AppLocalizationsHil extends AppLocalizations {
  AppLocalizationsHil([String locale = 'hil']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Kuhai sang litrato ang isa ka stock kag hibal-a ang tanan nahanungod sini.';

  @override
  String get homeHint =>
      'Share certificate, screen sang brokerage app, diaryo ukon logo sang kompanya – bisan ano nga makapakilala sang stock.';

  @override
  String get takePhoto => 'Magkuha sang litrato';

  @override
  String get chooseFromGallery => 'Magpili sa gallery';

  @override
  String get chooseImage => 'Magpili sang litrato';

  @override
  String get enterTickerManually => 'I-type ang ticker nga mano-mano';

  @override
  String get tickerInputLabel => 'Ticker symbol';

  @override
  String get tickerInputHint => 'pananglitan AAPL';

  @override
  String get lookUp => 'Pangitaa';

  @override
  String demoModeBanner(String symbols) {
    return 'Demo mode – wala sang naka-configure nga market data key. May sample data para sa: $symbols.';
  }

  @override
  String get recognizing => 'Ginausisa ang litrato…';

  @override
  String get loadingData => 'Ginakarga ang data…';

  @override
  String get noCandidatesTitle => 'Wala sang nakilala nga stock';

  @override
  String get noCandidatesBody =>
      'Wala namon makilala ang stock sa sini nga litrato. Tilawi ang mas klaro nga litrato, ukon i-type ang ticker nga mano-mano.';

  @override
  String get whatWeSaw => 'Ang amon nakita';

  @override
  String get chooseCandidateTitle => 'Ano nga stock ang buot mo silingon?';

  @override
  String confidencePercent(int percent) {
    return '$percent% kasigurohan';
  }

  @override
  String get settings => 'Mga setting';

  @override
  String get language => 'Lingguahe';

  @override
  String get systemLanguage => 'Default sang sistema';

  @override
  String get about => 'Nahanungod sa app';

  @override
  String get disclaimer =>
      'Impormasyon lang ang ginahatag sang sini nga app kag indi ini laygay sa pag-invest. Ang data mahimo nga ulihi ukon indi sakto.';

  @override
  String dataSource(String source) {
    return 'Ginhalinan sang data: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Pagkilala: $source';
  }

  @override
  String get retry => 'Tilawi liwat';

  @override
  String get cancel => 'Kanselaha';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Sirhi';

  @override
  String get errorGeneric => 'May sala nga natabo.';

  @override
  String get errorSectionUnavailable => 'Indi makarga ini nga seksyon.';

  @override
  String get notAvailable => 'wala';

  @override
  String get sectionIdentity => 'Identipikasyon';

  @override
  String get sectionPrice => 'Presyo';

  @override
  String get sectionValuation => 'Valuation';

  @override
  String get sectionFinancials => 'Pinansyal';

  @override
  String get sectionDividend => 'Dibidendo';

  @override
  String get sectionProfile => 'Profile sang kompanya';

  @override
  String get sectionAnalysts => 'Rating sang mga analyst';

  @override
  String get sectionNews => 'Balita';

  @override
  String get sectionRecognition => 'Detalye sang pagkilala';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Exchange';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Currency';

  @override
  String get labelCountry => 'Pungsod';

  @override
  String get labelIndustry => 'Industriya';

  @override
  String get labelSector => 'Sektor';

  @override
  String get labelWebsite => 'Website';

  @override
  String get labelIpoDate => 'Petsa sang IPO';

  @override
  String get labelMarketCap => 'Market cap';

  @override
  String get labelSharesOutstanding => 'Shares outstanding';

  @override
  String get labelEmployees => 'Mga empleyado';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Punong buhatan';

  @override
  String get labelDescription => 'Paglaragway';

  @override
  String get labelLastPrice => 'Ulihi nga presyo';

  @override
  String get labelChange => 'Pagbag-o';

  @override
  String get labelOpen => 'Pagbukas';

  @override
  String get labelDayHigh => 'Pinakataas sang adlaw';

  @override
  String get labelDayLow => 'Pinakanubo sang adlaw';

  @override
  String get labelPreviousClose => 'Nagligad nga pagsira';

  @override
  String get labelWeek52High => 'Pinakataas sa 52 ka semana';

  @override
  String get labelWeek52Low => 'Pinakanubo sa 52 ka semana';

  @override
  String get labelAverageVolume10d => 'Avg. volume (10 ka adlaw)';

  @override
  String updatedAt(String time) {
    return 'Gin-update $time';
  }

  @override
  String get labelPeTrailing => 'P/E (trailing)';

  @override
  String get labelPeForward => 'P/E (forward)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / free cash flow';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Revenue (TTM)';

  @override
  String get labelNetIncomeTtm => 'Neto nga ganansya (TTM)';

  @override
  String get labelGrossMargin => 'Gross margin';

  @override
  String get labelOperatingMargin => 'Operating margin';

  @override
  String get labelNetMargin => 'Net margin';

  @override
  String get labelRoe => 'Return on equity';

  @override
  String get labelRoa => 'Return on assets';

  @override
  String get labelDebtToEquity => 'Utang / equity';

  @override
  String get labelCurrentRatio => 'Current ratio';

  @override
  String get labelRevenueGrowth => 'Pagtubo sang revenue (YoY)';

  @override
  String get labelEpsGrowth => 'Pagtubo sang EPS (YoY)';

  @override
  String get labelDividendYield => 'Dividend yield';

  @override
  String get labelDividendPerShare => 'Dibidendo kada share';

  @override
  String get labelPayoutRatio => 'Payout ratio';

  @override
  String get labelConsensus => 'Konsenso';

  @override
  String get ratingStrongBuy => 'Strong buy';

  @override
  String get ratingBuy => 'Buy';

  @override
  String get ratingHold => 'Hold';

  @override
  String get ratingSell => 'Sell';

  @override
  String get ratingStrongSell => 'Strong sell';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ka analyst',
      one: '$count ka analyst',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Panahon: $period';
  }

  @override
  String get noNews => 'Wala sang bag-o nga balita.';

  @override
  String get openArticle => 'Buksi ang artikulo';

  @override
  String get openLinkFailed => 'Indi mabuksan ang link.';

  @override
  String get recognitionSummary => 'Sumaryo';

  @override
  String get recognitionEvidence => 'Ngaa amo ini ang amon hunahuna';

  @override
  String get recognitionRawText => 'Teksto nga nabasa sa litrato';

  @override
  String get errMissingAnthropicKey =>
      'Wala naka-configure ang pagkilala sang litrato (wala sang ANTHROPIC_API_KEY). I-type ang ticker nga mano-mano.';

  @override
  String get errRecognitionUnreachable =>
      'Indi maabot ang serbisyo sang pagkilala. Tan-awa ang imo koneksyon sa internet.';

  @override
  String errRecognitionHttp(String status) {
    return 'Nagbalik sang error ang serbisyo sang pagkilala (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Indi ma-proseso sang serbisyo sang pagkilala ini nga litrato.';

  @override
  String get errRecognitionTruncated =>
      'Naputol ang sabat sang pagkilala. Palihog tilawi liwat.';

  @override
  String get errRecognitionBadResponse =>
      'Wala ginapaabot nga sabat halin sa serbisyo sang pagkilala.';

  @override
  String get errRecognitionEmpty =>
      'Wala sang sulod ang sabat sang serbisyo sang pagkilala.';

  @override
  String get errMissingFinnhubKey =>
      'Wala naka-configure ang market data (wala sang FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Indi maabot ang serbisyo sang market data. Tan-awa ang imo koneksyon sa internet.';

  @override
  String get errMarketRateLimited =>
      'Sobra kadamo nga request sa serbisyo sang market data. Palihog hulat sang isa ka minuto.';

  @override
  String errMarketHttp(String status) {
    return 'Nagbalik sang error ang serbisyo sang market data (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Wala ginapaabot nga sabat halin sa serbisyo sang market data.';

  @override
  String errNoQuote(String symbol) {
    return 'Wala sang data sang presyo para sa $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Wala sang profile sang kompanya para sa $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Sa demo mode, $symbols lang ang ginasuportahan. Magdugang sang FINNHUB_API_KEY para sa live data.';
  }

  @override
  String errUnknown(String detail) {
    return 'May sala nga natabo: $detail';
  }

  @override
  String get newSearch => 'Bag-o nga pagpangita';

  @override
  String get recentSearches => 'Bag-o lang';

  @override
  String get noRecentSearches => 'Wala pa sang bag-o nga pagpangita.';

  @override
  String get clearRecent => 'Panasa ang bag-o lang';

  @override
  String get greeting => 'Ano nga stock ang aton tan-awon?';

  @override
  String get searchHint => 'Ticker ukon ngalan sang kompanya';

  @override
  String get attachImage => 'Magtaod sang litrato';

  @override
  String get searchResultsTitle => 'Resulta sang pagpangita';

  @override
  String errNoResults(String query) {
    return 'Wala sang nakita nga stock para sa “$query”.';
  }

  @override
  String get quickBarHint => 'I-type ang ticker ukon ngalan sang kompanya…';

  @override
  String get openFullWindow => 'Buksi ang window';

  @override
  String hotkeyHint(String shortcut) {
    return 'Pinduta ang $shortcut bisan diin para tawgon ang WhatStock.';
  }

  @override
  String get trayOpen => 'Buksi ang WhatStock';

  @override
  String get trayQuickSearch => 'Dasig nga pagpangita';

  @override
  String get trayQuit => 'Maguwa';

  @override
  String get appearance => 'Itsura';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeDark => 'Madulom';

  @override
  String get themeLight => 'Masanag';

  @override
  String get back => 'Balik';

  @override
  String get aiSectionTitle => 'Analisis sang AI';

  @override
  String get aiIntro =>
      'Isa ka detalyado nga pagtan-aw nga ginsulat sang AI: sumaryo sang bag-o nga mga balita, ang negosyo, mga kabaskugan, mga risgo kag tago nga mga butang, valuation, pagtan-aw sa presyo nga may mga senaryo halin sa sikolohikal, sosyolohikal, teknikal kag macro nga anggulo, kag ang dapat bantayan.';

  @override
  String get aiGenerate => 'Maghimo sang analisis';

  @override
  String get aiRegenerate => 'Himua liwat';

  @override
  String get aiGenerating =>
      'Ginahanda ang analisis… mahimo ini magdugay sang isa ukon duha ka minuto.';

  @override
  String get aiSources => 'Mga ginhalinan';

  @override
  String aiGeneratedAt(String time) {
    return 'Ginhimo $time';
  }

  @override
  String get aiDisclaimer =>
      'Analisis nga ginhimo sang AI base sa publiko nga data kag bag-o nga mga balita. Mahimo nga may sala ini ukon daan na, kag indi ini laygay sa pag-invest.';

  @override
  String get errAiNotConfigured =>
      'Wala naka-configure ang analisis sang AI (wala sang ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Indi maabot ang serbisyo sang AI. Tan-awa ang imo koneksyon sa internet.';

  @override
  String errAiHttp(String status) {
    return 'Nagbalik sang error ang serbisyo sang AI (HTTP $status).';
  }

  @override
  String get errAiRefused =>
      'Nagdumili ang serbisyo sang AI nga analisahon ini nga stock.';

  @override
  String get errAiBadResponse =>
      'Wala ginapaabot nga sabat halin sa serbisyo sang AI.';

  @override
  String get sectionChart => 'Chart sang presyo';

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
      'Wala sang history sang presyo halin sa karon nga ginhalinan sang data.';

  @override
  String get sectionStatements => 'Mga financial statement (tinuig)';

  @override
  String get labelFiscalYear => 'Tuig piskal';

  @override
  String get labelRevenue => 'Revenue';

  @override
  String get labelNetIncome => 'Neto nga ganansya';

  @override
  String get labelTotalAssets => 'Kabilogan nga asset';

  @override
  String get labelTotalLiabilities => 'Kabilogan nga utang';

  @override
  String get labelEquity => 'Equity sang mga shareholder';

  @override
  String get labelOperatingCashFlow => 'Operating cash flow';

  @override
  String get statementsUnavailable =>
      'Wala sang ginreport nga financial statement para sa sini nga stock.';

  @override
  String get launchAtLogin => 'Buksi sa pag-log in';

  @override
  String get hotkeyLabel => 'Global nga shortcut';

  @override
  String get hotkeyRecordHint =>
      'I-click diri, dayon pinduta ang bag-o nga kombinasyon sang key';

  @override
  String get hotkeyReset => 'Ibalik sa default';

  @override
  String get pasteImage => 'I-paste ang litrato halin sa clipboard';

  @override
  String get errClipboardNoImage => 'Wala sang litrato sa clipboard.';

  @override
  String get favorites => 'Mga paborito';

  @override
  String get addToFavorites => 'Idugang sa mga paborito';

  @override
  String get removeFromFavorites => 'Kuhaa sa mga paborito';

  @override
  String get noFavorites =>
      'Wala pa sang paborito. I-tap ang bituon sa isa ka stock para idugang ini.';

  @override
  String get displayCurrency => 'Currency nga ipakita';

  @override
  String get displayCurrencyNone => 'Kaugalingon nga currency lang sang stock';

  @override
  String labelConverted(String currency) {
    return '≈ sa $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Palitan: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Mga update';

  @override
  String currentVersion(String version) {
    return 'Bersyon $version';
  }

  @override
  String get autoUpdate => 'I-install ang mga update nga awtomatiko';

  @override
  String get checkForUpdates => 'Tan-awa kon may update';

  @override
  String get updateChecking => 'Ginatan-aw kon may update…';

  @override
  String get updateUpToDate => 'Ara ka na sa pinakabag-o nga bersyon.';

  @override
  String updateAvailable(String version) {
    return 'Ara na ang bersyon $version.';
  }

  @override
  String get updateDownloading => 'Gina-download ang update sa background…';

  @override
  String get updateDownloaded =>
      'Handa na ang update. I-restart para ma-install ini.';

  @override
  String get updateNow => 'I-update';

  @override
  String get restartNow => 'I-restart';

  @override
  String get updatesViaStore =>
      'Awtomatiko nga nagaabot ang mga update paagi sa app store.';

  @override
  String get updateCheckFailed => 'Indi matan-aw kon may update.';

  @override
  String get subscription => 'Subscription';

  @override
  String get planTrial => 'Pagtilaw';

  @override
  String get planNormal => 'Normal';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Wala sang aktibo nga plan';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count ka analisis kada bulan';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$days ka adlaw nga libre nga pagtilaw nga may $count ka analisis';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days ka adlaw nga nabilin sa pagtilaw',
      one: '$days ka adlaw nga nabilin sa pagtilaw',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Natapos na ang imo libre nga pagtilaw. Magpili sang plan para magpadayon sa pag-analisa.';

  @override
  String analysesRemaining(int remaining, int total) {
    return '$remaining sa $total ka analisis ang nabilin sa sini nga panahon';
  }

  @override
  String extraCredits(int count) {
    return '$count ka dugang nga analisis';
  }

  @override
  String renewsOn(String date) {
    return 'Ma-renew sa $date';
  }

  @override
  String get choosePlan => 'Magpili sang plan';

  @override
  String get currentPlan => 'Karon nga plan';

  @override
  String get subscribe => 'Mag-subscribe';

  @override
  String get perMonth => '/ bulan';

  @override
  String get extraPacksTitle =>
      'Kinahanglan pa sang dugang? Magbakal sang dugang nga analisis';

  @override
  String get extraPacksHint =>
      'Ang dugang nga analisis indi gid mag-expire kag gamiton ini pagkatapos sang imo binulan nga alokasyon.';

  @override
  String get buy => 'Baklon';

  @override
  String get restorePurchases => 'Ibalik ang mga ginbakal';

  @override
  String get manageSubscription => 'Dumalahan ang subscription';

  @override
  String get purchaseSuccess => 'Salamat! Aktibo na ang imo ginbakal.';

  @override
  String get purchasePending => 'Ginahulat pa ang pagbakal…';

  @override
  String get purchaseFailed => 'Indi matapos ang pagbakal.';

  @override
  String get purchaseCanceled => 'Gin-kansela ang pagbakal.';

  @override
  String get billingUnavailable =>
      'Wala pa ang pagbakal sa sini nga platform. Mag-subscribe sa imo telepono ukon Mac; magagamit ang imo plan sa tanan nga device.';

  @override
  String get errQuotaExceeded =>
      'Wala ka na sang nabilin nga analisis para sa sini nga panahon. I-upgrade ang imo plan ukon magbakal sang dugang nga analisis.';

  @override
  String get errTrialExpired =>
      'Natapos na ang imo libre nga pagtilaw. Magpili sang plan para magpadayon.';

  @override
  String get errNoPlan =>
      'Kinahanglan sang aktibo nga plan para sa analisis sang AI.';

  @override
  String get viewPlans => 'Tan-awa ang mga plan';

  @override
  String get usageTitle => 'Paggamit';

  @override
  String get demoPurchaseNote =>
      'Demo billing: ginasimulate lang ang mga pagbakal sa sini nga platform.';

  @override
  String get mostPopular => 'Pinakapopular';

  @override
  String get bestValue => 'Pinakamaayo nga bili';

  @override
  String get planFeaturesCommon =>
      'Upod sa tagsa ka plan ang pagkilala sang litrato, live data, mga chart, mga paborito kag tanan nga 120 ka lingguahe. Ang alokasyon para sa mga analisis sang AI.';

  @override
  String get searchLanguages => 'Pangitaa ang lingguahe…';

  @override
  String get noLanguageMatch => 'Wala sang lingguahe nga nagtupong.';

  @override
  String get aiSettings => 'Analisis sang AI';

  @override
  String get aiLength => 'Kalabaon';

  @override
  String get aiDepthBrief => 'Malip-ot';

  @override
  String get aiDepthStandard => 'Kinaandan';

  @override
  String get aiDepthDeep => 'Madalom';

  @override
  String get aiDepthBriefDesc => 'Ang importante lang, dasig.';

  @override
  String get aiDepthStandardDesc =>
      'Bug-os nga report nga may tanan nga seksyon.';

  @override
  String get aiDepthDeepDesc =>
      'Mas madamo nga pagpangita sa web, pagtandi sa mga kaangay nga kompanya kag mas madalom nga detalye.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Mga $min–$max ka tinaga';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'nagagamit sang $count ka analisis',
      one: 'nagagamit sang $count ka analisis',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Lebel sang nagabasa';

  @override
  String get aiReaderBeginner => 'Nagasugod pa';

  @override
  String get aiReaderExperienced => 'May eksperyensya';

  @override
  String get aiReaderBeginnerDesc =>
      'Simple nga lingguahe; ginapaathag ang tagsa ka teknikal nga termino.';

  @override
  String get aiReaderExperiencedDesc =>
      'Mas siksik nga teksto nga may kinaandan nga mga termino sa pinansya.';

  @override
  String get aiCounterArgument => 'Pinakamabakod nga kontra-argumento';

  @override
  String get aiCounterArgumentDesc =>
      'Ang sumaryo pirme nagatapos sa pinakamaayo nga argumento kontra sa iya kaugalingon nga konklusyon.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tubtob $count ka pagpangita sa web kada analisis sa imo plan',
      one: 'Tubtob $count ka pagpangita sa web kada analisis sa imo plan',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Kinaandan nga kalabaon kada plan: Normal $normal, Pro $pro, Max $max, Ultra $ultra. Ang Malip-ot 2 ka kubang, ang Madalom 2 ka dugang.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tubtob $count ka pagpangita sa web',
      one: 'tubtob $count ka pagpangita sa web',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ka pagpangita sa web kada analisis',
      one: '$count ka pagpangita sa web kada analisis',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Ini nga kalabaon nagakinahanglan sang $needed ka analisis, pero $left na lang ang nabilin. Magpili sang mas malip-ot nga kalabaon sa Mga setting ukon magkuha sang dugang nga analisis.';
  }

  @override
  String get outlookMarketMood => 'Balatyagon sang merkado';

  @override
  String get moodVeryPessimistic => 'Pesimista gid';

  @override
  String get moodPessimistic => 'Pesimista';

  @override
  String get moodNeutral => 'Neutral';

  @override
  String get moodOptimistic => 'Optimista';

  @override
  String get moodVeryOptimistic => 'Optimista gid';

  @override
  String get scenarioBull => 'Optimista nga senaryo';

  @override
  String get scenarioBase => 'Base nga senaryo';

  @override
  String get scenarioBear => 'Pesimista nga senaryo';

  @override
  String outlookCurrentPrice(String price) {
    return 'Karon nga presyo: $price';
  }

  @override
  String get outlookKeyLevels => 'Importante nga lebel';

  @override
  String get keyLevelSupport => 'Support';

  @override
  String get keyLevelResistance => 'Resistance';

  @override
  String get keyLevelAnchor => 'Angkla';

  @override
  String get upcomingEvents => 'Masunod nga mga hitabo';

  @override
  String get outlookChartNote =>
      'Ginbanabana nga mga range; ang mga posibilidad banabana lang, indi tagna.';

  @override
  String get accountTitle => 'Account';

  @override
  String get signIn => 'Mag-sign in';

  @override
  String get signOut => 'Mag-sign out';

  @override
  String get notSignedIn => 'Wala naka-sign in';

  @override
  String get accountBenefit =>
      'Mag-sign in para magamit ang imo subscription sa tanan mo nga device.';

  @override
  String get accountSyncedNote =>
      'Pareho ang imo subscription kag nabilin nga analisis sa tagsa ka device.';

  @override
  String get signInTitle => 'Mag-sign in sa WhatStock';

  @override
  String get emailLabel => 'Address sang email';

  @override
  String get continueWithEmail => 'Magpadayon gamit ang email';

  @override
  String codeSentTo(String email) {
    return 'Nagpadala kami sang 6-digit nga code sa $email. Balido ini sa sulod sang 10 ka minuto.';
  }

  @override
  String get codeLabel => 'Code sa pag-sign in';

  @override
  String get resendCode => 'Magpadala sang bag-o nga code';

  @override
  String get useDifferentEmail => 'Maggamit sang iban nga email';

  @override
  String get errInvalidCode => 'Sala ukon expired na ang code.';

  @override
  String get errInvalidEmail => 'Palihog isulat ang balido nga email address.';

  @override
  String get errSignInFailed =>
      'Napaslawan ang pag-sign in. Tan-awa ang imo koneksyon kag tilawi liwat.';

  @override
  String get checkoutWaiting =>
      'Tapusa ang pagbayad sa imo browser. Awtomatiko nga mag-update ang app kon tapos na.';

  @override
  String get paymentViaStripe =>
      'Segurado nga pagbayad sa imo browser paagi sa Stripe. Mahimo i-kansela bisan san-o.';

  @override
  String get paymentViaStore =>
      'Ginabayaran paagi sa imo App Store ukon Google Play account. Mahimo i-kansela bisan san-o sa mga setting sang store.';

  @override
  String get keySpace => 'Space';

  @override
  String get doubleOptionTitle => 'Pinduta sing duha ka beses ang Option';

  @override
  String get doubleOptionSubtitle =>
      'Ang dasig nga pagpindot sang Option key sing duha ka beses nagatawag man sang WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Para mag-obra man ini sa iban nga app, tuguti ang WhatStock sa System Settings → Privacy & Security → Input Monitoring, dayon buksi liwat ang app.';

  @override
  String get openSystemSettings => 'Buksi ang System Settings';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Pinduta ang $shortcut ukon pinduta sing duha ka beses ang Option bisan diin para tawgon ang WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Pinakaposible';

  @override
  String get longTermToday => 'Subong';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years ka tuig',
      one: '$years ka tuig',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range kada tuig';
  }

  @override
  String longTermLikely(String price) {
    return 'pinakaposible $price';
  }

  @override
  String get confidenceLow => 'Nubo nga kasigurohan';

  @override
  String get confidenceMedium => 'Tunga-tunga nga kasigurohan';

  @override
  String get confidenceHigh => 'Mataas nga kasigurohan';

  @override
  String get longTermNote =>
      'Ang mga long-term nga range nakasandig sa mga ginsiling nga asumsyon kag nagalapad sa paglabay sang tion. Wala ginlakip ang dibidendo sa mga presyo. Banabana lang, indi tagna.';

  @override
  String get portfolio => 'Portfolio';

  @override
  String get portfolioEmpty =>
      'Wala pa sang sulod. Buksi ang isa ka stock kag i-tap ang “Idugang sa portfolio” para mabantayan ang imo ginapanag-iyahan.';

  @override
  String get portfolioLocalNote =>
      'Sa sini lang nga device natipon. Ang mga kabilogan gin-convert gamit ang reference rate sang ECB; mahimo nga ulihi ang mga presyo.';

  @override
  String get addToPortfolio => 'Idugang sa portfolio';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Idugang ang $symbol';
  }

  @override
  String get portfolioQuantity => 'Kadamuon sang share';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Presyo kada share ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Petsa sang pagbakal';

  @override
  String get portfolioAdd => 'Idugang';

  @override
  String get portfolioInvalidNumber =>
      'Magsulat sang numero nga labaw sa zero.';

  @override
  String portfolioAdded(String symbol) {
    return 'Gindugang ang $symbol sa imo portfolio.';
  }

  @override
  String get portfolioTotalValue => 'Kabilogan nga bili';

  @override
  String get portfolioToday => 'Subong';

  @override
  String get portfolioGainLoss => 'Ganansya/pierde';

  @override
  String get portfolioInvested => 'Gin-invest';

  @override
  String get portfolioAllocation => 'Pagbahin';

  @override
  String get portfolioPositions => 'Mga posisyon';

  @override
  String portfolioAvgCost(String price) {
    return 'avg. nga gasto $price';
  }

  @override
  String get portfolioYourPosition => 'Imo posisyon';

  @override
  String get portfolioPurchases => 'Mga ginbakal';

  @override
  String get portfolioRemove => 'Kuhaa';

  @override
  String get portfolioExcluded =>
      'Ang mga posisyon nga wala sang presyo ukon exchange rate wala ginlakip sa mga kabilogan.';

  @override
  String get priceAlerts => 'Mga alerto sa presyo';

  @override
  String get setPriceAlert => 'Magbutang sang alerto sa presyo';

  @override
  String alertDialogTitle(String symbol) {
    return 'Alerto sa presyo · $symbol';
  }

  @override
  String get alertKindAbove => 'Magtaas labaw sa';

  @override
  String get alertKindBelow => 'Magnubo idalom sa';

  @override
  String get alertKindMove => 'Daku nga hulag sa isa ka adlaw';

  @override
  String alertTargetPrice(String currency) {
    return 'Presyo ($currency)';
  }

  @override
  String get alertMovePercent => 'Hulag sa adlaw (%)';

  @override
  String get alertAlreadyMet => 'Ang presyo nakalampas na sa sini nga lebel.';

  @override
  String get alertSave => 'Ibutang ang alerto';

  @override
  String alertCreated(String symbol) {
    return 'Nabutang ang alerto para sa $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Wala pa sang alerto sa presyo. Buksi ang isa ka stock kag i-tap ang lingganay para magbutang.';

  @override
  String get alertsNote =>
      'Ginatan-aw ang mga alerto kada 5 ka minuto samtang nagadalagan ang WhatStock. Sa computer, padayon ini nga nagadalagan sa menu bar ukon tray; sa telepono, sa subong nagaabot lang ang mga alerto kon bukas ang app.';

  @override
  String alertDescAbove(String price) {
    return 'Labaw sa $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Idalom sa $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Hulag sa adlaw ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Nag-trigger $date sa $price';
  }

  @override
  String get alertRearm => 'I-activate liwat';

  @override
  String get alertDelete => 'Panasa';

  @override
  String alertHitAbove(String symbol, String price) {
    return 'Nagtaas ang $symbol labaw sa $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return 'Nagnubo ang $symbol idalom sa $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return 'Naghulag ang $symbol sing $percent subong';
  }

  @override
  String alertHitBody(String price) {
    return 'Karon nga presyo: $price';
  }

  @override
  String get alertOpen => 'Buksi';

  @override
  String get keepInTrayTitle =>
      'Padayon nga magdalagan kon nasirhan ang window';

  @override
  String get keepInTraySubtitle =>
      'Magapabilin ang WhatStock sa menu bar ukon tray, gani padayon nga nagaobra ang shortcut kag ang mga alerto sa presyo.';

  @override
  String get termsOfUse => 'Mga Termino sang Paggamit';

  @override
  String get privacyPolicy => 'Palisiya sa Privacy';

  @override
  String get subscriptionLegal =>
      'Ang subscription awtomatiko nga nagare-renew kada bulan tubtob nga i-kansela mo. Sa pag-subscribe, ginabaton mo ang Mga Termino sang Paggamit kag ang Palisiya sa Privacy.';

  @override
  String get deleteAccount => 'Panasa ang account';

  @override
  String get deleteAccountTitle => 'Panason ang imo account?';

  @override
  String get deleteAccountBody =>
      'Ang imo account kag tanan nga natipon sa amon server (email, alokasyon, paggamit) mapanas sing permanente, kag madula ang wala nagamit nga mga analisis. Ang subscription nga ginbayaran sa browser ginakansela dayon; ang subscription sa App Store ukon Google Play kinahanglan i-kansela sa mga setting sang store.';

  @override
  String get deleteLocalData =>
      'Panasa man ang data sa sini nga device (portfolio, alerto, paborito, history, natipon nga analisis)';

  @override
  String get deleteAccountConfirm => 'Panasa sing permanente';

  @override
  String get accountDeleted => 'Napanas na ang imo account.';

  @override
  String get errDeleteAccount =>
      'Indi mapanas ang account. Tan-awa ang imo koneksyon kag tilawi liwat.';

  @override
  String get aiTrialBriefNote =>
      'Ang mga analisis sa pagtilaw malip-ot kag ginahimo sang mas dasig nga AI model. Kon may plan ka, makuha mo ang amon pinakamaayo nga AI, mas madamo nga pagpangita sa web, kag ang Kinaandan kag Madalom nga kalabaon.';

  @override
  String get billingMonthly => 'Binulan';

  @override
  String get billingYearly => 'Tinuig';

  @override
  String get yearlyDiscount => '2 ka bulan libre';

  @override
  String get perYear => '/ tuig';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price kada bulan';
  }

  @override
  String get subscriptionLegalYearly =>
      'Ang tinuig nga subscription awtomatiko nga nagare-renew kada tuig tubtob nga i-kansela mo. Sa pag-subscribe, ginabaton mo ang Mga Termino sang Paggamit kag ang Palisiya sa Privacy.';

  @override
  String get myAnalyses => 'Akon mga analisis';

  @override
  String get navAlerts => 'Mga alerto';

  @override
  String get inviteTitle => 'Sirado nga preview';

  @override
  String get inviteBody =>
      'Sa subong, paagi lang sa imbitasyon makagamit sang WhatStock. Isulod ang code sang imbitasyon nga nabaton mo.';

  @override
  String get inviteCodeLabel => 'Code sang imbitasyon';

  @override
  String get inviteContinue => 'Padayon';

  @override
  String get inviteInvalid => 'Indi balido ini nga code sang imbitasyon.';

  @override
  String get inviteExpired =>
      'Expired na ini nga imbitasyon. Pangayo sang bag-o nga code sa tawo nga nag-imbitar sa imo.';

  @override
  String get inviteDeviceLimit =>
      'Ginagamit na ini nga code sang imbitasyon sa pinakamadamo nga device nga gintugot.';

  @override
  String get previewConfidential => 'Kumpidensyal nga preview';

  @override
  String get errPreviewDailyLimit =>
      'Naabot na ang limitasyon sang analisis subong nga adlaw para sa sini nga preview. Tilawi liwat buwas.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ka oras ang nagligad',
      one: '1 ka oras ang nagligad',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ka adlaw ang nagligad',
      one: '1 ka adlaw ang nagligad',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'I-update ini nga analisis?';

  @override
  String staleBody(String age) {
    return 'Ginhimo ini $age. Mahimo nga nagbag-o na ang mga presyo, balita kag resulta halin sadto.';
  }

  @override
  String get staleKeep => 'Ipakita ang nauna';

  @override
  String get staleRefresh => 'Maghimo sang bag-o';

  @override
  String seeAll(int count) {
    return 'Tan-awa tanan ($count)';
  }

  @override
  String get searchAnalyses => 'Pangitaa ang imo mga analisis';

  @override
  String get deleteAnalysis => 'Panasa';

  @override
  String analysisDeleted(String symbol) {
    return 'Napanas ang analisis sang $symbol';
  }

  @override
  String get keyLevelAlertHint =>
      'I-tap ang isa ka lebel para makabaton sang alerto kon maabot ini sang presyo.';

  @override
  String get shareAnalysisTitle => 'Ipaambit ang analisis';

  @override
  String get shareAsImage => 'Ipaambit subong larawan';

  @override
  String get shareAsText => 'Ipaambit subong teksto';

  @override
  String get shareCardFooter => 'Ginhimo gamit ang WhatStock';

  @override
  String get shareCardDisclaimer =>
      'Analisis sang AI · indi laygay sa pag-invest';

  @override
  String get referralTitle => 'Imbitaha ang imo mga abyan';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ka dugang nga analisis',
      one: '1 ka dugang nga analisis',
    );
    return 'Ipaambit ang imo code. Ang imo abyan makabaton dayon sang $_temp0, kag ikaw man makabaton sang pareho pagkatapos sang iya una nga analisis.';
  }

  @override
  String get referralYourCode => 'Ang imo code';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Gin-imbitahan: $invited · Ginpremyuhan: $rewarded';
  }

  @override
  String get referralHaveCode => 'May code ka gikan sa abyan?';

  @override
  String get referralRedeem => 'Gamita';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Gindugang ang $count ka dugang nga analisis. Malipayon nga pag-abot!',
      one: 'Gindugang ang 1 ka dugang nga analisis. Malipayon nga pag-abot!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Wala sang amo sini nga code. Susiha kag tilawi liwat.';

  @override
  String get referralErrOwn => 'Indi mo magamit ang imo kaugalingon nga code.';

  @override
  String get referralErrAlready => 'Nagamit mo na ang code sang imo abyan.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ka dugang nga analisis',
      one: '1 ka dugang nga analisis',
    );
    return 'Ginaanalisa ko ang mga stock gamit ang WhatStock: kuhai sang litrato ang stock kag ipaathag ini sang AI. Sa akon code nga $code makabaton ka sang $_temp0.';
  }

  @override
  String get referralCopied => 'Nakopya ang code';

  @override
  String get onboardTitle1 => 'Kuhai sang litrato ang stock';

  @override
  String get onboardBody1 =>
      'Bastante na ang screen sang brokerage app, pamantalaan ukon logo sang kompanya: kilalahon sang WhatStock ang stock kag ipakita ang presyo, chart kag importante nga mga numero sini.';

  @override
  String get onboardTitle2 => 'Intiendihon sa pila lang ka minuto';

  @override
  String get onboardBody2 =>
      'Ginapaathag sang analisis sang AI kon ano ang nagapahulag sa stock, ang mga risgo, ang balor sini kag tatlo ka senaryo kon diin mahimo makadto ang presyo, upod ang mga ginhalinan kag sa imo lenguahe.';

  @override
  String get onboardTitle3 => 'Pirme updated';

  @override
  String get onboardBody3 =>
      'Ang mga paborito, imo portfolio kag mga alerto sa presyo magapahibalo sa imo. Ang imo mga analisis nagapabilin sa imo device, handa nga buksan liwat.';

  @override
  String get onboardNext => 'Masunod';

  @override
  String get onboardStart => 'Magsugod na';

  @override
  String get onboardSkip => 'Laktawan';

  @override
  String changesTitle(String date) {
    return 'Halin sang nauna nga analisis ($date)';
  }

  @override
  String get changesPrice => 'Presyo';

  @override
  String get changesNoMajor => 'Wala nagbag-o sing daku ang panan-awan.';

  @override
  String get changesPreviousSummary => 'Nauna nga sumaryo';

  @override
  String get telemetryTitle => 'Buligi kami nga mapauswag ang WhatStock';

  @override
  String get telemetryBody =>
      'Ipaambit ang anonymous nga estadistika sang paggamit kag mga crash report: diin nga mga feature ang ginagamit kag ano ang nagsala. Indi gid ang imo mga stock, analisis ukon personal nga datos. Mahimo mo ini baylohan bisan san-o sa Mga setting.';

  @override
  String get telemetryAllow => 'Tuguti';

  @override
  String get telemetryDecline => 'Indi, salamat';

  @override
  String get telemetrySetting =>
      'Anonymous nga estadistika kag mga crash report';

  @override
  String get telemetrySettingHint =>
      'Kon daw ano kasubsob ginagamit ang mga feature kag mga report sang sayop, wala sang personal nga datos ukon sulod sang imo mga pagpangita kag analisis.';

  @override
  String get askButton => 'Mamangkot parte sa sini nga analisis';

  @override
  String askTitle(String symbol) {
    return 'Mga pamangkot parte sa $symbol';
  }

  @override
  String get askIntro =>
      'Pamangkot sang bisan ano parte sa analisis: ano ang buot silingon sang isa ka risgo, ano ang makabag-o sang palaabuton, paano nakuha ang isa ka numero. Ang mga sabat base sa sini nga analisis kag indi laygay sa pag-invest.';

  @override
  String get askHint => 'Magpamangkot…';

  @override
  String get askSend => 'Ipadala';

  @override
  String get askThinking => 'Nagapanumdom…';

  @override
  String get askSuggest1 => 'Ano ang pinakadako nga risgo?';

  @override
  String get askSuggest2 => 'Ano ang makabag-o sang palaabuton?';

  @override
  String get askSuggest3 => 'Ipaathag ini sa simple nga paagi';

  @override
  String get askMaxReached =>
      'Amo ato ang katapusan nga pamangkot para sa sini nga analisis. Maghimo sang bag-o nga analisis para makapamangkot pa.';

  @override
  String get errAskLimit =>
      'Naabot mo na ang limitasyon sang mga pamangkot subong nga adlaw. Tilawi liwat buwas.';

  @override
  String get eventTomorrow => 'Buwas';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'sa sulod sang $days ka adlaw',
      one: 'sa sulod sang 1 ka adlaw',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Resulta kada kwarter';

  @override
  String get eventBeforeOpen => 'antes magbukas ang merkado';

  @override
  String get eventAfterClose => 'pagkatapos magsira ang merkado';

  @override
  String eventEpsEstimate(String value) {
    return 'Ginapaabot nga EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Halin sa imo analisis';

  @override
  String get eventsHint =>
      'Mga petsa sang resulta sang imo mga paborito kag mga stock sa portfolio para sa masunod nga 90 ka adlaw, kag ang mga hitabo nga may petsa nga gin-markahan sang imo mga analisis.';

  @override
  String get eventsEmpty =>
      'Wala sing hitabo nga may petsa sa masunod nga 90 ka adlaw. Magdugang sang mga paborito ukon stock sa portfolio para makita diri ang mga petsa sang ila resulta.';

  @override
  String get compareTitle => 'Ikumpara';

  @override
  String get compareAdd => 'Idugang ang stock';

  @override
  String get compareRemove => 'Kuhaa';

  @override
  String get compareTickerHint => 'Ticker, pananglitan MSFT';

  @override
  String get compareHint =>
      'Ang importante nga mga numero magkatupad; ginapasanag ang pinakamaayo nga balor sa kada linya. Ang mga kantidad yara sa kaugalingon nga currency sang kada stock.';

  @override
  String get compareNoAnalysis => 'Wala pa sang analisis';

  @override
  String get portfolioDividends => 'Tinuig nga dibidendo';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent yield';
  }

  @override
  String get portfolioDividendNote =>
      'Ang ginapaabot nga tinuig nga dibidendo nabase sa mga dibidendo nga ginbayad sa nagligad nga 12 ka bulan; indi garantisado ang mga bayad sa palaabuton.';

  @override
  String positionDividend(String amount) {
    return 'Dibidendo: $amount kada tuig';
  }

  @override
  String get chartAvgCost => 'Imo avg.';

  @override
  String get chartAlertLevel => 'Alerto';

  @override
  String get marketsToday => 'Mga merkado subong';

  @override
  String get notesTitle => 'Akon mga nota';

  @override
  String get notesHint =>
      'Ngaa ginbakal mo ini, ano ang ginabantayan mo, ano ang makapabaligya sa imo?';

  @override
  String get notesInfo =>
      'Sa sini lang nga device natipon. Ginakonsiderar sang analisis sang AI ang imo mga nota.';

  @override
  String notesSaved(String date) {
    return 'Natipon $date';
  }

  @override
  String get peersTitle => 'Kaangay nga mga kompanya';

  @override
  String get portfolioExport => 'I-export subong CSV';

  @override
  String get portfolioImport => 'I-import halin sa CSV';

  @override
  String get portfolioImportHint =>
      'I-paste ang isa ka ginbakal kada linya: ticker symbol, kadamuon, presyo, currency, petsa (YYYY-MM-DD). Ang mga kolum mahimo mabulag sang comma, semicolon ukon tab; opsyonal ang header nga linya.';

  @override
  String get portfolioImportButton => 'I-import';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Gindugang ang $count ka ginbakal',
      one: 'Gindugang ang 1 ka ginbakal',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ginlaktawan ang $count ka linya',
      one: 'Ginlaktawan ang 1 ka linya',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Ang portfolio, mga paborito, mga alerto sa presyo kag mga nota gina-sync sa tanan mo nga device.';

  @override
  String syncLast(String time) {
    return 'Katapusan nga na-sync $time';
  }

  @override
  String get syncNow => 'I-sync subong';

  @override
  String get syncFailed =>
      'Napaslawan ang pag-sync. Tilawan liwat ini sing awtomatiko.';

  @override
  String get alertEmailTitle => 'E-mail kon mag-trigger ang alerto';

  @override
  String get alertEmailOn =>
      'Ginatan-aw namon ang imo mga alerto kada pila ka minuto kag ginapadal-an ka namon sang e-mail, bisan sirado ang app.';

  @override
  String get alertEmailSignIn =>
      'Mag-sign in gamit ang imo e-mail sa Mga setting para makabaton sang mga alerto paagi sa e-mail, bisan sirado ang app.';

  @override
  String get portfolioHistory => 'Bili sa paglabay sang tion';

  @override
  String get portfolioReviewTitle => 'Analisis sang portfolio sang AI';

  @override
  String get portfolioReviewIntro =>
      'Ginatan-aw sang AI ang bug-os mo nga portfolio: konsentrasyon, exposure sa sektor kag kwarta, mga risgo nga pareho sang imo mga stock, kag dibidendo. Nagagamit sang 1 ka analisis.';

  @override
  String get portfolioReviewButton => 'Analisaha ang akon portfolio';

  @override
  String get portfolioReviewAgain => 'Analisaha liwat';

  @override
  String get portfolioReviewWorking => 'Ginaanalisa ang imo portfolio…';

  @override
  String get digestTitle => 'Semanal nga summary paagi sa email';

  @override
  String get digestHint =>
      'Kada Lunes: kon paano naghulag ang imo mga paborito kag portfolio sang nagligad nga semana, kag ang ila masunod nga mga petsa sang resulta.';
}
