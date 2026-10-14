// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tsonga (`ts`).
class AppLocalizationsTs extends AppLocalizations {
  AppLocalizationsTs([String locale = 'ts']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Teka xifaniso xa xere u dyondza hinkwaswo hi yona.';

  @override
  String get homeHint =>
      'Xitifikheti xa tixere, xikirini xa app ya bhrokara, phephahungu kumbe logo ya khampani – xin\'wana na xin\'wana lexi kombisaka xere.';

  @override
  String get takePhoto => 'Teka xifaniso';

  @override
  String get chooseFromGallery => 'Hlawula eka galari';

  @override
  String get chooseImage => 'Hlawula xifaniso';

  @override
  String get enterTickerManually => 'Nghenisa ticker hi voko';

  @override
  String get tickerInputLabel => 'Mfungho wa ticker';

  @override
  String get tickerInputHint => 'xik. AAPL';

  @override
  String get lookUp => 'Lava';

  @override
  String demoModeBanner(String symbols) {
    return 'Xiyimo xa nkombiso – a ku na xilotlelo xa data ya makete lexi vekiweke. Data ya xikombiso ya kumeka eka: $symbols.';
  }

  @override
  String get recognizing => 'Hi xopaxopa xifaniso…';

  @override
  String get loadingData => 'Hi layicha data…';

  @override
  String get noCandidatesTitle => 'A ku na xere leyi lemukiweke';

  @override
  String get noCandidatesBody =>
      'A hi swi kotanga ku lemuka xere eka xifaniso lexi. Ringeta xifaniso lexi vonakaka kahle, kumbe u nghenisa ticker hi voko.';

  @override
  String get whatWeSaw => 'Leswi hi swi voneke';

  @override
  String get chooseCandidateTitle => 'A wu vula xere yihi?';

  @override
  String confidencePercent(int percent) {
    return '$percent% ya ku tiyiseka';
  }

  @override
  String get settings => 'Swiyimiso';

  @override
  String get language => 'Ririmi';

  @override
  String get systemLanguage => 'Ntolovelo wa sisiteme';

  @override
  String get about => 'Mayelana na app';

  @override
  String get disclaimer =>
      'App leyi yi nyika mahungu ntsena naswona a hi ndzayo ya vuvekisi. Data yi nga ha hlwela kumbe yi va na swihoxo.';

  @override
  String dataSource(String source) {
    return 'Xihlovo xa data: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Ku lemuka: $source';
  }

  @override
  String get retry => 'Ringeta nakambe';

  @override
  String get cancel => 'Khansela';

  @override
  String get ok => 'Swi lulamile';

  @override
  String get close => 'Pfala';

  @override
  String get errorGeneric => 'Ku na xihoxo lexi humeleleke.';

  @override
  String get errorSectionUnavailable =>
      'A swi kotekanga ku layicha xiphemu lexi.';

  @override
  String get notAvailable => 'a yi kona';

  @override
  String get sectionIdentity => 'Vutitivisi';

  @override
  String get sectionPrice => 'Nxavo';

  @override
  String get sectionValuation => 'Nkambelo wa nkoka';

  @override
  String get sectionFinancials => 'Swa timali';

  @override
  String get sectionDividend => 'Dividende';

  @override
  String get sectionProfile => 'Phurofayili ya khampani';

  @override
  String get sectionAnalysts => 'Mavonelo ya vaxopaxopi';

  @override
  String get sectionNews => 'Mahungu';

  @override
  String get sectionRecognition => 'Vuxokoxoko bya ku lemuka';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Makete ya tixere';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Muxaka wa mali';

  @override
  String get labelCountry => 'Tiko';

  @override
  String get labelIndustry => 'Indasitiri';

  @override
  String get labelSector => 'Xiyenge';

  @override
  String get labelWebsite => 'Websayiti';

  @override
  String get labelIpoDate => 'Siku ra IPO';

  @override
  String get labelMarketCap => 'Nkoka wa makete';

  @override
  String get labelSharesOutstanding => 'Tixere leti humesiweke';

  @override
  String get labelEmployees => 'Vatirhi';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Hofisi-nkulu';

  @override
  String get labelDescription => 'Nhlamuselo';

  @override
  String get labelLastPrice => 'Nxavo wo hetelela';

  @override
  String get labelChange => 'Ncinco';

  @override
  String get labelOpen => 'Ku pfula';

  @override
  String get labelDayHigh => 'Ehenhla ka siku';

  @override
  String get labelDayLow => 'Ehansi ka siku';

  @override
  String get labelPreviousClose => 'Ku pfala loku hundzeke';

  @override
  String get labelWeek52High => 'Ehenhla ka mavhiki ya 52';

  @override
  String get labelWeek52Low => 'Ehansi ka mavhiki ya 52';

  @override
  String get labelAverageVolume10d => 'Avhareji ya ntxaviselano (masiku ya 10)';

  @override
  String updatedAt(String time) {
    return 'Yi pfuxetiwile $time';
  }

  @override
  String get labelPeTrailing => 'P/E (leyi hundzeke)';

  @override
  String get labelPeForward => 'P/E (leyi taka)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / ku khuluka ka mali loku ntshunxekeke';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Mali leyi nghenaka (TTM)';

  @override
  String get labelNetIncomeTtm => 'Mbuyelo wo basa (TTM)';

  @override
  String get labelGrossMargin => 'Mpimo wa mbuyelo hinkwawo';

  @override
  String get labelOperatingMargin => 'Mpimo wa mbuyelo wa mitirho';

  @override
  String get labelNetMargin => 'Mpimo wa mbuyelo wo basa';

  @override
  String get labelRoe => 'Mbuyelo eka mali ya vini';

  @override
  String get labelRoa => 'Mbuyelo eka nhundzu';

  @override
  String get labelDebtToEquity => 'Swikweleti / mali ya vini';

  @override
  String get labelCurrentRatio => 'Mpimo wa sweswi';

  @override
  String get labelRevenueGrowth => 'Ku kula ka mali leyi nghenaka (YoY)';

  @override
  String get labelEpsGrowth => 'Ku kula ka EPS (YoY)';

  @override
  String get labelDividendYield => 'Mbuyelo wa dividende';

  @override
  String get labelDividendPerShare => 'Dividende hi xere';

  @override
  String get labelPayoutRatio => 'Mpimo wa ku hakela';

  @override
  String get labelConsensus => 'Ntwanano';

  @override
  String get ratingStrongBuy => 'Xava swinene';

  @override
  String get ratingBuy => 'Xava';

  @override
  String get ratingHold => 'Khoma';

  @override
  String get ratingSell => 'Xavisa';

  @override
  String get ratingStrongSell => 'Xavisa swinene';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vaxopaxopi va $count',
      one: 'Muxopaxopi un\'we',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Nkarhi: $period';
  }

  @override
  String get noNews => 'A ku na mahungu ya sweswinyana.';

  @override
  String get openArticle => 'Pfula xihloko';

  @override
  String get openLinkFailed => 'A swi kotekanga ku pfula linki.';

  @override
  String get recognitionSummary => 'Nkomiso';

  @override
  String get recognitionEvidence => 'Hikokwalaho ka yini hi ehleketa sweswo';

  @override
  String get recognitionRawText => 'Matsalwa lama hlayiweke eka xifaniso';

  @override
  String get errMissingAnthropicKey =>
      'Ku lemuka ka swifaniso a ku vekiwangi (a ku na ANTHROPIC_API_KEY). Nghenisa ticker hi voko.';

  @override
  String get errRecognitionUnreachable =>
      'A swi kotekanga ku fikelela vukorhokeri bya ku lemuka. Kambela vuhlanganisi bya wena bya inthanete.';

  @override
  String errRecognitionHttp(String status) {
    return 'Vukorhokeri bya ku lemuka byi tlherise xihoxo (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Vukorhokeri bya ku lemuka a byi swi kotanga ku tirha xifaniso lexi.';

  @override
  String get errRecognitionTruncated =>
      'Nhlamulo ya ku lemuka yi tsemekile. Hi kombela u ringeta nakambe.';

  @override
  String get errRecognitionBadResponse =>
      'Nhlamulo leyi nga languteriwangiki ku suka eka vukorhokeri bya ku lemuka.';

  @override
  String get errRecognitionEmpty =>
      'Vukorhokeri bya ku lemuka byi tlherise nhlamulo leyi nga riki na nchumu.';

  @override
  String get errMissingFinnhubKey =>
      'Data ya makete a yi vekiwangi (a ku na FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'A swi kotekanga ku fikelela vukorhokeri bya data ya makete. Kambela vuhlanganisi bya wena bya inthanete.';

  @override
  String get errMarketRateLimited =>
      'Swikombelo swi tele ngopfu eka vukorhokeri bya data ya makete. Hi kombela u rindza minete.';

  @override
  String errMarketHttp(String status) {
    return 'Vukorhokeri bya data ya makete byi tlherise xihoxo (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Nhlamulo leyi nga languteriwangiki ku suka eka vukorhokeri bya data ya makete.';

  @override
  String errNoQuote(String symbol) {
    return 'A ku na data ya nxavo leyi kumekeke ya $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'A ku na phurofayili ya khampani leyi kumekeke ya $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Xiyimo xa nkombiso xi seketela $symbols ntsena. Engetela FINNHUB_API_KEY ku kuma data ya nkarhi wa xiviri.';
  }

  @override
  String errUnknown(String detail) {
    return 'Ku na xihoxo lexi humeleleke: $detail';
  }

  @override
  String get newSearch => 'Ndzavisiso lowuntshwa';

  @override
  String get recentSearches => 'Swa sweswinyana';

  @override
  String get noRecentSearches => 'A ku si va na ndzavisiso wa sweswinyana.';

  @override
  String get clearRecent => 'Sula swa sweswinyana';

  @override
  String get greeting => 'Xana hi languta xere yihi?';

  @override
  String get searchHint => 'Ticker kumbe vito ra khampani';

  @override
  String get attachImage => 'Engetela xifaniso';

  @override
  String get searchResultsTitle => 'Swikumiwa swa ndzavisiso';

  @override
  String errNoResults(String query) {
    return 'A ku na tixere leti kumekeke ta “$query”.';
  }

  @override
  String get quickBarHint => 'Tsala ticker kumbe vito ra khampani…';

  @override
  String get openFullWindow => 'Pfula fasitere';

  @override
  String hotkeyHint(String shortcut) {
    return 'Tshikelela $shortcut kun\'wana na kun\'wana ku vitana WhatStock.';
  }

  @override
  String get trayOpen => 'Pfula WhatStock';

  @override
  String get trayQuickSearch => 'Ndzavisiso wa xihatla';

  @override
  String get trayQuit => 'Huma';

  @override
  String get appearance => 'Ku languteka';

  @override
  String get themeSystem => 'Sisiteme';

  @override
  String get themeDark => 'Munyama';

  @override
  String get themeLight => 'Ku vonakala';

  @override
  String get back => 'Endzhaku';

  @override
  String get aiSectionTitle => 'Nxopaxopo wa AI';

  @override
  String get aiIntro =>
      'Nkomiso lowu enteke lowu tsariweke hi AI: nkomiso wa mahungu ya sweswinyana, bindzu, matimba, makhombo na swilo leswi fihlekeke, nkoka, langutelo ra nxavo leri nga na swiyimo leswi nga humelelaka ku suka eka mavonelo ya miehleketo, ya vanhu, ya xithekiniki na ya ikhonomi hinkwayo, na leswi u faneleke ku swi languta.';

  @override
  String get aiGenerate => 'Endla nxopaxopo';

  @override
  String get aiRegenerate => 'Endla nakambe';

  @override
  String get aiGenerating =>
      'Hi lunghiselela nxopaxopo… leswi swi nga teka minete kumbe timbirhi.';

  @override
  String get aiSources => 'Swihlovo';

  @override
  String aiGeneratedAt(String time) {
    return 'Wu endliwile $time';
  }

  @override
  String get aiDisclaimer =>
      'Nxopaxopo lowu endliweke hi AI hi ku tirhisa data ya mani na mani na mahungu ya sweswinyana. Wu nga va na swihoxo kumbe wu nga ha ri wa sweswi, naswona a hi ndzayo ya vuvekisi.';

  @override
  String get errAiNotConfigured =>
      'Nxopaxopo wa AI a wu vekiwangi (a ku na ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'A swi kotekanga ku fikelela vukorhokeri bya AI. Kambela vuhlanganisi bya wena bya inthanete.';

  @override
  String errAiHttp(String status) {
    return 'Vukorhokeri bya AI byi tlherise xihoxo (HTTP $status).';
  }

  @override
  String get errAiRefused =>
      'Vukorhokeri bya AI byi arile ku xopaxopa xere leyi.';

  @override
  String get errAiBadResponse =>
      'Nhlamulo leyi nga languteriwangiki ku suka eka vukorhokeri bya AI.';

  @override
  String get sectionChart => 'Chati ya nxavo';

  @override
  String get rangeOneWeek => '1W';

  @override
  String get rangeOneMonth => '1M';

  @override
  String get rangeThreeMonths => '3M';

  @override
  String get rangeOneYear => '1Y';

  @override
  String get rangeFiveYears => '5Y';

  @override
  String get chartUnavailable =>
      'Matimu ya nxavo a ma kumeki eka xihlovo xa data xa sweswi.';

  @override
  String get sectionStatements => 'Swiviko swa timali (swa lembe)';

  @override
  String get labelFiscalYear => 'Lembe ra timali';

  @override
  String get labelRevenue => 'Mali leyi nghenaka';

  @override
  String get labelNetIncome => 'Mbuyelo wo basa';

  @override
  String get labelTotalAssets => 'Nhundzu hinkwayo';

  @override
  String get labelTotalLiabilities => 'Swikweleti hinkwaswo';

  @override
  String get labelEquity => 'Mali ya vini va tixere';

  @override
  String get labelOperatingCashFlow => 'Ku khuluka ka mali ka mitirho';

  @override
  String get statementsUnavailable =>
      'Swiviko swa timali leswi vikiweke a swi kumeki eka xere leyi.';

  @override
  String get launchAtLogin => 'Sungula loko u nghena';

  @override
  String get hotkeyLabel => 'Ndlela yo koma ya hinkwako';

  @override
  String get hotkeyRecordHint =>
      'Tshikelela laha, kutani u tshikelela nhlanganiso lowuntshwa wa tikhii';

  @override
  String get hotkeyReset => 'Tlherisela eka ntolovelo';

  @override
  String get pasteImage => 'Namarheta xifaniso ku suka eka klipibodi';

  @override
  String get errClipboardNoImage => 'A ku na xifaniso eka klipibodi.';

  @override
  String get favorites => 'Leswi u swi rhandzaka';

  @override
  String get addToFavorites => 'Engetela eka leswi u swi rhandzaka';

  @override
  String get removeFromFavorites => 'Susa eka leswi u swi rhandzaka';

  @override
  String get noFavorites =>
      'A ku si va na leswi u swi rhandzaka. Thinta nyeleti eka xere ku yi engetela.';

  @override
  String get displayCurrency => 'Muxaka wa mali lowu kombisiwaka';

  @override
  String get displayCurrencyNone => 'Mali ya xere ntsena';

  @override
  String labelConverted(String currency) {
    return '≈ hi $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Mpimo: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Mimpfuxeto';

  @override
  String currentVersion(String version) {
    return 'Vhezheni $version';
  }

  @override
  String get autoUpdate => 'Nghenisa mimpfuxeto hi ku tiendlekela';

  @override
  String get checkForUpdates => 'Kambela mimpfuxeto';

  @override
  String get updateChecking => 'Hi kambela mimpfuxeto…';

  @override
  String get updateUpToDate => 'U na vhezheni ya sweswinyana.';

  @override
  String updateAvailable(String version) {
    return 'Vhezheni $version ya kumeka.';
  }

  @override
  String get updateDownloading => 'Hi dawuniloda mpfuxeto endzhaku…';

  @override
  String get updateDownloaded =>
      'Mpfuxeto wu lunghekile. Sungula nakambe ku wu nghenisa.';

  @override
  String get updateNow => 'Pfuxeta';

  @override
  String get restartNow => 'Sungula nakambe';

  @override
  String get updatesViaStore =>
      'Mimpfuxeto yi fika hi ku tiendlekela hi vhengele ra ti-app.';

  @override
  String get updateCheckFailed => 'A swi kotekanga ku kambela mimpfuxeto.';

  @override
  String get subscription => 'Ntsariso';

  @override
  String get planTrial => 'Ndzingeto';

  @override
  String get planNormal => 'Ntolovelo';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'A ku na kungu leri tirhaka';

  @override
  String planAnalysesPerMonth(int count) {
    return 'Minxopaxopo ya $count hi n\'hweti';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Ndzingeto wa mahala wa masiku ya $days wu ri na minxopaxopo ya $count';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Ku sale masiku ya $days ya ndzingeto',
      one: 'Ku sale siku rin\'we ra ndzingeto',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Ndzingeto wa wena wa mahala wu herile. Hlawula kungu ku ya emahlweni hi minxopaxopo.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Ku sale minxopaxopo ya $remaining eka ya $total eka nkarhi lowu';
  }

  @override
  String extraCredits(int count) {
    return 'Minxopaxopo yo engetela ya $count';
  }

  @override
  String renewsOn(String date) {
    return 'Wu pfuxetiwa hi $date';
  }

  @override
  String get choosePlan => 'Hlawula kungu';

  @override
  String get currentPlan => 'Kungu ra sweswi';

  @override
  String get subscribe => 'Tsarisa';

  @override
  String get perMonth => '/ n\'hweti';

  @override
  String get extraPacksTitle => 'U lava swo tala? Xava minxopaxopo yo engetela';

  @override
  String get extraPacksHint =>
      'Minxopaxopo yo engetela a yi heli nkarhi naswona yi tirhisiwa endzhaku ka xiavelo xa wena xa n\'hweti.';

  @override
  String get buy => 'Xava';

  @override
  String get restorePurchases => 'Vuyisa swixaviwa';

  @override
  String get manageSubscription => 'Lawula ntsariso';

  @override
  String get purchaseSuccess => 'Ha khensa! Xixaviwa xa wena xi tirha.';

  @override
  String get purchasePending => 'Ku xava ku rindzile…';

  @override
  String get purchaseFailed => 'Ku xava a ku hetiwangi.';

  @override
  String get purchaseCanceled => 'Ku xava ku khanseriwile.';

  @override
  String get billingUnavailable =>
      'Ku xava a ku si kumeka eka pulatifomo leyi. Tsarisa eka riqingho ra wena kumbe eka Mac; kungu ra wena ri ta tirha eka xitirhisiwa xin\'wana na xin\'wana.';

  @override
  String get errQuotaExceeded =>
      'A wu na minxopaxopo leyi saleke eka nkarhi lowu. Antswisa kungu ra wena kumbe u xava minxopaxopo yo engetela.';

  @override
  String get errTrialExpired =>
      'Ndzingeto wa wena wa mahala wu herile. Hlawula kungu ku ya emahlweni.';

  @override
  String get errNoPlan => 'Ku laveka kungu leri tirhaka eka nxopaxopo wa AI.';

  @override
  String get viewPlans => 'Vona makungu';

  @override
  String get usageTitle => 'Matirhiselo';

  @override
  String get demoPurchaseNote =>
      'Ku hakela ka nkombiso: swixaviwa i swa ku ringeta ntsena eka pulatifomo leyi.';

  @override
  String get mostPopular => 'Leyi tsakeriwaka ngopfu';

  @override
  String get bestValue => 'Nkoka wo antswa';

  @override
  String get planFeaturesCommon =>
      'Ku lemuka ka swifaniso, data ya nkarhi wa xiviri, tichati, leswi u swi rhandzaka na tindzimi hinkwato ta 120 swi katsiwile eka kungu rin\'wana na rin\'wana. Xiavelo xi katsa minxopaxopo ya AI.';

  @override
  String get searchLanguages => 'Lava tindzimi…';

  @override
  String get noLanguageMatch => 'A ku na ririmi leri fambelanaka.';

  @override
  String get aiSettings => 'Nxopaxopo wa AI';

  @override
  String get aiLength => 'Ku leha';

  @override
  String get aiDepthBrief => 'Wo koma';

  @override
  String get aiDepthStandard => 'Wa xikarhi';

  @override
  String get aiDepthDeep => 'Wo enta';

  @override
  String get aiDepthBriefDesc => 'Swa nkoka, hi xihatla.';

  @override
  String get aiDepthStandardDesc =>
      'Xiviko lexi heleleke xi ri na swiphemu hinkwaswo.';

  @override
  String get aiDepthDeepDesc =>
      'Mindzavisiso yo tala ya inthanete, ku pimanisa na vahlengeri na vuxokoxoko byo enta.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Kwalomu ka marito ya $min–$max';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'yi tirhisa minxopaxopo ya $count',
      one: 'yi tirhisa nxopaxopo wun\'we',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Xiyimo xa muhlayi';

  @override
  String get aiReaderBeginner => 'Musunguri';

  @override
  String get aiReaderExperienced => 'La nga na ntokoto';

  @override
  String get aiReaderBeginnerDesc =>
      'Ririmi ro olova; rito rin\'wana na rin\'wana ra xithekiniki ri hlamuseriwa.';

  @override
  String get aiReaderExperiencedDesc =>
      'Matsalwa lama tateke hi marito ya ntolovelo ya timali.';

  @override
  String get aiCounterArgument => 'Ku kaneta loku tiyeke ngopfu';

  @override
  String get aiCounterArgumentDesc =>
      'Nkomiso minkarhi hinkwayo wu hela hi ku kaneta loku tiyeke ngopfu ku lwisana na makumu ya wona.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Ku fika eka mindzavisiso ya $count ya inthanete eka nxopaxopo wun\'wana na wun\'wana hi kungu ra wena',
      one: 'Ku fika eka ndzavisiso wun\'we wa inthanete eka nxopaxopo wun\'wana na wun\'wana hi kungu ra wena',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Mindzavisiso ya inthanete eka ku leha ka xikarhi hi kungu: Ntolovelo $normal, Pro $pro, Max $max, Ultra $ultra. Wo koma wu tirhisa 2 leyi hungutekeke, Wo enta 2 leyi engetelekeke.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ku fika eka mindzavisiso ya $count ya inthanete',
      one: 'ku fika eka ndzavisiso wun\'we wa inthanete',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mindzavisiso ya $count ya inthanete eka nxopaxopo',
      one: 'Ndzavisiso wun\'we wa inthanete eka nxopaxopo',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Ku leha loku ku lava minxopaxopo ya $needed, kambe ku sale ya $left ntsena. Hlawula ku leha loku komeke eka Swiyimiso kumbe u kuma minxopaxopo yin\'wana.';
  }

  @override
  String get outlookMarketMood => 'Mintlhaveko ya makete';

  @override
  String get moodVeryPessimistic => 'Ntshembo wa le hansi swinene';

  @override
  String get moodPessimistic => 'Ntshembo wa le hansi';

  @override
  String get moodNeutral => 'Exikarhi';

  @override
  String get moodOptimistic => 'Ntshembo wa le henhla';

  @override
  String get moodVeryOptimistic => 'Ntshembo wa le henhla swinene';

  @override
  String get scenarioBull => 'Xiyimo lexinene';

  @override
  String get scenarioBase => 'Xiyimo xa masungulo';

  @override
  String get scenarioBear => 'Xiyimo xo biha';

  @override
  String outlookCurrentPrice(String price) {
    return 'Nxavo wa sweswi: $price';
  }

  @override
  String get outlookKeyLevels => 'Swiyimo swa nkoka';

  @override
  String get keyLevelSupport => 'Nseketelo';

  @override
  String get keyLevelResistance => 'Nsivelo';

  @override
  String get keyLevelAnchor => 'Xikombo';

  @override
  String get upcomingEvents => 'Swiendlakalo leswi taka';

  @override
  String get outlookChartNote =>
      'Mimpimo yo kongomisa ntsena; ku koteka i swiringanyeto swa kwalomu, a hi ku vhumba.';

  @override
  String get accountTitle => 'Akhawunti';

  @override
  String get signIn => 'Nghena';

  @override
  String get signOut => 'Huma';

  @override
  String get notSignedIn => 'A wu nghenanga';

  @override
  String get accountBenefit =>
      'Nghena leswaku ntsariso wa wena wu tirha eka switirhisiwa swa wena hinkwaswo.';

  @override
  String get accountSyncedNote =>
      'Ntsariso wa wena na minxopaxopo leyi saleke swa fana eka xitirhisiwa xin\'wana na xin\'wana.';

  @override
  String get signInTitle => 'Nghena eka WhatStock';

  @override
  String get emailLabel => 'Adirese ya imeyili';

  @override
  String get continueWithEmail => 'Ya emahlweni hi imeyili';

  @override
  String codeSentTo(String email) {
    return 'Hi rhumele khodi ya tinomboro ta 6 eka $email. Yi tirha timinete ta 10.';
  }

  @override
  String get codeLabel => 'Khodi yo nghena';

  @override
  String get resendCode => 'Rhumela khodi leyintshwa';

  @override
  String get useDifferentEmail => 'Tirhisa imeyili yin\'wana';

  @override
  String get errInvalidCode =>
      'Khodi a yi lulamanga kumbe nkarhi wa yona wu hundzile.';

  @override
  String get errInvalidEmail =>
      'Hi kombela u nghenisa adirese ya imeyili leyi lulameke.';

  @override
  String get errSignInFailed =>
      'Ku nghena ku tsandzekile. Kambela vuhlanganisi bya wena u ringeta nakambe.';

  @override
  String get checkoutWaiting =>
      'Hetisa ku hakela eka bulawuza ya wena. App yi ta tipfuxeta hi ku tiendlekela loko swi herile.';

  @override
  String get paymentViaStripe =>
      'Ku hakela loku hlayisekeke eka bulawuza hi Stripe. Khansela nkarhi wun\'wana na wun\'wana.';

  @override
  String get paymentViaStore =>
      'U hakerisiwa hi akhawunti ya wena ya App Store kumbe Google Play. Khansela nkarhi wun\'wana na wun\'wana eka swiyimiso swa vhengele.';

  @override
  String get keySpace => 'Space';

  @override
  String get doubleOptionTitle => 'Tshikelela Option kambirhi';

  @override
  String get doubleOptionSubtitle =>
      'Ku tshikelela khii ya Option kambirhi hi xihatla na swona swi vitana WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Leswaku swi tirha na le ka ti-app tin\'wana, pfumelela WhatStock eka System Settings → Privacy & Security → Input Monitoring, kutani u pfula app nakambe.';

  @override
  String get openSystemSettings => 'Pfula System Settings';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Tshikelela $shortcut kumbe u tshikelela Option kambirhi kun\'wana na kun\'wana ku vitana WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Leswi swi nga humelelaka ngopfu';

  @override
  String get longTermToday => 'Namuntlha';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: 'malembe ya $years',
      one: 'lembe rin\'we',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range hi lembe';
  }

  @override
  String longTermLikely(String price) {
    return 'swi nga humelela ngopfu: $price';
  }

  @override
  String get confidenceLow => 'Ku tiyiseka ka le hansi';

  @override
  String get confidenceMedium => 'Ku tiyiseka ka le xikarhi';

  @override
  String get confidenceHigh => 'Ku tiyiseka ka le henhla';

  @override
  String get longTermNote =>
      'Mimpimo ya nkarhi wo leha yi titshege hi swiringanyeto leswi vuriweke naswona yi andza hi nkarhi. Minxavo a yi katsi dividende. Swiringanyeto swa kwalomu, a hi ku vhumba.';

  @override
  String get portfolio => 'Phothifoliyo';

  @override
  String get portfolioEmpty =>
      'A ku si va na nchumu laha. Pfula xere u tshikelela “Engetela eka phothifoliyo” ku landzelela leswi u nga na swona.';

  @override
  String get portfolioLocalNote =>
      'Swi hlayisiwile eka xitirhisiwa lexi ntsena. Mihlanganelo yi cinciwa hi mimpimo ya xikombo ya ECB; minxavo yi nga ha hlwela.';

  @override
  String get addToPortfolio => 'Engetela eka phothifoliyo';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Engetela $symbol';
  }

  @override
  String get portfolioQuantity => 'Nhlayo ya tixere';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Nxavo hi xere ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Siku ro xava';

  @override
  String get portfolioAdd => 'Engetela';

  @override
  String get portfolioInvalidNumber => 'Nghenisa nomboro leyi tlulaka zero.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol yi engeteriwile eka phothifoliyo ya wena.';
  }

  @override
  String get portfolioTotalValue => 'Nkoka hinkwawo';

  @override
  String get portfolioToday => 'Namuntlha';

  @override
  String get portfolioGainLoss => 'Mbuyelo/ku lahlekeriwa';

  @override
  String get portfolioInvested => 'Leswi vekisiweke';

  @override
  String get portfolioAllocation => 'Ku avanyisa';

  @override
  String get portfolioPositions => 'Tixere';

  @override
  String portfolioAvgCost(String price) {
    return 'avhareji ya nxavo $price';
  }

  @override
  String get portfolioYourPosition => 'Tixere ta wena';

  @override
  String get portfolioPurchases => 'Swixaviwa';

  @override
  String get portfolioRemove => 'Susa';

  @override
  String get portfolioExcluded =>
      'Tixere leti nga riki na nxavo kumbe mpimo wa ku cinca mali a ti katsiwi eka mihlanganelo.';

  @override
  String get priceAlerts => 'Switiviso swa nxavo';

  @override
  String get setPriceAlert => 'Veka xitiviso xa nxavo';

  @override
  String alertDialogTitle(String symbol) {
    return 'Xitiviso xa nxavo · $symbol';
  }

  @override
  String get alertKindAbove => 'Wu tlakuka ehenhla ka';

  @override
  String get alertKindBelow => 'Wu wela ehansi ka';

  @override
  String get alertKindMove => 'Wu cinca ngopfu hi siku';

  @override
  String alertTargetPrice(String currency) {
    return 'Nxavo ($currency)';
  }

  @override
  String get alertMovePercent => 'Ncinco wa siku (%)';

  @override
  String get alertAlreadyMet => 'Nxavo se wu hundze xiyimo lexi.';

  @override
  String get alertSave => 'Veka xitiviso';

  @override
  String alertCreated(String symbol) {
    return 'Xitiviso xa $symbol xi vekiwile.';
  }

  @override
  String get alertsEmpty =>
      'A ku si va na switiviso swa nxavo. Pfula xere u tshikelela ntsimbi ku veka xin\'we.';

  @override
  String get alertsNote =>
      'Switiviso swi kamberiwa timinete tin\'wana na tin\'wana ta 5 loko WhatStock yi ri karhi yi tirha. Eka khompyuta yi ya emahlweni yi tirha eka bara ya menyu kumbe threyi; eka riqingho, sweswi switiviso swi fika ntsena loko app yi pfuriwile.';

  @override
  String alertDescAbove(String price) {
    return 'Ehenhla ka $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Ehansi ka $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Ncinco wa siku ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Xi humelele $date hi $price';
  }

  @override
  String get alertRearm => 'Lunghisa nakambe';

  @override
  String get alertDelete => 'Sula';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol yi tlakukile ehenhla ka $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol yi wele ehansi ka $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol yi cincile hi $percent namuntlha';
  }

  @override
  String alertHitBody(String price) {
    return 'Nxavo wa sweswi: $price';
  }

  @override
  String get alertOpen => 'Pfula';

  @override
  String get keepInTrayTitle =>
      'Ya emahlweni u tirha loko fasitere ri pfariwile';

  @override
  String get keepInTraySubtitle =>
      'WhatStock yi tshama eka bara ya menyu kumbe threyi, hikokwalaho ndlela yo koma na switiviso swa nxavo swi ya emahlweni swi tirha.';

  @override
  String get termsOfUse => 'Swipimelo swa Matirhiselo';

  @override
  String get privacyPolicy => 'Pholisi ya Xihundla';

  @override
  String get subscriptionLegal =>
      'Mintsariso yi tipfuxeta hi ku tiendlekela n\'hweti yin\'wana na yin\'wana ku kondza u yi khansela. Hi ku tsarisa u amukela Swipimelo swa Matirhiselo na Pholisi ya Xihundla.';

  @override
  String get deleteAccount => 'Sula akhawunti';

  @override
  String get deleteAccountTitle => 'Xana u lava ku sula akhawunti ya wena?';

  @override
  String get deleteAccountBody =>
      'Akhawunti ya wena na hinkwaswo leswi hlayisiweke eka sevha ya hina (imeyili, xiavelo, matirhiselo) swi ta suriwa hi laha ku nga heriki, naswona minxopaxopo leyi nga tirhisiwangiki yi ta lahleka. Ntsariso lowu hakeriweke eka bulawuza wu khanseriwa hi ku hatlisa; ntsariso wa App Store kumbe Google Play wu fanele ku khanseriwa eka swiyimiso swa vhengele.';

  @override
  String get deleteLocalData =>
      'Sula na data leyi nga eka xitirhisiwa lexi (phothifoliyo, switiviso, leswi u swi rhandzaka, matimu, minxopaxopo leyi hlayisiweke)';

  @override
  String get deleteAccountConfirm => 'Sula hi laha ku nga heriki';

  @override
  String get accountDeleted => 'Akhawunti ya wena yi suriwile.';

  @override
  String get errDeleteAccount =>
      'A swi kotekanga ku sula akhawunti. Kambela vuhlanganisi bya wena u ringeta nakambe.';

  @override
  String get aiTrialBriefNote =>
      'Minxopaxopo ya ndzingeto yi komile naswona yi endliwa hi modlele wa AI wo hatlisa. Hi kungu u kuma AI ya hina leyi nga ni vuswikoti swinene, mindzavisiso yo tala ya inthanete, ni ku leha ka Wa xikarhi na Wo enta.';

  @override
  String get billingMonthly => 'Hi n\'hweti';

  @override
  String get billingYearly => 'Hi lembe';

  @override
  String get yearlyDiscount => 'Tin\'hweti ta 2 mahala';

  @override
  String get perYear => '/ lembe';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price hi n\'hweti';
  }

  @override
  String get subscriptionLegalYearly =>
      'Mintsariso ya lembe yi tipfuxeta hi ku tiendlekela lembe rin\'wana na rin\'wana ku kondza u yi khansela. Hi ku tsarisa u amukela Swipimelo swa Matirhiselo na Pholisi ya Xihundla.';

  @override
  String get myAnalyses => 'Minxopaxopo ya mina';

  @override
  String get navAlerts => 'Switiviso';

  @override
  String get inviteTitle => 'Xikombiso xo pfaleriwa';

  @override
  String get inviteBody =>
      'WhatStock yi kumeka hi xirhambo ntsena sweswi. Nghenisa khodi ya xirhambo leyi u yi amukeleke.';

  @override
  String get inviteCodeLabel => 'Khodi ya xirhambo';

  @override
  String get inviteContinue => 'Ya emahlweni';

  @override
  String get inviteInvalid => 'Khodi leyi ya xirhambo a yi lulamanga.';

  @override
  String get inviteExpired =>
      'Xirhambo lexi xi hundzeriwe hi nkarhi. Kombela munhu loyi a ku rhambeke khodi leyintshwa.';

  @override
  String get inviteDeviceLimit =>
      'Khodi leyi ya xirhambo se yi tirhisiwa eka nhlayo ya le henhla ya switirhisiwa leyi pfumeleriweke.';

  @override
  String get previewConfidential => 'Xikombiso xa xihundla';

  @override
  String get errPreviewDailyLimit =>
      'Ndzelekano wa minxopaxopo ya namuntlha wa xikombiso lexi wu fikeleriwile. Ringeta nakambe mundzuku.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tiawara ta $count leti hundzeke',
      one: 'awara yin\'we leyi hundzeke',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'masiku ya $count lama hundzeke',
      one: 'siku rin\'we leri hundzeke',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Pfuxeta nxopaxopo lowu?';

  @override
  String staleBody(String age) {
    return 'Wu endliwile $age. Minxavo, mahungu ni mbuyelo swi nga va swi cincile ku sukela kwalaho.';
  }

  @override
  String get staleKeep => 'Kombisa wa khale';

  @override
  String get staleRefresh => 'Endla lowuntshwa';

  @override
  String seeAll(int count) {
    return 'Vona hinkwaswo ($count)';
  }

  @override
  String get searchAnalyses => 'Lava eka minxopaxopo ya wena';

  @override
  String get deleteAnalysis => 'Sula';

  @override
  String analysisDeleted(String symbol) {
    return 'Nxopaxopo wa $symbol wu suriwile';
  }
}
