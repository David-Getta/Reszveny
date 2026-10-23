// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lithuanian (`lt`).
class AppLocalizationsLt extends AppLocalizations {
  AppLocalizationsLt([String locale = 'lt']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Nufotografuokite akciją ir sužinokite apie ją viską.';

  @override
  String get homeHint =>
      'Akcijos sertifikatas, brokerio programėlės ekranas, laikraštis ar įmonės logotipas – bet kas, kas identifikuoja akciją.';

  @override
  String get takePhoto => 'Fotografuoti';

  @override
  String get chooseFromGallery => 'Pasirinkti iš galerijos';

  @override
  String get chooseImage => 'Pasirinkti vaizdą';

  @override
  String get enterTickerManually => 'Įvesti simbolį rankiniu būdu';

  @override
  String get tickerInputLabel => 'Akcijos simbolis';

  @override
  String get tickerInputHint => 'pvz. AAPL';

  @override
  String get lookUp => 'Ieškoti';

  @override
  String demoModeBanner(String symbols) {
    return 'Demonstracinis režimas – rinkos duomenų raktas nenustatytas. Pavyzdiniai duomenys prieinami: $symbols.';
  }

  @override
  String get recognizing => 'Analizuojamas vaizdas…';

  @override
  String get loadingData => 'Įkeliami duomenys…';

  @override
  String get noCandidatesTitle => 'Akcija neatpažinta';

  @override
  String get noCandidatesBody =>
      'Šiame vaizde nepavyko identifikuoti akcijos. Pabandykite ryškesnę nuotrauką arba įveskite simbolį rankiniu būdu.';

  @override
  String get whatWeSaw => 'Ką matėme';

  @override
  String get chooseCandidateTitle => 'Kurią akciją turėjote omenyje?';

  @override
  String confidencePercent(int percent) {
    return '$percent % tikrumas';
  }

  @override
  String get settings => 'Nustatymai';

  @override
  String get language => 'Kalba';

  @override
  String get systemLanguage => 'Sistemos numatytoji';

  @override
  String get about => 'Apie';

  @override
  String get disclaimer =>
      'Ši programėlė teikia tik informaciją ir nėra investavimo rekomendacija. Duomenys gali vėluoti arba būti netikslūs.';

  @override
  String dataSource(String source) {
    return 'Duomenų šaltinis: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Atpažinimas: $source';
  }

  @override
  String get retry => 'Bandyti dar kartą';

  @override
  String get cancel => 'Atšaukti';

  @override
  String get ok => 'Gerai';

  @override
  String get close => 'Užverti';

  @override
  String get errorGeneric => 'Kažkas nutiko ne taip.';

  @override
  String get errorSectionUnavailable => 'Nepavyko įkelti šios dalies.';

  @override
  String get notAvailable => 'n/d';

  @override
  String get sectionIdentity => 'Identifikacija';

  @override
  String get sectionPrice => 'Kaina';

  @override
  String get sectionValuation => 'Vertinimas';

  @override
  String get sectionFinancials => 'Finansai';

  @override
  String get sectionDividend => 'Dividendai';

  @override
  String get sectionProfile => 'Įmonės profilis';

  @override
  String get sectionAnalysts => 'Analitikų vertinimai';

  @override
  String get sectionNews => 'Naujienos';

  @override
  String get sectionRecognition => 'Atpažinimo detalės';

  @override
  String get labelSymbol => 'Simbolis';

  @override
  String get labelExchange => 'Birža';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Valiuta';

  @override
  String get labelCountry => 'Šalis';

  @override
  String get labelIndustry => 'Pramonės šaka';

  @override
  String get labelSector => 'Sektorius';

  @override
  String get labelWebsite => 'Svetainė';

  @override
  String get labelIpoDate => 'IPO data';

  @override
  String get labelMarketCap => 'Rinkos kapitalizacija';

  @override
  String get labelSharesOutstanding => 'Apyvartoje esančios akcijos';

  @override
  String get labelEmployees => 'Darbuotojai';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Būstinė';

  @override
  String get labelDescription => 'Aprašymas';

  @override
  String get labelLastPrice => 'Paskutinė kaina';

  @override
  String get labelChange => 'Pokytis';

  @override
  String get labelOpen => 'Atidarymo kaina';

  @override
  String get labelDayHigh => 'Dienos maksimumas';

  @override
  String get labelDayLow => 'Dienos minimumas';

  @override
  String get labelPreviousClose => 'Ankstesnė uždarymo kaina';

  @override
  String get labelWeek52High => '52 savaičių maksimumas';

  @override
  String get labelWeek52Low => '52 savaičių minimumas';

  @override
  String get labelAverageVolume10d => 'Vid. apimtis (10 d.)';

  @override
  String updatedAt(String time) {
    return 'Atnaujinta $time';
  }

  @override
  String get labelPeTrailing => 'P/E (praėjusių 12 mėn.)';

  @override
  String get labelPeForward => 'P/E (prognozuojamas)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / laisvasis pinigų srautas';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Pajamos (TTM)';

  @override
  String get labelNetIncomeTtm => 'Grynasis pelnas (TTM)';

  @override
  String get labelGrossMargin => 'Bendroji marža';

  @override
  String get labelOperatingMargin => 'Veiklos marža';

  @override
  String get labelNetMargin => 'Grynoji marža';

  @override
  String get labelRoe => 'Nuosavo kapitalo grąža';

  @override
  String get labelRoa => 'Turto grąža';

  @override
  String get labelDebtToEquity => 'Skola / nuosavas kapitalas';

  @override
  String get labelCurrentRatio => 'Einamojo likvidumo koeficientas';

  @override
  String get labelRevenueGrowth => 'Pajamų augimas (YoY)';

  @override
  String get labelEpsGrowth => 'EPS augimas (YoY)';

  @override
  String get labelDividendYield => 'Dividendų pajamingumas';

  @override
  String get labelDividendPerShare => 'Dividendas vienai akcijai';

  @override
  String get labelPayoutRatio => 'Išmokėjimo koeficientas';

  @override
  String get labelYieldOnCost => 'Pajamingumas nuo pirkimo kainos';

  @override
  String get labelDividendGrowth5y => 'Dividendų augimas (5 m.)';

  @override
  String get dividendNone => 'Per pastaruosius 12 mėnesių dividendų nemokėta.';

  @override
  String get dividendOnYourShares => 'Už jūsų akcijas, per metus';

  @override
  String get labelConsensus => 'Konsensusas';

  @override
  String get ratingStrongBuy => 'Tikrai pirkti';

  @override
  String get ratingBuy => 'Pirkti';

  @override
  String get ratingHold => 'Laikyti';

  @override
  String get ratingSell => 'Parduoti';

  @override
  String get ratingStrongSell => 'Tikrai parduoti';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analitikų',
      many: '$count analitiko',
      few: '$count analitikai',
      one: '$count analitikas',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Laikotarpis: $period';
  }

  @override
  String get noNews => 'Naujausių naujienų nėra.';

  @override
  String get openArticle => 'Atidaryti straipsnį';

  @override
  String get openLinkFailed => 'Nepavyko atidaryti nuorodos.';

  @override
  String get recognitionSummary => 'Santrauka';

  @override
  String get recognitionEvidence => 'Kodėl taip manome';

  @override
  String get recognitionRawText => 'Iš vaizdo nuskaitytas tekstas';

  @override
  String get errMissingAnthropicKey =>
      'Vaizdų atpažinimas nesukonfigūruotas (nėra ANTHROPIC_API_KEY). Įveskite simbolį rankiniu būdu.';

  @override
  String get errRecognitionUnreachable =>
      'Nepavyko pasiekti atpažinimo paslaugos. Patikrinkite interneto ryšį.';

  @override
  String errRecognitionHttp(String status) {
    return 'Atpažinimo paslauga grąžino klaidą (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Atpažinimo paslauga negalėjo apdoroti šio vaizdo.';

  @override
  String get errRecognitionTruncated =>
      'Atpažinimo paslaugos atsakymas buvo nutrauktas. Bandykite dar kartą.';

  @override
  String get errRecognitionBadResponse =>
      'Netikėtas atpažinimo paslaugos atsakymas.';

  @override
  String get errRecognitionEmpty =>
      'Atpažinimo paslauga grąžino tuščią atsakymą.';

  @override
  String get errMissingFinnhubKey =>
      'Rinkos duomenys nesukonfigūruoti (nėra FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Nepavyko pasiekti rinkos duomenų paslaugos. Patikrinkite interneto ryšį.';

  @override
  String get errMarketRateLimited =>
      'Per daug užklausų rinkos duomenų paslaugai. Palaukite minutę.';

  @override
  String errMarketHttp(String status) {
    return 'Rinkos duomenų paslauga grąžino klaidą (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Netikėtas rinkos duomenų paslaugos atsakymas.';

  @override
  String errNoQuote(String symbol) {
    return 'Kainos duomenų $symbol nerasta.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Įmonės profilio $symbol nerasta.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Demonstracinis režimas palaiko tik $symbols. Pridėkite FINNHUB_API_KEY, kad gautumėte realius duomenis.';
  }

  @override
  String errUnknown(String detail) {
    return 'Kažkas nutiko ne taip: $detail';
  }

  @override
  String get newSearch => 'Nauja paieška';

  @override
  String get recentSearches => 'Naujausios';

  @override
  String get noRecentSearches => 'Naujausių paieškų dar nėra.';

  @override
  String get clearRecent => 'Išvalyti naujausias';

  @override
  String get greeting => 'Kurią akciją pažiūrėsime?';

  @override
  String get searchHint => 'Simbolis arba įmonės pavadinimas';

  @override
  String get attachImage => 'Pridėti vaizdą';

  @override
  String get searchResultsTitle => 'Paieškos rezultatai';

  @override
  String errNoResults(String query) {
    return 'Pagal „$query“ akcijų nerasta.';
  }

  @override
  String get quickBarHint => 'Įveskite simbolį arba įmonės pavadinimą…';

  @override
  String get openFullWindow => 'Atverti langą';

  @override
  String hotkeyHint(String shortcut) {
    return 'Paspauskite $shortcut bet kur, kad iškviestumėte WhatStock.';
  }

  @override
  String get trayOpen => 'Atverti WhatStock';

  @override
  String get trayQuickSearch => 'Greitoji paieška';

  @override
  String get trayQuit => 'Baigti darbą';

  @override
  String get appearance => 'Išvaizda';

  @override
  String get themeSystem => 'Sistemos';

  @override
  String get themeDark => 'Tamsi';

  @override
  String get themeLight => 'Šviesi';

  @override
  String get back => 'Atgal';

  @override
  String get aiSectionTitle => 'DI analizė';

  @override
  String get aiIntro =>
      'Išsami DI parengta apžvalga: naujausių naujienų santrauka, veikla, stiprybės, rizikos ir paslėpti veiksniai, vertinimas, kainos perspektyva su scenarijais iš psichologinio, sociologinio, techninio ir makroekonominio požiūrio ir į ką atkreipti dėmesį.';

  @override
  String get aiGenerate => 'Sukurti analizę';

  @override
  String get aiRegenerate => 'Sukurti iš naujo';

  @override
  String get aiGenerating =>
      'Rengiama analizė… tai gali užtrukti minutę ar dvi.';

  @override
  String get aiSources => 'Šaltiniai';

  @override
  String aiGeneratedAt(String time) {
    return 'Sukurta $time';
  }

  @override
  String get aiDisclaimer =>
      'DI sukurta analizė, pagrįsta viešais duomenimis ir naujausiomis naujienomis. Joje gali būti klaidų arba ji gali būti pasenusi, ir tai nėra investavimo rekomendacija.';

  @override
  String get errAiNotConfigured =>
      'DI analizė nesukonfigūruota (nėra ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Nepavyko pasiekti DI paslaugos. Patikrinkite interneto ryšį.';

  @override
  String errAiHttp(String status) {
    return 'DI paslauga grąžino klaidą (HTTP $status).';
  }

  @override
  String get errAiRefused => 'DI paslauga atsisakė analizuoti šią akciją.';

  @override
  String get errAiBadResponse => 'Netikėtas DI paslaugos atsakymas.';

  @override
  String get sectionChart => 'Kainos grafikas';

  @override
  String get rangeOneWeek => '1 sav.';

  @override
  String get rangeOneMonth => '1 mėn.';

  @override
  String get rangeThreeMonths => '3 mėn.';

  @override
  String get rangeOneYear => '1 m.';

  @override
  String get rangeFiveYears => '5 m.';

  @override
  String get chartUnavailable =>
      'Kainų istorija dabartiniame duomenų šaltinyje neprieinama.';

  @override
  String get sectionStatements => 'Finansinės ataskaitos (metinės)';

  @override
  String get labelFiscalYear => 'Finansiniai metai';

  @override
  String get labelRevenue => 'Pajamos';

  @override
  String get labelNetIncome => 'Grynasis pelnas';

  @override
  String get labelTotalAssets => 'Visas turtas';

  @override
  String get labelTotalLiabilities => 'Visi įsipareigojimai';

  @override
  String get labelEquity => 'Nuosavas kapitalas';

  @override
  String get labelOperatingCashFlow => 'Pagrindinės veiklos pinigų srautas';

  @override
  String get statementsUnavailable =>
      'Šios akcijos pateiktos finansinės ataskaitos neprieinamos.';

  @override
  String get launchAtLogin => 'Paleisti prisijungus';

  @override
  String get hotkeyLabel => 'Visuotinis spartusis klavišas';

  @override
  String get hotkeyRecordHint =>
      'Spustelėkite čia ir paspauskite naują klavišų kombinaciją';

  @override
  String get hotkeyReset => 'Atkurti numatytąjį';

  @override
  String get pasteImage => 'Įklijuoti vaizdą iš iškarpinės';

  @override
  String get errClipboardNoImage => 'Iškarpinėje nėra vaizdo.';

  @override
  String get favorites => 'Mėgstamiausi';

  @override
  String get addToFavorites => 'Pridėti į mėgstamiausius';

  @override
  String get removeFromFavorites => 'Pašalinti iš mėgstamiausių';

  @override
  String get noFavorites =>
      'Mėgstamiausių dar nėra. Bakstelėkite akcijos žvaigždutę, kad ją pridėtumėte.';

  @override
  String get displayCurrency => 'Rodymo valiuta';

  @override
  String get displayCurrencyNone => 'Tik pačios akcijos valiuta';

  @override
  String labelConverted(String currency) {
    return '≈ valiuta $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Kursas: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Naujinimai';

  @override
  String currentVersion(String version) {
    return 'Versija $version';
  }

  @override
  String get autoUpdate => 'Įdiegti naujinimus automatiškai';

  @override
  String get checkForUpdates => 'Tikrinti, ar yra naujinimų';

  @override
  String get updateChecking => 'Tikrinama, ar yra naujinimų…';

  @override
  String get updateUpToDate => 'Naudojate naujausią versiją.';

  @override
  String updateAvailable(String version) {
    return 'Pasiekiama versija $version.';
  }

  @override
  String get updateDownloading => 'Naujinimas atsisiunčiamas fone…';

  @override
  String get updateDownloaded =>
      'Naujinimas paruoštas. Paleiskite programą iš naujo, kad jį įdiegtumėte.';

  @override
  String get updateNow => 'Naujinti';

  @override
  String get restartNow => 'Paleisti iš naujo';

  @override
  String get updatesViaStore =>
      'Naujinimai gaunami automatiškai per programėlių parduotuvę.';

  @override
  String get updateCheckFailed => 'Nepavyko patikrinti, ar yra naujinimų.';

  @override
  String get subscription => 'Prenumerata';

  @override
  String get planTrial => 'Bandomasis';

  @override
  String get planNormal => 'Standartinis';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Nėra aktyvaus plano';

  @override
  String planAnalysesPerMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analizių per mėnesį',
      many: '$count analizės per mėnesį',
      few: '$count analizės per mėnesį',
      one: '$count analizė per mėnesį',
    );
    return '$_temp0';
  }

  @override
  String planTrialDescription(int days, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$days d. nemokamas bandomasis laikotarpis su $count analizių',
      many: '$days d. nemokamas bandomasis laikotarpis su $count analizėmis',
      few: '$days d. nemokamas bandomasis laikotarpis su $count analizėmis',
      one: '$days d. nemokamas bandomasis laikotarpis su $count analize',
    );
    return '$_temp0';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Liko $days bandomojo laikotarpio dienų',
      many: 'Liko $days bandomojo laikotarpio dienos',
      few: 'Liko $days bandomojo laikotarpio dienos',
      one: 'Liko $days bandomojo laikotarpio diena',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Jūsų nemokamas bandomasis laikotarpis baigėsi. Pasirinkite planą, kad galėtumėte toliau analizuoti.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Šį laikotarpį liko $remaining iš $total analizių';
  }

  @override
  String extraCredits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count papildomų analizių',
      many: '$count papildomos analizės',
      few: '$count papildomos analizės',
      one: '$count papildoma analizė',
    );
    return '$_temp0';
  }

  @override
  String renewsOn(String date) {
    return 'Atsinaujina $date';
  }

  @override
  String get choosePlan => 'Pasirinkite planą';

  @override
  String get currentPlan => 'Dabartinis planas';

  @override
  String get subscribe => 'Prenumeruoti';

  @override
  String get perMonth => '/ mėn.';

  @override
  String get extraPacksTitle => 'Reikia daugiau? Įsigykite papildomų analizių';

  @override
  String get extraPacksHint =>
      'Papildomos analizės niekada nenustoja galioti ir naudojamos išnaudojus mėnesio limitą.';

  @override
  String get buy => 'Pirkti';

  @override
  String get restorePurchases => 'Atkurti pirkinius';

  @override
  String get manageSubscription => 'Tvarkyti prenumeratą';

  @override
  String get purchaseSuccess => 'Ačiū! Jūsų pirkinys aktyvus.';

  @override
  String get purchasePending => 'Pirkinys laukia patvirtinimo…';

  @override
  String get purchaseFailed => 'Pirkimo nepavyko užbaigti.';

  @override
  String get purchaseCanceled => 'Pirkimas atšauktas.';

  @override
  String get billingUnavailable =>
      'Pirkiniai šioje platformoje dar negalimi. Užsiprenumeruokite telefone arba Mac kompiuteryje; jūsų planas veiks visuose įrenginiuose.';

  @override
  String get errQuotaExceeded =>
      'Šį laikotarpį analizių nebeliko. Pakeiskite planą į aukštesnį arba įsigykite papildomų analizių.';

  @override
  String get errTrialExpired =>
      'Jūsų nemokamas bandomasis laikotarpis baigėsi. Pasirinkite planą, kad galėtumėte tęsti.';

  @override
  String get errNoPlan => 'DI analizei reikalingas aktyvus planas.';

  @override
  String get viewPlans => 'Peržiūrėti planus';

  @override
  String get usageTitle => 'Naudojimas';

  @override
  String get demoPurchaseNote =>
      'Demonstracinis atsiskaitymas: šioje platformoje pirkiniai yra imituojami.';

  @override
  String get mostPopular => 'Populiariausias';

  @override
  String get bestValue => 'Geriausias pasirinkimas';

  @override
  String get planFeaturesCommon =>
      'Nuotraukų atpažinimas, tikralaikiai duomenys, grafikai, mėgstamiausi ir visos 120 kalbos įtrauktos į kiekvieną planą. Limitas taikomas DI analizėms.';

  @override
  String get searchLanguages => 'Ieškoti kalbų…';

  @override
  String get noLanguageMatch => 'Nė viena kalba neatitinka.';

  @override
  String get aiSettings => 'DI analizė';

  @override
  String get aiLength => 'Apimtis';

  @override
  String get aiDepthBrief => 'Trumpa';

  @override
  String get aiDepthStandard => 'Standartinė';

  @override
  String get aiDepthDeep => 'Išsami';

  @override
  String get aiDepthBriefDesc => 'Svarbiausia – greitai.';

  @override
  String get aiDepthStandardDesc => 'Visa ataskaita su visomis dalimis.';

  @override
  String get aiDepthDeepDesc =>
      'Daugiau paieškų internete, palyginimas su konkurentais ir išsamesnė analizė.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Apie $min–$max žodžių';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'sunaudoja $count analizių',
      many: 'sunaudoja $count analizės',
      few: 'sunaudoja $count analizes',
      one: 'sunaudoja $count analizę',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Skaitytojo lygis';

  @override
  String get aiReaderBeginner => 'Pradedantysis';

  @override
  String get aiReaderExperienced => 'Patyręs';

  @override
  String get aiReaderBeginnerDesc =>
      'Paprasta kalba; kiekvienas techninis terminas paaiškinamas.';

  @override
  String get aiReaderExperiencedDesc =>
      'Glaustesnis tekstas su įprasta finansų terminija.';

  @override
  String get aiCounterArgument => 'Stipriausias kontrargumentas';

  @override
  String get aiCounterArgumentDesc =>
      'Santrauka visada baigiama stipriausiu argumentu prieš jos pačios išvadą.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Su jūsų planu – iki $count paieškų internete per analizę',
      many: 'Su jūsų planu – iki $count paieškos internete per analizę',
      few: 'Su jūsų planu – iki $count paieškų internete per analizę',
      one: 'Su jūsų planu – iki $count paieškos internete per analizę',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Standartinė apimtis pagal planą: Standartinis $normal, Pro $pro, Max $max, Ultra $ultra. Trumpa – 2 paieškomis mažiau, Išsami – 2 daugiau.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'iki $count paieškų internete',
      many: 'iki $count paieškos internete',
      few: 'iki $count paieškų internete',
      one: 'iki $count paieškos internete',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count paieškų internete per analizę',
      many: '$count paieškos internete per analizę',
      few: '$count paieškos internete per analizę',
      one: '$count paieška internete per analizę',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Šiai apimčiai reikia analizių: $needed, bet liko tik $left. Nustatymuose pasirinkite trumpesnę apimtį arba įsigykite daugiau analizių.';
  }

  @override
  String get outlookMarketMood => 'Rinkos nuotaika';

  @override
  String get moodVeryPessimistic => 'Labai pesimistinė';

  @override
  String get moodPessimistic => 'Pesimistinė';

  @override
  String get moodNeutral => 'Neutrali';

  @override
  String get moodOptimistic => 'Optimistinė';

  @override
  String get moodVeryOptimistic => 'Labai optimistinė';

  @override
  String get scenarioBull => 'Optimistinis scenarijus';

  @override
  String get scenarioBase => 'Bazinis scenarijus';

  @override
  String get scenarioBear => 'Pesimistinis scenarijus';

  @override
  String outlookCurrentPrice(String price) {
    return 'Dabartinė kaina: $price';
  }

  @override
  String get outlookKeyLevels => 'Svarbiausi lygiai';

  @override
  String get keyLevelSupport => 'Palaikymas';

  @override
  String get keyLevelResistance => 'Pasipriešinimas';

  @override
  String get keyLevelAnchor => 'Inkaras';

  @override
  String get upcomingEvents => 'Artėjantys įvykiai';

  @override
  String get outlookChartNote =>
      'Orientaciniai intervalai; tikimybės yra apytikslis vertinimas, o ne prognozės.';

  @override
  String get accountTitle => 'Paskyra';

  @override
  String get signIn => 'Prisijungti';

  @override
  String get signOut => 'Atsijungti';

  @override
  String get notSignedIn => 'Neprisijungta';

  @override
  String get accountBenefit =>
      'Prisijunkite, kad jūsų prenumerata veiktų visuose jūsų įrenginiuose.';

  @override
  String get accountSyncedNote =>
      'Jūsų prenumerata ir likusios analizės yra vienodos kiekviename įrenginyje.';

  @override
  String get signInTitle => 'Prisijunkite prie WhatStock';

  @override
  String get emailLabel => 'El. pašto adresas';

  @override
  String get continueWithEmail => 'Tęsti su el. paštu';

  @override
  String codeSentTo(String email) {
    return 'Išsiuntėme 6 skaitmenų kodą adresu $email. Jis galioja 10 minučių.';
  }

  @override
  String get codeLabel => 'Prisijungimo kodas';

  @override
  String get resendCode => 'Siųsti naują kodą';

  @override
  String get useDifferentEmail => 'Naudoti kitą el. paštą';

  @override
  String get errInvalidCode => 'Kodas neteisingas arba nebegalioja.';

  @override
  String get errInvalidEmail => 'Įveskite galiojantį el. pašto adresą.';

  @override
  String get errSignInFailed =>
      'Prisijungti nepavyko. Patikrinkite ryšį ir bandykite dar kartą.';

  @override
  String get checkoutWaiting =>
      'Užbaikite mokėjimą naršyklėje. Programa atsinaujins automatiškai, kai tai bus padaryta.';

  @override
  String get paymentViaStripe =>
      'Saugus mokėjimas naršyklėje per Stripe. Atšaukti galite bet kada.';

  @override
  String get paymentViaStore =>
      'Mokestis nuskaitomas per jūsų App Store arba Google Play paskyrą. Atšaukti galite bet kada parduotuvės nustatymuose.';

  @override
  String get keySpace => 'Tarpas';

  @override
  String get doubleOptionTitle => 'Dukart paspausti Option';

  @override
  String get doubleOptionSubtitle =>
      'WhatStock taip pat iškviesite greitai dukart paspaudę klavišą Option.';

  @override
  String get doubleOptionPermission =>
      'Kad tai veiktų ir kitose programose, leiskite WhatStock skiltyje Sistemos nustatymai → Privatumas ir sauga → Įvesties stebėjimas, tada iš naujo atidarykite programą.';

  @override
  String get openSystemSettings => 'Atidaryti Sistemos nustatymus';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Paspauskite $shortcut arba dukart paspauskite Option bet kur, kad iškviestumėte WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Labiausiai tikėtinas';

  @override
  String get longTermToday => 'Šiandien';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years metų',
      many: '$years metų',
      few: '$years metai',
      one: '$years metai',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range per metus';
  }

  @override
  String longTermLikely(String price) {
    return 'labiausiai tikėtina $price';
  }

  @override
  String get confidenceLow => 'Mažas patikimumas';

  @override
  String get confidenceMedium => 'Vidutinis patikimumas';

  @override
  String get confidenceHigh => 'Didelis patikimumas';

  @override
  String get longTermNote =>
      'Ilgalaikiai intervalai remiasi nurodytomis prielaidomis ir laikui bėgant platėja. Kainos be dividendų. Apytiksliai vertinimai, ne prognozės.';

  @override
  String get portfolio => 'Portfelis';

  @override
  String get portfolioEmpty =>
      'Kol kas tuščia. Atidarykite akciją ir bakstelėkite „Pridėti į portfelį“, kad stebėtumėte, ką turite.';

  @override
  String get portfolioLocalNote =>
      'Saugoma tik šiame įrenginyje. Sumos perskaičiuojamos ECB orientaciniais kursais; kainos gali vėluoti.';

  @override
  String get addToPortfolio => 'Pridėti į portfelį';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Pridėti $symbol';
  }

  @override
  String get portfolioQuantity => 'Akcijų skaičius';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Akcijos kaina ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Pirkimo data';

  @override
  String get portfolioAdd => 'Pridėti';

  @override
  String get portfolioInvalidNumber => 'Įveskite už nulį didesnį skaičių.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol pridėta į portfelį.';
  }

  @override
  String get portfolioTotalValue => 'Bendra vertė';

  @override
  String get portfolioToday => 'Šiandien';

  @override
  String get portfolioGainLoss => 'Pelnas/nuostolis';

  @override
  String homeDividendsThisYear(String amount) {
    return 'Dividendai šiemet: $amount';
  }

  @override
  String get portfolioInvested => 'Investuota';

  @override
  String get portfolioAllocation => 'Paskirstymas';

  @override
  String get portfolioPositions => 'Pozicijos';

  @override
  String portfolioAvgCost(String price) {
    return 'vid. pirkimo kaina $price';
  }

  @override
  String get portfolioYourPosition => 'Jūsų pozicija';

  @override
  String get portfolioPurchases => 'Pirkimai';

  @override
  String get portfolioRemove => 'Pašalinti';

  @override
  String get portfolioExcluded =>
      'Pozicijos be kainos ar valiutos kurso į sumas neįtraukiamos.';

  @override
  String get priceAlerts => 'Kainos įspėjimai';

  @override
  String get setPriceAlert => 'Nustatyti kainos įspėjimą';

  @override
  String alertDialogTitle(String symbol) {
    return 'Kainos įspėjimas · $symbol';
  }

  @override
  String get alertKindAbove => 'Pakils virš';

  @override
  String get alertKindBelow => 'Nukris žemiau';

  @override
  String get alertKindMove => 'Smarkiai pajudės per dieną';

  @override
  String alertTargetPrice(String currency) {
    return 'Kaina ($currency)';
  }

  @override
  String get alertMovePercent => 'Dienos pokytis (%)';

  @override
  String get alertAlreadyMet => 'Kaina jau peržengė šį lygį.';

  @override
  String get alertSave => 'Nustatyti įspėjimą';

  @override
  String alertCreated(String symbol) {
    return '$symbol įspėjimas nustatytas.';
  }

  @override
  String get alertsEmpty =>
      'Įspėjimų dar nėra. Atidarykite akciją ir bakstelėkite varpelį.';

  @override
  String get alertsNote =>
      'Įspėjimai tikrinami kas 5 minutes, kol veikia WhatStock. Kompiuteryje programa toliau veikia meniu juostoje arba dėkle; telefone kol kas įspėja tik kai programa atidaryta.';

  @override
  String alertDescAbove(String price) {
    return 'Virš $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Žemiau $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Dienos pokytis ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Suveikė $date, kaina $price';
  }

  @override
  String get alertRearm => 'Įjungti iš naujo';

  @override
  String get alertDelete => 'Ištrinti';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol pakilo virš $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol nukrito žemiau $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol šiandien pasikeitė $percent';
  }

  @override
  String alertHitBody(String price) {
    return 'Dabartinė kaina: $price';
  }

  @override
  String get alertOpen => 'Atidaryti';

  @override
  String get keepInTrayTitle => 'Veikti uždarius langą';

  @override
  String get keepInTraySubtitle =>
      'WhatStock lieka meniu juostoje arba dėkle, todėl spartusis klavišas ir kainos įspėjimai toliau veikia.';

  @override
  String get termsOfUse => 'Naudojimo sąlygos';

  @override
  String get privacyPolicy => 'Privatumo politika';

  @override
  String get subscriptionLegal =>
      'Prenumerata kas mėnesį automatiškai pratęsiama, kol jos neatšauksite. Užsiprenumeruodami sutinkate su Naudojimo sąlygomis ir Privatumo politika.';

  @override
  String get deleteAccount => 'Ištrinti paskyrą';

  @override
  String get deleteAccountTitle => 'Ištrinti paskyrą?';

  @override
  String get deleteAccountBody =>
      'Jūsų paskyra ir viskas, kas saugoma mūsų serveryje (el. paštas, limitas, naudojimas), bus ištrinta visam laikui, o nepanaudotos analizės prarandamos. Naršyklėje apmokėta prenumerata atšaukiama iš karto; App Store ar Google Play prenumeratą reikia atšaukti parduotuvės nustatymuose.';

  @override
  String get deleteLocalData =>
      'Ištrinti ir šio įrenginio duomenis (portfelis, įspėjimai, mėgstamiausi, istorija, išsaugotos analizės)';

  @override
  String get deleteAccountConfirm => 'Ištrinti visam laikui';

  @override
  String get accountDeleted => 'Jūsų paskyra ištrinta.';

  @override
  String get errDeleteAccount =>
      'Paskyros ištrinti nepavyko. Patikrinkite ryšį ir bandykite dar kartą.';

  @override
  String get aiTrialBriefNote =>
      'Bandomosios analizės yra trumpos ir rengiamos greitesniu DI modeliu. Su planu gaunate pajėgiausią mūsų DI, daugiau paieškų internete ir standartinę bei išsamią apimtį.';

  @override
  String get billingMonthly => 'Kas mėnesį';

  @override
  String get billingYearly => 'Kasmet';

  @override
  String get yearlyDiscount => '2 mėn. nemokamai';

  @override
  String get perYear => '/ metus';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price per mėnesį';
  }

  @override
  String get subscriptionLegalYearly =>
      'Metinė prenumerata kasmet automatiškai pratęsiama, kol jos neatšauksite. Užsiprenumeruodami sutinkate su Naudojimo sąlygomis ir Privatumo politika.';

  @override
  String get myAnalyses => 'Mano analizės';

  @override
  String get navAlerts => 'Įspėjimai';

  @override
  String get inviteTitle => 'Uždara peržiūra';

  @override
  String get inviteBody =>
      'Kol kas WhatStock pasiekiama tik su kvietimu. Įveskite gautą kvietimo kodą.';

  @override
  String get inviteCodeLabel => 'Kvietimo kodas';

  @override
  String get inviteContinue => 'Tęsti';

  @override
  String get inviteInvalid => 'Šis kvietimo kodas negalioja.';

  @override
  String get inviteExpired =>
      'Šio kvietimo galiojimas baigėsi. Paprašykite naujo kodo asmens, kuris jus pakvietė.';

  @override
  String get inviteDeviceLimit =>
      'Šis kvietimo kodas jau naudojamas didžiausiame leistiname įrenginių skaičiuje.';

  @override
  String get previewConfidential => 'Konfidenciali peržiūra';

  @override
  String get errPreviewDailyLimit =>
      'Šios peržiūros šiandienos analizių limitas išnaudotas. Bandykite dar kartą rytoj.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'prieš $count valandų',
      many: 'prieš $count valandos',
      few: 'prieš $count valandas',
      one: 'prieš $count valandą',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'prieš $count dienų',
      many: 'prieš $count dienos',
      few: 'prieš $count dienas',
      one: 'prieš $count dieną',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Atnaujinti šią analizę?';

  @override
  String staleBody(String age) {
    return 'Ši analizė sukurta $age. Nuo to laiko kainos, naujienos ir rezultatai galėjo pasikeisti.';
  }

  @override
  String get staleKeep => 'Rodyti ankstesnę';

  @override
  String get staleRefresh => 'Sukurti naują';

  @override
  String seeAll(int count) {
    return 'Žiūrėti visas ($count)';
  }

  @override
  String get searchAnalyses => 'Ieškoti savo analizių';

  @override
  String get deleteAnalysis => 'Ištrinti';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol analizė ištrinta';
  }

  @override
  String get keyLevelAlertHint =>
      'Bakstelėkite lygį ir gausite įspėjimą, kai kaina jį pasieks.';

  @override
  String get shareAnalysisTitle => 'Bendrinti analizę';

  @override
  String get shareAsImage => 'Bendrinti kaip paveikslėlį';

  @override
  String get shareAsText => 'Bendrinti kaip tekstą';

  @override
  String get shareCardFooter => 'Sukurta su WhatStock';

  @override
  String get shareCardDisclaimer => 'DI analizė · ne investavimo rekomendacija';

  @override
  String get referralTitle => 'Pakvieskite draugų';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count papildomų analizių',
      many: '$count papildomos analizės',
      few: '$count papildomas analizes',
      one: '$count papildomą analizę',
    );
    return 'Pasidalykite savo kodu. Jūsų draugas iškart gaus $_temp0, o jūs – tiek pat po jo pirmosios analizės.';
  }

  @override
  String get referralYourCode => 'Jūsų kodas';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Pakviesta: $invited · Apdovanota: $rewarded';
  }

  @override
  String get referralHaveCode => 'Turite draugo kodą?';

  @override
  String get referralRedeem => 'Panaudoti';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Pridėta $count papildomų analizių. Sveiki atvykę!',
      many: 'Pridėta $count papildomos analizės. Sveiki atvykę!',
      few: 'Pridėtos $count papildomos analizės. Sveiki atvykę!',
      one: 'Pridėta $count papildoma analizė. Sveiki atvykę!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Tokio kodo nėra. Patikrinkite ir bandykite dar kartą.';

  @override
  String get referralErrOwn => 'Negalite panaudoti savo kodo.';

  @override
  String get referralErrAlready => 'Jau panaudojote draugo kodą.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count papildomų analizių',
      many: '$count papildomos analizės',
      few: '$count papildomas analizes',
      one: '$count papildomą analizę',
    );
    return 'Akcijas analizuoju su WhatStock: nufotografuoji akciją, o DI ją paaiškina. Su mano kodu $code gausi $_temp0.';
  }

  @override
  String get referralCopied => 'Kodas nukopijuotas';

  @override
  String get onboardTitle1 => 'Nufotografuokite akciją';

  @override
  String get onboardBody1 =>
      'Pakanka brokerio programėlės ekrano, laikraščio ar įmonės logotipo: WhatStock atpažįsta akciją ir parodo jos kainą, grafiką bei pagrindinius rodiklius.';

  @override
  String get onboardTitle2 => 'Supraskite per kelias minutes';

  @override
  String get onboardBody2 =>
      'DI analizė paaiškina, kas lemia akcijos judėjimą, kokios yra rizikos, koks jos vertinimas, ir pateikia tris scenarijus, kur gali pajudėti kaina, – su šaltiniais ir jūsų kalba.';

  @override
  String get onboardTitle3 => 'Visada būkite informuoti';

  @override
  String get onboardBody3 =>
      'Mėgstamiausi, jūsų portfelis ir kainos įspėjimai nuolat jus informuos. Jūsų analizės lieka jūsų įrenginyje – paruoštos vėl atverti.';

  @override
  String get onboardNext => 'Toliau';

  @override
  String get onboardStart => 'Pradėti';

  @override
  String get onboardSkip => 'Praleisti';

  @override
  String changesTitle(String date) {
    return 'Nuo ankstesnės analizės ($date)';
  }

  @override
  String get changesPrice => 'Kaina';

  @override
  String get changesNoMajor => 'Perspektyvos reikšmingai nepasikeitė.';

  @override
  String get changesPreviousSummary => 'Ankstesnė santrauka';

  @override
  String get telemetryTitle => 'Padėkite tobulinti WhatStock';

  @override
  String get telemetryBody =>
      'Bendrinkite anoniminę naudojimo statistiką ir strigčių ataskaitas: kurios funkcijos naudojamos ir kas nepavyko. Niekada – jūsų akcijų, analizių ar asmens duomenų. Tai bet kada galite pakeisti Nustatymuose.';

  @override
  String get telemetryAllow => 'Leisti';

  @override
  String get telemetryDecline => 'Ne, ačiū';

  @override
  String get telemetrySetting => 'Anoniminė statistika ir strigčių ataskaitos';

  @override
  String get telemetrySettingHint =>
      'Kaip dažnai naudojamos funkcijos ir klaidų ataskaitos, be asmens duomenų ar jūsų paieškų ir analizių turinio.';

  @override
  String get askButton => 'Klauskite apie šią analizę';

  @override
  String askTitle(String symbol) {
    return 'Klausimai apie $symbol';
  }

  @override
  String get askIntro =>
      'Klauskite bet ko apie analizę: ką reiškia tam tikra rizika, kas galėtų pakeisti perspektyvas, kaip apskaičiuotas tam tikras skaičius. Atsakymai pagrįsti šia analize ir nėra investavimo rekomendacija.';

  @override
  String get askHint => 'Užduokite klausimą…';

  @override
  String get askSend => 'Siųsti';

  @override
  String get askThinking => 'Galvojama…';

  @override
  String get askSuggest1 => 'Kokia didžiausia rizika?';

  @override
  String get askSuggest2 => 'Kas galėtų pakeisti perspektyvas?';

  @override
  String get askSuggest3 => 'Paaiškink paprastai';

  @override
  String get askMaxReached =>
      'Tai buvo paskutinis šios analizės klausimas. Norėdami klausti daugiau, sukurkite naują analizę.';

  @override
  String get errAskLimit =>
      'Pasiekėte šiandienos klausimų limitą. Bandykite dar kartą rytoj.';

  @override
  String get eventTomorrow => 'Rytoj';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'po $days dienų',
      many: 'po $days dienos',
      few: 'po $days dienų',
      one: 'po $days dienos',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Ketvirčio rezultatai';

  @override
  String get eventBeforeOpen => 'prieš biržos atidarymą';

  @override
  String get eventAfterClose => 'po biržos uždarymo';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS prognozė: $value';
  }

  @override
  String get eventFromAnalysis => 'Iš jūsų analizės';

  @override
  String get eventDividend => 'Numatomas dividendas';

  @override
  String get eventDividendEstimate => 'Įvertinta pagal jūsų įrašytas išmokas';

  @override
  String get eventsHint =>
      'Jūsų mėgstamiausių ir portfelio akcijų rezultatų skelbimo datos artimiausioms 90 dienų, jūsų analizėse pažymėti įvykiai su datomis ir pagal jūsų įrašytas išmokas numatomi dividendai.';

  @override
  String get eventsEmpty =>
      'Per artimiausias 90 dienų įvykių su datomis nėra. Pridėkite mėgstamiausių ar portfelio akcijų, kad čia matytumėte jų rezultatų datas; įrašytų dividendų numatoma kita išmoka rodoma čia.';

  @override
  String get compareTitle => 'Palyginti';

  @override
  String get compareAdd => 'Pridėti akciją';

  @override
  String get compareRemove => 'Pašalinti';

  @override
  String get compareTickerHint => 'Simbolis, pvz., MSFT';

  @override
  String get compareHint =>
      'Pagrindiniai rodikliai greta; geriausia kiekvienos eilutės reikšmė paryškinta. Sumos pateikiamos kiekvienos akcijos valiuta.';

  @override
  String get compareNoAnalysis => 'Analizės dar nėra';

  @override
  String get portfolioDividends => 'Metiniai dividendai';

  @override
  String portfolioDividendYield(String percent) {
    return 'Pajamingumas $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Numatomi metiniai dividendai apskaičiuojami pagal per pastaruosius 12 mėnesių išmokėtus dividendus; būsimos išmokos negarantuojamos.';

  @override
  String positionDividend(String amount) {
    return 'Dividendai: $amount per metus';
  }

  @override
  String get chartAvgCost => 'Jūsų vid.';

  @override
  String get chartAlertLevel => 'Įspėjimas';

  @override
  String get marketsToday => 'Rinkos šiandien';

  @override
  String get notesTitle => 'Mano užrašai';

  @override
  String get notesHint =>
      'Kodėl ją įsigijote, ką stebite, kas paskatintų parduoti?';

  @override
  String get notesInfo =>
      'Saugoma tik šiame įrenginyje. DI analizė atsižvelgia į jūsų užrašus.';

  @override
  String notesSaved(String date) {
    return 'Išsaugota $date';
  }

  @override
  String get peersTitle => 'Panašios įmonės';

  @override
  String get portfolioExport => 'Eksportuoti kaip CSV';

  @override
  String get portfolioImport => 'Importuoti iš CSV';

  @override
  String get portfolioImportHint =>
      'Įklijuokite po vieną pirkimą eilutėje: akcijos simbolis, kiekis, kaina, valiuta, data (MMMM-MM-DD). Stulpeliai gali būti atskirti kableliais, kabliataškiais arba tabuliacijos ženklais; antraštės eilutė neprivaloma.';

  @override
  String get portfolioImportButton => 'Importuoti';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Pridėta $count pirkimų',
      many: 'Pridėta $count pirkimo',
      few: 'Pridėti $count pirkimai',
      one: 'Pridėtas $count pirkimas',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Praleista $count eilučių',
      many: 'Praleista $count eilutės',
      few: 'Praleistos $count eilutės',
      one: 'Praleista $count eilutė',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Portfelis, mėgstamiausi, kainos įspėjimai ir užrašai sinchronizuojami visuose jūsų įrenginiuose.';

  @override
  String syncLast(String time) {
    return 'Paskutinį kartą sinchronizuota $time';
  }

  @override
  String get syncNow => 'Sinchronizuoti dabar';

  @override
  String get syncFailed =>
      'Sinchronizuoti nepavyko. Bus automatiškai bandoma dar kartą.';

  @override
  String get alertEmailTitle => 'El. laiškas, kai suveikia įspėjimas';

  @override
  String get alertEmailOn =>
      'Kas kelias minutes tikriname jūsų įspėjimus ir siunčiame el. laišką, net kai programa uždaryta.';

  @override
  String get alertEmailSignIn =>
      'Prisijunkite el. paštu Nustatymuose, kad gautumėte įspėjimus el. paštu, net kai programa uždaryta.';

  @override
  String get portfolioHistory => 'Vertės kitimas';

  @override
  String get portfolioReviewTitle => 'Portfelio DI analizė';

  @override
  String get portfolioReviewIntro =>
      'DI peržiūri visą jūsų portfelį: koncentraciją, priklausomybę nuo sektorių ir valiutų, bendras jūsų akcijų rizikas ir dividendus. Sunaudoja 1 analizę.';

  @override
  String get portfolioReviewButton => 'Analizuoti mano portfelį';

  @override
  String get portfolioReviewAgain => 'Analizuoti iš naujo';

  @override
  String get portfolioReviewWorking => 'Analizuojamas jūsų portfelis…';

  @override
  String get digestTitle => 'Savaitės suvestinė el. paštu';

  @override
  String get digestHint =>
      'Kiekvieną pirmadienį: kaip praėjusią savaitę judėjo jūsų mėgstamiausi ir portfelis bei artimiausios jų rezultatų datos.';

  @override
  String get benchmarkTitle => 'Palyginti su S&P 500';

  @override
  String get benchmarkTitleIndex => 'Palyginti su indeksu';

  @override
  String get benchmarkHintIndex =>
      'Tarsi kiekvienas pirkimas tą pačią dieną būtų investuotas į fondą, sekantį pasirinktą indeksą. Be dividendų; ankstesnė grąža nenuspėja būsimos.';

  @override
  String get benchmarkYours => 'Jūsų pirkimai';

  @override
  String benchmarkAhead(String points) {
    return '$points proc. p. geriau nei indeksas';
  }

  @override
  String benchmarkBehind(String points) {
    return '$points proc. p. atsilieka nuo indekso';
  }

  @override
  String get portfolioSell => 'Parduoti';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Parduoti $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Akcijos pardavimo kaina ($currency)';
  }

  @override
  String get portfolioSellDate => 'Pardavimo data';

  @override
  String get portfolioSellAll => 'Visas';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Turite $quantity';
  }

  @override
  String get portfolioSold => 'Parduota';

  @override
  String get portfolioRealized => 'Realizuota';

  @override
  String get portfolioClosed => 'Uždarytos pozicijos';

  @override
  String get portfolioClosedNote => 'Visos akcijos parduotos';

  @override
  String get portfolioTransactions => 'Operacijos';

  @override
  String get portfolioRealizedByYear => 'Realizuotas pelnas pagal metus';

  @override
  String get portfolioRealizedHint =>
      'Pardavimai pirmiausia priskiriami seniausiems jūsų pirkimams (FIFO) ir perskaičiuojami pagal šiandienos valiutos kursą. Mokesčių deklaracijai naudokite savo brokerio išrašą.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Po šios analizės paskelbti nauji ketvirčio rezultatai ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Nauji rezultatai';

  @override
  String get portfolioImportBrokers =>
      'Taip pat atpažįstami Revolut, Trading 212 ir Interactive Brokers eksportai, įskaitant pardavimus; dividendai ir įnašai praleidžiami.';

  @override
  String get portfolioImportFile => 'Pasirinkti failą';

  @override
  String offlineBanner(String time) {
    return 'Nėra ryšio – rodomi paskutiniai išsaugoti duomenys ($time).';
  }

  @override
  String get glossMarketCap =>
      'Kiek visa bendrovė vertinama akcijų rinkoje: akcijos kaina × akcijų skaičius.';

  @override
  String get glossSharesOutstanding =>
      'Kiek akcijų bendrovė yra išleidusi. Jei skaičius auga, kiekvienai akcijai tenka mažesnė dalis; akcijų supirkimas jį mažina.';

  @override
  String get glossPeTrailing =>
      'Kaina ÷ pastarųjų 12 mėnesių pelnas vienai akcijai: už kiek metų dabartinio pelno mokate. Mažesnis reiškia pigiau, bet sparčiai augančių bendrovių P/E paprastai didelis.';

  @override
  String get glossPeForward =>
      'Kaip P/E, tik su pelnu, kurio analitikai tikisi per ateinančius 12 mėnesių. Jei jis mažesnis už praėjusių 12 mėn. P/E, tikimasi pelno augimo.';

  @override
  String get glossPb =>
      'Kaina ÷ buhalterinė vertė (turtas atėmus skolas) vienai akcijai. Apie 1 reiškia, kad rinka bendrovę vertina tiek, kiek ji turi popieriuje.';

  @override
  String get glossPs =>
      'Rinkos vertė ÷ metinės pajamos. Naudinga bendrovėms, kurios dar uždirba mažai pelno arba jo neturi; lyginkite toje pačioje šakoje.';

  @override
  String get glossEvToFcf =>
      'Bendrovės vertė su skola (EV) ÷ pinigai, kuriuos ji per metus sukuria po investicijų. Mažesnis reiškia, kad už kainą gaunate daugiau pinigų.';

  @override
  String get glossPeg =>
      'P/E ÷ tikėtinas metinis pelno augimas (%). Apie 1 dažnai laikoma teisinga; tai P/E vertina atsižvelgiant į augimą.';

  @override
  String get glossEps =>
      'Pelnas vienai akcijai per pastaruosius 12 mėnesių. Metai iš metų augantis EPS yra vienas stipriausių sveikos bendrovės ženklų.';

  @override
  String get glossBeta =>
      'Kiek akcija linkusi judėti kartu su rinka: 1 = kaip rinka, 1,5 = maždaug 50% didesni svyravimai, mažiau nei 1 = ramesnė.';

  @override
  String get glossRevenueTtm =>
      'Visi pastarųjų 12 mėnesių pardavimai, prieš bet kokias išlaidas.';

  @override
  String get glossNetIncomeTtm =>
      'Pelnas, likęs po visų išlaidų, palūkanų ir mokesčių per pastaruosius 12 mėnesių.';

  @override
  String get glossGrossMargin =>
      'Pajamų dalis, likusi po tiesioginių produktų sąnaudų. Didelė marža dažnai rodo galią diktuoti kainas.';

  @override
  String get glossOperatingMargin =>
      'Pajamų dalis, likusi po veiklos išlaidų (atlyginimai, nuoma, rinkodara), prieš palūkanas ir mokesčius.';

  @override
  String get glossNetMargin =>
      'Pajamų dalis, kuri tampa galutiniu pelnu. 20% reiškia, kad iš kiekvienų 100 pardavimų 20 yra pelnas.';

  @override
  String get glossRoe =>
      'Nuosavo kapitalo grąža: metinis pelnas ÷ savininkų kapitalas. Rodo, kaip gerai vadovai naudoja akcininkų pinigus; daugiau nei maždaug 15% yra stipru.';

  @override
  String get glossRoa =>
      'Turto grąža: metinis pelnas ÷ visas bendrovės turtas. Lyginkite toje pačioje šakoje.';

  @override
  String get glossDebtToEquity =>
      'Skolos ÷ savininkų kapitalas. Didesnis reiškia daugiau skolintų pinigų: didesnė rizika, kai kyla palūkanų normos ar sulėtėja verslas.';

  @override
  String get glossCurrentRatio =>
      'Trumpalaikis turtas ÷ per metus mokėtinos sąskaitos. Daugiau nei 1 reiškia, kad bendrovė gali padengti artimiausias sąskaitas.';

  @override
  String get glossRevenueGrowth =>
      'Kiek pajamos išaugo, palyginti su prieš metus.';

  @override
  String get glossEpsGrowth =>
      'Kiek pelnas vienai akcijai išaugo, palyginti su prieš metus.';

  @override
  String get glossDividendYield =>
      'Metinis dividendas ÷ akcijos kaina: pinigų pajamos, kurias gautumėte kasmet, procentais nuo to, ką sumokate.';

  @override
  String get glossDividendPerShare =>
      'Dividendas, išmokėtas už vieną akciją per pastaruosius metus.';

  @override
  String get glossPayoutRatio =>
      'Pelno dalis, išmokama kaip dividendai. Viršijus 100% bendrovė išmoka daugiau, nei uždirba, ir tai retai trunka ilgai.';

  @override
  String get portfolioBeta => 'Portfelio beta';

  @override
  String get glossPortfolioBeta =>
      'Jūsų akcijų beta, pasverta pagal jų vertę: maždaug keliais procentais pajuda jūsų akcijos, kai rinka pajuda 1%. Virš 1 jos svyruoja labiau nei rinka, žemiau 1 – mažiau. Grynieji neįskaičiuojami.';

  @override
  String get portfolioTop3 => '3 didžiausios pozicijos';

  @override
  String get glossPortfolioTop3 =>
      'Kokia jūsų akcijų vertės dalis tenka trims didžiausioms jūsų pozicijoms. Kuo ji didesnė, tuo labiau blogos naujienos apie vieną bendrovę gali pakenkti visam portfeliui.';

  @override
  String get glossDividendGrowth5y =>
      'Kiek vidutiniškai per metus augo dividendas vienai akcijai per pastaruosius penkerius metus. Stabilus augimas paprastai reiškia, kad įmonė pasitiki savo pinigų srautais; sumažinimas dažnai yra įspėjamasis ženklas.';

  @override
  String get glossYieldOnCost =>
      'Per paskutinius 12 mėnesių gauti dividendai, padalyti iš sumos, kurią sumokėjote už vis dar turimas akcijas. Skirtingai nei dividendų pajamingumas, jis skaičiuojamas nuo jūsų pirkimo kainos, o ne nuo šiandienos kainos.';

  @override
  String get glossTitle => 'Ką tai reiškia?';

  @override
  String get watchNewsTitle => 'Naujienos apie jūsų akcijas';

  @override
  String get undo => 'Anuliuoti';

  @override
  String get watchSort => 'Rikiuoti';

  @override
  String get watchSortOwn => 'Mano tvarka';

  @override
  String get watchSortGainers => 'Labiausiai pakilę pirmiau';

  @override
  String get watchSortLosers => 'Labiausiai nukritę pirmiau';

  @override
  String get watchSortName => 'Pagal simbolį (A–Z)';

  @override
  String get watchHint =>
      'Vilkite rankenėlę, kad pakeistumėte tvarką, perbraukite kairėn, kad pašalintumėte. Linija rodo pastarąsias 30 dienų.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: jūsų analizė parengta.';
  }

  @override
  String alertFromCost(String price) {
    return 'Pagal jūsų vidutinę pirkimo kainą ($price):';
  }

  @override
  String get briefTitle => 'Šiandien su jūsų akcijomis';

  @override
  String get briefButton => 'Apibendrinti dieną';

  @override
  String get briefHint =>
      'Trumpa DI santrauka, kaip šiandien judėjo jūsų portfelis ir mėgstamiausios akcijos ir ką apie jas sako naujausios žinios. Analizė nenaudojama.';

  @override
  String get briefRefresh => 'Atnaujinti';

  @override
  String get sectionEarnings => 'Ketvirčio rezultatai';

  @override
  String earningsNext(String date) {
    return 'Kita ataskaita: $date';
  }

  @override
  String get earningsExpected => 'Prognozuotas EPS';

  @override
  String get earningsReported => 'Paskelbtas EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Ketvirčiai, kai EPS atitiko ar viršijo lūkesčius: $beats iš paskutinių $total',
      one: 'EPS atitiko ar viršijo lūkesčius: $beats iš 1 ketvirčio',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol rytoj skelbia ketvirčio rezultatus';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol šiandien skelbia ketvirčio rezultatus';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return '$symbol: šiandien laukiama dividendo';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Apie $amount. Kai gausite, įrašykite jį į savo portfelį.';
  }

  @override
  String get dividendRemindersTitle => 'Priminimai apie dividendus';

  @override
  String get dividendRemindersSubtitle =>
      'Pranešimas tą dieną, kai pagal jūsų įrašytų išmokų ritmą laukiama dividendo, kad galėtumėte jį įrašyti';

  @override
  String get earningsRemindersTitle => 'Priminimai apie rezultatus';

  @override
  String get earningsRemindersSubtitle =>
      'Pranešimas dieną prieš tavo mėgstamiausių ar portfelio akcijų ketvirčio rezultatų paskelbimą';

  @override
  String addAllToFavorites(int count) {
    return 'Pridėti visas į mėgstamiausius ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Importuoti iš ekrano kopijos';

  @override
  String get holdingsReading => 'Skaitomos pozicijos…';

  @override
  String get holdingsReviewTitle => 'Rastos pozicijos';

  @override
  String get holdingsReviewHint =>
      'Prieš pridedant patikrink skaičius. Kaina – tai tavo vidutinė vienos akcijos pirkimo kaina, o ne šiandienos kaina.';

  @override
  String get holdingsNoPrice => 'Vaizde nėra vidutinės pirkimo kainos';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Pridėti $count pozicijų',
      many: 'Pridėti $count pozicijos',
      few: 'Pridėti $count pozicijas',
      one: 'Pridėti $count poziciją',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Šiame vaizde akcijų pozicijų nerasta. Pabandyk savo brokerio pozicijų ar turto puslapio ekrano kopiją.';

  @override
  String get week52Range => '52 savaičių intervalas';

  @override
  String week52BelowHigh(String percent) {
    return '$percent žemiau 52 savaičių maksimumo';
  }

  @override
  String get week52AtHigh => 'Ties 52 savaičių maksimumu';

  @override
  String get alertKindTrailing => 'Nukris nuo piko';

  @override
  String get alertTrailingPercent => 'Kritimas nuo piko (%)';

  @override
  String get alertTrailingHint =>
      'Seka kainą aukštyn: įspėja, kai kaina nukrinta tiek nuo aukščiausio lygio nuo nustatymo.';

  @override
  String alertDescTrailing(String percent) {
    return '$percent kritimas nuo piko';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'pikas iki šiol: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol nukrito $percent nuo piko';
  }

  @override
  String get sectionInsiders => 'Vadovų sandoriai';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pirkimų',
      many: '$count pirkimo',
      few: '$count pirkimai',
      one: '$count pirkimas',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pardavimų',
      many: '$count pardavimo',
      few: '$count pardavimai',
      one: '$count pardavimas',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Grynai: $shares akcijų';
  }

  @override
  String get insiderBuy => 'Nupirkta';

  @override
  String get insiderSell => 'Parduota';

  @override
  String get insiderHint =>
      'Vadovų ir direktorių pirkimai bei pardavimai atvirojoje rinkoje per pastarąsias 90 dienų (SEC Form 4). Opcionų realizavimas ir akcijų suteikimas neskaičiuojami.';

  @override
  String get insiderNone =>
      'Per pastarąsias 90 dienų vadovai nepirko ir nepardavė akcijų atvirojoje rinkoje.';

  @override
  String get analystTrend => 'Kaip keitėsi nuomonės kas mėnesį';

  @override
  String get watchListAll => 'Visos';

  @override
  String get watchListNew => 'Naujas sąrašas';

  @override
  String get watchListName => 'Sąrašo pavadinimas';

  @override
  String get watchListRename => 'Pervadinti sąrašą';

  @override
  String get watchListDelete => 'Ištrinti sąrašą';

  @override
  String get watchListAddTo => 'Pridėti į sąrašą';

  @override
  String get watchListEmpty =>
      'Šiame sąraše dar nėra akcijų. Bakstelėkite sąrašo mygtuką šalia akcijos, kad ją pridėtumėte.';

  @override
  String get portfolioAskTitle => 'Klausimai apie jūsų portfelį';

  @override
  String get rangeYtd => 'Šiemet';

  @override
  String get backupTitle => 'Atsarginė kopija';

  @override
  String get backupSave => 'Išsaugoti atsarginę kopiją';

  @override
  String get backupSaveHint =>
      'Jūsų mėgstamiausi, sąrašai, portfelis, įspėjimai ir užrašai viename faile.';

  @override
  String get backupRestore => 'Atkurti iš atsarginės kopijos';

  @override
  String get backupRestoreHint =>
      'Prideda tai, kas yra faile; nieko iš dabartinių jūsų duomenų neištrinama.';

  @override
  String get backupRestored => 'Atsarginė kopija atkurta.';

  @override
  String get backupInvalid => 'Šis failas nėra WhatStock atsarginė kopija.';

  @override
  String get allocationPositions => 'Akcijos';

  @override
  String get allocationSectors => 'Sektoriai';

  @override
  String get allocationCurrencies => 'Valiutos';

  @override
  String get allocationAccounts => 'Sąskaitos';

  @override
  String get compareReturn1y => '1 metų grąža';

  @override
  String get compareFromHigh => 'Nuo 52 savaičių maksimumo';

  @override
  String get briefAutoTitle => 'Dienos santrauka kiekvieną rytą';

  @override
  String get briefAutoSubtitle =>
      '„Šiandien su jūsų akcijomis“ sukuriama automatiškai po 7:00, kol programėlė veikia; kompiuteriuose jus informuos pranešimas. Naudoja jūsų dienos klausimų limitą, o ne analizę.';

  @override
  String get targetsButton => 'Tikslinis paskirstymas';

  @override
  String get targetsTitle => 'Tikslinis paskirstymas';

  @override
  String get targetsHint =>
      'Nustatykite, kokią portfelio dalį turėtų sudaryti kiekviena akcija. Palikite lauką tuščią, jei tikslo nėra. Tada programa parodys, ką reikia pirkti ar parduoti, kad jį pasiektumėte.';

  @override
  String targetsSum(String percent) {
    return 'Iš viso: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Pirkti ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Parduoti ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Atitinka tikslą';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol viršijo prognozuotą EPS';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol nepasiekė prognozuoto EPS';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'Paskelbtas EPS $actual, prognozuotas $estimate';
  }

  @override
  String get newsExplain => 'Ką tai reiškia?';

  @override
  String get watchAlertAll => 'Įspėjimas apie didelius dienos pokyčius';

  @override
  String get watchAlertAllHint =>
      'Kainos įspėjimas kiekvienai šio sąrašo akcijai: suveiks, kai per dieną ji pajudės tiek aukštyn arba žemyn. Akcijos, kurios jau turi tokį, pasilieka savąjį.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nustatyta $count įspėjimų',
      many: 'Nustatyta $count įspėjimo',
      few: 'Nustatyti $count įspėjimai',
      one: 'Nustatytas $count įspėjimas',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Eksportuoti realizuotą pelną (CSV)';

  @override
  String get portfolioAnnualReturn => 'Metinė grąža';

  @override
  String portfolioPerYear(String percent) {
    return '$percent per metus';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Pinigais svertinė metinė grąža (XIRR): atsižvelgia į tai, kada pirkote ir pardavėte, todėl vėliau pridėti pinigai jos neiškreipia. Rodoma, kai nuo pirmojo jūsų pirkimo praeina bent metai; dividendai neįtraukti.';

  @override
  String get eventsAddToCalendar => 'Pridėti į kalendorių (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Portfelio įspėjimas';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Pranešimas, kai visas tavo portfelis per dieną pasikeičia tiek.';

  @override
  String get portfolioMoveAlertOff => 'Išjungta';

  @override
  String portfolioMoveUp(String percent) {
    return 'Tavo portfelis šiandien pakilo $percent';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Tavo portfelis šiandien nukrito $percent';
  }

  @override
  String get whatIfTitle => 'O jeigu būtumėte investavę?';

  @override
  String get whatIfAmount => 'Suma';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount investicija (laikotarpis: $period) šiandien būtų verta';
  }

  @override
  String get whatIfNote =>
      'Tik pagal akcijos kainą: dividendai, mokesčiai ir komisiniai neįtraukti. Ankstesnė grąža neprognozuoja būsimos.';

  @override
  String get watchShare => 'Bendrinti sąrašą';

  @override
  String get watchImport => 'Pridėti simbolius';

  @override
  String get watchImportHint =>
      'Įklijuokite akcijų simbolius, atskirtus kableliais, tarpais arba naujomis eilutėmis – pavyzdžiui, sąrašą, kuriuo kas nors su jumis pasidalijo.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Pridėta $count akcijų',
      many: 'Pridėta $count akcijos',
      few: 'Pridėtos $count akcijos',
      one: 'Pridėta $count akcija',
      zero: 'Naujų akcijų nėra',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Didžiausios pirmiau';

  @override
  String get positionsSortGain => 'Didžiausia bendra grąža pirmiau';

  @override
  String get positionsSortToday => 'Geriausios šiandien pirmiau';

  @override
  String get chartMyBuys => 'Jūsų pirkimai';

  @override
  String get chartMySells => 'Jūsų pardavimai';

  @override
  String get shortcutsTitle => 'Spartieji klavišai';

  @override
  String usMarketOpen(String time) {
    return 'JAV rinka atidaryta · užsidaro po $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'JAV rinka uždaryta · atsidaro po $time';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes min.';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours val. $minutes min.';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days d. $hours val.';
  }

  @override
  String get dividendGoalSet => 'Nustatyti mėnesio dividendų tikslą';

  @override
  String get dividendGoalTitle => 'Mėnesio dividendų tikslas';

  @override
  String get dividendGoalAmount => 'Dividendai per mėnesį';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Apie $amount per mėnesį esant dabartiniam pajamingumui · $percent · tikslas: $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Apie $amount per mėnesį esant dabartiniam pajamingumui · tikslas pasiektas: $goal';
  }

  @override
  String get portfolioAccount => 'Sąskaita';

  @override
  String get portfolioAccountHint => 'pvz. investicinė sąskaita (neprivaloma)';

  @override
  String get portfolioAccountAdd => 'Nurodyti sąskaitą';

  @override
  String get portfolioAccountsAll => 'Visos sąskaitos';

  @override
  String get portfolioAccountNote =>
      'Tik šios sąskaitos operacijos ir dividendai. Grynieji pinigai, tikslai ir DI analizė rodomi skiltyje „Visos sąskaitos“.';

  @override
  String get portfolioNoAccount => 'Be sąskaitos';

  @override
  String portfolioFee(String currency) {
    return 'Komisiniai ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Pridėti komisinius';

  @override
  String portfolioFeeRow(String amount) {
    return 'Komisiniai: $amount';
  }

  @override
  String get portfolioGoalSet => 'Nustatyti tikslą';

  @override
  String get portfolioGoalTitle => 'Portfelio tikslas';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · tikslas: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Tikslas pasiektas: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Pašalinti tikslą';

  @override
  String get alertEdit => 'Redaguoti įspėjimą';

  @override
  String get positionOpenLots => 'Vis dar turimi (seniausi pirmiau)';

  @override
  String get lotRemoved => 'Operacija ištrinta';

  @override
  String get alertDeleted => 'Įspėjimas ištrintas';

  @override
  String get alertsClearTriggered => 'Išvalyti suveikusius įspėjimus';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Išvalyta $count įspėjimų',
      many: 'Išvalyta $count įspėjimo',
      few: 'Išvalyti $count įspėjimai',
      one: 'Išvalytas $count įspėjimas',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Pradžios ekranas';

  @override
  String get allocationCountries => 'Šalys';

  @override
  String get newsExplainNoteResearch =>
      'DI paaiškinimas: jis patikrina faktus internete, atidaro straipsnį ir įvertina, kiek patikimas šaltinis. Tai nėra investavimo rekomendacija. Naudoja jūsų dienos klausimų limitą, o ne analizę.';

  @override
  String get sourceOfficial => 'Oficialu';

  @override
  String get sourcePressRelease => 'Pranešimas spaudai';

  @override
  String get sourceMajorNews => 'Didžioji žiniasklaida';

  @override
  String get sourceOpinion => 'Nuomonė';

  @override
  String get earningsSummaryButton => 'Kas buvo naujausioje ataskaitoje?';

  @override
  String get earningsSummaryNote =>
      'DI santrauka apie bendrovės rezultatų paskelbimą ir žiniasklaidos pranešimus, kuriuos jis randa internete. Tai nėra investavimo rekomendacija. Naudoja jūsų dienos klausimų limitą, o ne analizę.';

  @override
  String get compareLastSurprise => 'Paskutinio ketvirčio EPS vs prognozė';

  @override
  String get compareNextReport => 'Kita ataskaita';

  @override
  String get resolvingDescription => 'Nustatoma, kurią akciją turite omenyje…';

  @override
  String get instrumentTitle => 'Apie šį instrumentą';

  @override
  String get instrumentHint =>
      'Šiam simboliui nėra įmonės profilio – tai gali būti ETF, fondas arba depozitoriumo pakvitavimas. Paklauskite DI, kas tai, ką jis turi ir kiek kainuoja.';

  @override
  String get instrumentAsk => 'Kas tai?';

  @override
  String get instrumentNote =>
      'DI paaiškinimas pagal emitento fondo puslapį ir finansų svetaines, kurias jis randa internete. Tai nėra investavimo rekomendacija. Naudoja jūsų dienos klausimų limitą, o ne analizę.';

  @override
  String suggestAskAi(String query) {
    return 'Klausti DI: „$query“';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Nėra dabartinės $symbols kainos.';
  }

  @override
  String get eventsRecentResults => 'Neseniai paskelbti rezultatai';

  @override
  String get saveToNotes => 'Išsaugoti mano užrašuose';

  @override
  String get savedToNotes => 'Išsaugota jūsų užrašuose';

  @override
  String get portfolioDividendsReceived => 'Gauti dividendai';

  @override
  String get portfolioDividendsThisYear => 'Šiemet';

  @override
  String get portfolioDividendsAllTime => 'Per visą laiką';

  @override
  String get portfolioAddDividend => 'Pridėti dividendą';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Gauta suma ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Išmokėjimo data';

  @override
  String get portfolioDividendsEmpty =>
      'Dividendų dar neįrašyta. Pridėkite juos ranka arba importuokite savo brokerio eksportą – jo dividendų eilutės taip pat nuskaitomos.';

  @override
  String get portfolioSplit => 'Akcijų skaidymas';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Akcijų skaidymas: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Pirkimai ir pardavimai, datuoti iki skaidymo, pakoreguojami: akcijų skaičius padauginamas, o vienos akcijos kaina padalijama, todėl savikaina nesikeičia.';

  @override
  String get portfolioSplitRatio => 'Santykis (naujos : senos)';

  @override
  String get portfolioSplitRatioError =>
      'Įveskite santykį, pvz., 10:1, arba 1:10 atvirkštiniam skaidymui.';

  @override
  String get portfolioSplitDate => 'Skaidymo data';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Akcijų skaidymas $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Akcijų skaidymas ištrintas';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Pridėta akcijų skaidymų: $count',
      one: 'Pridėtas 1 akcijų skaidymas',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Pridėta $count dividendų',
      many: 'Pridėta $count dividendo',
      few: 'Pridėti $count dividendai',
      one: 'Pridėtas $count dividendas',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Eksportuoti dividendus (CSV)';

  @override
  String get portfolioDividendDeleted => 'Dividendas ištrintas';

  @override
  String get portfolioDividendsHint =>
      'Sumos tokios, kokios atėjo į jūsų sąskaitą, išmokėjimo valiuta; bendros sumos konvertuojamos šiandienos kursu. Mokesčių deklaracijai naudokite savo brokerio išrašą.';

  @override
  String get awayTitle => 'Kol jūsų nebuvo';

  @override
  String awaySince(String when) {
    return 'Nuo $when';
  }

  @override
  String get awayQuiet => 'Niekas labai nepasikeitė.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Suveikė $count įspėjimų',
      many: 'Suveikė $count įspėjimo',
      few: 'Suveikė $count įspėjimai',
      one: 'Suveikė $count įspėjimas',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Paskelbė rezultatus: $symbols';
  }

  @override
  String get moveWhyButton => 'Kodėl ji šiandien juda?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent šiandien';
  }

  @override
  String get moveWhyNote =>
      'DI paaiškinimas pagal šiandienos naujienas internete; tikroji priežastis gali būti nežinoma arba kitokia. Tai ne investavimo rekomendacija. Naudoja jūsų dienos klausimų limitą, ne analizę.';

  @override
  String get sectionTechnical => 'Techninis vaizdas';

  @override
  String get labelSma50 => '50 dienų vidurkis';

  @override
  String get labelSma200 => '200 dienų vidurkis';

  @override
  String get labelRsi => 'RSI (14 dienų)';

  @override
  String get labelVolatility30 => 'Kintamumas (30 dienų)';

  @override
  String techAbove(String percent) {
    return '$percent aukščiau';
  }

  @override
  String techBelow(String percent) {
    return '$percent žemiau';
  }

  @override
  String get techOverbought => 'perpirkta';

  @override
  String get techOversold => 'perparduota';

  @override
  String get techNeutral => 'neutralu';

  @override
  String get techGoldenCross =>
      '50 dienų vidurkis yra aukščiau 200 dienų vidurkio – pagal klasikinį aiškinimą, kylanti tendencija.';

  @override
  String get techDeathCross =>
      '50 dienų vidurkis yra žemiau 200 dienų vidurkio – pagal klasikinį aiškinimą, krintanti tendencija.';

  @override
  String get glossSma50 =>
      'Paskutinių 50 prekybos dienų vidutinė uždarymo kaina. Kaina virš jo dažnai laikoma trumpalaikio stiprumo, žemiau – silpnumo ženklu.';

  @override
  String get glossSma200 =>
      'Paskutinių 200 prekybos dienų vidutinė uždarymo kaina – klasikinė ilgalaikės tendencijos linija. Daug investuotojų kainą virš jo laiko ilgalaike kylančia tendencija.';

  @override
  String get glossRsi =>
      'Santykinio stiprumo indeksas: lygina pastarojo meto kilimus su pastarojo meto kritimais skalėje 0–100. Virš 70 akcija dažnai vadinama perpirkta (greitai pakilo), žemiau 30 – perparduota, tačiau stipri tendencija ten gali išlikti ilgai.';

  @override
  String get glossVolatility =>
      'Kiek kaina svyruoja diena iš dienos, perskaičiuota metams: 20 % reiškia, kad įprastais metais kaina juda maždaug ±20 % ribose. Didesnis kintamumas reiškia didesnius judesius abiem kryptimis.';

  @override
  String get techNote =>
      'Apskaičiuota pagal dienos uždarymo kainas. Techniniai signalai aprašo praeitį, ne ateitį.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$above iš $count pozicijų virš savo 200 dienų vidurkio';
  }

  @override
  String get watchSignalsTitle => 'Signalai';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · perparduota';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · perpirkta';
  }

  @override
  String get signalCrossedAbove => 'kirto 200 dienų vidurkį aukštyn';

  @override
  String get signalCrossedBelow => 'kirto 200 dienų vidurkį žemyn';

  @override
  String get signalAlertsTitle => 'Pranešimai apie techninius signalus';

  @override
  String get signalAlertsSubtitle =>
      'Kartą per dieną, kai tavo sekama akcija tampa perparduota ar perpirkta (RSI) arba jos kaina kerta 200 dienų vidurkį.';

  @override
  String get signalAlertsNotification => 'Techniniai signalai';

  @override
  String get glossaryPageTitle => 'Žodynėlis';

  @override
  String get glossaryPageSubtitle =>
      'Paprasti kiekvieno programėlės rodiklio paaiškinimai, nuo P/E iki RSI';

  @override
  String get glossarySearchHint => 'Ieškoti žodynėlyje';

  @override
  String get portfolioCash => 'Grynieji';

  @override
  String get portfolioCashTitle => 'Grynųjų likutis';

  @override
  String get portfolioCashHint =>
      'Neinvestuoti pinigai pas jūsų brokerį, pagal valiutas. Įskaitomi į bendrą vertę ir paskirstymą; ne į grąžą.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Suma ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Nustatyti grynųjų likutį';

  @override
  String get portfolioDividendsByMonth => 'Pagal mėnesius';

  @override
  String get dividendsLegendReceived => 'Gauti';

  @override
  String get dividendsLegendExpected => 'Numatomi';

  @override
  String get portfolioDividendsExpected => 'Kiti numatomi';

  @override
  String get portfolioDividendsExpectedNote =>
      'Įvertinta pagal jūsų įrašytų išmokų datas ir sumas; bendrovės gali jas pakeisti arba praleisti.';

  @override
  String portfolioDividendAround(String date) {
    return 'apie $date';
  }
}
