// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Reszveny';

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
    return 'Pulsa $shortcut en cualquier lugar para abrir Reszveny.';
  }

  @override
  String get trayOpen => 'Abrir Reszveny';

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
}
