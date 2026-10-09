// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Filipino Pilipino (`fil`).
class AppLocalizationsFil extends AppLocalizations {
  AppLocalizationsFil([String locale = 'fil']) : super(locale);

  @override
  String get appTitle => 'Reszveny';

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
    return 'Pindutin ang $shortcut kahit saan para tawagin ang Reszveny.';
  }

  @override
  String get trayOpen => 'Buksan ang Reszveny';

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
      'Isang detalyadong pangkalahatang-ideya na isinulat ng AI: buod ng mga pinakabagong balita, ang negosyo, mga lakas, mga panganib at nakatagong salik, valuation, at ang dapat bantayan.';

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
}
