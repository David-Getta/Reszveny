// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian Bokmål (`nb`).
class AppLocalizationsNb extends AppLocalizations {
  AppLocalizationsNb([String locale = 'nb']) : super(locale);

  @override
  String get appTitle => 'StockLens';

  @override
  String get homeTagline => 'Fotografer en aksje og lær alt om den.';

  @override
  String get homeHint =>
      'Et aksjebrev, en skjerm i en meglerapp, en avis eller en firmalogo – alt som identifiserer en aksje.';

  @override
  String get takePhoto => 'Ta et bilde';

  @override
  String get chooseFromGallery => 'Velg fra galleri';

  @override
  String get chooseImage => 'Velg et bilde';

  @override
  String get enterTickerManually => 'Skriv inn ticker manuelt';

  @override
  String get tickerInputLabel => 'Tickersymbol';

  @override
  String get tickerInputHint => 'f.eks. AAPL';

  @override
  String get lookUp => 'Slå opp';

  @override
  String demoModeBanner(String symbols) {
    return 'Demomodus – ingen markedsdatanøkkel konfigurert. Eksempeldata finnes for: $symbols.';
  }

  @override
  String get recognizing => 'Analyserer bildet…';

  @override
  String get loadingData => 'Laster data…';

  @override
  String get noCandidatesTitle => 'Ingen aksje gjenkjent';

  @override
  String get noCandidatesBody =>
      'Vi kunne ikke identifisere en aksje i dette bildet. Prøv et skarpere bilde, eller skriv inn tickeren manuelt.';

  @override
  String get whatWeSaw => 'Hva vi så';

  @override
  String get chooseCandidateTitle => 'Hvilken aksje mente du?';

  @override
  String confidencePercent(int percent) {
    return '$percent% sikkerhet';
  }

  @override
  String get settings => 'Innstillinger';

  @override
  String get language => 'Språk';

  @override
  String get systemLanguage => 'Systemstandard';

  @override
  String get about => 'Om';

  @override
  String get disclaimer =>
      'Denne appen gir kun informasjon og er ikke investeringsråd. Data kan være forsinket eller unøyaktige.';

  @override
  String dataSource(String source) {
    return 'Datakilde: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Gjenkjenning: $source';
  }

  @override
  String get retry => 'Prøv igjen';

  @override
  String get cancel => 'Avbryt';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Lukk';

  @override
  String get errorGeneric => 'Noe gikk galt.';

  @override
  String get errorSectionUnavailable => 'Denne delen kunne ikke lastes.';

  @override
  String get notAvailable => 'ikke tilgj.';

  @override
  String get sectionIdentity => 'Identifikasjon';

  @override
  String get sectionPrice => 'Kurs';

  @override
  String get sectionValuation => 'Verdsettelse';

  @override
  String get sectionFinancials => 'Nøkkeltall';

  @override
  String get sectionDividend => 'Utbytte';

  @override
  String get sectionProfile => 'Selskapsprofil';

  @override
  String get sectionAnalysts => 'Analytikeranbefalinger';

  @override
  String get sectionNews => 'Nyheter';

  @override
  String get sectionRecognition => 'Gjenkjenningsdetaljer';

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
  String get labelIndustry => 'Bransje';

  @override
  String get labelSector => 'Sektor';

  @override
  String get labelWebsite => 'Nettsted';

  @override
  String get labelIpoDate => 'IPO-dato';

  @override
  String get labelMarketCap => 'Markedsverdi';

  @override
  String get labelSharesOutstanding => 'Utestående aksjer';

  @override
  String get labelEmployees => 'Ansatte';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Hovedkontor';

  @override
  String get labelDescription => 'Beskrivelse';

  @override
  String get labelLastPrice => 'Siste kurs';

  @override
  String get labelChange => 'Endring';

  @override
  String get labelOpen => 'Åpning';

  @override
  String get labelDayHigh => 'Dagens høyeste';

  @override
  String get labelDayLow => 'Dagens laveste';

  @override
  String get labelPreviousClose => 'Forrige sluttkurs';

  @override
  String get labelWeek52High => '52-ukers høyeste';

  @override
  String get labelWeek52Low => '52-ukers laveste';

  @override
  String get labelAverageVolume10d => 'Gj.sn. volum (10 dager)';

  @override
  String updatedAt(String time) {
    return 'Oppdatert $time';
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
  String get labelEvToFcf => 'EV / fri kontantstrøm';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Omsetning (TTM)';

  @override
  String get labelNetIncomeTtm => 'Nettoresultat (TTM)';

  @override
  String get labelGrossMargin => 'Bruttomargin';

  @override
  String get labelOperatingMargin => 'Driftsmargin';

  @override
  String get labelNetMargin => 'Nettomargin';

  @override
  String get labelRoe => 'Egenkapitalavkastning';

  @override
  String get labelRoa => 'Totalkapitalavkastning';

  @override
  String get labelDebtToEquity => 'Gjeld / egenkapital';

  @override
  String get labelCurrentRatio => 'Likviditetsgrad';

  @override
  String get labelRevenueGrowth => 'Omsetningsvekst (YoY)';

  @override
  String get labelEpsGrowth => 'EPS-vekst (YoY)';

  @override
  String get labelDividendYield => 'Direkteavkastning';

  @override
  String get labelDividendPerShare => 'Utbytte per aksje';

  @override
  String get labelPayoutRatio => 'Utbytteandel';

  @override
  String get labelConsensus => 'Konsensus';

  @override
  String get ratingStrongBuy => 'Sterkt kjøp';

  @override
  String get ratingBuy => 'Kjøp';

  @override
  String get ratingHold => 'Hold';

  @override
  String get ratingSell => 'Selg';

  @override
  String get ratingStrongSell => 'Sterkt selg';

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
  String get noNews => 'Ingen aktuelle nyheter.';

  @override
  String get openArticle => 'Åpne artikkel';

  @override
  String get openLinkFailed => 'Kunne ikke åpne lenken.';

  @override
  String get recognitionSummary => 'Sammendrag';

  @override
  String get recognitionEvidence => 'Hvorfor vi tror det';

  @override
  String get recognitionRawText => 'Tekst lest fra bildet';

  @override
  String get errMissingAnthropicKey =>
      'Bildegjenkjenning er ikke konfigurert (ingen ANTHROPIC_API_KEY). Skriv inn tickeren manuelt.';

  @override
  String get errRecognitionUnreachable =>
      'Kunne ikke nå gjenkjenningstjenesten. Sjekk internettforbindelsen din.';

  @override
  String errRecognitionHttp(String status) {
    return 'Gjenkjenningstjenesten returnerte en feil (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Gjenkjenningstjenesten kunne ikke behandle dette bildet.';

  @override
  String get errRecognitionTruncated =>
      'Svaret fra gjenkjenningstjenesten ble avbrutt. Prøv igjen.';

  @override
  String get errRecognitionBadResponse =>
      'Uventet svar fra gjenkjenningstjenesten.';

  @override
  String get errRecognitionEmpty =>
      'Gjenkjenningstjenesten returnerte et tomt svar.';

  @override
  String get errMissingFinnhubKey =>
      'Markedsdata er ikke konfigurert (ingen FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Kunne ikke nå markedsdatatjenesten. Sjekk internettforbindelsen din.';

  @override
  String get errMarketRateLimited =>
      'For mange forespørsler til markedsdatatjenesten. Vent et minutt.';

  @override
  String errMarketHttp(String status) {
    return 'Markedsdatatjenesten returnerte en feil (HTTP $status).';
  }

  @override
  String get errMarketBadResponse => 'Uventet svar fra markedsdatatjenesten.';

  @override
  String errNoQuote(String symbol) {
    return 'Ingen kursdata funnet for $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Ingen selskapsprofil funnet for $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Demomodus støtter bare $symbols. Legg til en FINNHUB_API_KEY for sanntidsdata.';
  }

  @override
  String errUnknown(String detail) {
    return 'Noe gikk galt: $detail';
  }

  @override
  String get newSearch => 'Nytt søk';

  @override
  String get recentSearches => 'Nylige';

  @override
  String get noRecentSearches => 'Ingen nylige søk enda.';

  @override
  String get clearRecent => 'Tøm nylige';

  @override
  String get greeting => 'Hvilken aksje skal vi se på?';

  @override
  String get searchHint => 'Ticker eller firmanavn';

  @override
  String get attachImage => 'Legg ved et bilde';

  @override
  String get searchResultsTitle => 'Søkeresultater';

  @override
  String errNoResults(String query) {
    return 'Ingen aksjer funnet for «$query».';
  }

  @override
  String get quickBarHint => 'Skriv inn en ticker eller et firmanavn…';

  @override
  String get openFullWindow => 'Åpne vindu';

  @override
  String hotkeyHint(String shortcut) {
    return 'Trykk $shortcut hvor som helst for å åpne StockLens.';
  }

  @override
  String get trayOpen => 'Åpne StockLens';

  @override
  String get trayQuickSearch => 'Hurtigsøk';

  @override
  String get trayQuit => 'Avslutt';

  @override
  String get appearance => 'Utseende';

  @override
  String get themeSystem => 'System';

  @override
  String get themeDark => 'Mørk';

  @override
  String get themeLight => 'Lys';

  @override
  String get back => 'Tilbake';

  @override
  String get aiSectionTitle => 'AI-analyse';

  @override
  String get aiIntro =>
      'En detaljert, AI-skrevet oversikt: sammendrag av aktuelle nyheter, virksomheten, styrker, risikoer og skjulte faktorer, verdsettelse, et kursutsyn med scenarioer fra psykologiske, sosiologiske, tekniske og makroøkonomiske vinkler, og hva du bør følge med på.';

  @override
  String get aiGenerate => 'Generer analyse';

  @override
  String get aiRegenerate => 'Generer på nytt';

  @override
  String get aiGenerating =>
      'Analysen forberedes… det kan ta et minutt eller to.';

  @override
  String get aiSources => 'Kilder';

  @override
  String aiGeneratedAt(String time) {
    return 'Generert $time';
  }

  @override
  String get aiDisclaimer =>
      'AI-generert analyse basert på offentlige data og aktuelle nyheter. Den kan inneholde feil eller være utdatert, og er ikke investeringsråd.';

  @override
  String get errAiNotConfigured =>
      'AI-analyse er ikke konfigurert (ingen ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Kunne ikke nå AI-tjenesten. Sjekk internettforbindelsen din.';

  @override
  String errAiHttp(String status) {
    return 'AI-tjenesten returnerte en feil (HTTP $status).';
  }

  @override
  String get errAiRefused => 'AI-tjenesten avslo å analysere denne aksjen.';

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
      'Kurshistorikk er ikke tilgjengelig fra den gjeldende datakilden.';

  @override
  String get sectionStatements => 'Regnskap (årlig)';

  @override
  String get labelFiscalYear => 'Regnskapsår';

  @override
  String get labelRevenue => 'Omsetning';

  @override
  String get labelNetIncome => 'Nettoresultat';

  @override
  String get labelTotalAssets => 'Sum eiendeler';

  @override
  String get labelTotalLiabilities => 'Sum gjeld';

  @override
  String get labelEquity => 'Egenkapital';

  @override
  String get labelOperatingCashFlow => 'Kontantstrøm fra drift';

  @override
  String get statementsUnavailable =>
      'Det finnes ingen rapporterte regnskaper for denne aksjen.';

  @override
  String get launchAtLogin => 'Start ved innlogging';

  @override
  String get hotkeyLabel => 'Global hurtigtast';

  @override
  String get hotkeyRecordHint =>
      'Klikk her, og trykk deretter den nye tastekombinasjonen';

  @override
  String get hotkeyReset => 'Tilbakestill til standard';

  @override
  String get pasteImage => 'Lim inn bilde fra utklippstavlen';

  @override
  String get errClipboardNoImage => 'Det er ikke noe bilde på utklippstavlen.';

  @override
  String get favorites => 'Favoritter';

  @override
  String get addToFavorites => 'Legg til i favoritter';

  @override
  String get removeFromFavorites => 'Fjern fra favoritter';

  @override
  String get noFavorites =>
      'Ingen favoritter ennå. Trykk på stjernen ved en aksje for å legge den til.';

  @override
  String get displayCurrency => 'Visningsvaluta';

  @override
  String get displayCurrencyNone => 'Kun aksjens egen valuta';

  @override
  String labelConverted(String currency) {
    return '≈ i $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Kurs: 1 $from = $rate $to (ESB, $date)';
  }

  @override
  String get updates => 'Oppdateringer';

  @override
  String currentVersion(String version) {
    return 'Versjon $version';
  }

  @override
  String get autoUpdate => 'Installer oppdateringer automatisk';

  @override
  String get checkForUpdates => 'Se etter oppdateringer';

  @override
  String get updateChecking => 'Ser etter oppdateringer…';

  @override
  String get updateUpToDate => 'Du har den nyeste versjonen.';

  @override
  String updateAvailable(String version) {
    return 'Versjon $version er tilgjengelig.';
  }

  @override
  String get updateDownloading => 'Oppdateringen lastes ned i bakgrunnen…';

  @override
  String get updateDownloaded =>
      'Oppdateringen er klar. Start på nytt for å installere den.';

  @override
  String get updateNow => 'Oppdater';

  @override
  String get restartNow => 'Start på nytt';

  @override
  String get updatesViaStore =>
      'Oppdateringer kommer automatisk via appbutikken.';

  @override
  String get updateCheckFailed => 'Kunne ikke se etter oppdateringer.';
}
