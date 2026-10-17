// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'ஒரு பங்கைப் புகைப்படம் எடுத்து, அதைப் பற்றி எல்லாவற்றையும் அறியுங்கள்.';

  @override
  String get homeHint =>
      'பங்குச் சான்றிதழ், புரோக்கரேஜ் ஆப் திரை, செய்தித்தாள் அல்லது நிறுவன லோகோ – ஒரு பங்கை அடையாளம் காட்டும் எதுவும்.';

  @override
  String get takePhoto => 'புகைப்படம் எடுக்க';

  @override
  String get chooseFromGallery => 'கேலரியிலிருந்து தேர்வு செய்க';

  @override
  String get chooseImage => 'படத்தைத் தேர்வு செய்க';

  @override
  String get enterTickerManually => 'டிக்கரை கைமுறையாக உள்ளிடுக';

  @override
  String get tickerInputLabel => 'டிக்கர் குறியீடு';

  @override
  String get tickerInputHint => 'எ.கா. AAPL';

  @override
  String get lookUp => 'தேடு';

  @override
  String demoModeBanner(String symbols) {
    return 'டெமோ முறை – சந்தைத் தரவு விசை அமைக்கப்படவில்லை. மாதிரித் தரவு இவற்றுக்கு உள்ளது: $symbols.';
  }

  @override
  String get recognizing => 'படம் பகுப்பாய்வு செய்யப்படுகிறது…';

  @override
  String get loadingData => 'தரவு ஏற்றப்படுகிறது…';

  @override
  String get noCandidatesTitle => 'பங்கு எதுவும் அடையாளம் காணப்படவில்லை';

  @override
  String get noCandidatesBody =>
      'இந்தப் படத்தில் ஒரு பங்கை அடையாளம் காண முடியவில்லை. தெளிவான புகைப்படத்தை முயற்சிக்கவும், அல்லது டிக்கரை கைமுறையாக உள்ளிடவும்.';

  @override
  String get whatWeSaw => 'நாங்கள் பார்த்தது';

  @override
  String get chooseCandidateTitle => 'நீங்கள் குறிப்பிட்டது எந்தப் பங்கு?';

  @override
  String confidencePercent(int percent) {
    return '$percent% நம்பகத்தன்மை';
  }

  @override
  String get settings => 'அமைப்புகள்';

  @override
  String get language => 'மொழி';

  @override
  String get systemLanguage => 'கணினி இயல்புநிலை';

  @override
  String get about => 'பற்றி';

  @override
  String get disclaimer =>
      'இந்த ஆப் தகவலை மட்டுமே வழங்குகிறது; இது முதலீட்டு ஆலோசனை அல்ல. தரவு தாமதமாகவோ தவறாகவோ இருக்கலாம்.';

  @override
  String dataSource(String source) {
    return 'தரவு மூலம்: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'அடையாளம்: $source';
  }

  @override
  String get retry => 'மீண்டும் முயற்சி';

  @override
  String get cancel => 'ரத்து';

  @override
  String get ok => 'சரி';

  @override
  String get close => 'மூடு';

  @override
  String get errorGeneric => 'ஏதோ தவறு நேர்ந்தது.';

  @override
  String get errorSectionUnavailable => 'இந்தப் பகுதியை ஏற்ற முடியவில்லை.';

  @override
  String get notAvailable => 'கிடைக்கவில்லை';

  @override
  String get sectionIdentity => 'அடையாளம்';

  @override
  String get sectionPrice => 'விலை';

  @override
  String get sectionValuation => 'மதிப்பீடு';

  @override
  String get sectionFinancials => 'நிதித் தரவு';

  @override
  String get sectionDividend => 'ஈவுத்தொகை';

  @override
  String get sectionProfile => 'நிறுவன விவரம்';

  @override
  String get sectionAnalysts => 'ஆய்வாளர் மதிப்பீடுகள்';

  @override
  String get sectionNews => 'செய்திகள்';

  @override
  String get sectionRecognition => 'அடையாள விவரங்கள்';

  @override
  String get labelSymbol => 'டிக்கர்';

  @override
  String get labelExchange => 'பங்குச் சந்தை';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'நாணயம்';

  @override
  String get labelCountry => 'நாடு';

  @override
  String get labelIndustry => 'தொழில்';

  @override
  String get labelSector => 'துறை';

  @override
  String get labelWebsite => 'இணையதளம்';

  @override
  String get labelIpoDate => 'IPO தேதி';

  @override
  String get labelMarketCap => 'சந்தை மூலதனம்';

  @override
  String get labelSharesOutstanding => 'நிலுவைப் பங்குகள்';

  @override
  String get labelEmployees => 'பணியாளர்கள்';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'தலைமையகம்';

  @override
  String get labelDescription => 'விளக்கம்';

  @override
  String get labelLastPrice => 'கடைசி விலை';

  @override
  String get labelChange => 'மாற்றம்';

  @override
  String get labelOpen => 'திறப்பு';

  @override
  String get labelDayHigh => 'நாள் உச்சம்';

  @override
  String get labelDayLow => 'நாள் குறைவு';

  @override
  String get labelPreviousClose => 'முந்தைய முடிவு';

  @override
  String get labelWeek52High => '52-வார உச்சம்';

  @override
  String get labelWeek52Low => '52-வார குறைவு';

  @override
  String get labelAverageVolume10d => 'சராசரி அளவு (10 நாட்கள்)';

  @override
  String updatedAt(String time) {
    return 'புதுப்பிப்பு $time';
  }

  @override
  String get labelPeTrailing => 'P/E (ட்ரெய்லிங்)';

  @override
  String get labelPeForward => 'P/E (ஃபார்வர்டு)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / இலவச பணப்புழக்கம்';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'பீட்டா';

  @override
  String get labelRevenueTtm => 'வருவாய் (TTM)';

  @override
  String get labelNetIncomeTtm => 'நிகர லாபம் (TTM)';

  @override
  String get labelGrossMargin => 'மொத்த லாப விகிதம்';

  @override
  String get labelOperatingMargin => 'இயக்க லாப விகிதம்';

  @override
  String get labelNetMargin => 'நிகர லாப விகிதம்';

  @override
  String get labelRoe => 'பங்கு மூலதன வருவாய்';

  @override
  String get labelRoa => 'சொத்து வருவாய்';

  @override
  String get labelDebtToEquity => 'கடன் / பங்கு மூலதனம்';

  @override
  String get labelCurrentRatio => 'நடப்பு விகிதம்';

  @override
  String get labelRevenueGrowth => 'வருவாய் வளர்ச்சி (YoY)';

  @override
  String get labelEpsGrowth => 'EPS வளர்ச்சி (YoY)';

  @override
  String get labelDividendYield => 'ஈவுத்தொகை விகிதம்';

  @override
  String get labelDividendPerShare => 'ஒரு பங்கிற்கான ஈவுத்தொகை';

  @override
  String get labelPayoutRatio => 'பகிர்வு விகிதம்';

  @override
  String get labelConsensus => 'ஒருமித்த கருத்து';

  @override
  String get ratingStrongBuy => 'வலுவான வாங்கு';

  @override
  String get ratingBuy => 'வாங்கு';

  @override
  String get ratingHold => 'வைத்திரு';

  @override
  String get ratingSell => 'விற்க';

  @override
  String get ratingStrongSell => 'வலுவான விற்க';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ஆய்வாளர்கள்',
      one: '1 ஆய்வாளர்',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'காலம்: $period';
  }

  @override
  String get noNews => 'சமீபத்திய செய்திகள் இல்லை.';

  @override
  String get openArticle => 'கட்டுரையைத் திற';

  @override
  String get openLinkFailed => 'இணைப்பைத் திறக்க முடியவில்லை.';

  @override
  String get recognitionSummary => 'சுருக்கம்';

  @override
  String get recognitionEvidence => 'நாங்கள் ஏன் அப்படி நினைக்கிறோம்';

  @override
  String get recognitionRawText => 'படத்திலிருந்து படிக்கப்பட்ட உரை';

  @override
  String get errMissingAnthropicKey =>
      'பட அடையாளம் அமைக்கப்படவில்லை (ANTHROPIC_API_KEY இல்லை). டிக்கரை கைமுறையாக உள்ளிடுக.';

  @override
  String get errRecognitionUnreachable =>
      'அடையாள சேவையை அணுக முடியவில்லை. உங்கள் இணைய இணைப்பைச் சரிபார்க்கவும்.';

  @override
  String errRecognitionHttp(String status) {
    return 'அடையாள சேவை பிழையைத் திருப்பியது (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'அடையாள சேவை இந்தப் படத்தைச் செயலாக்க முடியவில்லை.';

  @override
  String get errRecognitionTruncated =>
      'அடையாளப் பதில் முழுமையாகக் கிடைக்கவில்லை. மீண்டும் முயற்சிக்கவும்.';

  @override
  String get errRecognitionBadResponse =>
      'அடையாள சேவையிலிருந்து எதிர்பாராத பதில்.';

  @override
  String get errRecognitionEmpty => 'அடையாள சேவை வெற்றுப் பதிலைத் திருப்பியது.';

  @override
  String get errMissingFinnhubKey =>
      'சந்தைத் தரவு அமைக்கப்படவில்லை (FINNHUB_API_KEY இல்லை).';

  @override
  String get errMarketUnreachable =>
      'சந்தைத் தரவு சேவையை அணுக முடியவில்லை. உங்கள் இணைய இணைப்பைச் சரிபார்க்கவும்.';

  @override
  String get errMarketRateLimited =>
      'சந்தைத் தரவு சேவைக்கு அதிகக் கோரிக்கைகள் அனுப்பப்பட்டன. ஒரு நிமிடம் காத்திருக்கவும்.';

  @override
  String errMarketHttp(String status) {
    return 'சந்தைத் தரவு சேவை பிழையைத் திருப்பியது (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'சந்தைத் தரவு சேவையிலிருந்து எதிர்பாராத பதில்.';

  @override
  String errNoQuote(String symbol) {
    return '$symbol க்கான விலைத் தரவு கிடைக்கவில்லை.';
  }

  @override
  String errNoProfile(String symbol) {
    return '$symbol க்கான நிறுவன விவரம் கிடைக்கவில்லை.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'டெமோ முறை $symbols மட்டுமே ஆதரிக்கிறது. நேரடித் தரவுக்கு FINNHUB_API_KEY சேர்க்கவும்.';
  }

  @override
  String errUnknown(String detail) {
    return 'ஏதோ தவறு நேர்ந்தது: $detail';
  }

  @override
  String get newSearch => 'புதிய தேடல்';

  @override
  String get recentSearches => 'சமீபத்தியவை';

  @override
  String get noRecentSearches => 'சமீபத்திய தேடல்கள் இன்னும் இல்லை.';

  @override
  String get clearRecent => 'சமீபத்தியவற்றை அழி';

  @override
  String get greeting => 'இன்று எந்தப் பங்கைப் பார்க்கலாம்?';

  @override
  String get searchHint => 'டிக்கர் அல்லது நிறுவனப் பெயர்';

  @override
  String get attachImage => 'படத்தை இணைக்க';

  @override
  String get searchResultsTitle => 'தேடல் முடிவுகள்';

  @override
  String errNoResults(String query) {
    return '“$query” க்கான பங்குகள் எதுவும் கிடைக்கவில்லை.';
  }

  @override
  String get quickBarHint => 'டிக்கர் அல்லது நிறுவனப் பெயரை உள்ளிடுக…';

  @override
  String get openFullWindow => 'சாளரத்தைத் திற';

  @override
  String hotkeyHint(String shortcut) {
    return 'எங்கிருந்தும் WhatStock ஐ அழைக்க $shortcut ஐ அழுத்துங்கள்.';
  }

  @override
  String get trayOpen => 'WhatStock ஐ திற';

  @override
  String get trayQuickSearch => 'விரைவு தேடல்';

  @override
  String get trayQuit => 'வெளியேறு';

  @override
  String get appearance => 'தோற்றம்';

  @override
  String get themeSystem => 'கணினி';

  @override
  String get themeDark => 'இருண்ட';

  @override
  String get themeLight => 'வெளிர்';

  @override
  String get back => 'பின்';

  @override
  String get aiSectionTitle => 'AI பகுப்பாய்வு';

  @override
  String get aiIntro =>
      'AI எழுதிய விரிவான கண்ணோட்டம்: சமீபத்திய செய்திகளின் சுருக்கம், வணிகம், பலங்கள், அபாயங்கள் மற்றும் மறைந்த காரணிகள், மதிப்பீடு, உளவியல், சமூகவியல், தொழில்நுட்ப மற்றும் பேரியல் கோணங்களில் இருந்து சூழ்நிலைகளுடன் கூடிய விலை முன்னோக்கு மற்றும் கவனிக்க வேண்டியவை.';

  @override
  String get aiGenerate => 'பகுப்பாய்வை உருவாக்கு';

  @override
  String get aiRegenerate => 'மீண்டும் உருவாக்கு';

  @override
  String get aiGenerating =>
      'பகுப்பாய்வு தயாராகிறது… இதற்கு ஓரிரு நிமிடங்கள் ஆகலாம்.';

  @override
  String get aiSources => 'ஆதாரங்கள்';

  @override
  String aiGeneratedAt(String time) {
    return 'உருவாக்கப்பட்டது $time';
  }

  @override
  String get aiDisclaimer =>
      'பொதுத் தரவு மற்றும் சமீபத்திய செய்திகளின் அடிப்படையில் AI உருவாக்கிய பகுப்பாய்வு. இதில் பிழைகள் இருக்கலாம் அல்லது காலாவதியானதாக இருக்கலாம்; இது முதலீட்டு ஆலோசனை அல்ல.';

  @override
  String get errAiNotConfigured =>
      'AI பகுப்பாய்வு அமைக்கப்படவில்லை (ANTHROPIC_API_KEY இல்லை).';

  @override
  String get errAiUnreachable =>
      'AI சேவையை அணுக முடியவில்லை. உங்கள் இணைய இணைப்பைச் சரிபார்க்கவும்.';

  @override
  String errAiHttp(String status) {
    return 'AI சேவை பிழையைத் திருப்பியது (HTTP $status).';
  }

  @override
  String get errAiRefused =>
      'AI சேவை இந்தப் பங்கைப் பகுப்பாய்வு செய்ய மறுத்தது.';

  @override
  String get errAiBadResponse => 'AI சேவையிலிருந்து எதிர்பாராத பதில்.';

  @override
  String get sectionChart => 'விலை விளக்கப்படம்';

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
      'தற்போதைய தரவு மூலத்திலிருந்து விலை வரலாறு கிடைக்கவில்லை.';

  @override
  String get sectionStatements => 'நிதி அறிக்கைகள் (ஆண்டு)';

  @override
  String get labelFiscalYear => 'நிதியாண்டு';

  @override
  String get labelRevenue => 'வருவாய்';

  @override
  String get labelNetIncome => 'நிகர லாபம்';

  @override
  String get labelTotalAssets => 'மொத்த சொத்துகள்';

  @override
  String get labelTotalLiabilities => 'மொத்த கடன்பொறுப்புகள்';

  @override
  String get labelEquity => 'பங்குதாரர்களின் பங்கு மூலதனம்';

  @override
  String get labelOperatingCashFlow => 'இயக்க பணப்புழக்கம்';

  @override
  String get statementsUnavailable =>
      'இந்தப் பங்கிற்கான அறிவிக்கப்பட்ட நிதி அறிக்கைகள் கிடைக்கவில்லை.';

  @override
  String get launchAtLogin => 'உள்நுழையும்போது தொடங்கு';

  @override
  String get hotkeyLabel => 'குளோபல் ஷார்ட்கட்';

  @override
  String get hotkeyRecordHint =>
      'இங்கே கிளிக் செய்து, பின்னர் புதிய விசைச் சேர்க்கையை அழுத்துங்கள்';

  @override
  String get hotkeyReset => 'இயல்புநிலைக்கு மீட்டமை';

  @override
  String get pasteImage => 'கிளிப்போர்டிலிருந்து படத்தை ஒட்டு';

  @override
  String get errClipboardNoImage => 'கிளிப்போர்டில் படம் எதுவும் இல்லை.';

  @override
  String get favorites => 'பிடித்தவை';

  @override
  String get addToFavorites => 'பிடித்தவற்றில் சேர்';

  @override
  String get removeFromFavorites => 'பிடித்தவற்றிலிருந்து நீக்கு';

  @override
  String get noFavorites =>
      'பிடித்தவை இன்னும் இல்லை. சேர்க்க ஒரு பங்கின் நட்சத்திரத்தைத் தட்டுங்கள்.';

  @override
  String get displayCurrency => 'காட்சி நாணயம்';

  @override
  String get displayCurrencyNone => 'பங்கின் சொந்த நாணயம் மட்டும்';

  @override
  String labelConverted(String currency) {
    return '≈ $currency இல்';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'விகிதம்: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'புதுப்பிப்புகள்';

  @override
  String currentVersion(String version) {
    return 'பதிப்பு $version';
  }

  @override
  String get autoUpdate => 'புதுப்பிப்புகளைத் தானாக நிறுவு';

  @override
  String get checkForUpdates => 'புதுப்பிப்புகளைச் சரிபார்';

  @override
  String get updateChecking => 'புதுப்பிப்புகளைச் சரிபார்க்கிறது…';

  @override
  String get updateUpToDate => 'நீங்கள் சமீபத்திய பதிப்பில் உள்ளீர்கள்.';

  @override
  String updateAvailable(String version) {
    return 'பதிப்பு $version கிடைக்கிறது.';
  }

  @override
  String get updateDownloading =>
      'புதுப்பிப்பு பின்னணியில் பதிவிறக்கப்படுகிறது…';

  @override
  String get updateDownloaded =>
      'புதுப்பிப்பு தயார். நிறுவ மீண்டும் தொடங்குங்கள்.';

  @override
  String get updateNow => 'புதுப்பி';

  @override
  String get restartNow => 'மீண்டும் தொடங்கு';

  @override
  String get updatesViaStore =>
      'புதுப்பிப்புகள் ஆப் ஸ்டோர் வழியாகத் தானாகவே வருகின்றன.';

  @override
  String get updateCheckFailed => 'புதுப்பிப்புகளைச் சரிபார்க்க முடியவில்லை.';

  @override
  String get subscription => 'சந்தா';

  @override
  String get planTrial => 'சோதனை';

  @override
  String get planNormal => 'சாதாரண';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'செயலில் உள்ள திட்டம் இல்லை';

  @override
  String planAnalysesPerMonth(int count) {
    return 'மாதத்திற்கு $count பகுப்பாய்வுகள்';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$count பகுப்பாய்வுகளுடன் $days நாள் இலவச சோதனை';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'சோதனையில் $days நாட்கள் மீதம்',
      one: 'சோதனையில் 1 நாள் மீதம்',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'உங்கள் இலவச சோதனை முடிந்தது. பகுப்பாய்வைத் தொடர ஒரு திட்டத்தைத் தேர்வுசெய்யவும்.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'இந்தக் காலத்தில் $total இல் $remaining பகுப்பாய்வுகள் மீதம்';
  }

  @override
  String extraCredits(int count) {
    return '$count கூடுதல் பகுப்பாய்வுகள்';
  }

  @override
  String renewsOn(String date) {
    return '$date அன்று புதுப்பிக்கப்படும்';
  }

  @override
  String get choosePlan => 'திட்டத்தைத் தேர்வுசெய்க';

  @override
  String get currentPlan => 'தற்போதைய திட்டம்';

  @override
  String get subscribe => 'சந்தா பெறுக';

  @override
  String get perMonth => '/ மாதம்';

  @override
  String get extraPacksTitle =>
      'மேலும் தேவையா? கூடுதல் பகுப்பாய்வுகளை வாங்குங்கள்';

  @override
  String get extraPacksHint =>
      'கூடுதல் பகுப்பாய்வுகள் காலாவதியாகாது; உங்கள் மாதாந்திர ஒதுக்கீடு முடிந்த பிறகு பயன்படுத்தப்படும்.';

  @override
  String get buy => 'வாங்கு';

  @override
  String get restorePurchases => 'வாங்கியவற்றை மீட்டெடு';

  @override
  String get manageSubscription => 'சந்தாவை நிர்வகி';

  @override
  String get purchaseSuccess => 'நன்றி! உங்கள் கொள்முதல் செயலில் உள்ளது.';

  @override
  String get purchasePending => 'கொள்முதல் நிலுவையில்…';

  @override
  String get purchaseFailed => 'கொள்முதலை முடிக்க முடியவில்லை.';

  @override
  String get purchaseCanceled => 'கொள்முதல் ரத்து செய்யப்பட்டது.';

  @override
  String get billingUnavailable =>
      'இந்தத் தளத்தில் கொள்முதல் இன்னும் கிடைக்கவில்லை. உங்கள் போன் அல்லது Mac இல் சந்தா பெறுங்கள்; உங்கள் திட்டம் எல்லா சாதனங்களிலும் செயல்படும்.';

  @override
  String get errQuotaExceeded =>
      'இந்தக் காலத்திற்கு உங்களுக்குப் பகுப்பாய்வுகள் மீதமில்லை. உங்கள் திட்டத்தை மேம்படுத்தவும் அல்லது கூடுதல் பகுப்பாய்வுகளை வாங்கவும்.';

  @override
  String get errTrialExpired =>
      'உங்கள் இலவச சோதனை முடிந்தது. தொடர ஒரு திட்டத்தைத் தேர்வுசெய்யவும்.';

  @override
  String get errNoPlan => 'AI பகுப்பாய்விற்கு செயலில் உள்ள திட்டம் தேவை.';

  @override
  String get viewPlans => 'திட்டங்களைக் காண்க';

  @override
  String get usageTitle => 'பயன்பாடு';

  @override
  String get demoPurchaseNote =>
      'டெமோ பில்லிங்: இந்தத் தளத்தில் கொள்முதல்கள் உருவகப்படுத்தப்படுகின்றன.';

  @override
  String get mostPopular => 'மிகவும் பிரபலம்';

  @override
  String get bestValue => 'சிறந்த மதிப்பு';

  @override
  String get planFeaturesCommon =>
      'புகைப்பட அடையாளம், நேரடித் தரவு, விளக்கப்படங்கள், பிடித்தவை மற்றும் 120 மொழிகள் அனைத்தும் ஒவ்வொரு திட்டத்திலும் உள்ளன. ஒதுக்கீடு AI பகுப்பாய்வுகளுக்கு மட்டுமே.';

  @override
  String get searchLanguages => 'மொழிகளைத் தேடுக…';

  @override
  String get noLanguageMatch => 'பொருந்தும் மொழி இல்லை.';

  @override
  String get aiSettings => 'AI பகுப்பாய்வு';

  @override
  String get aiLength => 'நீளம்';

  @override
  String get aiDepthBrief => 'சுருக்கம்';

  @override
  String get aiDepthStandard => 'நிலையான';

  @override
  String get aiDepthDeep => 'விரிவான';

  @override
  String get aiDepthBriefDesc => 'முக்கியமானவை, விரைவாக.';

  @override
  String get aiDepthStandardDesc => 'அனைத்துப் பிரிவுகளுடன் முழு அறிக்கை.';

  @override
  String get aiDepthDeepDesc =>
      'கூடுதல் இணையத் தேடல்கள், ஒத்த நிறுவனங்களுடன் ஒப்பீடு மற்றும் ஆழமான விவரங்கள்.';

  @override
  String aiDepthWords(String min, String max) {
    return 'சுமார் $min–$max சொற்கள்';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count பகுப்பாய்வுகளைப் பயன்படுத்தும்',
      one: '1 பகுப்பாய்வைப் பயன்படுத்தும்',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'வாசகர் நிலை';

  @override
  String get aiReaderBeginner => 'தொடக்கநிலை';

  @override
  String get aiReaderExperienced => 'அனுபவமுள்ளவர்';

  @override
  String get aiReaderBeginnerDesc =>
      'எளிய மொழி; ஒவ்வொரு தொழில்நுட்பச் சொல்லும் விளக்கப்படும்.';

  @override
  String get aiReaderExperiencedDesc =>
      'நிலையான நிதிச் சொற்களுடன் செறிவான உரை.';

  @override
  String get aiCounterArgument => 'மிக வலுவான எதிர்வாதம்';

  @override
  String get aiCounterArgumentDesc =>
      'சுருக்கம் எப்போதும் தனது சொந்த முடிவுக்கு எதிரான மிக வலுவான வாதத்துடன் முடிவடையும்.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'உங்கள் திட்டத்தில் ஒரு பகுப்பாய்விற்கு அதிகபட்சம் $count இணையத் தேடல்கள்',
      one: 'உங்கள் திட்டத்தில் ஒரு பகுப்பாய்விற்கு அதிகபட்சம் 1 இணையத் தேடல்',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'திட்டவாரியாக நிலையான நீளம்: சாதாரண $normal, Pro $pro, Max $max, Ultra $ultra. சுருக்கத்தில் 2 குறைவு, விரிவானதில் 2 அதிகம்.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'அதிகபட்சம் $count இணையத் தேடல்கள்',
      one: 'அதிகபட்சம் 1 இணையத் தேடல்',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ஒரு பகுப்பாய்விற்கு $count இணையத் தேடல்கள்',
      one: 'ஒரு பகுப்பாய்விற்கு 1 இணையத் தேடல்',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'இந்த நீளத்திற்கு $needed பகுப்பாய்வுகள் தேவை, ஆனால் $left மட்டுமே மீதமுள்ளன. அமைப்புகளில் குறைந்த நீளத்தைத் தேர்வுசெய்யவும் அல்லது கூடுதல் பகுப்பாய்வுகளைப் பெறவும்.';
  }

  @override
  String get outlookMarketMood => 'சந்தை மனநிலை';

  @override
  String get moodVeryPessimistic => 'மிகவும் அவநம்பிக்கை';

  @override
  String get moodPessimistic => 'அவநம்பிக்கை';

  @override
  String get moodNeutral => 'நடுநிலை';

  @override
  String get moodOptimistic => 'நம்பிக்கை';

  @override
  String get moodVeryOptimistic => 'மிகவும் நம்பிக்கை';

  @override
  String get scenarioBull => 'ஏற்றச் சூழ்நிலை';

  @override
  String get scenarioBase => 'அடிப்படைச் சூழ்நிலை';

  @override
  String get scenarioBear => 'இறக்கச் சூழ்நிலை';

  @override
  String outlookCurrentPrice(String price) {
    return 'தற்போதைய விலை: $price';
  }

  @override
  String get outlookKeyLevels => 'முக்கிய நிலைகள்';

  @override
  String get keyLevelSupport => 'ஆதரவு';

  @override
  String get keyLevelResistance => 'எதிர்ப்பு';

  @override
  String get keyLevelAnchor => 'நங்கூர நிலை';

  @override
  String get upcomingEvents => 'வரவிருக்கும் நிகழ்வுகள்';

  @override
  String get outlookChartNote =>
      'குறிப்பான வரம்புகள்; நிகழ்தகவுகள் தோராயமான மதிப்பீடுகள், கணிப்புகள் அல்ல.';

  @override
  String get accountTitle => 'கணக்கு';

  @override
  String get signIn => 'உள்நுழை';

  @override
  String get signOut => 'வெளியேறு';

  @override
  String get notSignedIn => 'உள்நுழையவில்லை';

  @override
  String get accountBenefit =>
      'உங்கள் சந்தா உங்கள் எல்லாச் சாதனங்களிலும் செயல்பட உள்நுழையவும்.';

  @override
  String get accountSyncedNote =>
      'உங்கள் சந்தாவும் மீதமுள்ள பகுப்பாய்வுகளும் ஒவ்வொரு சாதனத்திலும் ஒரே மாதிரி இருக்கும்.';

  @override
  String get signInTitle => 'WhatStock-இல் உள்நுழையவும்';

  @override
  String get emailLabel => 'மின்னஞ்சல் முகவரி';

  @override
  String get continueWithEmail => 'மின்னஞ்சல் மூலம் தொடர்க';

  @override
  String codeSentTo(String email) {
    return '$email க்கு 6 இலக்கக் குறியீட்டை அனுப்பியுள்ளோம். இது 10 நிமிடங்களுக்குச் செல்லுபடியாகும்.';
  }

  @override
  String get codeLabel => 'உள்நுழைவுக் குறியீடு';

  @override
  String get resendCode => 'புதிய குறியீட்டை அனுப்பு';

  @override
  String get useDifferentEmail => 'வேறு மின்னஞ்சலைப் பயன்படுத்து';

  @override
  String get errInvalidCode => 'குறியீடு தவறானது அல்லது காலாவதியாகிவிட்டது.';

  @override
  String get errInvalidEmail => 'சரியான மின்னஞ்சல் முகவரியை உள்ளிடவும்.';

  @override
  String get errSignInFailed =>
      'உள்நுழைவு தோல்வியடைந்தது. உங்கள் இணைய இணைப்பைச் சரிபார்த்து மீண்டும் முயற்சிக்கவும்.';

  @override
  String get checkoutWaiting =>
      'உங்கள் உலாவியில் கட்டணத்தை முடிக்கவும். முடிந்ததும் ஆப் தானாகவே புதுப்பிக்கப்படும்.';

  @override
  String get paymentViaStripe =>
      'Stripe வழியாக உங்கள் உலாவியில் பாதுகாப்பான கட்டணம். எப்போது வேண்டுமானாலும் ரத்து செய்யலாம்.';

  @override
  String get paymentViaStore =>
      'உங்கள் App Store அல்லது Google Play கணக்கின் மூலம் கட்டணம் வசூலிக்கப்படும். ஸ்டோர் அமைப்புகளில் எப்போது வேண்டுமானாலும் ரத்து செய்யலாம்.';

  @override
  String get keySpace => 'ஸ்பேஸ்';

  @override
  String get doubleOptionTitle => 'Option ஐ இருமுறை அழுத்துங்கள்';

  @override
  String get doubleOptionSubtitle =>
      'Option விசையை வேகமாக இருமுறை அழுத்தினாலும் WhatStock ஐ அழைக்கலாம்.';

  @override
  String get doubleOptionPermission =>
      'பிற ஆப்களிலும் இது வேலை செய்ய, சிஸ்டம் அமைப்புகள் → தனியுரிமை & பாதுகாப்பு → உள்ளீட்டுக் கண்காணிப்பு என்பதில் WhatStock ஐ அனுமதித்து, பின்னர் ஆப்பை மீண்டும் திறங்கள்.';

  @override
  String get openSystemSettings => 'சிஸ்டம் அமைப்புகளைத் திற';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'எங்கிருந்தும் WhatStock ஐ அழைக்க $shortcut ஐ அழுத்துங்கள் அல்லது Option ஐ இருமுறை அழுத்துங்கள்.';
  }

  @override
  String get scenarioMostLikely => 'மிக அதிக வாய்ப்பு';

  @override
  String get longTermToday => 'இன்று';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years ஆண்டுகள்',
      one: '1 ஆண்டு',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return 'ஆண்டுக்கு $range';
  }

  @override
  String longTermLikely(String price) {
    return 'மிக வாய்ப்புள்ள விலை $price';
  }

  @override
  String get confidenceLow => 'குறைந்த நம்பகத்தன்மை';

  @override
  String get confidenceMedium => 'நடுத்தர நம்பகத்தன்மை';

  @override
  String get confidenceHigh => 'உயர் நம்பகத்தன்மை';

  @override
  String get longTermNote =>
      'நீண்டகால வரம்புகள் குறிப்பிடப்பட்ட அனுமானங்களை அடிப்படையாகக் கொண்டவை; காலப்போக்கில் அகலமாகும். விலைகளில் ஈவுத்தொகை சேர்க்கப்படவில்லை. தோராயமான மதிப்பீடுகள், கணிப்புகள் அல்ல.';

  @override
  String get portfolio => 'போர்ட்ஃபோலியோ';

  @override
  String get portfolioEmpty =>
      'இன்னும் எதுவும் இல்லை. ஒரு பங்கைத் திறந்து, உங்களிடம் உள்ளவற்றைக் கண்காணிக்க “போர்ட்ஃபோலியோவில் சேர்” என்பதைத் தட்டுங்கள்.';

  @override
  String get portfolioLocalNote =>
      'இந்தச் சாதனத்தில் மட்டுமே சேமிக்கப்படும். மொத்தங்கள் ECB குறிப்பு விகிதங்களில் மாற்றப்படும்; விலைகள் தாமதமாக இருக்கலாம்.';

  @override
  String get addToPortfolio => 'போர்ட்ஃபோலியோவில் சேர்';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol சேர்';
  }

  @override
  String get portfolioQuantity => 'பங்குகளின் எண்ணிக்கை';

  @override
  String portfolioBuyPrice(String currency) {
    return 'ஒரு பங்கின் விலை ($currency)';
  }

  @override
  String get portfolioBuyDate => 'வாங்கிய தேதி';

  @override
  String get portfolioAdd => 'சேர்';

  @override
  String get portfolioInvalidNumber =>
      'பூஜ்ஜியத்தை விடப் பெரிய எண்ணை உள்ளிடுங்கள்.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol போர்ட்ஃபோலியோவில் சேர்க்கப்பட்டது.';
  }

  @override
  String get portfolioTotalValue => 'மொத்த மதிப்பு';

  @override
  String get portfolioToday => 'இன்று';

  @override
  String get portfolioGainLoss => 'லாபம்/நஷ்டம்';

  @override
  String get portfolioInvested => 'முதலீடு';

  @override
  String get portfolioAllocation => 'பங்கீடு';

  @override
  String get portfolioPositions => 'நிலைகள்';

  @override
  String portfolioAvgCost(String price) {
    return 'சராசரி விலை $price';
  }

  @override
  String get portfolioYourPosition => 'உங்கள் நிலை';

  @override
  String get portfolioPurchases => 'வாங்குதல்கள்';

  @override
  String get portfolioRemove => 'நீக்கு';

  @override
  String get portfolioExcluded =>
      'விலை அல்லது மாற்று விகிதம் இல்லாத நிலைகள் மொத்தத்தில் சேர்க்கப்படவில்லை.';

  @override
  String get priceAlerts => 'விலை எச்சரிக்கைகள்';

  @override
  String get setPriceAlert => 'விலை எச்சரிக்கை அமை';

  @override
  String alertDialogTitle(String symbol) {
    return 'விலை எச்சரிக்கை · $symbol';
  }

  @override
  String get alertKindAbove => 'இதற்கு மேல் உயர்ந்தால்';

  @override
  String get alertKindBelow => 'இதற்குக் கீழ் சரிந்தால்';

  @override
  String get alertKindMove => 'ஒரே நாளில் அதிகம் மாறினால்';

  @override
  String alertTargetPrice(String currency) {
    return 'விலை ($currency)';
  }

  @override
  String get alertMovePercent => 'தினசரி மாற்றம் (%)';

  @override
  String get alertAlreadyMet => 'விலை ஏற்கனவே இந்த நிலையைக் கடந்துவிட்டது.';

  @override
  String get alertSave => 'எச்சரிக்கை அமை';

  @override
  String alertCreated(String symbol) {
    return '$symbol-க்கு எச்சரிக்கை அமைக்கப்பட்டது.';
  }

  @override
  String get alertsEmpty =>
      'இன்னும் எச்சரிக்கைகள் இல்லை. ஒரு பங்கைத் திறந்து மணியைத் தட்டுங்கள்.';

  @override
  String get alertsNote =>
      'WhatStock இயங்கும் வரை ஒவ்வொரு 5 நிமிடத்திற்கும் எச்சரிக்கைகள் சரிபார்க்கப்படும். கணினியில் ஆப் மெனு பட்டி அல்லது சிஸ்டம் ட்ரேயில் தொடர்ந்து இயங்கும்; தொலைபேசியில் தற்போது ஆப் திறந்திருக்கும்போது மட்டுமே எச்சரிக்கும்.';

  @override
  String alertDescAbove(String price) {
    return '$price-க்கு மேல்';
  }

  @override
  String alertDescBelow(String price) {
    return '$price-க்குக் கீழ்';
  }

  @override
  String alertDescMove(String percent) {
    return 'தினசரி மாற்றம் ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return '$date அன்று $price விலையில் செயல்பட்டது';
  }

  @override
  String get alertRearm => 'மீண்டும் இயக்கு';

  @override
  String get alertDelete => 'நீக்கு';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol $price-க்கு மேல் உயர்ந்தது';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol $price-க்குக் கீழ் சரிந்தது';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol இன்று $percent மாறியது';
  }

  @override
  String alertHitBody(String price) {
    return 'தற்போதைய விலை: $price';
  }

  @override
  String get alertOpen => 'திற';

  @override
  String get keepInTrayTitle => 'சாளரத்தை மூடிய பிறகும் இயங்கட்டும்';

  @override
  String get keepInTraySubtitle =>
      'WhatStock மெனு பட்டி அல்லது சிஸ்டம் ட்ரேயில் இருக்கும், எனவே குறுக்குவிசையும் விலை எச்சரிக்கைகளும் தொடர்ந்து செயல்படும்.';

  @override
  String get termsOfUse => 'பயன்பாட்டு விதிமுறைகள்';

  @override
  String get privacyPolicy => 'தனியுரிமைக் கொள்கை';

  @override
  String get subscriptionLegal =>
      'நீங்கள் ரத்து செய்யும் வரை சந்தா ஒவ்வொரு மாதமும் தானாகப் புதுப்பிக்கப்படும். சந்தா செலுத்துவதன் மூலம் பயன்பாட்டு விதிமுறைகளையும் தனியுரிமைக் கொள்கையையும் ஏற்கிறீர்கள்.';

  @override
  String get deleteAccount => 'கணக்கை நீக்கு';

  @override
  String get deleteAccountTitle => 'உங்கள் கணக்கை நீக்கவா?';

  @override
  String get deleteAccountBody =>
      'உங்கள் கணக்கும் எங்கள் சேவையகத்தில் சேமிக்கப்பட்ட அனைத்தும் (மின்னஞ்சல், வரம்பு, பயன்பாடு) நிரந்தரமாக நீக்கப்படும்; பயன்படுத்தாத பகுப்பாய்வுகள் இழக்கப்படும். உலாவியில் செலுத்திய சந்தா உடனே ரத்து செய்யப்படும்; App Store அல்லது Google Play சந்தாவை கடையின் அமைப்புகளில் ரத்து செய்ய வேண்டும்.';

  @override
  String get deleteLocalData =>
      'இந்தச் சாதனத்தின் தரவையும் நீக்கு (போர்ட்ஃபோலியோ, எச்சரிக்கைகள், பிடித்தவை, வரலாறு, சேமித்த பகுப்பாய்வுகள்)';

  @override
  String get deleteAccountConfirm => 'நிரந்தரமாக நீக்கு';

  @override
  String get accountDeleted => 'உங்கள் கணக்கு நீக்கப்பட்டது.';

  @override
  String get errDeleteAccount =>
      'கணக்கை நீக்க முடியவில்லை. இணைப்பைச் சரிபார்த்து மீண்டும் முயலவும்.';

  @override
  String get aiTrialBriefNote =>
      'சோதனைப் பகுப்பாய்வுகள் சுருக்கமானவை, வேகமான AI மாடலால் உருவாக்கப்படுகின்றன. திட்டத்துடன் எங்களின் மிகத் திறன்வாய்ந்த AI, கூடுதல் இணையத் தேடல்கள், நிலையான மற்றும் விரிவான நீளங்கள் உங்களுக்குக் கிடைக்கும்.';

  @override
  String get billingMonthly => 'மாதாந்திரம்';

  @override
  String get billingYearly => 'ஆண்டுதோறும்';

  @override
  String get yearlyDiscount => '2 மாதங்கள் இலவசம்';

  @override
  String get perYear => '/ ஆண்டு';

  @override
  String pricePerMonthApprox(String price) {
    return 'மாதத்திற்கு ≈ $price';
  }

  @override
  String get subscriptionLegalYearly =>
      'நீங்கள் ரத்து செய்யும் வரை ஆண்டுச் சந்தா ஒவ்வொரு ஆண்டும் தானாகப் புதுப்பிக்கப்படும். சந்தா செலுத்துவதன் மூலம் பயன்பாட்டு விதிமுறைகளையும் தனியுரிமைக் கொள்கையையும் ஏற்கிறீர்கள்.';

  @override
  String get myAnalyses => 'எனது பகுப்பாய்வுகள்';

  @override
  String get navAlerts => 'எச்சரிக்கைகள்';

  @override
  String get inviteTitle => 'மூடிய முன்னோட்டம்';

  @override
  String get inviteBody =>
      'WhatStock தற்போது அழைப்பின் மூலம் மட்டுமே கிடைக்கிறது. நீங்கள் பெற்ற அழைப்புக் குறியீட்டை உள்ளிடவும்.';

  @override
  String get inviteCodeLabel => 'அழைப்புக் குறியீடு';

  @override
  String get inviteContinue => 'தொடர்க';

  @override
  String get inviteInvalid => 'இந்த அழைப்புக் குறியீடு செல்லாது.';

  @override
  String get inviteExpired =>
      'இந்த அழைப்பு காலாவதியாகிவிட்டது. உங்களை அழைத்தவரிடம் புதிய குறியீட்டைக் கேளுங்கள்.';

  @override
  String get inviteDeviceLimit =>
      'இந்த அழைப்புக் குறியீடு ஏற்கனவே அனுமதிக்கப்பட்ட அதிகபட்ச எண்ணிக்கையிலான சாதனங்களில் பயன்பாட்டில் உள்ளது.';

  @override
  String get previewConfidential => 'ரகசிய முன்னோட்டம்';

  @override
  String get errPreviewDailyLimit =>
      'இந்த முன்னோட்டத்தின் இன்றைய பகுப்பாய்வு வரம்பு எட்டப்பட்டது. நாளை மீண்டும் முயலவும்.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count மணிநேரத்திற்கு முன்பு',
      one: '1 மணிநேரத்திற்கு முன்பு',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count நாட்களுக்கு முன்பு',
      one: '1 நாளுக்கு முன்பு',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'இந்தப் பகுப்பாய்வைப் புதுப்பிக்கவா?';

  @override
  String staleBody(String age) {
    return 'இது $age உருவாக்கப்பட்டது. அதன் பிறகு விலைகள், செய்திகள், முடிவுகள் மாறியிருக்கலாம்.';
  }

  @override
  String get staleKeep => 'முந்தையதைக் காட்டு';

  @override
  String get staleRefresh => 'புதியதை உருவாக்கு';

  @override
  String seeAll(int count) {
    return 'அனைத்தையும் காண் ($count)';
  }

  @override
  String get searchAnalyses => 'உங்கள் பகுப்பாய்வுகளில் தேடு';

  @override
  String get deleteAnalysis => 'நீக்கு';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol பகுப்பாய்வு நீக்கப்பட்டது';
  }

  @override
  String get keyLevelAlertHint =>
      'விலை ஒரு நிலையை அடையும்போது எச்சரிக்கை பெற அந்த நிலையைத் தட்டுங்கள்.';

  @override
  String get shareAnalysisTitle => 'பகுப்பாய்வைப் பகிர்';

  @override
  String get shareAsImage => 'படமாகப் பகிர்';

  @override
  String get shareAsText => 'உரையாகப் பகிர்';

  @override
  String get shareCardFooter => 'WhatStock மூலம் உருவாக்கப்பட்டது';

  @override
  String get shareCardDisclaimer => 'AI பகுப்பாய்வு · முதலீட்டு ஆலோசனை அல்ல';

  @override
  String get referralTitle => 'நண்பர்களை அழை';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count கூடுதல் பகுப்பாய்வுகள்',
      one: '1 கூடுதல் பகுப்பாய்வு',
    );
    return 'உங்கள் குறியீட்டைப் பகிர். உங்கள் நண்பருக்கு உடனே $_temp0 கிடைக்கும், அவரது முதல் பகுப்பாய்வுக்குப் பிறகு உங்களுக்கும் அதே அளவு கிடைக்கும்.';
  }

  @override
  String get referralYourCode => 'உங்கள் குறியீடு';

  @override
  String referralStats(int invited, int rewarded) {
    return 'அழைத்தவர்கள்: $invited · வெகுமதிகள்: $rewarded';
  }

  @override
  String get referralHaveCode => 'நண்பரின் குறியீடு உள்ளதா?';

  @override
  String get referralRedeem => 'பயன்படுத்து';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count கூடுதல் பகுப்பாய்வுகள் சேர்க்கப்பட்டன. வரவேற்கிறோம்!',
      one: '1 கூடுதல் பகுப்பாய்வு சேர்க்கப்பட்டது. வரவேற்கிறோம்!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'இந்தக் குறியீடு இல்லை. சரிபார்த்து மீண்டும் முயலவும்.';

  @override
  String get referralErrOwn =>
      'உங்கள் சொந்தக் குறியீட்டைப் பயன்படுத்த முடியாது.';

  @override
  String get referralErrAlready =>
      'நண்பரின் குறியீட்டை ஏற்கனவே பயன்படுத்திவிட்டீர்கள்.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count கூடுதல் பகுப்பாய்வுகள்',
      one: '1 கூடுதல் பகுப்பாய்வு',
    );
    return 'நான் WhatStock மூலம் பங்குகளைப் பகுப்பாய்வு செய்கிறேன்: ஒரு பங்கைப் படம் எடுத்தால், AI அதை விளக்கும். என் குறியீடு $code மூலம் உங்களுக்கு $_temp0 கிடைக்கும்.';
  }

  @override
  String get referralCopied => 'குறியீடு நகலெடுக்கப்பட்டது';

  @override
  String get onboardTitle1 => 'பங்கைப் புகைப்படம் எடுங்கள்';

  @override
  String get onboardBody1 =>
      'ஒரு புரோக்கர் ஆப் திரை, செய்தித்தாள் அல்லது நிறுவன லோகோ போதும்: WhatStock பங்கை அடையாளம் கண்டு அதன் விலை, வரைபடம் மற்றும் முக்கிய எண்களைக் காட்டும்.';

  @override
  String get onboardTitle2 => 'சில நிமிடங்களில் புரிந்துகொள்ளுங்கள்';

  @override
  String get onboardBody2 =>
      'பங்கை எது நகர்த்துகிறது, அதன் அபாயங்கள், மதிப்பீடு, விலை எங்கே செல்லக்கூடும் என்பதற்கான மூன்று சூழ்நிலைகள் ஆகியவற்றை AI பகுப்பாய்வு ஆதாரங்களுடன் உங்கள் மொழியிலேயே விளக்குகிறது.';

  @override
  String get onboardTitle3 => 'எல்லாவற்றையும் கண்காணியுங்கள்';

  @override
  String get onboardBody3 =>
      'பிடித்தவை, உங்கள் போர்ட்ஃபோலியோ, விலை எச்சரிக்கைகள் ஆகியவை உங்களுக்குத் தொடர்ந்து தகவல் தரும். உங்கள் பகுப்பாய்வுகள் உங்கள் சாதனத்திலேயே சேமிக்கப்படும், எப்போது வேண்டுமானாலும் மீண்டும் திறக்கலாம்.';

  @override
  String get onboardNext => 'அடுத்து';

  @override
  String get onboardStart => 'தொடங்குங்கள்';

  @override
  String get onboardSkip => 'தவிர்';

  @override
  String changesTitle(String date) {
    return 'முந்தைய பகுப்பாய்விலிருந்து ($date)';
  }

  @override
  String get changesPrice => 'விலை';

  @override
  String get changesNoMajor => 'எதிர்பார்ப்பில் குறிப்பிடத்தக்க மாற்றம் இல்லை.';

  @override
  String get changesPreviousSummary => 'முந்தைய சுருக்கம்';

  @override
  String get telemetryTitle => 'WhatStock-ஐ மேம்படுத்த உதவுங்கள்';

  @override
  String get telemetryBody =>
      'அநாமதேயப் பயன்பாட்டுப் புள்ளிவிவரங்களையும் செயலிழப்பு அறிக்கைகளையும் பகிருங்கள்: எந்த அம்சங்கள் பயன்படுத்தப்படுகின்றன, என்ன தவறு நடந்தது. உங்கள் பங்குகள், பகுப்பாய்வுகள், தனிப்பட்ட தரவு ஆகியவை ஒருபோதும் பகிரப்படாது. இதை எப்போது வேண்டுமானாலும் அமைப்புகளில் மாற்றலாம்.';

  @override
  String get telemetryAllow => 'அனுமதி';

  @override
  String get telemetryDecline => 'வேண்டாம், நன்றி';

  @override
  String get telemetrySetting =>
      'அநாமதேயப் புள்ளிவிவரங்களும் செயலிழப்பு அறிக்கைகளும்';

  @override
  String get telemetrySettingHint =>
      'அம்சங்கள் எவ்வளவு அடிக்கடி பயன்படுத்தப்படுகின்றன என்பதும் பிழை அறிக்கைகளும் — தனிப்பட்ட தரவோ உங்கள் தேடல்கள், பகுப்பாய்வுகளின் உள்ளடக்கமோ இல்லாமல்.';

  @override
  String get askButton => 'இந்தப் பகுப்பாய்வு பற்றிக் கேளுங்கள்';

  @override
  String askTitle(String symbol) {
    return '$symbol பற்றிய கேள்விகள்';
  }

  @override
  String get askIntro =>
      'பகுப்பாய்வு பற்றி எதையும் கேளுங்கள்: ஒரு அபாயம் என்ன அர்த்தம், கண்ணோட்டத்தை எது மாற்றக்கூடும், ஒரு எண் எப்படிக் கணக்கிடப்பட்டது. பதில்கள் இந்தப் பகுப்பாய்வின் அடிப்படையிலானவை; இவை முதலீட்டு ஆலோசனை அல்ல.';

  @override
  String get askHint => 'ஒரு கேள்வியைக் கேளுங்கள்…';

  @override
  String get askSend => 'அனுப்பு';

  @override
  String get askThinking => 'யோசிக்கிறது…';

  @override
  String get askSuggest1 => 'மிகப் பெரிய அபாயம் எது?';

  @override
  String get askSuggest2 => 'கண்ணோட்டத்தை எது மாற்றக்கூடும்?';

  @override
  String get askSuggest3 => 'எளிமையாக விளக்கவும்';

  @override
  String get askMaxReached =>
      'இந்தப் பகுப்பாய்வுக்கான கடைசி கேள்வி இதுதான். மேலும் கேட்க புதிய பகுப்பாய்வை உருவாக்கவும்.';

  @override
  String get errAskLimit =>
      'இன்றைய கேள்வி வரம்பை எட்டிவிட்டீர்கள். நாளை மீண்டும் முயலவும்.';

  @override
  String get eventTomorrow => 'நாளை';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days நாட்களில்',
      one: '1 நாளில்',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'காலாண்டு முடிவுகள்';

  @override
  String get eventBeforeOpen => 'சந்தை திறப்பதற்கு முன்';

  @override
  String get eventAfterClose => 'சந்தை மூடிய பின்';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS மதிப்பீடு: $value';
  }

  @override
  String get eventFromAnalysis => 'உங்கள் பகுப்பாய்விலிருந்து';

  @override
  String get eventsHint =>
      'அடுத்த 90 நாட்களில் உங்கள் பிடித்தவை மற்றும் போர்ட்ஃபோலியோ பங்குகளின் முடிவு தேதிகள், மற்றும் உங்கள் பகுப்பாய்வுகள் குறிப்பிட்ட தேதியிட்ட நிகழ்வுகள்.';

  @override
  String get eventsEmpty =>
      'அடுத்த 90 நாட்களில் தேதியிட்ட நிகழ்வுகள் இல்லை. அவற்றின் முடிவு தேதிகளை இங்கே காண பிடித்தவை அல்லது போர்ட்ஃபோலியோ பங்குகளைச் சேர்க்கவும்.';

  @override
  String get compareTitle => 'ஒப்பிடு';

  @override
  String get compareAdd => 'பங்கைச் சேர்';

  @override
  String get compareRemove => 'அகற்று';

  @override
  String get compareTickerHint => 'டிக்கர், எ.கா. MSFT';

  @override
  String get compareHint =>
      'முக்கிய எண்கள் அருகருகே; ஒவ்வொரு வரிசையிலும் சிறந்த மதிப்பு முன்னிலைப்படுத்தப்பட்டுள்ளது. தொகைகள் ஒவ்வொரு பங்கின் சொந்த நாணயத்தில் உள்ளன.';

  @override
  String get compareNoAnalysis => 'இன்னும் பகுப்பாய்வு இல்லை';

  @override
  String get portfolioDividends => 'ஆண்டு ஈவுத்தொகை';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent விகிதம்';
  }

  @override
  String get portfolioDividendNote =>
      'எதிர்பார்க்கப்படும் ஆண்டு ஈவுத்தொகை கடந்த 12 மாதங்களில் வழங்கப்பட்ட ஈவுத்தொகையை அடிப்படையாகக் கொண்டது; எதிர்காலக் கொடுப்பனவுகளுக்கு உத்தரவாதம் இல்லை.';

  @override
  String positionDividend(String amount) {
    return 'ஈவுத்தொகை: ஆண்டுக்கு $amount';
  }

  @override
  String get chartAvgCost => 'உங்கள் சராசரி';

  @override
  String get chartAlertLevel => 'எச்சரிக்கை';

  @override
  String get marketsToday => 'இன்றைய சந்தைகள்';

  @override
  String get notesTitle => 'எனது குறிப்புகள்';

  @override
  String get notesHint =>
      'இதை ஏன் வாங்கினீர்கள், எதைக் கவனிக்கிறீர்கள், எது நடந்தால் விற்பீர்கள்?';

  @override
  String get notesInfo =>
      'இந்தச் சாதனத்தில் மட்டுமே சேமிக்கப்படும். AI பகுப்பாய்வு உங்கள் குறிப்புகளைக் கருத்தில் கொள்கிறது.';

  @override
  String notesSaved(String date) {
    return 'சேமித்தது $date';
  }

  @override
  String get peersTitle => 'ஒத்த நிறுவனங்கள்';

  @override
  String get portfolioExport => 'CSV ஆக ஏற்றுமதி செய்';

  @override
  String get portfolioImport => 'CSV-இலிருந்து இறக்குமதி செய்';

  @override
  String get portfolioImportHint =>
      'ஒரு வரிக்கு ஒரு வாங்குதலை ஒட்டவும்: டிக்கர், அளவு, விலை, நாணயம், தேதி (YYYY-MM-DD). நெடுவரிசைகளைக் காற்புள்ளி, அரைப்புள்ளி அல்லது டேப் மூலம் பிரிக்கலாம்; தலைப்பு வரி விருப்பத்தேர்வு.';

  @override
  String get portfolioImportButton => 'இறக்குமதி செய்';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count வாங்குதல்கள் சேர்க்கப்பட்டன',
      one: '1 வாங்குதல் சேர்க்கப்பட்டது',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count வரிகள் தவிர்க்கப்பட்டன',
      one: '1 வரி தவிர்க்கப்பட்டது',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'போர்ட்ஃபோலியோ, பிடித்தவை, விலை எச்சரிக்கைகள், குறிப்புகள் ஆகியவை உங்கள் எல்லாச் சாதனங்களிலும் ஒத்திசைக்கப்படும்.';

  @override
  String syncLast(String time) {
    return 'கடைசியாக ஒத்திசைத்தது: $time';
  }

  @override
  String get syncNow => 'இப்போது ஒத்திசை';

  @override
  String get syncFailed => 'ஒத்திசைக்க முடியவில்லை. தானாகவே மீண்டும் முயலும்.';

  @override
  String get alertEmailTitle => 'எச்சரிக்கை தூண்டப்படும்போது மின்னஞ்சல்';

  @override
  String get alertEmailOn =>
      'சில நிமிடங்களுக்கு ஒருமுறை உங்கள் எச்சரிக்கைகளைச் சரிபார்த்து, ஆப் மூடியிருந்தாலும் உங்களுக்கு மின்னஞ்சல் அனுப்புவோம்.';

  @override
  String get alertEmailSignIn =>
      'ஆப் மூடியிருந்தாலும் எச்சரிக்கைகளை மின்னஞ்சலில் பெற, அமைப்புகளில் உங்கள் மின்னஞ்சல் மூலம் உள்நுழையவும்.';

  @override
  String get portfolioHistory => 'காலப்போக்கில் மதிப்பு';

  @override
  String get portfolioReviewTitle => 'AI போர்ட்ஃபோலியோ மதிப்பாய்வு';

  @override
  String get portfolioReviewIntro =>
      'AI உங்கள் முழு போர்ட்ஃபோலியோவையும் பார்க்கிறது: குவிப்பு, துறை மற்றும் நாணய வெளிப்பாடு, உங்கள் பங்குகளின் பொதுவான அபாயங்கள், ஈவுத்தொகை. 1 பகுப்பாய்வைப் பயன்படுத்தும்.';

  @override
  String get portfolioReviewButton => 'என் போர்ட்ஃபோலியோவை மதிப்பாய்வு செய்';

  @override
  String get portfolioReviewAgain => 'மீண்டும் மதிப்பாய்வு செய்';

  @override
  String get portfolioReviewWorking =>
      'உங்கள் போர்ட்ஃபோலியோ மதிப்பாய்வு செய்யப்படுகிறது…';

  @override
  String get digestTitle => 'மின்னஞ்சலில் வாராந்திரச் சுருக்கம்';

  @override
  String get digestHint =>
      'ஒவ்வொரு திங்களும்: கடந்த வாரம் உங்கள் பிடித்தவையும் போர்ட்ஃபோலியோவும் எப்படி நகர்ந்தன, அவற்றின் வரவிருக்கும் முடிவுத் தேதிகள்.';

  @override
  String get benchmarkTitle => 'S&P 500 உடன் ஒப்பீடு';

  @override
  String get benchmarkYours => 'உங்கள் வாங்குதல்கள்';

  @override
  String get benchmarkIndex => 'அதே தொகை S&P 500-இல்';

  @override
  String benchmarkAhead(String points) {
    return 'குறியீட்டை விட $points சதவீதப் புள்ளிகள் சிறப்பு';
  }

  @override
  String benchmarkBehind(String points) {
    return 'குறியீட்டை விட $points சதவீதப் புள்ளிகள் பின்னால்';
  }

  @override
  String get benchmarkHint =>
      'ஒவ்வொரு வாங்குதலின் தொகையும் அதே நாளில் S&P 500 குறியீட்டு நிதியில் முதலீடு செய்யப்பட்டது போல. ஈவுத்தொகை சேர்க்கப்படவில்லை; கடந்தகால வருமானம் எதிர்கால வருமானத்தைக் கணிக்காது.';

  @override
  String get portfolioSell => 'விற்';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbol விற்';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'ஒரு பங்கின் விற்பனை விலை ($currency)';
  }

  @override
  String get portfolioSellDate => 'விற்ற தேதி';

  @override
  String get portfolioSellAll => 'அனைத்தும்';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'உங்களிடம் $quantity உள்ளது';
  }

  @override
  String get portfolioSold => 'விற்றது';

  @override
  String get portfolioRealized => 'ஈட்டியது';

  @override
  String get portfolioClosed => 'மூடிய நிலைகள்';

  @override
  String get portfolioClosedNote => 'அனைத்து பங்குகளும் விற்கப்பட்டன';

  @override
  String get portfolioTransactions => 'பரிவர்த்தனைகள்';

  @override
  String get portfolioRealizedByYear => 'ஆண்டுவாரியாக ஈட்டிய லாபம்';

  @override
  String get portfolioRealizedHint =>
      'விற்பனைகள் முதலில் உங்கள் மிகப் பழைய வாங்குதல்களுடன் பொருத்தப்படுகின்றன (FIFO), இன்றைய மாற்று விகிதத்தில் மாற்றப்படுகின்றன. வரி தாக்கலுக்கு உங்கள் தரகரின் அறிக்கையைப் பயன்படுத்தவும்.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'இந்தப் பகுப்பாய்வுக்குப் பிறகு புதிய காலாண்டு முடிவுகள் வெளியாகியுள்ளன ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'புதிய முடிவுகள்';

  @override
  String get portfolioImportBrokers =>
      'Revolut, Trading 212, Interactive Brokers ஏற்றுமதிகளும் விற்பனைகளுடன் அடையாளம் காணப்படும்; ஈவுத்தொகையும் வைப்புகளும் தவிர்க்கப்படும்.';

  @override
  String get portfolioImportFile => 'கோப்பைத் தேர்ந்தெடுக்கவும்';

  @override
  String offlineBanner(String time) {
    return 'இணைப்பு இல்லை – கடைசியாகச் சேமித்த தரவு காட்டப்படுகிறது ($time).';
  }

  @override
  String get glossMarketCap =>
      'பங்குச் சந்தையில் முழு நிறுவனத்தின் மதிப்பு: பங்கு விலை × பங்குகளின் எண்ணிக்கை.';

  @override
  String get glossSharesOutstanding =>
      'நிறுவனம் வெளியிட்ட பங்குகளின் எண்ணிக்கை. இது அதிகரித்தால், ஒவ்வொரு பங்குக்கும் சிறிய பகுதியே கிடைக்கும்; பங்குகளைத் திரும்ப வாங்குவது இதைக் குறைக்கும்.';

  @override
  String get glossPeTrailing =>
      'விலை ÷ கடந்த 12 மாதங்களின் ஒரு பங்கு லாபம்: தற்போதைய லாபத்தின் எத்தனை ஆண்டுகளுக்கு நீங்கள் பணம் செலுத்துகிறீர்கள். குறைவு என்றால் மலிவு, ஆனால் வேகமாக வளரும் நிறுவனங்களுக்கு பொதுவாக P/E அதிகம்.';

  @override
  String get glossPeForward =>
      'P/E போன்றதே, ஆனால் அடுத்த 12 மாதங்களுக்கு ஆய்வாளர்கள் எதிர்பார்க்கும் லாபத்துடன். ட்ரெய்லிங் P/E-ஐ விடக் குறைவாக இருந்தால் லாபம் வளரும் என எதிர்பார்க்கப்படுகிறது.';

  @override
  String get glossPb =>
      'விலை ÷ ஒரு பங்குக்கான புத்தக மதிப்பு (சொத்துகள் கழித்தல் கடன்கள்). சுமார் 1 என்றால், காகிதத்தில் நிறுவனம் வைத்திருக்கும் அளவுக்கே சந்தை அதை மதிப்பிடுகிறது.';

  @override
  String get glossPs =>
      'சந்தை மதிப்பு ÷ ஆண்டு வருவாய். இன்னும் லாபம் குறைவாக அல்லது இல்லாத நிறுவனங்களுக்குப் பயனுள்ளது; ஒரே தொழில்துறைக்குள் ஒப்பிடுங்கள்.';

  @override
  String get glossEvToFcf =>
      'கடன் உட்பட நிறுவன மதிப்பு (EV) ÷ முதலீடுகளுக்குப் பிறகு ஒரு ஆண்டில் அது உருவாக்கும் பணம். குறைவு என்றால், செலுத்தும் விலைக்கு அதிக பணம் கிடைக்கிறது.';

  @override
  String get glossPeg =>
      'P/E ÷ எதிர்பார்க்கப்படும் ஆண்டு லாப வளர்ச்சி (%). சுமார் 1 பெரும்பாலும் நியாயமாகக் கருதப்படுகிறது; இது வளர்ச்சியின் கோணத்தில் P/E-ஐக் காட்டுகிறது.';

  @override
  String get glossEps =>
      'கடந்த 12 மாதங்களில் ஒரு பங்குக்கான லாபம். ஆண்டுதோறும் உயரும் EPS ஆரோக்கியமான நிறுவனத்தின் வலுவான அறிகுறிகளில் ஒன்று.';

  @override
  String get glossBeta =>
      'பங்கு சந்தையுடன் எவ்வளவு சேர்ந்து நகரும்: 1 = சந்தையைப் போல, 1.5 = சுமார் 50% பெரிய ஏற்ற இறக்கங்கள், 1-க்குக் கீழ் = அமைதியானது.';

  @override
  String get glossRevenueTtm =>
      'கடந்த 12 மாதங்களின் மொத்த விற்பனை, எந்தச் செலவுக்கும் முன்.';

  @override
  String get glossNetIncomeTtm =>
      'கடந்த 12 மாதங்களில் அனைத்து செலவுகள், வட்டி மற்றும் வரிகளுக்குப் பிறகு மீதமுள்ள லாபம்.';

  @override
  String get glossGrossMargin =>
      'பொருட்களின் நேரடிச் செலவுக்குப் பிறகு மீதமுள்ள வருவாயின் பங்கு. அதிக விகிதம் பெரும்பாலும் விலை நிர்ணய வலிமையைக் காட்டுகிறது.';

  @override
  String get glossOperatingMargin =>
      'வணிகத்தை நடத்தும் செலவுகளுக்குப் (சம்பளம், வாடகை, சந்தைப்படுத்தல்) பிறகு, வட்டி மற்றும் வரிகளுக்கு முன் மீதமுள்ள வருவாயின் பங்கு.';

  @override
  String get glossNetMargin =>
      'இறுதி லாபமாக மாறும் வருவாயின் பங்கு. 20% என்றால் ஒவ்வொரு 100 விற்பனையிலும் 20 லாபம்.';

  @override
  String get glossRoe =>
      'பங்கு மூலதன வருவாய்: ஆண்டு லாபம் ÷ உரிமையாளர்களின் மூலதனம். பங்குதாரர்களின் பணத்தை நிர்வாகம் எவ்வளவு நன்றாகப் பயன்படுத்துகிறது எனக் காட்டுகிறது; சுமார் 15%-க்கு மேல் வலுவானது.';

  @override
  String get glossRoa =>
      'சொத்து வருவாய்: ஆண்டு லாபம் ÷ நிறுவனம் வைத்திருக்கும் அனைத்தும். ஒரே தொழில்துறைக்குள் ஒப்பிடுங்கள்.';

  @override
  String get glossDebtToEquity =>
      'கடன்கள் ÷ உரிமையாளர்களின் மூலதனம். அதிகம் என்றால் கடன் வாங்கிய பணம் அதிகம்: வட்டி உயரும்போது அல்லது வணிகம் மந்தமாகும்போது அபாயம் அதிகம்.';

  @override
  String get glossCurrentRatio =>
      'குறுகிய கால சொத்துகள் ÷ ஒரு ஆண்டுக்குள் செலுத்த வேண்டிய கட்டணங்கள். 1-க்கு மேல் என்றால் நிறுவனம் அருகிலுள்ள கட்டணங்களைச் சமாளிக்க முடியும்.';

  @override
  String get glossRevenueGrowth =>
      'ஒரு ஆண்டுக்கு முன்பை விட வருவாய் எவ்வளவு வளர்ந்தது.';

  @override
  String get glossEpsGrowth =>
      'ஒரு ஆண்டுக்கு முன்பை விட ஒரு பங்குக்கான லாபம் எவ்வளவு வளர்ந்தது.';

  @override
  String get glossDividendYield =>
      'ஆண்டு ஈவுத்தொகை ÷ பங்கு விலை: நீங்கள் செலுத்தும் தொகையின் சதவீதமாக, ஆண்டுக்கு உங்களுக்குக் கிடைக்கும் பண வருமானம்.';

  @override
  String get glossDividendPerShare =>
      'கடந்த ஆண்டில் ஒரு பங்குக்குச் செலுத்தப்பட்ட ஈவுத்தொகை.';

  @override
  String get glossPayoutRatio =>
      'ஈவுத்தொகையாகச் செலுத்தப்படும் லாபத்தின் பங்கு. 100%-க்கு மேல் என்றால் நிறுவனம் சம்பாதிப்பதை விட அதிகமாகச் செலுத்துகிறது, இது அரிதாகவே நீடிக்கும்.';

  @override
  String get glossTitle => 'இதன் பொருள் என்ன?';

  @override
  String get watchNewsTitle => 'உங்கள் பங்குகள் பற்றிய செய்திகள்';

  @override
  String get undo => 'செயல்தவிர்';

  @override
  String get watchSort => 'வரிசைப்படுத்து';

  @override
  String get watchSortOwn => 'என் வரிசை';

  @override
  String get watchSortGainers => 'அதிக உயர்வு முதலில்';

  @override
  String get watchSortLosers => 'அதிக சரிவு முதலில்';

  @override
  String get watchSortName => 'டிக்கர்படி (A–Z)';

  @override
  String get watchHint =>
      'வரிசையை மாற்ற கைப்பிடியை இழுக்கவும், நீக்க இடதுபுறம் ஸ்வைப் செய்யவும். கோடு கடந்த 30 நாட்களைக் காட்டுகிறது.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: உங்கள் பகுப்பாய்வு தயார்.';
  }

  @override
  String alertFromCost(String price) {
    return 'உங்கள் சராசரி வாங்கிய விலையிலிருந்து ($price):';
  }

  @override
  String get briefTitle => 'இன்று உங்கள் பங்குகளுடன்';

  @override
  String get briefButton => 'இன்றைய சுருக்கம்';

  @override
  String get briefHint =>
      'உங்கள் போர்ட்ஃபோலியோவும் விருப்பமானவைகளும் இன்று எப்படி நகர்ந்தன, சமீபத்திய செய்திகள் அவை பற்றி என்ன சொல்கின்றன என்ற சிறிய AI சுருக்கம். பகுப்பாய்வு எதுவும் செலவாகாது.';

  @override
  String get briefRefresh => 'புதுப்பி';

  @override
  String get sectionEarnings => 'காலாண்டு முடிவுகள்';

  @override
  String earningsNext(String date) {
    return 'அடுத்த அறிக்கை: $date';
  }

  @override
  String get earningsExpected => 'எதிர்பார்த்த EPS';

  @override
  String get earningsReported => 'அறிவிக்கப்பட்ட EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'கடந்த $total காலாண்டுகளில் $beats முறை எதிர்பார்த்த EPS-க்குச் சமம் அல்லது அதிகம்',
      one:
          '1 காலாண்டில் $beats முறை எதிர்பார்த்த EPS-க்குச் சமம் அல்லது அதிகம்',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol நாளை காலாண்டு முடிவுகளை வெளியிடுகிறது';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol இன்று காலாண்டு முடிவுகளை வெளியிடுகிறது';
  }

  @override
  String get earningsRemindersTitle => 'முடிவுகள் நினைவூட்டல்கள்';

  @override
  String get earningsRemindersSubtitle =>
      'உங்கள் பிடித்தவை அல்லது போர்ட்ஃபோலியோ பங்குகள் காலாண்டு முடிவுகளை வெளியிடுவதற்கு முந்தைய நாள் ஒரு அறிவிப்பு';

  @override
  String addAllToFavorites(int count) {
    return 'அனைத்தையும் பிடித்தவற்றில் சேர் ($count)';
  }

  @override
  String get portfolioImportPhoto => 'ஸ்கிரீன்ஷாட்டிலிருந்து இறக்குமதி செய்';

  @override
  String get holdingsReading => 'உங்கள் பங்கு நிலைகளைப் படிக்கிறது…';

  @override
  String get holdingsReviewTitle => 'கண்டறியப்பட்ட நிலைகள்';

  @override
  String get holdingsReviewHint =>
      'சேர்க்கும் முன் எண்களைச் சரிபார்க்கவும். விலை என்பது ஒரு பங்கிற்கான உங்கள் சராசரி வாங்கிய விலை, இன்றைய விலை அல்ல.';

  @override
  String get holdingsNoPrice => 'படத்தில் சராசரி வாங்கிய விலை இல்லை';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count நிலைகளைச் சேர்',
      one: '1 நிலையைச் சேர்',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'இந்தப் படத்தில் பங்கு நிலைகள் எதுவும் கிடைக்கவில்லை. உங்கள் தரகரின் நிலைகள் அல்லது இருப்புகள் பக்கத்தின் ஸ்கிரீன்ஷாட்டை முயற்சிக்கவும்.';

  @override
  String get week52Range => '52-வார வரம்பு';

  @override
  String week52BelowHigh(String percent) {
    return '52-வார உச்சத்திலிருந்து $percent கீழே';
  }

  @override
  String get week52AtHigh => '52-வார உச்சத்தில்';

  @override
  String get alertKindTrailing => 'உச்சத்திலிருந்து சரிந்தால்';

  @override
  String get alertTrailingPercent => 'உச்சத்திலிருந்து சரிவு (%)';

  @override
  String get alertTrailingHint =>
      'விலையை மேல்நோக்கிப் பின்தொடரும்: அமைத்ததிலிருந்து எட்டிய அதிகபட்ச நிலையிலிருந்து விலை இவ்வளவு சரிந்தால் அறிவிக்கும்.';

  @override
  String alertDescTrailing(String percent) {
    return 'உச்சத்திலிருந்து $percent சரிவு';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'இதுவரை உச்சம்: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol உச்சத்திலிருந்து $percent சரிந்தது';
  }

  @override
  String get sectionInsiders => 'உள்நபர் வர்த்தகம்';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count வாங்குதல்கள்',
      one: '1 வாங்குதல்',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count விற்பனைகள்',
      one: '1 விற்பனை',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'நிகரம்: $shares பங்குகள்';
  }

  @override
  String get insiderBuy => 'வாங்கியது';

  @override
  String get insiderSell => 'விற்றது';

  @override
  String get insiderHint =>
      'கடந்த 90 நாட்களில் நிர்வாகிகள் மற்றும் இயக்குநர்கள் திறந்த சந்தையில் செய்த வாங்குதல்கள் மற்றும் விற்பனைகள் (SEC Form 4). ஆப்ஷன் பயன்பாடுகளும் பங்கு வழங்கல்களும் கணக்கிடப்படவில்லை.';

  @override
  String get insiderNone =>
      'கடந்த 90 நாட்களில் திறந்த சந்தையில் உள்நபர் வாங்குதல்களோ விற்பனைகளோ இல்லை.';

  @override
  String get analystTrend => 'மாதந்தோறும் கருத்துகள் எப்படி மாறின';

  @override
  String get watchListAll => 'அனைத்தும்';

  @override
  String get watchListNew => 'புதிய பட்டியல்';

  @override
  String get watchListName => 'பட்டியல் பெயர்';

  @override
  String get watchListRename => 'பட்டியலின் பெயரை மாற்று';

  @override
  String get watchListDelete => 'பட்டியலை நீக்கு';

  @override
  String get watchListAddTo => 'பட்டியலில் சேர்';

  @override
  String get watchListEmpty =>
      'இந்தப் பட்டியலில் இன்னும் பங்குகள் இல்லை. சேர்க்க, பங்கின் அருகிலுள்ள பட்டியல் பொத்தானைத் தட்டவும்.';

  @override
  String get portfolioAskTitle => 'உங்கள் போர்ட்ஃபோலியோ பற்றிய கேள்விகள்';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'காப்புப்பிரதி';

  @override
  String get backupSave => 'காப்புப்பிரதியைச் சேமி';

  @override
  String get backupSaveHint =>
      'உங்கள் பிடித்தவை, பட்டியல்கள், போர்ட்ஃபோலியோ, எச்சரிக்கைகள், குறிப்புகள் அனைத்தும் ஒரே கோப்பில்.';

  @override
  String get backupRestore => 'காப்புப்பிரதியிலிருந்து மீட்டெடு';

  @override
  String get backupRestoreHint =>
      'கோப்பில் உள்ளதைச் சேர்க்கும்; இப்போது உள்ள எதுவும் நீக்கப்படாது.';

  @override
  String get backupRestored => 'காப்புப்பிரதி மீட்டெடுக்கப்பட்டது.';

  @override
  String get backupInvalid => 'இந்தக் கோப்பு WhatStock காப்புப்பிரதி அல்ல.';

  @override
  String get allocationPositions => 'பங்குகள்';

  @override
  String get allocationSectors => 'துறைகள்';

  @override
  String get allocationCurrencies => 'நாணயங்கள்';

  @override
  String get compareReturn1y => '1 ஆண்டு வருமானம்';

  @override
  String get compareFromHigh => '52-வார உச்சத்திலிருந்து தூரம்';

  @override
  String get briefAutoTitle => 'ஒவ்வொரு காலையும் தினசரி சுருக்கம்';

  @override
  String get briefAutoSubtitle =>
      'ஆப் இயங்கும்போது காலை 7:00 மணிக்குப் பிறகு “இன்று உங்கள் பங்குகளுடன்” தானாகவே தயாராகும்; கணினிகளில் ஓர் அறிவிப்பு உங்களுக்குத் தெரிவிக்கும். இது உங்கள் தினசரி கேள்வி வரம்பிலிருந்து செலவாகும், பகுப்பாய்வு எதுவும் செலவாகாது.';

  @override
  String get targetsButton => 'இலக்கு பங்கீடு';

  @override
  String get targetsTitle => 'இலக்கு பங்கீடு';

  @override
  String get targetsHint =>
      'ஒவ்வொரு பங்கும் போர்ட்ஃபோலியோவில் எவ்வளவு பங்கு பெற வேண்டும் என அமைக்கவும். இலக்கு இல்லையெனில் புலத்தைக் காலியாக விடவும். பின்னர் அங்கு செல்ல என்ன வாங்க அல்லது விற்க வேண்டும் என்பதை ஆப் காட்டும்.';

  @override
  String targetsSum(String percent) {
    return 'மொத்தம்: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'வாங்கு ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'விற் ≈ $amount';
  }

  @override
  String get rebalanceOk => 'இலக்கில்';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol எதிர்பார்த்த EPS-ஐ மிஞ்சியது';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol எதிர்பார்த்த EPS-ஐ எட்டவில்லை';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'அறிவிக்கப்பட்ட EPS $actual, எதிர்பார்த்தது $estimate';
  }

  @override
  String get newsExplain => 'இதன் அர்த்தம் என்ன?';

  @override
  String get newsExplainNote =>
      'தலைப்பு மற்றும் சுருக்கத்தை மட்டுமே அடிப்படையாகக் கொண்ட AI விளக்கம். இது முதலீட்டு ஆலோசனை அல்ல. இது உங்கள் தினசரி கேள்வி வரம்பிலிருந்து செலவாகும், பகுப்பாய்வு எதுவும் செலவாகாது.';

  @override
  String get watchAlertAll => 'பெரிய தினசரி மாற்றத்துக்கு எச்சரிக்கை';

  @override
  String get watchAlertAllHint =>
      'இந்தப் பட்டியலில் உள்ள ஒவ்வொரு பங்கிற்கும் விலை எச்சரிக்கை: ஒரே நாளில் இவ்வளவு மேலே அல்லது கீழே மாறினால் தெரிவிக்கும். ஏற்கெனவே எச்சரிக்கை உள்ள பங்குகளுக்கு அவற்றுடையதே இருக்கும்.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count எச்சரிக்கைகள் அமைக்கப்பட்டன',
      one: '1 எச்சரிக்கை அமைக்கப்பட்டது',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'உணரப்பட்ட லாபத்தை ஏற்றுமதி செய் (CSV)';

  @override
  String get portfolioAnnualReturn => 'ஆண்டு வருமானம்';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / ஆண்டு';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'பண-எடையிட்ட ஆண்டு வருமானம் (XIRR): நீங்கள் எப்போது வாங்கினீர்கள், விற்றீர்கள் என்பதைக் கணக்கில் கொள்கிறது, எனவே பின்னர் சேர்த்த பணம் அதைத் திரிக்காது. உங்கள் முதல் வாங்குதலுக்குக் குறைந்தது ஓராண்டு ஆன பிறகு காட்டப்படும்; ஈவுத்தொகை சேர்க்கப்படவில்லை.';

  @override
  String get eventsAddToCalendar => 'கேலெண்டரில் சேர் (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'போர்ட்ஃபோலியோ எச்சரிக்கை';

  @override
  String get portfolioMoveAlertSubtitle =>
      'உங்கள் முழு போர்ட்ஃபோலியோவும் ஒரே நாளில் இவ்வளவு மாறும்போது ஒரு அறிவிப்பு.';

  @override
  String get portfolioMoveAlertOff => 'ஆஃப்';

  @override
  String portfolioMoveUp(String percent) {
    return 'இன்று உங்கள் போர்ட்ஃபோலியோ $percent உயர்ந்துள்ளது';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'இன்று உங்கள் போர்ட்ஃபோலியோ $percent சரிந்துள்ளது';
  }

  @override
  String get whatIfTitle => 'முதலீடு செய்திருந்தால்?';

  @override
  String get whatIfAmount => 'தொகை';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount முதலீடு (காலம்: $period) இன்று இவ்வளவு மதிப்பாக இருக்கும்';
  }

  @override
  String get whatIfNote =>
      'பங்கு விலையை மட்டுமே அடிப்படையாகக் கொண்டது: ஈவுத்தொகை, கட்டணங்கள், வரிகள் சேர்க்கப்படவில்லை. கடந்தகால வருமானம் எதிர்கால வருமானத்தைக் கணிப்பதில்லை.';

  @override
  String get watchShare => 'பட்டியலைப் பகிர்';

  @override
  String get watchImport => 'டிக்கர்களைச் சேர்';

  @override
  String get watchImportHint =>
      'காற்புள்ளி, இடைவெளி அல்லது புதிய வரியால் பிரிக்கப்பட்ட டிக்கர்களை ஒட்டவும் – எடுத்துக்காட்டாக, யாரோ உங்களுடன் பகிர்ந்த பட்டியல்.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count பங்குகள் சேர்க்கப்பட்டன',
      one: '1 பங்கு சேர்க்கப்பட்டது',
      zero: 'புதிய பங்குகள் இல்லை',
    );
    return '$_temp0';
  }
}
