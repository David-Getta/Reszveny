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

  @override
  String get keyLevelAlertHint =>
      'দাম কোনো স্তৰত উপনীত হ\'লে সতৰ্কবাণী পাবলৈ সেই স্তৰটো টিপক।';

  @override
  String get shareAnalysisTitle => 'বিশ্লেষণ শ্বেয়াৰ কৰক';

  @override
  String get shareAsImage => 'ছবি হিচাপে শ্বেয়াৰ কৰক';

  @override
  String get shareAsText => 'পাঠ হিচাপে শ্বেয়াৰ কৰক';

  @override
  String get shareCardFooter => 'WhatStock-ৰে নিৰ্মিত';

  @override
  String get shareCardDisclaimer => 'AI বিশ্লেষণ · বিনিয়োগৰ পৰামৰ্শ নহয়';

  @override
  String get referralTitle => 'বন্ধুক আমন্ত্ৰণ জনাওক';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটা অতিৰিক্ত বিশ্লেষণ',
      one: '1টা অতিৰিক্ত বিশ্লেষণ',
    );
    return 'আপোনাৰ ক\'ড শ্বেয়াৰ কৰক। আপোনাৰ বন্ধুৱে লগে লগে $_temp0 পাব, আৰু তেওঁৰ প্ৰথম বিশ্লেষণৰ পিছত আপুনিও সমানেই পাব।';
  }

  @override
  String get referralYourCode => 'আপোনাৰ ক\'ড';

  @override
  String referralStats(int invited, int rewarded) {
    return 'আমন্ত্ৰিত: $invited · পুৰস্কৃত: $rewarded';
  }

  @override
  String get referralHaveCode => 'বন্ধুৰ পৰা পোৱা ক\'ড আছে নেকি?';

  @override
  String get referralRedeem => 'ব্যৱহাৰ কৰক';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটা অতিৰিক্ত বিশ্লেষণ যোগ কৰা হ\'ল। স্বাগতম!',
      one: '1টা অতিৰিক্ত বিশ্লেষণ যোগ কৰা হ\'ল। স্বাগতম!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'এই ক\'ডটো নাই। পৰীক্ষা কৰি পুনৰ চেষ্টা কৰক।';

  @override
  String get referralErrOwn => 'আপুনি নিজৰ ক\'ড ব্যৱহাৰ কৰিব নোৱাৰে।';

  @override
  String get referralErrAlready =>
      'আপুনি ইতিমধ্যে এজন বন্ধুৰ ক\'ড ব্যৱহাৰ কৰিছে।';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটা অতিৰিক্ত বিশ্লেষণ',
      one: '1টা অতিৰিক্ত বিশ্লেষণ',
    );
    return 'মই WhatStock-ৰে শ্বেয়াৰ বিশ্লেষণ কৰোঁ: এটা শ্বেয়াৰৰ ফটো তোলক আৰু AI-য়ে বুজাই দিব। মোৰ ক\'ড $code ব্যৱহাৰ কৰি আপুনি $_temp0 পাব।';
  }

  @override
  String get referralCopied => 'ক\'ড কপি কৰা হ\'ল';

  @override
  String get onboardTitle1 => 'এটা শ্বেয়াৰৰ ফটো তোলক';

  @override
  String get onboardBody1 =>
      'ব্ৰ\'কাৰেজ এপৰ স্ক্ৰীণ, বাতৰি কাকত বা কোম্পানীৰ ল\'গ\'ই যথেষ্ট: WhatStock-এ শ্বেয়াৰটো চিনাক্ত কৰি ইয়াৰ দাম, চাৰ্ট আৰু মূল তথ্যসমূহ দেখুৱায়।';

  @override
  String get onboardTitle2 => 'মিনিটতে বুজি লওক';

  @override
  String get onboardBody2 =>
      'AI বিশ্লেষণে বুজাই দিয়ে শ্বেয়াৰটোক কিহে চলায়, ইয়াৰ বিপদাশংকা, মূল্যায়ন আৰু দাম ক\'লৈ যাব পাৰে তাৰ তিনিটা সম্ভাৱ্য পৰিস্থিতি – উৎসসহ আৰু আপোনাৰ ভাষাত।';

  @override
  String get onboardTitle3 => 'সদায় অৱগত থাকক';

  @override
  String get onboardBody3 =>
      'প্ৰিয়, আপোনাৰ প\'ৰ্টফ\'লিঅ\' আৰু দামৰ সতৰ্কবাণীয়ে আপোনাক অৱগত কৰি ৰাখে। আপোনাৰ বিশ্লেষণসমূহ আপোনাৰ ডিভাইচতে থাকে, যিকোনো সময়ত পুনৰ খুলিব পাৰে।';

  @override
  String get onboardNext => 'পৰৱৰ্তী';

  @override
  String get onboardStart => 'আৰম্ভ কৰক';

  @override
  String get onboardSkip => 'এৰি যাওক';

  @override
  String changesTitle(String date) {
    return 'আগৰ বিশ্লেষণৰ পিছত ($date)';
  }

  @override
  String get changesPrice => 'দাম';

  @override
  String get changesNoMajor => 'দৃষ্টিভংগী উল্লেখযোগ্যভাৱে সলনি হোৱা নাই।';

  @override
  String get changesPreviousSummary => 'আগৰ সাৰাংশ';

  @override
  String get telemetryTitle => 'WhatStock উন্নত কৰাত সহায় কৰক';

  @override
  String get telemetryBody =>
      'বেনামী ব্যৱহাৰৰ পৰিসংখ্যা আৰু ক্ৰেশ্ব ৰিপ\'ৰ্ট শ্বেয়াৰ কৰক: কোনবোৰ সুবিধা ব্যৱহাৰ হয় আৰু কি ভুল হ\'ল। আপোনাৰ শ্বেয়াৰ, বিশ্লেষণ বা ব্যক্তিগত তথ্য কেতিয়াও পঠিওৱা নহয়। আপুনি যিকোনো সময়তে ছেটিংছত এইটো সলনি কৰিব পাৰে।';

  @override
  String get telemetryAllow => 'অনুমতি দিয়ক';

  @override
  String get telemetryDecline => 'নালাগে, ধন্যবাদ';

  @override
  String get telemetrySetting => 'বেনামী পৰিসংখ্যা আৰু ক্ৰেশ্ব ৰিপ\'ৰ্ট';

  @override
  String get telemetrySettingHint =>
      'সুবিধাসমূহ কিমান সঘনাই ব্যৱহাৰ হয় আৰু ত্ৰুটিৰ ৰিপ\'ৰ্ট, ব্যক্তিগত তথ্য বা আপোনাৰ সন্ধান আৰু বিশ্লেষণৰ সমল নোহোৱাকৈ।';

  @override
  String get askButton => 'এই বিশ্লেষণৰ বিষয়ে সোধক';

  @override
  String askTitle(String symbol) {
    return '$symbol সম্পৰ্কীয় প্ৰশ্ন';
  }

  @override
  String get askIntro =>
      'বিশ্লেষণটোৰ বিষয়ে যিকোনো কথা সোধক: কোনো ঝুঁকিৰ অৰ্থ কি, কিহে ভৱিষ্যৎ দৃষ্টিভংগী সলনি কৰিব পাৰে, কোনো সংখ্যা কেনেকৈ উলিওৱা হৈছিল। উত্তৰবোৰ এই বিশ্লেষণৰ ওপৰত ভিত্তি কৰি দিয়া হয় আৰু এইবোৰ বিনিয়োগৰ পৰামৰ্শ নহয়।';

  @override
  String get askHint => 'এটা প্ৰশ্ন সোধক…';

  @override
  String get askSend => 'পঠিয়াওক';

  @override
  String get askThinking => 'ভাবি আছে…';

  @override
  String get askSuggest1 => 'আটাইতকৈ ডাঙৰ ঝুঁকিটো কি?';

  @override
  String get askSuggest2 => 'কিহে ভৱিষ্যৎ দৃষ্টিভংগী সলনি কৰিব পাৰে?';

  @override
  String get askSuggest3 => 'সহজ ভাষাত বুজাই দিয়ক';

  @override
  String get askMaxReached =>
      'এইটোৱেই আছিল এই বিশ্লেষণৰ শেষ প্ৰশ্ন। আৰু সুধিবলৈ এটা নতুন বিশ্লেষণ সৃষ্টি কৰক।';

  @override
  String get errAskLimit =>
      'আপুনি আজিৰ প্ৰশ্নৰ সীমাত উপনীত হৈছে। অনুগ্ৰহ কৰি কাইলৈ পুনৰ চেষ্টা কৰক।';

  @override
  String get eventTomorrow => 'কাইলৈ';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days দিনৰ পিছত',
      one: '1 দিনৰ পিছত',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'ত্ৰৈমাসিক ফলাফল';

  @override
  String get eventBeforeOpen => 'বজাৰ খোলাৰ আগত';

  @override
  String get eventAfterClose => 'বজাৰ বন্ধ হোৱাৰ পিছত';

  @override
  String eventEpsEstimate(String value) {
    return 'আনুমানিক EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'আপোনাৰ বিশ্লেষণৰ পৰা';

  @override
  String get eventsHint =>
      'পৰৱৰ্তী 90 দিনত আপোনাৰ প্ৰিয় আৰু প\'ৰ্টফ\'লিঅ\'ৰ শ্বেয়াৰসমূহৰ ফলাফলৰ তাৰিখ, আৰু আপোনাৰ বিশ্লেষণে চিহ্নিত কৰা তাৰিখযুক্ত ঘটনাসমূহ।';

  @override
  String get eventsEmpty =>
      'পৰৱৰ্তী 90 দিনত কোনো তাৰিখযুক্ত ঘটনা নাই। ইয়াত ফলাফলৰ তাৰিখ চাবলৈ প্ৰিয় বা প\'ৰ্টফ\'লিঅ\'ৰ শ্বেয়াৰ যোগ কৰক।';

  @override
  String get compareTitle => 'তুলনা';

  @override
  String get compareAdd => 'এটা শ্বেয়াৰ যোগ কৰক';

  @override
  String get compareRemove => 'আঁতৰাওক';

  @override
  String get compareTickerHint => 'টিকাৰ, যেনে MSFT';

  @override
  String get compareHint =>
      'মূল সংখ্যাসমূহ কাষে কাষে; প্ৰতিটো শাৰীৰ সৰ্বোত্তম মান হাইলাইট কৰা হৈছে। পৰিমাণসমূহ প্ৰতিটো শ্বেয়াৰৰ নিজা মুদ্ৰাত।';

  @override
  String get compareNoAnalysis => 'এতিয়ালৈকে কোনো বিশ্লেষণ নাই';

  @override
  String get portfolioDividends => 'বাৰ্ষিক লভ্যাংশ';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent ইল্ড';
  }

  @override
  String get portfolioDividendNote =>
      'আশা কৰা বাৰ্ষিক লভ্যাংশ যোৱা 12 মাহত পৰিশোধ কৰা লভ্যাংশৰ ওপৰত ভিত্তি কৰি হিচাপ কৰা হয়; ভৱিষ্যতৰ পৰিশোধৰ নিশ্চয়তা নাই।';

  @override
  String positionDividend(String amount) {
    return 'লভ্যাংশ: বছৰি $amount';
  }

  @override
  String get chartAvgCost => 'আপোনাৰ গড়';

  @override
  String get chartAlertLevel => 'সতৰ্কবাণী';

  @override
  String get marketsToday => 'আজিৰ বজাৰ';

  @override
  String get notesTitle => 'মোৰ টোকাসমূহ';

  @override
  String get notesHint =>
      'আপুনি কিয় কিনিলে, কিহৰ ওপৰত চকু ৰাখিছে, কি হ\'লে বিক্ৰী কৰিব?';

  @override
  String get notesInfo =>
      'কেৱল এই ডিভাইচতে সংৰক্ষিত। AI বিশ্লেষণে আপোনাৰ টোকাসমূহ বিবেচনা কৰে।';

  @override
  String notesSaved(String date) {
    return 'সংৰক্ষিত $date';
  }

  @override
  String get peersTitle => 'একে ধৰণৰ কোম্পানী';

  @override
  String get portfolioExport => 'CSV হিচাপে ৰপ্তানি কৰক';

  @override
  String get portfolioImport => 'CSVৰ পৰা আমদানি কৰক';

  @override
  String get portfolioImportHint =>
      'প্ৰতিটো শাৰীত এটাকৈ ক্ৰয় পেষ্ট কৰক: টিকাৰ ছিম্বল, পৰিমাণ, মূল্য, মুদ্ৰা, তাৰিখ (YYYY-MM-DD)। স্তম্ভবোৰ কমা, ছেমিকলন বা টেবেৰে পৃথক কৰিব পাৰি; শিৰোনামৰ শাৰীটো ঐচ্ছিক।';

  @override
  String get portfolioImportButton => 'আমদানি কৰক';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটা ক্ৰয় যোগ কৰা হ\'ল',
      one: '1টা ক্ৰয় যোগ কৰা হ\'ল',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটা শাৰী এৰি দিয়া হ\'ল',
      one: '1টা শাৰী এৰি দিয়া হ\'ল',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'প\'ৰ্টফ\'লিঅ\', প্ৰিয়, দামৰ সতৰ্কবাণী আৰু টোকাসমূহ আপোনাৰ সকলো ডিভাইচত ছিংক হয়।';

  @override
  String syncLast(String time) {
    return 'শেষবাৰ ছিংক: $time';
  }

  @override
  String get syncNow => 'এতিয়া ছিংক কৰক';

  @override
  String get syncFailed =>
      'ছিংক বিফল হ\'ল। ই স্বয়ংক্ৰিয়ভাৱে পুনৰ চেষ্টা কৰিব।';

  @override
  String get alertEmailTitle => 'সতৰ্কবাণী সক্ৰিয় হ\'লে ই-মেইল';

  @override
  String get alertEmailOn =>
      'আমি প্ৰতি কেইমিনিটমানৰ মূৰে মূৰে আপোনাৰ সতৰ্কবাণী পৰীক্ষা কৰোঁ আৰু এপ বন্ধ থাকিলেও আপোনালৈ ই-মেইল পঠিয়াওঁ।';

  @override
  String get alertEmailSignIn =>
      'এপ বন্ধ থাকিলেও ই-মেইলত সতৰ্কবাণী পাবলৈ ছেটিংছত আপোনাৰ ই-মেইলেৰে ছাইন ইন কৰক।';

  @override
  String get portfolioHistory => 'মূল্যৰ গতিধাৰা';

  @override
  String get portfolioReviewTitle => 'AI প\'ৰ্টফ\'লিঅ\' পৰ্যালোচনা';

  @override
  String get portfolioReviewIntro =>
      'AI-এ আপোনাৰ সমগ্ৰ প\'ৰ্টফ\'লিঅ\' চায়: কেন্দ্ৰীভৱন, খণ্ড আৰু মুদ্ৰাৰ ওপৰত নিৰ্ভৰশীলতা, আপোনাৰ শ্বেয়াৰবোৰৰ সাধাৰণ বিপদ, আৰু লভ্যাংশ। 1টা বিশ্লেষণ খৰচ হয়।';

  @override
  String get portfolioReviewButton => 'মোৰ প\'ৰ্টফ\'লিঅ\' পৰ্যালোচনা কৰক';

  @override
  String get portfolioReviewAgain => 'পুনৰ পৰ্যালোচনা কৰক';

  @override
  String get portfolioReviewWorking =>
      'আপোনাৰ প\'ৰ্টফ\'লিঅ\' পৰ্যালোচনা কৰি থকা হৈছে…';

  @override
  String get digestTitle => 'ইমেইলত সাপ্তাহিক সাৰাংশ';

  @override
  String get digestHint =>
      'প্ৰতি সোমবাৰে: যোৱা সপ্তাহত আপোনাৰ প্ৰিয় আৰু প\'ৰ্টফ\'লিঅ\' কেনেকৈ সলনি হ\'ল, আৰু সিহঁতৰ আগন্তুক ফলাফলৰ তাৰিখ।';

  @override
  String get benchmarkTitle => 'S&P 500ৰ সৈতে তুলনা';

  @override
  String get benchmarkYours => 'আপোনাৰ ক্ৰয়';

  @override
  String get benchmarkIndex => 'S&P 500ত একে পৰিমাণ';

  @override
  String benchmarkAhead(String points) {
    return 'সূচকাংকতকৈ $points শতাংশ বিন্দু ভাল';
  }

  @override
  String benchmarkBehind(String points) {
    return 'সূচকাংকতকৈ $points শতাংশ বিন্দু পিছপৰি';
  }

  @override
  String get benchmarkHint =>
      'যেন প্ৰতিটো ক্ৰয়ৰ ধন একেটা দিনতে S&P 500 ইণ্ডেক্স ফাণ্ডত বিনিয়োগ কৰা হৈছিল। লভ্যাংশ অন্তৰ্ভুক্ত নহয়; অতীতৰ ৰিটাৰ্নে ভৱিষ্যতৰ ৰিটাৰ্নৰ পূৰ্বাভাস নিদিয়ে।';

  @override
  String get portfolioSell => 'বিক্ৰী';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbol বিক্ৰী কৰক';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'প্ৰতি শ্বেয়াৰৰ বিক্ৰী মূল্য ($currency)';
  }

  @override
  String get portfolioSellDate => 'বিক্ৰীৰ তাৰিখ';

  @override
  String get portfolioSellAll => 'সকলো';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'আপোনাৰ $quantity আছে';
  }

  @override
  String get portfolioSold => 'বিক্ৰীত';

  @override
  String get portfolioRealized => 'বাস্তৱায়িত';

  @override
  String get portfolioClosed => 'বন্ধ পজিচন';

  @override
  String get portfolioClosedNote => 'সকলো শ্বেয়াৰ বিক্ৰী কৰা হৈছে';

  @override
  String get portfolioTransactions => 'লেনদেন';

  @override
  String get portfolioRealizedByYear => 'বছৰ অনুসৰি বাস্তৱায়িত লাভ';

  @override
  String get portfolioRealizedHint =>
      'বিক্ৰীসমূহ প্ৰথমে আপোনাৰ আটাইতকৈ পুৰণি ক্ৰয়ৰ সৈতে মিলোৱা হয় (FIFO), আজিৰ বিনিময় হাৰত ৰূপান্তৰ কৰি। কৰ ৰিটাৰ্ণৰ বাবে আপোনাৰ ব্ৰ\'কাৰৰ বিবৃতি ব্যৱহাৰ কৰক।';

  @override
  String staleNewResults(String symbol, String date) {
    return 'এই বিশ্লেষণৰ পিছত নতুন ত্ৰৈমাসিক ফলাফল প্ৰকাশ পাইছে ($symbol, $date)।';
  }

  @override
  String get newResultsBadge => 'নতুন ফলাফল';

  @override
  String get portfolioImportBrokers =>
      'Revolut, Trading 212 আৰু Interactive Brokers ৰ এক্সপৰ্টো বিক্ৰীসহ চিনাক্ত কৰা হয়; লভ্যাংশ আৰু জমা এৰি দিয়া হয়।';

  @override
  String get portfolioImportFile => 'এটা ফাইল বাছক';

  @override
  String offlineBanner(String time) {
    return 'সংযোগ নাই – শেষবাৰ ছেভ কৰা ডেটা দেখুওৱা হৈছে ($time)।';
  }

  @override
  String get glossMarketCap =>
      'শ্বেয়াৰ বজাৰত গোটেই কোম্পানীটোৰ মূল্য কিমান: শ্বেয়াৰৰ দাম × শ্বেয়াৰৰ সংখ্যা।';

  @override
  String get glossSharesOutstanding =>
      'কোম্পানীয়ে কিমান শ্বেয়াৰ জাৰি কৰিছে। ই বাঢ়িলে প্ৰতিটো শ্বেয়াৰৰ ভাগ সৰু হয়; বাইবেকে ইয়াক কমায়।';

  @override
  String get glossPeTrailing =>
      'দাম ÷ যোৱা 12 মাহৰ প্ৰতি শ্বেয়াৰ আয়: বৰ্তমানৰ লাভৰ কিমান বছৰৰ বাবে আপুনি দাম দিছে। কম মানে সস্তা, কিন্তু দ্ৰুতগতিত বঢ়া কোম্পানীৰ P/E সাধাৰণতে বেছি।';

  @override
  String get glossPeForward =>
      'P/E-ৰ দৰেই, কিন্তু বিশ্লেষকসকলে অহা 12 মাহৰ বাবে আশা কৰা লাভৰ সৈতে। ট্ৰেইলিং P/E-তকৈ কম হ\'লে লাভ বৃদ্ধি পোৱাৰ আশা কৰা হৈছে।';

  @override
  String get glossPb =>
      'দাম ÷ প্ৰতি শ্বেয়াৰ বুক ভেলু (সম্পত্তি বিয়োগ ঋণ)। 1-ৰ ওচৰত মানে বজাৰে কোম্পানীটোক কাগজত থকা সম্পত্তিৰ সমান মূল্য দিছে।';

  @override
  String get glossPs =>
      'বজাৰ মূল্য ÷ বছৰেকীয়া ৰাজহ। যিবোৰ কোম্পানীৰ এতিয়াও লাভ কম বা নাই, তাৰ বাবে উপযোগী; একে উদ্যোগৰ ভিতৰত তুলনা কৰক।';

  @override
  String get glossEvToFcf =>
      'ঋণসহ কোম্পানীৰ মূল্য (EV) ÷ বিনিয়োগৰ পিছত এবছৰত ই উৎপন্ন কৰা নগদ ধন। কম মানে দামৰ বিনিময়ত আপুনি বেছি নগদ ধন পায়।';

  @override
  String get glossPeg =>
      'P/E ÷ আশা কৰা বছৰেকীয়া লাভ বৃদ্ধি (%)। 1-ৰ ওচৰত প্ৰায়ে ন্যায্য বুলি ধৰা হয়; ই P/E-ক বৃদ্ধিৰ পোহৰত চায়।';

  @override
  String get glossEps =>
      'যোৱা 12 মাহত প্ৰতি শ্বেয়াৰ লাভ। বছৰ বছৰ ধৰি বাঢ়ি থকা EPS এটা সুস্থ কোম্পানীৰ আটাইতকৈ শক্তিশালী লক্ষণবোৰৰ এটা।';

  @override
  String get glossBeta =>
      'শ্বেয়াৰটো বজাৰৰ সৈতে কিমান লৰচৰ কৰে: 1 = বজাৰৰ দৰে, 1.5 = প্ৰায় 50% ডাঙৰ উঠা-নমা, 1-ৰ তলত = শান্ত।';

  @override
  String get glossRevenueTtm => 'যোৱা 12 মাহৰ মুঠ বিক্ৰী, কোনো খৰচৰ আগত।';

  @override
  String get glossNetIncomeTtm =>
      'যোৱা 12 মাহত সকলো খৰচ, সুত আৰু কৰৰ পিছত বাকী থকা লাভ।';

  @override
  String get glossGrossMargin =>
      'সামগ্ৰীৰ প্ৰত্যক্ষ খৰচৰ পিছত ৰাজহৰ বাকী থকা অংশ। উচ্চ মাৰ্জিনে প্ৰায়ে দাম নিৰ্ধাৰণৰ শক্তি বুজায়।';

  @override
  String get glossOperatingMargin =>
      'ব্যৱসায় চলোৱাৰ খৰচৰ (দৰমহা, ভাড়া, বিপণন) পিছত, সুত আৰু কৰৰ আগত ৰাজহৰ বাকী থকা অংশ।';

  @override
  String get glossNetMargin =>
      'ৰাজহৰ যি অংশ শেষত লাভ হিচাপে থাকে। 20% মানে প্ৰতি 100 বিক্ৰীৰ 20 লাভ।';

  @override
  String get glossRoe =>
      'ইকুইটিত ৰিটাৰ্ণ: বছৰেকীয়া লাভ ÷ মালিকসকলৰ মূলধন। পৰিচালনাই শ্বেয়াৰধাৰকৰ ধন কিমান ভালদৰে ব্যৱহাৰ কৰে দেখুৱায়; প্ৰায় 15%-ৰ ওপৰত শক্তিশালী।';

  @override
  String get glossRoa =>
      'সম্পত্তিত ৰিটাৰ্ণ: বছৰেকীয়া লাভ ÷ কোম্পানীৰ গোটেই সম্পত্তি। একে উদ্যোগৰ ভিতৰত তুলনা কৰক।';

  @override
  String get glossDebtToEquity =>
      'ঋণ ÷ মালিকসকলৰ মূলধন। বেছি মানে বেছি ধাৰ লোৱা ধন: সুতৰ হাৰ বাঢ়িলে বা ব্যৱসায় লেহেমীয়া হ\'লে বেছি বিপদ।';

  @override
  String get glossCurrentRatio =>
      'চুটি ম্যাদী সম্পত্তি ÷ এবছৰৰ ভিতৰত পৰিশোধ কৰিবলগীয়া বিল। 1-ৰ ওপৰত মানে কোম্পানীয়ে ওচৰৰ বিলবোৰ পৰিশোধ কৰিব পাৰে।';

  @override
  String get glossRevenueGrowth => 'এবছৰ আগৰ তুলনাত ৰাজহ কিমান বাঢ়িল।';

  @override
  String get glossEpsGrowth =>
      'এবছৰ আগৰ তুলনাত প্ৰতি শ্বেয়াৰ লাভ কিমান বাঢ়িল।';

  @override
  String get glossDividendYield =>
      'বছৰেকীয়া লভ্যাংশ ÷ শ্বেয়াৰৰ দাম: আপুনি দিয়া দামৰ শতাংশ হিচাপে বছৰি পাব পৰা নগদ আয়।';

  @override
  String get glossDividendPerShare => 'যোৱা বছৰত এটা শ্বেয়াৰত দিয়া লভ্যাংশ।';

  @override
  String get glossPayoutRatio =>
      'লাভৰ যি অংশ লভ্যাংশ হিচাপে দিয়া হয়। 100%-ৰ ওপৰত কোম্পানীয়ে উপাৰ্জনতকৈ বেছি দিয়ে, যি কমেইহে টিকি থাকে।';

  @override
  String get glossTitle => 'ইয়াৰ অৰ্থ কি?';

  @override
  String get watchNewsTitle => 'আপোনাৰ শ্বেয়াৰৰ বাতৰি';

  @override
  String get undo => 'আনডু';

  @override
  String get watchSort => 'সজাওক';

  @override
  String get watchSortOwn => 'মোৰ ক্ৰম';

  @override
  String get watchSortGainers => 'সৰ্বাধিক বৃদ্ধি প্ৰথমে';

  @override
  String get watchSortLosers => 'সৰ্বাধিক হ্ৰাস প্ৰথমে';

  @override
  String get watchSortName => 'টিকাৰ অনুসৰি (A–Z)';

  @override
  String get watchHint =>
      'ক্ৰম সলনি কৰিবলৈ হেণ্ডেলটো টানক, আঁতৰাবলৈ বাওঁফালে ছোৱাইপ কৰক। ৰেখাডালে যোৱা 30 দিন দেখুৱায়।';

  @override
  String analysisReady(String symbol) {
    return '$symbol: আপোনাৰ বিশ্লেষণ সাজু হৈছে।';
  }

  @override
  String alertFromCost(String price) {
    return 'আপোনাৰ গড় ক্ৰয় মূল্যৰ ($price) ভিত্তিত:';
  }

  @override
  String get briefTitle => 'আজি আপোনাৰ শ্বেয়াৰসমূহ';

  @override
  String get briefButton => 'আজিৰ সাৰাংশ';

  @override
  String get briefHint =>
      'আজি আপোনাৰ প’ৰ্টফলিঅ’ আৰু প্ৰিয়সমূহ কেনেকৈ সলনি হ’ল আৰু শেহতীয়া বাতৰিয়ে সেইবোৰৰ বিষয়ে কি কয়, তাৰ এটা চমু AI সাৰাংশ। ই কোনো বিশ্লেষণ খৰচ নকৰে।';

  @override
  String get briefRefresh => 'আপডেট';

  @override
  String get sectionEarnings => 'উপাৰ্জন';

  @override
  String earningsNext(String date) {
    return 'পৰৱৰ্তী প্ৰতিবেদন: $date';
  }

  @override
  String get earningsExpected => 'প্ৰত্যাশিত EPS';

  @override
  String get earningsReported => 'ঘোষিত EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'শেহতীয়া $totalটা ত্ৰৈমাসিকৰ $beatsটাত প্ৰত্যাশিত EPSৰ সমান বা অধিক',
      one: '1টা ত্ৰৈমাসিকৰ $beatsটাত প্ৰত্যাশিত EPSৰ সমান বা অধিক',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol: কাইলৈ ত্ৰৈমাসিক ফলাফল';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol: আজি ত্ৰৈমাসিক ফলাফল';
  }

  @override
  String get earningsRemindersTitle => 'ফলাফলৰ সোঁৱৰণী';

  @override
  String get earningsRemindersSubtitle =>
      'আপোনাৰ প্ৰিয় বা পৰ্টফ\'লিঅ\'ৰ শ্বেয়াৰৰ ত্ৰৈমাসিক ফলাফল ঘোষণাৰ আগদিনা এটা জাননী';

  @override
  String addAllToFavorites(int count) {
    return 'সকলো প্ৰিয়ত যোগ কৰক ($count)';
  }

  @override
  String get portfolioImportPhoto => 'স্ক্ৰীণশ্বটৰ পৰা আমদানি কৰক';

  @override
  String get holdingsReading => 'আপোনাৰ পজিচন পঢ়ি থকা হৈছে…';

  @override
  String get holdingsReviewTitle => 'পোৱা পজিচন';

  @override
  String get holdingsReviewHint =>
      'যোগ কৰাৰ আগতে সংখ্যাবোৰ পৰীক্ষা কৰক। দামটো আজিৰ দাম নহয়, প্ৰতি শ্বেয়াৰত আপোনাৰ গড় ক্ৰয়মূল্য।';

  @override
  String get holdingsNoPrice => 'ছবিখনত গড় ক্ৰয়মূল্য নাই';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটা পজিচন যোগ কৰক',
      one: '1টা পজিচন যোগ কৰক',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'এই ছবিখনত কোনো শ্বেয়াৰ পজিচন পোৱা নগ\'ল। আপোনাৰ ব্ৰ\'কাৰৰ পজিচন বা হ\'ল্ডিং পৃষ্ঠাৰ স্ক্ৰীণশ্বট চেষ্টা কৰক।';

  @override
  String get week52Range => '52-সপ্তাহৰ পৰিসৰ';

  @override
  String week52BelowHigh(String percent) {
    return '52-সপ্তাহৰ সৰ্বোচ্চতকৈ $percent তলত';
  }

  @override
  String get week52AtHigh => '52-সপ্তাহৰ সৰ্বোচ্চত';

  @override
  String get alertKindTrailing => 'শীৰ্ষৰ পৰা নামিলে';

  @override
  String get alertTrailingPercent => 'শীৰ্ষৰ পৰা হ্ৰাস (%)';

  @override
  String get alertTrailingHint =>
      'দামৰ সৈতে ওপৰলৈ আগবাঢ়ে: ছেট কৰাৰ পিছত পোৱা সৰ্বোচ্চ স্তৰৰ পৰা দাম ইমানখিনি নামিলে সতৰ্ক কৰে।';

  @override
  String alertDescTrailing(String percent) {
    return 'শীৰ্ষৰ পৰা $percent হ্ৰাস';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'এতিয়ালৈকে শীৰ্ষ: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol শীৰ্ষৰ পৰা $percent নামিল';
  }

  @override
  String get sectionInsiders => 'ইনচাইডাৰ লেনদেন';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটা ক্ৰয়',
      one: '1টা ক্ৰয়',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটা বিক্ৰী',
      one: '1টা বিক্ৰী',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'নিট: $shares শ্বেয়াৰ';
  }

  @override
  String get insiderBuy => 'কিনিলে';

  @override
  String get insiderSell => 'বিক্ৰী কৰিলে';

  @override
  String get insiderHint =>
      'যোৱা 90 দিনত কাৰ্যবাহী বিষয়া আৰু সঞ্চালকসকলৰ মুকলি বজাৰত ক্ৰয় আৰু বিক্ৰী (SEC Form 4)। অপশ্বন প্ৰয়োগ আৰু শ্বেয়াৰ পুৰস্কাৰ গণনা কৰা নহয়।';

  @override
  String get insiderNone =>
      'যোৱা 90 দিনত মুকলি বজাৰত কোনো ইনচাইডাৰ ক্ৰয় বা বিক্ৰী হোৱা নাই।';

  @override
  String get analystTrend => 'মাহে মাহে মতামত কেনেকৈ সলনি হ\'ল';

  @override
  String get watchListAll => 'সকলো';

  @override
  String get watchListNew => 'নতুন তালিকা';

  @override
  String get watchListName => 'তালিকাৰ নাম';

  @override
  String get watchListRename => 'তালিকাৰ নাম সলনি কৰক';

  @override
  String get watchListDelete => 'তালিকা মচক';

  @override
  String get watchListAddTo => 'তালিকাত যোগ কৰক';

  @override
  String get watchListEmpty =>
      'এই তালিকাত এতিয়াও কোনো শ্বেয়াৰ নাই। যোগ কৰিবলৈ শ্বেয়াৰৰ কাষৰ তালিকা বুটামটো টিপক।';

  @override
  String get portfolioAskTitle => 'আপোনাৰ প\'ৰ্টফ\'লিঅ\' সম্পৰ্কীয় প্ৰশ্ন';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'বেকআপ';

  @override
  String get backupSave => 'বেকআপ ছেভ কৰক';

  @override
  String get backupSaveHint =>
      'আপোনাৰ প্ৰিয়, তালিকা, প\'ৰ্টফ\'লিঅ\', সতৰ্কবাণী আৰু টোকাসমূহ এটা ফাইলত।';

  @override
  String get backupRestore => 'বেকআপৰ পৰা পুনৰুদ্ধাৰ কৰক';

  @override
  String get backupRestoreHint =>
      'ফাইলত যি আছে সেয়া যোগ কৰে; আপোনাৰ এতিয়াৰ একোৱেই মচা নহয়।';

  @override
  String get backupRestored => 'বেকআপ পুনৰুদ্ধাৰ কৰা হ\'ল।';

  @override
  String get backupInvalid => 'এই ফাইলটো WhatStock বেকআপ নহয়।';

  @override
  String get allocationPositions => 'শ্বেয়াৰ';

  @override
  String get allocationSectors => 'খণ্ড';

  @override
  String get allocationCurrencies => 'মুদ্ৰা';

  @override
  String get compareReturn1y => '1 বছৰৰ উভতি';

  @override
  String get compareFromHigh => '52-সপ্তাহৰ সৰ্বোচ্চৰ পৰা দূৰত্ব';

  @override
  String get briefAutoTitle => 'প্ৰতিদিনে ৰাতিপুৱা দৈনিক সাৰাংশ';

  @override
  String get briefAutoSubtitle =>
      'এপটো চলি থকালৈকে ৰাতিপুৱা 7:00ৰ পিছত “আজি আপোনাৰ শ্বেয়াৰসমূহ” নিজে নিজে প্ৰস্তুত হয়; কম্পিউটাৰত এটা জাননীয়ে আপোনাক জনায়। ই আপোনাৰ দৈনিক প্ৰশ্নৰ সীমাৰ পৰা যায়, কোনো বিশ্লেষণ খৰচ নকৰে।';

  @override
  String get targetsButton => 'লক্ষ্য বিতৰণ';

  @override
  String get targetsTitle => 'লক্ষ্য বিতৰণ';

  @override
  String get targetsHint =>
      'প\'ৰ্টফলিঅ\'ৰ কিমান অংশ প্ৰতিটো শ্বেয়াৰে পাব লাগে, সেয়া নিৰ্ধাৰণ কৰক। লক্ষ্য নাথাকিলে ঘৰটো খালী ৰাখক। তাৰ পিছত এপটোৱে তালৈ পাবলৈ কি কিনিব বা বিক্ৰী কৰিব লাগিব দেখুৱাব।';

  @override
  String targetsSum(String percent) {
    return 'মুঠ: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'কিনক ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'বিক্ৰী ≈ $amount';
  }

  @override
  String get rebalanceOk => 'লক্ষ্যত আছে';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol: প্ৰত্যাশিত EPSতকৈ বেছি';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol: প্ৰত্যাশিত EPSতকৈ কম';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'ঘোষিত EPS $actual, প্ৰত্যাশিত $estimate';
  }

  @override
  String get newsExplain => 'ইয়াৰ অৰ্থ কি?';

  @override
  String get watchAlertAll => 'দৈনিক ডাঙৰ লৰচৰত সতৰ্কবাণী';

  @override
  String get watchAlertAllHint =>
      'এই তালিকাৰ প্ৰতিটো শ্বেয়াৰৰ বাবে দামৰ সতৰ্কবাণী: এদিনত ইমানখিনি ওপৰলৈ বা তললৈ লৰচৰ হ\'লে জনাব। যিবোৰৰ ইতিমধ্যে আছে, সেইবোৰৰ আগৰটোৱেই থাকিব।';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটা সতৰ্কবাণী ছেট কৰা হ\'ল',
      one: '1টা সতৰ্কবাণী ছেট কৰা হ\'ল',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'লাভ কৰা মুনাফা ৰপ্তানি কৰক (CSV)';

  @override
  String get portfolioAnnualReturn => 'বাৰ্ষিক ৰিটাৰ্ণ';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / বছৰ';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'ধন-ভাৰিত বাৰ্ষিক ৰিটাৰ্ণ (XIRR): আপুনি কেতিয়া কিনিছিল আৰু বিক্ৰী কৰিছিল সেয়া হিচাপত লয়, গতিকে পিছত যোগ দিয়া ধনে ইয়াক বিকৃত নকৰে। আপোনাৰ প্ৰথম ক্ৰয় অন্ততঃ এবছৰ পুৰণি হ\'লে দেখুওৱা হয়; লভ্যাংশ অন্তৰ্ভুক্ত নহয়।';

  @override
  String get eventsAddToCalendar => 'কেলেণ্ডাৰত যোগ কৰক (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'পৰ্টফ\'লিঅ\' সতৰ্কবাণী';

  @override
  String get portfolioMoveAlertSubtitle =>
      'আপোনাৰ সমগ্ৰ পৰ্টফ\'লিঅ\' এদিনত ইমানখিনি লৰচৰ হ\'লে এটা জাননী।';

  @override
  String get portfolioMoveAlertOff => 'অফ';

  @override
  String portfolioMoveUp(String percent) {
    return 'আজি আপোনাৰ পৰ্টফ\'লিঅ\' $percent বাঢ়িছে';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'আজি আপোনাৰ পৰ্টফ\'লিঅ\' $percent কমিছে';
  }

  @override
  String get whatIfTitle => 'যদি বিনিয়োগ কৰিলেহেঁতেন?';

  @override
  String get whatIfAmount => 'পৰিমাণ';

  @override
  String whatIfResult(String amount, String period) {
    return '$period আগতে বিনিয়োগ কৰা $amount আজি হ\'লহেঁতেন';
  }

  @override
  String get whatIfNote =>
      'কেৱল শ্বেয়াৰৰ দামৰ ওপৰত ভিত্তি কৰি: লভ্যাংশ, মাচুল আৰু কৰ অন্তৰ্ভুক্ত নহয়। অতীতৰ লাভে ভৱিষ্যতৰ লাভৰ পূৰ্বাভাস নিদিয়ে।';

  @override
  String get watchShare => 'তালিকাখন শ্বেয়াৰ কৰক';

  @override
  String get watchImport => 'টিকাৰ যোগ কৰক';

  @override
  String get watchImportHint =>
      'কমা, স্পেচ বা নতুন শাৰীৰে পৃথক কৰি টিকাৰবোৰ পেষ্ট কৰক – উদাহৰণস্বৰূপে, কোনোবাই আপোনাক শ্বেয়াৰ কৰা এখন তালিকা।';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটা শ্বেয়াৰ যোগ কৰা হ\'ল',
      one: '1টা শ্বেয়াৰ যোগ কৰা হ\'ল',
      zero: 'কোনো নতুন শ্বেয়াৰ নাই',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'সৰ্ববৃহৎ প্ৰথমে';

  @override
  String get positionsSortGain => 'সৰ্বাধিক মুঠ লাভ প্ৰথমে';

  @override
  String get positionsSortToday => 'আজিৰ শ্ৰেষ্ঠ প্ৰথমে';

  @override
  String get chartMyBuys => 'আপোনাৰ ক্ৰয়';

  @override
  String get chartMySells => 'আপোনাৰ বিক্ৰী';

  @override
  String get shortcutsTitle => 'কীব\'ৰ্ড শ্বৰ্টকাট';

  @override
  String usMarketOpen(String time) {
    return 'আমেৰিকাৰ বজাৰ খোলা · $time পিছত বন্ধ হ\'ব';
  }

  @override
  String usMarketClosed(String time) {
    return 'আমেৰিকাৰ বজাৰ বন্ধ · $time পিছত খুলিব';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes মিনিট';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours ঘণ্টা $minutes মিনিট';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days দিন $hours ঘণ্টা';
  }

  @override
  String get portfolioGoalSet => 'লক্ষ্য নিৰ্ধাৰণ কৰক';

  @override
  String get portfolioGoalTitle => 'প\'ৰ্টফ\'লিঅ\'ৰ লক্ষ্য';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · লক্ষ্য: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'লক্ষ্য পূৰণ হ\'ল: $amount';
  }

  @override
  String get portfolioGoalRemove => 'লক্ষ্য আঁতৰাওক';

  @override
  String get alertEdit => 'সতৰ্কবাণী সম্পাদনা কৰক';

  @override
  String get positionOpenLots => 'এতিয়াও ধৰি ৰখা (পুৰণিখিনি প্ৰথমে)';

  @override
  String get lotRemoved => 'লেনদেন মচা হ\'ল';

  @override
  String get alertDeleted => 'সতৰ্কবাণী মচা হ\'ল';

  @override
  String get alertsClearTriggered => 'সক্ৰিয় হোৱা সতৰ্কবাণী মচক';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটা সতৰ্কবাণী মচা হ\'ল',
      one: '1টা সতৰ্কবাণী মচা হ\'ল',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'হোম স্ক্ৰীণ';

  @override
  String get allocationCountries => 'দেশ';

  @override
  String get newsExplainNoteResearch =>
      'AI ব্যাখ্যা: ই ৱেবত তথ্যবোৰ বিচাৰে, প্ৰবন্ধটো খোলে আৰু উৎসটো কিমান বিশ্বাসযোগ্য তাক বিচাৰ কৰে। ই বিনিয়োগৰ পৰামৰ্শ নহয়। ই আপোনাৰ দৈনিক প্ৰশ্নৰ সীমাৰ পৰা যায়, কোনো বিশ্লেষণ খৰচ নকৰে।';

  @override
  String get sourceOfficial => 'আনুষ্ঠানিক';

  @override
  String get sourcePressRelease => 'প্ৰেছ বিজ্ঞপ্তি';

  @override
  String get sourceMajorNews => 'মূল মাধ্যম';

  @override
  String get sourceOpinion => 'মতামত';

  @override
  String get earningsSummaryButton => 'শেহতীয়া প্ৰতিবেদনত কি আছিল?';

  @override
  String get earningsSummaryNote =>
      'কোম্পানীৰ ফলাফল ঘোষণা আৰু ৱেবত পোৱা সংবাদ প্ৰতিবেদনৰ AI সাৰাংশ। ই বিনিয়োগৰ পৰামৰ্শ নহয়। ই আপোনাৰ দৈনিক প্ৰশ্নৰ সীমাৰ পৰা যায়, কোনো বিশ্লেষণ খৰচ নকৰে।';

  @override
  String get compareLastSurprise => 'শেষ ত্ৰৈমাসিক EPS বনাম প্ৰত্যাশিত';

  @override
  String get compareNextReport => 'পৰৱৰ্তী প্ৰতিবেদন';

  @override
  String get resolvingDescription =>
      'আপুনি কোনটো শ্বেয়াৰ বুজাইছে চিনাক্ত কৰি থকা হৈছে…';

  @override
  String get instrumentTitle => 'এই ইনষ্ট্ৰুমেণ্টৰ বিষয়ে';

  @override
  String get instrumentHint =>
      'এই চিহ্নৰ বাবে কোনো কোম্পানীৰ প্ৰফাইল নাই – ই এটা ETF, ফাণ্ড বা ডিপজিটৰী ৰিচিপ্ট হ’ব পাৰে। AI-ক সোধক ই কি, ইয়াত কি আছে আৰু ইয়াৰ খৰচ কিমান।';

  @override
  String get instrumentAsk => 'এইটো কি?';

  @override
  String get instrumentNote =>
      'জাৰীকৰ্তাৰ ফাণ্ড পৃষ্ঠা আৰু ৱেবত পোৱা বিত্তীয় ছাইটৰ পৰা AI ব্যাখ্যা। ই বিনিয়োগৰ পৰামৰ্শ নহয়। ই আপোনাৰ দৈনিক প্ৰশ্নৰ সীমাৰ পৰা যায়, কোনো বিশ্লেষণ খৰচ নকৰে।';

  @override
  String suggestAskAi(String query) {
    return 'AIক সোধক: “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return '$symbols-ৰ বাবে বৰ্তমানৰ দাম নাই।';
  }

  @override
  String get eventsRecentResults => 'সম্প্ৰতি ঘোষিত ফলাফল';
}
