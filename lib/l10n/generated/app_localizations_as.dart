// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Assamese (`as`).
class AppLocalizationsAs extends AppLocalizations {
  AppLocalizationsAs([String locale = 'as']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'এটা শ্বেয়াৰৰ ফটো তোলক আৰু ইয়াৰ বিষয়ে সকলো জানক।';

  @override
  String get homeHint =>
      'শ্বেয়াৰ চাৰ্টিফিকেট, ব্ৰ\'কাৰেজ এপৰ স্ক্ৰীণ, বাতৰি কাকত বা কোম্পানীৰ ল\'গ\' – যিকোনো বস্তু যিয়ে এটা শ্বেয়াৰ চিনাক্ত কৰে।';

  @override
  String get takePhoto => 'ফটো তোলক';

  @override
  String get chooseFromGallery => 'গেলেৰীৰ পৰা বাছক';

  @override
  String get chooseImage => 'এখন ছবি বাছক';

  @override
  String get enterTickerManually => 'টিকাৰ নিজে লিখক';

  @override
  String get tickerInputLabel => 'টিকাৰ ছিম্বল';

  @override
  String get tickerInputHint => 'যেনে AAPL';

  @override
  String get lookUp => 'বিচাৰক';

  @override
  String demoModeBanner(String symbols) {
    return 'ডেমো ম\'ড – কোনো মাৰ্কেট ডেটা কী কনফিগাৰ কৰা হোৱা নাই। এইবোৰৰ বাবে নমুনা ডেটা উপলব্ধ: $symbols।';
  }

  @override
  String get recognizing => 'ছবিখন বিশ্লেষণ কৰি থকা হৈছে…';

  @override
  String get loadingData => 'ডেটা ল\'ড হৈ আছে…';

  @override
  String get noCandidatesTitle => 'কোনো শ্বেয়াৰ চিনাক্ত কৰা নগ\'ল';

  @override
  String get noCandidatesBody =>
      'এই ছবিখনত আমি কোনো শ্বেয়াৰ চিনাক্ত কৰিব নোৱাৰিলোঁ। অধিক স্পষ্ট ফটো তোলক, বা টিকাৰ নিজে লিখক।';

  @override
  String get whatWeSaw => 'আমি কি দেখিলোঁ';

  @override
  String get chooseCandidateTitle => 'আপুনি কোনটো শ্বেয়াৰৰ কথা কৈছিল?';

  @override
  String confidencePercent(int percent) {
    return '$percent% নিশ্চয়তা';
  }

  @override
  String get settings => 'ছেটিংছ';

  @override
  String get language => 'ভাষা';

  @override
  String get systemLanguage => 'ছিষ্টেম ডিফ\'ল্ট';

  @override
  String get about => 'এপৰ বিষয়ে';

  @override
  String get disclaimer =>
      'এই এপে কেৱল তথ্য প্ৰদান কৰে আৰু ই বিনিয়োগৰ পৰামৰ্শ নহয়। ডেটা পলমকৈ অহা বা ভুল হ\'ব পাৰে।';

  @override
  String dataSource(String source) {
    return 'ডেটাৰ উৎস: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'চিনাক্তকৰণ: $source';
  }

  @override
  String get retry => 'পুনৰ চেষ্টা কৰক';

  @override
  String get cancel => 'বাতিল কৰক';

  @override
  String get ok => 'ঠিক আছে';

  @override
  String get close => 'বন্ধ কৰক';

  @override
  String get errorGeneric => 'কিবা এটা ভুল হ\'ল।';

  @override
  String get errorSectionUnavailable => 'এই অংশটো ল\'ড কৰিব পৰা নগ\'ল।';

  @override
  String get notAvailable => 'উপলব্ধ নহয়';

  @override
  String get sectionIdentity => 'চিনাক্তকৰণ';

  @override
  String get sectionPrice => 'দাম';

  @override
  String get sectionValuation => 'মূল্যায়ন';

  @override
  String get sectionFinancials => 'বিত্তীয় তথ্য';

  @override
  String get sectionDividend => 'লভ্যাংশ';

  @override
  String get sectionProfile => 'কোম্পানীৰ প্ৰ\'ফাইল';

  @override
  String get sectionAnalysts => 'বিশ্লেষকৰ ৰেটিং';

  @override
  String get sectionNews => 'বাতৰি';

  @override
  String get sectionRecognition => 'চিনাক্তকৰণৰ বিৱৰণ';

  @override
  String get labelSymbol => 'টিকাৰ';

  @override
  String get labelExchange => 'এক্সচেঞ্জ';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'মুদ্ৰা';

  @override
  String get labelCountry => 'দেশ';

  @override
  String get labelIndustry => 'উদ্যোগ';

  @override
  String get labelSector => 'খণ্ড';

  @override
  String get labelWebsite => 'ৱেবছাইট';

  @override
  String get labelIpoDate => 'IPO তাৰিখ';

  @override
  String get labelMarketCap => 'মাৰ্কেট কেপ';

  @override
  String get labelSharesOutstanding => 'মুঠ প্ৰচলিত শ্বেয়াৰ';

  @override
  String get labelEmployees => 'কৰ্মচাৰী';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'মুখ্য কাৰ্যালয়';

  @override
  String get labelDescription => 'বিৱৰণ';

  @override
  String get labelLastPrice => 'শেষ দাম';

  @override
  String get labelChange => 'পৰিৱৰ্তন';

  @override
  String get labelOpen => 'অ\'পেন';

  @override
  String get labelDayHigh => 'দিনৰ সৰ্বোচ্চ';

  @override
  String get labelDayLow => 'দিনৰ সৰ্বনিম্ন';

  @override
  String get labelPreviousClose => 'পূৰ্বৰ ক্ল\'জ';

  @override
  String get labelWeek52High => '52-সপ্তাহৰ সৰ্বোচ্চ';

  @override
  String get labelWeek52Low => '52-সপ্তাহৰ সৰ্বনিম্ন';

  @override
  String get labelAverageVolume10d => 'গড় ভলিউম (10 দিন)';

  @override
  String updatedAt(String time) {
    return 'আপডেট $time';
  }

  @override
  String get labelPeTrailing => 'P/E (ট্ৰেইলিং)';

  @override
  String get labelPeForward => 'P/E (ফৰৱাৰ্ড)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / ফ্ৰী কেশ্ব ফ্ল\'';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'বিটা';

  @override
  String get labelRevenueTtm => 'ৰাজহ (TTM)';

  @override
  String get labelNetIncomeTtm => 'নিট আয় (TTM)';

  @override
  String get labelGrossMargin => 'গ্ৰছ মাৰ্জিন';

  @override
  String get labelOperatingMargin => 'অপাৰেটিং মাৰ্জিন';

  @override
  String get labelNetMargin => 'নিট মাৰ্জিন';

  @override
  String get labelRoe => 'ইকুইটিত ৰিটাৰ্ণ';

  @override
  String get labelRoa => 'সম্পত্তিত ৰিটাৰ্ণ';

  @override
  String get labelDebtToEquity => 'ঋণ / ইকুইটি';

  @override
  String get labelCurrentRatio => 'কাৰেণ্ট ৰেছিঅ\'';

  @override
  String get labelRevenueGrowth => 'ৰাজহ বৃদ্ধি (YoY)';

  @override
  String get labelEpsGrowth => 'EPS বৃদ্ধি (YoY)';

  @override
  String get labelDividendYield => 'লভ্যাংশ ইল্ড';

  @override
  String get labelDividendPerShare => 'প্ৰতি শ্বেয়াৰত লভ্যাংশ';

  @override
  String get labelPayoutRatio => 'পেআউট অনুপাত';

  @override
  String get labelConsensus => 'সৰ্বসন্মতি';

  @override
  String get ratingStrongBuy => 'দৃঢ় ক্ৰয়';

  @override
  String get ratingBuy => 'ক্ৰয়';

  @override
  String get ratingHold => 'হ\'ল্ড';

  @override
  String get ratingSell => 'বিক্ৰী';

  @override
  String get ratingStrongSell => 'দৃঢ় বিক্ৰী';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count জন বিশ্লেষক',
      one: '1 জন বিশ্লেষক',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'সময়সীমা: $period';
  }

  @override
  String get noNews => 'শেহতীয়া কোনো বাতৰি নাই।';

  @override
  String get openArticle => 'প্ৰবন্ধটো খোলক';

  @override
  String get openLinkFailed => 'লিংকটো খুলিব পৰা নগ\'ল।';

  @override
  String get recognitionSummary => 'সাৰাংশ';

  @override
  String get recognitionEvidence => 'আমি কিয় এনে ভাবোঁ';

  @override
  String get recognitionRawText => 'ছবিৰ পৰা পঢ়া পাঠ';

  @override
  String get errMissingAnthropicKey =>
      'ছবি চিনাক্তকৰণ কনফিগাৰ কৰা হোৱা নাই (ANTHROPIC_API_KEY নাই)। টিকাৰ নিজে লিখক।';

  @override
  String get errRecognitionUnreachable =>
      'চিনাক্তকৰণ সেৱাৰ সৈতে সংযোগ কৰিব পৰা নগ\'ল। আপোনাৰ ইণ্টাৰনেট সংযোগ পৰীক্ষা কৰক।';

  @override
  String errRecognitionHttp(String status) {
    return 'চিনাক্তকৰণ সেৱাই এটা ত্ৰুটি ঘূৰাই পঠিয়ালে (HTTP $status)।';
  }

  @override
  String get errRecognitionRefused =>
      'চিনাক্তকৰণ সেৱাই এই ছবিখন প্ৰচেছ কৰিব নোৱাৰিলে।';

  @override
  String get errRecognitionTruncated =>
      'চিনাক্তকৰণৰ উত্তৰ আধাতে কাটি গ\'ল। অনুগ্ৰহ কৰি পুনৰ চেষ্টা কৰক।';

  @override
  String get errRecognitionBadResponse =>
      'চিনাক্তকৰণ সেৱাৰ পৰা অপ্ৰত্যাশিত উত্তৰ।';

  @override
  String get errRecognitionEmpty =>
      'চিনাক্তকৰণ সেৱাই এটা খালী উত্তৰ ঘূৰাই পঠিয়ালে।';

  @override
  String get errMissingFinnhubKey =>
      'মাৰ্কেট ডেটা কনফিগাৰ কৰা হোৱা নাই (FINNHUB_API_KEY নাই)।';

  @override
  String get errMarketUnreachable =>
      'মাৰ্কেট ডেটা সেৱাৰ সৈতে সংযোগ কৰিব পৰা নগ\'ল। আপোনাৰ ইণ্টাৰনেট সংযোগ পৰীক্ষা কৰক।';

  @override
  String get errMarketRateLimited =>
      'মাৰ্কেট ডেটা সেৱালৈ অত্যধিক অনুৰোধ পঠোৱা হৈছে। অনুগ্ৰহ কৰি এক মিনিট অপেক্ষা কৰক।';

  @override
  String errMarketHttp(String status) {
    return 'মাৰ্কেট ডেটা সেৱাই এটা ত্ৰুটি ঘূৰাই পঠিয়ালে (HTTP $status)।';
  }

  @override
  String get errMarketBadResponse =>
      'মাৰ্কেট ডেটা সেৱাৰ পৰা অপ্ৰত্যাশিত উত্তৰ।';

  @override
  String errNoQuote(String symbol) {
    return '$symbolৰ বাবে কোনো দামৰ ডেটা পোৱা নগ\'ল।';
  }

  @override
  String errNoProfile(String symbol) {
    return '$symbolৰ বাবে কোনো কোম্পানী প্ৰ\'ফাইল পোৱা নগ\'ল।';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'ডেমো ম\'ডত কেৱল $symbols সমৰ্থিত। লাইভ ডেটাৰ বাবে এটা FINNHUB_API_KEY যোগ কৰক।';
  }

  @override
  String errUnknown(String detail) {
    return 'কিবা এটা ভুল হ\'ল: $detail';
  }

  @override
  String get newSearch => 'নতুন সন্ধান';

  @override
  String get recentSearches => 'শেহতীয়া';

  @override
  String get noRecentSearches => 'এতিয়ালৈকে কোনো শেহতীয়া সন্ধান নাই।';

  @override
  String get clearRecent => 'শেহতীয়া মচক';

  @override
  String get greeting => 'আজি কোনটো শ্বেয়াৰ চাম?';

  @override
  String get searchHint => 'টিকাৰ বা কোম্পানীৰ নাম';

  @override
  String get attachImage => 'ছবি সংলগ্ন কৰক';

  @override
  String get searchResultsTitle => 'সন্ধানৰ ফলাফল';

  @override
  String errNoResults(String query) {
    return '“$query”ৰ বাবে কোনো শ্বেয়াৰ পোৱা নগ\'ল।';
  }

  @override
  String get quickBarHint => 'টিকাৰ বা কোম্পানীৰ নাম টাইপ কৰক…';

  @override
  String get openFullWindow => 'ৱিণ্ড\' খোলক';

  @override
  String hotkeyHint(String shortcut) {
    return 'যিকোনো ঠাইৰ পৰা WhatStock খুলিবলৈ $shortcut টিপক।';
  }

  @override
  String get trayOpen => 'WhatStock খোলক';

  @override
  String get trayQuickSearch => 'দ্ৰুত সন্ধান';

  @override
  String get trayQuit => 'প্ৰস্থান কৰক';

  @override
  String get appearance => 'ৰূপ';

  @override
  String get themeSystem => 'ছিষ্টেম';

  @override
  String get themeDark => 'গাঢ়';

  @override
  String get themeLight => 'পাতল';

  @override
  String get back => 'উভতি যাওক';

  @override
  String get aiSectionTitle => 'AI বিশ্লেষণ';

  @override
  String get aiIntro =>
      'AI-এ লিখা এটা বিতং পৰ্যালোচনা: শেহতীয়া বাতৰিৰ সাৰাংশ, ব্যৱসায়, শক্তিৰ দিশ, বিপদাশংকা আৰু লুকাই থকা কাৰক, মূল্যায়ন, মনস্তাত্ত্বিক, সামাজিক, কাৰিকৰী আৰু মেক্ৰ\' দৃষ্টিকোণৰ পৰা পৰিস্থিতিসহ দামৰ পূৰ্বাভাস, আৰু কি কি বিষয়ত চকু ৰাখিব লাগে।';

  @override
  String get aiGenerate => 'বিশ্লেষণ সৃষ্টি কৰক';

  @override
  String get aiRegenerate => 'পুনৰ সৃষ্টি কৰক';

  @override
  String get aiGenerating =>
      'বিশ্লেষণ প্ৰস্তুত কৰি থকা হৈছে… ইয়াত এক-দুই মিনিট লাগিব পাৰে।';

  @override
  String get aiSources => 'উৎস';

  @override
  String aiGeneratedAt(String time) {
    return 'সৃষ্টি $time';
  }

  @override
  String get aiDisclaimer =>
      'ৰাজহুৱা ডেটা আৰু শেহতীয়া বাতৰিৰ ভিত্তিত AI-এ প্ৰস্তুত কৰা বিশ্লেষণ। ইয়াত ভুল থাকিব পাৰে বা ই পুৰণি হ\'ব পাৰে, আৰু ই বিনিয়োগৰ পৰামৰ্শ নহয়।';

  @override
  String get errAiNotConfigured =>
      'AI বিশ্লেষণ কনফিগাৰ কৰা হোৱা নাই (ANTHROPIC_API_KEY নাই)।';

  @override
  String get errAiUnreachable =>
      'AI সেৱাৰ সৈতে সংযোগ কৰিব পৰা নগ\'ল। আপোনাৰ ইণ্টাৰনেট সংযোগ পৰীক্ষা কৰক।';

  @override
  String errAiHttp(String status) {
    return 'AI সেৱাই এটা ত্ৰুটি ঘূৰাই পঠিয়ালে (HTTP $status)।';
  }

  @override
  String get errAiRefused =>
      'AI সেৱাই এই শ্বেয়াৰটো বিশ্লেষণ কৰিবলৈ অস্বীকাৰ কৰিলে।';

  @override
  String get errAiBadResponse => 'AI সেৱাৰ পৰা অপ্ৰত্যাশিত উত্তৰ।';

  @override
  String get sectionChart => 'দামৰ চাৰ্ট';

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
      'বৰ্তমানৰ ডেটা উৎসৰ পৰা দামৰ ইতিহাস উপলব্ধ নহয়।';

  @override
  String get sectionStatements => 'বিত্তীয় বিবৃতি (বাৰ্ষিক)';

  @override
  String get labelFiscalYear => 'বিত্তীয় বৰ্ষ';

  @override
  String get labelRevenue => 'ৰাজহ';

  @override
  String get labelNetIncome => 'নিট আয়';

  @override
  String get labelTotalAssets => 'মুঠ সম্পত্তি';

  @override
  String get labelTotalLiabilities => 'মুঠ দায়বদ্ধতা';

  @override
  String get labelEquity => 'শ্বেয়াৰধাৰকৰ ইকুইটি';

  @override
  String get labelOperatingCashFlow => 'অপাৰেটিং কেশ্ব ফ্ল\'';

  @override
  String get statementsUnavailable =>
      'এই শ্বেয়াৰটোৰ বাবে প্ৰকাশিত বিত্তীয় বিবৃতি উপলব্ধ নহয়।';

  @override
  String get launchAtLogin => 'লগইনৰ সময়ত আৰম্ভ কৰক';

  @override
  String get hotkeyLabel => 'গ্ল\'বেল শ্বৰ্টকাট';

  @override
  String get hotkeyRecordHint => 'ইয়াত ক্লিক কৰক, তাৰপিছত নতুন কী সংযোজন টিপক';

  @override
  String get hotkeyReset => 'ডিফ\'ল্টলৈ ৰিছেট কৰক';

  @override
  String get pasteImage => 'ক্লিপব\'ৰ্ডৰ পৰা ছবি পেষ্ট কৰক';

  @override
  String get errClipboardNoImage => 'ক্লিপব\'ৰ্ডত কোনো ছবি নাই।';

  @override
  String get favorites => 'প্ৰিয়';

  @override
  String get addToFavorites => 'প্ৰিয়ত যোগ কৰক';

  @override
  String get removeFromFavorites => 'প্ৰিয়ৰ পৰা আঁতৰাওক';

  @override
  String get noFavorites =>
      'এতিয়ালৈকে কোনো প্ৰিয় নাই। যোগ কৰিবলৈ কোনো শ্বেয়াৰৰ তৰাটোত টিপক।';

  @override
  String get displayCurrency => 'প্ৰদৰ্শনৰ মুদ্ৰা';

  @override
  String get displayCurrencyNone => 'কেৱল শ্বেয়াৰৰ নিজৰ মুদ্ৰা';

  @override
  String labelConverted(String currency) {
    return '≈ $currencyত';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'হাৰ: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'আপডেট';

  @override
  String currentVersion(String version) {
    return 'সংস্কৰণ $version';
  }

  @override
  String get autoUpdate => 'আপডেট স্বয়ংক্ৰিয়ভাৱে ইনষ্টল কৰক';

  @override
  String get checkForUpdates => 'আপডেট পৰীক্ষা কৰক';

  @override
  String get updateChecking => 'আপডেট পৰীক্ষা কৰি থকা হৈছে…';

  @override
  String get updateUpToDate => 'আপুনি শেহতীয়া সংস্কৰণ ব্যৱহাৰ কৰি আছে।';

  @override
  String updateAvailable(String version) {
    return 'সংস্কৰণ $version উপলব্ধ।';
  }

  @override
  String get updateDownloading => 'নেপথ্যত আপডেট ডাউনল\'ড হৈ আছে…';

  @override
  String get updateDownloaded => 'আপডেট সাজু। ইনষ্টল কৰিবলৈ পুনৰাৰম্ভ কৰক।';

  @override
  String get updateNow => 'আপডেট কৰক';

  @override
  String get restartNow => 'পুনৰাৰম্ভ কৰক';

  @override
  String get updatesViaStore =>
      'আপডেটসমূহ এপ ষ্ট\'ৰৰ জৰিয়তে স্বয়ংক্ৰিয়ভাৱে আহে।';

  @override
  String get updateCheckFailed => 'আপডেট পৰীক্ষা কৰিব পৰা নগ\'ল।';

  @override
  String get subscription => 'ছাবস্ক্ৰিপশ্বন';

  @override
  String get planTrial => 'ট্ৰায়েল';

  @override
  String get planNormal => 'সাধাৰণ';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'কোনো সক্ৰিয় প্লান নাই';

  @override
  String planAnalysesPerMonth(int count) {
    return 'প্ৰতি মাহে $countটা বিশ্লেষণ';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$countটা বিশ্লেষণৰ সৈতে $days দিনৰ বিনামূলীয়া ট্ৰায়েল';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'ট্ৰায়েলৰ $days দিন বাকী',
      one: 'ট্ৰায়েলৰ 1 দিন বাকী',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'আপোনাৰ বিনামূলীয়া ট্ৰায়েল শেষ হ\'ল। বিশ্লেষণ অব্যাহত ৰাখিবলৈ এটা প্লান বাছক।';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'এই সময়সীমাত $totalটাৰ ভিতৰত $remainingটা বিশ্লেষণ বাকী';
  }

  @override
  String extraCredits(int count) {
    return '$countটা অতিৰিক্ত বিশ্লেষণ';
  }

  @override
  String renewsOn(String date) {
    return '$dateত নবীকৰণ';
  }

  @override
  String get choosePlan => 'এটা প্লান বাছক';

  @override
  String get currentPlan => 'বৰ্তমানৰ প্লান';

  @override
  String get subscribe => 'ছাবস্ক্ৰাইব কৰক';

  @override
  String get perMonth => '/ মাহ';

  @override
  String get extraPacksTitle => 'অধিক লাগে? অতিৰিক্ত বিশ্লেষণ কিনক';

  @override
  String get extraPacksHint =>
      'অতিৰিক্ত বিশ্লেষণৰ ম্যাদ কেতিয়াও উকলি নাযায় আৰু আপোনাৰ মাহেকীয়া কোটাৰ পিছত ব্যৱহাৰ হয়।';

  @override
  String get buy => 'কিনক';

  @override
  String get restorePurchases => 'ক্ৰয় পুনৰুদ্ধাৰ কৰক';

  @override
  String get manageSubscription => 'ছাবস্ক্ৰিপশ্বন পৰিচালনা কৰক';

  @override
  String get purchaseSuccess => 'ধন্যবাদ! আপোনাৰ ক্ৰয় সক্ৰিয় হ\'ল।';

  @override
  String get purchasePending => 'ক্ৰয় প্ৰক্ৰিয়াধীন…';

  @override
  String get purchaseFailed => 'ক্ৰয় সম্পূৰ্ণ কৰিব পৰা নগ\'ল।';

  @override
  String get purchaseCanceled => 'ক্ৰয় বাতিল কৰা হ\'ল।';

  @override
  String get billingUnavailable =>
      'এই প্লেটফৰ্মত ক্ৰয় এতিয়াও উপলব্ধ নহয়। আপোনাৰ ফোন বা Macত ছাবস্ক্ৰাইব কৰক; আপোনাৰ প্লানে প্ৰতিটো ডিভাইচত কাম কৰিব।';

  @override
  String get errQuotaExceeded =>
      'এই সময়সীমাৰ বাবে আপোনাৰ কোনো বিশ্লেষণ বাকী নাই। আপোনাৰ প্লান আপগ্ৰেড কৰক বা অতিৰিক্ত বিশ্লেষণ কিনক।';

  @override
  String get errTrialExpired =>
      'আপোনাৰ বিনামূলীয়া ট্ৰায়েল শেষ হ\'ল। অব্যাহত ৰাখিবলৈ এটা প্লান বাছক।';

  @override
  String get errNoPlan => 'AI বিশ্লেষণৰ বাবে এটা সক্ৰিয় প্লান প্ৰয়োজন।';

  @override
  String get viewPlans => 'প্লানসমূহ চাওক';

  @override
  String get usageTitle => 'ব্যৱহাৰ';

  @override
  String get demoPurchaseNote =>
      'ডেমো বিলিং: এই প্লেটফৰ্মত ক্ৰয় ছিমুলেট কৰা হয়।';

  @override
  String get mostPopular => 'আটাইতকৈ জনপ্ৰিয়';

  @override
  String get bestValue => 'সৰ্বোত্তম মূল্য';

  @override
  String get planFeaturesCommon =>
      'ফটো চিনাক্তকৰণ, লাইভ ডেটা, চাৰ্ট, প্ৰিয় আৰু সকলো 120টা ভাষা প্ৰতিটো প্লানত অন্তৰ্ভুক্ত। কোটা AI বিশ্লেষণৰ বাবে প্ৰযোজ্য।';

  @override
  String get searchLanguages => 'ভাষা বিচাৰক…';

  @override
  String get noLanguageMatch => 'কোনো ভাষা মিল নাখালে।';

  @override
  String get aiSettings => 'AI বিশ্লেষণ';

  @override
  String get aiLength => 'দৈৰ্ঘ্য';

  @override
  String get aiDepthBrief => 'চমু';

  @override
  String get aiDepthStandard => 'মানক';

  @override
  String get aiDepthDeep => 'বিতং';

  @override
  String get aiDepthBriefDesc => 'মূল কথাখিনি, দ্ৰুতভাৱে।';

  @override
  String get aiDepthStandardDesc => 'প্ৰতিটো অংশৰ সৈতে সম্পূৰ্ণ প্ৰতিবেদন।';

  @override
  String get aiDepthDeepDesc =>
      'অধিক ৱেব সন্ধান, সমকক্ষ কোম্পানীৰ সৈতে তুলনা আৰু গভীৰ বিৱৰণ।';

  @override
  String aiDepthWords(String min, String max) {
    return 'প্ৰায় $min–$maxটা শব্দ';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটা বিশ্লেষণ খৰচ হয়',
      one: '1টা বিশ্লেষণ খৰচ হয়',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'পাঠকৰ স্তৰ';

  @override
  String get aiReaderBeginner => 'নতুন';

  @override
  String get aiReaderExperienced => 'অভিজ্ঞ';

  @override
  String get aiReaderBeginnerDesc =>
      'সহজ ভাষা; প্ৰতিটো কাৰিকৰী শব্দ বুজাই দিয়া হয়।';

  @override
  String get aiReaderExperiencedDesc => 'প্ৰচলিত বিত্তীয় পৰিভাষাৰে ঘন লেখা।';

  @override
  String get aiCounterArgument => 'আটাইতকৈ শক্তিশালী প্ৰতিযুক্তি';

  @override
  String get aiCounterArgumentDesc =>
      'সাৰাংশ সদায় নিজৰ সিদ্ধান্তৰ বিপক্ষে আটাইতকৈ শক্তিশালী যুক্তিৰে শেষ হয়।';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'আপোনাৰ প্লানত প্ৰতিটো বিশ্লেষণত সৰ্বাধিক $countটা ৱেব সন্ধান',
      one: 'আপোনাৰ প্লানত প্ৰতিটো বিশ্লেষণত সৰ্বাধিক 1টা ৱেব সন্ধান',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'প্লান অনুসৰি মানক দৈৰ্ঘ্য: সাধাৰণ $normal, Pro $pro, Max $max, Ultra $ultra। চমুত 2টা কম, বিতঙত 2টা বেছি।';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'সৰ্বাধিক $countটা ৱেব সন্ধান',
      one: 'সৰ্বাধিক 1টা ৱেব সন্ধান',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'প্ৰতিটো বিশ্লেষণত $countটা ৱেব সন্ধান',
      one: 'প্ৰতিটো বিশ্লেষণত 1টা ৱেব সন্ধান',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'এই দৈৰ্ঘ্যৰ বাবে $neededটা বিশ্লেষণ লাগে, কিন্তু মাত্ৰ $leftটা বাকী আছে। ছেটিংছত চুটি দৈৰ্ঘ্য বাছক বা অধিক বিশ্লেষণ লওক।';
  }

  @override
  String get outlookMarketMood => 'বজাৰৰ মনোভাৱ';

  @override
  String get moodVeryPessimistic => 'অতি নিৰাশাবাদী';

  @override
  String get moodPessimistic => 'নিৰাশাবাদী';

  @override
  String get moodNeutral => 'নিৰপেক্ষ';

  @override
  String get moodOptimistic => 'আশাবাদী';

  @override
  String get moodVeryOptimistic => 'অতি আশাবাদী';

  @override
  String get scenarioBull => 'তেজী পৰিস্থিতি';

  @override
  String get scenarioBase => 'মূল পৰিস্থিতি';

  @override
  String get scenarioBear => 'মন্দা পৰিস্থিতি';

  @override
  String outlookCurrentPrice(String price) {
    return 'বৰ্তমানৰ দাম: $price';
  }

  @override
  String get outlookKeyLevels => 'মুখ্য স্তৰ';

  @override
  String get keyLevelSupport => 'ছাপ\'ৰ্ট';

  @override
  String get keyLevelResistance => 'ৰেজিষ্টেন্স';

  @override
  String get keyLevelAnchor => 'এংকৰ স্তৰ';

  @override
  String get upcomingEvents => 'আগন্তুক ঘটনা';

  @override
  String get outlookChartNote =>
      'আনুমানিক পৰিসৰ; সম্ভাৱনাসমূহ মোটামুটি অনুমান, ভৱিষ্যদ্বাণী নহয়।';

  @override
  String get accountTitle => 'একাউণ্ট';

  @override
  String get signIn => 'ছাইন ইন কৰক';

  @override
  String get signOut => 'ছাইন আউট কৰক';

  @override
  String get notSignedIn => 'ছাইন ইন কৰা নাই';

  @override
  String get accountBenefit =>
      'ছাইন ইন কৰক, যাতে আপোনাৰ ছাবস্ক্ৰিপশ্বনে আপোনাৰ সকলো ডিভাইচত কাম কৰে।';

  @override
  String get accountSyncedNote =>
      'আপোনাৰ ছাবস্ক্ৰিপশ্বন আৰু বাকী থকা বিশ্লেষণ প্ৰতিটো ডিভাইচত একে থাকে।';

  @override
  String get signInTitle => 'WhatStockত ছাইন ইন কৰক';

  @override
  String get emailLabel => 'ইমেইল ঠিকনা';

  @override
  String get continueWithEmail => 'ইমেইলৰ সৈতে অব্যাহত ৰাখক';

  @override
  String codeSentTo(String email) {
    return 'আমি $emailলৈ এটা 6-অংকৰ ক\'ড পঠিয়াইছোঁ। ই 10 মিনিটৰ বাবে বৈধ।';
  }

  @override
  String get codeLabel => 'ছাইন-ইন ক\'ড';

  @override
  String get resendCode => 'নতুন ক\'ড পঠিয়াওক';

  @override
  String get useDifferentEmail => 'অন্য ইমেইল ব্যৱহাৰ কৰক';

  @override
  String get errInvalidCode => 'ক\'ডটো ভুল বা ইয়াৰ ম্যাদ উকলি গৈছে।';

  @override
  String get errInvalidEmail => 'অনুগ্ৰহ কৰি এটা বৈধ ইমেইল ঠিকনা লিখক।';

  @override
  String get errSignInFailed =>
      'ছাইন ইন বিফল হ\'ল। আপোনাৰ সংযোগ পৰীক্ষা কৰি পুনৰ চেষ্টা কৰক।';

  @override
  String get checkoutWaiting =>
      'আপোনাৰ ব্ৰাউজাৰত পৰিশোধ সম্পূৰ্ণ কৰক। সম্পূৰ্ণ হ\'লে এপটো স্বয়ংক্ৰিয়ভাৱে আপডেট হ\'ব।';

  @override
  String get paymentViaStripe =>
      'Stripeৰ জৰিয়তে আপোনাৰ ব্ৰাউজাৰত সুৰক্ষিত পৰিশোধ। যিকোনো সময়তে বাতিল কৰিব পাৰে।';

  @override
  String get paymentViaStore =>
      'আপোনাৰ App Store বা Google Play একাউণ্টৰ জৰিয়তে বিল কৰা হয়। ষ্ট\'ৰৰ ছেটিংছত যিকোনো সময়তে বাতিল কৰিব পাৰে।';

  @override
  String get keySpace => 'স্পেচ';

  @override
  String get doubleOptionTitle => 'Option দুবাৰ টিপক';

  @override
  String get doubleOptionSubtitle =>
      'Option কীটো সোনকালে দুবাৰ টিপিলেও WhatStock খোল খায়।';

  @override
  String get doubleOptionPermission =>
      'আন এপতো এইটো কাম কৰিবলৈ, ছিষ্টেম ছেটিংছ → গোপনীয়তা আৰু সুৰক্ষা → ইনপুট মনিটৰিংত WhatStockক অনুমতি দিয়ক, তাৰপিছত এপটো পুনৰ খোলক।';

  @override
  String get openSystemSettings => 'ছিষ্টেম ছেটিংছ খোলক';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'যিকোনো ঠাইৰ পৰা WhatStock খুলিবলৈ $shortcut টিপক বা Option দুবাৰ টিপক।';
  }

  @override
  String get scenarioMostLikely => 'আটাইতকৈ সম্ভাৱ্য';

  @override
  String get longTermToday => 'আজি';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years বছৰ',
      one: '1 বছৰ',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return 'বছৰি $range';
  }

  @override
  String longTermLikely(String price) {
    return 'আটাইতকৈ সম্ভাৱ্য $price';
  }

  @override
  String get confidenceLow => 'কম নিশ্চয়তা';

  @override
  String get confidenceMedium => 'মধ্যম নিশ্চয়তা';

  @override
  String get confidenceHigh => 'উচ্চ নিশ্চয়তা';

  @override
  String get longTermNote =>
      'দীৰ্ঘম্যাদী পৰিসৰসমূহ উল্লিখিত অনুমানৰ ওপৰত আধাৰিত আৰু সময়ৰ লগে লগে বহল হয়। দামত লভ্যাংশ অন্তৰ্ভুক্ত নহয়। মোটামুটি অনুমান, ভৱিষ্যদ্বাণী নহয়।';

  @override
  String get portfolio => 'প\'ৰ্টফ\'লিঅ\'';

  @override
  String get portfolioEmpty =>
      'ইয়াত এতিয়াও একো নাই। আপোনাৰ হাতত থকা শ্বেয়াৰ অনুসৰণ কৰিবলৈ এটা শ্বেয়াৰ খোলক আৰু “প\'ৰ্টফ\'লিঅ\'ত যোগ কৰক” টিপক।';

  @override
  String get portfolioLocalNote =>
      'কেৱল এই ডিভাইচতে সংৰক্ষিত। মুঠ হিচাপ ECBৰ ৰেফাৰেন্স হাৰত ৰূপান্তৰ কৰা হয়; দাম পলমকৈ আহিব পাৰে।';

  @override
  String get addToPortfolio => 'প\'ৰ্টফ\'লিঅ\'ত যোগ কৰক';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol যোগ কৰক';
  }

  @override
  String get portfolioQuantity => 'শ্বেয়াৰৰ সংখ্যা';

  @override
  String portfolioBuyPrice(String currency) {
    return 'প্ৰতি শ্বেয়াৰৰ দাম ($currency)';
  }

  @override
  String get portfolioBuyDate => 'ক্ৰয়ৰ তাৰিখ';

  @override
  String get portfolioAdd => 'যোগ কৰক';

  @override
  String get portfolioInvalidNumber => 'শূন্যতকৈ ডাঙৰ এটা সংখ্যা লিখক।';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol আপোনাৰ প\'ৰ্টফ\'লিঅ\'ত যোগ কৰা হ\'ল।';
  }

  @override
  String get portfolioTotalValue => 'মুঠ মূল্য';

  @override
  String get portfolioToday => 'আজি';

  @override
  String get portfolioGainLoss => 'লাভ/লোকচান';

  @override
  String get portfolioInvested => 'বিনিয়োগ কৰা';

  @override
  String get portfolioAllocation => 'বিতৰণ';

  @override
  String get portfolioPositions => 'পজিচন';

  @override
  String portfolioAvgCost(String price) {
    return 'গড় খৰচ $price';
  }

  @override
  String get portfolioYourPosition => 'আপোনাৰ পজিচন';

  @override
  String get portfolioPurchases => 'ক্ৰয়সমূহ';

  @override
  String get portfolioRemove => 'আঁতৰাওক';

  @override
  String get portfolioExcluded =>
      'দাম বা বিনিময় হাৰ নথকা পজিচনসমূহ মুঠ হিচাপত ধৰা হোৱা নাই।';

  @override
  String get priceAlerts => 'দামৰ সতৰ্কবাণী';

  @override
  String get setPriceAlert => 'দামৰ সতৰ্কবাণী ছেট কৰক';

  @override
  String alertDialogTitle(String symbol) {
    return 'দামৰ সতৰ্কবাণী · $symbol';
  }

  @override
  String get alertKindAbove => 'ওপৰলৈ উঠিলে';

  @override
  String get alertKindBelow => 'তললৈ নামিলে';

  @override
  String get alertKindMove => 'এদিনত বহুত লৰচৰ হ\'লে';

  @override
  String alertTargetPrice(String currency) {
    return 'দাম ($currency)';
  }

  @override
  String get alertMovePercent => 'দৈনিক পৰিৱৰ্তন (%)';

  @override
  String get alertAlreadyMet => 'দাম ইতিমধ্যে এই স্তৰ পাৰ হৈছে।';

  @override
  String get alertSave => 'সতৰ্কবাণী ছেট কৰক';

  @override
  String alertCreated(String symbol) {
    return '$symbolৰ বাবে সতৰ্কবাণী ছেট কৰা হ\'ল।';
  }

  @override
  String get alertsEmpty =>
      'এতিয়ালৈকে কোনো দামৰ সতৰ্কবাণী নাই। এটা শ্বেয়াৰ খোলক আৰু ছেট কৰিবলৈ ঘণ্টাটো টিপক।';

  @override
  String get alertsNote =>
      'WhatStock চলি থকা সময়ত প্ৰতি 5 মিনিটত সতৰ্কবাণী পৰীক্ষা কৰা হয়। কম্পিউটাৰত ই মেনু বাৰ বা ট্ৰেত চলি থাকে; ফোনত বৰ্তমান এপ খোলা থাকিলেহে সতৰ্কবাণী আহে।';

  @override
  String alertDescAbove(String price) {
    return '$priceৰ ওপৰত';
  }

  @override
  String alertDescBelow(String price) {
    return '$priceৰ তলত';
  }

  @override
  String alertDescMove(String percent) {
    return 'দৈনিক পৰিৱৰ্তন ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return '$dateত $priceত সক্ৰিয় হৈছিল';
  }

  @override
  String get alertRearm => 'পুনৰ সক্ৰিয় কৰক';

  @override
  String get alertDelete => 'মচক';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol $priceৰ ওপৰলৈ উঠিল';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol $priceৰ তললৈ নামিল';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol আজি $percent লৰচৰ হ\'ল';
  }

  @override
  String alertHitBody(String price) {
    return 'বৰ্তমানৰ দাম: $price';
  }

  @override
  String get alertOpen => 'খোলক';

  @override
  String get keepInTrayTitle => 'ৱিণ্ড\' বন্ধ কৰিলেও চলি থাকক';

  @override
  String get keepInTraySubtitle =>
      'WhatStock মেনু বাৰ বা ট্ৰেত থাকে, যাতে শ্বৰ্টকাট আৰু দামৰ সতৰ্কবাণীয়ে কাম কৰি থাকে।';

  @override
  String get termsOfUse => 'ব্যৱহাৰৰ চৰ্তাৱলী';

  @override
  String get privacyPolicy => 'গোপনীয়তা নীতি';

  @override
  String get subscriptionLegal =>
      'আপুনি বাতিল নকৰালৈকে ছাবস্ক্ৰিপশ্বন প্ৰতি মাহে স্বয়ংক্ৰিয়ভাৱে নবীকৰণ হয়। ছাবস্ক্ৰাইব কৰি আপুনি ব্যৱহাৰৰ চৰ্তাৱলী আৰু গোপনীয়তা নীতি গ্ৰহণ কৰে।';

  @override
  String get deleteAccount => 'একাউণ্ট মচক';

  @override
  String get deleteAccountTitle => 'আপোনাৰ একাউণ্ট মচিবনে?';

  @override
  String get deleteAccountBody =>
      'আপোনাৰ একাউণ্ট আৰু আমাৰ ছাৰ্ভাৰত সংৰক্ষিত সকলো (ইমেইল, কোটা, ব্যৱহাৰ) চিৰদিনৰ বাবে মচি পেলোৱা হ\'ব, আৰু অব্যৱহৃত বিশ্লেষণ হেৰাব। ব্ৰাউজাৰত পৰিশোধ কৰা ছাবস্ক্ৰিপশ্বন তৎক্ষণাত বাতিল হয়; App Store বা Google Playৰ ছাবস্ক্ৰিপশ্বন ষ্ট\'ৰৰ ছেটিংছত বাতিল কৰিব লাগিব।';

  @override
  String get deleteLocalData =>
      'এই ডিভাইচৰ ডেটাও মচক (প\'ৰ্টফ\'লিঅ\', সতৰ্কবাণী, প্ৰিয়, ইতিহাস, সংৰক্ষিত বিশ্লেষণ)';

  @override
  String get deleteAccountConfirm => 'চিৰদিনৰ বাবে মচক';

  @override
  String get accountDeleted => 'আপোনাৰ একাউণ্ট মচি পেলোৱা হৈছে।';

  @override
  String get errDeleteAccount =>
      'একাউণ্টটো মচিব পৰা নগ\'ল। আপোনাৰ সংযোগ পৰীক্ষা কৰি পুনৰ চেষ্টা কৰক।';

  @override
  String get aiTrialBriefNote =>
      'ট্ৰায়েলৰ বিশ্লেষণসমূহ চমু আৰু এটা অধিক দ্ৰুত AI মডেলেৰে প্ৰস্তুত কৰা হয়। প্লানৰ সৈতে আপুনি আমাৰ আটাইতকৈ সক্ষম AI, অধিক ৱেব সন্ধান, লগতে মানক আৰু বিতং দৈৰ্ঘ্য পাব।';

  @override
  String get billingMonthly => 'মাহেকীয়া';

  @override
  String get billingYearly => 'বাৰ্ষিক';

  @override
  String get yearlyDiscount => '2 মাহ বিনামূলীয়া';

  @override
  String get perYear => '/ বছৰ';

  @override
  String pricePerMonthApprox(String price) {
    return 'প্ৰতি মাহে ≈ $price';
  }

  @override
  String get subscriptionLegalYearly =>
      'আপুনি বাতিল নকৰালৈকে বাৰ্ষিক ছাবস্ক্ৰিপশ্বন প্ৰতি বছৰে স্বয়ংক্ৰিয়ভাৱে নবীকৰণ হয়। ছাবস্ক্ৰাইব কৰি আপুনি ব্যৱহাৰৰ চৰ্তাৱলী আৰু গোপনীয়তা নীতি গ্ৰহণ কৰে।';

  @override
  String get myAnalyses => 'মোৰ বিশ্লেষণসমূহ';

  @override
  String get navAlerts => 'সতৰ্কবাণী';

  @override
  String get inviteTitle => 'বন্ধ প্ৰিভিউ';

  @override
  String get inviteBody =>
      'WhatStock এতিয়া কেৱল আমন্ত্ৰণৰ জৰিয়তেহে উপলব্ধ। আপুনি পোৱা আমন্ত্ৰণ ক\'ডটো দিয়ক।';

  @override
  String get inviteCodeLabel => 'আমন্ত্ৰণ ক\'ড';

  @override
  String get inviteContinue => 'আগবাঢ়ক';

  @override
  String get inviteInvalid => 'এই আমন্ত্ৰণ ক\'ডটো বৈধ নহয়।';

  @override
  String get inviteExpired =>
      'এই আমন্ত্ৰণৰ ম্যাদ উকলি গৈছে। আপোনাক আমন্ত্ৰণ জনোৱা ব্যক্তিজনৰ পৰা এটা নতুন ক\'ড বিচাৰক।';

  @override
  String get inviteDeviceLimit =>
      'এই আমন্ত্ৰণ ক\'ডটো ইতিমধ্যে সৰ্বাধিক সংখ্যক ডিভাইচত ব্যৱহাৰ হৈ আছে।';

  @override
  String get previewConfidential => 'গোপন প্ৰিভিউ';

  @override
  String get errPreviewDailyLimit =>
      'এই প্ৰিভিউৰ আজিৰ বিশ্লেষণৰ সীমা পূৰ হৈছে। কাইলৈ পুনৰ চেষ্টা কৰক।';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ঘণ্টা আগতে',
      one: '1 ঘণ্টা আগতে',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count দিন আগতে',
      one: '1 দিন আগতে',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'এই বিশ্লেষণ আপডেট কৰিবনে?';

  @override
  String staleBody(String age) {
    return 'এইটো $age সৃষ্টি কৰা হৈছিল। তাৰ পিছত দাম, বাতৰি আৰু ফলাফল সলনি হ\'ব পাৰে।';
  }

  @override
  String get staleKeep => 'আগৰটো দেখুৱাওক';

  @override
  String get staleRefresh => 'নতুন এটা সৃষ্টি কৰক';

  @override
  String seeAll(int count) {
    return 'সকলো চাওক ($count)';
  }

  @override
  String get searchAnalyses => 'আপোনাৰ বিশ্লেষণ সন্ধান কৰক';

  @override
  String get deleteAnalysis => 'মচক';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol বিশ্লেষণ মচা হ\'ল';
  }
}
