// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Gujarati (`gu`).
class AppLocalizationsGu extends AppLocalizations {
  AppLocalizationsGu([String locale = 'gu']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'કોઈ શેરનો ફોટો લો અને તેના વિશે બધું જાણો.';

  @override
  String get homeHint =>
      'શેર સર્ટિફિકેટ, બ્રોકરેજ ઍપની સ્ક્રીન, અખબાર કે કંપનીનો લોગો – કોઈ પણ વસ્તુ જે શેરની ઓળખ આપે.';

  @override
  String get takePhoto => 'ફોટો લો';

  @override
  String get chooseFromGallery => 'ગૅલેરીમાંથી પસંદ કરો';

  @override
  String get chooseImage => 'છબી પસંદ કરો';

  @override
  String get enterTickerManually => 'ટિકર જાતે દાખલ કરો';

  @override
  String get tickerInputLabel => 'ટિકર સિમ્બોલ';

  @override
  String get tickerInputHint => 'દા.ત. AAPL';

  @override
  String get lookUp => 'શોધો';

  @override
  String demoModeBanner(String symbols) {
    return 'ડેમો મોડ – કોઈ માર્કેટ ડેટા કી ગોઠવેલી નથી. નમૂના ડેટા આ માટે ઉપલબ્ધ છે: $symbols.';
  }

  @override
  String get recognizing => 'છબીનું વિશ્લેષણ થઈ રહ્યું છે…';

  @override
  String get loadingData => 'ડેટા લોડ થઈ રહ્યો છે…';

  @override
  String get noCandidatesTitle => 'કોઈ શેર ઓળખાયો નથી';

  @override
  String get noCandidatesBody =>
      'અમે આ છબીમાં કોઈ શેર ઓળખી શક્યા નથી. વધુ સ્પષ્ટ ફોટો અજમાવો, અથવા ટિકર જાતે દાખલ કરો.';

  @override
  String get whatWeSaw => 'અમે શું જોયું';

  @override
  String get chooseCandidateTitle => 'તમે કયા શેરની વાત કરતા હતા?';

  @override
  String confidencePercent(int percent) {
    return '$percent% વિશ્વાસ';
  }

  @override
  String get settings => 'સેટિંગ';

  @override
  String get language => 'ભાષા';

  @override
  String get systemLanguage => 'સિસ્ટમ ડિફૉલ્ટ';

  @override
  String get about => 'ઍપ વિશે';

  @override
  String get disclaimer =>
      'આ ઍપ ફક્ત માહિતી આપે છે અને તે રોકાણ સલાહ નથી. ડેટા વિલંબિત અથવા અચોક્કસ હોઈ શકે છે.';

  @override
  String dataSource(String source) {
    return 'ડેટા સ્રોત: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'ઓળખ: $source';
  }

  @override
  String get retry => 'ફરી પ્રયાસ કરો';

  @override
  String get cancel => 'રદ કરો';

  @override
  String get ok => 'ઠીક છે';

  @override
  String get close => 'બંધ કરો';

  @override
  String get errorGeneric => 'કંઈક ખોટું થયું.';

  @override
  String get errorSectionUnavailable => 'આ વિભાગ લોડ થઈ શક્યો નથી.';

  @override
  String get notAvailable => 'ઉપલબ્ધ નથી';

  @override
  String get sectionIdentity => 'ઓળખ';

  @override
  String get sectionPrice => 'ભાવ';

  @override
  String get sectionValuation => 'મૂલ્યાંકન';

  @override
  String get sectionFinancials => 'નાણાકીય આંકડા';

  @override
  String get sectionDividend => 'ડિવિડન્ડ';

  @override
  String get sectionProfile => 'કંપની પ્રોફાઇલ';

  @override
  String get sectionAnalysts => 'વિશ્લેષકોના રેટિંગ';

  @override
  String get sectionNews => 'સમાચાર';

  @override
  String get sectionRecognition => 'ઓળખની વિગતો';

  @override
  String get labelSymbol => 'ટિકર';

  @override
  String get labelExchange => 'એક્સચેન્જ';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'ચલણ';

  @override
  String get labelCountry => 'દેશ';

  @override
  String get labelIndustry => 'ઉદ્યોગ';

  @override
  String get labelSector => 'સેક્ટર';

  @override
  String get labelWebsite => 'વેબસાઇટ';

  @override
  String get labelIpoDate => 'IPO તારીખ';

  @override
  String get labelMarketCap => 'માર્કેટ કૅપ';

  @override
  String get labelSharesOutstanding => 'બાકી શેર';

  @override
  String get labelEmployees => 'કર્મચારીઓ';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'મુખ્ય મથક';

  @override
  String get labelDescription => 'વર્ણન';

  @override
  String get labelLastPrice => 'છેલ્લો ભાવ';

  @override
  String get labelChange => 'ફેરફાર';

  @override
  String get labelOpen => 'ઓપન';

  @override
  String get labelDayHigh => 'દિવસનો ઊંચો ભાવ';

  @override
  String get labelDayLow => 'દિવસનો નીચો ભાવ';

  @override
  String get labelPreviousClose => 'અગાઉનો બંધ ભાવ';

  @override
  String get labelWeek52High => '52-સપ્તાહની ઊંચી સપાટી';

  @override
  String get labelWeek52Low => '52-સપ્તાહની નીચી સપાટી';

  @override
  String get labelAverageVolume10d => 'સરેરાશ વૉલ્યુમ (10 દિવસ)';

  @override
  String updatedAt(String time) {
    return 'અપડેટ: $time';
  }

  @override
  String get labelPeTrailing => 'P/E (ટ્રેલિંગ)';

  @override
  String get labelPeForward => 'P/E (ફૉરવર્ડ)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / ફ્રી કૅશ ફ્લો';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'બીટા';

  @override
  String get labelRevenueTtm => 'આવક (TTM)';

  @override
  String get labelNetIncomeTtm => 'ચોખ્ખો નફો (TTM)';

  @override
  String get labelGrossMargin => 'ગ્રોસ માર્જિન';

  @override
  String get labelOperatingMargin => 'ઑપરેટિંગ માર્જિન';

  @override
  String get labelNetMargin => 'ચોખ્ખું માર્જિન';

  @override
  String get labelRoe => 'ઇક્વિટી પર વળતર';

  @override
  String get labelRoa => 'અસ્કયામતો પર વળતર';

  @override
  String get labelDebtToEquity => 'દેવું / ઇક્વિટી';

  @override
  String get labelCurrentRatio => 'કરન્ટ રેશિયો';

  @override
  String get labelRevenueGrowth => 'આવક વૃદ્ધિ (YoY)';

  @override
  String get labelEpsGrowth => 'EPS વૃદ્ધિ (YoY)';

  @override
  String get labelDividendYield => 'ડિવિડન્ડ યીલ્ડ';

  @override
  String get labelDividendPerShare => 'શેર દીઠ ડિવિડન્ડ';

  @override
  String get labelPayoutRatio => 'પેઆઉટ રેશિયો';

  @override
  String get labelConsensus => 'સર્વસંમતિ';

  @override
  String get ratingStrongBuy => 'મજબૂત ખરીદી';

  @override
  String get ratingBuy => 'ખરીદી';

  @override
  String get ratingHold => 'હોલ્ડ';

  @override
  String get ratingSell => 'વેચાણ';

  @override
  String get ratingStrongSell => 'મજબૂત વેચાણ';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count વિશ્લેષકો',
      one: '1 વિશ્લેષક',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'સમયગાળો: $period';
  }

  @override
  String get noNews => 'તાજેતરના કોઈ સમાચાર નથી.';

  @override
  String get openArticle => 'લેખ ખોલો';

  @override
  String get openLinkFailed => 'લિંક ખોલી શકાઈ નથી.';

  @override
  String get recognitionSummary => 'સારાંશ';

  @override
  String get recognitionEvidence => 'અમને આવું કેમ લાગે છે';

  @override
  String get recognitionRawText => 'છબીમાંથી વાંચેલું લખાણ';

  @override
  String get errMissingAnthropicKey =>
      'છબી ઓળખ ગોઠવેલી નથી (ANTHROPIC_API_KEY નથી). ટિકર જાતે દાખલ કરો.';

  @override
  String get errRecognitionUnreachable =>
      'ઓળખ સેવાનો સંપર્ક થઈ શક્યો નથી. તમારું ઇન્ટરનેટ કનેક્શન તપાસો.';

  @override
  String errRecognitionHttp(String status) {
    return 'ઓળખ સેવાએ ભૂલ પરત કરી (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'ઓળખ સેવા આ છબી પર પ્રક્રિયા કરી શકી નથી.';

  @override
  String get errRecognitionTruncated =>
      'ઓળખનો પ્રતિસાદ અધૂરો રહી ગયો. કૃપા કરીને ફરી પ્રયાસ કરો.';

  @override
  String get errRecognitionBadResponse => 'ઓળખ સેવા તરફથી અણધાર્યો પ્રતિસાદ.';

  @override
  String get errRecognitionEmpty => 'ઓળખ સેવાએ ખાલી પ્રતિસાદ પરત કર્યો.';

  @override
  String get errMissingFinnhubKey =>
      'માર્કેટ ડેટા ગોઠવેલો નથી (FINNHUB_API_KEY નથી).';

  @override
  String get errMarketUnreachable =>
      'માર્કેટ ડેટા સેવાનો સંપર્ક થઈ શક્યો નથી. તમારું ઇન્ટરનેટ કનેક્શન તપાસો.';

  @override
  String get errMarketRateLimited =>
      'માર્કેટ ડેટા સેવાને ઘણી બધી વિનંતીઓ મોકલાઈ. કૃપા કરીને એક મિનિટ રાહ જુઓ.';

  @override
  String errMarketHttp(String status) {
    return 'માર્કેટ ડેટા સેવાએ ભૂલ પરત કરી (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'માર્કેટ ડેટા સેવા તરફથી અણધાર્યો પ્રતિસાદ.';

  @override
  String errNoQuote(String symbol) {
    return '$symbol માટે કોઈ ભાવ ડેટા મળ્યો નથી.';
  }

  @override
  String errNoProfile(String symbol) {
    return '$symbol માટે કોઈ કંપની પ્રોફાઇલ મળી નથી.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'ડેમો મોડમાં ફક્ત $symbols ઉપલબ્ધ છે. લાઇવ ડેટા માટે FINNHUB_API_KEY ઉમેરો.';
  }

  @override
  String errUnknown(String detail) {
    return 'કંઈક ખોટું થયું: $detail';
  }

  @override
  String get newSearch => 'નવી શોધ';

  @override
  String get recentSearches => 'તાજેતરની';

  @override
  String get noRecentSearches => 'હજી સુધી કોઈ તાજેતરની શોધ નથી.';

  @override
  String get clearRecent => 'તાજેતરની સાફ કરો';

  @override
  String get greeting => 'આજે કયો શેર જોઈએ?';

  @override
  String get searchHint => 'ટિકર અથવા કંપનીનું નામ';

  @override
  String get attachImage => 'છબી જોડો';

  @override
  String get searchResultsTitle => 'શોધ પરિણામો';

  @override
  String errNoResults(String query) {
    return '“$query” માટે કોઈ શેર મળ્યા નથી.';
  }

  @override
  String get quickBarHint => 'ટિકર અથવા કંપનીનું નામ લખો…';

  @override
  String get openFullWindow => 'વિન્ડો ખોલો';

  @override
  String hotkeyHint(String shortcut) {
    return 'ગમે ત્યાંથી WhatStock ખોલવા માટે $shortcut દબાવો.';
  }

  @override
  String get trayOpen => 'WhatStock ખોલો';

  @override
  String get trayQuickSearch => 'ઝડપી શોધ';

  @override
  String get trayQuit => 'બહાર નીકળો';

  @override
  String get appearance => 'દેખાવ';

  @override
  String get themeSystem => 'સિસ્ટમ';

  @override
  String get themeDark => 'ડાર્ક';

  @override
  String get themeLight => 'લાઇટ';

  @override
  String get back => 'પાછળ';

  @override
  String get aiSectionTitle => 'AI વિશ્લેષણ';

  @override
  String get aiIntro =>
      'AI દ્વારા લખાયેલું વિગતવાર અવલોકન: તાજેતરના સમાચારોનો સારાંશ, વ્યવસાય, મજબૂતીઓ, જોખમો અને છુપાયેલાં પરિબળો, મૂલ્યાંકન, મનોવૈજ્ઞાનિક, સામાજિક, ટેક્નિકલ અને મેક્રો-આર્થિક દૃષ્ટિકોણથી દૃશ્યો સાથે ભાવનું અનુમાન, અને શેના પર નજર રાખવી.';

  @override
  String get aiGenerate => 'વિશ્લેષણ બનાવો';

  @override
  String get aiRegenerate => 'ફરી બનાવો';

  @override
  String get aiGenerating =>
      'વિશ્લેષણ તૈયાર થઈ રહ્યું છે… આમાં એક-બે મિનિટ લાગી શકે છે.';

  @override
  String get aiSources => 'સ્રોતો';

  @override
  String aiGeneratedAt(String time) {
    return 'બનાવ્યું: $time';
  }

  @override
  String get aiDisclaimer =>
      'જાહેર ડેટા અને તાજેતરના સમાચારો પર આધારિત AI-જનરેટેડ વિશ્લેષણ. તેમાં ભૂલો હોઈ શકે છે અથવા તે જૂનું હોઈ શકે છે, અને તે રોકાણ સલાહ નથી.';

  @override
  String get errAiNotConfigured =>
      'AI વિશ્લેષણ ગોઠવેલું નથી (ANTHROPIC_API_KEY નથી).';

  @override
  String get errAiUnreachable =>
      'AI સેવાનો સંપર્ક થઈ શક્યો નથી. તમારું ઇન્ટરનેટ કનેક્શન તપાસો.';

  @override
  String errAiHttp(String status) {
    return 'AI સેવાએ ભૂલ પરત કરી (HTTP $status).';
  }

  @override
  String get errAiRefused => 'AI સેવાએ આ શેરનું વિશ્લેષણ કરવાનો ઇનકાર કર્યો.';

  @override
  String get errAiBadResponse => 'AI સેવા તરફથી અણધાર્યો પ્રતિસાદ.';

  @override
  String get sectionChart => 'ભાવ ચાર્ટ';

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
      'વર્તમાન ડેટા સ્રોત પરથી ભાવનો ઇતિહાસ ઉપલબ્ધ નથી.';

  @override
  String get sectionStatements => 'નાણાકીય પત્રકો (વાર્ષિક)';

  @override
  String get labelFiscalYear => 'નાણાકીય વર્ષ';

  @override
  String get labelRevenue => 'આવક';

  @override
  String get labelNetIncome => 'ચોખ્ખો નફો';

  @override
  String get labelTotalAssets => 'કુલ અસ્કયામતો';

  @override
  String get labelTotalLiabilities => 'કુલ જવાબદારીઓ';

  @override
  String get labelEquity => 'શેરધારકોની ઇક્વિટી';

  @override
  String get labelOperatingCashFlow => 'ઑપરેટિંગ કૅશ ફ્લો';

  @override
  String get statementsUnavailable =>
      'આ શેર માટે જાહેર કરાયેલાં નાણાકીય પત્રકો ઉપલબ્ધ નથી.';

  @override
  String get launchAtLogin => 'લૉગિન વખતે શરૂ કરો';

  @override
  String get hotkeyLabel => 'ગ્લોબલ શૉર્ટકટ';

  @override
  String get hotkeyRecordHint => 'અહીં ક્લિક કરો, પછી નવું કી સંયોજન દબાવો';

  @override
  String get hotkeyReset => 'ડિફૉલ્ટ પર રીસેટ કરો';

  @override
  String get pasteImage => 'ક્લિપબોર્ડમાંથી છબી પેસ્ટ કરો';

  @override
  String get errClipboardNoImage => 'ક્લિપબોર્ડ પર કોઈ છબી નથી.';

  @override
  String get favorites => 'મનપસંદ';

  @override
  String get addToFavorites => 'મનપસંદમાં ઉમેરો';

  @override
  String get removeFromFavorites => 'મનપસંદમાંથી કાઢી નાખો';

  @override
  String get noFavorites =>
      'હજી સુધી કોઈ મનપસંદ નથી. ઉમેરવા માટે કોઈ શેર પરના તારા પર ટૅપ કરો.';

  @override
  String get displayCurrency => 'પ્રદર્શિત ચલણ';

  @override
  String get displayCurrencyNone => 'ફક્ત શેરનું પોતાનું ચલણ';

  @override
  String labelConverted(String currency) {
    return '≈ $currencyમાં';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'દર: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'અપડેટ';

  @override
  String currentVersion(String version) {
    return 'વર્ઝન $version';
  }

  @override
  String get autoUpdate => 'અપડેટ આપમેળે ઇન્સ્ટૉલ કરો';

  @override
  String get checkForUpdates => 'અપડેટ માટે તપાસો';

  @override
  String get updateChecking => 'અપડેટ માટે તપાસી રહ્યાં છીએ…';

  @override
  String get updateUpToDate => 'તમે નવીનતમ વર્ઝન પર છો.';

  @override
  String updateAvailable(String version) {
    return 'વર્ઝન $version ઉપલબ્ધ છે.';
  }

  @override
  String get updateDownloading => 'અપડેટ બૅકગ્રાઉન્ડમાં ડાઉનલોડ થઈ રહ્યું છે…';

  @override
  String get updateDownloaded =>
      'અપડેટ તૈયાર છે. ઇન્સ્ટૉલ કરવા માટે ફરી શરૂ કરો.';

  @override
  String get updateNow => 'અપડેટ કરો';

  @override
  String get restartNow => 'ફરી શરૂ કરો';

  @override
  String get updatesViaStore => 'અપડેટ ઍપ સ્ટોર દ્વારા આપમેળે આવે છે.';

  @override
  String get updateCheckFailed => 'અપડેટ માટે તપાસી શકાયું નથી.';

  @override
  String get subscription => 'સબ્સ્ક્રિપ્શન';

  @override
  String get planTrial => 'ટ્રાયલ';

  @override
  String get planNormal => 'સામાન્ય';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'કોઈ સક્રિય પ્લાન નથી';

  @override
  String planAnalysesPerMonth(int count) {
    return 'દર મહિને $count વિશ્લેષણ';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$count વિશ્લેષણ સાથે $days દિવસની મફત ટ્રાયલ';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'ટ્રાયલના $days દિવસ બાકી',
      one: 'ટ્રાયલનો 1 દિવસ બાકી',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'તમારી મફત ટ્રાયલ પૂરી થઈ ગઈ છે. વિશ્લેષણ ચાલુ રાખવા માટે કોઈ પ્લાન પસંદ કરો.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'આ સમયગાળામાં $totalમાંથી $remaining વિશ્લેષણ બાકી';
  }

  @override
  String extraCredits(int count) {
    return '$count વધારાનાં વિશ્લેષણ';
  }

  @override
  String renewsOn(String date) {
    return '$dateના રોજ રિન્યૂ થશે';
  }

  @override
  String get choosePlan => 'પ્લાન પસંદ કરો';

  @override
  String get currentPlan => 'વર્તમાન પ્લાન';

  @override
  String get subscribe => 'સબ્સ્ક્રાઇબ કરો';

  @override
  String get perMonth => '/ મહિને';

  @override
  String get extraPacksTitle => 'વધુ જોઈએ છે? વધારાનાં વિશ્લેષણ ખરીદો';

  @override
  String get extraPacksHint =>
      'વધારાનાં વિશ્લેષણની મુદત ક્યારેય પૂરી થતી નથી અને તે તમારા માસિક ક્વોટા પછી વપરાય છે.';

  @override
  String get buy => 'ખરીદો';

  @override
  String get restorePurchases => 'ખરીદીઓ પુનઃસ્થાપિત કરો';

  @override
  String get manageSubscription => 'સબ્સ્ક્રિપ્શન મેનેજ કરો';

  @override
  String get purchaseSuccess => 'આભાર! તમારી ખરીદી સક્રિય છે.';

  @override
  String get purchasePending => 'ખરીદી બાકી છે…';

  @override
  String get purchaseFailed => 'ખરીદી પૂર્ણ થઈ શકી નથી.';

  @override
  String get purchaseCanceled => 'ખરીદી રદ થઈ.';

  @override
  String get billingUnavailable =>
      'આ પ્લૅટફૉર્મ પર હજી ખરીદી ઉપલબ્ધ નથી. તમારા ફોન કે Mac પર સબ્સ્ક્રાઇબ કરો; તમારો પ્લાન દરેક ડિવાઇસ પર કામ કરશે.';

  @override
  String get errQuotaExceeded =>
      'આ સમયગાળા માટે તમારી પાસે કોઈ વિશ્લેષણ બાકી નથી. તમારો પ્લાન અપગ્રેડ કરો અથવા વધારાનાં વિશ્લેષણ ખરીદો.';

  @override
  String get errTrialExpired =>
      'તમારી મફત ટ્રાયલ પૂરી થઈ ગઈ છે. ચાલુ રાખવા માટે કોઈ પ્લાન પસંદ કરો.';

  @override
  String get errNoPlan => 'AI વિશ્લેષણ માટે સક્રિય પ્લાન જરૂરી છે.';

  @override
  String get viewPlans => 'પ્લાન જુઓ';

  @override
  String get usageTitle => 'વપરાશ';

  @override
  String get demoPurchaseNote =>
      'ડેમો બિલિંગ: આ પ્લૅટફૉર્મ પર ખરીદીઓ સિમ્યુલેટ કરવામાં આવે છે.';

  @override
  String get mostPopular => 'સૌથી લોકપ્રિય';

  @override
  String get bestValue => 'શ્રેષ્ઠ મૂલ્ય';

  @override
  String get planFeaturesCommon =>
      'ફોટો ઓળખ, લાઇવ ડેટા, ચાર્ટ, મનપસંદ અને તમામ 120 ભાષાઓ દરેક પ્લાનમાં સામેલ છે. ક્વોટા AI વિશ્લેષણ પર લાગુ પડે છે.';

  @override
  String get searchLanguages => 'ભાષાઓ શોધો…';

  @override
  String get noLanguageMatch => 'કોઈ ભાષા મેળ ખાતી નથી.';

  @override
  String get aiSettings => 'AI વિશ્લેષણ';

  @override
  String get aiLength => 'લંબાઈ';

  @override
  String get aiDepthBrief => 'ટૂંકું';

  @override
  String get aiDepthStandard => 'માનક';

  @override
  String get aiDepthDeep => 'વિગતવાર';

  @override
  String get aiDepthBriefDesc => 'મુખ્ય વાતો, ઝડપથી.';

  @override
  String get aiDepthStandardDesc => 'દરેક વિભાગ સાથેનો સંપૂર્ણ અહેવાલ.';

  @override
  String get aiDepthDeepDesc =>
      'વધુ વેબ શોધ, સમકક્ષ કંપનીઓ સાથે સરખામણી અને વધુ ઊંડી વિગતો.';

  @override
  String aiDepthWords(String min, String max) {
    return 'આશરે $min–$max શબ્દો';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count વિશ્લેષણ વપરાય છે',
      one: '1 વિશ્લેષણ વપરાય છે',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'વાચક સ્તર';

  @override
  String get aiReaderBeginner => 'શિખાઉ';

  @override
  String get aiReaderExperienced => 'અનુભવી';

  @override
  String get aiReaderBeginnerDesc =>
      'સરળ ભાષા; દરેક ટેક્નિકલ શબ્દ સમજાવવામાં આવે છે.';

  @override
  String get aiReaderExperiencedDesc =>
      'માનક નાણાકીય પરિભાષા સાથે વધુ ઘટ્ટ લખાણ.';

  @override
  String get aiCounterArgument => 'સૌથી મજબૂત વિરોધી દલીલ';

  @override
  String get aiCounterArgumentDesc =>
      'સારાંશ હંમેશાં પોતાના જ નિષ્કર્ષ વિરુદ્ધની સૌથી મજબૂત દલીલ સાથે પૂરો થાય છે.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'તમારા પ્લાનમાં વિશ્લેષણ દીઠ વધુમાં વધુ $count વેબ શોધ',
      one: 'તમારા પ્લાનમાં વિશ્લેષણ દીઠ વધુમાં વધુ 1 વેબ શોધ',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'પ્લાન મુજબ માનક લંબાઈ: સામાન્ય $normal, Pro $pro, Max $max, Ultra $ultra. ટૂંકામાં 2 ઓછી, વિગતવારમાં 2 વધુ.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'વધુમાં વધુ $count વેબ શોધ',
      one: 'વધુમાં વધુ 1 વેબ શોધ',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'વિશ્લેષણ દીઠ $count વેબ શોધ',
      one: 'વિશ્લેષણ દીઠ 1 વેબ શોધ',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'આ લંબાઈ માટે $needed વિશ્લેષણ જોઈએ, પણ ફક્ત $left બાકી છે. સેટિંગમાં ટૂંકી લંબાઈ પસંદ કરો અથવા વધુ વિશ્લેષણ મેળવો.';
  }

  @override
  String get outlookMarketMood => 'બજારનો મૂડ';

  @override
  String get moodVeryPessimistic => 'ખૂબ નિરાશાવાદી';

  @override
  String get moodPessimistic => 'નિરાશાવાદી';

  @override
  String get moodNeutral => 'તટસ્થ';

  @override
  String get moodOptimistic => 'આશાવાદી';

  @override
  String get moodVeryOptimistic => 'ખૂબ આશાવાદી';

  @override
  String get scenarioBull => 'તેજીનું દૃશ્ય';

  @override
  String get scenarioBase => 'આધાર દૃશ્ય';

  @override
  String get scenarioBear => 'મંદીનું દૃશ્ય';

  @override
  String outlookCurrentPrice(String price) {
    return 'વર્તમાન ભાવ: $price';
  }

  @override
  String get outlookKeyLevels => 'મુખ્ય સ્તરો';

  @override
  String get keyLevelSupport => 'સપોર્ટ';

  @override
  String get keyLevelResistance => 'રેઝિસ્ટન્સ';

  @override
  String get keyLevelAnchor => 'એન્કર સ્તર';

  @override
  String get upcomingEvents => 'આગામી ઘટનાઓ';

  @override
  String get outlookChartNote =>
      'સૂચક રેન્જ; સંભાવનાઓ આશરે અંદાજ છે, આગાહીઓ નહીં.';

  @override
  String get accountTitle => 'એકાઉન્ટ';

  @override
  String get signIn => 'સાઇન ઇન કરો';

  @override
  String get signOut => 'સાઇન આઉટ કરો';

  @override
  String get notSignedIn => 'સાઇન ઇન કરેલું નથી';

  @override
  String get accountBenefit =>
      'સાઇન ઇન કરો જેથી તમારું સબ્સ્ક્રિપ્શન તમારાં બધાં ડિવાઇસ પર કામ કરે.';

  @override
  String get accountSyncedNote =>
      'તમારું સબ્સ્ક્રિપ્શન અને બાકી વિશ્લેષણ દરેક ડિવાઇસ પર એકસરખાં રહે છે.';

  @override
  String get signInTitle => 'WhatStockમાં સાઇન ઇન કરો';

  @override
  String get emailLabel => 'ઇમેઇલ સરનામું';

  @override
  String get continueWithEmail => 'ઇમેઇલ સાથે ચાલુ રાખો';

  @override
  String codeSentTo(String email) {
    return 'અમે $email પર 6 અંકનો કોડ મોકલ્યો છે. તે 10 મિનિટ માટે માન્ય છે.';
  }

  @override
  String get codeLabel => 'સાઇન-ઇન કોડ';

  @override
  String get resendCode => 'નવો કોડ મોકલો';

  @override
  String get useDifferentEmail => 'બીજો ઇમેઇલ વાપરો';

  @override
  String get errInvalidCode => 'કોડ ખોટો છે અથવા તેની મુદત પૂરી થઈ ગઈ છે.';

  @override
  String get errInvalidEmail => 'કૃપા કરીને માન્ય ઇમેઇલ સરનામું દાખલ કરો.';

  @override
  String get errSignInFailed =>
      'સાઇન ઇન નિષ્ફળ થયું. તમારું કનેક્શન તપાસો અને ફરી પ્રયાસ કરો.';

  @override
  String get checkoutWaiting =>
      'તમારા બ્રાઉઝરમાં ચુકવણી પૂર્ણ કરો. તે પૂરું થતાં જ ઍપ આપમેળે અપડેટ થશે.';

  @override
  String get paymentViaStripe =>
      'Stripe દ્વારા તમારા બ્રાઉઝરમાં સુરક્ષિત ચુકવણી. ગમે ત્યારે રદ કરો.';

  @override
  String get paymentViaStore =>
      'બિલિંગ તમારા App Store અથવા Google Play એકાઉન્ટ દ્વારા થાય છે. સ્ટોર સેટિંગમાં ગમે ત્યારે રદ કરો.';

  @override
  String get keySpace => 'સ્પેસ';

  @override
  String get doubleOptionTitle => 'Option બે વાર દબાવો';

  @override
  String get doubleOptionSubtitle =>
      'Option કી ઝડપથી બે વાર દબાવવાથી પણ WhatStock ખૂલે છે.';

  @override
  String get doubleOptionPermission =>
      'બીજી ઍપમાં પણ આ કામ કરે તે માટે, સિસ્ટમ સેટિંગ → ગોપનીયતા અને સુરક્ષા → ઇનપુટ મૉનિટરિંગમાં WhatStockને મંજૂરી આપો, પછી ઍપ ફરી ખોલો.';

  @override
  String get openSystemSettings => 'સિસ્ટમ સેટિંગ ખોલો';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'ગમે ત્યાંથી WhatStock ખોલવા માટે $shortcut દબાવો અથવા Option બે વાર દબાવો.';
  }

  @override
  String get scenarioMostLikely => 'સૌથી સંભવિત';

  @override
  String get longTermToday => 'આજે';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years વર્ષ',
      one: '1 વર્ષ',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return 'દર વર્ષે $range';
  }

  @override
  String longTermLikely(String price) {
    return 'સૌથી સંભવિત $price';
  }

  @override
  String get confidenceLow => 'ઓછો વિશ્વાસ';

  @override
  String get confidenceMedium => 'મધ્યમ વિશ્વાસ';

  @override
  String get confidenceHigh => 'ઊંચો વિશ્વાસ';

  @override
  String get longTermNote =>
      'લાંબા ગાળાની રેન્જ જણાવેલી ધારણાઓ પર આધારિત છે અને સમય સાથે પહોળી થતી જાય છે. ભાવમાં ડિવિડન્ડ સામેલ નથી. આ આશરે અંદાજ છે, આગાહીઓ નહીં.';

  @override
  String get portfolio => 'પોર્ટફોલિયો';

  @override
  String get portfolioEmpty =>
      'હજી અહીં કંઈ નથી. કોઈ શેર ખોલો અને તમારી પાસેના શેર પર નજર રાખવા “પોર્ટફોલિયોમાં ઉમેરો” પર ટૅપ કરો.';

  @override
  String get portfolioLocalNote =>
      'ફક્ત આ ડિવાઇસ પર સાચવેલું છે. કુલ રકમ ECBના સંદર્ભ દરે રૂપાંતરિત થાય છે; ભાવ વિલંબિત હોઈ શકે છે.';

  @override
  String get addToPortfolio => 'પોર્ટફોલિયોમાં ઉમેરો';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol ઉમેરો';
  }

  @override
  String get portfolioQuantity => 'શેરની સંખ્યા';

  @override
  String portfolioBuyPrice(String currency) {
    return 'શેર દીઠ ભાવ ($currency)';
  }

  @override
  String get portfolioBuyDate => 'ખરીદીની તારીખ';

  @override
  String get portfolioAdd => 'ઉમેરો';

  @override
  String get portfolioInvalidNumber => 'શૂન્યથી મોટી સંખ્યા દાખલ કરો.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol તમારા પોર્ટફોલિયોમાં ઉમેરાયો.';
  }

  @override
  String get portfolioTotalValue => 'કુલ મૂલ્ય';

  @override
  String get portfolioToday => 'આજે';

  @override
  String get portfolioGainLoss => 'નફો/નુકસાન';

  @override
  String get portfolioInvested => 'રોકાણ';

  @override
  String get portfolioAllocation => 'ફાળવણી';

  @override
  String get portfolioPositions => 'પોઝિશન';

  @override
  String portfolioAvgCost(String price) {
    return 'સરેરાશ કિંમત $price';
  }

  @override
  String get portfolioYourPosition => 'તમારી પોઝિશન';

  @override
  String get portfolioPurchases => 'ખરીદીઓ';

  @override
  String get portfolioRemove => 'કાઢી નાખો';

  @override
  String get portfolioExcluded =>
      'જે પોઝિશનનો ભાવ કે વિનિમય દર ઉપલબ્ધ નથી, તે કુલ રકમમાં સામેલ નથી.';

  @override
  String get priceAlerts => 'ભાવ અલર્ટ';

  @override
  String get setPriceAlert => 'ભાવ અલર્ટ સેટ કરો';

  @override
  String alertDialogTitle(String symbol) {
    return 'ભાવ અલર્ટ · $symbol';
  }

  @override
  String get alertKindAbove => 'આનાથી ઉપર જાય';

  @override
  String get alertKindBelow => 'આનાથી નીચે જાય';

  @override
  String get alertKindMove => 'એક દિવસમાં મોટી વધઘટ';

  @override
  String alertTargetPrice(String currency) {
    return 'ભાવ ($currency)';
  }

  @override
  String get alertMovePercent => 'દૈનિક વધઘટ (%)';

  @override
  String get alertAlreadyMet => 'ભાવ પહેલેથી જ આ સ્તરને પાર કરી ગયો છે.';

  @override
  String get alertSave => 'અલર્ટ સેટ કરો';

  @override
  String alertCreated(String symbol) {
    return '$symbol માટે અલર્ટ સેટ થઈ ગયો.';
  }

  @override
  String get alertsEmpty =>
      'હજી કોઈ ભાવ અલર્ટ નથી. સેટ કરવા માટે કોઈ શેર ખોલો અને ઘંટડી પર ટૅપ કરો.';

  @override
  String get alertsNote =>
      'WhatStock ચાલુ હોય ત્યાં સુધી અલર્ટ દર 5 મિનિટે તપાસવામાં આવે છે. કમ્પ્યૂટર પર તે મેનૂ બાર અથવા સિસ્ટમ ટ્રેમાં ચાલતું રહે છે; ફોન પર હાલમાં અલર્ટ ફક્ત ઍપ ખુલ્લી હોય ત્યારે જ આવે છે.';

  @override
  String alertDescAbove(String price) {
    return '$priceથી ઉપર';
  }

  @override
  String alertDescBelow(String price) {
    return '$priceથી નીચે';
  }

  @override
  String alertDescMove(String percent) {
    return 'દૈનિક વધઘટ ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return '$dateના રોજ $price પર સક્રિય થયો';
  }

  @override
  String get alertRearm => 'ફરી સક્રિય કરો';

  @override
  String get alertDelete => 'ડિલીટ કરો';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol $priceથી ઉપર ગયો';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol $priceથી નીચે ગયો';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbolમાં આજે $percentની વધઘટ';
  }

  @override
  String alertHitBody(String price) {
    return 'વર્તમાન ભાવ: $price';
  }

  @override
  String get alertOpen => 'ખોલો';

  @override
  String get keepInTrayTitle => 'વિન્ડો બંધ હોય ત્યારે પણ ચાલુ રાખો';

  @override
  String get keepInTraySubtitle =>
      'WhatStock મેનૂ બાર અથવા સિસ્ટમ ટ્રેમાં રહે છે, જેથી શૉર્ટકટ અને ભાવ અલર્ટ કામ કરતાં રહે.';

  @override
  String get termsOfUse => 'ઉપયોગની શરતો';

  @override
  String get privacyPolicy => 'ગોપનીયતા નીતિ';

  @override
  String get subscriptionLegal =>
      'તમે રદ ન કરો ત્યાં સુધી સબ્સ્ક્રિપ્શન દર મહિને આપમેળે રિન્યૂ થાય છે. સબ્સ્ક્રાઇબ કરીને તમે ઉપયોગની શરતો અને ગોપનીયતા નીતિ સ્વીકારો છો.';

  @override
  String get deleteAccount => 'એકાઉન્ટ ડિલીટ કરો';

  @override
  String get deleteAccountTitle => 'તમારું એકાઉન્ટ ડિલીટ કરવું છે?';

  @override
  String get deleteAccountBody =>
      'તમારું એકાઉન્ટ અને અમારા સર્વર પર સંગ્રહિત બધું (ઇમેઇલ, ક્વોટા, વપરાશ) કાયમ માટે ડિલીટ થઈ જશે, અને નહીં વપરાયેલાં વિશ્લેષણ ગુમાવાશે. બ્રાઉઝરમાં ચૂકવેલું સબ્સ્ક્રિપ્શન તરત જ રદ થાય છે; App Store અથવા Google Play સબ્સ્ક્રિપ્શન સ્ટોરના સેટિંગમાં રદ કરવું પડશે.';

  @override
  String get deleteLocalData =>
      'આ ડિવાઇસ પરનો ડેટા પણ ડિલીટ કરો (પોર્ટફોલિયો, અલર્ટ, મનપસંદ, ઇતિહાસ, સાચવેલાં વિશ્લેષણ)';

  @override
  String get deleteAccountConfirm => 'કાયમ માટે ડિલીટ કરો';

  @override
  String get accountDeleted => 'તમારું એકાઉન્ટ ડિલીટ કરવામાં આવ્યું છે.';

  @override
  String get errDeleteAccount =>
      'એકાઉન્ટ ડિલીટ થઈ શક્યું નથી. તમારું કનેક્શન તપાસો અને ફરી પ્રયાસ કરો.';

  @override
  String get aiTrialBriefNote =>
      'ટ્રાયલનાં વિશ્લેષણ ટૂંકાં હોય છે અને વધુ ઝડપી AI મોડલથી બને છે. પ્લાન સાથે તમને અમારું સૌથી સક્ષમ AI, વધુ વેબ શોધ અને માનક તથા વિગતવાર લંબાઈ મળે છે.';

  @override
  String get billingMonthly => 'માસિક';

  @override
  String get billingYearly => 'વાર્ષિક';

  @override
  String get yearlyDiscount => '2 મહિના મફત';

  @override
  String get perYear => '/ વર્ષે';

  @override
  String pricePerMonthApprox(String price) {
    return 'દર મહિને ≈ $price';
  }

  @override
  String get subscriptionLegalYearly =>
      'તમે રદ ન કરો ત્યાં સુધી વાર્ષિક સબ્સ્ક્રિપ્શન દર વર્ષે આપમેળે રિન્યૂ થાય છે. સબ્સ્ક્રાઇબ કરીને તમે ઉપયોગની શરતો અને ગોપનીયતા નીતિ સ્વીકારો છો.';

  @override
  String get myAnalyses => 'મારા વિશ્લેષણ';

  @override
  String get navAlerts => 'અલર્ટ';
}
