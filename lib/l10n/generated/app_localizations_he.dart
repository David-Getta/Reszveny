// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppLocalizationsHe extends AppLocalizations {
  AppLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'צלמו מניה וגלו עליה הכול.';

  @override
  String get homeHint =>
      'תעודת מניה, מסך של אפליקציית מסחר, עיתון או לוגו של חברה – כל דבר שמזהה מניה.';

  @override
  String get takePhoto => 'צילום תמונה';

  @override
  String get chooseFromGallery => 'בחירה מהגלריה';

  @override
  String get chooseImage => 'בחירת תמונה';

  @override
  String get enterTickerManually => 'הזנת סימול ידנית';

  @override
  String get tickerInputLabel => 'סימול המניה';

  @override
  String get tickerInputHint => 'למשל AAPL';

  @override
  String get lookUp => 'חיפוש';

  @override
  String demoModeBanner(String symbols) {
    return 'מצב הדגמה – לא הוגדר מפתח לנתוני שוק. נתונים לדוגמה זמינים עבור: $symbols.';
  }

  @override
  String get recognizing => 'מנתחים את התמונה…';

  @override
  String get loadingData => 'הנתונים נטענים…';

  @override
  String get noCandidatesTitle => 'לא זוהתה מניה';

  @override
  String get noCandidatesBody =>
      'לא הצלחנו לזהות מניה בתמונה הזו. נסו תמונה חדה יותר, או הזינו את הסימול ידנית.';

  @override
  String get whatWeSaw => 'מה ראינו';

  @override
  String get chooseCandidateTitle => 'לאיזו מניה התכוונת?';

  @override
  String confidencePercent(int percent) {
    return 'ודאות של $percent%';
  }

  @override
  String get settings => 'הגדרות';

  @override
  String get language => 'שפה';

  @override
  String get systemLanguage => 'ברירת המחדל של המערכת';

  @override
  String get about => 'אודות';

  @override
  String get disclaimer =>
      'האפליקציה מספקת מידע בלבד ואינה מהווה ייעוץ השקעות. הנתונים עשויים להיות מעוכבים או לא מדויקים.';

  @override
  String dataSource(String source) {
    return 'מקור הנתונים: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'זיהוי: $source';
  }

  @override
  String get retry => 'ניסיון חוזר';

  @override
  String get cancel => 'ביטול';

  @override
  String get ok => 'אישור';

  @override
  String get close => 'סגירה';

  @override
  String get errorGeneric => 'משהו השתבש.';

  @override
  String get errorSectionUnavailable => 'לא ניתן היה לטעון את החלק הזה.';

  @override
  String get notAvailable => 'לא זמין';

  @override
  String get sectionIdentity => 'זיהוי';

  @override
  String get sectionPrice => 'מחיר';

  @override
  String get sectionValuation => 'הערכת שווי';

  @override
  String get sectionFinancials => 'נתונים פיננסיים';

  @override
  String get sectionDividend => 'דיבידנד';

  @override
  String get sectionProfile => 'פרופיל החברה';

  @override
  String get sectionAnalysts => 'המלצות אנליסטים';

  @override
  String get sectionNews => 'חדשות';

  @override
  String get sectionRecognition => 'פרטי הזיהוי';

  @override
  String get labelSymbol => 'סימול';

  @override
  String get labelExchange => 'בורסה';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'מטבע';

  @override
  String get labelCountry => 'מדינה';

  @override
  String get labelIndustry => 'ענף';

  @override
  String get labelSector => 'סקטור';

  @override
  String get labelWebsite => 'אתר אינטרנט';

  @override
  String get labelIpoDate => 'תאריך ההנפקה';

  @override
  String get labelMarketCap => 'שווי שוק';

  @override
  String get labelSharesOutstanding => 'מניות במחזור';

  @override
  String get labelEmployees => 'עובדים';

  @override
  String get labelCeo => 'מנכ״ל';

  @override
  String get labelHeadquarters => 'מטה';

  @override
  String get labelDescription => 'תיאור';

  @override
  String get labelLastPrice => 'מחיר אחרון';

  @override
  String get labelChange => 'שינוי';

  @override
  String get labelOpen => 'פתיחה';

  @override
  String get labelDayHigh => 'גבוה יומי';

  @override
  String get labelDayLow => 'נמוך יומי';

  @override
  String get labelPreviousClose => 'סגירה קודמת';

  @override
  String get labelWeek52High => 'שיא 52 שבועות';

  @override
  String get labelWeek52Low => 'שפל 52 שבועות';

  @override
  String get labelAverageVolume10d => 'מחזור ממוצע (10 ימים)';

  @override
  String updatedAt(String time) {
    return 'עודכן $time';
  }

  @override
  String get labelPeTrailing => 'P/E (היסטורי)';

  @override
  String get labelPeForward => 'P/E (צפוי)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / תזרים מזומנים חופשי';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'בטא';

  @override
  String get labelRevenueTtm => 'הכנסות (TTM)';

  @override
  String get labelNetIncomeTtm => 'רווח נקי (TTM)';

  @override
  String get labelGrossMargin => 'שיעור רווח גולמי';

  @override
  String get labelOperatingMargin => 'שיעור רווח תפעולי';

  @override
  String get labelNetMargin => 'שיעור רווח נקי';

  @override
  String get labelRoe => 'תשואה על ההון העצמי';

  @override
  String get labelRoa => 'תשואה על הנכסים';

  @override
  String get labelDebtToEquity => 'חוב / הון עצמי';

  @override
  String get labelCurrentRatio => 'יחס שוטף';

  @override
  String get labelRevenueGrowth => 'צמיחה בהכנסות (שנתית)';

  @override
  String get labelEpsGrowth => 'צמיחה ב-EPS (שנתית)';

  @override
  String get labelDividendYield => 'תשואת דיבידנד';

  @override
  String get labelDividendPerShare => 'דיבידנד למניה';

  @override
  String get labelPayoutRatio => 'שיעור חלוקה';

  @override
  String get labelConsensus => 'קונצנזוס';

  @override
  String get ratingStrongBuy => 'קנייה חזקה';

  @override
  String get ratingBuy => 'קנייה';

  @override
  String get ratingHold => 'החזקה';

  @override
  String get ratingSell => 'מכירה';

  @override
  String get ratingStrongSell => 'מכירה חזקה';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count אנליסטים',
      two: 'שני אנליסטים',
      one: 'אנליסט אחד',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'תקופה: $period';
  }

  @override
  String get noNews => 'אין חדשות עדכניות.';

  @override
  String get openArticle => 'פתיחת הכתבה';

  @override
  String get openLinkFailed => 'לא ניתן היה לפתוח את הקישור.';

  @override
  String get recognitionSummary => 'סיכום';

  @override
  String get recognitionEvidence => 'למה אנחנו חושבים כך';

  @override
  String get recognitionRawText => 'הטקסט שנקרא מהתמונה';

  @override
  String get errMissingAnthropicKey =>
      'זיהוי התמונות לא הוגדר (אין ANTHROPIC_API_KEY). הזינו את הסימול ידנית.';

  @override
  String get errRecognitionUnreachable =>
      'אין גישה לשירות הזיהוי. בדקו את החיבור לאינטרנט.';

  @override
  String errRecognitionHttp(String status) {
    return 'שירות הזיהוי החזיר שגיאה (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'שירות הזיהוי לא הצליח לעבד את התמונה הזו.';

  @override
  String get errRecognitionTruncated =>
      'התשובה של שירות הזיהוי נקטעה. נסו שוב.';

  @override
  String get errRecognitionBadResponse => 'תשובה לא צפויה משירות הזיהוי.';

  @override
  String get errRecognitionEmpty => 'שירות הזיהוי החזיר תשובה ריקה.';

  @override
  String get errMissingFinnhubKey =>
      'נתוני השוק לא הוגדרו (אין FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'אין גישה לשירות נתוני השוק. בדקו את החיבור לאינטרנט.';

  @override
  String get errMarketRateLimited =>
      'יותר מדי בקשות לשירות נתוני השוק. המתינו דקה.';

  @override
  String errMarketHttp(String status) {
    return 'שירות נתוני השוק החזיר שגיאה (HTTP $status).';
  }

  @override
  String get errMarketBadResponse => 'תשובה לא צפויה משירות נתוני השוק.';

  @override
  String errNoQuote(String symbol) {
    return 'לא נמצאו נתוני מחיר עבור $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'לא נמצא פרופיל חברה עבור $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'מצב ההדגמה תומך רק ב-$symbols. הוסיפו FINNHUB_API_KEY כדי לקבל נתונים בזמן אמת.';
  }

  @override
  String errUnknown(String detail) {
    return 'משהו השתבש: $detail';
  }

  @override
  String get newSearch => 'חיפוש חדש';

  @override
  String get recentSearches => 'אחרונים';

  @override
  String get noRecentSearches => 'אין עדיין חיפושים אחרונים.';

  @override
  String get clearRecent => 'ניקוי האחרונים';

  @override
  String get greeting => 'על איזו מניה נסתכל?';

  @override
  String get searchHint => 'סימול או שם חברה';

  @override
  String get attachImage => 'צירוף תמונה';

  @override
  String get searchResultsTitle => 'תוצאות חיפוש';

  @override
  String errNoResults(String query) {
    return 'לא נמצאו מניות עבור \"$query\".';
  }

  @override
  String get quickBarHint => 'הקלידו סימול או שם חברה…';

  @override
  String get openFullWindow => 'פתיחת חלון';

  @override
  String hotkeyHint(String shortcut) {
    return 'הקישו $shortcut מכל מקום כדי לפתוח את WhatStock.';
  }

  @override
  String get trayOpen => 'פתיחת WhatStock';

  @override
  String get trayQuickSearch => 'חיפוש מהיר';

  @override
  String get trayQuit => 'יציאה';

  @override
  String get appearance => 'מראה';

  @override
  String get themeSystem => 'מערכת';

  @override
  String get themeDark => 'כהה';

  @override
  String get themeLight => 'בהיר';

  @override
  String get back => 'חזרה';

  @override
  String get aiSectionTitle => 'ניתוח AI';

  @override
  String get aiIntro =>
      'סקירה מפורטת שנכתבה על ידי AI: סיכום החדשות האחרונות, העסק, החוזקות, הסיכונים והגורמים הנסתרים, הערכת השווי, תחזית מחיר עם תרחישים מזוויות פסיכולוגיות, סוציולוגיות, טכניות ומאקרו-כלכליות, ומה כדאי לעקוב אחריו.';

  @override
  String get aiGenerate => 'יצירת ניתוח';

  @override
  String get aiRegenerate => 'יצירה מחדש';

  @override
  String get aiGenerating => 'מכינים את הניתוח… זה עשוי לקחת דקה או שתיים.';

  @override
  String get aiSources => 'מקורות';

  @override
  String aiGeneratedAt(String time) {
    return 'נוצר $time';
  }

  @override
  String get aiDisclaimer =>
      'ניתוח שנוצר על ידי AI על סמך נתונים פומביים וחדשות אחרונות. הוא עשוי להכיל שגיאות או לא להיות עדכני, ואינו מהווה ייעוץ השקעות.';

  @override
  String get errAiNotConfigured =>
      'ניתוח ה-AI לא הוגדר (אין ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'אין גישה לשירות ה-AI. בדקו את החיבור לאינטרנט.';

  @override
  String errAiHttp(String status) {
    return 'שירות ה-AI החזיר שגיאה (HTTP $status).';
  }

  @override
  String get errAiRefused => 'שירות ה-AI סירב לנתח את המניה הזו.';

  @override
  String get errAiBadResponse => 'תשובה לא צפויה משירות ה-AI.';

  @override
  String get sectionChart => 'גרף מחיר';

  @override
  String get rangeOneWeek => 'שבוע';

  @override
  String get rangeOneMonth => 'חודש';

  @override
  String get rangeThreeMonths => '3 ח׳';

  @override
  String get rangeOneYear => 'שנה';

  @override
  String get rangeFiveYears => '5 ש׳';

  @override
  String get chartUnavailable =>
      'היסטוריית המחירים אינה זמינה ממקור הנתונים הנוכחי.';

  @override
  String get sectionStatements => 'דוחות כספיים (שנתיים)';

  @override
  String get labelFiscalYear => 'שנת כספים';

  @override
  String get labelRevenue => 'הכנסות';

  @override
  String get labelNetIncome => 'רווח נקי';

  @override
  String get labelTotalAssets => 'סך הנכסים';

  @override
  String get labelTotalLiabilities => 'סך ההתחייבויות';

  @override
  String get labelEquity => 'הון עצמי';

  @override
  String get labelOperatingCashFlow => 'תזרים מזומנים מפעילות שוטפת';

  @override
  String get statementsUnavailable =>
      'אין דוחות כספיים מדווחים עבור המניה הזו.';

  @override
  String get launchAtLogin => 'הפעלה בכניסה למערכת';

  @override
  String get hotkeyLabel => 'קיצור מקשים גלובלי';

  @override
  String get hotkeyRecordHint => 'לחצו כאן ואז הקישו את צירוף המקשים החדש';

  @override
  String get hotkeyReset => 'איפוס לברירת המחדל';

  @override
  String get pasteImage => 'הדבקת תמונה מהלוח';

  @override
  String get errClipboardNoImage => 'אין תמונה בלוח.';

  @override
  String get favorites => 'מועדפים';

  @override
  String get addToFavorites => 'הוספה למועדפים';

  @override
  String get removeFromFavorites => 'הסרה מהמועדפים';

  @override
  String get noFavorites =>
      'אין עדיין מועדפים. הקישו על הכוכב של מניה כדי להוסיף אותה.';

  @override
  String get displayCurrency => 'מטבע תצוגה';

  @override
  String get displayCurrencyNone => 'רק המטבע של המניה';

  @override
  String labelConverted(String currency) {
    return '≈ ב-$currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'שער: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'עדכונים';

  @override
  String currentVersion(String version) {
    return 'גרסה $version';
  }

  @override
  String get autoUpdate => 'התקנת עדכונים באופן אוטומטי';

  @override
  String get checkForUpdates => 'בדיקת עדכונים';

  @override
  String get updateChecking => 'בודקים אם יש עדכונים…';

  @override
  String get updateUpToDate => 'יש לך את הגרסה העדכנית ביותר.';

  @override
  String updateAvailable(String version) {
    return 'גרסה $version זמינה.';
  }

  @override
  String get updateDownloading => 'העדכון יורד ברקע…';

  @override
  String get updateDownloaded =>
      'העדכון מוכן. צריך להפעיל מחדש כדי להתקין אותו.';

  @override
  String get updateNow => 'עדכון';

  @override
  String get restartNow => 'הפעלה מחדש';

  @override
  String get updatesViaStore => 'העדכונים מגיעים אוטומטית דרך חנות האפליקציות.';

  @override
  String get updateCheckFailed => 'לא ניתן היה לבדוק אם יש עדכונים.';

  @override
  String get subscription => 'מינוי';

  @override
  String get planTrial => 'ניסיון';

  @override
  String get planNormal => 'רגיל';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'אין מסלול פעיל';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count ניתוחים בחודש';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'ניסיון חינם ל-$days ימים עם $count ניתוחים';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'נשארו $days ימי ניסיון',
      two: 'נשארו יומיים של ניסיון',
      one: 'נשאר יום ניסיון אחד',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'תקופת הניסיון החינמית הסתיימה. בחרו מסלול כדי להמשיך לנתח.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'נשארו $remaining מתוך $total ניתוחים בתקופה הזו';
  }

  @override
  String extraCredits(int count) {
    return '$count ניתוחים נוספים';
  }

  @override
  String renewsOn(String date) {
    return 'מתחדש ב-$date';
  }

  @override
  String get choosePlan => 'בחירת מסלול';

  @override
  String get currentPlan => 'המסלול הנוכחי';

  @override
  String get subscribe => 'הצטרפות למינוי';

  @override
  String get perMonth => '/ חודש';

  @override
  String get extraPacksTitle => 'צריכים עוד? קנו ניתוחים נוספים';

  @override
  String get extraPacksHint =>
      'תוקפם של ניתוחים נוספים לא פג לעולם, והם מנוצלים אחרי המכסה החודשית שלך.';

  @override
  String get buy => 'קנייה';

  @override
  String get restorePurchases => 'שחזור רכישות';

  @override
  String get manageSubscription => 'ניהול המינוי';

  @override
  String get purchaseSuccess => 'תודה! הרכישה שלך פעילה.';

  @override
  String get purchasePending => 'הרכישה בהמתנה…';

  @override
  String get purchaseFailed => 'לא ניתן היה להשלים את הרכישה.';

  @override
  String get purchaseCanceled => 'הרכישה בוטלה.';

  @override
  String get billingUnavailable =>
      'עדיין אי אפשר לבצע רכישות בפלטפורמה הזו. אפשר להצטרף למינוי בטלפון או ב-Mac – המסלול שלך יעבוד בכל המכשירים.';

  @override
  String get errQuotaExceeded =>
      'לא נשארו לך ניתוחים לתקופה הזו. שדרגו את המסלול או קנו ניתוחים נוספים.';

  @override
  String get errTrialExpired =>
      'תקופת הניסיון החינמית הסתיימה. בחרו מסלול כדי להמשיך.';

  @override
  String get errNoPlan => 'לניתוח AI נדרש מסלול פעיל.';

  @override
  String get viewPlans => 'הצגת המסלולים';

  @override
  String get usageTitle => 'שימוש';

  @override
  String get demoPurchaseNote =>
      'חיוב לדוגמה: הרכישות בפלטפורמה הזו הן הדמיה בלבד.';

  @override
  String get mostPopular => 'הכי פופולרי';

  @override
  String get bestValue => 'הכי משתלם';

  @override
  String get planFeaturesCommon =>
      'זיהוי מתמונה, נתונים בזמן אמת, גרפים, מועדפים וכל 120 השפות כלולים בכל מסלול. המכסה חלה על ניתוחי AI.';

  @override
  String get searchLanguages => 'חיפוש שפות…';

  @override
  String get noLanguageMatch => 'אין שפה תואמת.';

  @override
  String get aiSettings => 'ניתוח AI';

  @override
  String get aiLength => 'אורך';

  @override
  String get aiDepthBrief => 'קצר';

  @override
  String get aiDepthStandard => 'רגיל';

  @override
  String get aiDepthDeep => 'מעמיק';

  @override
  String get aiDepthBriefDesc => 'העיקר, במהירות.';

  @override
  String get aiDepthStandardDesc => 'דוח מלא עם כל החלקים.';

  @override
  String get aiDepthDeepDesc =>
      'יותר חיפושים ברשת, השוואה למתחרים ופירוט מעמיק יותר.';

  @override
  String aiDepthWords(String min, String max) {
    return 'בערך $min–$max מילים';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'מנצל $count ניתוחים',
      two: 'מנצל שני ניתוחים',
      one: 'מנצל ניתוח אחד',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'רמת הקורא';

  @override
  String get aiReaderBeginner => 'מתחילים';

  @override
  String get aiReaderExperienced => 'מנוסים';

  @override
  String get aiReaderBeginnerDesc => 'שפה פשוטה; כל מונח מקצועי מוסבר.';

  @override
  String get aiReaderExperiencedDesc => 'טקסט דחוס יותר עם מינוח פיננסי מקובל.';

  @override
  String get aiCounterArgument => 'הטיעון הנגדי החזק ביותר';

  @override
  String get aiCounterArgumentDesc =>
      'הסיכום תמיד מסתיים בטיעון החזק ביותר נגד המסקנה שלו עצמו.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'עד $count חיפושים ברשת לכל ניתוח במסלול שלך',
      two: 'עד שני חיפושים ברשת לכל ניתוח במסלול שלך',
      one: 'עד חיפוש אחד ברשת לכל ניתוח במסלול שלך',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'חיפושים ברשת באורך רגיל לפי מסלול: רגיל $normal, Pro $pro, Max $max, Ultra $ultra. קצר – 2 פחות, מעמיק – 2 יותר.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'עד $count חיפושים ברשת',
      two: 'עד שני חיפושים ברשת',
      one: 'עד חיפוש אחד ברשת',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count חיפושים ברשת לכל ניתוח',
      two: 'שני חיפושים ברשת לכל ניתוח',
      one: 'חיפוש אחד ברשת לכל ניתוח',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'האורך הזה דורש $needed ניתוחים, אבל נשארו לך רק $left. בחרו אורך קצר יותר בהגדרות או השיגו עוד ניתוחים.';
  }

  @override
  String get outlookMarketMood => 'סנטימנט השוק';

  @override
  String get moodVeryPessimistic => 'פסימי מאוד';

  @override
  String get moodPessimistic => 'פסימי';

  @override
  String get moodNeutral => 'ניטרלי';

  @override
  String get moodOptimistic => 'אופטימי';

  @override
  String get moodVeryOptimistic => 'אופטימי מאוד';

  @override
  String get scenarioBull => 'תרחיש שורי';

  @override
  String get scenarioBase => 'תרחיש בסיס';

  @override
  String get scenarioBear => 'תרחיש דובי';

  @override
  String outlookCurrentPrice(String price) {
    return 'מחיר נוכחי: $price';
  }

  @override
  String get outlookKeyLevels => 'רמות מפתח';

  @override
  String get keyLevelSupport => 'תמיכה';

  @override
  String get keyLevelResistance => 'התנגדות';

  @override
  String get keyLevelAnchor => 'עוגן';

  @override
  String get upcomingEvents => 'אירועים קרובים';

  @override
  String get outlookChartNote =>
      'טווחים אינדיקטיביים; ההסתברויות הן הערכות גסות, לא תחזיות.';

  @override
  String get accountTitle => 'חשבון';

  @override
  String get signIn => 'כניסה';

  @override
  String get signOut => 'יציאה';

  @override
  String get notSignedIn => 'לא בוצעה כניסה';

  @override
  String get accountBenefit =>
      'היכנסו לחשבון כדי שהמינוי שלך יעבוד בכל המכשירים שלך.';

  @override
  String get accountSyncedNote => 'המינוי שלך והניתוחים שנשארו זהים בכל מכשיר.';

  @override
  String get signInTitle => 'כניסה ל-WhatStock';

  @override
  String get emailLabel => 'כתובת אימייל';

  @override
  String get continueWithEmail => 'המשך עם אימייל';

  @override
  String codeSentTo(String email) {
    return 'שלחנו קוד בן 6 ספרות אל $email. הקוד תקף ל-10 דקות.';
  }

  @override
  String get codeLabel => 'קוד כניסה';

  @override
  String get resendCode => 'שליחת קוד חדש';

  @override
  String get useDifferentEmail => 'שימוש באימייל אחר';

  @override
  String get errInvalidCode => 'הקוד שגוי או שתוקפו פג.';

  @override
  String get errInvalidEmail => 'יש להזין כתובת אימייל תקינה.';

  @override
  String get errSignInFailed => 'הכניסה נכשלה. בדקו את החיבור ונסו שוב.';

  @override
  String get checkoutWaiting =>
      'השלימו את התשלום בדפדפן. האפליקציה תתעדכן אוטומטית בסיום.';

  @override
  String get paymentViaStripe =>
      'תשלום מאובטח בדפדפן דרך Stripe. אפשר לבטל בכל עת.';

  @override
  String get paymentViaStore =>
      'החיוב מתבצע דרך חשבון ה-App Store או Google Play שלך. אפשר לבטל בכל עת בהגדרות החנות.';

  @override
  String get keySpace => 'רווח';

  @override
  String get doubleOptionTitle => 'הקשה כפולה על Option';

  @override
  String get doubleOptionSubtitle =>
      'גם הקשה מהירה פעמיים על מקש Option פותחת את WhatStock.';

  @override
  String get doubleOptionPermission =>
      'כדי שזה יעבוד גם באפליקציות אחרות, אשרו את WhatStock בהגדרות המערכת ← פרטיות ואבטחה ← ניטור קלט, ואז פתחו את האפליקציה מחדש.';

  @override
  String get openSystemSettings => 'פתיחת הגדרות המערכת';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'הקישו $shortcut או הקישו פעמיים על Option מכל מקום כדי לפתוח את WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'הסביר ביותר';

  @override
  String get longTermToday => 'היום';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years שנים',
      two: 'שנתיים',
      one: 'שנה אחת',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range בשנה';
  }

  @override
  String longTermLikely(String price) {
    return 'הסביר ביותר: $price';
  }

  @override
  String get confidenceLow => 'ודאות נמוכה';

  @override
  String get confidenceMedium => 'ודאות בינונית';

  @override
  String get confidenceHigh => 'ודאות גבוהה';

  @override
  String get longTermNote =>
      'הטווחים לטווח ארוך מבוססים על ההנחות שצוינו ומתרחבים עם הזמן. המחירים אינם כוללים דיבידנדים. הערכות גסות, לא תחזיות.';

  @override
  String get portfolio => 'תיק השקעות';

  @override
  String get portfolioEmpty =>
      'אין כאן עדיין כלום. פתחו מניה והקישו על \"הוספה לתיק\" כדי לעקוב אחרי מה שבבעלותך.';

  @override
  String get portfolioLocalNote =>
      'נשמר רק במכשיר הזה. הסכומים מומרים לפי שערי הייחוס של ה-ECB; המחירים עשויים להיות מעוכבים.';

  @override
  String get addToPortfolio => 'הוספה לתיק';

  @override
  String portfolioAddTitle(String symbol) {
    return 'הוספת $symbol';
  }

  @override
  String get portfolioQuantity => 'מספר המניות';

  @override
  String portfolioBuyPrice(String currency) {
    return 'מחיר למניה ($currency)';
  }

  @override
  String get portfolioBuyDate => 'תאריך הרכישה';

  @override
  String get portfolioAdd => 'הוספה';

  @override
  String get portfolioInvalidNumber => 'יש להזין מספר גדול מאפס.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol נוספה לתיק שלך.';
  }

  @override
  String get portfolioTotalValue => 'שווי כולל';

  @override
  String get portfolioToday => 'היום';

  @override
  String get portfolioGainLoss => 'רווח/הפסד';

  @override
  String get portfolioInvested => 'סכום ההשקעה';

  @override
  String get portfolioAllocation => 'פיזור';

  @override
  String get portfolioPositions => 'פוזיציות';

  @override
  String portfolioAvgCost(String price) {
    return 'עלות ממוצעת $price';
  }

  @override
  String get portfolioYourPosition => 'הפוזיציה שלך';

  @override
  String get portfolioPurchases => 'רכישות';

  @override
  String get portfolioRemove => 'הסרה';

  @override
  String get portfolioExcluded =>
      'פוזיציות ללא מחיר או שער חליפין אינן נכללות בסכומים.';

  @override
  String get priceAlerts => 'התראות מחיר';

  @override
  String get setPriceAlert => 'הגדרת התראת מחיר';

  @override
  String alertDialogTitle(String symbol) {
    return 'התראת מחיר · $symbol';
  }

  @override
  String get alertKindAbove => 'עולה מעל';

  @override
  String get alertKindBelow => 'יורד מתחת';

  @override
  String get alertKindMove => 'תנודה חדה ביום אחד';

  @override
  String alertTargetPrice(String currency) {
    return 'מחיר ($currency)';
  }

  @override
  String get alertMovePercent => 'תנודה יומית (%)';

  @override
  String get alertAlreadyMet => 'המחיר כבר חצה את הרמה הזו.';

  @override
  String get alertSave => 'הגדרת התראה';

  @override
  String alertCreated(String symbol) {
    return 'הוגדרה התראה עבור $symbol.';
  }

  @override
  String get alertsEmpty =>
      'אין עדיין התראות מחיר. פתחו מניה והקישו על הפעמון כדי להגדיר התראה.';

  @override
  String get alertsNote =>
      'ההתראות נבדקות כל 5 דקות כל עוד WhatStock פועלת. במחשב היא ממשיכה לפעול בשורת התפריטים או במגש המערכת; בטלפון, בינתיים ההתראות מגיעות רק כשהאפליקציה פתוחה.';

  @override
  String alertDescAbove(String price) {
    return 'מעל $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'מתחת ל-$price';
  }

  @override
  String alertDescMove(String percent) {
    return 'תנודה יומית ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'הופעלה ב-$date במחיר $price';
  }

  @override
  String get alertRearm => 'הפעלה מחדש';

  @override
  String get alertDelete => 'מחיקה';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol עלתה מעל $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol ירדה מתחת ל-$price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol זזה ב-$percent היום';
  }

  @override
  String alertHitBody(String price) {
    return 'מחיר נוכחי: $price';
  }

  @override
  String get alertOpen => 'פתיחה';

  @override
  String get keepInTrayTitle => 'להמשיך לפעול כשהחלון סגור';

  @override
  String get keepInTraySubtitle =>
      'WhatStock נשארת בשורת התפריטים או במגש המערכת, כך שקיצור המקשים והתראות המחיר ממשיכים לעבוד.';

  @override
  String get termsOfUse => 'תנאי שימוש';

  @override
  String get privacyPolicy => 'מדיניות פרטיות';

  @override
  String get subscriptionLegal =>
      'המינוי מתחדש אוטומטית מדי חודש עד שמבטלים אותו. ההצטרפות למינוי מהווה הסכמה לתנאי השימוש ולמדיניות הפרטיות.';

  @override
  String get deleteAccount => 'מחיקת החשבון';

  @override
  String get deleteAccountTitle => 'למחוק את החשבון שלך?';

  @override
  String get deleteAccountBody =>
      'החשבון שלך וכל מה שנשמר בשרת שלנו (אימייל, מכסה, שימוש) יימחקו לצמיתות, וניתוחים שלא נוצלו יאבדו. מינוי ששולם בדפדפן מבוטל מיד; מינוי דרך App Store או Google Play צריך לבטל בהגדרות החנות.';

  @override
  String get deleteLocalData =>
      'למחוק גם את הנתונים במכשיר הזה (תיק, התראות, מועדפים, היסטוריה, ניתוחים שמורים)';

  @override
  String get deleteAccountConfirm => 'מחיקה לצמיתות';

  @override
  String get accountDeleted => 'החשבון שלך נמחק.';

  @override
  String get errDeleteAccount =>
      'לא ניתן היה למחוק את החשבון. בדקו את החיבור ונסו שוב.';

  @override
  String get aiTrialBriefNote =>
      'ניתוחי הניסיון קצרים ומופקים במודל AI מהיר יותר. עם מסלול תקבלו את ה-AI החזק ביותר שלנו, יותר חיפושים ברשת ואת האורכים רגיל ומעמיק.';

  @override
  String get billingMonthly => 'חודשי';

  @override
  String get billingYearly => 'שנתי';

  @override
  String get yearlyDiscount => '2 חודשים חינם';

  @override
  String get perYear => '/ שנה';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price לחודש';
  }

  @override
  String get subscriptionLegalYearly =>
      'המינוי השנתי מתחדש אוטומטית מדי שנה עד שמבטלים אותו. ההצטרפות למינוי מהווה הסכמה לתנאי השימוש ולמדיניות הפרטיות.';

  @override
  String get myAnalyses => 'הניתוחים שלי';

  @override
  String get navAlerts => 'התראות';

  @override
  String get inviteTitle => 'תצוגה מקדימה סגורה';

  @override
  String get inviteBody =>
      'בשלב זה WhatStock זמינה בהזמנה בלבד. הזינו את קוד ההזמנה שקיבלתם.';

  @override
  String get inviteCodeLabel => 'קוד הזמנה';

  @override
  String get inviteContinue => 'המשך';

  @override
  String get inviteInvalid => 'קוד ההזמנה הזה אינו תקף.';

  @override
  String get inviteExpired =>
      'תוקף ההזמנה הזו פג. בקשו קוד חדש ממי שהזמין אתכם.';

  @override
  String get inviteDeviceLimit =>
      'קוד ההזמנה הזה כבר נמצא בשימוש במספר המרבי של מכשירים.';

  @override
  String get previewConfidential => 'תצוגה מקדימה חסויה';

  @override
  String get errPreviewDailyLimit =>
      'מכסת הניתוחים היומית של תצוגה מקדימה זו נוצלה. נסו שוב מחר.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'לפני $count שעות',
      two: 'לפני שעתיים',
      one: 'לפני שעה',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'לפני $count ימים',
      two: 'לפני יומיים',
      one: 'לפני יום',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'לעדכן את הניתוח?';

  @override
  String staleBody(String age) {
    return 'הניתוח נוצר $age. ייתכן שהמחירים, החדשות והתוצאות השתנו מאז.';
  }

  @override
  String get staleKeep => 'הצגת הקודם';

  @override
  String get staleRefresh => 'יצירת ניתוח חדש';

  @override
  String seeAll(int count) {
    return 'הצגת הכול ($count)';
  }

  @override
  String get searchAnalyses => 'חיפוש בניתוחים שלך';

  @override
  String get deleteAnalysis => 'מחיקה';

  @override
  String analysisDeleted(String symbol) {
    return 'הניתוח של $symbol נמחק';
  }

  @override
  String get keyLevelAlertHint =>
      'הקישו על רמה כדי לקבל התראה כשהמחיר מגיע אליה.';

  @override
  String get shareAnalysisTitle => 'שיתוף הניתוח';

  @override
  String get shareAsImage => 'שיתוף כתמונה';

  @override
  String get shareAsText => 'שיתוף כטקסט';

  @override
  String get shareCardFooter => 'נוצר באמצעות WhatStock';

  @override
  String get shareCardDisclaimer => 'ניתוח AI · אינו ייעוץ השקעות';

  @override
  String get referralTitle => 'הזמנת חברים';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ניתוחים נוספים',
      one: 'ניתוח נוסף אחד',
    );
    return 'שתפו את הקוד שלכם. מי שתזמינו יקבל מיד $_temp0, ואתם תקבלו אותו הדבר אחרי הניתוח הראשון שלו.';
  }

  @override
  String get referralYourCode => 'הקוד שלכם';

  @override
  String referralStats(int invited, int rewarded) {
    return 'הוזמנו: $invited · תוגמלו: $rewarded';
  }

  @override
  String get referralHaveCode => 'קיבלתם קוד מחבר?';

  @override
  String get referralRedeem => 'מימוש';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'קיבלתם $count ניתוחים נוספים. ברוכים הבאים!',
      one: 'קיבלתם ניתוח נוסף אחד. ברוכים הבאים!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown => 'הקוד הזה לא קיים. בדקו אותו ונסו שוב.';

  @override
  String get referralErrOwn => 'אי אפשר לממש את הקוד האישי שלכם.';

  @override
  String get referralErrAlready => 'כבר מימשתם קוד של חבר.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ניתוחים נוספים',
      one: 'ניתוח נוסף אחד',
    );
    return 'אני עושה ניתוח מניות עם WhatStock: מצלמים מניה וה-AI מסביר אותה. עם הקוד שלי $code תקבלו $_temp0.';
  }

  @override
  String get referralCopied => 'הקוד הועתק';

  @override
  String get onboardTitle1 => 'צלמו מניה';

  @override
  String get onboardBody1 =>
      'מספיק מסך של אפליקציית מסחר, עיתון או לוגו של חברה: WhatStock מזהה את המניה ומציגה את המחיר, הגרף והנתונים המרכזיים שלה.';

  @override
  String get onboardTitle2 => 'מבינים הכול תוך דקות';

  @override
  String get onboardBody2 =>
      'ניתוח ה-AI מסביר מה מניע את המניה, מהם הסיכונים, מה השווי שלה ושלושה תרחישים לכיוון שאליו המחיר עשוי ללכת – עם מקורות ובשפה שלכם.';

  @override
  String get onboardTitle3 => 'תמיד מעודכנים';

  @override
  String get onboardBody3 =>
      'מועדפים, תיק ההשקעות שלכם והתראות מחיר יעדכנו אתכם. הניתוחים שלכם נשמרים במכשיר, מוכנים לפתיחה מחדש.';

  @override
  String get onboardNext => 'הבא';

  @override
  String get onboardStart => 'בואו נתחיל';

  @override
  String get onboardSkip => 'דילוג';

  @override
  String changesTitle(String date) {
    return 'מאז הניתוח הקודם ($date)';
  }

  @override
  String get changesPrice => 'מחיר';

  @override
  String get changesNoMajor => 'התחזית לא השתנתה באופן מהותי.';

  @override
  String get changesPreviousSummary => 'סיכום קודם';

  @override
  String get telemetryTitle => 'עזרו לשפר את WhatStock';

  @override
  String get telemetryBody =>
      'שיתוף נתונים סטטיסטיים אנונימיים על השימוש ודוחות קריסה: באילו תכונות נעשה שימוש ומה השתבש. לעולם לא המניות, הניתוחים או המידע האישי שלך. אפשר לשנות זאת בכל עת בהגדרות.';

  @override
  String get telemetryAllow => 'אישור';

  @override
  String get telemetryDecline => 'לא, תודה';

  @override
  String get telemetrySetting => 'נתונים סטטיסטיים אנונימיים ודוחות קריסה';

  @override
  String get telemetrySettingHint =>
      'תדירות השימוש בתכונות ודוחות שגיאות, ללא מידע אישי או תוכן החיפושים והניתוחים שלך.';

  @override
  String get askButton => 'לשאול על הניתוח הזה';

  @override
  String askTitle(String symbol) {
    return 'שאלות על $symbol';
  }

  @override
  String get askIntro =>
      'אפשר לשאול כל דבר על הניתוח: מה המשמעות של סיכון מסוים, מה עשוי לשנות את התחזית, איך חושב מספר מסוים. התשובות מבוססות על הניתוח הזה ואינן מהוות ייעוץ השקעות.';

  @override
  String get askHint => 'כתבו שאלה…';

  @override
  String get askSend => 'שליחה';

  @override
  String get askThinking => 'חושב…';

  @override
  String get askSuggest1 => 'מה הסיכון הגדול ביותר?';

  @override
  String get askSuggest2 => 'מה עשוי לשנות את התחזית?';

  @override
  String get askSuggest3 => 'הסבר את זה במילים פשוטות';

  @override
  String get askMaxReached =>
      'זו הייתה השאלה האחרונה לניתוח הזה. כדי לשאול עוד, צרו ניתוח חדש.';

  @override
  String get errAskLimit => 'הגעתם למכסת השאלות היומית. נסו שוב מחר.';

  @override
  String get eventTomorrow => 'מחר';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'בעוד $days ימים',
      two: 'בעוד יומיים',
      one: 'בעוד יום אחד',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'דוחות רבעוניים';

  @override
  String get eventBeforeOpen => 'לפני פתיחת המסחר';

  @override
  String get eventAfterClose => 'אחרי סגירת המסחר';

  @override
  String eventEpsEstimate(String value) {
    return 'תחזית רווח למניה: $value';
  }

  @override
  String get eventFromAnalysis => 'מהניתוח שלכם';

  @override
  String get eventsHint =>
      'מועדי הדוחות של המועדפים ושל המניות בתיק ההשקעות שלכם ב-90 הימים הקרובים, וגם אירועים עם תאריך שהניתוחים שלכם סימנו.';

  @override
  String get eventsEmpty =>
      'אין אירועים עם תאריך ב-90 הימים הקרובים. הוסיפו מועדפים או מניות לתיק ההשקעות כדי לראות כאן את מועדי הדוחות שלהן.';

  @override
  String get compareTitle => 'השוואה';

  @override
  String get compareAdd => 'הוספת מניה';

  @override
  String get compareRemove => 'הסרה';

  @override
  String get compareTickerHint => 'סימול, למשל MSFT';

  @override
  String get compareHint =>
      'נתונים מרכזיים זה לצד זה; הערך הטוב ביותר בכל שורה מודגש. הסכומים מוצגים במטבע של כל מניה.';

  @override
  String get compareNoAnalysis => 'אין עדיין ניתוח';

  @override
  String get portfolioDividends => 'דיבידנד שנתי';

  @override
  String portfolioDividendYield(String percent) {
    return 'תשואה של $percent';
  }

  @override
  String get portfolioDividendNote =>
      'הדיבידנד השנתי הצפוי מבוסס על הדיבידנדים ששולמו ב-12 החודשים האחרונים; אין ערובה לתשלומים עתידיים.';

  @override
  String positionDividend(String amount) {
    return 'דיבידנד: $amount בשנה';
  }

  @override
  String get chartAvgCost => 'הממוצע שלך';

  @override
  String get chartAlertLevel => 'התראה';

  @override
  String get marketsToday => 'השווקים היום';

  @override
  String get notesTitle => 'ההערות שלי';

  @override
  String get notesHint => 'למה קנית, אחרי מה לעקוב, מה יגרום לך למכור?';

  @override
  String get notesInfo => 'נשמר רק במכשיר הזה. ניתוח ה-AI מתחשב בהערות שלך.';

  @override
  String notesSaved(String date) {
    return 'נשמר $date';
  }

  @override
  String get peersTitle => 'חברות דומות';

  @override
  String get portfolioExport => 'ייצוא כ-CSV';

  @override
  String get portfolioImport => 'ייבוא מ-CSV';

  @override
  String get portfolioImportHint =>
      'יש להדביק רכישה אחת בכל שורה: סימול המניה, כמות, מחיר, מטבע, תאריך (YYYY-MM-DD). אפשר להפריד בין העמודות בפסיקים, בנקודה-פסיק או בטאבים; שורת הכותרת אינה חובה.';

  @override
  String get portfolioImportButton => 'ייבוא';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'נוספו $count רכישות',
      one: 'נוספה רכישה אחת',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count שורות דולגו',
      one: 'שורה אחת דולגה',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'תיק ההשקעות, המועדפים, התראות המחיר וההערות מסונכרנים בכל המכשירים שלך.';

  @override
  String syncLast(String time) {
    return 'סונכרן לאחרונה $time';
  }

  @override
  String get syncNow => 'סנכרון עכשיו';

  @override
  String get syncFailed => 'הסנכרון נכשל. ייעשה ניסיון חוזר באופן אוטומטי.';

  @override
  String get alertEmailTitle => 'אימייל כשהתראה מופעלת';

  @override
  String get alertEmailOn =>
      'אנחנו בודקים את ההתראות שלך כל כמה דקות ושולחים לך אימייל, גם כשהאפליקציה סגורה.';

  @override
  String get alertEmailSignIn =>
      'כדי לקבל התראות באימייל גם כשהאפליקציה סגורה, יש להיכנס עם כתובת האימייל שלך בהגדרות.';

  @override
  String get portfolioHistory => 'שווי לאורך זמן';

  @override
  String get portfolioReviewTitle => 'סקירת תיק השקעות ב-AI';

  @override
  String get portfolioReviewIntro =>
      'ה-AI בוחן את כל תיק ההשקעות שלך: ריכוזיות, חשיפה לסקטורים ולמטבעות, סיכונים משותפים למניות שלך ודיבידנדים. מנצל ניתוח אחד.';

  @override
  String get portfolioReviewButton => 'סקירת התיק שלי';

  @override
  String get portfolioReviewAgain => 'סקירה מחדש';

  @override
  String get portfolioReviewWorking => 'סוקרים את תיק ההשקעות שלך…';

  @override
  String get digestTitle => 'סיכום שבועי במייל';

  @override
  String get digestHint =>
      'בכל יום שני: איך זזו המועדפים ותיק ההשקעות שלך בשבוע שעבר, ומועדי הדוחות הקרובים שלהם.';

  @override
  String get benchmarkTitle => 'בהשוואה ל-S&P 500';

  @override
  String get benchmarkYours => 'הרכישות שלך';

  @override
  String get benchmarkIndex => 'אותם סכומים ב-S&P 500';

  @override
  String benchmarkAhead(String points) {
    return 'טוב מהמדד ב-$points נקודות אחוז';
  }

  @override
  String benchmarkBehind(String points) {
    return 'מפגר אחרי המדד ב-$points נקודות אחוז';
  }

  @override
  String get benchmarkHint =>
      'כאילו כל רכישה הושקעה באותו יום בקרן מחקה של S&P 500. ללא דיבידנדים; תשואות עבר אינן מנבאות תשואות עתידיות.';

  @override
  String get portfolioSell => 'מכירה';

  @override
  String portfolioSellTitle(String symbol) {
    return 'מכירת $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'מחיר מכירה למניה ($currency)';
  }

  @override
  String get portfolioSellDate => 'תאריך המכירה';

  @override
  String get portfolioSellAll => 'הכול';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'ברשותך $quantity';
  }

  @override
  String get portfolioSold => 'נמכרו';

  @override
  String get portfolioRealized => 'ממומש';

  @override
  String get portfolioClosed => 'פוזיציות סגורות';

  @override
  String get portfolioClosedNote => 'כל המניות נמכרו';

  @override
  String get portfolioTransactions => 'עסקאות';

  @override
  String get portfolioRealizedByYear => 'רווח ממומש לפי שנה';

  @override
  String get portfolioRealizedHint =>
      'המכירות מותאמות תחילה לרכישות הוותיקות ביותר שלך (FIFO) ומומרות לפי שער החליפין של היום. לדוח המס יש להשתמש בדוח של הברוקר.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'מאז הניתוח הזה פורסם דוח רבעוני חדש ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'דוח חדש';

  @override
  String get portfolioImportBrokers =>
      'גם קובצי ייצוא מ-Revolut, Trading 212 ו-Interactive Brokers מזוהים, כולל מכירות; דיבידנדים והפקדות מדולגים.';

  @override
  String get portfolioImportFile => 'בחירת קובץ';

  @override
  String offlineBanner(String time) {
    return 'אין חיבור – מוצגים הנתונים האחרונים שנשמרו ($time).';
  }
}
