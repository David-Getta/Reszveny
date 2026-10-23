// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Khmer Central Khmer (`km`).
class AppLocalizationsKm extends AppLocalizations {
  AppLocalizationsKm([String locale = 'km']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'ថតរូបភាគហ៊ុន ហើយស្វែងយល់អ្វីៗទាំងអស់អំពីវា។';

  @override
  String get homeHint =>
      'វិញ្ញាបនបត្រភាគហ៊ុន អេក្រង់កម្មវិធីឈ្មួញកណ្ដាល កាសែត ឬឡូហ្គោក្រុមហ៊ុន – អ្វីក៏បានដែលអាចសម្គាល់ភាគហ៊ុនមួយ។';

  @override
  String get takePhoto => 'ថតរូប';

  @override
  String get chooseFromGallery => 'ជ្រើសរើសពីវិចិត្រសាល';

  @override
  String get chooseImage => 'ជ្រើសរើសរូបភាព';

  @override
  String get enterTickerManually => 'បញ្ចូលនិមិត្តសញ្ញាដោយដៃ';

  @override
  String get tickerInputLabel => 'និមិត្តសញ្ញាភាគហ៊ុន';

  @override
  String get tickerInputHint => 'ឧ. AAPL';

  @override
  String get lookUp => 'ស្វែងរក';

  @override
  String demoModeBanner(String symbols) {
    return 'របៀបបង្ហាញគំរូ – មិនទាន់កំណត់សោទិន្នន័យទីផ្សារទេ។ មានទិន្នន័យគំរូសម្រាប់៖ $symbols។';
  }

  @override
  String get recognizing => 'កំពុងវិភាគរូបភាព…';

  @override
  String get loadingData => 'កំពុងផ្ទុកទិន្នន័យ…';

  @override
  String get noCandidatesTitle => 'រកមិនឃើញភាគហ៊ុនទេ';

  @override
  String get noCandidatesBody =>
      'យើងមិនអាចសម្គាល់ភាគហ៊ុនក្នុងរូបភាពនេះបានទេ។ សាកល្បងថតរូបឱ្យច្បាស់ជាងនេះ ឬបញ្ចូលនិមិត្តសញ្ញាដោយដៃ។';

  @override
  String get whatWeSaw => 'អ្វីដែលយើងបានឃើញ';

  @override
  String get chooseCandidateTitle => 'តើអ្នកចង់សំដៅលើភាគហ៊ុនមួយណា?';

  @override
  String confidencePercent(int percent) {
    return 'ទំនុកចិត្ត $percent%';
  }

  @override
  String get settings => 'ការកំណត់';

  @override
  String get language => 'ភាសា';

  @override
  String get systemLanguage => 'លំនាំដើមប្រព័ន្ធ';

  @override
  String get about => 'អំពី';

  @override
  String get disclaimer =>
      'កម្មវិធីនេះផ្ដល់តែព័ត៌មានប៉ុណ្ណោះ មិនមែនជាដំបូន្មានវិនិយោគទេ។ ទិន្នន័យអាចយឺត ឬមិនត្រឹមត្រូវ។';

  @override
  String dataSource(String source) {
    return 'ប្រភពទិន្នន័យ៖ $source';
  }

  @override
  String recognizerSource(String source) {
    return 'ការសម្គាល់៖ $source';
  }

  @override
  String get retry => 'ព្យាយាមម្ដងទៀត';

  @override
  String get cancel => 'បោះបង់';

  @override
  String get ok => 'យល់ព្រម';

  @override
  String get close => 'បិទ';

  @override
  String get errorGeneric => 'មានបញ្ហាអ្វីមួយកើតឡើង។';

  @override
  String get errorSectionUnavailable => 'មិនអាចផ្ទុកផ្នែកនេះបានទេ។';

  @override
  String get notAvailable => 'គ្មាន';

  @override
  String get sectionIdentity => 'ការសម្គាល់អត្តសញ្ញាណ';

  @override
  String get sectionPrice => 'តម្លៃ';

  @override
  String get sectionValuation => 'ការវាយតម្លៃ';

  @override
  String get sectionFinancials => 'ហិរញ្ញវត្ថុ';

  @override
  String get sectionDividend => 'ភាគលាភ';

  @override
  String get sectionProfile => 'ប្រវត្តិរូបក្រុមហ៊ុន';

  @override
  String get sectionAnalysts => 'ការណែនាំរបស់អ្នកវិភាគ';

  @override
  String get sectionNews => 'ព័ត៌មាន';

  @override
  String get sectionRecognition => 'ព័ត៌មានលម្អិតនៃការសម្គាល់';

  @override
  String get labelSymbol => 'និមិត្តសញ្ញា';

  @override
  String get labelExchange => 'ផ្សារមូលបត្រ';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'រូបិយប័ណ្ណ';

  @override
  String get labelCountry => 'ប្រទេស';

  @override
  String get labelIndustry => 'ឧស្សាហកម្ម';

  @override
  String get labelSector => 'វិស័យ';

  @override
  String get labelWebsite => 'គេហទំព័រ';

  @override
  String get labelIpoDate => 'កាលបរិច្ឆេទ IPO';

  @override
  String get labelMarketCap => 'មូលធនូបនីយកម្មទីផ្សារ';

  @override
  String get labelSharesOutstanding => 'ភាគហ៊ុនកំពុងចរាចរ';

  @override
  String get labelEmployees => 'បុគ្គលិក';

  @override
  String get labelCeo => 'នាយកប្រតិបត្តិ';

  @override
  String get labelHeadquarters => 'ទីស្នាក់ការកណ្ដាល';

  @override
  String get labelDescription => 'ការពិពណ៌នា';

  @override
  String get labelLastPrice => 'តម្លៃចុងក្រោយ';

  @override
  String get labelChange => 'ការប្រែប្រួល';

  @override
  String get labelOpen => 'តម្លៃបើក';

  @override
  String get labelDayHigh => 'ខ្ពស់បំផុតក្នុងថ្ងៃ';

  @override
  String get labelDayLow => 'ទាបបំផុតក្នុងថ្ងៃ';

  @override
  String get labelPreviousClose => 'តម្លៃបិទមុន';

  @override
  String get labelWeek52High => 'ខ្ពស់បំផុត 52 សប្ដាហ៍';

  @override
  String get labelWeek52Low => 'ទាបបំផុត 52 សប្ដាហ៍';

  @override
  String get labelAverageVolume10d => 'បរិមាណជួញដូរមធ្យម (10 ថ្ងៃ)';

  @override
  String updatedAt(String time) {
    return 'បានធ្វើបច្ចុប្បន្នភាព $time';
  }

  @override
  String get labelPeTrailing => 'P/E (កន្លងមក)';

  @override
  String get labelPeForward => 'P/E (ព្យាករ)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / លំហូរសាច់ប្រាក់សេរី';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'បេតា';

  @override
  String get labelRevenueTtm => 'ចំណូល (TTM)';

  @override
  String get labelNetIncomeTtm => 'ប្រាក់ចំណេញសុទ្ធ (TTM)';

  @override
  String get labelGrossMargin => 'អត្រាប្រាក់ចំណេញដុល';

  @override
  String get labelOperatingMargin => 'អត្រាប្រាក់ចំណេញប្រតិបត្តិការ';

  @override
  String get labelNetMargin => 'អត្រាប្រាក់ចំណេញសុទ្ធ';

  @override
  String get labelRoe => 'ផលចំណេញលើមូលធនម្ចាស់ភាគហ៊ុន';

  @override
  String get labelRoa => 'ផលចំណេញលើទ្រព្យសកម្ម';

  @override
  String get labelDebtToEquity => 'បំណុល / មូលធនម្ចាស់ភាគហ៊ុន';

  @override
  String get labelCurrentRatio => 'អនុបាតចរន្ត';

  @override
  String get labelRevenueGrowth => 'កំណើនចំណូល (YoY)';

  @override
  String get labelEpsGrowth => 'កំណើន EPS (YoY)';

  @override
  String get labelDividendYield => 'ទិន្នផលភាគលាភ';

  @override
  String get labelDividendPerShare => 'ភាគលាភក្នុងមួយភាគហ៊ុន';

  @override
  String get labelPayoutRatio => 'អនុបាតបែងចែកភាគលាភ';

  @override
  String get labelYieldOnCost => 'ទិន្នផលលើថ្លៃដើម';

  @override
  String get labelDividendGrowth5y => 'កំណើនភាគលាភ (5 ឆ្នាំ)';

  @override
  String get dividendNone => 'មិនមានការបង់ភាគលាភក្នុងរយៈពេល 12 ខែចុងក្រោយទេ។';

  @override
  String get dividendOnYourShares => 'លើភាគហ៊ុនរបស់អ្នក ក្នុងមួយឆ្នាំ';

  @override
  String get labelConsensus => 'មតិរួម';

  @override
  String get ratingStrongBuy => 'ទិញខ្លាំង';

  @override
  String get ratingBuy => 'ទិញ';

  @override
  String get ratingHold => 'កាន់ទុក';

  @override
  String get ratingSell => 'លក់';

  @override
  String get ratingStrongSell => 'លក់ខ្លាំង';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'អ្នកវិភាគ $count នាក់',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'រយៈពេល៖ $period';
  }

  @override
  String get noNews => 'មិនមានព័ត៌មានថ្មីៗទេ។';

  @override
  String get openArticle => 'បើកអត្ថបទ';

  @override
  String get openLinkFailed => 'មិនអាចបើកតំណបានទេ។';

  @override
  String get recognitionSummary => 'សេចក្ដីសង្ខេប';

  @override
  String get recognitionEvidence => 'ហេតុអ្វីយើងគិតដូច្នេះ';

  @override
  String get recognitionRawText => 'អត្ថបទដែលអានបានពីរូបភាព';

  @override
  String get errMissingAnthropicKey =>
      'ការសម្គាល់រូបភាពមិនទាន់បានកំណត់ទេ (គ្មាន ANTHROPIC_API_KEY)។ សូមបញ្ចូលនិមិត្តសញ្ញាដោយដៃ។';

  @override
  String get errRecognitionUnreachable =>
      'មិនអាចភ្ជាប់ទៅសេវាសម្គាល់រូបភាពបានទេ។ សូមពិនិត្យការតភ្ជាប់អ៊ីនធឺណិតរបស់អ្នក។';

  @override
  String errRecognitionHttp(String status) {
    return 'សេវាសម្គាល់រូបភាពបានត្រឡប់កំហុស (HTTP $status)។';
  }

  @override
  String get errRecognitionRefused =>
      'សេវាសម្គាល់រូបភាពមិនអាចដំណើរការរូបភាពនេះបានទេ។';

  @override
  String get errRecognitionTruncated =>
      'ការឆ្លើយតបពីសេវាសម្គាល់រូបភាពត្រូវបានកាត់ផ្ដាច់។ សូមព្យាយាមម្ដងទៀត។';

  @override
  String get errRecognitionBadResponse =>
      'ការឆ្លើយតបមិនរំពឹងទុកពីសេវាសម្គាល់រូបភាព។';

  @override
  String get errRecognitionEmpty => 'សេវាសម្គាល់រូបភាពបានត្រឡប់ការឆ្លើយតបទទេ។';

  @override
  String get errMissingFinnhubKey =>
      'ទិន្នន័យទីផ្សារមិនទាន់បានកំណត់ទេ (គ្មាន FINNHUB_API_KEY)។';

  @override
  String get errMarketUnreachable =>
      'មិនអាចភ្ជាប់ទៅសេវាទិន្នន័យទីផ្សារបានទេ។ សូមពិនិត្យការតភ្ជាប់អ៊ីនធឺណិតរបស់អ្នក។';

  @override
  String get errMarketRateLimited =>
      'សំណើទៅសេវាទិន្នន័យទីផ្សារច្រើនពេក។ សូមរង់ចាំមួយនាទី។';

  @override
  String errMarketHttp(String status) {
    return 'សេវាទិន្នន័យទីផ្សារបានត្រឡប់កំហុស (HTTP $status)។';
  }

  @override
  String get errMarketBadResponse =>
      'ការឆ្លើយតបមិនរំពឹងទុកពីសេវាទិន្នន័យទីផ្សារ។';

  @override
  String errNoQuote(String symbol) {
    return 'រកមិនឃើញទិន្នន័យតម្លៃសម្រាប់ $symbol ទេ។';
  }

  @override
  String errNoProfile(String symbol) {
    return 'រកមិនឃើញប្រវត្តិរូបក្រុមហ៊ុនសម្រាប់ $symbol ទេ។';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'របៀបបង្ហាញគំរូគាំទ្រតែ $symbols ប៉ុណ្ណោះ។ បន្ថែម FINNHUB_API_KEY ដើម្បីទទួលបានទិន្នន័យផ្ទាល់។';
  }

  @override
  String errUnknown(String detail) {
    return 'មានបញ្ហាកើតឡើង៖ $detail';
  }

  @override
  String get newSearch => 'ស្វែងរកថ្មី';

  @override
  String get recentSearches => 'ថ្មីៗ';

  @override
  String get noRecentSearches => 'មិនទាន់មានការស្វែងរកថ្មីៗនៅឡើយទេ។';

  @override
  String get clearRecent => 'សម្អាតថ្មីៗ';

  @override
  String get greeting => 'តើយើងមើលភាគហ៊ុនមួយណាដែរ?';

  @override
  String get searchHint => 'និមិត្តសញ្ញា ឬឈ្មោះក្រុមហ៊ុន';

  @override
  String get attachImage => 'ភ្ជាប់រូបភាព';

  @override
  String get searchResultsTitle => 'លទ្ធផលស្វែងរក';

  @override
  String errNoResults(String query) {
    return 'រកមិនឃើញភាគហ៊ុនសម្រាប់ «$query» ទេ។';
  }

  @override
  String get quickBarHint => 'វាយនិមិត្តសញ្ញា ឬឈ្មោះក្រុមហ៊ុន…';

  @override
  String get openFullWindow => 'បើកវិនដូ';

  @override
  String hotkeyHint(String shortcut) {
    return 'ចុច $shortcut ពីគ្រប់ទីកន្លែង ដើម្បីហៅ WhatStock។';
  }

  @override
  String get trayOpen => 'បើក WhatStock';

  @override
  String get trayQuickSearch => 'ស្វែងរករហ័ស';

  @override
  String get trayQuit => 'ចាកចេញ';

  @override
  String get appearance => 'រូបរាង';

  @override
  String get themeSystem => 'ប្រព័ន្ធ';

  @override
  String get themeDark => 'ងងឹត';

  @override
  String get themeLight => 'ភ្លឺ';

  @override
  String get back => 'ថយក្រោយ';

  @override
  String get aiSectionTitle => 'ការវិភាគ AI';

  @override
  String get aiIntro =>
      'ទិដ្ឋភាពទូទៅលម្អិតដែលសរសេរដោយ AI៖ សេចក្ដីសង្ខេបព័ត៌មានថ្មីៗ អាជីវកម្ម ចំណុចខ្លាំង ហានិភ័យ និងកត្តាលាក់កំបាំង ការវាយតម្លៃ ទស្សនវិស័យតម្លៃជាមួយសេណារីយ៉ូពីទិដ្ឋភាពចិត្តវិទ្យា សង្គមវិទ្យា បច្ចេកទេស និងម៉ាក្រូសេដ្ឋកិច្ច ព្រមទាំងអ្វីដែលត្រូវតាមដាន។';

  @override
  String get aiGenerate => 'បង្កើតការវិភាគ';

  @override
  String get aiRegenerate => 'បង្កើតឡើងវិញ';

  @override
  String get aiGenerating => 'កំពុងរៀបចំការវិភាគ… វាអាចចំណាយពេលមួយ ឬពីរនាទី។';

  @override
  String get aiSources => 'ប្រភព';

  @override
  String aiGeneratedAt(String time) {
    return 'បានបង្កើត $time';
  }

  @override
  String get aiDisclaimer =>
      'ការវិភាគបង្កើតដោយ AI ផ្អែកលើទិន្នន័យសាធារណៈ និងព័ត៌មានថ្មីៗ។ វាអាចមានកំហុស ឬហួសសម័យ ហើយមិនមែនជាដំបូន្មានវិនិយោគទេ។';

  @override
  String get errAiNotConfigured =>
      'ការវិភាគ AI មិនទាន់បានកំណត់ទេ (គ្មាន ANTHROPIC_API_KEY)។';

  @override
  String get errAiUnreachable =>
      'មិនអាចភ្ជាប់ទៅសេវា AI បានទេ។ សូមពិនិត្យការតភ្ជាប់អ៊ីនធឺណិតរបស់អ្នក។';

  @override
  String errAiHttp(String status) {
    return 'សេវា AI បានត្រឡប់កំហុស (HTTP $status)។';
  }

  @override
  String get errAiRefused => 'សេវា AI បានបដិសេធមិនវិភាគភាគហ៊ុននេះ។';

  @override
  String get errAiBadResponse => 'ការឆ្លើយតបមិនរំពឹងទុកពីសេវា AI។';

  @override
  String get sectionChart => 'ក្រាហ្វតម្លៃ';

  @override
  String get rangeOneWeek => '1 សប្ដាហ៍';

  @override
  String get rangeOneMonth => '1 ខែ';

  @override
  String get rangeThreeMonths => '3 ខែ';

  @override
  String get rangeOneYear => '1 ឆ្នាំ';

  @override
  String get rangeFiveYears => '5 ឆ្នាំ';

  @override
  String get chartUnavailable =>
      'ប្រភពទិន្នន័យបច្ចុប្បន្នមិនមានប្រវត្តិតម្លៃទេ។';

  @override
  String get sectionStatements => 'របាយការណ៍ហិរញ្ញវត្ថុ (ប្រចាំឆ្នាំ)';

  @override
  String get labelFiscalYear => 'ឆ្នាំហិរញ្ញវត្ថុ';

  @override
  String get labelRevenue => 'ចំណូល';

  @override
  String get labelNetIncome => 'ប្រាក់ចំណេញសុទ្ធ';

  @override
  String get labelTotalAssets => 'ទ្រព្យសកម្មសរុប';

  @override
  String get labelTotalLiabilities => 'បំណុលសរុប';

  @override
  String get labelEquity => 'មូលធនម្ចាស់ភាគហ៊ុន';

  @override
  String get labelOperatingCashFlow => 'លំហូរសាច់ប្រាក់ពីប្រតិបត្តិការ';

  @override
  String get statementsUnavailable =>
      'មិនមានរបាយការណ៍ហិរញ្ញវត្ថុដែលបានប្រកាសសម្រាប់ភាគហ៊ុននេះទេ។';

  @override
  String get launchAtLogin => 'បើកដំណើរការនៅពេលចូលគណនី';

  @override
  String get hotkeyLabel => 'ផ្លូវកាត់សកល';

  @override
  String get hotkeyRecordHint => 'ចុចត្រង់នេះ រួចចុចបន្សំគ្រាប់ចុចថ្មី';

  @override
  String get hotkeyReset => 'កំណត់ទៅលំនាំដើមវិញ';

  @override
  String get pasteImage => 'បិទភ្ជាប់រូបភាពពីក្ដារតម្បៀតខ្ទាស់';

  @override
  String get errClipboardNoImage => 'គ្មានរូបភាពនៅលើក្ដារតម្បៀតខ្ទាស់ទេ។';

  @override
  String get favorites => 'ចំណូលចិត្ត';

  @override
  String get addToFavorites => 'បន្ថែមទៅចំណូលចិត្ត';

  @override
  String get removeFromFavorites => 'ដកចេញពីចំណូលចិត្ត';

  @override
  String get noFavorites =>
      'មិនទាន់មានចំណូលចិត្តនៅឡើយទេ។ ចុចរូបផ្កាយលើភាគហ៊ុនណាមួយដើម្បីបន្ថែម។';

  @override
  String get displayCurrency => 'រូបិយប័ណ្ណបង្ហាញ';

  @override
  String get displayCurrencyNone => 'តែរូបិយប័ណ្ណរបស់ភាគហ៊ុនប៉ុណ្ណោះ';

  @override
  String labelConverted(String currency) {
    return '≈ ជា $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'អត្រា៖ 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'បច្ចុប្បន្នភាព';

  @override
  String currentVersion(String version) {
    return 'កំណែ $version';
  }

  @override
  String get autoUpdate => 'ដំឡើងបច្ចុប្បន្នភាពដោយស្វ័យប្រវត្តិ';

  @override
  String get checkForUpdates => 'ពិនិត្យរកបច្ចុប្បន្នភាព';

  @override
  String get updateChecking => 'កំពុងពិនិត្យរកបច្ចុប្បន្នភាព…';

  @override
  String get updateUpToDate => 'អ្នកកំពុងប្រើកំណែចុងក្រោយបំផុត។';

  @override
  String updateAvailable(String version) {
    return 'មានកំណែ $version ហើយ។';
  }

  @override
  String get updateDownloading => 'កំពុងទាញយកបច្ចុប្បន្នភាពនៅផ្ទៃខាងក្រោយ…';

  @override
  String get updateDownloaded =>
      'បច្ចុប្បន្នភាពរួចរាល់ហើយ។ ចាប់ផ្ដើមឡើងវិញដើម្បីដំឡើង។';

  @override
  String get updateNow => 'ធ្វើបច្ចុប្បន្នភាព';

  @override
  String get restartNow => 'ចាប់ផ្ដើមឡើងវិញ';

  @override
  String get updatesViaStore =>
      'បច្ចុប្បន្នភាពមកដល់ដោយស្វ័យប្រវត្តិតាមរយៈហាងកម្មវិធី។';

  @override
  String get updateCheckFailed => 'មិនអាចពិនិត្យរកបច្ចុប្បន្នភាពបានទេ។';

  @override
  String get subscription => 'ការជាវ';

  @override
  String get planTrial => 'សាកល្បង';

  @override
  String get planNormal => 'ធម្មតា';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'គ្មានគម្រោងសកម្ម';

  @override
  String planAnalysesPerMonth(int count) {
    return 'ការវិភាគ $count ដងក្នុងមួយខែ';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'សាកល្បងឥតគិតថ្លៃ $days ថ្ងៃ ជាមួយការវិភាគ $count ដង';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'នៅសល់ការសាកល្បង $days ថ្ងៃ',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'ការសាកល្បងឥតគិតថ្លៃរបស់អ្នកបានបញ្ចប់ហើយ។ ជ្រើសរើសគម្រោងមួយដើម្បីបន្តការវិភាគ។';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'នៅសល់ការវិភាគ $remaining ក្នុងចំណោម $total សម្រាប់រយៈពេលនេះ';
  }

  @override
  String extraCredits(int count) {
    return 'ការវិភាគបន្ថែម $count ដង';
  }

  @override
  String renewsOn(String date) {
    return 'បន្តនៅ $date';
  }

  @override
  String get choosePlan => 'ជ្រើសរើសគម្រោង';

  @override
  String get currentPlan => 'គម្រោងបច្ចុប្បន្ន';

  @override
  String get subscribe => 'ជាវ';

  @override
  String get perMonth => '/ ខែ';

  @override
  String get extraPacksTitle => 'ត្រូវការបន្ថែម? ទិញការវិភាគបន្ថែម';

  @override
  String get extraPacksHint =>
      'ការវិភាគបន្ថែមមិនផុតកំណត់ទេ ហើយត្រូវបានប្រើបន្ទាប់ពីកូតាប្រចាំខែរបស់អ្នកអស់។';

  @override
  String get buy => 'ទិញ';

  @override
  String get restorePurchases => 'ស្ដារការទិញឡើងវិញ';

  @override
  String get manageSubscription => 'គ្រប់គ្រងការជាវ';

  @override
  String get purchaseSuccess => 'សូមអរគុណ! ការទិញរបស់អ្នកដំណើរការហើយ។';

  @override
  String get purchasePending => 'ការទិញកំពុងរង់ចាំ…';

  @override
  String get purchaseFailed => 'មិនអាចបញ្ចប់ការទិញបានទេ។';

  @override
  String get purchaseCanceled => 'បានបោះបង់ការទិញ។';

  @override
  String get billingUnavailable =>
      'មិនទាន់អាចទិញនៅលើវេទិកានេះបាននៅឡើយទេ។ សូមជាវនៅលើទូរសព្ទ ឬ Mac របស់អ្នក ហើយគម្រោងរបស់អ្នកនឹងដំណើរការលើគ្រប់ឧបករណ៍។';

  @override
  String get errQuotaExceeded =>
      'អ្នកអស់ការវិភាគសម្រាប់រយៈពេលនេះហើយ។ ដំឡើងគម្រោងរបស់អ្នក ឬទិញការវិភាគបន្ថែម។';

  @override
  String get errTrialExpired =>
      'ការសាកល្បងឥតគិតថ្លៃរបស់អ្នកបានបញ្ចប់ហើយ។ ជ្រើសរើសគម្រោងមួយដើម្បីបន្ត។';

  @override
  String get errNoPlan => 'ត្រូវការគម្រោងសកម្មសម្រាប់ការវិភាគ AI។';

  @override
  String get viewPlans => 'មើលគម្រោង';

  @override
  String get usageTitle => 'ការប្រើប្រាស់';

  @override
  String get demoPurchaseNote =>
      'ការទូទាត់គំរូ៖ ការទិញនៅលើវេទិកានេះគ្រាន់តែជាការក្លែងធ្វើ។';

  @override
  String get mostPopular => 'ពេញនិយមបំផុត';

  @override
  String get bestValue => 'សមតម្លៃបំផុត';

  @override
  String get planFeaturesCommon =>
      'ការសម្គាល់រូបថត ទិន្នន័យផ្ទាល់ ក្រាហ្វ ចំណូលចិត្ត និងភាសាទាំង 120 ត្រូវបានរួមបញ្ចូលក្នុងគ្រប់គម្រោង។ កូតាគឺសម្រាប់ការវិភាគ AI។';

  @override
  String get searchLanguages => 'ស្វែងរកភាសា…';

  @override
  String get noLanguageMatch => 'គ្មានភាសាដែលត្រូវគ្នាទេ។';

  @override
  String get aiSettings => 'ការវិភាគ AI';

  @override
  String get aiLength => 'ប្រវែង';

  @override
  String get aiDepthBrief => 'សង្ខេប';

  @override
  String get aiDepthStandard => 'ស្តង់ដារ';

  @override
  String get aiDepthDeep => 'ស៊ីជម្រៅ';

  @override
  String get aiDepthBriefDesc => 'ចំណុចសំខាន់ៗ យ៉ាងរហ័ស។';

  @override
  String get aiDepthStandardDesc => 'របាយការណ៍ពេញលេញជាមួយគ្រប់ផ្នែក។';

  @override
  String get aiDepthDeepDesc =>
      'ស្វែងរកលើបណ្ដាញច្រើនជាង ប្រៀបធៀបជាមួយក្រុមហ៊ុនប្រកួតប្រជែង និងព័ត៌មានលម្អិតស៊ីជម្រៅជាង។';

  @override
  String aiDepthWords(String min, String max) {
    return 'ប្រហែល $min–$max ពាក្យ';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ប្រើការវិភាគ $count ដង',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'កម្រិតអ្នកអាន';

  @override
  String get aiReaderBeginner => 'អ្នកចាប់ផ្ដើម';

  @override
  String get aiReaderExperienced => 'អ្នកមានបទពិសោធន៍';

  @override
  String get aiReaderBeginnerDesc =>
      'ភាសាងាយយល់ ពាក្យបច្ចេកទេសនីមួយៗត្រូវបានពន្យល់។';

  @override
  String get aiReaderExperiencedDesc =>
      'អត្ថបទខ្លឹមខ្លាំងជាង ជាមួយវាក្យសព្ទហិរញ្ញវត្ថុស្តង់ដារ។';

  @override
  String get aiCounterArgument => 'អំណះអំណាងប្រឆាំងខ្លាំងបំផុត';

  @override
  String get aiCounterArgumentDesc =>
      'សេចក្ដីសង្ខេបតែងតែបញ្ចប់ដោយអំណះអំណាងល្អបំផុតដែលប្រឆាំងនឹងសេចក្ដីសន្និដ្ឋានរបស់ខ្លួន។';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'ស្វែងរកលើបណ្ដាញបានរហូតដល់ $count ដងក្នុងមួយការវិភាគ តាមគម្រោងរបស់អ្នក',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'ប្រវែងស្តង់ដារតាមគម្រោង៖ ធម្មតា $normal, Pro $pro, Max $max, Ultra $ultra។ សង្ខេបប្រើតិចជាង 2 ដង ស៊ីជម្រៅប្រើច្រើនជាង 2 ដង។';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ស្វែងរកលើបណ្ដាញរហូតដល់ $count ដង',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ស្វែងរកលើបណ្ដាញ $count ដងក្នុងមួយការវិភាគ',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'ប្រវែងនេះត្រូវការការវិភាគ $needed ដង ប៉ុន្តែនៅសល់តែ $left ដងប៉ុណ្ណោះ។ ជ្រើសរើសប្រវែងខ្លីជាងនៅក្នុងការកំណត់ ឬយកការវិភាគបន្ថែម។';
  }

  @override
  String get outlookMarketMood => 'អារម្មណ៍ទីផ្សារ';

  @override
  String get moodVeryPessimistic => 'ទុទិដ្ឋិនិយមខ្លាំង';

  @override
  String get moodPessimistic => 'ទុទិដ្ឋិនិយម';

  @override
  String get moodNeutral => 'អព្យាក្រឹត';

  @override
  String get moodOptimistic => 'សុទិដ្ឋិនិយម';

  @override
  String get moodVeryOptimistic => 'សុទិដ្ឋិនិយមខ្លាំង';

  @override
  String get scenarioBull => 'សេណារីយ៉ូកើនឡើង';

  @override
  String get scenarioBase => 'សេណារីយ៉ូមូលដ្ឋាន';

  @override
  String get scenarioBear => 'សេណារីយ៉ូធ្លាក់ចុះ';

  @override
  String outlookCurrentPrice(String price) {
    return 'តម្លៃបច្ចុប្បន្ន៖ $price';
  }

  @override
  String get outlookKeyLevels => 'កម្រិតតម្លៃសំខាន់ៗ';

  @override
  String get keyLevelSupport => 'កម្រិតគាំទ្រ';

  @override
  String get keyLevelResistance => 'កម្រិតតស៊ូ';

  @override
  String get keyLevelAnchor => 'តម្លៃយោង';

  @override
  String get upcomingEvents => 'ព្រឹត្តិការណ៍ខាងមុខ';

  @override
  String get outlookChartNote =>
      'ជាចន្លោះប្រហាក់ប្រហែល ប្រូបាប៊ីលីតេគ្រាន់តែជាការវាយតម្លៃរដុប មិនមែនជាការព្យាករណ៍ទេ។';

  @override
  String get accountTitle => 'គណនី';

  @override
  String get signIn => 'ចូលគណនី';

  @override
  String get signOut => 'ចាកចេញ';

  @override
  String get notSignedIn => 'មិនទាន់បានចូលគណនី';

  @override
  String get accountBenefit =>
      'ចូលគណនី ដើម្បីឱ្យការជាវរបស់អ្នកដំណើរការលើគ្រប់ឧបករណ៍របស់អ្នក។';

  @override
  String get accountSyncedNote =>
      'ការជាវ និងការវិភាគដែលនៅសល់របស់អ្នកគឺដូចគ្នានៅលើគ្រប់ឧបករណ៍។';

  @override
  String get signInTitle => 'ចូលគណនី WhatStock';

  @override
  String get emailLabel => 'អាសយដ្ឋានអ៊ីមែល';

  @override
  String get continueWithEmail => 'បន្តជាមួយអ៊ីមែល';

  @override
  String codeSentTo(String email) {
    return 'យើងបានផ្ញើលេខកូដ 6 ខ្ទង់ទៅ $email។ វាមានសុពលភាព 10 នាទី។';
  }

  @override
  String get codeLabel => 'លេខកូដចូលគណនី';

  @override
  String get resendCode => 'ផ្ញើលេខកូដថ្មី';

  @override
  String get useDifferentEmail => 'ប្រើអ៊ីមែលផ្សេង';

  @override
  String get errInvalidCode => 'លេខកូដខុស ឬផុតកំណត់ហើយ។';

  @override
  String get errInvalidEmail => 'សូមបញ្ចូលអាសយដ្ឋានអ៊ីមែលដែលត្រឹមត្រូវ។';

  @override
  String get errSignInFailed =>
      'ការចូលគណនីបានបរាជ័យ។ សូមពិនិត្យការតភ្ជាប់ ហើយព្យាយាមម្ដងទៀត។';

  @override
  String get checkoutWaiting =>
      'បញ្ចប់ការទូទាត់នៅក្នុងកម្មវិធីរុករករបស់អ្នក។ កម្មវិធីនឹងធ្វើបច្ចុប្បន្នភាពដោយស្វ័យប្រវត្តិនៅពេលរួចរាល់។';

  @override
  String get paymentViaStripe =>
      'ការទូទាត់មានសុវត្ថិភាពនៅក្នុងកម្មវិធីរុករករបស់អ្នកតាមរយៈ Stripe។ បោះបង់បានគ្រប់ពេល។';

  @override
  String get paymentViaStore =>
      'គិតថ្លៃតាមរយៈគណនី App Store ឬ Google Play របស់អ្នក។ បោះបង់បានគ្រប់ពេលនៅក្នុងការកំណត់ហាង។';

  @override
  String get keySpace => 'Space';

  @override
  String get doubleOptionTitle => 'ចុច Option ពីរដង';

  @override
  String get doubleOptionSubtitle =>
      'ការចុចគ្រាប់ចុច Option ពីរដងយ៉ាងលឿនក៏ហៅ WhatStock ផងដែរ។';

  @override
  String get doubleOptionPermission =>
      'ដើម្បីឱ្យវាដំណើរការក្នុងកម្មវិធីផ្សេងទៀតដែរ សូមអនុញ្ញាត WhatStock នៅក្នុង ការកំណត់ប្រព័ន្ធ → ឯកជនភាព និងសុវត្ថិភាព → ការត្រួតពិនិត្យការបញ្ចូល រួចបើកកម្មវិធីឡើងវិញ។';

  @override
  String get openSystemSettings => 'បើកការកំណត់ប្រព័ន្ធ';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'ចុច $shortcut ឬចុច Option ពីរដងពីគ្រប់ទីកន្លែង ដើម្បីហៅ WhatStock។';
  }

  @override
  String get scenarioMostLikely => 'ទំនងបំផុត';

  @override
  String get longTermToday => 'ថ្ងៃនេះ';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years ឆ្នាំ',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range ក្នុងមួយឆ្នាំ';
  }

  @override
  String longTermLikely(String price) {
    return 'ទំនងបំផុត $price';
  }

  @override
  String get confidenceLow => 'ទំនុកចិត្តទាប';

  @override
  String get confidenceMedium => 'ទំនុកចិត្តមធ្យម';

  @override
  String get confidenceHigh => 'ទំនុកចិត្តខ្ពស់';

  @override
  String get longTermNote =>
      'ចន្លោះតម្លៃរយៈពេលវែងផ្អែកលើការសន្មតដែលបានបញ្ជាក់ ហើយពង្រីកតាមពេលវេលា។ តម្លៃមិនរួមបញ្ចូលភាគលាភទេ។ គ្រាន់តែជាការវាយតម្លៃរដុប មិនមែនជាការព្យាករណ៍ទេ។';

  @override
  String get portfolio => 'ផលប័ត្រ';

  @override
  String get portfolioEmpty =>
      'មិនទាន់មានអ្វីនៅទីនេះទេ។ បើកភាគហ៊ុនមួយ ហើយចុច «បន្ថែមទៅផលប័ត្រ» ដើម្បីតាមដានអ្វីដែលអ្នកមាន។';

  @override
  String get portfolioLocalNote =>
      'រក្សាទុកនៅលើឧបករណ៍នេះ និងក្នុងគណនីរបស់អ្នក ប្រសិនបើអ្នកបានចូលគណនី។ ចំនួនសរុបត្រូវបានប្ដូរតាមអត្រាយោងរបស់ ECB ហើយតម្លៃអាចយឺត។';

  @override
  String get addToPortfolio => 'បន្ថែមទៅផលប័ត្រ';

  @override
  String portfolioAddTitle(String symbol) {
    return 'បន្ថែម $symbol';
  }

  @override
  String get portfolioQuantity => 'ចំនួនភាគហ៊ុន';

  @override
  String portfolioBuyPrice(String currency) {
    return 'តម្លៃក្នុងមួយភាគហ៊ុន ($currency)';
  }

  @override
  String get portfolioBuyDate => 'កាលបរិច្ឆេទទិញ';

  @override
  String get portfolioAdd => 'បន្ថែម';

  @override
  String get portfolioInvalidNumber => 'បញ្ចូលលេខធំជាងសូន្យ។';

  @override
  String portfolioAdded(String symbol) {
    return 'បានបន្ថែម $symbol ទៅផលប័ត្ររបស់អ្នក។';
  }

  @override
  String get portfolioTotalValue => 'តម្លៃសរុប';

  @override
  String get portfolioToday => 'ថ្ងៃនេះ';

  @override
  String get portfolioGainLoss => 'ចំណេញ/ខាត';

  @override
  String homeDividendsThisYear(String amount) {
    return 'ភាគលាភឆ្នាំនេះ៖ $amount';
  }

  @override
  String get portfolioInvested => 'បានវិនិយោគ';

  @override
  String get portfolioAllocation => 'ការបែងចែក';

  @override
  String get portfolioPositions => 'ការកាន់កាប់';

  @override
  String portfolioAvgCost(String price) {
    return 'ថ្លៃដើមមធ្យម $price';
  }

  @override
  String get portfolioYourPosition => 'ការកាន់កាប់របស់អ្នក';

  @override
  String get portfolioPurchases => 'ការទិញ';

  @override
  String get portfolioRemove => 'ដកចេញ';

  @override
  String get portfolioExcluded =>
      'ការកាន់កាប់ដែលគ្មានតម្លៃ ឬអត្រាប្ដូរប្រាក់ មិនត្រូវបានរាប់បញ្ចូលក្នុងចំនួនសរុបទេ។';

  @override
  String get priceAlerts => 'ការជូនដំណឹងតម្លៃ';

  @override
  String get setPriceAlert => 'កំណត់ការជូនដំណឹងតម្លៃ';

  @override
  String alertDialogTitle(String symbol) {
    return 'ការជូនដំណឹងតម្លៃ · $symbol';
  }

  @override
  String get alertKindAbove => 'ឡើងលើស';

  @override
  String get alertKindBelow => 'ធ្លាក់ក្រោម';

  @override
  String get alertKindMove => 'ប្រែប្រួលខ្លាំងក្នុងមួយថ្ងៃ';

  @override
  String alertTargetPrice(String currency) {
    return 'តម្លៃ ($currency)';
  }

  @override
  String get alertMovePercent => 'ការប្រែប្រួលប្រចាំថ្ងៃ (%)';

  @override
  String get alertAlreadyMet => 'តម្លៃបានហួសកម្រិតនេះរួចហើយ។';

  @override
  String get alertSave => 'កំណត់ការជូនដំណឹង';

  @override
  String alertCreated(String symbol) {
    return 'បានកំណត់ការជូនដំណឹងសម្រាប់ $symbol។';
  }

  @override
  String get alertsEmpty =>
      'មិនទាន់មានការជូនដំណឹងតម្លៃនៅឡើយទេ។ បើកភាគហ៊ុនមួយ ហើយចុចរូបកណ្ដឹងដើម្បីកំណត់។';

  @override
  String get alertsNote =>
      'ការជូនដំណឹងត្រូវបានពិនិត្យរៀងរាល់ 5 នាទីម្ដង ខណៈ WhatStock កំពុងដំណើរការ។ នៅលើកុំព្យូទ័រ វាបន្តដំណើរការនៅរបារម៉ឺនុយ ឬថាសប្រព័ន្ធ។ នៅលើទូរសព្ទ សម្រាប់ពេលនេះ ការជូនដំណឹងមកដល់តែពេលកម្មវិធីកំពុងបើកប៉ុណ្ណោះ។';

  @override
  String alertDescAbove(String price) {
    return 'លើស $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'ក្រោម $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'ប្រែប្រួលប្រចាំថ្ងៃ ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'បានជូនដំណឹង $date នៅតម្លៃ $price';
  }

  @override
  String get alertRearm => 'បើកឡើងវិញ';

  @override
  String get alertDelete => 'លុប';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol បានឡើងលើស $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol បានធ្លាក់ក្រោម $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol បានប្រែប្រួល $percent ថ្ងៃនេះ';
  }

  @override
  String alertHitBody(String price) {
    return 'តម្លៃបច្ចុប្បន្ន៖ $price';
  }

  @override
  String get alertOpen => 'បើក';

  @override
  String get keepInTrayTitle => 'បន្តដំណើរការពេលបិទវិនដូ';

  @override
  String get keepInTraySubtitle =>
      'WhatStock នៅតែស្ថិតក្នុងរបារម៉ឺនុយ ឬថាសប្រព័ន្ធ ដូច្នេះគ្រាប់ចុចផ្លូវកាត់ និងការជូនដំណឹងតម្លៃនៅតែដំណើរការ។';

  @override
  String get termsOfUse => 'លក្ខខណ្ឌប្រើប្រាស់';

  @override
  String get privacyPolicy => 'គោលការណ៍ឯកជនភាព';

  @override
  String get subscriptionLegal =>
      'ការជាវបន្តដោយស្វ័យប្រវត្តិរៀងរាល់ខែ រហូតដល់អ្នកបោះបង់។ ដោយការជាវ អ្នកយល់ព្រមលើលក្ខខណ្ឌប្រើប្រាស់ និងគោលការណ៍ឯកជនភាព។';

  @override
  String get deleteAccount => 'លុបគណនី';

  @override
  String get deleteAccountTitle => 'លុបគណនីរបស់អ្នក?';

  @override
  String get deleteAccountBody =>
      'គណនីរបស់អ្នក និងអ្វីៗទាំងអស់ដែលរក្សាទុកនៅលើម៉ាស៊ីនមេរបស់យើង (អ៊ីមែល កូតា ការប្រើប្រាស់) នឹងត្រូវលុបជាអចិន្ត្រៃយ៍ ហើយការវិភាគដែលមិនទាន់ប្រើនឹងបាត់បង់។ ការជាវដែលបានបង់ក្នុងកម្មវិធីរុករកនឹងត្រូវបោះបង់ភ្លាមៗ ចំណែកការជាវតាម App Store ឬ Google Play ត្រូវបោះបង់នៅក្នុងការកំណត់របស់ហាង។';

  @override
  String get deleteLocalData =>
      'លុបទិន្នន័យនៅលើឧបករណ៍នេះផងដែរ (ផលប័ត្រ ការជូនដំណឹង ចំណូលចិត្ត ប្រវត្តិ ការវិភាគដែលបានរក្សាទុក)';

  @override
  String get deleteAccountConfirm => 'លុបជាអចិន្ត្រៃយ៍';

  @override
  String get accountDeleted => 'គណនីរបស់អ្នកត្រូវបានលុបហើយ។';

  @override
  String get errDeleteAccount =>
      'មិនអាចលុបគណនីបានទេ។ សូមពិនិត្យការតភ្ជាប់ ហើយព្យាយាមម្ដងទៀត។';

  @override
  String get aiTrialBriefNote =>
      'ការវិភាគសាកល្បងមានលក្ខណៈសង្ខេប និងបង្កើតដោយម៉ូដែល AI ដែលលឿនជាង។ ជាមួយគម្រោង អ្នកទទួលបាន AI ដែលមានសមត្ថភាពខ្លាំងបំផុតរបស់យើង ការស្វែងរកលើបណ្ដាញច្រើនជាង និងប្រវែងស្តង់ដារ និងស៊ីជម្រៅ។';

  @override
  String get billingMonthly => 'ប្រចាំខែ';

  @override
  String get billingYearly => 'ប្រចាំឆ្នាំ';

  @override
  String get yearlyDiscount => 'ឥតគិតថ្លៃ 2 ខែ';

  @override
  String get perYear => '/ ឆ្នាំ';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price ក្នុងមួយខែ';
  }

  @override
  String get subscriptionLegalYearly =>
      'ការជាវប្រចាំឆ្នាំបន្តដោយស្វ័យប្រវត្តិរៀងរាល់ឆ្នាំ រហូតដល់អ្នកបោះបង់។ ដោយការជាវ អ្នកយល់ព្រមលើលក្ខខណ្ឌប្រើប្រាស់ និងគោលការណ៍ឯកជនភាព។';

  @override
  String get myAnalyses => 'ការវិភាគរបស់ខ្ញុំ';

  @override
  String get navAlerts => 'ការជូនដំណឹង';

  @override
  String get inviteTitle => 'ការមើលជាមុនឯកជន';

  @override
  String get inviteBody =>
      'បច្ចុប្បន្ននេះ WhatStock អាចប្រើបានតែតាមការអញ្ជើញប៉ុណ្ណោះ។ សូមបញ្ចូលលេខកូដអញ្ជើញដែលអ្នកបានទទួល។';

  @override
  String get inviteCodeLabel => 'លេខកូដអញ្ជើញ';

  @override
  String get inviteContinue => 'បន្ត';

  @override
  String get inviteInvalid => 'លេខកូដអញ្ជើញនេះមិនត្រឹមត្រូវទេ។';

  @override
  String get inviteExpired =>
      'ការអញ្ជើញនេះផុតកំណត់ហើយ។ សូមស្នើសុំលេខកូដថ្មីពីអ្នកដែលបានអញ្ជើញអ្នក។';

  @override
  String get inviteDeviceLimit =>
      'លេខកូដអញ្ជើញនេះកំពុងត្រូវបានប្រើលើចំនួនឧបករណ៍អតិបរមារួចហើយ។';

  @override
  String get previewConfidential => 'ការមើលជាមុនសម្ងាត់';

  @override
  String get errPreviewDailyLimit =>
      'ដែនកំណត់ការវិភាគសម្រាប់ថ្ងៃនេះនៃការមើលជាមុននេះត្រូវបានប្រើអស់ហើយ។ សូមព្យាយាមម្តងទៀតនៅថ្ងៃស្អែក។';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ម៉ោងមុន',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ថ្ងៃមុន',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'ធ្វើបច្ចុប្បន្នភាពការវិភាគនេះ?';

  @override
  String staleBody(String age) {
    return 'ការវិភាគនេះត្រូវបានបង្កើតកាលពី $age។ តម្លៃ ព័ត៌មាន និងលទ្ធផលអាចបានផ្លាស់ប្តូរតាំងពីពេលនោះមក។';
  }

  @override
  String get staleKeep => 'បង្ហាញការវិភាគមុន';

  @override
  String get staleRefresh => 'បង្កើតថ្មី';

  @override
  String seeAll(int count) {
    return 'មើលទាំងអស់ ($count)';
  }

  @override
  String get searchAnalyses => 'ស្វែងរកការវិភាគរបស់អ្នក';

  @override
  String get deleteAnalysis => 'លុប';

  @override
  String analysisDeleted(String symbol) {
    return 'បានលុបការវិភាគ $symbol';
  }

  @override
  String get keyLevelAlertHint =>
      'ចុចកម្រិតតម្លៃណាមួយ ដើម្បីទទួលការជូនដំណឹងនៅពេលតម្លៃដល់កម្រិតនោះ។';

  @override
  String get shareAnalysisTitle => 'ចែករំលែកការវិភាគ';

  @override
  String get shareAsImage => 'ចែករំលែកជារូបភាព';

  @override
  String get shareAsText => 'ចែករំលែកជាអត្ថបទ';

  @override
  String get shareCardFooter => 'បង្កើតដោយ WhatStock';

  @override
  String get shareCardDisclaimer => 'ការវិភាគ AI · មិនមែនជាដំបូន្មានវិនិយោគទេ';

  @override
  String get referralTitle => 'អញ្ជើញមិត្តភក្តិ';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ការវិភាគបន្ថែម $count ដង',
    );
    return 'ចែករំលែកកូដរបស់អ្នក។ មិត្តរបស់អ្នកនឹងទទួលបាន$_temp0ភ្លាមៗ ហើយអ្នកក៏ទទួលបានចំនួនដូចគ្នា បន្ទាប់ពីការវិភាគដំបូងរបស់គាត់។';
  }

  @override
  String get referralYourCode => 'កូដរបស់អ្នក';

  @override
  String referralStats(int invited, int rewarded) {
    return 'បានអញ្ជើញ៖ $invited · បានទទួលរង្វាន់៖ $rewarded';
  }

  @override
  String get referralHaveCode => 'មានកូដពីមិត្តភក្តិទេ?';

  @override
  String get referralRedeem => 'ប្ដូរយក';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'បានបន្ថែមការវិភាគបន្ថែម $count ដង។ សូមស្វាគមន៍!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'កូដនេះមិនមានទេ។ សូមពិនិត្យ ហើយព្យាយាមម្ដងទៀត។';

  @override
  String get referralErrOwn => 'អ្នកមិនអាចប្រើកូដផ្ទាល់ខ្លួនរបស់អ្នកបានទេ។';

  @override
  String get referralErrAlready => 'អ្នកបានប្រើកូដរបស់មិត្តភក្តិរួចហើយ។';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ការវិភាគបន្ថែម $count ដង',
    );
    return 'ខ្ញុំវិភាគភាគហ៊ុនជាមួយ WhatStock៖ ថតរូបភាគហ៊ុន ហើយ AI នឹងពន្យល់ប្រាប់។ ជាមួយកូដរបស់ខ្ញុំ $code អ្នកនឹងទទួលបាន$_temp0។';
  }

  @override
  String get referralCopied => 'បានចម្លងកូដ';

  @override
  String get onboardTitle1 => 'ថតរូបភាគហ៊ុន';

  @override
  String get onboardBody1 =>
      'គ្រាន់តែអេក្រង់កម្មវិធីឈ្មួញកណ្ដាល កាសែត ឬឡូហ្គោក្រុមហ៊ុនក៏គ្រប់គ្រាន់ដែរ៖ WhatStock ស្គាល់ភាគហ៊ុន ហើយបង្ហាញតម្លៃ ក្រាហ្វ និងតួលេខសំខាន់ៗរបស់វា។';

  @override
  String get onboardTitle2 => 'យល់ច្បាស់ក្នុងប៉ុន្មាននាទី';

  @override
  String get onboardBody2 =>
      'ការវិភាគ AI ពន្យល់ពីអ្វីដែលធ្វើឱ្យភាគហ៊ុនប្រែប្រួល ហានិភ័យ ការវាយតម្លៃ និងសេណារីយ៉ូបីអំពីទិសដៅដែលតម្លៃអាចទៅ ដោយមានប្រភពឯកសារ និងជាភាសារបស់អ្នក។';

  @override
  String get onboardTitle3 => 'តាមដានជានិច្ច';

  @override
  String get onboardBody3 =>
      'ចំណូលចិត្ត ផលប័ត្ររបស់អ្នក និងការជូនដំណឹងតម្លៃ ជួយឱ្យអ្នកដឹងព័ត៌មានជានិច្ច។ ការវិភាគរបស់អ្នកនៅលើឧបករណ៍របស់អ្នក ត្រៀមរួចជាស្រេចសម្រាប់បើកម្ដងទៀត។';

  @override
  String get onboardNext => 'បន្ទាប់';

  @override
  String get onboardStart => 'ចាប់ផ្ដើម';

  @override
  String get onboardSkip => 'រំលង';

  @override
  String changesTitle(String date) {
    return 'ចាប់តាំងពីការវិភាគមុន ($date)';
  }

  @override
  String get changesPrice => 'តម្លៃ';

  @override
  String get changesNoMajor => 'ទស្សនវិស័យមិនបានផ្លាស់ប្តូរគួរឱ្យកត់សម្គាល់ទេ។';

  @override
  String get changesPreviousSummary => 'សេចក្តីសង្ខេបមុន';

  @override
  String get telemetryTitle => 'ជួយកែលម្អ WhatStock';

  @override
  String get telemetryBody =>
      'ចែករំលែកស្ថិតិប្រើប្រាស់អនាមិក និងរបាយការណ៍គាំង៖ មុខងារណាខ្លះដែលត្រូវបានប្រើ និងអ្វីដែលខុសប្រក្រតី។ មិនដែលរួមបញ្ចូលភាគហ៊ុន ការវិភាគ ឬទិន្នន័យផ្ទាល់ខ្លួនរបស់អ្នកឡើយ។ អ្នកអាចប្ដូរវាបានគ្រប់ពេលនៅក្នុងការកំណត់។';

  @override
  String get telemetryAllow => 'អនុញ្ញាត';

  @override
  String get telemetryDecline => 'ទេ អរគុណ';

  @override
  String get telemetrySetting => 'ស្ថិតិអនាមិក និងរបាយការណ៍គាំង';

  @override
  String get telemetrySettingHint =>
      'ភាពញឹកញាប់នៃការប្រើមុខងារ និងរបាយការណ៍កំហុស ដោយគ្មានទិន្នន័យផ្ទាល់ខ្លួន ឬខ្លឹមសារនៃការស្វែងរក និងការវិភាគរបស់អ្នក។';

  @override
  String get askButton => 'សួរអំពីការវិភាគនេះ';

  @override
  String askTitle(String symbol) {
    return 'សំណួរអំពី $symbol';
  }

  @override
  String get askIntro =>
      'សួរអ្វីក៏បានអំពីការវិភាគ៖ ហានិភ័យមួយមានន័យដូចម្តេច អ្វីអាចផ្លាស់ប្តូរទស្សនវិស័យ តួលេខមួយត្រូវបានគណនាយ៉ាងដូចម្តេច។ ចម្លើយផ្អែកលើការវិភាគនេះ ហើយមិនមែនជាដំបូន្មានវិនិយោគទេ។';

  @override
  String get askHint => 'សួរសំណួរ…';

  @override
  String get askSend => 'ផ្ញើ';

  @override
  String get askThinking => 'កំពុងគិត…';

  @override
  String get askSuggest1 => 'តើហានិភ័យធំបំផុតគឺអ្វី?';

  @override
  String get askSuggest2 => 'តើអ្វីអាចផ្លាស់ប្តូរទស្សនវិស័យ?';

  @override
  String get askSuggest3 => 'ពន្យល់ឱ្យងាយយល់';

  @override
  String get askMaxReached =>
      'នេះជាសំណួរចុងក្រោយសម្រាប់ការវិភាគនេះ។ សូមបង្កើតការវិភាគថ្មី ដើម្បីសួរបន្ថែម។';

  @override
  String get errAskLimit =>
      'អ្នកបានដល់ដែនកំណត់សំណួរសម្រាប់ថ្ងៃនេះហើយ។ សូមព្យាយាមម្តងទៀតនៅថ្ងៃស្អែក។';

  @override
  String get eventTomorrow => 'ថ្ងៃស្អែក';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'ក្នុង $days ថ្ងៃទៀត',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'លទ្ធផលប្រចាំត្រីមាស';

  @override
  String get eventBeforeOpen => 'មុនទីផ្សារបើក';

  @override
  String get eventAfterClose => 'ក្រោយទីផ្សារបិទ';

  @override
  String eventEpsEstimate(String value) {
    return 'ការប៉ាន់ស្មាន EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'ពីការវិភាគរបស់អ្នក';

  @override
  String get eventDividend => 'ភាគលាភរំពឹងទុក';

  @override
  String get eventDividendEstimate => 'ប៉ាន់ស្មានពីការទូទាត់ដែលអ្នកបានកត់ត្រា';

  @override
  String get eventsHint =>
      'កាលបរិច្ឆេទលទ្ធផលនៃភាគហ៊ុនចំណូលចិត្ត និងភាគហ៊ុនក្នុងផលប័ត្ររបស់អ្នក សម្រាប់ 90 ថ្ងៃខាងមុខ ព្រឹត្តិការណ៍មានកាលបរិច្ឆេទដែលការវិភាគរបស់អ្នកបានចង្អុលបង្ហាញ ព្រមទាំងភាគលាភដែលរំពឹងទុកពីការទូទាត់ដែលអ្នកបានកត់ត្រា។';

  @override
  String get eventsEmpty =>
      'មិនមានព្រឹត្តិការណ៍មានកាលបរិច្ឆេទក្នុង 90 ថ្ងៃខាងមុខទេ។ បន្ថែមចំណូលចិត្ត ឬភាគហ៊ុនក្នុងផលប័ត្រ ដើម្បីមើលកាលបរិច្ឆេទលទ្ធផលរបស់វានៅទីនេះ។ ភាគលាភដែលបានកត់ត្រាបង្ហាញការទូទាត់បន្ទាប់ដែលរំពឹងទុក។';

  @override
  String get compareTitle => 'ប្រៀបធៀប';

  @override
  String get compareAdd => 'បន្ថែមភាគហ៊ុន';

  @override
  String get compareRemove => 'ដកចេញ';

  @override
  String get compareTickerHint => 'និមិត្តសញ្ញា ឧ. MSFT';

  @override
  String get compareHint =>
      'តួលេខសំខាន់ៗនៅក្បែរគ្នា; តម្លៃល្អបំផុតក្នុងជួរនីមួយៗត្រូវបានបន្លិច។ ចំនួនទឹកប្រាក់គិតជារូបិយប័ណ្ណផ្ទាល់របស់ភាគហ៊ុននីមួយៗ។';

  @override
  String get compareNoAnalysis => 'មិនទាន់មានការវិភាគនៅឡើយ';

  @override
  String get portfolioDividends => 'ភាគលាភប្រចាំឆ្នាំ';

  @override
  String portfolioDividendYield(String percent) {
    return 'ទិន្នផល $percent';
  }

  @override
  String get portfolioDividendNote =>
      'ភាគលាភប្រចាំឆ្នាំដែលរំពឹងទុក ផ្អែកលើភាគលាភដែលបានបង់ក្នុងរយៈពេល 12 ខែចុងក្រោយ ហើយការបង់នាពេលអនាគតមិនត្រូវបានធានាទេ។';

  @override
  String positionDividend(String amount) {
    return 'ភាគលាភ៖ $amount ក្នុងមួយឆ្នាំ';
  }

  @override
  String get chartAvgCost => 'មធ្យមរបស់អ្នក';

  @override
  String get chartAlertLevel => 'ការជូនដំណឹង';

  @override
  String get marketsToday => 'ទីផ្សារថ្ងៃនេះ';

  @override
  String get notesTitle => 'កំណត់ចំណាំរបស់ខ្ញុំ';

  @override
  String get notesHint =>
      'ហេតុអ្វីអ្នកទិញវា តើអ្នកកំពុងតាមដានអ្វី ហើយអ្វីនឹងធ្វើឱ្យអ្នកលក់វា?';

  @override
  String get notesInfo =>
      'រក្សាទុកនៅលើឧបករណ៍នេះ និងក្នុងគណនីរបស់អ្នក ប្រសិនបើអ្នកបានចូលគណនី។ ការវិភាគ AI គិតគូរពីកំណត់ចំណាំរបស់អ្នក។';

  @override
  String notesSaved(String date) {
    return 'បានរក្សាទុក $date';
  }

  @override
  String get peersTitle => 'ក្រុមហ៊ុនស្រដៀងគ្នា';

  @override
  String get portfolioExport => 'នាំចេញជា CSV';

  @override
  String get portfolioImport => 'នាំចូលពី CSV';

  @override
  String get portfolioImportHint =>
      'បិទភ្ជាប់ការទិញមួយក្នុងមួយបន្ទាត់៖ និមិត្តសញ្ញាភាគហ៊ុន បរិមាណ តម្លៃ រូបិយប័ណ្ណ កាលបរិច្ឆេទ (YYYY-MM-DD)។ ជួរឈរអាចបំបែកដោយសញ្ញាក្បៀស សញ្ញាចុចក្បៀស ឬថេប ហើយជួរក្បាលមិនចាំបាច់ទេ។';

  @override
  String get portfolioImportButton => 'នាំចូល';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'បានបន្ថែមប្រតិបត្តិការ $count',
      one: 'បានបន្ថែមប្រតិបត្តិការ 1',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'បានរំលង $count បន្ទាត់',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'ផលប័ត្រ ចំណូលចិត្ត ការជូនដំណឹងតម្លៃ និងកំណត់ចំណាំ ត្រូវបានធ្វើសមកាលកម្មនៅលើឧបករណ៍ទាំងអស់របស់អ្នក។';

  @override
  String syncLast(String time) {
    return 'ធ្វើសមកាលកម្មចុងក្រោយ៖ $time';
  }

  @override
  String get syncNow => 'ធ្វើសមកាលកម្មឥឡូវ';

  @override
  String get syncFailed =>
      'ការធ្វើសមកាលកម្មបានបរាជ័យ។ វានឹងព្យាយាមម្តងទៀតដោយស្វ័យប្រវត្តិ។';

  @override
  String get alertEmailTitle => 'ផ្ញើអ៊ីមែល នៅពេលការជូនដំណឹងកើតឡើង';

  @override
  String get alertEmailOn =>
      'យើងពិនិត្យការជូនដំណឹងរបស់អ្នករៀងរាល់ប៉ុន្មាននាទីម្ដង ហើយផ្ញើអ៊ីមែលទៅអ្នក ទោះបីកម្មវិធីបិទក៏ដោយ។';

  @override
  String get alertEmailSignIn =>
      'ចូលគណនីដោយប្រើអ៊ីមែលរបស់អ្នកនៅក្នុងការកំណត់ ដើម្បីទទួលការជូនដំណឹងតាមអ៊ីមែល ទោះបីកម្មវិធីបិទក៏ដោយ។';

  @override
  String get portfolioHistory => 'តម្លៃតាមពេលវេលា';

  @override
  String get portfolioReviewTitle => 'ការពិនិត្យផលប័ត្រដោយ AI';

  @override
  String get portfolioReviewIntro =>
      'AI ពិនិត្យផលប័ត្រទាំងមូលរបស់អ្នក៖ ការប្រមូលផ្តុំ ហានិភ័យតាមវិស័យ និងរូបិយប័ណ្ណ ហានិភ័យរួមនៃភាគហ៊ុនរបស់អ្នក និងភាគលាភ។ ប្រើការវិភាគ 1 ដង។';

  @override
  String get portfolioReviewButton => 'ពិនិត្យផលប័ត្ររបស់ខ្ញុំ';

  @override
  String get portfolioReviewAgain => 'ពិនិត្យម្តងទៀត';

  @override
  String get portfolioReviewWorking => 'កំពុងពិនិត្យផលប័ត្ររបស់អ្នក…';

  @override
  String get digestTitle => 'សេចក្ដីសង្ខេបប្រចាំសប្ដាហ៍តាមអ៊ីមែល';

  @override
  String get digestHint =>
      'រៀងរាល់ថ្ងៃច័ន្ទ៖ ចំណូលចិត្ត និងផលប័ត្ររបស់អ្នកប្រែប្រួលយ៉ាងណាកាលពីសប្ដាហ៍មុន និងកាលបរិច្ឆេទប្រកាសលទ្ធផលខាងមុខ។';

  @override
  String get benchmarkTitle => 'ប្រៀបធៀបជាមួយ S&P 500';

  @override
  String get benchmarkTitleIndex => 'ប្រៀបធៀបជាមួយសន្ទស្សន៍មួយ';

  @override
  String get benchmarkHintIndex =>
      'ដូចជាការទិញនីមួយៗត្រូវបានវិនិយោគក្នុងមូលនិធិដែលតាមដានសន្ទស្សន៍ដែលបានជ្រើសរើស នៅថ្ងៃដដែល។ មិនរាប់បញ្ចូលភាគលាភ; ផលចំណេញកន្លងមកមិនព្យាករណ៍ផលចំណេញនាពេលអនាគតទេ។';

  @override
  String get benchmarkYours => 'ការទិញរបស់អ្នក';

  @override
  String benchmarkAhead(String points) {
    return 'ល្អជាងសន្ទស្សន៍ $points ពិន្ទុភាគរយ';
  }

  @override
  String benchmarkBehind(String points) {
    return 'ទាបជាងសន្ទស្សន៍ $points ពិន្ទុភាគរយ';
  }

  @override
  String get portfolioSell => 'លក់';

  @override
  String portfolioSellTitle(String symbol) {
    return 'លក់ $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'តម្លៃលក់ក្នុងមួយភាគហ៊ុន ($currency)';
  }

  @override
  String get portfolioSellDate => 'កាលបរិច្ឆេទលក់';

  @override
  String get portfolioSellAll => 'ទាំងអស់';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'អ្នកមាន $quantity';
  }

  @override
  String get portfolioSold => 'បានលក់';

  @override
  String get portfolioRealized => 'បានសម្រេច';

  @override
  String get portfolioClosed => 'ការកាន់កាប់ដែលបានបិទ';

  @override
  String get portfolioClosedNote => 'បានលក់ភាគហ៊ុនទាំងអស់';

  @override
  String get portfolioTransactions => 'ប្រតិបត្តិការ';

  @override
  String get portfolioRealizedByYear => 'ប្រាក់ចំណេញបានសម្រេចតាមឆ្នាំ';

  @override
  String get portfolioRealizedHint =>
      'ការលក់ត្រូវបានផ្គូផ្គងជាមួយការទិញចាស់បំផុតរបស់អ្នកជាមុន (FIFO) ហើយបម្លែងតាមអត្រាប្តូរប្រាក់ថ្ងៃនេះ។ សម្រាប់ការប្រកាសពន្ធ សូមប្រើរបាយការណ៍ពីឈ្មួញកណ្តាលរបស់អ្នក។';

  @override
  String staleNewResults(String symbol, String date) {
    return 'លទ្ធផលប្រចាំត្រីមាសថ្មីត្រូវបានប្រកាសចាប់តាំងពីការវិភាគនេះ ($symbol, $date)។';
  }

  @override
  String get newResultsBadge => 'លទ្ធផលថ្មី';

  @override
  String get portfolioImportBrokers =>
      'ការនាំចេញពី Revolut, Trading 212, Interactive Brokers, DEGIRO, Schwab, Fidelity និង Robinhood ក៏ត្រូវបានស្គាល់ដែរ រួមទាំងការលក់ និងភាគលាភ (ក្រោយកាត់ពន្ធកាត់ទុក); ការដាក់ប្រាក់ត្រូវបានរំលង។';

  @override
  String get portfolioImportFile => 'ជ្រើសរើសឯកសារ';

  @override
  String offlineBanner(String time) {
    return 'គ្មានការតភ្ជាប់ – កំពុងបង្ហាញទិន្នន័យដែលបានរក្សាទុកចុងក្រោយ ($time)។';
  }

  @override
  String get glossMarketCap =>
      'តម្លៃនៃក្រុមហ៊ុនទាំងមូលនៅលើទីផ្សារភាគហ៊ុន៖ តម្លៃភាគហ៊ុន × ចំនួនភាគហ៊ុន។';

  @override
  String get glossSharesOutstanding =>
      'ចំនួនភាគហ៊ុនដែលក្រុមហ៊ុនបានបោះផ្សាយ។ បើវាកើនឡើង ភាគហ៊ុននីមួយៗកាន់ចំណែកតូចជាងមុន ហើយការទិញភាគហ៊ុនត្រឡប់មកវិញធ្វើឱ្យវាថយចុះ។';

  @override
  String get glossPeTrailing =>
      'តម្លៃ ÷ ប្រាក់ចំណេញក្នុងមួយភាគហ៊ុនក្នុងរយៈពេល 12 ខែចុងក្រោយ៖ អ្នកកំពុងបង់សម្រាប់ប្រាក់ចំណេញបច្ចុប្បន្នប៉ុន្មានឆ្នាំ។ ទាបជាងមានន័យថាថោកជាង ប៉ុន្តែក្រុមហ៊ុនដែលរីកចម្រើនលឿនជាធម្មតាមាន P/E ខ្ពស់។';

  @override
  String get glossPeForward =>
      'ដូច P/E ដែរ ប៉ុន្តែប្រើប្រាក់ចំណេញដែលអ្នកវិភាគរំពឹងសម្រាប់ 12 ខែខាងមុខ។ បើទាបជាង P/E កន្លងមក មានន័យថាប្រាក់ចំណេញត្រូវបានរំពឹងថានឹងកើនឡើង។';

  @override
  String get glossPb =>
      'តម្លៃ ÷ តម្លៃតាមបញ្ជី (ទ្រព្យសកម្មដកបំណុល) ក្នុងមួយភាគហ៊ុន។ ប្រហែល 1 មានន័យថាទីផ្សារវាយតម្លៃក្រុមហ៊ុនស្មើនឹងអ្វីដែលវាមាននៅលើក្រដាស។';

  @override
  String get glossPs =>
      'តម្លៃទីផ្សារ ÷ ចំណូលប្រចាំឆ្នាំ។ មានប្រយោជន៍សម្រាប់ក្រុមហ៊ុនដែលមានប្រាក់ចំណេញតិច ឬមិនទាន់មាន។ ប្រៀបធៀបវាក្នុងវិស័យតែមួយ។';

  @override
  String get glossEvToFcf =>
      'តម្លៃក្រុមហ៊ុនរួមទាំងបំណុល (EV) ÷ សាច់ប្រាក់ដែលវាបង្កើតបានក្នុងមួយឆ្នាំបន្ទាប់ពីការវិនិយោគ។ ទាបជាងមានន័យថាអ្នកទទួលបានសាច់ប្រាក់ច្រើនជាងសម្រាប់តម្លៃនោះ។';

  @override
  String get glossPeg =>
      'P/E ÷ កំណើនប្រាក់ចំណេញប្រចាំឆ្នាំដែលរំពឹងទុក (%)។ ប្រហែល 1 ជារឿយៗត្រូវបានចាត់ទុកថាសមរម្យ។ វាមើល P/E ធៀបនឹងកំណើន។';

  @override
  String get glossEps =>
      'ប្រាក់ចំណេញក្នុងមួយភាគហ៊ុនក្នុងរយៈពេល 12 ខែចុងក្រោយ។ EPS ដែលកើនឡើងពីឆ្នាំមួយទៅឆ្នាំមួយ គឺជាសញ្ញាដ៏រឹងមាំបំផុតមួយនៃក្រុមហ៊ុនដែលមានសុខភាពល្អ។';

  @override
  String get glossBeta =>
      'កម្រិតដែលភាគហ៊ុនច្រើនប្រែប្រួលតាមទីផ្សារ៖ 1 = ដូចទីផ្សារ, 1,5 = ការប្រែប្រួលធំជាងប្រហែល 50%, ក្រោម 1 = ស្ងប់ជាង។';

  @override
  String get glossRevenueTtm =>
      'ការលក់សរុបក្នុងរយៈពេល 12 ខែចុងក្រោយ មុនពេលដកចំណាយណាមួយ។';

  @override
  String get glossNetIncomeTtm =>
      'ប្រាក់ចំណេញដែលនៅសល់បន្ទាប់ពីចំណាយទាំងអស់ ការប្រាក់ និងពន្ធ ក្នុងរយៈពេល 12 ខែចុងក្រោយ។';

  @override
  String get glossGrossMargin =>
      'ចំណែកនៃចំណូលដែលនៅសល់បន្ទាប់ពីថ្លៃដើមផ្ទាល់នៃផលិតផល។ អត្រាខ្ពស់ជារឿយៗបង្ហាញពីអំណាចកំណត់តម្លៃ។';

  @override
  String get glossOperatingMargin =>
      'ចំណែកនៃចំណូលដែលនៅសល់បន្ទាប់ពីចំណាយដំណើរការអាជីវកម្ម (ប្រាក់ខែ ថ្លៃជួល ទីផ្សារ) មុនការប្រាក់ និងពន្ធ។';

  @override
  String get glossNetMargin =>
      'ចំណែកនៃចំណូលដែលក្លាយជាប្រាក់ចំណេញចុងក្រោយ។ 20% មានន័យថាក្នុងការលក់រាល់ 100 មាន 20 ជាប្រាក់ចំណេញ។';

  @override
  String get glossRoe =>
      'ផលចំណេញលើមូលធនម្ចាស់ភាគហ៊ុន៖ ប្រាក់ចំណេញប្រចាំឆ្នាំ ÷ មូលធនរបស់ម្ចាស់។ បង្ហាញថាគណៈគ្រប់គ្រងប្រើប្រាស់ប្រាក់របស់ម្ចាស់ភាគហ៊ុនបានល្អប៉ុណ្ណា។ លើសពីប្រហែល 15% គឺខ្លាំង។';

  @override
  String get glossRoa =>
      'ផលចំណេញលើទ្រព្យសកម្ម៖ ប្រាក់ចំណេញប្រចាំឆ្នាំ ÷ អ្វីៗទាំងអស់ដែលក្រុមហ៊ុនមាន។ ប្រៀបធៀបវាក្នុងវិស័យតែមួយ។';

  @override
  String get glossDebtToEquity =>
      'បំណុល ÷ មូលធនរបស់ម្ចាស់។ ខ្ពស់ជាងមានន័យថាប្រាក់ខ្ចីច្រើនជាង៖ ហានិភ័យខ្ពស់ជាងនៅពេលអត្រាការប្រាក់កើនឡើង ឬអាជីវកម្មយឺត។';

  @override
  String get glossCurrentRatio =>
      'ទ្រព្យសកម្មរយៈពេលខ្លី ÷ វិក្កយបត្រដែលត្រូវបង់ក្នុងរយៈពេលមួយឆ្នាំ។ លើសពី 1 មានន័យថាក្រុមហ៊ុនអាចទូទាត់វិក្កយបត្រខាងមុខបាន។';

  @override
  String get glossRevenueGrowth => 'ចំណូលបានកើនឡើងប៉ុន្មានបើធៀបនឹងមួយឆ្នាំមុន។';

  @override
  String get glossEpsGrowth =>
      'ប្រាក់ចំណេញក្នុងមួយភាគហ៊ុនបានកើនឡើងប៉ុន្មានបើធៀបនឹងមួយឆ្នាំមុន។';

  @override
  String get glossDividendYield =>
      'ភាគលាភប្រចាំឆ្នាំ ÷ តម្លៃភាគហ៊ុន៖ ប្រាក់ចំណូលដែលអ្នកនឹងទទួលបានជារៀងរាល់ឆ្នាំ គិតជាភាគរយនៃអ្វីដែលអ្នកបានបង់។';

  @override
  String get glossDividendPerShare =>
      'ភាគលាភដែលបានបង់លើភាគហ៊ុនមួយក្នុងឆ្នាំកន្លងមក។';

  @override
  String get glossPayoutRatio =>
      'ចំណែកនៃប្រាក់ចំណេញដែលបានបង់ជាភាគលាភ។ លើសពី 100% ក្រុមហ៊ុនបង់ច្រើនជាងអ្វីដែលវារកបាន ដែលកម្រនឹងស្ថិតស្ថេរយូរ។';

  @override
  String get portfolioBeta => 'បេតាផលប័ត្រ';

  @override
  String get glossPortfolioBeta =>
      'បេតានៃភាគហ៊ុនរបស់អ្នក ដែលថ្លឹងតាមតម្លៃរបស់វា៖ ប្រហែលជាភាគហ៊ុនរបស់អ្នកប្រែប្រួលប៉ុន្មានភាគរយ នៅពេលទីផ្សារប្រែប្រួល 1%។ លើស 1 វាប្រែប្រួលខ្លាំងជាងទីផ្សារ ក្រោម 1 តិចជាង។ មិនរាប់បញ្ចូលសាច់ប្រាក់ទេ។';

  @override
  String get portfolioTop3 => 'ការកាន់កាប់ធំបំផុត 3';

  @override
  String get glossPortfolioTop3 =>
      'ចំណែកនៃតម្លៃភាគហ៊ុនរបស់អ្នកដែលស្ថិតនៅក្នុងការកាន់កាប់ធំបំផុតទាំងបីរបស់អ្នក។ វាកាន់តែខ្ពស់ ព័ត៌មានអាក្រក់អំពីក្រុមហ៊ុនតែមួយអាចប៉ះពាល់ដល់ផលប័ត្រទាំងមូលកាន់តែខ្លាំង។';

  @override
  String get glossDividendGrowth5y =>
      'កម្រិតដែលភាគលាភក្នុងមួយភាគហ៊ុនបានកើនឡើងជាមធ្យមក្នុងមួយឆ្នាំ ក្នុងរយៈពេលប្រាំឆ្នាំចុងក្រោយ។ កំណើនថេរជាធម្មតាមានន័យថាក្រុមហ៊ុនទុកចិត្តលើលំហូរសាច់ប្រាក់របស់ខ្លួន ចំណែកការកាត់បន្ថយច្រើនតែជាសញ្ញាព្រមាន។';

  @override
  String get glossYieldOnCost =>
      'ភាគលាភដែលបានទទួលក្នុងរយៈពេល ១២ ខែចុងក្រោយ ចែកនឹងទឹកប្រាក់ដែលអ្នកបានចំណាយសម្រាប់ភាគហ៊ុនដែលអ្នកនៅកាន់កាប់។ ខុសពីទិន្នផលភាគលាភ វាត្រូវបានវាស់ធៀបនឹងថ្លៃទិញរបស់អ្នកផ្ទាល់ មិនមែនថ្លៃថ្ងៃនេះទេ។';

  @override
  String get glossTitle => 'តើវាមានន័យដូចម្តេច?';

  @override
  String get watchNewsTitle => 'ព័ត៌មានអំពីភាគហ៊ុនរបស់អ្នក';

  @override
  String get undo => 'មិនធ្វើវិញ';

  @override
  String get watchSort => 'តម្រៀប';

  @override
  String get watchSortOwn => 'លំដាប់របស់ខ្ញុំ';

  @override
  String get watchSortGainers => 'ឡើងខ្លាំងបំផុតមុន';

  @override
  String get watchSortLosers => 'ធ្លាក់ខ្លាំងបំផុតមុន';

  @override
  String get watchSortName => 'តាមនិមិត្តសញ្ញា (A–Z)';

  @override
  String get watchHint =>
      'អូសដងកាន់ដើម្បីរៀបលំដាប់ឡើងវិញ អូសទៅឆ្វេងដើម្បីដកចេញ។ ខ្សែបង្ហាញ 30 ថ្ងៃចុងក្រោយ។';

  @override
  String analysisReady(String symbol) {
    return '$symbol៖ ការវិភាគរបស់អ្នករួចរាល់ហើយ។';
  }

  @override
  String alertFromCost(String price) {
    return 'ពីតម្លៃទិញមធ្យមរបស់អ្នក ($price)៖';
  }

  @override
  String get briefTitle => 'ថ្ងៃនេះជាមួយភាគហ៊ុនរបស់អ្នក';

  @override
  String get briefButton => 'សង្ខេបថ្ងៃនេះ';

  @override
  String get briefHint =>
      'សេចក្ដីសង្ខេប AI ខ្លីអំពីរបៀបដែលផលប័ត្រ និងចំណូលចិត្តរបស់អ្នកបានប្រែប្រួលថ្ងៃនេះ និងអ្វីដែលព័ត៌មានថ្មីៗនិយាយ។ មិនប្រើការវិភាគទេ។';

  @override
  String get briefRefresh => 'ធ្វើបច្ចុប្បន្នភាព';

  @override
  String get sectionEarnings => 'លទ្ធផលប្រចាំត្រីមាស';

  @override
  String earningsNext(String date) {
    return 'របាយការណ៍បន្ទាប់: $date';
  }

  @override
  String get earningsExpected => 'EPS រំពឹងទុក';

  @override
  String get earningsReported => 'EPS ដែលបានរាយការណ៍';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: 'EPS ស្មើ ឬលើសការរំពឹងទុក ក្នុង $beats នៃ $total ត្រីមាសចុងក្រោយ',
      one: 'EPS ស្មើ ឬលើសការរំពឹងទុក ក្នុង $beats នៃ 1 ត្រីមាស',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol នឹងប្រកាសលទ្ធផលប្រចាំត្រីមាសនៅថ្ងៃស្អែក';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol ប្រកាសលទ្ធផលប្រចាំត្រីមាសនៅថ្ងៃនេះ';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return 'ភាគលាភ $symbol រំពឹងទុកនៅថ្ងៃនេះ';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'ប្រហែល $amount។ កត់ត្រាវាក្នុងផលប័ត្ររបស់អ្នក ពេលវាមកដល់។';
  }

  @override
  String get dividendRemindersTitle => 'ការរំលឹកភាគលាភ';

  @override
  String get dividendRemindersSubtitle =>
      'ការជូនដំណឹងនៅថ្ងៃដែលរំពឹងថានឹងមានភាគលាភ តាមចង្វាក់នៃការទូទាត់ដែលអ្នកបានកត់ត្រា ដើម្បីឱ្យអ្នកអាចកត់ត្រាវាបាន';

  @override
  String get earningsRemindersTitle => 'ការរំលឹកលទ្ធផល';

  @override
  String get earningsRemindersSubtitle =>
      'ការជូនដំណឹងមួយថ្ងៃមុនពេលភាគហ៊ុនក្នុងចំណូលចិត្ត ឬផលប័ត្ររបស់អ្នកប្រកាសលទ្ធផលប្រចាំត្រីមាស';

  @override
  String addAllToFavorites(int count) {
    return 'បន្ថែមទាំងអស់ទៅចំណូលចិត្ត ($count)';
  }

  @override
  String get portfolioImportPhoto => 'នាំចូលពីរូបថតអេក្រង់';

  @override
  String get holdingsReading => 'កំពុងអានភាគហ៊ុនដែលអ្នកកាន់…';

  @override
  String get holdingsReviewTitle => 'ភាគហ៊ុនដែលបានរកឃើញ';

  @override
  String get holdingsReviewHint =>
      'សូមពិនិត្យលេខមុនពេលបន្ថែម។ តម្លៃនេះគឺជាតម្លៃទិញជាមធ្យមរបស់អ្នកក្នុងមួយភាគហ៊ុន មិនមែនតម្លៃថ្ងៃនេះទេ។';

  @override
  String get holdingsNoPrice => 'គ្មានតម្លៃទិញជាមធ្យមនៅលើរូបភាពទេ';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'បន្ថែមភាគហ៊ុន $count មុខ',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'រកមិនឃើញភាគហ៊ុនដែលអ្នកកាន់នៅលើរូបភាពនេះទេ។ សាកល្បងរូបថតអេក្រង់នៃទំព័រភាគហ៊ុនដែលអ្នកកាន់នៅក្នុងកម្មវិធីឈ្មួញកណ្ដាលរបស់អ្នក។';

  @override
  String get week52Range => 'ចន្លោះ 52 សប្ដាហ៍';

  @override
  String week52BelowHigh(String percent) {
    return 'ទាបជាងខ្ពស់បំផុត 52 សប្ដាហ៍ $percent';
  }

  @override
  String get week52AtHigh => 'នៅខ្ពស់បំផុត 52 សប្ដាហ៍';

  @override
  String get alertKindTrailing => 'ធ្លាក់ពីកំពូល';

  @override
  String get alertTrailingPercent => 'ការធ្លាក់ពីកំពូល (%)';

  @override
  String get alertTrailingHint =>
      'តាមដានតម្លៃឡើងលើ៖ ជូនដំណឹងនៅពេលតម្លៃធ្លាក់ប៉ុណ្ណេះពីកម្រិតខ្ពស់បំផុតចាប់តាំងពីអ្នកកំណត់វា។';

  @override
  String alertDescTrailing(String percent) {
    return 'ធ្លាក់ $percent ពីកំពូល';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'កំពូលរហូតមកដល់ពេលនេះ៖ $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol បានធ្លាក់ $percent ពីកំពូល';
  }

  @override
  String get sectionInsiders => 'ប្រតិបត្តិការអ្នកក្នុង';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ការទិញ $count',
      one: 'ការទិញ 1',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ការលក់ $count',
      one: 'ការលក់ 1',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'សុទ្ធ៖ $shares ភាគហ៊ុន';
  }

  @override
  String get insiderBuy => 'បានទិញ';

  @override
  String get insiderSell => 'បានលក់';

  @override
  String get insiderHint =>
      'ការទិញ និងលក់នៅលើទីផ្សារបើកចំហដោយនាយកប្រតិបត្តិ និងអភិបាល ក្នុងរយៈពេល 90 ថ្ងៃចុងក្រោយ (SEC Form 4)។ ការប្រើប្រាស់ជម្រើស (option) និងការផ្តល់ភាគហ៊ុនជារង្វាន់ មិនត្រូវបានរាប់បញ្ចូលទេ។';

  @override
  String get insiderNone =>
      'គ្មានការទិញ ឬលក់ដោយអ្នកក្នុងនៅលើទីផ្សារបើកចំហក្នុងរយៈពេល 90 ថ្ងៃចុងក្រោយទេ។';

  @override
  String get analystTrend => 'របៀបដែលមតិបានផ្លាស់ប្តូរពីខែមួយទៅខែមួយ';

  @override
  String get watchListAll => 'ទាំងអស់';

  @override
  String get watchListNew => 'បញ្ជីថ្មី';

  @override
  String get watchListName => 'ឈ្មោះបញ្ជី';

  @override
  String get watchListRename => 'ប្ដូរឈ្មោះបញ្ជី';

  @override
  String get watchListDelete => 'លុបបញ្ជី';

  @override
  String get watchListAddTo => 'បន្ថែមទៅបញ្ជី';

  @override
  String get watchListEmpty =>
      'មិនទាន់មានភាគហ៊ុននៅក្នុងបញ្ជីនេះទេ។ ចុចប៊ូតុងបញ្ជីនៅក្បែរភាគហ៊ុនដើម្បីបន្ថែមវា។';

  @override
  String get portfolioAskTitle => 'សំណួរអំពីផលប័ត្ររបស់អ្នក';

  @override
  String get rangeYtd => 'ឆ្នាំនេះ';

  @override
  String get backupTitle => 'ការបម្រុងទុក';

  @override
  String get backupSave => 'រក្សាទុកការបម្រុងទុក';

  @override
  String get backupSaveHint =>
      'ចំណូលចិត្ត បញ្ជី ផលប័ត្រ ការជូនដំណឹង និងកំណត់ចំណាំរបស់អ្នកក្នុងឯកសារតែមួយ។';

  @override
  String get backupRestore => 'ស្ដារពីការបម្រុងទុក';

  @override
  String get backupRestoreHint =>
      'បន្ថែមអ្វីដែលមានក្នុងឯកសារ គ្មានអ្វីដែលអ្នកមានឥឡូវនេះត្រូវបានលុបទេ។';

  @override
  String get backupRestored => 'បានស្ដារការបម្រុងទុក។';

  @override
  String get backupInvalid => 'ឯកសារនេះមិនមែនជាការបម្រុងទុក WhatStock ទេ។';

  @override
  String get allocationPositions => 'ភាគហ៊ុន';

  @override
  String get allocationSectors => 'វិស័យ';

  @override
  String get allocationCurrencies => 'រូបិយប័ណ្ណ';

  @override
  String get allocationAccounts => 'គណនី';

  @override
  String get compareReturn1y => 'ផលចំណេញ 1 ឆ្នាំ';

  @override
  String get compareFromHigh => 'ចម្ងាយពីខ្ពស់បំផុត 52 សប្ដាហ៍';

  @override
  String get briefAutoTitle => 'សេចក្ដីសង្ខេបប្រចាំថ្ងៃរៀងរាល់ព្រឹក';

  @override
  String get briefAutoSubtitle =>
      '“ថ្ងៃនេះជាមួយភាគហ៊ុនរបស់អ្នក” ត្រូវបានបង្កើតដោយស្វ័យប្រវត្តិក្រោយម៉ោង 7:00 ព្រឹក នៅពេលកម្មវិធីកំពុងដំណើរការ។ នៅលើកុំព្យូទ័រ ការជូនដំណឹងនឹងប្រាប់អ្នក។ វាប្រើកម្រិតសំណួរប្រចាំថ្ងៃរបស់អ្នក មិនមែនការវិភាគទេ។';

  @override
  String get targetsButton => 'ការបែងចែកគោលដៅ';

  @override
  String get targetsTitle => 'ការបែងចែកគោលដៅ';

  @override
  String get targetsHint =>
      'កំណត់ចំណែកនៃផលប័ត្រដែលភាគហ៊ុននីមួយៗគួរមាន។ ទុកប្រអប់ឱ្យទទេ ប្រសិនបើគ្មានគោលដៅ។ បន្ទាប់មក កម្មវិធីនឹងបង្ហាញអ្វីដែលត្រូវទិញ ឬលក់ ដើម្បីទៅដល់គោលដៅនោះ។';

  @override
  String targetsSum(String percent) {
    return 'សរុប៖ $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'ទិញ ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'លក់ ≈ $amount';
  }

  @override
  String get rebalanceOk => 'ត្រូវតាមគោលដៅ';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol លើសពី EPS រំពឹងទុក';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol ទាបជាង EPS រំពឹងទុក';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'EPS ដែលបានរាយការណ៍ $actual រំពឹងទុក $estimate';
  }

  @override
  String get newsExplain => 'តើនេះមានន័យដូចម្តេច?';

  @override
  String get watchAlertAll => 'ការជូនដំណឹងពេលប្រែប្រួលខ្លាំងប្រចាំថ្ងៃ';

  @override
  String get watchAlertAllHint =>
      'ការជូនដំណឹងតម្លៃសម្រាប់ភាគហ៊ុននីមួយៗក្នុងបញ្ជីនេះ ដែលនឹងរោទ៍នៅពេលវាប្រែប្រួលប៉ុណ្ណេះក្នុងមួយថ្ងៃ ទាំងឡើង ឬចុះ។ ភាគហ៊ុនដែលមានរួចហើយ នឹងរក្សាទុកដដែល។';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'បានកំណត់ការជូនដំណឹង $count',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'នាំចេញប្រាក់ចំណេញដែលបានសម្រេច (CSV)';

  @override
  String get portfolioAnnualReturn => 'ទិន្នផលប្រចាំឆ្នាំ';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / ឆ្នាំ';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'ទិន្នផលប្រចាំឆ្នាំដែលថ្លឹងតាមទឹកប្រាក់ (XIRR)៖ វាគិតពីពេលដែលអ្នកបានទិញ និងលក់ ដូច្នេះប្រាក់ដែលបន្ថែមនៅពេលក្រោយមិនធ្វើឱ្យវាខុសប្រក្រតីទេ។ បង្ហាញនៅពេលការទិញដំបូងរបស់អ្នកមានរយៈពេលយ៉ាងហោចណាស់មួយឆ្នាំ ហើយមិនរួមបញ្ចូលភាគលាភទេ។';

  @override
  String get eventsAddToCalendar => 'បន្ថែមទៅប្រតិទិន (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'ការជូនដំណឹងផលប័ត្រ';

  @override
  String get portfolioMoveAlertSubtitle =>
      'ការជូនដំណឹងនៅពេលផលប័ត្រទាំងមូលរបស់អ្នកប្រែប្រួលប៉ុណ្ណេះក្នុងមួយថ្ងៃ។';

  @override
  String get portfolioMoveAlertOff => 'បិទ';

  @override
  String portfolioMoveUp(String percent) {
    return 'ផលប័ត្ររបស់អ្នកកើនឡើង $percent ថ្ងៃនេះ';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'ផលប័ត្ររបស់អ្នកធ្លាក់ចុះ $percent ថ្ងៃនេះ';
  }

  @override
  String get whatIfTitle => 'ចុះបើអ្នកបានវិនិយោគ?';

  @override
  String get whatIfAmount => 'ចំនួនទឹកប្រាក់';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount ដែលបានវិនិយោគកាលពី $periodមុន នឹងមានតម្លៃនៅថ្ងៃនេះ';
  }

  @override
  String get whatIfNote =>
      'ផ្អែកលើតម្លៃភាគហ៊ុនតែប៉ុណ្ណោះ៖ មិនរួមបញ្ចូលភាគលាភ កម្រៃសេវា និងពន្ធទេ។ ផលចំណេញកាលពីមុនមិនព្យាករណ៍ផលចំណេញនាពេលអនាគតទេ។';

  @override
  String get watchShare => 'ចែករំលែកបញ្ជី';

  @override
  String get watchImport => 'បន្ថែមនិមិត្តសញ្ញាភាគហ៊ុន';

  @override
  String get watchImportHint =>
      'បិទភ្ជាប់និមិត្តសញ្ញាភាគហ៊ុនដែលបំបែកដោយសញ្ញាក្បៀស ដកឃ្លា ឬបន្ទាត់ថ្មី ឧទាហរណ៍ បញ្ជីដែលនរណាម្នាក់បានចែករំលែកជាមួយអ្នក។';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'បានបន្ថែមភាគហ៊ុន $count',
      one: 'បានបន្ថែមភាគហ៊ុន 1',
      zero: 'គ្មានភាគហ៊ុនថ្មីទេ',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'ធំបំផុតមុន';

  @override
  String get positionsSortGain => 'ចំណេញសរុបខ្ពស់បំផុតមុន';

  @override
  String get positionsSortToday => 'ល្អបំផុតថ្ងៃនេះមុន';

  @override
  String get chartMyBuys => 'ការទិញរបស់អ្នក';

  @override
  String get chartMySells => 'ការលក់របស់អ្នក';

  @override
  String get shortcutsTitle => 'ផ្លូវកាត់ក្ដារចុច';

  @override
  String usMarketOpen(String time) {
    return 'ផ្សារអាមេរិកបើក · បិទក្នុង $time ទៀត';
  }

  @override
  String usMarketClosed(String time) {
    return 'ផ្សារអាមេរិកបិទ · បើកក្នុង $time ទៀត';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes នាទី';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours ម៉ោង $minutes នាទី';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days ថ្ងៃ $hours ម៉ោង';
  }

  @override
  String get dividendGoalSet => 'កំណត់គោលដៅភាគលាភប្រចាំខែ';

  @override
  String get dividendGoalTitle => 'គោលដៅភាគលាភប្រចាំខែ';

  @override
  String get dividendGoalAmount => 'ភាគលាភក្នុងមួយខែ';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'ប្រហែល $amount ក្នុងមួយខែ តាមទិន្នផលបច្ចុប្បន្ន៖ $percent នៃគោលដៅ $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'ប្រហែល $amount ក្នុងមួយខែ តាមទិន្នផលបច្ចុប្បន្ន៖ សម្រេចគោលដៅ $goal ហើយ';
  }

  @override
  String get portfolioAccount => 'គណនី';

  @override
  String get portfolioAccountHint => 'ឧ. TBSZ 2026 (ស្រេចចិត្ត)';

  @override
  String get portfolioAccountAdd => 'បញ្ជាក់គណនី';

  @override
  String get portfolioAccountsAll => 'គណនីទាំងអស់';

  @override
  String get portfolioAccountNote =>
      'មានតែប្រតិបត្តិការ និងភាគលាភរបស់គណនីនេះប៉ុណ្ណោះ។ សាច់ប្រាក់ គោលដៅ និងការពិនិត្យដោយ AI ត្រូវបានបង្ហាញនៅក្រោម «គណនីទាំងអស់»។';

  @override
  String get portfolioNoAccount => 'គ្មានគណនី';

  @override
  String portfolioFee(String currency) {
    return 'កម្រៃជើងសារ ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'បន្ថែមកម្រៃជើងសារ';

  @override
  String portfolioFeeRow(String amount) {
    return 'កម្រៃជើងសារ៖ $amount';
  }

  @override
  String get portfolioAnnualSummary => 'សេចក្តីសង្ខេបប្រចាំឆ្នាំ';

  @override
  String get portfolioProceeds => 'ចំណូលពីការលក់';

  @override
  String get portfolioCostBasis => 'ថ្លៃដើមទិញ';

  @override
  String get portfolioFeesPaid => 'កម្រៃជើងសារដែលបានបង់';

  @override
  String get portfolioAnnualSummaryNote =>
      'ចំនួនទឹកប្រាក់ជារូបិយប័ណ្ណដើម មិនបានបម្លែងទេ។ ចំណូលពីការលក់គឺក្រោយកាត់កម្រៃជើងសារលក់ ហើយថ្លៃដើមទិញរួមបញ្ចូលកម្រៃជើងសារទិញ (FIFO)។ សម្រាប់ការប្រកាសពន្ធ សូមបម្លែងតាមអត្រាប្តូរប្រាក់ដែលអាជ្ញាធរពន្ធដាររបស់អ្នកតម្រូវ។';

  @override
  String get portfolioShare => 'ចែករំលែកលទ្ធផល';

  @override
  String get portfolioShareHeading => 'ផលប័ត្ររបស់ខ្ញុំ';

  @override
  String get portfolioTopHoldings => 'ការកាន់កាប់ធំបំផុត';

  @override
  String get portfolioShareNote =>
      'ចែករំលែកតែភាគរយប៉ុណ្ណោះ គ្មានចំនួនទឹកប្រាក់ទេ។';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ភាគហ៊ុន $count មុខ',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'មិនមែនជាដំបូន្មានវិនិយោគទេ';

  @override
  String get contributionButton => 'វិនិយោគប្រាក់ថ្មី';

  @override
  String contributionAmount(String currency) {
    return 'ចំនួនទឹកប្រាក់ត្រូវវិនិយោគ ($currency)';
  }

  @override
  String get contributionHint =>
      'ទិញតែប៉ុណ្ណោះ គ្មានការលក់ទេ៖ ការកាន់កាប់ដែលនៅក្រោមគោលដៅឆ្ងាយជាងគេ ទទួលបានប្រាក់មុន។';

  @override
  String contributionShares(String shares) {
    return '≈ $shares ភាគហ៊ុន';
  }

  @override
  String contributionMissing(String symbols) {
    return 'គ្មានតម្លៃបច្ចុប្បន្នសម្រាប់ $symbols ទេ៖ មិនត្រូវបានរាប់បញ្ចូលក្នុងការបែងចែកទេ។';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'ប្រសិនបើទិន្នផលប្រចាំឆ្នាំនៅដដែល ($rate) អ្នកនឹងសម្រេចគោលដៅប្រហែលនៅឆ្នាំ $year។';
  }

  @override
  String get portfolioMaxDrawdown => 'ការធ្លាក់ចុះធំបំផុត';

  @override
  String get glossMaxDrawdown =>
      'ការធ្លាក់ចុះធំបំផុតនៃតម្លៃភាគហ៊ុនរបស់អ្នក ពីកម្រិតខ្ពស់មុន ទៅកម្រិតទាបនៅពេលក្រោយ ដោយមិនគិតពីឥទ្ធិពលនៃការទិញ និងលក់របស់អ្នក (ថ្លឹងតាមពេលវេលា)។ វាបង្ហាញថាផលប័ត្ររបស់អ្នកបានឆ្លងកាត់ការធ្លាក់ចុះជ្រៅប៉ុណ្ណាមកហើយ។';

  @override
  String watchSince(String date) {
    return 'ចាប់តាំងពីបន្ថែមទៅចំណូលចិត្ត ($date)';
  }

  @override
  String get portfolioSampleTry => 'សាកល្បងជាមួយផលប័ត្រគំរូ';

  @override
  String get portfolioSampleBanner =>
      'នេះជាផលប័ត្រគំរូ។ បន្ថែមការទិញផ្ទាល់ខ្លួនរបស់អ្នកនៅក្បែរវា ឬដកវាចេញ។';

  @override
  String get portfolioSampleRemove => 'ដកគំរូចេញ';

  @override
  String get portfolioStopsAll =>
      'ការជូនដំណឹងពេលធ្លាក់ពីកំពូលសម្រាប់ការកាន់កាប់ទាំងអស់';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'បានកំណត់ការជូនដំណឹង $count',
      one: 'បានកំណត់ការជូនដំណឹង 1',
      zero: 'ការកាន់កាប់នីមួយៗមានការជូនដំណឹងនេះរួចហើយ',
    );
    return '$_temp0';
  }

  @override
  String portfolioSinceSale(String percent) {
    return '$percent ចាប់តាំងពីលក់';
  }

  @override
  String get lotPreviewRealized => 'បានសម្រេចពីការលក់នេះ (FIFO)៖';

  @override
  String lotPreviewAverage(String after, String before) {
    return 'ថ្លៃដើមមធ្យមថ្មី៖ $after (បច្ចុប្បន្ន $before)';
  }

  @override
  String get portfolioYtdReturn => 'ទិន្នផលឆ្នាំនេះ';

  @override
  String get glossTwrYtd =>
      'ទិន្នផលថ្លឹងតាមពេលវេលា ចាប់តាំងពីដើមឆ្នាំ (ឬចាប់តាំងពីការទិញលើកដំបូងរបស់អ្នក ប្រសិនបើវាកើតឡើងក្នុងឆ្នាំនេះ)៖ ថ្ងៃនីមួយៗគិតការប្រែប្រួលនៃភាគហ៊ុនដែលអ្នកកាន់នៅថ្ងៃនោះ ហើយថ្ងៃទាំងនោះត្រូវបានភ្ជាប់បន្តគ្នា – ប្រាក់ដែលអ្នកដាក់ចូល ឬដកចេញ មិនមែនជាទិន្នផលទេ ដូច្នេះវាអាចប្រៀបធៀបជាមួយសន្ទស្សន៍បាន។ ខាងក្រោម៖ សន្ទស្សន៍ដែលបានជ្រើសរើស ក្នុងរយៈពេលដូចគ្នា។';

  @override
  String alertDistance(String price, String percent) {
    return 'បច្ចុប្បន្ន $price · នៅសល់ $percent';
  }

  @override
  String get watchSortSince => 'តាមការប្រែប្រួលចាប់តាំងពីបន្ថែម';

  @override
  String get portfolioTodayMovers => 'ប្រែប្រួលខ្លាំងជាងគេថ្ងៃនេះ៖';

  @override
  String get lotNoteAdd => 'បន្ថែមកំណត់ចំណាំ';

  @override
  String get lotNoteBuyHint =>
      'ហេតុអ្វីអ្នកទិញ? វានឹងចូលទៅក្នុងកំណត់ចំណាំរបស់ភាគហ៊ុន រួមជាមួយកាលបរិច្ឆេទ។';

  @override
  String get lotNoteSellHint =>
      'ហេតុអ្វីអ្នកលក់? វានឹងចូលទៅក្នុងកំណត់ចំណាំរបស់ភាគហ៊ុន រួមជាមួយកាលបរិច្ឆេទ។';

  @override
  String get lotNoteBought => 'បានទិញ';

  @override
  String get positionHeld => 'រយៈពេលកាន់កាប់';

  @override
  String durationMonths(int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months ខែ',
    );
    return '$_temp0';
  }

  @override
  String durationDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days ថ្ងៃ',
    );
    return '$_temp0';
  }

  @override
  String positionHeldSince(String date) {
    return 'ចាប់ពី $date';
  }

  @override
  String lotPreviewWeight(String after, String before) {
    return 'ចំណែកក្នុងផលប័ត្របន្ទាប់ពីនេះ៖ $after (បច្ចុប្បន្ន $before)';
  }

  @override
  String lotFromCash(String amount) {
    return 'បង់ពីសាច់ប្រាក់ (បច្ចុប្បន្ន $amount)';
  }

  @override
  String lotToCash(String amount) {
    return 'បន្ថែមទៅសាច់ប្រាក់ (បច្ចុប្បន្ន $amount)';
  }

  @override
  String get onboardTitle4 => 'តាមដានផលប័ត្ររបស់អ្នក';

  @override
  String get onboardBody4 =>
      'នាំចូលឯកសារនាំចេញពីឈ្មួញកណ្តាលរបស់អ្នក (Revolut, Trading 212, IBKR, DEGIRO, Schwab…) ឬបន្ថែមប្រតិបត្តិការដោយដៃ៖ មើលទិន្នផលរបស់អ្នកធៀបនឹងសន្ទស្សន៍មួយ ភាគលាភរបស់អ្នក និងសេចក្តីសង្ខេបប្រចាំឆ្នាំសម្រាប់ការប្រកាសពន្ធ។';

  @override
  String get lotEdit => 'កែ';

  @override
  String lotEditTitle(String symbol) {
    return 'កែប្រតិបត្តិការ · $symbol';
  }

  @override
  String get lotSave => 'រក្សាទុក';

  @override
  String dividendEditTitle(String symbol) {
    return 'កែភាគលាភ · $symbol';
  }

  @override
  String get activityTitle => 'ប្រតិបត្តិការទាំងអស់';

  @override
  String get activitySearchHint => 'ត្រងតាមនិមិត្តសញ្ញា';

  @override
  String get activityNoMatch => 'គ្មានប្រតិបត្តិការដែលត្រូវនឹងតម្រងទេ។';

  @override
  String portfolioImportDuplicates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count បានកត់ត្រារួចហើយ មិនបានបញ្ចូលទេ',
      one: '1 បានកត់ត្រារួចហើយ មិនបានបញ្ចូលទេ',
    );
    return '$_temp0';
  }

  @override
  String get portfolioGoalSet => 'កំណត់គោលដៅ';

  @override
  String get portfolioGoalTitle => 'គោលដៅផលប័ត្រ';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent នៃគោលដៅ $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'សម្រេចគោលដៅ $amount ហើយ';
  }

  @override
  String get portfolioGoalRemove => 'ដកគោលដៅចេញ';

  @override
  String get alertEdit => 'កែការជូនដំណឹង';

  @override
  String get positionOpenLots => 'នៅកាន់កាប់ (ចាស់បំផុតមុន)';

  @override
  String get lotRemoved => 'បានលុបប្រតិបត្តិការ';

  @override
  String get alertDeleted => 'បានលុបការជូនដំណឹង';

  @override
  String get alertsClearTriggered => 'សម្អាតការជូនដំណឹងដែលបានកើតឡើង';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'បានសម្អាតការជូនដំណឹង $count',
      one: 'បានសម្អាតការជូនដំណឹង 1',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'អេក្រង់ដើម';

  @override
  String get allocationCountries => 'ប្រទេស';

  @override
  String get newsExplainNoteResearch =>
      'ការពន្យល់ដោយ AI៖ វាស្វែងរកការពិតនៅលើបណ្ដាញ បើកអត្ថបទ ហើយវាយតម្លៃថាប្រភពគួរឱ្យទុកចិត្តប៉ុណ្ណា។ មិនមែនជាដំបូន្មានវិនិយោគទេ។ វាប្រើកម្រិតសំណួរប្រចាំថ្ងៃរបស់អ្នក មិនមែនការវិភាគទេ។';

  @override
  String get sourceOfficial => 'ផ្លូវការ';

  @override
  String get sourcePressRelease => 'សេចក្តីប្រកាសព័ត៌មាន';

  @override
  String get sourceMajorNews => 'ប្រព័ន្ធផ្សព្វផ្សាយធំ';

  @override
  String get sourceOpinion => 'មតិ';

  @override
  String get earningsSummaryButton => 'តើរបាយការណ៍ចុងក្រោយមានអ្វីខ្លះ?';

  @override
  String get earningsSummaryNote =>
      'សេចក្ដីសង្ខេបដោយ AI អំពីការប្រកាសលទ្ធផលរបស់ក្រុមហ៊ុន និងការផ្សាយព័ត៌មានដែលវារកឃើញនៅលើបណ្ដាញ។ មិនមែនជាដំបូន្មានវិនិយោគទេ។ វាប្រើកម្រិតសំណួរប្រចាំថ្ងៃរបស់អ្នក មិនមែនការវិភាគទេ។';

  @override
  String get compareLastSurprise => 'EPS ត្រីមាសចុងក្រោយ ធៀបរំពឹងទុក';

  @override
  String get compareNextReport => 'របាយការណ៍បន្ទាប់';

  @override
  String get resolvingDescription => 'កំពុងកំណត់ថាអ្នកចង់សំដៅលើភាគហ៊ុនមួយណា…';

  @override
  String get instrumentTitle => 'អំពីឧបករណ៍នេះ';

  @override
  String get instrumentHint =>
      'មិនមានប្រវត្តិរូបក្រុមហ៊ុនសម្រាប់និមិត្តសញ្ញានេះទេ – វាអាចជា ETF មូលនិធិ ឬវិញ្ញាបនបត្របញ្ញើ។ សួរ AI ថាវាជាអ្វី មានអ្វីនៅក្នុងនោះ និងថ្លៃប៉ុន្មាន។';

  @override
  String get instrumentAsk => 'នេះជាអ្វី?';

  @override
  String get instrumentNote =>
      'ការពន្យល់ដោយ AI ពីទំព័រមូលនិធិរបស់អ្នកបោះផ្សាយ និងគេហទំព័រហិរញ្ញវត្ថុដែលវារកឃើញនៅលើបណ្ដាញ។ មិនមែនជាដំបូន្មានវិនិយោគទេ។ វាប្រើកម្រិតសំណួរប្រចាំថ្ងៃរបស់អ្នក មិនមែនការវិភាគទេ។';

  @override
  String suggestAskAi(String query) {
    return 'សួរ AI៖ «$query»';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'គ្មានតម្លៃបច្ចុប្បន្នសម្រាប់ $symbols ទេ។';
  }

  @override
  String get eventsRecentResults => 'លទ្ធផលដែលទើបរាយការណ៍';

  @override
  String get saveToNotes => 'រក្សាទុកក្នុងកំណត់ចំណាំរបស់ខ្ញុំ';

  @override
  String get savedToNotes => 'បានរក្សាទុកក្នុងកំណត់ចំណាំរបស់អ្នក';

  @override
  String get portfolioDividendsReceived => 'ភាគលាភដែលបានទទួល';

  @override
  String get portfolioDividendsThisYear => 'ឆ្នាំនេះ';

  @override
  String get portfolioDividendsAllTime => 'គ្រប់ពេល';

  @override
  String get portfolioAddDividend => 'បន្ថែមភាគលាភ';

  @override
  String portfolioDividendAmount(String currency) {
    return 'ចំនួនទឹកប្រាក់ដែលបានទទួល ($currency)';
  }

  @override
  String get portfolioDividendDate => 'កាលបរិច្ឆេទទូទាត់';

  @override
  String get portfolioDividendsEmpty =>
      'មិនទាន់មានភាគលាភបានកត់ត្រានៅឡើយទេ។ បន្ថែមដោយដៃ ឬនាំចូលឯកសារនាំចេញពីឈ្មួញកណ្តាលរបស់អ្នក – ជួរភាគលាភរបស់វាក៏ត្រូវបានយកផងដែរ។';

  @override
  String get portfolioSplit => 'ការបំបែកភាគហ៊ុន';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'ការបំបែកភាគហ៊ុន៖ $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'ការទិញ និងការលក់ដែលមានកាលបរិច្ឆេទមុនការបំបែកត្រូវបានកែតម្រូវ៖ ចំនួនភាគហ៊ុនត្រូវបានគុណ និងតម្លៃក្នុងមួយភាគហ៊ុនត្រូវបានចែក ដូច្នេះថ្លៃដើមនៅដដែល។';

  @override
  String get portfolioSplitRatio => 'សមាមាត្រ (ថ្មី : ចាស់)';

  @override
  String get portfolioSplitRatioError =>
      'បញ្ចូលសមាមាត្រដូចជា 10:1 ឬ 1:10 សម្រាប់ការបំបែកបញ្ច្រាស។';

  @override
  String get portfolioSplitDate => 'កាលបរិច្ឆេទបំបែក';

  @override
  String portfolioSplitRow(String ratio) {
    return 'ការបំបែកភាគហ៊ុន $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'បានលុបការបំបែកភាគហ៊ុន';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'បានបន្ថែមការបំបែកភាគហ៊ុន $count',
      one: 'បានបន្ថែមការបំបែកភាគហ៊ុន 1',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'បានបន្ថែមភាគលាភ $count',
      one: 'បានបន្ថែមភាគលាភ 1',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'នាំចេញភាគលាភ (CSV)';

  @override
  String get portfolioDividendDeleted => 'បានលុបភាគលាភ';

  @override
  String get portfolioDividendsHint =>
      'ចំនួនទឹកប្រាក់ដូចដែលបានមកដល់គណនីរបស់អ្នក ជារូបិយប័ណ្ណនៃការទូទាត់; សរុបត្រូវបានប្តូរតាមអត្រាថ្ងៃនេះ។ សម្រាប់ការប្រកាសពន្ធ សូមប្រើរបាយការណ៍ឈ្មួញកណ្តាលរបស់អ្នក។';

  @override
  String get awayTitle => 'ពេលអ្នកមិននៅ';

  @override
  String awaySince(String when) {
    return 'ចាប់ពី $when';
  }

  @override
  String get awayQuiet => 'មិនមានអ្វីផ្លាស់ប្តូរច្រើនទេ។';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ការជូនដំណឹង $count បានកើតឡើង',
      one: 'ការជូនដំណឹង 1 បានកើតឡើង',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'បានប្រកាសលទ្ធផល៖ $symbols';
  }

  @override
  String get moveWhyButton => 'ហេតុអ្វីវាប្រែប្រួលថ្ងៃនេះ?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent ថ្ងៃនេះ';
  }

  @override
  String get moveWhyNote =>
      'ការពន្យល់ដោយ AI ពីព័ត៌មានថ្ងៃនេះដែលរកឃើញនៅលើវេប។ មូលហេតុពិតអាចមិនស្គាល់ ឬខុសគ្នា។ មិនមែនជាដំបូន្មានវិនិយោគទេ។ ប្រើកូតាសំណួរប្រចាំថ្ងៃរបស់អ្នក មិនមែនការវិភាគទេ។';

  @override
  String get sectionTechnical => 'រូបភាពបច្ចេកទេស';

  @override
  String get labelSma50 => 'មធ្យម ៥០ ថ្ងៃ';

  @override
  String get labelSma200 => 'មធ្យម ២០០ ថ្ងៃ';

  @override
  String get labelRsi => 'RSI (១៤ ថ្ងៃ)';

  @override
  String get labelVolatility30 => 'ភាពប្រែប្រួល (៣០ ថ្ងៃ)';

  @override
  String techAbove(String percent) {
    return '$percent ខាងលើ';
  }

  @override
  String techBelow(String percent) {
    return '$percent ខាងក្រោម';
  }

  @override
  String get techOverbought => 'ទិញលើសកម្រិត';

  @override
  String get techOversold => 'លក់លើសកម្រិត';

  @override
  String get techNeutral => 'អព្យាក្រឹត';

  @override
  String get techGoldenCross =>
      'មធ្យម ៥០ ថ្ងៃ ស្ថិតនៅខាងលើមធ្យម ២០០ ថ្ងៃ – និន្នាការឡើង តាមការអានបែបបុរាណ។';

  @override
  String get techDeathCross =>
      'មធ្យម ៥០ ថ្ងៃ ស្ថិតនៅខាងក្រោមមធ្យម ២០០ ថ្ងៃ – និន្នាការចុះ តាមការអានបែបបុរាណ។';

  @override
  String get glossSma50 =>
      'តម្លៃបិទជាមធ្យមក្នុងរយៈពេល ៥០ ថ្ងៃជួញដូរចុងក្រោយ។ តម្លៃខាងលើវាជារឿយៗត្រូវបានចាត់ទុកជាកម្លាំងរយៈពេលខ្លី ខាងក្រោមវាជាភាពទន់ខ្សោយ។';

  @override
  String get glossSma200 =>
      'តម្លៃបិទជាមធ្យមក្នុងរយៈពេល ២០០ ថ្ងៃជួញដូរចុងក្រោយ – ខ្សែនិន្នាការរយៈពេលវែងបែបបុរាណ។ វិនិយោគិនច្រើនចាត់ទុកតម្លៃខាងលើវាជានិន្នាការឡើងរយៈពេលវែង។';

  @override
  String get glossRsi =>
      'សន្ទស្សន៍កម្លាំងទាក់ទង៖ ប្រៀបធៀបការកើនឡើងថ្មីៗជាមួយការធ្លាក់ចុះថ្មីៗ លើមាត្រដ្ឋាន ០–១០០។ លើស ៧០ ភាគហ៊ុនជារឿយៗត្រូវបានហៅថាទិញលើសកម្រិត (ឡើងលឿន) ក្រោម ៣០ លក់លើសកម្រិត – ប៉ុន្តែនិន្នាការខ្លាំងអាចនៅទីនោះបានយូរ។';

  @override
  String get glossVolatility =>
      'តម្លៃប្រែប្រួលប៉ុន្មានពីមួយថ្ងៃទៅមួយថ្ងៃ គិតជាប្រចាំឆ្នាំ៖ ២០% មានន័យថាក្នុងឆ្នាំធម្មតា តម្លៃផ្លាស់ប្តូរក្នុងរង្វង់ប្រហែល ±២០%។ ភាពប្រែប្រួលខ្ពស់ជាង មានន័យថាចលនាធំជាងទាំងពីរទិស។';

  @override
  String get techNote =>
      'គណនាពីតម្លៃបិទប្រចាំថ្ងៃ។ សញ្ញាបច្ចេកទេសពណ៌នាអតីតកាល មិនមែនអនាគតទេ។';

  @override
  String portfolioAbove200(int above, int count) {
    return '$above ក្នុងចំណោម $count ការកាន់កាប់ ខ្ពស់ជាងមធ្យម ២០០ ថ្ងៃរបស់វា';
  }

  @override
  String get watchSignalsTitle => 'សញ្ញា';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · លក់លើសកម្រិត';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · ទិញលើសកម្រិត';
  }

  @override
  String get signalCrossedAbove => 'បានឡើងផុតមធ្យម ២០០ ថ្ងៃ';

  @override
  String get signalCrossedBelow => 'បានធ្លាក់ក្រោមមធ្យម ២០០ ថ្ងៃ';

  @override
  String get signalAlertsTitle => 'ការជូនដំណឹងសញ្ញាបច្ចេកទេស';

  @override
  String get signalAlertsSubtitle =>
      'ម្តងក្នុងមួយថ្ងៃ នៅពេលភាគហ៊ុនដែលអ្នកតាមដានក្លាយជាលក់លើសកម្រិត ឬទិញលើសកម្រិត (RSI) ឬតម្លៃរបស់វាឆ្លងកាត់មធ្យម ២០០ ថ្ងៃ។';

  @override
  String get signalAlertsNotification => 'សញ្ញាបច្ចេកទេស';

  @override
  String get glossaryPageTitle => 'សទ្ទានុក្រម';

  @override
  String get glossaryPageSubtitle =>
      'ការពន្យល់សាមញ្ញអំពីតួលេខនីមួយៗដែលកម្មវិធីបង្ហាញ ពី P/E ដល់ RSI';

  @override
  String get glossarySearchHint => 'ស្វែងរកក្នុងសទ្ទានុក្រម';

  @override
  String get portfolioCash => 'សាច់ប្រាក់';

  @override
  String get portfolioCashTitle => 'សមតុល្យសាច់ប្រាក់';

  @override
  String get portfolioCashHint =>
      'ប្រាក់ដែលមិនទាន់វិនិយោគនៅឈ្មួញកណ្តាលរបស់អ្នក តាមរូបិយប័ណ្ណ។ រាប់បញ្ចូលក្នុងតម្លៃសរុប និងការបែងចែក ប៉ុន្តែមិនរាប់ក្នុងទិន្នផលទេ។';

  @override
  String portfolioCashAmount(String currency) {
    return 'ចំនួនទឹកប្រាក់ ($currency)';
  }

  @override
  String get portfolioCashEdit => 'កំណត់សមតុល្យសាច់ប្រាក់';

  @override
  String get portfolioDividendsByMonth => 'តាមខែ';

  @override
  String get dividendsLegendReceived => 'បានទទួល';

  @override
  String get dividendsLegendExpected => 'រំពឹងទុក';

  @override
  String get portfolioDividendsExpected => 'រំពឹងទុកបន្ទាប់';

  @override
  String get portfolioDividendsExpectedNote =>
      'ប៉ាន់ស្មានពីកាលបរិច្ឆេទ និងចំនួនទឹកប្រាក់នៃការទូទាត់ដែលអ្នកបានកត់ត្រា; ក្រុមហ៊ុនអាចផ្លាស់ប្តូរ ឬរំលងវាបាន។';

  @override
  String portfolioDividendAround(String date) {
    return 'ប្រហែល $date';
  }
}
