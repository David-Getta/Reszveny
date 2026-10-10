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
  String get subscription => 'Pretplata';

  @override
  String get planTrial => 'Probni';

  @override
  String get planNormal => 'Standard';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Nema aktivnog plana';

  @override
  String planAnalysesPerMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analiza mjesečno',
      few: '$count analize mjesečno',
      one: '$count analiza mjesečno',
    );
    return '$_temp0';
  }

  @override
  String planTrialDescription(int days, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Besplatno probno razdoblje od $days dana s $count analiza',
      few: 'Besplatno probno razdoblje od $days dana s $count analize',
      one: 'Besplatno probno razdoblje od $days dana s $count analizom',
    );
    return '$_temp0';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Preostalo je još $days dana probnog razdoblja',
      few: 'Preostala su još $days dana probnog razdoblja',
      one: 'Preostao je još $days dan probnog razdoblja',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Vaše besplatno probno razdoblje je završilo. Odaberite plan da biste nastavili s analizama.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Preostalo je $remaining od $total analiza u ovom razdoblju';
  }

  @override
  String extraCredits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dodatnih analiza',
      few: '$count dodatne analize',
      one: '$count dodatna analiza',
    );
    return '$_temp0';
  }

  @override
  String renewsOn(String date) {
    return 'Obnavlja se $date';
  }

  @override
  String get choosePlan => 'Odaberite plan';

  @override
  String get currentPlan => 'Trenutni plan';

  @override
  String get subscribe => 'Pretplati se';

  @override
  String get perMonth => '/ mjesec';

  @override
  String get extraPacksTitle => 'Trebate više? Kupite dodatne analize';

  @override
  String get extraPacksHint => 'Dodatne analize nikada ne istječu i koriste se nakon mjesečne kvote.';

  @override
  String get buy => 'Kupi';

  @override
  String get restorePurchases => 'Obnovi kupnje';

  @override
  String get manageSubscription => 'Upravljaj pretplatom';

  @override
  String get purchaseSuccess => 'Hvala! Vaša kupnja je aktivna.';

  @override
  String get purchasePending => 'Kupnja je u tijeku…';

  @override
  String get purchaseFailed => 'Kupnju nije bilo moguće dovršiti.';

  @override
  String get purchaseCanceled => 'Kupnja je otkazana.';

  @override
  String get billingUnavailable =>
      'Kupnje još nisu dostupne na ovoj platformi. Pretplatite se na telefonu ili Macu; vaš plan radit će na svim uređajima.';

  @override
  String get errQuotaExceeded => 'Nemate više analiza u ovom razdoblju. Nadogradite plan ili kupite dodatne analize.';

  @override
  String get errTrialExpired => 'Vaše besplatno probno razdoblje je završilo. Odaberite plan da biste nastavili.';

  @override
  String get errNoPlan => 'Za AI analizu potreban je aktivan plan.';

  @override
  String get viewPlans => 'Prikaži planove';

  @override
  String get usageTitle => 'Potrošnja';

  @override
  String get demoPurchaseNote => 'Demo naplata: kupnje se na ovoj platformi simuliraju.';

  @override
  String get mostPopular => 'Najpopularniji';

  @override
  String get bestValue => 'Najbolja vrijednost';

  @override
  String get planFeaturesCommon =>
      'Prepoznavanje fotografija, podaci u stvarnom vremenu, grafikoni, favoriti i sva 44 jezika uključeni su u svaki plan. Kvota se odnosi na AI analize.';

  @override
  String get searchLanguages => 'Pretraži jezike…';

  @override
  String get noLanguageMatch => 'Nijedan jezik ne odgovara.';

  @override
  String get aiSettings => 'AI analiza';

  @override
  String get aiLength => 'Duljina';

  @override
  String get aiDepthBrief => 'Kratko';

  @override
  String get aiDepthStandard => 'Standardno';

  @override
  String get aiDepthDeep => 'Detaljno';

  @override
  String get aiDepthBriefDesc => 'Ono najvažnije, brzo.';

  @override
  String get aiDepthStandardDesc => 'Cjelovito izvješće sa svim odjeljcima.';

  @override
  String get aiDepthDeepDesc => 'Više web-pretraživanja, usporedba s konkurentima i dublja razrada.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Oko $min–$max riječi';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'troši $count analiza',
      few: 'troši $count analize',
      one: 'troši $count analizu',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Razina čitatelja';

  @override
  String get aiReaderBeginner => 'Početnik';

  @override
  String get aiReaderExperienced => 'Iskusan';

  @override
  String get aiReaderBeginnerDesc => 'Jednostavan jezik; svaki stručni pojam je objašnjen.';

  @override
  String get aiReaderExperiencedDesc => 'Sažetiji tekst sa standardnom financijskom terminologijom.';

  @override
  String get aiCounterArgument => 'Najjači protuargument';

  @override
  String get aiCounterArgumentDesc => 'Sažetak uvijek završava najjačim argumentom protiv vlastitog zaključka.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Uz vaš plan do $count web-pretraživanja po analizi',
      few: 'Uz vaš plan do $count web-pretraživanja po analizi',
      one: 'Uz vaš plan do $count web-pretraživanja po analizi',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Pri standardnoj duljini, po planu: Standard $normal, Pro $pro, Max $max, Ultra $ultra. Kratko koristi 2 manje, Detaljno 2 više.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'do $count web-pretraživanja',
      few: 'do $count web-pretraživanja',
      one: 'do $count web-pretraživanja',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count web-pretraživanja po analizi',
      few: '$count web-pretraživanja po analizi',
      one: '$count web-pretraživanje po analizi',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Za ovu duljinu potrebno je analiza: $needed, a preostalo ih je samo $left. Odaberite kraću duljinu u Postavkama ili nabavite još analiza.';
  }
}
