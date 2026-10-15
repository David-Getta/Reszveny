// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

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
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analysts',
      one: '1 analyst',
    );
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
  String get errRecognitionUnreachable =>
      'Could not reach the recognition service. Check your internet connection.';

  @override
  String errRecognitionHttp(String status) {
    return 'The recognition service returned an error (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'The recognition service could not process this image.';

  @override
  String get errRecognitionTruncated =>
      'The recognition response was cut off. Please try again.';

  @override
  String get errRecognitionBadResponse =>
      'Unexpected response from the recognition service.';

  @override
  String get errRecognitionEmpty =>
      'The recognition service returned an empty response.';

  @override
  String get errMissingFinnhubKey =>
      'Market data is not configured (no FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Could not reach the market data service. Check your internet connection.';

  @override
  String get errMarketRateLimited =>
      'Too many requests to the market data service. Please wait a minute.';

  @override
  String errMarketHttp(String status) {
    return 'The market data service returned an error (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Unexpected response from the market data service.';

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
    return 'Press $shortcut anywhere to summon WhatStock.';
  }

  @override
  String get trayOpen => 'Open WhatStock';

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
      'A detailed, AI-written overview: summary of recent news, the business, strengths, risks and hidden factors, valuation, a price outlook with scenarios from psychological, sociological, technical and macro angles, and what to watch.';

  @override
  String get aiGenerate => 'Generate analysis';

  @override
  String get aiRegenerate => 'Regenerate';

  @override
  String get aiGenerating =>
      'Preparing the analysis… this can take a minute or two.';

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
  String get errAiNotConfigured =>
      'AI analysis is not configured (no ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Could not reach the AI service. Check your internet connection.';

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
  String get chartUnavailable =>
      'Price history is not available from the current data source.';

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
  String get statementsUnavailable =>
      'Reported financial statements are not available for this stock.';

  @override
  String get launchAtLogin => 'Launch at login';

  @override
  String get hotkeyLabel => 'Global shortcut';

  @override
  String get hotkeyRecordHint =>
      'Click here, then press the new key combination';

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
  String get noFavorites =>
      'No favorites yet. Tap the star on a stock to add it.';

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

  @override
  String get updates => 'Updates';

  @override
  String currentVersion(String version) {
    return 'Version $version';
  }

  @override
  String get autoUpdate => 'Install updates automatically';

  @override
  String get checkForUpdates => 'Check for updates';

  @override
  String get updateChecking => 'Checking for updates…';

  @override
  String get updateUpToDate => 'You’re on the latest version.';

  @override
  String updateAvailable(String version) {
    return 'Version $version is available.';
  }

  @override
  String get updateDownloading => 'Downloading the update in the background…';

  @override
  String get updateDownloaded => 'The update is ready. Restart to install it.';

  @override
  String get updateNow => 'Update';

  @override
  String get restartNow => 'Restart';

  @override
  String get updatesViaStore =>
      'Updates arrive automatically through the app store.';

  @override
  String get updateCheckFailed => 'Could not check for updates.';

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
  String get planNone => 'No active plan';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count analyses per month';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$days-day free trial with $count analyses';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days days of trial left',
      one: '1 day of trial left',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Your free trial has ended. Choose a plan to keep analysing.';

  @override
  String analysesRemaining(int remaining, int total) {
    return '$remaining of $total analyses left this period';
  }

  @override
  String extraCredits(int count) {
    return '$count extra analyses';
  }

  @override
  String renewsOn(String date) {
    return 'Renews $date';
  }

  @override
  String get choosePlan => 'Choose a plan';

  @override
  String get currentPlan => 'Current plan';

  @override
  String get subscribe => 'Subscribe';

  @override
  String get perMonth => '/ month';

  @override
  String get extraPacksTitle => 'Need more? Buy extra analyses';

  @override
  String get extraPacksHint =>
      'Extra analyses never expire and are used after your monthly allowance.';

  @override
  String get buy => 'Buy';

  @override
  String get restorePurchases => 'Restore purchases';

  @override
  String get manageSubscription => 'Manage subscription';

  @override
  String get purchaseSuccess => 'Thanks! Your purchase is active.';

  @override
  String get purchasePending => 'Purchase pending…';

  @override
  String get purchaseFailed => 'The purchase could not be completed.';

  @override
  String get purchaseCanceled => 'Purchase canceled.';

  @override
  String get billingUnavailable =>
      'Purchases are not available on this platform yet. Subscribe on your phone or Mac; your plan will work on every device.';

  @override
  String get errQuotaExceeded =>
      'You have no analyses left for this period. Upgrade your plan or buy extra analyses.';

  @override
  String get errTrialExpired =>
      'Your free trial has ended. Choose a plan to continue.';

  @override
  String get errNoPlan => 'An active plan is needed for AI analysis.';

  @override
  String get viewPlans => 'View plans';

  @override
  String get usageTitle => 'Usage';

  @override
  String get demoPurchaseNote =>
      'Demo billing: purchases are simulated on this platform.';

  @override
  String get mostPopular => 'Most popular';

  @override
  String get bestValue => 'Best value';

  @override
  String get planFeaturesCommon =>
      'Photo recognition, live data, charts, favorites and all 120 languages are included in every plan. The allowance covers AI analyses.';

  @override
  String get searchLanguages => 'Search languages…';

  @override
  String get noLanguageMatch => 'No language matches.';

  @override
  String get aiSettings => 'AI analysis';

  @override
  String get aiLength => 'Length';

  @override
  String get aiDepthBrief => 'Brief';

  @override
  String get aiDepthStandard => 'Standard';

  @override
  String get aiDepthDeep => 'In-depth';

  @override
  String get aiDepthBriefDesc => 'The essentials, fast.';

  @override
  String get aiDepthStandardDesc => 'Full report with every section.';

  @override
  String get aiDepthDeepDesc =>
      'More web searches, peer comparison and deeper detail.';

  @override
  String aiDepthWords(String min, String max) {
    return 'About $min–$max words';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'uses $count analyses',
      one: 'uses 1 analysis',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Reader level';

  @override
  String get aiReaderBeginner => 'Beginner';

  @override
  String get aiReaderExperienced => 'Experienced';

  @override
  String get aiReaderBeginnerDesc =>
      'Plain language; every technical term is explained.';

  @override
  String get aiReaderExperiencedDesc =>
      'Denser text with standard financial terminology.';

  @override
  String get aiCounterArgument => 'Strongest counter-argument';

  @override
  String get aiCounterArgumentDesc =>
      'The summary always ends with the best case against its own conclusion.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Up to $count web searches per analysis with your plan',
      one: 'Up to 1 web search per analysis with your plan',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Standard length by plan: Normal $normal, Pro $pro, Max $max, Ultra $ultra. Brief uses 2 fewer, In-depth 2 more.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'up to $count web searches',
      one: 'up to 1 web search',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count web searches per analysis',
      one: '1 web search per analysis',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'This length needs $needed analyses, but only $left left. Choose a shorter length in Settings or get more analyses.';
  }

  @override
  String get outlookMarketMood => 'Market mood';

  @override
  String get moodVeryPessimistic => 'Very pessimistic';

  @override
  String get moodPessimistic => 'Pessimistic';

  @override
  String get moodNeutral => 'Neutral';

  @override
  String get moodOptimistic => 'Optimistic';

  @override
  String get moodVeryOptimistic => 'Very optimistic';

  @override
  String get scenarioBull => 'Bull case';

  @override
  String get scenarioBase => 'Base case';

  @override
  String get scenarioBear => 'Bear case';

  @override
  String outlookCurrentPrice(String price) {
    return 'Current price: $price';
  }

  @override
  String get outlookKeyLevels => 'Key levels';

  @override
  String get keyLevelSupport => 'Support';

  @override
  String get keyLevelResistance => 'Resistance';

  @override
  String get keyLevelAnchor => 'Anchor';

  @override
  String get upcomingEvents => 'Upcoming events';

  @override
  String get outlookChartNote =>
      'Indicative ranges; probabilities are rough judgements, not predictions.';

  @override
  String get accountTitle => 'Account';

  @override
  String get signIn => 'Sign in';

  @override
  String get signOut => 'Sign out';

  @override
  String get notSignedIn => 'Not signed in';

  @override
  String get accountBenefit =>
      'Sign in so your subscription works on all your devices.';

  @override
  String get accountSyncedNote =>
      'Your subscription and remaining analyses are the same on every device.';

  @override
  String get signInTitle => 'Sign in to WhatStock';

  @override
  String get emailLabel => 'Email address';

  @override
  String get continueWithEmail => 'Continue with email';

  @override
  String codeSentTo(String email) {
    return 'We sent a 6-digit code to $email. It is valid for 10 minutes.';
  }

  @override
  String get codeLabel => 'Sign-in code';

  @override
  String get resendCode => 'Send a new code';

  @override
  String get useDifferentEmail => 'Use a different email';

  @override
  String get errInvalidCode => 'The code is wrong or has expired.';

  @override
  String get errInvalidEmail => 'Please enter a valid email address.';

  @override
  String get errSignInFailed =>
      'Sign-in failed. Check your connection and try again.';

  @override
  String get checkoutWaiting =>
      'Complete the payment in your browser. The app updates automatically when it is done.';

  @override
  String get paymentViaStripe =>
      'Secure payment in your browser via Stripe. Cancel anytime.';

  @override
  String get paymentViaStore =>
      'Billed through your App Store or Google Play account. Cancel anytime in your store settings.';

  @override
  String get keySpace => 'Space';

  @override
  String get doubleOptionTitle => 'Double-press Option';

  @override
  String get doubleOptionSubtitle =>
      'Pressing the Option key twice quickly also summons WhatStock.';

  @override
  String get doubleOptionPermission =>
      'To make it work in other apps too, allow WhatStock under System Settings → Privacy & Security → Input Monitoring, then reopen the app.';

  @override
  String get openSystemSettings => 'Open System Settings';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Press $shortcut or double-press Option anywhere to summon WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Most likely';

  @override
  String get longTermToday => 'Today';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years years',
      one: '1 year',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range a year';
  }

  @override
  String longTermLikely(String price) {
    return 'most likely $price';
  }

  @override
  String get confidenceLow => 'Low confidence';

  @override
  String get confidenceMedium => 'Medium confidence';

  @override
  String get confidenceHigh => 'High confidence';

  @override
  String get longTermNote =>
      'Long-term ranges rest on the stated assumptions and widen with time. Prices exclude dividends. Rough judgements, not predictions.';

  @override
  String get portfolio => 'Portfolio';

  @override
  String get portfolioEmpty =>
      'Nothing here yet. Open a stock and tap “Add to portfolio” to follow what you own.';

  @override
  String get portfolioLocalNote =>
      'Stored only on this device. Totals are converted at ECB reference rates; prices may be delayed.';

  @override
  String get addToPortfolio => 'Add to portfolio';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Add $symbol';
  }

  @override
  String get portfolioQuantity => 'Number of shares';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Price per share ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Purchase date';

  @override
  String get portfolioAdd => 'Add';

  @override
  String get portfolioInvalidNumber => 'Enter a number greater than zero.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol added to your portfolio.';
  }

  @override
  String get portfolioTotalValue => 'Total value';

  @override
  String get portfolioToday => 'Today';

  @override
  String get portfolioGainLoss => 'Gain/loss';

  @override
  String get portfolioInvested => 'Invested';

  @override
  String get portfolioAllocation => 'Allocation';

  @override
  String get portfolioPositions => 'Positions';

  @override
  String portfolioAvgCost(String price) {
    return 'avg. cost $price';
  }

  @override
  String get portfolioYourPosition => 'Your position';

  @override
  String get portfolioPurchases => 'Purchases';

  @override
  String get portfolioRemove => 'Remove';

  @override
  String get portfolioExcluded =>
      'Positions without a price or exchange rate are left out of the totals.';

  @override
  String get priceAlerts => 'Price alerts';

  @override
  String get setPriceAlert => 'Set price alert';

  @override
  String alertDialogTitle(String symbol) {
    return 'Price alert · $symbol';
  }

  @override
  String get alertKindAbove => 'Rises above';

  @override
  String get alertKindBelow => 'Falls below';

  @override
  String get alertKindMove => 'Moves a lot in a day';

  @override
  String alertTargetPrice(String currency) {
    return 'Price ($currency)';
  }

  @override
  String get alertMovePercent => 'Daily move (%)';

  @override
  String get alertAlreadyMet => 'The price is already past this level.';

  @override
  String get alertSave => 'Set alert';

  @override
  String alertCreated(String symbol) {
    return 'Alert set for $symbol.';
  }

  @override
  String get alertsEmpty =>
      'No price alerts yet. Open a stock and tap the bell to set one.';

  @override
  String get alertsNote =>
      'Alerts are checked every 5 minutes while WhatStock is running. On a computer it keeps running in the menu bar or tray; on a phone, alerts arrive while the app is open for now.';

  @override
  String alertDescAbove(String price) {
    return 'Above $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Below $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Daily move ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Triggered $date at $price';
  }

  @override
  String get alertRearm => 'Re-arm';

  @override
  String get alertDelete => 'Delete';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol rose above $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol fell below $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol moved $percent today';
  }

  @override
  String alertHitBody(String price) {
    return 'Current price: $price';
  }

  @override
  String get alertOpen => 'Open';

  @override
  String get keepInTrayTitle => 'Keep running when the window is closed';

  @override
  String get keepInTraySubtitle =>
      'WhatStock stays in the menu bar or tray, so the hotkey and price alerts keep working.';

  @override
  String get termsOfUse => 'Terms of Use';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get subscriptionLegal =>
      'Subscriptions renew automatically every month until you cancel. By subscribing you accept the Terms of Use and the Privacy Policy.';

  @override
  String get deleteAccount => 'Delete account';

  @override
  String get deleteAccountTitle => 'Delete your account?';

  @override
  String get deleteAccountBody =>
      'Your account and everything stored on our server (email, allowance, usage) will be deleted for good, and unused analyses are lost. A subscription paid in the browser is cancelled right away; an App Store or Google Play subscription must be cancelled in the store\'s settings.';

  @override
  String get deleteLocalData =>
      'Also delete the data on this device (portfolio, alerts, favorites, history, saved analyses)';

  @override
  String get deleteAccountConfirm => 'Delete for good';

  @override
  String get accountDeleted => 'Your account has been deleted.';

  @override
  String get errDeleteAccount =>
      'The account could not be deleted. Check your connection and try again.';

  @override
  String get aiTrialBriefNote =>
      'Trial analyses are brief and made with a faster AI model. With a plan you get our most capable AI, more web research, and the Standard and In-depth lengths.';

  @override
  String get billingMonthly => 'Monthly';

  @override
  String get billingYearly => 'Yearly';

  @override
  String get yearlyDiscount => '2 months free';

  @override
  String get perYear => '/ year';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price per month';
  }

  @override
  String get subscriptionLegalYearly =>
      'Yearly subscriptions renew automatically every year until you cancel. By subscribing you accept the Terms of Use and the Privacy Policy.';

  @override
  String get myAnalyses => 'My analyses';

  @override
  String get navAlerts => 'Alerts';

  @override
  String get inviteTitle => 'Closed preview';

  @override
  String get inviteBody =>
      'WhatStock is available by invitation only for now. Enter the invite code you received.';

  @override
  String get inviteCodeLabel => 'Invite code';

  @override
  String get inviteContinue => 'Continue';

  @override
  String get inviteInvalid => 'This invite code is not valid.';

  @override
  String get inviteExpired =>
      'This invite has expired. Ask the person who invited you for a new code.';

  @override
  String get inviteDeviceLimit =>
      'This invite code is already in use on the maximum number of devices.';

  @override
  String get previewConfidential => 'Confidential preview';

  @override
  String get errPreviewDailyLimit =>
      'Today\'s analysis limit of this preview has been reached. Try again tomorrow.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hours ago',
      one: '1 hour ago',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days ago',
      one: '1 day ago',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Update this analysis?';

  @override
  String staleBody(String age) {
    return 'It was made $age. Prices, news and results may have changed since then.';
  }

  @override
  String get staleKeep => 'Show the earlier one';

  @override
  String get staleRefresh => 'Make a new one';

  @override
  String seeAll(int count) {
    return 'See all ($count)';
  }

  @override
  String get searchAnalyses => 'Search your analyses';

  @override
  String get deleteAnalysis => 'Delete';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol analysis deleted';
  }

  @override
  String get keyLevelAlertHint =>
      'Tap a level to get an alert when the price reaches it.';

  @override
  String get shareAnalysisTitle => 'Share analysis';

  @override
  String get shareAsImage => 'Share as image';

  @override
  String get shareAsText => 'Share as text';

  @override
  String get shareCardFooter => 'Made with WhatStock';

  @override
  String get shareCardDisclaimer => 'AI analysis · not investment advice';

  @override
  String get referralTitle => 'Invite friends';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count extra analyses',
      one: '1 extra analysis',
    );
    return 'Share your code. Your friend gets $_temp0 right away, and you get the same after their first analysis.';
  }

  @override
  String get referralYourCode => 'Your code';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Invited: $invited · Rewarded: $rewarded';
  }

  @override
  String get referralHaveCode => 'Have a code from a friend?';

  @override
  String get referralRedeem => 'Redeem';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count extra analyses added. Welcome!',
      one: '1 extra analysis added. Welcome!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'This code doesn\'t exist. Check it and try again.';

  @override
  String get referralErrOwn => 'You can\'t redeem your own code.';

  @override
  String get referralErrAlready => 'You\'ve already redeemed a friend\'s code.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count extra analyses',
      one: '1 extra analysis',
    );
    return 'I analyse stocks with WhatStock: photograph a stock and the AI explains it. With my code $code you get $_temp0.';
  }

  @override
  String get referralCopied => 'Code copied';

  @override
  String get onboardTitle1 => 'Photograph a stock';

  @override
  String get onboardBody1 =>
      'A brokerage screen, a newspaper or a company logo is enough: WhatStock recognises the stock and shows its price, chart and key figures.';

  @override
  String get onboardTitle2 => 'Understand it in minutes';

  @override
  String get onboardBody2 =>
      'The AI analysis explains what moves the stock, the risks, the valuation and three scenarios for where the price could go, with sources and in your language.';

  @override
  String get onboardTitle3 => 'Stay on top of it';

  @override
  String get onboardBody3 =>
      'Favorites, your portfolio and price alerts keep you posted. Your analyses stay on your device, ready to reopen.';

  @override
  String get onboardNext => 'Next';

  @override
  String get onboardStart => 'Get started';

  @override
  String get onboardSkip => 'Skip';

  @override
  String changesTitle(String date) {
    return 'Since the previous analysis ($date)';
  }

  @override
  String get changesPrice => 'Price';

  @override
  String get changesNoMajor => 'The outlook has not changed materially.';

  @override
  String get changesPreviousSummary => 'Previous summary';

  @override
  String get telemetryTitle => 'Help improve WhatStock';

  @override
  String get telemetryBody =>
      'Share anonymous usage statistics and crash reports: which features are used and what went wrong. Never your stocks, analyses or personal data. You can change this at any time in Settings.';

  @override
  String get telemetryAllow => 'Allow';

  @override
  String get telemetryDecline => 'No thanks';

  @override
  String get telemetrySetting => 'Anonymous statistics and crash reports';

  @override
  String get telemetrySettingHint =>
      'How often features are used and error reports, without personal data or the content of your searches and analyses.';

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

  @override
  String get eventTomorrow => 'Tomorrow';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'in $days days',
      one: 'in 1 day',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Quarterly results';

  @override
  String get eventBeforeOpen => 'before the open';

  @override
  String get eventAfterClose => 'after the close';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS estimate: $value';
  }

  @override
  String get eventFromAnalysis => 'From your analysis';

  @override
  String get eventsHint =>
      'Results dates of your favorites and portfolio stocks for the next 90 days, and the dated events your analyses flagged.';

  @override
  String get eventsEmpty =>
      'No dated events in the next 90 days. Add favorites or portfolio stocks to see their results dates here.';

  @override
  String get compareTitle => 'Compare';

  @override
  String get compareAdd => 'Add a stock';

  @override
  String get compareRemove => 'Remove';

  @override
  String get compareTickerHint => 'Ticker, e.g. MSFT';

  @override
  String get compareHint =>
      'Key figures side by side; the best value in each row is highlighted. Amounts are in each stock\'s own currency.';

  @override
  String get compareNoAnalysis => 'No analysis yet';

  @override
  String get portfolioDividends => 'Yearly dividends';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent yield';
  }

  @override
  String get portfolioDividendNote =>
      'Expected yearly dividends are based on the dividends paid in the last 12 months; future payments are not guaranteed.';

  @override
  String positionDividend(String amount) {
    return 'Dividend: $amount a year';
  }

  @override
  String get chartAvgCost => 'Your avg.';

  @override
  String get chartAlertLevel => 'Alert';

  @override
  String get marketsToday => 'Markets today';

  @override
  String get notesTitle => 'My notes';

  @override
  String get notesHint =>
      'Why did you buy it, what are you watching, what would make you sell?';

  @override
  String get notesInfo =>
      'Stored only on this device. The AI analysis takes your notes into account.';

  @override
  String notesSaved(String date) {
    return 'Saved $date';
  }

  @override
  String get peersTitle => 'Similar companies';
}
