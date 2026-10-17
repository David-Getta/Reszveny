// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian Bokmål (`nb`).
class AppLocalizationsNb extends AppLocalizations {
  AppLocalizationsNb([String locale = 'nb']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

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
    return 'Trykk $shortcut hvor som helst for å åpne WhatStock.';
  }

  @override
  String get trayOpen => 'Åpne WhatStock';

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

  @override
  String get subscription => 'Abonnement';

  @override
  String get planTrial => 'Prøveperiode';

  @override
  String get planNormal => 'Normal';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Ingen aktiv plan';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count analyser per måned';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$days dagers gratis prøveperiode med $count analyser';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days dager igjen av prøveperioden',
      one: '1 dag igjen av prøveperioden',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Den gratis prøveperioden din er over. Velg en plan for å fortsette å analysere.';

  @override
  String analysesRemaining(int remaining, int total) {
    return '$remaining av $total analyser igjen i denne perioden';
  }

  @override
  String extraCredits(int count) {
    return '$count ekstra analyser';
  }

  @override
  String renewsOn(String date) {
    return 'Fornyes $date';
  }

  @override
  String get choosePlan => 'Velg en plan';

  @override
  String get currentPlan => 'Gjeldende plan';

  @override
  String get subscribe => 'Abonner';

  @override
  String get perMonth => '/ måned';

  @override
  String get extraPacksTitle => 'Trenger du flere? Kjøp ekstra analyser';

  @override
  String get extraPacksHint =>
      'Ekstra analyser utløper aldri og brukes etter den månedlige kvoten din.';

  @override
  String get buy => 'Kjøp';

  @override
  String get restorePurchases => 'Gjenopprett kjøp';

  @override
  String get manageSubscription => 'Administrer abonnement';

  @override
  String get purchaseSuccess => 'Takk! Kjøpet ditt er aktivt.';

  @override
  String get purchasePending => 'Kjøpet venter…';

  @override
  String get purchaseFailed => 'Kjøpet kunne ikke fullføres.';

  @override
  String get purchaseCanceled => 'Kjøpet ble avbrutt.';

  @override
  String get billingUnavailable =>
      'Kjøp er ikke tilgjengelig på denne plattformen enda. Abonner på telefonen eller Macen din; planen din fungerer på alle enheter.';

  @override
  String get errQuotaExceeded =>
      'Du har ingen analyser igjen i denne perioden. Oppgrader planen din eller kjøp ekstra analyser.';

  @override
  String get errTrialExpired =>
      'Den gratis prøveperioden din er over. Velg en plan for å fortsette.';

  @override
  String get errNoPlan => 'En aktiv plan kreves for AI-analyse.';

  @override
  String get viewPlans => 'Se planer';

  @override
  String get usageTitle => 'Bruk';

  @override
  String get demoPurchaseNote =>
      'Demofakturering: kjøp simuleres på denne plattformen.';

  @override
  String get mostPopular => 'Mest populær';

  @override
  String get bestValue => 'Best verdi';

  @override
  String get planFeaturesCommon =>
      'Bildegjenkjenning, sanntidsdata, diagrammer, favoritter og alle 120 språk er inkludert i alle planer. Kvoten gjelder AI-analyser.';

  @override
  String get searchLanguages => 'Søk etter språk…';

  @override
  String get noLanguageMatch => 'Ingen språk samsvarer.';

  @override
  String get aiSettings => 'AI-analyse';

  @override
  String get aiLength => 'Lengde';

  @override
  String get aiDepthBrief => 'Kort';

  @override
  String get aiDepthStandard => 'Standard';

  @override
  String get aiDepthDeep => 'Grundig';

  @override
  String get aiDepthBriefDesc => 'Det viktigste, raskt.';

  @override
  String get aiDepthStandardDesc => 'Full rapport med alle deler.';

  @override
  String get aiDepthDeepDesc =>
      'Flere nettsøk, sammenligning med konkurrenter og flere detaljer.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Omtrent $min–$max ord';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'bruker $count analyser',
      one: 'bruker 1 analyse',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Lesernivå';

  @override
  String get aiReaderBeginner => 'Nybegynner';

  @override
  String get aiReaderExperienced => 'Erfaren';

  @override
  String get aiReaderBeginnerDesc =>
      'Enkelt språk; alle fagbegreper forklares.';

  @override
  String get aiReaderExperiencedDesc =>
      'Tettere tekst med vanlig finansiell terminologi.';

  @override
  String get aiCounterArgument => 'Sterkeste motargument';

  @override
  String get aiCounterArgumentDesc =>
      'Sammendraget avsluttes alltid med det sterkeste argumentet mot sin egen konklusjon.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Opptil $count nettsøk per analyse med planen din',
      one: 'Opptil 1 nettsøk per analyse med planen din',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Standardlengde per plan: Normal $normal, Pro $pro, Max $max, Ultra $ultra. Kort bruker 2 færre, Grundig 2 flere.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'opptil $count nettsøk',
      one: 'opptil 1 nettsøk',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count nettsøk per analyse',
      one: '1 nettsøk per analyse',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Denne lengden krever $needed analyser, men du har bare $left igjen. Velg en kortere lengde i Innstillinger eller kjøp flere analyser.';
  }

  @override
  String get outlookMarketMood => 'Markedsstemning';

  @override
  String get moodVeryPessimistic => 'Svært pessimistisk';

  @override
  String get moodPessimistic => 'Pessimistisk';

  @override
  String get moodNeutral => 'Nøytral';

  @override
  String get moodOptimistic => 'Optimistisk';

  @override
  String get moodVeryOptimistic => 'Svært optimistisk';

  @override
  String get scenarioBull => 'Positivt scenario';

  @override
  String get scenarioBase => 'Basisscenario';

  @override
  String get scenarioBear => 'Negativt scenario';

  @override
  String outlookCurrentPrice(String price) {
    return 'Nåværende kurs: $price';
  }

  @override
  String get outlookKeyLevels => 'Viktige nivåer';

  @override
  String get keyLevelSupport => 'Støtte';

  @override
  String get keyLevelResistance => 'Motstand';

  @override
  String get keyLevelAnchor => 'Ankernivå';

  @override
  String get upcomingEvents => 'Kommende hendelser';

  @override
  String get outlookChartNote =>
      'Veiledende intervaller; sannsynlighetene er grove anslag, ikke prognoser.';

  @override
  String get accountTitle => 'Konto';

  @override
  String get signIn => 'Logg inn';

  @override
  String get signOut => 'Logg ut';

  @override
  String get notSignedIn => 'Ikke logget inn';

  @override
  String get accountBenefit =>
      'Logg inn, så fungerer abonnementet ditt på alle enhetene dine.';

  @override
  String get accountSyncedNote =>
      'Abonnementet ditt og de gjenværende analysene er de samme på alle enheter.';

  @override
  String get signInTitle => 'Logg inn på WhatStock';

  @override
  String get emailLabel => 'E-postadresse';

  @override
  String get continueWithEmail => 'Fortsett med e-post';

  @override
  String codeSentTo(String email) {
    return 'Vi har sendt en sekssifret kode til $email. Den er gyldig i 10 minutter.';
  }

  @override
  String get codeLabel => 'Påloggingskode';

  @override
  String get resendCode => 'Send ny kode';

  @override
  String get useDifferentEmail => 'Bruk en annen e-postadresse';

  @override
  String get errInvalidCode => 'Koden er feil eller har utløpt.';

  @override
  String get errInvalidEmail => 'Skriv inn en gyldig e-postadresse.';

  @override
  String get errSignInFailed =>
      'Innloggingen mislyktes. Sjekk tilkoblingen og prøv igjen.';

  @override
  String get checkoutWaiting =>
      'Fullfør betalingen i nettleseren. Appen oppdateres automatisk når den er ferdig.';

  @override
  String get paymentViaStripe =>
      'Sikker betaling i nettleseren via Stripe. Kan sies opp når som helst.';

  @override
  String get paymentViaStore =>
      'Faktureres via App Store- eller Google Play-kontoen din. Kan sies opp når som helst i butikkens innstillinger.';

  @override
  String get keySpace => 'Mellomrom';

  @override
  String get doubleOptionTitle => 'Dobbelttrykk på Tilvalg-tasten';

  @override
  String get doubleOptionSubtitle =>
      'Du kan også åpne WhatStock ved å trykke raskt to ganger på Tilvalg-tasten.';

  @override
  String get doubleOptionPermission =>
      'For at dette også skal fungere i andre apper, må du tillate WhatStock under Systeminnstillinger → Personvern og sikkerhet → Inndataovervåking og deretter åpne appen på nytt.';

  @override
  String get openSystemSettings => 'Åpne Systeminnstillinger';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Trykk $shortcut eller dobbelttrykk på Tilvalg-tasten hvor som helst for å åpne WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Mest sannsynlig';

  @override
  String get longTermToday => 'I dag';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years år',
      one: '1 år',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range per år';
  }

  @override
  String longTermLikely(String price) {
    return 'mest sannsynlig $price';
  }

  @override
  String get confidenceLow => 'Lav sikkerhet';

  @override
  String get confidenceMedium => 'Middels sikkerhet';

  @override
  String get confidenceHigh => 'Høy sikkerhet';

  @override
  String get longTermNote =>
      'De langsiktige intervallene bygger på de oppgitte forutsetningene og blir bredere over tid. Kurser uten utbytte. Grove anslag, ikke prognoser.';

  @override
  String get portfolio => 'Portefølje';

  @override
  String get portfolioEmpty =>
      'Ingenting her ennå. Åpne en aksje og trykk på «Legg til i porteføljen» for å følge beholdningen din.';

  @override
  String get portfolioLocalNote =>
      'Lagres bare på denne enheten. Summene regnes om til ECBs referansekurser; kursene kan være forsinket.';

  @override
  String get addToPortfolio => 'Legg til i porteføljen';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Legg til $symbol';
  }

  @override
  String get portfolioQuantity => 'Antall aksjer';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Pris per aksje ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Kjøpsdato';

  @override
  String get portfolioAdd => 'Legg til';

  @override
  String get portfolioInvalidNumber => 'Skriv inn et tall større enn null.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol er lagt til i porteføljen.';
  }

  @override
  String get portfolioTotalValue => 'Samlet verdi';

  @override
  String get portfolioToday => 'I dag';

  @override
  String get portfolioGainLoss => 'Gevinst/tap';

  @override
  String get portfolioInvested => 'Investert';

  @override
  String get portfolioAllocation => 'Fordeling';

  @override
  String get portfolioPositions => 'Beholdninger';

  @override
  String portfolioAvgCost(String price) {
    return 'snittkurs $price';
  }

  @override
  String get portfolioYourPosition => 'Din beholdning';

  @override
  String get portfolioPurchases => 'Kjøp';

  @override
  String get portfolioRemove => 'Fjern';

  @override
  String get portfolioExcluded =>
      'Beholdninger uten kurs eller valutakurs er ikke med i summene.';

  @override
  String get priceAlerts => 'Kursvarsler';

  @override
  String get setPriceAlert => 'Opprett kursvarsel';

  @override
  String alertDialogTitle(String symbol) {
    return 'Kursvarsel · $symbol';
  }

  @override
  String get alertKindAbove => 'Stiger over';

  @override
  String get alertKindBelow => 'Faller under';

  @override
  String get alertKindMove => 'Beveger seg mye på én dag';

  @override
  String alertTargetPrice(String currency) {
    return 'Kurs ($currency)';
  }

  @override
  String get alertMovePercent => 'Dagsbevegelse (%)';

  @override
  String get alertAlreadyMet => 'Kursen har allerede passert dette nivået.';

  @override
  String get alertSave => 'Opprett varsel';

  @override
  String alertCreated(String symbol) {
    return 'Varsel opprettet for $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Ingen kursvarsler ennå. Åpne en aksje og trykk på klokken.';

  @override
  String get alertsNote =>
      'Varslene sjekkes hvert 5. minutt mens WhatStock kjører. På datamaskinen kjører appen videre i menylinjen eller systemstatusfeltet; på mobilen kommer varsler foreløpig bare når appen er åpen.';

  @override
  String alertDescAbove(String price) {
    return 'Over $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Under $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Dagsbevegelse ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Utløst $date ved $price';
  }

  @override
  String get alertRearm => 'Aktiver igjen';

  @override
  String get alertDelete => 'Slett';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol steg over $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol falt under $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol beveget seg $percent i dag';
  }

  @override
  String alertHitBody(String price) {
    return 'Gjeldende kurs: $price';
  }

  @override
  String get alertOpen => 'Åpne';

  @override
  String get keepInTrayTitle => 'Fortsett å kjøre når vinduet lukkes';

  @override
  String get keepInTraySubtitle =>
      'WhatStock blir værende i menylinjen eller systemstatusfeltet, slik at hurtigtasten og kursvarslene fortsatt virker.';

  @override
  String get termsOfUse => 'Bruksvilkår';

  @override
  String get privacyPolicy => 'Personvernerklæring';

  @override
  String get subscriptionLegal =>
      'Abonnementet fornyes automatisk hver måned til du sier det opp. Ved å abonnere godtar du bruksvilkårene og personvernerklæringen.';

  @override
  String get deleteAccount => 'Slett konto';

  @override
  String get deleteAccountTitle => 'Slette kontoen din?';

  @override
  String get deleteAccountBody =>
      'Kontoen din og alt som er lagret på serveren vår (e-post, kvote, bruk), slettes permanent, og ubrukte analyser går tapt. Et abonnement betalt i nettleseren sies opp med en gang; et abonnement via App Store eller Google Play må sies opp i butikkens innstillinger.';

  @override
  String get deleteLocalData =>
      'Slett også dataene på denne enheten (portefølje, varsler, favoritter, historikk, lagrede analyser)';

  @override
  String get deleteAccountConfirm => 'Slett permanent';

  @override
  String get accountDeleted => 'Kontoen din er slettet.';

  @override
  String get errDeleteAccount =>
      'Kontoen kunne ikke slettes. Sjekk tilkoblingen og prøv igjen.';

  @override
  String get aiTrialBriefNote =>
      'Analyser i prøveperioden er korte og lages med en raskere AI-modell. Med en plan får du vår mest avanserte AI, flere nettsøk og lengdene Standard og Grundig.';

  @override
  String get billingMonthly => 'Månedlig';

  @override
  String get billingYearly => 'Årlig';

  @override
  String get yearlyDiscount => '2 måneder gratis';

  @override
  String get perYear => '/ år';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price per måned';
  }

  @override
  String get subscriptionLegalYearly =>
      'Årsabonnementet fornyes automatisk hvert år til du sier det opp. Ved å abonnere godtar du bruksvilkårene og personvernerklæringen.';

  @override
  String get myAnalyses => 'Mine analyser';

  @override
  String get navAlerts => 'Varsler';

  @override
  String get inviteTitle => 'Lukket forhåndsvisning';

  @override
  String get inviteBody =>
      'WhatStock er foreløpig bare tilgjengelig for inviterte. Skriv inn invitasjonskoden du har fått.';

  @override
  String get inviteCodeLabel => 'Invitasjonskode';

  @override
  String get inviteContinue => 'Fortsett';

  @override
  String get inviteInvalid => 'Denne invitasjonskoden er ikke gyldig.';

  @override
  String get inviteExpired =>
      'Denne invitasjonen har utløpt. Be personen som inviterte deg, om en ny kode.';

  @override
  String get inviteDeviceLimit =>
      'Denne invitasjonskoden er allerede i bruk på maksimalt antall enheter.';

  @override
  String get previewConfidential => 'Konfidensiell forhåndsvisning';

  @override
  String get errPreviewDailyLimit =>
      'Dagens analysegrense for denne forhåndsvisningen er nådd. Prøv igjen i morgen.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'for $count timer siden',
      one: 'for 1 time siden',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'for $count dager siden',
      one: 'for 1 dag siden',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Oppdatere denne analysen?';

  @override
  String staleBody(String age) {
    return 'Den ble laget $age. Kurser, nyheter og resultater kan ha endret seg siden da.';
  }

  @override
  String get staleKeep => 'Vis den forrige';

  @override
  String get staleRefresh => 'Lag en ny';

  @override
  String seeAll(int count) {
    return 'Se alle ($count)';
  }

  @override
  String get searchAnalyses => 'Søk i analysene dine';

  @override
  String get deleteAnalysis => 'Slett';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol-analysen er slettet';
  }

  @override
  String get keyLevelAlertHint =>
      'Trykk på et nivå for å få varsel når kursen når det.';

  @override
  String get shareAnalysisTitle => 'Del analyse';

  @override
  String get shareAsImage => 'Del som bilde';

  @override
  String get shareAsText => 'Del som tekst';

  @override
  String get shareCardFooter => 'Laget med WhatStock';

  @override
  String get shareCardDisclaimer => 'AI-analyse · ikke investeringsråd';

  @override
  String get referralTitle => 'Inviter venner';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ekstra analyser',
      one: '1 ekstra analyse',
    );
    return 'Del koden din. Vennen din får $_temp0 med en gang, og du får det samme etter vennens første analyse.';
  }

  @override
  String get referralYourCode => 'Koden din';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Invitert: $invited · Belønnet: $rewarded';
  }

  @override
  String get referralHaveCode => 'Har du en kode fra en venn?';

  @override
  String get referralRedeem => 'Løs inn';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ekstra analyser lagt til. Velkommen!',
      one: '1 ekstra analyse lagt til. Velkommen!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Denne koden finnes ikke. Sjekk den og prøv igjen.';

  @override
  String get referralErrOwn => 'Du kan ikke løse inn din egen kode.';

  @override
  String get referralErrAlready => 'Du har allerede løst inn en venns kode.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ekstra analyser',
      one: '1 ekstra analyse',
    );
    return 'Jeg analyserer aksjer med WhatStock: ta bilde av en aksje, så forklarer AI-en den. Med koden min $code får du $_temp0.';
  }

  @override
  String get referralCopied => 'Koden er kopiert';

  @override
  String get onboardTitle1 => 'Ta bilde av en aksje';

  @override
  String get onboardBody1 =>
      'En meglerskjerm, en avis eller en firmalogo er nok: WhatStock gjenkjenner aksjen og viser kurs, graf og nøkkeltall.';

  @override
  String get onboardTitle2 => 'Forstå den på minutter';

  @override
  String get onboardBody2 =>
      'AI-analysen forklarer hva som driver aksjen, risikoene, verdsettelsen og tre scenarioer for hvor kursen kan gå – med kilder og på ditt språk.';

  @override
  String get onboardTitle3 => 'Hold deg oppdatert';

  @override
  String get onboardBody3 =>
      'Favoritter, porteføljen din og kursvarsler holder deg oppdatert. Analysene dine blir liggende på enheten din, klare til å åpnes igjen.';

  @override
  String get onboardNext => 'Neste';

  @override
  String get onboardStart => 'Kom i gang';

  @override
  String get onboardSkip => 'Hopp over';

  @override
  String changesTitle(String date) {
    return 'Siden forrige analyse ($date)';
  }

  @override
  String get changesPrice => 'Kurs';

  @override
  String get changesNoMajor => 'Utsiktene har ikke endret seg vesentlig.';

  @override
  String get changesPreviousSummary => 'Forrige sammendrag';

  @override
  String get telemetryTitle => 'Hjelp oss å forbedre WhatStock';

  @override
  String get telemetryBody =>
      'Del anonym bruksstatistikk og krasjrapporter: hvilke funksjoner som brukes, og hva som gikk galt. Aldri aksjene dine, analysene dine eller personopplysninger. Du kan endre dette når som helst i Innstillinger.';

  @override
  String get telemetryAllow => 'Tillat';

  @override
  String get telemetryDecline => 'Nei takk';

  @override
  String get telemetrySetting => 'Anonym statistikk og krasjrapporter';

  @override
  String get telemetrySettingHint =>
      'Hvor ofte funksjoner brukes, og feilrapporter – uten personopplysninger eller innholdet i søkene og analysene dine.';

  @override
  String get askButton => 'Spør om denne analysen';

  @override
  String askTitle(String symbol) {
    return 'Spørsmål om $symbol';
  }

  @override
  String get askIntro =>
      'Spør om hva som helst i analysen: hva en risiko betyr, hva som kan endre utsiktene, hvordan et tall ble regnet ut. Svarene bygger på denne analysen og er ikke investeringsråd.';

  @override
  String get askHint => 'Still et spørsmål…';

  @override
  String get askSend => 'Send';

  @override
  String get askThinking => 'Tenker…';

  @override
  String get askSuggest1 => 'Hva er den største risikoen?';

  @override
  String get askSuggest2 => 'Hva kan endre utsiktene?';

  @override
  String get askSuggest3 => 'Forklar det enkelt';

  @override
  String get askMaxReached =>
      'Det var det siste spørsmålet for denne analysen. Generer en ny analyse for å spørre mer.';

  @override
  String get errAskLimit =>
      'Du har nådd dagens grense for spørsmål. Prøv igjen i morgen.';

  @override
  String get eventTomorrow => 'I morgen';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'om $days dager',
      one: 'om 1 dag',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Kvartalsresultat';

  @override
  String get eventBeforeOpen => 'før børsåpning';

  @override
  String get eventAfterClose => 'etter børsslutt';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS-estimat: $value';
  }

  @override
  String get eventFromAnalysis => 'Fra analysen din';

  @override
  String get eventsHint =>
      'Resultatdatoer for favorittene og porteføljeaksjene dine de neste 90 dagene, og datofestede hendelser som analysene dine har pekt ut.';

  @override
  String get eventsEmpty =>
      'Ingen datofestede hendelser de neste 90 dagene. Legg til favoritter eller porteføljeaksjer for å se resultatdatoene deres her.';

  @override
  String get compareTitle => 'Sammenlign';

  @override
  String get compareAdd => 'Legg til en aksje';

  @override
  String get compareRemove => 'Fjern';

  @override
  String get compareTickerHint => 'Ticker, f.eks. MSFT';

  @override
  String get compareHint =>
      'Nøkkeltall side om side; den beste verdien i hver rad er uthevet. Beløpene er i hver aksjes egen valuta.';

  @override
  String get compareNoAnalysis => 'Ingen analyse ennå';

  @override
  String get portfolioDividends => 'Årlig utbytte';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent direkteavkastning';
  }

  @override
  String get portfolioDividendNote =>
      'Forventet årlig utbytte er basert på utbyttet som er utbetalt de siste 12 månedene; fremtidige utbetalinger er ikke garantert.';

  @override
  String positionDividend(String amount) {
    return 'Utbytte: $amount per år';
  }

  @override
  String get chartAvgCost => 'Ditt snitt';

  @override
  String get chartAlertLevel => 'Kursvarsel';

  @override
  String get marketsToday => 'Markeder i dag';

  @override
  String get notesTitle => 'Mine notater';

  @override
  String get notesHint =>
      'Hvorfor kjøpte du den, hva følger du med på, hva ville fått deg til å selge?';

  @override
  String get notesInfo =>
      'Lagres bare på denne enheten. AI-analysen tar hensyn til notatene dine.';

  @override
  String notesSaved(String date) {
    return 'Lagret $date';
  }

  @override
  String get peersTitle => 'Lignende selskaper';

  @override
  String get portfolioExport => 'Eksporter som CSV';

  @override
  String get portfolioImport => 'Importer fra CSV';

  @override
  String get portfolioImportHint =>
      'Lim inn ett kjøp per linje: ticker, antall, pris, valuta, dato (ÅÅÅÅ-MM-DD). Kolonnene kan skilles med komma, semikolon eller tabulator; overskriftsraden er valgfri.';

  @override
  String get portfolioImportButton => 'Importer';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kjøp lagt til',
      one: '1 kjøp lagt til',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count linjer hoppet over',
      one: '1 linje hoppet over',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Portefølje, favoritter, kursvarsler og notater synkroniseres på alle enhetene dine.';

  @override
  String syncLast(String time) {
    return 'Sist synkronisert $time';
  }

  @override
  String get syncNow => 'Synkroniser nå';

  @override
  String get syncFailed =>
      'Synkroniseringen mislyktes. Det prøves automatisk på nytt.';

  @override
  String get alertEmailTitle => 'E-post når et varsel utløses';

  @override
  String get alertEmailOn =>
      'Vi sjekker varslene dine med noen minutters mellomrom og sender deg en e-post, også når appen er lukket.';

  @override
  String get alertEmailSignIn =>
      'Logg inn med e-postadressen din under Innstillinger for å få varsler på e-post, også når appen er lukket.';

  @override
  String get portfolioHistory => 'Verdiutvikling';

  @override
  String get portfolioReviewTitle => 'AI-porteføljeanalyse';

  @override
  String get portfolioReviewIntro =>
      'AI-en går gjennom hele porteføljen din: konsentrasjon, sektor- og valutaeksponering, risikoer aksjene dine har til felles, og utbytte. Bruker 1 analyse.';

  @override
  String get portfolioReviewButton => 'Analyser porteføljen min';

  @override
  String get portfolioReviewAgain => 'Analyser på nytt';

  @override
  String get portfolioReviewWorking => 'Porteføljen din analyseres…';

  @override
  String get digestTitle => 'Ukentlig oppsummering på e-post';

  @override
  String get digestHint =>
      'Hver mandag: hvordan favorittene og porteføljen din beveget seg forrige uke, og kommende resultatdatoer.';

  @override
  String get benchmarkTitle => 'Sammenlignet med S&P 500';

  @override
  String get benchmarkYours => 'Dine kjøp';

  @override
  String get benchmarkIndex => 'Samme beløp i S&P 500';

  @override
  String benchmarkAhead(String points) {
    return '$points prosentpoeng bedre enn indeksen';
  }

  @override
  String benchmarkBehind(String points) {
    return '$points prosentpoeng bak indeksen';
  }

  @override
  String get benchmarkHint =>
      'Som om hvert kjøp var investert i et S&P 500-indeksfond samme dag. Utbytte ikke medregnet; historisk avkastning forutsier ikke fremtidig avkastning.';

  @override
  String get portfolioSell => 'Selg';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Selg $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Salgspris per aksje ($currency)';
  }

  @override
  String get portfolioSellDate => 'Salgsdato';

  @override
  String get portfolioSellAll => 'Alle';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Du har $quantity';
  }

  @override
  String get portfolioSold => 'Solgt';

  @override
  String get portfolioRealized => 'Realisert';

  @override
  String get portfolioClosed => 'Lukkede posisjoner';

  @override
  String get portfolioClosedNote => 'Alle aksjer solgt';

  @override
  String get portfolioTransactions => 'Transaksjoner';

  @override
  String get portfolioRealizedByYear => 'Realisert gevinst per år';

  @override
  String get portfolioRealizedHint =>
      'Salg avregnes først mot dine eldste kjøp (FIFO) og omregnes til dagens valutakurs. Bruk meglerens oppgave til skattemeldingen.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Siden denne analysen er det publisert nye kvartalsresultater ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Nye resultater';

  @override
  String get portfolioImportBrokers =>
      'Eksporter fra Revolut, Trading 212 og Interactive Brokers gjenkjennes også, med salg; utbytte og innskudd hoppes over.';

  @override
  String get portfolioImportFile => 'Velg en fil';

  @override
  String offlineBanner(String time) {
    return 'Ingen tilkobling – viser sist lagrede data ($time).';
  }

  @override
  String get glossMarketCap =>
      'Hva hele selskapet er verdt på børsen: aksjekurs × antall aksjer.';

  @override
  String get glossSharesOutstanding =>
      'Hvor mange aksjer selskapet har utstedt. Øker tallet, eier hver aksje en mindre bit; tilbakekjøp reduserer det.';

  @override
  String get glossPeTrailing =>
      'Kurs ÷ resultat per aksje de siste 12 månedene: hvor mange år med dagens overskudd du betaler for. Lavere er billigere, men selskaper i rask vekst har som regel høy P/E.';

  @override
  String get glossPeForward =>
      'Som P/E, men med overskuddet analytikerne venter de neste 12 månedene. Lavere enn historisk P/E betyr at overskuddet ventes å øke.';

  @override
  String get glossPb =>
      'Kurs ÷ bokført verdi (eiendeler minus gjeld) per aksje. Rundt 1 betyr at markedet verdsetter selskapet til det det eier på papiret.';

  @override
  String get glossPs =>
      'Markedsverdi ÷ årlig omsetning. Nyttig for selskaper med lite eller ingen overskudd ennå; sammenlign innenfor samme bransje.';

  @override
  String get glossEvToFcf =>
      'Selskapets verdi inkludert gjeld (EV) ÷ kontantene det genererer på et år etter investeringer. Lavere betyr at du får mer kontanter for prisen.';

  @override
  String get glossPeg =>
      'P/E ÷ forventet årlig resultatvekst (%). Rundt 1 regnes ofte som rimelig; den ser P/E i lys av veksten.';

  @override
  String get glossEps =>
      'Resultat per aksje de siste 12 månedene. Stigende EPS over flere år er et av de sterkeste tegnene på et sunt selskap.';

  @override
  String get glossBeta =>
      'Hvor mye aksjen pleier å bevege seg med markedet: 1 = som markedet, 1,5 = omtrent 50 % større svingninger, under 1 = roligere.';

  @override
  String get glossRevenueTtm =>
      'Samlet salg de siste 12 månedene, før alle kostnader.';

  @override
  String get glossNetIncomeTtm =>
      'Overskuddet som er igjen etter alle kostnader, renter og skatt de siste 12 månedene.';

  @override
  String get glossGrossMargin =>
      'Andelen av omsetningen som er igjen etter de direkte kostnadene for produktene. Høy margin betyr ofte prisingsmakt.';

  @override
  String get glossOperatingMargin =>
      'Andelen av omsetningen som er igjen etter driften (lønn, husleie, markedsføring), før renter og skatt.';

  @override
  String get glossNetMargin =>
      'Andelen av omsetningen som blir endelig overskudd. 20 % betyr at 20 av hver 100 i salg er overskudd.';

  @override
  String get glossRoe =>
      'Egenkapitalavkastning: årlig overskudd ÷ eiernes kapital. Viser hvor godt ledelsen bruker aksjonærenes penger; over omtrent 15 % er sterkt.';

  @override
  String get glossRoa =>
      'Totalkapitalavkastning: årlig overskudd ÷ alt selskapet eier. Sammenlign innenfor samme bransje.';

  @override
  String get glossDebtToEquity =>
      'Gjeld ÷ eiernes kapital. Høyere betyr mer lånte penger: mer risiko når rentene stiger eller virksomheten bremser opp.';

  @override
  String get glossCurrentRatio =>
      'Omløpsmidler ÷ regninger som forfaller innen et år. Over 1 betyr at selskapet kan dekke de kortsiktige regningene sine.';

  @override
  String get glossRevenueGrowth =>
      'Hvor mye omsetningen har økt sammenlignet med året før.';

  @override
  String get glossEpsGrowth =>
      'Hvor mye resultatet per aksje har økt sammenlignet med året før.';

  @override
  String get glossDividendYield =>
      'Årlig utbytte ÷ aksjekurs: kontantinntekten du får per år, i prosent av det du betaler.';

  @override
  String get glossDividendPerShare =>
      'Utbyttet som er utbetalt per aksje det siste året.';

  @override
  String get glossPayoutRatio =>
      'Andelen av overskuddet som deles ut som utbytte. Over 100 % betaler selskapet ut mer enn det tjener, og det varer sjelden.';

  @override
  String get glossTitle => 'Hva betyr det?';

  @override
  String get watchNewsTitle => 'Nyheter om aksjene dine';

  @override
  String get undo => 'Angre';

  @override
  String get watchSort => 'Sorter';

  @override
  String get watchSortOwn => 'Min rekkefølge';

  @override
  String get watchSortGainers => 'Største stigning først';

  @override
  String get watchSortLosers => 'Største fall først';

  @override
  String get watchSortName => 'Etter ticker (A–Z)';

  @override
  String get watchHint =>
      'Dra i håndtaket for å endre rekkefølgen, sveip til venstre for å fjerne. Linjen viser de siste 30 dagene.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: analysen din er klar.';
  }

  @override
  String alertFromCost(String price) {
    return 'Ut fra din gjennomsnittlige kjøpspris ($price):';
  }

  @override
  String get briefTitle => 'I dag med aksjene dine';

  @override
  String get briefButton => 'Oppsummer dagen';

  @override
  String get briefHint =>
      'Et kort KI-sammendrag av hvordan porteføljen og favorittene dine beveget seg i dag, og hva de siste nyhetene sier om dem. Bruker ingen analyse.';

  @override
  String get briefRefresh => 'Oppdater';

  @override
  String get sectionEarnings => 'Kvartalsresultater';

  @override
  String earningsNext(String date) {
    return 'Neste rapport: $date';
  }

  @override
  String get earningsExpected => 'Forventet EPS';

  @override
  String get earningsReported => 'Rapportert EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'På eller over forventet EPS i $beats av de siste $total kvartalene',
      one: 'På eller over forventet EPS i $beats av 1 kvartal',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol legger frem kvartalsresultat i morgen';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol legger frem kvartalsresultat i dag';
  }

  @override
  String get earningsRemindersTitle => 'Resultatpåminnelser';

  @override
  String get earningsRemindersSubtitle =>
      'Et varsel dagen før favorittene dine eller aksjene i porteføljen din legger frem kvartalsresultat';

  @override
  String addAllToFavorites(int count) {
    return 'Legg alle til i favoritter ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Importer fra skjermbilde';

  @override
  String get holdingsReading => 'Leser posisjonene dine…';

  @override
  String get holdingsReviewTitle => 'Posisjoner funnet';

  @override
  String get holdingsReviewHint =>
      'Sjekk tallene før du legger dem til. Prisen er din gjennomsnittlige kjøpspris per aksje, ikke dagens kurs.';

  @override
  String get holdingsNoPrice => 'Ingen gjennomsnittlig kjøpspris på bildet';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Legg til $count posisjoner',
      one: 'Legg til 1 posisjon',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Fant ingen aksjeposisjoner på dette bildet. Prøv et skjermbilde av beholdnings- eller posisjonssiden hos megleren din.';

  @override
  String get week52Range => '52-ukers intervall';

  @override
  String week52BelowHigh(String percent) {
    return '$percent under 52-ukers høyeste';
  }

  @override
  String get week52AtHigh => 'På 52-ukers høyeste';

  @override
  String get alertKindTrailing => 'Faller fra toppen';

  @override
  String get alertTrailingPercent => 'Fall fra toppen (%)';

  @override
  String get alertTrailingHint =>
      'Følger kursen oppover: varsler når kursen faller så mye fra det høyeste nivået siden du satte varselet.';

  @override
  String alertDescTrailing(String percent) {
    return '$percent fall fra toppen';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'topp hittil: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol falt $percent fra toppen';
  }

  @override
  String get sectionInsiders => 'Innsidehandler';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kjøp',
      one: '1 kjøp',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count salg',
      one: '1 salg',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Netto: $shares aksjer';
  }

  @override
  String get insiderBuy => 'Kjøpte';

  @override
  String get insiderSell => 'Solgte';

  @override
  String get insiderHint =>
      'Kjøp og salg i det åpne markedet utført av ledere og styremedlemmer de siste 90 dagene (SEC Form 4). Utøvelse av opsjoner og aksjetildelinger telles ikke med.';

  @override
  String get insiderNone =>
      'Ingen innsidekjøp eller -salg i det åpne markedet de siste 90 dagene.';

  @override
  String get analystTrend => 'Slik har synene endret seg måned for måned';

  @override
  String get watchListAll => 'Alle';

  @override
  String get watchListNew => 'Ny liste';

  @override
  String get watchListName => 'Listenavn';

  @override
  String get watchListRename => 'Gi listen nytt navn';

  @override
  String get watchListDelete => 'Slett listen';

  @override
  String get watchListAddTo => 'Legg til i en liste';

  @override
  String get watchListEmpty =>
      'Ingen aksjer i denne listen ennå. Trykk på listeknappen ved siden av en aksje for å legge den til.';

  @override
  String get portfolioAskTitle => 'Spørsmål om porteføljen din';

  @override
  String get rangeYtd => 'I år';

  @override
  String get backupTitle => 'Sikkerhetskopi';

  @override
  String get backupSave => 'Lagre sikkerhetskopi';

  @override
  String get backupSaveHint =>
      'Favorittene, listene, porteføljen, varslene og notatene dine i én fil.';

  @override
  String get backupRestore => 'Gjenopprett fra sikkerhetskopi';

  @override
  String get backupRestoreHint =>
      'Legger til det som er i filen; ingenting du har nå, blir slettet.';

  @override
  String get backupRestored => 'Sikkerhetskopien er gjenopprettet.';

  @override
  String get backupInvalid =>
      'Denne filen er ikke en WhatStock-sikkerhetskopi.';

  @override
  String get allocationPositions => 'Aksjer';

  @override
  String get allocationSectors => 'Sektorer';

  @override
  String get allocationCurrencies => 'Valutaer';

  @override
  String get compareReturn1y => '1-års avkastning';

  @override
  String get compareFromHigh => 'Fra 52-ukers høyeste';

  @override
  String get briefAutoTitle => 'Daglig sammendrag hver morgen';

  @override
  String get briefAutoSubtitle =>
      '«I dag med aksjene dine» lages automatisk etter kl. 07.00 mens appen kjører; på datamaskiner får du beskjed med et varsel. Bruker av den daglige spørsmålskvoten din, ikke en analyse.';

  @override
  String get targetsButton => 'Målfordeling';

  @override
  String get targetsTitle => 'Målfordeling';

  @override
  String get targetsHint =>
      'Angi hvor stor andel av porteføljen hver aksje skal ha. La feltet stå tomt for ingen mål. Appen viser deretter hva du bør kjøpe eller selge for å komme dit.';

  @override
  String targetsSum(String percent) {
    return 'Totalt: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Kjøp ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Selg ≈ $amount';
  }

  @override
  String get rebalanceOk => 'På mål';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol slo forventet EPS';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol var under forventet EPS';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'Rapportert EPS $actual, forventet $estimate';
  }

  @override
  String get newsExplain => 'Hva betyr dette?';

  @override
  String get newsExplainNote =>
      'AI-forklaring basert kun på overskriften og sammendraget. Det er ikke investeringsråd. Bruker av den daglige spørsmålskvoten din, ikke en analyse.';

  @override
  String get watchAlertAll => 'Varsel ved store daglige bevegelser';

  @override
  String get watchAlertAllHint =>
      'Et kursvarsel for hver aksje i denne listen som slår til når den beveger seg så mye på én dag, opp eller ned. Aksjer som allerede har et, beholder sitt.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count varsler opprettet',
      one: '1 varsel opprettet',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Eksporter realiserte gevinster (CSV)';

  @override
  String get portfolioAnnualReturn => 'Årlig avkastning';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / år';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Pengevektet årlig avkastning (XIRR): tar hensyn til når du kjøpte og solgte, slik at penger som er lagt til senere, ikke forvrenger den. Vises når det første kjøpet ditt er minst ett år gammelt; utbytte er ikke inkludert.';

  @override
  String get eventsAddToCalendar => 'Legg til i kalender (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Porteføljevarsel';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Et varsel når hele porteføljen din beveger seg så mye på én dag.';

  @override
  String get portfolioMoveAlertOff => 'Av';

  @override
  String portfolioMoveUp(String percent) {
    return 'Porteføljen din er opp $percent i dag';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Porteføljen din er ned $percent i dag';
  }

  @override
  String get whatIfTitle => 'Hva om du hadde investert?';

  @override
  String get whatIfAmount => 'Beløp';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount investert for $period siden ville i dag vært verdt';
  }

  @override
  String get whatIfNote =>
      'Kun basert på aksjekursen: utbytte, gebyrer og skatt er ikke tatt med. Tidligere avkastning forutsier ikke fremtidig avkastning.';

  @override
  String get watchShare => 'Del listen';

  @override
  String get watchImport => 'Legg til tickere';

  @override
  String get watchImportHint =>
      'Lim inn tickere atskilt med komma, mellomrom eller linjeskift – for eksempel en liste noen har delt med deg.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aksjer lagt til',
      one: '1 aksje lagt til',
      zero: 'Ingen nye aksjer',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Største først';

  @override
  String get positionsSortGain => 'Høyest totalavkastning først';

  @override
  String get positionsSortToday => 'Best i dag først';

  @override
  String get chartMyBuys => 'Dine kjøp';

  @override
  String get chartMySells => 'Dine salg';

  @override
  String get shortcutsTitle => 'Hurtigtaster';

  @override
  String usMarketOpen(String time) {
    return 'USA-markedet åpent · stenger om $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'USA-markedet stengt · åpner om $time';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes min';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours t $minutes min';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days d $hours t';
  }

  @override
  String get portfolioGoalSet => 'Sett et mål';

  @override
  String get portfolioGoalTitle => 'Porteføljemål';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent av målet ditt på $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Målet på $amount er nådd';
  }

  @override
  String get portfolioGoalRemove => 'Fjern målet';

  @override
  String get alertEdit => 'Rediger varsel';

  @override
  String get positionOpenLots => 'Fortsatt eid (eldste først)';

  @override
  String get lotRemoved => 'Transaksjonen er slettet';
}
