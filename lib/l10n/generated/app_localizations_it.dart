// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'StockLens';

  @override
  String get homeTagline => 'Fotografa un\'azione e scopri tutto su di essa.';

  @override
  String get homeHint =>
      'Un certificato azionario, la schermata di un\'app di trading, un giornale o il logo di un\'azienda: qualsiasi cosa che identifichi un\'azione.';

  @override
  String get takePhoto => 'Scatta una foto';

  @override
  String get chooseFromGallery => 'Scegli dalla galleria';

  @override
  String get chooseImage => 'Scegli un\'immagine';

  @override
  String get enterTickerManually => 'Inserisci il ticker manualmente';

  @override
  String get tickerInputLabel => 'Simbolo (ticker)';

  @override
  String get tickerInputHint => 'es. AAPL';

  @override
  String get lookUp => 'Cerca';

  @override
  String demoModeBanner(String symbols) {
    return 'Modalità demo: nessuna chiave per i dati di mercato configurata. Dati di esempio disponibili per: $symbols.';
  }

  @override
  String get recognizing => 'Analisi dell\'immagine…';

  @override
  String get loadingData => 'Caricamento dei dati…';

  @override
  String get noCandidatesTitle => 'Nessuna azione riconosciuta';

  @override
  String get noCandidatesBody =>
      'Non siamo riusciti a identificare un\'azione in questa immagine. Prova con una foto più nitida o inserisci il ticker manualmente.';

  @override
  String get whatWeSaw => 'Cosa abbiamo visto';

  @override
  String get chooseCandidateTitle => 'Quale azione intendevi?';

  @override
  String confidencePercent(int percent) {
    return '$percent% di affidabilità';
  }

  @override
  String get settings => 'Impostazioni';

  @override
  String get language => 'Lingua';

  @override
  String get systemLanguage => 'Predefinita di sistema';

  @override
  String get about => 'Informazioni';

  @override
  String get disclaimer =>
      'Questa app fornisce solo informazioni e non costituisce consulenza finanziaria. I dati potrebbero essere in ritardo o imprecisi.';

  @override
  String dataSource(String source) {
    return 'Fonte dati: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Riconoscimento: $source';
  }

  @override
  String get retry => 'Riprova';

  @override
  String get cancel => 'Annulla';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Chiudi';

  @override
  String get errorGeneric => 'Si è verificato un errore.';

  @override
  String get errorSectionUnavailable => 'Impossibile caricare questa sezione.';

  @override
  String get notAvailable => 'n/d';

  @override
  String get sectionIdentity => 'Identificazione';

  @override
  String get sectionPrice => 'Prezzo';

  @override
  String get sectionValuation => 'Valutazione';

  @override
  String get sectionFinancials => 'Dati finanziari';

  @override
  String get sectionDividend => 'Dividendo';

  @override
  String get sectionProfile => 'Profilo aziendale';

  @override
  String get sectionAnalysts => 'Giudizi degli analisti';

  @override
  String get sectionNews => 'Notizie';

  @override
  String get sectionRecognition => 'Dettagli del riconoscimento';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Borsa';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Valuta';

  @override
  String get labelCountry => 'Paese';

  @override
  String get labelIndustry => 'Industria';

  @override
  String get labelSector => 'Settore';

  @override
  String get labelWebsite => 'Sito web';

  @override
  String get labelIpoDate => 'Data IPO';

  @override
  String get labelMarketCap => 'Capitalizzazione di mercato';

  @override
  String get labelSharesOutstanding => 'Azioni in circolazione';

  @override
  String get labelEmployees => 'Dipendenti';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Sede centrale';

  @override
  String get labelDescription => 'Descrizione';

  @override
  String get labelLastPrice => 'Ultimo prezzo';

  @override
  String get labelChange => 'Variazione';

  @override
  String get labelOpen => 'Apertura';

  @override
  String get labelDayHigh => 'Massimo del giorno';

  @override
  String get labelDayLow => 'Minimo del giorno';

  @override
  String get labelPreviousClose => 'Chiusura precedente';

  @override
  String get labelWeek52High => 'Massimo a 52 settimane';

  @override
  String get labelWeek52Low => 'Minimo a 52 settimane';

  @override
  String get labelAverageVolume10d => 'Volume medio (10 giorni)';

  @override
  String updatedAt(String time) {
    return 'Aggiornato $time';
  }

  @override
  String get labelPeTrailing => 'P/E (storico)';

  @override
  String get labelPeForward => 'P/E (atteso)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / flusso di cassa libero';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Ricavi (TTM)';

  @override
  String get labelNetIncomeTtm => 'Utile netto (TTM)';

  @override
  String get labelGrossMargin => 'Margine lordo';

  @override
  String get labelOperatingMargin => 'Margine operativo';

  @override
  String get labelNetMargin => 'Margine netto';

  @override
  String get labelRoe => 'Redditività del capitale proprio (ROE)';

  @override
  String get labelRoa => 'Redditività degli attivi (ROA)';

  @override
  String get labelDebtToEquity => 'Debito / capitale proprio';

  @override
  String get labelCurrentRatio => 'Indice di liquidità corrente';

  @override
  String get labelRevenueGrowth => 'Crescita dei ricavi (YoY)';

  @override
  String get labelEpsGrowth => 'Crescita dell\'EPS (YoY)';

  @override
  String get labelDividendYield => 'Rendimento del dividendo';

  @override
  String get labelDividendPerShare => 'Dividendo per azione';

  @override
  String get labelPayoutRatio => 'Tasso di distribuzione (payout)';

  @override
  String get labelConsensus => 'Consenso';

  @override
  String get ratingStrongBuy => 'Acquisto forte';

  @override
  String get ratingBuy => 'Acquistare';

  @override
  String get ratingHold => 'Mantenere';

  @override
  String get ratingSell => 'Vendere';

  @override
  String get ratingStrongSell => 'Vendita forte';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analisti',
      one: '1 analista',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Periodo: $period';
  }

  @override
  String get noNews => 'Nessuna notizia recente.';

  @override
  String get openArticle => 'Apri l\'articolo';

  @override
  String get openLinkFailed => 'Impossibile aprire il link.';

  @override
  String get recognitionSummary => 'Riepilogo';

  @override
  String get recognitionEvidence => 'Perché lo pensiamo';

  @override
  String get recognitionRawText => 'Testo letto dall\'immagine';

  @override
  String get errMissingAnthropicKey =>
      'Il riconoscimento delle immagini non è configurato (manca ANTHROPIC_API_KEY). Inserisci il ticker manualmente.';

  @override
  String get errRecognitionUnreachable =>
      'Impossibile raggiungere il servizio di riconoscimento. Controlla la connessione a internet.';

  @override
  String errRecognitionHttp(String status) {
    return 'Il servizio di riconoscimento ha restituito un errore (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Il servizio di riconoscimento non è riuscito a elaborare questa immagine.';

  @override
  String get errRecognitionTruncated =>
      'La risposta del riconoscimento è stata interrotta. Riprova.';

  @override
  String get errRecognitionBadResponse =>
      'Risposta inattesa dal servizio di riconoscimento.';

  @override
  String get errRecognitionEmpty =>
      'Il servizio di riconoscimento ha restituito una risposta vuota.';

  @override
  String get errMissingFinnhubKey =>
      'I dati di mercato non sono configurati (manca FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Impossibile raggiungere il servizio dei dati di mercato. Controlla la connessione a internet.';

  @override
  String get errMarketRateLimited =>
      'Troppe richieste al servizio dei dati di mercato. Attendi un minuto.';

  @override
  String errMarketHttp(String status) {
    return 'Il servizio dei dati di mercato ha restituito un errore (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Risposta inattesa dal servizio dei dati di mercato.';

  @override
  String errNoQuote(String symbol) {
    return 'Nessun dato di prezzo trovato per $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Nessun profilo aziendale trovato per $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'La modalità demo supporta solo $symbols. Aggiungi una FINNHUB_API_KEY per i dati in tempo reale.';
  }

  @override
  String errUnknown(String detail) {
    return 'Si è verificato un errore: $detail';
  }

  @override
  String get newSearch => 'Nuova ricerca';

  @override
  String get recentSearches => 'Recenti';

  @override
  String get noRecentSearches => 'Ancora nessuna ricerca recente.';

  @override
  String get clearRecent => 'Cancella recenti';

  @override
  String get greeting => 'Quale azione guardiamo?';

  @override
  String get searchHint => 'Ticker o nome dell’azienda';

  @override
  String get attachImage => 'Allega un’immagine';

  @override
  String get searchResultsTitle => 'Risultati della ricerca';

  @override
  String errNoResults(String query) {
    return 'Nessuna azione trovata per “$query”.';
  }

  @override
  String get quickBarHint => 'Digita un ticker o il nome di un’azienda…';

  @override
  String get openFullWindow => 'Apri finestra';

  @override
  String hotkeyHint(String shortcut) {
    return 'Premi $shortcut ovunque per aprire StockLens.';
  }

  @override
  String get trayOpen => 'Apri StockLens';

  @override
  String get trayQuickSearch => 'Ricerca rapida';

  @override
  String get trayQuit => 'Esci';

  @override
  String get appearance => 'Aspetto';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeDark => 'Scuro';

  @override
  String get themeLight => 'Chiaro';

  @override
  String get back => 'Indietro';

  @override
  String get aiSectionTitle => 'Analisi IA';

  @override
  String get aiIntro =>
      'Una panoramica dettagliata scritta dall’IA: sintesi delle notizie recenti, attività, punti di forza, rischi e fattori nascosti, valutazione, prospettive di prezzo con scenari dal punto di vista psicologico, sociologico, tecnico e macroeconomico, e cosa tenere d’occhio.';

  @override
  String get aiGenerate => 'Genera analisi';

  @override
  String get aiRegenerate => 'Rigenera';

  @override
  String get aiGenerating =>
      'Preparazione dell’analisi in corso… può richiedere uno o due minuti.';

  @override
  String get aiSources => 'Fonti';

  @override
  String aiGeneratedAt(String time) {
    return 'Generata $time';
  }

  @override
  String get aiDisclaimer =>
      'Analisi generata dall’IA sulla base di dati pubblici e notizie recenti. Può contenere errori o non essere aggiornata e non costituisce un consiglio di investimento.';

  @override
  String get errAiNotConfigured =>
      'L’analisi IA non è configurata (manca ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Impossibile raggiungere il servizio di IA. Controlla la connessione a internet.';

  @override
  String errAiHttp(String status) {
    return 'Il servizio di IA ha restituito un errore (HTTP $status).';
  }

  @override
  String get errAiRefused =>
      'Il servizio di IA ha rifiutato di analizzare questa azione.';

  @override
  String get errAiBadResponse => 'Risposta inattesa dal servizio di IA.';

  @override
  String get sectionChart => 'Grafico del prezzo';

  @override
  String get rangeOneWeek => '1S';

  @override
  String get rangeOneMonth => '1M';

  @override
  String get rangeThreeMonths => '3M';

  @override
  String get rangeOneYear => '1A';

  @override
  String get rangeFiveYears => '5A';

  @override
  String get chartUnavailable =>
      'Lo storico dei prezzi non è disponibile dalla fonte dati attuale.';

  @override
  String get sectionStatements => 'Bilanci (annuali)';

  @override
  String get labelFiscalYear => 'Esercizio fiscale';

  @override
  String get labelRevenue => 'Ricavi';

  @override
  String get labelNetIncome => 'Utile netto';

  @override
  String get labelTotalAssets => 'Totale attivo';

  @override
  String get labelTotalLiabilities => 'Totale passività';

  @override
  String get labelEquity => 'Patrimonio netto';

  @override
  String get labelOperatingCashFlow => 'Flusso di cassa operativo';

  @override
  String get statementsUnavailable =>
      'Per questa azione non sono disponibili bilanci pubblicati.';

  @override
  String get launchAtLogin => 'Avvia all’accesso';

  @override
  String get hotkeyLabel => 'Scorciatoia globale';

  @override
  String get hotkeyRecordHint =>
      'Fai clic qui, poi premi la nuova combinazione di tasti';

  @override
  String get hotkeyReset => 'Ripristina predefinita';

  @override
  String get pasteImage => 'Incolla immagine dagli appunti';

  @override
  String get errClipboardNoImage => 'Non c’è nessuna immagine negli appunti.';

  @override
  String get favorites => 'Preferiti';

  @override
  String get addToFavorites => 'Aggiungi ai preferiti';

  @override
  String get removeFromFavorites => 'Rimuovi dai preferiti';

  @override
  String get noFavorites =>
      'Nessun preferito. Tocca la stella di un’azione per aggiungerla.';

  @override
  String get displayCurrency => 'Valuta di visualizzazione';

  @override
  String get displayCurrencyNone => 'Solo la valuta dell’azione';

  @override
  String labelConverted(String currency) {
    return '≈ in $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Cambio: 1 $from = $rate $to (BCE, $date)';
  }

  @override
  String get updates => 'Aggiornamenti';

  @override
  String currentVersion(String version) {
    return 'Versione $version';
  }

  @override
  String get autoUpdate => 'Installa gli aggiornamenti automaticamente';

  @override
  String get checkForUpdates => 'Cerca aggiornamenti';

  @override
  String get updateChecking => 'Ricerca di aggiornamenti…';

  @override
  String get updateUpToDate => 'Hai la versione più recente.';

  @override
  String updateAvailable(String version) {
    return 'È disponibile la versione $version.';
  }

  @override
  String get updateDownloading => 'Download dell’aggiornamento in background…';

  @override
  String get updateDownloaded =>
      'L’aggiornamento è pronto. Riavvia per installarlo.';

  @override
  String get updateNow => 'Aggiorna';

  @override
  String get restartNow => 'Riavvia';

  @override
  String get updatesViaStore =>
      'Gli aggiornamenti arrivano automaticamente tramite l’app store.';

  @override
  String get updateCheckFailed => 'Impossibile cercare aggiornamenti.';
}
