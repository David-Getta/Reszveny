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
    return '$count अतिरिक्त विश्लेषण';
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
      'केवल एही डिवाइस पर सहेजल जाइत अछि। कुल योग ECB क संदर्भ दर पर बदलल जाइत अछि; दाममे देरी भऽ सकैत अछि।';

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
