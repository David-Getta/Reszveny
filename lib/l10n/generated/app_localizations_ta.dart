// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get appTitle => 'StockLens';

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
    return 'எங்கிருந்தும் StockLens ஐ அழைக்க $shortcut ஐ அழுத்துங்கள்.';
  }

  @override
  String get trayOpen => 'StockLens ஐ திற';

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
  String get updates => 'Updates';

  @override
  String currentVersion(String version) {
    return 'Version $version';
  }

  @override
  String get autoUpdate => 'Install updates automatically';

  @override
  String get checkForUpdates => 'Check for updates';

  @override
  String get updateChecking => 'Checking for updates…';

  @override
  String get updateUpToDate => 'You’re on the latest version.';

  @override
  String updateAvailable(String version) {
    return 'Version $version is available.';
  }

  @override
  String get updateDownloading => 'Downloading the update in the background…';

  @override
  String get updateDownloaded => 'The update is ready. Restart to install it.';

  @override
  String get updateNow => 'Update';

  @override
  String get restartNow => 'Restart';

  @override
  String get updatesViaStore =>
      'Updates arrive automatically through the app store.';

  @override
  String get updateCheckFailed => 'Could not check for updates.';
}
