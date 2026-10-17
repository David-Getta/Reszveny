// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bosnian (`bs`).
class AppLocalizationsBs extends AppLocalizations {
  AppLocalizationsBs([String locale = 'bs']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'Fotografišite dionicu i saznajte sve o njoj.';

  @override
  String get homeHint =>
      'Potvrda o dionicama, ekran brokerske aplikacije, novine ili logo kompanije – bilo šta po čemu se dionica može prepoznati.';

  @override
  String get takePhoto => 'Snimi fotografiju';

  @override
  String get chooseFromGallery => 'Odaberi iz galerije';

  @override
  String get chooseImage => 'Odaberi sliku';

  @override
  String get enterTickerManually => 'Ručno unesi tiker';

  @override
  String get tickerInputLabel => 'Tiker simbol';

  @override
  String get tickerInputHint => 'npr. AAPL';

  @override
  String get lookUp => 'Pretraži';

  @override
  String demoModeBanner(String symbols) {
    return 'Demo režim – ključ za tržišne podatke nije postavljen. Primjeri podataka dostupni su za: $symbols.';
  }

  @override
  String get recognizing => 'Analiza slike…';

  @override
  String get loadingData => 'Učitavanje podataka…';

  @override
  String get noCandidatesTitle => 'Dionica nije prepoznata';

  @override
  String get noCandidatesBody =>
      'Nismo uspjeli prepoznati dionicu na ovoj slici. Pokušajte s oštrijom fotografijom ili ručno unesite tiker.';

  @override
  String get whatWeSaw => 'Šta smo vidjeli';

  @override
  String get chooseCandidateTitle => 'Koju dionicu ste mislili?';

  @override
  String confidencePercent(int percent) {
    return '$percent% pouzdanosti';
  }

  @override
  String get settings => 'Postavke';

  @override
  String get language => 'Jezik';

  @override
  String get systemLanguage => 'Zadano u sistemu';

  @override
  String get about => 'O aplikaciji';

  @override
  String get disclaimer =>
      'Ova aplikacija služi samo u informativne svrhe i ne predstavlja investicijski savjet. Podaci mogu kasniti ili biti netačni.';

  @override
  String dataSource(String source) {
    return 'Izvor podataka: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Prepoznavanje: $source';
  }

  @override
  String get retry => 'Pokušaj ponovo';

  @override
  String get cancel => 'Otkaži';

  @override
  String get ok => 'U redu';

  @override
  String get close => 'Zatvori';

  @override
  String get errorGeneric => 'Nešto nije u redu.';

  @override
  String get errorSectionUnavailable => 'Ovaj dio nije moguće učitati.';

  @override
  String get notAvailable => 'n/d';

  @override
  String get sectionIdentity => 'Identifikacija';

  @override
  String get sectionPrice => 'Cijena';

  @override
  String get sectionValuation => 'Vrednovanje';

  @override
  String get sectionFinancials => 'Finansijski podaci';

  @override
  String get sectionDividend => 'Dividenda';

  @override
  String get sectionProfile => 'Profil kompanije';

  @override
  String get sectionAnalysts => 'Ocjene analitičara';

  @override
  String get sectionNews => 'Vijesti';

  @override
  String get sectionRecognition => 'Detalji prepoznavanja';

  @override
  String get labelSymbol => 'Tiker';

  @override
  String get labelExchange => 'Berza';

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
  String get labelWebsite => 'Web stranica';

  @override
  String get labelIpoDate => 'Datum IPO-a';

  @override
  String get labelMarketCap => 'Tržišna kapitalizacija';

  @override
  String get labelSharesOutstanding => 'Dionice u opticaju';

  @override
  String get labelEmployees => 'Uposlenici';

  @override
  String get labelCeo => 'Izvršni direktor';

  @override
  String get labelHeadquarters => 'Sjedište';

  @override
  String get labelDescription => 'Opis';

  @override
  String get labelLastPrice => 'Posljednja cijena';

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
  String get labelWeek52High => '52-sedmični maksimum';

  @override
  String get labelWeek52Low => '52-sedmični minimum';

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
  String get labelRevenueGrowth => 'Rast prihoda (g/g)';

  @override
  String get labelEpsGrowth => 'Rast EPS-a (g/g)';

  @override
  String get labelDividendYield => 'Dividendni prinos';

  @override
  String get labelDividendPerShare => 'Dividenda po dionici';

  @override
  String get labelPayoutRatio => 'Omjer isplate';

  @override
  String get labelConsensus => 'Konsenzus';

  @override
  String get ratingStrongBuy => 'Snažna kupovina';

  @override
  String get ratingBuy => 'Kupovina';

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
    return 'Period: $period';
  }

  @override
  String get noNews => 'Nema novijih vijesti.';

  @override
  String get openArticle => 'Otvori članak';

  @override
  String get openLinkFailed => 'Link nije moguće otvoriti.';

  @override
  String get recognitionSummary => 'Sažetak';

  @override
  String get recognitionEvidence => 'Zašto tako mislimo';

  @override
  String get recognitionRawText => 'Tekst pročitan sa slike';

  @override
  String get errMissingAnthropicKey =>
      'Prepoznavanje slika nije postavljeno (nema ANTHROPIC_API_KEY). Ručno unesite tiker.';

  @override
  String get errRecognitionUnreachable =>
      'Servis za prepoznavanje nije dostupan. Provjerite internetsku vezu.';

  @override
  String errRecognitionHttp(String status) {
    return 'Servis za prepoznavanje vratio je grešku (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Servis za prepoznavanje nije mogao obraditi ovu sliku.';

  @override
  String get errRecognitionTruncated =>
      'Odgovor servisa za prepoznavanje je prekinut. Pokušajte ponovo.';

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
      'Servis za tržišne podatke nije dostupan. Provjerite internetsku vezu.';

  @override
  String get errMarketRateLimited =>
      'Previše zahtjeva prema servisu za tržišne podatke. Sačekajte minutu.';

  @override
  String errMarketHttp(String status) {
    return 'Servis za tržišne podatke vratio je grešku (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Neočekivan odgovor servisa za tržišne podatke.';

  @override
  String errNoQuote(String symbol) {
    return 'Nisu pronađeni podaci o cijeni za $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Nije pronađen profil kompanije za $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Demo režim podržava samo $symbols. Dodajte FINNHUB_API_KEY za podatke uživo.';
  }

  @override
  String errUnknown(String detail) {
    return 'Nešto nije u redu: $detail';
  }

  @override
  String get newSearch => 'Nova pretraga';

  @override
  String get recentSearches => 'Nedavno';

  @override
  String get noRecentSearches => 'Još nema nedavnih pretraga.';

  @override
  String get clearRecent => 'Obriši nedavne';

  @override
  String get greeting => 'Koju dionicu ćemo pogledati?';

  @override
  String get searchHint => 'Tiker ili naziv kompanije';

  @override
  String get attachImage => 'Priloži sliku';

  @override
  String get searchResultsTitle => 'Rezultati pretrage';

  @override
  String errNoResults(String query) {
    return 'Nisu pronađene dionice za „$query“.';
  }

  @override
  String get quickBarHint => 'Unesite tiker ili naziv kompanije…';

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
  String get trayQuit => 'Izađi';

  @override
  String get appearance => 'Izgled';

  @override
  String get themeSystem => 'Sistem';

  @override
  String get themeDark => 'Tamna';

  @override
  String get themeLight => 'Svijetla';

  @override
  String get back => 'Nazad';

  @override
  String get aiSectionTitle => 'AI analiza';

  @override
  String get aiIntro =>
      'Detaljan pregled koji piše umjetna inteligencija: sažetak novijih vijesti, poslovanje, snage, rizici i skriveni faktori, vrednovanje, izgledi cijene sa scenarijima iz psihološkog, sociološkog, tehničkog i makroekonomskog ugla te na šta obratiti pažnju.';

  @override
  String get aiGenerate => 'Generiši analizu';

  @override
  String get aiRegenerate => 'Generiši ponovo';

  @override
  String get aiGenerating =>
      'Pripremamo analizu… ovo može potrajati minutu-dvije.';

  @override
  String get aiSources => 'Izvori';

  @override
  String aiGeneratedAt(String time) {
    return 'Generisano $time';
  }

  @override
  String get aiDisclaimer =>
      'Analiza koju je generisala umjetna inteligencija na osnovu javnih podataka i novijih vijesti. Može sadržavati greške ili biti zastarjela i nije investicijski savjet.';

  @override
  String get errAiNotConfigured =>
      'AI analiza nije postavljena (nema ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'AI servis nije dostupan. Provjerite internetsku vezu.';

  @override
  String errAiHttp(String status) {
    return 'AI servis vratio je grešku (HTTP $status).';
  }

  @override
  String get errAiRefused => 'AI servis je odbio analizirati ovu dionicu.';

  @override
  String get errAiBadResponse => 'Neočekivan odgovor AI servisa.';

  @override
  String get sectionChart => 'Grafikon cijene';

  @override
  String get rangeOneWeek => '1S';

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
      'Historija cijena nije dostupna iz trenutnog izvora podataka.';

  @override
  String get sectionStatements => 'Finansijski izvještaji (godišnji)';

  @override
  String get labelFiscalYear => 'Fiskalna godina';

  @override
  String get labelRevenue => 'Prihodi';

  @override
  String get labelNetIncome => 'Neto dobit';

  @override
  String get labelTotalAssets => 'Ukupna imovina';

  @override
  String get labelTotalLiabilities => 'Ukupne obaveze';

  @override
  String get labelEquity => 'Kapital dioničara';

  @override
  String get labelOperatingCashFlow => 'Operativni novčani tok';

  @override
  String get statementsUnavailable =>
      'Objavljeni finansijski izvještaji nisu dostupni za ovu dionicu.';

  @override
  String get launchAtLogin => 'Pokreni pri prijavi';

  @override
  String get hotkeyLabel => 'Globalna prečica';

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
      'Još nema favorita. Dodirnite zvjezdicu pored dionice da je dodate.';

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
    return 'Kurs: 1 $from = $rate $to (ECB, $date)';
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
      'Ažuriranje je spremno. Ponovo pokrenite aplikaciju da ga instalirate.';

  @override
  String get updateNow => 'Ažuriraj';

  @override
  String get restartNow => 'Ponovo pokreni';

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
      other: 'Besplatni probni period od $days dana uključuje $count analiza',
      few: 'Besplatni probni period od $days dana uključuje $count analize',
      one: 'Besplatni probni period od $days dana uključuje $count analizu',
    );
    return '$_temp0';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Preostalo je još $days dana probnog perioda',
      few: 'Preostala su još $days dana probnog perioda',
      one: 'Preostao je još $days dan probnog perioda',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Vaš besplatni probni period je završen. Odaberite plan da nastavite s analizama.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Preostale analize u ovom periodu: $remaining od $total';
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
      'Dodatne analize nikad ne ističu i koriste se nakon mjesečne kvote.';

  @override
  String get buy => 'Kupi';

  @override
  String get restorePurchases => 'Vrati kupovine';

  @override
  String get manageSubscription => 'Upravljaj pretplatom';

  @override
  String get purchaseSuccess => 'Hvala! Vaša kupovina je aktivna.';

  @override
  String get purchasePending => 'Kupovina u toku…';

  @override
  String get purchaseFailed => 'Kupovinu nije moguće završiti.';

  @override
  String get purchaseCanceled => 'Kupovina je otkazana.';

  @override
  String get billingUnavailable =>
      'Kupovina još nije dostupna na ovoj platformi. Pretplatite se na telefonu ili Macu; vaš plan će raditi na svim uređajima.';

  @override
  String get errQuotaExceeded =>
      'Nemate više analiza u ovom periodu. Nadogradite plan ili kupite dodatne analize.';

  @override
  String get errTrialExpired =>
      'Vaš besplatni probni period je završen. Odaberite plan da nastavite.';

  @override
  String get errNoPlan => 'Za AI analizu potreban je aktivan plan.';

  @override
  String get viewPlans => 'Pogledaj planove';

  @override
  String get usageTitle => 'Potrošnja';

  @override
  String get demoPurchaseNote =>
      'Demo naplata: kupovine se na ovoj platformi simuliraju.';

  @override
  String get mostPopular => 'Najpopularniji';

  @override
  String get bestValue => 'Najisplativiji';

  @override
  String get planFeaturesCommon =>
      'Prepoznavanje fotografija, podaci uživo, grafikoni, favoriti i svih 120 jezika uključeni su u svaki plan. Kvota se odnosi na AI analize.';

  @override
  String get searchLanguages => 'Pretraži jezike…';

  @override
  String get noLanguageMatch => 'Nijedan jezik ne odgovara.';

  @override
  String get aiSettings => 'AI analiza';

  @override
  String get aiLength => 'Dužina';

  @override
  String get aiDepthBrief => 'Kratko';

  @override
  String get aiDepthStandard => 'Standardno';

  @override
  String get aiDepthDeep => 'Detaljno';

  @override
  String get aiDepthBriefDesc => 'Ono najvažnije, brzo.';

  @override
  String get aiDepthStandardDesc => 'Cijeli izvještaj sa svim dijelovima.';

  @override
  String get aiDepthDeepDesc =>
      'Više web pretraga, poređenje s konkurencijom i dublja razrada.';

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
  String get aiReaderLevel => 'Nivo čitaoca';

  @override
  String get aiReaderBeginner => 'Početnik';

  @override
  String get aiReaderExperienced => 'Iskusan';

  @override
  String get aiReaderBeginnerDesc =>
      'Jednostavan jezik; svaki stručni pojam je objašnjen.';

  @override
  String get aiReaderExperiencedDesc =>
      'Sažetiji tekst sa standardnom finansijskom terminologijom.';

  @override
  String get aiCounterArgument => 'Najjači kontraargument';

  @override
  String get aiCounterArgumentDesc =>
      'Sažetak se uvijek završava najjačim argumentom protiv vlastitog zaključka.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Uz vaš plan do $count web pretraga po analizi',
      few: 'Uz vaš plan do $count web pretrage po analizi',
      one: 'Uz vaš plan do $count web pretrage po analizi',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Standardna dužina po planu: Standard $normal, Pro $pro, Max $max, Ultra $ultra. „Kratko“ koristi 2 manje, „Detaljno“ 2 više.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'do $count web pretraga',
      few: 'do $count web pretrage',
      one: 'do $count web pretrage',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count web pretraga po analizi',
      few: '$count web pretrage po analizi',
      one: '$count web pretraga po analizi',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Za ovu dužinu potrebno je analiza: $needed, a preostalo je samo: $left. Odaberite kraću dužinu u Postavkama ili nabavite još analiza.';
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
  String get outlookKeyLevels => 'Ključni nivoi';

  @override
  String get keyLevelSupport => 'Podrška';

  @override
  String get keyLevelResistance => 'Otpor';

  @override
  String get keyLevelAnchor => 'Sidro';

  @override
  String get upcomingEvents => 'Predstojeći događaji';

  @override
  String get outlookChartNote =>
      'Okvirni rasponi; vjerovatnoće su gruba procjena, a ne predviđanja.';

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
      'Vaša pretplata i preostale analize iste su na svakom uređaju.';

  @override
  String get signInTitle => 'Prijava na WhatStock';

  @override
  String get emailLabel => 'Adresa e-pošte';

  @override
  String get continueWithEmail => 'Nastavi putem e-pošte';

  @override
  String codeSentTo(String email) {
    return 'Poslali smo šestocifreni kod na $email. Važi 10 minuta.';
  }

  @override
  String get codeLabel => 'Kod za prijavu';

  @override
  String get resendCode => 'Pošalji novi kod';

  @override
  String get useDifferentEmail => 'Koristi drugu e-poštu';

  @override
  String get errInvalidCode => 'Kod je pogrešan ili je istekao.';

  @override
  String get errInvalidEmail => 'Unesite ispravnu adresu e-pošte.';

  @override
  String get errSignInFailed =>
      'Prijava nije uspjela. Provjerite vezu i pokušajte ponovo.';

  @override
  String get checkoutWaiting =>
      'Završite plaćanje u pregledniku. Aplikacija će se automatski ažurirati kada bude gotovo.';

  @override
  String get paymentViaStripe =>
      'Sigurno plaćanje u pregledniku putem Stripea. Otkažite bilo kada.';

  @override
  String get paymentViaStore =>
      'Naplaćuje se putem vašeg App Store ili Google Play računa. Otkažite bilo kada u postavkama trgovine.';

  @override
  String get keySpace => 'Razmaknica';

  @override
  String get doubleOptionTitle => 'Dvostruki pritisak tipke Option';

  @override
  String get doubleOptionSubtitle =>
      'Brzim dvostrukim pritiskom tipke Option također otvarate WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Da bi radilo i u drugim aplikacijama, dozvolite WhatStock u odjeljku Postavke sistema → Privatnost i sigurnost → Nadzor unosa, a zatim ponovo otvorite aplikaciju.';

  @override
  String get openSystemSettings => 'Otvori Postavke sistema';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Pritisnite $shortcut ili dvaput pritisnite Option bilo gdje da otvorite WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Najvjerovatnije';

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
    return 'najvjerovatnije $price';
  }

  @override
  String get confidenceLow => 'Niska pouzdanost';

  @override
  String get confidenceMedium => 'Srednja pouzdanost';

  @override
  String get confidenceHigh => 'Visoka pouzdanost';

  @override
  String get longTermNote =>
      'Dugoročni rasponi zasnivaju se na navedenim pretpostavkama i s vremenom se šire. Cijene bez dividendi. Grube procjene, a ne predviđanja.';

  @override
  String get portfolio => 'Portfolio';

  @override
  String get portfolioEmpty =>
      'Ovdje još nema ničega. Otvorite dionicu i dodirnite „Dodaj u portfolio“ da pratite šta posjedujete.';

  @override
  String get portfolioLocalNote =>
      'Pohranjeno samo na ovom uređaju. Ukupni iznosi preračunavaju se po referentnim kursevima ECB-a; cijene mogu kasniti.';

  @override
  String get addToPortfolio => 'Dodaj u portfolio';

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
  String get portfolioBuyDate => 'Datum kupovine';

  @override
  String get portfolioAdd => 'Dodaj';

  @override
  String get portfolioInvalidNumber => 'Unesite broj veći od nule.';

  @override
  String portfolioAdded(String symbol) {
    return 'Dionica $symbol dodana je u portfolio.';
  }

  @override
  String get portfolioTotalValue => 'Ukupna vrijednost';

  @override
  String get portfolioToday => 'Danas';

  @override
  String get portfolioGainLoss => 'Dobit/gubitak';

  @override
  String get portfolioInvested => 'Uloženo';

  @override
  String get portfolioAllocation => 'Raspodjela';

  @override
  String get portfolioPositions => 'Pozicije';

  @override
  String portfolioAvgCost(String price) {
    return 'prosj. cijena $price';
  }

  @override
  String get portfolioYourPosition => 'Vaša pozicija';

  @override
  String get portfolioPurchases => 'Kupovine';

  @override
  String get portfolioRemove => 'Ukloni';

  @override
  String get portfolioExcluded =>
      'Pozicije bez cijene ili kursa nisu uračunate u ukupne iznose.';

  @override
  String get priceAlerts => 'Obavještenja o cijeni';

  @override
  String get setPriceAlert => 'Postavi obavještenje o cijeni';

  @override
  String alertDialogTitle(String symbol) {
    return 'Obavještenje o cijeni · $symbol';
  }

  @override
  String get alertKindAbove => 'Poraste iznad';

  @override
  String get alertKindBelow => 'Padne ispod';

  @override
  String get alertKindMove => 'Snažno se pomjeri u toku dana';

  @override
  String alertTargetPrice(String currency) {
    return 'Cijena ($currency)';
  }

  @override
  String get alertMovePercent => 'Dnevna promjena (%)';

  @override
  String get alertAlreadyMet => 'Cijena je već prešla ovaj nivo.';

  @override
  String get alertSave => 'Postavi obavještenje';

  @override
  String alertCreated(String symbol) {
    return 'Obavještenje za $symbol je postavljeno.';
  }

  @override
  String get alertsEmpty =>
      'Još nema obavještenja o cijeni. Otvorite dionicu i dodirnite zvono da ga postavite.';

  @override
  String get alertsNote =>
      'Obavještenja se provjeravaju svakih 5 minuta dok WhatStock radi. Na računaru aplikacija nastavlja raditi u traci menija ili sistemskoj traci; na telefonu obavještenja za sada stižu samo dok je aplikacija otvorena.';

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
    return 'Aktivirano $date pri cijeni $price';
  }

  @override
  String get alertRearm => 'Ponovo uključi';

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
    return '$symbol se danas pomjerila za $percent';
  }

  @override
  String alertHitBody(String price) {
    return 'Trenutna cijena: $price';
  }

  @override
  String get alertOpen => 'Otvori';

  @override
  String get keepInTrayTitle => 'Nastavi raditi nakon zatvaranja prozora';

  @override
  String get keepInTraySubtitle =>
      'WhatStock ostaje u traci menija ili sistemskoj traci, pa prečica i obavještenja o cijeni i dalje rade.';

  @override
  String get termsOfUse => 'Uslovi korištenja';

  @override
  String get privacyPolicy => 'Politika privatnosti';

  @override
  String get subscriptionLegal =>
      'Pretplata se automatski obnavlja svakog mjeseca dok je ne otkažete. Pretplatom prihvatate Uslove korištenja i Politiku privatnosti.';

  @override
  String get deleteAccount => 'Izbriši račun';

  @override
  String get deleteAccountTitle => 'Izbrisati račun?';

  @override
  String get deleteAccountBody =>
      'Vaš račun i sve što čuvamo na serveru (e-pošta, kvota, korištenje) bit će trajno izbrisani, a neiskorištene analize propadaju. Pretplatu plaćenu u pregledniku odmah otkazujemo; pretplatu putem App Storea ili Google Playa morate otkazati u postavkama trgovine.';

  @override
  String get deleteLocalData =>
      'Izbriši i podatke na ovom uređaju (portfolio, obavještenja, favoriti, historija, sačuvane analize)';

  @override
  String get deleteAccountConfirm => 'Trajno izbriši';

  @override
  String get accountDeleted => 'Vaš račun je izbrisan.';

  @override
  String get errDeleteAccount =>
      'Račun nije moguće izbrisati. Provjerite vezu i pokušajte ponovo.';

  @override
  String get aiTrialBriefNote =>
      'Probne analize su kratke i izrađuje ih brži AI model. Uz plan dobijate naš najsposobniji AI, više web pretraga te dužine Standardno i Detaljno.';

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
      'Godišnja pretplata se automatski obnavlja svake godine dok je ne otkažete. Pretplatom prihvatate Uslove korištenja i Politiku privatnosti.';

  @override
  String get myAnalyses => 'Moje analize';

  @override
  String get navAlerts => 'Obavještenja';

  @override
  String get inviteTitle => 'Zatvoreni pregled';

  @override
  String get inviteBody =>
      'WhatStock je zasad dostupan samo uz pozivnicu. Unesite kod pozivnice koji ste dobili.';

  @override
  String get inviteCodeLabel => 'Kod pozivnice';

  @override
  String get inviteContinue => 'Nastavi';

  @override
  String get inviteInvalid => 'Ovaj kod pozivnice nije važeći.';

  @override
  String get inviteExpired =>
      'Ova pozivnica je istekla. Zatražite novi kod od osobe koja vas je pozvala.';

  @override
  String get inviteDeviceLimit =>
      'Ovaj kod pozivnice se već koristi na najvećem dozvoljenom broju uređaja.';

  @override
  String get previewConfidential => 'Povjerljivi pregled';

  @override
  String get errPreviewDailyLimit =>
      'Dostignuto je današnje ograničenje analiza za ovaj pregled. Pokušajte ponovo sutra.';

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
    return 'Napravljena je $age. Cijene, vijesti i rezultati su se u međuvremenu možda promijenili.';
  }

  @override
  String get staleKeep => 'Prikaži raniju';

  @override
  String get staleRefresh => 'Napravi novu';

  @override
  String seeAll(int count) {
    return 'Prikaži sve ($count)';
  }

  @override
  String get searchAnalyses => 'Pretraži svoje analize';

  @override
  String get deleteAnalysis => 'Obriši';

  @override
  String analysisDeleted(String symbol) {
    return 'Analiza za $symbol je obrisana';
  }

  @override
  String get keyLevelAlertHint =>
      'Dodirnite nivo da dobijete obavještenje kada ga cijena dostigne.';

  @override
  String get shareAnalysisTitle => 'Podijeli analizu';

  @override
  String get shareAsImage => 'Podijeli kao sliku';

  @override
  String get shareAsText => 'Podijeli kao tekst';

  @override
  String get shareCardFooter => 'Napravljeno uz WhatStock';

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
    return 'Podijelite svoj kod. Vaš prijatelj odmah dobija $_temp0, a vi isto toliko nakon njegove prve analize.';
  }

  @override
  String get referralYourCode => 'Vaš kod';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Pozvano: $invited · Nagrađeno: $rewarded';
  }

  @override
  String get referralHaveCode => 'Imate kod od prijatelja?';

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
      'Ovaj kod ne postoji. Provjerite ga i pokušajte ponovo.';

  @override
  String get referralErrOwn => 'Ne možete iskoristiti vlastiti kod.';

  @override
  String get referralErrAlready => 'Već ste iskoristili kod prijatelja.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dodatnih analiza',
      few: '$count dodatne analize',
      one: '$count dodatnu analizu',
    );
    return 'Analiziram dionice uz WhatStock: fotografišite dionicu i AI će vam je objasniti. S mojim kodom $code dobijate $_temp0.';
  }

  @override
  String get referralCopied => 'Kod je kopiran';

  @override
  String get onboardTitle1 => 'Fotografišite dionicu';

  @override
  String get onboardBody1 =>
      'Dovoljan je ekran brokerske aplikacije, novine ili logo kompanije: WhatStock prepoznaje dionicu i prikazuje njenu cijenu, grafikon i ključne pokazatelje.';

  @override
  String get onboardTitle2 => 'Shvatite je za nekoliko minuta';

  @override
  String get onboardBody2 =>
      'AI analiza objašnjava šta pokreće dionicu, koji su rizici i kakvo je vrednovanje, uz tri scenarija o tome kuda bi cijena mogla ići – s izvorima i na vašem jeziku.';

  @override
  String get onboardTitle3 => 'Budite uvijek u toku';

  @override
  String get onboardBody3 =>
      'Favoriti, vaš portfolio i obavještenja o cijeni drže vas u toku. Vaše analize ostaju na vašem uređaju, spremne da ih ponovo otvorite.';

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
  String get changesNoMajor => 'Izgledi se nisu značajno promijenili.';

  @override
  String get changesPreviousSummary => 'Prethodni sažetak';

  @override
  String get telemetryTitle => 'Pomozite poboljšati WhatStock';

  @override
  String get telemetryBody =>
      'Dijelite anonimnu statistiku korištenja i izvještaje o rušenju: koje se funkcije koriste i šta je pošlo po zlu. Vaše dionice, analize i lični podaci nikada se ne dijele. Ovo možete promijeniti bilo kada u Postavkama.';

  @override
  String get telemetryAllow => 'Dozvoli';

  @override
  String get telemetryDecline => 'Ne, hvala';

  @override
  String get telemetrySetting => 'Anonimna statistika i izvještaji o rušenju';

  @override
  String get telemetrySettingHint =>
      'Koliko se često koriste funkcije i izvještaji o greškama, bez ličnih podataka ili sadržaja vaših pretraga i analiza.';

  @override
  String get askButton => 'Pitajte o ovoj analizi';

  @override
  String askTitle(String symbol) {
    return 'Pitanja o $symbol';
  }

  @override
  String get askIntro =>
      'Pitajte bilo šta o analizi: šta znači neki rizik, šta bi promijenilo izglede, kako je izračunat neki broj. Odgovori se zasnivaju na ovoj analizi i nisu investicijski savjet.';

  @override
  String get askHint => 'Postavite pitanje…';

  @override
  String get askSend => 'Pošalji';

  @override
  String get askThinking => 'Razmišljam…';

  @override
  String get askSuggest1 => 'Koji je najveći rizik?';

  @override
  String get askSuggest2 => 'Šta bi promijenilo izglede?';

  @override
  String get askSuggest3 => 'Objasni to jednostavnim riječima';

  @override
  String get askMaxReached =>
      'To je bilo posljednje pitanje za ovu analizu. Napravite novu analizu da biste pitali još.';

  @override
  String get errAskLimit =>
      'Dostigli ste današnje ograničenje pitanja. Pokušajte ponovo sutra.';

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
  String get eventBeforeOpen => 'prije otvaranja berze';

  @override
  String get eventAfterClose => 'nakon zatvaranja berze';

  @override
  String eventEpsEstimate(String value) {
    return 'Očekivani EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Iz vaše analize';

  @override
  String get eventsHint =>
      'Datumi rezultata vaših favorita i dionica iz portfolija za narednih 90 dana te datirani događaji koje su označile vaše analize.';

  @override
  String get eventsEmpty =>
      'Nema datiranih događaja u narednih 90 dana. Dodajte favorite ili dionice u portfolio da ovdje vidite datume njihovih rezultata.';

  @override
  String get compareTitle => 'Poređenje';

  @override
  String get compareAdd => 'Dodaj dionicu';

  @override
  String get compareRemove => 'Ukloni';

  @override
  String get compareTickerHint => 'Tiker, npr. MSFT';

  @override
  String get compareHint =>
      'Ključni pokazatelji jedan pored drugog; najbolja vrijednost u svakom redu je istaknuta. Iznosi su u vlastitoj valuti svake dionice.';

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
      'Očekivane godišnje dividende zasnivaju se na dividendama isplaćenim u posljednjih 12 mjeseci; buduće isplate nisu zagarantovane.';

  @override
  String positionDividend(String amount) {
    return 'Dividenda: $amount godišnje';
  }

  @override
  String get chartAvgCost => 'Vaša prosj.';

  @override
  String get chartAlertLevel => 'Obavještenje';

  @override
  String get marketsToday => 'Tržišta danas';

  @override
  String get notesTitle => 'Moje bilješke';

  @override
  String get notesHint =>
      'Zašto ste je kupili, šta pratite, zbog čega biste je prodali?';

  @override
  String get notesInfo =>
      'Pohranjeno samo na ovom uređaju. AI analiza uzima u obzir vaše bilješke.';

  @override
  String notesSaved(String date) {
    return 'Sačuvano $date';
  }

  @override
  String get peersTitle => 'Slične kompanije';

  @override
  String get portfolioExport => 'Izvezi kao CSV';

  @override
  String get portfolioImport => 'Uvezi iz CSV-a';

  @override
  String get portfolioImportHint =>
      'Zalijepite jednu kupovinu po redu: tiker simbol, količina, cijena, valuta, datum (GGGG-MM-DD). Kolone mogu biti odvojene zarezima, tačka-zarezima ili tabulatorima; red sa zaglavljem nije obavezan.';

  @override
  String get portfolioImportButton => 'Uvezi';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dodano je $count kupovina',
      few: 'Dodane su $count kupovine',
      one: 'Dodana je $count kupovina',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Preskočeno je $count redova',
      few: 'Preskočena su $count reda',
      one: 'Preskočen je $count red',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Portfolio, favoriti, obavještenja o cijeni i bilješke sinhronizuju se na svim vašim uređajima.';

  @override
  String syncLast(String time) {
    return 'Posljednja sinhronizacija: $time';
  }

  @override
  String get syncNow => 'Sinhronizuj sada';

  @override
  String get syncFailed =>
      'Sinhronizacija nije uspjela. Automatski će se pokušati ponovo.';

  @override
  String get alertEmailTitle => 'E-mail kada se obavještenje aktivira';

  @override
  String get alertEmailOn =>
      'Provjeravamo vaša obavještenja svakih nekoliko minuta i šaljemo vam e-mail, čak i kada je aplikacija zatvorena.';

  @override
  String get alertEmailSignIn =>
      'Prijavite se e-mailom u Postavkama da dobijate obavještenja e-mailom, čak i kada je aplikacija zatvorena.';

  @override
  String get portfolioHistory => 'Vrijednost kroz vrijeme';

  @override
  String get portfolioReviewTitle => 'AI analiza portfolija';

  @override
  String get portfolioReviewIntro =>
      'AI pregleda cijeli vaš portfolio: koncentraciju, izloženost sektorima i valutama, zajedničke rizike vaših dionica i dividende. Troši 1 analizu.';

  @override
  String get portfolioReviewButton => 'Analiziraj moj portfolio';

  @override
  String get portfolioReviewAgain => 'Analiziraj ponovo';

  @override
  String get portfolioReviewWorking => 'Analiziramo vaš portfolio…';

  @override
  String get digestTitle => 'Sedmični sažetak putem e-pošte';

  @override
  String get digestHint =>
      'Svakog ponedjeljka: kako su se vaši favoriti i portfolio kretali prošle sedmice i njihovi predstojeći datumi rezultata.';

  @override
  String get benchmarkTitle => 'Poređenje sa S&P 500';

  @override
  String get benchmarkYours => 'Vaše kupovine';

  @override
  String get benchmarkIndex => 'Isti iznosi u S&P 500';

  @override
  String benchmarkAhead(String points) {
    return '$points procentnih poena bolje od indeksa';
  }

  @override
  String benchmarkBehind(String points) {
    return '$points procentnih poena iza indeksa';
  }

  @override
  String get benchmarkHint =>
      'Kao da je svaka kupovina istog dana uložena u S&P 500 indeksni fond. Bez dividendi; prošli prinosi ne predviđaju buduće.';

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
      'Prodaje se prvo uparuju s vašim najstarijim kupovinama (FIFO) i preračunavaju po današnjem kursu. Za poresku prijavu koristite izvod svog brokera.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Od ove analize objavljeni su novi kvartalni rezultati ($symbol, $date).';
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
    return 'Nema veze – prikazani su posljednji sačuvani podaci ($time).';
  }

  @override
  String get glossMarketCap =>
      'Koliko cijela kompanija vrijedi na berzi: cijena dionice × broj dionica.';

  @override
  String get glossSharesOutstanding =>
      'Koliko je dionica kompanija izdala. Ako broj raste, svaka dionica posjeduje manji dio; otkup dionica ga smanjuje.';

  @override
  String get glossPeTrailing =>
      'Cijena ÷ dobit po dionici u posljednjih 12 mjeseci: za koliko godina sadašnje dobiti plaćate. Niže je jeftinije, ali brzorastuće kompanije obično imaju visok P/E.';

  @override
  String get glossPeForward =>
      'Kao P/E, ali s dobiti koju analitičari očekuju za narednih 12 mjeseci. Ako je ispod tekućeg P/E, očekuje se rast dobiti.';

  @override
  String get glossPb =>
      'Cijena ÷ knjigovodstvena vrijednost (imovina minus dugovi) po dionici. Oko 1 znači da tržište vrednuje kompaniju koliko ona posjeduje na papiru.';

  @override
  String get glossPs =>
      'Tržišna vrijednost ÷ godišnji prihodi. Korisno za kompanije s malo ili još bez dobiti; uspoređujte unutar iste industrije.';

  @override
  String get glossEvToFcf =>
      'Vrijednost kompanije uključujući dug (EV) ÷ novac koji ostvari za godinu nakon investicija. Niže znači da za cijenu dobijate više novca.';

  @override
  String get glossPeg =>
      'P/E ÷ očekivani godišnji rast dobiti (%). Oko 1 se često smatra fer; stavlja P/E u svjetlo rasta.';

  @override
  String get glossEps =>
      'Dobit po dionici u posljednjih 12 mjeseci. EPS koji raste iz godine u godinu jedan je od najjačih znakova zdrave kompanije.';

  @override
  String get glossBeta =>
      'Koliko se dionica obično kreće zajedno s tržištem: 1 = kao tržište, 1,5 = oko 50% veće oscilacije, ispod 1 = mirnija.';

  @override
  String get glossRevenueTtm =>
      'Ukupna prodaja u posljednjih 12 mjeseci, prije bilo kakvih troškova.';

  @override
  String get glossNetIncomeTtm =>
      'Dobit koja ostane nakon svih troškova, kamata i poreza u posljednjih 12 mjeseci.';

  @override
  String get glossGrossMargin =>
      'Dio prihoda koji ostaje nakon direktnih troškova proizvoda. Visoka marža često znači moć određivanja cijena.';

  @override
  String get glossOperatingMargin =>
      'Dio prihoda koji ostaje nakon troškova poslovanja (plate, zakup, marketing), prije kamata i poreza.';

  @override
  String get glossNetMargin =>
      'Dio prihoda koji postaje konačna dobit. 20% znači da je od svakih 100 prodaje 20 dobit.';

  @override
  String get glossRoe =>
      'Povrat na kapital: godišnja dobit ÷ kapital vlasnika. Pokazuje koliko dobro uprava koristi novac dioničara; iznad otprilike 15% je snažno.';

  @override
  String get glossRoa =>
      'Povrat na imovinu: godišnja dobit ÷ sve što kompanija posjeduje. Uspoređujte unutar iste industrije.';

  @override
  String get glossDebtToEquity =>
      'Dugovi ÷ kapital vlasnika. Više znači više pozajmljenog novca: veći rizik kad kamate rastu ili posao uspori.';

  @override
  String get glossCurrentRatio =>
      'Kratkoročna imovina ÷ obaveze koje dospijevaju u roku od godinu dana. Iznad 1 znači da kompanija može pokriti svoje bliske obaveze.';

  @override
  String get glossRevenueGrowth =>
      'Koliko su prihodi porasli u odnosu na godinu ranije.';

  @override
  String get glossEpsGrowth =>
      'Koliko je dobit po dionici porasla u odnosu na godinu ranije.';

  @override
  String get glossDividendYield =>
      'Godišnja dividenda ÷ cijena dionice: gotovinski prihod koji biste dobijali godišnje, kao postotak onoga što plaćate.';

  @override
  String get glossDividendPerShare =>
      'Dividenda isplaćena po jednoj dionici u posljednjih godinu dana.';

  @override
  String get glossPayoutRatio =>
      'Dio dobiti isplaćen kao dividende. Iznad 100% kompanija isplaćuje više nego što zarađuje, što rijetko traje.';

  @override
  String get glossTitle => 'Šta to znači?';

  @override
  String get watchNewsTitle => 'Vijesti o vašim dionicama';

  @override
  String get undo => 'Poništi';

  @override
  String get watchSort => 'Sortiraj';

  @override
  String get watchSortOwn => 'Moj redoslijed';

  @override
  String get watchSortGainers => 'Najveći rast prvo';

  @override
  String get watchSortLosers => 'Najveći pad prvo';

  @override
  String get watchSortName => 'Po tikeru (A–Z)';

  @override
  String get watchHint =>
      'Povucite ručku za promjenu redoslijeda, prevucite ulijevo za uklanjanje. Linija prikazuje posljednjih 30 dana.';

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
      'Kratak AI sažetak o tome kako su se danas kretali vaš portfolio i favoriti i šta najnovije vijesti govore o njima. Ne troši analizu.';

  @override
  String get briefRefresh => 'Ažuriraj';

  @override
  String get sectionEarnings => 'Zarada';

  @override
  String earningsNext(String date) {
    return 'Sljedeći izvještaj: $date';
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
          'Na nivou očekivanog EPS-a ili iznad u $beats od posljednjih $total kvartala',
      one: 'Na nivou očekivanog EPS-a ili iznad u $beats od 1 kvartala',
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
  String get earningsRemindersTitle => 'Podsjetnici na rezultate';

  @override
  String get earningsRemindersSubtitle =>
      'Obavještenje dan prije nego što dionice iz vaših favorita ili portfolija objave kvartalne rezultate';

  @override
  String addAllToFavorites(int count) {
    return 'Dodaj sve u favorite ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Uvezi sa snimka ekrana';

  @override
  String get holdingsReading => 'Čitanje vaših pozicija…';

  @override
  String get holdingsReviewTitle => 'Pronađene pozicije';

  @override
  String get holdingsReviewHint =>
      'Provjerite brojeve prije dodavanja. Cijena je vaša prosječna kupovna cijena po dionici, a ne današnja cijena.';

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
      'Na ovoj slici nisu pronađene pozicije dionica. Pokušajte sa snimkom ekrana stranice s pozicijama ili imovinom kod vašeg brokera.';

  @override
  String get week52Range => '52-sedmični raspon';

  @override
  String week52BelowHigh(String percent) {
    return '$percent ispod 52-sedmičnog maksimuma';
  }

  @override
  String get week52AtHigh => 'Na 52-sedmičnom maksimumu';

  @override
  String get alertKindTrailing => 'Padne od vrha';

  @override
  String get alertTrailingPercent => 'Pad od vrha (%)';

  @override
  String get alertTrailingHint =>
      'Prati cijenu naviše: upozorenje se oglasi kada cijena padne za ovoliko od najvišeg nivoa otkad ste ga postavili.';

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
      other: '$count kupovina',
      few: '$count kupovine',
      one: '$count kupovina',
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
      'Kupovine i prodaje na otvorenom tržištu od strane rukovodilaca i direktora u posljednjih 90 dana (SEC Form 4). Izvršenja opcija i dodjele dionica se ne računaju.';

  @override
  String get insiderNone =>
      'Nema insajderskih kupovina ni prodaja na otvorenom tržištu u posljednjih 90 dana.';

  @override
  String get analystTrend =>
      'Kako su se mišljenja mijenjala iz mjeseca u mjesec';

  @override
  String get watchListAll => 'Sve';

  @override
  String get watchListNew => 'Nova lista';

  @override
  String get watchListName => 'Naziv liste';

  @override
  String get watchListRename => 'Preimenuj listu';

  @override
  String get watchListDelete => 'Izbriši listu';

  @override
  String get watchListAddTo => 'Dodaj na listu';

  @override
  String get watchListEmpty =>
      'Na ovoj listi još nema dionica. Dodirnite dugme liste pored dionice da je dodate.';

  @override
  String get portfolioAskTitle => 'Pitanja o vašem portfoliju';

  @override
  String get rangeYtd => 'Od poč. g.';

  @override
  String get backupTitle => 'Sigurnosna kopija';

  @override
  String get backupSave => 'Sačuvaj sigurnosnu kopiju';

  @override
  String get backupSaveHint =>
      'Vaši favoriti, liste, portfolio, obavještenja i bilješke u jednom fajlu.';

  @override
  String get backupRestore => 'Vrati iz sigurnosne kopije';

  @override
  String get backupRestoreHint =>
      'Dodaje ono što je u fajlu; ništa od onoga što sada imate se ne briše.';

  @override
  String get backupRestored => 'Sigurnosna kopija je vraćena.';

  @override
  String get backupInvalid => 'Ovaj fajl nije WhatStock sigurnosna kopija.';

  @override
  String get allocationPositions => 'Dionice';

  @override
  String get allocationSectors => 'Sektori';

  @override
  String get allocationCurrencies => 'Valute';

  @override
  String get compareReturn1y => 'Prinos za 1 godinu';

  @override
  String get compareFromHigh => 'Od 52-sedmičnog maksimuma';

  @override
  String get briefAutoTitle => 'Dnevni sažetak svako jutro';

  @override
  String get briefAutoSubtitle =>
      '„Danas s vašim dionicama“ pravi se automatski nakon 7:00 dok aplikacija radi; na računarima stiže notifikacija. Troši vaše dnevno ograničenje pitanja, ne analizu.';

  @override
  String get targetsButton => 'Ciljna raspodjela';

  @override
  String get targetsTitle => 'Ciljna raspodjela';

  @override
  String get targetsHint =>
      'Odredite koliki udio portfolija treba imati svaka dionica. Ostavite polje prazno ako nema cilja. Aplikacija će zatim pokazati šta treba kupiti ili prodati da se to postigne.';

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
    return '$symbol nije dostigao očekivani EPS';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'Objavljeni EPS $actual, očekivani $estimate';
  }

  @override
  String get newsExplain => 'Šta ovo znači?';

  @override
  String get newsExplainNote =>
      'Objašnjenje umjetne inteligencije samo na osnovu naslova i sažetka. Nije investicijski savjet. Troši vaše dnevno ograničenje pitanja, ne analizu.';

  @override
  String get watchAlertAll => 'Upozorenje na velike dnevne promjene';

  @override
  String get watchAlertAllHint =>
      'Cjenovno upozorenje za svaku dionicu na ovoj listi koje se oglasi kada se ona u jednom danu pomjeri ovoliko, gore ili dolje. Dionice koje ga već imaju zadržavaju svoje.';

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
      'Novčano ponderisani godišnji prinos (XIRR): uzima u obzir kada ste kupovali i prodavali, pa ga novac dodan kasnije ne iskrivljuje. Prikazuje se kada vaša prva kupovina bude stara najmanje godinu dana; dividende nisu uključene.';

  @override
  String get eventsAddToCalendar => 'Dodaj u kalendar (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Upozorenje za portfolio';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Obavještenje kada se cijeli vaš portfolio pomjeri ovoliko u jednom danu.';

  @override
  String get portfolioMoveAlertOff => 'Isključeno';

  @override
  String portfolioMoveUp(String percent) {
    return 'Vaš portfolio je danas porastao za $percent';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Vaš portfolio je danas pao za $percent';
  }

  @override
  String get whatIfTitle => 'Šta da ste uložili?';

  @override
  String get whatIfAmount => 'Iznos';

  @override
  String whatIfResult(String amount, String period) {
    return 'Ulaganje od $amount (period: $period) danas bi vrijedilo';
  }

  @override
  String get whatIfNote =>
      'Samo na osnovu cijene dionice: dividende, naknade i porezi nisu uključeni. Prošli prinosi ne predviđaju buduće.';

  @override
  String get watchShare => 'Podijeli listu';

  @override
  String get watchImport => 'Dodaj tiker simbole';

  @override
  String get watchImportHint =>
      'Zalijepite tiker simbole odvojene zarezima, razmacima ili novim redovima – na primjer listu koju je neko podijelio s vama.';

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
  String get chartMyBuys => 'Vaše kupovine';

  @override
  String get chartMySells => 'Vaše prodaje';

  @override
  String get shortcutsTitle => 'Prečice na tastaturi';

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
  String get portfolioGoalSet => 'Postavi cilj';

  @override
  String get portfolioGoalTitle => 'Cilj portfolija';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent od tvog cilja od $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Cilj od $amount je dostignut';
  }

  @override
  String get portfolioGoalRemove => 'Ukloni cilj';

  @override
  String get alertEdit => 'Uredi obavještenje';

  @override
  String get positionOpenLots => 'Još u posjedu (prvo najstarije)';

  @override
  String get lotRemoved => 'Transakcija je obrisana';

  @override
  String get alertDeleted => 'Upozorenje je obrisano';

  @override
  String get alertsClearTriggered => 'Izbriši aktivirana upozorenja';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Obrisano je $count upozorenja',
      few: 'Obrisana su $count upozorenja',
      one: 'Obrisano je $count upozorenje',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Početni ekran';
}
