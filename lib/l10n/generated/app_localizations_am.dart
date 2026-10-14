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
}
