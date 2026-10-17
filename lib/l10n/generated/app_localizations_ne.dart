// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Nepali (`ne`).
class AppLocalizationsNe extends AppLocalizations {
  AppLocalizationsNe([String locale = 'ne']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'कुनै शेयरको फोटो खिच्नुहोस् र त्यसबारे सबै कुरा थाहा पाउनुहोस्।';

  @override
  String get homeHint =>
      'शेयर प्रमाणपत्र, ब्रोकरेज एपको स्क्रिन, पत्रिका वा कम्पनीको लोगो – शेयर चिनाउने जुनसुकै कुरा।';

  @override
  String get takePhoto => 'फोटो खिच्नुहोस्';

  @override
  String get chooseFromGallery => 'ग्यालरीबाट छान्नुहोस्';

  @override
  String get chooseImage => 'तस्बिर छान्नुहोस्';

  @override
  String get enterTickerManually => 'टिकर आफैं प्रविष्ट गर्नुहोस्';

  @override
  String get tickerInputLabel => 'टिकर सिम्बल';

  @override
  String get tickerInputHint => 'जस्तै AAPL';

  @override
  String get lookUp => 'खोज्नुहोस्';

  @override
  String demoModeBanner(String symbols) {
    return 'डेमो मोड – बजार डेटाको कुनै कुञ्जी कन्फिगर गरिएको छैन। नमुना डेटा यिनका लागि उपलब्ध छ: $symbols।';
  }

  @override
  String get recognizing => 'तस्बिर विश्लेषण गरिँदै…';

  @override
  String get loadingData => 'डेटा लोड हुँदै…';

  @override
  String get noCandidatesTitle => 'कुनै शेयर पहिचान भएन';

  @override
  String get noCandidatesBody =>
      'हामीले यो तस्बिरमा कुनै शेयर पहिचान गर्न सकेनौं। अझ स्पष्ट फोटो प्रयास गर्नुहोस्, वा टिकर आफैं प्रविष्ट गर्नुहोस्।';

  @override
  String get whatWeSaw => 'हामीले के देख्यौं';

  @override
  String get chooseCandidateTitle => 'तपाईंले कुन शेयर भन्न खोज्नुभएको हो?';

  @override
  String confidencePercent(int percent) {
    return '$percent% विश्वसनीयता';
  }

  @override
  String get settings => 'सेटिङहरू';

  @override
  String get language => 'भाषा';

  @override
  String get systemLanguage => 'प्रणालीको पूर्वनिर्धारित';

  @override
  String get about => 'एपको बारेमा';

  @override
  String get disclaimer =>
      'यो एपले जानकारी मात्र दिन्छ, यो लगानी सल्लाह होइन। डेटा ढिलो वा गलत हुन सक्छ।';

  @override
  String dataSource(String source) {
    return 'डेटा स्रोत: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'पहिचान: $source';
  }

  @override
  String get retry => 'फेरि प्रयास गर्नुहोस्';

  @override
  String get cancel => 'रद्द गर्नुहोस्';

  @override
  String get ok => 'ठिक छ';

  @override
  String get close => 'बन्द गर्नुहोस्';

  @override
  String get errorGeneric => 'केही गडबड भयो।';

  @override
  String get errorSectionUnavailable => 'यो खण्ड लोड गर्न सकिएन।';

  @override
  String get notAvailable => 'उपलब्ध छैन';

  @override
  String get sectionIdentity => 'पहिचान';

  @override
  String get sectionPrice => 'मूल्य';

  @override
  String get sectionValuation => 'मूल्याङ्कन';

  @override
  String get sectionFinancials => 'वित्तीय तथ्याङ्क';

  @override
  String get sectionDividend => 'लाभांश';

  @override
  String get sectionProfile => 'कम्पनी प्रोफाइल';

  @override
  String get sectionAnalysts => 'विश्लेषक रेटिङ';

  @override
  String get sectionNews => 'समाचार';

  @override
  String get sectionRecognition => 'पहिचानको विवरण';

  @override
  String get labelSymbol => 'टिकर';

  @override
  String get labelExchange => 'एक्सचेन्ज';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'मुद्रा';

  @override
  String get labelCountry => 'देश';

  @override
  String get labelIndustry => 'उद्योग';

  @override
  String get labelSector => 'क्षेत्र';

  @override
  String get labelWebsite => 'वेबसाइट';

  @override
  String get labelIpoDate => 'IPO मिति';

  @override
  String get labelMarketCap => 'बजार पुँजीकरण';

  @override
  String get labelSharesOutstanding => 'जारी शेयर संख्या';

  @override
  String get labelEmployees => 'कर्मचारी';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'मुख्यालय';

  @override
  String get labelDescription => 'विवरण';

  @override
  String get labelLastPrice => 'अन्तिम मूल्य';

  @override
  String get labelChange => 'परिवर्तन';

  @override
  String get labelOpen => 'खुल्ने मूल्य';

  @override
  String get labelDayHigh => 'दिनको उच्च';

  @override
  String get labelDayLow => 'दिनको न्यून';

  @override
  String get labelPreviousClose => 'अघिल्लो बन्द मूल्य';

  @override
  String get labelWeek52High => '52 हप्ताको उच्च';

  @override
  String get labelWeek52Low => '52 हप्ताको न्यून';

  @override
  String get labelAverageVolume10d => 'औसत कारोबार (10 दिन)';

  @override
  String updatedAt(String time) {
    return 'अपडेट: $time';
  }

  @override
  String get labelPeTrailing => 'P/E (ट्रेलिङ)';

  @override
  String get labelPeForward => 'P/E (फरवार्ड)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / फ्री क्यास फ्लो';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'बिटा';

  @override
  String get labelRevenueTtm => 'राजस्व (TTM)';

  @override
  String get labelNetIncomeTtm => 'खुद नाफा (TTM)';

  @override
  String get labelGrossMargin => 'कुल मार्जिन';

  @override
  String get labelOperatingMargin => 'सञ्चालन मार्जिन';

  @override
  String get labelNetMargin => 'खुद मार्जिन';

  @override
  String get labelRoe => 'इक्विटीमा प्रतिफल';

  @override
  String get labelRoa => 'सम्पत्तिमा प्रतिफल';

  @override
  String get labelDebtToEquity => 'ऋण / इक्विटी';

  @override
  String get labelCurrentRatio => 'चालु अनुपात';

  @override
  String get labelRevenueGrowth => 'राजस्व वृद्धि (YoY)';

  @override
  String get labelEpsGrowth => 'EPS वृद्धि (YoY)';

  @override
  String get labelDividendYield => 'लाभांश यिल्ड';

  @override
  String get labelDividendPerShare => 'प्रति शेयर लाभांश';

  @override
  String get labelPayoutRatio => 'लाभांश वितरण अनुपात';

  @override
  String get labelConsensus => 'सहमति';

  @override
  String get ratingStrongBuy => 'बलियो खरिद';

  @override
  String get ratingBuy => 'खरिद';

  @override
  String get ratingHold => 'होल्ड';

  @override
  String get ratingSell => 'बिक्री';

  @override
  String get ratingStrongSell => 'बलियो बिक्री';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count विश्लेषक',
      one: '1 विश्लेषक',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'अवधि: $period';
  }

  @override
  String get noNews => 'हालका कुनै समाचार छैनन्।';

  @override
  String get openArticle => 'लेख खोल्नुहोस्';

  @override
  String get openLinkFailed => 'लिङ्क खोल्न सकिएन।';

  @override
  String get recognitionSummary => 'सारांश';

  @override
  String get recognitionEvidence => 'हामीलाई किन यस्तो लाग्छ';

  @override
  String get recognitionRawText => 'तस्बिरबाट पढिएको पाठ';

  @override
  String get errMissingAnthropicKey =>
      'तस्बिर पहिचान कन्फिगर गरिएको छैन (ANTHROPIC_API_KEY छैन)। टिकर आफैं प्रविष्ट गर्नुहोस्।';

  @override
  String get errRecognitionUnreachable =>
      'पहिचान सेवासँग सम्पर्क हुन सकेन। आफ्नो इन्टरनेट जडान जाँच गर्नुहोस्।';

  @override
  String errRecognitionHttp(String status) {
    return 'पहिचान सेवाले त्रुटि फर्कायो (HTTP $status)।';
  }

  @override
  String get errRecognitionRefused =>
      'पहिचान सेवाले यो तस्बिर प्रशोधन गर्न सकेन।';

  @override
  String get errRecognitionTruncated =>
      'पहिचानको जवाफ बीचमै काटियो। कृपया फेरि प्रयास गर्नुहोस्।';

  @override
  String get errRecognitionBadResponse =>
      'पहिचान सेवाबाट अप्रत्याशित जवाफ आयो।';

  @override
  String get errRecognitionEmpty => 'पहिचान सेवाले खाली जवाफ फर्कायो।';

  @override
  String get errMissingFinnhubKey =>
      'बजार डेटा कन्फिगर गरिएको छैन (FINNHUB_API_KEY छैन)।';

  @override
  String get errMarketUnreachable =>
      'बजार डेटा सेवासँग सम्पर्क हुन सकेन। आफ्नो इन्टरनेट जडान जाँच गर्नुहोस्।';

  @override
  String get errMarketRateLimited =>
      'बजार डेटा सेवामा धेरै अनुरोध पठाइए। कृपया एक मिनेट पर्खनुहोस्।';

  @override
  String errMarketHttp(String status) {
    return 'बजार डेटा सेवाले त्रुटि फर्कायो (HTTP $status)।';
  }

  @override
  String get errMarketBadResponse => 'बजार डेटा सेवाबाट अप्रत्याशित जवाफ आयो।';

  @override
  String errNoQuote(String symbol) {
    return '$symbol को मूल्य डेटा भेटिएन।';
  }

  @override
  String errNoProfile(String symbol) {
    return '$symbol को कम्पनी प्रोफाइल भेटिएन।';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'डेमो मोडले $symbols मात्र समर्थन गर्छ। लाइभ डेटाका लागि FINNHUB_API_KEY थप्नुहोस्।';
  }

  @override
  String errUnknown(String detail) {
    return 'केही गडबड भयो: $detail';
  }

  @override
  String get newSearch => 'नयाँ खोज';

  @override
  String get recentSearches => 'हालैका';

  @override
  String get noRecentSearches => 'अहिलेसम्म हालैका खोजहरू छैनन्।';

  @override
  String get clearRecent => 'हालैका हटाउनुहोस्';

  @override
  String get greeting => 'आज कुन शेयर हेरौं?';

  @override
  String get searchHint => 'टिकर वा कम्पनीको नाम';

  @override
  String get attachImage => 'तस्बिर संलग्न गर्नुहोस्';

  @override
  String get searchResultsTitle => 'खोज नतिजा';

  @override
  String errNoResults(String query) {
    return '“$query” का लागि कुनै शेयर भेटिएन।';
  }

  @override
  String get quickBarHint => 'टिकर वा कम्पनीको नाम टाइप गर्नुहोस्…';

  @override
  String get openFullWindow => 'विन्डो खोल्नुहोस्';

  @override
  String hotkeyHint(String shortcut) {
    return 'जहाँबाट पनि WhatStock खोल्न $shortcut थिच्नुहोस्।';
  }

  @override
  String get trayOpen => 'WhatStock खोल्नुहोस्';

  @override
  String get trayQuickSearch => 'द्रुत खोज';

  @override
  String get trayQuit => 'बाहिरिनुहोस्';

  @override
  String get appearance => 'रूपरङ';

  @override
  String get themeSystem => 'प्रणाली';

  @override
  String get themeDark => 'अँध्यारो';

  @override
  String get themeLight => 'उज्यालो';

  @override
  String get back => 'पछाडि';

  @override
  String get aiSectionTitle => 'AI विश्लेषण';

  @override
  String get aiIntro =>
      'AI ले लेखेको विस्तृत सिंहावलोकन: हालका समाचारको सारांश, व्यवसाय, बलियो पक्ष, जोखिम र लुकेका कारक, मूल्याङ्कन, मनोवैज्ञानिक, समाजशास्त्रीय, प्राविधिक र समष्टिगत आर्थिक दृष्टिकोणबाट परिदृश्यसहितको मूल्य पूर्वानुमान, र केमा ध्यान दिने।';

  @override
  String get aiGenerate => 'विश्लेषण तयार गर्नुहोस्';

  @override
  String get aiRegenerate => 'फेरि तयार गर्नुहोस्';

  @override
  String get aiGenerating =>
      'विश्लेषण तयार हुँदै… यसमा एक-दुई मिनेट लाग्न सक्छ।';

  @override
  String get aiSources => 'स्रोतहरू';

  @override
  String aiGeneratedAt(String time) {
    return 'तयार गरिएको: $time';
  }

  @override
  String get aiDisclaimer =>
      'सार्वजनिक डेटा र हालका समाचारमा आधारित AI-निर्मित विश्लेषण। यसमा त्रुटि हुन सक्छ वा यो पुरानो हुन सक्छ, र यो लगानी सल्लाह होइन।';

  @override
  String get errAiNotConfigured =>
      'AI विश्लेषण कन्फिगर गरिएको छैन (ANTHROPIC_API_KEY छैन)।';

  @override
  String get errAiUnreachable =>
      'AI सेवासँग सम्पर्क हुन सकेन। आफ्नो इन्टरनेट जडान जाँच गर्नुहोस्।';

  @override
  String errAiHttp(String status) {
    return 'AI सेवाले त्रुटि फर्कायो (HTTP $status)।';
  }

  @override
  String get errAiRefused =>
      'AI सेवाले यो शेयरको विश्लेषण गर्न अस्वीकार गर्‍यो।';

  @override
  String get errAiBadResponse => 'AI सेवाबाट अप्रत्याशित जवाफ आयो।';

  @override
  String get sectionChart => 'मूल्य चार्ट';

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
      'हालको डेटा स्रोतबाट मूल्यको इतिहास उपलब्ध छैन।';

  @override
  String get sectionStatements => 'वित्तीय विवरण (वार्षिक)';

  @override
  String get labelFiscalYear => 'आर्थिक वर्ष';

  @override
  String get labelRevenue => 'राजस्व';

  @override
  String get labelNetIncome => 'खुद नाफा';

  @override
  String get labelTotalAssets => 'कुल सम्पत्ति';

  @override
  String get labelTotalLiabilities => 'कुल दायित्व';

  @override
  String get labelEquity => 'शेयरधनी कोष';

  @override
  String get labelOperatingCashFlow => 'सञ्चालन नगद प्रवाह';

  @override
  String get statementsUnavailable =>
      'यो शेयरका लागि प्रकाशित वित्तीय विवरण उपलब्ध छैनन्।';

  @override
  String get launchAtLogin => 'लगइन हुँदा सुरु गर्नुहोस्';

  @override
  String get hotkeyLabel => 'ग्लोबल सर्टकट';

  @override
  String get hotkeyRecordHint =>
      'यहाँ क्लिक गर्नुहोस्, त्यसपछि नयाँ कुञ्जी संयोजन थिच्नुहोस्';

  @override
  String get hotkeyReset => 'पूर्वनिर्धारितमा फर्काउनुहोस्';

  @override
  String get pasteImage => 'क्लिपबोर्डबाट तस्बिर टाँस्नुहोस्';

  @override
  String get errClipboardNoImage => 'क्लिपबोर्डमा कुनै तस्बिर छैन।';

  @override
  String get favorites => 'मनपर्ने';

  @override
  String get addToFavorites => 'मनपर्नेमा थप्नुहोस्';

  @override
  String get removeFromFavorites => 'मनपर्नेबाट हटाउनुहोस्';

  @override
  String get noFavorites =>
      'अहिलेसम्म कुनै मनपर्ने छैन। थप्न कुनै शेयरको तारा ट्याप गर्नुहोस्।';

  @override
  String get displayCurrency => 'देखाउने मुद्रा';

  @override
  String get displayCurrencyNone => 'शेयरकै मुद्रा मात्र';

  @override
  String labelConverted(String currency) {
    return '≈ $currency मा';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'दर: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'अपडेटहरू';

  @override
  String currentVersion(String version) {
    return 'संस्करण $version';
  }

  @override
  String get autoUpdate => 'अपडेटहरू स्वचालित रूपमा इन्स्टल गर्नुहोस्';

  @override
  String get checkForUpdates => 'अपडेट जाँच गर्नुहोस्';

  @override
  String get updateChecking => 'अपडेट जाँच गरिँदै…';

  @override
  String get updateUpToDate => 'तपाईं नवीनतम संस्करणमा हुनुहुन्छ।';

  @override
  String updateAvailable(String version) {
    return 'संस्करण $version उपलब्ध छ।';
  }

  @override
  String get updateDownloading => 'अपडेट पृष्ठभूमिमा डाउनलोड हुँदै…';

  @override
  String get updateDownloaded =>
      'अपडेट तयार छ। इन्स्टल गर्न रिस्टार्ट गर्नुहोस्।';

  @override
  String get updateNow => 'अपडेट गर्नुहोस्';

  @override
  String get restartNow => 'रिस्टार्ट गर्नुहोस्';

  @override
  String get updatesViaStore =>
      'अपडेटहरू एप स्टोरमार्फत स्वचालित रूपमा आउँछन्।';

  @override
  String get updateCheckFailed => 'अपडेट जाँच गर्न सकिएन।';

  @override
  String get subscription => 'सदस्यता';

  @override
  String get planTrial => 'परीक्षण';

  @override
  String get planNormal => 'सामान्य';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'कुनै सक्रिय योजना छैन';

  @override
  String planAnalysesPerMonth(int count) {
    return 'प्रति महिना $count विश्लेषण';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$count विश्लेषणसहित $days दिनको निःशुल्क परीक्षण';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'परीक्षणका $days दिन बाँकी',
      one: 'परीक्षणको 1 दिन बाँकी',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'तपाईंको निःशुल्क परीक्षण सकियो। विश्लेषण जारी राख्न कुनै योजना छान्नुहोस्।';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'यस अवधिमा $total मध्ये $remaining विश्लेषण बाँकी';
  }

  @override
  String extraCredits(int count) {
    return '$count अतिरिक्त विश्लेषण';
  }

  @override
  String renewsOn(String date) {
    return '$date मा नवीकरण हुन्छ';
  }

  @override
  String get choosePlan => 'योजना छान्नुहोस्';

  @override
  String get currentPlan => 'हालको योजना';

  @override
  String get subscribe => 'सदस्यता लिनुहोस्';

  @override
  String get perMonth => '/ महिना';

  @override
  String get extraPacksTitle => 'अझ चाहिन्छ? अतिरिक्त विश्लेषण किन्नुहोस्';

  @override
  String get extraPacksHint =>
      'अतिरिक्त विश्लेषणको म्याद कहिल्यै सकिँदैन, र तिनीहरू मासिक कोटा सकिएपछि प्रयोग हुन्छन्।';

  @override
  String get buy => 'किन्नुहोस्';

  @override
  String get restorePurchases => 'खरिदहरू पुनर्स्थापना गर्नुहोस्';

  @override
  String get manageSubscription => 'सदस्यता व्यवस्थापन गर्नुहोस्';

  @override
  String get purchaseSuccess => 'धन्यवाद! तपाईंको खरिद सक्रिय छ।';

  @override
  String get purchasePending => 'खरिद प्रक्रियामा छ…';

  @override
  String get purchaseFailed => 'खरिद पूरा गर्न सकिएन।';

  @override
  String get purchaseCanceled => 'खरिद रद्द गरियो।';

  @override
  String get billingUnavailable =>
      'यो प्लेटफर्ममा अहिले खरिद उपलब्ध छैन। आफ्नो फोन वा Mac मा सदस्यता लिनुहोस्; तपाईंको योजना हरेक डिभाइसमा चल्नेछ।';

  @override
  String get errQuotaExceeded =>
      'यस अवधिका लागि तपाईंसँग कुनै विश्लेषण बाँकी छैन। आफ्नो योजना अपग्रेड गर्नुहोस् वा अतिरिक्त विश्लेषण किन्नुहोस्।';

  @override
  String get errTrialExpired =>
      'तपाईंको निःशुल्क परीक्षण सकियो। जारी राख्न कुनै योजना छान्नुहोस्।';

  @override
  String get errNoPlan => 'AI विश्लेषणका लागि सक्रिय योजना चाहिन्छ।';

  @override
  String get viewPlans => 'योजनाहरू हेर्नुहोस्';

  @override
  String get usageTitle => 'प्रयोग';

  @override
  String get demoPurchaseNote =>
      'डेमो बिलिङ: यो प्लेटफर्ममा खरिद सिमुलेट गरिन्छ।';

  @override
  String get mostPopular => 'सबैभन्दा लोकप्रिय';

  @override
  String get bestValue => 'उत्तम मूल्य';

  @override
  String get planFeaturesCommon =>
      'फोटो पहिचान, लाइभ डेटा, चार्ट, मनपर्ने र सबै 120 भाषा हरेक योजनामा समावेश छन्। कोटा AI विश्लेषणका लागि हो।';

  @override
  String get searchLanguages => 'भाषा खोज्नुहोस्…';

  @override
  String get noLanguageMatch => 'कुनै भाषा मिलेन।';

  @override
  String get aiSettings => 'AI विश्लेषण';

  @override
  String get aiLength => 'लम्बाइ';

  @override
  String get aiDepthBrief => 'छोटो';

  @override
  String get aiDepthStandard => 'मानक';

  @override
  String get aiDepthDeep => 'विस्तृत';

  @override
  String get aiDepthBriefDesc => 'मुख्य कुरा, छिटो।';

  @override
  String get aiDepthStandardDesc => 'सबै खण्डसहितको पूर्ण रिपोर्ट।';

  @override
  String get aiDepthDeepDesc =>
      'थप वेब खोज, समकक्षी कम्पनीसँग तुलना र गहिरो विवरण।';

  @override
  String aiDepthWords(String min, String max) {
    return 'लगभग $min–$max शब्द';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count विश्लेषण खर्च हुन्छन्',
      one: '1 विश्लेषण खर्च हुन्छ',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'पाठकको स्तर';

  @override
  String get aiReaderBeginner => 'सुरुआती';

  @override
  String get aiReaderExperienced => 'अनुभवी';

  @override
  String get aiReaderBeginnerDesc =>
      'सरल भाषा; हरेक प्राविधिक शब्दको व्याख्या गरिन्छ।';

  @override
  String get aiReaderExperiencedDesc => 'मानक वित्तीय शब्दावलीसहित सघन पाठ।';

  @override
  String get aiCounterArgument => 'सबैभन्दा बलियो प्रतितर्क';

  @override
  String get aiCounterArgumentDesc =>
      'सारांश सधैं आफ्नै निष्कर्षविरुद्धको सबैभन्दा बलियो तर्कसँग टुङ्गिन्छ।';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'तपाईंको योजनामा प्रति विश्लेषण बढीमा $count वेब खोज',
      one: 'तपाईंको योजनामा प्रति विश्लेषण बढीमा 1 वेब खोज',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'मानक लम्बाइमा योजनाअनुसार वेब खोज: सामान्य $normal, Pro $pro, Max $max, Ultra $ultra। छोटोमा 2 कम, विस्तृतमा 2 बढी।';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'बढीमा $count वेब खोज',
      one: 'बढीमा 1 वेब खोज',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'प्रति विश्लेषण $count वेब खोज',
      one: 'प्रति विश्लेषण 1 वेब खोज',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'यो लम्बाइका लागि $needed विश्लेषण चाहिन्छ, तर $left मात्र बाँकी छन्। सेटिङमा छोटो लम्बाइ छान्नुहोस् वा थप विश्लेषण लिनुहोस्।';
  }

  @override
  String get outlookMarketMood => 'बजारको मनोभाव';

  @override
  String get moodVeryPessimistic => 'अत्यन्त निराशावादी';

  @override
  String get moodPessimistic => 'निराशावादी';

  @override
  String get moodNeutral => 'तटस्थ';

  @override
  String get moodOptimistic => 'आशावादी';

  @override
  String get moodVeryOptimistic => 'अत्यन्त आशावादी';

  @override
  String get scenarioBull => 'तेजीको परिदृश्य';

  @override
  String get scenarioBase => 'आधार परिदृश्य';

  @override
  String get scenarioBear => 'मन्दीको परिदृश्य';

  @override
  String outlookCurrentPrice(String price) {
    return 'हालको मूल्य: $price';
  }

  @override
  String get outlookKeyLevels => 'मुख्य स्तरहरू';

  @override
  String get keyLevelSupport => 'सपोर्ट';

  @override
  String get keyLevelResistance => 'रेजिस्टेन्स';

  @override
  String get keyLevelAnchor => 'सन्दर्भ स्तर';

  @override
  String get upcomingEvents => 'आगामी घटनाहरू';

  @override
  String get outlookChartNote =>
      'सांकेतिक दायरा; सम्भावनाहरू मोटामोटी अनुमान हुन्, भविष्यवाणी होइनन्।';

  @override
  String get accountTitle => 'खाता';

  @override
  String get signIn => 'साइन इन गर्नुहोस्';

  @override
  String get signOut => 'साइन आउट गर्नुहोस्';

  @override
  String get notSignedIn => 'साइन इन गरिएको छैन';

  @override
  String get accountBenefit =>
      'तपाईंको सदस्यता सबै डिभाइसमा चलोस् भन्नका लागि साइन इन गर्नुहोस्।';

  @override
  String get accountSyncedNote =>
      'तपाईंको सदस्यता र बाँकी विश्लेषण हरेक डिभाइसमा उस्तै हुन्छन्।';

  @override
  String get signInTitle => 'WhatStock मा साइन इन गर्नुहोस्';

  @override
  String get emailLabel => 'इमेल ठेगाना';

  @override
  String get continueWithEmail => 'इमेलमार्फत जारी राख्नुहोस्';

  @override
  String codeSentTo(String email) {
    return 'हामीले $email मा 6 अङ्कको कोड पठायौं। यो 10 मिनेटसम्म मान्य हुन्छ।';
  }

  @override
  String get codeLabel => 'साइन-इन कोड';

  @override
  String get resendCode => 'नयाँ कोड पठाउनुहोस्';

  @override
  String get useDifferentEmail => 'अर्को इमेल प्रयोग गर्नुहोस्';

  @override
  String get errInvalidCode => 'कोड गलत छ वा यसको म्याद सकिएको छ।';

  @override
  String get errInvalidEmail => 'कृपया मान्य इमेल ठेगाना प्रविष्ट गर्नुहोस्।';

  @override
  String get errSignInFailed =>
      'साइन इन असफल भयो। आफ्नो जडान जाँचेर फेरि प्रयास गर्नुहोस्।';

  @override
  String get checkoutWaiting =>
      'आफ्नो ब्राउजरमा भुक्तानी पूरा गर्नुहोस्। भुक्तानी सकिएपछि एप आफैं अपडेट हुन्छ।';

  @override
  String get paymentViaStripe =>
      'Stripe मार्फत ब्राउजरमै सुरक्षित भुक्तानी। जुनसुकै बेला रद्द गर्न सकिन्छ।';

  @override
  String get paymentViaStore =>
      'तपाईंको App Store वा Google Play खातामार्फत बिल गरिन्छ। स्टोरको सेटिङमा जुनसुकै बेला रद्द गर्न सकिन्छ।';

  @override
  String get keySpace => 'स्पेस';

  @override
  String get doubleOptionTitle => 'Option दुई पटक थिच्नुहोस्';

  @override
  String get doubleOptionSubtitle =>
      'Option कुञ्जी छिटो-छिटो दुई पटक थिच्दा पनि WhatStock खुल्छ।';

  @override
  String get doubleOptionPermission =>
      'अरू एपहरूमा पनि यो चलाउन System Settings → Privacy & Security → Input Monitoring मा WhatStock लाई अनुमति दिनुहोस्, त्यसपछि एप फेरि खोल्नुहोस्।';

  @override
  String get openSystemSettings => 'प्रणाली सेटिङ खोल्नुहोस्';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'जहाँबाट पनि WhatStock खोल्न $shortcut थिच्नुहोस् वा Option दुई पटक थिच्नुहोस्।';
  }

  @override
  String get scenarioMostLikely => 'सबैभन्दा सम्भावित';

  @override
  String get longTermToday => 'आज';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years वर्ष',
      one: '1 वर्ष',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range प्रति वर्ष';
  }

  @override
  String longTermLikely(String price) {
    return 'सबैभन्दा सम्भावित $price';
  }

  @override
  String get confidenceLow => 'न्यून विश्वसनीयता';

  @override
  String get confidenceMedium => 'मध्यम विश्वसनीयता';

  @override
  String get confidenceHigh => 'उच्च विश्वसनीयता';

  @override
  String get longTermNote =>
      'दीर्घकालीन दायराहरू उल्लिखित मान्यतामा आधारित छन् र समयसँगै फराकिलो हुँदै जान्छन्। मूल्यमा लाभांश समावेश छैन। यी मोटामोटी अनुमान हुन्, भविष्यवाणी होइनन्।';

  @override
  String get portfolio => 'पोर्टफोलियो';

  @override
  String get portfolioEmpty =>
      'यहाँ अहिलेसम्म केही छैन। कुनै शेयर खोल्नुहोस् र आफूसँग भएका शेयर ट्र्याक गर्न “पोर्टफोलियोमा थप्नुहोस्” ट्याप गर्नुहोस्।';

  @override
  String get portfolioLocalNote =>
      'यो डिभाइसमा मात्र सुरक्षित हुन्छ। कुल योग ECB को सन्दर्भ दरमा रूपान्तरण गरिन्छ; मूल्य ढिलो हुन सक्छ।';

  @override
  String get addToPortfolio => 'पोर्टफोलियोमा थप्नुहोस्';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol थप्नुहोस्';
  }

  @override
  String get portfolioQuantity => 'शेयर संख्या';

  @override
  String portfolioBuyPrice(String currency) {
    return 'प्रति शेयर मूल्य ($currency)';
  }

  @override
  String get portfolioBuyDate => 'खरिद मिति';

  @override
  String get portfolioAdd => 'थप्नुहोस्';

  @override
  String get portfolioInvalidNumber =>
      'शून्यभन्दा ठूलो संख्या प्रविष्ट गर्नुहोस्।';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol तपाईंको पोर्टफोलियोमा थपियो।';
  }

  @override
  String get portfolioTotalValue => 'कुल मूल्य';

  @override
  String get portfolioToday => 'आज';

  @override
  String get portfolioGainLoss => 'नाफा/नोक्सान';

  @override
  String get portfolioInvested => 'लगानी गरिएको';

  @override
  String get portfolioAllocation => 'बाँडफाँट';

  @override
  String get portfolioPositions => 'पोजिसनहरू';

  @override
  String portfolioAvgCost(String price) {
    return 'औसत लागत $price';
  }

  @override
  String get portfolioYourPosition => 'तपाईंको पोजिसन';

  @override
  String get portfolioPurchases => 'खरिदहरू';

  @override
  String get portfolioRemove => 'हटाउनुहोस्';

  @override
  String get portfolioExcluded =>
      'मूल्य वा विनिमय दर नभएका पोजिसनहरू कुल योगमा समावेश गरिएका छैनन्।';

  @override
  String get priceAlerts => 'मूल्य अलर्ट';

  @override
  String get setPriceAlert => 'मूल्य अलर्ट सेट गर्नुहोस्';

  @override
  String alertDialogTitle(String symbol) {
    return 'मूल्य अलर्ट · $symbol';
  }

  @override
  String get alertKindAbove => 'माथि जाँदा';

  @override
  String get alertKindBelow => 'तल झर्दा';

  @override
  String get alertKindMove => 'एकै दिनमा धेरै उतारचढाव हुँदा';

  @override
  String alertTargetPrice(String currency) {
    return 'मूल्य ($currency)';
  }

  @override
  String get alertMovePercent => 'दैनिक उतारचढाव (%)';

  @override
  String get alertAlreadyMet => 'मूल्यले यो स्तर पहिल्यै पार गरिसकेको छ।';

  @override
  String get alertSave => 'अलर्ट सेट गर्नुहोस्';

  @override
  String alertCreated(String symbol) {
    return '$symbol का लागि अलर्ट सेट भयो।';
  }

  @override
  String get alertsEmpty =>
      'अहिलेसम्म कुनै मूल्य अलर्ट छैन। अलर्ट सेट गर्न कुनै शेयर खोलेर घण्टी ट्याप गर्नुहोस्।';

  @override
  String get alertsNote =>
      'WhatStock चलिरहेको बेला हरेक 5 मिनेटमा अलर्ट जाँचिन्छन्। कम्प्युटरमा यो मेनु बार वा ट्रेमा चलिरहन्छ; फोनमा भने हाललाई एप खुला हुँदा मात्र अलर्ट आउँछन्।';

  @override
  String alertDescAbove(String price) {
    return '$price भन्दा माथि';
  }

  @override
  String alertDescBelow(String price) {
    return '$price भन्दा तल';
  }

  @override
  String alertDescMove(String percent) {
    return 'दैनिक उतारचढाव ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return '$date, $price मा सक्रिय भयो';
  }

  @override
  String get alertRearm => 'फेरि सक्रिय गर्नुहोस्';

  @override
  String get alertDelete => 'मेटाउनुहोस्';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol $price भन्दा माथि पुग्यो';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol $price भन्दा तल झर्‍यो';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol मा आज $percent उतारचढाव';
  }

  @override
  String alertHitBody(String price) {
    return 'हालको मूल्य: $price';
  }

  @override
  String get alertOpen => 'खोल्नुहोस्';

  @override
  String get keepInTrayTitle => 'विन्डो बन्द गर्दा पनि चलिरहोस्';

  @override
  String get keepInTraySubtitle =>
      'WhatStock मेनु बार वा ट्रेमा रहन्छ, त्यसैले सर्टकट र मूल्य अलर्टहरू चलिरहन्छन्।';

  @override
  String get termsOfUse => 'प्रयोगका सर्तहरू';

  @override
  String get privacyPolicy => 'गोपनीयता नीति';

  @override
  String get subscriptionLegal =>
      'तपाईंले रद्द नगरेसम्म सदस्यता हरेक महिना स्वतः नवीकरण हुन्छ। सदस्यता लिएर तपाईं प्रयोगका सर्तहरू र गोपनीयता नीति स्वीकार गर्नुहुन्छ।';

  @override
  String get deleteAccount => 'खाता मेटाउनुहोस्';

  @override
  String get deleteAccountTitle => 'आफ्नो खाता मेटाउने हो?';

  @override
  String get deleteAccountBody =>
      'तपाईंको खाता र हाम्रो सर्भरमा राखिएका सबै कुरा (इमेल, कोटा, प्रयोग) सधैंका लागि मेटिनेछन्, र प्रयोग नगरिएका विश्लेषणहरू गुम्नेछन्। ब्राउजरमा भुक्तानी गरिएको सदस्यता तुरुन्तै रद्द हुन्छ; App Store वा Google Play को सदस्यता भने स्टोरको सेटिङमा रद्द गर्नुपर्छ।';

  @override
  String get deleteLocalData =>
      'यो डिभाइसको डेटा पनि मेटाउनुहोस् (पोर्टफोलियो, अलर्ट, मनपर्ने, इतिहास, सुरक्षित गरिएका विश्लेषण)';

  @override
  String get deleteAccountConfirm => 'सधैंका लागि मेटाउनुहोस्';

  @override
  String get accountDeleted => 'तपाईंको खाता मेटाइयो।';

  @override
  String get errDeleteAccount =>
      'खाता मेटाउन सकिएन। आफ्नो जडान जाँचेर फेरि प्रयास गर्नुहोस्।';

  @override
  String get aiTrialBriefNote =>
      'परीक्षणका विश्लेषण छोटा हुन्छन् र छिटो AI मोडेलबाट बनाइन्छन्। योजनासँग तपाईंले हाम्रो सबैभन्दा सक्षम AI, थप वेब खोज, र मानक तथा विस्तृत लम्बाइ पाउनुहुन्छ।';

  @override
  String get billingMonthly => 'मासिक';

  @override
  String get billingYearly => 'वार्षिक';

  @override
  String get yearlyDiscount => '2 महिना निःशुल्क';

  @override
  String get perYear => '/ वर्ष';

  @override
  String pricePerMonthApprox(String price) {
    return 'प्रति महिना ≈ $price';
  }

  @override
  String get subscriptionLegalYearly =>
      'तपाईंले रद्द नगरेसम्म वार्षिक सदस्यता हरेक वर्ष स्वतः नवीकरण हुन्छ। सदस्यता लिएर तपाईं प्रयोगका सर्तहरू र गोपनीयता नीति स्वीकार गर्नुहुन्छ।';

  @override
  String get myAnalyses => 'मेरा विश्लेषणहरू';

  @override
  String get navAlerts => 'अलर्ट';

  @override
  String get inviteTitle => 'बन्द पूर्वावलोकन';

  @override
  String get inviteBody =>
      'WhatStock हाल निमन्त्रणामार्फत मात्र उपलब्ध छ। तपाईंले प्राप्त गर्नुभएको निमन्त्रणा कोड प्रविष्ट गर्नुहोस्।';

  @override
  String get inviteCodeLabel => 'निमन्त्रणा कोड';

  @override
  String get inviteContinue => 'जारी राख्नुहोस्';

  @override
  String get inviteInvalid => 'यो निमन्त्रणा कोड मान्य छैन।';

  @override
  String get inviteExpired =>
      'यो निमन्त्रणाको म्याद सकिएको छ। तपाईंलाई निमन्त्रणा गर्ने व्यक्तिसँग नयाँ कोड माग्नुहोस्।';

  @override
  String get inviteDeviceLimit =>
      'यो निमन्त्रणा कोड पहिले नै अधिकतम सङ्ख्याका उपकरणहरूमा प्रयोगमा छ।';

  @override
  String get previewConfidential => 'गोप्य पूर्वावलोकन';

  @override
  String get errPreviewDailyLimit =>
      'यस पूर्वावलोकनको आजको विश्लेषण सीमा पुगिसकेको छ। भोलि फेरि प्रयास गर्नुहोस्।';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count घण्टाअघि',
      one: '1 घण्टाअघि',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिनअघि',
      one: '1 दिनअघि',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'यो विश्लेषण अद्यावधिक गर्ने?';

  @override
  String staleBody(String age) {
    return 'यो $age तयार गरिएको थियो। त्यसपछि मूल्य, समाचार र नतिजाहरू परिवर्तन भएका हुन सक्छन्।';
  }

  @override
  String get staleKeep => 'पहिलेकै देखाउनुहोस्';

  @override
  String get staleRefresh => 'नयाँ तयार गर्नुहोस्';

  @override
  String seeAll(int count) {
    return 'सबै हेर्नुहोस् ($count)';
  }

  @override
  String get searchAnalyses => 'आफ्ना विश्लेषणहरू खोज्नुहोस्';

  @override
  String get deleteAnalysis => 'मेटाउनुहोस्';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol विश्लेषण मेटाइयो';
  }

  @override
  String get keyLevelAlertHint =>
      'मूल्य कुनै स्तरमा पुग्दा अलर्ट पाउन त्यो स्तर ट्याप गर्नुहोस्।';

  @override
  String get shareAnalysisTitle => 'विश्लेषण सेयर गर्नुहोस्';

  @override
  String get shareAsImage => 'तस्बिरका रूपमा सेयर गर्नुहोस्';

  @override
  String get shareAsText => 'पाठका रूपमा सेयर गर्नुहोस्';

  @override
  String get shareCardFooter => 'WhatStock बाट बनाइएको';

  @override
  String get shareCardDisclaimer => 'AI विश्लेषण · लगानी सल्लाह होइन';

  @override
  String get referralTitle => 'साथीहरूलाई निम्तो दिनुहोस्';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count अतिरिक्त विश्लेषण',
      one: '1 अतिरिक्त विश्लेषण',
    );
    return 'आफ्नो कोड सेयर गर्नुहोस्। तपाईंको साथीले तुरुन्तै $_temp0 पाउनुहुन्छ, र उहाँको पहिलो विश्लेषणपछि तपाईंले पनि त्यति नै पाउनुहुन्छ।';
  }

  @override
  String get referralYourCode => 'तपाईंको कोड';

  @override
  String referralStats(int invited, int rewarded) {
    return 'निम्तो दिइएका: $invited · पुरस्कृत: $rewarded';
  }

  @override
  String get referralHaveCode => 'साथीबाट कोड पाउनुभएको छ?';

  @override
  String get referralRedeem => 'रिडिम गर्नुहोस्';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count अतिरिक्त विश्लेषण थपिए। स्वागत छ!',
      one: '1 अतिरिक्त विश्लेषण थपियो। स्वागत छ!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'यो कोड अवस्थित छैन। जाँच गरेर फेरि प्रयास गर्नुहोस्।';

  @override
  String get referralErrOwn => 'तपाईं आफ्नै कोड रिडिम गर्न सक्नुहुन्न।';

  @override
  String get referralErrAlready =>
      'तपाईंले पहिल्यै एक साथीको कोड रिडिम गरिसक्नुभएको छ।';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count अतिरिक्त विश्लेषण',
      one: '1 अतिरिक्त विश्लेषण',
    );
    return 'म WhatStock बाट सेयरहरूको विश्लेषण गर्छु: सेयरको फोटो खिच्नुहोस्, AI ले त्यसको व्याख्या गर्छ। मेरो कोड $code बाट तपाईंले $_temp0 पाउनुहुन्छ।';
  }

  @override
  String get referralCopied => 'कोड प्रतिलिपि भयो';

  @override
  String get onboardTitle1 => 'शेयरको फोटो खिच्नुहोस्';

  @override
  String get onboardBody1 =>
      'ब्रोकरेज एपको स्क्रिन, पत्रिका वा कम्पनीको लोगो भए पुग्छ: WhatStock ले शेयर चिन्छ र त्यसको मूल्य, चार्ट र मुख्य तथ्याङ्क देखाउँछ।';

  @override
  String get onboardTitle2 => 'केही मिनेटमै बुझ्नुहोस्';

  @override
  String get onboardBody2 =>
      'AI विश्लेषणले शेयरलाई के कुराले चलाउँछ, जोखिमहरू, मूल्याङ्कन र मूल्य कता जान सक्छ भन्ने तीन परिदृश्य स्रोतसहित तपाईंकै भाषामा बुझाउँछ।';

  @override
  String get onboardTitle3 => 'सधैं अपडेट रहनुहोस्';

  @override
  String get onboardBody3 =>
      'मनपर्ने, तपाईंको पोर्टफोलियो र मूल्य अलर्टले तपाईंलाई जानकारी दिइरहन्छन्। तपाईंका विश्लेषणहरू तपाईंकै डिभाइसमा रहन्छन्, फेरि खोल्न तयार।';

  @override
  String get onboardNext => 'अर्को';

  @override
  String get onboardStart => 'सुरु गर्नुहोस्';

  @override
  String get onboardSkip => 'छोड्नुहोस्';

  @override
  String changesTitle(String date) {
    return 'अघिल्लो विश्लेषणपछि ($date)';
  }

  @override
  String get changesPrice => 'मूल्य';

  @override
  String get changesNoMajor => 'दृष्टिकोणमा खासै परिवर्तन भएको छैन।';

  @override
  String get changesPreviousSummary => 'अघिल्लो सारांश';

  @override
  String get telemetryTitle => 'WhatStock सुधार गर्न मद्दत गर्नुहोस्';

  @override
  String get telemetryBody =>
      'बेनामी प्रयोग तथ्याङ्क र क्र्यास रिपोर्टहरू साझा गर्नुहोस्: कुन सुविधाहरू प्रयोग भइरहेका छन् र के गडबड भयो। तपाईंका सेयर, विश्लेषण वा व्यक्तिगत डेटा कहिल्यै होइन। तपाईं यसलाई जुनसुकै बेला सेटिङहरूमा परिवर्तन गर्न सक्नुहुन्छ।';

  @override
  String get telemetryAllow => 'अनुमति दिनुहोस्';

  @override
  String get telemetryDecline => 'पर्दैन, धन्यवाद';

  @override
  String get telemetrySetting => 'बेनामी तथ्याङ्क र क्र्यास रिपोर्टहरू';

  @override
  String get telemetrySettingHint =>
      'सुविधाहरू कति पटक प्रयोग हुन्छन् र त्रुटि रिपोर्टहरू, व्यक्तिगत डेटा वा तपाईंका खोज र विश्लेषणको सामग्रीबिना।';

  @override
  String get askButton => 'यो विश्लेषणबारे सोध्नुहोस्';

  @override
  String askTitle(String symbol) {
    return '$symbol बारे प्रश्नहरू';
  }

  @override
  String get askIntro =>
      'विश्लेषणबारे जे पनि सोध्नुहोस्: कुनै जोखिमको अर्थ के हो, के कुराले सम्भावना बदल्न सक्छ, कुनै अङ्क कसरी निकालियो। उत्तरहरू यही विश्लेषणमा आधारित छन् र यी लगानी सल्लाह होइनन्।';

  @override
  String get askHint => 'प्रश्न सोध्नुहोस्…';

  @override
  String get askSend => 'पठाउनुहोस्';

  @override
  String get askThinking => 'सोच्दै…';

  @override
  String get askSuggest1 => 'सबैभन्दा ठूलो जोखिम के हो?';

  @override
  String get askSuggest2 => 'के कुराले सम्भावना बदल्न सक्छ?';

  @override
  String get askSuggest3 => 'सरल भाषामा बुझाउनुहोस्';

  @override
  String get askMaxReached =>
      'यो विश्लेषणका लागि यो अन्तिम प्रश्न थियो। थप सोध्न नयाँ विश्लेषण तयार गर्नुहोस्।';

  @override
  String get errAskLimit =>
      'तपाईं आजको प्रश्न सीमामा पुग्नुभयो। भोलि फेरि प्रयास गर्नुहोस्।';

  @override
  String get eventTomorrow => 'भोलि';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days दिनमा',
      one: '1 दिनमा',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'त्रैमासिक नतिजा';

  @override
  String get eventBeforeOpen => 'बजार खुल्नुअघि';

  @override
  String get eventAfterClose => 'बजार बन्द भएपछि';

  @override
  String eventEpsEstimate(String value) {
    return 'अनुमानित EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'तपाईंको विश्लेषणबाट';

  @override
  String get eventsHint =>
      'आगामी 90 दिनभित्र तपाईंका मनपर्ने र पोर्टफोलियोका सेयरहरूको नतिजा मिति, र तपाईंका विश्लेषणहरूले चिन्ह लगाएका मिति भएका घटनाहरू।';

  @override
  String get eventsEmpty =>
      'आगामी 90 दिनमा मिति भएको कुनै घटना छैन। नतिजा मितिहरू यहाँ हेर्न मनपर्ने वा पोर्टफोलियो सेयरहरू थप्नुहोस्।';

  @override
  String get compareTitle => 'तुलना';

  @override
  String get compareAdd => 'सेयर थप्नुहोस्';

  @override
  String get compareRemove => 'हटाउनुहोस्';

  @override
  String get compareTickerHint => 'टिकर, जस्तै MSFT';

  @override
  String get compareHint =>
      'मुख्य तथ्याङ्कहरू छेउछेउमा; प्रत्येक पङ्क्तिको उत्कृष्ट मान हाइलाइट गरिएको छ। रकमहरू प्रत्येक सेयरको आफ्नै मुद्रामा छन्।';

  @override
  String get compareNoAnalysis => 'अहिलेसम्म विश्लेषण छैन';

  @override
  String get portfolioDividends => 'वार्षिक लाभांश';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent यिल्ड';
  }

  @override
  String get portfolioDividendNote =>
      'अपेक्षित वार्षिक लाभांश पछिल्लो 12 महिनामा भुक्तानी गरिएको लाभांशमा आधारित छ; भविष्यका भुक्तानीको ग्यारेन्टी छैन।';

  @override
  String positionDividend(String amount) {
    return 'लाभांश: वार्षिक $amount';
  }

  @override
  String get chartAvgCost => 'तपाईंको औसत';

  @override
  String get chartAlertLevel => 'अलर्ट';

  @override
  String get marketsToday => 'आजका बजारहरू';

  @override
  String get notesTitle => 'मेरा टिपोटहरू';

  @override
  String get notesHint =>
      'तपाईंले यो किन किन्नुभयो, केमा नजर राख्दै हुनुहुन्छ, के भए बेच्नुहुन्छ?';

  @override
  String get notesInfo =>
      'यो डिभाइसमा मात्र सुरक्षित हुन्छ। AI विश्लेषणले तपाईंका टिपोटहरूलाई ध्यानमा राख्छ।';

  @override
  String notesSaved(String date) {
    return 'सुरक्षित गरियो: $date';
  }

  @override
  String get peersTitle => 'समान कम्पनीहरू';

  @override
  String get portfolioExport => 'CSV को रूपमा निर्यात गर्नुहोस्';

  @override
  String get portfolioImport => 'CSV बाट आयात गर्नुहोस्';

  @override
  String get portfolioImportHint =>
      'प्रत्येक पङ्क्तिमा एउटा खरिद टाँस्नुहोस्: टिकर, परिमाण, मूल्य, मुद्रा, मिति (YYYY-MM-DD)। स्तम्भहरू अल्पविराम, अर्धविराम वा ट्याबले छुट्याउन सकिन्छ; शीर्ष पङ्क्ति ऐच्छिक हो।';

  @override
  String get portfolioImportButton => 'आयात गर्नुहोस्';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count खरिद थपिए',
      one: '1 खरिद थपियो',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count पङ्क्ति छोडिए',
      one: '1 पङ्क्ति छोडियो',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'पोर्टफोलियो, मनपर्ने, मूल्य अलर्ट र टिपोटहरू तपाईंका सबै डिभाइसमा सिंक हुन्छन्।';

  @override
  String syncLast(String time) {
    return 'अन्तिम सिंक: $time';
  }

  @override
  String get syncNow => 'अहिले सिंक गर्नुहोस्';

  @override
  String get syncFailed => 'सिंक असफल भयो। यो स्वतः फेरि प्रयास हुनेछ।';

  @override
  String get alertEmailTitle => 'अलर्ट ट्रिगर हुँदा इमेल';

  @override
  String get alertEmailOn =>
      'हामी हरेक केही मिनेटमा तपाईंका अलर्ट जाँच्छौं र एप बन्द हुँदा पनि तपाईंलाई इमेल पठाउँछौं।';

  @override
  String get alertEmailSignIn =>
      'एप बन्द हुँदा पनि इमेलमा अलर्ट पाउन सेटिङहरूमा आफ्नो इमेलबाट साइन इन गर्नुहोस्।';

  @override
  String get portfolioHistory => 'समयसँगै मूल्य';

  @override
  String get portfolioReviewTitle => 'AI पोर्टफोलियो समीक्षा';

  @override
  String get portfolioReviewIntro =>
      'AI ले तपाईंको सम्पूर्ण पोर्टफोलियो हेर्छ: केन्द्रीकरण, क्षेत्र र मुद्राको जोखिम, तपाईंका सेयरहरूका साझा जोखिम र लाभांश। 1 विश्लेषण खर्च हुन्छ।';

  @override
  String get portfolioReviewButton => 'मेरो पोर्टफोलियो समीक्षा गर्नुहोस्';

  @override
  String get portfolioReviewAgain => 'फेरि समीक्षा गर्नुहोस्';

  @override
  String get portfolioReviewWorking => 'तपाईंको पोर्टफोलियो समीक्षा हुँदै…';

  @override
  String get digestTitle => 'इमेलमार्फत साप्ताहिक सारांश';

  @override
  String get digestHint =>
      'हरेक सोमबार: गत हप्ता तपाईंका मनपर्ने र पोर्टफोलियो कसरी चले, र तिनका आगामी नतिजा मितिहरू।';

  @override
  String get benchmarkTitle => 'S&P 500 सँग तुलना';

  @override
  String get benchmarkYours => 'तपाईंका खरिदहरू';

  @override
  String get benchmarkIndex => 'उत्ति नै रकम S&P 500 मा';

  @override
  String benchmarkAhead(String points) {
    return 'सूचकाङ्कभन्दा $points प्रतिशत बिन्दु राम्रो';
  }

  @override
  String benchmarkBehind(String points) {
    return 'सूचकाङ्कभन्दा $points प्रतिशत बिन्दु पछाडि';
  }

  @override
  String get benchmarkHint =>
      'मानौं हरेक खरिदको रकम सोही दिन S&P 500 इन्डेक्स फन्डमा लगानी गरिएको थियो। लाभांश समावेश छैन; विगतको प्रतिफलले भविष्यको प्रतिफल अनुमान गर्दैन।';

  @override
  String get portfolioSell => 'बेच्नुहोस्';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbol बेच्नुहोस्';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'प्रति शेयर बिक्री मूल्य ($currency)';
  }

  @override
  String get portfolioSellDate => 'बिक्री मिति';

  @override
  String get portfolioSellAll => 'सबै';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'तपाईंसँग $quantity छ';
  }

  @override
  String get portfolioSold => 'बेचियो';

  @override
  String get portfolioRealized => 'प्राप्त';

  @override
  String get portfolioClosed => 'बन्द पोजिसनहरू';

  @override
  String get portfolioClosedNote => 'सबै शेयर बेचिए';

  @override
  String get portfolioTransactions => 'कारोबार';

  @override
  String get portfolioRealizedByYear => 'वर्षअनुसार प्राप्त नाफा';

  @override
  String get portfolioRealizedHint =>
      'बिक्रीलाई पहिले तपाईंको सबैभन्दा पुरानो खरिदसँग मिलाइन्छ (FIFO), आजको विनिमय दरमा रूपान्तरण गरेर। कर विवरणका लागि आफ्नो ब्रोकरको विवरण प्रयोग गर्नुहोस्।';

  @override
  String staleNewResults(String symbol, String date) {
    return 'यो विश्लेषणपछि नयाँ त्रैमासिक नतिजा प्रकाशित भएको छ ($symbol, $date)।';
  }

  @override
  String get newResultsBadge => 'नयाँ नतिजा';

  @override
  String get portfolioImportBrokers =>
      'Revolut, Trading 212 र Interactive Brokers का निर्यात पनि बिक्रीसहित चिनिन्छन्; लाभांश र जम्मा छोडिन्छन्।';

  @override
  String get portfolioImportFile => 'फाइल छान्नुहोस्';

  @override
  String offlineBanner(String time) {
    return 'जडान छैन – अन्तिम पटक सुरक्षित गरिएको डेटा देखाइँदै छ ($time)।';
  }

  @override
  String get glossMarketCap =>
      'शेयर बजारमा पूरै कम्पनीको मूल्य कति छ: शेयरको मूल्य × शेयर संख्या।';

  @override
  String get glossSharesOutstanding =>
      'कम्पनीले कति शेयर जारी गरेको छ। यो बढे प्रत्येक शेयरको हिस्सा सानो हुन्छ; शेयर फिर्ता किन्दा (बायब्याक) यो घट्छ।';

  @override
  String get glossPeTrailing =>
      'मूल्य ÷ पछिल्लो 12 महिनाको प्रति शेयर आम्दानी: तपाईं हालको नाफाको कति वर्षको मूल्य तिर्दै हुनुहुन्छ। कम भए सस्तो, तर छिटो बढ्ने कम्पनीको P/E प्रायः उच्च हुन्छ।';

  @override
  String get glossPeForward =>
      'P/E जस्तै, तर विश्लेषकहरूले आगामी 12 महिनाका लागि अपेक्षा गरेको नाफाका आधारमा। ट्रेलिङ P/E भन्दा कम भए नाफा बढ्ने अपेक्षा छ।';

  @override
  String get glossPb =>
      'मूल्य ÷ प्रति शेयर बुक भ्यालु (सम्पत्ति घटाउ ऋण)। करिब 1 भनेको बजारले कम्पनीलाई कागजमा भएको सम्पत्ति बराबर मूल्य दिन्छ।';

  @override
  String get glossPs =>
      'बजार मूल्य ÷ वार्षिक राजस्व। अझै थोरै वा कुनै नाफा नभएका कम्पनीका लागि उपयोगी; एउटै उद्योगभित्र तुलना गर्नुहोस्।';

  @override
  String get glossEvToFcf =>
      'ऋणसहित कम्पनीको मूल्य (EV) ÷ लगानीपछि एक वर्षमा उत्पन्न हुने नगद। कम भए तिरेको मूल्यमा बढी नगद पाउनुहुन्छ।';

  @override
  String get glossPeg =>
      'P/E ÷ अपेक्षित वार्षिक नाफा वृद्धि (%)। करिब 1 लाई प्रायः उचित मानिन्छ; यसले P/E लाई वृद्धिको आधारमा हेर्छ।';

  @override
  String get glossEps =>
      'पछिल्लो 12 महिनाको प्रति शेयर नाफा। वर्षौंसम्म बढ्दै गएको EPS स्वस्थ कम्पनीको सबैभन्दा बलियो संकेतमध्ये एक हो।';

  @override
  String get glossBeta =>
      'शेयर बजारसँगै कति चल्छ: 1 = बजार जस्तै, 1.5 = करिब 50% ठूलो उतारचढाव, 1 भन्दा कम = शान्त।';

  @override
  String get glossRevenueTtm =>
      'पछिल्लो 12 महिनाको कुल बिक्री, कुनै पनि खर्च घटाउनुअघि।';

  @override
  String get glossNetIncomeTtm =>
      'पछिल्लो 12 महिनामा सबै खर्च, ब्याज र कर तिरेपछि बाँकी रहेको नाफा।';

  @override
  String get glossGrossMargin =>
      'उत्पादनको प्रत्यक्ष लागतपछि राजस्वको कति भाग बाँकी रहन्छ। उच्च मार्जिनले प्रायः मूल्य तोक्न सक्ने शक्ति देखाउँछ।';

  @override
  String get glossOperatingMargin =>
      'व्यवसाय सञ्चालनको खर्च (तलब, भाडा, मार्केटिङ) पछि, ब्याज र कर अघि राजस्वको कति भाग बाँकी रहन्छ।';

  @override
  String get glossNetMargin =>
      'राजस्वको कति भाग अन्तिम नाफा बन्छ। 20% भनेको बिक्रीको प्रत्येक 100 मध्ये 20 नाफा हो।';

  @override
  String get glossRoe =>
      'इक्विटीमा प्रतिफल: वार्षिक नाफा ÷ मालिकहरूको पुँजी। व्यवस्थापनले शेयरधनीको पैसा कति राम्ररी प्रयोग गर्छ भन्ने देखाउँछ; करिब 15% भन्दा माथि बलियो हो।';

  @override
  String get glossRoa =>
      'सम्पत्तिमा प्रतिफल: वार्षिक नाफा ÷ कम्पनीको सम्पूर्ण सम्पत्ति। एउटै उद्योगभित्र तुलना गर्नुहोस्।';

  @override
  String get glossDebtToEquity =>
      'ऋण ÷ मालिकहरूको पुँजी। बढी भए धेरै सापटी पैसा: ब्याजदर बढ्दा वा व्यवसाय सुस्त हुँदा बढी जोखिम।';

  @override
  String get glossCurrentRatio =>
      'छोटो अवधिका सम्पत्ति ÷ एक वर्षभित्र तिर्नुपर्ने बिल। 1 भन्दा माथि भए कम्पनीले नजिकका बिलहरू तिर्न सक्छ।';

  @override
  String get glossRevenueGrowth => 'एक वर्षअघिको तुलनामा राजस्व कति बढ्यो।';

  @override
  String get glossEpsGrowth =>
      'एक वर्षअघिको तुलनामा प्रति शेयर नाफा कति बढ्यो।';

  @override
  String get glossDividendYield =>
      'वार्षिक लाभांश ÷ शेयरको मूल्य: तपाईंले तिरेको रकमको प्रतिशतमा हरेक वर्ष पाउने नगद आम्दानी।';

  @override
  String get glossDividendPerShare => 'गत वर्ष एउटा शेयरमा दिइएको लाभांश।';

  @override
  String get glossPayoutRatio =>
      'नाफाको कति भाग लाभांशका रूपमा बाँडिन्छ। 100% भन्दा माथि भए कम्पनीले कमाएभन्दा बढी दिन्छ, जुन विरलै टिक्छ।';

  @override
  String get glossTitle => 'यसको अर्थ के हो?';

  @override
  String get watchNewsTitle => 'तपाईंका शेयरका समाचार';

  @override
  String get undo => 'पूर्ववत् गर्नुहोस्';

  @override
  String get watchSort => 'क्रमबद्ध गर्नुहोस्';

  @override
  String get watchSortOwn => 'मेरो क्रम';

  @override
  String get watchSortGainers => 'सबैभन्दा बढी बढेका पहिले';

  @override
  String get watchSortLosers => 'सबैभन्दा बढी घटेका पहिले';

  @override
  String get watchSortName => 'टिकर अनुसार (A–Z)';

  @override
  String get watchHint =>
      'क्रम बदल्न ह्यान्डल तान्नुहोस्, हटाउन बायाँ स्वाइप गर्नुहोस्। रेखाले पछिल्ला 30 दिन देखाउँछ।';

  @override
  String analysisReady(String symbol) {
    return '$symbol: तपाईंको विश्लेषण तयार छ।';
  }

  @override
  String alertFromCost(String price) {
    return 'तपाईंको औसत खरिद मूल्य ($price) बाट:';
  }

  @override
  String get briefTitle => 'आज तपाईंका सेयरसँग';

  @override
  String get briefButton => 'आजको सारांश';

  @override
  String get briefHint =>
      'आज तपाईंको पोर्टफोलियो र मनपर्ने सेयर कसरी चले र ताजा समाचारले तिनका बारेमा के भन्छ भन्ने छोटो AI सारांश। यसले कुनै विश्लेषण खर्च गर्दैन।';

  @override
  String get briefRefresh => 'अपडेट गर्नुहोस्';

  @override
  String get sectionEarnings => 'त्रैमासिक नतिजा';

  @override
  String earningsNext(String date) {
    return 'अर्को रिपोर्ट: $date';
  }

  @override
  String get earningsExpected => 'अपेक्षित EPS';

  @override
  String get earningsReported => 'प्रकाशित EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'पछिल्ला $total मध्ये $beats त्रैमासमा अपेक्षित EPS बराबर वा सोभन्दा माथि',
      one: '1 मध्ये $beats त्रैमासमा अपेक्षित EPS बराबर वा सोभन्दा माथि',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol ले भोलि त्रैमासिक नतिजा सार्वजनिक गर्दैछ';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol ले आज त्रैमासिक नतिजा सार्वजनिक गर्दैछ';
  }

  @override
  String get earningsRemindersTitle => 'नतिजा रिमाइन्डर';

  @override
  String get earningsRemindersSubtitle =>
      'तपाईंका मनपर्ने वा पोर्टफोलियोका सेयरहरूले त्रैमासिक नतिजा सार्वजनिक गर्नुभन्दा एक दिनअघि सूचना';

  @override
  String addAllToFavorites(int count) {
    return 'सबै मनपर्नेमा थप्नुहोस् ($count)';
  }

  @override
  String get portfolioImportPhoto => 'स्क्रिनसटबाट आयात गर्नुहोस्';

  @override
  String get holdingsReading => 'तपाईंका पोजिसनहरू पढ्दै…';

  @override
  String get holdingsReviewTitle => 'भेटिएका पोजिसनहरू';

  @override
  String get holdingsReviewHint =>
      'थप्नुअघि अङ्कहरू जाँच गर्नुहोस्। मूल्य भनेको प्रति शेयर तपाईंको औसत खरिद मूल्य हो, आजको मूल्य होइन।';

  @override
  String get holdingsNoPrice => 'तस्बिरमा औसत खरिद मूल्य छैन';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count पोजिसन थप्नुहोस्',
      one: '1 पोजिसन थप्नुहोस्',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'यो तस्बिरमा कुनै शेयर पोजिसन भेटिएन। आफ्नो ब्रोकरको पोजिसन वा होल्डिङ पृष्ठको स्क्रिनसट प्रयास गर्नुहोस्।';

  @override
  String get week52Range => '52 हप्ताको दायरा';

  @override
  String week52BelowHigh(String percent) {
    return '52 हप्ताको उच्चभन्दा $percent तल';
  }

  @override
  String get week52AtHigh => '52 हप्ताको उच्चमा';

  @override
  String get alertKindTrailing => 'शिखरबाट झर्दा';

  @override
  String get alertTrailingPercent => 'शिखरबाट गिरावट (%)';

  @override
  String get alertTrailingHint =>
      'मूल्यलाई माथितिर पछ्याउँछ: सेट गरेदेखिको उच्चतम स्तरबाट मूल्य यति झरेमा सूचना दिन्छ।';

  @override
  String alertDescTrailing(String percent) {
    return 'शिखरबाट $percent गिरावट';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'हालसम्मको शिखर: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol शिखरबाट $percent झर्‍यो';
  }

  @override
  String get sectionInsiders => 'इनसाइडर कारोबार';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count खरिद',
      one: '1 खरिद',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count बिक्री',
      one: '1 बिक्री',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'खुद: $shares शेयर';
  }

  @override
  String get insiderBuy => 'किनियो';

  @override
  String get insiderSell => 'बेचियो';

  @override
  String get insiderHint =>
      'पछिल्लो 90 दिनमा कार्यकारी अधिकारी र सञ्चालकहरूले खुला बजारमा गरेका खरिद र बिक्री (SEC Form 4)। अप्सन प्रयोग र शेयर पुरस्कार गणना गरिँदैन।';

  @override
  String get insiderNone =>
      'पछिल्लो 90 दिनमा खुला बजारमा कुनै इनसाइडर खरिद वा बिक्री भएको छैन।';

  @override
  String get analystTrend => 'महिनैपिच्छे राय कसरी बदलियो';

  @override
  String get watchListAll => 'सबै';

  @override
  String get watchListNew => 'नयाँ सूची';

  @override
  String get watchListName => 'सूचीको नाम';

  @override
  String get watchListRename => 'सूचीको नाम बदल्नुहोस्';

  @override
  String get watchListDelete => 'सूची मेटाउनुहोस्';

  @override
  String get watchListAddTo => 'सूचीमा थप्नुहोस्';

  @override
  String get watchListEmpty =>
      'यो सूचीमा अझै कुनै सेयर छैन। थप्न सेयरको छेउको सूची बटन ट्याप गर्नुहोस्।';

  @override
  String get portfolioAskTitle => 'तपाईंको पोर्टफोलियोबारे प्रश्नहरू';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'ब्याकअप';

  @override
  String get backupSave => 'ब्याकअप सुरक्षित गर्नुहोस्';

  @override
  String get backupSaveHint =>
      'तपाईंका मनपर्ने, सूचीहरू, पोर्टफोलियो, अलर्ट र टिपोटहरू एउटै फाइलमा।';

  @override
  String get backupRestore => 'ब्याकअपबाट पुनर्स्थापना गर्नुहोस्';

  @override
  String get backupRestoreHint =>
      'फाइलमा भएको थपिन्छ; तपाईंसँग अहिले भएको केही पनि मेटिँदैन।';

  @override
  String get backupRestored => 'ब्याकअप पुनर्स्थापना भयो।';

  @override
  String get backupInvalid => 'यो फाइल WhatStock ब्याकअप होइन।';

  @override
  String get allocationPositions => 'सेयर';

  @override
  String get allocationSectors => 'क्षेत्र';

  @override
  String get allocationCurrencies => 'मुद्रा';

  @override
  String get compareReturn1y => '1 वर्षको प्रतिफल';

  @override
  String get compareFromHigh => '52 हप्ताको उच्चबाट दूरी';

  @override
  String get briefAutoTitle => 'हरेक बिहान दैनिक सारांश';

  @override
  String get briefAutoSubtitle =>
      'एप चलिरहेको बेला बिहान 7:00 बजेपछि “आज तपाईंका सेयरसँग” आफैँ तयार हुन्छ; कम्प्युटरमा एउटा सूचनाले तपाईंलाई जानकारी दिन्छ। यो तपाईंको दैनिक प्रश्न सीमाबाट जान्छ, कुनै विश्लेषण खर्च गर्दैन।';

  @override
  String get targetsButton => 'लक्ष्य बाँडफाँट';

  @override
  String get targetsTitle => 'लक्ष्य बाँडफाँट';

  @override
  String get targetsHint =>
      'प्रत्येक सेयरले पोर्टफोलियोको कति हिस्सा पाउनुपर्छ भनेर तोक्नुहोस्। लक्ष्य नभए फिल्ड खाली छोड्नुहोस्। त्यसपछि एपले त्यहाँ पुग्न के किन्ने वा बेच्ने देखाउँछ।';

  @override
  String targetsSum(String percent) {
    return 'जम्मा: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'किन्नुहोस् ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'बेच्नुहोस् ≈ $amount';
  }

  @override
  String get rebalanceOk => 'लक्ष्यमा';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol ले अपेक्षित EPS पार गर्‍यो';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol अपेक्षित EPS मा पुगेन';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'प्रकाशित EPS $actual, अपेक्षित $estimate';
  }

  @override
  String get newsExplain => 'यसको अर्थ के हो?';

  @override
  String get newsExplainNote =>
      'शीर्षक र सारांशमा मात्र आधारित AI व्याख्या। यो लगानी सल्लाह होइन। यो तपाईंको दैनिक प्रश्न सीमाबाट जान्छ, कुनै विश्लेषण खर्च गर्दैन।';

  @override
  String get watchAlertAll => 'ठूलो दैनिक उतारचढावमा अलर्ट';

  @override
  String get watchAlertAllHint =>
      'यो सूचीका हरेक सेयरका लागि मूल्य अलर्ट: एकै दिनमा यति माथि वा तल हुँदा सूचना दिन्छ। पहिल्यै अलर्ट भएका सेयरहरूको त्यही रहन्छ।';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count अलर्ट सेट गरिए',
      one: '1 अलर्ट सेट गरियो',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'प्राप्त नाफा निर्यात गर्नुहोस् (CSV)';

  @override
  String get portfolioAnnualReturn => 'वार्षिक प्रतिफल';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / वर्ष';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'रकम-भारित वार्षिक प्रतिफल (XIRR): तपाईंले कहिले किन्नुभयो र बेच्नुभयो भन्ने कुरा ध्यानमा राख्छ, त्यसैले पछि थपिएको रकमले यसलाई विकृत गर्दैन। तपाईंको पहिलो खरिद कम्तीमा एक वर्ष पुरानो भएपछि देखाइन्छ; लाभांश समावेश छैन।';

  @override
  String get eventsAddToCalendar => 'पात्रोमा थप्नुहोस् (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'पोर्टफोलियो अलर्ट';

  @override
  String get portfolioMoveAlertSubtitle =>
      'तपाईंको सम्पूर्ण पोर्टफोलियोमा एक दिनमा यति उतारचढाव हुँदा सूचना।';

  @override
  String get portfolioMoveAlertOff => 'बन्द';

  @override
  String portfolioMoveUp(String percent) {
    return 'आज तपाईंको पोर्टफोलियो $percent बढ्यो';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'आज तपाईंको पोर्टफोलियो $percent घट्यो';
  }

  @override
  String get whatIfTitle => 'यदि तपाईंले लगानी गर्नुभएको भए?';

  @override
  String get whatIfAmount => 'रकम';

  @override
  String whatIfResult(String amount, String period) {
    return '$period पहिले लगानी गरिएको $amount आज यति हुने थियो';
  }

  @override
  String get whatIfNote =>
      'सेयरको मूल्यमा मात्र आधारित: लाभांश, शुल्क र कर समावेश छैनन्। विगतको प्रतिफलले भविष्यको प्रतिफल अनुमान गर्दैन।';

  @override
  String get watchShare => 'सूची सेयर गर्नुहोस्';

  @override
  String get watchImport => 'टिकर थप्नुहोस्';

  @override
  String get watchImportHint =>
      'अल्पविराम, खाली ठाउँ वा नयाँ पङ्क्तिले छुट्याइएका टिकरहरू टाँस्नुहोस् – जस्तै कसैले तपाईंसँग सेयर गरेको सूची।';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count सेयर थपिए',
      one: '1 सेयर थपियो',
      zero: 'कुनै नयाँ सेयर छैन',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'सबैभन्दा ठूला पहिले';

  @override
  String get positionsSortGain => 'सबैभन्दा बढी कुल प्रतिफल पहिले';

  @override
  String get positionsSortToday => 'आजका उत्कृष्ट पहिले';

  @override
  String get chartMyBuys => 'तपाईंका खरिदहरू';

  @override
  String get chartMySells => 'तपाईंका बिक्रीहरू';

  @override
  String get shortcutsTitle => 'किबोर्ड सर्टकटहरू';

  @override
  String usMarketOpen(String time) {
    return 'अमेरिकी बजार खुला · बन्द हुन $time बाँकी';
  }

  @override
  String usMarketClosed(String time) {
    return 'अमेरिकी बजार बन्द · खुल्न $time बाँकी';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes मिनेट';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours घण्टा $minutes मिनेट';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days दिन $hours घण्टा';
  }

  @override
  String get portfolioGoalSet => 'लक्ष्य तोक्नुहोस्';

  @override
  String get portfolioGoalTitle => 'पोर्टफोलियो लक्ष्य';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · लक्ष्य: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'लक्ष्य पूरा भयो: $amount';
  }

  @override
  String get portfolioGoalRemove => 'लक्ष्य हटाउनुहोस्';
}
