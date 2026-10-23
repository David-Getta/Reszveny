// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Filipino Pilipino (`fil`).
class AppLocalizationsFil extends AppLocalizations {
  AppLocalizationsFil([String locale = 'fil']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Kuhanan ng larawan ang isang stock at alamin ang lahat tungkol dito.';

  @override
  String get homeHint =>
      'Share certificate, screen ng brokerage app, diyaryo o logo ng kumpanya – kahit anong tumutukoy sa isang stock.';

  @override
  String get takePhoto => 'Kumuha ng larawan';

  @override
  String get chooseFromGallery => 'Pumili mula sa gallery';

  @override
  String get chooseImage => 'Pumili ng larawan';

  @override
  String get enterTickerManually => 'Ilagay ang ticker nang manu-mano';

  @override
  String get tickerInputLabel => 'Ticker symbol';

  @override
  String get tickerInputHint => 'hal. AAPL';

  @override
  String get lookUp => 'Hanapin';

  @override
  String demoModeBanner(String symbols) {
    return 'Demo mode – walang naka-configure na market data key. May sample data para sa: $symbols.';
  }

  @override
  String get recognizing => 'Sinusuri ang larawan…';

  @override
  String get loadingData => 'Nilo-load ang data…';

  @override
  String get noCandidatesTitle => 'Walang nakilalang stock';

  @override
  String get noCandidatesBody =>
      'Hindi namin matukoy ang stock sa larawang ito. Subukan ang mas malinaw na larawan, o ilagay ang ticker nang manu-mano.';

  @override
  String get whatWeSaw => 'Ang nakita namin';

  @override
  String get chooseCandidateTitle => 'Aling stock ang ibig mong sabihin?';

  @override
  String confidencePercent(int percent) {
    return '$percent% kumpiyansa';
  }

  @override
  String get settings => 'Mga setting';

  @override
  String get language => 'Wika';

  @override
  String get systemLanguage => 'Default ng system';

  @override
  String get about => 'Tungkol dito';

  @override
  String get disclaimer =>
      'Nagbibigay lamang ng impormasyon ang app na ito at hindi ito payo sa pamumuhunan. Maaaring naantala o hindi tumpak ang data.';

  @override
  String dataSource(String source) {
    return 'Pinagmulan ng data: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Pagkilala: $source';
  }

  @override
  String get retry => 'Subukang muli';

  @override
  String get cancel => 'Kanselahin';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Isara';

  @override
  String get errorGeneric => 'Nagkaproblema.';

  @override
  String get errorSectionUnavailable => 'Hindi ma-load ang seksyong ito.';

  @override
  String get notAvailable => 'wala';

  @override
  String get sectionIdentity => 'Pagkakakilanlan';

  @override
  String get sectionPrice => 'Presyo';

  @override
  String get sectionValuation => 'Valuation';

  @override
  String get sectionFinancials => 'Pinansyal';

  @override
  String get sectionDividend => 'Dibidendo';

  @override
  String get sectionProfile => 'Profile ng kumpanya';

  @override
  String get sectionAnalysts => 'Mga rating ng analyst';

  @override
  String get sectionNews => 'Balita';

  @override
  String get sectionRecognition => 'Mga detalye ng pagkilala';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Exchange';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Currency';

  @override
  String get labelCountry => 'Bansa';

  @override
  String get labelIndustry => 'Industriya';

  @override
  String get labelSector => 'Sektor';

  @override
  String get labelWebsite => 'Website';

  @override
  String get labelIpoDate => 'Petsa ng IPO';

  @override
  String get labelMarketCap => 'Market cap';

  @override
  String get labelSharesOutstanding => 'Shares outstanding';

  @override
  String get labelEmployees => 'Mga empleyado';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Punong-tanggapan';

  @override
  String get labelDescription => 'Paglalarawan';

  @override
  String get labelLastPrice => 'Huling presyo';

  @override
  String get labelChange => 'Pagbabago';

  @override
  String get labelOpen => 'Pagbukas';

  @override
  String get labelDayHigh => 'Pinakamataas ngayong araw';

  @override
  String get labelDayLow => 'Pinakamababa ngayong araw';

  @override
  String get labelPreviousClose => 'Nakaraang pagsara';

  @override
  String get labelWeek52High => '52-linggong pinakamataas';

  @override
  String get labelWeek52Low => '52-linggong pinakamababa';

  @override
  String get labelAverageVolume10d => 'Avg. volume (10 araw)';

  @override
  String updatedAt(String time) {
    return 'Na-update $time';
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
  String get labelRevenueTtm => 'Kita (TTM)';

  @override
  String get labelNetIncomeTtm => 'Netong kita (TTM)';

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
  String get labelRevenueGrowth => 'Paglago ng kita (YoY)';

  @override
  String get labelEpsGrowth => 'Paglago ng EPS (YoY)';

  @override
  String get labelDividendYield => 'Dividend yield';

  @override
  String get labelDividendPerShare => 'Dibidendo kada share';

  @override
  String get labelPayoutRatio => 'Payout ratio';

  @override
  String get labelYieldOnCost => 'Yield on cost';

  @override
  String get labelDividendGrowth5y => 'Paglago ng dibidendo (5 taon)';

  @override
  String get dividendNone =>
      'Walang dibidendong ibinayad sa nakalipas na 12 buwan.';

  @override
  String get dividendOnYourShares => 'Sa iyong mga share, kada taon';

  @override
  String get labelConsensus => 'Consensus';

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
      other: '$count analyst',
      one: '1 analyst',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Panahon: $period';
  }

  @override
  String get noNews => 'Walang bagong balita.';

  @override
  String get openArticle => 'Buksan ang artikulo';

  @override
  String get openLinkFailed => 'Hindi mabuksan ang link.';

  @override
  String get recognitionSummary => 'Buod';

  @override
  String get recognitionEvidence => 'Bakit namin ito inaakala';

  @override
  String get recognitionRawText => 'Tekstong nabasa mula sa larawan';

  @override
  String get errMissingAnthropicKey =>
      'Hindi naka-configure ang pagkilala ng larawan (walang ANTHROPIC_API_KEY). Ilagay ang ticker nang manu-mano.';

  @override
  String get errRecognitionUnreachable =>
      'Hindi ma-contact ang serbisyo ng pagkilala. Suriin ang iyong koneksyon sa internet.';

  @override
  String errRecognitionHttp(String status) {
    return 'Nagbalik ng error ang serbisyo ng pagkilala (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Hindi maproseso ng serbisyo ng pagkilala ang larawang ito.';

  @override
  String get errRecognitionTruncated =>
      'Naputol ang tugon ng pagkilala. Pakisubukang muli.';

  @override
  String get errRecognitionBadResponse =>
      'Hindi inaasahang tugon mula sa serbisyo ng pagkilala.';

  @override
  String get errRecognitionEmpty =>
      'Nagbalik ng walang lamang tugon ang serbisyo ng pagkilala.';

  @override
  String get errMissingFinnhubKey =>
      'Hindi naka-configure ang market data (walang FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Hindi ma-contact ang serbisyo ng market data. Suriin ang iyong koneksyon sa internet.';

  @override
  String get errMarketRateLimited =>
      'Masyadong maraming request sa serbisyo ng market data. Maghintay muna ng isang minuto.';

  @override
  String errMarketHttp(String status) {
    return 'Nagbalik ng error ang serbisyo ng market data (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Hindi inaasahang tugon mula sa serbisyo ng market data.';

  @override
  String errNoQuote(String symbol) {
    return 'Walang nakitang data ng presyo para sa $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Walang nakitang profile ng kumpanya para sa $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Sinusuportahan lamang ng demo mode ang $symbols. Magdagdag ng FINNHUB_API_KEY para sa live data.';
  }

  @override
  String errUnknown(String detail) {
    return 'Nagkaproblema: $detail';
  }

  @override
  String get newSearch => 'Bagong paghahanap';

  @override
  String get recentSearches => 'Kamakailan';

  @override
  String get noRecentSearches => 'Wala pang kamakailang paghahanap.';

  @override
  String get clearRecent => 'I-clear ang kamakailan';

  @override
  String get greeting => 'Aling stock ang titingnan natin?';

  @override
  String get searchHint => 'Ticker o pangalan ng kumpanya';

  @override
  String get attachImage => 'Maglakip ng larawan';

  @override
  String get searchResultsTitle => 'Mga resulta ng paghahanap';

  @override
  String errNoResults(String query) {
    return 'Walang nahanap na stock para sa “$query”.';
  }

  @override
  String get quickBarHint => 'Mag-type ng ticker o pangalan ng kumpanya…';

  @override
  String get openFullWindow => 'Buksan ang window';

  @override
  String hotkeyHint(String shortcut) {
    return 'Pindutin ang $shortcut kahit saan para tawagin ang WhatStock.';
  }

  @override
  String get trayOpen => 'Buksan ang WhatStock';

  @override
  String get trayQuickSearch => 'Mabilisang paghahanap';

  @override
  String get trayQuit => 'Umalis';

  @override
  String get appearance => 'Hitsura';

  @override
  String get themeSystem => 'System';

  @override
  String get themeDark => 'Madilim';

  @override
  String get themeLight => 'Maliwanag';

  @override
  String get back => 'Bumalik';

  @override
  String get aiSectionTitle => 'Pagsusuri ng AI';

  @override
  String get aiIntro =>
      'Isang detalyadong pangkalahatang-ideya na isinulat ng AI: buod ng mga pinakabagong balita, ang negosyo, mga lakas, mga panganib at nakatagong salik, valuation, isang pananaw sa presyo na may mga senaryo mula sa sikolohikal, sosyolohikal, teknikal at macro na anggulo, at ang dapat bantayan.';

  @override
  String get aiGenerate => 'Gumawa ng pagsusuri';

  @override
  String get aiRegenerate => 'Gumawa muli';

  @override
  String get aiGenerating =>
      'Inihahanda ang pagsusuri… maaaring tumagal ito ng isa o dalawang minuto.';

  @override
  String get aiSources => 'Mga pinagmulan';

  @override
  String aiGeneratedAt(String time) {
    return 'Ginawa $time';
  }

  @override
  String get aiDisclaimer =>
      'Pagsusuring ginawa ng AI batay sa pampublikong data at mga pinakabagong balita. Maaaring may mga pagkakamali o luma na ito, at hindi ito payo sa pamumuhunan.';

  @override
  String get errAiNotConfigured =>
      'Hindi naka-configure ang pagsusuri ng AI (walang ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Hindi ma-contact ang serbisyo ng AI. Suriin ang iyong koneksyon sa internet.';

  @override
  String errAiHttp(String status) {
    return 'Nagbalik ng error ang serbisyo ng AI (HTTP $status).';
  }

  @override
  String get errAiRefused =>
      'Tumanggi ang serbisyo ng AI na suriin ang stock na ito.';

  @override
  String get errAiBadResponse =>
      'Hindi inaasahang tugon mula sa serbisyo ng AI.';

  @override
  String get sectionChart => 'Chart ng presyo';

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
      'Hindi available ang kasaysayan ng presyo mula sa kasalukuyang pinagmulan ng data.';

  @override
  String get sectionStatements => 'Mga financial statement (taunan)';

  @override
  String get labelFiscalYear => 'Taong piskal';

  @override
  String get labelRevenue => 'Kita';

  @override
  String get labelNetIncome => 'Netong kita';

  @override
  String get labelTotalAssets => 'Kabuuang asset';

  @override
  String get labelTotalLiabilities => 'Kabuuang pananagutan';

  @override
  String get labelEquity => 'Equity ng mga shareholder';

  @override
  String get labelOperatingCashFlow => 'Operating cash flow';

  @override
  String get statementsUnavailable =>
      'Hindi available ang mga iniulat na financial statement para sa stock na ito.';

  @override
  String get launchAtLogin => 'Buksan sa pag-log in';

  @override
  String get hotkeyLabel => 'Global na shortcut';

  @override
  String get hotkeyRecordHint =>
      'I-click ito, pagkatapos pindutin ang bagong kombinasyon ng key';

  @override
  String get hotkeyReset => 'I-reset sa default';

  @override
  String get pasteImage => 'I-paste ang larawan mula sa clipboard';

  @override
  String get errClipboardNoImage => 'Walang larawan sa clipboard.';

  @override
  String get favorites => 'Mga Paborito';

  @override
  String get addToFavorites => 'Idagdag sa mga paborito';

  @override
  String get removeFromFavorites => 'Alisin sa mga paborito';

  @override
  String get noFavorites =>
      'Wala pang paborito. I-tap ang bituin sa isang stock para idagdag ito.';

  @override
  String get displayCurrency => 'Currency na ipapakita';

  @override
  String get displayCurrencyNone => 'Sariling currency lang ng stock';

  @override
  String labelConverted(String currency) {
    return '≈ sa $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Rate: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Mga update';

  @override
  String currentVersion(String version) {
    return 'Bersyon $version';
  }

  @override
  String get autoUpdate => 'Awtomatikong i-install ang mga update';

  @override
  String get checkForUpdates => 'Tingnan kung may update';

  @override
  String get updateChecking => 'Tinitingnan kung may update…';

  @override
  String get updateUpToDate => 'Nasa pinakabagong bersyon ka na.';

  @override
  String updateAvailable(String version) {
    return 'Available na ang bersyon $version.';
  }

  @override
  String get updateDownloading => 'Dina-download ang update sa background…';

  @override
  String get updateDownloaded =>
      'Handa na ang update. I-restart para i-install ito.';

  @override
  String get updateNow => 'I-update';

  @override
  String get restartNow => 'I-restart';

  @override
  String get updatesViaStore =>
      'Awtomatikong dumarating ang mga update sa pamamagitan ng app store.';

  @override
  String get updateCheckFailed => 'Hindi matingnan kung may update.';

  @override
  String get subscription => 'Subscription';

  @override
  String get planTrial => 'Trial';

  @override
  String get planNormal => 'Normal';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Walang aktibong plan';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count pagsusuri bawat buwan';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$days-araw na libreng trial na may $count pagsusuri';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days araw na natitira sa trial',
      one: '1 araw na natitira sa trial',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Natapos na ang iyong libreng trial. Pumili ng plan para magpatuloy sa pagsusuri.';

  @override
  String analysesRemaining(int remaining, int total) {
    return '$remaining sa $total pagsusuri ang natitira sa panahong ito';
  }

  @override
  String extraCredits(int count) {
    return '$count dagdag na pagsusuri';
  }

  @override
  String renewsOn(String date) {
    return 'Mare-renew sa $date';
  }

  @override
  String get choosePlan => 'Pumili ng plan';

  @override
  String get currentPlan => 'Kasalukuyang plan';

  @override
  String get subscribe => 'Mag-subscribe';

  @override
  String get perMonth => '/ buwan';

  @override
  String get extraPacksTitle =>
      'Kailangan ng higit pa? Bumili ng dagdag na pagsusuri';

  @override
  String get extraPacksHint =>
      'Hindi kailanman nag-e-expire ang dagdag na pagsusuri at ginagamit ito pagkatapos ng iyong buwanang alokasyon.';

  @override
  String get buy => 'Bilhin';

  @override
  String get restorePurchases => 'I-restore ang mga binili';

  @override
  String get manageSubscription => 'Pamahalaan ang subscription';

  @override
  String get purchaseSuccess => 'Salamat! Aktibo na ang iyong binili.';

  @override
  String get purchasePending => 'Nakabinbin ang pagbili…';

  @override
  String get purchaseFailed => 'Hindi makumpleto ang pagbili.';

  @override
  String get purchaseCanceled => 'Kinansela ang pagbili.';

  @override
  String get billingUnavailable =>
      'Hindi pa available ang pagbili sa platform na ito. Mag-subscribe sa iyong telepono o Mac; gagana ang iyong plan sa lahat ng device.';

  @override
  String get errQuotaExceeded =>
      'Wala ka nang natitirang pagsusuri para sa panahong ito. I-upgrade ang iyong plan o bumili ng dagdag na pagsusuri.';

  @override
  String get errTrialExpired =>
      'Natapos na ang iyong libreng trial. Pumili ng plan para magpatuloy.';

  @override
  String get errNoPlan => 'Kailangan ng aktibong plan para sa pagsusuri ng AI.';

  @override
  String get viewPlans => 'Tingnan ang mga plan';

  @override
  String get usageTitle => 'Paggamit';

  @override
  String get demoPurchaseNote =>
      'Demo billing: simulated lamang ang mga pagbili sa platform na ito.';

  @override
  String get mostPopular => 'Pinakasikat';

  @override
  String get bestValue => 'Pinakasulit';

  @override
  String get planFeaturesCommon =>
      'Kasama sa bawat plan ang pagkilala ng larawan, live na data, mga chart, mga paborito at lahat ng 120 na wika. Para sa mga pagsusuri ng AI ang alokasyon.';

  @override
  String get searchLanguages => 'Maghanap ng wika…';

  @override
  String get noLanguageMatch => 'Walang tumutugmang wika.';

  @override
  String get aiSettings => 'Pagsusuri ng AI';

  @override
  String get aiLength => 'Haba';

  @override
  String get aiDepthBrief => 'Maikli';

  @override
  String get aiDepthStandard => 'Karaniwan';

  @override
  String get aiDepthDeep => 'Malalim';

  @override
  String get aiDepthBriefDesc => 'Ang mahahalaga, mabilis.';

  @override
  String get aiDepthStandardDesc => 'Buong ulat kasama ang bawat seksyon.';

  @override
  String get aiDepthDeepDesc =>
      'Mas maraming paghahanap sa web, paghahambing sa mga kakumpitensya at mas malalim na detalye.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Mga $min–$max salita';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'gumagamit ng $count pagsusuri',
      one: 'gumagamit ng $count pagsusuri',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Antas ng mambabasa';

  @override
  String get aiReaderBeginner => 'Baguhan';

  @override
  String get aiReaderExperienced => 'May karanasan';

  @override
  String get aiReaderBeginnerDesc =>
      'Simpleng wika; ipinapaliwanag ang bawat teknikal na termino.';

  @override
  String get aiReaderExperiencedDesc =>
      'Mas siksik na teksto na may karaniwang terminolohiyang pampinansyal.';

  @override
  String get aiCounterArgument => 'Pinakamalakas na kontra-argumento';

  @override
  String get aiCounterArgumentDesc =>
      'Laging nagtatapos ang buod sa pinakamatibay na argumento laban sa sarili nitong konklusyon.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Hanggang $count paghahanap sa web bawat pagsusuri sa iyong plan',
      one: 'Hanggang $count paghahanap sa web bawat pagsusuri sa iyong plan',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Karaniwang haba ayon sa plan: Normal $normal, Pro $pro, Max $max, Ultra $ultra. 2 mas kaunti ang Maikli, 2 mas marami ang Malalim.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'hanggang $count paghahanap sa web',
      one: 'hanggang $count paghahanap sa web',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count paghahanap sa web bawat pagsusuri',
      one: '$count paghahanap sa web bawat pagsusuri',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Kailangan ng habang ito ng $needed pagsusuri, pero $left na lang ang natitira. Pumili ng mas maikling haba sa Mga setting o kumuha ng dagdag na pagsusuri.';
  }

  @override
  String get outlookMarketMood => 'Sentimyento ng merkado';

  @override
  String get moodVeryPessimistic => 'Napaka-pesimista';

  @override
  String get moodPessimistic => 'Pesimista';

  @override
  String get moodNeutral => 'Neutral';

  @override
  String get moodOptimistic => 'Optimista';

  @override
  String get moodVeryOptimistic => 'Napaka-optimista';

  @override
  String get scenarioBull => 'Optimistang senaryo';

  @override
  String get scenarioBase => 'Batayang senaryo';

  @override
  String get scenarioBear => 'Pesimistang senaryo';

  @override
  String outlookCurrentPrice(String price) {
    return 'Kasalukuyang presyo: $price';
  }

  @override
  String get outlookKeyLevels => 'Mahahalagang antas';

  @override
  String get keyLevelSupport => 'Support';

  @override
  String get keyLevelResistance => 'Resistance';

  @override
  String get keyLevelAnchor => 'Angkla';

  @override
  String get upcomingEvents => 'Mga paparating na kaganapan';

  @override
  String get outlookChartNote =>
      'Tinatayang saklaw lamang; ang mga probabilidad ay magaspang na pagtataya, hindi hula.';

  @override
  String get accountTitle => 'Account';

  @override
  String get signIn => 'Mag-sign in';

  @override
  String get signOut => 'Mag-sign out';

  @override
  String get notSignedIn => 'Hindi naka-sign in';

  @override
  String get accountBenefit =>
      'Mag-sign in para gumana ang iyong subscription sa lahat ng iyong device.';

  @override
  String get accountSyncedNote =>
      'Pareho ang iyong subscription at natitirang pagsusuri sa bawat device.';

  @override
  String get signInTitle => 'Mag-sign in sa WhatStock';

  @override
  String get emailLabel => 'Email address';

  @override
  String get continueWithEmail => 'Magpatuloy gamit ang email';

  @override
  String codeSentTo(String email) {
    return 'Nagpadala kami ng 6-digit na code sa $email. Valid ito sa loob ng 10 minuto.';
  }

  @override
  String get codeLabel => 'Code sa pag-sign in';

  @override
  String get resendCode => 'Magpadala ng bagong code';

  @override
  String get useDifferentEmail => 'Gumamit ng ibang email';

  @override
  String get errInvalidCode => 'Mali o expired na ang code.';

  @override
  String get errInvalidEmail => 'Maglagay ng valid na email address.';

  @override
  String get errSignInFailed =>
      'Hindi nakapag-sign in. Suriin ang iyong koneksyon at subukang muli.';

  @override
  String get checkoutWaiting =>
      'Kumpletuhin ang pagbabayad sa iyong browser. Awtomatikong mag-a-update ang app kapag tapos na.';

  @override
  String get paymentViaStripe =>
      'Ligtas na pagbabayad sa iyong browser sa pamamagitan ng Stripe. Puwedeng kanselahin anumang oras.';

  @override
  String get paymentViaStore =>
      'Sinisingil sa iyong App Store o Google Play account. Puwedeng kanselahin anumang oras sa mga setting ng store.';

  @override
  String get keySpace => 'Space';

  @override
  String get doubleOptionTitle => 'Pindutin nang dalawang beses ang Option';

  @override
  String get doubleOptionSubtitle =>
      'Natatawag din ang WhatStock kapag mabilis na pinindot nang dalawang beses ang Option key.';

  @override
  String get doubleOptionPermission =>
      'Para gumana rin ito sa ibang app, payagan ang WhatStock sa System Settings → Privacy & Security → Input Monitoring, pagkatapos ay buksan muli ang app.';

  @override
  String get openSystemSettings => 'Buksan ang System Settings';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Pindutin ang $shortcut o pindutin nang dalawang beses ang Option kahit saan para tawagin ang WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Pinakamalamang';

  @override
  String get longTermToday => 'Ngayon';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years taon',
      one: '1 taon',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range bawat taon';
  }

  @override
  String longTermLikely(String price) {
    return 'pinakamalamang $price';
  }

  @override
  String get confidenceLow => 'Mababang kumpiyansa';

  @override
  String get confidenceMedium => 'Katamtamang kumpiyansa';

  @override
  String get confidenceHigh => 'Mataas na kumpiyansa';

  @override
  String get longTermNote =>
      'Ang mga pangmatagalang saklaw ay nakabatay sa mga nakasaad na palagay at lumalawak habang tumatagal. Hindi kasama ang dibidendo sa presyo. Magaspang na pagtataya, hindi hula.';

  @override
  String get portfolio => 'Portfolio';

  @override
  String get portfolioEmpty =>
      'Wala pang laman. Magbukas ng stock at i-tap ang “Idagdag sa portfolio” para masubaybayan ang pag-aari mo.';

  @override
  String get portfolioLocalNote =>
      'Naka-save sa device na ito, at sa iyong account kung naka-sign in ka. Kino-convert ang mga kabuuan gamit ang mga reference rate ng ECB; maaaring naantala ang mga presyo.';

  @override
  String get addToPortfolio => 'Idagdag sa portfolio';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Idagdag ang $symbol';
  }

  @override
  String get portfolioQuantity => 'Bilang ng share';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Presyo bawat share ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Petsa ng pagbili';

  @override
  String get portfolioAdd => 'Idagdag';

  @override
  String get portfolioInvalidNumber => 'Maglagay ng numerong higit sa zero.';

  @override
  String portfolioAdded(String symbol) {
    return 'Naidagdag ang $symbol sa portfolio.';
  }

  @override
  String get portfolioTotalValue => 'Kabuuang halaga';

  @override
  String get portfolioToday => 'Ngayon';

  @override
  String get portfolioGainLoss => 'Tubo/lugi';

  @override
  String homeDividendsThisYear(String amount) {
    return 'Dibidendo ngayong taon: $amount';
  }

  @override
  String get portfolioInvested => 'Naipuhunan';

  @override
  String get portfolioAllocation => 'Hatian';

  @override
  String get portfolioPositions => 'Mga posisyon';

  @override
  String portfolioAvgCost(String price) {
    return 'avg. na halaga $price';
  }

  @override
  String get portfolioYourPosition => 'Ang posisyon mo';

  @override
  String get portfolioPurchases => 'Mga pagbili';

  @override
  String get portfolioRemove => 'Alisin';

  @override
  String get portfolioExcluded =>
      'Hindi kasama sa mga kabuuan ang mga posisyong walang presyo o exchange rate.';

  @override
  String get priceAlerts => 'Mga alerto sa presyo';

  @override
  String get setPriceAlert => 'Magtakda ng alerto sa presyo';

  @override
  String alertDialogTitle(String symbol) {
    return 'Alerto sa presyo · $symbol';
  }

  @override
  String get alertKindAbove => 'Tumaas lampas sa';

  @override
  String get alertKindBelow => 'Bumaba sa ilalim ng';

  @override
  String get alertKindMove => 'Gumalaw nang malaki sa isang araw';

  @override
  String alertTargetPrice(String currency) {
    return 'Presyo ($currency)';
  }

  @override
  String get alertMovePercent => 'Galaw sa araw (%)';

  @override
  String get alertAlreadyMet => 'Lampas na ang presyo sa antas na ito.';

  @override
  String get alertSave => 'Itakda ang alerto';

  @override
  String alertCreated(String symbol) {
    return 'Naitakda ang alerto para sa $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Wala pang alerto. Magbukas ng stock at i-tap ang kampana.';

  @override
  String get alertsNote =>
      'Sinusuri ang mga alerto bawat 5 minuto habang tumatakbo ang WhatStock. Sa computer, patuloy itong tumatakbo sa menu bar o system tray; sa telepono, sa ngayon ay nag-aalerto lang kapag bukas ang app.';

  @override
  String alertDescAbove(String price) {
    return 'Lampas sa $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Mas mababa sa $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Galaw sa araw ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Na-trigger noong $date sa $price';
  }

  @override
  String get alertRearm => 'I-activate muli';

  @override
  String get alertDelete => 'Burahin';

  @override
  String alertHitAbove(String symbol, String price) {
    return 'Tumaas ang $symbol lampas sa $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return 'Bumaba ang $symbol sa ilalim ng $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return 'Gumalaw ang $symbol nang $percent ngayon';
  }

  @override
  String alertHitBody(String price) {
    return 'Kasalukuyang presyo: $price';
  }

  @override
  String get alertOpen => 'Buksan';

  @override
  String get keepInTrayTitle => 'Patuloy na tumakbo kapag isinara ang window';

  @override
  String get keepInTraySubtitle =>
      'Nananatili ang WhatStock sa menu bar o system tray, kaya gumagana pa rin ang shortcut at mga alerto sa presyo.';

  @override
  String get termsOfUse => 'Mga Tuntunin ng Paggamit';

  @override
  String get privacyPolicy => 'Patakaran sa Privacy';

  @override
  String get subscriptionLegal =>
      'Awtomatikong nire-renew ang subscription bawat buwan hanggang kanselahin mo. Sa pag-subscribe, tinatanggap mo ang Mga Tuntunin ng Paggamit at ang Patakaran sa Privacy.';

  @override
  String get deleteAccount => 'Burahin ang account';

  @override
  String get deleteAccountTitle => 'Burahin ang iyong account?';

  @override
  String get deleteAccountBody =>
      'Permanenteng mabubura ang iyong account at lahat ng nakaimbak sa aming server (email, quota, paggamit), at mawawala ang mga hindi nagamit na pagsusuri. Agad na kinakansela ang subscription na binayaran sa browser; ang subscription sa App Store o Google Play ay kailangang kanselahin sa settings ng store.';

  @override
  String get deleteLocalData =>
      'Burahin din ang data sa device na ito (portfolio, alerto, paborito, history, naka-save na pagsusuri)';

  @override
  String get deleteAccountConfirm => 'Burahin nang permanente';

  @override
  String get accountDeleted => 'Nabura na ang iyong account.';

  @override
  String get errDeleteAccount =>
      'Hindi nabura ang account. Tingnan ang koneksyon at subukang muli.';

  @override
  String get aiTrialBriefNote =>
      'Maikli ang mga pagsusuri sa trial at ginagawa gamit ang mas mabilis na AI model. Sa isang plan, makukuha mo ang aming pinakamahusay na AI, mas maraming paghahanap sa web, at ang Karaniwan at Malalim na haba.';

  @override
  String get billingMonthly => 'Buwanan';

  @override
  String get billingYearly => 'Taunan';

  @override
  String get yearlyDiscount => '2 buwang libre';

  @override
  String get perYear => '/ taon';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price bawat buwan';
  }

  @override
  String get subscriptionLegalYearly =>
      'Awtomatikong nire-renew ang taunang subscription bawat taon hanggang kanselahin mo. Sa pag-subscribe, tinatanggap mo ang Mga Tuntunin ng Paggamit at ang Patakaran sa Privacy.';

  @override
  String get myAnalyses => 'Aking mga pagsusuri';

  @override
  String get navAlerts => 'Mga alerto';

  @override
  String get inviteTitle => 'Saradong preview';

  @override
  String get inviteBody =>
      'Sa ngayon, sa imbitasyon lang available ang WhatStock. Ilagay ang invite code na natanggap mo.';

  @override
  String get inviteCodeLabel => 'Invite code';

  @override
  String get inviteContinue => 'Magpatuloy';

  @override
  String get inviteInvalid => 'Hindi valid ang invite code na ito.';

  @override
  String get inviteExpired =>
      'Expired na ang imbitasyong ito. Humingi ng bagong code sa taong nag-imbita sa iyo.';

  @override
  String get inviteDeviceLimit =>
      'Ginagamit na ang invite code na ito sa pinakamaraming device na pinapayagan.';

  @override
  String get previewConfidential => 'Kumpidensyal na preview';

  @override
  String get errPreviewDailyLimit =>
      'Naabot na ng preview na ito ang limitasyon ng pagsusuri para ngayong araw. Subukang muli bukas.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count oras ang nakalipas',
      one: '1 oras ang nakalipas',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count araw ang nakalipas',
      one: '1 araw ang nakalipas',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'I-update ang pagsusuring ito?';

  @override
  String staleBody(String age) {
    return 'Ginawa ito $age. Maaaring nagbago na ang mga presyo, balita at resulta mula noon.';
  }

  @override
  String get staleKeep => 'Ipakita ang nauna';

  @override
  String get staleRefresh => 'Gumawa ng bago';

  @override
  String seeAll(int count) {
    return 'Tingnan lahat ($count)';
  }

  @override
  String get searchAnalyses => 'Hanapin sa iyong mga pagsusuri';

  @override
  String get deleteAnalysis => 'Burahin';

  @override
  String analysisDeleted(String symbol) {
    return 'Nabura ang pagsusuri sa $symbol';
  }

  @override
  String get keyLevelAlertHint =>
      'I-tap ang isang antas para makatanggap ng alerto kapag naabot ito ng presyo.';

  @override
  String get shareAnalysisTitle => 'Ibahagi ang pagsusuri';

  @override
  String get shareAsImage => 'Ibahagi bilang larawan';

  @override
  String get shareAsText => 'Ibahagi bilang teksto';

  @override
  String get shareCardFooter => 'Ginawa gamit ang WhatStock';

  @override
  String get shareCardDisclaimer =>
      'Pagsusuri ng AI · hindi payo sa pamumuhunan';

  @override
  String get referralTitle => 'Mag-imbita ng mga kaibigan';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dagdag na pagsusuri',
      one: '1 dagdag na pagsusuri',
    );
    return 'Ibahagi ang iyong code. Makakatanggap agad ang kaibigan mo ng $_temp0, at ganoon din ang matatanggap mo pagkatapos ng kanyang unang pagsusuri.';
  }

  @override
  String get referralYourCode => 'Ang iyong code';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Inimbitahan: $invited · Ginantimpalaan: $rewarded';
  }

  @override
  String get referralHaveCode => 'May code ka mula sa kaibigan?';

  @override
  String get referralRedeem => 'I-redeem';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Naidagdag ang $count dagdag na pagsusuri. Maligayang pagdating!',
      one: 'Naidagdag ang 1 dagdag na pagsusuri. Maligayang pagdating!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Walang ganitong code. Suriin ito at subukang muli.';

  @override
  String get referralErrOwn =>
      'Hindi mo puwedeng i-redeem ang sarili mong code.';

  @override
  String get referralErrAlready => 'Nakapag-redeem ka na ng code ng kaibigan.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dagdag na pagsusuri',
      one: '1 dagdag na pagsusuri',
    );
    return 'Sinusuri ko ang mga stock gamit ang WhatStock: kuhanan ng larawan ang isang stock at ipapaliwanag ito ng AI. Gamit ang code ko na $code, makakakuha ka ng $_temp0.';
  }

  @override
  String get referralCopied => 'Nakopya ang code';

  @override
  String get onboardTitle1 => 'Kuhanan ng larawan ang isang stock';

  @override
  String get onboardBody1 =>
      'Sapat na ang screen ng brokerage app, diyaryo o logo ng kumpanya: kikilalanin ng WhatStock ang stock at ipapakita ang presyo, chart at mahahalagang numero nito.';

  @override
  String get onboardTitle2 => 'Maunawaan ito sa ilang minuto';

  @override
  String get onboardBody2 =>
      'Ipinapaliwanag ng pagsusuri ng AI kung ano ang nagpapagalaw sa stock, ang mga panganib, ang valuation at tatlong senaryo kung saan maaaring pumunta ang presyo – may mga sanggunian at sa iyong wika.';

  @override
  String get onboardTitle3 => 'Laging manatiling updated';

  @override
  String get onboardBody3 =>
      'Ang Mga Paborito, ang iyong portfolio at ang mga alerto sa presyo ang magbabalita sa iyo. Nananatili sa iyong device ang mga pagsusuri mo, handang buksan muli.';

  @override
  String get onboardNext => 'Susunod';

  @override
  String get onboardStart => 'Magsimula';

  @override
  String get onboardSkip => 'Laktawan';

  @override
  String changesTitle(String date) {
    return 'Mula sa nakaraang pagsusuri ($date)';
  }

  @override
  String get changesPrice => 'Presyo';

  @override
  String get changesNoMajor => 'Hindi gaanong nagbago ang pananaw.';

  @override
  String get changesPreviousSummary => 'Nakaraang buod';

  @override
  String get telemetryTitle => 'Tumulong na pagandahin ang WhatStock';

  @override
  String get telemetryBody =>
      'Ibahagi ang anonymous na istatistika ng paggamit at mga crash report: kung aling mga feature ang ginagamit at kung ano ang nagkaproblema. Hindi kailanman ibinabahagi ang iyong mga stock, pagsusuri o personal na data. Puwede mo itong baguhin anumang oras sa Mga setting.';

  @override
  String get telemetryAllow => 'Payagan';

  @override
  String get telemetryDecline => 'Hindi, salamat';

  @override
  String get telemetrySetting => 'Anonymous na istatistika at mga crash report';

  @override
  String get telemetrySettingHint =>
      'Kung gaano kadalas ginagamit ang mga feature at mga ulat ng error, nang walang personal na data o nilalaman ng iyong mga paghahanap at pagsusuri.';

  @override
  String get askButton => 'Magtanong tungkol sa pagsusuring ito';

  @override
  String askTitle(String symbol) {
    return 'Mga tanong tungkol sa $symbol';
  }

  @override
  String get askIntro =>
      'Magtanong ng kahit ano tungkol sa pagsusuri: ano ang ibig sabihin ng isang panganib, ano ang makapagbabago sa pananaw, paano nakuha ang isang numero. Nakabatay ang mga sagot sa pagsusuring ito at hindi ito payo sa pamumuhunan.';

  @override
  String get askHint => 'Magtanong…';

  @override
  String get askSend => 'Ipadala';

  @override
  String get askThinking => 'Nag-iisip…';

  @override
  String get askSuggest1 => 'Ano ang pinakamalaking panganib?';

  @override
  String get askSuggest2 => 'Ano ang makapagbabago sa pananaw?';

  @override
  String get askSuggest3 => 'Ipaliwanag ito sa simpleng salita';

  @override
  String get askMaxReached =>
      'Iyon na ang huling tanong para sa pagsusuring ito. Gumawa ng bagong pagsusuri para makapagtanong pa.';

  @override
  String get errAskLimit =>
      'Naabot mo na ang limitasyon ng mga tanong para ngayong araw. Pakisubukang muli bukas.';

  @override
  String get eventTomorrow => 'Bukas';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'sa loob ng $days araw',
      one: 'sa loob ng 1 araw',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Quarterly na resulta';

  @override
  String get eventBeforeOpen => 'bago magbukas ang merkado';

  @override
  String get eventAfterClose => 'pagkasara ng merkado';

  @override
  String eventEpsEstimate(String value) {
    return 'Tantyang EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Mula sa iyong pagsusuri';

  @override
  String get eventDividend => 'Inaasahang dibidendo';

  @override
  String get eventDividendEstimate =>
      'Tinantya mula sa iyong mga naitalang bayad';

  @override
  String get eventsHint =>
      'Mga petsa ng resulta ng iyong mga paborito at stock sa portfolio sa susunod na 90 araw, ang mga kaganapang may petsa na na-flag ng iyong mga pagsusuri, at ang mga dibidendong inaasahan mula sa iyong mga naitalang bayad.';

  @override
  String get eventsEmpty =>
      'Walang kaganapang may petsa sa susunod na 90 araw. Magdagdag ng mga paborito o stock sa portfolio para makita rito ang mga petsa ng kanilang resulta; ipinapakita ng mga naitalang dibidendo ang inaasahang susunod nilang bayad.';

  @override
  String get compareTitle => 'Paghahambing';

  @override
  String get compareAdd => 'Magdagdag ng stock';

  @override
  String get compareRemove => 'Alisin';

  @override
  String get compareTickerHint => 'Ticker, hal. MSFT';

  @override
  String get compareHint =>
      'Mga pangunahing numero nang magkakatabi; naka-highlight ang pinakamahusay na value sa bawat row. Nasa sariling currency ng bawat stock ang mga halaga.';

  @override
  String get compareNoAnalysis => 'Wala pang pagsusuri';

  @override
  String get portfolioDividends => 'Taunang dibidendo';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent yield';
  }

  @override
  String get portfolioDividendNote =>
      'Ang inaasahang taunang dibidendo ay batay sa mga dibidendong ibinayad sa nakalipas na 12 buwan; hindi garantisado ang mga susunod na bayad.';

  @override
  String positionDividend(String amount) {
    return 'Dibidendo: $amount kada taon';
  }

  @override
  String get chartAvgCost => 'Iyong avg.';

  @override
  String get chartAlertLevel => 'Alerto';

  @override
  String get marketsToday => 'Mga merkado ngayon';

  @override
  String get notesTitle => 'Aking mga tala';

  @override
  String get notesHint =>
      'Bakit mo ito binili, ano ang binabantayan mo, ano ang magtutulak sa iyong ibenta ito?';

  @override
  String get notesInfo =>
      'Naka-save sa device na ito, at sa iyong account kung naka-sign in ka. Isinasaalang-alang ng pagsusuri ng AI ang iyong mga tala.';

  @override
  String notesSaved(String date) {
    return 'Na-save $date';
  }

  @override
  String get peersTitle => 'Mga katulad na kumpanya';

  @override
  String get portfolioExport => 'I-export bilang CSV';

  @override
  String get portfolioImport => 'I-import mula sa CSV';

  @override
  String get portfolioImportHint =>
      'Mag-paste ng isang pagbili bawat linya: ticker symbol, dami, presyo, currency, petsa (YYYY-MM-DD). Maaaring paghiwalayin ang mga column ng kuwit, semicolon o tab; opsyonal ang header row.';

  @override
  String get portfolioImportButton => 'I-import';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Naidagdag ang $count pagbili',
      one: 'Naidagdag ang 1 pagbili',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nilaktawan ang $count linya',
      one: 'Nilaktawan ang 1 linya',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Naka-sync sa lahat ng iyong device ang portfolio, mga paborito, mga alerto sa presyo at mga tala.';

  @override
  String syncLast(String time) {
    return 'Huling na-sync $time';
  }

  @override
  String get syncNow => 'I-sync ngayon';

  @override
  String get syncFailed => 'Hindi na-sync. Awtomatiko itong susubukang muli.';

  @override
  String get alertEmailTitle => 'Mag-email kapag na-trigger ang isang alerto';

  @override
  String get alertEmailOn =>
      'Sinusuri namin ang iyong mga alerto bawat ilang minuto at pinapadalhan ka ng email, kahit sarado ang app.';

  @override
  String get alertEmailSignIn =>
      'Mag-sign in gamit ang iyong email sa Mga setting para makatanggap ng mga alerto sa email, kahit sarado ang app.';

  @override
  String get portfolioHistory => 'Halaga sa paglipas ng panahon';

  @override
  String get portfolioReviewTitle => 'Pagsusuri ng portfolio gamit ang AI';

  @override
  String get portfolioReviewIntro =>
      'Sinusuri ng AI ang buo mong portfolio: konsentrasyon, exposure sa sektor at currency, mga panganib na magkakapareho ang iyong mga stock, at dibidendo. Gumagamit ng 1 pagsusuri.';

  @override
  String get portfolioReviewButton => 'Suriin ang portfolio ko';

  @override
  String get portfolioReviewAgain => 'Suriin muli';

  @override
  String get portfolioReviewWorking => 'Sinusuri ang iyong portfolio…';

  @override
  String get digestTitle => 'Lingguhang buod sa email';

  @override
  String get digestHint =>
      'Tuwing Lunes: kung paano gumalaw ang iyong mga paborito at portfolio noong nakaraang linggo, at ang kanilang mga paparating na petsa ng resulta.';

  @override
  String get benchmarkTitle => 'Kumpara sa S&P 500';

  @override
  String get benchmarkTitleIndex => 'Kumpara sa isang index';

  @override
  String get benchmarkHintIndex =>
      'Na para bang inilagay ang bawat binili sa isang fund na sumusunod sa napiling index sa parehong araw. Hindi kasama ang dibidendo; hindi hinuhulaan ng nakaraang kita ang hinaharap.';

  @override
  String get benchmarkYours => 'Iyong mga binili';

  @override
  String benchmarkAhead(String points) {
    return '$points percentage point na mas mahusay kaysa sa index';
  }

  @override
  String benchmarkBehind(String points) {
    return '$points percentage point na mas mababa sa index';
  }

  @override
  String get portfolioSell => 'Ibenta';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Ibenta ang $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Presyo ng pagbenta bawat share ($currency)';
  }

  @override
  String get portfolioSellDate => 'Petsa ng pagbenta';

  @override
  String get portfolioSellAll => 'Lahat';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'May $quantity ka';
  }

  @override
  String get portfolioSold => 'Nabenta';

  @override
  String get portfolioRealized => 'Natamo';

  @override
  String get portfolioClosed => 'Mga saradong posisyon';

  @override
  String get portfolioClosedNote => 'Naibenta na ang lahat ng share';

  @override
  String get portfolioTransactions => 'Mga transaksyon';

  @override
  String get portfolioRealizedByYear => 'Natamong kita bawat taon';

  @override
  String get portfolioRealizedHint =>
      'Itinutugma muna ang mga pagbenta sa pinakaluma mong mga pagbili (FIFO), na-convert sa palitan ngayon. Para sa iyong tax return, gamitin ang statement ng iyong broker.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'May bagong quarterly na resulta na nailathala mula nang gawin ang pagsusuring ito ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Bagong resulta';

  @override
  String get portfolioImportBrokers =>
      'Nakikilala rin ang mga export mula sa Revolut, Trading 212, Interactive Brokers, DEGIRO, Schwab, Fidelity at Robinhood, kasama ang mga benta at dibidendo (bawas na ang withholding tax); nilalaktawan ang mga deposito.';

  @override
  String get portfolioImportFile => 'Pumili ng file';

  @override
  String offlineBanner(String time) {
    return 'Walang koneksyon – ipinapakita ang huling na-save na data ($time).';
  }

  @override
  String get glossMarketCap =>
      'Kung magkano ang halaga ng buong kumpanya sa stock market: presyo ng share × bilang ng shares.';

  @override
  String get glossSharesOutstanding =>
      'Ilang share ang inilabas ng kumpanya. Kapag dumami ito, mas maliit na bahagi ang hawak ng bawat share; binabawasan ito ng buyback.';

  @override
  String get glossPeTrailing =>
      'Presyo ÷ kita kada share sa nakaraang 12 buwan: ilang taon ng kasalukuyang tubo ang binabayaran mo. Mas mababa ay mas mura, pero karaniwang mataas ang P/E ng mabilis lumagong kumpanya.';

  @override
  String get glossPeForward =>
      'Tulad ng P/E, pero gamit ang tubong inaasahan ng mga analyst sa susunod na 12 buwan. Kapag mas mababa sa trailing P/E, inaasahang lalago ang tubo.';

  @override
  String get glossPb =>
      'Presyo ÷ book value (assets bawas utang) kada share. Kapag mga 1, pinahahalagahan ng merkado ang kumpanya ayon sa pag-aari nito sa papel.';

  @override
  String get glossPs =>
      'Halaga sa merkado ÷ taunang kita. Kapaki-pakinabang sa mga kumpanyang kaunti o wala pang tubo; ikumpara sa loob ng parehong industriya.';

  @override
  String get glossEvToFcf =>
      'Halaga ng kumpanya kasama ang utang (EV) ÷ ang cash na nalilikha nito sa isang taon matapos ang mga puhunan. Kapag mas mababa, mas maraming cash ang makukuha mo sa presyo.';

  @override
  String get glossPeg =>
      'P/E ÷ inaasahang taunang paglago ng tubo (%). Kadalasang itinuturing na patas ang mga 1; inilalagay nito ang P/E sa konteksto ng paglago.';

  @override
  String get glossEps =>
      'Tubo kada share sa nakaraang 12 buwan. Ang EPS na tumataas sa paglipas ng mga taon ay isa sa pinakamatibay na palatandaan ng malusog na kumpanya.';

  @override
  String get glossBeta =>
      'Gaano kalaki ang galaw ng stock kasabay ng merkado: 1 = tulad ng merkado, 1.5 = mga 50% mas malaking galaw, mas mababa sa 1 = mas kalmado.';

  @override
  String get glossRevenueTtm =>
      'Kabuuang benta sa nakaraang 12 buwan, bago ang anumang gastos.';

  @override
  String get glossNetIncomeTtm =>
      'Tubong natira matapos ang lahat ng gastos, interes at buwis sa nakaraang 12 buwan.';

  @override
  String get glossGrossMargin =>
      'Ang bahagi ng kita na natitira matapos ang direktang gastos ng mga produkto. Ang mataas na margin ay kadalasang tanda ng kapangyarihan sa pagpepresyo.';

  @override
  String get glossOperatingMargin =>
      'Ang bahagi ng kita na natitira matapos patakbuhin ang negosyo (sahod, upa, marketing), bago ang interes at buwis.';

  @override
  String get glossNetMargin =>
      'Ang bahagi ng kita na nagiging huling tubo. Ang 20% ay nangangahulugang 20 sa bawat 100 na benta ay tubo.';

  @override
  String get glossRoe =>
      'Return on equity: taunang tubo ÷ kapital ng mga may-ari. Ipinapakita kung gaano kahusay ginagamit ng pamunuan ang pera ng mga shareholder; malakas kapag lampas sa mga 15%.';

  @override
  String get glossRoa =>
      'Return on assets: taunang tubo ÷ lahat ng pag-aari ng kumpanya. Ikumpara sa loob ng parehong industriya.';

  @override
  String get glossDebtToEquity =>
      'Utang ÷ kapital ng mga may-ari. Kapag mas mataas, mas maraming hiniram na pera: mas malaking panganib kapag tumaas ang interes o bumagal ang negosyo.';

  @override
  String get glossCurrentRatio =>
      'Panandaliang assets ÷ mga bayaring dapat bayaran sa loob ng isang taon. Kapag lampas sa 1, kayang bayaran ng kumpanya ang malapit na mga bayarin.';

  @override
  String get glossRevenueGrowth =>
      'Gaano lumago ang kita kumpara noong isang taon.';

  @override
  String get glossEpsGrowth =>
      'Gaano lumago ang tubo kada share kumpara noong isang taon.';

  @override
  String get glossDividendYield =>
      'Taunang dibidendo ÷ presyo ng share: ang cash na kita na makukuha mo bawat taon, bilang porsiyento ng iyong ibinayad.';

  @override
  String get glossDividendPerShare =>
      'Ang dibidendong ibinayad sa isang share sa nakaraang taon.';

  @override
  String get glossPayoutRatio =>
      'Ang bahagi ng tubo na ibinabayad bilang dibidendo. Kapag lampas sa 100%, mas malaki ang ibinabayad ng kumpanya kaysa sa kinikita nito, na bihirang tumagal.';

  @override
  String get portfolioBeta => 'Beta ng portfolio';

  @override
  String get glossPortfolioBeta =>
      'Ang beta ng iyong mga stock, tinimbang ayon sa halaga nila: humigit-kumulang ilang porsiyento gumagalaw ang mga stock mo kapag gumalaw nang 1% ang merkado. Kapag lampas sa 1, mas malaki ang galaw nila kaysa sa merkado; kapag mas mababa sa 1, mas maliit. Hindi kasama ang cash.';

  @override
  String get portfolioTop3 => 'Top 3 na posisyon';

  @override
  String get glossPortfolioTop3 =>
      'Gaano kalaking bahagi ng halaga ng mga stock mo ang nasa tatlo mong pinakamalaking posisyon. Kapag mas mataas ito, mas makakasira sa buong portfolio ang masamang balita tungkol sa iisang kumpanya.';

  @override
  String get glossDividendGrowth5y =>
      'Gaano kalaki ang average na taunang paglago ng dibidendo kada share sa nakalipas na limang taon. Kadalasang ibig sabihin ng tuloy-tuloy na paglago na may tiwala ang kompanya sa cash flow nito; ang pagbawas ay madalas na babala.';

  @override
  String get glossYieldOnCost =>
      'Ang dibidendong natanggap sa huling 12 buwan na hinati sa ibinayad mo para sa mga share na hawak mo pa. Hindi tulad ng dividend yield, sinusukat ito batay sa sarili mong presyo ng pagbili, hindi sa presyo ngayon.';

  @override
  String get glossTitle => 'Ano ang ibig sabihin?';

  @override
  String get watchNewsTitle => 'Balita sa iyong mga stock';

  @override
  String get undo => 'I-undo';

  @override
  String get watchSort => 'Ayusin';

  @override
  String get watchSortOwn => 'Sariling ayos';

  @override
  String get watchSortGainers => 'Pinakamalaking tumaas muna';

  @override
  String get watchSortLosers => 'Pinakamalaking bumaba muna';

  @override
  String get watchSortName => 'Ayon sa ticker (A–Z)';

  @override
  String get watchHint =>
      'I-drag ang hawakan para ayusin muli, i-swipe pakaliwa para alisin. Ipinapakita ng linya ang huling 30 araw.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: handa na ang iyong pagsusuri.';
  }

  @override
  String alertFromCost(String price) {
    return 'Batay sa iyong average na presyo ng pagbili ($price):';
  }

  @override
  String get briefTitle => 'Ngayon kasama ang iyong mga stock';

  @override
  String get briefButton => 'I-summarize ngayon';

  @override
  String get briefHint =>
      'Maikling AI summary kung paano gumalaw ngayon ang iyong portfolio at mga paborito at ano ang sinasabi ng pinakabagong balita tungkol sa kanila. Hindi ito gumagamit ng pagsusuri.';

  @override
  String get briefRefresh => 'I-update';

  @override
  String get sectionEarnings => 'Kita';

  @override
  String earningsNext(String date) {
    return 'Susunod na ulat: $date';
  }

  @override
  String get earningsExpected => 'Inaasahang EPS';

  @override
  String get earningsReported => 'Iniulat na EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Pantay o higit sa inaasahang EPS sa $beats sa huling $total quarter',
      one: 'Pantay o higit sa inaasahang EPS sa $beats sa 1 quarter',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return 'Maglalabas ang $symbol ng quarterly na resulta bukas';
  }

  @override
  String earningsReminderToday(String symbol) {
    return 'Maglalabas ang $symbol ng quarterly na resulta ngayon';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return 'Inaasahan ngayon ang dibidendo ng $symbol';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Mga $amount. Itala ito sa iyong portfolio kapag dumating na.';
  }

  @override
  String get dividendRemindersTitle => 'Mga paalala sa dibidendo';

  @override
  String get dividendRemindersSubtitle =>
      'Isang notification sa araw na inaasahan ang dibidendo batay sa ritmo ng iyong mga naitalang bayad, para maitala mo ito';

  @override
  String get earningsRemindersTitle => 'Mga paalala sa resulta';

  @override
  String get earningsRemindersSubtitle =>
      'Isang notification isang araw bago maglabas ng quarterly na resulta ang iyong mga paborito o stock sa portfolio';

  @override
  String addAllToFavorites(int count) {
    return 'Idagdag lahat sa mga paborito ($count)';
  }

  @override
  String get portfolioImportPhoto => 'I-import mula sa screenshot';

  @override
  String get holdingsReading => 'Binabasa ang mga posisyon mo…';

  @override
  String get holdingsReviewTitle => 'Mga nakitang posisyon';

  @override
  String get holdingsReviewHint =>
      'Suriin ang mga numero bago idagdag. Ang presyo ay ang average mong presyo ng pagbili bawat share, hindi ang presyo ngayon.';

  @override
  String get holdingsNoPrice =>
      'Walang average na presyo ng pagbili sa larawan';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Idagdag ang $count posisyon',
      one: 'Idagdag ang 1 posisyon',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Walang nakitang posisyon sa stock sa larawang ito. Subukan ang screenshot ng positions o holdings page ng broker mo.';

  @override
  String get week52Range => '52-linggong saklaw';

  @override
  String week52BelowHigh(String percent) {
    return '$percent mas mababa sa 52-linggong pinakamataas';
  }

  @override
  String get week52AtHigh => 'Nasa 52-linggong pinakamataas';

  @override
  String get alertKindTrailing => 'Bumaba mula sa tuktok';

  @override
  String get alertTrailingPercent => 'Baba mula sa tuktok (%)';

  @override
  String get alertTrailingHint =>
      'Sinusundan ang presyo pataas: aabisuhan ka kapag bumaba ang presyo nang ganito mula sa pinakamataas nitong antas mula nang itakda mo ito.';

  @override
  String alertDescTrailing(String percent) {
    return '$percent baba mula sa tuktok';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'tuktok sa ngayon: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return 'Bumaba ang $symbol nang $percent mula sa tuktok';
  }

  @override
  String get sectionInsiders => 'Mga transaksyon ng insider';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pagbili',
      one: '1 pagbili',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pagbenta',
      one: '1 pagbenta',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Net: $shares share';
  }

  @override
  String get insiderBuy => 'Bumili';

  @override
  String get insiderSell => 'Nagbenta';

  @override
  String get insiderHint =>
      'Mga pagbili at pagbenta sa open market ng mga executive at director sa nakalipas na 90 araw (SEC Form 4). Hindi kasama ang paggamit ng option at mga share award.';

  @override
  String get insiderNone =>
      'Walang pagbili o pagbenta ng insider sa open market sa nakalipas na 90 araw.';

  @override
  String get analystTrend => 'Paano nagbago ang mga pananaw bawat buwan';

  @override
  String get watchListAll => 'Lahat';

  @override
  String get watchListNew => 'Bagong listahan';

  @override
  String get watchListName => 'Pangalan ng listahan';

  @override
  String get watchListRename => 'Palitan ang pangalan ng listahan';

  @override
  String get watchListDelete => 'Burahin ang listahan';

  @override
  String get watchListAddTo => 'Idagdag sa listahan';

  @override
  String get watchListEmpty =>
      'Wala pang stock sa listahang ito. I-tap ang button ng listahan sa tabi ng isang stock para idagdag ito.';

  @override
  String get portfolioAskTitle => 'Mga tanong tungkol sa portfolio mo';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'Backup';

  @override
  String get backupSave => 'I-save ang backup';

  @override
  String get backupSaveHint =>
      'Ang iyong mga paborito, listahan, portfolio, alerto at tala sa iisang file.';

  @override
  String get backupRestore => 'I-restore mula sa backup';

  @override
  String get backupRestoreHint =>
      'Idinadagdag ang laman ng file; walang mabubura sa kung ano ang mayroon ka ngayon.';

  @override
  String get backupRestored => 'Na-restore ang backup.';

  @override
  String get backupInvalid => 'Hindi WhatStock backup ang file na ito.';

  @override
  String get allocationPositions => 'Mga stock';

  @override
  String get allocationSectors => 'Sektor';

  @override
  String get allocationCurrencies => 'Currency';

  @override
  String get allocationAccounts => 'Mga account';

  @override
  String get compareReturn1y => '1-taong kita';

  @override
  String get compareFromHigh => 'Mula sa 52-linggong pinakamataas';

  @override
  String get briefAutoTitle => 'Pang-araw-araw na buod tuwing umaga';

  @override
  String get briefAutoSubtitle =>
      'Awtomatikong ginagawa ang “Ngayon kasama ang iyong mga stock” pagkalipas ng 7:00 ng umaga habang tumatakbo ang app; sa mga computer, may notification na magsasabi sa iyo. Gumagamit ito ng iyong pang-araw-araw na limitasyon sa tanong, hindi ng pagsusuri.';

  @override
  String get targetsButton => 'Target na hatian';

  @override
  String get targetsTitle => 'Target na hatian';

  @override
  String get targetsHint =>
      'Itakda kung gaano kalaking bahagi ng portfolio ang dapat sa bawat stock. Iwanang blangko ang field kung walang target. Ipapakita ng app kung ano ang bibilhin o ibebenta para maabot ito.';

  @override
  String targetsSum(String percent) {
    return 'Kabuuan: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Bumili ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Ibenta ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Nasa target';

  @override
  String earningsResultBeat(String symbol) {
    return 'Nalampasan ng $symbol ang inaasahang EPS';
  }

  @override
  String earningsResultMiss(String symbol) {
    return 'Hindi naabot ng $symbol ang inaasahang EPS';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'Iniulat na EPS $actual, inaasahan $estimate';
  }

  @override
  String get newsExplain => 'Ano ang ibig sabihin nito?';

  @override
  String get watchAlertAll => 'Alerto sa malalaking galaw sa araw';

  @override
  String get watchAlertAllHint =>
      'Isang alerto sa presyo para sa bawat stock sa listahang ito na tutunog kapag gumalaw ito nang ganito kalaki sa isang araw, pataas man o pababa. Mananatili ang alerto ng mga stock na mayroon na nito.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Na-set ang $count alerto',
      one: 'Na-set ang 1 alerto',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'I-export ang realized na kita (CSV)';

  @override
  String get portfolioAnnualReturn => 'Taunang kita';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / taon';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Money-weighted na taunang kita (XIRR): isinasaalang-alang nito kung kailan ka bumili at nagbenta, kaya hindi ito nababaluktot ng perang idinagdag mo kalaunan. Lalabas ito kapag isang taon na man lang ang una mong pagbili; hindi kasama ang mga dibidendo.';

  @override
  String get eventsAddToCalendar => 'Idagdag sa kalendaryo (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Alerto sa portfolio';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Isang notification kapag gumalaw nang ganito kalaki ang buong portfolio mo sa isang araw.';

  @override
  String get portfolioMoveAlertOff => 'Naka-off';

  @override
  String portfolioMoveUp(String percent) {
    return 'Tumaas nang $percent ang portfolio mo ngayon';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Bumaba nang $percent ang portfolio mo ngayon';
  }

  @override
  String get whatIfTitle => 'Paano kung nag-invest ka?';

  @override
  String get whatIfAmount => 'Halaga';

  @override
  String whatIfResult(String amount, String period) {
    return 'Ang $amount na in-invest $period na ang nakalipas ay nagkakahalaga sana ngayon ng';
  }

  @override
  String get whatIfNote =>
      'Batay lang sa presyo ng share: hindi kasama ang dibidendo, bayarin at buwis. Hindi hinuhulaan ng mga nakaraang kita ang mga susunod.';

  @override
  String get watchShare => 'Ibahagi ang listahan';

  @override
  String get watchImport => 'Magdagdag ng mga ticker';

  @override
  String get watchImportHint =>
      'Mag-paste ng mga ticker na pinaghihiwalay ng kuwit, espasyo o bagong linya – halimbawa, isang listahang ibinahagi sa iyo ng iba.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Naidagdag ang $count stock',
      one: 'Naidagdag ang 1 stock',
      zero: 'Walang bagong stock',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Pinakamalaki muna';

  @override
  String get positionsSortGain => 'Pinakamataas na kabuuang kita muna';

  @override
  String get positionsSortToday => 'Pinakamahusay ngayon muna';

  @override
  String get chartMyBuys => 'Iyong mga binili';

  @override
  String get chartMySells => 'Iyong mga ibinenta';

  @override
  String get shortcutsTitle => 'Mga keyboard shortcut';

  @override
  String usMarketOpen(String time) {
    return 'Bukas ang merkado ng US · magsasara sa loob ng $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Sarado ang merkado ng US · magbubukas sa loob ng $time';
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
    return '$days araw $hours oras';
  }

  @override
  String get dividendGoalSet => 'Magtakda ng buwanang layunin sa dibidendo';

  @override
  String get dividendGoalTitle => 'Buwanang layunin sa dibidendo';

  @override
  String get dividendGoalAmount => 'Dibidendo bawat buwan';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Mga $amount bawat buwan sa kasalukuyang yield · $percent · Layunin: $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Mga $amount bawat buwan sa kasalukuyang yield · Naabot ang layunin: $goal';
  }

  @override
  String get portfolioAccount => 'Account';

  @override
  String get portfolioAccountHint => 'hal. PERA (opsyonal)';

  @override
  String get portfolioAccountAdd => 'Tukuyin ang account';

  @override
  String get portfolioAccountsAll => 'Lahat ng account';

  @override
  String get portfolioAccountNote =>
      'Mga transaksyon at dibidendo lang ng account na ito. Makikita ang cash, mga layunin at ang pagsusuri ng AI sa Lahat ng account.';

  @override
  String get portfolioNoAccount => 'Walang account';

  @override
  String portfolioFee(String currency) {
    return 'Komisyon ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Magdagdag ng komisyon';

  @override
  String portfolioFeeRow(String amount) {
    return 'Komisyon: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'Taunang buod';

  @override
  String get portfolioProceeds => 'Kita sa pagbenta';

  @override
  String get portfolioCostBasis => 'Halaga ng pagbili';

  @override
  String get portfolioFeesPaid => 'Binayarang komisyon';

  @override
  String get portfolioAnnualSummaryNote =>
      'Mga halaga sa orihinal na currency, hindi naka-convert. Bawas na sa kita sa pagbenta ang komisyon sa pagbenta; kasama sa halaga ng pagbili ang komisyon sa pagbili (FIFO). Para sa iyong tax return, i-convert sa exchange rate na hinihingi ng iyong tax authority.';

  @override
  String get portfolioShare => 'Ibahagi ang performance';

  @override
  String get portfolioShareHeading => 'Aking portfolio';

  @override
  String get portfolioTopHoldings => 'Pinakamalalaking posisyon';

  @override
  String get portfolioShareNote =>
      'Porsyento lang ang ibinabahagi, walang halaga.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count posisyon',
      one: '1 posisyon',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'Hindi payo sa pamumuhunan';

  @override
  String get contributionButton => 'Mag-invest ng bagong pera';

  @override
  String contributionAmount(String currency) {
    return 'Halagang i-invest ($currency)';
  }

  @override
  String get contributionHint =>
      'Pagbili lang, walang pagbebenta: ang mga posisyong pinakamalayo sa ilalim ng kanilang target ang unang makakatanggap ng pera.';

  @override
  String contributionShares(String shares) {
    return '≈ $shares share';
  }

  @override
  String contributionMissing(String symbols) {
    return 'Walang kasalukuyang presyo para sa $symbols: hindi isinama sa paghahati.';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'Kung mananatili ang taunang kita ($rate), maaabot mo ang layunin bandang $year.';
  }

  @override
  String get portfolioMaxDrawdown => 'Pinakamalaking pagbaba';

  @override
  String get glossMaxDrawdown =>
      'Ang pinakamalaking pagbaba ng halaga ng mga stock mo mula sa isang naunang tuktok hanggang sa isang mas huling pinakamababa, nang walang epekto ng mga pagbili at pagbenta mo (time-weighted). Ipinapakita nito kung gaano kalalim na pagbagsak ang napagdaanan na ng portfolio mo.';

  @override
  String watchSince(String date) {
    return 'Mula nang idagdag mo sa mga paborito ($date)';
  }

  @override
  String get portfolioSampleTry => 'Subukan gamit ang sample na portfolio';

  @override
  String get portfolioSampleBanner =>
      'Isa itong sample na portfolio. Idagdag ang sarili mong mga binili sa tabi nito, o alisin ito.';

  @override
  String get portfolioSampleRemove => 'Alisin ang sample';

  @override
  String get portfolioStopsAll => 'Trailing stop para sa lahat ng posisyon';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Na-set ang $count trailing stop',
      one: 'Na-set ang 1 trailing stop',
      zero: 'May trailing stop na ang bawat posisyon',
    );
    return '$_temp0';
  }

  @override
  String portfolioSinceSale(String percent) {
    return '$percent mula nang ibenta mo';
  }

  @override
  String get lotPreviewRealized => 'Natamo sa bentang ito (FIFO):';

  @override
  String lotPreviewAverage(String after, String before) {
    return 'Bagong average na halaga: $after (ngayon $before)';
  }

  @override
  String get portfolioYtdReturn => 'Kita ngayong taon';

  @override
  String get glossTwrYtd =>
      'Time-weighted na kita mula sa simula ng taon (o mula sa una mong pagbili, kung ngayong taon iyon): binibilang ng bawat araw ang pagbabago ng mga stock na hawak mo noong araw na iyon, at pinagdudugtong-dugtong ang mga araw – hindi kita ang perang idinedeposito o iwini-withdraw mo, kaya maikukumpara ito sa isang index. Sa ibaba nito: ang napiling index sa parehong panahon.';

  @override
  String alertDistance(String price, String percent) {
    return 'Ngayon $price · $percent pa ang kulang';
  }

  @override
  String get watchSortSince => 'Ayon sa pagbabago mula nang idagdag';

  @override
  String get portfolioTodayMovers => 'Pinakagumalaw ngayon:';

  @override
  String get lotNoteAdd => 'Magdagdag ng tala';

  @override
  String get lotNoteBuyHint =>
      'Bakit ka bumibili? Mapupunta ito sa mga tala ng stock, kasama ang petsa.';

  @override
  String get lotNoteSellHint =>
      'Bakit ka nagbebenta? Mapupunta ito sa mga tala ng stock, kasama ang petsa.';

  @override
  String get lotNoteBought => 'Nabili';

  @override
  String get positionHeld => 'Tagal ng paghawak';

  @override
  String durationMonths(int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months buwan',
      one: '$months buwan',
    );
    return '$_temp0';
  }

  @override
  String durationDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days araw',
      one: '$days araw',
    );
    return '$_temp0';
  }

  @override
  String positionHeldSince(String date) {
    return 'mula noong $date';
  }

  @override
  String lotPreviewWeight(String after, String before) {
    return 'Bahagi sa portfolio pagkatapos: $after (ngayon $before)';
  }

  @override
  String lotFromCash(String amount) {
    return 'Magbayad mula sa cash (ngayon $amount)';
  }

  @override
  String lotToCash(String amount) {
    return 'Idagdag sa cash (ngayon $amount)';
  }

  @override
  String get onboardTitle4 => 'Subaybayan ang iyong portfolio';

  @override
  String get onboardBody4 =>
      'I-import ang export ng iyong broker (Revolut, Trading 212, IBKR, DEGIRO, Schwab…) o idagdag nang manu-mano ang mga transaksyon: tingnan ang iyong kita katabi ng isang index, ang iyong mga dibidendo at taunang buod para sa iyong tax return.';

  @override
  String get portfolioGoalSet => 'Magtakda ng layunin';

  @override
  String get portfolioGoalTitle => 'Layunin ng portfolio';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · Layunin: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Naabot ang layunin: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Alisin ang layunin';

  @override
  String get alertEdit => 'I-edit ang alerto';

  @override
  String get positionOpenLots => 'Hawak pa (pinakaluma muna)';

  @override
  String get lotRemoved => 'Nabura ang transaksyon';

  @override
  String get alertDeleted => 'Nabura ang alerto';

  @override
  String get alertsClearTriggered => 'I-clear ang mga na-trigger na alerto';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Na-clear ang $count alerto',
      one: 'Na-clear ang 1 alerto',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Pangunahing screen';

  @override
  String get allocationCountries => 'Bansa';

  @override
  String get newsExplainNoteResearch =>
      'Paliwanag ng AI: hinahanap nito ang mga katotohanan sa web, binubuksan ang artikulo at sinusuri kung gaano kapani-paniwala ang pinagmulan. Hindi ito payo sa pamumuhunan. Gumagamit ito ng iyong pang-araw-araw na limitasyon sa tanong, hindi ng pagsusuri.';

  @override
  String get sourceOfficial => 'Opisyal';

  @override
  String get sourcePressRelease => 'Pahayag';

  @override
  String get sourceMajorNews => 'Malaking media';

  @override
  String get sourceOpinion => 'Opinyon';

  @override
  String get earningsSummaryButton => 'Ano ang laman ng pinakabagong ulat?';

  @override
  String get earningsSummaryNote =>
      'Buod ng AI ng anunsyo ng resulta ng kumpanya at ng mga balitang nahanap nito sa web. Hindi ito payo sa pamumuhunan. Gumagamit ito ng iyong pang-araw-araw na limitasyon sa tanong, hindi ng pagsusuri.';

  @override
  String get compareLastSurprise => 'EPS ng nakaraang quarter vs. inaasahan';

  @override
  String get compareNextReport => 'Susunod na ulat';

  @override
  String get resolvingDescription =>
      'Inaalam kung aling stock ang ibig mong sabihin…';

  @override
  String get instrumentTitle => 'Tungkol sa instrumentong ito';

  @override
  String get instrumentHint =>
      'Walang profile ng kumpanya para sa simbolong ito – maaaring ETF, fund o depositary receipt ito. Tanungin ang AI kung ano ito, ano ang laman nito at magkano ang gastos nito.';

  @override
  String get instrumentAsk => 'Ano ito?';

  @override
  String get instrumentNote =>
      'Paliwanag ng AI mula sa fund page ng issuer at sa mga financial site na nahanap nito sa web. Hindi ito payo sa pamumuhunan. Gumagamit ito ng iyong pang-araw-araw na limitasyon sa tanong, hindi ng pagsusuri.';

  @override
  String suggestAskAi(String query) {
    return 'Itanong sa AI: “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Walang kasalukuyang presyo para sa $symbols.';
  }

  @override
  String get eventsRecentResults => 'Kamakailang iniulat na resulta';

  @override
  String get saveToNotes => 'I-save sa aking mga tala';

  @override
  String get savedToNotes => 'Na-save sa iyong mga tala';

  @override
  String get portfolioDividendsReceived => 'Natanggap na dibidendo';

  @override
  String get portfolioDividendsThisYear => 'Ngayong taon';

  @override
  String get portfolioDividendsAllTime => 'Kabuuan';

  @override
  String get portfolioAddDividend => 'Magdagdag ng dibidendo';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Halagang natanggap ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Petsa ng pagbabayad';

  @override
  String get portfolioDividendsEmpty =>
      'Wala pang naitalang dibidendo. Idagdag ang mga ito nang manu-mano, o i-import ang export ng iyong broker – kukunin din ang mga row ng dibidendo nito.';

  @override
  String get portfolioSplit => 'Stock split';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Stock split: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Ina-adjust ang mga pagbili at pagbenta na may petsang bago ang split: pinaparami ang bilang ng mga share at hinahati ang presyo kada share, kaya hindi nagbabago ang gastos.';

  @override
  String get portfolioSplitRatio => 'Ratio (bago : luma)';

  @override
  String get portfolioSplitRatioError =>
      'Maglagay ng ratio tulad ng 10:1, o 1:10 para sa reverse split.';

  @override
  String get portfolioSplitDate => 'Petsa ng split';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Stock split $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Na-delete ang stock split';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count stock split ang naidagdag',
      one: '1 stock split ang naidagdag',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dibidendo ang naidagdag',
      one: '1 dibidendo ang naidagdag',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'I-export ang mga dibidendo (CSV)';

  @override
  String get portfolioDividendDeleted => 'Nabura ang dibidendo';

  @override
  String get portfolioDividendsHint =>
      'Mga halaga ayon sa pagdating nito sa iyong account, sa currency ng pagbabayad; ang mga kabuuan ay naka-convert sa rate ngayon. Para sa iyong tax return, gamitin ang statement ng iyong broker.';

  @override
  String get awayTitle => 'Habang wala ka';

  @override
  String awaySince(String when) {
    return 'Mula $when';
  }

  @override
  String get awayQuiet => 'Walang gaanong gumalaw.';

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
    return 'Naglabas ng resulta: $symbols';
  }

  @override
  String get moveWhyButton => 'Bakit ito gumagalaw ngayon?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent ngayon';
  }

  @override
  String get moveWhyNote =>
      'Paliwanag ng AI mula sa mga balita ngayong araw na natagpuan sa web; maaaring hindi alam o iba ang tunay na dahilan. Hindi payo sa pamumuhunan. Gumagamit ng iyong pang-araw-araw na kuota ng tanong, hindi ng pagsusuri.';

  @override
  String get sectionTechnical => 'Teknikal na larawan';

  @override
  String get labelSma50 => '50-araw na average';

  @override
  String get labelSma200 => '200-araw na average';

  @override
  String get labelRsi => 'RSI (14 araw)';

  @override
  String get labelVolatility30 => 'Volatility (30 araw)';

  @override
  String techAbove(String percent) {
    return '$percent sa itaas';
  }

  @override
  String techBelow(String percent) {
    return '$percent sa ibaba';
  }

  @override
  String get techOverbought => 'overbought';

  @override
  String get techOversold => 'oversold';

  @override
  String get techNeutral => 'neutral';

  @override
  String get techGoldenCross =>
      'Ang 50-araw na average ay nasa itaas ng 200-araw na average – isang uptrend ayon sa klasikong pagbasa.';

  @override
  String get techDeathCross =>
      'Ang 50-araw na average ay nasa ibaba ng 200-araw na average – isang downtrend ayon sa klasikong pagbasa.';

  @override
  String get glossSma50 =>
      'Ang average na closing price ng huling 50 araw ng trading. Ang presyong nasa itaas nito ay madalas binabasa bilang panandaliang lakas, at ang nasa ibaba bilang kahinaan.';

  @override
  String get glossSma200 =>
      'Ang average na closing price ng huling 200 araw ng trading – ang klasikong pangmatagalang trend line. Maraming investor ang tumitingin sa presyong nasa itaas nito bilang pangmatagalang uptrend.';

  @override
  String get glossRsi =>
      'Relative strength index: ikinukumpara ang mga kamakailang ganansya sa mga kamakailang pagkalugi sa iskala na 0–100. Sa itaas ng 70, madalas tinatawag na overbought ang stock (mabilis itong tumaas), sa ibaba ng 30 oversold – ngunit maaaring manatili doon nang matagal ang isang malakas na trend.';

  @override
  String get glossVolatility =>
      'Gaano kalaki ang pagbabago ng presyo araw-araw, isinukat sa isang taon: ang 20% ay nangangahulugang sa karaniwang taon ay gumagalaw ito sa loob ng humigit-kumulang ±20%. Mas mataas na volatility ay nangangahulugang mas malalaking galaw sa magkabilang direksyon.';

  @override
  String get techNote =>
      'Kinalkula mula sa pang-araw-araw na closing price. Inilalarawan ng mga teknikal na signal ang nakaraan, hindi ang hinaharap.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$above sa $count posisyon ang nasa itaas ng kanilang 200-araw na average';
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
  String get signalCrossedAbove => 'tumaas sa itaas ng 200-araw na average';

  @override
  String get signalCrossedBelow => 'bumaba sa ilalim ng 200-araw na average';

  @override
  String get signalAlertsTitle => 'Mga notification sa technical signal';

  @override
  String get signalAlertsSubtitle =>
      'Isang beses sa isang araw, kapag ang isang stock na sinusundan mo ay naging oversold o overbought (RSI), o tumawid ang presyo nito sa 200-araw na average nito.';

  @override
  String get signalAlertsNotification => 'Mga technical signal';

  @override
  String get glossaryPageTitle => 'Glosaryo';

  @override
  String get glossaryPageSubtitle =>
      'Simpleng paliwanag sa bawat numerong ipinapakita ng app, mula P/E hanggang RSI';

  @override
  String get glossarySearchHint => 'Maghanap sa glosaryo';

  @override
  String get portfolioCash => 'Cash';

  @override
  String get portfolioCashTitle => 'Cash balance';

  @override
  String get portfolioCashHint =>
      'Hindi pa naipuhunang pera sa iyong broker, bawat currency. Kasama ito sa kabuuang halaga at hatian; hindi sa kita.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Halaga ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Itakda ang cash balance';

  @override
  String get portfolioDividendsByMonth => 'Kada buwan';

  @override
  String get dividendsLegendReceived => 'Natanggap';

  @override
  String get dividendsLegendExpected => 'Inaasahan';

  @override
  String get portfolioDividendsExpected => 'Inaasahang susunod';

  @override
  String get portfolioDividendsExpectedNote =>
      'Tinantiya mula sa mga petsa at halaga ng mga bayad na itinala mo; maaaring baguhin o laktawan ito ng mga kumpanya.';

  @override
  String portfolioDividendAround(String date) {
    return 'bandang $date';
  }
}
