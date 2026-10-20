// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppLocalizationsCs extends AppLocalizations {
  AppLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'Vyfoťte akcii a zjistěte o ní vše.';

  @override
  String get homeHint =>
      'Akciový certifikát, obrazovka brokerské aplikace, noviny nebo logo firmy – cokoli, co akcii identifikuje.';

  @override
  String get takePhoto => 'Vyfotit';

  @override
  String get chooseFromGallery => 'Vybrat z galerie';

  @override
  String get chooseImage => 'Vybrat obrázek';

  @override
  String get enterTickerManually => 'Zadat ticker ručně';

  @override
  String get tickerInputLabel => 'Ticker';

  @override
  String get tickerInputHint => 'např. AAPL';

  @override
  String get lookUp => 'Vyhledat';

  @override
  String demoModeBanner(String symbols) {
    return 'Demo režim – klíč k tržním datům není nastaven. Ukázková data jsou k dispozici pro: $symbols.';
  }

  @override
  String get recognizing => 'Analyzuji obrázek…';

  @override
  String get loadingData => 'Načítám data…';

  @override
  String get noCandidatesTitle => 'Akcie nebyla rozpoznána';

  @override
  String get noCandidatesBody =>
      'Na tomto obrázku se nepodařilo identifikovat akcii. Zkuste ostřejší fotografii nebo zadejte ticker ručně.';

  @override
  String get whatWeSaw => 'Co jsme viděli';

  @override
  String get chooseCandidateTitle => 'Kterou akcii jste měli na mysli?';

  @override
  String confidencePercent(int percent) {
    return 'Jistota $percent %';
  }

  @override
  String get settings => 'Nastavení';

  @override
  String get language => 'Jazyk';

  @override
  String get systemLanguage => 'Výchozí systémový';

  @override
  String get about => 'O aplikaci';

  @override
  String get disclaimer =>
      'Tato aplikace poskytuje pouze informace a není investičním doporučením. Data mohou být opožděná nebo nepřesná.';

  @override
  String dataSource(String source) {
    return 'Zdroj dat: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Rozpoznávání: $source';
  }

  @override
  String get retry => 'Zkusit znovu';

  @override
  String get cancel => 'Zrušit';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Zavřít';

  @override
  String get errorGeneric => 'Něco se pokazilo.';

  @override
  String get errorSectionUnavailable => 'Tuto sekci se nepodařilo načíst.';

  @override
  String get notAvailable => 'n/a';

  @override
  String get sectionIdentity => 'Identifikace';

  @override
  String get sectionPrice => 'Cena';

  @override
  String get sectionValuation => 'Ocenění';

  @override
  String get sectionFinancials => 'Finance';

  @override
  String get sectionDividend => 'Dividenda';

  @override
  String get sectionProfile => 'Profil společnosti';

  @override
  String get sectionAnalysts => 'Hodnocení analytiků';

  @override
  String get sectionNews => 'Zprávy';

  @override
  String get sectionRecognition => 'Podrobnosti rozpoznávání';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Burza';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Měna';

  @override
  String get labelCountry => 'Země';

  @override
  String get labelIndustry => 'Odvětví';

  @override
  String get labelSector => 'Sektor';

  @override
  String get labelWebsite => 'Web';

  @override
  String get labelIpoDate => 'Datum IPO';

  @override
  String get labelMarketCap => 'Tržní kapitalizace';

  @override
  String get labelSharesOutstanding => 'Akcie v oběhu';

  @override
  String get labelEmployees => 'Zaměstnanci';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Sídlo';

  @override
  String get labelDescription => 'Popis';

  @override
  String get labelLastPrice => 'Poslední cena';

  @override
  String get labelChange => 'Změna';

  @override
  String get labelOpen => 'Otevírací cena';

  @override
  String get labelDayHigh => 'Denní maximum';

  @override
  String get labelDayLow => 'Denní minimum';

  @override
  String get labelPreviousClose => 'Předchozí závěr';

  @override
  String get labelWeek52High => '52týdenní maximum';

  @override
  String get labelWeek52Low => '52týdenní minimum';

  @override
  String get labelAverageVolume10d => 'Prům. objem (10 dní)';

  @override
  String updatedAt(String time) {
    return 'Aktualizováno $time';
  }

  @override
  String get labelPeTrailing => 'P/E (historické)';

  @override
  String get labelPeForward => 'P/E (očekávané)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / volný peněžní tok';

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
  String get labelGrossMargin => 'Hrubá marže';

  @override
  String get labelOperatingMargin => 'Provozní marže';

  @override
  String get labelNetMargin => 'Čistá marže';

  @override
  String get labelRoe => 'Rentabilita vlastního kapitálu';

  @override
  String get labelRoa => 'Rentabilita aktiv';

  @override
  String get labelDebtToEquity => 'Dluh / vlastní kapitál';

  @override
  String get labelCurrentRatio => 'Běžná likvidita';

  @override
  String get labelRevenueGrowth => 'Růst tržeb (YoY)';

  @override
  String get labelEpsGrowth => 'Růst EPS (YoY)';

  @override
  String get labelDividendYield => 'Dividendový výnos';

  @override
  String get labelDividendPerShare => 'Dividenda na akcii';

  @override
  String get labelPayoutRatio => 'Výplatní poměr';

  @override
  String get labelConsensus => 'Konsenzus';

  @override
  String get ratingStrongBuy => 'Rozhodně koupit';

  @override
  String get ratingBuy => 'Koupit';

  @override
  String get ratingHold => 'Držet';

  @override
  String get ratingSell => 'Prodat';

  @override
  String get ratingStrongSell => 'Rozhodně prodat';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analytiků',
      many: '$count analytika',
      few: '$count analytici',
      one: '1 analytik',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Období: $period';
  }

  @override
  String get noNews => 'Žádné aktuální zprávy.';

  @override
  String get openArticle => 'Otevřít článek';

  @override
  String get openLinkFailed => 'Odkaz se nepodařilo otevřít.';

  @override
  String get recognitionSummary => 'Shrnutí';

  @override
  String get recognitionEvidence => 'Proč si to myslíme';

  @override
  String get recognitionRawText => 'Text přečtený z obrázku';

  @override
  String get errMissingAnthropicKey =>
      'Rozpoznávání obrázků není nastaveno (chybí ANTHROPIC_API_KEY). Zadejte ticker ručně.';

  @override
  String get errRecognitionUnreachable =>
      'Nepodařilo se připojit ke službě rozpoznávání. Zkontrolujte připojení k internetu.';

  @override
  String errRecognitionHttp(String status) {
    return 'Služba rozpoznávání vrátila chybu (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Služba rozpoznávání nedokázala tento obrázek zpracovat.';

  @override
  String get errRecognitionTruncated =>
      'Odpověď služby rozpoznávání byla zkrácena. Zkuste to znovu.';

  @override
  String get errRecognitionBadResponse =>
      'Neočekávaná odpověď služby rozpoznávání.';

  @override
  String get errRecognitionEmpty =>
      'Služba rozpoznávání vrátila prázdnou odpověď.';

  @override
  String get errMissingFinnhubKey =>
      'Tržní data nejsou nastavena (chybí FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Nepodařilo se připojit ke službě tržních dat. Zkontrolujte připojení k internetu.';

  @override
  String get errMarketRateLimited =>
      'Příliš mnoho požadavků na službu tržních dat. Počkejte prosím minutu.';

  @override
  String errMarketHttp(String status) {
    return 'Služba tržních dat vrátila chybu (HTTP $status).';
  }

  @override
  String get errMarketBadResponse => 'Neočekávaná odpověď služby tržních dat.';

  @override
  String errNoQuote(String symbol) {
    return 'Pro $symbol nebyla nalezena žádná cenová data.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Pro $symbol nebyl nalezen profil společnosti.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Demo režim podporuje pouze $symbols. Pro živá data přidejte FINNHUB_API_KEY.';
  }

  @override
  String errUnknown(String detail) {
    return 'Něco se pokazilo: $detail';
  }

  @override
  String get newSearch => 'Nové hledání';

  @override
  String get recentSearches => 'Nedávné';

  @override
  String get noRecentSearches => 'Zatím žádná nedávná hledání.';

  @override
  String get clearRecent => 'Vymazat nedávné';

  @override
  String get greeting => 'Na kterou akcii se podíváme?';

  @override
  String get searchHint => 'Ticker nebo název společnosti';

  @override
  String get attachImage => 'Připojit obrázek';

  @override
  String get searchResultsTitle => 'Výsledky hledání';

  @override
  String errNoResults(String query) {
    return 'Pro „$query“ nebyly nalezeny žádné akcie.';
  }

  @override
  String get quickBarHint => 'Zadejte ticker nebo název společnosti…';

  @override
  String get openFullWindow => 'Otevřít okno';

  @override
  String hotkeyHint(String shortcut) {
    return 'Stiskněte $shortcut kdekoli a vyvolejte WhatStock.';
  }

  @override
  String get trayOpen => 'Otevřít WhatStock';

  @override
  String get trayQuickSearch => 'Rychlé hledání';

  @override
  String get trayQuit => 'Ukončit';

  @override
  String get appearance => 'Vzhled';

  @override
  String get themeSystem => 'Systémový';

  @override
  String get themeDark => 'Tmavý';

  @override
  String get themeLight => 'Světlý';

  @override
  String get back => 'Zpět';

  @override
  String get aiSectionTitle => 'AI analýza';

  @override
  String get aiIntro =>
      'Podrobný přehled napsaný AI: shrnutí aktuálních zpráv, podnikání, silné stránky, rizika a skryté faktory, ocenění, výhled ceny se scénáři z psychologického, sociologického, technického a makroekonomického hlediska a co sledovat.';

  @override
  String get aiGenerate => 'Vygenerovat analýzu';

  @override
  String get aiRegenerate => 'Vygenerovat znovu';

  @override
  String get aiGenerating => 'Připravuji analýzu… může to trvat minutu či dvě.';

  @override
  String get aiSources => 'Zdroje';

  @override
  String aiGeneratedAt(String time) {
    return 'Vygenerováno $time';
  }

  @override
  String get aiDisclaimer =>
      'Analýza vygenerovaná AI na základě veřejných dat a aktuálních zpráv. Může obsahovat chyby nebo být zastaralá a není investičním doporučením.';

  @override
  String get errAiNotConfigured =>
      'AI analýza není nastavena (chybí ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Nepodařilo se připojit ke službě AI. Zkontrolujte připojení k internetu.';

  @override
  String errAiHttp(String status) {
    return 'Služba AI vrátila chybu (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Služba AI odmítla tuto akcii analyzovat.';

  @override
  String get errAiBadResponse => 'Neočekávaná odpověď služby AI.';

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
  String get rangeFiveYears => '5L';

  @override
  String get chartUnavailable =>
      'Historie cen není v aktuálním zdroji dat k dispozici.';

  @override
  String get sectionStatements => 'Finanční výkazy (roční)';

  @override
  String get labelFiscalYear => 'Fiskální rok';

  @override
  String get labelRevenue => 'Tržby';

  @override
  String get labelNetIncome => 'Čistý zisk';

  @override
  String get labelTotalAssets => 'Aktiva celkem';

  @override
  String get labelTotalLiabilities => 'Závazky celkem';

  @override
  String get labelEquity => 'Vlastní kapitál';

  @override
  String get labelOperatingCashFlow => 'Provozní peněžní tok';

  @override
  String get statementsUnavailable =>
      'Pro tuto akcii nejsou k dispozici vykázané finanční výkazy.';

  @override
  String get launchAtLogin => 'Spustit při přihlášení';

  @override
  String get hotkeyLabel => 'Globální zkratka';

  @override
  String get hotkeyRecordHint =>
      'Klikněte sem a poté stiskněte novou kombinaci kláves';

  @override
  String get hotkeyReset => 'Obnovit výchozí';

  @override
  String get pasteImage => 'Vložit obrázek ze schránky';

  @override
  String get errClipboardNoImage => 'Ve schránce není žádný obrázek.';

  @override
  String get favorites => 'Oblíbené';

  @override
  String get addToFavorites => 'Přidat do oblíbených';

  @override
  String get removeFromFavorites => 'Odebrat z oblíbených';

  @override
  String get noFavorites =>
      'Zatím žádné oblíbené. Klepněte na hvězdičku u akcie a přidejte ji.';

  @override
  String get displayCurrency => 'Měna zobrazení';

  @override
  String get displayCurrencyNone => 'Pouze vlastní měna akcie';

  @override
  String labelConverted(String currency) {
    return '≈ v $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Kurz: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Aktualizace';

  @override
  String currentVersion(String version) {
    return 'Verze $version';
  }

  @override
  String get autoUpdate => 'Instalovat aktualizace automaticky';

  @override
  String get checkForUpdates => 'Zkontrolovat aktualizace';

  @override
  String get updateChecking => 'Kontrola aktualizací…';

  @override
  String get updateUpToDate => 'Máte nejnovější verzi.';

  @override
  String updateAvailable(String version) {
    return 'Je k dispozici verze $version.';
  }

  @override
  String get updateDownloading => 'Aktualizace se stahuje na pozadí…';

  @override
  String get updateDownloaded =>
      'Aktualizace je připravena. Restartujte aplikaci a nainstalujte ji.';

  @override
  String get updateNow => 'Aktualizovat';

  @override
  String get restartNow => 'Restartovat';

  @override
  String get updatesViaStore =>
      'Aktualizace přicházejí automaticky prostřednictvím obchodu s aplikacemi.';

  @override
  String get updateCheckFailed => 'Aktualizace se nepodařilo zkontrolovat.';

  @override
  String get subscription => 'Předplatné';

  @override
  String get planTrial => 'Zkušební';

  @override
  String get planNormal => 'Standard';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Žádný aktivní tarif';

  @override
  String planAnalysesPerMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analýz měsíčně',
      many: '$count analýzy měsíčně',
      few: '$count analýzy měsíčně',
      one: '1 analýza měsíčně',
    );
    return '$_temp0';
  }

  @override
  String planTrialDescription(int days, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Bezplatná zkušební verze na $days dní s $count analýzami',
      one: 'Bezplatná zkušební verze na $days dní s 1 analýzou',
    );
    return '$_temp0';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Zbývá $days dní zkušební verze',
      many: 'Zbývá $days dne zkušební verze',
      few: 'Zbývají $days dny zkušební verze',
      one: 'Zbývá 1 den zkušební verze',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Vaše bezplatná zkušební verze skončila. Vyberte si tarif a pokračujte v analýzách.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'V tomto období zbývá $remaining z $total analýz';
  }

  @override
  String extraCredits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analýz navíc',
      many: '$count analýzy navíc',
      few: '$count analýzy navíc',
      one: '1 analýza navíc',
    );
    return '$_temp0';
  }

  @override
  String renewsOn(String date) {
    return 'Obnoví se $date';
  }

  @override
  String get choosePlan => 'Vyberte tarif';

  @override
  String get currentPlan => 'Aktuální tarif';

  @override
  String get subscribe => 'Předplatit';

  @override
  String get perMonth => '/ měsíc';

  @override
  String get extraPacksTitle => 'Potřebujete víc? Kupte si analýzy navíc';

  @override
  String get extraPacksHint =>
      'Analýzy navíc nikdy nevyprší a použijí se po vyčerpání měsíčního limitu.';

  @override
  String get buy => 'Koupit';

  @override
  String get restorePurchases => 'Obnovit nákupy';

  @override
  String get manageSubscription => 'Spravovat předplatné';

  @override
  String get purchaseSuccess => 'Děkujeme! Váš nákup je aktivní.';

  @override
  String get purchasePending => 'Nákup čeká na vyřízení…';

  @override
  String get purchaseFailed => 'Nákup se nepodařilo dokončit.';

  @override
  String get purchaseCanceled => 'Nákup byl zrušen.';

  @override
  String get billingUnavailable =>
      'Nákupy na této platformě zatím nejsou dostupné. Předplaťte si tarif na telefonu nebo Macu; bude fungovat na všech zařízeních.';

  @override
  String get errQuotaExceeded =>
      'V tomto období vám nezbývají žádné analýzy. Přejděte na vyšší tarif nebo si kupte analýzy navíc.';

  @override
  String get errTrialExpired =>
      'Vaše bezplatná zkušební verze skončila. Vyberte si tarif a pokračujte.';

  @override
  String get errNoPlan => 'Pro AI analýzu je potřeba aktivní tarif.';

  @override
  String get viewPlans => 'Zobrazit tarify';

  @override
  String get usageTitle => 'Využití';

  @override
  String get demoPurchaseNote =>
      'Demo platby: nákupy jsou na této platformě pouze simulované.';

  @override
  String get mostPopular => 'Nejoblíbenější';

  @override
  String get bestValue => 'Nejvýhodnější';

  @override
  String get planFeaturesCommon =>
      'Rozpoznávání fotek, živá data, grafy, oblíbené a všech 120 jazyků jsou součástí každého tarifu. Limit se vztahuje na AI analýzy.';

  @override
  String get searchLanguages => 'Hledat jazyky…';

  @override
  String get noLanguageMatch => 'Žádný jazyk neodpovídá.';

  @override
  String get aiSettings => 'AI analýza';

  @override
  String get aiLength => 'Délka';

  @override
  String get aiDepthBrief => 'Stručně';

  @override
  String get aiDepthStandard => 'Standardně';

  @override
  String get aiDepthDeep => 'Podrobně';

  @override
  String get aiDepthBriefDesc => 'To podstatné, rychle.';

  @override
  String get aiDepthStandardDesc => 'Úplná zpráva se všemi oddíly.';

  @override
  String get aiDepthDeepDesc =>
      'Více vyhledávání na webu, srovnání s konkurencí a hlubší detail.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Přibližně $min–$max slov';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'spotřebuje $count analýz',
      many: 'spotřebuje $count analýzy',
      few: 'spotřebuje $count analýzy',
      one: 'spotřebuje $count analýzu',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Úroveň čtenáře';

  @override
  String get aiReaderBeginner => 'Začátečník';

  @override
  String get aiReaderExperienced => 'Zkušený';

  @override
  String get aiReaderBeginnerDesc =>
      'Srozumitelný jazyk; každý odborný termín je vysvětlen.';

  @override
  String get aiReaderExperiencedDesc =>
      'Hutnější text se standardní finanční terminologií.';

  @override
  String get aiCounterArgument => 'Nejsilnější protiargument';

  @override
  String get aiCounterArgumentDesc =>
      'Shrnutí vždy končí nejsilnějším argumentem proti vlastnímu závěru.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'S vaším tarifem až $count vyhledávání na webu pro každou analýzu',
      many: 'S vaším tarifem až $count vyhledávání na webu pro každou analýzu',
      few: 'S vaším tarifem až $count vyhledávání na webu pro každou analýzu',
      one: 'S vaším tarifem až $count vyhledávání na webu pro každou analýzu',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Standardní délka podle tarifu: Standard $normal, Pro $pro, Max $max, Ultra $ultra. „Stručně“ o 2 méně, „Podrobně“ o 2 více.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'až $count vyhledávání na webu',
      many: 'až $count vyhledávání na webu',
      few: 'až $count vyhledávání na webu',
      one: 'až $count vyhledávání na webu',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count vyhledávání na webu pro každou analýzu',
      many: '$count vyhledávání na webu pro každou analýzu',
      few: '$count vyhledávání na webu pro každou analýzu',
      one: '$count vyhledávání na webu pro každou analýzu',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Tato délka vyžaduje analýz: $needed, zbývá vám však jen: $left. Zvolte v Nastavení kratší délku nebo si pořiďte další analýzy.';
  }

  @override
  String get outlookMarketMood => 'Nálada na trhu';

  @override
  String get moodVeryPessimistic => 'Velmi pesimistická';

  @override
  String get moodPessimistic => 'Pesimistická';

  @override
  String get moodNeutral => 'Neutrální';

  @override
  String get moodOptimistic => 'Optimistická';

  @override
  String get moodVeryOptimistic => 'Velmi optimistická';

  @override
  String get scenarioBull => 'Optimistický scénář';

  @override
  String get scenarioBase => 'Základní scénář';

  @override
  String get scenarioBear => 'Pesimistický scénář';

  @override
  String outlookCurrentPrice(String price) {
    return 'Aktuální cena: $price';
  }

  @override
  String get outlookKeyLevels => 'Klíčové úrovně';

  @override
  String get keyLevelSupport => 'Podpora';

  @override
  String get keyLevelResistance => 'Odpor';

  @override
  String get keyLevelAnchor => 'Cenová kotva';

  @override
  String get upcomingEvents => 'Nadcházející události';

  @override
  String get outlookChartNote =>
      'Orientační rozpětí; pravděpodobnosti jsou hrubé odhady, nikoli předpovědi.';

  @override
  String get accountTitle => 'Účet';

  @override
  String get signIn => 'Přihlásit se';

  @override
  String get signOut => 'Odhlásit se';

  @override
  String get notSignedIn => 'Nepřihlášeno';

  @override
  String get accountBenefit =>
      'Přihlaste se, aby vaše předplatné fungovalo na všech vašich zařízeních.';

  @override
  String get accountSyncedNote =>
      'Vaše předplatné a zbývající analýzy jsou stejné na každém zařízení.';

  @override
  String get signInTitle => 'Přihlášení do WhatStock';

  @override
  String get emailLabel => 'E-mailová adresa';

  @override
  String get continueWithEmail => 'Pokračovat přes e-mail';

  @override
  String codeSentTo(String email) {
    return 'Na adresu $email jsme poslali 6místný kód. Platí 10 minut.';
  }

  @override
  String get codeLabel => 'Přihlašovací kód';

  @override
  String get resendCode => 'Poslat nový kód';

  @override
  String get useDifferentEmail => 'Použít jiný e-mail';

  @override
  String get errInvalidCode => 'Kód je nesprávný nebo vypršela jeho platnost.';

  @override
  String get errInvalidEmail => 'Zadejte platnou e-mailovou adresu.';

  @override
  String get errSignInFailed =>
      'Přihlášení se nezdařilo. Zkontrolujte připojení k internetu a zkuste to znovu.';

  @override
  String get checkoutWaiting =>
      'Dokončete platbu v prohlížeči. Aplikace se po jejím dokončení automaticky aktualizuje.';

  @override
  String get paymentViaStripe =>
      'Bezpečná platba v prohlížeči přes Stripe. Zrušit můžete kdykoli.';

  @override
  String get paymentViaStore =>
      'Účtováno přes váš účet App Store nebo Google Play. Zrušit můžete kdykoli v nastavení obchodu.';

  @override
  String get keySpace => 'Mezerník';

  @override
  String get doubleOptionTitle => 'Dvojité stisknutí Option';

  @override
  String get doubleOptionSubtitle =>
      'WhatStock vyvoláte také rychlým dvojitým stisknutím klávesy Option.';

  @override
  String get doubleOptionPermission =>
      'Aby to fungovalo i v jiných aplikacích, povolte WhatStock v Nastavení systému → Soukromí a zabezpečení → Sledování vstupu a poté aplikaci znovu otevřete.';

  @override
  String get openSystemSettings => 'Otevřít Nastavení systému';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Stiskněte $shortcut nebo dvakrát stiskněte Option kdekoli a vyvolejte WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Nejpravděpodobnější';

  @override
  String get longTermToday => 'Dnes';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years let',
      many: '$years roku',
      few: '$years roky',
      one: '1 rok',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range ročně';
  }

  @override
  String longTermLikely(String price) {
    return 'nejpravděpodobněji $price';
  }

  @override
  String get confidenceLow => 'Nízká jistota';

  @override
  String get confidenceMedium => 'Střední jistota';

  @override
  String get confidenceHigh => 'Vysoká jistota';

  @override
  String get longTermNote =>
      'Dlouhodobá pásma vycházejí z uvedených předpokladů a s časem se rozšiřují. Ceny bez dividend. Hrubé odhady, nikoli předpovědi.';

  @override
  String get portfolio => 'Portfolio';

  @override
  String get portfolioEmpty =>
      'Zatím prázdné. Otevřete akcii a klepněte na „Přidat do portfolia“, abyste mohli sledovat, co vlastníte.';

  @override
  String get portfolioLocalNote =>
      'Ukládá se pouze v tomto zařízení. Součty se přepočítávají referenčními kurzy ECB; ceny mohou být zpožděné.';

  @override
  String get addToPortfolio => 'Přidat do portfolia';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Přidat $symbol';
  }

  @override
  String get portfolioQuantity => 'Počet akcií';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Cena za akcii ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Datum nákupu';

  @override
  String get portfolioAdd => 'Přidat';

  @override
  String get portfolioInvalidNumber => 'Zadejte číslo větší než nula.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol byla přidána do portfolia.';
  }

  @override
  String get portfolioTotalValue => 'Celková hodnota';

  @override
  String get portfolioToday => 'Dnes';

  @override
  String get portfolioGainLoss => 'Zisk/ztráta';

  @override
  String get portfolioInvested => 'Investováno';

  @override
  String get portfolioAllocation => 'Rozložení';

  @override
  String get portfolioPositions => 'Pozice';

  @override
  String portfolioAvgCost(String price) {
    return 'prům. nákupní cena $price';
  }

  @override
  String get portfolioYourPosition => 'Vaše pozice';

  @override
  String get portfolioPurchases => 'Nákupy';

  @override
  String get portfolioRemove => 'Odebrat';

  @override
  String get portfolioExcluded =>
      'Pozice bez ceny nebo směnného kurzu nejsou v součtech zahrnuty.';

  @override
  String get priceAlerts => 'Cenová upozornění';

  @override
  String get setPriceAlert => 'Nastavit cenové upozornění';

  @override
  String alertDialogTitle(String symbol) {
    return 'Cenové upozornění · $symbol';
  }

  @override
  String get alertKindAbove => 'Vystoupá nad';

  @override
  String get alertKindBelow => 'Klesne pod';

  @override
  String get alertKindMove => 'Výrazně se pohne během dne';

  @override
  String alertTargetPrice(String currency) {
    return 'Cena ($currency)';
  }

  @override
  String get alertMovePercent => 'Denní pohyb (%)';

  @override
  String get alertAlreadyMet => 'Cena už tuto úroveň překročila.';

  @override
  String get alertSave => 'Nastavit upozornění';

  @override
  String alertCreated(String symbol) {
    return 'Upozornění pro $symbol je nastaveno.';
  }

  @override
  String get alertsEmpty =>
      'Zatím žádná upozornění. Otevřete akcii a klepněte na zvonek.';

  @override
  String get alertsNote =>
      'Upozornění se kontrolují každých 5 minut, dokud WhatStock běží. Na počítači aplikace dál běží v řádku nabídek nebo v oznamovací oblasti; v telefonu zatím upozorní, jen když je aplikace otevřená.';

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
    return 'Denní pohyb ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Spuštěno $date při $price';
  }

  @override
  String get alertRearm => 'Znovu aktivovat';

  @override
  String get alertDelete => 'Smazat';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol vystoupala nad $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol klesla pod $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol se dnes pohnula o $percent';
  }

  @override
  String alertHitBody(String price) {
    return 'Aktuální cena: $price';
  }

  @override
  String get alertOpen => 'Otevřít';

  @override
  String get keepInTrayTitle => 'Běžet i po zavření okna';

  @override
  String get keepInTraySubtitle =>
      'WhatStock zůstane v řádku nabídek nebo v oznamovací oblasti, takže klávesová zkratka i cenová upozornění dál fungují.';

  @override
  String get termsOfUse => 'Podmínky používání';

  @override
  String get privacyPolicy => 'Zásady ochrany osobních údajů';

  @override
  String get subscriptionLegal =>
      'Předplatné se každý měsíc automaticky obnovuje, dokud ho nezrušíte. Předplacením souhlasíte s Podmínkami používání a Zásadami ochrany osobních údajů.';

  @override
  String get deleteAccount => 'Smazat účet';

  @override
  String get deleteAccountTitle => 'Smazat váš účet?';

  @override
  String get deleteAccountBody =>
      'Váš účet a vše, co máme uložené na serveru (e-mail, limit, využití), bude trvale smazáno a nevyužité analýzy propadnou. Předplatné placené v prohlížeči hned zrušíme; předplatné z App Storu nebo Google Play je třeba zrušit v nastavení obchodu.';

  @override
  String get deleteLocalData =>
      'Smazat i data v tomto zařízení (portfolio, upozornění, oblíbené, historie, uložené analýzy)';

  @override
  String get deleteAccountConfirm => 'Trvale smazat';

  @override
  String get accountDeleted => 'Váš účet byl smazán.';

  @override
  String get errDeleteAccount =>
      'Účet se nepodařilo smazat. Zkontrolujte připojení a zkuste to znovu.';

  @override
  String get aiTrialBriefNote =>
      'Zkušební analýzy jsou stručné a vytváří je rychlejší model AI. S tarifem získáte naši nejschopnější AI, více vyhledávání na webu a délky Standardně a Podrobně.';

  @override
  String get billingMonthly => 'Měsíčně';

  @override
  String get billingYearly => 'Ročně';

  @override
  String get yearlyDiscount => '2 měsíce zdarma';

  @override
  String get perYear => '/ rok';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price měsíčně';
  }

  @override
  String get subscriptionLegalYearly =>
      'Roční předplatné se každý rok automaticky obnovuje, dokud ho nezrušíte. Předplacením souhlasíte s Podmínkami používání a Zásadami ochrany osobních údajů.';

  @override
  String get myAnalyses => 'Moje analýzy';

  @override
  String get navAlerts => 'Upozornění';

  @override
  String get inviteTitle => 'Uzavřená předběžná verze';

  @override
  String get inviteBody =>
      'WhatStock je zatím dostupný jen na pozvánku. Zadejte kód z pozvánky, který jste obdrželi.';

  @override
  String get inviteCodeLabel => 'Kód pozvánky';

  @override
  String get inviteContinue => 'Pokračovat';

  @override
  String get inviteInvalid => 'Tento kód pozvánky není platný.';

  @override
  String get inviteExpired =>
      'Platnost této pozvánky vypršela. Požádejte o nový kód osobu, která vás pozvala.';

  @override
  String get inviteDeviceLimit =>
      'Tento kód pozvánky se už používá na maximálním počtu zařízení.';

  @override
  String get previewConfidential => 'Důvěrná předběžná verze';

  @override
  String get errPreviewDailyLimit =>
      'Dnešní limit analýz této předběžné verze byl vyčerpán. Zkuste to znovu zítra.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'před $count hodinami',
      many: 'před $count hodiny',
      few: 'před $count hodinami',
      one: 'před 1 hodinou',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'před $count dny',
      many: 'před $count dne',
      few: 'před $count dny',
      one: 'před 1 dnem',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Aktualizovat tuto analýzu?';

  @override
  String staleBody(String age) {
    return 'Byla vytvořena $age. Ceny, zprávy a výsledky se od té doby mohly změnit.';
  }

  @override
  String get staleKeep => 'Zobrazit dřívější';

  @override
  String get staleRefresh => 'Vytvořit novou';

  @override
  String seeAll(int count) {
    return 'Zobrazit vše ($count)';
  }

  @override
  String get searchAnalyses => 'Hledat v analýzách';

  @override
  String get deleteAnalysis => 'Smazat';

  @override
  String analysisDeleted(String symbol) {
    return 'Analýza $symbol smazána';
  }

  @override
  String get keyLevelAlertHint =>
      'Klepněte na úroveň a dostanete upozornění, až jí cena dosáhne.';

  @override
  String get shareAnalysisTitle => 'Sdílet analýzu';

  @override
  String get shareAsImage => 'Sdílet jako obrázek';

  @override
  String get shareAsText => 'Sdílet jako text';

  @override
  String get shareCardFooter => 'Vytvořeno pomocí WhatStock';

  @override
  String get shareCardDisclaimer => 'AI analýza · není investiční doporučení';

  @override
  String get referralTitle => 'Pozvěte přátele';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analýz navíc',
      many: '$count analýzy navíc',
      few: '$count analýzy navíc',
      one: '1 analýzu navíc',
    );
    return 'Sdílejte svůj kód. Váš přítel hned získá $_temp0 a vy totéž po jeho první analýze.';
  }

  @override
  String get referralYourCode => 'Váš kód';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Pozváno: $invited · Odměněno: $rewarded';
  }

  @override
  String get referralHaveCode => 'Máte kód od přítele?';

  @override
  String get referralRedeem => 'Uplatnit';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Přidáno $count analýz navíc. Vítejte!',
      many: 'Přidáno $count analýzy navíc. Vítejte!',
      few: 'Přidány $count analýzy navíc. Vítejte!',
      one: 'Přidána 1 analýza navíc. Vítejte!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Tento kód neexistuje. Zkontrolujte ho a zkuste to znovu.';

  @override
  String get referralErrOwn => 'Vlastní kód nemůžete uplatnit.';

  @override
  String get referralErrAlready => 'Kód od přítele jste už uplatnili.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analýz navíc',
      many: '$count analýzy navíc',
      few: '$count analýzy navíc',
      one: '1 analýzu navíc',
    );
    return 'Analyzuji akcie s WhatStock: vyfoťte akcii a AI vám ji vysvětlí. S mým kódem $code získáte $_temp0.';
  }

  @override
  String get referralCopied => 'Kód zkopírován';

  @override
  String get onboardTitle1 => 'Vyfoťte akcii';

  @override
  String get onboardBody1 =>
      'Stačí obrazovka brokerské aplikace, noviny nebo logo firmy: WhatStock akcii rozpozná a ukáže její cenu, graf a klíčové ukazatele.';

  @override
  String get onboardTitle2 => 'Pochopte ji za pár minut';

  @override
  String get onboardBody2 =>
      'AI analýza vysvětlí, co akcií hýbe, jaká má rizika a ocenění, a nabídne tři scénáře, kam se může cena vydat – se zdroji a ve vašem jazyce.';

  @override
  String get onboardTitle3 => 'Mějte vše pod kontrolou';

  @override
  String get onboardBody3 =>
      'Oblíbené, vaše portfolio a cenová upozornění vás udrží v obraze. Vaše analýzy zůstávají ve vašem zařízení, připravené k opětovnému otevření.';

  @override
  String get onboardNext => 'Další';

  @override
  String get onboardStart => 'Začít';

  @override
  String get onboardSkip => 'Přeskočit';

  @override
  String changesTitle(String date) {
    return 'Od předchozí analýzy ($date)';
  }

  @override
  String get changesPrice => 'Cena';

  @override
  String get changesNoMajor => 'Výhled se podstatně nezměnil.';

  @override
  String get changesPreviousSummary => 'Předchozí shrnutí';

  @override
  String get telemetryTitle => 'Pomozte vylepšit WhatStock';

  @override
  String get telemetryBody =>
      'Sdílejte anonymní statistiky používání a zprávy o selhání: které funkce se používají a co se pokazilo. Nikdy vaše akcie, analýzy ani osobní údaje. Můžete to kdykoli změnit v Nastavení.';

  @override
  String get telemetryAllow => 'Povolit';

  @override
  String get telemetryDecline => 'Ne, děkuji';

  @override
  String get telemetrySetting => 'Anonymní statistiky a zprávy o selhání';

  @override
  String get telemetrySettingHint =>
      'Jak často se funkce používají a hlášení chyb – bez osobních údajů a obsahu vašich vyhledávání a analýz.';

  @override
  String get askButton => 'Zeptat se na tuto analýzu';

  @override
  String askTitle(String symbol) {
    return 'Otázky k $symbol';
  }

  @override
  String get askIntro =>
      'Zeptejte se na cokoli k analýze: co znamená určité riziko, co by změnilo výhled, jak bylo spočítáno nějaké číslo. Odpovědi vycházejí z této analýzy a nejsou investičním doporučením.';

  @override
  String get askHint => 'Napište otázku…';

  @override
  String get askSend => 'Odeslat';

  @override
  String get askThinking => 'Přemýšlím…';

  @override
  String get askSuggest1 => 'Jaké je největší riziko?';

  @override
  String get askSuggest2 => 'Co by změnilo výhled?';

  @override
  String get askSuggest3 => 'Vysvětli to jednoduše';

  @override
  String get askMaxReached =>
      'To byla poslední otázka k této analýze. Pokud se chcete zeptat na víc, vytvořte novou analýzu.';

  @override
  String get errAskLimit =>
      'Dosáhli jste dnešního limitu otázek. Zkuste to prosím znovu zítra.';

  @override
  String get eventTomorrow => 'Zítra';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'za $days dní',
      many: 'za $days dne',
      few: 'za $days dny',
      one: 'za 1 den',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Čtvrtletní výsledky';

  @override
  String get eventBeforeOpen => 'před otevřením trhu';

  @override
  String get eventAfterClose => 'po uzavření trhu';

  @override
  String eventEpsEstimate(String value) {
    return 'Odhad EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Z vaší analýzy';

  @override
  String get eventsHint =>
      'Termíny výsledků vašich oblíbených akcií a akcií v portfoliu na příštích 90 dní a události s datem, které označily vaše analýzy.';

  @override
  String get eventsEmpty =>
      'V příštích 90 dnech nejsou žádné události s datem. Přidejte oblíbené akcie nebo akcie do portfolia a uvidíte zde termíny jejich výsledků.';

  @override
  String get compareTitle => 'Porovnání';

  @override
  String get compareAdd => 'Přidat akcii';

  @override
  String get compareRemove => 'Odebrat';

  @override
  String get compareTickerHint => 'Ticker, např. MSFT';

  @override
  String get compareHint =>
      'Klíčové ukazatele vedle sebe; nejlepší hodnota v každém řádku je zvýrazněna. Částky jsou ve vlastní měně každé akcie.';

  @override
  String get compareNoAnalysis => 'Zatím žádná analýza';

  @override
  String get portfolioDividends => 'Roční dividendy';

  @override
  String portfolioDividendYield(String percent) {
    return 'Výnos $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Očekávané roční dividendy vycházejí z dividend vyplacených za posledních 12 měsíců; budoucí výplaty nejsou zaručené.';

  @override
  String positionDividend(String amount) {
    return 'Dividenda: $amount ročně';
  }

  @override
  String get chartAvgCost => 'Váš průměr';

  @override
  String get chartAlertLevel => 'Upozornění';

  @override
  String get marketsToday => 'Trhy dnes';

  @override
  String get notesTitle => 'Moje poznámky';

  @override
  String get notesHint =>
      'Proč jste ji koupili, co sledujete, co by vás přimělo prodat?';

  @override
  String get notesInfo =>
      'Ukládá se pouze v tomto zařízení. AI analýza bere vaše poznámky v úvahu.';

  @override
  String notesSaved(String date) {
    return 'Uloženo $date';
  }

  @override
  String get peersTitle => 'Podobné společnosti';

  @override
  String get portfolioExport => 'Exportovat jako CSV';

  @override
  String get portfolioImport => 'Importovat z CSV';

  @override
  String get portfolioImportHint =>
      'Vložte jeden nákup na řádek: ticker, množství, cena, měna, datum (RRRR-MM-DD). Sloupce mohou být oddělené čárkami, středníky nebo tabulátory; řádek se záhlavím je nepovinný.';

  @override
  String get portfolioImportButton => 'Importovat';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Přidáno $count nákupů',
      many: 'Přidáno $count nákupu',
      few: 'Přidány $count nákupy',
      one: 'Přidán 1 nákup',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Přeskočeno $count řádků',
      many: 'Přeskočeno $count řádku',
      few: 'Přeskočeny $count řádky',
      one: 'Přeskočen 1 řádek',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Portfolio, oblíbené, cenová upozornění a poznámky se synchronizují na všech vašich zařízeních.';

  @override
  String syncLast(String time) {
    return 'Poslední synchronizace: $time';
  }

  @override
  String get syncNow => 'Synchronizovat nyní';

  @override
  String get syncFailed =>
      'Synchronizace se nezdařila. Automaticky se zkusí znovu.';

  @override
  String get alertEmailTitle => 'E-mail při spuštění upozornění';

  @override
  String get alertEmailOn =>
      'Vaše upozornění kontrolujeme každých pár minut a pošleme vám e-mail, i když je aplikace zavřená.';

  @override
  String get alertEmailSignIn =>
      'Přihlaste se e-mailem v Nastavení a upozornění vám budeme posílat e-mailem, i když je aplikace zavřená.';

  @override
  String get portfolioHistory => 'Vývoj hodnoty';

  @override
  String get portfolioReviewTitle => 'AI analýza portfolia';

  @override
  String get portfolioReviewIntro =>
      'AI projde celé vaše portfolio: koncentraci, expozici vůči sektorům a měnám, rizika společná vašim akciím a dividendy. Spotřebuje 1 analýzu.';

  @override
  String get portfolioReviewButton => 'Analyzovat moje portfolio';

  @override
  String get portfolioReviewAgain => 'Analyzovat znovu';

  @override
  String get portfolioReviewWorking => 'Analyzuji vaše portfolio…';

  @override
  String get digestTitle => 'Týdenní souhrn e-mailem';

  @override
  String get digestHint =>
      'Každé pondělí: jak se minulý týden vyvíjely vaše oblíbené a portfolio a nejbližší data jejich výsledků.';

  @override
  String get benchmarkTitle => 'Srovnání s S&P 500';

  @override
  String get benchmarkYours => 'Vaše nákupy';

  @override
  String get benchmarkIndex => 'Stejné částky v S&P 500';

  @override
  String benchmarkAhead(String points) {
    return 'O $points p. b. lépe než index';
  }

  @override
  String benchmarkBehind(String points) {
    return 'O $points p. b. za indexem';
  }

  @override
  String get benchmarkHint =>
      'Jako by každý nákup byl týž den vložen do indexového fondu S&P 500. Bez dividend; minulé výnosy nepředpovídají budoucí.';

  @override
  String get portfolioSell => 'Prodat';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Prodat $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Prodejní cena za akcii ($currency)';
  }

  @override
  String get portfolioSellDate => 'Datum prodeje';

  @override
  String get portfolioSellAll => 'Vše';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Držíte $quantity';
  }

  @override
  String get portfolioSold => 'Prodáno';

  @override
  String get portfolioRealized => 'Realizováno';

  @override
  String get portfolioClosed => 'Uzavřené pozice';

  @override
  String get portfolioClosedNote => 'Všechny akcie prodány';

  @override
  String get portfolioTransactions => 'Transakce';

  @override
  String get portfolioRealizedByYear => 'Realizovaný zisk podle let';

  @override
  String get portfolioRealizedHint =>
      'Prodeje se párují nejprve s vašimi nejstaršími nákupy (FIFO) a přepočítávají se dnešním kurzem. Pro daňové přiznání použijte výpis od svého brokera.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Od této analýzy byly zveřejněny nové čtvrtletní výsledky ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Nové výsledky';

  @override
  String get portfolioImportBrokers =>
      'Rozpoznány jsou i exporty z Revolut, Trading 212 a Interactive Brokers, včetně prodejů; dividendy a vklady se přeskakují.';

  @override
  String get portfolioImportFile => 'Vybrat soubor';

  @override
  String offlineBanner(String time) {
    return 'Bez připojení – zobrazují se naposledy uložená data ($time).';
  }

  @override
  String get glossMarketCap =>
      'Kolik má celá firma hodnotu na burze: cena akcie × počet akcií.';

  @override
  String get glossSharesOutstanding =>
      'Kolik akcií firma vydala. Když jich přibývá, každé akcii patří menší kousek; zpětné odkupy počet snižují.';

  @override
  String get glossPeTrailing =>
      'Cena ÷ zisk na akcii za posledních 12 měsíců: kolik let současného zisku platíte. Nižší je levnější, ale rychle rostoucí firmy mívají vysoké P/E.';

  @override
  String get glossPeForward =>
      'Jako P/E, ale se ziskem, který analytici čekají na příštích 12 měsíců. Pod historickým P/E znamená, že se čeká růst zisku.';

  @override
  String get glossPb =>
      'Cena ÷ účetní hodnota (aktiva minus dluhy) na akcii. Kolem 1 znamená, že trh firmu oceňuje na to, co vlastní na papíře.';

  @override
  String get glossPs =>
      'Tržní hodnota ÷ roční tržby. Užitečné u firem s malým nebo zatím žádným ziskem; srovnávejte v rámci stejného odvětví.';

  @override
  String get glossEvToFcf =>
      'Hodnota firmy včetně dluhu (EV) ÷ hotovost, kterou vytvoří za rok po investicích. Nižší znamená, že za cenu dostanete víc hotovosti.';

  @override
  String get glossPeg =>
      'P/E ÷ očekávaný roční růst zisku (%). Kolem 1 se často považuje za férové; dává P/E do souvislosti s růstem.';

  @override
  String get glossEps =>
      'Zisk na akcii za posledních 12 měsíců. EPS rostoucí v průběhu let je jedním z nejsilnějších znaků zdravé firmy.';

  @override
  String get glossBeta =>
      'Jak moc se akcie obvykle hýbe s trhem: 1 = jako trh, 1,5 = asi o 50 % větší výkyvy, pod 1 = klidnější.';

  @override
  String get glossRevenueTtm =>
      'Celkové tržby za posledních 12 měsíců, před jakýmikoli náklady.';

  @override
  String get glossNetIncomeTtm =>
      'Zisk, který zbyl po všech nákladech, úrocích a daních za posledních 12 měsíců.';

  @override
  String get glossGrossMargin =>
      'Podíl tržeb, který zbude po přímých nákladech na výrobky. Vysoká marže často znamená cenovou sílu.';

  @override
  String get glossOperatingMargin =>
      'Podíl tržeb, který zbude po nákladech na provoz firmy (mzdy, nájem, marketing), před úroky a daněmi.';

  @override
  String get glossNetMargin =>
      'Podíl tržeb, který skončí jako konečný zisk. 20 % znamená, že z každých 100 tržeb je 20 zisk.';

  @override
  String get glossRoe =>
      'Rentabilita vlastního kapitálu: roční zisk ÷ kapitál vlastníků. Ukazuje, jak dobře vedení hospodaří s penězi akcionářů; nad zhruba 15 % je silná.';

  @override
  String get glossRoa =>
      'Rentabilita aktiv: roční zisk ÷ vše, co firma vlastní. Srovnávejte v rámci stejného odvětví.';

  @override
  String get glossDebtToEquity =>
      'Dluhy ÷ kapitál vlastníků. Vyšší znamená víc vypůjčených peněz: větší riziko, když rostou sazby nebo zpomalí byznys.';

  @override
  String get glossCurrentRatio =>
      'Krátkodobá aktiva ÷ závazky splatné do roka. Nad 1 znamená, že firma pokryje své blízké závazky.';

  @override
  String get glossRevenueGrowth =>
      'O kolik vzrostly tržby oproti předchozímu roku.';

  @override
  String get glossEpsGrowth =>
      'O kolik vzrostl zisk na akcii oproti předchozímu roku.';

  @override
  String get glossDividendYield =>
      'Roční dividenda ÷ cena akcie: hotovostní příjem, který byste dostávali ročně, v procentech z toho, co zaplatíte.';

  @override
  String get glossDividendPerShare =>
      'Dividenda vyplacená na jednu akcii za poslední rok.';

  @override
  String get glossPayoutRatio =>
      'Podíl zisku vyplacený jako dividendy. Nad 100 % firma vyplácí víc, než vydělá, a to zřídka vydrží.';

  @override
  String get glossTitle => 'Co to znamená?';

  @override
  String get watchNewsTitle => 'Zprávy o vašich akciích';

  @override
  String get undo => 'Zpět';

  @override
  String get watchSort => 'Seřadit';

  @override
  String get watchSortOwn => 'Moje pořadí';

  @override
  String get watchSortGainers => 'Největší růst první';

  @override
  String get watchSortLosers => 'Největší pokles první';

  @override
  String get watchSortName => 'Podle tickeru (A–Z)';

  @override
  String get watchHint =>
      'Přetažením úchytu změníte pořadí, přejetím doleva odeberete. Čára ukazuje posledních 30 dní.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: vaše analýza je hotová.';
  }

  @override
  String alertFromCost(String price) {
    return 'Vzhledem k vaší průměrné nákupní ceně ($price):';
  }

  @override
  String get briefTitle => 'Dnes s vašimi akciemi';

  @override
  String get briefButton => 'Shrnout dnešek';

  @override
  String get briefHint =>
      'Krátké AI shrnutí, jak se dnes pohybovalo vaše portfolio a oblíbené akcie a co o nich říkají nejnovější zprávy. Nespotřebuje analýzu.';

  @override
  String get briefRefresh => 'Aktualizovat';

  @override
  String get sectionEarnings => 'Výsledky';

  @override
  String earningsNext(String date) {
    return 'Další zpráva: $date';
  }

  @override
  String get earningsExpected => 'Očekávané EPS';

  @override
  String get earningsReported => 'Vykázané EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Na úrovni očekávaného EPS nebo výš v $beats z posledních $total čtvrtletí',
      one: 'Na úrovni očekávaného EPS nebo výš v $beats z 1 čtvrtletí',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol zítra zveřejní čtvrtletní výsledky';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol dnes zveřejní čtvrtletní výsledky';
  }

  @override
  String get earningsRemindersTitle => 'Připomínky výsledků';

  @override
  String get earningsRemindersSubtitle =>
      'Upozornění den předtím, než akcie z vašich oblíbených nebo portfolia zveřejní čtvrtletní výsledky';

  @override
  String addAllToFavorites(int count) {
    return 'Přidat vše do oblíbených ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Importovat ze snímku obrazovky';

  @override
  String get holdingsReading => 'Načítám vaše pozice…';

  @override
  String get holdingsReviewTitle => 'Nalezené pozice';

  @override
  String get holdingsReviewHint =>
      'Před přidáním zkontrolujte čísla. Cena je vaše průměrná nákupní cena za akcii, ne dnešní cena.';

  @override
  String get holdingsNoPrice => 'Na obrázku není průměrná nákupní cena';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Přidat $count pozic',
      many: 'Přidat $count pozice',
      few: 'Přidat $count pozice',
      one: 'Přidat 1 pozici',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Na tomto obrázku nebyly nalezeny žádné akciové pozice. Zkuste snímek obrazovky stránky s pozicemi nebo portfoliem u vašeho brokera.';

  @override
  String get week52Range => '52týdenní rozpětí';

  @override
  String week52BelowHigh(String percent) {
    return '$percent pod 52týdenním maximem';
  }

  @override
  String get week52AtHigh => 'Na 52týdenním maximu';

  @override
  String get alertKindTrailing => 'Klesne z vrcholu';

  @override
  String get alertTrailingPercent => 'Pokles z vrcholu (%)';

  @override
  String get alertTrailingHint =>
      'Sleduje cenu nahoru: upozorní, když cena klesne o tolik ze svého maxima od nastavení.';

  @override
  String alertDescTrailing(String percent) {
    return 'Pokles o $percent z vrcholu';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'dosavadní vrchol: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol klesla o $percent z vrcholu';
  }

  @override
  String get sectionInsiders => 'Insiderské obchody';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count nákupů',
      many: '$count nákupu',
      few: '$count nákupy',
      one: '1 nákup',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count prodejů',
      many: '$count prodeje',
      few: '$count prodeje',
      one: '1 prodej',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Čistě: $shares akcií';
  }

  @override
  String get insiderBuy => 'Koupeno';

  @override
  String get insiderSell => 'Prodáno';

  @override
  String get insiderHint =>
      'Nákupy a prodeje vedoucích pracovníků a členů představenstva na otevřeném trhu za posledních 90 dní (SEC Form 4). Uplatnění opcí a přidělené akcie se nezapočítávají.';

  @override
  String get insiderNone =>
      'Za posledních 90 dní žádné insiderské nákupy ani prodeje na otevřeném trhu.';

  @override
  String get analystTrend => 'Jak se názory měnily měsíc po měsíci';

  @override
  String get watchListAll => 'Vše';

  @override
  String get watchListNew => 'Nový seznam';

  @override
  String get watchListName => 'Název seznamu';

  @override
  String get watchListRename => 'Přejmenovat seznam';

  @override
  String get watchListDelete => 'Smazat seznam';

  @override
  String get watchListAddTo => 'Přidat do seznamu';

  @override
  String get watchListEmpty =>
      'V tomto seznamu zatím nejsou žádné akcie. Akcii přidáte klepnutím na tlačítko seznamu vedle ní.';

  @override
  String get portfolioAskTitle => 'Otázky k vašemu portfoliu';

  @override
  String get rangeYtd => 'Letos';

  @override
  String get backupTitle => 'Záloha';

  @override
  String get backupSave => 'Uložit zálohu';

  @override
  String get backupSaveHint =>
      'Vaše oblíbené, seznamy, portfolio, upozornění a poznámky v jednom souboru.';

  @override
  String get backupRestore => 'Obnovit ze zálohy';

  @override
  String get backupRestoreHint =>
      'Přidá obsah souboru; nic z vašich současných dat se nesmaže.';

  @override
  String get backupRestored => 'Záloha obnovena.';

  @override
  String get backupInvalid => 'Tento soubor není záloha WhatStock.';

  @override
  String get allocationPositions => 'Akcie';

  @override
  String get allocationSectors => 'Sektory';

  @override
  String get allocationCurrencies => 'Měny';

  @override
  String get compareReturn1y => 'Výnos za 1 rok';

  @override
  String get compareFromHigh => 'Od 52týdenního maxima';

  @override
  String get briefAutoTitle => 'Denní shrnutí každé ráno';

  @override
  String get briefAutoSubtitle =>
      '„Dnes s vašimi akciemi“ se vytvoří automaticky po 7:00, dokud aplikace běží; na počítačích vás upozorní oznámení. Čerpá z vašeho denního limitu otázek, nespotřebuje analýzu.';

  @override
  String get targetsButton => 'Cílové rozložení';

  @override
  String get targetsTitle => 'Cílové rozložení';

  @override
  String get targetsHint =>
      'Nastavte, jaký podíl portfolia má mít každá akcie. Pokud cíl nechcete, nechte pole prázdné. Aplikace pak ukáže, co je potřeba koupit nebo prodat, abyste ho dosáhli.';

  @override
  String targetsSum(String percent) {
    return 'Celkem: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Koupit ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Prodat ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Odpovídá cíli';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol překonal očekávané EPS';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol nedosáhl očekávaného EPS';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'Vykázané EPS $actual, očekávané $estimate';
  }

  @override
  String get newsExplain => 'Co to znamená?';

  @override
  String get watchAlertAll => 'Upozornění na velké denní pohyby';

  @override
  String get watchAlertAllHint =>
      'Cenové upozornění pro každou akcii v tomto seznamu, které se ozve, když se za den pohne o tolik nahoru nebo dolů. Akcie, které už nějaké mají, si ho ponechají.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nastaveno $count upozornění',
      many: 'Nastaveno $count upozornění',
      few: 'Nastavena $count upozornění',
      one: 'Nastaveno 1 upozornění',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Exportovat realizované zisky (CSV)';

  @override
  String get portfolioAnnualReturn => 'Roční výnos';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / rok';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Peněžně vážený roční výnos (XIRR): zohledňuje, kdy jste nakupovali a prodávali, takže ho později vložené peníze nezkreslí. Zobrazí se, jakmile bude váš první nákup starý alespoň rok; dividendy nejsou zahrnuty.';

  @override
  String get eventsAddToCalendar => 'Přidat do kalendáře (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Upozornění na portfolio';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Oznámení, když se celé vaše portfolio za den pohne o tolik.';

  @override
  String get portfolioMoveAlertOff => 'Vypnuto';

  @override
  String portfolioMoveUp(String percent) {
    return 'Vaše portfolio dnes vzrostlo o $percent';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Vaše portfolio dnes kleslo o $percent';
  }

  @override
  String get whatIfTitle => 'Co kdybyste investovali?';

  @override
  String get whatIfAmount => 'Částka';

  @override
  String whatIfResult(String amount, String period) {
    return 'Investice $amount na $period by dnes měla hodnotu';
  }

  @override
  String get whatIfNote =>
      'Pouze na základě ceny akcie: dividendy, poplatky a daně nejsou zahrnuty. Minulé výnosy nepředpovídají budoucí.';

  @override
  String get watchShare => 'Sdílet seznam';

  @override
  String get watchImport => 'Přidat tickery';

  @override
  String get watchImportHint =>
      'Vložte tickery oddělené čárkami, mezerami nebo novými řádky – třeba seznam, který s vámi někdo sdílel.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Přidáno $count akcií',
      many: 'Přidáno $count akcie',
      few: 'Přidány $count akcie',
      one: 'Přidána 1 akcie',
      zero: 'Žádné nové akcie',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Největší první';

  @override
  String get positionsSortGain => 'Nejvyšší celkový výnos první';

  @override
  String get positionsSortToday => 'Nejlepší dnes první';

  @override
  String get chartMyBuys => 'Vaše nákupy';

  @override
  String get chartMySells => 'Vaše prodeje';

  @override
  String get shortcutsTitle => 'Klávesové zkratky';

  @override
  String usMarketOpen(String time) {
    return 'Trh v USA otevřen · zavírá za $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Trh v USA zavřen · otevírá za $time';
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
  String get portfolioGoalSet => 'Nastavit cíl';

  @override
  String get portfolioGoalTitle => 'Cíl portfolia';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent z cíle $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Cíl $amount splněn';
  }

  @override
  String get portfolioGoalRemove => 'Odebrat cíl';

  @override
  String get alertEdit => 'Upravit upozornění';

  @override
  String get positionOpenLots => 'Stále držené (nejstarší první)';

  @override
  String get lotRemoved => 'Transakce smazána';

  @override
  String get alertDeleted => 'Upozornění smazáno';

  @override
  String get alertsClearTriggered => 'Vymazat spuštěná upozornění';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vymazáno $count upozornění',
      many: 'Vymazáno $count upozornění',
      few: 'Vymazána $count upozornění',
      one: 'Vymazáno 1 upozornění',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Domovská obrazovka';

  @override
  String get allocationCountries => 'Země';

  @override
  String get newsExplainNoteResearch =>
      'Vysvětlení od AI: dohledá fakta na webu, otevře článek a posoudí, jak spolehlivý je zdroj. Není investičním doporučením. Čerpá z vašeho denního limitu otázek, nespotřebuje analýzu.';

  @override
  String get sourceOfficial => 'Oficiální';

  @override
  String get sourcePressRelease => 'Tisková zpráva';

  @override
  String get sourceMajorNews => 'Velké médium';

  @override
  String get sourceOpinion => 'Názor';

  @override
  String get earningsSummaryButton => 'Co bylo v poslední zprávě?';

  @override
  String get earningsSummaryNote =>
      'Shrnutí od AI: oznámení výsledků společnosti a mediální ohlasy, které najde na webu. Není investičním doporučením. Čerpá z vašeho denního limitu otázek, nespotřebuje analýzu.';

  @override
  String get compareLastSurprise => 'EPS za poslední kvartál vs. očekávání';

  @override
  String get compareNextReport => 'Další zpráva';

  @override
  String get resolvingDescription => 'Zjišťuji, kterou akcii máte na mysli…';

  @override
  String get instrumentTitle => 'O tomto instrumentu';

  @override
  String get instrumentHint =>
      'K tomuto symbolu neexistuje profil společnosti – může jít o ETF, fond nebo depozitní certifikát. Zeptejte se AI, co to je, co obsahuje a kolik stojí.';

  @override
  String get instrumentAsk => 'Co to je?';

  @override
  String get instrumentNote =>
      'Vysvětlení od AI na základě stránky fondu u emitenta a finančních webů, které najde na internetu. Není investičním doporučením. Čerpá z vašeho denního limitu otázek, nespotřebuje analýzu.';
}
