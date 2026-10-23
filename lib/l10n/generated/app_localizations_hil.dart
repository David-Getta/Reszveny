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
  String get labelYieldOnCost => 'Yield sa gasto';

  @override
  String get labelDividendGrowth5y => 'Pagtubo sang dibidendo (5 ka tuig)';

  @override
  String get dividendNone =>
      'Wala sing dibidendo nga ginbayad sa nagligad nga 12 ka bulan.';

  @override
  String get dividendOnYourShares => 'Sa imo mga share, kada tuig';

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
  String homeDividendsThisYear(String amount) {
    return 'Dibidendo sini nga tuig: $amount';
  }

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
  String get eventDividend => 'Ginapaabot nga dibidendo';

  @override
  String get eventDividendEstimate =>
      'Ginbanta-banta halin sa imo narekord nga mga bayad';

  @override
  String get eventsHint =>
      'Mga petsa sang resulta sang imo mga paborito kag mga stock sa portfolio para sa masunod nga 90 ka adlaw, ang mga hitabo nga may petsa nga gin-markahan sang imo mga analisis, kag ang mga dibidendo nga ginapaabot halin sa imo narekord nga mga bayad.';

  @override
  String get eventsEmpty =>
      'Wala sing hitabo nga may petsa sa masunod nga 90 ka adlaw. Magdugang sang mga paborito ukon stock sa portfolio para makita diri ang mga petsa sang ila resulta; ang narekord nga mga dibidendo nagapakita sang ila ginapaabot nga masunod nga bayad.';

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

  @override
  String get benchmarkTitle => 'Kumparar sa S&P 500';

  @override
  String get benchmarkTitleIndex => 'Kumparar sa isa ka index';

  @override
  String get benchmarkHintIndex =>
      'Subong nga ang kada bakal gin-invest sa isa ka fund nga nagasunod sa ginpili nga index sa amo man nga adlaw. Wala labot ang dibidendo; ang nagligad nga ganansya indi nagatagna sang palaabuton.';

  @override
  String get benchmarkYours => 'Imo mga ginbakal';

  @override
  String benchmarkAhead(String points) {
    return '$points ka percentage point nga mas maayo sang sa index';
  }

  @override
  String benchmarkBehind(String points) {
    return '$points ka percentage point nga kubos sa index';
  }

  @override
  String get portfolioSell => 'Ibaligya';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Ibaligya ang $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Presyo sang pagbaligya kada share ($currency)';
  }

  @override
  String get portfolioSellDate => 'Petsa sang pagbaligya';

  @override
  String get portfolioSellAll => 'Tanan';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'May $quantity ka';
  }

  @override
  String get portfolioSold => 'Ginbaligya';

  @override
  String get portfolioRealized => 'Narealisar';

  @override
  String get portfolioClosed => 'Mga sarado nga posisyon';

  @override
  String get portfolioClosedNote => 'Nabaligya na ang tanan nga share';

  @override
  String get portfolioTransactions => 'Mga transaksyon';

  @override
  String get portfolioRealizedByYear => 'Narealisar nga ganansya kada tuig';

  @override
  String get portfolioRealizedHint =>
      'Ang mga pagbaligya ginapares anay sa imo pinakadaan nga mga ginbakal (FIFO), gin-convert sa palitan subong. Para sa imo tax return, gamita ang statement sang imo broker.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Halin sining analisis, may bag-o nga quarterly nga resulta nga ginbantala ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Bag-o nga resulta';

  @override
  String get portfolioImportBrokers =>
      'Makilala man ang mga export halin sa Revolut, Trading 212 kag Interactive Brokers, upod ang mga ginbaligya; ginalaktawan ang mga dibidendo kag deposito.';

  @override
  String get portfolioImportFile => 'Magpili sang file';

  @override
  String offlineBanner(String time) {
    return 'Wala sing koneksyon – ginapakita ang katapusan nga na-save nga datos ($time).';
  }

  @override
  String get glossMarketCap =>
      'Pila ang bili sang bilog nga kompanya sa stock market: presyo sang share × kadamuon sang shares.';

  @override
  String get glossSharesOutstanding =>
      'Pila ka shares ang ginpagwa sang kompanya. Kon magdamo ini, ang kada share may mas gamay nga parte; ang buyback nagapaliit sini.';

  @override
  String get glossPeTrailing =>
      'Presyo ÷ ganansya kada share sang nagligad nga 12 ka bulan: pila ka tuig sang subong nga ganansya ang imo ginabayaran. Ang mas manubo mas barato, pero ang madasig magtubo nga kompanya kasagaran may mataas nga P/E.';

  @override
  String get glossPeForward =>
      'Pareho sa P/E, pero gamit ang ganansya nga ginapaabot sang mga analyst para sa masunod nga 12 ka bulan. Kon mas manubo sa trailing P/E, ginapaabot nga magtubo ang ganansya.';

  @override
  String get glossPb =>
      'Presyo ÷ book value (assets minus utang) kada share. Mga 1 nagakahulugan nga ginabaluran sang merkado ang kompanya suno sa iya ginapanag-iya sa papel.';

  @override
  String get glossPs =>
      'Market value ÷ tinuig nga revenue. Mapuslanon para sa mga kompanya nga diutay ukon wala pa sing ganansya; ikumparar ini sa pareho nga industriya.';

  @override
  String get glossEvToFcf =>
      'Bili sang kompanya upod ang utang (EV) ÷ ang kuwarta nga ginahimo sini sa isa ka tuig pagkatapos sang mga investment. Ang mas manubo nagakahulugan nga mas madamo nga kuwarta ang imo makuha sa presyo.';

  @override
  String get glossPeg =>
      'P/E ÷ ginapaabot nga tinuig nga pagtubo sang ganansya (%). Mga 1 kasagaran ginakabig nga patas; ginatan-aw sini ang P/E suno sa pagtubo.';

  @override
  String get glossEps =>
      'Ganansya kada share sa nagligad nga 12 ka bulan. Ang nagasaka nga EPS sa sulod sang mga tuig isa sa pinakamabaskog nga tanda sang maayo nga kompanya.';

  @override
  String get glossBeta =>
      'Pila kadako ang paghulag sang stock upod sa merkado: 1 = pareho sa merkado, 1.5 = mga 50% mas dako nga pagsaka-panaog, idalom sa 1 = mas kalmado.';

  @override
  String get glossRevenueTtm =>
      'Kabilugan nga baligya sang nagligad nga 12 ka bulan, antes sang bisan ano nga gastos.';

  @override
  String get glossNetIncomeTtm =>
      'Ganansya nga nabilin pagkatapos sang tanan nga gastos, interes kag buhis sa nagligad nga 12 ka bulan.';

  @override
  String get glossGrossMargin =>
      'Ang parte sang revenue nga nabilin pagkatapos sang direkta nga gastos sang mga produkto. Ang mataas nga margin kasagaran nagapakita sang gahum sa pagpresyo.';

  @override
  String get glossOperatingMargin =>
      'Ang parte sang revenue nga nabilin pagkatapos sang pagpadalagan sang negosyo (sweldo, abang, marketing), antes sang interes kag buhis.';

  @override
  String get glossNetMargin =>
      'Ang parte sang revenue nga nangin katapusan nga ganansya. 20% nagakahulugan nga sa kada 100 nga baligya, 20 ang ganansya.';

  @override
  String get glossRoe =>
      'Return on equity: tinuig nga ganansya ÷ kapital sang mga tag-iya. Ginapakita sini kon daw ano kaayo gamiton sang management ang kuwarta sang mga shareholder; labaw sa mga 15% mabaskog.';

  @override
  String get glossRoa =>
      'Return on assets: tinuig nga ganansya ÷ tanan nga ginapanag-iya sang kompanya. Ikumparar ini sa pareho nga industriya.';

  @override
  String get glossDebtToEquity =>
      'Utang ÷ kapital sang mga tag-iya. Ang mas mataas nagakahulugan sang mas madamo nga hulam nga kuwarta: mas daku nga risgo kon magsaka ang interes ukon maghinay ang negosyo.';

  @override
  String get glossCurrentRatio =>
      'Short-term assets ÷ mga bayaran sa sulod sang isa ka tuig. Labaw sa 1 nagakahulugan nga masarangan sang kompanya ang malapit nga mga bayaran.';

  @override
  String get glossRevenueGrowth =>
      'Pila ang ginsaka sang revenue kumparar sang isa ka tuig na ang nagligad.';

  @override
  String get glossEpsGrowth =>
      'Pila ang ginsaka sang ganansya kada share kumparar sang isa ka tuig na ang nagligad.';

  @override
  String get glossDividendYield =>
      'Tinuig nga dibidendo ÷ presyo sang share: ang kuwarta nga imo makuha kada tuig, bilang porsiyento sang imo ginbayad.';

  @override
  String get glossDividendPerShare =>
      'Ang dibidendo nga ginbayad sa isa ka share sa nagligad nga tuig.';

  @override
  String get glossPayoutRatio =>
      'Ang parte sang ganansya nga ginabayad bilang dibidendo. Labaw sa 100% ang kompanya nagabayad sang labaw sa iya ginakita, nga talagsa lang magdugay.';

  @override
  String get portfolioBeta => 'Beta sang portfolio';

  @override
  String get glossPortfolioBeta =>
      'Ang beta sang imo mga stock, gintimbang suno sa ila balor: mga pila ka porsiyento ang paghulag sang imo mga stock kon maghulag ang merkado sing 1%. Kon labaw sa 1, mas dako ang ila pagsaka-panaog sangsa merkado; kon idalom sa 1, mas diutay. Indi upod ang cash.';

  @override
  String get portfolioTop3 => 'Top 3 nga posisyon';

  @override
  String get glossPortfolioTop3 =>
      'Pila sang balor sang imo mga stock ang yara sa imo tatlo ka pinakadako nga posisyon. Kon mas mataas ini, mas makahalit sa bug-os nga portfolio ang malain nga balita parte sa isa lang ka kompanya.';

  @override
  String get glossDividendGrowth5y =>
      'Pila ang gintubo sang dibidendo kada share kada tuig sa average sa nagligad nga lima ka tuig. Ang padayon nga pagtubo kasagaran nagakahulugan nga nagasalig ang kompanya sa iya cash flow; ang pagbuhin kasagaran isa ka tanda sang paandam.';

  @override
  String get glossYieldOnCost =>
      'Ang dibidendo nga nabaton sa nagligad nga 12 ka bulan nga ginbahin sa imo ginbayad para sa mga share nga ginauyatan mo pa. Indi pareho sa dividend yield, ginasukol ini sa imo kaugalingon nga presyo sang pagbakal, indi sa presyo subong.';

  @override
  String get glossTitle => 'Ano ang buot silingon?';

  @override
  String get watchNewsTitle => 'Balita sa imo mga stock';

  @override
  String get undo => 'I-undo';

  @override
  String get watchSort => 'Hanay';

  @override
  String get watchSortOwn => 'Akon nga hanay';

  @override
  String get watchSortGainers => 'Pinakadako nga pagtaas anay';

  @override
  String get watchSortLosers => 'Pinakadako nga pagnubo anay';

  @override
  String get watchSortName => 'Suno sa ticker (A–Z)';

  @override
  String get watchHint =>
      'Guyuda ang hawiran agod hanayon liwat, i-swipe pawala agod kuhaon. Ginapakita sang linya ang nagligad nga 30 ka adlaw.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: handa na ang imo pagtuki.';
  }

  @override
  String alertFromCost(String price) {
    return 'Halin sa imo average nga presyo sang pagbakal ($price):';
  }

  @override
  String get briefTitle => 'Subong upod ang imo mga stock';

  @override
  String get briefButton => 'I-summarize subong';

  @override
  String get briefHint =>
      'Malip-ot nga AI summary kon paano naghulag subong ang imo portfolio kag mga paborito kag ano ang ginasiling sang pinakabag-o nga balita parte sa ila. Indi ini maggamit sang pagtuki.';

  @override
  String get briefRefresh => 'I-update';

  @override
  String get sectionEarnings => 'Resulta kada kwarter';

  @override
  String earningsNext(String date) {
    return 'Masunod nga report: $date';
  }

  @override
  String get earningsExpected => 'Ginapaabot nga EPS';

  @override
  String get earningsReported => 'Gin-report nga EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Pareho ukon labaw sa ginapaabot nga EPS sa $beats sang katapusan nga $total ka kwarter',
      one:
          'Pareho ukon labaw sa ginapaabot nga EPS sa $beats sang 1 ka kwarter',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return 'Ang $symbol magapagwa sang resulta kada kwarter buwas';
  }

  @override
  String earningsReminderToday(String symbol) {
    return 'Ang $symbol magapagwa sang resulta kada kwarter subong';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return 'Ginapaabot subong ang dibidendo sang $symbol';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Mga $amount. Irekord ini sa imo portfolio kon mag-abot na.';
  }

  @override
  String get dividendRemindersTitle => 'Mga pahanumdom sa dibidendo';

  @override
  String get dividendRemindersSubtitle =>
      'Pahibalo sa adlaw nga ginapaabot ang dibidendo suno sa ritmo sang imo narekord nga mga bayad, agod marekord mo ini';

  @override
  String get earningsRemindersTitle => 'Mga pahanumdom sa resulta';

  @override
  String get earningsRemindersSubtitle =>
      'Pahibalo isa ka adlaw antes magpagwa sang resulta kada kwarter ang mga stock sa imo mga paborito ukon portfolio';

  @override
  String addAllToFavorites(int count) {
    return 'Idugang tanan sa mga paborito ($count)';
  }

  @override
  String get portfolioImportPhoto => 'I-import halin sa screenshot';

  @override
  String get holdingsReading => 'Ginabasa ang imo mga posisyon…';

  @override
  String get holdingsReviewTitle => 'Mga posisyon nga nakit-an';

  @override
  String get holdingsReviewHint =>
      'Usisaa ang mga numero antes idugang. Ang presyo amo ang imo average nga presyo sang pagbakal kada share, indi ang presyo subong.';

  @override
  String get holdingsNoPrice =>
      'Wala sang average nga presyo sang pagbakal sa litrato';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Idugang ang $count ka posisyon',
      one: 'Idugang ang 1 ka posisyon',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Wala sang nakit-an nga posisyon sa stock sa sini nga litrato. Tilawi ang screenshot sang pahina sang mga posisyon ukon holdings sang imo broker.';

  @override
  String get week52Range => 'Sakop sang 52 ka semana';

  @override
  String week52BelowHigh(String percent) {
    return '$percent nubo sa pinakataas sa 52 ka semana';
  }

  @override
  String get week52AtHigh => 'Yara sa pinakataas sa 52 ka semana';

  @override
  String get alertKindTrailing => 'Magnubo halin sa pinakataas';

  @override
  String get alertTrailingPercent => 'Kanubo halin sa pinakataas (%)';

  @override
  String get alertTrailingHint =>
      'Ginasunod ang presyo pataas: magapahibalo kon magnubo ang presyo sini kadamo halin sa pinakataas nga lebel sugod sang ginbutang mo ini.';

  @override
  String alertDescTrailing(String percent) {
    return '$percent kanubo halin sa pinakataas';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'pinakataas tubtob subong: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return 'Nagnubo ang $symbol sing $percent halin sa pinakataas';
  }

  @override
  String get sectionInsiders => 'Mga transaksyon sang insider';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ka pagbakal',
      one: '1 ka pagbakal',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ka pagbaligya',
      one: '1 ka pagbaligya',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Net: $shares ka share';
  }

  @override
  String get insiderBuy => 'Ginbakal';

  @override
  String get insiderSell => 'Ginbaligya';

  @override
  String get insiderHint =>
      'Mga pagbakal kag pagbaligya sa open market sang mga executive kag director sa nagligad nga 90 ka adlaw (SEC Form 4). Indi ginaisip ang paggamit sang option kag mga share award.';

  @override
  String get insiderNone =>
      'Wala sing pagbakal ukon pagbaligya sang insider sa open market sa nagligad nga 90 ka adlaw.';

  @override
  String get analystTrend => 'Paano nagbag-o ang mga panan-awan kada bulan';

  @override
  String get watchListAll => 'Tanan';

  @override
  String get watchListNew => 'Bag-o nga listahan';

  @override
  String get watchListName => 'Ngalan sang listahan';

  @override
  String get watchListRename => 'Ilisan ang ngalan sang listahan';

  @override
  String get watchListDelete => 'Panason ang listahan';

  @override
  String get watchListAddTo => 'Idugang sa listahan';

  @override
  String get watchListEmpty =>
      'Wala pa sing stock sa sini nga listahan. I-tap ang button sang listahan sa tupad sang stock agod idugang ini.';

  @override
  String get portfolioAskTitle => 'Mga pamangkot parte sa imo portfolio';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'Backup';

  @override
  String get backupSave => 'I-save ang backup';

  @override
  String get backupSaveHint =>
      'Ang imo mga paborito, listahan, portfolio, alerto kag nota sa isa ka file.';

  @override
  String get backupRestore => 'I-restore halin sa backup';

  @override
  String get backupRestoreHint =>
      'Idugang ang yara sa file; wala sang mapapas sa imo yara subong.';

  @override
  String get backupRestored => 'Na-restore ang backup.';

  @override
  String get backupInvalid => 'Ini nga file indi WhatStock backup.';

  @override
  String get allocationPositions => 'Mga stock';

  @override
  String get allocationSectors => 'Sektor';

  @override
  String get allocationCurrencies => 'Currency';

  @override
  String get allocationAccounts => 'Mga account';

  @override
  String get compareReturn1y => '1 ka tuig nga ganansya';

  @override
  String get compareFromHigh => 'Halin sa pinakataas sa 52 ka semana';

  @override
  String get briefAutoTitle => 'Adlaw-adlaw nga buod kada aga';

  @override
  String get briefAutoSubtitle =>
      'Ang “Subong upod ang imo mga stock” awtomatiko nga mahimo pagkatapos sang 7:00 sang aga samtang nagadalagan ang app; sa mga kompyuter, may notipikasyon nga magapahibalo sa imo. Ginagamit sini ang imo adlaw-adlaw nga limitasyon sang pamangkot, indi ang pagtuki.';

  @override
  String get targetsButton => 'Target nga pagbahin';

  @override
  String get targetsTitle => 'Target nga pagbahin';

  @override
  String get targetsHint =>
      'Itakda kon pila ka bahin sang portfolio ang dapat sa kada stock. Bayai nga blangko ang field kon wala sing target. Dayon ipakita sang app kon ano ang baklon ukon ibaligya agod makalab-ot didto.';

  @override
  String targetsSum(String percent) {
    return 'Kabilugan: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Bakla ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Ibaligya ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Ara sa target';

  @override
  String earningsResultBeat(String symbol) {
    return 'Nalampasan sang $symbol ang ginapaabot nga EPS';
  }

  @override
  String earningsResultMiss(String symbol) {
    return 'Wala maabot sang $symbol ang ginapaabot nga EPS';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'Gin-report nga EPS $actual, ginapaabot $estimate';
  }

  @override
  String get newsExplain => 'Ano ang buot silingon sini?';

  @override
  String get watchAlertAll => 'Alerto sa dalagku nga hulag sa adlaw';

  @override
  String get watchAlertAllHint =>
      'Isa ka alerto sa presyo para sa kada stock sa sini nga listahan nga magatunog kon maghulag ini sing amo sini kadako sa isa ka adlaw, pataas ukon panaog. Ang mga stock nga may alerto na magapabilin sang ila.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Gin-set ang $count ka alerto',
      one: 'Gin-set ang 1 ka alerto',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized =>
      'I-export ang na-realize nga ganansya (CSV)';

  @override
  String get portfolioAnnualReturn => 'Tinuig nga kita';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / tuig';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Tinuig nga kita nga gintimbang sa kuwarta (XIRR): ginakonsiderar sini kon san-o ka nagbakal kag nagbaligya, gani ang kuwarta nga gindugang sa ulihi indi makatiko sini. Ginapakita ini kon ang imo una nga ginbakal may isa na ka tuig man lang; wala nalakip ang mga dibidendo.';

  @override
  String get eventsAddToCalendar => 'Idugang sa kalendaryo (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Alerto sa portfolio';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Pahibalo kon maghulag sing amo sini kadamo ang bug-os mo nga portfolio sa isa ka adlaw.';

  @override
  String get portfolioMoveAlertOff => 'Patay';

  @override
  String portfolioMoveUp(String percent) {
    return 'Nagtaas sing $percent ang imo portfolio subong';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Nagnubo sing $percent ang imo portfolio subong';
  }

  @override
  String get whatIfTitle => 'Paano kon nag-invest ka?';

  @override
  String get whatIfAmount => 'Kantidad';

  @override
  String whatIfResult(String amount, String period) {
    return 'Ang $amount nga gin-invest $period na ang nagligad nagakantidad kuntani subong sang';
  }

  @override
  String get whatIfNote =>
      'Base lang sa presyo sang share: wala labot ang dibidendo, bayad kag buhis. Ang nagligad nga ganansya indi magtagna sang palaabuton.';

  @override
  String get watchShare => 'I-share ang listahan';

  @override
  String get watchImport => 'Magdugang sang mga ticker';

  @override
  String get watchImportHint =>
      'I-paste ang mga ticker nga ginbulag sang comma, space ukon bag-o nga linya – halimbawa, isa ka listahan nga gin-share sa imo sang iban.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Gindugang ang $count ka stock',
      one: 'Gindugang ang 1 ka stock',
      zero: 'Wala sang bag-o nga stock',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Pinakadako anay';

  @override
  String get positionsSortGain => 'Pinakadako nga total nga ganansya anay';

  @override
  String get positionsSortToday => 'Pinakamaayo subong anay';

  @override
  String get chartMyBuys => 'Imo mga ginbakal';

  @override
  String get chartMySells => 'Imo mga ginbaligya';

  @override
  String get shortcutsTitle => 'Mga keyboard shortcut';

  @override
  String usMarketOpen(String time) {
    return 'Bukas ang merkado sang US · magasira sa sulod sang $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Sarado ang merkado sang US · magabukas sa sulod sang $time';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes min';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours oras $minutes min';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days adlaw $hours oras';
  }

  @override
  String get dividendGoalSet =>
      'Magbutang sang binulan nga tulumuron sa dibidendo';

  @override
  String get dividendGoalTitle => 'Binulan nga tulumuron sa dibidendo';

  @override
  String get dividendGoalAmount => 'Dibidendo kada bulan';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Mga $amount kada bulan sa yield subong: $percent sang imo tulumuron nga $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Mga $amount kada bulan sa yield subong: naabot na ang imo tulumuron nga $goal';
  }

  @override
  String get portfolioAccount => 'Account';

  @override
  String get portfolioAccountHint => 'pananglitan PERA (opsyonal)';

  @override
  String get portfolioAccountAdd => 'Itakda ang account';

  @override
  String get portfolioAccountsAll => 'Tanan nga account';

  @override
  String get portfolioAccountNote =>
      'Mga transaksyon kag dibidendo lang sini nga account. Ang cash, mga tulumuron kag ang analisis sang AI makita sa Tanan nga account.';

  @override
  String get portfolioNoAccount => 'Wala sing account';

  @override
  String portfolioFee(String currency) {
    return 'Komisyon ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Idugang ang komisyon';

  @override
  String portfolioFeeRow(String amount) {
    return 'Komisyon: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'Tinuig nga sumaryo';

  @override
  String get portfolioProceeds => 'Kita sa pagbaligya';

  @override
  String get portfolioCostBasis => 'Gasto sa pagbakal';

  @override
  String get portfolioFeesPaid => 'Nabayaran nga komisyon';

  @override
  String get portfolioAnnualSummaryNote =>
      'Mga kantidad sa orihinal nga currency, wala gin-convert. Ang kita sa pagbaligya bawas na ang komisyon sa pagbaligya; upod sa gasto sa pagbakal ang komisyon sa pagbakal (FIFO). Para sa imo tax return, i-convert sa exchange rate nga ginapangayo sang imo tax authority.';

  @override
  String get portfolioShare => 'Ipaambit ang performance';

  @override
  String get portfolioShareHeading => 'Akon portfolio';

  @override
  String get portfolioTopHoldings => 'Pinakadako nga mga posisyon';

  @override
  String get portfolioShareNote =>
      'Porsiyento lang ang ginapaambit, wala sang kantidad.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ka posisyon',
      one: '1 ka posisyon',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'Indi laygay sa pag-invest';

  @override
  String get contributionButton => 'Mag-invest sang bag-o nga kuwarta';

  @override
  String contributionAmount(String currency) {
    return 'Kantidad nga i-invest ($currency)';
  }

  @override
  String get contributionHint =>
      'Pagbakal lang, wala sing pagbaligya: ang mga posisyon nga pinakamalayo sa idalom sang ila target ang una nga makabaton sang kuwarta.';

  @override
  String contributionShares(String shares) {
    return '≈ $shares ka share';
  }

  @override
  String contributionMissing(String symbols) {
    return 'Wala sang presyo subong para sa $symbols: wala ginlakip sa pagbinahin.';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'Kon magpabilin ang tinuig nga kita ($rate), maabot mo ang tulumuron mga tuig $year.';
  }

  @override
  String get portfolioMaxDrawdown => 'Pinakadako nga pagbaba';

  @override
  String get glossMaxDrawdown =>
      'Ang pinakadako nga pagbaba sang balor sang imo mga stock halin sa isa ka nauna nga pinakamataas pakadto sa isa ka ulihi nga pinakamanubo, nga wala sang epekto sang imo pagbakal kag pagbaligya (time-weighted). Ginapakita sini kon daw ano kadalom nga pagbaba ang naagihan na sang imo portfolio.';

  @override
  String watchSince(String date) {
    return 'Halin sang gindugang mo ini sa mga paborito ($date)';
  }

  @override
  String get portfolioGoalSet => 'Magbutang sang tulumuron';

  @override
  String get portfolioGoalTitle => 'Tulumuron sang portfolio';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent sang imo tulumuron nga $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Naabot ang tulumuron nga $amount';
  }

  @override
  String get portfolioGoalRemove => 'Kuhaa ang tulumuron';

  @override
  String get alertEdit => 'I-edit ang alerto';

  @override
  String get positionOpenLots => 'Ginakaptan pa (pinakadaan anay)';

  @override
  String get lotRemoved => 'Napanas ang transaksyon';

  @override
  String get alertDeleted => 'Napanas ang alerto';

  @override
  String get alertsClearTriggered => 'Panasa ang mga na-trigger nga alerto';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Napanas ang $count ka alerto',
      one: 'Napanas ang 1 ka alerto',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Panguna nga screen';

  @override
  String get allocationCountries => 'Pungsod';

  @override
  String get newsExplainNoteResearch =>
      'Paathag sang AI: ginapangita sini ang mga kamatuoran sa web, ginabuksan ang artikulo kag ginatimbang kon daw ano ka masaligan ang ginhalinan. Indi ini laygay sa pag-invest. Ginagamit sini ang imo adlaw-adlaw nga limitasyon sang pamangkot, indi ang pagtuki.';

  @override
  String get sourceOfficial => 'Opisyal';

  @override
  String get sourcePressRelease => 'Pahayag';

  @override
  String get sourceMajorNews => 'Dakung media';

  @override
  String get sourceOpinion => 'Opinyon';

  @override
  String get earningsSummaryButton =>
      'Ano ang sulod sang pinakabag-o nga report?';

  @override
  String get earningsSummaryNote =>
      'Kalip-ot sang AI sang paanunsyo sang resulta sang kompanya kag sang mga balita nga nakita sini sa web. Indi ini laygay sa pag-invest. Ginagamit sini ang imo adlaw-adlaw nga limitasyon sang pamangkot, indi ang pagtuki.';

  @override
  String get compareLastSurprise => 'EPS nagligad kwarter vs. ginapaabot';

  @override
  String get compareNextReport => 'Masunod nga report';

  @override
  String get resolvingDescription =>
      'Ginapat-od kon ano nga stock ang buot mo silingon…';

  @override
  String get instrumentTitle => 'Parte sa sini nga instrumento';

  @override
  String get instrumentHint =>
      'Wala sang profile sang kompanya para sa sini nga simbolo – mahimo nga ETF, fund ukon depositary receipt ini. Pamangkuta ang AI kon ano ini, ano ang sulod sini kag pila ang gasto sini.';

  @override
  String get instrumentAsk => 'Ano ini?';

  @override
  String get instrumentNote =>
      'Paathag sang AI halin sa fund page sang nag-isyu kag sa mga financial site nga nakita sini sa web. Indi ini laygay sa pag-invest. Ginagamit sini ang imo adlaw-adlaw nga limitasyon sang pamangkot, indi ang pagtuki.';

  @override
  String suggestAskAi(String query) {
    return 'Pamangkuta ang AI: “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Wala sang presyo subong para sa $symbols.';
  }

  @override
  String get eventsRecentResults => 'Bag-o lang gin-report nga resulta';

  @override
  String get saveToNotes => 'I-save sa akon mga nota';

  @override
  String get savedToNotes => 'Na-save sa imo mga nota';

  @override
  String get portfolioDividendsReceived => 'Nabaton nga dibidendo';

  @override
  String get portfolioDividendsThisYear => 'Sini nga tuig';

  @override
  String get portfolioDividendsAllTime => 'Tanan nga tion';

  @override
  String get portfolioAddDividend => 'Idugang ang dibidendo';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Kantidad nga nabaton ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Petsa sang pagbayad';

  @override
  String get portfolioDividendsEmpty =>
      'Wala pa sang narekord nga dibidendo. Idugang ini sa kamot, ukon i-import ang export sang imo broker – ginakuha man ang mga linya sang dibidendo sini.';

  @override
  String get portfolioSplit => 'Stock split';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Stock split: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Ginabag-o ang mga pagbakal kag pagbaligya nga may petsa antes sang split: ginapadamo ang kadamuon sang mga share kag ginabahin ang presyo kada share, agod magpabilin ang gasto.';

  @override
  String get portfolioSplitRatio => 'Ratio (bag-o : daan)';

  @override
  String get portfolioSplitRatioError =>
      'Isulod ang ratio pareho sang 10:1, ukon 1:10 para sa reverse split.';

  @override
  String get portfolioSplitDate => 'Petsa sang split';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Stock split $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Ginpanas ang stock split';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count stock split ang gindugang',
      one: '1 stock split ang gindugang',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dibidendo ang gindugang',
      one: '1 dibidendo ang gindugang',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'I-export ang mga dibidendo (CSV)';

  @override
  String get portfolioDividendDeleted => 'Napanas ang dibidendo';

  @override
  String get portfolioDividendsHint =>
      'Mga kantidad suno sa pag-abot sini sa imo account, sa currency sang pagbayad; ang mga total gina-convert sa rate subong. Para sa imo tax return, gamita ang statement sang imo broker.';

  @override
  String get awayTitle => 'Samtang wala ka';

  @override
  String awaySince(String when) {
    return 'Halin $when';
  }

  @override
  String get awayQuiet => 'Wala sing daku nga nagbag-o.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count alerto ang na-trigger',
      one: '1 alerto ang na-trigger',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Nagpagwa sang resulta: $symbols';
  }

  @override
  String get moveWhyButton => 'Ngaa nagahulag ini subong?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent subong';
  }

  @override
  String get moveWhyNote =>
      'Paathag sang AI halin sa mga balita subong nga adlaw nga nakita sa web; ang matuod nga rason mahimo nga indi mahibaluan ukon lain. Indi laygay sa pagpamuhunan. Nagagamit sang imo adlaw-adlaw nga kuota sang pamangkot, indi analisis.';

  @override
  String get sectionTechnical => 'Teknikal nga laragway';

  @override
  String get labelSma50 => '50 ka adlaw nga average';

  @override
  String get labelSma200 => '200 ka adlaw nga average';

  @override
  String get labelRsi => 'RSI (14 ka adlaw)';

  @override
  String get labelVolatility30 => 'Volatility (30 ka adlaw)';

  @override
  String techAbove(String percent) {
    return '$percent sa ibabaw';
  }

  @override
  String techBelow(String percent) {
    return '$percent sa idalom';
  }

  @override
  String get techOverbought => 'overbought';

  @override
  String get techOversold => 'oversold';

  @override
  String get techNeutral => 'neutral';

  @override
  String get techGoldenCross =>
      'Ang 50 ka adlaw nga average yara sa ibabaw sang 200 ka adlaw nga average – pasaka nga uso suno sa klasiko nga pagbasa.';

  @override
  String get techDeathCross =>
      'Ang 50 ka adlaw nga average yara sa idalom sang 200 ka adlaw nga average – paubos nga uso suno sa klasiko nga pagbasa.';

  @override
  String get glossSma50 =>
      'Ang average nga closing price sang nagligad nga 50 ka adlaw sang pamatigayon. Ang presyo nga mas mataas sini masami ginabasa bilang kusog sa malip-ot nga tion, ang mas manubo bilang kaluya.';

  @override
  String get glossSma200 =>
      'Ang average nga closing price sang nagligad nga 200 ka adlaw sang pamatigayon – ang klasiko nga linya sang uso sa malawig nga tion. Madamo nga mamumuhunan nagakabig sang presyo nga mas mataas sini bilang pasaka nga uso sa malawig nga tion.';

  @override
  String get glossRsi =>
      'Relative strength index: ginakumparar ang bag-o nga mga ganansya sa bag-o nga mga kapierde sa sukatan nga 0–100. Sa ibabaw sang 70 ang stock masami ginatawag nga overbought (madasig nga nagsaka), sa idalom sang 30 oversold – pero ang mabaskog nga uso mahimo magpabilin didto sing malawig.';

  @override
  String get glossVolatility =>
      'Daw ano ang pagbag-o sang presyo adlaw-adlaw, ginsukat sa isa ka tuig: ang 20% nagakahulugan nga sa ordinaryo nga tuig ang presyo nagahulag sa sulod sang mga ±20%. Mas mataas nga volatility nagakahulugan sang mas dalagko nga hulag sa duha ka direksyon.';

  @override
  String get techNote =>
      'Ginkwenta halin sa adlaw-adlaw nga closing price. Ang teknikal nga mga signal nagalaragway sang nagligad, indi sang palaabuton.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$above sa $count ka posisyon labaw sa ila 200 ka adlaw nga average';
  }

  @override
  String get watchSignalsTitle => 'Mga signal';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · oversold';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · overbought';
  }

  @override
  String get signalCrossedAbove =>
      'nagsaka sa ibabaw sang 200 ka adlaw nga average';

  @override
  String get signalCrossedBelow =>
      'nagpanaog sa idalom sang 200 ka adlaw nga average';

  @override
  String get signalAlertsTitle => 'Mga pahibalo sa teknikal nga signal';

  @override
  String get signalAlertsSubtitle =>
      'Makaisa sa isa ka adlaw, kon ang isa ka stock nga ginasunod mo mangin oversold ukon overbought (RSI), ukon ang presyo sini maglabang sa iya 200 ka adlaw nga average.';

  @override
  String get signalAlertsNotification => 'Mga teknikal nga signal';

  @override
  String get glossaryPageTitle => 'Glosaryo';

  @override
  String get glossaryPageSubtitle =>
      'Simple nga mga paathag sa kada numero nga ginapakita sang app, halin sa P/E tubtob RSI';

  @override
  String get glossarySearchHint => 'Pangitaa sa glosaryo';

  @override
  String get portfolioCash => 'Cash';

  @override
  String get portfolioCashTitle => 'Balanse sang cash';

  @override
  String get portfolioCashHint =>
      'Kuwarta nga wala pa ma-invest sa imo broker, kada currency. Ginaisip ini sa kabilogan nga bili kag pagbahin; indi sa kita.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Kantidad ($currency)';
  }

  @override
  String get portfolioCashEdit => 'I-set ang balanse sang cash';

  @override
  String get portfolioDividendsByMonth => 'Kada bulan';

  @override
  String get dividendsLegendReceived => 'Nabaton';

  @override
  String get dividendsLegendExpected => 'Ginalauman';

  @override
  String get portfolioDividendsExpected => 'Ginapaabot nga masunod';

  @override
  String get portfolioDividendsExpectedNote =>
      'Ginbanta-banta halin sa mga petsa kag kantidad sang mga bayad nga narekord mo; mahimo ini bag-uhon ukon laktawan sang mga kompanya.';

  @override
  String portfolioDividendAround(String date) {
    return 'mga $date';
  }
}
