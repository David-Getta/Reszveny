// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get appTitle => 'StockLens';

  @override
  String get homeTagline => 'शेअरचा फोटो काढा आणि त्याबद्दल सर्व काही जाणून घ्या.';

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
  String get disclaimer => 'हे अ‍ॅप केवळ माहिती देते आणि हा गुंतवणूक सल्ला नाही. डेटा विलंबित किंवा चुकीचा असू शकतो.';

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
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count विश्लेषक', one: '1 विश्लेषक');
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
  String get errRecognitionUnreachable => 'ओळख सेवेशी संपर्क होऊ शकला नाही. तुमचे इंटरनेट कनेक्शन तपासा.';

  @override
  String errRecognitionHttp(String status) {
    return 'ओळख सेवेने त्रुटी परत केली (HTTP $status).';
  }

  @override
  String get errRecognitionRefused => 'ओळख सेवा ही प्रतिमा प्रोसेस करू शकली नाही.';

  @override
  String get errRecognitionTruncated => 'ओळख प्रतिसाद अपूर्ण राहिला. कृपया पुन्हा प्रयत्न करा.';

  @override
  String get errRecognitionBadResponse => 'ओळख सेवेकडून अनपेक्षित प्रतिसाद.';

  @override
  String get errRecognitionEmpty => 'ओळख सेवेने रिकामा प्रतिसाद परत केला.';

  @override
  String get errMissingFinnhubKey => 'मार्केट डेटा कॉन्फिगर केलेला नाही (FINNHUB_API_KEY नाही).';

  @override
  String get errMarketUnreachable => 'मार्केट डेटा सेवेशी संपर्क होऊ शकला नाही. तुमचे इंटरनेट कनेक्शन तपासा.';

  @override
  String get errMarketRateLimited => 'मार्केट डेटा सेवेला खूप जास्त विनंत्या पाठवल्या गेल्या. कृपया एक मिनिट थांबा.';

  @override
  String errMarketHttp(String status) {
    return 'मार्केट डेटा सेवेने त्रुटी परत केली (HTTP $status).';
  }

  @override
  String get errMarketBadResponse => 'मार्केट डेटा सेवेकडून अनपेक्षित प्रतिसाद.';

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
    return 'StockLens कुठूनही उघडण्यासाठी $shortcut दाबा.';
  }

  @override
  String get trayOpen => 'StockLens उघडा';

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
  String get aiGenerating => 'विश्लेषण तयार होत आहे… यास एक-दोन मिनिटे लागू शकतात.';

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
  String get errAiNotConfigured => 'AI विश्लेषण कॉन्फिगर केलेले नाही (ANTHROPIC_API_KEY नाही).';

  @override
  String get errAiUnreachable => 'AI सेवेशी संपर्क होऊ शकला नाही. तुमचे इंटरनेट कनेक्शन तपासा.';

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
  String get chartUnavailable => 'सध्याच्या डेटा स्रोतातून किंमतीचा इतिहास उपलब्ध नाही.';

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
  String get statementsUnavailable => 'या शेअरसाठी नोंदवलेली आर्थिक विवरणपत्रे उपलब्ध नाहीत.';

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
  String get noFavorites => 'अजून कोणतेही आवडते नाहीत. जोडण्यासाठी शेअरवरील तारा टॅप करा.';

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
  String get updateDownloaded => 'अपडेट तयार आहे. इंस्टॉल करण्यासाठी रीस्टार्ट करा.';

  @override
  String get updateNow => 'अपडेट करा';

  @override
  String get restartNow => 'रीस्टार्ट करा';

  @override
  String get updatesViaStore => 'अपडेट अ‍ॅप स्टोअरद्वारे आपोआप मिळतात.';

  @override
  String get updateCheckFailed => 'अपडेट तपासता आले नाहीत.';

  @override
  String get subscription => 'Subscription';

  @override
  String get planTrial => 'Trial';

  @override
  String get planNormal => 'Normal';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max 1';

  @override
  String get planMax2 => 'Max 2';

  @override
  String get planNone => 'No active plan';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count analyses per month';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$days-day free trial with $count analyses';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days days of trial left',
      one: '1 day of trial left',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired => 'Your free trial has ended. Choose a plan to keep analysing.';

  @override
  String analysesRemaining(int remaining, int total) {
    return '$remaining of $total analyses left this period';
  }

  @override
  String extraCredits(int count) {
    return '$count extra analyses';
  }

  @override
  String renewsOn(String date) {
    return 'Renews $date';
  }

  @override
  String get choosePlan => 'Choose a plan';

  @override
  String get currentPlan => 'Current plan';

  @override
  String get subscribe => 'Subscribe';

  @override
  String get perMonth => '/ month';

  @override
  String get extraPacksTitle => 'Need more? Buy extra analyses';

  @override
  String get extraPacksHint => 'Extra analyses never expire and are used after your monthly allowance.';

  @override
  String get buy => 'Buy';

  @override
  String get restorePurchases => 'Restore purchases';

  @override
  String get manageSubscription => 'Manage subscription';

  @override
  String get purchaseSuccess => 'Thanks! Your purchase is active.';

  @override
  String get purchasePending => 'Purchase pending…';

  @override
  String get purchaseFailed => 'The purchase could not be completed.';

  @override
  String get purchaseCanceled => 'Purchase canceled.';

  @override
  String get billingUnavailable =>
      'Purchases are not available on this platform yet. Subscribe on your phone or Mac; your plan will work on every device.';

  @override
  String get errQuotaExceeded => 'You have no analyses left for this period. Upgrade your plan or buy extra analyses.';

  @override
  String get errTrialExpired => 'Your free trial has ended. Choose a plan to continue.';

  @override
  String get errNoPlan => 'An active plan is needed for AI analysis.';

  @override
  String get viewPlans => 'View plans';

  @override
  String get usageTitle => 'Usage';

  @override
  String get demoPurchaseNote => 'Demo billing: purchases are simulated on this platform.';

  @override
  String get mostPopular => 'Most popular';

  @override
  String get bestValue => 'Best value';

  @override
  String get planFeaturesCommon =>
      'Photo recognition, live data, charts, favorites and all 44 languages are included in every plan. The allowance covers AI analyses.';
}
