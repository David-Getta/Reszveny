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
  String get labelYieldOnCost => 'ખર્ચ પર યીલ્ડ';

  @override
  String get labelDividendGrowth5y => 'ડિવિડન્ડ વૃદ્ધિ (5 વર્ષ)';

  @override
  String get dividendNone => 'છેલ્લા 12 મહિનામાં કોઈ ડિવિડન્ડ ચૂકવાયું નથી.';

  @override
  String get dividendOnYourShares => 'તમારા શેર પર, વાર્ષિક';

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
      one: '$count વિશ્લેષક',
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
      one: 'ટ્રાયલનો $days દિવસ બાકી',
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
      one: '$count વિશ્લેષણ વપરાય છે',
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
      one: 'તમારા પ્લાનમાં વિશ્લેષણ દીઠ વધુમાં વધુ $count વેબ શોધ',
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
      one: 'વધુમાં વધુ $count વેબ શોધ',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'વિશ્લેષણ દીઠ $count વેબ શોધ',
      one: 'વિશ્લેષણ દીઠ $count વેબ શોધ',
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
      one: '$years વર્ષ',
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
      'આ ડિવાઇસ પર અને સાઇન ઇન હો તો તમારા એકાઉન્ટમાં સાચવેલું છે. કુલ રકમ ECBના સંદર્ભ દરે રૂપાંતરિત થાય છે; ભાવ વિલંબિત હોઈ શકે છે.';

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
  String homeDividendsThisYear(String amount) {
    return 'આ વર્ષે ડિવિડન્ડ: $amount';
  }

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

  @override
  String get inviteTitle => 'બંધ પ્રિવ્યૂ';

  @override
  String get inviteBody =>
      'હાલ પૂરતું WhatStock ફક્ત આમંત્રણ દ્વારા જ ઉપલબ્ધ છે. તમને મળેલો આમંત્રણ કોડ દાખલ કરો.';

  @override
  String get inviteCodeLabel => 'આમંત્રણ કોડ';

  @override
  String get inviteContinue => 'ચાલુ રાખો';

  @override
  String get inviteInvalid => 'આ આમંત્રણ કોડ માન્ય નથી.';

  @override
  String get inviteExpired =>
      'આ આમંત્રણની મુદત પૂરી થઈ ગઈ છે. તમને આમંત્રણ આપનાર વ્યક્તિ પાસેથી નવો કોડ માંગો.';

  @override
  String get inviteDeviceLimit =>
      'આ આમંત્રણ કોડ પહેલેથી જ મહત્તમ સંખ્યાના ઉપકરણો પર વપરાઈ રહ્યો છે.';

  @override
  String get previewConfidential => 'ગોપનીય પ્રિવ્યૂ';

  @override
  String get errPreviewDailyLimit =>
      'આ પ્રિવ્યૂની આજની વિશ્લેષણ મર્યાદા પૂરી થઈ ગઈ છે. આવતીકાલે ફરી પ્રયાસ કરો.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count કલાક પહેલાં',
      one: '$count કલાક પહેલાં',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count દિવસ પહેલાં',
      one: '$count દિવસ પહેલાં',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'આ વિશ્લેષણ અપડેટ કરીએ?';

  @override
  String staleBody(String age) {
    return 'તે $age બનાવવામાં આવ્યું હતું. ત્યારથી ભાવ, સમાચાર અને પરિણામો બદલાઈ ગયા હોઈ શકે છે.';
  }

  @override
  String get staleKeep => 'અગાઉનું બતાવો';

  @override
  String get staleRefresh => 'નવું બનાવો';

  @override
  String seeAll(int count) {
    return 'બધા જુઓ ($count)';
  }

  @override
  String get searchAnalyses => 'તમારા વિશ્લેષણ શોધો';

  @override
  String get deleteAnalysis => 'કાઢી નાખો';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol વિશ્લેષણ કાઢી નાખ્યું';
  }

  @override
  String get keyLevelAlertHint =>
      'ભાવ કોઈ સ્તરે પહોંચે ત્યારે અલર્ટ મેળવવા માટે તે સ્તર પર ટૅપ કરો.';

  @override
  String get shareAnalysisTitle => 'વિશ્લેષણ શેર કરો';

  @override
  String get shareAsImage => 'છબી તરીકે શેર કરો';

  @override
  String get shareAsText => 'ટેક્સ્ટ તરીકે શેર કરો';

  @override
  String get shareCardFooter => 'WhatStock વડે બનાવેલ';

  @override
  String get shareCardDisclaimer => 'AI વિશ્લેષણ · રોકાણ સલાહ નથી';

  @override
  String get referralTitle => 'મિત્રોને આમંત્રણ આપો';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count વધારાનાં વિશ્લેષણ',
      one: '$count વધારાનું વિશ્લેષણ',
    );
    return 'તમારો કોડ શેર કરો. તમારા મિત્રને તરત જ $_temp0 મળશે, અને તેમના પ્રથમ વિશ્લેષણ પછી તમને પણ એટલાં જ મળશે.';
  }

  @override
  String get referralYourCode => 'તમારો કોડ';

  @override
  String referralStats(int invited, int rewarded) {
    return 'આમંત્રિત: $invited · પુરસ્કૃત: $rewarded';
  }

  @override
  String get referralHaveCode => 'મિત્ર પાસેથી કોડ મળ્યો છે?';

  @override
  String get referralRedeem => 'રિડીમ કરો';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count વધારાનાં વિશ્લેષણ ઉમેરાયાં. સ્વાગત છે!',
      one: '$count વધારાનું વિશ્લેષણ ઉમેરાયું. સ્વાગત છે!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'આ કોડ અસ્તિત્વમાં નથી. તપાસીને ફરી પ્રયાસ કરો.';

  @override
  String get referralErrOwn => 'તમે તમારો પોતાનો કોડ રિડીમ કરી શકતા નથી.';

  @override
  String get referralErrAlready =>
      'તમે પહેલેથી જ મિત્રનો કોડ રિડીમ કરી લીધો છે.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count વધારાનાં વિશ્લેષણ',
      one: '$count વધારાનું વિશ્લેષણ',
    );
    return 'હું WhatStock વડે શેરનું વિશ્લેષણ કરું છું: કોઈ શેરનો ફોટો લો અને AI તે સમજાવશે. મારા કોડ $code વડે તમને $_temp0 મળશે.';
  }

  @override
  String get referralCopied => 'કોડ કૉપિ થયો';

  @override
  String get onboardTitle1 => 'શેરનો ફોટો લો';

  @override
  String get onboardBody1 =>
      'બ્રોકરેજ ઍપની સ્ક્રીન, અખબાર કે કંપનીનો લોગો પૂરતો છે: WhatStock શેરને ઓળખે છે અને તેનો ભાવ, ચાર્ટ અને મુખ્ય આંકડા બતાવે છે.';

  @override
  String get onboardTitle2 => 'મિનિટોમાં સમજો';

  @override
  String get onboardBody2 =>
      'AI વિશ્લેષણ સમજાવે છે કે શેરને શું ચલાવે છે, તેનાં જોખમો, તેનું મૂલ્યાંકન અને ભાવ ક્યાં જઈ શકે તેનાં ત્રણ સંભવિત દૃશ્યો – સ્રોતો સાથે અને તમારી ભાષામાં.';

  @override
  String get onboardTitle3 => 'હંમેશાં અપડેટ રહો';

  @override
  String get onboardBody3 =>
      'મનપસંદ, તમારો પોર્ટફોલિયો અને ભાવ અલર્ટ તમને માહિતગાર રાખે છે. તમારાં વિશ્લેષણો તમારા ડિવાઇસ પર જ રહે છે, ગમે ત્યારે ફરી ખોલવા માટે તૈયાર.';

  @override
  String get onboardNext => 'આગળ';

  @override
  String get onboardStart => 'શરૂ કરો';

  @override
  String get onboardSkip => 'છોડો';

  @override
  String changesTitle(String date) {
    return 'અગાઉના વિશ્લેષણ પછી ($date)';
  }

  @override
  String get changesPrice => 'ભાવ';

  @override
  String get changesNoMajor => 'દૃષ્ટિકોણ ખાસ બદલાયો નથી.';

  @override
  String get changesPreviousSummary => 'અગાઉનો સારાંશ';

  @override
  String get telemetryTitle => 'WhatStock ને બહેતર બનાવવામાં મદદ કરો';

  @override
  String get telemetryBody =>
      'અનામી ઉપયોગના આંકડા અને ક્રેશ રિપોર્ટ શેર કરો: કઈ સુવિધાઓનો ઉપયોગ થાય છે અને શું ખોટું થયું. તમારા સ્ટૉક, વિશ્લેષણ કે વ્યક્તિગત ડેટા ક્યારેય શેર થતા નથી. તમે આને ગમે ત્યારે સેટિંગમાં બદલી શકો છો.';

  @override
  String get telemetryAllow => 'મંજૂરી આપો';

  @override
  String get telemetryDecline => 'ના, આભાર';

  @override
  String get telemetrySetting => 'અનામી આંકડા અને ક્રેશ રિપોર્ટ';

  @override
  String get telemetrySettingHint =>
      'સુવિધાઓનો કેટલી વાર ઉપયોગ થાય છે અને ભૂલના રિપોર્ટ, વ્યક્તિગત ડેટા અથવા તમારી શોધ અને વિશ્લેષણની સામગ્રી વિના.';

  @override
  String get askButton => 'આ વિશ્લેષણ વિશે પૂછો';

  @override
  String askTitle(String symbol) {
    return '$symbol વિશે પ્રશ્નો';
  }

  @override
  String get askIntro =>
      'વિશ્લેષણ વિશે કંઈ પણ પૂછો: કોઈ જોખમનો અર્થ શું છે, શું દૃષ્ટિકોણ બદલી શકે, કોઈ આંકડો કેવી રીતે ગણાયો. જવાબો આ વિશ્લેષણ પર આધારિત છે અને તે રોકાણ સલાહ નથી.';

  @override
  String get askHint => 'પ્રશ્ન લખો…';

  @override
  String get askSend => 'મોકલો';

  @override
  String get askThinking => 'વિચારી રહ્યું છે…';

  @override
  String get askSuggest1 => 'સૌથી મોટું જોખમ શું છે?';

  @override
  String get askSuggest2 => 'શું દૃષ્ટિકોણ બદલી શકે?';

  @override
  String get askSuggest3 => 'સરળ શબ્દોમાં સમજાવો';

  @override
  String get askMaxReached =>
      'આ વિશ્લેષણ માટે આ છેલ્લો પ્રશ્ન હતો. વધુ પૂછવા માટે નવું વિશ્લેષણ બનાવો.';

  @override
  String get errAskLimit =>
      'તમે આજની પ્રશ્નોની મર્યાદા સુધી પહોંચી ગયા છો. કૃપા કરીને આવતીકાલે ફરી પ્રયાસ કરો.';

  @override
  String get eventTomorrow => 'આવતીકાલે';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days દિવસમાં',
      one: '$days દિવસમાં',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'ત્રિમાસિક પરિણામો';

  @override
  String get eventBeforeOpen => 'બજાર ખૂલતાં પહેલાં';

  @override
  String get eventAfterClose => 'બજાર બંધ થયા પછી';

  @override
  String eventEpsEstimate(String value) {
    return 'અંદાજિત EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'તમારા વિશ્લેષણમાંથી';

  @override
  String get eventDividend => 'ડિવિડન્ડ અપેક્ષિત';

  @override
  String get eventDividendEstimate => 'તમારી નોંધેલી ચુકવણીઓ પરથી અંદાજિત';

  @override
  String get eventsHint =>
      'આગામી 90 દિવસ માટે તમારા મનપસંદ અને પોર્ટફોલિયોના શેરની પરિણામ તારીખો, તમારા વિશ્લેષણોએ દર્શાવેલી તારીખવાળી ઘટનાઓ, અને તમારી નોંધેલી ચુકવણીઓ પરથી અપેક્ષિત ડિવિડન્ડ.';

  @override
  String get eventsEmpty =>
      'આગામી 90 દિવસમાં કોઈ તારીખવાળી ઘટના નથી. અહીં પરિણામ તારીખો જોવા મનપસંદ અથવા પોર્ટફોલિયોમાં શેર ઉમેરો; નોંધેલા ડિવિડન્ડની અપેક્ષિત આગામી ચુકવણી અહીં દેખાય છે.';

  @override
  String get compareTitle => 'સરખામણી';

  @override
  String get compareAdd => 'સ્ટૉક ઉમેરો';

  @override
  String get compareRemove => 'દૂર કરો';

  @override
  String get compareTickerHint => 'ટિકર, દા.ત. MSFT';

  @override
  String get compareHint =>
      'મુખ્ય આંકડા બાજુ-બાજુમાં; દરેક પંક્તિમાં શ્રેષ્ઠ મૂલ્ય હાઇલાઇટ કરેલ છે. રકમ દરેક સ્ટૉકના પોતાના ચલણમાં છે.';

  @override
  String get compareNoAnalysis => 'હજુ કોઈ વિશ્લેષણ નથી';

  @override
  String get portfolioDividends => 'વાર્ષિક ડિવિડન્ડ';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent યીલ્ડ';
  }

  @override
  String get portfolioDividendNote =>
      'અપેક્ષિત વાર્ષિક ડિવિડન્ડ છેલ્લા 12 મહિનામાં ચૂકવાયેલા ડિવિડન્ડ પર આધારિત છે; ભવિષ્યની ચુકવણીની ખાતરી નથી.';

  @override
  String positionDividend(String amount) {
    return 'ડિવિડન્ડ: વર્ષે $amount';
  }

  @override
  String get chartAvgCost => 'તમારી સરેરાશ';

  @override
  String get chartAlertLevel => 'અલર્ટ';

  @override
  String get marketsToday => 'આજના બજારો';

  @override
  String get notesTitle => 'મારી નોંધો';

  @override
  String get notesHint =>
      'તમે તે કેમ ખરીદ્યો, તમે શેના પર નજર રાખો છો, શું થાય તો તમે વેચશો?';

  @override
  String get notesInfo =>
      'આ ડિવાઇસ પર અને સાઇન ઇન હો તો તમારા એકાઉન્ટમાં સાચવેલું છે. AI વિશ્લેષણ તમારી નોંધોને ધ્યાનમાં લે છે.';

  @override
  String notesSaved(String date) {
    return 'સાચવ્યું: $date';
  }

  @override
  String get peersTitle => 'સમાન કંપનીઓ';

  @override
  String get portfolioExport => 'CSV તરીકે નિકાસ કરો';

  @override
  String get portfolioImport => 'CSVમાંથી આયાત કરો';

  @override
  String get portfolioImportHint =>
      'દરેક લાઇનમાં એક ખરીદી પેસ્ટ કરો: ટિકર સિમ્બોલ, જથ્થો, કિંમત, ચલણ, તારીખ (YYYY-MM-DD). કૉલમને અલ્પવિરામ, અર્ધવિરામ અથવા ટૅબથી અલગ કરી શકાય છે; હેડર લાઇન વૈકલ્પિક છે.';

  @override
  String get portfolioImportButton => 'આયાત કરો';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count વ્યવહારો ઉમેરાયા',
      one: '$count વ્યવહાર ઉમેરાયો',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count લાઇન છોડી દેવાઈ',
      one: '$count લાઇન છોડી દેવાઈ',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'પોર્ટફોલિયો, મનપસંદ, ભાવ અલર્ટ અને નોંધો તમારા બધા ડિવાઇસ પર સિંક થાય છે.';

  @override
  String syncLast(String time) {
    return 'છેલ્લે સિંક: $time';
  }

  @override
  String get syncNow => 'હમણાં સિંક કરો';

  @override
  String get syncFailed => 'સિંક નિષ્ફળ થયું. તે આપમેળે ફરી પ્રયાસ કરશે.';

  @override
  String get alertEmailTitle => 'અલર્ટ ટ્રિગર થાય ત્યારે ઈ-મેઇલ';

  @override
  String get alertEmailOn =>
      'અમે દર થોડી મિનિટે તમારા અલર્ટ તપાસીએ છીએ અને ઍપ બંધ હોય ત્યારે પણ તમને ઈ-મેઇલ મોકલીએ છીએ.';

  @override
  String get alertEmailSignIn =>
      'ઍપ બંધ હોય ત્યારે પણ ઈ-મેઇલ પર અલર્ટ મેળવવા સેટિંગમાં તમારા ઈ-મેઇલથી સાઇન ઇન કરો.';

  @override
  String get portfolioHistory => 'સમય સાથે મૂલ્ય';

  @override
  String get portfolioReviewTitle => 'AI પોર્ટફોલિયો સમીક્ષા';

  @override
  String get portfolioReviewIntro =>
      'AI તમારા આખા પોર્ટફોલિયોને તપાસે છે: કેન્દ્રીકરણ, ક્ષેત્ર અને ચલણનું જોખમ, તમારા શેરોના સહિયારા જોખમો અને ડિવિડન્ડ. 1 વિશ્લેષણ વપરાય છે.';

  @override
  String get portfolioReviewButton => 'મારા પોર્ટફોલિયોની સમીક્ષા કરો';

  @override
  String get portfolioReviewAgain => 'ફરી સમીક્ષા કરો';

  @override
  String get portfolioReviewWorking => 'તમારા પોર્ટફોલિયોની સમીક્ષા થઈ રહી છે…';

  @override
  String get digestTitle => 'ઇમેઇલ દ્વારા સાપ્તાહિક સારાંશ';

  @override
  String get digestHint =>
      'દર સોમવારે: ગયા અઠવાડિયે તમારા મનપસંદ અને પોર્ટફોલિયો કેવા રહ્યા, અને તેમનાં આગામી પરિણામોની તારીખો.';

  @override
  String get benchmarkTitle => 'S&P 500 સાથે સરખામણી';

  @override
  String get benchmarkTitleIndex => 'કોઈ ઇન્ડેક્સ સાથે સરખામણી';

  @override
  String get benchmarkHintIndex =>
      'જાણે દરેક ખરીદીની રકમ એ જ દિવસે પસંદ કરેલા ઇન્ડેક્સને અનુસરતા ફંડમાં રોકાઈ હોય. ડિવિડન્ડ સામેલ નથી; ભૂતકાળનું વળતર ભવિષ્યના વળતરની આગાહી કરતું નથી.';

  @override
  String get benchmarkYours => 'તમારી ખરીદી';

  @override
  String benchmarkAhead(String points) {
    return 'ઇન્ડેક્સ કરતાં $points ટકાવારી પોઇન્ટ વધુ સારું';
  }

  @override
  String benchmarkBehind(String points) {
    return 'ઇન્ડેક્સ કરતાં $points ટકાવારી પોઇન્ટ પાછળ';
  }

  @override
  String get portfolioSell => 'વેચો';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbol વેચો';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'શેર દીઠ વેચાણ ભાવ ($currency)';
  }

  @override
  String get portfolioSellDate => 'વેચાણની તારીખ';

  @override
  String get portfolioSellAll => 'બધા';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'તમારી પાસે $quantity છે';
  }

  @override
  String get portfolioSold => 'વેચ્યા';

  @override
  String get portfolioRealized => 'પ્રાપ્ત';

  @override
  String get portfolioClosed => 'બંધ પોઝિશન';

  @override
  String get portfolioClosedNote => 'બધા શેર વેચાઈ ગયા';

  @override
  String get portfolioTransactions => 'વ્યવહારો';

  @override
  String get portfolioRealizedByYear => 'વર્ષ પ્રમાણે પ્રાપ્ત નફો';

  @override
  String get portfolioRealizedHint =>
      'વેચાણ પહેલા તમારી સૌથી જૂની ખરીદીઓ સાથે મેળવવામાં આવે છે (FIFO), આજના વિનિમય દરે રૂપાંતરિત. તમારા ટેક્સ રિટર્ન માટે તમારા બ્રોકરના સ્ટેટમેન્ટનો ઉપયોગ કરો.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'આ વિશ્લેષણ પછી નવાં ત્રિમાસિક પરિણામો જાહેર થયાં છે ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'નવાં પરિણામો';

  @override
  String get portfolioImportBrokers =>
      'Revolut, Trading 212, Interactive Brokers, DEGIRO, Schwab, Fidelity અને Robinhood ના એક્સપોર્ટ પણ વેચાણ અને ડિવિડન્ડ (સ્રોત પર કપાયેલો કર બાદ કરીને) સહિત ઓળખાય છે; જમા રકમ છોડી દેવાય છે.';

  @override
  String get portfolioImportFile => 'ફાઇલ પસંદ કરો';

  @override
  String offlineBanner(String time) {
    return 'કનેક્શન નથી – છેલ્લે સાચવેલો ડેટા બતાવવામાં આવે છે ($time).';
  }

  @override
  String get glossMarketCap =>
      'શેરબજારમાં આખી કંપનીની કિંમત: શેરનો ભાવ × શેરની સંખ્યા.';

  @override
  String get glossSharesOutstanding =>
      'કંપનીએ કેટલા શેર બહાર પાડ્યા છે. જો તે વધે, તો દરેક શેરનો હિસ્સો નાનો થાય છે; બાયબૅક તેને ઘટાડે છે.';

  @override
  String get glossPeTrailing =>
      'ભાવ ÷ છેલ્લા 12 મહિનાની શેર દીઠ કમાણી: હાલના નફાના કેટલા વર્ષ માટે તમે ચૂકવો છો. ઓછો એટલે સસ્તું, પણ ઝડપથી વધતી કંપનીઓનો P/E સામાન્ય રીતે ઊંચો હોય છે.';

  @override
  String get glossPeForward =>
      'P/E જેવું જ, પણ આગામી 12 મહિના માટે વિશ્લેષકો જે નફાની અપેક્ષા રાખે છે તેની સાથે. ટ્રેલિંગ P/E કરતાં ઓછું હોય તો નફો વધવાની અપેક્ષા છે.';

  @override
  String get glossPb =>
      'ભાવ ÷ શેર દીઠ બુક વેલ્યુ (અસ્કયામતો બાદ દેવું). લગભગ 1 એટલે બજાર કંપનીને કાગળ પર તેની માલિકી જેટલી આંકે છે.';

  @override
  String get glossPs =>
      'બજાર મૂલ્ય ÷ વાર્ષિક આવક. જે કંપનીઓનો નફો હજી ઓછો કે શૂન્ય હોય તેમના માટે ઉપયોગી; એક જ ઉદ્યોગમાં સરખામણી કરો.';

  @override
  String get glossEvToFcf =>
      'દેવા સહિત કંપનીનું મૂલ્ય (EV) ÷ રોકાણો પછી વર્ષમાં તે જે રોકડ પેદા કરે છે તે. ઓછું એટલે કિંમતની સામે તમને વધુ રોકડ મળે છે.';

  @override
  String get glossPeg =>
      'P/E ÷ અપેક્ષિત વાર્ષિક નફા વૃદ્ધિ (%). લગભગ 1 ઘણીવાર વાજબી ગણાય છે; તે P/E ને વૃદ્ધિના સંદર્ભમાં મૂકે છે.';

  @override
  String get glossEps =>
      'છેલ્લા 12 મહિનામાં શેર દીઠ નફો. વર્ષોવર્ષ વધતો EPS તંદુરસ્ત કંપનીના સૌથી મજબૂત સંકેતોમાંનો એક છે.';

  @override
  String get glossBeta =>
      'શેર બજાર સાથે કેટલો ઉપર-નીચે થાય છે: 1 = બજાર જેવો, 1.5 = લગભગ 50% મોટી વધઘટ, 1 થી ઓછો = વધુ શાંત.';

  @override
  String get glossRevenueTtm =>
      'છેલ્લા 12 મહિનાનું કુલ વેચાણ, કોઈપણ ખર્ચ પહેલાં.';

  @override
  String get glossNetIncomeTtm =>
      'છેલ્લા 12 મહિનામાં તમામ ખર્ચ, વ્યાજ અને કર પછી બચેલો નફો.';

  @override
  String get glossGrossMargin =>
      'ઉત્પાદનોના સીધા ખર્ચ પછી આવકનો બચતો હિસ્સો. ઊંચું માર્જિન ઘણીવાર ભાવ નક્કી કરવાની તાકાત દર્શાવે છે.';

  @override
  String get glossOperatingMargin =>
      'વ્યવસાય ચલાવ્યા પછી (પગાર, ભાડું, માર્કેટિંગ) આવકનો બચતો હિસ્સો, વ્યાજ અને કર પહેલાં.';

  @override
  String get glossNetMargin =>
      'આવકનો એ હિસ્સો જે અંતિમ નફો બને છે. 20% એટલે દર 100 ના વેચાણમાંથી 20 નફો છે.';

  @override
  String get glossRoe =>
      'ઇક્વિટી પર વળતર: વાર્ષિક નફો ÷ માલિકોની મૂડી. મેનેજમેન્ટ શેરધારકોના પૈસાનો કેટલો સારો ઉપયોગ કરે છે તે બતાવે છે; લગભગ 15% થી વધુ મજબૂત ગણાય.';

  @override
  String get glossRoa =>
      'અસ્કયામતો પર વળતર: વાર્ષિક નફો ÷ કંપનીની તમામ અસ્કયામતો. એક જ ઉદ્યોગમાં સરખામણી કરો.';

  @override
  String get glossDebtToEquity =>
      'દેવું ÷ માલિકોની મૂડી. વધુ એટલે વધુ ઉધાર પૈસા: વ્યાજદર વધે કે ધંધો ધીમો પડે ત્યારે વધુ જોખમ.';

  @override
  String get glossCurrentRatio =>
      'ટૂંકા ગાળાની અસ્કયામતો ÷ એક વર્ષમાં ચૂકવવાના બિલ. 1 થી વધુ એટલે કંપની નજીકના બિલ ચૂકવી શકે છે.';

  @override
  String get glossRevenueGrowth => 'એક વર્ષ પહેલાંની સરખામણીમાં આવક કેટલી વધી.';

  @override
  String get glossEpsGrowth =>
      'એક વર્ષ પહેલાંની સરખામણીમાં શેર દીઠ નફો કેટલો વધ્યો.';

  @override
  String get glossDividendYield =>
      'વાર્ષિક ડિવિડન્ડ ÷ શેરનો ભાવ: તમે ચૂકવેલી રકમના ટકા તરીકે દર વર્ષે મળતી રોકડ આવક.';

  @override
  String get glossDividendPerShare =>
      'છેલ્લા વર્ષમાં એક શેર પર ચૂકવાયેલ ડિવિડન્ડ.';

  @override
  String get glossPayoutRatio =>
      'નફાનો કેટલો હિસ્સો ડિવિડન્ડ તરીકે ચૂકવાય છે. 100% થી વધુ હોય તો કંપની કમાણી કરતાં વધુ ચૂકવે છે, જે ભાગ્યે જ ટકે છે.';

  @override
  String get portfolioBeta => 'પોર્ટફોલિયો બીટા';

  @override
  String get glossPortfolioBeta =>
      'તમારા શેરનો બીટા, તેમના મૂલ્ય મુજબ ભારિત: બજાર 1% ખસે ત્યારે તમારા શેર આશરે કેટલા ટકા ખસે છે. 1 થી વધુ હોય તો તે બજાર કરતાં વધુ વધઘટ કરે છે, 1 થી ઓછો હોય તો ઓછી. રોકડ તેમાં સામેલ નથી.';

  @override
  String get portfolioTop3 => 'ટોચની 3 પોઝિશન';

  @override
  String get glossPortfolioTop3 =>
      'તમારા શેરના મૂલ્યનો કેટલો ભાગ તમારી ત્રણ સૌથી મોટી પોઝિશનમાં છે. તે જેટલું વધારે, એક જ કંપની વિશેના ખરાબ સમાચાર આખા પોર્ટફોલિયોને એટલું વધુ નુકસાન પહોંચાડી શકે.';

  @override
  String get glossDividendGrowth5y =>
      'છેલ્લાં પાંચ વર્ષમાં શેર દીઠ ડિવિડન્ડ દર વર્ષે સરેરાશ કેટલું વધ્યું. સ્થિર વૃદ્ધિનો સામાન્ય રીતે અર્થ એ છે કે કંપનીને પોતાના રોકડ પ્રવાહ પર વિશ્વાસ છે; ઘટાડો ઘણીવાર ચેતવણીનો સંકેત હોય છે.';

  @override
  String get glossYieldOnCost =>
      'છેલ્લા 12 મહિનામાં મળેલ ડિવિડન્ડને તમે હજુ રાખેલા શેર માટે ચૂકવેલી રકમથી ભાગતાં મળે છે. ડિવિડન્ડ યીલ્ડથી અલગ, આ આજના ભાવ પર નહીં પણ તમારા પોતાના ખરીદ ભાવ પર મપાય છે.';

  @override
  String get glossTitle => 'આનો અર્થ શું છે?';

  @override
  String get watchNewsTitle => 'તમારા શેરના સમાચાર';

  @override
  String get undo => 'પૂર્વવત્ કરો';

  @override
  String get watchSort => 'સૉર્ટ કરો';

  @override
  String get watchSortOwn => 'મારો ક્રમ';

  @override
  String get watchSortGainers => 'સૌથી વધુ વધનારા પહેલા';

  @override
  String get watchSortLosers => 'સૌથી વધુ ઘટનારા પહેલા';

  @override
  String get watchSortName => 'ટિકર મુજબ (A–Z)';

  @override
  String get watchHint =>
      'ક્રમ બદલવા હેન્ડલ ખેંચો, દૂર કરવા ડાબે સ્વાઇપ કરો. રેખા છેલ્લા 30 દિવસ બતાવે છે.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: તમારું વિશ્લેષણ તૈયાર છે.';
  }

  @override
  String alertFromCost(String price) {
    return 'તમારા સરેરાશ ખરીદ ભાવ ($price) પરથી:';
  }

  @override
  String get briefTitle => 'આજે તમારા શેર સાથે';

  @override
  String get briefButton => 'આજનો સારાંશ';

  @override
  String get briefHint =>
      'આજે તમારો પોર્ટફોલિયો અને મનપસંદ શેર કેવી રીતે ચાલ્યા અને તાજા સમાચાર તેમના વિશે શું કહે છે તેનો ટૂંકો AI સારાંશ. તેમાં કોઈ વિશ્લેષણ વપરાતું નથી.';

  @override
  String get briefRefresh => 'અપડેટ કરો';

  @override
  String get sectionEarnings => 'કમાણી';

  @override
  String earningsNext(String date) {
    return 'આગામી રિપોર્ટ: $date';
  }

  @override
  String get earningsExpected => 'અપેક્ષિત EPS';

  @override
  String get earningsReported => 'જાહેર કરેલ EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'છેલ્લા $total ત્રિમાસિકમાંથી $beatsમાં અપેક્ષિત EPS જેટલું કે તેથી વધુ',
      one: '$total ત્રિમાસિકમાંથી $beatsમાં અપેક્ષિત EPS જેટલું કે તેથી વધુ',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol આવતીકાલે ત્રિમાસિક પરિણામો જાહેર કરશે';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol આજે ત્રિમાસિક પરિણામો જાહેર કરશે';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return '$symbolનું ડિવિડન્ડ આજે અપેક્ષિત';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'લગભગ $amount. મળે ત્યારે તમારા પોર્ટફોલિયોમાં નોંધો.';
  }

  @override
  String get dividendRemindersTitle => 'ડિવિડન્ડ રિમાઇન્ડર';

  @override
  String get dividendRemindersSubtitle =>
      'તમારી નોંધેલી ચુકવણીઓની લય પરથી જે દિવસે ડિવિડન્ડ અપેક્ષિત હોય તે દિવસે સૂચના, જેથી તમે તેને નોંધી શકો';

  @override
  String get earningsRemindersTitle => 'પરિણામ રિમાઇન્ડર';

  @override
  String get earningsRemindersSubtitle =>
      'તમારા મનપસંદ અથવા પોર્ટફોલિયોના શેરના ત્રિમાસિક પરિણામો જાહેર થાય તેના આગલા દિવસે સૂચના';

  @override
  String addAllToFavorites(int count) {
    return 'બધા મનપસંદમાં ઉમેરો ($count)';
  }

  @override
  String get portfolioImportPhoto => 'સ્ક્રીનશોટમાંથી આયાત કરો';

  @override
  String get holdingsReading => 'તમારી પોઝિશન વાંચી રહ્યા છીએ…';

  @override
  String get holdingsReviewTitle => 'મળેલી પોઝિશન';

  @override
  String get holdingsReviewHint =>
      'ઉમેરતા પહેલાં આંકડા તપાસો. ભાવ આજનો ભાવ નથી, પણ શેર દીઠ તમારી સરેરાશ ખરીદ કિંમત છે.';

  @override
  String get holdingsNoPrice => 'છબીમાં સરેરાશ ખરીદ કિંમત નથી';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count પોઝિશન ઉમેરો',
      one: '$count પોઝિશન ઉમેરો',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'આ છબીમાં કોઈ શેર પોઝિશન મળી નથી. તમારા બ્રોકરના પોઝિશન અથવા હોલ્ડિંગ્સ પેજનો સ્ક્રીનશોટ અજમાવો.';

  @override
  String get week52Range => '52-સપ્તાહની રેન્જ';

  @override
  String week52BelowHigh(String percent) {
    return '52-સપ્તાહની ઊંચી સપાટીથી $percent નીચે';
  }

  @override
  String get week52AtHigh => '52-સપ્તાહની ઊંચી સપાટી પર';

  @override
  String get alertKindTrailing => 'ટોચથી નીચે જાય';

  @override
  String get alertTrailingPercent => 'ટોચથી ઘટાડો (%)';

  @override
  String get alertTrailingHint =>
      'ભાવ સાથે ઉપર જાય છે: સેટ કર્યા પછીની સૌથી ઊંચી સપાટીથી ભાવ આટલો ઘટે ત્યારે ચેતવણી આપે છે.';

  @override
  String alertDescTrailing(String percent) {
    return 'ટોચથી $percent ઘટાડો';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'અત્યાર સુધીની ટોચ: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol ટોચથી $percent ઘટ્યો';
  }

  @override
  String get sectionInsiders => 'ઇનસાઇડર વ્યવહારો';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ખરીદી',
      one: '$count ખરીદી',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count વેચાણ',
      one: '$count વેચાણ',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'ચોખ્ખું: $shares શેર';
  }

  @override
  String get insiderBuy => 'ખરીદ્યા';

  @override
  String get insiderSell => 'વેચ્યા';

  @override
  String get insiderHint =>
      'છેલ્લા 90 દિવસમાં અધિકારીઓ અને ડિરેક્ટરો દ્વારા ખુલ્લા બજારમાં ખરીદી અને વેચાણ (SEC Form 4). ઓપ્શનનો ઉપયોગ અને શેર એવોર્ડ ગણવામાં આવતા નથી.';

  @override
  String get insiderNone =>
      'છેલ્લા 90 દિવસમાં ખુલ્લા બજારમાં કોઈ ઇનસાઇડર ખરીદી કે વેચાણ નથી.';

  @override
  String get analystTrend => 'મહિને મહિને મંતવ્યો કેવી રીતે બદલાયા';

  @override
  String get watchListAll => 'બધા';

  @override
  String get watchListNew => 'નવી યાદી';

  @override
  String get watchListName => 'યાદીનું નામ';

  @override
  String get watchListRename => 'યાદીનું નામ બદલો';

  @override
  String get watchListDelete => 'યાદી કાઢી નાખો';

  @override
  String get watchListAddTo => 'યાદીમાં ઉમેરો';

  @override
  String get watchListEmpty =>
      'આ યાદીમાં હજી કોઈ શેર નથી. ઉમેરવા માટે શેરની બાજુમાં આવેલા યાદી બટન પર ટૅપ કરો.';

  @override
  String get portfolioAskTitle => 'તમારા પોર્ટફોલિયો વિશે પ્રશ્નો';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'બેકઅપ';

  @override
  String get backupSave => 'બેકઅપ સેવ કરો';

  @override
  String get backupSaveHint =>
      'તમારા મનપસંદ, યાદીઓ, પોર્ટફોલિયો, અલર્ટ અને નોંધો એક ફાઇલમાં.';

  @override
  String get backupRestore => 'બેકઅપમાંથી રિસ્ટોર કરો';

  @override
  String get backupRestoreHint =>
      'ફાઇલમાં જે છે તે ઉમેરે છે; તમારી પાસે અત્યારે જે છે તેમાંથી કશું ડિલીટ થતું નથી.';

  @override
  String get backupRestored => 'બેકઅપ રિસ્ટોર થયો.';

  @override
  String get backupInvalid => 'આ ફાઇલ WhatStock બેકઅપ નથી.';

  @override
  String get allocationPositions => 'શેર';

  @override
  String get allocationSectors => 'સેક્ટર';

  @override
  String get allocationCurrencies => 'ચલણ';

  @override
  String get allocationAccounts => 'ખાતાં';

  @override
  String get compareReturn1y => '1 વર્ષનું વળતર';

  @override
  String get compareFromHigh => '52-સપ્તાહની ઊંચી સપાટીથી અંતર';

  @override
  String get briefAutoTitle => 'દરરોજ સવારે દૈનિક સારાંશ';

  @override
  String get briefAutoSubtitle =>
      'ઍપ ચાલુ હોય ત્યારે સવારે 7:00 વાગ્યા પછી “આજે તમારા શેર સાથે” આપમેળે તૈયાર થાય છે; કમ્પ્યુટર પર એક સૂચના તમને જાણ કરે છે. તે તમારી દૈનિક પ્રશ્ન મર્યાદામાંથી જાય છે, કોઈ વિશ્લેષણ વપરાતું નથી.';

  @override
  String get targetsButton => 'લક્ષ્ય ફાળવણી';

  @override
  String get targetsTitle => 'લક્ષ્ય ફાળવણી';

  @override
  String get targetsHint =>
      'પોર્ટફોલિયોમાં દરેક શેરનો કેટલો હિસ્સો હોવો જોઈએ તે નક્કી કરો. લક્ષ્ય ન હોય તો ખાનું ખાલી રાખો. પછી ઍપ બતાવશે કે ત્યાં પહોંચવા શું ખરીદવું કે વેચવું.';

  @override
  String targetsSum(String percent) {
    return 'કુલ: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'ખરીદો ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'વેચો ≈ $amount';
  }

  @override
  String get rebalanceOk => 'લક્ષ્ય પર';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol એ અપેક્ષિત EPS વટાવ્યો';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol અપેક્ષિત EPS સુધી ન પહોંચ્યો';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'જાહેર કરેલ EPS $actual, અપેક્ષિત $estimate';
  }

  @override
  String get newsExplain => 'આનો અર્થ શું છે?';

  @override
  String get watchAlertAll => 'મોટી દૈનિક વધઘટ પર ચેતવણી';

  @override
  String get watchAlertAllHint =>
      'આ યાદીના દરેક શેર માટે ભાવ ચેતવણી: એક દિવસમાં આટલી ઉપર કે નીચે વધઘટ થાય ત્યારે જાણ કરશે. જેના પર પહેલેથી ચેતવણી છે, તે એમ જ રહેશે.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ચેતવણીઓ સેટ કરી',
      one: '$count ચેતવણી સેટ કરી',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'પ્રાપ્ત નફો નિકાસ કરો (CSV)';

  @override
  String get portfolioAnnualReturn => 'વાર્ષિક રિટર્ન';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / વર્ષ';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'નાણાં-ભારિત વાર્ષિક રિટર્ન (XIRR): તમે ક્યારે ખરીદ્યું અને વેચ્યું તે ધ્યાનમાં લે છે, તેથી પછીથી ઉમેરેલા નાણાં તેને વિકૃત કરતા નથી. તમારી પહેલી ખરીદી ઓછામાં ઓછી એક વર્ષ જૂની થાય ત્યારે બતાવવામાં આવે છે; ડિવિડન્ડ શામેલ નથી.';

  @override
  String get eventsAddToCalendar => 'કૅલેન્ડરમાં ઉમેરો (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'પોર્ટફોલિયો એલર્ટ';

  @override
  String get portfolioMoveAlertSubtitle =>
      'તમારો આખો પોર્ટફોલિયો એક દિવસમાં આટલો બદલાય ત્યારે સૂચના.';

  @override
  String get portfolioMoveAlertOff => 'બંધ';

  @override
  String portfolioMoveUp(String percent) {
    return 'આજે તમારો પોર્ટફોલિયો $percent વધ્યો';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'આજે તમારો પોર્ટફોલિયો $percent ઘટ્યો';
  }

  @override
  String get whatIfTitle => 'જો તમે રોકાણ કર્યું હોત તો?';

  @override
  String get whatIfAmount => 'રકમ';

  @override
  String whatIfResult(String amount, String period) {
    return '$period પહેલાં રોકાણ કરેલા $amount આજે થયા હોત';
  }

  @override
  String get whatIfNote =>
      'ફક્ત શેરના ભાવ પર આધારિત: ડિવિડન્ડ, ફી અને કર સામેલ નથી. ભૂતકાળનું વળતર ભવિષ્યના વળતરની આગાહી કરતું નથી.';

  @override
  String get watchShare => 'યાદી શેર કરો';

  @override
  String get watchImport => 'ટિકર ઉમેરો';

  @override
  String get watchImportHint =>
      'અલ્પવિરામ, સ્પેસ અથવા નવી લાઇનથી અલગ કરેલા ટિકર પેસ્ટ કરો – ઉદાહરણ તરીકે, કોઈએ તમારી સાથે શેર કરેલી યાદી.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count સ્ટૉક ઉમેરાયા',
      one: '$count સ્ટૉક ઉમેરાયો',
      zero: 'કોઈ નવા સ્ટૉક નથી',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'સૌથી મોટા પહેલા';

  @override
  String get positionsSortGain => 'સૌથી વધુ કુલ વળતર પહેલા';

  @override
  String get positionsSortToday => 'આજના શ્રેષ્ઠ પહેલા';

  @override
  String get chartMyBuys => 'તમારી ખરીદીઓ';

  @override
  String get chartMySells => 'તમારા વેચાણ';

  @override
  String get shortcutsTitle => 'કીબોર્ડ શૉર્ટકટ';

  @override
  String usMarketOpen(String time) {
    return 'યુએસ બજાર ખુલ્લું · $timeમાં બંધ થશે';
  }

  @override
  String usMarketClosed(String time) {
    return 'યુએસ બજાર બંધ · $timeમાં ખુલશે';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes મિનિટ';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours કલાક $minutes મિનિટ';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days દિવસ $hours કલાક';
  }

  @override
  String get dividendGoalSet => 'માસિક ડિવિડન્ડ લક્ષ્ય નક્કી કરો';

  @override
  String get dividendGoalTitle => 'માસિક ડિવિડન્ડ લક્ષ્ય';

  @override
  String get dividendGoalAmount => 'દર મહિને ડિવિડન્ડ';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'હાલની યીલ્ડ પર દર મહિને લગભગ $amount · $percent · લક્ષ્ય: $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'હાલની યીલ્ડ પર દર મહિને લગભગ $amount · લક્ષ્ય પૂર્ણ થયું: $goal';
  }

  @override
  String get portfolioAccount => 'ખાતું';

  @override
  String get portfolioAccountHint => 'દા.ત. TBSZ 2026 (વૈકલ્પિક)';

  @override
  String get portfolioAccountAdd => 'ખાતું જણાવો';

  @override
  String get portfolioAccountsAll => 'બધાં ખાતાં';

  @override
  String get portfolioAccountNote =>
      'ફક્ત આ ખાતાના વ્યવહારો અને ડિવિડન્ડ. રોકડ, લક્ષ્યો અને AI સમીક્ષા ‘બધાં ખાતાં’માં દેખાય છે.';

  @override
  String get portfolioNoAccount => 'ખાતા વિના';

  @override
  String portfolioFee(String currency) {
    return 'બ્રોકરેજ ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'બ્રોકરેજ ઉમેરો';

  @override
  String portfolioFeeRow(String amount) {
    return 'બ્રોકરેજ: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'વાર્ષિક સારાંશ';

  @override
  String get portfolioProceeds => 'વેચાણની આવક';

  @override
  String get portfolioCostBasis => 'ખરીદ ખર્ચ';

  @override
  String get portfolioFeesPaid => 'ચૂકવેલ બ્રોકરેજ';

  @override
  String get portfolioAnnualSummaryNote =>
      'રકમો મૂળ કરન્સીમાં છે, રૂપાંતરિત નથી. વેચાણની આવક વેચાણનું બ્રોકરેજ બાદ કરીને છે; ખરીદ ખર્ચમાં ખરીદીનું બ્રોકરેજ સામેલ છે (FIFO). ટેક્સ રિટર્ન માટે તમારા કર સત્તાવાળા માગે તે વિનિમય દરે રૂપાંતર કરો.';

  @override
  String get portfolioShare => 'કામગીરી શેર કરો';

  @override
  String get portfolioShareHeading => 'મારો પોર્ટફોલિયો';

  @override
  String get portfolioTopHoldings => 'સૌથી મોટી પોઝિશન';

  @override
  String get portfolioShareNote => 'ફક્ત ટકાવારી શેર થાય છે, કોઈ રકમ નહીં.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count પોઝિશન',
      one: '$count પોઝિશન',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'રોકાણ સલાહ નથી';

  @override
  String get contributionButton => 'નવા પૈસાનું રોકાણ કરો';

  @override
  String contributionAmount(String currency) {
    return 'રોકાણ કરવાની રકમ ($currency)';
  }

  @override
  String get contributionHint =>
      'ફક્ત ખરીદી, કોઈ વેચાણ નહીં: પોતાના લક્ષ્યથી સૌથી વધુ પાછળ રહેલી પોઝિશનને પહેલા પૈસા મળે છે.';

  @override
  String contributionShares(String shares) {
    return '≈ $shares શેર';
  }

  @override
  String contributionMissing(String symbols) {
    return '$symbols માટે વર્તમાન ભાવ ઉપલબ્ધ નથી: વહેંચણીમાં સામેલ નથી.';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'જો વાર્ષિક રિટર્ન ($rate) જળવાઈ રહે, તો તમે $year આસપાસ લક્ષ્ય પૂર્ણ કરશો.';
  }

  @override
  String get portfolioMaxDrawdown => 'સૌથી મોટો ઘટાડો';

  @override
  String get glossMaxDrawdown =>
      'તમારા શેરના મૂલ્યમાં અગાઉના કોઈ ઊંચા સ્તરથી પછીના કોઈ નીચા સ્તર સુધીનો સૌથી મોટો ઘટાડો, તમારી ખરીદી અને વેચાણની અસર વિના (સમય-ભારિત). તે બતાવે છે કે તમારો પોર્ટફોલિયો અત્યાર સુધીમાં કેટલા ઊંડા ઘટાડામાંથી પસાર થઈ ચૂક્યો છે.';

  @override
  String watchSince(String date) {
    return 'મનપસંદમાં ઉમેર્યા પછીથી ($date)';
  }

  @override
  String get portfolioSampleTry => 'નમૂના પોર્ટફોલિયો સાથે અજમાવો';

  @override
  String get portfolioSampleBanner =>
      'આ એક નમૂના પોર્ટફોલિયો છે. તેની સાથે તમારી પોતાની ખરીદીઓ ઉમેરો, અથવા તેને કાઢી નાખો.';

  @override
  String get portfolioSampleRemove => 'નમૂનો કાઢી નાખો';

  @override
  String get portfolioStopsAll => 'બધી પોઝિશન માટે ટ્રેલિંગ સ્ટોપ';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ટ્રેલિંગ સ્ટોપ સેટ કર્યા',
      one: '$count ટ્રેલિંગ સ્ટોપ સેટ કર્યો',
      zero: 'દરેક પોઝિશન પર પહેલેથી ટ્રેલિંગ સ્ટોપ છે',
    );
    return '$_temp0';
  }

  @override
  String portfolioSinceSale(String percent) {
    return 'વેચ્યા પછીથી $percent';
  }

  @override
  String get lotPreviewRealized => 'આ વેચાણ પર પ્રાપ્ત (FIFO):';

  @override
  String lotPreviewAverage(String after, String before) {
    return 'નવી સરેરાશ કિંમત: $after (હાલ $before)';
  }

  @override
  String get portfolioYtdReturn => 'આ વર્ષનું રિટર્ન';

  @override
  String get glossTwrYtd =>
      'વર્ષની શરૂઆતથી (અથવા તમારી પ્રથમ ખરીદીથી, જો તે આ વર્ષે થઈ હોય) સમય-ભારિત રિટર્ન: દરેક દિવસ તે દિવસે તમારી પાસે રહેલા શેરના ફેરફારને ગણે છે, અને દિવસોને એકબીજા સાથે જોડવામાં આવે છે – તમે જમા કરો કે ઉપાડો તે પૈસા રિટર્ન નથી, તેથી તેની સરખામણી કોઈ ઇન્ડેક્સ સાથે કરી શકાય છે. નીચે: એ જ સમયગાળામાં પસંદ કરેલો ઇન્ડેક્સ.';

  @override
  String alertDistance(String price, String percent) {
    return 'હાલ $price · $percent બાકી';
  }

  @override
  String get watchSortSince => 'ઉમેર્યા પછીના ફેરફાર મુજબ';

  @override
  String get portfolioTodayMovers => 'આજે સૌથી વધુ વધઘટ:';

  @override
  String get lotNoteAdd => 'નોંધ ઉમેરો';

  @override
  String get lotNoteBuyHint =>
      'તમે કેમ ખરીદો છો? તે તારીખ સાથે શેરની નોંધોમાં ઉમેરાશે.';

  @override
  String get lotNoteSellHint =>
      'તમે કેમ વેચો છો? તે તારીખ સાથે શેરની નોંધોમાં ઉમેરાશે.';

  @override
  String get lotNoteBought => 'ખરીદ્યા';

  @override
  String get positionHeld => 'હોલ્ડિંગ અવધિ';

  @override
  String durationMonths(int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months મહિના',
      one: '$months મહિનો',
    );
    return '$_temp0';
  }

  @override
  String durationDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days દિવસ',
      one: '$days દિવસ',
    );
    return '$_temp0';
  }

  @override
  String positionHeldSince(String date) {
    return '$dateથી';
  }

  @override
  String lotPreviewWeight(String after, String before) {
    return 'પછી પોર્ટફોલિયોમાં હિસ્સો: $after (હાલ $before)';
  }

  @override
  String lotFromCash(String amount) {
    return 'રોકડમાંથી ચૂકવો (હાલ $amount)';
  }

  @override
  String lotToCash(String amount) {
    return 'રોકડમાં ઉમેરો (હાલ $amount)';
  }

  @override
  String get onboardTitle4 => 'તમારા પોર્ટફોલિયો પર નજર રાખો';

  @override
  String get onboardBody4 =>
      'તમારા બ્રોકરનું એક્સપોર્ટ ઇમ્પોર્ટ કરો (Revolut, Trading 212, IBKR, DEGIRO, Schwab…) અથવા વ્યવહારો હાથે ઉમેરો: કોઈ ઇન્ડેક્સની સાથે તમારું રિટર્ન, તમારા ડિવિડન્ડ અને ટેક્સ રિટર્ન માટે વાર્ષિક સારાંશ જુઓ.';

  @override
  String get lotEdit => 'એડિટ કરો';

  @override
  String lotEditTitle(String symbol) {
    return 'વ્યવહાર એડિટ કરો · $symbol';
  }

  @override
  String get lotSave => 'સાચવો';

  @override
  String dividendEditTitle(String symbol) {
    return 'ડિવિડન્ડ એડિટ કરો · $symbol';
  }

  @override
  String get activityTitle => 'બધા વ્યવહારો';

  @override
  String get activitySearchHint => 'ટિકર મુજબ ફિલ્ટર કરો';

  @override
  String get activityNoMatch => 'ફિલ્ટર સાથે કોઈ વ્યવહાર મેળ ખાતો નથી.';

  @override
  String portfolioImportDuplicates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count પહેલેથી નોંધાયેલા, છોડી દેવાયા',
      one: '$count પહેલેથી નોંધાયેલ, છોડી દેવાયો',
    );
    return '$_temp0';
  }

  @override
  String get tickerChange => 'ટિકર ફેરફાર';

  @override
  String tickerChangeTitle(String symbol) {
    return 'ટિકર ફેરફાર · $symbol';
  }

  @override
  String get tickerChangeNew => 'નવો ટિકર';

  @override
  String get tickerChangeHint =>
      'જ્યારે કોઈ કંપની પોતાનો ટિકર બદલે (દા.ત. FB → META): બધા વ્યવહારો, ડિવિડન્ડ, સ્ટૉક સ્પ્લિટ, નોંધ અને અલર્ટ નવા ટિકર પર ખસેડાય છે.';

  @override
  String tickerChanged(String symbol) {
    return '$symbol પર ખસેડ્યું';
  }

  @override
  String get referralErrSignIn =>
      'મિત્રનો કોડ રિડીમ કરવા તમારા ઈ-મેઇલથી સાઇન ઇન કરો.';

  @override
  String get referralErrFull =>
      'આ કોડ પહેલેથી જ મહત્તમ વખત રિડીમ થઈ ચૂક્યો છે.';

  @override
  String portfolioGoalReachedBody(String value) {
    return 'તમારા પોર્ટફોલિયોનું મૂલ્ય હવે $value છે.';
  }

  @override
  String get portfolioGoalSet => 'લક્ષ્ય નક્કી કરો';

  @override
  String get portfolioGoalTitle => 'પોર્ટફોલિયો લક્ષ્ય';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · લક્ષ્ય: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'લક્ષ્ય પૂર્ણ થયું: $amount';
  }

  @override
  String get portfolioGoalRemove => 'લક્ષ્ય કાઢી નાખો';

  @override
  String get alertEdit => 'અલર્ટ એડિટ કરો';

  @override
  String get positionOpenLots => 'હજુ પણ ધરાવેલા (સૌથી જૂના પહેલા)';

  @override
  String get lotRemoved => 'વ્યવહાર કાઢી નાખ્યો';

  @override
  String get alertDeleted => 'ચેતવણી કાઢી નાખી';

  @override
  String get alertsClearTriggered => 'ટ્રિગર થયેલી ચેતવણીઓ સાફ કરો';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ચેતવણીઓ સાફ કરી',
      one: '$count ચેતવણી સાફ કરી',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'હોમ સ્ક્રીન';

  @override
  String get allocationCountries => 'દેશ';

  @override
  String get newsExplainNoteResearch =>
      'AI સમજૂતી: તે વેબ પર તથ્યો શોધે છે, લેખ ખોલે છે અને સ્રોત કેટલો વિશ્વસનીય છે તેનું મૂલ્યાંકન કરે છે. તે રોકાણ સલાહ નથી. તે તમારી દૈનિક પ્રશ્ન મર્યાદામાંથી જાય છે, કોઈ વિશ્લેષણ વપરાતું નથી.';

  @override
  String get sourceOfficial => 'અધિકૃત';

  @override
  String get sourcePressRelease => 'પ્રેસ રિલીઝ';

  @override
  String get sourceMajorNews => 'મુખ્ય મીડિયા';

  @override
  String get sourceOpinion => 'અભિપ્રાય';

  @override
  String get earningsSummaryButton => 'તાજેતરના રિપોર્ટમાં શું હતું?';

  @override
  String get earningsSummaryNote =>
      'કંપનીની પરિણામ જાહેરાત અને વેબ પર મળતા અખબારી અહેવાલોનો AI સારાંશ. તે રોકાણ સલાહ નથી. તે તમારી દૈનિક પ્રશ્ન મર્યાદામાંથી જાય છે, કોઈ વિશ્લેષણ વપરાતું નથી.';

  @override
  String get compareLastSurprise => 'ગત ત્રિમાસિક EPS વિ. અપેક્ષિત';

  @override
  String get compareNextReport => 'આગામી રિપોર્ટ';

  @override
  String get resolvingDescription => 'તમે કયો શેર કહો છો તે શોધી રહ્યા છીએ…';

  @override
  String get instrumentTitle => 'આ ઇન્સ્ટ્રુમેન્ટ વિશે';

  @override
  String get instrumentHint =>
      'આ સિમ્બોલ માટે કોઈ કંપની પ્રોફાઇલ નથી – તે ETF, ફંડ અથવા ડિપોઝિટરી રિસીટ હોઈ શકે છે. AI ને પૂછો કે તે શું છે, તેમાં શું છે અને તેનો ખર્ચ કેટલો છે.';

  @override
  String get instrumentAsk => 'આ શું છે?';

  @override
  String get instrumentNote =>
      'ઇશ્યુઅરના ફંડ પેજ અને વેબ પર મળતી નાણાકીય સાઇટ્સ પરથી AI સમજૂતી. તે રોકાણ સલાહ નથી. તે તમારી દૈનિક પ્રશ્ન મર્યાદામાંથી જાય છે, કોઈ વિશ્લેષણ વપરાતું નથી.';

  @override
  String suggestAskAi(String query) {
    return 'AIને પૂછો: “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return '$symbols માટે વર્તમાન ભાવ ઉપલબ્ધ નથી.';
  }

  @override
  String get eventsRecentResults => 'હાલમાં જાહેર થયેલાં પરિણામો';

  @override
  String get saveToNotes => 'મારી નોંધોમાં સાચવો';

  @override
  String get savedToNotes => 'તમારી નોંધોમાં સાચવ્યું';

  @override
  String get portfolioDividendsReceived => 'મળેલ ડિવિડન્ડ';

  @override
  String get portfolioDividendsThisYear => 'આ વર્ષે';

  @override
  String get portfolioDividendsAllTime => 'અત્યાર સુધી';

  @override
  String get portfolioAddDividend => 'ડિવિડન્ડ ઉમેરો';

  @override
  String portfolioDividendAmount(String currency) {
    return 'મળેલી રકમ ($currency)';
  }

  @override
  String get portfolioDividendDate => 'ચુકવણીની તારીખ';

  @override
  String get portfolioDividendsEmpty =>
      'હજી સુધી કોઈ ડિવિડન્ડ નોંધાયું નથી. હાથે ઉમેરો, અથવા તમારા બ્રોકરનું એક્સપોર્ટ ઇમ્પોર્ટ કરો – તેની ડિવિડન્ડ હરોળો પણ લેવાય છે.';

  @override
  String get portfolioSplit => 'સ્ટૉક સ્પ્લિટ';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'સ્ટૉક સ્પ્લિટ: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'સ્પ્લિટ પહેલાંની તારીખની ખરીદી અને વેચાણ સમાયોજિત થાય છે: શેરની સંખ્યા ગુણાય છે અને શેર દીઠ ભાવ ભાગાય છે, જેથી ખર્ચ એ જ રહે.';

  @override
  String get portfolioSplitRatio => 'ગુણોત્તર (નવા : જૂના)';

  @override
  String get portfolioSplitRatioError =>
      '10:1 જેવો ગુણોત્તર દાખલ કરો, અથવા રિવર્સ સ્પ્લિટ માટે 1:10.';

  @override
  String get portfolioSplitDate => 'સ્પ્લિટની તારીખ';

  @override
  String portfolioSplitRow(String ratio) {
    return 'સ્ટૉક સ્પ્લિટ $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'સ્ટૉક સ્પ્લિટ કાઢી નાખ્યો';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count સ્ટૉક સ્પ્લિટ ઉમેરાયા',
      one: '$count સ્ટૉક સ્પ્લિટ ઉમેરાયો',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ડિવિડન્ડ ઉમેરાયાં',
      one: '$count ડિવિડન્ડ ઉમેરાયું',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'ડિવિડન્ડ એક્સપોર્ટ કરો (CSV)';

  @override
  String get portfolioDividendDeleted => 'ડિવિડન્ડ કાઢી નાખ્યું';

  @override
  String get portfolioDividendsHint =>
      'રકમો તમારા ખાતામાં જેમ આવી તેમ, ચુકવણીની કરન્સીમાં; કુલ આજના દરે રૂપાંતરિત થાય છે. ટેક્સ રિટર્ન માટે તમારા બ્રોકરનું સ્ટેટમેન્ટ વાપરો.';

  @override
  String get awayTitle => 'તમે દૂર હતા ત્યારે';

  @override
  String awaySince(String when) {
    return '$whenથી';
  }

  @override
  String get awayQuiet => 'ખાસ કંઈ બદલાયું નથી.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count અલર્ટ ટ્રિગર થયા',
      one: '$count અલર્ટ ટ્રિગર થયો',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'પરિણામો જાહેર કર્યા: $symbols';
  }

  @override
  String get moveWhyButton => 'આજે કેમ ફરી રહ્યો છે?';

  @override
  String moveWhyTitle(String percent) {
    return 'આજે $percent';
  }

  @override
  String get moveWhyNote =>
      'વેબ પર મળેલા આજના સમાચારના આધારે AI સમજૂતી; ખરું કારણ અજાણ્યું કે અલગ હોઈ શકે છે. રોકાણની સલાહ નથી. તમારો દૈનિક પ્રશ્ન કોટા વાપરે છે, વિશ્લેષણ નહીં.';

  @override
  String get sectionTechnical => 'ટેકનિકલ ચિત્ર';

  @override
  String get labelSma50 => '50 દિવસની સરેરાશ';

  @override
  String get labelSma200 => '200 દિવસની સરેરાશ';

  @override
  String get labelRsi => 'RSI (14 દિવસ)';

  @override
  String get labelVolatility30 => 'વોલેટિલિટી (30 દિવસ)';

  @override
  String techAbove(String percent) {
    return '$percent ઉપર';
  }

  @override
  String techBelow(String percent) {
    return '$percent નીચે';
  }

  @override
  String get techOverbought => 'ઓવરબૉટ';

  @override
  String get techOversold => 'ઓવરસોલ્ડ';

  @override
  String get techNeutral => 'તટસ્થ';

  @override
  String get techGoldenCross =>
      '50 દિવસની સરેરાશ 200 દિવસની સરેરાશથી ઉપર છે – પરંપરાગત વાંચન મુજબ અપટ્રેન્ડ.';

  @override
  String get techDeathCross =>
      '50 દિવસની સરેરાશ 200 દિવસની સરેરાશથી નીચે છે – પરંપરાગત વાંચન મુજબ ડાઉનટ્રેન્ડ.';

  @override
  String get glossSma50 =>
      'છેલ્લા 50 ટ્રેડિંગ દિવસોનો સરેરાશ બંધ ભાવ. તેનાથી ઉપરનો ભાવ ઘણીવાર ટૂંકા ગાળાની મજબૂતી, નીચેનો ભાવ નબળાઈ તરીકે વાંચવામાં આવે છે.';

  @override
  String get glossSma200 =>
      'છેલ્લા 200 ટ્રેડિંગ દિવસોનો સરેરાશ બંધ ભાવ – પરંપરાગત લાંબા ગાળાની ટ્રેન્ડ લાઇન. ઘણા રોકાણકારો તેનાથી ઉપરના ભાવને લાંબા ગાળાનો અપટ્રેન્ડ માને છે.';

  @override
  String get glossRsi =>
      'રિલેટિવ સ્ટ્રેન્થ ઇન્ડેક્સ: હાલના નફાને હાલના નુકસાન સાથે 0–100ના સ્કેલ પર સરખાવે છે. 70થી ઉપર શેરને ઘણીવાર ઓવરબૉટ (ઝડપથી વધ્યો) અને 30થી નીચે ઓવરસોલ્ડ કહેવાય છે – પણ મજબૂત ટ્રેન્ડ ત્યાં લાંબો સમય રહી શકે છે.';

  @override
  String get glossVolatility =>
      'ભાવ દિવસે-દિવસે કેટલો ઉપર-નીચે થાય છે, વાર્ષિક ધોરણે: 20% એટલે સામાન્ય વર્ષમાં ભાવ લગભગ ±20%ની અંદર ફરે છે. વધુ વોલેટિલિટી એટલે બંને દિશામાં મોટી ચાલ.';

  @override
  String get techNote =>
      'દૈનિક બંધ ભાવ પરથી ગણેલું. ટેકનિકલ સંકેતો ભૂતકાળ વર્ણવે છે, ભવિષ્ય નહીં.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$countમાંથી $above પોઝિશન તેમની 200 દિવસની સરેરાશથી ઉપર';
  }

  @override
  String get watchSignalsTitle => 'સંકેતો';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · ઓવરસોલ્ડ';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · ઓવરબૉટ';
  }

  @override
  String get signalCrossedAbove => '200 દિવસની સરેરાશથી ઉપર ગયો';

  @override
  String get signalCrossedBelow => '200 દિવસની સરેરાશથી નીચે ગયો';

  @override
  String get signalAlertsTitle => 'ટેક્નિકલ સિગ્નલની સૂચનાઓ';

  @override
  String get signalAlertsSubtitle =>
      'દિવસમાં એક વાર, જ્યારે તમે ફોલો કરતા કોઈ સ્ટોક ઓવરસોલ્ડ અથવા ઓવરબૉટ (RSI) થાય, અથવા તેની કિંમત 200 દિવસની સરેરાશને ઓળંગે.';

  @override
  String get signalAlertsNotification => 'ટેક્નિકલ સિગ્નલ';

  @override
  String get glossaryPageTitle => 'શબ્દાવલિ';

  @override
  String get glossaryPageSubtitle =>
      'ઍપ બતાવે તે દરેક આંકડાની સરળ સમજૂતી, P/E થી RSI સુધી';

  @override
  String get glossarySearchHint => 'શબ્દાવલિમાં શોધો';

  @override
  String get portfolioCash => 'રોકડ';

  @override
  String get portfolioCashTitle => 'રોકડ બેલેન્સ';

  @override
  String get portfolioCashHint =>
      'તમારા બ્રોકર પાસે રોકાણ ન કરેલા પૈસા, ચલણ પ્રમાણે. તે કુલ મૂલ્ય અને ફાળવણીમાં ગણાય છે; રિટર્નમાં નહીં.';

  @override
  String portfolioCashAmount(String currency) {
    return 'રકમ ($currency)';
  }

  @override
  String get portfolioCashEdit => 'રોકડ બેલેન્સ સેટ કરો';

  @override
  String get portfolioDividendsByMonth => 'મહિના મુજબ';

  @override
  String get dividendsLegendReceived => 'પ્રાપ્ત';

  @override
  String get dividendsLegendExpected => 'અપેક્ષિત';

  @override
  String get portfolioDividendsExpected => 'આગામી અપેક્ષિત';

  @override
  String get portfolioDividendsExpectedNote =>
      'તમે નોંધેલી ચુકવણીઓની તારીખો અને રકમો પરથી અંદાજિત; કંપનીઓ તેમાં ફેરફાર કરી શકે અથવા છોડી શકે છે.';

  @override
  String portfolioDividendAround(String date) {
    return 'અંદાજે $date';
  }
}
