// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Galician (`gl`).
class AppLocalizationsGl extends AppLocalizations {
  AppLocalizationsGl([String locale = 'gl']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'Fotografa unha acción e descobre todo sobre ela.';

  @override
  String get homeHint =>
      'Un título de accións, a pantalla dunha aplicación de corretaxe, un xornal ou o logotipo dunha empresa: calquera cousa que identifique unha acción.';

  @override
  String get takePhoto => 'Facer unha foto';

  @override
  String get chooseFromGallery => 'Escoller da galería';

  @override
  String get chooseImage => 'Escoller unha imaxe';

  @override
  String get enterTickerManually => 'Introducir o ticker manualmente';

  @override
  String get tickerInputLabel => 'Símbolo (ticker)';

  @override
  String get tickerInputHint => 'p. ex. AAPL';

  @override
  String get lookUp => 'Buscar';

  @override
  String demoModeBanner(String symbols) {
    return 'Modo demo: non hai ningunha clave de datos de mercado configurada. Hai datos de exemplo dispoñibles para: $symbols.';
  }

  @override
  String get recognizing => 'Analizando a imaxe…';

  @override
  String get loadingData => 'Cargando datos…';

  @override
  String get noCandidatesTitle => 'Non se recoñeceu ningunha acción';

  @override
  String get noCandidatesBody =>
      'Non puidemos identificar ningunha acción nesta imaxe. Proba cunha foto máis nítida ou introduce o ticker manualmente.';

  @override
  String get whatWeSaw => 'O que vimos';

  @override
  String get chooseCandidateTitle => 'A que acción te refires?';

  @override
  String confidencePercent(int percent) {
    return '$percent % de confianza';
  }

  @override
  String get settings => 'Configuración';

  @override
  String get language => 'Idioma';

  @override
  String get systemLanguage => 'Predeterminado do sistema';

  @override
  String get about => 'Acerca de';

  @override
  String get disclaimer =>
      'Esta aplicación só ofrece información e non constitúe asesoramento de investimento. Os datos poden estar atrasados ou ser inexactos.';

  @override
  String dataSource(String source) {
    return 'Fonte de datos: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Recoñecemento: $source';
  }

  @override
  String get retry => 'Tentar de novo';

  @override
  String get cancel => 'Cancelar';

  @override
  String get ok => 'Aceptar';

  @override
  String get close => 'Pechar';

  @override
  String get errorGeneric => 'Algo saíu mal.';

  @override
  String get errorSectionUnavailable => 'Non se puido cargar esta sección.';

  @override
  String get notAvailable => 'n/d';

  @override
  String get sectionIdentity => 'Identificación';

  @override
  String get sectionPrice => 'Prezo';

  @override
  String get sectionValuation => 'Valoración';

  @override
  String get sectionFinancials => 'Finanzas';

  @override
  String get sectionDividend => 'Dividendo';

  @override
  String get sectionProfile => 'Perfil da empresa';

  @override
  String get sectionAnalysts => 'Recomendacións de analistas';

  @override
  String get sectionNews => 'Novas';

  @override
  String get sectionRecognition => 'Detalles do recoñecemento';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Bolsa';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Moeda';

  @override
  String get labelCountry => 'País';

  @override
  String get labelIndustry => 'Industria';

  @override
  String get labelSector => 'Sector';

  @override
  String get labelWebsite => 'Sitio web';

  @override
  String get labelIpoDate => 'Data de saída a bolsa';

  @override
  String get labelMarketCap => 'Capitalización bolsista';

  @override
  String get labelSharesOutstanding => 'Accións en circulación';

  @override
  String get labelEmployees => 'Empregados';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Sede';

  @override
  String get labelDescription => 'Descrición';

  @override
  String get labelLastPrice => 'Último prezo';

  @override
  String get labelChange => 'Variación';

  @override
  String get labelOpen => 'Apertura';

  @override
  String get labelDayHigh => 'Máximo do día';

  @override
  String get labelDayLow => 'Mínimo do día';

  @override
  String get labelPreviousClose => 'Peche anterior';

  @override
  String get labelWeek52High => 'Máximo de 52 semanas';

  @override
  String get labelWeek52Low => 'Mínimo de 52 semanas';

  @override
  String get labelAverageVolume10d => 'Volume medio (10 días)';

  @override
  String updatedAt(String time) {
    return 'Actualizado $time';
  }

  @override
  String get labelPeTrailing => 'P/E (PER histórico)';

  @override
  String get labelPeForward => 'P/E (PER previsto)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / fluxo de caixa libre';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Ingresos (TTM)';

  @override
  String get labelNetIncomeTtm => 'Beneficio neto (TTM)';

  @override
  String get labelGrossMargin => 'Marxe bruta';

  @override
  String get labelOperatingMargin => 'Marxe operativa';

  @override
  String get labelNetMargin => 'Marxe neta';

  @override
  String get labelRoe => 'Rendibilidade do capital (ROE)';

  @override
  String get labelRoa => 'Rendibilidade dos activos (ROA)';

  @override
  String get labelDebtToEquity => 'Débeda / capital';

  @override
  String get labelCurrentRatio => 'Ratio de liquidez';

  @override
  String get labelRevenueGrowth => 'Crecemento dos ingresos (interanual)';

  @override
  String get labelEpsGrowth => 'Crecemento do EPS (interanual)';

  @override
  String get labelDividendYield => 'Rendibilidade por dividendo';

  @override
  String get labelDividendPerShare => 'Dividendo por acción';

  @override
  String get labelPayoutRatio => 'Ratio de distribución (payout)';

  @override
  String get labelYieldOnCost => 'Rendibilidade sobre o custo';

  @override
  String get labelDividendGrowth5y => 'Crecemento do dividendo (5 anos)';

  @override
  String get dividendNone => 'Non pagou dividendos nos últimos 12 meses.';

  @override
  String get dividendOnYourShares => 'Sobre as túas accións, ao ano';

  @override
  String get labelConsensus => 'Consenso';

  @override
  String get ratingStrongBuy => 'Compra forte';

  @override
  String get ratingBuy => 'Comprar';

  @override
  String get ratingHold => 'Manter';

  @override
  String get ratingSell => 'Vender';

  @override
  String get ratingStrongSell => 'Venda forte';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analistas',
      one: '$count analista',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Período: $period';
  }

  @override
  String get noNews => 'Non hai novas recentes.';

  @override
  String get openArticle => 'Abrir artigo';

  @override
  String get openLinkFailed => 'Non se puido abrir a ligazón.';

  @override
  String get recognitionSummary => 'Resumo';

  @override
  String get recognitionEvidence => 'Por que o pensamos';

  @override
  String get recognitionRawText => 'Texto lido da imaxe';

  @override
  String get errMissingAnthropicKey =>
      'O recoñecemento de imaxes non está configurado (falta ANTHROPIC_API_KEY). Introduce o ticker manualmente.';

  @override
  String get errRecognitionUnreachable =>
      'Non se puido conectar co servizo de recoñecemento. Comproba a túa conexión a internet.';

  @override
  String errRecognitionHttp(String status) {
    return 'O servizo de recoñecemento devolveu un erro (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'O servizo de recoñecemento non puido procesar esta imaxe.';

  @override
  String get errRecognitionTruncated =>
      'A resposta do recoñecemento cortouse. Téntao de novo.';

  @override
  String get errRecognitionBadResponse =>
      'Resposta inesperada do servizo de recoñecemento.';

  @override
  String get errRecognitionEmpty =>
      'O servizo de recoñecemento devolveu unha resposta baleira.';

  @override
  String get errMissingFinnhubKey =>
      'Os datos de mercado non están configurados (falta FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Non se puido conectar co servizo de datos de mercado. Comproba a túa conexión a internet.';

  @override
  String get errMarketRateLimited =>
      'Demasiadas solicitudes ao servizo de datos de mercado. Agarda un minuto.';

  @override
  String errMarketHttp(String status) {
    return 'O servizo de datos de mercado devolveu un erro (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Resposta inesperada do servizo de datos de mercado.';

  @override
  String errNoQuote(String symbol) {
    return 'Non se atoparon datos de prezo para $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Non se atopou o perfil da empresa para $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'O modo demo só admite $symbols. Engade unha FINNHUB_API_KEY para obter datos en tempo real.';
  }

  @override
  String errUnknown(String detail) {
    return 'Algo saíu mal: $detail';
  }

  @override
  String get newSearch => 'Nova busca';

  @override
  String get recentSearches => 'Recentes';

  @override
  String get noRecentSearches => 'Aínda non hai buscas recentes.';

  @override
  String get clearRecent => 'Borrar recentes';

  @override
  String get greeting => 'Que acción miramos?';

  @override
  String get searchHint => 'Ticker ou nome da empresa';

  @override
  String get attachImage => 'Anexar unha imaxe';

  @override
  String get searchResultsTitle => 'Resultados da busca';

  @override
  String errNoResults(String query) {
    return 'Non se atoparon accións para «$query».';
  }

  @override
  String get quickBarHint => 'Escribe un ticker ou o nome dunha empresa…';

  @override
  String get openFullWindow => 'Abrir xanela';

  @override
  String hotkeyHint(String shortcut) {
    return 'Preme $shortcut desde calquera lugar para abrir WhatStock.';
  }

  @override
  String get trayOpen => 'Abrir WhatStock';

  @override
  String get trayQuickSearch => 'Busca rápida';

  @override
  String get trayQuit => 'Saír';

  @override
  String get appearance => 'Aparencia';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeDark => 'Escuro';

  @override
  String get themeLight => 'Claro';

  @override
  String get back => 'Atrás';

  @override
  String get aiSectionTitle => 'Análise con IA';

  @override
  String get aiIntro =>
      'Unha visión xeral detallada escrita por IA: resumo das novas recentes, o negocio, puntos fortes, riscos e factores ocultos, valoración, unha perspectiva do prezo con escenarios desde ángulos psicolóxicos, sociolóxicos, técnicos e macroeconómicos, e que vixiar.';

  @override
  String get aiGenerate => 'Xerar análise';

  @override
  String get aiRegenerate => 'Xerar de novo';

  @override
  String get aiGenerating =>
      'Preparando a análise… pode levar un ou dous minutos.';

  @override
  String get aiSources => 'Fontes';

  @override
  String aiGeneratedAt(String time) {
    return 'Xerada $time';
  }

  @override
  String get aiDisclaimer =>
      'Análise xerada por IA a partir de datos públicos e novas recentes. Pode conter erros ou estar desactualizada, e non constitúe asesoramento de investimento.';

  @override
  String get errAiNotConfigured =>
      'A análise con IA non está configurada (falta ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Non se puido conectar co servizo de IA. Comproba a túa conexión a internet.';

  @override
  String errAiHttp(String status) {
    return 'O servizo de IA devolveu un erro (HTTP $status).';
  }

  @override
  String get errAiRefused => 'O servizo de IA rexeitou analizar esta acción.';

  @override
  String get errAiBadResponse => 'Resposta inesperada do servizo de IA.';

  @override
  String get sectionChart => 'Gráfico de prezos';

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
      'O historial de prezos non está dispoñible na fonte de datos actual.';

  @override
  String get sectionStatements => 'Estados financeiros (anuais)';

  @override
  String get labelFiscalYear => 'Exercicio fiscal';

  @override
  String get labelRevenue => 'Ingresos';

  @override
  String get labelNetIncome => 'Beneficio neto';

  @override
  String get labelTotalAssets => 'Activos totais';

  @override
  String get labelTotalLiabilities => 'Pasivos totais';

  @override
  String get labelEquity => 'Patrimonio neto';

  @override
  String get labelOperatingCashFlow => 'Fluxo de caixa operativo';

  @override
  String get statementsUnavailable =>
      'Non hai estados financeiros publicados dispoñibles para esta acción.';

  @override
  String get launchAtLogin => 'Abrir ao iniciar sesión';

  @override
  String get hotkeyLabel => 'Atallo global';

  @override
  String get hotkeyRecordHint =>
      'Fai clic aquí e preme a nova combinación de teclas';

  @override
  String get hotkeyReset => 'Restablecer o predeterminado';

  @override
  String get pasteImage => 'Pegar imaxe do portapapeis';

  @override
  String get errClipboardNoImage => 'Non hai ningunha imaxe no portapapeis.';

  @override
  String get favorites => 'Favoritos';

  @override
  String get addToFavorites => 'Engadir a favoritos';

  @override
  String get removeFromFavorites => 'Quitar de favoritos';

  @override
  String get noFavorites =>
      'Aínda non hai favoritos. Toca a estrela dunha acción para engadila.';

  @override
  String get displayCurrency => 'Moeda de visualización';

  @override
  String get displayCurrencyNone => 'Só a moeda propia da acción';

  @override
  String labelConverted(String currency) {
    return '≈ en $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Tipo de cambio: 1 $from = $rate $to (BCE, $date)';
  }

  @override
  String get updates => 'Actualizacións';

  @override
  String currentVersion(String version) {
    return 'Versión $version';
  }

  @override
  String get autoUpdate => 'Instalar actualizacións automaticamente';

  @override
  String get checkForUpdates => 'Buscar actualizacións';

  @override
  String get updateChecking => 'Buscando actualizacións…';

  @override
  String get updateUpToDate => 'Tes a versión máis recente.';

  @override
  String updateAvailable(String version) {
    return 'Está dispoñible a versión $version.';
  }

  @override
  String get updateDownloading =>
      'Descargando a actualización en segundo plano…';

  @override
  String get updateDownloaded =>
      'A actualización está lista. Reinicia para instalala.';

  @override
  String get updateNow => 'Actualizar';

  @override
  String get restartNow => 'Reiniciar';

  @override
  String get updatesViaStore =>
      'As actualizacións chegan automaticamente a través da tenda de aplicacións.';

  @override
  String get updateCheckFailed => 'Non se puideron buscar actualizacións.';

  @override
  String get subscription => 'Subscrición';

  @override
  String get planTrial => 'Proba';

  @override
  String get planNormal => 'Normal';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Sen plan activo';

  @override
  String planAnalysesPerMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count análises ao mes',
      one: '$count análise ao mes',
    );
    return '$_temp0';
  }

  @override
  String planTrialDescription(int days, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Proba gratuíta de $days días con $count análises',
      one: 'Proba gratuíta de $days días con $count análise',
    );
    return '$_temp0';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Quedan $days días de proba',
      one: 'Queda $days día de proba',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'A túa proba gratuíta rematou. Escolle un plan para seguir analizando.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Quédanche $remaining de $total análises neste período';
  }

  @override
  String extraCredits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count análises extra',
      one: '$count análise extra',
    );
    return '$_temp0';
  }

  @override
  String renewsOn(String date) {
    return 'Renóvase o $date';
  }

  @override
  String get choosePlan => 'Escolle un plan';

  @override
  String get currentPlan => 'Plan actual';

  @override
  String get subscribe => 'Subscribirse';

  @override
  String get perMonth => '/ mes';

  @override
  String get extraPacksTitle => 'Necesitas máis? Compra análises extra';

  @override
  String get extraPacksHint =>
      'As análises extra nunca caducan e úsanse despois da túa cota mensual.';

  @override
  String get buy => 'Comprar';

  @override
  String get restorePurchases => 'Restaurar compras';

  @override
  String get manageSubscription => 'Xestionar subscrición';

  @override
  String get purchaseSuccess => 'Grazas! A túa compra está activa.';

  @override
  String get purchasePending => 'Compra pendente…';

  @override
  String get purchaseFailed => 'Non se puido completar a compra.';

  @override
  String get purchaseCanceled => 'Compra cancelada.';

  @override
  String get billingUnavailable =>
      'As compras aínda non están dispoñibles nesta plataforma. Subscríbete desde o teu teléfono ou Mac; o teu plan funcionará en todos os dispositivos.';

  @override
  String get errQuotaExceeded =>
      'Non che quedan análises neste período. Mellora o teu plan ou compra análises extra.';

  @override
  String get errTrialExpired =>
      'A túa proba gratuíta rematou. Escolle un plan para continuar.';

  @override
  String get errNoPlan => 'Necesítase un plan activo para a análise con IA.';

  @override
  String get viewPlans => 'Ver plans';

  @override
  String get usageTitle => 'Uso';

  @override
  String get demoPurchaseNote =>
      'Facturación de demostración: as compras simúlanse nesta plataforma.';

  @override
  String get mostPopular => 'Máis popular';

  @override
  String get bestValue => 'Mellor relación calidade-prezo';

  @override
  String get planFeaturesCommon =>
      'O recoñecemento de fotos, os datos en tempo real, os gráficos, os favoritos e os 120 idiomas están incluídos en todos os plans. A cota cobre as análises con IA.';

  @override
  String get searchLanguages => 'Buscar idiomas…';

  @override
  String get noLanguageMatch => 'Ningún idioma coincide.';

  @override
  String get aiSettings => 'Análise con IA';

  @override
  String get aiLength => 'Extensión';

  @override
  String get aiDepthBrief => 'Breve';

  @override
  String get aiDepthStandard => 'Estándar';

  @override
  String get aiDepthDeep => 'A fondo';

  @override
  String get aiDepthBriefDesc => 'O esencial, rápido.';

  @override
  String get aiDepthStandardDesc => 'Informe completo con todas as seccións.';

  @override
  String get aiDepthDeepDesc =>
      'Máis buscas web, comparación con competidores e máis detalle.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Unhas $min–$max palabras';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'usa $count análises',
      one: 'usa $count análise',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Nivel do lector';

  @override
  String get aiReaderBeginner => 'Principiante';

  @override
  String get aiReaderExperienced => 'Experimentado';

  @override
  String get aiReaderBeginnerDesc =>
      'Linguaxe sinxela; explícase cada termo técnico.';

  @override
  String get aiReaderExperiencedDesc =>
      'Texto máis denso coa terminoloxía financeira habitual.';

  @override
  String get aiCounterArgument => 'Contraargumento máis sólido';

  @override
  String get aiCounterArgumentDesc =>
      'O resumo sempre remata co mellor argumento en contra da súa propia conclusión.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ata $count buscas web por análise co teu plan',
      one: 'Ata $count busca web por análise co teu plan',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Extensión estándar segundo o plan: Normal $normal, Pro $pro, Max $max, Ultra $ultra. «Breve» usa 2 menos e «A fondo», 2 máis.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ata $count buscas web',
      one: 'ata $count busca web',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count buscas web por análise',
      one: '$count busca web por análise',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Esta extensión require $needed análises, pero só che quedan $left. Escolle unha extensión máis curta en Configuración ou consegue máis análises.';
  }

  @override
  String get outlookMarketMood => 'Sentimento do mercado';

  @override
  String get moodVeryPessimistic => 'Moi pesimista';

  @override
  String get moodPessimistic => 'Pesimista';

  @override
  String get moodNeutral => 'Neutral';

  @override
  String get moodOptimistic => 'Optimista';

  @override
  String get moodVeryOptimistic => 'Moi optimista';

  @override
  String get scenarioBull => 'Escenario alcista';

  @override
  String get scenarioBase => 'Escenario base';

  @override
  String get scenarioBear => 'Escenario baixista';

  @override
  String outlookCurrentPrice(String price) {
    return 'Prezo actual: $price';
  }

  @override
  String get outlookKeyLevels => 'Niveis clave';

  @override
  String get keyLevelSupport => 'Soporte';

  @override
  String get keyLevelResistance => 'Resistencia';

  @override
  String get keyLevelAnchor => 'Áncora';

  @override
  String get upcomingEvents => 'Próximos eventos';

  @override
  String get outlookChartNote =>
      'Rangos orientativos; as probabilidades son estimacións aproximadas, non predicións.';

  @override
  String get accountTitle => 'Conta';

  @override
  String get signIn => 'Iniciar sesión';

  @override
  String get signOut => 'Pechar sesión';

  @override
  String get notSignedIn => 'Sesión non iniciada';

  @override
  String get accountBenefit =>
      'Inicia sesión para que a túa subscrición funcione en todos os teus dispositivos.';

  @override
  String get accountSyncedNote =>
      'A túa subscrición e as análises que che quedan son as mesmas en todos os dispositivos.';

  @override
  String get signInTitle => 'Iniciar sesión en WhatStock';

  @override
  String get emailLabel => 'Enderezo de correo electrónico';

  @override
  String get continueWithEmail => 'Continuar co correo';

  @override
  String codeSentTo(String email) {
    return 'Enviamos un código de 6 díxitos a $email. É válido durante 10 minutos.';
  }

  @override
  String get codeLabel => 'Código de acceso';

  @override
  String get resendCode => 'Enviar outro código';

  @override
  String get useDifferentEmail => 'Usar outro correo';

  @override
  String get errInvalidCode => 'O código é incorrecto ou caducou.';

  @override
  String get errInvalidEmail =>
      'Introduce un enderezo de correo electrónico válido.';

  @override
  String get errSignInFailed =>
      'Non se puido iniciar sesión. Comproba a conexión e téntao de novo.';

  @override
  String get checkoutWaiting =>
      'Completa o pagamento no navegador. A aplicación actualizarase automaticamente cando remate.';

  @override
  String get paymentViaStripe =>
      'Pagamento seguro no navegador a través de Stripe. Cancela cando queiras.';

  @override
  String get paymentViaStore =>
      'Facturado a través da túa conta de App Store ou Google Play. Cancela cando queiras na configuración da tenda.';

  @override
  String get keySpace => 'Espazo';

  @override
  String get doubleOptionTitle => 'Premer Opción dúas veces';

  @override
  String get doubleOptionSubtitle =>
      'Premer rapidamente dúas veces a tecla Opción tamén abre WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Para que tamén funcione noutras aplicacións, permite WhatStock en Configuración do Sistema → Privacidade e seguranza → Monitorización da entrada e despois volve abrir a aplicación.';

  @override
  String get openSystemSettings => 'Abrir Configuración do Sistema';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Preme $shortcut ou dúas veces a tecla Opción desde calquera lugar para abrir WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Máis probable';

  @override
  String get longTermToday => 'Hoxe';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years anos',
      one: '$years ano',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range ao ano';
  }

  @override
  String longTermLikely(String price) {
    return 'o máis probable: $price';
  }

  @override
  String get confidenceLow => 'Confianza baixa';

  @override
  String get confidenceMedium => 'Confianza media';

  @override
  String get confidenceHigh => 'Confianza alta';

  @override
  String get longTermNote =>
      'Os rangos a longo prazo baséanse nos supostos indicados e amplíanse co tempo. Prezos sen dividendos. Estimacións aproximadas, non predicións.';

  @override
  String get portfolio => 'Carteira';

  @override
  String get portfolioEmpty =>
      'Aínda está baleira. Abre unha acción e toca «Engadir á carteira» para seguir o que tes.';

  @override
  String get portfolioLocalNote =>
      'Gárdase só neste dispositivo. Os totais convértense aos tipos de referencia do BCE; os prezos poden ir con atraso.';

  @override
  String get addToPortfolio => 'Engadir á carteira';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Engadir $symbol';
  }

  @override
  String get portfolioQuantity => 'Número de accións';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Prezo por acción ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Data de compra';

  @override
  String get portfolioAdd => 'Engadir';

  @override
  String get portfolioInvalidNumber => 'Introduce un número maior que cero.';

  @override
  String portfolioAdded(String symbol) {
    return 'Engadiuse $symbol á carteira.';
  }

  @override
  String get portfolioTotalValue => 'Valor total';

  @override
  String get portfolioToday => 'Hoxe';

  @override
  String get portfolioGainLoss => 'Ganancia/perda';

  @override
  String homeDividendsThisYear(String amount) {
    return 'Dividendos este ano: $amount';
  }

  @override
  String get portfolioInvested => 'Investido';

  @override
  String get portfolioAllocation => 'Distribución';

  @override
  String get portfolioPositions => 'Posicións';

  @override
  String portfolioAvgCost(String price) {
    return 'custo medio $price';
  }

  @override
  String get portfolioYourPosition => 'A túa posición';

  @override
  String get portfolioPurchases => 'Compras';

  @override
  String get portfolioRemove => 'Quitar';

  @override
  String get portfolioExcluded =>
      'As posicións sen prezo ou sen tipo de cambio quedan fóra dos totais.';

  @override
  String get priceAlerts => 'Alertas de prezo';

  @override
  String get setPriceAlert => 'Crear alerta de prezo';

  @override
  String alertDialogTitle(String symbol) {
    return 'Alerta de prezo · $symbol';
  }

  @override
  String get alertKindAbove => 'Sobe por riba de';

  @override
  String get alertKindBelow => 'Baixa por debaixo de';

  @override
  String get alertKindMove => 'Móvese moito nun día';

  @override
  String alertTargetPrice(String currency) {
    return 'Prezo ($currency)';
  }

  @override
  String get alertMovePercent => 'Movemento diario (%)';

  @override
  String get alertAlreadyMet => 'O prezo xa superou este nivel.';

  @override
  String get alertSave => 'Crear alerta';

  @override
  String alertCreated(String symbol) {
    return 'Alerta creada para $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Aínda non hai alertas de prezo. Abre unha acción e toca a campá para crear unha.';

  @override
  String get alertsNote =>
      'As alertas compróbanse cada 5 minutos mentres WhatStock está en execución. No ordenador segue funcionando na barra de menús ou na bandexa; no móbil, polo de agora avisa só cando a aplicación está aberta.';

  @override
  String alertDescAbove(String price) {
    return 'Por riba de $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Por debaixo de $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Movemento diario ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Activada o $date a $price';
  }

  @override
  String get alertRearm => 'Reactivar';

  @override
  String get alertDelete => 'Eliminar';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol subiu por riba de $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol baixou por debaixo de $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol moveuse un $percent hoxe';
  }

  @override
  String alertHitBody(String price) {
    return 'Prezo actual: $price';
  }

  @override
  String get alertOpen => 'Abrir';

  @override
  String get keepInTrayTitle => 'Seguir funcionando ao pechar a xanela';

  @override
  String get keepInTraySubtitle =>
      'WhatStock queda na barra de menús ou na bandexa, así o atallo e as alertas de prezo seguen funcionando.';

  @override
  String get termsOfUse => 'Condicións de uso';

  @override
  String get privacyPolicy => 'Política de privacidade';

  @override
  String get subscriptionLegal =>
      'A subscrición renóvase automaticamente cada mes ata que a canceles. Ao subscribirte aceptas as Condicións de uso e a Política de privacidade.';

  @override
  String get deleteAccount => 'Eliminar conta';

  @override
  String get deleteAccountTitle => 'Queres eliminar a túa conta?';

  @override
  String get deleteAccountBody =>
      'A túa conta e todo o que gardamos no noso servidor (correo, cota, uso) eliminaranse para sempre, e as análises non usadas pérdense. Unha subscrición pagada no navegador cancélase ao momento; unha de App Store ou Google Play tes que cancelala na configuración da tenda.';

  @override
  String get deleteLocalData =>
      'Eliminar tamén os datos deste dispositivo (carteira, alertas, favoritos, historial, análises gardadas)';

  @override
  String get deleteAccountConfirm => 'Eliminar para sempre';

  @override
  String get accountDeleted => 'A túa conta eliminouse.';

  @override
  String get errDeleteAccount =>
      'Non se puido eliminar a conta. Comproba a conexión e téntao de novo.';

  @override
  String get aiTrialBriefNote =>
      'As análises de proba son breves e fanse cun modelo de IA máis rápido. Cun plan obtés a nosa IA máis capaz, máis buscas web e as extensións Estándar e A fondo.';

  @override
  String get billingMonthly => 'Mensual';

  @override
  String get billingYearly => 'Anual';

  @override
  String get yearlyDiscount => '2 meses de balde';

  @override
  String get perYear => '/ ano';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price ao mes';
  }

  @override
  String get subscriptionLegalYearly =>
      'A subscrición anual renóvase automaticamente cada ano ata que a canceles. Ao subscribirte aceptas as Condicións de uso e a Política de privacidade.';

  @override
  String get myAnalyses => 'As miñas análises';

  @override
  String get navAlerts => 'Alertas';

  @override
  String get inviteTitle => 'Versión preliminar pechada';

  @override
  String get inviteBody =>
      'Polo de agora, WhatStock só está dispoñible por invitación. Introduce o código de invitación que recibiches.';

  @override
  String get inviteCodeLabel => 'Código de invitación';

  @override
  String get inviteContinue => 'Continuar';

  @override
  String get inviteInvalid => 'Este código de invitación non é válido.';

  @override
  String get inviteExpired =>
      'Esta invitación caducou. Pídelle un código novo á persoa que te convidou.';

  @override
  String get inviteDeviceLimit =>
      'Este código de invitación xa se está a usar no número máximo de dispositivos.';

  @override
  String get previewConfidential => 'Versión preliminar confidencial';

  @override
  String get errPreviewDailyLimit =>
      'Alcanzouse o límite de análises de hoxe desta versión preliminar. Téntao de novo mañá.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'hai $count horas',
      one: 'hai $count hora',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'hai $count días',
      one: 'hai $count día',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Actualizar esta análise?';

  @override
  String staleBody(String age) {
    return 'Fíxose $age. Os prezos, as novas e os resultados poden ter cambiado desde entón.';
  }

  @override
  String get staleKeep => 'Ver a anterior';

  @override
  String get staleRefresh => 'Facer unha nova';

  @override
  String seeAll(int count) {
    return 'Ver todas ($count)';
  }

  @override
  String get searchAnalyses => 'Busca nas túas análises';

  @override
  String get deleteAnalysis => 'Eliminar';

  @override
  String analysisDeleted(String symbol) {
    return 'Eliminouse a análise de $symbol';
  }

  @override
  String get keyLevelAlertHint =>
      'Toca un nivel para recibir unha alerta cando o prezo o alcance.';

  @override
  String get shareAnalysisTitle => 'Compartir análise';

  @override
  String get shareAsImage => 'Compartir como imaxe';

  @override
  String get shareAsText => 'Compartir como texto';

  @override
  String get shareCardFooter => 'Feito con WhatStock';

  @override
  String get shareCardDisclaimer =>
      'Análise con IA · non é asesoramento de investimento';

  @override
  String get referralTitle => 'Convida os teus amigos';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count análises extra',
      one: '$count análise extra',
    );
    return 'Comparte o teu código. O teu amigo recibe de inmediato $_temp0, e ti o mesmo despois da súa primeira análise.';
  }

  @override
  String get referralYourCode => 'O teu código';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Convidados: $invited · Recompensados: $rewarded';
  }

  @override
  String get referralHaveCode => 'Tes un código dun amigo?';

  @override
  String get referralRedeem => 'Canxear';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Engadíronse $count análises extra. Dámosche a benvida!',
      one: 'Engadiuse $count análise extra. Dámosche a benvida!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Este código non existe. Compróbao e téntao de novo.';

  @override
  String get referralErrOwn => 'Non podes canxear o teu propio código.';

  @override
  String get referralErrAlready => 'Xa canxeaches o código dun amigo.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count análises extra',
      one: '$count análise extra',
    );
    return 'Analizo accións con WhatStock: fotografas unha acción e a IA explícacha. Co meu código $code recibes $_temp0.';
  }

  @override
  String get referralCopied => 'Código copiado';

  @override
  String get onboardTitle1 => 'Fotografa unha acción';

  @override
  String get onboardBody1 =>
      'Abonda coa pantalla dunha app de bolsa, un xornal ou o logotipo dunha empresa: WhatStock recoñece a acción e móstrache o prezo, o gráfico e as cifras clave.';

  @override
  String get onboardTitle2 => 'Enténdea en minutos';

  @override
  String get onboardBody2 =>
      'A análise con IA explícache que move a acción, os riscos, a valoración e tres escenarios sobre cara a onde podería ir o prezo, con fontes e no teu idioma.';

  @override
  String get onboardTitle3 => 'Mantente sempre ao día';

  @override
  String get onboardBody3 =>
      'Os favoritos, a túa carteira e as alertas de prezo mantéñente ao tanto. As túas análises quedan no teu dispositivo, listas para volver abrilas.';

  @override
  String get onboardNext => 'Seguinte';

  @override
  String get onboardStart => 'Comezar';

  @override
  String get onboardSkip => 'Omitir';

  @override
  String changesTitle(String date) {
    return 'Desde a análise anterior ($date)';
  }

  @override
  String get changesPrice => 'Prezo';

  @override
  String get changesNoMajor =>
      'As perspectivas non cambiaron de xeito significativo.';

  @override
  String get changesPreviousSummary => 'Resumo anterior';

  @override
  String get telemetryTitle => 'Axuda a mellorar WhatStock';

  @override
  String get telemetryBody =>
      'Comparte estatísticas de uso anónimas e informes de fallos: que funcións se usan e que saíu mal. Nunca as túas accións, análises nin datos persoais. Podes cambialo en calquera momento en Configuración.';

  @override
  String get telemetryAllow => 'Permitir';

  @override
  String get telemetryDecline => 'Non, grazas';

  @override
  String get telemetrySetting => 'Estatísticas anónimas e informes de fallos';

  @override
  String get telemetrySettingHint =>
      'Con que frecuencia se usan as funcións e informes de erros, sen datos persoais nin o contido das túas buscas e análises.';

  @override
  String get askButton => 'Pregunta sobre esta análise';

  @override
  String askTitle(String symbol) {
    return 'Preguntas sobre $symbol';
  }

  @override
  String get askIntro =>
      'Pregunta o que queiras sobre a análise: que significa un risco, que cambiaría as perspectivas, como se calculou unha cifra. As respostas baséanse nesta análise e non constitúen asesoramento de investimento.';

  @override
  String get askHint => 'Escribe unha pregunta…';

  @override
  String get askSend => 'Enviar';

  @override
  String get askThinking => 'Pensando…';

  @override
  String get askSuggest1 => 'Cal é o maior risco?';

  @override
  String get askSuggest2 => 'Que cambiaría as perspectivas?';

  @override
  String get askSuggest3 => 'Explícao con palabras sinxelas';

  @override
  String get askMaxReached =>
      'Esa era a última pregunta para esta análise. Crea unha análise nova para facer máis preguntas.';

  @override
  String get errAskLimit =>
      'Alcanzaches o límite de preguntas de hoxe. Téntao de novo mañá.';

  @override
  String get eventTomorrow => 'Mañá';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'dentro de $days días',
      one: 'dentro de $days día',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Resultados trimestrais';

  @override
  String get eventBeforeOpen => 'antes da apertura';

  @override
  String get eventAfterClose => 'tras o peche';

  @override
  String eventEpsEstimate(String value) {
    return 'BPA estimado: $value';
  }

  @override
  String get eventFromAnalysis => 'Da túa análise';

  @override
  String get eventDividend => 'Dividendo previsto';

  @override
  String get eventDividendEstimate =>
      'Estimado a partir dos teus pagamentos rexistrados';

  @override
  String get eventsHint =>
      'Datas de resultados dos teus favoritos e das accións da túa carteira para os próximos 90 días, os eventos con data que detectaron as túas análises, e os dividendos previstos a partir dos pagamentos que rexistraches.';

  @override
  String get eventsEmpty =>
      'Non hai eventos con data nos próximos 90 días. Engade favoritos ou accións á carteira para ver aquí as súas datas de resultados; os dividendos rexistrados mostran o seu próximo pagamento previsto.';

  @override
  String get compareTitle => 'Comparar';

  @override
  String get compareAdd => 'Engadir unha acción';

  @override
  String get compareRemove => 'Quitar';

  @override
  String get compareTickerHint => 'Ticker, p. ex. MSFT';

  @override
  String get compareHint =>
      'Cifras clave lado a lado; o mellor valor de cada fila aparece resaltado. Os importes están na moeda de cada acción.';

  @override
  String get compareNoAnalysis => 'Aínda non hai análise';

  @override
  String get portfolioDividends => 'Dividendos anuais';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent de rendibilidade';
  }

  @override
  String get portfolioDividendNote =>
      'Os dividendos anuais previstos baséanse nos dividendos pagados nos últimos 12 meses; os pagamentos futuros non están garantidos.';

  @override
  String positionDividend(String amount) {
    return 'Dividendo: $amount ao ano';
  }

  @override
  String get chartAvgCost => 'O teu medio';

  @override
  String get chartAlertLevel => 'Alerta';

  @override
  String get marketsToday => 'Mercados hoxe';

  @override
  String get notesTitle => 'As miñas notas';

  @override
  String get notesHint =>
      'Por que a mercaches, que estás a vixiar, que che faría vendela?';

  @override
  String get notesInfo =>
      'Gárdase só neste dispositivo. A análise con IA ten en conta as túas notas.';

  @override
  String notesSaved(String date) {
    return 'Gardado $date';
  }

  @override
  String get peersTitle => 'Empresas similares';

  @override
  String get portfolioExport => 'Exportar como CSV';

  @override
  String get portfolioImport => 'Importar desde CSV';

  @override
  String get portfolioImportHint =>
      'Pega unha compra por liña: símbolo, cantidade, prezo, moeda, data (AAAA-MM-DD). As columnas poden separarse con comas, puntos e comas ou tabulacións; a fila de cabeceira é opcional.';

  @override
  String get portfolioImportButton => 'Importar';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Engadíronse $count compras',
      one: 'Engadiuse $count compra',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Omitíronse $count liñas',
      one: 'Omitiuse $count liña',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'A carteira, os favoritos, as alertas de prezo e as notas sincronízanse en todos os teus dispositivos.';

  @override
  String syncLast(String time) {
    return 'Última sincronización: $time';
  }

  @override
  String get syncNow => 'Sincronizar agora';

  @override
  String get syncFailed =>
      'Non se puido sincronizar. Volverase tentar automaticamente.';

  @override
  String get alertEmailTitle => 'Correo cando salte unha alerta';

  @override
  String get alertEmailOn =>
      'Revisamos as túas alertas cada poucos minutos e envíamosche un correo, mesmo coa aplicación pechada.';

  @override
  String get alertEmailSignIn =>
      'Inicia sesión co teu correo en Configuración para recibir as alertas por correo, mesmo coa aplicación pechada.';

  @override
  String get portfolioHistory => 'Evolución do valor';

  @override
  String get portfolioReviewTitle => 'Revisión da carteira con IA';

  @override
  String get portfolioReviewIntro =>
      'A IA revisa toda a túa carteira: concentración, exposición a sectores e divisas, riscos que comparten as túas accións e dividendos. Usa 1 análise.';

  @override
  String get portfolioReviewButton => 'Revisar a miña carteira';

  @override
  String get portfolioReviewAgain => 'Revisar de novo';

  @override
  String get portfolioReviewWorking => 'Revisando a túa carteira…';

  @override
  String get digestTitle => 'Resumo semanal por correo electrónico';

  @override
  String get digestHint =>
      'Cada luns: como se moveron os teus favoritos e a túa carteira a semana pasada, e as súas próximas datas de resultados.';

  @override
  String get benchmarkTitle => 'Comparado co S&P 500';

  @override
  String get benchmarkTitleIndex => 'Comparado cun índice';

  @override
  String get benchmarkHintIndex =>
      'Como se cada compra se investise o mesmo día nun fondo que replica o índice escollido. Sen dividendos; as rendibilidades pasadas non predín as futuras.';

  @override
  String get benchmarkYours => 'As túas compras';

  @override
  String benchmarkAhead(String points) {
    return '$points puntos porcentuais mellor ca o índice';
  }

  @override
  String benchmarkBehind(String points) {
    return '$points puntos porcentuais por debaixo do índice';
  }

  @override
  String get portfolioSell => 'Vender';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Vender $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Prezo de venda por acción ($currency)';
  }

  @override
  String get portfolioSellDate => 'Data de venda';

  @override
  String get portfolioSellAll => 'Todo';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Tes $quantity';
  }

  @override
  String get portfolioSold => 'Vendido';

  @override
  String get portfolioRealized => 'Realizado';

  @override
  String get portfolioClosed => 'Posicións pechadas';

  @override
  String get portfolioClosedNote => 'Todas as accións vendidas';

  @override
  String get portfolioTransactions => 'Transaccións';

  @override
  String get portfolioRealizedByYear => 'Ganancias realizadas por ano';

  @override
  String get portfolioRealizedHint =>
      'As vendas asígnanse primeiro ás túas compras máis antigas (FIFO) e convértense ao tipo de cambio de hoxe. Para a declaración de impostos, usa o extracto do teu bróker.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Desde esta análise publicáronse novos resultados trimestrais ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Novos resultados';

  @override
  String get portfolioImportBrokers =>
      'Tamén se recoñecen as exportacións de Revolut, Trading 212 e Interactive Brokers, coas vendas; os dividendos e os depósitos omítense.';

  @override
  String get portfolioImportFile => 'Escoller un ficheiro';

  @override
  String offlineBanner(String time) {
    return 'Sen conexión – móstranse os últimos datos gardados ($time).';
  }

  @override
  String get glossMarketCap =>
      'O que vale toda a empresa na bolsa: prezo da acción × número de accións.';

  @override
  String get glossSharesOutstanding =>
      'Cantas accións emitiu a empresa. Se aumenta, cada acción posúe unha porción máis pequena; as recompras redúceno.';

  @override
  String get glossPeTrailing =>
      'Prezo ÷ beneficio por acción dos últimos 12 meses: cantos anos do beneficio actual pagas. Máis baixo é máis barato, pero as empresas que medran rápido adoitan ter un P/E alto.';

  @override
  String get glossPeForward =>
      'Coma o P/E, pero co beneficio que agardan os analistas para os próximos 12 meses. Se está por debaixo do P/E histórico, agárdase que o beneficio medre.';

  @override
  String get glossPb =>
      'Prezo ÷ valor contable (activos menos débedas) por acción. Arredor de 1 significa que o mercado valora a empresa polo que posúe no papel.';

  @override
  String get glossPs =>
      'Valor de mercado ÷ ingresos anuais. Útil para empresas con pouco ou aínda ningún beneficio; compárao dentro do mesmo sector.';

  @override
  String get glossEvToFcf =>
      'Valor da empresa coa débeda incluída (EV) ÷ a caixa que xera nun ano despois de investimentos. Máis baixo significa que obtés máis caixa polo prezo.';

  @override
  String get glossPeg =>
      'P/E ÷ crecemento anual agardado do beneficio (%). Arredor de 1 adoita considerarse xusto; pon o P/E en relación co crecemento.';

  @override
  String get glossEps =>
      'Beneficio por acción dos últimos 12 meses. Un EPS que sobe ano tras ano é un dos sinais máis fortes dunha empresa sa.';

  @override
  String get glossBeta =>
      'Canto tende a moverse a acción co mercado: 1 = coma o mercado, 1,5 = oscilacións un 50 % maiores, menos de 1 = máis tranquila.';

  @override
  String get glossRevenueTtm =>
      'Vendas totais dos últimos 12 meses, antes de calquera custo.';

  @override
  String get glossNetIncomeTtm =>
      'Beneficio que queda despois de todos os custos, xuros e impostos dos últimos 12 meses.';

  @override
  String get glossGrossMargin =>
      'A parte dos ingresos que queda despois do custo directo dos produtos. Unha marxe alta adoita indicar poder para fixar prezos.';

  @override
  String get glossOperatingMargin =>
      'A parte dos ingresos que queda despois de facer funcionar o negocio (soldos, aluguer, márketing), antes de xuros e impostos.';

  @override
  String get glossNetMargin =>
      'A parte dos ingresos que remata como beneficio final. 20 % significa que 20 de cada 100 en vendas son beneficio.';

  @override
  String get glossRoe =>
      'Rendibilidade do capital (ROE): beneficio anual ÷ o capital dos propietarios. Mostra o ben que a dirección usa o diñeiro dos accionistas; por riba dun 15 % aprox. é forte.';

  @override
  String get glossRoa =>
      'Rendibilidade dos activos (ROA): beneficio anual ÷ todo o que posúe a empresa. Compáraa dentro do mesmo sector.';

  @override
  String get glossDebtToEquity =>
      'Débedas ÷ o capital dos propietarios. Máis alto significa máis diñeiro prestado: máis risco cando soben os tipos ou o negocio se frea.';

  @override
  String get glossCurrentRatio =>
      'Activos a curto prazo ÷ pagamentos que vencen nun ano. Por riba de 1 significa que a empresa pode cubrir os seus pagamentos próximos.';

  @override
  String get glossRevenueGrowth =>
      'Canto creceron os ingresos respecto a un ano antes.';

  @override
  String get glossEpsGrowth =>
      'Canto creceu o beneficio por acción respecto a un ano antes.';

  @override
  String get glossDividendYield =>
      'Dividendo anual ÷ prezo da acción: os ingresos en efectivo que recibirías ao ano, como porcentaxe do que pagas.';

  @override
  String get glossDividendPerShare =>
      'O dividendo pagado por unha acción durante o último ano.';

  @override
  String get glossPayoutRatio =>
      'A parte do beneficio que se reparte como dividendos. Por riba do 100 % a empresa paga máis do que gaña, algo que rara vez dura.';

  @override
  String get portfolioBeta => 'Beta da carteira';

  @override
  String get glossPortfolioBeta =>
      'A beta das túas accións, ponderada polo seu valor: aproximadamente canto por cento se moven as túas accións cando o mercado se move un 1 %. Por riba de 1 oscilan máis ca o mercado; por baixo de 1, menos. Non inclúe o efectivo.';

  @override
  String get portfolioTop3 => '3 posicións principais';

  @override
  String get glossPortfolioTop3 =>
      'Que parte do valor das túas accións está nas túas tres maiores posicións. Canto máis alta é, máis pode prexudicar a toda a carteira unha mala nova dunha soa empresa.';

  @override
  String get glossDividendGrowth5y =>
      'Canto medrou de media cada ano o dividendo por acción nos últimos cinco anos. Un crecemento constante adoita indicar que a empresa confía no seu fluxo de caixa; un recorte a miúdo é un sinal de alerta.';

  @override
  String get glossYieldOnCost =>
      'Os dividendos recibidos nos últimos 12 meses divididos polo que pagaches polas accións que aínda tes. A diferenza da rendibilidade por dividendo, mídese sobre o teu propio prezo de compra, non sobre o prezo de hoxe.';

  @override
  String get glossTitle => 'Que significa?';

  @override
  String get watchNewsTitle => 'Novas das túas accións';

  @override
  String get undo => 'Desfacer';

  @override
  String get watchSort => 'Ordenar';

  @override
  String get watchSortOwn => 'A miña orde';

  @override
  String get watchSortGainers => 'Maiores subidas primeiro';

  @override
  String get watchSortLosers => 'Maiores baixadas primeiro';

  @override
  String get watchSortName => 'Por ticker (A–Z)';

  @override
  String get watchHint =>
      'Arrastra a asa para reordenar e esvara cara á esquerda para quitar. A liña mostra os últimos 30 días.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: a túa análise está lista.';
  }

  @override
  String alertFromCost(String price) {
    return 'Respecto ao teu prezo medio de compra ($price):';
  }

  @override
  String get briefTitle => 'Hoxe coas túas accións';

  @override
  String get briefButton => 'Resumir o día';

  @override
  String get briefHint =>
      'Un breve resumo con IA de como se moveron hoxe a túa carteira e os teus favoritos e que din deles as últimas novas. Non consome ningunha análise.';

  @override
  String get briefRefresh => 'Actualizar';

  @override
  String get sectionEarnings => 'Resultados';

  @override
  String earningsNext(String date) {
    return 'Próximo informe: $date';
  }

  @override
  String get earningsExpected => 'BPA esperado';

  @override
  String get earningsReported => 'BPA publicado';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Igual ou por riba do BPA esperado en $beats dos últimos $total trimestres',
      one: 'Igual ou por riba do BPA esperado en $beats de 1 trimestre',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol presenta resultados trimestrais mañá';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol presenta resultados trimestrais hoxe';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return 'Dividendo de $symbol previsto para hoxe';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Uns $amount. Rexístrao na túa carteira cando chegue.';
  }

  @override
  String get dividendRemindersTitle => 'Lembretes de dividendos';

  @override
  String get dividendRemindersSubtitle =>
      'Unha notificación o día en que se espera un dividendo segundo o ritmo dos teus pagamentos rexistrados, para que poidas rexistralo';

  @override
  String get earningsRemindersTitle => 'Lembretes de resultados';

  @override
  String get earningsRemindersSubtitle =>
      'Unha notificación o día antes de que as accións dos teus favoritos ou da túa carteira presenten resultados trimestrais';

  @override
  String addAllToFavorites(int count) {
    return 'Engadir todas a favoritos ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Importar desde unha captura de pantalla';

  @override
  String get holdingsReading => 'Lendo as túas posicións…';

  @override
  String get holdingsReviewTitle => 'Posicións atopadas';

  @override
  String get holdingsReviewHint =>
      'Revisa as cifras antes de engadilas. O prezo é o teu prezo medio de compra por acción, non o prezo de hoxe.';

  @override
  String get holdingsNoPrice => 'Non hai prezo medio de compra na imaxe';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Engadir $count posicións',
      one: 'Engadir $count posición',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Non se atoparon posicións en accións nesta imaxe. Proba cunha captura da páxina de posicións ou carteira do teu bróker.';

  @override
  String get week52Range => 'Rango de 52 semanas';

  @override
  String week52BelowHigh(String percent) {
    return '$percent por debaixo do máximo de 52 semanas';
  }

  @override
  String get week52AtHigh => 'No máximo de 52 semanas';

  @override
  String get alertKindTrailing => 'Cae desde o máximo';

  @override
  String get alertTrailingPercent => 'Caída desde o máximo (%)';

  @override
  String get alertTrailingHint =>
      'Segue o prezo á alza: a alerta salta cando o prezo cae esta porcentaxe desde o seu máximo desde que a configuraches.';

  @override
  String alertDescTrailing(String percent) {
    return 'Caída do $percent desde o máximo';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'máximo ata agora: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol caeu un $percent desde o seu máximo';
  }

  @override
  String get sectionInsiders => 'Operacións de insiders';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count compras',
      one: '1 compra',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count vendas',
      one: '1 venda',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Neto: $shares accións';
  }

  @override
  String get insiderBuy => 'Comprado';

  @override
  String get insiderSell => 'Vendido';

  @override
  String get insiderHint =>
      'Compras e vendas no mercado aberto de directivos e conselleiros nos últimos 90 días (SEC Form 4). Non se contan o exercicio de opcións nin as concesións de accións.';

  @override
  String get insiderNone =>
      'Sen compras nin vendas de insiders no mercado aberto nos últimos 90 días.';

  @override
  String get analystTrend => 'Como cambiaron as opinións mes a mes';

  @override
  String get watchListAll => 'Todas';

  @override
  String get watchListNew => 'Nova lista';

  @override
  String get watchListName => 'Nome da lista';

  @override
  String get watchListRename => 'Renomear a lista';

  @override
  String get watchListDelete => 'Eliminar a lista';

  @override
  String get watchListAddTo => 'Engadir a unha lista';

  @override
  String get watchListEmpty =>
      'Aínda non hai accións nesta lista. Toca o botón de lista xunto a unha acción para engadila.';

  @override
  String get portfolioAskTitle => 'Preguntas sobre a túa carteira';

  @override
  String get rangeYtd => 'Este ano';

  @override
  String get backupTitle => 'Copia de seguranza';

  @override
  String get backupSave => 'Gardar copia de seguranza';

  @override
  String get backupSaveHint =>
      'Os teus favoritos, listas, carteira, alertas e notas nun só ficheiro.';

  @override
  String get backupRestore => 'Restaurar desde unha copia de seguranza';

  @override
  String get backupRestoreHint =>
      'Engade o que hai no ficheiro; non se borra nada do que tes agora.';

  @override
  String get backupRestored => 'Copia de seguranza restaurada.';

  @override
  String get backupInvalid =>
      'Este ficheiro non é unha copia de seguranza de WhatStock.';

  @override
  String get allocationPositions => 'Accións';

  @override
  String get allocationSectors => 'Sectores';

  @override
  String get allocationCurrencies => 'Moedas';

  @override
  String get allocationAccounts => 'Contas';

  @override
  String get compareReturn1y => 'Rendibilidade a 1 ano';

  @override
  String get compareFromHigh => 'Desde o máximo de 52 semanas';

  @override
  String get briefAutoTitle => 'Resumo diario cada mañá';

  @override
  String get briefAutoSubtitle =>
      '«Hoxe coas túas accións» créase automaticamente despois das 7:00 mentres a app está en execución; nos ordenadores avísate unha notificación. Usa o teu límite diario de preguntas, non unha análise.';

  @override
  String get targetsButton => 'Distribución obxectivo';

  @override
  String get targetsTitle => 'Distribución obxectivo';

  @override
  String get targetsHint =>
      'Indica que parte da carteira debe ter cada acción. Deixa o campo baleiro se non hai obxectivo. A app mostrará despois que comprar ou vender para chegar alí.';

  @override
  String targetsSum(String percent) {
    return 'Total: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Comprar ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Vender ≈ $amount';
  }

  @override
  String get rebalanceOk => 'No obxectivo';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol supera o BPA esperado';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol non alcanza o BPA esperado';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'BPA publicado $actual, esperado $estimate';
  }

  @override
  String get newsExplain => 'Que significa isto?';

  @override
  String get watchAlertAll => 'Alerta de grandes movementos diarios';

  @override
  String get watchAlertAllHint =>
      'Unha alerta de prezo para cada acción desta lista que salta cando se move tanto nun día, á alza ou á baixa. As accións que xa teñen unha consérvana.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Creáronse $count alertas',
      one: 'Creouse $count alerta',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Exportar ganancias realizadas (CSV)';

  @override
  String get portfolioAnnualReturn => 'Rendibilidade anual';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / ano';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Rendibilidade anual ponderada polo capital (XIRR): ten en conta cando compraches e vendiches, así que os cartos engadidos máis tarde non a distorsionan. Móstrase cando a túa primeira compra ten polo menos un ano; non inclúe dividendos.';

  @override
  String get eventsAddToCalendar => 'Engadir ao calendario (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Alerta de carteira';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Unha notificación cando toda a túa carteira se move tanto nun día.';

  @override
  String get portfolioMoveAlertOff => 'Desactivada';

  @override
  String portfolioMoveUp(String percent) {
    return 'A túa carteira sobe un $percent hoxe';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'A túa carteira baixa un $percent hoxe';
  }

  @override
  String get whatIfTitle => 'E se investiras?';

  @override
  String get whatIfAmount => 'Importe';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount investidos hai $period valerían hoxe';
  }

  @override
  String get whatIfNote =>
      'Baseado só no prezo da acción: non inclúe dividendos, comisións nin impostos. As rendibilidades pasadas non predín as futuras.';

  @override
  String get watchShare => 'Compartir a lista';

  @override
  String get watchImport => 'Engadir símbolos';

  @override
  String get watchImportHint =>
      'Pega símbolos separados por comas, espazos ou saltos de liña; por exemplo, unha lista que alguén compartiu contigo.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Engadíronse $count accións',
      one: 'Engadiuse $count acción',
      zero: 'Ningunha acción nova',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Maiores primeiro';

  @override
  String get positionsSortGain => 'Maior rendibilidade total primeiro';

  @override
  String get positionsSortToday => 'Mellores de hoxe primeiro';

  @override
  String get chartMyBuys => 'As túas compras';

  @override
  String get chartMySells => 'As túas vendas';

  @override
  String get shortcutsTitle => 'Atallos de teclado';

  @override
  String usMarketOpen(String time) {
    return 'Mercado dos EUA aberto · pecha dentro de $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Mercado dos EUA pechado · abre dentro de $time';
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
  String get dividendGoalSet => 'Definir un obxectivo mensual de dividendos';

  @override
  String get dividendGoalTitle => 'Obxectivo mensual de dividendos';

  @override
  String get dividendGoalAmount => 'Dividendos ao mes';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Uns $amount ao mes coa rendibilidade actual: $percent do teu obxectivo de $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Uns $amount ao mes coa rendibilidade actual: obxectivo de $goal acadado';
  }

  @override
  String get portfolioAccount => 'Conta';

  @override
  String get portfolioAccountHint => 'p. ex. Conta de valores (opcional)';

  @override
  String get portfolioAccountAdd => 'Indicar unha conta';

  @override
  String get portfolioAccountsAll => 'Todas as contas';

  @override
  String get portfolioAccountNote =>
      'Só as transaccións e os dividendos desta conta. O efectivo, os obxectivos e a revisión con IA móstranse en Todas as contas.';

  @override
  String get portfolioNoAccount => 'Sen conta';

  @override
  String portfolioFee(String currency) {
    return 'Comisión ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Engadir unha comisión';

  @override
  String portfolioFeeRow(String amount) {
    return 'Comisión: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'Resumo anual';

  @override
  String get portfolioProceeds => 'Valor de transmisión';

  @override
  String get portfolioCostBasis => 'Valor de adquisición';

  @override
  String get portfolioFeesPaid => 'Comisións pagadas';

  @override
  String get portfolioAnnualSummaryNote =>
      'Importes na moeda orixinal, sen converter. O valor de transmisión é neto da comisión de venda; o valor de adquisición inclúe a comisión de compra (FIFO). Para a declaración da renda, convérteos ao tipo de cambio que esixa a túa administración tributaria.';

  @override
  String get portfolioShare => 'Compartir o rendemento';

  @override
  String get portfolioShareHeading => 'A miña carteira';

  @override
  String get portfolioTopHoldings => 'Maiores posicións';

  @override
  String get portfolioShareNote =>
      'Só se comparten porcentaxes, ningún importe.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count posicións',
      one: '$count posición',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'Non é asesoramento de investimento';

  @override
  String get contributionButton => 'Investir diñeiro novo';

  @override
  String contributionAmount(String currency) {
    return 'Importe para investir ($currency)';
  }

  @override
  String get contributionHint =>
      'Só compras, sen vendas: as posicións máis por debaixo do seu obxectivo reciben primeiro o diñeiro.';

  @override
  String contributionShares(String shares) {
    return '≈ $shares accións';
  }

  @override
  String contributionMissing(String symbols) {
    return 'Non hai prezo actual para $symbols: quedan fóra do reparto.';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'Se a rendibilidade anual se mantén ($rate), acadarás o obxectivo arredor de $year.';
  }

  @override
  String get portfolioMaxDrawdown => 'Caída máxima';

  @override
  String get glossMaxDrawdown =>
      'A maior caída do valor das túas accións desde un máximo anterior ata un mínimo posterior, sen o efecto das túas compras e vendas (ponderada no tempo). Mostra canto de fonda foi a caída que xa atravesou a túa carteira.';

  @override
  String watchSince(String date) {
    return 'Desde que a engadiches a favoritos ($date)';
  }

  @override
  String get portfolioSampleTry => 'Probar cunha carteira de exemplo';

  @override
  String get portfolioSampleBanner =>
      'Esta é unha carteira de exemplo. Engade as túas propias compras xunto a ela ou quítaa.';

  @override
  String get portfolioSampleRemove => 'Quitar o exemplo';

  @override
  String get portfolioStopsAll => 'Stop dinámico para todas as posicións';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Creáronse $count stops dinámicos',
      one: 'Creouse $count stop dinámico',
      zero: 'Todas as posicións xa teñen un stop dinámico',
    );
    return '$_temp0';
  }

  @override
  String portfolioSinceSale(String percent) {
    return '$percent desde a venda';
  }

  @override
  String get lotPreviewRealized => 'Realizado nesta venda (FIFO):';

  @override
  String lotPreviewAverage(String after, String before) {
    return 'Novo custo medio: $after (agora $before)';
  }

  @override
  String get portfolioYtdReturn => 'Rendibilidade este ano';

  @override
  String get glossTwrYtd =>
      'Rendibilidade ponderada no tempo desde o comezo do ano (ou desde a túa primeira compra, se foi este ano): cada día conta a variación das accións que tiñas ese día, e os días encadéanse – o diñeiro que metes ou retiras non é rendibilidade, polo que se pode comparar cun índice. Debaixo: o índice escollido no mesmo período.';

  @override
  String get portfolioGoalSet => 'Definir un obxectivo';

  @override
  String get portfolioGoalTitle => 'Obxectivo da carteira';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent do teu obxectivo de $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Obxectivo de $amount acadado';
  }

  @override
  String get portfolioGoalRemove => 'Quitar o obxectivo';

  @override
  String get alertEdit => 'Editar alerta';

  @override
  String get positionOpenLots => 'Aínda en carteira (primeiro as máis antigas)';

  @override
  String get lotRemoved => 'Eliminouse a transacción';

  @override
  String get alertDeleted => 'Eliminouse a alerta';

  @override
  String get alertsClearTriggered => 'Borrar alertas activadas';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Borráronse $count alertas',
      one: 'Borrouse $count alerta',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Pantalla de inicio';

  @override
  String get allocationCountries => 'Países';

  @override
  String get newsExplainNoteResearch =>
      'Explicación de IA: busca os datos na web, abre o artigo e valora a fiabilidade da fonte. Non constitúe asesoramento de investimento. Usa o teu límite diario de preguntas, non unha análise.';

  @override
  String get sourceOfficial => 'Oficial';

  @override
  String get sourcePressRelease => 'Nota de prensa';

  @override
  String get sourceMajorNews => 'Gran medio';

  @override
  String get sourceOpinion => 'Opinión';

  @override
  String get earningsSummaryButton => 'Que dicía o último informe?';

  @override
  String get earningsSummaryNote =>
      'Resumo de IA do anuncio de resultados da empresa e da cobertura de prensa que atopa na web. Non constitúe asesoramento de investimento. Usa o teu límite diario de preguntas, non unha análise.';

  @override
  String get compareLastSurprise => 'BPA último trimestre vs. esperado';

  @override
  String get compareNextReport => 'Próximo informe';

  @override
  String get resolvingDescription => 'Descubrindo a que acción te refires…';

  @override
  String get instrumentTitle => 'Sobre este instrumento';

  @override
  String get instrumentHint =>
      'Non hai perfil de empresa para este símbolo: pode ser un ETF, un fondo ou un certificado de depósito. Pregúntalle á IA que é, que contén e canto custa.';

  @override
  String get instrumentAsk => 'Que é isto?';

  @override
  String get instrumentNote =>
      'Explicación de IA a partir da páxina do fondo do emisor e de sitios financeiros que atopa na web. Non constitúe asesoramento de investimento. Usa o teu límite diario de preguntas, non unha análise.';

  @override
  String suggestAskAi(String query) {
    return 'Pregúntalle á IA: «$query»';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Non hai prezo actual para $symbols.';
  }

  @override
  String get eventsRecentResults => 'Resultados recentes';

  @override
  String get saveToNotes => 'Gardar nas miñas notas';

  @override
  String get savedToNotes => 'Gardado nas túas notas';

  @override
  String get portfolioDividendsReceived => 'Dividendos recibidos';

  @override
  String get portfolioDividendsThisYear => 'Este ano';

  @override
  String get portfolioDividendsAllTime => 'Histórico';

  @override
  String get portfolioAddDividend => 'Engadir dividendo';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Importe recibido ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Data de pagamento';

  @override
  String get portfolioDividendsEmpty =>
      'Aínda non hai dividendos rexistrados. Engádeos a man ou importa a exportación do teu corredor: as súas filas de dividendos tamén se recollen.';

  @override
  String get portfolioSplit => 'Desdobramento de accións';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Desdobramento de accións: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'As compras e vendas con data anterior ao desdobramento axústanse: o número de accións multiplícase e o prezo por acción divídese, de modo que o custo non cambia.';

  @override
  String get portfolioSplitRatio => 'Proporción (novas : antigas)';

  @override
  String get portfolioSplitRatioError =>
      'Introduce unha proporción como 10:1, ou 1:10 para un desdobramento inverso.';

  @override
  String get portfolioSplitDate => 'Data do desdobramento';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Desdobramento de accións $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Desdobramento de accións eliminado';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Engadíronse $count desdobramentos de accións',
      one: 'Engadiuse 1 desdobramento de accións',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dividendos engadidos',
      one: '1 dividendo engadido',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Exportar dividendos (CSV)';

  @override
  String get portfolioDividendDeleted => 'Dividendo eliminado';

  @override
  String get portfolioDividendsHint =>
      'Importes tal como chegaron á túa conta, na moeda de pagamento; os totais convértense ao cambio de hoxe. Para a declaración da renda, usa o extracto do teu corredor.';

  @override
  String get awayTitle => 'Mentres non estabas';

  @override
  String awaySince(String when) {
    return 'Desde $when';
  }

  @override
  String get awayQuiet => 'Nada se moveu moito.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count alertas activadas',
      one: '1 alerta activada',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Resultados publicados: $symbols';
  }

  @override
  String get moveWhyButton => 'Por que se move hoxe?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent hoxe';
  }

  @override
  String get moveWhyNote =>
      'Explicación da IA a partir das noticias de hoxe atopadas na web; o motivo real pode ser descoñecido ou distinto. Non é asesoramento de investimento. Consome a túa cota diaria de preguntas, non unha análise.';

  @override
  String get sectionTechnical => 'Panorama técnico';

  @override
  String get labelSma50 => 'Media de 50 días';

  @override
  String get labelSma200 => 'Media de 200 días';

  @override
  String get labelRsi => 'RSI (14 días)';

  @override
  String get labelVolatility30 => 'Volatilidade (30 días)';

  @override
  String techAbove(String percent) {
    return '$percent por riba';
  }

  @override
  String techBelow(String percent) {
    return '$percent por baixo';
  }

  @override
  String get techOverbought => 'sobrecomprada';

  @override
  String get techOversold => 'sobrevendida';

  @override
  String get techNeutral => 'neutral';

  @override
  String get techGoldenCross =>
      'A media de 50 días está por riba da de 200 días – tendencia alcista segundo a lectura clásica.';

  @override
  String get techDeathCross =>
      'A media de 50 días está por baixo da de 200 días – tendencia baixista segundo a lectura clásica.';

  @override
  String get glossSma50 =>
      'O prezo medio de peche dos últimos 50 días de negociación. Un prezo por riba adoita lerse como fortaleza a curto prazo; por baixo, como debilidade.';

  @override
  String get glossSma200 =>
      'O prezo medio de peche dos últimos 200 días de negociación – a liña de tendencia clásica a longo prazo. Moitos investidores consideran que un prezo por riba indica unha tendencia alcista a longo prazo.';

  @override
  String get glossRsi =>
      'Índice de forza relativa: compara as ganancias recentes coas perdas recentes nunha escala de 0 a 100. Por riba de 70 adoita dicirse que a acción está sobrecomprada (subiu rápido); por baixo de 30, sobrevendida – pero unha tendencia forte pode manterse aí moito tempo.';

  @override
  String get glossVolatility =>
      'Canto oscila o prezo dun día a outro, anualizado: un 20% significa que nun ano típico se move dentro de aproximadamente ±20%. Maior volatilidade significa movementos máis grandes en ambas as direccións.';

  @override
  String get techNote =>
      'Calculado a partir dos prezos de peche diarios. Os sinais técnicos describen o pasado, non o futuro.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$above de $count posicións por riba da súa media de 200 días';
  }

  @override
  String get watchSignalsTitle => 'Sinais';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · sobrevendida';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · sobrecomprada';
  }

  @override
  String get signalCrossedAbove => 'cruzou por riba da súa media de 200 días';

  @override
  String get signalCrossedBelow => 'cruzou por baixo da súa media de 200 días';

  @override
  String get signalAlertsTitle => 'Notificacións de sinais técnicos';

  @override
  String get signalAlertsSubtitle =>
      'Unha vez ao día, cando unha acción que segues pasa a estar sobrevendida ou sobrecomprada (RSI), ou o seu prezo cruza a media de 200 días.';

  @override
  String get signalAlertsNotification => 'Sinais técnicos';

  @override
  String get glossaryPageTitle => 'Glosario';

  @override
  String get glossaryPageSubtitle =>
      'Explicacións sinxelas de cada cifra que mostra a app, do P/E ao RSI';

  @override
  String get glossarySearchHint => 'Buscar no glosario';

  @override
  String get portfolioCash => 'Efectivo';

  @override
  String get portfolioCashTitle => 'Saldo en efectivo';

  @override
  String get portfolioCashHint =>
      'Diñeiro non investido no teu bróker, por moeda. Conta no valor total e na distribución; non na rendibilidade.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Importe ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Definir o saldo en efectivo';

  @override
  String get portfolioDividendsByMonth => 'Por mes';

  @override
  String get dividendsLegendReceived => 'Recibidos';

  @override
  String get dividendsLegendExpected => 'Previstos';

  @override
  String get portfolioDividendsExpected => 'Próximos previstos';

  @override
  String get portfolioDividendsExpectedNote =>
      'Estimado a partir das datas e importes dos pagamentos que rexistraches; as empresas poden cambialos ou omitilos.';

  @override
  String portfolioDividendAround(String date) {
    return 'arredor do $date';
  }
}
