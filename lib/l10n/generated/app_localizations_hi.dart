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
  String get askButton => 'Ask about this analysis';

  @override
  String askTitle(String symbol) {
    return 'Questions about $symbol';
  }

  @override
  String get askIntro =>
      'Ask anything about the analysis: what a risk means, what would change the outlook, how a number was worked out. The answers are based on this analysis and are not investment advice.';

  @override
  String get askHint => 'Ask a question…';

  @override
  String get askSend => 'Send';

  @override
  String get askThinking => 'Thinking…';

  @override
  String get askSuggest1 => 'What is the biggest risk?';

  @override
  String get askSuggest2 => 'What would change the outlook?';

  @override
  String get askSuggest3 => 'Explain it in simple terms';

  @override
  String get askMaxReached =>
      'That was the last question for this analysis. Make a new analysis to ask more.';

  @override
  String get errAskLimit =>
      'You have reached today\'s limit for questions. Please try again tomorrow.';
}
