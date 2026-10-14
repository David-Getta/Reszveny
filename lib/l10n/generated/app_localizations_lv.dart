// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Latvian (`lv`).
class AppLocalizationsLv extends AppLocalizations {
  AppLocalizationsLv([String locale = 'lv']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'Nofotografējiet akciju un uzziniet par to visu.';

  @override
  String get homeHint =>
      'Akciju sertifikāts, brokera lietotnes ekrāns, avīze vai uzņēmuma logotips – jebkas, pēc kā var noteikt akciju.';

  @override
  String get takePhoto => 'Uzņemt foto';

  @override
  String get chooseFromGallery => 'Izvēlēties no galerijas';

  @override
  String get chooseImage => 'Izvēlēties attēlu';

  @override
  String get enterTickerManually => 'Ievadīt simbolu manuāli';

  @override
  String get tickerInputLabel => 'Akcijas simbols';

  @override
  String get tickerInputHint => 'piem., AAPL';

  @override
  String get lookUp => 'Meklēt';

  @override
  String demoModeBanner(String symbols) {
    return 'Demonstrācijas režīms – tirgus datu atslēga nav iestatīta. Parauga dati pieejami šīm akcijām: $symbols.';
  }

  @override
  String get recognizing => 'Analizē attēlu…';

  @override
  String get loadingData => 'Ielādē datus…';

  @override
  String get noCandidatesTitle => 'Akcija netika atpazīta';

  @override
  String get noCandidatesBody =>
      'Šajā attēlā neizdevās noteikt akciju. Mēģiniet ar asāku fotoattēlu vai ievadiet simbolu manuāli.';

  @override
  String get whatWeSaw => 'Ko mēs redzējām';

  @override
  String get chooseCandidateTitle => 'Kuru akciju jūs domājāt?';

  @override
  String confidencePercent(int percent) {
    return '$percent% ticamība';
  }

  @override
  String get settings => 'Iestatījumi';

  @override
  String get language => 'Valoda';

  @override
  String get systemLanguage => 'Sistēmas noklusējums';

  @override
  String get about => 'Par lietotni';

  @override
  String get disclaimer =>
      'Šī lietotne sniedz tikai informāciju un nav ieguldījumu konsultācija. Dati var būt novēloti vai neprecīzi.';

  @override
  String dataSource(String source) {
    return 'Datu avots: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Atpazīšana: $source';
  }

  @override
  String get retry => 'Mēģināt vēlreiz';

  @override
  String get cancel => 'Atcelt';

  @override
  String get ok => 'Labi';

  @override
  String get close => 'Aizvērt';

  @override
  String get errorGeneric => 'Radās kļūda.';

  @override
  String get errorSectionUnavailable => 'Šo sadaļu neizdevās ielādēt.';

  @override
  String get notAvailable => 'n/d';

  @override
  String get sectionIdentity => 'Identifikācija';

  @override
  String get sectionPrice => 'Cena';

  @override
  String get sectionValuation => 'Novērtējums';

  @override
  String get sectionFinancials => 'Finanšu dati';

  @override
  String get sectionDividend => 'Dividendes';

  @override
  String get sectionProfile => 'Uzņēmuma profils';

  @override
  String get sectionAnalysts => 'Analītiķu vērtējumi';

  @override
  String get sectionNews => 'Ziņas';

  @override
  String get sectionRecognition => 'Atpazīšanas informācija';

  @override
  String get labelSymbol => 'Simbols';

  @override
  String get labelExchange => 'Birža';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Valūta';

  @override
  String get labelCountry => 'Valsts';

  @override
  String get labelIndustry => 'Nozare';

  @override
  String get labelSector => 'Sektors';

  @override
  String get labelWebsite => 'Tīmekļa vietne';

  @override
  String get labelIpoDate => 'IPO datums';

  @override
  String get labelMarketCap => 'Tirgus kapitalizācija';

  @override
  String get labelSharesOutstanding => 'Akcijas apgrozībā';

  @override
  String get labelEmployees => 'Darbinieki';

  @override
  String get labelCeo => 'Izpilddirektors';

  @override
  String get labelHeadquarters => 'Galvenā mītne';

  @override
  String get labelDescription => 'Apraksts';

  @override
  String get labelLastPrice => 'Pēdējā cena';

  @override
  String get labelChange => 'Izmaiņas';

  @override
  String get labelOpen => 'Atvēršanas cena';

  @override
  String get labelDayHigh => 'Dienas maksimums';

  @override
  String get labelDayLow => 'Dienas minimums';

  @override
  String get labelPreviousClose => 'Iepriekšējā slēgšanas cena';

  @override
  String get labelWeek52High => '52 nedēļu maksimums';

  @override
  String get labelWeek52Low => '52 nedēļu minimums';

  @override
  String get labelAverageVolume10d => 'Vid. apjoms (10 dienas)';

  @override
  String updatedAt(String time) {
    return 'Atjaunināts $time';
  }

  @override
  String get labelPeTrailing => 'P/E (vēsturiskais)';

  @override
  String get labelPeForward => 'P/E (prognozētais)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / brīvā naudas plūsma';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Ieņēmumi (TTM)';

  @override
  String get labelNetIncomeTtm => 'Tīrā peļņa (TTM)';

  @override
  String get labelGrossMargin => 'Bruto peļņas marža';

  @override
  String get labelOperatingMargin => 'Pamatdarbības peļņas marža';

  @override
  String get labelNetMargin => 'Tīrās peļņas marža';

  @override
  String get labelRoe => 'Pašu kapitāla atdeve';

  @override
  String get labelRoa => 'Aktīvu atdeve';

  @override
  String get labelDebtToEquity => 'Parāds / pašu kapitāls';

  @override
  String get labelCurrentRatio => 'Kopējās likviditātes koeficients';

  @override
  String get labelRevenueGrowth => 'Ieņēmumu pieaugums (g/g)';

  @override
  String get labelEpsGrowth => 'EPS pieaugums (g/g)';

  @override
  String get labelDividendYield => 'Dividenžu ienesīgums';

  @override
  String get labelDividendPerShare => 'Dividende uz akciju';

  @override
  String get labelPayoutRatio => 'Dividenžu izmaksas koeficients';

  @override
  String get labelConsensus => 'Konsenss';

  @override
  String get ratingStrongBuy => 'Noteikti pirkt';

  @override
  String get ratingBuy => 'Pirkt';

  @override
  String get ratingHold => 'Turēt';

  @override
  String get ratingSell => 'Pārdot';

  @override
  String get ratingStrongSell => 'Noteikti pārdot';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analītiķi',
      one: '$count analītiķis',
      zero: '$count analītiķi',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Periods: $period';
  }

  @override
  String get noNews => 'Nav jaunāko ziņu.';

  @override
  String get openArticle => 'Atvērt rakstu';

  @override
  String get openLinkFailed => 'Neizdevās atvērt saiti.';

  @override
  String get recognitionSummary => 'Kopsavilkums';

  @override
  String get recognitionEvidence => 'Kāpēc mēs tā domājam';

  @override
  String get recognitionRawText => 'No attēla nolasītais teksts';

  @override
  String get errMissingAnthropicKey =>
      'Attēlu atpazīšana nav konfigurēta (nav ANTHROPIC_API_KEY). Ievadiet simbolu manuāli.';

  @override
  String get errRecognitionUnreachable =>
      'Neizdevās sazināties ar atpazīšanas pakalpojumu. Pārbaudiet interneta savienojumu.';

  @override
  String errRecognitionHttp(String status) {
    return 'Atpazīšanas pakalpojums atgrieza kļūdu (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Atpazīšanas pakalpojums nevarēja apstrādāt šo attēlu.';

  @override
  String get errRecognitionTruncated =>
      'Atpazīšanas atbilde tika pārtraukta. Lūdzu, mēģiniet vēlreiz.';

  @override
  String get errRecognitionBadResponse =>
      'Negaidīta atbilde no atpazīšanas pakalpojuma.';

  @override
  String get errRecognitionEmpty =>
      'Atpazīšanas pakalpojums atgrieza tukšu atbildi.';

  @override
  String get errMissingFinnhubKey =>
      'Tirgus dati nav konfigurēti (nav FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Neizdevās sazināties ar tirgus datu pakalpojumu. Pārbaudiet interneta savienojumu.';

  @override
  String get errMarketRateLimited =>
      'Pārāk daudz pieprasījumu tirgus datu pakalpojumam. Lūdzu, uzgaidiet minūti.';

  @override
  String errMarketHttp(String status) {
    return 'Tirgus datu pakalpojums atgrieza kļūdu (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Negaidīta atbilde no tirgus datu pakalpojuma.';

  @override
  String errNoQuote(String symbol) {
    return 'Akcijai $symbol netika atrasti cenu dati.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Akcijai $symbol netika atrasts uzņēmuma profils.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Demonstrācijas režīmā pieejamas tikai šīs akcijas: $symbols. Pievienojiet FINNHUB_API_KEY, lai iegūtu reāllaika datus.';
  }

  @override
  String errUnknown(String detail) {
    return 'Radās kļūda: $detail';
  }

  @override
  String get newSearch => 'Jauna meklēšana';

  @override
  String get recentSearches => 'Nesenie';

  @override
  String get noRecentSearches => 'Vēl nav nesenu meklējumu.';

  @override
  String get clearRecent => 'Notīrīt nesenos';

  @override
  String get greeting => 'Kuru akciju apskatīsim?';

  @override
  String get searchHint => 'Simbols vai uzņēmuma nosaukums';

  @override
  String get attachImage => 'Pievienot attēlu';

  @override
  String get searchResultsTitle => 'Meklēšanas rezultāti';

  @override
  String errNoResults(String query) {
    return 'Vaicājumam „$query” netika atrasta neviena akcija.';
  }

  @override
  String get quickBarHint => 'Ierakstiet simbolu vai uzņēmuma nosaukumu…';

  @override
  String get openFullWindow => 'Atvērt logu';

  @override
  String hotkeyHint(String shortcut) {
    return 'Nospiediet $shortcut jebkurā vietā, lai atvērtu WhatStock.';
  }

  @override
  String get trayOpen => 'Atvērt WhatStock';

  @override
  String get trayQuickSearch => 'Ātrā meklēšana';

  @override
  String get trayQuit => 'Iziet';

  @override
  String get appearance => 'Izskats';

  @override
  String get themeSystem => 'Sistēmas';

  @override
  String get themeDark => 'Tumšs';

  @override
  String get themeLight => 'Gaišs';

  @override
  String get back => 'Atpakaļ';

  @override
  String get aiSectionTitle => 'AI analīze';

  @override
  String get aiIntro =>
      'Detalizēts mākslīgā intelekta sagatavots pārskats: jaunāko ziņu kopsavilkums, uzņēmējdarbība, stiprās puses, riski un slēptie faktori, novērtējums, cenas perspektīva ar scenārijiem no psiholoģiskā, socioloģiskā, tehniskā un makroekonomiskā skatpunkta, kā arī tas, kam sekot līdzi.';

  @override
  String get aiGenerate => 'Ģenerēt analīzi';

  @override
  String get aiRegenerate => 'Ģenerēt vēlreiz';

  @override
  String get aiGenerating =>
      'Sagatavojam analīzi… tas var aizņemt minūti vai divas.';

  @override
  String get aiSources => 'Avoti';

  @override
  String aiGeneratedAt(String time) {
    return 'Ģenerēts $time';
  }

  @override
  String get aiDisclaimer =>
      'Mākslīgā intelekta ģenerēta analīze, kuras pamatā ir publiski dati un jaunākās ziņas. Tajā var būt kļūdas vai novecojusi informācija, un tā nav ieguldījumu konsultācija.';

  @override
  String get errAiNotConfigured =>
      'AI analīze nav konfigurēta (nav ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Neizdevās sazināties ar AI pakalpojumu. Pārbaudiet interneta savienojumu.';

  @override
  String errAiHttp(String status) {
    return 'AI pakalpojums atgrieza kļūdu (HTTP $status).';
  }

  @override
  String get errAiRefused => 'AI pakalpojums atteicās analizēt šo akciju.';

  @override
  String get errAiBadResponse => 'Negaidīta atbilde no AI pakalpojuma.';

  @override
  String get sectionChart => 'Cenu grafiks';

  @override
  String get rangeOneWeek => '1N';

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
      'Pašreizējais datu avots nenodrošina cenu vēsturi.';

  @override
  String get sectionStatements => 'Finanšu pārskati (gada)';

  @override
  String get labelFiscalYear => 'Finanšu gads';

  @override
  String get labelRevenue => 'Ieņēmumi';

  @override
  String get labelNetIncome => 'Tīrā peļņa';

  @override
  String get labelTotalAssets => 'Kopējie aktīvi';

  @override
  String get labelTotalLiabilities => 'Kopējās saistības';

  @override
  String get labelEquity => 'Pašu kapitāls';

  @override
  String get labelOperatingCashFlow => 'Pamatdarbības naudas plūsma';

  @override
  String get statementsUnavailable =>
      'Šai akcijai publicētie finanšu pārskati nav pieejami.';

  @override
  String get launchAtLogin => 'Palaist pēc pieteikšanās';

  @override
  String get hotkeyLabel => 'Globālais īsinājumtaustiņš';

  @override
  String get hotkeyRecordHint =>
      'Noklikšķiniet šeit un pēc tam nospiediet jauno taustiņu kombināciju';

  @override
  String get hotkeyReset => 'Atiestatīt noklusējumu';

  @override
  String get pasteImage => 'Ielīmēt attēlu no starpliktuves';

  @override
  String get errClipboardNoImage => 'Starpliktuvē nav attēla.';

  @override
  String get favorites => 'Izlase';

  @override
  String get addToFavorites => 'Pievienot izlasei';

  @override
  String get removeFromFavorites => 'Noņemt no izlases';

  @override
  String get noFavorites =>
      'Izlasē vēl nekā nav. Pieskarieties zvaigznītei pie akcijas, lai to pievienotu.';

  @override
  String get displayCurrency => 'Attēlošanas valūta';

  @override
  String get displayCurrencyNone => 'Tikai akcijas valūta';

  @override
  String labelConverted(String currency) {
    return '≈ valūtā $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Kurss: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Atjauninājumi';

  @override
  String currentVersion(String version) {
    return 'Versija $version';
  }

  @override
  String get autoUpdate => 'Automātiski instalēt atjauninājumus';

  @override
  String get checkForUpdates => 'Pārbaudīt atjauninājumus';

  @override
  String get updateChecking => 'Pārbauda atjauninājumus…';

  @override
  String get updateUpToDate => 'Jums ir jaunākā versija.';

  @override
  String updateAvailable(String version) {
    return 'Ir pieejama versija $version.';
  }

  @override
  String get updateDownloading => 'Atjauninājums tiek lejupielādēts fonā…';

  @override
  String get updateDownloaded =>
      'Atjauninājums ir gatavs. Restartējiet, lai to instalētu.';

  @override
  String get updateNow => 'Atjaunināt';

  @override
  String get restartNow => 'Restartēt';

  @override
  String get updatesViaStore =>
      'Atjauninājumi tiek saņemti automātiski no lietotņu veikala.';

  @override
  String get updateCheckFailed => 'Neizdevās pārbaudīt atjauninājumus.';

  @override
  String get subscription => 'Abonements';

  @override
  String get planTrial => 'Izmēģinājums';

  @override
  String get planNormal => 'Standarta';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Nav aktīva plāna';

  @override
  String planAnalysesPerMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analīzes mēnesī',
      one: '$count analīze mēnesī',
      zero: '$count analīzes mēnesī',
    );
    return '$_temp0';
  }

  @override
  String planTrialDescription(int days, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$days dienu bezmaksas izmēģinājums ar $count analīzēm',
      one: '$days dienu bezmaksas izmēģinājums ar $count analīzi',
      zero: '$days dienu bezmaksas izmēģinājums ar $count analīzēm',
    );
    return '$_temp0';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Izmēģinājumam atlikušas $days dienas',
      one: 'Izmēģinājumam atlikusi $days diena',
      zero: 'Izmēģinājumam atlikušas $days dienas',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Jūsu bezmaksas izmēģinājums ir beidzies. Izvēlieties plānu, lai turpinātu analizēt.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Atlikušās analīzes šajā periodā: $remaining no $total';
  }

  @override
  String extraCredits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count papildu analīzes',
      one: '$count papildu analīze',
      zero: '$count papildu analīzes',
    );
    return '$_temp0';
  }

  @override
  String renewsOn(String date) {
    return 'Atjaunošana: $date';
  }

  @override
  String get choosePlan => 'Izvēlieties plānu';

  @override
  String get currentPlan => 'Pašreizējais plāns';

  @override
  String get subscribe => 'Abonēt';

  @override
  String get perMonth => '/ mēnesī';

  @override
  String get extraPacksTitle => 'Vajag vairāk? Iegādājieties papildu analīzes';

  @override
  String get extraPacksHint =>
      'Papildu analīzēm nav derīguma termiņa, un tās tiek izmantotas pēc mēneša limita izsmelšanas.';

  @override
  String get buy => 'Pirkt';

  @override
  String get restorePurchases => 'Atjaunot pirkumus';

  @override
  String get manageSubscription => 'Pārvaldīt abonementu';

  @override
  String get purchaseSuccess => 'Paldies! Jūsu pirkums ir aktīvs.';

  @override
  String get purchasePending => 'Pirkums tiek apstrādāts…';

  @override
  String get purchaseFailed => 'Pirkumu neizdevās pabeigt.';

  @override
  String get purchaseCanceled => 'Pirkums atcelts.';

  @override
  String get billingUnavailable =>
      'Pirkumi šajā platformā vēl nav pieejami. Abonējiet tālrunī vai Mac datorā; jūsu plāns darbosies visās ierīcēs.';

  @override
  String get errQuotaExceeded =>
      'Šajā periodā jums vairs nav atlikušu analīžu. Jauniniet plānu vai iegādājieties papildu analīzes.';

  @override
  String get errTrialExpired =>
      'Jūsu bezmaksas izmēģinājums ir beidzies. Lai turpinātu, izvēlieties plānu.';

  @override
  String get errNoPlan => 'AI analīzei nepieciešams aktīvs plāns.';

  @override
  String get viewPlans => 'Skatīt plānus';

  @override
  String get usageTitle => 'Lietojums';

  @override
  String get demoPurchaseNote =>
      'Demonstrācijas norēķini: pirkumi šajā platformā tiek simulēti.';

  @override
  String get mostPopular => 'Populārākais';

  @override
  String get bestValue => 'Izdevīgākais';

  @override
  String get planFeaturesCommon =>
      'Foto atpazīšana, reāllaika dati, grafiki, izlase un visas 120 valodas ir iekļautas katrā plānā. Limits attiecas uz AI analīzēm.';

  @override
  String get searchLanguages => 'Meklēt valodas…';

  @override
  String get noLanguageMatch => 'Neviena valoda neatbilst.';

  @override
  String get aiSettings => 'AI analīze';

  @override
  String get aiLength => 'Garums';

  @override
  String get aiDepthBrief => 'Īsa';

  @override
  String get aiDepthStandard => 'Standarta';

  @override
  String get aiDepthDeep => 'Padziļināta';

  @override
  String get aiDepthBriefDesc => 'Galvenais – ātri.';

  @override
  String get aiDepthStandardDesc => 'Pilns pārskats ar visām sadaļām.';

  @override
  String get aiDepthDeepDesc =>
      'Vairāk meklējumu tīmeklī, salīdzinājums ar konkurentiem un lielāka detalizācija.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Apmēram $min–$max vārdi';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'izmanto $count analīzes',
      one: 'izmanto $count analīzi',
      zero: 'izmanto $count analīzes',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Lasītāja līmenis';

  @override
  String get aiReaderBeginner => 'Iesācējs';

  @override
  String get aiReaderExperienced => 'Pieredzējis';

  @override
  String get aiReaderBeginnerDesc =>
      'Vienkārša valoda; katrs termins tiek paskaidrots.';

  @override
  String get aiReaderExperiencedDesc =>
      'Koncentrētāks teksts ar standarta finanšu terminoloģiju.';

  @override
  String get aiCounterArgument => 'Spēcīgākais pretarguments';

  @override
  String get aiCounterArgumentDesc =>
      'Kopsavilkums vienmēr beidzas ar spēcīgāko argumentu pret paša secinājumu.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ar jūsu plānu – līdz $count meklējumiem tīmeklī katrai analīzei',
      one: 'Ar jūsu plānu – līdz $count meklējumam tīmeklī katrai analīzei',
      zero: 'Ar jūsu plānu – līdz $count meklējumiem tīmeklī katrai analīzei',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Standarta garums pēc plāna: Standarta $normal, Pro $pro, Max $max, Ultra $ultra. „Īsa” izmanto par 2 mazāk, „Padziļināta” – par 2 vairāk.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'līdz $count meklējumiem tīmeklī',
      one: 'līdz $count meklējumam tīmeklī',
      zero: 'līdz $count meklējumiem tīmeklī',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count meklējumi tīmeklī katrai analīzei',
      one: '$count meklējums tīmeklī katrai analīzei',
      zero: '$count meklējumi tīmeklī katrai analīzei',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Šim garumam nepieciešamas analīzes: $needed, bet atlikušas tikai: $left. Iestatījumos izvēlieties īsāku garumu vai iegūstiet vairāk analīžu.';
  }

  @override
  String get outlookMarketMood => 'Tirgus noskaņojums';

  @override
  String get moodVeryPessimistic => 'Ļoti pesimistisks';

  @override
  String get moodPessimistic => 'Pesimistisks';

  @override
  String get moodNeutral => 'Neitrāls';

  @override
  String get moodOptimistic => 'Optimistisks';

  @override
  String get moodVeryOptimistic => 'Ļoti optimistisks';

  @override
  String get scenarioBull => 'Optimistiskais scenārijs';

  @override
  String get scenarioBase => 'Bāzes scenārijs';

  @override
  String get scenarioBear => 'Pesimistiskais scenārijs';

  @override
  String outlookCurrentPrice(String price) {
    return 'Pašreizējā cena: $price';
  }

  @override
  String get outlookKeyLevels => 'Galvenie līmeņi';

  @override
  String get keyLevelSupport => 'Atbalsts';

  @override
  String get keyLevelResistance => 'Pretestība';

  @override
  String get keyLevelAnchor => 'Enkurs';

  @override
  String get upcomingEvents => 'Gaidāmie notikumi';

  @override
  String get outlookChartNote =>
      'Orientējoši diapazoni; varbūtības ir aptuveni vērtējumi, nevis prognozes.';

  @override
  String get accountTitle => 'Konts';

  @override
  String get signIn => 'Pierakstīties';

  @override
  String get signOut => 'Izrakstīties';

  @override
  String get notSignedIn => 'Pierakstīšanās nav veikta';

  @override
  String get accountBenefit =>
      'Pierakstieties, lai abonements darbotos visās jūsu ierīcēs.';

  @override
  String get accountSyncedNote =>
      'Jūsu abonements un atlikušās analīzes ir vienādi visās ierīcēs.';

  @override
  String get signInTitle => 'Pierakstīties pakalpojumā WhatStock';

  @override
  String get emailLabel => 'E-pasta adrese';

  @override
  String get continueWithEmail => 'Turpināt ar e-pastu';

  @override
  String codeSentTo(String email) {
    return 'Mēs nosūtījām 6 ciparu kodu uz $email. Tas ir derīgs 10 minūtes.';
  }

  @override
  String get codeLabel => 'Pierakstīšanās kods';

  @override
  String get resendCode => 'Sūtīt jaunu kodu';

  @override
  String get useDifferentEmail => 'Izmantot citu e-pastu';

  @override
  String get errInvalidCode =>
      'Kods ir nepareizs, vai tam ir beidzies derīguma termiņš.';

  @override
  String get errInvalidEmail => 'Lūdzu, ievadiet derīgu e-pasta adresi.';

  @override
  String get errSignInFailed =>
      'Pierakstīšanās neizdevās. Pārbaudiet savienojumu un mēģiniet vēlreiz.';

  @override
  String get checkoutWaiting =>
      'Pabeidziet maksājumu pārlūkprogrammā. Kad tas būs izdarīts, lietotne atjaunināsies automātiski.';

  @override
  String get paymentViaStripe =>
      'Drošs maksājums pārlūkprogrammā, izmantojot Stripe. Atcelt var jebkurā laikā.';

  @override
  String get paymentViaStore =>
      'Maksa tiek iekasēta no jūsu App Store vai Google Play konta. Atcelt var jebkurā laikā veikala iestatījumos.';

  @override
  String get keySpace => 'Atstarpe';

  @override
  String get doubleOptionTitle => 'Divreiz nospiest Option';

  @override
  String get doubleOptionSubtitle =>
      'WhatStock var atvērt arī, divreiz ātri nospiežot taustiņu Option.';

  @override
  String get doubleOptionPermission =>
      'Lai tas darbotos arī citās lietotnēs, atļaujiet WhatStock sadaļā Sistēmas iestatījumi → Privātums un drošība → Ievades pārraudzība un pēc tam atkārtoti atveriet lietotni.';

  @override
  String get openSystemSettings => 'Atvērt sistēmas iestatījumus';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Nospiediet $shortcut vai divreiz nospiediet Option jebkurā vietā, lai atvērtu WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Visticamāk';

  @override
  String get longTermToday => 'Šodien';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years gadi',
      one: '$years gads',
      zero: '$years gadi',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range gadā';
  }

  @override
  String longTermLikely(String price) {
    return 'visticamāk $price';
  }

  @override
  String get confidenceLow => 'Zema ticamība';

  @override
  String get confidenceMedium => 'Vidēja ticamība';

  @override
  String get confidenceHigh => 'Augsta ticamība';

  @override
  String get longTermNote =>
      'Ilgtermiņa diapazoni balstās uz norādītajiem pieņēmumiem un laika gaitā paplašinās. Cenās nav ietvertas dividendes. Aptuveni vērtējumi, nevis prognozes.';

  @override
  String get portfolio => 'Portfelis';

  @override
  String get portfolioEmpty =>
      'Šeit vēl nekā nav. Atveriet akciju un pieskarieties „Pievienot portfelim”, lai sekotu līdzi saviem ieguldījumiem.';

  @override
  String get portfolioLocalNote =>
      'Saglabāts tikai šajā ierīcē. Kopsummas tiek pārrēķinātas pēc ECB atsauces kursiem; cenas var būt novēlotas.';

  @override
  String get addToPortfolio => 'Pievienot portfelim';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Pievienot $symbol';
  }

  @override
  String get portfolioQuantity => 'Akciju skaits';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Cena par akciju ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Pirkuma datums';

  @override
  String get portfolioAdd => 'Pievienot';

  @override
  String get portfolioInvalidNumber =>
      'Ievadiet skaitli, kas lielāks par nulli.';

  @override
  String portfolioAdded(String symbol) {
    return 'Akcija $symbol pievienota portfelim.';
  }

  @override
  String get portfolioTotalValue => 'Kopējā vērtība';

  @override
  String get portfolioToday => 'Šodien';

  @override
  String get portfolioGainLoss => 'Peļņa/zaudējumi';

  @override
  String get portfolioInvested => 'Ieguldīts';

  @override
  String get portfolioAllocation => 'Sadalījums';

  @override
  String get portfolioPositions => 'Pozīcijas';

  @override
  String portfolioAvgCost(String price) {
    return 'vid. cena $price';
  }

  @override
  String get portfolioYourPosition => 'Jūsu pozīcija';

  @override
  String get portfolioPurchases => 'Pirkumi';

  @override
  String get portfolioRemove => 'Noņemt';

  @override
  String get portfolioExcluded =>
      'Pozīcijas bez cenas vai valūtas kursa kopsummās netiek iekļautas.';

  @override
  String get priceAlerts => 'Cenu brīdinājumi';

  @override
  String get setPriceAlert => 'Iestatīt cenas brīdinājumu';

  @override
  String alertDialogTitle(String symbol) {
    return 'Cenas brīdinājums · $symbol';
  }

  @override
  String get alertKindAbove => 'Pakāpjas virs';

  @override
  String get alertKindBelow => 'Nokrītas zem';

  @override
  String get alertKindMove => 'Dienas laikā būtiski mainās';

  @override
  String alertTargetPrice(String currency) {
    return 'Cena ($currency)';
  }

  @override
  String get alertMovePercent => 'Dienas izmaiņas (%)';

  @override
  String get alertAlreadyMet => 'Cena jau ir šķērsojusi šo līmeni.';

  @override
  String get alertSave => 'Iestatīt brīdinājumu';

  @override
  String alertCreated(String symbol) {
    return 'Brīdinājums akcijai $symbol ir iestatīts.';
  }

  @override
  String get alertsEmpty =>
      'Cenu brīdinājumu vēl nav. Atveriet akciju un pieskarieties zvaniņam, lai to iestatītu.';

  @override
  String get alertsNote =>
      'Brīdinājumi tiek pārbaudīti ik pēc 5 minūtēm, kamēr WhatStock darbojas. Datorā lietotne turpina darboties izvēļņu joslā vai sistēmas teknē; tālrunī brīdinājumi pagaidām tiek saņemti tikai tad, kad lietotne ir atvērta.';

  @override
  String alertDescAbove(String price) {
    return 'Virs $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Zem $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Dienas izmaiņas ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Nostrādāja $date pie cenas $price';
  }

  @override
  String get alertRearm => 'Aktivizēt atkārtoti';

  @override
  String get alertDelete => 'Dzēst';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol pakāpās virs $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol nokritās zem $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol šodien mainījās par $percent';
  }

  @override
  String alertHitBody(String price) {
    return 'Pašreizējā cena: $price';
  }

  @override
  String get alertOpen => 'Atvērt';

  @override
  String get keepInTrayTitle => 'Turpināt darbu pēc loga aizvēršanas';

  @override
  String get keepInTraySubtitle =>
      'WhatStock paliek izvēļņu joslā vai sistēmas teknē, tāpēc īsinājumtaustiņš un cenu brīdinājumi turpina darboties.';

  @override
  String get termsOfUse => 'Lietošanas noteikumi';

  @override
  String get privacyPolicy => 'Privātuma politika';

  @override
  String get subscriptionLegal =>
      'Abonements tiek automātiski atjaunots katru mēnesi, līdz to atceļat. Abonējot jūs piekrītat Lietošanas noteikumiem un Privātuma politikai.';

  @override
  String get deleteAccount => 'Dzēst kontu';

  @override
  String get deleteAccountTitle => 'Vai dzēst kontu?';

  @override
  String get deleteAccountBody =>
      'Jūsu konts un viss, kas glabājas mūsu serverī (e-pasts, limits, lietojums), tiks neatgriezeniski dzēsts, un neizmantotās analīzes tiks zaudētas. Pārlūkprogrammā apmaksāts abonements tiek atcelts nekavējoties; App Store vai Google Play abonements jāatceļ veikala iestatījumos.';

  @override
  String get deleteLocalData =>
      'Dzēst arī datus šajā ierīcē (portfelis, brīdinājumi, izlase, vēsture, saglabātās analīzes)';

  @override
  String get deleteAccountConfirm => 'Dzēst neatgriezeniski';

  @override
  String get accountDeleted => 'Jūsu konts ir dzēsts.';

  @override
  String get errDeleteAccount =>
      'Kontu neizdevās dzēst. Pārbaudiet savienojumu un mēģiniet vēlreiz.';

  @override
  String get aiTrialBriefNote =>
      'Izmēģinājuma analīzes ir īsas, un tās veido ātrāks AI modelis. Ar plānu jūs saņemat mūsu spēcīgāko AI, vairāk meklējumu tīmeklī, kā arī standarta un padziļināto garumu.';

  @override
  String get billingMonthly => 'Ik mēnesi';

  @override
  String get billingYearly => 'Ik gadu';

  @override
  String get yearlyDiscount => '2 mēneši bez maksas';

  @override
  String get perYear => '/ gadā';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price mēnesī';
  }

  @override
  String get subscriptionLegalYearly =>
      'Gada abonements tiek automātiski atjaunots katru gadu, līdz to atceļat. Abonējot jūs piekrītat Lietošanas noteikumiem un Privātuma politikai.';

  @override
  String get myAnalyses => 'Manas analīzes';

  @override
  String get navAlerts => 'Brīdinājumi';

  @override
  String get inviteTitle => 'Slēgts priekšskatījums';

  @override
  String get inviteBody =>
      'Pagaidām WhatStock ir pieejama tikai ar ielūgumu. Ievadiet saņemto ielūguma kodu.';

  @override
  String get inviteCodeLabel => 'Ielūguma kods';

  @override
  String get inviteContinue => 'Turpināt';

  @override
  String get inviteInvalid => 'Šis ielūguma kods nav derīgs.';

  @override
  String get inviteExpired =>
      'Šī ielūguma derīguma termiņš ir beidzies. Palūdziet jaunu kodu personai, kas jūs uzaicināja.';

  @override
  String get inviteDeviceLimit =>
      'Šis ielūguma kods jau tiek izmantots maksimālajā atļautajā ierīču skaitā.';

  @override
  String get previewConfidential => 'Konfidenciāls priekšskatījums';

  @override
  String get errPreviewDailyLimit =>
      'Šī priekšskatījuma šodienas analīžu limits ir sasniegts. Mēģiniet vēlreiz rīt.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'pirms $count stundām',
      one: 'pirms $count stundas',
      zero: 'pirms $count stundām',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'pirms $count dienām',
      one: 'pirms $count dienas',
      zero: 'pirms $count dienām',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Atjaunināt šo analīzi?';

  @override
  String staleBody(String age) {
    return 'Šī analīze izveidota $age. Kopš tā laika cenas, ziņas un rezultāti var būt mainījušies.';
  }

  @override
  String get staleKeep => 'Rādīt iepriekšējo';

  @override
  String get staleRefresh => 'Izveidot jaunu';

  @override
  String seeAll(int count) {
    return 'Skatīt visas ($count)';
  }

  @override
  String get searchAnalyses => 'Meklēt savās analīzēs';

  @override
  String get deleteAnalysis => 'Dzēst';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol analīze izdzēsta';
  }

  @override
  String get keyLevelAlertHint =>
      'Pieskarieties līmenim, lai saņemtu brīdinājumu, kad cena to sasniegs.';

  @override
  String get shareAnalysisTitle => 'Kopīgot analīzi';

  @override
  String get shareAsImage => 'Kopīgot kā attēlu';

  @override
  String get shareAsText => 'Kopīgot kā tekstu';

  @override
  String get shareCardFooter => 'Izveidots ar WhatStock';

  @override
  String get shareCardDisclaimer => 'AI analīze · nav ieguldījumu konsultācija';

  @override
  String get referralTitle => 'Uzaiciniet draugus';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count papildu analīzes',
      one: '$count papildu analīzi',
      zero: '$count papildu analīzes',
    );
    return 'Kopīgojiet savu kodu. Jūsu draugs uzreiz saņems $_temp0, un jūs – tikpat pēc viņa pirmās analīzes.';
  }

  @override
  String get referralYourCode => 'Jūsu kods';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Uzaicināti: $invited · Apbalvoti: $rewarded';
  }

  @override
  String get referralHaveCode => 'Jums ir drauga kods?';

  @override
  String get referralRedeem => 'Izmantot';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Pievienotas $count papildu analīzes. Laipni lūdzam!',
      one: 'Pievienota $count papildu analīze. Laipni lūdzam!',
      zero: 'Pievienotas $count papildu analīzes. Laipni lūdzam!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Šāds kods neeksistē. Pārbaudiet to un mēģiniet vēlreiz.';

  @override
  String get referralErrOwn => 'Jūs nevarat izmantot savu kodu.';

  @override
  String get referralErrAlready => 'Drauga kods jau ir izmantots.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count papildu analīzes',
      one: '$count papildu analīzi',
      zero: '$count papildu analīzes',
    );
    return 'Es analizēju akcijas ar WhatStock: nofotografē akciju, un AI to izskaidro. Ar manu kodu $code tu saņemsi $_temp0.';
  }

  @override
  String get referralCopied => 'Kods nokopēts';
}
