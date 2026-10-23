// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Nigerian Pidgin (`pcm`).
class AppLocalizationsPcm extends AppLocalizations {
  AppLocalizationsPcm([String locale = 'pcm']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Snap stock picture, make you sabi evritin about am.';

  @override
  String get homeHint =>
      'Share certificate, broker app screen, newspaper or company logo – anytin wey fit show which stock e be.';

  @override
  String get takePhoto => 'Snap foto';

  @override
  String get chooseFromGallery => 'Pick from gallery';

  @override
  String get chooseImage => 'Pick picture';

  @override
  String get enterTickerManually => 'Type ticker by hand';

  @override
  String get tickerInputLabel => 'Di ticker';

  @override
  String get tickerInputHint => 'like AAPL';

  @override
  String get lookUp => 'Find am';

  @override
  String demoModeBanner(String symbols) {
    return 'Demo mode – no market data key dey. Sample data dey for: $symbols.';
  }

  @override
  String get recognizing => 'We dey check di picture…';

  @override
  String get loadingData => 'Data dey load…';

  @override
  String get noCandidatesTitle => 'We no fit know di stock';

  @override
  String get noCandidatesBody =>
      'We no fit find any stock for dis picture. Snap am again make e clear well, or type di ticker by hand.';

  @override
  String get whatWeSaw => 'Wetin we see';

  @override
  String get chooseCandidateTitle => 'Which stock you mean?';

  @override
  String confidencePercent(int percent) {
    return '$percent% sure';
  }

  @override
  String get settings => 'Settings';

  @override
  String get language => 'Language';

  @override
  String get systemLanguage => 'Di one wey system dey use';

  @override
  String get about => 'About';

  @override
  String get disclaimer =>
      'Na only information dis app dey give, e no be investment advice. Data fit late or no correct.';

  @override
  String dataSource(String source) {
    return 'Data from: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Wetin recognise am: $source';
  }

  @override
  String get retry => 'Try again';

  @override
  String get cancel => 'Cancel';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Close';

  @override
  String get errorGeneric => 'Sometin no go well.';

  @override
  String get errorSectionUnavailable => 'Dis section no gree load.';

  @override
  String get notAvailable => 'no dey';

  @override
  String get sectionIdentity => 'Stock ID';

  @override
  String get sectionPrice => 'Price';

  @override
  String get sectionValuation => 'How dem value am';

  @override
  String get sectionFinancials => 'Company moni';

  @override
  String get sectionDividend => 'Dividend';

  @override
  String get sectionProfile => 'About di company';

  @override
  String get sectionAnalysts => 'Wetin analysts tok';

  @override
  String get sectionNews => 'Tori';

  @override
  String get sectionRecognition => 'How we take sabi am';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Exchange';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Currency';

  @override
  String get labelCountry => 'Kontri';

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
  String get labelSharesOutstanding => 'Shares wey dey market';

  @override
  String get labelEmployees => 'Workers';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Head office';

  @override
  String get labelDescription => 'Wetin dem dey do';

  @override
  String get labelLastPrice => 'Last price';

  @override
  String get labelChange => 'Change';

  @override
  String get labelOpen => 'Open';

  @override
  String get labelDayHigh => 'Highest today';

  @override
  String get labelDayLow => 'Lowest today';

  @override
  String get labelPreviousClose => 'Last close';

  @override
  String get labelWeek52High => 'Highest for 52 weeks';

  @override
  String get labelWeek52Low => 'Lowest for 52 weeks';

  @override
  String get labelAverageVolume10d => 'Average volume (10 days)';

  @override
  String updatedAt(String time) {
    return 'Last update $time';
  }

  @override
  String get labelPeTrailing => 'P/E (last 12 months)';

  @override
  String get labelPeForward => 'P/E (next 12 months)';

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
  String get labelRevenueTtm => 'Total sales (TTM)';

  @override
  String get labelNetIncomeTtm => 'Net profit (TTM)';

  @override
  String get labelGrossMargin => 'Gross margin';

  @override
  String get labelOperatingMargin => 'Operating margin';

  @override
  String get labelNetMargin => 'Net margin';

  @override
  String get labelRoe => 'Profit on equity (ROE)';

  @override
  String get labelRoa => 'Profit on assets (ROA)';

  @override
  String get labelDebtToEquity => 'Debt / equity';

  @override
  String get labelCurrentRatio => 'Current ratio';

  @override
  String get labelRevenueGrowth => 'Sales growth (YoY)';

  @override
  String get labelEpsGrowth => 'How EPS grow (YoY)';

  @override
  String get labelDividendYield => 'Dividend yield';

  @override
  String get labelDividendPerShare => 'Dividend for each share';

  @override
  String get labelPayoutRatio => 'Payout ratio';

  @override
  String get labelYieldOnCost => 'Yield on cost';

  @override
  String get labelDividendGrowth5y => 'Dividend growth (5 yrs)';

  @override
  String get dividendNone => 'Dem no pay dividend for di last 12 months.';

  @override
  String get dividendOnYourShares => 'For your shares, every year';

  @override
  String get labelConsensus => 'Wetin most of dem tok';

  @override
  String get ratingStrongBuy => 'Buy am well well';

  @override
  String get ratingBuy => 'Buy';

  @override
  String get ratingHold => 'Hold am';

  @override
  String get ratingSell => 'Sell';

  @override
  String get ratingStrongSell => 'Sell am well well';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analysts',
      one: '$count analyst',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Time: $period';
  }

  @override
  String get noNews => 'No fresh tori.';

  @override
  String get openArticle => 'Open di tori';

  @override
  String get openLinkFailed => 'Di link no gree open.';

  @override
  String get recognitionSummary => 'Summary';

  @override
  String get recognitionEvidence => 'Why we tink so';

  @override
  String get recognitionRawText => 'Wetin we read from di picture';

  @override
  String get errMissingAnthropicKey =>
      'Picture recognition never dey set (no ANTHROPIC_API_KEY). Type di ticker by hand.';

  @override
  String get errRecognitionUnreachable =>
      'We no fit reach di recognition service. Check your internet connection.';

  @override
  String errRecognitionHttp(String status) {
    return 'Di recognition service return error (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Di recognition service no fit work on dis picture.';

  @override
  String get errRecognitionTruncated =>
      'Di recognition answer cut for middle. Abeg try again.';

  @override
  String get errRecognitionBadResponse =>
      'Di recognition service give answer wey we no expect.';

  @override
  String get errRecognitionEmpty =>
      'Di recognition service return empty answer.';

  @override
  String get errMissingFinnhubKey =>
      'Market data never dey set (no FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'We no fit reach di market data service. Check your internet connection.';

  @override
  String get errMarketRateLimited =>
      'Too many request don go di market data service. Abeg wait one minute.';

  @override
  String errMarketHttp(String status) {
    return 'Di market data service return error (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Di market data service give answer wey we no expect.';

  @override
  String errNoQuote(String symbol) {
    return 'We no find price data for $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'We no find company profile for $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Demo mode dey work only for $symbols. Add FINNHUB_API_KEY to get live data.';
  }

  @override
  String errUnknown(String detail) {
    return 'Sometin no go well: $detail';
  }

  @override
  String get newSearch => 'New search';

  @override
  String get recentSearches => 'Recent';

  @override
  String get noRecentSearches => 'You never search anytin yet.';

  @override
  String get clearRecent => 'Clear recent';

  @override
  String get greeting => 'Which stock we go look?';

  @override
  String get searchHint => 'Ticker or di company name';

  @override
  String get attachImage => 'Add picture';

  @override
  String get searchResultsTitle => 'Wetin we find';

  @override
  String errNoResults(String query) {
    return 'We no find any stock for “$query”.';
  }

  @override
  String get quickBarHint => 'Type ticker or company name…';

  @override
  String get openFullWindow => 'Open window';

  @override
  String hotkeyHint(String shortcut) {
    return 'Press $shortcut anywhere to call WhatStock.';
  }

  @override
  String get trayOpen => 'Open WhatStock';

  @override
  String get trayQuickSearch => 'Quick search';

  @override
  String get trayQuit => 'Comot';

  @override
  String get appearance => 'How e go look';

  @override
  String get themeSystem => 'System';

  @override
  String get themeDark => 'Dark';

  @override
  String get themeLight => 'Light';

  @override
  String get back => 'Go back';

  @override
  String get aiSectionTitle => 'AI analysis';

  @override
  String get aiIntro =>
      'Full gist wey AI write: summary of di latest news, di business, where e strong, di risk dem and hidden tins, how dem value am, how price fit move wit different scenarios from mind, society, technical and big economy side, plus wetin you suppose dey watch.';

  @override
  String get aiGenerate => 'Make analysis';

  @override
  String get aiRegenerate => 'Make am again';

  @override
  String get aiGenerating =>
      'We dey prepare di analysis… e fit take one or two minutes.';

  @override
  String get aiSources => 'Sources';

  @override
  String aiGeneratedAt(String time) {
    return 'Dem make am $time';
  }

  @override
  String get aiDisclaimer =>
      'Na AI make dis analysis from public data and latest news. E fit get mistake or don old, and e no be investment advice.';

  @override
  String get errAiNotConfigured =>
      'AI analysis never dey set (no ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'We no fit reach di AI service. Check your internet connection.';

  @override
  String errAiHttp(String status) {
    return 'Di AI service return error (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Di AI service no gree analyse dis stock.';

  @override
  String get errAiBadResponse => 'Di AI service give answer wey we no expect.';

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
      'Price history no dey from di data source wey we dey use now.';

  @override
  String get sectionStatements => 'Financial statements (every year)';

  @override
  String get labelFiscalYear => 'Financial year';

  @override
  String get labelRevenue => 'Total sales';

  @override
  String get labelNetIncome => 'Net profit';

  @override
  String get labelTotalAssets => 'Total assets';

  @override
  String get labelTotalLiabilities => 'Total wetin dem owe';

  @override
  String get labelEquity => 'Equity for shareholders';

  @override
  String get labelOperatingCashFlow => 'Cash from operations';

  @override
  String get statementsUnavailable =>
      'Financial statements no dey for dis stock.';

  @override
  String get launchAtLogin => 'Start am when you log in';

  @override
  String get hotkeyLabel => 'Shortcut wey work everywhere';

  @override
  String get hotkeyRecordHint =>
      'Click here, then press di new key combination';

  @override
  String get hotkeyReset => 'Go back to default';

  @override
  String get pasteImage => 'Paste picture from clipboard';

  @override
  String get errClipboardNoImage => 'No picture dey for clipboard.';

  @override
  String get favorites => 'Favourites';

  @override
  String get addToFavorites => 'Add am to favourites';

  @override
  String get removeFromFavorites => 'Comot am from favourites';

  @override
  String get noFavorites =>
      'No favourite yet. Tap di star for any stock to add am.';

  @override
  String get displayCurrency => 'Currency to show';

  @override
  String get displayCurrencyNone => 'Only di stock own currency';

  @override
  String labelConverted(String currency) {
    return '≈ for $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Exchange rate: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Updates';

  @override
  String currentVersion(String version) {
    return 'Version $version';
  }

  @override
  String get autoUpdate => 'Install updates by demsef';

  @override
  String get checkForUpdates => 'Check for update';

  @override
  String get updateChecking => 'We dey check for update…';

  @override
  String get updateUpToDate => 'You dey use di latest version.';

  @override
  String updateAvailable(String version) {
    return 'Version $version don land.';
  }

  @override
  String get updateDownloading => 'Di update dey download for background…';

  @override
  String get updateDownloaded => 'Di update don ready. Restart make e install.';

  @override
  String get updateNow => 'Update';

  @override
  String get restartNow => 'Restart';

  @override
  String get updatesViaStore =>
      'Updates go dey come by demsef through di app store.';

  @override
  String get updateCheckFailed => 'We no fit check for update.';

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
  String get planNone => 'No plan dey active';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count analysis every month';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Free trial for $days days wit $count analysis';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days days remain for your trial',
      one: '$days day remain for your trial',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Your free trial don finish. Choose plan make you continue to dey analyse.';

  @override
  String analysesRemaining(int remaining, int total) {
    return '$remaining out of $total analysis remain for dis period';
  }

  @override
  String extraCredits(int count) {
    return '$count extra analysis';
  }

  @override
  String renewsOn(String date) {
    return 'E go renew $date';
  }

  @override
  String get choosePlan => 'Choose plan';

  @override
  String get currentPlan => 'Your plan now';

  @override
  String get subscribe => 'Subscribe';

  @override
  String get perMonth => '/ month';

  @override
  String get extraPacksTitle => 'You need more? Buy extra analysis';

  @override
  String get extraPacksHint =>
      'Extra analysis no dey expire, and we go use dem afta your monthly allowance finish.';

  @override
  String get buy => 'Buy';

  @override
  String get restorePurchases => 'Bring back wetin you buy';

  @override
  String get manageSubscription => 'Manage your subscription';

  @override
  String get purchaseSuccess => 'Thank you! Wetin you buy don dey work.';

  @override
  String get purchasePending => 'Di payment dey wait…';

  @override
  String get purchaseFailed => 'Di purchase no go through.';

  @override
  String get purchaseCanceled => 'Purchase don cancel.';

  @override
  String get billingUnavailable =>
      'You no fit buy anytin for dis platform yet. Subscribe for your phone or Mac; your plan go work for every device.';

  @override
  String get errQuotaExceeded =>
      'You no get any analysis remain for dis period. Upgrade your plan or buy extra analysis.';

  @override
  String get errTrialExpired =>
      'Your free trial don finish. Choose plan make you continue.';

  @override
  String get errNoPlan => 'You need active plan for AI analysis.';

  @override
  String get viewPlans => 'See plans';

  @override
  String get usageTitle => 'How you don use am';

  @override
  String get demoPurchaseNote =>
      'Demo billing: na pretend purchase for dis platform.';

  @override
  String get mostPopular => 'Pipo like am pass';

  @override
  String get bestValue => 'E worth am pass';

  @override
  String get planFeaturesCommon =>
      'Photo recognition, live data, charts, favourites and all 120 languages dey inside every plan. Di allowance na for AI analysis.';

  @override
  String get searchLanguages => 'Search language…';

  @override
  String get noLanguageMatch => 'No language match.';

  @override
  String get aiSettings => 'AI analysis';

  @override
  String get aiLength => 'How long';

  @override
  String get aiDepthBrief => 'Short';

  @override
  String get aiDepthStandard => 'Standard';

  @override
  String get aiDepthDeep => 'Deep';

  @override
  String get aiDepthBriefDesc => 'Di main tins, sharp sharp.';

  @override
  String get aiDepthStandardDesc => 'Full report wey get every section.';

  @override
  String get aiDepthDeepDesc =>
      'More web search, comparison wit similar companies and more details.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Around $min–$max words';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'e go use $count analysis',
      one: 'e go use $count analysis',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Your level';

  @override
  String get aiReaderBeginner => 'Beginner';

  @override
  String get aiReaderExperienced => 'Sabi pesin';

  @override
  String get aiReaderBeginnerDesc =>
      'Simple language; we go explain every technical word.';

  @override
  String get aiReaderExperiencedDesc =>
      'Text wey pack well wit normal finance words.';

  @override
  String get aiCounterArgument => 'Di strongest argument against am';

  @override
  String get aiCounterArgumentDesc =>
      'Di summary go always end wit di best case against im own conclusion.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Up to $count web search for each analysis wit your plan',
      one: 'Up to $count web search for each analysis wit your plan',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Standard length by plan: Normal $normal, Pro $pro, Max $max, Ultra $ultra. Short dey use 2 less, Deep dey use 2 more.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'up to $count web search',
      one: 'up to $count web search',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count web search for each analysis',
      one: '$count web search for each analysis',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Dis length need $needed analysis, but na only $left remain. Choose shorter length for Settings or get more analysis.';
  }

  @override
  String get outlookMarketMood => 'How market dey feel';

  @override
  String get moodVeryPessimistic => 'Fear plenty';

  @override
  String get moodPessimistic => 'Fear dey';

  @override
  String get moodNeutral => 'E dey middle';

  @override
  String get moodOptimistic => 'Hope dey';

  @override
  String get moodVeryOptimistic => 'Hope plenty';

  @override
  String get scenarioBull => 'If price go up';

  @override
  String get scenarioBase => 'Normal case';

  @override
  String get scenarioBear => 'If price go down';

  @override
  String outlookCurrentPrice(String price) {
    return 'Price now: $price';
  }

  @override
  String get outlookKeyLevels => 'Important levels';

  @override
  String get keyLevelSupport => 'Support';

  @override
  String get keyLevelResistance => 'Resistance';

  @override
  String get keyLevelAnchor => 'Anchor';

  @override
  String get upcomingEvents => 'Wetin dey come';

  @override
  String get outlookChartNote =>
      'Na rough range dem be; di chances na just estimate, no be prediction.';

  @override
  String get accountTitle => 'Account';

  @override
  String get signIn => 'Sign in';

  @override
  String get signOut => 'Sign out';

  @override
  String get notSignedIn => 'You never sign in';

  @override
  String get accountBenefit =>
      'Sign in make your subscription work for all your devices.';

  @override
  String get accountSyncedNote =>
      'Your subscription and di analysis wey remain na di same for every device.';

  @override
  String get signInTitle => 'Sign in for WhatStock';

  @override
  String get emailLabel => 'Your email address';

  @override
  String get continueWithEmail => 'Continue wit email';

  @override
  String codeSentTo(String email) {
    return 'We don send 6-digit code to $email. E go work for 10 minutes.';
  }

  @override
  String get codeLabel => 'Sign-in code';

  @override
  String get resendCode => 'Send new code';

  @override
  String get useDifferentEmail => 'Use anoda email';

  @override
  String get errInvalidCode => 'Di code no correct or e don expire.';

  @override
  String get errInvalidEmail => 'Abeg put correct email address.';

  @override
  String get errSignInFailed =>
      'Sign-in no work. Check your connection and try again.';

  @override
  String get checkoutWaiting =>
      'Finish di payment for your browser. Di app go update by imsef when e don finish.';

  @override
  String get paymentViaStripe =>
      'Safe payment for your browser through Stripe. Cancel anytime.';

  @override
  String get paymentViaStore =>
      'Dem go charge you through your App Store or Google Play account. Cancel anytime for your store settings.';

  @override
  String get keySpace => 'Space';

  @override
  String get doubleOptionTitle => 'Press Option two times';

  @override
  String get doubleOptionSubtitle =>
      'If you press Option key two times quick quick, e go still call WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Make e work for oda apps too, allow WhatStock for System Settings → Privacy & Security → Input Monitoring, then open di app again.';

  @override
  String get openSystemSettings => 'Open System Settings';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Press $shortcut or press Option two times anywhere to call WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Wetin fit happen pass';

  @override
  String get longTermToday => 'Today';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years years',
      one: '$years year',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range every year';
  }

  @override
  String longTermLikely(String price) {
    return 'e fit reach $price pass';
  }

  @override
  String get confidenceLow => 'We no too sure';

  @override
  String get confidenceMedium => 'We sure small';

  @override
  String get confidenceHigh => 'We sure well well';

  @override
  String get longTermNote =>
      'Long-term range dey depend on di assumptions wey we tok, and e dey wide pass as time dey go. Price no include dividend. Na rough estimate, no be prediction.';

  @override
  String get portfolio => 'Portfolio';

  @override
  String get portfolioEmpty =>
      'Notin dey here yet. Open one stock and tap “Put am for portfolio” to follow wetin you get.';

  @override
  String get portfolioLocalNote =>
      'Na only dis device e dey. We convert di totals wit ECB reference rate; price fit late.';

  @override
  String get addToPortfolio => 'Put am for portfolio';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Add $symbol';
  }

  @override
  String get portfolioQuantity => 'How many shares';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Price for each share ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Day wey you buy';

  @override
  String get portfolioAdd => 'Add';

  @override
  String get portfolioInvalidNumber => 'Put number wey pass zero.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol don enter your portfolio.';
  }

  @override
  String get portfolioTotalValue => 'Total value';

  @override
  String get portfolioToday => 'Today';

  @override
  String get portfolioGainLoss => 'Profit/loss';

  @override
  String homeDividendsThisYear(String amount) {
    return 'Dividend dis year: $amount';
  }

  @override
  String get portfolioInvested => 'Moni wey you put';

  @override
  String get portfolioAllocation => 'How e share';

  @override
  String get portfolioPositions => 'Your stocks';

  @override
  String portfolioAvgCost(String price) {
    return 'average price $price';
  }

  @override
  String get portfolioYourPosition => 'Wetin you get';

  @override
  String get portfolioPurchases => 'Wetin you buy';

  @override
  String get portfolioRemove => 'Comot';

  @override
  String get portfolioExcluded =>
      'Stocks wey no get price or exchange rate no dey inside di totals.';

  @override
  String get priceAlerts => 'Price alerts';

  @override
  String get setPriceAlert => 'Put price alert';

  @override
  String alertDialogTitle(String symbol) {
    return 'Price alert · $symbol';
  }

  @override
  String get alertKindAbove => 'Climb pass';

  @override
  String get alertKindBelow => 'Fall below';

  @override
  String get alertKindMove => 'Move well well for one day';

  @override
  String alertTargetPrice(String currency) {
    return 'Price ($currency)';
  }

  @override
  String get alertMovePercent => 'Move for one day (%)';

  @override
  String get alertAlreadyMet => 'Di price don already pass dis level.';

  @override
  String get alertSave => 'Put alert';

  @override
  String alertCreated(String symbol) {
    return 'Alert don set for $symbol.';
  }

  @override
  String get alertsEmpty =>
      'No price alert yet. Open one stock and tap di bell to set one.';

  @override
  String get alertsNote =>
      'We dey check alerts every 5 minutes as WhatStock dey run. For computer, e go dey run for menu bar or tray; for phone, for now alerts go come only when di app dey open.';

  @override
  String alertDescAbove(String price) {
    return 'Pass $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Under $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Move for one day ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'E ring $date for $price';
  }

  @override
  String get alertRearm => 'Set am again';

  @override
  String get alertDelete => 'Delete';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol don climb pass $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol don fall below $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol don move $percent today';
  }

  @override
  String alertHitBody(String price) {
    return 'Price now: $price';
  }

  @override
  String get alertOpen => 'Open';

  @override
  String get keepInTrayTitle => 'Make e dey run when you close di window';

  @override
  String get keepInTraySubtitle =>
      'WhatStock go stay for menu bar or tray, so di hotkey and price alerts go still dey work.';

  @override
  String get termsOfUse => 'Terms of Use';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get subscriptionLegal =>
      'Subscription go dey renew by imsef every month until you cancel am. If you subscribe, you don accept di Terms of Use and di Privacy Policy.';

  @override
  String get deleteAccount => 'Delete di account';

  @override
  String get deleteAccountTitle => 'You wan delete your account?';

  @override
  String get deleteAccountBody =>
      'Your account and evritin wey dey our server (email, allowance, usage) go delete forever, and analysis wey you never use go loss. Subscription wey you pay for browser go cancel sharp sharp; App Store or Google Play subscription, you must cancel am for di store settings.';

  @override
  String get deleteLocalData =>
      'Delete di data for dis device too (portfolio, alerts, favourites, history, saved analysis)';

  @override
  String get deleteAccountConfirm => 'Delete am forever';

  @override
  String get accountDeleted => 'Your account don delete.';

  @override
  String get errDeleteAccount =>
      'We no fit delete di account. Check your connection and try again.';

  @override
  String get aiTrialBriefNote =>
      'Trial analysis dey short and na faster AI model dey make am. Wit plan, you go get our best AI, more web search, plus Standard and Deep length.';

  @override
  String get billingMonthly => 'Every month';

  @override
  String get billingYearly => 'Every year';

  @override
  String get yearlyDiscount => '2 month free';

  @override
  String get perYear => '/ year';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price every month';
  }

  @override
  String get subscriptionLegalYearly =>
      'Yearly subscription go dey renew by imsef every year until you cancel am. If you subscribe, you don accept di Terms of Use and di Privacy Policy.';

  @override
  String get myAnalyses => 'My analysis dem';

  @override
  String get navAlerts => 'Alerts';

  @override
  String get inviteTitle => 'Private preview';

  @override
  String get inviteBody =>
      'For now, na only people wey dem invite fit use WhatStock. Put di invite code wey you collect.';

  @override
  String get inviteCodeLabel => 'Invite code';

  @override
  String get inviteContinue => 'Continue';

  @override
  String get inviteInvalid => 'Dis invite code no correct.';

  @override
  String get inviteExpired =>
      'Dis invite don expire. Ask di person wey invite you make e give you new code.';

  @override
  String get inviteDeviceLimit =>
      'Dem don already use dis invite code for di maximum number of devices.';

  @override
  String get previewConfidential => 'Secret preview';

  @override
  String get errPreviewDailyLimit =>
      'Today analysis limit for dis preview don finish. Try again tomorrow.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hours ago',
      one: '$count hour ago',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days ago',
      one: '$count day ago',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'You wan update dis analysis?';

  @override
  String staleBody(String age) {
    return 'Dem make am $age. Price, news and result fit don change since dat time.';
  }

  @override
  String get staleKeep => 'Show di old one';

  @override
  String get staleRefresh => 'Make new one';

  @override
  String seeAll(int count) {
    return 'See all ($count)';
  }

  @override
  String get searchAnalyses => 'Search your analysis dem';

  @override
  String get deleteAnalysis => 'Delete';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol analysis don delete';
  }

  @override
  String get keyLevelAlertHint =>
      'Tap one level make you get alert when di price reach am.';

  @override
  String get shareAnalysisTitle => 'Share analysis';

  @override
  String get shareAsImage => 'Share am as picture';

  @override
  String get shareAsText => 'Share am as text';

  @override
  String get shareCardFooter => 'Na WhatStock make am';

  @override
  String get shareCardDisclaimer => 'AI analysis · e no be investment advice';

  @override
  String get referralTitle => 'Invite your padi dem';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count extra analysis',
      one: '$count extra analysis',
    );
    return 'Share your code. Your padi go collect $_temp0 sharp sharp, and you go collect the same one after dem first analysis.';
  }

  @override
  String get referralYourCode => 'Your code';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Who you invite: $invited · Reward: $rewarded';
  }

  @override
  String get referralHaveCode => 'You get code from your padi?';

  @override
  String get referralRedeem => 'Use am';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'We don add $count extra analysis. Welcome!',
      one: 'We don add $count extra analysis. Welcome!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Dis code no dey. Check am well and try again.';

  @override
  String get referralErrOwn => 'You no fit use your own code.';

  @override
  String get referralErrAlready => 'You don already use one padi code before.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count extra analysis',
      one: '$count extra analysis',
    );
    return 'I dey use WhatStock analyse stocks: snap one stock and the AI go explain am. With my code $code you go get $_temp0.';
  }

  @override
  String get referralCopied => 'Code don copy';

  @override
  String get onboardTitle1 => 'Snap stock picture';

  @override
  String get onboardBody1 =>
      'Broker screen, newspaper or company logo don do: WhatStock go sabi di stock and show you im price, chart and di main figures.';

  @override
  String get onboardTitle2 => 'Understand am for few minutes';

  @override
  String get onboardBody2 =>
      'Di AI analysis go explain wetin dey move di stock, di risks, how much e worth and three ways wey di price fit go, with sources and for your own language.';

  @override
  String get onboardTitle3 => 'No miss anything';

  @override
  String get onboardBody3 =>
      'Favourites, your portfolio and price alerts go dey tell you wetin dey happen. Your analyses go stay for your device, ready make you open dem again.';

  @override
  String get onboardNext => 'Next';

  @override
  String get onboardStart => 'Make we start';

  @override
  String get onboardSkip => 'Skip am';

  @override
  String changesTitle(String date) {
    return 'Since di last analysis ($date)';
  }

  @override
  String get changesPrice => 'Price';

  @override
  String get changesNoMajor => 'Notin big don change for di outlook.';

  @override
  String get changesPreviousSummary => 'Last summary';

  @override
  String get telemetryTitle => 'Help us make WhatStock better';

  @override
  String get telemetryBody =>
      'Share anonymous usage stats and crash reports: which features people dey use and wetin spoil. We no go ever share your stocks, analysis or personal data. You fit change am anytime for Settings.';

  @override
  String get telemetryAllow => 'Allow am';

  @override
  String get telemetryDecline => 'No, thank you';

  @override
  String get telemetrySetting => 'Anonymous stats and crash reports';

  @override
  String get telemetrySettingHint =>
      'How often people dey use features and error reports, without personal data or wetin you search and analyse.';

  @override
  String get askButton => 'Ask about dis analysis';

  @override
  String askTitle(String symbol) {
    return 'Questions about $symbol';
  }

  @override
  String get askIntro =>
      'Ask anytin about di analysis: wetin one risk mean, wetin fit change how tins go be, how dem take calculate one number. Di answers base on dis analysis, and dem no be investment advice.';

  @override
  String get askHint => 'Ask question…';

  @override
  String get askSend => 'Send';

  @override
  String get askThinking => 'E dey tink…';

  @override
  String get askSuggest1 => 'Wetin be di biggest risk?';

  @override
  String get askSuggest2 => 'Wetin fit change how tins go be?';

  @override
  String get askSuggest3 => 'Explain am make e simple';

  @override
  String get askMaxReached =>
      'Dat one na di last question for dis analysis. Make new analysis if you wan ask more.';

  @override
  String get errAskLimit =>
      'You don reach today limit for questions. Try again tomorrow.';

  @override
  String get eventTomorrow => 'Tumoro';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'e remain $days days',
      one: 'e remain $days day',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Quarter result';

  @override
  String get eventBeforeOpen => 'before market open';

  @override
  String get eventAfterClose => 'after market close';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS wey dem expect: $value';
  }

  @override
  String get eventFromAnalysis => 'From your analysis';

  @override
  String get eventDividend => 'Dividend wey we expect';

  @override
  String get eventDividendEstimate => 'We guess am from di payments you record';

  @override
  String get eventsHint =>
      'Result dates for your favourites and portfolio stocks for the next 90 days, plus the events wey get date wey your analysis dem flag, and the dividend wey we expect from di payments you record.';

  @override
  String get eventsEmpty =>
      'No event wey get date for the next 90 days. Add favourites or portfolio stocks make you see their result dates here; dividend wey you record go show di next payment wey we expect.';

  @override
  String get compareTitle => 'Compare';

  @override
  String get compareAdd => 'Add one stock';

  @override
  String get compareRemove => 'Comot am';

  @override
  String get compareTickerHint => 'Ticker, like MSFT';

  @override
  String get compareHint =>
      'Di main numbers dey side by side; di best value for each row dey highlighted. Di amounts dey for each stock own currency.';

  @override
  String get compareNoAnalysis => 'No analysis yet';

  @override
  String get portfolioDividends => 'Dividend every year';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent yield';
  }

  @override
  String get portfolioDividendNote =>
      'Di dividend wey we expect every year na from di dividend wey dem pay for di last 12 months; we no fit promise future payment.';

  @override
  String positionDividend(String amount) {
    return 'Dividend: $amount every year';
  }

  @override
  String get chartAvgCost => 'Your average';

  @override
  String get chartAlertLevel => 'Alert';

  @override
  String get marketsToday => 'Market today';

  @override
  String get notesTitle => 'My notes';

  @override
  String get notesHint =>
      'Why you buy am, wetin you dey watch, wetin go make you sell am?';

  @override
  String get notesInfo =>
      'Na only dis device e dey. Di AI analysis dey consider your notes.';

  @override
  String notesSaved(String date) {
    return 'E don save $date';
  }

  @override
  String get peersTitle => 'Companies wey be like am';

  @override
  String get portfolioExport => 'Export am as CSV';

  @override
  String get portfolioImport => 'Import from CSV';

  @override
  String get portfolioImportHint =>
      'Paste one tin wey you buy for each line: ticker, quantity, price, currency, date (YYYY-MM-DD). You fit use comma, semicolon or tab separate di columns; di header line no dey compulsory.';

  @override
  String get portfolioImportButton => 'Import';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'We don add $count tins wey you buy',
      one: 'We don add $count tin wey you buy',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'We skip $count lines',
      one: 'We skip $count line',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Portfolio, favourites, price alerts and notes dey sync for all your devices.';

  @override
  String syncLast(String time) {
    return 'Last sync $time';
  }

  @override
  String get syncNow => 'Sync now';

  @override
  String get syncFailed => 'Sync no work. E go try again by imsef.';

  @override
  String get alertEmailTitle => 'E-mail wen alert don trigger';

  @override
  String get alertEmailOn =>
      'We dey check your alerts every few minutes and we go e-mail you, even wen di app close.';

  @override
  String get alertEmailSignIn =>
      'Sign in with your e-mail for Settings make you dey get alerts for e-mail, even wen di app close.';

  @override
  String get portfolioHistory => 'Value over time';

  @override
  String get portfolioReviewTitle => 'AI portfolio check';

  @override
  String get portfolioReviewIntro =>
      'Di AI go look your whole portfolio: how your money gather for one place, how sector and currency fit affect am, risk wey your stocks share, and dividend. E go use 1 analysis.';

  @override
  String get portfolioReviewButton => 'Check my portfolio';

  @override
  String get portfolioReviewAgain => 'Check am again';

  @override
  String get portfolioReviewWorking => 'We dey check your portfolio…';

  @override
  String get digestTitle => 'Weekly summary for email';

  @override
  String get digestHint =>
      'Every Monday: how your favourites and portfolio waka last week, and when their next results go come out.';

  @override
  String get benchmarkTitle => 'Compare am with S&P 500';

  @override
  String get benchmarkTitleIndex => 'Compare am with one index';

  @override
  String get benchmarkHintIndex =>
      'Like say everytin wey you buy enter fund wey dey follow di index wey you choose, dat same day. Dividend no dey inside; wetin e gain before no mean say e go gain like dat for future.';

  @override
  String get benchmarkYours => 'Wetin you buy';

  @override
  String benchmarkAhead(String points) {
    return '$points percentage points pass di index';
  }

  @override
  String benchmarkBehind(String points) {
    return '$points percentage points behind di index';
  }

  @override
  String get portfolioSell => 'Sell';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Sell $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Price wey you sell each share ($currency)';
  }

  @override
  String get portfolioSellDate => 'Day wey you sell';

  @override
  String get portfolioSellAll => 'All';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'You get $quantity';
  }

  @override
  String get portfolioSold => 'Sold';

  @override
  String get portfolioRealized => 'Wetin you make';

  @override
  String get portfolioClosed => 'Stocks wey you don sell';

  @override
  String get portfolioClosedNote => 'You don sell all the shares';

  @override
  String get portfolioTransactions => 'Buy and sell';

  @override
  String get portfolioRealizedByYear => 'Wetin you make every year';

  @override
  String get portfolioRealizedHint =>
      'We dey match wetin you sell with the oldest ones wey you buy first (FIFO), and we change am with today exchange rate. For your tax return, use the statement from your broker.';

  @override
  String staleNewResults(String symbol, String date) {
    return '$symbol don release new quarterly results since dis analysis ($date).';
  }

  @override
  String get newResultsBadge => 'New results';

  @override
  String get portfolioImportBrokers =>
      'E dey sabi exports from Revolut, Trading 212 and Interactive Brokers too, plus di sales; e dey skip dividend and deposit.';

  @override
  String get portfolioImportFile => 'Choose file';

  @override
  String offlineBanner(String time) {
    return 'No connection – we dey show di data wey we save last ($time).';
  }

  @override
  String get glossMarketCap =>
      'How much di whole company worth for stock market: share price × number of shares.';

  @override
  String get glossSharesOutstanding =>
      'How many shares di company don give out. If e increase, each share go get smaller piece; buyback dey reduce am.';

  @override
  String get glossPeTrailing =>
      'Price ÷ profit for each share for di last 12 months: how many years of di current profit you dey pay for. Lower na cheaper, but companies wey dey grow fast dey usually get high P/E.';

  @override
  String get glossPeForward =>
      'E be like P/E, but e dey use di profit wey analysts expect for di next 12 months. If e low pass di P/E (last 12 months), dem expect say profit go grow.';

  @override
  String get glossPb =>
      'Price ÷ book value (wetin company get minus debt) for each share. Around 1 mean say market dey value di company like wetin e get for paper.';

  @override
  String get glossPs =>
      'Market value ÷ yearly sales. E good for companies wey never get plenty profit or no get any; compare am inside di same industry.';

  @override
  String get glossEvToFcf =>
      'Company value plus debt (EV) ÷ di cash wey e make for one year after investment. Lower mean say you dey get more cash for di price.';

  @override
  String get glossPeg =>
      'P/E ÷ di yearly profit growth wey dem expect (%). Around 1 dey usually look fair; e dey check P/E against growth.';

  @override
  String get glossEps =>
      'Profit for each share for di last 12 months. EPS wey dey rise every year na one of di strongest sign of healthy company.';

  @override
  String get glossBeta =>
      'How di stock dey move with di market: 1 = like di market, 1.5 = about 50% bigger up and down, under 1 = e calm pass.';

  @override
  String get glossRevenueTtm =>
      'All di sales for di last 12 months, before any cost.';

  @override
  String get glossNetIncomeTtm =>
      'Di profit wey remain after all cost, interest and tax for di last 12 months.';

  @override
  String get glossGrossMargin =>
      'Di part of sales wey remain after di direct cost of di products. High margin often mean say di company fit set im own price.';

  @override
  String get glossOperatingMargin =>
      'Di part of sales wey remain after di cost to run di business (salary, rent, marketing), before interest and tax.';

  @override
  String get glossNetMargin =>
      'Di part of sales wey turn final profit. 20% mean say 20 out of every 100 for sales na profit.';

  @override
  String get glossRoe =>
      'Profit on equity (ROE): yearly profit ÷ di owners\' money. E show how well management dey use shareholders\' money; above about 15% strong well well.';

  @override
  String get glossRoa =>
      'Profit on assets (ROA): yearly profit ÷ everything wey di company get. Compare am inside di same industry.';

  @override
  String get glossDebtToEquity =>
      'Debt ÷ di owners\' money. Higher mean more borrowed money: more risk when interest rate rise or business slow down.';

  @override
  String get glossCurrentRatio =>
      'Short-term assets ÷ bills wey dem must pay inside one year. Above 1 mean say di company fit pay im near-term bills.';

  @override
  String get glossRevenueGrowth =>
      'How much sales grow compared to one year before.';

  @override
  String get glossEpsGrowth =>
      'How much profit for each share grow compared to one year before.';

  @override
  String get glossDividendYield =>
      'Yearly dividend ÷ share price: di cash wey you go collect every year, as percentage of wetin you pay.';

  @override
  String get glossDividendPerShare =>
      'Di dividend wey dem pay for one share for di last one year.';

  @override
  String get glossPayoutRatio =>
      'Di part of profit wey dem share as dividend. Above 100%, di company dey pay pass wetin e dey make, and dat one no dey last.';

  @override
  String get portfolioBeta => 'Portfolio beta';

  @override
  String get glossPortfolioBeta =>
      'Di beta of your stocks, weighed by how much each one worth: about how many percent your stocks dey move when di market move 1%. If e pass 1, dem dey swing pass di market; if e dey under 1, dem no dey swing reach. Cash no dey inside.';

  @override
  String get portfolioTop3 => 'Top 3 stocks';

  @override
  String get glossPortfolioTop3 =>
      'How much of your stocks\' value dey inside your three biggest stocks. Di higher e be, di more bad news for one company fit damage your whole portfolio.';

  @override
  String get glossDividendGrowth5y =>
      'How much di dividend for each share grow every year on average for di last five years. If e dey grow steady, e usually mean say di company trust di cash wey dey enter; if dem cut am, na warning sign most times.';

  @override
  String get glossYieldOnCost =>
      'Di dividend wey you collect for di last 12 months divided by wetin you pay for di shares wey you still hold. E no be like dividend yield: dem measure am against di price wey you buy am, no be today price.';

  @override
  String get glossTitle => 'Wetin e mean?';

  @override
  String get watchNewsTitle => 'Tori for your stocks';

  @override
  String get undo => 'Undo';

  @override
  String get watchSort => 'Arrange';

  @override
  String get watchSortOwn => 'My own order';

  @override
  String get watchSortGainers => 'Wetin rise pass first';

  @override
  String get watchSortLosers => 'Wetin fall pass first';

  @override
  String get watchSortName => 'By ticker (A–Z)';

  @override
  String get watchHint =>
      'Drag di handle to arrange am again, swipe go left to comot am. Di line dey show di last 30 days.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: your analysis don ready.';
  }

  @override
  String alertFromCost(String price) {
    return 'From your average buy price ($price):';
  }

  @override
  String get briefTitle => 'Today with your stocks';

  @override
  String get briefButton => 'Summarize today';

  @override
  String get briefHint =>
      'Short AI summary of how your portfolio and favourites take move today and wetin the latest news dey talk about dem. E no go use any analysis.';

  @override
  String get briefRefresh => 'Update';

  @override
  String get sectionEarnings => 'Quarter result';

  @override
  String earningsNext(String date) {
    return 'Next report: $date';
  }

  @override
  String get earningsExpected => 'EPS wey dem expect';

  @override
  String get earningsReported => 'EPS wey company report';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Reach or pass di EPS wey dem expect for $beats out of di last $total quarters',
      one: 'Reach or pass di EPS wey dem expect for $beats out of 1 quarter',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol go release quarter result tumoro';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol go release quarter result today';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return 'We dey expect $symbol dividend today';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'E go reach about $amount. Record am for your portfolio once e land.';
  }

  @override
  String get dividendRemindersTitle => 'Dividend reminder';

  @override
  String get dividendRemindersSubtitle =>
      'Notification for di day wey we expect dividend, based on how your recorded payments dey come, so you fit record am';

  @override
  String get earningsRemindersTitle => 'Result reminder';

  @override
  String get earningsRemindersSubtitle =>
      'Notification one day before your favourites or portfolio stocks release quarter result';

  @override
  String addAllToFavorites(int count) {
    return 'Add all of dem to favourites ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Import from screenshot';

  @override
  String get holdingsReading => 'We dey read your positions…';

  @override
  String get holdingsReviewTitle => 'Positions wey we find';

  @override
  String get holdingsReviewHint =>
      'Check di numbers before you add dem. Di price na your average buying price for each share, no be today price.';

  @override
  String get holdingsNoPrice => 'No average buying price for di picture';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Add $count positions',
      one: 'Add $count position',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'We no see any stock position for dis picture. Try screenshot of di positions or holdings page for your broker app.';

  @override
  String get week52Range => 'Range for 52 weeks';

  @override
  String week52BelowHigh(String percent) {
    return '$percent under di highest for 52 weeks';
  }

  @override
  String get week52AtHigh => 'E dey di highest for 52 weeks';

  @override
  String get alertKindTrailing => 'Fall from top';

  @override
  String get alertTrailingPercent => 'Fall from the top (%)';

  @override
  String get alertTrailingHint =>
      'E dey follow price go up: e go alert you when price fall reach dis much from the highest point since you set am.';

  @override
  String alertDescTrailing(String percent) {
    return '$percent fall from top';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'top so far: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol don fall $percent from top';
  }

  @override
  String get sectionInsiders => 'Insider trade';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count buy',
      one: '1 buy',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sell',
      one: '1 sell',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Net: $shares shares';
  }

  @override
  String get insiderBuy => 'Don buy';

  @override
  String get insiderSell => 'Don sell';

  @override
  String get insiderHint =>
      'Wetin oga dem and directors buy and sell for open market for di last 90 days (SEC Form 4). Option exercise and share award no dey inside.';

  @override
  String get insiderNone =>
      'No insider buy or sell for open market for di last 90 days.';

  @override
  String get analystTrend => 'How dia view take change, month by month';

  @override
  String get watchListAll => 'All';

  @override
  String get watchListNew => 'New list';

  @override
  String get watchListName => 'List name';

  @override
  String get watchListRename => 'Change list name';

  @override
  String get watchListDelete => 'Delete list';

  @override
  String get watchListAddTo => 'Add am to list';

  @override
  String get watchListEmpty =>
      'No stock dey dis list yet. Tap di list button wey dey near any stock to add am.';

  @override
  String get portfolioAskTitle => 'Questions about your portfolio';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'Backup';

  @override
  String get backupSave => 'Save backup';

  @override
  String get backupSaveHint =>
      'Your favourites, lists, portfolio, alerts and notes for one file.';

  @override
  String get backupRestore => 'Restore from backup';

  @override
  String get backupRestoreHint =>
      'E go add wetin dey di file; nothing wey you get now go delete.';

  @override
  String get backupRestored => 'Backup don restore.';

  @override
  String get backupInvalid => 'Dis file no be WhatStock backup.';

  @override
  String get allocationPositions => 'Stocks';

  @override
  String get allocationSectors => 'Sectors';

  @override
  String get allocationCurrencies => 'Currencies';

  @override
  String get allocationAccounts => 'Accounts';

  @override
  String get compareReturn1y => '1-year return';

  @override
  String get compareFromHigh => 'From di highest for 52 weeks';

  @override
  String get briefAutoTitle => 'Daily summary every morning';

  @override
  String get briefAutoSubtitle =>
      '“Today with your stocks” go make itself after 7am as long as the app dey run; for computer, notification go tell you. E dey use your daily question limit, no be analysis.';

  @override
  String get targetsButton => 'Target share';

  @override
  String get targetsTitle => 'Target share';

  @override
  String get targetsHint =>
      'Set how much of di portfolio each stock suppose get. Leave di box empty if no target. Di app go show you wetin to buy or sell to reach am.';

  @override
  String targetsSum(String percent) {
    return 'Total: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Buy ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Sell ≈ $amount';
  }

  @override
  String get rebalanceOk => 'E don reach target';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol pass di EPS wey dem expect';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol no reach di EPS wey dem expect';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'EPS wey company report $actual, dem expect $estimate';
  }

  @override
  String get newsExplain => 'Wetin dis one mean?';

  @override
  String get watchAlertAll => 'Alert for big move for one day';

  @override
  String get watchAlertAllHint =>
      'Price alert for every stock wey dey this list: e go ring when e move reach this much for one day, up or down. Stock wey don get one before go keep im own.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'We don set $count alerts',
      one: 'We don set $count alert',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized =>
      'Export di profit wey you don collect (CSV)';

  @override
  String get portfolioAnnualReturn => 'Yearly return';

  @override
  String portfolioPerYear(String percent) {
    return '$percent every year';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Yearly return wey dey weigh your moni (XIRR): e dey check when you buy and when you sell, so moni wey you add later no go spoil am. E go show once your first buy don reach at least one year; dividend no dey inside.';

  @override
  String get eventsAddToCalendar => 'Add am to calendar (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Portfolio alert';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Notification when your whole portfolio move reach this much for one day.';

  @override
  String get portfolioMoveAlertOff => 'Off';

  @override
  String portfolioMoveUp(String percent) {
    return 'Your portfolio don go up $percent today';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Your portfolio don come down $percent today';
  }

  @override
  String get whatIfTitle => 'Wetin for happen if you don invest?';

  @override
  String get whatIfAmount => 'Amount';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount wey you invest $period ago for dey worth today';
  }

  @override
  String get whatIfNote =>
      'Na only di share price we use: dividend, charges and tax no dey inside. Wetin e gain before no mean say e go gain like dat for future.';

  @override
  String get watchShare => 'Share di list';

  @override
  String get watchImport => 'Add ticker dem';

  @override
  String get watchImportHint =>
      'Paste di tickers, separate dem with comma, space or new line – like list wey person share give you.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'We don add $count stocks',
      one: 'We don add $count stock',
      zero: 'No new stock',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Wetin big pass first';

  @override
  String get positionsSortGain => 'Wetin gain pass overall first';

  @override
  String get positionsSortToday => 'Wetin do well pass today first';

  @override
  String get chartMyBuys => 'Wetin you buy';

  @override
  String get chartMySells => 'Wetin you sell';

  @override
  String get shortcutsTitle => 'Keyboard shortcut dem';

  @override
  String usMarketOpen(String time) {
    return 'US market don open · e go close in $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'US market don close · e go open in $time';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes min';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours hr $minutes min';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days day $hours hr';
  }

  @override
  String get dividendGoalSet => 'Put monthly dividend target';

  @override
  String get dividendGoalTitle => 'Monthly dividend target';

  @override
  String get dividendGoalAmount => 'Dividend every month';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'About $amount every month for today yield: $percent of your $goal target';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'About $amount every month for today yield: you don hit your $goal target';
  }

  @override
  String get portfolioAccount => 'Account';

  @override
  String get portfolioAccountHint => 'like TBSZ 2026 (if you want)';

  @override
  String get portfolioAccountAdd => 'Put account';

  @override
  String get portfolioAccountsAll => 'All accounts';

  @override
  String get portfolioAccountNote =>
      'Na only dis account buy and sell plus dividend. Cash, targets and AI check dey show for All accounts.';

  @override
  String get portfolioNoAccount => 'No account';

  @override
  String portfolioFee(String currency) {
    return 'Charges ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Put charges';

  @override
  String portfolioFeeRow(String amount) {
    return 'Charges: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'Yearly summary';

  @override
  String get portfolioProceeds => 'Money from sales';

  @override
  String get portfolioCostBasis => 'Buying cost';

  @override
  String get portfolioFeesPaid => 'Charges wey you pay';

  @override
  String get portfolioAnnualSummaryNote =>
      'Di amounts dey for di original currency, we no change dem. Di sales money don remove di selling charges; di buying cost include di buying charges (FIFO). For your tax return, change am with di exchange rate wey your tax office want.';

  @override
  String get portfolioShare => 'Share your performance';

  @override
  String get portfolioShareHeading => 'My portfolio';

  @override
  String get portfolioTopHoldings => 'Biggest stocks';

  @override
  String get portfolioShareNote => 'Na only percentage we go share, no amount.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count stocks',
      one: '$count stock',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'E no be investment advice';

  @override
  String get contributionButton => 'Invest new moni';

  @override
  String contributionAmount(String currency) {
    return 'Amount to invest ($currency)';
  }

  @override
  String get contributionHint =>
      'Na only buy, no sell: di stocks wey fall pass under dia target go first collect di moni.';

  @override
  String contributionShares(String shares) {
    return '≈ $shares shares';
  }

  @override
  String get portfolioGoalSet => 'Put target';

  @override
  String get portfolioGoalTitle => 'Portfolio target';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent of your $amount target';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'You don hit your $amount target';
  }

  @override
  String get portfolioGoalRemove => 'Comot target';

  @override
  String get alertEdit => 'Change alert';

  @override
  String get positionOpenLots => 'Wetin you still hold (oldest first)';

  @override
  String get lotRemoved => 'Di buy or sell don delete';

  @override
  String get alertDeleted => 'Alert don delete';

  @override
  String get alertsClearTriggered => 'Clear alerts wey don ring';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'We don clear $count alerts',
      one: 'We don clear $count alert',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Main screen';

  @override
  String get allocationCountries => 'Countries';

  @override
  String get newsExplainNoteResearch =>
      'AI explanation: e dey check di facts for web, open di article and judge how di source reliable reach. E no be investment advice. E dey use your daily question limit, no be analysis.';

  @override
  String get sourceOfficial => 'Official';

  @override
  String get sourcePressRelease => 'Press release';

  @override
  String get sourceMajorNews => 'Big media';

  @override
  String get sourceOpinion => 'Opinion';

  @override
  String get earningsSummaryButton => 'Wetin dey di latest report?';

  @override
  String get earningsSummaryNote =>
      'AI summary of di company result announcement and di press talk wey e find for web. E no be investment advice. E dey use your daily question limit, no be analysis.';

  @override
  String get compareLastSurprise => 'Last quarter EPS vs wetin dem expect';

  @override
  String get compareNextReport => 'Next report';

  @override
  String get resolvingDescription => 'We dey find out which stock you mean…';

  @override
  String get instrumentTitle => 'About dis instrument';

  @override
  String get instrumentHint =>
      'No company profile dey for dis symbol – e fit be ETF, fund or depositary receipt. Ask di AI wetin e be, wetin dey inside and how much e cost.';

  @override
  String get instrumentAsk => 'Wetin be dis?';

  @override
  String get instrumentNote =>
      'AI explanation from di issuer fund page and money sites wey e find for web. E no be investment advice. E dey use your daily question limit, no be analysis.';

  @override
  String suggestAskAi(String query) {
    return 'Ask di AI: “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return '$symbols no get current price.';
  }

  @override
  String get eventsRecentResults => 'Result wey dem just report';

  @override
  String get saveToNotes => 'Save to my notes';

  @override
  String get savedToNotes => 'E don save to your notes';

  @override
  String get portfolioDividendsReceived => 'Dividend wey you collect';

  @override
  String get portfolioDividendsThisYear => 'Dis year';

  @override
  String get portfolioDividendsAllTime => 'All time';

  @override
  String get portfolioAddDividend => 'Add dividend';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Amount wey you collect ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Payment date';

  @override
  String get portfolioDividendsEmpty =>
      'No dividend dey record yet. Add dem by hand, or import your broker export – e go pick di dividend rows too.';

  @override
  String get portfolioSplit => 'Stock split';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Stock split: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'We go adjust di buy and sell wey happen before di split: we go multiply di number of shares and divide di price per share, so di cost still remain di same.';

  @override
  String get portfolioSplitRatio => 'Ratio (new : old)';

  @override
  String get portfolioSplitRatioError =>
      'Put ratio like 10:1, or 1:10 for reverse split.';

  @override
  String get portfolioSplitDate => 'Date of di split';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Stock split $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Stock split don delete';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count stock splits don add',
      one: '1 stock split don add',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dividends don add',
      one: '1 dividend don add',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Export dividends (CSV)';

  @override
  String get portfolioDividendDeleted => 'Dividend don delete';

  @override
  String get portfolioDividendsHint =>
      'Di amounts na as dem enter your account, for di currency wey dem pay; we use today rate convert di totals. For your tax return, use your broker statement.';

  @override
  String get awayTitle => 'While you no dey';

  @override
  String awaySince(String when) {
    return 'Since $when';
  }

  @override
  String get awayQuiet => 'Nothing really move.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count alerts don trigger',
      one: '1 alert don trigger',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Results wey dem report: $symbols';
  }

  @override
  String get moveWhyButton => 'Why e dey move today?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent today';
  }

  @override
  String get moveWhyNote =>
      'AI explanation from today news wey we find online; the real reason fit no dey known or fit different. E no be investment advice. E dey use your daily question allowance, no be analysis.';

  @override
  String get sectionTechnical => 'Technical picture';

  @override
  String get labelSma50 => '50-day average';

  @override
  String get labelSma200 => '200-day average';

  @override
  String get labelRsi => 'RSI (14 days)';

  @override
  String get labelVolatility30 => 'Volatility (30 days)';

  @override
  String techAbove(String percent) {
    return '$percent above';
  }

  @override
  String techBelow(String percent) {
    return '$percent below';
  }

  @override
  String get techOverbought => 'overbought';

  @override
  String get techOversold => 'oversold';

  @override
  String get techNeutral => 'neutral';

  @override
  String get techGoldenCross =>
      'Di 50-day average dey above di 200-day average – na uptrend, as di old-school reading go talk.';

  @override
  String get techDeathCross =>
      'Di 50-day average dey below di 200-day average – na downtrend, as di old-school reading go talk.';

  @override
  String get glossSma50 =>
      'Di average closing price for di last 50 trading days. If price dey above am, people dey take am as short-term strength; if e dey below, as weakness.';

  @override
  String get glossSma200 =>
      'Di average closing price for di last 200 trading days – di classic long-term trend line. Plenty investors dey take price wey dey above am as long-term uptrend.';

  @override
  String get glossRsi =>
      'Relative strength index: e compare recent gains with recent losses on 0–100 scale. Above 70 dem dey call di stock overbought (e rise too fast), below 30 oversold – but strong trend fit stay there for long time.';

  @override
  String get glossVolatility =>
      'How much di price dey swing from day to day, measured for one year: 20% mean say normal year dey move inside about ±20%. Higher volatility mean bigger moves for both sides.';

  @override
  String get techNote =>
      'We calculate am from daily closing prices. Technical signals dey talk about wetin don happen, no be wetin go happen.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$above out of $count positions dey above dia 200-day average';
  }

  @override
  String get watchSignalsTitle => 'Signals';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · oversold';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · overbought';
  }

  @override
  String get signalCrossedAbove => 'cross go up pass im 200-day average';

  @override
  String get signalCrossedBelow => 'cross go down pass im 200-day average';

  @override
  String get signalAlertsTitle => 'Technical signal notifications';

  @override
  String get signalAlertsSubtitle =>
      'Once a day, when stock wey you dey follow turn oversold or overbought (RSI), or im price cross im 200-day average.';

  @override
  String get signalAlertsNotification => 'Technical signals';

  @override
  String get glossaryPageTitle => 'Glossary';

  @override
  String get glossaryPageSubtitle =>
      'Simple explanation of every number wey di app dey show, from P/E to RSI';

  @override
  String get glossarySearchHint => 'Search di glossary';

  @override
  String get portfolioCash => 'Cash';

  @override
  String get portfolioCashTitle => 'Cash balance';

  @override
  String get portfolioCashHint =>
      'Moni wey you no still invest for your broker, by currency. E dey count for total value and how e share; e no dey count for return.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Amount ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Set cash balance';

  @override
  String get portfolioDividendsByMonth => 'By month';

  @override
  String get dividendsLegendReceived => 'Wey you collect';

  @override
  String get dividendsLegendExpected => 'Wey we expect';

  @override
  String get portfolioDividendsExpected => 'Wetin we expect next';

  @override
  String get portfolioDividendsExpectedNote =>
      'We guess am from di dates and amounts of di payments you record; companies fit change am or skip am.';

  @override
  String portfolioDividendAround(String date) {
    return 'around $date';
  }
}
