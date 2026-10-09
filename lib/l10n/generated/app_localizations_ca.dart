// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class AppLocalizationsCa extends AppLocalizations {
  AppLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get appTitle => 'Reszveny';

  @override
  String get homeTagline => 'Fotografia una acció i descobreix-ho tot sobre ella.';

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
  String get errorSectionUnavailable => 'No s\'ha pogut carregar aquesta secció.';

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
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count analistes', one: '1 analista');
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
  String get errRecognitionRefused => 'El servei de reconeixement no ha pogut processar aquesta imatge.';

  @override
  String get errRecognitionTruncated => 'La resposta del reconeixement s\'ha tallat. Torna-ho a provar.';

  @override
  String get errRecognitionBadResponse => 'Resposta inesperada del servei de reconeixement.';

  @override
  String get errRecognitionEmpty => 'El servei de reconeixement ha retornat una resposta buida.';

  @override
  String get errMissingFinnhubKey => 'Les dades de mercat no estan configurades (falta FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'No s\'ha pogut connectar amb el servei de dades de mercat. Comprova la connexió a internet.';

  @override
  String get errMarketRateLimited => 'Massa sol·licituds al servei de dades de mercat. Espera un minut.';

  @override
  String errMarketHttp(String status) {
    return 'El servei de dades de mercat ha retornat un error (HTTP $status).';
  }

  @override
  String get errMarketBadResponse => 'Resposta inesperada del servei de dades de mercat.';

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
    return 'Prem $shortcut des de qualsevol lloc per obrir Reszveny.';
  }

  @override
  String get trayOpen => 'Obrir Reszveny';

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
      'Una visió general detallada escrita per IA: resum de les notícies recents, el negoci, punts forts, riscos i factors ocults, valoració i què cal vigilar.';

  @override
  String get aiGenerate => 'Generar anàlisi';

  @override
  String get aiRegenerate => 'Tornar a generar';

  @override
  String get aiGenerating => 'S’està preparant l’anàlisi… pot trigar un o dos minuts.';

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
  String get errAiNotConfigured => 'L’anàlisi amb IA no està configurada (falta ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable => 'No s’ha pogut connectar amb el servei d’IA. Comprova la connexió a internet.';

  @override
  String errAiHttp(String status) {
    return 'El servei d’IA ha retornat un error (HTTP $status).';
  }

  @override
  String get errAiRefused => 'El servei d’IA ha refusat analitzar aquesta acció.';

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
  String get chartUnavailable => 'L’historial de preus no està disponible a la font de dades actual.';

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
  String get statementsUnavailable => 'No hi ha estats financers publicats disponibles per a aquesta acció.';

  @override
  String get launchAtLogin => 'Obrir en iniciar la sessió';

  @override
  String get hotkeyLabel => 'Drecera global';

  @override
  String get hotkeyRecordHint => 'Fes clic aquí i prem la nova combinació de tecles';

  @override
  String get hotkeyReset => 'Restablir el valor predeterminat';

  @override
  String get pasteImage => 'Enganxar imatge del porta-retalls';

  @override
  String get errClipboardNoImage => 'No hi ha cap imatge al porta-retalls.';
}
