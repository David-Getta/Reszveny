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
  String get labelYieldOnCost => 'Ienesīgums pret pirkuma cenu';

  @override
  String get labelDividendGrowth5y => 'Dividenžu pieaugums (5 g.)';

  @override
  String get dividendNone => 'Pēdējos 12 mēnešos dividendes nav izmaksātas.';

  @override
  String get dividendOnYourShares => 'Par jūsu akcijām, gadā';

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
  String homeDividendsThisYear(String amount) {
    return 'Dividendes šogad: $amount';
  }

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

  @override
  String get onboardTitle1 => 'Nofotografējiet akciju';

  @override
  String get onboardBody1 =>
      'Pietiek ar brokera lietotnes ekrānu, avīzi vai uzņēmuma logotipu: WhatStock atpazīst akciju un parāda tās cenu, grafiku un galvenos rādītājus.';

  @override
  String get onboardTitle2 => 'Izprotiet to dažās minūtēs';

  @override
  String get onboardBody2 =>
      'AI analīze izskaidro, kas virza akcijas cenu, kādi ir riski, kāds ir novērtējums, un piedāvā trīs scenārijus, kurp cena varētu virzīties, – ar avotiem un jūsu valodā.';

  @override
  String get onboardTitle3 => 'Vienmēr lietas kursā';

  @override
  String get onboardBody3 =>
      'Izlase, jūsu portfelis un cenu brīdinājumi jūs vienmēr informēs. Jūsu analīzes paliek jūsu ierīcē, gatavas atkārtotai atvēršanai.';

  @override
  String get onboardNext => 'Tālāk';

  @override
  String get onboardStart => 'Sākt';

  @override
  String get onboardSkip => 'Izlaist';

  @override
  String changesTitle(String date) {
    return 'Kopš iepriekšējās analīzes ($date)';
  }

  @override
  String get changesPrice => 'Cena';

  @override
  String get changesNoMajor => 'Perspektīva būtiski nav mainījusies.';

  @override
  String get changesPreviousSummary => 'Iepriekšējais kopsavilkums';

  @override
  String get telemetryTitle => 'Palīdziet uzlabot WhatStock';

  @override
  String get telemetryBody =>
      'Kopīgojiet anonīmu lietošanas statistiku un avāriju ziņojumus: kuras funkcijas tiek izmantotas un kas nogāja greizi. Jūsu akcijas, analīzes vai personas dati netiek kopīgoti nekad. To jebkurā laikā varat mainīt Iestatījumos.';

  @override
  String get telemetryAllow => 'Atļaut';

  @override
  String get telemetryDecline => 'Nē, paldies';

  @override
  String get telemetrySetting => 'Anonīma statistika un avāriju ziņojumi';

  @override
  String get telemetrySettingHint =>
      'Cik bieži tiek izmantotas funkcijas, un kļūdu ziņojumi — bez personas datiem vai jūsu meklējumu un analīžu satura.';

  @override
  String get askButton => 'Uzdot jautājumu par analīzi';

  @override
  String askTitle(String symbol) {
    return 'Jautājumi par $symbol';
  }

  @override
  String get askIntro =>
      'Jautājiet jebko par analīzi: ko nozīmē kāds risks, kas varētu mainīt perspektīvu, kā aprēķināts kāds skaitlis. Atbildes balstās uz šo analīzi un nav ieguldījumu konsultācija.';

  @override
  String get askHint => 'Uzdodiet jautājumu…';

  @override
  String get askSend => 'Sūtīt';

  @override
  String get askThinking => 'Domā…';

  @override
  String get askSuggest1 => 'Kāds ir lielākais risks?';

  @override
  String get askSuggest2 => 'Kas varētu mainīt perspektīvu?';

  @override
  String get askSuggest3 => 'Paskaidro vienkāršiem vārdiem';

  @override
  String get askMaxReached =>
      'Tas bija pēdējais jautājums par šo analīzi. Lai jautātu vēl, ģenerējiet jaunu analīzi.';

  @override
  String get errAskLimit =>
      'Šodienas jautājumu limits ir sasniegts. Mēģiniet vēlreiz rīt.';

  @override
  String get eventTomorrow => 'Rīt';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'pēc $days dienām',
      one: 'pēc $days dienas',
      zero: 'pēc $days dienām',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Ceturkšņa rezultāti';

  @override
  String get eventBeforeOpen => 'pirms biržas atvēršanas';

  @override
  String get eventAfterClose => 'pēc biržas slēgšanas';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS prognoze: $value';
  }

  @override
  String get eventFromAnalysis => 'No jūsu analīzes';

  @override
  String get eventDividend => 'Gaidāma dividende';

  @override
  String get eventDividendEstimate =>
      'Aplēsts no jūsu reģistrētajiem maksājumiem';

  @override
  String get eventsHint =>
      'Jūsu izlases un portfeļa akciju rezultātu datumi nākamajām 90 dienām, datēti notikumi, ko atzīmējušas jūsu analīzes, un dividendes, kas gaidāmas pēc jūsu reģistrētajiem maksājumiem.';

  @override
  String get eventsEmpty =>
      'Nākamajās 90 dienās nav datētu notikumu. Pievienojiet akcijas izlasei vai portfelim, lai šeit redzētu to rezultātu datumus; reģistrētajām dividendēm šeit redzams gaidāmais nākamais maksājums.';

  @override
  String get compareTitle => 'Salīdzināt';

  @override
  String get compareAdd => 'Pievienot akciju';

  @override
  String get compareRemove => 'Noņemt';

  @override
  String get compareTickerHint => 'Simbols, piem., MSFT';

  @override
  String get compareHint =>
      'Galvenie rādītāji blakus; katras rindas labākā vērtība ir izcelta. Summas norādītas katras akcijas valūtā.';

  @override
  String get compareNoAnalysis => 'Analīzes vēl nav';

  @override
  String get portfolioDividends => 'Gada dividendes';

  @override
  String portfolioDividendYield(String percent) {
    return 'Ienesīgums $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Paredzamās gada dividendes balstās uz pēdējos 12 mēnešos izmaksātajām dividendēm; nākotnes izmaksas nav garantētas.';

  @override
  String positionDividend(String amount) {
    return 'Dividende: $amount gadā';
  }

  @override
  String get chartAvgCost => 'Jūsu vid.';

  @override
  String get chartAlertLevel => 'Brīdinājums';

  @override
  String get marketsToday => 'Tirgi šodien';

  @override
  String get notesTitle => 'Manas piezīmes';

  @override
  String get notesHint =>
      'Kāpēc jūs to iegādājāties, kam sekojat, kas liktu jums pārdot?';

  @override
  String get notesInfo =>
      'Saglabāts tikai šajā ierīcē. AI analīze ņem vērā jūsu piezīmes.';

  @override
  String notesSaved(String date) {
    return 'Saglabāts $date';
  }

  @override
  String get peersTitle => 'Līdzīgi uzņēmumi';

  @override
  String get portfolioExport => 'Eksportēt kā CSV';

  @override
  String get portfolioImport => 'Importēt no CSV';

  @override
  String get portfolioImportHint =>
      'Ielīmējiet vienu pirkumu katrā rindā: akcijas simbols, daudzums, cena, valūta, datums (GGGG-MM-DD). Kolonnas var atdalīt ar komatiem, semikoliem vai tabulatoriem; galvenes rinda nav obligāta.';

  @override
  String get portfolioImportButton => 'Importēt';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Pievienoti $count pirkumi',
      one: 'Pievienots $count pirkums',
      zero: 'Pievienoti $count pirkumi',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Izlaistas $count rindas',
      one: 'Izlaista $count rinda',
      zero: 'Izlaistas $count rindas',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Portfelis, izlase, cenu brīdinājumi un piezīmes tiek sinhronizēti visās jūsu ierīcēs.';

  @override
  String syncLast(String time) {
    return 'Pēdējā sinhronizācija: $time';
  }

  @override
  String get syncNow => 'Sinhronizēt tūlīt';

  @override
  String get syncFailed =>
      'Sinhronizācija neizdevās. Tiks automātiski mēģināts vēlreiz.';

  @override
  String get alertEmailTitle => 'E-pasts, kad nostrādā brīdinājums';

  @override
  String get alertEmailOn =>
      'Ik pēc dažām minūtēm pārbaudām jūsu brīdinājumus un nosūtām jums e-pastu, pat ja lietotne ir aizvērta.';

  @override
  String get alertEmailSignIn =>
      'Pierakstieties ar savu e-pastu Iestatījumos, lai saņemtu brīdinājumus e-pastā, pat ja lietotne ir aizvērta.';

  @override
  String get portfolioHistory => 'Vērtības izmaiņas';

  @override
  String get portfolioReviewTitle => 'Portfeļa AI analīze';

  @override
  String get portfolioReviewIntro =>
      'AI pārskata visu jūsu portfeli: koncentrāciju, nozaru un valūtu riskus, jūsu akciju kopīgos riskus un dividendes. Izmanto 1 analīzi.';

  @override
  String get portfolioReviewButton => 'Analizēt manu portfeli';

  @override
  String get portfolioReviewAgain => 'Analizēt vēlreiz';

  @override
  String get portfolioReviewWorking => 'Analizējam jūsu portfeli…';

  @override
  String get digestTitle => 'Iknedēļas kopsavilkums e-pastā';

  @override
  String get digestHint =>
      'Katru pirmdienu: kā pagājušajā nedēļā mainījās jūsu izlase un portfelis, kā arī to tuvākie rezultātu datumi.';

  @override
  String get benchmarkTitle => 'Salīdzinājumā ar S&P 500';

  @override
  String get benchmarkYours => 'Jūsu pirkumi';

  @override
  String get benchmarkIndex => 'Tās pašas summas S&P 500';

  @override
  String benchmarkAhead(String points) {
    return 'Par $points procentpunktiem labāk nekā indekss';
  }

  @override
  String benchmarkBehind(String points) {
    return 'Par $points procentpunktiem atpaliek no indeksa';
  }

  @override
  String get benchmarkHint =>
      'It kā katrs pirkums tajā pašā dienā būtu ieguldīts S&P 500 indeksa fondā. Bez dividendēm; pagātnes ienesīgums neparedz nākotnes ienesīgumu.';

  @override
  String get portfolioSell => 'Pārdot';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Pārdot $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Pārdošanas cena par akciju ($currency)';
  }

  @override
  String get portfolioSellDate => 'Pārdošanas datums';

  @override
  String get portfolioSellAll => 'Visas';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Jums ir $quantity';
  }

  @override
  String get portfolioSold => 'Pārdots';

  @override
  String get portfolioRealized => 'Realizēts';

  @override
  String get portfolioClosed => 'Slēgtās pozīcijas';

  @override
  String get portfolioClosedNote => 'Visas akcijas pārdotas';

  @override
  String get portfolioTransactions => 'Darījumi';

  @override
  String get portfolioRealizedByYear => 'Realizētā peļņa pa gadiem';

  @override
  String get portfolioRealizedHint =>
      'Pārdošanas vispirms tiek sasaistītas ar jūsu vecākajiem pirkumiem (FIFO) un pārrēķinātas pēc šodienas valūtas kursa. Nodokļu deklarācijai izmantojiet sava brokera izrakstu.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Kopš šīs analīzes publicēti jauni ceturkšņa rezultāti ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Jauni rezultāti';

  @override
  String get portfolioImportBrokers =>
      'Tiek atpazīti arī Revolut, Trading 212 un Interactive Brokers eksporti, ieskaitot pārdošanas; dividendes un iemaksas tiek izlaistas.';

  @override
  String get portfolioImportFile => 'Izvēlēties failu';

  @override
  String offlineBanner(String time) {
    return 'Nav savienojuma – tiek rādīti pēdējie saglabātie dati ($time).';
  }

  @override
  String get glossMarketCap =>
      'Cik vērts ir viss uzņēmums akciju tirgū: akcijas cena × akciju skaits.';

  @override
  String get glossSharesOutstanding =>
      'Cik akciju uzņēmums ir emitējis. Ja skaits pieaug, katrai akcijai pienākas mazāka daļa; akciju atpirkšana to samazina.';

  @override
  String get glossPeTrailing =>
      'Cena ÷ pēdējo 12 mēnešu peļņa uz akciju: par cik gadu pašreizējās peļņas jūs maksājat. Zemāks nozīmē lētāk, taču strauji augošiem uzņēmumiem P/E parasti ir augsts.';

  @override
  String get glossPeForward =>
      'Kā P/E, bet ar peļņu, ko analītiķi sagaida nākamajos 12 mēnešos. Ja tas ir zemāks par vēsturisko P/E, sagaida peļņas pieaugumu.';

  @override
  String get glossPb =>
      'Cena ÷ uzskaites vērtība (aktīvi mīnus parādi) uz akciju. Ap 1 nozīmē, ka tirgus uzņēmumu vērtē tik, cik tam pieder uz papīra.';

  @override
  String get glossPs =>
      'Tirgus vērtība ÷ gada ieņēmumi. Noderīgs uzņēmumiem ar nelielu peļņu vai bez tās; salīdziniet vienas nozares ietvaros.';

  @override
  String get glossEvToFcf =>
      'Uzņēmuma vērtība kopā ar parādu (EV) ÷ nauda, ko tas gadā rada pēc investīcijām. Zemāks nozīmē, ka par cenu saņemat vairāk naudas.';

  @override
  String get glossPeg =>
      'P/E ÷ sagaidāmais gada peļņas pieaugums (%). Ap 1 bieži uzskata par taisnīgu; tas skata P/E izaugsmes kontekstā.';

  @override
  String get glossEps =>
      'Peļņa uz akciju pēdējos 12 mēnešos. Gadu gaitā augošs EPS ir viena no spēcīgākajām veselīga uzņēmuma pazīmēm.';

  @override
  String get glossBeta =>
      'Cik ļoti akcija mēdz kustēties līdzi tirgum: 1 = kā tirgus, 1,5 = aptuveni par 50% lielākas svārstības, zem 1 = mierīgāka.';

  @override
  String get glossRevenueTtm =>
      'Kopējie pēdējo 12 mēnešu pārdošanas ieņēmumi pirms jebkādām izmaksām.';

  @override
  String get glossNetIncomeTtm =>
      'Peļņa, kas paliek pēc visām izmaksām, procentiem un nodokļiem pēdējos 12 mēnešos.';

  @override
  String get glossGrossMargin =>
      'Ieņēmumu daļa, kas paliek pēc produktu tiešajām izmaksām. Augsta marža bieži nozīmē spēju noteikt cenas.';

  @override
  String get glossOperatingMargin =>
      'Ieņēmumu daļa, kas paliek pēc darbības izmaksām (algas, īre, mārketings), pirms procentiem un nodokļiem.';

  @override
  String get glossNetMargin =>
      'Ieņēmumu daļa, kas kļūst par galīgo peļņu. 20% nozīmē, ka no katriem 100 pārdošanas ieņēmumiem 20 ir peļņa.';

  @override
  String get glossRoe =>
      'Pašu kapitāla atdeve: gada peļņa ÷ īpašnieku kapitāls. Parāda, cik labi vadība izmanto akcionāru naudu; virs aptuveni 15% ir spēcīgi.';

  @override
  String get glossRoa =>
      'Aktīvu atdeve: gada peļņa ÷ viss, kas pieder uzņēmumam. Salīdziniet vienas nozares ietvaros.';

  @override
  String get glossDebtToEquity =>
      'Parādi ÷ īpašnieku kapitāls. Augstāks nozīmē vairāk aizņemtas naudas: lielāks risks, kad kāpj procentu likmes vai bizness palēninās.';

  @override
  String get glossCurrentRatio =>
      'Īstermiņa aktīvi ÷ gada laikā apmaksājamie rēķini. Virs 1 nozīmē, ka uzņēmums spēj segt tuvākos rēķinus.';

  @override
  String get glossRevenueGrowth =>
      'Cik ieņēmumi pieauguši salīdzinājumā ar gadu iepriekš.';

  @override
  String get glossEpsGrowth =>
      'Cik peļņa uz akciju pieaugusi salīdzinājumā ar gadu iepriekš.';

  @override
  String get glossDividendYield =>
      'Gada dividende ÷ akcijas cena: naudas ienākumi, ko saņemtu katru gadu, procentos no samaksātā.';

  @override
  String get glossDividendPerShare =>
      'Dividende, kas pēdējā gadā izmaksāta par vienu akciju.';

  @override
  String get glossPayoutRatio =>
      'Peļņas daļa, ko izmaksā dividendēs. Virs 100% uzņēmums izmaksā vairāk, nekā nopelna, un tas reti ilgst.';

  @override
  String get portfolioBeta => 'Portfeļa beta';

  @override
  String get glossPortfolioBeta =>
      'Jūsu akciju beta, svērta pēc to vērtības: aptuveni par cik procentiem kustas jūsu akcijas, kad tirgus pakustas par 1%. Virs 1 tās svārstās vairāk nekā tirgus, zem 1 – mazāk. Nauda netiek ieskaitīta.';

  @override
  String get portfolioTop3 => '3 lielākās pozīcijas';

  @override
  String get glossPortfolioTop3 =>
      'Cik liela daļa no jūsu akciju vērtības ir jūsu trīs lielākajās pozīcijās. Jo augstāka tā ir, jo vairāk sliktas ziņas par vienu uzņēmumu var kaitēt visam portfelim.';

  @override
  String get glossDividendGrowth5y =>
      'Cik vidēji gadā pēdējo piecu gadu laikā pieaugusi dividende uz akciju. Stabils pieaugums parasti nozīmē, ka uzņēmums uzticas savai naudas plūsmai; samazinājums bieži ir brīdinājuma zīme.';

  @override
  String get glossYieldOnCost =>
      'Pēdējo 12 mēnešu laikā saņemtās dividendes, dalītas ar summu, ko samaksājāt par akcijām, kuras joprojām turat. Atšķirībā no dividenžu ienesīguma to mēra pret jūsu pirkuma cenu, ne šodienas cenu.';

  @override
  String get glossTitle => 'Ko tas nozīmē?';

  @override
  String get watchNewsTitle => 'Ziņas par jūsu akcijām';

  @override
  String get undo => 'Atsaukt';

  @override
  String get watchSort => 'Kārtot';

  @override
  String get watchSortOwn => 'Mana secība';

  @override
  String get watchSortGainers => 'Lielākie kāpumi vispirms';

  @override
  String get watchSortLosers => 'Lielākie kritumi vispirms';

  @override
  String get watchSortName => 'Pēc simbola (A–Z)';

  @override
  String get watchHint =>
      'Velciet turi, lai mainītu secību, pavelciet pa kreisi, lai noņemtu. Līnija rāda pēdējās 30 dienas.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: jūsu analīze ir gatava.';
  }

  @override
  String alertFromCost(String price) {
    return 'No jūsu vidējās pirkšanas cenas ($price):';
  }

  @override
  String get briefTitle => 'Šodien ar jūsu akcijām';

  @override
  String get briefButton => 'Apkopot dienu';

  @override
  String get briefHint =>
      'Īss MI kopsavilkums par to, kā šodien mainījās jūsu portfelis un izlase un ko par tiem saka jaunākās ziņas. Neizmanto analīzi.';

  @override
  String get briefRefresh => 'Atjaunināt';

  @override
  String get sectionEarnings => 'Ceturkšņa rezultāti';

  @override
  String earningsNext(String date) {
    return 'Nākamais pārskats: $date';
  }

  @override
  String get earningsExpected => 'Prognozētais EPS';

  @override
  String get earningsReported => 'Paziņotais EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Ceturkšņi, kuros EPS atbilda prognozei vai pārsniedza to: $beats no pēdējiem $total',
      one: 'EPS atbilda prognozei vai pārsniedza to: $beats no 1 ceturkšņa',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol rīt publicē ceturkšņa rezultātus';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol šodien publicē ceturkšņa rezultātus';
  }

  @override
  String get earningsRemindersTitle => 'Atgādinājumi par rezultātiem';

  @override
  String get earningsRemindersSubtitle =>
      'Paziņojums dienu pirms izlases vai portfeļa akciju ceturkšņa rezultātu publicēšanas';

  @override
  String addAllToFavorites(int count) {
    return 'Pievienot visas izlasei ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Importēt no ekrānuzņēmuma';

  @override
  String get holdingsReading => 'Nolasa tavas pozīcijas…';

  @override
  String get holdingsReviewTitle => 'Atrastās pozīcijas';

  @override
  String get holdingsReviewHint =>
      'Pirms pievienošanas pārbaudi skaitļus. Cena ir tava vidējā pirkuma cena par vienu akciju, nevis šodienas cena.';

  @override
  String get holdingsNoPrice => 'Attēlā nav vidējās pirkuma cenas';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Pievienot $count pozīcijas',
      one: 'Pievienot $count pozīciju',
      zero: 'Pievienot $count pozīcijas',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Šajā attēlā netika atrastas akciju pozīcijas. Izmēģini ekrānuzņēmumu no sava brokera pozīciju vai aktīvu lapas.';

  @override
  String get week52Range => '52 nedēļu diapazons';

  @override
  String week52BelowHigh(String percent) {
    return '$percent zem 52 nedēļu maksimuma';
  }

  @override
  String get week52AtHigh => 'Pie 52 nedēļu maksimuma';

  @override
  String get alertKindTrailing => 'Nokrītas no virsotnes';

  @override
  String get alertTrailingPercent => 'Kritums no virsotnes (%)';

  @override
  String get alertTrailingHint =>
      'Seko cenai augšup: brīdina, kad cena nokrītas par tik no augstākā līmeņa kopš iestatīšanas.';

  @override
  String alertDescTrailing(String percent) {
    return '$percent kritums no virsotnes';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'līdzšinējā virsotne: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol nokritās par $percent no virsotnes';
  }

  @override
  String get sectionInsiders => 'Insaideru darījumi';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pirkumi',
      one: '$count pirkums',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pārdošanas',
      one: '$count pārdošana',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Neto: $shares akcijas';
  }

  @override
  String get insiderBuy => 'Nopirkts';

  @override
  String get insiderSell => 'Pārdots';

  @override
  String get insiderHint =>
      'Vadītāju un direktoru pirkumi un pārdošanas atklātajā tirgū pēdējās 90 dienās (SEC Form 4). Opciju izmantošana un akciju piešķīrumi netiek ieskaitīti.';

  @override
  String get insiderNone =>
      'Pēdējās 90 dienās atklātajā tirgū nav bijis insaideru pirkumu vai pārdošanu.';

  @override
  String get analystTrend => 'Kā viedokļi mainījās mēnesi pa mēnesim';

  @override
  String get watchListAll => 'Visas';

  @override
  String get watchListNew => 'Jauns saraksts';

  @override
  String get watchListName => 'Saraksta nosaukums';

  @override
  String get watchListRename => 'Pārdēvēt sarakstu';

  @override
  String get watchListDelete => 'Dzēst sarakstu';

  @override
  String get watchListAddTo => 'Pievienot sarakstam';

  @override
  String get watchListEmpty =>
      'Šajā sarakstā vēl nav akciju. Pieskarieties saraksta pogai blakus akcijai, lai to pievienotu.';

  @override
  String get portfolioAskTitle => 'Jautājumi par jūsu portfeli';

  @override
  String get rangeYtd => 'Šogad';

  @override
  String get backupTitle => 'Dublējums';

  @override
  String get backupSave => 'Saglabāt dublējumu';

  @override
  String get backupSaveHint =>
      'Jūsu izlase, saraksti, portfelis, brīdinājumi un piezīmes vienā failā.';

  @override
  String get backupRestore => 'Atjaunot no dublējuma';

  @override
  String get backupRestoreHint =>
      'Pievieno faila saturu; nekas no jūsu pašreizējiem datiem netiek dzēsts.';

  @override
  String get backupRestored => 'Dublējums atjaunots.';

  @override
  String get backupInvalid => 'Šis fails nav WhatStock dublējums.';

  @override
  String get allocationPositions => 'Akcijas';

  @override
  String get allocationSectors => 'Sektori';

  @override
  String get allocationCurrencies => 'Valūtas';

  @override
  String get compareReturn1y => '1 gada ienesīgums';

  @override
  String get compareFromHigh => 'No 52 nedēļu maksimuma';

  @override
  String get briefAutoTitle => 'Dienas kopsavilkums katru rītu';

  @override
  String get briefAutoSubtitle =>
      '„Šodien ar jūsu akcijām“ tiek izveidots automātiski pēc plkst. 7.00, kamēr lietotne darbojas; datoros par to informē paziņojums. Izmanto jūsu dienas jautājumu limitu, nevis analīzi.';

  @override
  String get targetsButton => 'Mērķa sadalījums';

  @override
  String get targetsTitle => 'Mērķa sadalījums';

  @override
  String get targetsHint =>
      'Norādiet, kādu portfeļa daļu jāaizņem katrai akcijai. Atstājiet lauku tukšu, ja mērķa nav. Pēc tam lietotne parādīs, ko pirkt vai pārdot, lai to sasniegtu.';

  @override
  String targetsSum(String percent) {
    return 'Kopā: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Pirkt ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Pārdot ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Atbilst mērķim';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol pārsniedza prognozēto EPS';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol nesasniedza prognozēto EPS';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'Paziņotais EPS $actual, prognozētais $estimate';
  }

  @override
  String get newsExplain => 'Ko tas nozīmē?';

  @override
  String get watchAlertAll => 'Brīdinājums par lielām dienas izmaiņām';

  @override
  String get watchAlertAllHint =>
      'Cenas brīdinājums katrai šī saraksta akcijai: tas nostrādās, kad dienas laikā tā mainīsies tik daudz – uz augšu vai uz leju. Akcijas, kurām tāds jau ir, to saglabā.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Iestatīti $count brīdinājumi',
      one: 'Iestatīts $count brīdinājums',
      zero: 'Iestatīti $count brīdinājumi',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Eksportēt realizēto peļņu (CSV)';

  @override
  String get portfolioAnnualReturn => 'Gada ienesīgums';

  @override
  String portfolioPerYear(String percent) {
    return '$percent gadā';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Naudas plūsmās svērtais gada ienesīgums (XIRR): ņem vērā, kad jūs pirkāt un pārdevāt, tāpēc vēlāk pievienota nauda to neizkropļo. Tiek rādīts, kad jūsu pirmajam pirkumam ir vismaz gads; dividendes nav iekļautas.';

  @override
  String get eventsAddToCalendar => 'Pievienot kalendāram (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Portfeļa brīdinājums';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Paziņojums, kad viss tavs portfelis vienā dienā mainās tik daudz.';

  @override
  String get portfolioMoveAlertOff => 'Izslēgts';

  @override
  String portfolioMoveUp(String percent) {
    return 'Tavs portfelis šodien pieaudzis par $percent';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Tavs portfelis šodien krities par $percent';
  }

  @override
  String get whatIfTitle => 'Ja nu jūs būtu ieguldījuši?';

  @override
  String get whatIfAmount => 'Summa';

  @override
  String whatIfResult(String amount, String period) {
    return 'Ieguldījums $amount (periods: $period) šodien būtu vērts';
  }

  @override
  String get whatIfNote =>
      'Tikai pēc akcijas cenas: dividendes, komisijas un nodokļi nav iekļauti. Pagātnes ienesīgums neparedz nākotnes ienesīgumu.';

  @override
  String get watchShare => 'Kopīgot sarakstu';

  @override
  String get watchImport => 'Pievienot simbolus';

  @override
  String get watchImportHint =>
      'Ielīmējiet akciju simbolus, atdalot tos ar komatiem, atstarpēm vai jaunām rindām, – piemēram, sarakstu, ar ko kāds ar jums ir dalījies.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Pievienotas $count akcijas',
      one: 'Pievienota $count akcija',
      zero: 'Pievienotas $count akcijas',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Lielākās vispirms';

  @override
  String get positionsSortGain => 'Lielākā kopējā peļņa vispirms';

  @override
  String get positionsSortToday => 'Labākās šodien vispirms';

  @override
  String get chartMyBuys => 'Jūsu pirkumi';

  @override
  String get chartMySells => 'Jūsu pārdošanas';

  @override
  String get shortcutsTitle => 'Īsinājumtaustiņi';

  @override
  String usMarketOpen(String time) {
    return 'ASV tirgus atvērts · slēgsies pēc $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'ASV tirgus slēgts · atvērsies pēc $time';
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
  String get dividendGoalSet => 'Iestatīt mēneša dividenžu mērķi';

  @override
  String get dividendGoalTitle => 'Mēneša dividenžu mērķis';

  @override
  String get dividendGoalAmount => 'Dividendes mēnesī';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Apmēram $amount mēnesī ar pašreizējo ienesīgumu · $percent · mērķis: $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Apmēram $amount mēnesī ar pašreizējo ienesīgumu · mērķis sasniegts: $goal';
  }

  @override
  String get portfolioGoalSet => 'Iestatīt mērķi';

  @override
  String get portfolioGoalTitle => 'Portfeļa mērķis';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · mērķis: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Mērķis sasniegts: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Noņemt mērķi';

  @override
  String get alertEdit => 'Rediģēt brīdinājumu';

  @override
  String get positionOpenLots => 'Joprojām tavā īpašumā (vecākie vispirms)';

  @override
  String get lotRemoved => 'Darījums izdzēsts';

  @override
  String get alertDeleted => 'Brīdinājums izdzēsts';

  @override
  String get alertsClearTriggered => 'Notīrīt nostrādājušos brīdinājumus';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Notīrīti $count brīdinājumi',
      one: 'Notīrīts $count brīdinājums',
      zero: 'Notīrīti $count brīdinājumi',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Sākuma ekrāns';

  @override
  String get allocationCountries => 'Valstis';

  @override
  String get newsExplainNoteResearch =>
      'Mākslīgā intelekta skaidrojums: tas meklē faktus tīmeklī, atver rakstu un izvērtē, cik uzticams ir avots. Tā nav ieguldījumu konsultācija. Izmanto jūsu dienas jautājumu limitu, nevis analīzi.';

  @override
  String get sourceOfficial => 'Oficiāli';

  @override
  String get sourcePressRelease => 'Preses relīze';

  @override
  String get sourceMajorNews => 'Lielais medijs';

  @override
  String get sourceOpinion => 'Viedoklis';

  @override
  String get earningsSummaryButton => 'Kas bija jaunākajā pārskatā?';

  @override
  String get earningsSummaryNote =>
      'Mākslīgā intelekta kopsavilkums par uzņēmuma rezultātu paziņojumu un preses publikācijām, ko tas atrod tīmeklī. Tā nav ieguldījumu konsultācija. Izmanto jūsu dienas jautājumu limitu, nevis analīzi.';

  @override
  String get compareLastSurprise => 'Pēdējā ceturkšņa EPS vs prognoze';

  @override
  String get compareNextReport => 'Nākamais pārskats';

  @override
  String get resolvingDescription => 'Nosaka, kuru akciju jūs domājat…';

  @override
  String get instrumentTitle => 'Par šo instrumentu';

  @override
  String get instrumentHint =>
      'Šim simbolam nav uzņēmuma profila – tas var būt ETF, fonds vai depozitārais sertifikāts. Pajautājiet mākslīgajam intelektam, kas tas ir, ko tas satur un cik tas maksā.';

  @override
  String get instrumentAsk => 'Kas tas ir?';

  @override
  String get instrumentNote =>
      'Mākslīgā intelekta skaidrojums pēc emitenta fonda lapas un finanšu vietnēm, ko tas atrod tīmeklī. Tā nav ieguldījumu konsultācija. Izmanto jūsu dienas jautājumu limitu, nevis analīzi.';

  @override
  String suggestAskAi(String query) {
    return 'Jautāt AI: „$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Pozīcijām $symbols nav pašreizējās cenas.';
  }

  @override
  String get eventsRecentResults => 'Nesen paziņotie rezultāti';

  @override
  String get saveToNotes => 'Saglabāt manās piezīmēs';

  @override
  String get savedToNotes => 'Saglabāts jūsu piezīmēs';

  @override
  String get portfolioDividendsReceived => 'Saņemtās dividendes';

  @override
  String get portfolioDividendsThisYear => 'Šogad';

  @override
  String get portfolioDividendsAllTime => 'Visu laiku';

  @override
  String get portfolioAddDividend => 'Pievienot dividendi';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Saņemtā summa ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Izmaksas datums';

  @override
  String get portfolioDividendsEmpty =>
      'Dividendes vēl nav reģistrētas. Pievienojiet tās manuāli vai importējiet sava brokera eksportu – tiks nolasītas arī tā dividenžu rindas.';

  @override
  String get portfolioSplit => 'Akciju sadalīšana';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Akciju sadalīšana: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Pirkumi un pārdošanas darījumi ar datumu pirms sadalīšanas tiek koriģēti: akciju skaits tiek reizināts, bet cena par akciju dalīta, tāpēc izmaksas nemainās.';

  @override
  String get portfolioSplitRatio => 'Attiecība (jaunās : vecās)';

  @override
  String get portfolioSplitRatioError =>
      'Ievadiet attiecību, piemēram, 10:1, vai 1:10 akciju apvienošanai.';

  @override
  String get portfolioSplitDate => 'Sadalīšanas datums';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Akciju sadalīšana $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Akciju sadalīšana izdzēsta';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Pievienotas $count akciju sadalīšanas',
      one: 'Pievienota 1 akciju sadalīšana',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Pievienotas $count dividendes',
      one: 'Pievienota $count dividende',
      zero: 'Pievienotas $count dividendes',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Eksportēt dividendes (CSV)';

  @override
  String get portfolioDividendDeleted => 'Dividende izdzēsta';

  @override
  String get portfolioDividendsHint =>
      'Summas tādas, kādas tās ienāca jūsu kontā, izmaksas valūtā; kopsummas pārrēķinātas pēc šodienas kursa. Nodokļu deklarācijai izmantojiet sava brokera izrakstu.';

  @override
  String get awayTitle => 'Kamēr jūs nebijāt klāt';

  @override
  String awaySince(String when) {
    return 'No $when';
  }

  @override
  String get awayQuiet => 'Nekas īpaši nemainījās.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Aktivizēti $count brīdinājumi',
      one: 'Aktivizēts $count brīdinājums',
      zero: 'Aktivizēti $count brīdinājumi',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Publicēja rezultātus: $symbols';
  }

  @override
  String get moveWhyButton => 'Kāpēc tā šodien kustas?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent šodien';
  }

  @override
  String get moveWhyNote =>
      'MI skaidrojums no šodienas ziņām tīmeklī; patiesais iemesls var būt nezināms vai cits. Tas nav ieguldījumu padoms. Izmanto jūsu dienas jautājumu limitu, ne analīzi.';

  @override
  String get sectionTechnical => 'Tehniskā aina';

  @override
  String get labelSma50 => '50 dienu vidējais';

  @override
  String get labelSma200 => '200 dienu vidējais';

  @override
  String get labelRsi => 'RSI (14 dienas)';

  @override
  String get labelVolatility30 => 'Svārstīgums (30 dienas)';

  @override
  String techAbove(String percent) {
    return '$percent virs';
  }

  @override
  String techBelow(String percent) {
    return '$percent zem';
  }

  @override
  String get techOverbought => 'pārpirkta';

  @override
  String get techOversold => 'pārpārdota';

  @override
  String get techNeutral => 'neitrāls';

  @override
  String get techGoldenCross =>
      '50 dienu vidējais ir virs 200 dienu vidējā – pēc klasiskās interpretācijas augšupejoša tendence.';

  @override
  String get techDeathCross =>
      '50 dienu vidējais ir zem 200 dienu vidējā – pēc klasiskās interpretācijas lejupejoša tendence.';

  @override
  String get glossSma50 =>
      'Pēdējo 50 tirdzniecības dienu vidējā slēgšanas cena. Cenu virs tā bieži uzskata par īstermiņa spēku, zem tā – par vājumu.';

  @override
  String get glossSma200 =>
      'Pēdējo 200 tirdzniecības dienu vidējā slēgšanas cena – klasiskā ilgtermiņa tendences līnija. Daudzi investori cenu virs tā uzskata par ilgtermiņa augšupejošu tendenci.';

  @override
  String get glossRsi =>
      'Relatīvā spēka indekss: salīdzina nesenos pieaugumus ar nesenajiem kritumiem skalā no 0 līdz 100. Virs 70 akciju bieži sauc par pārpirktu (tā strauji kāpa), zem 30 – par pārpārdotu, bet stipra tendence tur var saglabāties ilgi.';

  @override
  String get glossVolatility =>
      'Cik daudz cena svārstās no dienas dienā, pārrēķinot uz gadu: 20 % nozīmē, ka tipiskā gadā cena mainās aptuveni ±20 % robežās. Lielāks svārstīgums nozīmē lielākas kustības abos virzienos.';

  @override
  String get techNote =>
      'Aprēķināts pēc dienas slēgšanas cenām. Tehniskie signāli apraksta pagātni, ne nākotni.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$above no $count pozīcijām virs sava 200 dienu vidējā';
  }

  @override
  String get watchSignalsTitle => 'Signāli';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · pārpārdota';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · pārpirkta';
  }

  @override
  String get signalCrossedAbove => 'pārkāpa virs 200 dienu vidējā';

  @override
  String get signalCrossedBelow => 'nokrita zem 200 dienu vidējā';

  @override
  String get signalAlertsTitle => 'Paziņojumi par tehniskajiem signāliem';

  @override
  String get signalAlertsSubtitle =>
      'Reizi dienā, kad akcija, kurai tu seko, kļūst pārpārdota vai pārpirkta (RSI), vai tās cena šķērso 200 dienu vidējo.';

  @override
  String get signalAlertsNotification => 'Tehniskie signāli';

  @override
  String get glossaryPageTitle => 'Terminu vārdnīca';

  @override
  String get glossaryPageSubtitle =>
      'Vienkārši skaidrojumi katram lietotnes rādītājam, no P/E līdz RSI';

  @override
  String get glossarySearchHint => 'Meklēt vārdnīcā';

  @override
  String get portfolioCash => 'Nauda';

  @override
  String get portfolioCashTitle => 'Naudas atlikums';

  @override
  String get portfolioCashHint =>
      'Neieguldīta nauda pie jūsu brokera, pa valūtām. Ieskaitīta kopējā vērtībā un sadalījumā; ne ienesīgumā.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Summa ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Iestatīt naudas atlikumu';

  @override
  String get portfolioDividendsByMonth => 'Pa mēnešiem';

  @override
  String get dividendsLegendReceived => 'Saņemtās';

  @override
  String get dividendsLegendExpected => 'Gaidāmās';

  @override
  String get portfolioDividendsExpected => 'Nākamās gaidāmās';

  @override
  String get portfolioDividendsExpectedNote =>
      'Aplēsts no jūsu reģistrēto izmaksu datumiem un summām; uzņēmumi tās var mainīt vai izlaist.';

  @override
  String portfolioDividendAround(String date) {
    return 'apmēram $date';
  }
}
