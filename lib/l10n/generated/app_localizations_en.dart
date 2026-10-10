// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'StockLens';

  @override
  String get homeTagline => 'Photograph a stock and learn everything about it.';

  @override
  String get homeHint =>
      'A share certificate, a brokerage app screen, a newspaper or a company logo – anything that identifies a stock.';

  @override
  String get takePhoto => 'Take a photo';

  @override
  String get chooseFromGallery => 'Choose from gallery';

  @override
  String get chooseImage => 'Choose an image';

  @override
  String get enterTickerManually => 'Enter ticker manually';

  @override
  String get tickerInputLabel => 'Ticker symbol';

  @override
  String get tickerInputHint => 'e.g. AAPL';

  @override
  String get lookUp => 'Look up';

  @override
  String demoModeBanner(String symbols) {
    return 'Demo mode – no market data key configured. Sample data is available for: $symbols.';
  }

  @override
  String get recognizing => 'Analysing the image…';

  @override
  String get loadingData => 'Loading data…';

  @override
  String get noCandidatesTitle => 'No stock recognised';

  @override
  String get noCandidatesBody =>
      'We could not identify a stock in this image. Try a sharper photo, or enter the ticker manually.';

  @override
  String get whatWeSaw => 'What we saw';

  @override
  String get chooseCandidateTitle => 'Which stock did you mean?';

  @override
  String confidencePercent(int percent) {
    return '$percent% confidence';
  }

  @override
  String get settings => 'Settings';

  @override
  String get language => 'Language';

  @override
  String get systemLanguage => 'System default';

  @override
  String get about => 'About';

  @override
  String get disclaimer =>
      'This app provides information only and is not investment advice. Data may be delayed or inaccurate.';

  @override
  String dataSource(String source) {
    return 'Data source: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Recognition: $source';
  }

  @override
  String get retry => 'Retry';

  @override
  String get cancel => 'Cancel';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Close';

  @override
  String get errorGeneric => 'Something went wrong.';

  @override
  String get errorSectionUnavailable => 'This section could not be loaded.';

  @override
  String get notAvailable => 'n/a';

  @override
  String get sectionIdentity => 'Identification';

  @override
  String get sectionPrice => 'Price';

  @override
  String get sectionValuation => 'Valuation';

  @override
  String get sectionFinancials => 'Financials';

  @override
  String get sectionDividend => 'Dividend';

  @override
  String get sectionProfile => 'Company profile';

  @override
  String get sectionAnalysts => 'Analyst ratings';

  @override
  String get sectionNews => 'News';

  @override
  String get sectionRecognition => 'Recognition details';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Exchange';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Currency';

  @override
  String get labelCountry => 'Country';

  @override
  String get labelIndustry => 'Industry';

  @override
  String get labelSector => 'Sector';

  @override
  String get labelWebsite => 'Website';

  @override
  String get labelIpoDate => 'IPO date';

  @override
  String get labelMarketCap => 'Market cap';

  @override
  String get labelSharesOutstanding => 'Shares outstanding';

  @override
  String get labelEmployees => 'Employees';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Headquarters';

  @override
  String get labelDescription => 'Description';

  @override
  String get labelLastPrice => 'Last price';

  @override
  String get labelChange => 'Change';

  @override
  String get labelOpen => 'Open';

  @override
  String get labelDayHigh => 'Day high';

  @override
  String get labelDayLow => 'Day low';

  @override
  String get labelPreviousClose => 'Previous close';

  @override
  String get labelWeek52High => '52-week high';

  @override
  String get labelWeek52Low => '52-week low';

  @override
  String get labelAverageVolume10d => 'Avg. volume (10 days)';

  @override
  String updatedAt(String time) {
    return 'Updated $time';
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
  String get labelNetIncomeTtm => 'Net income (TTM)';

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
  String get labelDebtToEquity => 'Debt / equity';

  @override
  String get labelCurrentRatio => 'Current ratio';

  @override
  String get labelRevenueGrowth => 'Revenue growth (YoY)';

  @override
  String get labelEpsGrowth => 'EPS growth (YoY)';

  @override
  String get labelDividendYield => 'Dividend yield';

  @override
  String get labelDividendPerShare => 'Dividend per share';

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
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count analysts', one: '1 analyst');
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Period: $period';
  }

  @override
  String get noNews => 'No recent news.';

  @override
  String get openArticle => 'Open article';

  @override
  String get openLinkFailed => 'Could not open the link.';

  @override
  String get recognitionSummary => 'Summary';

  @override
  String get recognitionEvidence => 'Why we think so';

  @override
  String get recognitionRawText => 'Text read from the image';

  @override
  String get errMissingAnthropicKey =>
      'Image recognition is not configured (no ANTHROPIC_API_KEY). Enter the ticker manually.';

  @override
  String get errRecognitionUnreachable => 'Could not reach the recognition service. Check your internet connection.';

  @override
  String errRecognitionHttp(String status) {
    return 'The recognition service returned an error (HTTP $status).';
  }

  @override
  String get errRecognitionRefused => 'The recognition service could not process this image.';

  @override
  String get errRecognitionTruncated => 'The recognition response was cut off. Please try again.';

  @override
  String get errRecognitionBadResponse => 'Unexpected response from the recognition service.';

  @override
  String get errRecognitionEmpty => 'The recognition service returned an empty response.';

  @override
  String get errMissingFinnhubKey => 'Market data is not configured (no FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable => 'Could not reach the market data service. Check your internet connection.';

  @override
  String get errMarketRateLimited => 'Too many requests to the market data service. Please wait a minute.';

  @override
  String errMarketHttp(String status) {
    return 'The market data service returned an error (HTTP $status).';
  }

  @override
  String get errMarketBadResponse => 'Unexpected response from the market data service.';

  @override
  String errNoQuote(String symbol) {
    return 'No price data found for $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'No company profile found for $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Demo mode only supports $symbols. Add a FINNHUB_API_KEY for live data.';
  }

  @override
  String errUnknown(String detail) {
    return 'Something went wrong: $detail';
  }

  @override
  String get newSearch => 'New search';

  @override
  String get recentSearches => 'Recent';

  @override
  String get noRecentSearches => 'No recent searches yet.';

  @override
  String get clearRecent => 'Clear recent';

  @override
  String get greeting => 'Which stock shall we look at?';

  @override
  String get searchHint => 'Ticker or company name';

  @override
  String get attachImage => 'Attach an image';

  @override
  String get searchResultsTitle => 'Search results';

  @override
  String errNoResults(String query) {
    return 'No stocks found for “$query”.';
  }

  @override
  String get quickBarHint => 'Type a ticker or company name…';

  @override
  String get openFullWindow => 'Open window';

  @override
  String hotkeyHint(String shortcut) {
    return 'Press $shortcut anywhere to summon StockLens.';
  }

  @override
  String get trayOpen => 'Open StockLens';

  @override
  String get trayQuickSearch => 'Quick search';

  @override
  String get trayQuit => 'Quit';

  @override
  String get appearance => 'Appearance';

  @override
  String get themeSystem => 'System';

  @override
  String get themeDark => 'Dark';

  @override
  String get themeLight => 'Light';

  @override
  String get back => 'Back';

  @override
  String get aiSectionTitle => 'AI analysis';

  @override
  String get aiIntro =>
      'A detailed, AI-written overview: summary of recent news, the business, strengths, risks and hidden factors, valuation and what to watch.';

  @override
  String get aiGenerate => 'Generate analysis';

  @override
  String get aiRegenerate => 'Regenerate';

  @override
  String get aiGenerating => 'Preparing the analysis… this can take a minute or two.';

  @override
  String get aiSources => 'Sources';

  @override
  String aiGeneratedAt(String time) {
    return 'Generated $time';
  }

  @override
  String get aiDisclaimer =>
      'AI-generated analysis based on public data and recent news. It may contain errors or be out of date, and it is not investment advice.';

  @override
  String get errAiNotConfigured => 'AI analysis is not configured (no ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable => 'Could not reach the AI service. Check your internet connection.';

  @override
  String errAiHttp(String status) {
    return 'The AI service returned an error (HTTP $status).';
  }

  @override
  String get errAiRefused => 'The AI service declined to analyse this stock.';

  @override
  String get errAiBadResponse => 'Unexpected response from the AI service.';

  @override
  String get sectionChart => 'Price chart';

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
  String get chartUnavailable => 'Price history is not available from the current data source.';

  @override
  String get sectionStatements => 'Financial statements (annual)';

  @override
  String get labelFiscalYear => 'Fiscal year';

  @override
  String get labelRevenue => 'Revenue';

  @override
  String get labelNetIncome => 'Net income';

  @override
  String get labelTotalAssets => 'Total assets';

  @override
  String get labelTotalLiabilities => 'Total liabilities';

  @override
  String get labelEquity => 'Shareholders’ equity';

  @override
  String get labelOperatingCashFlow => 'Operating cash flow';

  @override
  String get statementsUnavailable => 'Reported financial statements are not available for this stock.';

  @override
  String get launchAtLogin => 'Launch at login';

  @override
  String get hotkeyLabel => 'Global shortcut';

  @override
  String get hotkeyRecordHint => 'Click here, then press the new key combination';

  @override
  String get hotkeyReset => 'Reset to default';

  @override
  String get pasteImage => 'Paste image from clipboard';

  @override
  String get errClipboardNoImage => 'There is no image on the clipboard.';

  @override
  String get favorites => 'Favorites';

  @override
  String get addToFavorites => 'Add to favorites';

  @override
  String get removeFromFavorites => 'Remove from favorites';

  @override
  String get noFavorites => 'No favorites yet. Tap the star on a stock to add it.';

  @override
  String get displayCurrency => 'Display currency';

  @override
  String get displayCurrencyNone => 'Stock’s own currency only';

  @override
  String labelConverted(String currency) {
    return '≈ in $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Rate: 1 $from = $rate $to (ECB, $date)';
  }
}
