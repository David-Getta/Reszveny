// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'একটি শেয়ারের ছবি তুলুন এবং তার সম্পর্কে সব জানুন।';

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
  String get labelYieldOnCost => 'খরচের ওপর ইল্ড';

  @override
  String get labelDividendGrowth5y => 'ডিভিডেন্ড বৃদ্ধি (5 বছর)';

  @override
  String get dividendNone => 'গত 12 মাসে কোনো ডিভিডেন্ড দেওয়া হয়নি।';

  @override
  String get dividendOnYourShares => 'আপনার শেয়ারে, বছরে';

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
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count বিশ্লেষক',
      one: '1 বিশ্লেষক',
    );
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
  String get errRecognitionUnreachable =>
      'শনাক্তকরণ সেবার সাথে সংযোগ করা যায়নি। আপনার ইন্টারনেট সংযোগ পরীক্ষা করুন।';

  @override
  String errRecognitionHttp(String status) {
    return 'শনাক্তকরণ সেবা একটি ত্রুটি ফেরত দিয়েছে (HTTP $status)।';
  }

  @override
  String get errRecognitionRefused =>
      'শনাক্তকরণ সেবা এই ছবিটি প্রক্রিয়া করতে পারেনি।';

  @override
  String get errRecognitionTruncated =>
      'শনাক্তকরণের উত্তর অসম্পূর্ণ ছিল। অনুগ্রহ করে আবার চেষ্টা করুন।';

  @override
  String get errRecognitionBadResponse =>
      'শনাক্তকরণ সেবা থেকে অপ্রত্যাশিত উত্তর।';

  @override
  String get errRecognitionEmpty =>
      'শনাক্তকরণ সেবা একটি খালি উত্তর ফেরত দিয়েছে।';

  @override
  String get errMissingFinnhubKey =>
      'মার্কেট ডেটা কনফিগার করা নেই (FINNHUB_API_KEY নেই)।';

  @override
  String get errMarketUnreachable =>
      'মার্কেট ডেটা সেবার সাথে সংযোগ করা যায়নি। আপনার ইন্টারনেট সংযোগ পরীক্ষা করুন।';

  @override
  String get errMarketRateLimited =>
      'মার্কেট ডেটা সেবায় অত্যধিক অনুরোধ পাঠানো হয়েছে। অনুগ্রহ করে এক মিনিট অপেক্ষা করুন।';

  @override
  String errMarketHttp(String status) {
    return 'মার্কেট ডেটা সেবা একটি ত্রুটি ফেরত দিয়েছে (HTTP $status)।';
  }

  @override
  String get errMarketBadResponse =>
      'মার্কেট ডেটা সেবা থেকে অপ্রত্যাশিত উত্তর।';

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
    return 'যেকোনো জায়গা থেকে WhatStock খুলতে $shortcut চাপুন।';
  }

  @override
  String get trayOpen => 'WhatStock খুলুন';

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
  String get aiGenerating =>
      'বিশ্লেষণ প্রস্তুত করা হচ্ছে… এতে এক-দুই মিনিট লাগতে পারে।';

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
  String get errAiNotConfigured =>
      'AI বিশ্লেষণ কনফিগার করা নেই (ANTHROPIC_API_KEY নেই)।';

  @override
  String get errAiUnreachable =>
      'AI সেবার সাথে সংযোগ করা যায়নি। আপনার ইন্টারনেট সংযোগ পরীক্ষা করুন।';

  @override
  String errAiHttp(String status) {
    return 'AI সেবা একটি ত্রুটি ফেরত দিয়েছে (HTTP $status)।';
  }

  @override
  String get errAiRefused =>
      'AI সেবা এই শেয়ারটি বিশ্লেষণ করতে অস্বীকার করেছে।';

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
  String get chartUnavailable =>
      'বর্তমান ডেটা উৎস থেকে দামের ইতিহাস পাওয়া যায় না।';

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
  String get statementsUnavailable =>
      'এই শেয়ারের জন্য প্রকাশিত আর্থিক বিবরণী পাওয়া যায়নি।';

  @override
  String get launchAtLogin => 'লগইনের সময় চালু করুন';

  @override
  String get hotkeyLabel => 'গ্লোবাল শর্টকাট';

  @override
  String get hotkeyRecordHint =>
      'এখানে ক্লিক করুন, তারপর নতুন কী কম্বিনেশন চাপুন';

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
  String get noFavorites =>
      'এখনও কোনো পছন্দের শেয়ার নেই। যোগ করতে কোনো শেয়ারের তারায় ট্যাপ করুন।';

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
  String get updateDownloaded =>
      'আপডেট প্রস্তুত। ইনস্টল করতে পুনরায় চালু করুন।';

  @override
  String get updateNow => 'আপডেট';

  @override
  String get restartNow => 'পুনরায় চালু করুন';

  @override
  String get updatesViaStore =>
      'আপডেট অ্যাপ স্টোরের মাধ্যমে স্বয়ংক্রিয়ভাবে আসে।';

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
  String get trialExpired =>
      'আপনার বিনামূল্যের ট্রায়াল শেষ হয়েছে। বিশ্লেষণ চালিয়ে যেতে একটি প্ল্যান বেছে নিন।';

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
  String get extraPacksHint =>
      'অতিরিক্ত বিশ্লেষণের মেয়াদ কখনো শেষ হয় না এবং আপনার মাসিক কোটার পরে ব্যবহার হয়।';

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
  String get errTrialExpired =>
      'আপনার বিনামূল্যের ট্রায়াল শেষ হয়েছে। চালিয়ে যেতে একটি প্ল্যান বেছে নিন।';

  @override
  String get errNoPlan => 'AI বিশ্লেষণের জন্য একটি সক্রিয় প্ল্যান প্রয়োজন।';

  @override
  String get viewPlans => 'প্ল্যান দেখুন';

  @override
  String get usageTitle => 'ব্যবহার';

  @override
  String get demoPurchaseNote =>
      'ডেমো বিলিং: এই প্ল্যাটফর্মে কেনাকাটা সিমুলেট করা হয়।';

  @override
  String get mostPopular => 'সবচেয়ে জনপ্রিয়';

  @override
  String get bestValue => 'সেরা মূল্য';

  @override
  String get planFeaturesCommon =>
      'ছবি শনাক্তকরণ, লাইভ ডেটা, চার্ট, পছন্দের তালিকা এবং সব 120টি ভাষা প্রতিটি প্ল্যানে অন্তর্ভুক্ত। কোটা AI বিশ্লেষণের জন্য প্রযোজ্য।';

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
  String get aiDepthDeepDesc =>
      'আরও বেশি ওয়েব অনুসন্ধান, সমকক্ষ কোম্পানির সঙ্গে তুলনা এবং আরও গভীর বিবরণ।';

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
  String get aiReaderBeginnerDesc =>
      'সহজ ভাষা; প্রতিটি প্রযুক্তিগত শব্দ ব্যাখ্যা করা হয়।';

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

  @override
  String get outlookMarketMood => 'বাজারের মেজাজ';

  @override
  String get moodVeryPessimistic => 'অত্যন্ত হতাশাবাদী';

  @override
  String get moodPessimistic => 'হতাশাবাদী';

  @override
  String get moodNeutral => 'নিরপেক্ষ';

  @override
  String get moodOptimistic => 'আশাবাদী';

  @override
  String get moodVeryOptimistic => 'অত্যন্ত আশাবাদী';

  @override
  String get scenarioBull => 'তেজি পরিস্থিতি';

  @override
  String get scenarioBase => 'ভিত্তি পরিস্থিতি';

  @override
  String get scenarioBear => 'মন্দা পরিস্থিতি';

  @override
  String outlookCurrentPrice(String price) {
    return 'বর্তমান দাম: $price';
  }

  @override
  String get outlookKeyLevels => 'গুরুত্বপূর্ণ স্তর';

  @override
  String get keyLevelSupport => 'সাপোর্ট';

  @override
  String get keyLevelResistance => 'রেজিস্ট্যান্স';

  @override
  String get keyLevelAnchor => 'অ্যাঙ্কর স্তর';

  @override
  String get upcomingEvents => 'আসন্ন ঘটনা';

  @override
  String get outlookChartNote =>
      'আনুমানিক পরিসর; সম্ভাবনাগুলি মোটামুটি অনুমান, পূর্বাভাস নয়।';

  @override
  String get accountTitle => 'অ্যাকাউন্ট';

  @override
  String get signIn => 'সাইন ইন';

  @override
  String get signOut => 'সাইন আউট';

  @override
  String get notSignedIn => 'সাইন ইন করা নেই';

  @override
  String get accountBenefit =>
      'সাইন ইন করুন, যাতে আপনার সাবস্ক্রিপশন আপনার সব ডিভাইসে কাজ করে।';

  @override
  String get accountSyncedNote =>
      'আপনার সাবস্ক্রিপশন ও বাকি বিশ্লেষণ প্রতিটি ডিভাইসে একই থাকে।';

  @override
  String get signInTitle => 'WhatStock-এ সাইন ইন করুন';

  @override
  String get emailLabel => 'ইমেল ঠিকানা';

  @override
  String get continueWithEmail => 'ইমেল দিয়ে চালিয়ে যান';

  @override
  String codeSentTo(String email) {
    return 'আমরা $email-এ একটি 6 সংখ্যার কোড পাঠিয়েছি। এটি 10 মিনিট বৈধ থাকবে।';
  }

  @override
  String get codeLabel => 'সাইন-ইন কোড';

  @override
  String get resendCode => 'নতুন কোড পাঠান';

  @override
  String get useDifferentEmail => 'অন্য ইমেল ব্যবহার করুন';

  @override
  String get errInvalidCode => 'কোডটি ভুল বা এর মেয়াদ শেষ হয়ে গেছে।';

  @override
  String get errInvalidEmail => 'অনুগ্রহ করে একটি বৈধ ইমেল ঠিকানা লিখুন।';

  @override
  String get errSignInFailed =>
      'সাইন ইন ব্যর্থ হয়েছে। আপনার ইন্টারনেট সংযোগ পরীক্ষা করে আবার চেষ্টা করুন।';

  @override
  String get checkoutWaiting =>
      'আপনার ব্রাউজারে পেমেন্ট সম্পূর্ণ করুন। শেষ হলে অ্যাপটি স্বয়ংক্রিয়ভাবে আপডেট হবে।';

  @override
  String get paymentViaStripe =>
      'Stripe-এর মাধ্যমে আপনার ব্রাউজারে নিরাপদ পেমেন্ট। যেকোনো সময় বাতিল করতে পারেন।';

  @override
  String get paymentViaStore =>
      'আপনার App Store বা Google Play অ্যাকাউন্টের মাধ্যমে বিল করা হয়। স্টোরের সেটিংসে যেকোনো সময় বাতিল করতে পারেন।';

  @override
  String get keySpace => 'স্পেস';

  @override
  String get doubleOptionTitle => 'Option দুবার চাপুন';

  @override
  String get doubleOptionSubtitle =>
      'Option কী দ্রুত দুবার চাপলেও WhatStock খুলে যায়।';

  @override
  String get doubleOptionPermission =>
      'অন্য অ্যাপেও এটি কাজ করাতে সিস্টেম সেটিংস → গোপনীয়তা ও নিরাপত্তা → ইনপুট মনিটরিং-এ WhatStock-কে অনুমতি দিন, তারপর অ্যাপটি আবার খুলুন।';

  @override
  String get openSystemSettings => 'সিস্টেম সেটিংস খুলুন';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'যেকোনো জায়গা থেকে WhatStock খুলতে $shortcut চাপুন বা Option দুবার চাপুন।';
  }

  @override
  String get scenarioMostLikely => 'সবচেয়ে সম্ভাব্য';

  @override
  String get longTermToday => 'আজ';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years বছর',
      one: '$years বছর',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return 'বছরে $range';
  }

  @override
  String longTermLikely(String price) {
    return 'সবচেয়ে সম্ভাব্য $price';
  }

  @override
  String get confidenceLow => 'কম আস্থা';

  @override
  String get confidenceMedium => 'মাঝারি আস্থা';

  @override
  String get confidenceHigh => 'উচ্চ আস্থা';

  @override
  String get longTermNote =>
      'দীর্ঘমেয়াদি পরিসরগুলি উল্লিখিত অনুমানের উপর ভিত্তি করে এবং সময়ের সঙ্গে প্রশস্ত হয়। দামে লভ্যাংশ ধরা হয়নি। মোটামুটি অনুমান, পূর্বাভাস নয়।';

  @override
  String get portfolio => 'পোর্টফোলিও';

  @override
  String get portfolioEmpty =>
      'এখনও কিছু নেই। একটি শেয়ার খুলুন এবং আপনার মালিকানা অনুসরণ করতে “পোর্টফোলিওতে যোগ করুন”-এ ট্যাপ করুন।';

  @override
  String get portfolioLocalNote =>
      'শুধু এই ডিভাইসেই সংরক্ষিত হয়। মোট হিসাব ইসিবি-র রেফারেন্স হারে রূপান্তরিত হয়; দাম দেরিতে আসতে পারে।';

  @override
  String get addToPortfolio => 'পোর্টফোলিওতে যোগ করুন';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol যোগ করুন';
  }

  @override
  String get portfolioQuantity => 'শেয়ারের সংখ্যা';

  @override
  String portfolioBuyPrice(String currency) {
    return 'প্রতি শেয়ারের দাম ($currency)';
  }

  @override
  String get portfolioBuyDate => 'কেনার তারিখ';

  @override
  String get portfolioAdd => 'যোগ করুন';

  @override
  String get portfolioInvalidNumber => 'শূন্যের চেয়ে বড় একটি সংখ্যা লিখুন।';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol পোর্টফোলিওতে যোগ হয়েছে।';
  }

  @override
  String get portfolioTotalValue => 'মোট মূল্য';

  @override
  String get portfolioToday => 'আজ';

  @override
  String get portfolioGainLoss => 'লাভ/ক্ষতি';

  @override
  String homeDividendsThisYear(String amount) {
    return 'এ বছরের ডিভিডেন্ড: $amount';
  }

  @override
  String get portfolioInvested => 'বিনিয়োগ';

  @override
  String get portfolioAllocation => 'বণ্টন';

  @override
  String get portfolioPositions => 'অবস্থান';

  @override
  String portfolioAvgCost(String price) {
    return 'গড় ক্রয়মূল্য $price';
  }

  @override
  String get portfolioYourPosition => 'আপনার অবস্থান';

  @override
  String get portfolioPurchases => 'ক্রয়সমূহ';

  @override
  String get portfolioRemove => 'সরান';

  @override
  String get portfolioExcluded =>
      'দাম বা বিনিময় হার ছাড়া অবস্থানগুলি মোট হিসাবে ধরা হয় না।';

  @override
  String get priceAlerts => 'দামের সতর্কতা';

  @override
  String get setPriceAlert => 'দামের সতর্কতা সেট করুন';

  @override
  String alertDialogTitle(String symbol) {
    return 'দামের সতর্কতা · $symbol';
  }

  @override
  String get alertKindAbove => 'এর উপরে উঠলে';

  @override
  String get alertKindBelow => 'এর নিচে নামলে';

  @override
  String get alertKindMove => 'এক দিনে অনেক নড়লে';

  @override
  String alertTargetPrice(String currency) {
    return 'দাম ($currency)';
  }

  @override
  String get alertMovePercent => 'দৈনিক পরিবর্তন (%)';

  @override
  String get alertAlreadyMet => 'দাম ইতিমধ্যে এই স্তর পেরিয়ে গেছে।';

  @override
  String get alertSave => 'সতর্কতা সেট করুন';

  @override
  String alertCreated(String symbol) {
    return '$symbol-এর জন্য সতর্কতা সেট হয়েছে।';
  }

  @override
  String get alertsEmpty =>
      'এখনও কোনো সতর্কতা নেই। একটি শেয়ার খুলুন এবং ঘণ্টায় ট্যাপ করুন।';

  @override
  String get alertsNote =>
      'WhatStock চালু থাকাকালীন প্রতি ৫ মিনিটে সতর্কতা যাচাই করা হয়। কম্পিউটারে অ্যাপটি মেনু বার বা সিস্টেম ট্রেতে চলতে থাকে; ফোনে আপাতত অ্যাপ খোলা থাকলেই সতর্কতা আসে।';

  @override
  String alertDescAbove(String price) {
    return '$price-এর উপরে';
  }

  @override
  String alertDescBelow(String price) {
    return '$price-এর নিচে';
  }

  @override
  String alertDescMove(String percent) {
    return 'দৈনিক পরিবর্তন ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return '$date-এ $price দামে সক্রিয় হয়েছে';
  }

  @override
  String get alertRearm => 'আবার চালু করুন';

  @override
  String get alertDelete => 'মুছুন';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol $price-এর উপরে উঠেছে';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol $price-এর নিচে নেমেছে';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol আজ $percent নড়েছে';
  }

  @override
  String alertHitBody(String price) {
    return 'বর্তমান দাম: $price';
  }

  @override
  String get alertOpen => 'খুলুন';

  @override
  String get keepInTrayTitle => 'উইন্ডো বন্ধ করলেও চালু থাকুক';

  @override
  String get keepInTraySubtitle =>
      'WhatStock মেনু বার বা সিস্টেম ট্রেতে থাকে, তাই শর্টকাট ও দামের সতর্কতা কাজ করতে থাকে।';

  @override
  String get termsOfUse => 'ব্যবহারের শর্তাবলি';

  @override
  String get privacyPolicy => 'গোপনীয়তা নীতি';

  @override
  String get subscriptionLegal =>
      'আপনি বাতিল না করা পর্যন্ত সাবস্ক্রিপশন প্রতি মাসে নিজে থেকে নবায়ন হয়। সাবস্ক্রাইব করে আপনি ব্যবহারের শর্তাবলি ও গোপনীয়তা নীতি মেনে নেন।';

  @override
  String get deleteAccount => 'অ্যাকাউন্ট মুছুন';

  @override
  String get deleteAccountTitle => 'আপনার অ্যাকাউন্ট মুছবেন?';

  @override
  String get deleteAccountBody =>
      'আপনার অ্যাকাউন্ট এবং আমাদের সার্ভারে রাখা সবকিছু (ইমেল, সীমা, ব্যবহার) স্থায়ীভাবে মুছে যাবে, এবং অব্যবহৃত বিশ্লেষণ হারিয়ে যাবে। ব্রাউজারে পরিশোধিত সাবস্ক্রিপশন সঙ্গে সঙ্গে বাতিল হয়; App Store বা Google Play-এর সাবস্ক্রিপশন স্টোরের সেটিংসে বাতিল করতে হবে।';

  @override
  String get deleteLocalData =>
      'এই ডিভাইসের ডেটাও মুছুন (পোর্টফোলিও, সতর্কতা, পছন্দের তালিকা, ইতিহাস, সংরক্ষিত বিশ্লেষণ)';

  @override
  String get deleteAccountConfirm => 'স্থায়ীভাবে মুছুন';

  @override
  String get accountDeleted => 'আপনার অ্যাকাউন্ট মুছে ফেলা হয়েছে।';

  @override
  String get errDeleteAccount =>
      'অ্যাকাউন্ট মোছা যায়নি। সংযোগ পরীক্ষা করে আবার চেষ্টা করুন।';

  @override
  String get aiTrialBriefNote =>
      'ট্রায়ালের বিশ্লেষণগুলি সংক্ষিপ্ত এবং একটি দ্রুততর AI মডেল দিয়ে তৈরি। প্ল্যান নিলে আপনি পাবেন আমাদের সবচেয়ে সক্ষম AI, আরও বেশি ওয়েব অনুসন্ধান এবং স্ট্যান্ডার্ড ও বিস্তারিত দৈর্ঘ্য।';

  @override
  String get billingMonthly => 'মাসিক';

  @override
  String get billingYearly => 'বার্ষিক';

  @override
  String get yearlyDiscount => '2 মাস ফ্রি';

  @override
  String get perYear => '/ বছর';

  @override
  String pricePerMonthApprox(String price) {
    return 'প্রতি মাসে ≈ $price';
  }

  @override
  String get subscriptionLegalYearly =>
      'আপনি বাতিল না করা পর্যন্ত বার্ষিক সাবস্ক্রিপশন প্রতি বছর নিজে থেকে নবায়ন হয়। সাবস্ক্রাইব করে আপনি ব্যবহারের শর্তাবলি ও গোপনীয়তা নীতি মেনে নেন।';

  @override
  String get myAnalyses => 'আমার বিশ্লেষণ';

  @override
  String get navAlerts => 'সতর্কতা';

  @override
  String get inviteTitle => 'বন্ধ প্রিভিউ';

  @override
  String get inviteBody =>
      'WhatStock আপাতত শুধু আমন্ত্রণের মাধ্যমে পাওয়া যায়। আপনি যে আমন্ত্রণ কোড পেয়েছেন সেটি লিখুন।';

  @override
  String get inviteCodeLabel => 'আমন্ত্রণ কোড';

  @override
  String get inviteContinue => 'চালিয়ে যান';

  @override
  String get inviteInvalid => 'এই আমন্ত্রণ কোডটি বৈধ নয়।';

  @override
  String get inviteExpired =>
      'এই আমন্ত্রণের মেয়াদ শেষ হয়ে গেছে। যিনি আপনাকে আমন্ত্রণ জানিয়েছেন, তাঁর কাছে একটি নতুন কোড চান।';

  @override
  String get inviteDeviceLimit =>
      'এই আমন্ত্রণ কোডটি ইতিমধ্যে সর্বোচ্চ সংখ্যক ডিভাইসে ব্যবহৃত হচ্ছে।';

  @override
  String get previewConfidential => 'গোপনীয় প্রিভিউ';

  @override
  String get errPreviewDailyLimit =>
      'এই প্রিভিউয়ের আজকের বিশ্লেষণের সীমা শেষ হয়ে গেছে। আগামীকাল আবার চেষ্টা করুন।';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ঘণ্টা আগে',
      one: '1 ঘণ্টা আগে',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count দিন আগে',
      one: '1 দিন আগে',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'এই বিশ্লেষণ আপডেট করবেন?';

  @override
  String staleBody(String age) {
    return 'এটি $age তৈরি হয়েছিল। এর পর থেকে দাম, খবর ও ফলাফল বদলে যেতে পারে।';
  }

  @override
  String get staleKeep => 'আগেরটি দেখান';

  @override
  String get staleRefresh => 'নতুন তৈরি করুন';

  @override
  String seeAll(int count) {
    return 'সব দেখুন ($count)';
  }

  @override
  String get searchAnalyses => 'আপনার বিশ্লেষণ খুঁজুন';

  @override
  String get deleteAnalysis => 'মুছুন';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol বিশ্লেষণ মুছে ফেলা হয়েছে';
  }

  @override
  String get keyLevelAlertHint =>
      'দাম কোনো স্তরে পৌঁছালে সতর্কতা পেতে সেই স্তরে ট্যাপ করুন।';

  @override
  String get shareAnalysisTitle => 'বিশ্লেষণ শেয়ার করুন';

  @override
  String get shareAsImage => 'ছবি হিসেবে শেয়ার করুন';

  @override
  String get shareAsText => 'টেক্সট হিসেবে শেয়ার করুন';

  @override
  String get shareCardFooter => 'WhatStock দিয়ে তৈরি';

  @override
  String get shareCardDisclaimer => 'AI বিশ্লেষণ · বিনিয়োগ পরামর্শ নয়';

  @override
  String get referralTitle => 'বন্ধুদের আমন্ত্রণ জানান';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি অতিরিক্ত বিশ্লেষণ',
      one: '1টি অতিরিক্ত বিশ্লেষণ',
    );
    return 'আপনার কোড শেয়ার করুন। আপনার বন্ধু সঙ্গে সঙ্গে $_temp0 পাবেন, আর তাঁর প্রথম বিশ্লেষণের পরে আপনিও একই পরিমাণ পাবেন।';
  }

  @override
  String get referralYourCode => 'আপনার কোড';

  @override
  String referralStats(int invited, int rewarded) {
    return 'আমন্ত্রিত: $invited · পুরস্কৃত: $rewarded';
  }

  @override
  String get referralHaveCode => 'বন্ধুর কাছ থেকে কোড পেয়েছেন?';

  @override
  String get referralRedeem => 'রিডিম করুন';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি অতিরিক্ত বিশ্লেষণ যোগ হয়েছে। স্বাগতম!',
      one: '1টি অতিরিক্ত বিশ্লেষণ যোগ হয়েছে। স্বাগতম!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown => 'এই কোডটি নেই। যাচাই করে আবার চেষ্টা করুন।';

  @override
  String get referralErrOwn => 'আপনি নিজের কোড রিডিম করতে পারবেন না।';

  @override
  String get referralErrAlready =>
      'আপনি ইতিমধ্যে একজন বন্ধুর কোড রিডিম করেছেন।';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি অতিরিক্ত বিশ্লেষণ',
      one: '1টি অতিরিক্ত বিশ্লেষণ',
    );
    return 'আমি WhatStock দিয়ে শেয়ার বিশ্লেষণ করি: একটি শেয়ারের ছবি তুলুন, আর AI সেটি ব্যাখ্যা করবে। আমার কোড $code দিয়ে আপনি পাবেন $_temp0।';
  }

  @override
  String get referralCopied => 'কোড কপি হয়েছে';

  @override
  String get onboardTitle1 => 'শেয়ারের ছবি তুলুন';

  @override
  String get onboardBody1 =>
      'ব্রোকারেজ অ্যাপের স্ক্রিন, খবরের কাগজ বা কোম্পানির লোগোই যথেষ্ট: WhatStock শেয়ারটি চিনে নিয়ে এর দাম, চার্ট ও মূল তথ্য দেখায়।';

  @override
  String get onboardTitle2 => 'কয়েক মিনিটেই বুঝে নিন';

  @override
  String get onboardBody2 =>
      'AI বিশ্লেষণ ব্যাখ্যা করে শেয়ারটিকে কী চালায়, ঝুঁকিগুলো কী, মূল্যায়ন কেমন, আর দাম কোথায় যেতে পারে তার তিনটি সম্ভাব্য চিত্র – সূত্রসহ, আপনার ভাষায়।';

  @override
  String get onboardTitle3 => 'সবসময় আপডেট থাকুন';

  @override
  String get onboardBody3 =>
      'পছন্দের তালিকা, আপনার পোর্টফোলিও আর দামের সতর্কতা আপনাকে সবসময় খবর দেয়। আপনার বিশ্লেষণগুলো আপনার ডিভাইসেই থাকে, যখন খুশি আবার খুলতে পারবেন।';

  @override
  String get onboardNext => 'পরবর্তী';

  @override
  String get onboardStart => 'শুরু করুন';

  @override
  String get onboardSkip => 'এড়িয়ে যান';

  @override
  String changesTitle(String date) {
    return 'আগের বিশ্লেষণের পর থেকে ($date)';
  }

  @override
  String get changesPrice => 'দাম';

  @override
  String get changesNoMajor => 'দৃষ্টিভঙ্গি উল্লেখযোগ্যভাবে বদলায়নি।';

  @override
  String get changesPreviousSummary => 'আগের সারাংশ';

  @override
  String get telemetryTitle => 'WhatStock আরও ভালো করতে সাহায্য করুন';

  @override
  String get telemetryBody =>
      'বেনামী ব্যবহারের পরিসংখ্যান ও ক্র্যাশ রিপোর্ট শেয়ার করুন: কোন ফিচার ব্যবহার হয় এবং কী ভুল হয়েছে। আপনার স্টক, বিশ্লেষণ বা ব্যক্তিগত ডেটা কখনোই শেয়ার করা হয় না। আপনি যেকোনো সময় সেটিংসে এটি পরিবর্তন করতে পারেন।';

  @override
  String get telemetryAllow => 'অনুমতি দিন';

  @override
  String get telemetryDecline => 'না, ধন্যবাদ';

  @override
  String get telemetrySetting => 'বেনামী পরিসংখ্যান ও ক্র্যাশ রিপোর্ট';

  @override
  String get telemetrySettingHint =>
      'ফিচারগুলো কত ঘন ঘন ব্যবহার হয় এবং ত্রুটির রিপোর্ট, ব্যক্তিগত ডেটা বা আপনার অনুসন্ধান ও বিশ্লেষণের বিষয়বস্তু ছাড়া।';

  @override
  String get askButton => 'এই বিশ্লেষণ নিয়ে প্রশ্ন করুন';

  @override
  String askTitle(String symbol) {
    return '$symbol নিয়ে প্রশ্ন';
  }

  @override
  String get askIntro =>
      'বিশ্লেষণ নিয়ে যেকোনো কিছু জিজ্ঞাসা করুন: কোনো ঝুঁকির মানে কী, কী হলে পূর্বাভাস বদলাতে পারে, কোনো সংখ্যা কীভাবে হিসাব করা হয়েছে। উত্তরগুলো এই বিশ্লেষণের ভিত্তিতে দেওয়া হয় এবং এগুলো বিনিয়োগ পরামর্শ নয়।';

  @override
  String get askHint => 'একটি প্রশ্ন লিখুন…';

  @override
  String get askSend => 'পাঠান';

  @override
  String get askThinking => 'ভাবছে…';

  @override
  String get askSuggest1 => 'সবচেয়ে বড় ঝুঁকি কী?';

  @override
  String get askSuggest2 => 'কী হলে পূর্বাভাস বদলাতে পারে?';

  @override
  String get askSuggest3 => 'সহজ ভাষায় বুঝিয়ে দিন';

  @override
  String get askMaxReached =>
      'এটি ছিল এই বিশ্লেষণের শেষ প্রশ্ন। আরও জিজ্ঞাসা করতে একটি নতুন বিশ্লেষণ তৈরি করুন।';

  @override
  String get errAskLimit =>
      'আপনি আজকের প্রশ্নের সীমায় পৌঁছে গেছেন। অনুগ্রহ করে আগামীকাল আবার চেষ্টা করুন।';

  @override
  String get eventTomorrow => 'আগামীকাল';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days দিন পরে',
      one: '1 দিন পরে',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'ত্রৈমাসিক ফলাফল';

  @override
  String get eventBeforeOpen => 'বাজার খোলার আগে';

  @override
  String get eventAfterClose => 'বাজার বন্ধের পরে';

  @override
  String eventEpsEstimate(String value) {
    return 'আনুমানিক EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'আপনার বিশ্লেষণ থেকে';

  @override
  String get eventDividend => 'ডিভিডেন্ড প্রত্যাশিত';

  @override
  String get eventDividendEstimate => 'আপনার নথিভুক্ত পেমেন্ট থেকে আনুমানিক';

  @override
  String get eventsHint =>
      'আগামী 90 দিনে আপনার পছন্দের ও পোর্টফোলিওর শেয়ারগুলোর ফলাফলের তারিখ, আপনার বিশ্লেষণে চিহ্নিত তারিখযুক্ত ঘটনা, এবং আপনার নথিভুক্ত পেমেন্ট থেকে প্রত্যাশিত ডিভিডেন্ড।';

  @override
  String get eventsEmpty =>
      'আগামী 90 দিনে কোনো তারিখযুক্ত ঘটনা নেই। এখানে ফলাফলের তারিখ দেখতে পছন্দের বা পোর্টফোলিওতে শেয়ার যোগ করুন; নথিভুক্ত ডিভিডেন্ডের প্রত্যাশিত পরবর্তী পেমেন্ট এখানে দেখানো হয়।';

  @override
  String get compareTitle => 'তুলনা';

  @override
  String get compareAdd => 'একটি স্টক যোগ করুন';

  @override
  String get compareRemove => 'সরান';

  @override
  String get compareTickerHint => 'টিকার, যেমন MSFT';

  @override
  String get compareHint =>
      'মূল সংখ্যাগুলো পাশাপাশি; প্রতিটি সারির সেরা মান হাইলাইট করা হয়েছে। অঙ্কগুলো প্রতিটি স্টকের নিজস্ব মুদ্রায়।';

  @override
  String get compareNoAnalysis => 'এখনও কোনো বিশ্লেষণ নেই';

  @override
  String get portfolioDividends => 'বার্ষিক ডিভিডেন্ড';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent ইল্ড';
  }

  @override
  String get portfolioDividendNote =>
      'প্রত্যাশিত বার্ষিক ডিভিডেন্ড গত 12 মাসে পরিশোধিত ডিভিডেন্ডের ভিত্তিতে হিসাব করা হয়; ভবিষ্যতের পরিশোধ নিশ্চিত নয়।';

  @override
  String positionDividend(String amount) {
    return 'ডিভিডেন্ড: বছরে $amount';
  }

  @override
  String get chartAvgCost => 'আপনার গড়';

  @override
  String get chartAlertLevel => 'সতর্কতা';

  @override
  String get marketsToday => 'আজকের বাজার';

  @override
  String get notesTitle => 'আমার নোট';

  @override
  String get notesHint => 'কেন কিনেছেন, কী নজরে রাখছেন, কী হলে বিক্রি করবেন?';

  @override
  String get notesInfo =>
      'শুধু এই ডিভাইসেই সংরক্ষিত হয়। AI বিশ্লেষণ আপনার নোটগুলো বিবেচনায় নেয়।';

  @override
  String notesSaved(String date) {
    return 'সংরক্ষিত $date';
  }

  @override
  String get peersTitle => 'অনুরূপ কোম্পানি';

  @override
  String get portfolioExport => 'CSV হিসেবে এক্সপোর্ট করুন';

  @override
  String get portfolioImport => 'CSV থেকে ইমপোর্ট করুন';

  @override
  String get portfolioImportHint =>
      'প্রতি লাইনে একটি ক্রয় পেস্ট করুন: টিকার সিম্বল, পরিমাণ, দাম, মুদ্রা, তারিখ (YYYY-MM-DD)। কলামগুলো কমা, সেমিকোলন বা ট্যাব দিয়ে আলাদা করা যায়; হেডার লাইন ঐচ্ছিক।';

  @override
  String get portfolioImportButton => 'ইমপোর্ট করুন';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি ক্রয় যোগ হয়েছে',
      one: '1টি ক্রয় যোগ হয়েছে',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি লাইন বাদ দেওয়া হয়েছে',
      one: '1টি লাইন বাদ দেওয়া হয়েছে',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'পোর্টফোলিও, পছন্দের তালিকা, দামের সতর্কতা ও নোট আপনার সব ডিভাইসে সিঙ্ক হয়।';

  @override
  String syncLast(String time) {
    return 'শেষ সিঙ্ক: $time';
  }

  @override
  String get syncNow => 'এখনই সিঙ্ক করুন';

  @override
  String get syncFailed =>
      'সিঙ্ক ব্যর্থ হয়েছে। এটি স্বয়ংক্রিয়ভাবে আবার চেষ্টা করবে।';

  @override
  String get alertEmailTitle => 'সতর্কতা চালু হলে ই-মেইল';

  @override
  String get alertEmailOn =>
      'আমরা কয়েক মিনিট পরপর আপনার সতর্কতা যাচাই করি এবং অ্যাপ বন্ধ থাকলেও আপনাকে ই-মেইল পাঠাই।';

  @override
  String get alertEmailSignIn =>
      'অ্যাপ বন্ধ থাকলেও ই-মেইলে সতর্কতা পেতে সেটিংসে আপনার ই-মেইল দিয়ে সাইন ইন করুন।';

  @override
  String get portfolioHistory => 'সময়ের সাথে মূল্য';

  @override
  String get portfolioReviewTitle => 'AI পোর্টফোলিও পর্যালোচনা';

  @override
  String get portfolioReviewIntro =>
      'AI আপনার পুরো পোর্টফোলিও দেখে: কেন্দ্রীভবন, খাত ও মুদ্রার ঝুঁকি, আপনার শেয়ারগুলোর অভিন্ন ঝুঁকি এবং লভ্যাংশ। 1টি বিশ্লেষণ খরচ হয়।';

  @override
  String get portfolioReviewButton => 'আমার পোর্টফোলিও পর্যালোচনা করুন';

  @override
  String get portfolioReviewAgain => 'আবার পর্যালোচনা করুন';

  @override
  String get portfolioReviewWorking => 'আপনার পোর্টফোলিও পর্যালোচনা করা হচ্ছে…';

  @override
  String get digestTitle => 'ইমেলে সাপ্তাহিক সারাংশ';

  @override
  String get digestHint =>
      'প্রতি সোমবার: গত সপ্তাহে আপনার পছন্দের তালিকা ও পোর্টফোলিও কেমন চলেছে, আর সেগুলোর আসন্ন ফলাফলের তারিখ।';

  @override
  String get benchmarkTitle => 'S&P 500-এর সাথে তুলনা';

  @override
  String get benchmarkTitleIndex => 'একটি সূচকের সাথে তুলনা';

  @override
  String get benchmarkHintIndex =>
      'যেন প্রতিটি ক্রয়ের অর্থ একই দিনে নির্বাচিত সূচক অনুসরণকারী একটি ফান্ডে বিনিয়োগ করা হয়েছিল। লভ্যাংশ অন্তর্ভুক্ত নয়; অতীতের রিটার্ন ভবিষ্যতের রিটার্নের পূর্বাভাস দেয় না।';

  @override
  String get benchmarkYours => 'আপনার ক্রয়';

  @override
  String benchmarkAhead(String points) {
    return 'সূচকের চেয়ে $points শতাংশ পয়েন্ট ভালো';
  }

  @override
  String benchmarkBehind(String points) {
    return 'সূচকের চেয়ে $points শতাংশ পয়েন্ট পিছিয়ে';
  }

  @override
  String get portfolioSell => 'বিক্রি করুন';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbol বিক্রি করুন';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'প্রতি শেয়ারের বিক্রয়মূল্য ($currency)';
  }

  @override
  String get portfolioSellDate => 'বিক্রির তারিখ';

  @override
  String get portfolioSellAll => 'সব';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'আপনার কাছে $quantityটি আছে';
  }

  @override
  String get portfolioSold => 'বিক্রি';

  @override
  String get portfolioRealized => 'আদায়কৃত';

  @override
  String get portfolioClosed => 'বন্ধ অবস্থান';

  @override
  String get portfolioClosedNote => 'সব শেয়ার বিক্রি হয়েছে';

  @override
  String get portfolioTransactions => 'লেনদেন';

  @override
  String get portfolioRealizedByYear => 'বছর অনুযায়ী আদায়কৃত লাভ';

  @override
  String get portfolioRealizedHint =>
      'বিক্রি প্রথমে আপনার সবচেয়ে পুরোনো ক্রয়ের সঙ্গে মেলানো হয় (FIFO), আজকের বিনিময় হারে রূপান্তর করে। কর রিটার্নের জন্য আপনার ব্রোকারের বিবরণী ব্যবহার করুন।';

  @override
  String staleNewResults(String symbol, String date) {
    return 'এই বিশ্লেষণের পর নতুন ত্রৈমাসিক ফলাফল প্রকাশিত হয়েছে ($symbol, $date)।';
  }

  @override
  String get newResultsBadge => 'নতুন ফলাফল';

  @override
  String get portfolioImportBrokers =>
      'Revolut, Trading 212 ও Interactive Brokers-এর এক্সপোর্টও বিক্রিসহ চেনা যায়; ডিভিডেন্ড ও জমা বাদ দেওয়া হয়।';

  @override
  String get portfolioImportFile => 'একটি ফাইল বেছে নিন';

  @override
  String offlineBanner(String time) {
    return 'সংযোগ নেই – শেষ সংরক্ষিত ডেটা দেখানো হচ্ছে ($time)।';
  }

  @override
  String get glossMarketCap =>
      'শেয়ারবাজারে পুরো কোম্পানির মূল্য কত: শেয়ারের দাম × শেয়ারের সংখ্যা।';

  @override
  String get glossSharesOutstanding =>
      'কোম্পানি কতগুলো শেয়ার ইস্যু করেছে। এটি বাড়লে প্রতিটি শেয়ারের ভাগ ছোট হয়; বাইব্যাক এটি কমায়।';

  @override
  String get glossPeTrailing =>
      'দাম ÷ গত 12 মাসের শেয়ারপ্রতি আয়: বর্তমান মুনাফার কত বছরের দাম আপনি দিচ্ছেন। কম মানে সস্তা, তবে দ্রুত বাড়তে থাকা কোম্পানির P/E সাধারণত বেশি হয়।';

  @override
  String get glossPeForward =>
      'P/E-এর মতোই, তবে বিশ্লেষকরা আগামী 12 মাসের জন্য যে মুনাফা আশা করেন তা দিয়ে। ট্রেইলিং P/E-এর চেয়ে কম হলে মুনাফা বাড়বে বলে আশা করা হচ্ছে।';

  @override
  String get glossPb =>
      'দাম ÷ শেয়ারপ্রতি বুক ভ্যালু (সম্পদ বিয়োগ ঋণ)। 1-এর কাছাকাছি মানে বাজার কোম্পানিকে কাগজে-কলমে তার যা আছে সেই মূল্যই দিচ্ছে।';

  @override
  String get glossPs =>
      'বাজার মূল্য ÷ বার্ষিক রাজস্ব। যেসব কোম্পানির এখনো মুনাফা কম বা নেই, তাদের জন্য কাজের; একই শিল্পের মধ্যে তুলনা করুন।';

  @override
  String get glossEvToFcf =>
      'ঋণসহ কোম্পানির মূল্য (EV) ÷ বিনিয়োগের পর এক বছরে কোম্পানি যে নগদ তৈরি করে। কম মানে দামের বিনিময়ে আপনি বেশি নগদ পাচ্ছেন।';

  @override
  String get glossPeg =>
      'P/E ÷ প্রত্যাশিত বার্ষিক মুনাফা বৃদ্ধি (%)। 1-এর কাছাকাছি প্রায়ই ন্যায্য ধরা হয়; এটি P/E-কে প্রবৃদ্ধির আলোয় দেখায়।';

  @override
  String get glossEps =>
      'গত 12 মাসে শেয়ারপ্রতি মুনাফা। বছরের পর বছর বাড়তে থাকা EPS একটি সুস্থ কোম্পানির সবচেয়ে শক্তিশালী লক্ষণগুলোর একটি।';

  @override
  String get glossBeta =>
      'শেয়ারটি বাজারের সঙ্গে কতটা ওঠানামা করে: 1 = বাজারের মতো, 1.5 = প্রায় 50% বড় ওঠানামা, 1-এর নিচে = শান্ত।';

  @override
  String get glossRevenueTtm => 'গত 12 মাসের মোট বিক্রি, কোনো খরচের আগে।';

  @override
  String get glossNetIncomeTtm =>
      'গত 12 মাসে সব খরচ, সুদ ও করের পর অবশিষ্ট মুনাফা।';

  @override
  String get glossGrossMargin =>
      'পণ্যের সরাসরি খরচের পর রাজস্বের যে অংশ থাকে। বেশি মার্জিন প্রায়ই দাম নির্ধারণের ক্ষমতা বোঝায়।';

  @override
  String get glossOperatingMargin =>
      'ব্যবসা চালানোর খরচ (বেতন, ভাড়া, বিপণন) বাদে, সুদ ও করের আগে রাজস্বের যে অংশ থাকে।';

  @override
  String get glossNetMargin =>
      'রাজস্বের যে অংশ শেষ পর্যন্ত মুনাফা হয়। 20% মানে প্রতি 100 বিক্রির মধ্যে 20 মুনাফা।';

  @override
  String get glossRoe =>
      'ইক্যুইটিতে রিটার্ন: বার্ষিক মুনাফা ÷ মালিকদের মূলধন। ব্যবস্থাপনা শেয়ারহোল্ডারদের টাকা কতটা ভালোভাবে কাজে লাগায় তা দেখায়; প্রায় 15%-এর বেশি হলে শক্তিশালী।';

  @override
  String get glossRoa =>
      'সম্পদে রিটার্ন: বার্ষিক মুনাফা ÷ কোম্পানির সমস্ত সম্পদ। একই শিল্পের মধ্যে তুলনা করুন।';

  @override
  String get glossDebtToEquity =>
      'ঋণ ÷ মালিকদের মূলধন। বেশি মানে বেশি ধার করা টাকা: সুদের হার বাড়লে বা ব্যবসা মন্দা হলে বেশি ঝুঁকি।';

  @override
  String get glossCurrentRatio =>
      'স্বল্পমেয়াদি সম্পদ ÷ এক বছরের মধ্যে পরিশোধযোগ্য দায়। 1-এর বেশি মানে কোম্পানি নিকট ভবিষ্যতের দায় মেটাতে পারে।';

  @override
  String get glossRevenueGrowth => 'এক বছর আগের তুলনায় রাজস্ব কতটা বেড়েছে।';

  @override
  String get glossEpsGrowth =>
      'এক বছর আগের তুলনায় শেয়ারপ্রতি মুনাফা কতটা বেড়েছে।';

  @override
  String get glossDividendYield =>
      'বার্ষিক ডিভিডেন্ড ÷ শেয়ারের দাম: আপনি যা দিচ্ছেন তার শতাংশ হিসেবে বছরে যে নগদ আয় পাবেন।';

  @override
  String get glossDividendPerShare =>
      'গত বছরে একটি শেয়ারের ওপর দেওয়া ডিভিডেন্ড।';

  @override
  String get glossPayoutRatio =>
      'মুনাফার যে অংশ ডিভিডেন্ড হিসেবে দেওয়া হয়। 100%-এর বেশি হলে কোম্পানি আয়ের চেয়ে বেশি দেয়, যা কদাচিৎ টেকে।';

  @override
  String get portfolioBeta => 'পোর্টফোলিও বিটা';

  @override
  String get glossPortfolioBeta =>
      'আপনার শেয়ারগুলোর বিটা, তাদের মূল্য অনুযায়ী ভারিত: বাজার 1% নড়লে আপনার শেয়ারগুলো মোটামুটি কত শতাংশ নড়ে। 1-এর বেশি হলে সেগুলো বাজারের চেয়ে বেশি ওঠানামা করে, 1-এর কম হলে কম। নগদ এতে ধরা হয় না।';

  @override
  String get portfolioTop3 => 'শীর্ষ 3 অবস্থান';

  @override
  String get glossPortfolioTop3 =>
      'আপনার শেয়ারগুলোর মূল্যের কতটা আপনার তিনটি সবচেয়ে বড় অবস্থানে রয়েছে। এটি যত বেশি, একটি কোম্পানির খারাপ খবর পুরো পোর্টফোলিওর তত বেশি ক্ষতি করতে পারে।';

  @override
  String get glossDividendGrowth5y =>
      'গত পাঁচ বছরে শেয়ার প্রতি ডিভিডেন্ড বছরে গড়ে কতটা বেড়েছে। স্থির বৃদ্ধি সাধারণত বোঝায় যে কোম্পানি তার নগদ প্রবাহের ওপর আস্থা রাখে; ডিভিডেন্ড কমানো প্রায়ই একটি সতর্ক সংকেত।';

  @override
  String get glossYieldOnCost =>
      'গত ১২ মাসে পাওয়া ডিভিডেন্ডকে আপনার এখনও ধরে রাখা শেয়ারের জন্য দেওয়া দামে ভাগ করা। ডিভিডেন্ড ইল্ডের মতো নয়, এটি আজকের দামের বদলে আপনার নিজের কেনার দামের ভিত্তিতে মাপা হয়।';

  @override
  String get glossTitle => 'এর মানে কী?';

  @override
  String get watchNewsTitle => 'আপনার শেয়ারের খবর';

  @override
  String get undo => 'আনডু';

  @override
  String get watchSort => 'সাজান';

  @override
  String get watchSortOwn => 'আমার ক্রম';

  @override
  String get watchSortGainers => 'সর্বাধিক বৃদ্ধি আগে';

  @override
  String get watchSortLosers => 'সর্বাধিক পতন আগে';

  @override
  String get watchSortName => 'টিকার অনুযায়ী (A–Z)';

  @override
  String get watchHint =>
      'ক্রম বদলাতে হ্যান্ডেল টানুন, সরাতে বাঁদিকে সোয়াইপ করুন। রেখাটি গত 30 দিন দেখায়।';

  @override
  String analysisReady(String symbol) {
    return '$symbol: আপনার বিশ্লেষণ প্রস্তুত।';
  }

  @override
  String alertFromCost(String price) {
    return 'আপনার গড় ক্রয়মূল্য ($price) থেকে:';
  }

  @override
  String get briefTitle => 'আজ আপনার শেয়ারগুলোর সাথে';

  @override
  String get briefButton => 'আজকের সারাংশ';

  @override
  String get briefHint =>
      'আজ আপনার পোর্টফোলিও ও পছন্দের শেয়ার কীভাবে চলেছে এবং সর্বশেষ খবর সেগুলো নিয়ে কী বলছে, তার একটি ছোট AI সারাংশ। এতে কোনো বিশ্লেষণ খরচ হয় না।';

  @override
  String get briefRefresh => 'আপডেট';

  @override
  String get sectionEarnings => 'আয়';

  @override
  String earningsNext(String date) {
    return 'পরবর্তী রিপোর্ট: $date';
  }

  @override
  String get earningsExpected => 'প্রত্যাশিত EPS';

  @override
  String get earningsReported => 'ঘোষিত EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'শেষ $totalটি ত্রৈমাসিকের $beatsটিতে প্রত্যাশিত EPS-এর সমান বা বেশি',
      one: '1টি ত্রৈমাসিকের $beatsটিতে প্রত্যাশিত EPS-এর সমান বা বেশি',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol আগামীকাল ত্রৈমাসিক ফলাফল প্রকাশ করবে';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol আজ ত্রৈমাসিক ফলাফল প্রকাশ করবে';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return '$symbol-এর ডিভিডেন্ড আজ প্রত্যাশিত';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'প্রায় $amount। এলে আপনার পোর্টফোলিওতে নথিভুক্ত করুন।';
  }

  @override
  String get dividendRemindersTitle => 'ডিভিডেন্ডের রিমাইন্ডার';

  @override
  String get dividendRemindersSubtitle =>
      'আপনার নথিভুক্ত পেমেন্টের ছন্দ অনুযায়ী যেদিন ডিভিডেন্ড প্রত্যাশিত, সেদিন একটি বিজ্ঞপ্তি, যাতে আপনি তা নথিভুক্ত করতে পারেন';

  @override
  String get earningsRemindersTitle => 'ফলাফলের রিমাইন্ডার';

  @override
  String get earningsRemindersSubtitle =>
      'আপনার পছন্দের বা পোর্টফোলিওর শেয়ারের ত্রৈমাসিক ফলাফল প্রকাশের আগের দিন একটি বিজ্ঞপ্তি';

  @override
  String addAllToFavorites(int count) {
    return 'সব পছন্দের তালিকায় যোগ করুন ($count)';
  }

  @override
  String get portfolioImportPhoto => 'স্ক্রিনশট থেকে ইমপোর্ট করুন';

  @override
  String get holdingsReading => 'আপনার অবস্থান পড়া হচ্ছে…';

  @override
  String get holdingsReviewTitle => 'পাওয়া অবস্থান';

  @override
  String get holdingsReviewHint =>
      'যোগ করার আগে সংখ্যাগুলো যাচাই করুন। দামটি আজকের দাম নয়, প্রতি শেয়ারে আপনার গড় ক্রয়মূল্য।';

  @override
  String get holdingsNoPrice => 'ছবিতে গড় ক্রয়মূল্য নেই';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি অবস্থান যোগ করুন',
      one: '1টি অবস্থান যোগ করুন',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'এই ছবিতে কোনো শেয়ার অবস্থান পাওয়া যায়নি। আপনার ব্রোকারের পজিশন বা হোল্ডিংস পৃষ্ঠার একটি স্ক্রিনশট চেষ্টা করুন।';

  @override
  String get week52Range => '52-সপ্তাহের পরিসর';

  @override
  String week52BelowHigh(String percent) {
    return '52-সপ্তাহের সর্বোচ্চ থেকে $percent নিচে';
  }

  @override
  String get week52AtHigh => '52-সপ্তাহের সর্বোচ্চে';

  @override
  String get alertKindTrailing => 'শীর্ষ থেকে নামলে';

  @override
  String get alertTrailingPercent => 'শীর্ষ থেকে পতন (%)';

  @override
  String get alertTrailingHint =>
      'দামের সঙ্গে উপরে ওঠে: সেট করার পর থেকে সর্বোচ্চ স্তর থেকে দাম এতটা নামলে সতর্ক করে।';

  @override
  String alertDescTrailing(String percent) {
    return 'শীর্ষ থেকে $percent পতন';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'এ পর্যন্ত শীর্ষ: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol শীর্ষ থেকে $percent নেমেছে';
  }

  @override
  String get sectionInsiders => 'ইনসাইডার লেনদেন';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি ক্রয়',
      one: '1টি ক্রয়',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি বিক্রি',
      one: '1টি বিক্রি',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'নিট: $shares শেয়ার';
  }

  @override
  String get insiderBuy => 'কেনা হয়েছে';

  @override
  String get insiderSell => 'বিক্রি হয়েছে';

  @override
  String get insiderHint =>
      'গত 90 দিনে নির্বাহী ও পরিচালকদের খোলা বাজারে ক্রয় ও বিক্রি (SEC Form 4)। অপশন প্রয়োগ ও শেয়ার পুরস্কার গণনা করা হয় না।';

  @override
  String get insiderNone =>
      'গত 90 দিনে খোলা বাজারে কোনো ইনসাইডার ক্রয় বা বিক্রি হয়নি।';

  @override
  String get analystTrend => 'মাসে মাসে মতামত কীভাবে বদলেছে';

  @override
  String get watchListAll => 'সব';

  @override
  String get watchListNew => 'নতুন তালিকা';

  @override
  String get watchListName => 'তালিকার নাম';

  @override
  String get watchListRename => 'তালিকার নাম বদলান';

  @override
  String get watchListDelete => 'তালিকা মুছুন';

  @override
  String get watchListAddTo => 'তালিকায় যোগ করুন';

  @override
  String get watchListEmpty =>
      'এই তালিকায় এখনও কোনো শেয়ার নেই। যোগ করতে শেয়ারের পাশের তালিকা বোতামে ট্যাপ করুন।';

  @override
  String get portfolioAskTitle => 'আপনার পোর্টফোলিও নিয়ে প্রশ্ন';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'ব্যাকআপ';

  @override
  String get backupSave => 'ব্যাকআপ সেভ করুন';

  @override
  String get backupSaveHint =>
      'আপনার পছন্দের, তালিকা, পোর্টফোলিও, সতর্কতা ও নোট একটি ফাইলে।';

  @override
  String get backupRestore => 'ব্যাকআপ থেকে পুনরুদ্ধার করুন';

  @override
  String get backupRestoreHint =>
      'ফাইলে যা আছে তা যোগ করে; আপনার এখনকার কিছুই মুছে যায় না।';

  @override
  String get backupRestored => 'ব্যাকআপ পুনরুদ্ধার করা হয়েছে।';

  @override
  String get backupInvalid => 'এই ফাইলটি WhatStock ব্যাকআপ নয়।';

  @override
  String get allocationPositions => 'শেয়ার';

  @override
  String get allocationSectors => 'সেক্টর';

  @override
  String get allocationCurrencies => 'মুদ্রা';

  @override
  String get allocationAccounts => 'অ্যাকাউন্ট';

  @override
  String get compareReturn1y => '1 বছরের রিটার্ন';

  @override
  String get compareFromHigh => '52-সপ্তাহের সর্বোচ্চ থেকে দূরত্ব';

  @override
  String get briefAutoTitle => 'প্রতিদিন সকালে দৈনিক সারাংশ';

  @override
  String get briefAutoSubtitle =>
      'অ্যাপ চালু থাকা অবস্থায় সকাল 7:00টার পর “আজ আপনার শেয়ারগুলোর সাথে” নিজে থেকেই তৈরি হয়; কম্পিউটারে একটি বিজ্ঞপ্তি আপনাকে জানায়। এটি আপনার দৈনিক প্রশ্নের সীমা থেকে যায়, কোনো বিশ্লেষণ খরচ হয় না।';

  @override
  String get targetsButton => 'লক্ষ্য বণ্টন';

  @override
  String get targetsTitle => 'লক্ষ্য বণ্টন';

  @override
  String get targetsHint =>
      'পোর্টফোলিওর কত অংশ প্রতিটি শেয়ারের থাকা উচিত তা নির্ধারণ করুন। লক্ষ্য না থাকলে ঘরটি ফাঁকা রাখুন। এরপর অ্যাপটি দেখাবে সেখানে পৌঁছাতে কী কিনতে বা বিক্রি করতে হবে।';

  @override
  String targetsSum(String percent) {
    return 'মোট: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'কিনুন ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'বিক্রি করুন ≈ $amount';
  }

  @override
  String get rebalanceOk => 'লক্ষ্যে আছে';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol প্রত্যাশিত EPS ছাড়িয়ে গেছে';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol প্রত্যাশিত EPS ছুঁতে পারেনি';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'ঘোষিত EPS $actual, প্রত্যাশিত $estimate';
  }

  @override
  String get newsExplain => 'এর মানে কী?';

  @override
  String get watchAlertAll => 'বড় দৈনিক পরিবর্তনে সতর্কতা';

  @override
  String get watchAlertAllHint =>
      'এই তালিকার প্রতিটি শেয়ারের জন্য দামের সতর্কতা: এক দিনে এতটা ওপরে বা নিচে নড়লে জানাবে। যেগুলোর আগে থেকেই আছে, সেগুলোর আগেরটাই থাকবে।';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি সতর্কতা সেট হয়েছে',
      one: '1টি সতর্কতা সেট হয়েছে',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'বাস্তবায়িত লাভ এক্সপোর্ট করুন (CSV)';

  @override
  String get portfolioAnnualReturn => 'বার্ষিক রিটার্ন';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / বছর';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'অর্থ-ভারিত বার্ষিক রিটার্ন (XIRR): আপনি কখন কিনেছেন ও বিক্রি করেছেন তা হিসাবে নেয়, তাই পরে যোগ করা টাকা এটিকে বিকৃত করে না। আপনার প্রথম ক্রয় অন্তত এক বছর পুরোনো হলে দেখানো হয়; ডিভিডেন্ড অন্তর্ভুক্ত নয়।';

  @override
  String get eventsAddToCalendar => 'ক্যালেন্ডারে যোগ করুন (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'পোর্টফোলিও অ্যালার্ট';

  @override
  String get portfolioMoveAlertSubtitle =>
      'আপনার পুরো পোর্টফোলিও এক দিনে এতটা নড়লে একটি বিজ্ঞপ্তি।';

  @override
  String get portfolioMoveAlertOff => 'বন্ধ';

  @override
  String portfolioMoveUp(String percent) {
    return 'আজ আপনার পোর্টফোলিও $percent বেড়েছে';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'আজ আপনার পোর্টফোলিও $percent কমেছে';
  }

  @override
  String get whatIfTitle => 'বিনিয়োগ করলে কী হতো?';

  @override
  String get whatIfAmount => 'পরিমাণ';

  @override
  String whatIfResult(String amount, String period) {
    return '$period আগে বিনিয়োগ করা $amount আজ হতো';
  }

  @override
  String get whatIfNote =>
      'শুধু শেয়ারের দামের ভিত্তিতে: ডিভিডেন্ড, ফি ও কর অন্তর্ভুক্ত নয়। অতীতের রিটার্ন ভবিষ্যতের রিটার্নের পূর্বাভাস দেয় না।';

  @override
  String get watchShare => 'তালিকা শেয়ার করুন';

  @override
  String get watchImport => 'টিকার যোগ করুন';

  @override
  String get watchImportHint =>
      'কমা, স্পেস বা নতুন লাইন দিয়ে আলাদা করে টিকার পেস্ট করুন – যেমন কেউ আপনার সাথে শেয়ার করেছে এমন একটি তালিকা।';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি স্টক যোগ হয়েছে',
      one: '1টি স্টক যোগ হয়েছে',
      zero: 'কোনো নতুন স্টক নেই',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'সবচেয়ে বড় আগে';

  @override
  String get positionsSortGain => 'সর্বাধিক মোট লাভ আগে';

  @override
  String get positionsSortToday => 'আজকের সেরা আগে';

  @override
  String get chartMyBuys => 'আপনার ক্রয়';

  @override
  String get chartMySells => 'আপনার বিক্রয়';

  @override
  String get shortcutsTitle => 'কীবোর্ড শর্টকাট';

  @override
  String usMarketOpen(String time) {
    return 'মার্কিন বাজার খোলা · $time পরে বন্ধ হবে';
  }

  @override
  String usMarketClosed(String time) {
    return 'মার্কিন বাজার বন্ধ · $time পরে খুলবে';
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
  String get dividendGoalSet => 'মাসিক ডিভিডেন্ডের লক্ষ্য ঠিক করুন';

  @override
  String get dividendGoalTitle => 'মাসিক ডিভিডেন্ডের লক্ষ্য';

  @override
  String get dividendGoalAmount => 'প্রতি মাসে ডিভিডেন্ড';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'বর্তমান ইল্ডে প্রতি মাসে প্রায় $amount · $percent · লক্ষ্য: $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'বর্তমান ইল্ডে প্রতি মাসে প্রায় $amount · লক্ষ্য পূরণ হয়েছে: $goal';
  }

  @override
  String get portfolioAccount => 'অ্যাকাউন্ট';

  @override
  String get portfolioAccountHint => 'যেমন TBSZ 2026 (ঐচ্ছিক)';

  @override
  String get portfolioAccountAdd => 'অ্যাকাউন্ট উল্লেখ করুন';

  @override
  String get portfolioAccountsAll => 'সব অ্যাকাউন্ট';

  @override
  String get portfolioAccountNote =>
      'শুধু এই অ্যাকাউন্টের লেনদেন ও ডিভিডেন্ড। নগদ, লক্ষ্য ও AI পর্যালোচনা ‘সব অ্যাকাউন্ট’-এ দেখানো হয়।';

  @override
  String get portfolioNoAccount => 'অ্যাকাউন্ট ছাড়া';

  @override
  String portfolioFee(String currency) {
    return 'কমিশন ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'কমিশন যোগ করুন';

  @override
  String portfolioFeeRow(String amount) {
    return 'কমিশন: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'বার্ষিক সারাংশ';

  @override
  String get portfolioProceeds => 'বিক্রয় আয়';

  @override
  String get portfolioCostBasis => 'ক্রয়মূল্য';

  @override
  String get portfolioFeesPaid => 'পরিশোধিত কমিশন';

  @override
  String get portfolioAnnualSummaryNote =>
      'পরিমাণগুলো মূল মুদ্রায়, রূপান্তর করা হয়নি। বিক্রয় আয় বিক্রির কমিশন বাদ দিয়ে দেখানো; ক্রয়মূল্যে ক্রয়ের কমিশন অন্তর্ভুক্ত (FIFO)। কর রিটার্নের জন্য আপনার কর কর্তৃপক্ষ যে বিনিময় হার চায়, সেই হারে রূপান্তর করুন।';

  @override
  String get portfolioShare => 'পারফরম্যান্স শেয়ার করুন';

  @override
  String get portfolioShareHeading => 'আমার পোর্টফোলিও';

  @override
  String get portfolioTopHoldings => 'সবচেয়ে বড় অবস্থান';

  @override
  String get portfolioShareNote =>
      'শুধু শতাংশ শেয়ার করা হয়, কোনো পরিমাণ নয়।';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি অবস্থান',
      one: '1টি অবস্থান',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'বিনিয়োগ পরামর্শ নয়';

  @override
  String get contributionButton => 'নতুন টাকা বিনিয়োগ করুন';

  @override
  String contributionAmount(String currency) {
    return 'বিনিয়োগের পরিমাণ ($currency)';
  }

  @override
  String get contributionHint =>
      'শুধু কেনা, কোনো বিক্রি নয়: লক্ষ্যের চেয়ে সবচেয়ে বেশি পিছিয়ে থাকা অবস্থানগুলো আগে টাকা পায়।';

  @override
  String contributionShares(String shares) {
    return '≈ $shares শেয়ার';
  }

  @override
  String contributionMissing(String symbols) {
    return '$symbols-এর বর্তমান দাম নেই: বণ্টনে ধরা হয়নি।';
  }

  @override
  String get portfolioGoalSet => 'লক্ষ্য ঠিক করুন';

  @override
  String get portfolioGoalTitle => 'পোর্টফোলিও লক্ষ্য';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · লক্ষ্য: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'লক্ষ্য পূরণ হয়েছে: $amount';
  }

  @override
  String get portfolioGoalRemove => 'লক্ষ্য সরান';

  @override
  String get alertEdit => 'সতর্কতা সম্পাদনা করুন';

  @override
  String get positionOpenLots => 'এখনও ধরে রাখা (সবচেয়ে পুরোনো আগে)';

  @override
  String get lotRemoved => 'লেনদেন মুছে ফেলা হয়েছে';

  @override
  String get alertDeleted => 'সতর্কতা মুছে ফেলা হয়েছে';

  @override
  String get alertsClearTriggered => 'ট্রিগার হওয়া সতর্কতা মুছুন';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি সতর্কতা মুছে ফেলা হয়েছে',
      one: '1টি সতর্কতা মুছে ফেলা হয়েছে',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'হোম স্ক্রিন';

  @override
  String get allocationCountries => 'দেশ';

  @override
  String get newsExplainNoteResearch =>
      'AI ব্যাখ্যা: এটি ওয়েবে তথ্য যাচাই করে, নিবন্ধটি খোলে এবং উৎসটি কতটা নির্ভরযোগ্য তা বিচার করে। এটি বিনিয়োগ পরামর্শ নয়। এটি আপনার দৈনিক প্রশ্নের সীমা থেকে যায়, কোনো বিশ্লেষণ খরচ হয় না।';

  @override
  String get sourceOfficial => 'অফিসিয়াল';

  @override
  String get sourcePressRelease => 'প্রেস বিজ্ঞপ্তি';

  @override
  String get sourceMajorNews => 'প্রধান গণমাধ্যম';

  @override
  String get sourceOpinion => 'মতামত';

  @override
  String get earningsSummaryButton => 'সর্বশেষ রিপোর্টে কী ছিল?';

  @override
  String get earningsSummaryNote =>
      'কোম্পানির ফলাফল ঘোষণা এবং ওয়েবে পাওয়া সংবাদমাধ্যমের প্রতিবেদনের AI সারাংশ। এটি বিনিয়োগ পরামর্শ নয়। এটি আপনার দৈনিক প্রশ্নের সীমা থেকে যায়, কোনো বিশ্লেষণ খরচ হয় না।';

  @override
  String get compareLastSurprise => 'গত ত্রৈমাসিক EPS বনাম প্রত্যাশিত';

  @override
  String get compareNextReport => 'পরবর্তী রিপোর্ট';

  @override
  String get resolvingDescription =>
      'আপনি কোন শেয়ার বোঝাতে চেয়েছেন তা নির্ধারণ করা হচ্ছে…';

  @override
  String get instrumentTitle => 'এই ইনস্ট্রুমেন্ট সম্পর্কে';

  @override
  String get instrumentHint =>
      'এই প্রতীকের কোনো কোম্পানি প্রোফাইল নেই – এটি একটি ETF, ফান্ড বা ডিপোজিটরি রিসিট হতে পারে। AI-কে জিজ্ঞাসা করুন এটি কী, এতে কী আছে এবং এর খরচ কত।';

  @override
  String get instrumentAsk => 'এটি কী?';

  @override
  String get instrumentNote =>
      'ইস্যুকারীর ফান্ড পেজ এবং ওয়েবে পাওয়া আর্থিক সাইট থেকে AI ব্যাখ্যা। এটি বিনিয়োগ পরামর্শ নয়। এটি আপনার দৈনিক প্রশ্নের সীমা থেকে যায়, কোনো বিশ্লেষণ খরচ হয় না।';

  @override
  String suggestAskAi(String query) {
    return 'AI-কে জিজ্ঞাসা করুন: “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return '$symbols-এর বর্তমান দাম নেই।';
  }

  @override
  String get eventsRecentResults => 'সম্প্রতি ঘোষিত ফলাফল';

  @override
  String get saveToNotes => 'আমার নোটে সেভ করুন';

  @override
  String get savedToNotes => 'আপনার নোটে সেভ হয়েছে';

  @override
  String get portfolioDividendsReceived => 'প্রাপ্ত ডিভিডেন্ড';

  @override
  String get portfolioDividendsThisYear => 'এ বছর';

  @override
  String get portfolioDividendsAllTime => 'সর্বকাল';

  @override
  String get portfolioAddDividend => 'ডিভিডেন্ড যোগ করুন';

  @override
  String portfolioDividendAmount(String currency) {
    return 'প্রাপ্ত পরিমাণ ($currency)';
  }

  @override
  String get portfolioDividendDate => 'পরিশোধের তারিখ';

  @override
  String get portfolioDividendsEmpty =>
      'এখনও কোনো ডিভিডেন্ড নথিভুক্ত হয়নি। হাতে যোগ করুন, বা আপনার ব্রোকারের এক্সপোর্ট ইম্পোর্ট করুন – এর ডিভিডেন্ডের সারিগুলোও নেওয়া হয়।';

  @override
  String get portfolioSplit => 'স্টক স্প্লিট';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'স্টক স্প্লিট: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'স্প্লিটের আগের তারিখের কেনা-বেচা সমন্বয় করা হয়: শেয়ারের সংখ্যা গুণ করা হয় এবং প্রতি শেয়ারের দাম ভাগ করা হয়, তাই মোট খরচ একই থাকে।';

  @override
  String get portfolioSplitRatio => 'অনুপাত (নতুন : পুরনো)';

  @override
  String get portfolioSplitRatioError =>
      '10:1 এর মতো একটি অনুপাত লিখুন, বা রিভার্স স্প্লিটের জন্য 1:10।';

  @override
  String get portfolioSplitDate => 'স্প্লিটের তারিখ';

  @override
  String portfolioSplitRow(String ratio) {
    return 'স্টক স্প্লিট $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'স্টক স্প্লিট মুছে ফেলা হয়েছে';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি স্টক স্প্লিট যোগ করা হয়েছে',
      one: '1টি স্টক স্প্লিট যোগ করা হয়েছে',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি ডিভিডেন্ড যোগ হয়েছে',
      one: '1টি ডিভিডেন্ড যোগ হয়েছে',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'ডিভিডেন্ড এক্সপোর্ট করুন (CSV)';

  @override
  String get portfolioDividendDeleted => 'ডিভিডেন্ড মুছে ফেলা হয়েছে';

  @override
  String get portfolioDividendsHint =>
      'পরিমাণগুলো আপনার অ্যাকাউন্টে যেভাবে এসেছে, পরিশোধের মুদ্রায়; মোট আজকের দরে রূপান্তরিত। কর রিটার্নের জন্য আপনার ব্রোকারের স্টেটমেন্ট ব্যবহার করুন।';

  @override
  String get awayTitle => 'আপনি যখন দূরে ছিলেন';

  @override
  String awaySince(String when) {
    return '$when থেকে';
  }

  @override
  String get awayQuiet => 'বিশেষ কিছু বদলায়নি।';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি অ্যালার্ট ট্রিগার হয়েছে',
      one: '1টি অ্যালার্ট ট্রিগার হয়েছে',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'ফলাফল প্রকাশ করেছে: $symbols';
  }

  @override
  String get moveWhyButton => 'আজ কেন ওঠানামা করছে?';

  @override
  String moveWhyTitle(String percent) {
    return 'আজ $percent';
  }

  @override
  String get moveWhyNote =>
      'ওয়েবে পাওয়া আজকের খবরের ভিত্তিতে AI ব্যাখ্যা; আসল কারণ অজানা বা ভিন্ন হতে পারে। বিনিয়োগ পরামর্শ নয়। আপনার দৈনিক প্রশ্নের কোটা ব্যবহার করে, বিশ্লেষণ নয়।';

  @override
  String get sectionTechnical => 'টেকনিক্যাল চিত্র';

  @override
  String get labelSma50 => '৫০ দিনের গড়';

  @override
  String get labelSma200 => '২০০ দিনের গড়';

  @override
  String get labelRsi => 'RSI (১৪ দিন)';

  @override
  String get labelVolatility30 => 'অস্থিরতা (৩০ দিন)';

  @override
  String techAbove(String percent) {
    return '$percent উপরে';
  }

  @override
  String techBelow(String percent) {
    return '$percent নিচে';
  }

  @override
  String get techOverbought => 'ওভারবট';

  @override
  String get techOversold => 'ওভারসোল্ড';

  @override
  String get techNeutral => 'নিরপেক্ষ';

  @override
  String get techGoldenCross =>
      '৫০ দিনের গড় ২০০ দিনের গড়ের উপরে – প্রচলিত ব্যাখ্যায় ঊর্ধ্বমুখী প্রবণতা।';

  @override
  String get techDeathCross =>
      '৫০ দিনের গড় ২০০ দিনের গড়ের নিচে – প্রচলিত ব্যাখ্যায় নিম্নমুখী প্রবণতা।';

  @override
  String get glossSma50 =>
      'শেষ ৫০ ট্রেডিং দিনের গড় ক্লোজিং দাম। এর উপরের দামকে প্রায়ই স্বল্পমেয়াদি শক্তি, নিচের দামকে দুর্বলতা হিসেবে ধরা হয়।';

  @override
  String get glossSma200 =>
      'শেষ ২০০ ট্রেডিং দিনের গড় ক্লোজিং দাম – প্রচলিত দীর্ঘমেয়াদি ট্রেন্ড লাইন। অনেক বিনিয়োগকারী এর উপরের দামকে দীর্ঘমেয়াদি ঊর্ধ্বমুখী প্রবণতা মনে করেন।';

  @override
  String get glossRsi =>
      'রিলেটিভ স্ট্রেংথ ইনডেক্স: সাম্প্রতিক লাভকে সাম্প্রতিক ক্ষতির সঙ্গে ০–১০০ স্কেলে তুলনা করে। ৭০-এর উপরে শেয়ারটিকে প্রায়ই ওভারবট (দ্রুত বেড়েছে), ৩০-এর নিচে ওভারসোল্ড বলা হয় – তবে শক্তিশালী ট্রেন্ড সেখানে দীর্ঘ সময় থাকতে পারে।';

  @override
  String get glossVolatility =>
      'দাম দিনে দিনে কতটা ওঠানামা করে, বছরের হিসাবে: ২০% মানে সাধারণ বছরে দাম প্রায় ±২০%-এর মধ্যে চলে। বেশি অস্থিরতা মানে দুই দিকেই বড় ওঠানামা।';

  @override
  String get techNote =>
      'দৈনিক ক্লোজিং দাম থেকে হিসাব করা। টেকনিক্যাল সংকেত অতীতের বর্ণনা দেয়, ভবিষ্যতের নয়।';

  @override
  String portfolioAbove200(int above, int count) {
    return '$countটি অবস্থানের মধ্যে $aboveটি নিজেদের ২০০ দিনের গড়ের উপরে';
  }

  @override
  String get watchSignalsTitle => 'সংকেত';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · ওভারসোল্ড';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · ওভারবট';
  }

  @override
  String get signalCrossedAbove => '২০০ দিনের গড়ের উপরে উঠেছে';

  @override
  String get signalCrossedBelow => '২০০ দিনের গড়ের নিচে নেমেছে';

  @override
  String get signalAlertsTitle => 'টেকনিক্যাল সিগন্যালের বিজ্ঞপ্তি';

  @override
  String get signalAlertsSubtitle =>
      'দিনে একবার, যখন আপনার অনুসরণ করা কোনো স্টক ওভারসোল্ড বা ওভারবট (RSI) হয়, অথবা এর দাম ২০০ দিনের গড় অতিক্রম করে।';

  @override
  String get signalAlertsNotification => 'টেকনিক্যাল সিগন্যাল';

  @override
  String get glossaryPageTitle => 'শব্দকোষ';

  @override
  String get glossaryPageSubtitle =>
      'অ্যাপে দেখানো প্রতিটি সংখ্যার সহজ ব্যাখ্যা, P/E থেকে RSI পর্যন্ত';

  @override
  String get glossarySearchHint => 'শব্দকোষে খুঁজুন';

  @override
  String get portfolioCash => 'নগদ';

  @override
  String get portfolioCashTitle => 'নগদ ব্যালেন্স';

  @override
  String get portfolioCashHint =>
      'আপনার ব্রোকারের কাছে থাকা বিনিয়োগ না করা টাকা, মুদ্রা অনুসারে। এটি মোট মূল্য ও বণ্টনে গণ্য হয়; রিটার্নে নয়।';

  @override
  String portfolioCashAmount(String currency) {
    return 'পরিমাণ ($currency)';
  }

  @override
  String get portfolioCashEdit => 'নগদ ব্যালেন্স সেট করুন';

  @override
  String get portfolioDividendsByMonth => 'মাস অনুযায়ী';

  @override
  String get dividendsLegendReceived => 'প্রাপ্ত';

  @override
  String get dividendsLegendExpected => 'প্রত্যাশিত';

  @override
  String get portfolioDividendsExpected => 'পরবর্তী প্রত্যাশিত';

  @override
  String get portfolioDividendsExpectedNote =>
      'আপনার নথিভুক্ত পেমেন্টের তারিখ ও পরিমাণ থেকে অনুমান করা; কোম্পানি এগুলো বদলাতে বা বাদ দিতে পারে।';

  @override
  String portfolioDividendAround(String date) {
    return 'আনুমানিক $date';
  }
}
