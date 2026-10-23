// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'Fotografía una acción y descubre todo sobre ella.';

  @override
  String get homeHint =>
      'Un certificado de acciones, la pantalla de una app de bróker, un periódico o el logotipo de una empresa: cualquier cosa que identifique una acción.';

  @override
  String get takePhoto => 'Hacer una foto';

  @override
  String get chooseFromGallery => 'Elegir de la galería';

  @override
  String get chooseImage => 'Elegir una imagen';

  @override
  String get enterTickerManually => 'Introducir el ticker manualmente';

  @override
  String get tickerInputLabel => 'Símbolo (ticker)';

  @override
  String get tickerInputHint => 'p. ej. AAPL';

  @override
  String get lookUp => 'Buscar';

  @override
  String demoModeBanner(String symbols) {
    return 'Modo demo: no hay ninguna clave de datos de mercado configurada. Hay datos de ejemplo disponibles para: $symbols.';
  }

  @override
  String get recognizing => 'Analizando la imagen…';

  @override
  String get loadingData => 'Cargando datos…';

  @override
  String get noCandidatesTitle => 'No se reconoció ninguna acción';

  @override
  String get noCandidatesBody =>
      'No pudimos identificar ninguna acción en esta imagen. Prueba con una foto más nítida o introduce el ticker manualmente.';

  @override
  String get whatWeSaw => 'Lo que vimos';

  @override
  String get chooseCandidateTitle => '¿A qué acción te refieres?';

  @override
  String confidencePercent(int percent) {
    return '$percent% de confianza';
  }

  @override
  String get settings => 'Ajustes';

  @override
  String get language => 'Idioma';

  @override
  String get systemLanguage => 'Predeterminado del sistema';

  @override
  String get about => 'Acerca de';

  @override
  String get disclaimer =>
      'Esta app ofrece únicamente información y no constituye asesoramiento de inversión. Los datos pueden estar retrasados o ser inexactos.';

  @override
  String dataSource(String source) {
    return 'Fuente de datos: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Reconocimiento: $source';
  }

  @override
  String get retry => 'Reintentar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Cerrar';

  @override
  String get errorGeneric => 'Algo salió mal.';

  @override
  String get errorSectionUnavailable => 'No se pudo cargar esta sección.';

  @override
  String get notAvailable => 'n/d';

  @override
  String get sectionIdentity => 'Identificación';

  @override
  String get sectionPrice => 'Precio';

  @override
  String get sectionValuation => 'Valoración';

  @override
  String get sectionFinancials => 'Finanzas';

  @override
  String get sectionDividend => 'Dividendo';

  @override
  String get sectionProfile => 'Perfil de la empresa';

  @override
  String get sectionAnalysts => 'Recomendaciones de analistas';

  @override
  String get sectionNews => 'Noticias';

  @override
  String get sectionRecognition => 'Detalles del reconocimiento';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Bolsa';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Divisa';

  @override
  String get labelCountry => 'País';

  @override
  String get labelIndustry => 'Industria';

  @override
  String get labelSector => 'Sector';

  @override
  String get labelWebsite => 'Sitio web';

  @override
  String get labelIpoDate => 'Fecha de IPO';

  @override
  String get labelMarketCap => 'Capitalización bursátil';

  @override
  String get labelSharesOutstanding => 'Acciones en circulación';

  @override
  String get labelEmployees => 'Empleados';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Sede';

  @override
  String get labelDescription => 'Descripción';

  @override
  String get labelLastPrice => 'Último precio';

  @override
  String get labelChange => 'Variación';

  @override
  String get labelOpen => 'Apertura';

  @override
  String get labelDayHigh => 'Máximo del día';

  @override
  String get labelDayLow => 'Mínimo del día';

  @override
  String get labelPreviousClose => 'Cierre anterior';

  @override
  String get labelWeek52High => 'Máximo de 52 semanas';

  @override
  String get labelWeek52Low => 'Mínimo de 52 semanas';

  @override
  String get labelAverageVolume10d => 'Volumen medio (10 días)';

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
  String get labelEvToFcf => 'EV / flujo de caja libre';

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
  String get labelGrossMargin => 'Margen bruto';

  @override
  String get labelOperatingMargin => 'Margen operativo';

  @override
  String get labelNetMargin => 'Margen neto';

  @override
  String get labelRoe => 'Rentabilidad del capital (ROE)';

  @override
  String get labelRoa => 'Rentabilidad de los activos (ROA)';

  @override
  String get labelDebtToEquity => 'Deuda / capital';

  @override
  String get labelCurrentRatio => 'Ratio de liquidez';

  @override
  String get labelRevenueGrowth => 'Crecimiento de ingresos (YoY)';

  @override
  String get labelEpsGrowth => 'Crecimiento del EPS (YoY)';

  @override
  String get labelDividendYield => 'Rentabilidad por dividendo';

  @override
  String get labelDividendPerShare => 'Dividendo por acción';

  @override
  String get labelPayoutRatio => 'Ratio de reparto (payout)';

  @override
  String get labelYieldOnCost => 'Rentabilidad sobre coste';

  @override
  String get labelDividendGrowth5y => 'Crecimiento del dividendo (5 años)';

  @override
  String get dividendNone => 'No ha pagado dividendos en los últimos 12 meses.';

  @override
  String get dividendOnYourShares => 'Sobre tus acciones, al año';

  @override
  String get labelConsensus => 'Consenso';

  @override
  String get ratingStrongBuy => 'Compra fuerte';

  @override
  String get ratingBuy => 'Comprar';

  @override
  String get ratingHold => 'Mantener';

  @override
  String get ratingSell => 'Vender';

  @override
  String get ratingStrongSell => 'Venta fuerte';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analistas',
      one: '1 analista',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Periodo: $period';
  }

  @override
  String get noNews => 'No hay noticias recientes.';

  @override
  String get openArticle => 'Abrir artículo';

  @override
  String get openLinkFailed => 'No se pudo abrir el enlace.';

  @override
  String get recognitionSummary => 'Resumen';

  @override
  String get recognitionEvidence => 'Por qué lo creemos';

  @override
  String get recognitionRawText => 'Texto leído de la imagen';

  @override
  String get errMissingAnthropicKey =>
      'El reconocimiento de imágenes no está configurado (falta ANTHROPIC_API_KEY). Introduce el ticker manualmente.';

  @override
  String get errRecognitionUnreachable =>
      'No se pudo conectar con el servicio de reconocimiento. Comprueba tu conexión a internet.';

  @override
  String errRecognitionHttp(String status) {
    return 'El servicio de reconocimiento devolvió un error (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'El servicio de reconocimiento no pudo procesar esta imagen.';

  @override
  String get errRecognitionTruncated =>
      'La respuesta del reconocimiento se cortó. Inténtalo de nuevo.';

  @override
  String get errRecognitionBadResponse =>
      'Respuesta inesperada del servicio de reconocimiento.';

  @override
  String get errRecognitionEmpty =>
      'El servicio de reconocimiento devolvió una respuesta vacía.';

  @override
  String get errMissingFinnhubKey =>
      'Los datos de mercado no están configurados (falta FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'No se pudo conectar con el servicio de datos de mercado. Comprueba tu conexión a internet.';

  @override
  String get errMarketRateLimited =>
      'Demasiadas solicitudes al servicio de datos de mercado. Espera un minuto.';

  @override
  String errMarketHttp(String status) {
    return 'El servicio de datos de mercado devolvió un error (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Respuesta inesperada del servicio de datos de mercado.';

  @override
  String errNoQuote(String symbol) {
    return 'No se encontraron datos de precio para $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'No se encontró el perfil de la empresa para $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'El modo demo solo admite $symbols. Añade una FINNHUB_API_KEY para obtener datos en tiempo real.';
  }

  @override
  String errUnknown(String detail) {
    return 'Algo salió mal: $detail';
  }

  @override
  String get newSearch => 'Nueva búsqueda';

  @override
  String get recentSearches => 'Recientes';

  @override
  String get noRecentSearches => 'Aún no hay búsquedas recientes.';

  @override
  String get clearRecent => 'Borrar recientes';

  @override
  String get greeting => '¿Qué acción miramos?';

  @override
  String get searchHint => 'Ticker o nombre de la empresa';

  @override
  String get attachImage => 'Adjuntar una imagen';

  @override
  String get searchResultsTitle => 'Resultados de la búsqueda';

  @override
  String errNoResults(String query) {
    return 'No se encontraron acciones para «$query».';
  }

  @override
  String get quickBarHint => 'Escribe un ticker o el nombre de una empresa…';

  @override
  String get openFullWindow => 'Abrir ventana';

  @override
  String hotkeyHint(String shortcut) {
    return 'Pulsa $shortcut en cualquier lugar para abrir WhatStock.';
  }

  @override
  String get trayOpen => 'Abrir WhatStock';

  @override
  String get trayQuickSearch => 'Búsqueda rápida';

  @override
  String get trayQuit => 'Salir';

  @override
  String get appearance => 'Apariencia';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeDark => 'Oscuro';

  @override
  String get themeLight => 'Claro';

  @override
  String get back => 'Atrás';

  @override
  String get aiSectionTitle => 'Análisis con IA';

  @override
  String get aiIntro =>
      'Un resumen detallado escrito por IA: síntesis de las noticias recientes, el negocio, fortalezas, riesgos y factores ocultos, valoración, una perspectiva del precio con escenarios desde ángulos psicológicos, sociológicos, técnicos y macroeconómicos, y qué vigilar.';

  @override
  String get aiGenerate => 'Generar análisis';

  @override
  String get aiRegenerate => 'Volver a generar';

  @override
  String get aiGenerating =>
      'Preparando el análisis… puede tardar uno o dos minutos.';

  @override
  String get aiSources => 'Fuentes';

  @override
  String aiGeneratedAt(String time) {
    return 'Generado $time';
  }

  @override
  String get aiDisclaimer =>
      'Análisis generado por IA a partir de datos públicos y noticias recientes. Puede contener errores o estar desactualizado, y no constituye asesoramiento de inversión.';

  @override
  String get errAiNotConfigured =>
      'El análisis con IA no está configurado (falta ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'No se pudo conectar con el servicio de IA. Comprueba tu conexión a internet.';

  @override
  String errAiHttp(String status) {
    return 'El servicio de IA devolvió un error (HTTP $status).';
  }

  @override
  String get errAiRefused =>
      'El servicio de IA se negó a analizar esta acción.';

  @override
  String get errAiBadResponse => 'Respuesta inesperada del servicio de IA.';

  @override
  String get sectionChart => 'Gráfico de precios';

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
      'El historial de precios no está disponible en la fuente de datos actual.';

  @override
  String get sectionStatements => 'Estados financieros (anuales)';

  @override
  String get labelFiscalYear => 'Ejercicio fiscal';

  @override
  String get labelRevenue => 'Ingresos';

  @override
  String get labelNetIncome => 'Beneficio neto';

  @override
  String get labelTotalAssets => 'Activos totales';

  @override
  String get labelTotalLiabilities => 'Pasivos totales';

  @override
  String get labelEquity => 'Patrimonio neto';

  @override
  String get labelOperatingCashFlow => 'Flujo de caja operativo';

  @override
  String get statementsUnavailable =>
      'No hay estados financieros publicados disponibles para esta acción.';

  @override
  String get launchAtLogin => 'Abrir al iniciar sesión';

  @override
  String get hotkeyLabel => 'Atajo global';

  @override
  String get hotkeyRecordHint =>
      'Haz clic aquí y pulsa la nueva combinación de teclas';

  @override
  String get hotkeyReset => 'Restablecer valor predeterminado';

  @override
  String get pasteImage => 'Pegar imagen del portapapeles';

  @override
  String get errClipboardNoImage => 'No hay ninguna imagen en el portapapeles.';

  @override
  String get favorites => 'Favoritos';

  @override
  String get addToFavorites => 'Añadir a favoritos';

  @override
  String get removeFromFavorites => 'Quitar de favoritos';

  @override
  String get noFavorites =>
      'Aún no hay favoritos. Toca la estrella de una acción para añadirla.';

  @override
  String get displayCurrency => 'Divisa de visualización';

  @override
  String get displayCurrencyNone => 'Solo la divisa propia de la acción';

  @override
  String labelConverted(String currency) {
    return '≈ en $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Tipo de cambio: 1 $from = $rate $to (BCE, $date)';
  }

  @override
  String get updates => 'Actualizaciones';

  @override
  String currentVersion(String version) {
    return 'Versión $version';
  }

  @override
  String get autoUpdate => 'Instalar actualizaciones automáticamente';

  @override
  String get checkForUpdates => 'Buscar actualizaciones';

  @override
  String get updateChecking => 'Buscando actualizaciones…';

  @override
  String get updateUpToDate => 'Tienes la versión más reciente.';

  @override
  String updateAvailable(String version) {
    return 'La versión $version está disponible.';
  }

  @override
  String get updateDownloading =>
      'Descargando la actualización en segundo plano…';

  @override
  String get updateDownloaded =>
      'La actualización está lista. Reinicia para instalarla.';

  @override
  String get updateNow => 'Actualizar';

  @override
  String get restartNow => 'Reiniciar';

  @override
  String get updatesViaStore =>
      'Las actualizaciones llegan automáticamente a través de la tienda de aplicaciones.';

  @override
  String get updateCheckFailed => 'No se pudieron buscar actualizaciones.';

  @override
  String get subscription => 'Suscripción';

  @override
  String get planTrial => 'Prueba';

  @override
  String get planNormal => 'Normal';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Sin plan activo';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count análisis al mes';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Prueba gratuita de $days días con $count análisis';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Quedan $days días de prueba',
      one: 'Queda 1 día de prueba',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Tu prueba gratuita ha terminado. Elige un plan para seguir analizando.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Te quedan $remaining de $total análisis en este periodo';
  }

  @override
  String extraCredits(int count) {
    return '$count análisis extra';
  }

  @override
  String renewsOn(String date) {
    return 'Se renueva el $date';
  }

  @override
  String get choosePlan => 'Elige un plan';

  @override
  String get currentPlan => 'Plan actual';

  @override
  String get subscribe => 'Suscribirse';

  @override
  String get perMonth => '/ mes';

  @override
  String get extraPacksTitle => '¿Necesitas más? Compra análisis extra';

  @override
  String get extraPacksHint =>
      'Los análisis extra no caducan y se usan después de tu cuota mensual.';

  @override
  String get buy => 'Comprar';

  @override
  String get restorePurchases => 'Restaurar compras';

  @override
  String get manageSubscription => 'Gestionar suscripción';

  @override
  String get purchaseSuccess => '¡Gracias! Tu compra está activa.';

  @override
  String get purchasePending => 'Compra pendiente…';

  @override
  String get purchaseFailed => 'No se ha podido completar la compra.';

  @override
  String get purchaseCanceled => 'Compra cancelada.';

  @override
  String get billingUnavailable =>
      'Las compras aún no están disponibles en esta plataforma. Suscríbete en tu teléfono o Mac; tu plan funcionará en todos los dispositivos.';

  @override
  String get errQuotaExceeded =>
      'No te quedan análisis en este periodo. Mejora tu plan o compra análisis extra.';

  @override
  String get errTrialExpired =>
      'Tu prueba gratuita ha terminado. Elige un plan para continuar.';

  @override
  String get errNoPlan => 'Se necesita un plan activo para el análisis con IA.';

  @override
  String get viewPlans => 'Ver planes';

  @override
  String get usageTitle => 'Uso';

  @override
  String get demoPurchaseNote =>
      'Facturación de demostración: las compras se simulan en esta plataforma.';

  @override
  String get mostPopular => 'Más popular';

  @override
  String get bestValue => 'Mejor relación calidad-precio';

  @override
  String get planFeaturesCommon =>
      'El reconocimiento de fotos, los datos en tiempo real, los gráficos, los favoritos y los 120 idiomas están incluidos en todos los planes. La cuota cubre los análisis con IA.';

  @override
  String get searchLanguages => 'Buscar idiomas…';

  @override
  String get noLanguageMatch => 'Ningún idioma coincide.';

  @override
  String get aiSettings => 'Análisis con IA';

  @override
  String get aiLength => 'Extensión';

  @override
  String get aiDepthBrief => 'Breve';

  @override
  String get aiDepthStandard => 'Estándar';

  @override
  String get aiDepthDeep => 'A fondo';

  @override
  String get aiDepthBriefDesc => 'Lo esencial, rápido.';

  @override
  String get aiDepthStandardDesc => 'Informe completo con todas las secciones.';

  @override
  String get aiDepthDeepDesc =>
      'Más búsquedas web, comparación con competidores y más detalle.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Unas $min–$max palabras';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'usa $count análisis',
      one: 'usa 1 análisis',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Nivel del lector';

  @override
  String get aiReaderBeginner => 'Principiante';

  @override
  String get aiReaderExperienced => 'Experimentado';

  @override
  String get aiReaderBeginnerDesc =>
      'Lenguaje sencillo; se explica cada término técnico.';

  @override
  String get aiReaderExperiencedDesc =>
      'Texto más denso con la terminología financiera habitual.';

  @override
  String get aiCounterArgument => 'Contraargumento más sólido';

  @override
  String get aiCounterArgumentDesc =>
      'El resumen siempre termina con el mejor argumento en contra de su propia conclusión.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Hasta $count búsquedas web por análisis con tu plan',
      one: 'Hasta 1 búsqueda web por análisis con tu plan',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Extensión estándar según el plan: Normal $normal, Pro $pro, Max $max, Ultra $ultra. «Breve» usa 2 menos y «A fondo», 2 más.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'hasta $count búsquedas web',
      one: 'hasta 1 búsqueda web',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count búsquedas web por análisis',
      one: '1 búsqueda web por análisis',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Esta extensión requiere $needed análisis, pero solo te quedan $left. Elige una extensión más corta en Ajustes o consigue más análisis.';
  }

  @override
  String get outlookMarketMood => 'Sentimiento del mercado';

  @override
  String get moodVeryPessimistic => 'Muy pesimista';

  @override
  String get moodPessimistic => 'Pesimista';

  @override
  String get moodNeutral => 'Neutral';

  @override
  String get moodOptimistic => 'Optimista';

  @override
  String get moodVeryOptimistic => 'Muy optimista';

  @override
  String get scenarioBull => 'Escenario alcista';

  @override
  String get scenarioBase => 'Escenario base';

  @override
  String get scenarioBear => 'Escenario bajista';

  @override
  String outlookCurrentPrice(String price) {
    return 'Precio actual: $price';
  }

  @override
  String get outlookKeyLevels => 'Niveles clave';

  @override
  String get keyLevelSupport => 'Soporte';

  @override
  String get keyLevelResistance => 'Resistencia';

  @override
  String get keyLevelAnchor => 'Ancla';

  @override
  String get upcomingEvents => 'Próximos eventos';

  @override
  String get outlookChartNote =>
      'Rangos orientativos; las probabilidades son estimaciones aproximadas, no predicciones.';

  @override
  String get accountTitle => 'Cuenta';

  @override
  String get signIn => 'Iniciar sesión';

  @override
  String get signOut => 'Cerrar sesión';

  @override
  String get notSignedIn => 'Sin iniciar sesión';

  @override
  String get accountBenefit =>
      'Inicia sesión para que tu suscripción funcione en todos tus dispositivos.';

  @override
  String get accountSyncedNote =>
      'Tu suscripción y tus análisis restantes son los mismos en todos tus dispositivos.';

  @override
  String get signInTitle => 'Iniciar sesión en WhatStock';

  @override
  String get emailLabel => 'Correo electrónico';

  @override
  String get continueWithEmail => 'Continuar con correo';

  @override
  String codeSentTo(String email) {
    return 'Hemos enviado un código de 6 dígitos a $email. Es válido durante 10 minutos.';
  }

  @override
  String get codeLabel => 'Código de acceso';

  @override
  String get resendCode => 'Enviar otro código';

  @override
  String get useDifferentEmail => 'Usar otro correo';

  @override
  String get errInvalidCode => 'El código es incorrecto o ha caducado.';

  @override
  String get errInvalidEmail => 'Introduce un correo electrónico válido.';

  @override
  String get errSignInFailed =>
      'No se pudo iniciar sesión. Comprueba tu conexión e inténtalo de nuevo.';

  @override
  String get checkoutWaiting =>
      'Completa el pago en tu navegador. La app se actualizará automáticamente cuando termine.';

  @override
  String get paymentViaStripe =>
      'Pago seguro en tu navegador a través de Stripe. Cancela cuando quieras.';

  @override
  String get paymentViaStore =>
      'Se factura a través de tu cuenta de App Store o Google Play. Cancela cuando quieras en los ajustes de tu tienda.';

  @override
  String get keySpace => 'Espacio';

  @override
  String get doubleOptionTitle => 'Doble pulsación de Opción';

  @override
  String get doubleOptionSubtitle =>
      'Pulsar dos veces rápidamente la tecla Opción también abre WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Para que también funcione en otras apps, permite WhatStock en Ajustes del Sistema → Privacidad y seguridad → Monitorización de entrada y vuelve a abrir la app.';

  @override
  String get openSystemSettings => 'Abrir Ajustes del Sistema';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Pulsa $shortcut o dos veces la tecla Opción en cualquier lugar para abrir WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Más probable';

  @override
  String get longTermToday => 'Hoy';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years años',
      one: '1 año',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range al año';
  }

  @override
  String longTermLikely(String price) {
    return 'lo más probable: $price';
  }

  @override
  String get confidenceLow => 'Confianza baja';

  @override
  String get confidenceMedium => 'Confianza media';

  @override
  String get confidenceHigh => 'Confianza alta';

  @override
  String get longTermNote =>
      'Los rangos a largo plazo se basan en los supuestos indicados y se amplían con el tiempo. Precios sin dividendos. Estimaciones aproximadas, no predicciones.';

  @override
  String get portfolio => 'Cartera';

  @override
  String get portfolioEmpty =>
      'Aún está vacía. Abre una acción y toca «Añadir a la cartera» para seguir lo que tienes.';

  @override
  String get portfolioLocalNote =>
      'Se guarda solo en este dispositivo. Los totales se convierten a los tipos de referencia del BCE; los precios pueden ir con retraso.';

  @override
  String get addToPortfolio => 'Añadir a la cartera';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Añadir $symbol';
  }

  @override
  String get portfolioQuantity => 'Número de acciones';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Precio por acción ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Fecha de compra';

  @override
  String get portfolioAdd => 'Añadir';

  @override
  String get portfolioInvalidNumber => 'Introduce un número mayor que cero.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol se ha añadido a la cartera.';
  }

  @override
  String get portfolioTotalValue => 'Valor total';

  @override
  String get portfolioToday => 'Hoy';

  @override
  String get portfolioGainLoss => 'Ganancia/pérdida';

  @override
  String homeDividendsThisYear(String amount) {
    return 'Dividendos este año: $amount';
  }

  @override
  String get portfolioInvested => 'Invertido';

  @override
  String get portfolioAllocation => 'Distribución';

  @override
  String get portfolioPositions => 'Posiciones';

  @override
  String portfolioAvgCost(String price) {
    return 'coste medio $price';
  }

  @override
  String get portfolioYourPosition => 'Tu posición';

  @override
  String get portfolioPurchases => 'Compras';

  @override
  String get portfolioRemove => 'Eliminar';

  @override
  String get portfolioExcluded =>
      'Las posiciones sin precio o sin tipo de cambio quedan fuera de los totales.';

  @override
  String get priceAlerts => 'Alertas de precio';

  @override
  String get setPriceAlert => 'Crear alerta de precio';

  @override
  String alertDialogTitle(String symbol) {
    return 'Alerta de precio · $symbol';
  }

  @override
  String get alertKindAbove => 'Sube por encima de';

  @override
  String get alertKindBelow => 'Baja por debajo de';

  @override
  String get alertKindMove => 'Se mueve mucho en un día';

  @override
  String alertTargetPrice(String currency) {
    return 'Precio ($currency)';
  }

  @override
  String get alertMovePercent => 'Movimiento diario (%)';

  @override
  String get alertAlreadyMet => 'El precio ya ha superado este nivel.';

  @override
  String get alertSave => 'Crear alerta';

  @override
  String alertCreated(String symbol) {
    return 'Alerta creada para $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Aún no hay alertas. Abre una acción y toca la campana.';

  @override
  String get alertsNote =>
      'Las alertas se comprueban cada 5 minutos mientras WhatStock está abierto. En el ordenador sigue funcionando en la barra de menús o la bandeja; en el móvil, de momento avisa cuando la app está abierta.';

  @override
  String alertDescAbove(String price) {
    return 'Por encima de $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Por debajo de $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Movimiento diario ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Activada el $date a $price';
  }

  @override
  String get alertRearm => 'Reactivar';

  @override
  String get alertDelete => 'Eliminar';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol ha subido por encima de $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol ha bajado por debajo de $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol se ha movido un $percent hoy';
  }

  @override
  String alertHitBody(String price) {
    return 'Precio actual: $price';
  }

  @override
  String get alertOpen => 'Abrir';

  @override
  String get keepInTrayTitle => 'Seguir funcionando al cerrar la ventana';

  @override
  String get keepInTraySubtitle =>
      'WhatStock se queda en la barra de menús o la bandeja, así el atajo y las alertas de precio siguen funcionando.';

  @override
  String get termsOfUse => 'Condiciones de uso';

  @override
  String get privacyPolicy => 'Política de privacidad';

  @override
  String get subscriptionLegal =>
      'La suscripción se renueva automáticamente cada mes hasta que la canceles. Al suscribirte aceptas las Condiciones de uso y la Política de privacidad.';

  @override
  String get deleteAccount => 'Eliminar cuenta';

  @override
  String get deleteAccountTitle => '¿Eliminar tu cuenta?';

  @override
  String get deleteAccountBody =>
      'Tu cuenta y todo lo guardado en nuestro servidor (correo, cupo, uso) se eliminarán para siempre, y los análisis no usados se pierden. Una suscripción pagada en el navegador se cancela al instante; una de App Store o Google Play debes cancelarla en los ajustes de la tienda.';

  @override
  String get deleteLocalData =>
      'Eliminar también los datos de este dispositivo (cartera, alertas, favoritos, historial, análisis guardados)';

  @override
  String get deleteAccountConfirm => 'Eliminar para siempre';

  @override
  String get accountDeleted => 'Tu cuenta se ha eliminado.';

  @override
  String get errDeleteAccount =>
      'No se pudo eliminar la cuenta. Comprueba la conexión e inténtalo de nuevo.';

  @override
  String get aiTrialBriefNote =>
      'Los análisis de prueba son breves y se hacen con un modelo de IA más rápido. Con un plan obtienes nuestra IA más capaz, más búsquedas web y las extensiones Estándar y A fondo.';

  @override
  String get billingMonthly => 'Mensual';

  @override
  String get billingYearly => 'Anual';

  @override
  String get yearlyDiscount => '2 meses gratis';

  @override
  String get perYear => '/ año';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price al mes';
  }

  @override
  String get subscriptionLegalYearly =>
      'La suscripción anual se renueva automáticamente cada año hasta que la canceles. Al suscribirte aceptas las Condiciones de uso y la Política de privacidad.';

  @override
  String get myAnalyses => 'Mis análisis';

  @override
  String get navAlerts => 'Alertas';

  @override
  String get inviteTitle => 'Versión preliminar cerrada';

  @override
  String get inviteBody =>
      'Por ahora, WhatStock solo está disponible por invitación. Introduce el código de invitación que recibiste.';

  @override
  String get inviteCodeLabel => 'Código de invitación';

  @override
  String get inviteContinue => 'Continuar';

  @override
  String get inviteInvalid => 'Este código de invitación no es válido.';

  @override
  String get inviteExpired =>
      'Esta invitación ha caducado. Pide un código nuevo a la persona que te invitó.';

  @override
  String get inviteDeviceLimit =>
      'Este código de invitación ya se está usando en el número máximo de dispositivos.';

  @override
  String get previewConfidential => 'Versión preliminar confidencial';

  @override
  String get errPreviewDailyLimit =>
      'Se ha alcanzado el límite de análisis de hoy de esta versión preliminar. Vuelve a intentarlo mañana.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'hace $count horas',
      one: 'hace 1 hora',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'hace $count días',
      one: 'hace 1 día',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => '¿Actualizar este análisis?';

  @override
  String staleBody(String age) {
    return 'Se hizo $age. Los precios, las noticias y los resultados pueden haber cambiado desde entonces.';
  }

  @override
  String get staleKeep => 'Ver el anterior';

  @override
  String get staleRefresh => 'Hacer uno nuevo';

  @override
  String seeAll(int count) {
    return 'Ver todos ($count)';
  }

  @override
  String get searchAnalyses => 'Busca en tus análisis';

  @override
  String get deleteAnalysis => 'Eliminar';

  @override
  String analysisDeleted(String symbol) {
    return 'Análisis de $symbol eliminado';
  }

  @override
  String get keyLevelAlertHint =>
      'Toca un nivel para recibir una alerta cuando el precio lo alcance.';

  @override
  String get shareAnalysisTitle => 'Compartir análisis';

  @override
  String get shareAsImage => 'Compartir como imagen';

  @override
  String get shareAsText => 'Compartir como texto';

  @override
  String get shareCardFooter => 'Hecho con WhatStock';

  @override
  String get shareCardDisclaimer =>
      'Análisis con IA · no es asesoramiento de inversión';

  @override
  String get referralTitle => 'Invita a tus amigos';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count análisis extra',
      one: '1 análisis extra',
    );
    return 'Comparte tu código. Tu amigo recibe $_temp0 al instante, y tú lo mismo tras su primer análisis.';
  }

  @override
  String get referralYourCode => 'Tu código';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Invitados: $invited · Recompensados: $rewarded';
  }

  @override
  String get referralHaveCode => '¿Tienes un código de un amigo?';

  @override
  String get referralRedeem => 'Canjear';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Se han añadido $count análisis extra. ¡Te damos la bienvenida!',
      one: 'Se ha añadido 1 análisis extra. ¡Te damos la bienvenida!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Este código no existe. Revísalo e inténtalo de nuevo.';

  @override
  String get referralErrOwn => 'No puedes canjear tu propio código.';

  @override
  String get referralErrAlready => 'Ya has canjeado el código de un amigo.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count análisis extra',
      one: '1 análisis extra',
    );
    return 'Analizo acciones con WhatStock: fotografías una acción y la IA te la explica. Con mi código $code recibes $_temp0.';
  }

  @override
  String get referralCopied => 'Código copiado';

  @override
  String get onboardTitle1 => 'Fotografía una acción';

  @override
  String get onboardBody1 =>
      'Basta con la pantalla de una app de bolsa, un periódico o el logo de una empresa: WhatStock reconoce la acción y te muestra su precio, su gráfico y sus cifras clave.';

  @override
  String get onboardTitle2 => 'Entiéndela en minutos';

  @override
  String get onboardBody2 =>
      'El análisis con IA te explica qué mueve la acción, sus riesgos, su valoración y tres escenarios sobre hacia dónde podría ir el precio, con fuentes y en tu idioma.';

  @override
  String get onboardTitle3 => 'Mantente siempre al día';

  @override
  String get onboardBody3 =>
      'Tus favoritos, tu cartera y las alertas de precio te mantienen al tanto. Tus análisis se quedan en tu dispositivo, listos para volver a abrirlos.';

  @override
  String get onboardNext => 'Siguiente';

  @override
  String get onboardStart => 'Empezar';

  @override
  String get onboardSkip => 'Omitir';

  @override
  String changesTitle(String date) {
    return 'Desde el análisis anterior ($date)';
  }

  @override
  String get changesPrice => 'Precio';

  @override
  String get changesNoMajor =>
      'Las perspectivas no han cambiado de forma significativa.';

  @override
  String get changesPreviousSummary => 'Resumen anterior';

  @override
  String get telemetryTitle => 'Ayuda a mejorar WhatStock';

  @override
  String get telemetryBody =>
      'Comparte estadísticas de uso anónimas e informes de fallos: qué funciones se usan y qué salió mal. Nunca tus acciones, análisis ni datos personales. Puedes cambiarlo en cualquier momento en Ajustes.';

  @override
  String get telemetryAllow => 'Permitir';

  @override
  String get telemetryDecline => 'No, gracias';

  @override
  String get telemetrySetting => 'Estadísticas anónimas e informes de fallos';

  @override
  String get telemetrySettingHint =>
      'Con qué frecuencia se usan las funciones e informes de errores, sin datos personales ni el contenido de tus búsquedas y análisis.';

  @override
  String get askButton => 'Pregunta sobre este análisis';

  @override
  String askTitle(String symbol) {
    return 'Preguntas sobre $symbol';
  }

  @override
  String get askIntro =>
      'Pregunta lo que quieras sobre el análisis: qué significa un riesgo, qué cambiaría las perspectivas, cómo se ha calculado una cifra. Las respuestas se basan en este análisis y no constituyen asesoramiento de inversión.';

  @override
  String get askHint => 'Escribe una pregunta…';

  @override
  String get askSend => 'Enviar';

  @override
  String get askThinking => 'Pensando…';

  @override
  String get askSuggest1 => '¿Cuál es el mayor riesgo?';

  @override
  String get askSuggest2 => '¿Qué cambiaría las perspectivas?';

  @override
  String get askSuggest3 => 'Explícalo con palabras sencillas';

  @override
  String get askMaxReached =>
      'Esa era la última pregunta para este análisis. Crea un análisis nuevo para hacer más preguntas.';

  @override
  String get errAskLimit =>
      'Has alcanzado el límite de preguntas de hoy. Vuelve a intentarlo mañana.';

  @override
  String get eventTomorrow => 'Mañana';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'dentro de $days días',
      one: 'dentro de 1 día',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Resultados trimestrales';

  @override
  String get eventBeforeOpen => 'antes de la apertura';

  @override
  String get eventAfterClose => 'tras el cierre';

  @override
  String eventEpsEstimate(String value) {
    return 'BPA estimado: $value';
  }

  @override
  String get eventFromAnalysis => 'De tu análisis';

  @override
  String get eventDividend => 'Dividendo previsto';

  @override
  String get eventDividendEstimate =>
      'Estimado a partir de tus pagos registrados';

  @override
  String get eventsHint =>
      'Fechas de resultados de tus favoritos y de las acciones de tu cartera para los próximos 90 días, los eventos con fecha que han detectado tus análisis, y los dividendos previstos a partir de los pagos que has registrado.';

  @override
  String get eventsEmpty =>
      'No hay eventos con fecha en los próximos 90 días. Añade favoritos o acciones a tu cartera para ver aquí sus fechas de resultados; los dividendos registrados muestran su próximo pago previsto.';

  @override
  String get compareTitle => 'Comparar';

  @override
  String get compareAdd => 'Añadir una acción';

  @override
  String get compareRemove => 'Quitar';

  @override
  String get compareTickerHint => 'Ticker, p. ej. MSFT';

  @override
  String get compareHint =>
      'Cifras clave lado a lado; el mejor valor de cada fila aparece resaltado. Los importes están en la divisa de cada acción.';

  @override
  String get compareNoAnalysis => 'Aún no hay análisis';

  @override
  String get portfolioDividends => 'Dividendos anuales';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent de rentabilidad';
  }

  @override
  String get portfolioDividendNote =>
      'Los dividendos anuales previstos se basan en los dividendos pagados en los últimos 12 meses; los pagos futuros no están garantizados.';

  @override
  String positionDividend(String amount) {
    return 'Dividendo: $amount al año';
  }

  @override
  String get chartAvgCost => 'Tu coste medio';

  @override
  String get chartAlertLevel => 'Alerta';

  @override
  String get marketsToday => 'Mercados hoy';

  @override
  String get notesTitle => 'Mis notas';

  @override
  String get notesHint =>
      '¿Por qué la compraste, qué estás vigilando, qué te haría venderla?';

  @override
  String get notesInfo =>
      'Se guarda solo en este dispositivo. El análisis con IA tiene en cuenta tus notas.';

  @override
  String notesSaved(String date) {
    return 'Guardado $date';
  }

  @override
  String get peersTitle => 'Empresas similares';

  @override
  String get portfolioExport => 'Exportar como CSV';

  @override
  String get portfolioImport => 'Importar desde CSV';

  @override
  String get portfolioImportHint =>
      'Pega una compra por línea: símbolo, cantidad, precio, divisa, fecha (AAAA-MM-DD). Las columnas pueden separarse con comas, puntos y comas o tabulaciones; la fila de encabezado es opcional.';

  @override
  String get portfolioImportButton => 'Importar';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Se han añadido $count compras',
      one: 'Se ha añadido 1 compra',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Se han omitido $count líneas',
      one: 'Se ha omitido 1 línea',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'La cartera, los favoritos, las alertas de precio y las notas se sincronizan en todos tus dispositivos.';

  @override
  String syncLast(String time) {
    return 'Última sincronización: $time';
  }

  @override
  String get syncNow => 'Sincronizar ahora';

  @override
  String get syncFailed =>
      'No se pudo sincronizar. Se volverá a intentar automáticamente.';

  @override
  String get alertEmailTitle => 'Correo cuando salte una alerta';

  @override
  String get alertEmailOn =>
      'Revisamos tus alertas cada pocos minutos y te enviamos un correo, incluso con la app cerrada.';

  @override
  String get alertEmailSignIn =>
      'Inicia sesión con tu correo en Ajustes para recibir las alertas por correo, incluso con la app cerrada.';

  @override
  String get portfolioHistory => 'Evolución del valor';

  @override
  String get portfolioReviewTitle => 'Revisión de cartera con IA';

  @override
  String get portfolioReviewIntro =>
      'La IA analiza toda tu cartera: concentración, exposición a sectores y divisas, riesgos que comparten tus acciones y dividendos. Usa 1 análisis.';

  @override
  String get portfolioReviewButton => 'Revisar mi cartera';

  @override
  String get portfolioReviewAgain => 'Volver a revisar';

  @override
  String get portfolioReviewWorking => 'Revisando tu cartera…';

  @override
  String get digestTitle => 'Resumen semanal por correo';

  @override
  String get digestHint =>
      'Cada lunes: cómo se movieron tus favoritos y tu cartera la semana pasada, y sus próximas fechas de resultados.';

  @override
  String get benchmarkTitle => 'Comparado con el S&P 500';

  @override
  String get benchmarkTitleIndex => 'Comparado con un índice';

  @override
  String get benchmarkHintIndex =>
      'Como si cada compra se hubiera invertido el mismo día en un fondo que replica el índice elegido. Sin dividendos; las rentabilidades pasadas no predicen las futuras.';

  @override
  String get benchmarkYours => 'Tus compras';

  @override
  String benchmarkAhead(String points) {
    return '$points puntos porcentuales mejor que el índice';
  }

  @override
  String benchmarkBehind(String points) {
    return '$points puntos porcentuales por debajo del índice';
  }

  @override
  String get portfolioSell => 'Vender';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Vender $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Precio de venta por acción ($currency)';
  }

  @override
  String get portfolioSellDate => 'Fecha de venta';

  @override
  String get portfolioSellAll => 'Todas';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Tienes $quantity';
  }

  @override
  String get portfolioSold => 'Venta';

  @override
  String get portfolioRealized => 'Realizado';

  @override
  String get portfolioClosed => 'Posiciones cerradas';

  @override
  String get portfolioClosedNote => 'Todas las acciones vendidas';

  @override
  String get portfolioTransactions => 'Transacciones';

  @override
  String get portfolioRealizedByYear => 'Ganancias realizadas por año';

  @override
  String get portfolioRealizedHint =>
      'Las ventas se asignan primero a tus compras más antiguas (FIFO) y se convierten al tipo de cambio de hoy. Para tu declaración de impuestos, usa el extracto de tu bróker.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Desde este análisis se han publicado nuevos resultados trimestrales ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Nuevos resultados';

  @override
  String get portfolioImportBrokers =>
      'También se reconocen las exportaciones de Revolut, Trading 212, Interactive Brokers, DEGIRO, Schwab, Fidelity y Robinhood, con las ventas y los dividendos (netos de la retención en origen); los depósitos se omiten.';

  @override
  String get portfolioImportFile => 'Elige un archivo';

  @override
  String offlineBanner(String time) {
    return 'Sin conexión – se muestran los últimos datos guardados ($time).';
  }

  @override
  String get glossMarketCap =>
      'Lo que vale toda la empresa en bolsa: precio de la acción × número de acciones.';

  @override
  String get glossSharesOutstanding =>
      'Cuántas acciones ha emitido la empresa. Si aumentan, cada acción posee una porción más pequeña; las recompras las reducen.';

  @override
  String get glossPeTrailing =>
      'Precio ÷ beneficio por acción de los últimos 12 meses: cuántos años del beneficio actual pagas. Más bajo es más barato, pero las empresas que crecen rápido suelen tener un P/E alto.';

  @override
  String get glossPeForward =>
      'Como el P/E, pero con el beneficio que esperan los analistas para los próximos 12 meses. Si está por debajo del P/E histórico, se espera que el beneficio crezca.';

  @override
  String get glossPb =>
      'Precio ÷ valor contable (activos menos deudas) por acción. Alrededor de 1 significa que el mercado valora la empresa por lo que posee sobre el papel.';

  @override
  String get glossPs =>
      'Valor de mercado ÷ ingresos anuales. Útil para empresas con poco o ningún beneficio todavía; compáralo dentro del mismo sector.';

  @override
  String get glossEvToFcf =>
      'Valor de la empresa incluida la deuda (EV) ÷ la caja que genera en un año después de inversiones. Más bajo significa que obtienes más caja por el precio.';

  @override
  String get glossPeg =>
      'P/E ÷ crecimiento anual esperado del beneficio (%). Alrededor de 1 suele considerarse justo; pone el P/E en relación con el crecimiento.';

  @override
  String get glossEps =>
      'Beneficio por acción de los últimos 12 meses. Un EPS que sube año tras año es una de las señales más fuertes de una empresa sana.';

  @override
  String get glossBeta =>
      'Cuánto tiende a moverse la acción con el mercado: 1 = como el mercado, 1,5 = oscilaciones un 50% mayores, menos de 1 = más tranquila.';

  @override
  String get glossRevenueTtm =>
      'Ventas totales de los últimos 12 meses, antes de cualquier coste.';

  @override
  String get glossNetIncomeTtm =>
      'Beneficio que queda tras todos los costes, intereses e impuestos de los últimos 12 meses.';

  @override
  String get glossGrossMargin =>
      'La parte de los ingresos que queda tras el coste directo de los productos. Un margen alto suele indicar poder para fijar precios.';

  @override
  String get glossOperatingMargin =>
      'La parte de los ingresos que queda tras hacer funcionar el negocio (sueldos, alquiler, marketing), antes de intereses e impuestos.';

  @override
  String get glossNetMargin =>
      'La parte de los ingresos que acaba como beneficio final. 20% significa que 20 de cada 100 en ventas son beneficio.';

  @override
  String get glossRoe =>
      'Rentabilidad del capital (ROE): beneficio anual ÷ el capital de los propietarios. Muestra lo bien que la dirección usa el dinero de los accionistas; por encima de un 15% aprox. es fuerte.';

  @override
  String get glossRoa =>
      'Rentabilidad de los activos (ROA): beneficio anual ÷ todo lo que posee la empresa. Compárala dentro del mismo sector.';

  @override
  String get glossDebtToEquity =>
      'Deudas ÷ el capital de los propietarios. Más alto significa más dinero prestado: más riesgo cuando suben los tipos o el negocio se frena.';

  @override
  String get glossCurrentRatio =>
      'Activos a corto plazo ÷ pagos que vencen en un año. Por encima de 1 significa que la empresa puede cubrir sus pagos cercanos.';

  @override
  String get glossRevenueGrowth =>
      'Cuánto crecieron los ingresos respecto a un año antes.';

  @override
  String get glossEpsGrowth =>
      'Cuánto creció el beneficio por acción respecto a un año antes.';

  @override
  String get glossDividendYield =>
      'Dividendo anual ÷ precio de la acción: los ingresos en efectivo que recibirías al año, como porcentaje de lo que pagas.';

  @override
  String get glossDividendPerShare =>
      'El dividendo pagado por una acción durante el último año.';

  @override
  String get glossPayoutRatio =>
      'La parte del beneficio que se reparte como dividendos. Por encima del 100% la empresa paga más de lo que gana, algo que rara vez dura.';

  @override
  String get portfolioBeta => 'Beta de la cartera';

  @override
  String get glossPortfolioBeta =>
      'La beta de tus acciones, ponderada por su valor: aproximadamente cuánto por ciento se mueven tus acciones cuando el mercado se mueve un 1%. Por encima de 1 oscilan más que el mercado; por debajo de 1, menos. No incluye el efectivo.';

  @override
  String get portfolioTop3 => '3 posiciones principales';

  @override
  String get glossPortfolioTop3 =>
      'Qué parte del valor de tus acciones está en tus tres mayores posiciones. Cuanto más alto es, más puede dañar a toda la cartera una mala noticia de una sola empresa.';

  @override
  String get glossDividendGrowth5y =>
      'Cuánto ha crecido de media cada año el dividendo por acción en los últimos cinco años. Un crecimiento constante suele indicar que la empresa confía en su flujo de caja; un recorte a menudo es una señal de alarma.';

  @override
  String get glossYieldOnCost =>
      'Los dividendos recibidos en los últimos 12 meses divididos por lo que pagaste por las acciones que aún conservas. A diferencia de la rentabilidad por dividendo, se mide sobre tu propio precio de compra, no sobre el precio de hoy.';

  @override
  String get glossTitle => '¿Qué significa?';

  @override
  String get watchNewsTitle => 'Noticias de tus acciones';

  @override
  String get undo => 'Deshacer';

  @override
  String get watchSort => 'Ordenar';

  @override
  String get watchSortOwn => 'Mi orden';

  @override
  String get watchSortGainers => 'Mayores subidas primero';

  @override
  String get watchSortLosers => 'Mayores bajadas primero';

  @override
  String get watchSortName => 'Por ticker (A–Z)';

  @override
  String get watchHint =>
      'Arrastra el asa para reordenar y desliza a la izquierda para quitar. La línea muestra los últimos 30 días.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: tu análisis está listo.';
  }

  @override
  String alertFromCost(String price) {
    return 'Según tu precio medio de compra ($price):';
  }

  @override
  String get briefTitle => 'Hoy con tus acciones';

  @override
  String get briefButton => 'Resumir el día';

  @override
  String get briefHint =>
      'Un breve resumen con IA de cómo se movieron hoy tu cartera y tus favoritos y qué dicen de ellos las últimas noticias. No consume ningún análisis.';

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
          'Igual o por encima del BPA esperado en $beats de los últimos $total trimestres',
      one: 'Igual o por encima del BPA esperado en $beats de 1 trimestre',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol presenta resultados trimestrales mañana';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol presenta resultados trimestrales hoy';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return 'Dividendo de $symbol previsto para hoy';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Unos $amount. Regístralo en tu cartera cuando llegue.';
  }

  @override
  String get dividendRemindersTitle => 'Recordatorios de dividendos';

  @override
  String get dividendRemindersSubtitle =>
      'Una notificación el día en que se espera un dividendo según el ritmo de tus pagos registrados, para que puedas registrarlo';

  @override
  String get earningsRemindersTitle => 'Recordatorios de resultados';

  @override
  String get earningsRemindersSubtitle =>
      'Una notificación el día antes de que las acciones de tus favoritos o tu cartera presenten resultados trimestrales';

  @override
  String addAllToFavorites(int count) {
    return 'Añadir todos a favoritos ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Importar desde una captura de pantalla';

  @override
  String get holdingsReading => 'Leyendo tus posiciones…';

  @override
  String get holdingsReviewTitle => 'Posiciones encontradas';

  @override
  String get holdingsReviewHint =>
      'Revisa las cifras antes de añadirlas. El precio es tu precio medio de compra por acción, no el precio de hoy.';

  @override
  String get holdingsNoPrice => 'No hay precio medio de compra en la imagen';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Añadir $count posiciones',
      one: 'Añadir 1 posición',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'No se han encontrado posiciones de acciones en esta imagen. Prueba con una captura de la página de posiciones o cartera de tu bróker.';

  @override
  String get week52Range => 'Rango de 52 semanas';

  @override
  String week52BelowHigh(String percent) {
    return '$percent por debajo del máximo de 52 semanas';
  }

  @override
  String get week52AtHigh => 'En el máximo de 52 semanas';

  @override
  String get alertKindTrailing => 'Cae desde el máximo';

  @override
  String get alertTrailingPercent => 'Caída desde el máximo (%)';

  @override
  String get alertTrailingHint =>
      'Sigue al precio al alza: la alerta salta cuando el precio cae este porcentaje desde su máximo desde que la configuraste.';

  @override
  String alertDescTrailing(String percent) {
    return 'Caída del $percent desde el máximo';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'máximo hasta ahora: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol ha caído un $percent desde su máximo';
  }

  @override
  String get sectionInsiders => 'Operaciones de insiders';

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
      other: '$count ventas',
      one: '1 venta',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Neto: $shares acciones';
  }

  @override
  String get insiderBuy => 'Comprado';

  @override
  String get insiderSell => 'Vendido';

  @override
  String get insiderHint =>
      'Compras y ventas en el mercado abierto de directivos y consejeros en los últimos 90 días (SEC Form 4). No se cuentan el ejercicio de opciones ni las concesiones de acciones.';

  @override
  String get insiderNone =>
      'Sin compras ni ventas de insiders en el mercado abierto en los últimos 90 días.';

  @override
  String get analystTrend => 'Cómo han cambiado las opiniones mes a mes';

  @override
  String get watchListAll => 'Todos';

  @override
  String get watchListNew => 'Nueva lista';

  @override
  String get watchListName => 'Nombre de la lista';

  @override
  String get watchListRename => 'Cambiar nombre de la lista';

  @override
  String get watchListDelete => 'Eliminar lista';

  @override
  String get watchListAddTo => 'Añadir a una lista';

  @override
  String get watchListEmpty =>
      'Aún no hay acciones en esta lista. Toca el botón de lista junto a una acción para añadirla.';

  @override
  String get portfolioAskTitle => 'Preguntas sobre tu cartera';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'Copia de seguridad';

  @override
  String get backupSave => 'Guardar copia de seguridad';

  @override
  String get backupSaveHint =>
      'Tus favoritos, listas, cartera, alertas y notas en un solo archivo.';

  @override
  String get backupRestore => 'Restaurar desde una copia de seguridad';

  @override
  String get backupRestoreHint =>
      'Añade lo que hay en el archivo; no se borra nada de lo que tienes ahora.';

  @override
  String get backupRestored => 'Copia de seguridad restaurada.';

  @override
  String get backupInvalid =>
      'Este archivo no es una copia de seguridad de WhatStock.';

  @override
  String get allocationPositions => 'Acciones';

  @override
  String get allocationSectors => 'Sectores';

  @override
  String get allocationCurrencies => 'Divisas';

  @override
  String get allocationAccounts => 'Cuentas';

  @override
  String get compareReturn1y => 'Rentabilidad a 1 año';

  @override
  String get compareFromHigh => 'Desde el máximo de 52 semanas';

  @override
  String get briefAutoTitle => 'Resumen diario cada mañana';

  @override
  String get briefAutoSubtitle =>
      '«Hoy con tus acciones» se crea automáticamente después de las 7:00 mientras la app está en ejecución; en los ordenadores te avisa una notificación. Usa tu límite diario de preguntas, no un análisis.';

  @override
  String get targetsButton => 'Distribución objetivo';

  @override
  String get targetsTitle => 'Distribución objetivo';

  @override
  String get targetsHint =>
      'Indica qué parte de la cartera debe tener cada acción. Deja el campo vacío si no hay objetivo. La app te mostrará qué comprar o vender para llegar ahí.';

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
  String get rebalanceOk => 'En objetivo';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol supera el BPA esperado';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol no alcanza el BPA esperado';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'BPA publicado $actual, esperado $estimate';
  }

  @override
  String get newsExplain => '¿Qué significa esto?';

  @override
  String get watchAlertAll => 'Alerta de grandes movimientos diarios';

  @override
  String get watchAlertAllHint =>
      'Una alerta de precio para cada acción de esta lista que salta cuando se mueve tanto en un día, al alza o a la baja. Las acciones que ya tienen una la conservan.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Se han creado $count alertas',
      one: 'Se ha creado 1 alerta',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Exportar ganancias realizadas (CSV)';

  @override
  String get portfolioAnnualReturn => 'Rentabilidad anual';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / año';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Rentabilidad anual ponderada por capital (XIRR): tiene en cuenta cuándo compraste y vendiste, así que el dinero añadido más tarde no la distorsiona. Se muestra cuando tu primera compra tiene al menos un año; no incluye dividendos.';

  @override
  String get eventsAddToCalendar => 'Añadir al calendario (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Alerta de cartera';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Una notificación cuando toda tu cartera se mueva tanto en un día.';

  @override
  String get portfolioMoveAlertOff => 'Desactivada';

  @override
  String portfolioMoveUp(String percent) {
    return 'Tu cartera sube un $percent hoy';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Tu cartera baja un $percent hoy';
  }

  @override
  String get whatIfTitle => '¿Y si hubieras invertido?';

  @override
  String get whatIfAmount => 'Importe';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount invertidos hace $period valdrían hoy';
  }

  @override
  String get whatIfNote =>
      'Basado solo en el precio de la acción: no incluye dividendos, comisiones ni impuestos. Las rentabilidades pasadas no predicen las futuras.';

  @override
  String get watchShare => 'Compartir la lista';

  @override
  String get watchImport => 'Añadir símbolos';

  @override
  String get watchImportHint =>
      'Pega símbolos separados por comas, espacios o saltos de línea; por ejemplo, una lista que alguien te ha compartido.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Se han añadido $count acciones',
      one: 'Se ha añadido 1 acción',
      zero: 'No hay acciones nuevas',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Mayores primero';

  @override
  String get positionsSortGain => 'Mayor rentabilidad total primero';

  @override
  String get positionsSortToday => 'Mejores de hoy primero';

  @override
  String get chartMyBuys => 'Tus compras';

  @override
  String get chartMySells => 'Tus ventas';

  @override
  String get shortcutsTitle => 'Atajos de teclado';

  @override
  String usMarketOpen(String time) {
    return 'Mercado de EE. UU. abierto · cierra en $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Mercado de EE. UU. cerrado · abre en $time';
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
  String get dividendGoalSet => 'Fijar un objetivo mensual de dividendos';

  @override
  String get dividendGoalTitle => 'Objetivo mensual de dividendos';

  @override
  String get dividendGoalAmount => 'Dividendos al mes';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Unos $amount al mes con la rentabilidad actual: $percent de tu objetivo de $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Unos $amount al mes con la rentabilidad actual: objetivo de $goal alcanzado';
  }

  @override
  String get portfolioAccount => 'Cuenta';

  @override
  String get portfolioAccountHint => 'p. ej. Cuenta de valores (opcional)';

  @override
  String get portfolioAccountAdd => 'Indicar una cuenta';

  @override
  String get portfolioAccountsAll => 'Todas las cuentas';

  @override
  String get portfolioAccountNote =>
      'Solo las transacciones y los dividendos de esta cuenta. El efectivo, los objetivos y la revisión con IA se muestran en Todas las cuentas.';

  @override
  String get portfolioNoAccount => 'Sin cuenta';

  @override
  String portfolioFee(String currency) {
    return 'Comisión ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Añadir una comisión';

  @override
  String portfolioFeeRow(String amount) {
    return 'Comisión: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'Resumen anual';

  @override
  String get portfolioProceeds => 'Valor de transmisión';

  @override
  String get portfolioCostBasis => 'Valor de adquisición';

  @override
  String get portfolioFeesPaid => 'Comisiones pagadas';

  @override
  String get portfolioAnnualSummaryNote =>
      'Importes en la moneda original, sin convertir. El valor de transmisión es neto de la comisión de venta; el valor de adquisición incluye la comisión de compra (FIFO). Para tu declaración de impuestos, conviértelos al tipo de cambio que exija tu administración tributaria.';

  @override
  String get portfolioShare => 'Compartir rentabilidad';

  @override
  String get portfolioShareHeading => 'Mi cartera';

  @override
  String get portfolioTopHoldings => 'Mayores posiciones';

  @override
  String get portfolioShareNote =>
      'Solo se comparten porcentajes, no importes.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count posiciones',
      one: '1 posición',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'No es asesoramiento de inversión';

  @override
  String get contributionButton => 'Invertir dinero nuevo';

  @override
  String contributionAmount(String currency) {
    return 'Importe a invertir ($currency)';
  }

  @override
  String get contributionHint =>
      'Solo compras, sin ventas: las posiciones más por debajo de su objetivo reciben el dinero primero.';

  @override
  String contributionShares(String shares) {
    return '≈ $shares acciones';
  }

  @override
  String contributionMissing(String symbols) {
    return 'No hay precio actual para $symbols: quedan fuera del reparto.';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'Si la rentabilidad anual se mantiene ($rate), alcanzarás tu objetivo hacia $year.';
  }

  @override
  String get portfolioMaxDrawdown => 'Caída máxima';

  @override
  String get glossMaxDrawdown =>
      'La mayor caída del valor de tus acciones desde un máximo anterior hasta un mínimo posterior, sin el efecto de tus compras y ventas (ponderada en el tiempo). Muestra lo profunda que ha sido la caída que ya ha atravesado tu cartera.';

  @override
  String watchSince(String date) {
    return 'Desde que la añadiste a favoritos ($date)';
  }

  @override
  String get portfolioSampleTry => 'Probar con una cartera de ejemplo';

  @override
  String get portfolioSampleBanner =>
      'Esta es una cartera de ejemplo. Añade tus propias compras junto a ella o elimínala.';

  @override
  String get portfolioSampleRemove => 'Eliminar ejemplo';

  @override
  String get portfolioStopsAll => 'Stop dinámico para todas las posiciones';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Se han creado $count stops dinámicos',
      one: 'Se ha creado 1 stop dinámico',
      zero: 'Todas las posiciones ya tienen un stop dinámico',
    );
    return '$_temp0';
  }

  @override
  String portfolioSinceSale(String percent) {
    return '$percent desde que vendiste';
  }

  @override
  String get lotPreviewRealized => 'Realizado en esta venta (FIFO):';

  @override
  String lotPreviewAverage(String after, String before) {
    return 'Nuevo coste medio: $after (ahora $before)';
  }

  @override
  String get portfolioYtdReturn => 'Rentabilidad este año';

  @override
  String get glossTwrYtd =>
      'Rentabilidad ponderada en el tiempo desde el inicio del año (o desde tu primera compra, si fue este año): cada día cuenta la variación de las acciones que tenías ese día, y los días se encadenan – el dinero que ingresas o retiras no es rentabilidad, así que se puede comparar con un índice. Debajo: el índice elegido en el mismo periodo.';

  @override
  String alertDistance(String price, String percent) {
    return 'Ahora $price · falta $percent';
  }

  @override
  String get watchSortSince => 'Por variación desde que la añadiste';

  @override
  String get portfolioTodayMovers => 'Mayor movimiento hoy:';

  @override
  String get portfolioGoalSet => 'Fijar un objetivo';

  @override
  String get portfolioGoalTitle => 'Objetivo de la cartera';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent de tu objetivo de $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Objetivo de $amount alcanzado';
  }

  @override
  String get portfolioGoalRemove => 'Eliminar objetivo';

  @override
  String get alertEdit => 'Editar alerta';

  @override
  String get positionOpenLots => 'Aún en cartera (primero las más antiguas)';

  @override
  String get lotRemoved => 'Transacción eliminada';

  @override
  String get alertDeleted => 'Alerta eliminada';

  @override
  String get alertsClearTriggered => 'Borrar alertas activadas';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Se han borrado $count alertas',
      one: 'Se ha borrado 1 alerta',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Pantalla de inicio';

  @override
  String get allocationCountries => 'Países';

  @override
  String get newsExplainNoteResearch =>
      'Explicación de IA: busca los datos en la web, abre el artículo y valora la fiabilidad de la fuente. No constituye asesoramiento de inversión. Usa tu límite diario de preguntas, no un análisis.';

  @override
  String get sourceOfficial => 'Oficial';

  @override
  String get sourcePressRelease => 'Nota de prensa';

  @override
  String get sourceMajorNews => 'Gran medio';

  @override
  String get sourceOpinion => 'Opinión';

  @override
  String get earningsSummaryButton => '¿Qué decía el último informe?';

  @override
  String get earningsSummaryNote =>
      'Resumen de IA del anuncio de resultados de la empresa y de la cobertura de prensa que encuentra en la web. No constituye asesoramiento de inversión. Usa tu límite diario de preguntas, no un análisis.';

  @override
  String get compareLastSurprise => 'BPA último trimestre vs. esperado';

  @override
  String get compareNextReport => 'Próximo informe';

  @override
  String get resolvingDescription => 'Averiguando a qué acción te refieres…';

  @override
  String get instrumentTitle => 'Sobre este instrumento';

  @override
  String get instrumentHint =>
      'No hay perfil de empresa para este símbolo: puede ser un ETF, un fondo o un certificado de depósito. Pregunta a la IA qué es, qué contiene y cuánto cuesta.';

  @override
  String get instrumentAsk => '¿Qué es esto?';

  @override
  String get instrumentNote =>
      'Explicación de IA a partir de la página del fondo del emisor y de sitios financieros que encuentra en la web. No constituye asesoramiento de inversión. Usa tu límite diario de preguntas, no un análisis.';

  @override
  String suggestAskAi(String query) {
    return 'Pregúntale a la IA: «$query»';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'No hay precio actual para $symbols.';
  }

  @override
  String get eventsRecentResults => 'Resultados recientes';

  @override
  String get saveToNotes => 'Guardar en mis notas';

  @override
  String get savedToNotes => 'Guardado en tus notas';

  @override
  String get portfolioDividendsReceived => 'Dividendos recibidos';

  @override
  String get portfolioDividendsThisYear => 'Este año';

  @override
  String get portfolioDividendsAllTime => 'Histórico';

  @override
  String get portfolioAddDividend => 'Añadir dividendo';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Importe recibido ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Fecha de pago';

  @override
  String get portfolioDividendsEmpty =>
      'Aún no hay dividendos registrados. Añádelos a mano o importa la exportación de tu bróker: sus filas de dividendos también se detectan.';

  @override
  String get portfolioSplit => 'Split de acciones';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Split de acciones: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Las compras y ventas con fecha anterior al split se ajustan: el número de acciones se multiplica y el precio por acción se divide, de modo que el costo no cambia.';

  @override
  String get portfolioSplitRatio => 'Proporción (nuevas : antiguas)';

  @override
  String get portfolioSplitRatioError =>
      'Introduce una proporción como 10:1, o 1:10 para un split inverso.';

  @override
  String get portfolioSplitDate => 'Fecha del split';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Split de acciones $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Split de acciones eliminado';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count splits de acciones añadidos',
      one: '1 split de acciones añadido',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dividendos añadidos',
      one: '1 dividendo añadido',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Exportar dividendos (CSV)';

  @override
  String get portfolioDividendDeleted => 'Dividendo eliminado';

  @override
  String get portfolioDividendsHint =>
      'Importes tal como llegaron a tu cuenta, en la moneda de pago; los totales se convierten al tipo de cambio de hoy. Para tu declaración de impuestos, usa el extracto de tu bróker.';

  @override
  String get awayTitle => 'Mientras no estabas';

  @override
  String awaySince(String when) {
    return 'Desde $when';
  }

  @override
  String get awayQuiet => 'Nada se movió mucho.';

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
  String get moveWhyButton => '¿Por qué se mueve hoy?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent hoy';
  }

  @override
  String get moveWhyNote =>
      'Explicación de la IA a partir de las noticias de hoy encontradas en la web; el motivo real puede ser desconocido o distinto. No es asesoramiento de inversión. Consume tu cuota diaria de preguntas, no un análisis.';

  @override
  String get sectionTechnical => 'Panorama técnico';

  @override
  String get labelSma50 => 'Media de 50 días';

  @override
  String get labelSma200 => 'Media de 200 días';

  @override
  String get labelRsi => 'RSI (14 días)';

  @override
  String get labelVolatility30 => 'Volatilidad (30 días)';

  @override
  String techAbove(String percent) {
    return '$percent por encima';
  }

  @override
  String techBelow(String percent) {
    return '$percent por debajo';
  }

  @override
  String get techOverbought => 'sobrecomprada';

  @override
  String get techOversold => 'sobrevendida';

  @override
  String get techNeutral => 'neutral';

  @override
  String get techGoldenCross =>
      'La media de 50 días está por encima de la de 200 días – tendencia alcista según la lectura clásica.';

  @override
  String get techDeathCross =>
      'La media de 50 días está por debajo de la de 200 días – tendencia bajista según la lectura clásica.';

  @override
  String get glossSma50 =>
      'El precio medio de cierre de los últimos 50 días de negociación. Un precio por encima suele leerse como fortaleza a corto plazo; por debajo, como debilidad.';

  @override
  String get glossSma200 =>
      'El precio medio de cierre de los últimos 200 días de negociación – la línea de tendencia clásica a largo plazo. Muchos inversores consideran que un precio por encima indica una tendencia alcista a largo plazo.';

  @override
  String get glossRsi =>
      'Índice de fuerza relativa: compara las ganancias recientes con las pérdidas recientes en una escala de 0 a 100. Por encima de 70 suele decirse que la acción está sobrecomprada (subió rápido); por debajo de 30, sobrevendida – pero una tendencia fuerte puede mantenerse ahí mucho tiempo.';

  @override
  String get glossVolatility =>
      'Cuánto oscila el precio de un día a otro, anualizado: un 20% significa que en un año típico se mueve dentro de aproximadamente ±20%. Mayor volatilidad significa movimientos más grandes en ambas direcciones.';

  @override
  String get techNote =>
      'Calculado a partir de los precios de cierre diarios. Las señales técnicas describen el pasado, no el futuro.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$above de $count posiciones por encima de su media de 200 días';
  }

  @override
  String get watchSignalsTitle => 'Señales';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · sobrevendida';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · sobrecomprada';
  }

  @override
  String get signalCrossedAbove => 'cruzó por encima de su media de 200 días';

  @override
  String get signalCrossedBelow => 'cruzó por debajo de su media de 200 días';

  @override
  String get signalAlertsTitle => 'Notificaciones de señales técnicas';

  @override
  String get signalAlertsSubtitle =>
      'Una vez al día, cuando una acción que sigues pasa a estar sobrevendida o sobrecomprada (RSI), o su precio cruza la media de 200 días.';

  @override
  String get signalAlertsNotification => 'Señales técnicas';

  @override
  String get glossaryPageTitle => 'Glosario';

  @override
  String get glossaryPageSubtitle =>
      'Explicaciones sencillas de cada cifra que muestra la app, del P/E al RSI';

  @override
  String get glossarySearchHint => 'Buscar en el glosario';

  @override
  String get portfolioCash => 'Efectivo';

  @override
  String get portfolioCashTitle => 'Saldo en efectivo';

  @override
  String get portfolioCashHint =>
      'Dinero no invertido en tu bróker, por moneda. Cuenta en el valor total y la distribución; no en la rentabilidad.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Importe ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Definir saldo en efectivo';

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
      'Estimado a partir de las fechas e importes de los pagos que registraste; las empresas pueden cambiarlos u omitirlos.';

  @override
  String portfolioDividendAround(String date) {
    return 'hacia el $date';
  }
}
