// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

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
    return 'WhatStock कुठूनही उघडण्यासाठी $shortcut दाबा.';
  }

  @override
  String get trayOpen => 'WhatStock उघडा';

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

  @override
  String get aiSectionTitle => 'AI विश्लेषण';

  @override
  String get aiIntro =>
      'AI ने लिहिलेला सविस्तर आढावा: अलीकडील बातम्यांचा सारांश, व्यवसाय, बलस्थाने, जोखमी आणि छुपे घटक, मूल्यांकन, मानसशास्त्रीय, सामाजिक, तांत्रिक आणि स्थूल-आर्थिक दृष्टिकोनातून परिस्थितींसह किमतीचा अंदाज आणि कशावर लक्ष ठेवावे.';

  @override
  String get aiGenerate => 'विश्लेषण तयार करा';

  @override
  String get aiRegenerate => 'पुन्हा तयार करा';

  @override
  String get aiGenerating =>
      'विश्लेषण तयार होत आहे… यास एक-दोन मिनिटे लागू शकतात.';

  @override
  String get aiSources => 'स्रोत';

  @override
  String aiGeneratedAt(String time) {
    return 'तयार केले $time';
  }

  @override
  String get aiDisclaimer =>
      'सार्वजनिक डेटा आणि अलीकडील बातम्यांवर आधारित AI-निर्मित विश्लेषण. यात चुका असू शकतात किंवा ते जुने असू शकते, आणि हा गुंतवणूक सल्ला नाही.';

  @override
  String get errAiNotConfigured =>
      'AI विश्लेषण कॉन्फिगर केलेले नाही (ANTHROPIC_API_KEY नाही).';

  @override
  String get errAiUnreachable =>
      'AI सेवेशी संपर्क होऊ शकला नाही. तुमचे इंटरनेट कनेक्शन तपासा.';

  @override
  String errAiHttp(String status) {
    return 'AI सेवेने त्रुटी परत केली (HTTP $status).';
  }

  @override
  String get errAiRefused => 'AI सेवेने या शेअरचे विश्लेषण करण्यास नकार दिला.';

  @override
  String get errAiBadResponse => 'AI सेवेकडून अनपेक्षित प्रतिसाद.';

  @override
  String get sectionChart => 'किंमत चार्ट';

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
      'सध्याच्या डेटा स्रोतातून किंमतीचा इतिहास उपलब्ध नाही.';

  @override
  String get sectionStatements => 'आर्थिक विवरणपत्रे (वार्षिक)';

  @override
  String get labelFiscalYear => 'आर्थिक वर्ष';

  @override
  String get labelRevenue => 'महसूल';

  @override
  String get labelNetIncome => 'निव्वळ नफा';

  @override
  String get labelTotalAssets => 'एकूण मालमत्ता';

  @override
  String get labelTotalLiabilities => 'एकूण दायित्वे';

  @override
  String get labelEquity => 'भागधारकांची इक्विटी';

  @override
  String get labelOperatingCashFlow => 'ऑपरेटिंग कॅश फ्लो';

  @override
  String get statementsUnavailable =>
      'या शेअरसाठी नोंदवलेली आर्थिक विवरणपत्रे उपलब्ध नाहीत.';

  @override
  String get launchAtLogin => 'लॉगइन करताना सुरू करा';

  @override
  String get hotkeyLabel => 'ग्लोबल शॉर्टकट';

  @override
  String get hotkeyRecordHint => 'येथे क्लिक करा, मग नवीन की कॉम्बिनेशन दाबा';

  @override
  String get hotkeyReset => 'डीफॉल्टवर रीसेट करा';

  @override
  String get pasteImage => 'क्लिपबोर्डमधून प्रतिमा पेस्ट करा';

  @override
  String get errClipboardNoImage => 'क्लिपबोर्डवर कोणतीही प्रतिमा नाही.';

  @override
  String get favorites => 'आवडते';

  @override
  String get addToFavorites => 'आवडत्यांमध्ये जोडा';

  @override
  String get removeFromFavorites => 'आवडत्यांमधून काढा';

  @override
  String get noFavorites =>
      'अजून कोणतेही आवडते नाहीत. जोडण्यासाठी शेअरवरील तारा टॅप करा.';

  @override
  String get displayCurrency => 'दर्शवण्याचे चलन';

  @override
  String get displayCurrencyNone => 'फक्त शेअरचे स्वतःचे चलन';

  @override
  String labelConverted(String currency) {
    return '≈ $currency मध्ये';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'दर: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'अपडेट';

  @override
  String currentVersion(String version) {
    return 'आवृत्ती $version';
  }

  @override
  String get autoUpdate => 'अपडेट आपोआप इंस्टॉल करा';

  @override
  String get checkForUpdates => 'अपडेट तपासा';

  @override
  String get updateChecking => 'अपडेट तपासले जात आहेत…';

  @override
  String get updateUpToDate => 'तुम्ही नवीनतम आवृत्ती वापरत आहात.';

  @override
  String updateAvailable(String version) {
    return 'आवृत्ती $version उपलब्ध आहे.';
  }

  @override
  String get updateDownloading => 'अपडेट पार्श्वभूमीत डाउनलोड होत आहे…';

  @override
  String get updateDownloaded =>
      'अपडेट तयार आहे. इंस्टॉल करण्यासाठी रीस्टार्ट करा.';

  @override
  String get updateNow => 'अपडेट करा';

  @override
  String get restartNow => 'रीस्टार्ट करा';

  @override
  String get updatesViaStore => 'अपडेट अ‍ॅप स्टोअरद्वारे आपोआप मिळतात.';

  @override
  String get updateCheckFailed => 'अपडेट तपासता आले नाहीत.';

  @override
  String get subscription => 'सबस्क्रिप्शन';

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
  String get planNone => 'कोणताही सक्रिय प्लॅन नाही';

  @override
  String planAnalysesPerMonth(int count) {
    return 'दरमहा $count विश्लेषणे';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$count विश्लेषणांसह $days दिवसांचे मोफत ट्रायल';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'ट्रायलचे $days दिवस बाकी',
      one: 'ट्रायलचा 1 दिवस बाकी',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'तुमचे मोफत ट्रायल संपले आहे. विश्लेषण सुरू ठेवण्यासाठी एक प्लॅन निवडा.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'या कालावधीत $total पैकी $remaining विश्लेषणे बाकी';
  }

  @override
  String extraCredits(int count) {
    return '$count अतिरिक्त विश्लेषणे';
  }

  @override
  String renewsOn(String date) {
    return '$date रोजी नूतनीकरण';
  }

  @override
  String get choosePlan => 'प्लॅन निवडा';

  @override
  String get currentPlan => 'सध्याचा प्लॅन';

  @override
  String get subscribe => 'सबस्क्राइब करा';

  @override
  String get perMonth => '/ महिना';

  @override
  String get extraPacksTitle => 'अधिक हवे? अतिरिक्त विश्लेषणे खरेदी करा';

  @override
  String get extraPacksHint =>
      'अतिरिक्त विश्लेषणे कधीही संपत नाहीत आणि तुमचा मासिक कोटा संपल्यानंतर वापरली जातात.';

  @override
  String get buy => 'खरेदी करा';

  @override
  String get restorePurchases => 'खरेदी पुनर्संचयित करा';

  @override
  String get manageSubscription => 'सबस्क्रिप्शन व्यवस्थापित करा';

  @override
  String get purchaseSuccess => 'धन्यवाद! तुमची खरेदी सक्रिय आहे.';

  @override
  String get purchasePending => 'खरेदी प्रलंबित…';

  @override
  String get purchaseFailed => 'खरेदी पूर्ण होऊ शकली नाही.';

  @override
  String get purchaseCanceled => 'खरेदी रद्द केली.';

  @override
  String get billingUnavailable =>
      'या प्लॅटफॉर्मवर खरेदी अजून उपलब्ध नाही. तुमच्या फोन किंवा Mac वर सबस्क्राइब करा; तुमचा प्लॅन प्रत्येक डिव्हाइसवर चालेल.';

  @override
  String get errQuotaExceeded =>
      'या कालावधीसाठी तुमची विश्लेषणे शिल्लक नाहीत. तुमचा प्लॅन अपग्रेड करा किंवा अतिरिक्त विश्लेषणे खरेदी करा.';

  @override
  String get errTrialExpired =>
      'तुमचे मोफत ट्रायल संपले आहे. सुरू ठेवण्यासाठी एक प्लॅन निवडा.';

  @override
  String get errNoPlan => 'AI विश्लेषणासाठी सक्रिय प्लॅन आवश्यक आहे.';

  @override
  String get viewPlans => 'प्लॅन पहा';

  @override
  String get usageTitle => 'वापर';

  @override
  String get demoPurchaseNote =>
      'डेमो बिलिंग: या प्लॅटफॉर्मवर खरेदी सिम्युलेट केली जाते.';

  @override
  String get mostPopular => 'सर्वाधिक लोकप्रिय';

  @override
  String get bestValue => 'सर्वोत्तम मूल्य';

  @override
  String get planFeaturesCommon =>
      'फोटो ओळख, लाइव्ह डेटा, चार्ट, आवडते आणि सर्व 120 भाषा प्रत्येक प्लॅनमध्ये समाविष्ट आहेत. कोटा AI विश्लेषणांसाठी लागू होतो.';

  @override
  String get searchLanguages => 'भाषा शोधा…';

  @override
  String get noLanguageMatch => 'कोणतीही भाषा जुळत नाही.';

  @override
  String get aiSettings => 'AI विश्लेषण';

  @override
  String get aiLength => 'लांबी';

  @override
  String get aiDepthBrief => 'संक्षिप्त';

  @override
  String get aiDepthStandard => 'मानक';

  @override
  String get aiDepthDeep => 'सविस्तर';

  @override
  String get aiDepthBriefDesc => 'महत्त्वाचे मुद्दे, झटपट.';

  @override
  String get aiDepthStandardDesc => 'सर्व विभागांसह संपूर्ण अहवाल.';

  @override
  String get aiDepthDeepDesc =>
      'अधिक वेब शोध, समकक्ष कंपन्यांशी तुलना आणि अधिक सखोल तपशील.';

  @override
  String aiDepthWords(String min, String max) {
    return 'सुमारे $min–$max शब्द';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count विश्लेषणे वापरली जातात',
      one: '1 विश्लेषण वापरले जाते',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'वाचक स्तर';

  @override
  String get aiReaderBeginner => 'नवशिके';

  @override
  String get aiReaderExperienced => 'अनुभवी';

  @override
  String get aiReaderBeginnerDesc =>
      'सोपी भाषा; प्रत्येक तांत्रिक संज्ञा समजावून सांगितली जाते.';

  @override
  String get aiReaderExperiencedDesc =>
      'प्रमाणित आर्थिक परिभाषेसह अधिक घन मजकूर.';

  @override
  String get aiCounterArgument => 'सर्वात भक्कम प्रतिवाद';

  @override
  String get aiCounterArgumentDesc =>
      'सारांश नेहमी स्वतःच्याच निष्कर्षाविरुद्धच्या सर्वात भक्कम युक्तिवादाने संपतो.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'तुमच्या प्लॅनमध्ये प्रत्येक विश्लेषणासाठी जास्तीत जास्त $count वेब शोध',
      one: 'तुमच्या प्लॅनमध्ये प्रत्येक विश्लेषणासाठी जास्तीत जास्त 1 वेब शोध',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'प्लॅननुसार मानक लांबी: सामान्य $normal, Pro $pro, Max $max, Ultra $ultra. संक्षिप्तमध्ये 2 कमी, सविस्तरमध्ये 2 जास्त.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'जास्तीत जास्त $count वेब शोध',
      one: 'जास्तीत जास्त 1 वेब शोध',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'प्रत्येक विश्लेषणासाठी $count वेब शोध',
      one: 'प्रत्येक विश्लेषणासाठी 1 वेब शोध',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'या लांबीसाठी $needed विश्लेषणे लागतात, पण फक्त $left शिल्लक आहेत. सेटिंग्जमध्ये कमी लांबी निवडा किंवा अधिक विश्लेषणे मिळवा.';
  }

  @override
  String get outlookMarketMood => 'बाजाराचा मूड';

  @override
  String get moodVeryPessimistic => 'अतिशय निराशावादी';

  @override
  String get moodPessimistic => 'निराशावादी';

  @override
  String get moodNeutral => 'तटस्थ';

  @override
  String get moodOptimistic => 'आशावादी';

  @override
  String get moodVeryOptimistic => 'अतिशय आशावादी';

  @override
  String get scenarioBull => 'तेजीची परिस्थिती';

  @override
  String get scenarioBase => 'मूळ परिस्थिती';

  @override
  String get scenarioBear => 'मंदीची परिस्थिती';

  @override
  String outlookCurrentPrice(String price) {
    return 'सध्याची किंमत: $price';
  }

  @override
  String get outlookKeyLevels => 'महत्त्वाचे स्तर';

  @override
  String get keyLevelSupport => 'सपोर्ट';

  @override
  String get keyLevelResistance => 'रेझिस्टन्स';

  @override
  String get keyLevelAnchor => 'अँकर स्तर';

  @override
  String get upcomingEvents => 'आगामी घटना';

  @override
  String get outlookChartNote =>
      'सूचक श्रेणी; संभाव्यता हे ढोबळ अंदाज आहेत, भाकिते नव्हेत.';

  @override
  String get accountTitle => 'खाते';

  @override
  String get signIn => 'साइन इन करा';

  @override
  String get signOut => 'साइन आउट करा';

  @override
  String get notSignedIn => 'साइन इन केलेले नाही';

  @override
  String get accountBenefit =>
      'साइन इन करा, म्हणजे तुमचे सबस्क्रिप्शन तुमच्या सर्व डिव्हाइसवर चालेल.';

  @override
  String get accountSyncedNote =>
      'तुमचे सबस्क्रिप्शन आणि उरलेली विश्लेषणे प्रत्येक डिव्हाइसवर सारखीच असतात.';

  @override
  String get signInTitle => 'WhatStock मध्ये साइन इन करा';

  @override
  String get emailLabel => 'ईमेल पत्ता';

  @override
  String get continueWithEmail => 'ईमेलने पुढे चला';

  @override
  String codeSentTo(String email) {
    return 'आम्ही $email वर 6 अंकी कोड पाठवला आहे. तो 10 मिनिटे वैध आहे.';
  }

  @override
  String get codeLabel => 'साइन-इन कोड';

  @override
  String get resendCode => 'नवीन कोड पाठवा';

  @override
  String get useDifferentEmail => 'दुसरा ईमेल वापरा';

  @override
  String get errInvalidCode => 'कोड चुकीचा आहे किंवा त्याची मुदत संपली आहे.';

  @override
  String get errInvalidEmail => 'कृपया वैध ईमेल पत्ता टाका.';

  @override
  String get errSignInFailed =>
      'साइन इन अयशस्वी झाले. तुमचे इंटरनेट कनेक्शन तपासा आणि पुन्हा प्रयत्न करा.';

  @override
  String get checkoutWaiting =>
      'तुमच्या ब्राउझरमध्ये पेमेंट पूर्ण करा. ते पूर्ण झाल्यावर अ‍ॅप आपोआप अपडेट होईल.';

  @override
  String get paymentViaStripe =>
      'Stripe द्वारे तुमच्या ब्राउझरमध्ये सुरक्षित पेमेंट. कधीही रद्द करा.';

  @override
  String get paymentViaStore =>
      'बिलिंग तुमच्या App Store किंवा Google Play खात्याद्वारे होते. स्टोअर सेटिंग्जमध्ये कधीही रद्द करा.';

  @override
  String get keySpace => 'स्पेस';

  @override
  String get doubleOptionTitle => 'Option दोनदा दाबा';

  @override
  String get doubleOptionSubtitle =>
      'Option की पटकन दोनदा दाबल्यानेही WhatStock उघडते.';

  @override
  String get doubleOptionPermission =>
      'इतर अ‍ॅप्समध्येही हे काम करावे यासाठी सिस्टम सेटिंग्ज → गोपनीयता आणि सुरक्षा → इनपुट मॉनिटरिंग येथे WhatStock ला परवानगी द्या, मग अ‍ॅप पुन्हा उघडा.';

  @override
  String get openSystemSettings => 'सिस्टम सेटिंग्ज उघडा';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'WhatStock कुठूनही उघडण्यासाठी $shortcut दाबा किंवा Option दोनदा दाबा.';
  }

  @override
  String get scenarioMostLikely => 'सर्वाधिक संभाव्य';

  @override
  String get longTermToday => 'आज';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years वर्षे',
      one: '1 वर्ष',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return 'दरवर्षी $range';
  }

  @override
  String longTermLikely(String price) {
    return 'सर्वाधिक संभाव्य $price';
  }

  @override
  String get confidenceLow => 'कमी विश्वास';

  @override
  String get confidenceMedium => 'मध्यम विश्वास';

  @override
  String get confidenceHigh => 'उच्च विश्वास';

  @override
  String get longTermNote =>
      'दीर्घकालीन पल्ले नमूद केलेल्या गृहितकांवर आधारित आहेत आणि काळानुसार रुंदावतात. किमतींमध्ये लाभांश समाविष्ट नाही. ढोबळ अंदाज आहेत, भाकिते नाहीत.';

  @override
  String get portfolio => 'पोर्टफोलिओ';

  @override
  String get portfolioEmpty =>
      'अजून काही नाही. एखादा शेअर उघडा आणि तुमच्याकडील शेअर्सवर लक्ष ठेवण्यासाठी “पोर्टफोलिओमध्ये जोडा” टॅप करा.';

  @override
  String get portfolioLocalNote =>
      'फक्त याच डिव्हाइसवर जतन होते. एकूण रक्कम ECB च्या संदर्भ दरांनी रूपांतरित होते; किमती उशिरा येऊ शकतात.';

  @override
  String get addToPortfolio => 'पोर्टफोलिओमध्ये जोडा';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol जोडा';
  }

  @override
  String get portfolioQuantity => 'शेअर्सची संख्या';

  @override
  String portfolioBuyPrice(String currency) {
    return 'प्रति शेअर किंमत ($currency)';
  }

  @override
  String get portfolioBuyDate => 'खरेदीची तारीख';

  @override
  String get portfolioAdd => 'जोडा';

  @override
  String get portfolioInvalidNumber => 'शून्यापेक्षा मोठी संख्या लिहा.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol पोर्टफोलिओमध्ये जोडला.';
  }

  @override
  String get portfolioTotalValue => 'एकूण मूल्य';

  @override
  String get portfolioToday => 'आज';

  @override
  String get portfolioGainLoss => 'नफा/तोटा';

  @override
  String get portfolioInvested => 'गुंतवणूक';

  @override
  String get portfolioAllocation => 'वाटणी';

  @override
  String get portfolioPositions => 'पोझिशन्स';

  @override
  String portfolioAvgCost(String price) {
    return 'सरासरी खर्च $price';
  }

  @override
  String get portfolioYourPosition => 'तुमची पोझिशन';

  @override
  String get portfolioPurchases => 'खरेदी';

  @override
  String get portfolioRemove => 'काढा';

  @override
  String get portfolioExcluded =>
      'किंमत किंवा विनिमय दर नसलेल्या पोझिशन्स एकूण रकमेत धरल्या जात नाहीत.';

  @override
  String get priceAlerts => 'किंमत सूचना';

  @override
  String get setPriceAlert => 'किंमत सूचना सेट करा';

  @override
  String alertDialogTitle(String symbol) {
    return 'किंमत सूचना · $symbol';
  }

  @override
  String get alertKindAbove => 'यापेक्षा वर गेल्यास';

  @override
  String get alertKindBelow => 'यापेक्षा खाली आल्यास';

  @override
  String get alertKindMove => 'एका दिवसात खूप हलल्यास';

  @override
  String alertTargetPrice(String currency) {
    return 'किंमत ($currency)';
  }

  @override
  String get alertMovePercent => 'दैनिक बदल (%)';

  @override
  String get alertAlreadyMet => 'किंमत आधीच या पातळीच्या पुढे गेली आहे.';

  @override
  String get alertSave => 'सूचना सेट करा';

  @override
  String alertCreated(String symbol) {
    return '$symbol साठी सूचना सेट झाली.';
  }

  @override
  String get alertsEmpty =>
      'अजून कोणतीही सूचना नाही. एखादा शेअर उघडा आणि घंटीवर टॅप करा.';

  @override
  String get alertsNote =>
      'WhatStock चालू असेपर्यंत दर 5 मिनिटांनी सूचना तपासल्या जातात. संगणकावर अ‍ॅप मेनू बार किंवा सिस्टम ट्रेमध्ये चालू राहते; फोनवर सध्या अ‍ॅप उघडे असतानाच सूचना येतात.';

  @override
  String alertDescAbove(String price) {
    return '$price च्या वर';
  }

  @override
  String alertDescBelow(String price) {
    return '$price च्या खाली';
  }

  @override
  String alertDescMove(String percent) {
    return 'दैनिक बदल ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return '$date रोजी $price वर सक्रिय झाली';
  }

  @override
  String get alertRearm => 'पुन्हा सुरू करा';

  @override
  String get alertDelete => 'हटवा';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol $price च्या वर गेला';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol $price च्या खाली आला';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol आज $percent हलला';
  }

  @override
  String alertHitBody(String price) {
    return 'सध्याची किंमत: $price';
  }

  @override
  String get alertOpen => 'उघडा';

  @override
  String get keepInTrayTitle => 'विंडो बंद केल्यानंतरही चालू राहू द्या';

  @override
  String get keepInTraySubtitle =>
      'WhatStock मेनू बार किंवा सिस्टम ट्रेमध्ये राहते, त्यामुळे शॉर्टकट आणि किंमत सूचना चालू राहतात.';

  @override
  String get termsOfUse => 'वापराच्या अटी';

  @override
  String get privacyPolicy => 'गोपनीयता धोरण';

  @override
  String get subscriptionLegal =>
      'तुम्ही रद्द करेपर्यंत सदस्यता दर महिन्याला आपोआप नूतनीकृत होते. सदस्यता घेऊन तुम्ही वापराच्या अटी आणि गोपनीयता धोरण स्वीकारता.';

  @override
  String get deleteAccount => 'खाते हटवा';

  @override
  String get deleteAccountTitle => 'तुमचे खाते हटवायचे?';

  @override
  String get deleteAccountBody =>
      'तुमचे खाते आणि आमच्या सर्व्हरवर साठवलेले सर्व (ईमेल, मर्यादा, वापर) कायमचे हटवले जाईल आणि न वापरलेली विश्लेषणे गमावली जातील. ब्राउझरमध्ये भरलेली सदस्यता लगेच रद्द होते; App Store किंवा Google Play ची सदस्यता स्टोअरच्या सेटिंग्जमध्ये रद्द करावी लागेल.';

  @override
  String get deleteLocalData =>
      'या डिव्हाइसवरील डेटाही हटवा (पोर्टफोलिओ, सूचना, आवडते, इतिहास, जतन केलेली विश्लेषणे)';

  @override
  String get deleteAccountConfirm => 'कायमचे हटवा';

  @override
  String get accountDeleted => 'तुमचे खाते हटवले गेले.';

  @override
  String get errDeleteAccount =>
      'खाते हटवता आले नाही. कनेक्शन तपासा आणि पुन्हा प्रयत्न करा.';

  @override
  String get aiTrialBriefNote =>
      'ट्रायल विश्लेषणे संक्षिप्त असतात आणि जलद AI मॉडेलने तयार केली जातात. प्लॅनसोबत तुम्हाला आमचे सर्वात सक्षम AI, अधिक वेब शोध आणि मानक व सविस्तर लांबी मिळते.';

  @override
  String get billingMonthly => 'मासिक';

  @override
  String get billingYearly => 'वार्षिक';

  @override
  String get yearlyDiscount => '2 महिने मोफत';

  @override
  String get perYear => '/ वर्ष';

  @override
  String pricePerMonthApprox(String price) {
    return 'दरमहा ≈ $price';
  }

  @override
  String get subscriptionLegalYearly =>
      'तुम्ही रद्द करेपर्यंत वार्षिक सदस्यता दरवर्षी आपोआप नूतनीकृत होते. सदस्यता घेऊन तुम्ही वापराच्या अटी आणि गोपनीयता धोरण स्वीकारता.';

  @override
  String get myAnalyses => 'माझी विश्लेषणे';

  @override
  String get navAlerts => 'सूचना';

  @override
  String get inviteTitle => 'बंद पूर्वावलोकन';

  @override
  String get inviteBody =>
      'WhatStock सध्या फक्त आमंत्रणाद्वारे उपलब्ध आहे. तुम्हाला मिळालेला आमंत्रण कोड टाका.';

  @override
  String get inviteCodeLabel => 'आमंत्रण कोड';

  @override
  String get inviteContinue => 'पुढे जा';

  @override
  String get inviteInvalid => 'हा आमंत्रण कोड वैध नाही.';

  @override
  String get inviteExpired =>
      'या आमंत्रणाची मुदत संपली आहे. ज्यांनी तुम्हाला आमंत्रित केले त्यांच्याकडे नवीन कोड मागा.';

  @override
  String get inviteDeviceLimit =>
      'हा आमंत्रण कोड आधीच कमाल संख्येतील डिव्हाइसेसवर वापरला जात आहे.';

  @override
  String get previewConfidential => 'गोपनीय पूर्वावलोकन';

  @override
  String get errPreviewDailyLimit =>
      'या पूर्वावलोकनाची आजची विश्लेषण मर्यादा पूर्ण झाली आहे. उद्या पुन्हा प्रयत्न करा.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count तासांपूर्वी',
      one: '1 तासापूर्वी',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिवसांपूर्वी',
      one: '1 दिवसापूर्वी',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'हे विश्लेषण अपडेट करायचे?';

  @override
  String staleBody(String age) {
    return 'हे $age तयार केले होते. तेव्हापासून किमती, बातम्या आणि निकाल बदललेले असू शकतात.';
  }

  @override
  String get staleKeep => 'आधीचे दाखवा';

  @override
  String get staleRefresh => 'नवीन तयार करा';

  @override
  String seeAll(int count) {
    return 'सर्व पहा ($count)';
  }

  @override
  String get searchAnalyses => 'तुमची विश्लेषणे शोधा';

  @override
  String get deleteAnalysis => 'हटवा';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol विश्लेषण हटवले';
  }

  @override
  String get keyLevelAlertHint =>
      'किंमत एखाद्या स्तरावर पोहोचल्यावर सूचना मिळवण्यासाठी त्या स्तरावर टॅप करा.';

  @override
  String get shareAnalysisTitle => 'विश्लेषण शेअर करा';

  @override
  String get shareAsImage => 'प्रतिमा म्हणून शेअर करा';

  @override
  String get shareAsText => 'मजकूर म्हणून शेअर करा';

  @override
  String get shareCardFooter => 'WhatStock वापरून तयार केले';

  @override
  String get shareCardDisclaimer => 'AI विश्लेषण · गुंतवणूक सल्ला नाही';

  @override
  String get referralTitle => 'मित्रांना आमंत्रित करा';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count अतिरिक्त विश्लेषणे मिळतील',
      one: '1 अतिरिक्त विश्लेषण मिळेल',
    );
    return 'तुमचा कोड शेअर करा. तुमच्या मित्राला लगेच $_temp0, आणि त्यांच्या पहिल्या विश्लेषणानंतर तुम्हालाही तेवढाच लाभ मिळेल.';
  }

  @override
  String get referralYourCode => 'तुमचा कोड';

  @override
  String referralStats(int invited, int rewarded) {
    return 'आमंत्रित: $invited · बक्षीस मिळाले: $rewarded';
  }

  @override
  String get referralHaveCode => 'मित्राकडून कोड मिळाला आहे का?';

  @override
  String get referralRedeem => 'रिडीम करा';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count अतिरिक्त विश्लेषणे जोडली. स्वागत आहे!',
      one: '1 अतिरिक्त विश्लेषण जोडले. स्वागत आहे!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'हा कोड अस्तित्वात नाही. तपासा आणि पुन्हा प्रयत्न करा.';

  @override
  String get referralErrOwn => 'तुम्ही तुमचा स्वतःचा कोड रिडीम करू शकत नाही.';

  @override
  String get referralErrAlready =>
      'तुम्ही आधीच एका मित्राचा कोड रिडीम केला आहे.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count अतिरिक्त विश्लेषणे मिळतील',
      one: '1 अतिरिक्त विश्लेषण मिळेल',
    );
    return 'मला WhatStock वर शेअर्सचे विश्लेषण मिळते: शेअरचा फोटो घ्या आणि AI तो समजावून सांगते. माझ्या $code कोडने तुम्हाला $_temp0.';
  }

  @override
  String get referralCopied => 'कोड कॉपी केला';

  @override
  String get onboardTitle1 => 'शेअरचा फोटो काढा';

  @override
  String get onboardBody1 =>
      'ब्रोकरेज अॅपची स्क्रीन, वर्तमानपत्र किंवा कंपनीचा लोगो पुरेसा आहे: WhatStock शेअर ओळखतो आणि त्याची किंमत, चार्ट आणि महत्त्वाचे आकडे दाखवतो.';

  @override
  String get onboardTitle2 => 'काही मिनिटांत समजून घ्या';

  @override
  String get onboardBody2 =>
      'AI विश्लेषण शेअरला काय हलवते, त्यातील जोखीम, मूल्यांकन आणि किंमत कुठे जाऊ शकते याच्या तीन शक्यता स्पष्ट करते – स्रोतांसह आणि तुमच्या भाषेत.';

  @override
  String get onboardTitle3 => 'नेहमी अपडेट राहा';

  @override
  String get onboardBody3 =>
      'आवडते, तुमचा पोर्टफोलिओ आणि किंमत सूचना तुम्हाला माहिती देत राहतात. तुमची विश्लेषणे तुमच्या डिव्हाइसवरच राहतात, पुन्हा उघडण्यासाठी तयार.';

  @override
  String get onboardNext => 'पुढे';

  @override
  String get onboardStart => 'सुरू करा';

  @override
  String get onboardSkip => 'वगळा';

  @override
  String changesTitle(String date) {
    return 'मागील विश्लेषणापासून ($date)';
  }

  @override
  String get changesPrice => 'किंमत';

  @override
  String get changesNoMajor => 'अंदाजात फारसा बदल झालेला नाही.';

  @override
  String get changesPreviousSummary => 'मागील सारांश';

  @override
  String get telemetryTitle => 'WhatStock अधिक चांगले बनवण्यात मदत करा';

  @override
  String get telemetryBody =>
      'अनामिक वापर आकडेवारी आणि क्रॅश अहवाल शेअर करा: कोणती वैशिष्ट्ये वापरली जातात आणि काय चुकले. तुमचे शेअर्स, विश्लेषणे किंवा वैयक्तिक डेटा कधीही नाही. तुम्ही हे कधीही सेटिंग्जमध्ये बदलू शकता.';

  @override
  String get telemetryAllow => 'अनुमती द्या';

  @override
  String get telemetryDecline => 'नको, धन्यवाद';

  @override
  String get telemetrySetting => 'अनामिक आकडेवारी आणि क्रॅश अहवाल';

  @override
  String get telemetrySettingHint =>
      'वैशिष्ट्ये किती वेळा वापरली जातात आणि त्रुटी अहवाल, वैयक्तिक डेटा किंवा तुमच्या शोध व विश्लेषणांच्या मजकुराशिवाय.';

  @override
  String get askButton => 'या विश्लेषणाबद्दल विचारा';

  @override
  String askTitle(String symbol) {
    return '$symbol बद्दल प्रश्न';
  }

  @override
  String get askIntro =>
      'विश्लेषणाबद्दल काहीही विचारा: एखाद्या जोखमीचा अर्थ काय, कशामुळे अंदाज बदलू शकतो, एखादा आकडा कसा काढला. उत्तरे या विश्लेषणावर आधारित आहेत आणि ती गुंतवणूक सल्ला नाहीत.';

  @override
  String get askHint => 'प्रश्न विचारा…';

  @override
  String get askSend => 'पाठवा';

  @override
  String get askThinking => 'विचार करत आहे…';

  @override
  String get askSuggest1 => 'सर्वात मोठी जोखीम कोणती?';

  @override
  String get askSuggest2 => 'कशामुळे अंदाज बदलू शकतो?';

  @override
  String get askSuggest3 => 'सोप्या भाषेत समजावून सांगा';

  @override
  String get askMaxReached =>
      'या विश्लेषणासाठी हा शेवटचा प्रश्न होता. आणखी विचारण्यासाठी नवीन विश्लेषण तयार करा.';

  @override
  String get errAskLimit =>
      'आजची प्रश्नांची मर्यादा पूर्ण झाली आहे. उद्या पुन्हा प्रयत्न करा.';

  @override
  String get eventTomorrow => 'उद्या';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days दिवसांत',
      one: '1 दिवसात',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'तिमाही निकाल';

  @override
  String get eventBeforeOpen => 'बाजार उघडण्यापूर्वी';

  @override
  String get eventAfterClose => 'बाजार बंद झाल्यानंतर';

  @override
  String eventEpsEstimate(String value) {
    return 'अपेक्षित EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'तुमच्या विश्लेषणातून';

  @override
  String get eventsHint =>
      'पुढील 90 दिवसांतील तुमच्या आवडत्या आणि पोर्टफोलिओमधील शेअर्सच्या निकालांच्या तारखा, आणि तुमच्या विश्लेषणांनी नोंदवलेल्या तारखेच्या घटना.';

  @override
  String get eventsEmpty =>
      'पुढील 90 दिवसांत तारीख असलेली कोणतीही घटना नाही. निकालांच्या तारखा येथे पाहण्यासाठी आवडते किंवा पोर्टफोलिओ शेअर्स जोडा.';

  @override
  String get compareTitle => 'तुलना';

  @override
  String get compareAdd => 'शेअर जोडा';

  @override
  String get compareRemove => 'काढा';

  @override
  String get compareTickerHint => 'टिकर, उदा. MSFT';

  @override
  String get compareHint =>
      'मुख्य आकडे शेजारी-शेजारी; प्रत्येक ओळीतील सर्वोत्तम मूल्य हायलाइट केले आहे. रकमा प्रत्येक शेअरच्या स्वतःच्या चलनात आहेत.';

  @override
  String get compareNoAnalysis => 'अद्याप विश्लेषण नाही';

  @override
  String get portfolioDividends => 'वार्षिक लाभांश';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent उत्पन्न';
  }

  @override
  String get portfolioDividendNote =>
      'अपेक्षित वार्षिक लाभांश मागील 12 महिन्यांत दिलेल्या लाभांशावर आधारित आहे; भविष्यातील देयकांची हमी नाही.';

  @override
  String positionDividend(String amount) {
    return 'लाभांश: वार्षिक $amount';
  }

  @override
  String get chartAvgCost => 'तुमची सरासरी';

  @override
  String get chartAlertLevel => 'सूचना';

  @override
  String get marketsToday => 'आजचे बाजार';

  @override
  String get notesTitle => 'माझ्या नोंदी';

  @override
  String get notesHint =>
      'तुम्ही तो का खरेदी केला, कशावर लक्ष ठेवत आहात, काय झाल्यास विकाल?';

  @override
  String get notesInfo =>
      'फक्त याच डिव्हाइसवर जतन होते. AI विश्लेषण तुमच्या नोंदी विचारात घेते.';

  @override
  String notesSaved(String date) {
    return 'जतन केले: $date';
  }

  @override
  String get peersTitle => 'समान कंपन्या';

  @override
  String get portfolioExport => 'CSV म्हणून निर्यात करा';

  @override
  String get portfolioImport => 'CSV मधून आयात करा';

  @override
  String get portfolioImportHint =>
      'प्रत्येक ओळीत एक खरेदी पेस्ट करा: टिकर, प्रमाण, किंमत, चलन, तारीख (YYYY-MM-DD). स्तंभ स्वल्पविराम, अर्धविराम किंवा टॅबने वेगळे करता येतात; शीर्षक ओळ ऐच्छिक आहे.';

  @override
  String get portfolioImportButton => 'आयात करा';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count खरेदी जोडल्या',
      one: '1 खरेदी जोडली',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ओळी वगळल्या',
      one: '1 ओळ वगळली',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'पोर्टफोलिओ, आवडते, किंमत सूचना आणि नोंदी तुमच्या सर्व डिव्हाइसवर सिंक होतात.';

  @override
  String syncLast(String time) {
    return 'शेवटचे सिंक: $time';
  }

  @override
  String get syncNow => 'आता सिंक करा';

  @override
  String get syncFailed => 'सिंक अयशस्वी झाले. ते आपोआप पुन्हा प्रयत्न करेल.';

  @override
  String get alertEmailTitle => 'सूचना ट्रिगर झाल्यावर ई-मेल';

  @override
  String get alertEmailOn =>
      'आम्ही दर काही मिनिटांनी तुमच्या सूचना तपासतो आणि अ‍ॅप बंद असतानाही तुम्हाला ई-मेल पाठवतो.';

  @override
  String get alertEmailSignIn =>
      'अ‍ॅप बंद असतानाही ई-मेलवर सूचना मिळवण्यासाठी सेटिंग्जमध्ये तुमच्या ई-मेलने साइन इन करा.';

  @override
  String get portfolioHistory => 'कालानुसार मूल्य';

  @override
  String get portfolioReviewTitle => 'AI पोर्टफोलिओ आढावा';

  @override
  String get portfolioReviewIntro =>
      'AI तुमचा संपूर्ण पोर्टफोलिओ तपासते: केंद्रीकरण, क्षेत्र आणि चलन जोखीम, तुमच्या शेअर्सच्या समान जोखमी आणि लाभांश. 1 विश्लेषण वापरले जाते.';

  @override
  String get portfolioReviewButton => 'माझ्या पोर्टफोलिओचा आढावा घ्या';

  @override
  String get portfolioReviewAgain => 'पुन्हा आढावा घ्या';

  @override
  String get portfolioReviewWorking =>
      'तुमच्या पोर्टफोलिओचा आढावा घेतला जात आहे…';

  @override
  String get digestTitle => 'ईमेलद्वारे साप्ताहिक सारांश';

  @override
  String get digestHint =>
      'दर सोमवारी: मागील आठवड्यात तुमचे आवडते आणि पोर्टफोलिओ कसे हलले, आणि त्यांच्या आगामी निकालांच्या तारखा.';

  @override
  String get benchmarkTitle => 'S&P 500 शी तुलना';

  @override
  String get benchmarkYours => 'तुमची खरेदी';

  @override
  String get benchmarkIndex => 'तेवढीच रक्कम S&P 500 मध्ये';

  @override
  String benchmarkAhead(String points) {
    return 'निर्देशांकापेक्षा $points टक्केवारी गुण चांगले';
  }

  @override
  String benchmarkBehind(String points) {
    return 'निर्देशांकापेक्षा $points टक्केवारी गुण मागे';
  }

  @override
  String get benchmarkHint =>
      'जणू प्रत्येक खरेदीची रक्कम त्याच दिवशी S&P 500 इंडेक्स फंडात गुंतवली होती. लाभांश समाविष्ट नाही; मागील परतावा भविष्यातील परताव्याचा अंदाज देत नाही.';

  @override
  String get portfolioSell => 'विका';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbol विका';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'प्रति शेअर विक्री किंमत ($currency)';
  }

  @override
  String get portfolioSellDate => 'विक्रीची तारीख';

  @override
  String get portfolioSellAll => 'सर्व';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'तुमच्याकडे $quantity आहेत';
  }

  @override
  String get portfolioSold => 'विकले';

  @override
  String get portfolioRealized => 'प्राप्त';

  @override
  String get portfolioClosed => 'बंद पोझिशन्स';

  @override
  String get portfolioClosedNote => 'सर्व शेअर्स विकले';

  @override
  String get portfolioTransactions => 'व्यवहार';

  @override
  String get portfolioRealizedByYear => 'वर्षनिहाय प्राप्त नफा';

  @override
  String get portfolioRealizedHint =>
      'विक्री आधी तुमच्या सर्वात जुन्या खरेदीशी जुळवली जाते (FIFO), आजच्या विनिमय दराने रूपांतरित. कर विवरणपत्रासाठी तुमच्या ब्रोकरचे स्टेटमेंट वापरा.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'या विश्लेषणानंतर नवीन तिमाही निकाल जाहीर झाले आहेत ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'नवीन निकाल';

  @override
  String get portfolioImportBrokers =>
      'Revolut, Trading 212 आणि Interactive Brokers चे एक्सपोर्टही विक्रीसह ओळखले जातात; लाभांश आणि जमा वगळले जातात.';

  @override
  String get portfolioImportFile => 'फाइल निवडा';

  @override
  String offlineBanner(String time) {
    return 'कनेक्शन नाही – शेवटचा जतन केलेला डेटा दाखवला जात आहे ($time).';
  }

  @override
  String get glossMarketCap =>
      'शेअर बाजारात संपूर्ण कंपनीची किंमत किती आहे: शेअरचा भाव × शेअर्सची संख्या.';

  @override
  String get glossSharesOutstanding =>
      'कंपनीने किती शेअर्स जारी केले आहेत. ही संख्या वाढल्यास प्रत्येक शेअरचा वाटा लहान होतो; शेअर बायबॅकमुळे ती कमी होते.';

  @override
  String get glossPeTrailing =>
      'भाव ÷ मागील 12 महिन्यांची प्रति शेअर कमाई: सध्याच्या नफ्याच्या किती वर्षांची किंमत तुम्ही मोजता. कमी असल्यास स्वस्त, पण वेगाने वाढणाऱ्या कंपन्यांचा P/E सहसा जास्त असतो.';

  @override
  String get glossPeForward =>
      'P/E सारखेच, पण पुढील 12 महिन्यांसाठी विश्लेषकांना अपेक्षित असलेल्या नफ्यावर आधारित. ट्रेलिंग P/E पेक्षा कमी असल्यास नफा वाढण्याची अपेक्षा आहे.';

  @override
  String get glossPb =>
      'भाव ÷ प्रति शेअर बुक व्हॅल्यू (मालमत्ता वजा कर्ज). सुमारे 1 म्हणजे कागदावर कंपनीकडे जितके आहे तितकीच किंमत बाजार देतो.';

  @override
  String get glossPs =>
      'बाजारमूल्य ÷ वार्षिक महसूल. ज्या कंपन्यांना अजून कमी किंवा अजिबात नफा नाही त्यांच्यासाठी उपयुक्त; एकाच उद्योगात तुलना करा.';

  @override
  String get glossEvToFcf =>
      'कर्जासह कंपनीचे मूल्य (EV) ÷ गुंतवणुकीनंतर वर्षभरात निर्माण होणारी रोख रक्कम. कमी म्हणजे किमतीच्या बदल्यात तुम्हाला जास्त रोख मिळते.';

  @override
  String get glossPeg =>
      'P/E ÷ अपेक्षित वार्षिक नफा वाढ (%). सुमारे 1 हे अनेकदा योग्य मानले जाते; हे P/E ला वाढीच्या संदर्भात पाहते.';

  @override
  String get glossEps =>
      'मागील 12 महिन्यांतील प्रति शेअर नफा. वर्षानुवर्षे वाढणारा EPS हे निरोगी कंपनीच्या सर्वात भक्कम लक्षणांपैकी एक आहे.';

  @override
  String get glossBeta =>
      'शेअर बाजारासोबत किती हलतो: 1 = बाजाराइतका, 1.5 = सुमारे 50% मोठे चढउतार, 1 पेक्षा कमी = शांत.';

  @override
  String get glossRevenueTtm =>
      'मागील 12 महिन्यांची एकूण विक्री, कोणताही खर्च वजा करण्यापूर्वी.';

  @override
  String get glossNetIncomeTtm =>
      'मागील 12 महिन्यांत सर्व खर्च, व्याज आणि कर वजा केल्यानंतर उरलेला नफा.';

  @override
  String get glossGrossMargin =>
      'उत्पादनांचा थेट खर्च वजा केल्यानंतर महसुलाचा किती भाग उरतो. जास्त मार्जिन अनेकदा किंमत ठरवण्याची ताकद दर्शवते.';

  @override
  String get glossOperatingMargin =>
      'व्यवसाय चालवण्याचा खर्च (पगार, भाडे, मार्केटिंग) वजा केल्यानंतर, व्याज आणि करापूर्वी महसुलाचा किती भाग उरतो.';

  @override
  String get glossNetMargin =>
      'महसुलाचा किती भाग अंतिम नफा बनतो. 20% म्हणजे विक्रीच्या प्रत्येक 100 पैकी 20 नफा आहे.';

  @override
  String get glossRoe =>
      'इक्विटीवरील परतावा: वार्षिक नफा ÷ मालकांचे भांडवल. व्यवस्थापन भागधारकांचा पैसा किती चांगल्या प्रकारे वापरते ते दाखवते; सुमारे 15% पेक्षा जास्त म्हणजे मजबूत.';

  @override
  String get glossRoa =>
      'मालमत्तेवरील परतावा: वार्षिक नफा ÷ कंपनीची एकूण मालमत्ता. एकाच उद्योगात तुलना करा.';

  @override
  String get glossDebtToEquity =>
      'कर्ज ÷ मालकांचे भांडवल. जास्त म्हणजे अधिक उसने पैसे: व्याजदर वाढल्यास किंवा व्यवसाय मंदावल्यास अधिक जोखीम.';

  @override
  String get glossCurrentRatio =>
      'अल्पकालीन मालमत्ता ÷ वर्षभरात भरायची बिले. 1 पेक्षा जास्त म्हणजे कंपनी जवळची बिले भरू शकते.';

  @override
  String get glossRevenueGrowth =>
      'एका वर्षापूर्वीच्या तुलनेत महसूल किती वाढला.';

  @override
  String get glossEpsGrowth =>
      'एका वर्षापूर्वीच्या तुलनेत प्रति शेअर नफा किती वाढला.';

  @override
  String get glossDividendYield =>
      'वार्षिक लाभांश ÷ शेअरचा भाव: तुम्ही भरलेल्या रकमेच्या टक्केवारीत दरवर्षी मिळणारे रोख उत्पन्न.';

  @override
  String get glossDividendPerShare =>
      'मागील वर्षभरात एका शेअरवर दिलेला लाभांश.';

  @override
  String get glossPayoutRatio =>
      'नफ्याचा किती भाग लाभांश म्हणून दिला जातो. 100% पेक्षा जास्त असल्यास कंपनी कमावते त्यापेक्षा जास्त देते, जे क्वचितच टिकते.';

  @override
  String get glossTitle => 'याचा अर्थ काय?';

  @override
  String get watchNewsTitle => 'तुमच्या शेअर्सच्या बातम्या';

  @override
  String get undo => 'पूर्ववत करा';

  @override
  String get watchSort => 'क्रमवारी लावा';

  @override
  String get watchSortOwn => 'माझा क्रम';

  @override
  String get watchSortGainers => 'सर्वाधिक वाढ आधी';

  @override
  String get watchSortLosers => 'सर्वाधिक घट आधी';

  @override
  String get watchSortName => 'टिकरनुसार (A–Z)';

  @override
  String get watchHint =>
      'क्रम बदलण्यासाठी हँडल ओढा, काढण्यासाठी डावीकडे स्वाइप करा. रेषा मागील 30 दिवस दाखवते.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: तुमचे विश्लेषण तयार आहे.';
  }

  @override
  String alertFromCost(String price) {
    return 'तुमच्या सरासरी खरेदी किमतीवरून ($price):';
  }

  @override
  String get briefTitle => 'आज तुमच्या शेअर्ससोबत';

  @override
  String get briefButton => 'आजचा सारांश';

  @override
  String get briefHint =>
      'आज तुमचा पोर्टफोलिओ आणि आवडते शेअर्स कसे हलले आणि ताज्या बातम्या त्यांच्याबद्दल काय सांगतात याचा छोटा AI सारांश. यात कोणतेही विश्लेषण खर्च होत नाही.';

  @override
  String get briefRefresh => 'अपडेट करा';

  @override
  String get sectionEarnings => 'तिमाही निकाल';

  @override
  String earningsNext(String date) {
    return 'पुढील अहवाल: $date';
  }

  @override
  String get earningsExpected => 'अपेक्षित EPS';

  @override
  String get earningsReported => 'जाहीर EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'मागील $total पैकी $beats तिमाहींत अपेक्षित EPS इतका किंवा त्याहून अधिक',
      one: '1 पैकी $beats तिमाहीत अपेक्षित EPS इतका किंवा त्याहून अधिक',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol उद्या तिमाही निकाल जाहीर करणार';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol आज तिमाही निकाल जाहीर करणार';
  }

  @override
  String get earningsRemindersTitle => 'निकाल स्मरणपत्रे';

  @override
  String get earningsRemindersSubtitle =>
      'तुमचे आवडते किंवा पोर्टफोलिओमधील शेअर्स तिमाही निकाल जाहीर करण्याच्या आदल्या दिवशी सूचना';

  @override
  String addAllToFavorites(int count) {
    return 'सर्व आवडत्यांमध्ये जोडा ($count)';
  }

  @override
  String get portfolioImportPhoto => 'स्क्रीनशॉटमधून आयात करा';

  @override
  String get holdingsReading => 'तुमच्या पोझिशन्स वाचत आहे…';

  @override
  String get holdingsReviewTitle => 'सापडलेल्या पोझिशन्स';

  @override
  String get holdingsReviewHint =>
      'जोडण्यापूर्वी आकडे तपासा. किंमत ही प्रति शेअर तुमची सरासरी खरेदी किंमत आहे, आजची किंमत नाही.';

  @override
  String get holdingsNoPrice => 'प्रतिमेत सरासरी खरेदी किंमत नाही';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count पोझिशन्स जोडा',
      one: '1 पोझिशन जोडा',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'या प्रतिमेत कोणत्याही शेअर पोझिशन्स सापडल्या नाहीत. तुमच्या ब्रोकरच्या पोझिशन्स किंवा होल्डिंग्ज पेजचा स्क्रीनशॉट वापरून पहा.';

  @override
  String get week52Range => '52-आठवड्यांची श्रेणी';

  @override
  String week52BelowHigh(String percent) {
    return '52-आठवड्यांच्या उच्चांकापेक्षा $percent खाली';
  }

  @override
  String get week52AtHigh => '52-आठवड्यांच्या उच्चांकावर';

  @override
  String get alertKindTrailing => 'शिखरापासून घसरल्यास';

  @override
  String get alertTrailingPercent => 'शिखरापासून घसरण (%)';

  @override
  String get alertTrailingHint =>
      'किमतीचा वरपर्यंत पाठलाग करते: सेट केल्यापासूनच्या सर्वोच्च पातळीपासून किंमत इतकी घसरल्यास सूचना देते.';

  @override
  String alertDescTrailing(String percent) {
    return 'शिखरापासून $percent घसरण';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'आतापर्यंतचे शिखर: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol शिखरापासून $percent घसरला';
  }

  @override
  String get sectionInsiders => 'इनसायडर व्यवहार';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count खरेदी',
      one: '1 खरेदी',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count विक्री',
      one: '1 विक्री',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'निव्वळ: $shares शेअर्स';
  }

  @override
  String get insiderBuy => 'खरेदी केले';

  @override
  String get insiderSell => 'विकले';

  @override
  String get insiderHint =>
      'मागील 90 दिवसांत अधिकारी आणि संचालकांनी खुल्या बाजारात केलेली खरेदी व विक्री (SEC Form 4). ऑप्शन वापर आणि शेअर पुरस्कार मोजले जात नाहीत.';

  @override
  String get insiderNone =>
      'मागील 90 दिवसांत खुल्या बाजारात कोणतीही इनसायडर खरेदी किंवा विक्री नाही.';

  @override
  String get analystTrend => 'महिन्यागणिक मते कशी बदलली';

  @override
  String get watchListAll => 'सर्व';

  @override
  String get watchListNew => 'नवीन यादी';

  @override
  String get watchListName => 'यादीचे नाव';

  @override
  String get watchListRename => 'यादीचे नाव बदला';

  @override
  String get watchListDelete => 'यादी हटवा';

  @override
  String get watchListAddTo => 'यादीत जोडा';

  @override
  String get watchListEmpty =>
      'या यादीत अद्याप कोणतेही शेअर नाहीत. जोडण्यासाठी शेअरच्या शेजारील यादी बटणावर टॅप करा.';

  @override
  String get portfolioAskTitle => 'तुमच्या पोर्टफोलिओबद्दल प्रश्न';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'बॅकअप';

  @override
  String get backupSave => 'बॅकअप जतन करा';

  @override
  String get backupSaveHint =>
      'तुमचे आवडते, याद्या, पोर्टफोलिओ, सूचना आणि नोंदी एकाच फाइलमध्ये.';

  @override
  String get backupRestore => 'बॅकअपमधून पुनर्संचयित करा';

  @override
  String get backupRestoreHint =>
      'फाइलमधील माहिती जोडली जाते; तुमच्याकडे आता असलेले काहीही हटवले जात नाही.';

  @override
  String get backupRestored => 'बॅकअप पुनर्संचयित केला.';

  @override
  String get backupInvalid => 'ही फाइल WhatStock बॅकअप नाही.';

  @override
  String get allocationPositions => 'शेअर्स';

  @override
  String get allocationSectors => 'क्षेत्रे';

  @override
  String get allocationCurrencies => 'चलने';

  @override
  String get compareReturn1y => '1 वर्षाचा परतावा';

  @override
  String get compareFromHigh => '52-आठवड्यांच्या उच्चांकापासून अंतर';

  @override
  String get briefAutoTitle => 'दररोज सकाळी दैनिक सारांश';

  @override
  String get briefAutoSubtitle =>
      'अ‍ॅप सुरू असताना सकाळी 7:00 नंतर “आज तुमच्या शेअर्ससोबत” आपोआप तयार होतो; संगणकावर एक सूचना तुम्हाला कळवते. हे तुमच्या दैनिक प्रश्न-मर्यादेतून जाते, कोणतेही विश्लेषण खर्च होत नाही.';

  @override
  String get targetsButton => 'लक्ष्य वाटणी';

  @override
  String get targetsTitle => 'लक्ष्य वाटणी';

  @override
  String get targetsHint =>
      'प्रत्येक शेअरला पोर्टफोलिओचा किती हिस्सा मिळावा ते ठरवा. लक्ष्य नसल्यास क्षेत्र रिकामे ठेवा. त्यानंतर ॲप तिथे पोहोचण्यासाठी काय खरेदी किंवा विक्री करावी ते दाखवेल.';

  @override
  String targetsSum(String percent) {
    return 'एकूण: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'खरेदी ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'विक्री ≈ $amount';
  }

  @override
  String get rebalanceOk => 'लक्ष्यावर';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol ने अपेक्षित EPS ओलांडला';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol अपेक्षित EPS पेक्षा कमी';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'जाहीर EPS $actual, अपेक्षित $estimate';
  }

  @override
  String get newsExplain => 'याचा अर्थ काय?';

  @override
  String get watchAlertAll => 'मोठ्या दैनिक बदलावर अलर्ट';

  @override
  String get watchAlertAllHint =>
      'या यादीतील प्रत्येक शेअरसाठी किंमत अलर्ट: एका दिवसात इतका वर किंवा खाली हलल्यास कळवेल. ज्यांना आधीच अलर्ट आहे, त्यांचा तसाच राहील.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count अलर्ट सेट केले',
      one: '1 अलर्ट सेट केला',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'प्राप्त नफा निर्यात करा (CSV)';

  @override
  String get portfolioAnnualReturn => 'वार्षिक परतावा';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / वर्ष';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'धन-भारित वार्षिक परतावा (XIRR): तुम्ही केव्हा खरेदी आणि विक्री केली हे विचारात घेतो, त्यामुळे नंतर जोडलेले पैसे त्याला विकृत करत नाहीत. तुमची पहिली खरेदी किमान एक वर्ष जुनी झाल्यावर दाखवला जातो; लाभांश समाविष्ट नाहीत.';

  @override
  String get eventsAddToCalendar => 'कॅलेंडरमध्ये जोडा (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'पोर्टफोलिओ अलर्ट';

  @override
  String get portfolioMoveAlertSubtitle =>
      'तुमचा संपूर्ण पोर्टफोलिओ एका दिवसात इतका हलल्यावर सूचना.';

  @override
  String get portfolioMoveAlertOff => 'बंद';

  @override
  String portfolioMoveUp(String percent) {
    return 'आज तुमचा पोर्टफोलिओ $percent वाढला';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'आज तुमचा पोर्टफोलिओ $percent घसरला';
  }

  @override
  String get whatIfTitle => 'जर तुम्ही गुंतवणूक केली असती तर?';

  @override
  String get whatIfAmount => 'रक्कम';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount गुंतवणूक (कालावधी: $period) आज इतकी झाली असती';
  }

  @override
  String get whatIfNote =>
      'फक्त शेअरच्या किमतीवर आधारित: लाभांश, शुल्क आणि कर समाविष्ट नाहीत. मागील परतावा भविष्यातील परताव्याचा अंदाज देत नाही.';

  @override
  String get watchShare => 'यादी शेअर करा';

  @override
  String get watchImport => 'टिकर जोडा';

  @override
  String get watchImportHint =>
      'स्वल्पविराम, स्पेस किंवा नवीन ओळीने वेगळे केलेले टिकर पेस्ट करा – उदाहरणार्थ, कोणीतरी तुमच्यासोबत शेअर केलेली यादी.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count शेअर जोडले',
      one: '1 शेअर जोडला',
      zero: 'कोणतेही नवीन शेअर नाहीत',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'सर्वांत मोठे आधी';

  @override
  String get positionsSortGain => 'सर्वाधिक एकूण परतावा आधी';

  @override
  String get positionsSortToday => 'आजचे सर्वोत्तम आधी';

  @override
  String get chartMyBuys => 'तुमची खरेदी';

  @override
  String get chartMySells => 'तुमची विक्री';

  @override
  String get shortcutsTitle => 'कीबोर्ड शॉर्टकट';

  @override
  String usMarketOpen(String time) {
    return 'अमेरिकी बाजार खुला · बंद होण्यास $time बाकी';
  }

  @override
  String usMarketClosed(String time) {
    return 'अमेरिकी बाजार बंद · उघडण्यास $time बाकी';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes मि';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours ता $minutes मि';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days दि $hours ता';
  }

  @override
  String get portfolioGoalSet => 'लक्ष्य ठरवा';

  @override
  String get portfolioGoalTitle => 'पोर्टफोलिओ लक्ष्य';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · लक्ष्य: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'लक्ष्य गाठले: $amount';
  }

  @override
  String get portfolioGoalRemove => 'लक्ष्य काढा';

  @override
  String get alertEdit => 'सूचना संपादित करा';

  @override
  String get positionOpenLots => 'अजूनही तुमच्याकडे (सर्वात जुनी आधी)';

  @override
  String get lotRemoved => 'व्यवहार हटवला';

  @override
  String get alertDeleted => 'अलर्ट हटवला';

  @override
  String get alertsClearTriggered => 'ट्रिगर झालेले अलर्ट साफ करा';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count अलर्ट साफ केले',
      one: '1 अलर्ट साफ केला',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'होम स्क्रीन';

  @override
  String get allocationCountries => 'देश';

  @override
  String get newsExplainNoteResearch =>
      'AI स्पष्टीकरण: ते वेबवर तथ्ये शोधते, लेख उघडते आणि स्रोत किती विश्वासार्ह आहे याचे मूल्यांकन करते. हा गुंतवणूक सल्ला नाही. हे तुमच्या दैनिक प्रश्न-मर्यादेतून जाते, कोणतेही विश्लेषण खर्च होत नाही.';

  @override
  String get sourceOfficial => 'अधिकृत';

  @override
  String get sourcePressRelease => 'प्रसिद्धीपत्रक';

  @override
  String get sourceMajorNews => 'मोठे माध्यम';

  @override
  String get sourceOpinion => 'मत';
}
