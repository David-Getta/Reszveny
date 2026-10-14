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
      'Sa device na ito lang naka-save. Kino-convert ang mga kabuuan gamit ang mga reference rate ng ECB; maaaring naantala ang mga presyo.';

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
  String get askButton => 'Ask about this analysis';

  @override
  String askTitle(String symbol) {
    return 'Questions about $symbol';
  }

  @override
  String get askIntro =>
      'Ask anything about the analysis: what a risk means, what would change the outlook, how a number was worked out. The answers are based on this analysis and are not investment advice.';

  @override
  String get askHint => 'Ask a question…';

  @override
  String get askSend => 'Send';

  @override
  String get askThinking => 'Thinking…';

  @override
  String get askSuggest1 => 'What is the biggest risk?';

  @override
  String get askSuggest2 => 'What would change the outlook?';

  @override
  String get askSuggest3 => 'Explain it in simple terms';

  @override
  String get askMaxReached =>
      'That was the last question for this analysis. Make a new analysis to ask more.';

  @override
  String get errAskLimit =>
      'You have reached today\'s limit for questions. Please try again tomorrow.';
}
