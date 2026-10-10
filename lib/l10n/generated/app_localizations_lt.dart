// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lithuanian (`lt`).
class AppLocalizationsLt extends AppLocalizations {
  AppLocalizationsLt([String locale = 'lt']) : super(locale);

  @override
  String get appTitle => 'StockLens';

  @override
  String get homeTagline => 'Nufotografuokite akciją ir sužinokite apie ją viską.';

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
  String get errRecognitionUnreachable => 'Nepavyko pasiekti atpažinimo paslaugos. Patikrinkite interneto ryšį.';

  @override
  String errRecognitionHttp(String status) {
    return 'Atpažinimo paslauga grąžino klaidą (HTTP $status).';
  }

  @override
  String get errRecognitionRefused => 'Atpažinimo paslauga negalėjo apdoroti šio vaizdo.';

  @override
  String get errRecognitionTruncated => 'Atpažinimo paslaugos atsakymas buvo nutrauktas. Bandykite dar kartą.';

  @override
  String get errRecognitionBadResponse => 'Netikėtas atpažinimo paslaugos atsakymas.';

  @override
  String get errRecognitionEmpty => 'Atpažinimo paslauga grąžino tuščią atsakymą.';

  @override
  String get errMissingFinnhubKey => 'Rinkos duomenys nesukonfigūruoti (nėra FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable => 'Nepavyko pasiekti rinkos duomenų paslaugos. Patikrinkite interneto ryšį.';

  @override
  String get errMarketRateLimited => 'Per daug užklausų rinkos duomenų paslaugai. Palaukite minutę.';

  @override
  String errMarketHttp(String status) {
    return 'Rinkos duomenų paslauga grąžino klaidą (HTTP $status).';
  }

  @override
  String get errMarketBadResponse => 'Netikėtas rinkos duomenų paslaugos atsakymas.';

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
    return 'Paspauskite $shortcut bet kur, kad iškviestumėte StockLens.';
  }

  @override
  String get trayOpen => 'Atverti StockLens';

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
  String get aiGenerating => 'Rengiama analizė… tai gali užtrukti minutę ar dvi.';

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
  String get errAiNotConfigured => 'DI analizė nesukonfigūruota (nėra ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable => 'Nepavyko pasiekti DI paslaugos. Patikrinkite interneto ryšį.';

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
  String get chartUnavailable => 'Kainų istorija dabartiniame duomenų šaltinyje neprieinama.';

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
  String get statementsUnavailable => 'Šios akcijos pateiktos finansinės ataskaitos neprieinamos.';

  @override
  String get launchAtLogin => 'Paleisti prisijungus';

  @override
  String get hotkeyLabel => 'Visuotinis spartusis klavišas';

  @override
  String get hotkeyRecordHint => 'Spustelėkite čia ir paspauskite naują klavišų kombinaciją';

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
  String get noFavorites => 'Mėgstamiausių dar nėra. Bakstelėkite akcijos žvaigždutę, kad ją pridėtumėte.';

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
  String get updateDownloaded => 'Naujinimas paruoštas. Paleiskite programą iš naujo, kad jį įdiegtumėte.';

  @override
  String get updateNow => 'Naujinti';

  @override
  String get restartNow => 'Paleisti iš naujo';

  @override
  String get updatesViaStore => 'Naujinimai gaunami automatiškai per programėlių parduotuvę.';

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
  String get extraPacksHint => 'Papildomos analizės niekada nenustoja galioti ir naudojamos išnaudojus mėnesio limitą.';

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
  String get demoPurchaseNote => 'Demonstracinis atsiskaitymas: šioje platformoje pirkiniai yra imituojami.';

  @override
  String get mostPopular => 'Populiariausias';

  @override
  String get bestValue => 'Geriausias pasirinkimas';

  @override
  String get planFeaturesCommon =>
      'Nuotraukų atpažinimas, tikralaikiai duomenys, grafikai, mėgstamiausi ir visos 44 kalbos įtrauktos į kiekvieną planą. Limitas taikomas DI analizėms.';

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
  String get aiDepthDeepDesc => 'Daugiau paieškų internete, palyginimas su konkurentais ir išsamesnė analizė.';

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
  String get aiReaderBeginnerDesc => 'Paprasta kalba; kiekvienas techninis terminas paaiškinamas.';

  @override
  String get aiReaderExperiencedDesc => 'Glaustesnis tekstas su įprasta finansų terminija.';

  @override
  String get aiCounterArgument => 'Stipriausias kontrargumentas';

  @override
  String get aiCounterArgumentDesc => 'Santrauka visada baigiama stipriausiu argumentu prieš jos pačios išvadą.';

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
}
