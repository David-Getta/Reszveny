// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'StockLens';

  @override
  String get homeTagline =>
      'Fotografiere eine Aktie und erfahre alles über sie.';

  @override
  String get homeHint =>
      'Ein Aktienzertifikat, ein Broker-App-Bildschirm, eine Zeitung oder ein Firmenlogo – alles, was eine Aktie identifiziert.';

  @override
  String get takePhoto => 'Foto aufnehmen';

  @override
  String get chooseFromGallery => 'Aus Galerie wählen';

  @override
  String get chooseImage => 'Bild auswählen';

  @override
  String get enterTickerManually => 'Ticker manuell eingeben';

  @override
  String get tickerInputLabel => 'Tickersymbol';

  @override
  String get tickerInputHint => 'z. B. AAPL';

  @override
  String get lookUp => 'Suchen';

  @override
  String demoModeBanner(String symbols) {
    return 'Demomodus – kein Marktdatenschlüssel konfiguriert. Beispieldaten verfügbar für: $symbols.';
  }

  @override
  String get recognizing => 'Bild wird analysiert…';

  @override
  String get loadingData => 'Daten werden geladen…';

  @override
  String get noCandidatesTitle => 'Keine Aktie erkannt';

  @override
  String get noCandidatesBody =>
      'In diesem Bild konnte keine Aktie identifiziert werden. Versuche ein schärferes Foto oder gib den Ticker manuell ein.';

  @override
  String get whatWeSaw => 'Was wir gesehen haben';

  @override
  String get chooseCandidateTitle => 'Welche Aktie meinst du?';

  @override
  String confidencePercent(int percent) {
    return '$percent% Konfidenz';
  }

  @override
  String get settings => 'Einstellungen';

  @override
  String get language => 'Sprache';

  @override
  String get systemLanguage => 'Systemstandard';

  @override
  String get about => 'Über';

  @override
  String get disclaimer =>
      'Diese App dient nur zur Information und stellt keine Anlageberatung dar. Daten können verzögert oder ungenau sein.';

  @override
  String dataSource(String source) {
    return 'Datenquelle: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Erkennung: $source';
  }

  @override
  String get retry => 'Erneut versuchen';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Schließen';

  @override
  String get errorGeneric => 'Etwas ist schiefgelaufen.';

  @override
  String get errorSectionUnavailable =>
      'Dieser Abschnitt konnte nicht geladen werden.';

  @override
  String get notAvailable => 'k. A.';

  @override
  String get sectionIdentity => 'Identifikation';

  @override
  String get sectionPrice => 'Kurs';

  @override
  String get sectionValuation => 'Bewertung';

  @override
  String get sectionFinancials => 'Finanzkennzahlen';

  @override
  String get sectionDividend => 'Dividende';

  @override
  String get sectionProfile => 'Unternehmensprofil';

  @override
  String get sectionAnalysts => 'Analystenbewertungen';

  @override
  String get sectionNews => 'Nachrichten';

  @override
  String get sectionRecognition => 'Erkennungsdetails';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Börse';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Währung';

  @override
  String get labelCountry => 'Land';

  @override
  String get labelIndustry => 'Branche';

  @override
  String get labelSector => 'Sektor';

  @override
  String get labelWebsite => 'Website';

  @override
  String get labelIpoDate => 'IPO-Datum';

  @override
  String get labelMarketCap => 'Marktkapitalisierung';

  @override
  String get labelSharesOutstanding => 'Ausstehende Aktien';

  @override
  String get labelEmployees => 'Mitarbeitende';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Hauptsitz';

  @override
  String get labelDescription => 'Beschreibung';

  @override
  String get labelLastPrice => 'Letzter Kurs';

  @override
  String get labelChange => 'Veränderung';

  @override
  String get labelOpen => 'Eröffnung';

  @override
  String get labelDayHigh => 'Tageshoch';

  @override
  String get labelDayLow => 'Tagestief';

  @override
  String get labelPreviousClose => 'Vortagesschluss';

  @override
  String get labelWeek52High => '52-Wochen-Hoch';

  @override
  String get labelWeek52Low => '52-Wochen-Tief';

  @override
  String get labelAverageVolume10d => 'Ø Volumen (10 Tage)';

  @override
  String updatedAt(String time) {
    return 'Aktualisiert $time';
  }

  @override
  String get labelPeTrailing => 'KGV (P/E, rückblickend)';

  @override
  String get labelPeForward => 'KGV (P/E, erwartet)';

  @override
  String get labelPb => 'KBV (P/B)';

  @override
  String get labelPs => 'KUV (P/S)';

  @override
  String get labelEvToFcf => 'EV / Free Cashflow';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Umsatz (TTM)';

  @override
  String get labelNetIncomeTtm => 'Nettogewinn (TTM)';

  @override
  String get labelGrossMargin => 'Bruttomarge';

  @override
  String get labelOperatingMargin => 'Operative Marge';

  @override
  String get labelNetMargin => 'Nettomarge';

  @override
  String get labelRoe => 'Eigenkapitalrendite';

  @override
  String get labelRoa => 'Gesamtkapitalrendite';

  @override
  String get labelDebtToEquity => 'Verschuldungsgrad';

  @override
  String get labelCurrentRatio => 'Liquidität 3. Grades';

  @override
  String get labelRevenueGrowth => 'Umsatzwachstum (YoY)';

  @override
  String get labelEpsGrowth => 'EPS-Wachstum (YoY)';

  @override
  String get labelDividendYield => 'Dividendenrendite';

  @override
  String get labelDividendPerShare => 'Dividende je Aktie';

  @override
  String get labelPayoutRatio => 'Ausschüttungsquote';

  @override
  String get labelConsensus => 'Konsens';

  @override
  String get ratingStrongBuy => 'Stark kaufen';

  @override
  String get ratingBuy => 'Kaufen';

  @override
  String get ratingHold => 'Halten';

  @override
  String get ratingSell => 'Verkaufen';

  @override
  String get ratingStrongSell => 'Stark verkaufen';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Analysten',
      one: '1 Analyst',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Zeitraum: $period';
  }

  @override
  String get noNews => 'Keine aktuellen Nachrichten.';

  @override
  String get openArticle => 'Artikel öffnen';

  @override
  String get openLinkFailed => 'Der Link konnte nicht geöffnet werden.';

  @override
  String get recognitionSummary => 'Zusammenfassung';

  @override
  String get recognitionEvidence => 'Warum wir das denken';

  @override
  String get recognitionRawText => 'Aus dem Bild gelesener Text';

  @override
  String get errMissingAnthropicKey =>
      'Bilderkennung ist nicht konfiguriert (kein ANTHROPIC_API_KEY). Gib den Ticker manuell ein.';

  @override
  String get errRecognitionUnreachable =>
      'Der Erkennungsdienst ist nicht erreichbar. Prüfe deine Internetverbindung.';

  @override
  String errRecognitionHttp(String status) {
    return 'Der Erkennungsdienst hat einen Fehler zurückgegeben (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Der Erkennungsdienst konnte dieses Bild nicht verarbeiten.';

  @override
  String get errRecognitionTruncated =>
      'Die Antwort des Erkennungsdienstes wurde abgeschnitten. Bitte versuche es erneut.';

  @override
  String get errRecognitionBadResponse =>
      'Unerwartete Antwort vom Erkennungsdienst.';

  @override
  String get errRecognitionEmpty =>
      'Der Erkennungsdienst hat eine leere Antwort zurückgegeben.';

  @override
  String get errMissingFinnhubKey =>
      'Marktdaten sind nicht konfiguriert (kein FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Der Marktdatendienst ist nicht erreichbar. Prüfe deine Internetverbindung.';

  @override
  String get errMarketRateLimited =>
      'Zu viele Anfragen an den Marktdatendienst. Bitte warte eine Minute.';

  @override
  String errMarketHttp(String status) {
    return 'Der Marktdatendienst hat einen Fehler zurückgegeben (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Unerwartete Antwort vom Marktdatendienst.';

  @override
  String errNoQuote(String symbol) {
    return 'Keine Kursdaten für $symbol gefunden.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Kein Unternehmensprofil für $symbol gefunden.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Der Demomodus unterstützt nur $symbols. Füge einen FINNHUB_API_KEY für Live-Daten hinzu.';
  }

  @override
  String errUnknown(String detail) {
    return 'Etwas ist schiefgelaufen: $detail';
  }

  @override
  String get newSearch => 'Neue Suche';

  @override
  String get recentSearches => 'Zuletzt';

  @override
  String get noRecentSearches => 'Noch keine letzten Suchen.';

  @override
  String get clearRecent => 'Letzte Suchen löschen';

  @override
  String get greeting => 'Welche Aktie schauen wir uns an?';

  @override
  String get searchHint => 'Ticker oder Firmenname';

  @override
  String get attachImage => 'Bild anhängen';

  @override
  String get searchResultsTitle => 'Suchergebnisse';

  @override
  String errNoResults(String query) {
    return 'Keine Aktien für „$query“ gefunden.';
  }

  @override
  String get quickBarHint => 'Ticker oder Firmenname eingeben…';

  @override
  String get openFullWindow => 'Fenster öffnen';

  @override
  String hotkeyHint(String shortcut) {
    return 'Drücke $shortcut an beliebiger Stelle, um StockLens aufzurufen.';
  }

  @override
  String get trayOpen => 'StockLens öffnen';

  @override
  String get trayQuickSearch => 'Schnellsuche';

  @override
  String get trayQuit => 'Beenden';

  @override
  String get appearance => 'Erscheinungsbild';

  @override
  String get themeSystem => 'System';

  @override
  String get themeDark => 'Dunkel';

  @override
  String get themeLight => 'Hell';

  @override
  String get back => 'Zurück';

  @override
  String get aiSectionTitle => 'KI-Analyse';

  @override
  String get aiIntro =>
      'Ein ausführlicher, von KI verfasster Überblick: Zusammenfassung aktueller Nachrichten, Geschäftsmodell, Stärken, Risiken und verborgene Faktoren, Bewertung und worauf zu achten ist.';

  @override
  String get aiGenerate => 'Analyse erstellen';

  @override
  String get aiRegenerate => 'Neu erstellen';

  @override
  String get aiGenerating =>
      'Analyse wird vorbereitet… das kann ein bis zwei Minuten dauern.';

  @override
  String get aiSources => 'Quellen';

  @override
  String aiGeneratedAt(String time) {
    return 'Erstellt $time';
  }

  @override
  String get aiDisclaimer =>
      'KI-generierte Analyse auf Basis öffentlicher Daten und aktueller Nachrichten. Sie kann Fehler enthalten oder veraltet sein und ist keine Anlageberatung.';

  @override
  String get errAiNotConfigured =>
      'KI-Analyse ist nicht konfiguriert (kein ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Der KI-Dienst ist nicht erreichbar. Prüfe deine Internetverbindung.';

  @override
  String errAiHttp(String status) {
    return 'Der KI-Dienst hat einen Fehler zurückgegeben (HTTP $status).';
  }

  @override
  String get errAiRefused =>
      'Der KI-Dienst hat die Analyse dieser Aktie abgelehnt.';

  @override
  String get errAiBadResponse => 'Unerwartete Antwort vom KI-Dienst.';

  @override
  String get sectionChart => 'Kurschart';

  @override
  String get rangeOneWeek => '1W';

  @override
  String get rangeOneMonth => '1M';

  @override
  String get rangeThreeMonths => '3M';

  @override
  String get rangeOneYear => '1J';

  @override
  String get rangeFiveYears => '5J';

  @override
  String get chartUnavailable =>
      'Die Kurshistorie ist bei der aktuellen Datenquelle nicht verfügbar.';

  @override
  String get sectionStatements => 'Finanzberichte (jährlich)';

  @override
  String get labelFiscalYear => 'Geschäftsjahr';

  @override
  String get labelRevenue => 'Umsatz';

  @override
  String get labelNetIncome => 'Nettogewinn';

  @override
  String get labelTotalAssets => 'Bilanzsumme';

  @override
  String get labelTotalLiabilities => 'Gesamtverbindlichkeiten';

  @override
  String get labelEquity => 'Eigenkapital';

  @override
  String get labelOperatingCashFlow => 'Operativer Cashflow';

  @override
  String get statementsUnavailable =>
      'Für diese Aktie sind keine veröffentlichten Finanzberichte verfügbar.';

  @override
  String get launchAtLogin => 'Bei Anmeldung starten';

  @override
  String get hotkeyLabel => 'Globales Tastenkürzel';

  @override
  String get hotkeyRecordHint =>
      'Hier klicken und dann die neue Tastenkombination drücken';

  @override
  String get hotkeyReset => 'Auf Standard zurücksetzen';

  @override
  String get pasteImage => 'Bild aus der Zwischenablage einfügen';

  @override
  String get errClipboardNoImage =>
      'In der Zwischenablage befindet sich kein Bild.';

  @override
  String get favorites => 'Favoriten';

  @override
  String get addToFavorites => 'Zu Favoriten hinzufügen';

  @override
  String get removeFromFavorites => 'Aus Favoriten entfernen';

  @override
  String get noFavorites =>
      'Noch keine Favoriten. Tippe auf den Stern einer Aktie, um sie hinzuzufügen.';
}
