// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'StockLens';

  @override
  String get homeTagline => 'Fotografeer een aandeel en ontdek er alles over.';

  @override
  String get homeHint =>
      'Een aandeelbewijs, een scherm van een brokerapp, een krant of een bedrijfslogo – alles wat een aandeel identificeert.';

  @override
  String get takePhoto => 'Foto maken';

  @override
  String get chooseFromGallery => 'Kiezen uit galerij';

  @override
  String get chooseImage => 'Afbeelding kiezen';

  @override
  String get enterTickerManually => 'Ticker handmatig invoeren';

  @override
  String get tickerInputLabel => 'Tickersymbool';

  @override
  String get tickerInputHint => 'bijv. AAPL';

  @override
  String get lookUp => 'Opzoeken';

  @override
  String demoModeBanner(String symbols) {
    return 'Demomodus – geen marktdatasleutel ingesteld. Voorbeelddata beschikbaar voor: $symbols.';
  }

  @override
  String get recognizing => 'Afbeelding wordt geanalyseerd…';

  @override
  String get loadingData => 'Gegevens laden…';

  @override
  String get noCandidatesTitle => 'Geen aandeel herkend';

  @override
  String get noCandidatesBody =>
      'We konden geen aandeel in deze afbeelding herkennen. Probeer een scherpere foto of voer de ticker handmatig in.';

  @override
  String get whatWeSaw => 'Wat we zagen';

  @override
  String get chooseCandidateTitle => 'Welk aandeel bedoelde je?';

  @override
  String confidencePercent(int percent) {
    return '$percent% zekerheid';
  }

  @override
  String get settings => 'Instellingen';

  @override
  String get language => 'Taal';

  @override
  String get systemLanguage => 'Systeemstandaard';

  @override
  String get about => 'Over';

  @override
  String get disclaimer =>
      'Deze app geeft uitsluitend informatie en is geen beleggingsadvies. Gegevens kunnen vertraagd of onjuist zijn.';

  @override
  String dataSource(String source) {
    return 'Gegevensbron: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Herkenning: $source';
  }

  @override
  String get retry => 'Opnieuw proberen';

  @override
  String get cancel => 'Annuleren';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Sluiten';

  @override
  String get errorGeneric => 'Er is iets misgegaan.';

  @override
  String get errorSectionUnavailable => 'Deze sectie kon niet worden geladen.';

  @override
  String get notAvailable => 'n.v.t.';

  @override
  String get sectionIdentity => 'Identificatie';

  @override
  String get sectionPrice => 'Koers';

  @override
  String get sectionValuation => 'Waardering';

  @override
  String get sectionFinancials => 'Financiële cijfers';

  @override
  String get sectionDividend => 'Dividend';

  @override
  String get sectionProfile => 'Bedrijfsprofiel';

  @override
  String get sectionAnalysts => 'Analistenadviezen';

  @override
  String get sectionNews => 'Nieuws';

  @override
  String get sectionRecognition => 'Herkenningsdetails';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Beurs';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Valuta';

  @override
  String get labelCountry => 'Land';

  @override
  String get labelIndustry => 'Branche';

  @override
  String get labelSector => 'Sector';

  @override
  String get labelWebsite => 'Website';

  @override
  String get labelIpoDate => 'IPO-datum';

  @override
  String get labelMarketCap => 'Marktkapitalisatie';

  @override
  String get labelSharesOutstanding => 'Uitstaande aandelen';

  @override
  String get labelEmployees => 'Werknemers';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Hoofdkantoor';

  @override
  String get labelDescription => 'Omschrijving';

  @override
  String get labelLastPrice => 'Laatste koers';

  @override
  String get labelChange => 'Verandering';

  @override
  String get labelOpen => 'Opening';

  @override
  String get labelDayHigh => 'Dagrecord hoog';

  @override
  String get labelDayLow => 'Dagrecord laag';

  @override
  String get labelPreviousClose => 'Vorige slotkoers';

  @override
  String get labelWeek52High => '52-weeks hoog';

  @override
  String get labelWeek52Low => '52-weeks laag';

  @override
  String get labelAverageVolume10d => 'Gem. volume (10 dagen)';

  @override
  String updatedAt(String time) {
    return 'Bijgewerkt $time';
  }

  @override
  String get labelPeTrailing => 'K/W (P/E, achterlopend)';

  @override
  String get labelPeForward => 'K/W (P/E, verwacht)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / vrije kasstroom';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Bèta';

  @override
  String get labelRevenueTtm => 'Omzet (TTM)';

  @override
  String get labelNetIncomeTtm => 'Nettowinst (TTM)';

  @override
  String get labelGrossMargin => 'Brutomarge';

  @override
  String get labelOperatingMargin => 'Operationele marge';

  @override
  String get labelNetMargin => 'Nettomarge';

  @override
  String get labelRoe => 'Rendement op eigen vermogen';

  @override
  String get labelRoa => 'Rendement op activa';

  @override
  String get labelDebtToEquity => 'Schuld / eigen vermogen';

  @override
  String get labelCurrentRatio => 'Current ratio';

  @override
  String get labelRevenueGrowth => 'Omzetgroei (YoY)';

  @override
  String get labelEpsGrowth => 'EPS-groei (YoY)';

  @override
  String get labelDividendYield => 'Dividendrendement';

  @override
  String get labelDividendPerShare => 'Dividend per aandeel';

  @override
  String get labelPayoutRatio => 'Uitkeringsratio';

  @override
  String get labelConsensus => 'Consensus';

  @override
  String get ratingStrongBuy => 'Sterk kopen';

  @override
  String get ratingBuy => 'Kopen';

  @override
  String get ratingHold => 'Houden';

  @override
  String get ratingSell => 'Verkopen';

  @override
  String get ratingStrongSell => 'Sterk verkopen';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analisten',
      one: '1 analist',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Periode: $period';
  }

  @override
  String get noNews => 'Geen recent nieuws.';

  @override
  String get openArticle => 'Artikel openen';

  @override
  String get openLinkFailed => 'De link kon niet worden geopend.';

  @override
  String get recognitionSummary => 'Samenvatting';

  @override
  String get recognitionEvidence => 'Waarom we dit denken';

  @override
  String get recognitionRawText => 'Tekst gelezen uit de afbeelding';

  @override
  String get errMissingAnthropicKey =>
      'Beeldherkenning is niet ingesteld (geen ANTHROPIC_API_KEY). Voer de ticker handmatig in.';

  @override
  String get errRecognitionUnreachable =>
      'De herkenningsdienst is niet bereikbaar. Controleer je internetverbinding.';

  @override
  String errRecognitionHttp(String status) {
    return 'De herkenningsdienst gaf een fout terug (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'De herkenningsdienst kon deze afbeelding niet verwerken.';

  @override
  String get errRecognitionTruncated =>
      'Het antwoord van de herkenningsdienst is afgebroken. Probeer het opnieuw.';

  @override
  String get errRecognitionBadResponse =>
      'Onverwacht antwoord van de herkenningsdienst.';

  @override
  String get errRecognitionEmpty =>
      'De herkenningsdienst gaf een leeg antwoord terug.';

  @override
  String get errMissingFinnhubKey =>
      'Marktdata is niet ingesteld (geen FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'De marktdatadienst is niet bereikbaar. Controleer je internetverbinding.';

  @override
  String get errMarketRateLimited =>
      'Te veel verzoeken aan de marktdatadienst. Wacht even een minuut.';

  @override
  String errMarketHttp(String status) {
    return 'De marktdatadienst gaf een fout terug (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Onverwacht antwoord van de marktdatadienst.';

  @override
  String errNoQuote(String symbol) {
    return 'Geen koersgegevens gevonden voor $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Geen bedrijfsprofiel gevonden voor $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'De demomodus ondersteunt alleen $symbols. Voeg een FINNHUB_API_KEY toe voor livedata.';
  }

  @override
  String errUnknown(String detail) {
    return 'Er is iets misgegaan: $detail';
  }

  @override
  String get newSearch => 'Nieuwe zoekopdracht';

  @override
  String get recentSearches => 'Recent';

  @override
  String get noRecentSearches => 'Nog geen recente zoekopdrachten.';

  @override
  String get clearRecent => 'Recente wissen';

  @override
  String get greeting => 'Welk aandeel bekijken we?';

  @override
  String get searchHint => 'Ticker of bedrijfsnaam';

  @override
  String get attachImage => 'Afbeelding bijvoegen';

  @override
  String get searchResultsTitle => 'Zoekresultaten';

  @override
  String errNoResults(String query) {
    return 'Geen aandelen gevonden voor “$query”.';
  }

  @override
  String get quickBarHint => 'Typ een ticker of bedrijfsnaam…';

  @override
  String get openFullWindow => 'Venster openen';

  @override
  String hotkeyHint(String shortcut) {
    return 'Druk waar dan ook op $shortcut om StockLens te openen.';
  }

  @override
  String get trayOpen => 'StockLens openen';

  @override
  String get trayQuickSearch => 'Snel zoeken';

  @override
  String get trayQuit => 'Afsluiten';

  @override
  String get appearance => 'Weergave';

  @override
  String get themeSystem => 'Systeem';

  @override
  String get themeDark => 'Donker';

  @override
  String get themeLight => 'Licht';

  @override
  String get back => 'Terug';

  @override
  String get aiSectionTitle => 'AI-analyse';

  @override
  String get aiIntro =>
      'Een gedetailleerd, door AI geschreven overzicht: samenvatting van recent nieuws, het bedrijf, sterke punten, risico’s en verborgen factoren, waardering, een koersvooruitzicht met scenario’s vanuit psychologisch, sociologisch, technisch en macro-economisch perspectief, en waar je op moet letten.';

  @override
  String get aiGenerate => 'Analyse genereren';

  @override
  String get aiRegenerate => 'Opnieuw genereren';

  @override
  String get aiGenerating =>
      'Analyse wordt voorbereid… dit kan een of twee minuten duren.';

  @override
  String get aiSources => 'Bronnen';

  @override
  String aiGeneratedAt(String time) {
    return 'Gegenereerd $time';
  }

  @override
  String get aiDisclaimer =>
      'Door AI gegenereerde analyse op basis van openbare gegevens en recent nieuws. Deze kan fouten bevatten of verouderd zijn en is geen beleggingsadvies.';

  @override
  String get errAiNotConfigured =>
      'AI-analyse is niet ingesteld (geen ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'De AI-dienst is niet bereikbaar. Controleer je internetverbinding.';

  @override
  String errAiHttp(String status) {
    return 'De AI-dienst gaf een fout terug (HTTP $status).';
  }

  @override
  String get errAiRefused =>
      'De AI-dienst heeft geweigerd dit aandeel te analyseren.';

  @override
  String get errAiBadResponse => 'Onverwacht antwoord van de AI-dienst.';

  @override
  String get sectionChart => 'Koersgrafiek';

  @override
  String get rangeOneWeek => '1W';

  @override
  String get rangeOneMonth => '1M';

  @override
  String get rangeThreeMonths => '3M';

  @override
  String get rangeOneYear => '1J';

  @override
  String get rangeFiveYears => '5J';

  @override
  String get chartUnavailable =>
      'De koershistorie is niet beschikbaar bij de huidige gegevensbron.';

  @override
  String get sectionStatements => 'Financiële overzichten (jaarlijks)';

  @override
  String get labelFiscalYear => 'Boekjaar';

  @override
  String get labelRevenue => 'Omzet';

  @override
  String get labelNetIncome => 'Nettowinst';

  @override
  String get labelTotalAssets => 'Totale activa';

  @override
  String get labelTotalLiabilities => 'Totale verplichtingen';

  @override
  String get labelEquity => 'Eigen vermogen';

  @override
  String get labelOperatingCashFlow => 'Operationele kasstroom';

  @override
  String get statementsUnavailable =>
      'Voor dit aandeel zijn geen gerapporteerde financiële overzichten beschikbaar.';

  @override
  String get launchAtLogin => 'Starten bij aanmelden';

  @override
  String get hotkeyLabel => 'Globale sneltoets';

  @override
  String get hotkeyRecordHint =>
      'Klik hier en druk vervolgens op de nieuwe toetsencombinatie';

  @override
  String get hotkeyReset => 'Standaard herstellen';

  @override
  String get pasteImage => 'Afbeelding plakken vanaf het klembord';

  @override
  String get errClipboardNoImage => 'Er staat geen afbeelding op het klembord.';

  @override
  String get favorites => 'Favorieten';

  @override
  String get addToFavorites => 'Toevoegen aan favorieten';

  @override
  String get removeFromFavorites => 'Verwijderen uit favorieten';

  @override
  String get noFavorites =>
      'Nog geen favorieten. Tik op de ster bij een aandeel om het toe te voegen.';

  @override
  String get displayCurrency => 'Weergavevaluta';

  @override
  String get displayCurrencyNone => 'Alleen de eigen valuta van het aandeel';

  @override
  String labelConverted(String currency) {
    return '≈ in $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Koers: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Updates';

  @override
  String currentVersion(String version) {
    return 'Version $version';
  }

  @override
  String get autoUpdate => 'Install updates automatically';

  @override
  String get checkForUpdates => 'Check for updates';

  @override
  String get updateChecking => 'Checking for updates…';

  @override
  String get updateUpToDate => 'You’re on the latest version.';

  @override
  String updateAvailable(String version) {
    return 'Version $version is available.';
  }

  @override
  String get updateDownloading => 'Downloading the update in the background…';

  @override
  String get updateDownloaded => 'The update is ready. Restart to install it.';

  @override
  String get updateNow => 'Update';

  @override
  String get restartNow => 'Restart';

  @override
  String get updatesViaStore =>
      'Updates arrive automatically through the app store.';

  @override
  String get updateCheckFailed => 'Could not check for updates.';
}
