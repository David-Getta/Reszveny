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
  String previewFor(String name) {
    return 'Versión preliminar confidencial para $name';
  }

  @override
  String get errPreviewDailyLimit =>
      'Alcanzouse o límite de análises de hoxe desta versión preliminar. Téntao de novo mañá.';
}
