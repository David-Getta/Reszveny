// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'किसी शेयर की फ़ोटो लें और उसके बारे में सब कुछ जानें।';

  @override
  String get homeHint =>
      'शेयर प्रमाणपत्र, ब्रोकरेज ऐप की स्क्रीन, अख़बार या कंपनी का लोगो – कुछ भी जो किसी शेयर की पहचान करे।';

  @override
  String get takePhoto => 'फ़ोटो लें';

  @override
  String get chooseFromGallery => 'गैलरी से चुनें';

  @override
  String get chooseImage => 'छवि चुनें';

  @override
  String get enterTickerManually => 'टिकर मैन्युअल रूप से दर्ज करें';

  @override
  String get tickerInputLabel => 'टिकर सिंबल';

  @override
  String get tickerInputHint => 'उदा. AAPL';

  @override
  String get lookUp => 'खोजें';

  @override
  String demoModeBanner(String symbols) {
    return 'डेमो मोड – कोई मार्केट डेटा कुंजी कॉन्फ़िगर नहीं है। नमूना डेटा इनके लिए उपलब्ध है: $symbols।';
  }

  @override
  String get recognizing => 'छवि का विश्लेषण हो रहा है…';

  @override
  String get loadingData => 'डेटा लोड हो रहा है…';

  @override
  String get noCandidatesTitle => 'कोई शेयर नहीं पहचाना गया';

  @override
  String get noCandidatesBody =>
      'हम इस छवि में किसी शेयर की पहचान नहीं कर सके। कोई स्पष्ट फ़ोटो लें, या टिकर मैन्युअल रूप से दर्ज करें।';

  @override
  String get whatWeSaw => 'हमने क्या देखा';

  @override
  String get chooseCandidateTitle => 'आपका मतलब कौन-सा शेयर था?';

  @override
  String confidencePercent(int percent) {
    return '$percent% विश्वास';
  }

  @override
  String get settings => 'सेटिंग्स';

  @override
  String get language => 'भाषा';

  @override
  String get systemLanguage => 'सिस्टम डिफ़ॉल्ट';

  @override
  String get about => 'ऐप के बारे में';

  @override
  String get disclaimer =>
      'यह ऐप केवल जानकारी देता है और निवेश सलाह नहीं है। डेटा विलंबित या अशुद्ध हो सकता है।';

  @override
  String dataSource(String source) {
    return 'डेटा स्रोत: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'पहचान: $source';
  }

  @override
  String get retry => 'पुनः प्रयास करें';

  @override
  String get cancel => 'रद्द करें';

  @override
  String get ok => 'ठीक है';

  @override
  String get close => 'बंद करें';

  @override
  String get errorGeneric => 'कुछ गलत हो गया।';

  @override
  String get errorSectionUnavailable => 'यह अनुभाग लोड नहीं हो सका।';

  @override
  String get notAvailable => 'उपलब्ध नहीं';

  @override
  String get sectionIdentity => 'पहचान';

  @override
  String get sectionPrice => 'कीमत';

  @override
  String get sectionValuation => 'मूल्यांकन';

  @override
  String get sectionFinancials => 'वित्तीय आँकड़े';

  @override
  String get sectionDividend => 'लाभांश';

  @override
  String get sectionProfile => 'कंपनी प्रोफ़ाइल';

  @override
  String get sectionAnalysts => 'विश्लेषक रेटिंग';

  @override
  String get sectionNews => 'समाचार';

  @override
  String get sectionRecognition => 'पहचान का विवरण';

  @override
  String get labelSymbol => 'टिकर';

  @override
  String get labelExchange => 'एक्सचेंज';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'मुद्रा';

  @override
  String get labelCountry => 'देश';

  @override
  String get labelIndustry => 'उद्योग';

  @override
  String get labelSector => 'सेक्टर';

  @override
  String get labelWebsite => 'वेबसाइट';

  @override
  String get labelIpoDate => 'IPO तिथि';

  @override
  String get labelMarketCap => 'मार्केट कैप';

  @override
  String get labelSharesOutstanding => 'बकाया शेयर';

  @override
  String get labelEmployees => 'कर्मचारी';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'मुख्यालय';

  @override
  String get labelDescription => 'विवरण';

  @override
  String get labelLastPrice => 'अंतिम कीमत';

  @override
  String get labelChange => 'बदलाव';

  @override
  String get labelOpen => 'ओपन';

  @override
  String get labelDayHigh => 'दिन का उच्च';

  @override
  String get labelDayLow => 'दिन का निम्न';

  @override
  String get labelPreviousClose => 'पिछला बंद';

  @override
  String get labelWeek52High => '52-सप्ताह उच्च';

  @override
  String get labelWeek52Low => '52-सप्ताह निम्न';

  @override
  String get labelAverageVolume10d => 'औसत वॉल्यूम (10 दिन)';

  @override
  String updatedAt(String time) {
    return 'अपडेट $time';
  }

  @override
  String get labelPeTrailing => 'P/E (ट्रेलिंग)';

  @override
  String get labelPeForward => 'P/E (फ़ॉरवर्ड)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / फ्री कैश फ़्लो';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'बीटा';

  @override
  String get labelRevenueTtm => 'राजस्व (TTM)';

  @override
  String get labelNetIncomeTtm => 'शुद्ध आय (TTM)';

  @override
  String get labelGrossMargin => 'सकल मार्जिन';

  @override
  String get labelOperatingMargin => 'परिचालन मार्जिन';

  @override
  String get labelNetMargin => 'शुद्ध मार्जिन';

  @override
  String get labelRoe => 'इक्विटी पर रिटर्न';

  @override
  String get labelRoa => 'संपत्ति पर रिटर्न';

  @override
  String get labelDebtToEquity => 'ऋण / इक्विटी';

  @override
  String get labelCurrentRatio => 'करंट रेशियो';

  @override
  String get labelRevenueGrowth => 'राजस्व वृद्धि (YoY)';

  @override
  String get labelEpsGrowth => 'EPS वृद्धि (YoY)';

  @override
  String get labelDividendYield => 'लाभांश यील्ड';

  @override
  String get labelDividendPerShare => 'प्रति शेयर लाभांश';

  @override
  String get labelPayoutRatio => 'पेआउट अनुपात';

  @override
  String get labelConsensus => 'सर्वसम्मति';

  @override
  String get ratingStrongBuy => 'स्ट्रॉन्ग बाय';

  @override
  String get ratingBuy => 'बाय';

  @override
  String get ratingHold => 'होल्ड';

  @override
  String get ratingSell => 'सेल';

  @override
  String get ratingStrongSell => 'स्ट्रॉन्ग सेल';

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
  String get noNews => 'कोई हाल का समाचार नहीं।';

  @override
  String get openArticle => 'लेख खोलें';

  @override
  String get openLinkFailed => 'लिंक नहीं खोला जा सका।';

  @override
  String get recognitionSummary => 'सारांश';

  @override
  String get recognitionEvidence => 'हमें ऐसा क्यों लगता है';

  @override
  String get recognitionRawText => 'छवि से पढ़ा गया टेक्स्ट';

  @override
  String get errMissingAnthropicKey =>
      'छवि पहचान कॉन्फ़िगर नहीं है (ANTHROPIC_API_KEY नहीं है)। टिकर मैन्युअल रूप से दर्ज करें।';

  @override
  String get errRecognitionUnreachable =>
      'पहचान सेवा से संपर्क नहीं हो सका। अपना इंटरनेट कनेक्शन जाँचें।';

  @override
  String errRecognitionHttp(String status) {
    return 'पहचान सेवा ने एक त्रुटि लौटाई (HTTP $status)।';
  }

  @override
  String get errRecognitionRefused =>
      'पहचान सेवा इस छवि को प्रोसेस नहीं कर सकी।';

  @override
  String get errRecognitionTruncated =>
      'पहचान प्रतिक्रिया अधूरी रह गई। कृपया पुनः प्रयास करें।';

  @override
  String get errRecognitionBadResponse =>
      'पहचान सेवा से अनपेक्षित प्रतिक्रिया।';

  @override
  String get errRecognitionEmpty => 'पहचान सेवा ने खाली प्रतिक्रिया लौटाई।';

  @override
  String get errMissingFinnhubKey =>
      'मार्केट डेटा कॉन्फ़िगर नहीं है (FINNHUB_API_KEY नहीं है)।';

  @override
  String get errMarketUnreachable =>
      'मार्केट डेटा सेवा से संपर्क नहीं हो सका। अपना इंटरनेट कनेक्शन जाँचें।';

  @override
  String get errMarketRateLimited =>
      'मार्केट डेटा सेवा को बहुत अधिक अनुरोध भेजे गए। कृपया एक मिनट प्रतीक्षा करें।';

  @override
  String errMarketHttp(String status) {
    return 'मार्केट डेटा सेवा ने एक त्रुटि लौटाई (HTTP $status)।';
  }

  @override
  String get errMarketBadResponse =>
      'मार्केट डेटा सेवा से अनपेक्षित प्रतिक्रिया।';

  @override
  String errNoQuote(String symbol) {
    return '$symbol के लिए कोई कीमत डेटा नहीं मिला।';
  }

  @override
  String errNoProfile(String symbol) {
    return '$symbol के लिए कोई कंपनी प्रोफ़ाइल नहीं मिली।';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'डेमो मोड केवल $symbols का समर्थन करता है। लाइव डेटा के लिए FINNHUB_API_KEY जोड़ें।';
  }

  @override
  String errUnknown(String detail) {
    return 'कुछ गलत हो गया: $detail';
  }

  @override
  String get newSearch => 'नई खोज';

  @override
  String get recentSearches => 'हाल के';

  @override
  String get noRecentSearches => 'अभी तक कोई हाल की खोज नहीं।';

  @override
  String get clearRecent => 'हाल के साफ़ करें';

  @override
  String get greeting => 'आज कौन-सा शेयर देखें?';

  @override
  String get searchHint => 'टिकर या कंपनी का नाम';

  @override
  String get attachImage => 'छवि संलग्न करें';

  @override
  String get searchResultsTitle => 'खोज परिणाम';

  @override
  String errNoResults(String query) {
    return '“$query” के लिए कोई शेयर नहीं मिला।';
  }

  @override
  String get quickBarHint => 'टिकर या कंपनी का नाम टाइप करें…';

  @override
  String get openFullWindow => 'विंडो खोलें';

  @override
  String hotkeyHint(String shortcut) {
    return 'WhatStock को कहीं से भी खोलने के लिए $shortcut दबाएँ।';
  }

  @override
  String get trayOpen => 'WhatStock खोलें';

  @override
  String get trayQuickSearch => 'त्वरित खोज';

  @override
  String get trayQuit => 'बाहर निकलें';

  @override
  String get appearance => 'दिखावट';

  @override
  String get themeSystem => 'सिस्टम';

  @override
  String get themeDark => 'डार्क';

  @override
  String get themeLight => 'लाइट';

  @override
  String get back => 'वापस';

  @override
  String get aiSectionTitle => 'AI विश्लेषण';

  @override
  String get aiIntro =>
      'AI द्वारा लिखा गया विस्तृत अवलोकन: हाल के समाचारों का सारांश, कारोबार, मज़बूतियाँ, जोखिम और छिपे कारक, मूल्यांकन, मनोवैज्ञानिक, सामाजिक, तकनीकी और समष्टि-आर्थिक दृष्टिकोण से परिदृश्यों के साथ कीमत का पूर्वानुमान, और किन बातों पर नज़र रखें।';

  @override
  String get aiGenerate => 'विश्लेषण बनाएँ';

  @override
  String get aiRegenerate => 'फिर से बनाएँ';

  @override
  String get aiGenerating =>
      'विश्लेषण तैयार हो रहा है… इसमें एक-दो मिनट लग सकते हैं।';

  @override
  String get aiSources => 'स्रोत';

  @override
  String aiGeneratedAt(String time) {
    return 'बनाया गया $time';
  }

  @override
  String get aiDisclaimer =>
      'सार्वजनिक डेटा और हाल के समाचारों पर आधारित AI-जनित विश्लेषण। इसमें त्रुटियाँ हो सकती हैं या यह पुराना हो सकता है, और यह निवेश सलाह नहीं है।';

  @override
  String get errAiNotConfigured =>
      'AI विश्लेषण कॉन्फ़िगर नहीं है (ANTHROPIC_API_KEY नहीं है)।';

  @override
  String get errAiUnreachable =>
      'AI सेवा से संपर्क नहीं हो सका। अपना इंटरनेट कनेक्शन जाँचें।';

  @override
  String errAiHttp(String status) {
    return 'AI सेवा ने एक त्रुटि लौटाई (HTTP $status)।';
  }

  @override
  String get errAiRefused =>
      'AI सेवा ने इस शेयर का विश्लेषण करने से इनकार कर दिया।';

  @override
  String get errAiBadResponse => 'AI सेवा से अनपेक्षित प्रतिक्रिया।';

  @override
  String get sectionChart => 'कीमत चार्ट';

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
      'वर्तमान डेटा स्रोत से कीमत का इतिहास उपलब्ध नहीं है।';

  @override
  String get sectionStatements => 'वित्तीय विवरण (वार्षिक)';

  @override
  String get labelFiscalYear => 'वित्त वर्ष';

  @override
  String get labelRevenue => 'राजस्व';

  @override
  String get labelNetIncome => 'शुद्ध आय';

  @override
  String get labelTotalAssets => 'कुल संपत्ति';

  @override
  String get labelTotalLiabilities => 'कुल देनदारियाँ';

  @override
  String get labelEquity => 'शेयरधारकों की इक्विटी';

  @override
  String get labelOperatingCashFlow => 'परिचालन कैश फ़्लो';

  @override
  String get statementsUnavailable =>
      'इस शेयर के लिए रिपोर्ट किए गए वित्तीय विवरण उपलब्ध नहीं हैं।';

  @override
  String get launchAtLogin => 'लॉगइन पर लॉन्च करें';

  @override
  String get hotkeyLabel => 'ग्लोबल शॉर्टकट';

  @override
  String get hotkeyRecordHint => 'यहाँ क्लिक करें, फिर नया कुंजी संयोजन दबाएँ';

  @override
  String get hotkeyReset => 'डिफ़ॉल्ट पर रीसेट करें';

  @override
  String get pasteImage => 'क्लिपबोर्ड से छवि पेस्ट करें';

  @override
  String get errClipboardNoImage => 'क्लिपबोर्ड में कोई छवि नहीं है।';

  @override
  String get favorites => 'पसंदीदा';

  @override
  String get addToFavorites => 'पसंदीदा में जोड़ें';

  @override
  String get removeFromFavorites => 'पसंदीदा से हटाएँ';

  @override
  String get noFavorites =>
      'अभी तक कोई पसंदीदा नहीं। जोड़ने के लिए किसी शेयर पर स्टार टैप करें।';

  @override
  String get displayCurrency => 'प्रदर्शित मुद्रा';

  @override
  String get displayCurrencyNone => 'केवल शेयर की अपनी मुद्रा';

  @override
  String labelConverted(String currency) {
    return '≈ $currency में';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'दर: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'अपडेट';

  @override
  String currentVersion(String version) {
    return 'संस्करण $version';
  }

  @override
  String get autoUpdate => 'अपडेट स्वचालित रूप से इंस्टॉल करें';

  @override
  String get checkForUpdates => 'अपडेट जाँचें';

  @override
  String get updateChecking => 'अपडेट जाँचे जा रहे हैं…';

  @override
  String get updateUpToDate => 'आप नवीनतम संस्करण पर हैं।';

  @override
  String updateAvailable(String version) {
    return 'संस्करण $version उपलब्ध है।';
  }

  @override
  String get updateDownloading => 'अपडेट बैकग्राउंड में डाउनलोड हो रहा है…';

  @override
  String get updateDownloaded =>
      'अपडेट तैयार है। इंस्टॉल करने के लिए पुनः प्रारंभ करें।';

  @override
  String get updateNow => 'अपडेट करें';

  @override
  String get restartNow => 'पुनः प्रारंभ करें';

  @override
  String get updatesViaStore =>
      'अपडेट ऐप स्टोर के माध्यम से स्वचालित रूप से मिलते हैं।';

  @override
  String get updateCheckFailed => 'अपडेट की जाँच नहीं की जा सकी।';

  @override
  String get subscription => 'सदस्यता';

  @override
  String get planTrial => 'ट्रायल';

  @override
  String get planNormal => 'सामान्य';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'कोई सक्रिय प्लान नहीं';

  @override
  String planAnalysesPerMonth(int count) {
    return 'प्रति माह $count विश्लेषण';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$count विश्लेषणों के साथ $days दिन का निःशुल्क ट्रायल';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'ट्रायल के $days दिन बाकी',
      one: 'ट्रायल का 1 दिन बाकी',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'आपका निःशुल्क ट्रायल समाप्त हो गया है। विश्लेषण जारी रखने के लिए कोई प्लान चुनें।';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'इस अवधि में $total में से $remaining विश्लेषण बाकी';
  }

  @override
  String extraCredits(int count) {
    return '$count अतिरिक्त विश्लेषण';
  }

  @override
  String renewsOn(String date) {
    return '$date को नवीनीकरण';
  }

  @override
  String get choosePlan => 'प्लान चुनें';

  @override
  String get currentPlan => 'वर्तमान प्लान';

  @override
  String get subscribe => 'सदस्यता लें';

  @override
  String get perMonth => '/ माह';

  @override
  String get extraPacksTitle => 'और चाहिए? अतिरिक्त विश्लेषण खरीदें';

  @override
  String get extraPacksHint =>
      'अतिरिक्त विश्लेषण कभी समाप्त नहीं होते और आपके मासिक कोटे के बाद उपयोग होते हैं।';

  @override
  String get buy => 'खरीदें';

  @override
  String get restorePurchases => 'खरीदारी पुनर्स्थापित करें';

  @override
  String get manageSubscription => 'सदस्यता प्रबंधित करें';

  @override
  String get purchaseSuccess => 'धन्यवाद! आपकी खरीदारी सक्रिय है।';

  @override
  String get purchasePending => 'खरीदारी लंबित है…';

  @override
  String get purchaseFailed => 'खरीदारी पूरी नहीं हो सकी।';

  @override
  String get purchaseCanceled => 'खरीदारी रद्द कर दी गई।';

  @override
  String get billingUnavailable =>
      'इस प्लैटफ़ॉर्म पर खरीदारी अभी उपलब्ध नहीं है। अपने फ़ोन या Mac पर सदस्यता लें; आपका प्लान हर डिवाइस पर काम करेगा।';

  @override
  String get errQuotaExceeded =>
      'इस अवधि के लिए आपके पास कोई विश्लेषण बाकी नहीं है। अपना प्लान अपग्रेड करें या अतिरिक्त विश्लेषण खरीदें।';

  @override
  String get errTrialExpired =>
      'आपका निःशुल्क ट्रायल समाप्त हो गया है। जारी रखने के लिए कोई प्लान चुनें।';

  @override
  String get errNoPlan => 'AI विश्लेषण के लिए एक सक्रिय प्लान आवश्यक है।';

  @override
  String get viewPlans => 'प्लान देखें';

  @override
  String get usageTitle => 'उपयोग';

  @override
  String get demoPurchaseNote =>
      'डेमो बिलिंग: इस प्लैटफ़ॉर्म पर खरीदारी सिम्युलेट की जाती है।';

  @override
  String get mostPopular => 'सबसे लोकप्रिय';

  @override
  String get bestValue => 'सर्वोत्तम मूल्य';

  @override
  String get planFeaturesCommon =>
      'फ़ोटो पहचान, लाइव डेटा, चार्ट, पसंदीदा और सभी 120 भाषाएँ हर प्लान में शामिल हैं। कोटा AI विश्लेषणों पर लागू होता है।';

  @override
  String get searchLanguages => 'भाषाएँ खोजें…';

  @override
  String get noLanguageMatch => 'कोई भाषा मेल नहीं खाती।';

  @override
  String get aiSettings => 'AI विश्लेषण';

  @override
  String get aiLength => 'लंबाई';

  @override
  String get aiDepthBrief => 'संक्षिप्त';

  @override
  String get aiDepthStandard => 'मानक';

  @override
  String get aiDepthDeep => 'विस्तृत';

  @override
  String get aiDepthBriefDesc => 'ज़रूरी बातें, जल्दी।';

  @override
  String get aiDepthStandardDesc => 'हर अनुभाग के साथ पूरी रिपोर्ट।';

  @override
  String get aiDepthDeepDesc =>
      'ज़्यादा वेब खोजें, समकक्ष कंपनियों से तुलना और गहरा विवरण।';

  @override
  String aiDepthWords(String min, String max) {
    return 'लगभग $min–$max शब्द';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count विश्लेषण खर्च होते हैं',
      one: '1 विश्लेषण खर्च होता है',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'पाठक स्तर';

  @override
  String get aiReaderBeginner => 'शुरुआती';

  @override
  String get aiReaderExperienced => 'अनुभवी';

  @override
  String get aiReaderBeginnerDesc => 'सरल भाषा; हर तकनीकी शब्द समझाया जाता है।';

  @override
  String get aiReaderExperiencedDesc => 'मानक वित्तीय शब्दावली के साथ सघन पाठ।';

  @override
  String get aiCounterArgument => 'सबसे मज़बूत प्रतितर्क';

  @override
  String get aiCounterArgumentDesc =>
      'सारांश हमेशा अपने ही निष्कर्ष के विरुद्ध सबसे मज़बूत तर्क के साथ समाप्त होता है।';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'आपके प्लान में प्रति विश्लेषण अधिकतम $count वेब खोजें',
      one: 'आपके प्लान में प्रति विश्लेषण अधिकतम 1 वेब खोज',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'प्लान के अनुसार मानक लंबाई: सामान्य $normal, Pro $pro, Max $max, Ultra $ultra। संक्षिप्त में 2 कम, विस्तृत में 2 अधिक।';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'अधिकतम $count वेब खोजें',
      one: 'अधिकतम 1 वेब खोज',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'प्रति विश्लेषण $count वेब खोजें',
      one: 'प्रति विश्लेषण 1 वेब खोज',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'इस लंबाई के लिए $needed विश्लेषण चाहिए, लेकिन केवल $left बाकी हैं। सेटिंग्स में छोटी लंबाई चुनें या और विश्लेषण लें।';
  }

  @override
  String get outlookMarketMood => 'बाज़ार का मूड';

  @override
  String get moodVeryPessimistic => 'बहुत निराशावादी';

  @override
  String get moodPessimistic => 'निराशावादी';

  @override
  String get moodNeutral => 'तटस्थ';

  @override
  String get moodOptimistic => 'आशावादी';

  @override
  String get moodVeryOptimistic => 'बहुत आशावादी';

  @override
  String get scenarioBull => 'तेज़ी परिदृश्य';

  @override
  String get scenarioBase => 'आधार परिदृश्य';

  @override
  String get scenarioBear => 'मंदी परिदृश्य';

  @override
  String outlookCurrentPrice(String price) {
    return 'वर्तमान कीमत: $price';
  }

  @override
  String get outlookKeyLevels => 'प्रमुख स्तर';

  @override
  String get keyLevelSupport => 'सपोर्ट';

  @override
  String get keyLevelResistance => 'रेज़िस्टेंस';

  @override
  String get keyLevelAnchor => 'एंकर स्तर';

  @override
  String get upcomingEvents => 'आगामी घटनाएँ';

  @override
  String get outlookChartNote =>
      'सांकेतिक दायरे; संभावनाएँ मोटे अनुमान हैं, भविष्यवाणियाँ नहीं।';

  @override
  String get accountTitle => 'खाता';

  @override
  String get signIn => 'साइन इन करें';

  @override
  String get signOut => 'साइन आउट करें';

  @override
  String get notSignedIn => 'साइन इन नहीं है';

  @override
  String get accountBenefit =>
      'साइन इन करें ताकि आपकी सदस्यता आपके सभी डिवाइस पर काम करे।';

  @override
  String get accountSyncedNote =>
      'आपकी सदस्यता और बाकी विश्लेषण हर डिवाइस पर एक जैसे रहते हैं।';

  @override
  String get signInTitle => 'WhatStock में साइन इन करें';

  @override
  String get emailLabel => 'ईमेल पता';

  @override
  String get continueWithEmail => 'ईमेल से जारी रखें';

  @override
  String codeSentTo(String email) {
    return 'हमने $email पर 6 अंकों का कोड भेजा है। यह 10 मिनट तक मान्य है।';
  }

  @override
  String get codeLabel => 'साइन-इन कोड';

  @override
  String get resendCode => 'नया कोड भेजें';

  @override
  String get useDifferentEmail => 'दूसरा ईमेल इस्तेमाल करें';

  @override
  String get errInvalidCode => 'कोड गलत है या उसकी समय-सीमा समाप्त हो गई है।';

  @override
  String get errInvalidEmail => 'कृपया एक मान्य ईमेल पता दर्ज करें।';

  @override
  String get errSignInFailed =>
      'साइन इन नहीं हो सका। अपना इंटरनेट कनेक्शन जाँचें और पुनः प्रयास करें।';

  @override
  String get checkoutWaiting =>
      'अपने ब्राउज़र में भुगतान पूरा करें। पूरा होते ही ऐप अपने आप अपडेट हो जाएगा।';

  @override
  String get paymentViaStripe =>
      'Stripe के माध्यम से आपके ब्राउज़र में सुरक्षित भुगतान। कभी भी रद्द करें।';

  @override
  String get paymentViaStore =>
      'भुगतान आपके App Store या Google Play खाते से होता है। स्टोर सेटिंग्स में कभी भी रद्द करें।';

  @override
  String get keySpace => 'स्पेस';

  @override
  String get doubleOptionTitle => 'Option को दो बार दबाएँ';

  @override
  String get doubleOptionSubtitle =>
      'Option कुंजी को जल्दी-जल्दी दो बार दबाने से भी WhatStock खुल जाता है।';

  @override
  String get doubleOptionPermission =>
      'दूसरे ऐप्स में भी यह काम करे, इसके लिए सिस्टम सेटिंग्ज़ → गोपनीयता और सुरक्षा → इनपुट मॉनिटरिंग में WhatStock को अनुमति दें, फिर ऐप को दोबारा खोलें।';

  @override
  String get openSystemSettings => 'सिस्टम सेटिंग्ज़ खोलें';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'WhatStock को कहीं से भी खोलने के लिए $shortcut दबाएँ या Option को दो बार दबाएँ।';
  }

  @override
  String get scenarioMostLikely => 'सबसे संभावित';

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
    return 'सबसे संभावित $price';
  }

  @override
  String get confidenceLow => 'कम भरोसा';

  @override
  String get confidenceMedium => 'मध्यम भरोसा';

  @override
  String get confidenceHigh => 'उच्च भरोसा';

  @override
  String get longTermNote =>
      'दीर्घकालिक दायरे बताई गई मान्यताओं पर आधारित हैं और समय के साथ चौड़े होते जाते हैं। कीमतों में लाभांश शामिल नहीं है। मोटे अनुमान हैं, भविष्यवाणियाँ नहीं।';

  @override
  String get portfolio => 'पोर्टफ़ोलियो';

  @override
  String get portfolioEmpty =>
      'अभी कुछ नहीं है। कोई शेयर खोलें और अपनी होल्डिंग पर नज़र रखने के लिए “पोर्टफ़ोलियो में जोड़ें” पर टैप करें।';

  @override
  String get portfolioLocalNote =>
      'केवल इसी डिवाइस पर सहेजा जाता है। कुल योग ECB की संदर्भ दरों पर बदले जाते हैं; कीमतें देर से आ सकती हैं।';

  @override
  String get addToPortfolio => 'पोर्टफ़ोलियो में जोड़ें';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol जोड़ें';
  }

  @override
  String get portfolioQuantity => 'शेयरों की संख्या';

  @override
  String portfolioBuyPrice(String currency) {
    return 'प्रति शेयर कीमत ($currency)';
  }

  @override
  String get portfolioBuyDate => 'खरीद की तारीख';

  @override
  String get portfolioAdd => 'जोड़ें';

  @override
  String get portfolioInvalidNumber => 'शून्य से बड़ी संख्या दर्ज करें।';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol पोर्टफ़ोलियो में जोड़ा गया।';
  }

  @override
  String get portfolioTotalValue => 'कुल मूल्य';

  @override
  String get portfolioToday => 'आज';

  @override
  String get portfolioGainLoss => 'लाभ/हानि';

  @override
  String get portfolioInvested => 'निवेश';

  @override
  String get portfolioAllocation => 'आवंटन';

  @override
  String get portfolioPositions => 'पोज़िशन';

  @override
  String portfolioAvgCost(String price) {
    return 'औसत लागत $price';
  }

  @override
  String get portfolioYourPosition => 'आपकी पोज़िशन';

  @override
  String get portfolioPurchases => 'खरीदारियाँ';

  @override
  String get portfolioRemove => 'हटाएँ';

  @override
  String get portfolioExcluded =>
      'जिन पोज़िशन की कीमत या विनिमय दर उपलब्ध नहीं, वे कुल योग में शामिल नहीं हैं।';

  @override
  String get priceAlerts => 'कीमत अलर्ट';

  @override
  String get setPriceAlert => 'कीमत अलर्ट सेट करें';

  @override
  String alertDialogTitle(String symbol) {
    return 'कीमत अलर्ट · $symbol';
  }

  @override
  String get alertKindAbove => 'इससे ऊपर जाए';

  @override
  String get alertKindBelow => 'इससे नीचे आए';

  @override
  String get alertKindMove => 'एक दिन में बहुत हिले';

  @override
  String alertTargetPrice(String currency) {
    return 'कीमत ($currency)';
  }

  @override
  String get alertMovePercent => 'दैनिक बदलाव (%)';

  @override
  String get alertAlreadyMet => 'कीमत पहले ही इस स्तर से आगे है।';

  @override
  String get alertSave => 'अलर्ट सेट करें';

  @override
  String alertCreated(String symbol) {
    return '$symbol के लिए अलर्ट सेट हो गया।';
  }

  @override
  String get alertsEmpty =>
      'अभी कोई अलर्ट नहीं। कोई शेयर खोलें और घंटी पर टैप करें।';

  @override
  String get alertsNote =>
      'जब तक WhatStock चल रहा है, अलर्ट हर 5 मिनट में जाँचे जाते हैं। कंप्यूटर पर ऐप मेनू बार या सिस्टम ट्रे में चलता रहता है; फ़ोन पर फ़िलहाल अलर्ट तभी आते हैं जब ऐप खुला हो।';

  @override
  String alertDescAbove(String price) {
    return '$price से ऊपर';
  }

  @override
  String alertDescBelow(String price) {
    return '$price से नीचे';
  }

  @override
  String alertDescMove(String percent) {
    return 'दैनिक बदलाव ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return '$date को $price पर सक्रिय हुआ';
  }

  @override
  String get alertRearm => 'फिर से चालू करें';

  @override
  String get alertDelete => 'हटाएँ';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol $price से ऊपर गया';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol $price से नीचे आया';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol आज $percent हिला';
  }

  @override
  String alertHitBody(String price) {
    return 'मौजूदा कीमत: $price';
  }

  @override
  String get alertOpen => 'खोलें';

  @override
  String get keepInTrayTitle => 'विंडो बंद होने पर भी चलता रहे';

  @override
  String get keepInTraySubtitle =>
      'WhatStock मेनू बार या सिस्टम ट्रे में रहता है, ताकि शॉर्टकट और कीमत अलर्ट काम करते रहें।';

  @override
  String get termsOfUse => 'उपयोग की शर्तें';

  @override
  String get privacyPolicy => 'गोपनीयता नीति';

  @override
  String get subscriptionLegal =>
      'सदस्यता हर महीने अपने आप नवीनीकृत होती है, जब तक आप इसे रद्द न करें। सदस्यता लेकर आप उपयोग की शर्तें और गोपनीयता नीति स्वीकार करते हैं।';

  @override
  String get deleteAccount => 'खाता हटाएँ';

  @override
  String get deleteAccountTitle => 'क्या आप अपना खाता हटाना चाहते हैं?';

  @override
  String get deleteAccountBody =>
      'आपका खाता और हमारे सर्वर पर रखा सब कुछ (ईमेल, सीमा, उपयोग) हमेशा के लिए हट जाएगा, और बिना उपयोग किए विश्लेषण खो जाएँगे। ब्राउज़र में भुगतान की गई सदस्यता तुरंत रद्द हो जाती है; App Store या Google Play की सदस्यता स्टोर की सेटिंग्स में रद्द करनी होगी।';

  @override
  String get deleteLocalData =>
      'इस डिवाइस का डेटा भी हटाएँ (पोर्टफ़ोलियो, अलर्ट, पसंदीदा, इतिहास, सहेजे गए विश्लेषण)';

  @override
  String get deleteAccountConfirm => 'हमेशा के लिए हटाएँ';

  @override
  String get accountDeleted => 'आपका खाता हटा दिया गया है।';

  @override
  String get errDeleteAccount =>
      'खाता हटाया नहीं जा सका। कनेक्शन जाँचें और फिर कोशिश करें।';

  @override
  String get aiTrialBriefNote =>
      'ट्रायल के विश्लेषण संक्षिप्त होते हैं और एक तेज़ AI मॉडल से बनते हैं। प्लान के साथ आपको हमारा सबसे सक्षम AI, ज़्यादा वेब खोजें और मानक व विस्तृत लंबाई मिलती है।';

  @override
  String get billingMonthly => 'मासिक';

  @override
  String get billingYearly => 'वार्षिक';

  @override
  String get yearlyDiscount => '2 महीने मुफ़्त';

  @override
  String get perYear => '/ वर्ष';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price प्रति माह';
  }

  @override
  String get subscriptionLegalYearly =>
      'वार्षिक सदस्यता हर साल अपने आप नवीनीकृत होती है, जब तक आप इसे रद्द न करें। सदस्यता लेकर आप उपयोग की शर्तें और गोपनीयता नीति स्वीकार करते हैं।';

  @override
  String get myAnalyses => 'मेरे विश्लेषण';

  @override
  String get navAlerts => 'अलर्ट';

  @override
  String get inviteTitle => 'निजी प्रीव्यू';

  @override
  String get inviteBody =>
      'फ़िलहाल WhatStock केवल आमंत्रण पर उपलब्ध है। आपको मिला आमंत्रण कोड दर्ज करें।';

  @override
  String get inviteCodeLabel => 'आमंत्रण कोड';

  @override
  String get inviteContinue => 'जारी रखें';

  @override
  String get inviteInvalid => 'यह आमंत्रण कोड मान्य नहीं है।';

  @override
  String get inviteExpired =>
      'इस आमंत्रण की समय-सीमा समाप्त हो गई है। जिसने आपको आमंत्रित किया है, उनसे नया कोड माँगें।';

  @override
  String get inviteDeviceLimit =>
      'यह आमंत्रण कोड पहले से ही अधिकतम संख्या में डिवाइस पर इस्तेमाल हो रहा है।';

  @override
  String get previewConfidential => 'गोपनीय प्रीव्यू';

  @override
  String get errPreviewDailyLimit =>
      'इस प्रीव्यू की आज की विश्लेषण सीमा पूरी हो गई है। कल फिर से कोशिश करें।';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count घंटे पहले',
      one: '1 घंटा पहले',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिन पहले',
      one: '1 दिन पहले',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'इस विश्लेषण को अपडेट करें?';

  @override
  String staleBody(String age) {
    return 'यह विश्लेषण $age बनाया गया था। हो सकता है तब से कीमतें, खबरें और नतीजे बदल गए हों।';
  }

  @override
  String get staleKeep => 'पहले वाला दिखाएँ';

  @override
  String get staleRefresh => 'नया बनाएँ';

  @override
  String seeAll(int count) {
    return 'सभी देखें ($count)';
  }

  @override
  String get searchAnalyses => 'अपने विश्लेषण खोजें';

  @override
  String get deleteAnalysis => 'हटाएँ';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol विश्लेषण हटाया गया';
  }

  @override
  String get keyLevelAlertHint =>
      'किसी स्तर पर टैप करें, कीमत वहाँ पहुँचने पर आपको अलर्ट मिलेगा।';

  @override
  String get shareAnalysisTitle => 'विश्लेषण शेयर करें';

  @override
  String get shareAsImage => 'इमेज के रूप में शेयर करें';

  @override
  String get shareAsText => 'टेक्स्ट के रूप में शेयर करें';

  @override
  String get shareCardFooter => 'WhatStock से बनाया गया';

  @override
  String get shareCardDisclaimer => 'AI विश्लेषण · निवेश सलाह नहीं';

  @override
  String get referralTitle => 'दोस्तों को आमंत्रित करें';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count अतिरिक्त विश्लेषण',
      one: '1 अतिरिक्त विश्लेषण',
    );
    return 'अपना कोड शेयर करें। आपके दोस्त को तुरंत $_temp0 का बोनस मिलेगा, और उनके पहले विश्लेषण के बाद आपको भी इतना ही मिलेगा।';
  }

  @override
  String get referralYourCode => 'आपका कोड';

  @override
  String referralStats(int invited, int rewarded) {
    return 'आमंत्रित: $invited · पुरस्कृत: $rewarded';
  }

  @override
  String get referralHaveCode => 'क्या आपके पास किसी दोस्त का कोड है?';

  @override
  String get referralRedeem => 'रिडीम करें';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count अतिरिक्त विश्लेषण जोड़े गए। स्वागत है!',
      one: '1 अतिरिक्त विश्लेषण जोड़ा गया। स्वागत है!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'यह कोड मौजूद नहीं है। इसे जाँचें और फिर से कोशिश करें।';

  @override
  String get referralErrOwn => 'आप अपना ही कोड रिडीम नहीं कर सकते।';

  @override
  String get referralErrAlready =>
      'आप पहले ही किसी दोस्त का कोड रिडीम कर चुके हैं।';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count अतिरिक्त विश्लेषण',
      one: '1 अतिरिक्त विश्लेषण',
    );
    return 'WhatStock से शेयरों का विश्लेषण कीजिए: शेयर की फ़ोटो लें और AI उसे समझा देगा। मेरे कोड $code से आपको $_temp0 का बोनस मिलेगा।';
  }

  @override
  String get referralCopied => 'कोड कॉपी हो गया';

  @override
  String get onboardTitle1 => 'किसी शेयर की फ़ोटो लें';

  @override
  String get onboardBody1 =>
      'ब्रोकरेज ऐप की स्क्रीन, अख़बार या कंपनी का लोगो ही काफ़ी है: WhatStock शेयर को पहचानकर उसकी कीमत, चार्ट और मुख्य आँकड़े दिखाता है।';

  @override
  String get onboardTitle2 => 'मिनटों में समझें';

  @override
  String get onboardBody2 =>
      'AI विश्लेषण बताता है कि शेयर को क्या प्रभावित करता है, उसके जोखिम क्या हैं, उसका मूल्यांकन कैसा है और कीमत किस ओर जा सकती है, इसके तीन परिदृश्य – स्रोतों के साथ और आपकी भाषा में।';

  @override
  String get onboardTitle3 => 'हर पल अपडेट रहें';

  @override
  String get onboardBody3 =>
      'पसंदीदा, आपका पोर्टफ़ोलियो और कीमत अलर्ट आपको हर ख़बर देते रहते हैं। आपके विश्लेषण आपके डिवाइस पर ही रहते हैं, जब चाहें दोबारा खोलें।';

  @override
  String get onboardNext => 'आगे';

  @override
  String get onboardStart => 'शुरू करें';

  @override
  String get onboardSkip => 'छोड़ें';

  @override
  String changesTitle(String date) {
    return 'पिछले विश्लेषण के बाद से ($date)';
  }

  @override
  String get changesPrice => 'कीमत';

  @override
  String get changesNoMajor => 'दृष्टिकोण में कोई खास बदलाव नहीं आया है।';

  @override
  String get changesPreviousSummary => 'पिछला सारांश';

  @override
  String get telemetryTitle => 'WhatStock को बेहतर बनाने में मदद करें';

  @override
  String get telemetryBody =>
      'अनाम उपयोग आँकड़े और क्रैश रिपोर्ट शेयर करें: कौन-सी सुविधाएँ इस्तेमाल होती हैं और क्या गड़बड़ हुई। आपके स्टॉक, विश्लेषण या निजी डेटा कभी नहीं। आप इसे सेटिंग्स में कभी भी बदल सकते हैं।';

  @override
  String get telemetryAllow => 'अनुमति दें';

  @override
  String get telemetryDecline => 'नहीं, धन्यवाद';

  @override
  String get telemetrySetting => 'अनाम आँकड़े और क्रैश रिपोर्ट';

  @override
  String get telemetrySettingHint =>
      'सुविधाओं का कितनी बार उपयोग होता है और त्रुटि रिपोर्ट, बिना निजी डेटा या आपकी खोजों और विश्लेषणों की सामग्री के।';

  @override
  String get askButton => 'इस विश्लेषण के बारे में पूछें';

  @override
  String askTitle(String symbol) {
    return '$symbol के बारे में सवाल';
  }

  @override
  String get askIntro =>
      'विश्लेषण के बारे में कुछ भी पूछें: किसी जोखिम का क्या मतलब है, किस बात से संभावनाएँ बदल सकती हैं, कोई संख्या कैसे निकाली गई। जवाब इसी विश्लेषण पर आधारित हैं और ये निवेश सलाह नहीं हैं।';

  @override
  String get askHint => 'सवाल पूछें…';

  @override
  String get askSend => 'भेजें';

  @override
  String get askThinking => 'सोच रहा है…';

  @override
  String get askSuggest1 => 'सबसे बड़ा जोखिम क्या है?';

  @override
  String get askSuggest2 => 'किस बात से संभावनाएँ बदल सकती हैं?';

  @override
  String get askSuggest3 => 'इसे आसान शब्दों में समझाइए';

  @override
  String get askMaxReached =>
      'इस विश्लेषण के लिए यह आखिरी सवाल था। और पूछने के लिए नया विश्लेषण बनाएँ।';

  @override
  String get errAskLimit =>
      'आपने आज के सवालों की सीमा पूरी कर ली है। कृपया कल फिर से कोशिश करें।';

  @override
  String get eventTomorrow => 'कल';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days दिनों में',
      one: '1 दिन में',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'तिमाही नतीजे';

  @override
  String get eventBeforeOpen => 'बाज़ार खुलने से पहले';

  @override
  String get eventAfterClose => 'बाज़ार बंद होने के बाद';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS अनुमान: $value';
  }

  @override
  String get eventFromAnalysis => 'आपके विश्लेषण से';

  @override
  String get eventsHint =>
      'अगले 90 दिनों में आपके पसंदीदा और पोर्टफ़ोलियो शेयरों के नतीजों की तारीखें, और आपके विश्लेषणों में चिह्नित तारीख वाली घटनाएँ।';

  @override
  String get eventsEmpty =>
      'अगले 90 दिनों में कोई तारीख वाली घटना नहीं है। यहाँ नतीजों की तारीखें देखने के लिए पसंदीदा या पोर्टफ़ोलियो में शेयर जोड़ें।';

  @override
  String get compareTitle => 'तुलना करें';

  @override
  String get compareAdd => 'शेयर जोड़ें';

  @override
  String get compareRemove => 'हटाएँ';

  @override
  String get compareTickerHint => 'टिकर, जैसे MSFT';

  @override
  String get compareHint =>
      'मुख्य आंकड़े साथ-साथ; हर पंक्ति में सबसे अच्छा मान हाइलाइट किया गया है। राशियाँ हर शेयर की अपनी मुद्रा में हैं।';

  @override
  String get compareNoAnalysis => 'अभी कोई विश्लेषण नहीं';

  @override
  String get portfolioDividends => 'वार्षिक लाभांश';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent यील्ड';
  }

  @override
  String get portfolioDividendNote =>
      'अनुमानित वार्षिक लाभांश पिछले 12 महीनों में दिए गए लाभांश पर आधारित है; भविष्य के भुगतान की गारंटी नहीं है।';

  @override
  String positionDividend(String amount) {
    return 'लाभांश: $amount प्रति वर्ष';
  }

  @override
  String get chartAvgCost => 'आपका औसत';

  @override
  String get chartAlertLevel => 'अलर्ट';

  @override
  String get marketsToday => 'आज के बाज़ार';

  @override
  String get notesTitle => 'मेरे नोट्स';

  @override
  String get notesHint =>
      'आपने इसे क्यों खरीदा, आप किस पर नज़र रख रहे हैं, किस वजह से आप इसे बेचेंगे?';

  @override
  String get notesInfo =>
      'केवल इसी डिवाइस पर सहेजा जाता है। AI विश्लेषण आपके नोट्स को ध्यान में रखता है।';

  @override
  String notesSaved(String date) {
    return 'सहेजा गया $date';
  }

  @override
  String get peersTitle => 'समान कंपनियाँ';

  @override
  String get portfolioExport => 'CSV के रूप में निर्यात करें';

  @override
  String get portfolioImport => 'CSV से आयात करें';

  @override
  String get portfolioImportHint =>
      'हर पंक्ति में एक खरीदारी पेस्ट करें: टिकर सिंबल, मात्रा, कीमत, मुद्रा, तारीख (YYYY-MM-DD)। कॉलम कॉमा, सेमीकोलन या टैब से अलग किए जा सकते हैं; हेडर पंक्ति वैकल्पिक है।';

  @override
  String get portfolioImportButton => 'आयात करें';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count खरीदारियाँ जोड़ी गईं',
      one: '1 खरीदारी जोड़ी गई',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count पंक्तियाँ छोड़ी गईं',
      one: '1 पंक्ति छोड़ी गई',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'पोर्टफ़ोलियो, पसंदीदा, कीमत अलर्ट और नोट्स आपके सभी डिवाइस पर सिंक होते हैं।';

  @override
  String syncLast(String time) {
    return 'पिछला सिंक: $time';
  }

  @override
  String get syncNow => 'अभी सिंक करें';

  @override
  String get syncFailed => 'सिंक नहीं हो सका। यह अपने आप फिर से कोशिश करेगा।';

  @override
  String get alertEmailTitle => 'अलर्ट ट्रिगर होने पर ई-मेल';

  @override
  String get alertEmailOn =>
      'हम हर कुछ मिनट में आपके अलर्ट जाँचते हैं और ऐप बंद होने पर भी आपको ई-मेल भेजते हैं।';

  @override
  String get alertEmailSignIn =>
      'ऐप बंद होने पर भी ई-मेल से अलर्ट पाने के लिए सेटिंग्स में अपने ई-मेल से साइन इन करें।';

  @override
  String get portfolioHistory => 'समय के साथ मूल्य';

  @override
  String get portfolioReviewTitle => 'AI पोर्टफ़ोलियो समीक्षा';

  @override
  String get portfolioReviewIntro =>
      'AI आपके पूरे पोर्टफ़ोलियो को देखता है: केंद्रीकरण, सेक्टर और मुद्रा का जोखिम, आपके शेयरों के साझा जोखिम और डिविडेंड। 1 विश्लेषण खर्च होता है।';

  @override
  String get portfolioReviewButton => 'मेरे पोर्टफ़ोलियो की समीक्षा करें';

  @override
  String get portfolioReviewAgain => 'फिर से समीक्षा करें';

  @override
  String get portfolioReviewWorking =>
      'आपके पोर्टफ़ोलियो की समीक्षा हो रही है…';

  @override
  String get digestTitle => 'ईमेल से साप्ताहिक सारांश';

  @override
  String get digestHint =>
      'हर सोमवार: पिछले हफ़्ते आपके पसंदीदा और पोर्टफ़ोलियो का हाल कैसा रहा, और उनके आने वाले नतीजों की तारीखें।';

  @override
  String get benchmarkTitle => 'S&P 500 से तुलना';

  @override
  String get benchmarkYours => 'आपकी खरीदारी';

  @override
  String get benchmarkIndex => 'उतनी ही राशि S&P 500 में';

  @override
  String benchmarkAhead(String points) {
    return 'इंडेक्स से $points प्रतिशत अंक बेहतर';
  }

  @override
  String benchmarkBehind(String points) {
    return 'इंडेक्स से $points प्रतिशत अंक पीछे';
  }

  @override
  String get benchmarkHint =>
      'मानो हर खरीदारी की राशि उसी दिन S&P 500 इंडेक्स फ़ंड में लगाई गई हो। लाभांश शामिल नहीं; पिछला रिटर्न भविष्य के रिटर्न का संकेत नहीं देता।';

  @override
  String get portfolioSell => 'बेचें';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbol बेचें';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'प्रति शेयर बिक्री मूल्य ($currency)';
  }

  @override
  String get portfolioSellDate => 'बिक्री की तारीख';

  @override
  String get portfolioSellAll => 'सभी';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'आपके पास $quantity हैं';
  }

  @override
  String get portfolioSold => 'बेचा';

  @override
  String get portfolioRealized => 'प्राप्त';

  @override
  String get portfolioClosed => 'बंद पोज़िशन';

  @override
  String get portfolioClosedNote => 'सभी शेयर बेचे गए';

  @override
  String get portfolioTransactions => 'लेन-देन';

  @override
  String get portfolioRealizedByYear => 'वर्ष के अनुसार प्राप्त लाभ';

  @override
  String get portfolioRealizedHint =>
      'बिक्री को पहले आपकी सबसे पुरानी खरीदारियों से मिलाया जाता है (FIFO), आज की विनिमय दर पर बदलकर। टैक्स रिटर्न के लिए अपने ब्रोकर के स्टेटमेंट का उपयोग करें।';

  @override
  String staleNewResults(String symbol, String date) {
    return 'इस विश्लेषण के बाद नए तिमाही नतीजे जारी हुए हैं ($symbol, $date)।';
  }

  @override
  String get newResultsBadge => 'नए नतीजे';

  @override
  String get portfolioImportBrokers =>
      'Revolut, Trading 212 और Interactive Brokers के एक्सपोर्ट भी बिक्री समेत पहचाने जाते हैं; लाभांश और जमा छोड़ दिए जाते हैं।';

  @override
  String get portfolioImportFile => 'फ़ाइल चुनें';

  @override
  String offlineBanner(String time) {
    return 'कनेक्शन नहीं है – पिछली बार सहेजा गया डेटा दिखाया जा रहा है ($time)।';
  }

  @override
  String get glossMarketCap =>
      'शेयर बाज़ार में पूरी कंपनी की कीमत: शेयर का भाव × शेयरों की संख्या।';

  @override
  String get glossSharesOutstanding =>
      'कंपनी ने कितने शेयर जारी किए हैं। अगर यह बढ़े, तो हर शेयर का हिस्सा छोटा हो जाता है; बायबैक इसे घटाते हैं।';

  @override
  String get glossPeTrailing =>
      'भाव ÷ पिछले 12 महीनों की प्रति शेयर आय: आप मौजूदा मुनाफ़े के कितने सालों की कीमत चुका रहे हैं। कम मतलब सस्ता, लेकिन तेज़ी से बढ़ने वाली कंपनियों का P/E आमतौर पर ऊँचा होता है।';

  @override
  String get glossPeForward =>
      'P/E जैसा ही, लेकिन अगले 12 महीनों के लिए विश्लेषकों के अनुमानित मुनाफ़े के साथ। ट्रेलिंग P/E से कम होने का मतलब है कि मुनाफ़ा बढ़ने की उम्मीद है।';

  @override
  String get glossPb =>
      'भाव ÷ प्रति शेयर बुक वैल्यू (संपत्ति घटा कर्ज़)। लगभग 1 का मतलब है कि बाज़ार कंपनी को उतना ही आँकता है जितना कागज़ पर उसके पास है।';

  @override
  String get glossPs =>
      'बाज़ार मूल्य ÷ सालाना राजस्व। उन कंपनियों के लिए उपयोगी जिनका मुनाफ़ा अभी कम या शून्य है; एक ही उद्योग में तुलना करें।';

  @override
  String get glossEvToFcf =>
      'कर्ज़ सहित कंपनी का मूल्य (EV) ÷ निवेश के बाद साल भर में बनने वाली नकदी। कम मतलब कीमत के बदले आपको ज़्यादा नकदी मिलती है।';

  @override
  String get glossPeg =>
      'P/E ÷ अनुमानित सालाना मुनाफ़ा वृद्धि (%)। लगभग 1 को अक्सर उचित माना जाता है; यह P/E को वृद्धि के नज़रिए से देखता है।';

  @override
  String get glossEps =>
      'पिछले 12 महीनों में प्रति शेयर मुनाफ़ा। सालों में बढ़ता EPS एक स्वस्थ कंपनी के सबसे मज़बूत संकेतों में से एक है।';

  @override
  String get glossBeta =>
      'शेयर बाज़ार के साथ कितना ऊपर-नीचे होता है: 1 = बाज़ार जैसा, 1.5 = लगभग 50% बड़े उतार-चढ़ाव, 1 से कम = ज़्यादा शांत।';

  @override
  String get glossRevenueTtm =>
      'पिछले 12 महीनों की कुल बिक्री, किसी भी खर्च से पहले।';

  @override
  String get glossNetIncomeTtm =>
      'पिछले 12 महीनों में सभी खर्च, ब्याज और कर के बाद बचा मुनाफ़ा।';

  @override
  String get glossGrossMargin =>
      'उत्पादों की सीधी लागत के बाद राजस्व का बचा हिस्सा। ऊँचा मार्जिन अक्सर कीमत तय करने की ताक़त दिखाता है।';

  @override
  String get glossOperatingMargin =>
      'कारोबार चलाने (वेतन, किराया, मार्केटिंग) के बाद राजस्व का बचा हिस्सा, ब्याज और कर से पहले।';

  @override
  String get glossNetMargin =>
      'राजस्व का वह हिस्सा जो अंत में मुनाफ़ा बनता है। 20% का मतलब है हर 100 की बिक्री में 20 मुनाफ़ा।';

  @override
  String get glossRoe =>
      'इक्विटी पर रिटर्न: सालाना मुनाफ़ा ÷ मालिकों की पूँजी। दिखाता है कि प्रबंधन शेयरधारकों के पैसे का कितना अच्छा उपयोग करता है; लगभग 15% से ऊपर मज़बूत है।';

  @override
  String get glossRoa =>
      'संपत्ति पर रिटर्न: सालाना मुनाफ़ा ÷ कंपनी की सारी संपत्ति। एक ही उद्योग में तुलना करें।';

  @override
  String get glossDebtToEquity =>
      'ऋण ÷ मालिकों की पूँजी। ज़्यादा मतलब ज़्यादा उधार का पैसा: ब्याज दरें बढ़ने या कारोबार धीमा होने पर ज़्यादा जोखिम।';

  @override
  String get glossCurrentRatio =>
      'अल्पकालिक संपत्ति ÷ एक साल में चुकाने वाले बिल। 1 से ऊपर का मतलब है कि कंपनी नज़दीकी बिल चुका सकती है।';

  @override
  String get glossRevenueGrowth =>
      'एक साल पहले की तुलना में राजस्व कितना बढ़ा।';

  @override
  String get glossEpsGrowth =>
      'एक साल पहले की तुलना में प्रति शेयर मुनाफ़ा कितना बढ़ा।';

  @override
  String get glossDividendYield =>
      'सालाना लाभांश ÷ शेयर का भाव: आपको हर साल मिलने वाली नकद आय, चुकाई गई रकम के प्रतिशत के रूप में।';

  @override
  String get glossDividendPerShare => 'पिछले साल एक शेयर पर दिया गया लाभांश।';

  @override
  String get glossPayoutRatio =>
      'मुनाफ़े का वह हिस्सा जो लाभांश के रूप में बाँटा जाता है। 100% से ऊपर कंपनी कमाई से ज़्यादा बाँटती है, जो शायद ही टिकता है।';

  @override
  String get glossTitle => 'इसका क्या मतलब है?';

  @override
  String get watchNewsTitle => 'आपके शेयरों की खबरें';

  @override
  String get undo => 'पूर्ववत करें';

  @override
  String get watchSort => 'क्रमबद्ध करें';

  @override
  String get watchSortOwn => 'मेरा क्रम';

  @override
  String get watchSortGainers => 'सबसे ज़्यादा बढ़त वाले पहले';

  @override
  String get watchSortLosers => 'सबसे ज़्यादा गिरावट वाले पहले';

  @override
  String get watchSortName => 'टिकर के अनुसार (A–Z)';

  @override
  String get watchHint =>
      'क्रम बदलने के लिए हैंडल खींचें, हटाने के लिए बाईं ओर स्वाइप करें। रेखा पिछले 30 दिन दिखाती है।';

  @override
  String analysisReady(String symbol) {
    return '$symbol: आपका विश्लेषण तैयार है।';
  }

  @override
  String alertFromCost(String price) {
    return 'आपकी औसत ख़रीद कीमत ($price) से:';
  }

  @override
  String get briefTitle => 'आज आपके शेयरों के साथ';

  @override
  String get briefButton => 'आज का सारांश';

  @override
  String get briefHint =>
      'आज आपका पोर्टफ़ोलियो और पसंदीदा शेयर कैसे चले और ताज़ा ख़बरें उनके बारे में क्या कहती हैं, इसका छोटा AI सारांश। इसमें कोई विश्लेषण खर्च नहीं होता।';

  @override
  String get briefRefresh => 'अपडेट करें';

  @override
  String get sectionEarnings => 'तिमाही नतीजे';

  @override
  String earningsNext(String date) {
    return 'अगली रिपोर्ट: $date';
  }

  @override
  String get earningsExpected => 'अनुमानित EPS';

  @override
  String get earningsReported => 'रिपोर्ट किया गया EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'पिछली $total में से $beats तिमाहियों में EPS अनुमान के बराबर या उससे ऊपर',
      one: '1 में से $beats तिमाही में EPS अनुमान के बराबर या उससे ऊपर',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol के तिमाही नतीजे कल';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol के तिमाही नतीजे आज';
  }

  @override
  String get earningsRemindersTitle => 'तिमाही नतीजों के रिमाइंडर';

  @override
  String get earningsRemindersSubtitle =>
      'आपके पसंदीदा या पोर्टफ़ोलियो के शेयरों के तिमाही नतीजों से एक दिन पहले सूचना';

  @override
  String addAllToFavorites(int count) {
    return 'सभी पसंदीदा में जोड़ें ($count)';
  }

  @override
  String get portfolioImportPhoto => 'स्क्रीनशॉट से आयात करें';

  @override
  String get holdingsReading => 'आपकी पोज़िशन पढ़ी जा रही हैं…';

  @override
  String get holdingsReviewTitle => 'मिली पोज़िशन';

  @override
  String get holdingsReviewHint =>
      'जोड़ने से पहले संख्याएँ जाँच लें। कीमत प्रति शेयर आपकी औसत खरीद कीमत है, आज की कीमत नहीं।';

  @override
  String get holdingsNoPrice => 'छवि में कोई औसत खरीद कीमत नहीं है';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count पोज़िशन जोड़ें',
      one: '1 पोज़िशन जोड़ें',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'इस छवि में कोई शेयर पोज़िशन नहीं मिली। अपने ब्रोकर के पोज़िशन या होल्डिंग पेज का स्क्रीनशॉट आज़माएँ।';

  @override
  String get week52Range => '52-सप्ताह दायरा';

  @override
  String week52BelowHigh(String percent) {
    return '52-सप्ताह उच्च से $percent नीचे';
  }

  @override
  String get week52AtHigh => '52-सप्ताह उच्च पर';

  @override
  String get alertKindTrailing => 'शिखर से गिरे';

  @override
  String get alertTrailingPercent => 'शिखर से गिरावट (%)';

  @override
  String get alertTrailingHint =>
      'कीमत के साथ ऊपर चलता है: सेट करने के बाद के सबसे ऊँचे स्तर से कीमत इतनी गिरने पर सूचना देता है।';

  @override
  String alertDescTrailing(String percent) {
    return 'शिखर से $percent गिरावट';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'अब तक का शिखर: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol शिखर से $percent गिरा';
  }

  @override
  String get sectionInsiders => 'इनसाइडर लेनदेन';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count खरीद',
      one: '1 खरीद',
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
    return 'शुद्ध: $shares शेयर';
  }

  @override
  String get insiderBuy => 'खरीदे';

  @override
  String get insiderSell => 'बेचे';

  @override
  String get insiderHint =>
      'पिछले 90 दिनों में अधिकारियों और निदेशकों द्वारा खुले बाज़ार में की गई खरीद और बिक्री (SEC Form 4)। ऑप्शन का प्रयोग और शेयर अवॉर्ड नहीं गिने जाते।';

  @override
  String get insiderNone =>
      'पिछले 90 दिनों में खुले बाज़ार में कोई इनसाइडर खरीद या बिक्री नहीं हुई।';

  @override
  String get analystTrend => 'महीने-दर-महीने राय कैसे बदली';

  @override
  String get watchListAll => 'सभी';

  @override
  String get watchListNew => 'नई सूची';

  @override
  String get watchListName => 'सूची का नाम';

  @override
  String get watchListRename => 'सूची का नाम बदलें';

  @override
  String get watchListDelete => 'सूची हटाएँ';

  @override
  String get watchListAddTo => 'सूची में जोड़ें';

  @override
  String get watchListEmpty =>
      'इस सूची में अभी कोई शेयर नहीं है। जोड़ने के लिए शेयर के पास वाले सूची बटन पर टैप करें।';

  @override
  String get portfolioAskTitle => 'आपके पोर्टफ़ोलियो के बारे में सवाल';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'बैकअप';

  @override
  String get backupSave => 'बैकअप सेव करें';

  @override
  String get backupSaveHint =>
      'आपके पसंदीदा, सूचियाँ, पोर्टफ़ोलियो, अलर्ट और नोट्स एक फ़ाइल में।';

  @override
  String get backupRestore => 'बैकअप से रीस्टोर करें';

  @override
  String get backupRestoreHint =>
      'फ़ाइल में जो है उसे जोड़ता है; आपके अभी के डेटा में से कुछ भी नहीं हटता।';

  @override
  String get backupRestored => 'बैकअप रीस्टोर हो गया।';

  @override
  String get backupInvalid => 'यह फ़ाइल WhatStock बैकअप नहीं है।';

  @override
  String get allocationPositions => 'शेयर';

  @override
  String get allocationSectors => 'सेक्टर';

  @override
  String get allocationCurrencies => 'मुद्राएँ';

  @override
  String get compareReturn1y => '1 साल का रिटर्न';

  @override
  String get compareFromHigh => '52-सप्ताह उच्च से दूरी';

  @override
  String get briefAutoTitle => 'हर सुबह दैनिक सारांश';

  @override
  String get briefAutoSubtitle =>
      'ऐप चलते रहने पर सुबह 7:00 बजे के बाद “आज आपके शेयरों के साथ” अपने-आप तैयार हो जाता है; कंप्यूटर पर एक सूचना आपको बताती है। यह आपके दैनिक सवालों की सीमा से जाता है, कोई विश्लेषण खर्च नहीं होता।';

  @override
  String get targetsButton => 'लक्ष्य आवंटन';

  @override
  String get targetsTitle => 'लक्ष्य आवंटन';

  @override
  String get targetsHint =>
      'तय करें कि पोर्टफ़ोलियो में हर शेयर का कितना हिस्सा होना चाहिए। लक्ष्य न हो तो फ़ील्ड खाली छोड़ दें। इसके बाद ऐप दिखाएगा कि वहाँ पहुँचने के लिए क्या खरीदना या बेचना है।';

  @override
  String targetsSum(String percent) {
    return 'कुल: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'खरीदें ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'बेचें ≈ $amount';
  }

  @override
  String get rebalanceOk => 'लक्ष्य पर';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol ने अनुमानित EPS को पार किया';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol अनुमानित EPS से चूका';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'रिपोर्ट किया गया EPS $actual, अनुमानित $estimate';
  }

  @override
  String get newsExplain => 'इसका क्या मतलब है?';

  @override
  String get watchAlertAll => 'बड़े दैनिक बदलाव पर अलर्ट';

  @override
  String get watchAlertAllHint =>
      'इस सूची के हर शेयर के लिए कीमत अलर्ट: एक दिन में इतना ऊपर या नीचे हिलने पर सूचित करेगा। जिन शेयरों पर पहले से अलर्ट है, उनका वही रहेगा।';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count अलर्ट सेट किए गए',
      one: '1 अलर्ट सेट किया गया',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'प्राप्त लाभ निर्यात करें (CSV)';

  @override
  String get portfolioAnnualReturn => 'वार्षिक रिटर्न';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / वर्ष';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'धन-भारित वार्षिक रिटर्न (XIRR): यह ध्यान में रखता है कि आपने कब खरीदा और बेचा, ताकि बाद में जोड़ा गया पैसा इसे न बिगाड़े। आपकी पहली खरीदारी कम से कम एक साल पुरानी होने पर दिखाया जाता है; लाभांश शामिल नहीं हैं।';

  @override
  String get eventsAddToCalendar => 'कैलेंडर में जोड़ें (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'पोर्टफ़ोलियो अलर्ट';

  @override
  String get portfolioMoveAlertSubtitle =>
      'जब आपका पूरा पोर्टफ़ोलियो एक दिन में इतना हिले, तब सूचना।';

  @override
  String get portfolioMoveAlertOff => 'बंद';

  @override
  String portfolioMoveUp(String percent) {
    return 'आज आपका पोर्टफ़ोलियो $percent ऊपर है';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'आज आपका पोर्टफ़ोलियो $percent नीचे है';
  }

  @override
  String get whatIfTitle => 'अगर आपने निवेश किया होता?';

  @override
  String get whatIfAmount => 'राशि';

  @override
  String whatIfResult(String amount, String period) {
    return '$period पहले निवेश किए गए $amount की आज कीमत होती';
  }

  @override
  String get whatIfNote =>
      'सिर्फ़ शेयर की कीमत पर आधारित: लाभांश, शुल्क और कर शामिल नहीं हैं। पिछला रिटर्न भविष्य के रिटर्न का अनुमान नहीं देता।';

  @override
  String get watchShare => 'सूची शेयर करें';

  @override
  String get watchImport => 'टिकर जोड़ें';

  @override
  String get watchImportHint =>
      'कॉमा, स्पेस या नई लाइन से अलग किए गए टिकर पेस्ट करें – जैसे कोई सूची जो किसी ने आपके साथ शेयर की हो।';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count स्टॉक जोड़े गए',
      one: '1 स्टॉक जोड़ा गया',
      zero: 'कोई नया स्टॉक नहीं',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'सबसे बड़े पहले';

  @override
  String get positionsSortGain => 'सबसे ज़्यादा कुल रिटर्न वाले पहले';

  @override
  String get positionsSortToday => 'आज के सबसे अच्छे पहले';

  @override
  String get chartMyBuys => 'आपकी खरीदारी';

  @override
  String get chartMySells => 'आपकी बिक्री';

  @override
  String get shortcutsTitle => 'कीबोर्ड शॉर्टकट';

  @override
  String usMarketOpen(String time) {
    return 'अमेरिकी बाज़ार खुला · $time में बंद होगा';
  }

  @override
  String usMarketClosed(String time) {
    return 'अमेरिकी बाज़ार बंद · $time में खुलेगा';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes मि॰';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours घं॰ $minutes मि॰';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days दि॰ $hours घं॰';
  }

  @override
  String get portfolioGoalSet => 'लक्ष्य तय करें';

  @override
  String get portfolioGoalTitle => 'पोर्टफ़ोलियो लक्ष्य';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · लक्ष्य: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'लक्ष्य पूरा हुआ: $amount';
  }

  @override
  String get portfolioGoalRemove => 'लक्ष्य हटाएँ';

  @override
  String get alertEdit => 'अलर्ट संपादित करें';

  @override
  String get positionOpenLots => 'अभी भी आपके पास (सबसे पुरानी पहले)';

  @override
  String get lotRemoved => 'लेन-देन हटाया गया';

  @override
  String get alertDeleted => 'अलर्ट हटाया गया';

  @override
  String get alertsClearTriggered => 'ट्रिगर हुए अलर्ट हटाएँ';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count अलर्ट हटाए गए',
      one: '1 अलर्ट हटाया गया',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'होम स्क्रीन';

  @override
  String get allocationCountries => 'देश';

  @override
  String get newsExplainNoteResearch =>
      'AI व्याख्या: यह वेब पर तथ्यों की जाँच करता है, लेख खोलता है और आकलन करता है कि स्रोत कितना भरोसेमंद है। यह निवेश सलाह नहीं है। यह आपके दैनिक सवालों की सीमा से जाता है, कोई विश्लेषण खर्च नहीं होता।';

  @override
  String get sourceOfficial => 'आधिकारिक';

  @override
  String get sourcePressRelease => 'प्रेस विज्ञप्ति';

  @override
  String get sourceMajorNews => 'बड़ा मीडिया';

  @override
  String get sourceOpinion => 'राय';

  @override
  String get earningsSummaryButton => 'ताज़ा रिपोर्ट में क्या था?';

  @override
  String get earningsSummaryNote =>
      'कंपनी के नतीजों की घोषणा और वेब पर मिली मीडिया कवरेज का AI सारांश। यह निवेश सलाह नहीं है। यह आपके दैनिक सवालों की सीमा से जाता है, कोई विश्लेषण खर्च नहीं होता।';

  @override
  String get compareLastSurprise => 'पिछली तिमाही EPS बनाम अनुमानित';

  @override
  String get compareNextReport => 'अगली रिपोर्ट';

  @override
  String get resolvingDescription =>
      'पता लगाया जा रहा है कि आपका मतलब कौन सा शेयर है…';

  @override
  String get instrumentTitle => 'इस इंस्ट्रूमेंट के बारे में';

  @override
  String get instrumentHint =>
      'इस सिंबल के लिए कोई कंपनी प्रोफ़ाइल नहीं है – यह कोई ETF, फ़ंड या डिपॉज़िटरी रिसीट हो सकता है। AI से पूछें कि यह क्या है, इसमें क्या है और इसकी लागत क्या है।';

  @override
  String get instrumentAsk => 'यह क्या है?';

  @override
  String get instrumentNote =>
      'जारीकर्ता के फ़ंड पेज और वेब पर मिली वित्तीय साइटों से AI की व्याख्या। यह निवेश सलाह नहीं है। यह आपके दैनिक सवालों की सीमा से जाता है, कोई विश्लेषण खर्च नहीं होता।';

  @override
  String suggestAskAi(String query) {
    return 'AI से पूछें: “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return '$symbols के लिए वर्तमान कीमत उपलब्ध नहीं है।';
  }

  @override
  String get eventsRecentResults => 'हाल में घोषित नतीजे';

  @override
  String get saveToNotes => 'मेरे नोट्स में सेव करें';

  @override
  String get savedToNotes => 'आपके नोट्स में सेव हो गया';
}
