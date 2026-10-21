// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Georgian (`ka`).
class AppLocalizationsKa extends AppLocalizations {
  AppLocalizationsKa([String locale = 'ka']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'გადაუღეთ ფოტო აქციას და გაიგეთ მასზე ყველაფერი.';

  @override
  String get homeHint =>
      'აქციის სერტიფიკატი, საბროკერო აპის ეკრანი, გაზეთი ან კომპანიის ლოგო – ყველაფერი, რითაც აქციის ამოცნობა შეიძლება.';

  @override
  String get takePhoto => 'ფოტოს გადაღება';

  @override
  String get chooseFromGallery => 'გალერეიდან არჩევა';

  @override
  String get chooseImage => 'სურათის არჩევა';

  @override
  String get enterTickerManually => 'ტიკერის ხელით შეყვანა';

  @override
  String get tickerInputLabel => 'ტიკერი';

  @override
  String get tickerInputHint => 'მაგ. AAPL';

  @override
  String get lookUp => 'ძიება';

  @override
  String demoModeBanner(String symbols) {
    return 'დემო რეჟიმი – საბაზრო მონაცემების გასაღები არ არის კონფიგურირებული. სანიმუშო მონაცემები ხელმისაწვდომია: $symbols.';
  }

  @override
  String get recognizing => 'მიმდინარეობს სურათის ანალიზი…';

  @override
  String get loadingData => 'მონაცემები იტვირთება…';

  @override
  String get noCandidatesTitle => 'აქცია ვერ ამოვიცანით';

  @override
  String get noCandidatesBody =>
      'ამ სურათზე აქციის ამოცნობა ვერ მოხერხდა. სცადეთ უფრო მკაფიო ფოტო ან შეიყვანეთ ტიკერი ხელით.';

  @override
  String get whatWeSaw => 'რა დავინახეთ';

  @override
  String get chooseCandidateTitle => 'რომელ აქციას გულისხმობდით?';

  @override
  String confidencePercent(int percent) {
    return 'სანდოობა $percent%';
  }

  @override
  String get settings => 'პარამეტრები';

  @override
  String get language => 'ენა';

  @override
  String get systemLanguage => 'სისტემის ნაგულისხმევი';

  @override
  String get about => 'აპის შესახებ';

  @override
  String get disclaimer =>
      'ეს აპი მხოლოდ ინფორმაციას გაწვდით და არ წარმოადგენს საინვესტიციო რჩევას. მონაცემები შეიძლება დაგვიანებული ან არაზუსტი იყოს.';

  @override
  String dataSource(String source) {
    return 'მონაცემთა წყარო: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'ამოცნობა: $source';
  }

  @override
  String get retry => 'ხელახლა ცდა';

  @override
  String get cancel => 'გაუქმება';

  @override
  String get ok => 'კარგი';

  @override
  String get close => 'დახურვა';

  @override
  String get errorGeneric => 'რაღაც შეცდომა მოხდა.';

  @override
  String get errorSectionUnavailable =>
      'ამ განყოფილების ჩატვირთვა ვერ მოხერხდა.';

  @override
  String get notAvailable => 'არ არის';

  @override
  String get sectionIdentity => 'იდენტიფიკაცია';

  @override
  String get sectionPrice => 'ფასი';

  @override
  String get sectionValuation => 'შეფასება';

  @override
  String get sectionFinancials => 'ფინანსები';

  @override
  String get sectionDividend => 'დივიდენდები';

  @override
  String get sectionProfile => 'კომპანიის პროფილი';

  @override
  String get sectionAnalysts => 'ანალიტიკოსების შეფასებები';

  @override
  String get sectionNews => 'სიახლეები';

  @override
  String get sectionRecognition => 'ამოცნობის დეტალები';

  @override
  String get labelSymbol => 'ტიკერი';

  @override
  String get labelExchange => 'ბირჟა';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'ვალუტა';

  @override
  String get labelCountry => 'ქვეყანა';

  @override
  String get labelIndustry => 'დარგი';

  @override
  String get labelSector => 'სექტორი';

  @override
  String get labelWebsite => 'ვებსაიტი';

  @override
  String get labelIpoDate => 'IPO-ს თარიღი';

  @override
  String get labelMarketCap => 'საბაზრო კაპიტალიზაცია';

  @override
  String get labelSharesOutstanding => 'მიმოქცევაში არსებული აქციები';

  @override
  String get labelEmployees => 'თანამშრომლები';

  @override
  String get labelCeo => 'აღმასრულებელი დირექტორი';

  @override
  String get labelHeadquarters => 'სათაო ოფისი';

  @override
  String get labelDescription => 'აღწერა';

  @override
  String get labelLastPrice => 'ბოლო ფასი';

  @override
  String get labelChange => 'ცვლილება';

  @override
  String get labelOpen => 'გახსნა';

  @override
  String get labelDayHigh => 'დღის მაქსიმუმი';

  @override
  String get labelDayLow => 'დღის მინიმუმი';

  @override
  String get labelPreviousClose => 'წინა დახურვა';

  @override
  String get labelWeek52High => '52-კვირიანი მაქსიმუმი';

  @override
  String get labelWeek52Low => '52-კვირიანი მინიმუმი';

  @override
  String get labelAverageVolume10d => 'საშ. მოცულობა (10 დღე)';

  @override
  String updatedAt(String time) {
    return 'განახლდა $time';
  }

  @override
  String get labelPeTrailing => 'P/E (მიმდინარე)';

  @override
  String get labelPeForward => 'P/E (საპროგნოზო)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / თავისუფალი ფულადი ნაკადი';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'ბეტა';

  @override
  String get labelRevenueTtm => 'შემოსავალი (TTM)';

  @override
  String get labelNetIncomeTtm => 'წმინდა მოგება (TTM)';

  @override
  String get labelGrossMargin => 'მთლიანი მარჟა';

  @override
  String get labelOperatingMargin => 'საოპერაციო მარჟა';

  @override
  String get labelNetMargin => 'წმინდა მარჟა';

  @override
  String get labelRoe => 'კაპიტალის უკუგება';

  @override
  String get labelRoa => 'აქტივების უკუგება';

  @override
  String get labelDebtToEquity => 'ვალი / საკუთარი კაპიტალი';

  @override
  String get labelCurrentRatio => 'მიმდინარე ლიკვიდობის კოეფიციენტი';

  @override
  String get labelRevenueGrowth => 'შემოსავლის ზრდა (წლიური)';

  @override
  String get labelEpsGrowth => 'EPS-ის ზრდა (წლიური)';

  @override
  String get labelDividendYield => 'დივიდენდური შემოსავლიანობა';

  @override
  String get labelDividendPerShare => 'დივიდენდი ერთ აქციაზე';

  @override
  String get labelPayoutRatio => 'დივიდენდის გაცემის კოეფიციენტი';

  @override
  String get labelYieldOnCost => 'შემოსავლიანობა შესყიდვის ფასზე';

  @override
  String get labelConsensus => 'კონსენსუსი';

  @override
  String get ratingStrongBuy => 'აქტიური ყიდვა';

  @override
  String get ratingBuy => 'ყიდვა';

  @override
  String get ratingHold => 'შენარჩუნება';

  @override
  String get ratingSell => 'გაყიდვა';

  @override
  String get ratingStrongSell => 'აქტიური გაყიდვა';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ანალიტიკოსი',
      one: '$count ანალიტიკოსი',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'პერიოდი: $period';
  }

  @override
  String get noNews => 'ბოლო სიახლეები არ არის.';

  @override
  String get openArticle => 'სტატიის გახსნა';

  @override
  String get openLinkFailed => 'ბმულის გახსნა ვერ მოხერხდა.';

  @override
  String get recognitionSummary => 'შეჯამება';

  @override
  String get recognitionEvidence => 'რატომ ვფიქრობთ ასე';

  @override
  String get recognitionRawText => 'სურათიდან წაკითხული ტექსტი';

  @override
  String get errMissingAnthropicKey =>
      'სურათის ამოცნობა არ არის კონფიგურირებული (ANTHROPIC_API_KEY არ არის). შეიყვანეთ ტიკერი ხელით.';

  @override
  String get errRecognitionUnreachable =>
      'ამოცნობის სერვისთან დაკავშირება ვერ მოხერხდა. შეამოწმეთ ინტერნეტკავშირი.';

  @override
  String errRecognitionHttp(String status) {
    return 'ამოცნობის სერვისმა შეცდომა დააბრუნა (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'ამოცნობის სერვისმა ვერ დაამუშავა ეს სურათი.';

  @override
  String get errRecognitionTruncated =>
      'ამოცნობის პასუხი შეწყდა. სცადეთ ხელახლა.';

  @override
  String get errRecognitionBadResponse =>
      'მოულოდნელი პასუხი ამოცნობის სერვისისგან.';

  @override
  String get errRecognitionEmpty =>
      'ამოცნობის სერვისმა ცარიელი პასუხი დააბრუნა.';

  @override
  String get errMissingFinnhubKey =>
      'საბაზრო მონაცემები არ არის კონფიგურირებული (FINNHUB_API_KEY არ არის).';

  @override
  String get errMarketUnreachable =>
      'საბაზრო მონაცემების სერვისთან დაკავშირება ვერ მოხერხდა. შეამოწმეთ ინტერნეტკავშირი.';

  @override
  String get errMarketRateLimited =>
      'საბაზრო მონაცემების სერვისს ძალიან ბევრი მოთხოვნა გაეგზავნა. დაიცადეთ ერთი წუთი.';

  @override
  String errMarketHttp(String status) {
    return 'საბაზრო მონაცემების სერვისმა შეცდომა დააბრუნა (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'მოულოდნელი პასუხი საბაზრო მონაცემების სერვისისგან.';

  @override
  String errNoQuote(String symbol) {
    return '$symbol-ისთვის ფასის მონაცემები ვერ მოიძებნა.';
  }

  @override
  String errNoProfile(String symbol) {
    return '$symbol-ისთვის კომპანიის პროფილი ვერ მოიძებნა.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'დემო რეჟიმში ხელმისაწვდომია მხოლოდ: $symbols. რეალურ დროში მონაცემებისთვის დაამატეთ FINNHUB_API_KEY.';
  }

  @override
  String errUnknown(String detail) {
    return 'რაღაც შეცდომა მოხდა: $detail';
  }

  @override
  String get newSearch => 'ახალი ძიება';

  @override
  String get recentSearches => 'ბოლოდროინდელი';

  @override
  String get noRecentSearches => 'ბოლოდროინდელი ძიებები ჯერ არ არის.';

  @override
  String get clearRecent => 'ბოლოდროინდელის გასუფთავება';

  @override
  String get greeting => 'რომელ აქციას გადავხედოთ?';

  @override
  String get searchHint => 'ტიკერი ან კომპანიის სახელი';

  @override
  String get attachImage => 'სურათის მიმაგრება';

  @override
  String get searchResultsTitle => 'ძიების შედეგები';

  @override
  String errNoResults(String query) {
    return 'მოთხოვნით „$query“ აქციები ვერ მოიძებნა.';
  }

  @override
  String get quickBarHint => 'შეიყვანეთ ტიკერი ან კომპანიის სახელი…';

  @override
  String get openFullWindow => 'ფანჯრის გახსნა';

  @override
  String hotkeyHint(String shortcut) {
    return 'WhatStock-ის გამოსაძახებლად ნებისმიერ ადგილას დააჭირეთ $shortcut-ს.';
  }

  @override
  String get trayOpen => 'WhatStock-ის გახსნა';

  @override
  String get trayQuickSearch => 'სწრაფი ძიება';

  @override
  String get trayQuit => 'გასვლა';

  @override
  String get appearance => 'იერსახე';

  @override
  String get themeSystem => 'სისტემური';

  @override
  String get themeDark => 'მუქი';

  @override
  String get themeLight => 'ღია';

  @override
  String get back => 'უკან';

  @override
  String get aiSectionTitle => 'AI ანალიზი';

  @override
  String get aiIntro =>
      'AI-ის მიერ დაწერილი დეტალური მიმოხილვა: ბოლო სიახლეების შეჯამება, ბიზნესი, ძლიერი მხარეები, რისკები და ფარული ფაქტორები, შეფასება, ფასის პროგნოზი სცენარებით ფსიქოლოგიური, სოციოლოგიური, ტექნიკური და მაკროეკონომიკური კუთხით, და ის, რასაც თვალი უნდა ადევნოთ.';

  @override
  String get aiGenerate => 'ანალიზის შექმნა';

  @override
  String get aiRegenerate => 'ხელახლა შექმნა';

  @override
  String get aiGenerating =>
      'ანალიზი მზადდება… ამას შეიძლება ერთი-ორი წუთი დასჭირდეს.';

  @override
  String get aiSources => 'წყაროები';

  @override
  String aiGeneratedAt(String time) {
    return 'შეიქმნა $time';
  }

  @override
  String get aiDisclaimer =>
      'AI-ის მიერ შექმნილი ანალიზი საჯარო მონაცემებისა და ბოლო სიახლეების საფუძველზე. ის შეიძლება შეიცავდეს შეცდომებს ან მოძველებული იყოს და არ წარმოადგენს საინვესტიციო რჩევას.';

  @override
  String get errAiNotConfigured =>
      'AI ანალიზი არ არის კონფიგურირებული (ANTHROPIC_API_KEY არ არის).';

  @override
  String get errAiUnreachable =>
      'AI სერვისთან დაკავშირება ვერ მოხერხდა. შეამოწმეთ ინტერნეტკავშირი.';

  @override
  String errAiHttp(String status) {
    return 'AI სერვისმა შეცდომა დააბრუნა (HTTP $status).';
  }

  @override
  String get errAiRefused => 'AI სერვისმა უარი თქვა ამ აქციის ანალიზზე.';

  @override
  String get errAiBadResponse => 'მოულოდნელი პასუხი AI სერვისისგან.';

  @override
  String get sectionChart => 'ფასის გრაფიკი';

  @override
  String get rangeOneWeek => '1კ';

  @override
  String get rangeOneMonth => '1თ';

  @override
  String get rangeThreeMonths => '3თ';

  @override
  String get rangeOneYear => '1წ';

  @override
  String get rangeFiveYears => '5წ';

  @override
  String get chartUnavailable =>
      'ფასების ისტორია მიმდინარე მონაცემთა წყაროში მიუწვდომელია.';

  @override
  String get sectionStatements => 'ფინანსური ანგარიშგება (წლიური)';

  @override
  String get labelFiscalYear => 'ფისკალური წელი';

  @override
  String get labelRevenue => 'შემოსავალი';

  @override
  String get labelNetIncome => 'წმინდა მოგება';

  @override
  String get labelTotalAssets => 'სულ აქტივები';

  @override
  String get labelTotalLiabilities => 'სულ ვალდებულებები';

  @override
  String get labelEquity => 'საკუთარი კაპიტალი';

  @override
  String get labelOperatingCashFlow => 'საოპერაციო ფულადი ნაკადი';

  @override
  String get statementsUnavailable =>
      'ამ აქციისთვის გამოქვეყნებული ფინანსური ანგარიშგება მიუწვდომელია.';

  @override
  String get launchAtLogin => 'გაშვება სისტემაში შესვლისას';

  @override
  String get hotkeyLabel => 'გლობალური მალსახმობი';

  @override
  String get hotkeyRecordHint =>
      'დააწკაპუნეთ აქ, შემდეგ დააჭირეთ კლავიშების ახალ კომბინაციას';

  @override
  String get hotkeyReset => 'ნაგულისხმევზე დაბრუნება';

  @override
  String get pasteImage => 'სურათის ჩასმა გაცვლის ბუფერიდან';

  @override
  String get errClipboardNoImage => 'გაცვლის ბუფერში სურათი არ არის.';

  @override
  String get favorites => 'რჩეულები';

  @override
  String get addToFavorites => 'რჩეულებში დამატება';

  @override
  String get removeFromFavorites => 'რჩეულებიდან ამოშლა';

  @override
  String get noFavorites =>
      'რჩეულები ჯერ არ არის. დასამატებლად შეეხეთ ვარსკვლავს აქციის გვერდზე.';

  @override
  String get displayCurrency => 'საჩვენებელი ვალუტა';

  @override
  String get displayCurrencyNone => 'მხოლოდ აქციის საკუთარი ვალუტა';

  @override
  String labelConverted(String currency) {
    return '≈ $currency-ში';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'კურსი: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'განახლებები';

  @override
  String currentVersion(String version) {
    return 'ვერსია $version';
  }

  @override
  String get autoUpdate => 'განახლებების ავტომატური ინსტალაცია';

  @override
  String get checkForUpdates => 'განახლებების შემოწმება';

  @override
  String get updateChecking => 'მიმდინარეობს განახლებების შემოწმება…';

  @override
  String get updateUpToDate => 'თქვენ გაქვთ უახლესი ვერსია.';

  @override
  String updateAvailable(String version) {
    return 'ხელმისაწვდომია ვერსია $version.';
  }

  @override
  String get updateDownloading => 'განახლება ფონურ რეჟიმში იტვირთება…';

  @override
  String get updateDownloaded =>
      'განახლება მზადაა. დასაინსტალირებლად გადატვირთეთ აპი.';

  @override
  String get updateNow => 'განახლება';

  @override
  String get restartNow => 'გადატვირთვა';

  @override
  String get updatesViaStore =>
      'განახლებები ავტომატურად მოდის აპების მაღაზიიდან.';

  @override
  String get updateCheckFailed => 'განახლებების შემოწმება ვერ მოხერხდა.';

  @override
  String get subscription => 'გამოწერა';

  @override
  String get planTrial => 'საცდელი';

  @override
  String get planNormal => 'ჩვეულებრივი';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'აქტიური გეგმა არ არის';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count ანალიზი თვეში';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$days-დღიანი უფასო საცდელი პერიოდი $count ანალიზით';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'საცდელი პერიოდიდან დარჩა $days დღე',
      one: 'საცდელი პერიოდიდან დარჩა $days დღე',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'თქვენი უფასო საცდელი პერიოდი დასრულდა. ანალიზის გასაგრძელებლად აირჩიეთ გეგმა.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'ამ პერიოდში დარჩა $remaining ანალიზი $total-დან';
  }

  @override
  String extraCredits(int count) {
    return '$count დამატებითი ანალიზი';
  }

  @override
  String renewsOn(String date) {
    return 'განახლდება $date';
  }

  @override
  String get choosePlan => 'აირჩიეთ გეგმა';

  @override
  String get currentPlan => 'მიმდინარე გეგმა';

  @override
  String get subscribe => 'გამოწერა';

  @override
  String get perMonth => '/ თვე';

  @override
  String get extraPacksTitle => 'მეტი გჭირდებათ? შეიძინეთ დამატებითი ანალიზები';

  @override
  String get extraPacksHint =>
      'დამატებით ანალიზებს ვადა არასოდეს გასდით და ისინი თვიური ლიმიტის ამოწურვის შემდეგ გამოიყენება.';

  @override
  String get buy => 'ყიდვა';

  @override
  String get restorePurchases => 'შენაძენების აღდგენა';

  @override
  String get manageSubscription => 'გამოწერის მართვა';

  @override
  String get purchaseSuccess => 'გმადლობთ! თქვენი შენაძენი აქტიურია.';

  @override
  String get purchasePending => 'შენაძენი მუშავდება…';

  @override
  String get purchaseFailed => 'შენაძენის დასრულება ვერ მოხერხდა.';

  @override
  String get purchaseCanceled => 'შენაძენი გაუქმდა.';

  @override
  String get billingUnavailable =>
      'ამ პლატფორმაზე შენაძენები ჯერ მიუწვდომელია. გამოიწერეთ ტელეფონზე ან Mac-ზე; თქვენი გეგმა ყველა მოწყობილობაზე იმუშავებს.';

  @override
  String get errQuotaExceeded =>
      'ამ პერიოდისთვის ანალიზები აღარ დაგრჩათ. გადადით უფრო მაღალ გეგმაზე ან შეიძინეთ დამატებითი ანალიზები.';

  @override
  String get errTrialExpired =>
      'თქვენი უფასო საცდელი პერიოდი დასრულდა. გასაგრძელებლად აირჩიეთ გეგმა.';

  @override
  String get errNoPlan => 'AI ანალიზისთვის საჭიროა აქტიური გეგმა.';

  @override
  String get viewPlans => 'გეგმების ნახვა';

  @override
  String get usageTitle => 'გამოყენება';

  @override
  String get demoPurchaseNote =>
      'დემო გადახდა: ამ პლატფორმაზე შენაძენები სიმულირებულია.';

  @override
  String get mostPopular => 'ყველაზე პოპულარული';

  @override
  String get bestValue => 'ყველაზე მომგებიანი';

  @override
  String get planFeaturesCommon =>
      'ფოტოს ამოცნობა, რეალურ დროში მონაცემები, გრაფიკები, რჩეულები და 120-ვე ენა ყველა გეგმაშია. ლიმიტი AI ანალიზებს ეხება.';

  @override
  String get searchLanguages => 'ენების ძიება…';

  @override
  String get noLanguageMatch => 'შესაბამისი ენა ვერ მოიძებნა.';

  @override
  String get aiSettings => 'AI ანალიზი';

  @override
  String get aiLength => 'სიგრძე';

  @override
  String get aiDepthBrief => 'მოკლე';

  @override
  String get aiDepthStandard => 'სტანდარტული';

  @override
  String get aiDepthDeep => 'სიღრმისეული';

  @override
  String get aiDepthBriefDesc => 'მთავარი – სწრაფად.';

  @override
  String get aiDepthStandardDesc => 'სრული ანგარიში ყველა განყოფილებით.';

  @override
  String get aiDepthDeepDesc =>
      'მეტი ვებძიება, კონკურენტებთან შედარება და უფრო დეტალური ანალიზი.';

  @override
  String aiDepthWords(String min, String max) {
    return 'დაახლოებით $min–$max სიტყვა';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'იყენებს $count ანალიზს',
      one: 'იყენებს $count ანალიზს',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'მკითხველის დონე';

  @override
  String get aiReaderBeginner => 'დამწყები';

  @override
  String get aiReaderExperienced => 'გამოცდილი';

  @override
  String get aiReaderBeginnerDesc =>
      'მარტივი ენა; ყველა სპეციალური ტერმინი ახსნილია.';

  @override
  String get aiReaderExperiencedDesc =>
      'უფრო მჭიდრო ტექსტი სტანდარტული ფინანსური ტერმინოლოგიით.';

  @override
  String get aiCounterArgument => 'ყველაზე ძლიერი კონტრარგუმენტი';

  @override
  String get aiCounterArgumentDesc =>
      'შეჯამება ყოველთვის მთავრდება საკუთარი დასკვნის საწინააღმდეგო ყველაზე ძლიერი არგუმენტით.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'თქვენი გეგმით – ანალიზზე მაქსიმუმ $count ვებძიება',
      one: 'თქვენი გეგმით – ანალიზზე მაქსიმუმ $count ვებძიება',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'სტანდარტული სიგრძე გეგმის მიხედვით: ჩვეულებრივი $normal, Pro $pro, Max $max, Ultra $ultra. „მოკლე“ – 2-ით ნაკლები, „სიღრმისეული“ – 2-ით მეტი.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'მაქსიმუმ $count ვებძიება',
      one: 'მაქსიმუმ $count ვებძიება',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ვებძიება ანალიზზე',
      one: '$count ვებძიება ანალიზზე',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'ამ სიგრძეს $needed ანალიზი სჭირდება, თქვენ კი მხოლოდ $left დაგრჩათ. აირჩიეთ უფრო მოკლე სიგრძე პარამეტრებში ან შეიძინეთ მეტი ანალიზი.';
  }

  @override
  String get outlookMarketMood => 'ბაზრის განწყობა';

  @override
  String get moodVeryPessimistic => 'ძალიან პესიმისტური';

  @override
  String get moodPessimistic => 'პესიმისტური';

  @override
  String get moodNeutral => 'ნეიტრალური';

  @override
  String get moodOptimistic => 'ოპტიმისტური';

  @override
  String get moodVeryOptimistic => 'ძალიან ოპტიმისტური';

  @override
  String get scenarioBull => 'ოპტიმისტური სცენარი';

  @override
  String get scenarioBase => 'საბაზისო სცენარი';

  @override
  String get scenarioBear => 'პესიმისტური სცენარი';

  @override
  String outlookCurrentPrice(String price) {
    return 'მიმდინარე ფასი: $price';
  }

  @override
  String get outlookKeyLevels => 'საკვანძო დონეები';

  @override
  String get keyLevelSupport => 'მხარდაჭერა';

  @override
  String get keyLevelResistance => 'წინააღმდეგობა';

  @override
  String get keyLevelAnchor => 'ღუზა';

  @override
  String get upcomingEvents => 'მოახლოებული მოვლენები';

  @override
  String get outlookChartNote =>
      'მიახლოებითი დიაპაზონები; ალბათობები უხეში შეფასებებია და არა პროგნოზები.';

  @override
  String get accountTitle => 'ანგარიში';

  @override
  String get signIn => 'შესვლა';

  @override
  String get signOut => 'გასვლა';

  @override
  String get notSignedIn => 'არ ხართ შესული';

  @override
  String get accountBenefit =>
      'შედით, რომ თქვენმა გამოწერამ ყველა თქვენს მოწყობილობაზე იმუშაოს.';

  @override
  String get accountSyncedNote =>
      'თქვენი გამოწერა და დარჩენილი ანალიზები ყველა მოწყობილობაზე ერთნაირია.';

  @override
  String get signInTitle => 'WhatStock-ში შესვლა';

  @override
  String get emailLabel => 'ელფოსტის მისამართი';

  @override
  String get continueWithEmail => 'ელფოსტით გაგრძელება';

  @override
  String codeSentTo(String email) {
    return '6-ნიშნა კოდი გავგზავნეთ მისამართზე $email. ის 10 წუთის განმავლობაში მოქმედებს.';
  }

  @override
  String get codeLabel => 'შესვლის კოდი';

  @override
  String get resendCode => 'ახალი კოდის გაგზავნა';

  @override
  String get useDifferentEmail => 'სხვა ელფოსტის გამოყენება';

  @override
  String get errInvalidCode => 'კოდი არასწორია ან ვადა გაუვიდა.';

  @override
  String get errInvalidEmail => 'შეიყვანეთ სწორი ელფოსტის მისამართი.';

  @override
  String get errSignInFailed =>
      'შესვლა ვერ მოხერხდა. შეამოწმეთ კავშირი და სცადეთ ხელახლა.';

  @override
  String get checkoutWaiting =>
      'დაასრულეთ გადახდა ბრაუზერში. აპი ავტომატურად განახლდება, როცა ყველაფერი მზად იქნება.';

  @override
  String get paymentViaStripe =>
      'უსაფრთხო გადახდა ბრაუზერში Stripe-ის მეშვეობით. გაუქმება ნებისმიერ დროს შეგიძლიათ.';

  @override
  String get paymentViaStore =>
      'გადახდა ხდება თქვენი App Store-ის ან Google Play-ის ანგარიშით. გაუქმება ნებისმიერ დროს შეგიძლიათ მაღაზიის პარამეტრებში.';

  @override
  String get keySpace => 'ჰარი';

  @override
  String get doubleOptionTitle => 'Option-ზე ორჯერ დაჭერა';

  @override
  String get doubleOptionSubtitle =>
      'Option კლავიშზე სწრაფად ორჯერ დაჭერაც იძახებს WhatStock-ს.';

  @override
  String get doubleOptionPermission =>
      'იმისთვის, რომ ეს სხვა აპებშიც იმუშაოს, მიეცით WhatStock-ს ნებართვა აქ: „სისტემის პარამეტრები“ → „კონფიდენციალურობა და უსაფრთხოება“ → „შეყვანის მონიტორინგი“, შემდეგ კი ხელახლა გახსენით აპი.';

  @override
  String get openSystemSettings => 'სისტემის პარამეტრების გახსნა';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'WhatStock-ის გამოსაძახებლად ნებისმიერ ადგილას დააჭირეთ $shortcut-ს ან ორჯერ დააჭირეთ Option-ს.';
  }

  @override
  String get scenarioMostLikely => 'ყველაზე სავარაუდო';

  @override
  String get longTermToday => 'დღეს';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years წელი',
      one: '$years წელი',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range წელიწადში';
  }

  @override
  String longTermLikely(String price) {
    return 'სავარაუდოდ $price';
  }

  @override
  String get confidenceLow => 'დაბალი სანდოობა';

  @override
  String get confidenceMedium => 'საშუალო სანდოობა';

  @override
  String get confidenceHigh => 'მაღალი სანდოობა';

  @override
  String get longTermNote =>
      'გრძელვადიანი დიაპაზონები ეფუძნება მითითებულ დაშვებებს და დროთა განმავლობაში ფართოვდება. ფასები დივიდენდების გარეშეა. ეს უხეში შეფასებებია და არა პროგნოზები.';

  @override
  String get portfolio => 'პორტფელი';

  @override
  String get portfolioEmpty =>
      'აქ ჯერ არაფერია. გახსენით აქცია და შეეხეთ ღილაკს „პორტფელში დამატება“, რომ თვალი ადევნოთ თქვენს აქტივებს.';

  @override
  String get portfolioLocalNote =>
      'ინახება მხოლოდ ამ მოწყობილობაზე. ჯამები გადაიანგარიშება ECB-ის საცნობარო კურსებით; ფასები შეიძლება დაგვიანებული იყოს.';

  @override
  String get addToPortfolio => 'პორტფელში დამატება';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol-ის დამატება';
  }

  @override
  String get portfolioQuantity => 'აქციების რაოდენობა';

  @override
  String portfolioBuyPrice(String currency) {
    return 'ერთი აქციის ფასი ($currency)';
  }

  @override
  String get portfolioBuyDate => 'შეძენის თარიღი';

  @override
  String get portfolioAdd => 'დამატება';

  @override
  String get portfolioInvalidNumber => 'შეიყვანეთ ნულზე მეტი რიცხვი.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol დაემატა თქვენს პორტფელს.';
  }

  @override
  String get portfolioTotalValue => 'ჯამური ღირებულება';

  @override
  String get portfolioToday => 'დღეს';

  @override
  String get portfolioGainLoss => 'მოგება/ზარალი';

  @override
  String homeDividendsThisYear(String amount) {
    return 'დივიდენდები წელს: $amount';
  }

  @override
  String get portfolioInvested => 'ინვესტირებული';

  @override
  String get portfolioAllocation => 'განაწილება';

  @override
  String get portfolioPositions => 'პოზიციები';

  @override
  String portfolioAvgCost(String price) {
    return 'საშ. ფასი $price';
  }

  @override
  String get portfolioYourPosition => 'თქვენი პოზიცია';

  @override
  String get portfolioPurchases => 'შენაძენები';

  @override
  String get portfolioRemove => 'ამოშლა';

  @override
  String get portfolioExcluded =>
      'პოზიციები ფასის ან გაცვლითი კურსის გარეშე ჯამებში არ ითვლება.';

  @override
  String get priceAlerts => 'ფასის შეტყობინებები';

  @override
  String get setPriceAlert => 'ფასის შეტყობინების დაყენება';

  @override
  String alertDialogTitle(String symbol) {
    return 'ფასის შეტყობინება · $symbol';
  }

  @override
  String get alertKindAbove => 'აიწევს ზემოთ';

  @override
  String get alertKindBelow => 'ჩამოვა ქვემოთ';

  @override
  String get alertKindMove => 'დღის განმავლობაში მკვეთრად შეიცვლება';

  @override
  String alertTargetPrice(String currency) {
    return 'ფასი ($currency)';
  }

  @override
  String get alertMovePercent => 'დღიური ცვლილება (%)';

  @override
  String get alertAlreadyMet => 'ფასმა ეს დონე უკვე გადალახა.';

  @override
  String get alertSave => 'შეტყობინების დაყენება';

  @override
  String alertCreated(String symbol) {
    return '$symbol-ისთვის შეტყობინება დაყენებულია.';
  }

  @override
  String get alertsEmpty =>
      'ფასის შეტყობინებები ჯერ არ არის. გახსენით აქცია და შეეხეთ ზარს, რომ დააყენოთ.';

  @override
  String get alertsNote =>
      'შეტყობინებები მოწმდება ყოველ 5 წუთში, სანამ WhatStock მუშაობს. კომპიუტერზე ის მენიუს ზოლში ან სისტემურ უჯრაში აგრძელებს მუშაობას; ტელეფონზე კი შეტყობინებები ჯერჯერობით მხოლოდ მაშინ მოდის, როცა აპი გახსნილია.';

  @override
  String alertDescAbove(String price) {
    return '$price-ზე მეტი';
  }

  @override
  String alertDescBelow(String price) {
    return '$price-ზე ნაკლები';
  }

  @override
  String alertDescMove(String percent) {
    return 'დღიური ცვლილება ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'ამოქმედდა $date, ფასი: $price';
  }

  @override
  String get alertRearm => 'ხელახლა ჩართვა';

  @override
  String get alertDelete => 'წაშლა';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol $price-ზე მაღლა ავიდა';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol $price-ზე დაბლა ჩამოვიდა';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol დღეს $percent-ით შეიცვალა';
  }

  @override
  String alertHitBody(String price) {
    return 'მიმდინარე ფასი: $price';
  }

  @override
  String get alertOpen => 'გახსნა';

  @override
  String get keepInTrayTitle => 'მუშაობის გაგრძელება ფანჯრის დახურვის შემდეგ';

  @override
  String get keepInTraySubtitle =>
      'WhatStock რჩება მენიუს ზოლში ან სისტემურ უჯრაში, ასე რომ მალსახმობი და ფასის შეტყობინებები მუშაობას განაგრძობს.';

  @override
  String get termsOfUse => 'გამოყენების პირობები';

  @override
  String get privacyPolicy => 'კონფიდენციალურობის პოლიტიკა';

  @override
  String get subscriptionLegal =>
      'გამოწერა ავტომატურად განახლდება ყოველთვიურად, სანამ არ გააუქმებთ. გამოწერით თქვენ ეთანხმებით გამოყენების პირობებსა და კონფიდენციალურობის პოლიტიკას.';

  @override
  String get deleteAccount => 'ანგარიშის წაშლა';

  @override
  String get deleteAccountTitle => 'წაიშალოს თქვენი ანგარიში?';

  @override
  String get deleteAccountBody =>
      'თქვენი ანგარიში და ყველაფერი, რაც ჩვენს სერვერზე ინახება (ელფოსტა, ლიმიტი, გამოყენება), სამუდამოდ წაიშლება, ხოლო გამოუყენებელი ანალიზები დაიკარგება. ბრაუზერში გადახდილი გამოწერა მაშინვე გაუქმდება; App Store-ის ან Google Play-ის გამოწერა კი მაღაზიის პარამეტრებში უნდა გააუქმოთ.';

  @override
  String get deleteLocalData =>
      'ამ მოწყობილობაზე არსებული მონაცემების წაშლაც (პორტფელი, შეტყობინებები, რჩეულები, ისტორია, შენახული ანალიზები)';

  @override
  String get deleteAccountConfirm => 'სამუდამოდ წაშლა';

  @override
  String get accountDeleted => 'თქვენი ანგარიში წაიშალა.';

  @override
  String get errDeleteAccount =>
      'ანგარიშის წაშლა ვერ მოხერხდა. შეამოწმეთ კავშირი და სცადეთ ხელახლა.';

  @override
  String get aiTrialBriefNote =>
      'საცდელი ანალიზები მოკლეა და იქმნება უფრო სწრაფი AI მოდელით. გეგმით მიიღებთ ჩვენს ყველაზე ძლიერ AI-ს, მეტ ვებძიებას და სტანდარტულ და სიღრმისეულ სიგრძეს.';

  @override
  String get billingMonthly => 'თვიური';

  @override
  String get billingYearly => 'წლიური';

  @override
  String get yearlyDiscount => '2 თვე უფასოდ';

  @override
  String get perYear => '/ წელი';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price თვეში';
  }

  @override
  String get subscriptionLegalYearly =>
      'წლიური გამოწერა ავტომატურად განახლდება ყოველწლიურად, სანამ არ გააუქმებთ. გამოწერით თქვენ ეთანხმებით გამოყენების პირობებსა და კონფიდენციალურობის პოლიტიკას.';

  @override
  String get myAnalyses => 'ჩემი ანალიზები';

  @override
  String get navAlerts => 'შეტყობინებები';

  @override
  String get inviteTitle => 'დახურული წინასწარი ვერსია';

  @override
  String get inviteBody =>
      'WhatStock ამჟამად მხოლოდ მოწვევით არის ხელმისაწვდომი. შეიყვანეთ მიღებული მოწვევის კოდი.';

  @override
  String get inviteCodeLabel => 'მოწვევის კოდი';

  @override
  String get inviteContinue => 'გაგრძელება';

  @override
  String get inviteInvalid => 'მოწვევის ეს კოდი არასწორია.';

  @override
  String get inviteExpired =>
      'ამ მოწვევას ვადა გაუვიდა. ახალი კოდი სთხოვეთ იმას, ვინც მოგიწვიათ.';

  @override
  String get inviteDeviceLimit =>
      'მოწვევის ეს კოდი უკვე გამოიყენება მოწყობილობების მაქსიმალურ დასაშვებ რაოდენობაზე.';

  @override
  String get previewConfidential => 'კონფიდენციალური ვერსია';

  @override
  String get errPreviewDailyLimit =>
      'ამ წინასწარი ვერსიის დღევანდელი ანალიზების ლიმიტი ამოიწურა. სცადეთ ხვალ ხელახლა.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count საათის წინ',
      one: '$count საათის წინ',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count დღის წინ',
      one: '$count დღის წინ',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'განვაახლოთ ეს ანალიზი?';

  @override
  String staleBody(String age) {
    return 'ეს ანალიზი შეიქმნა $age. მას შემდეგ ფასები, სიახლეები და შედეგები შესაძლოა შეიცვალა.';
  }

  @override
  String get staleKeep => 'ადრინდელის ჩვენება';

  @override
  String get staleRefresh => 'ახლის შექმნა';

  @override
  String seeAll(int count) {
    return 'ყველას ნახვა ($count)';
  }

  @override
  String get searchAnalyses => 'თქვენს ანალიზებში ძიება';

  @override
  String get deleteAnalysis => 'წაშლა';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol-ის ანალიზი წაიშალა';
  }

  @override
  String get keyLevelAlertHint =>
      'შეეხეთ დონეს, რომ მიიღოთ შეტყობინება, როცა ფასი მას მიაღწევს.';

  @override
  String get shareAnalysisTitle => 'ანალიზის გაზიარება';

  @override
  String get shareAsImage => 'სურათად გაზიარება';

  @override
  String get shareAsText => 'ტექსტად გაზიარება';

  @override
  String get shareCardFooter => 'შექმნილია WhatStock-ით';

  @override
  String get shareCardDisclaimer => 'AI ანალიზი · არ არის საინვესტიციო რჩევა';

  @override
  String get referralTitle => 'მოიწვიეთ მეგობრები';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count დამატებით ანალიზს',
      one: '1 დამატებით ანალიზს',
    );
    return 'გააზიარეთ თქვენი კოდი. თქვენი მეგობარი მაშინვე მიიღებს $_temp0, თქვენ კი იმავე რაოდენობას — მისი პირველი ანალიზის შემდეგ.';
  }

  @override
  String get referralYourCode => 'თქვენი კოდი';

  @override
  String referralStats(int invited, int rewarded) {
    return 'მოწვეული: $invited · დაჯილდოებული: $rewarded';
  }

  @override
  String get referralHaveCode => 'გაქვთ მეგობრის კოდი?';

  @override
  String get referralRedeem => 'გააქტიურება';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'დაემატა $count დამატებითი ანალიზი. მოგესალმებით!',
      one: 'დაემატა 1 დამატებითი ანალიზი. მოგესალმებით!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'ასეთი კოდი არ არსებობს. შეამოწმეთ და სცადეთ ხელახლა.';

  @override
  String get referralErrOwn => 'საკუთარი კოდის გააქტიურება შეუძლებელია.';

  @override
  String get referralErrAlready => 'თქვენ უკვე გამოიყენეთ მეგობრის კოდი.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count დამატებით ანალიზს',
      one: '1 დამატებით ანალიზს',
    );
    return 'აქციებს WhatStock-ით ვაანალიზებ: გადაუღებ აქციას ფოტოს და AI აგიხსნის. ჩემი კოდით $code მიიღებ $_temp0.';
  }

  @override
  String get referralCopied => 'კოდი დაკოპირდა';

  @override
  String get onboardTitle1 => 'გადაუღეთ ფოტო აქციას';

  @override
  String get onboardBody1 =>
      'საკმარისია საბროკერო აპის ეკრანი, გაზეთი ან კომპანიის ლოგო: WhatStock ამოიცნობს აქციას და გაჩვენებთ მის ფასს, გრაფიკს და მთავარ მაჩვენებლებს.';

  @override
  String get onboardTitle2 => 'გაიგეთ წუთებში';

  @override
  String get onboardBody2 =>
      'AI ანალიზი განმარტავს, რა ამოძრავებს აქციას, რა რისკები არსებობს, როგორია მისი შეფასება, და გთავაზობთ სამ სცენარს, საით შეიძლება წავიდეს ფასი – წყაროებით და თქვენს ენაზე.';

  @override
  String get onboardTitle3 => 'იყავით საქმის კურსში';

  @override
  String get onboardBody3 =>
      'რჩეულები, თქვენი პორტფელი და ფასის შეტყობინებები ყოველთვის საქმის კურსში გამყოფენ. თქვენი ანალიზები თქვენს მოწყობილობაზე რჩება, ხელახლა გასახსნელად მზად.';

  @override
  String get onboardNext => 'შემდეგი';

  @override
  String get onboardStart => 'დაწყება';

  @override
  String get onboardSkip => 'გამოტოვება';

  @override
  String changesTitle(String date) {
    return 'წინა ანალიზის შემდეგ ($date)';
  }

  @override
  String get changesPrice => 'ფასი';

  @override
  String get changesNoMajor => 'პერსპექტივა არსებითად არ შეცვლილა.';

  @override
  String get changesPreviousSummary => 'წინა შეჯამება';

  @override
  String get telemetryTitle => 'დაგვეხმარეთ WhatStock-ის გაუმჯობესებაში';

  @override
  String get telemetryBody =>
      'გააზიარეთ გამოყენების ანონიმური სტატისტიკა და ავარიის ანგარიშები: რომელი ფუნქციები გამოიყენება და რა მოხდა არასწორად. თქვენი აქციები, ანალიზები ან პერსონალური მონაცემები არასოდეს იგზავნება. ამის შეცვლა ნებისმიერ დროს შეგიძლიათ პარამეტრებში.';

  @override
  String get telemetryAllow => 'დაშვება';

  @override
  String get telemetryDecline => 'არა, გმადლობთ';

  @override
  String get telemetrySetting => 'ანონიმური სტატისტიკა და ავარიის ანგარიშები';

  @override
  String get telemetrySettingHint =>
      'რამდენად ხშირად გამოიყენება ფუნქციები და შეცდომების ანგარიშები, პერსონალური მონაცემებისა და თქვენი ძიებებისა და ანალიზების შინაარსის გარეშე.';

  @override
  String get askButton => 'დასვით კითხვა ანალიზზე';

  @override
  String askTitle(String symbol) {
    return 'კითხვები: $symbol';
  }

  @override
  String get askIntro =>
      'იკითხეთ ნებისმიერი რამ ანალიზის შესახებ: რას ნიშნავს ესა თუ ის რისკი, რა შეცვლიდა პერსპექტივას, როგორ გამოითვალა ესა თუ ის რიცხვი. პასუხები ეფუძნება ამ ანალიზს და არ წარმოადგენს საინვესტიციო რჩევას.';

  @override
  String get askHint => 'დასვით კითხვა…';

  @override
  String get askSend => 'გაგზავნა';

  @override
  String get askThinking => 'ვფიქრობ…';

  @override
  String get askSuggest1 => 'რა არის ყველაზე დიდი რისკი?';

  @override
  String get askSuggest2 => 'რა შეცვლიდა პერსპექტივას?';

  @override
  String get askSuggest3 => 'ამიხსენი მარტივად';

  @override
  String get askMaxReached =>
      'ეს იყო ამ ანალიზის ბოლო კითხვა. მეტი კითხვისთვის შექმენით ახალი ანალიზი.';

  @override
  String get errAskLimit =>
      'დღევანდელი კითხვების ლიმიტი ამოიწურა. სცადეთ ხვალ ხელახლა.';

  @override
  String get eventTomorrow => 'ხვალ';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days დღეში',
      one: '1 დღეში',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'კვარტალური შედეგები';

  @override
  String get eventBeforeOpen => 'ბირჟის გახსნამდე';

  @override
  String get eventAfterClose => 'ბირჟის დახურვის შემდეგ';

  @override
  String eventEpsEstimate(String value) {
    return 'მოსალოდნელი EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'თქვენი ანალიზიდან';

  @override
  String get eventDividend => 'მოსალოდნელი დივიდენდი';

  @override
  String get eventDividendEstimate =>
      'შეფასებულია თქვენი ჩაწერილი გადახდებიდან';

  @override
  String get eventsHint =>
      'თქვენი რჩეულებისა და პორტფელის აქციების შედეგების თარიღები მომდევნო 90 დღისთვის, თქვენი ანალიზების მიერ მონიშნული თარიღიანი მოვლენები და თქვენი ჩაწერილი გადახდებიდან მოსალოდნელი დივიდენდები.';

  @override
  String get eventsEmpty =>
      'მომდევნო 90 დღეში თარიღიანი მოვლენები არ არის. დაამატეთ რჩეულები ან პორტფელის აქციები, რომ აქ მათი შედეგების თარიღები ნახოთ; ჩაწერილი დივიდენდებისთვის აქ ჩანს მოსალოდნელი შემდეგი გადახდა.';

  @override
  String get compareTitle => 'შედარება';

  @override
  String get compareAdd => 'აქციის დამატება';

  @override
  String get compareRemove => 'წაშლა';

  @override
  String get compareTickerHint => 'ტიკერი, მაგ. MSFT';

  @override
  String get compareHint =>
      'ძირითადი მაჩვენებლები გვერდიგვერდ; თითოეულ სტრიქონში საუკეთესო მნიშვნელობა გამოკვეთილია. თანხები მოცემულია თითოეული აქციის საკუთარ ვალუტაში.';

  @override
  String get compareNoAnalysis => 'ანალიზი ჯერ არ არის';

  @override
  String get portfolioDividends => 'წლიური დივიდენდები';

  @override
  String portfolioDividendYield(String percent) {
    return 'შემოსავლიანობა $percent';
  }

  @override
  String get portfolioDividendNote =>
      'მოსალოდნელი წლიური დივიდენდები ეფუძნება ბოლო 12 თვეში გადახდილ დივიდენდებს; მომავალი გადახდები გარანტირებული არ არის.';

  @override
  String positionDividend(String amount) {
    return 'დივიდენდი: წელიწადში $amount';
  }

  @override
  String get chartAvgCost => 'თქვენი საშ.';

  @override
  String get chartAlertLevel => 'შეტყობინება';

  @override
  String get marketsToday => 'ბაზრები დღეს';

  @override
  String get notesTitle => 'ჩემი ჩანაწერები';

  @override
  String get notesHint =>
      'რატომ იყიდეთ, რას აკვირდებით, რა გაიძულებდათ გაყიდვას?';

  @override
  String get notesInfo =>
      'ინახება მხოლოდ ამ მოწყობილობაზე. AI ანალიზი ითვალისწინებს თქვენს ჩანაწერებს.';

  @override
  String notesSaved(String date) {
    return 'შენახულია $date';
  }

  @override
  String get peersTitle => 'მსგავსი კომპანიები';

  @override
  String get portfolioExport => 'ექსპორტი CSV-ად';

  @override
  String get portfolioImport => 'იმპორტი CSV-დან';

  @override
  String get portfolioImportHint =>
      'ჩასვით თითო შენაძენი თითო ხაზზე: ტიკერი, რაოდენობა, ფასი, ვალუტა, თარიღი (წწწწ-თთ-დდ). სვეტები შეიძლება გამოიყოს მძიმით, წერტილ-მძიმით ან ტაბულაციით; სათაურის ხაზი არასავალდებულოა.';

  @override
  String get portfolioImportButton => 'იმპორტი';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'დაემატა $count შენაძენი',
      one: 'დაემატა 1 შენაძენი',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'გამოტოვდა $count ხაზი',
      one: 'გამოტოვდა 1 ხაზი',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'პორტფელი, რჩეულები, ფასის შეტყობინებები და ჩანაწერები სინქრონიზდება ყველა თქვენს მოწყობილობაზე.';

  @override
  String syncLast(String time) {
    return 'ბოლო სინქრონიზაცია: $time';
  }

  @override
  String get syncNow => 'სინქრონიზაცია ახლა';

  @override
  String get syncFailed =>
      'სინქრონიზაცია ვერ მოხერხდა. ხელახლა ცდა ავტომატურად მოხდება.';

  @override
  String get alertEmailTitle => 'ელფოსტა, როცა შეტყობინება ამოქმედდება';

  @override
  String get alertEmailOn =>
      'ყოველ რამდენიმე წუთში ვამოწმებთ თქვენს შეტყობინებებს და ელფოსტით გატყობინებთ, მაშინაც კი, როცა აპი დახურულია.';

  @override
  String get alertEmailSignIn =>
      'შედით ელფოსტით პარამეტრებში, რომ შეტყობინებები ელფოსტით მიიღოთ, მაშინაც კი, როცა აპი დახურულია.';

  @override
  String get portfolioHistory => 'ღირებულების დინამიკა';

  @override
  String get portfolioReviewTitle => 'პორტფელის AI ანალიზი';

  @override
  String get portfolioReviewIntro =>
      'AI განიხილავს თქვენს მთლიან პორტფელს: კონცენტრაციას, სექტორულ და სავალუტო რისკს, თქვენი აქციების საერთო რისკებს და დივიდენდებს. იყენებს 1 ანალიზს.';

  @override
  String get portfolioReviewButton => 'ჩემი პორტფელის ანალიზი';

  @override
  String get portfolioReviewAgain => 'ხელახლა გაანალიზება';

  @override
  String get portfolioReviewWorking => 'თქვენი პორტფელი ანალიზდება…';

  @override
  String get digestTitle => 'ყოველკვირეული შეჯამება ელფოსტით';

  @override
  String get digestHint =>
      'ყოველ ორშაბათს: როგორ შეიცვალა თქვენი რჩეულები და პორტფელი გასულ კვირას და მათი შედეგების მომავალი თარიღები.';

  @override
  String get benchmarkTitle => 'S&P 500-თან შედარება';

  @override
  String get benchmarkYours => 'თქვენი შენაძენი';

  @override
  String get benchmarkIndex => 'იგივე თანხები S&P 500-ში';

  @override
  String benchmarkAhead(String points) {
    return 'ინდექსზე $points პროცენტული პუნქტით უკეთესი';
  }

  @override
  String benchmarkBehind(String points) {
    return 'ინდექსს $points პროცენტული პუნქტით ჩამორჩება';
  }

  @override
  String get benchmarkHint =>
      'თითქოს ყოველი შენაძენი იმავე დღეს S&P 500-ის ინდექსურ ფონდში ჩადებულიყო. დივიდენდების გარეშე; წარსული შემოსავლიანობა მომავალს არ წინასწარმეტყველებს.';

  @override
  String get portfolioSell => 'გაყიდვა';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbol-ის გაყიდვა';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'ერთი აქციის გაყიდვის ფასი ($currency)';
  }

  @override
  String get portfolioSellDate => 'გაყიდვის თარიღი';

  @override
  String get portfolioSellAll => 'ყველა';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'გაქვთ $quantity';
  }

  @override
  String get portfolioSold => 'გაიყიდა';

  @override
  String get portfolioRealized => 'რეალიზებული';

  @override
  String get portfolioClosed => 'დახურული პოზიციები';

  @override
  String get portfolioClosedNote => 'ყველა აქცია გაყიდულია';

  @override
  String get portfolioTransactions => 'ტრანზაქციები';

  @override
  String get portfolioRealizedByYear => 'რეალიზებული მოგება წლების მიხედვით';

  @override
  String get portfolioRealizedHint =>
      'გაყიდვები ჯერ თქვენს უძველეს შენაძენებს უთავსდება (FIFO) და დღევანდელი გაცვლითი კურსით გადაიანგარიშება. საგადასახადო დეკლარაციისთვის გამოიყენეთ თქვენი ბროკერის ამონაწერი.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'ამ ანალიზის შემდეგ გამოქვეყნდა ახალი კვარტალური შედეგები ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'ახალი შედეგები';

  @override
  String get portfolioImportBrokers =>
      'ასევე ამოიცნობა Revolut-ის, Trading 212-ისა და Interactive Brokers-ის ექსპორტები, გაყიდვების ჩათვლით; დივიდენდები და შენატანები გამოტოვებულია.';

  @override
  String get portfolioImportFile => 'აირჩიეთ ფაილი';

  @override
  String offlineBanner(String time) {
    return 'კავშირი არ არის – ნაჩვენებია ბოლოს შენახული მონაცემები ($time).';
  }

  @override
  String get glossMarketCap =>
      'რამდენი ღირს მთელი კომპანია საფონდო ბირჟაზე: აქციის ფასი × აქციების რაოდენობა.';

  @override
  String get glossSharesOutstanding =>
      'რამდენი აქცია გამოუშვა კომპანიამ. თუ რიცხვი იზრდება, თითო აქციას უფრო პატარა წილი ეკუთვნის; აქციების უკუგამოსყიდვა მას ამცირებს.';

  @override
  String get glossPeTrailing =>
      'ფასი ÷ ბოლო 12 თვის მოგება ერთ აქციაზე: მიმდინარე მოგების რამდენი წლის საფასურს იხდით. დაბალი უფრო იაფია, მაგრამ სწრაფად მზარდ კომპანიებს ჩვეულებრივ მაღალი P/E აქვთ.';

  @override
  String get glossPeForward =>
      'როგორც P/E, ოღონდ ანალიტიკოსების მიერ მომდევნო 12 თვისთვის მოსალოდნელი მოგებით. თუ მიმდინარე P/E-ზე დაბალია, მოგების ზრდაა მოსალოდნელი.';

  @override
  String get glossPb =>
      'ფასი ÷ საბალანსო ღირებულება (აქტივებს გამოკლებული ვალები) ერთ აქციაზე. დაახლოებით 1 ნიშნავს, რომ ბაზარი კომპანიას აფასებს იმდენად, რამდენიც ქაღალდზე აქვს.';

  @override
  String get glossPs =>
      'საბაზრო ღირებულება ÷ წლიური შემოსავალი. სასარგებლოა კომპანიებისთვის, რომლებსაც ჯერ მცირე მოგება აქვთ ან საერთოდ არ აქვთ; შეადარეთ იმავე დარგში.';

  @override
  String get glossEvToFcf =>
      'კომპანიის ღირებულება ვალის ჩათვლით (EV) ÷ ფული, რომელსაც ის წელიწადში გამოიმუშავებს ინვესტიციების შემდეგ. დაბალი ნიშნავს, რომ ფასის სანაცვლოდ მეტ ფულს იღებთ.';

  @override
  String get glossPeg =>
      'P/E ÷ მოსალოდნელი წლიური მოგების ზრდა (%). დაახლოებით 1 ხშირად სამართლიანად ითვლება; ის P/E-ს ზრდის ჭრილში აფასებს.';

  @override
  String get glossEps =>
      'მოგება ერთ აქციაზე ბოლო 12 თვეში. წლების განმავლობაში მზარდი EPS ჯანსაღი კომპანიის ერთ-ერთი ყველაზე ძლიერი ნიშანია.';

  @override
  String get glossBeta =>
      'რამდენად მოძრაობს აქცია ბაზართან ერთად: 1 = ბაზრის მსგავსად, 1,5 = დაახლოებით 50%-ით დიდი რყევები, 1-ზე ნაკლები = უფრო მშვიდი.';

  @override
  String get glossRevenueTtm =>
      'ბოლო 12 თვის ჯამური გაყიდვები, ნებისმიერ ხარჯამდე.';

  @override
  String get glossNetIncomeTtm =>
      'მოგება, რომელიც ბოლო 12 თვეში ყველა ხარჯის, პროცენტისა და გადასახადის შემდეგ რჩება.';

  @override
  String get glossGrossMargin =>
      'შემოსავლის წილი, რომელიც პროდუქციის პირდაპირი ხარჯების შემდეგ რჩება. მაღალი მარჟა ხშირად ფასის დადგენის ძალას ნიშნავს.';

  @override
  String get glossOperatingMargin =>
      'შემოსავლის წილი, რომელიც ბიზნესის წარმართვის (ხელფასები, ქირა, მარკეტინგი) შემდეგ რჩება, პროცენტებამდე და გადასახადებამდე.';

  @override
  String get glossNetMargin =>
      'შემოსავლის წილი, რომელიც საბოლოო მოგებად იქცევა. 20% ნიშნავს, რომ ყოველი 100 გაყიდვიდან 20 მოგებაა.';

  @override
  String get glossRoe =>
      'კაპიტალის უკუგება: წლიური მოგება ÷ მფლობელების კაპიტალი. აჩვენებს, რამდენად კარგად იყენებს მენეჯმენტი აქციონერების ფულს; დაახლოებით 15%-ზე მეტი ძლიერია.';

  @override
  String get glossRoa =>
      'აქტივების უკუგება: წლიური მოგება ÷ ყველაფერი, რაც კომპანიას ეკუთვნის. შეადარეთ იმავე დარგში.';

  @override
  String get glossDebtToEquity =>
      'ვალი ÷ მფლობელების კაპიტალი. მაღალი ნიშნავს მეტ ნასესხებ ფულს: მეტ რისკს, როცა განაკვეთები იზრდება ან ბიზნესი ნელდება.';

  @override
  String get glossCurrentRatio =>
      'მოკლევადიანი აქტივები ÷ ერთ წელიწადში გადასახდელი ვალდებულებები. 1-ზე მეტი ნიშნავს, რომ კომპანიას ახლო ვადის ვალდებულებების დაფარვა შეუძლია.';

  @override
  String get glossRevenueGrowth =>
      'რამდენით გაიზარდა შემოსავალი წინა წელთან შედარებით.';

  @override
  String get glossEpsGrowth =>
      'რამდენით გაიზარდა მოგება ერთ აქციაზე წინა წელთან შედარებით.';

  @override
  String get glossDividendYield =>
      'წლიური დივიდენდი ÷ აქციის ფასი: ფულადი შემოსავალი, რომელსაც ყოველწლიურად მიიღებდით, გადახდილი თანხის პროცენტად.';

  @override
  String get glossDividendPerShare =>
      'ბოლო წელს ერთ აქციაზე გადახდილი დივიდენდი.';

  @override
  String get glossPayoutRatio =>
      'მოგების წილი, რომელიც დივიდენდად გაიცემა. 100%-ზე მეტისას კომპანია იმაზე მეტს იხდის, ვიდრე გამოიმუშავებს, რაც იშვიათად გრძელდება.';

  @override
  String get glossYieldOnCost =>
      'ბოლო 12 თვეში მიღებული დივიდენდები გაყოფილი იმაზე, რაც გადაიხადეთ ჯერ კიდევ თქვენს ხელთ არსებულ აქციებში. დივიდენდური შემოსავლიანობისგან განსხვავებით, ის თქვენი შესყიდვის ფასით იზომება და არა დღევანდელი ფასით.';

  @override
  String get glossTitle => 'რას ნიშნავს?';

  @override
  String get watchNewsTitle => 'სიახლეები თქვენს აქციებზე';

  @override
  String get undo => 'დაბრუნება';

  @override
  String get watchSort => 'დალაგება';

  @override
  String get watchSortOwn => 'ჩემი თანმიმდევრობა';

  @override
  String get watchSortGainers => 'ჯერ ყველაზე მზარდი';

  @override
  String get watchSortLosers => 'ჯერ ყველაზე კლებადი';

  @override
  String get watchSortName => 'ტიკერით (A–Z)';

  @override
  String get watchHint =>
      'გადაათრიეთ სახელური რიგის შესაცვლელად, გადაფურცლეთ მარცხნივ ამოსაშლელად. ხაზი აჩვენებს ბოლო 30 დღეს.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: თქვენი ანალიზი მზადაა.';
  }

  @override
  String alertFromCost(String price) {
    return 'თქვენი საშუალო შესყიდვის ფასიდან ($price):';
  }

  @override
  String get briefTitle => 'დღეს თქვენს აქციებთან ერთად';

  @override
  String get briefButton => 'დღის შეჯამება';

  @override
  String get briefHint =>
      'მოკლე AI შეჯამება იმის შესახებ, როგორ შეიცვალა დღეს თქვენი პორტფელი და რჩეულები და რას ამბობს მათზე უახლესი ამბები. ანალიზს არ ხარჯავს.';

  @override
  String get briefRefresh => 'განახლება';

  @override
  String get sectionEarnings => 'კვარტალური შედეგები';

  @override
  String earningsNext(String date) {
    return 'შემდეგი ანგარიში: $date';
  }

  @override
  String get earningsExpected => 'მოსალოდნელი EPS';

  @override
  String get earningsReported => 'გამოქვეყნებული EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: 'EPS მოსალოდნელის ტოლი ან მეტი ბოლო $total კვარტალიდან $beats-ში',
      one: 'EPS მოსალოდნელის ტოლი ან მეტი 1 კვარტალიდან $beats-ში',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol ხვალ კვარტალურ შედეგებს აქვეყნებს';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol დღეს კვარტალურ შედეგებს აქვეყნებს';
  }

  @override
  String get earningsRemindersTitle => 'შედეგების შეხსენებები';

  @override
  String get earningsRemindersSubtitle =>
      'შეტყობინება ერთი დღით ადრე, სანამ შენი რჩეულების ან პორტფელის აქციები კვარტალურ შედეგებს გამოაქვეყნებს';

  @override
  String addAllToFavorites(int count) {
    return 'ყველას რჩეულებში დამატება ($count)';
  }

  @override
  String get portfolioImportPhoto => 'იმპორტი ეკრანის ანაბეჭდიდან';

  @override
  String get holdingsReading => 'პოზიციების წაკითხვა…';

  @override
  String get holdingsReviewTitle => 'ნაპოვნი პოზიციები';

  @override
  String get holdingsReviewHint =>
      'დამატებამდე გადაამოწმე რიცხვები. ფასი არის შენი საშუალო შესყიდვის ფასი ერთ აქციაზე და არა დღევანდელი ფასი.';

  @override
  String get holdingsNoPrice => 'სურათზე საშუალო შესყიდვის ფასი არ არის';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count პოზიციის დამატება',
      one: '1 პოზიციის დამატება',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'ამ სურათზე აქციების პოზიციები ვერ მოიძებნა. სცადე შენი ბროკერის პოზიციების ან აქტივების გვერდის ეკრანის ანაბეჭდი.';

  @override
  String get week52Range => '52-კვირიანი დიაპაზონი';

  @override
  String week52BelowHigh(String percent) {
    return '52-კვირიან მაქსიმუმზე $percent-ით დაბლა';
  }

  @override
  String get week52AtHigh => '52-კვირიან მაქსიმუმზე';

  @override
  String get alertKindTrailing => 'ჩამოვა პიკიდან';

  @override
  String get alertTrailingPercent => 'ვარდნა პიკიდან (%)';

  @override
  String get alertTrailingHint =>
      'ფასს ზემოთ მიჰყვება: გაფრთხილება ჩაირთვება, როცა ფასი ამდენით ჩამოვა დაყენების შემდეგ მიღწეული უმაღლესი დონიდან.';

  @override
  String alertDescTrailing(String percent) {
    return 'ვარდნა პიკიდან $percent-ით';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'პიკი ჯერჯერობით: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol პიკიდან $percent-ით ჩამოვიდა';
  }

  @override
  String get sectionInsiders => 'ინსაიდერული გარიგებები';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count შესყიდვა',
      one: '1 შესყიდვა',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count გაყიდვა',
      one: '1 გაყიდვა',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'წმინდა: $shares აქცია';
  }

  @override
  String get insiderBuy => 'ნაყიდი';

  @override
  String get insiderSell => 'გაყიდული';

  @override
  String get insiderHint =>
      'ხელმძღვანელებისა და დირექტორების შესყიდვები და გაყიდვები ღია ბაზარზე ბოლო 90 დღის განმავლობაში (SEC Form 4). ოფციონების განხორციელება და აქციებით დაჯილდოება არ ითვლება.';

  @override
  String get insiderNone =>
      'ბოლო 90 დღის განმავლობაში ღია ბაზარზე ინსაიდერული შესყიდვები ან გაყიდვები არ ყოფილა.';

  @override
  String get analystTrend => 'როგორ იცვლებოდა შეფასებები თვიდან თვემდე';

  @override
  String get watchListAll => 'ყველა';

  @override
  String get watchListNew => 'ახალი სია';

  @override
  String get watchListName => 'სიის სახელი';

  @override
  String get watchListRename => 'სიის გადარქმევა';

  @override
  String get watchListDelete => 'სიის წაშლა';

  @override
  String get watchListAddTo => 'სიაში დამატება';

  @override
  String get watchListEmpty =>
      'ამ სიაში ჯერ აქციები არ არის. დასამატებლად შეეხეთ სიის ღილაკს აქციის გვერდით.';

  @override
  String get portfolioAskTitle => 'კითხვები თქვენი პორტფელის შესახებ';

  @override
  String get rangeYtd => 'ამ წელს';

  @override
  String get backupTitle => 'სარეზერვო ასლი';

  @override
  String get backupSave => 'სარეზერვო ასლის შენახვა';

  @override
  String get backupSaveHint =>
      'თქვენი რჩეულები, სიები, პორტფელი, შეტყობინებები და ჩანაწერები ერთ ფაილში.';

  @override
  String get backupRestore => 'სარეზერვო ასლიდან აღდგენა';

  @override
  String get backupRestoreHint =>
      'ამატებს ფაილის შიგთავსს; თქვენი ამჟამინდელი მონაცემებიდან არაფერი იშლება.';

  @override
  String get backupRestored => 'სარეზერვო ასლი აღდგენილია.';

  @override
  String get backupInvalid => 'ეს ფაილი WhatStock-ის სარეზერვო ასლი არ არის.';

  @override
  String get allocationPositions => 'აქციები';

  @override
  String get allocationSectors => 'სექტორები';

  @override
  String get allocationCurrencies => 'ვალუტები';

  @override
  String get compareReturn1y => '1-წლიანი შემოსავლიანობა';

  @override
  String get compareFromHigh => 'დაშორება 52-კვირიანი მაქსიმუმიდან';

  @override
  String get briefAutoTitle => 'დღიური შეჯამება ყოველ დილით';

  @override
  String get briefAutoSubtitle =>
      '„დღეს თქვენს აქციებთან ერთად“ ავტომატურად იქმნება 7:00-ის შემდეგ, სანამ აპი მუშაობს; კომპიუტერებზე ამის შესახებ შეტყობინება გაცნობებთ. იყენებს თქვენს დღიურ კითხვების ლიმიტს და არა ანალიზს.';

  @override
  String get targetsButton => 'სამიზნე განაწილება';

  @override
  String get targetsTitle => 'სამიზნე განაწილება';

  @override
  String get targetsHint =>
      'მიუთითეთ, პორტფელის რა წილი უნდა ეკავოს თითოეულ აქციას. თუ მიზანი არ გაქვთ, ველი ცარიელი დატოვეთ. შემდეგ აპი გაჩვენებთ, რა უნდა იყიდოთ ან გაყიდოთ იქ მისაღწევად.';

  @override
  String targetsSum(String percent) {
    return 'სულ: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'ყიდვა ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'გაყიდვა ≈ $amount';
  }

  @override
  String get rebalanceOk => 'მიზანშია';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol-მა მოსალოდნელ EPS-ს გადააჭარბა';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol-მა მოსალოდნელ EPS-ს ვერ მიაღწია';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'გამოქვეყნებული EPS $actual, მოსალოდნელი $estimate';
  }

  @override
  String get newsExplain => 'რას ნიშნავს ეს?';

  @override
  String get watchAlertAll => 'გაფრთხილება დიდ დღიურ ცვლილებაზე';

  @override
  String get watchAlertAllHint =>
      'ფასის გაფრთხილება ამ სიის ყველა აქციისთვის: ამოქმედდება, როცა ერთ დღეში ამდენით შეიცვლება, ზემოთ ან ქვემოთ. აქციები, რომლებსაც უკვე აქვთ, თავისას შეინარჩუნებენ.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'დაყენდა $count გაფრთხილება',
      one: 'დაყენდა 1 გაფრთხილება',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'რეალიზებული მოგების ექსპორტი (CSV)';

  @override
  String get portfolioAnnualReturn => 'წლიური შემოსავლიანობა';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / წელი';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'ფულით შეწონილი წლიური შემოსავლიანობა (XIRR): ითვალისწინებს, როდის იყიდეთ და გაყიდეთ, ამიტომ მოგვიანებით დამატებული თანხა მას არ ამახინჯებს. ჩანს, როცა თქვენს პირველ შენაძენს მინიმუმ ერთი წელი შეუსრულდება; დივიდენდები არ შედის.';

  @override
  String get eventsAddToCalendar => 'კალენდარში დამატება (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'პორტფელის შეტყობინება';

  @override
  String get portfolioMoveAlertSubtitle =>
      'შეტყობინება, როცა შენი მთლიანი პორტფელი ერთ დღეში ამდენით იცვლება.';

  @override
  String get portfolioMoveAlertOff => 'გამორთული';

  @override
  String portfolioMoveUp(String percent) {
    return 'შენი პორტფელი დღეს $percent-ით გაიზარდა';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'შენი პორტფელი დღეს $percent-ით შემცირდა';
  }

  @override
  String get whatIfTitle => 'რა იქნებოდა, ინვესტიცია რომ ჩაგედოთ?';

  @override
  String get whatIfAmount => 'თანხა';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount ინვესტიცია (პერიოდი: $period) დღეს ეღირებოდა';
  }

  @override
  String get whatIfNote =>
      'ეფუძნება მხოლოდ აქციის ფასს: დივიდენდები, საკომისიოები და გადასახადები არ არის გათვალისწინებული. წარსული შემოსავლიანობა მომავალს არ წინასწარმეტყველებს.';

  @override
  String get watchShare => 'სიის გაზიარება';

  @override
  String get watchImport => 'ტიკერების დამატება';

  @override
  String get watchImportHint =>
      'ჩასვით ტიკერები, გამოყოფილი მძიმით, ჰარით ან ახალი ხაზით – მაგალითად, სია, რომელიც ვიღაცამ გაგიზიარათ.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'დაემატა $count აქცია',
      one: 'დაემატა 1 აქცია',
      zero: 'ახალი აქციები არ არის',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'ჯერ ყველაზე დიდი';

  @override
  String get positionsSortGain => 'ჯერ ყველაზე მაღალი ჯამური შემოსავალი';

  @override
  String get positionsSortToday => 'ჯერ დღის საუკეთესოები';

  @override
  String get chartMyBuys => 'თქვენი შენაძენები';

  @override
  String get chartMySells => 'თქვენი გაყიდვები';

  @override
  String get shortcutsTitle => 'კლავიატურის მალსახმობები';

  @override
  String usMarketOpen(String time) {
    return 'აშშ ბაზარი ღიაა · დახურვამდე $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'აშშ ბაზარი დახურულია · გახსნამდე $time';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes წთ';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours სთ $minutes წთ';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days დღე $hours სთ';
  }

  @override
  String get portfolioGoalSet => 'მიზნის დაყენება';

  @override
  String get portfolioGoalTitle => 'პორტფელის მიზანი';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · მიზანი: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'მიზანი მიღწეულია: $amount';
  }

  @override
  String get portfolioGoalRemove => 'მიზნის წაშლა';

  @override
  String get alertEdit => 'შეტყობინების რედაქტირება';

  @override
  String get positionOpenLots => 'კვლავ თქვენს ხელთ (ჯერ უძველესი)';

  @override
  String get lotRemoved => 'ტრანზაქცია წაიშალა';

  @override
  String get alertDeleted => 'გაფრთხილება წაიშალა';

  @override
  String get alertsClearTriggered => 'ამოქმედებული გაფრთხილებების გასუფთავება';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'წაიშალა $count გაფრთხილება',
      one: 'წაიშალა 1 გაფრთხილება',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'მთავარი ეკრანი';

  @override
  String get allocationCountries => 'ქვეყნები';

  @override
  String get newsExplainNoteResearch =>
      'AI-ის განმარტება: ის ინტერნეტში ამოწმებს ფაქტებს, ხსნის სტატიას და აფასებს, რამდენად სანდოა წყარო. არ წარმოადგენს საინვესტიციო რჩევას. იყენებს თქვენს დღიურ კითხვების ლიმიტს და არა ანალიზს.';

  @override
  String get sourceOfficial => 'ოფიციალური';

  @override
  String get sourcePressRelease => 'პრესრელიზი';

  @override
  String get sourceMajorNews => 'წამყვანი მედია';

  @override
  String get sourceOpinion => 'მოსაზრება';

  @override
  String get earningsSummaryButton => 'რა ეწერა ბოლო ანგარიშში?';

  @override
  String get earningsSummaryNote =>
      'AI-ის შეჯამება კომპანიის შედეგების განცხადებისა და ინტერნეტში ნაპოვნი მედიაგაშუქების შესახებ. არ წარმოადგენს საინვესტიციო რჩევას. იყენებს თქვენს დღიურ კითხვების ლიმიტს და არა ანალიზს.';

  @override
  String get compareLastSurprise => 'ბოლო კვარტლის EPS vs მოსალოდნელი';

  @override
  String get compareNextReport => 'შემდეგი ანგარიში';

  @override
  String get resolvingDescription =>
      'მიმდინარეობს იმის დადგენა, რომელ აქციას გულისხმობთ…';

  @override
  String get instrumentTitle => 'ამ ინსტრუმენტის შესახებ';

  @override
  String get instrumentHint =>
      'ამ სიმბოლოსთვის კომპანიის პროფილი არ არსებობს – შესაძლოა ეს იყოს ETF, ფონდი ან დეპოზიტარული ხელწერილი. ჰკითხეთ AI-ს, რა არის, რას შეიცავს და რა ღირს.';

  @override
  String get instrumentAsk => 'რა არის ეს?';

  @override
  String get instrumentNote =>
      'AI-ის განმარტება ემიტენტის ფონდის გვერდისა და ინტერნეტში ნაპოვნი ფინანსური საიტების საფუძველზე. არ წარმოადგენს საინვესტიციო რჩევას. იყენებს თქვენს დღიურ კითხვების ლიმიტს და არა ანალიზს.';

  @override
  String suggestAskAi(String query) {
    return 'ჰკითხეთ AI-ს: „$query“';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return '$symbols-ის მიმდინარე ფასი არ არის.';
  }

  @override
  String get eventsRecentResults => 'ახლახან გამოქვეყნებული შედეგები';

  @override
  String get saveToNotes => 'ჩემს ჩანაწერებში შენახვა';

  @override
  String get savedToNotes => 'შენახულია თქვენს ჩანაწერებში';

  @override
  String get portfolioDividendsReceived => 'მიღებული დივიდენდები';

  @override
  String get portfolioDividendsThisYear => 'წელს';

  @override
  String get portfolioDividendsAllTime => 'მთელი პერიოდი';

  @override
  String get portfolioAddDividend => 'დივიდენდის დამატება';

  @override
  String portfolioDividendAmount(String currency) {
    return 'მიღებული თანხა ($currency)';
  }

  @override
  String get portfolioDividendDate => 'გადახდის თარიღი';

  @override
  String get portfolioDividendsEmpty =>
      'დივიდენდები ჯერ არ არის ჩაწერილი. დაამატეთ ხელით ან შემოიტანეთ თქვენი ბროკერის ექსპორტი – მისი დივიდენდების სტრიქონებიც აღიქმება.';

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'დაემატა $count დივიდენდი',
      one: 'დაემატა 1 დივიდენდი',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'დივიდენდების ექსპორტი (CSV)';

  @override
  String get portfolioDividendDeleted => 'დივიდენდი წაიშალა';

  @override
  String get portfolioDividendsHint =>
      'თანხები ისე, როგორც ჩაირიცხა თქვენს ანგარიშზე, გადახდის ვალუტაში; ჯამები კონვერტირდება დღევანდელი კურსით. საგადასახადო დეკლარაციისთვის გამოიყენეთ თქვენი ბროკერის ამონაწერი.';

  @override
  String get awayTitle => 'სანამ არ იყავით';

  @override
  String awaySince(String when) {
    return '$when-დან';
  }

  @override
  String get awayQuiet => 'თითქმის არაფერი შეცვლილა.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'გააქტიურდა $count შეტყობინება',
      one: 'გააქტიურდა 1 შეტყობინება',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'გამოაქვეყნეს შედეგები: $symbols';
  }

  @override
  String get moveWhyButton => 'რატომ მოძრაობს დღეს?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent დღეს';
  }

  @override
  String get moveWhyNote =>
      'AI განმარტება ინტერნეტში ნაპოვნი დღევანდელი სიახლეებიდან; ნამდვილი მიზეზი შეიძლება უცნობი ან სხვა იყოს. არ არის საინვესტიციო რჩევა. ხარჯავს თქვენი შეკითხვების დღიურ ლიმიტს, არა ანალიზს.';

  @override
  String get sectionTechnical => 'ტექნიკური სურათი';

  @override
  String get labelSma50 => '50-დღიანი საშუალო';

  @override
  String get labelSma200 => '200-დღიანი საშუალო';

  @override
  String get labelRsi => 'RSI (14 დღე)';

  @override
  String get labelVolatility30 => 'ვოლატილობა (30 დღე)';

  @override
  String techAbove(String percent) {
    return '$percent ზემოთ';
  }

  @override
  String techBelow(String percent) {
    return '$percent ქვემოთ';
  }

  @override
  String get techOverbought => 'ზედმეტად ნაყიდი';

  @override
  String get techOversold => 'ზედმეტად გაყიდული';

  @override
  String get techNeutral => 'ნეიტრალური';

  @override
  String get techGoldenCross =>
      '50-დღიანი საშუალო 200-დღიანზე მაღლაა – კლასიკური წაკითხვით აღმავალი ტრენდი.';

  @override
  String get techDeathCross =>
      '50-დღიანი საშუალო 200-დღიანზე დაბლაა – კლასიკური წაკითხვით დაღმავალი ტრენდი.';

  @override
  String get glossSma50 =>
      'ბოლო 50 სავაჭრო დღის დახურვის საშუალო ფასი. მასზე მაღალი ფასი ხშირად მოკლევადიან სიძლიერედ იკითხება, დაბალი – სისუსტედ.';

  @override
  String get glossSma200 =>
      'ბოლო 200 სავაჭრო დღის დახურვის საშუალო ფასი – კლასიკური გრძელვადიანი ტრენდის ხაზი. ბევრი ინვესტორი მასზე მაღალ ფასს გრძელვადიან აღმავალ ტრენდად მიიჩნევს.';

  @override
  String get glossRsi =>
      'შედარებითი სიძლიერის ინდექსი: ადარებს ბოლო პერიოდის მოგებებს ბოლო პერიოდის ზარალს 0–100 შკალაზე. 70-ზე ზემოთ აქციას ხშირად გადაყიდულს უწოდებენ (სწრაფად გაიზარდა), 30-ზე ქვემოთ – გადაგაყიდულს, მაგრამ ძლიერი ტრენდი იქ დიდხანს შეიძლება დარჩეს.';

  @override
  String get glossVolatility =>
      'რამდენად მერყეობს ფასი დღიდან დღემდე, წლიურ გამოსახულებაში: 20% ნიშნავს, რომ ტიპურ წელს ფასი დაახლოებით ±20%-ის ფარგლებში მოძრაობს. მაღალი ვოლატილობა ნიშნავს უფრო დიდ მოძრაობებს ორივე მიმართულებით.';

  @override
  String get techNote =>
      'გამოთვლილია დღიური დახურვის ფასებიდან. ტექნიკური სიგნალები აღწერს წარსულს და არა მომავალს.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$count პოზიციიდან $above თავის 200-დღიან საშუალოზე მაღლაა';
  }

  @override
  String get watchSignalsTitle => 'სიგნალები';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · ზედმეტად გაყიდული';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · ზედმეტად ნაყიდი';
  }

  @override
  String get signalCrossedAbove => '200-დღიან საშუალოს ზემოთ გადაკვეთა';

  @override
  String get signalCrossedBelow => '200-დღიან საშუალოს ქვემოთ გადაკვეთა';

  @override
  String get signalAlertsTitle => 'ტექნიკური სიგნალების შეტყობინებები';

  @override
  String get signalAlertsSubtitle =>
      'დღეში ერთხელ, როცა შენ მიერ თვალყურის დევნებული აქცია ზედმეტად გაყიდული ან ზედმეტად ნაყიდი ხდება (RSI), ან მისი ფასი 200-დღიან საშუალოს კვეთს.';

  @override
  String get signalAlertsNotification => 'ტექნიკური სიგნალები';

  @override
  String get glossaryPageTitle => 'ტერმინების ლექსიკონი';

  @override
  String get glossaryPageSubtitle =>
      'აპში ნაჩვენები ყველა მაჩვენებლის მარტივი განმარტება, P/E-დან RSI-მდე';

  @override
  String get glossarySearchHint => 'ძიება ლექსიკონში';

  @override
  String get portfolioCash => 'ნაღდი ფული';

  @override
  String get portfolioCashTitle => 'ნაღდი ფულის ნაშთი';

  @override
  String get portfolioCashHint =>
      'არაინვესტირებული ფული თქვენს ბროკერთან, ვალუტების მიხედვით. ითვლება ჯამურ ღირებულებასა და განაწილებაში; შემოსავლიანობაში — არა.';

  @override
  String portfolioCashAmount(String currency) {
    return 'თანხა ($currency)';
  }

  @override
  String get portfolioCashEdit => 'ნაღდი ფულის ნაშთის მითითება';

  @override
  String get portfolioDividendsExpected => 'მოსალოდნელი შემდეგი';

  @override
  String get portfolioDividendsExpectedNote =>
      'შეფასებულია თქვენ მიერ ჩაწერილი გადახდების თარიღებისა და თანხების მიხედვით; კომპანიებმა შეიძლება შეცვალონ ან გამოტოვონ ისინი.';

  @override
  String portfolioDividendAround(String date) {
    return 'დაახლოებით $date';
  }
}
