// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsHr extends AppLocalizations {
  AppLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get appTitle => 'StockLens';

  @override
  String get homeTagline => 'Fotografirajte dionicu i saznajte sve o njoj.';

  @override
  String get homeHint =>
      'Potvrda o dionicama, zaslon brokerske aplikacije, novine ili logotip tvrtke – bilo što što identificira dionicu.';

  @override
  String get takePhoto => 'Snimi fotografiju';

  @override
  String get chooseFromGallery => 'Odaberi iz galerije';

  @override
  String get chooseImage => 'Odaberi sliku';

  @override
  String get enterTickerManually => 'Ručno unesi ticker';

  @override
  String get tickerInputLabel => 'Ticker simbol';

  @override
  String get tickerInputHint => 'npr. AAPL';

  @override
  String get lookUp => 'Pretraži';

  @override
  String demoModeBanner(String symbols) {
    return 'Demo način – ključ za tržišne podatke nije postavljen. Ogledni podaci dostupni su za: $symbols.';
  }

  @override
  String get recognizing => 'Analiza slike…';

  @override
  String get loadingData => 'Učitavanje podataka…';

  @override
  String get noCandidatesTitle => 'Dionica nije prepoznata';

  @override
  String get noCandidatesBody =>
      'Nismo uspjeli identificirati dionicu na ovoj slici. Pokušajte s oštrijom fotografijom ili ručno unesite ticker.';

  @override
  String get whatWeSaw => 'Što smo vidjeli';

  @override
  String get chooseCandidateTitle => 'Koju ste dionicu mislili?';

  @override
  String confidencePercent(int percent) {
    return '$percent% pouzdanosti';
  }

  @override
  String get settings => 'Postavke';

  @override
  String get language => 'Jezik';

  @override
  String get systemLanguage => 'Zadano sustavom';

  @override
  String get about => 'O aplikaciji';

  @override
  String get disclaimer =>
      'Ova aplikacija pruža samo informacije i nije investicijski savjet. Podaci mogu kasniti ili biti netočni.';

  @override
  String dataSource(String source) {
    return 'Izvor podataka: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Prepoznavanje: $source';
  }

  @override
  String get retry => 'Pokušaj ponovno';

  @override
  String get cancel => 'Odustani';

  @override
  String get ok => 'U redu';

  @override
  String get close => 'Zatvori';

  @override
  String get errorGeneric => 'Nešto je pošlo po krivu.';

  @override
  String get errorSectionUnavailable => 'Ovaj odjeljak nije bilo moguće učitati.';

  @override
  String get notAvailable => 'n/d';

  @override
  String get sectionIdentity => 'Identifikacija';

  @override
  String get sectionPrice => 'Cijena';

  @override
  String get sectionValuation => 'Vrednovanje';

  @override
  String get sectionFinancials => 'Financijski podaci';

  @override
  String get sectionDividend => 'Dividenda';

  @override
  String get sectionProfile => 'Profil tvrtke';

  @override
  String get sectionAnalysts => 'Ocjene analitičara';

  @override
  String get sectionNews => 'Vijesti';

  @override
  String get sectionRecognition => 'Detalji prepoznavanja';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Burza';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Valuta';

  @override
  String get labelCountry => 'Država';

  @override
  String get labelIndustry => 'Industrija';

  @override
  String get labelSector => 'Sektor';

  @override
  String get labelWebsite => 'Web-stranica';

  @override
  String get labelIpoDate => 'Datum IPO-a';

  @override
  String get labelMarketCap => 'Tržišna kapitalizacija';

  @override
  String get labelSharesOutstanding => 'Dionice u optjecaju';

  @override
  String get labelEmployees => 'Zaposlenici';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Sjedište';

  @override
  String get labelDescription => 'Opis';

  @override
  String get labelLastPrice => 'Zadnja cijena';

  @override
  String get labelChange => 'Promjena';

  @override
  String get labelOpen => 'Otvaranje';

  @override
  String get labelDayHigh => 'Dnevni maksimum';

  @override
  String get labelDayLow => 'Dnevni minimum';

  @override
  String get labelPreviousClose => 'Prethodno zatvaranje';

  @override
  String get labelWeek52High => '52-tjedni maksimum';

  @override
  String get labelWeek52Low => '52-tjedni minimum';

  @override
  String get labelAverageVolume10d => 'Prosj. volumen (10 dana)';

  @override
  String updatedAt(String time) {
    return 'Ažurirano $time';
  }

  @override
  String get labelPeTrailing => 'P/E (tekući)';

  @override
  String get labelPeForward => 'P/E (očekivani)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / slobodni novčani tok';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Prihodi (TTM)';

  @override
  String get labelNetIncomeTtm => 'Neto dobit (TTM)';

  @override
  String get labelGrossMargin => 'Bruto marža';

  @override
  String get labelOperatingMargin => 'Operativna marža';

  @override
  String get labelNetMargin => 'Neto marža';

  @override
  String get labelRoe => 'Povrat na kapital';

  @override
  String get labelRoa => 'Povrat na imovinu';

  @override
  String get labelDebtToEquity => 'Dug / kapital';

  @override
  String get labelCurrentRatio => 'Koeficijent tekuće likvidnosti';

  @override
  String get labelRevenueGrowth => 'Rast prihoda (YoY)';

  @override
  String get labelEpsGrowth => 'Rast EPS-a (YoY)';

  @override
  String get labelDividendYield => 'Dividendni prinos';

  @override
  String get labelDividendPerShare => 'Dividenda po dionici';

  @override
  String get labelPayoutRatio => 'Omjer isplate';

  @override
  String get labelConsensus => 'Konsenzus';

  @override
  String get ratingStrongBuy => 'Snažna kupnja';

  @override
  String get ratingBuy => 'Kupnja';

  @override
  String get ratingHold => 'Zadržati';

  @override
  String get ratingSell => 'Prodaja';

  @override
  String get ratingStrongSell => 'Snažna prodaja';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analitičara',
      few: '$count analitičara',
      one: '$count analitičar',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Razdoblje: $period';
  }

  @override
  String get noNews => 'Nema nedavnih vijesti.';

  @override
  String get openArticle => 'Otvori članak';

  @override
  String get openLinkFailed => 'Poveznicu nije bilo moguće otvoriti.';

  @override
  String get recognitionSummary => 'Sažetak';

  @override
  String get recognitionEvidence => 'Zašto tako mislimo';

  @override
  String get recognitionRawText => 'Tekst pročitan sa slike';

  @override
  String get errMissingAnthropicKey =>
      'Prepoznavanje slika nije postavljeno (nema ANTHROPIC_API_KEY). Ručno unesite ticker.';

  @override
  String get errRecognitionUnreachable => 'Nije moguće dohvatiti servis za prepoznavanje. Provjerite internetsku vezu.';

  @override
  String errRecognitionHttp(String status) {
    return 'Servis za prepoznavanje vratio je grešku (HTTP $status).';
  }

  @override
  String get errRecognitionRefused => 'Servis za prepoznavanje nije mogao obraditi ovu sliku.';

  @override
  String get errRecognitionTruncated => 'Odgovor prepoznavanja je prekinut. Pokušajte ponovno.';

  @override
  String get errRecognitionBadResponse => 'Neočekivan odgovor servisa za prepoznavanje.';

  @override
  String get errRecognitionEmpty => 'Servis za prepoznavanje vratio je prazan odgovor.';

  @override
  String get errMissingFinnhubKey => 'Tržišni podaci nisu postavljeni (nema FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable => 'Nije moguće dohvatiti servis tržišnih podataka. Provjerite internetsku vezu.';

  @override
  String get errMarketRateLimited => 'Previše zahtjeva prema servisu tržišnih podataka. Pričekajte minutu.';

  @override
  String errMarketHttp(String status) {
    return 'Servis tržišnih podataka vratio je grešku (HTTP $status).';
  }

  @override
  String get errMarketBadResponse => 'Neočekivan odgovor servisa tržišnih podataka.';

  @override
  String errNoQuote(String symbol) {
    return 'Nisu pronađeni podaci o cijeni za $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Nije pronađen profil tvrtke za $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Demo način podržava samo $symbols. Dodajte FINNHUB_API_KEY za podatke u stvarnom vremenu.';
  }

  @override
  String errUnknown(String detail) {
    return 'Nešto je pošlo po krivu: $detail';
  }

  @override
  String get newSearch => 'Nova pretraga';

  @override
  String get recentSearches => 'Nedavno';

  @override
  String get noRecentSearches => 'Još nema nedavnih pretraga.';

  @override
  String get clearRecent => 'Očisti nedavne';

  @override
  String get greeting => 'Koju dionicu ćemo pogledati?';

  @override
  String get searchHint => 'Ticker ili naziv tvrtke';

  @override
  String get attachImage => 'Priloži sliku';

  @override
  String get searchResultsTitle => 'Rezultati pretrage';

  @override
  String errNoResults(String query) {
    return 'Nisu pronađene dionice za „$query“.';
  }

  @override
  String get quickBarHint => 'Upiši ticker ili naziv tvrtke…';

  @override
  String get openFullWindow => 'Otvori prozor';

  @override
  String hotkeyHint(String shortcut) {
    return 'Pritisnite $shortcut bilo gdje da otvorite StockLens.';
  }

  @override
  String get trayOpen => 'Otvori StockLens';

  @override
  String get trayQuickSearch => 'Brza pretraga';

  @override
  String get trayQuit => 'Izlaz';

  @override
  String get appearance => 'Izgled';

  @override
  String get themeSystem => 'Sustav';

  @override
  String get themeDark => 'Tamna';

  @override
  String get themeLight => 'Svijetla';

  @override
  String get back => 'Natrag';

  @override
  String get aiSectionTitle => 'AI analiza';

  @override
  String get aiIntro =>
      'Detaljan pregled koji je napisala umjetna inteligencija: sažetak nedavnih vijesti, poslovanje, snage, rizici i skriveni faktori, vrednovanje, izgledi cijene sa scenarijima iz psihološkog, sociološkog, tehničkog i makroekonomskog kuta te što pratiti.';

  @override
  String get aiGenerate => 'Generiraj analizu';

  @override
  String get aiRegenerate => 'Generiraj ponovno';

  @override
  String get aiGenerating => 'Pripremamo analizu… ovo može potrajati minutu ili dvije.';

  @override
  String get aiSources => 'Izvori';

  @override
  String aiGeneratedAt(String time) {
    return 'Generirano $time';
  }

  @override
  String get aiDisclaimer =>
      'Analiza koju je generirala umjetna inteligencija na temelju javnih podataka i nedavnih vijesti. Može sadržavati greške ili biti zastarjela i nije investicijski savjet.';

  @override
  String get errAiNotConfigured => 'AI analiza nije postavljena (nema ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable => 'Nije moguće dohvatiti AI servis. Provjerite internetsku vezu.';

  @override
  String errAiHttp(String status) {
    return 'AI servis vratio je grešku (HTTP $status).';
  }

  @override
  String get errAiRefused => 'AI servis odbio je analizirati ovu dionicu.';

  @override
  String get errAiBadResponse => 'Neočekivan odgovor AI servisa.';

  @override
  String get sectionChart => 'Grafikon cijene';

  @override
  String get rangeOneWeek => '1T';

  @override
  String get rangeOneMonth => '1M';

  @override
  String get rangeThreeMonths => '3M';

  @override
  String get rangeOneYear => '1G';

  @override
  String get rangeFiveYears => '5G';

  @override
  String get chartUnavailable => 'Povijest cijena nije dostupna iz trenutnog izvora podataka.';

  @override
  String get sectionStatements => 'Financijski izvještaji (godišnji)';

  @override
  String get labelFiscalYear => 'Fiskalna godina';

  @override
  String get labelRevenue => 'Prihodi';

  @override
  String get labelNetIncome => 'Neto dobit';

  @override
  String get labelTotalAssets => 'Ukupna imovina';

  @override
  String get labelTotalLiabilities => 'Ukupne obveze';

  @override
  String get labelEquity => 'Kapital dioničara';

  @override
  String get labelOperatingCashFlow => 'Operativni novčani tok';

  @override
  String get statementsUnavailable => 'Objavljeni financijski izvještaji nisu dostupni za ovu dionicu.';

  @override
  String get launchAtLogin => 'Pokreni pri prijavi';

  @override
  String get hotkeyLabel => 'Globalni prečac';

  @override
  String get hotkeyRecordHint => 'Kliknite ovdje, a zatim pritisnite novu kombinaciju tipki';

  @override
  String get hotkeyReset => 'Vrati na zadano';

  @override
  String get pasteImage => 'Zalijepi sliku iz međuspremnika';

  @override
  String get errClipboardNoImage => 'U međuspremniku nema slike.';

  @override
  String get favorites => 'Favoriti';

  @override
  String get addToFavorites => 'Dodaj u favorite';

  @override
  String get removeFromFavorites => 'Ukloni iz favorita';

  @override
  String get noFavorites => 'Još nema favorita. Dodirnite zvjezdicu pored dionice da biste je dodali.';

  @override
  String get displayCurrency => 'Valuta prikaza';

  @override
  String get displayCurrencyNone => 'Samo vlastita valuta dionice';

  @override
  String labelConverted(String currency) {
    return '≈ u $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Tečaj: 1 $from = $rate $to (ESB, $date)';
  }

  @override
  String get updates => 'Ažuriranja';

  @override
  String currentVersion(String version) {
    return 'Verzija $version';
  }

  @override
  String get autoUpdate => 'Automatski instaliraj ažuriranja';

  @override
  String get checkForUpdates => 'Provjeri ažuriranja';

  @override
  String get updateChecking => 'Provjera ažuriranja…';

  @override
  String get updateUpToDate => 'Imate najnoviju verziju.';

  @override
  String updateAvailable(String version) {
    return 'Dostupna je verzija $version.';
  }

  @override
  String get updateDownloading => 'Ažuriranje se preuzima u pozadini…';

  @override
  String get updateDownloaded => 'Ažuriranje je spremno. Ponovno pokrenite aplikaciju da biste ga instalirali.';

  @override
  String get updateNow => 'Ažuriraj';

  @override
  String get restartNow => 'Ponovno pokreni';

  @override
  String get updatesViaStore => 'Ažuriranja stižu automatski putem trgovine aplikacija.';

  @override
  String get updateCheckFailed => 'Nije moguće provjeriti ažuriranja.';

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
