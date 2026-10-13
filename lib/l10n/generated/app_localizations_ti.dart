// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tigrinya (`ti`).
class AppLocalizationsTi extends AppLocalizations {
  AppLocalizationsTi([String locale = 'ti']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'ናይ ሓደ ኣክሲዮን ስእሊ ኣልዕሉ፣ ብዛዕባኡ ድማ ኩሉ ፍለጡ።';

  @override
  String get homeHint =>
      'ሰርቲፊኬት ኣክሲዮን፣ ስክሪን ኣፕ ደላላይ፣ ጋዜጣ ወይ ኣርማ ኩባንያ – ንኣክሲዮን ዘለሊ ዝኾነ ነገር።';

  @override
  String get takePhoto => 'ስእሊ ኣልዕል';

  @override
  String get chooseFromGallery => 'ካብ ጋለሪ ምረጽ';

  @override
  String get chooseImage => 'ስእሊ ምረጽ';

  @override
  String get enterTickerManually => 'ምልክት ብኢድ ኣእቱ';

  @override
  String get tickerInputLabel => 'ምልክት ኣክሲዮን';

  @override
  String get tickerInputHint => 'ንኣብነት AAPL';

  @override
  String get lookUp => 'ድለ';

  @override
  String demoModeBanner(String symbols) {
    return 'ናይ ምርኢት ኣገባብ – መፍትሕ ሓበሬታ ዕዳጋ ኣይተዳለወን። ናይ ኣብነት ሓበሬታ ንዚስዕቡ ይርከብ፦ $symbols።';
  }

  @override
  String get recognizing => 'ስእሊ ይትንተን ኣሎ…';

  @override
  String get loadingData => 'ሓበሬታ ይጽዓን ኣሎ…';

  @override
  String get noCandidatesTitle => 'ዝተለለየ ኣክሲዮን የለን';

  @override
  String get noCandidatesBody =>
      'ኣብዚ ስእሊ ኣክሲዮን ክንልልይ ኣይከኣልናን። ዝያዳ ንጹር ስእሊ ፈትኑ፣ ወይ ምልክት ብኢድ ኣእትዉ።';

  @override
  String get whatWeSaw => 'ዝረኣናዮ';

  @override
  String get chooseCandidateTitle => 'ኣየናይ ኣክሲዮን ኢዩ ዝደለኹምዎ?';

  @override
  String confidencePercent(int percent) {
    return '$percent% ርግጽነት';
  }

  @override
  String get settings => 'ቅጥዕታት';

  @override
  String get language => 'ቋንቋ';

  @override
  String get systemLanguage => 'ናይ ስርዓት ንቡር';

  @override
  String get about => 'ብዛዕባ';

  @override
  String get disclaimer =>
      'እዚ ኣፕ ሓበሬታ ጥራይ ይህብ፣ ምኽሪ ወፍሪ ኣይኮነን። ሓበሬታ ክደናጎ ወይ ጌጋ ክኸውን ይኽእል።';

  @override
  String dataSource(String source) {
    return 'ምንጪ ሓበሬታ፦ $source';
  }

  @override
  String recognizerSource(String source) {
    return 'ምልላይ፦ $source';
  }

  @override
  String get retry => 'ዳግማይ ፈትን';

  @override
  String get cancel => 'ሰርዝ';

  @override
  String get ok => 'ሕራይ';

  @override
  String get close => 'ዕጸው';

  @override
  String get errorGeneric => 'ገለ ጌጋ ኣጋጢሙ።';

  @override
  String get errorSectionUnavailable => 'እዚ ክፍሊ ክጽዓን ኣይከኣለን።';

  @override
  String get notAvailable => 'የለን';

  @override
  String get sectionIdentity => 'መለለዪ';

  @override
  String get sectionPrice => 'ዋጋ';

  @override
  String get sectionValuation => 'ግምት ዋጋ';

  @override
  String get sectionFinancials => 'ፋይናንሳዊ ሓበሬታ';

  @override
  String get sectionDividend => 'ብጽሒት ትርፊ';

  @override
  String get sectionProfile => 'መግለጺ ኩባንያ';

  @override
  String get sectionAnalysts => 'ገምጋም ተንተንቲ';

  @override
  String get sectionNews => 'ዜና';

  @override
  String get sectionRecognition => 'ዝርዝር ምልላይ';

  @override
  String get labelSymbol => 'ምልክት';

  @override
  String get labelExchange => 'ዕዳጋ ኣክሲዮን';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'ባጤራ';

  @override
  String get labelCountry => 'ሃገር';

  @override
  String get labelIndustry => 'ኢንዱስትሪ';

  @override
  String get labelSector => 'ዘርፊ';

  @override
  String get labelWebsite => 'ወብሳይት';

  @override
  String get labelIpoDate => 'ዕለት IPO';

  @override
  String get labelMarketCap => 'ካፒታል ዕዳጋ';

  @override
  String get labelSharesOutstanding => 'ኣብ ዝውውር ዘለዉ ኣክሲዮናት';

  @override
  String get labelEmployees => 'ሰራሕተኛታት';

  @override
  String get labelCeo => 'ዋና ኣካያዲ ስራሕ';

  @override
  String get labelHeadquarters => 'ቀንዲ ቤት ጽሕፈት';

  @override
  String get labelDescription => 'መግለጺ';

  @override
  String get labelLastPrice => 'ናይ መወዳእታ ዋጋ';

  @override
  String get labelChange => 'ለውጢ';

  @override
  String get labelOpen => 'ዋጋ መኽፈቲ';

  @override
  String get labelDayHigh => 'ናይ መዓልቲ ዝለዓለ';

  @override
  String get labelDayLow => 'ናይ መዓልቲ ዝተሓተ';

  @override
  String get labelPreviousClose => 'ዝሓለፈ መዕጸዊ';

  @override
  String get labelWeek52High => 'ናይ 52 ሰሙን ዝለዓለ';

  @override
  String get labelWeek52Low => 'ናይ 52 ሰሙን ዝተሓተ';

  @override
  String get labelAverageVolume10d => 'ማእከላይ መጠን ንግዲ (10 መዓልቲ)';

  @override
  String updatedAt(String time) {
    return 'ዝተሓደሰ፦ $time';
  }

  @override
  String get labelPeTrailing => 'P/E (ዝሓለፈ)';

  @override
  String get labelPeForward => 'P/E (ትጽቢት)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / ናጻ ውሕጅ ገንዘብ';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'ቤታ';

  @override
  String get labelRevenueTtm => 'እቶት (TTM)';

  @override
  String get labelNetIncomeTtm => 'ንጹህ ትርፊ (TTM)';

  @override
  String get labelGrossMargin => 'ጠቕላላ ሕዳግ ትርፊ';

  @override
  String get labelOperatingMargin => 'ሕዳግ ትርፊ ስራሕ';

  @override
  String get labelNetMargin => 'ንጹህ ሕዳግ ትርፊ';

  @override
  String get labelRoe => 'ምላሽ ኣብ ካፒታል';

  @override
  String get labelRoa => 'ምላሽ ኣብ ንብረት';

  @override
  String get labelDebtToEquity => 'ዕዳ / ካፒታል';

  @override
  String get labelCurrentRatio => 'ናይ ሕጂ ምጥጣን';

  @override
  String get labelRevenueGrowth => 'ዕቤት እቶት (ዓመታዊ)';

  @override
  String get labelEpsGrowth => 'ዕቤት EPS (ዓመታዊ)';

  @override
  String get labelDividendYield => 'መጠን ብጽሒት ትርፊ';

  @override
  String get labelDividendPerShare => 'ብጽሒት ትርፊ ንሓደ ኣክሲዮን';

  @override
  String get labelPayoutRatio => 'መጠን ምክፋል ትርፊ';

  @override
  String get labelConsensus => 'ሓባራዊ ስምምዕ';

  @override
  String get ratingStrongBuy => 'ብርቱዕ ዕድጊ';

  @override
  String get ratingBuy => 'ዕድጊ';

  @override
  String get ratingHold => 'ምሓዝ';

  @override
  String get ratingSell => 'መሸጣ';

  @override
  String get ratingStrongSell => 'ብርቱዕ መሸጣ';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ተንተንቲ',
      one: '1 ተንታኒ',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'እዋን፦ $period';
  }

  @override
  String get noNews => 'ናይ ቀረባ እዋን ዜና የለን።';

  @override
  String get openArticle => 'ጽሑፍ ክፈት';

  @override
  String get openLinkFailed => 'እቲ ሊንክ ክኽፈት ኣይከኣለን።';

  @override
  String get recognitionSummary => 'ጽማቝ';

  @override
  String get recognitionEvidence => 'ስለምንታይ ከምኡ ንሓስብ';

  @override
  String get recognitionRawText => 'ካብ ስእሊ ዝተነበ ጽሑፍ';

  @override
  String get errMissingAnthropicKey =>
      'ምልላይ ስእሊ ኣይተዳለወን (ANTHROPIC_API_KEY የለን)። ምልክት ብኢድ ኣእትዉ።';

  @override
  String get errRecognitionUnreachable =>
      'ኣገልግሎት ምልላይ ክብጻሕ ኣይከኣለን። ርክብ ኢንተርነትኩም ኣረጋግጹ።';

  @override
  String errRecognitionHttp(String status) {
    return 'ኣገልግሎት ምልላይ ጌጋ መሊሱ (HTTP $status)።';
  }

  @override
  String get errRecognitionRefused => 'ኣገልግሎት ምልላይ ነዚ ስእሊ ከመስርሖ ኣይከኣለን።';

  @override
  String get errRecognitionTruncated => 'መልሲ ምልላይ ተቛሪጹ። በጃኹም ዳግማይ ፈትኑ።';

  @override
  String get errRecognitionBadResponse => 'ካብ ኣገልግሎት ምልላይ ዘይተጸበናዮ መልሲ መጺኡ።';

  @override
  String get errRecognitionEmpty => 'ኣገልግሎት ምልላይ ባዶ መልሲ መሊሱ።';

  @override
  String get errMissingFinnhubKey => 'ሓበሬታ ዕዳጋ ኣይተዳለወን (FINNHUB_API_KEY የለን)።';

  @override
  String get errMarketUnreachable =>
      'ኣገልግሎት ሓበሬታ ዕዳጋ ክብጻሕ ኣይከኣለን። ርክብ ኢንተርነትኩም ኣረጋግጹ።';

  @override
  String get errMarketRateLimited =>
      'ናብ ኣገልግሎት ሓበሬታ ዕዳጋ ኣዝዮም ብዙሓት ሕቶታት ተላኢኾም። በጃኹም ሓንቲ ደቒቕ ተጸበዩ።';

  @override
  String errMarketHttp(String status) {
    return 'ኣገልግሎት ሓበሬታ ዕዳጋ ጌጋ መሊሱ (HTTP $status)።';
  }

  @override
  String get errMarketBadResponse => 'ካብ ኣገልግሎት ሓበሬታ ዕዳጋ ዘይተጸበናዮ መልሲ መጺኡ።';

  @override
  String errNoQuote(String symbol) {
    return 'ን$symbol ሓበሬታ ዋጋ ኣይተረኽበን።';
  }

  @override
  String errNoProfile(String symbol) {
    return 'ን$symbol መግለጺ ኩባንያ ኣይተረኽበን።';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'ናይ ምርኢት ኣገባብ ነዚኦም ጥራይ ይድግፍ፦ $symbols። ንቐጥታዊ ሓበሬታ FINNHUB_API_KEY ወስኹ።';
  }

  @override
  String errUnknown(String detail) {
    return 'ገለ ጌጋ ኣጋጢሙ፦ $detail';
  }

  @override
  String get newSearch => 'ሓድሽ ምድላይ';

  @override
  String get recentSearches => 'ናይ ቀረባ';

  @override
  String get noRecentSearches => 'ክሳብ ሕጂ ናይ ቀረባ ምድላይ የለን።';

  @override
  String get clearRecent => 'ናይ ቀረባ ኣጽሪ';

  @override
  String get greeting => 'ኣየናይ ኣክሲዮን ንርአ?';

  @override
  String get searchHint => 'ምልክት ወይ ስም ኩባንያ';

  @override
  String get attachImage => 'ስእሊ ኣተሓሕዝ';

  @override
  String get searchResultsTitle => 'ውጽኢት ምድላይ';

  @override
  String errNoResults(String query) {
    return 'ን«$query» ዝኾነ ኣክሲዮን ኣይተረኽበን።';
  }

  @override
  String get quickBarHint => 'ምልክት ወይ ስም ኩባንያ ጽሓፉ…';

  @override
  String get openFullWindow => 'መስኮት ክፈት';

  @override
  String hotkeyHint(String shortcut) {
    return 'WhatStock ንምጽዋዕ ኣብ ዝኾነ ቦታ $shortcut ጠውቑ።';
  }

  @override
  String get trayOpen => 'WhatStock ክፈት';

  @override
  String get trayQuickSearch => 'ቅልጡፍ ምድላይ';

  @override
  String get trayQuit => 'ውጻእ';

  @override
  String get appearance => 'ትርኢት';

  @override
  String get themeSystem => 'ስርዓት';

  @override
  String get themeDark => 'ጸልማት';

  @override
  String get themeLight => 'ብርሃን';

  @override
  String get back => 'ተመለስ';

  @override
  String get aiSectionTitle => 'ትንተና AI';

  @override
  String get aiIntro =>
      'ብAI ዝተጻሕፈ ዝርዝር ሓፈሻዊ ትርኢት፦ ጽማቝ ናይ ቀረባ ዜናታት፣ እቲ ንግዲ፣ ሓይልታት፣ ሓደጋታትን ሕቡኣት ረቛሒታትን፣ ግምት ዋጋ፣ ካብ ስነ-ኣእምሮኣዊ፣ ማሕበራዊ፣ ቴክኒካዊን ማክሮ-ቁጠባዊን ኣረኣእያ ዝተዳለወ ትንቢት ዋጋ ምስ ኩነታት፣ ከምኡ’ውን እንታይ ክትከታተሉ ከም ዘለኩም።';

  @override
  String get aiGenerate => 'ትንተና ፍጠር';

  @override
  String get aiRegenerate => 'ዳግማይ ፍጠር';

  @override
  String get aiGenerating => 'ትንተና ይዳሎ ኣሎ… እዚ ሓንቲ ወይ ክልተ ደቒቕ ክወስድ ይኽእል።';

  @override
  String get aiSources => 'ምንጭታት';

  @override
  String aiGeneratedAt(String time) {
    return 'ዝተፈጥረ፦ $time';
  }

  @override
  String get aiDisclaimer =>
      'ኣብ ህዝባዊ ሓበሬታን ናይ ቀረባ ዜናታትን ዝተመርኮሰ ብAI ዝተፈጥረ ትንተና። ጌጋታት ክሕዝ ወይ ግዜኡ ዝሓለፎ ክኸውን ይኽእል፣ ምኽሪ ወፍሪ ድማ ኣይኮነን።';

  @override
  String get errAiNotConfigured => 'ትንተና AI ኣይተዳለወን (ANTHROPIC_API_KEY የለን)።';

  @override
  String get errAiUnreachable => 'ኣገልግሎት AI ክብጻሕ ኣይከኣለን። ርክብ ኢንተርነትኩም ኣረጋግጹ።';

  @override
  String errAiHttp(String status) {
    return 'ኣገልግሎት AI ጌጋ መሊሱ (HTTP $status)።';
  }

  @override
  String get errAiRefused => 'ኣገልግሎት AI ነዚ ኣክሲዮን ክትንትኖ ኣይፈቐደን።';

  @override
  String get errAiBadResponse => 'ካብ ኣገልግሎት AI ዘይተጸበናዮ መልሲ መጺኡ።';

  @override
  String get sectionChart => 'ሰንጠረዥ ዋጋ';

  @override
  String get rangeOneWeek => '1 ሰሙን';

  @override
  String get rangeOneMonth => '1 ወርሒ';

  @override
  String get rangeThreeMonths => '3 ወርሒ';

  @override
  String get rangeOneYear => '1 ዓመት';

  @override
  String get rangeFiveYears => '5 ዓመት';

  @override
  String get chartUnavailable => 'ካብቲ ህሉው ምንጪ ሓበሬታ ታሪኽ ዋጋ ኣይርከብን።';

  @override
  String get sectionStatements => 'ፋይናንሳዊ መግለጺታት (ዓመታዊ)';

  @override
  String get labelFiscalYear => 'በጀት ዓመት';

  @override
  String get labelRevenue => 'እቶት';

  @override
  String get labelNetIncome => 'ንጹህ ትርፊ';

  @override
  String get labelTotalAssets => 'ጠቕላላ ንብረት';

  @override
  String get labelTotalLiabilities => 'ጠቕላላ ዕዳ';

  @override
  String get labelEquity => 'ካፒታል ወነንቲ ኣክሲዮን';

  @override
  String get labelOperatingCashFlow => 'ውሕጅ ገንዘብ ካብ ስራሕ';

  @override
  String get statementsUnavailable => 'ነዚ ኣክሲዮን ዝተሓበሩ ፋይናንሳዊ መግለጺታት ኣይርከቡን።';

  @override
  String get launchAtLogin => 'ኣብ እዋን ምእታው ጀምር';

  @override
  String get hotkeyLabel => 'ሓፈሻዊ መሕጸሪ';

  @override
  String get hotkeyRecordHint => 'ኣብዚ ጠውቑ፣ ድሕሪኡ ሓድሽ ውህደት መፍትሕ ጠውቑ';

  @override
  String get hotkeyReset => 'ናብ ንቡር መልስ';

  @override
  String get pasteImage => 'ስእሊ ካብ ክሊፕቦርድ ለጥፍ';

  @override
  String get errClipboardNoImage => 'ኣብ ክሊፕቦርድ ስእሊ የለን።';

  @override
  String get favorites => 'ዝተፈተዉ';

  @override
  String get addToFavorites => 'ናብ ዝተፈተዉ ወስኽ';

  @override
  String get removeFromFavorites => 'ካብ ዝተፈተዉ ኣልግስ';

  @override
  String get noFavorites => 'ክሳብ ሕጂ ዝተፈተዉ የለዉን። ንምውሳኽ ኣብ ኣክሲዮን ዘላ ኮኾብ ጠውቑ።';

  @override
  String get displayCurrency => 'ባጤራ ምርኣይ';

  @override
  String get displayCurrencyNone => 'ናይቲ ኣክሲዮን ናይ ገዛእ ርእሱ ባጤራ ጥራይ';

  @override
  String labelConverted(String currency) {
    return '≈ ብ$currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'መጠን ምልውዋጥ፦ 1 $from = $rate $to (ECB፣ $date)';
  }

  @override
  String get updates => 'ምሕዳሳት';

  @override
  String currentVersion(String version) {
    return 'ሕታም $version';
  }

  @override
  String get autoUpdate => 'ምሕዳሳት ብኣውቶማቲክ ጽዓን';

  @override
  String get checkForUpdates => 'ምሕዳሳት ፈትሽ';

  @override
  String get updateChecking => 'ምሕዳሳት ይፍተሹ ኣለዉ…';

  @override
  String get updateUpToDate => 'ናይ መወዳእታ ሕታም ትጥቀሙ ኣለኹም።';

  @override
  String updateAvailable(String version) {
    return 'ሕታም $version ይርከብ ኣሎ።';
  }

  @override
  String get updateDownloading => 'ምሕዳስ ኣብ ድሕሪት ይውረድ ኣሎ…';

  @override
  String get updateDownloaded => 'ምሕዳስ ድሉው እዩ። ንምጽዓኑ ዳግማይ ኣበግሱ።';

  @override
  String get updateNow => 'ኣሐድስ';

  @override
  String get restartNow => 'ዳግማይ ኣበግስ';

  @override
  String get updatesViaStore => 'ምሕዳሳት ብመኽዘን ኣፕታት ብኣውቶማቲክ ይመጹ።';

  @override
  String get updateCheckFailed => 'ምሕዳሳት ክፍተሹ ኣይከኣሉን።';

  @override
  String get subscription => 'ምዝገባ';

  @override
  String get planTrial => 'ፈተነ';

  @override
  String get planNormal => 'ንቡር';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'ንጡፍ መደብ የለን';

  @override
  String planAnalysesPerMonth(int count) {
    return 'ኣብ ወርሒ $count ትንተናታት';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'ናይ $days መዓልቲ ነጻ ፈተነ ምስ $count ትንተናታት';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'ካብ ፈተነ $days መዓልታት ተሪፉ',
      one: 'ካብ ፈተነ 1 መዓልቲ ተሪፉ',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired => 'ነጻ ፈተነኹም ተወዲኡ። ትንተና ንምቕጻል መደብ ምረጹ።';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'ኣብዚ እዋን ካብ $total ትንተናታት $remaining ተሪፉ';
  }

  @override
  String extraCredits(int count) {
    return '$count ተወሳኺ ትንተናታት';
  }

  @override
  String renewsOn(String date) {
    return 'ብ$date ይሕደስ';
  }

  @override
  String get choosePlan => 'መደብ ምረጽ';

  @override
  String get currentPlan => 'ህሉው መደብ';

  @override
  String get subscribe => 'ተመዝገብ';

  @override
  String get perMonth => '/ ወርሒ';

  @override
  String get extraPacksTitle => 'ተወሳኺ ትደልዩ? ተወሳኺ ትንተናታት ግዝኡ';

  @override
  String get extraPacksHint =>
      'ተወሳኺ ትንተናታት ግዜኦም ኣይሓልፍን፣ ወርሓዊ ብጽሒትኩም ምስ ተወድአ ድማ ኣብ ጥቕሚ ይውዕሉ።';

  @override
  String get buy => 'ግዛእ';

  @override
  String get restorePurchases => 'ዕድግታት ምለስ';

  @override
  String get manageSubscription => 'ምዝገባ ኣመሓድር';

  @override
  String get purchaseSuccess => 'የቐንየልና! ዕድግኹም ንጡፍ እዩ።';

  @override
  String get purchasePending => 'ዕድጊ ኣብ መስርሕ ኣሎ…';

  @override
  String get purchaseFailed => 'እቲ ዕድጊ ክፍጸም ኣይከኣለን።';

  @override
  String get purchaseCanceled => 'ዕድጊ ተሰሪዙ።';

  @override
  String get billingUnavailable =>
      'ኣብዚ መድረኽ ዕድግታት ገና ኣይርከቡን። ብተሌፎንኩም ወይ ብMac ተመዝገቡ፣ መደብኩም ኣብ ኩሉ መሳርሒ ክሰርሕ እዩ።';

  @override
  String get errQuotaExceeded =>
      'ነዚ እዋን ዝተረፈኩም ትንተና የለን። መደብኩም ኣመሓይሹ ወይ ተወሳኺ ትንተናታት ግዝኡ።';

  @override
  String get errTrialExpired => 'ነጻ ፈተነኹም ተወዲኡ። ንምቕጻል መደብ ምረጹ።';

  @override
  String get errNoPlan => 'ንትንተና AI ንጡፍ መደብ የድሊ።';

  @override
  String get viewPlans => 'መደባት ርአ';

  @override
  String get usageTitle => 'ኣጠቓቕማ';

  @override
  String get demoPurchaseNote => 'ናይ ምርኢት ክፍሊት፦ ኣብዚ መድረኽ ዕድግታት ንምምሳል ጥራይ እዮም።';

  @override
  String get mostPopular => 'ኣዝዩ ፍቱው';

  @override
  String get bestValue => 'ዝበለጸ ዋጋ';

  @override
  String get planFeaturesCommon =>
      'ምልላይ ስእሊ፣ ቀጥታዊ ሓበሬታ፣ ሰንጠረዣት፣ ዝተፈተዉን ኩሎም 120 ቋንቋታትን ኣብ ነፍሲ ወከፍ መደብ ይርከቡ። እቲ ወርሓዊ ብጽሒት ንትንተናታት AI ይሽፍን።';

  @override
  String get searchLanguages => 'ቋንቋታት ድለ…';

  @override
  String get noLanguageMatch => 'ዝሰማማዕ ቋንቋ የለን።';

  @override
  String get aiSettings => 'ትንተና AI';

  @override
  String get aiLength => 'ንውሓት';

  @override
  String get aiDepthBrief => 'ሓጺር';

  @override
  String get aiDepthStandard => 'ንቡር';

  @override
  String get aiDepthDeep => 'ዕሙቕ';

  @override
  String get aiDepthBriefDesc => 'እቶም ኣገደስቲ፣ ብቕልጡፍ።';

  @override
  String get aiDepthStandardDesc => 'ኩሎም ክፍልታት ዘለውዎ ምሉእ ጸብጻብ።';

  @override
  String get aiDepthDeepDesc => 'ተወሳኺ ምድላያት መርበብ፣ ምስ መወዳድርቲ ምንጽጻርን ዝዓመቐ ዝርዝርን።';

  @override
  String aiDepthWords(String min, String max) {
    return 'ኣስታት $min–$max ቃላት';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ትንተናታት ይጥቀም',
      one: '1 ትንተና ይጥቀም',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'ደረጃ ኣንባቢ';

  @override
  String get aiReaderBeginner => 'ጀማሪ';

  @override
  String get aiReaderExperienced => 'ተመኩሮ ዘለዎ';

  @override
  String get aiReaderBeginnerDesc => 'ቀሊል ቋንቋ፤ ነፍሲ ወከፍ ቴክኒካዊ ቃል ይግለጽ።';

  @override
  String get aiReaderExperiencedDesc => 'ንቡር ፋይናንሳዊ ቃላት ዝጥቀም ጽዑቕ ጽሑፍ።';

  @override
  String get aiCounterArgument => 'እቲ ዝበርትዐ ተቓዋሚ መጎተ';

  @override
  String get aiCounterArgumentDesc =>
      'እቲ ጽማቝ ኩሉ ግዜ ኣንጻር ናይ ገዛእ ርእሱ መደምደምታ ብዝበለጸ መጎተ ይዛዘም።';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ብመደብኩም ንነፍሲ ወከፍ ትንተና ክሳብ $count ምድላያት መርበብ',
      one: 'ብመደብኩም ንነፍሲ ወከፍ ትንተና ክሳብ 1 ምድላይ መርበብ',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'ምድላያት መርበብ ብንቡር ንውሓት ብመደብ፦ ንቡር $normal፣ Pro $pro፣ Max $max፣ Ultra $ultra። ሓጺር 2 ዝወሓደ፣ ዕሙቕ ድማ 2 ዝበዝሐ ይጥቀም።';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ክሳብ $count ምድላያት መርበብ',
      one: 'ክሳብ 1 ምድላይ መርበብ',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ንነፍሲ ወከፍ ትንተና $count ምድላያት መርበብ',
      one: 'ንነፍሲ ወከፍ ትንተና 1 ምድላይ መርበብ',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'እዚ ንውሓት $needed ትንተናታት የድልዮ፣ ግን $left ጥራይ ተሪፉ። ኣብ ቅጥዕታት ዝሓጸረ ንውሓት ምረጹ ወይ ተወሳኺ ትንተናታት ርኸቡ።';
  }

  @override
  String get outlookMarketMood => 'ስምዒት ዕዳጋ';

  @override
  String get moodVeryPessimistic => 'ኣዝዩ ኣሉታዊ';

  @override
  String get moodPessimistic => 'ኣሉታዊ';

  @override
  String get moodNeutral => 'ማእከላይ';

  @override
  String get moodOptimistic => 'ኣወንታዊ';

  @override
  String get moodVeryOptimistic => 'ኣዝዩ ኣወንታዊ';

  @override
  String get scenarioBull => 'ኩነት ዕቤት';

  @override
  String get scenarioBase => 'መሰረታዊ ኩነት';

  @override
  String get scenarioBear => 'ኩነት ውድቀት';

  @override
  String outlookCurrentPrice(String price) {
    return 'ህሉው ዋጋ፦ $price';
  }

  @override
  String get outlookKeyLevels => 'ቀንዲ ደረጃታት';

  @override
  String get keyLevelSupport => 'ደገፍ';

  @override
  String get keyLevelResistance => 'ተቓውሞ';

  @override
  String get keyLevelAnchor => 'መልሕቕ';

  @override
  String get upcomingEvents => 'ዝመጹ ፍጻመታት';

  @override
  String get outlookChartNote =>
      'ኣመላኻቲ ክልላት እዮም፤ ተኽእሎታት ግምታዊ ፍርድታት እዮም፣ ትንቢት ኣይኮኑን።';

  @override
  String get accountTitle => 'ሕሳብ';

  @override
  String get signIn => 'እቶ';

  @override
  String get signOut => 'ውጻእ';

  @override
  String get notSignedIn => 'ኣይኣተኹምን';

  @override
  String get accountBenefit => 'ምዝገባኹም ኣብ ኩሎም መሳርሒታትኩም ምእንቲ ክሰርሕ እተዉ።';

  @override
  String get accountSyncedNote => 'ምዝገባኹምን ዝተረፉ ትንተናታትን ኣብ ኩሉ መሳርሒ ሓደ እዮም።';

  @override
  String get signInTitle => 'ናብ WhatStock እተዉ';

  @override
  String get emailLabel => 'ኣድራሻ ኢመይል';

  @override
  String get continueWithEmail => 'ብኢመይል ቀጽል';

  @override
  String codeSentTo(String email) {
    return '6 ኣሃዝ ዘለዎ ኮድ ናብ $email ሰዲድና ኣለና። ን10 ደቓይቕ ይሰርሕ።';
  }

  @override
  String get codeLabel => 'ኮድ ምእታው';

  @override
  String get resendCode => 'ሓድሽ ኮድ ስደድ';

  @override
  String get useDifferentEmail => 'ካልእ ኢመይል ተጠቐም';

  @override
  String get errInvalidCode => 'እቲ ኮድ ጌጋ እዩ ወይ ግዜኡ ሓሊፉ።';

  @override
  String get errInvalidEmail => 'በጃኹም ቅቡል ኣድራሻ ኢመይል ኣእትዉ።';

  @override
  String get errSignInFailed => 'ምእታው ኣይተዓወተን። ርክብኩም ኣረጋግጹ እሞ ዳግማይ ፈትኑ።';

  @override
  String get checkoutWaiting =>
      'ክፍሊት ኣብ ብራውዘርኩም ፈጽሙ። ምስ ተወድአ እቲ ኣፕ ብኣውቶማቲክ ይሕደስ።';

  @override
  String get paymentViaStripe =>
      'ብStripe ኣቢሉ ኣብ ብራውዘርኩም ውሑስ ክፍሊት። ኣብ ዝኾነ ግዜ ክትሰርዙ ትኽእሉ።';

  @override
  String get paymentViaStore =>
      'ብሕሳብ App Store ወይ Google Play ኣቢሉ ይኽፈል። ኣብ ቅጥዕታት መኽዘን ኣብ ዝኾነ ግዜ ክትሰርዙ ትኽእሉ።';

  @override
  String get keySpace => 'ስፔስ';

  @override
  String get doubleOptionTitle => 'Option ክልተ ግዜ ጠውቕ';

  @override
  String get doubleOptionSubtitle =>
      'መፍትሕ Option ብቕልጡፍ ክልተ ግዜ ምጥዋቕ’ውን WhatStock ይጽውዕ።';

  @override
  String get doubleOptionPermission =>
      'ኣብ ካልኦት ኣፕታት’ውን ምእንቲ ክሰርሕ፣ WhatStock ኣብ System Settings → Privacy & Security → Input Monitoring ፍቐዱሉ፣ ድሕሪኡ ነቲ ኣፕ ዳግማይ ክፈትዎ።';

  @override
  String get openSystemSettings => 'ቅጥዕታት ስርዓት ክፈት';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'WhatStock ንምጽዋዕ ኣብ ዝኾነ ቦታ $shortcut ጠውቑ ወይ Option ክልተ ግዜ ጠውቑ።';
  }

  @override
  String get scenarioMostLikely => 'ኣዝዩ ዝከኣል';

  @override
  String get longTermToday => 'ሎሚ';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years ዓመታት',
      one: '1 ዓመት',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return 'ኣብ ዓመት $range';
  }

  @override
  String longTermLikely(String price) {
    return 'ኣዝዩ ዝከኣል $price';
  }

  @override
  String get confidenceLow => 'ትሑት ርግጽነት';

  @override
  String get confidenceMedium => 'ማእከላይ ርግጽነት';

  @override
  String get confidenceHigh => 'ልዑል ርግጽነት';

  @override
  String get longTermNote =>
      'ክልላት ነዊሕ እዋን ኣብ ዝተገልጹ ግምታት ዝተመርኮሱ እዮም፣ ምስ ግዜ ድማ ይሰፍሑ። ዋጋታት ብጽሒት ትርፊ ኣየጠቓልሉን። ግምታዊ ፍርድታት እዮም፣ ትንቢት ኣይኮኑን።';

  @override
  String get portfolio => 'ፖርትፎሊዮ';

  @override
  String get portfolioEmpty =>
      'ክሳብ ሕጂ ኣብዚ ገለ የለን። ዘለኩም ንምክትታል ሓደ ኣክሲዮን ክፈቱ እሞ «ናብ ፖርትፎሊዮ ወስኽ» ጠውቑ።';

  @override
  String get portfolioLocalNote =>
      'ኣብዚ መሳርሒ ጥራይ ይዕቀብ። ድምራት ብመወከሲ መጠናት ECB ይቕየሩ፤ ዋጋታት ክደናጎዩ ይኽእሉ።';

  @override
  String get addToPortfolio => 'ናብ ፖርትፎሊዮ ወስኽ';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol ወስኽ';
  }

  @override
  String get portfolioQuantity => 'ብዝሒ ኣክሲዮናት';

  @override
  String portfolioBuyPrice(String currency) {
    return 'ዋጋ ንሓደ ኣክሲዮን ($currency)';
  }

  @override
  String get portfolioBuyDate => 'ዕለት ዕድጊ';

  @override
  String get portfolioAdd => 'ወስኽ';

  @override
  String get portfolioInvalidNumber => 'ካብ ዜሮ ዝዓቢ ቁጽሪ ኣእትዉ።';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol ናብ ፖርትፎሊዮኹም ተወሲኹ።';
  }

  @override
  String get portfolioTotalValue => 'ጠቕላላ ዋጋ';

  @override
  String get portfolioToday => 'ሎሚ';

  @override
  String get portfolioGainLoss => 'ትርፊ/ክሳራ';

  @override
  String get portfolioInvested => 'ዝተወፈረ';

  @override
  String get portfolioAllocation => 'ምምቕራሕ';

  @override
  String get portfolioPositions => 'ዋንነታት';

  @override
  String portfolioAvgCost(String price) {
    return 'ማእከላይ ዋጋ ዕድጊ $price';
  }

  @override
  String get portfolioYourPosition => 'ዋንነትኩም';

  @override
  String get portfolioPurchases => 'ዕድግታት';

  @override
  String get portfolioRemove => 'ኣልግስ';

  @override
  String get portfolioExcluded => 'ዋጋ ወይ መጠን ምልውዋጥ ዘይብሎም ዋንነታት ካብ ድምራት ይግለሉ።';

  @override
  String get priceAlerts => 'መጠንቀቕታታት ዋጋ';

  @override
  String get setPriceAlert => 'መጠንቀቕታ ዋጋ ኣዳልው';

  @override
  String alertDialogTitle(String symbol) {
    return 'መጠንቀቕታ ዋጋ · $symbol';
  }

  @override
  String get alertKindAbove => 'ልዕሊ ደረጃ ክብ ምባል';

  @override
  String get alertKindBelow => 'ትሕቲ ደረጃ ምውራድ';

  @override
  String get alertKindMove => 'ኣብ ሓንቲ መዓልቲ ዓቢ ምንቅስቓስ';

  @override
  String alertTargetPrice(String currency) {
    return 'ዋጋ ($currency)';
  }

  @override
  String get alertMovePercent => 'መዓልታዊ ምንቅስቓስ (%)';

  @override
  String get alertAlreadyMet => 'እቲ ዋጋ ድሮ ነዚ ደረጃ ሓሊፍዎ እዩ።';

  @override
  String get alertSave => 'መጠንቀቕታ ኣዳልው';

  @override
  String alertCreated(String symbol) {
    return 'ን$symbol መጠንቀቕታ ተዳልዩ።';
  }

  @override
  String get alertsEmpty =>
      'ክሳብ ሕጂ መጠንቀቕታታት ዋጋ የለዉን። ንምድላው ሓደ ኣክሲዮን ክፈቱ እሞ ደወል ጠውቑ።';

  @override
  String get alertsNote =>
      'WhatStock ክሰርሕ ከሎ መጠንቀቕታታት ኣብ ነፍሲ ወከፍ 5 ደቓይቕ ይፍተሹ። ኣብ ኮምፒተር ኣብ ባር ሜኑ ወይ ትሬይ ምስራሕ ይቕጽል፤ ኣብ ተሌፎን ግን ንሕጂ መጠንቀቕታታት ዝመጹ እቲ ኣፕ ክፉት ክኸውን ከሎ ጥራይ እዩ።';

  @override
  String alertDescAbove(String price) {
    return 'ልዕሊ $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'ትሕቲ $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'መዓልታዊ ምንቅስቓስ ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'ብ$date ኣብ $price ተበጊሱ';
  }

  @override
  String get alertRearm => 'ዳግማይ ኣንጥፍ';

  @override
  String get alertDelete => 'ሰርዝ';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol ልዕሊ $price ደዪቡ';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol ትሕቲ $price ወሪዱ';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol ሎሚ $percent ተንቀሳቒሱ';
  }

  @override
  String alertHitBody(String price) {
    return 'ህሉው ዋጋ፦ $price';
  }

  @override
  String get alertOpen => 'ክፈት';

  @override
  String get keepInTrayTitle => 'መስኮት ምስ ተዓጽወ ምስራሕ ቀጽል';

  @override
  String get keepInTraySubtitle =>
      'WhatStock ኣብ ባር ሜኑ ወይ ትሬይ ይጸንሕ፣ ስለዚ መሕጸሪ መፍትሕን መጠንቀቕታታት ዋጋን ምስራሕ ይቕጽሉ።';

  @override
  String get termsOfUse => 'ውዕል ኣጠቓቕማ';

  @override
  String get privacyPolicy => 'ፖሊሲ ብሕትውና';

  @override
  String get subscriptionLegal =>
      'ምዝገባታት ክሳብ ትሰርዝዎም ኣብ ነፍሲ ወከፍ ወርሒ ብኣውቶማቲክ ይሕደሱ። ብምምዝጋብ ውዕል ኣጠቓቕማን ፖሊሲ ብሕትውናን ትቕበሉ።';

  @override
  String get deleteAccount => 'ሕሳብ ሰርዝ';

  @override
  String get deleteAccountTitle => 'ሕሳብኩም ይሰረዝ?';

  @override
  String get deleteAccountBody =>
      'ሕሳብኩምን ኣብ ሰርቨርና ዝተዓቀበ ኩሉን (ኢመይል፣ ወርሓዊ ብጽሒት፣ ኣጠቓቕማ) ንሓዋሩ ክስረዝ እዩ፣ ዘይተጠቐምኩምሎም ትንተናታት ድማ ክጠፍኡ እዮም። ብብራውዘር ዝተኸፍለ ምዝገባ ብቕጽበት ይስረዝ፤ ምዝገባ App Store ወይ Google Play ግን ኣብ ቅጥዕታት መኽዘን ክስረዝ ኣለዎ።';

  @override
  String get deleteLocalData =>
      'ኣብዚ መሳርሒ ዘሎ ሓበሬታ’ውን ሰርዝ (ፖርትፎሊዮ፣ መጠንቀቕታታት፣ ዝተፈተዉ፣ ታሪኽ፣ ዝተዓቀቡ ትንተናታት)';

  @override
  String get deleteAccountConfirm => 'ንሓዋሩ ሰርዝ';

  @override
  String get accountDeleted => 'ሕሳብኩም ተሰሪዙ።';

  @override
  String get errDeleteAccount => 'እቲ ሕሳብ ክስረዝ ኣይከኣለን። ርክብኩም ኣረጋግጹ እሞ ዳግማይ ፈትኑ።';

  @override
  String get aiTrialBriefNote =>
      'ትንተናታት ፈተነ ሓጺራት እዮም፣ ብቕልጡፍ ሞዴል AI ድማ ይዳለዉ። ብመደብ ኣዝዩ ብቑዕ AI ናትና፣ ተወሳኺ ምድላያት መርበብ፣ ንቡርን ዕሙቕን ንውሓት ትረኽቡ።';

  @override
  String get billingMonthly => 'ወርሓዊ';

  @override
  String get billingYearly => 'ዓመታዊ';

  @override
  String get yearlyDiscount => '2 ወርሒ ብነጻ';

  @override
  String get perYear => '/ ዓመት';

  @override
  String pricePerMonthApprox(String price) {
    return 'ኣብ ወርሒ ≈ $price';
  }

  @override
  String get subscriptionLegalYearly =>
      'ዓመታዊ ምዝገባታት ክሳብ ትሰርዝዎም ኣብ ነፍሲ ወከፍ ዓመት ብኣውቶማቲክ ይሕደሱ። ብምምዝጋብ ውዕል ኣጠቓቕማን ፖሊሲ ብሕትውናን ትቕበሉ።';

  @override
  String get myAnalyses => 'ትንተናታተይ';

  @override
  String get navAlerts => 'መጠንቀቕታታት';

  @override
  String get inviteTitle => 'ዝተዓጽወ ቅድመ-ርእይቶ';

  @override
  String get inviteBody => 'WhatStock ሕጂ ብዕድመ ጥራይ እዩ ዝርከብ። ዝበጽሓኩም ኮድ ዕድመ የእትዉ።';

  @override
  String get inviteCodeLabel => 'ኮድ ዕድመ';

  @override
  String get inviteContinue => 'ቀጽሉ';

  @override
  String get inviteInvalid => 'እዚ ኮድ ዕድመ ቅቡል ኣይኮነን።';

  @override
  String get inviteExpired => 'እዚ ዕድመ ግዜኡ ሓሊፉ። ካብቲ ዝዓደመኩም ሰብ ሓድሽ ኮድ ሕተቱ።';

  @override
  String get inviteDeviceLimit =>
      'እዚ ኮድ ዕድመ ድሮ ኣብቲ ዝለዓለ ዝፍቀድ ቁጽሪ መሳርሒታት ይጥቀመሉ ኣሎ።';

  @override
  String previewFor(String name) {
    return 'ምስጢራዊ ቅድመ-ርእይቶ ን$name';
  }

  @override
  String get errPreviewDailyLimit =>
      'ናይ ሎሚ ደረት ትንተና ናይዚ ቅድመ-ርእይቶ ተበጺሑ። ጽባሕ እንደገና ፈትኑ።';
}
