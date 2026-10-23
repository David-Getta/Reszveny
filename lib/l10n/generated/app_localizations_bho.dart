// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bhojpuri (`bho`).
class AppLocalizationsBho extends AppLocalizations {
  AppLocalizationsBho([String locale = 'bho']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'कवनो शेयर के फोटो खींचीं आ ओकरा बारे में सब कुछ जानीं।';

  @override
  String get homeHint =>
      'शेयर सर्टिफिकेट, ब्रोकरेज ऐप के स्क्रीन, अखबार भा कंपनी के लोगो – कुछुओ जवना से कवनो शेयर के पहचान होखे।';

  @override
  String get takePhoto => 'फोटो खींचीं';

  @override
  String get chooseFromGallery => 'गैलरी से चुनीं';

  @override
  String get chooseImage => 'तस्वीर चुनीं';

  @override
  String get enterTickerManually => 'टिकर खुद लिखीं';

  @override
  String get tickerInputLabel => 'टिकर सिंबल';

  @override
  String get tickerInputHint => 'जइसे AAPL';

  @override
  String get lookUp => 'खोजीं';

  @override
  String demoModeBanner(String symbols) {
    return 'डेमो मोड – कवनो मार्केट डेटा की कॉन्फ़िगर नइखे। नमूना डेटा एह खातिर उपलब्ध बा: $symbols।';
  }

  @override
  String get recognizing => 'तस्वीर के विश्लेषण हो रहल बा…';

  @override
  String get loadingData => 'डेटा लोड हो रहल बा…';

  @override
  String get noCandidatesTitle => 'कवनो शेयर ना पहचानाइल';

  @override
  String get noCandidatesBody =>
      'हमनी एह तस्वीर में कवनो शेयर ना पहचान पवनी। अउरी साफ फोटो खींचीं, भा टिकर खुद लिखीं।';

  @override
  String get whatWeSaw => 'हमनी का देखनी';

  @override
  String get chooseCandidateTitle => 'रउआ कवन शेयर के बात करत रहनी?';

  @override
  String confidencePercent(int percent) {
    return '$percent% भरोसा';
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
      'ई ऐप खाली जानकारी देला आ ई निवेश के सलाह ना ह। डेटा में देरी भा गलती हो सकेला।';

  @override
  String dataSource(String source) {
    return 'डेटा स्रोत: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'पहचान: $source';
  }

  @override
  String get retry => 'फेर से कोसिस करीं';

  @override
  String get cancel => 'रद्द करीं';

  @override
  String get ok => 'ठीक बा';

  @override
  String get close => 'बंद करीं';

  @override
  String get errorGeneric => 'कुछ गड़बड़ हो गइल।';

  @override
  String get errorSectionUnavailable => 'ई हिस्सा लोड ना हो सकल।';

  @override
  String get notAvailable => 'उपलब्ध नइखे';

  @override
  String get sectionIdentity => 'पहचान';

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
  String get sectionNews => 'खबर';

  @override
  String get sectionRecognition => 'पहचान के विवरण';

  @override
  String get labelSymbol => 'टिकर';

  @override
  String get labelExchange => 'एक्सचेंज';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'मुद्रा';

  @override
  String get labelCountry => 'देस';

  @override
  String get labelIndustry => 'उद्योग';

  @override
  String get labelSector => 'सेक्टर';

  @override
  String get labelWebsite => 'वेबसाइट';

  @override
  String get labelIpoDate => 'IPO तारीख';

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
  String get labelLastPrice => 'आखिरी दाम';

  @override
  String get labelChange => 'बदलाव';

  @override
  String get labelOpen => 'ओपन';

  @override
  String get labelDayHigh => 'दिन के सबसे ऊँच';

  @override
  String get labelDayLow => 'दिन के सबसे नीचे';

  @override
  String get labelPreviousClose => 'पिछला क्लोज';

  @override
  String get labelWeek52High => '52 हप्ता के सबसे ऊँच';

  @override
  String get labelWeek52Low => '52 हप्ता के सबसे नीचे';

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
  String get labelDebtToEquity => 'करजा / इक्विटी';

  @override
  String get labelCurrentRatio => 'करंट रेशियो';

  @override
  String get labelRevenueGrowth => 'राजस्व बढ़ोतरी (YoY)';

  @override
  String get labelEpsGrowth => 'EPS बढ़ोतरी (YoY)';

  @override
  String get labelDividendYield => 'लाभांश यील्ड';

  @override
  String get labelDividendPerShare => 'प्रति शेयर लाभांश';

  @override
  String get labelPayoutRatio => 'पेआउट अनुपात';

  @override
  String get labelYieldOnCost => 'लागत पर यील्ड';

  @override
  String get labelDividendGrowth5y => 'लाभांश बढ़ोतरी (5 साल)';

  @override
  String get dividendNone => 'पिछला 12 महीना में कवनो लाभांश ना दिहल गइल।';

  @override
  String get dividendOnYourShares => 'रउआ शेयर पर, सालाना';

  @override
  String get labelConsensus => 'आम राय';

  @override
  String get ratingStrongBuy => 'जोरदार खरीद';

  @override
  String get ratingBuy => 'खरीद';

  @override
  String get ratingHold => 'होल्ड';

  @override
  String get ratingSell => 'बिक्री';

  @override
  String get ratingStrongSell => 'जोरदार बिक्री';

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
  String get noNews => 'हाल के कवनो खबर नइखे।';

  @override
  String get openArticle => 'लेख खोलीं';

  @override
  String get openLinkFailed => 'लिंक ना खुल सकल।';

  @override
  String get recognitionSummary => 'सारांश';

  @override
  String get recognitionEvidence => 'हमनी के अइसन काहे लागत बा';

  @override
  String get recognitionRawText => 'तस्वीर से पढ़ल गइल टेक्स्ट';

  @override
  String get errMissingAnthropicKey =>
      'तस्वीर पहचान कॉन्फ़िगर नइखे (ANTHROPIC_API_KEY नइखे)। टिकर खुद लिखीं।';

  @override
  String get errRecognitionUnreachable =>
      'पहचान सेवा से संपर्क ना हो सकल। आपन इंटरनेट कनेक्शन जाँचीं।';

  @override
  String errRecognitionHttp(String status) {
    return 'पहचान सेवा एगो गड़बड़ी लौटवलस (HTTP $status)।';
  }

  @override
  String get errRecognitionRefused =>
      'पहचान सेवा एह तस्वीर के प्रोसेस ना कर सकल।';

  @override
  String get errRecognitionTruncated =>
      'पहचान के जवाब अधूरा रह गइल। कृपया फेर से कोसिस करीं।';

  @override
  String get errRecognitionBadResponse => 'पहचान सेवा से अप्रत्याशित जवाब।';

  @override
  String get errRecognitionEmpty => 'पहचान सेवा खाली जवाब लौटवलस।';

  @override
  String get errMissingFinnhubKey =>
      'मार्केट डेटा कॉन्फ़िगर नइखे (FINNHUB_API_KEY नइखे)।';

  @override
  String get errMarketUnreachable =>
      'मार्केट डेटा सेवा से संपर्क ना हो सकल। आपन इंटरनेट कनेक्शन जाँचीं।';

  @override
  String get errMarketRateLimited =>
      'मार्केट डेटा सेवा के बहुत जादा अनुरोध भेजाइल बा। कृपया एक मिनट रुकीं।';

  @override
  String errMarketHttp(String status) {
    return 'मार्केट डेटा सेवा एगो गड़बड़ी लौटवलस (HTTP $status)।';
  }

  @override
  String get errMarketBadResponse => 'मार्केट डेटा सेवा से अप्रत्याशित जवाब।';

  @override
  String errNoQuote(String symbol) {
    return '$symbol खातिर दाम के कवनो डेटा ना मिलल।';
  }

  @override
  String errNoProfile(String symbol) {
    return '$symbol खातिर कवनो कंपनी प्रोफ़ाइल ना मिलल।';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'डेमो मोड खाली $symbols के सपोर्ट करेला। लाइव डेटा खातिर FINNHUB_API_KEY जोड़ीं।';
  }

  @override
  String errUnknown(String detail) {
    return 'कुछ गड़बड़ हो गइल: $detail';
  }

  @override
  String get newSearch => 'नया खोज';

  @override
  String get recentSearches => 'हाल के';

  @override
  String get noRecentSearches => 'अबहीं ले हाल के कवनो खोज नइखे।';

  @override
  String get clearRecent => 'हाल के खोज मिटाईं';

  @override
  String get greeting => 'आज कवन शेयर देखल जाव?';

  @override
  String get searchHint => 'टिकर भा कंपनी के नाम';

  @override
  String get attachImage => 'तस्वीर जोड़ीं';

  @override
  String get searchResultsTitle => 'खोज के नतीजा';

  @override
  String errNoResults(String query) {
    return '“$query” खातिर कवनो शेयर ना मिलल।';
  }

  @override
  String get quickBarHint => 'टिकर भा कंपनी के नाम टाइप करीं…';

  @override
  String get openFullWindow => 'विंडो खोलीं';

  @override
  String hotkeyHint(String shortcut) {
    return 'कहीं से WhatStock खोले खातिर $shortcut दबाईं।';
  }

  @override
  String get trayOpen => 'WhatStock खोलीं';

  @override
  String get trayQuickSearch => 'झटपट खोज';

  @override
  String get trayQuit => 'बाहर निकलीं';

  @override
  String get appearance => 'रूप-रंग';

  @override
  String get themeSystem => 'सिस्टम';

  @override
  String get themeDark => 'डार्क';

  @override
  String get themeLight => 'लाइट';

  @override
  String get back => 'पाछे';

  @override
  String get aiSectionTitle => 'AI विश्लेषण';

  @override
  String get aiIntro =>
      'AI के लिखल विस्तृत समीक्षा: हाल के खबरन के सारांश, कारोबार, मजबूती, जोखिम आ लुकाइल कारक, मूल्यांकन, मनोवैज्ञानिक, सामाजिक, तकनीकी आ मैक्रो नजरिया से परिदृश्य के संगे दाम के अनुमान, आ कवना बात पर नजर राखे के बा।';

  @override
  String get aiGenerate => 'विश्लेषण बनाईं';

  @override
  String get aiRegenerate => 'फेर से बनाईं';

  @override
  String get aiGenerating =>
      'विश्लेषण तइयार हो रहल बा… एह में एक-दू मिनट लाग सकेला।';

  @override
  String get aiSources => 'स्रोत';

  @override
  String aiGeneratedAt(String time) {
    return 'बनल $time';
  }

  @override
  String get aiDisclaimer =>
      'सार्वजनिक डेटा आ हाल के खबरन पर आधारित AI से बनल विश्लेषण। एह में गलती हो सकेला भा ई पुरान हो सकेला, आ ई निवेश के सलाह ना ह।';

  @override
  String get errAiNotConfigured =>
      'AI विश्लेषण कॉन्फ़िगर नइखे (ANTHROPIC_API_KEY नइखे)।';

  @override
  String get errAiUnreachable =>
      'AI सेवा से संपर्क ना हो सकल। आपन इंटरनेट कनेक्शन जाँचीं।';

  @override
  String errAiHttp(String status) {
    return 'AI सेवा एगो गड़बड़ी लौटवलस (HTTP $status)।';
  }

  @override
  String get errAiRefused => 'AI सेवा एह शेयर के विश्लेषण करे से मना कर दिहलस।';

  @override
  String get errAiBadResponse => 'AI सेवा से अप्रत्याशित जवाब।';

  @override
  String get sectionChart => 'दाम के चार्ट';

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
      'मौजूदा डेटा स्रोत से दाम के इतिहास उपलब्ध नइखे।';

  @override
  String get sectionStatements => 'वित्तीय विवरण (सालाना)';

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
  String get labelEquity => 'शेयरधारकन के इक्विटी';

  @override
  String get labelOperatingCashFlow => 'परिचालन कैश फ्लो';

  @override
  String get statementsUnavailable =>
      'एह शेयर खातिर प्रकाशित वित्तीय विवरण उपलब्ध नइखे।';

  @override
  String get launchAtLogin => 'लॉगिन पर चालू करीं';

  @override
  String get hotkeyLabel => 'ग्लोबल शॉर्टकट';

  @override
  String get hotkeyRecordHint => 'इहाँ क्लिक करीं, फेर नया कुंजी संयोजन दबाईं';

  @override
  String get hotkeyReset => 'डिफ़ॉल्ट पर रीसेट करीं';

  @override
  String get pasteImage => 'क्लिपबोर्ड से तस्वीर पेस्ट करीं';

  @override
  String get errClipboardNoImage => 'क्लिपबोर्ड में कवनो तस्वीर नइखे।';

  @override
  String get favorites => 'पसंदीदा';

  @override
  String get addToFavorites => 'पसंदीदा में जोड़ीं';

  @override
  String get removeFromFavorites => 'पसंदीदा से हटाईं';

  @override
  String get noFavorites =>
      'अबहीं ले कवनो पसंदीदा नइखे। जोड़े खातिर कवनो शेयर पर तारा टैप करीं।';

  @override
  String get displayCurrency => 'देखावे वाला मुद्रा';

  @override
  String get displayCurrencyNone => 'खाली शेयर के आपन मुद्रा';

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
  String get autoUpdate => 'अपडेट अपने आप इंस्टॉल करीं';

  @override
  String get checkForUpdates => 'अपडेट जाँचीं';

  @override
  String get updateChecking => 'अपडेट जाँचल जा रहल बा…';

  @override
  String get updateUpToDate => 'रउआ सबसे नया संस्करण पर बानी।';

  @override
  String updateAvailable(String version) {
    return 'संस्करण $version उपलब्ध बा।';
  }

  @override
  String get updateDownloading => 'अपडेट बैकग्राउंड में डाउनलोड हो रहल बा…';

  @override
  String get updateDownloaded =>
      'अपडेट तइयार बा। इंस्टॉल करे खातिर रीस्टार्ट करीं।';

  @override
  String get updateNow => 'अपडेट करीं';

  @override
  String get restartNow => 'रीस्टार्ट करीं';

  @override
  String get updatesViaStore => 'अपडेट ऐप स्टोर के जरिए अपने आप आवेला।';

  @override
  String get updateCheckFailed => 'अपडेट ना जाँचल जा सकल।';

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
  String get planNone => 'कवनो सक्रिय प्लान नइखे';

  @override
  String planAnalysesPerMonth(int count) {
    return 'हर महीना $count विश्लेषण';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$count विश्लेषण के संगे $days दिन के मुफ्त ट्रायल';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'ट्रायल के $days दिन बाकी',
      one: 'ट्रायल के 1 दिन बाकी',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'राउर मुफ्त ट्रायल खतम हो गइल। विश्लेषण जारी राखे खातिर कवनो प्लान चुनीं।';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'एह अवधि में $total में से $remaining विश्लेषण बाकी';
  }

  @override
  String extraCredits(int count) {
    return '$count अतिरिक्त विश्लेषण';
  }

  @override
  String renewsOn(String date) {
    return '$date के नवीकरण';
  }

  @override
  String get choosePlan => 'प्लान चुनीं';

  @override
  String get currentPlan => 'मौजूदा प्लान';

  @override
  String get subscribe => 'सदस्यता लीं';

  @override
  String get perMonth => '/ महीना';

  @override
  String get extraPacksTitle => 'अउरी चाहीं? अतिरिक्त विश्लेषण खरीदीं';

  @override
  String get extraPacksHint =>
      'अतिरिक्त विश्लेषण कबो खतम ना होला आ राउर महीनवारी कोटा के बाद इस्तेमाल होला।';

  @override
  String get buy => 'खरीदीं';

  @override
  String get restorePurchases => 'खरीदारी बहाल करीं';

  @override
  String get manageSubscription => 'सदस्यता सँभारीं';

  @override
  String get purchaseSuccess => 'धन्यवाद! राउर खरीदारी चालू हो गइल बा।';

  @override
  String get purchasePending => 'खरीदारी बाकी बा…';

  @override
  String get purchaseFailed => 'खरीदारी पूरा ना हो सकल।';

  @override
  String get purchaseCanceled => 'खरीदारी रद्द हो गइल।';

  @override
  String get billingUnavailable =>
      'एह प्लेटफ़ॉर्म पर खरीदारी अबहीं उपलब्ध नइखे। आपन फोन भा Mac पर सदस्यता लीं; राउर प्लान हर डिवाइस पर काम करी।';

  @override
  String get errQuotaExceeded =>
      'एह अवधि खातिर रउआ लगे कवनो विश्लेषण बाकी नइखे। आपन प्लान अपग्रेड करीं भा अतिरिक्त विश्लेषण खरीदीं।';

  @override
  String get errTrialExpired =>
      'राउर मुफ्त ट्रायल खतम हो गइल। जारी राखे खातिर कवनो प्लान चुनीं।';

  @override
  String get errNoPlan => 'AI विश्लेषण खातिर एगो सक्रिय प्लान जरूरी बा।';

  @override
  String get viewPlans => 'प्लान देखीं';

  @override
  String get usageTitle => 'इस्तेमाल';

  @override
  String get demoPurchaseNote =>
      'डेमो बिलिंग: एह प्लेटफ़ॉर्म पर खरीदारी सिमुलेट कइल जाला।';

  @override
  String get mostPopular => 'सबसे लोकप्रिय';

  @override
  String get bestValue => 'सबसे फायदेमंद';

  @override
  String get planFeaturesCommon =>
      'फोटो पहचान, लाइव डेटा, चार्ट, पसंदीदा आ सगरी 120 भाषा हर प्लान में शामिल बा। कोटा AI विश्लेषण पर लागू होला।';

  @override
  String get searchLanguages => 'भाषा खोजीं…';

  @override
  String get noLanguageMatch => 'कवनो भाषा मेल ना खाइल।';

  @override
  String get aiSettings => 'AI विश्लेषण';

  @override
  String get aiLength => 'लंबाई';

  @override
  String get aiDepthBrief => 'छोट';

  @override
  String get aiDepthStandard => 'मानक';

  @override
  String get aiDepthDeep => 'विस्तार से';

  @override
  String get aiDepthBriefDesc => 'जरूरी बात, झटपट।';

  @override
  String get aiDepthStandardDesc => 'हर हिस्सा के संगे पूरा रिपोर्ट।';

  @override
  String get aiDepthDeepDesc =>
      'अउरी वेब खोज, बराबरी के कंपनियन से तुलना आ गहिर विवरण।';

  @override
  String aiDepthWords(String min, String max) {
    return 'लगभग $min–$max शब्द';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count विश्लेषण खरच होला',
      one: '1 विश्लेषण खरच होला',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'पाठक के स्तर';

  @override
  String get aiReaderBeginner => 'शुरुआती';

  @override
  String get aiReaderExperienced => 'अनुभवी';

  @override
  String get aiReaderBeginnerDesc => 'सरल भाषा; हर तकनीकी शब्द समझावल जाला।';

  @override
  String get aiReaderExperiencedDesc =>
      'मानक वित्तीय शब्दावली के संगे गझिन पाठ।';

  @override
  String get aiCounterArgument => 'सबसे मजबूत उल्टा तर्क';

  @override
  String get aiCounterArgumentDesc =>
      'सारांश हमेशा अपने निष्कर्ष के खिलाफ सबसे मजबूत तर्क से खतम होला।';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'राउर प्लान में हर विश्लेषण पर जादा से जादा $count वेब खोज',
      one: 'राउर प्लान में हर विश्लेषण पर जादा से जादा 1 वेब खोज',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'प्लान के हिसाब से मानक लंबाई: सामान्य $normal, Pro $pro, Max $max, Ultra $ultra। छोट में 2 कम, विस्तार वाला में 2 जादा।';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'जादा से जादा $count वेब खोज',
      one: 'जादा से जादा 1 वेब खोज',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'हर विश्लेषण पर $count वेब खोज',
      one: 'हर विश्लेषण पर 1 वेब खोज',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'एह लंबाई खातिर $needed विश्लेषण चाहीं, बाकिर खाली $left बाकी बा। सेटिंग्स में छोट लंबाई चुनीं भा अउरी विश्लेषण लीं।';
  }

  @override
  String get outlookMarketMood => 'बाजार के मूड';

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
  String get scenarioBull => 'तेजी वाला परिदृश्य';

  @override
  String get scenarioBase => 'आधार परिदृश्य';

  @override
  String get scenarioBear => 'मंदी वाला परिदृश्य';

  @override
  String outlookCurrentPrice(String price) {
    return 'मौजूदा दाम: $price';
  }

  @override
  String get outlookKeyLevels => 'खास स्तर';

  @override
  String get keyLevelSupport => 'सपोर्ट';

  @override
  String get keyLevelResistance => 'रेजिस्टेंस';

  @override
  String get keyLevelAnchor => 'एंकर स्तर';

  @override
  String get upcomingEvents => 'आवे वाला घटना';

  @override
  String get outlookChartNote =>
      'अंदाजी दायरा; संभावना मोटा-मोटी अनुमान बा, भविष्यवाणी ना।';

  @override
  String get accountTitle => 'खाता';

  @override
  String get signIn => 'साइन इन करीं';

  @override
  String get signOut => 'साइन आउट करीं';

  @override
  String get notSignedIn => 'साइन इन नइखे';

  @override
  String get accountBenefit =>
      'साइन इन करीं, ताकि राउर सदस्यता रउआ के सगरी डिवाइस पर काम करे।';

  @override
  String get accountSyncedNote =>
      'राउर सदस्यता आ बाकी विश्लेषण हर डिवाइस पर एके जइसन रहेला।';

  @override
  String get signInTitle => 'WhatStock में साइन इन करीं';

  @override
  String get emailLabel => 'ईमेल पता';

  @override
  String get continueWithEmail => 'ईमेल से आगे बढ़ीं';

  @override
  String codeSentTo(String email) {
    return 'हमनी $email पर 6 अंक के कोड भेजले बानी। ई 10 मिनट ले मान्य बा।';
  }

  @override
  String get codeLabel => 'साइन-इन कोड';

  @override
  String get resendCode => 'नया कोड भेजीं';

  @override
  String get useDifferentEmail => 'दोसर ईमेल इस्तेमाल करीं';

  @override
  String get errInvalidCode => 'कोड गलत बा भा ओकर समय खतम हो गइल बा।';

  @override
  String get errInvalidEmail => 'कृपया एगो सही ईमेल पता लिखीं।';

  @override
  String get errSignInFailed =>
      'साइन इन ना हो सकल। आपन कनेक्शन जाँचीं आ फेर से कोसिस करीं।';

  @override
  String get checkoutWaiting =>
      'आपन ब्राउज़र में भुगतान पूरा करीं। पूरा होते ऐप अपने आप अपडेट हो जाई।';

  @override
  String get paymentViaStripe =>
      'Stripe के जरिए राउर ब्राउज़र में सुरक्षित भुगतान। जब चाहीं रद्द करीं।';

  @override
  String get paymentViaStore =>
      'भुगतान राउर App Store भा Google Play खाता से होला। स्टोर सेटिंग्स में जब चाहीं रद्द करीं।';

  @override
  String get keySpace => 'स्पेस';

  @override
  String get doubleOptionTitle => 'Option दू बेर दबाईं';

  @override
  String get doubleOptionSubtitle =>
      'Option कुंजी के जल्दी-जल्दी दू बेर दबवला से भी WhatStock खुल जाला।';

  @override
  String get doubleOptionPermission =>
      'दोसरो ऐप में ई काम करे, एह खातिर सिस्टम सेटिंग्स → गोपनीयता आ सुरक्षा → इनपुट मॉनिटरिंग में WhatStock के अनुमति दीं, फेर ऐप दोबारा खोलीं।';

  @override
  String get openSystemSettings => 'सिस्टम सेटिंग्स खोलीं';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'कहीं से WhatStock खोले खातिर $shortcut दबाईं भा Option दू बेर दबाईं।';
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
      other: '$years साल',
      one: '1 साल',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range सालाना';
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
  String get confidenceHigh => 'ऊँच भरोसा';

  @override
  String get longTermNote =>
      'लंबा समय के दायरा बतावल गइल मान्यता पर टिकल बा आ समय के संगे चौड़ा होत जाला। दाम में लाभांश शामिल नइखे। मोटा-मोटी अनुमान बा, भविष्यवाणी ना।';

  @override
  String get portfolio => 'पोर्टफ़ोलियो';

  @override
  String get portfolioEmpty =>
      'इहाँ अबहीं कुछ नइखे। कवनो शेयर खोलीं आ आपन होल्डिंग पर नजर राखे खातिर “पोर्टफ़ोलियो में जोड़ीं” पर टैप करीं।';

  @override
  String get portfolioLocalNote =>
      'एही डिवाइस पर, आ साइन इन रहला पर राउर खाता में भी सहेजल जाला। कुल जोड़ ECB के संदर्भ दर पर बदलल जाला; दाम में देरी हो सकेला।';

  @override
  String get addToPortfolio => 'पोर्टफ़ोलियो में जोड़ीं';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol जोड़ीं';
  }

  @override
  String get portfolioQuantity => 'शेयर के संख्या';

  @override
  String portfolioBuyPrice(String currency) {
    return 'प्रति शेयर दाम ($currency)';
  }

  @override
  String get portfolioBuyDate => 'खरीद के तारीख';

  @override
  String get portfolioAdd => 'जोड़ीं';

  @override
  String get portfolioInvalidNumber => 'शून्य से बड़ संख्या लिखीं।';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol राउर पोर्टफ़ोलियो में जोड़ल गइल।';
  }

  @override
  String get portfolioTotalValue => 'कुल मूल्य';

  @override
  String get portfolioToday => 'आज';

  @override
  String get portfolioGainLoss => 'फायदा/नुकसान';

  @override
  String homeDividendsThisYear(String amount) {
    return 'ए साल के डिविडेंड: $amount';
  }

  @override
  String get portfolioInvested => 'निवेश';

  @override
  String get portfolioAllocation => 'बँटवारा';

  @override
  String get portfolioPositions => 'पोजीशन';

  @override
  String portfolioAvgCost(String price) {
    return 'औसत लागत $price';
  }

  @override
  String get portfolioYourPosition => 'राउर पोजीशन';

  @override
  String get portfolioPurchases => 'खरीदारी';

  @override
  String get portfolioRemove => 'हटाईं';

  @override
  String get portfolioExcluded =>
      'जवना पोजीशन के दाम भा विनिमय दर नइखे, ऊ कुल जोड़ में शामिल नइखे।';

  @override
  String get priceAlerts => 'दाम अलर्ट';

  @override
  String get setPriceAlert => 'दाम अलर्ट सेट करीं';

  @override
  String alertDialogTitle(String symbol) {
    return 'दाम अलर्ट · $symbol';
  }

  @override
  String get alertKindAbove => 'एकरा से ऊपर जाव';

  @override
  String get alertKindBelow => 'एकरा से नीचे आवे';

  @override
  String get alertKindMove => 'एक दिन में बहुत उतार-चढ़ाव होखे';

  @override
  String alertTargetPrice(String currency) {
    return 'दाम ($currency)';
  }

  @override
  String get alertMovePercent => 'रोज के बदलाव (%)';

  @override
  String get alertAlreadyMet => 'दाम पहिलहीं एह स्तर से आगे बा।';

  @override
  String get alertSave => 'अलर्ट सेट करीं';

  @override
  String alertCreated(String symbol) {
    return '$symbol खातिर अलर्ट सेट हो गइल।';
  }

  @override
  String get alertsEmpty =>
      'अबहीं ले कवनो दाम अलर्ट नइखे। कवनो शेयर खोलीं आ अलर्ट लगावे खातिर घंटी पर टैप करीं।';

  @override
  String get alertsNote =>
      'जब ले WhatStock चलत बा, अलर्ट हर 5 मिनट पर जाँचल जाला। कंप्यूटर पर ई मेनू बार भा ट्रे में चलत रहेला; फोन पर फिलहाल अलर्ट तबे आवेला जब ऐप खुलल रहे।';

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
    return 'रोज के बदलाव ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return '$date के $price पर चालू भइल';
  }

  @override
  String get alertRearm => 'फेर से चालू करीं';

  @override
  String get alertDelete => 'मिटाईं';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol $price से ऊपर गइल';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol $price से नीचे आइल';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol आज $percent हिलल';
  }

  @override
  String alertHitBody(String price) {
    return 'मौजूदा दाम: $price';
  }

  @override
  String get alertOpen => 'खोलीं';

  @override
  String get keepInTrayTitle => 'विंडो बंद भइला पर भी चलत रहे';

  @override
  String get keepInTraySubtitle =>
      'WhatStock मेनू बार भा ट्रे में रहेला, जेसे शॉर्टकट आ दाम अलर्ट काम करत रहे।';

  @override
  String get termsOfUse => 'इस्तेमाल के शर्त';

  @override
  String get privacyPolicy => 'गोपनीयता नीति';

  @override
  String get subscriptionLegal =>
      'जब ले रउआ रद्द ना करब, सदस्यता हर महीना अपने आप नया हो जाला। सदस्यता लेके रउआ इस्तेमाल के शर्त आ गोपनीयता नीति मान लेत बानी।';

  @override
  String get deleteAccount => 'खाता मिटाईं';

  @override
  String get deleteAccountTitle => 'का रउआ आपन खाता मिटावे के चाहत बानी?';

  @override
  String get deleteAccountBody =>
      'राउर खाता आ हमनी के सर्वर पर रखल सब कुछ (ईमेल, कोटा, इस्तेमाल) हमेशा खातिर मिट जाई, आ बिना इस्तेमाल भइल विश्लेषण खतम हो जाई। ब्राउज़र में भुगतान कइल सदस्यता तुरंत रद्द हो जाला; App Store भा Google Play के सदस्यता स्टोर के सेटिंग्स में रद्द करे के पड़ी।';

  @override
  String get deleteLocalData =>
      'एह डिवाइस के डेटा भी मिटाईं (पोर्टफ़ोलियो, अलर्ट, पसंदीदा, इतिहास, सहेजल विश्लेषण)';

  @override
  String get deleteAccountConfirm => 'हमेशा खातिर मिटाईं';

  @override
  String get accountDeleted => 'राउर खाता मिटा दिहल गइल बा।';

  @override
  String get errDeleteAccount =>
      'खाता ना मिटावल जा सकल। आपन कनेक्शन जाँचीं आ फेर से कोसिस करीं।';

  @override
  String get aiTrialBriefNote =>
      'ट्रायल के विश्लेषण छोट होला आ जादे तेज AI मॉडल से बनेला। प्लान लेला पर रउआ के हमनी के सबसे सक्षम AI, अउरी वेब खोज, साथे मानक आ विस्तार से वाला लंबाई मिलेला।';

  @override
  String get billingMonthly => 'मासिक';

  @override
  String get billingYearly => 'सालाना';

  @override
  String get yearlyDiscount => '2 महीना मुफ्त';

  @override
  String get perYear => '/ साल';

  @override
  String pricePerMonthApprox(String price) {
    return 'हर महीना ≈ $price';
  }

  @override
  String get subscriptionLegalYearly =>
      'जब ले रउआ रद्द ना करब, सालाना सदस्यता हर साल अपने आप नया हो जाला। सदस्यता लेके रउआ इस्तेमाल के शर्त आ गोपनीयता नीति मान लेत बानी।';

  @override
  String get myAnalyses => 'हमार विश्लेषण';

  @override
  String get navAlerts => 'अलर्ट';

  @override
  String get inviteTitle => 'बंद प्रिव्यू';

  @override
  String get inviteBody =>
      'WhatStock अबहीं खाली निमंत्रण से मिलत बा। रउआ के मिलल निमंत्रण कोड डालीं।';

  @override
  String get inviteCodeLabel => 'निमंत्रण कोड';

  @override
  String get inviteContinue => 'आगे बढ़ीं';

  @override
  String get inviteInvalid => 'ई निमंत्रण कोड मान्य नइखे।';

  @override
  String get inviteExpired =>
      'एह निमंत्रण के समय खतम हो गइल बा। जे रउआ के बोलवले बा, ओह से नया कोड माँगीं।';

  @override
  String get inviteDeviceLimit =>
      'ई निमंत्रण कोड पहिलहीं से अधिकतम गिनती के डिवाइस पर इस्तेमाल हो रहल बा।';

  @override
  String get previewConfidential => 'गोपनीय प्रिव्यू';

  @override
  String get errPreviewDailyLimit =>
      'एह प्रिव्यू के आज के विश्लेषण सीमा पूरा हो गइल बा। काल्ह फेर से कोसिस करीं।';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count घंटा पहिले',
      one: '1 घंटा पहिले',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिन पहिले',
      one: '1 दिन पहिले',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'ई विश्लेषण अपडेट करीं?';

  @override
  String staleBody(String age) {
    return 'ई $age बनल रहे। तब से दाम, खबर आ नतीजा बदल गइल हो सकेला।';
  }

  @override
  String get staleKeep => 'पहिले वाला देखाईं';

  @override
  String get staleRefresh => 'नया बनाईं';

  @override
  String seeAll(int count) {
    return 'सब देखीं ($count)';
  }

  @override
  String get searchAnalyses => 'अपना विश्लेषण में खोजीं';

  @override
  String get deleteAnalysis => 'मिटाईं';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol के विश्लेषण मिटा दिहल गइल';
  }

  @override
  String get keyLevelAlertHint =>
      'कवनो स्तर पर टैप करीं, दाम ओह तक पहुँची त अलर्ट मिल जाई।';

  @override
  String get shareAnalysisTitle => 'विश्लेषण साझा करीं';

  @override
  String get shareAsImage => 'फोटो के रूप में साझा करीं';

  @override
  String get shareAsText => 'टेक्स्ट के रूप में साझा करीं';

  @override
  String get shareCardFooter => 'WhatStock से बनल';

  @override
  String get shareCardDisclaimer => 'AI विश्लेषण · निवेश के सलाह ना ह';

  @override
  String get referralTitle => 'दोस्तन के न्योता दीं';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count अतिरिक्त विश्लेषण',
      one: '1 अतिरिक्त विश्लेषण',
    );
    return 'आपन कोड साझा करीं। राउर दोस्त के तुरंते $_temp0 मिली, आ उनकर पहिला विश्लेषण के बाद रउओ के ओतने मिली।';
  }

  @override
  String get referralYourCode => 'राउर कोड';

  @override
  String referralStats(int invited, int rewarded) {
    return 'न्योतल गइल: $invited · इनाम मिलल: $rewarded';
  }

  @override
  String get referralHaveCode => 'कवनो दोस्त से कोड मिलल बा?';

  @override
  String get referralRedeem => 'भुनाईं';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count अतिरिक्त विश्लेषण जोड़ल गइल। स्वागत बा!',
      one: '1 अतिरिक्त विश्लेषण जोड़ल गइल। स्वागत बा!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'ई कोड मौजूद नइखे। जाँच के फेर से कोसिस करीं।';

  @override
  String get referralErrOwn => 'रउआ आपन कोड ना भुना सकीं।';

  @override
  String get referralErrAlready =>
      'रउआ पहिलहीं कवनो दोस्त के कोड भुना चुकल बानी।';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count अतिरिक्त विश्लेषण',
      one: '1 अतिरिक्त विश्लेषण',
    );
    return 'हम WhatStock से शेयर के विश्लेषण करीले: कवनो शेयर के फोटो खींचीं आ AI ओकरा के समझा दी। हमार कोड $code से रउआ के $_temp0 मिली।';
  }

  @override
  String get referralCopied => 'कोड कॉपी हो गइल';

  @override
  String get onboardTitle1 => 'कवनो शेयर के फोटो खींचीं';

  @override
  String get onboardBody1 =>
      'ब्रोकरेज ऐप के स्क्रीन, अखबार भा कंपनी के लोगो काफी बा: WhatStock शेयर के पहचान के ओकर दाम, चार्ट आ खास आँकड़ा देखा देला।';

  @override
  String get onboardTitle2 => 'कुछे मिनट में समझ जाईं';

  @override
  String get onboardBody2 =>
      'AI विश्लेषण बतावेला कि शेयर के का चलावत बा, जोखिम का बा, ओकर मूल्यांकन का बा, आ दाम कहाँ जा सकेला एकर तीन गो परिदृश्य – स्रोत के साथे आ रउरा भाषा में।';

  @override
  String get onboardTitle3 => 'हमेशा अपडेट रहीं';

  @override
  String get onboardBody3 =>
      'पसंदीदा, रउरा पोर्टफ़ोलियो आ दाम अलर्ट रउरा के खबर देत रहेला। रउरा विश्लेषण रउरा डिवाइस पर रहेला, जब मन करे दोबारा खोल सकीले।';

  @override
  String get onboardNext => 'आगे';

  @override
  String get onboardStart => 'शुरू करीं';

  @override
  String get onboardSkip => 'छोड़ीं';

  @override
  String changesTitle(String date) {
    return 'पिछला विश्लेषण से अब तक ($date)';
  }

  @override
  String get changesPrice => 'दाम';

  @override
  String get changesNoMajor => 'अनुमान में कवनो खास बदलाव नइखे भइल।';

  @override
  String get changesPreviousSummary => 'पिछला सारांश';

  @override
  String get telemetryTitle => 'WhatStock के बेहतर बनावे में मदद करीं';

  @override
  String get telemetryBody =>
      'गुमनाम इस्तेमाल के आँकड़ा आ क्रैश रिपोर्ट साझा करीं: कवन फीचर इस्तेमाल होला आ का गड़बड़ भइल। राउर शेयर, विश्लेषण भा निजी जानकारी कबो ना भेजल जाला। रउआ एकरा के कबो भी सेटिंग्स में बदल सकीले।';

  @override
  String get telemetryAllow => 'अनुमति दीं';

  @override
  String get telemetryDecline => 'ना, धन्यवाद';

  @override
  String get telemetrySetting => 'गुमनाम आँकड़ा आ क्रैश रिपोर्ट';

  @override
  String get telemetrySettingHint =>
      'फीचर केतना बेर इस्तेमाल होला आ गड़बड़ी के रिपोर्ट, निजी जानकारी भा राउर खोज आ विश्लेषण के सामग्री के बिना।';

  @override
  String get askButton => 'एह विश्लेषण के बारे में पूछीं';

  @override
  String askTitle(String symbol) {
    return '$symbol के बारे में सवाल';
  }

  @override
  String get askIntro =>
      'विश्लेषण के बारे में कुछुओ पूछीं: कवनो जोखिम के का मतलब बा, का चीज से अनुमान बदल सकेला, कवनो आंकड़ा कइसे निकालल गइल। जवाब एही विश्लेषण पर आधारित बा, आ ई निवेश के सलाह ना ह।';

  @override
  String get askHint => 'आपन सवाल लिखीं…';

  @override
  String get askSend => 'भेजीं';

  @override
  String get askThinking => 'सोचत बानी…';

  @override
  String get askSuggest1 => 'सबसे बड़ जोखिम का बा?';

  @override
  String get askSuggest2 => 'का चीज से अनुमान बदल सकेला?';

  @override
  String get askSuggest3 => 'आसान भाषा में समझाईं';

  @override
  String get askMaxReached =>
      'ई एह विश्लेषण खातिर आखिरी सवाल रहल। अउरी पूछे खातिर नया विश्लेषण बनाईं।';

  @override
  String get errAskLimit =>
      'रउआ आज के सवाल के सीमा तक पहुँच गइल बानी। कृपया काल्ह फेर से कोसिस करीं।';

  @override
  String get eventTomorrow => 'काल्ह';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days दिन बाद',
      one: '1 दिन बाद',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'तिमाही नतीजा';

  @override
  String get eventBeforeOpen => 'बाजार खुले से पहिले';

  @override
  String get eventAfterClose => 'बाजार बंद भइला के बाद';

  @override
  String eventEpsEstimate(String value) {
    return 'अनुमानित EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'रउरा विश्लेषण से';

  @override
  String get eventDividend => 'डिविडेंड अपेक्षित';

  @override
  String get eventDividendEstimate => 'रउरा दर्ज कइल भुगतान से अनुमानित';

  @override
  String get eventsHint =>
      'अगिला 90 दिन में रउरा पसंदीदा आ पोर्टफ़ोलियो शेयरन के नतीजा के तारीख, रउरा विश्लेषण में चिन्हित तारीख वाला घटना, आ रउरा दर्ज कइल भुगतान से अपेक्षित डिविडेंड।';

  @override
  String get eventsEmpty =>
      'अगिला 90 दिन में कवनो तारीख वाला घटना नइखे। इहाँ नतीजा के तारीख देखे खातिर पसंदीदा भा पोर्टफ़ोलियो में शेयर जोड़ीं; दर्ज कइल डिविडेंड के अगिला अपेक्षित भुगतान इहाँ देखाई देला।';

  @override
  String get compareTitle => 'तुलना';

  @override
  String get compareAdd => 'शेयर जोड़ीं';

  @override
  String get compareRemove => 'हटाईं';

  @override
  String get compareTickerHint => 'टिकर, जइसे MSFT';

  @override
  String get compareHint =>
      'मुख्य आंकड़ा अगल-बगल; हर पंक्ति में सबसे बढ़िया मान हाइलाइट बा। रकम हर शेयर के आपन मुद्रा में बा।';

  @override
  String get compareNoAnalysis => 'अबहीं ले कवनो विश्लेषण नइखे';

  @override
  String get portfolioDividends => 'सालाना लाभांश';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent यील्ड';
  }

  @override
  String get portfolioDividendNote =>
      'अनुमानित सालाना लाभांश पिछला 12 महीना में दिहल गइल लाभांश पर आधारित बा; आगे के भुगतान के कवनो गारंटी नइखे।';

  @override
  String positionDividend(String amount) {
    return 'लाभांश: $amount सालाना';
  }

  @override
  String get chartAvgCost => 'रउरा औसत';

  @override
  String get chartAlertLevel => 'अलर्ट';

  @override
  String get marketsToday => 'आज के बाजार';

  @override
  String get notesTitle => 'हमार नोट';

  @override
  String get notesHint =>
      'रउआ काहे खरीदनी, का पर नजर रखले बानी, का होखी त बेचब?';

  @override
  String get notesInfo =>
      'एही डिवाइस पर, आ साइन इन रहला पर राउर खाता में भी सहेजल जाला। AI विश्लेषण रउआ नोट के ध्यान में राखेला।';

  @override
  String notesSaved(String date) {
    return 'सहेजल गइल $date';
  }

  @override
  String get peersTitle => 'मिलत-जुलत कंपनी';

  @override
  String get portfolioExport => 'CSV के रूप में निर्यात करीं';

  @override
  String get portfolioImport => 'CSV से आयात करीं';

  @override
  String get portfolioImportHint =>
      'हर लाइन में एगो खरीदारी पेस्ट करीं: टिकर सिंबल, मात्रा, दाम, मुद्रा, तारीख (YYYY-MM-DD)। कॉलम कॉमा, सेमीकोलन भा टैब से अलग हो सकेला; हेडर लाइन जरूरी नइखे।';

  @override
  String get portfolioImportButton => 'आयात करीं';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count लेन-देन जोड़ल गइल',
      one: '1 लेन-देन जोड़ल गइल',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count लाइन छोड़ल गइल',
      one: '1 लाइन छोड़ल गइल',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'पोर्टफ़ोलियो, पसंदीदा, दाम अलर्ट आ नोट राउर सब डिवाइस पर सिंक होला।';

  @override
  String syncLast(String time) {
    return 'पिछला सिंक: $time';
  }

  @override
  String get syncNow => 'अबहीं सिंक करीं';

  @override
  String get syncFailed => 'सिंक ना हो पाइल। ई अपने आप फेर कोसिस करी।';

  @override
  String get alertEmailTitle => 'अलर्ट बजला पर ई-मेल';

  @override
  String get alertEmailOn =>
      'हमनी के हर कुछ मिनट पर राउर अलर्ट जाँचेनी आ ई-मेल भेजेनी, तबो जब ऐप बंद होखे।';

  @override
  String get alertEmailSignIn =>
      'ऐप बंद रहलो पर ई-मेल से अलर्ट पावे खातिर सेटिंग्स में अपना ई-मेल से साइन इन करीं।';

  @override
  String get portfolioHistory => 'समय के साथ मूल्य';

  @override
  String get portfolioReviewTitle => 'AI पोर्टफ़ोलियो समीक्षा';

  @override
  String get portfolioReviewIntro =>
      'AI राउर पूरा पोर्टफ़ोलियो देखेला: केंद्रीकरण, सेक्टर आ मुद्रा के जोखिम, राउर शेयरन के साझा जोखिम, आ डिविडेंड। 1 विश्लेषण खरच होला।';

  @override
  String get portfolioReviewButton => 'हमार पोर्टफ़ोलियो के समीक्षा करीं';

  @override
  String get portfolioReviewAgain => 'फेर से समीक्षा करीं';

  @override
  String get portfolioReviewWorking =>
      'राउर पोर्टफ़ोलियो के समीक्षा हो रहल बा…';

  @override
  String get digestTitle => 'ईमेल से हफ़्तावार सारांश';

  @override
  String get digestHint =>
      'हर सोमवार: पिछला हफ़्ता राउर पसंदीदा आ पोर्टफ़ोलियो कइसे चलल, आ ओकनी के आवे वाला नतीजा के तारीख।';

  @override
  String get benchmarkTitle => 'S&P 500 से तुलना';

  @override
  String get benchmarkTitleIndex => 'कवनो इंडेक्स से तुलना';

  @override
  String get benchmarkHintIndex =>
      'जइसे हर खरीदारी के रकम ओही दिन चुनल इंडेक्स के फॉलो करे वाला फंड में लगावल गइल होखे। लाभांश शामिल नइखे; पिछला रिटर्न भविष्य के रिटर्न के अनुमान ना देला।';

  @override
  String get benchmarkYours => 'रउआ के खरीदारी';

  @override
  String benchmarkAhead(String points) {
    return 'इंडेक्स से $points प्रतिशत अंक बेहतर';
  }

  @override
  String benchmarkBehind(String points) {
    return 'इंडेक्स से $points प्रतिशत अंक पीछे';
  }

  @override
  String get portfolioSell => 'बेचीं';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbol बेचीं';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'प्रति शेयर बिक्री दाम ($currency)';
  }

  @override
  String get portfolioSellDate => 'बिक्री के तारीख';

  @override
  String get portfolioSellAll => 'सब';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'रउआ लगे $quantity बा';
  }

  @override
  String get portfolioSold => 'बेचल';

  @override
  String get portfolioRealized => 'प्राप्त';

  @override
  String get portfolioClosed => 'बंद पोजीशन';

  @override
  String get portfolioClosedNote => 'सब शेयर बेच दिहल गइल';

  @override
  String get portfolioTransactions => 'लेन-देन';

  @override
  String get portfolioRealizedByYear => 'साल के हिसाब से प्राप्त मुनाफ़ा';

  @override
  String get portfolioRealizedHint =>
      'बिक्री के पहिले रउआ सबसे पुरान खरीदारी से मिलावल जाला (FIFO), आज के विनिमय दर पर बदल के। टैक्स रिटर्न खातिर अपना ब्रोकर के स्टेटमेंट इस्तेमाल करीं।';

  @override
  String staleNewResults(String symbol, String date) {
    return 'ई विश्लेषण के बाद नया तिमाही नतीजा आ गइल बा ($symbol, $date)।';
  }

  @override
  String get newResultsBadge => 'नया नतीजा';

  @override
  String get portfolioImportBrokers =>
      'Revolut, Trading 212, Interactive Brokers, DEGIRO, Schwab, Fidelity आ Robinhood के एक्सपोर्ट भी बिक्री आ लाभांश (स्रोत पर कटल टैक्स घटा के) समेत पहचानल जाला; जमा छोड़ दिहल जाला।';

  @override
  String get portfolioImportFile => 'फाइल चुनीं';

  @override
  String offlineBanner(String time) {
    return 'कनेक्शन नइखे – पिछला बेर सहेजल डेटा देखावल जा रहल बा ($time)।';
  }

  @override
  String get glossMarketCap =>
      'शेयर बाजार में पूरा कंपनी के कीमत कतना बा: शेयर के दाम × शेयर के गिनती।';

  @override
  String get glossSharesOutstanding =>
      'कंपनी कतना शेयर जारी कइले बिया। ई बढ़े त हर शेयर के हिस्सा छोट हो जाला; बायबैक से ई घटेला।';

  @override
  String get glossPeTrailing =>
      'दाम ÷ पिछला 12 महीना के प्रति शेयर कमाई: रउआ अभी के मुनाफा के कतना साल के दाम देत बानी। कम मतलब सस्ता, बाकिर तेजी से बढ़े वाली कंपनी के P/E अक्सर ऊँच होला।';

  @override
  String get glossPeForward =>
      'P/E जइसन, बाकिर ओह मुनाफा से जवन विश्लेषक अगिला 12 महीना खातिर उम्मीद करत बाड़ें। ट्रेलिंग P/E से कम होखे के मतलब बा कि मुनाफा बढ़े के उम्मीद बा।';

  @override
  String get glossPb =>
      'दाम ÷ प्रति शेयर बुक वैल्यू (संपत्ति माइनस करजा)। 1 के आसपास मतलब बाजार कंपनी के ओतने आँकत बा जतना ओकरा लगे कागज पर बा।';

  @override
  String get glossPs =>
      'बाजार मूल्य ÷ सालाना राजस्व। ओह कंपनी खातिर काम के, जेकरा लगे अबहीं कम भा कवनो मुनाफा नइखे; एके उद्योग में तुलना करीं।';

  @override
  String get glossEvToFcf =>
      'करजा समेत कंपनी के मूल्य (EV) ÷ निवेश के बाद एक साल में बनावल नकदी। कम मतलब दाम के बदले रउआ ज्यादा नकदी मिलत बा।';

  @override
  String get glossPeg =>
      'P/E ÷ उम्मीद वाला सालाना मुनाफा बढ़ोतरी (%)। 1 के आसपास अक्सर उचित मानल जाला; ई P/E के बढ़ोतरी के नजर से देखावेला।';

  @override
  String get glossEps =>
      'पिछला 12 महीना में प्रति शेयर मुनाफा। साल-दर-साल बढ़त EPS सेहतमंद कंपनी के सबसे मजबूत निशानी में से एक बा।';

  @override
  String get glossBeta =>
      'शेयर बाजार के साथे कतना हिलेला: 1 = बाजार जइसन, 1.5 = लगभग 50% बड़ उतार-चढ़ाव, 1 से कम = शांत।';

  @override
  String get glossRevenueTtm =>
      'पिछला 12 महीना के कुल बिक्री, कवनो खर्चा से पहिले।';

  @override
  String get glossNetIncomeTtm =>
      'पिछला 12 महीना में सब खर्चा, ब्याज आ टैक्स के बाद बाचल मुनाफा।';

  @override
  String get glossGrossMargin =>
      'सामान के सीधा लागत के बाद राजस्व के बाचल हिस्सा। ऊँच मार्जिन अक्सर दाम तय करे के ताकत देखावेला।';

  @override
  String get glossOperatingMargin =>
      'धंधा चलावे के खर्चा (तनखाह, किराया, मार्केटिंग) के बाद, ब्याज आ टैक्स से पहिले राजस्व के बाचल हिस्सा।';

  @override
  String get glossNetMargin =>
      'राजस्व के ऊ हिस्सा जवन आखिर में मुनाफा बनेला। 20% मतलब हर 100 के बिक्री में 20 मुनाफा बा।';

  @override
  String get glossRoe =>
      'इक्विटी पर रिटर्न: सालाना मुनाफा ÷ मालिक लोग के पूँजी। देखावेला कि प्रबंधन शेयरधारक के पइसा के कतना बढ़िया से इस्तेमाल करेला; लगभग 15% से ऊपर मजबूत बा।';

  @override
  String get glossRoa =>
      'संपत्ति पर रिटर्न: सालाना मुनाफा ÷ कंपनी के लगे सब कुछ। एके उद्योग में तुलना करीं।';

  @override
  String get glossDebtToEquity =>
      'करजा ÷ मालिक लोग के पूँजी। ज्यादा मतलब ज्यादा उधार के पइसा: ब्याज दर बढ़े भा धंधा धीमा पड़े पर ज्यादा जोखिम।';

  @override
  String get glossCurrentRatio =>
      'छोट अवधि के संपत्ति ÷ एक साल के भीतर चुकावे वाला बिल। 1 से ऊपर मतलब कंपनी आपन नजदीकी बिल चुका सकेले।';

  @override
  String get glossRevenueGrowth =>
      'एक साल पहिले के तुलना में राजस्व कतना बढ़ल।';

  @override
  String get glossEpsGrowth =>
      'एक साल पहिले के तुलना में प्रति शेयर मुनाफा कतना बढ़ल।';

  @override
  String get glossDividendYield =>
      'सालाना लाभांश ÷ शेयर के दाम: रउआ जवन देत बानी ओकर प्रतिशत के रूप में हर साल मिले वाला नकद आमदनी।';

  @override
  String get glossDividendPerShare => 'पिछला साल में एक शेयर पर दिहल लाभांश।';

  @override
  String get glossPayoutRatio =>
      'मुनाफा के ऊ हिस्सा जवन लाभांश के रूप में बाँटल जाला। 100% से ऊपर कंपनी कमाई से ज्यादा बाँटत बिया, जवन कमे टिकेला।';

  @override
  String get portfolioBeta => 'पोर्टफ़ोलियो बीटा';

  @override
  String get glossPortfolioBeta =>
      'राउर शेयरन के बीटा, ओकनी के मूल्य के हिसाब से भारित: बाजार 1% हिलेला त राउर शेयर लगभग कतना प्रतिशत हिलेला। 1 से ऊपर होखे त ऊ बाजार से बेसी उतार-चढ़ाव करेला, 1 से कम होखे त कम। नकद एह में शामिल नइखे।';

  @override
  String get portfolioTop3 => 'टॉप 3 पोजीशन';

  @override
  String get glossPortfolioTop3 =>
      'राउर शेयरन के मूल्य के कतना हिस्सा राउर तीन गो सबसे बड़ पोजीशन में बा। ई जतना बेसी होई, कवनो एगो कंपनी के खराब खबर पूरा पोर्टफ़ोलियो के ओतने बेसी नुकसान पहुँचा सकेला।';

  @override
  String get glossDividendGrowth5y =>
      'पिछला पाँच साल में प्रति शेयर लाभांश औसतन हर साल केतना बढ़ल। लगातार बढ़ोतरी के मतलब आमतौर पर ई होला कि कंपनी के अपना नकदी प्रवाह पर भरोसा बा; लाभांश में कटौती अक्सर चेतावनी के संकेत होला।';

  @override
  String get glossYieldOnCost =>
      'पिछला 12 महीना में मिलल लाभांश के ओह रकम से बाँटल जाला जवन रउआ अबहियों रखले शेयर खातिर दिहले रहीं। लाभांश यील्ड से अलग, ई आज के भाव पर ना, रउआ अपना खरीद भाव पर नापल जाला।';

  @override
  String get glossTitle => 'एकर मतलब का बा?';

  @override
  String get watchNewsTitle => 'रउरा शेयरन के खबर';

  @override
  String get undo => 'वापस करीं';

  @override
  String get watchSort => 'क्रम लगाईं';

  @override
  String get watchSortOwn => 'हमार क्रम';

  @override
  String get watchSortGainers => 'सबसे बढ़े वाला पहिले';

  @override
  String get watchSortLosers => 'सबसे गिरे वाला पहिले';

  @override
  String get watchSortName => 'टिकर से (A–Z)';

  @override
  String get watchHint =>
      'क्रम बदले खातिर हैंडल खींचीं, हटावे खातिर बाईं ओर स्वाइप करीं। रेखा पिछला 30 दिन देखावेले।';

  @override
  String analysisReady(String symbol) {
    return '$symbol: रउआ विश्लेषण तइयार बा।';
  }

  @override
  String alertFromCost(String price) {
    return 'रउआ औसत खरीद दाम ($price) से:';
  }

  @override
  String get briefTitle => 'आज रउआ शेयर संगे';

  @override
  String get briefButton => 'आज के सारांश';

  @override
  String get briefHint =>
      'आज रउआ पोर्टफोलियो आ पसंदीदा शेयर कइसे चलल आ ताजा खबर ओकरा बारे में का कहत बा, एकर छोट AI सारांश। एह में कवनो विश्लेषण खरच ना होला।';

  @override
  String get briefRefresh => 'अपडेट करीं';

  @override
  String get sectionEarnings => 'कमाई';

  @override
  String earningsNext(String date) {
    return 'अगिला रिपोर्ट: $date';
  }

  @override
  String get earningsExpected => 'अनुमानित EPS';

  @override
  String get earningsReported => 'घोषित EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'पिछला $total तिमाही में से $beats में अनुमानित EPS के बराबर भा ओसे ऊपर',
      one: '1 तिमाही में से $beats में अनुमानित EPS के बराबर भा ओसे ऊपर',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol: काल्ह तिमाही नतीजा';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol: आज तिमाही नतीजा';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return '$symbol: आज डिविडेंड अपेक्षित';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'लगभग $amount। आवे पर एकरा अपना पोर्टफोलियो में दर्ज करीं।';
  }

  @override
  String get dividendRemindersTitle => 'डिविडेंड रिमाइंडर';

  @override
  String get dividendRemindersSubtitle =>
      'रउरा दर्ज कइल भुगतान के सिलसिला से जवना दिन डिविडेंड अपेक्षित होखे, ओह दिन सूचना, ताकि रउआ ओकरा के दर्ज कर सकीं';

  @override
  String get earningsRemindersTitle => 'नतीजा रिमाइंडर';

  @override
  String get earningsRemindersSubtitle =>
      'राउर पसंदीदा भा पोर्टफोलियो के शेयर के तिमाही नतीजा से एक दिन पहिले सूचना';

  @override
  String addAllToFavorites(int count) {
    return 'सब पसंदीदा में जोड़ीं ($count)';
  }

  @override
  String get portfolioImportPhoto => 'स्क्रीनशॉट से आयात करीं';

  @override
  String get holdingsReading => 'राउर पोजीशन पढ़ल जा रहल बा…';

  @override
  String get holdingsReviewTitle => 'मिलल पोजीशन';

  @override
  String get holdingsReviewHint =>
      'जोड़े से पहिले संख्या जाँच लीं। दाम आज के दाम ना ह, प्रति शेयर राउर औसत खरीद दाम ह।';

  @override
  String get holdingsNoPrice => 'तस्वीर में औसत खरीद दाम नइखे';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count पोजीशन जोड़ीं',
      one: '1 पोजीशन जोड़ीं',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'एह तस्वीर में कवनो शेयर पोजीशन ना मिलल। अपना ब्रोकर के पोजीशन भा होल्डिंग पन्ना के स्क्रीनशॉट आजमाईं।';

  @override
  String get week52Range => '52 हप्ता के दायरा';

  @override
  String week52BelowHigh(String percent) {
    return '52 हप्ता के सबसे ऊँच से $percent नीचे';
  }

  @override
  String get week52AtHigh => '52 हप्ता के सबसे ऊँच पर';

  @override
  String get alertKindTrailing => 'शिखर से गिरे';

  @override
  String get alertTrailingPercent => 'शिखर से गिरावट (%)';

  @override
  String get alertTrailingHint =>
      'दाम के संगे ऊपर चलेला: सेट कइला के बाद के सबसे ऊँच स्तर से दाम एतना गिरी त सूचना दी।';

  @override
  String alertDescTrailing(String percent) {
    return 'शिखर से $percent गिरावट';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'अब तक के शिखर: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol शिखर से $percent गिरल';
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
  String get insiderBuy => 'खरीदल';

  @override
  String get insiderSell => 'बेचल';

  @override
  String get insiderHint =>
      'पिछला 90 दिन में अधिकारी आ निदेशक लोग के खुला बाजार में खरीद आ बिक्री (SEC Form 4)। ऑप्शन के इस्तेमाल आ शेयर इनाम के गिनती ना होला।';

  @override
  String get insiderNone =>
      'पिछला 90 दिन में खुला बाजार में कवनो इनसाइडर खरीद भा बिक्री ना भइल।';

  @override
  String get analystTrend => 'महीना-दर-महीना राय कइसे बदलल';

  @override
  String get watchListAll => 'सब';

  @override
  String get watchListNew => 'नया सूची';

  @override
  String get watchListName => 'सूची के नाम';

  @override
  String get watchListRename => 'सूची के नाम बदलीं';

  @override
  String get watchListDelete => 'सूची मिटाईं';

  @override
  String get watchListAddTo => 'सूची में जोड़ीं';

  @override
  String get watchListEmpty =>
      'एह सूची में अबहीं ले कवनो शेयर नइखे। जोड़े खातिर शेयर के बगल वाला सूची बटन दबाईं।';

  @override
  String get portfolioAskTitle => 'राउर पोर्टफ़ोलियो के बारे में सवाल';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'बैकअप';

  @override
  String get backupSave => 'बैकअप सेव करीं';

  @override
  String get backupSaveHint =>
      'रउआ पसंदीदा, सूची, पोर्टफ़ोलियो, अलर्ट आ नोट एगो फाइल में।';

  @override
  String get backupRestore => 'बैकअप से वापस लाईं';

  @override
  String get backupRestoreHint =>
      'फाइल में जवन बा ओकरा के जोड़ेला; रउआ लगे अबहीं जवन बा ओह में से कुछुओ ना मिटी।';

  @override
  String get backupRestored => 'बैकअप वापस आ गइल।';

  @override
  String get backupInvalid => 'ई फाइल WhatStock बैकअप ना ह।';

  @override
  String get allocationPositions => 'शेयर';

  @override
  String get allocationSectors => 'सेक्टर';

  @override
  String get allocationCurrencies => 'मुद्रा';

  @override
  String get allocationAccounts => 'खाता';

  @override
  String get compareReturn1y => '1 साल के रिटर्न';

  @override
  String get compareFromHigh => '52 हप्ता के सबसे ऊँच से दूरी';

  @override
  String get briefAutoTitle => 'हर बिहान रोज के सारांश';

  @override
  String get briefAutoSubtitle =>
      'ऐप चलत रहे तब बिहान 7:00 बजे के बाद “आज रउआ शेयर संगे” अपने-आप बन जाला; कंप्यूटर पर एगो सूचना रउआ के बता देले। ई रउआ रोज के सवाल के सीमा से जाला, कवनो विश्लेषण खरच ना होला।';

  @override
  String get targetsButton => 'लक्ष्य बँटवारा';

  @override
  String get targetsTitle => 'लक्ष्य बँटवारा';

  @override
  String get targetsHint =>
      'तय करीं कि पोर्टफोलियो में हर शेयर के केतना हिस्सा होखे के चाहीं। लक्ष्य ना होखे त खाना खाली छोड़ दीं। फेर ऐप देखाई कि उहाँ पहुँचे खातिर का खरीदे के बा भा बेचे के बा।';

  @override
  String targetsSum(String percent) {
    return 'कुल: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'खरीदीं ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'बेचीं ≈ $amount';
  }

  @override
  String get rebalanceOk => 'लक्ष्य पर';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol: अनुमानित EPS से ऊपर';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol: अनुमानित EPS से नीचे';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'घोषित EPS $actual, अनुमानित $estimate';
  }

  @override
  String get newsExplain => 'एकर का मतलब बा?';

  @override
  String get watchAlertAll => 'रोज के बड़ उतार-चढ़ाव पर अलर्ट';

  @override
  String get watchAlertAllHint =>
      'एह सूची के हर शेयर खातिर दाम के अलर्ट: एक दिन में एतना ऊपर भा नीचे होखे त बताई। जवना शेयर पर पहिले से अलर्ट बा, ओकर ओइसहीं रही।';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count अलर्ट लगावल गइल',
      one: '1 अलर्ट लगावल गइल',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'मिलल मुनाफा निर्यात करीं (CSV)';

  @override
  String get portfolioAnnualReturn => 'सालाना रिटर्न';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / साल';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'पइसा-भारित सालाना रिटर्न (XIRR): ई देखेला कि रउआ कब खरीदनी आ बेचनी, एह से बाद में जोड़ल पइसा एकरा के ना बिगाड़े। रउआ पहिला खरीदारी कम से कम एक साल पुरान भइला पर देखावल जाला; लाभांश शामिल नइखे।';

  @override
  String get eventsAddToCalendar => 'कैलेंडर में जोड़ीं (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'पोर्टफोलियो अलर्ट';

  @override
  String get portfolioMoveAlertSubtitle =>
      'जब राउर पूरा पोर्टफोलियो एक दिन में एतना हिले, तब सूचना।';

  @override
  String get portfolioMoveAlertOff => 'बंद';

  @override
  String portfolioMoveUp(String percent) {
    return 'आज राउर पोर्टफोलियो $percent बढ़ल बा';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'आज राउर पोर्टफोलियो $percent घटल बा';
  }

  @override
  String get whatIfTitle => 'अगर रउआ निवेश कइले रहतीं त?';

  @override
  String get whatIfAmount => 'रकम';

  @override
  String whatIfResult(String amount, String period) {
    return '$period पहिले निवेश कइल $amount आज होइत';
  }

  @override
  String get whatIfNote =>
      'खाली शेयर के दाम पर आधारित: लाभांश, शुल्क आ टैक्स शामिल नइखे। पिछला रिटर्न आगे के रिटर्न के भविष्यवाणी ना करे।';

  @override
  String get watchShare => 'सूची शेयर करीं';

  @override
  String get watchImport => 'टिकर जोड़ीं';

  @override
  String get watchImportHint =>
      'कॉमा, स्पेस भा नया लाइन से अलग कइके टिकर पेस्ट करीं – जइसे कवनो अइसन सूची जवन केहू रउरा से शेयर कइले होखे।';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count शेयर जोड़ल गइल',
      one: '1 शेयर जोड़ल गइल',
      zero: 'कवनो नया शेयर नइखे',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'सबसे बड़ा पहिले';

  @override
  String get positionsSortGain => 'सबसे बेसी कुल फायदा पहिले';

  @override
  String get positionsSortToday => 'आज के सबसे बढ़िया पहिले';

  @override
  String get chartMyBuys => 'रउरा खरीदारी';

  @override
  String get chartMySells => 'रउरा बिक्री';

  @override
  String get shortcutsTitle => 'कीबोर्ड शॉर्टकट';

  @override
  String usMarketOpen(String time) {
    return 'अमेरिकी बाजार खुलल बा · $time में बंद होई';
  }

  @override
  String usMarketClosed(String time) {
    return 'अमेरिकी बाजार बंद बा · $time में खुली';
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
  String get dividendGoalSet => 'महीनवार डिविडेंड लक्ष्य तय करीं';

  @override
  String get dividendGoalTitle => 'महीनवार डिविडेंड लक्ष्य';

  @override
  String get dividendGoalAmount => 'हर महीना डिविडेंड';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'आज के यील्ड पर हर महीना लगभग $amount · $percent · लक्ष्य: $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'आज के यील्ड पर हर महीना लगभग $amount · लक्ष्य पूरा भइल: $goal';
  }

  @override
  String get portfolioAccount => 'खाता';

  @override
  String get portfolioAccountHint => 'जइसे TBSZ 2026 (वैकल्पिक)';

  @override
  String get portfolioAccountAdd => 'खाता बताईं';

  @override
  String get portfolioAccountsAll => 'सब खाता';

  @override
  String get portfolioAccountNote =>
      'खाली एह खाता के लेन-देन आ डिविडेंड। नकद, लक्ष्य आ AI समीक्षा ‘सब खाता’ में देखावल जाला।';

  @override
  String get portfolioNoAccount => 'कवनो खाता ना';

  @override
  String portfolioFee(String currency) {
    return 'ब्रोकरेज ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'ब्रोकरेज जोड़ीं';

  @override
  String portfolioFeeRow(String amount) {
    return 'ब्रोकरेज: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'सालाना सारांश';

  @override
  String get portfolioProceeds => 'बिक्री से आमदनी';

  @override
  String get portfolioCostBasis => 'खरीद लागत';

  @override
  String get portfolioFeesPaid => 'चुकावल ब्रोकरेज';

  @override
  String get portfolioAnnualSummaryNote =>
      'रकम मूल मुद्रा में बा, बदलल नइखे। बिक्री से आमदनी बिक्री के ब्रोकरेज घटा के बा; खरीद लागत में खरीद के ब्रोकरेज शामिल बा (FIFO)। टैक्स रिटर्न खातिर ओह विनिमय दर पर बदलीं जवन रउआ के टैक्स विभाग माँगेला।';

  @override
  String get portfolioShare => 'प्रदर्शन साझा करीं';

  @override
  String get portfolioShareHeading => 'हमार पोर्टफ़ोलियो';

  @override
  String get portfolioTopHoldings => 'सबसे बड़ पोजीशन';

  @override
  String get portfolioShareNote => 'खाली प्रतिशत साझा होला, कवनो रकम ना।';

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
  String get shareNotAdvice => 'निवेश के सलाह ना ह';

  @override
  String get contributionButton => 'नया पइसा निवेश करीं';

  @override
  String contributionAmount(String currency) {
    return 'निवेश करे के रकम ($currency)';
  }

  @override
  String get contributionHint =>
      'सिरिफ खरीदारी, बिक्री ना: जवन पोजीशन अपना लक्ष्य से सबसे जादा पीछे बाड़ी, ओकरा के पइसा पहिले मिली।';

  @override
  String contributionShares(String shares) {
    return '≈ $shares शेयर';
  }

  @override
  String contributionMissing(String symbols) {
    return '$symbols खातिर अबही के दाम उपलब्ध नइखे: बँटवारा में शामिल नइखे कइल गइल।';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'अगर सालाना रिटर्न ($rate) अइसहीं बनल रही, त रउआ $year के आसपास लक्ष्य तक पहुँच जाइब।';
  }

  @override
  String get portfolioMaxDrawdown => 'सबसे बड़ गिरावट';

  @override
  String get glossMaxDrawdown =>
      'राउर शेयरन के मूल्य में पहिले के कवनो ऊँचाई से बाद के कवनो निचला स्तर तक के सबसे बड़ गिरावट, राउर खरीद-बिक्री के असर के बिना (समय-भारित)। ई देखावेला कि राउर पोर्टफ़ोलियो अब तक कतना गहिराह गिरावट झेल चुकल बा।';

  @override
  String watchSince(String date) {
    return 'पसंदीदा में जोड़ला के बाद से ($date)';
  }

  @override
  String get portfolioSampleTry => 'नमूना पोर्टफ़ोलियो से आजमाईं';

  @override
  String get portfolioSampleBanner =>
      'ई एगो नमूना पोर्टफ़ोलियो ह। एकरा संगे आपन खरीदारी जोड़ीं, भा एकरा हटाईं।';

  @override
  String get portfolioSampleRemove => 'नमूना हटाईं';

  @override
  String get portfolioStopsAll => 'सब पोजीशन खातिर ट्रेलिंग स्टॉप';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ट्रेलिंग स्टॉप लगावल गइल',
      one: '1 ट्रेलिंग स्टॉप लगावल गइल',
      zero: 'हर पोजीशन पर पहिले से ट्रेलिंग स्टॉप लागल बा',
    );
    return '$_temp0';
  }

  @override
  String portfolioSinceSale(String percent) {
    return 'बेचला के बाद से $percent';
  }

  @override
  String get lotPreviewRealized => 'एह बिक्री पर प्राप्त (FIFO):';

  @override
  String lotPreviewAverage(String after, String before) {
    return 'नया औसत लागत: $after (अभी $before)';
  }

  @override
  String get portfolioYtdReturn => 'ए साल के रिटर्न';

  @override
  String get glossTwrYtd =>
      'साल के शुरुआत से (या रउआ पहिला खरीद से, अगर ऊ ए साल भइल रहे) समय-भारित रिटर्न: हर दिन ओह दिन रउआ लगे रहल शेयरन के बदलाव गिनेला, आ दिनन के एक-दूसरा से जोड़ल जाला – जवन पइसा रउआ डालीं या निकालीं ऊ रिटर्न ना ह, एही से एकर तुलना कवनो इंडेक्स से कइल जा सकेला। नीचे: ओही अवधि में चुनल इंडेक्स।';

  @override
  String alertDistance(String price, String percent) {
    return 'अभी $price · $percent बाकी';
  }

  @override
  String get watchSortSince => 'जोड़ला के बाद के बदलाव से';

  @override
  String get portfolioTodayMovers => 'आज सबसे ज्यादा हिलल:';

  @override
  String get lotNoteAdd => 'नोट जोड़ीं';

  @override
  String get lotNoteBuyHint =>
      'रउआ काहे खरीदत बानी? ई तारीख के साथे शेयर के नोट में जुड़ जाई।';

  @override
  String get lotNoteSellHint =>
      'रउआ काहे बेचत बानी? ई तारीख के साथे शेयर के नोट में जुड़ जाई।';

  @override
  String get lotNoteBought => 'खरीदल';

  @override
  String get positionHeld => 'रखे के अवधि';

  @override
  String durationMonths(int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months महीना',
      one: '$months महीना',
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
    return '$date से';
  }

  @override
  String lotPreviewWeight(String after, String before) {
    return 'बाद में पोर्टफ़ोलियो में हिस्सा: $after (अभी $before)';
  }

  @override
  String lotFromCash(String amount) {
    return 'नकद से भुगतान करीं (अभी $amount)';
  }

  @override
  String lotToCash(String amount) {
    return 'नकद में जोड़ीं (अभी $amount)';
  }

  @override
  String get onboardTitle4 => 'आपन पोर्टफ़ोलियो पर नजर रखीं';

  @override
  String get onboardBody4 =>
      'आपन ब्रोकर के एक्सपोर्ट इम्पोर्ट करीं (Revolut, Trading 212, IBKR, DEGIRO, Schwab…) भा सौदा हाथ से जोड़ीं: कवनो इंडेक्स के मुकाबले आपन रिटर्न, आपन डिविडेंड आ टैक्स रिटर्न खातिर सालाना सारांश देखीं।';

  @override
  String get lotEdit => 'बदलीं';

  @override
  String lotEditTitle(String symbol) {
    return 'लेन-देन बदलीं · $symbol';
  }

  @override
  String get lotSave => 'सेव करीं';

  @override
  String dividendEditTitle(String symbol) {
    return 'डिविडेंड बदलीं · $symbol';
  }

  @override
  String get activityTitle => 'सब लेन-देन';

  @override
  String get activitySearchHint => 'टिकर से फ़िल्टर करीं';

  @override
  String get activityNoMatch => 'फ़िल्टर से कवनो लेन-देन मेल ना खाइल।';

  @override
  String portfolioImportDuplicates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count पहिले से दर्ज बा, छोड़ दिहल गइल',
      one: '1 पहिले से दर्ज बा, छोड़ दिहल गइल',
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
  String get tickerChangeNew => 'नया टिकर';

  @override
  String get tickerChangeHint =>
      'जब कवनो कंपनी आपन टिकर बदलेले (जइसे FB → META): सगरी लेन-देन, डिविडेंड, स्टॉक स्प्लिट, नोट आ अलर्ट नया टिकर पर चल जाला।';

  @override
  String tickerChanged(String symbol) {
    return '$symbol पर ले जाइल गइल';
  }

  @override
  String get referralErrSignIn =>
      'कवनो दोस्त के कोड भुनावे खातिर अपना ई-मेल से साइन इन करीं।';

  @override
  String get referralErrFull => 'ई कोड पहिलहीं अधिकतम बेर भुनावल जा चुकल बा।';

  @override
  String portfolioGoalReachedBody(String value) {
    return 'अब राउर पोर्टफ़ोलियो के मूल्य $value बा।';
  }

  @override
  String get errAiTruncated =>
      'विश्लेषण पूरा होखे से पहिले अधूरा रह गइल। कृपया फेर से कोसिस करीं – एह से राउर कोटा ना घटल।';

  @override
  String get errImageUnsupported =>
      'ई तस्वीर पढ़ल ना जा सकल। एकरा के JPEG भा PNG के रूप में सेव करीं आ फेर से कोसिस करीं।';

  @override
  String get errRateLimited =>
      'कम समय में बहुत जादा अनुरोध भेजाइल बा। कृपया एक मिनट रुकीं आ फेर से कोसिस करीं।';

  @override
  String get watchListNameTaken => 'एह नाम के सूची पहिले से बा।';

  @override
  String watchListLimit(int max) {
    return 'रउआ अधिकतम $max गो सूची रख सकत बानी।';
  }

  @override
  String get portfolioGoalSet => 'लक्ष्य तय करीं';

  @override
  String get portfolioGoalTitle => 'पोर्टफ़ोलियो लक्ष्य';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · लक्ष्य: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'लक्ष्य पूरा भइल: $amount';
  }

  @override
  String get portfolioGoalRemove => 'लक्ष्य हटाईं';

  @override
  String get alertEdit => 'अलर्ट बदलीं';

  @override
  String get positionOpenLots => 'अबहिंयो रउआ लगे (सबसे पुरान पहिले)';

  @override
  String get lotRemoved => 'लेन-देन मिटा दिहल गइल';

  @override
  String get alertDeleted => 'अलर्ट मिटा दिहल गइल';

  @override
  String get alertsClearTriggered => 'चालू भइल अलर्ट साफ करीं';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count अलर्ट साफ कइल गइल',
      one: '1 अलर्ट साफ कइल गइल',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'होम स्क्रीन';

  @override
  String get allocationCountries => 'देश';

  @override
  String get newsExplainNoteResearch =>
      'AI के व्याख्या: ई वेब पर तथ्य खोजेला, लेख खोलेला आ परखेला कि स्रोत केतना भरोसेमंद बा। ई निवेश के सलाह ना ह। ई रउआ रोज के सवाल के सीमा से जाला, कवनो विश्लेषण खरच ना होला।';

  @override
  String get sourceOfficial => 'आधिकारिक';

  @override
  String get sourcePressRelease => 'प्रेस रिलीज';

  @override
  String get sourceMajorNews => 'बड़ मीडिया';

  @override
  String get sourceOpinion => 'राय';

  @override
  String get earningsSummaryButton => 'पिछला रिपोर्ट में का रहे?';

  @override
  String get earningsSummaryNote =>
      'कंपनी के नतीजा के घोषणा आ वेब पर मिलल खबरन के AI सारांश। ई निवेश के सलाह ना ह। ई रउआ रोज के सवाल के सीमा से जाला, कवनो विश्लेषण खरच ना होला।';

  @override
  String get compareLastSurprise => 'पिछला तिमाही EPS बनाम अनुमानित';

  @override
  String get compareNextReport => 'अगिला रिपोर्ट';

  @override
  String get resolvingDescription =>
      'पता लगावल जा रहल बा कि रउआ कवन शेयर के बात करत बानी…';

  @override
  String get instrumentTitle => 'ई इंस्ट्रूमेंट के बारे में';

  @override
  String get instrumentHint =>
      'ई सिंबल खातिर कंपनी के कवनो प्रोफाइल नइखे – ई ETF, फंड भा डिपॉजिटरी रिसीट हो सकेला। AI से पूछीं कि ई का ह, एह में का ह आ एकर खरचा केतना ह।';

  @override
  String get instrumentAsk => 'ई का ह?';

  @override
  String get instrumentNote =>
      'जारीकर्ता के फंड पेज आ वेब पर मिलल वित्तीय साइटन से AI के समझावल। ई निवेश के सलाह ना ह। ई रउआ रोज के सवाल के सीमा से जाला, कवनो विश्लेषण खरच ना होला।';

  @override
  String suggestAskAi(String query) {
    return 'AI से पूछीं: “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return '$symbols खातिर अबही के दाम उपलब्ध नइखे।';
  }

  @override
  String get eventsRecentResults => 'हाले के घोषित नतीजा';

  @override
  String get saveToNotes => 'हमार नोट में सेव करीं';

  @override
  String get savedToNotes => 'रउआ के नोट में सेव हो गइल';

  @override
  String get portfolioDividendsReceived => 'मिलल डिविडेंड';

  @override
  String get portfolioDividendsThisYear => 'ए साल';

  @override
  String get portfolioDividendsAllTime => 'अब तक ले';

  @override
  String get portfolioAddDividend => 'डिविडेंड जोड़ीं';

  @override
  String portfolioDividendAmount(String currency) {
    return 'मिलल रकम ($currency)';
  }

  @override
  String get portfolioDividendDate => 'भुगतान के तारीख';

  @override
  String get portfolioDividendsEmpty =>
      'अबहीं ले कवनो डिविडेंड दर्ज नइखे। हाथ से जोड़ीं, भा आपन ब्रोकर के एक्सपोर्ट इम्पोर्ट करीं – ओकर डिविडेंड वाला पंक्ति भी ले लिहल जाला।';

  @override
  String get portfolioSplit => 'स्टॉक स्प्लिट';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'स्टॉक स्प्लिट: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'स्प्लिट से पहिले के तारीख वाला खरीद आ बिक्री समायोजित हो जाला: शेयर के संख्या गुना हो जाला आ हर शेयर के दाम भाग हो जाला, जेसे लागत ओतने रहेला।';

  @override
  String get portfolioSplitRatio => 'अनुपात (नया : पुराना)';

  @override
  String get portfolioSplitRatioError =>
      '10:1 जइसन अनुपात डालीं, भा रिवर्स स्प्लिट खातिर 1:10।';

  @override
  String get portfolioSplitDate => 'स्प्लिट के तारीख';

  @override
  String portfolioSplitRow(String ratio) {
    return 'स्टॉक स्प्लिट $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'स्टॉक स्प्लिट हटा दिहल गइल';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count स्टॉक स्प्लिट जोड़ल गइल',
      one: '1 स्टॉक स्प्लिट जोड़ल गइल',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count डिविडेंड जोड़ल गइल',
      one: '1 डिविडेंड जोड़ल गइल',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'डिविडेंड एक्सपोर्ट करीं (CSV)';

  @override
  String get portfolioDividendDeleted => 'डिविडेंड हटावल गइल';

  @override
  String get portfolioDividendsHint =>
      'रकम ओइसहीं जइसे रउआ खाता में आइल, भुगतान के मुद्रा में; कुल आज के दर पर बदलल जाला। टैक्स रिटर्न खातिर आपन ब्रोकर के स्टेटमेंट के इस्तेमाल करीं।';

  @override
  String get awayTitle => 'जब रउआ दूर रहनी';

  @override
  String awaySince(String when) {
    return '$when से';
  }

  @override
  String get awayQuiet => 'कुछु खास ना बदलल।';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count अलर्ट चालू भइल',
      one: '1 अलर्ट चालू भइल',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'रिजल्ट जारी कइल: $symbols';
  }

  @override
  String get moveWhyButton => 'आज काहे बदल रहल बा?';

  @override
  String moveWhyTitle(String percent) {
    return 'आज $percent';
  }

  @override
  String get moveWhyNote =>
      'वेब पर मिलल आज के खबर से AI के बतावल कारन; असली कारन अनजान भा अलग हो सकेला। निवेश के सलाह नइखे। एह में रउआ के रोज के सवाल कोटा लागेला, विश्लेषण ना।';

  @override
  String get sectionTechnical => 'तकनीकी तस्वीर';

  @override
  String get labelSma50 => '50 दिन के औसत';

  @override
  String get labelSma200 => '200 दिन के औसत';

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
    return '$percent नीचे';
  }

  @override
  String get techOverbought => 'ओवरबॉट';

  @override
  String get techOversold => 'ओवरसोल्ड';

  @override
  String get techNeutral => 'तटस्थ';

  @override
  String get techGoldenCross =>
      '50 दिन के औसत 200 दिन के औसत से ऊपर बा – पुरान पढ़ाई के हिसाब से ऊपर जाए वाला रुझान।';

  @override
  String get techDeathCross =>
      '50 दिन के औसत 200 दिन के औसत से नीचे बा – पुरान पढ़ाई के हिसाब से नीचे जाए वाला रुझान।';

  @override
  String get glossSma50 =>
      'पिछला 50 कारोबारी दिन के औसत बंद भाव। एकरा से ऊपर के भाव के अक्सर कम समय के मजबूती, नीचे के कमजोरी मानल जाला।';

  @override
  String get glossSma200 =>
      'पिछला 200 कारोबारी दिन के औसत बंद भाव – लमहर समय के पुरान रुझान रेखा। बहुत निवेशक एकरा से ऊपर के भाव के लमहर समय के ऊपर जाए वाला रुझान मानेलन।';

  @override
  String get glossRsi =>
      'रिलेटिव स्ट्रेंथ इंडेक्स: हाल के फायदा के हाल के नुकसान से 0–100 के पैमाना पर तुलना करेला। 70 से ऊपर शेयर के अक्सर ओवरबॉट (तेजी से बढ़ल) आ 30 से नीचे ओवरसोल्ड कहल जाला – बाकिर मजबूत रुझान बहुत दिन ले ओहिजा रह सकेला।';

  @override
  String get glossVolatility =>
      'भाव रोज केतना ऊपर-नीचे होला, साल के हिसाब से: 20% के मतलब आम साल में भाव लगभग ±20% के भीतर चलेला। जादे उतार-चढ़ाव के मतलब दुनो ओर बड़ चाल।';

  @override
  String get techNote =>
      'रोज के बंद भाव से गिनल गइल। तकनीकी संकेत बीतल समय बतावेला, आगे के ना।';

  @override
  String portfolioAbove200(int above, int count) {
    return '$count में से $above पोजीशन अपना 200 दिन के औसत से ऊपर';
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
  String get signalCrossedAbove => '200 दिन के औसत से ऊपर गइल';

  @override
  String get signalCrossedBelow => '200 दिन के औसत से नीचे गइल';

  @override
  String get signalAlertsTitle => 'तकनीकी संकेत के सूचना';

  @override
  String get signalAlertsSubtitle =>
      'दिन में एक बेर, जब रउआ जे स्टॉक पर नजर रखले बानी ऊ ओवरसोल्ड भा ओवरबॉट (RSI) हो जाव, भा ओकर दाम 200 दिन के औसत पार करे।';

  @override
  String get signalAlertsNotification => 'तकनीकी संकेत';

  @override
  String get glossaryPageTitle => 'शब्दावली';

  @override
  String get glossaryPageSubtitle =>
      'ऐप में देखावल हर आंकड़ा के सरल बयान, P/E से RSI तक';

  @override
  String get glossarySearchHint => 'शब्दावली में खोजीं';

  @override
  String get portfolioCash => 'नकद';

  @override
  String get portfolioCashTitle => 'नकद बैलेंस';

  @override
  String get portfolioCashHint =>
      'रउआ ब्रोकर के लगे बिना निवेश वाला पइसा, मुद्रा के हिसाब से। ई कुल मूल्य आ बँटवारा में गिनल जाला; रिटर्न में ना।';

  @override
  String portfolioCashAmount(String currency) {
    return 'रकम ($currency)';
  }

  @override
  String get portfolioCashEdit => 'नकद बैलेंस सेट करीं';

  @override
  String get portfolioDividendsByMonth => 'महीना के हिसाब से';

  @override
  String get dividendsLegendReceived => 'मिलल';

  @override
  String get dividendsLegendExpected => 'अपेक्षित';

  @override
  String get portfolioDividendsExpected => 'अगिला अपेक्षित';

  @override
  String get portfolioDividendsExpectedNote =>
      'रउआ दर्ज कइल भुगतान के तारीख आ रकम से अनुमान लगावल गइल; कंपनी एकरा के बदल सकेली भा छोड़ सकेली।';

  @override
  String portfolioDividendAround(String date) {
    return 'लगभग $date';
  }
}
