// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class AppLocalizationsEl extends AppLocalizations {
  AppLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get appTitle => 'Reszveny';

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
}
