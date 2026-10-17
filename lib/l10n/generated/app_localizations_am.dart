// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Amharic (`am`).
class AppLocalizationsAm extends AppLocalizations {
  AppLocalizationsAm([String locale = 'am']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'አክሲዮንን ፎቶ ያንሱ፤ ስለሱ ሁሉንም ነገር ይወቁ።';

  @override
  String get homeHint =>
      'የአክሲዮን ሰርተፊኬት፣ የደላላ መተግበሪያ ማያ ገጽ፣ ጋዜጣ ወይም የኩባንያ አርማ – አክሲዮንን የሚለይ ማንኛውም ነገር።';

  @override
  String get takePhoto => 'ፎቶ አንሳ';

  @override
  String get chooseFromGallery => 'ከጋለሪ ምረጥ';

  @override
  String get chooseImage => 'ምስል ምረጥ';

  @override
  String get enterTickerManually => 'ምልክቱን በእጅ አስገባ';

  @override
  String get tickerInputLabel => 'የአክሲዮን ምልክት';

  @override
  String get tickerInputHint => 'ለምሳሌ AAPL';

  @override
  String get lookUp => 'ፈልግ';

  @override
  String demoModeBanner(String symbols) {
    return 'የማሳያ ሁነታ – የገበያ መረጃ ቁልፍ አልተዋቀረም። የናሙና መረጃ ለሚከተሉት ይገኛል፦ $symbols።';
  }

  @override
  String get recognizing => 'ምስሉን በመተንተን ላይ…';

  @override
  String get loadingData => 'መረጃ በመጫን ላይ…';

  @override
  String get noCandidatesTitle => 'ምንም አክሲዮን አልታወቀም';

  @override
  String get noCandidatesBody =>
      'በዚህ ምስል ውስጥ አክሲዮን መለየት አልቻልንም። ይበልጥ ጥርት ያለ ፎቶ ይሞክሩ ወይም ምልክቱን በእጅ ያስገቡ።';

  @override
  String get whatWeSaw => 'ያየነው';

  @override
  String get chooseCandidateTitle => 'የትኛውን አክሲዮን ማለትዎ ነበር?';

  @override
  String confidencePercent(int percent) {
    return '$percent% እርግጠኝነት';
  }

  @override
  String get settings => 'ቅንብሮች';

  @override
  String get language => 'ቋንቋ';

  @override
  String get systemLanguage => 'የሥርዓት ነባሪ';

  @override
  String get about => 'ስለ መተግበሪያው';

  @override
  String get disclaimer =>
      'ይህ መተግበሪያ መረጃ ብቻ ይሰጣል፤ የኢንቨስትመንት ምክር አይደለም። መረጃው ሊዘገይ ወይም ትክክል ላይሆን ይችላል።';

  @override
  String dataSource(String source) {
    return 'የመረጃ ምንጭ፦ $source';
  }

  @override
  String recognizerSource(String source) {
    return 'ለይቶ ማወቂያ፦ $source';
  }

  @override
  String get retry => 'እንደገና ሞክር';

  @override
  String get cancel => 'ይቅር';

  @override
  String get ok => 'እሺ';

  @override
  String get close => 'ዝጋ';

  @override
  String get errorGeneric => 'የሆነ ስህተት ተፈጥሯል።';

  @override
  String get errorSectionUnavailable => 'ይህ ክፍል ሊጫን አልቻለም።';

  @override
  String get notAvailable => 'የለም';

  @override
  String get sectionIdentity => 'መለያ';

  @override
  String get sectionPrice => 'ዋጋ';

  @override
  String get sectionValuation => 'የዋጋ ግምት';

  @override
  String get sectionFinancials => 'የፋይናንስ መረጃ';

  @override
  String get sectionDividend => 'የትርፍ ድርሻ';

  @override
  String get sectionProfile => 'የኩባንያ መገለጫ';

  @override
  String get sectionAnalysts => 'የተንታኞች ግምገማ';

  @override
  String get sectionNews => 'ዜና';

  @override
  String get sectionRecognition => 'የማወቂያ ዝርዝሮች';

  @override
  String get labelSymbol => 'ምልክት';

  @override
  String get labelExchange => 'የአክሲዮን ገበያ';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'ምንዛሬ';

  @override
  String get labelCountry => 'አገር';

  @override
  String get labelIndustry => 'ኢንዱስትሪ';

  @override
  String get labelSector => 'ዘርፍ';

  @override
  String get labelWebsite => 'ድር ጣቢያ';

  @override
  String get labelIpoDate => 'የIPO ቀን';

  @override
  String get labelMarketCap => 'የገበያ ካፒታል';

  @override
  String get labelSharesOutstanding => 'በስርጭት ላይ ያሉ አክሲዮኖች';

  @override
  String get labelEmployees => 'ሠራተኞች';

  @override
  String get labelCeo => 'ዋና ሥራ አስፈጻሚ';

  @override
  String get labelHeadquarters => 'ዋና መሥሪያ ቤት';

  @override
  String get labelDescription => 'መግለጫ';

  @override
  String get labelLastPrice => 'የመጨረሻ ዋጋ';

  @override
  String get labelChange => 'ለውጥ';

  @override
  String get labelOpen => 'የመክፈቻ ዋጋ';

  @override
  String get labelDayHigh => 'የቀኑ ከፍተኛ';

  @override
  String get labelDayLow => 'የቀኑ ዝቅተኛ';

  @override
  String get labelPreviousClose => 'ያለፈው መዝጊያ';

  @override
  String get labelWeek52High => 'የ52 ሳምንት ከፍተኛ';

  @override
  String get labelWeek52Low => 'የ52 ሳምንት ዝቅተኛ';

  @override
  String get labelAverageVolume10d => 'አማካይ የግብይት መጠን (10 ቀናት)';

  @override
  String updatedAt(String time) {
    return 'የተዘመነው፦ $time';
  }

  @override
  String get labelPeTrailing => 'P/E (ያለፈ)';

  @override
  String get labelPeForward => 'P/E (የሚጠበቅ)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / ነፃ የገንዘብ ፍሰት';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'ቤታ';

  @override
  String get labelRevenueTtm => 'ገቢ (TTM)';

  @override
  String get labelNetIncomeTtm => 'የተጣራ ትርፍ (TTM)';

  @override
  String get labelGrossMargin => 'ጠቅላላ የትርፍ ህዳግ';

  @override
  String get labelOperatingMargin => 'የሥራ ትርፍ ህዳግ';

  @override
  String get labelNetMargin => 'የተጣራ ትርፍ ህዳግ';

  @override
  String get labelRoe => 'የካፒታል ተመላሽ';

  @override
  String get labelRoa => 'የሀብት ተመላሽ';

  @override
  String get labelDebtToEquity => 'ዕዳ / ካፒታል';

  @override
  String get labelCurrentRatio => 'ወቅታዊ ጥምርታ';

  @override
  String get labelRevenueGrowth => 'የገቢ ዕድገት (ዓመታዊ)';

  @override
  String get labelEpsGrowth => 'የEPS ዕድገት (ዓመታዊ)';

  @override
  String get labelDividendYield => 'የትርፍ ድርሻ ተመን';

  @override
  String get labelDividendPerShare => 'የትርፍ ድርሻ በአክሲዮን';

  @override
  String get labelPayoutRatio => 'የትርፍ ክፍፍል ጥምርታ';

  @override
  String get labelConsensus => 'አጠቃላይ ስምምነት';

  @override
  String get ratingStrongBuy => 'ጠንካራ ግዢ';

  @override
  String get ratingBuy => 'ግዢ';

  @override
  String get ratingHold => 'መያዝ';

  @override
  String get ratingSell => 'ሽያጭ';

  @override
  String get ratingStrongSell => 'ጠንካራ ሽያጭ';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ተንታኞች',
      one: '1 ተንታኝ',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'ወቅት፦ $period';
  }

  @override
  String get noNews => 'የቅርብ ጊዜ ዜና የለም።';

  @override
  String get openArticle => 'ጽሑፉን ክፈት';

  @override
  String get openLinkFailed => 'ሊንኩን መክፈት አልተቻለም።';

  @override
  String get recognitionSummary => 'ማጠቃለያ';

  @override
  String get recognitionEvidence => 'ለምን እንዲህ እናስባለን';

  @override
  String get recognitionRawText => 'ከምስሉ የተነበበ ጽሑፍ';

  @override
  String get errMissingAnthropicKey =>
      'የምስል ማወቂያ አልተዋቀረም (ANTHROPIC_API_KEY የለም)። ምልክቱን በእጅ ያስገቡ።';

  @override
  String get errRecognitionUnreachable =>
      'ከማወቂያ አገልግሎቱ ጋር መገናኘት አልተቻለም። የበይነመረብ ግንኙነትዎን ያረጋግጡ።';

  @override
  String errRecognitionHttp(String status) {
    return 'የማወቂያ አገልግሎቱ ስህተት መልሷል (HTTP $status)።';
  }

  @override
  String get errRecognitionRefused => 'የማወቂያ አገልግሎቱ ይህን ምስል ማስኬድ አልቻለም።';

  @override
  String get errRecognitionTruncated => 'የማወቂያ ምላሹ ተቋርጧል። እባክዎ እንደገና ይሞክሩ።';

  @override
  String get errRecognitionBadResponse => 'ከማወቂያ አገልግሎቱ ያልተጠበቀ ምላሽ ደርሷል።';

  @override
  String get errRecognitionEmpty => 'የማወቂያ አገልግሎቱ ባዶ ምላሽ መልሷል።';

  @override
  String get errMissingFinnhubKey => 'የገበያ መረጃ አልተዋቀረም (FINNHUB_API_KEY የለም)።';

  @override
  String get errMarketUnreachable =>
      'ከገበያ መረጃ አገልግሎቱ ጋር መገናኘት አልተቻለም። የበይነመረብ ግንኙነትዎን ያረጋግጡ።';

  @override
  String get errMarketRateLimited =>
      'ወደ ገበያ መረጃ አገልግሎቱ በጣም ብዙ ጥያቄዎች ተልከዋል። እባክዎ አንድ ደቂቃ ይጠብቁ።';

  @override
  String errMarketHttp(String status) {
    return 'የገበያ መረጃ አገልግሎቱ ስህተት መልሷል (HTTP $status)።';
  }

  @override
  String get errMarketBadResponse => 'ከገበያ መረጃ አገልግሎቱ ያልተጠበቀ ምላሽ ደርሷል።';

  @override
  String errNoQuote(String symbol) {
    return 'ለ$symbol የዋጋ መረጃ አልተገኘም።';
  }

  @override
  String errNoProfile(String symbol) {
    return 'ለ$symbol የኩባንያ መገለጫ አልተገኘም።';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'የማሳያ ሁነታ የሚደግፈው እነዚህን ብቻ ነው፦ $symbols። ለቀጥታ መረጃ FINNHUB_API_KEY ያክሉ።';
  }

  @override
  String errUnknown(String detail) {
    return 'የሆነ ስህተት ተፈጥሯል፦ $detail';
  }

  @override
  String get newSearch => 'አዲስ ፍለጋ';

  @override
  String get recentSearches => 'የቅርብ ጊዜ';

  @override
  String get noRecentSearches => 'እስካሁን የቅርብ ጊዜ ፍለጋ የለም።';

  @override
  String get clearRecent => 'የቅርብ ጊዜውን አጽዳ';

  @override
  String get greeting => 'የትኛውን አክሲዮን እንመልከት?';

  @override
  String get searchHint => 'ምልክት ወይም የኩባንያ ስም';

  @override
  String get attachImage => 'ምስል አያይዝ';

  @override
  String get searchResultsTitle => 'የፍለጋ ውጤቶች';

  @override
  String errNoResults(String query) {
    return 'ለ«$query» ምንም አክሲዮን አልተገኘም።';
  }

  @override
  String get quickBarHint => 'ምልክት ወይም የኩባንያ ስም ይተይቡ…';

  @override
  String get openFullWindow => 'መስኮት ክፈት';

  @override
  String hotkeyHint(String shortcut) {
    return 'WhatStockን ለመጥራት በየትኛውም ቦታ $shortcut ይጫኑ።';
  }

  @override
  String get trayOpen => 'WhatStockን ክፈት';

  @override
  String get trayQuickSearch => 'ፈጣን ፍለጋ';

  @override
  String get trayQuit => 'ውጣ';

  @override
  String get appearance => 'መልክ';

  @override
  String get themeSystem => 'ሥርዓት';

  @override
  String get themeDark => 'ጨለማ';

  @override
  String get themeLight => 'ብርሃን';

  @override
  String get back => 'ተመለስ';

  @override
  String get aiSectionTitle => 'የAI ትንተና';

  @override
  String get aiIntro =>
      'በAI የተጻፈ ዝርዝር አጠቃላይ እይታ፦ የቅርብ ጊዜ ዜናዎች ማጠቃለያ፣ የንግድ ሥራው፣ ጥንካሬዎች፣ ስጋቶችና የተደበቁ ምክንያቶች፣ የዋጋ ግምት፣ ከሥነ-ልቦናዊ፣ ማኅበራዊ፣ ቴክኒካዊና ማክሮ ኢኮኖሚያዊ አንጻር የተዘጋጁ ሁኔታዎችን የያዘ የዋጋ ትንበያ እንዲሁም ምን መከታተል እንዳለብዎ።';

  @override
  String get aiGenerate => 'ትንተና ፍጠር';

  @override
  String get aiRegenerate => 'እንደገና ፍጠር';

  @override
  String get aiGenerating => 'ትንተናውን በማዘጋጀት ላይ… ይህ አንድ ወይም ሁለት ደቂቃ ሊወስድ ይችላል።';

  @override
  String get aiSources => 'ምንጮች';

  @override
  String aiGeneratedAt(String time) {
    return 'የተፈጠረው፦ $time';
  }

  @override
  String get aiDisclaimer =>
      'በይፋዊ መረጃና በቅርብ ጊዜ ዜናዎች ላይ የተመሠረተ በAI የተፈጠረ ትንተና። ስህተቶች ሊኖሩት ወይም ጊዜው ያለፈበት ሊሆን ይችላል፤ የኢንቨስትመንት ምክርም አይደለም።';

  @override
  String get errAiNotConfigured => 'የAI ትንተና አልተዋቀረም (ANTHROPIC_API_KEY የለም)።';

  @override
  String get errAiUnreachable =>
      'ከAI አገልግሎቱ ጋር መገናኘት አልተቻለም። የበይነመረብ ግንኙነትዎን ያረጋግጡ።';

  @override
  String errAiHttp(String status) {
    return 'የAI አገልግሎቱ ስህተት መልሷል (HTTP $status)።';
  }

  @override
  String get errAiRefused => 'የAI አገልግሎቱ ይህን አክሲዮን ለመተንተን ፈቃደኛ አልሆነም።';

  @override
  String get errAiBadResponse => 'ከAI አገልግሎቱ ያልተጠበቀ ምላሽ ደርሷል።';

  @override
  String get sectionChart => 'የዋጋ ገበታ';

  @override
  String get rangeOneWeek => '1 ሳምንት';

  @override
  String get rangeOneMonth => '1 ወር';

  @override
  String get rangeThreeMonths => '3 ወር';

  @override
  String get rangeOneYear => '1 ዓመት';

  @override
  String get rangeFiveYears => '5 ዓመት';

  @override
  String get chartUnavailable => 'ከአሁኑ የመረጃ ምንጭ የዋጋ ታሪክ አይገኝም።';

  @override
  String get sectionStatements => 'የሂሳብ መግለጫዎች (ዓመታዊ)';

  @override
  String get labelFiscalYear => 'የበጀት ዓመት';

  @override
  String get labelRevenue => 'ገቢ';

  @override
  String get labelNetIncome => 'የተጣራ ትርፍ';

  @override
  String get labelTotalAssets => 'ጠቅላላ ሀብት';

  @override
  String get labelTotalLiabilities => 'ጠቅላላ ዕዳ';

  @override
  String get labelEquity => 'የባለአክሲዮኖች ካፒታል';

  @override
  String get labelOperatingCashFlow => 'ከሥራ እንቅስቃሴ የገንዘብ ፍሰት';

  @override
  String get statementsUnavailable => 'ለዚህ አክሲዮን ሪፖርት የተደረጉ የሂሳብ መግለጫዎች አይገኙም።';

  @override
  String get launchAtLogin => 'ሲገቡ በራስ-ሰር ጀምር';

  @override
  String get hotkeyLabel => 'ሥርዓት-አቀፍ አቋራጭ';

  @override
  String get hotkeyRecordHint => 'እዚህ ጠቅ ያድርጉ፣ ከዚያ አዲሱን የቁልፍ ጥምረት ይጫኑ';

  @override
  String get hotkeyReset => 'ወደ ነባሪ መልስ';

  @override
  String get pasteImage => 'ምስል ከቅንጥብ ሰሌዳ ለጥፍ';

  @override
  String get errClipboardNoImage => 'በቅንጥብ ሰሌዳው ላይ ምስል የለም።';

  @override
  String get favorites => 'ተወዳጆች';

  @override
  String get addToFavorites => 'ወደ ተወዳጆች አክል';

  @override
  String get removeFromFavorites => 'ከተወዳጆች አስወግድ';

  @override
  String get noFavorites => 'እስካሁን ተወዳጆች የሉም። ለማከል በአክሲዮኑ ላይ ያለውን ኮከብ መታ ያድርጉ።';

  @override
  String get displayCurrency => 'የማሳያ ምንዛሬ';

  @override
  String get displayCurrencyNone => 'የአክሲዮኑ የራሱ ምንዛሬ ብቻ';

  @override
  String labelConverted(String currency) {
    return '≈ በ$currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'ተመን፦ 1 $from = $rate $to (ECB፣ $date)';
  }

  @override
  String get updates => 'ዝማኔዎች';

  @override
  String currentVersion(String version) {
    return 'ስሪት $version';
  }

  @override
  String get autoUpdate => 'ዝማኔዎችን በራስ-ሰር ጫን';

  @override
  String get checkForUpdates => 'ዝማኔዎችን ፈትሽ';

  @override
  String get updateChecking => 'ዝማኔዎችን በመፈተሽ ላይ…';

  @override
  String get updateUpToDate => 'የቅርብ ጊዜውን ስሪት እየተጠቀሙ ነው።';

  @override
  String updateAvailable(String version) {
    return 'ስሪት $version ይገኛል።';
  }

  @override
  String get updateDownloading => 'ዝማኔውን ከበስተጀርባ በማውረድ ላይ…';

  @override
  String get updateDownloaded => 'ዝማኔው ዝግጁ ነው። ለመጫን እንደገና ያስጀምሩ።';

  @override
  String get updateNow => 'አዘምን';

  @override
  String get restartNow => 'እንደገና አስጀምር';

  @override
  String get updatesViaStore => 'ዝማኔዎች በመተግበሪያ መደብሩ በኩል በራስ-ሰር ይደርሳሉ።';

  @override
  String get updateCheckFailed => 'ዝማኔዎችን መፈተሽ አልተቻለም።';

  @override
  String get subscription => 'የደንበኝነት ምዝገባ';

  @override
  String get planTrial => 'ሙከራ';

  @override
  String get planNormal => 'መደበኛ';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'ንቁ ዕቅድ የለም';

  @override
  String planAnalysesPerMonth(int count) {
    return 'በወር $count ትንተናዎች';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'የ$days ቀን ነፃ ሙከራ ከ$count ትንተናዎች ጋር';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'የሙከራ ጊዜ $days ቀናት ቀርተዋል',
      one: 'የሙከራ ጊዜ 1 ቀን ቀርቷል',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired => 'ነፃ የሙከራ ጊዜዎ አብቅቷል። መተንተን ለመቀጠል ዕቅድ ይምረጡ።';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'በዚህ ወቅት ከ$total ትንተናዎች $remaining ቀርተዋል';
  }

  @override
  String extraCredits(int count) {
    return '$count ተጨማሪ ትንተናዎች';
  }

  @override
  String renewsOn(String date) {
    return '$date ይታደሳል';
  }

  @override
  String get choosePlan => 'ዕቅድ ምረጥ';

  @override
  String get currentPlan => 'የአሁኑ ዕቅድ';

  @override
  String get subscribe => 'ደንበኝነት ይመዝገቡ';

  @override
  String get perMonth => '/ ወር';

  @override
  String get extraPacksTitle => 'ተጨማሪ ይፈልጋሉ? ተጨማሪ ትንተናዎችን ይግዙ';

  @override
  String get extraPacksHint =>
      'ተጨማሪ ትንተናዎች ጊዜያቸው አያልፍም፤ ወርሃዊ ድርሻዎ ካለቀ በኋላ ጥቅም ላይ ይውላሉ።';

  @override
  String get buy => 'ግዛ';

  @override
  String get restorePurchases => 'ግዢዎችን መልስ';

  @override
  String get manageSubscription => 'ምዝገባን አስተዳድር';

  @override
  String get purchaseSuccess => 'እናመሰግናለን! ግዢዎ ገቢር ሆኗል።';

  @override
  String get purchasePending => 'ግዢው በሂደት ላይ…';

  @override
  String get purchaseFailed => 'ግዢው ሊጠናቀቅ አልቻለም።';

  @override
  String get purchaseCanceled => 'ግዢው ተሰርዟል።';

  @override
  String get billingUnavailable =>
      'በዚህ መድረክ ላይ ግዢዎች ገና አይገኙም። በስልክዎ ወይም በMac ላይ ይመዝገቡ፤ ዕቅድዎ በሁሉም መሣሪያ ላይ ይሠራል።';

  @override
  String get errQuotaExceeded =>
      'ለዚህ ወቅት ምንም ትንተና አልቀረዎትም። ዕቅድዎን ያሻሽሉ ወይም ተጨማሪ ትንተናዎችን ይግዙ።';

  @override
  String get errTrialExpired => 'ነፃ የሙከራ ጊዜዎ አብቅቷል። ለመቀጠል ዕቅድ ይምረጡ።';

  @override
  String get errNoPlan => 'ለAI ትንተና ንቁ ዕቅድ ያስፈልጋል።';

  @override
  String get viewPlans => 'ዕቅዶችን እይ';

  @override
  String get usageTitle => 'አጠቃቀም';

  @override
  String get demoPurchaseNote => 'የማሳያ ክፍያ፦ በዚህ መድረክ ላይ ግዢዎች የማስመሰል ብቻ ናቸው።';

  @override
  String get mostPopular => 'በጣም ተወዳጅ';

  @override
  String get bestValue => 'ምርጥ ዋጋ';

  @override
  String get planFeaturesCommon =>
      'የፎቶ ማወቂያ፣ ቀጥታ መረጃ፣ ገበታዎች፣ ተወዳጆች እና ሁሉም 120 ቋንቋዎች በእያንዳንዱ ዕቅድ ውስጥ ተካትተዋል። ወርሃዊ ድርሻው የAI ትንተናዎችን ይሸፍናል።';

  @override
  String get searchLanguages => 'ቋንቋዎችን ፈልግ…';

  @override
  String get noLanguageMatch => 'የሚዛመድ ቋንቋ የለም።';

  @override
  String get aiSettings => 'የAI ትንተና';

  @override
  String get aiLength => 'ርዝመት';

  @override
  String get aiDepthBrief => 'አጭር';

  @override
  String get aiDepthStandard => 'መደበኛ';

  @override
  String get aiDepthDeep => 'ጥልቅ';

  @override
  String get aiDepthBriefDesc => 'ዋና ዋናዎቹ፣ በፍጥነት።';

  @override
  String get aiDepthStandardDesc => 'ሁሉንም ክፍሎች የያዘ ሙሉ ሪፖርት።';

  @override
  String get aiDepthDeepDesc => 'ተጨማሪ የድር ፍለጋዎች፣ ከተፎካካሪዎች ጋር ንጽጽር እና ጥልቅ ዝርዝር።';

  @override
  String aiDepthWords(String min, String max) {
    return 'ከ$min–$max ቃላት ገደማ';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ትንተናዎች ይጠቀማል',
      one: '1 ትንተና ይጠቀማል',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'የአንባቢ ደረጃ';

  @override
  String get aiReaderBeginner => 'ጀማሪ';

  @override
  String get aiReaderExperienced => 'ልምድ ያለው';

  @override
  String get aiReaderBeginnerDesc => 'ቀላል ቋንቋ፤ እያንዳንዱ ቴክኒካዊ ቃል ይብራራል።';

  @override
  String get aiReaderExperiencedDesc => 'መደበኛ የፋይናንስ ቃላትን የሚጠቀም የተጨመቀ ጽሑፍ።';

  @override
  String get aiCounterArgument => 'በጣም ጠንካራው ተቃራኒ መከራከሪያ';

  @override
  String get aiCounterArgumentDesc =>
      'ማጠቃለያው ሁልጊዜ በራሱ መደምደሚያ ላይ ባለው ምርጥ ተቃራኒ መከራከሪያ ይጠናቀቃል።';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'በዕቅድዎ በእያንዳንዱ ትንተና እስከ $count የድር ፍለጋዎች',
      one: 'በዕቅድዎ በእያንዳንዱ ትንተና እስከ 1 የድር ፍለጋ',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'የድር ፍለጋዎች በመደበኛ ርዝመት በዕቅድ፦ መደበኛ $normal፣ Pro $pro፣ Max $max፣ Ultra $ultra። አጭር 2 ያነሰ፣ ጥልቅ ደግሞ 2 ተጨማሪ ይጠቀማል።';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'እስከ $count የድር ፍለጋዎች',
      one: 'እስከ 1 የድር ፍለጋ',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'በእያንዳንዱ ትንተና $count የድር ፍለጋዎች',
      one: 'በእያንዳንዱ ትንተና 1 የድር ፍለጋ',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'ይህ ርዝመት $needed ትንተናዎችን ይፈልጋል፤ ግን የቀሩት $left ብቻ ናቸው። በቅንብሮች ውስጥ አጭር ርዝመት ይምረጡ ወይም ተጨማሪ ትንተናዎችን ያግኙ።';
  }

  @override
  String get outlookMarketMood => 'የገበያ ስሜት';

  @override
  String get moodVeryPessimistic => 'በጣም ጨለምተኛ';

  @override
  String get moodPessimistic => 'ጨለምተኛ';

  @override
  String get moodNeutral => 'ገለልተኛ';

  @override
  String get moodOptimistic => 'ተስፈኛ';

  @override
  String get moodVeryOptimistic => 'በጣም ተስፈኛ';

  @override
  String get scenarioBull => 'የጭማሪ ሁኔታ';

  @override
  String get scenarioBase => 'መሠረታዊ ሁኔታ';

  @override
  String get scenarioBear => 'የቅናሽ ሁኔታ';

  @override
  String outlookCurrentPrice(String price) {
    return 'የአሁኑ ዋጋ፦ $price';
  }

  @override
  String get outlookKeyLevels => 'ቁልፍ ደረጃዎች';

  @override
  String get keyLevelSupport => 'ድጋፍ';

  @override
  String get keyLevelResistance => 'ተቃውሞ';

  @override
  String get keyLevelAnchor => 'መልሕቅ';

  @override
  String get upcomingEvents => 'መጪ ክስተቶች';

  @override
  String get outlookChartNote =>
      'አመላካች ክልሎች ናቸው፤ ዕድሎቹ ግምታዊ ፍርዶች እንጂ ትንበያዎች አይደሉም።';

  @override
  String get accountTitle => 'መለያ';

  @override
  String get signIn => 'ግባ';

  @override
  String get signOut => 'ውጣ';

  @override
  String get notSignedIn => 'አልገቡም';

  @override
  String get accountBenefit => 'የደንበኝነት ምዝገባዎ በሁሉም መሣሪያዎችዎ ላይ እንዲሠራ ይግቡ።';

  @override
  String get accountSyncedNote =>
      'የደንበኝነት ምዝገባዎ እና የቀሩት ትንተናዎች በሁሉም መሣሪያ ላይ አንድ ናቸው።';

  @override
  String get signInTitle => 'ወደ WhatStock ይግቡ';

  @override
  String get emailLabel => 'የኢሜይል አድራሻ';

  @override
  String get continueWithEmail => 'በኢሜይል ቀጥል';

  @override
  String codeSentTo(String email) {
    return 'ባለ 6 አሃዝ ኮድ ወደ $email ልከናል። ለ10 ደቂቃዎች ያገለግላል።';
  }

  @override
  String get codeLabel => 'የመግቢያ ኮድ';

  @override
  String get resendCode => 'አዲስ ኮድ ላክ';

  @override
  String get useDifferentEmail => 'ሌላ ኢሜይል ተጠቀም';

  @override
  String get errInvalidCode => 'ኮዱ የተሳሳተ ነው ወይም ጊዜው አልፎበታል።';

  @override
  String get errInvalidEmail => 'እባክዎ ትክክለኛ የኢሜይል አድራሻ ያስገቡ።';

  @override
  String get errSignInFailed => 'መግባት አልተሳካም። ግንኙነትዎን ያረጋግጡና እንደገና ይሞክሩ።';

  @override
  String get checkoutWaiting =>
      'ክፍያውን በአሳሽዎ ውስጥ ያጠናቅቁ። ሲጠናቀቅ መተግበሪያው በራስ-ሰር ይዘምናል።';

  @override
  String get paymentViaStripe =>
      'በStripe በኩል በአሳሽዎ ውስጥ ደህንነቱ የተጠበቀ ክፍያ። በማንኛውም ጊዜ መሰረዝ ይችላሉ።';

  @override
  String get paymentViaStore =>
      'ክፍያው በApp Store ወይም በGoogle Play መለያዎ በኩል ይፈጸማል። በመደብሩ ቅንብሮች ውስጥ በማንኛውም ጊዜ መሰረዝ ይችላሉ።';

  @override
  String get keySpace => 'ስፔስ';

  @override
  String get doubleOptionTitle => 'Optionን ሁለቴ ተጫን';

  @override
  String get doubleOptionSubtitle =>
      'የOption ቁልፍን በፍጥነት ሁለቴ መጫንም WhatStockን ይጠራል።';

  @override
  String get doubleOptionPermission =>
      'በሌሎች መተግበሪያዎችም ውስጥ እንዲሠራ WhatStockን በSystem Settings → Privacy & Security → Input Monitoring ስር ይፍቀዱ፣ ከዚያ መተግበሪያውን እንደገና ይክፈቱ።';

  @override
  String get openSystemSettings => 'የሥርዓት ቅንብሮችን ክፈት';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'WhatStockን ለመጥራት በየትኛውም ቦታ $shortcut ይጫኑ ወይም Optionን ሁለቴ ይጫኑ።';
  }

  @override
  String get scenarioMostLikely => 'በጣም ሊሆን የሚችል';

  @override
  String get longTermToday => 'ዛሬ';

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
    return 'በዓመት $range';
  }

  @override
  String longTermLikely(String price) {
    return 'በጣም ሊሆን የሚችለው $price';
  }

  @override
  String get confidenceLow => 'ዝቅተኛ እርግጠኝነት';

  @override
  String get confidenceMedium => 'መካከለኛ እርግጠኝነት';

  @override
  String get confidenceHigh => 'ከፍተኛ እርግጠኝነት';

  @override
  String get longTermNote =>
      'የረጅም ጊዜ ክልሎች በተገለጹት ግምቶች ላይ የተመሠረቱ ሲሆኑ ከጊዜ ጋር ይሰፋሉ። ዋጋዎቹ የትርፍ ድርሻን አያካትቱም። ግምታዊ ፍርዶች እንጂ ትንበያዎች አይደሉም።';

  @override
  String get portfolio => 'ፖርትፎሊዮ';

  @override
  String get portfolioEmpty =>
      'እስካሁን እዚህ ምንም የለም። ያለዎትን ለመከታተል አንድ አክሲዮን ይክፈቱና «ወደ ፖርትፎሊዮ አክል»ን መታ ያድርጉ።';

  @override
  String get portfolioLocalNote =>
      'በዚህ መሣሪያ ላይ ብቻ ይቀመጣል። ድምሮቹ በECB የማጣቀሻ ተመኖች ይቀየራሉ፤ ዋጋዎች ሊዘገዩ ይችላሉ።';

  @override
  String get addToPortfolio => 'ወደ ፖርትፎሊዮ አክል';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol አክል';
  }

  @override
  String get portfolioQuantity => 'የአክሲዮኖች ብዛት';

  @override
  String portfolioBuyPrice(String currency) {
    return 'ዋጋ በአክሲዮን ($currency)';
  }

  @override
  String get portfolioBuyDate => 'የግዢ ቀን';

  @override
  String get portfolioAdd => 'አክል';

  @override
  String get portfolioInvalidNumber => 'ከዜሮ የሚበልጥ ቁጥር ያስገቡ።';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol ወደ ፖርትፎሊዮዎ ታክሏል።';
  }

  @override
  String get portfolioTotalValue => 'ጠቅላላ ዋጋ';

  @override
  String get portfolioToday => 'ዛሬ';

  @override
  String get portfolioGainLoss => 'ትርፍ/ኪሳራ';

  @override
  String get portfolioInvested => 'ኢንቨስት የተደረገ';

  @override
  String get portfolioAllocation => 'ድልድል';

  @override
  String get portfolioPositions => 'ይዞታዎች';

  @override
  String portfolioAvgCost(String price) {
    return 'አማካይ ወጪ $price';
  }

  @override
  String get portfolioYourPosition => 'የእርስዎ ይዞታ';

  @override
  String get portfolioPurchases => 'ግዢዎች';

  @override
  String get portfolioRemove => 'አስወግድ';

  @override
  String get portfolioExcluded => 'ዋጋ ወይም የምንዛሬ ተመን የሌላቸው ይዞታዎች ከድምሩ ውጭ ናቸው።';

  @override
  String get priceAlerts => 'የዋጋ ማንቂያዎች';

  @override
  String get setPriceAlert => 'የዋጋ ማንቂያ አዘጋጅ';

  @override
  String alertDialogTitle(String symbol) {
    return 'የዋጋ ማንቂያ · $symbol';
  }

  @override
  String get alertKindAbove => 'ከዋጋው በላይ ሲወጣ';

  @override
  String get alertKindBelow => 'ከዋጋው በታች ሲወርድ';

  @override
  String get alertKindMove => 'በአንድ ቀን ብዙ ሲለዋወጥ';

  @override
  String alertTargetPrice(String currency) {
    return 'ዋጋ ($currency)';
  }

  @override
  String get alertMovePercent => 'የዕለት ለውጥ (%)';

  @override
  String get alertAlreadyMet => 'ዋጋው አስቀድሞ ይህን ደረጃ አልፏል።';

  @override
  String get alertSave => 'ማንቂያ አዘጋጅ';

  @override
  String alertCreated(String symbol) {
    return 'ለ$symbol ማንቂያ ተዘጋጅቷል።';
  }

  @override
  String get alertsEmpty =>
      'እስካሁን የዋጋ ማንቂያዎች የሉም። ለማዘጋጀት አክሲዮን ይክፈቱና ደወሉን መታ ያድርጉ።';

  @override
  String get alertsNote =>
      'WhatStock በሚሠራበት ጊዜ ማንቂያዎች በየ5 ደቂቃው ይፈተሻሉ። በኮምፒውተር ላይ በምናሌ አሞሌው ወይም በሲስተም ትሬይ ውስጥ መሥራቱን ይቀጥላል፤ በስልክ ላይ ግን ለጊዜው ማንቂያዎች የሚደርሱት መተግበሪያው ክፍት ሲሆን ብቻ ነው።';

  @override
  String alertDescAbove(String price) {
    return 'ከ$price በላይ';
  }

  @override
  String alertDescBelow(String price) {
    return 'ከ$price በታች';
  }

  @override
  String alertDescMove(String percent) {
    return 'የዕለት ለውጥ ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return '$date በ$price ተቀስቅሷል';
  }

  @override
  String get alertRearm => 'እንደገና አንቃ';

  @override
  String get alertDelete => 'ሰርዝ';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol ከ$price በላይ ወጥቷል';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol ከ$price በታች ወርዷል';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol ዛሬ $percent ተለዋውጧል';
  }

  @override
  String alertHitBody(String price) {
    return 'የአሁኑ ዋጋ፦ $price';
  }

  @override
  String get alertOpen => 'ክፈት';

  @override
  String get keepInTrayTitle => 'መስኮቱ ሲዘጋ መሥራቱን ቀጥል';

  @override
  String get keepInTraySubtitle =>
      'WhatStock በምናሌ አሞሌው ወይም በሲስተም ትሬይ ውስጥ ይቆያል፤ ስለዚህ አቋራጭ ቁልፉ እና የዋጋ ማንቂያዎች መሥራታቸውን ይቀጥላሉ።';

  @override
  String get termsOfUse => 'የአጠቃቀም ውል';

  @override
  String get privacyPolicy => 'የግላዊነት መመሪያ';

  @override
  String get subscriptionLegal =>
      'የደንበኝነት ምዝገባዎች እስኪሰርዟቸው ድረስ በየወሩ በራስ-ሰር ይታደሳሉ። በመመዝገብ የአጠቃቀም ውሉን እና የግላዊነት መመሪያውን ይቀበላሉ።';

  @override
  String get deleteAccount => 'መለያ ሰርዝ';

  @override
  String get deleteAccountTitle => 'መለያዎ ይሰረዝ?';

  @override
  String get deleteAccountBody =>
      'መለያዎ እና በአገልጋያችን ላይ የተቀመጠው ሁሉ (ኢሜይል፣ ወርሃዊ ድርሻ፣ አጠቃቀም) እስከ መጨረሻው ይሰረዛል፤ ያልተጠቀሙባቸው ትንተናዎችም ይጠፋሉ። በአሳሽ የተከፈለ የደንበኝነት ምዝገባ ወዲያውኑ ይሰረዛል፤ የApp Store ወይም የGoogle Play ምዝገባ ግን በመደብሩ ቅንብሮች ውስጥ መሰረዝ አለበት።';

  @override
  String get deleteLocalData =>
      'በዚህ መሣሪያ ላይ ያለውን መረጃም ሰርዝ (ፖርትፎሊዮ፣ ማንቂያዎች፣ ተወዳጆች፣ ታሪክ፣ የተቀመጡ ትንተናዎች)';

  @override
  String get deleteAccountConfirm => 'እስከ መጨረሻው ሰርዝ';

  @override
  String get accountDeleted => 'መለያዎ ተሰርዟል።';

  @override
  String get errDeleteAccount =>
      'መለያውን መሰረዝ አልተቻለም። ግንኙነትዎን ያረጋግጡና እንደገና ይሞክሩ።';

  @override
  String get aiTrialBriefNote =>
      'የሙከራ ትንተናዎች አጭር ናቸው፤ በፈጣን የAI ሞዴል ይዘጋጃሉ። በዕቅድ ምርጡን የAI ሞዴላችንን፣ ተጨማሪ የድር ፍለጋዎችን እንዲሁም መደበኛ እና ጥልቅ ርዝመቶችን ያገኛሉ።';

  @override
  String get billingMonthly => 'ወርሃዊ';

  @override
  String get billingYearly => 'ዓመታዊ';

  @override
  String get yearlyDiscount => '2 ወር ነፃ';

  @override
  String get perYear => '/ ዓመት';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ በወር $price';
  }

  @override
  String get subscriptionLegalYearly =>
      'ዓመታዊ የደንበኝነት ምዝገባዎች እስኪሰርዟቸው ድረስ በየዓመቱ በራስ-ሰር ይታደሳሉ። በመመዝገብ የአጠቃቀም ውሉን እና የግላዊነት መመሪያውን ይቀበላሉ።';

  @override
  String get myAnalyses => 'የእኔ ትንተናዎች';

  @override
  String get navAlerts => 'ማንቂያዎች';

  @override
  String get inviteTitle => 'ዝግ ቅድመ እይታ';

  @override
  String get inviteBody =>
      'WhatStock ለጊዜው የሚገኘው በግብዣ ብቻ ነው። የተቀበሉትን የግብዣ ኮድ ያስገቡ።';

  @override
  String get inviteCodeLabel => 'የግብዣ ኮድ';

  @override
  String get inviteContinue => 'ቀጥል';

  @override
  String get inviteInvalid => 'ይህ የግብዣ ኮድ ልክ አይደለም።';

  @override
  String get inviteExpired => 'ይህ ግብዣ ጊዜው አልፎበታል። የጋበዘዎትን ሰው አዲስ ኮድ ይጠይቁ።';

  @override
  String get inviteDeviceLimit =>
      'ይህ የግብዣ ኮድ በሚፈቀደው ከፍተኛ የመሣሪያዎች ብዛት ላይ አስቀድሞ ጥቅም ላይ እየዋለ ነው።';

  @override
  String get previewConfidential => 'ሚስጥራዊ ቅድመ እይታ';

  @override
  String get errPreviewDailyLimit =>
      'የዚህ ቅድመ እይታ የዛሬ የትንተና ገደብ ተሟልቷል። ነገ እንደገና ይሞክሩ።';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ከ$count ሰዓታት በፊት',
      one: 'ከ1 ሰዓት በፊት',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ከ$count ቀናት በፊት',
      one: 'ከ1 ቀን በፊት',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'ይህ ትንተና ይዘምን?';

  @override
  String staleBody(String age) {
    return 'የተፈጠረው $age ነው። ከዚያ ወዲህ ዋጋዎች፣ ዜናዎች እና ውጤቶች ተቀይረው ሊሆን ይችላል።';
  }

  @override
  String get staleKeep => 'የቀድሞውን አሳይ';

  @override
  String get staleRefresh => 'አዲስ ፍጠር';

  @override
  String seeAll(int count) {
    return 'ሁሉንም አሳይ ($count)';
  }

  @override
  String get searchAnalyses => 'በትንተናዎች ውስጥ ፈልግ';

  @override
  String get deleteAnalysis => 'ሰርዝ';

  @override
  String analysisDeleted(String symbol) {
    return 'የ$symbol ትንተና ተሰርዟል';
  }

  @override
  String get keyLevelAlertHint =>
      'ዋጋው ደረጃው ላይ ሲደርስ ማንቂያ ለማግኘት አንድ ደረጃ መታ ያድርጉ።';

  @override
  String get shareAnalysisTitle => 'ትንተናውን አጋራ';

  @override
  String get shareAsImage => 'እንደ ምስል አጋራ';

  @override
  String get shareAsText => 'እንደ ጽሑፍ አጋራ';

  @override
  String get shareCardFooter => 'በWhatStock የተሰራ';

  @override
  String get shareCardDisclaimer => 'የAI ትንተና · የኢንቨስትመንት ምክር አይደለም';

  @override
  String get referralTitle => 'ጓደኞችን ይጋብዙ';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ተጨማሪ ትንተናዎች',
      one: '1 ተጨማሪ ትንተና',
    );
    return 'ኮድዎን ያጋሩ። ጓደኛዎ ወዲያውኑ $_temp0 ያገኛል፤ እርስዎም ከመጀመሪያ ትንተናው በኋላ ተመሳሳዩን ያገኛሉ።';
  }

  @override
  String get referralYourCode => 'የእርስዎ ኮድ';

  @override
  String referralStats(int invited, int rewarded) {
    return 'የተጋበዙ፦ $invited · የተሸለሙ፦ $rewarded';
  }

  @override
  String get referralHaveCode => 'ከጓደኛ የተገኘ ኮድ አለዎት?';

  @override
  String get referralRedeem => 'ተጠቀም';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ተጨማሪ ትንተናዎች ታክለዋል። እንኳን ደህና መጡ!',
      one: '1 ተጨማሪ ትንተና ታክሏል። እንኳን ደህና መጡ!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown => 'ይህ ኮድ የለም። ያረጋግጡና እንደገና ይሞክሩ።';

  @override
  String get referralErrOwn => 'የራስዎን ኮድ መጠቀም አይችሉም።';

  @override
  String get referralErrAlready => 'የጓደኛን ኮድ አስቀድመው ተጠቅመዋል።';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ተጨማሪ ትንተናዎች',
      one: '1 ተጨማሪ ትንተና',
    );
    return 'አክሲዮኖችን በWhatStock እተነትናለሁ፦ የአክሲዮን ፎቶ ያንሱ፣ AI ያብራራዋል። በኮዴ $code $_temp0 ያገኛሉ።';
  }

  @override
  String get referralCopied => 'ኮዱ ተቀድቷል';

  @override
  String get onboardTitle1 => 'አክሲዮንን ፎቶ ያንሱ';

  @override
  String get onboardBody1 =>
      'የደላላ መተግበሪያ ማያ ገጽ፣ ጋዜጣ ወይም የኩባንያ አርማ በቂ ነው፤ WhatStock አክሲዮኑን ለይቶ ዋጋውን፣ ገበታውንና ዋና ዋና አሃዞቹን ያሳያል።';

  @override
  String get onboardTitle2 => 'በደቂቃዎች ውስጥ ይረዱት';

  @override
  String get onboardBody2 =>
      'የAI ትንተናው አክሲዮኑን የሚያንቀሳቅሰውን፣ ስጋቶቹን፣ ግምታዊ ዋጋውንና ዋጋው ወዴት ሊሄድ እንደሚችል ሦስት ሁኔታዎችን ያብራራል – ከምንጮች ጋር፣ በእርስዎ ቋንቋ።';

  @override
  String get onboardTitle3 => 'ሁልጊዜ መረጃ ይኑርዎት';

  @override
  String get onboardBody3 =>
      'ተወዳጆች፣ ፖርትፎሊዮዎና የዋጋ ማንቂያዎች ያሳውቁዎታል። ትንተናዎችዎ በመሣሪያዎ ላይ ይቀመጣሉ፤ በማንኛውም ጊዜ እንደገና ሊከፍቷቸው ይችላሉ።';

  @override
  String get onboardNext => 'ቀጣይ';

  @override
  String get onboardStart => 'እንጀምር';

  @override
  String get onboardSkip => 'ዝለል';

  @override
  String changesTitle(String date) {
    return 'ካለፈው ትንተና ወዲህ ($date)';
  }

  @override
  String get changesPrice => 'ዋጋ';

  @override
  String get changesNoMajor => 'ትንበያው በጉልህ አልተለወጠም።';

  @override
  String get changesPreviousSummary => 'የቀድሞው ማጠቃለያ';

  @override
  String get telemetryTitle => 'WhatStockን ለማሻሻል ያግዙ';

  @override
  String get telemetryBody =>
      'ስም-አልባ የአጠቃቀም ስታቲስቲክስ እና የብልሽት ሪፖርቶችን ያጋሩ፦ የትኞቹ ባህሪያት ጥቅም ላይ እንደሚውሉ እና ምን እንደተበላሸ። አክሲዮኖችዎ፣ ትንተናዎችዎ ወይም የግል ውሂብዎ በፍጹም አይጋሩም። ይህን በማንኛውም ጊዜ በቅንብሮች ውስጥ መቀየር ይችላሉ።';

  @override
  String get telemetryAllow => 'ፍቀድ';

  @override
  String get telemetryDecline => 'አይ፣ አመሰግናለሁ';

  @override
  String get telemetrySetting => 'ስም-አልባ ስታቲስቲክስ እና የብልሽት ሪፖርቶች';

  @override
  String get telemetrySettingHint =>
      'ባህሪያት ምን ያህል ጊዜ ጥቅም ላይ እንደሚውሉ እና የስህተት ሪፖርቶች፣ ያለ የግል ውሂብ ወይም የፍለጋዎችዎ እና የትንተናዎችዎ ይዘት።';

  @override
  String get askButton => 'ስለዚህ ትንተና ይጠይቁ';

  @override
  String askTitle(String symbol) {
    return 'ስለ $symbol ጥያቄዎች';
  }

  @override
  String get askIntro =>
      'ስለ ትንተናው ማንኛውንም ነገር ይጠይቁ፦ አንድ ስጋት ምን ማለት እንደሆነ፣ ትንበያውን ምን ሊቀይረው እንደሚችል፣ አንድ ቁጥር እንዴት እንደተሰላ። መልሶቹ በዚህ ትንተና ላይ የተመሠረቱ ናቸው፤ የኢንቨስትመንት ምክርም አይደሉም።';

  @override
  String get askHint => 'ጥያቄ ይጠይቁ…';

  @override
  String get askSend => 'ላክ';

  @override
  String get askThinking => 'እያሰበ ነው…';

  @override
  String get askSuggest1 => 'ትልቁ ስጋት ምንድን ነው?';

  @override
  String get askSuggest2 => 'ትንበያውን ምን ሊቀይረው ይችላል?';

  @override
  String get askSuggest3 => 'በቀላል ቋንቋ አብራራልኝ';

  @override
  String get askMaxReached =>
      'ይህ ለዚህ ትንተና የመጨረሻው ጥያቄ ነበር። ተጨማሪ ለመጠየቅ አዲስ ትንተና ይፍጠሩ።';

  @override
  String get errAskLimit => 'የዛሬውን የጥያቄ ገደብ ደርሰዋል። እባክዎ ነገ እንደገና ይሞክሩ።';

  @override
  String get eventTomorrow => 'ነገ';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'በ$days ቀናት ውስጥ',
      one: 'በ1 ቀን ውስጥ',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'የሩብ ዓመት ውጤቶች';

  @override
  String get eventBeforeOpen => 'ገበያው ከመከፈቱ በፊት';

  @override
  String get eventAfterClose => 'ገበያው ከተዘጋ በኋላ';

  @override
  String eventEpsEstimate(String value) {
    return 'የሚጠበቀው EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'ከትንተናዎ';

  @override
  String get eventsHint =>
      'ለሚቀጥሉት 90 ቀናት የተወዳጆችዎ እና የፖርትፎሊዮ አክሲዮኖችዎ የውጤት ቀናት፣ እንዲሁም ትንተናዎችዎ የጠቆሟቸው ቀን ያላቸው ክስተቶች።';

  @override
  String get eventsEmpty =>
      'በሚቀጥሉት 90 ቀናት ውስጥ ቀን ያለው ክስተት የለም። የውጤት ቀናቸውን እዚህ ለማየት ተወዳጆችን ወይም የፖርትፎሊዮ አክሲዮኖችን ያክሉ።';

  @override
  String get compareTitle => 'ማወዳደሪያ';

  @override
  String get compareAdd => 'አክሲዮን አክል';

  @override
  String get compareRemove => 'አስወግድ';

  @override
  String get compareTickerHint => 'የአክሲዮን ምልክት፣ ለምሳሌ MSFT';

  @override
  String get compareHint =>
      'ዋና አሃዞች ጎን ለጎን፤ በእያንዳንዱ ረድፍ ምርጡ እሴት ጎልቶ ይታያል። መጠኖቹ በእያንዳንዱ አክሲዮን የራሱ ምንዛሬ ናቸው።';

  @override
  String get compareNoAnalysis => 'እስካሁን ትንተና የለም';

  @override
  String get portfolioDividends => 'ዓመታዊ የትርፍ ድርሻ';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent ተመን';
  }

  @override
  String get portfolioDividendNote =>
      'የሚጠበቀው ዓመታዊ የትርፍ ድርሻ ባለፉት 12 ወራት በተከፈለው የትርፍ ድርሻ ላይ የተመሠረተ ነው፤ የወደፊት ክፍያዎች ዋስትና የላቸውም።';

  @override
  String positionDividend(String amount) {
    return 'የትርፍ ድርሻ፦ በዓመት $amount';
  }

  @override
  String get chartAvgCost => 'የእርስዎ አማካይ';

  @override
  String get chartAlertLevel => 'ማንቂያ';

  @override
  String get marketsToday => 'የዛሬ ገበያዎች';

  @override
  String get notesTitle => 'የእኔ ማስታወሻዎች';

  @override
  String get notesHint => 'ለምን ገዙት፣ ምን እየተከታተሉ ነው፣ ምን ቢሆን ይሸጡታል?';

  @override
  String get notesInfo =>
      'በዚህ መሣሪያ ላይ ብቻ ይቀመጣል። የAI ትንተናው ማስታወሻዎችዎን ግምት ውስጥ ያስገባል።';

  @override
  String notesSaved(String date) {
    return 'የተቀመጠው፦ $date';
  }

  @override
  String get peersTitle => 'ተመሳሳይ ኩባንያዎች';

  @override
  String get portfolioExport => 'እንደ CSV ላክ';

  @override
  String get portfolioImport => 'ከCSV አስመጣ';

  @override
  String get portfolioImportHint =>
      'በእያንዳንዱ መስመር አንድ ግዢ ይለጥፉ፦ የአክሲዮን ምልክት፣ ብዛት፣ ዋጋ፣ ምንዛሬ፣ ቀን (YYYY-MM-DD)። ዓምዶቹ በኮማ፣ በሴሚኮሎን ወይም በታብ ሊለያዩ ይችላሉ፤ የርዕስ መስመሩ አማራጭ ነው።';

  @override
  String get portfolioImportButton => 'አስመጣ';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ግዢዎች ታክለዋል',
      one: '1 ግዢ ታክሏል',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count መስመሮች ተዘለዋል',
      one: '1 መስመር ተዘሏል',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'ፖርትፎሊዮ፣ ተወዳጆች፣ የዋጋ ማንቂያዎች እና ማስታወሻዎች በሁሉም መሣሪያዎችዎ ላይ ይሰምራሉ።';

  @override
  String syncLast(String time) {
    return 'ለመጨረሻ ጊዜ የሰመረው፦ $time';
  }

  @override
  String get syncNow => 'አሁን አስምር';

  @override
  String get syncFailed => 'ማስመር አልተሳካም። በራስ-ሰር እንደገና ይሞከራል።';

  @override
  String get alertEmailTitle => 'ማንቂያ ሲቀሰቀስ በኢሜይል አሳውቀኝ';

  @override
  String get alertEmailOn =>
      'ማንቂያዎችዎን በየጥቂት ደቂቃው እንፈትሻለን፤ መተግበሪያው ዝግ ቢሆንም በኢሜይል እናሳውቅዎታለን።';

  @override
  String get alertEmailSignIn =>
      'መተግበሪያው ዝግ ቢሆንም ማንቂያዎችን በኢሜይል ለማግኘት በቅንብሮች ውስጥ በኢሜይልዎ ይግቡ።';

  @override
  String get portfolioHistory => 'የዋጋ ለውጥ';

  @override
  String get portfolioReviewTitle => 'የፖርትፎሊዮ AI ትንተና';

  @override
  String get portfolioReviewIntro =>
      'AI ሙሉ ፖርትፎሊዮዎን ይገመግማል፦ የኢንቨስትመንት ክምችት፣ የዘርፍና የምንዛሪ ተጋላጭነት፣ አክሲዮኖችዎ የሚጋሯቸው ስጋቶች እና የትርፍ ድርሻ። 1 ትንተና ይጠቀማል።';

  @override
  String get portfolioReviewButton => 'ፖርትፎሊዮዬን ገምግም';

  @override
  String get portfolioReviewAgain => 'እንደገና ገምግም';

  @override
  String get portfolioReviewWorking => 'ፖርትፎሊዮዎ እየተገመገመ ነው…';

  @override
  String get digestTitle => 'ሳምንታዊ ማጠቃለያ በኢሜይል';

  @override
  String get digestHint =>
      'በየሰኞ፦ ተወዳጆችዎ እና ፖርትፎሊዮዎ ባለፈው ሳምንት እንዴት እንደተንቀሳቀሱ እና የሚመጡት የውጤት ቀኖቻቸው።';

  @override
  String get benchmarkTitle => 'ከS&P 500 ጋር ሲነጻጸር';

  @override
  String get benchmarkYours => 'የእርስዎ ግዢዎች';

  @override
  String get benchmarkIndex => 'ተመሳሳይ መጠን በS&P 500';

  @override
  String benchmarkAhead(String points) {
    return 'ከኢንዴክሱ በ$points የመቶኛ ነጥብ የተሻለ';
  }

  @override
  String benchmarkBehind(String points) {
    return 'ከኢንዴክሱ በ$points የመቶኛ ነጥብ ያነሰ';
  }

  @override
  String get benchmarkHint =>
      'እያንዳንዱ ግዢ በዚያው ቀን በS&P 500 ኢንዴክስ ፈንድ ውስጥ ኢንቨስት እንደተደረገ ተደርጎ። የትርፍ ድርሻ አልተካተተም፤ ያለፈ ተመላሽ የወደፊቱን አይተነብይም።';

  @override
  String get portfolioSell => 'ሽጥ';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbol ሽጥ';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'የሽያጭ ዋጋ በአክሲዮን ($currency)';
  }

  @override
  String get portfolioSellDate => 'የሽያጭ ቀን';

  @override
  String get portfolioSellAll => 'ሁሉም';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'የያዙት $quantity ነው';
  }

  @override
  String get portfolioSold => 'ተሽጧል';

  @override
  String get portfolioRealized => 'የተገኘ';

  @override
  String get portfolioClosed => 'የተዘጉ ይዞታዎች';

  @override
  String get portfolioClosedNote => 'ሁሉም አክሲዮኖች ተሸጠዋል';

  @override
  String get portfolioTransactions => 'ግብይቶች';

  @override
  String get portfolioRealizedByYear => 'የተገኘ ትርፍ በዓመት';

  @override
  String get portfolioRealizedHint =>
      'ሽያጮች በመጀመሪያ ከቀደሙት ግዢዎችዎ ጋር ይዛመዳሉ (FIFO)፣ በዛሬው የምንዛሪ ተመን ይቀየራሉ። ለግብር ማስታወቂያዎ የደላላዎን መግለጫ ይጠቀሙ።';

  @override
  String staleNewResults(String symbol, String date) {
    return 'ከዚህ ትንተና በኋላ አዲስ የሩብ ዓመት ውጤቶች ታትመዋል ($symbol፣ $date)።';
  }

  @override
  String get newResultsBadge => 'አዲስ ውጤቶች';

  @override
  String get portfolioImportBrokers =>
      'ከRevolut፣ Trading 212 እና Interactive Brokers የተላኩ ፋይሎችም ከሽያጮች ጋር ይታወቃሉ፤ የትርፍ ድርሻ እና ተቀማጭ ገንዘብ ይዘለላሉ።';

  @override
  String get portfolioImportFile => 'ፋይል ይምረጡ';

  @override
  String offlineBanner(String time) {
    return 'ግንኙነት የለም – ለመጨረሻ ጊዜ የተቀመጠው መረጃ እየታየ ነው ($time)።';
  }

  @override
  String get glossMarketCap =>
      'መላው ኩባንያ በአክሲዮን ገበያ ላይ ያለው ዋጋ፦ የአክሲዮን ዋጋ × የአክሲዮኖች ብዛት።';

  @override
  String get glossSharesOutstanding =>
      'ኩባንያው ያወጣቸው የአክሲዮኖች ብዛት። ቁጥሩ ከጨመረ እያንዳንዱ አክሲዮን ትንሽ ድርሻ ይኖረዋል፤ መልሶ መግዛት ይቀንሰዋል።';

  @override
  String get glossPeTrailing =>
      'ዋጋ ÷ ባለፉት 12 ወራት የአንድ አክሲዮን ትርፍ፦ ለስንት ዓመት የአሁኑ ትርፍ እንደሚከፍሉ ያሳያል። ዝቅተኛው ርካሽ ነው፤ ግን በፍጥነት የሚያድጉ ኩባንያዎች ብዙውን ጊዜ ከፍተኛ P/E አላቸው።';

  @override
  String get glossPeForward =>
      'እንደ P/E ነው፤ ግን ተንታኞች ለሚቀጥሉት 12 ወራት በሚጠብቁት ትርፍ። ካለፈው P/E በታች ከሆነ ትርፉ እንደሚያድግ ይጠበቃል።';

  @override
  String get glossPb =>
      'ዋጋ ÷ የአንድ አክሲዮን የመዝገብ ዋጋ (ሀብት ሲቀነስ ዕዳ)። ወደ 1 አካባቢ ማለት ገበያው ኩባንያውን በወረቀት ላይ ባለው ንብረት ልክ ይገምተዋል።';

  @override
  String get glossPs =>
      'የገበያ ዋጋ ÷ ዓመታዊ ገቢ። ገና ትንሽ ወይም ምንም ትርፍ ለሌላቸው ኩባንያዎች ጠቃሚ ነው፤ በአንድ ዘርፍ ውስጥ ያወዳድሩት።';

  @override
  String get glossEvToFcf =>
      'ዕዳን ጨምሮ የኩባንያው ዋጋ (EV) ÷ ከኢንቨስትመንት በኋላ በዓመት የሚያመነጨው ጥሬ ገንዘብ። ዝቅተኛ ማለት ለከፈሉት ዋጋ ብዙ ገንዘብ ያገኛሉ ማለት ነው።';

  @override
  String get glossPeg =>
      'P/E ÷ የሚጠበቅ ዓመታዊ የትርፍ ዕድገት (%)። ወደ 1 አካባቢ ብዙውን ጊዜ ፍትሃዊ ተብሎ ይታያል፤ P/E-ን ከዕድገት አንጻር ያሳያል።';

  @override
  String get glossEps =>
      'ባለፉት 12 ወራት የአንድ አክሲዮን ትርፍ። ከዓመት ዓመት የሚያድግ EPS ጤናማ ኩባንያ ከሚያሳዩ ጠንካራ ምልክቶች አንዱ ነው።';

  @override
  String get glossBeta =>
      'አክሲዮኑ ከገበያው ጋር ምን ያህል እንደሚንቀሳቀስ፦ 1 = እንደ ገበያው፣ 1.5 = 50% ገደማ የበለጠ መዋዠቅ፣ ከ1 በታች = የተረጋጋ።';

  @override
  String get glossRevenueTtm =>
      'ባለፉት 12 ወራት የተገኘ ጠቅላላ ሽያጭ፣ ማንኛውም ወጪ ከመቀነሱ በፊት።';

  @override
  String get glossNetIncomeTtm =>
      'ባለፉት 12 ወራት ሁሉም ወጪዎች፣ ወለድ እና ግብር ከተቀነሱ በኋላ የቀረ ትርፍ።';

  @override
  String get glossGrossMargin =>
      'ከምርቶቹ ቀጥተኛ ወጪ በኋላ የሚቀረው የገቢ ድርሻ። ከፍተኛ ህዳግ ብዙውን ጊዜ ዋጋ የመወሰን ኃይልን ያሳያል።';

  @override
  String get glossOperatingMargin =>
      'ንግዱን የማካሄድ ወጪዎች (ደመወዝ፣ ኪራይ፣ ማስታወቂያ) ከተቀነሱ በኋላ፣ ከወለድ እና ግብር በፊት የሚቀረው የገቢ ድርሻ።';

  @override
  String get glossNetMargin =>
      'የመጨረሻ ትርፍ ሆኖ የሚቀረው የገቢ ድርሻ። 20% ማለት ከእያንዳንዱ 100 ሽያጭ 20ው ትርፍ ነው።';

  @override
  String get glossRoe =>
      'የካፒታል ተመላሽ፦ ዓመታዊ ትርፍ ÷ የባለቤቶቹ ካፒታል። አመራሩ የባለአክሲዮኖችን ገንዘብ ምን ያህል በሚገባ እንደሚጠቀም ያሳያል፤ ከ15% ገደማ በላይ ጠንካራ ነው።';

  @override
  String get glossRoa =>
      'የሀብት ተመላሽ፦ ዓመታዊ ትርፍ ÷ ኩባንያው ያለው ሁሉም ሀብት። በአንድ ዘርፍ ውስጥ ያወዳድሩት።';

  @override
  String get glossDebtToEquity =>
      'ዕዳ ÷ የባለቤቶቹ ካፒታል። ከፍ ያለ ማለት ብዙ የተበደረ ገንዘብ ማለት ነው፦ የወለድ መጠን ሲጨምር ወይም ንግድ ሲቀዘቅዝ ትልቅ ስጋት።';

  @override
  String get glossCurrentRatio =>
      'የአጭር ጊዜ ሀብቶች ÷ በአንድ ዓመት ውስጥ የሚከፈሉ ሂሳቦች። ከ1 በላይ ማለት ኩባንያው የቅርብ ጊዜ ሂሳቦቹን መሸፈን ይችላል።';

  @override
  String get glossRevenueGrowth => 'ገቢ ከአንድ ዓመት በፊት ጋር ሲነጻጸር ምን ያህል እንዳደገ።';

  @override
  String get glossEpsGrowth =>
      'የአንድ አክሲዮን ትርፍ ከአንድ ዓመት በፊት ጋር ሲነጻጸር ምን ያህል እንዳደገ።';

  @override
  String get glossDividendYield =>
      'ዓመታዊ የትርፍ ድርሻ ÷ የአክሲዮን ዋጋ፦ በዓመት የሚያገኙት የጥሬ ገንዘብ ገቢ፣ ከሚከፍሉት ዋጋ በመቶኛ።';

  @override
  String get glossDividendPerShare => 'ባለፈው ዓመት ለአንድ አክሲዮን የተከፈለ የትርፍ ድርሻ።';

  @override
  String get glossPayoutRatio =>
      'እንደ የትርፍ ድርሻ የሚከፈለው የትርፍ ክፍል። ከ100% በላይ ከሆነ ኩባንያው ከሚያገኘው በላይ ይከፍላል፤ ይህ እምብዛም አይዘልቅም።';

  @override
  String get glossTitle => 'ምን ማለት ነው?';

  @override
  String get watchNewsTitle => 'ስለ አክሲዮኖችዎ ዜና';

  @override
  String get undo => 'ቀልብስ';

  @override
  String get watchSort => 'ደርድር';

  @override
  String get watchSortOwn => 'የእኔ ቅደም ተከተል';

  @override
  String get watchSortGainers => 'ከፍተኛ ጭማሪ ያላቸው መጀመሪያ';

  @override
  String get watchSortLosers => 'ከፍተኛ ቅናሽ ያላቸው መጀመሪያ';

  @override
  String get watchSortName => 'በምልክት (A–Z)';

  @override
  String get watchHint =>
      'ቅደም ተከተሉን ለመቀየር መያዣውን ይጎትቱ፣ ለማስወገድ ወደ ግራ ያንሸራትቱ። መስመሩ ያለፉትን 30 ቀናት ያሳያል።';

  @override
  String analysisReady(String symbol) {
    return '$symbol: ትንተናዎ ዝግጁ ነው።';
  }

  @override
  String alertFromCost(String price) {
    return 'ከአማካይ የግዢ ዋጋዎ ($price) አንጻር፦';
  }

  @override
  String get briefTitle => 'ዛሬ ከአክሲዮኖችዎ ጋር';

  @override
  String get briefButton => 'የዛሬውን ጠቅለል አድርግ';

  @override
  String get briefHint =>
      'ፖርትፎሊዮዎና ተወዳጆችዎ ዛሬ እንዴት እንደተንቀሳቀሱና የቅርብ ዜናዎች ስለእነሱ ምን እንደሚሉ የሚያሳይ አጭር የAI ማጠቃለያ። ትንተና አይጠቀምም።';

  @override
  String get briefRefresh => 'አዘምን';

  @override
  String get sectionEarnings => 'የትርፍ ውጤቶች';

  @override
  String earningsNext(String date) {
    return 'ቀጣይ ሪፖርት: $date';
  }

  @override
  String get earningsExpected => 'የሚጠበቀው EPS';

  @override
  String get earningsReported => 'ሪፖርት የተደረገው EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: 'ካለፉት $total ሩብ ዓመታት ውስጥ በ$beats ከሚጠበቀው EPS ጋር እኩል ወይም በላይ',
      one: 'ከ1 ሩብ ዓመት ውስጥ በ$beats ከሚጠበቀው EPS ጋር እኩል ወይም በላይ',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol ነገ የሩብ ዓመት ውጤቱን ያሳውቃል';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol ዛሬ የሩብ ዓመት ውጤቱን ያሳውቃል';
  }

  @override
  String get earningsRemindersTitle => 'የውጤት ማስታወሻዎች';

  @override
  String get earningsRemindersSubtitle =>
      'ተወዳጆችዎ ወይም የፖርትፎሊዮዎ አክሲዮኖች የሩብ ዓመት ውጤታቸውን ከማሳወቃቸው አንድ ቀን በፊት ማሳወቂያ';

  @override
  String addAllToFavorites(int count) {
    return 'ሁሉንም ወደ ተወዳጆች አክል ($count)';
  }

  @override
  String get portfolioImportPhoto => 'ከቅጽበታዊ ገጽ እይታ አስመጣ';

  @override
  String get holdingsReading => 'ይዞታዎችዎን በማንበብ ላይ…';

  @override
  String get holdingsReviewTitle => 'የተገኙ ይዞታዎች';

  @override
  String get holdingsReviewHint =>
      'ከማከልዎ በፊት ቁጥሮቹን ያረጋግጡ። ዋጋው የዛሬው ዋጋ ሳይሆን በአክሲዮን አማካይ የግዢ ዋጋዎ ነው።';

  @override
  String get holdingsNoPrice => 'በምስሉ ላይ አማካይ የግዢ ዋጋ የለም';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ይዞታዎችን አክል',
      one: '1 ይዞታ አክል',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'በዚህ ምስል ላይ ምንም የአክሲዮን ይዞታ አልተገኘም። የደላላዎን የይዞታዎች ገጽ ቅጽበታዊ ገጽ እይታ ይሞክሩ።';

  @override
  String get week52Range => 'የ52 ሳምንት ክልል';

  @override
  String week52BelowHigh(String percent) {
    return 'ከ52 ሳምንት ከፍተኛ በ$percent ዝቅ ያለ';
  }

  @override
  String get week52AtHigh => 'በ52 ሳምንት ከፍተኛ ላይ';

  @override
  String get alertKindTrailing => 'ከከፍተኛው ሲወርድ';

  @override
  String get alertTrailingPercent => 'ከከፍተኛው ቅናሽ (%)';

  @override
  String get alertTrailingHint =>
      'ዋጋውን ወደ ላይ ይከተላል፦ ማንቂያውን ካዘጋጁበት ጊዜ ጀምሮ ከደረሰበት ከፍተኛ ደረጃ ዋጋው ይህን ያህል ሲወርድ ያሳውቃል።';

  @override
  String alertDescTrailing(String percent) {
    return 'ከከፍተኛው $percent ቅናሽ';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'እስካሁን ከፍተኛ፦ $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol ከከፍተኛው $percent ወርዷል';
  }

  @override
  String get sectionInsiders => 'የውስጥ አዋቂዎች ግብይት';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ግዢዎች',
      one: '1 ግዢ',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ሽያጮች',
      one: '1 ሽያጭ',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'የተጣራ: $shares አክሲዮኖች';
  }

  @override
  String get insiderBuy => 'ገዛ';

  @override
  String get insiderSell => 'ሸጠ';

  @override
  String get insiderHint =>
      'ባለፉት 90 ቀናት በሥራ አስፈጻሚዎችና በዳይሬክተሮች በክፍት ገበያ የተደረጉ ግዢዎችና ሽያጮች (SEC Form 4)። የአማራጭ (option) አፈጻጸሞችና የአክሲዮን ሽልማቶች አይቆጠሩም።';

  @override
  String get insiderNone => 'ባለፉት 90 ቀናት በክፍት ገበያ የውስጥ አዋቂዎች ግዢ ወይም ሽያጭ የለም።';

  @override
  String get analystTrend => 'አስተያየቶች በየወሩ እንዴት እንደተለወጡ';

  @override
  String get watchListAll => 'ሁሉም';

  @override
  String get watchListNew => 'አዲስ ዝርዝር';

  @override
  String get watchListName => 'የዝርዝር ስም';

  @override
  String get watchListRename => 'ዝርዝሩን እንደገና ሰይም';

  @override
  String get watchListDelete => 'ዝርዝሩን ሰርዝ';

  @override
  String get watchListAddTo => 'ወደ ዝርዝር አክል';

  @override
  String get watchListEmpty =>
      'በዚህ ዝርዝር ውስጥ እስካሁን ምንም አክሲዮን የለም። ለማከል ከአክሲዮኑ አጠገብ ያለውን የዝርዝር አዝራር ይንኩ።';

  @override
  String get portfolioAskTitle => 'ስለ ፖርትፎሊዮዎ ጥያቄዎች';

  @override
  String get rangeYtd => 'ዘንድሮ';

  @override
  String get backupTitle => 'ምትኬ';

  @override
  String get backupSave => 'ምትኬ አስቀምጥ';

  @override
  String get backupSaveHint =>
      'ተወዳጆችዎ፣ ዝርዝሮችዎ፣ ፖርትፎሊዮዎ፣ ማንቂያዎችዎ እና ማስታወሻዎችዎ በአንድ ፋይል ውስጥ።';

  @override
  String get backupRestore => 'ከምትኬ ወደነበረበት መልስ';

  @override
  String get backupRestoreHint => 'በፋይሉ ውስጥ ያለውን ያክላል፤ አሁን ካለዎት ምንም አይሰረዝም።';

  @override
  String get backupRestored => 'ምትኬው ወደነበረበት ተመልሷል።';

  @override
  String get backupInvalid => 'ይህ ፋይል የWhatStock ምትኬ አይደለም።';

  @override
  String get allocationPositions => 'አክሲዮኖች';

  @override
  String get allocationSectors => 'ዘርፎች';

  @override
  String get allocationCurrencies => 'ምንዛሬዎች';

  @override
  String get compareReturn1y => 'የ1 ዓመት ተመላሽ';

  @override
  String get compareFromHigh => 'ከ52 ሳምንት ከፍተኛ ያለው ርቀት';

  @override
  String get briefAutoTitle => 'በየማለዳው ዕለታዊ ማጠቃለያ';

  @override
  String get briefAutoSubtitle =>
      '«ዛሬ ከአክሲዮኖችዎ ጋር» መተግበሪያው እየሠራ ባለበት ጊዜ ከጠዋቱ 7:00 በኋላ በራሱ ይዘጋጃል፤ በኮምፒውተር ላይ ማሳወቂያ ያሳውቅዎታል። ከዕለታዊ የጥያቄ ገደብዎ ይቆጠራል እንጂ ትንተና አይጠቀምም።';

  @override
  String get targetsButton => 'የዒላማ ድልድል';

  @override
  String get targetsTitle => 'የዒላማ ድልድል';

  @override
  String get targetsHint =>
      'እያንዳንዱ አክሲዮን ከፖርትፎሊዮው ምን ያህል ድርሻ እንዲኖረው ያስቀምጡ። ዒላማ ከሌለ መስኩን ባዶ ይተዉት። ከዚያ መተግበሪያው ዒላማውን ለመድረስ ምን መግዛት ወይም መሸጥ እንዳለብዎ ያሳያል።';

  @override
  String targetsSum(String percent) {
    return 'ጠቅላላ፦ $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'ግዛ ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'ሽጥ ≈ $amount';
  }

  @override
  String get rebalanceOk => 'ዒላማ ላይ';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol ከሚጠበቀው EPS በላይ አስመዝግቧል';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol ከሚጠበቀው EPS በታች አስመዝግቧል';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'ሪፖርት የተደረገው EPS $actual፣ የሚጠበቀው $estimate';
  }

  @override
  String get newsExplain => 'ይህ ምን ማለት ነው?';

  @override
  String get newsExplainNote =>
      'በርዕሱና በማጠቃለያው ላይ ብቻ የተመሠረተ የAI ማብራሪያ። የኢንቨስትመንት ምክር አይደለም። ከዕለታዊ የጥያቄ ገደብዎ ይቆጠራል እንጂ ትንተና አይጠቀምም።';

  @override
  String get watchAlertAll => 'ለትልቅ የዕለት ለውጥ ማንቂያ';

  @override
  String get watchAlertAllHint =>
      'በዚህ ዝርዝር ውስጥ ላለ እያንዳንዱ አክሲዮን የዋጋ ማንቂያ፦ በአንድ ቀን ይህን ያህል ወደ ላይም ሆነ ወደ ታች ሲለዋወጥ ያሳውቃል። አስቀድሞ ማንቂያ ያላቸው አክሲዮኖች የነበራቸውን ይይዛሉ።';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ማንቂያዎች ተቀናብረዋል',
      one: '1 ማንቂያ ተቀናብሯል',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'የተገኘ ትርፍ ላክ (CSV)';

  @override
  String get portfolioAnnualReturn => 'ዓመታዊ ተመላሽ';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / ዓመት';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'በገንዘብ የተመዘነ ዓመታዊ ተመላሽ (XIRR)፦ መቼ እንደገዙና እንደሸጡ ግምት ውስጥ ያስገባል፣ ስለዚህ በኋላ የተጨመረ ገንዘብ አያዛባውም። የመጀመሪያ ግዢዎ ቢያንስ አንድ ዓመት ሲሞላው ይታያል፤ የትርፍ ድርሻ አልተካተተም።';

  @override
  String get eventsAddToCalendar => 'ወደ ቀን መቁጠሪያ አክል (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'የፖርትፎሊዮ ማንቂያ';

  @override
  String get portfolioMoveAlertSubtitle =>
      'መላው ፖርትፎሊዮዎ በአንድ ቀን ይህን ያህል ሲንቀሳቀስ ማሳወቂያ።';

  @override
  String get portfolioMoveAlertOff => 'ጠፍቷል';

  @override
  String portfolioMoveUp(String percent) {
    return 'ፖርትፎሊዮዎ ዛሬ በ$percent ጨምሯል';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'ፖርትፎሊዮዎ ዛሬ በ$percent ቀንሷል';
  }

  @override
  String get whatIfTitle => 'ኢንቨስት ብታደርግ ኖሮ?';

  @override
  String get whatIfAmount => 'መጠን';

  @override
  String whatIfResult(String amount, String period) {
    return 'ከ$period በፊት ኢንቨስት የተደረገ $amount ዛሬ የሚያወጣው';
  }

  @override
  String get whatIfNote =>
      'በአክሲዮኑ ዋጋ ላይ ብቻ የተመሠረተ ነው፤ የትርፍ ድርሻ፣ ክፍያዎች እና ግብሮች አልተካተቱም። ያለፈ ትርፍ የወደፊቱን አይተነብይም።';

  @override
  String get watchShare => 'ዝርዝሩን አጋራ';

  @override
  String get watchImport => 'የአክሲዮን ምልክቶችን አክል';

  @override
  String get watchImportHint =>
      'በኮማ፣ በክፍተት ወይም በአዲስ መስመር የተለያዩ የአክሲዮን ምልክቶችን ይለጥፉ – ለምሳሌ አንድ ሰው ያጋራዎትን ዝርዝር።';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count አክሲዮኖች ታክለዋል',
      one: '1 አክሲዮን ታክሏል',
      zero: 'አዲስ አክሲዮን የለም',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'ትልቁ መጀመሪያ';

  @override
  String get positionsSortGain => 'ከፍተኛ ጠቅላላ ትርፍ መጀመሪያ';

  @override
  String get positionsSortToday => 'የዛሬ ምርጥ መጀመሪያ';

  @override
  String get chartMyBuys => 'የእርስዎ ግዢዎች';

  @override
  String get chartMySells => 'የእርስዎ ሽያጮች';

  @override
  String get shortcutsTitle => 'የቁልፍ ሰሌዳ አቋራጮች';

  @override
  String usMarketOpen(String time) {
    return 'የአሜሪካ ገበያ ክፍት ነው · በ$time ውስጥ ይዘጋል';
  }

  @override
  String usMarketClosed(String time) {
    return 'የአሜሪካ ገበያ ዝግ ነው · በ$time ውስጥ ይከፈታል';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes ደቂቃ';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours ሰዓት $minutes ደቂቃ';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days ቀን $hours ሰዓት';
  }

  @override
  String get portfolioGoalSet => 'ግብ አስቀምጥ';

  @override
  String get portfolioGoalTitle => 'የፖርትፎሊዮ ግብ';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · ግብ፦ $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'ግቡ ተሳክቷል፦ $amount';
  }

  @override
  String get portfolioGoalRemove => 'ግቡን አስወግድ';

  @override
  String get alertEdit => 'ማንቂያ አርትዕ';

  @override
  String get positionOpenLots => 'አሁንም የተያዙ (የቀደሙት መጀመሪያ)';

  @override
  String get lotRemoved => 'ግብይቱ ተሰርዟል';
}
