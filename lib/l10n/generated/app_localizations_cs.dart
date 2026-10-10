// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppLocalizationsCs extends AppLocalizations {
  AppLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get appTitle => 'StockLens';

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
    return 'Stiskněte $shortcut kdekoli a vyvolejte StockLens.';
  }

  @override
  String get trayOpen => 'Otevřít StockLens';

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
  String get planMax1 => 'Max 1';

  @override
  String get planMax2 => 'Max 2';

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
      'Rozpoznávání fotek, živá data, grafy, oblíbené a všech 44 jazyků jsou součástí každého tarifu. Limit se vztahuje na AI analýzy.';
}
