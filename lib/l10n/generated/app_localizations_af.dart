// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Afrikaans (`af`).
class AppLocalizationsAf extends AppLocalizations {
  AppLocalizationsAf([String locale = 'af']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Neem ’n foto van ’n aandeel en leer alles daaroor.';

  @override
  String get homeHint =>
      '’n Aandeelsertifikaat, ’n makelaarsapp se skerm, ’n koerant of ’n maatskappylogo – enigiets wat ’n aandeel identifiseer.';

  @override
  String get takePhoto => 'Neem ’n foto';

  @override
  String get chooseFromGallery => 'Kies uit galery';

  @override
  String get chooseImage => 'Kies ’n prent';

  @override
  String get enterTickerManually => 'Voer aandeelkode self in';

  @override
  String get tickerInputLabel => 'Aandeelkode';

  @override
  String get tickerInputHint => 'bv. AAPL';

  @override
  String get lookUp => 'Soek op';

  @override
  String demoModeBanner(String symbols) {
    return 'Demomodus – geen markdatasleutel opgestel nie. Voorbeelddata is beskikbaar vir: $symbols.';
  }

  @override
  String get recognizing => 'Ontleed die prent…';

  @override
  String get loadingData => 'Laai data…';

  @override
  String get noCandidatesTitle => 'Geen aandeel herken nie';

  @override
  String get noCandidatesBody =>
      'Ons kon nie ’n aandeel in hierdie prent identifiseer nie. Probeer ’n skerper foto, of voer die aandeelkode self in.';

  @override
  String get whatWeSaw => 'Wat ons gesien het';

  @override
  String get chooseCandidateTitle => 'Watter aandeel bedoel jy?';

  @override
  String confidencePercent(int percent) {
    return '$percent% sekerheid';
  }

  @override
  String get settings => 'Instellings';

  @override
  String get language => 'Taal';

  @override
  String get systemLanguage => 'Stelselverstek';

  @override
  String get about => 'Oor';

  @override
  String get disclaimer =>
      'Hierdie app verskaf slegs inligting en is nie beleggingsadvies nie. Data kan vertraag of onakkuraat wees.';

  @override
  String dataSource(String source) {
    return 'Databron: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Herkenning: $source';
  }

  @override
  String get retry => 'Probeer weer';

  @override
  String get cancel => 'Kanselleer';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Maak toe';

  @override
  String get errorGeneric => 'Iets het skeefgeloop.';

  @override
  String get errorSectionUnavailable =>
      'Hierdie afdeling kon nie gelaai word nie.';

  @override
  String get notAvailable => 'n.v.t.';

  @override
  String get sectionIdentity => 'Identifikasie';

  @override
  String get sectionPrice => 'Prys';

  @override
  String get sectionValuation => 'Waardasie';

  @override
  String get sectionFinancials => 'Finansiële syfers';

  @override
  String get sectionDividend => 'Dividend';

  @override
  String get sectionProfile => 'Maatskappyprofiel';

  @override
  String get sectionAnalysts => 'Ontleders se aanbevelings';

  @override
  String get sectionNews => 'Nuus';

  @override
  String get sectionRecognition => 'Herkenningsbesonderhede';

  @override
  String get labelSymbol => 'Aandeelkode';

  @override
  String get labelExchange => 'Beurs';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Geldeenheid';

  @override
  String get labelCountry => 'Land';

  @override
  String get labelIndustry => 'Bedryf';

  @override
  String get labelSector => 'Sektor';

  @override
  String get labelWebsite => 'Webwerf';

  @override
  String get labelIpoDate => 'IPO-datum';

  @override
  String get labelMarketCap => 'Markkapitalisasie';

  @override
  String get labelSharesOutstanding => 'Uitstaande aandele';

  @override
  String get labelEmployees => 'Werknemers';

  @override
  String get labelCeo => 'HUB';

  @override
  String get labelHeadquarters => 'Hoofkantoor';

  @override
  String get labelDescription => 'Beskrywing';

  @override
  String get labelLastPrice => 'Laaste prys';

  @override
  String get labelChange => 'Verandering';

  @override
  String get labelOpen => 'Opening';

  @override
  String get labelDayHigh => 'Dag se hoogste';

  @override
  String get labelDayLow => 'Dag se laagste';

  @override
  String get labelPreviousClose => 'Vorige sluitingsprys';

  @override
  String get labelWeek52High => '52-weke-hoogtepunt';

  @override
  String get labelWeek52Low => '52-weke-laagtepunt';

  @override
  String get labelAverageVolume10d => 'Gem. volume (10 dae)';

  @override
  String updatedAt(String time) {
    return 'Bygewerk $time';
  }

  @override
  String get labelPeTrailing => 'P/E (histories)';

  @override
  String get labelPeForward => 'P/E (verwag)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / vrye kontantvloei';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Omset (TTM)';

  @override
  String get labelNetIncomeTtm => 'Netto wins (TTM)';

  @override
  String get labelGrossMargin => 'Bruto marge';

  @override
  String get labelOperatingMargin => 'Bedryfsmarge';

  @override
  String get labelNetMargin => 'Netto marge';

  @override
  String get labelRoe => 'Opbrengs op ekwiteit';

  @override
  String get labelRoa => 'Opbrengs op bates';

  @override
  String get labelDebtToEquity => 'Skuld / ekwiteit';

  @override
  String get labelCurrentRatio => 'Bedryfsverhouding';

  @override
  String get labelRevenueGrowth => 'Omsetgroei (j.o.j.)';

  @override
  String get labelEpsGrowth => 'EPS-groei (j.o.j.)';

  @override
  String get labelDividendYield => 'Dividendopbrengs';

  @override
  String get labelDividendPerShare => 'Dividend per aandeel';

  @override
  String get labelPayoutRatio => 'Uitbetalingsverhouding';

  @override
  String get labelConsensus => 'Konsensus';

  @override
  String get ratingStrongBuy => 'Sterk koop';

  @override
  String get ratingBuy => 'Koop';

  @override
  String get ratingHold => 'Hou';

  @override
  String get ratingSell => 'Verkoop';

  @override
  String get ratingStrongSell => 'Sterk verkoop';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ontleders',
      one: '1 ontleder',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Tydperk: $period';
  }

  @override
  String get noNews => 'Geen onlangse nuus nie.';

  @override
  String get openArticle => 'Maak artikel oop';

  @override
  String get openLinkFailed => 'Kon nie die skakel oopmaak nie.';

  @override
  String get recognitionSummary => 'Opsomming';

  @override
  String get recognitionEvidence => 'Hoekom ons so dink';

  @override
  String get recognitionRawText => 'Teks uit die prent gelees';

  @override
  String get errMissingAnthropicKey =>
      'Prentherkenning is nie opgestel nie (geen ANTHROPIC_API_KEY nie). Voer die aandeelkode self in.';

  @override
  String get errRecognitionUnreachable =>
      'Kon nie die herkenningsdiens bereik nie. Gaan jou internetverbinding na.';

  @override
  String errRecognitionHttp(String status) {
    return 'Die herkenningsdiens het ’n fout teruggestuur (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Die herkenningsdiens kon nie hierdie prent verwerk nie.';

  @override
  String get errRecognitionTruncated =>
      'Die herkenningsantwoord is afgesny. Probeer asseblief weer.';

  @override
  String get errRecognitionBadResponse =>
      'Onverwagte antwoord van die herkenningsdiens.';

  @override
  String get errRecognitionEmpty =>
      'Die herkenningsdiens het ’n leë antwoord teruggestuur.';

  @override
  String get errMissingFinnhubKey =>
      'Markdata is nie opgestel nie (geen FINNHUB_API_KEY nie).';

  @override
  String get errMarketUnreachable =>
      'Kon nie die markdatadiens bereik nie. Gaan jou internetverbinding na.';

  @override
  String get errMarketRateLimited =>
      'Te veel versoeke aan die markdatadiens. Wag asseblief ’n minuut.';

  @override
  String errMarketHttp(String status) {
    return 'Die markdatadiens het ’n fout teruggestuur (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Onverwagte antwoord van die markdatadiens.';

  @override
  String errNoQuote(String symbol) {
    return 'Geen prysdata vir $symbol gevind nie.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Geen maatskappyprofiel vir $symbol gevind nie.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Demomodus ondersteun net $symbols. Voeg ’n FINNHUB_API_KEY by vir lewendige data.';
  }

  @override
  String errUnknown(String detail) {
    return 'Iets het skeefgeloop: $detail';
  }

  @override
  String get newSearch => 'Nuwe soektog';

  @override
  String get recentSearches => 'Onlangs';

  @override
  String get noRecentSearches => 'Nog geen onlangse soektogte nie.';

  @override
  String get clearRecent => 'Vee onlangse uit';

  @override
  String get greeting => 'Na watter aandeel kyk ons?';

  @override
  String get searchHint => 'Aandeelkode of maatskappynaam';

  @override
  String get attachImage => 'Heg ’n prent aan';

  @override
  String get searchResultsTitle => 'Soekresultate';

  @override
  String errNoResults(String query) {
    return 'Geen aandele vir “$query” gevind nie.';
  }

  @override
  String get quickBarHint => 'Tik ’n aandeelkode of maatskappynaam…';

  @override
  String get openFullWindow => 'Maak venster oop';

  @override
  String hotkeyHint(String shortcut) {
    return 'Druk $shortcut enige plek om WhatStock op te roep.';
  }

  @override
  String get trayOpen => 'Maak WhatStock oop';

  @override
  String get trayQuickSearch => 'Vinnige soektog';

  @override
  String get trayQuit => 'Sluit af';

  @override
  String get appearance => 'Voorkoms';

  @override
  String get themeSystem => 'Stelsel';

  @override
  String get themeDark => 'Donker';

  @override
  String get themeLight => 'Lig';

  @override
  String get back => 'Terug';

  @override
  String get aiSectionTitle => 'AI-ontleding';

  @override
  String get aiIntro =>
      '’n Gedetailleerde, AI-geskrewe oorsig: ’n opsomming van onlangse nuus, die besigheid, sterkpunte, risiko’s en verborge faktore, waardasie, ’n prysvooruitsig met scenario’s uit sielkundige, sosiologiese, tegniese en makro-ekonomiese hoeke, en waarop jy moet let.';

  @override
  String get aiGenerate => 'Skep ontleding';

  @override
  String get aiRegenerate => 'Skep weer';

  @override
  String get aiGenerating =>
      'Berei die ontleding voor… dit kan ’n minuut of twee neem.';

  @override
  String get aiSources => 'Bronne';

  @override
  String aiGeneratedAt(String time) {
    return 'Geskep $time';
  }

  @override
  String get aiDisclaimer =>
      'AI-gegenereerde ontleding gebaseer op openbare data en onlangse nuus. Dit kan foute bevat of verouderd wees, en is nie beleggingsadvies nie.';

  @override
  String get errAiNotConfigured =>
      'AI-ontleding is nie opgestel nie (geen ANTHROPIC_API_KEY nie).';

  @override
  String get errAiUnreachable =>
      'Kon nie die AI-diens bereik nie. Gaan jou internetverbinding na.';

  @override
  String errAiHttp(String status) {
    return 'Die AI-diens het ’n fout teruggestuur (HTTP $status).';
  }

  @override
  String get errAiRefused =>
      'Die AI-diens het geweier om hierdie aandeel te ontleed.';

  @override
  String get errAiBadResponse => 'Onverwagte antwoord van die AI-diens.';

  @override
  String get sectionChart => 'Prysgrafiek';

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
      'Prysgeskiedenis is nie by die huidige databron beskikbaar nie.';

  @override
  String get sectionStatements => 'Finansiële state (jaarliks)';

  @override
  String get labelFiscalYear => 'Boekjaar';

  @override
  String get labelRevenue => 'Omset';

  @override
  String get labelNetIncome => 'Netto wins';

  @override
  String get labelTotalAssets => 'Totale bates';

  @override
  String get labelTotalLiabilities => 'Totale laste';

  @override
  String get labelEquity => 'Aandeelhouersbelang';

  @override
  String get labelOperatingCashFlow => 'Kontantvloei uit bedrywighede';

  @override
  String get statementsUnavailable =>
      'Gerapporteerde finansiële state is nie vir hierdie aandeel beskikbaar nie.';

  @override
  String get launchAtLogin => 'Begin by aanmelding';

  @override
  String get hotkeyLabel => 'Globale kortpad';

  @override
  String get hotkeyRecordHint =>
      'Klik hier en druk dan die nuwe sleutelkombinasie';

  @override
  String get hotkeyReset => 'Stel terug na verstek';

  @override
  String get pasteImage => 'Plak prent vanaf knipbord';

  @override
  String get errClipboardNoImage => 'Daar is geen prent op die knipbord nie.';

  @override
  String get favorites => 'Gunstelinge';

  @override
  String get addToFavorites => 'Voeg by gunstelinge';

  @override
  String get removeFromFavorites => 'Verwyder uit gunstelinge';

  @override
  String get noFavorites =>
      'Nog geen gunstelinge nie. Tik op die ster by ’n aandeel om dit by te voeg.';

  @override
  String get displayCurrency => 'Vertoongeldeenheid';

  @override
  String get displayCurrencyNone => 'Slegs die aandeel se eie geldeenheid';

  @override
  String labelConverted(String currency) {
    return '≈ in $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Koers: 1 $from = $rate $to (ESB, $date)';
  }

  @override
  String get updates => 'Bywerkings';

  @override
  String currentVersion(String version) {
    return 'Weergawe $version';
  }

  @override
  String get autoUpdate => 'Installeer bywerkings outomaties';

  @override
  String get checkForUpdates => 'Kyk vir bywerkings';

  @override
  String get updateChecking => 'Kyk tans vir bywerkings…';

  @override
  String get updateUpToDate => 'Jy het die nuutste weergawe.';

  @override
  String updateAvailable(String version) {
    return 'Weergawe $version is beskikbaar.';
  }

  @override
  String get updateDownloading => 'Laai die bywerking in die agtergrond af…';

  @override
  String get updateDownloaded =>
      'Die bywerking is gereed. Herbegin om dit te installeer.';

  @override
  String get updateNow => 'Werk by';

  @override
  String get restartNow => 'Herbegin';

  @override
  String get updatesViaStore => 'Bywerkings kom outomaties deur die appwinkel.';

  @override
  String get updateCheckFailed => 'Kon nie vir bywerkings kyk nie.';

  @override
  String get subscription => 'Intekening';

  @override
  String get planTrial => 'Proeftydperk';

  @override
  String get planNormal => 'Normaal';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Geen aktiewe plan nie';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count ontledings per maand';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Gratis proeftydperk van $days dae met $count ontledings';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Nog $days proefdae oor',
      one: 'Nog 1 proefdag oor',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Jou gratis proeftydperk is verby. Kies ’n plan om aan te hou ontleed.';

  @override
  String analysesRemaining(int remaining, int total) {
    return '$remaining van $total ontledings oor vir hierdie tydperk';
  }

  @override
  String extraCredits(int count) {
    return '$count ekstra ontledings';
  }

  @override
  String renewsOn(String date) {
    return 'Hernu op $date';
  }

  @override
  String get choosePlan => 'Kies ’n plan';

  @override
  String get currentPlan => 'Huidige plan';

  @override
  String get subscribe => 'Teken in';

  @override
  String get perMonth => '/ maand';

  @override
  String get extraPacksTitle => 'Het jy meer nodig? Koop ekstra ontledings';

  @override
  String get extraPacksHint =>
      'Ekstra ontledings verval nooit nie en word ná jou maandelikse toekenning gebruik.';

  @override
  String get buy => 'Koop';

  @override
  String get restorePurchases => 'Herstel aankope';

  @override
  String get manageSubscription => 'Bestuur intekening';

  @override
  String get purchaseSuccess => 'Dankie! Jou aankoop is aktief.';

  @override
  String get purchasePending => 'Aankoop hangende…';

  @override
  String get purchaseFailed => 'Die aankoop kon nie voltooi word nie.';

  @override
  String get purchaseCanceled => 'Aankoop gekanselleer.';

  @override
  String get billingUnavailable =>
      'Aankope is nog nie op hierdie platform beskikbaar nie. Teken in op jou foon of Mac; jou plan werk op elke toestel.';

  @override
  String get errQuotaExceeded =>
      'Jy het geen ontledings vir hierdie tydperk oor nie. Gradeer jou plan op of koop ekstra ontledings.';

  @override
  String get errTrialExpired =>
      'Jou gratis proeftydperk is verby. Kies ’n plan om voort te gaan.';

  @override
  String get errNoPlan => '’n Aktiewe plan is nodig vir AI-ontleding.';

  @override
  String get viewPlans => 'Bekyk planne';

  @override
  String get usageTitle => 'Gebruik';

  @override
  String get demoPurchaseNote =>
      'Demofakturering: aankope word op hierdie platform gesimuleer.';

  @override
  String get mostPopular => 'Gewildste';

  @override
  String get bestValue => 'Beste waarde';

  @override
  String get planFeaturesCommon =>
      'Fotoherkenning, lewendige data, grafieke, gunstelinge en al 120 tale is by elke plan ingesluit. Die toekenning dek AI-ontledings.';

  @override
  String get searchLanguages => 'Soek tale…';

  @override
  String get noLanguageMatch => 'Geen taal pas nie.';

  @override
  String get aiSettings => 'AI-ontleding';

  @override
  String get aiLength => 'Lengte';

  @override
  String get aiDepthBrief => 'Kort';

  @override
  String get aiDepthStandard => 'Standaard';

  @override
  String get aiDepthDeep => 'Diepgaande';

  @override
  String get aiDepthBriefDesc => 'Die kern, vinnig.';

  @override
  String get aiDepthStandardDesc => 'Volledige verslag met elke afdeling.';

  @override
  String get aiDepthDeepDesc =>
      'Meer websoektogte, vergelyking met eweknieë en dieper besonderhede.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Ongeveer $min–$max woorde';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'gebruik $count ontledings',
      one: 'gebruik 1 ontleding',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Lesersvlak';

  @override
  String get aiReaderBeginner => 'Beginner';

  @override
  String get aiReaderExperienced => 'Ervare';

  @override
  String get aiReaderBeginnerDesc =>
      'Eenvoudige taal; elke vakterm word verduidelik.';

  @override
  String get aiReaderExperiencedDesc =>
      'Digter teks met standaard finansiële terminologie.';

  @override
  String get aiCounterArgument => 'Sterkste teenargument';

  @override
  String get aiCounterArgumentDesc =>
      'Die opsomming eindig altyd met die sterkste argument teen sy eie gevolgtrekking.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tot $count websoektogte per ontleding met jou plan',
      one: 'Tot 1 websoektog per ontleding met jou plan',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Standaardlengte per plan: Normaal $normal, Pro $pro, Max $max, Ultra $ultra. Kort gebruik 2 minder, Diepgaande 2 meer.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tot $count websoektogte',
      one: 'tot 1 websoektog',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count websoektogte per ontleding',
      one: '1 websoektog per ontleding',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Hierdie lengte vereis $needed ontledings, maar jy het net $left oor. Kies ’n korter lengte in Instellings of kry meer ontledings.';
  }

  @override
  String get outlookMarketMood => 'Marksentiment';

  @override
  String get moodVeryPessimistic => 'Baie pessimisties';

  @override
  String get moodPessimistic => 'Pessimisties';

  @override
  String get moodNeutral => 'Neutraal';

  @override
  String get moodOptimistic => 'Optimisties';

  @override
  String get moodVeryOptimistic => 'Baie optimisties';

  @override
  String get scenarioBull => 'Bulscenario';

  @override
  String get scenarioBase => 'Basisscenario';

  @override
  String get scenarioBear => 'Beerscenario';

  @override
  String outlookCurrentPrice(String price) {
    return 'Huidige prys: $price';
  }

  @override
  String get outlookKeyLevels => 'Sleutelvlakke';

  @override
  String get keyLevelSupport => 'Steun';

  @override
  String get keyLevelResistance => 'Weerstand';

  @override
  String get keyLevelAnchor => 'Anker';

  @override
  String get upcomingEvents => 'Komende gebeure';

  @override
  String get outlookChartNote =>
      'Aanduidende reekse; waarskynlikhede is rowwe skattings, nie voorspellings nie.';

  @override
  String get accountTitle => 'Rekening';

  @override
  String get signIn => 'Meld aan';

  @override
  String get signOut => 'Meld af';

  @override
  String get notSignedIn => 'Nie aangemeld nie';

  @override
  String get accountBenefit =>
      'Meld aan sodat jou intekening op al jou toestelle werk.';

  @override
  String get accountSyncedNote =>
      'Jou intekening en oorblywende ontledings is dieselfde op elke toestel.';

  @override
  String get signInTitle => 'Meld aan by WhatStock';

  @override
  String get emailLabel => 'E-posadres';

  @override
  String get continueWithEmail => 'Gaan voort met e-pos';

  @override
  String codeSentTo(String email) {
    return 'Ons het ’n 6-syferkode na $email gestuur. Dit is 10 minute lank geldig.';
  }

  @override
  String get codeLabel => 'Aanmeldkode';

  @override
  String get resendCode => 'Stuur ’n nuwe kode';

  @override
  String get useDifferentEmail => 'Gebruik ’n ander e-posadres';

  @override
  String get errInvalidCode => 'Die kode is verkeerd of het verval.';

  @override
  String get errInvalidEmail => 'Voer asseblief ’n geldige e-posadres in.';

  @override
  String get errSignInFailed =>
      'Aanmelding het misluk. Gaan jou verbinding na en probeer weer.';

  @override
  String get checkoutWaiting =>
      'Voltooi die betaling in jou blaaier. Die app werk outomaties by sodra dit klaar is.';

  @override
  String get paymentViaStripe =>
      'Veilige betaling in jou blaaier via Stripe. Kanselleer enige tyd.';

  @override
  String get paymentViaStore =>
      'Gehef via jou App Store- of Google Play-rekening. Kanselleer enige tyd in jou winkel se instellings.';

  @override
  String get keySpace => 'Spasie';

  @override
  String get doubleOptionTitle => 'Druk Option twee keer';

  @override
  String get doubleOptionSubtitle =>
      'As jy die Option-sleutel vinnig twee keer druk, roep dit ook WhatStock op.';

  @override
  String get doubleOptionPermission =>
      'Om dit ook in ander apps te laat werk, gee WhatStock toestemming onder Stelselinstellings → Privaatheid en sekuriteit → Invoermonitering, en maak dan die app weer oop.';

  @override
  String get openSystemSettings => 'Maak Stelselinstellings oop';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Druk $shortcut of druk Option twee keer enige plek om WhatStock op te roep.';
  }

  @override
  String get scenarioMostLikely => 'Mees waarskynlik';

  @override
  String get longTermToday => 'Vandag';

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
    return 'mees waarskynlik $price';
  }

  @override
  String get confidenceLow => 'Lae sekerheid';

  @override
  String get confidenceMedium => 'Matige sekerheid';

  @override
  String get confidenceHigh => 'Hoë sekerheid';

  @override
  String get longTermNote =>
      'Langtermynreekse berus op die gestelde aannames en word met tyd wyer. Pryse sluit dividende uit. Rowwe skattings, nie voorspellings nie.';

  @override
  String get portfolio => 'Portefeulje';

  @override
  String get portfolioEmpty =>
      'Nog niks hier nie. Maak ’n aandeel oop en tik op “Voeg by portefeulje” om te volg wat jy besit.';

  @override
  String get portfolioLocalNote =>
      'Slegs op hierdie toestel gestoor. Totale word teen ESB-verwysingskoerse omgeskakel; pryse kan vertraag wees.';

  @override
  String get addToPortfolio => 'Voeg by portefeulje';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Voeg $symbol by';
  }

  @override
  String get portfolioQuantity => 'Aantal aandele';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Prys per aandeel ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Aankoopdatum';

  @override
  String get portfolioAdd => 'Voeg by';

  @override
  String get portfolioInvalidNumber => 'Voer ’n getal groter as nul in.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol is by jou portefeulje gevoeg.';
  }

  @override
  String get portfolioTotalValue => 'Totale waarde';

  @override
  String get portfolioToday => 'Vandag';

  @override
  String get portfolioGainLoss => 'Wins/verlies';

  @override
  String get portfolioInvested => 'Belê';

  @override
  String get portfolioAllocation => 'Toewysing';

  @override
  String get portfolioPositions => 'Posisies';

  @override
  String portfolioAvgCost(String price) {
    return 'gem. koste $price';
  }

  @override
  String get portfolioYourPosition => 'Jou posisie';

  @override
  String get portfolioPurchases => 'Aankope';

  @override
  String get portfolioRemove => 'Verwyder';

  @override
  String get portfolioExcluded =>
      'Posisies sonder ’n prys of wisselkoers word nie by die totale ingereken nie.';

  @override
  String get priceAlerts => 'Pryswaarskuwings';

  @override
  String get setPriceAlert => 'Stel pryswaarskuwing';

  @override
  String alertDialogTitle(String symbol) {
    return 'Pryswaarskuwing · $symbol';
  }

  @override
  String get alertKindAbove => 'Styg bo';

  @override
  String get alertKindBelow => 'Daal onder';

  @override
  String get alertKindMove => 'Beweeg baie in een dag';

  @override
  String alertTargetPrice(String currency) {
    return 'Prys ($currency)';
  }

  @override
  String get alertMovePercent => 'Daaglikse beweging (%)';

  @override
  String get alertAlreadyMet => 'Die prys is reeds verby hierdie vlak.';

  @override
  String get alertSave => 'Stel waarskuwing';

  @override
  String alertCreated(String symbol) {
    return 'Waarskuwing gestel vir $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Nog geen pryswaarskuwings nie. Maak ’n aandeel oop en tik op die klokkie om een te stel.';

  @override
  String get alertsNote =>
      'Waarskuwings word elke 5 minute nagegaan terwyl WhatStock loop. Op ’n rekenaar bly dit in die kieslysbalk of stelselbalk loop; op ’n foon kom waarskuwings voorlopig net terwyl die app oop is.';

  @override
  String alertDescAbove(String price) {
    return 'Bo $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Onder $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Daaglikse beweging ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Geaktiveer op $date teen $price';
  }

  @override
  String get alertRearm => 'Aktiveer weer';

  @override
  String get alertDelete => 'Skrap';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol het bo $price gestyg';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol het onder $price gedaal';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol het vandag $percent beweeg';
  }

  @override
  String alertHitBody(String price) {
    return 'Huidige prys: $price';
  }

  @override
  String get alertOpen => 'Maak oop';

  @override
  String get keepInTrayTitle => 'Hou aan loop wanneer die venster toe is';

  @override
  String get keepInTraySubtitle =>
      'WhatStock bly in die kieslysbalk of stelselbalk, sodat die kortpad en pryswaarskuwings aanhou werk.';

  @override
  String get termsOfUse => 'Gebruiksvoorwaardes';

  @override
  String get privacyPolicy => 'Privaatheidsbeleid';

  @override
  String get subscriptionLegal =>
      'Intekenings hernu elke maand outomaties totdat jy kanselleer. Deur in te teken aanvaar jy die Gebruiksvoorwaardes en die Privaatheidsbeleid.';

  @override
  String get deleteAccount => 'Skrap rekening';

  @override
  String get deleteAccountTitle => 'Skrap jou rekening?';

  @override
  String get deleteAccountBody =>
      'Jou rekening en alles wat op ons bediener gestoor is (e-pos, toekenning, gebruik) word permanent geskrap, en ongebruikte ontledings gaan verlore. ’n Intekening wat in die blaaier betaal is, word dadelik gekanselleer; ’n App Store- of Google Play-intekening moet in die winkel se instellings gekanselleer word.';

  @override
  String get deleteLocalData =>
      'Skrap ook die data op hierdie toestel (portefeulje, waarskuwings, gunstelinge, geskiedenis, gestoorde ontledings)';

  @override
  String get deleteAccountConfirm => 'Skrap permanent';

  @override
  String get accountDeleted => 'Jou rekening is geskrap.';

  @override
  String get errDeleteAccount =>
      'Die rekening kon nie geskrap word nie. Gaan jou verbinding na en probeer weer.';

  @override
  String get aiTrialBriefNote =>
      'Proeftydperk-ontledings is kort en word met ’n vinniger AI-model gemaak. Met ’n plan kry jy ons mees gevorderde AI, meer websoektogte en die lengtes Standaard en Diepgaande.';

  @override
  String get billingMonthly => 'Maandeliks';

  @override
  String get billingYearly => 'Jaarliks';

  @override
  String get yearlyDiscount => '2 maande gratis';

  @override
  String get perYear => '/ jaar';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price per maand';
  }

  @override
  String get subscriptionLegalYearly =>
      'Jaarlikse intekenings hernu elke jaar outomaties totdat jy kanselleer. Deur in te teken aanvaar jy die Gebruiksvoorwaardes en die Privaatheidsbeleid.';

  @override
  String get myAnalyses => 'My ontledings';

  @override
  String get navAlerts => 'Waarskuwings';

  @override
  String get inviteTitle => 'Geslote voorskou';

  @override
  String get inviteBody =>
      'WhatStock is tans slegs op uitnodiging beskikbaar. Voer die uitnodigingskode in wat jy ontvang het.';

  @override
  String get inviteCodeLabel => 'Uitnodigingskode';

  @override
  String get inviteContinue => 'Gaan voort';

  @override
  String get inviteInvalid => 'Hierdie uitnodigingskode is nie geldig nie.';

  @override
  String get inviteExpired =>
      'Hierdie uitnodiging het verval. Vra die persoon wat jou genooi het vir ’n nuwe kode.';

  @override
  String get inviteDeviceLimit =>
      'Hierdie uitnodigingskode word reeds op die maksimum aantal toestelle gebruik.';

  @override
  String get previewConfidential => 'Vertroulike voorskou';

  @override
  String get errPreviewDailyLimit =>
      'Hierdie voorskou se ontledingslimiet vir vandag is bereik. Probeer môre weer.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count uur gelede',
      one: '1 uur gelede',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dae gelede',
      one: '1 dag gelede',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Werk hierdie ontleding by?';

  @override
  String staleBody(String age) {
    return 'Dit is $age geskep. Pryse, nuus en resultate kon sedertdien verander het.';
  }

  @override
  String get staleKeep => 'Wys die vorige een';

  @override
  String get staleRefresh => 'Skep \'n nuwe een';

  @override
  String seeAll(int count) {
    return 'Sien almal ($count)';
  }

  @override
  String get searchAnalyses => 'Soek in jou ontledings';

  @override
  String get deleteAnalysis => 'Vee uit';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol-ontleding uitgevee';
  }

  @override
  String get keyLevelAlertHint =>
      'Tik op ’n vlak om ’n waarskuwing te kry wanneer die prys dit bereik.';

  @override
  String get shareAnalysisTitle => 'Deel ontleding';

  @override
  String get shareAsImage => 'Deel as prent';

  @override
  String get shareAsText => 'Deel as teks';

  @override
  String get shareCardFooter => 'Gemaak met WhatStock';

  @override
  String get shareCardDisclaimer => 'AI-ontleding · nie beleggingsadvies nie';

  @override
  String get referralTitle => 'Nooi vriende';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ekstra ontledings',
      one: '1 ekstra ontleding',
    );
    return 'Deel jou kode. Jou vriend kry dadelik $_temp0, en jy kry dieselfde ná hul eerste ontleding.';
  }

  @override
  String get referralYourCode => 'Jou kode';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Genooi: $invited · Beloon: $rewarded';
  }

  @override
  String get referralHaveCode => 'Het jy ’n kode van ’n vriend?';

  @override
  String get referralRedeem => 'Lös in';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ekstra ontledings bygevoeg. Welkom!',
      one: '1 ekstra ontleding bygevoeg. Welkom!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Hierdie kode bestaan nie. Gaan dit na en probeer weer.';

  @override
  String get referralErrOwn => 'Jy kan nie jou eie kode inlos nie.';

  @override
  String get referralErrAlready => 'Jy het reeds ’n vriend se kode ingelos.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ekstra ontledings',
      one: '1 ekstra ontleding',
    );
    return 'Ek ontleed aandele met WhatStock: neem ’n foto van ’n aandeel en die AI verduidelik dit. Met my kode $code kry jy $_temp0.';
  }

  @override
  String get referralCopied => 'Kode gekopieer';

  @override
  String get onboardTitle1 => 'Neem ’n foto van ’n aandeel';

  @override
  String get onboardBody1 =>
      '’n Makelaarsapp se skerm, ’n koerant of ’n maatskappylogo is genoeg: WhatStock herken die aandeel en wys die prys, grafiek en kernsyfers.';

  @override
  String get onboardTitle2 => 'Verstaan dit binne minute';

  @override
  String get onboardBody2 =>
      'Die AI-ontleding verduidelik wat die aandeel dryf, die risiko’s, die waardasie en drie scenario’s vir waarheen die prys kan gaan – met bronne en in jou taal.';

  @override
  String get onboardTitle3 => 'Bly op hoogte';

  @override
  String get onboardBody3 =>
      'Gunstelinge, jou portefeulje en pryswaarskuwings hou jou op hoogte. Jou ontledings bly op jou toestel, gereed om weer oop te maak.';

  @override
  String get onboardNext => 'Volgende';

  @override
  String get onboardStart => 'Begin';

  @override
  String get onboardSkip => 'Slaan oor';

  @override
  String changesTitle(String date) {
    return 'Sedert die vorige ontleding ($date)';
  }

  @override
  String get changesPrice => 'Prys';

  @override
  String get changesNoMajor =>
      'Die vooruitsigte het nie wesenlik verander nie.';

  @override
  String get changesPreviousSummary => 'Vorige opsomming';

  @override
  String get telemetryTitle => 'Help om WhatStock te verbeter';

  @override
  String get telemetryBody =>
      'Deel anonieme gebruikstatistieke en omvalverslae: watter funksies gebruik word en wat verkeerd geloop het. Nooit jou aandele, ontledings of persoonlike data nie. Jy kan dit enige tyd in Instellings verander.';

  @override
  String get telemetryAllow => 'Laat toe';

  @override
  String get telemetryDecline => 'Nee dankie';

  @override
  String get telemetrySetting => 'Anonieme statistieke en omvalverslae';

  @override
  String get telemetrySettingHint =>
      'Hoe gereeld funksies gebruik word en foutverslae, sonder persoonlike data of die inhoud van jou soektogte en ontledings.';

  @override
  String get askButton => 'Vra oor hierdie ontleding';

  @override
  String askTitle(String symbol) {
    return 'Vrae oor $symbol';
  }

  @override
  String get askIntro =>
      'Vra enigiets oor die ontleding: wat ’n risiko beteken, wat die vooruitsigte sou verander, hoe ’n syfer bereken is. Die antwoorde is gebaseer op hierdie ontleding en is nie beleggingsadvies nie.';

  @override
  String get askHint => 'Vra ’n vraag…';

  @override
  String get askSend => 'Stuur';

  @override
  String get askThinking => 'Dink tans…';

  @override
  String get askSuggest1 => 'Wat is die grootste risiko?';

  @override
  String get askSuggest2 => 'Wat sou die vooruitsigte verander?';

  @override
  String get askSuggest3 => 'Verduidelik dit in eenvoudige taal';

  @override
  String get askMaxReached =>
      'Dit was die laaste vraag vir hierdie ontleding. Skep ’n nuwe ontleding om meer te vra.';

  @override
  String get errAskLimit =>
      'Jy het vandag se limiet vir vrae bereik. Probeer asseblief môre weer.';

  @override
  String get eventTomorrow => 'Môre';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'oor $days dae',
      one: 'oor 1 dag',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Kwartaalresultate';

  @override
  String get eventBeforeOpen => 'voor die opening';

  @override
  String get eventAfterClose => 'na die sluiting';

  @override
  String eventEpsEstimate(String value) {
    return 'WPA-skatting: $value';
  }

  @override
  String get eventFromAnalysis => 'Uit jou ontleding';

  @override
  String get eventsHint =>
      'Resultaatdatums van jou gunstelinge en portefeulje-aandele vir die volgende 90 dae, en die gedateerde gebeure wat jou ontledings uitgelig het.';

  @override
  String get eventsEmpty =>
      'Geen gedateerde gebeure in die volgende 90 dae nie. Voeg gunstelinge of portefeulje-aandele by om hul resultaatdatums hier te sien.';

  @override
  String get compareTitle => 'Vergelyk';

  @override
  String get compareAdd => 'Voeg \'n aandeel by';

  @override
  String get compareRemove => 'Verwyder';

  @override
  String get compareTickerHint => 'Aandeelkode, bv. MSFT';

  @override
  String get compareHint =>
      'Kernsyfers langs mekaar; die beste waarde in elke ry is uitgelig. Bedrae is in elke aandeel se eie geldeenheid.';

  @override
  String get compareNoAnalysis => 'Nog geen ontleding nie';
}
