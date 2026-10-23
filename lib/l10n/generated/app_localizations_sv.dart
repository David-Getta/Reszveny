// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'Fotografera en aktie och lär dig allt om den.';

  @override
  String get homeHint =>
      'Ett aktiebrev, en skärm i en mäklarapp, en tidning eller en företagslogotyp – allt som identifierar en aktie.';

  @override
  String get takePhoto => 'Ta ett foto';

  @override
  String get chooseFromGallery => 'Välj från galleriet';

  @override
  String get chooseImage => 'Välj en bild';

  @override
  String get enterTickerManually => 'Ange ticker manuellt';

  @override
  String get tickerInputLabel => 'Tickersymbol';

  @override
  String get tickerInputHint => 't.ex. AAPL';

  @override
  String get lookUp => 'Sök';

  @override
  String demoModeBanner(String symbols) {
    return 'Demoläge – ingen marknadsdatanyckel konfigurerad. Exempeldata finns för: $symbols.';
  }

  @override
  String get recognizing => 'Analyserar bilden…';

  @override
  String get loadingData => 'Läser in data…';

  @override
  String get noCandidatesTitle => 'Ingen aktie identifierad';

  @override
  String get noCandidatesBody =>
      'Vi kunde inte identifiera någon aktie i bilden. Prova ett skarpare foto eller ange tickern manuellt.';

  @override
  String get whatWeSaw => 'Vad vi såg';

  @override
  String get chooseCandidateTitle => 'Vilken aktie menade du?';

  @override
  String confidencePercent(int percent) {
    return '$percent% säkerhet';
  }

  @override
  String get settings => 'Inställningar';

  @override
  String get language => 'Språk';

  @override
  String get systemLanguage => 'Systemstandard';

  @override
  String get about => 'Om';

  @override
  String get disclaimer =>
      'Appen tillhandahåller endast information och utgör inte investeringsrådgivning. Data kan vara fördröjd eller felaktig.';

  @override
  String dataSource(String source) {
    return 'Datakälla: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Igenkänning: $source';
  }

  @override
  String get retry => 'Försök igen';

  @override
  String get cancel => 'Avbryt';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Stäng';

  @override
  String get errorGeneric => 'Något gick fel.';

  @override
  String get errorSectionUnavailable =>
      'Det här avsnittet kunde inte läsas in.';

  @override
  String get notAvailable => 'ej tillg.';

  @override
  String get sectionIdentity => 'Identifiering';

  @override
  String get sectionPrice => 'Kurs';

  @override
  String get sectionValuation => 'Värdering';

  @override
  String get sectionFinancials => 'Nyckeltal';

  @override
  String get sectionDividend => 'Utdelning';

  @override
  String get sectionProfile => 'Företagsprofil';

  @override
  String get sectionAnalysts => 'Analytikerrekommendationer';

  @override
  String get sectionNews => 'Nyheter';

  @override
  String get sectionRecognition => 'Igenkänningsdetaljer';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Börs';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Valuta';

  @override
  String get labelCountry => 'Land';

  @override
  String get labelIndustry => 'Bransch';

  @override
  String get labelSector => 'Sektor';

  @override
  String get labelWebsite => 'Webbplats';

  @override
  String get labelIpoDate => 'IPO-datum';

  @override
  String get labelMarketCap => 'Börsvärde';

  @override
  String get labelSharesOutstanding => 'Utestående aktier';

  @override
  String get labelEmployees => 'Anställda';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Huvudkontor';

  @override
  String get labelDescription => 'Beskrivning';

  @override
  String get labelLastPrice => 'Senaste kurs';

  @override
  String get labelChange => 'Förändring';

  @override
  String get labelOpen => 'Öppning';

  @override
  String get labelDayHigh => 'Dagshögsta';

  @override
  String get labelDayLow => 'Dagslägsta';

  @override
  String get labelPreviousClose => 'Föregående stängning';

  @override
  String get labelWeek52High => '52-veckors högsta';

  @override
  String get labelWeek52Low => '52-veckors lägsta';

  @override
  String get labelAverageVolume10d => 'Snittvolym (10 dagar)';

  @override
  String updatedAt(String time) {
    return 'Uppdaterad $time';
  }

  @override
  String get labelPeTrailing => 'P/E (historiskt)';

  @override
  String get labelPeForward => 'P/E (framåtblickande)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / fritt kassaflöde';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Omsättning (TTM)';

  @override
  String get labelNetIncomeTtm => 'Nettoresultat (TTM)';

  @override
  String get labelGrossMargin => 'Bruttomarginal';

  @override
  String get labelOperatingMargin => 'Rörelsemarginal';

  @override
  String get labelNetMargin => 'Nettomarginal';

  @override
  String get labelRoe => 'Avkastning på eget kapital';

  @override
  String get labelRoa => 'Avkastning på tillgångar';

  @override
  String get labelDebtToEquity => 'Skuld / eget kapital';

  @override
  String get labelCurrentRatio => 'Balanslikviditet';

  @override
  String get labelRevenueGrowth => 'Omsättningstillväxt (YoY)';

  @override
  String get labelEpsGrowth => 'EPS-tillväxt (YoY)';

  @override
  String get labelDividendYield => 'Direktavkastning';

  @override
  String get labelDividendPerShare => 'Utdelning per aktie';

  @override
  String get labelPayoutRatio => 'Utdelningsandel';

  @override
  String get labelYieldOnCost => 'Direktavkastning på inköpspris';

  @override
  String get labelDividendGrowth5y => 'Utdelningstillväxt (5 år)';

  @override
  String get dividendNone => 'Ingen utdelning de senaste 12 månaderna.';

  @override
  String get dividendOnYourShares => 'På dina aktier, per år';

  @override
  String get labelConsensus => 'Konsensus';

  @override
  String get ratingStrongBuy => 'Starkt köp';

  @override
  String get ratingBuy => 'Köp';

  @override
  String get ratingHold => 'Behåll';

  @override
  String get ratingSell => 'Sälj';

  @override
  String get ratingStrongSell => 'Starkt sälj';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analytiker',
      one: '1 analytiker',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Period: $period';
  }

  @override
  String get noNews => 'Inga aktuella nyheter.';

  @override
  String get openArticle => 'Öppna artikel';

  @override
  String get openLinkFailed => 'Länken kunde inte öppnas.';

  @override
  String get recognitionSummary => 'Sammanfattning';

  @override
  String get recognitionEvidence => 'Varför vi tror det';

  @override
  String get recognitionRawText => 'Text läst från bilden';

  @override
  String get errMissingAnthropicKey =>
      'Bildigenkänning är inte konfigurerad (ingen ANTHROPIC_API_KEY). Ange tickern manuellt.';

  @override
  String get errRecognitionUnreachable =>
      'Kunde inte nå igenkänningstjänsten. Kontrollera din internetanslutning.';

  @override
  String errRecognitionHttp(String status) {
    return 'Igenkänningstjänsten returnerade ett fel (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Igenkänningstjänsten kunde inte behandla bilden.';

  @override
  String get errRecognitionTruncated =>
      'Svaret från igenkänningstjänsten avbröts. Försök igen.';

  @override
  String get errRecognitionBadResponse =>
      'Oväntat svar från igenkänningstjänsten.';

  @override
  String get errRecognitionEmpty =>
      'Igenkänningstjänsten returnerade ett tomt svar.';

  @override
  String get errMissingFinnhubKey =>
      'Marknadsdata är inte konfigurerad (ingen FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Kunde inte nå marknadsdatatjänsten. Kontrollera din internetanslutning.';

  @override
  String get errMarketRateLimited =>
      'För många förfrågningar till marknadsdatatjänsten. Vänta en minut.';

  @override
  String errMarketHttp(String status) {
    return 'Marknadsdatatjänsten returnerade ett fel (HTTP $status).';
  }

  @override
  String get errMarketBadResponse => 'Oväntat svar från marknadsdatatjänsten.';

  @override
  String errNoQuote(String symbol) {
    return 'Inga kursdata hittades för $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Ingen företagsprofil hittades för $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Demoläget stöder endast $symbols. Lägg till en FINNHUB_API_KEY för realtidsdata.';
  }

  @override
  String errUnknown(String detail) {
    return 'Något gick fel: $detail';
  }

  @override
  String get newSearch => 'Ny sökning';

  @override
  String get recentSearches => 'Senaste';

  @override
  String get noRecentSearches => 'Inga senaste sökningar ännu.';

  @override
  String get clearRecent => 'Rensa senaste';

  @override
  String get greeting => 'Vilken aktie ska vi titta på?';

  @override
  String get searchHint => 'Ticker eller företagsnamn';

  @override
  String get attachImage => 'Bifoga en bild';

  @override
  String get searchResultsTitle => 'Sökresultat';

  @override
  String errNoResults(String query) {
    return 'Inga aktier hittades för ”$query”.';
  }

  @override
  String get quickBarHint => 'Skriv en ticker eller ett företagsnamn…';

  @override
  String get openFullWindow => 'Öppna fönster';

  @override
  String hotkeyHint(String shortcut) {
    return 'Tryck på $shortcut var som helst för att öppna WhatStock.';
  }

  @override
  String get trayOpen => 'Öppna WhatStock';

  @override
  String get trayQuickSearch => 'Snabbsökning';

  @override
  String get trayQuit => 'Avsluta';

  @override
  String get appearance => 'Utseende';

  @override
  String get themeSystem => 'System';

  @override
  String get themeDark => 'Mörkt';

  @override
  String get themeLight => 'Ljust';

  @override
  String get back => 'Tillbaka';

  @override
  String get aiSectionTitle => 'AI-analys';

  @override
  String get aiIntro =>
      'En detaljerad, AI-skriven översikt: sammanfattning av aktuella nyheter, verksamheten, styrkor, risker och dolda faktorer, värdering, en kursutsikt med scenarier ur psykologiska, sociologiska, tekniska och makroekonomiska perspektiv samt vad som är värt att bevaka.';

  @override
  String get aiGenerate => 'Generera analys';

  @override
  String get aiRegenerate => 'Generera igen';

  @override
  String get aiGenerating =>
      'Analysen förbereds… det kan ta en minut eller två.';

  @override
  String get aiSources => 'Källor';

  @override
  String aiGeneratedAt(String time) {
    return 'Genererad $time';
  }

  @override
  String get aiDisclaimer =>
      'AI-genererad analys baserad på offentliga data och aktuella nyheter. Den kan innehålla fel eller vara inaktuell och är inte investeringsrådgivning.';

  @override
  String get errAiNotConfigured =>
      'AI-analys är inte konfigurerad (ingen ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Kunde inte nå AI-tjänsten. Kontrollera din internetanslutning.';

  @override
  String errAiHttp(String status) {
    return 'AI-tjänsten returnerade ett fel (HTTP $status).';
  }

  @override
  String get errAiRefused =>
      'AI-tjänsten avböjde att analysera den här aktien.';

  @override
  String get errAiBadResponse => 'Oväntat svar från AI-tjänsten.';

  @override
  String get sectionChart => 'Kursdiagram';

  @override
  String get rangeOneWeek => '1V';

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
      'Kurshistorik är inte tillgänglig från den aktuella datakällan.';

  @override
  String get sectionStatements => 'Finansiella rapporter (årliga)';

  @override
  String get labelFiscalYear => 'Räkenskapsår';

  @override
  String get labelRevenue => 'Omsättning';

  @override
  String get labelNetIncome => 'Nettoresultat';

  @override
  String get labelTotalAssets => 'Totala tillgångar';

  @override
  String get labelTotalLiabilities => 'Totala skulder';

  @override
  String get labelEquity => 'Eget kapital';

  @override
  String get labelOperatingCashFlow => 'Operativt kassaflöde';

  @override
  String get statementsUnavailable =>
      'Inga rapporterade finansiella rapporter är tillgängliga för den här aktien.';

  @override
  String get launchAtLogin => 'Starta vid inloggning';

  @override
  String get hotkeyLabel => 'Globalt kortkommando';

  @override
  String get hotkeyRecordHint =>
      'Klicka här och tryck sedan på den nya tangentkombinationen';

  @override
  String get hotkeyReset => 'Återställ till standard';

  @override
  String get pasteImage => 'Klistra in bild från urklipp';

  @override
  String get errClipboardNoImage => 'Det finns ingen bild i urklipp.';

  @override
  String get favorites => 'Favoriter';

  @override
  String get addToFavorites => 'Lägg till i favoriter';

  @override
  String get removeFromFavorites => 'Ta bort från favoriter';

  @override
  String get noFavorites =>
      'Inga favoriter ännu. Tryck på stjärnan vid en aktie för att lägga till den.';

  @override
  String get displayCurrency => 'Visningsvaluta';

  @override
  String get displayCurrencyNone => 'Endast aktiens egen valuta';

  @override
  String labelConverted(String currency) {
    return '≈ i $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Kurs: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Uppdateringar';

  @override
  String currentVersion(String version) {
    return 'Version $version';
  }

  @override
  String get autoUpdate => 'Installera uppdateringar automatiskt';

  @override
  String get checkForUpdates => 'Sök efter uppdateringar';

  @override
  String get updateChecking => 'Söker efter uppdateringar…';

  @override
  String get updateUpToDate => 'Du har den senaste versionen.';

  @override
  String updateAvailable(String version) {
    return 'Version $version är tillgänglig.';
  }

  @override
  String get updateDownloading => 'Uppdateringen hämtas i bakgrunden…';

  @override
  String get updateDownloaded =>
      'Uppdateringen är klar. Starta om för att installera den.';

  @override
  String get updateNow => 'Uppdatera';

  @override
  String get restartNow => 'Starta om';

  @override
  String get updatesViaStore =>
      'Uppdateringar kommer automatiskt via appbutiken.';

  @override
  String get updateCheckFailed => 'Det gick inte att söka efter uppdateringar.';

  @override
  String get subscription => 'Prenumeration';

  @override
  String get planTrial => 'Provperiod';

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
    return '$count analyser per månad';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$days dagars gratis provperiod med $count analyser';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days dagar kvar av provperioden',
      one: '1 dag kvar av provperioden',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Din gratis provperiod har gått ut. Välj en plan för att fortsätta analysera.';

  @override
  String analysesRemaining(int remaining, int total) {
    return '$remaining av $total analyser kvar denna period';
  }

  @override
  String extraCredits(int count) {
    return '$count extra analyser';
  }

  @override
  String renewsOn(String date) {
    return 'Förnyas $date';
  }

  @override
  String get choosePlan => 'Välj en plan';

  @override
  String get currentPlan => 'Nuvarande plan';

  @override
  String get subscribe => 'Prenumerera';

  @override
  String get perMonth => '/ månad';

  @override
  String get extraPacksTitle => 'Behöver du fler? Köp extra analyser';

  @override
  String get extraPacksHint =>
      'Extra analyser går aldrig ut och används efter din månatliga kvot.';

  @override
  String get buy => 'Köp';

  @override
  String get restorePurchases => 'Återställ köp';

  @override
  String get manageSubscription => 'Hantera prenumeration';

  @override
  String get purchaseSuccess => 'Tack! Ditt köp är aktivt.';

  @override
  String get purchasePending => 'Köpet väntar…';

  @override
  String get purchaseFailed => 'Köpet kunde inte slutföras.';

  @override
  String get purchaseCanceled => 'Köpet avbröts.';

  @override
  String get billingUnavailable =>
      'Köp är inte tillgängliga på den här plattformen ännu. Prenumerera på din telefon eller Mac; din plan fungerar på alla enheter.';

  @override
  String get errQuotaExceeded =>
      'Du har inga analyser kvar för denna period. Uppgradera din plan eller köp extra analyser.';

  @override
  String get errTrialExpired =>
      'Din gratis provperiod har gått ut. Välj en plan för att fortsätta.';

  @override
  String get errNoPlan => 'En aktiv plan krävs för AI-analys.';

  @override
  String get viewPlans => 'Visa planer';

  @override
  String get usageTitle => 'Användning';

  @override
  String get demoPurchaseNote =>
      'Demofakturering: köp simuleras på den här plattformen.';

  @override
  String get mostPopular => 'Populärast';

  @override
  String get bestValue => 'Bäst värde';

  @override
  String get planFeaturesCommon =>
      'Fotoigenkänning, realtidsdata, diagram, favoriter och alla 120 språk ingår i varje plan. Kvoten gäller AI-analyser.';

  @override
  String get searchLanguages => 'Sök språk…';

  @override
  String get noLanguageMatch => 'Inget språk matchar.';

  @override
  String get aiSettings => 'AI-analys';

  @override
  String get aiLength => 'Längd';

  @override
  String get aiDepthBrief => 'Kort';

  @override
  String get aiDepthStandard => 'Standard';

  @override
  String get aiDepthDeep => 'Fördjupad';

  @override
  String get aiDepthBriefDesc => 'Det viktigaste, snabbt.';

  @override
  String get aiDepthStandardDesc => 'Fullständig rapport med alla avsnitt.';

  @override
  String get aiDepthDeepDesc =>
      'Fler webbsökningar, jämförelse med jämförbara bolag och mer detaljer.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Cirka $min–$max ord';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'använder $count analyser',
      one: 'använder 1 analys',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Läsnivå';

  @override
  String get aiReaderBeginner => 'Nybörjare';

  @override
  String get aiReaderExperienced => 'Erfaren';

  @override
  String get aiReaderBeginnerDesc => 'Enkelt språk; varje fackterm förklaras.';

  @override
  String get aiReaderExperiencedDesc =>
      'Tätare text med vedertagen finansiell terminologi.';

  @override
  String get aiCounterArgument => 'Starkaste motargumentet';

  @override
  String get aiCounterArgumentDesc =>
      'Sammanfattningen avslutas alltid med det starkaste argumentet mot den egna slutsatsen.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Upp till $count webbsökningar per analys med din plan',
      one: 'Upp till 1 webbsökning per analys med din plan',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Standardlängd per plan: Normal $normal, Pro $pro, Max $max, Ultra $ultra. Kort använder 2 färre, Fördjupad 2 fler.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'upp till $count webbsökningar',
      one: 'upp till 1 webbsökning',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count webbsökningar per analys',
      one: '1 webbsökning per analys',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Den här längden kräver $needed analyser, men du har bara $left kvar. Välj en kortare längd i Inställningar eller skaffa fler analyser.';
  }

  @override
  String get outlookMarketMood => 'Marknadsstämning';

  @override
  String get moodVeryPessimistic => 'Mycket pessimistisk';

  @override
  String get moodPessimistic => 'Pessimistisk';

  @override
  String get moodNeutral => 'Neutral';

  @override
  String get moodOptimistic => 'Optimistisk';

  @override
  String get moodVeryOptimistic => 'Mycket optimistisk';

  @override
  String get scenarioBull => 'Positivt scenario';

  @override
  String get scenarioBase => 'Basscenario';

  @override
  String get scenarioBear => 'Negativt scenario';

  @override
  String outlookCurrentPrice(String price) {
    return 'Aktuell kurs: $price';
  }

  @override
  String get outlookKeyLevels => 'Viktiga nivåer';

  @override
  String get keyLevelSupport => 'Stöd';

  @override
  String get keyLevelResistance => 'Motstånd';

  @override
  String get keyLevelAnchor => 'Ankarnivå';

  @override
  String get upcomingEvents => 'Kommande händelser';

  @override
  String get outlookChartNote =>
      'Vägledande intervall; sannolikheterna är grova bedömningar, inte prognoser.';

  @override
  String get accountTitle => 'Konto';

  @override
  String get signIn => 'Logga in';

  @override
  String get signOut => 'Logga ut';

  @override
  String get notSignedIn => 'Inte inloggad';

  @override
  String get accountBenefit =>
      'Logga in så fungerar din prenumeration på alla dina enheter.';

  @override
  String get accountSyncedNote =>
      'Din prenumeration och dina återstående analyser är desamma på alla enheter.';

  @override
  String get signInTitle => 'Logga in på WhatStock';

  @override
  String get emailLabel => 'E-postadress';

  @override
  String get continueWithEmail => 'Fortsätt med e-post';

  @override
  String codeSentTo(String email) {
    return 'Vi har skickat en sexsiffrig kod till $email. Den gäller i 10 minuter.';
  }

  @override
  String get codeLabel => 'Inloggningskod';

  @override
  String get resendCode => 'Skicka ny kod';

  @override
  String get useDifferentEmail => 'Använd en annan e-postadress';

  @override
  String get errInvalidCode => 'Koden är fel eller har gått ut.';

  @override
  String get errInvalidEmail => 'Ange en giltig e-postadress.';

  @override
  String get errSignInFailed =>
      'Inloggningen misslyckades. Kontrollera anslutningen och försök igen.';

  @override
  String get checkoutWaiting =>
      'Slutför betalningen i webbläsaren. Appen uppdateras automatiskt när den är klar.';

  @override
  String get paymentViaStripe =>
      'Säker betalning i webbläsaren via Stripe. Avsluta när du vill.';

  @override
  String get paymentViaStore =>
      'Debiteras via ditt App Store- eller Google Play-konto. Avsluta när du vill i butikens inställningar.';

  @override
  String get keySpace => 'Mellanslag';

  @override
  String get doubleOptionTitle => 'Dubbeltryck på alternativtangenten';

  @override
  String get doubleOptionSubtitle =>
      'Du kan också öppna WhatStock genom att snabbt trycka två gånger på alternativtangenten.';

  @override
  String get doubleOptionPermission =>
      'Om det ska fungera även i andra appar måste du tillåta WhatStock under Systeminställningar → Integritet och säkerhet → Inmatningsövervakning och sedan öppna appen igen.';

  @override
  String get openSystemSettings => 'Öppna Systeminställningar';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Tryck på $shortcut eller dubbeltryck på alternativtangenten var som helst för att öppna WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Mest sannolikt';

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
    return 'mest sannolikt $price';
  }

  @override
  String get confidenceLow => 'Låg säkerhet';

  @override
  String get confidenceMedium => 'Medelhög säkerhet';

  @override
  String get confidenceHigh => 'Hög säkerhet';

  @override
  String get longTermNote =>
      'De långsiktiga intervallen bygger på de angivna antagandena och vidgas med tiden. Kurser exklusive utdelning. Grova bedömningar, inte prognoser.';

  @override
  String get portfolio => 'Portfölj';

  @override
  String get portfolioEmpty =>
      'Inget här ännu. Öppna en aktie och tryck på ”Lägg till i portföljen” för att följa ditt innehav.';

  @override
  String get portfolioLocalNote =>
      'Sparas bara på den här enheten. Summorna räknas om till ECB:s referenskurser; kurserna kan vara fördröjda.';

  @override
  String get addToPortfolio => 'Lägg till i portföljen';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Lägg till $symbol';
  }

  @override
  String get portfolioQuantity => 'Antal aktier';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Pris per aktie ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Köpdatum';

  @override
  String get portfolioAdd => 'Lägg till';

  @override
  String get portfolioInvalidNumber => 'Ange ett tal större än noll.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol har lagts till i portföljen.';
  }

  @override
  String get portfolioTotalValue => 'Totalt värde';

  @override
  String get portfolioToday => 'I dag';

  @override
  String get portfolioGainLoss => 'Vinst/förlust';

  @override
  String homeDividendsThisYear(String amount) {
    return 'Utdelningar i år: $amount';
  }

  @override
  String get portfolioInvested => 'Investerat';

  @override
  String get portfolioAllocation => 'Fördelning';

  @override
  String get portfolioPositions => 'Innehav';

  @override
  String portfolioAvgCost(String price) {
    return 'snittkurs $price';
  }

  @override
  String get portfolioYourPosition => 'Ditt innehav';

  @override
  String get portfolioPurchases => 'Köp';

  @override
  String get portfolioRemove => 'Ta bort';

  @override
  String get portfolioExcluded =>
      'Innehav utan kurs eller växelkurs räknas inte med i summorna.';

  @override
  String get priceAlerts => 'Kurslarm';

  @override
  String get setPriceAlert => 'Ställ in kurslarm';

  @override
  String alertDialogTitle(String symbol) {
    return 'Kurslarm · $symbol';
  }

  @override
  String get alertKindAbove => 'Stiger över';

  @override
  String get alertKindBelow => 'Faller under';

  @override
  String get alertKindMove => 'Rör sig mycket på en dag';

  @override
  String alertTargetPrice(String currency) {
    return 'Kurs ($currency)';
  }

  @override
  String get alertMovePercent => 'Dagsrörelse (%)';

  @override
  String get alertAlreadyMet => 'Kursen har redan passerat den här nivån.';

  @override
  String get alertSave => 'Ställ in larm';

  @override
  String alertCreated(String symbol) {
    return 'Larm inställt för $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Inga kurslarm ännu. Öppna en aktie och tryck på klockan.';

  @override
  String get alertsNote =>
      'Larmen kontrolleras var 5:e minut medan WhatStock körs. På datorn fortsätter appen i menyraden eller systemfältet; på mobilen kommer larmen tills vidare bara när appen är öppen.';

  @override
  String alertDescAbove(String price) {
    return 'Över $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Under $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Dagsrörelse ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Utlöst $date vid $price';
  }

  @override
  String get alertRearm => 'Aktivera igen';

  @override
  String get alertDelete => 'Ta bort';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol steg över $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol föll under $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol rörde sig $percent i dag';
  }

  @override
  String alertHitBody(String price) {
    return 'Aktuell kurs: $price';
  }

  @override
  String get alertOpen => 'Öppna';

  @override
  String get keepInTrayTitle => 'Fortsätt köra när fönstret stängs';

  @override
  String get keepInTraySubtitle =>
      'WhatStock stannar i menyraden eller systemfältet, så att kortkommandot och kurslarmen fortsätter att fungera.';

  @override
  String get termsOfUse => 'Användarvillkor';

  @override
  String get privacyPolicy => 'Integritetspolicy';

  @override
  String get subscriptionLegal =>
      'Prenumerationen förnyas automatiskt varje månad tills du säger upp den. Genom att prenumerera godkänner du användarvillkoren och integritetspolicyn.';

  @override
  String get deleteAccount => 'Radera konto';

  @override
  String get deleteAccountTitle => 'Radera ditt konto?';

  @override
  String get deleteAccountBody =>
      'Ditt konto och allt som lagras på vår server (e-post, kvot, användning) raderas permanent, och oanvända analyser går förlorade. En prenumeration som betalats i webbläsaren sägs upp direkt; en prenumeration via App Store eller Google Play måste sägas upp i butikens inställningar.';

  @override
  String get deleteLocalData =>
      'Radera även data på den här enheten (portfölj, larm, favoriter, historik, sparade analyser)';

  @override
  String get deleteAccountConfirm => 'Radera permanent';

  @override
  String get accountDeleted => 'Ditt konto har raderats.';

  @override
  String get errDeleteAccount =>
      'Kontot kunde inte raderas. Kontrollera anslutningen och försök igen.';

  @override
  String get aiTrialBriefNote =>
      'Analyser under provperioden är korta och görs med en snabbare AI-modell. Med en plan får du vår mest kapabla AI, fler webbsökningar och längderna Standard och Fördjupad.';

  @override
  String get billingMonthly => 'Månadsvis';

  @override
  String get billingYearly => 'Årsvis';

  @override
  String get yearlyDiscount => '2 månader gratis';

  @override
  String get perYear => '/ år';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price per månad';
  }

  @override
  String get subscriptionLegalYearly =>
      'Årsprenumerationen förnyas automatiskt varje år tills du säger upp den. Genom att prenumerera godkänner du användarvillkoren och integritetspolicyn.';

  @override
  String get myAnalyses => 'Mina analyser';

  @override
  String get navAlerts => 'Larm';

  @override
  String get inviteTitle => 'Stängd förhandsversion';

  @override
  String get inviteBody =>
      'WhatStock är tills vidare bara tillgängligt via inbjudan. Ange inbjudningskoden du har fått.';

  @override
  String get inviteCodeLabel => 'Inbjudningskod';

  @override
  String get inviteContinue => 'Fortsätt';

  @override
  String get inviteInvalid => 'Den här inbjudningskoden är inte giltig.';

  @override
  String get inviteExpired =>
      'Inbjudan har gått ut. Be personen som bjöd in dig om en ny kod.';

  @override
  String get inviteDeviceLimit =>
      'Den här inbjudningskoden används redan på det högsta tillåtna antalet enheter.';

  @override
  String get previewConfidential => 'Konfidentiell förhandsversion';

  @override
  String get errPreviewDailyLimit =>
      'Dagens analysgräns för den här förhandsversionen är nådd. Försök igen i morgon.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'för $count timmar sedan',
      one: 'för 1 timme sedan',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'för $count dagar sedan',
      one: 'för 1 dag sedan',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Uppdatera analysen?';

  @override
  String staleBody(String age) {
    return 'Den gjordes $age. Kurser, nyheter och resultat kan ha ändrats sedan dess.';
  }

  @override
  String get staleKeep => 'Visa den tidigare';

  @override
  String get staleRefresh => 'Gör en ny';

  @override
  String seeAll(int count) {
    return 'Visa alla ($count)';
  }

  @override
  String get searchAnalyses => 'Sök bland dina analyser';

  @override
  String get deleteAnalysis => 'Radera';

  @override
  String analysisDeleted(String symbol) {
    return 'Analysen av $symbol har raderats';
  }

  @override
  String get keyLevelAlertHint =>
      'Tryck på en nivå för att få ett larm när kursen når den.';

  @override
  String get shareAnalysisTitle => 'Dela analys';

  @override
  String get shareAsImage => 'Dela som bild';

  @override
  String get shareAsText => 'Dela som text';

  @override
  String get shareCardFooter => 'Skapad med WhatStock';

  @override
  String get shareCardDisclaimer => 'AI-analys · inte investeringsrådgivning';

  @override
  String get referralTitle => 'Bjud in vänner';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count extra analyser',
      one: '1 extra analys',
    );
    return 'Dela din kod. Din vän får $_temp0 direkt, och du får lika många efter vännens första analys.';
  }

  @override
  String get referralYourCode => 'Din kod';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Inbjudna: $invited · Belönade: $rewarded';
  }

  @override
  String get referralHaveCode => 'Har du en kod från en vän?';

  @override
  String get referralRedeem => 'Lös in';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count extra analyser har lagts till. Välkommen!',
      one: '1 extra analys har lagts till. Välkommen!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Koden finns inte. Kontrollera den och försök igen.';

  @override
  String get referralErrOwn => 'Du kan inte lösa in din egen kod.';

  @override
  String get referralErrAlready => 'Du har redan löst in en väns kod.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count extra analyser',
      one: '1 extra analys',
    );
    return 'Jag analyserar aktier med WhatStock: fota en aktie så förklarar AI:n den. Med min kod $code får du $_temp0.';
  }

  @override
  String get referralCopied => 'Kod kopierad';

  @override
  String get onboardTitle1 => 'Fotografera en aktie';

  @override
  String get onboardBody1 =>
      'Det räcker med en mäklarskärm, en tidning eller en företagslogga: WhatStock känner igen aktien och visar kurs, diagram och nyckeltal.';

  @override
  String get onboardTitle2 => 'Förstå den på några minuter';

  @override
  String get onboardBody2 =>
      'AI-analysen förklarar vad som driver aktien, riskerna, värderingen och tre scenarier för vart kursen kan ta vägen – med källor och på ditt språk.';

  @override
  String get onboardTitle3 => 'Ha koll på läget';

  @override
  String get onboardBody3 =>
      'Favoriter, din portfölj och kurslarm håller dig uppdaterad. Dina analyser sparas på din enhet, redo att öppnas igen.';

  @override
  String get onboardNext => 'Nästa';

  @override
  String get onboardStart => 'Kom igång';

  @override
  String get onboardSkip => 'Hoppa över';

  @override
  String changesTitle(String date) {
    return 'Sedan föregående analys ($date)';
  }

  @override
  String get changesPrice => 'Kurs';

  @override
  String get changesNoMajor => 'Utsikterna har inte förändrats nämnvärt.';

  @override
  String get changesPreviousSummary => 'Föregående sammanfattning';

  @override
  String get telemetryTitle => 'Hjälp till att förbättra WhatStock';

  @override
  String get telemetryBody =>
      'Dela anonym användningsstatistik och kraschrapporter: vilka funktioner som används och vad som gick fel. Aldrig dina aktier, analyser eller personuppgifter. Du kan ändra detta när som helst i Inställningar.';

  @override
  String get telemetryAllow => 'Tillåt';

  @override
  String get telemetryDecline => 'Nej tack';

  @override
  String get telemetrySetting => 'Anonym statistik och kraschrapporter';

  @override
  String get telemetrySettingHint =>
      'Hur ofta funktioner används samt felrapporter, utan personuppgifter eller innehållet i dina sökningar och analyser.';

  @override
  String get askButton => 'Fråga om analysen';

  @override
  String askTitle(String symbol) {
    return 'Frågor om $symbol';
  }

  @override
  String get askIntro =>
      'Fråga vad du vill om analysen: vad en risk innebär, vad som skulle kunna ändra utsikterna, hur en siffra har räknats fram. Svaren bygger på den här analysen och är inte investeringsrådgivning.';

  @override
  String get askHint => 'Ställ en fråga…';

  @override
  String get askSend => 'Skicka';

  @override
  String get askThinking => 'Tänker…';

  @override
  String get askSuggest1 => 'Vad är den största risken?';

  @override
  String get askSuggest2 => 'Vad skulle kunna ändra utsikterna?';

  @override
  String get askSuggest3 => 'Förklara det enkelt';

  @override
  String get askMaxReached =>
      'Det var den sista frågan för den här analysen. Gör en ny analys för att ställa fler frågor.';

  @override
  String get errAskLimit =>
      'Du har nått dagens gräns för frågor. Försök igen i morgon.';

  @override
  String get eventTomorrow => 'I morgon';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'om $days dagar',
      one: 'om 1 dag',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Kvartalsrapport';

  @override
  String get eventBeforeOpen => 'före börsöppning';

  @override
  String get eventAfterClose => 'efter börsstängning';

  @override
  String eventEpsEstimate(String value) {
    return 'Förväntad EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Från din analys';

  @override
  String get eventDividend => 'Väntad utdelning';

  @override
  String get eventDividendEstimate =>
      'Uppskattat utifrån de utdelningar du registrerat';

  @override
  String get eventsHint =>
      'Rapportdatum för dina favoriter och portföljaktier de kommande 90 dagarna, daterade händelser som dina analyser har flaggat, samt utdelningar som väntas utifrån de utbetalningar du registrerat.';

  @override
  String get eventsEmpty =>
      'Inga daterade händelser de kommande 90 dagarna. Lägg till favoriter eller portföljaktier för att se deras rapportdatum här; registrerade utdelningar visar nästa väntade utbetalning.';

  @override
  String get compareTitle => 'Jämför';

  @override
  String get compareAdd => 'Lägg till en aktie';

  @override
  String get compareRemove => 'Ta bort';

  @override
  String get compareTickerHint => 'Ticker, t.ex. MSFT';

  @override
  String get compareHint =>
      'Nyckeltal sida vid sida; bästa värdet på varje rad är markerat. Beloppen anges i respektive akties valuta.';

  @override
  String get compareNoAnalysis => 'Ingen analys än';

  @override
  String get portfolioDividends => 'Årlig utdelning';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent direktavkastning';
  }

  @override
  String get portfolioDividendNote =>
      'Förväntad årlig utdelning baseras på utdelningarna under de senaste 12 månaderna; framtida utbetalningar är inte garanterade.';

  @override
  String positionDividend(String amount) {
    return 'Utdelning: $amount per år';
  }

  @override
  String get chartAvgCost => 'Ditt snitt';

  @override
  String get chartAlertLevel => 'Kurslarm';

  @override
  String get marketsToday => 'Marknader i dag';

  @override
  String get notesTitle => 'Mina anteckningar';

  @override
  String get notesHint =>
      'Varför köpte du den, vad håller du koll på, vad skulle få dig att sälja?';

  @override
  String get notesInfo =>
      'Sparas bara på den här enheten. AI-analysen tar hänsyn till dina anteckningar.';

  @override
  String notesSaved(String date) {
    return 'Sparad $date';
  }

  @override
  String get peersTitle => 'Liknande företag';

  @override
  String get portfolioExport => 'Exportera som CSV';

  @override
  String get portfolioImport => 'Importera från CSV';

  @override
  String get portfolioImportHint =>
      'Klistra in ett köp per rad: ticker, antal, pris, valuta, datum (ÅÅÅÅ-MM-DD). Kolumnerna kan avgränsas med komma, semikolon eller tabb; rubrikraden är valfri.';

  @override
  String get portfolioImportButton => 'Importera';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count köp har lagts till',
      one: '1 köp har lagts till',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count rader hoppades över',
      one: '1 rad hoppades över',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Portfölj, favoriter, kurslarm och anteckningar synkroniseras mellan alla dina enheter.';

  @override
  String syncLast(String time) {
    return 'Senast synkroniserad $time';
  }

  @override
  String get syncNow => 'Synkronisera nu';

  @override
  String get syncFailed =>
      'Synkroniseringen misslyckades. Ett nytt försök görs automatiskt.';

  @override
  String get alertEmailTitle => 'E-post när ett larm utlöses';

  @override
  String get alertEmailOn =>
      'Vi kontrollerar dina larm med några minuters mellanrum och skickar e-post till dig, även när appen är stängd.';

  @override
  String get alertEmailSignIn =>
      'Logga in med din e-postadress under Inställningar för att få larm via e-post, även när appen är stängd.';

  @override
  String get portfolioHistory => 'Värdeutveckling';

  @override
  String get portfolioReviewTitle => 'AI-portföljanalys';

  @override
  String get portfolioReviewIntro =>
      'AI:n går igenom hela din portfölj: koncentration, sektor- och valutaexponering, risker som dina aktier har gemensamt och utdelningar. Använder 1 analys.';

  @override
  String get portfolioReviewButton => 'Analysera min portfölj';

  @override
  String get portfolioReviewAgain => 'Analysera igen';

  @override
  String get portfolioReviewWorking => 'Din portfölj analyseras…';

  @override
  String get digestTitle => 'Veckosammanfattning via e-post';

  @override
  String get digestHint =>
      'Varje måndag: hur dina favoriter och din portfölj rörde sig förra veckan, och deras kommande rapportdatum.';

  @override
  String get benchmarkTitle => 'Jämfört med S&P 500';

  @override
  String get benchmarkTitleIndex => 'Jämfört med ett index';

  @override
  String get benchmarkHintIndex =>
      'Som om varje köp hade placerats samma dag i en fond som följer det valda indexet. Utdelningar ingår inte; historisk avkastning förutsäger inte framtida.';

  @override
  String get benchmarkYours => 'Dina köp';

  @override
  String benchmarkAhead(String points) {
    return '$points procentenheter bättre än index';
  }

  @override
  String benchmarkBehind(String points) {
    return '$points procentenheter efter index';
  }

  @override
  String get portfolioSell => 'Sälj';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Sälj $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Försäljningspris per aktie ($currency)';
  }

  @override
  String get portfolioSellDate => 'Säljdatum';

  @override
  String get portfolioSellAll => 'Alla';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Du har $quantity';
  }

  @override
  String get portfolioSold => 'Sålt';

  @override
  String get portfolioRealized => 'Realiserat';

  @override
  String get portfolioClosed => 'Avslutade innehav';

  @override
  String get portfolioClosedNote => 'Alla aktier sålda';

  @override
  String get portfolioTransactions => 'Transaktioner';

  @override
  String get portfolioRealizedByYear => 'Realiserad vinst per år';

  @override
  String get portfolioRealizedHint =>
      'Försäljningar avräknas först mot dina äldsta köp (FIFO) och räknas om till dagens växelkurs. Använd din mäklares årsbesked till deklarationen.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Sedan den här analysen har en ny kvartalsrapport publicerats ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Ny rapport';

  @override
  String get portfolioImportBrokers =>
      'Exporter från Revolut, Trading 212 och Interactive Brokers känns också igen, med försäljningar; utdelningar och insättningar hoppas över.';

  @override
  String get portfolioImportFile => 'Välj en fil';

  @override
  String offlineBanner(String time) {
    return 'Ingen anslutning – visar senast sparade data ($time).';
  }

  @override
  String get glossMarketCap =>
      'Vad hela bolaget är värt på börsen: aktiekurs × antal aktier.';

  @override
  String get glossSharesOutstanding =>
      'Hur många aktier bolaget har gett ut. Ökar antalet äger varje aktie en mindre del; återköp minskar det.';

  @override
  String get glossPeTrailing =>
      'Kurs ÷ vinst per aktie de senaste 12 månaderna: hur många år av nuvarande vinst du betalar för. Lägre är billigare, men snabbväxande bolag har oftast högt P/E.';

  @override
  String get glossPeForward =>
      'Som P/E, men med den vinst analytikerna väntar sig de kommande 12 månaderna. Lägre än det historiska P/E betyder att vinsten väntas växa.';

  @override
  String get glossPb =>
      'Kurs ÷ bokfört värde (tillgångar minus skulder) per aktie. Runt 1 betyder att marknaden värderar bolaget till vad det äger på papperet.';

  @override
  String get glossPs =>
      'Marknadsvärde ÷ årlig omsättning. Användbart för bolag med liten eller ingen vinst ännu; jämför inom samma bransch.';

  @override
  String get glossEvToFcf =>
      'Bolagets värde inklusive skulder (EV) ÷ pengarna det genererar på ett år efter investeringar. Lägre betyder att du får mer pengar för priset.';

  @override
  String get glossPeg =>
      'P/E ÷ förväntad årlig vinsttillväxt (%). Runt 1 ses ofta som rimligt; det sätter P/E i ljuset av tillväxten.';

  @override
  String get glossEps =>
      'Vinst per aktie de senaste 12 månaderna. Ett EPS som stiger år efter år är ett av de starkaste tecknen på ett friskt bolag.';

  @override
  String get glossBeta =>
      'Hur mycket aktien brukar röra sig med marknaden: 1 = som marknaden, 1,5 = ungefär 50 % större svängningar, under 1 = lugnare.';

  @override
  String get glossRevenueTtm =>
      'Total försäljning de senaste 12 månaderna, före alla kostnader.';

  @override
  String get glossNetIncomeTtm =>
      'Vinsten som blir kvar efter alla kostnader, räntor och skatter de senaste 12 månaderna.';

  @override
  String get glossGrossMargin =>
      'Andelen av omsättningen som blir kvar efter produkternas direkta kostnader. Hög marginal tyder ofta på prissättningsmakt.';

  @override
  String get glossOperatingMargin =>
      'Andelen av omsättningen som blir kvar efter driften av verksamheten (löner, hyra, marknadsföring), före räntor och skatter.';

  @override
  String get glossNetMargin =>
      'Andelen av omsättningen som blir slutlig vinst. 20 % betyder att 20 av varje 100 i försäljning är vinst.';

  @override
  String get glossRoe =>
      'Avkastning på eget kapital: årsvinst ÷ ägarnas kapital. Visar hur väl ledningen använder aktieägarnas pengar; över cirka 15 % är starkt.';

  @override
  String get glossRoa =>
      'Avkastning på tillgångar: årsvinst ÷ allt bolaget äger. Jämför inom samma bransch.';

  @override
  String get glossDebtToEquity =>
      'Skulder ÷ ägarnas kapital. Högre betyder mer lånade pengar: större risk när räntorna stiger eller affärerna går sämre.';

  @override
  String get glossCurrentRatio =>
      'Kortfristiga tillgångar ÷ skulder som förfaller inom ett år. Över 1 betyder att bolaget kan betala sina närmaste räkningar.';

  @override
  String get glossRevenueGrowth =>
      'Hur mycket omsättningen har ökat jämfört med ett år tidigare.';

  @override
  String get glossEpsGrowth =>
      'Hur mycket vinsten per aktie har ökat jämfört med ett år tidigare.';

  @override
  String get glossDividendYield =>
      'Årlig utdelning ÷ aktiekurs: den kontanta avkastning du skulle få per år, i procent av vad du betalar.';

  @override
  String get glossDividendPerShare =>
      'Utdelningen som betalats per aktie det senaste året.';

  @override
  String get glossPayoutRatio =>
      'Andelen av vinsten som delas ut. Över 100 % delar bolaget ut mer än det tjänar, vilket sällan håller i längden.';

  @override
  String get portfolioBeta => 'Portföljbeta';

  @override
  String get glossPortfolioBeta =>
      'Betan för dina aktier, viktad efter deras värde: ungefär hur många procent dina aktier rör sig när marknaden rör sig 1 %. Över 1 svänger de mer än marknaden, under 1 mindre. Kontanter ingår inte.';

  @override
  String get portfolioTop3 => '3 största innehav';

  @override
  String get glossPortfolioTop3 =>
      'Hur stor del av värdet på dina aktier som ligger i dina tre största innehav. Ju högre den är, desto mer kan dåliga nyheter om ett enda bolag skada hela portföljen.';

  @override
  String get glossDividendGrowth5y =>
      'Hur mycket utdelningen per aktie i genomsnitt har ökat per år de senaste fem åren. Jämn tillväxt betyder oftast att bolaget litar på sitt kassaflöde; en sänkning är ofta en varningssignal.';

  @override
  String get glossYieldOnCost =>
      'Utdelningar mottagna de senaste 12 månaderna delat med vad du betalade för de aktier du fortfarande äger. Till skillnad från direktavkastningen mäts den mot ditt eget inköpspris, inte dagens kurs.';

  @override
  String get glossTitle => 'Vad betyder det?';

  @override
  String get watchNewsTitle => 'Nyheter om dina aktier';

  @override
  String get undo => 'Ångra';

  @override
  String get watchSort => 'Sortera';

  @override
  String get watchSortOwn => 'Min ordning';

  @override
  String get watchSortGainers => 'Största vinnarna först';

  @override
  String get watchSortLosers => 'Största förlorarna först';

  @override
  String get watchSortName => 'Efter ticker (A–Z)';

  @override
  String get watchHint =>
      'Dra i handtaget för att ändra ordning, svep åt vänster för att ta bort. Linjen visar de senaste 30 dagarna.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: din analys är klar.';
  }

  @override
  String alertFromCost(String price) {
    return 'Utifrån ditt genomsnittliga inköpspris ($price):';
  }

  @override
  String get briefTitle => 'I dag med dina aktier';

  @override
  String get briefButton => 'Sammanfatta dagen';

  @override
  String get briefHint =>
      'En kort AI-sammanfattning av hur din portfölj och dina favoriter rörde sig i dag och vad de senaste nyheterna säger om dem. Använder ingen analys.';

  @override
  String get briefRefresh => 'Uppdatera';

  @override
  String get sectionEarnings => 'Kvartalsrapporter';

  @override
  String earningsNext(String date) {
    return 'Nästa rapport: $date';
  }

  @override
  String get earningsExpected => 'Förväntad EPS';

  @override
  String get earningsReported => 'Rapporterad EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'I nivå med eller över förväntad EPS i $beats av de senaste $total kvartalen',
      one: 'I nivå med eller över förväntad EPS i $beats av 1 kvartal',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol släpper kvartalsrapport i morgon';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol släpper kvartalsrapport i dag';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return '$symbol: väntad utdelning i dag';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Omkring $amount. Registrera den i din portfölj när den har kommit.';
  }

  @override
  String get dividendRemindersTitle => 'Utdelningspåminnelser';

  @override
  String get dividendRemindersSubtitle =>
      'En notis den dag en utdelning väntas utifrån rytmen i dina registrerade utdelningar, så att du kan registrera den';

  @override
  String get earningsRemindersTitle => 'Rapportpåminnelser';

  @override
  String get earningsRemindersSubtitle =>
      'En notis dagen innan dina favoriter eller portföljaktier släpper kvartalsrapport';

  @override
  String addAllToFavorites(int count) {
    return 'Lägg till alla i favoriter ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Importera från en skärmbild';

  @override
  String get holdingsReading => 'Läser in dina innehav…';

  @override
  String get holdingsReviewTitle => 'Hittade innehav';

  @override
  String get holdingsReviewHint =>
      'Kontrollera siffrorna innan du lägger till dem. Priset är ditt genomsnittliga köppris per aktie, inte dagens kurs.';

  @override
  String get holdingsNoPrice => 'Inget genomsnittligt köppris på bilden';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Lägg till $count innehav',
      one: 'Lägg till 1 innehav',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Inga aktieinnehav hittades på den här bilden. Prova en skärmbild av innehavssidan hos din mäklare.';

  @override
  String get week52Range => '52-veckorsintervall';

  @override
  String week52BelowHigh(String percent) {
    return '$percent under 52-veckors högsta';
  }

  @override
  String get week52AtHigh => 'Vid 52-veckors högsta';

  @override
  String get alertKindTrailing => 'Faller från toppen';

  @override
  String get alertTrailingPercent => 'Fall från toppen (%)';

  @override
  String get alertTrailingHint =>
      'Följer kursen uppåt: larmet går när kursen faller så mycket från den högsta nivån sedan du ställde in det.';

  @override
  String alertDescTrailing(String percent) {
    return '$percent fall från toppen';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'topp hittills: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol föll $percent från toppen';
  }

  @override
  String get sectionInsiders => 'Insynshandel';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count köp',
      one: '1 köp',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count försäljningar',
      one: '1 försäljning',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Netto: $shares aktier';
  }

  @override
  String get insiderBuy => 'Köpte';

  @override
  String get insiderSell => 'Sålde';

  @override
  String get insiderHint =>
      'Köp och försäljningar på öppna marknaden av ledande befattningshavare och styrelseledamöter de senaste 90 dagarna (SEC Form 4). Utnyttjade optioner och aktietilldelningar räknas inte.';

  @override
  String get insiderNone =>
      'Inga insynsköp eller -försäljningar på öppna marknaden de senaste 90 dagarna.';

  @override
  String get analystTrend => 'Hur åsikterna har ändrats månad för månad';

  @override
  String get watchListAll => 'Alla';

  @override
  String get watchListNew => 'Ny lista';

  @override
  String get watchListName => 'Listnamn';

  @override
  String get watchListRename => 'Byt namn på listan';

  @override
  String get watchListDelete => 'Ta bort listan';

  @override
  String get watchListAddTo => 'Lägg till i en lista';

  @override
  String get watchListEmpty =>
      'Inga aktier i den här listan ännu. Tryck på listknappen bredvid en aktie för att lägga till den.';

  @override
  String get portfolioAskTitle => 'Frågor om din portfölj';

  @override
  String get rangeYtd => 'I år';

  @override
  String get backupTitle => 'Säkerhetskopia';

  @override
  String get backupSave => 'Spara säkerhetskopia';

  @override
  String get backupSaveHint =>
      'Dina favoriter, listor, portfölj, larm och anteckningar i en fil.';

  @override
  String get backupRestore => 'Återställ från säkerhetskopia';

  @override
  String get backupRestoreHint =>
      'Lägger till det som finns i filen; inget du har nu raderas.';

  @override
  String get backupRestored => 'Säkerhetskopian har återställts.';

  @override
  String get backupInvalid =>
      'Den här filen är inte en WhatStock-säkerhetskopia.';

  @override
  String get allocationPositions => 'Aktier';

  @override
  String get allocationSectors => 'Sektorer';

  @override
  String get allocationCurrencies => 'Valutor';

  @override
  String get allocationAccounts => 'Konton';

  @override
  String get compareReturn1y => 'Avkastning 1 år';

  @override
  String get compareFromHigh => 'Från 52-veckors högsta';

  @override
  String get briefAutoTitle => 'Daglig sammanfattning varje morgon';

  @override
  String get briefAutoSubtitle =>
      '”I dag med dina aktier” skapas automatiskt efter kl. 7.00 medan appen körs; på datorer får du en avisering. Använder din dagliga frågekvot, inte en analys.';

  @override
  String get targetsButton => 'Målfördelning';

  @override
  String get targetsTitle => 'Målfördelning';

  @override
  String get targetsHint =>
      'Ange hur stor andel av portföljen varje aktie ska ha. Lämna fältet tomt för inget mål. Appen visar sedan vad du ska köpa eller sälja för att nå dit.';

  @override
  String targetsSum(String percent) {
    return 'Totalt: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Köp ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Sälj ≈ $amount';
  }

  @override
  String get rebalanceOk => 'På mål';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol slog förväntad EPS';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol under förväntad EPS';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'Rapporterad EPS $actual, förväntad $estimate';
  }

  @override
  String get newsExplain => 'Vad betyder det här?';

  @override
  String get watchAlertAll => 'Larm vid stora dagsrörelser';

  @override
  String get watchAlertAllHint =>
      'Ett kurslarm för varje aktie i den här listan som går igång när den rör sig så mycket på en dag, uppåt eller nedåt. Aktier som redan har ett behåller sitt.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count larm skapade',
      one: '1 larm skapat',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Exportera realiserade vinster (CSV)';

  @override
  String get portfolioAnnualReturn => 'Årlig avkastning';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / år';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Penningviktad årlig avkastning (XIRR): tar hänsyn till när du köpte och sålde, så pengar som lagts till senare inte förvränger den. Visas när ditt första köp är minst ett år gammalt; utdelningar ingår inte.';

  @override
  String get eventsAddToCalendar => 'Lägg till i kalendern (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Portföljlarm';

  @override
  String get portfolioMoveAlertSubtitle =>
      'En notis när hela din portfölj rör sig så mycket på en dag.';

  @override
  String get portfolioMoveAlertOff => 'Av';

  @override
  String portfolioMoveUp(String percent) {
    return 'Din portfölj är upp $percent i dag';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Din portfölj är ned $percent i dag';
  }

  @override
  String get whatIfTitle => 'Tänk om du hade investerat?';

  @override
  String get whatIfAmount => 'Belopp';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount investerat för $period sedan skulle i dag vara värt';
  }

  @override
  String get whatIfNote =>
      'Baseras endast på aktiekursen: utdelningar, avgifter och skatter ingår inte. Historisk avkastning förutsäger inte framtida.';

  @override
  String get watchShare => 'Dela listan';

  @override
  String get watchImport => 'Lägg till tickers';

  @override
  String get watchImportHint =>
      'Klistra in tickers åtskilda med komma, mellanslag eller radbrytningar – till exempel en lista som någon har delat med dig.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aktier har lagts till',
      one: '1 aktie har lagts till',
      zero: 'Inga nya aktier',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Största först';

  @override
  String get positionsSortGain => 'Högst totalavkastning först';

  @override
  String get positionsSortToday => 'Bäst i dag först';

  @override
  String get chartMyBuys => 'Dina köp';

  @override
  String get chartMySells => 'Dina försäljningar';

  @override
  String get shortcutsTitle => 'Kortkommandon';

  @override
  String usMarketOpen(String time) {
    return 'USA-marknaden öppen · stänger om $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'USA-marknaden stängd · öppnar om $time';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes min';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours tim $minutes min';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days d $hours tim';
  }

  @override
  String get dividendGoalSet => 'Sätt ett månatligt utdelningsmål';

  @override
  String get dividendGoalTitle => 'Månatligt utdelningsmål';

  @override
  String get dividendGoalAmount => 'Utdelning per månad';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Cirka $amount i månaden med dagens direktavkastning: $percent av ditt mål på $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Cirka $amount i månaden med dagens direktavkastning: ditt mål på $goal är nått';
  }

  @override
  String get portfolioAccount => 'Konto';

  @override
  String get portfolioAccountHint => 't.ex. ISK (valfritt)';

  @override
  String get portfolioAccountAdd => 'Ange konto';

  @override
  String get portfolioAccountsAll => 'Alla konton';

  @override
  String get portfolioAccountNote =>
      'Endast transaktioner och utdelningar på det här kontot. Kontanter, mål och AI-analysen visas under Alla konton.';

  @override
  String get portfolioNoAccount => 'Inget konto';

  @override
  String portfolioFee(String currency) {
    return 'Courtage ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Lägg till courtage';

  @override
  String portfolioFeeRow(String amount) {
    return 'Courtage: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'Årsöversikt';

  @override
  String get portfolioProceeds => 'Försäljningspris';

  @override
  String get portfolioCostBasis => 'Omkostnadsbelopp';

  @override
  String get portfolioFeesPaid => 'Betalt courtage';

  @override
  String get portfolioAnnualSummaryNote =>
      'Belopp i ursprunglig valuta, inte omräknade. Försäljningspriset är efter avdrag för courtage vid försäljning; omkostnadsbeloppet inkluderar courtage vid köp (FIFO). Till deklarationen räknar du om enligt den växelkurs som skattemyndigheten kräver.';

  @override
  String get portfolioShare => 'Dela utvecklingen';

  @override
  String get portfolioShareHeading => 'Min portfölj';

  @override
  String get portfolioTopHoldings => 'Största innehav';

  @override
  String get portfolioShareNote => 'Endast procentsatser delas, inga belopp.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count innehav',
      one: '$count innehav',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'Inte investeringsrådgivning';

  @override
  String get contributionButton => 'Investera nya pengar';

  @override
  String contributionAmount(String currency) {
    return 'Belopp att investera ($currency)';
  }

  @override
  String get contributionHint =>
      'Bara köp, ingen försäljning: innehaven som ligger längst under sitt mål får pengarna först.';

  @override
  String contributionShares(String shares) {
    return '≈ $shares aktier';
  }

  @override
  String contributionMissing(String symbols) {
    return 'Ingen aktuell kurs för $symbols: tas inte med i fördelningen.';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'Om den årliga avkastningen håller i sig ($rate), når du målet runt $year.';
  }

  @override
  String get portfolioMaxDrawdown => 'Största nedgång';

  @override
  String get glossMaxDrawdown =>
      'Den största nedgången i värdet på dina aktier från en tidigare topp till en senare botten, utan effekten av dina köp och försäljningar (tidsviktad). Den visar hur djup en nedgång din portfölj redan har gått igenom.';

  @override
  String watchSince(String date) {
    return 'Sedan du lade till den i favoriter ($date)';
  }

  @override
  String get portfolioSampleTry => 'Testa med en exempelportfölj';

  @override
  String get portfolioSampleBanner =>
      'Det här är en exempelportfölj. Lägg till dina egna köp bredvid, eller ta bort den.';

  @override
  String get portfolioSampleRemove => 'Ta bort exemplet';

  @override
  String get portfolioStopsAll => 'Trailing stop för alla innehav';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count trailing stops har satts',
      one: '1 trailing stop har satts',
      zero: 'Alla innehav har redan trailing stop',
    );
    return '$_temp0';
  }

  @override
  String portfolioSinceSale(String percent) {
    return '$percent sedan du sålde';
  }

  @override
  String get lotPreviewRealized => 'Realiserat vid denna försäljning (FIFO):';

  @override
  String lotPreviewAverage(String after, String before) {
    return 'Ny snittkurs: $after (nu $before)';
  }

  @override
  String get portfolioYtdReturn => 'Avkastning i år';

  @override
  String get glossTwrYtd =>
      'Tidsviktad avkastning sedan årets början (eller sedan ditt första köp, om det var i år): varje dag räknar förändringen i de aktier du ägde den dagen, och dagarna kedjas ihop – pengar du sätter in eller tar ut är inte avkastning, så den kan jämföras med ett index. Under: det valda indexet under samma period.';

  @override
  String alertDistance(String price, String percent) {
    return 'Nu $price · $percent kvar';
  }

  @override
  String get portfolioGoalSet => 'Sätt ett mål';

  @override
  String get portfolioGoalTitle => 'Portföljmål';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent av ditt mål på $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Målet på $amount är nått';
  }

  @override
  String get portfolioGoalRemove => 'Ta bort mål';

  @override
  String get alertEdit => 'Redigera larm';

  @override
  String get positionOpenLots => 'Fortfarande ägda (äldsta först)';

  @override
  String get lotRemoved => 'Transaktionen har raderats';

  @override
  String get alertDeleted => 'Larm borttaget';

  @override
  String get alertsClearTriggered => 'Rensa utlösta larm';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count larm rensade',
      one: '1 larm rensat',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Startskärm';

  @override
  String get allocationCountries => 'Länder';

  @override
  String get newsExplainNoteResearch =>
      'AI-förklaring: den kollar fakta på webben, öppnar artikeln och bedömer hur tillförlitlig källan är. Det är inte investeringsrådgivning. Använder din dagliga frågekvot, inte en analys.';

  @override
  String get sourceOfficial => 'Officiell';

  @override
  String get sourcePressRelease => 'Pressmeddelande';

  @override
  String get sourceMajorNews => 'Stort medium';

  @override
  String get sourceOpinion => 'Åsikt';

  @override
  String get earningsSummaryButton => 'Vad stod i den senaste rapporten?';

  @override
  String get earningsSummaryNote =>
      'AI-sammanfattning av bolagets resultatbesked och den pressbevakning den hittar på webben. Det är inte investeringsrådgivning. Använder din dagliga frågekvot, inte en analys.';

  @override
  String get compareLastSurprise => 'Senaste kvartalets EPS vs. förväntat';

  @override
  String get compareNextReport => 'Nästa rapport';

  @override
  String get resolvingDescription => 'Tar reda på vilken aktie du menar…';

  @override
  String get instrumentTitle => 'Om det här instrumentet';

  @override
  String get instrumentHint =>
      'Det finns ingen bolagsprofil för den här symbolen – det kan vara en ETF, en fond eller ett depåbevis. Fråga AI:n vad det är, vad det innehåller och vad det kostar.';

  @override
  String get instrumentAsk => 'Vad är det här?';

  @override
  String get instrumentNote =>
      'AI-förklaring utifrån utgivarens fondsida och finanssajter den hittar på webben. Det är inte investeringsrådgivning. Använder din dagliga frågekvot, inte en analys.';

  @override
  String suggestAskAi(String query) {
    return 'Fråga AI:n: ”$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Ingen aktuell kurs för $symbols.';
  }

  @override
  String get eventsRecentResults => 'Senaste kvartalsrapporter';

  @override
  String get saveToNotes => 'Spara i mina anteckningar';

  @override
  String get savedToNotes => 'Sparat i dina anteckningar';

  @override
  String get portfolioDividendsReceived => 'Mottagna utdelningar';

  @override
  String get portfolioDividendsThisYear => 'I år';

  @override
  String get portfolioDividendsAllTime => 'Totalt';

  @override
  String get portfolioAddDividend => 'Lägg till utdelning';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Mottaget belopp ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Utbetalningsdatum';

  @override
  String get portfolioDividendsEmpty =>
      'Inga utdelningar registrerade ännu. Lägg till dem manuellt eller importera exporten från din mäklare – utdelningsraderna läses också in.';

  @override
  String get portfolioSplit => 'Aktiesplit';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Aktiesplit: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Köp och sälj daterade före spliten justeras: antalet aktier multipliceras och priset per aktie divideras, så att kostnaden förblir densamma.';

  @override
  String get portfolioSplitRatio => 'Förhållande (nya : gamla)';

  @override
  String get portfolioSplitRatioError =>
      'Ange ett förhållande som 10:1, eller 1:10 för en omvänd split.';

  @override
  String get portfolioSplitDate => 'Datum för spliten';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Aktiesplit $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Aktiesplit borttagen';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aktiesplittar tillagda',
      one: '1 aktiesplit tillagd',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count utdelningar tillagda',
      one: '1 utdelning tillagd',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Exportera utdelningar (CSV)';

  @override
  String get portfolioDividendDeleted => 'Utdelning borttagen';

  @override
  String get portfolioDividendsHint =>
      'Beloppen som de kom in på ditt konto, i utbetalningsvalutan; summor räknas om till dagens kurs. Använd mäklarens kontrolluppgifter till deklarationen.';

  @override
  String get awayTitle => 'Medan du var borta';

  @override
  String awaySince(String when) {
    return 'Sedan $when';
  }

  @override
  String get awayQuiet => 'Inte mycket har rört sig.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count larm utlösta',
      one: '1 larm utlöst',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Rapporterade resultat: $symbols';
  }

  @override
  String get moveWhyButton => 'Varför rör den sig i dag?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent i dag';
  }

  @override
  String get moveWhyNote =>
      'AI-förklaring utifrån dagens nyheter på webben; den verkliga orsaken kan vara okänd eller en annan. Inte investeringsrådgivning. Använder din dagliga frågekvot, inte en analys.';

  @override
  String get sectionTechnical => 'Teknisk bild';

  @override
  String get labelSma50 => '50-dagars medel';

  @override
  String get labelSma200 => '200-dagars medel';

  @override
  String get labelRsi => 'RSI (14 dagar)';

  @override
  String get labelVolatility30 => 'Volatilitet (30 dagar)';

  @override
  String techAbove(String percent) {
    return '$percent över';
  }

  @override
  String techBelow(String percent) {
    return '$percent under';
  }

  @override
  String get techOverbought => 'överköpt';

  @override
  String get techOversold => 'översåld';

  @override
  String get techNeutral => 'neutral';

  @override
  String get techGoldenCross =>
      '50-dagars medel ligger över 200-dagars medel – en uppåttrend enligt den klassiska tolkningen.';

  @override
  String get techDeathCross =>
      '50-dagars medel ligger under 200-dagars medel – en nedåttrend enligt den klassiska tolkningen.';

  @override
  String get glossSma50 =>
      'Genomsnittlig stängningskurs de senaste 50 handelsdagarna. Kurs över det tolkas ofta som kortsiktig styrka, under som svaghet.';

  @override
  String get glossSma200 =>
      'Genomsnittlig stängningskurs de senaste 200 handelsdagarna – den klassiska långsiktiga trendlinjen. Många investerare ser en kurs över den som en långsiktig uppåttrend.';

  @override
  String get glossRsi =>
      'Relativt styrkeindex: jämför senaste tidens uppgångar med nedgångar på en skala 0–100. Över 70 kallas aktien ofta överköpt (den har stigit snabbt), under 30 översåld – men en stark trend kan ligga kvar där länge.';

  @override
  String get glossVolatility =>
      'Hur mycket kursen svänger från dag till dag, omräknat till ett år: 20 % betyder att ett typiskt år rör sig inom ungefär ±20 %. Högre volatilitet betyder större rörelser i båda riktningarna.';

  @override
  String get techNote =>
      'Beräknat utifrån dagliga stängningskurser. Tekniska signaler beskriver det förflutna, inte framtiden.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$above av $count positioner över sitt 200-dagarssnitt';
  }

  @override
  String get watchSignalsTitle => 'Signaler';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · översåld';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · överköpt';
  }

  @override
  String get signalCrossedAbove => 'bröt upp genom 200-dagars medel';

  @override
  String get signalCrossedBelow => 'bröt ned genom 200-dagars medel';

  @override
  String get signalAlertsTitle => 'Aviseringar om tekniska signaler';

  @override
  String get signalAlertsSubtitle =>
      'En gång om dagen, när en aktie du följer blir översåld eller överköpt (RSI), eller kursen korsar 200-dagars medel.';

  @override
  String get signalAlertsNotification => 'Tekniska signaler';

  @override
  String get glossaryPageTitle => 'Ordlista';

  @override
  String get glossaryPageSubtitle =>
      'Enkla förklaringar av alla tal appen visar, från P/E till RSI';

  @override
  String get glossarySearchHint => 'Sök i ordlistan';

  @override
  String get portfolioCash => 'Kontanter';

  @override
  String get portfolioCashTitle => 'Kontantsaldo';

  @override
  String get portfolioCashHint =>
      'Oinvesterade pengar hos din mäklare, per valuta. Räknas med i totalt värde och fördelning, men inte i avkastningen.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Belopp ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Ange kontantsaldo';

  @override
  String get portfolioDividendsByMonth => 'Per månad';

  @override
  String get dividendsLegendReceived => 'Mottagna';

  @override
  String get dividendsLegendExpected => 'Förväntade';

  @override
  String get portfolioDividendsExpected => 'Väntas härnäst';

  @override
  String get portfolioDividendsExpectedNote =>
      'Uppskattat utifrån datum och belopp för de utdelningar du registrerat; bolagen kan ändra eller slopa dem.';

  @override
  String portfolioDividendAround(String date) {
    return 'omkring $date';
  }
}
