// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get appTitle => 'Reszveny';

  @override
  String get homeTagline =>
      'शेअरचा फोटो काढा आणि त्याबद्दल सर्व काही जाणून घ्या.';

  @override
  String get homeHint =>
      'शेअर प्रमाणपत्र, ब्रोकरेज अ‍ॅपची स्क्रीन, वृत्तपत्र किंवा कंपनीचा लोगो – शेअर ओळखणारी कोणतीही गोष्ट.';

  @override
  String get takePhoto => 'फोटो काढा';

  @override
  String get chooseFromGallery => 'गॅलरीमधून निवडा';

  @override
  String get chooseImage => 'प्रतिमा निवडा';

  @override
  String get enterTickerManually => 'टिकर मॅन्युअली टाका';

  @override
  String get tickerInputLabel => 'टिकर सिम्बॉल';

  @override
  String get tickerInputHint => 'उदा. AAPL';

  @override
  String get lookUp => 'शोधा';

  @override
  String demoModeBanner(String symbols) {
    return 'डेमो मोड – मार्केट डेटा की कॉन्फिगर केलेली नाही. नमुना डेटा यासाठी उपलब्ध आहे: $symbols.';
  }

  @override
  String get recognizing => 'प्रतिमेचे विश्लेषण होत आहे…';

  @override
  String get loadingData => 'डेटा लोड होत आहे…';

  @override
  String get noCandidatesTitle => 'कोणताही शेअर ओळखला गेला नाही';

  @override
  String get noCandidatesBody =>
      'या प्रतिमेत आम्हाला शेअर ओळखता आला नाही. अधिक स्पष्ट फोटो वापरून पहा, किंवा टिकर मॅन्युअली टाका.';

  @override
  String get whatWeSaw => 'आम्ही काय पाहिले';

  @override
  String get chooseCandidateTitle => 'तुम्हाला कोणता शेअर म्हणायचा होता?';

  @override
  String confidencePercent(int percent) {
    return '$percent% खात्री';
  }

  @override
  String get settings => 'सेटिंग्ज';

  @override
  String get language => 'भाषा';

  @override
  String get systemLanguage => 'सिस्टम डीफॉल्ट';

  @override
  String get about => 'अ‍ॅपविषयी';

  @override
  String get disclaimer =>
      'हे अ‍ॅप केवळ माहिती देते आणि हा गुंतवणूक सल्ला नाही. डेटा विलंबित किंवा चुकीचा असू शकतो.';

  @override
  String dataSource(String source) {
    return 'डेटा स्रोत: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'ओळख: $source';
  }

  @override
  String get retry => 'पुन्हा प्रयत्न करा';

  @override
  String get cancel => 'रद्द करा';

  @override
  String get ok => 'ठीक आहे';

  @override
  String get close => 'बंद करा';

  @override
  String get errorGeneric => 'काहीतरी चूक झाली.';

  @override
  String get errorSectionUnavailable => 'हा विभाग लोड होऊ शकला नाही.';

  @override
  String get notAvailable => 'उपलब्ध नाही';

  @override
  String get sectionIdentity => 'ओळख';

  @override
  String get sectionPrice => 'किंमत';

  @override
  String get sectionValuation => 'मूल्यांकन';

  @override
  String get sectionFinancials => 'आर्थिक आकडेवारी';

  @override
  String get sectionDividend => 'लाभांश';

  @override
  String get sectionProfile => 'कंपनी प्रोफाइल';

  @override
  String get sectionAnalysts => 'विश्लेषक रेटिंग';

  @override
  String get sectionNews => 'बातम्या';

  @override
  String get sectionRecognition => 'ओळखीचा तपशील';

  @override
  String get labelSymbol => 'टिकर';

  @override
  String get labelExchange => 'एक्सचेंज';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'चलन';

  @override
  String get labelCountry => 'देश';

  @override
  String get labelIndustry => 'उद्योग';

  @override
  String get labelSector => 'क्षेत्र';

  @override
  String get labelWebsite => 'वेबसाइट';

  @override
  String get labelIpoDate => 'IPO तारीख';

  @override
  String get labelMarketCap => 'मार्केट कॅप';

  @override
  String get labelSharesOutstanding => 'जारी शेअर्स';

  @override
  String get labelEmployees => 'कर्मचारी';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'मुख्यालय';

  @override
  String get labelDescription => 'वर्णन';

  @override
  String get labelLastPrice => 'शेवटची किंमत';

  @override
  String get labelChange => 'बदल';

  @override
  String get labelOpen => 'ओपन';

  @override
  String get labelDayHigh => 'दिवसाचा उच्चांक';

  @override
  String get labelDayLow => 'दिवसाचा नीचांक';

  @override
  String get labelPreviousClose => 'आधीचा बंद';

  @override
  String get labelWeek52High => '52-आठवड्यांचा उच्चांक';

  @override
  String get labelWeek52Low => '52-आठवड्यांचा नीचांक';

  @override
  String get labelAverageVolume10d => 'सरासरी व्हॉल्यूम (10 दिवस)';

  @override
  String updatedAt(String time) {
    return 'अपडेट $time';
  }

  @override
  String get labelPeTrailing => 'P/E (ट्रेलिंग)';

  @override
  String get labelPeForward => 'P/E (फॉरवर्ड)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / फ्री कॅश फ्लो';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'बीटा';

  @override
  String get labelRevenueTtm => 'महसूल (TTM)';

  @override
  String get labelNetIncomeTtm => 'निव्वळ नफा (TTM)';

  @override
  String get labelGrossMargin => 'ढोबळ मार्जिन';

  @override
  String get labelOperatingMargin => 'ऑपरेटिंग मार्जिन';

  @override
  String get labelNetMargin => 'निव्वळ मार्जिन';

  @override
  String get labelRoe => 'इक्विटीवरील परतावा';

  @override
  String get labelRoa => 'मालमत्तेवरील परतावा';

  @override
  String get labelDebtToEquity => 'कर्ज / इक्विटी';

  @override
  String get labelCurrentRatio => 'करंट रेशो';

  @override
  String get labelRevenueGrowth => 'महसूल वाढ (YoY)';

  @override
  String get labelEpsGrowth => 'EPS वाढ (YoY)';

  @override
  String get labelDividendYield => 'लाभांश उत्पन्न';

  @override
  String get labelDividendPerShare => 'प्रति शेअर लाभांश';

  @override
  String get labelPayoutRatio => 'पेआउट प्रमाण';

  @override
  String get labelConsensus => 'एकमत';

  @override
  String get ratingStrongBuy => 'स्ट्राँग बाय';

  @override
  String get ratingBuy => 'बाय';

  @override
  String get ratingHold => 'होल्ड';

  @override
  String get ratingSell => 'सेल';

  @override
  String get ratingStrongSell => 'स्ट्राँग सेल';

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
    return 'कालावधी: $period';
  }

  @override
  String get noNews => 'अलीकडील बातम्या नाहीत.';

  @override
  String get openArticle => 'लेख उघडा';

  @override
  String get openLinkFailed => 'लिंक उघडता आली नाही.';

  @override
  String get recognitionSummary => 'सारांश';

  @override
  String get recognitionEvidence => 'आम्हाला असे का वाटते';

  @override
  String get recognitionRawText => 'प्रतिमेतून वाचलेला मजकूर';

  @override
  String get errMissingAnthropicKey =>
      'प्रतिमा ओळख कॉन्फिगर केलेली नाही (ANTHROPIC_API_KEY नाही). टिकर मॅन्युअली टाका.';

  @override
  String get errRecognitionUnreachable =>
      'ओळख सेवेशी संपर्क होऊ शकला नाही. तुमचे इंटरनेट कनेक्शन तपासा.';

  @override
  String errRecognitionHttp(String status) {
    return 'ओळख सेवेने त्रुटी परत केली (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'ओळख सेवा ही प्रतिमा प्रोसेस करू शकली नाही.';

  @override
  String get errRecognitionTruncated =>
      'ओळख प्रतिसाद अपूर्ण राहिला. कृपया पुन्हा प्रयत्न करा.';

  @override
  String get errRecognitionBadResponse => 'ओळख सेवेकडून अनपेक्षित प्रतिसाद.';

  @override
  String get errRecognitionEmpty => 'ओळख सेवेने रिकामा प्रतिसाद परत केला.';

  @override
  String get errMissingFinnhubKey =>
      'मार्केट डेटा कॉन्फिगर केलेला नाही (FINNHUB_API_KEY नाही).';

  @override
  String get errMarketUnreachable =>
      'मार्केट डेटा सेवेशी संपर्क होऊ शकला नाही. तुमचे इंटरनेट कनेक्शन तपासा.';

  @override
  String get errMarketRateLimited =>
      'मार्केट डेटा सेवेला खूप जास्त विनंत्या पाठवल्या गेल्या. कृपया एक मिनिट थांबा.';

  @override
  String errMarketHttp(String status) {
    return 'मार्केट डेटा सेवेने त्रुटी परत केली (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'मार्केट डेटा सेवेकडून अनपेक्षित प्रतिसाद.';

  @override
  String errNoQuote(String symbol) {
    return '$symbol साठी किंमत डेटा सापडला नाही.';
  }

  @override
  String errNoProfile(String symbol) {
    return '$symbol साठी कंपनी प्रोफाइल सापडले नाही.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'डेमो मोड केवळ $symbols ला समर्थन देतो. लाइव्ह डेटासाठी FINNHUB_API_KEY जोडा.';
  }

  @override
  String errUnknown(String detail) {
    return 'काहीतरी चूक झाली: $detail';
  }

  @override
  String get newSearch => 'नवीन शोध';

  @override
  String get recentSearches => 'अलीकडील';

  @override
  String get noRecentSearches => 'अजून कोणताही अलीकडील शोध नाही.';

  @override
  String get clearRecent => 'अलीकडील साफ करा';

  @override
  String get greeting => 'आज कोणता शेअर पाहायचा?';

  @override
  String get searchHint => 'टिकर किंवा कंपनीचे नाव';

  @override
  String get attachImage => 'प्रतिमा जोडा';

  @override
  String get searchResultsTitle => 'शोध निकाल';

  @override
  String errNoResults(String query) {
    return '“$query” साठी कोणताही शेअर सापडला नाही.';
  }

  @override
  String get quickBarHint => 'टिकर किंवा कंपनीचे नाव टाइप करा…';

  @override
  String get openFullWindow => 'विंडो उघडा';

  @override
  String hotkeyHint(String shortcut) {
    return 'Reszveny कुठूनही उघडण्यासाठी $shortcut दाबा.';
  }

  @override
  String get trayOpen => 'Reszveny उघडा';

  @override
  String get trayQuickSearch => 'झटपट शोध';

  @override
  String get trayQuit => 'बाहेर पडा';

  @override
  String get appearance => 'स्वरूप';

  @override
  String get themeSystem => 'सिस्टम';

  @override
  String get themeDark => 'डार्क';

  @override
  String get themeLight => 'लाइट';

  @override
  String get back => 'मागे';
}
