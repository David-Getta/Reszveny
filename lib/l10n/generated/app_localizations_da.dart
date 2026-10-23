// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

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
  String get labelYieldOnCost => 'Afkast på købskurs';

  @override
  String get labelDividendGrowth5y => 'Udbyttevækst (5 år)';

  @override
  String get dividendNone => 'Intet udbytte udbetalt de seneste 12 måneder.';

  @override
  String get dividendOnYourShares => 'På dine aktier, om året';

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
    return 'Tryk på $shortcut hvor som helst for at åbne WhatStock.';
  }

  @override
  String get trayOpen => 'Åbn WhatStock';

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
  String get updates => 'Opdateringer';

  @override
  String currentVersion(String version) {
    return 'Version $version';
  }

  @override
  String get autoUpdate => 'Installer opdateringer automatisk';

  @override
  String get checkForUpdates => 'Søg efter opdateringer';

  @override
  String get updateChecking => 'Søger efter opdateringer…';

  @override
  String get updateUpToDate => 'Du har den nyeste version.';

  @override
  String updateAvailable(String version) {
    return 'Version $version er tilgængelig.';
  }

  @override
  String get updateDownloading => 'Opdateringen downloades i baggrunden…';

  @override
  String get updateDownloaded =>
      'Opdateringen er klar. Genstart for at installere den.';

  @override
  String get updateNow => 'Opdater';

  @override
  String get restartNow => 'Genstart';

  @override
  String get updatesViaStore =>
      'Opdateringer kommer automatisk via appbutikken.';

  @override
  String get updateCheckFailed => 'Kunne ikke søge efter opdateringer.';

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
    return '$count analyser pr. måned';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$days dages gratis prøveperiode med $count analyser';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days dage tilbage af prøveperioden',
      one: '1 dag tilbage af prøveperioden',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Din gratis prøveperiode er udløbet. Vælg en plan for at fortsætte med at analysere.';

  @override
  String analysesRemaining(int remaining, int total) {
    return '$remaining af $total analyser tilbage i denne periode';
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
  String get choosePlan => 'Vælg en plan';

  @override
  String get currentPlan => 'Nuværende plan';

  @override
  String get subscribe => 'Abonnér';

  @override
  String get perMonth => '/ måned';

  @override
  String get extraPacksTitle => 'Brug for flere? Køb ekstra analyser';

  @override
  String get extraPacksHint =>
      'Ekstra analyser udløber aldrig og bruges efter din månedlige kvote.';

  @override
  String get buy => 'Køb';

  @override
  String get restorePurchases => 'Gendan køb';

  @override
  String get manageSubscription => 'Administrer abonnement';

  @override
  String get purchaseSuccess => 'Tak! Dit køb er aktivt.';

  @override
  String get purchasePending => 'Købet afventer…';

  @override
  String get purchaseFailed => 'Købet kunne ikke gennemføres.';

  @override
  String get purchaseCanceled => 'Købet blev annulleret.';

  @override
  String get billingUnavailable =>
      'Køb er endnu ikke tilgængelige på denne platform. Abonnér på din telefon eller Mac; din plan virker på alle enheder.';

  @override
  String get errQuotaExceeded =>
      'Du har ingen analyser tilbage i denne periode. Opgrader din plan, eller køb ekstra analyser.';

  @override
  String get errTrialExpired =>
      'Din gratis prøveperiode er udløbet. Vælg en plan for at fortsætte.';

  @override
  String get errNoPlan => 'Der kræves en aktiv plan til AI-analyse.';

  @override
  String get viewPlans => 'Se planer';

  @override
  String get usageTitle => 'Forbrug';

  @override
  String get demoPurchaseNote =>
      'Demofakturering: køb simuleres på denne platform.';

  @override
  String get mostPopular => 'Mest populær';

  @override
  String get bestValue => 'Bedste værdi';

  @override
  String get planFeaturesCommon =>
      'Fotogenkendelse, livedata, diagrammer, favoritter og alle 120 sprog er inkluderet i alle planer. Kvoten dækker AI-analyser.';

  @override
  String get searchLanguages => 'Søg efter sprog…';

  @override
  String get noLanguageMatch => 'Intet sprog matcher.';

  @override
  String get aiSettings => 'AI-analyse';

  @override
  String get aiLength => 'Længde';

  @override
  String get aiDepthBrief => 'Kort';

  @override
  String get aiDepthStandard => 'Standard';

  @override
  String get aiDepthDeep => 'Dybdegående';

  @override
  String get aiDepthBriefDesc => 'Det vigtigste, hurtigt.';

  @override
  String get aiDepthStandardDesc => 'Fuld rapport med alle sektioner.';

  @override
  String get aiDepthDeepDesc =>
      'Flere websøgninger, sammenligning med konkurrenter og flere detaljer.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Ca. $min–$max ord';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'bruger $count analyser',
      one: 'bruger 1 analyse',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Læserniveau';

  @override
  String get aiReaderBeginner => 'Begynder';

  @override
  String get aiReaderExperienced => 'Erfaren';

  @override
  String get aiReaderBeginnerDesc => 'Enkelt sprog; alle fagudtryk forklares.';

  @override
  String get aiReaderExperiencedDesc =>
      'Tættere tekst med almindelig finansiel terminologi.';

  @override
  String get aiCounterArgument => 'Stærkeste modargument';

  @override
  String get aiCounterArgumentDesc =>
      'Resuméet slutter altid med det stærkeste argument imod sin egen konklusion.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Op til $count websøgninger pr. analyse med din plan',
      one: 'Op til 1 websøgning pr. analyse med din plan',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Standardlængde pr. plan: Normal $normal, Pro $pro, Max $max, Ultra $ultra. Kort bruger 2 færre, Dybdegående 2 flere.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'op til $count websøgninger',
      one: 'op til 1 websøgning',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count websøgninger pr. analyse',
      one: '1 websøgning pr. analyse',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Denne længde kræver $needed analyser, men du har kun $left tilbage. Vælg en kortere længde i Indstillinger, eller køb flere analyser.';
  }

  @override
  String get outlookMarketMood => 'Markedsstemning';

  @override
  String get moodVeryPessimistic => 'Meget pessimistisk';

  @override
  String get moodPessimistic => 'Pessimistisk';

  @override
  String get moodNeutral => 'Neutral';

  @override
  String get moodOptimistic => 'Optimistisk';

  @override
  String get moodVeryOptimistic => 'Meget optimistisk';

  @override
  String get scenarioBull => 'Positivt scenarie';

  @override
  String get scenarioBase => 'Basisscenarie';

  @override
  String get scenarioBear => 'Negativt scenarie';

  @override
  String outlookCurrentPrice(String price) {
    return 'Aktuel kurs: $price';
  }

  @override
  String get outlookKeyLevels => 'Vigtige niveauer';

  @override
  String get keyLevelSupport => 'Støtte';

  @override
  String get keyLevelResistance => 'Modstand';

  @override
  String get keyLevelAnchor => 'Ankerniveau';

  @override
  String get upcomingEvents => 'Kommende begivenheder';

  @override
  String get outlookChartNote =>
      'Vejledende intervaller; sandsynlighederne er grove vurderinger, ikke forudsigelser.';

  @override
  String get accountTitle => 'Konto';

  @override
  String get signIn => 'Log ind';

  @override
  String get signOut => 'Log ud';

  @override
  String get notSignedIn => 'Ikke logget ind';

  @override
  String get accountBenefit =>
      'Log ind, så dit abonnement virker på alle dine enheder.';

  @override
  String get accountSyncedNote =>
      'Dit abonnement og dine resterende analyser er de samme på alle enheder.';

  @override
  String get signInTitle => 'Log ind på WhatStock';

  @override
  String get emailLabel => 'E-mailadresse';

  @override
  String get continueWithEmail => 'Fortsæt med e-mail';

  @override
  String codeSentTo(String email) {
    return 'Vi har sendt en 6-cifret kode til $email. Den er gyldig i 10 minutter.';
  }

  @override
  String get codeLabel => 'Login-kode';

  @override
  String get resendCode => 'Send en ny kode';

  @override
  String get useDifferentEmail => 'Brug en anden e-mail';

  @override
  String get errInvalidCode => 'Koden er forkert eller udløbet.';

  @override
  String get errInvalidEmail => 'Indtast en gyldig e-mailadresse.';

  @override
  String get errSignInFailed =>
      'Login mislykkedes. Tjek din forbindelse, og prøv igen.';

  @override
  String get checkoutWaiting =>
      'Gennemfør betalingen i din browser. Appen opdateres automatisk, når den er gennemført.';

  @override
  String get paymentViaStripe =>
      'Sikker betaling i din browser via Stripe. Kan opsiges når som helst.';

  @override
  String get paymentViaStore =>
      'Opkræves via din App Store- eller Google Play-konto. Kan opsiges når som helst i butikkens indstillinger.';

  @override
  String get keySpace => 'Mellemrum';

  @override
  String get doubleOptionTitle => 'Dobbelttryk på alternativtasten';

  @override
  String get doubleOptionSubtitle =>
      'Du kan også åbne WhatStock ved hurtigt at trykke to gange på alternativtasten.';

  @override
  String get doubleOptionPermission =>
      'Hvis det også skal virke i andre apps, skal du tillade WhatStock under Systemindstillinger → Anonymitet og sikkerhed → Inputovervågning og derefter åbne appen igen.';

  @override
  String get openSystemSettings => 'Åbn Systemindstillinger';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Tryk på $shortcut eller dobbelttryk på alternativtasten hvor som helst for at åbne WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Mest sandsynligt';

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
    return '$range om året';
  }

  @override
  String longTermLikely(String price) {
    return 'mest sandsynligt $price';
  }

  @override
  String get confidenceLow => 'Lav sikkerhed';

  @override
  String get confidenceMedium => 'Middel sikkerhed';

  @override
  String get confidenceHigh => 'Høj sikkerhed';

  @override
  String get longTermNote =>
      'De langsigtede intervaller bygger på de angivne antagelser og bliver bredere med tiden. Kurser ekskl. udbytte. Grove vurderinger, ikke prognoser.';

  @override
  String get portfolio => 'Portefølje';

  @override
  String get portfolioEmpty =>
      'Intet her endnu. Åbn en aktie, og tryk på “Føj til portefølje” for at følge dine beholdninger.';

  @override
  String get portfolioLocalNote =>
      'Gemmes på denne enhed og på din konto, hvis du er logget ind. Summer omregnes til ECB’s referencekurser; kurser kan være forsinkede.';

  @override
  String get addToPortfolio => 'Føj til portefølje';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Tilføj $symbol';
  }

  @override
  String get portfolioQuantity => 'Antal aktier';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Pris pr. aktie ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Købsdato';

  @override
  String get portfolioAdd => 'Tilføj';

  @override
  String get portfolioInvalidNumber => 'Indtast et tal større end nul.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol er føjet til porteføljen.';
  }

  @override
  String get portfolioTotalValue => 'Samlet værdi';

  @override
  String get portfolioToday => 'I dag';

  @override
  String get portfolioGainLoss => 'Gevinst/tab';

  @override
  String homeDividendsThisYear(String amount) {
    return 'Udbytte i år: $amount';
  }

  @override
  String get portfolioInvested => 'Investeret';

  @override
  String get portfolioAllocation => 'Fordeling';

  @override
  String get portfolioPositions => 'Beholdninger';

  @override
  String portfolioAvgCost(String price) {
    return 'gns. købskurs $price';
  }

  @override
  String get portfolioYourPosition => 'Din beholdning';

  @override
  String get portfolioPurchases => 'Køb';

  @override
  String get portfolioRemove => 'Fjern';

  @override
  String get portfolioExcluded =>
      'Beholdninger uden kurs eller valutakurs er ikke med i summerne.';

  @override
  String get priceAlerts => 'Kursalarmer';

  @override
  String get setPriceAlert => 'Opret kursalarm';

  @override
  String alertDialogTitle(String symbol) {
    return 'Kursalarm · $symbol';
  }

  @override
  String get alertKindAbove => 'Stiger over';

  @override
  String get alertKindBelow => 'Falder under';

  @override
  String get alertKindMove => 'Bevæger sig meget på en dag';

  @override
  String alertTargetPrice(String currency) {
    return 'Kurs ($currency)';
  }

  @override
  String get alertMovePercent => 'Dagsbevægelse (%)';

  @override
  String get alertAlreadyMet => 'Kursen er allerede forbi dette niveau.';

  @override
  String get alertSave => 'Opret alarm';

  @override
  String alertCreated(String symbol) {
    return 'Alarm oprettet for $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Ingen kursalarmer endnu. Åbn en aktie, og tryk på klokken.';

  @override
  String get alertsNote =>
      'Alarmer tjekkes hvert 5. minut, mens WhatStock kører. På computeren kører appen videre i menulinjen eller proceslinjen; på telefonen kommer alarmer indtil videre kun, når appen er åben.';

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
    return 'Dagsbevægelse ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Udløst $date ved $price';
  }

  @override
  String get alertRearm => 'Aktivér igen';

  @override
  String get alertDelete => 'Slet';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol steg over $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol faldt under $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol bevægede sig $percent i dag';
  }

  @override
  String alertHitBody(String price) {
    return 'Aktuel kurs: $price';
  }

  @override
  String get alertOpen => 'Åbn';

  @override
  String get keepInTrayTitle => 'Bliv ved med at køre, når vinduet lukkes';

  @override
  String get keepInTraySubtitle =>
      'WhatStock bliver i menulinjen eller proceslinjen, så genvejen og kursalarmerne fortsat virker.';

  @override
  String get termsOfUse => 'Brugsvilkår';

  @override
  String get privacyPolicy => 'Privatlivspolitik';

  @override
  String get subscriptionLegal =>
      'Abonnementet fornyes automatisk hver måned, indtil du opsiger det. Ved at abonnere accepterer du brugsvilkårene og privatlivspolitikken.';

  @override
  String get deleteAccount => 'Slet konto';

  @override
  String get deleteAccountTitle => 'Slet din konto?';

  @override
  String get deleteAccountBody =>
      'Din konto og alt, hvad der er gemt på vores server (e-mail, kvote, forbrug), slettes permanent, og ubrugte analyser går tabt. Et abonnement betalt i browseren opsiges med det samme; et abonnement via App Store eller Google Play skal opsiges i butikkens indstillinger.';

  @override
  String get deleteLocalData =>
      'Slet også data på denne enhed (portefølje, alarmer, favoritter, historik, gemte analyser)';

  @override
  String get deleteAccountConfirm => 'Slet permanent';

  @override
  String get accountDeleted => 'Din konto er slettet.';

  @override
  String get errDeleteAccount =>
      'Kontoen kunne ikke slettes. Tjek forbindelsen, og prøv igen.';

  @override
  String get aiTrialBriefNote =>
      'Analyser i prøveperioden er korte og laves med en hurtigere AI-model. Med en plan får du vores mest avancerede AI, flere websøgninger og længderne Standard og Dybdegående.';

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
    return '≈ $price pr. måned';
  }

  @override
  String get subscriptionLegalYearly =>
      'Årsabonnementet fornyes automatisk hvert år, indtil du opsiger det. Ved at abonnere accepterer du brugsvilkårene og privatlivspolitikken.';

  @override
  String get myAnalyses => 'Mine analyser';

  @override
  String get navAlerts => 'Alarmer';

  @override
  String get inviteTitle => 'Lukket forhåndsvisning';

  @override
  String get inviteBody =>
      'WhatStock er indtil videre kun tilgængelig efter invitation. Indtast den invitationskode, du har fået.';

  @override
  String get inviteCodeLabel => 'Invitationskode';

  @override
  String get inviteContinue => 'Fortsæt';

  @override
  String get inviteInvalid => 'Denne invitationskode er ikke gyldig.';

  @override
  String get inviteExpired =>
      'Denne invitation er udløbet. Bed den person, der inviterede dig, om en ny kode.';

  @override
  String get inviteDeviceLimit =>
      'Denne invitationskode bruges allerede på det maksimale antal enheder.';

  @override
  String get previewConfidential => 'Fortrolig forhåndsvisning';

  @override
  String get errPreviewDailyLimit =>
      'Dagens analysegrænse for denne forhåndsvisning er nået. Prøv igen i morgen.';

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
      other: 'for $count dage siden',
      one: 'for 1 dag siden',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Opdater denne analyse?';

  @override
  String staleBody(String age) {
    return 'Den blev lavet $age. Kurser, nyheder og resultater kan have ændret sig siden da.';
  }

  @override
  String get staleKeep => 'Vis den tidligere';

  @override
  String get staleRefresh => 'Lav en ny';

  @override
  String seeAll(int count) {
    return 'Se alle ($count)';
  }

  @override
  String get searchAnalyses => 'Søg i dine analyser';

  @override
  String get deleteAnalysis => 'Slet';

  @override
  String analysisDeleted(String symbol) {
    return 'Analysen af $symbol er slettet';
  }

  @override
  String get keyLevelAlertHint =>
      'Tryk på et niveau for at få en alarm, når kursen når det.';

  @override
  String get shareAnalysisTitle => 'Del analyse';

  @override
  String get shareAsImage => 'Del som billede';

  @override
  String get shareAsText => 'Del som tekst';

  @override
  String get shareCardFooter => 'Lavet med WhatStock';

  @override
  String get shareCardDisclaimer => 'AI-analyse · ikke investeringsrådgivning';

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
    return 'Del din kode. Din ven får $_temp0 med det samme, og du får det samme efter vedkommendes første analyse.';
  }

  @override
  String get referralYourCode => 'Din kode';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Inviteret: $invited · Belønnet: $rewarded';
  }

  @override
  String get referralHaveCode => 'Har du en kode fra en ven?';

  @override
  String get referralRedeem => 'Indløs';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ekstra analyser er tilføjet. Velkommen!',
      one: '1 ekstra analyse er tilføjet. Velkommen!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown => 'Koden findes ikke. Tjek den, og prøv igen.';

  @override
  String get referralErrOwn => 'Du kan ikke indløse din egen kode.';

  @override
  String get referralErrAlready => 'Du har allerede indløst en vens kode.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ekstra analyser',
      one: '1 ekstra analyse',
    );
    return 'Jeg analyserer aktier med WhatStock: tag et billede af en aktie, og AI’en forklarer den. Med min kode $code får du $_temp0.';
  }

  @override
  String get referralCopied => 'Kode kopieret';

  @override
  String get onboardTitle1 => 'Fotografér en aktie';

  @override
  String get onboardBody1 =>
      'En skærm fra en investeringsapp, en avis eller et firmalogo er nok: WhatStock genkender aktien og viser kursen, grafen og de vigtigste nøgletal.';

  @override
  String get onboardTitle2 => 'Forstå den på få minutter';

  @override
  String get onboardBody2 =>
      'AI-analysen forklarer, hvad der driver aktien, risiciene, værdiansættelsen og tre scenarier for, hvor kursen kan bevæge sig hen – med kilder og på dit sprog.';

  @override
  String get onboardTitle3 => 'Hold dig opdateret';

  @override
  String get onboardBody3 =>
      'Favoritter, din portefølje og kursalarmer holder dig opdateret. Dine analyser bliver på din enhed, klar til at blive åbnet igen.';

  @override
  String get onboardNext => 'Næste';

  @override
  String get onboardStart => 'Kom i gang';

  @override
  String get onboardSkip => 'Spring over';

  @override
  String changesTitle(String date) {
    return 'Siden den forrige analyse ($date)';
  }

  @override
  String get changesPrice => 'Kurs';

  @override
  String get changesNoMajor => 'Udsigterne har ikke ændret sig væsentligt.';

  @override
  String get changesPreviousSummary => 'Tidligere resumé';

  @override
  String get telemetryTitle => 'Hjælp med at forbedre WhatStock';

  @override
  String get telemetryBody =>
      'Del anonyme brugsstatistikker og nedbrudsrapporter: hvilke funktioner der bruges, og hvad der gik galt. Aldrig dine aktier, analyser eller personlige data. Du kan til enhver tid ændre det i Indstillinger.';

  @override
  String get telemetryAllow => 'Tillad';

  @override
  String get telemetryDecline => 'Nej tak';

  @override
  String get telemetrySetting => 'Anonyme statistikker og nedbrudsrapporter';

  @override
  String get telemetrySettingHint =>
      'Hvor ofte funktioner bruges og fejlrapporter – uden personlige data eller indholdet af dine søgninger og analyser.';

  @override
  String get askButton => 'Spørg om denne analyse';

  @override
  String askTitle(String symbol) {
    return 'Spørgsmål om $symbol';
  }

  @override
  String get askIntro =>
      'Spørg om alt i analysen: hvad en risiko betyder, hvad der kunne ændre udsigterne, hvordan et tal er regnet ud. Svarene bygger på denne analyse og er ikke investeringsrådgivning.';

  @override
  String get askHint => 'Stil et spørgsmål…';

  @override
  String get askSend => 'Send';

  @override
  String get askThinking => 'Tænker…';

  @override
  String get askSuggest1 => 'Hvad er den største risiko?';

  @override
  String get askSuggest2 => 'Hvad kunne ændre udsigterne?';

  @override
  String get askSuggest3 => 'Forklar det med enkle ord';

  @override
  String get askMaxReached =>
      'Det var det sidste spørgsmål til denne analyse. Lav en ny analyse for at spørge om mere.';

  @override
  String get errAskLimit =>
      'Du har nået dagens grænse for spørgsmål. Prøv igen i morgen.';

  @override
  String get eventTomorrow => 'I morgen';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'om $days dage',
      one: 'om 1 dag',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Kvartalsregnskab';

  @override
  String get eventBeforeOpen => 'før åbning';

  @override
  String get eventAfterClose => 'efter lukning';

  @override
  String eventEpsEstimate(String value) {
    return 'Forventet EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Fra din analyse';

  @override
  String get eventDividend => 'Udbytte forventes';

  @override
  String get eventDividendEstimate =>
      'Anslået ud fra dine registrerede udbetalinger';

  @override
  String get eventsHint =>
      'Regnskabsdatoer for dine favoritter og aktier i porteføljen de næste 90 dage, de daterede begivenheder, dine analyser har fremhævet, samt det udbytte, der forventes ud fra dine registrerede udbetalinger.';

  @override
  String get eventsEmpty =>
      'Ingen daterede begivenheder de næste 90 dage. Tilføj favoritter eller aktier til porteføljen for at se deres regnskabsdatoer her; registreret udbytte viser den forventede næste udbetaling.';

  @override
  String get compareTitle => 'Sammenlign';

  @override
  String get compareAdd => 'Tilføj en aktie';

  @override
  String get compareRemove => 'Fjern';

  @override
  String get compareTickerHint => 'Ticker, f.eks. MSFT';

  @override
  String get compareHint =>
      'Nøgletal side om side; den bedste værdi i hver række er fremhævet. Beløb er i hver akties egen valuta.';

  @override
  String get compareNoAnalysis => 'Ingen analyse endnu';

  @override
  String get portfolioDividends => 'Årligt udbytte';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent i afkast';
  }

  @override
  String get portfolioDividendNote =>
      'Forventet årligt udbytte er baseret på udbytte udbetalt i de seneste 12 måneder; fremtidige udbetalinger er ikke garanteret.';

  @override
  String positionDividend(String amount) {
    return 'Udbytte: $amount om året';
  }

  @override
  String get chartAvgCost => 'Din gns.';

  @override
  String get chartAlertLevel => 'Alarm';

  @override
  String get marketsToday => 'Markeder i dag';

  @override
  String get notesTitle => 'Mine noter';

  @override
  String get notesHint =>
      'Hvorfor købte du den, hvad holder du øje med, og hvad ville få dig til at sælge?';

  @override
  String get notesInfo =>
      'Gemmes på denne enhed og på din konto, hvis du er logget ind. AI-analysen tager højde for dine noter.';

  @override
  String notesSaved(String date) {
    return 'Gemt $date';
  }

  @override
  String get peersTitle => 'Lignende virksomheder';

  @override
  String get portfolioExport => 'Eksportér som CSV';

  @override
  String get portfolioImport => 'Importér fra CSV';

  @override
  String get portfolioImportHint =>
      'Indsæt ét køb pr. linje: tickersymbol, antal, pris, valuta, dato (ÅÅÅÅ-MM-DD). Kolonner kan adskilles med kommaer, semikoloner eller tabulatorer; overskriftslinjen er valgfri.';

  @override
  String get portfolioImportButton => 'Importér';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count transaktioner tilføjet',
      one: '1 transaktion tilføjet',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count linjer sprunget over',
      one: '1 linje sprunget over',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Portefølje, favoritter, kursalarmer og noter synkroniseres på alle dine enheder.';

  @override
  String syncLast(String time) {
    return 'Sidst synkroniseret $time';
  }

  @override
  String get syncNow => 'Synkroniser nu';

  @override
  String get syncFailed =>
      'Synkroniseringen mislykkedes. Der prøves automatisk igen.';

  @override
  String get alertEmailTitle => 'E-mail når en alarm udløses';

  @override
  String get alertEmailOn =>
      'Vi tjekker dine alarmer med få minutters mellemrum og sender dig en e-mail, også når appen er lukket.';

  @override
  String get alertEmailSignIn =>
      'Log ind med din e-mail under Indstillinger for at få alarmer på e-mail, også når appen er lukket.';

  @override
  String get portfolioHistory => 'Værdiudvikling';

  @override
  String get portfolioReviewTitle => 'AI-porteføljeanalyse';

  @override
  String get portfolioReviewIntro =>
      'AI’en gennemgår hele din portefølje: koncentration, sektor- og valutaeksponering, risici dine aktier har til fælles, og udbytte. Bruger 1 analyse.';

  @override
  String get portfolioReviewButton => 'Analysér min portefølje';

  @override
  String get portfolioReviewAgain => 'Analysér igen';

  @override
  String get portfolioReviewWorking => 'Din portefølje analyseres…';

  @override
  String get digestTitle => 'Ugentligt overblik på e-mail';

  @override
  String get digestHint =>
      'Hver mandag: hvordan dine favoritter og din portefølje bevægede sig i sidste uge, og deres kommende regnskabsdatoer.';

  @override
  String get benchmarkTitle => 'Sammenlignet med S&P 500';

  @override
  String get benchmarkTitleIndex => 'Sammenlignet med et indeks';

  @override
  String get benchmarkHintIndex =>
      'Som om hvert køb var investeret samme dag i en fond, der følger det valgte indeks. Udbytte ikke medregnet; tidligere afkast forudsiger ikke fremtidige.';

  @override
  String get benchmarkYours => 'Dine køb';

  @override
  String benchmarkAhead(String points) {
    return '$points procentpoint bedre end indekset';
  }

  @override
  String benchmarkBehind(String points) {
    return '$points procentpoint efter indekset';
  }

  @override
  String get portfolioSell => 'Sælg';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Sælg $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Salgspris pr. aktie ($currency)';
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
  String get portfolioRealized => 'Realiseret';

  @override
  String get portfolioClosed => 'Lukkede positioner';

  @override
  String get portfolioClosedNote => 'Alle aktier solgt';

  @override
  String get portfolioTransactions => 'Transaktioner';

  @override
  String get portfolioRealizedByYear => 'Realiseret gevinst pr. år';

  @override
  String get portfolioRealizedHint =>
      'Salg modregnes først i dine ældste køb (FIFO) og omregnes til dagens valutakurs. Brug din mæglers opgørelse til selvangivelsen.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Siden denne analyse er der offentliggjort nyt kvartalsregnskab ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Nyt regnskab';

  @override
  String get portfolioImportBrokers =>
      'Eksporter fra Revolut, Trading 212, Interactive Brokers, DEGIRO, Schwab, Fidelity og Robinhood genkendes også, med salg og udbytte (fratrukket kildeskat); indbetalinger springes over.';

  @override
  String get portfolioImportFile => 'Vælg en fil';

  @override
  String offlineBanner(String time) {
    return 'Ingen forbindelse – viser de senest gemte data ($time).';
  }

  @override
  String get glossMarketCap =>
      'Hvad hele selskabet er værd på aktiemarkedet: aktiekurs × antal aktier.';

  @override
  String get glossSharesOutstanding =>
      'Hvor mange aktier selskabet har udstedt. Stiger antallet, ejer hver aktie en mindre bid; tilbagekøb mindsker det.';

  @override
  String get glossPeTrailing =>
      'Kurs ÷ indtjening pr. aktie de seneste 12 måneder: hvor mange års nuværende overskud du betaler for. Lavere er billigere, men hurtigt voksende selskaber har ofte en høj P/E.';

  @override
  String get glossPeForward =>
      'Som P/E, men med det overskud, analytikerne forventer de næste 12 måneder. Under den historiske P/E betyder, at overskuddet forventes at vokse.';

  @override
  String get glossPb =>
      'Kurs ÷ bogført værdi (aktiver minus gæld) pr. aktie. Omkring 1 betyder, at markedet værdsætter selskabet til det, det ejer på papiret.';

  @override
  String get glossPs =>
      'Markedsværdi ÷ årlig omsætning. Nyttig for selskaber med lidt eller endnu intet overskud; sammenlign inden for samme branche.';

  @override
  String get glossEvToFcf =>
      'Selskabets værdi inklusive gæld (EV) ÷ de kontanter, det skaber på et år efter investeringer. Lavere betyder, at du får flere kontanter for prisen.';

  @override
  String get glossPeg =>
      'P/E ÷ forventet årlig vækst i overskuddet (%). Omkring 1 ses ofte som rimeligt; det sætter P/E i forhold til væksten.';

  @override
  String get glossEps =>
      'Overskud pr. aktie de seneste 12 måneder. Stigende EPS gennem årene er et af de stærkeste tegn på et sundt selskab.';

  @override
  String get glossBeta =>
      'Hvor meget aktien plejer at bevæge sig med markedet: 1 = som markedet, 1,5 = cirka 50% større udsving, under 1 = roligere.';

  @override
  String get glossRevenueTtm =>
      'Det samlede salg de seneste 12 måneder, før nogen omkostninger.';

  @override
  String get glossNetIncomeTtm =>
      'Overskud tilbage efter alle omkostninger, renter og skat de seneste 12 måneder.';

  @override
  String get glossGrossMargin =>
      'Den del af omsætningen, der er tilbage efter de direkte omkostninger til produkterne. En høj margin betyder ofte prissætningsmagt.';

  @override
  String get glossOperatingMargin =>
      'Den del af omsætningen, der er tilbage efter driften (lønninger, husleje, markedsføring), før renter og skat.';

  @override
  String get glossNetMargin =>
      'Den del af omsætningen, der ender som endeligt overskud. 20% betyder, at 20 af hver 100 i salg er overskud.';

  @override
  String get glossRoe =>
      'Egenkapitalforrentning: årligt overskud ÷ ejernes kapital. Viser, hvor godt ledelsen bruger aktionærernes penge; over ca. 15% er stærkt.';

  @override
  String get glossRoa =>
      'Afkast af aktiver: årligt overskud ÷ alt, hvad selskabet ejer. Sammenlign inden for samme branche.';

  @override
  String get glossDebtToEquity =>
      'Gæld ÷ ejernes kapital. Højere betyder flere lånte penge: større risiko, når renterne stiger eller forretningen går langsommere.';

  @override
  String get glossCurrentRatio =>
      'Kortfristede aktiver ÷ regninger, der forfalder inden for et år. Over 1 betyder, at selskabet kan dække sine nære regninger.';

  @override
  String get glossRevenueGrowth =>
      'Hvor meget omsætningen er vokset i forhold til et år tidligere.';

  @override
  String get glossEpsGrowth =>
      'Hvor meget overskuddet pr. aktie er vokset i forhold til et år tidligere.';

  @override
  String get glossDividendYield =>
      'Årligt udbytte ÷ aktiekurs: den kontante indkomst, du ville få om året, i procent af det, du betaler.';

  @override
  String get glossDividendPerShare =>
      'Det udbytte, der er udbetalt på én aktie det seneste år.';

  @override
  String get glossPayoutRatio =>
      'Den del af overskuddet, der udbetales som udbytte. Over 100% udbetaler selskabet mere, end det tjener, hvilket sjældent holder.';

  @override
  String get portfolioBeta => 'Porteføljebeta';

  @override
  String get glossPortfolioBeta =>
      'Betaen for dine aktier, vægtet efter deres værdi: cirka hvor mange procent dine aktier bevæger sig, når markedet bevæger sig 1%. Over 1 svinger de mere end markedet, under 1 mindre. Kontanter er ikke medregnet.';

  @override
  String get portfolioTop3 => 'Top 3-beholdninger';

  @override
  String get glossPortfolioTop3 =>
      'Hvor stor en del af dine aktiers værdi der ligger i dine tre største beholdninger. Jo højere den er, jo mere kan dårlige nyheder fra et enkelt selskab skade hele porteføljen.';

  @override
  String get glossDividendGrowth5y =>
      'Hvor meget udbyttet pr. aktie i gennemsnit er vokset om året over de seneste fem år. Stabil vækst betyder som regel, at selskabet har tillid til sit cashflow; en nedsættelse er ofte et faresignal.';

  @override
  String get glossYieldOnCost =>
      'Udbytte modtaget de seneste 12 måneder divideret med det, du betalte for de aktier, du stadig ejer. I modsætning til udbytteafkastet måles det mod din egen købskurs, ikke dagens kurs.';

  @override
  String get glossTitle => 'Hvad betyder det?';

  @override
  String get watchNewsTitle => 'Nyheder om dine aktier';

  @override
  String get undo => 'Fortryd';

  @override
  String get watchSort => 'Sortér';

  @override
  String get watchSortOwn => 'Min rækkefølge';

  @override
  String get watchSortGainers => 'Største stigninger først';

  @override
  String get watchSortLosers => 'Største fald først';

  @override
  String get watchSortName => 'Efter ticker (A–Z)';

  @override
  String get watchHint =>
      'Træk i håndtaget for at ændre rækkefølgen, stryg til venstre for at fjerne. Linjen viser de seneste 30 dage.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: din analyse er klar.';
  }

  @override
  String alertFromCost(String price) {
    return 'Ud fra din gennemsnitlige købspris ($price):';
  }

  @override
  String get briefTitle => 'I dag med dine aktier';

  @override
  String get briefButton => 'Opsummer i dag';

  @override
  String get briefHint =>
      'Et kort AI-resumé af, hvordan din portefølje og dine favoritter bevægede sig i dag, og hvad de seneste nyheder siger om dem. Det bruger ikke en analyse.';

  @override
  String get briefRefresh => 'Opdater';

  @override
  String get sectionEarnings => 'Regnskaber';

  @override
  String earningsNext(String date) {
    return 'Næste regnskab: $date';
  }

  @override
  String get earningsExpected => 'Forventet EPS';

  @override
  String get earningsReported => 'Rapporteret EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'På eller over forventet EPS i $beats af de seneste $total kvartaler',
      one: 'På eller over forventet EPS i $beats af 1 kvartal',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol offentliggør kvartalsregnskab i morgen';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol offentliggør kvartalsregnskab i dag';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return 'Udbytte fra $symbol forventes i dag';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Ca. $amount. Registrér det i din portefølje, når det kommer.';
  }

  @override
  String get dividendRemindersTitle => 'Påmindelser om udbytte';

  @override
  String get dividendRemindersSubtitle =>
      'En notifikation den dag, et udbytte forventes ud fra rytmen i dine registrerede udbetalinger, så du kan registrere det';

  @override
  String get earningsRemindersTitle => 'Påmindelser om regnskaber';

  @override
  String get earningsRemindersSubtitle =>
      'En notifikation dagen før dine favoritter eller porteføljeaktier offentliggør kvartalsregnskab';

  @override
  String addAllToFavorites(int count) {
    return 'Føj alle til favoritter ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Importér fra et skærmbillede';

  @override
  String get holdingsReading => 'Læser dine beholdninger…';

  @override
  String get holdingsReviewTitle => 'Fundne beholdninger';

  @override
  String get holdingsReviewHint =>
      'Tjek tallene, før du tilføjer dem. Prisen er din gennemsnitlige købskurs pr. aktie, ikke dagens kurs.';

  @override
  String get holdingsNoPrice => 'Ingen gennemsnitlig købskurs på billedet';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tilføj $count beholdninger',
      one: 'Tilføj 1 beholdning',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Der blev ikke fundet nogen aktiebeholdninger på dette billede. Prøv et skærmbillede af din mæglers side med beholdninger eller positioner.';

  @override
  String get week52Range => '52-ugers interval';

  @override
  String week52BelowHigh(String percent) {
    return '$percent under 52-ugers højeste';
  }

  @override
  String get week52AtHigh => 'Ved 52-ugers højeste';

  @override
  String get alertKindTrailing => 'Falder fra top';

  @override
  String get alertTrailingPercent => 'Fald fra toppen (%)';

  @override
  String get alertTrailingHint =>
      'Følger kursen op: alarmen går, når kursen falder så meget fra sit højeste niveau, siden du oprettede den.';

  @override
  String alertDescTrailing(String percent) {
    return '$percent fald fra toppen';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'top indtil nu: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol faldt $percent fra toppen';
  }

  @override
  String get sectionInsiders => 'Insiderhandler';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count køb',
      one: '1 køb',
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
    return 'Netto: $shares aktier';
  }

  @override
  String get insiderBuy => 'Købt';

  @override
  String get insiderSell => 'Solgt';

  @override
  String get insiderHint =>
      'Køb og salg på det åbne marked foretaget af ledere og bestyrelsesmedlemmer inden for de seneste 90 dage (SEC Form 4). Udnyttelse af optioner og tildelte aktier medregnes ikke.';

  @override
  String get insiderNone =>
      'Ingen insiderkøb eller -salg på det åbne marked inden for de seneste 90 dage.';

  @override
  String get analystTrend =>
      'Sådan har holdningerne ændret sig måned for måned';

  @override
  String get watchListAll => 'Alle';

  @override
  String get watchListNew => 'Ny liste';

  @override
  String get watchListName => 'Listenavn';

  @override
  String get watchListRename => 'Omdøb liste';

  @override
  String get watchListDelete => 'Slet liste';

  @override
  String get watchListAddTo => 'Føj til en liste';

  @override
  String get watchListEmpty =>
      'Der er endnu ingen aktier på denne liste. Tryk på listeknappen ud for en aktie for at tilføje den.';

  @override
  String get portfolioAskTitle => 'Spørgsmål om din portefølje';

  @override
  String get rangeYtd => 'I år';

  @override
  String get backupTitle => 'Sikkerhedskopi';

  @override
  String get backupSave => 'Gem en sikkerhedskopi';

  @override
  String get backupSaveHint =>
      'Dine favoritter, lister, portefølje, alarmer og noter i én fil.';

  @override
  String get backupRestore => 'Gendan fra en sikkerhedskopi';

  @override
  String get backupRestoreHint =>
      'Tilføjer det, der er i filen; intet af det, du har nu, slettes.';

  @override
  String get backupRestored => 'Sikkerhedskopien er gendannet.';

  @override
  String get backupInvalid => 'Denne fil er ikke en WhatStock-sikkerhedskopi.';

  @override
  String get allocationPositions => 'Aktier';

  @override
  String get allocationSectors => 'Sektorer';

  @override
  String get allocationCurrencies => 'Valutaer';

  @override
  String get allocationAccounts => 'Konti';

  @override
  String get compareReturn1y => '1-års afkast';

  @override
  String get compareFromHigh => 'Fra 52-ugers højeste';

  @override
  String get briefAutoTitle => 'Dagligt resumé hver morgen';

  @override
  String get briefAutoSubtitle =>
      '“I dag med dine aktier” laves automatisk efter kl. 7.00, mens appen kører; på computere giver en notifikation dig besked. Det bruger af din daglige spørgsmålskvote, ikke en analyse.';

  @override
  String get targetsButton => 'Målfordeling';

  @override
  String get targetsTitle => 'Målfordeling';

  @override
  String get targetsHint =>
      'Angiv, hvor stor en andel af porteføljen hver aktie skal have. Lad feltet stå tomt for intet mål. Appen viser derefter, hvad du skal købe eller sælge for at nå dertil.';

  @override
  String targetsSum(String percent) {
    return 'I alt: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Køb ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Sælg ≈ $amount';
  }

  @override
  String get rebalanceOk => 'På mål';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol slog det forventede EPS';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol levede ikke op til forventet EPS';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'Rapporteret EPS $actual, forventet $estimate';
  }

  @override
  String get newsExplain => 'Hvad betyder det?';

  @override
  String get watchAlertAll => 'Alarm ved store daglige udsving';

  @override
  String get watchAlertAllHint =>
      'En kursalarm for hver aktie på denne liste, der går i gang, når den bevæger sig så meget på en dag, op eller ned. Aktier, der allerede har en, beholder deres.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count alarmer oprettet',
      one: '1 alarm oprettet',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Eksportér realiserede gevinster (CSV)';

  @override
  String get portfolioAnnualReturn => 'Årligt afkast';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / år';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Pengevægtet årligt afkast (XIRR): tager højde for, hvornår du købte og solgte, så penge, der er tilføjet senere, ikke forvrider det. Vises, når dit første køb er mindst et år gammelt; udbytte er ikke medregnet.';

  @override
  String get eventsAddToCalendar => 'Føj til kalender (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Porteføljealarm';

  @override
  String get portfolioMoveAlertSubtitle =>
      'En notifikation, når hele din portefølje bevæger sig så meget på en dag.';

  @override
  String get portfolioMoveAlertOff => 'Fra';

  @override
  String portfolioMoveUp(String percent) {
    return 'Din portefølje er steget $percent i dag';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Din portefølje er faldet $percent i dag';
  }

  @override
  String get whatIfTitle => 'Hvad hvis du havde investeret?';

  @override
  String get whatIfAmount => 'Beløb';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount investeret for $period siden ville i dag være værd';
  }

  @override
  String get whatIfNote =>
      'Kun baseret på aktiekursen: udbytte, gebyrer og skat er ikke medregnet. Tidligere afkast forudsiger ikke fremtidige.';

  @override
  String get watchShare => 'Del listen';

  @override
  String get watchImport => 'Tilføj tickers';

  @override
  String get watchImportHint =>
      'Indsæt tickersymboler adskilt af kommaer, mellemrum eller linjeskift – fx en liste, som nogen har delt med dig.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aktier tilføjet',
      one: '1 aktie tilføjet',
      zero: 'Ingen nye aktier',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Største først';

  @override
  String get positionsSortGain => 'Højeste samlede afkast først';

  @override
  String get positionsSortToday => 'Bedste i dag først';

  @override
  String get chartMyBuys => 'Dine køb';

  @override
  String get chartMySells => 'Dine salg';

  @override
  String get shortcutsTitle => 'Tastaturgenveje';

  @override
  String usMarketOpen(String time) {
    return 'USA-markedet åbent · lukker om $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'USA-markedet lukket · åbner om $time';
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
  String get dividendGoalSet => 'Sæt et månedligt udbyttemål';

  @override
  String get dividendGoalTitle => 'Månedligt udbyttemål';

  @override
  String get dividendGoalAmount => 'Udbytte pr. måned';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Ca. $amount pr. måned med dagens afkast: $percent af dit mål på $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Ca. $amount pr. måned med dagens afkast: dit mål på $goal er nået';
  }

  @override
  String get portfolioAccount => 'Konto';

  @override
  String get portfolioAccountHint => 'f.eks. Aktiesparekonto (valgfrit)';

  @override
  String get portfolioAccountAdd => 'Angiv en konto';

  @override
  String get portfolioAccountsAll => 'Alle konti';

  @override
  String get portfolioAccountNote =>
      'Kun transaktioner og udbytte på denne konto. Kontanter, mål og AI-analysen vises under Alle konti.';

  @override
  String get portfolioNoAccount => 'Uden konto';

  @override
  String portfolioFee(String currency) {
    return 'Kurtage ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Tilføj kurtage';

  @override
  String portfolioFeeRow(String amount) {
    return 'Kurtage: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'Årsoversigt';

  @override
  String get portfolioProceeds => 'Salgssum';

  @override
  String get portfolioCostBasis => 'Anskaffelsessum';

  @override
  String get portfolioFeesPaid => 'Betalt kurtage';

  @override
  String get portfolioAnnualSummaryNote =>
      'Beløb i den oprindelige valuta, ikke omregnet. Salgssummen er fratrukket kurtagen ved salg; anskaffelsessummen omfatter kurtagen ved køb (FIFO). Til selvangivelsen skal du omregne til den valutakurs, som skattemyndighederne kræver.';

  @override
  String get portfolioShare => 'Del afkast';

  @override
  String get portfolioShareHeading => 'Min portefølje';

  @override
  String get portfolioTopHoldings => 'Største beholdninger';

  @override
  String get portfolioShareNote => 'Kun procenter deles, ingen beløb.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count beholdninger',
      one: '1 beholdning',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'Ikke investeringsrådgivning';

  @override
  String get contributionButton => 'Investér nye penge';

  @override
  String contributionAmount(String currency) {
    return 'Beløb at investere ($currency)';
  }

  @override
  String get contributionHint =>
      'Kun køb, intet salg: de beholdninger, der ligger længst under deres mål, får pengene først.';

  @override
  String contributionShares(String shares) {
    return '≈ $shares aktier';
  }

  @override
  String contributionMissing(String symbols) {
    return 'Ingen aktuel kurs for $symbols: er ikke med i fordelingen.';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'Hvis det årlige afkast holder ($rate), når du målet omkring $year.';
  }

  @override
  String get portfolioMaxDrawdown => 'Største fald';

  @override
  String get glossMaxDrawdown =>
      'Det største fald i værdien af dine aktier fra en tidligere top til en senere bund, uden effekten af dine køb og salg (tidsvægtet). Det viser, hvor dybt et dyk din portefølje allerede har været igennem.';

  @override
  String watchSince(String date) {
    return 'Siden du føjede den til favoritter ($date)';
  }

  @override
  String get portfolioSampleTry => 'Prøv med en eksempelportefølje';

  @override
  String get portfolioSampleBanner =>
      'Dette er en eksempelportefølje. Tilføj dine egne køb ved siden af, eller fjern den.';

  @override
  String get portfolioSampleRemove => 'Fjern eksempel';

  @override
  String get portfolioStopsAll => 'Trailing stop for alle beholdninger';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count trailing stops oprettet',
      one: '1 trailing stop oprettet',
      zero: 'Alle beholdninger har allerede et trailing stop',
    );
    return '$_temp0';
  }

  @override
  String portfolioSinceSale(String percent) {
    return '$percent siden du solgte';
  }

  @override
  String get lotPreviewRealized => 'Realiseret ved dette salg (FIFO):';

  @override
  String lotPreviewAverage(String after, String before) {
    return 'Ny gns. købskurs: $after (nu $before)';
  }

  @override
  String get portfolioYtdReturn => 'Afkast i år';

  @override
  String get glossTwrYtd =>
      'Tidsvægtet afkast siden årets start (eller siden dit første køb, hvis det var i år): hver dag tæller ændringen i de aktier, du ejede den dag, og dagene kædes sammen – penge, du sætter ind eller hæver, er ikke afkast, så det kan sammenlignes med et indeks. Nedenunder: det valgte indeks i samme periode.';

  @override
  String alertDistance(String price, String percent) {
    return 'Nu $price · $percent tilbage';
  }

  @override
  String get watchSortSince => 'Efter ændring siden tilføjelse';

  @override
  String get portfolioTodayMovers => 'Bevægede sig mest i dag:';

  @override
  String get lotNoteAdd => 'Tilføj en note';

  @override
  String get lotNoteBuyHint =>
      'Hvorfor køber du? Det kommer med i aktiens noter med datoen.';

  @override
  String get lotNoteSellHint =>
      'Hvorfor sælger du? Det kommer med i aktiens noter med datoen.';

  @override
  String get lotNoteBought => 'Købt';

  @override
  String get positionHeld => 'Ejertid';

  @override
  String durationMonths(int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months måneder',
      one: '$months måned',
    );
    return '$_temp0';
  }

  @override
  String durationDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days dage',
      one: '$days dag',
    );
    return '$_temp0';
  }

  @override
  String positionHeldSince(String date) {
    return 'siden $date';
  }

  @override
  String lotPreviewWeight(String after, String before) {
    return 'Andel af porteføljen bagefter: $after (nu $before)';
  }

  @override
  String lotFromCash(String amount) {
    return 'Betal fra kontanter (nu $amount)';
  }

  @override
  String lotToCash(String amount) {
    return 'Tilføj til kontanter (nu $amount)';
  }

  @override
  String get onboardTitle4 => 'Følg din portefølje';

  @override
  String get onboardBody4 =>
      'Importér din brokers eksport (Revolut, Trading 212, IBKR, DEGIRO, Schwab…) eller tilføj handler manuelt: se dit afkast ved siden af et indeks, dine udbytter og en årsoversigt til selvangivelsen.';

  @override
  String get lotEdit => 'Rediger';

  @override
  String lotEditTitle(String symbol) {
    return 'Rediger transaktion · $symbol';
  }

  @override
  String get lotSave => 'Gem';

  @override
  String dividendEditTitle(String symbol) {
    return 'Rediger udbytte · $symbol';
  }

  @override
  String get activityTitle => 'Alle transaktioner';

  @override
  String get activitySearchHint => 'Filtrér efter ticker';

  @override
  String get activityNoMatch => 'Ingen transaktioner matcher filteret.';

  @override
  String portfolioImportDuplicates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count allerede registreret, udeladt',
      one: '1 allerede registreret, udeladt',
    );
    return '$_temp0';
  }

  @override
  String get tickerChange => 'Tickerskift';

  @override
  String tickerChangeTitle(String symbol) {
    return 'Tickerskift · $symbol';
  }

  @override
  String get tickerChangeNew => 'Ny ticker';

  @override
  String get tickerChangeHint =>
      'Når et selskab skifter ticker (f.eks. FB → META): alle transaktioner, udbytte, aktiesplits, noten og alarmerne flyttes til den nye.';

  @override
  String tickerChanged(String symbol) {
    return 'Flyttet til $symbol';
  }

  @override
  String get referralErrSignIn =>
      'Log ind med din e-mail for at indløse en vens kode.';

  @override
  String get referralErrFull =>
      'Koden er allerede indløst det maksimale antal gange.';

  @override
  String get portfolioGoalSet => 'Sæt et mål';

  @override
  String get portfolioGoalTitle => 'Porteføljemål';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent af dit mål på $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Målet på $amount er nået';
  }

  @override
  String get portfolioGoalRemove => 'Fjern mål';

  @override
  String get alertEdit => 'Rediger alarm';

  @override
  String get positionOpenLots => 'Stadig ejet (ældste først)';

  @override
  String get lotRemoved => 'Transaktionen er slettet';

  @override
  String get alertDeleted => 'Alarm slettet';

  @override
  String get alertsClearTriggered => 'Ryd udløste alarmer';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count alarmer fjernet',
      one: '1 alarm fjernet',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Startskærm';

  @override
  String get allocationCountries => 'Lande';

  @override
  String get newsExplainNoteResearch =>
      'AI-forklaring: den slår fakta op på nettet, åbner artiklen og vurderer, hvor pålidelig kilden er. Det er ikke investeringsrådgivning. Det bruger af din daglige spørgsmålskvote, ikke en analyse.';

  @override
  String get sourceOfficial => 'Officiel';

  @override
  String get sourcePressRelease => 'Pressemeddelelse';

  @override
  String get sourceMajorNews => 'Stort medie';

  @override
  String get sourceOpinion => 'Mening';

  @override
  String get earningsSummaryButton => 'Hvad stod der i det seneste regnskab?';

  @override
  String get earningsSummaryNote =>
      'AI-resumé af selskabets regnskabsmeddelelse og den presseomtale, den finder på nettet. Det er ikke investeringsrådgivning. Det bruger af din daglige spørgsmålskvote, ikke en analyse.';

  @override
  String get compareLastSurprise => 'Seneste kvartals EPS vs. forventet';

  @override
  String get compareNextReport => 'Næste regnskab';

  @override
  String get resolvingDescription => 'Finder ud af, hvilken aktie du mener…';

  @override
  String get instrumentTitle => 'Om dette instrument';

  @override
  String get instrumentHint =>
      'Der findes ingen virksomhedsprofil for dette symbol – det kan være en ETF, en fond eller et depotbevis. Spørg AI’en, hvad det er, hvad det indeholder, og hvad det koster.';

  @override
  String get instrumentAsk => 'Hvad er dette?';

  @override
  String get instrumentNote =>
      'AI-forklaring ud fra udstederens fondsside og finanssider, den finder på nettet. Det er ikke investeringsrådgivning. Det bruger af din daglige spørgsmålskvote, ikke en analyse.';

  @override
  String suggestAskAi(String query) {
    return 'Spørg AI’en: ”$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Ingen aktuel kurs for $symbols.';
  }

  @override
  String get eventsRecentResults => 'Seneste regnskaber';

  @override
  String get saveToNotes => 'Gem i mine noter';

  @override
  String get savedToNotes => 'Gemt i dine noter';

  @override
  String get portfolioDividendsReceived => 'Modtaget udbytte';

  @override
  String get portfolioDividendsThisYear => 'I år';

  @override
  String get portfolioDividendsAllTime => 'Siden start';

  @override
  String get portfolioAddDividend => 'Tilføj udbytte';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Modtaget beløb ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Udbetalingsdato';

  @override
  String get portfolioDividendsEmpty =>
      'Ingen udbytter registreret endnu. Tilføj dem manuelt, eller importér din brokers eksport – dens udbytterækker hentes også.';

  @override
  String get portfolioSplit => 'Aktiesplit';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Aktiesplit: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Køb og salg dateret før splittet justeres: antallet af aktier ganges, og prisen pr. aktie divideres, så omkostningen forbliver den samme.';

  @override
  String get portfolioSplitRatio => 'Forhold (nye : gamle)';

  @override
  String get portfolioSplitRatioError =>
      'Indtast et forhold som 10:1, eller 1:10 for et omvendt split.';

  @override
  String get portfolioSplitDate => 'Dato for splittet';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Aktiesplit $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Aktiesplit slettet';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aktiesplits tilføjet',
      one: '1 aktiesplit tilføjet',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count udbytter tilføjet',
      one: '1 udbytte tilføjet',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Eksportér udbytter (CSV)';

  @override
  String get portfolioDividendDeleted => 'Udbytte slettet';

  @override
  String get portfolioDividendsHint =>
      'Beløb som de blev indsat på din konto, i udbetalingsvalutaen; totaler omregnes til dagens kurs. Brug din brokers opgørelse til din selvangivelse.';

  @override
  String get awayTitle => 'Mens du var væk';

  @override
  String awaySince(String when) {
    return 'Siden $when';
  }

  @override
  String get awayQuiet => 'Intet bevægede sig meget.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count alarmer udløst',
      one: '1 alarm udløst',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Offentliggjorde resultater: $symbols';
  }

  @override
  String get moveWhyButton => 'Hvorfor bevæger den sig i dag?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent i dag';
  }

  @override
  String get moveWhyNote =>
      'AI-forklaring ud fra dagens nyheder fundet på nettet; den egentlige årsag kan være ukendt eller en anden. Ikke investeringsrådgivning. Bruger din daglige spørgsmålskvote, ikke en analyse.';

  @override
  String get sectionTechnical => 'Teknisk billede';

  @override
  String get labelSma50 => '50-dages gennemsnit';

  @override
  String get labelSma200 => '200-dages gennemsnit';

  @override
  String get labelRsi => 'RSI (14 dage)';

  @override
  String get labelVolatility30 => 'Volatilitet (30 dage)';

  @override
  String techAbove(String percent) {
    return '$percent over';
  }

  @override
  String techBelow(String percent) {
    return '$percent under';
  }

  @override
  String get techOverbought => 'overkøbt';

  @override
  String get techOversold => 'oversolgt';

  @override
  String get techNeutral => 'neutral';

  @override
  String get techGoldenCross =>
      '50-dages gennemsnittet ligger over 200-dages gennemsnittet – en optrend ifølge den klassiske læsning.';

  @override
  String get techDeathCross =>
      '50-dages gennemsnittet ligger under 200-dages gennemsnittet – en nedtrend ifølge den klassiske læsning.';

  @override
  String get glossSma50 =>
      'Den gennemsnitlige lukkekurs for de seneste 50 handelsdage. En kurs over det læses ofte som kortsigtet styrke, under det som svaghed.';

  @override
  String get glossSma200 =>
      'Den gennemsnitlige lukkekurs for de seneste 200 handelsdage – den klassiske langsigtede trendlinje. Mange investorer ser en kurs over det som en langsigtet optrend.';

  @override
  String get glossRsi =>
      'Relativ styrkeindeks: sammenligner nylige stigninger med nylige fald på en skala fra 0 til 100. Over 70 kaldes aktien ofte overkøbt (den er steget hurtigt), under 30 oversolgt – men en stærk trend kan blive der længe.';

  @override
  String get glossVolatility =>
      'Hvor meget kursen svinger fra dag til dag, omregnet til et år: 20 % betyder, at et typisk år bevæger sig inden for cirka ±20 %. Højere volatilitet betyder større udsving i begge retninger.';

  @override
  String get techNote =>
      'Beregnet ud fra daglige lukkekurser. Tekniske signaler beskriver fortiden, ikke fremtiden.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$above af $count beholdninger over deres 200-dages gennemsnit';
  }

  @override
  String get watchSignalsTitle => 'Signaler';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · oversolgt';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · overkøbt';
  }

  @override
  String get signalCrossedAbove => 'krydsede over sit 200-dages gennemsnit';

  @override
  String get signalCrossedBelow => 'krydsede under sit 200-dages gennemsnit';

  @override
  String get signalAlertsTitle => 'Notifikationer om tekniske signaler';

  @override
  String get signalAlertsSubtitle =>
      'Én gang om dagen, når en aktie, du følger, bliver oversolgt eller overkøbt (RSI), eller dens kurs krydser 200-dages gennemsnittet.';

  @override
  String get signalAlertsNotification => 'Tekniske signaler';

  @override
  String get glossaryPageTitle => 'Ordliste';

  @override
  String get glossaryPageSubtitle =>
      'Enkle forklaringer på hvert tal, appen viser, fra P/E til RSI';

  @override
  String get glossarySearchHint => 'Søg i ordlisten';

  @override
  String get portfolioCash => 'Kontanter';

  @override
  String get portfolioCashTitle => 'Kontantsaldo';

  @override
  String get portfolioCashHint =>
      'Ikke-investerede penge hos din mægler, pr. valuta. Tæller med i den samlede værdi og fordelingen; ikke i afkastet.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Beløb ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Angiv kontantsaldo';

  @override
  String get portfolioDividendsByMonth => 'Pr. måned';

  @override
  String get dividendsLegendReceived => 'Modtaget';

  @override
  String get dividendsLegendExpected => 'Forventet';

  @override
  String get portfolioDividendsExpected => 'Forventet næste';

  @override
  String get portfolioDividendsExpectedNote =>
      'Skønnet ud fra datoer og beløb på de udbetalinger, du har registreret; selskaber kan ændre eller springe dem over.';

  @override
  String portfolioDividendAround(String date) {
    return 'omkring $date';
  }
}
