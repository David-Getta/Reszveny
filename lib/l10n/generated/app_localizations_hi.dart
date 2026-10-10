// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'StockLens';

  @override
  String get homeTagline => 'किसी शेयर की फ़ोटो लें और उसके बारे में सब कुछ जानें।';

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
  String get disclaimer => 'यह ऐप केवल जानकारी देता है और निवेश सलाह नहीं है। डेटा विलंबित या अशुद्ध हो सकता है।';

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
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count विश्लेषक', one: '1 विश्लेषक');
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
  String get errRecognitionUnreachable => 'पहचान सेवा से संपर्क नहीं हो सका। अपना इंटरनेट कनेक्शन जाँचें।';

  @override
  String errRecognitionHttp(String status) {
    return 'पहचान सेवा ने एक त्रुटि लौटाई (HTTP $status)।';
  }

  @override
  String get errRecognitionRefused => 'पहचान सेवा इस छवि को प्रोसेस नहीं कर सकी।';

  @override
  String get errRecognitionTruncated => 'पहचान प्रतिक्रिया अधूरी रह गई। कृपया पुनः प्रयास करें।';

  @override
  String get errRecognitionBadResponse => 'पहचान सेवा से अनपेक्षित प्रतिक्रिया।';

  @override
  String get errRecognitionEmpty => 'पहचान सेवा ने खाली प्रतिक्रिया लौटाई।';

  @override
  String get errMissingFinnhubKey => 'मार्केट डेटा कॉन्फ़िगर नहीं है (FINNHUB_API_KEY नहीं है)।';

  @override
  String get errMarketUnreachable => 'मार्केट डेटा सेवा से संपर्क नहीं हो सका। अपना इंटरनेट कनेक्शन जाँचें।';

  @override
  String get errMarketRateLimited => 'मार्केट डेटा सेवा को बहुत अधिक अनुरोध भेजे गए। कृपया एक मिनट प्रतीक्षा करें।';

  @override
  String errMarketHttp(String status) {
    return 'मार्केट डेटा सेवा ने एक त्रुटि लौटाई (HTTP $status)।';
  }

  @override
  String get errMarketBadResponse => 'मार्केट डेटा सेवा से अनपेक्षित प्रतिक्रिया।';

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
    return 'StockLens को कहीं से भी खोलने के लिए $shortcut दबाएँ।';
  }

  @override
  String get trayOpen => 'StockLens खोलें';

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
      'AI द्वारा लिखा गया विस्तृत अवलोकन: हाल के समाचारों का सारांश, कारोबार, मज़बूतियाँ, जोखिम और छिपे कारक, मूल्यांकन और किन बातों पर नज़र रखें।';

  @override
  String get aiGenerate => 'विश्लेषण बनाएँ';

  @override
  String get aiRegenerate => 'फिर से बनाएँ';

  @override
  String get aiGenerating => 'विश्लेषण तैयार हो रहा है… इसमें एक-दो मिनट लग सकते हैं।';

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
  String get errAiNotConfigured => 'AI विश्लेषण कॉन्फ़िगर नहीं है (ANTHROPIC_API_KEY नहीं है)।';

  @override
  String get errAiUnreachable => 'AI सेवा से संपर्क नहीं हो सका। अपना इंटरनेट कनेक्शन जाँचें।';

  @override
  String errAiHttp(String status) {
    return 'AI सेवा ने एक त्रुटि लौटाई (HTTP $status)।';
  }

  @override
  String get errAiRefused => 'AI सेवा ने इस शेयर का विश्लेषण करने से इनकार कर दिया।';

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
  String get chartUnavailable => 'वर्तमान डेटा स्रोत से कीमत का इतिहास उपलब्ध नहीं है।';

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
  String get statementsUnavailable => 'इस शेयर के लिए रिपोर्ट किए गए वित्तीय विवरण उपलब्ध नहीं हैं।';

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
  String get noFavorites => 'अभी तक कोई पसंदीदा नहीं। जोड़ने के लिए किसी शेयर पर स्टार टैप करें।';

  @override
  String get displayCurrency => 'Display currency';

  @override
  String get displayCurrencyNone => 'Stock’s own currency only';

  @override
  String labelConverted(String currency) {
    return '≈ in $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Rate: 1 $from = $rate $to (ECB, $date)';
  }
}
