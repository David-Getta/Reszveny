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
      'រក្សាទុកតែនៅលើឧបករណ៍នេះប៉ុណ្ណោះ។ ចំនួនសរុបត្រូវបានប្ដូរតាមអត្រាយោងរបស់ ECB ហើយតម្លៃអាចយឺត។';

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
}
