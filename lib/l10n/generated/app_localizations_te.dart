// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Telugu (`te`).
class AppLocalizationsTe extends AppLocalizations {
  AppLocalizationsTe([String locale = 'te']) : super(locale);

  @override
  String get appTitle => 'Reszveny';

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
    return 'ఎక్కడి నుంచైనా Reszveny ని తెరవడానికి $shortcut నొక్కండి.';
  }

  @override
  String get trayOpen => 'Reszveny తెరవండి';

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
}
