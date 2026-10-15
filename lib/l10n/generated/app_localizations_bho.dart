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
      'खाली एही डिवाइस पर सहेजल जाला। कुल जोड़ ECB के संदर्भ दर पर बदलल जाला; दाम में देरी हो सकेला।';

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
  String get eventsHint =>
      'अगिला 90 दिन में रउरा पसंदीदा आ पोर्टफ़ोलियो शेयरन के नतीजा के तारीख, आ रउरा विश्लेषण में चिन्हित तारीख वाला घटना।';

  @override
  String get eventsEmpty =>
      'अगिला 90 दिन में कवनो तारीख वाला घटना नइखे। इहाँ नतीजा के तारीख देखे खातिर पसंदीदा भा पोर्टफ़ोलियो में शेयर जोड़ीं।';

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
      'खाली एही डिवाइस पर सहेजल जाला। AI विश्लेषण रउआ नोट के ध्यान में राखेला।';

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
      other: '$count खरीदारी जोड़ल गइल',
      one: '1 खरीदारी जोड़ल गइल',
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
  String get benchmarkYours => 'रउआ के खरीदारी';

  @override
  String get benchmarkIndex => 'ओतने रकम S&P 500 में';

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
      'जइसे हर खरीदारी के रकम ओही दिन S&P 500 इंडेक्स फंड में लगावल गइल होखे। लाभांश शामिल नइखे; पिछला रिटर्न भविष्य के रिटर्न के अनुमान ना देला।';

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
      'Revolut, Trading 212 आ Interactive Brokers के एक्सपोर्ट भी बिक्री समेत पहचानल जाला; लाभांश आ जमा छोड़ दिहल जाला।';

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
  String get glossTitle => 'एकर मतलब का बा?';
}
