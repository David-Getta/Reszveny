// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class AppLocalizationsEl extends AppLocalizations {
  AppLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get appTitle => 'StockLens';

  @override
  String get homeTagline => 'Φωτογραφίστε μια μετοχή και μάθετε τα πάντα για αυτήν.';

  @override
  String get homeHint =>
      'Ένας τίτλος μετοχής, η οθόνη μιας χρηματιστηριακής εφαρμογής, μια εφημερίδα ή ένα λογότυπο εταιρείας – οτιδήποτε ταυτοποιεί μια μετοχή.';

  @override
  String get takePhoto => 'Λήψη φωτογραφίας';

  @override
  String get chooseFromGallery => 'Επιλογή από τη συλλογή';

  @override
  String get chooseImage => 'Επιλογή εικόνας';

  @override
  String get enterTickerManually => 'Χειροκίνητη εισαγωγή συμβόλου';

  @override
  String get tickerInputLabel => 'Σύμβολο μετοχής (ticker)';

  @override
  String get tickerInputHint => 'π.χ. AAPL';

  @override
  String get lookUp => 'Αναζήτηση';

  @override
  String demoModeBanner(String symbols) {
    return 'Λειτουργία επίδειξης – δεν έχει ρυθμιστεί κλειδί δεδομένων αγοράς. Διαθέσιμα ενδεικτικά δεδομένα για: $symbols.';
  }

  @override
  String get recognizing => 'Ανάλυση εικόνας…';

  @override
  String get loadingData => 'Φόρτωση δεδομένων…';

  @override
  String get noCandidatesTitle => 'Δεν αναγνωρίστηκε μετοχή';

  @override
  String get noCandidatesBody =>
      'Δεν μπορέσαμε να εντοπίσουμε μετοχή σε αυτήν την εικόνα. Δοκιμάστε μια πιο ευκρινή φωτογραφία ή εισαγάγετε το σύμβολο χειροκίνητα.';

  @override
  String get whatWeSaw => 'Τι είδαμε';

  @override
  String get chooseCandidateTitle => 'Ποια μετοχή εννοούσατε;';

  @override
  String confidencePercent(int percent) {
    return '$percent% βεβαιότητα';
  }

  @override
  String get settings => 'Ρυθμίσεις';

  @override
  String get language => 'Γλώσσα';

  @override
  String get systemLanguage => 'Προεπιλογή συστήματος';

  @override
  String get about => 'Σχετικά';

  @override
  String get disclaimer =>
      'Η εφαρμογή παρέχει μόνο πληροφορίες και δεν αποτελεί επενδυτική συμβουλή. Τα δεδομένα μπορεί να έχουν καθυστέρηση ή να είναι ανακριβή.';

  @override
  String dataSource(String source) {
    return 'Πηγή δεδομένων: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Αναγνώριση: $source';
  }

  @override
  String get retry => 'Επανάληψη';

  @override
  String get cancel => 'Άκυρο';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Κλείσιμο';

  @override
  String get errorGeneric => 'Κάτι πήγε στραβά.';

  @override
  String get errorSectionUnavailable => 'Δεν ήταν δυνατή η φόρτωση αυτής της ενότητας.';

  @override
  String get notAvailable => 'μ/δ';

  @override
  String get sectionIdentity => 'Ταυτοποίηση';

  @override
  String get sectionPrice => 'Τιμή';

  @override
  String get sectionValuation => 'Αποτίμηση';

  @override
  String get sectionFinancials => 'Οικονομικά στοιχεία';

  @override
  String get sectionDividend => 'Μέρισμα';

  @override
  String get sectionProfile => 'Προφίλ εταιρείας';

  @override
  String get sectionAnalysts => 'Αξιολογήσεις αναλυτών';

  @override
  String get sectionNews => 'Ειδήσεις';

  @override
  String get sectionRecognition => 'Λεπτομέρειες αναγνώρισης';

  @override
  String get labelSymbol => 'Σύμβολο';

  @override
  String get labelExchange => 'Χρηματιστήριο';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Νόμισμα';

  @override
  String get labelCountry => 'Χώρα';

  @override
  String get labelIndustry => 'Κλάδος';

  @override
  String get labelSector => 'Τομέας';

  @override
  String get labelWebsite => 'Ιστότοπος';

  @override
  String get labelIpoDate => 'Ημερομηνία IPO';

  @override
  String get labelMarketCap => 'Κεφαλαιοποίηση';

  @override
  String get labelSharesOutstanding => 'Μετοχές σε κυκλοφορία';

  @override
  String get labelEmployees => 'Εργαζόμενοι';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Έδρα';

  @override
  String get labelDescription => 'Περιγραφή';

  @override
  String get labelLastPrice => 'Τελευταία τιμή';

  @override
  String get labelChange => 'Μεταβολή';

  @override
  String get labelOpen => 'Άνοιγμα';

  @override
  String get labelDayHigh => 'Υψηλό ημέρας';

  @override
  String get labelDayLow => 'Χαμηλό ημέρας';

  @override
  String get labelPreviousClose => 'Προηγούμενο κλείσιμο';

  @override
  String get labelWeek52High => 'Υψηλό 52 εβδομάδων';

  @override
  String get labelWeek52Low => 'Χαμηλό 52 εβδομάδων';

  @override
  String get labelAverageVolume10d => 'Μέσος όγκος (10 ημέρες)';

  @override
  String updatedAt(String time) {
    return 'Ενημερώθηκε $time';
  }

  @override
  String get labelPeTrailing => 'P/E (τρέχον)';

  @override
  String get labelPeForward => 'P/E (προβλεπόμενο)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / ελεύθερες ταμειακές ροές';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Βήτα';

  @override
  String get labelRevenueTtm => 'Έσοδα (TTM)';

  @override
  String get labelNetIncomeTtm => 'Καθαρά κέρδη (TTM)';

  @override
  String get labelGrossMargin => 'Μικτό περιθώριο';

  @override
  String get labelOperatingMargin => 'Λειτουργικό περιθώριο';

  @override
  String get labelNetMargin => 'Καθαρό περιθώριο';

  @override
  String get labelRoe => 'Απόδοση ιδίων κεφαλαίων';

  @override
  String get labelRoa => 'Απόδοση ενεργητικού';

  @override
  String get labelDebtToEquity => 'Χρέος / ίδια κεφάλαια';

  @override
  String get labelCurrentRatio => 'Δείκτης γενικής ρευστότητας';

  @override
  String get labelRevenueGrowth => 'Αύξηση εσόδων (YoY)';

  @override
  String get labelEpsGrowth => 'Αύξηση EPS (YoY)';

  @override
  String get labelDividendYield => 'Μερισματική απόδοση';

  @override
  String get labelDividendPerShare => 'Μέρισμα ανά μετοχή';

  @override
  String get labelPayoutRatio => 'Ποσοστό διανομής';

  @override
  String get labelConsensus => 'Συναίνεση';

  @override
  String get ratingStrongBuy => 'Ισχυρή αγορά';

  @override
  String get ratingBuy => 'Αγορά';

  @override
  String get ratingHold => 'Διακράτηση';

  @override
  String get ratingSell => 'Πώληση';

  @override
  String get ratingStrongSell => 'Ισχυρή πώληση';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count αναλυτές', one: '1 αναλυτής');
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Περίοδος: $period';
  }

  @override
  String get noNews => 'Δεν υπάρχουν πρόσφατες ειδήσεις.';

  @override
  String get openArticle => 'Άνοιγμα άρθρου';

  @override
  String get openLinkFailed => 'Δεν ήταν δυνατό το άνοιγμα του συνδέσμου.';

  @override
  String get recognitionSummary => 'Σύνοψη';

  @override
  String get recognitionEvidence => 'Γιατί το πιστεύουμε';

  @override
  String get recognitionRawText => 'Κείμενο που διαβάστηκε από την εικόνα';

  @override
  String get errMissingAnthropicKey =>
      'Η αναγνώριση εικόνας δεν έχει ρυθμιστεί (δεν υπάρχει ANTHROPIC_API_KEY). Εισαγάγετε το σύμβολο χειροκίνητα.';

  @override
  String get errRecognitionUnreachable =>
      'Δεν ήταν δυνατή η σύνδεση με την υπηρεσία αναγνώρισης. Ελέγξτε τη σύνδεσή σας στο διαδίκτυο.';

  @override
  String errRecognitionHttp(String status) {
    return 'Η υπηρεσία αναγνώρισης επέστρεψε σφάλμα (HTTP $status).';
  }

  @override
  String get errRecognitionRefused => 'Η υπηρεσία αναγνώρισης δεν μπόρεσε να επεξεργαστεί αυτήν την εικόνα.';

  @override
  String get errRecognitionTruncated => 'Η απάντηση της αναγνώρισης διακόπηκε. Δοκιμάστε ξανά.';

  @override
  String get errRecognitionBadResponse => 'Μη αναμενόμενη απάντηση από την υπηρεσία αναγνώρισης.';

  @override
  String get errRecognitionEmpty => 'Η υπηρεσία αναγνώρισης επέστρεψε κενή απάντηση.';

  @override
  String get errMissingFinnhubKey => 'Τα δεδομένα αγοράς δεν έχουν ρυθμιστεί (δεν υπάρχει FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Δεν ήταν δυνατή η σύνδεση με την υπηρεσία δεδομένων αγοράς. Ελέγξτε τη σύνδεσή σας στο διαδίκτυο.';

  @override
  String get errMarketRateLimited => 'Πάρα πολλά αιτήματα προς την υπηρεσία δεδομένων αγοράς. Περιμένετε ένα λεπτό.';

  @override
  String errMarketHttp(String status) {
    return 'Η υπηρεσία δεδομένων αγοράς επέστρεψε σφάλμα (HTTP $status).';
  }

  @override
  String get errMarketBadResponse => 'Μη αναμενόμενη απάντηση από την υπηρεσία δεδομένων αγοράς.';

  @override
  String errNoQuote(String symbol) {
    return 'Δεν βρέθηκαν δεδομένα τιμής για $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Δεν βρέθηκε προφίλ εταιρείας για $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Η λειτουργία επίδειξης υποστηρίζει μόνο $symbols. Προσθέστε ένα FINNHUB_API_KEY για ζωντανά δεδομένα.';
  }

  @override
  String errUnknown(String detail) {
    return 'Κάτι πήγε στραβά: $detail';
  }

  @override
  String get newSearch => 'Νέα αναζήτηση';

  @override
  String get recentSearches => 'Πρόσφατα';

  @override
  String get noRecentSearches => 'Δεν υπάρχουν πρόσφατες αναζητήσεις ακόμη.';

  @override
  String get clearRecent => 'Εκκαθάριση πρόσφατων';

  @override
  String get greeting => 'Ποια μετοχή να δούμε;';

  @override
  String get searchHint => 'Σύμβολο ή όνομα εταιρείας';

  @override
  String get attachImage => 'Επισύναψη εικόνας';

  @override
  String get searchResultsTitle => 'Αποτελέσματα αναζήτησης';

  @override
  String errNoResults(String query) {
    return 'Δεν βρέθηκαν μετοχές για «$query».';
  }

  @override
  String get quickBarHint => 'Πληκτρολογήστε σύμβολο ή όνομα εταιρείας…';

  @override
  String get openFullWindow => 'Άνοιγμα παραθύρου';

  @override
  String hotkeyHint(String shortcut) {
    return 'Πατήστε $shortcut οπουδήποτε για να εμφανιστεί το StockLens.';
  }

  @override
  String get trayOpen => 'Άνοιγμα StockLens';

  @override
  String get trayQuickSearch => 'Γρήγορη αναζήτηση';

  @override
  String get trayQuit => 'Έξοδος';

  @override
  String get appearance => 'Εμφάνιση';

  @override
  String get themeSystem => 'Σύστημα';

  @override
  String get themeDark => 'Σκούρο';

  @override
  String get themeLight => 'Φωτεινό';

  @override
  String get back => 'Πίσω';

  @override
  String get aiSectionTitle => 'Ανάλυση AI';

  @override
  String get aiIntro =>
      'Μια αναλυτική επισκόπηση γραμμένη από AI: περίληψη των πρόσφατων ειδήσεων, η επιχείρηση, τα δυνατά σημεία, οι κίνδυνοι και οι κρυφοί παράγοντες, η αποτίμηση, μια προοπτική τιμής με σενάρια από ψυχολογική, κοινωνιολογική, τεχνική και μακροοικονομική σκοπιά, και τι να προσέξετε.';

  @override
  String get aiGenerate => 'Δημιουργία ανάλυσης';

  @override
  String get aiRegenerate => 'Δημιουργία ξανά';

  @override
  String get aiGenerating => 'Προετοιμασία της ανάλυσης… μπορεί να χρειαστεί ένα ή δύο λεπτά.';

  @override
  String get aiSources => 'Πηγές';

  @override
  String aiGeneratedAt(String time) {
    return 'Δημιουργήθηκε $time';
  }

  @override
  String get aiDisclaimer =>
      'Ανάλυση που δημιουργήθηκε από AI με βάση δημόσια δεδομένα και πρόσφατες ειδήσεις. Μπορεί να περιέχει λάθη ή να μην είναι ενημερωμένη και δεν αποτελεί επενδυτική συμβουλή.';

  @override
  String get errAiNotConfigured => 'Η ανάλυση AI δεν έχει ρυθμιστεί (δεν υπάρχει ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable => 'Δεν ήταν δυνατή η σύνδεση με την υπηρεσία AI. Ελέγξτε τη σύνδεσή σας στο διαδίκτυο.';

  @override
  String errAiHttp(String status) {
    return 'Η υπηρεσία AI επέστρεψε σφάλμα (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Η υπηρεσία AI αρνήθηκε να αναλύσει αυτή τη μετοχή.';

  @override
  String get errAiBadResponse => 'Μη αναμενόμενη απάντηση από την υπηρεσία AI.';

  @override
  String get sectionChart => 'Διάγραμμα τιμής';

  @override
  String get rangeOneWeek => '1 εβδ.';

  @override
  String get rangeOneMonth => '1 μήν.';

  @override
  String get rangeThreeMonths => '3 μήν.';

  @override
  String get rangeOneYear => '1 έτος';

  @override
  String get rangeFiveYears => '5 έτη';

  @override
  String get chartUnavailable => 'Το ιστορικό τιμών δεν είναι διαθέσιμο από την τρέχουσα πηγή δεδομένων.';

  @override
  String get sectionStatements => 'Οικονομικές καταστάσεις (ετήσιες)';

  @override
  String get labelFiscalYear => 'Οικονομικό έτος';

  @override
  String get labelRevenue => 'Έσοδα';

  @override
  String get labelNetIncome => 'Καθαρά κέρδη';

  @override
  String get labelTotalAssets => 'Σύνολο ενεργητικού';

  @override
  String get labelTotalLiabilities => 'Σύνολο υποχρεώσεων';

  @override
  String get labelEquity => 'Ίδια κεφάλαια';

  @override
  String get labelOperatingCashFlow => 'Λειτουργικές ταμειακές ροές';

  @override
  String get statementsUnavailable =>
      'Δεν υπάρχουν διαθέσιμες δημοσιευμένες οικονομικές καταστάσεις για αυτή τη μετοχή.';

  @override
  String get launchAtLogin => 'Εκκίνηση κατά τη σύνδεση';

  @override
  String get hotkeyLabel => 'Γενική συντόμευση';

  @override
  String get hotkeyRecordHint => 'Κάντε κλικ εδώ και μετά πατήστε τον νέο συνδυασμό πλήκτρων';

  @override
  String get hotkeyReset => 'Επαναφορά προεπιλογής';

  @override
  String get pasteImage => 'Επικόλληση εικόνας από το πρόχειρο';

  @override
  String get errClipboardNoImage => 'Δεν υπάρχει εικόνα στο πρόχειρο.';

  @override
  String get favorites => 'Αγαπημένα';

  @override
  String get addToFavorites => 'Προσθήκη στα αγαπημένα';

  @override
  String get removeFromFavorites => 'Αφαίρεση από τα αγαπημένα';

  @override
  String get noFavorites => 'Δεν υπάρχουν αγαπημένα ακόμη. Πατήστε το αστέρι σε μια μετοχή για να την προσθέσετε.';

  @override
  String get displayCurrency => 'Νόμισμα εμφάνισης';

  @override
  String get displayCurrencyNone => 'Μόνο το νόμισμα της μετοχής';

  @override
  String labelConverted(String currency) {
    return '≈ σε $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Ισοτιμία: 1 $from = $rate $to (ΕΚΤ, $date)';
  }

  @override
  String get updates => 'Ενημερώσεις';

  @override
  String currentVersion(String version) {
    return 'Έκδοση $version';
  }

  @override
  String get autoUpdate => 'Αυτόματη εγκατάσταση ενημερώσεων';

  @override
  String get checkForUpdates => 'Έλεγχος για ενημερώσεις';

  @override
  String get updateChecking => 'Έλεγχος για ενημερώσεις…';

  @override
  String get updateUpToDate => 'Έχετε την πιο πρόσφατη έκδοση.';

  @override
  String updateAvailable(String version) {
    return 'Η έκδοση $version είναι διαθέσιμη.';
  }

  @override
  String get updateDownloading => 'Λήψη της ενημέρωσης στο παρασκήνιο…';

  @override
  String get updateDownloaded => 'Η ενημέρωση είναι έτοιμη. Επανεκκινήστε για να την εγκαταστήσετε.';

  @override
  String get updateNow => 'Ενημέρωση';

  @override
  String get restartNow => 'Επανεκκίνηση';

  @override
  String get updatesViaStore => 'Οι ενημερώσεις έρχονται αυτόματα μέσω του καταστήματος εφαρμογών.';

  @override
  String get updateCheckFailed => 'Δεν ήταν δυνατός ο έλεγχος για ενημερώσεις.';

  @override
  String get subscription => 'Συνδρομή';

  @override
  String get planTrial => 'Δοκιμαστικό';

  @override
  String get planNormal => 'Κανονικό';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Δεν υπάρχει ενεργό πρόγραμμα';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count αναλύσεις τον μήνα';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Δωρεάν δοκιμή $days ημερών με $count αναλύσεις';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Απομένουν $days ημέρες δοκιμής',
      one: 'Απομένει 1 ημέρα δοκιμής',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired => 'Η δωρεάν δοκιμή σας έληξε. Επιλέξτε ένα πρόγραμμα για να συνεχίσετε τις αναλύσεις.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Απομένουν $remaining από $total αναλύσεις για αυτήν την περίοδο';
  }

  @override
  String extraCredits(int count) {
    return '$count επιπλέον αναλύσεις';
  }

  @override
  String renewsOn(String date) {
    return 'Ανανεώνεται $date';
  }

  @override
  String get choosePlan => 'Επιλέξτε πρόγραμμα';

  @override
  String get currentPlan => 'Τρέχον πρόγραμμα';

  @override
  String get subscribe => 'Εγγραφή';

  @override
  String get perMonth => '/ μήνα';

  @override
  String get extraPacksTitle => 'Χρειάζεστε περισσότερες; Αγοράστε επιπλέον αναλύσεις';

  @override
  String get extraPacksHint => 'Οι επιπλέον αναλύσεις δεν λήγουν ποτέ και χρησιμοποιούνται μετά το μηνιαίο όριό σας.';

  @override
  String get buy => 'Αγορά';

  @override
  String get restorePurchases => 'Επαναφορά αγορών';

  @override
  String get manageSubscription => 'Διαχείριση συνδρομής';

  @override
  String get purchaseSuccess => 'Ευχαριστούμε! Η αγορά σας είναι ενεργή.';

  @override
  String get purchasePending => 'Η αγορά είναι σε εκκρεμότητα…';

  @override
  String get purchaseFailed => 'Δεν ήταν δυνατή η ολοκλήρωση της αγοράς.';

  @override
  String get purchaseCanceled => 'Η αγορά ακυρώθηκε.';

  @override
  String get billingUnavailable =>
      'Οι αγορές δεν είναι ακόμη διαθέσιμες σε αυτήν την πλατφόρμα. Εγγραφείτε από το τηλέφωνο ή το Mac σας· το πρόγραμμά σας θα λειτουργεί σε κάθε συσκευή.';

  @override
  String get errQuotaExceeded =>
      'Δεν σας απομένουν αναλύσεις για αυτήν την περίοδο. Αναβαθμίστε το πρόγραμμά σας ή αγοράστε επιπλέον αναλύσεις.';

  @override
  String get errTrialExpired => 'Η δωρεάν δοκιμή σας έληξε. Επιλέξτε ένα πρόγραμμα για να συνεχίσετε.';

  @override
  String get errNoPlan => 'Για την ανάλυση AI απαιτείται ενεργό πρόγραμμα.';

  @override
  String get viewPlans => 'Προβολή προγραμμάτων';

  @override
  String get usageTitle => 'Χρήση';

  @override
  String get demoPurchaseNote => 'Δοκιμαστική χρέωση: οι αγορές σε αυτήν την πλατφόρμα είναι προσομοίωση.';

  @override
  String get mostPopular => 'Πιο δημοφιλές';

  @override
  String get bestValue => 'Καλύτερη αξία';

  @override
  String get planFeaturesCommon =>
      'Η αναγνώριση φωτογραφιών, τα ζωντανά δεδομένα, τα διαγράμματα, τα αγαπημένα και όλες οι 44 γλώσσες περιλαμβάνονται σε κάθε πρόγραμμα. Το όριο αφορά τις αναλύσεις AI.';

  @override
  String get searchLanguages => 'Αναζήτηση γλωσσών…';

  @override
  String get noLanguageMatch => 'Δεν βρέθηκε γλώσσα που να ταιριάζει.';

  @override
  String get aiSettings => 'Ανάλυση AI';

  @override
  String get aiLength => 'Μήκος';

  @override
  String get aiDepthBrief => 'Σύντομη';

  @override
  String get aiDepthStandard => 'Τυπική';

  @override
  String get aiDepthDeep => 'Εις βάθος';

  @override
  String get aiDepthBriefDesc => 'Τα βασικά, γρήγορα.';

  @override
  String get aiDepthStandardDesc => 'Πλήρης αναφορά με όλες τις ενότητες.';

  @override
  String get aiDepthDeepDesc =>
      'Περισσότερες αναζητήσεις στο web, σύγκριση με ομοειδείς εταιρείες και μεγαλύτερη λεπτομέρεια.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Περίπου $min–$max λέξεις';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'χρησιμοποιεί $count αναλύσεις',
      one: 'χρησιμοποιεί 1 ανάλυση',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Επίπεδο αναγνώστη';

  @override
  String get aiReaderBeginner => 'Αρχάριος';

  @override
  String get aiReaderExperienced => 'Έμπειρος';

  @override
  String get aiReaderBeginnerDesc => 'Απλή γλώσσα· κάθε τεχνικός όρος εξηγείται.';

  @override
  String get aiReaderExperiencedDesc => 'Πιο πυκνό κείμενο με καθιερωμένη χρηματοοικονομική ορολογία.';

  @override
  String get aiCounterArgument => 'Ισχυρότερο αντεπιχείρημα';

  @override
  String get aiCounterArgumentDesc =>
      'Η σύνοψη κλείνει πάντα με το ισχυρότερο επιχείρημα κατά του δικού της συμπεράσματος.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Έως $count αναζητήσεις στο web ανά ανάλυση με το πρόγραμμά σας',
      one: 'Έως 1 αναζήτηση στο web ανά ανάλυση με το πρόγραμμά σας',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Τυπικό μήκος ανά πρόγραμμα: Κανονικό $normal, Pro $pro, Max $max, Ultra $ultra. Η «Σύντομη» χρησιμοποιεί 2 λιγότερες αναζητήσεις, η «Εις βάθος» 2 περισσότερες.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'έως $count αναζητήσεις στο web',
      one: 'έως 1 αναζήτηση στο web',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count αναζητήσεις στο web ανά ανάλυση',
      one: '1 αναζήτηση στο web ανά ανάλυση',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Αυτό το μήκος απαιτεί $needed αναλύσεις, αλλά σας απομένουν μόνο $left. Επιλέξτε μικρότερο μήκος στις Ρυθμίσεις ή αποκτήστε περισσότερες αναλύσεις.';
  }
}
