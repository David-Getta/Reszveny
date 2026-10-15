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
  String get eventsHint =>
      'Fechas de resultados de tus favoritos y de las acciones de tu cartera para los próximos 90 días, y los eventos con fecha que han detectado tus análisis.';

  @override
  String get eventsEmpty =>
      'No hay eventos con fecha en los próximos 90 días. Añade favoritos o acciones a tu cartera para ver aquí sus fechas de resultados.';

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
}
