// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

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
    return 'Drücke $shortcut an beliebiger Stelle, um WhatStock aufzurufen.';
  }

  @override
  String get trayOpen => 'WhatStock öffnen';

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
      'Ein ausführlicher, von KI verfasster Überblick: Zusammenfassung aktueller Nachrichten, Geschäftsmodell, Stärken, Risiken und verborgene Faktoren, Bewertung, ein Kursausblick mit Szenarien aus psychologischer, soziologischer, technischer und makroökonomischer Sicht sowie worauf zu achten ist.';

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

  @override
  String get displayCurrency => 'Anzeigewährung';

  @override
  String get displayCurrencyNone => 'Nur die Währung der Aktie';

  @override
  String labelConverted(String currency) {
    return '≈ in $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Kurs: 1 $from = $rate $to (EZB, $date)';
  }

  @override
  String get updates => 'Updates';

  @override
  String currentVersion(String version) {
    return 'Version $version';
  }

  @override
  String get autoUpdate => 'Updates automatisch installieren';

  @override
  String get checkForUpdates => 'Nach Updates suchen';

  @override
  String get updateChecking => 'Suche nach Updates…';

  @override
  String get updateUpToDate => 'Du verwendest die neueste Version.';

  @override
  String updateAvailable(String version) {
    return 'Version $version ist verfügbar.';
  }

  @override
  String get updateDownloading =>
      'Das Update wird im Hintergrund heruntergeladen…';

  @override
  String get updateDownloaded =>
      'Das Update ist bereit. Starte die App neu, um es zu installieren.';

  @override
  String get updateNow => 'Aktualisieren';

  @override
  String get restartNow => 'Neu starten';

  @override
  String get updatesViaStore =>
      'Updates werden automatisch über den App-Store bereitgestellt.';

  @override
  String get updateCheckFailed =>
      'Es konnte nicht nach Updates gesucht werden.';

  @override
  String get subscription => 'Abonnement';

  @override
  String get planTrial => 'Testphase';

  @override
  String get planNormal => 'Normal';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Kein aktiver Tarif';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count Analysen pro Monat';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$days Tage kostenlos testen mit $count Analysen';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Noch $days Tage Testphase',
      one: 'Noch 1 Tag Testphase',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Deine kostenlose Testphase ist abgelaufen. Wähle einen Tarif, um weiter zu analysieren.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Noch $remaining von $total Analysen in diesem Zeitraum';
  }

  @override
  String extraCredits(int count) {
    return '$count zusätzliche Analysen';
  }

  @override
  String renewsOn(String date) {
    return 'Verlängert sich am $date';
  }

  @override
  String get choosePlan => 'Tarif wählen';

  @override
  String get currentPlan => 'Aktueller Tarif';

  @override
  String get subscribe => 'Abonnieren';

  @override
  String get perMonth => '/ Monat';

  @override
  String get extraPacksTitle => 'Brauchst du mehr? Kaufe zusätzliche Analysen';

  @override
  String get extraPacksHint =>
      'Zusätzliche Analysen verfallen nie und werden nach deinem monatlichen Kontingent verwendet.';

  @override
  String get buy => 'Kaufen';

  @override
  String get restorePurchases => 'Käufe wiederherstellen';

  @override
  String get manageSubscription => 'Abonnement verwalten';

  @override
  String get purchaseSuccess => 'Danke! Dein Kauf ist aktiv.';

  @override
  String get purchasePending => 'Kauf ausstehend…';

  @override
  String get purchaseFailed => 'Der Kauf konnte nicht abgeschlossen werden.';

  @override
  String get purchaseCanceled => 'Kauf abgebrochen.';

  @override
  String get billingUnavailable =>
      'Käufe sind auf dieser Plattform noch nicht verfügbar. Abonniere auf deinem Smartphone oder Mac; dein Tarif funktioniert auf allen Geräten.';

  @override
  String get errQuotaExceeded =>
      'Du hast in diesem Zeitraum keine Analysen mehr. Wechsle zu einem höheren Tarif oder kaufe zusätzliche Analysen.';

  @override
  String get errTrialExpired =>
      'Deine kostenlose Testphase ist abgelaufen. Wähle einen Tarif, um fortzufahren.';

  @override
  String get errNoPlan =>
      'Für die KI-Analyse ist ein aktiver Tarif erforderlich.';

  @override
  String get viewPlans => 'Tarife ansehen';

  @override
  String get usageTitle => 'Nutzung';

  @override
  String get demoPurchaseNote =>
      'Demo-Abrechnung: Käufe werden auf dieser Plattform nur simuliert.';

  @override
  String get mostPopular => 'Am beliebtesten';

  @override
  String get bestValue => 'Bestes Preis-Leistungs-Verhältnis';

  @override
  String get planFeaturesCommon =>
      'Fotoerkennung, Live-Daten, Charts, Favoriten und alle 120 Sprachen sind in jedem Tarif enthalten. Das Kontingent gilt für KI-Analysen.';

  @override
  String get searchLanguages => 'Sprachen suchen…';

  @override
  String get noLanguageMatch => 'Keine passende Sprache gefunden.';

  @override
  String get aiSettings => 'KI-Analyse';

  @override
  String get aiLength => 'Länge';

  @override
  String get aiDepthBrief => 'Kurz';

  @override
  String get aiDepthStandard => 'Standard';

  @override
  String get aiDepthDeep => 'Ausführlich';

  @override
  String get aiDepthBriefDesc => 'Das Wesentliche, schnell.';

  @override
  String get aiDepthStandardDesc =>
      'Vollständiger Bericht mit allen Abschnitten.';

  @override
  String get aiDepthDeepDesc =>
      'Mehr Websuchen, Vergleich mit Wettbewerbern und mehr Details.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Etwa $min–$max Wörter';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'verbraucht $count Analysen',
      one: 'verbraucht 1 Analyse',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Leserniveau';

  @override
  String get aiReaderBeginner => 'Einsteiger';

  @override
  String get aiReaderExperienced => 'Erfahren';

  @override
  String get aiReaderBeginnerDesc =>
      'Einfache Sprache; jeder Fachbegriff wird erklärt.';

  @override
  String get aiReaderExperiencedDesc =>
      'Kompakterer Text mit gängiger Finanzterminologie.';

  @override
  String get aiCounterArgument => 'Stärkstes Gegenargument';

  @override
  String get aiCounterArgumentDesc =>
      'Die Zusammenfassung endet immer mit dem stärksten Argument gegen ihr eigenes Fazit.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Bis zu $count Websuchen pro Analyse mit deinem Tarif',
      one: 'Bis zu 1 Websuche pro Analyse mit deinem Tarif',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Standardlänge je Tarif: Normal $normal, Pro $pro, Max $max, Ultra $ultra. „Kurz“ nutzt 2 weniger, „Ausführlich“ 2 mehr.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'bis zu $count Websuchen',
      one: 'bis zu 1 Websuche',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Websuchen pro Analyse',
      one: '1 Websuche pro Analyse',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Diese Länge benötigt $needed Analysen, du hast aber nur noch $left. Wähle in den Einstellungen eine kürzere Länge oder hol dir weitere Analysen.';
  }

  @override
  String get outlookMarketMood => 'Marktstimmung';

  @override
  String get moodVeryPessimistic => 'Sehr pessimistisch';

  @override
  String get moodPessimistic => 'Pessimistisch';

  @override
  String get moodNeutral => 'Neutral';

  @override
  String get moodOptimistic => 'Optimistisch';

  @override
  String get moodVeryOptimistic => 'Sehr optimistisch';

  @override
  String get scenarioBull => 'Bull-Szenario';

  @override
  String get scenarioBase => 'Basisszenario';

  @override
  String get scenarioBear => 'Bear-Szenario';

  @override
  String outlookCurrentPrice(String price) {
    return 'Aktueller Kurs: $price';
  }

  @override
  String get outlookKeyLevels => 'Wichtige Kursmarken';

  @override
  String get keyLevelSupport => 'Unterstützung';

  @override
  String get keyLevelResistance => 'Widerstand';

  @override
  String get keyLevelAnchor => 'Anker';

  @override
  String get upcomingEvents => 'Anstehende Termine';

  @override
  String get outlookChartNote =>
      'Richtwerte; die Wahrscheinlichkeiten sind grobe Einschätzungen, keine Prognosen.';

  @override
  String get accountTitle => 'Konto';

  @override
  String get signIn => 'Anmelden';

  @override
  String get signOut => 'Abmelden';

  @override
  String get notSignedIn => 'Nicht angemeldet';

  @override
  String get accountBenefit =>
      'Melde dich an, damit dein Abonnement auf all deinen Geräten funktioniert.';

  @override
  String get accountSyncedNote =>
      'Dein Abonnement und deine verbleibenden Analysen sind auf jedem Gerät gleich.';

  @override
  String get signInTitle => 'Bei WhatStock anmelden';

  @override
  String get emailLabel => 'E-Mail-Adresse';

  @override
  String get continueWithEmail => 'Weiter mit E-Mail';

  @override
  String codeSentTo(String email) {
    return 'Wir haben einen 6-stelligen Code an $email gesendet. Er ist 10 Minuten lang gültig.';
  }

  @override
  String get codeLabel => 'Anmeldecode';

  @override
  String get resendCode => 'Neuen Code senden';

  @override
  String get useDifferentEmail => 'Andere E-Mail-Adresse verwenden';

  @override
  String get errInvalidCode => 'Der Code ist falsch oder abgelaufen.';

  @override
  String get errInvalidEmail => 'Bitte gib eine gültige E-Mail-Adresse ein.';

  @override
  String get errSignInFailed =>
      'Anmeldung fehlgeschlagen. Prüfe deine Verbindung und versuche es erneut.';

  @override
  String get checkoutWaiting =>
      'Schließe die Zahlung in deinem Browser ab. Die App aktualisiert sich automatisch, sobald sie erledigt ist.';

  @override
  String get paymentViaStripe =>
      'Sichere Zahlung in deinem Browser über Stripe. Jederzeit kündbar.';

  @override
  String get paymentViaStore =>
      'Die Abrechnung erfolgt über dein App-Store- oder Google-Play-Konto. Jederzeit in den Einstellungen deines Stores kündbar.';

  @override
  String get keySpace => 'Leertaste';

  @override
  String get doubleOptionTitle => 'Wahltaste zweimal drücken';

  @override
  String get doubleOptionSubtitle =>
      'Auch zweimaliges schnelles Drücken der Wahltaste ruft WhatStock auf.';

  @override
  String get doubleOptionPermission =>
      'Damit das auch in anderen Apps funktioniert, erlaube WhatStock unter Systemeinstellungen → Datenschutz & Sicherheit → Eingabeüberwachung und öffne die App danach erneut.';

  @override
  String get openSystemSettings => 'Systemeinstellungen öffnen';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Drücke $shortcut oder zweimal die Wahltaste an beliebiger Stelle, um WhatStock aufzurufen.';
  }

  @override
  String get scenarioMostLikely => 'Am wahrscheinlichsten';

  @override
  String get longTermToday => 'Heute';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years Jahre',
      one: '1 Jahr',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range pro Jahr';
  }

  @override
  String longTermLikely(String price) {
    return 'am wahrscheinlichsten $price';
  }

  @override
  String get confidenceLow => 'Geringe Sicherheit';

  @override
  String get confidenceMedium => 'Mittlere Sicherheit';

  @override
  String get confidenceHigh => 'Hohe Sicherheit';

  @override
  String get longTermNote =>
      'Langfristige Spannen beruhen auf den genannten Annahmen und werden mit der Zeit breiter. Kurse ohne Dividenden. Grobe Einschätzungen, keine Prognosen.';

  @override
  String get portfolio => 'Portfolio';

  @override
  String get portfolioEmpty =>
      'Noch leer. Öffne eine Aktie und tippe auf „Zum Portfolio hinzufügen“, um deine Bestände zu verfolgen.';

  @override
  String get portfolioLocalNote =>
      'Nur auf diesem Gerät gespeichert. Summen werden zu EZB-Referenzkursen umgerechnet; Kurse können verzögert sein.';

  @override
  String get addToPortfolio => 'Zum Portfolio hinzufügen';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol hinzufügen';
  }

  @override
  String get portfolioQuantity => 'Anzahl der Aktien';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Preis pro Aktie ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Kaufdatum';

  @override
  String get portfolioAdd => 'Hinzufügen';

  @override
  String get portfolioInvalidNumber => 'Gib eine Zahl größer als null ein.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol wurde zum Portfolio hinzugefügt.';
  }

  @override
  String get portfolioTotalValue => 'Gesamtwert';

  @override
  String get portfolioToday => 'Heute';

  @override
  String get portfolioGainLoss => 'Gewinn/Verlust';

  @override
  String get portfolioInvested => 'Investiert';

  @override
  String get portfolioAllocation => 'Aufteilung';

  @override
  String get portfolioPositions => 'Positionen';

  @override
  String portfolioAvgCost(String price) {
    return 'Ø Kaufpreis $price';
  }

  @override
  String get portfolioYourPosition => 'Deine Position';

  @override
  String get portfolioPurchases => 'Käufe';

  @override
  String get portfolioRemove => 'Entfernen';

  @override
  String get portfolioExcluded =>
      'Positionen ohne Kurs oder Wechselkurs sind in den Summen nicht enthalten.';

  @override
  String get priceAlerts => 'Kursalarme';

  @override
  String get setPriceAlert => 'Kursalarm einrichten';

  @override
  String alertDialogTitle(String symbol) {
    return 'Kursalarm · $symbol';
  }

  @override
  String get alertKindAbove => 'Steigt über';

  @override
  String get alertKindBelow => 'Fällt unter';

  @override
  String get alertKindMove => 'Bewegt sich stark an einem Tag';

  @override
  String alertTargetPrice(String currency) {
    return 'Kurs ($currency)';
  }

  @override
  String get alertMovePercent => 'Tagesbewegung (%)';

  @override
  String get alertAlreadyMet => 'Der Kurs liegt bereits jenseits dieser Marke.';

  @override
  String get alertSave => 'Alarm einrichten';

  @override
  String alertCreated(String symbol) {
    return 'Alarm für $symbol eingerichtet.';
  }

  @override
  String get alertsEmpty =>
      'Noch keine Kursalarme. Öffne eine Aktie und tippe auf die Glocke.';

  @override
  String get alertsNote =>
      'Alarme werden alle 5 Minuten geprüft, solange WhatStock läuft. Am Computer läuft die App in der Menüleiste oder im Infobereich weiter; auf dem Handy melden sich Alarme vorerst nur bei geöffneter App.';

  @override
  String alertDescAbove(String price) {
    return 'Über $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Unter $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Tagesbewegung ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Ausgelöst am $date bei $price';
  }

  @override
  String get alertRearm => 'Erneut aktivieren';

  @override
  String get alertDelete => 'Löschen';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol ist über $price gestiegen';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol ist unter $price gefallen';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol hat sich heute um $percent bewegt';
  }

  @override
  String alertHitBody(String price) {
    return 'Aktueller Kurs: $price';
  }

  @override
  String get alertOpen => 'Öffnen';

  @override
  String get keepInTrayTitle => 'Nach dem Schließen des Fensters weiterlaufen';

  @override
  String get keepInTraySubtitle =>
      'WhatStock bleibt in der Menüleiste bzw. im Infobereich, damit Tastenkürzel und Kursalarme weiter funktionieren.';

  @override
  String get termsOfUse => 'Nutzungsbedingungen';

  @override
  String get privacyPolicy => 'Datenschutzerklärung';

  @override
  String get subscriptionLegal =>
      'Abos verlängern sich monatlich automatisch, bis du kündigst. Mit dem Abo akzeptierst du die Nutzungsbedingungen und die Datenschutzerklärung.';

  @override
  String get deleteAccount => 'Konto löschen';

  @override
  String get deleteAccountTitle => 'Konto löschen?';

  @override
  String get deleteAccountBody =>
      'Dein Konto und alles, was auf unserem Server gespeichert ist (E-Mail, Kontingent, Nutzung), wird endgültig gelöscht; nicht genutzte Analysen verfallen. Ein im Browser bezahltes Abo wird sofort gekündigt; ein Abo über App Store oder Google Play musst du in den Store-Einstellungen kündigen.';

  @override
  String get deleteLocalData =>
      'Auch die Daten auf diesem Gerät löschen (Portfolio, Alarme, Favoriten, Verlauf, gespeicherte Analysen)';

  @override
  String get deleteAccountConfirm => 'Endgültig löschen';

  @override
  String get accountDeleted => 'Dein Konto wurde gelöscht.';

  @override
  String get errDeleteAccount =>
      'Das Konto konnte nicht gelöscht werden. Prüfe die Verbindung und versuche es erneut.';

  @override
  String get aiTrialBriefNote =>
      'Analysen in der Testphase sind kurz und werden mit einem schnelleren KI-Modell erstellt. Mit einem Tarif bekommst du unsere leistungsfähigste KI, mehr Websuchen und die Längen Standard und Ausführlich.';

  @override
  String get billingMonthly => 'Monatlich';

  @override
  String get billingYearly => 'Jährlich';

  @override
  String get yearlyDiscount => '2 Monate gratis';

  @override
  String get perYear => '/ Jahr';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price pro Monat';
  }

  @override
  String get subscriptionLegalYearly =>
      'Jahresabos verlängern sich jährlich automatisch, bis du kündigst. Mit dem Abo akzeptierst du die Nutzungsbedingungen und die Datenschutzerklärung.';

  @override
  String get myAnalyses => 'Meine Analysen';

  @override
  String get navAlerts => 'Alarme';

  @override
  String get inviteTitle => 'Geschlossene Vorschau';

  @override
  String get inviteBody =>
      'WhatStock ist vorerst nur auf Einladung verfügbar. Gib den Einladungscode ein, den du erhalten hast.';

  @override
  String get inviteCodeLabel => 'Einladungscode';

  @override
  String get inviteContinue => 'Weiter';

  @override
  String get inviteInvalid => 'Dieser Einladungscode ist ungültig.';

  @override
  String get inviteExpired =>
      'Diese Einladung ist abgelaufen. Bitte die Person, die dich eingeladen hat, um einen neuen Code.';

  @override
  String get inviteDeviceLimit =>
      'Dieser Einladungscode wird bereits auf der maximalen Anzahl von Geräten verwendet.';

  @override
  String get previewConfidential => 'Vertrauliche Vorschau';

  @override
  String get errPreviewDailyLimit =>
      'Das heutige Analyselimit dieser Vorschau ist erreicht. Versuche es morgen erneut.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'vor $count Stunden',
      one: 'vor 1 Stunde',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'vor $count Tagen',
      one: 'vor 1 Tag',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Diese Analyse aktualisieren?';

  @override
  String staleBody(String age) {
    return 'Sie wurde $age erstellt. Kurse, Nachrichten und Ergebnisse können sich seitdem geändert haben.';
  }

  @override
  String get staleKeep => 'Frühere anzeigen';

  @override
  String get staleRefresh => 'Neu erstellen';

  @override
  String seeAll(int count) {
    return 'Alle anzeigen ($count)';
  }

  @override
  String get searchAnalyses => 'Analysen durchsuchen';

  @override
  String get deleteAnalysis => 'Löschen';

  @override
  String analysisDeleted(String symbol) {
    return 'Analyse zu $symbol gelöscht';
  }

  @override
  String get keyLevelAlertHint =>
      'Tippe auf eine Kursmarke, um einen Alarm zu erhalten, wenn der Kurs sie erreicht.';

  @override
  String get shareAnalysisTitle => 'Analyse teilen';

  @override
  String get shareAsImage => 'Als Bild teilen';

  @override
  String get shareAsText => 'Als Text teilen';

  @override
  String get shareCardFooter => 'Erstellt mit WhatStock';

  @override
  String get shareCardDisclaimer => 'KI-Analyse · keine Anlageberatung';

  @override
  String get referralTitle => 'Freunde einladen';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count zusätzliche Analysen',
      one: '1 zusätzliche Analyse',
    );
    return 'Teile deinen Code. Deine Freunde erhalten sofort $_temp0, und du bekommst dasselbe nach ihrer ersten Analyse.';
  }

  @override
  String get referralYourCode => 'Dein Code';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Eingeladen: $invited · Belohnt: $rewarded';
  }

  @override
  String get referralHaveCode => 'Hast du einen Code von Freunden?';

  @override
  String get referralRedeem => 'Einlösen';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count zusätzliche Analysen hinzugefügt. Willkommen!',
      one: '1 zusätzliche Analyse hinzugefügt. Willkommen!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Diesen Code gibt es nicht. Prüfe ihn und versuche es erneut.';

  @override
  String get referralErrOwn => 'Du kannst deinen eigenen Code nicht einlösen.';

  @override
  String get referralErrAlready =>
      'Du hast bereits einen Code von Freunden eingelöst.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count zusätzliche Analysen',
      one: '1 zusätzliche Analyse',
    );
    return 'Ich analysiere Aktien mit WhatStock: Fotografiere eine Aktie, und die KI erklärt sie dir. Mit meinem Code $code bekommst du $_temp0.';
  }

  @override
  String get referralCopied => 'Code kopiert';

  @override
  String get onboardTitle1 => 'Fotografiere eine Aktie';

  @override
  String get onboardBody1 =>
      'Der Bildschirm einer Broker-App, eine Zeitung oder ein Firmenlogo genügt: WhatStock erkennt die Aktie und zeigt dir Kurs, Chart und wichtige Kennzahlen.';

  @override
  String get onboardTitle2 => 'In Minuten verstanden';

  @override
  String get onboardBody2 =>
      'Die KI-Analyse erklärt dir, was die Aktie bewegt, welche Risiken es gibt, wie sie bewertet ist und in drei Szenarien, wohin sich der Kurs entwickeln könnte – mit Quellen und in deiner Sprache.';

  @override
  String get onboardTitle3 => 'Immer auf dem Laufenden';

  @override
  String get onboardBody3 =>
      'Favoriten, dein Portfolio und Kursalarme halten dich auf dem Laufenden. Deine Analysen bleiben auf deinem Gerät und lassen sich jederzeit wieder öffnen.';

  @override
  String get onboardNext => 'Weiter';

  @override
  String get onboardStart => 'Los geht’s';

  @override
  String get onboardSkip => 'Überspringen';

  @override
  String changesTitle(String date) {
    return 'Seit der vorherigen Analyse ($date)';
  }

  @override
  String get changesPrice => 'Kurs';

  @override
  String get changesNoMajor =>
      'Der Ausblick hat sich nicht wesentlich verändert.';

  @override
  String get changesPreviousSummary => 'Vorherige Zusammenfassung';

  @override
  String get telemetryTitle => 'Hilf mit, WhatStock zu verbessern';

  @override
  String get telemetryBody =>
      'Teile anonyme Nutzungsstatistiken und Absturzberichte: welche Funktionen genutzt werden und was schiefgelaufen ist. Niemals deine Aktien, Analysen oder persönlichen Daten. Du kannst das jederzeit in den Einstellungen ändern.';

  @override
  String get telemetryAllow => 'Erlauben';

  @override
  String get telemetryDecline => 'Nein danke';

  @override
  String get telemetrySetting => 'Anonyme Statistiken und Absturzberichte';

  @override
  String get telemetrySettingHint =>
      'Wie oft Funktionen genutzt werden und Fehlerberichte – ohne persönliche Daten oder Inhalte deiner Suchen und Analysen.';

  @override
  String get askButton => 'Fragen zu dieser Analyse';

  @override
  String askTitle(String symbol) {
    return 'Fragen zu $symbol';
  }

  @override
  String get askIntro =>
      'Frag alles zur Analyse: was ein Risiko bedeutet, was den Ausblick ändern würde, wie eine Zahl zustande kam. Die Antworten beruhen auf dieser Analyse und sind keine Anlageberatung.';

  @override
  String get askHint => 'Stell eine Frage…';

  @override
  String get askSend => 'Senden';

  @override
  String get askThinking => 'Denkt nach…';

  @override
  String get askSuggest1 => 'Was ist das größte Risiko?';

  @override
  String get askSuggest2 => 'Was würde den Ausblick ändern?';

  @override
  String get askSuggest3 => 'Erklär es in einfachen Worten';

  @override
  String get askMaxReached =>
      'Das war die letzte Frage zu dieser Analyse. Erstelle eine neue Analyse, um mehr zu fragen.';

  @override
  String get errAskLimit =>
      'Du hast das heutige Limit für Fragen erreicht. Bitte versuche es morgen erneut.';

  @override
  String get eventTomorrow => 'Morgen';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'in $days Tagen',
      one: 'in 1 Tag',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Quartalszahlen';

  @override
  String get eventBeforeOpen => 'vor Börsenbeginn';

  @override
  String get eventAfterClose => 'nach Börsenschluss';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS-Schätzung: $value';
  }

  @override
  String get eventFromAnalysis => 'Aus deiner Analyse';

  @override
  String get eventsHint =>
      'Berichtstermine deiner Favoriten und Portfolio-Aktien für die nächsten 90 Tage sowie datierte Ereignisse, die deine Analysen erkannt haben.';

  @override
  String get eventsEmpty =>
      'Keine datierten Termine in den nächsten 90 Tagen. Füge Favoriten oder Portfolio-Aktien hinzu, um hier ihre Berichtstermine zu sehen.';

  @override
  String get compareTitle => 'Vergleich';

  @override
  String get compareAdd => 'Aktie hinzufügen';

  @override
  String get compareRemove => 'Entfernen';

  @override
  String get compareTickerHint => 'Ticker, z. B. MSFT';

  @override
  String get compareHint =>
      'Kennzahlen im direkten Vergleich; der beste Wert jeder Zeile ist hervorgehoben. Beträge sind in der Währung der jeweiligen Aktie.';

  @override
  String get compareNoAnalysis => 'Noch keine Analyse';

  @override
  String get portfolioDividends => 'Jährliche Dividenden';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent Rendite';
  }

  @override
  String get portfolioDividendNote =>
      'Die erwarteten jährlichen Dividenden basieren auf den in den letzten 12 Monaten gezahlten Dividenden; künftige Zahlungen sind nicht garantiert.';

  @override
  String positionDividend(String amount) {
    return 'Dividende: $amount pro Jahr';
  }

  @override
  String get chartAvgCost => 'Dein Ø';

  @override
  String get chartAlertLevel => 'Kursalarm';

  @override
  String get marketsToday => 'Märkte heute';

  @override
  String get notesTitle => 'Meine Notizen';

  @override
  String get notesHint =>
      'Warum hast du sie gekauft, worauf achtest du, was würde dich zum Verkauf bewegen?';

  @override
  String get notesInfo =>
      'Nur auf diesem Gerät gespeichert. Die KI-Analyse berücksichtigt deine Notizen.';

  @override
  String notesSaved(String date) {
    return 'Gespeichert $date';
  }

  @override
  String get peersTitle => 'Ähnliche Unternehmen';

  @override
  String get portfolioExport => 'Als CSV exportieren';

  @override
  String get portfolioImport => 'Aus CSV importieren';

  @override
  String get portfolioImportHint =>
      'Einen Kauf pro Zeile einfügen: Tickersymbol, Menge, Preis, Währung, Datum (JJJJ-MM-TT). Spalten können durch Kommas, Semikolons oder Tabulatoren getrennt sein; die Kopfzeile ist optional.';

  @override
  String get portfolioImportButton => 'Importieren';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Käufe hinzugefügt',
      one: '1 Kauf hinzugefügt',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Zeilen übersprungen',
      one: '1 Zeile übersprungen',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Portfolio, Favoriten, Kursalarme und Notizen werden auf all deinen Geräten synchronisiert.';

  @override
  String syncLast(String time) {
    return 'Zuletzt synchronisiert: $time';
  }

  @override
  String get syncNow => 'Jetzt synchronisieren';

  @override
  String get syncFailed =>
      'Synchronisierung fehlgeschlagen. Es wird automatisch erneut versucht.';

  @override
  String get alertEmailTitle => 'E-Mail bei ausgelöstem Alarm';

  @override
  String get alertEmailOn =>
      'Wir prüfen deine Alarme alle paar Minuten und schicken dir eine E-Mail – auch wenn die App geschlossen ist.';

  @override
  String get alertEmailSignIn =>
      'Melde dich in den Einstellungen mit deiner E-Mail an, um Alarme per E-Mail zu erhalten – auch wenn die App geschlossen ist.';

  @override
  String get portfolioHistory => 'Wertentwicklung';

  @override
  String get portfolioReviewTitle => 'KI-Portfolioanalyse';

  @override
  String get portfolioReviewIntro =>
      'Die KI prüft das gesamte Portfolio: Konzentration, Sektor- und Währungsanteile, Risiken, die die Aktien gemeinsam haben, sowie Dividenden. Verbraucht 1 Analyse.';

  @override
  String get portfolioReviewButton => 'Mein Portfolio analysieren';

  @override
  String get portfolioReviewAgain => 'Erneut analysieren';

  @override
  String get portfolioReviewWorking => 'Portfolio wird analysiert…';

  @override
  String get digestTitle => 'Wöchentliche Zusammenfassung per E-Mail';

  @override
  String get digestHint =>
      'Jeden Montag: wie sich deine Favoriten und dein Portfolio letzte Woche entwickelt haben und ihre nächsten Termine für Quartalszahlen.';

  @override
  String get benchmarkTitle => 'Im Vergleich zum S&P 500';

  @override
  String get benchmarkYours => 'Deine Käufe';

  @override
  String get benchmarkIndex => 'Gleiche Beträge im S&P 500';

  @override
  String benchmarkAhead(String points) {
    return '$points Prozentpunkte besser als der Index';
  }

  @override
  String benchmarkBehind(String points) {
    return '$points Prozentpunkte hinter dem Index';
  }

  @override
  String get benchmarkHint =>
      'Als wäre jeder Kauf am selben Tag in einen Indexfonds auf den S&P 500 geflossen. Ohne Dividenden; vergangene Renditen sagen keine zukünftigen voraus.';

  @override
  String get portfolioSell => 'Verkaufen';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbol verkaufen';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Verkaufspreis pro Aktie ($currency)';
  }

  @override
  String get portfolioSellDate => 'Verkaufsdatum';

  @override
  String get portfolioSellAll => 'Alle';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Bestand: $quantity';
  }

  @override
  String get portfolioSold => 'Verkauft';

  @override
  String get portfolioRealized => 'Realisiert';

  @override
  String get portfolioClosed => 'Geschlossene Positionen';

  @override
  String get portfolioClosedNote => 'Alle Aktien verkauft';

  @override
  String get portfolioTransactions => 'Transaktionen';

  @override
  String get portfolioRealizedByYear => 'Realisierte Gewinne nach Jahr';

  @override
  String get portfolioRealizedHint =>
      'Verkäufe werden zuerst mit den ältesten Käufen verrechnet (FIFO) und zum heutigen Wechselkurs umgerechnet. Für die Steuererklärung die Abrechnung des Brokers verwenden.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Seit dieser Analyse wurden neue Quartalszahlen veröffentlicht ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Neue Zahlen';

  @override
  String get portfolioImportBrokers =>
      'Exporte von Revolut, Trading 212 und Interactive Brokers werden ebenfalls erkannt, inklusive Verkäufen; Dividenden und Einzahlungen werden übersprungen.';

  @override
  String get portfolioImportFile => 'Datei auswählen';

  @override
  String offlineBanner(String time) {
    return 'Keine Verbindung – es werden die zuletzt gespeicherten Daten angezeigt ($time).';
  }

  @override
  String get glossMarketCap =>
      'Was das ganze Unternehmen an der Börse wert ist: Aktienkurs × Anzahl der Aktien.';

  @override
  String get glossSharesOutstanding =>
      'Wie viele Aktien das Unternehmen ausgegeben hat. Steigt die Zahl, gehört jeder Aktie ein kleineres Stück; Aktienrückkäufe verringern sie.';

  @override
  String get glossPeTrailing =>
      'Kurs ÷ Gewinn je Aktie der letzten 12 Monate: wie viele Jahre des aktuellen Gewinns du bezahlst. Niedriger ist günstiger, aber schnell wachsende Firmen haben meist ein hohes KGV.';

  @override
  String get glossPeForward =>
      'Wie das KGV, aber mit dem Gewinn, den Analysten für die nächsten 12 Monate erwarten. Liegt es unter dem rückblickenden KGV, wird Gewinnwachstum erwartet.';

  @override
  String get glossPb =>
      'Kurs ÷ Buchwert (Vermögen minus Schulden) je Aktie. Um 1 heißt, dass der Markt das Unternehmen mit dem bewertet, was es auf dem Papier besitzt.';

  @override
  String get glossPs =>
      'Marktwert ÷ Jahresumsatz. Nützlich bei Unternehmen mit wenig oder noch keinem Gewinn; vergleiche es innerhalb derselben Branche.';

  @override
  String get glossEvToFcf =>
      'Unternehmenswert inklusive Schulden (EV) ÷ das Geld, das es in einem Jahr nach Investitionen erwirtschaftet. Niedriger heißt: Du bekommst mehr Cash für den Preis.';

  @override
  String get glossPeg =>
      'KGV ÷ erwartetes jährliches Gewinnwachstum (%). Um 1 gilt oft als fair; es setzt das KGV ins Verhältnis zum Wachstum.';

  @override
  String get glossEps =>
      'Gewinn je Aktie der letzten 12 Monate. Über die Jahre steigendes EPS ist eines der stärksten Zeichen für ein gesundes Unternehmen.';

  @override
  String get glossBeta =>
      'Wie stark die Aktie mit dem Markt mitschwingt: 1 = wie der Markt, 1,5 = etwa 50% größere Ausschläge, unter 1 = ruhiger.';

  @override
  String get glossRevenueTtm =>
      'Gesamte Verkäufe der letzten 12 Monate, vor allen Kosten.';

  @override
  String get glossNetIncomeTtm =>
      'Gewinn, der nach allen Kosten, Zinsen und Steuern der letzten 12 Monate übrig bleibt.';

  @override
  String get glossGrossMargin =>
      'Der Anteil vom Umsatz, der nach den direkten Kosten der Produkte bleibt. Eine hohe Marge deutet oft auf Preissetzungsmacht hin.';

  @override
  String get glossOperatingMargin =>
      'Der Anteil vom Umsatz, der nach den Kosten des laufenden Betriebs (Löhne, Miete, Marketing) bleibt, vor Zinsen und Steuern.';

  @override
  String get glossNetMargin =>
      'Der Anteil vom Umsatz, der am Ende als Gewinn bleibt. 20% heißt: Von je 100 Umsatz sind 20 Gewinn.';

  @override
  String get glossRoe =>
      'Eigenkapitalrendite: Jahresgewinn ÷ Kapital der Eigentümer. Zeigt, wie gut das Management das Geld der Aktionäre einsetzt; über etwa 15% ist stark.';

  @override
  String get glossRoa =>
      'Gesamtkapitalrendite: Jahresgewinn ÷ alles, was das Unternehmen besitzt. Vergleiche sie innerhalb derselben Branche.';

  @override
  String get glossDebtToEquity =>
      'Schulden ÷ Kapital der Eigentümer. Höher heißt mehr geliehenes Geld: mehr Risiko, wenn die Zinsen steigen oder das Geschäft schwächelt.';

  @override
  String get glossCurrentRatio =>
      'Kurzfristiges Vermögen ÷ innerhalb eines Jahres fällige Rechnungen. Über 1 kann das Unternehmen seine kurzfristigen Rechnungen decken.';

  @override
  String get glossRevenueGrowth =>
      'Wie stark der Umsatz gegenüber dem Vorjahr gewachsen ist.';

  @override
  String get glossEpsGrowth =>
      'Wie stark der Gewinn je Aktie gegenüber dem Vorjahr gewachsen ist.';

  @override
  String get glossDividendYield =>
      'Jährliche Dividende ÷ Aktienkurs: das Bareinkommen, das du pro Jahr bekämst, in Prozent dessen, was du zahlst.';

  @override
  String get glossDividendPerShare =>
      'Die Dividende, die im letzten Jahr auf eine Aktie gezahlt wurde.';

  @override
  String get glossPayoutRatio =>
      'Der Anteil des Gewinns, der als Dividende ausgeschüttet wird. Über 100% zahlt das Unternehmen mehr aus, als es verdient – das hält selten lange.';

  @override
  String get glossTitle => 'Was bedeutet das?';

  @override
  String get watchNewsTitle => 'Nachrichten zu deinen Aktien';

  @override
  String get undo => 'Rückgängig';

  @override
  String get watchSort => 'Sortieren';

  @override
  String get watchSortOwn => 'Eigene Reihenfolge';

  @override
  String get watchSortGainers => 'Größte Gewinner zuerst';

  @override
  String get watchSortLosers => 'Größte Verlierer zuerst';

  @override
  String get watchSortName => 'Nach Ticker (A–Z)';

  @override
  String get watchHint =>
      'Zum Umsortieren den Griff ziehen, zum Entfernen nach links wischen. Die Linie zeigt die letzten 30 Tage.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: Deine Analyse ist fertig.';
  }

  @override
  String alertFromCost(String price) {
    return 'Bezogen auf deinen durchschnittlichen Kaufpreis ($price):';
  }

  @override
  String get briefTitle => 'Heute bei deinen Aktien';

  @override
  String get briefButton => 'Tag zusammenfassen';

  @override
  String get briefHint =>
      'Eine kurze KI-Zusammenfassung, wie sich dein Depot und deine Favoriten heute bewegt haben und was die neuesten Nachrichten dazu sagen. Verbraucht keine Analyse.';

  @override
  String get briefRefresh => 'Aktualisieren';

  @override
  String get sectionEarnings => 'Quartalsberichte';

  @override
  String earningsNext(String date) {
    return 'Nächster Bericht: $date';
  }

  @override
  String get earningsExpected => 'Erwartetes EPS';

  @override
  String get earningsReported => 'Gemeldetes EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'In $beats der letzten $total Quartale auf oder über dem erwarteten EPS',
      one: 'In $beats von 1 Quartal auf oder über dem erwarteten EPS',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol legt morgen Quartalszahlen vor';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol legt heute Quartalszahlen vor';
  }

  @override
  String get earningsRemindersTitle => 'Erinnerung an Quartalszahlen';

  @override
  String get earningsRemindersSubtitle =>
      'Eine Benachrichtigung am Vortag, wenn Aktien aus deinen Favoriten oder deinem Portfolio Quartalszahlen vorlegen';

  @override
  String addAllToFavorites(int count) {
    return 'Alle zu Favoriten hinzufügen ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Aus Screenshot importieren';

  @override
  String get holdingsReading => 'Deine Positionen werden gelesen…';

  @override
  String get holdingsReviewTitle => 'Gefundene Positionen';

  @override
  String get holdingsReviewHint =>
      'Prüfe die Zahlen, bevor du sie hinzufügst. Der Preis ist dein durchschnittlicher Kaufpreis pro Aktie, nicht der heutige Kurs.';

  @override
  String get holdingsNoPrice =>
      'Kein durchschnittlicher Kaufpreis auf dem Bild';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Positionen hinzufügen',
      one: '1 Position hinzufügen',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Auf diesem Bild wurden keine Aktienpositionen gefunden. Versuch es mit einem Screenshot der Positions- oder Depotseite deines Brokers.';

  @override
  String get week52Range => '52-Wochen-Spanne';

  @override
  String week52BelowHigh(String percent) {
    return '$percent unter dem 52-Wochen-Hoch';
  }

  @override
  String get week52AtHigh => 'Auf dem 52-Wochen-Hoch';

  @override
  String get alertKindTrailing => 'Fällt vom Hoch';

  @override
  String get alertTrailingPercent => 'Rückgang vom Hoch (%)';

  @override
  String get alertTrailingHint =>
      'Folgt dem Kurs nach oben: Der Alarm geht los, wenn der Kurs um so viel unter seinen Höchststand seit dem Einrichten fällt.';

  @override
  String alertDescTrailing(String percent) {
    return '$percent Rückgang vom Hoch';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'bisheriges Hoch: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol ist um $percent vom Hoch gefallen';
  }

  @override
  String get sectionInsiders => 'Insidertransaktionen';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Käufe',
      one: '1 Kauf',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Verkäufe',
      one: '1 Verkauf',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Netto: $shares Aktien';
  }

  @override
  String get insiderBuy => 'Gekauft';

  @override
  String get insiderSell => 'Verkauft';

  @override
  String get insiderHint =>
      'Käufe und Verkäufe von Vorständen und Direktoren am offenen Markt in den letzten 90 Tagen (SEC Form 4). Optionsausübungen und Aktienzuteilungen werden nicht berücksichtigt.';

  @override
  String get insiderNone =>
      'Keine Insiderkäufe oder -verkäufe am offenen Markt in den letzten 90 Tagen.';

  @override
  String get analystTrend =>
      'Wie sich die Einschätzungen Monat für Monat verändert haben';

  @override
  String get watchListAll => 'Alle';

  @override
  String get watchListNew => 'Neue Liste';

  @override
  String get watchListName => 'Listenname';

  @override
  String get watchListRename => 'Liste umbenennen';

  @override
  String get watchListDelete => 'Liste löschen';

  @override
  String get watchListAddTo => 'Zu einer Liste hinzufügen';

  @override
  String get watchListEmpty =>
      'Noch keine Aktien in dieser Liste. Zum Hinzufügen auf die Listen-Schaltfläche neben einer Aktie tippen.';

  @override
  String get portfolioAskTitle => 'Fragen zu deinem Portfolio';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'Backup';

  @override
  String get backupSave => 'Backup speichern';

  @override
  String get backupSaveHint =>
      'Deine Favoriten, Listen, dein Portfolio, deine Alarme und Notizen in einer Datei.';

  @override
  String get backupRestore => 'Aus Backup wiederherstellen';

  @override
  String get backupRestoreHint =>
      'Fügt hinzu, was in der Datei ist; von deinen aktuellen Daten wird nichts gelöscht.';

  @override
  String get backupRestored => 'Backup wiederhergestellt.';

  @override
  String get backupInvalid => 'Diese Datei ist kein WhatStock-Backup.';

  @override
  String get allocationPositions => 'Aktien';

  @override
  String get allocationSectors => 'Sektoren';

  @override
  String get allocationCurrencies => 'Währungen';

  @override
  String get compareReturn1y => '1-Jahres-Rendite';

  @override
  String get compareFromHigh => 'Abstand zum 52-Wochen-Hoch';

  @override
  String get briefAutoTitle => 'Tägliche Zusammenfassung jeden Morgen';

  @override
  String get briefAutoSubtitle =>
      '„Heute bei deinen Aktien“ wird nach 7 Uhr automatisch erstellt, solange die App läuft; auf Computern informiert dich eine Benachrichtigung. Zählt zu deinem täglichen Fragenkontingent, nicht als Analyse.';

  @override
  String get targetsButton => 'Zielaufteilung';

  @override
  String get targetsTitle => 'Zielaufteilung';

  @override
  String get targetsHint =>
      'Festlegen, welchen Anteil am Portfolio jede Aktie haben soll. Leeres Feld: kein Ziel. Die App zeigt dann, was zu kaufen oder zu verkaufen ist, um dorthin zu kommen.';

  @override
  String targetsSum(String percent) {
    return 'Gesamt: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Kaufen ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Verkaufen ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Im Ziel';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol übertrifft das erwartete EPS';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol verfehlt das erwartete EPS';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'Gemeldetes EPS $actual, erwartet $estimate';
  }

  @override
  String get newsExplain => 'Was bedeutet das?';

  @override
  String get newsExplainNote =>
      'KI-Erklärung, nur auf Basis der Schlagzeile und der Zusammenfassung. Keine Anlageberatung. Zählt zu deinem täglichen Fragenkontingent, nicht als Analyse.';
}
