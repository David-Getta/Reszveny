// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class AppLocalizationsSk extends AppLocalizations {
  AppLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get appTitle => 'Reszveny';

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
    return 'Stlačte $shortcut kdekoľvek a vyvolajte Reszveny.';
  }

  @override
  String get trayOpen => 'Otvoriť Reszveny';

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
}
