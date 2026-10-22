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
  String get labelYieldOnCost => 'Mbuyelo eka nxavo wo xava';

  @override
  String get labelDividendGrowth5y => 'Ku kula ka dividende (malembe ya 5)';

  @override
  String get dividendNone =>
      'A ku hakeriwanga dividende eka tin\'hweti ta 12 leti hundzeke.';

  @override
  String get dividendOnYourShares => 'Eka tixere ta wena, hi lembe';

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
  String homeDividendsThisYear(String amount) {
    return 'Tidividende ta lembe leri: $amount';
  }

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

  @override
  String get keyLevelAlertHint =>
      'Tshikelela xiyimo leswaku u kuma xitiviso loko nxavo wu fika kona.';

  @override
  String get shareAnalysisTitle => 'Avelana nxopaxopo';

  @override
  String get shareAsImage => 'Avelana tanihi xifaniso';

  @override
  String get shareAsText => 'Avelana tanihi tsalwa';

  @override
  String get shareCardFooter => 'Swi endliwe hi WhatStock';

  @override
  String get shareCardDisclaimer => 'Nxopaxopo wa AI · a hi ndzayo ya vuvekisi';

  @override
  String get referralTitle => 'Rhamba vanghana';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'minxopaxopo yo engetela ya $count',
      one: 'nxopaxopo wun\'we wo engetela',
    );
    return 'Avelana khodi ya wena. Munghana wa wena u kuma $_temp0 hi ku hatlisa, na wena u kuma leswi fanaka endzhaku ka nxopaxopo wa yena wo sungula.';
  }

  @override
  String get referralYourCode => 'Khodi ya wena';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Lava rhambiweke: $invited · Mihakelo: $rewarded';
  }

  @override
  String get referralHaveCode => 'Xana u na khodi ya munghana?';

  @override
  String get referralRedeem => 'Tirhisa';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ku engeteriwe minxopaxopo ya $count. Hi ku amukela!',
      one: 'Ku engeteriwe nxopaxopo wun\'we. Hi ku amukela!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Khodi leyi a yi kona. Yi kambela kutani u ringeta nakambe.';

  @override
  String get referralErrOwn => 'A wu nge yi tirhisi khodi ya wena.';

  @override
  String get referralErrAlready => 'U tirhisile khodi ya munghana khale.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'minxopaxopo yo engetela ya $count',
      one: 'nxopaxopo wun\'we wo engetela',
    );
    return 'Ndzi xopaxopa swiave hi WhatStock: teka xifaniso xa xiave, kutani AI yi xi hlamusela. Hi khodi ya mina $code u kuma $_temp0.';
  }

  @override
  String get referralCopied => 'Khodi yi kopiwile';

  @override
  String get onboardTitle1 => 'Teka xifaniso xa xere';

  @override
  String get onboardBody1 =>
      'Xikirini xa app ya burokara, phephahungu kumbe logo ya khampani swi ringanerile: WhatStock yi tiva xere naswona yi ku komba nxavo wa yona, chati ni tinomboro ta nkoka.';

  @override
  String get onboardTitle2 => 'Yi twisise hi timinete ti nga ri tingani';

  @override
  String get onboardBody2 =>
      'Nxopaxopo wa AI wu hlamusela leswi endlaka leswaku xere yi famba, makhombo, ntikelo wa yona ni swiyimo swinharhu swa laha nxavo wu nga yaka kona, ku ri ni swihlovo naswona hi ririmi ra wena.';

  @override
  String get onboardTitle3 => 'Tshama u tiva hinkwaswo';

  @override
  String get onboardBody3 =>
      'Leswi u swi rhandzaka, phothifoliyo ya wena ni switiviso swa nxavo swi ku tivisa leswi humelelaka. Minxopaxopo ya wena yi tshama eka xitirhisiwa xa wena, yi lunghekele ku pfuriwa nakambe.';

  @override
  String get onboardNext => 'Leswi landzelaka';

  @override
  String get onboardStart => 'Sungula';

  @override
  String get onboardSkip => 'Tlula';

  @override
  String changesTitle(String date) {
    return 'Ku sukela eka nxopaxopo lowu hundzeke ($date)';
  }

  @override
  String get changesPrice => 'Nxavo';

  @override
  String get changesNoMajor => 'Langutelo a ri cincanga ngopfu.';

  @override
  String get changesPreviousSummary => 'Nkomiso lowu hundzeke';

  @override
  String get telemetryTitle => 'Pfuna ku antswisa WhatStock';

  @override
  String get telemetryBody =>
      'Avelana tinhlayo ta matirhiselo leti nga paluxiki vito ni swiviko swa ku wa: hi swihi swiphemu leswi tirhisiwaka ni leswi hoxekeke. Switoko swa wena, nxopaxopo wa wena kumbe vuxokoxoko bya wena bya xiviri a swi nge avelaniwi nikatsongo. U nga swi cinca nkarhi wun\'wana ni wun\'wana eka Swiyimiso.';

  @override
  String get telemetryAllow => 'Pfumelela';

  @override
  String get telemetryDecline => 'E-e, inkomu';

  @override
  String get telemetrySetting =>
      'Tinhlayo leti nga paluxiki vito ni swiviko swa ku wa';

  @override
  String get telemetrySettingHint =>
      'Ku tirhisiwa kangani ka swiphemu ni swiviko swa swihoxo, handle ka vuxokoxoko bya xiviri kumbe leswi nga eka ku lavisisa ni nxopaxopo wa wena.';

  @override
  String get askButton => 'Vutisa hi nxopaxopo lowu';

  @override
  String askTitle(String symbol) {
    return 'Swivutiso hi $symbol';
  }

  @override
  String get askIntro =>
      'Vutisa xin\'wana na xin\'wana hi nxopaxopo: leswi khombo ri vulaka swona, leswi swi nga cincaka langutelo, ndlela leyi nhlayo yi hlayiweke ha yona. Tinhlamulo ti sekeriwile eka nxopaxopo lowu naswona a hi ndzayo ya vuvekisi.';

  @override
  String get askHint => 'Vutisa xivutiso…';

  @override
  String get askSend => 'Rhumela';

  @override
  String get askThinking => 'Ndza ha ehleketa…';

  @override
  String get askSuggest1 => 'Khombo lerikulu ngopfu i rihi?';

  @override
  String get askSuggest2 => 'I yini leswi swi nga cincaka langutelo?';

  @override
  String get askSuggest3 => 'Hlamusela hi ndlela yo olova';

  @override
  String get askMaxReached =>
      'Lexi a xi ri xivutiso xo hetelela xa nxopaxopo lowu. Endla nxopaxopo lowuntshwa leswaku u vutisa swin\'wana.';

  @override
  String get errAskLimit =>
      'U fikelerile ndzelekano wa swivutiso wa namuntlha. Hi kombela u ringeta nakambe mundzuku.';

  @override
  String get eventTomorrow => 'Mundzuku';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'endzhaku ka masiku ya $days',
      one: 'endzhaku ka siku ra 1',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Mbuyelo wa kotara';

  @override
  String get eventBeforeOpen => 'makete wu nga si pfuriwa';

  @override
  String get eventAfterClose => 'endzhaku ka loko makete wu pfariwile';

  @override
  String eventEpsEstimate(String value) {
    return 'Xiringanyeto xa EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Ku suka eka nxopaxopo wa wena';

  @override
  String get eventDividend => 'Dividende leyi languteriweke';

  @override
  String get eventDividendEstimate =>
      'Yi ringanyetiwile ku suka eka tihakelo leti u ti tsaleke';

  @override
  String get eventsHint =>
      'Masiku ya mbuyelo ya swiavelo leswi u swi rhandzaka ni swa phothifoliyo ya wena eka masiku ya 90 lama taka, swiendlakalo leswi nga ni masiku leswi minxopaxopo ya wena yi swi kombiseke, ni tidividende leti languteriweke ku suka eka tihakelo leti u ti tsaleke.';

  @override
  String get eventsEmpty =>
      'A ku na swiendlakalo leswi nga ni masiku eka masiku ya 90 lama taka. Engetela leswi u swi rhandzaka kumbe swiavelo swa phothifoliyo leswaku u vona masiku ya mbuyelo wa swona laha; tidividende leti u ti tsaleke ti kombisa hakelo leyi landzelaka leyi languteriweke.';

  @override
  String get compareTitle => 'Ringanisa';

  @override
  String get compareAdd => 'Engetela xiavelo';

  @override
  String get compareRemove => 'Susa';

  @override
  String get compareTickerHint => 'Ticker, xikombiso MSFT';

  @override
  String get compareHint =>
      'Tinhlayo ta nkoka ti tshamile etlhelo-tlhelo; nkoka lowunene eka layini yin\'wana na yin\'wana wu vonakisiwile. Mali yi le muxakeni wa mali wa xiavelo xin\'wana na xin\'wana.';

  @override
  String get compareNoAnalysis => 'A ku si va na nxopaxopo';

  @override
  String get portfolioDividends => 'Dividende ya lembe';

  @override
  String portfolioDividendYield(String percent) {
    return 'Mbuyelo wa $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Dividende leyi languteriweke ya lembe yi sekeriwile eka dividende leyi hakeriweke eka tin\'hweti ta 12 leti hundzeke; ku hakela ka nkarhi lowu taka a ku tiyisisiwi.';

  @override
  String positionDividend(String amount) {
    return 'Dividende: $amount hi lembe';
  }

  @override
  String get chartAvgCost => 'Avhareji ya wena';

  @override
  String get chartAlertLevel => 'Xitiviso';

  @override
  String get marketsToday => 'Timakete namuntlha';

  @override
  String get notesTitle => 'Tinotsi ta mina';

  @override
  String get notesHint =>
      'Hikwalaho ka yini u yi xavile, u languta yini, i yini lexi nga ku endlaka u yi xavisa?';

  @override
  String get notesInfo =>
      'Swi hlayisiwile eka xitirhisiwa lexi ntsena. Nxopaxopo wa AI wu tekela enhlokweni tinotsi ta wena.';

  @override
  String notesSaved(String date) {
    return 'Swi hlayisiwile $date';
  }

  @override
  String get peersTitle => 'Tikhampani leti fanaka';

  @override
  String get portfolioExport => 'Rhumela ehandle tanihi CSV';

  @override
  String get portfolioImport => 'Nghenisa ku suka eka CSV';

  @override
  String get portfolioImportHint =>
      'Namarheta xixaviwa xin\'we eka layini yin\'wana na yin\'wana: ticker, nhlayo, nxavo, muxaka wa mali, siku (YYYY-MM-DD). Tikholomo ti nga hambanisiwa hi tikhoma, tisemikholoni kumbe ti-tab; layini ya tinhloko a yi bohi.';

  @override
  String get portfolioImportButton => 'Nghenisa';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ku engeteriwe swixaviwa swa $count',
      one: 'Ku engeteriwe xixaviwa xin\'we',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ku tluriwe tilayini ta $count',
      one: 'Ku tluriwe layini yin\'we',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Phothifoliyo, leswi u swi rhandzaka, switiviso swa nxavo na tinotsi swi fambelanisiwa eka switirhisiwa swa wena hinkwaswo.';

  @override
  String syncLast(String time) {
    return 'Ku fambelanisa ko hetelela: $time';
  }

  @override
  String get syncNow => 'Fambelanisa sweswi';

  @override
  String get syncFailed =>
      'Ku fambelanisa ku tsandzekile. Ku ta ringetiwa nakambe hi ku tiendlekela.';

  @override
  String get alertEmailTitle => 'Imeyili loko xitiviso xi tirha';

  @override
  String get alertEmailOn =>
      'Hi kambela switiviso swa wena endzhaku ka timinete ti nga ri tingani naswona hi ku rhumela imeyili, hambi loko app yi pfariwile.';

  @override
  String get alertEmailSignIn =>
      'Nghena hi imeyili ya wena eka Swiyimiso leswaku u kuma switiviso hi imeyili, hambi loko app yi pfariwile.';

  @override
  String get portfolioHistory => 'Nkoka hi ku famba ka nkarhi';

  @override
  String get portfolioReviewTitle => 'Nxopaxopo wa phothifoliyo hi AI';

  @override
  String get portfolioReviewIntro =>
      'AI yi languta phothifoliyo ya wena hinkwayo: ku hlengeleteka ka mali endhawini yin\'we, ku titshega hi swiyenge ni mali ya matiko, makhombo lawa swiavelo swa wena swi ma avelanaka, ni swiavelo swa vuyelo. Yi tirhisa nxopaxopo wun\'we.';

  @override
  String get portfolioReviewButton => 'Xopaxopa phothifoliyo ya mina';

  @override
  String get portfolioReviewAgain => 'Xopaxopa nakambe';

  @override
  String get portfolioReviewWorking => 'Hi xopaxopa phothifoliyo ya wena…';

  @override
  String get digestTitle => 'Nkatsakanyo wa vhiki hi imeyili';

  @override
  String get digestHint =>
      'Musumbuluko wun\'wana ni wun\'wana: ndlela leyi leswi u swi rhandzaka ni phothifoliyo ya wena swi fambeke ha yona evhikini leyi hundzeke, ni masiku lama taka ya mbuyelo wa swona.';

  @override
  String get benchmarkTitle => 'Loko ku pimanisiwa na S&P 500';

  @override
  String get benchmarkYours => 'Leswi u swi xaveke';

  @override
  String get benchmarkIndex => 'Mali leyi fanaka eka S&P 500';

  @override
  String benchmarkAhead(String points) {
    return 'Swi antswa ku tlula index hi tiphoyinti ta phesente ta $points';
  }

  @override
  String benchmarkBehind(String points) {
    return 'Endzhaku ka index hi tiphoyinti ta phesente ta $points';
  }

  @override
  String get benchmarkHint =>
      'Onge mali ya xixavo xin\'wana na xin\'wana yi vekiwile eka S&P 500 index fund hi siku rero. A swi katsi mbuyelo wa swiavelo; mbuyelo wa khale a wu vhumbhi wa nkarhi lowu taka.';

  @override
  String get portfolioSell => 'Xavisa';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Xavisa $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Nxavo wo xavisa hi xere ($currency)';
  }

  @override
  String get portfolioSellDate => 'Siku ro xavisa';

  @override
  String get portfolioSellAll => 'Hinkwaswo';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'U na $quantity';
  }

  @override
  String get portfolioSold => 'Swi xavisiwile';

  @override
  String get portfolioRealized => 'Mbuyelo wa xiviri';

  @override
  String get portfolioClosed => 'Tixere leti xavisiweke';

  @override
  String get portfolioClosedNote => 'Tixere hinkwato ti xavisiwile';

  @override
  String get portfolioTransactions => 'Swixaviwa ni swixavisiwa';

  @override
  String get portfolioRealizedByYear => 'Mbuyelo wa xiviri hi lembe';

  @override
  String get portfolioRealizedHint =>
      'Swixavisiwa swi sungula ku fambisiwa ni swixaviwa swa wena swa khale ngopfu (FIFO), swi cinciwa hi mpimo wa ku cincana mali wa namuntlha. Eka xiviko xa wena xa xibalo, tirhisa xitatimende xa broker ya wena.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Ku sukela eka nxopaxopo lowu, ku humesiwile mbuyelo lowuntshwa wa kotara ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Mbuyelo lowuntshwa';

  @override
  String get portfolioImportBrokers =>
      'Swo humesiwa eka Revolut, Trading 212 na Interactive Brokers na swona swa tiveka, swin\'we ni leswi xavisiweke; dividende ni mali leyi vekiweke swa tlulamiwa.';

  @override
  String get portfolioImportFile => 'Hlawula fayili';

  @override
  String offlineBanner(String time) {
    return 'Ku hava vuhlanganisi – ku kombisiwa data yo hetelela leyi hlayisiweke ($time).';
  }

  @override
  String get glossMarketCap =>
      'Nkoka wa khampani hinkwayo eka makete wa tixere: nxavo wa xere × nhlayo ya tixere.';

  @override
  String get glossSharesOutstanding =>
      'Nhlayo ya tixere leti khampani yi ti humeseke. Loko yi engeteleka, xere yin\'wana na yin\'wana yi va ni xiphemu lexitsongo; ku xava tixere endzhaku swi yi hunguta.';

  @override
  String get glossPeTrailing =>
      'Nxavo ÷ mbuyelo hi xere wa tin\'hweti ta 12 leti hundzeke: u hakelela malembe mangani ya mbuyelo wa sweswi. Lowu nga ehansi wa chipa, kambe tikhampani leti kulaka hi ku hatlisa hi ntolovelo ti na P/E ya le henhla.';

  @override
  String get glossPeForward =>
      'Ku fana na P/E, kambe hi mbuyelo lowu vaxopaxopi va wu langutelaka eka tin\'hweti ta 12 leti taka. Loko yi ri ehansi ka P/E leyi hundzeke, mbuyelo wu languteriwa ku kula.';

  @override
  String get glossPb =>
      'Nxavo ÷ nkoka wa le tibukwini (nhundzu ku susiwa swikweleti) hi xere. Kwalomu ka 1 swi vula leswaku makete wu teka khampani yi ri ni nkoka wa leswi yi nga na swona ephepeni.';

  @override
  String get glossPs =>
      'Nkoka wa makete ÷ mali leyi nghenaka hi lembe. Swi pfuna eka tikhampani leti nga ni mbuyelo lowutsongo kumbe leti nga riki na wona sweswi; pimanisa endzeni ka indasitiri yin\'we.';

  @override
  String get glossEvToFcf =>
      'Nkoka wa khampani ku katsa na swikweleti (EV) ÷ mali leyi yi yi endlaka hi lembe endzhaku ka vuvekisi. Lowu nga ehansi wu vula leswaku u kuma mali yo tala hi nxavo lowu u wu hakelaka.';

  @override
  String get glossPeg =>
      'P/E ÷ ku kula ka mbuyelo hi lembe loku languteriweke (%). Kwalomu ka 1 hi ntolovelo ku tekiwa ku ri ku ringanela; yi languta P/E hi ku ya hi ku kula.';

  @override
  String get glossEps =>
      'Mbuyelo hi xere eka tin\'hweti ta 12 leti hundzeke. EPS leyi tlhandlukaka lembe na lembe i xin\'wana xa swikombiso swa matimba swinene swa khampani leyi hanyeke kahle.';

  @override
  String get glossBeta =>
      'Ndlela leyi xere yi tolovelaka ku famba ha yona ni makete: 1 = ku fana ni makete, 1.5 = ku tsekatseka loku kulaka hi kwalomu ka 50%, ehansi ka 1 = yi rhulile.';

  @override
  String get glossRevenueTtm =>
      'Ku xavisa hinkwako ka tin\'hweti ta 12 leti hundzeke, ku nga si susiwa tihakelo tin\'wana.';

  @override
  String get glossNetIncomeTtm =>
      'Mbuyelo lowu saleke endzhaku ka tihakelo hinkwato, nhlengo na xibalo eka tin\'hweti ta 12 leti hundzeke.';

  @override
  String get glossGrossMargin =>
      'Xiphemu xa mali leyi nghenaka lexi salaka endzhaku ka tihakelo to kongoma ta swikumiwa. Mpimo wa le henhla hi ntolovelo wu kombisa matimba ya ku veka minxavo.';

  @override
  String get glossOperatingMargin =>
      'Xiphemu xa mali leyi nghenaka lexi salaka endzhaku ka tihakelo ta ku fambisa bindzu (miholo, rendi, vuxavisi), ku nga si susiwa nhlengo na xibalo.';

  @override
  String get glossNetMargin =>
      'Xiphemu xa mali leyi nghenaka lexi hundzukaka mbuyelo wo hetelela. 20% swi vula leswaku eka 100 yin\'wana na yin\'wana ya ku xavisa, 20 i mbuyelo.';

  @override
  String get glossRoe =>
      'Mbuyelo eka mali ya vini: mbuyelo wa lembe ÷ mali ya vini. Wu kombisa leswaku vufambisi byi tirhisa mali ya vini va tixere kahle ku fikela kwihi; ehenhla ka kwalomu ka 15% i swa matimba.';

  @override
  String get glossRoa =>
      'Mbuyelo eka nhundzu: mbuyelo wa lembe ÷ hinkwaswo leswi khampani yi nga na swona. Pimanisa endzeni ka indasitiri yin\'we.';

  @override
  String get glossDebtToEquity =>
      'Swikweleti ÷ mali ya vini. Lowu nga ehenhla wu vula mali yo tala leyi lombiweke: khombo ro tala loko nhlengo wu tlhandluka kumbe bindzu ri nonoka.';

  @override
  String get glossCurrentRatio =>
      'Nhundzu ya nkarhi wo koma ÷ swikweleti leswi faneleke ku hakeriwa endzeni ka lembe. Ehenhla ka 1 swi vula leswaku khampani yi kota ku hakela swikweleti swa yona leswi tshineke.';

  @override
  String get glossRevenueGrowth =>
      'Leswi mali leyi nghenaka yi kuleke ha swona loko yi pimanisiwa na lembe leri hundzeke.';

  @override
  String get glossEpsGrowth =>
      'Leswi mbuyelo hi xere wu kuleke ha swona loko wu pimanisiwa na lembe leri hundzeke.';

  @override
  String get glossDividendYield =>
      'Dividende ya lembe ÷ nxavo wa xere: mali leyi a wu ta yi kuma hi lembe, tanihi phesente ya leswi u swi hakelaka.';

  @override
  String get glossDividendPerShare =>
      'Dividende leyi hakeriweke xere yin\'we eka lembe leri hundzeke.';

  @override
  String get glossPayoutRatio =>
      'Xiphemu xa mbuyelo lexi hakeriwaka tanihi dividende. Ehenhla ka 100% khampani yi hakela ku tlula leswi yi swi kumaka, naswona leswi a swi tshami nkarhi wo leha.';

  @override
  String get portfolioBeta => 'Beta ya phothifoliyo';

  @override
  String get glossPortfolioBeta =>
      'Beta ya tixere ta wena, leyi pimiweke hi ku ya hi nkoka wa tona: kwalomu ka tiphesente tingani leti tixere ta wena ti fambaka ha tona loko makete wu famba hi 1%. Ehenhla ka 1 ti tsekatseka ku tlula makete, ehansi ka 1 ku tsongo. Mali a yi katsiwanga.';

  @override
  String get portfolioTop3 => 'Tixere ta 3 letikulu';

  @override
  String get glossPortfolioTop3 =>
      'Xiphemu xa nkoka wa tixere ta wena lexi nga eka tixere ta wena tinharhu letikulu ngopfu. Loko xi tlakuka, mahungu yo biha ya khampani yin\'we ntsena ma nga vavisa phothifoliyo hinkwayo ku tlula.';

  @override
  String get glossDividendGrowth5y =>
      'Leswi dividende hi xere yi kuleke ha swona hi lembe hi xiringaniso eka malembe ya ntlhanu lama hundzeke. Ku kula loku tshamaka ku ri kona hakanyingi swi vula leswaku khampani yi tshemba ku khuluka ka mali ya yona; ku hunguta hakanyingi i mfungho wa xilemukiso.';

  @override
  String get glossYieldOnCost =>
      'Tidividende leti amukeriweke eka tin\'hweti ta 12 leti hundzeke, leti avanyisiweke hi leswi u swi hakeleke eka tixere leti wa ha tikhomeke. Ku hambana na mbuyelo wa dividende, wu pimiwa hi nxavo lowu u xaveke ha wona, ku nga ri nxavo wa namuntlha.';

  @override
  String get glossTitle => 'Swi vula yini?';

  @override
  String get watchNewsTitle => 'Mahungu ya swixere swa wena';

  @override
  String get undo => 'Tlherisa';

  @override
  String get watchSort => 'Hlela';

  @override
  String get watchSortOwn => 'Ku hlela ka mina';

  @override
  String get watchSortGainers => 'Leswi tlakukeke ngopfu ku sungula';

  @override
  String get watchSortLosers => 'Leswi wileke ngopfu ku sungula';

  @override
  String get watchSortName => 'Hi ticker (A–Z)';

  @override
  String get watchHint =>
      'Koka xikhomo ku hlela nakambe, sindzisa eximatsini ku susa. Layini yi kombisa masiku ya 30 lama hundzeke.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: nxopaxopo wa wena wu lunghekile.';
  }

  @override
  String alertFromCost(String price) {
    return 'Ku suka eka nxavo wa wena wa le xikarhi wo xava ($price):';
  }

  @override
  String get briefTitle => 'Namuntlha ni swiavelo swa wena';

  @override
  String get briefButton => 'Koma namuntlha';

  @override
  String get briefHint =>
      'Nkomiso wo koma wa AI wa ndlela leyi portfolio ya wena ni leswi u swi rhandzaka swi fambeke ha yona namuntlha ni leswi mahungu ya sweswi ma swi vulaka. A yi tirhisi nxopaxopo.';

  @override
  String get briefRefresh => 'Pfuxeta';

  @override
  String get sectionEarnings => 'Mbuyelo';

  @override
  String earningsNext(String date) {
    return 'Xiviko lexi landzelaka: $date';
  }

  @override
  String get earningsExpected => 'EPS leyi languteriweke';

  @override
  String get earningsReported => 'EPS leyi vikiweke';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Yi ringana kumbe yi tlula EPS leyi languteriweke eka $beats eka tikotara ta $total to hetelela',
      one:
          'Yi ringana kumbe yi tlula EPS leyi languteriweke eka $beats eka kotara ya 1',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol yi humesa mbuyelo wa kotara mundzuku';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol yi humesa mbuyelo wa kotara namuntlha';
  }

  @override
  String get earningsRemindersTitle => 'Swotsundzuxo swa mbuyelo';

  @override
  String get earningsRemindersSubtitle =>
      'Xitiviso siku rin\'we emahlweni ka loko swiavelo leswi u swi rhandzaka kumbe swa phothifoliyo ya wena swi humesa mbuyelo wa kotara';

  @override
  String addAllToFavorites(int count) {
    return 'Engetela hinkwaswo eka leswi u swi rhandzaka ($count)';
  }

  @override
  String get portfolioImportPhoto =>
      'Nghenisa ku suka eka xifaniso xa xikirini';

  @override
  String get holdingsReading => 'Hi hlaya tiphozixini ta wena…';

  @override
  String get holdingsReviewTitle => 'Tiphozixini leti kumekeke';

  @override
  String get holdingsReviewHint =>
      'Kambela tinomboro u nga si ti engetela. Nxavo i nxavo wa wena wa le xikarhi wa ku xava hi xiave xin\'we, ku nga ri nxavo wa namuntlha.';

  @override
  String get holdingsNoPrice =>
      'A ku na nxavo wa le xikarhi wa ku xava eka xifaniso';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Engetela tiphozixini ta $count',
      one: 'Engetela phozixini yin\'we',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'A ku kumekanga tiphozixini ta swiave eka xifaniso lexi. Ringeta xifaniso xa xikirini xa pheji ya tiphozixini kumbe rifuwo eka brokara wa wena.';

  @override
  String get week52Range => 'Mpimo wa mavhiki ya 52';

  @override
  String week52BelowHigh(String percent) {
    return '$percent ehansi ka ehenhla ka mavhiki ya 52';
  }

  @override
  String get week52AtHigh => 'Ehenhla ka mavhiki ya 52';

  @override
  String get alertKindTrailing => 'Wu wela ku suka ehenhla';

  @override
  String get alertTrailingPercent => 'Ku wela ku suka ehenhla (%)';

  @override
  String get alertTrailingHint =>
      'Yi landzela nxavo loko wu tlakuka: yi ku tivisa loko nxavo wu wela hi mpimo lowu ku suka eka xiyimo xa le henhla swinene ku sukela loko u yi veka.';

  @override
  String alertDescTrailing(String percent) {
    return 'Ku wela hi $percent ku suka ehenhla';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'le henhla ku fikela sweswi: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol yi wele hi $percent ku suka ehenhla';
  }

  @override
  String get sectionInsiders => 'Mabindzu ya va le ndzeni';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ku xava $count',
      one: 'ku xava 1',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ku xavisa $count',
      one: 'ku xavisa 1',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Hinkwaswo: tixere ta $shares';
  }

  @override
  String get insiderBuy => 'U xavile';

  @override
  String get insiderSell => 'U xavisile';

  @override
  String get insiderHint =>
      'Ku xava na ku xavisa eka makete lowu pfulekeke loku endliweke hi varhangeri na vafambisi eka masiku ya 90 lama hundzeke (SEC Form 4). Ku tirhisa tiopxeni na tixere leti nyikiweke a swi hlayiwi.';

  @override
  String get insiderNone =>
      'A ku na ku xava kumbe ku xavisa ka va le ndzeni eka makete lowu pfulekeke eka masiku ya 90 lama hundzeke.';

  @override
  String get analystTrend =>
      'Ndlela leyi mavonelo ma cinceke ha yona n\'hweti na n\'hweti';

  @override
  String get watchListAll => 'Hinkwaswo';

  @override
  String get watchListNew => 'Nxaxamelo leyintshwa';

  @override
  String get watchListName => 'Vito ra nxaxamelo';

  @override
  String get watchListRename => 'Cinca vito ra nxaxamelo';

  @override
  String get watchListDelete => 'Sula nxaxamelo';

  @override
  String get watchListAddTo => 'Engetela eka nxaxamelo';

  @override
  String get watchListEmpty =>
      'A ku si na swiavelo eka nxaxamelo leyi. Tsindzela batheni ya nxaxamelo ekusuhi ni xiavelo ku xi engetela.';

  @override
  String get portfolioAskTitle => 'Swivutiso hi phothifoliyo ya wena';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'Nkopi yo hlayisa';

  @override
  String get backupSave => 'Hlayisa nkopi yo hlayisa';

  @override
  String get backupSaveHint =>
      'Leswi u swi rhandzaka, minxaxamelo, phothifoliyo, switiviso na tinotsi ta wena eka fayili yin\'we.';

  @override
  String get backupRestore => 'Vuyisa ku suka eka nkopi yo hlayisa';

  @override
  String get backupRestoreHint =>
      'Yi engetela leswi nga eka fayili; a ku na nchumu lowu u nga na wona sweswi lowu susiwaka.';

  @override
  String get backupRestored => 'Nkopi yo hlayisa yi vuyisiwile.';

  @override
  String get backupInvalid => 'Fayili leyi a hi nkopi yo hlayisa ya WhatStock.';

  @override
  String get allocationPositions => 'Tixere';

  @override
  String get allocationSectors => 'Swiyenge';

  @override
  String get allocationCurrencies => 'Mali';

  @override
  String get compareReturn1y => 'Mbuyelo wa lembe ra 1';

  @override
  String get compareFromHigh => 'Ku suka eka ehenhla ka mavhiki ya 52';

  @override
  String get briefAutoTitle =>
      'Nkatsakanyo ya siku na siku nimixo yin’wana ni yin’wana';

  @override
  String get briefAutoSubtitle =>
      '“Namuntlha ni swiavelo swa wena” yi tiendlela hi yoxe endzhaku ka 7:00 nimixo loko app yi ri karhi yi tirha; eka tikhompyuta, xitiviso xi ta ku tivisa. Yi tirhisa ndzelekano wa wena wa swivutiso wa siku na siku, ku nga ri nxopaxopo.';

  @override
  String get targetsButton => 'Ku avanyisa loku lavekaka';

  @override
  String get targetsTitle => 'Ku avanyisa loku lavekaka';

  @override
  String get targetsHint =>
      'Veka leswaku xere yin\'wana na yin\'wana yi fanele ku va na xiphemu xo fika kwihi xa potifoliyo. Siya ndhawu yi ri hava nchumu loko ku nga ri na xikongomelo. Endzhaku ka sweswo app yi ta ku komba leswi u faneleke ku swi xava kumbe ku swi xavisa.';

  @override
  String targetsSum(String percent) {
    return 'Hinkwaswo: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Xava ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Xavisa ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Eka xikongomelo';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol yi hundzile EPS leyi languteriweke';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol a yi fikanga eka EPS leyi languteriweke';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'EPS leyi vikiweke $actual, leyi languteriweke $estimate';
  }

  @override
  String get newsExplain => 'Leswi swi vula yini?';

  @override
  String get watchAlertAll => 'Xitsundzuxo xa ku cinca lokukulu ka siku';

  @override
  String get watchAlertAllHint =>
      'Xitsundzuxo xa nxavo eka xiave xin\'wana na xin\'wana eka nxaxamelo lowu: xi ta rila loko xi cinca hi ndlela leyi hi siku rin\'we, ehenhla kumbe ehansi. Leswi se swi nga na xona swi ta hlayisa xa swona.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ku vekiwe switsundzuxo swa $count',
      one: 'Ku vekiwe xitsundzuxo xin\'we',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized =>
      'Rhumela ehandle vuyelo lebyi kumiweke (CSV)';

  @override
  String get portfolioAnnualReturn => 'Mbuyelo wa lembe';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / lembe';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Mbuyelo wa lembe lowu pimiweke hi mali (XIRR): wu languta loko u xavile ni loko u xavisile, hikwalaho mali lama engeteriweke endzhaku a ma wu onhi. Wu kombisiwa loko xixaviwa xa wena xo sungula xi hetile lembe rin\'we hi xitsongo; dividende a yi katsiwanga.';

  @override
  String get eventsAddToCalendar => 'Engetela eka khalendara (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Xilemukiso xa phothifoliyo';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Xitiviso loko phothifoliyo ya wena hinkwayo yi cinca hi mpimo lowu hi siku rin\'we.';

  @override
  String get portfolioMoveAlertOff => 'Ku timiwile';

  @override
  String portfolioMoveUp(String percent) {
    return 'Phothifoliyo ya wena yi tlakukile hi $percent namuntlha';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Phothifoliyo ya wena yi rhelerile hi $percent namuntlha';
  }

  @override
  String get whatIfTitle => 'Swi ta va njhani loko a wu vekisile?';

  @override
  String get whatIfAmount => 'Ntsengo';

  @override
  String whatIfResult(String amount, String period) {
    return 'Loko a wu vekisile $amount hi nkarhi wa $period, namuntlha a swi ta va na nkoka wa';
  }

  @override
  String get whatIfNote =>
      'Swi sekeriwile ntsena eka nxavo wa xiave: dividende, mihakelo ni xibalo a swi katsiwanga. Mbuyelo wa khale a wu vuli wa vumundzuku.';

  @override
  String get watchShare => 'Avelana nxaxamelo';

  @override
  String get watchImport => 'Engetela ti-ticker';

  @override
  String get watchImportHint =>
      'Namarheta ti-ticker leti hambanisiweke hi tikhoma, swivandla kumbe tilayini letintshwa – xikombiso, nxaxamelo lowu munhu a wu avelaneke na wena.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ku engeteriwe tixere ta $count',
      one: 'Ku engeteriwe xere yin\'we',
      zero: 'A ku na tixere letintshwa',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Leswikulu ngopfu ku sungula';

  @override
  String get positionsSortGain => 'Mbuyelo hinkwawo lowukulu ku sungula';

  @override
  String get positionsSortToday => 'Leswinene ngopfu namuntlha ku sungula';

  @override
  String get chartMyBuys => 'Leswi u swi xaveke';

  @override
  String get chartMySells => 'Leswi u swi xaviseke';

  @override
  String get shortcutsTitle => 'Tindlela to koma ta khibodi';

  @override
  String usMarketOpen(String time) {
    return 'Makete wa Amerika wu pfulekile · wu ta pfaleka endzhaku ka $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Makete wa Amerika wu pfalekile · wu ta pfuleka endzhaku ka $time';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes min';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours h $minutes min';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days masiku $hours h';
  }

  @override
  String get dividendGoalSet =>
      'Veka xikongomelo xa dividende xa n\'hweti na n\'hweti';

  @override
  String get dividendGoalTitle =>
      'Xikongomelo xa dividende xa n\'hweti na n\'hweti';

  @override
  String get dividendGoalAmount => 'Dividende hi n\'hweti';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Hi mbuyelo wa namuntlha, kwalomu ka $amount hi n\'hweti · $percent · Xikongomelo: $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Hi mbuyelo wa namuntlha, kwalomu ka $amount hi n\'hweti · Xikongomelo xi fikeleriwile: $goal';
  }

  @override
  String get portfolioGoalSet => 'Veka xikongomelo';

  @override
  String get portfolioGoalTitle => 'Xikongomelo xa phothifoliyo';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · Xikongomelo: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Xikongomelo xi fikeleriwile: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Susa xikongomelo';

  @override
  String get alertEdit => 'Cinca xitiviso';

  @override
  String get positionOpenLots => 'Swa ha ri swa wena (swa khale ku sungula)';

  @override
  String get lotRemoved => 'Xixaviwa kumbe xixavisiwa xi suriwile';

  @override
  String get alertDeleted => 'Xitsundzuxo xi suriwile';

  @override
  String get alertsClearTriggered => 'Sula switsundzuxo leswi humeleleke';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ku suriwe switsundzuxo swa $count',
      one: 'Ku suriwe xitsundzuxo xin\'we',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Tluka ro sungula';

  @override
  String get allocationCountries => 'Matiko';

  @override
  String get newsExplainNoteResearch =>
      'Nhlamuselo ya AI: yi lavisisa ntiyiso ewebeni, yi pfula xitsalwa naswona yi kambela leswaku xihlovo xi tshembeka ku fikela kwihi. A hi ndzayo ya vuvekisi. Yi tirhisa ndzelekano wa wena wa swivutiso wa siku na siku, ku nga ri nxopaxopo.';

  @override
  String get sourceOfficial => 'Swa ximfumo';

  @override
  String get sourcePressRelease => 'Xitiviso';

  @override
  String get sourceMajorNews => 'Phephahungu lerikulu';

  @override
  String get sourceOpinion => 'Mavonelo';

  @override
  String get earningsSummaryButton =>
      'A ku ri na yini eka xiviko xa sweswinyana?';

  @override
  String get earningsSummaryNote =>
      'Nkomiso wa AI wa xitiviso xa mbuyelo wa khamphani ni mahungu ya vuhaxi lawa yi ma kumaka ewebeni. A hi ndzayo ya vuvekisi. Yi tirhisa ndzelekano wa wena wa swivutiso wa siku na siku, ku nga ri nxopaxopo.';

  @override
  String get compareLastSurprise => 'EPS leyi hundzeke vs leyi languteriweke';

  @override
  String get compareNextReport => 'Xiviko lexi landzelaka';

  @override
  String get resolvingDescription => 'Hi lava xere leyi u vulaka yona…';

  @override
  String get instrumentTitle => 'Mayelana na xitirhisiwa lexi';

  @override
  String get instrumentHint =>
      'A ku na profayili ya khamphani ya mfungho lowu – xi nga va ETF, nkwama kumbe xitifikheti xa depoziti. Vutisa AI leswaku i yini, xi na yini endzeni na leswaku xi durha ku fika kwihi.';

  @override
  String get instrumentAsk => 'I yini lexi?';

  @override
  String get instrumentNote =>
      'Nhlamuselo ya AI ku suka eka pheji ya nkwama ya muhumelerisi na tiwebsayiti ta timali leti yi ti kumaka ewebeni. A hi ndzayo ya vuvekisi. Yi tirhisa ndzelekano wa wena wa swivutiso wa siku na siku, ku nga ri nxopaxopo.';

  @override
  String suggestAskAi(String query) {
    return 'Vutisa AI: “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'A ku na nxavo wa sweswi wa $symbols.';
  }

  @override
  String get eventsRecentResults => 'Mbuyelo lowu ha ku vikiwaka';

  @override
  String get saveToNotes => 'Hlayisa eka tinotsi ta mina';

  @override
  String get savedToNotes => 'Yi hlayisiwile eka tinotsi ta wena';

  @override
  String get portfolioDividendsReceived => 'Tidividende leti amukeriweke';

  @override
  String get portfolioDividendsThisYear => 'Lembe leri';

  @override
  String get portfolioDividendsAllTime => 'Hinkwaswo';

  @override
  String get portfolioAddDividend => 'Engetela dividende';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Mali leyi amukeriweke ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Siku ra ku hakela';

  @override
  String get portfolioDividendsEmpty =>
      'A ku na tidividende leti tsariweke ku fikela sweswi. Ti engetele hi voko, kumbe u nghenisa fayili ya export ya broker wa wena – mitila ya yona ya tidividende na yona ya tekiwa.';

  @override
  String get portfolioSplit => 'Ku avanyisiwa ka tishere';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Ku avanyisiwa ka tishere: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Ku xava ni ku xavisa loku nga ni siku ra le mahlweni ka ku avanyisiwa ku lulamisiwa: nhlayo ya tishere yi andzisiwa naswona nxavo wa shere yin\'we wu avanyisiwa, leswaku ntsengo wu tshama wu fana.';

  @override
  String get portfolioSplitRatio => 'Mpimo (leswintshwa : leswa khale)';

  @override
  String get portfolioSplitRatioError =>
      'Nghenisa mpimo wo fana na 10:1, kumbe 1:10 eka ku avanyisiwa ko tlhelela endzhaku.';

  @override
  String get portfolioSplitDate => 'Siku ra ku avanyisiwa';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Ku avanyisiwa ka tishere $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Ku avanyisiwa ka tishere ku susiwile';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ku avanyisiwa ka tishere $count ku engeteriwile',
      one: 'Ku avanyisiwa ka tishere 1 ku engeteriwile',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tidividende ta $count ti engeteriwile',
      one: 'Dividende 1 yi engeteriwile',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Humesa tidividende (CSV)';

  @override
  String get portfolioDividendDeleted => 'Dividende yi susiwile';

  @override
  String get portfolioDividendsHint =>
      'Mali hilaha yi fikeke eka akhawunti ya wena, hi mali ya ku hakela; tinhlayo hinkwato ti hundzuluxiwa hi mpimo wa namuntlha. Eka xibalo xa wena, tirhisa xitatimende xa broker wa wena.';

  @override
  String get awayTitle => 'Loko u nga ri kona';

  @override
  String awaySince(String when) {
    return 'Ku sukela $when';
  }

  @override
  String get awayQuiet => 'A ku na lexi cinceke ngopfu.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Swilemukiso swa $count swi pfurile',
      one: 'Xilemukiso 1 xi pfurile',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Mbuyelo lowu vikiweke: $symbols';
  }

  @override
  String get moveWhyButton => 'Hikwalaho ka yini yi famba namuntlha?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent namuntlha';
  }

  @override
  String get moveWhyNote =>
      'Nhlamuselo ya AI leyi humaka eka mahungu ya namuntlha lama kumiweke eka inthanete; xivangelo xa ntiyiso xi nga ha va xi nga tiviwi kumbe xi hambana. A hi ndzayo ya vuvekisi. Yi tirhisa nhlayo ya wena ya swivutiso ya siku, ku nga ri nxopaxopo.';

  @override
  String get sectionTechnical => 'Xifaniso xa thekiniki';

  @override
  String get labelSma50 => 'Avhareji ya masiku ya 50';

  @override
  String get labelSma200 => 'Avhareji ya masiku ya 200';

  @override
  String get labelRsi => 'RSI (masiku ya 14)';

  @override
  String get labelVolatility30 => 'Ku cinca ka nxavo (masiku ya 30)';

  @override
  String techAbove(String percent) {
    return '$percent ehenhla';
  }

  @override
  String techBelow(String percent) {
    return '$percent ehansi';
  }

  @override
  String get techOverbought => 'yi xaviwe ngopfu';

  @override
  String get techOversold => 'yi xavisiwe ngopfu';

  @override
  String get techNeutral => 'exikarhi';

  @override
  String get techGoldenCross =>
      'Avhareji ya masiku ya 50 yi le henhla ka avhareji ya masiku ya 200 – hi ku hlaya ka ntolovelo i ku tlakuka.';

  @override
  String get techDeathCross =>
      'Avhareji ya masiku ya 50 yi le hansi ka avhareji ya masiku ya 200 – hi ku hlaya ka ntolovelo i ku rhelela.';

  @override
  String get glossSma50 =>
      'Avhareji ya nxavo wo pfala wa masiku ya 50 yo hetelela ya bindzu. Nxavo lowu nga ehenhla ka yona hakanyingi wu voniwa tanihi matimba ya nkarhi wo koma, lowu nga ehansi tanihi ku tsana.';

  @override
  String get glossSma200 =>
      'Avhareji ya nxavo wo pfala wa masiku ya 200 yo hetelela ya bindzu – layini wa ntolovelo wa ndlela ya nkarhi wo leha. Vavekisi vo tala va teka nxavo lowu nga ehenhla ka yona tanihi ku tlakuka ka nkarhi wo leha.';

  @override
  String get glossRsi =>
      'Indekisi ya matimba yo ringanisa: yi ringanisa mbuyelo wa sweswinyana ni ku lahlekeriwa ka sweswinyana eka xikalo xa 0–100. Ehenhla ka 70 xitoko hakanyingi xi vuriwa xi xaviwe ngopfu (xi tlakukile hi ku hatlisa), ehansi ka 30 xi xavisiwe ngopfu – kambe ndlela ya matimba yi nga tshama kona nkarhi wo leha.';

  @override
  String get glossVolatility =>
      'Ndlela leyi nxavo wu cincaka ha yona siku na siku, yi pimiwe hi lembe: 20% swi vula leswaku lembe ro tolovela ri famba endzeni ka kwalomu ka ±20%. Ku cinca lokukulu swi vula ku famba lokukulu eka matlhelo hamambirhi.';

  @override
  String get techNote =>
      'Swi hlayiwile ku suka eka minxavo yo pfala ya siku na siku. Swikombiso swa thekiniki swi hlamusela leswi hundzeke, ku nga ri vumundzuku.';

  @override
  String portfolioAbove200(int above, int count) {
    return 'Swiyimo swa $above eka $count swi le henhla ka avhareji ya swona ya masiku ya 200';
  }

  @override
  String get watchSignalsTitle => 'Swikombiso';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · yi xavisiwe ngopfu';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · yi xaviwe ngopfu';
  }

  @override
  String get signalCrossedAbove =>
      'yi tsemakanyile ehenhla ka avhareji ya masiku ya 200';

  @override
  String get signalCrossedBelow =>
      'yi tsemakanyile ehansi ka avhareji ya masiku ya 200';

  @override
  String get signalAlertsTitle => 'Switiviso swa mikombiso ya thekiniki';

  @override
  String get signalAlertsSubtitle =>
      'Kan\'we hi siku, loko xiyere lexi u xi landzelelaka xi xavisiwe ngopfu kumbe xi xaviwe ngopfu (RSI), kumbe ntsengo wa xona wu tsemakanya avhareji ya masiku ya 200.';

  @override
  String get signalAlertsNotification => 'Mikombiso ya thekiniki';

  @override
  String get glossaryPageTitle => 'Nxaxamelo wa marito';

  @override
  String get glossaryPageSubtitle =>
      'Tinhlamuselo to olova ta nomboro yin\'wana ni yin\'wana leyi app yi yi kombisaka, ku suka eka P/E ku ya eka RSI';

  @override
  String get glossarySearchHint => 'Lava eka nxaxamelo wa marito';

  @override
  String get portfolioCash => 'Mali';

  @override
  String get portfolioCashTitle => 'Mali leyi saleke';

  @override
  String get portfolioCashHint =>
      'Mali leyi nga vekisiwangiki eka broker wa wena, hi muxaka wa mali. Yi hlayiwa eka nkoka hinkwawo na ku avanyisa; ku nga ri eka mbuyelo.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Nhlayo ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Veka mali leyi saleke';

  @override
  String get portfolioDividendsByMonth => 'Hi n\'hweti';

  @override
  String get dividendsLegendReceived => 'Leti amukeriweke';

  @override
  String get dividendsLegendExpected => 'Leti languteriweke';

  @override
  String get portfolioDividendsExpected => 'Leti landzelaka leti languteriweke';

  @override
  String get portfolioDividendsExpectedNote =>
      'Ti ringanyetiwile ku suka eka masiku ni mali ya tihakelo leti u ti tsaleke; tikhampani ti nga ti cinca kumbe ti ti tlula.';

  @override
  String portfolioDividendAround(String date) {
    return 'kwalomu ka $date';
  }
}
