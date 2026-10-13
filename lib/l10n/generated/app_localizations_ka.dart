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
}
