// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appTitle => 'StockLens';

  @override
  String get homeTagline => 'একটি শেয়ারের ছবি তুলুন এবং তার সম্পর্কে সব জানুন।';

  @override
  String get homeHint =>
      'শেয়ার সার্টিফিকেট, ব্রোকারেজ অ্যাপের স্ক্রিন, সংবাদপত্র বা কোম্পানির লোগো – যা কিছু একটি শেয়ারকে শনাক্ত করে।';

  @override
  String get takePhoto => 'ছবি তুলুন';

  @override
  String get chooseFromGallery => 'গ্যালারি থেকে বেছে নিন';

  @override
  String get chooseImage => 'একটি ছবি বেছে নিন';

  @override
  String get enterTickerManually => 'টিকার ম্যানুয়ালি লিখুন';

  @override
  String get tickerInputLabel => 'টিকার সিম্বল';

  @override
  String get tickerInputHint => 'যেমন AAPL';

  @override
  String get lookUp => 'খুঁজুন';

  @override
  String demoModeBanner(String symbols) {
    return 'ডেমো মোড – কোনো মার্কেট ডেটা কী কনফিগার করা নেই। নমুনা ডেটা পাওয়া যাবে: $symbols।';
  }

  @override
  String get recognizing => 'ছবি বিশ্লেষণ করা হচ্ছে…';

  @override
  String get loadingData => 'ডেটা লোড হচ্ছে…';

  @override
  String get noCandidatesTitle => 'কোনো শেয়ার শনাক্ত হয়নি';

  @override
  String get noCandidatesBody =>
      'এই ছবিতে আমরা কোনো শেয়ার শনাক্ত করতে পারিনি। আরও স্পষ্ট ছবি তুলুন, অথবা টিকার ম্যানুয়ালি লিখুন।';

  @override
  String get whatWeSaw => 'আমরা যা দেখেছি';

  @override
  String get chooseCandidateTitle => 'আপনি কোন শেয়ারটি বোঝাতে চেয়েছেন?';

  @override
  String confidencePercent(int percent) {
    return '$percent% নিশ্চয়তা';
  }

  @override
  String get settings => 'সেটিংস';

  @override
  String get language => 'ভাষা';

  @override
  String get systemLanguage => 'সিস্টেম ডিফল্ট';

  @override
  String get about => 'অ্যাপ সম্পর্কে';

  @override
  String get disclaimer =>
      'এই অ্যাপ শুধুমাত্র তথ্য প্রদান করে এবং এটি বিনিয়োগ পরামর্শ নয়। ডেটা বিলম্বিত বা ভুল হতে পারে।';

  @override
  String dataSource(String source) {
    return 'ডেটা উৎস: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'শনাক্তকরণ: $source';
  }

  @override
  String get retry => 'আবার চেষ্টা করুন';

  @override
  String get cancel => 'বাতিল';

  @override
  String get ok => 'ঠিক আছে';

  @override
  String get close => 'বন্ধ করুন';

  @override
  String get errorGeneric => 'কিছু একটা ভুল হয়েছে।';

  @override
  String get errorSectionUnavailable => 'এই অংশটি লোড করা যায়নি।';

  @override
  String get notAvailable => 'উপলব্ধ নয়';

  @override
  String get sectionIdentity => 'শনাক্তকরণ';

  @override
  String get sectionPrice => 'দাম';

  @override
  String get sectionValuation => 'মূল্যায়ন';

  @override
  String get sectionFinancials => 'আর্থিক তথ্য';

  @override
  String get sectionDividend => 'ডিভিডেন্ড';

  @override
  String get sectionProfile => 'কোম্পানির প্রোফাইল';

  @override
  String get sectionAnalysts => 'বিশ্লেষক রেটিং';

  @override
  String get sectionNews => 'খবর';

  @override
  String get sectionRecognition => 'শনাক্তকরণের বিবরণ';

  @override
  String get labelSymbol => 'টিকার';

  @override
  String get labelExchange => 'এক্সচেঞ্জ';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'মুদ্রা';

  @override
  String get labelCountry => 'দেশ';

  @override
  String get labelIndustry => 'শিল্প';

  @override
  String get labelSector => 'সেক্টর';

  @override
  String get labelWebsite => 'ওয়েবসাইট';

  @override
  String get labelIpoDate => 'IPO তারিখ';

  @override
  String get labelMarketCap => 'মার্কেট ক্যাপ';

  @override
  String get labelSharesOutstanding => 'মোট প্রচলিত শেয়ার';

  @override
  String get labelEmployees => 'কর্মী';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'সদর দপ্তর';

  @override
  String get labelDescription => 'বিবরণ';

  @override
  String get labelLastPrice => 'সর্বশেষ দাম';

  @override
  String get labelChange => 'পরিবর্তন';

  @override
  String get labelOpen => 'ওপেন';

  @override
  String get labelDayHigh => 'দিনের সর্বোচ্চ';

  @override
  String get labelDayLow => 'দিনের সর্বনিম্ন';

  @override
  String get labelPreviousClose => 'আগের ক্লোজ';

  @override
  String get labelWeek52High => '52-সপ্তাহের সর্বোচ্চ';

  @override
  String get labelWeek52Low => '52-সপ্তাহের সর্বনিম্ন';

  @override
  String get labelAverageVolume10d => 'গড় ভলিউম (10 দিন)';

  @override
  String updatedAt(String time) {
    return 'আপডেট $time';
  }

  @override
  String get labelPeTrailing => 'P/E (ট্রেইলিং)';

  @override
  String get labelPeForward => 'P/E (ফরোয়ার্ড)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / ফ্রি ক্যাশ ফ্লো';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'বিটা';

  @override
  String get labelRevenueTtm => 'রাজস্ব (TTM)';

  @override
  String get labelNetIncomeTtm => 'নিট আয় (TTM)';

  @override
  String get labelGrossMargin => 'গ্রস মার্জিন';

  @override
  String get labelOperatingMargin => 'অপারেটিং মার্জিন';

  @override
  String get labelNetMargin => 'নিট মার্জিন';

  @override
  String get labelRoe => 'ইক্যুইটিতে রিটার্ন';

  @override
  String get labelRoa => 'সম্পদে রিটার্ন';

  @override
  String get labelDebtToEquity => 'ঋণ / ইক্যুইটি';

  @override
  String get labelCurrentRatio => 'কারেন্ট রেশিও';

  @override
  String get labelRevenueGrowth => 'রাজস্ব বৃদ্ধি (YoY)';

  @override
  String get labelEpsGrowth => 'EPS বৃদ্ধি (YoY)';

  @override
  String get labelDividendYield => 'ডিভিডেন্ড ইল্ড';

  @override
  String get labelDividendPerShare => 'শেয়ার প্রতি ডিভিডেন্ড';

  @override
  String get labelPayoutRatio => 'পেআউট অনুপাত';

  @override
  String get labelConsensus => 'ঐকমত্য';

  @override
  String get ratingStrongBuy => 'স্ট্রং বাই';

  @override
  String get ratingBuy => 'বাই';

  @override
  String get ratingHold => 'হোল্ড';

  @override
  String get ratingSell => 'সেল';

  @override
  String get ratingStrongSell => 'স্ট্রং সেল';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count বিশ্লেষক', one: '1 বিশ্লেষক');
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'সময়কাল: $period';
  }

  @override
  String get noNews => 'সম্প্রতি কোনো খবর নেই।';

  @override
  String get openArticle => 'নিবন্ধ খুলুন';

  @override
  String get openLinkFailed => 'লিংক খোলা যায়নি।';

  @override
  String get recognitionSummary => 'সারসংক্ষেপ';

  @override
  String get recognitionEvidence => 'আমরা এমন মনে করি কেন';

  @override
  String get recognitionRawText => 'ছবি থেকে পড়া টেক্সট';

  @override
  String get errMissingAnthropicKey =>
      'ছবি শনাক্তকরণ কনফিগার করা নেই (ANTHROPIC_API_KEY নেই)। টিকার ম্যানুয়ালি লিখুন।';

  @override
  String get errRecognitionUnreachable => 'শনাক্তকরণ সেবার সাথে সংযোগ করা যায়নি। আপনার ইন্টারনেট সংযোগ পরীক্ষা করুন।';

  @override
  String errRecognitionHttp(String status) {
    return 'শনাক্তকরণ সেবা একটি ত্রুটি ফেরত দিয়েছে (HTTP $status)।';
  }

  @override
  String get errRecognitionRefused => 'শনাক্তকরণ সেবা এই ছবিটি প্রক্রিয়া করতে পারেনি।';

  @override
  String get errRecognitionTruncated => 'শনাক্তকরণের উত্তর অসম্পূর্ণ ছিল। অনুগ্রহ করে আবার চেষ্টা করুন।';

  @override
  String get errRecognitionBadResponse => 'শনাক্তকরণ সেবা থেকে অপ্রত্যাশিত উত্তর।';

  @override
  String get errRecognitionEmpty => 'শনাক্তকরণ সেবা একটি খালি উত্তর ফেরত দিয়েছে।';

  @override
  String get errMissingFinnhubKey => 'মার্কেট ডেটা কনফিগার করা নেই (FINNHUB_API_KEY নেই)।';

  @override
  String get errMarketUnreachable => 'মার্কেট ডেটা সেবার সাথে সংযোগ করা যায়নি। আপনার ইন্টারনেট সংযোগ পরীক্ষা করুন।';

  @override
  String get errMarketRateLimited =>
      'মার্কেট ডেটা সেবায় অত্যধিক অনুরোধ পাঠানো হয়েছে। অনুগ্রহ করে এক মিনিট অপেক্ষা করুন।';

  @override
  String errMarketHttp(String status) {
    return 'মার্কেট ডেটা সেবা একটি ত্রুটি ফেরত দিয়েছে (HTTP $status)।';
  }

  @override
  String get errMarketBadResponse => 'মার্কেট ডেটা সেবা থেকে অপ্রত্যাশিত উত্তর।';

  @override
  String errNoQuote(String symbol) {
    return '$symbol-এর জন্য কোনো দামের ডেটা পাওয়া যায়নি।';
  }

  @override
  String errNoProfile(String symbol) {
    return '$symbol-এর জন্য কোনো কোম্পানি প্রোফাইল পাওয়া যায়নি।';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'ডেমো মোড শুধুমাত্র $symbols সমর্থন করে। লাইভ ডেটার জন্য একটি FINNHUB_API_KEY যোগ করুন।';
  }

  @override
  String errUnknown(String detail) {
    return 'কিছু একটা ভুল হয়েছে: $detail';
  }

  @override
  String get newSearch => 'নতুন অনুসন্ধান';

  @override
  String get recentSearches => 'সাম্প্রতিক';

  @override
  String get noRecentSearches => 'এখনও কোনো সাম্প্রতিক অনুসন্ধান নেই।';

  @override
  String get clearRecent => 'সাম্প্রতিক মুছুন';

  @override
  String get greeting => 'আজ কোন শেয়ারটি দেখবেন?';

  @override
  String get searchHint => 'টিকার বা কোম্পানির নাম';

  @override
  String get attachImage => 'ছবি যুক্ত করুন';

  @override
  String get searchResultsTitle => 'অনুসন্ধানের ফলাফল';

  @override
  String errNoResults(String query) {
    return '“$query”-এর জন্য কোনো শেয়ার পাওয়া যায়নি।';
  }

  @override
  String get quickBarHint => 'টিকার বা কোম্পানির নাম লিখুন…';

  @override
  String get openFullWindow => 'উইন্ডো খুলুন';

  @override
  String hotkeyHint(String shortcut) {
    return 'যেকোনো জায়গা থেকে StockLens খুলতে $shortcut চাপুন।';
  }

  @override
  String get trayOpen => 'StockLens খুলুন';

  @override
  String get trayQuickSearch => 'দ্রুত অনুসন্ধান';

  @override
  String get trayQuit => 'প্রস্থান';

  @override
  String get appearance => 'চেহারা';

  @override
  String get themeSystem => 'সিস্টেম';

  @override
  String get themeDark => 'ডার্ক';

  @override
  String get themeLight => 'লাইট';

  @override
  String get back => 'ফিরে যান';

  @override
  String get aiSectionTitle => 'AI বিশ্লেষণ';

  @override
  String get aiIntro =>
      'AI-এর লেখা বিস্তারিত পর্যালোচনা: সাম্প্রতিক খবরের সারসংক্ষেপ, ব্যবসা, শক্তির দিক, ঝুঁকি ও লুকানো বিষয়, মূল্যায়ন, মনস্তাত্ত্বিক, সামাজিক, প্রযুক্তিগত ও সামষ্টিক দৃষ্টিকোণ থেকে পরিস্থিতিসহ দামের পূর্বাভাস এবং কোন বিষয়গুলিতে নজর রাখবেন।';

  @override
  String get aiGenerate => 'বিশ্লেষণ তৈরি করুন';

  @override
  String get aiRegenerate => 'আবার তৈরি করুন';

  @override
  String get aiGenerating => 'বিশ্লেষণ প্রস্তুত করা হচ্ছে… এতে এক-দুই মিনিট লাগতে পারে।';

  @override
  String get aiSources => 'উৎস';

  @override
  String aiGeneratedAt(String time) {
    return 'তৈরি $time';
  }

  @override
  String get aiDisclaimer =>
      'সর্বজনীন ডেটা ও সাম্প্রতিক খবরের ভিত্তিতে AI-তৈরি বিশ্লেষণ। এতে ভুল থাকতে পারে বা এটি পুরোনো হতে পারে, এবং এটি বিনিয়োগ পরামর্শ নয়।';

  @override
  String get errAiNotConfigured => 'AI বিশ্লেষণ কনফিগার করা নেই (ANTHROPIC_API_KEY নেই)।';

  @override
  String get errAiUnreachable => 'AI সেবার সাথে সংযোগ করা যায়নি। আপনার ইন্টারনেট সংযোগ পরীক্ষা করুন।';

  @override
  String errAiHttp(String status) {
    return 'AI সেবা একটি ত্রুটি ফেরত দিয়েছে (HTTP $status)।';
  }

  @override
  String get errAiRefused => 'AI সেবা এই শেয়ারটি বিশ্লেষণ করতে অস্বীকার করেছে।';

  @override
  String get errAiBadResponse => 'AI সেবা থেকে অপ্রত্যাশিত উত্তর।';

  @override
  String get sectionChart => 'দামের চার্ট';

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
  String get chartUnavailable => 'বর্তমান ডেটা উৎস থেকে দামের ইতিহাস পাওয়া যায় না।';

  @override
  String get sectionStatements => 'আর্থিক বিবরণী (বার্ষিক)';

  @override
  String get labelFiscalYear => 'অর্থবছর';

  @override
  String get labelRevenue => 'রাজস্ব';

  @override
  String get labelNetIncome => 'নিট আয়';

  @override
  String get labelTotalAssets => 'মোট সম্পদ';

  @override
  String get labelTotalLiabilities => 'মোট দায়';

  @override
  String get labelEquity => 'শেয়ারহোল্ডারদের ইক্যুইটি';

  @override
  String get labelOperatingCashFlow => 'অপারেটিং ক্যাশ ফ্লো';

  @override
  String get statementsUnavailable => 'এই শেয়ারের জন্য প্রকাশিত আর্থিক বিবরণী পাওয়া যায়নি।';

  @override
  String get launchAtLogin => 'লগইনের সময় চালু করুন';

  @override
  String get hotkeyLabel => 'গ্লোবাল শর্টকাট';

  @override
  String get hotkeyRecordHint => 'এখানে ক্লিক করুন, তারপর নতুন কী কম্বিনেশন চাপুন';

  @override
  String get hotkeyReset => 'ডিফল্টে রিসেট করুন';

  @override
  String get pasteImage => 'ক্লিপবোর্ড থেকে ছবি পেস্ট করুন';

  @override
  String get errClipboardNoImage => 'ক্লিপবোর্ডে কোনো ছবি নেই।';

  @override
  String get favorites => 'পছন্দের';

  @override
  String get addToFavorites => 'পছন্দের তালিকায় যোগ করুন';

  @override
  String get removeFromFavorites => 'পছন্দের তালিকা থেকে সরান';

  @override
  String get noFavorites => 'এখনও কোনো পছন্দের শেয়ার নেই। যোগ করতে কোনো শেয়ারের তারায় ট্যাপ করুন।';

  @override
  String get displayCurrency => 'প্রদর্শনের মুদ্রা';

  @override
  String get displayCurrencyNone => 'শুধু শেয়ারের নিজস্ব মুদ্রা';

  @override
  String labelConverted(String currency) {
    return '≈ $currency-এ';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'হার: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'আপডেট';

  @override
  String currentVersion(String version) {
    return 'সংস্করণ $version';
  }

  @override
  String get autoUpdate => 'আপডেট স্বয়ংক্রিয়ভাবে ইনস্টল করুন';

  @override
  String get checkForUpdates => 'আপডেট পরীক্ষা করুন';

  @override
  String get updateChecking => 'আপডেট পরীক্ষা করা হচ্ছে…';

  @override
  String get updateUpToDate => 'আপনি সর্বশেষ সংস্করণ ব্যবহার করছেন।';

  @override
  String updateAvailable(String version) {
    return 'সংস্করণ $version উপলব্ধ।';
  }

  @override
  String get updateDownloading => 'ব্যাকগ্রাউন্ডে আপডেট ডাউনলোড হচ্ছে…';

  @override
  String get updateDownloaded => 'আপডেট প্রস্তুত। ইনস্টল করতে পুনরায় চালু করুন।';

  @override
  String get updateNow => 'আপডেট';

  @override
  String get restartNow => 'পুনরায় চালু করুন';

  @override
  String get updatesViaStore => 'আপডেট অ্যাপ স্টোরের মাধ্যমে স্বয়ংক্রিয়ভাবে আসে।';

  @override
  String get updateCheckFailed => 'আপডেট পরীক্ষা করা যায়নি।';

  @override
  String get subscription => 'সাবস্ক্রিপশন';

  @override
  String get planTrial => 'ট্রায়াল';

  @override
  String get planNormal => 'সাধারণ';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'কোনো সক্রিয় প্ল্যান নেই';

  @override
  String planAnalysesPerMonth(int count) {
    return 'প্রতি মাসে $count বিশ্লেষণ';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$count বিশ্লেষণ সহ $days দিনের বিনামূল্যে ট্রায়াল';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'ট্রায়ালের $days দিন বাকি',
      one: 'ট্রায়ালের 1 দিন বাকি',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired => 'আপনার বিনামূল্যের ট্রায়াল শেষ হয়েছে। বিশ্লেষণ চালিয়ে যেতে একটি প্ল্যান বেছে নিন।';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'এই মেয়াদে $totalটির মধ্যে $remainingটি বিশ্লেষণ বাকি';
  }

  @override
  String extraCredits(int count) {
    return '$count অতিরিক্ত বিশ্লেষণ';
  }

  @override
  String renewsOn(String date) {
    return '$date তারিখে নবায়ন';
  }

  @override
  String get choosePlan => 'একটি প্ল্যান বেছে নিন';

  @override
  String get currentPlan => 'বর্তমান প্ল্যান';

  @override
  String get subscribe => 'সাবস্ক্রাইব করুন';

  @override
  String get perMonth => '/ মাস';

  @override
  String get extraPacksTitle => 'আরও চাই? অতিরিক্ত বিশ্লেষণ কিনুন';

  @override
  String get extraPacksHint => 'অতিরিক্ত বিশ্লেষণের মেয়াদ কখনো শেষ হয় না এবং আপনার মাসিক কোটার পরে ব্যবহার হয়।';

  @override
  String get buy => 'কিনুন';

  @override
  String get restorePurchases => 'কেনাকাটা পুনরুদ্ধার করুন';

  @override
  String get manageSubscription => 'সাবস্ক্রিপশন পরিচালনা করুন';

  @override
  String get purchaseSuccess => 'ধন্যবাদ! আপনার কেনাকাটা সক্রিয় হয়েছে।';

  @override
  String get purchasePending => 'কেনাকাটা প্রক্রিয়াধীন…';

  @override
  String get purchaseFailed => 'কেনাকাটা সম্পন্ন করা যায়নি।';

  @override
  String get purchaseCanceled => 'কেনাকাটা বাতিল করা হয়েছে।';

  @override
  String get billingUnavailable =>
      'এই প্ল্যাটফর্মে কেনাকাটা এখনও উপলব্ধ নয়। আপনার ফোন বা Mac-এ সাবস্ক্রাইব করুন; আপনার প্ল্যান সব ডিভাইসে কাজ করবে।';

  @override
  String get errQuotaExceeded =>
      'এই মেয়াদে আপনার কোনো বিশ্লেষণ বাকি নেই। আপনার প্ল্যান আপগ্রেড করুন বা অতিরিক্ত বিশ্লেষণ কিনুন।';

  @override
  String get errTrialExpired => 'আপনার বিনামূল্যের ট্রায়াল শেষ হয়েছে। চালিয়ে যেতে একটি প্ল্যান বেছে নিন।';

  @override
  String get errNoPlan => 'AI বিশ্লেষণের জন্য একটি সক্রিয় প্ল্যান প্রয়োজন।';

  @override
  String get viewPlans => 'প্ল্যান দেখুন';

  @override
  String get usageTitle => 'ব্যবহার';

  @override
  String get demoPurchaseNote => 'ডেমো বিলিং: এই প্ল্যাটফর্মে কেনাকাটা সিমুলেট করা হয়।';

  @override
  String get mostPopular => 'সবচেয়ে জনপ্রিয়';

  @override
  String get bestValue => 'সেরা মূল্য';

  @override
  String get planFeaturesCommon =>
      'ছবি শনাক্তকরণ, লাইভ ডেটা, চার্ট, পছন্দের তালিকা এবং সব 44টি ভাষা প্রতিটি প্ল্যানে অন্তর্ভুক্ত। কোটা AI বিশ্লেষণের জন্য প্রযোজ্য।';

  @override
  String get searchLanguages => 'ভাষা খুঁজুন…';

  @override
  String get noLanguageMatch => 'কোনো ভাষা মেলেনি।';

  @override
  String get aiSettings => 'AI বিশ্লেষণ';

  @override
  String get aiLength => 'দৈর্ঘ্য';

  @override
  String get aiDepthBrief => 'সংক্ষিপ্ত';

  @override
  String get aiDepthStandard => 'স্ট্যান্ডার্ড';

  @override
  String get aiDepthDeep => 'বিস্তারিত';

  @override
  String get aiDepthBriefDesc => 'মূল বিষয়গুলো, দ্রুত।';

  @override
  String get aiDepthStandardDesc => 'সব অংশসহ পূর্ণাঙ্গ প্রতিবেদন।';

  @override
  String get aiDepthDeepDesc => 'আরও বেশি ওয়েব অনুসন্ধান, সমকক্ষ কোম্পানির সঙ্গে তুলনা এবং আরও গভীর বিবরণ।';

  @override
  String aiDepthWords(String min, String max) {
    return 'প্রায় $min–$max শব্দ';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি বিশ্লেষণ খরচ হয়',
      one: '1টি বিশ্লেষণ খরচ হয়',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'পাঠকের স্তর';

  @override
  String get aiReaderBeginner => 'নতুন';

  @override
  String get aiReaderExperienced => 'অভিজ্ঞ';

  @override
  String get aiReaderBeginnerDesc => 'সহজ ভাষা; প্রতিটি প্রযুক্তিগত শব্দ ব্যাখ্যা করা হয়।';

  @override
  String get aiReaderExperiencedDesc => 'প্রচলিত আর্থিক পরিভাষাসহ ঘন লেখা।';

  @override
  String get aiCounterArgument => 'সবচেয়ে জোরালো পাল্টা যুক্তি';

  @override
  String get aiCounterArgumentDesc =>
      'সারসংক্ষেপ সবসময় নিজের সিদ্ধান্তের বিরুদ্ধে সবচেয়ে জোরালো যুক্তি দিয়ে শেষ হয়।';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'আপনার প্ল্যানে প্রতি বিশ্লেষণে সর্বোচ্চ $countটি ওয়েব অনুসন্ধান',
      one: 'আপনার প্ল্যানে প্রতি বিশ্লেষণে সর্বোচ্চ 1টি ওয়েব অনুসন্ধান',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'প্ল্যান অনুযায়ী স্ট্যান্ডার্ড দৈর্ঘ্য: সাধারণ $normal, Pro $pro, Max $max, Ultra $ultra। সংক্ষিপ্তে 2টি কম, বিস্তারিতে 2টি বেশি।';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'সর্বোচ্চ $countটি ওয়েব অনুসন্ধান',
      one: 'সর্বোচ্চ 1টি ওয়েব অনুসন্ধান',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'প্রতি বিশ্লেষণে $countটি ওয়েব অনুসন্ধান',
      one: 'প্রতি বিশ্লেষণে 1টি ওয়েব অনুসন্ধান',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'এই দৈর্ঘ্যের জন্য $neededটি বিশ্লেষণ প্রয়োজন, কিন্তু মাত্র $leftটি বাকি আছে। সেটিংসে ছোট দৈর্ঘ্য বেছে নিন বা আরও বিশ্লেষণ নিন।';
  }
}
