// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Maithili (`mai`).
class AppLocalizationsMai extends AppLocalizations {
  AppLocalizationsMai([String locale = 'mai']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'कोनो शेयरक फोटो खीचू आ ओकर बारेमे सभ किछु जानू।';

  @override
  String get homeHint =>
      'शेयर प्रमाणपत्र, ब्रोकरेज ऐपक स्क्रीन, अखबार वा कंपनीक लोगो – किछुओ जाहिसँ कोनो शेयरक पहिचान होइत हो।';

  @override
  String get takePhoto => 'फोटो खीचू';

  @override
  String get chooseFromGallery => 'गैलरीसँ चुनू';

  @override
  String get chooseImage => 'चित्र चुनू';

  @override
  String get enterTickerManually => 'टिकर स्वयं लिखू';

  @override
  String get tickerInputLabel => 'टिकर सिंबल';

  @override
  String get tickerInputHint => 'जेना AAPL';

  @override
  String get lookUp => 'खोजू';

  @override
  String demoModeBanner(String symbols) {
    return 'डेमो मोड – कोनो मार्केट डेटा की कॉन्फ़िगर नहि अछि। नमूना डेटा एहि लेल उपलब्ध अछि: $symbols।';
  }

  @override
  String get recognizing => 'चित्रक विश्लेषण भऽ रहल अछि…';

  @override
  String get loadingData => 'डेटा लोड भऽ रहल अछि…';

  @override
  String get noCandidatesTitle => 'कोनो शेयर नहि चिन्हल गेल';

  @override
  String get noCandidatesBody =>
      'हम सभ एहि चित्रमे कोनो शेयर नहि चिन्हि सकलहुँ। बेसी साफ फोटो खीचू, वा टिकर स्वयं लिखू।';

  @override
  String get whatWeSaw => 'हम सभ की देखलहुँ';

  @override
  String get chooseCandidateTitle => 'अहाँ कोन शेयरक बात कऽ रहल छलहुँ?';

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
  String get about => 'ऐपक बारेमे';

  @override
  String get disclaimer =>
      'ई ऐप केवल जानकारी दैत अछि आ ई निवेशक सलाह नहि अछि। डेटामे देरी वा गलती भऽ सकैत अछि।';

  @override
  String dataSource(String source) {
    return 'डेटा स्रोत: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'पहिचान: $source';
  }

  @override
  String get retry => 'फेरसँ प्रयास करू';

  @override
  String get cancel => 'रद्द करू';

  @override
  String get ok => 'ठीक अछि';

  @override
  String get close => 'बंद करू';

  @override
  String get errorGeneric => 'किछु गड़बड़ भऽ गेल।';

  @override
  String get errorSectionUnavailable => 'ई खंड लोड नहि भऽ सकल।';

  @override
  String get notAvailable => 'उपलब्ध नहि';

  @override
  String get sectionIdentity => 'पहिचान';

  @override
  String get sectionPrice => 'दाम';

  @override
  String get sectionValuation => 'मूल्यांकन';

  @override
  String get sectionFinancials => 'वित्तीय आँकड़ा';

  @override
  String get sectionDividend => 'लाभांश';

  @override
  String get sectionProfile => 'कंपनी प्रोफ़ाइल';

  @override
  String get sectionAnalysts => 'विश्लेषक रेटिंग';

  @override
  String get sectionNews => 'समाचार';

  @override
  String get sectionRecognition => 'पहिचानक विवरण';

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
  String get labelLastPrice => 'अंतिम दाम';

  @override
  String get labelChange => 'बदलाव';

  @override
  String get labelOpen => 'ओपन';

  @override
  String get labelDayHigh => 'दिनक उच्चतम';

  @override
  String get labelDayLow => 'दिनक निम्नतम';

  @override
  String get labelPreviousClose => 'पछिला क्लोज';

  @override
  String get labelWeek52High => '52-सप्ताहक उच्चतम';

  @override
  String get labelWeek52Low => '52-सप्ताहक निम्नतम';

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
  String get labelEvToFcf => 'EV / फ्री कैश फ्लो';

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
  String get labelYieldOnCost => 'लागत पर यील्ड';

  @override
  String get labelDividendGrowth5y => 'लाभांश वृद्धि (5 साल)';

  @override
  String get dividendNone => 'पछिला 12 मासमे कोनो लाभांश नहि देल गेल।';

  @override
  String get dividendOnYourShares => 'अहाँक शेयर पर, सालाना';

  @override
  String get labelConsensus => 'सर्वसम्मति';

  @override
  String get ratingStrongBuy => 'प्रबल खरीद';

  @override
  String get ratingBuy => 'खरीद';

  @override
  String get ratingHold => 'होल्ड';

  @override
  String get ratingSell => 'बिक्री';

  @override
  String get ratingStrongSell => 'प्रबल बिक्री';

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
  String get noNews => 'हालक कोनो समाचार नहि।';

  @override
  String get openArticle => 'लेख खोलू';

  @override
  String get openLinkFailed => 'लिंक नहि खुजि सकल।';

  @override
  String get recognitionSummary => 'सारांश';

  @override
  String get recognitionEvidence => 'हमरा सभकेँ एना किएक लगैत अछि';

  @override
  String get recognitionRawText => 'चित्रसँ पढ़ल गेल पाठ';

  @override
  String get errMissingAnthropicKey =>
      'चित्र पहिचान कॉन्फ़िगर नहि अछि (ANTHROPIC_API_KEY नहि अछि)। टिकर स्वयं लिखू।';

  @override
  String get errRecognitionUnreachable =>
      'पहिचान सेवासँ संपर्क नहि भऽ सकल। अपन इंटरनेट कनेक्शन जाँचू।';

  @override
  String errRecognitionHttp(String status) {
    return 'पहिचान सेवा एकटा त्रुटि लौटौलक (HTTP $status)।';
  }

  @override
  String get errRecognitionRefused =>
      'पहिचान सेवा एहि चित्रकेँ प्रोसेस नहि कऽ सकल।';

  @override
  String get errRecognitionTruncated =>
      'पहिचानक उत्तर अधूरा रहि गेल। कृपया फेरसँ प्रयास करू।';

  @override
  String get errRecognitionBadResponse => 'पहिचान सेवासँ अप्रत्याशित उत्तर।';

  @override
  String get errRecognitionEmpty => 'पहिचान सेवा खाली उत्तर लौटौलक।';

  @override
  String get errMissingFinnhubKey =>
      'मार्केट डेटा कॉन्फ़िगर नहि अछि (FINNHUB_API_KEY नहि अछि)।';

  @override
  String get errMarketUnreachable =>
      'मार्केट डेटा सेवासँ संपर्क नहि भऽ सकल। अपन इंटरनेट कनेक्शन जाँचू।';

  @override
  String get errMarketRateLimited =>
      'मार्केट डेटा सेवाकेँ बहुत बेसी अनुरोध पठाओल गेल। कृपया एक मिनट प्रतीक्षा करू।';

  @override
  String errMarketHttp(String status) {
    return 'मार्केट डेटा सेवा एकटा त्रुटि लौटौलक (HTTP $status)।';
  }

  @override
  String get errMarketBadResponse => 'मार्केट डेटा सेवासँ अप्रत्याशित उत्तर।';

  @override
  String errNoQuote(String symbol) {
    return '$symbol लेल कोनो दामक डेटा नहि भेटल।';
  }

  @override
  String errNoProfile(String symbol) {
    return '$symbol लेल कोनो कंपनी प्रोफ़ाइल नहि भेटल।';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'डेमो मोड केवल $symbols केँ समर्थन करैत अछि। लाइव डेटा लेल FINNHUB_API_KEY जोड़ू।';
  }

  @override
  String errUnknown(String detail) {
    return 'किछु गड़बड़ भऽ गेल: $detail';
  }

  @override
  String get newSearch => 'नव खोज';

  @override
  String get recentSearches => 'हालक';

  @override
  String get noRecentSearches => 'एखन धरि कोनो हालक खोज नहि।';

  @override
  String get clearRecent => 'हालक खोज मेटाउ';

  @override
  String get greeting => 'आइ कोन शेयर देखी?';

  @override
  String get searchHint => 'टिकर वा कंपनीक नाम';

  @override
  String get attachImage => 'चित्र संलग्न करू';

  @override
  String get searchResultsTitle => 'खोजक परिणाम';

  @override
  String errNoResults(String query) {
    return '“$query” लेल कोनो शेयर नहि भेटल।';
  }

  @override
  String get quickBarHint => 'टिकर वा कंपनीक नाम टाइप करू…';

  @override
  String get openFullWindow => 'विंडो खोलू';

  @override
  String hotkeyHint(String shortcut) {
    return 'कतहुसँ WhatStock खोलबाक लेल $shortcut दबाउ।';
  }

  @override
  String get trayOpen => 'WhatStock खोलू';

  @override
  String get trayQuickSearch => 'त्वरित खोज';

  @override
  String get trayQuit => 'बाहर निकलू';

  @override
  String get appearance => 'रूप-रंग';

  @override
  String get themeSystem => 'सिस्टम';

  @override
  String get themeDark => 'डार्क';

  @override
  String get themeLight => 'लाइट';

  @override
  String get back => 'पाछाँ';

  @override
  String get aiSectionTitle => 'AI विश्लेषण';

  @override
  String get aiIntro =>
      'AI द्वारा लिखल विस्तृत अवलोकन: हालक समाचारक सारांश, व्यवसाय, मजगूती, जोखिम आ नुकायल कारक, मूल्यांकन, मनोवैज्ञानिक, सामाजिक, तकनीकी आ समष्टि-आर्थिक दृष्टिकोणसँ परिदृश्यक संग दामक पूर्वानुमान, आ कोन बात पर नजरि राखी।';

  @override
  String get aiGenerate => 'विश्लेषण बनाउ';

  @override
  String get aiRegenerate => 'फेरसँ बनाउ';

  @override
  String get aiGenerating =>
      'विश्लेषण तैयार भऽ रहल अछि… एहिमे एक-दू मिनट लागि सकैत अछि।';

  @override
  String get aiSources => 'स्रोत';

  @override
  String aiGeneratedAt(String time) {
    return 'बनाओल गेल $time';
  }

  @override
  String get aiDisclaimer =>
      'सार्वजनिक डेटा आ हालक समाचार पर आधारित AI-निर्मित विश्लेषण। एहिमे त्रुटि भऽ सकैत अछि वा ई पुरान भऽ सकैत अछि, आ ई निवेशक सलाह नहि अछि।';

  @override
  String get errAiNotConfigured =>
      'AI विश्लेषण कॉन्फ़िगर नहि अछि (ANTHROPIC_API_KEY नहि अछि)।';

  @override
  String get errAiUnreachable =>
      'AI सेवासँ संपर्क नहि भऽ सकल। अपन इंटरनेट कनेक्शन जाँचू।';

  @override
  String errAiHttp(String status) {
    return 'AI सेवा एकटा त्रुटि लौटौलक (HTTP $status)।';
  }

  @override
  String get errAiRefused => 'AI सेवा एहि शेयरक विश्लेषण करबासँ मना कऽ देलक।';

  @override
  String get errAiBadResponse => 'AI सेवासँ अप्रत्याशित उत्तर।';

  @override
  String get sectionChart => 'दामक चार्ट';

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
      'वर्तमान डेटा स्रोतसँ दामक इतिहास उपलब्ध नहि अछि।';

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
  String get labelTotalLiabilities => 'कुल देनदारी';

  @override
  String get labelEquity => 'शेयरधारकक इक्विटी';

  @override
  String get labelOperatingCashFlow => 'परिचालन कैश फ्लो';

  @override
  String get statementsUnavailable =>
      'एहि शेयर लेल प्रकाशित वित्तीय विवरण उपलब्ध नहि अछि।';

  @override
  String get launchAtLogin => 'लॉगिन पर शुरू करू';

  @override
  String get hotkeyLabel => 'ग्लोबल शॉर्टकट';

  @override
  String get hotkeyRecordHint => 'एतय क्लिक करू, फेर नव कुंजी संयोजन दबाउ';

  @override
  String get hotkeyReset => 'डिफ़ॉल्ट पर रीसेट करू';

  @override
  String get pasteImage => 'क्लिपबोर्डसँ चित्र पेस्ट करू';

  @override
  String get errClipboardNoImage => 'क्लिपबोर्डमे कोनो चित्र नहि अछि।';

  @override
  String get favorites => 'पसंदीदा';

  @override
  String get addToFavorites => 'पसंदीदामे जोड़ू';

  @override
  String get removeFromFavorites => 'पसंदीदासँ हटाउ';

  @override
  String get noFavorites =>
      'एखन धरि कोनो पसंदीदा नहि। जोड़बाक लेल कोनो शेयर पर तारा टैप करू।';

  @override
  String get displayCurrency => 'प्रदर्शन मुद्रा';

  @override
  String get displayCurrencyNone => 'केवल शेयरक अपन मुद्रा';

  @override
  String labelConverted(String currency) {
    return '≈ $currencyमे';
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
  String get autoUpdate => 'अपडेट स्वतः इंस्टॉल करू';

  @override
  String get checkForUpdates => 'अपडेट जाँचू';

  @override
  String get updateChecking => 'अपडेट जाँचल जा रहल अछि…';

  @override
  String get updateUpToDate => 'अहाँ नवीनतम संस्करण पर छी।';

  @override
  String updateAvailable(String version) {
    return 'संस्करण $version उपलब्ध अछि।';
  }

  @override
  String get updateDownloading => 'अपडेट बैकग्राउंडमे डाउनलोड भऽ रहल अछि…';

  @override
  String get updateDownloaded =>
      'अपडेट तैयार अछि। इंस्टॉल करबाक लेल रीस्टार्ट करू।';

  @override
  String get updateNow => 'अपडेट करू';

  @override
  String get restartNow => 'रीस्टार्ट करू';

  @override
  String get updatesViaStore => 'अपडेट ऐप स्टोरक माध्यमसँ स्वतः अबैत अछि।';

  @override
  String get updateCheckFailed => 'अपडेट नहि जाँचल जा सकल।';

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
  String get planNone => 'कोनो सक्रिय प्लान नहि';

  @override
  String planAnalysesPerMonth(int count) {
    return 'प्रति मास $count विश्लेषण';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$count विश्लेषणक संग $days दिनक निःशुल्क ट्रायल';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'ट्रायलक $days दिन बाँकी',
      one: 'ट्रायलक 1 दिन बाँकी',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'अहाँक निःशुल्क ट्रायल समाप्त भऽ गेल। विश्लेषण जारी रखबाक लेल कोनो प्लान चुनू।';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'एहि अवधिमे $total मेसँ $remaining विश्लेषण बाँकी';
  }

  @override
  String extraCredits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count अतिरिक्त विश्लेषण',
      one: '$count अतिरिक्त विश्लेषण',
    );
    return '$_temp0';
  }

  @override
  String renewsOn(String date) {
    return '$date केँ नवीकरण';
  }

  @override
  String get choosePlan => 'प्लान चुनू';

  @override
  String get currentPlan => 'वर्तमान प्लान';

  @override
  String get subscribe => 'सदस्यता लिअ';

  @override
  String get perMonth => '/ मास';

  @override
  String get extraPacksTitle => 'आओर चाही? अतिरिक्त विश्लेषण कीनू';

  @override
  String get extraPacksHint =>
      'अतिरिक्त विश्लेषण कहियो समाप्त नहि होइत अछि आ अहाँक मासिक कोटाक बाद उपयोग होइत अछि।';

  @override
  String get buy => 'कीनू';

  @override
  String get restorePurchases => 'खरीदारी पुनर्स्थापित करू';

  @override
  String get manageSubscription => 'सदस्यता प्रबंधित करू';

  @override
  String get purchaseSuccess => 'धन्यवाद! अहाँक खरीदारी सक्रिय अछि।';

  @override
  String get purchasePending => 'खरीदारी लंबित अछि…';

  @override
  String get purchaseFailed => 'खरीदारी पूरा नहि भऽ सकल।';

  @override
  String get purchaseCanceled => 'खरीदारी रद्द भऽ गेल।';

  @override
  String get billingUnavailable =>
      'एहि प्लेटफ़ॉर्म पर खरीदारी एखन उपलब्ध नहि अछि। अपन फोन वा Mac पर सदस्यता लिअ; अहाँक प्लान सभ डिवाइस पर काज करत।';

  @override
  String get errQuotaExceeded =>
      'एहि अवधि लेल अहाँ लग कोनो विश्लेषण बाँकी नहि अछि। अपन प्लान अपग्रेड करू वा अतिरिक्त विश्लेषण कीनू।';

  @override
  String get errTrialExpired =>
      'अहाँक निःशुल्क ट्रायल समाप्त भऽ गेल। जारी रखबाक लेल कोनो प्लान चुनू।';

  @override
  String get errNoPlan => 'AI विश्लेषण लेल एकटा सक्रिय प्लान आवश्यक अछि।';

  @override
  String get viewPlans => 'प्लान देखू';

  @override
  String get usageTitle => 'उपयोग';

  @override
  String get demoPurchaseNote =>
      'डेमो बिलिंग: एहि प्लेटफ़ॉर्म पर खरीदारी सिमुलेट कएल जाइत अछि।';

  @override
  String get mostPopular => 'सभसँ लोकप्रिय';

  @override
  String get bestValue => 'सर्वोत्तम मूल्य';

  @override
  String get planFeaturesCommon =>
      'फोटो पहिचान, लाइव डेटा, चार्ट, पसंदीदा आ सभ 120 भाषा हरेक प्लानमे शामिल अछि। कोटा AI विश्लेषण पर लागू होइत अछि।';

  @override
  String get searchLanguages => 'भाषा खोजू…';

  @override
  String get noLanguageMatch => 'कोनो भाषा मेल नहि खाइत अछि।';

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
  String get aiDepthBriefDesc => 'जरूरी बात, जल्दी।';

  @override
  String get aiDepthStandardDesc => 'हरेक खंडक संग पूरा रिपोर्ट।';

  @override
  String get aiDepthDeepDesc =>
      'बेसी वेब खोज, समकक्ष कंपनीसँ तुलना आ गहींर विवरण।';

  @override
  String aiDepthWords(String min, String max) {
    return 'लगभग $min–$max शब्द';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count विश्लेषण खर्च होइत अछि',
      one: '1 विश्लेषण खर्च होइत अछि',
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
  String get aiReaderBeginnerDesc =>
      'सरल भाषा; हरेक तकनीकी शब्द बुझाओल जाइत अछि।';

  @override
  String get aiReaderExperiencedDesc => 'मानक वित्तीय शब्दावलीक संग सघन पाठ।';

  @override
  String get aiCounterArgument => 'सभसँ मजगूत प्रतितर्क';

  @override
  String get aiCounterArgumentDesc =>
      'सारांश सदिखन अपन निष्कर्षक विरुद्ध सभसँ मजगूत तर्कक संग समाप्त होइत अछि।';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'अहाँक प्लानमे प्रति विश्लेषण अधिकतम $count वेब खोज',
      one: 'अहाँक प्लानमे प्रति विश्लेषण अधिकतम 1 वेब खोज',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'प्लानक अनुसार मानक लंबाई: सामान्य $normal, Pro $pro, Max $max, Ultra $ultra। संक्षिप्तमे 2 कम, विस्तृतमे 2 बेसी।';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'अधिकतम $count वेब खोज',
      one: 'अधिकतम 1 वेब खोज',
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
    return 'एहि लंबाई लेल $needed विश्लेषण चाही, मुदा केवल $left बाँकी अछि। सेटिंग्समे छोट लंबाई चुनू वा आओर विश्लेषण लिअ।';
  }

  @override
  String get outlookMarketMood => 'बजारक मूड';

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
  String get scenarioBull => 'तेजीक परिदृश्य';

  @override
  String get scenarioBase => 'आधार परिदृश्य';

  @override
  String get scenarioBear => 'मंदीक परिदृश्य';

  @override
  String outlookCurrentPrice(String price) {
    return 'वर्तमान दाम: $price';
  }

  @override
  String get outlookKeyLevels => 'प्रमुख स्तर';

  @override
  String get keyLevelSupport => 'सपोर्ट';

  @override
  String get keyLevelResistance => 'रेजिस्टेंस';

  @override
  String get keyLevelAnchor => 'एंकर स्तर';

  @override
  String get upcomingEvents => 'आगामी घटना';

  @override
  String get outlookChartNote =>
      'सांकेतिक दायरा; संभावना मोटामोटी अनुमान अछि, भविष्यवाणी नहि।';

  @override
  String get accountTitle => 'खाता';

  @override
  String get signIn => 'साइन इन करू';

  @override
  String get signOut => 'साइन आउट करू';

  @override
  String get notSignedIn => 'साइन इन नहि अछि';

  @override
  String get accountBenefit =>
      'साइन इन करू, जाहिसँ अहाँक सदस्यता अहाँक सभ डिवाइस पर काज करय।';

  @override
  String get accountSyncedNote =>
      'अहाँक सदस्यता आ बाँकी विश्लेषण हरेक डिवाइस पर एके रहैत अछि।';

  @override
  String get signInTitle => 'WhatStock मे साइन इन करू';

  @override
  String get emailLabel => 'ईमेल पता';

  @override
  String get continueWithEmail => 'ईमेलसँ आगाँ बढ़ू';

  @override
  String codeSentTo(String email) {
    return 'हम सभ $email पर 6 अंकक कोड पठौलहुँ अछि। ई 10 मिनट धरि मान्य अछि।';
  }

  @override
  String get codeLabel => 'साइन-इन कोड';

  @override
  String get resendCode => 'नव कोड पठाउ';

  @override
  String get useDifferentEmail => 'दोसर ईमेल उपयोग करू';

  @override
  String get errInvalidCode => 'कोड गलत अछि वा ओकर समय-सीमा समाप्त भऽ गेल अछि।';

  @override
  String get errInvalidEmail => 'कृपया एकटा मान्य ईमेल पता लिखू।';

  @override
  String get errSignInFailed =>
      'साइन इन नहि भऽ सकल। अपन कनेक्शन जाँचू आ फेरसँ प्रयास करू।';

  @override
  String get checkoutWaiting =>
      'अपन ब्राउज़रमे भुगतान पूरा करू। पूरा होइते ऐप अपनेआप अपडेट भऽ जाएत।';

  @override
  String get paymentViaStripe =>
      'Stripe क माध्यमसँ अहाँक ब्राउज़रमे सुरक्षित भुगतान। कखनो रद्द करू।';

  @override
  String get paymentViaStore =>
      'भुगतान अहाँक App Store वा Google Play खातासँ होइत अछि। स्टोर सेटिंग्समे कखनो रद्द करू।';

  @override
  String get keySpace => 'स्पेस';

  @override
  String get doubleOptionTitle => 'Option दू बेर दबाउ';

  @override
  String get doubleOptionSubtitle =>
      'Option कुंजी जल्दी-जल्दी दू बेर दबेलासँ सेहो WhatStock खुजि जाइत अछि।';

  @override
  String get doubleOptionPermission =>
      'दोसरो ऐपमे ई काज करय, तकर लेल सिस्टम सेटिंग्स → गोपनीयता आ सुरक्षा → इनपुट मॉनिटरिंगमे WhatStock केँ अनुमति दिअ, फेर ऐप दोबारा खोलू।';

  @override
  String get openSystemSettings => 'सिस्टम सेटिंग्स खोलू';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'कतहुसँ WhatStock खोलबाक लेल $shortcut दबाउ वा Option दू बेर दबाउ।';
  }

  @override
  String get scenarioMostLikely => 'सभसँ संभावित';

  @override
  String get longTermToday => 'आइ';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years बरख',
      one: '1 बरख',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range प्रति बरख';
  }

  @override
  String longTermLikely(String price) {
    return 'सभसँ संभावित $price';
  }

  @override
  String get confidenceLow => 'कम भरोस';

  @override
  String get confidenceMedium => 'मध्यम भरोस';

  @override
  String get confidenceHigh => 'उच्च भरोस';

  @override
  String get longTermNote =>
      'दीर्घकालिक दायरा बताओल गेल मान्यता पर आधारित अछि आ समयक संग चौड़ा होइत जाइत अछि। दाममे लाभांश शामिल नहि अछि। मोटामोटी अनुमान अछि, भविष्यवाणी नहि।';

  @override
  String get portfolio => 'पोर्टफ़ोलियो';

  @override
  String get portfolioEmpty =>
      'एतय एखन किछु नहि अछि। कोनो शेयर खोलू आ अपन होल्डिंग पर नजरि रखबाक लेल “पोर्टफ़ोलियोमे जोड़ू” टैप करू।';

  @override
  String get portfolioLocalNote =>
      'एही डिवाइस पर, आ साइन इन रहला पर अहाँक खातामे सेहो सहेजल जाइत अछि। कुल योग ECB क संदर्भ दर पर बदलल जाइत अछि; दाममे देरी भऽ सकैत अछि।';

  @override
  String get addToPortfolio => 'पोर्टफ़ोलियोमे जोड़ू';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol जोड़ू';
  }

  @override
  String get portfolioQuantity => 'शेयरक संख्या';

  @override
  String portfolioBuyPrice(String currency) {
    return 'प्रति शेयर दाम ($currency)';
  }

  @override
  String get portfolioBuyDate => 'खरीदक तिथि';

  @override
  String get portfolioAdd => 'जोड़ू';

  @override
  String get portfolioInvalidNumber => 'शून्यसँ बेसी संख्या लिखू।';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol अहाँक पोर्टफ़ोलियोमे जोड़ल गेल।';
  }

  @override
  String get portfolioTotalValue => 'कुल मूल्य';

  @override
  String get portfolioToday => 'आइ';

  @override
  String get portfolioGainLoss => 'लाभ/हानि';

  @override
  String homeDividendsThisYear(String amount) {
    return 'एहि साल डिविडेंड: $amount';
  }

  @override
  String get portfolioInvested => 'निवेश';

  @override
  String get portfolioAllocation => 'आवंटन';

  @override
  String get portfolioPositions => 'पोजीशन';

  @override
  String portfolioAvgCost(String price) {
    return 'औसत लागत $price';
  }

  @override
  String get portfolioYourPosition => 'अहाँक पोजीशन';

  @override
  String get portfolioPurchases => 'खरीदारी';

  @override
  String get portfolioRemove => 'हटाउ';

  @override
  String get portfolioExcluded =>
      'जाहि पोजीशनक दाम वा विनिमय दर उपलब्ध नहि अछि, से कुल योगमे शामिल नहि अछि।';

  @override
  String get priceAlerts => 'दाम अलर्ट';

  @override
  String get setPriceAlert => 'दाम अलर्ट सेट करू';

  @override
  String alertDialogTitle(String symbol) {
    return 'दाम अलर्ट · $symbol';
  }

  @override
  String get alertKindAbove => 'एहिसँ ऊपर जाय';

  @override
  String get alertKindBelow => 'एहिसँ नीचाँ आबय';

  @override
  String get alertKindMove => 'एक दिनमे बहुत उतार-चढ़ाव हो';

  @override
  String alertTargetPrice(String currency) {
    return 'दाम ($currency)';
  }

  @override
  String get alertMovePercent => 'दैनिक बदलाव (%)';

  @override
  String get alertAlreadyMet => 'दाम पहिनहिसँ एहि स्तरसँ आगाँ अछि।';

  @override
  String get alertSave => 'अलर्ट सेट करू';

  @override
  String alertCreated(String symbol) {
    return '$symbol लेल अलर्ट सेट भऽ गेल।';
  }

  @override
  String get alertsEmpty =>
      'एखन धरि कोनो दाम अलर्ट नहि। कोनो शेयर खोलू आ अलर्ट सेट करबाक लेल घंटी टैप करू।';

  @override
  String get alertsNote =>
      'जाधरि WhatStock चलि रहल अछि, अलर्ट हर 5 मिनटमे जाँचल जाइत अछि। कंप्यूटर पर ई मेनू बार वा ट्रेमे चलैत रहैत अछि; फोन पर एखन अलर्ट तखने अबैत अछि जखन ऐप खुजल रहैत अछि।';

  @override
  String alertDescAbove(String price) {
    return '$price सँ ऊपर';
  }

  @override
  String alertDescBelow(String price) {
    return '$price सँ नीचाँ';
  }

  @override
  String alertDescMove(String percent) {
    return 'दैनिक बदलाव ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return '$date केँ $price पर सक्रिय भेल';
  }

  @override
  String get alertRearm => 'फेरसँ चालू करू';

  @override
  String get alertDelete => 'मेटाउ';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol $price सँ ऊपर गेल';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol $price सँ नीचाँ आएल';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol आइ $percent हिलल';
  }

  @override
  String alertHitBody(String price) {
    return 'वर्तमान दाम: $price';
  }

  @override
  String get alertOpen => 'खोलू';

  @override
  String get keepInTrayTitle => 'विंडो बंद भेलो पर चलैत रहय';

  @override
  String get keepInTraySubtitle =>
      'WhatStock मेनू बार वा ट्रेमे रहैत अछि, जाहिसँ शॉर्टकट आ दाम अलर्ट काज करैत रहय।';

  @override
  String get termsOfUse => 'उपयोगक शर्त';

  @override
  String get privacyPolicy => 'गोपनीयता नीति';

  @override
  String get subscriptionLegal =>
      'सदस्यता हर मास स्वतः नवीकृत होइत अछि, जाधरि अहाँ ओकरा रद्द नहि करब। सदस्यता लैत अहाँ उपयोगक शर्त आ गोपनीयता नीति स्वीकार करैत छी।';

  @override
  String get deleteAccount => 'खाता मेटाउ';

  @override
  String get deleteAccountTitle => 'की अहाँ अपन खाता मेटाबऽ चाहैत छी?';

  @override
  String get deleteAccountBody =>
      'अहाँक खाता आ हमर सभक सर्वर पर राखल सभ किछु (ईमेल, कोटा, उपयोग) सदाक लेल मेटा देल जाएत, आ बिना उपयोग कएल विश्लेषण नष्ट भऽ जाएत। ब्राउज़रमे भुगतान कएल सदस्यता तुरंत रद्द भऽ जाइत अछि; App Store वा Google Play क सदस्यता स्टोरक सेटिंग्समे रद्द करऽ पड़त।';

  @override
  String get deleteLocalData =>
      'एहि डिवाइसक डेटा सेहो मेटाउ (पोर्टफ़ोलियो, अलर्ट, पसंदीदा, इतिहास, सहेजल विश्लेषण)';

  @override
  String get deleteAccountConfirm => 'सदाक लेल मेटाउ';

  @override
  String get accountDeleted => 'अहाँक खाता मेटा देल गेल अछि।';

  @override
  String get errDeleteAccount =>
      'खाता नहि मेटाओल जा सकल। अपन कनेक्शन जाँचू आ फेरसँ प्रयास करू।';

  @override
  String get aiTrialBriefNote =>
      'ट्रायलक विश्लेषण संक्षिप्त होइत अछि आ तेज AI मॉडलसँ बनैत अछि। प्लानक संग अहाँकेँ हमर सभसँ सक्षम AI, बेसी वेब खोज तथा मानक आ विस्तृत लंबाई भेटत।';

  @override
  String get billingMonthly => 'मासिक';

  @override
  String get billingYearly => 'वार्षिक';

  @override
  String get yearlyDiscount => '2 मास निःशुल्क';

  @override
  String get perYear => '/ वर्ष';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price प्रति मास';
  }

  @override
  String get subscriptionLegalYearly =>
      'वार्षिक सदस्यता हर बरख स्वतः नवीकृत होइत अछि, जाधरि अहाँ ओकरा रद्द नहि करब। सदस्यता लैत अहाँ उपयोगक शर्त आ गोपनीयता नीति स्वीकार करैत छी।';

  @override
  String get myAnalyses => 'हमर विश्लेषण';

  @override
  String get navAlerts => 'अलर्ट';

  @override
  String get inviteTitle => 'बन्द पूर्वावलोकन';

  @override
  String get inviteBody =>
      'WhatStock एखन मात्र आमंत्रण द्वारा उपलब्ध अछि। अहाँकेँ भेटल आमंत्रण कोड लिखू।';

  @override
  String get inviteCodeLabel => 'आमंत्रण कोड';

  @override
  String get inviteContinue => 'आगाँ बढ़ू';

  @override
  String get inviteInvalid => 'ई आमंत्रण कोड मान्य नहि अछि।';

  @override
  String get inviteExpired =>
      'ई आमंत्रणक समय-सीमा समाप्त भऽ गेल अछि। जे अहाँकेँ आमंत्रित केलनि, हुनकासँ नव कोड माँगू।';

  @override
  String get inviteDeviceLimit =>
      'ई आमंत्रण कोड पहिनेसँ अधिकतम संख्यामे डिवाइस पर उपयोगमे अछि।';

  @override
  String get previewConfidential => 'गोपनीय पूर्वावलोकन';

  @override
  String get errPreviewDailyLimit =>
      'एहि पूर्वावलोकनक आजुक विश्लेषण-सीमा पूरा भऽ गेल। काल्हि फेर प्रयास करू।';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count घंटा पहिने',
      one: '1 घंटा पहिने',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिन पहिने',
      one: '1 दिन पहिने',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'ई विश्लेषण अपडेट करी?';

  @override
  String staleBody(String age) {
    return 'ई $age बनाओल गेल छल। तहिया सँ भाव, समाचार आ परिणाम बदलि गेल भ\' सकैत अछि।';
  }

  @override
  String get staleKeep => 'पहिलुका देखाउ';

  @override
  String get staleRefresh => 'नव बनाउ';

  @override
  String seeAll(int count) {
    return 'सभटा देखाउ ($count)';
  }

  @override
  String get searchAnalyses => 'अपन विश्लेषण मे खोजू';

  @override
  String get deleteAnalysis => 'मेटाउ';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol विश्लेषण मेटाओल गेल';
  }

  @override
  String get keyLevelAlertHint =>
      'कोनो स्तर पर टैप करू, दाम ओतय पहुँचला पर अलर्ट भेटत।';

  @override
  String get shareAnalysisTitle => 'विश्लेषण साझा करू';

  @override
  String get shareAsImage => 'छवि रूपमे साझा करू';

  @override
  String get shareAsText => 'पाठ रूपमे साझा करू';

  @override
  String get shareCardFooter => 'WhatStock सँ बनाओल';

  @override
  String get shareCardDisclaimer => 'AI विश्लेषण · निवेशक सलाह नहि';

  @override
  String get referralTitle => 'मित्र सभकेँ आमंत्रित करू';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count अतिरिक्त विश्लेषण',
      one: '1 अतिरिक्त विश्लेषण',
    );
    return 'अपन कोड साझा करू। अहाँक मित्रकेँ तुरंत $_temp0 भेटत, आ हुनक पहिल विश्लेषणक बाद अहाँकेँ सेहो ओतबे भेटत।';
  }

  @override
  String get referralYourCode => 'अहाँक कोड';

  @override
  String referralStats(int invited, int rewarded) {
    return 'आमंत्रित: $invited · पुरस्कृत: $rewarded';
  }

  @override
  String get referralHaveCode => 'की अहाँ लग कोनो मित्रक कोड अछि?';

  @override
  String get referralRedeem => 'रिडीम करू';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count अतिरिक्त विश्लेषण जोड़ल गेल। स्वागत अछि!',
      one: '1 अतिरिक्त विश्लेषण जोड़ल गेल। स्वागत अछि!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'ई कोड मौजूद नहि अछि। जाँचि कऽ फेर प्रयास करू।';

  @override
  String get referralErrOwn => 'अहाँ अपन कोड रिडीम नहि कऽ सकैत छी।';

  @override
  String get referralErrAlready =>
      'अहाँ पहिनहि एकटा मित्रक कोड रिडीम कऽ चुकल छी।';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count अतिरिक्त विश्लेषण',
      one: '1 अतिरिक्त विश्लेषण',
    );
    return 'हम WhatStock सँ शेयरक विश्लेषण करैत छी: शेयरक फोटो लिअ आ AI ओकरा बुझा दैत अछि। हमर कोड $code सँ अहाँकेँ $_temp0 भेटत।';
  }

  @override
  String get referralCopied => 'कोड कॉपी भेल';

  @override
  String get onboardTitle1 => 'कोनो शेयरक फोटो खीचू';

  @override
  String get onboardBody1 =>
      'ब्रोकरेज ऐपक स्क्रीन, अखबार वा कंपनीक लोगो पर्याप्त अछि: WhatStock शेयरकेँ चिन्हि लैत अछि आ ओकर दाम, चार्ट आ मुख्य आँकड़ा देखबैत अछि।';

  @override
  String get onboardTitle2 => 'किछु मिनटमे बुझि लिअ';

  @override
  String get onboardBody2 =>
      'AI विश्लेषण बतबैत अछि जे शेयरकेँ की चलबैत अछि, एकर जोखिम, मूल्यांकन, आ दाम कोन दिस जा सकैत अछि ताहि पर तीन परिदृश्य – स्रोतक संग आ अहाँक भाषामे।';

  @override
  String get onboardTitle3 => 'सदिखन अपडेट रहू';

  @override
  String get onboardBody3 =>
      'पसंदीदा, अहाँक पोर्टफ़ोलियो आ दाम अलर्ट अहाँकेँ खबरि दैत रहत। अहाँक विश्लेषण अहाँक डिवाइस पर रहैत अछि, जखन चाही फेरसँ खोलि सकैत छी।';

  @override
  String get onboardNext => 'आगाँ';

  @override
  String get onboardStart => 'शुरू करू';

  @override
  String get onboardSkip => 'छोड़ू';

  @override
  String changesTitle(String date) {
    return 'पछिला विश्लेषणक बादसँ ($date)';
  }

  @override
  String get changesPrice => 'दाम';

  @override
  String get changesNoMajor => 'दृष्टिकोण मे कोनो खास बदलाव नहि भेल अछि।';

  @override
  String get changesPreviousSummary => 'पछिला सारांश';

  @override
  String get telemetryTitle => 'WhatStock केँ बेहतर बनाबय मे मदति करू';

  @override
  String get telemetryBody =>
      'गुमनाम उपयोग आँकड़ा आ क्रैश रिपोर्ट साझा करू: कोन सुविधा सभक उपयोग होइत अछि आ की गड़बड़ भेल। अहाँक शेयर, विश्लेषण वा व्यक्तिगत डेटा कहियो नहि। अहाँ एकरा कखनो सेटिंग्स मे बदलि सकैत छी।';

  @override
  String get telemetryAllow => 'अनुमति दिअ';

  @override
  String get telemetryDecline => 'नहि, धन्यवाद';

  @override
  String get telemetrySetting => 'गुमनाम आँकड़ा आ क्रैश रिपोर्ट';

  @override
  String get telemetrySettingHint =>
      'सुविधा सभक उपयोग कतेक बेर होइत अछि आ त्रुटि रिपोर्ट, व्यक्तिगत डेटा वा अहाँक खोज आ विश्लेषणक सामग्रीक बिना।';

  @override
  String get askButton => 'एहि विश्लेषणक बारेमे पुछू';

  @override
  String askTitle(String symbol) {
    return 'प्रश्न: $symbol';
  }

  @override
  String get askIntro =>
      'विश्लेषणक बारेमे किछुओ पुछू: कोनो जोखिमक अर्थ की अछि, की बदलने आगाँक संभावना बदलि सकैत अछि, कोनो संख्या कोना निकालल गेल। उत्तर एहि विश्लेषण पर आधारित अछि आ ई निवेशक सलाह नहि अछि।';

  @override
  String get askHint => 'प्रश्न पुछू…';

  @override
  String get askSend => 'पठाउ';

  @override
  String get askThinking => 'सोचि रहल छी…';

  @override
  String get askSuggest1 => 'सभसँ पैघ जोखिम की अछि?';

  @override
  String get askSuggest2 => 'की बदलने आगाँक संभावना बदलत?';

  @override
  String get askSuggest3 => 'सरल शब्दमे बुझाउ';

  @override
  String get askMaxReached =>
      'एहि विश्लेषणक लेल ई अंतिम प्रश्न छल। आओर पुछबाक लेल नव विश्लेषण बनाउ।';

  @override
  String get errAskLimit =>
      'आजुक प्रश्न-सीमा पूरा भऽ गेल। काल्हि फेर प्रयास करू।';

  @override
  String get eventTomorrow => 'काल्हि';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days दिनमे',
      one: '1 दिनमे',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'त्रैमासिक परिणाम';

  @override
  String get eventBeforeOpen => 'बजार खुजबासँ पहिने';

  @override
  String get eventAfterClose => 'बजार बन्द भेलाक बाद';

  @override
  String eventEpsEstimate(String value) {
    return 'अनुमानित EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'अहाँक विश्लेषणसँ';

  @override
  String get eventDividend => 'डिविडेंड अपेक्षित';

  @override
  String get eventDividendEstimate => 'अहाँक दर्ज कएल भुगतानसँ अनुमानित';

  @override
  String get eventsHint =>
      'अगिला 90 दिनमे अहाँक पसंदीदा आ पोर्टफ़ोलियो शेयरक परिणामक तिथि, अहाँक विश्लेषणमे चिन्हित तिथियुक्त घटना, आ अहाँक दर्ज कएल भुगतानसँ अपेक्षित डिविडेंड।';

  @override
  String get eventsEmpty =>
      'अगिला 90 दिनमे कोनो तिथियुक्त घटना नहि अछि। पसंदीदा वा पोर्टफ़ोलियो शेयर जोड़ू, तँ एतए ओकर परिणामक तिथि देखाएत; दर्ज कएल डिविडेंडक अगिला अपेक्षित भुगतान एतए देखाएत।';

  @override
  String get compareTitle => 'तुलना';

  @override
  String get compareAdd => 'शेयर जोड़ू';

  @override
  String get compareRemove => 'हटाउ';

  @override
  String get compareTickerHint => 'टिकर, जेना MSFT';

  @override
  String get compareHint =>
      'मुख्य आँकड़ा संग-संग; प्रत्येक पंक्तिमे सर्वश्रेष्ठ मान हाइलाइट कएल गेल अछि। राशि प्रत्येक शेयरक अपन मुद्रामे अछि।';

  @override
  String get compareNoAnalysis => 'एखन धरि कोनो विश्लेषण नहि';

  @override
  String get portfolioDividends => 'वार्षिक लाभांश';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent यील्ड';
  }

  @override
  String get portfolioDividendNote =>
      'अपेक्षित वार्षिक लाभांश पछिला 12 मासमे देल गेल लाभांश पर आधारित अछि; भविष्यक भुगतानक गारंटी नहि अछि।';

  @override
  String positionDividend(String amount) {
    return 'लाभांश: सालाना $amount';
  }

  @override
  String get chartAvgCost => 'अहाँक औसत';

  @override
  String get chartAlertLevel => 'अलर्ट';

  @override
  String get marketsToday => 'आइक बजार';

  @override
  String get notesTitle => 'हमर नोट';

  @override
  String get notesHint =>
      'अहाँ ई किएक किनलहुँ, कथी पर नजरि रखने छी, की भेला पर बेचब?';

  @override
  String get notesInfo =>
      'एही डिवाइस पर, आ साइन इन रहला पर अहाँक खातामे सेहो सहेजल जाइत अछि। AI विश्लेषण अहाँक नोटकेँ ध्यानमे रखैत अछि।';

  @override
  String notesSaved(String date) {
    return 'सहेजल गेल $date';
  }

  @override
  String get peersTitle => 'समान कंपनी सभ';

  @override
  String get portfolioExport => 'CSV मे निर्यात करू';

  @override
  String get portfolioImport => 'CSV सँ आयात करू';

  @override
  String get portfolioImportHint =>
      'प्रति पाँती एकटा खरीदारी साटू: टिकर, संख्या, मूल्य, मुद्रा, तिथि (YYYY-MM-DD)। स्तम्भ कॉमा, सेमीकोलन वा टैब सँ अलग भ\' सकैत अछि; शीर्ष पाँती वैकल्पिक अछि।';

  @override
  String get portfolioImportButton => 'आयात करू';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count लेन-देन जोड़ल गेल',
      one: '1 लेन-देन जोड़ल गेल',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count पाँती छोड़ल गेल',
      one: '1 पाँती छोड़ल गेल',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'पोर्टफ़ोलियो, पसंदीदा, दाम अलर्ट आ नोट अहाँक सभ डिवाइस पर सिंक होइत अछि।';

  @override
  String syncLast(String time) {
    return 'अंतिम सिंक: $time';
  }

  @override
  String get syncNow => 'एखन सिंक करू';

  @override
  String get syncFailed => 'सिंक नहि भ\' सकल। ई अपने-आप फेर प्रयास करत।';

  @override
  String get alertEmailTitle => 'अलर्ट बजला पर ई-मेल';

  @override
  String get alertEmailOn =>
      'हम सभ किछु-किछु मिनटपर अहाँक अलर्ट जाँचैत छी आ ई-मेल पठबैत छी, ऐप बंद रहलो पर।';

  @override
  String get alertEmailSignIn =>
      'ऐप बंद रहलो पर ई-मेलसँ अलर्ट पेबाक लेल सेटिंग्समे अपन ई-मेलसँ साइन इन करू।';

  @override
  String get portfolioHistory => 'समयक संग मूल्य';

  @override
  String get portfolioReviewTitle => 'AI पोर्टफ़ोलियो समीक्षा';

  @override
  String get portfolioReviewIntro =>
      'AI अहाँक पूरा पोर्टफ़ोलियो देखैत अछि: केंद्रीकरण, सेक्टर आ मुद्राक जोखिम, अहाँक शेयरक साझा जोखिम, आ लाभांश। 1 विश्लेषण खर्च होइत अछि।';

  @override
  String get portfolioReviewButton => 'हमर पोर्टफ़ोलियोक समीक्षा करू';

  @override
  String get portfolioReviewAgain => 'फेरसँ समीक्षा करू';

  @override
  String get portfolioReviewWorking =>
      'अहाँक पोर्टफ़ोलियोक समीक्षा भऽ रहल अछि…';

  @override
  String get digestTitle => 'ईमेलसँ साप्ताहिक सारांश';

  @override
  String get digestHint =>
      'प्रत्येक सोम: पछिला सप्ताह अहाँक पसंदीदा आ पोर्टफ़ोलियो केना चलल, आ ओकर आगामी परिणामक तिथि।';

  @override
  String get benchmarkTitle => 'S&P 500 सँ तुलना';

  @override
  String get benchmarkTitleIndex => 'कोनो इंडेक्ससँ तुलना';

  @override
  String get benchmarkHintIndex =>
      'जेना प्रत्येक खरीदक राशि ओही दिन चुनल इंडेक्सक अनुसरण करयबला फंड मे लगाओल गेल हो। लाभांश सम्मिलित नहि; पछिला रिटर्न भविष्यक रिटर्नक अनुमान नहि दैत अछि।';

  @override
  String get benchmarkYours => 'अहाँक खरीद';

  @override
  String benchmarkAhead(String points) {
    return 'इंडेक्ससँ $points प्रतिशत अंक नीक';
  }

  @override
  String benchmarkBehind(String points) {
    return 'इंडेक्ससँ $points प्रतिशत अंक पाछाँ';
  }

  @override
  String get portfolioSell => 'बेचू';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbol बेचू';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'प्रति शेयर बिक्री दाम ($currency)';
  }

  @override
  String get portfolioSellDate => 'बिक्रीक तिथि';

  @override
  String get portfolioSellAll => 'सभ';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'अहाँ लग $quantity अछि';
  }

  @override
  String get portfolioSold => 'बेचल';

  @override
  String get portfolioRealized => 'प्राप्त';

  @override
  String get portfolioClosed => 'बंद पोजीशन';

  @override
  String get portfolioClosedNote => 'सभ शेयर बेचल गेल';

  @override
  String get portfolioTransactions => 'लेन-देन';

  @override
  String get portfolioRealizedByYear => 'वर्षक अनुसार प्राप्त लाभ';

  @override
  String get portfolioRealizedHint =>
      'बिक्रीकेँ पहिने अहाँक सभसँ पुरान खरीदारीसँ मिलाओल जाइत अछि (FIFO), आजुक विनिमय दरपर बदलि कऽ। कर रिटर्नक लेल अपन ब्रोकरक विवरण उपयोग करू।';

  @override
  String staleNewResults(String symbol, String date) {
    return 'एहि विश्लेषणक बाद नव तिमाही परिणाम प्रकाशित भेल अछि ($symbol, $date)।';
  }

  @override
  String get newResultsBadge => 'नव परिणाम';

  @override
  String get portfolioImportBrokers =>
      'Revolut, Trading 212, Interactive Brokers, DEGIRO, Schwab, Fidelity आ Robinhood क एक्सपोर्ट सेहो बिक्री आ लाभांश (स्रोत पर कटल कर घटाकऽ) सहित चिन्हल जाइत अछि; जमा छोड़ि देल जाइत अछि।';

  @override
  String get portfolioImportFile => 'फाइल चुनू';

  @override
  String offlineBanner(String time) {
    return 'कनेक्शन नहि अछि – अंतिम बेर सहेजल डेटा देखाओल जा रहल अछि ($time)।';
  }

  @override
  String get glossMarketCap =>
      'शेयर बजार मे पूरा कंपनीक मूल्य कतेक अछि: शेयरक भाव × शेयरक संख्या।';

  @override
  String get glossSharesOutstanding =>
      'कंपनी कतेक शेयर जारी केने अछि। जँ ई बढ़ैत अछि तँ हर शेयरक हिस्सा छोट भ\' जाइत अछि; बायबैक (शेयर वापस किनब) एकरा घटबैत अछि।';

  @override
  String get glossPeTrailing =>
      'भाव ÷ पछिला 12 मासक प्रति शेयर आय: अहाँ वर्तमान मुनाफाक कतेक वर्षक दाम चुकबैत छी। कम होएब सस्ता अछि, मुदा तेजी सँ बढ़ैत कंपनीक P/E प्रायः ऊँच होइत अछि।';

  @override
  String get glossPeForward =>
      'P/E जकाँ, मुदा अगिला 12 मास लेल विश्लेषक द्वारा अनुमानित मुनाफाक संग। जँ ई ट्रेलिंग P/E सँ कम अछि तँ मुनाफा बढ़बाक उम्मीद अछि।';

  @override
  String get glossPb =>
      'भाव ÷ प्रति शेयर बुक वैल्यू (संपत्ति मे सँ कर्ज घटा क\')। लगभग 1 क अर्थ जे बजार कंपनीक ओतबे मूल्य लगबैत अछि जतबा कागज पर ओकर संपत्ति अछि।';

  @override
  String get glossPs =>
      'बजार मूल्य ÷ सालाना राजस्व। ओहन कंपनी लेल उपयोगी जकरा एखन कम वा कोनो मुनाफा नहि अछि; एके उद्योगक भीतर तुलना करू।';

  @override
  String get glossEvToFcf =>
      'कर्ज सहित कंपनीक मूल्य (EV) ÷ निवेशक बाद एक साल मे बनल नकदी। कम होएबाक अर्थ जे दामक बदला मे अहाँ केँ बेसी नकदी भेटैत अछि।';

  @override
  String get glossPeg =>
      'P/E ÷ अनुमानित सालाना मुनाफा वृद्धि (%)। लगभग 1 केँ प्रायः उचित मानल जाइत अछि; ई P/E केँ वृद्धिक नजरि सँ देखबैत अछि।';

  @override
  String get glossEps =>
      'पछिला 12 मास मे प्रति शेयर मुनाफा। साल-दर-साल बढ़ैत EPS स्वस्थ कंपनीक सबसँ मजबूत संकेत मे सँ एक अछि।';

  @override
  String get glossBeta =>
      'शेयर बजारक संग कतेक ऊपर-नीचाँ होइत अछि: 1 = बजार जकाँ, 1.5 = लगभग 50% बेसी उतार-चढ़ाव, 1 सँ कम = बेसी शांत।';

  @override
  String get glossRevenueTtm =>
      'पछिला 12 मासक कुल बिक्री, कोनो खर्च घटेबा सँ पहिने।';

  @override
  String get glossNetIncomeTtm =>
      'पछिला 12 मास मे सभ खर्च, ब्याज आ कर क बाद बचल मुनाफा।';

  @override
  String get glossGrossMargin =>
      'उत्पादक सीधा लागत क बाद राजस्वक कतेक हिस्सा बचैत अछि। ऊँच मार्जिन प्रायः दाम तय करबाक ताकत देखबैत अछि।';

  @override
  String get glossOperatingMargin =>
      'व्यवसाय चलेबाक खर्च (वेतन, भाड़ा, मार्केटिंग) क बाद, ब्याज आ कर सँ पहिने राजस्वक कतेक हिस्सा बचैत अछि।';

  @override
  String get glossNetMargin =>
      'राजस्वक कतेक हिस्सा अंतिम मुनाफा बनैत अछि। 20% क अर्थ जे बिक्रीक हर 100 मे सँ 20 मुनाफा अछि।';

  @override
  String get glossRoe =>
      'इक्विटी पर रिटर्न: सालाना मुनाफा ÷ मालिकक पूँजी। देखबैत अछि जे प्रबंधन शेयरधारकक पाइ कतेक नीक सँ उपयोग करैत अछि; लगभग 15% सँ ऊपर मजबूत अछि।';

  @override
  String get glossRoa =>
      'संपत्ति पर रिटर्न: सालाना मुनाफा ÷ कंपनीक सभ संपत्ति। एके उद्योगक भीतर तुलना करू।';

  @override
  String get glossDebtToEquity =>
      'ऋण ÷ मालिकक पूँजी। बेसी होएबाक अर्थ बेसी उधार पाइ: ब्याज दर बढ़ला पर वा कारोबार सुस्त भेला पर बेसी जोखिम।';

  @override
  String get glossCurrentRatio =>
      'अल्पकालिक संपत्ति ÷ एक सालक भीतर चुकाबय बला बिल। 1 सँ ऊपरक अर्थ जे कंपनी अपन निकट भविष्यक बिल चुका सकैत अछि।';

  @override
  String get glossRevenueGrowth => 'एक साल पहिने क तुलना मे राजस्व कतेक बढ़ल।';

  @override
  String get glossEpsGrowth =>
      'एक साल पहिने क तुलना मे प्रति शेयर मुनाफा कतेक बढ़ल।';

  @override
  String get glossDividendYield =>
      'सालाना लाभांश ÷ शेयरक भाव: हर साल भेटय बला नकद आय, जे अहाँ चुकबैत छी ओकर प्रतिशत मे।';

  @override
  String get glossDividendPerShare => 'पछिला साल एक शेयर पर देल गेल लाभांश।';

  @override
  String get glossPayoutRatio =>
      'मुनाफाक कतेक हिस्सा लाभांशक रूप मे बाँटल जाइत अछि। 100% सँ ऊपर कंपनी जतबा कमाइत अछि ओहि सँ बेसी दैत अछि, जे बिरले टिकैत अछि।';

  @override
  String get portfolioBeta => 'पोर्टफ़ोलियो बीटा';

  @override
  String get glossPortfolioBeta =>
      'अहाँक शेयरक बीटा, ओकर मूल्यक हिसाबसँ भारित: बजार 1% हिलला पर अहाँक शेयर लगभग कतेक प्रतिशत हिलैत अछि। 1 सँ ऊपर भेला पर ओ बजारसँ बेसी उतार-चढ़ाव करैत अछि, 1 सँ कम भेला पर कम। नकद एहिमे शामिल नहि अछि।';

  @override
  String get portfolioTop3 => 'टॉप 3 पोजीशन';

  @override
  String get glossPortfolioTop3 =>
      'अहाँक शेयरक मूल्यक कतेक भाग अहाँक तीनटा सभसँ पैघ पोजीशनमे अछि। ई जतेक बेसी, कोनो एकटा कंपनीक खराब समाचार पूरा पोर्टफ़ोलियोकेँ ततेक बेसी नुकसान पहुँचा सकैत अछि।';

  @override
  String get glossDividendGrowth5y =>
      'पछिला पाँच सालमे प्रति शेयर लाभांश औसतन सालाना कतेक बढ़ल। स्थिर वृद्धिक अर्थ सामान्यतः ई होइत अछि जे कंपनीकेँ अपन नकदी प्रवाह पर भरोसा छैक; कटौती प्रायः चेतावनीक संकेत होइत अछि।';

  @override
  String get glossYieldOnCost =>
      'पछिला 12 महीनामे प्राप्त लाभांशकेँ ओहि राशिसँ भाग देल जाइत अछि जे अहाँ एखनो राखल शेयरक लेल देने छलहुँ। लाभांश यील्डसँ भिन्न, ई आइक भाव पर नहि, अहाँक अपन खरीद भाव पर मापल जाइत अछि।';

  @override
  String get glossTitle => 'एकर की अर्थ अछि?';

  @override
  String get watchNewsTitle => 'अहाँक शेयरक समाचार';

  @override
  String get undo => 'पूर्ववत करू';

  @override
  String get watchSort => 'क्रमबद्ध करू';

  @override
  String get watchSortOwn => 'हमर क्रम';

  @override
  String get watchSortGainers => 'सभसँ बेसी बढ़ल पहिने';

  @override
  String get watchSortLosers => 'सभसँ बेसी खसल पहिने';

  @override
  String get watchSortName => 'टिकर अनुसार (A–Z)';

  @override
  String get watchHint =>
      'क्रम बदलबाक लेल हैंडल खींचू, हटेबाक लेल बामा दिस स्वाइप करू। रेखा पछिला 30 दिन देखबैत अछि।';

  @override
  String analysisReady(String symbol) {
    return '$symbol: अहाँक विश्लेषण तैयार अछि।';
  }

  @override
  String alertFromCost(String price) {
    return 'अहाँक औसत खरीद मूल्य ($price) सँ:';
  }

  @override
  String get briefTitle => 'आइ अहाँक शेयरक संग';

  @override
  String get briefButton => 'आइक सारांश';

  @override
  String get briefHint =>
      'आइ अहाँक पोर्टफोलियो आ पसिनक शेयर कोना चलल आ ताजा समाचार ओकरा बारेमे की कहैत अछि, तकर छोट AI सारांश। एहिमे कोनो विश्लेषण खर्च नहि होइत अछि।';

  @override
  String get briefRefresh => 'अपडेट करू';

  @override
  String get sectionEarnings => 'त्रैमासिक परिणाम';

  @override
  String earningsNext(String date) {
    return 'अगिला रिपोर्ट: $date';
  }

  @override
  String get earningsExpected => 'अनुमानित EPS';

  @override
  String get earningsReported => 'रिपोर्ट कएल गेल EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'पछिला $total मेसँ $beats तिमाहीमे EPS अनुमानक बराबर वा ओहिसँ बेसी',
      one: '1 मेसँ $beats तिमाहीमे EPS अनुमानक बराबर वा ओहिसँ बेसी',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbolक त्रैमासिक परिणाम काल्हि';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbolक त्रैमासिक परिणाम आइ';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return '$symbolक डिविडेंड आइ अपेक्षित';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'लगभग $amount। अएला पर एकरा अपन पोर्टफोलियोमे दर्ज करू।';
  }

  @override
  String get dividendRemindersTitle => 'डिविडेंड रिमाइंडर';

  @override
  String get dividendRemindersSubtitle =>
      'अहाँक दर्ज कएल भुगतानक क्रमसँ जाहि दिन डिविडेंड अपेक्षित हो, ओहि दिन सूचना, जाहिसँ अहाँ ओकरा दर्ज क\' सकी';

  @override
  String get earningsRemindersTitle => 'परिणाम रिमाइंडर';

  @override
  String get earningsRemindersSubtitle =>
      'अहाँक पसंदीदा वा पोर्टफोलियोक शेयरक त्रैमासिक परिणामसँ एक दिन पहिने सूचना';

  @override
  String addAllToFavorites(int count) {
    return 'सभटा पसंदीदामे जोड़ू ($count)';
  }

  @override
  String get portfolioImportPhoto => 'स्क्रीनशॉटसँ आयात करू';

  @override
  String get holdingsReading => 'अहाँक पोजीशन पढ़ल जा रहल अछि…';

  @override
  String get holdingsReviewTitle => 'भेटल पोजीशन';

  @override
  String get holdingsReviewHint =>
      'जोड़बासँ पहिने संख्या जाँचि लिअ। दाम प्रति शेयर अहाँक औसत खरीद दाम अछि, आजुक दाम नहि।';

  @override
  String get holdingsNoPrice => 'चित्रमे औसत खरीद दाम नहि अछि';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count पोजीशन जोड़ू',
      one: '1 पोजीशन जोड़ू',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'एहि चित्रमे कोनो शेयर पोजीशन नहि भेटल। अपन ब्रोकरक पोजीशन वा होल्डिंग पन्नाक स्क्रीनशॉट आजमाउ।';

  @override
  String get week52Range => '52-सप्ताहक दायरा';

  @override
  String week52BelowHigh(String percent) {
    return '52-सप्ताहक उच्चतमसँ $percent नीचाँ';
  }

  @override
  String get week52AtHigh => '52-सप्ताहक उच्चतम पर';

  @override
  String get alertKindTrailing => 'शिखरसँ खसय';

  @override
  String get alertTrailingPercent => 'शिखरसँ खसब (%)';

  @override
  String get alertTrailingHint =>
      'दामक संग ऊपर चलैत अछि: सेट कएलाक बादक सभसँ ऊँच स्तरसँ दाम एतेक खसलापर सूचना दैत अछि।';

  @override
  String alertDescTrailing(String percent) {
    return 'शिखरसँ $percent खसब';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'एखन धरिक शिखर: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol शिखरसँ $percent खसल';
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
  String get insiderBuy => 'कीनल';

  @override
  String get insiderSell => 'बेचल';

  @override
  String get insiderHint =>
      'पछिला 90 दिनमे अधिकारी आ निदेशक द्वारा खुजल बजारमे कएल गेल खरीद आ बिक्री (SEC Form 4)। ऑप्शनक प्रयोग आ शेयर पुरस्कार नहि गनल जाइत अछि।';

  @override
  String get insiderNone =>
      'पछिला 90 दिनमे खुजल बजारमे कोनो इनसाइडर खरीद वा बिक्री नहि भेल।';

  @override
  String get analystTrend => 'मास-दर-मास राय कोना बदलल';

  @override
  String get watchListAll => 'सभ';

  @override
  String get watchListNew => 'नव सूची';

  @override
  String get watchListName => 'सूचीक नाम';

  @override
  String get watchListRename => 'सूचीक नाम बदलू';

  @override
  String get watchListDelete => 'सूची मेटाउ';

  @override
  String get watchListAddTo => 'सूचीमे जोड़ू';

  @override
  String get watchListEmpty =>
      'एहि सूचीमे एखन धरि कोनो शेयर नहि अछि। जोड़बाक लेल शेयरक बगलक सूची बटन दबाउ।';

  @override
  String get portfolioAskTitle => 'अहाँक पोर्टफ़ोलियोक बारेमे प्रश्न';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'बैकअप';

  @override
  String get backupSave => 'बैकअप सेव करू';

  @override
  String get backupSaveHint =>
      'अहाँक पसंदीदा, सूची, पोर्टफ़ोलियो, अलर्ट आ नोट एकटा फाइलमे।';

  @override
  String get backupRestore => 'बैकअपसँ वापस आनू';

  @override
  String get backupRestoreHint =>
      'फाइलमे जे अछि से जोड़ैत अछि; अहाँ लग एखन जे अछि ताहिमे सँ किछु नहि मेटाएत।';

  @override
  String get backupRestored => 'बैकअप वापस आबि गेल।';

  @override
  String get backupInvalid => 'ई फाइल WhatStock बैकअप नहि अछि।';

  @override
  String get allocationPositions => 'शेयर';

  @override
  String get allocationSectors => 'सेक्टर';

  @override
  String get allocationCurrencies => 'मुद्रा';

  @override
  String get allocationAccounts => 'खाता';

  @override
  String get compareReturn1y => '1 सालक रिटर्न';

  @override
  String get compareFromHigh => '52-सप्ताहक उच्चतमसँ दूरी';

  @override
  String get briefAutoTitle => 'सभ भोर दैनिक सारांश';

  @override
  String get briefAutoSubtitle =>
      'ऐप चलैत रहला पर भोर 7:00 बजेक बाद “आइ अहाँक शेयरक संग” अपने-आप तैयार भऽ जाइत अछि; कंप्यूटर पर एकटा सूचना अहाँकेँ बता दैत अछि। ई अहाँक दैनिक प्रश्न-सीमासँ जाइत अछि, कोनो विश्लेषण खर्च नहि होइत अछि।';

  @override
  String get targetsButton => 'लक्ष्य आवंटन';

  @override
  String get targetsTitle => 'लक्ष्य आवंटन';

  @override
  String get targetsHint =>
      'तय करू जे पोर्टफोलियोमे प्रत्येक शेयरक कतेक हिस्सा होएबाक चाही। लक्ष्य नहि होअए त खाना खाली छोड़ि दिअ। तकर बाद ऐप देखाओत जे ओतए पहुँचबाक लेल की कीनब वा बेचब अछि।';

  @override
  String targetsSum(String percent) {
    return 'कुल: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'कीनू ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'बेचू ≈ $amount';
  }

  @override
  String get rebalanceOk => 'लक्ष्य पर';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol: अनुमानित EPS सँ ऊपर';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol: अनुमानित EPS सँ नीचाँ';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'रिपोर्ट कएल गेल EPS $actual, अनुमानित $estimate';
  }

  @override
  String get newsExplain => 'एकर की अर्थ अछि?';

  @override
  String get watchAlertAll => 'पैघ दैनिक उतार-चढ़ाव पर अलर्ट';

  @override
  String get watchAlertAllHint =>
      'एहि सूचीक प्रत्येक शेयर लेल दामक अलर्ट: एक दिनमे एतेक ऊपर वा नीचाँ हेबा पर सूचित करत। जाहि शेयर पर पहिनहि सँ अलर्ट अछि, ओकर ओहिना रहत।';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count अलर्ट लगाओल गेल',
      one: '1 अलर्ट लगाओल गेल',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'प्राप्त लाभ निर्यात करू (CSV)';

  @override
  String get portfolioAnnualReturn => 'वार्षिक रिटर्न';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / वर्ष';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'धन-भारित वार्षिक रिटर्न (XIRR): ई देखैत अछि जे अहाँ कहिया कीनलहुँ आ बेचलहुँ, तेँ बादमे जोड़ल पाइ एकरा नहि बिगाड़ैत अछि। अहाँक पहिल खरीदारी कमसँ कम एक वर्ष पुरान भेलापर देखाओल जाइत अछि; लाभांश सम्मिलित नहि अछि।';

  @override
  String get eventsAddToCalendar => 'कैलेंडरमे जोड़ू (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'पोर्टफोलियो अलर्ट';

  @override
  String get portfolioMoveAlertSubtitle =>
      'जखन अहाँक पूरा पोर्टफोलियो एक दिनमे एतेक हिलय, तखन सूचना।';

  @override
  String get portfolioMoveAlertOff => 'बंद';

  @override
  String portfolioMoveUp(String percent) {
    return 'आइ अहाँक पोर्टफोलियो $percent बढ़ल अछि';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'आइ अहाँक पोर्टफोलियो $percent घटल अछि';
  }

  @override
  String get whatIfTitle => 'जँ अहाँ निवेश केने रहितहुँ तँ?';

  @override
  String get whatIfAmount => 'राशि';

  @override
  String whatIfResult(String amount, String period) {
    return '$period पहिने निवेश कएल $amount आइ होइत';
  }

  @override
  String get whatIfNote =>
      'केवल शेयरक दाम पर आधारित: लाभांश, शुल्क आ कर सम्मिलित नहि अछि। पछिला रिटर्न भविष्यक रिटर्नक पूर्वानुमान नहि करैत अछि।';

  @override
  String get watchShare => 'सूची साझा करू';

  @override
  String get watchImport => 'टिकर जोड़ू';

  @override
  String get watchImportHint =>
      'कॉमा, स्पेस वा नव पाँती सँ अलग कएल टिकर साटू – जेना कोनो सूची जे केओ अहाँ संग साझा केने हो।';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count शेयर जोड़ल गेल',
      one: '1 शेयर जोड़ल गेल',
      zero: 'कोनो नव शेयर नहि',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'सभसँ पैघ पहिने';

  @override
  String get positionsSortGain => 'सभसँ बेसी कुल लाभ पहिने';

  @override
  String get positionsSortToday => 'आइ सभसँ नीक पहिने';

  @override
  String get chartMyBuys => 'अहाँक खरीदारी';

  @override
  String get chartMySells => 'अहाँक बिक्री';

  @override
  String get shortcutsTitle => 'कीबोर्ड शॉर्टकट';

  @override
  String usMarketOpen(String time) {
    return 'अमेरिकी बजार खुजल अछि · $time मे बन्द होएत';
  }

  @override
  String usMarketClosed(String time) {
    return 'अमेरिकी बजार बन्द अछि · $time मे खुजत';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes मिनट';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours घंटा $minutes मिनट';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days दिन $hours घंटा';
  }

  @override
  String get dividendGoalSet => 'मासिक डिविडेंड लक्ष्य निर्धारित करू';

  @override
  String get dividendGoalTitle => 'मासिक डिविडेंड लक्ष्य';

  @override
  String get dividendGoalAmount => 'प्रति मास डिविडेंड';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'आजुक यील्ड पर प्रति मास लगभग $amount · $percent · लक्ष्य: $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'आजुक यील्ड पर प्रति मास लगभग $amount · लक्ष्य पूरा भेल: $goal';
  }

  @override
  String get portfolioAccount => 'खाता';

  @override
  String get portfolioAccountHint => 'जेना TBSZ 2026 (वैकल्पिक)';

  @override
  String get portfolioAccountAdd => 'खाता बताउ';

  @override
  String get portfolioAccountsAll => 'सभ खाता';

  @override
  String get portfolioAccountNote =>
      'मात्र एहि खाताक लेन-देन आ डिविडेंड। नकद, लक्ष्य आ AI समीक्षा ‘सभ खाता’मे देखाओल जाइत अछि।';

  @override
  String get portfolioNoAccount => 'कोनो खाता नहि';

  @override
  String portfolioFee(String currency) {
    return 'ब्रोकरेज ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'ब्रोकरेज जोड़ू';

  @override
  String portfolioFeeRow(String amount) {
    return 'ब्रोकरेज: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'वार्षिक सारांश';

  @override
  String get portfolioProceeds => 'बिक्रीसँ आमदनी';

  @override
  String get portfolioCostBasis => 'खरीद लागत';

  @override
  String get portfolioFeesPaid => 'चुकाओल ब्रोकरेज';

  @override
  String get portfolioAnnualSummaryNote =>
      'राशि मूल मुद्रामे अछि, बदलल नहि गेल। बिक्रीसँ आमदनी बिक्रीक ब्रोकरेज घटा कऽ अछि; खरीद लागतमे खरीदक ब्रोकरेज सम्मिलित अछि (FIFO)। टैक्स रिटर्नक लेल ओहि विनिमय दरपर बदलू जे अहाँक कर विभाग मँगैत अछि।';

  @override
  String get portfolioShare => 'प्रदर्शन साझा करू';

  @override
  String get portfolioShareHeading => 'हमर पोर्टफ़ोलियो';

  @override
  String get portfolioTopHoldings => 'सभसँ पैघ पोजीशन';

  @override
  String get portfolioShareNote => 'केवल प्रतिशत साझा होइत अछि, कोनो राशि नहि।';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count पोजीशन',
      one: '1 पोजीशन',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'निवेशक सलाह नहि';

  @override
  String get contributionButton => 'नव पाइ निवेश करू';

  @override
  String contributionAmount(String currency) {
    return 'निवेशक राशि ($currency)';
  }

  @override
  String get contributionHint =>
      'केवल खरीद, बिक्री नहि: जे पोजीशन अपन लक्ष्यसँ सभसँ बेसी पाछाँ अछि, तकरा पहिने पाइ भेटैत अछि।';

  @override
  String contributionShares(String shares) {
    return '≈ $shares शेयर';
  }

  @override
  String contributionMissing(String symbols) {
    return '$symbols लेल वर्तमान दाम उपलब्ध नहि अछि: बँटवारामे शामिल नहि कएल गेल।';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'जँ वार्षिक रिटर्न ($rate) एहिना बनल रहत, तँ अहाँ $year क आसपास लक्ष्य धरि पहुँचि जाएब।';
  }

  @override
  String get portfolioMaxDrawdown => 'सभसँ पैघ गिरावट';

  @override
  String get glossMaxDrawdown =>
      'अहाँक शेयरक मूल्यमे पहिलुका कोनो शिखरसँ बादक कोनो निचला स्तर धरिक सभसँ पैघ गिरावट, अहाँक कीनब-बेचबक प्रभावक बिना (समय-भारित)। ई देखबैत अछि जे अहाँक पोर्टफ़ोलियो एखन धरि कतेक गहींर गिरावट झेलि चुकल अछि।';

  @override
  String watchSince(String date) {
    return 'पसंदीदामे जोड़लाक बादसँ ($date)';
  }

  @override
  String get portfolioSampleTry => 'नमूना पोर्टफ़ोलियोसँ आजमाउ';

  @override
  String get portfolioSampleBanner =>
      'ई एकटा नमूना पोर्टफ़ोलियो अछि। एकर संग अपन खरीदारी जोड़ू, वा एकरा हटाउ।';

  @override
  String get portfolioSampleRemove => 'नमूना हटाउ';

  @override
  String get portfolioStopsAll => 'सभ पोजीशन लेल ट्रेलिंग स्टॉप';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ट्रेलिंग स्टॉप लगाओल गेल',
      one: '1 ट्रेलिंग स्टॉप लगाओल गेल',
      zero: 'सभ पोजीशन पर पहिनहिसँ ट्रेलिंग स्टॉप लागल अछि',
    );
    return '$_temp0';
  }

  @override
  String portfolioSinceSale(String percent) {
    return 'बेचलाक बादसँ $percent';
  }

  @override
  String get lotPreviewRealized => 'एहि बिक्रीपर प्राप्त (FIFO):';

  @override
  String lotPreviewAverage(String after, String before) {
    return 'नव औसत लागत: $after (एखन $before)';
  }

  @override
  String get portfolioYtdReturn => 'एहि सालक रिटर्न';

  @override
  String get glossTwrYtd =>
      'सालक शुरुआतसँ (वा अहाँक पहिल कीनबसँ, जँ ओ एही साल भेल छल) समय-भारित रिटर्न: प्रत्येक दिन ओहि दिन अहाँ लग रहल शेयरक बदलाव गनैत अछि, आ दिन सभकेँ एक-दोसरसँ जोड़ल जाइत अछि – जे पाइ अहाँ डालैत छी वा निकालैत छी से रिटर्न नहि अछि, तेँ एकर तुलना कोनो इंडेक्ससँ कयल जा सकैत अछि। नीचाँ: ओही अवधिमे चुनल इंडेक्स।';

  @override
  String alertDistance(String price, String percent) {
    return 'एखन $price · $percent बाँकी';
  }

  @override
  String get watchSortSince => 'जोड़लाक बादक बदलाव अनुसार';

  @override
  String get portfolioTodayMovers => 'आइ सभसँ बेसी हिलल:';

  @override
  String get lotNoteAdd => 'नोट जोड़ू';

  @override
  String get lotNoteBuyHint =>
      'अहाँ किएक कीनि रहल छी? ई तिथिक संग शेयरक नोटमे जुड़ि जाएत।';

  @override
  String get lotNoteSellHint =>
      'अहाँ किएक बेचि रहल छी? ई तिथिक संग शेयरक नोटमे जुड़ि जाएत।';

  @override
  String get lotNoteBought => 'कीनल';

  @override
  String get positionHeld => 'रखबाक अवधि';

  @override
  String durationMonths(int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months मास',
      one: '$months मास',
    );
    return '$_temp0';
  }

  @override
  String durationDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days दिन',
      one: '$days दिन',
    );
    return '$_temp0';
  }

  @override
  String positionHeldSince(String date) {
    return '$dateसँ';
  }

  @override
  String lotPreviewWeight(String after, String before) {
    return 'बादमे पोर्टफ़ोलियोमे हिस्सा: $after (एखन $before)';
  }

  @override
  String lotFromCash(String amount) {
    return 'नकद सँ भुगतान करू (एखन $amount)';
  }

  @override
  String lotToCash(String amount) {
    return 'नकद मे जोड़ू (एखन $amount)';
  }

  @override
  String get onboardTitle4 => 'अपन पोर्टफ़ोलियो पर नजरि राखू';

  @override
  String get onboardBody4 =>
      'अपन ब्रोकरक एक्सपोर्ट इम्पोर्ट करू (Revolut, Trading 212, IBKR, DEGIRO, Schwab…) वा सौदा हाथसँ जोड़ू: कोनो इंडेक्सक तुलनामे अपन रिटर्न, अपन डिविडेंड आ कर रिटर्नक लेल वार्षिक सारांश देखू।';

  @override
  String get lotEdit => 'बदलू';

  @override
  String lotEditTitle(String symbol) {
    return 'लेन-देन बदलू · $symbol';
  }

  @override
  String get lotSave => 'सेव करू';

  @override
  String dividendEditTitle(String symbol) {
    return 'डिविडेंड बदलू · $symbol';
  }

  @override
  String get activityTitle => 'सभ लेन-देन';

  @override
  String get activitySearchHint => 'टिकर सँ फ़िल्टर करू';

  @override
  String get activityNoMatch => 'फ़िल्टर सँ कोनो लेन-देन मेल नहि खाइत अछि।';

  @override
  String portfolioImportDuplicates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count पहिनहिसँ दर्ज अछि, छोड़ल गेल',
      one: '1 पहिनहिसँ दर्ज अछि, छोड़ल गेल',
    );
    return '$_temp0';
  }

  @override
  String get tickerChange => 'टिकर बदलाव';

  @override
  String tickerChangeTitle(String symbol) {
    return 'टिकर बदलाव · $symbol';
  }

  @override
  String get tickerChangeNew => 'नव टिकर';

  @override
  String get tickerChangeHint =>
      'जखन कोनो कंपनी अपन टिकर बदलैत अछि (जेना FB → META): सभ लेन-देन, डिविडेंड, स्टॉक स्प्लिट, नोट आ अलर्ट नव टिकर पर चलि जाइत अछि।';

  @override
  String tickerChanged(String symbol) {
    return '$symbol पर लऽ जाओल गेल';
  }

  @override
  String get referralErrSignIn =>
      'मित्रक कोड रिडीम करबाक लेल अपन ई-मेलसँ साइन इन करू।';

  @override
  String get referralErrFull => 'ई कोड पहिनहि अधिकतम बेर रिडीम भऽ चुकल अछि।';

  @override
  String portfolioGoalReachedBody(String value) {
    return 'आब अहाँक पोर्टफ़ोलियोक मूल्य $value अछि।';
  }

  @override
  String get errAiTruncated =>
      'विश्लेषण पूरा होबाक पहिने अधूरा रहि गेल। कृपया फेरसँ प्रयास करू – एहिसँ अहाँक कोटा खर्च नहि भेल।';

  @override
  String get errImageUnsupported =>
      'ई चित्र पढ़ल नहि जा सकल। एकरा JPEG वा PNG रूपमे सेव करू आ फेरसँ प्रयास करू।';

  @override
  String get errRateLimited =>
      'कम समयमे बहुत बेसी अनुरोध पठाओल गेल। कृपया एक मिनट प्रतीक्षा करू आ फेरसँ प्रयास करू।';

  @override
  String get watchListNameTaken => 'एहि नामक सूची पहिनहिसँ अछि।';

  @override
  String watchListLimit(int max) {
    return 'अहाँ अधिकतम $max टा सूची राखि सकैत छी।';
  }

  @override
  String portfolioBuyBelowSold(String quantity) {
    return 'कमसँ कम $quantity – एतेक पहिनहि बेचल जा चुकल अछि';
  }

  @override
  String get restoreNothing =>
      'पुनर्स्थापित करबाक लेल पहिलुका कोनो खरीदारी नहि भेटल।';

  @override
  String get manageSubscriptionElsewhere =>
      'एतय प्रबंधित करबाक लेल कोनो सदस्यता नहि अछि। App Store वा Google Play मे कीनल सदस्यता स्टोरक सेटिंग्समे प्रबंधित होइत अछि।';

  @override
  String get backupFailed => 'बैकअप सेव नहि भऽ सकल। कृपया फेरसँ प्रयास करू।';

  @override
  String get syncTooLarge =>
      'अहाँक डेटा खाता संग सिंक करबाक लेल बहुत पैघ अछि। जे लेन-देन वा नोटक आब काज नहि अछि, से मेटाउ, तखन ई फेर प्रयास करत।';

  @override
  String get noteFull =>
      'एहि शेयरक नोट भरि गेल अछि, तेँ ई एंट्री नहि जोड़ल गेल। नोट छोट करू आ फेरसँ प्रयास करू।';

  @override
  String portfolioNoRateFor(String symbols) {
    return '$symbols लेल विनिमय दर उपलब्ध नहि अछि।';
  }

  @override
  String dividendsNotConverted(int count, String currencies) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          '$currenciesमे $count डिविडेंडक विनिमय दर उपलब्ध नहि अछि, तेँ ई सभ कुल योगमे शामिल नहि अछि।',
      one:
          '$currenciesमे 1 डिविडेंडक विनिमय दर उपलब्ध नहि अछि, तेँ ई कुल योगमे शामिल नहि अछि।',
    );
    return '$_temp0';
  }

  @override
  String get signOutTitle => 'की अहाँ साइन आउट करऽ चाहैत छी?';

  @override
  String get signOutBody =>
      'अहाँक पोर्टफ़ोलियो, सूची, दाम अलर्ट आ नोट अहाँक खातामे रहत आ एहि डिवाइससँ हटा देल जाएत। एकरा सभकेँ घुराबऽ लेल फेर साइन इन करू।';

  @override
  String get signOutUnsaved =>
      'किछु बदलाव अहाँक खातामे सहेजल नहि जा सकल (कनेक्शन नहि अछि की?)। जँ अहाँ एखन साइन आउट करब, तँ ई सभ हेरा जाएत।';

  @override
  String get signOutAnyway => 'तैयो साइन आउट करू';

  @override
  String get fileTooLarge => 'ई फाइल एतय खोलबाक लेल बहुत पैघ अछि।';

  @override
  String portfolioAnnualSummaryYear(String year) {
    return '$year क वार्षिक सारांश';
  }

  @override
  String portfolioSoldRow(String quantity, String price) {
    return 'बेचल $quantity × $price';
  }

  @override
  String get subscribedInStore =>
      'अहाँ लग पहिनेसँ App Store वा Google Play द्वारा सदस्यता अछि। अपन प्लान बदलबाक लेल ओहि स्टोरक सदस्यता सेटिंग्सक उपयोग करू।';

  @override
  String get portfolioGoalSet => 'लक्ष्य निर्धारित करू';

  @override
  String get portfolioGoalTitle => 'पोर्टफ़ोलियो लक्ष्य';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · लक्ष्य: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'लक्ष्य पूरा भेल: $amount';
  }

  @override
  String get portfolioGoalRemove => 'लक्ष्य हटाउ';

  @override
  String get alertEdit => 'अलर्ट बदलू';

  @override
  String get positionOpenLots => 'एखनो अहाँ लग (सभसँ पुरान पहिने)';

  @override
  String get lotRemoved => 'लेन-देन मेटाओल गेल';

  @override
  String get alertDeleted => 'अलर्ट मेटाओल गेल';

  @override
  String get alertsClearTriggered => 'ट्रिगर भेल अलर्ट साफ करू';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count अलर्ट साफ कएल गेल',
      one: '1 अलर्ट साफ कएल गेल',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'होम स्क्रीन';

  @override
  String get allocationCountries => 'देश';

  @override
  String get newsExplainNoteResearch =>
      'AI व्याख्या: ई वेब पर तथ्य खोजैत अछि, लेख खोलैत अछि आ परखैत अछि जे स्रोत कतेक भरोसेमंद अछि। ई निवेशक सलाह नहि अछि। ई अहाँक दैनिक प्रश्न-सीमासँ जाइत अछि, कोनो विश्लेषण खर्च नहि होइत अछि।';

  @override
  String get sourceOfficial => 'आधिकारिक';

  @override
  String get sourcePressRelease => 'प्रेस विज्ञप्ति';

  @override
  String get sourceMajorNews => 'पैघ मीडिया';

  @override
  String get sourceOpinion => 'विचार';

  @override
  String get earningsSummaryButton => 'नवीनतम रिपोर्टमे की छल?';

  @override
  String get earningsSummaryNote =>
      'कंपनीक परिणाम घोषणा आ वेबपर भेटल मीडिया कवरेजक AI सारांश। ई निवेशक सलाह नहि अछि। ई अहाँक दैनिक प्रश्न-सीमासँ जाइत अछि, कोनो विश्लेषण खर्च नहि होइत अछि।';

  @override
  String get compareLastSurprise => 'पछिला त्रैमासिक EPS बनाम अनुमानित';

  @override
  String get compareNextReport => 'अगिला रिपोर्ट';

  @override
  String get resolvingDescription =>
      'पता लगाओल जा रहल अछि जे अहाँ कोन शेयरक बात कऽ रहल छी…';

  @override
  String get instrumentTitle => 'एहि इंस्ट्रूमेंटक बारेमे';

  @override
  String get instrumentHint =>
      'एहि सिंबलक लेल कोनो कंपनी प्रोफाइल नहि अछि – ई ETF, फंड वा डिपॉजिटरी रिसीट भऽ सकैत अछि। AI सँ पुछू जे ई की अछि, एहिमे की अछि आ एकर खर्च कतेक अछि।';

  @override
  String get instrumentAsk => 'ई की अछि?';

  @override
  String get instrumentNote =>
      'जारीकर्ताक फंड पेज आ वेबपर भेटल वित्तीय साइटसँ AI व्याख्या। ई निवेशक सलाह नहि अछि। ई अहाँक दैनिक प्रश्न-सीमासँ जाइत अछि, कोनो विश्लेषण खर्च नहि होइत अछि।';

  @override
  String suggestAskAi(String query) {
    return 'AI सँ पुछू: “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return '$symbols लेल वर्तमान दाम उपलब्ध नहि अछि।';
  }

  @override
  String get eventsRecentResults => 'हालहि रिपोर्ट कएल गेल परिणाम';

  @override
  String get saveToNotes => 'हमर नोटमे सेव करू';

  @override
  String get savedToNotes => 'अहाँक नोटमे सेव भऽ गेल';

  @override
  String get portfolioDividendsReceived => 'प्राप्त डिविडेंड';

  @override
  String get portfolioDividendsThisYear => 'एहि साल';

  @override
  String get portfolioDividendsAllTime => 'आइ धरि';

  @override
  String get portfolioAddDividend => 'डिविडेंड जोड़ू';

  @override
  String portfolioDividendAmount(String currency) {
    return 'प्राप्त राशि ($currency)';
  }

  @override
  String get portfolioDividendDate => 'भुगतानक तारीख';

  @override
  String get portfolioDividendsEmpty =>
      'एखन धरि कोनो डिविडेंड दर्ज नहि अछि। हाथसँ जोड़ू, वा अपन ब्रोकरक एक्सपोर्ट इम्पोर्ट करू – ओकर डिविडेंड पंक्ति सेहो लेल जाइत अछि।';

  @override
  String get portfolioSplit => 'स्टॉक स्प्लिट';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'स्टॉक स्प्लिट: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'स्प्लिटसँ पहिनेक तारीखक खरीद आ बिक्री समायोजित कएल जाइत अछि: शेयरक संख्या गुणा आ प्रति शेयर दाम भाग कएल जाइत अछि, जाहिसँ लागत ओहिना रहैत अछि।';

  @override
  String get portfolioSplitRatio => 'अनुपात (नव : पुरान)';

  @override
  String get portfolioSplitRatioError =>
      '10:1 जकाँ अनुपात दिअ, वा रिवर्स स्प्लिट लेल 1:10।';

  @override
  String get portfolioSplitDate => 'स्प्लिटक तारीख';

  @override
  String portfolioSplitRow(String ratio) {
    return 'स्टॉक स्प्लिट $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'स्टॉक स्प्लिट हटाओल गेल';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count स्टॉक स्प्लिट जोड़ल गेल',
      one: '1 स्टॉक स्प्लिट जोड़ल गेल',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count डिविडेंड जोड़ल गेल',
      one: '1 डिविडेंड जोड़ल गेल',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'डिविडेंड एक्सपोर्ट करू (CSV)';

  @override
  String get portfolioDividendDeleted => 'डिविडेंड हटाओल गेल';

  @override
  String get portfolioDividendsHint =>
      'राशि जेना अहाँक खातामे आएल, भुगतानक मुद्रामे; कुल आइक दर पर बदलल जाइत अछि। टैक्स रिटर्नक लेल अपन ब्रोकरक स्टेटमेंट प्रयोग करू।';

  @override
  String get awayTitle => 'जखन अहाँ दूर छलहुँ';

  @override
  String awaySince(String when) {
    return '$when सँ';
  }

  @override
  String get awayQuiet => 'किछु खास नहि बदलल।';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count अलर्ट ट्रिगर भेल',
      one: '1 अलर्ट ट्रिगर भेल',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'परिणाम जारी केलक: $symbols';
  }

  @override
  String get moveWhyButton => 'आइ किएक घटि-बढ़ि रहल अछि?';

  @override
  String moveWhyTitle(String percent) {
    return 'आइ $percent';
  }

  @override
  String get moveWhyNote =>
      'वेब पर भेटल आइक खबरसँ AI द्वारा देल व्याख्या; असली कारण अज्ञात वा भिन्न भऽ सकैत अछि। निवेश सलाह नहि। अहाँक दैनिक प्रश्न कोटा उपयोग करैत अछि, विश्लेषण नहि।';

  @override
  String get sectionTechnical => 'तकनीकी चित्र';

  @override
  String get labelSma50 => '50 दिनक औसत';

  @override
  String get labelSma200 => '200 दिनक औसत';

  @override
  String get labelRsi => 'RSI (14 दिन)';

  @override
  String get labelVolatility30 => 'उतार-चढ़ाव (30 दिन)';

  @override
  String techAbove(String percent) {
    return '$percent ऊपर';
  }

  @override
  String techBelow(String percent) {
    return '$percent नीचाँ';
  }

  @override
  String get techOverbought => 'ओवरबॉट';

  @override
  String get techOversold => 'ओवरसोल्ड';

  @override
  String get techNeutral => 'तटस्थ';

  @override
  String get techGoldenCross =>
      '50 दिनक औसत 200 दिनक औसतसँ ऊपर अछि – पारंपरिक व्याख्याक अनुसार ऊपर जाइत प्रवृत्ति।';

  @override
  String get techDeathCross =>
      '50 दिनक औसत 200 दिनक औसतसँ नीचाँ अछि – पारंपरिक व्याख्याक अनुसार नीचाँ जाइत प्रवृत्ति।';

  @override
  String get glossSma50 =>
      'पछिला 50 कारोबारी दिनक औसत बंद भाव। एहिसँ ऊपरक भावकेँ प्रायः अल्पकालिक मजगूती, नीचाँक भावकेँ कमजोरी मानल जाइत अछि।';

  @override
  String get glossSma200 =>
      'पछिला 200 कारोबारी दिनक औसत बंद भाव – पारंपरिक दीर्घकालिक प्रवृत्ति रेखा। बहुत निवेशक एहिसँ ऊपरक भावकेँ दीर्घकालिक ऊपर जाइत प्रवृत्ति मानैत छथि।';

  @override
  String get glossRsi =>
      'रिलेटिव स्ट्रेंथ इंडेक्स: हालक लाभकेँ हालक घाटासँ 0–100 क पैमाना पर तुलना करैत अछि। 70 सँ ऊपर शेयरकेँ प्रायः ओवरबॉट (तेजीसँ बढ़ल) आ 30 सँ नीचाँ ओवरसोल्ड कहल जाइत अछि – मुदा मजगूत प्रवृत्ति ओतए बहुत दिन धरि रहि सकैत अछि।';

  @override
  String get glossVolatility =>
      'भाव रोज कतेक ऊपर-नीचाँ होइत अछि, सालक हिसाबसँ: 20% क अर्थ जे सामान्य सालमे भाव लगभग ±20% क भीतर चलैत अछि। बेसी उतार-चढ़ावक अर्थ दुनू दिस पैघ चाल।';

  @override
  String get techNote =>
      'दैनिक बंद भावसँ गणना कएल गेल। तकनीकी संकेत बीतल समय बतबैत अछि, भविष्य नहि।';

  @override
  String portfolioAbove200(int above, int count) {
    return '$count मे सँ $above पोजीशन अपन 200 दिनक औसत सँ ऊपर';
  }

  @override
  String get watchSignalsTitle => 'संकेत';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · ओवरसोल्ड';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · ओवरबॉट';
  }

  @override
  String get signalCrossedAbove => '200 दिनक औसतसँ ऊपर गेल';

  @override
  String get signalCrossedBelow => '200 दिनक औसतसँ नीचाँ गेल';

  @override
  String get signalAlertsTitle => 'तकनीकी संकेत सूचना';

  @override
  String get signalAlertsSubtitle =>
      'दिनमे एक बेर, जखन अहाँ जे स्टॉक फॉलो करैत छी से ओवरसोल्ड वा ओवरबॉट (RSI) भऽ जाए, वा ओकर दाम 200 दिनक औसत पार करए।';

  @override
  String get signalAlertsNotification => 'तकनीकी संकेत';

  @override
  String get glossaryPageTitle => 'शब्दावली';

  @override
  String get glossaryPageSubtitle =>
      'ऐपमे देखाओल हरेक आँकड़ाक सरल व्याख्या, P/E सँ RSI धरि';

  @override
  String get glossarySearchHint => 'शब्दावलीमे खोजू';

  @override
  String get portfolioCash => 'नकद';

  @override
  String get portfolioCashTitle => 'नकद बैलेंस';

  @override
  String get portfolioCashHint =>
      'अहाँक ब्रोकरक लग बिना निवेश केल पाइ, मुद्राक अनुसार। ई कुल मूल्य आ आवंटनमे गानल जाइत अछि; रिटर्नमे नहि।';

  @override
  String portfolioCashAmount(String currency) {
    return 'राशि ($currency)';
  }

  @override
  String get portfolioCashEdit => 'नकद बैलेंस सेट करू';

  @override
  String get portfolioDividendsByMonth => 'मासक अनुसार';

  @override
  String get dividendsLegendReceived => 'प्राप्त';

  @override
  String get dividendsLegendExpected => 'अपेक्षित';

  @override
  String get portfolioDividendsExpected => 'अगिला अपेक्षित';

  @override
  String get portfolioDividendsExpectedNote =>
      'अहाँ द्वारा दर्ज भुगतानक तारीख आ राशिसँ अनुमानित; कंपनी एकरा बदलि सकैत अछि वा छोड़ि सकैत अछि।';

  @override
  String portfolioDividendAround(String date) {
    return 'लगभग $date';
  }
}
