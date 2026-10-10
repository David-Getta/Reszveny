// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get appTitle => 'StockLens';

  @override
  String get homeTagline => 'Fotografér en aktie og lær alt om den.';

  @override
  String get homeHint =>
      'Et aktiebrev, en skærm i en handelsapp, en avis eller et firmalogo – alt, der identificerer en aktie.';

  @override
  String get takePhoto => 'Tag et foto';

  @override
  String get chooseFromGallery => 'Vælg fra galleri';

  @override
  String get chooseImage => 'Vælg et billede';

  @override
  String get enterTickerManually => 'Indtast ticker manuelt';

  @override
  String get tickerInputLabel => 'Tickersymbol';

  @override
  String get tickerInputHint => 'f.eks. AAPL';

  @override
  String get lookUp => 'Slå op';

  @override
  String demoModeBanner(String symbols) {
    return 'Demotilstand – ingen markedsdatanøgle konfigureret. Eksempeldata findes for: $symbols.';
  }

  @override
  String get recognizing => 'Analyserer billedet…';

  @override
  String get loadingData => 'Indlæser data…';

  @override
  String get noCandidatesTitle => 'Ingen aktie genkendt';

  @override
  String get noCandidatesBody =>
      'Vi kunne ikke identificere en aktie på dette billede. Prøv et skarpere foto, eller indtast tickeren manuelt.';

  @override
  String get whatWeSaw => 'Hvad vi så';

  @override
  String get chooseCandidateTitle => 'Hvilken aktie mente du?';

  @override
  String confidencePercent(int percent) {
    return '$percent% sikkerhed';
  }

  @override
  String get settings => 'Indstillinger';

  @override
  String get language => 'Sprog';

  @override
  String get systemLanguage => 'Systemstandard';

  @override
  String get about => 'Om';

  @override
  String get disclaimer =>
      'Denne app er kun til information og udgør ikke investeringsrådgivning. Data kan være forsinkede eller unøjagtige.';

  @override
  String dataSource(String source) {
    return 'Datakilde: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Genkendelse: $source';
  }

  @override
  String get retry => 'Prøv igen';

  @override
  String get cancel => 'Annuller';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Luk';

  @override
  String get errorGeneric => 'Noget gik galt.';

  @override
  String get errorSectionUnavailable => 'Denne sektion kunne ikke indlæses.';

  @override
  String get notAvailable => 'ikke tilg.';

  @override
  String get sectionIdentity => 'Identifikation';

  @override
  String get sectionPrice => 'Kurs';

  @override
  String get sectionValuation => 'Værdiansættelse';

  @override
  String get sectionFinancials => 'Nøgletal';

  @override
  String get sectionDividend => 'Udbytte';

  @override
  String get sectionProfile => 'Virksomhedsprofil';

  @override
  String get sectionAnalysts => 'Analytikeranbefalinger';

  @override
  String get sectionNews => 'Nyheder';

  @override
  String get sectionRecognition => 'Genkendelsesdetaljer';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Børs';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Valuta';

  @override
  String get labelCountry => 'Land';

  @override
  String get labelIndustry => 'Branche';

  @override
  String get labelSector => 'Sektor';

  @override
  String get labelWebsite => 'Websted';

  @override
  String get labelIpoDate => 'IPO-dato';

  @override
  String get labelMarketCap => 'Markedsværdi';

  @override
  String get labelSharesOutstanding => 'Udestående aktier';

  @override
  String get labelEmployees => 'Medarbejdere';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Hovedkontor';

  @override
  String get labelDescription => 'Beskrivelse';

  @override
  String get labelLastPrice => 'Seneste kurs';

  @override
  String get labelChange => 'Ændring';

  @override
  String get labelOpen => 'Åbning';

  @override
  String get labelDayHigh => 'Dagens højeste';

  @override
  String get labelDayLow => 'Dagens laveste';

  @override
  String get labelPreviousClose => 'Forrige lukkekurs';

  @override
  String get labelWeek52High => '52-ugers højeste';

  @override
  String get labelWeek52Low => '52-ugers laveste';

  @override
  String get labelAverageVolume10d => 'Gns. volumen (10 dage)';

  @override
  String updatedAt(String time) {
    return 'Opdateret $time';
  }

  @override
  String get labelPeTrailing => 'P/E (historisk)';

  @override
  String get labelPeForward => 'P/E (forventet)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / frit cashflow';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Omsætning (TTM)';

  @override
  String get labelNetIncomeTtm => 'Nettoresultat (TTM)';

  @override
  String get labelGrossMargin => 'Bruttomargin';

  @override
  String get labelOperatingMargin => 'Driftsmargin';

  @override
  String get labelNetMargin => 'Nettomargin';

  @override
  String get labelRoe => 'Egenkapitalforrentning';

  @override
  String get labelRoa => 'Afkast af aktiver';

  @override
  String get labelDebtToEquity => 'Gæld / egenkapital';

  @override
  String get labelCurrentRatio => 'Likviditetsgrad';

  @override
  String get labelRevenueGrowth => 'Omsætningsvækst (YoY)';

  @override
  String get labelEpsGrowth => 'EPS-vækst (YoY)';

  @override
  String get labelDividendYield => 'Udbytteafkast';

  @override
  String get labelDividendPerShare => 'Udbytte pr. aktie';

  @override
  String get labelPayoutRatio => 'Udbytteandel';

  @override
  String get labelConsensus => 'Konsensus';

  @override
  String get ratingStrongBuy => 'Stærkt køb';

  @override
  String get ratingBuy => 'Køb';

  @override
  String get ratingHold => 'Hold';

  @override
  String get ratingSell => 'Sælg';

  @override
  String get ratingStrongSell => 'Stærkt sælg';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analytikere',
      one: '1 analytiker',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Periode: $period';
  }

  @override
  String get noNews => 'Ingen aktuelle nyheder.';

  @override
  String get openArticle => 'Åbn artikel';

  @override
  String get openLinkFailed => 'Linket kunne ikke åbnes.';

  @override
  String get recognitionSummary => 'Sammendrag';

  @override
  String get recognitionEvidence => 'Hvorfor vi tror det';

  @override
  String get recognitionRawText => 'Tekst læst fra billedet';

  @override
  String get errMissingAnthropicKey =>
      'Billedgenkendelse er ikke konfigureret (ingen ANTHROPIC_API_KEY). Indtast tickeren manuelt.';

  @override
  String get errRecognitionUnreachable =>
      'Kunne ikke nå genkendelsestjenesten. Tjek din internetforbindelse.';

  @override
  String errRecognitionHttp(String status) {
    return 'Genkendelsestjenesten returnerede en fejl (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Genkendelsestjenesten kunne ikke behandle dette billede.';

  @override
  String get errRecognitionTruncated =>
      'Svaret fra genkendelsestjenesten blev afbrudt. Prøv igen.';

  @override
  String get errRecognitionBadResponse =>
      'Uventet svar fra genkendelsestjenesten.';

  @override
  String get errRecognitionEmpty =>
      'Genkendelsestjenesten returnerede et tomt svar.';

  @override
  String get errMissingFinnhubKey =>
      'Markedsdata er ikke konfigureret (ingen FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Kunne ikke nå markedsdatatjenesten. Tjek din internetforbindelse.';

  @override
  String get errMarketRateLimited =>
      'For mange forespørgsler til markedsdatatjenesten. Vent et minut.';

  @override
  String errMarketHttp(String status) {
    return 'Markedsdatatjenesten returnerede en fejl (HTTP $status).';
  }

  @override
  String get errMarketBadResponse => 'Uventet svar fra markedsdatatjenesten.';

  @override
  String errNoQuote(String symbol) {
    return 'Ingen kursdata fundet for $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Ingen virksomhedsprofil fundet for $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Demotilstand understøtter kun $symbols. Tilføj en FINNHUB_API_KEY for livedata.';
  }

  @override
  String errUnknown(String detail) {
    return 'Noget gik galt: $detail';
  }

  @override
  String get newSearch => 'Ny søgning';

  @override
  String get recentSearches => 'Seneste';

  @override
  String get noRecentSearches => 'Ingen seneste søgninger endnu.';

  @override
  String get clearRecent => 'Ryd seneste';

  @override
  String get greeting => 'Hvilken aktie skal vi se på?';

  @override
  String get searchHint => 'Ticker eller firmanavn';

  @override
  String get attachImage => 'Vedhæft et billede';

  @override
  String get searchResultsTitle => 'Søgeresultater';

  @override
  String errNoResults(String query) {
    return 'Ingen aktier fundet for ”$query”.';
  }

  @override
  String get quickBarHint => 'Skriv en ticker eller et firmanavn…';

  @override
  String get openFullWindow => 'Åbn vindue';

  @override
  String hotkeyHint(String shortcut) {
    return 'Tryk på $shortcut hvor som helst for at åbne StockLens.';
  }

  @override
  String get trayOpen => 'Åbn StockLens';

  @override
  String get trayQuickSearch => 'Hurtig søgning';

  @override
  String get trayQuit => 'Afslut';

  @override
  String get appearance => 'Udseende';

  @override
  String get themeSystem => 'System';

  @override
  String get themeDark => 'Mørk';

  @override
  String get themeLight => 'Lys';

  @override
  String get back => 'Tilbage';

  @override
  String get aiSectionTitle => 'AI-analyse';

  @override
  String get aiIntro =>
      'Et detaljeret, AI-skrevet overblik: resumé af aktuelle nyheder, forretningen, styrker, risici og skjulte faktorer, værdiansættelse, et kursudsyn med scenarier fra psykologiske, sociologiske, tekniske og makroøkonomiske vinkler samt hvad man skal holde øje med.';

  @override
  String get aiGenerate => 'Generer analyse';

  @override
  String get aiRegenerate => 'Generer igen';

  @override
  String get aiGenerating =>
      'Analysen forberedes… det kan tage et minut eller to.';

  @override
  String get aiSources => 'Kilder';

  @override
  String aiGeneratedAt(String time) {
    return 'Genereret $time';
  }

  @override
  String get aiDisclaimer =>
      'AI-genereret analyse baseret på offentlige data og aktuelle nyheder. Den kan indeholde fejl eller være forældet og er ikke investeringsrådgivning.';

  @override
  String get errAiNotConfigured =>
      'AI-analyse er ikke konfigureret (ingen ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Kunne ikke nå AI-tjenesten. Tjek din internetforbindelse.';

  @override
  String errAiHttp(String status) {
    return 'AI-tjenesten returnerede en fejl (HTTP $status).';
  }

  @override
  String get errAiRefused => 'AI-tjenesten afviste at analysere denne aktie.';

  @override
  String get errAiBadResponse => 'Uventet svar fra AI-tjenesten.';

  @override
  String get sectionChart => 'Kursgraf';

  @override
  String get rangeOneWeek => '1U';

  @override
  String get rangeOneMonth => '1M';

  @override
  String get rangeThreeMonths => '3M';

  @override
  String get rangeOneYear => '1Å';

  @override
  String get rangeFiveYears => '5Å';

  @override
  String get chartUnavailable =>
      'Kurshistorik er ikke tilgængelig fra den aktuelle datakilde.';

  @override
  String get sectionStatements => 'Regnskaber (årlige)';

  @override
  String get labelFiscalYear => 'Regnskabsår';

  @override
  String get labelRevenue => 'Omsætning';

  @override
  String get labelNetIncome => 'Nettoresultat';

  @override
  String get labelTotalAssets => 'Aktiver i alt';

  @override
  String get labelTotalLiabilities => 'Forpligtelser i alt';

  @override
  String get labelEquity => 'Egenkapital';

  @override
  String get labelOperatingCashFlow => 'Pengestrøm fra driften';

  @override
  String get statementsUnavailable =>
      'Der er ingen offentliggjorte regnskaber tilgængelige for denne aktie.';

  @override
  String get launchAtLogin => 'Start ved login';

  @override
  String get hotkeyLabel => 'Global genvej';

  @override
  String get hotkeyRecordHint =>
      'Klik her, og tryk derefter på den nye tastekombination';

  @override
  String get hotkeyReset => 'Gendan standard';

  @override
  String get pasteImage => 'Indsæt billede fra udklipsholderen';

  @override
  String get errClipboardNoImage => 'Der er intet billede i udklipsholderen.';

  @override
  String get favorites => 'Favoritter';

  @override
  String get addToFavorites => 'Føj til favoritter';

  @override
  String get removeFromFavorites => 'Fjern fra favoritter';

  @override
  String get noFavorites =>
      'Ingen favoritter endnu. Tryk på stjernen ved en aktie for at tilføje den.';

  @override
  String get displayCurrency => 'Visningsvaluta';

  @override
  String get displayCurrencyNone => 'Kun aktiens egen valuta';

  @override
  String labelConverted(String currency) {
    return '≈ i $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Kurs: 1 $from = $rate $to (ECB, $date)';
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
