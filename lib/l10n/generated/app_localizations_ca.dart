// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class AppLocalizationsCa extends AppLocalizations {
  AppLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Fotografia una acció i descobreix-ho tot sobre ella.';

  @override
  String get homeHint =>
      'Un certificat d\'accions, la pantalla d\'una app de corredoria, un diari o el logotip d\'una empresa: qualsevol cosa que identifiqui una acció.';

  @override
  String get takePhoto => 'Fer una foto';

  @override
  String get chooseFromGallery => 'Triar de la galeria';

  @override
  String get chooseImage => 'Triar una imatge';

  @override
  String get enterTickerManually => 'Introduir el ticker manualment';

  @override
  String get tickerInputLabel => 'Símbol (ticker)';

  @override
  String get tickerInputHint => 'p. ex. AAPL';

  @override
  String get lookUp => 'Cercar';

  @override
  String demoModeBanner(String symbols) {
    return 'Mode demo: no hi ha cap clau de dades de mercat configurada. Hi ha dades d\'exemple disponibles per a: $symbols.';
  }

  @override
  String get recognizing => 'Analitzant la imatge…';

  @override
  String get loadingData => 'Carregant dades…';

  @override
  String get noCandidatesTitle => 'No s\'ha reconegut cap acció';

  @override
  String get noCandidatesBody =>
      'No hem pogut identificar cap acció en aquesta imatge. Prova amb una foto més nítida o introdueix el ticker manualment.';

  @override
  String get whatWeSaw => 'El que hem vist';

  @override
  String get chooseCandidateTitle => 'A quina acció et refereixes?';

  @override
  String confidencePercent(int percent) {
    return '$percent% de confiança';
  }

  @override
  String get settings => 'Configuració';

  @override
  String get language => 'Idioma';

  @override
  String get systemLanguage => 'Predeterminat del sistema';

  @override
  String get about => 'Quant a';

  @override
  String get disclaimer =>
      'Aquesta app només ofereix informació i no constitueix assessorament d\'inversió. Les dades poden estar endarrerides o ser inexactes.';

  @override
  String dataSource(String source) {
    return 'Font de dades: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Reconeixement: $source';
  }

  @override
  String get retry => 'Torna-ho a provar';

  @override
  String get cancel => 'Cancel·lar';

  @override
  String get ok => 'D\'acord';

  @override
  String get close => 'Tancar';

  @override
  String get errorGeneric => 'Alguna cosa ha anat malament.';

  @override
  String get errorSectionUnavailable =>
      'No s\'ha pogut carregar aquesta secció.';

  @override
  String get notAvailable => 'n/d';

  @override
  String get sectionIdentity => 'Identificació';

  @override
  String get sectionPrice => 'Preu';

  @override
  String get sectionValuation => 'Valoració';

  @override
  String get sectionFinancials => 'Finances';

  @override
  String get sectionDividend => 'Dividend';

  @override
  String get sectionProfile => 'Perfil de l\'empresa';

  @override
  String get sectionAnalysts => 'Recomanacions dels analistes';

  @override
  String get sectionNews => 'Notícies';

  @override
  String get sectionRecognition => 'Detalls del reconeixement';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Borsa';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Divisa';

  @override
  String get labelCountry => 'País';

  @override
  String get labelIndustry => 'Indústria';

  @override
  String get labelSector => 'Sector';

  @override
  String get labelWebsite => 'Lloc web';

  @override
  String get labelIpoDate => 'Data de la IPO';

  @override
  String get labelMarketCap => 'Capitalització borsària';

  @override
  String get labelSharesOutstanding => 'Accions en circulació';

  @override
  String get labelEmployees => 'Empleats';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Seu';

  @override
  String get labelDescription => 'Descripció';

  @override
  String get labelLastPrice => 'Últim preu';

  @override
  String get labelChange => 'Variació';

  @override
  String get labelOpen => 'Obertura';

  @override
  String get labelDayHigh => 'Màxim del dia';

  @override
  String get labelDayLow => 'Mínim del dia';

  @override
  String get labelPreviousClose => 'Tancament anterior';

  @override
  String get labelWeek52High => 'Màxim de 52 setmanes';

  @override
  String get labelWeek52Low => 'Mínim de 52 setmanes';

  @override
  String get labelAverageVolume10d => 'Volum mitjà (10 dies)';

  @override
  String updatedAt(String time) {
    return 'Actualitzat $time';
  }

  @override
  String get labelPeTrailing => 'P/E (PER històric)';

  @override
  String get labelPeForward => 'P/E (PER previst)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / flux de caixa lliure';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Ingressos (TTM)';

  @override
  String get labelNetIncomeTtm => 'Benefici net (TTM)';

  @override
  String get labelGrossMargin => 'Marge brut';

  @override
  String get labelOperatingMargin => 'Marge operatiu';

  @override
  String get labelNetMargin => 'Marge net';

  @override
  String get labelRoe => 'Rendibilitat del capital (ROE)';

  @override
  String get labelRoa => 'Rendibilitat dels actius (ROA)';

  @override
  String get labelDebtToEquity => 'Deute / capital';

  @override
  String get labelCurrentRatio => 'Ràtio de liquiditat';

  @override
  String get labelRevenueGrowth => 'Creixement dels ingressos (YoY)';

  @override
  String get labelEpsGrowth => 'Creixement de l\'EPS (YoY)';

  @override
  String get labelDividendYield => 'Rendibilitat per dividend';

  @override
  String get labelDividendPerShare => 'Dividend per acció';

  @override
  String get labelPayoutRatio => 'Ràtio de repartiment (payout)';

  @override
  String get labelConsensus => 'Consens';

  @override
  String get ratingStrongBuy => 'Compra forta';

  @override
  String get ratingBuy => 'Comprar';

  @override
  String get ratingHold => 'Mantenir';

  @override
  String get ratingSell => 'Vendre';

  @override
  String get ratingStrongSell => 'Venda forta';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analistes',
      one: '1 analista',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Període: $period';
  }

  @override
  String get noNews => 'No hi ha notícies recents.';

  @override
  String get openArticle => 'Obrir l\'article';

  @override
  String get openLinkFailed => 'No s\'ha pogut obrir l\'enllaç.';

  @override
  String get recognitionSummary => 'Resum';

  @override
  String get recognitionEvidence => 'Per què ho pensem';

  @override
  String get recognitionRawText => 'Text llegit de la imatge';

  @override
  String get errMissingAnthropicKey =>
      'El reconeixement d\'imatges no està configurat (falta ANTHROPIC_API_KEY). Introdueix el ticker manualment.';

  @override
  String get errRecognitionUnreachable =>
      'No s\'ha pogut connectar amb el servei de reconeixement. Comprova la connexió a internet.';

  @override
  String errRecognitionHttp(String status) {
    return 'El servei de reconeixement ha retornat un error (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'El servei de reconeixement no ha pogut processar aquesta imatge.';

  @override
  String get errRecognitionTruncated =>
      'La resposta del reconeixement s\'ha tallat. Torna-ho a provar.';

  @override
  String get errRecognitionBadResponse =>
      'Resposta inesperada del servei de reconeixement.';

  @override
  String get errRecognitionEmpty =>
      'El servei de reconeixement ha retornat una resposta buida.';

  @override
  String get errMissingFinnhubKey =>
      'Les dades de mercat no estan configurades (falta FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'No s\'ha pogut connectar amb el servei de dades de mercat. Comprova la connexió a internet.';

  @override
  String get errMarketRateLimited =>
      'Massa sol·licituds al servei de dades de mercat. Espera un minut.';

  @override
  String errMarketHttp(String status) {
    return 'El servei de dades de mercat ha retornat un error (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Resposta inesperada del servei de dades de mercat.';

  @override
  String errNoQuote(String symbol) {
    return 'No s\'han trobat dades de preu per a $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'No s\'ha trobat el perfil de l\'empresa per a $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'El mode demo només admet $symbols. Afegeix una FINNHUB_API_KEY per obtenir dades en temps real.';
  }

  @override
  String errUnknown(String detail) {
    return 'Alguna cosa ha anat malament: $detail';
  }

  @override
  String get newSearch => 'Cerca nova';

  @override
  String get recentSearches => 'Recents';

  @override
  String get noRecentSearches => 'Encara no hi ha cerques recents.';

  @override
  String get clearRecent => 'Esborrar les recents';

  @override
  String get greeting => 'Quina acció mirem?';

  @override
  String get searchHint => 'Ticker o nom de l’empresa';

  @override
  String get attachImage => 'Adjuntar una imatge';

  @override
  String get searchResultsTitle => 'Resultats de la cerca';

  @override
  String errNoResults(String query) {
    return 'No s’ha trobat cap acció per a «$query».';
  }

  @override
  String get quickBarHint => 'Escriu un ticker o el nom d’una empresa…';

  @override
  String get openFullWindow => 'Obrir la finestra';

  @override
  String hotkeyHint(String shortcut) {
    return 'Prem $shortcut des de qualsevol lloc per obrir WhatStock.';
  }

  @override
  String get trayOpen => 'Obrir WhatStock';

  @override
  String get trayQuickSearch => 'Cerca ràpida';

  @override
  String get trayQuit => 'Sortir';

  @override
  String get appearance => 'Aparença';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeDark => 'Fosc';

  @override
  String get themeLight => 'Clar';

  @override
  String get back => 'Enrere';

  @override
  String get aiSectionTitle => 'Anàlisi amb IA';

  @override
  String get aiIntro =>
      'Una visió general detallada escrita per IA: resum de les notícies recents, el negoci, punts forts, riscos i factors ocults, valoració, una perspectiva de preu amb escenaris des d’angles psicològics, sociològics, tècnics i macroeconòmics, i què cal vigilar.';

  @override
  String get aiGenerate => 'Generar anàlisi';

  @override
  String get aiRegenerate => 'Tornar a generar';

  @override
  String get aiGenerating =>
      'S’està preparant l’anàlisi… pot trigar un o dos minuts.';

  @override
  String get aiSources => 'Fonts';

  @override
  String aiGeneratedAt(String time) {
    return 'Generada $time';
  }

  @override
  String get aiDisclaimer =>
      'Anàlisi generada per IA a partir de dades públiques i notícies recents. Pot contenir errors o estar desactualitzada, i no constitueix assessorament d’inversió.';

  @override
  String get errAiNotConfigured =>
      'L’anàlisi amb IA no està configurada (falta ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'No s’ha pogut connectar amb el servei d’IA. Comprova la connexió a internet.';

  @override
  String errAiHttp(String status) {
    return 'El servei d’IA ha retornat un error (HTTP $status).';
  }

  @override
  String get errAiRefused =>
      'El servei d’IA ha refusat analitzar aquesta acció.';

  @override
  String get errAiBadResponse => 'Resposta inesperada del servei d’IA.';

  @override
  String get sectionChart => 'Gràfic de preus';

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
      'L’historial de preus no està disponible a la font de dades actual.';

  @override
  String get sectionStatements => 'Estats financers (anuals)';

  @override
  String get labelFiscalYear => 'Exercici fiscal';

  @override
  String get labelRevenue => 'Ingressos';

  @override
  String get labelNetIncome => 'Benefici net';

  @override
  String get labelTotalAssets => 'Actius totals';

  @override
  String get labelTotalLiabilities => 'Passius totals';

  @override
  String get labelEquity => 'Patrimoni net';

  @override
  String get labelOperatingCashFlow => 'Flux de caixa operatiu';

  @override
  String get statementsUnavailable =>
      'No hi ha estats financers publicats disponibles per a aquesta acció.';

  @override
  String get launchAtLogin => 'Obrir en iniciar la sessió';

  @override
  String get hotkeyLabel => 'Drecera global';

  @override
  String get hotkeyRecordHint =>
      'Fes clic aquí i prem la nova combinació de tecles';

  @override
  String get hotkeyReset => 'Restablir el valor predeterminat';

  @override
  String get pasteImage => 'Enganxar imatge del porta-retalls';

  @override
  String get errClipboardNoImage => 'No hi ha cap imatge al porta-retalls.';

  @override
  String get favorites => 'Favorits';

  @override
  String get addToFavorites => 'Afegir als favorits';

  @override
  String get removeFromFavorites => 'Eliminar dels favorits';

  @override
  String get noFavorites =>
      'Encara no hi ha favorits. Toca l’estrella d’una acció per afegir-la.';

  @override
  String get displayCurrency => 'Divisa de visualització';

  @override
  String get displayCurrencyNone => 'Només la divisa pròpia de l’acció';

  @override
  String labelConverted(String currency) {
    return '≈ en $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Tipus de canvi: 1 $from = $rate $to (BCE, $date)';
  }

  @override
  String get updates => 'Actualitzacions';

  @override
  String currentVersion(String version) {
    return 'Versió $version';
  }

  @override
  String get autoUpdate => 'Instal·la les actualitzacions automàticament';

  @override
  String get checkForUpdates => 'Cerca actualitzacions';

  @override
  String get updateChecking => 'S’estan cercant actualitzacions…';

  @override
  String get updateUpToDate => 'Tens la versió més recent.';

  @override
  String updateAvailable(String version) {
    return 'La versió $version està disponible.';
  }

  @override
  String get updateDownloading =>
      'S’està baixant l’actualització en segon pla…';

  @override
  String get updateDownloaded =>
      'L’actualització està a punt. Reinicia per instal·lar-la.';

  @override
  String get updateNow => 'Actualitza';

  @override
  String get restartNow => 'Reinicia';

  @override
  String get updatesViaStore =>
      'Les actualitzacions arriben automàticament a través de la botiga d’aplicacions.';

  @override
  String get updateCheckFailed => 'No s’han pogut cercar actualitzacions.';

  @override
  String get subscription => 'Subscripció';

  @override
  String get planTrial => 'Prova';

  @override
  String get planNormal => 'Normal';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Cap pla actiu';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count anàlisis al mes';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Prova gratuïta de $days dies amb $count anàlisis';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Queden $days dies de prova',
      one: 'Queda 1 dia de prova',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'La teva prova gratuïta s’ha acabat. Tria un pla per continuar analitzant.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Et queden $remaining de $total anàlisis en aquest període';
  }

  @override
  String extraCredits(int count) {
    return '$count anàlisis extra';
  }

  @override
  String renewsOn(String date) {
    return 'Es renova el $date';
  }

  @override
  String get choosePlan => 'Tria un pla';

  @override
  String get currentPlan => 'Pla actual';

  @override
  String get subscribe => 'Subscriu-te';

  @override
  String get perMonth => '/ mes';

  @override
  String get extraPacksTitle => 'Necessites més? Compra anàlisis extra';

  @override
  String get extraPacksHint =>
      'Les anàlisis extra no caduquen mai i s’utilitzen després de la teva quota mensual.';

  @override
  String get buy => 'Comprar';

  @override
  String get restorePurchases => 'Restaurar compres';

  @override
  String get manageSubscription => 'Gestionar la subscripció';

  @override
  String get purchaseSuccess => 'Gràcies! La teva compra està activa.';

  @override
  String get purchasePending => 'Compra pendent…';

  @override
  String get purchaseFailed => 'No s’ha pogut completar la compra.';

  @override
  String get purchaseCanceled => 'Compra cancel·lada.';

  @override
  String get billingUnavailable =>
      'Les compres encara no estan disponibles en aquesta plataforma. Subscriu-te des del teu telèfon o Mac; el teu pla funcionarà a tots els dispositius.';

  @override
  String get errQuotaExceeded =>
      'No et queden anàlisis en aquest període. Millora el teu pla o compra anàlisis extra.';

  @override
  String get errTrialExpired =>
      'La teva prova gratuïta s’ha acabat. Tria un pla per continuar.';

  @override
  String get errNoPlan => 'Cal un pla actiu per a l’anàlisi amb IA.';

  @override
  String get viewPlans => 'Veure plans';

  @override
  String get usageTitle => 'Ús';

  @override
  String get demoPurchaseNote =>
      'Facturació de demostració: les compres se simulen en aquesta plataforma.';

  @override
  String get mostPopular => 'Més popular';

  @override
  String get bestValue => 'Millor relació qualitat-preu';

  @override
  String get planFeaturesCommon =>
      'El reconeixement de fotos, les dades en temps real, els gràfics, els favorits i els 120 idiomes estan inclosos en tots els plans. La quota cobreix les anàlisis amb IA.';

  @override
  String get searchLanguages => 'Cerca idiomes…';

  @override
  String get noLanguageMatch => 'Cap idioma no coincideix.';

  @override
  String get aiSettings => 'Anàlisi amb IA';

  @override
  String get aiLength => 'Extensió';

  @override
  String get aiDepthBrief => 'Breu';

  @override
  String get aiDepthStandard => 'Estàndard';

  @override
  String get aiDepthDeep => 'A fons';

  @override
  String get aiDepthBriefDesc => 'L’essencial, ràpidament.';

  @override
  String get aiDepthStandardDesc => 'Informe complet amb totes les seccions.';

  @override
  String get aiDepthDeepDesc =>
      'Més cerques web, comparació amb competidors i més detall.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Unes $min–$max paraules';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'fa servir $count anàlisis',
      one: 'fa servir 1 anàlisi',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Nivell del lector';

  @override
  String get aiReaderBeginner => 'Principiant';

  @override
  String get aiReaderExperienced => 'Experimentat';

  @override
  String get aiReaderBeginnerDesc =>
      'Llenguatge senzill; s’explica cada terme tècnic.';

  @override
  String get aiReaderExperiencedDesc =>
      'Text més dens amb la terminologia financera habitual.';

  @override
  String get aiCounterArgument => 'Contraargument més sòlid';

  @override
  String get aiCounterArgumentDesc =>
      'El resum sempre acaba amb el millor argument en contra de la seva pròpia conclusió.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Fins a $count cerques web per anàlisi amb el teu pla',
      one: 'Fins a 1 cerca web per anàlisi amb el teu pla',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Extensió estàndard segons el pla: Normal $normal, Pro $pro, Max $max, Ultra $ultra. «Breu» en fa servir 2 menys i «A fons», 2 més.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'fins a $count cerques web',
      one: 'fins a 1 cerca web',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cerques web per anàlisi',
      one: '1 cerca web per anàlisi',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Aquesta extensió requereix $needed anàlisis, però només te’n queden $left. Tria una extensió més curta a Configuració o aconsegueix més anàlisis.';
  }

  @override
  String get outlookMarketMood => 'Sentiment del mercat';

  @override
  String get moodVeryPessimistic => 'Molt pessimista';

  @override
  String get moodPessimistic => 'Pessimista';

  @override
  String get moodNeutral => 'Neutral';

  @override
  String get moodOptimistic => 'Optimista';

  @override
  String get moodVeryOptimistic => 'Molt optimista';

  @override
  String get scenarioBull => 'Escenari alcista';

  @override
  String get scenarioBase => 'Escenari base';

  @override
  String get scenarioBear => 'Escenari baixista';

  @override
  String outlookCurrentPrice(String price) {
    return 'Preu actual: $price';
  }

  @override
  String get outlookKeyLevels => 'Nivells clau';

  @override
  String get keyLevelSupport => 'Suport';

  @override
  String get keyLevelResistance => 'Resistència';

  @override
  String get keyLevelAnchor => 'Àncora';

  @override
  String get upcomingEvents => 'Propers esdeveniments';

  @override
  String get outlookChartNote =>
      'Rangs orientatius; les probabilitats són estimacions aproximades, no prediccions.';

  @override
  String get accountTitle => 'Compte';

  @override
  String get signIn => 'Inicia la sessió';

  @override
  String get signOut => 'Tanca la sessió';

  @override
  String get notSignedIn => 'No has iniciat la sessió';

  @override
  String get accountBenefit =>
      'Inicia la sessió perquè la teva subscripció funcioni a tots els teus dispositius.';

  @override
  String get accountSyncedNote =>
      'La teva subscripció i les anàlisis que et queden són les mateixes a tots els dispositius.';

  @override
  String get signInTitle => 'Inicia la sessió a WhatStock';

  @override
  String get emailLabel => 'Adreça electrònica';

  @override
  String get continueWithEmail => 'Continua amb el correu';

  @override
  String codeSentTo(String email) {
    return 'Hem enviat un codi de 6 xifres a $email. És vàlid durant 10 minuts.';
  }

  @override
  String get codeLabel => 'Codi d’accés';

  @override
  String get resendCode => 'Envia un codi nou';

  @override
  String get useDifferentEmail => 'Fes servir un altre correu';

  @override
  String get errInvalidCode => 'El codi és incorrecte o ha caducat.';

  @override
  String get errInvalidEmail => 'Introdueix una adreça electrònica vàlida.';

  @override
  String get errSignInFailed =>
      'No s’ha pogut iniciar la sessió. Comprova la connexió i torna-ho a provar.';

  @override
  String get checkoutWaiting =>
      'Completa el pagament al navegador. L’app s’actualitzarà automàticament quan s’hagi fet.';

  @override
  String get paymentViaStripe =>
      'Pagament segur al navegador mitjançant Stripe. Cancel·la quan vulguis.';

  @override
  String get paymentViaStore =>
      'Es factura a través del teu compte d’App Store o Google Play. Cancel·la quan vulguis a la configuració de la botiga.';

  @override
  String get keySpace => 'Espai';

  @override
  String get doubleOptionTitle => 'Doble pulsació d’Opció';

  @override
  String get doubleOptionSubtitle =>
      'Prémer ràpidament dues vegades la tecla Opció també obre WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Perquè també funcioni en altres apps, permet WhatStock a Configuració del Sistema → Privacitat i seguretat → Monitoratge de l’entrada i després torna a obrir l’app.';

  @override
  String get openSystemSettings => 'Obrir Configuració del Sistema';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Prem $shortcut o dues vegades la tecla Opció des de qualsevol lloc per obrir WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Més probable';

  @override
  String get longTermToday => 'Avui';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years anys',
      one: '1 any',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range l\'any';
  }

  @override
  String longTermLikely(String price) {
    return 'més probable: $price';
  }

  @override
  String get confidenceLow => 'Confiança baixa';

  @override
  String get confidenceMedium => 'Confiança mitjana';

  @override
  String get confidenceHigh => 'Confiança alta';

  @override
  String get longTermNote =>
      'Els intervals a llarg termini es basen en els supòsits indicats i s\'eixamplen amb el temps. Preus sense dividends. Estimacions aproximades, no prediccions.';

  @override
  String get portfolio => 'Cartera';

  @override
  String get portfolioEmpty =>
      'Encara és buida. Obre una acció i toca «Afegeix a la cartera» per seguir el que tens.';

  @override
  String get portfolioLocalNote =>
      'Es desa només en aquest dispositiu. Els totals es converteixen als tipus de referència del BCE; els preus poden anar amb retard.';

  @override
  String get addToPortfolio => 'Afegeix a la cartera';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Afegeix $symbol';
  }

  @override
  String get portfolioQuantity => 'Nombre d’accions';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Preu per acció ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Data de compra';

  @override
  String get portfolioAdd => 'Afegeix';

  @override
  String get portfolioInvalidNumber =>
      'Introdueix un nombre més gran que zero.';

  @override
  String portfolioAdded(String symbol) {
    return 'S’ha afegit $symbol a la cartera.';
  }

  @override
  String get portfolioTotalValue => 'Valor total';

  @override
  String get portfolioToday => 'Avui';

  @override
  String get portfolioGainLoss => 'Guany/pèrdua';

  @override
  String get portfolioInvested => 'Invertit';

  @override
  String get portfolioAllocation => 'Distribució';

  @override
  String get portfolioPositions => 'Posicions';

  @override
  String portfolioAvgCost(String price) {
    return 'cost mitjà $price';
  }

  @override
  String get portfolioYourPosition => 'La teva posició';

  @override
  String get portfolioPurchases => 'Compres';

  @override
  String get portfolioRemove => 'Elimina';

  @override
  String get portfolioExcluded =>
      'Les posicions sense preu o sense tipus de canvi queden fora dels totals.';

  @override
  String get priceAlerts => 'Alertes de preu';

  @override
  String get setPriceAlert => 'Crea una alerta de preu';

  @override
  String alertDialogTitle(String symbol) {
    return 'Alerta de preu · $symbol';
  }

  @override
  String get alertKindAbove => 'Puja per sobre de';

  @override
  String get alertKindBelow => 'Baixa per sota de';

  @override
  String get alertKindMove => 'Es mou molt en un dia';

  @override
  String alertTargetPrice(String currency) {
    return 'Preu ($currency)';
  }

  @override
  String get alertMovePercent => 'Moviment diari (%)';

  @override
  String get alertAlreadyMet => 'El preu ja ha superat aquest nivell.';

  @override
  String get alertSave => 'Crea l’alerta';

  @override
  String alertCreated(String symbol) {
    return 'Alerta creada per a $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Encara no hi ha alertes. Obre una acció i toca la campana.';

  @override
  String get alertsNote =>
      'Les alertes es comproven cada 5 minuts mentre WhatStock està en marxa. A l’ordinador continua a la barra de menús o a la safata; al mòbil, de moment avisa quan l’app està oberta.';

  @override
  String alertDescAbove(String price) {
    return 'Per sobre de $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Per sota de $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Moviment diari ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Activada el $date a $price';
  }

  @override
  String get alertRearm => 'Reactiva';

  @override
  String get alertDelete => 'Elimina';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol ha pujat per sobre de $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol ha baixat per sota de $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol s’ha mogut un $percent avui';
  }

  @override
  String alertHitBody(String price) {
    return 'Preu actual: $price';
  }

  @override
  String get alertOpen => 'Obre';

  @override
  String get keepInTrayTitle => 'Continua en tancar la finestra';

  @override
  String get keepInTraySubtitle =>
      'WhatStock es queda a la barra de menús o a la safata, així la drecera i les alertes de preu continuen funcionant.';

  @override
  String get termsOfUse => 'Condicions d’ús';

  @override
  String get privacyPolicy => 'Política de privadesa';

  @override
  String get subscriptionLegal =>
      'La subscripció es renova automàticament cada mes fins que la cancel·lis. En subscriure’t acceptes les Condicions d’ús i la Política de privadesa.';

  @override
  String get deleteAccount => 'Elimina el compte';

  @override
  String get deleteAccountTitle => 'Vols eliminar el compte?';

  @override
  String get deleteAccountBody =>
      'El teu compte i tot el que desem al servidor (correu, quota, ús) s’eliminaran per sempre, i les anàlisis no utilitzades es perden. Una subscripció pagada al navegador es cancel·la de seguida; una d’App Store o Google Play l’has de cancel·lar a la configuració de la botiga.';

  @override
  String get deleteLocalData =>
      'Elimina també les dades d’aquest dispositiu (cartera, alertes, preferits, historial, anàlisis desades)';

  @override
  String get deleteAccountConfirm => 'Elimina per sempre';

  @override
  String get accountDeleted => 'S’ha eliminat el teu compte.';

  @override
  String get errDeleteAccount =>
      'No s’ha pogut eliminar el compte. Comprova la connexió i torna-ho a provar.';

  @override
  String get aiTrialBriefNote =>
      'Les anàlisis de prova són breus i es fan amb un model d’IA més ràpid. Amb un pla obtens la nostra IA més capaç, més cerques web i les extensions Estàndard i A fons.';

  @override
  String get billingMonthly => 'Mensual';

  @override
  String get billingYearly => 'Anual';

  @override
  String get yearlyDiscount => '2 mesos gratis';

  @override
  String get perYear => '/ any';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price al mes';
  }

  @override
  String get subscriptionLegalYearly =>
      'La subscripció anual es renova automàticament cada any fins que la cancel·lis. En subscriure’t acceptes les Condicions d’ús i la Política de privadesa.';

  @override
  String get myAnalyses => 'Les meves anàlisis';

  @override
  String get navAlerts => 'Alertes';

  @override
  String get inviteTitle => 'Versió prèvia tancada';

  @override
  String get inviteBody =>
      'De moment, WhatStock només està disponible amb invitació. Introdueix el codi d’invitació que has rebut.';

  @override
  String get inviteCodeLabel => 'Codi d’invitació';

  @override
  String get inviteContinue => 'Continua';

  @override
  String get inviteInvalid => 'Aquest codi d’invitació no és vàlid.';

  @override
  String get inviteExpired =>
      'Aquesta invitació ha caducat. Demana un codi nou a la persona que t’ha convidat.';

  @override
  String get inviteDeviceLimit =>
      'Aquest codi d’invitació ja s’està fent servir en el nombre màxim de dispositius.';

  @override
  String get previewConfidential => 'Versió prèvia confidencial';

  @override
  String get errPreviewDailyLimit =>
      'S’ha arribat al límit d’anàlisis d’avui d’aquesta versió prèvia. Torna-ho a provar demà.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'fa $count hores',
      one: 'fa 1 hora',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'fa $count dies',
      one: 'fa 1 dia',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Vols actualitzar aquesta anàlisi?';

  @override
  String staleBody(String age) {
    return 'Es va fer $age. Els preus, les notícies i els resultats poden haver canviat des de llavors.';
  }

  @override
  String get staleKeep => 'Mostrar l’anterior';

  @override
  String get staleRefresh => 'Fer-ne una de nova';

  @override
  String seeAll(int count) {
    return 'Veure-les totes ($count)';
  }

  @override
  String get searchAnalyses => 'Cerca a les teves anàlisis';

  @override
  String get deleteAnalysis => 'Suprimir';

  @override
  String analysisDeleted(String symbol) {
    return 'S’ha suprimit l’anàlisi de $symbol';
  }

  @override
  String get keyLevelAlertHint =>
      'Toca un nivell per rebre una alerta quan el preu hi arribi.';

  @override
  String get shareAnalysisTitle => 'Compartir l’anàlisi';

  @override
  String get shareAsImage => 'Compartir com a imatge';

  @override
  String get shareAsText => 'Compartir com a text';

  @override
  String get shareCardFooter => 'Fet amb WhatStock';

  @override
  String get shareCardDisclaimer =>
      'Anàlisi amb IA · no és assessorament d’inversió';

  @override
  String get referralTitle => 'Convida amics';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count anàlisis extra',
      one: '1 anàlisi extra',
    );
    return 'Comparteix el teu codi. El teu amic rep $_temp0 de seguida, i tu el mateix després de la seva primera anàlisi.';
  }

  @override
  String get referralYourCode => 'El teu codi';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Convidats: $invited · Recompensats: $rewarded';
  }

  @override
  String get referralHaveCode => 'Tens un codi d’un amic?';

  @override
  String get referralRedeem => 'Bescanvia';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'S’han afegit $count anàlisis extra. Et donem la benvinguda!',
      one: 'S’ha afegit 1 anàlisi extra. Et donem la benvinguda!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Aquest codi no existeix. Comprova’l i torna-ho a provar.';

  @override
  String get referralErrOwn => 'No pots bescanviar el teu propi codi.';

  @override
  String get referralErrAlready => 'Ja has bescanviat el codi d’un amic.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count anàlisis extra',
      one: '1 anàlisi extra',
    );
    return 'Analitzo accions amb WhatStock: fotografies una acció i la IA te l’explica. Amb el meu codi $code reps $_temp0.';
  }

  @override
  String get referralCopied => 'Codi copiat';

  @override
  String get onboardTitle1 => 'Fotografia una acció';

  @override
  String get onboardBody1 =>
      'N’hi ha prou amb la pantalla d’una app de borsa, un diari o el logotip d’una empresa: WhatStock reconeix l’acció i et mostra el preu, el gràfic i les xifres clau.';

  @override
  String get onboardTitle2 => 'Entén-la en pocs minuts';

  @override
  String get onboardBody2 =>
      'L’anàlisi amb IA t’explica què mou l’acció, els riscos, la valoració i tres escenaris sobre cap on podria anar el preu, amb fonts i en el teu idioma.';

  @override
  String get onboardTitle3 => 'Estigues sempre al dia';

  @override
  String get onboardBody3 =>
      'Els favorits, la teva cartera i les alertes de preu et mantenen informat. Les teves anàlisis es queden al dispositiu, a punt per tornar-les a obrir.';

  @override
  String get onboardNext => 'Següent';

  @override
  String get onboardStart => 'Comença';

  @override
  String get onboardSkip => 'Omet';

  @override
  String changesTitle(String date) {
    return 'Des de l’anàlisi anterior ($date)';
  }

  @override
  String get changesPrice => 'Preu';

  @override
  String get changesNoMajor =>
      'Les perspectives no han canviat de manera significativa.';

  @override
  String get changesPreviousSummary => 'Resum anterior';

  @override
  String get telemetryTitle => 'Ajuda a millorar WhatStock';

  @override
  String get telemetryBody =>
      'Comparteix estadístiques d\'ús anònimes i informes de fallades: quines funcions es fan servir i què ha anat malament. Mai les teves accions, anàlisis ni dades personals. Pots canviar-ho en qualsevol moment a Configuració.';

  @override
  String get telemetryAllow => 'Permet';

  @override
  String get telemetryDecline => 'No, gràcies';

  @override
  String get telemetrySetting =>
      'Estadístiques anònimes i informes de fallades';

  @override
  String get telemetrySettingHint =>
      'Amb quina freqüència es fan servir les funcions i informes d\'errors, sense dades personals ni el contingut de les teves cerques i anàlisis.';

  @override
  String get askButton => 'Pregunta sobre aquesta anàlisi';

  @override
  String askTitle(String symbol) {
    return 'Preguntes sobre $symbol';
  }

  @override
  String get askIntro =>
      'Pregunta qualsevol cosa sobre l’anàlisi: què vol dir un risc, què canviaria les perspectives, com s’ha calculat una xifra. Les respostes es basen en aquesta anàlisi i no constitueixen assessorament d’inversió.';

  @override
  String get askHint => 'Fes una pregunta…';

  @override
  String get askSend => 'Envia';

  @override
  String get askThinking => 'Pensant…';

  @override
  String get askSuggest1 => 'Quin és el risc més gran?';

  @override
  String get askSuggest2 => 'Què canviaria les perspectives?';

  @override
  String get askSuggest3 => 'Explica-ho en paraules senzilles';

  @override
  String get askMaxReached =>
      'Aquesta era l’última pregunta per a aquesta anàlisi. Fes una anàlisi nova per preguntar-ne més.';

  @override
  String get errAskLimit =>
      'Has arribat al límit de preguntes d’avui. Torna-ho a provar demà.';

  @override
  String get eventTomorrow => 'Demà';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'd’aquí a $days dies',
      one: 'd’aquí a 1 dia',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Resultats trimestrals';

  @override
  String get eventBeforeOpen => 'abans de l’obertura';

  @override
  String get eventAfterClose => 'després del tancament';

  @override
  String eventEpsEstimate(String value) {
    return 'BPA previst: $value';
  }

  @override
  String get eventFromAnalysis => 'De la teva anàlisi';

  @override
  String get eventsHint =>
      'Dates de resultats dels teus favorits i de les accions de la cartera per als pròxims 90 dies, i els esdeveniments amb data que han detectat les teves anàlisis.';

  @override
  String get eventsEmpty =>
      'No hi ha esdeveniments amb data en els pròxims 90 dies. Afegeix favorits o accions a la cartera per veure aquí les seves dates de resultats.';

  @override
  String get compareTitle => 'Compara';

  @override
  String get compareAdd => 'Afegeix una acció';

  @override
  String get compareRemove => 'Elimina';

  @override
  String get compareTickerHint => 'Ticker, p. ex. MSFT';

  @override
  String get compareHint =>
      'Xifres clau una al costat de l\'altra; el millor valor de cada fila està ressaltat. Els imports són en la divisa pròpia de cada acció.';

  @override
  String get compareNoAnalysis => 'Encara no hi ha cap anàlisi';

  @override
  String get portfolioDividends => 'Dividends anuals';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent de rendibilitat';
  }

  @override
  String get portfolioDividendNote =>
      'Els dividends anuals previstos es basen en els dividends pagats els darrers 12 mesos; els pagaments futurs no estan garantits.';

  @override
  String positionDividend(String amount) {
    return 'Dividend: $amount l’any';
  }

  @override
  String get chartAvgCost => 'El teu mitjà';

  @override
  String get chartAlertLevel => 'Alerta';

  @override
  String get marketsToday => 'Mercats avui';

  @override
  String get notesTitle => 'Les meves notes';

  @override
  String get notesHint =>
      'Per què la vas comprar, què vigiles, què et faria vendre-la?';

  @override
  String get notesInfo =>
      'Es desa només en aquest dispositiu. L’anàlisi amb IA té en compte les teves notes.';

  @override
  String notesSaved(String date) {
    return 'Desat $date';
  }

  @override
  String get peersTitle => 'Empreses similars';

  @override
  String get portfolioExport => 'Exporta com a CSV';

  @override
  String get portfolioImport => 'Importa des de CSV';

  @override
  String get portfolioImportHint =>
      'Enganxa una compra per línia: símbol, quantitat, preu, divisa, data (AAAA-MM-DD). Les columnes es poden separar amb comes, punts i comes o tabulacions; la fila de capçalera és opcional.';

  @override
  String get portfolioImportButton => 'Importa';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'S’han afegit $count compres',
      one: 'S’ha afegit 1 compra',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'S’han omès $count línies',
      one: 'S’ha omès 1 línia',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'La cartera, els favorits, les alertes de preu i les notes se sincronitzen a tots els teus dispositius.';

  @override
  String syncLast(String time) {
    return 'Última sincronització: $time';
  }

  @override
  String get syncNow => 'Sincronitza ara';

  @override
  String get syncFailed =>
      'No s\'ha pogut sincronitzar. Es tornarà a provar automàticament.';

  @override
  String get alertEmailTitle => 'Correu quan salti una alerta';

  @override
  String get alertEmailOn =>
      'Comprovem les teves alertes cada pocs minuts i t’enviem un correu, fins i tot amb l’app tancada.';

  @override
  String get alertEmailSignIn =>
      'Inicia la sessió amb el teu correu a Configuració per rebre les alertes per correu, fins i tot amb l’app tancada.';

  @override
  String get portfolioHistory => 'Evolució del valor';

  @override
  String get portfolioReviewTitle => 'Revisió de la cartera amb IA';

  @override
  String get portfolioReviewIntro =>
      'La IA analitza tota la teva cartera: concentració, exposició a sectors i divises, riscos que comparteixen les teves accions i dividends. Fa servir 1 anàlisi.';

  @override
  String get portfolioReviewButton => 'Revisar la meva cartera';

  @override
  String get portfolioReviewAgain => 'Tornar a revisar';

  @override
  String get portfolioReviewWorking => 'S’està revisant la teva cartera…';

  @override
  String get digestTitle => 'Resum setmanal per correu electrònic';

  @override
  String get digestHint =>
      'Cada dilluns: com s\'han mogut els teus favorits i la teva cartera la setmana passada, i les properes dates de resultats.';

  @override
  String get benchmarkTitle => 'Comparat amb l\'S&P 500';

  @override
  String get benchmarkYours => 'Les teves compres';

  @override
  String get benchmarkIndex => 'Mateixos imports a l\'S&P 500';

  @override
  String benchmarkAhead(String points) {
    return '$points punts percentuals millor que l\'índex';
  }

  @override
  String benchmarkBehind(String points) {
    return '$points punts percentuals per sota de l\'índex';
  }

  @override
  String get benchmarkHint =>
      'Com si cada compra s\'hagués invertit el mateix dia en un fons indexat a l\'S&P 500. Sense dividends; les rendibilitats passades no prediuen les futures.';

  @override
  String get portfolioSell => 'Ven';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Ven $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Preu de venda per acció ($currency)';
  }

  @override
  String get portfolioSellDate => 'Data de venda';

  @override
  String get portfolioSellAll => 'Tot';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'En tens $quantity';
  }

  @override
  String get portfolioSold => 'Venda';

  @override
  String get portfolioRealized => 'Realitzat';

  @override
  String get portfolioClosed => 'Posicions tancades';

  @override
  String get portfolioClosedNote => 'Totes les accions venudes';

  @override
  String get portfolioTransactions => 'Transaccions';

  @override
  String get portfolioRealizedByYear => 'Guanys realitzats per any';

  @override
  String get portfolioRealizedHint =>
      'Les vendes s\'assignen primer a les teves compres més antigues (FIFO) i es converteixen al tipus de canvi d\'avui. Per a la declaració d\'impostos, fes servir l\'extracte del teu bròquer.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Des d\'aquesta anàlisi s\'han publicat nous resultats trimestrals ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Nous resultats';

  @override
  String get portfolioImportBrokers =>
      'També es reconeixen les exportacions de Revolut, Trading 212 i Interactive Brokers, amb les vendes; els dividends i els ingressos s\'ometen.';

  @override
  String get portfolioImportFile => 'Tria un fitxer';

  @override
  String offlineBanner(String time) {
    return 'Sense connexió – es mostren les últimes dades desades ($time).';
  }

  @override
  String get glossMarketCap =>
      'Quant val tota l\'empresa a la borsa: preu de l\'acció × nombre d\'accions.';

  @override
  String get glossSharesOutstanding =>
      'Quantes accions ha emès l\'empresa. Si augmenta, cada acció té una porció més petita; les recompres el redueixen.';

  @override
  String get glossPeTrailing =>
      'Preu ÷ benefici per acció dels últims 12 mesos: quants anys del benefici actual pagues. Més baix és més barat, però les empreses que creixen ràpid solen tenir un P/E alt.';

  @override
  String get glossPeForward =>
      'Com el P/E, però amb el benefici que els analistes esperen per als pròxims 12 mesos. Per sota del P/E històric vol dir que s\'espera que el benefici creixi.';

  @override
  String get glossPb =>
      'Preu ÷ valor comptable (actius menys deutes) per acció. Al voltant d\'1 vol dir que el mercat valora l\'empresa pel que té sobre el paper.';

  @override
  String get glossPs =>
      'Valor de mercat ÷ ingressos anuals. Útil per a empreses amb poc o encara cap benefici; compara\'l dins del mateix sector.';

  @override
  String get glossEvToFcf =>
      'Valor de l\'empresa amb el deute inclòs (EV) ÷ la caixa que genera en un any després d\'inversions. Més baix vol dir que obtens més caixa pel preu.';

  @override
  String get glossPeg =>
      'P/E ÷ creixement anual esperat del benefici (%). Al voltant d\'1 sovint es considera just; posa el P/E en relació amb el creixement.';

  @override
  String get glossEps =>
      'Benefici per acció dels últims 12 mesos. Un EPS que puja any rere any és un dels senyals més forts d\'una empresa sana.';

  @override
  String get glossBeta =>
      'Quant tendeix l\'acció a moure\'s amb el mercat: 1 = com el mercat, 1,5 = oscil·lacions un 50% més grans, per sota d\'1 = més tranquil·la.';

  @override
  String get glossRevenueTtm =>
      'Vendes totals dels últims 12 mesos, abans de qualsevol cost.';

  @override
  String get glossNetIncomeTtm =>
      'Benefici que queda després de tots els costos, interessos i impostos dels últims 12 mesos.';

  @override
  String get glossGrossMargin =>
      'La part dels ingressos que queda després del cost directe dels productes. Un marge alt sovint indica poder per fixar preus.';

  @override
  String get glossOperatingMargin =>
      'La part dels ingressos que queda després de fer funcionar el negoci (salaris, lloguer, màrqueting), abans d\'interessos i impostos.';

  @override
  String get glossNetMargin =>
      'La part dels ingressos que acaba sent benefici final. 20% vol dir que 20 de cada 100 en vendes són benefici.';

  @override
  String get glossRoe =>
      'Rendibilitat del capital (ROE): benefici anual ÷ el capital dels propietaris. Mostra com de bé la direcció fa servir els diners dels accionistes; per sobre d\'un 15% aprox. és fort.';

  @override
  String get glossRoa =>
      'Rendibilitat dels actius (ROA): benefici anual ÷ tot el que posseeix l\'empresa. Compara-la dins del mateix sector.';

  @override
  String get glossDebtToEquity =>
      'Deutes ÷ el capital dels propietaris. Més alt vol dir més diners manllevats: més risc quan pugen els tipus o el negoci s\'alenteix.';

  @override
  String get glossCurrentRatio =>
      'Actius a curt termini ÷ factures que vencen dins d\'un any. Per sobre d\'1 vol dir que l\'empresa pot cobrir els pagaments propers.';

  @override
  String get glossRevenueGrowth =>
      'Quant han crescut els ingressos respecte a un any abans.';

  @override
  String get glossEpsGrowth =>
      'Quant ha crescut el benefici per acció respecte a un any abans.';

  @override
  String get glossDividendYield =>
      'Dividend anual ÷ preu de l\'acció: els ingressos en efectiu que obtindries cada any, en percentatge del que pagues.';

  @override
  String get glossDividendPerShare =>
      'El dividend pagat per una acció durant l\'últim any.';

  @override
  String get glossPayoutRatio =>
      'La part del benefici que es reparteix com a dividends. Per sobre del 100% l\'empresa paga més del que guanya, cosa que rarament dura.';

  @override
  String get glossTitle => 'Què vol dir?';

  @override
  String get watchNewsTitle => 'Notícies de les teves accions';

  @override
  String get undo => 'Desfer';

  @override
  String get watchSort => 'Ordenar';

  @override
  String get watchSortOwn => 'El meu ordre';

  @override
  String get watchSortGainers => 'Més pujades primer';

  @override
  String get watchSortLosers => 'Més baixades primer';

  @override
  String get watchSortName => 'Per ticker (A–Z)';

  @override
  String get watchHint =>
      'Arrossega la nansa per reordenar i llisca cap a l\'esquerra per eliminar. La línia mostra els últims 30 dies.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: la teva anàlisi està llesta.';
  }

  @override
  String alertFromCost(String price) {
    return 'Respecte al teu preu mitjà de compra ($price):';
  }

  @override
  String get briefTitle => 'Avui amb les teves accions';

  @override
  String get briefButton => 'Resumeix el dia';

  @override
  String get briefHint =>
      'Un breu resum amb IA de com s’han mogut avui la teva cartera i els teus preferits i què en diuen les últimes notícies. No consumeix cap anàlisi.';

  @override
  String get briefRefresh => 'Actualitza';

  @override
  String get sectionEarnings => 'Resultats';

  @override
  String earningsNext(String date) {
    return 'Pròxim informe: $date';
  }

  @override
  String get earningsExpected => 'BPA previst';

  @override
  String get earningsReported => 'BPA publicat';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Igual o per sobre del BPA previst en $beats dels últims $total trimestres',
      one: 'Igual o per sobre del BPA previst en $beats d\'1 trimestre',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol presenta resultats trimestrals demà';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol presenta resultats trimestrals avui';
  }

  @override
  String get earningsRemindersTitle => 'Recordatoris de resultats';

  @override
  String get earningsRemindersSubtitle =>
      'Una notificació el dia abans que les accions dels teus favorits o de la teva cartera presentin resultats trimestrals';

  @override
  String addAllToFavorites(int count) {
    return 'Afegir-les totes als favorits ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Importa des d’una captura de pantalla';

  @override
  String get holdingsReading => 'S’estan llegint les teves posicions…';

  @override
  String get holdingsReviewTitle => 'Posicions trobades';

  @override
  String get holdingsReviewHint =>
      'Comprova les xifres abans d’afegir-les. El preu és el teu preu mitjà de compra per acció, no el preu d’avui.';

  @override
  String get holdingsNoPrice => 'No hi ha preu mitjà de compra a la imatge';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Afegeix $count posicions',
      one: 'Afegeix 1 posició',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'No s’han trobat posicions d’accions en aquesta imatge. Prova amb una captura de la pàgina de posicions o de cartera del teu bròquer.';

  @override
  String get week52Range => 'Interval de 52 setmanes';

  @override
  String week52BelowHigh(String percent) {
    return '$percent per sota del màxim de 52 setmanes';
  }

  @override
  String get week52AtHigh => 'Al màxim de 52 setmanes';

  @override
  String get alertKindTrailing => 'Cau des del màxim';

  @override
  String get alertTrailingPercent => 'Caiguda des del màxim (%)';

  @override
  String get alertTrailingHint =>
      'Segueix el preu a l’alça: l’alerta salta quan el preu cau aquest percentatge des del màxim assolit des que la vas crear.';

  @override
  String alertDescTrailing(String percent) {
    return 'Caiguda del $percent des del màxim';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'màxim fins ara: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol ha caigut un $percent des del màxim';
  }

  @override
  String get sectionInsiders => 'Operacions d\'insiders';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count compres',
      one: '1 compra',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count vendes',
      one: '1 venda',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Net: $shares accions';
  }

  @override
  String get insiderBuy => 'Comprat';

  @override
  String get insiderSell => 'Venut';

  @override
  String get insiderHint =>
      'Compres i vendes al mercat obert de directius i consellers en els darrers 90 dies (SEC Form 4). No es compten l\'exercici d\'opcions ni les concessions d\'accions.';

  @override
  String get insiderNone =>
      'Cap compra ni venda d\'insiders al mercat obert en els darrers 90 dies.';

  @override
  String get analystTrend => 'Com han canviat les opinions mes a mes';

  @override
  String get watchListAll => 'Totes';

  @override
  String get watchListNew => 'Nova llista';

  @override
  String get watchListName => 'Nom de la llista';

  @override
  String get watchListRename => 'Canviar el nom de la llista';

  @override
  String get watchListDelete => 'Suprimir la llista';

  @override
  String get watchListAddTo => 'Afegir a una llista';

  @override
  String get watchListEmpty =>
      'Encara no hi ha cap acció en aquesta llista. Toca el botó de llista al costat d\'una acció per afegir-la.';

  @override
  String get portfolioAskTitle => 'Preguntes sobre la teva cartera';

  @override
  String get rangeYtd => 'Enguany';

  @override
  String get backupTitle => 'Còpia de seguretat';

  @override
  String get backupSave => 'Desa una còpia de seguretat';

  @override
  String get backupSaveHint =>
      'Els teus favorits, llistes, cartera, alertes i notes en un sol fitxer.';

  @override
  String get backupRestore => 'Restaura des d’una còpia de seguretat';

  @override
  String get backupRestoreHint =>
      'Afegeix el que hi ha al fitxer; no s’esborra res del que tens ara.';

  @override
  String get backupRestored => 'S’ha restaurat la còpia de seguretat.';

  @override
  String get backupInvalid =>
      'Aquest fitxer no és una còpia de seguretat de WhatStock.';

  @override
  String get allocationPositions => 'Accions';

  @override
  String get allocationSectors => 'Sectors';

  @override
  String get allocationCurrencies => 'Divises';

  @override
  String get compareReturn1y => 'Rendiment a 1 any';

  @override
  String get compareFromHigh => 'Des del màxim de 52 setmanes';

  @override
  String get briefAutoTitle => 'Resum diari cada matí';

  @override
  String get briefAutoSubtitle =>
      '«Avui amb les teves accions» es crea automàticament després de les 7:00 mentre l’app està en marxa; als ordinadors t’ho indica una notificació. Fa servir el teu límit diari de preguntes, no una anàlisi.';

  @override
  String get targetsButton => 'Distribució objectiu';

  @override
  String get targetsTitle => 'Distribució objectiu';

  @override
  String get targetsHint =>
      'Indica quina part de la cartera ha de tenir cada acció. Deixa el camp buit si no hi ha objectiu. L\'app et mostrarà què has de comprar o vendre per arribar-hi.';

  @override
  String targetsSum(String percent) {
    return 'Total: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Compra ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Ven ≈ $amount';
  }

  @override
  String get rebalanceOk => 'A l\'objectiu';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol supera el BPA previst';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol no arriba al BPA previst';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'BPA publicat $actual, previst $estimate';
  }

  @override
  String get newsExplain => 'Què vol dir això?';

  @override
  String get newsExplainNote =>
      'Explicació d’IA basada només en el titular i el resum. No constitueix assessorament d’inversió. Fa servir el teu límit diari de preguntes, no una anàlisi.';

  @override
  String get watchAlertAll => 'Alerta de grans moviments diaris';

  @override
  String get watchAlertAllHint =>
      'Una alerta de preu per a cada acció d’aquesta llista que salta quan es mou tant en un dia, amunt o avall. Les accions que ja en tenen una la conserven.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'S’han definit $count alertes',
      one: 'S’ha definit 1 alerta',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Exporta els guanys realitzats (CSV)';

  @override
  String get portfolioAnnualReturn => 'Rendibilitat anual';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / any';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Rendibilitat anual ponderada pels diners (XIRR): té en compte quan has comprat i venut, de manera que els diners afegits més tard no la distorsionen. Es mostra quan la teva primera compra té almenys un any; no inclou els dividends.';

  @override
  String get eventsAddToCalendar => 'Afegir al calendari (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Alerta de cartera';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Una notificació quan tota la teva cartera es mou tant en un dia.';

  @override
  String get portfolioMoveAlertOff => 'Desactivada';

  @override
  String portfolioMoveUp(String percent) {
    return 'La teva cartera puja un $percent avui';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'La teva cartera baixa un $percent avui';
  }

  @override
  String get whatIfTitle => 'I si hi haguessis invertit?';

  @override
  String get whatIfAmount => 'Import';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount invertits fa $period valdrien avui';
  }

  @override
  String get whatIfNote =>
      'Basat només en el preu de l’acció: no inclou dividends, comissions ni impostos. Les rendibilitats passades no prediuen les futures.';

  @override
  String get watchShare => 'Comparteix la llista';

  @override
  String get watchImport => 'Afegeix símbols';

  @override
  String get watchImportHint =>
      'Enganxa símbols separats per comes, espais o salts de línia – per exemple, una llista que algú t’ha compartit.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'S’han afegit $count accions',
      one: 'S’ha afegit 1 acció',
      zero: 'Cap acció nova',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Més grans primer';

  @override
  String get positionsSortGain => 'Més rendiment total primer';

  @override
  String get positionsSortToday => 'Millors d\'avui primer';

  @override
  String get chartMyBuys => 'Les teves compres';

  @override
  String get chartMySells => 'Les teves vendes';

  @override
  String get shortcutsTitle => 'Dreceres de teclat';

  @override
  String usMarketOpen(String time) {
    return 'Mercat dels EUA obert · tanca d’aquí a $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Mercat dels EUA tancat · obre d’aquí a $time';
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
  String get portfolioGoalSet => 'Defineix un objectiu';

  @override
  String get portfolioGoalTitle => 'Objectiu de la cartera';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · objectiu: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Objectiu assolit: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Elimina l\'objectiu';

  @override
  String get alertEdit => 'Edita l’alerta';

  @override
  String get positionOpenLots => 'Encara en cartera (primer les més antigues)';

  @override
  String get lotRemoved => 'S’ha suprimit la transacció';
}
