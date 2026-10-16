// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Telugu (`te`).
class AppLocalizationsTe extends AppLocalizations {
  AppLocalizationsTe([String locale = 'te']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'ఒక స్టాక్ ఫోటో తీయండి, దాని గురించి అన్నీ తెలుసుకోండి.';

  @override
  String get homeHint =>
      'షేర్ సర్టిఫికేట్, బ్రోకరేజ్ యాప్ స్క్రీన్, వార్తాపత్రిక లేదా కంపెనీ లోగో – స్టాక్‌ను గుర్తించే ఏదైనా.';

  @override
  String get takePhoto => 'ఫోటో తీయండి';

  @override
  String get chooseFromGallery => 'గ్యాలరీ నుండి ఎంచుకోండి';

  @override
  String get chooseImage => 'చిత్రాన్ని ఎంచుకోండి';

  @override
  String get enterTickerManually => 'టికర్‌ను మాన్యువల్‌గా నమోదు చేయండి';

  @override
  String get tickerInputLabel => 'టికర్ సింబల్';

  @override
  String get tickerInputHint => 'ఉదా. AAPL';

  @override
  String get lookUp => 'వెతకండి';

  @override
  String demoModeBanner(String symbols) {
    return 'డెమో మోడ్ – మార్కెట్ డేటా కీ కాన్ఫిగర్ చేయలేదు. నమూనా డేటా వీటికి అందుబాటులో ఉంది: $symbols.';
  }

  @override
  String get recognizing => 'చిత్రాన్ని విశ్లేషిస్తున్నాం…';

  @override
  String get loadingData => 'డేటా లోడ్ అవుతోంది…';

  @override
  String get noCandidatesTitle => 'స్టాక్ గుర్తించబడలేదు';

  @override
  String get noCandidatesBody =>
      'ఈ చిత్రంలో మేము స్టాక్‌ను గుర్తించలేకపోయాం. స్పష్టమైన ఫోటో ప్రయత్నించండి, లేదా టికర్‌ను మాన్యువల్‌గా నమోదు చేయండి.';

  @override
  String get whatWeSaw => 'మేము చూసినది';

  @override
  String get chooseCandidateTitle => 'మీరు ఏ స్టాక్ అన్నారు?';

  @override
  String confidencePercent(int percent) {
    return '$percent% విశ్వాసం';
  }

  @override
  String get settings => 'సెట్టింగ్‌లు';

  @override
  String get language => 'భాష';

  @override
  String get systemLanguage => 'సిస్టమ్ డిఫాల్ట్';

  @override
  String get about => 'గురించి';

  @override
  String get disclaimer =>
      'ఈ యాప్ సమాచారం మాత్రమే అందిస్తుంది, ఇది పెట్టుబడి సలహా కాదు. డేటా ఆలస్యంగా లేదా తప్పుగా ఉండవచ్చు.';

  @override
  String dataSource(String source) {
    return 'డేటా మూలం: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'గుర్తింపు: $source';
  }

  @override
  String get retry => 'మళ్లీ ప్రయత్నించండి';

  @override
  String get cancel => 'రద్దు చేయండి';

  @override
  String get ok => 'సరే';

  @override
  String get close => 'మూసివేయండి';

  @override
  String get errorGeneric => 'ఏదో తప్పు జరిగింది.';

  @override
  String get errorSectionUnavailable => 'ఈ విభాగాన్ని లోడ్ చేయలేకపోయాం.';

  @override
  String get notAvailable => 'అందుబాటులో లేదు';

  @override
  String get sectionIdentity => 'గుర్తింపు';

  @override
  String get sectionPrice => 'ధర';

  @override
  String get sectionValuation => 'వాల్యుయేషన్';

  @override
  String get sectionFinancials => 'ఆర్థిక వివరాలు';

  @override
  String get sectionDividend => 'డివిడెండ్';

  @override
  String get sectionProfile => 'కంపెనీ ప్రొఫైల్';

  @override
  String get sectionAnalysts => 'విశ్లేషకుల రేటింగ్‌లు';

  @override
  String get sectionNews => 'వార్తలు';

  @override
  String get sectionRecognition => 'గుర్తింపు వివరాలు';

  @override
  String get labelSymbol => 'టికర్';

  @override
  String get labelExchange => 'ఎక్స్ఛేంజ్';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'కరెన్సీ';

  @override
  String get labelCountry => 'దేశం';

  @override
  String get labelIndustry => 'పరిశ్రమ';

  @override
  String get labelSector => 'రంగం';

  @override
  String get labelWebsite => 'వెబ్‌సైట్';

  @override
  String get labelIpoDate => 'IPO తేదీ';

  @override
  String get labelMarketCap => 'మార్కెట్ క్యాప్';

  @override
  String get labelSharesOutstanding => 'చెలామణిలో ఉన్న షేర్లు';

  @override
  String get labelEmployees => 'ఉద్యోగులు';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'ప్రధాన కార్యాలయం';

  @override
  String get labelDescription => 'వివరణ';

  @override
  String get labelLastPrice => 'చివరి ధర';

  @override
  String get labelChange => 'మార్పు';

  @override
  String get labelOpen => 'ఓపెన్';

  @override
  String get labelDayHigh => 'రోజు గరిష్ఠం';

  @override
  String get labelDayLow => 'రోజు కనిష్ఠం';

  @override
  String get labelPreviousClose => 'మునుపటి క్లోజ్';

  @override
  String get labelWeek52High => '52-వారాల గరిష్ఠం';

  @override
  String get labelWeek52Low => '52-వారాల కనిష్ఠం';

  @override
  String get labelAverageVolume10d => 'సగటు వాల్యూమ్ (10 రోజులు)';

  @override
  String updatedAt(String time) {
    return 'అప్‌డేట్ $time';
  }

  @override
  String get labelPeTrailing => 'P/E (ట్రెయిలింగ్)';

  @override
  String get labelPeForward => 'P/E (ఫార్వర్డ్)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / ఫ్రీ క్యాష్ ఫ్లో';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'బీటా';

  @override
  String get labelRevenueTtm => 'ఆదాయం (TTM)';

  @override
  String get labelNetIncomeTtm => 'నికర లాభం (TTM)';

  @override
  String get labelGrossMargin => 'స్థూల మార్జిన్';

  @override
  String get labelOperatingMargin => 'ఆపరేటింగ్ మార్జిన్';

  @override
  String get labelNetMargin => 'నికర మార్జిన్';

  @override
  String get labelRoe => 'ఈక్విటీపై రాబడి';

  @override
  String get labelRoa => 'ఆస్తులపై రాబడి';

  @override
  String get labelDebtToEquity => 'రుణం / ఈక్విటీ';

  @override
  String get labelCurrentRatio => 'కరెంట్ రేషియో';

  @override
  String get labelRevenueGrowth => 'ఆదాయ వృద్ధి (YoY)';

  @override
  String get labelEpsGrowth => 'EPS వృద్ధి (YoY)';

  @override
  String get labelDividendYield => 'డివిడెండ్ ఈల్డ్';

  @override
  String get labelDividendPerShare => 'షేరుకు డివిడెండ్';

  @override
  String get labelPayoutRatio => 'పేఅవుట్ నిష్పత్తి';

  @override
  String get labelConsensus => 'ఏకాభిప్రాయం';

  @override
  String get ratingStrongBuy => 'స్ట్రాంగ్ బై';

  @override
  String get ratingBuy => 'బై';

  @override
  String get ratingHold => 'హోల్డ్';

  @override
  String get ratingSell => 'సెల్';

  @override
  String get ratingStrongSell => 'స్ట్రాంగ్ సెల్';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count విశ్లేషకులు',
      one: '1 విశ్లేషకుడు',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'కాలం: $period';
  }

  @override
  String get noNews => 'ఇటీవలి వార్తలు లేవు.';

  @override
  String get openArticle => 'కథనాన్ని తెరవండి';

  @override
  String get openLinkFailed => 'లింక్‌ను తెరవలేకపోయాం.';

  @override
  String get recognitionSummary => 'సారాంశం';

  @override
  String get recognitionEvidence => 'మేము ఎందుకు అలా అనుకుంటున్నాం';

  @override
  String get recognitionRawText => 'చిత్రం నుండి చదివిన టెక్స్ట్';

  @override
  String get errMissingAnthropicKey =>
      'చిత్ర గుర్తింపు కాన్ఫిగర్ చేయలేదు (ANTHROPIC_API_KEY లేదు). టికర్‌ను మాన్యువల్‌గా నమోదు చేయండి.';

  @override
  String get errRecognitionUnreachable =>
      'గుర్తింపు సేవను చేరుకోలేకపోయాం. మీ ఇంటర్నెట్ కనెక్షన్‌ను తనిఖీ చేయండి.';

  @override
  String errRecognitionHttp(String status) {
    return 'గుర్తింపు సేవ లోపాన్ని తిరిగి ఇచ్చింది (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'గుర్తింపు సేవ ఈ చిత్రాన్ని ప్రాసెస్ చేయలేకపోయింది.';

  @override
  String get errRecognitionTruncated =>
      'గుర్తింపు ప్రతిస్పందన అసంపూర్ణంగా ఉంది. దయచేసి మళ్లీ ప్రయత్నించండి.';

  @override
  String get errRecognitionBadResponse =>
      'గుర్తింపు సేవ నుండి ఊహించని ప్రతిస్పందన.';

  @override
  String get errRecognitionEmpty =>
      'గుర్తింపు సేవ ఖాళీ ప్రతిస్పందనను తిరిగి ఇచ్చింది.';

  @override
  String get errMissingFinnhubKey =>
      'మార్కెట్ డేటా కాన్ఫిగర్ చేయలేదు (FINNHUB_API_KEY లేదు).';

  @override
  String get errMarketUnreachable =>
      'మార్కెట్ డేటా సేవను చేరుకోలేకపోయాం. మీ ఇంటర్నెట్ కనెక్షన్‌ను తనిఖీ చేయండి.';

  @override
  String get errMarketRateLimited =>
      'మార్కెట్ డేటా సేవకు చాలా ఎక్కువ అభ్యర్థనలు వెళ్లాయి. దయచేసి ఒక నిమిషం వేచి ఉండండి.';

  @override
  String errMarketHttp(String status) {
    return 'మార్కెట్ డేటా సేవ లోపాన్ని తిరిగి ఇచ్చింది (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'మార్కెట్ డేటా సేవ నుండి ఊహించని ప్రతిస్పందన.';

  @override
  String errNoQuote(String symbol) {
    return '$symbol కోసం ధర డేటా కనుగొనబడలేదు.';
  }

  @override
  String errNoProfile(String symbol) {
    return '$symbol కోసం కంపెనీ ప్రొఫైల్ కనుగొనబడలేదు.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'డెమో మోడ్ $symbols మాత్రమే సపోర్ట్ చేస్తుంది. లైవ్ డేటా కోసం FINNHUB_API_KEY జోడించండి.';
  }

  @override
  String errUnknown(String detail) {
    return 'ఏదో తప్పు జరిగింది: $detail';
  }

  @override
  String get newSearch => 'కొత్త శోధన';

  @override
  String get recentSearches => 'ఇటీవలివి';

  @override
  String get noRecentSearches => 'ఇంకా ఇటీవలి శోధనలు లేవు.';

  @override
  String get clearRecent => 'ఇటీవలివి తీసివేయండి';

  @override
  String get greeting => 'ఈరోజు ఏ స్టాక్ చూద్దాం?';

  @override
  String get searchHint => 'టికర్ లేదా కంపెనీ పేరు';

  @override
  String get attachImage => 'చిత్రాన్ని జోడించండి';

  @override
  String get searchResultsTitle => 'శోధన ఫలితాలు';

  @override
  String errNoResults(String query) {
    return '“$query” కోసం స్టాక్‌లు ఏవీ కనుగొనబడలేదు.';
  }

  @override
  String get quickBarHint => 'టికర్ లేదా కంపెనీ పేరు టైప్ చేయండి…';

  @override
  String get openFullWindow => 'విండో తెరవండి';

  @override
  String hotkeyHint(String shortcut) {
    return 'ఎక్కడి నుంచైనా WhatStock ని తెరవడానికి $shortcut నొక్కండి.';
  }

  @override
  String get trayOpen => 'WhatStock తెరవండి';

  @override
  String get trayQuickSearch => 'త్వరిత శోధన';

  @override
  String get trayQuit => 'నిష్క్రమించండి';

  @override
  String get appearance => 'రూపం';

  @override
  String get themeSystem => 'సిస్టమ్';

  @override
  String get themeDark => 'డార్క్';

  @override
  String get themeLight => 'లైట్';

  @override
  String get back => 'వెనుకకు';

  @override
  String get aiSectionTitle => 'AI విశ్లేషణ';

  @override
  String get aiIntro =>
      'AI రాసిన వివరణాత్మక అవలోకనం: ఇటీవలి వార్తల సారాంశం, వ్యాపారం, బలాలు, రిస్క్‌లు మరియు దాగి ఉన్న అంశాలు, వాల్యుయేషన్, మానసిక, సామాజిక, సాంకేతిక మరియు స్థూల ఆర్థిక కోణాల నుండి సన్నివేశాలతో కూడిన ధర అంచనా మరియు గమనించవలసిన విషయాలు.';

  @override
  String get aiGenerate => 'విశ్లేషణను రూపొందించండి';

  @override
  String get aiRegenerate => 'మళ్లీ రూపొందించండి';

  @override
  String get aiGenerating =>
      'విశ్లేషణ సిద్ధమవుతోంది… దీనికి ఒకటి లేదా రెండు నిమిషాలు పట్టవచ్చు.';

  @override
  String get aiSources => 'మూలాలు';

  @override
  String aiGeneratedAt(String time) {
    return 'రూపొందించినది $time';
  }

  @override
  String get aiDisclaimer =>
      'బహిరంగ డేటా మరియు ఇటీవలి వార్తల ఆధారంగా AI రూపొందించిన విశ్లేషణ. ఇందులో తప్పులు ఉండవచ్చు లేదా ఇది పాతదై ఉండవచ్చు, ఇది పెట్టుబడి సలహా కాదు.';

  @override
  String get errAiNotConfigured =>
      'AI విశ్లేషణ కాన్ఫిగర్ చేయలేదు (ANTHROPIC_API_KEY లేదు).';

  @override
  String get errAiUnreachable =>
      'AI సేవను చేరుకోలేకపోయాం. మీ ఇంటర్నెట్ కనెక్షన్‌ను తనిఖీ చేయండి.';

  @override
  String errAiHttp(String status) {
    return 'AI సేవ లోపాన్ని తిరిగి ఇచ్చింది (HTTP $status).';
  }

  @override
  String get errAiRefused =>
      'AI సేవ ఈ స్టాక్‌ను విశ్లేషించడానికి నిరాకరించింది.';

  @override
  String get errAiBadResponse => 'AI సేవ నుండి ఊహించని ప్రతిస్పందన.';

  @override
  String get sectionChart => 'ధర చార్ట్';

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
      'ప్రస్తుత డేటా మూలం నుండి ధర చరిత్ర అందుబాటులో లేదు.';

  @override
  String get sectionStatements => 'ఆర్థిక నివేదికలు (వార్షిక)';

  @override
  String get labelFiscalYear => 'ఆర్థిక సంవత్సరం';

  @override
  String get labelRevenue => 'ఆదాయం';

  @override
  String get labelNetIncome => 'నికర లాభం';

  @override
  String get labelTotalAssets => 'మొత్తం ఆస్తులు';

  @override
  String get labelTotalLiabilities => 'మొత్తం అప్పులు';

  @override
  String get labelEquity => 'షేర్‌హోల్డర్ల ఈక్విటీ';

  @override
  String get labelOperatingCashFlow => 'ఆపరేటింగ్ క్యాష్ ఫ్లో';

  @override
  String get statementsUnavailable =>
      'ఈ స్టాక్‌కు నివేదించిన ఆర్థిక నివేదికలు అందుబాటులో లేవు.';

  @override
  String get launchAtLogin => 'లాగిన్ అయినప్పుడు ప్రారంభించండి';

  @override
  String get hotkeyLabel => 'గ్లోబల్ షార్ట్‌కట్';

  @override
  String get hotkeyRecordHint =>
      'ఇక్కడ క్లిక్ చేసి, ఆపై కొత్త కీ కాంబినేషన్‌ను నొక్కండి';

  @override
  String get hotkeyReset => 'డిఫాల్ట్‌కు రీసెట్ చేయండి';

  @override
  String get pasteImage => 'క్లిప్‌బోర్డ్ నుండి చిత్రాన్ని పేస్ట్ చేయండి';

  @override
  String get errClipboardNoImage => 'క్లిప్‌బోర్డ్‌లో చిత్రం లేదు.';

  @override
  String get favorites => 'ఇష్టమైనవి';

  @override
  String get addToFavorites => 'ఇష్టమైనవాటికి జోడించండి';

  @override
  String get removeFromFavorites => 'ఇష్టమైనవాటి నుండి తీసివేయండి';

  @override
  String get noFavorites =>
      'ఇంకా ఇష్టమైనవి ఏవీ లేవు. జోడించడానికి స్టాక్‌పై ఉన్న నక్షత్రాన్ని నొక్కండి.';

  @override
  String get displayCurrency => 'ప్రదర్శన కరెన్సీ';

  @override
  String get displayCurrencyNone => 'స్టాక్ సొంత కరెన్సీ మాత్రమే';

  @override
  String labelConverted(String currency) {
    return '≈ $currencyలో';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'రేటు: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'అప్‌డేట్‌లు';

  @override
  String currentVersion(String version) {
    return 'వెర్షన్ $version';
  }

  @override
  String get autoUpdate => 'అప్‌డేట్‌లను ఆటోమేటిక్‌గా ఇన్‌స్టాల్ చేయండి';

  @override
  String get checkForUpdates => 'అప్‌డేట్‌ల కోసం తనిఖీ చేయండి';

  @override
  String get updateChecking => 'అప్‌డేట్‌ల కోసం తనిఖీ చేస్తున్నాం…';

  @override
  String get updateUpToDate => 'మీరు తాజా వెర్షన్‌లో ఉన్నారు.';

  @override
  String updateAvailable(String version) {
    return 'వెర్షన్ $version అందుబాటులో ఉంది.';
  }

  @override
  String get updateDownloading =>
      'అప్‌డేట్ బ్యాక్‌గ్రౌండ్‌లో డౌన్‌లోడ్ అవుతోంది…';

  @override
  String get updateDownloaded =>
      'అప్‌డేట్ సిద్ధంగా ఉంది. ఇన్‌స్టాల్ చేయడానికి పునఃప్రారంభించండి.';

  @override
  String get updateNow => 'అప్‌డేట్ చేయండి';

  @override
  String get restartNow => 'పునఃప్రారంభించండి';

  @override
  String get updatesViaStore =>
      'అప్‌డేట్‌లు యాప్ స్టోర్ ద్వారా ఆటోమేటిక్‌గా వస్తాయి.';

  @override
  String get updateCheckFailed => 'అప్‌డేట్‌ల కోసం తనిఖీ చేయలేకపోయాం.';

  @override
  String get subscription => 'సబ్‌స్క్రిప్షన్';

  @override
  String get planTrial => 'ట్రయల్';

  @override
  String get planNormal => 'సాధారణ';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'యాక్టివ్ ప్లాన్ లేదు';

  @override
  String planAnalysesPerMonth(int count) {
    return 'నెలకు $count విశ్లేషణలు';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$count విశ్లేషణలతో $days రోజుల ఉచిత ట్రయల్';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'ట్రయల్‌లో $days రోజులు మిగిలాయి',
      one: 'ట్రయల్‌లో 1 రోజు మిగిలింది',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'మీ ఉచిత ట్రయల్ ముగిసింది. విశ్లేషణ కొనసాగించడానికి ఒక ప్లాన్ ఎంచుకోండి.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'ఈ కాలంలో $totalలో $remaining విశ్లేషణలు మిగిలాయి';
  }

  @override
  String extraCredits(int count) {
    return '$count అదనపు విశ్లేషణలు';
  }

  @override
  String renewsOn(String date) {
    return '$dateన పునరుద్ధరణ';
  }

  @override
  String get choosePlan => 'ప్లాన్ ఎంచుకోండి';

  @override
  String get currentPlan => 'ప్రస్తుత ప్లాన్';

  @override
  String get subscribe => 'సబ్‌స్క్రైబ్ చేయండి';

  @override
  String get perMonth => '/ నెల';

  @override
  String get extraPacksTitle => 'ఇంకా కావాలా? అదనపు విశ్లేషణలు కొనండి';

  @override
  String get extraPacksHint =>
      'అదనపు విశ్లేషణలకు గడువు ఉండదు, మీ నెలవారీ కోటా తర్వాత ఉపయోగించబడతాయి.';

  @override
  String get buy => 'కొనండి';

  @override
  String get restorePurchases => 'కొనుగోళ్లను పునరుద్ధరించండి';

  @override
  String get manageSubscription => 'సబ్‌స్క్రిప్షన్ నిర్వహించండి';

  @override
  String get purchaseSuccess => 'ధన్యవాదాలు! మీ కొనుగోలు యాక్టివ్‌గా ఉంది.';

  @override
  String get purchasePending => 'కొనుగోలు పెండింగ్‌లో ఉంది…';

  @override
  String get purchaseFailed => 'కొనుగోలు పూర్తి చేయలేకపోయాం.';

  @override
  String get purchaseCanceled => 'కొనుగోలు రద్దు చేయబడింది.';

  @override
  String get billingUnavailable =>
      'ఈ ప్లాట్‌ఫారమ్‌లో కొనుగోళ్లు ఇంకా అందుబాటులో లేవు. మీ ఫోన్ లేదా Mac లో సబ్‌స్క్రైబ్ చేయండి; మీ ప్లాన్ ప్రతి పరికరంలో పని చేస్తుంది.';

  @override
  String get errQuotaExceeded =>
      'ఈ కాలానికి మీకు విశ్లేషణలు మిగలలేదు. మీ ప్లాన్‌ను అప్‌గ్రేడ్ చేయండి లేదా అదనపు విశ్లేషణలు కొనండి.';

  @override
  String get errTrialExpired =>
      'మీ ఉచిత ట్రయల్ ముగిసింది. కొనసాగించడానికి ఒక ప్లాన్ ఎంచుకోండి.';

  @override
  String get errNoPlan => 'AI విశ్లేషణకు యాక్టివ్ ప్లాన్ అవసరం.';

  @override
  String get viewPlans => 'ప్లాన్‌లను చూడండి';

  @override
  String get usageTitle => 'వినియోగం';

  @override
  String get demoPurchaseNote =>
      'డెమో బిల్లింగ్: ఈ ప్లాట్‌ఫారమ్‌లో కొనుగోళ్లు సిమ్యులేట్ చేయబడతాయి.';

  @override
  String get mostPopular => 'అత్యంత ప్రజాదరణ';

  @override
  String get bestValue => 'ఉత్తమ విలువ';

  @override
  String get planFeaturesCommon =>
      'ఫోటో గుర్తింపు, లైవ్ డేటా, చార్ట్‌లు, ఇష్టమైనవి మరియు మొత్తం 120 భాషలు ప్రతి ప్లాన్‌లో ఉంటాయి. కోటా AI విశ్లేషణలకు వర్తిస్తుంది.';

  @override
  String get searchLanguages => 'భాషలను వెతకండి…';

  @override
  String get noLanguageMatch => 'సరిపోలే భాష లేదు.';

  @override
  String get aiSettings => 'AI విశ్లేషణ';

  @override
  String get aiLength => 'నిడివి';

  @override
  String get aiDepthBrief => 'సంక్షిప్తం';

  @override
  String get aiDepthStandard => 'ప్రామాణికం';

  @override
  String get aiDepthDeep => 'వివరణాత్మకం';

  @override
  String get aiDepthBriefDesc => 'ముఖ్యాంశాలు, త్వరగా.';

  @override
  String get aiDepthStandardDesc => 'అన్ని విభాగాలతో పూర్తి నివేదిక.';

  @override
  String get aiDepthDeepDesc =>
      'మరిన్ని వెబ్ శోధనలు, సమాన కంపెనీలతో పోలిక మరియు మరింత లోతైన వివరాలు.';

  @override
  String aiDepthWords(String min, String max) {
    return 'సుమారు $min–$max పదాలు';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count విశ్లేషణలను వినియోగిస్తుంది',
      one: '1 విశ్లేషణను వినియోగిస్తుంది',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'పాఠకుల స్థాయి';

  @override
  String get aiReaderBeginner => 'ప్రారంభకులు';

  @override
  String get aiReaderExperienced => 'అనుభవజ్ఞులు';

  @override
  String get aiReaderBeginnerDesc =>
      'సరళమైన భాష; ప్రతి సాంకేతిక పదం వివరించబడుతుంది.';

  @override
  String get aiReaderExperiencedDesc =>
      'ప్రామాణిక ఆర్థిక పరిభాషతో సాంద్రమైన పాఠ్యం.';

  @override
  String get aiCounterArgument => 'అత్యంత బలమైన ప్రతివాదం';

  @override
  String get aiCounterArgumentDesc =>
      'సారాంశం ఎల్లప్పుడూ తన సొంత నిర్ణయానికి వ్యతిరేకంగా ఉన్న అత్యంత బలమైన వాదనతో ముగుస్తుంది.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'మీ ప్లాన్‌తో ఒక్కో విశ్లేషణకు గరిష్టంగా $count వెబ్ శోధనలు',
      one: 'మీ ప్లాన్‌తో ఒక్కో విశ్లేషణకు గరిష్టంగా 1 వెబ్ శోధన',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'ప్లాన్ వారీగా ప్రామాణిక నిడివి: సాధారణ $normal, Pro $pro, Max $max, Ultra $ultra. సంక్షిప్తంలో 2 తక్కువ, వివరణాత్మకంలో 2 ఎక్కువ.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'గరిష్టంగా $count వెబ్ శోధనలు',
      one: 'గరిష్టంగా 1 వెబ్ శోధన',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ఒక్కో విశ్లేషణకు $count వెబ్ శోధనలు',
      one: 'ఒక్కో విశ్లేషణకు 1 వెబ్ శోధన',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'ఈ నిడివికి $needed విశ్లేషణలు అవసరం, కానీ $left మాత్రమే మిగిలి ఉన్నాయి. సెట్టింగ్‌లలో తక్కువ నిడివిని ఎంచుకోండి లేదా మరిన్ని విశ్లేషణలు పొందండి.';
  }

  @override
  String get outlookMarketMood => 'మార్కెట్ మూడ్';

  @override
  String get moodVeryPessimistic => 'చాలా నిరాశావాదం';

  @override
  String get moodPessimistic => 'నిరాశావాదం';

  @override
  String get moodNeutral => 'తటస్థం';

  @override
  String get moodOptimistic => 'ఆశావాదం';

  @override
  String get moodVeryOptimistic => 'చాలా ఆశావాదం';

  @override
  String get scenarioBull => 'బుల్ దృశ్యం';

  @override
  String get scenarioBase => 'ప్రాథమిక దృశ్యం';

  @override
  String get scenarioBear => 'బేర్ దృశ్యం';

  @override
  String outlookCurrentPrice(String price) {
    return 'ప్రస్తుత ధర: $price';
  }

  @override
  String get outlookKeyLevels => 'కీలక స్థాయిలు';

  @override
  String get keyLevelSupport => 'సపోర్ట్';

  @override
  String get keyLevelResistance => 'రెసిస్టెన్స్';

  @override
  String get keyLevelAnchor => 'యాంకర్ స్థాయి';

  @override
  String get upcomingEvents => 'రాబోయే ఈవెంట్‌లు';

  @override
  String get outlookChartNote =>
      'సూచనాత్మక శ్రేణులు; సంభావ్యతలు స్థూల అంచనాలు మాత్రమే, జోస్యాలు కావు.';

  @override
  String get accountTitle => 'ఖాతా';

  @override
  String get signIn => 'సైన్ ఇన్';

  @override
  String get signOut => 'సైన్ అవుట్';

  @override
  String get notSignedIn => 'సైన్ ఇన్ చేయలేదు';

  @override
  String get accountBenefit =>
      'మీ సబ్‌స్క్రిప్షన్ మీ అన్ని పరికరాల్లో పని చేయాలంటే సైన్ ఇన్ చేయండి.';

  @override
  String get accountSyncedNote =>
      'మీ సబ్‌స్క్రిప్షన్ మరియు మిగిలిన విశ్లేషణలు ప్రతి పరికరంలోనూ ఒకేలా ఉంటాయి.';

  @override
  String get signInTitle => 'WhatStockకు సైన్ ఇన్ చేయండి';

  @override
  String get emailLabel => 'ఇమెయిల్ చిరునామా';

  @override
  String get continueWithEmail => 'ఇమెయిల్‌తో కొనసాగండి';

  @override
  String codeSentTo(String email) {
    return 'మేము $emailకు 6 అంకెల కోడ్ పంపాము. ఇది 10 నిమిషాల పాటు చెల్లుబాటులో ఉంటుంది.';
  }

  @override
  String get codeLabel => 'సైన్-ఇన్ కోడ్';

  @override
  String get resendCode => 'కొత్త కోడ్ పంపండి';

  @override
  String get useDifferentEmail => 'వేరే ఇమెయిల్ ఉపయోగించండి';

  @override
  String get errInvalidCode => 'కోడ్ తప్పు లేదా దాని గడువు ముగిసింది.';

  @override
  String get errInvalidEmail => 'దయచేసి సరైన ఇమెయిల్ చిరునామాను నమోదు చేయండి.';

  @override
  String get errSignInFailed =>
      'సైన్ ఇన్ విఫలమైంది. మీ ఇంటర్నెట్ కనెక్షన్‌ను తనిఖీ చేసి మళ్లీ ప్రయత్నించండి.';

  @override
  String get checkoutWaiting =>
      'మీ బ్రౌజర్‌లో చెల్లింపును పూర్తి చేయండి. పూర్తయిన వెంటనే యాప్ ఆటోమేటిక్‌గా అప్‌డేట్ అవుతుంది.';

  @override
  String get paymentViaStripe =>
      'Stripe ద్వారా మీ బ్రౌజర్‌లో సురక్షిత చెల్లింపు. ఎప్పుడైనా రద్దు చేయవచ్చు.';

  @override
  String get paymentViaStore =>
      'మీ App Store లేదా Google Play ఖాతా ద్వారా బిల్ చేయబడుతుంది. స్టోర్ సెట్టింగ్‌లలో ఎప్పుడైనా రద్దు చేయవచ్చు.';

  @override
  String get keySpace => 'స్పేస్';

  @override
  String get doubleOptionTitle => 'Option ని రెండుసార్లు నొక్కండి';

  @override
  String get doubleOptionSubtitle =>
      'Option కీని వేగంగా రెండుసార్లు నొక్కినా కూడా WhatStock తెరుచుకుంటుంది.';

  @override
  String get doubleOptionPermission =>
      'ఇతర యాప్‌లలో కూడా ఇది పని చేయాలంటే, సిస్టమ్ సెట్టింగ్‌లు → గోప్యత & భద్రత → ఇన్‌పుట్ మానిటరింగ్‌లో WhatStock ని అనుమతించి, ఆపై యాప్‌ను మళ్లీ తెరవండి.';

  @override
  String get openSystemSettings => 'సిస్టమ్ సెట్టింగ్‌లను తెరవండి';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'ఎక్కడి నుంచైనా WhatStock ని తెరవడానికి $shortcut నొక్కండి లేదా Option ని రెండుసార్లు నొక్కండి.';
  }

  @override
  String get scenarioMostLikely => 'అత్యంత సంభావ్యం';

  @override
  String get longTermToday => 'ఈ రోజు';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years సంవత్సరాలు',
      one: '1 సంవత్సరం',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return 'సంవత్సరానికి $range';
  }

  @override
  String longTermLikely(String price) {
    return 'అత్యంత సంభావ్య ధర $price';
  }

  @override
  String get confidenceLow => 'తక్కువ విశ్వాసం';

  @override
  String get confidenceMedium => 'మధ్యస్థ విశ్వాసం';

  @override
  String get confidenceHigh => 'అధిక విశ్వాసం';

  @override
  String get longTermNote =>
      'దీర్ఘకాలిక పరిధులు పేర్కొన్న అంచనాలపై ఆధారపడి ఉంటాయి మరియు కాలంతో పాటు విస్తరిస్తాయి. ధరల్లో డివిడెండ్లు చేర్చలేదు. స్థూల అంచనాలు, భవిష్యవాణులు కావు.';

  @override
  String get portfolio => 'పోర్ట్‌ఫోలియో';

  @override
  String get portfolioEmpty =>
      'ఇంకా ఏమీ లేదు. ఒక స్టాక్‌ను తెరిచి, మీ వద్ద ఉన్నవాటిని అనుసరించడానికి “పోర్ట్‌ఫోలియోకు జోడించు” నొక్కండి.';

  @override
  String get portfolioLocalNote =>
      'ఈ పరికరంలో మాత్రమే నిల్వ అవుతుంది. మొత్తాలు ECB రిఫరెన్స్ రేట్లతో మార్చబడతాయి; ధరలు ఆలస్యంగా ఉండవచ్చు.';

  @override
  String get addToPortfolio => 'పోర్ట్‌ఫోలియోకు జోడించు';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol జోడించు';
  }

  @override
  String get portfolioQuantity => 'షేర్ల సంఖ్య';

  @override
  String portfolioBuyPrice(String currency) {
    return 'ఒక్కో షేరు ధర ($currency)';
  }

  @override
  String get portfolioBuyDate => 'కొనుగోలు తేదీ';

  @override
  String get portfolioAdd => 'జోడించు';

  @override
  String get portfolioInvalidNumber =>
      'సున్నా కంటే పెద్ద సంఖ్యను నమోదు చేయండి.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol పోర్ట్‌ఫోలియోకు జోడించబడింది.';
  }

  @override
  String get portfolioTotalValue => 'మొత్తం విలువ';

  @override
  String get portfolioToday => 'ఈ రోజు';

  @override
  String get portfolioGainLoss => 'లాభం/నష్టం';

  @override
  String get portfolioInvested => 'పెట్టుబడి';

  @override
  String get portfolioAllocation => 'కేటాయింపు';

  @override
  String get portfolioPositions => 'పొజిషన్లు';

  @override
  String portfolioAvgCost(String price) {
    return 'సగటు ధర $price';
  }

  @override
  String get portfolioYourPosition => 'మీ పొజిషన్';

  @override
  String get portfolioPurchases => 'కొనుగోళ్లు';

  @override
  String get portfolioRemove => 'తీసివేయి';

  @override
  String get portfolioExcluded =>
      'ధర లేదా మారకపు రేటు లేని పొజిషన్లు మొత్తాల్లో చేర్చబడవు.';

  @override
  String get priceAlerts => 'ధర హెచ్చరికలు';

  @override
  String get setPriceAlert => 'ధర హెచ్చరిక సెట్ చేయండి';

  @override
  String alertDialogTitle(String symbol) {
    return 'ధర హెచ్చరిక · $symbol';
  }

  @override
  String get alertKindAbove => 'దీని పైకి వెళ్తే';

  @override
  String get alertKindBelow => 'దీని కిందకు పడితే';

  @override
  String get alertKindMove => 'ఒక్క రోజులో బాగా కదిలితే';

  @override
  String alertTargetPrice(String currency) {
    return 'ధర ($currency)';
  }

  @override
  String get alertMovePercent => 'రోజువారీ మార్పు (%)';

  @override
  String get alertAlreadyMet => 'ధర ఇప్పటికే ఈ స్థాయిని దాటింది.';

  @override
  String get alertSave => 'హెచ్చరిక సెట్ చేయండి';

  @override
  String alertCreated(String symbol) {
    return '$symbolకు హెచ్చరిక సెట్ అయింది.';
  }

  @override
  String get alertsEmpty =>
      'ఇంకా హెచ్చరికలు లేవు. ఒక స్టాక్‌ను తెరిచి గంటను నొక్కండి.';

  @override
  String get alertsNote =>
      'WhatStock నడుస్తున్నంత వరకు ప్రతి 5 నిమిషాలకు హెచ్చరికలు తనిఖీ అవుతాయి. కంప్యూటర్‌లో యాప్ మెనూ బార్ లేదా సిస్టమ్ ట్రేలో నడుస్తూనే ఉంటుంది; ఫోన్‌లో ప్రస్తుతానికి యాప్ తెరిచి ఉన్నప్పుడే హెచ్చరిస్తుంది.';

  @override
  String alertDescAbove(String price) {
    return '$price పైన';
  }

  @override
  String alertDescBelow(String price) {
    return '$price కింద';
  }

  @override
  String alertDescMove(String percent) {
    return 'రోజువారీ మార్పు ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return '$dateన $price వద్ద సక్రియమైంది';
  }

  @override
  String get alertRearm => 'మళ్లీ ఆన్ చేయండి';

  @override
  String get alertDelete => 'తొలగించండి';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol $price పైకి వెళ్లింది';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol $price కిందకు పడింది';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol ఈ రోజు $percent కదిలింది';
  }

  @override
  String alertHitBody(String price) {
    return 'ప్రస్తుత ధర: $price';
  }

  @override
  String get alertOpen => 'తెరవండి';

  @override
  String get keepInTrayTitle => 'విండో మూసినా నడుస్తూనే ఉండాలి';

  @override
  String get keepInTraySubtitle =>
      'WhatStock మెనూ బార్ లేదా సిస్టమ్ ట్రేలో ఉంటుంది, కాబట్టి షార్ట్‌కట్ మరియు ధర హెచ్చరికలు పనిచేస్తూనే ఉంటాయి.';

  @override
  String get termsOfUse => 'వినియోగ నిబంధనలు';

  @override
  String get privacyPolicy => 'గోప్యతా విధానం';

  @override
  String get subscriptionLegal =>
      'మీరు రద్దు చేసే వరకు సభ్యత్వం ప్రతి నెలా ఆటోమేటిక్‌గా పునరుద్ధరించబడుతుంది. సభ్యత్వం తీసుకోవడం ద్వారా మీరు వినియోగ నిబంధనలు మరియు గోప్యతా విధానాన్ని అంగీకరిస్తారు.';

  @override
  String get deleteAccount => 'ఖాతాను తొలగించండి';

  @override
  String get deleteAccountTitle => 'మీ ఖాతాను తొలగించాలా?';

  @override
  String get deleteAccountBody =>
      'మీ ఖాతా మరియు మా సర్వర్‌లో నిల్వ చేసినవన్నీ (ఇమెయిల్, పరిమితి, వినియోగం) శాశ్వతంగా తొలగించబడతాయి, ఉపయోగించని విశ్లేషణలు కోల్పోతారు. బ్రౌజర్‌లో చెల్లించిన సభ్యత్వం వెంటనే రద్దవుతుంది; App Store లేదా Google Play సభ్యత్వాన్ని స్టోర్ సెట్టింగ్‌లలో రద్దు చేయాలి.';

  @override
  String get deleteLocalData =>
      'ఈ పరికరంలోని డేటాను కూడా తొలగించండి (పోర్ట్‌ఫోలియో, హెచ్చరికలు, ఇష్టమైనవి, చరిత్ర, సేవ్ చేసిన విశ్లేషణలు)';

  @override
  String get deleteAccountConfirm => 'శాశ్వతంగా తొలగించండి';

  @override
  String get accountDeleted => 'మీ ఖాతా తొలగించబడింది.';

  @override
  String get errDeleteAccount =>
      'ఖాతాను తొలగించలేకపోయాము. కనెక్షన్‌ను తనిఖీ చేసి మళ్లీ ప్రయత్నించండి.';

  @override
  String get aiTrialBriefNote =>
      'ట్రయల్ విశ్లేషణలు సంక్షిప్తంగా ఉంటాయి, వేగవంతమైన AI మోడల్‌తో రూపొందుతాయి. ప్లాన్‌తో మా అత్యంత సమర్థమైన AI, మరిన్ని వెబ్ శోధనలు, ప్రామాణికం మరియు వివరణాత్మకం నిడివిలు మీకు లభిస్తాయి.';

  @override
  String get billingMonthly => 'నెలవారీ';

  @override
  String get billingYearly => 'వార్షికం';

  @override
  String get yearlyDiscount => '2 నెలలు ఉచితం';

  @override
  String get perYear => '/ సంవత్సరం';

  @override
  String pricePerMonthApprox(String price) {
    return 'నెలకు ≈ $price';
  }

  @override
  String get subscriptionLegalYearly =>
      'మీరు రద్దు చేసే వరకు వార్షిక సభ్యత్వం ప్రతి సంవత్సరం ఆటోమేటిక్‌గా పునరుద్ధరించబడుతుంది. సభ్యత్వం తీసుకోవడం ద్వారా మీరు వినియోగ నిబంధనలు మరియు గోప్యతా విధానాన్ని అంగీకరిస్తారు.';

  @override
  String get myAnalyses => 'నా విశ్లేషణలు';

  @override
  String get navAlerts => 'హెచ్చరికలు';

  @override
  String get inviteTitle => 'మూసివేసిన ప్రివ్యూ';

  @override
  String get inviteBody =>
      'WhatStock ప్రస్తుతం ఆహ్వానం ద్వారా మాత్రమే అందుబాటులో ఉంది. మీకు అందిన ఆహ్వాన కోడ్‌ను నమోదు చేయండి.';

  @override
  String get inviteCodeLabel => 'ఆహ్వాన కోడ్';

  @override
  String get inviteContinue => 'కొనసాగించు';

  @override
  String get inviteInvalid => 'ఈ ఆహ్వాన కోడ్ చెల్లదు.';

  @override
  String get inviteExpired =>
      'ఈ ఆహ్వానం గడువు ముగిసింది. మిమ్మల్ని ఆహ్వానించిన వ్యక్తిని కొత్త కోడ్ అడగండి.';

  @override
  String get inviteDeviceLimit =>
      'ఈ ఆహ్వాన కోడ్ ఇప్పటికే గరిష్ఠ సంఖ్యలో పరికరాల్లో ఉపయోగంలో ఉంది.';

  @override
  String get previewConfidential => 'గోప్య ప్రివ్యూ';

  @override
  String get errPreviewDailyLimit =>
      'ఈ ప్రివ్యూ యొక్క నేటి విశ్లేషణ పరిమితి చేరుకుంది. రేపు మళ్లీ ప్రయత్నించండి.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count గంటల క్రితం',
      one: '1 గంట క్రితం',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count రోజుల క్రితం',
      one: '1 రోజు క్రితం',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'ఈ విశ్లేషణను అప్‌డేట్ చేయాలా?';

  @override
  String staleBody(String age) {
    return 'ఇది $age రూపొందించబడింది. అప్పటి నుండి ధరలు, వార్తలు, ఫలితాలు మారి ఉండవచ్చు.';
  }

  @override
  String get staleKeep => 'మునుపటిదాన్ని చూపించండి';

  @override
  String get staleRefresh => 'కొత్తది రూపొందించండి';

  @override
  String seeAll(int count) {
    return 'అన్నీ చూడండి ($count)';
  }

  @override
  String get searchAnalyses => 'మీ విశ్లేషణల్లో వెతకండి';

  @override
  String get deleteAnalysis => 'తొలగించండి';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol విశ్లేషణ తొలగించబడింది';
  }

  @override
  String get keyLevelAlertHint =>
      'ధర ఒక స్థాయిని చేరినప్పుడు హెచ్చరిక పొందడానికి ఆ స్థాయిని నొక్కండి.';

  @override
  String get shareAnalysisTitle => 'విశ్లేషణను షేర్ చేయండి';

  @override
  String get shareAsImage => 'చిత్రంగా షేర్ చేయండి';

  @override
  String get shareAsText => 'టెక్స్ట్‌గా షేర్ చేయండి';

  @override
  String get shareCardFooter => 'WhatStock తో రూపొందించబడింది';

  @override
  String get shareCardDisclaimer => 'AI విశ్లేషణ · పెట్టుబడి సలహా కాదు';

  @override
  String get referralTitle => 'స్నేహితులను ఆహ్వానించండి';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count అదనపు విశ్లేషణలు',
      one: '1 అదనపు విశ్లేషణ',
    );
    return 'మీ కోడ్‌ను షేర్ చేయండి. మీ స్నేహితులు వెంటనే $_temp0 పొందుతారు, వారి మొదటి విశ్లేషణ తర్వాత మీరూ అంతే పొందుతారు.';
  }

  @override
  String get referralYourCode => 'మీ కోడ్';

  @override
  String referralStats(int invited, int rewarded) {
    return 'ఆహ్వానించినవారు: $invited · రివార్డ్‌లు: $rewarded';
  }

  @override
  String get referralHaveCode => 'స్నేహితుని కోడ్ ఉందా?';

  @override
  String get referralRedeem => 'రీడీమ్ చేయండి';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count అదనపు విశ్లేషణలు జోడించబడ్డాయి. స్వాగతం!',
      one: '1 అదనపు విశ్లేషణ జోడించబడింది. స్వాగతం!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'ఈ కోడ్ ఉనికిలో లేదు. దాన్ని తనిఖీ చేసి మళ్లీ ప్రయత్నించండి.';

  @override
  String get referralErrOwn => 'మీ స్వంత కోడ్‌ను మీరు రీడీమ్ చేయలేరు.';

  @override
  String get referralErrAlready =>
      'మీరు ఇప్పటికే స్నేహితుని కోడ్‌ను రీడీమ్ చేశారు.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count అదనపు విశ్లేషణలు',
      one: '1 అదనపు విశ్లేషణ',
    );
    return 'నేను WhatStockతో స్టాక్‌లను విశ్లేషిస్తాను: స్టాక్‌ను ఫోటో తీయండి, AI దాన్ని వివరిస్తుంది. నా కోడ్ $codeతో మీరు $_temp0 పొందుతారు.';
  }

  @override
  String get referralCopied => 'కోడ్ కాపీ చేయబడింది';

  @override
  String get onboardTitle1 => 'స్టాక్ ఫోటో తీయండి';

  @override
  String get onboardBody1 =>
      'బ్రోకరేజ్ యాప్ స్క్రీన్, వార్తాపత్రిక లేదా కంపెనీ లోగో చాలు: WhatStock స్టాక్‌ను గుర్తించి దాని ధర, చార్ట్, ముఖ్యమైన గణాంకాలను చూపిస్తుంది.';

  @override
  String get onboardTitle2 => 'నిమిషాల్లో అర్థం చేసుకోండి';

  @override
  String get onboardBody2 =>
      'స్టాక్‌ను ఏది కదిలిస్తుందో, దాని రిస్క్‌లు, విలువ, ధర ఎటు వెళ్లవచ్చో తెలిపే మూడు దృశ్యాలను AI విశ్లేషణ మూలాలతో సహా మీ భాషలోనే వివరిస్తుంది.';

  @override
  String get onboardTitle3 => 'ఎప్పుడూ అప్‌డేట్‌గా ఉండండి';

  @override
  String get onboardBody3 =>
      'ఇష్టమైనవి, మీ పోర్ట్‌ఫోలియో, ధర హెచ్చరికలు మీకు ఎప్పటికప్పుడు సమాచారం అందిస్తాయి. మీ విశ్లేషణలు మీ పరికరంలోనే ఉంటాయి, ఎప్పుడైనా మళ్లీ తెరవవచ్చు.';

  @override
  String get onboardNext => 'తదుపరి';

  @override
  String get onboardStart => 'ప్రారంభించండి';

  @override
  String get onboardSkip => 'దాటవేయి';

  @override
  String changesTitle(String date) {
    return 'మునుపటి విశ్లేషణ నుండి ($date)';
  }

  @override
  String get changesPrice => 'ధర';

  @override
  String get changesNoMajor => 'అంచనాలో గణనీయమైన మార్పు లేదు.';

  @override
  String get changesPreviousSummary => 'మునుపటి సారాంశం';

  @override
  String get telemetryTitle => 'WhatStockను మెరుగుపరచడంలో సహాయపడండి';

  @override
  String get telemetryBody =>
      'అనామక వినియోగ గణాంకాలను, క్రాష్ నివేదికలను షేర్ చేయండి: ఏ ఫీచర్‌లు ఉపయోగించబడుతున్నాయి, ఏమి తప్పు జరిగింది. మీ స్టాక్‌లు, విశ్లేషణలు లేదా వ్యక్తిగత డేటా ఎప్పటికీ షేర్ చేయబడవు. దీన్ని మీరు ఎప్పుడైనా సెట్టింగ్‌లలో మార్చవచ్చు.';

  @override
  String get telemetryAllow => 'అనుమతించండి';

  @override
  String get telemetryDecline => 'వద్దు, ధన్యవాదాలు';

  @override
  String get telemetrySetting => 'అనామక గణాంకాలు, క్రాష్ నివేదికలు';

  @override
  String get telemetrySettingHint =>
      'ఫీచర్‌లు ఎంత తరచుగా ఉపయోగించబడుతున్నాయి, ఎర్రర్ నివేదికలు — వ్యక్తిగత డేటా లేదా మీ శోధనలు, విశ్లేషణల కంటెంట్ లేకుండా.';

  @override
  String get askButton => 'ఈ విశ్లేషణ గురించి అడగండి';

  @override
  String askTitle(String symbol) {
    return '$symbol గురించి ప్రశ్నలు';
  }

  @override
  String get askIntro =>
      'విశ్లేషణ గురించి ఏదైనా అడగండి: ఒక రిస్క్ అంటే ఏమిటి, దృక్పథాన్ని ఏది మార్చగలదు, ఒక సంఖ్య ఎలా లెక్కించబడింది. సమాధానాలు ఈ విశ్లేషణ ఆధారంగా ఉంటాయి, ఇవి పెట్టుబడి సలహా కాదు.';

  @override
  String get askHint => 'ప్రశ్న అడగండి…';

  @override
  String get askSend => 'పంపు';

  @override
  String get askThinking => 'ఆలోచిస్తోంది…';

  @override
  String get askSuggest1 => 'అతిపెద్ద రిస్క్ ఏమిటి?';

  @override
  String get askSuggest2 => 'దృక్పథాన్ని ఏది మార్చగలదు?';

  @override
  String get askSuggest3 => 'సరళంగా వివరించండి';

  @override
  String get askMaxReached =>
      'ఈ విశ్లేషణకు ఇదే చివరి ప్రశ్న. మరిన్ని అడగడానికి కొత్త విశ్లేషణను రూపొందించండి.';

  @override
  String get errAskLimit =>
      'మీరు నేటి ప్రశ్నల పరిమితిని చేరుకున్నారు. దయచేసి రేపు మళ్లీ ప్రయత్నించండి.';

  @override
  String get eventTomorrow => 'రేపు';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days రోజుల్లో',
      one: '1 రోజులో',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'త్రైమాసిక ఫలితాలు';

  @override
  String get eventBeforeOpen => 'మార్కెట్ ప్రారంభానికి ముందు';

  @override
  String get eventAfterClose => 'మార్కెట్ ముగిసిన తర్వాత';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS అంచనా: $value';
  }

  @override
  String get eventFromAnalysis => 'మీ విశ్లేషణ నుండి';

  @override
  String get eventsHint =>
      'రాబోయే 90 రోజుల్లో మీ ఇష్టమైన మరియు పోర్ట్‌ఫోలియో స్టాక్‌ల ఫలితాల తేదీలు, అలాగే మీ విశ్లేషణలు గుర్తించిన తేదీ గల ఈవెంట్‌లు.';

  @override
  String get eventsEmpty =>
      'రాబోయే 90 రోజుల్లో తేదీ గల ఈవెంట్‌లు లేవు. వాటి ఫలితాల తేదీలను ఇక్కడ చూడటానికి ఇష్టమైనవి లేదా పోర్ట్‌ఫోలియో స్టాక్‌లను జోడించండి.';

  @override
  String get compareTitle => 'పోలిక';

  @override
  String get compareAdd => 'స్టాక్‌ను జోడించు';

  @override
  String get compareRemove => 'తీసివేయి';

  @override
  String get compareTickerHint => 'టికర్, ఉదా. MSFT';

  @override
  String get compareHint =>
      'ముఖ్య గణాంకాలు పక్కపక్కనే; ప్రతి వరుసలో ఉత్తమ విలువ హైలైట్ చేయబడింది. మొత్తాలు ప్రతి స్టాక్ సొంత కరెన్సీలో ఉన్నాయి.';

  @override
  String get compareNoAnalysis => 'ఇంకా విశ్లేషణ లేదు';

  @override
  String get portfolioDividends => 'వార్షిక డివిడెండ్';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent ఈల్డ్';
  }

  @override
  String get portfolioDividendNote =>
      'అంచనా వార్షిక డివిడెండ్ గత 12 నెలల్లో చెల్లించిన డివిడెండ్‌ల ఆధారంగా ఉంటుంది; భవిష్యత్ చెల్లింపులకు హామీ లేదు.';

  @override
  String positionDividend(String amount) {
    return 'డివిడెండ్: సంవత్సరానికి $amount';
  }

  @override
  String get chartAvgCost => 'మీ సగటు';

  @override
  String get chartAlertLevel => 'హెచ్చరిక';

  @override
  String get marketsToday => 'ఈ రోజు మార్కెట్లు';

  @override
  String get notesTitle => 'నా గమనికలు';

  @override
  String get notesHint =>
      'మీరు దీన్ని ఎందుకు కొన్నారు, దేనిని గమనిస్తున్నారు, ఏమైతే అమ్ముతారు?';

  @override
  String get notesInfo =>
      'ఈ పరికరంలో మాత్రమే నిల్వ అవుతుంది. AI విశ్లేషణ మీ గమనికలను పరిగణనలోకి తీసుకుంటుంది.';

  @override
  String notesSaved(String date) {
    return 'సేవ్ చేయబడింది $date';
  }

  @override
  String get peersTitle => 'సారూప్య కంపెనీలు';

  @override
  String get portfolioExport => 'CSVగా ఎగుమతి చేయి';

  @override
  String get portfolioImport => 'CSV నుండి దిగుమతి చేయి';

  @override
  String get portfolioImportHint =>
      'ప్రతి పంక్తికి ఒక కొనుగోలును అతికించండి: టికర్, పరిమాణం, ధర, కరెన్సీ, తేదీ (YYYY-MM-DD). నిలువు వరుసలను కామా, సెమికోలన్ లేదా ట్యాబ్‌తో వేరు చేయవచ్చు; శీర్షిక పంక్తి ఐచ్ఛికం.';

  @override
  String get portfolioImportButton => 'దిగుమతి చేయి';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count కొనుగోళ్లు జోడించబడ్డాయి',
      one: '1 కొనుగోలు జోడించబడింది',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count పంక్తులు దాటవేయబడ్డాయి',
      one: '1 పంక్తి దాటవేయబడింది',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'పోర్ట్‌ఫోలియో, ఇష్టమైనవి, ధర హెచ్చరికలు మరియు గమనికలు మీ అన్ని పరికరాల్లో సింక్ అవుతాయి.';

  @override
  String syncLast(String time) {
    return 'చివరి సింక్: $time';
  }

  @override
  String get syncNow => 'ఇప్పుడే సింక్ చేయండి';

  @override
  String get syncFailed =>
      'సింక్ విఫలమైంది. ఇది ఆటోమేటిక్‌గా మళ్లీ ప్రయత్నిస్తుంది.';

  @override
  String get alertEmailTitle => 'హెచ్చరిక ట్రిగ్గర్ అయినప్పుడు ఈమెయిల్';

  @override
  String get alertEmailOn =>
      'మేము కొన్ని నిమిషాలకు ఒకసారి మీ హెచ్చరికలను తనిఖీ చేసి, యాప్ మూసి ఉన్నా మీకు ఈమెయిల్ పంపుతాము.';

  @override
  String get alertEmailSignIn =>
      'యాప్ మూసి ఉన్నా ఈమెయిల్ ద్వారా హెచ్చరికలు పొందడానికి సెట్టింగ్‌లలో మీ ఈమెయిల్‌తో సైన్ ఇన్ చేయండి.';

  @override
  String get portfolioHistory => 'కాలక్రమేణా విలువ';

  @override
  String get portfolioReviewTitle => 'AI పోర్ట్‌ఫోలియో సమీక్ష';

  @override
  String get portfolioReviewIntro =>
      'AI మీ మొత్తం పోర్ట్‌ఫోలియోను పరిశీలిస్తుంది: కేంద్రీకరణ, రంగం మరియు కరెన్సీ ఎక్స్‌పోజర్, మీ షేర్లకు ఉమ్మడి నష్టభయాలు, డివిడెండ్లు. 1 విశ్లేషణను వినియోగిస్తుంది.';

  @override
  String get portfolioReviewButton => 'నా పోర్ట్‌ఫోలియోను సమీక్షించండి';

  @override
  String get portfolioReviewAgain => 'మళ్లీ సమీక్షించండి';

  @override
  String get portfolioReviewWorking => 'మీ పోర్ట్‌ఫోలియో సమీక్షించబడుతోంది…';

  @override
  String get digestTitle => 'ఇమెయిల్ ద్వారా వారపు సారాంశం';

  @override
  String get digestHint =>
      'ప్రతి సోమవారం: గత వారం మీ ఇష్టమైనవి, పోర్ట్‌ఫోలియో ఎలా కదిలాయి, వాటి రాబోయే ఫలితాల తేదీలు.';

  @override
  String get benchmarkTitle => 'S&P 500తో పోలిక';

  @override
  String get benchmarkYours => 'మీ కొనుగోళ్లు';

  @override
  String get benchmarkIndex => 'అదే మొత్తం S&P 500లో';

  @override
  String benchmarkAhead(String points) {
    return 'సూచీ కంటే $points శాతం పాయింట్లు మెరుగు';
  }

  @override
  String benchmarkBehind(String points) {
    return 'సూచీ కంటే $points శాతం పాయింట్లు వెనుక';
  }

  @override
  String get benchmarkHint =>
      'ప్రతి కొనుగోలు మొత్తాన్ని అదే రోజు S&P 500 ఇండెక్స్ ఫండ్‌లో పెట్టుబడి పెట్టినట్లుగా. డివిడెండ్లు చేర్చలేదు; గత రాబడులు భవిష్యత్ రాబడులను అంచనా వేయవు.';

  @override
  String get portfolioSell => 'అమ్ము';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbol అమ్ము';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'ఒక్కో షేరు అమ్మకపు ధర ($currency)';
  }

  @override
  String get portfolioSellDate => 'అమ్మకపు తేదీ';

  @override
  String get portfolioSellAll => 'అన్నీ';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'మీ వద్ద $quantity ఉన్నాయి';
  }

  @override
  String get portfolioSold => 'అమ్మారు';

  @override
  String get portfolioRealized => 'వాస్తవిక';

  @override
  String get portfolioClosed => 'మూసివేసిన పొజిషన్లు';

  @override
  String get portfolioClosedNote => 'అన్ని షేర్లు అమ్మేశారు';

  @override
  String get portfolioTransactions => 'లావాదేవీలు';

  @override
  String get portfolioRealizedByYear => 'సంవత్సరాల వారీగా వాస్తవిక లాభం';

  @override
  String get portfolioRealizedHint =>
      'అమ్మకాలు ముందుగా మీ అత్యంత పాత కొనుగోళ్లతో సరిపోల్చబడతాయి (FIFO), నేటి మారకపు రేటులో మార్చబడతాయి. పన్ను రిటర్న్ కోసం మీ బ్రోకర్ స్టేట్‌మెంట్‌ను ఉపయోగించండి.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'ఈ విశ్లేషణ తర్వాత కొత్త త్రైమాసిక ఫలితాలు విడుదలయ్యాయి ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'కొత్త ఫలితాలు';

  @override
  String get portfolioImportBrokers =>
      'Revolut, Trading 212, Interactive Brokers ఎగుమతులు కూడా అమ్మకాలతో సహా గుర్తించబడతాయి; డివిడెండ్లు, డిపాజిట్లు దాటవేయబడతాయి.';

  @override
  String get portfolioImportFile => 'ఫైల్‌ను ఎంచుకోండి';

  @override
  String offlineBanner(String time) {
    return 'కనెక్షన్ లేదు – చివరిగా సేవ్ చేసిన డేటా చూపబడుతోంది ($time).';
  }

  @override
  String get glossMarketCap =>
      'స్టాక్ మార్కెట్‌లో మొత్తం కంపెనీ విలువ: షేర్ ధర × షేర్ల సంఖ్య.';

  @override
  String get glossSharesOutstanding =>
      'కంపెనీ జారీ చేసిన షేర్ల సంఖ్య. ఇది పెరిగితే, ప్రతి షేరుకు చిన్న వాటా దక్కుతుంది; బైబ్యాక్‌లు దీన్ని తగ్గిస్తాయి.';

  @override
  String get glossPeTrailing =>
      'ధర ÷ గత 12 నెలల్లో ఒక్కో షేరుపై లాభం: ప్రస్తుత లాభంలో ఎన్ని సంవత్సరాలకు సరిపడా మీరు చెల్లిస్తున్నారో. తక్కువగా ఉంటే చౌక, కానీ వేగంగా ఎదిగే కంపెనీలకు సాధారణంగా P/E ఎక్కువ.';

  @override
  String get glossPeForward =>
      'P/E లాంటిదే, కానీ వచ్చే 12 నెలలకు విశ్లేషకులు ఆశిస్తున్న లాభంతో. ట్రెయిలింగ్ P/E కంటే తక్కువగా ఉంటే లాభాలు పెరుగుతాయని అంచనా.';

  @override
  String get glossPb =>
      'ధర ÷ ఒక్కో షేరుకు బుక్ విలువ (ఆస్తులు మైనస్ అప్పులు). దాదాపు 1 అంటే కాగితంపై కంపెనీకి ఉన్నంత విలువే మార్కెట్ ఇస్తోంది.';

  @override
  String get glossPs =>
      'మార్కెట్ విలువ ÷ వార్షిక ఆదాయం. ఇంకా లాభం తక్కువగా ఉన్న లేదా లేని కంపెనీలకు ఉపయోగపడుతుంది; ఒకే పరిశ్రమలో పోల్చండి.';

  @override
  String get glossEvToFcf =>
      'అప్పుతో సహా కంపెనీ విలువ (EV) ÷ పెట్టుబడుల తర్వాత ఒక సంవత్సరంలో అది సృష్టించే నగదు. తక్కువగా ఉంటే మీరు చెల్లించే ధరకు ఎక్కువ నగదు లభిస్తుంది.';

  @override
  String get glossPeg =>
      'P/E ÷ అంచనా వేసిన వార్షిక లాభ వృద్ధి (%). దాదాపు 1 తరచుగా న్యాయమైనదిగా భావిస్తారు; ఇది వృద్ధి దృష్టితో P/E ని చూపిస్తుంది.';

  @override
  String get glossEps =>
      'గత 12 నెలల్లో ఒక్కో షేరుపై లాభం. ఏటా పెరిగే EPS ఆరోగ్యకరమైన కంపెనీకి బలమైన సంకేతాలలో ఒకటి.';

  @override
  String get glossBeta =>
      'షేరు మార్కెట్‌తో పాటు ఎంతగా కదులుతుంది: 1 = మార్కెట్ లాగే, 1.5 = దాదాపు 50% పెద్ద ఊగిసలాటలు, 1 కంటే తక్కువ = ప్రశాంతంగా.';

  @override
  String get glossRevenueTtm =>
      'గత 12 నెలల మొత్తం అమ్మకాలు, ఏ ఖర్చులకైనా ముందు.';

  @override
  String get glossNetIncomeTtm =>
      'గత 12 నెలల్లో అన్ని ఖర్చులు, వడ్డీ, పన్నుల తర్వాత మిగిలిన లాభం.';

  @override
  String get glossGrossMargin =>
      'ఉత్పత్తుల ప్రత్యక్ష ఖర్చు తర్వాత మిగిలే ఆదాయ వాటా. ఎక్కువ మార్జిన్ తరచుగా ధర నిర్ణయ శక్తిని సూచిస్తుంది.';

  @override
  String get glossOperatingMargin =>
      'వ్యాపారం నడపడానికి అయ్యే ఖర్చుల (జీతాలు, అద్దె, మార్కెటింగ్) తర్వాత, వడ్డీ మరియు పన్నులకు ముందు మిగిలే ఆదాయ వాటా.';

  @override
  String get glossNetMargin =>
      'తుది లాభంగా మారే ఆదాయ వాటా. 20% అంటే ప్రతి 100 అమ్మకాల్లో 20 లాభం.';

  @override
  String get glossRoe =>
      'ఈక్విటీపై రాబడి: వార్షిక లాభం ÷ యజమానుల మూలధనం. వాటాదారుల డబ్బును యాజమాన్యం ఎంత బాగా ఉపయోగిస్తుందో చూపిస్తుంది; దాదాపు 15% పైన బలమైనది.';

  @override
  String get glossRoa =>
      'ఆస్తులపై రాబడి: వార్షిక లాభం ÷ కంపెనీకి ఉన్న మొత్తం ఆస్తులు. ఒకే పరిశ్రమలో పోల్చండి.';

  @override
  String get glossDebtToEquity =>
      'అప్పులు ÷ యజమానుల మూలధనం. ఎక్కువగా ఉంటే అప్పు తెచ్చిన డబ్బు ఎక్కువ: వడ్డీ రేట్లు పెరిగినప్పుడు లేదా వ్యాపారం మందగించినప్పుడు ఎక్కువ రిస్క్.';

  @override
  String get glossCurrentRatio =>
      'స్వల్పకాలిక ఆస్తులు ÷ ఒక సంవత్సరంలో చెల్లించాల్సిన బిల్లులు. 1 పైన ఉంటే కంపెనీ సమీప బిల్లులను చెల్లించగలదు.';

  @override
  String get glossRevenueGrowth =>
      'ఏడాది క్రితంతో పోలిస్తే ఆదాయం ఎంత పెరిగింది.';

  @override
  String get glossEpsGrowth =>
      'ఏడాది క్రితంతో పోలిస్తే ఒక్కో షేరుపై లాభం ఎంత పెరిగింది.';

  @override
  String get glossDividendYield =>
      'వార్షిక డివిడెండ్ ÷ షేర్ ధర: మీరు చెల్లించిన మొత్తంలో శాతంగా, ఏటా మీకు వచ్చే నగదు ఆదాయం.';

  @override
  String get glossDividendPerShare =>
      'గత సంవత్సరంలో ఒక షేరుపై చెల్లించిన డివిడెండ్.';

  @override
  String get glossPayoutRatio =>
      'లాభంలో డివిడెండ్‌లుగా చెల్లించే వాటా. 100% పైన ఉంటే కంపెనీ సంపాదించే దానికంటే ఎక్కువ చెల్లిస్తోంది, ఇది అరుదుగా కొనసాగుతుంది.';

  @override
  String get glossTitle => 'దీని అర్థం ఏమిటి?';

  @override
  String get watchNewsTitle => 'మీ స్టాక్‌ల వార్తలు';

  @override
  String get undo => 'చర్యరద్దు';

  @override
  String get watchSort => 'క్రమబద్ధీకరించు';

  @override
  String get watchSortOwn => 'నా క్రమం';

  @override
  String get watchSortGainers => 'అత్యధిక పెరుగుదల ముందు';

  @override
  String get watchSortLosers => 'అత్యధిక తగ్గుదల ముందు';

  @override
  String get watchSortName => 'టికర్ ప్రకారం (A–Z)';

  @override
  String get watchHint =>
      'క్రమాన్ని మార్చడానికి హ్యాండిల్‌ను లాగండి, తీసివేయడానికి ఎడమకు స్వైప్ చేయండి. రేఖ గత 30 రోజులను చూపుతుంది.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: మీ విశ్లేషణ సిద్ధంగా ఉంది.';
  }

  @override
  String alertFromCost(String price) {
    return 'మీ సగటు కొనుగోలు ధర ($price) నుండి:';
  }

  @override
  String get briefTitle => 'ఈరోజు మీ షేర్లతో';

  @override
  String get briefButton => 'ఈరోజు సారాంశం';

  @override
  String get briefHint =>
      'ఈరోజు మీ పోర్ట్‌ఫోలియో మరియు ఇష్టమైనవి ఎలా కదిలాయో, తాజా వార్తలు వాటి గురించి ఏమి చెబుతున్నాయో చిన్న AI సారాంశం. ఎలాంటి విశ్లేషణనూ వాడదు.';

  @override
  String get briefRefresh => 'నవీకరించు';

  @override
  String get sectionEarnings => 'త్రైమాసిక ఫలితాలు';

  @override
  String earningsNext(String date) {
    return 'తదుపరి నివేదిక: $date';
  }

  @override
  String get earningsExpected => 'అంచనా EPS';

  @override
  String get earningsReported => 'ప్రకటించిన EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'గత $total త్రైమాసికాల్లో $beats సార్లు అంచనా EPSకు సమానం లేదా ఎక్కువ',
      one: '1 త్రైమాసికంలో $beats సార్లు అంచనా EPSకు సమానం లేదా ఎక్కువ',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol రేపు త్రైమాసిక ఫలితాలను ప్రకటిస్తుంది';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol ఈరోజు త్రైమాసిక ఫలితాలను ప్రకటిస్తుంది';
  }

  @override
  String get earningsRemindersTitle => 'ఫలితాల రిమైండర్‌లు';

  @override
  String get earningsRemindersSubtitle =>
      'మీ ఇష్టమైనవి లేదా పోర్ట్‌ఫోలియో స్టాక్‌లు త్రైమాసిక ఫలితాలు ప్రకటించే ముందు రోజు ఒక నోటిఫికేషన్';

  @override
  String addAllToFavorites(int count) {
    return 'అన్నీ ఇష్టమైనవాటికి జోడించండి ($count)';
  }

  @override
  String get portfolioImportPhoto => 'స్క్రీన్‌షాట్ నుండి దిగుమతి చేయి';

  @override
  String get holdingsReading => 'మీ పొజిషన్‌లను చదువుతున్నాం…';

  @override
  String get holdingsReviewTitle => 'కనుగొన్న పొజిషన్‌లు';

  @override
  String get holdingsReviewHint =>
      'జోడించే ముందు సంఖ్యలను తనిఖీ చేయండి. ధర అనేది ఒక్కో షేరుకు మీ సగటు కొనుగోలు ధర, నేటి ధర కాదు.';

  @override
  String get holdingsNoPrice => 'చిత్రంలో సగటు కొనుగోలు ధర లేదు';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count పొజిషన్‌లు జోడించు',
      one: '1 పొజిషన్ జోడించు',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'ఈ చిత్రంలో షేర్ పొజిషన్‌లు ఏవీ కనుగొనబడలేదు. మీ బ్రోకర్ పొజిషన్‌లు లేదా హోల్డింగ్స్ పేజీ స్క్రీన్‌షాట్‌ను ప్రయత్నించండి.';

  @override
  String get week52Range => '52-వారాల శ్రేణి';

  @override
  String week52BelowHigh(String percent) {
    return '52-వారాల గరిష్ఠం కంటే $percent తక్కువ';
  }

  @override
  String get week52AtHigh => '52-వారాల గరిష్ఠం వద్ద';

  @override
  String get alertKindTrailing => 'గరిష్ఠం నుండి పడితే';

  @override
  String get alertTrailingPercent => 'గరిష్ఠం నుండి పతనం (%)';

  @override
  String get alertTrailingHint =>
      'ధరను పైకి అనుసరిస్తుంది: సెట్ చేసినప్పటి నుండి వచ్చిన అత్యధిక స్థాయి నుండి ధర ఇంత పడితే తెలియజేస్తుంది.';

  @override
  String alertDescTrailing(String percent) {
    return 'గరిష్ఠం నుండి $percent పతనం';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'ఇప్పటి వరకు గరిష్ఠం: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol గరిష్ఠం నుండి $percent పడింది';
  }

  @override
  String get sectionInsiders => 'ఇన్‌సైడర్ లావాదేవీలు';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count కొనుగోళ్లు',
      one: '1 కొనుగోలు',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count అమ్మకాలు',
      one: '1 అమ్మకం',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'నికరం: $shares షేర్లు';
  }

  @override
  String get insiderBuy => 'కొన్నారు';

  @override
  String get insiderSell => 'అమ్మారు';

  @override
  String get insiderHint =>
      'గత 90 రోజుల్లో ఎగ్జిక్యూటివ్‌లు, డైరెక్టర్లు ఓపెన్ మార్కెట్‌లో చేసిన కొనుగోళ్లు, అమ్మకాలు (SEC Form 4). ఆప్షన్ వినియోగాలు, షేర్ అవార్డులు లెక్కలోకి తీసుకోబడవు.';

  @override
  String get insiderNone =>
      'గత 90 రోజుల్లో ఓపెన్ మార్కెట్‌లో ఇన్‌సైడర్ కొనుగోళ్లు లేదా అమ్మకాలు లేవు.';

  @override
  String get analystTrend => 'నెలనెలా అభిప్రాయాలు ఎలా మారాయి';

  @override
  String get watchListAll => 'అన్నీ';

  @override
  String get watchListNew => 'కొత్త జాబితా';

  @override
  String get watchListName => 'జాబితా పేరు';

  @override
  String get watchListRename => 'జాబితా పేరు మార్చండి';

  @override
  String get watchListDelete => 'జాబితాను తొలగించండి';

  @override
  String get watchListAddTo => 'జాబితాకు జోడించండి';

  @override
  String get watchListEmpty =>
      'ఈ జాబితాలో ఇంకా స్టాక్‌లు లేవు. జోడించడానికి స్టాక్ పక్కన ఉన్న జాబితా బటన్‌ను నొక్కండి.';

  @override
  String get portfolioAskTitle => 'మీ పోర్ట్‌ఫోలియో గురించి ప్రశ్నలు';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'బ్యాకప్';

  @override
  String get backupSave => 'బ్యాకప్‌ను సేవ్ చేయి';

  @override
  String get backupSaveHint =>
      'మీ ఇష్టమైనవి, జాబితాలు, పోర్ట్‌ఫోలియో, హెచ్చరికలు, గమనికలు ఒకే ఫైల్‌లో.';

  @override
  String get backupRestore => 'బ్యాకప్ నుండి పునరుద్ధరించు';

  @override
  String get backupRestoreHint =>
      'ఫైల్‌లో ఉన్నదాన్ని జోడిస్తుంది; ఇప్పుడు మీ వద్ద ఉన్నదేదీ తొలగించబడదు.';

  @override
  String get backupRestored => 'బ్యాకప్ పునరుద్ధరించబడింది.';

  @override
  String get backupInvalid => 'ఈ ఫైల్ WhatStock బ్యాకప్ కాదు.';
}
