// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

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
    return 'Druk waar dan ook op $shortcut om WhatStock te openen.';
  }

  @override
  String get trayOpen => 'WhatStock openen';

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
    return 'Versie $version';
  }

  @override
  String get autoUpdate => 'Updates automatisch installeren';

  @override
  String get checkForUpdates => 'Controleren op updates';

  @override
  String get updateChecking => 'Controleren op updates…';

  @override
  String get updateUpToDate => 'Je gebruikt de nieuwste versie.';

  @override
  String updateAvailable(String version) {
    return 'Versie $version is beschikbaar.';
  }

  @override
  String get updateDownloading =>
      'De update wordt op de achtergrond gedownload…';

  @override
  String get updateDownloaded =>
      'De update is klaar. Start opnieuw op om deze te installeren.';

  @override
  String get updateNow => 'Bijwerken';

  @override
  String get restartNow => 'Opnieuw starten';

  @override
  String get updatesViaStore =>
      'Updates komen automatisch binnen via de appwinkel.';

  @override
  String get updateCheckFailed => 'Kon niet controleren op updates.';

  @override
  String get subscription => 'Abonnement';

  @override
  String get planTrial => 'Proefperiode';

  @override
  String get planNormal => 'Normaal';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Geen actief abonnement';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count analyses per maand';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$days dagen gratis proberen met $count analyses';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Nog $days dagen proefperiode',
      one: 'Nog 1 dag proefperiode',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Je gratis proefperiode is afgelopen. Kies een abonnement om verder te analyseren.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Nog $remaining van $total analyses in deze periode';
  }

  @override
  String extraCredits(int count) {
    return '$count extra analyses';
  }

  @override
  String renewsOn(String date) {
    return 'Wordt verlengd op $date';
  }

  @override
  String get choosePlan => 'Kies een abonnement';

  @override
  String get currentPlan => 'Huidig abonnement';

  @override
  String get subscribe => 'Abonneren';

  @override
  String get perMonth => '/ maand';

  @override
  String get extraPacksTitle => 'Meer nodig? Koop extra analyses';

  @override
  String get extraPacksHint =>
      'Extra analyses verlopen nooit en worden gebruikt na je maandelijkse tegoed.';

  @override
  String get buy => 'Kopen';

  @override
  String get restorePurchases => 'Aankopen herstellen';

  @override
  String get manageSubscription => 'Abonnement beheren';

  @override
  String get purchaseSuccess => 'Bedankt! Je aankoop is actief.';

  @override
  String get purchasePending => 'Aankoop in behandeling…';

  @override
  String get purchaseFailed => 'De aankoop kon niet worden voltooid.';

  @override
  String get purchaseCanceled => 'Aankoop geannuleerd.';

  @override
  String get billingUnavailable =>
      'Aankopen zijn op dit platform nog niet beschikbaar. Abonneer je op je telefoon of Mac; je abonnement werkt op elk apparaat.';

  @override
  String get errQuotaExceeded =>
      'Je hebt geen analyses meer voor deze periode. Upgrade je abonnement of koop extra analyses.';

  @override
  String get errTrialExpired =>
      'Je gratis proefperiode is afgelopen. Kies een abonnement om verder te gaan.';

  @override
  String get errNoPlan => 'Voor AI-analyse is een actief abonnement nodig.';

  @override
  String get viewPlans => 'Abonnementen bekijken';

  @override
  String get usageTitle => 'Gebruik';

  @override
  String get demoPurchaseNote =>
      'Demofacturering: aankopen worden op dit platform gesimuleerd.';

  @override
  String get mostPopular => 'Populairst';

  @override
  String get bestValue => 'Beste prijs-kwaliteit';

  @override
  String get planFeaturesCommon =>
      'Fotoherkenning, live gegevens, grafieken, favorieten en alle 120 talen zijn bij elk abonnement inbegrepen. Het tegoed geldt voor AI-analyses.';

  @override
  String get searchLanguages => 'Talen zoeken…';

  @override
  String get noLanguageMatch => 'Geen taal gevonden.';

  @override
  String get aiSettings => 'AI-analyse';

  @override
  String get aiLength => 'Lengte';

  @override
  String get aiDepthBrief => 'Kort';

  @override
  String get aiDepthStandard => 'Standaard';

  @override
  String get aiDepthDeep => 'Diepgaand';

  @override
  String get aiDepthBriefDesc => 'De kern, snel.';

  @override
  String get aiDepthStandardDesc => 'Volledig rapport met alle secties.';

  @override
  String get aiDepthDeepDesc =>
      'Meer webzoekopdrachten, vergelijking met sectorgenoten en meer diepgang.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Ongeveer $min–$max woorden';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'kost $count analyses',
      one: 'kost 1 analyse',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Leesniveau';

  @override
  String get aiReaderBeginner => 'Beginner';

  @override
  String get aiReaderExperienced => 'Ervaren';

  @override
  String get aiReaderBeginnerDesc =>
      'Eenvoudige taal; elke vakterm wordt uitgelegd.';

  @override
  String get aiReaderExperiencedDesc =>
      'Compactere tekst met gangbare financiële terminologie.';

  @override
  String get aiCounterArgument => 'Sterkste tegenargument';

  @override
  String get aiCounterArgumentDesc =>
      'De samenvatting eindigt altijd met het sterkste argument tegen de eigen conclusie.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Maximaal $count webzoekopdrachten per analyse met je abonnement',
      one: 'Maximaal 1 webzoekopdracht per analyse met je abonnement',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Standaardlengte per abonnement: Normaal $normal, Pro $pro, Max $max, Ultra $ultra. Kort gebruikt er 2 minder, Diepgaand 2 meer.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'maximaal $count webzoekopdrachten',
      one: 'maximaal 1 webzoekopdracht',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count webzoekopdrachten per analyse',
      one: '1 webzoekopdracht per analyse',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Deze lengte vereist $needed analyses, maar je hebt er nog maar $left. Kies een kortere lengte in Instellingen of koop extra analyses.';
  }

  @override
  String get outlookMarketMood => 'Marktsentiment';

  @override
  String get moodVeryPessimistic => 'Zeer pessimistisch';

  @override
  String get moodPessimistic => 'Pessimistisch';

  @override
  String get moodNeutral => 'Neutraal';

  @override
  String get moodOptimistic => 'Optimistisch';

  @override
  String get moodVeryOptimistic => 'Zeer optimistisch';

  @override
  String get scenarioBull => 'Optimistisch scenario';

  @override
  String get scenarioBase => 'Basisscenario';

  @override
  String get scenarioBear => 'Pessimistisch scenario';

  @override
  String outlookCurrentPrice(String price) {
    return 'Huidige koers: $price';
  }

  @override
  String get outlookKeyLevels => 'Belangrijke niveaus';

  @override
  String get keyLevelSupport => 'Steun';

  @override
  String get keyLevelResistance => 'Weerstand';

  @override
  String get keyLevelAnchor => 'Ankerniveau';

  @override
  String get upcomingEvents => 'Komende gebeurtenissen';

  @override
  String get outlookChartNote =>
      'Indicatieve bandbreedtes; kansen zijn ruwe inschattingen, geen voorspellingen.';

  @override
  String get accountTitle => 'Account';

  @override
  String get signIn => 'Inloggen';

  @override
  String get signOut => 'Uitloggen';

  @override
  String get notSignedIn => 'Niet ingelogd';

  @override
  String get accountBenefit =>
      'Log in zodat je abonnement op al je apparaten werkt.';

  @override
  String get accountSyncedNote =>
      'Je abonnement en resterende analyses zijn op elk apparaat hetzelfde.';

  @override
  String get signInTitle => 'Inloggen bij WhatStock';

  @override
  String get emailLabel => 'E-mailadres';

  @override
  String get continueWithEmail => 'Doorgaan met e-mail';

  @override
  String codeSentTo(String email) {
    return 'We hebben een 6-cijferige code naar $email gestuurd. Deze is 10 minuten geldig.';
  }

  @override
  String get codeLabel => 'Inlogcode';

  @override
  String get resendCode => 'Nieuwe code sturen';

  @override
  String get useDifferentEmail => 'Ander e-mailadres gebruiken';

  @override
  String get errInvalidCode => 'De code is onjuist of verlopen.';

  @override
  String get errInvalidEmail => 'Voer een geldig e-mailadres in.';

  @override
  String get errSignInFailed =>
      'Inloggen mislukt. Controleer je verbinding en probeer het opnieuw.';

  @override
  String get checkoutWaiting =>
      'Rond de betaling af in je browser. De app wordt automatisch bijgewerkt zodra dat klaar is.';

  @override
  String get paymentViaStripe =>
      'Veilig betalen in je browser via Stripe. Altijd opzegbaar.';

  @override
  String get paymentViaStore =>
      'Gefactureerd via je App Store- of Google Play-account. Altijd opzegbaar in de instellingen van je store.';

  @override
  String get keySpace => 'Spatie';

  @override
  String get doubleOptionTitle => 'Twee keer op Option drukken';

  @override
  String get doubleOptionSubtitle =>
      'Ook snel twee keer op de Option-toets drukken opent WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Wil je dat dit ook in andere apps werkt, sta WhatStock dan toe via Systeeminstellingen → Privacy en beveiliging → Invoermonitoring en open de app daarna opnieuw.';

  @override
  String get openSystemSettings => 'Systeeminstellingen openen';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Druk waar dan ook op $shortcut of twee keer op Option om WhatStock te openen.';
  }

  @override
  String get scenarioMostLikely => 'Meest waarschijnlijk';

  @override
  String get longTermToday => 'Vandaag';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years jaar',
      one: '1 jaar',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range per jaar';
  }

  @override
  String longTermLikely(String price) {
    return 'meest waarschijnlijk $price';
  }

  @override
  String get confidenceLow => 'Lage zekerheid';

  @override
  String get confidenceMedium => 'Gemiddelde zekerheid';

  @override
  String get confidenceHigh => 'Hoge zekerheid';

  @override
  String get longTermNote =>
      'Langetermijnbandbreedtes berusten op de genoemde aannames en worden met de tijd breder. Koersen zonder dividend. Ruwe inschattingen, geen voorspellingen.';

  @override
  String get portfolio => 'Portefeuille';

  @override
  String get portfolioEmpty =>
      'Nog leeg. Open een aandeel en tik op ‘Toevoegen aan portefeuille’ om te volgen wat je bezit.';

  @override
  String get portfolioLocalNote =>
      'Alleen op dit apparaat opgeslagen. Totalen worden omgerekend tegen ECB-referentiekoersen; koersen kunnen vertraagd zijn.';

  @override
  String get addToPortfolio => 'Toevoegen aan portefeuille';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol toevoegen';
  }

  @override
  String get portfolioQuantity => 'Aantal aandelen';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Prijs per aandeel ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Aankoopdatum';

  @override
  String get portfolioAdd => 'Toevoegen';

  @override
  String get portfolioInvalidNumber => 'Voer een getal groter dan nul in.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol is toegevoegd aan je portefeuille.';
  }

  @override
  String get portfolioTotalValue => 'Totale waarde';

  @override
  String get portfolioToday => 'Vandaag';

  @override
  String get portfolioGainLoss => 'Winst/verlies';

  @override
  String get portfolioInvested => 'Geïnvesteerd';

  @override
  String get portfolioAllocation => 'Verdeling';

  @override
  String get portfolioPositions => 'Posities';

  @override
  String portfolioAvgCost(String price) {
    return 'gem. aankoopprijs $price';
  }

  @override
  String get portfolioYourPosition => 'Jouw positie';

  @override
  String get portfolioPurchases => 'Aankopen';

  @override
  String get portfolioRemove => 'Verwijderen';

  @override
  String get portfolioExcluded =>
      'Posities zonder koers of wisselkoers tellen niet mee in de totalen.';

  @override
  String get priceAlerts => 'Koersalerts';

  @override
  String get setPriceAlert => 'Koersalert instellen';

  @override
  String alertDialogTitle(String symbol) {
    return 'Koersalert · $symbol';
  }

  @override
  String get alertKindAbove => 'Stijgt boven';

  @override
  String get alertKindBelow => 'Daalt onder';

  @override
  String get alertKindMove => 'Beweegt sterk op één dag';

  @override
  String alertTargetPrice(String currency) {
    return 'Koers ($currency)';
  }

  @override
  String get alertMovePercent => 'Dagbeweging (%)';

  @override
  String get alertAlreadyMet => 'De koers is dit niveau al voorbij.';

  @override
  String get alertSave => 'Alert instellen';

  @override
  String alertCreated(String symbol) {
    return 'Alert ingesteld voor $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Nog geen koersalerts. Open een aandeel en tik op de bel.';

  @override
  String get alertsNote =>
      'Alerts worden elke 5 minuten gecontroleerd zolang WhatStock draait. Op een computer blijft de app actief in de menubalk of het systeemvak; op een telefoon komen alerts voorlopig alleen als de app open is.';

  @override
  String alertDescAbove(String price) {
    return 'Boven $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Onder $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Dagbeweging ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Afgegaan op $date bij $price';
  }

  @override
  String get alertRearm => 'Opnieuw activeren';

  @override
  String get alertDelete => 'Verwijderen';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol is boven $price gestegen';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol is onder $price gedaald';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol bewoog vandaag $percent';
  }

  @override
  String alertHitBody(String price) {
    return 'Huidige koers: $price';
  }

  @override
  String get alertOpen => 'Openen';

  @override
  String get keepInTrayTitle => 'Blijven draaien als het venster sluit';

  @override
  String get keepInTraySubtitle =>
      'WhatStock blijft in de menubalk of het systeemvak, zodat de sneltoets en koersalerts blijven werken.';

  @override
  String get termsOfUse => 'Gebruiksvoorwaarden';

  @override
  String get privacyPolicy => 'Privacybeleid';

  @override
  String get subscriptionLegal =>
      'Abonnementen worden elke maand automatisch verlengd tot je opzegt. Door je te abonneren ga je akkoord met de Gebruiksvoorwaarden en het Privacybeleid.';

  @override
  String get deleteAccount => 'Account verwijderen';

  @override
  String get deleteAccountTitle => 'Je account verwijderen?';

  @override
  String get deleteAccountBody =>
      'Je account en alles wat op onze server staat (e-mail, tegoed, gebruik) wordt definitief verwijderd; ongebruikte analyses vervallen. Een abonnement dat je in de browser betaalt, wordt meteen opgezegd; een abonnement via de App Store of Google Play zeg je op in de instellingen van de store.';

  @override
  String get deleteLocalData =>
      'Ook de gegevens op dit apparaat verwijderen (portefeuille, alerts, favorieten, geschiedenis, opgeslagen analyses)';

  @override
  String get deleteAccountConfirm => 'Definitief verwijderen';

  @override
  String get accountDeleted => 'Je account is verwijderd.';

  @override
  String get errDeleteAccount =>
      'Het account kon niet worden verwijderd. Controleer je verbinding en probeer het opnieuw.';

  @override
  String get aiTrialBriefNote =>
      'Analyses in de proefperiode zijn kort en worden gemaakt met een sneller AI-model. Met een abonnement krijg je ons krachtigste AI-model, meer webzoekopdrachten en de lengtes Standaard en Diepgaand.';

  @override
  String get billingMonthly => 'Maandelijks';

  @override
  String get billingYearly => 'Jaarlijks';

  @override
  String get yearlyDiscount => '2 maanden gratis';

  @override
  String get perYear => '/ jaar';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price per maand';
  }

  @override
  String get subscriptionLegalYearly =>
      'Jaarabonnementen worden elk jaar automatisch verlengd tot je opzegt. Door je te abonneren ga je akkoord met de Gebruiksvoorwaarden en het Privacybeleid.';

  @override
  String get myAnalyses => 'Mijn analyses';

  @override
  String get navAlerts => 'Alerts';

  @override
  String get inviteTitle => 'Besloten preview';

  @override
  String get inviteBody =>
      'WhatStock is voorlopig alleen op uitnodiging beschikbaar. Voer de uitnodigingscode in die je hebt ontvangen.';

  @override
  String get inviteCodeLabel => 'Uitnodigingscode';

  @override
  String get inviteContinue => 'Doorgaan';

  @override
  String get inviteInvalid => 'Deze uitnodigingscode is niet geldig.';

  @override
  String get inviteExpired =>
      'Deze uitnodiging is verlopen. Vraag degene die je heeft uitgenodigd om een nieuwe code.';

  @override
  String get inviteDeviceLimit =>
      'Deze uitnodigingscode wordt al op het maximale aantal apparaten gebruikt.';

  @override
  String get previewConfidential => 'Vertrouwelijke preview';

  @override
  String get errPreviewDailyLimit =>
      'De analyselimiet van vandaag voor deze preview is bereikt. Probeer het morgen opnieuw.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count uur geleden',
      one: '1 uur geleden',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dagen geleden',
      one: '1 dag geleden',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Deze analyse bijwerken?';

  @override
  String staleBody(String age) {
    return 'Deze is $age gemaakt. Koersen, nieuws en resultaten kunnen sindsdien veranderd zijn.';
  }

  @override
  String get staleKeep => 'Toon de vorige';

  @override
  String get staleRefresh => 'Maak een nieuwe';

  @override
  String seeAll(int count) {
    return 'Alles bekijken ($count)';
  }

  @override
  String get searchAnalyses => 'Zoek in je analyses';

  @override
  String get deleteAnalysis => 'Verwijderen';

  @override
  String analysisDeleted(String symbol) {
    return 'Analyse van $symbol verwijderd';
  }

  @override
  String get keyLevelAlertHint =>
      'Tik op een niveau om een alert te krijgen wanneer de koers het bereikt.';

  @override
  String get shareAnalysisTitle => 'Analyse delen';

  @override
  String get shareAsImage => 'Delen als afbeelding';

  @override
  String get shareAsText => 'Delen als tekst';

  @override
  String get shareCardFooter => 'Gemaakt met WhatStock';

  @override
  String get shareCardDisclaimer => 'AI-analyse · geen beleggingsadvies';

  @override
  String get referralTitle => 'Nodig vrienden uit';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count extra analyses',
      one: '1 extra analyse',
    );
    return 'Deel je code. Je vriend krijgt meteen $_temp0 en jij krijgt hetzelfde na hun eerste analyse.';
  }

  @override
  String get referralYourCode => 'Jouw code';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Uitgenodigd: $invited · Beloond: $rewarded';
  }

  @override
  String get referralHaveCode => 'Code van een vriend gekregen?';

  @override
  String get referralRedeem => 'Inwisselen';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count extra analyses toegevoegd. Welkom!',
      one: '1 extra analyse toegevoegd. Welkom!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Deze code bestaat niet. Controleer hem en probeer het opnieuw.';

  @override
  String get referralErrOwn => 'Je kunt je eigen code niet inwisselen.';

  @override
  String get referralErrAlready =>
      'Je hebt al een code van een vriend ingewisseld.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count extra analyses',
      one: '1 extra analyse',
    );
    return 'Ik analyseer aandelen met WhatStock: maak een foto van een aandeel en de AI legt het uit. Met mijn code $code krijg je $_temp0.';
  }

  @override
  String get referralCopied => 'Code gekopieerd';

  @override
  String get onboardTitle1 => 'Fotografeer een aandeel';

  @override
  String get onboardBody1 =>
      'Een brokerscherm, een krant of een bedrijfslogo is genoeg: WhatStock herkent het aandeel en toont de koers, de grafiek en de belangrijkste cijfers.';

  @override
  String get onboardTitle2 => 'In een paar minuten helder';

  @override
  String get onboardBody2 =>
      'De AI-analyse legt uit wat het aandeel beweegt, wat de risico\'s zijn en hoe het gewaardeerd is, en schetst drie scenario\'s voor waar de koers heen kan – met bronnen en in jouw taal.';

  @override
  String get onboardTitle3 => 'Blijf altijd op de hoogte';

  @override
  String get onboardBody3 =>
      'Favorieten, je portefeuille en koersalerts houden je op de hoogte. Je analyses blijven op je apparaat, klaar om opnieuw te openen.';

  @override
  String get onboardNext => 'Volgende';

  @override
  String get onboardStart => 'Aan de slag';

  @override
  String get onboardSkip => 'Overslaan';

  @override
  String changesTitle(String date) {
    return 'Sinds de vorige analyse ($date)';
  }

  @override
  String get changesPrice => 'Koers';

  @override
  String get changesNoMajor =>
      'De vooruitzichten zijn niet wezenlijk veranderd.';

  @override
  String get changesPreviousSummary => 'Vorige samenvatting';

  @override
  String get telemetryTitle => 'Help WhatStock te verbeteren';

  @override
  String get telemetryBody =>
      'Deel anonieme gebruiksstatistieken en crashrapporten: welke functies worden gebruikt en wat er misging. Nooit je aandelen, analyses of persoonlijke gegevens. Je kunt dit op elk moment wijzigen in Instellingen.';

  @override
  String get telemetryAllow => 'Toestaan';

  @override
  String get telemetryDecline => 'Nee, bedankt';

  @override
  String get telemetrySetting => 'Anonieme statistieken en crashrapporten';

  @override
  String get telemetrySettingHint =>
      'Hoe vaak functies worden gebruikt en foutrapporten, zonder persoonlijke gegevens of de inhoud van je zoekopdrachten en analyses.';

  @override
  String get askButton => 'Stel een vraag over deze analyse';

  @override
  String askTitle(String symbol) {
    return 'Vragen over $symbol';
  }

  @override
  String get askIntro =>
      'Vraag alles over de analyse: wat een risico betekent, wat de vooruitzichten kan veranderen, hoe een getal is berekend. De antwoorden zijn gebaseerd op deze analyse en zijn geen beleggingsadvies.';

  @override
  String get askHint => 'Stel een vraag…';

  @override
  String get askSend => 'Verstuur';

  @override
  String get askThinking => 'Aan het nadenken…';

  @override
  String get askSuggest1 => 'Wat is het grootste risico?';

  @override
  String get askSuggest2 => 'Wat kan de vooruitzichten veranderen?';

  @override
  String get askSuggest3 => 'Leg het eenvoudig uit';

  @override
  String get askMaxReached =>
      'Dat was de laatste vraag voor deze analyse. Genereer een nieuwe analyse om meer te vragen.';

  @override
  String get errAskLimit =>
      'Je hebt de dagelijkse limiet voor vragen bereikt. Probeer het morgen opnieuw.';

  @override
  String get eventTomorrow => 'Morgen';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'over $days dagen',
      one: 'over 1 dag',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Kwartaalcijfers';

  @override
  String get eventBeforeOpen => 'voor de opening';

  @override
  String get eventAfterClose => 'na de sluiting';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS-verwachting: $value';
  }

  @override
  String get eventFromAnalysis => 'Uit je analyse';

  @override
  String get eventsHint =>
      'Cijferdata van je favorieten en portefeuille-aandelen voor de komende 90 dagen, en de gedateerde gebeurtenissen die je analyses hebben gemarkeerd.';

  @override
  String get eventsEmpty =>
      'Geen gedateerde gebeurtenissen in de komende 90 dagen. Voeg favorieten of portefeuille-aandelen toe om hier hun cijferdata te zien.';

  @override
  String get compareTitle => 'Vergelijken';

  @override
  String get compareAdd => 'Aandeel toevoegen';

  @override
  String get compareRemove => 'Verwijderen';

  @override
  String get compareTickerHint => 'Ticker, bijv. MSFT';

  @override
  String get compareHint =>
      'Kerncijfers naast elkaar; de beste waarde per rij is gemarkeerd. Bedragen staan in de eigen valuta van elk aandeel.';

  @override
  String get compareNoAnalysis => 'Nog geen analyse';

  @override
  String get portfolioDividends => 'Jaarlijks dividend';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent dividendrendement';
  }

  @override
  String get portfolioDividendNote =>
      'Het verwachte jaarlijkse dividend is gebaseerd op de dividenden die in de afgelopen 12 maanden zijn uitgekeerd; toekomstige uitkeringen zijn niet gegarandeerd.';

  @override
  String positionDividend(String amount) {
    return 'Dividend: $amount per jaar';
  }

  @override
  String get chartAvgCost => 'Jouw gem.';

  @override
  String get chartAlertLevel => 'Alert';

  @override
  String get marketsToday => 'Markten vandaag';

  @override
  String get notesTitle => 'Mijn notities';

  @override
  String get notesHint =>
      'Waarom heb je het gekocht, waar let je op, wat zou voor jou een reden zijn om te verkopen?';

  @override
  String get notesInfo =>
      'Alleen op dit apparaat opgeslagen. De AI-analyse houdt rekening met je notities.';

  @override
  String notesSaved(String date) {
    return 'Opgeslagen $date';
  }

  @override
  String get peersTitle => 'Vergelijkbare bedrijven';

  @override
  String get portfolioExport => 'Exporteren als CSV';

  @override
  String get portfolioImport => 'Importeren uit CSV';

  @override
  String get portfolioImportHint =>
      'Plak één aankoop per regel: ticker, aantal, prijs, valuta, datum (JJJJ-MM-DD). Kolommen mogen gescheiden zijn door komma\'s, puntkomma\'s of tabs; de kopregel is optioneel.';

  @override
  String get portfolioImportButton => 'Importeren';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aankopen toegevoegd',
      one: '1 aankoop toegevoegd',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count regels overgeslagen',
      one: '1 regel overgeslagen',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Portefeuille, favorieten, koersalerts en notities worden op al je apparaten gesynchroniseerd.';

  @override
  String syncLast(String time) {
    return 'Laatst gesynchroniseerd $time';
  }

  @override
  String get syncNow => 'Nu synchroniseren';

  @override
  String get syncFailed =>
      'Synchronisatie mislukt. Er wordt automatisch opnieuw geprobeerd.';

  @override
  String get alertEmailTitle => 'E-mail wanneer een alert afgaat';

  @override
  String get alertEmailOn =>
      'We controleren je alerts om de paar minuten en sturen je een e-mail, ook als de app gesloten is.';

  @override
  String get alertEmailSignIn =>
      'Log in met je e-mailadres bij Instellingen om alerts per e-mail te krijgen, ook als de app gesloten is.';

  @override
  String get portfolioHistory => 'Waardeontwikkeling';

  @override
  String get portfolioReviewTitle => 'AI-portefeuilleanalyse';

  @override
  String get portfolioReviewIntro =>
      'De AI bekijkt je hele portefeuille: concentratie, blootstelling aan sectoren en valuta, risico’s die je aandelen delen, en dividend. Kost 1 analyse.';

  @override
  String get portfolioReviewButton => 'Mijn portefeuille analyseren';

  @override
  String get portfolioReviewAgain => 'Opnieuw analyseren';

  @override
  String get portfolioReviewWorking => 'Je portefeuille wordt geanalyseerd…';

  @override
  String get digestTitle => 'Wekelijks overzicht per e-mail';

  @override
  String get digestHint =>
      'Elke maandag: hoe je favorieten en portefeuille vorige week bewogen, en wanneer hun volgende kwartaalcijfers komen.';

  @override
  String get benchmarkTitle => 'Vergeleken met de S&P 500';

  @override
  String get benchmarkYours => 'Jouw aankopen';

  @override
  String get benchmarkIndex => 'Zelfde bedragen in de S&P 500';

  @override
  String benchmarkAhead(String points) {
    return '$points procentpunt beter dan de index';
  }

  @override
  String benchmarkBehind(String points) {
    return '$points procentpunt achter op de index';
  }

  @override
  String get benchmarkHint =>
      'Alsof elke aankoop op dezelfde dag in een S&P 500-indexfonds was gestoken. Zonder dividend; rendementen uit het verleden voorspellen geen toekomstige.';

  @override
  String get portfolioSell => 'Verkopen';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbol verkopen';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Verkoopprijs per aandeel ($currency)';
  }

  @override
  String get portfolioSellDate => 'Verkoopdatum';

  @override
  String get portfolioSellAll => 'Alle';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Je hebt $quantity';
  }

  @override
  String get portfolioSold => 'Verkocht';

  @override
  String get portfolioRealized => 'Gerealiseerd';

  @override
  String get portfolioClosed => 'Gesloten posities';

  @override
  String get portfolioClosedNote => 'Alle aandelen verkocht';

  @override
  String get portfolioTransactions => 'Transacties';

  @override
  String get portfolioRealizedByYear => 'Gerealiseerde winst per jaar';

  @override
  String get portfolioRealizedHint =>
      'Verkopen worden eerst gekoppeld aan je oudste aankopen (FIFO) en omgerekend tegen de wisselkoers van vandaag. Gebruik voor je belastingaangifte het overzicht van je broker.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Sinds deze analyse zijn er nieuwe kwartaalcijfers gepubliceerd ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Nieuwe cijfers';

  @override
  String get portfolioImportBrokers =>
      'Exports van Revolut, Trading 212 en Interactive Brokers worden ook herkend, inclusief verkopen; dividenden en stortingen worden overgeslagen.';

  @override
  String get portfolioImportFile => 'Kies een bestand';

  @override
  String offlineBanner(String time) {
    return 'Geen verbinding – de laatst opgeslagen gegevens worden getoond ($time).';
  }

  @override
  String get glossMarketCap =>
      'Wat het hele bedrijf waard is op de beurs: aandelenkoers × aantal aandelen.';

  @override
  String get glossSharesOutstanding =>
      'Hoeveel aandelen het bedrijf heeft uitgegeven. Groeit dit aantal, dan bezit elk aandeel een kleiner stukje; inkoop van eigen aandelen verlaagt het.';

  @override
  String get glossPeTrailing =>
      'Koers ÷ winst per aandeel over de afgelopen 12 maanden: hoeveel jaar huidige winst je betaalt. Lager is goedkoper, maar snelle groeiers hebben meestal een hoge K/W.';

  @override
  String get glossPeForward =>
      'Zoals de K/W, maar met de winst die analisten voor de komende 12 maanden verwachten. Lager dan de achterlopende K/W betekent dat de winst naar verwachting groeit.';

  @override
  String get glossPb =>
      'Koers ÷ boekwaarde (bezittingen min schulden) per aandeel. Rond 1 betekent dat de markt het bedrijf waardeert op wat het op papier bezit.';

  @override
  String get glossPs =>
      'Marktwaarde ÷ jaaromzet. Handig voor bedrijven met nog weinig of geen winst; vergelijk binnen dezelfde sector.';

  @override
  String get glossEvToFcf =>
      'Bedrijfswaarde inclusief schulden (EV) ÷ het geld dat het in een jaar na investeringen overhoudt. Lager betekent meer kasstroom voor je geld.';

  @override
  String get glossPeg =>
      'K/W ÷ verwachte jaarlijkse winstgroei (%). Rond 1 wordt vaak als redelijk gezien; het zet de K/W af tegen de groei.';

  @override
  String get glossEps =>
      'Winst per aandeel over de afgelopen 12 maanden. Een EPS die jaar na jaar stijgt is een van de sterkste tekenen van een gezond bedrijf.';

  @override
  String get glossBeta =>
      'Hoe sterk het aandeel met de markt meebeweegt: 1 = zoals de markt, 1,5 = ongeveer 50% grotere schommelingen, onder 1 = rustiger.';

  @override
  String get glossRevenueTtm =>
      'Totale verkopen van de afgelopen 12 maanden, vóór alle kosten.';

  @override
  String get glossNetIncomeTtm =>
      'De winst die overblijft na alle kosten, rente en belastingen over de afgelopen 12 maanden.';

  @override
  String get glossGrossMargin =>
      'Het deel van de omzet dat overblijft na de directe kosten van de producten. Een hoge marge wijst vaak op prijszettingsmacht.';

  @override
  String get glossOperatingMargin =>
      'Het deel van de omzet dat overblijft na de bedrijfsvoering (lonen, huur, marketing), vóór rente en belastingen.';

  @override
  String get glossNetMargin =>
      'Het deel van de omzet dat uiteindelijk winst wordt. 20% betekent dat van elke 100 aan omzet 20 winst is.';

  @override
  String get glossRoe =>
      'Rendement op eigen vermogen: jaarwinst ÷ het kapitaal van de eigenaren. Laat zien hoe goed het management het geld van aandeelhouders inzet; boven ongeveer 15% is sterk.';

  @override
  String get glossRoa =>
      'Rendement op activa: jaarwinst ÷ alles wat het bedrijf bezit. Vergelijk binnen dezelfde sector.';

  @override
  String get glossDebtToEquity =>
      'Schulden ÷ het kapitaal van de eigenaren. Hoger betekent meer geleend geld: meer risico als de rente stijgt of de zaken vertragen.';

  @override
  String get glossCurrentRatio =>
      'Kortlopende bezittingen ÷ rekeningen die binnen een jaar betaald moeten worden. Boven 1 betekent dat het bedrijf zijn kortetermijnrekeningen kan betalen.';

  @override
  String get glossRevenueGrowth =>
      'Hoeveel de omzet is gegroeid ten opzichte van een jaar eerder.';

  @override
  String get glossEpsGrowth =>
      'Hoeveel de winst per aandeel is gegroeid ten opzichte van een jaar eerder.';

  @override
  String get glossDividendYield =>
      'Jaarlijks dividend ÷ aandelenkoers: het geld dat je per jaar ontvangt, als percentage van wat je betaalt.';

  @override
  String get glossDividendPerShare =>
      'Het dividend dat het afgelopen jaar op één aandeel is uitgekeerd.';

  @override
  String get glossPayoutRatio =>
      'Het deel van de winst dat als dividend wordt uitgekeerd. Boven 100% keert het bedrijf meer uit dan het verdient, wat zelden lang houdbaar is.';

  @override
  String get glossTitle => 'Wat betekent dit?';

  @override
  String get watchNewsTitle => 'Nieuws over je aandelen';

  @override
  String get undo => 'Ongedaan maken';

  @override
  String get watchSort => 'Sorteren';

  @override
  String get watchSortOwn => 'Eigen volgorde';

  @override
  String get watchSortGainers => 'Grootste stijgers eerst';

  @override
  String get watchSortLosers => 'Grootste dalers eerst';

  @override
  String get watchSortName => 'Op ticker (A–Z)';

  @override
  String get watchHint =>
      'Sleep de greep om de volgorde te wijzigen, veeg naar links om te verwijderen. De lijn toont de afgelopen 30 dagen.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: je analyse is klaar.';
  }

  @override
  String alertFromCost(String price) {
    return 'Op basis van je gemiddelde aankoopprijs ($price):';
  }

  @override
  String get briefTitle => 'Vandaag met je aandelen';

  @override
  String get briefButton => 'Vat vandaag samen';

  @override
  String get briefHint =>
      'Een korte AI-samenvatting van hoe je portefeuille en favorieten vandaag bewogen en wat het laatste nieuws erover zegt. Gebruikt geen analyse.';

  @override
  String get briefRefresh => 'Bijwerken';

  @override
  String get sectionEarnings => 'Kwartaalcijfers';

  @override
  String earningsNext(String date) {
    return 'Volgende cijfers: $date';
  }

  @override
  String get earningsExpected => 'Verwachte EPS';

  @override
  String get earningsReported => 'Gerapporteerde EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Gelijk aan of boven de verwachte EPS in $beats van de laatste $total kwartalen',
      one: 'Gelijk aan of boven de verwachte EPS in $beats van 1 kwartaal',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol publiceert morgen kwartaalcijfers';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol publiceert vandaag kwartaalcijfers';
  }

  @override
  String get earningsRemindersTitle => 'Herinnering kwartaalcijfers';

  @override
  String get earningsRemindersSubtitle =>
      'Een melding de dag voordat je favorieten of portefeuilleaandelen kwartaalcijfers publiceren';
}
