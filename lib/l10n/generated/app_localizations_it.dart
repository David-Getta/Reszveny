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
  String get labelYieldOnCost => 'Rendimento sul prezzo di carico';

  @override
  String get labelDividendGrowth5y => 'Crescita del dividendo (5 anni)';

  @override
  String get dividendNone => 'Nessun dividendo pagato negli ultimi 12 mesi.';

  @override
  String get dividendOnYourShares => 'Sulle tue azioni, all’anno';

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
      'Salvato su questo dispositivo e, se hai effettuato l’accesso, nel tuo account. I totali sono convertiti ai cambi di riferimento BCE; i prezzi possono essere ritardati.';

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
  String homeDividendsThisYear(String amount) {
    return 'Dividendi quest’anno: $amount';
  }

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
  String get eventDividend => 'Dividendo atteso';

  @override
  String get eventDividendEstimate =>
      'Stima basata sui pagamenti che hai registrato';

  @override
  String get eventsHint =>
      'Le date dei risultati dei tuoi preferiti e dei titoli in portafoglio per i prossimi 90 giorni, gli eventi con data segnalati dalle tue analisi e i dividendi attesi in base ai pagamenti che hai registrato.';

  @override
  String get eventsEmpty =>
      'Nessun evento con data nei prossimi 90 giorni. Aggiungi preferiti o titoli al portafoglio per vedere qui le date dei loro risultati; i dividendi registrati mostrano il prossimo pagamento atteso.';

  @override
  String get compareTitle => 'Confronta';

  @override
  String get compareAdd => 'Aggiungi un titolo';

  @override
  String get compareRemove => 'Rimuovi';

  @override
  String get compareTickerHint => 'Ticker, es. MSFT';

  @override
  String get compareHint =>
      'Dati chiave a confronto; il valore migliore di ogni riga è evidenziato. Gli importi sono nella valuta di ciascun titolo.';

  @override
  String get compareNoAnalysis => 'Ancora nessuna analisi';

  @override
  String get portfolioDividends => 'Dividendi annui';

  @override
  String portfolioDividendYield(String percent) {
    return 'Rendimento del $percent';
  }

  @override
  String get portfolioDividendNote =>
      'I dividendi annui previsti si basano sui dividendi pagati negli ultimi 12 mesi; i pagamenti futuri non sono garantiti.';

  @override
  String positionDividend(String amount) {
    return 'Dividendo: $amount all’anno';
  }

  @override
  String get chartAvgCost => 'Il tuo medio';

  @override
  String get chartAlertLevel => 'Avviso';

  @override
  String get marketsToday => 'Mercati oggi';

  @override
  String get notesTitle => 'Le mie note';

  @override
  String get notesHint =>
      'Perché l’hai comprata, cosa stai tenendo d’occhio, cosa ti farebbe vendere?';

  @override
  String get notesInfo =>
      'Salvato su questo dispositivo e, se hai effettuato l’accesso, nel tuo account. L’analisi IA tiene conto delle tue note.';

  @override
  String notesSaved(String date) {
    return 'Salvato $date';
  }

  @override
  String get peersTitle => 'Aziende simili';

  @override
  String get portfolioExport => 'Esporta come CSV';

  @override
  String get portfolioImport => 'Importa da CSV';

  @override
  String get portfolioImportHint =>
      'Incolla un acquisto per riga: simbolo, quantità, prezzo, valuta, data (AAAA-MM-GG). Le colonne possono essere separate da virgole, punti e virgola o tabulazioni; la riga di intestazione è facoltativa.';

  @override
  String get portfolioImportButton => 'Importa';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count acquisti aggiunti',
      one: '1 acquisto aggiunto',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count righe ignorate',
      one: '1 riga ignorata',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Portafoglio, preferiti, avvisi di prezzo e note sono sincronizzati su tutti i tuoi dispositivi.';

  @override
  String syncLast(String time) {
    return 'Ultima sincronizzazione: $time';
  }

  @override
  String get syncNow => 'Sincronizza ora';

  @override
  String get syncFailed =>
      'Sincronizzazione non riuscita. Verrà ritentata automaticamente.';

  @override
  String get alertEmailTitle => 'Email quando scatta un avviso';

  @override
  String get alertEmailOn =>
      'Controlliamo i tuoi avvisi a intervalli di pochi minuti e ti inviamo un’email, anche quando l’app è chiusa.';

  @override
  String get alertEmailSignIn =>
      'Accedi con la tua email nelle Impostazioni per ricevere gli avvisi via email, anche quando l’app è chiusa.';

  @override
  String get portfolioHistory => 'Andamento del valore';

  @override
  String get portfolioReviewTitle => 'Revisione del portafoglio con IA';

  @override
  String get portfolioReviewIntro =>
      'L’IA esamina il tuo intero portafoglio: concentrazione, esposizione a settori e valute, rischi comuni ai tuoi titoli e dividendi. Usa 1 analisi.';

  @override
  String get portfolioReviewButton => 'Analizza il mio portafoglio';

  @override
  String get portfolioReviewAgain => 'Analizza di nuovo';

  @override
  String get portfolioReviewWorking => 'Analisi del portafoglio in corso…';

  @override
  String get digestTitle => 'Riepilogo settimanale via email';

  @override
  String get digestHint =>
      'Ogni lunedì: come si sono mossi i tuoi preferiti e il tuo portafoglio la settimana scorsa e le prossime date dei risultati.';

  @override
  String get benchmarkTitle => 'Confronto con l\'S&P 500';

  @override
  String get benchmarkTitleIndex => 'Confronto con un indice';

  @override
  String get benchmarkHintIndex =>
      'Come se ogni acquisto fosse stato investito lo stesso giorno in un fondo che replica l\'indice scelto. Dividendi esclusi; i rendimenti passati non prevedono quelli futuri.';

  @override
  String get benchmarkYours => 'I tuoi acquisti';

  @override
  String benchmarkAhead(String points) {
    return '$points punti percentuali meglio dell\'indice';
  }

  @override
  String benchmarkBehind(String points) {
    return '$points punti percentuali sotto l\'indice';
  }

  @override
  String get portfolioSell => 'Vendi';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Vendi $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Prezzo di vendita per azione ($currency)';
  }

  @override
  String get portfolioSellDate => 'Data di vendita';

  @override
  String get portfolioSellAll => 'Tutte';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Ne possiedi $quantity';
  }

  @override
  String get portfolioSold => 'Vendita';

  @override
  String get portfolioRealized => 'Realizzato';

  @override
  String get portfolioClosed => 'Posizioni chiuse';

  @override
  String get portfolioClosedNote => 'Tutte le azioni vendute';

  @override
  String get portfolioTransactions => 'Transazioni';

  @override
  String get portfolioRealizedByYear => 'Guadagni realizzati per anno';

  @override
  String get portfolioRealizedHint =>
      'Le vendite vengono abbinate prima agli acquisti più vecchi (FIFO) e convertite al tasso di cambio di oggi. Per la dichiarazione dei redditi, usa l’estratto conto del tuo broker.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Dopo questa analisi sono stati pubblicati nuovi risultati trimestrali ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Nuovi risultati';

  @override
  String get portfolioImportBrokers =>
      'Vengono riconosciute anche le esportazioni di Revolut, Trading 212, Interactive Brokers, DEGIRO, Schwab, Fidelity e Robinhood, comprese vendite e dividendi (al netto della ritenuta alla fonte); i depositi vengono ignorati.';

  @override
  String get portfolioImportFile => 'Scegli un file';

  @override
  String offlineBanner(String time) {
    return 'Nessuna connessione – vengono mostrati gli ultimi dati salvati ($time).';
  }

  @override
  String get glossMarketCap =>
      'Quanto vale l\'intera azienda in Borsa: prezzo dell\'azione × numero di azioni.';

  @override
  String get glossSharesOutstanding =>
      'Quante azioni ha emesso l\'azienda. Se aumentano, ogni azione possiede una fetta più piccola; i riacquisti di azioni proprie le riducono.';

  @override
  String get glossPeTrailing =>
      'Prezzo ÷ utile per azione degli ultimi 12 mesi: quanti anni di utile attuale stai pagando. Più basso è più economico, ma le aziende in forte crescita di solito hanno un P/E alto.';

  @override
  String get glossPeForward =>
      'Come il P/E, ma con l\'utile che gli analisti si aspettano nei prossimi 12 mesi. Se è sotto il P/E storico, si prevede che gli utili crescano.';

  @override
  String get glossPb =>
      'Prezzo ÷ valore contabile (attività meno debiti) per azione. Intorno a 1 significa che il mercato valuta l\'azienda quanto possiede sulla carta.';

  @override
  String get glossPs =>
      'Valore di mercato ÷ ricavi annui. Utile per aziende con utili ancora scarsi o nulli; confrontalo nello stesso settore.';

  @override
  String get glossEvToFcf =>
      'Valore dell\'azienda incluso il debito (EV) ÷ la liquidità che genera in un anno dopo gli investimenti. Più basso significa più liquidità per il prezzo pagato.';

  @override
  String get glossPeg =>
      'P/E ÷ crescita annua attesa degli utili (%). Intorno a 1 è spesso considerato equo; mette il P/E in relazione alla crescita.';

  @override
  String get glossEps =>
      'Utile per azione degli ultimi 12 mesi. Un EPS in crescita negli anni è uno dei segnali più forti di un\'azienda sana.';

  @override
  String get glossBeta =>
      'Quanto il titolo tende a muoversi con il mercato: 1 = come il mercato, 1,5 = oscillazioni circa del 50% più ampie, sotto 1 = più tranquillo.';

  @override
  String get glossRevenueTtm =>
      'Vendite totali degli ultimi 12 mesi, prima di qualsiasi costo.';

  @override
  String get glossNetIncomeTtm =>
      'L\'utile rimasto dopo tutti i costi, gli interessi e le tasse degli ultimi 12 mesi.';

  @override
  String get glossGrossMargin =>
      'La quota dei ricavi che resta dopo i costi diretti dei prodotti. Un margine alto spesso indica potere sui prezzi.';

  @override
  String get glossOperatingMargin =>
      'La quota dei ricavi che resta dopo i costi di gestione (stipendi, affitti, marketing), prima di interessi e tasse.';

  @override
  String get glossNetMargin =>
      'La quota dei ricavi che diventa utile finale. 20% significa che su ogni 100 di vendite, 20 sono utile.';

  @override
  String get glossRoe =>
      'Redditività del capitale proprio: utile annuo ÷ capitale dei proprietari. Mostra quanto bene il management usa i soldi degli azionisti; sopra il 15% circa è forte.';

  @override
  String get glossRoa =>
      'Redditività degli attivi: utile annuo ÷ tutto ciò che l\'azienda possiede. Confrontalo nello stesso settore.';

  @override
  String get glossDebtToEquity =>
      'Debiti ÷ capitale dei proprietari. Più alto significa più denaro preso in prestito: più rischio quando i tassi salgono o gli affari rallentano.';

  @override
  String get glossCurrentRatio =>
      'Attività a breve termine ÷ pagamenti in scadenza entro un anno. Sopra 1 significa che l\'azienda può coprire i pagamenti a breve.';

  @override
  String get glossRevenueGrowth =>
      'Quanto sono cresciuti i ricavi rispetto a un anno prima.';

  @override
  String get glossEpsGrowth =>
      'Quanto è cresciuto l\'utile per azione rispetto a un anno prima.';

  @override
  String get glossDividendYield =>
      'Dividendo annuo ÷ prezzo dell\'azione: l\'entrata in contanti che riceveresti ogni anno, in percentuale di quanto paghi.';

  @override
  String get glossDividendPerShare =>
      'Il dividendo pagato su una singola azione nell\'ultimo anno.';

  @override
  String get glossPayoutRatio =>
      'La quota dell\'utile distribuita come dividendi. Sopra il 100% l\'azienda paga più di quanto guadagna, cosa che raramente dura.';

  @override
  String get portfolioBeta => 'Beta del portafoglio';

  @override
  String get glossPortfolioBeta =>
      'Il beta delle tue azioni, ponderato in base al loro valore: all\'incirca di quanto per cento si muovono le tue azioni quando il mercato si muove dell\'1%. Sopra 1 oscillano più del mercato, sotto 1 meno. La liquidità non è inclusa.';

  @override
  String get portfolioTop3 => 'Prime 3 posizioni';

  @override
  String get glossPortfolioTop3 =>
      'Quanta parte del valore delle tue azioni è concentrata nelle tue tre posizioni più grandi. Più è alta, più una cattiva notizia su una singola società può danneggiare l\'intero portafoglio.';

  @override
  String get glossDividendGrowth5y =>
      'Di quanto è cresciuto in media ogni anno il dividendo per azione negli ultimi cinque anni. Una crescita costante di solito indica che l’azienda ha fiducia nel proprio flusso di cassa; un taglio è spesso un segnale d’allarme.';

  @override
  String get glossYieldOnCost =>
      'I dividendi ricevuti negli ultimi 12 mesi divisi per quanto hai pagato le azioni che possiedi ancora. A differenza del rendimento del dividendo, si misura sul tuo prezzo di acquisto, non sul prezzo di oggi.';

  @override
  String get glossTitle => 'Che cosa significa?';

  @override
  String get watchNewsTitle => 'Notizie sui tuoi titoli';

  @override
  String get undo => 'Annulla';

  @override
  String get watchSort => 'Ordina';

  @override
  String get watchSortOwn => 'Il mio ordine';

  @override
  String get watchSortGainers => 'Maggiori rialzi prima';

  @override
  String get watchSortLosers => 'Maggiori ribassi prima';

  @override
  String get watchSortName => 'Per ticker (A–Z)';

  @override
  String get watchHint =>
      'Trascina la maniglia per riordinare, scorri a sinistra per rimuovere. La linea mostra gli ultimi 30 giorni.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: la tua analisi è pronta.';
  }

  @override
  String alertFromCost(String price) {
    return 'Rispetto al tuo prezzo medio di acquisto ($price):';
  }

  @override
  String get briefTitle => 'Oggi con le tue azioni';

  @override
  String get briefButton => 'Riassumi la giornata';

  @override
  String get briefHint =>
      'Un breve riassunto con IA di come si sono mossi oggi il tuo portafoglio e i tuoi preferiti e di cosa ne dicono le ultime notizie. Non consuma analisi.';

  @override
  String get briefRefresh => 'Aggiorna';

  @override
  String get sectionEarnings => 'Risultati trimestrali';

  @override
  String earningsNext(String date) {
    return 'Prossimi risultati: $date';
  }

  @override
  String get earningsExpected => 'EPS atteso';

  @override
  String get earningsReported => 'EPS comunicato';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'EPS pari o superiore alle attese in $beats degli ultimi $total trimestri',
      one: 'EPS pari o superiore alle attese in $beats trimestre su 1',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol pubblica i risultati trimestrali domani';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol pubblica i risultati trimestrali oggi';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return 'Dividendo di $symbol atteso oggi';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Circa $amount. Registralo nel tuo portafoglio quando arriva.';
  }

  @override
  String get dividendRemindersTitle => 'Promemoria dividendi';

  @override
  String get dividendRemindersSubtitle =>
      'Una notifica il giorno in cui è atteso un dividendo in base al ritmo dei pagamenti che hai registrato, così puoi registrarlo';

  @override
  String get earningsRemindersTitle => 'Promemoria risultati';

  @override
  String get earningsRemindersSubtitle =>
      'Una notifica il giorno prima che i titoli dei tuoi preferiti o del tuo portafoglio pubblichino i risultati trimestrali';

  @override
  String addAllToFavorites(int count) {
    return 'Aggiungi tutte ai preferiti ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Importa da uno screenshot';

  @override
  String get holdingsReading => 'Lettura delle posizioni…';

  @override
  String get holdingsReviewTitle => 'Posizioni trovate';

  @override
  String get holdingsReviewHint =>
      'Controlla i numeri prima di aggiungerli. Il prezzo è il tuo prezzo medio di acquisto per azione, non quello di oggi.';

  @override
  String get holdingsNoPrice =>
      'Nessun prezzo medio di acquisto nell\'immagine';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Aggiungi $count posizioni',
      one: 'Aggiungi 1 posizione',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Nessuna posizione azionaria trovata in questa immagine. Prova con uno screenshot della pagina delle posizioni o del portafoglio del tuo broker.';

  @override
  String get week52Range => 'Intervallo a 52 settimane';

  @override
  String week52BelowHigh(String percent) {
    return '$percent sotto il massimo a 52 settimane';
  }

  @override
  String get week52AtHigh => 'Al massimo a 52 settimane';

  @override
  String get alertKindTrailing => 'Scende dal massimo';

  @override
  String get alertTrailingPercent => 'Calo dal massimo (%)';

  @override
  String get alertTrailingHint =>
      'Segue il prezzo al rialzo: l’avviso scatta quando il prezzo scende di tanto dal suo massimo da quando l’hai impostato.';

  @override
  String alertDescTrailing(String percent) {
    return 'Calo del $percent dal massimo';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'massimo finora: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol è sceso del $percent dal massimo';
  }

  @override
  String get sectionInsiders => 'Internal dealing';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count acquisti',
      one: '1 acquisto',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count vendite',
      one: '1 vendita',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Netto: $shares azioni';
  }

  @override
  String get insiderBuy => 'Acquistate';

  @override
  String get insiderSell => 'Vendute';

  @override
  String get insiderHint =>
      'Acquisti e vendite sul mercato aperto da parte di dirigenti e amministratori negli ultimi 90 giorni (SEC Form 4). Esercizi di opzioni e assegnazioni di azioni non sono conteggiati.';

  @override
  String get insiderNone =>
      'Nessun acquisto o vendita di insider sul mercato aperto negli ultimi 90 giorni.';

  @override
  String get analystTrend => 'Come sono cambiati i giudizi mese per mese';

  @override
  String get watchListAll => 'Tutte';

  @override
  String get watchListNew => 'Nuova lista';

  @override
  String get watchListName => 'Nome della lista';

  @override
  String get watchListRename => 'Rinomina lista';

  @override
  String get watchListDelete => 'Elimina lista';

  @override
  String get watchListAddTo => 'Aggiungi a una lista';

  @override
  String get watchListEmpty =>
      'Ancora nessuna azione in questa lista. Tocca il pulsante lista accanto a un\'azione per aggiungerla.';

  @override
  String get portfolioAskTitle => 'Domande sul tuo portafoglio';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'Backup';

  @override
  String get backupSave => 'Salva un backup';

  @override
  String get backupSaveHint =>
      'I tuoi preferiti, liste, portafoglio, avvisi e note in un unico file.';

  @override
  String get backupRestore => 'Ripristina da un backup';

  @override
  String get backupRestoreHint =>
      'Aggiunge ciò che c’è nel file; non viene eliminato nulla di ciò che hai ora.';

  @override
  String get backupRestored => 'Backup ripristinato.';

  @override
  String get backupInvalid => 'Questo file non è un backup di WhatStock.';

  @override
  String get allocationPositions => 'Azioni';

  @override
  String get allocationSectors => 'Settori';

  @override
  String get allocationCurrencies => 'Valute';

  @override
  String get allocationAccounts => 'Conti';

  @override
  String get compareReturn1y => 'Rendimento a 1 anno';

  @override
  String get compareFromHigh => 'Distanza dal massimo a 52 settimane';

  @override
  String get briefAutoTitle => 'Riepilogo giornaliero ogni mattina';

  @override
  String get briefAutoSubtitle =>
      '«Oggi con le tue azioni» viene creato automaticamente dopo le 7:00 mentre l’app è in esecuzione; sui computer te lo segnala una notifica. Usa il tuo limite giornaliero di domande, non un’analisi.';

  @override
  String get targetsButton => 'Ripartizione obiettivo';

  @override
  String get targetsTitle => 'Ripartizione obiettivo';

  @override
  String get targetsHint =>
      'Imposta quale quota del portafoglio deve avere ogni azione. Lascia il campo vuoto per nessun obiettivo. L\'app mostrerà poi cosa comprare o vendere per arrivarci.';

  @override
  String targetsSum(String percent) {
    return 'Totale: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Compra ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Vendi ≈ $amount';
  }

  @override
  String get rebalanceOk => 'In linea';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol supera l\'EPS atteso';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol sotto l\'EPS atteso';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'EPS comunicato $actual, atteso $estimate';
  }

  @override
  String get newsExplain => 'Che cosa significa?';

  @override
  String get watchAlertAll => 'Avviso sui grandi movimenti giornalieri';

  @override
  String get watchAlertAllHint =>
      'Un avviso di prezzo per ogni titolo di questa lista, che scatta quando si muove così tanto in un giorno, al rialzo o al ribasso. I titoli che ne hanno già uno mantengono il proprio.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count avvisi impostati',
      one: '1 avviso impostato',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Esporta plusvalenze realizzate (CSV)';

  @override
  String get portfolioAnnualReturn => 'Rendimento annuo';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / anno';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Rendimento annuo ponderato per il capitale (XIRR): tiene conto di quando hai comprato e venduto, così il denaro aggiunto in seguito non lo falsa. Viene mostrato quando il tuo primo acquisto ha almeno un anno; i dividendi non sono inclusi.';

  @override
  String get eventsAddToCalendar => 'Aggiungi al calendario (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Avviso portafoglio';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Una notifica quando il tuo intero portafoglio si muove così tanto in un giorno.';

  @override
  String get portfolioMoveAlertOff => 'Disattivato';

  @override
  String portfolioMoveUp(String percent) {
    return 'Il tuo portafoglio oggi è in rialzo del $percent';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Il tuo portafoglio oggi è in ribasso del $percent';
  }

  @override
  String get whatIfTitle => 'E se avessi investito?';

  @override
  String get whatIfAmount => 'Importo';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount investiti $period fa oggi varrebbero';
  }

  @override
  String get whatIfNote =>
      'Basato solo sul prezzo dell’azione: dividendi, commissioni e tasse non sono inclusi. I rendimenti passati non prevedono quelli futuri.';

  @override
  String get watchShare => 'Condividi la lista';

  @override
  String get watchImport => 'Aggiungi simboli';

  @override
  String get watchImportHint =>
      'Incolla i simboli separati da virgole, spazi o a capo – ad esempio una lista che qualcuno ha condiviso con te.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count titoli aggiunti',
      one: '1 titolo aggiunto',
      zero: 'Nessun nuovo titolo',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Più grandi prima';

  @override
  String get positionsSortGain => 'Miglior rendimento totale prima';

  @override
  String get positionsSortToday => 'Migliori di oggi prima';

  @override
  String get chartMyBuys => 'I tuoi acquisti';

  @override
  String get chartMySells => 'Le tue vendite';

  @override
  String get shortcutsTitle => 'Scorciatoie da tastiera';

  @override
  String usMarketOpen(String time) {
    return 'Mercato USA aperto · chiude tra $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Mercato USA chiuso · apre tra $time';
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
    return '$days g $hours h';
  }

  @override
  String get dividendGoalSet => 'Imposta un obiettivo mensile di dividendi';

  @override
  String get dividendGoalTitle => 'Obiettivo mensile di dividendi';

  @override
  String get dividendGoalAmount => 'Dividendi al mese';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Circa $amount al mese ai rendimenti attuali: $percent del tuo obiettivo di $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Circa $amount al mese ai rendimenti attuali: obiettivo di $goal raggiunto';
  }

  @override
  String get portfolioAccount => 'Conto';

  @override
  String get portfolioAccountHint => 'es. PIR (facoltativo)';

  @override
  String get portfolioAccountAdd => 'Indica un conto';

  @override
  String get portfolioAccountsAll => 'Tutti i conti';

  @override
  String get portfolioAccountNote =>
      'Solo le transazioni e i dividendi di questo conto. Liquidità, obiettivi e revisione con IA sono mostrati in Tutti i conti.';

  @override
  String get portfolioNoAccount => 'Senza conto';

  @override
  String portfolioFee(String currency) {
    return 'Commissione ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Aggiungi una commissione';

  @override
  String portfolioFeeRow(String amount) {
    return 'Commissione: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'Riepilogo annuale';

  @override
  String get portfolioProceeds => 'Corrispettivo di vendita';

  @override
  String get portfolioCostBasis => 'Costo di acquisto';

  @override
  String get portfolioFeesPaid => 'Commissioni pagate';

  @override
  String get portfolioAnnualSummaryNote =>
      'Importi nella valuta originale, non convertiti. Il corrispettivo è al netto della commissione di vendita; il costo di acquisto include la commissione di acquisto (FIFO). Per la dichiarazione dei redditi, converti al tasso di cambio richiesto dalla tua amministrazione fiscale.';

  @override
  String get portfolioShare => 'Condividi rendimento';

  @override
  String get portfolioShareHeading => 'Il mio portafoglio';

  @override
  String get portfolioTopHoldings => 'Posizioni principali';

  @override
  String get portfolioShareNote =>
      'Si condividono solo percentuali, nessun importo.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count posizioni',
      one: '1 posizione',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'Non è un consiglio di investimento';

  @override
  String get contributionButton => 'Investi nuovo denaro';

  @override
  String contributionAmount(String currency) {
    return 'Importo da investire ($currency)';
  }

  @override
  String get contributionHint =>
      'Solo acquisti, nessuna vendita: le posizioni più sotto il loro obiettivo ricevono il denaro per prime.';

  @override
  String contributionShares(String shares) {
    return '≈ $shares azioni';
  }

  @override
  String contributionMissing(String symbols) {
    return 'Nessun prezzo attuale per $symbols: esclusi dalla ripartizione.';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'Se il rendimento annuo si mantiene ($rate), raggiungerai l’obiettivo intorno al $year.';
  }

  @override
  String get portfolioMaxDrawdown => 'Calo massimo';

  @override
  String get glossMaxDrawdown =>
      'Il calo più forte del valore delle tue azioni da un massimo precedente a un minimo successivo, senza l\'effetto dei tuoi acquisti e delle tue vendite (ponderato nel tempo). Mostra quanto è stato profondo il ribasso che il tuo portafoglio ha già attraversato.';

  @override
  String watchSince(String date) {
    return 'Da quando l’hai aggiunta ai preferiti ($date)';
  }

  @override
  String get portfolioSampleTry => 'Prova con un portafoglio di esempio';

  @override
  String get portfolioSampleBanner =>
      'Questo è un portafoglio di esempio. Aggiungi accanto i tuoi acquisti o rimuovilo.';

  @override
  String get portfolioSampleRemove => 'Rimuovi esempio';

  @override
  String get portfolioStopsAll => 'Trailing stop su tutte le posizioni';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count trailing stop impostati',
      one: '1 trailing stop impostato',
      zero: 'Tutte le posizioni hanno già un trailing stop',
    );
    return '$_temp0';
  }

  @override
  String portfolioSinceSale(String percent) {
    return '$percent dalla vendita';
  }

  @override
  String get lotPreviewRealized => 'Realizzato con questa vendita (FIFO):';

  @override
  String lotPreviewAverage(String after, String before) {
    return 'Nuovo prezzo medio: $after (ora $before)';
  }

  @override
  String get portfolioYtdReturn => 'Rendimento quest’anno';

  @override
  String get glossTwrYtd =>
      'Rendimento ponderato nel tempo dall\'inizio dell\'anno (o dal tuo primo acquisto, se è avvenuto quest\'anno): ogni giorno conta la variazione delle azioni che possedevi quel giorno, e i giorni vengono concatenati – il denaro che versi o prelevi non è rendimento, quindi si può confrontare con un indice. Sotto: l\'indice scelto nello stesso periodo.';

  @override
  String alertDistance(String price, String percent) {
    return 'Ora $price · ancora $percent';
  }

  @override
  String get watchSortSince => 'Per variazione dall’aggiunta';

  @override
  String get portfolioTodayMovers => 'Maggiori variazioni oggi:';

  @override
  String get lotNoteAdd => 'Aggiungi una nota';

  @override
  String get lotNoteBuyHint =>
      'Perché compri? Finisce nelle note dell’azione, con la data.';

  @override
  String get lotNoteSellHint =>
      'Perché vendi? Finisce nelle note dell’azione, con la data.';

  @override
  String get lotNoteBought => 'Acquisto';

  @override
  String get positionHeld => 'Periodo di detenzione';

  @override
  String durationMonths(int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months mesi',
      one: '$months mese',
    );
    return '$_temp0';
  }

  @override
  String durationDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days giorni',
      one: '$days giorno',
    );
    return '$_temp0';
  }

  @override
  String positionHeldSince(String date) {
    return 'dal $date';
  }

  @override
  String lotPreviewWeight(String after, String before) {
    return 'Peso in portafoglio dopo l’operazione: $after (ora $before)';
  }

  @override
  String lotFromCash(String amount) {
    return 'Paga con la liquidità (ora $amount)';
  }

  @override
  String lotToCash(String amount) {
    return 'Aggiungi alla liquidità (ora $amount)';
  }

  @override
  String get portfolioGoalSet => 'Imposta un obiettivo';

  @override
  String get portfolioGoalTitle => 'Obiettivo del portafoglio';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent del tuo obiettivo di $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Obiettivo di $amount raggiunto';
  }

  @override
  String get portfolioGoalRemove => 'Rimuovi obiettivo';

  @override
  String get alertEdit => 'Modifica avviso';

  @override
  String get positionOpenLots => 'Ancora in portafoglio (prima i più vecchi)';

  @override
  String get lotRemoved => 'Transazione eliminata';

  @override
  String get alertDeleted => 'Avviso eliminato';

  @override
  String get alertsClearTriggered => 'Cancella avvisi scattati';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count avvisi cancellati',
      one: '1 avviso cancellato',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Schermata iniziale';

  @override
  String get allocationCountries => 'Paesi';

  @override
  String get newsExplainNoteResearch =>
      'Spiegazione dell’IA: cerca i fatti sul web, apre l’articolo e valuta quanto è affidabile la fonte. Non costituisce un consiglio di investimento. Usa il tuo limite giornaliero di domande, non un’analisi.';

  @override
  String get sourceOfficial => 'Ufficiale';

  @override
  String get sourcePressRelease => 'Comunicato';

  @override
  String get sourceMajorNews => 'Grande testata';

  @override
  String get sourceOpinion => 'Opinione';

  @override
  String get earningsSummaryButton => 'Cosa diceva l’ultimo report?';

  @override
  String get earningsSummaryNote =>
      'Riepilogo dell’IA del comunicato sui risultati dell’azienda e della copertura stampa che trova sul web. Non costituisce un consiglio di investimento. Usa il tuo limite giornaliero di domande, non un’analisi.';

  @override
  String get compareLastSurprise => 'EPS ultimo trimestre vs. atteso';

  @override
  String get compareNextReport => 'Prossimi risultati';

  @override
  String get resolvingDescription =>
      'Identificazione dell\'azione a cui ti riferisci…';

  @override
  String get instrumentTitle => 'Informazioni su questo strumento';

  @override
  String get instrumentHint =>
      'Non esiste un profilo aziendale per questo simbolo: potrebbe essere un ETF, un fondo o un certificato di deposito. Chiedi all’IA che cos’è, cosa contiene e quanto costa.';

  @override
  String get instrumentAsk => 'Che cos’è?';

  @override
  String get instrumentNote =>
      'Spiegazione dell’IA basata sulla pagina del fondo dell’emittente e sui siti finanziari che trova sul web. Non costituisce un consiglio di investimento. Usa il tuo limite giornaliero di domande, non un’analisi.';

  @override
  String suggestAskAi(String query) {
    return 'Chiedi all’IA: «$query»';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Nessun prezzo attuale per $symbols.';
  }

  @override
  String get eventsRecentResults => 'Risultati recenti';

  @override
  String get saveToNotes => 'Salva nelle mie note';

  @override
  String get savedToNotes => 'Salvato nelle tue note';

  @override
  String get portfolioDividendsReceived => 'Dividendi ricevuti';

  @override
  String get portfolioDividendsThisYear => 'Quest’anno';

  @override
  String get portfolioDividendsAllTime => 'Dall’inizio';

  @override
  String get portfolioAddDividend => 'Aggiungi dividendo';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Importo ricevuto ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Data di pagamento';

  @override
  String get portfolioDividendsEmpty =>
      'Nessun dividendo registrato finora. Aggiungili a mano o importa l’esportazione del tuo broker: vengono rilevate anche le sue righe dei dividendi.';

  @override
  String get portfolioSplit => 'Frazionamento azionario';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Frazionamento azionario: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Gli acquisti e le vendite con data precedente al frazionamento vengono rettificati: il numero di azioni viene moltiplicato e il prezzo per azione diviso, così il costo resta lo stesso.';

  @override
  String get portfolioSplitRatio => 'Rapporto (nuove : vecchie)';

  @override
  String get portfolioSplitRatioError =>
      'Inserisci un rapporto come 10:1, oppure 1:10 per un raggruppamento azionario.';

  @override
  String get portfolioSplitDate => 'Data del frazionamento';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Frazionamento azionario $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Frazionamento azionario eliminato';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count frazionamenti azionari aggiunti',
      one: '1 frazionamento azionario aggiunto',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dividendi aggiunti',
      one: '1 dividendo aggiunto',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Esporta dividendi (CSV)';

  @override
  String get portfolioDividendDeleted => 'Dividendo eliminato';

  @override
  String get portfolioDividendsHint =>
      'Importi così come sono arrivati sul tuo conto, nella valuta di pagamento; i totali sono convertiti al cambio di oggi. Per la dichiarazione dei redditi usa l’estratto conto del tuo broker.';

  @override
  String get awayTitle => 'Mentre eri via';

  @override
  String awaySince(String when) {
    return 'Da $when';
  }

  @override
  String get awayQuiet => 'Non si è mosso molto.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count avvisi attivati',
      one: '1 avviso attivato',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Risultati pubblicati: $symbols';
  }

  @override
  String get moveWhyButton => 'Perché si muove oggi?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent oggi';
  }

  @override
  String get moveWhyNote =>
      'Spiegazione dell’IA dalle notizie di oggi trovate sul web; il motivo reale potrebbe essere sconosciuto o diverso. Non è una consulenza d’investimento. Consuma la tua quota giornaliera di domande, non un’analisi.';

  @override
  String get sectionTechnical => 'Quadro tecnico';

  @override
  String get labelSma50 => 'Media a 50 giorni';

  @override
  String get labelSma200 => 'Media a 200 giorni';

  @override
  String get labelRsi => 'RSI (14 giorni)';

  @override
  String get labelVolatility30 => 'Volatilità (30 giorni)';

  @override
  String techAbove(String percent) {
    return '$percent sopra';
  }

  @override
  String techBelow(String percent) {
    return '$percent sotto';
  }

  @override
  String get techOverbought => 'ipercomprato';

  @override
  String get techOversold => 'ipervenduto';

  @override
  String get techNeutral => 'neutrale';

  @override
  String get techGoldenCross =>
      'La media a 50 giorni è sopra quella a 200 giorni – un trend rialzista secondo la lettura classica.';

  @override
  String get techDeathCross =>
      'La media a 50 giorni è sotto quella a 200 giorni – un trend ribassista secondo la lettura classica.';

  @override
  String get glossSma50 =>
      'Il prezzo medio di chiusura degli ultimi 50 giorni di borsa. Un prezzo sopra viene spesso letto come forza nel breve periodo, sotto come debolezza.';

  @override
  String get glossSma200 =>
      'Il prezzo medio di chiusura degli ultimi 200 giorni di borsa – la classica linea di tendenza di lungo periodo. Molti investitori considerano un prezzo sopra come un trend rialzista di lungo periodo.';

  @override
  String get glossRsi =>
      'Indice di forza relativa: confronta i guadagni recenti con le perdite recenti su una scala da 0 a 100. Sopra 70 il titolo è spesso detto ipercomprato (è salito in fretta), sotto 30 ipervenduto – ma un trend forte può restarci a lungo.';

  @override
  String get glossVolatility =>
      'Quanto oscilla il prezzo da un giorno all’altro, su base annua: 20% significa che in un anno tipico si muove entro circa ±20%. Una volatilità più alta significa movimenti più ampi in entrambe le direzioni.';

  @override
  String get techNote =>
      'Calcolato dai prezzi di chiusura giornalieri. I segnali tecnici descrivono il passato, non il futuro.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$above posizioni su $count sopra la loro media a 200 giorni';
  }

  @override
  String get watchSignalsTitle => 'Segnali';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · ipervenduto';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · ipercomprato';
  }

  @override
  String get signalCrossedAbove =>
      'ha superato al rialzo la media a 200 giorni';

  @override
  String get signalCrossedBelow => 'ha rotto al ribasso la media a 200 giorni';

  @override
  String get signalAlertsTitle => 'Notifiche sui segnali tecnici';

  @override
  String get signalAlertsSubtitle =>
      'Una volta al giorno, quando un titolo che segui diventa ipervenduto o ipercomprato (RSI), o il suo prezzo attraversa la media a 200 giorni.';

  @override
  String get signalAlertsNotification => 'Segnali tecnici';

  @override
  String get glossaryPageTitle => 'Glossario';

  @override
  String get glossaryPageSubtitle =>
      'Spiegazioni semplici di ogni dato mostrato dall’app, dal P/E all’RSI';

  @override
  String get glossarySearchHint => 'Cerca nel glossario';

  @override
  String get portfolioCash => 'Liquidità';

  @override
  String get portfolioCashTitle => 'Saldo liquidità';

  @override
  String get portfolioCashHint =>
      'Denaro non investito presso il tuo broker, per valuta. Conta nel valore totale e nella ripartizione; non nel rendimento.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Importo ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Imposta saldo liquidità';

  @override
  String get portfolioDividendsByMonth => 'Per mese';

  @override
  String get dividendsLegendReceived => 'Ricevuti';

  @override
  String get dividendsLegendExpected => 'Previsti';

  @override
  String get portfolioDividendsExpected => 'Prossimi attesi';

  @override
  String get portfolioDividendsExpectedNote =>
      'Stima basata su date e importi dei pagamenti che hai registrato; le società possono modificarli o saltarli.';

  @override
  String portfolioDividendAround(String date) {
    return 'intorno al $date';
  }
}
