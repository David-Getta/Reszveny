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
  String get homeTagline => 'कुनै शेयरको फोटो खिच्नुहोस् र त्यसबारे सबै कुरा थाहा पाउनुहोस्।';

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
  String get disclaimer => 'यो एपले जानकारी मात्र दिन्छ, यो लगानी सल्लाह होइन। डेटा ढिलो वा गलत हुन सक्छ।';

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
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count विश्लेषक', one: '1 विश्लेषक');
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
  String get errRecognitionUnreachable => 'पहिचान सेवासँग सम्पर्क हुन सकेन। आफ्नो इन्टरनेट जडान जाँच गर्नुहोस्।';

  @override
  String errRecognitionHttp(String status) {
    return 'पहिचान सेवाले त्रुटि फर्कायो (HTTP $status)।';
  }

  @override
  String get errRecognitionRefused => 'पहिचान सेवाले यो तस्बिर प्रशोधन गर्न सकेन।';

  @override
  String get errRecognitionTruncated => 'पहिचानको जवाफ बीचमै काटियो। कृपया फेरि प्रयास गर्नुहोस्।';

  @override
  String get errRecognitionBadResponse => 'पहिचान सेवाबाट अप्रत्याशित जवाफ आयो।';

  @override
  String get errRecognitionEmpty => 'पहिचान सेवाले खाली जवाफ फर्कायो।';

  @override
  String get errMissingFinnhubKey => 'बजार डेटा कन्फिगर गरिएको छैन (FINNHUB_API_KEY छैन)।';

  @override
  String get errMarketUnreachable => 'बजार डेटा सेवासँग सम्पर्क हुन सकेन। आफ्नो इन्टरनेट जडान जाँच गर्नुहोस्।';

  @override
  String get errMarketRateLimited => 'बजार डेटा सेवामा धेरै अनुरोध पठाइए। कृपया एक मिनेट पर्खनुहोस्।';

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
  String get aiGenerating => 'विश्लेषण तयार हुँदै… यसमा एक-दुई मिनेट लाग्न सक्छ।';

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
  String get errAiNotConfigured => 'AI विश्लेषण कन्फिगर गरिएको छैन (ANTHROPIC_API_KEY छैन)।';

  @override
  String get errAiUnreachable => 'AI सेवासँग सम्पर्क हुन सकेन। आफ्नो इन्टरनेट जडान जाँच गर्नुहोस्।';

  @override
  String errAiHttp(String status) {
    return 'AI सेवाले त्रुटि फर्कायो (HTTP $status)।';
  }

  @override
  String get errAiRefused => 'AI सेवाले यो शेयरको विश्लेषण गर्न अस्वीकार गर्‍यो।';

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
  String get chartUnavailable => 'हालको डेटा स्रोतबाट मूल्यको इतिहास उपलब्ध छैन।';

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
  String get statementsUnavailable => 'यो शेयरका लागि प्रकाशित वित्तीय विवरण उपलब्ध छैनन्।';

  @override
  String get launchAtLogin => 'लगइन हुँदा सुरु गर्नुहोस्';

  @override
  String get hotkeyLabel => 'ग्लोबल सर्टकट';

  @override
  String get hotkeyRecordHint => 'यहाँ क्लिक गर्नुहोस्, त्यसपछि नयाँ कुञ्जी संयोजन थिच्नुहोस्';

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
  String get noFavorites => 'अहिलेसम्म कुनै मनपर्ने छैन। थप्न कुनै शेयरको तारा ट्याप गर्नुहोस्।';

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
  String get updateDownloaded => 'अपडेट तयार छ। इन्स्टल गर्न रिस्टार्ट गर्नुहोस्।';

  @override
  String get updateNow => 'अपडेट गर्नुहोस्';

  @override
  String get restartNow => 'रिस्टार्ट गर्नुहोस्';

  @override
  String get updatesViaStore => 'अपडेटहरू एप स्टोरमार्फत स्वचालित रूपमा आउँछन्।';

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
  String get trialExpired => 'तपाईंको निःशुल्क परीक्षण सकियो। विश्लेषण जारी राख्न कुनै योजना छान्नुहोस्।';

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
  String get errTrialExpired => 'तपाईंको निःशुल्क परीक्षण सकियो। जारी राख्न कुनै योजना छान्नुहोस्।';

  @override
  String get errNoPlan => 'AI विश्लेषणका लागि सक्रिय योजना चाहिन्छ।';

  @override
  String get viewPlans => 'योजनाहरू हेर्नुहोस्';

  @override
  String get usageTitle => 'प्रयोग';

  @override
  String get demoPurchaseNote => 'डेमो बिलिङ: यो प्लेटफर्ममा खरिद सिमुलेट गरिन्छ।';

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
  String get aiDepthDeepDesc => 'थप वेब खोज, समकक्षी कम्पनीसँग तुलना र गहिरो विवरण।';

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
  String get aiReaderBeginnerDesc => 'सरल भाषा; हरेक प्राविधिक शब्दको व्याख्या गरिन्छ।';

  @override
  String get aiReaderExperiencedDesc => 'मानक वित्तीय शब्दावलीसहित सघन पाठ।';

  @override
  String get aiCounterArgument => 'सबैभन्दा बलियो प्रतितर्क';

  @override
  String get aiCounterArgumentDesc => 'सारांश सधैं आफ्नै निष्कर्षविरुद्धको सबैभन्दा बलियो तर्कसँग टुङ्गिन्छ।';

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
  String get outlookChartNote => 'सांकेतिक दायरा; सम्भावनाहरू मोटामोटी अनुमान हुन्, भविष्यवाणी होइनन्।';

  @override
  String get accountTitle => 'खाता';

  @override
  String get signIn => 'साइन इन गर्नुहोस्';

  @override
  String get signOut => 'साइन आउट गर्नुहोस्';

  @override
  String get notSignedIn => 'साइन इन गरिएको छैन';

  @override
  String get accountBenefit => 'तपाईंको सदस्यता सबै डिभाइसमा चलोस् भन्नका लागि साइन इन गर्नुहोस्।';

  @override
  String get accountSyncedNote => 'तपाईंको सदस्यता र बाँकी विश्लेषण हरेक डिभाइसमा उस्तै हुन्छन्।';

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
  String get errSignInFailed => 'साइन इन असफल भयो। आफ्नो जडान जाँचेर फेरि प्रयास गर्नुहोस्।';

  @override
  String get checkoutWaiting => 'आफ्नो ब्राउजरमा भुक्तानी पूरा गर्नुहोस्। भुक्तानी सकिएपछि एप आफैं अपडेट हुन्छ।';

  @override
  String get paymentViaStripe => 'Stripe मार्फत ब्राउजरमै सुरक्षित भुक्तानी। जुनसुकै बेला रद्द गर्न सकिन्छ।';

  @override
  String get paymentViaStore =>
      'तपाईंको App Store वा Google Play खातामार्फत बिल गरिन्छ। स्टोरको सेटिङमा जुनसुकै बेला रद्द गर्न सकिन्छ।';

  @override
  String get keySpace => 'स्पेस';

  @override
  String get doubleOptionTitle => 'Option दुई पटक थिच्नुहोस्';

  @override
  String get doubleOptionSubtitle => 'Option कुञ्जी छिटो-छिटो दुई पटक थिच्दा पनि WhatStock खुल्छ।';

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
    String _temp0 = intl.Intl.pluralLogic(years, locale: localeName, other: '$years वर्ष', one: '1 वर्ष');
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
  String get portfolioInvalidNumber => 'शून्यभन्दा ठूलो संख्या प्रविष्ट गर्नुहोस्।';

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
  String get portfolioExcluded => 'मूल्य वा विनिमय दर नभएका पोजिसनहरू कुल योगमा समावेश गरिएका छैनन्।';

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
  String get alertsEmpty => 'अहिलेसम्म कुनै मूल्य अलर्ट छैन। अलर्ट सेट गर्न कुनै शेयर खोलेर घण्टी ट्याप गर्नुहोस्।';

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
  String get keepInTraySubtitle => 'WhatStock मेनु बार वा ट्रेमा रहन्छ, त्यसैले सर्टकट र मूल्य अलर्टहरू चलिरहन्छन्।';

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
  String get errDeleteAccount => 'खाता मेटाउन सकिएन। आफ्नो जडान जाँचेर फेरि प्रयास गर्नुहोस्।';

  @override
  String get aiTrialBriefNote =>
      'परीक्षणका विश्लेषण छोटा हुन्छन् र छिटो AI मोडेलबाट बनाइन्छन्। योजनासँग तपाईंले हाम्रो सबैभन्दा सक्षम AI, थप वेब खोज, र मानक तथा विस्तृत लम्बाइ पाउनुहुन्छ।';
}
