// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class AppLocalizationsEl extends AppLocalizations {
  AppLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Φωτογραφίστε μια μετοχή και μάθετε τα πάντα για αυτήν.';

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
  String get errorSectionUnavailable =>
      'Δεν ήταν δυνατή η φόρτωση αυτής της ενότητας.';

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
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count αναλυτές',
      one: '1 αναλυτής',
    );
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
  String get errRecognitionRefused =>
      'Η υπηρεσία αναγνώρισης δεν μπόρεσε να επεξεργαστεί αυτήν την εικόνα.';

  @override
  String get errRecognitionTruncated =>
      'Η απάντηση της αναγνώρισης διακόπηκε. Δοκιμάστε ξανά.';

  @override
  String get errRecognitionBadResponse =>
      'Μη αναμενόμενη απάντηση από την υπηρεσία αναγνώρισης.';

  @override
  String get errRecognitionEmpty =>
      'Η υπηρεσία αναγνώρισης επέστρεψε κενή απάντηση.';

  @override
  String get errMissingFinnhubKey =>
      'Τα δεδομένα αγοράς δεν έχουν ρυθμιστεί (δεν υπάρχει FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Δεν ήταν δυνατή η σύνδεση με την υπηρεσία δεδομένων αγοράς. Ελέγξτε τη σύνδεσή σας στο διαδίκτυο.';

  @override
  String get errMarketRateLimited =>
      'Πάρα πολλά αιτήματα προς την υπηρεσία δεδομένων αγοράς. Περιμένετε ένα λεπτό.';

  @override
  String errMarketHttp(String status) {
    return 'Η υπηρεσία δεδομένων αγοράς επέστρεψε σφάλμα (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Μη αναμενόμενη απάντηση από την υπηρεσία δεδομένων αγοράς.';

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
    return 'Πατήστε $shortcut οπουδήποτε για να εμφανιστεί το WhatStock.';
  }

  @override
  String get trayOpen => 'Άνοιγμα WhatStock';

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
  String get aiGenerating =>
      'Προετοιμασία της ανάλυσης… μπορεί να χρειαστεί ένα ή δύο λεπτά.';

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
  String get errAiNotConfigured =>
      'Η ανάλυση AI δεν έχει ρυθμιστεί (δεν υπάρχει ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Δεν ήταν δυνατή η σύνδεση με την υπηρεσία AI. Ελέγξτε τη σύνδεσή σας στο διαδίκτυο.';

  @override
  String errAiHttp(String status) {
    return 'Η υπηρεσία AI επέστρεψε σφάλμα (HTTP $status).';
  }

  @override
  String get errAiRefused =>
      'Η υπηρεσία AI αρνήθηκε να αναλύσει αυτή τη μετοχή.';

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
  String get chartUnavailable =>
      'Το ιστορικό τιμών δεν είναι διαθέσιμο από την τρέχουσα πηγή δεδομένων.';

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
  String get hotkeyRecordHint =>
      'Κάντε κλικ εδώ και μετά πατήστε τον νέο συνδυασμό πλήκτρων';

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
  String get noFavorites =>
      'Δεν υπάρχουν αγαπημένα ακόμη. Πατήστε το αστέρι σε μια μετοχή για να την προσθέσετε.';

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
  String get updateDownloaded =>
      'Η ενημέρωση είναι έτοιμη. Επανεκκινήστε για να την εγκαταστήσετε.';

  @override
  String get updateNow => 'Ενημέρωση';

  @override
  String get restartNow => 'Επανεκκίνηση';

  @override
  String get updatesViaStore =>
      'Οι ενημερώσεις έρχονται αυτόματα μέσω του καταστήματος εφαρμογών.';

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
  String get trialExpired =>
      'Η δωρεάν δοκιμή σας έληξε. Επιλέξτε ένα πρόγραμμα για να συνεχίσετε τις αναλύσεις.';

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
  String get extraPacksTitle =>
      'Χρειάζεστε περισσότερες; Αγοράστε επιπλέον αναλύσεις';

  @override
  String get extraPacksHint =>
      'Οι επιπλέον αναλύσεις δεν λήγουν ποτέ και χρησιμοποιούνται μετά το μηνιαίο όριό σας.';

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
  String get errTrialExpired =>
      'Η δωρεάν δοκιμή σας έληξε. Επιλέξτε ένα πρόγραμμα για να συνεχίσετε.';

  @override
  String get errNoPlan => 'Για την ανάλυση AI απαιτείται ενεργό πρόγραμμα.';

  @override
  String get viewPlans => 'Προβολή προγραμμάτων';

  @override
  String get usageTitle => 'Χρήση';

  @override
  String get demoPurchaseNote =>
      'Δοκιμαστική χρέωση: οι αγορές σε αυτήν την πλατφόρμα είναι προσομοίωση.';

  @override
  String get mostPopular => 'Πιο δημοφιλές';

  @override
  String get bestValue => 'Καλύτερη αξία';

  @override
  String get planFeaturesCommon =>
      'Η αναγνώριση φωτογραφιών, τα ζωντανά δεδομένα, τα διαγράμματα, τα αγαπημένα και όλες οι 120 γλώσσες περιλαμβάνονται σε κάθε πρόγραμμα. Το όριο αφορά τις αναλύσεις AI.';

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
  String get aiReaderBeginnerDesc =>
      'Απλή γλώσσα· κάθε τεχνικός όρος εξηγείται.';

  @override
  String get aiReaderExperiencedDesc =>
      'Πιο πυκνό κείμενο με καθιερωμένη χρηματοοικονομική ορολογία.';

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

  @override
  String get outlookMarketMood => 'Κλίμα αγοράς';

  @override
  String get moodVeryPessimistic => 'Πολύ απαισιόδοξο';

  @override
  String get moodPessimistic => 'Απαισιόδοξο';

  @override
  String get moodNeutral => 'Ουδέτερο';

  @override
  String get moodOptimistic => 'Αισιόδοξο';

  @override
  String get moodVeryOptimistic => 'Πολύ αισιόδοξο';

  @override
  String get scenarioBull => 'Αισιόδοξο σενάριο';

  @override
  String get scenarioBase => 'Βασικό σενάριο';

  @override
  String get scenarioBear => 'Απαισιόδοξο σενάριο';

  @override
  String outlookCurrentPrice(String price) {
    return 'Τρέχουσα τιμή: $price';
  }

  @override
  String get outlookKeyLevels => 'Βασικά επίπεδα';

  @override
  String get keyLevelSupport => 'Στήριξη';

  @override
  String get keyLevelResistance => 'Αντίσταση';

  @override
  String get keyLevelAnchor => 'Επίπεδο αναφοράς';

  @override
  String get upcomingEvents => 'Επερχόμενα γεγονότα';

  @override
  String get outlookChartNote =>
      'Ενδεικτικά εύρη· οι πιθανότητες είναι χονδρικές εκτιμήσεις, όχι προβλέψεις.';

  @override
  String get accountTitle => 'Λογαριασμός';

  @override
  String get signIn => 'Σύνδεση';

  @override
  String get signOut => 'Αποσύνδεση';

  @override
  String get notSignedIn => 'Δεν έχετε συνδεθεί';

  @override
  String get accountBenefit =>
      'Συνδεθείτε για να λειτουργεί η συνδρομή σας σε όλες τις συσκευές σας.';

  @override
  String get accountSyncedNote =>
      'Η συνδρομή σας και οι αναλύσεις που απομένουν είναι ίδιες σε κάθε συσκευή.';

  @override
  String get signInTitle => 'Σύνδεση στο WhatStock';

  @override
  String get emailLabel => 'Διεύθυνση email';

  @override
  String get continueWithEmail => 'Συνέχεια με email';

  @override
  String codeSentTo(String email) {
    return 'Στείλαμε έναν 6ψήφιο κωδικό στο $email. Ισχύει για 10 λεπτά.';
  }

  @override
  String get codeLabel => 'Κωδικός σύνδεσης';

  @override
  String get resendCode => 'Αποστολή νέου κωδικού';

  @override
  String get useDifferentEmail => 'Χρήση άλλου email';

  @override
  String get errInvalidCode => 'Ο κωδικός είναι λανθασμένος ή έχει λήξει.';

  @override
  String get errInvalidEmail => 'Εισαγάγετε μια έγκυρη διεύθυνση email.';

  @override
  String get errSignInFailed =>
      'Η σύνδεση απέτυχε. Ελέγξτε τη σύνδεσή σας και δοκιμάστε ξανά.';

  @override
  String get checkoutWaiting =>
      'Ολοκληρώστε την πληρωμή στο πρόγραμμα περιήγησης. Η εφαρμογή θα ενημερωθεί αυτόματα μόλις ολοκληρωθεί.';

  @override
  String get paymentViaStripe =>
      'Ασφαλής πληρωμή στο πρόγραμμα περιήγησης μέσω Stripe. Ακύρωση οποιαδήποτε στιγμή.';

  @override
  String get paymentViaStore =>
      'Η χρέωση γίνεται μέσω του λογαριασμού σας στο App Store ή στο Google Play. Ακύρωση οποιαδήποτε στιγμή από τις ρυθμίσεις του καταστήματος.';

  @override
  String get keySpace => 'Διάστημα';

  @override
  String get doubleOptionTitle => 'Διπλό πάτημα του Option';

  @override
  String get doubleOptionSubtitle =>
      'Το WhatStock εμφανίζεται επίσης αν πατήσετε γρήγορα δύο φορές το πλήκτρο Option.';

  @override
  String get doubleOptionPermission =>
      'Για να λειτουργεί και σε άλλες εφαρμογές, ενεργοποιήστε το WhatStock στις Ρυθμίσεις συστήματος → Απόρρητο και ασφάλεια → Παρακολούθηση εισόδου και, στη συνέχεια, ανοίξτε ξανά την εφαρμογή.';

  @override
  String get openSystemSettings => 'Άνοιγμα Ρυθμίσεων συστήματος';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Πατήστε $shortcut ή δύο φορές το Option οπουδήποτε για να εμφανιστεί το WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Πιθανότερο';

  @override
  String get longTermToday => 'Σήμερα';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years έτη',
      one: '1 έτος',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range ετησίως';
  }

  @override
  String longTermLikely(String price) {
    return 'πιθανότερη τιμή $price';
  }

  @override
  String get confidenceLow => 'Χαμηλή βεβαιότητα';

  @override
  String get confidenceMedium => 'Μέτρια βεβαιότητα';

  @override
  String get confidenceHigh => 'Υψηλή βεβαιότητα';

  @override
  String get longTermNote =>
      'Τα μακροπρόθεσμα εύρη βασίζονται στις αναφερόμενες παραδοχές και διευρύνονται με τον χρόνο. Τιμές χωρίς μερίσματα. Χονδρικές εκτιμήσεις, όχι προβλέψεις.';

  @override
  String get portfolio => 'Χαρτοφυλάκιο';

  @override
  String get portfolioEmpty =>
      'Είναι ακόμη άδειο. Ανοίξτε μια μετοχή και πατήστε «Προσθήκη στο χαρτοφυλάκιο» για να παρακολουθείτε ό,τι κατέχετε.';

  @override
  String get portfolioLocalNote =>
      'Αποθηκεύεται μόνο σε αυτή τη συσκευή. Τα σύνολα μετατρέπονται με τις ισοτιμίες αναφοράς της ΕΚΤ· οι τιμές μπορεί να καθυστερούν.';

  @override
  String get addToPortfolio => 'Προσθήκη στο χαρτοφυλάκιο';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Προσθήκη $symbol';
  }

  @override
  String get portfolioQuantity => 'Αριθμός μετοχών';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Τιμή ανά μετοχή ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Ημερομηνία αγοράς';

  @override
  String get portfolioAdd => 'Προσθήκη';

  @override
  String get portfolioInvalidNumber =>
      'Εισαγάγετε αριθμό μεγαλύτερο από το μηδέν.';

  @override
  String portfolioAdded(String symbol) {
    return 'Η $symbol προστέθηκε στο χαρτοφυλάκιο.';
  }

  @override
  String get portfolioTotalValue => 'Συνολική αξία';

  @override
  String get portfolioToday => 'Σήμερα';

  @override
  String get portfolioGainLoss => 'Κέρδος/ζημία';

  @override
  String get portfolioInvested => 'Επενδυμένα';

  @override
  String get portfolioAllocation => 'Κατανομή';

  @override
  String get portfolioPositions => 'Θέσεις';

  @override
  String portfolioAvgCost(String price) {
    return 'μέση τιμή $price';
  }

  @override
  String get portfolioYourPosition => 'Η θέση σας';

  @override
  String get portfolioPurchases => 'Αγορές';

  @override
  String get portfolioRemove => 'Αφαίρεση';

  @override
  String get portfolioExcluded =>
      'Οι θέσεις χωρίς τιμή ή ισοτιμία δεν περιλαμβάνονται στα σύνολα.';

  @override
  String get priceAlerts => 'Ειδοποιήσεις τιμής';

  @override
  String get setPriceAlert => 'Ορισμός ειδοποίησης τιμής';

  @override
  String alertDialogTitle(String symbol) {
    return 'Ειδοποίηση τιμής · $symbol';
  }

  @override
  String get alertKindAbove => 'Ανέβει πάνω από';

  @override
  String get alertKindBelow => 'Πέσει κάτω από';

  @override
  String get alertKindMove => 'Κινηθεί έντονα μέσα στη μέρα';

  @override
  String alertTargetPrice(String currency) {
    return 'Τιμή ($currency)';
  }

  @override
  String get alertMovePercent => 'Ημερήσια μεταβολή (%)';

  @override
  String get alertAlreadyMet => 'Η τιμή έχει ήδη περάσει αυτό το επίπεδο.';

  @override
  String get alertSave => 'Ορισμός ειδοποίησης';

  @override
  String alertCreated(String symbol) {
    return 'Η ειδοποίηση για $symbol ορίστηκε.';
  }

  @override
  String get alertsEmpty =>
      'Δεν υπάρχουν ακόμη ειδοποιήσεις. Ανοίξτε μια μετοχή και πατήστε το καμπανάκι.';

  @override
  String get alertsNote =>
      'Οι ειδοποιήσεις ελέγχονται κάθε 5 λεπτά όσο το WhatStock εκτελείται. Στον υπολογιστή συνεχίζει στη γραμμή μενού ή στην περιοχή ειδοποιήσεων· στο κινητό, προς το παρόν ειδοποιεί μόνο όταν η εφαρμογή είναι ανοιχτή.';

  @override
  String alertDescAbove(String price) {
    return 'Πάνω από $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Κάτω από $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Ημερήσια μεταβολή ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Ενεργοποιήθηκε $date στα $price';
  }

  @override
  String get alertRearm => 'Επανενεργοποίηση';

  @override
  String get alertDelete => 'Διαγραφή';

  @override
  String alertHitAbove(String symbol, String price) {
    return 'Η $symbol ανέβηκε πάνω από $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return 'Η $symbol έπεσε κάτω από $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return 'Η $symbol κινήθηκε $percent σήμερα';
  }

  @override
  String alertHitBody(String price) {
    return 'Τρέχουσα τιμή: $price';
  }

  @override
  String get alertOpen => 'Άνοιγμα';

  @override
  String get keepInTrayTitle => 'Συνέχεια μετά το κλείσιμο του παραθύρου';

  @override
  String get keepInTraySubtitle =>
      'Το WhatStock μένει στη γραμμή μενού ή στην περιοχή ειδοποιήσεων, ώστε η συντόμευση και οι ειδοποιήσεις τιμής να λειτουργούν.';

  @override
  String get termsOfUse => 'Όροι χρήσης';

  @override
  String get privacyPolicy => 'Πολιτική απορρήτου';

  @override
  String get subscriptionLegal =>
      'Η συνδρομή ανανεώνεται αυτόματα κάθε μήνα μέχρι να την ακυρώσετε. Με τη συνδρομή αποδέχεστε τους Όρους χρήσης και την Πολιτική απορρήτου.';

  @override
  String get deleteAccount => 'Διαγραφή λογαριασμού';

  @override
  String get deleteAccountTitle => 'Διαγραφή του λογαριασμού σας;';

  @override
  String get deleteAccountBody =>
      'Ο λογαριασμός σας και ό,τι είναι αποθηκευμένο στον διακομιστή μας (email, όριο, χρήση) θα διαγραφούν οριστικά, και οι αχρησιμοποίητες αναλύσεις χάνονται. Συνδρομή που πληρώθηκε στο πρόγραμμα περιήγησης ακυρώνεται αμέσως· συνδρομή μέσω App Store ή Google Play πρέπει να ακυρωθεί στις ρυθμίσεις του καταστήματος.';

  @override
  String get deleteLocalData =>
      'Διαγραφή και των δεδομένων αυτής της συσκευής (χαρτοφυλάκιο, ειδοποιήσεις, αγαπημένα, ιστορικό, αποθηκευμένες αναλύσεις)';

  @override
  String get deleteAccountConfirm => 'Οριστική διαγραφή';

  @override
  String get accountDeleted => 'Ο λογαριασμός σας διαγράφηκε.';

  @override
  String get errDeleteAccount =>
      'Δεν ήταν δυνατή η διαγραφή του λογαριασμού. Ελέγξτε τη σύνδεση και δοκιμάστε ξανά.';

  @override
  String get aiTrialBriefNote =>
      'Οι δοκιμαστικές αναλύσεις είναι σύντομες και γίνονται με ένα ταχύτερο μοντέλο AI. Με ένα πρόγραμμα αποκτάτε το πιο ισχυρό μοντέλο AI μας, περισσότερες αναζητήσεις στο web και τα μήκη «Τυπική» και «Εις βάθος».';

  @override
  String get billingMonthly => 'Μηνιαία';

  @override
  String get billingYearly => 'Ετήσια';

  @override
  String get yearlyDiscount => '2 μήνες δωρεάν';

  @override
  String get perYear => '/ έτος';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price τον μήνα';
  }

  @override
  String get subscriptionLegalYearly =>
      'Η ετήσια συνδρομή ανανεώνεται αυτόματα κάθε χρόνο μέχρι να την ακυρώσετε. Με τη συνδρομή αποδέχεστε τους Όρους χρήσης και την Πολιτική απορρήτου.';

  @override
  String get myAnalyses => 'Οι αναλύσεις μου';

  @override
  String get navAlerts => 'Ειδοποιήσεις';

  @override
  String get inviteTitle => 'Κλειστή προεπισκόπηση';

  @override
  String get inviteBody =>
      'Το WhatStock είναι προς το παρόν διαθέσιμο μόνο με πρόσκληση. Εισαγάγετε τον κωδικό πρόσκλησης που λάβατε.';

  @override
  String get inviteCodeLabel => 'Κωδικός πρόσκλησης';

  @override
  String get inviteContinue => 'Συνέχεια';

  @override
  String get inviteInvalid => 'Αυτός ο κωδικός πρόσκλησης δεν είναι έγκυρος.';

  @override
  String get inviteExpired =>
      'Αυτή η πρόσκληση έχει λήξει. Ζητήστε νέο κωδικό από το άτομο που σας προσκάλεσε.';

  @override
  String get inviteDeviceLimit =>
      'Αυτός ο κωδικός πρόσκλησης χρησιμοποιείται ήδη στον μέγιστο αριθμό συσκευών.';

  @override
  String get previewConfidential => 'Εμπιστευτική προεπισκόπηση';

  @override
  String get errPreviewDailyLimit =>
      'Συμπληρώθηκε το σημερινό όριο αναλύσεων αυτής της προεπισκόπησης. Δοκιμάστε ξανά αύριο.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'πριν από $count ώρες',
      one: 'πριν από 1 ώρα',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'πριν από $count ημέρες',
      one: 'πριν από 1 ημέρα',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Ενημέρωση αυτής της ανάλυσης;';

  @override
  String staleBody(String age) {
    return 'Δημιουργήθηκε $age. Από τότε μπορεί να έχουν αλλάξει οι τιμές, τα νέα και τα αποτελέσματα.';
  }

  @override
  String get staleKeep => 'Εμφάνιση της προηγούμενης';

  @override
  String get staleRefresh => 'Δημιουργία νέας';

  @override
  String seeAll(int count) {
    return 'Προβολή όλων ($count)';
  }

  @override
  String get searchAnalyses => 'Αναζήτηση στις αναλύσεις σας';

  @override
  String get deleteAnalysis => 'Διαγραφή';

  @override
  String analysisDeleted(String symbol) {
    return 'Η ανάλυση του $symbol διαγράφηκε';
  }

  @override
  String get keyLevelAlertHint =>
      'Πατήστε ένα επίπεδο για να λάβετε ειδοποίηση όταν η τιμή το φτάσει.';

  @override
  String get shareAnalysisTitle => 'Κοινοποίηση ανάλυσης';

  @override
  String get shareAsImage => 'Κοινοποίηση ως εικόνα';

  @override
  String get shareAsText => 'Κοινοποίηση ως κείμενο';

  @override
  String get shareCardFooter => 'Δημιουργήθηκε με το WhatStock';

  @override
  String get shareCardDisclaimer => 'Ανάλυση AI · όχι επενδυτική συμβουλή';

  @override
  String get referralTitle => 'Προσκαλέστε φίλους';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count επιπλέον αναλύσεις',
      one: '1 επιπλέον ανάλυση',
    );
    return 'Μοιραστείτε τον κωδικό σας. Ο φίλος σας παίρνει αμέσως $_temp0 και εσείς το ίδιο μετά την πρώτη του ανάλυση.';
  }

  @override
  String get referralYourCode => 'Ο κωδικός σας';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Προσκλήθηκαν: $invited · Ανταμείφθηκαν: $rewarded';
  }

  @override
  String get referralHaveCode => 'Έχετε κωδικό από φίλο;';

  @override
  String get referralRedeem => 'Εξαργύρωση';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Προστέθηκαν $count επιπλέον αναλύσεις. Καλώς ήρθατε!',
      one: 'Προστέθηκε 1 επιπλέον ανάλυση. Καλώς ήρθατε!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Αυτός ο κωδικός δεν υπάρχει. Ελέγξτε τον και δοκιμάστε ξανά.';

  @override
  String get referralErrOwn =>
      'Δεν μπορείτε να εξαργυρώσετε τον δικό σας κωδικό.';

  @override
  String get referralErrAlready =>
      'Έχετε ήδη εξαργυρώσει τον κωδικό ενός φίλου.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count επιπλέον αναλύσεις',
      one: '1 επιπλέον ανάλυση',
    );
    return 'Αναλύω μετοχές με το WhatStock: φωτογραφίζετε μια μετοχή και η AI σάς την εξηγεί. Με τον κωδικό μου $code παίρνετε $_temp0.';
  }

  @override
  String get referralCopied => 'Ο κωδικός αντιγράφηκε';

  @override
  String get onboardTitle1 => 'Φωτογραφίστε μια μετοχή';

  @override
  String get onboardBody1 =>
      'Αρκεί η οθόνη μιας εφαρμογής συναλλαγών, μια εφημερίδα ή ένα λογότυπο εταιρείας: το WhatStock αναγνωρίζει τη μετοχή και δείχνει την τιμή, το γράφημα και τα βασικά της μεγέθη.';

  @override
  String get onboardTitle2 => 'Κατανοήστε τη σε λίγα λεπτά';

  @override
  String get onboardBody2 =>
      'Η ανάλυση AI εξηγεί τι κινεί τη μετοχή, τους κινδύνους, την αποτίμηση και τρία σενάρια για το πού μπορεί να κινηθεί η τιμή – με πηγές και στη γλώσσα σας.';

  @override
  String get onboardTitle3 => 'Μείνετε πάντα ενημερωμένοι';

  @override
  String get onboardBody3 =>
      'Τα αγαπημένα, το χαρτοφυλάκιό σας και οι ειδοποιήσεις τιμής σάς κρατούν ενήμερους. Οι αναλύσεις σας μένουν στη συσκευή σας, έτοιμες να τις ανοίξετε ξανά.';

  @override
  String get onboardNext => 'Επόμενο';

  @override
  String get onboardStart => 'Ας ξεκινήσουμε';

  @override
  String get onboardSkip => 'Παράλειψη';

  @override
  String changesTitle(String date) {
    return 'Από την προηγούμενη ανάλυση ($date)';
  }

  @override
  String get changesPrice => 'Τιμή';

  @override
  String get changesNoMajor => 'Οι προοπτικές δεν άλλαξαν ουσιαστικά.';

  @override
  String get changesPreviousSummary => 'Προηγούμενη σύνοψη';

  @override
  String get telemetryTitle => 'Βοηθήστε να βελτιωθεί το WhatStock';

  @override
  String get telemetryBody =>
      'Κοινοποιήστε ανώνυμα στατιστικά χρήσης και αναφορές κατάρρευσης: ποιες λειτουργίες χρησιμοποιούνται και τι πήγε στραβά. Ποτέ τις μετοχές, τις αναλύσεις ή τα προσωπικά σας δεδομένα. Μπορείτε να το αλλάξετε ανά πάσα στιγμή στις Ρυθμίσεις.';

  @override
  String get telemetryAllow => 'Να επιτρέπεται';

  @override
  String get telemetryDecline => 'Όχι, ευχαριστώ';

  @override
  String get telemetrySetting => 'Ανώνυμα στατιστικά και αναφορές κατάρρευσης';

  @override
  String get telemetrySettingHint =>
      'Πόσο συχνά χρησιμοποιούνται οι λειτουργίες και αναφορές σφαλμάτων, χωρίς προσωπικά δεδομένα ή το περιεχόμενο των αναζητήσεων και των αναλύσεών σας.';

  @override
  String get askButton => 'Ρωτήστε για αυτή την ανάλυση';

  @override
  String askTitle(String symbol) {
    return 'Ερωτήσεις για $symbol';
  }

  @override
  String get askIntro =>
      'Ρωτήστε οτιδήποτε για την ανάλυση: τι σημαίνει ένας κίνδυνος, τι θα άλλαζε τις προοπτικές, πώς προέκυψε ένας αριθμός. Οι απαντήσεις βασίζονται σε αυτή την ανάλυση και δεν αποτελούν επενδυτική συμβουλή.';

  @override
  String get askHint => 'Κάντε μια ερώτηση…';

  @override
  String get askSend => 'Αποστολή';

  @override
  String get askThinking => 'Σκέφτεται…';

  @override
  String get askSuggest1 => 'Ποιος είναι ο μεγαλύτερος κίνδυνος;';

  @override
  String get askSuggest2 => 'Τι θα άλλαζε τις προοπτικές;';

  @override
  String get askSuggest3 => 'Εξήγησέ το με απλά λόγια';

  @override
  String get askMaxReached =>
      'Αυτή ήταν η τελευταία ερώτηση για αυτή την ανάλυση. Δημιουργήστε νέα ανάλυση για να ρωτήσετε κι άλλα.';

  @override
  String get errAskLimit =>
      'Φτάσατε το σημερινό όριο ερωτήσεων. Δοκιμάστε ξανά αύριο.';

  @override
  String get eventTomorrow => 'Αύριο';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'σε $days ημέρες',
      one: 'σε 1 ημέρα',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Τριμηνιαία αποτελέσματα';

  @override
  String get eventBeforeOpen => 'πριν από το άνοιγμα';

  @override
  String get eventAfterClose => 'μετά το κλείσιμο';

  @override
  String eventEpsEstimate(String value) {
    return 'Εκτίμηση EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Από την ανάλυσή σας';

  @override
  String get eventsHint =>
      'Ημερομηνίες αποτελεσμάτων των αγαπημένων σας και των μετοχών του χαρτοφυλακίου σας για τις επόμενες 90 ημέρες, καθώς και τα χρονολογημένα γεγονότα που επισήμαναν οι αναλύσεις σας.';

  @override
  String get eventsEmpty =>
      'Δεν υπάρχουν χρονολογημένα γεγονότα τις επόμενες 90 ημέρες. Προσθέστε αγαπημένα ή μετοχές στο χαρτοφυλάκιο για να βλέπετε εδώ τις ημερομηνίες αποτελεσμάτων τους.';

  @override
  String get compareTitle => 'Σύγκριση';

  @override
  String get compareAdd => 'Προσθήκη μετοχής';

  @override
  String get compareRemove => 'Κατάργηση';

  @override
  String get compareTickerHint => 'Ticker, π.χ. MSFT';

  @override
  String get compareHint =>
      'Βασικά μεγέθη δίπλα-δίπλα· η καλύτερη τιμή σε κάθε γραμμή επισημαίνεται. Τα ποσά είναι στο νόμισμα της κάθε μετοχής.';

  @override
  String get compareNoAnalysis => 'Δεν υπάρχει ακόμη ανάλυση';

  @override
  String get portfolioDividends => 'Ετήσια μερίσματα';

  @override
  String portfolioDividendYield(String percent) {
    return 'Απόδοση $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Τα αναμενόμενα ετήσια μερίσματα βασίζονται στα μερίσματα που καταβλήθηκαν τους τελευταίους 12 μήνες· οι μελλοντικές πληρωμές δεν είναι εγγυημένες.';

  @override
  String positionDividend(String amount) {
    return 'Μέρισμα: $amount ετησίως';
  }

  @override
  String get chartAvgCost => 'Μέση τιμή σας';

  @override
  String get chartAlertLevel => 'Ειδοποίηση';

  @override
  String get marketsToday => 'Αγορές σήμερα';

  @override
  String get notesTitle => 'Οι σημειώσεις μου';

  @override
  String get notesHint =>
      'Γιατί την αγοράσατε, τι παρακολουθείτε, τι θα σας έκανε να πουλήσετε;';

  @override
  String get notesInfo =>
      'Αποθηκεύεται μόνο σε αυτή τη συσκευή. Η ανάλυση AI λαμβάνει υπόψη τις σημειώσεις σας.';

  @override
  String notesSaved(String date) {
    return 'Αποθηκεύτηκε $date';
  }

  @override
  String get peersTitle => 'Παρόμοιες εταιρείες';

  @override
  String get portfolioExport => 'Εξαγωγή ως CSV';

  @override
  String get portfolioImport => 'Εισαγωγή από CSV';

  @override
  String get portfolioImportHint =>
      'Επικολλήστε μία αγορά ανά γραμμή: σύμβολο μετοχής, ποσότητα, τιμή, νόμισμα, ημερομηνία (ΕΕΕΕ-ΜΜ-ΗΗ). Οι στήλες μπορούν να διαχωρίζονται με κόμματα, ερωτηματικά ή στηλοθέτες· η γραμμή κεφαλίδας είναι προαιρετική.';

  @override
  String get portfolioImportButton => 'Εισαγωγή';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Προστέθηκαν $count αγορές',
      one: 'Προστέθηκε 1 αγορά',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Παραλείφθηκαν $count γραμμές',
      one: 'Παραλείφθηκε 1 γραμμή',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Το χαρτοφυλάκιο, τα αγαπημένα, οι ειδοποιήσεις τιμής και οι σημειώσεις συγχρονίζονται σε όλες τις συσκευές σας.';

  @override
  String syncLast(String time) {
    return 'Τελευταίος συγχρονισμός: $time';
  }

  @override
  String get syncNow => 'Συγχρονισμός τώρα';

  @override
  String get syncFailed =>
      'Ο συγχρονισμός απέτυχε. Θα γίνει αυτόματα νέα προσπάθεια.';

  @override
  String get alertEmailTitle => 'Email όταν ενεργοποιείται μια ειδοποίηση';

  @override
  String get alertEmailOn =>
      'Ελέγχουμε τις ειδοποιήσεις σας κάθε λίγα λεπτά και σας στέλνουμε email, ακόμη και όταν η εφαρμογή είναι κλειστή.';

  @override
  String get alertEmailSignIn =>
      'Συνδεθείτε με το email σας στις Ρυθμίσεις για να λαμβάνετε ειδοποιήσεις μέσω email, ακόμη και όταν η εφαρμογή είναι κλειστή.';
}
