// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovenian (`sl`).
class AppLocalizationsSl extends AppLocalizations {
  AppLocalizationsSl([String locale = 'sl']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'Fotografirajte delnico in izveste vse o njej.';

  @override
  String get homeHint =>
      'Delniška listina, zaslon aplikacije borznega posrednika, časopis ali logotip podjetja – karkoli, po čemer je mogoče prepoznati delnico.';

  @override
  String get takePhoto => 'Posnemi fotografijo';

  @override
  String get chooseFromGallery => 'Izberi iz galerije';

  @override
  String get chooseImage => 'Izberi sliko';

  @override
  String get enterTickerManually => 'Ročno vnesi oznako';

  @override
  String get tickerInputLabel => 'Borzna oznaka';

  @override
  String get tickerInputHint => 'npr. AAPL';

  @override
  String get lookUp => 'Poišči';

  @override
  String demoModeBanner(String symbols) {
    return 'Predstavitveni način – ključ za tržne podatke ni nastavljen. Vzorčni podatki so na voljo za: $symbols.';
  }

  @override
  String get recognizing => 'Analiziranje slike …';

  @override
  String get loadingData => 'Nalaganje podatkov …';

  @override
  String get noCandidatesTitle => 'Delnica ni prepoznana';

  @override
  String get noCandidatesBody =>
      'Na tej sliki nismo mogli prepoznati delnice. Poskusite z ostrejšo fotografijo ali ročno vnesite oznako.';

  @override
  String get whatWeSaw => 'Kaj smo videli';

  @override
  String get chooseCandidateTitle => 'Katero delnico ste imeli v mislih?';

  @override
  String confidencePercent(int percent) {
    return '$percent % zanesljivosti';
  }

  @override
  String get settings => 'Nastavitve';

  @override
  String get language => 'Jezik';

  @override
  String get systemLanguage => 'Privzeto v sistemu';

  @override
  String get about => 'O aplikaciji';

  @override
  String get disclaimer =>
      'Ta aplikacija je zgolj informativna in ni naložbeni nasvet. Podatki so lahko zakasnjeni ali netočni.';

  @override
  String dataSource(String source) {
    return 'Vir podatkov: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Prepoznavanje: $source';
  }

  @override
  String get retry => 'Poskusi znova';

  @override
  String get cancel => 'Prekliči';

  @override
  String get ok => 'V redu';

  @override
  String get close => 'Zapri';

  @override
  String get errorGeneric => 'Prišlo je do napake.';

  @override
  String get errorSectionUnavailable => 'Tega razdelka ni bilo mogoče naložiti.';

  @override
  String get notAvailable => 'n/p';

  @override
  String get sectionIdentity => 'Identifikacija';

  @override
  String get sectionPrice => 'Cena';

  @override
  String get sectionValuation => 'Vrednotenje';

  @override
  String get sectionFinancials => 'Finančni podatki';

  @override
  String get sectionDividend => 'Dividenda';

  @override
  String get sectionProfile => 'Profil podjetja';

  @override
  String get sectionAnalysts => 'Ocene analitikov';

  @override
  String get sectionNews => 'Novice';

  @override
  String get sectionRecognition => 'Podrobnosti prepoznavanja';

  @override
  String get labelSymbol => 'Oznaka';

  @override
  String get labelExchange => 'Borza';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Valuta';

  @override
  String get labelCountry => 'Država';

  @override
  String get labelIndustry => 'Panoga';

  @override
  String get labelSector => 'Sektor';

  @override
  String get labelWebsite => 'Spletna stran';

  @override
  String get labelIpoDate => 'Datum IPO';

  @override
  String get labelMarketCap => 'Tržna kapitalizacija';

  @override
  String get labelSharesOutstanding => 'Delnice v obtoku';

  @override
  String get labelEmployees => 'Zaposleni';

  @override
  String get labelCeo => 'Izvršni direktor';

  @override
  String get labelHeadquarters => 'Sedež';

  @override
  String get labelDescription => 'Opis';

  @override
  String get labelLastPrice => 'Zadnji tečaj';

  @override
  String get labelChange => 'Sprememba';

  @override
  String get labelOpen => 'Otvoritveni tečaj';

  @override
  String get labelDayHigh => 'Najvišji dnevni tečaj';

  @override
  String get labelDayLow => 'Najnižji dnevni tečaj';

  @override
  String get labelPreviousClose => 'Prejšnji zaključni tečaj';

  @override
  String get labelWeek52High => 'Najvišji tečaj v 52 tednih';

  @override
  String get labelWeek52Low => 'Najnižji tečaj v 52 tednih';

  @override
  String get labelAverageVolume10d => 'Povpr. obseg (10 dni)';

  @override
  String updatedAt(String time) {
    return 'Posodobljeno $time';
  }

  @override
  String get labelPeTrailing => 'P/E (pretekli)';

  @override
  String get labelPeForward => 'P/E (pričakovani)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / prosti denarni tok';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Prihodki (TTM)';

  @override
  String get labelNetIncomeTtm => 'Čisti dobiček (TTM)';

  @override
  String get labelGrossMargin => 'Bruto marža';

  @override
  String get labelOperatingMargin => 'Poslovna marža';

  @override
  String get labelNetMargin => 'Neto marža';

  @override
  String get labelRoe => 'Donosnost kapitala';

  @override
  String get labelRoa => 'Donosnost sredstev';

  @override
  String get labelDebtToEquity => 'Dolg / kapital';

  @override
  String get labelCurrentRatio => 'Kratkoročni koeficient';

  @override
  String get labelRevenueGrowth => 'Rast prihodkov (medletno)';

  @override
  String get labelEpsGrowth => 'Rast EPS (medletno)';

  @override
  String get labelDividendYield => 'Dividendna donosnost';

  @override
  String get labelDividendPerShare => 'Dividenda na delnico';

  @override
  String get labelPayoutRatio => 'Izplačilno razmerje';

  @override
  String get labelConsensus => 'Konsenz';

  @override
  String get ratingStrongBuy => 'Močan nakup';

  @override
  String get ratingBuy => 'Nakup';

  @override
  String get ratingHold => 'Zadrži';

  @override
  String get ratingSell => 'Prodaja';

  @override
  String get ratingStrongSell => 'Močna prodaja';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analitikov',
      few: '$count analitiki',
      two: '$count analitika',
      one: '$count analitik',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Obdobje: $period';
  }

  @override
  String get noNews => 'Ni nedavnih novic.';

  @override
  String get openArticle => 'Odpri članek';

  @override
  String get openLinkFailed => 'Povezave ni bilo mogoče odpreti.';

  @override
  String get recognitionSummary => 'Povzetek';

  @override
  String get recognitionEvidence => 'Zakaj tako menimo';

  @override
  String get recognitionRawText => 'Besedilo, prebrano s slike';

  @override
  String get errMissingAnthropicKey =>
      'Prepoznavanje slik ni nastavljeno (ni ANTHROPIC_API_KEY). Oznako vnesite ročno.';

  @override
  String get errRecognitionUnreachable =>
      'Storitve za prepoznavanje ni bilo mogoče doseči. Preverite internetno povezavo.';

  @override
  String errRecognitionHttp(String status) {
    return 'Storitev za prepoznavanje je vrnila napako (HTTP $status).';
  }

  @override
  String get errRecognitionRefused => 'Storitev za prepoznavanje te slike ni mogla obdelati.';

  @override
  String get errRecognitionTruncated => 'Odgovor storitve za prepoznavanje je bil prekinjen. Poskusite znova.';

  @override
  String get errRecognitionBadResponse => 'Nepričakovan odgovor storitve za prepoznavanje.';

  @override
  String get errRecognitionEmpty => 'Storitev za prepoznavanje je vrnila prazen odgovor.';

  @override
  String get errMissingFinnhubKey => 'Tržni podatki niso nastavljeni (ni FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable => 'Storitve za tržne podatke ni bilo mogoče doseči. Preverite internetno povezavo.';

  @override
  String get errMarketRateLimited => 'Preveč zahtev za storitev tržnih podatkov. Počakajte minuto.';

  @override
  String errMarketHttp(String status) {
    return 'Storitev za tržne podatke je vrnila napako (HTTP $status).';
  }

  @override
  String get errMarketBadResponse => 'Nepričakovan odgovor storitve za tržne podatke.';

  @override
  String errNoQuote(String symbol) {
    return 'Za $symbol ni podatkov o ceni.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Za $symbol ni profila podjetja.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Predstavitveni način podpira samo $symbols. Za podatke v živo dodajte FINNHUB_API_KEY.';
  }

  @override
  String errUnknown(String detail) {
    return 'Prišlo je do napake: $detail';
  }

  @override
  String get newSearch => 'Novo iskanje';

  @override
  String get recentSearches => 'Nedavno';

  @override
  String get noRecentSearches => 'Nedavnih iskanj še ni.';

  @override
  String get clearRecent => 'Počisti nedavno';

  @override
  String get greeting => 'Katero delnico si bomo ogledali?';

  @override
  String get searchHint => 'Oznaka ali ime podjetja';

  @override
  String get attachImage => 'Priloži sliko';

  @override
  String get searchResultsTitle => 'Rezultati iskanja';

  @override
  String errNoResults(String query) {
    return 'Za „$query“ ni najdenih delnic.';
  }

  @override
  String get quickBarHint => 'Vnesite oznako ali ime podjetja …';

  @override
  String get openFullWindow => 'Odpri okno';

  @override
  String hotkeyHint(String shortcut) {
    return 'Pritisnite $shortcut kjer koli, da prikličete WhatStock.';
  }

  @override
  String get trayOpen => 'Odpri WhatStock';

  @override
  String get trayQuickSearch => 'Hitro iskanje';

  @override
  String get trayQuit => 'Končaj';

  @override
  String get appearance => 'Videz';

  @override
  String get themeSystem => 'Sistemska';

  @override
  String get themeDark => 'Temna';

  @override
  String get themeLight => 'Svetla';

  @override
  String get back => 'Nazaj';

  @override
  String get aiSectionTitle => 'Analiza AI';

  @override
  String get aiIntro =>
      'Podroben pregled, ki ga napiše umetna inteligenca: povzetek nedavnih novic, poslovanje, prednosti, tveganja in skriti dejavniki, vrednotenje, obeti cene s scenariji s psihološkega, sociološkega, tehničnega in makroekonomskega vidika ter na kaj biti pozoren.';

  @override
  String get aiGenerate => 'Ustvari analizo';

  @override
  String get aiRegenerate => 'Ustvari znova';

  @override
  String get aiGenerating => 'Pripravljamo analizo … to lahko traja minuto ali dve.';

  @override
  String get aiSources => 'Viri';

  @override
  String aiGeneratedAt(String time) {
    return 'Ustvarjeno $time';
  }

  @override
  String get aiDisclaimer =>
      'Analizo je ustvarila umetna inteligenca na podlagi javnih podatkov in nedavnih novic. Lahko vsebuje napake ali je zastarela in ni naložbeni nasvet.';

  @override
  String get errAiNotConfigured => 'Analiza AI ni nastavljena (ni ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable => 'Storitve AI ni bilo mogoče doseči. Preverite internetno povezavo.';

  @override
  String errAiHttp(String status) {
    return 'Storitev AI je vrnila napako (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Storitev AI je zavrnila analizo te delnice.';

  @override
  String get errAiBadResponse => 'Nepričakovan odgovor storitve AI.';

  @override
  String get sectionChart => 'Graf tečaja';

  @override
  String get rangeOneWeek => '1T';

  @override
  String get rangeOneMonth => '1M';

  @override
  String get rangeThreeMonths => '3M';

  @override
  String get rangeOneYear => '1L';

  @override
  String get rangeFiveYears => '5L';

  @override
  String get chartUnavailable => 'Zgodovina tečajev pri trenutnem viru podatkov ni na voljo.';

  @override
  String get sectionStatements => 'Računovodski izkazi (letni)';

  @override
  String get labelFiscalYear => 'Poslovno leto';

  @override
  String get labelRevenue => 'Prihodki';

  @override
  String get labelNetIncome => 'Čisti dobiček';

  @override
  String get labelTotalAssets => 'Skupna sredstva';

  @override
  String get labelTotalLiabilities => 'Skupne obveznosti';

  @override
  String get labelEquity => 'Lastniški kapital';

  @override
  String get labelOperatingCashFlow => 'Denarni tok iz poslovanja';

  @override
  String get statementsUnavailable => 'Objavljeni računovodski izkazi za to delnico niso na voljo.';

  @override
  String get launchAtLogin => 'Zaženi ob prijavi';

  @override
  String get hotkeyLabel => 'Globalna bližnjica';

  @override
  String get hotkeyRecordHint => 'Kliknite tukaj in nato pritisnite novo kombinacijo tipk';

  @override
  String get hotkeyReset => 'Ponastavi na privzeto';

  @override
  String get pasteImage => 'Prilepi sliko iz odložišča';

  @override
  String get errClipboardNoImage => 'V odložišču ni slike.';

  @override
  String get favorites => 'Priljubljene';

  @override
  String get addToFavorites => 'Dodaj med priljubljene';

  @override
  String get removeFromFavorites => 'Odstrani iz priljubljenih';

  @override
  String get noFavorites => 'Priljubljenih še ni. Tapnite zvezdico pri delnici, da jo dodate.';

  @override
  String get displayCurrency => 'Valuta prikaza';

  @override
  String get displayCurrencyNone => 'Samo lastna valuta delnice';

  @override
  String labelConverted(String currency) {
    return '≈ v $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Tečaj: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Posodobitve';

  @override
  String currentVersion(String version) {
    return 'Različica $version';
  }

  @override
  String get autoUpdate => 'Samodejno nameščaj posodobitve';

  @override
  String get checkForUpdates => 'Preveri posodobitve';

  @override
  String get updateChecking => 'Preverjanje posodobitev …';

  @override
  String get updateUpToDate => 'Imate najnovejšo različico.';

  @override
  String updateAvailable(String version) {
    return 'Na voljo je različica $version.';
  }

  @override
  String get updateDownloading => 'Posodobitev se prenaša v ozadju …';

  @override
  String get updateDownloaded => 'Posodobitev je pripravljena. Za namestitev znova zaženite aplikacijo.';

  @override
  String get updateNow => 'Posodobi';

  @override
  String get restartNow => 'Znova zaženi';

  @override
  String get updatesViaStore => 'Posodobitve prihajajo samodejno prek trgovine z aplikacijami.';

  @override
  String get updateCheckFailed => 'Posodobitev ni bilo mogoče preveriti.';

  @override
  String get subscription => 'Naročnina';

  @override
  String get planTrial => 'Preizkusni';

  @override
  String get planNormal => 'Standard';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Ni aktivnega paketa';

  @override
  String planAnalysesPerMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analiz na mesec',
      few: '$count analize na mesec',
      two: '$count analizi na mesec',
      one: '$count analiza na mesec',
    );
    return '$_temp0';
  }

  @override
  String planTrialDescription(int days, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$days-dnevni brezplačni preizkus, ki vključuje $count analiz',
      few: '$days-dnevni brezplačni preizkus, ki vključuje $count analize',
      two: '$days-dnevni brezplačni preizkus, ki vključuje $count analizi',
      one: '$days-dnevni brezplačni preizkus, ki vključuje $count analizo',
    );
    return '$_temp0';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Preizkus traja še $days dni',
      few: 'Preizkus traja še $days dni',
      two: 'Preizkus traja še $days dneva',
      one: 'Preizkus traja še $days dan',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Vaš brezplačni preizkus se je iztekel. Izberite paket, da boste lahko še naprej analizirali.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Preostale analize v tem obdobju: $remaining od $total';
  }

  @override
  String extraCredits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dodatnih analiz',
      few: '$count dodatne analize',
      two: '$count dodatni analizi',
      one: '$count dodatna analiza',
    );
    return '$_temp0';
  }

  @override
  String renewsOn(String date) {
    return 'Podaljšanje: $date';
  }

  @override
  String get choosePlan => 'Izberite paket';

  @override
  String get currentPlan => 'Trenutni paket';

  @override
  String get subscribe => 'Naroči se';

  @override
  String get perMonth => '/ mesec';

  @override
  String get extraPacksTitle => 'Potrebujete več? Kupite dodatne analize';

  @override
  String get extraPacksHint => 'Dodatne analize nikoli ne potečejo in se porabijo, ko porabite mesečno kvoto.';

  @override
  String get buy => 'Kupi';

  @override
  String get restorePurchases => 'Obnovi nakupe';

  @override
  String get manageSubscription => 'Upravljaj naročnino';

  @override
  String get purchaseSuccess => 'Hvala! Vaš nakup je aktiven.';

  @override
  String get purchasePending => 'Nakup v teku …';

  @override
  String get purchaseFailed => 'Nakupa ni bilo mogoče dokončati.';

  @override
  String get purchaseCanceled => 'Nakup je preklican.';

  @override
  String get billingUnavailable =>
      'Nakupi na tej platformi še niso na voljo. Naročite se v telefonu ali Macu; vaš paket bo deloval v vseh napravah.';

  @override
  String get errQuotaExceeded => 'V tem obdobju nimate več analiz. Nadgradite paket ali kupite dodatne analize.';

  @override
  String get errTrialExpired => 'Vaš brezplačni preizkus se je iztekel. Za nadaljevanje izberite paket.';

  @override
  String get errNoPlan => 'Za analizo AI potrebujete aktiven paket.';

  @override
  String get viewPlans => 'Prikaži pakete';

  @override
  String get usageTitle => 'Poraba';

  @override
  String get demoPurchaseNote => 'Predstavitveno zaračunavanje: nakupi so na tej platformi simulirani.';

  @override
  String get mostPopular => 'Najbolj priljubljen';

  @override
  String get bestValue => 'Najugodnejši';

  @override
  String get planFeaturesCommon =>
      'Prepoznavanje fotografij, podatki v živo, grafi, priljubljene in vseh 120 jezikov so vključeni v vsak paket. Kvota velja za analize AI.';

  @override
  String get searchLanguages => 'Iskanje jezikov …';

  @override
  String get noLanguageMatch => 'Noben jezik se ne ujema.';

  @override
  String get aiSettings => 'Analiza AI';

  @override
  String get aiLength => 'Dolžina';

  @override
  String get aiDepthBrief => 'Kratka';

  @override
  String get aiDepthStandard => 'Standardna';

  @override
  String get aiDepthDeep => 'Poglobljena';

  @override
  String get aiDepthBriefDesc => 'Bistveno, na hitro.';

  @override
  String get aiDepthStandardDesc => 'Celotno poročilo z vsemi razdelki.';

  @override
  String get aiDepthDeepDesc => 'Več spletnih iskanj, primerjava s konkurenco in več podrobnosti.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Približno $min–$max besed';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'porabi $count analiz',
      few: 'porabi $count analize',
      two: 'porabi $count analizi',
      one: 'porabi $count analizo',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Raven bralca';

  @override
  String get aiReaderBeginner => 'Začetnik';

  @override
  String get aiReaderExperienced => 'Izkušen';

  @override
  String get aiReaderBeginnerDesc => 'Preprost jezik; vsak strokovni izraz je pojasnjen.';

  @override
  String get aiReaderExperiencedDesc => 'Zgoščeno besedilo s standardno finančno terminologijo.';

  @override
  String get aiCounterArgument => 'Najmočnejši protiargument';

  @override
  String get aiCounterArgumentDesc => 'Povzetek se vedno konča z najmočnejšim argumentom proti lastnemu sklepu.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Z vašim paketom do $count spletnih iskanj na analizo',
      few: 'Z vašim paketom do $count spletnih iskanj na analizo',
      two: 'Z vašim paketom do $count spletnih iskanj na analizo',
      one: 'Z vašim paketom do $count spletnega iskanja na analizo',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Standardna dolžina po paketih: Standard $normal, Pro $pro, Max $max, Ultra $ultra. Kratka uporabi 2 manj, poglobljena 2 več.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'do $count spletnih iskanj',
      few: 'do $count spletnih iskanj',
      two: 'do $count spletnih iskanj',
      one: 'do $count spletnega iskanja',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count spletnih iskanj na analizo',
      few: '$count spletna iskanja na analizo',
      two: '$count spletni iskanji na analizo',
      one: '$count spletno iskanje na analizo',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Potrebne analize za to dolžino: $needed, preostale: $left. V nastavitvah izberite krajšo dolžino ali pridobite več analiz.';
  }

  @override
  String get outlookMarketMood => 'Razpoloženje na trgu';

  @override
  String get moodVeryPessimistic => 'Zelo pesimistično';

  @override
  String get moodPessimistic => 'Pesimistično';

  @override
  String get moodNeutral => 'Nevtralno';

  @override
  String get moodOptimistic => 'Optimistično';

  @override
  String get moodVeryOptimistic => 'Zelo optimistično';

  @override
  String get scenarioBull => 'Optimistični scenarij';

  @override
  String get scenarioBase => 'Osnovni scenarij';

  @override
  String get scenarioBear => 'Pesimistični scenarij';

  @override
  String outlookCurrentPrice(String price) {
    return 'Trenutna cena: $price';
  }

  @override
  String get outlookKeyLevels => 'Ključne ravni';

  @override
  String get keyLevelSupport => 'Podpora';

  @override
  String get keyLevelResistance => 'Odpor';

  @override
  String get keyLevelAnchor => 'Sidro';

  @override
  String get upcomingEvents => 'Prihodnji dogodki';

  @override
  String get outlookChartNote => 'Okvirni razponi; verjetnosti so groba ocena, ne napovedi.';

  @override
  String get accountTitle => 'Račun';

  @override
  String get signIn => 'Prijava';

  @override
  String get signOut => 'Odjava';

  @override
  String get notSignedIn => 'Niste prijavljeni';

  @override
  String get accountBenefit => 'Prijavite se, da bo vaša naročnina delovala v vseh vaših napravah.';

  @override
  String get accountSyncedNote => 'Vaša naročnina in preostale analize so enake v vseh napravah.';

  @override
  String get signInTitle => 'Prijava v WhatStock';

  @override
  String get emailLabel => 'E-poštni naslov';

  @override
  String get continueWithEmail => 'Nadaljuj z e-pošto';

  @override
  String codeSentTo(String email) {
    return 'Na $email smo poslali 6-mestno kodo. Veljavna je 10 minut.';
  }

  @override
  String get codeLabel => 'Koda za prijavo';

  @override
  String get resendCode => 'Pošlji novo kodo';

  @override
  String get useDifferentEmail => 'Uporabi drug e-poštni naslov';

  @override
  String get errInvalidCode => 'Koda je napačna ali je potekla.';

  @override
  String get errInvalidEmail => 'Vnesite veljaven e-poštni naslov.';

  @override
  String get errSignInFailed => 'Prijava ni uspela. Preverite povezavo in poskusite znova.';

  @override
  String get checkoutWaiting =>
      'Plačilo dokončajte v brskalniku. Ko bo končano, se bo aplikacija samodejno posodobila.';

  @override
  String get paymentViaStripe => 'Varno plačilo v brskalniku prek storitve Stripe. Prekličete lahko kadar koli.';

  @override
  String get paymentViaStore =>
      'Zaračuna se prek vašega računa App Store ali Google Play. Prekličete lahko kadar koli v nastavitvah trgovine.';

  @override
  String get keySpace => 'Preslednica';

  @override
  String get doubleOptionTitle => 'Dvojni pritisk tipke Option';

  @override
  String get doubleOptionSubtitle => 'WhatStock prikličete tudi s hitrim dvojnim pritiskom tipke Option.';

  @override
  String get doubleOptionPermission =>
      'Da bo delovalo tudi v drugih aplikacijah, dovolite WhatStock v Sistemske nastavitve → Zasebnost in varnost → Spremljanje vnosa, nato znova odprite aplikacijo.';

  @override
  String get openSystemSettings => 'Odpri Sistemske nastavitve';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Pritisnite $shortcut ali dvakrat pritisnite Option kjer koli, da prikličete WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Najverjetneje';

  @override
  String get longTermToday => 'Danes';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years let',
      few: '$years leta',
      two: '$years leti',
      one: '$years leto',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range na leto';
  }

  @override
  String longTermLikely(String price) {
    return 'najverjetneje $price';
  }

  @override
  String get confidenceLow => 'Nizka zanesljivost';

  @override
  String get confidenceMedium => 'Srednja zanesljivost';

  @override
  String get confidenceHigh => 'Visoka zanesljivost';

  @override
  String get longTermNote =>
      'Dolgoročni razponi temeljijo na navedenih predpostavkah in se s časom širijo. Cene ne vključujejo dividend. Grobe ocene, ne napovedi.';

  @override
  String get portfolio => 'Portfelj';

  @override
  String get portfolioEmpty =>
      'Tu še ni ničesar. Odprite delnico in tapnite „Dodaj v portfelj“, da boste spremljali svoje naložbe.';

  @override
  String get portfolioLocalNote =>
      'Shranjeno samo v tej napravi. Skupni zneski so preračunani po referenčnih tečajih ECB; cene so lahko zakasnjene.';

  @override
  String get addToPortfolio => 'Dodaj v portfelj';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Dodaj $symbol';
  }

  @override
  String get portfolioQuantity => 'Število delnic';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Cena na delnico ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Datum nakupa';

  @override
  String get portfolioAdd => 'Dodaj';

  @override
  String get portfolioInvalidNumber => 'Vnesite število, večje od nič.';

  @override
  String portfolioAdded(String symbol) {
    return 'Delnica $symbol je dodana v portfelj.';
  }

  @override
  String get portfolioTotalValue => 'Skupna vrednost';

  @override
  String get portfolioToday => 'Danes';

  @override
  String get portfolioGainLoss => 'Dobiček/izguba';

  @override
  String get portfolioInvested => 'Vloženo';

  @override
  String get portfolioAllocation => 'Razporeditev';

  @override
  String get portfolioPositions => 'Pozicije';

  @override
  String portfolioAvgCost(String price) {
    return 'povpr. cena $price';
  }

  @override
  String get portfolioYourPosition => 'Vaša pozicija';

  @override
  String get portfolioPurchases => 'Nakupi';

  @override
  String get portfolioRemove => 'Odstrani';

  @override
  String get portfolioExcluded => 'Pozicije brez cene ali tečaja niso vključene v skupne zneske.';

  @override
  String get priceAlerts => 'Cenovna opozorila';

  @override
  String get setPriceAlert => 'Nastavi cenovno opozorilo';

  @override
  String alertDialogTitle(String symbol) {
    return 'Cenovno opozorilo · $symbol';
  }

  @override
  String get alertKindAbove => 'Zraste nad';

  @override
  String get alertKindBelow => 'Pade pod';

  @override
  String get alertKindMove => 'Se močno premakne v enem dnevu';

  @override
  String alertTargetPrice(String currency) {
    return 'Cena ($currency)';
  }

  @override
  String get alertMovePercent => 'Dnevna sprememba (%)';

  @override
  String get alertAlreadyMet => 'Cena je to raven že presegla.';

  @override
  String get alertSave => 'Nastavi opozorilo';

  @override
  String alertCreated(String symbol) {
    return 'Opozorilo za $symbol je nastavljeno.';
  }

  @override
  String get alertsEmpty => 'Cenovnih opozoril še ni. Odprite delnico in tapnite zvonček, da ga nastavite.';

  @override
  String get alertsNote =>
      'Opozorila se preverjajo vsakih 5 minut, ko WhatStock teče. V računalniku ostane dejaven v menijski vrstici ali sistemski vrstici; v telefonu opozorila zaenkrat prejmete le, ko je aplikacija odprta.';

  @override
  String alertDescAbove(String price) {
    return 'Nad $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Pod $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Dnevna sprememba ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Sproženo $date pri $price';
  }

  @override
  String get alertRearm => 'Znova vklopi';

  @override
  String get alertDelete => 'Izbriši';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol je zrasla nad $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol je padla pod $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol se je danes premaknila za $percent';
  }

  @override
  String alertHitBody(String price) {
    return 'Trenutna cena: $price';
  }

  @override
  String get alertOpen => 'Odpri';

  @override
  String get keepInTrayTitle => 'Ostani zagnan po zaprtju okna';

  @override
  String get keepInTraySubtitle =>
      'WhatStock ostane v menijski vrstici ali sistemski vrstici, zato bližnjica in cenovna opozorila še naprej delujejo.';

  @override
  String get termsOfUse => 'Pogoji uporabe';

  @override
  String get privacyPolicy => 'Pravilnik o zasebnosti';

  @override
  String get subscriptionLegal =>
      'Naročnina se samodejno podaljša vsak mesec, dokler je ne prekličete. Z naročnino sprejemate Pogoje uporabe in Pravilnik o zasebnosti.';

  @override
  String get deleteAccount => 'Izbriši račun';

  @override
  String get deleteAccountTitle => 'Želite izbrisati račun?';

  @override
  String get deleteAccountBody =>
      'Vaš račun in vse, kar hranimo na strežniku (e-pošta, kvota, poraba), bo trajno izbrisano, neporabljene analize pa bodo izgubljene. Naročnino, plačano v brskalniku, takoj prekličemo; naročnino prek App Store ali Google Play morate preklicati v nastavitvah trgovine.';

  @override
  String get deleteLocalData =>
      'Izbriši tudi podatke v tej napravi (portfelj, opozorila, priljubljene, zgodovina, shranjene analize)';

  @override
  String get deleteAccountConfirm => 'Trajno izbriši';

  @override
  String get accountDeleted => 'Vaš račun je izbrisan.';

  @override
  String get errDeleteAccount => 'Računa ni bilo mogoče izbrisati. Preverite povezavo in poskusite znova.';
}
