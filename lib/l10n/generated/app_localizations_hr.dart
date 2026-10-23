// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsHr extends AppLocalizations {
  AppLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

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
  String get errorSectionUnavailable =>
      'Ovaj odjeljak nije bilo moguće učitati.';

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
  String get labelYieldOnCost => 'Prinos na nabavnu cijenu';

  @override
  String get labelDividendGrowth5y => 'Rast dividende (5 g.)';

  @override
  String get dividendNone =>
      'U posljednjih 12 mjeseci nije isplaćena dividenda.';

  @override
  String get dividendOnYourShares => 'Na vaše dionice, godišnje';

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
  String get errRecognitionUnreachable =>
      'Nije moguće dohvatiti servis za prepoznavanje. Provjerite internetsku vezu.';

  @override
  String errRecognitionHttp(String status) {
    return 'Servis za prepoznavanje vratio je grešku (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Servis za prepoznavanje nije mogao obraditi ovu sliku.';

  @override
  String get errRecognitionTruncated =>
      'Odgovor prepoznavanja je prekinut. Pokušajte ponovno.';

  @override
  String get errRecognitionBadResponse =>
      'Neočekivan odgovor servisa za prepoznavanje.';

  @override
  String get errRecognitionEmpty =>
      'Servis za prepoznavanje vratio je prazan odgovor.';

  @override
  String get errMissingFinnhubKey =>
      'Tržišni podaci nisu postavljeni (nema FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Nije moguće dohvatiti servis tržišnih podataka. Provjerite internetsku vezu.';

  @override
  String get errMarketRateLimited =>
      'Previše zahtjeva prema servisu tržišnih podataka. Pričekajte minutu.';

  @override
  String errMarketHttp(String status) {
    return 'Servis tržišnih podataka vratio je grešku (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Neočekivan odgovor servisa tržišnih podataka.';

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
    return 'Pritisnite $shortcut bilo gdje da otvorite WhatStock.';
  }

  @override
  String get trayOpen => 'Otvori WhatStock';

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
  String get aiGenerating =>
      'Pripremamo analizu… ovo može potrajati minutu ili dvije.';

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
  String get errAiNotConfigured =>
      'AI analiza nije postavljena (nema ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Nije moguće dohvatiti AI servis. Provjerite internetsku vezu.';

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
  String get chartUnavailable =>
      'Povijest cijena nije dostupna iz trenutnog izvora podataka.';

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
  String get statementsUnavailable =>
      'Objavljeni financijski izvještaji nisu dostupni za ovu dionicu.';

  @override
  String get launchAtLogin => 'Pokreni pri prijavi';

  @override
  String get hotkeyLabel => 'Globalni prečac';

  @override
  String get hotkeyRecordHint =>
      'Kliknite ovdje, a zatim pritisnite novu kombinaciju tipki';

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
  String get noFavorites =>
      'Još nema favorita. Dodirnite zvjezdicu pored dionice da biste je dodali.';

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
  String get updateDownloaded =>
      'Ažuriranje je spremno. Ponovno pokrenite aplikaciju da biste ga instalirali.';

  @override
  String get updateNow => 'Ažuriraj';

  @override
  String get restartNow => 'Ponovno pokreni';

  @override
  String get updatesViaStore =>
      'Ažuriranja stižu automatski putem trgovine aplikacija.';

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
  String get extraPacksHint =>
      'Dodatne analize nikada ne istječu i koriste se nakon mjesečne kvote.';

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
  String get errQuotaExceeded =>
      'Nemate više analiza u ovom razdoblju. Nadogradite plan ili kupite dodatne analize.';

  @override
  String get errTrialExpired =>
      'Vaše besplatno probno razdoblje je završilo. Odaberite plan da biste nastavili.';

  @override
  String get errNoPlan => 'Za AI analizu potreban je aktivan plan.';

  @override
  String get viewPlans => 'Prikaži planove';

  @override
  String get usageTitle => 'Potrošnja';

  @override
  String get demoPurchaseNote =>
      'Demo naplata: kupnje se na ovoj platformi simuliraju.';

  @override
  String get mostPopular => 'Najpopularniji';

  @override
  String get bestValue => 'Najbolja vrijednost';

  @override
  String get planFeaturesCommon =>
      'Prepoznavanje fotografija, podaci u stvarnom vremenu, grafikoni, favoriti i sva 120 jezika uključeni su u svaki plan. Kvota se odnosi na AI analize.';

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
  String get aiDepthDeepDesc =>
      'Više web-pretraživanja, usporedba s konkurentima i dublja razrada.';

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
  String get aiReaderBeginnerDesc =>
      'Jednostavan jezik; svaki stručni pojam je objašnjen.';

  @override
  String get aiReaderExperiencedDesc =>
      'Sažetiji tekst sa standardnom financijskom terminologijom.';

  @override
  String get aiCounterArgument => 'Najjači protuargument';

  @override
  String get aiCounterArgumentDesc =>
      'Sažetak uvijek završava najjačim argumentom protiv vlastitog zaključka.';

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

  @override
  String get outlookMarketMood => 'Raspoloženje tržišta';

  @override
  String get moodVeryPessimistic => 'Vrlo pesimistično';

  @override
  String get moodPessimistic => 'Pesimistično';

  @override
  String get moodNeutral => 'Neutralno';

  @override
  String get moodOptimistic => 'Optimistično';

  @override
  String get moodVeryOptimistic => 'Vrlo optimistično';

  @override
  String get scenarioBull => 'Optimistični scenarij';

  @override
  String get scenarioBase => 'Osnovni scenarij';

  @override
  String get scenarioBear => 'Pesimistični scenarij';

  @override
  String outlookCurrentPrice(String price) {
    return 'Trenutna cijena: $price';
  }

  @override
  String get outlookKeyLevels => 'Ključne razine';

  @override
  String get keyLevelSupport => 'Podrška';

  @override
  String get keyLevelResistance => 'Otpor';

  @override
  String get keyLevelAnchor => 'Sidro';

  @override
  String get upcomingEvents => 'Nadolazeći događaji';

  @override
  String get outlookChartNote =>
      'Okvirni rasponi; vjerojatnosti su gruba procjena, a ne predviđanja.';

  @override
  String get accountTitle => 'Račun';

  @override
  String get signIn => 'Prijava';

  @override
  String get signOut => 'Odjava';

  @override
  String get notSignedIn => 'Niste prijavljeni';

  @override
  String get accountBenefit =>
      'Prijavite se kako bi vaša pretplata radila na svim vašim uređajima.';

  @override
  String get accountSyncedNote =>
      'Vaša pretplata i preostale analize jednake su na svakom uređaju.';

  @override
  String get signInTitle => 'Prijava u WhatStock';

  @override
  String get emailLabel => 'Adresa e-pošte';

  @override
  String get continueWithEmail => 'Nastavi s e-poštom';

  @override
  String codeSentTo(String email) {
    return 'Poslali smo 6-znamenkasti kôd na $email. Vrijedi 10 minuta.';
  }

  @override
  String get codeLabel => 'Kôd za prijavu';

  @override
  String get resendCode => 'Pošalji novi kôd';

  @override
  String get useDifferentEmail => 'Koristi drugu e-poštu';

  @override
  String get errInvalidCode => 'Kôd je pogrešan ili je istekao.';

  @override
  String get errInvalidEmail => 'Unesite valjanu adresu e-pošte.';

  @override
  String get errSignInFailed =>
      'Prijava nije uspjela. Provjerite vezu i pokušajte ponovno.';

  @override
  String get checkoutWaiting =>
      'Dovršite plaćanje u pregledniku. Aplikacija će se automatski ažurirati kada završite.';

  @override
  String get paymentViaStripe =>
      'Sigurno plaćanje u pregledniku putem Stripea. Otkažite u bilo kojem trenutku.';

  @override
  String get paymentViaStore =>
      'Naplaćuje se putem vašeg App Store ili Google Play računa. Otkažite u bilo kojem trenutku u postavkama trgovine.';

  @override
  String get keySpace => 'Razmaknica';

  @override
  String get doubleOptionTitle => 'Dvostruki pritisak tipke Option';

  @override
  String get doubleOptionSubtitle =>
      'Brzim dvostrukim pritiskom tipke Option također otvarate WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Da bi radilo i u drugim aplikacijama, dopustite pristup aplikaciji WhatStock u odjeljku Postavke sustava → Privatnost i sigurnost → Nadzor unosa, a zatim ponovno otvorite aplikaciju.';

  @override
  String get openSystemSettings => 'Otvori Postavke sustava';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Pritisnite $shortcut ili dvaput pritisnite Option bilo gdje da otvorite WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Najvjerojatnije';

  @override
  String get longTermToday => 'Danas';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years godina',
      few: '$years godine',
      one: '$years godina',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range godišnje';
  }

  @override
  String longTermLikely(String price) {
    return 'najvjerojatnije $price';
  }

  @override
  String get confidenceLow => 'Niska pouzdanost';

  @override
  String get confidenceMedium => 'Srednja pouzdanost';

  @override
  String get confidenceHigh => 'Visoka pouzdanost';

  @override
  String get longTermNote =>
      'Dugoročni rasponi temelje se na navedenim pretpostavkama i s vremenom se šire. Cijene bez dividendi. Grube procjene, a ne predviđanja.';

  @override
  String get portfolio => 'Portfelj';

  @override
  String get portfolioEmpty =>
      'Još je prazan. Otvorite dionicu i dodirnite „Dodaj u portfelj” da biste pratili što posjedujete.';

  @override
  String get portfolioLocalNote =>
      'Sprema se samo na ovom uređaju. Zbrojevi se preračunavaju po referentnim tečajevima ESB-a; cijene mogu kasniti.';

  @override
  String get addToPortfolio => 'Dodaj u portfelj';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Dodaj $symbol';
  }

  @override
  String get portfolioQuantity => 'Broj dionica';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Cijena po dionici ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Datum kupnje';

  @override
  String get portfolioAdd => 'Dodaj';

  @override
  String get portfolioInvalidNumber => 'Unesite broj veći od nule.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol je dodana u portfelj.';
  }

  @override
  String get portfolioTotalValue => 'Ukupna vrijednost';

  @override
  String get portfolioToday => 'Danas';

  @override
  String get portfolioGainLoss => 'Dobit/gubitak';

  @override
  String homeDividendsThisYear(String amount) {
    return 'Dividende ove godine: $amount';
  }

  @override
  String get portfolioInvested => 'Uloženo';

  @override
  String get portfolioAllocation => 'Raspodjela';

  @override
  String get portfolioPositions => 'Pozicije';

  @override
  String portfolioAvgCost(String price) {
    return 'prosječna cijena $price';
  }

  @override
  String get portfolioYourPosition => 'Vaša pozicija';

  @override
  String get portfolioPurchases => 'Kupnje';

  @override
  String get portfolioRemove => 'Ukloni';

  @override
  String get portfolioExcluded =>
      'Pozicije bez cijene ili tečaja nisu uračunate u zbrojeve.';

  @override
  String get priceAlerts => 'Obavijesti o cijeni';

  @override
  String get setPriceAlert => 'Postavi obavijest o cijeni';

  @override
  String alertDialogTitle(String symbol) {
    return 'Obavijest o cijeni · $symbol';
  }

  @override
  String get alertKindAbove => 'Poraste iznad';

  @override
  String get alertKindBelow => 'Padne ispod';

  @override
  String get alertKindMove => 'Snažno se pomakne tijekom dana';

  @override
  String alertTargetPrice(String currency) {
    return 'Cijena ($currency)';
  }

  @override
  String get alertMovePercent => 'Dnevna promjena (%)';

  @override
  String get alertAlreadyMet => 'Cijena je već prešla ovu razinu.';

  @override
  String get alertSave => 'Postavi obavijest';

  @override
  String alertCreated(String symbol) {
    return 'Obavijest za $symbol je postavljena.';
  }

  @override
  String get alertsEmpty =>
      'Još nema obavijesti. Otvorite dionicu i dodirnite zvonce.';

  @override
  String get alertsNote =>
      'Obavijesti se provjeravaju svakih 5 minuta dok WhatStock radi. Na računalu aplikacija nastavlja raditi u traci izbornika ili na programskoj traci; na telefonu za sada javlja samo dok je aplikacija otvorena.';

  @override
  String alertDescAbove(String price) {
    return 'Iznad $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Ispod $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Dnevna promjena ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Aktivirano $date pri $price';
  }

  @override
  String get alertRearm => 'Ponovno uključi';

  @override
  String get alertDelete => 'Izbriši';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol je porasla iznad $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol je pala ispod $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol se danas pomaknula za $percent';
  }

  @override
  String alertHitBody(String price) {
    return 'Trenutačna cijena: $price';
  }

  @override
  String get alertOpen => 'Otvori';

  @override
  String get keepInTrayTitle => 'Radi i nakon zatvaranja prozora';

  @override
  String get keepInTraySubtitle =>
      'WhatStock ostaje u traci izbornika ili na programskoj traci, pa prečac i obavijesti o cijeni i dalje rade.';

  @override
  String get termsOfUse => 'Uvjeti korištenja';

  @override
  String get privacyPolicy => 'Pravila privatnosti';

  @override
  String get subscriptionLegal =>
      'Pretplata se automatski obnavlja svakog mjeseca dok je ne otkažete. Pretplatom prihvaćate Uvjete korištenja i Pravila privatnosti.';

  @override
  String get deleteAccount => 'Izbriši račun';

  @override
  String get deleteAccountTitle => 'Izbrisati račun?';

  @override
  String get deleteAccountBody =>
      'Vaš račun i sve što čuvamo na poslužitelju (e-pošta, limit, korištenje) bit će trajno izbrisani, a neiskorištene analize propadaju. Pretplatu plaćenu u pregledniku odmah otkazujemo; pretplatu putem App Storea ili Google Playa morate otkazati u postavkama trgovine.';

  @override
  String get deleteLocalData =>
      'Izbriši i podatke na ovom uređaju (portfelj, obavijesti, favoriti, povijest, spremljene analize)';

  @override
  String get deleteAccountConfirm => 'Trajno izbriši';

  @override
  String get accountDeleted => 'Vaš je račun izbrisan.';

  @override
  String get errDeleteAccount =>
      'Račun nije moguće izbrisati. Provjerite vezu i pokušajte ponovno.';

  @override
  String get aiTrialBriefNote =>
      'Probne analize su kratke i izrađuje ih brži AI model. Uz plan dobivate naš najsposobniji AI, više web-pretraživanja te standardnu i detaljnu duljinu.';

  @override
  String get billingMonthly => 'Mjesečno';

  @override
  String get billingYearly => 'Godišnje';

  @override
  String get yearlyDiscount => '2 mjeseca besplatno';

  @override
  String get perYear => '/ godina';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price mjesečno';
  }

  @override
  String get subscriptionLegalYearly =>
      'Godišnja pretplata se automatski obnavlja svake godine dok je ne otkažete. Pretplatom prihvaćate Uvjete korištenja i Pravila privatnosti.';

  @override
  String get myAnalyses => 'Moje analize';

  @override
  String get navAlerts => 'Obavijesti';

  @override
  String get inviteTitle => 'Zatvoreni pretpregled';

  @override
  String get inviteBody =>
      'WhatStock je zasad dostupan samo uz pozivnicu. Unesite kôd pozivnice koji ste primili.';

  @override
  String get inviteCodeLabel => 'Kôd pozivnice';

  @override
  String get inviteContinue => 'Nastavi';

  @override
  String get inviteInvalid => 'Ovaj kôd pozivnice nije valjan.';

  @override
  String get inviteExpired =>
      'Ova je pozivnica istekla. Zatražite novi kôd od osobe koja vas je pozvala.';

  @override
  String get inviteDeviceLimit =>
      'Ovaj se kôd pozivnice već koristi na najvećem dopuštenom broju uređaja.';

  @override
  String get previewConfidential => 'Povjerljivi pretpregled';

  @override
  String get errPreviewDailyLimit =>
      'Dosegnuto je današnje ograničenje analiza ovog pretpregleda. Pokušajte ponovno sutra.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'prije $count sati',
      few: 'prije $count sata',
      one: 'prije $count sat',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'prije $count dana',
      few: 'prije $count dana',
      one: 'prije $count dan',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Ažurirati ovu analizu?';

  @override
  String staleBody(String age) {
    return 'Ova analiza izrađena je $age. Cijene, vijesti i rezultati od tada su se možda promijenili.';
  }

  @override
  String get staleKeep => 'Prikaži raniju';

  @override
  String get staleRefresh => 'Izradi novu';

  @override
  String seeAll(int count) {
    return 'Prikaži sve ($count)';
  }

  @override
  String get searchAnalyses => 'Pretraži svoje analize';

  @override
  String get deleteAnalysis => 'Izbriši';

  @override
  String analysisDeleted(String symbol) {
    return 'Analiza $symbol izbrisana';
  }

  @override
  String get keyLevelAlertHint =>
      'Dodirnite razinu i dobit ćete obavijest kada je cijena dosegne.';

  @override
  String get shareAnalysisTitle => 'Podijeli analizu';

  @override
  String get shareAsImage => 'Podijeli kao sliku';

  @override
  String get shareAsText => 'Podijeli kao tekst';

  @override
  String get shareCardFooter => 'Izrađeno uz WhatStock';

  @override
  String get shareCardDisclaimer => 'AI analiza · nije investicijski savjet';

  @override
  String get referralTitle => 'Pozovite prijatelje';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dodatnih analiza',
      few: '$count dodatne analize',
      one: '$count dodatnu analizu',
    );
    return 'Podijelite svoj kôd. Vaš prijatelj odmah dobiva $_temp0, a vi isto toliko nakon njegove prve analize.';
  }

  @override
  String get referralYourCode => 'Vaš kôd';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Pozvano: $invited · Nagrađeno: $rewarded';
  }

  @override
  String get referralHaveCode => 'Imate kôd od prijatelja?';

  @override
  String get referralRedeem => 'Iskoristi';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dodano je $count dodatnih analiza. Dobro došli!',
      few: 'Dodane su $count dodatne analize. Dobro došli!',
      one: 'Dodana je $count dodatna analiza. Dobro došli!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Ovaj kôd ne postoji. Provjerite ga i pokušajte ponovno.';

  @override
  String get referralErrOwn => 'Ne možete iskoristiti vlastiti kôd.';

  @override
  String get referralErrAlready => 'Već ste iskoristili kôd prijatelja.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dodatnih analiza',
      few: '$count dodatne analize',
      one: '$count dodatnu analizu',
    );
    return 'Dionice analiziram uz WhatStock: fotografiraš dionicu i AI ti je objasni. S mojim kodom $code dobivaš $_temp0.';
  }

  @override
  String get referralCopied => 'Kôd je kopiran';

  @override
  String get onboardTitle1 => 'Fotografirajte dionicu';

  @override
  String get onboardBody1 =>
      'Dovoljan je zaslon brokerske aplikacije, novine ili logotip tvrtke: WhatStock prepoznaje dionicu i prikazuje njezinu cijenu, grafikon i ključne pokazatelje.';

  @override
  String get onboardTitle2 => 'Shvatite je za nekoliko minuta';

  @override
  String get onboardBody2 =>
      'AI analiza objašnjava što pokreće dionicu, koji su rizici, kakvo je vrednovanje te daje tri scenarija kamo bi cijena mogla ići – s izvorima i na vašem jeziku.';

  @override
  String get onboardTitle3 => 'Uvijek u tijeku';

  @override
  String get onboardBody3 =>
      'Favoriti, vaš portfelj i obavijesti o cijeni drže vas u tijeku. Vaše analize ostaju na vašem uređaju, spremne da ih ponovno otvorite.';

  @override
  String get onboardNext => 'Dalje';

  @override
  String get onboardStart => 'Započnite';

  @override
  String get onboardSkip => 'Preskoči';

  @override
  String changesTitle(String date) {
    return 'Od prethodne analize ($date)';
  }

  @override
  String get changesPrice => 'Cijena';

  @override
  String get changesNoMajor => 'Izgledi se nisu bitno promijenili.';

  @override
  String get changesPreviousSummary => 'Prethodni sažetak';

  @override
  String get telemetryTitle => 'Pomozite poboljšati WhatStock';

  @override
  String get telemetryBody =>
      'Dijelite anonimnu statistiku korištenja i izvješća o padovima: koje se značajke koriste i što je pošlo po zlu. Nikada vaše dionice, analize ili osobne podatke. To možete promijeniti u bilo kojem trenutku u Postavkama.';

  @override
  String get telemetryAllow => 'Dopusti';

  @override
  String get telemetryDecline => 'Ne, hvala';

  @override
  String get telemetrySetting => 'Anonimna statistika i izvješća o padovima';

  @override
  String get telemetrySettingHint =>
      'Koliko se često koriste značajke i izvješća o pogreškama, bez osobnih podataka ili sadržaja vaših pretraživanja i analiza.';

  @override
  String get askButton => 'Pitajte o ovoj analizi';

  @override
  String askTitle(String symbol) {
    return 'Pitanja: $symbol';
  }

  @override
  String get askIntro =>
      'Pitajte bilo što o analizi: što znači neki rizik, što bi moglo promijeniti izglede, kako je izračunat neki broj. Odgovori se temelje na ovoj analizi i nisu investicijski savjet.';

  @override
  String get askHint => 'Postavite pitanje…';

  @override
  String get askSend => 'Pošalji';

  @override
  String get askThinking => 'Razmišljam…';

  @override
  String get askSuggest1 => 'Koji je najveći rizik?';

  @override
  String get askSuggest2 => 'Što bi moglo promijeniti izglede?';

  @override
  String get askSuggest3 => 'Objasni to jednostavnim riječima';

  @override
  String get askMaxReached =>
      'To je bilo posljednje pitanje za ovu analizu. Za nova pitanja generirajte novu analizu.';

  @override
  String get errAskLimit =>
      'Dosegnuli ste današnje ograničenje pitanja. Pokušajte ponovno sutra.';

  @override
  String get eventTomorrow => 'Sutra';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'za $days dana',
      few: 'za $days dana',
      one: 'za $days dan',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Kvartalni rezultati';

  @override
  String get eventBeforeOpen => 'prije otvaranja burze';

  @override
  String get eventAfterClose => 'nakon zatvaranja burze';

  @override
  String eventEpsEstimate(String value) {
    return 'Očekivani EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Iz vaše analize';

  @override
  String get eventDividend => 'Očekivana dividenda';

  @override
  String get eventDividendEstimate =>
      'Procijenjeno iz vaših evidentiranih isplata';

  @override
  String get eventsHint =>
      'Datumi objave rezultata vaših favorita i dionica iz portfelja za sljedećih 90 dana, datirani događaji koje su istaknule vaše analize te dividende očekivane na temelju vaših evidentiranih isplata.';

  @override
  String get eventsEmpty =>
      'Nema datiranih događaja u sljedećih 90 dana. Dodajte favorite ili dionice u portfelj da biste ovdje vidjeli datume objave njihovih rezultata; evidentirane dividende prikazuju svoju očekivanu sljedeću isplatu.';

  @override
  String get compareTitle => 'Usporedba';

  @override
  String get compareAdd => 'Dodaj dionicu';

  @override
  String get compareRemove => 'Ukloni';

  @override
  String get compareTickerHint => 'Ticker, npr. MSFT';

  @override
  String get compareHint =>
      'Ključni pokazatelji jedan uz drugi; najbolja vrijednost u svakom retku je istaknuta. Iznosi su u valuti pojedine dionice.';

  @override
  String get compareNoAnalysis => 'Još nema analize';

  @override
  String get portfolioDividends => 'Godišnje dividende';

  @override
  String portfolioDividendYield(String percent) {
    return 'Prinos $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Očekivane godišnje dividende temelje se na dividendama isplaćenima u posljednjih 12 mjeseci; buduće isplate nisu zajamčene.';

  @override
  String positionDividend(String amount) {
    return 'Dividenda: $amount godišnje';
  }

  @override
  String get chartAvgCost => 'Vaša prosj.';

  @override
  String get chartAlertLevel => 'Obavijest';

  @override
  String get marketsToday => 'Tržišta danas';

  @override
  String get notesTitle => 'Moje bilješke';

  @override
  String get notesHint =>
      'Zašto ste je kupili, što pratite, zbog čega biste je prodali?';

  @override
  String get notesInfo =>
      'Sprema se samo na ovom uređaju. AI analiza uzima u obzir vaše bilješke.';

  @override
  String notesSaved(String date) {
    return 'Spremljeno $date';
  }

  @override
  String get peersTitle => 'Slične tvrtke';

  @override
  String get portfolioExport => 'Izvezi kao CSV';

  @override
  String get portfolioImport => 'Uvezi iz CSV-a';

  @override
  String get portfolioImportHint =>
      'Zalijepite jednu kupnju po retku: ticker simbol, količina, cijena, valuta, datum (GGGG-MM-DD). Stupci mogu biti odvojeni zarezima, točkama sa zarezom ili tabulatorima; redak sa zaglavljem nije obavezan.';

  @override
  String get portfolioImportButton => 'Uvezi';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dodano je $count kupnji',
      few: 'Dodane su $count kupnje',
      one: 'Dodana je $count kupnja',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Preskočeno je $count redaka',
      few: 'Preskočena su $count retka',
      one: 'Preskočen je $count redak',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Portfelj, favoriti, obavijesti o cijeni i bilješke sinkroniziraju se na svim vašim uređajima.';

  @override
  String syncLast(String time) {
    return 'Posljednja sinkronizacija: $time';
  }

  @override
  String get syncNow => 'Sinkroniziraj sada';

  @override
  String get syncFailed =>
      'Sinkronizacija nije uspjela. Automatski će se pokušati ponovno.';

  @override
  String get alertEmailTitle => 'E-pošta kad se obavijest aktivira';

  @override
  String get alertEmailOn =>
      'Vaše obavijesti provjeravamo svakih nekoliko minuta i šaljemo vam e-poštu, čak i kad je aplikacija zatvorena.';

  @override
  String get alertEmailSignIn =>
      'Prijavite se e-poštom u Postavkama da biste obavijesti primali e-poštom, čak i kad je aplikacija zatvorena.';

  @override
  String get portfolioHistory => 'Kretanje vrijednosti';

  @override
  String get portfolioReviewTitle => 'AI analiza portfelja';

  @override
  String get portfolioReviewIntro =>
      'AI pregledava cijeli vaš portfelj: koncentraciju, izloženost sektorima i valutama, zajedničke rizike vaših dionica i dividende. Troši 1 analizu.';

  @override
  String get portfolioReviewButton => 'Analiziraj moj portfelj';

  @override
  String get portfolioReviewAgain => 'Analiziraj ponovno';

  @override
  String get portfolioReviewWorking => 'Analiziramo vaš portfelj…';

  @override
  String get digestTitle => 'Tjedni sažetak e-poštom';

  @override
  String get digestHint =>
      'Svakog ponedjeljka: kako su se vaši favoriti i portfelj kretali prošlog tjedna te njihovi nadolazeći datumi rezultata.';

  @override
  String get benchmarkTitle => 'Usporedba sa S&P 500';

  @override
  String get benchmarkTitleIndex => 'Usporedba s indeksom';

  @override
  String get benchmarkHintIndex =>
      'Kao da je svaka kupnja istoga dana uložena u fond koji prati odabrani indeks. Bez dividendi; prošli prinosi ne predviđaju buduće.';

  @override
  String get benchmarkYours => 'Vaše kupnje';

  @override
  String benchmarkAhead(String points) {
    return '$points postotnih bodova bolje od indeksa';
  }

  @override
  String benchmarkBehind(String points) {
    return '$points postotnih bodova iza indeksa';
  }

  @override
  String get portfolioSell => 'Prodaj';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Prodaj $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Prodajna cijena po dionici ($currency)';
  }

  @override
  String get portfolioSellDate => 'Datum prodaje';

  @override
  String get portfolioSellAll => 'Sve';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Imate $quantity';
  }

  @override
  String get portfolioSold => 'Prodano';

  @override
  String get portfolioRealized => 'Ostvareno';

  @override
  String get portfolioClosed => 'Zatvorene pozicije';

  @override
  String get portfolioClosedNote => 'Sve dionice prodane';

  @override
  String get portfolioTransactions => 'Transakcije';

  @override
  String get portfolioRealizedByYear => 'Ostvarena dobit po godinama';

  @override
  String get portfolioRealizedHint =>
      'Prodaje se najprije uparuju s vašim najstarijim kupnjama (FIFO) i preračunavaju po današnjem tečaju. Za poreznu prijavu koristite izvadak svog brokera.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Od ove analize objavljeni su novi tromjesečni rezultati ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Novi rezultati';

  @override
  String get portfolioImportBrokers =>
      'Prepoznaju se i izvozi iz Revolut, Trading 212 i Interactive Brokers, zajedno s prodajama; dividende i uplate se preskaču.';

  @override
  String get portfolioImportFile => 'Odaberite datoteku';

  @override
  String offlineBanner(String time) {
    return 'Nema veze – prikazani su posljednji spremljeni podaci ($time).';
  }

  @override
  String get glossMarketCap =>
      'Koliko cijela tvrtka vrijedi na burzi: cijena dionice × broj dionica.';

  @override
  String get glossSharesOutstanding =>
      'Koliko je dionica tvrtka izdala. Ako broj raste, svaka dionica posjeduje manji dio; otkupi dionica ga smanjuju.';

  @override
  String get glossPeTrailing =>
      'Cijena ÷ dobit po dionici u zadnjih 12 mjeseci: koliko godina sadašnje dobiti plaćate. Niže je jeftinije, ali tvrtke koje brzo rastu obično imaju visok P/E.';

  @override
  String get glossPeForward =>
      'Kao P/E, ali s dobiti koju analitičari očekuju u sljedećih 12 mjeseci. Ako je niži od tekućeg P/E, očekuje se rast dobiti.';

  @override
  String get glossPb =>
      'Cijena ÷ knjigovodstvena vrijednost (imovina minus dugovi) po dionici. Oko 1 znači da tržište tvrtku vrednuje koliko ona posjeduje na papiru.';

  @override
  String get glossPs =>
      'Tržišna vrijednost ÷ godišnji prihodi. Korisno za tvrtke s malo ili još bez dobiti; uspoređujte unutar iste industrije.';

  @override
  String get glossEvToFcf =>
      'Vrijednost tvrtke uključujući dug (EV) ÷ novac koji ostvari u godini nakon ulaganja. Niže znači da za tu cijenu dobivate više novca.';

  @override
  String get glossPeg =>
      'P/E ÷ očekivani godišnji rast dobiti (%). Oko 1 često se smatra poštenim; stavlja P/E u odnos s rastom.';

  @override
  String get glossEps =>
      'Dobit po dionici u zadnjih 12 mjeseci. EPS koji raste iz godine u godinu jedan je od najjačih znakova zdrave tvrtke.';

  @override
  String get glossBeta =>
      'Koliko se dionica obično kreće s tržištem: 1 = kao tržište, 1,5 = oko 50% veća kolebanja, ispod 1 = mirnija.';

  @override
  String get glossRevenueTtm =>
      'Ukupna prodaja u zadnjih 12 mjeseci, prije bilo kakvih troškova.';

  @override
  String get glossNetIncomeTtm =>
      'Dobit koja ostaje nakon svih troškova, kamata i poreza u zadnjih 12 mjeseci.';

  @override
  String get glossGrossMargin =>
      'Udio prihoda koji ostaje nakon izravnih troškova proizvoda. Visoka marža često znači moć određivanja cijena.';

  @override
  String get glossOperatingMargin =>
      'Udio prihoda koji ostaje nakon vođenja poslovanja (plaće, najam, marketing), prije kamata i poreza.';

  @override
  String get glossNetMargin =>
      'Udio prihoda koji postaje konačna dobit. 20% znači da je od svakih 100 prodaje 20 dobit.';

  @override
  String get glossRoe =>
      'Povrat na kapital: godišnja dobit ÷ kapital vlasnika. Pokazuje koliko dobro uprava koristi novac dioničara; iznad otprilike 15% je snažno.';

  @override
  String get glossRoa =>
      'Povrat na imovinu: godišnja dobit ÷ sve što tvrtka posjeduje. Uspoređujte unutar iste industrije.';

  @override
  String get glossDebtToEquity =>
      'Dugovi ÷ kapital vlasnika. Više znači više posuđenog novca: veći rizik kad kamate rastu ili posao uspori.';

  @override
  String get glossCurrentRatio =>
      'Kratkoročna imovina ÷ obveze koje dospijevaju unutar godine. Iznad 1 znači da tvrtka može pokriti obveze koje uskoro dospijevaju.';

  @override
  String get glossRevenueGrowth =>
      'Koliko su prihodi narasli u odnosu na godinu ranije.';

  @override
  String get glossEpsGrowth =>
      'Koliko je dobit po dionici narasla u odnosu na godinu ranije.';

  @override
  String get glossDividendYield =>
      'Godišnja dividenda ÷ cijena dionice: novčani prihod koji biste dobivali godišnje, kao postotak onoga što platite.';

  @override
  String get glossDividendPerShare =>
      'Dividenda isplaćena na jednu dionicu u zadnjih godinu dana.';

  @override
  String get glossPayoutRatio =>
      'Udio dobiti isplaćen kao dividenda. Iznad 100% tvrtka isplaćuje više nego što zarađuje, što rijetko dugo traje.';

  @override
  String get portfolioBeta => 'Beta portfelja';

  @override
  String get glossPortfolioBeta =>
      'Beta vaših dionica, ponderirana njihovom vrijednošću: otprilike za koliko se posto vaše dionice pomaknu kad se tržište pomakne za 1%. Iznad 1 kolebaju više od tržišta, ispod 1 manje. Gotovina nije uključena.';

  @override
  String get portfolioTop3 => 'Top 3 pozicije';

  @override
  String get glossPortfolioTop3 =>
      'Koliki je dio vrijednosti vaših dionica u vaše tri najveće pozicije. Što je veći, to loše vijesti o jednoj tvrtki mogu više naštetiti cijelom portfelju.';

  @override
  String get glossDividendGrowth5y =>
      'Koliko je dividenda po dionici prosječno rasla godišnje u posljednjih pet godina. Stabilan rast obično znači da tvrtka ima povjerenja u svoj novčani tok; smanjenje je često znak upozorenja.';

  @override
  String get glossYieldOnCost =>
      'Dividende primljene u posljednjih 12 mjeseci podijeljene s onim što ste platili za dionice koje još držite. Za razliku od dividendnog prinosa, mjeri se prema vašoj kupovnoj cijeni, a ne prema današnjoj.';

  @override
  String get glossTitle => 'Što to znači?';

  @override
  String get watchNewsTitle => 'Vijesti o vašim dionicama';

  @override
  String get undo => 'Poništi';

  @override
  String get watchSort => 'Poredaj';

  @override
  String get watchSortOwn => 'Moj redoslijed';

  @override
  String get watchSortGainers => 'Najveći rast prvo';

  @override
  String get watchSortLosers => 'Najveći pad prvo';

  @override
  String get watchSortName => 'Po tickeru (A–Z)';

  @override
  String get watchHint =>
      'Povucite ručicu za promjenu redoslijeda, prijeđite prstom ulijevo za uklanjanje. Linija prikazuje posljednjih 30 dana.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: vaša analiza je spremna.';
  }

  @override
  String alertFromCost(String price) {
    return 'U odnosu na vašu prosječnu kupovnu cijenu ($price):';
  }

  @override
  String get briefTitle => 'Danas s vašim dionicama';

  @override
  String get briefButton => 'Sažmi današnji dan';

  @override
  String get briefHint =>
      'Kratak AI sažetak o tome kako su se danas kretali vaš portfelj i favoriti te što najnovije vijesti govore o njima. Ne troši analizu.';

  @override
  String get briefRefresh => 'Ažuriraj';

  @override
  String get sectionEarnings => 'Kvartalni rezultati';

  @override
  String earningsNext(String date) {
    return 'Sljedeća objava: $date';
  }

  @override
  String get earningsExpected => 'Očekivani EPS';

  @override
  String get earningsReported => 'Objavljeni EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Posljednji kvartali: EPS na razini očekivanog ili iznad u $beats od $total',
      one: 'EPS na razini očekivanog ili iznad u $beats od 1 kvartala',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol sutra objavljuje kvartalne rezultate';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol danas objavljuje kvartalne rezultate';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return '$symbol: dividenda se očekuje danas';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Oko $amount. Evidentirajte je u portfelju kada stigne.';
  }

  @override
  String get dividendRemindersTitle => 'Podsjetnici na dividende';

  @override
  String get dividendRemindersSubtitle =>
      'Obavijest na dan kada se prema ritmu vaših evidentiranih isplata očekuje dividenda, kako biste je mogli evidentirati';

  @override
  String get earningsRemindersTitle => 'Podsjetnici na rezultate';

  @override
  String get earningsRemindersSubtitle =>
      'Obavijest dan prije nego što dionice iz tvojih favorita ili portfelja objave kvartalne rezultate';

  @override
  String addAllToFavorites(int count) {
    return 'Dodaj sve u favorite ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Uvezi sa snimke zaslona';

  @override
  String get holdingsReading => 'Čitanje tvojih pozicija…';

  @override
  String get holdingsReviewTitle => 'Pronađene pozicije';

  @override
  String get holdingsReviewHint =>
      'Provjeri brojeve prije dodavanja. Cijena je tvoja prosječna kupovna cijena po dionici, a ne današnja cijena.';

  @override
  String get holdingsNoPrice => 'Na slici nema prosječne kupovne cijene';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dodaj $count pozicija',
      few: 'Dodaj $count pozicije',
      one: 'Dodaj $count poziciju',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Na ovoj slici nisu pronađene pozicije dionica. Pokušaj sa snimkom zaslona stranice s pozicijama ili imovinom kod svog brokera.';

  @override
  String get week52Range => '52-tjedni raspon';

  @override
  String week52BelowHigh(String percent) {
    return '$percent ispod 52-tjednog maksimuma';
  }

  @override
  String get week52AtHigh => 'Na 52-tjednom maksimumu';

  @override
  String get alertKindTrailing => 'Padne od vrha';

  @override
  String get alertTrailingPercent => 'Pad od vrha (%)';

  @override
  String get alertTrailingHint =>
      'Prati cijenu prema gore: upozorenje se oglasi kad cijena padne za toliko od najviše razine otkad ste ga postavili.';

  @override
  String alertDescTrailing(String percent) {
    return 'Pad od $percent od vrha';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'dosadašnji vrh: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol je pala za $percent od vrha';
  }

  @override
  String get sectionInsiders => 'Insajderske transakcije';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kupnji',
      few: '$count kupnje',
      one: '$count kupnja',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count prodaja',
      few: '$count prodaje',
      one: '$count prodaja',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Neto: $shares dionica';
  }

  @override
  String get insiderBuy => 'Kupljeno';

  @override
  String get insiderSell => 'Prodano';

  @override
  String get insiderHint =>
      'Kupnje i prodaje na otvorenom tržištu od strane uprave i direktora u posljednjih 90 dana (SEC Form 4). Izvršenja opcija i dodjele dionica ne ubrajaju se.';

  @override
  String get insiderNone =>
      'Nema insajderskih kupnji ni prodaja na otvorenom tržištu u posljednjih 90 dana.';

  @override
  String get analystTrend =>
      'Kako su se mišljenja mijenjala iz mjeseca u mjesec';

  @override
  String get watchListAll => 'Sve';

  @override
  String get watchListNew => 'Novi popis';

  @override
  String get watchListName => 'Naziv popisa';

  @override
  String get watchListRename => 'Preimenuj popis';

  @override
  String get watchListDelete => 'Izbriši popis';

  @override
  String get watchListAddTo => 'Dodaj na popis';

  @override
  String get watchListEmpty =>
      'Na ovom popisu još nema dionica. Dodirnite gumb popisa pokraj dionice da biste je dodali.';

  @override
  String get portfolioAskTitle => 'Pitanja o vašem portfelju';

  @override
  String get rangeYtd => 'Od poč. g.';

  @override
  String get backupTitle => 'Sigurnosna kopija';

  @override
  String get backupSave => 'Spremi sigurnosnu kopiju';

  @override
  String get backupSaveHint =>
      'Vaši favoriti, popisi, portfelj, obavijesti i bilješke u jednoj datoteci.';

  @override
  String get backupRestore => 'Vrati iz sigurnosne kopije';

  @override
  String get backupRestoreHint =>
      'Dodaje ono što je u datoteci; ništa od onoga što sada imate neće se izbrisati.';

  @override
  String get backupRestored => 'Sigurnosna kopija je vraćena.';

  @override
  String get backupInvalid => 'Ova datoteka nije WhatStock sigurnosna kopija.';

  @override
  String get allocationPositions => 'Dionice';

  @override
  String get allocationSectors => 'Sektori';

  @override
  String get allocationCurrencies => 'Valute';

  @override
  String get allocationAccounts => 'Računi';

  @override
  String get compareReturn1y => 'Prinos za 1 godinu';

  @override
  String get compareFromHigh => 'Od 52-tjednog maksimuma';

  @override
  String get briefAutoTitle => 'Dnevni sažetak svako jutro';

  @override
  String get briefAutoSubtitle =>
      '„Danas s vašim dionicama“ izrađuje se automatski nakon 7:00 dok aplikacija radi; na računalima stiže obavijest. Troši vaše dnevno ograničenje pitanja, ne analizu.';

  @override
  String get targetsButton => 'Ciljna raspodjela';

  @override
  String get targetsTitle => 'Ciljna raspodjela';

  @override
  String get targetsHint =>
      'Odredite koliki udio portfelja treba imati svaka dionica. Ostavite polje prazno ako nema cilja. Aplikacija će zatim pokazati što treba kupiti ili prodati da biste to postigli.';

  @override
  String targetsSum(String percent) {
    return 'Ukupno: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Kupi ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Prodaj ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Na cilju';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol je nadmašio očekivani EPS';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol nije dosegnuo očekivani EPS';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'Objavljeni EPS $actual, očekivani $estimate';
  }

  @override
  String get newsExplain => 'Što ovo znači?';

  @override
  String get watchAlertAll => 'Upozorenje na velike dnevne promjene';

  @override
  String get watchAlertAllHint =>
      'Cjenovno upozorenje za svaku dionicu na ovom popisu koje se oglasi kada se ona u jednom danu pomakne ovoliko, gore ili dolje. Dionice koje ga već imaju zadržavaju svoje.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Postavljeno je $count upozorenja',
      few: 'Postavljena su $count upozorenja',
      one: 'Postavljeno je $count upozorenje',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Izvezi ostvarenu dobit (CSV)';

  @override
  String get portfolioAnnualReturn => 'Godišnji prinos';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / god.';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Novčano ponderirani godišnji prinos (XIRR): uzima u obzir kada ste kupovali i prodavali, pa ga kasnije dodani novac ne iskrivljuje. Prikazuje se kad vaša prva kupnja bude stara barem godinu dana; dividende nisu uključene.';

  @override
  String get eventsAddToCalendar => 'Dodaj u kalendar (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Upozorenje za portfelj';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Obavijest kada se cijeli tvoj portfelj u jednom danu pomakne ovoliko.';

  @override
  String get portfolioMoveAlertOff => 'Isključeno';

  @override
  String portfolioMoveUp(String percent) {
    return 'Tvoj portfelj danas je porastao za $percent';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Tvoj portfelj danas je pao za $percent';
  }

  @override
  String get whatIfTitle => 'Što da ste uložili?';

  @override
  String get whatIfAmount => 'Iznos';

  @override
  String whatIfResult(String amount, String period) {
    return 'Ulaganje od $amount (razdoblje: $period) danas bi vrijedilo';
  }

  @override
  String get whatIfNote =>
      'Samo na temelju cijene dionice: dividende, naknade i porezi nisu uključeni. Prošli prinosi ne predviđaju buduće.';

  @override
  String get watchShare => 'Podijeli popis';

  @override
  String get watchImport => 'Dodaj ticker simbole';

  @override
  String get watchImportHint =>
      'Zalijepite ticker simbole odvojene zarezima, razmacima ili novim redovima – na primjer popis koji je netko podijelio s vama.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dodano je $count dionica',
      few: 'Dodane su $count dionice',
      one: 'Dodana je $count dionica',
      zero: 'Nema novih dionica',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Najveće prvo';

  @override
  String get positionsSortGain => 'Najveći ukupni prinos prvo';

  @override
  String get positionsSortToday => 'Najbolje danas prvo';

  @override
  String get chartMyBuys => 'Vaše kupnje';

  @override
  String get chartMySells => 'Vaše prodaje';

  @override
  String get shortcutsTitle => 'Tipkovnički prečaci';

  @override
  String usMarketOpen(String time) {
    return 'Tržište SAD-a otvoreno · zatvara se za $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Tržište SAD-a zatvoreno · otvara se za $time';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes min';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours h $minutes min';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days d $hours h';
  }

  @override
  String get dividendGoalSet => 'Postavi mjesečni cilj dividendi';

  @override
  String get dividendGoalTitle => 'Mjesečni cilj dividendi';

  @override
  String get dividendGoalAmount => 'Dividende mjesečno';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Oko $amount mjesečno uz današnje prinose: $percent od tvog cilja od $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Oko $amount mjesečno uz današnje prinose: tvoj cilj od $goal je ostvaren';
  }

  @override
  String get portfolioAccount => 'Račun';

  @override
  String get portfolioAccountHint => 'npr. TBSZ 2026 (neobavezno)';

  @override
  String get portfolioAccountAdd => 'Navedite račun';

  @override
  String get portfolioAccountsAll => 'Svi računi';

  @override
  String get portfolioAccountNote =>
      'Samo transakcije i dividende ovog računa. Gotovina, ciljevi i AI analiza prikazuju se pod „Svi računi”.';

  @override
  String get portfolioNoAccount => 'Bez računa';

  @override
  String portfolioFee(String currency) {
    return 'Provizija ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Dodajte proviziju';

  @override
  String portfolioFeeRow(String amount) {
    return 'Provizija: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'Godišnji pregled';

  @override
  String get portfolioProceeds => 'Primici od prodaje';

  @override
  String get portfolioCostBasis => 'Nabavna vrijednost';

  @override
  String get portfolioFeesPaid => 'Plaćena provizija';

  @override
  String get portfolioAnnualSummaryNote =>
      'Iznosi su u izvornoj valuti, nisu preračunati. Primici od prodaje umanjeni su za proviziju pri prodaji; nabavna vrijednost uključuje proviziju pri kupnji (FIFO). Za poreznu prijavu preračunajte po tečaju koji zahtijeva vaša porezna uprava.';

  @override
  String get portfolioShare => 'Podijeli rezultate';

  @override
  String get portfolioShareHeading => 'Moj portfelj';

  @override
  String get portfolioTopHoldings => 'Najveće pozicije';

  @override
  String get portfolioShareNote => 'Dijele se samo postoci, bez iznosa.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pozicija',
      few: '$count pozicije',
      one: '$count pozicija',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'Nije investicijski savjet';

  @override
  String get contributionButton => 'Uloži novi novac';

  @override
  String contributionAmount(String currency) {
    return 'Iznos za ulaganje ($currency)';
  }

  @override
  String get contributionHint =>
      'Samo kupnja, bez prodaje: novac prvo dobivaju pozicije koje najviše zaostaju za svojim ciljem.';

  @override
  String contributionShares(String shares) {
    return '≈ $shares kom.';
  }

  @override
  String contributionMissing(String symbols) {
    return 'Nema trenutačne cijene za $symbols: nisu uključeni u raspodjelu.';
  }

  @override
  String get portfolioGoalSet => 'Postavi cilj';

  @override
  String get portfolioGoalTitle => 'Cilj portfelja';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent od tvog cilja od $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Cilj od $amount je ostvaren';
  }

  @override
  String get portfolioGoalRemove => 'Ukloni cilj';

  @override
  String get alertEdit => 'Uredi obavijest';

  @override
  String get positionOpenLots => 'Još u posjedu (prvo najstarije)';

  @override
  String get lotRemoved => 'Transakcija izbrisana';

  @override
  String get alertDeleted => 'Upozorenje je izbrisano';

  @override
  String get alertsClearTriggered => 'Izbriši aktivirana upozorenja';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Izbrisano je $count upozorenja',
      few: 'Izbrisana su $count upozorenja',
      one: 'Izbrisano je $count upozorenje',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Početni zaslon';

  @override
  String get allocationCountries => 'Države';

  @override
  String get newsExplainNoteResearch =>
      'Objašnjenje umjetne inteligencije: traži činjenice na internetu, otvara članak i procjenjuje koliko je izvor pouzdan. Nije investicijski savjet. Troši vaše dnevno ograničenje pitanja, ne analizu.';

  @override
  String get sourceOfficial => 'Službeno';

  @override
  String get sourcePressRelease => 'Priopćenje';

  @override
  String get sourceMajorNews => 'Veliki medij';

  @override
  String get sourceOpinion => 'Mišljenje';

  @override
  String get earningsSummaryButton => 'Što je bilo u posljednjem izvješću?';

  @override
  String get earningsSummaryNote =>
      'Sažetak umjetne inteligencije o objavi rezultata tvrtke i medijskim napisima koje pronađe na internetu. Nije investicijski savjet. Troši vaše dnevno ograničenje pitanja, ne analizu.';

  @override
  String get compareLastSurprise => 'EPS zadnjeg kvartala vs. očekivani';

  @override
  String get compareNextReport => 'Sljedeća objava';

  @override
  String get resolvingDescription => 'Utvrđujemo na koju dionicu mislite…';

  @override
  String get instrumentTitle => 'O ovom instrumentu';

  @override
  String get instrumentHint =>
      'Za ovaj simbol ne postoji profil tvrtke – možda je riječ o ETF-u, fondu ili depozitarnoj potvrdi. Pitajte AI što je to, što sadrži i koliko košta.';

  @override
  String get instrumentAsk => 'Što je ovo?';

  @override
  String get instrumentNote =>
      'Objašnjenje umjetne inteligencije na temelju stranice fonda kod izdavatelja i financijskih stranica koje pronađe na internetu. Nije investicijski savjet. Troši vaše dnevno ograničenje pitanja, ne analizu.';

  @override
  String suggestAskAi(String query) {
    return 'Pitajte AI: „$query“';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Nema trenutačne cijene za $symbols.';
  }

  @override
  String get eventsRecentResults => 'Nedavno objavljeni rezultati';

  @override
  String get saveToNotes => 'Spremi u moje bilješke';

  @override
  String get savedToNotes => 'Spremljeno u vaše bilješke';

  @override
  String get portfolioDividendsReceived => 'Primljene dividende';

  @override
  String get portfolioDividendsThisYear => 'Ove godine';

  @override
  String get portfolioDividendsAllTime => 'Od početka';

  @override
  String get portfolioAddDividend => 'Dodaj dividendu';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Primljeni iznos ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Datum isplate';

  @override
  String get portfolioDividendsEmpty =>
      'Još nema zabilježenih dividendi. Dodajte ih ručno ili uvezite izvoz svog brokera – preuzimaju se i njegovi redovi s dividendama.';

  @override
  String get portfolioSplit => 'Podjela dionica';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Podjela dionica: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Kupnje i prodaje s datumom prije podjele usklađuju se: broj dionica se množi, a cijena po dionici dijeli, tako da trošak ostaje isti.';

  @override
  String get portfolioSplitRatio => 'Omjer (nove : stare)';

  @override
  String get portfolioSplitRatioError =>
      'Unesite omjer poput 10:1 ili 1:10 za obrnutu podjelu.';

  @override
  String get portfolioSplitDate => 'Datum podjele';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Podjela dionica $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Podjela dionica izbrisana';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dodano je $count podjela dionica',
      one: 'Dodana je 1 podjela dionica',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dodano $count dividendi',
      few: 'Dodane $count dividende',
      one: 'Dodana $count dividenda',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Izvezi dividende (CSV)';

  @override
  String get portfolioDividendDeleted => 'Dividenda izbrisana';

  @override
  String get portfolioDividendsHint =>
      'Iznosi onakvi kakvi su stigli na vaš račun, u valuti isplate; ukupni iznosi preračunavaju se po današnjem tečaju. Za poreznu prijavu koristite izvadak svog brokera.';

  @override
  String get awayTitle => 'Dok ste bili odsutni';

  @override
  String awaySince(String when) {
    return 'Od $when';
  }

  @override
  String get awayQuiet => 'Ništa se nije puno promijenilo.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Aktivirano $count upozorenja',
      few: 'Aktivirana $count upozorenja',
      one: 'Aktivirano $count upozorenje',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Objavili rezultate: $symbols';
  }

  @override
  String get moveWhyButton => 'Zašto se danas kreće?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent danas';
  }

  @override
  String get moveWhyNote =>
      'AI objašnjenje iz današnjih vijesti pronađenih na webu; pravi razlog može biti nepoznat ili drugačiji. Nije investicijski savjet. Troši vašu dnevnu kvotu pitanja, ne analizu.';

  @override
  String get sectionTechnical => 'Tehnička slika';

  @override
  String get labelSma50 => '50-dnevni prosjek';

  @override
  String get labelSma200 => '200-dnevni prosjek';

  @override
  String get labelRsi => 'RSI (14 dana)';

  @override
  String get labelVolatility30 => 'Volatilnost (30 dana)';

  @override
  String techAbove(String percent) {
    return '$percent iznad';
  }

  @override
  String techBelow(String percent) {
    return '$percent ispod';
  }

  @override
  String get techOverbought => 'prekupljeno';

  @override
  String get techOversold => 'preprodano';

  @override
  String get techNeutral => 'neutralno';

  @override
  String get techGoldenCross =>
      '50-dnevni prosjek je iznad 200-dnevnog – prema klasičnom tumačenju, uzlazni trend.';

  @override
  String get techDeathCross =>
      '50-dnevni prosjek je ispod 200-dnevnog – prema klasičnom tumačenju, silazni trend.';

  @override
  String get glossSma50 =>
      'Prosječna cijena zatvaranja u posljednjih 50 dana trgovanja. Cijena iznad njega često se tumači kao kratkoročna snaga, ispod njega kao slabost.';

  @override
  String get glossSma200 =>
      'Prosječna cijena zatvaranja u posljednjih 200 dana trgovanja – klasična dugoročna linija trenda. Mnogi ulagači cijenu iznad njega smatraju dugoročnim uzlaznim trendom.';

  @override
  String get glossRsi =>
      'Indeks relativne snage: uspoređuje nedavne dobitke s nedavnim gubicima na ljestvici od 0 do 100. Iznad 70 dionica se često naziva prekupljenom (brzo je rasla), ispod 30 preprodanom – ali snažan trend može ondje ostati dugo.';

  @override
  String get glossVolatility =>
      'Koliko cijena oscilira iz dana u dan, preračunato na godinu: 20 % znači da se u tipičnoj godini kreće unutar otprilike ±20 %. Veća volatilnost znači veće pomake u oba smjera.';

  @override
  String get techNote =>
      'Izračunato iz dnevnih cijena zatvaranja. Tehnički signali opisuju prošlost, ne budućnost.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$above od $count pozicija iznad svog 200-dnevnog prosjeka';
  }

  @override
  String get watchSignalsTitle => 'Signali';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · preprodano';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · prekupljeno';
  }

  @override
  String get signalCrossedAbove => 'probila iznad 200-dnevnog prosjeka';

  @override
  String get signalCrossedBelow => 'probila ispod 200-dnevnog prosjeka';

  @override
  String get signalAlertsTitle => 'Obavijesti o tehničkim signalima';

  @override
  String get signalAlertsSubtitle =>
      'Jednom dnevno, kada dionica koju pratiš postane preprodana ili prekupljena (RSI), ili kada njezina cijena prijeđe 200-dnevni prosjek.';

  @override
  String get signalAlertsNotification => 'Tehnički signali';

  @override
  String get glossaryPageTitle => 'Pojmovnik';

  @override
  String get glossaryPageSubtitle =>
      'Jednostavna objašnjenja svake brojke u aplikaciji, od P/E do RSI';

  @override
  String get glossarySearchHint => 'Pretraži pojmovnik';

  @override
  String get portfolioCash => 'Gotovina';

  @override
  String get portfolioCashTitle => 'Stanje gotovine';

  @override
  String get portfolioCashHint =>
      'Neuloženi novac kod vašeg brokera, po valutama. Računa se u ukupnu vrijednost i raspodjelu; ne u prinos.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Iznos ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Postavi stanje gotovine';

  @override
  String get portfolioDividendsByMonth => 'Po mjesecima';

  @override
  String get dividendsLegendReceived => 'Primljene';

  @override
  String get dividendsLegendExpected => 'Očekivane';

  @override
  String get portfolioDividendsExpected => 'Očekivano sljedeće';

  @override
  String get portfolioDividendsExpectedNote =>
      'Procijenjeno iz datuma i iznosa isplata koje ste zabilježili; društva ih mogu promijeniti ili izostaviti.';

  @override
  String portfolioDividendAround(String date) {
    return 'oko $date';
  }
}
