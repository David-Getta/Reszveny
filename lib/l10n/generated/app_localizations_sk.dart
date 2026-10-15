// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class AppLocalizationsSk extends AppLocalizations {
  AppLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'Odfoťte akciu a zistite o nej všetko.';

  @override
  String get homeHint =>
      'Akciový certifikát, obrazovka brokerskej aplikácie, noviny alebo logo firmy – čokoľvek, čo akciu identifikuje.';

  @override
  String get takePhoto => 'Odfotiť';

  @override
  String get chooseFromGallery => 'Vybrať z galérie';

  @override
  String get chooseImage => 'Vybrať obrázok';

  @override
  String get enterTickerManually => 'Zadať ticker manuálne';

  @override
  String get tickerInputLabel => 'Ticker';

  @override
  String get tickerInputHint => 'napr. AAPL';

  @override
  String get lookUp => 'Vyhľadať';

  @override
  String demoModeBanner(String symbols) {
    return 'Demo režim – kľúč k trhovým údajom nie je nastavený. Ukážkové údaje sú k dispozícii pre: $symbols.';
  }

  @override
  String get recognizing => 'Analyzujem obrázok…';

  @override
  String get loadingData => 'Načítavam údaje…';

  @override
  String get noCandidatesTitle => 'Akcia nebola rozpoznaná';

  @override
  String get noCandidatesBody =>
      'Na tomto obrázku sa nepodarilo identifikovať akciu. Skúste ostrejšiu fotografiu alebo zadajte ticker manuálne.';

  @override
  String get whatWeSaw => 'Čo sme videli';

  @override
  String get chooseCandidateTitle => 'Ktorú akciu ste mali na mysli?';

  @override
  String confidencePercent(int percent) {
    return 'Istota $percent %';
  }

  @override
  String get settings => 'Nastavenia';

  @override
  String get language => 'Jazyk';

  @override
  String get systemLanguage => 'Predvolený systémový';

  @override
  String get about => 'O aplikácii';

  @override
  String get disclaimer =>
      'Táto aplikácia poskytuje iba informácie a nie je investičným odporúčaním. Údaje môžu byť oneskorené alebo nepresné.';

  @override
  String dataSource(String source) {
    return 'Zdroj údajov: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Rozpoznávanie: $source';
  }

  @override
  String get retry => 'Skúsiť znova';

  @override
  String get cancel => 'Zrušiť';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Zavrieť';

  @override
  String get errorGeneric => 'Niečo sa pokazilo.';

  @override
  String get errorSectionUnavailable => 'Túto sekciu sa nepodarilo načítať.';

  @override
  String get notAvailable => 'n/a';

  @override
  String get sectionIdentity => 'Identifikácia';

  @override
  String get sectionPrice => 'Cena';

  @override
  String get sectionValuation => 'Ocenenie';

  @override
  String get sectionFinancials => 'Financie';

  @override
  String get sectionDividend => 'Dividenda';

  @override
  String get sectionProfile => 'Profil spoločnosti';

  @override
  String get sectionAnalysts => 'Hodnotenia analytikov';

  @override
  String get sectionNews => 'Správy';

  @override
  String get sectionRecognition => 'Podrobnosti rozpoznávania';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Burza';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Mena';

  @override
  String get labelCountry => 'Krajina';

  @override
  String get labelIndustry => 'Odvetvie';

  @override
  String get labelSector => 'Sektor';

  @override
  String get labelWebsite => 'Web';

  @override
  String get labelIpoDate => 'Dátum IPO';

  @override
  String get labelMarketCap => 'Trhová kapitalizácia';

  @override
  String get labelSharesOutstanding => 'Akcie v obehu';

  @override
  String get labelEmployees => 'Zamestnanci';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Sídlo';

  @override
  String get labelDescription => 'Popis';

  @override
  String get labelLastPrice => 'Posledná cena';

  @override
  String get labelChange => 'Zmena';

  @override
  String get labelOpen => 'Otváracia cena';

  @override
  String get labelDayHigh => 'Denné maximum';

  @override
  String get labelDayLow => 'Denné minimum';

  @override
  String get labelPreviousClose => 'Predchádzajúci záver';

  @override
  String get labelWeek52High => '52-týždňové maximum';

  @override
  String get labelWeek52Low => '52-týždňové minimum';

  @override
  String get labelAverageVolume10d => 'Priem. objem (10 dní)';

  @override
  String updatedAt(String time) {
    return 'Aktualizované $time';
  }

  @override
  String get labelPeTrailing => 'P/E (historické)';

  @override
  String get labelPeForward => 'P/E (očakávané)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / voľný peňažný tok';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Tržby (TTM)';

  @override
  String get labelNetIncomeTtm => 'Čistý zisk (TTM)';

  @override
  String get labelGrossMargin => 'Hrubá marža';

  @override
  String get labelOperatingMargin => 'Prevádzková marža';

  @override
  String get labelNetMargin => 'Čistá marža';

  @override
  String get labelRoe => 'Rentabilita vlastného kapitálu';

  @override
  String get labelRoa => 'Rentabilita aktív';

  @override
  String get labelDebtToEquity => 'Dlh / vlastný kapitál';

  @override
  String get labelCurrentRatio => 'Bežná likvidita';

  @override
  String get labelRevenueGrowth => 'Rast tržieb (YoY)';

  @override
  String get labelEpsGrowth => 'Rast EPS (YoY)';

  @override
  String get labelDividendYield => 'Dividendový výnos';

  @override
  String get labelDividendPerShare => 'Dividenda na akciu';

  @override
  String get labelPayoutRatio => 'Výplatný pomer';

  @override
  String get labelConsensus => 'Konsenzus';

  @override
  String get ratingStrongBuy => 'Rozhodne kúpiť';

  @override
  String get ratingBuy => 'Kúpiť';

  @override
  String get ratingHold => 'Držať';

  @override
  String get ratingSell => 'Predať';

  @override
  String get ratingStrongSell => 'Rozhodne predať';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analytikov',
      many: '$count analytika',
      few: '$count analytici',
      one: '1 analytik',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Obdobie: $period';
  }

  @override
  String get noNews => 'Žiadne aktuálne správy.';

  @override
  String get openArticle => 'Otvoriť článok';

  @override
  String get openLinkFailed => 'Odkaz sa nepodarilo otvoriť.';

  @override
  String get recognitionSummary => 'Zhrnutie';

  @override
  String get recognitionEvidence => 'Prečo si to myslíme';

  @override
  String get recognitionRawText => 'Text prečítaný z obrázka';

  @override
  String get errMissingAnthropicKey =>
      'Rozpoznávanie obrázkov nie je nastavené (chýba ANTHROPIC_API_KEY). Zadajte ticker manuálne.';

  @override
  String get errRecognitionUnreachable =>
      'Nepodarilo sa pripojiť k službe rozpoznávania. Skontrolujte pripojenie na internet.';

  @override
  String errRecognitionHttp(String status) {
    return 'Služba rozpoznávania vrátila chybu (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Služba rozpoznávania nedokázala tento obrázok spracovať.';

  @override
  String get errRecognitionTruncated =>
      'Odpoveď služby rozpoznávania bola skrátená. Skúste to znova.';

  @override
  String get errRecognitionBadResponse =>
      'Neočakávaná odpoveď služby rozpoznávania.';

  @override
  String get errRecognitionEmpty =>
      'Služba rozpoznávania vrátila prázdnu odpoveď.';

  @override
  String get errMissingFinnhubKey =>
      'Trhové údaje nie sú nastavené (chýba FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Nepodarilo sa pripojiť k službe trhových údajov. Skontrolujte pripojenie na internet.';

  @override
  String get errMarketRateLimited =>
      'Príliš veľa požiadaviek na službu trhových údajov. Počkajte prosím minútu.';

  @override
  String errMarketHttp(String status) {
    return 'Služba trhových údajov vrátila chybu (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Neočakávaná odpoveď služby trhových údajov.';

  @override
  String errNoQuote(String symbol) {
    return 'Pre $symbol sa nenašli žiadne cenové údaje.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Pre $symbol sa nenašiel profil spoločnosti.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Demo režim podporuje iba $symbols. Pre živé údaje pridajte FINNHUB_API_KEY.';
  }

  @override
  String errUnknown(String detail) {
    return 'Niečo sa pokazilo: $detail';
  }

  @override
  String get newSearch => 'Nové vyhľadávanie';

  @override
  String get recentSearches => 'Nedávne';

  @override
  String get noRecentSearches => 'Zatiaľ žiadne nedávne vyhľadávania.';

  @override
  String get clearRecent => 'Vymazať nedávne';

  @override
  String get greeting => 'Na ktorú akciu sa pozrieme?';

  @override
  String get searchHint => 'Ticker alebo názov spoločnosti';

  @override
  String get attachImage => 'Priložiť obrázok';

  @override
  String get searchResultsTitle => 'Výsledky vyhľadávania';

  @override
  String errNoResults(String query) {
    return 'Pre „$query“ sa nenašli žiadne akcie.';
  }

  @override
  String get quickBarHint => 'Zadajte ticker alebo názov spoločnosti…';

  @override
  String get openFullWindow => 'Otvoriť okno';

  @override
  String hotkeyHint(String shortcut) {
    return 'Stlačte $shortcut kdekoľvek a vyvolajte WhatStock.';
  }

  @override
  String get trayOpen => 'Otvoriť WhatStock';

  @override
  String get trayQuickSearch => 'Rýchle vyhľadávanie';

  @override
  String get trayQuit => 'Ukončiť';

  @override
  String get appearance => 'Vzhľad';

  @override
  String get themeSystem => 'Systémový';

  @override
  String get themeDark => 'Tmavý';

  @override
  String get themeLight => 'Svetlý';

  @override
  String get back => 'Späť';

  @override
  String get aiSectionTitle => 'AI analýza';

  @override
  String get aiIntro =>
      'Podrobný prehľad napísaný AI: zhrnutie aktuálnych správ, podnikanie, silné stránky, riziká a skryté faktory, ocenenie, výhľad ceny so scenármi z psychologického, sociologického, technického a makroekonomického hľadiska a čo sledovať.';

  @override
  String get aiGenerate => 'Vygenerovať analýzu';

  @override
  String get aiRegenerate => 'Vygenerovať znova';

  @override
  String get aiGenerating =>
      'Pripravujem analýzu… môže to trvať minútu či dve.';

  @override
  String get aiSources => 'Zdroje';

  @override
  String aiGeneratedAt(String time) {
    return 'Vygenerované $time';
  }

  @override
  String get aiDisclaimer =>
      'Analýza vygenerovaná AI na základe verejných údajov a aktuálnych správ. Môže obsahovať chyby alebo byť zastaraná a nie je investičným odporúčaním.';

  @override
  String get errAiNotConfigured =>
      'AI analýza nie je nastavená (chýba ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Nepodarilo sa pripojiť k službe AI. Skontrolujte pripojenie na internet.';

  @override
  String errAiHttp(String status) {
    return 'Služba AI vrátila chybu (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Služba AI odmietla túto akciu analyzovať.';

  @override
  String get errAiBadResponse => 'Neočakávaná odpoveď služby AI.';

  @override
  String get sectionChart => 'Graf ceny';

  @override
  String get rangeOneWeek => '1T';

  @override
  String get rangeOneMonth => '1M';

  @override
  String get rangeThreeMonths => '3M';

  @override
  String get rangeOneYear => '1R';

  @override
  String get rangeFiveYears => '5R';

  @override
  String get chartUnavailable =>
      'História cien nie je v aktuálnom zdroji údajov k dispozícii.';

  @override
  String get sectionStatements => 'Finančné výkazy (ročné)';

  @override
  String get labelFiscalYear => 'Fiškálny rok';

  @override
  String get labelRevenue => 'Tržby';

  @override
  String get labelNetIncome => 'Čistý zisk';

  @override
  String get labelTotalAssets => 'Aktíva spolu';

  @override
  String get labelTotalLiabilities => 'Záväzky spolu';

  @override
  String get labelEquity => 'Vlastný kapitál';

  @override
  String get labelOperatingCashFlow => 'Prevádzkový peňažný tok';

  @override
  String get statementsUnavailable =>
      'Pre túto akciu nie sú k dispozícii vykázané finančné výkazy.';

  @override
  String get launchAtLogin => 'Spustiť pri prihlásení';

  @override
  String get hotkeyLabel => 'Globálna skratka';

  @override
  String get hotkeyRecordHint =>
      'Kliknite sem a potom stlačte novú kombináciu klávesov';

  @override
  String get hotkeyReset => 'Obnoviť predvolené';

  @override
  String get pasteImage => 'Prilepiť obrázok zo schránky';

  @override
  String get errClipboardNoImage => 'V schránke nie je žiadny obrázok.';

  @override
  String get favorites => 'Obľúbené';

  @override
  String get addToFavorites => 'Pridať do obľúbených';

  @override
  String get removeFromFavorites => 'Odstrániť z obľúbených';

  @override
  String get noFavorites =>
      'Zatiaľ žiadne obľúbené. Ťuknite na hviezdičku pri akcii a pridajte ju.';

  @override
  String get displayCurrency => 'Mena zobrazenia';

  @override
  String get displayCurrencyNone => 'Iba vlastná mena akcie';

  @override
  String labelConverted(String currency) {
    return '≈ v $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Kurz: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Aktualizácie';

  @override
  String currentVersion(String version) {
    return 'Verzia $version';
  }

  @override
  String get autoUpdate => 'Inštalovať aktualizácie automaticky';

  @override
  String get checkForUpdates => 'Skontrolovať aktualizácie';

  @override
  String get updateChecking => 'Kontrola aktualizácií…';

  @override
  String get updateUpToDate => 'Máte najnovšiu verziu.';

  @override
  String updateAvailable(String version) {
    return 'Je k dispozícii verzia $version.';
  }

  @override
  String get updateDownloading => 'Aktualizácia sa sťahuje na pozadí…';

  @override
  String get updateDownloaded =>
      'Aktualizácia je pripravená. Reštartujte aplikáciu a nainštalujte ju.';

  @override
  String get updateNow => 'Aktualizovať';

  @override
  String get restartNow => 'Reštartovať';

  @override
  String get updatesViaStore =>
      'Aktualizácie prichádzajú automaticky prostredníctvom obchodu s aplikáciami.';

  @override
  String get updateCheckFailed => 'Aktualizácie sa nepodarilo skontrolovať.';

  @override
  String get subscription => 'Predplatné';

  @override
  String get planTrial => 'Skúšobný';

  @override
  String get planNormal => 'Štandard';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Žiadny aktívny tarif';

  @override
  String planAnalysesPerMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analýz mesačne',
      many: '$count analýzy mesačne',
      few: '$count analýzy mesačne',
      one: '1 analýza mesačne',
    );
    return '$_temp0';
  }

  @override
  String planTrialDescription(int days, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Bezplatná skúšobná verzia na $days dní s $count analýzami',
      one: 'Bezplatná skúšobná verzia na $days dní s 1 analýzou',
    );
    return '$_temp0';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Zostáva $days dní skúšobnej verzie',
      many: 'Zostáva $days dňa skúšobnej verzie',
      few: 'Zostávajú $days dni skúšobnej verzie',
      one: 'Zostáva 1 deň skúšobnej verzie',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Vaša bezplatná skúšobná verzia sa skončila. Vyberte si tarif a pokračujte v analýzach.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'V tomto období zostáva $remaining z $total analýz';
  }

  @override
  String extraCredits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analýz navyše',
      many: '$count analýzy navyše',
      few: '$count analýzy navyše',
      one: '1 analýza navyše',
    );
    return '$_temp0';
  }

  @override
  String renewsOn(String date) {
    return 'Obnoví sa $date';
  }

  @override
  String get choosePlan => 'Vyberte tarif';

  @override
  String get currentPlan => 'Aktuálny tarif';

  @override
  String get subscribe => 'Predplatiť';

  @override
  String get perMonth => '/ mesiac';

  @override
  String get extraPacksTitle => 'Potrebujete viac? Kúpte si analýzy navyše';

  @override
  String get extraPacksHint =>
      'Analýzy navyše nikdy nevypršia a použijú sa po vyčerpaní mesačného limitu.';

  @override
  String get buy => 'Kúpiť';

  @override
  String get restorePurchases => 'Obnoviť nákupy';

  @override
  String get manageSubscription => 'Spravovať predplatné';

  @override
  String get purchaseSuccess => 'Ďakujeme! Váš nákup je aktívny.';

  @override
  String get purchasePending => 'Nákup čaká na spracovanie…';

  @override
  String get purchaseFailed => 'Nákup sa nepodarilo dokončiť.';

  @override
  String get purchaseCanceled => 'Nákup bol zrušený.';

  @override
  String get billingUnavailable =>
      'Nákupy na tejto platforme zatiaľ nie sú dostupné. Predplaťte si tarif na telefóne alebo Macu; bude fungovať na všetkých zariadeniach.';

  @override
  String get errQuotaExceeded =>
      'V tomto období vám nezostávajú žiadne analýzy. Prejdite na vyšší tarif alebo si kúpte analýzy navyše.';

  @override
  String get errTrialExpired =>
      'Vaša bezplatná skúšobná verzia sa skončila. Vyberte si tarif a pokračujte.';

  @override
  String get errNoPlan => 'Na AI analýzu je potrebný aktívny tarif.';

  @override
  String get viewPlans => 'Zobraziť tarify';

  @override
  String get usageTitle => 'Využitie';

  @override
  String get demoPurchaseNote =>
      'Demo platby: nákupy sú na tejto platforme iba simulované.';

  @override
  String get mostPopular => 'Najobľúbenejší';

  @override
  String get bestValue => 'Najvýhodnejší';

  @override
  String get planFeaturesCommon =>
      'Rozpoznávanie fotiek, živé dáta, grafy, obľúbené a všetkých 120 jazykov sú súčasťou každého tarifu. Limit sa vzťahuje na AI analýzy.';

  @override
  String get searchLanguages => 'Hľadať jazyky…';

  @override
  String get noLanguageMatch => 'Žiadny jazyk nezodpovedá.';

  @override
  String get aiSettings => 'AI analýza';

  @override
  String get aiLength => 'Dĺžka';

  @override
  String get aiDepthBrief => 'Stručne';

  @override
  String get aiDepthStandard => 'Štandardne';

  @override
  String get aiDepthDeep => 'Podrobne';

  @override
  String get aiDepthBriefDesc => 'To podstatné, rýchlo.';

  @override
  String get aiDepthStandardDesc => 'Úplná správa so všetkými časťami.';

  @override
  String get aiDepthDeepDesc =>
      'Viac vyhľadávaní na webe, porovnanie s konkurenciou a hlbšie detaily.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Približne $min–$max slov';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'spotrebuje $count analýz',
      many: 'spotrebuje $count analýzy',
      few: 'spotrebuje $count analýzy',
      one: 'spotrebuje $count analýzu',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Úroveň čitateľa';

  @override
  String get aiReaderBeginner => 'Začiatočník';

  @override
  String get aiReaderExperienced => 'Skúsený';

  @override
  String get aiReaderBeginnerDesc =>
      'Jednoduchý jazyk; každý odborný pojem je vysvetlený.';

  @override
  String get aiReaderExperiencedDesc =>
      'Hutnejší text so štandardnou finančnou terminológiou.';

  @override
  String get aiCounterArgument => 'Najsilnejší protiargument';

  @override
  String get aiCounterArgumentDesc =>
      'Zhrnutie vždy končí najsilnejším argumentom proti vlastnému záveru.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'S vaším tarifom až $count vyhľadávaní na webe pre každú analýzu',
      many: 'S vaším tarifom až $count vyhľadávania na webe pre každú analýzu',
      few: 'S vaším tarifom až $count vyhľadávania na webe pre každú analýzu',
      one: 'S vaším tarifom až $count vyhľadávanie na webe pre každú analýzu',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Štandardná dĺžka podľa tarifu: Štandard $normal, Pro $pro, Max $max, Ultra $ultra. „Stručne“ o 2 menej, „Podrobne“ o 2 viac.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'až $count vyhľadávaní na webe',
      many: 'až $count vyhľadávania na webe',
      few: 'až $count vyhľadávania na webe',
      one: 'až $count vyhľadávanie na webe',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count vyhľadávaní na webe pre každú analýzu',
      many: '$count vyhľadávania na webe pre každú analýzu',
      few: '$count vyhľadávania na webe pre každú analýzu',
      one: '$count vyhľadávanie na webe pre každú analýzu',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Táto dĺžka vyžaduje analýz: $needed, zostáva vám však len: $left. Zvoľte v Nastaveniach kratšiu dĺžku alebo si zaobstarajte ďalšie analýzy.';
  }

  @override
  String get outlookMarketMood => 'Nálada na trhu';

  @override
  String get moodVeryPessimistic => 'Veľmi pesimistická';

  @override
  String get moodPessimistic => 'Pesimistická';

  @override
  String get moodNeutral => 'Neutrálna';

  @override
  String get moodOptimistic => 'Optimistická';

  @override
  String get moodVeryOptimistic => 'Veľmi optimistická';

  @override
  String get scenarioBull => 'Optimistický scenár';

  @override
  String get scenarioBase => 'Základný scenár';

  @override
  String get scenarioBear => 'Pesimistický scenár';

  @override
  String outlookCurrentPrice(String price) {
    return 'Aktuálna cena: $price';
  }

  @override
  String get outlookKeyLevels => 'Kľúčové úrovne';

  @override
  String get keyLevelSupport => 'Podpora';

  @override
  String get keyLevelResistance => 'Odpor';

  @override
  String get keyLevelAnchor => 'Cenová kotva';

  @override
  String get upcomingEvents => 'Nadchádzajúce udalosti';

  @override
  String get outlookChartNote =>
      'Orientačné rozpätia; pravdepodobnosti sú hrubé odhady, nie predpovede.';

  @override
  String get accountTitle => 'Účet';

  @override
  String get signIn => 'Prihlásiť sa';

  @override
  String get signOut => 'Odhlásiť sa';

  @override
  String get notSignedIn => 'Neprihlásený';

  @override
  String get accountBenefit =>
      'Prihláste sa, aby vaše predplatné fungovalo na všetkých vašich zariadeniach.';

  @override
  String get accountSyncedNote =>
      'Vaše predplatné a zostávajúce analýzy sú rovnaké na každom zariadení.';

  @override
  String get signInTitle => 'Prihlásenie do WhatStock';

  @override
  String get emailLabel => 'E-mailová adresa';

  @override
  String get continueWithEmail => 'Pokračovať cez e-mail';

  @override
  String codeSentTo(String email) {
    return 'Na adresu $email sme poslali 6-miestny kód. Platí 10 minút.';
  }

  @override
  String get codeLabel => 'Prihlasovací kód';

  @override
  String get resendCode => 'Poslať nový kód';

  @override
  String get useDifferentEmail => 'Použiť iný e-mail';

  @override
  String get errInvalidCode => 'Kód je nesprávny alebo mu vypršala platnosť.';

  @override
  String get errInvalidEmail => 'Zadajte platnú e-mailovú adresu.';

  @override
  String get errSignInFailed =>
      'Prihlásenie zlyhalo. Skontrolujte pripojenie na internet a skúste to znova.';

  @override
  String get checkoutWaiting =>
      'Dokončite platbu v prehliadači. Aplikácia sa po jej dokončení automaticky aktualizuje.';

  @override
  String get paymentViaStripe =>
      'Bezpečná platba v prehliadači cez Stripe. Zrušiť môžete kedykoľvek.';

  @override
  String get paymentViaStore =>
      'Účtované cez váš účet App Store alebo Google Play. Zrušiť môžete kedykoľvek v nastaveniach obchodu.';

  @override
  String get keySpace => 'Medzerník';

  @override
  String get doubleOptionTitle => 'Dvojité stlačenie Option';

  @override
  String get doubleOptionSubtitle =>
      'WhatStock vyvoláte aj rýchlym dvojitým stlačením klávesu Option.';

  @override
  String get doubleOptionPermission =>
      'Aby to fungovalo aj v iných aplikáciách, povoľte WhatStock v Systémových nastaveniach → Súkromie a bezpečnosť → Monitorovanie vstupu a potom aplikáciu znova otvorte.';

  @override
  String get openSystemSettings => 'Otvoriť Systémové nastavenia';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Stlačte $shortcut alebo dvakrát stlačte Option kdekoľvek a vyvolajte WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Najpravdepodobnejší';

  @override
  String get longTermToday => 'Dnes';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years rokov',
      many: '$years roka',
      few: '$years roky',
      one: '1 rok',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range ročne';
  }

  @override
  String longTermLikely(String price) {
    return 'najpravdepodobnejšie $price';
  }

  @override
  String get confidenceLow => 'Nízka istota';

  @override
  String get confidenceMedium => 'Stredná istota';

  @override
  String get confidenceHigh => 'Vysoká istota';

  @override
  String get longTermNote =>
      'Dlhodobé pásma vychádzajú z uvedených predpokladov a s časom sa rozširujú. Ceny bez dividend. Hrubé odhady, nie predpovede.';

  @override
  String get portfolio => 'Portfólio';

  @override
  String get portfolioEmpty =>
      'Zatiaľ prázdne. Otvorte akciu a ťuknite na „Pridať do portfólia“, aby ste mohli sledovať, čo vlastníte.';

  @override
  String get portfolioLocalNote =>
      'Ukladá sa iba v tomto zariadení. Súčty sa prepočítavajú referenčnými kurzami ECB; ceny môžu byť oneskorené.';

  @override
  String get addToPortfolio => 'Pridať do portfólia';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Pridať $symbol';
  }

  @override
  String get portfolioQuantity => 'Počet akcií';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Cena za akciu ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Dátum nákupu';

  @override
  String get portfolioAdd => 'Pridať';

  @override
  String get portfolioInvalidNumber => 'Zadajte číslo väčšie ako nula.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol bola pridaná do portfólia.';
  }

  @override
  String get portfolioTotalValue => 'Celková hodnota';

  @override
  String get portfolioToday => 'Dnes';

  @override
  String get portfolioGainLoss => 'Zisk/strata';

  @override
  String get portfolioInvested => 'Investované';

  @override
  String get portfolioAllocation => 'Rozloženie';

  @override
  String get portfolioPositions => 'Pozície';

  @override
  String portfolioAvgCost(String price) {
    return 'priem. nákupná cena $price';
  }

  @override
  String get portfolioYourPosition => 'Vaša pozícia';

  @override
  String get portfolioPurchases => 'Nákupy';

  @override
  String get portfolioRemove => 'Odstrániť';

  @override
  String get portfolioExcluded =>
      'Pozície bez ceny alebo výmenného kurzu nie sú zahrnuté v súčtoch.';

  @override
  String get priceAlerts => 'Cenové upozornenia';

  @override
  String get setPriceAlert => 'Nastaviť cenové upozornenie';

  @override
  String alertDialogTitle(String symbol) {
    return 'Cenové upozornenie · $symbol';
  }

  @override
  String get alertKindAbove => 'Vystúpi nad';

  @override
  String get alertKindBelow => 'Klesne pod';

  @override
  String get alertKindMove => 'Výrazne sa pohne počas dňa';

  @override
  String alertTargetPrice(String currency) {
    return 'Cena ($currency)';
  }

  @override
  String get alertMovePercent => 'Denný pohyb (%)';

  @override
  String get alertAlreadyMet => 'Cena už túto úroveň prekročila.';

  @override
  String get alertSave => 'Nastaviť upozornenie';

  @override
  String alertCreated(String symbol) {
    return 'Upozornenie pre $symbol je nastavené.';
  }

  @override
  String get alertsEmpty =>
      'Zatiaľ žiadne upozornenia. Otvorte akciu a ťuknite na zvonček.';

  @override
  String get alertsNote =>
      'Upozornenia sa kontrolujú každých 5 minút, kým WhatStock beží. Na počítači aplikácia ďalej beží v lište ponuky alebo v oblasti oznámení; v telefóne zatiaľ upozorní, len keď je aplikácia otvorená.';

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
    return 'Denný pohyb ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Spustené $date pri $price';
  }

  @override
  String get alertRearm => 'Znova aktivovať';

  @override
  String get alertDelete => 'Odstrániť';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol vystúpila nad $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol klesla pod $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol sa dnes pohla o $percent';
  }

  @override
  String alertHitBody(String price) {
    return 'Aktuálna cena: $price';
  }

  @override
  String get alertOpen => 'Otvoriť';

  @override
  String get keepInTrayTitle => 'Bežať aj po zatvorení okna';

  @override
  String get keepInTraySubtitle =>
      'WhatStock zostane v lište ponuky alebo v oblasti oznámení, takže klávesová skratka aj cenové upozornenia ďalej fungujú.';

  @override
  String get termsOfUse => 'Podmienky používania';

  @override
  String get privacyPolicy => 'Zásady ochrany osobných údajov';

  @override
  String get subscriptionLegal =>
      'Predplatné sa každý mesiac automaticky obnovuje, kým ho nezrušíte. Predplatením súhlasíte s Podmienkami používania a Zásadami ochrany osobných údajov.';

  @override
  String get deleteAccount => 'Odstrániť účet';

  @override
  String get deleteAccountTitle => 'Odstrániť váš účet?';

  @override
  String get deleteAccountBody =>
      'Váš účet a všetko, čo máme uložené na serveri (e-mail, limit, využitie), bude natrvalo odstránené a nevyužité analýzy prepadnú. Predplatné platené v prehliadači hneď zrušíme; predplatné z App Store alebo Google Play treba zrušiť v nastaveniach obchodu.';

  @override
  String get deleteLocalData =>
      'Odstrániť aj údaje v tomto zariadení (portfólio, upozornenia, obľúbené, história, uložené analýzy)';

  @override
  String get deleteAccountConfirm => 'Natrvalo odstrániť';

  @override
  String get accountDeleted => 'Váš účet bol odstránený.';

  @override
  String get errDeleteAccount =>
      'Účet sa nepodarilo odstrániť. Skontrolujte pripojenie a skúste to znova.';

  @override
  String get aiTrialBriefNote =>
      'Skúšobné analýzy sú stručné a vytvára ich rýchlejší model AI. S tarifom získate náš najvýkonnejší model AI, viac vyhľadávaní na webe a štandardnú aj podrobnú dĺžku.';

  @override
  String get billingMonthly => 'Mesačne';

  @override
  String get billingYearly => 'Ročne';

  @override
  String get yearlyDiscount => '2 mesiace zadarmo';

  @override
  String get perYear => '/ rok';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price mesačne';
  }

  @override
  String get subscriptionLegalYearly =>
      'Ročné predplatné sa každý rok automaticky obnovuje, kým ho nezrušíte. Predplatením súhlasíte s Podmienkami používania a Zásadami ochrany osobných údajov.';

  @override
  String get myAnalyses => 'Moje analýzy';

  @override
  String get navAlerts => 'Upozornenia';

  @override
  String get inviteTitle => 'Uzavretá ukážka';

  @override
  String get inviteBody =>
      'WhatStock je zatiaľ dostupný iba na pozvanie. Zadajte kód pozvánky, ktorý ste dostali.';

  @override
  String get inviteCodeLabel => 'Kód pozvánky';

  @override
  String get inviteContinue => 'Pokračovať';

  @override
  String get inviteInvalid => 'Tento kód pozvánky nie je platný.';

  @override
  String get inviteExpired =>
      'Platnosť tejto pozvánky vypršala. Požiadajte osobu, ktorá vás pozvala, o nový kód.';

  @override
  String get inviteDeviceLimit =>
      'Tento kód pozvánky sa už používa na maximálnom počte zariadení.';

  @override
  String get previewConfidential => 'Dôverná ukážka';

  @override
  String get errPreviewDailyLimit =>
      'Dnešný limit analýz tejto ukážky bol vyčerpaný. Skúste to znova zajtra.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'pred $count hodinami',
      many: 'pred $count hodiny',
      few: 'pred $count hodinami',
      one: 'pred hodinou',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'pred $count dňami',
      many: 'pred $count dňa',
      few: 'pred $count dňami',
      one: 'pred dňom',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Aktualizovať túto analýzu?';

  @override
  String staleBody(String age) {
    return 'Vznikla $age. Ceny, správy a výsledky sa odvtedy mohli zmeniť.';
  }

  @override
  String get staleKeep => 'Zobraziť predchádzajúcu';

  @override
  String get staleRefresh => 'Vytvoriť novú';

  @override
  String seeAll(int count) {
    return 'Zobraziť všetky ($count)';
  }

  @override
  String get searchAnalyses => 'Hľadať v analýzach';

  @override
  String get deleteAnalysis => 'Odstrániť';

  @override
  String analysisDeleted(String symbol) {
    return 'Analýza $symbol bola odstránená';
  }

  @override
  String get keyLevelAlertHint =>
      'Ťuknite na úroveň a dostanete upozornenie, keď ju cena dosiahne.';

  @override
  String get shareAnalysisTitle => 'Zdieľať analýzu';

  @override
  String get shareAsImage => 'Zdieľať ako obrázok';

  @override
  String get shareAsText => 'Zdieľať ako text';

  @override
  String get shareCardFooter => 'Vytvorené pomocou WhatStock';

  @override
  String get shareCardDisclaimer =>
      'AI analýza · nie je investičné odporúčanie';

  @override
  String get referralTitle => 'Pozvi priateľov';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analýz navyše',
      many: '$count analýzy navyše',
      few: '$count analýzy navyše',
      one: '1 analýzu navyše',
    );
    return 'Zdieľaj svoj kód. Priateľ hneď dostane $_temp0 a ty to isté po prvej analýze priateľa.';
  }

  @override
  String get referralYourCode => 'Tvoj kód';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Pozvaní: $invited · Odmenení: $rewarded';
  }

  @override
  String get referralHaveCode => 'Máš kód od priateľa?';

  @override
  String get referralRedeem => 'Uplatniť';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Pridaných $count analýz navyše. Vitaj!',
      many: 'Pridané $count analýzy navyše. Vitaj!',
      few: 'Pridané $count analýzy navyše. Vitaj!',
      one: 'Pridaná 1 analýza navyše. Vitaj!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Tento kód neexistuje. Skontroluj ho a skús to znova.';

  @override
  String get referralErrOwn => 'Nemôžeš uplatniť vlastný kód.';

  @override
  String get referralErrAlready =>
      'Na tomto účte už bol uplatnený kód od priateľa.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analýz navyše',
      many: '$count analýzy navyše',
      few: '$count analýzy navyše',
      one: '1 analýzu navyše',
    );
    return 'Analyzujem akcie vo WhatStock: odfoť akciu a AI ti ju vysvetlí. S mojím kódom $code dostaneš $_temp0.';
  }

  @override
  String get referralCopied => 'Kód skopírovaný';

  @override
  String get onboardTitle1 => 'Odfoťte akciu';

  @override
  String get onboardBody1 =>
      'Stačí obrazovka brokerskej aplikácie, noviny alebo logo firmy: WhatStock rozpozná akciu a ukáže vám jej cenu, graf a kľúčové ukazovatele.';

  @override
  String get onboardTitle2 => 'Pochopte ju za pár minút';

  @override
  String get onboardBody2 =>
      'AI analýza vysvetľuje, čo hýbe akciou, aké sú riziká a ocenenie, a ponúka tri scenáre, kam sa môže cena pohnúť – so zdrojmi a vo vašom jazyku.';

  @override
  String get onboardTitle3 => 'Buďte stále v obraze';

  @override
  String get onboardBody3 =>
      'Obľúbené, vaše portfólio a cenové upozornenia vás držia v obraze. Vaše analýzy zostávajú vo vašom zariadení, pripravené na opätovné otvorenie.';

  @override
  String get onboardNext => 'Ďalej';

  @override
  String get onboardStart => 'Začať';

  @override
  String get onboardSkip => 'Preskočiť';

  @override
  String changesTitle(String date) {
    return 'Od predchádzajúcej analýzy ($date)';
  }

  @override
  String get changesPrice => 'Cena';

  @override
  String get changesNoMajor => 'Výhľad sa podstatne nezmenil.';

  @override
  String get changesPreviousSummary => 'Predchádzajúce zhrnutie';

  @override
  String get telemetryTitle => 'Pomôž vylepšiť WhatStock';

  @override
  String get telemetryBody =>
      'Zdieľaj anonymné štatistiky používania a hlásenia o zlyhaní: ktoré funkcie sa používajú a čo sa pokazilo. Nikdy nie tvoje akcie, analýzy ani osobné údaje. Môžeš to kedykoľvek zmeniť v Nastaveniach.';

  @override
  String get telemetryAllow => 'Povoliť';

  @override
  String get telemetryDecline => 'Nie, ďakujem';

  @override
  String get telemetrySetting => 'Anonymné štatistiky a hlásenia o zlyhaní';

  @override
  String get telemetrySettingHint =>
      'Ako často sa používajú funkcie a hlásenia o chybách – bez osobných údajov či obsahu tvojich vyhľadávaní a analýz.';

  @override
  String get askButton => 'Opýtať sa na túto analýzu';

  @override
  String askTitle(String symbol) {
    return 'Otázky k $symbol';
  }

  @override
  String get askIntro =>
      'Pýtajte sa na čokoľvek z analýzy: čo znamená určité riziko, čo by mohlo zmeniť výhľad, ako sa vypočítalo určité číslo. Odpovede vychádzajú z tejto analýzy a nie sú investičným odporúčaním.';

  @override
  String get askHint => 'Položte otázku…';

  @override
  String get askSend => 'Odoslať';

  @override
  String get askThinking => 'Premýšľam…';

  @override
  String get askSuggest1 => 'Aké je najväčšie riziko?';

  @override
  String get askSuggest2 => 'Čo by mohlo zmeniť výhľad?';

  @override
  String get askSuggest3 => 'Vysvetli to jednoducho';

  @override
  String get askMaxReached =>
      'To bola posledná otázka k tejto analýze. Ak sa chcete pýtať ďalej, vygenerujte novú analýzu.';

  @override
  String get errAskLimit =>
      'Dosiahli ste dnešný limit otázok. Skúste to znova zajtra.';

  @override
  String get eventTomorrow => 'Zajtra';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'o $days dní',
      many: 'o $days dňa',
      few: 'o $days dni',
      one: 'o $days deň',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Štvrťročné výsledky';

  @override
  String get eventBeforeOpen => 'pred otvorením trhu';

  @override
  String get eventAfterClose => 'po zatvorení trhu';

  @override
  String eventEpsEstimate(String value) {
    return 'Odhad EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Z tvojej analýzy';

  @override
  String get eventsHint =>
      'Dátumy výsledkov tvojich obľúbených akcií a akcií v portfóliu na najbližších 90 dní a udalosti s dátumom, ktoré označili tvoje analýzy.';

  @override
  String get eventsEmpty =>
      'V najbližších 90 dňoch nie sú žiadne udalosti s dátumom. Pridaj obľúbené alebo akcie do portfólia a uvidíš tu dátumy ich výsledkov.';

  @override
  String get compareTitle => 'Porovnanie';

  @override
  String get compareAdd => 'Pridať akciu';

  @override
  String get compareRemove => 'Odstrániť';

  @override
  String get compareTickerHint => 'Ticker, napr. MSFT';

  @override
  String get compareHint =>
      'Kľúčové ukazovatele vedľa seba; najlepšia hodnota v každom riadku je zvýraznená. Sumy sú v mene danej akcie.';

  @override
  String get compareNoAnalysis => 'Zatiaľ bez analýzy';

  @override
  String get portfolioDividends => 'Ročné dividendy';

  @override
  String portfolioDividendYield(String percent) {
    return 'Výnos $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Očakávané ročné dividendy vychádzajú z dividend vyplatených za posledných 12 mesiacov; budúce výplaty nie sú zaručené.';

  @override
  String positionDividend(String amount) {
    return 'Dividenda: $amount ročne';
  }

  @override
  String get chartAvgCost => 'Váš priemer';

  @override
  String get chartAlertLevel => 'Upozornenie';

  @override
  String get marketsToday => 'Trhy dnes';

  @override
  String get notesTitle => 'Moje poznámky';

  @override
  String get notesHint =>
      'Prečo ste ju kúpili, čo sledujete, čo by vás prinútilo predať?';

  @override
  String get notesInfo =>
      'Ukladá sa iba v tomto zariadení. AI analýza berie vaše poznámky do úvahy.';

  @override
  String notesSaved(String date) {
    return 'Uložené $date';
  }

  @override
  String get peersTitle => 'Podobné spoločnosti';

  @override
  String get portfolioExport => 'Exportovať do CSV';

  @override
  String get portfolioImport => 'Importovať z CSV';

  @override
  String get portfolioImportHint =>
      'Vlož jeden nákup na riadok: ticker, množstvo, cena, mena, dátum (RRRR-MM-DD). Stĺpce môžu byť oddelené čiarkami, bodkočiarkami alebo tabulátormi; riadok hlavičky je nepovinný.';

  @override
  String get portfolioImportButton => 'Importovať';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Pridaných $count nákupov',
      many: 'Pridané $count nákupu',
      few: 'Pridané $count nákupy',
      one: 'Pridaný 1 nákup',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Preskočených $count riadkov',
      many: 'Preskočené $count riadku',
      few: 'Preskočené $count riadky',
      one: 'Preskočený 1 riadok',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Portfólio, obľúbené, cenové upozornenia a poznámky sa synchronizujú na všetkých vašich zariadeniach.';

  @override
  String syncLast(String time) {
    return 'Posledná synchronizácia: $time';
  }

  @override
  String get syncNow => 'Synchronizovať teraz';

  @override
  String get syncFailed =>
      'Synchronizácia zlyhala. Automaticky sa skúsi znova.';

  @override
  String get alertEmailTitle => 'E-mail pri spustení upozornenia';

  @override
  String get alertEmailOn =>
      'Vaše upozornenia kontrolujeme každých pár minút a pošleme vám e-mail, aj keď je aplikácia zatvorená.';

  @override
  String get alertEmailSignIn =>
      'Prihláste sa e-mailom v Nastaveniach a upozornenia vám budeme posielať e-mailom, aj keď je aplikácia zatvorená.';

  @override
  String get portfolioHistory => 'Vývoj hodnoty';

  @override
  String get portfolioReviewTitle => 'AI analýza portfólia';

  @override
  String get portfolioReviewIntro =>
      'AI prejde celé vaše portfólio: koncentráciu, expozíciu voči sektorom a menám, riziká spoločné pre vaše akcie a dividendy. Spotrebuje 1 analýzu.';

  @override
  String get portfolioReviewButton => 'Analyzovať moje portfólio';

  @override
  String get portfolioReviewAgain => 'Analyzovať znova';

  @override
  String get portfolioReviewWorking => 'Analyzujem vaše portfólio…';

  @override
  String get digestTitle => 'Týždenný súhrn e-mailom';

  @override
  String get digestHint =>
      'Každý pondelok: ako sa minulý týždeň vyvíjali vaše obľúbené a portfólio a najbližšie dátumy ich výsledkov.';
}
