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
  String get errorSectionUnavailable =>
      'Tega razdelka ni bilo mogoče naložiti.';

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
  String get labelYieldOnCost => 'Donosnost na nakupno ceno';

  @override
  String get labelDividendGrowth5y => 'Rast dividende (5 let)';

  @override
  String get dividendNone =>
      'V zadnjih 12 mesecih ni bila izplačana nobena dividenda.';

  @override
  String get dividendOnYourShares => 'Na vaše delnice, na leto';

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
  String get errRecognitionRefused =>
      'Storitev za prepoznavanje te slike ni mogla obdelati.';

  @override
  String get errRecognitionTruncated =>
      'Odgovor storitve za prepoznavanje je bil prekinjen. Poskusite znova.';

  @override
  String get errRecognitionBadResponse =>
      'Nepričakovan odgovor storitve za prepoznavanje.';

  @override
  String get errRecognitionEmpty =>
      'Storitev za prepoznavanje je vrnila prazen odgovor.';

  @override
  String get errMissingFinnhubKey =>
      'Tržni podatki niso nastavljeni (ni FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Storitve za tržne podatke ni bilo mogoče doseči. Preverite internetno povezavo.';

  @override
  String get errMarketRateLimited =>
      'Preveč zahtev za storitev tržnih podatkov. Počakajte minuto.';

  @override
  String errMarketHttp(String status) {
    return 'Storitev za tržne podatke je vrnila napako (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Nepričakovan odgovor storitve za tržne podatke.';

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
  String get aiGenerating =>
      'Pripravljamo analizo … to lahko traja minuto ali dve.';

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
  String get errAiNotConfigured =>
      'Analiza AI ni nastavljena (ni ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Storitve AI ni bilo mogoče doseči. Preverite internetno povezavo.';

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
  String get chartUnavailable =>
      'Zgodovina tečajev pri trenutnem viru podatkov ni na voljo.';

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
  String get statementsUnavailable =>
      'Objavljeni računovodski izkazi za to delnico niso na voljo.';

  @override
  String get launchAtLogin => 'Zaženi ob prijavi';

  @override
  String get hotkeyLabel => 'Globalna bližnjica';

  @override
  String get hotkeyRecordHint =>
      'Kliknite tukaj in nato pritisnite novo kombinacijo tipk';

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
  String get noFavorites =>
      'Priljubljenih še ni. Tapnite zvezdico pri delnici, da jo dodate.';

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
  String get updateDownloaded =>
      'Posodobitev je pripravljena. Za namestitev znova zaženite aplikacijo.';

  @override
  String get updateNow => 'Posodobi';

  @override
  String get restartNow => 'Znova zaženi';

  @override
  String get updatesViaStore =>
      'Posodobitve prihajajo samodejno prek trgovine z aplikacijami.';

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
  String get extraPacksHint =>
      'Dodatne analize nikoli ne potečejo in se porabijo, ko porabite mesečno kvoto.';

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
  String get errQuotaExceeded =>
      'V tem obdobju nimate več analiz. Nadgradite paket ali kupite dodatne analize.';

  @override
  String get errTrialExpired =>
      'Vaš brezplačni preizkus se je iztekel. Za nadaljevanje izberite paket.';

  @override
  String get errNoPlan => 'Za analizo AI potrebujete aktiven paket.';

  @override
  String get viewPlans => 'Prikaži pakete';

  @override
  String get usageTitle => 'Poraba';

  @override
  String get demoPurchaseNote =>
      'Predstavitveno zaračunavanje: nakupi so na tej platformi simulirani.';

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
  String get aiDepthDeepDesc =>
      'Več spletnih iskanj, primerjava s konkurenco in več podrobnosti.';

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
  String get aiReaderBeginnerDesc =>
      'Preprost jezik; vsak strokovni izraz je pojasnjen.';

  @override
  String get aiReaderExperiencedDesc =>
      'Zgoščeno besedilo s standardno finančno terminologijo.';

  @override
  String get aiCounterArgument => 'Najmočnejši protiargument';

  @override
  String get aiCounterArgumentDesc =>
      'Povzetek se vedno konča z najmočnejšim argumentom proti lastnemu sklepu.';

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
  String get outlookChartNote =>
      'Okvirni razponi; verjetnosti so groba ocena, ne napovedi.';

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
      'Prijavite se, da bo vaša naročnina delovala v vseh vaših napravah.';

  @override
  String get accountSyncedNote =>
      'Vaša naročnina in preostale analize so enake v vseh napravah.';

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
  String get errSignInFailed =>
      'Prijava ni uspela. Preverite povezavo in poskusite znova.';

  @override
  String get checkoutWaiting =>
      'Plačilo dokončajte v brskalniku. Ko bo končano, se bo aplikacija samodejno posodobila.';

  @override
  String get paymentViaStripe =>
      'Varno plačilo v brskalniku prek storitve Stripe. Prekličete lahko kadar koli.';

  @override
  String get paymentViaStore =>
      'Zaračuna se prek vašega računa App Store ali Google Play. Prekličete lahko kadar koli v nastavitvah trgovine.';

  @override
  String get keySpace => 'Preslednica';

  @override
  String get doubleOptionTitle => 'Dvojni pritisk tipke Option';

  @override
  String get doubleOptionSubtitle =>
      'WhatStock prikličete tudi s hitrim dvojnim pritiskom tipke Option.';

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
  String homeDividendsThisYear(String amount) {
    return 'Dividende letos: $amount';
  }

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
  String get portfolioExcluded =>
      'Pozicije brez cene ali tečaja niso vključene v skupne zneske.';

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
  String get alertsEmpty =>
      'Cenovnih opozoril še ni. Odprite delnico in tapnite zvonček, da ga nastavite.';

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
  String get errDeleteAccount =>
      'Računa ni bilo mogoče izbrisati. Preverite povezavo in poskusite znova.';

  @override
  String get aiTrialBriefNote =>
      'Preizkusne analize so kratke in jih pripravi hitrejši model AI. S paketom dobite naš najzmogljivejši model AI, več spletnih iskanj ter standardno in poglobljeno dolžino.';

  @override
  String get billingMonthly => 'Mesečno';

  @override
  String get billingYearly => 'Letno';

  @override
  String get yearlyDiscount => '2 meseca brezplačno';

  @override
  String get perYear => '/ leto';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price na mesec';
  }

  @override
  String get subscriptionLegalYearly =>
      'Letna naročnina se samodejno podaljša vsako leto, dokler je ne prekličete. Z naročnino sprejemate Pogoje uporabe in Pravilnik o zasebnosti.';

  @override
  String get myAnalyses => 'Moje analize';

  @override
  String get navAlerts => 'Opozorila';

  @override
  String get inviteTitle => 'Zaprti predogled';

  @override
  String get inviteBody =>
      'WhatStock je zaenkrat na voljo samo na povabilo. Vnesite kodo povabila, ki ste jo prejeli.';

  @override
  String get inviteCodeLabel => 'Koda povabila';

  @override
  String get inviteContinue => 'Nadaljuj';

  @override
  String get inviteInvalid => 'Ta koda povabila ni veljavna.';

  @override
  String get inviteExpired =>
      'To povabilo je poteklo. Za novo kodo prosite osebo, ki vas je povabila.';

  @override
  String get inviteDeviceLimit =>
      'Ta koda povabila je že v uporabi na največjem dovoljenem številu naprav.';

  @override
  String get previewConfidential => 'Zaupni predogled';

  @override
  String get errPreviewDailyLimit =>
      'Današnja omejitev analiz za ta predogled je dosežena. Poskusite znova jutri.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'pred $count urami',
      few: 'pred $count urami',
      two: 'pred $count urama',
      one: 'pred $count uro',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'pred $count dnevi',
      few: 'pred $count dnevi',
      two: 'pred $count dnevoma',
      one: 'pred $count dnem',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Posodobiti to analizo?';

  @override
  String staleBody(String age) {
    return 'Ustvarjena je bila $age. Cene, novice in rezultati so se od takrat morda spremenili.';
  }

  @override
  String get staleKeep => 'Prikaži prejšnjo';

  @override
  String get staleRefresh => 'Ustvari novo';

  @override
  String seeAll(int count) {
    return 'Prikaži vse ($count)';
  }

  @override
  String get searchAnalyses => 'Išči po svojih analizah';

  @override
  String get deleteAnalysis => 'Izbriši';

  @override
  String analysisDeleted(String symbol) {
    return 'Analiza $symbol izbrisana';
  }

  @override
  String get keyLevelAlertHint =>
      'Tapnite raven, da prejmete opozorilo, ko jo cena doseže.';

  @override
  String get shareAnalysisTitle => 'Deli analizo';

  @override
  String get shareAsImage => 'Deli kot sliko';

  @override
  String get shareAsText => 'Deli kot besedilo';

  @override
  String get shareCardFooter => 'Ustvarjeno z WhatStock';

  @override
  String get shareCardDisclaimer => 'Analiza AI · ni naložbeni nasvet';

  @override
  String get referralTitle => 'Povabi prijatelje';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dodatnih analiz',
      few: '$count dodatne analize',
      two: '$count dodatni analizi',
      one: '$count dodatno analizo',
    );
    return 'Deli svojo kodo. Prijatelj takoj dobi $_temp0, ti pa enako po prijateljevi prvi analizi.';
  }

  @override
  String get referralYourCode => 'Tvoja koda';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Povabljeni: $invited · Nagrajeni: $rewarded';
  }

  @override
  String get referralHaveCode => 'Imaš kodo prijatelja?';

  @override
  String get referralRedeem => 'Unovči';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dodanih je $count dodatnih analiz. Dobrodošli!',
      few: 'Dodane so $count dodatne analize. Dobrodošli!',
      two: 'Dodani sta $count dodatni analizi. Dobrodošli!',
      one: 'Dodana je $count dodatna analiza. Dobrodošli!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Ta koda ne obstaja. Preveri jo in poskusi znova.';

  @override
  String get referralErrOwn => 'Svoje kode ne moreš unovčiti.';

  @override
  String get referralErrAlready =>
      'V tem računu je bila koda prijatelja že unovčena.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dodatnih analiz',
      few: '$count dodatne analize',
      two: '$count dodatni analizi',
      one: '$count dodatno analizo',
    );
    return 'Delnice analiziram z WhatStock: fotografiraj delnico in AI ti jo razloži. Z mojo kodo $code dobiš $_temp0.';
  }

  @override
  String get referralCopied => 'Koda kopirana';

  @override
  String get onboardTitle1 => 'Fotografirajte delnico';

  @override
  String get onboardBody1 =>
      'Dovolj je zaslon borzne aplikacije, časnik ali logotip podjetja: WhatStock prepozna delnico in vam pokaže ceno, graf in ključne številke.';

  @override
  String get onboardTitle2 => 'Razumite jo v nekaj minutah';

  @override
  String get onboardBody2 =>
      'Analiza AI pojasni, kaj poganja delnico, kakšna so tveganja in vrednotenje, ter ponudi tri scenarije, kam bi se lahko gibala cena – z viri in v vašem jeziku.';

  @override
  String get onboardTitle3 => 'Bodite vedno na tekočem';

  @override
  String get onboardBody3 =>
      'Priljubljene, vaš portfelj in cenovna opozorila vas sproti obveščajo. Vaše analize ostanejo v vaši napravi, pripravljene za ponovno odpiranje.';

  @override
  String get onboardNext => 'Naprej';

  @override
  String get onboardStart => 'Začnimo';

  @override
  String get onboardSkip => 'Preskoči';

  @override
  String changesTitle(String date) {
    return 'Od prejšnje analize ($date)';
  }

  @override
  String get changesPrice => 'Cena';

  @override
  String get changesNoMajor => 'Obeti se niso bistveno spremenili.';

  @override
  String get changesPreviousSummary => 'Prejšnji povzetek';

  @override
  String get telemetryTitle => 'Pomagaj izboljšati WhatStock';

  @override
  String get telemetryBody =>
      'Deli anonimne statistične podatke o uporabi in poročila o zrušitvah: katere funkcije se uporabljajo in kaj je šlo narobe. Nikoli tvojih delnic, analiz ali osebnih podatkov. To lahko kadar koli spremeniš v Nastavitvah.';

  @override
  String get telemetryAllow => 'Dovoli';

  @override
  String get telemetryDecline => 'Ne, hvala';

  @override
  String get telemetrySetting => 'Anonimna statistika in poročila o zrušitvah';

  @override
  String get telemetrySettingHint =>
      'Kako pogosto se uporabljajo funkcije in poročila o napakah – brez osebnih podatkov ali vsebine tvojih iskanj in analiz.';

  @override
  String get askButton => 'Vprašajte o tej analizi';

  @override
  String askTitle(String symbol) {
    return 'Vprašanja: $symbol';
  }

  @override
  String get askIntro =>
      'Vprašajte karkoli o analizi: kaj pomeni določeno tveganje, kaj bi lahko spremenilo obete, kako je bila izračunana določena številka. Odgovori temeljijo na tej analizi in niso naložbeni nasvet.';

  @override
  String get askHint => 'Postavite vprašanje…';

  @override
  String get askSend => 'Pošlji';

  @override
  String get askThinking => 'Razmišljam…';

  @override
  String get askSuggest1 => 'Kaj je največje tveganje?';

  @override
  String get askSuggest2 => 'Kaj bi lahko spremenilo obete?';

  @override
  String get askSuggest3 => 'Razloži preprosto';

  @override
  String get askMaxReached =>
      'To je bilo zadnje vprašanje za to analizo. Če želite vprašati še kaj, ustvarite novo analizo.';

  @override
  String get errAskLimit =>
      'Dosegli ste današnjo omejitev vprašanj. Poskusite znova jutri.';

  @override
  String get eventTomorrow => 'Jutri';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'čez $days dni',
      few: 'čez $days dni',
      two: 'čez $days dneva',
      one: 'čez $days dan',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Četrtletni rezultati';

  @override
  String get eventBeforeOpen => 'pred odprtjem borze';

  @override
  String get eventAfterClose => 'po zaprtju borze';

  @override
  String eventEpsEstimate(String value) {
    return 'Ocena EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Iz vaše analize';

  @override
  String get eventDividend => 'Pričakovana dividenda';

  @override
  String get eventDividendEstimate =>
      'Ocenjeno iz izplačil, ki ste jih zabeležili';

  @override
  String get eventsHint =>
      'Datumi objave rezultatov za vaše priljubljene delnice in delnice v portfelju v naslednjih 90 dneh, datirani dogodki, ki so jih označile vaše analize, ter dividende, pričakovane na podlagi izplačil, ki ste jih zabeležili.';

  @override
  String get eventsEmpty =>
      'V naslednjih 90 dneh ni datiranih dogodkov. Dodajte priljubljene ali delnice v portfelj, da tukaj vidite datume objave njihovih rezultatov; zabeležene dividende prikazujejo naslednje pričakovano izplačilo.';

  @override
  String get compareTitle => 'Primerjava';

  @override
  String get compareAdd => 'Dodaj delnico';

  @override
  String get compareRemove => 'Odstrani';

  @override
  String get compareTickerHint => 'Oznaka, npr. MSFT';

  @override
  String get compareHint =>
      'Ključni podatki drug ob drugem; najboljša vrednost v vsaki vrstici je poudarjena. Zneski so v valuti posamezne delnice.';

  @override
  String get compareNoAnalysis => 'Analize še ni';

  @override
  String get portfolioDividends => 'Letne dividende';

  @override
  String portfolioDividendYield(String percent) {
    return 'Donosnost $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Pričakovane letne dividende temeljijo na dividendah, izplačanih v zadnjih 12 mesecih; prihodnja izplačila niso zagotovljena.';

  @override
  String positionDividend(String amount) {
    return 'Dividenda: $amount na leto';
  }

  @override
  String get chartAvgCost => 'Vaša povpr.';

  @override
  String get chartAlertLevel => 'Opozorilo';

  @override
  String get marketsToday => 'Trgi danes';

  @override
  String get notesTitle => 'Moji zapiski';

  @override
  String get notesHint =>
      'Zakaj ste jo kupili, kaj spremljate, kaj bi vas pripravilo do prodaje?';

  @override
  String get notesInfo =>
      'Shranjeno samo v tej napravi. Analiza AI upošteva vaše zapiske.';

  @override
  String notesSaved(String date) {
    return 'Shranjeno $date';
  }

  @override
  String get peersTitle => 'Podobna podjetja';

  @override
  String get portfolioExport => 'Izvozi v CSV';

  @override
  String get portfolioImport => 'Uvozi iz CSV';

  @override
  String get portfolioImportHint =>
      'Prilepite en nakup na vrstico: borzna oznaka, količina, cena, valuta, datum (LLLL-MM-DD). Stolpci so lahko ločeni z vejicami, podpičji ali tabulatorji; naslovna vrstica ni obvezna.';

  @override
  String get portfolioImportButton => 'Uvozi';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dodanih je $count nakupov',
      few: 'Dodani so $count nakupi',
      two: 'Dodana sta $count nakupa',
      one: 'Dodan je $count nakup',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Preskočenih je $count vrstic',
      few: 'Preskočene so $count vrstice',
      two: 'Preskočeni sta $count vrstici',
      one: 'Preskočena je $count vrstica',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Portfelj, priljubljene, cenovna opozorila in zapiski se sinhronizirajo v vseh vaših napravah.';

  @override
  String syncLast(String time) {
    return 'Zadnja sinhronizacija: $time';
  }

  @override
  String get syncNow => 'Sinhroniziraj zdaj';

  @override
  String get syncFailed =>
      'Sinhronizacija ni uspela. Samodejno se bo poskusila znova.';

  @override
  String get alertEmailTitle => 'E-pošta, ko se sproži opozorilo';

  @override
  String get alertEmailOn =>
      'Vaša opozorila preverjamo vsakih nekaj minut in vam pošljemo e-pošto, tudi ko je aplikacija zaprta.';

  @override
  String get alertEmailSignIn =>
      'Prijavite se z e-pošto v Nastavitvah, da boste opozorila prejemali po e-pošti, tudi ko je aplikacija zaprta.';

  @override
  String get portfolioHistory => 'Gibanje vrednosti';

  @override
  String get portfolioReviewTitle => 'Analiza portfelja z AI';

  @override
  String get portfolioReviewIntro =>
      'AI pregleda vaš celoten portfelj: koncentracijo, izpostavljenost sektorjem in valutam, skupna tveganja vaših delnic in dividende. Porabi 1 analizo.';

  @override
  String get portfolioReviewButton => 'Analiziraj moj portfelj';

  @override
  String get portfolioReviewAgain => 'Analiziraj znova';

  @override
  String get portfolioReviewWorking => 'Analiziramo vaš portfelj …';

  @override
  String get digestTitle => 'Tedenski povzetek po e-pošti';

  @override
  String get digestHint =>
      'Vsak ponedeljek: kako so se prejšnji teden gibali vaši priljubljeni in portfelj ter njihovi prihajajoči datumi rezultatov.';

  @override
  String get benchmarkTitle => 'Primerjava z S&P 500';

  @override
  String get benchmarkTitleIndex => 'Primerjava z indeksom';

  @override
  String get benchmarkHintIndex =>
      'Kot da bi bil vsak nakup isti dan vložen v sklad, ki sledi izbranemu indeksu. Brez dividend; pretekli donosi ne napovedujejo prihodnjih.';

  @override
  String get benchmarkYours => 'Vaši nakupi';

  @override
  String benchmarkAhead(String points) {
    return 'Za $points o. t. bolje od indeksa';
  }

  @override
  String benchmarkBehind(String points) {
    return 'Za $points o. t. za indeksom';
  }

  @override
  String get portfolioSell => 'Prodaj';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Prodaj $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Prodajna cena na delnico ($currency)';
  }

  @override
  String get portfolioSellDate => 'Datum prodaje';

  @override
  String get portfolioSellAll => 'Vse';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Imate $quantity';
  }

  @override
  String get portfolioSold => 'Prodano';

  @override
  String get portfolioRealized => 'Realizirano';

  @override
  String get portfolioClosed => 'Zaprte pozicije';

  @override
  String get portfolioClosedNote => 'Vse delnice prodane';

  @override
  String get portfolioTransactions => 'Transakcije';

  @override
  String get portfolioRealizedByYear => 'Realiziran dobiček po letih';

  @override
  String get portfolioRealizedHint =>
      'Prodaje se najprej povežejo z vašimi najstarejšimi nakupi (FIFO) in preračunajo po današnjem tečaju. Za davčno napoved uporabite izpisek svojega borznega posrednika.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Od te analize so bili objavljeni novi četrtletni rezultati ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Novi rezultati';

  @override
  String get portfolioImportBrokers =>
      'Prepoznani so tudi izvozi iz Revolut, Trading 212 in Interactive Brokers, skupaj s prodajami; dividende in pologi se preskočijo.';

  @override
  String get portfolioImportFile => 'Izberite datoteko';

  @override
  String offlineBanner(String time) {
    return 'Ni povezave – prikazani so nazadnje shranjeni podatki ($time).';
  }

  @override
  String get glossMarketCap =>
      'Koliko je vredno celotno podjetje na borzi: cena delnice × število delnic.';

  @override
  String get glossSharesOutstanding =>
      'Koliko delnic je podjetje izdalo. Če se število poveča, ima vsaka delnica manjši delež; odkupi lastnih delnic ga zmanjšajo.';

  @override
  String get glossPeTrailing =>
      'Cena ÷ dobiček na delnico v zadnjih 12 mesecih: za koliko let sedanjega dobička plačate. Nižji je cenejši, vendar imajo hitro rastoča podjetja običajno visok P/E.';

  @override
  String get glossPeForward =>
      'Kot P/E, vendar z dobičkom, ki ga analitiki pričakujejo v naslednjih 12 mesecih. Če je nižji od preteklega P/E, se pričakuje rast dobička.';

  @override
  String get glossPb =>
      'Cena ÷ knjigovodska vrednost (sredstva minus dolgovi) na delnico. Okoli 1 pomeni, da trg podjetje vrednoti toliko, kolikor ima na papirju.';

  @override
  String get glossPs =>
      'Tržna vrednost ÷ letni prihodki. Uporabno za podjetja z malo ali nič dobička; primerjajte ga znotraj iste panoge.';

  @override
  String get glossEvToFcf =>
      'Vrednost podjetja skupaj z dolgom (EV) ÷ denar, ki ga po naložbah ustvari v enem letu. Nižja vrednost pomeni, da za ceno dobite več denarja.';

  @override
  String get glossPeg =>
      'P/E ÷ pričakovana letna rast dobička (%). Okoli 1 pogosto velja za pošteno; P/E postavi v luč rasti.';

  @override
  String get glossEps =>
      'Dobiček na delnico v zadnjih 12 mesecih. EPS, ki z leti raste, je eden najmočnejših znakov zdravega podjetja.';

  @override
  String get glossBeta =>
      'Koliko se delnica običajno giblje skupaj s trgom: 1 = kot trg, 1,5 = približno 50 % večja nihanja, pod 1 = mirnejša.';

  @override
  String get glossRevenueTtm =>
      'Skupna prodaja v zadnjih 12 mesecih, pred vsemi stroški.';

  @override
  String get glossNetIncomeTtm =>
      'Dobiček, ki ostane po vseh stroških, obrestih in davkih v zadnjih 12 mesecih.';

  @override
  String get glossGrossMargin =>
      'Delež prihodkov, ki ostane po neposrednih stroških izdelkov. Visoka marža pogosto pomeni moč pri oblikovanju cen.';

  @override
  String get glossOperatingMargin =>
      'Delež prihodkov, ki ostane po stroških poslovanja (plače, najemnina, trženje), pred obrestmi in davki.';

  @override
  String get glossNetMargin =>
      'Delež prihodkov, ki postane končni dobiček. 20 % pomeni, da je od vsakih 100 prodaje 20 dobička.';

  @override
  String get glossRoe =>
      'Donosnost kapitala: letni dobiček ÷ kapital lastnikov. Pokaže, kako dobro uprava uporablja denar delničarjev; nad približno 15 % je močna.';

  @override
  String get glossRoa =>
      'Donosnost sredstev: letni dobiček ÷ vse, kar ima podjetje v lasti. Primerjajte jo znotraj iste panoge.';

  @override
  String get glossDebtToEquity =>
      'Dolgovi ÷ kapital lastnikov. Višja vrednost pomeni več izposojenega denarja: večje tveganje, ko obrestne mere rastejo ali posel upade.';

  @override
  String get glossCurrentRatio =>
      'Kratkoročna sredstva ÷ obveznosti, ki zapadejo v enem letu. Nad 1 pomeni, da podjetje lahko pokrije bližnje obveznosti.';

  @override
  String get glossRevenueGrowth =>
      'Koliko so se prihodki povečali v primerjavi z letom prej.';

  @override
  String get glossEpsGrowth =>
      'Koliko se je dobiček na delnico povečal v primerjavi z letom prej.';

  @override
  String get glossDividendYield =>
      'Letna dividenda ÷ cena delnice: denarni prihodek, ki bi ga prejeli na leto, v odstotkih od plačanega zneska.';

  @override
  String get glossDividendPerShare =>
      'Dividenda, izplačana za eno delnico v zadnjem letu.';

  @override
  String get glossPayoutRatio =>
      'Delež dobička, izplačan kot dividende. Nad 100 % podjetje izplača več, kot zasluži, kar redko traja dolgo.';

  @override
  String get portfolioBeta => 'Beta portfelja';

  @override
  String get glossPortfolioBeta =>
      'Beta vaših delnic, utežena z njihovo vrednostjo: približno za koliko odstotkov se premaknejo vaše delnice, ko se trg premakne za 1 %. Nad 1 nihajo bolj kot trg, pod 1 manj. Gotovina ni vključena.';

  @override
  String get portfolioTop3 => '3 največje pozicije';

  @override
  String get glossPortfolioTop3 =>
      'Kolikšen del vrednosti vaših delnic je v vaših treh največjih pozicijah. Višji kot je, bolj lahko slabe novice o enem samem podjetju prizadenejo celoten portfelj.';

  @override
  String get glossDividendGrowth5y =>
      'Za koliko se je dividenda na delnico v zadnjih petih letih v povprečju povečevala na leto. Enakomerna rast običajno pomeni, da podjetje zaupa svojemu denarnemu toku; znižanje je pogosto opozorilni znak.';

  @override
  String get glossYieldOnCost =>
      'Dividende, prejete v zadnjih 12 mesecih, deljene s tem, kar ste plačali za delnice, ki jih še imate. Drugače kot dividendna donosnost se meri glede na vašo nakupno ceno, ne na današnjo.';

  @override
  String get glossTitle => 'Kaj to pomeni?';

  @override
  String get watchNewsTitle => 'Novice o vaših delnicah';

  @override
  String get undo => 'Razveljavi';

  @override
  String get watchSort => 'Razvrsti';

  @override
  String get watchSortOwn => 'Moj vrstni red';

  @override
  String get watchSortGainers => 'Največja rast najprej';

  @override
  String get watchSortLosers => 'Največji padec najprej';

  @override
  String get watchSortName => 'Po oznaki (A–Z)';

  @override
  String get watchHint =>
      'Povlecite ročico za spremembo vrstnega reda, podrsajte levo za odstranitev. Črta prikazuje zadnjih 30 dni.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: vaša analiza je pripravljena.';
  }

  @override
  String alertFromCost(String price) {
    return 'Glede na vašo povprečno nakupno ceno ($price):';
  }

  @override
  String get briefTitle => 'Danes z vašimi delnicami';

  @override
  String get briefButton => 'Povzemi dan';

  @override
  String get briefHint =>
      'Kratek povzetek z UI o tem, kako so se danes gibali vaš portfelj in priljubljene ter kaj o njih pravijo zadnje novice. Ne porabi analize.';

  @override
  String get briefRefresh => 'Posodobi';

  @override
  String get sectionEarnings => 'Četrtletni rezultati';

  @override
  String earningsNext(String date) {
    return 'Naslednje poročilo: $date';
  }

  @override
  String get earningsExpected => 'Pričakovani EPS';

  @override
  String get earningsReported => 'Objavljeni EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Enak ali višji od pričakovanega EPS v $beats od zadnjih $total četrtletij',
      one: 'Enak ali višji od pričakovanega EPS v $beats od 1 četrtletja',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol jutri objavi četrtletne rezultate';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol danes objavi četrtletne rezultate';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return '$symbol: danes pričakovana dividenda';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Približno $amount. Ko prispe, jo zabeležite v portfelj.';
  }

  @override
  String get dividendRemindersTitle => 'Opomniki za dividende';

  @override
  String get dividendRemindersSubtitle =>
      'Obvestilo na dan, ko je glede na ritem vaših zabeleženih izplačil pričakovana dividenda, da jo lahko zabeležite';

  @override
  String get earningsRemindersTitle => 'Opomniki za rezultate';

  @override
  String get earningsRemindersSubtitle =>
      'Obvestilo dan pred objavo četrtletnih rezultatov delnic iz priljubljenih ali tvojega portfelja';

  @override
  String addAllToFavorites(int count) {
    return 'Dodaj vse med priljubljene ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Uvozi s posnetka zaslona';

  @override
  String get holdingsReading => 'Branje pozicij …';

  @override
  String get holdingsReviewTitle => 'Najdene pozicije';

  @override
  String get holdingsReviewHint =>
      'Preverite številke, preden jih dodate. Cena je vaša povprečna nakupna cena na delnico, ne današnja cena.';

  @override
  String get holdingsNoPrice => 'Na sliki ni povprečne nakupne cene';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dodaj $count pozicij',
      few: 'Dodaj $count pozicije',
      two: 'Dodaj $count poziciji',
      one: 'Dodaj $count pozicijo',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Na tej sliki nismo našli delniških pozicij. Poskusite s posnetkom zaslona strani s pozicijami ali portfeljem pri vašem borznem posredniku.';

  @override
  String get week52Range => 'Razpon v 52 tednih';

  @override
  String week52BelowHigh(String percent) {
    return '$percent pod najvišjim tečajem v 52 tednih';
  }

  @override
  String get week52AtHigh => 'Na najvišjem tečaju v 52 tednih';

  @override
  String get alertKindTrailing => 'Pade z vrha';

  @override
  String get alertTrailingPercent => 'Padec z vrha (%)';

  @override
  String get alertTrailingHint =>
      'Sledi ceni navzgor: opozorilo se sproži, ko cena pade za toliko od najvišje ravni, odkar ste ga nastavili.';

  @override
  String alertDescTrailing(String percent) {
    return 'Padec za $percent z vrha';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'dosedanji vrh: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol je padla za $percent z vrha';
  }

  @override
  String get sectionInsiders => 'Posli notranjih oseb';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count nakupov',
      few: '$count nakupi',
      two: '$count nakupa',
      one: '$count nakup',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count prodaj',
      few: '$count prodaje',
      two: '$count prodaji',
      one: '$count prodaja',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Neto: $shares delnic';
  }

  @override
  String get insiderBuy => 'Kupljeno';

  @override
  String get insiderSell => 'Prodano';

  @override
  String get insiderHint =>
      'Nakupi in prodaje na odprtem trgu, ki so jih opravili vodilni in direktorji v zadnjih 90 dneh (SEC Form 4). Uveljavljanje opcij in dodeljene delnice niso vključeni.';

  @override
  String get insiderNone =>
      'V zadnjih 90 dneh ni bilo nakupov ali prodaj notranjih oseb na odprtem trgu.';

  @override
  String get analystTrend => 'Kako so se mnenja spreminjala iz meseca v mesec';

  @override
  String get watchListAll => 'Vse';

  @override
  String get watchListNew => 'Nov seznam';

  @override
  String get watchListName => 'Ime seznama';

  @override
  String get watchListRename => 'Preimenuj seznam';

  @override
  String get watchListDelete => 'Izbriši seznam';

  @override
  String get watchListAddTo => 'Dodaj na seznam';

  @override
  String get watchListEmpty =>
      'Na tem seznamu še ni delnic. Za dodajanje tapnite gumb seznama ob delnici.';

  @override
  String get portfolioAskTitle => 'Vprašanja o vašem portfelju';

  @override
  String get rangeYtd => 'Letos';

  @override
  String get backupTitle => 'Varnostna kopija';

  @override
  String get backupSave => 'Shrani varnostno kopijo';

  @override
  String get backupSaveHint =>
      'Vaše priljubljene, seznami, portfelj, opozorila in zapiski v eni datoteki.';

  @override
  String get backupRestore => 'Obnovi iz varnostne kopije';

  @override
  String get backupRestoreHint =>
      'Doda vsebino datoteke; nič od tega, kar imate zdaj, se ne izbriše.';

  @override
  String get backupRestored => 'Varnostna kopija je obnovljena.';

  @override
  String get backupInvalid => 'Ta datoteka ni varnostna kopija WhatStock.';

  @override
  String get allocationPositions => 'Delnice';

  @override
  String get allocationSectors => 'Sektorji';

  @override
  String get allocationCurrencies => 'Valute';

  @override
  String get allocationAccounts => 'Računi';

  @override
  String get compareReturn1y => 'Donos v 1 letu';

  @override
  String get compareFromHigh => 'Od najvišjega tečaja v 52 tednih';

  @override
  String get briefAutoTitle => 'Dnevni povzetek vsako jutro';

  @override
  String get briefAutoSubtitle =>
      '„Danes z vašimi delnicami“ se samodejno pripravi po 7.00, dokler aplikacija teče; na računalnikih prejmete obvestilo. Porabi vašo dnevno omejitev vprašanj, ne analize.';

  @override
  String get targetsButton => 'Ciljna razporeditev';

  @override
  String get targetsTitle => 'Ciljna razporeditev';

  @override
  String get targetsHint =>
      'Določite, kolikšen delež portfelja naj ima vsaka delnica. Prazno polje pomeni brez cilja. Aplikacija nato pokaže, kaj kupiti ali prodati, da ga dosežete.';

  @override
  String targetsSum(String percent) {
    return 'Skupaj: $percent';
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
    return '$symbol je presegel pričakovani EPS';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol ni dosegel pričakovanega EPS';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'Objavljeni EPS $actual, pričakovani $estimate';
  }

  @override
  String get newsExplain => 'Kaj to pomeni?';

  @override
  String get watchAlertAll => 'Opozorilo ob velikih dnevnih premikih';

  @override
  String get watchAlertAllHint =>
      'Cenovno opozorilo za vsako delnico na tem seznamu, ki se sproži, ko se v enem dnevu premakne za toliko, navzgor ali navzdol. Delnice, ki ga že imajo, obdržijo svojega.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nastavljenih je $count opozoril',
      few: 'Nastavljena so $count opozorila',
      two: 'Nastavljeni sta $count opozorili',
      one: 'Nastavljeno je $count opozorilo',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Izvozi realizirane dobičke (CSV)';

  @override
  String get portfolioAnnualReturn => 'Letni donos';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / leto';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Denarno tehtani letni donos (XIRR): upošteva, kdaj ste kupovali in prodajali, zato ga pozneje dodan denar ne izkrivlja. Prikaže se, ko je vaš prvi nakup star vsaj eno leto; dividende niso vključene.';

  @override
  String get eventsAddToCalendar => 'Dodaj v koledar (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Opozorilo za portfelj';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Obvestilo, ko se tvoj celoten portfelj v enem dnevu premakne za toliko.';

  @override
  String get portfolioMoveAlertOff => 'Izklopljeno';

  @override
  String portfolioMoveUp(String percent) {
    return 'Tvoj portfelj je danes zrasel za $percent';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Tvoj portfelj je danes padel za $percent';
  }

  @override
  String get whatIfTitle => 'Kaj, če bi investirali?';

  @override
  String get whatIfAmount => 'Znesek';

  @override
  String whatIfResult(String amount, String period) {
    return 'Naložba $amount za $period bi bila danes vredna';
  }

  @override
  String get whatIfNote =>
      'Samo na podlagi cene delnice: dividende, provizije in davki niso vključeni. Pretekli donosi ne napovedujejo prihodnjih.';

  @override
  String get watchShare => 'Deli seznam';

  @override
  String get watchImport => 'Dodaj borzne oznake';

  @override
  String get watchImportHint =>
      'Prilepite borzne oznake, ločene z vejicami, presledki ali novimi vrsticami – na primer seznam, ki ga je nekdo delil z vami.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dodanih je $count delnic',
      few: 'Dodane so $count delnice',
      two: 'Dodani sta $count delnici',
      one: 'Dodana je $count delnica',
      zero: 'Ni novih delnic',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Največje najprej';

  @override
  String get positionsSortGain => 'Največji skupni donos najprej';

  @override
  String get positionsSortToday => 'Najboljše danes najprej';

  @override
  String get chartMyBuys => 'Vaši nakupi';

  @override
  String get chartMySells => 'Vaše prodaje';

  @override
  String get shortcutsTitle => 'Bližnjice na tipkovnici';

  @override
  String usMarketOpen(String time) {
    return 'Trg v ZDA odprt · zapre se čez $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Trg v ZDA zaprt · odpre se čez $time';
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
  String get dividendGoalSet => 'Nastavi mesečni cilj dividend';

  @override
  String get dividendGoalTitle => 'Mesečni cilj dividend';

  @override
  String get dividendGoalAmount => 'Dividende na mesec';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Približno $amount na mesec pri današnji donosnosti: $percent cilja $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Približno $amount na mesec pri današnji donosnosti: cilj $goal dosežen';
  }

  @override
  String get portfolioAccount => 'Račun';

  @override
  String get portfolioAccountHint => 'npr. TBSZ 2026 (neobvezno)';

  @override
  String get portfolioAccountAdd => 'Navedi račun';

  @override
  String get portfolioAccountsAll => 'Vsi računi';

  @override
  String get portfolioAccountNote =>
      'Samo transakcije in dividende tega računa. Gotovina, cilji in analiza z AI so prikazani pod Vsi računi.';

  @override
  String get portfolioNoAccount => 'Brez računa';

  @override
  String portfolioFee(String currency) {
    return 'Provizija ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Dodaj provizijo';

  @override
  String portfolioFeeRow(String amount) {
    return 'Provizija: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'Letni povzetek';

  @override
  String get portfolioProceeds => 'Vrednost ob odsvojitvi';

  @override
  String get portfolioCostBasis => 'Nabavna vrednost';

  @override
  String get portfolioFeesPaid => 'Plačane provizije';

  @override
  String get portfolioAnnualSummaryNote =>
      'Zneski v izvirni valuti, brez preračuna. Vrednost ob odsvojitvi je zmanjšana za provizijo pri prodaji; nabavna vrednost vključuje provizijo pri nakupu (FIFO). Za davčno napoved preračunajte po tečaju, ki ga zahteva vaš davčni organ.';

  @override
  String get portfolioGoalSet => 'Nastavi cilj';

  @override
  String get portfolioGoalTitle => 'Cilj portfelja';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent cilja $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Cilj $amount dosežen';
  }

  @override
  String get portfolioGoalRemove => 'Odstrani cilj';

  @override
  String get alertEdit => 'Uredi opozorilo';

  @override
  String get positionOpenLots => 'Še v lasti (najstarejši najprej)';

  @override
  String get lotRemoved => 'Transakcija izbrisana';

  @override
  String get alertDeleted => 'Opozorilo izbrisano';

  @override
  String get alertsClearTriggered => 'Počisti sprožena opozorila';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Počiščenih je $count opozoril',
      few: 'Počiščena so $count opozorila',
      two: 'Počiščeni sta $count opozorili',
      one: 'Počiščeno je $count opozorilo',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Začetni zaslon';

  @override
  String get allocationCountries => 'Države';

  @override
  String get newsExplainNoteResearch =>
      'Razlaga umetne inteligence: dejstva preveri na spletu, odpre članek in oceni, kako zanesljiv je vir. Ni naložbeni nasvet. Porabi vašo dnevno omejitev vprašanj, ne analize.';

  @override
  String get sourceOfficial => 'Uradno';

  @override
  String get sourcePressRelease => 'Medijsko sporočilo';

  @override
  String get sourceMajorNews => 'Velik medij';

  @override
  String get sourceOpinion => 'Mnenje';

  @override
  String get earningsSummaryButton => 'Kaj je bilo v zadnjem poročilu?';

  @override
  String get earningsSummaryNote =>
      'Povzetek umetne inteligence o objavi rezultatov podjetja in medijskem poročanju, ki ga najde na spletu. Ni naložbeni nasvet. Porabi vašo dnevno omejitev vprašanj, ne analize.';

  @override
  String get compareLastSurprise => 'EPS zadnjega četrtletja vs. pričakovani';

  @override
  String get compareNextReport => 'Naslednje poročilo';

  @override
  String get resolvingDescription =>
      'Ugotavljanje, katero delnico imate v mislih …';

  @override
  String get instrumentTitle => 'O tem instrumentu';

  @override
  String get instrumentHint =>
      'Za ta simbol ni profila podjetja – lahko gre za ETF, sklad ali potrdilo o deponiranju. Vprašajte AI, kaj je to, kaj vsebuje in koliko stane.';

  @override
  String get instrumentAsk => 'Kaj je to?';

  @override
  String get instrumentNote =>
      'Pojasnilo umetne inteligence na podlagi strani sklada pri izdajatelju in finančnih spletnih mest, ki jih najde na spletu. Ni naložbeni nasvet. Porabi vašo dnevno omejitev vprašanj, ne analize.';

  @override
  String suggestAskAi(String query) {
    return 'Vprašajte AI: »$query«';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Ni trenutne cene za $symbols.';
  }

  @override
  String get eventsRecentResults => 'Nedavno objavljeni rezultati';

  @override
  String get saveToNotes => 'Shrani v moje zapiske';

  @override
  String get savedToNotes => 'Shranjeno v vaše zapiske';

  @override
  String get portfolioDividendsReceived => 'Prejete dividende';

  @override
  String get portfolioDividendsThisYear => 'Letos';

  @override
  String get portfolioDividendsAllTime => 'Skupaj';

  @override
  String get portfolioAddDividend => 'Dodaj dividendo';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Prejeti znesek ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Datum izplačila';

  @override
  String get portfolioDividendsEmpty =>
      'Ni še zabeleženih dividend. Dodajte jih ročno ali uvozite izvoz svojega borznega posrednika – prevzete bodo tudi vrstice z dividendami.';

  @override
  String get portfolioSplit => 'Delitev delnic';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Delitev delnic: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Nakupi in prodaje z datumom pred delitvijo se prilagodijo: število delnic se pomnoži, cena na delnico pa deli, tako da strošek ostane enak.';

  @override
  String get portfolioSplitRatio => 'Razmerje (nove : stare)';

  @override
  String get portfolioSplitRatioError =>
      'Vnesite razmerje, kot je 10:1, ali 1:10 za obratno delitev (združitev).';

  @override
  String get portfolioSplitDate => 'Datum delitve';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Delitev delnic $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Delitev delnic je izbrisana';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dodane delitve delnic: $count',
      one: 'Dodana 1 delitev delnic',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dodanih $count dividend',
      few: 'Dodane $count dividende',
      two: 'Dodani $count dividendi',
      one: 'Dodana $count dividenda',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Izvozi dividende (CSV)';

  @override
  String get portfolioDividendDeleted => 'Dividenda izbrisana';

  @override
  String get portfolioDividendsHint =>
      'Zneski, kot so prišli na vaš račun, v valuti izplačila; skupni zneski so preračunani po današnjem tečaju. Za davčno napoved uporabite izpisek svojega borznega posrednika.';

  @override
  String get awayTitle => 'Medtem ko vas ni bilo';

  @override
  String awaySince(String when) {
    return 'Od $when';
  }

  @override
  String get awayQuiet => 'Ni se veliko premaknilo.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Sproženih $count opozoril',
      few: 'Sprožena $count opozorila',
      two: 'Sproženi $count opozorili',
      one: 'Sproženo 1 opozorilo',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Objavljeni rezultati: $symbols';
  }

  @override
  String get moveWhyButton => 'Zakaj se danes premika?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent danes';
  }

  @override
  String get moveWhyNote =>
      'Razlaga UI na podlagi današnjih novic s spleta; pravi razlog je lahko neznan ali drugačen. Ni naložbeni nasvet. Porabi vašo dnevno kvoto vprašanj, ne analize.';

  @override
  String get sectionTechnical => 'Tehnična slika';

  @override
  String get labelSma50 => '50-dnevno povprečje';

  @override
  String get labelSma200 => '200-dnevno povprečje';

  @override
  String get labelRsi => 'RSI (14 dni)';

  @override
  String get labelVolatility30 => 'Volatilnost (30 dni)';

  @override
  String techAbove(String percent) {
    return '$percent nad';
  }

  @override
  String techBelow(String percent) {
    return '$percent pod';
  }

  @override
  String get techOverbought => 'prekupljeno';

  @override
  String get techOversold => 'preprodano';

  @override
  String get techNeutral => 'nevtralno';

  @override
  String get techGoldenCross =>
      '50-dnevno povprečje je nad 200-dnevnim – po klasični razlagi trend rasti.';

  @override
  String get techDeathCross =>
      '50-dnevno povprečje je pod 200-dnevnim – po klasični razlagi trend padanja.';

  @override
  String get glossSma50 =>
      'Povprečna zaključna cena zadnjih 50 trgovalnih dni. Cena nad njim se pogosto razume kot kratkoročna moč, pod njim kot šibkost.';

  @override
  String get glossSma200 =>
      'Povprečna zaključna cena zadnjih 200 trgovalnih dni – klasična črta dolgoročnega trenda. Mnogi vlagatelji ceno nad njo štejejo za dolgoročni trend rasti.';

  @override
  String get glossRsi =>
      'Indeks relativne moči: primerja nedavne dobičke z nedavnimi izgubami na lestvici od 0 do 100. Nad 70 delnico pogosto imenujemo prekupljeno (hitro je zrasla), pod 30 preprodano – a močan trend lahko tam ostane dolgo.';

  @override
  String get glossVolatility =>
      'Kako močno cena niha iz dneva v dan, preračunano na leto: 20 % pomeni, da se v običajnem letu giblje v razponu približno ±20 %. Višja volatilnost pomeni večje premike v obe smeri.';

  @override
  String get techNote =>
      'Izračunano iz dnevnih zaključnih cen. Tehnični signali opisujejo preteklost, ne prihodnosti.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$above od $count pozicij nad svojim 200-dnevnim povprečjem';
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
  String get signalCrossedAbove => 'prebila nad 200-dnevno povprečje';

  @override
  String get signalCrossedBelow => 'prebila pod 200-dnevno povprečje';

  @override
  String get signalAlertsTitle => 'Obvestila o tehničnih signalih';

  @override
  String get signalAlertsSubtitle =>
      'Enkrat na dan, ko delnica, ki ji sledite, postane preprodana ali prekupljena (RSI) ali njena cena prečka 200-dnevno povprečje.';

  @override
  String get signalAlertsNotification => 'Tehnični signali';

  @override
  String get glossaryPageTitle => 'Slovar pojmov';

  @override
  String get glossaryPageSubtitle =>
      'Preproste razlage vsake številke v aplikaciji, od P/E do RSI';

  @override
  String get glossarySearchHint => 'Išči po slovarju';

  @override
  String get portfolioCash => 'Gotovina';

  @override
  String get portfolioCashTitle => 'Stanje gotovine';

  @override
  String get portfolioCashHint =>
      'Nenaloženi denar pri vašem borznem posredniku, po valutah. Šteje v skupno vrednost in razporeditev, ne pa v donos.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Znesek ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Nastavi stanje gotovine';

  @override
  String get portfolioDividendsByMonth => 'Po mesecih';

  @override
  String get dividendsLegendReceived => 'Prejete';

  @override
  String get dividendsLegendExpected => 'Pričakovane';

  @override
  String get portfolioDividendsExpected => 'Naslednje pričakovane';

  @override
  String get portfolioDividendsExpectedNote =>
      'Ocenjeno iz datumov in zneskov izplačil, ki ste jih zabeležili; podjetja jih lahko spremenijo ali izpustijo.';

  @override
  String portfolioDividendAround(String date) {
    return 'okoli $date';
  }
}
