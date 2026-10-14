// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

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
    return 'Premi $shortcut ovunque per aprire WhatStock.';
  }

  @override
  String get trayOpen => 'Apri WhatStock';

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

  @override
  String get subscription => 'Abbonamento';

  @override
  String get planTrial => 'Prova';

  @override
  String get planNormal => 'Normale';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Nessun piano attivo';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count analisi al mese';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Prova gratuita di $days giorni con $count analisi';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days giorni di prova rimasti',
      one: '1 giorno di prova rimasto',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'La tua prova gratuita è terminata. Scegli un piano per continuare ad analizzare.';

  @override
  String analysesRemaining(int remaining, int total) {
    return '$remaining analisi su $total rimaste in questo periodo';
  }

  @override
  String extraCredits(int count) {
    return '$count analisi extra';
  }

  @override
  String renewsOn(String date) {
    return 'Si rinnova il $date';
  }

  @override
  String get choosePlan => 'Scegli un piano';

  @override
  String get currentPlan => 'Piano attuale';

  @override
  String get subscribe => 'Abbonati';

  @override
  String get perMonth => '/ mese';

  @override
  String get extraPacksTitle => 'Ti servono di più? Acquista analisi extra';

  @override
  String get extraPacksHint =>
      'Le analisi extra non scadono mai e vengono usate dopo la tua quota mensile.';

  @override
  String get buy => 'Acquista';

  @override
  String get restorePurchases => 'Ripristina acquisti';

  @override
  String get manageSubscription => 'Gestisci abbonamento';

  @override
  String get purchaseSuccess => 'Grazie! Il tuo acquisto è attivo.';

  @override
  String get purchasePending => 'Acquisto in attesa…';

  @override
  String get purchaseFailed => 'Non è stato possibile completare l’acquisto.';

  @override
  String get purchaseCanceled => 'Acquisto annullato.';

  @override
  String get billingUnavailable =>
      'Gli acquisti non sono ancora disponibili su questa piattaforma. Abbonati dal tuo telefono o Mac; il tuo piano funzionerà su tutti i dispositivi.';

  @override
  String get errQuotaExceeded =>
      'Non hai più analisi per questo periodo. Passa a un piano superiore o acquista analisi extra.';

  @override
  String get errTrialExpired =>
      'La tua prova gratuita è terminata. Scegli un piano per continuare.';

  @override
  String get errNoPlan => 'Per l’analisi IA è necessario un piano attivo.';

  @override
  String get viewPlans => 'Vedi i piani';

  @override
  String get usageTitle => 'Utilizzo';

  @override
  String get demoPurchaseNote =>
      'Fatturazione demo: su questa piattaforma gli acquisti sono simulati.';

  @override
  String get mostPopular => 'Più popolare';

  @override
  String get bestValue => 'Miglior rapporto qualità-prezzo';

  @override
  String get planFeaturesCommon =>
      'Riconoscimento foto, dati in tempo reale, grafici, preferiti e tutte le 120 lingue sono inclusi in ogni piano. La quota copre le analisi IA.';

  @override
  String get searchLanguages => 'Cerca lingue…';

  @override
  String get noLanguageMatch => 'Nessuna lingua corrisponde.';

  @override
  String get aiSettings => 'Analisi IA';

  @override
  String get aiLength => 'Lunghezza';

  @override
  String get aiDepthBrief => 'Breve';

  @override
  String get aiDepthStandard => 'Standard';

  @override
  String get aiDepthDeep => 'Approfondita';

  @override
  String get aiDepthBriefDesc => 'L’essenziale, in poco tempo.';

  @override
  String get aiDepthStandardDesc => 'Report completo con tutte le sezioni.';

  @override
  String get aiDepthDeepDesc =>
      'Più ricerche web, confronto con i concorrenti e maggiore dettaglio.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Circa $min–$max parole';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'usa $count analisi',
      one: 'usa 1 analisi',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Livello del lettore';

  @override
  String get aiReaderBeginner => 'Principiante';

  @override
  String get aiReaderExperienced => 'Esperto';

  @override
  String get aiReaderBeginnerDesc =>
      'Linguaggio semplice; ogni termine tecnico viene spiegato.';

  @override
  String get aiReaderExperiencedDesc =>
      'Testo più denso con la terminologia finanziaria standard.';

  @override
  String get aiCounterArgument => 'Controargomentazione più forte';

  @override
  String get aiCounterArgumentDesc =>
      'La sintesi si chiude sempre con la migliore argomentazione contro la propria conclusione.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Fino a $count ricerche web per analisi con il tuo piano',
      one: 'Fino a 1 ricerca web per analisi con il tuo piano',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Lunghezza standard per piano: Normale $normal, Pro $pro, Max $max, Ultra $ultra. «Breve» ne usa 2 in meno, «Approfondita» 2 in più.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'fino a $count ricerche web',
      one: 'fino a 1 ricerca web',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ricerche web per analisi',
      one: '1 ricerca web per analisi',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Questa lunghezza richiede $needed analisi, ma te ne restano solo $left. Scegli una lunghezza più breve nelle Impostazioni o ottieni altre analisi.';
  }

  @override
  String get outlookMarketMood => 'Sentiment di mercato';

  @override
  String get moodVeryPessimistic => 'Molto pessimista';

  @override
  String get moodPessimistic => 'Pessimista';

  @override
  String get moodNeutral => 'Neutrale';

  @override
  String get moodOptimistic => 'Ottimista';

  @override
  String get moodVeryOptimistic => 'Molto ottimista';

  @override
  String get scenarioBull => 'Scenario rialzista';

  @override
  String get scenarioBase => 'Scenario base';

  @override
  String get scenarioBear => 'Scenario ribassista';

  @override
  String outlookCurrentPrice(String price) {
    return 'Prezzo attuale: $price';
  }

  @override
  String get outlookKeyLevels => 'Livelli chiave';

  @override
  String get keyLevelSupport => 'Supporto';

  @override
  String get keyLevelResistance => 'Resistenza';

  @override
  String get keyLevelAnchor => 'Ancoraggio';

  @override
  String get upcomingEvents => 'Prossimi eventi';

  @override
  String get outlookChartNote =>
      'Intervalli indicativi; le probabilità sono stime approssimative, non previsioni.';

  @override
  String get accountTitle => 'Account';

  @override
  String get signIn => 'Accedi';

  @override
  String get signOut => 'Esci';

  @override
  String get notSignedIn => 'Accesso non effettuato';

  @override
  String get accountBenefit =>
      'Accedi per usare il tuo abbonamento su tutti i tuoi dispositivi.';

  @override
  String get accountSyncedNote =>
      'Il tuo abbonamento e le analisi rimaste sono gli stessi su ogni dispositivo.';

  @override
  String get signInTitle => 'Accedi a WhatStock';

  @override
  String get emailLabel => 'Indirizzo email';

  @override
  String get continueWithEmail => 'Continua con l’email';

  @override
  String codeSentTo(String email) {
    return 'Abbiamo inviato un codice di 6 cifre a $email. È valido per 10 minuti.';
  }

  @override
  String get codeLabel => 'Codice di accesso';

  @override
  String get resendCode => 'Invia un nuovo codice';

  @override
  String get useDifferentEmail => 'Usa un’altra email';

  @override
  String get errInvalidCode => 'Il codice è errato o scaduto.';

  @override
  String get errInvalidEmail => 'Inserisci un indirizzo email valido.';

  @override
  String get errSignInFailed =>
      'Accesso non riuscito. Controlla la connessione e riprova.';

  @override
  String get checkoutWaiting =>
      'Completa il pagamento nel browser. L’app si aggiornerà automaticamente al termine.';

  @override
  String get paymentViaStripe =>
      'Pagamento sicuro nel browser tramite Stripe. Disdici quando vuoi.';

  @override
  String get paymentViaStore =>
      'Addebito tramite il tuo account App Store o Google Play. Puoi disdire in qualsiasi momento dalle impostazioni dello store.';

  @override
  String get keySpace => 'Spazio';

  @override
  String get doubleOptionTitle => 'Doppia pressione di Opzione';

  @override
  String get doubleOptionSubtitle =>
      'Anche premendo rapidamente due volte il tasto Opzione si apre WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Perché funzioni anche nelle altre app, consenti WhatStock in Impostazioni di Sistema → Privacy e sicurezza → Monitoraggio input, poi riapri l’app.';

  @override
  String get openSystemSettings => 'Apri Impostazioni di Sistema';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Premi $shortcut o due volte il tasto Opzione ovunque per aprire WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Più probabile';

  @override
  String get longTermToday => 'Oggi';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years anni',
      one: '1 anno',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range all\'anno';
  }

  @override
  String longTermLikely(String price) {
    return 'più probabile: $price';
  }

  @override
  String get confidenceLow => 'Affidabilità bassa';

  @override
  String get confidenceMedium => 'Affidabilità media';

  @override
  String get confidenceHigh => 'Affidabilità alta';

  @override
  String get longTermNote =>
      'Gli intervalli di lungo periodo si basano sulle ipotesi indicate e si allargano col tempo. Prezzi esclusi i dividendi. Stime approssimative, non previsioni.';

  @override
  String get portfolio => 'Portafoglio';

  @override
  String get portfolioEmpty =>
      'Ancora vuoto. Apri un’azione e tocca “Aggiungi al portafoglio” per seguire ciò che possiedi.';

  @override
  String get portfolioLocalNote =>
      'Salvato solo su questo dispositivo. I totali sono convertiti ai cambi di riferimento BCE; i prezzi possono essere ritardati.';

  @override
  String get addToPortfolio => 'Aggiungi al portafoglio';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Aggiungi $symbol';
  }

  @override
  String get portfolioQuantity => 'Numero di azioni';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Prezzo per azione ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Data di acquisto';

  @override
  String get portfolioAdd => 'Aggiungi';

  @override
  String get portfolioInvalidNumber => 'Inserisci un numero maggiore di zero.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol aggiunto al portafoglio.';
  }

  @override
  String get portfolioTotalValue => 'Valore totale';

  @override
  String get portfolioToday => 'Oggi';

  @override
  String get portfolioGainLoss => 'Guadagno/perdita';

  @override
  String get portfolioInvested => 'Investito';

  @override
  String get portfolioAllocation => 'Ripartizione';

  @override
  String get portfolioPositions => 'Posizioni';

  @override
  String portfolioAvgCost(String price) {
    return 'prezzo medio $price';
  }

  @override
  String get portfolioYourPosition => 'La tua posizione';

  @override
  String get portfolioPurchases => 'Acquisti';

  @override
  String get portfolioRemove => 'Rimuovi';

  @override
  String get portfolioExcluded =>
      'Le posizioni senza prezzo o tasso di cambio sono escluse dai totali.';

  @override
  String get priceAlerts => 'Avvisi di prezzo';

  @override
  String get setPriceAlert => 'Imposta avviso di prezzo';

  @override
  String alertDialogTitle(String symbol) {
    return 'Avviso di prezzo · $symbol';
  }

  @override
  String get alertKindAbove => 'Sale sopra';

  @override
  String get alertKindBelow => 'Scende sotto';

  @override
  String get alertKindMove => 'Si muove molto in un giorno';

  @override
  String alertTargetPrice(String currency) {
    return 'Prezzo ($currency)';
  }

  @override
  String get alertMovePercent => 'Variazione giornaliera (%)';

  @override
  String get alertAlreadyMet => 'Il prezzo ha già superato questo livello.';

  @override
  String get alertSave => 'Imposta avviso';

  @override
  String alertCreated(String symbol) {
    return 'Avviso impostato per $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Nessun avviso. Apri un’azione e tocca la campanella.';

  @override
  String get alertsNote =>
      'Gli avvisi vengono controllati ogni 5 minuti finché WhatStock è in esecuzione. Sul computer resta attivo nella barra dei menu o nell’area di notifica; sul telefono, per ora avvisa quando l’app è aperta.';

  @override
  String alertDescAbove(String price) {
    return 'Sopra $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Sotto $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Variazione giornaliera ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Scattato il $date a $price';
  }

  @override
  String get alertRearm => 'Riattiva';

  @override
  String get alertDelete => 'Elimina';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol è salito sopra $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol è sceso sotto $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol si è mosso del $percent oggi';
  }

  @override
  String alertHitBody(String price) {
    return 'Prezzo attuale: $price';
  }

  @override
  String get alertOpen => 'Apri';

  @override
  String get keepInTrayTitle => 'Continua dopo la chiusura della finestra';

  @override
  String get keepInTraySubtitle =>
      'WhatStock resta nella barra dei menu o nell’area di notifica, così la scorciatoia e gli avvisi di prezzo continuano a funzionare.';

  @override
  String get termsOfUse => 'Condizioni d’uso';

  @override
  String get privacyPolicy => 'Informativa sulla privacy';

  @override
  String get subscriptionLegal =>
      'L’abbonamento si rinnova automaticamente ogni mese finché non lo disdici. Abbonandoti accetti le Condizioni d’uso e l’Informativa sulla privacy.';

  @override
  String get deleteAccount => 'Elimina account';

  @override
  String get deleteAccountTitle => 'Eliminare il tuo account?';

  @override
  String get deleteAccountBody =>
      'Il tuo account e tutto ciò che è salvato sul nostro server (email, quota, utilizzo) verranno eliminati definitivamente; le analisi non usate andranno perse. Un abbonamento pagato nel browser viene disdetto subito; uno di App Store o Google Play va disdetto nelle impostazioni dello store.';

  @override
  String get deleteLocalData =>
      'Elimina anche i dati su questo dispositivo (portafoglio, avvisi, preferiti, cronologia, analisi salvate)';

  @override
  String get deleteAccountConfirm => 'Elimina definitivamente';

  @override
  String get accountDeleted => 'Il tuo account è stato eliminato.';

  @override
  String get errDeleteAccount =>
      'Impossibile eliminare l’account. Controlla la connessione e riprova.';

  @override
  String get aiTrialBriefNote =>
      'Le analisi di prova sono brevi e create con un modello di IA più veloce. Con un piano ottieni la nostra IA più potente, più ricerche web e le lunghezze Standard e Approfondita.';

  @override
  String get billingMonthly => 'Mensile';

  @override
  String get billingYearly => 'Annuale';

  @override
  String get yearlyDiscount => '2 mesi gratis';

  @override
  String get perYear => '/ anno';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price al mese';
  }

  @override
  String get subscriptionLegalYearly =>
      'L’abbonamento annuale si rinnova automaticamente ogni anno finché non lo disdici. Abbonandoti accetti le Condizioni d’uso e l’Informativa sulla privacy.';

  @override
  String get myAnalyses => 'Le mie analisi';

  @override
  String get navAlerts => 'Avvisi';

  @override
  String get inviteTitle => 'Anteprima riservata';

  @override
  String get inviteBody =>
      'Per ora WhatStock è disponibile solo su invito. Inserisci il codice di invito che hai ricevuto.';

  @override
  String get inviteCodeLabel => 'Codice di invito';

  @override
  String get inviteContinue => 'Continua';

  @override
  String get inviteInvalid => 'Questo codice di invito non è valido.';

  @override
  String get inviteExpired =>
      'Questo invito è scaduto. Chiedi un nuovo codice alla persona che ti ha invitato.';

  @override
  String get inviteDeviceLimit =>
      'Questo codice di invito è già in uso sul numero massimo di dispositivi.';

  @override
  String get previewConfidential => 'Anteprima riservata';

  @override
  String get errPreviewDailyLimit =>
      'Il limite giornaliero di analisi di questa anteprima è stato raggiunto. Riprova domani.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ore fa',
      one: '1 ora fa',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count giorni fa',
      one: '1 giorno fa',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Aggiornare questa analisi?';

  @override
  String staleBody(String age) {
    return 'Questa analisi è stata creata $age. Da allora prezzi, notizie e risultati potrebbero essere cambiati.';
  }

  @override
  String get staleKeep => 'Mostra la precedente';

  @override
  String get staleRefresh => 'Creane una nuova';

  @override
  String seeAll(int count) {
    return 'Vedi tutte ($count)';
  }

  @override
  String get searchAnalyses => 'Cerca nelle tue analisi';

  @override
  String get deleteAnalysis => 'Elimina';

  @override
  String analysisDeleted(String symbol) {
    return 'Analisi di $symbol eliminata';
  }

  @override
  String get keyLevelAlertHint =>
      'Tocca un livello per ricevere un avviso quando il prezzo lo raggiunge.';

  @override
  String get shareAnalysisTitle => 'Condividi analisi';

  @override
  String get shareAsImage => 'Condividi come immagine';

  @override
  String get shareAsText => 'Condividi come testo';

  @override
  String get shareCardFooter => 'Creato con WhatStock';

  @override
  String get shareCardDisclaimer =>
      'Analisi IA · non è un consiglio di investimento';

  @override
  String get referralTitle => 'Invita gli amici';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analisi extra',
      one: '1 analisi extra',
    );
    return 'Condividi il tuo codice. Il tuo amico riceve subito $_temp0 e tu ottieni lo stesso dopo la sua prima analisi.';
  }

  @override
  String get referralYourCode => 'Il tuo codice';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Invitati: $invited · Premiati: $rewarded';
  }

  @override
  String get referralHaveCode => 'Hai un codice di un amico?';

  @override
  String get referralRedeem => 'Riscatta';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analisi extra aggiunte. Ti diamo il benvenuto!',
      one: '1 analisi extra aggiunta. Ti diamo il benvenuto!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Questo codice non esiste. Controllalo e riprova.';

  @override
  String get referralErrOwn => 'Non puoi riscattare il tuo codice.';

  @override
  String get referralErrAlready => 'Hai già riscattato il codice di un amico.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analisi extra',
      one: '1 analisi extra',
    );
    return 'Analizzo le azioni con WhatStock: fotografi un\'azione e l\'IA te la spiega. Con il mio codice $code ricevi $_temp0.';
  }

  @override
  String get referralCopied => 'Codice copiato';

  @override
  String get onboardTitle1 => 'Fotografa un\'azione';

  @override
  String get onboardBody1 =>
      'Basta lo schermo di un\'app di trading, un giornale o il logo di un\'azienda: WhatStock riconosce l\'azione e ti mostra prezzo, grafico e dati chiave.';

  @override
  String get onboardTitle2 => 'Capiscila in pochi minuti';

  @override
  String get onboardBody2 =>
      'L\'analisi IA spiega cosa muove il titolo, i rischi, la valutazione e tre scenari su dove potrebbe andare il prezzo, con le fonti e nella tua lingua.';

  @override
  String get onboardTitle3 => 'Resta sempre aggiornato';

  @override
  String get onboardBody3 =>
      'Preferiti, il tuo portafoglio e gli avvisi di prezzo ti tengono informato. Le tue analisi restano sul tuo dispositivo, pronte da riaprire.';

  @override
  String get onboardNext => 'Avanti';

  @override
  String get onboardStart => 'Inizia';

  @override
  String get onboardSkip => 'Salta';

  @override
  String changesTitle(String date) {
    return 'Dall\'analisi precedente ($date)';
  }

  @override
  String get changesPrice => 'Prezzo';

  @override
  String get changesNoMajor =>
      'Le prospettive non sono cambiate in modo significativo.';

  @override
  String get changesPreviousSummary => 'Sintesi precedente';

  @override
  String get telemetryTitle => 'Aiutaci a migliorare WhatStock';

  @override
  String get telemetryBody =>
      'Condividi statistiche di utilizzo anonime e rapporti sugli arresti anomali: quali funzioni vengono usate e cosa è andato storto. Mai i tuoi titoli, le tue analisi o i tuoi dati personali. Puoi modificare questa scelta in qualsiasi momento nelle Impostazioni.';

  @override
  String get telemetryAllow => 'Consenti';

  @override
  String get telemetryDecline => 'No, grazie';

  @override
  String get telemetrySetting =>
      'Statistiche anonime e rapporti sugli arresti anomali';

  @override
  String get telemetrySettingHint =>
      'Frequenza di utilizzo delle funzioni e segnalazioni di errori, senza dati personali né il contenuto delle tue ricerche e analisi.';

  @override
  String get askButton => 'Fai domande su questa analisi';

  @override
  String askTitle(String symbol) {
    return 'Domande su $symbol';
  }

  @override
  String get askIntro =>
      'Chiedi qualsiasi cosa sull’analisi: cosa significa un rischio, cosa potrebbe cambiare le prospettive, come è stato calcolato un numero. Le risposte si basano su questa analisi e non costituiscono un consiglio di investimento.';

  @override
  String get askHint => 'Fai una domanda…';

  @override
  String get askSend => 'Invia';

  @override
  String get askThinking => 'Sto pensando…';

  @override
  String get askSuggest1 => 'Qual è il rischio maggiore?';

  @override
  String get askSuggest2 => 'Cosa potrebbe cambiare le prospettive?';

  @override
  String get askSuggest3 => 'Spiegamelo in parole semplici';

  @override
  String get askMaxReached =>
      'Era l’ultima domanda per questa analisi. Per farne altre, genera una nuova analisi.';

  @override
  String get errAskLimit =>
      'Hai raggiunto il limite giornaliero di domande. Riprova domani.';

  @override
  String get eventTomorrow => 'Domani';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'tra $days giorni',
      one: 'tra 1 giorno',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Risultati trimestrali';

  @override
  String get eventBeforeOpen => 'prima dell\'apertura';

  @override
  String get eventAfterClose => 'dopo la chiusura';

  @override
  String eventEpsEstimate(String value) {
    return 'Stima EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Dalla tua analisi';

  @override
  String get eventsHint =>
      'Le date dei risultati dei tuoi preferiti e dei titoli in portafoglio per i prossimi 90 giorni, e gli eventi con data segnalati dalle tue analisi.';

  @override
  String get eventsEmpty =>
      'Nessun evento con data nei prossimi 90 giorni. Aggiungi preferiti o titoli al portafoglio per vedere qui le date dei loro risultati.';
}
