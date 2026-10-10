// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'StockLens';

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
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count analistas', one: '1 analista');
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
  String get errRecognitionRefused => 'El servicio de reconocimiento no pudo procesar esta imagen.';

  @override
  String get errRecognitionTruncated => 'La respuesta del reconocimiento se cortó. Inténtalo de nuevo.';

  @override
  String get errRecognitionBadResponse => 'Respuesta inesperada del servicio de reconocimiento.';

  @override
  String get errRecognitionEmpty => 'El servicio de reconocimiento devolvió una respuesta vacía.';

  @override
  String get errMissingFinnhubKey => 'Los datos de mercado no están configurados (falta FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'No se pudo conectar con el servicio de datos de mercado. Comprueba tu conexión a internet.';

  @override
  String get errMarketRateLimited => 'Demasiadas solicitudes al servicio de datos de mercado. Espera un minuto.';

  @override
  String errMarketHttp(String status) {
    return 'El servicio de datos de mercado devolvió un error (HTTP $status).';
  }

  @override
  String get errMarketBadResponse => 'Respuesta inesperada del servicio de datos de mercado.';

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
    return 'Pulsa $shortcut en cualquier lugar para abrir StockLens.';
  }

  @override
  String get trayOpen => 'Abrir StockLens';

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
  String get aiGenerating => 'Preparando el análisis… puede tardar uno o dos minutos.';

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
  String get errAiNotConfigured => 'El análisis con IA no está configurado (falta ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable => 'No se pudo conectar con el servicio de IA. Comprueba tu conexión a internet.';

  @override
  String errAiHttp(String status) {
    return 'El servicio de IA devolvió un error (HTTP $status).';
  }

  @override
  String get errAiRefused => 'El servicio de IA se negó a analizar esta acción.';

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
  String get chartUnavailable => 'El historial de precios no está disponible en la fuente de datos actual.';

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
  String get statementsUnavailable => 'No hay estados financieros publicados disponibles para esta acción.';

  @override
  String get launchAtLogin => 'Abrir al iniciar sesión';

  @override
  String get hotkeyLabel => 'Atajo global';

  @override
  String get hotkeyRecordHint => 'Haz clic aquí y pulsa la nueva combinación de teclas';

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
  String get noFavorites => 'Aún no hay favoritos. Toca la estrella de una acción para añadirla.';

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
  String get updateDownloading => 'Descargando la actualización en segundo plano…';

  @override
  String get updateDownloaded => 'La actualización está lista. Reinicia para instalarla.';

  @override
  String get updateNow => 'Actualizar';

  @override
  String get restartNow => 'Reiniciar';

  @override
  String get updatesViaStore => 'Las actualizaciones llegan automáticamente a través de la tienda de aplicaciones.';

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
  String get trialExpired => 'Tu prueba gratuita ha terminado. Elige un plan para seguir analizando.';

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
  String get extraPacksHint => 'Los análisis extra no caducan y se usan después de tu cuota mensual.';

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
  String get errQuotaExceeded => 'No te quedan análisis en este periodo. Mejora tu plan o compra análisis extra.';

  @override
  String get errTrialExpired => 'Tu prueba gratuita ha terminado. Elige un plan para continuar.';

  @override
  String get errNoPlan => 'Se necesita un plan activo para el análisis con IA.';

  @override
  String get viewPlans => 'Ver planes';

  @override
  String get usageTitle => 'Uso';

  @override
  String get demoPurchaseNote => 'Facturación de demostración: las compras se simulan en esta plataforma.';

  @override
  String get mostPopular => 'Más popular';

  @override
  String get bestValue => 'Mejor relación calidad-precio';

  @override
  String get planFeaturesCommon =>
      'El reconocimiento de fotos, los datos en tiempo real, los gráficos, los favoritos y los 44 idiomas están incluidos en todos los planes. La cuota cubre los análisis con IA.';

  @override
  String get searchLanguages => 'Buscar idiomas…';

  @override
  String get noLanguageMatch => 'Ningún idioma coincide.';
}
