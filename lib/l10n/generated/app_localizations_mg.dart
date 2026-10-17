// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malagasy (`mg`).
class AppLocalizationsMg extends AppLocalizations {
  AppLocalizationsMg([String locale = 'mg']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Makà sarin\'ny aksiona iray ary fantaro ny momba azy rehetra.';

  @override
  String get homeHint =>
      'Taratasy fanamarinana aksiona, efijerin\'ny fampiharana broker, gazety na logon\'ny orinasa – izay rehetra mamantatra aksiona.';

  @override
  String get takePhoto => 'Makà sary';

  @override
  String get chooseFromGallery => 'Safidio ao amin\'ny tahirin-tsary';

  @override
  String get chooseImage => 'Misafidiana sary';

  @override
  String get enterTickerManually => 'Soraty ny ticker';

  @override
  String get tickerInputLabel => 'Marika ticker';

  @override
  String get tickerInputHint => 'oh. AAPL';

  @override
  String get lookUp => 'Tadiavo';

  @override
  String demoModeBanner(String symbols) {
    return 'Fomba demo – tsy misy lakilen\'ny angona momba ny tsena voakirakira. Misy angona santionany ho an\'ny: $symbols.';
  }

  @override
  String get recognizing => 'Mamakafaka ny sary…';

  @override
  String get loadingData => 'Maka ny angona…';

  @override
  String get noCandidatesTitle => 'Tsy nisy aksiona fantatra';

  @override
  String get noCandidatesBody =>
      'Tsy nahafantatra aksiona tao amin\'ity sary ity izahay. Andramo sary mazava kokoa, na soraty ny ticker.';

  @override
  String get whatWeSaw => 'Izay hitanay';

  @override
  String get chooseCandidateTitle =>
      'Iza amin\'ireto aksiona ireto no notadiavinao?';

  @override
  String confidencePercent(int percent) {
    return 'Fahatokisana $percent%';
  }

  @override
  String get settings => 'Fikirakirana';

  @override
  String get language => 'Fiteny';

  @override
  String get systemLanguage => 'Araka ny rafitra';

  @override
  String get about => 'Mombamomba';

  @override
  String get disclaimer =>
      'Mampahafantatra fotsiny ity fampiharana ity fa tsy torohevitra momba ny fampiasam-bola. Mety ho tara na tsy marina ny angona.';

  @override
  String dataSource(String source) {
    return 'Loharanon\'ny angona: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Famantarana: $source';
  }

  @override
  String get retry => 'Andramo indray';

  @override
  String get cancel => 'Foano';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Akatony';

  @override
  String get errorGeneric => 'Nisy olana nitranga.';

  @override
  String get errorSectionUnavailable => 'Tsy azo nalaina ity fizarana ity.';

  @override
  String get notAvailable => 'tsy misy';

  @override
  String get sectionIdentity => 'Famaritana';

  @override
  String get sectionPrice => 'Vidiny';

  @override
  String get sectionValuation => 'Fanombanana';

  @override
  String get sectionFinancials => 'Ara-bola';

  @override
  String get sectionDividend => 'Dividenda';

  @override
  String get sectionProfile => 'Mombamomban\'ny orinasa';

  @override
  String get sectionAnalysts => 'Naotin\'ny mpandalina';

  @override
  String get sectionNews => 'Vaovao';

  @override
  String get sectionRecognition => 'Antsipirian\'ny famantarana';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Tsenam-bola';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Vola';

  @override
  String get labelCountry => 'Firenena';

  @override
  String get labelIndustry => 'Indostria';

  @override
  String get labelSector => 'Sehatra';

  @override
  String get labelWebsite => 'Tranonkala';

  @override
  String get labelIpoDate => 'Datin\'ny IPO';

  @override
  String get labelMarketCap => 'Sanda an-tsena';

  @override
  String get labelSharesOutstanding => 'Aksiona mivezivezy';

  @override
  String get labelEmployees => 'Mpiasa';

  @override
  String get labelCeo => 'Tale jeneraly';

  @override
  String get labelHeadquarters => 'Foibe';

  @override
  String get labelDescription => 'Fanazavana';

  @override
  String get labelLastPrice => 'Vidiny farany';

  @override
  String get labelChange => 'Fiovana';

  @override
  String get labelOpen => 'Fisokafana';

  @override
  String get labelDayHigh => 'Avo indrindra androany';

  @override
  String get labelDayLow => 'Ambany indrindra androany';

  @override
  String get labelPreviousClose => 'Fanakatonana teo aloha';

  @override
  String get labelWeek52High => 'Avo indrindra tao anatin\'ny 52 herinandro';

  @override
  String get labelWeek52Low => 'Ambany indrindra tao anatin\'ny 52 herinandro';

  @override
  String get labelAverageVolume10d => 'Habetsahana antonony (10 andro)';

  @override
  String updatedAt(String time) {
    return 'Nohavaozina $time';
  }

  @override
  String get labelPeTrailing => 'P/E (lasa)';

  @override
  String get labelPeForward => 'P/E (ho avy)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / fikorianam-bola malalaka';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Vola miditra (TTM)';

  @override
  String get labelNetIncomeTtm => 'Tombony madio (TTM)';

  @override
  String get labelGrossMargin => 'Tahan-tombony ankapobeny';

  @override
  String get labelOperatingMargin => 'Tahan-tombony ara-asa';

  @override
  String get labelNetMargin => 'Tahan-tombony madio';

  @override
  String get labelRoe => 'Tombony amin\'ny renivola';

  @override
  String get labelRoa => 'Tombony amin\'ny fananana';

  @override
  String get labelDebtToEquity => 'Trosa / renivola';

  @override
  String get labelCurrentRatio => 'Tahan\'ny fahafahana mandoa';

  @override
  String get labelRevenueGrowth => 'Fitomboan\'ny vola miditra (YoY)';

  @override
  String get labelEpsGrowth => 'Fitomboan\'ny EPS (YoY)';

  @override
  String get labelDividendYield => 'Tahan\'ny dividenda';

  @override
  String get labelDividendPerShare => 'Dividenda isaky ny aksiona';

  @override
  String get labelPayoutRatio => 'Tahan\'ny fizarana tombony';

  @override
  String get labelConsensus => 'Hevitra iraisana';

  @override
  String get ratingStrongBuy => 'Tena vidiana';

  @override
  String get ratingBuy => 'Vidiana';

  @override
  String get ratingHold => 'Tazomina';

  @override
  String get ratingSell => 'Amidy';

  @override
  String get ratingStrongSell => 'Tena amidy';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mpandalina',
      one: '$count mpandalina',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Vanim-potoana: $period';
  }

  @override
  String get noNews => 'Tsy misy vaovao vao haingana.';

  @override
  String get openArticle => 'Sokafy ny lahatsoratra';

  @override
  String get openLinkFailed => 'Tsy afaka nosokafana ny rohy.';

  @override
  String get recognitionSummary => 'Famintinana';

  @override
  String get recognitionEvidence => 'Nahoana no izany no heverinay';

  @override
  String get recognitionRawText => 'Soratra novakiana tamin\'ny sary';

  @override
  String get errMissingAnthropicKey =>
      'Tsy voakirakira ny famantarana sary (tsy misy ANTHROPIC_API_KEY). Soraty ny ticker.';

  @override
  String get errRecognitionUnreachable =>
      'Tsy tratra ny serivisy famantarana. Hamarino ny fifandraisanao amin\'ny Internet.';

  @override
  String errRecognitionHttp(String status) {
    return 'Nanome hadisoana ny serivisy famantarana (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Tsy afaka nikarakara ity sary ity ny serivisy famantarana.';

  @override
  String get errRecognitionTruncated =>
      'Tapaka ny valin\'ny famantarana. Andramo indray azafady.';

  @override
  String get errRecognitionBadResponse =>
      'Valiny tsy nampoizina avy amin\'ny serivisy famantarana.';

  @override
  String get errRecognitionEmpty =>
      'Valiny foana no navoakan\'ny serivisy famantarana.';

  @override
  String get errMissingFinnhubKey =>
      'Tsy voakirakira ny angona momba ny tsena (tsy misy FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Tsy tratra ny serivisin\'ny angona momba ny tsena. Hamarino ny fifandraisanao amin\'ny Internet.';

  @override
  String get errMarketRateLimited =>
      'Be loatra ny fangatahana amin\'ny serivisin\'ny angona momba ny tsena. Miandrasa iray minitra azafady.';

  @override
  String errMarketHttp(String status) {
    return 'Nanome hadisoana ny serivisin\'ny angona momba ny tsena (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Valiny tsy nampoizina avy amin\'ny serivisin\'ny angona momba ny tsena.';

  @override
  String errNoQuote(String symbol) {
    return 'Tsy nahitana angona momba ny vidiny ho an\'ny $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Tsy nahitana mombamomban\'ny orinasa ho an\'ny $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return '$symbols ihany no azo jerena amin\'ny fomba demo. Ampio FINNHUB_API_KEY mba hahazoana angona mivantana.';
  }

  @override
  String errUnknown(String detail) {
    return 'Nisy olana nitranga: $detail';
  }

  @override
  String get newSearch => 'Fikarohana vaovao';

  @override
  String get recentSearches => 'Vao haingana';

  @override
  String get noRecentSearches => 'Mbola tsy misy fikarohana vao haingana.';

  @override
  String get clearRecent => 'Fafao ny vao haingana';

  @override
  String get greeting => 'Aksiona inona no hojerentsika?';

  @override
  String get searchHint => 'Ticker na anaran\'ny orinasa';

  @override
  String get attachImage => 'Ampiraiketo sary';

  @override
  String get searchResultsTitle => 'Valin\'ny fikarohana';

  @override
  String errNoResults(String query) {
    return 'Tsy nahitana aksiona ho an\'ny «$query».';
  }

  @override
  String get quickBarHint => 'Soraty ny ticker na ny anaran\'ny orinasa…';

  @override
  String get openFullWindow => 'Sokafy ny varavarankely';

  @override
  String hotkeyHint(String shortcut) {
    return 'Tsindrio $shortcut na aiza na aiza mba hiantsoana ny WhatStock.';
  }

  @override
  String get trayOpen => 'Sokafy ny WhatStock';

  @override
  String get trayQuickSearch => 'Fikarohana haingana';

  @override
  String get trayQuit => 'Hiala';

  @override
  String get appearance => 'Endrika';

  @override
  String get themeSystem => 'Rafitra';

  @override
  String get themeDark => 'Maizina';

  @override
  String get themeLight => 'Mazava';

  @override
  String get back => 'Hiverina';

  @override
  String get aiSectionTitle => 'Fandalinana AI';

  @override
  String get aiIntro =>
      'Topy maso amin\'ny antsipiriany nosoratan\'ny AI: famintinana ny vaovao farany, ny asan\'ny orinasa, ny tanjany, ny loza mety hitranga sy ny antony miafina, ny fanombanana, ny vinavina momba ny vidiny miaraka amin\'ny toe-javatra mety hitranga avy amin\'ny lafiny ara-tsaina, ara-tsosialy, ara-teknika ary makro, ary izay tokony harahi-maso.';

  @override
  String get aiGenerate => 'Mamorona fandalinana';

  @override
  String get aiRegenerate => 'Mamorona indray';

  @override
  String get aiGenerating =>
      'Manomana ny fandalinana… mety haharitra iray na roa minitra izany.';

  @override
  String get aiSources => 'Loharano';

  @override
  String aiGeneratedAt(String time) {
    return 'Natao $time';
  }

  @override
  String get aiDisclaimer =>
      'Fandalinana novokarin\'ny AI miorina amin\'ny angona ho an\'ny besinimaro sy ny vaovao farany. Mety misy diso na efa lany andro izy, ary tsy torohevitra momba ny fampiasam-bola.';

  @override
  String get errAiNotConfigured =>
      'Tsy voakirakira ny fandalinana AI (tsy misy ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Tsy tratra ny serivisy AI. Hamarino ny fifandraisanao amin\'ny Internet.';

  @override
  String errAiHttp(String status) {
    return 'Nanome hadisoana ny serivisy AI (HTTP $status).';
  }

  @override
  String get errAiRefused =>
      'Nandà tsy handalina ity aksiona ity ny serivisy AI.';

  @override
  String get errAiBadResponse =>
      'Valiny tsy nampoizina avy amin\'ny serivisy AI.';

  @override
  String get sectionChart => 'Sarisarin\'ny vidiny';

  @override
  String get rangeOneWeek => '1H';

  @override
  String get rangeOneMonth => '1V';

  @override
  String get rangeThreeMonths => '3V';

  @override
  String get rangeOneYear => '1T';

  @override
  String get rangeFiveYears => '5T';

  @override
  String get chartUnavailable =>
      'Tsy misy ny tantaran\'ny vidiny avy amin\'ny loharanon\'angona ampiasaina ankehitriny.';

  @override
  String get sectionStatements => 'Tatitra ara-bola (isan-taona)';

  @override
  String get labelFiscalYear => 'Taom-piasana';

  @override
  String get labelRevenue => 'Vola miditra';

  @override
  String get labelNetIncome => 'Tombony madio';

  @override
  String get labelTotalAssets => 'Fitambaran\'ny fananana';

  @override
  String get labelTotalLiabilities => 'Fitambaran\'ny trosa';

  @override
  String get labelEquity => 'Renivolan\'ny tompon\'anjara';

  @override
  String get labelOperatingCashFlow => 'Fikorianam-bola avy amin\'ny asa';

  @override
  String get statementsUnavailable =>
      'Tsy misy tatitra ara-bola navoaka ho an\'ity aksiona ity.';

  @override
  String get launchAtLogin => 'Sokafy ho azy rehefa miditra';

  @override
  String get hotkeyLabel => 'Hitsin-dalana ankapobeny';

  @override
  String get hotkeyRecordHint =>
      'Tsindrio eto, dia tsindrio ny fitambarana kitendry vaovao';

  @override
  String get hotkeyReset => 'Avereno amin\'ny voalohany';

  @override
  String get pasteImage => 'Apetaho ny sary nadika';

  @override
  String get errClipboardNoImage => 'Tsy misy sary nadika.';

  @override
  String get favorites => 'Ankafizina';

  @override
  String get addToFavorites => 'Ampio amin\'ny ankafizina';

  @override
  String get removeFromFavorites => 'Esory amin\'ny ankafizina';

  @override
  String get noFavorites =>
      'Mbola tsy misy ankafizina. Tsindrio ny kintana eo amin\'ny aksiona iray mba hanampiana azy.';

  @override
  String get displayCurrency => 'Vola aseho';

  @override
  String get displayCurrencyNone => 'Ny volan\'ny aksiona ihany';

  @override
  String labelConverted(String currency) {
    return '≈ amin\'ny $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Sandam-bola: 1 $from = $rate $to (BCE, $date)';
  }

  @override
  String get updates => 'Fanavaozana';

  @override
  String currentVersion(String version) {
    return 'Versiona $version';
  }

  @override
  String get autoUpdate => 'Apetraho ho azy ny fanavaozana';

  @override
  String get checkForUpdates => 'Jereo raha misy fanavaozana';

  @override
  String get updateChecking => 'Mijery raha misy fanavaozana…';

  @override
  String get updateUpToDate => 'Efa mampiasa ny versiona farany ianao.';

  @override
  String updateAvailable(String version) {
    return 'Misy ny versiona $version.';
  }

  @override
  String get updateDownloading => 'Maka ny fanavaozana ao ambadika…';

  @override
  String get updateDownloaded =>
      'Vonona ny fanavaozana. Avereno alefa mba hametrahana azy.';

  @override
  String get updateNow => 'Havaozy';

  @override
  String get restartNow => 'Avereno alefa';

  @override
  String get updatesViaStore =>
      'Tonga ho azy amin\'ny alalan\'ny fivarotana fampiharana ny fanavaozana.';

  @override
  String get updateCheckFailed => 'Tsy afaka nijery fanavaozana.';

  @override
  String get subscription => 'Famandrihana';

  @override
  String get planTrial => 'Fanandramana';

  @override
  String get planNormal => 'Mahazatra';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Tsy misy tolotra mavitrika';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count fandalinana isam-bolana';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$days andro fanandramana maimaim-poana miaraka amin\'ny $count fandalinana';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days andro sisa amin\'ny fanandramana',
      one: '$days andro sisa amin\'ny fanandramana',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Tapitra ny fanandramana maimaim-poana. Misafidiana tolotra mba hanohizana ny fandalinana.';

  @override
  String analysesRemaining(int remaining, int total) {
    return '$remaining amin\'ny $total fandalinana no sisa amin\'ity vanim-potoana ity';
  }

  @override
  String extraCredits(int count) {
    return '$count fandalinana fanampiny';
  }

  @override
  String renewsOn(String date) {
    return 'Havaozina amin\'ny $date';
  }

  @override
  String get choosePlan => 'Misafidiana tolotra';

  @override
  String get currentPlan => 'Tolotra ankehitriny';

  @override
  String get subscribe => 'Hanao famandrihana';

  @override
  String get perMonth => '/ volana';

  @override
  String get extraPacksTitle =>
      'Mila bebe kokoa? Mividiana fandalinana fanampiny';

  @override
  String get extraPacksHint =>
      'Tsy lany daty mihitsy ny fandalinana fanampiny ary ampiasaina rehefa lany ny anjaranao isam-bolana.';

  @override
  String get buy => 'Vidio';

  @override
  String get restorePurchases => 'Avereno ny fividianana';

  @override
  String get manageSubscription => 'Tantano ny famandrihana';

  @override
  String get purchaseSuccess => 'Misaotra! Mandeha ny fividiananao.';

  @override
  String get purchasePending => 'Miandry ny fividianana…';

  @override
  String get purchaseFailed => 'Tsy vita ny fividianana.';

  @override
  String get purchaseCanceled => 'Nofoanana ny fividianana.';

  @override
  String get billingUnavailable =>
      'Mbola tsy azo atao amin\'ity sehatra ity ny fividianana. Manaova famandrihana amin\'ny findainao na Mac; handeha amin\'ny fitaovana rehetra ny tolotrao.';

  @override
  String get errQuotaExceeded =>
      'Tsy manana fandalinana sisa ianao amin\'ity vanim-potoana ity. Ambonio ny tolotrao na mividiana fandalinana fanampiny.';

  @override
  String get errTrialExpired =>
      'Tapitra ny fanandramana maimaim-poana. Misafidiana tolotra mba hanohizana.';

  @override
  String get errNoPlan =>
      'Ilaina ny tolotra mavitrika ho an\'ny fandalinana AI.';

  @override
  String get viewPlans => 'Jereo ny tolotra';

  @override
  String get usageTitle => 'Fampiasana';

  @override
  String get demoPurchaseNote =>
      'Fandoavam-bola demo: tsy tena izy ny fividianana amin\'ity sehatra ity.';

  @override
  String get mostPopular => 'Malaza indrindra';

  @override
  String get bestValue => 'Tsara vidy indrindra';

  @override
  String get planFeaturesCommon =>
      'Ao anatin\'ny tolotra rehetra ny famantarana sary, angona mivantana, sarisary, ankafizina ary ny fiteny 120 rehetra. Ho an\'ny fandalinana AI ny anjara.';

  @override
  String get searchLanguages => 'Hikaroka fiteny…';

  @override
  String get noLanguageMatch => 'Tsy misy fiteny mifanaraka.';

  @override
  String get aiSettings => 'Fandalinana AI';

  @override
  String get aiLength => 'Halavany';

  @override
  String get aiDepthBrief => 'Fohy';

  @override
  String get aiDepthStandard => 'Antonony';

  @override
  String get aiDepthDeep => 'Lalina';

  @override
  String get aiDepthBriefDesc => 'Ny tena ilaina, haingana.';

  @override
  String get aiDepthStandardDesc =>
      'Tatitra feno miaraka amin\'ny fizarana rehetra.';

  @override
  String get aiDepthDeepDesc =>
      'Fikarohana an-tranonkala bebe kokoa, fampitahana amin\'ny orinasa mitovy ary antsipiriany lalina kokoa.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Manodidina ny $min–$max teny';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'mampiasa $count fandalinana',
      one: 'mampiasa $count fandalinana',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Haavon\'ny mpamaky';

  @override
  String get aiReaderBeginner => 'Vao manomboka';

  @override
  String get aiReaderExperienced => 'Efa za-draharaha';

  @override
  String get aiReaderBeginnerDesc =>
      'Fiteny tsotra; hazavaina avokoa ny teny teknika rehetra.';

  @override
  String get aiReaderExperiencedDesc =>
      'Lahatsoratra matevina kokoa misy teny ara-bola mahazatra.';

  @override
  String get aiCounterArgument => 'Hevitra manohitra matanjaka indrindra';

  @override
  String get aiCounterArgumentDesc =>
      'Mifarana foana ny famintinana amin\'ny hevitra tsara indrindra manohitra ny fehin-keviny.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Fikarohana an-tranonkala hatramin\'ny $count isaky ny fandalinana amin\'ny tolotrao',
      one:
          'Fikarohana an-tranonkala hatramin\'ny $count isaky ny fandalinana amin\'ny tolotrao',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Halavany antonony isaky ny tolotra: Mahazatra $normal, Pro $pro, Max $max, Ultra $ultra. Latsaka 2 ny Fohy, mihoatra 2 ny Lalina.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'fikarohana an-tranonkala hatramin\'ny $count',
      one: 'fikarohana an-tranonkala hatramin\'ny $count',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fikarohana an-tranonkala isaky ny fandalinana',
      one: '$count fikarohana an-tranonkala isaky ny fandalinana',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Mila $needed fandalinana ity halavany ity, nefa $left sisa ihany no anananao. Misafidiana halavany fohy kokoa ao amin\'ny Fikirakirana na makà fandalinana fanampiny.';
  }

  @override
  String get outlookMarketMood => 'Toe-tsain\'ny tsena';

  @override
  String get moodVeryPessimistic => 'Tena tsy manantena';

  @override
  String get moodPessimistic => 'Tsy manantena';

  @override
  String get moodNeutral => 'Tsy miandany';

  @override
  String get moodOptimistic => 'Manantena';

  @override
  String get moodVeryOptimistic => 'Tena manantena';

  @override
  String get scenarioBull => 'Toe-javatra miakatra';

  @override
  String get scenarioBase => 'Toe-javatra fototra';

  @override
  String get scenarioBear => 'Toe-javatra midina';

  @override
  String outlookCurrentPrice(String price) {
    return 'Vidiny ankehitriny: $price';
  }

  @override
  String get outlookKeyLevels => 'Haavo manan-danja';

  @override
  String get keyLevelSupport => 'Fanohanana';

  @override
  String get keyLevelResistance => 'Fanoherana';

  @override
  String get keyLevelAnchor => 'Vatofantsika';

  @override
  String get upcomingEvents => 'Hetsika ho avy';

  @override
  String get outlookChartNote =>
      'Elanelana tombana fotsiny; tombantombana ny mety hitrangan\'ny zavatra, fa tsy faminaniana.';

  @override
  String get accountTitle => 'Kaonty';

  @override
  String get signIn => 'Hiditra';

  @override
  String get signOut => 'Hivoaka';

  @override
  String get notSignedIn => 'Tsy tafiditra';

  @override
  String get accountBenefit =>
      'Midira mba handeha amin\'ny fitaovanao rehetra ny famandrihanao.';

  @override
  String get accountSyncedNote =>
      'Mitovy amin\'ny fitaovana rehetra ny famandrihanao sy ny fandalinana sisa.';

  @override
  String get signInTitle => 'Hiditra amin\'ny WhatStock';

  @override
  String get emailLabel => 'Adiresy mailaka';

  @override
  String get continueWithEmail => 'Hanohy amin\'ny mailaka';

  @override
  String codeSentTo(String email) {
    return 'Nandefa kaody 6 isa ho any amin\'ny $email izahay. Manan-kery mandritra ny 10 minitra izy.';
  }

  @override
  String get codeLabel => 'Kaody fidirana';

  @override
  String get resendCode => 'Alefaso kaody vaovao';

  @override
  String get useDifferentEmail => 'Mampiasà mailaka hafa';

  @override
  String get errInvalidCode => 'Diso na lany daty ny kaody.';

  @override
  String get errInvalidEmail => 'Ampidiro adiresy mailaka manan-kery azafady.';

  @override
  String get errSignInFailed =>
      'Tsy nahomby ny fidirana. Hamarino ny fifandraisanao ary andramo indray.';

  @override
  String get checkoutWaiting =>
      'Vitao ao amin\'ny mpitety tranonkalanao ny fandoavam-bola. Havaozina ho azy ny fampiharana rehefa vita.';

  @override
  String get paymentViaStripe =>
      'Fandoavam-bola azo antoka ao amin\'ny mpitety tranonkalanao amin\'ny alalan\'ny Stripe. Azo foanana na oviana na oviana.';

  @override
  String get paymentViaStore =>
      'Aloa amin\'ny alalan\'ny kaontinao App Store na Google Play. Azo foanana na oviana na oviana ao amin\'ny fikirakiran\'ny fivarotana.';

  @override
  String get keySpace => 'Espace';

  @override
  String get doubleOptionTitle => 'Tsindrio indroa ny Option';

  @override
  String get doubleOptionSubtitle =>
      'Miantso ny WhatStock koa ny fanindriana haingana indroa ny kitendry Option.';

  @override
  String get doubleOptionPermission =>
      'Mba handeha amin\'ny fampiharana hafa koa izany, avelao ny WhatStock ao amin\'ny Réglages Système → Confidentialité et sécurité → Surveillance de l’entrée, dia sokafy indray ny fampiharana.';

  @override
  String get openSystemSettings => 'Sokafy ny Réglages Système';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Tsindrio $shortcut na tsindrio indroa ny Option na aiza na aiza mba hiantsoana ny WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Azo inoana indrindra';

  @override
  String get longTermToday => 'Androany';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years taona',
      one: '$years taona',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range isan-taona';
  }

  @override
  String longTermLikely(String price) {
    return 'azo inoana indrindra $price';
  }

  @override
  String get confidenceLow => 'Fahatokisana ambany';

  @override
  String get confidenceMedium => 'Fahatokisana antonony';

  @override
  String get confidenceHigh => 'Fahatokisana avo';

  @override
  String get longTermNote =>
      'Miankina amin\'ny vinavina voalaza ny elanelana maharitra ary mihalehibe arakaraka ny fotoana. Tsy tafiditra ao amin\'ny vidiny ny dividenda. Tombantombana fotsiny, fa tsy faminaniana.';

  @override
  String get portfolio => 'Kitapom-bola';

  @override
  String get portfolioEmpty =>
      'Mbola tsy misy na inona na inona eto. Sokafy ny aksiona iray ary tsindrio ny «Ampio amin\'ny kitapom-bola» mba hanaraha-maso izay anananao.';

  @override
  String get portfolioLocalNote =>
      'Voatahiry amin\'ity fitaovana ity ihany. Novaina araka ny sandam-bola fanondroan\'ny BCE ny fitambarany; mety ho tara ny vidiny.';

  @override
  String get addToPortfolio => 'Ampio amin\'ny kitapom-bola';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Ampio ny $symbol';
  }

  @override
  String get portfolioQuantity => 'Isan\'ny aksiona';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Vidiny isaky ny aksiona ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Daty nividianana';

  @override
  String get portfolioAdd => 'Ampio';

  @override
  String get portfolioInvalidNumber => 'Ampidiro isa mihoatra ny aotra.';

  @override
  String portfolioAdded(String symbol) {
    return 'Tafiditra ao amin\'ny kitapom-bolanao ny $symbol.';
  }

  @override
  String get portfolioTotalValue => 'Fitambaran\'ny sanda';

  @override
  String get portfolioToday => 'Androany';

  @override
  String get portfolioGainLoss => 'Tombony/fatiantoka';

  @override
  String get portfolioInvested => 'Vola napetraka';

  @override
  String get portfolioAllocation => 'Fizarana';

  @override
  String get portfolioPositions => 'Fananana';

  @override
  String portfolioAvgCost(String price) {
    return 'vidiny antonony $price';
  }

  @override
  String get portfolioYourPosition => 'Ny fanananao';

  @override
  String get portfolioPurchases => 'Fividianana';

  @override
  String get portfolioRemove => 'Esory';

  @override
  String get portfolioExcluded =>
      'Tsy tafiditra ao amin\'ny fitambarany ny fananana tsy misy vidiny na sandam-bola.';

  @override
  String get priceAlerts => 'Fanairana vidiny';

  @override
  String get setPriceAlert => 'Mametraha fanairana vidiny';

  @override
  String alertDialogTitle(String symbol) {
    return 'Fanairana vidiny · $symbol';
  }

  @override
  String get alertKindAbove => 'Miakatra mihoatra ny';

  @override
  String get alertKindBelow => 'Midina ambanin\'ny';

  @override
  String get alertKindMove => 'Mihetsika be ao anatin\'ny iray andro';

  @override
  String alertTargetPrice(String currency) {
    return 'Vidiny ($currency)';
  }

  @override
  String get alertMovePercent => 'Fihetsehana isan\'andro (%)';

  @override
  String get alertAlreadyMet => 'Efa nihoatra io haavo io ny vidiny.';

  @override
  String get alertSave => 'Apetraho ny fanairana';

  @override
  String alertCreated(String symbol) {
    return 'Voapetraka ny fanairana ho an\'ny $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Mbola tsy misy fanairana vidiny. Sokafy ny aksiona iray ary tsindrio ny lakolosy mba hametrahana iray.';

  @override
  String get alertsNote =>
      'Hamarinina isaky ny 5 minitra ny fanairana raha mandeha ny WhatStock. Amin\'ny solosaina dia mijanona mandeha ao amin\'ny bara menio na tray izy; amin\'ny finday kosa, amin\'izao fotoana izao dia tonga ihany ny fanairana raha misokatra ny fampiharana.';

  @override
  String alertDescAbove(String price) {
    return 'Ambonin\'ny $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Ambanin\'ny $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Fihetsehana isan\'andro ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Nipoitra tamin\'ny $date tamin\'ny $price';
  }

  @override
  String get alertRearm => 'Ampandehano indray';

  @override
  String get alertDelete => 'Fafao';

  @override
  String alertHitAbove(String symbol, String price) {
    return 'Niakatra ambonin\'ny $price ny $symbol';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return 'Nidina ambanin\'ny $price ny $symbol';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return 'Nihetsika $percent androany ny $symbol';
  }

  @override
  String alertHitBody(String price) {
    return 'Vidiny ankehitriny: $price';
  }

  @override
  String get alertOpen => 'Sokafy';

  @override
  String get keepInTrayTitle =>
      'Mijanona mandeha rehefa mikatona ny varavarankely';

  @override
  String get keepInTraySubtitle =>
      'Mijanona ao amin\'ny bara menio na tray ny WhatStock, ka mbola mandeha ny hitsin-dalana sy ny fanairana vidiny.';

  @override
  String get termsOfUse => 'Fepetra fampiasana';

  @override
  String get privacyPolicy => 'Politikan\'ny fiainana manokana';

  @override
  String get subscriptionLegal =>
      'Havaozina ho azy isam-bolana ny famandrihana mandra-pahafoananao azy. Amin\'ny fanaovana famandrihana dia manaiky ny Fepetra fampiasana sy ny Politikan\'ny fiainana manokana ianao.';

  @override
  String get deleteAccount => 'Fafao ny kaonty';

  @override
  String get deleteAccountTitle => 'Hofafana ve ny kaontinao?';

  @override
  String get deleteAccountBody =>
      'Ho voafafa tanteraka ny kaontinao sy izay rehetra voatahiry ao amin\'ny mpizara anay (mailaka, anjara, fampiasana), ary ho very ny fandalinana tsy nampiasaina. Foanana avy hatrany ny famandrihana naloa tao amin\'ny mpitety tranonkala; ny famandrihana App Store na Google Play kosa dia tsy maintsy foanana ao amin\'ny fikirakiran\'ny fivarotana.';

  @override
  String get deleteLocalData =>
      'Fafao koa ny angona ao amin\'ity fitaovana ity (kitapom-bola, fanairana, ankafizina, tantara, fandalinana voatahiry)';

  @override
  String get deleteAccountConfirm => 'Fafao tanteraka';

  @override
  String get accountDeleted => 'Voafafa ny kaontinao.';

  @override
  String get errDeleteAccount =>
      'Tsy voafafa ny kaonty. Hamarino ny fifandraisanao ary andramo indray.';

  @override
  String get aiTrialBriefNote =>
      'Fohy ny fandalinana mandritra ny fanandramana ary atao amin\'ny modely AI haingana kokoa. Miaraka amin\'ny tolotra, mahazo ny AI matanjaka indrindra ananay ianao, fikarohana an-tranonkala bebe kokoa ary ny halavany Antonony sy Lalina.';

  @override
  String get billingMonthly => 'Isam-bolana';

  @override
  String get billingYearly => 'Isan-taona';

  @override
  String get yearlyDiscount => '2 volana maimaim-poana';

  @override
  String get perYear => '/ taona';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price isam-bolana';
  }

  @override
  String get subscriptionLegalYearly =>
      'Havaozina ho azy isan-taona ny famandrihana mandra-pahafoananao azy. Amin\'ny fanaovana famandrihana dia manaiky ny Fepetra fampiasana sy ny Politikan\'ny fiainana manokana ianao.';

  @override
  String get myAnalyses => 'Ny fandalinako';

  @override
  String get navAlerts => 'Fanairana';

  @override
  String get inviteTitle => 'Fijery mialoha mihidy';

  @override
  String get inviteBody =>
      'Amin\'ny fanasana ihany no azo ampiasana ny WhatStock amin\'izao fotoana izao. Ampidiro ny kaody fanasana noraisinao.';

  @override
  String get inviteCodeLabel => 'Kaody fanasana';

  @override
  String get inviteContinue => 'Tohizana';

  @override
  String get inviteInvalid => 'Tsy manan-kery io kaody fanasana io.';

  @override
  String get inviteExpired =>
      'Lany daty io fanasana io. Angataho kaody vaovao ilay nanasa anao.';

  @override
  String get inviteDeviceLimit =>
      'Efa ampiasaina amin\'ny isan\'ny fitaovana farafahabetsany io kaody fanasana io.';

  @override
  String get previewConfidential => 'Fijery mialoha tsiambaratelo';

  @override
  String get errPreviewDailyLimit =>
      'Tratra ny fetran\'ny fanadihadiana androany amin\'ity fijery mialoha ity. Andramo indray rahampitso.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ora lasa izay',
      one: '1 ora lasa izay',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count andro lasa izay',
      one: '1 andro lasa izay',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Havaozina ve ity fandalinana ity?';

  @override
  String staleBody(String age) {
    return 'Natao $age ity. Mety efa niova ny vidiny, ny vaovao ary ny vokatra hatramin\'izay.';
  }

  @override
  String get staleKeep => 'Asehoy ilay teo aloha';

  @override
  String get staleRefresh => 'Mamorona vaovao';

  @override
  String seeAll(int count) {
    return 'Jereo daholo ($count)';
  }

  @override
  String get searchAnalyses => 'Hikaroka ao amin\'ny fandalinanao';

  @override
  String get deleteAnalysis => 'Fafao';

  @override
  String analysisDeleted(String symbol) {
    return 'Voafafa ny fandalinana $symbol';
  }

  @override
  String get keyLevelAlertHint =>
      'Tsindrio ny haavo iray mba handraisana fanairana rehefa tonga eo ny vidiny.';

  @override
  String get shareAnalysisTitle => 'Hizarao ny fandalinana';

  @override
  String get shareAsImage => 'Hizarao ho sary';

  @override
  String get shareAsText => 'Hizarao ho soratra';

  @override
  String get shareCardFooter => 'Natao tamin\'ny WhatStock';

  @override
  String get shareCardDisclaimer =>
      'Fandalinana AI · tsy torohevitra momba ny fampiasam-bola';

  @override
  String get referralTitle => 'Asao ny namanao';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fandalinana fanampiny',
      one: '1 fandalinana fanampiny',
    );
    return 'Zarao ny kaodinao. Mahazo $_temp0 avy hatrany ny namanao, ary mahazo toy izany koa ianao aorian\'ny fandalinany voalohany.';
  }

  @override
  String get referralYourCode => 'Ny kaodinao';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Nasaina: $invited · Nahazo valisoa: $rewarded';
  }

  @override
  String get referralHaveCode => 'Manana kaody avy amin\'ny namana ve ianao?';

  @override
  String get referralRedeem => 'Ampiasao';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nampiana $count fandalinana fanampiny. Tongasoa!',
      one: 'Nampiana 1 fandalinana fanampiny. Tongasoa!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Tsy misy io kaody io. Hamarino ary andramo indray.';

  @override
  String get referralErrOwn => 'Tsy azonao ampiasaina ny kaodinao manokana.';

  @override
  String get referralErrAlready => 'Efa nampiasa kaodin\'ny namana ianao.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fandalinana fanampiny',
      one: '1 fandalinana fanampiny',
    );
    return 'Mandalina aksiona amin\'ny WhatStock aho: makà sary aksiona dia hazavain\'ny AI izany. Amin\'ny kaodiko $code dia mahazo $_temp0 ianao.';
  }

  @override
  String get referralCopied => 'Voadika ny kaody';

  @override
  String get onboardTitle1 => 'Makà sarin\'ny aksiona iray';

  @override
  String get onboardBody1 =>
      'Ampy ny efijerin\'ny fampiharana broker, gazety na logon\'ny orinasa: fantatr\'i WhatStock ilay aksiona ary asehony anao ny vidiny, ny kisariny ary ny tarehimarika fototra.';

  @override
  String get onboardTitle2 => 'Azonao ao anatin\'ny minitra vitsy';

  @override
  String get onboardBody2 =>
      'Ny Fandalinana AI dia manazava izay mampihetsika ny aksiona, ny loza mety hitranga, ny sandany ary toe-javatra telo momba ny mety halehan\'ny vidiny – miaraka amin\'ny loharano sy amin\'ny fiteninao.';

  @override
  String get onboardTitle3 => 'Fantaro foana ny vaovao';

  @override
  String get onboardBody3 =>
      'Ny ankafizina, ny kitapom-bolanao ary ny fanairana vidiny no mampahafantatra anao ny vaovao. Mijanona ao amin\'ny fitaovanao ny fandalinanao, vonona hosokafana indray.';

  @override
  String get onboardNext => 'Manaraka';

  @override
  String get onboardStart => 'Andao hanomboka';

  @override
  String get onboardSkip => 'Dinganina';

  @override
  String changesTitle(String date) {
    return 'Hatramin\'ny fandalinana teo aloha ($date)';
  }

  @override
  String get changesPrice => 'Vidiny';

  @override
  String get changesNoMajor => 'Tsy dia niova loatra ny vinavina.';

  @override
  String get changesPreviousSummary => 'Famintinana teo aloha';

  @override
  String get telemetryTitle => 'Ampio hanatsara ny WhatStock';

  @override
  String get telemetryBody =>
      'Zarao ny antontan\'isa momba ny fampiasana sy ny tatitra momba ny fianjerana, tsy misy anarana: ireo endri-javatra ampiasaina sy izay tsy nandeha tsara. Tsy zaraina mihitsy ny anjara-tahirinao, ny fandalinanao na ny angon-drakitrao manokana. Azonao ovaina amin\'ny fotoana rehetra ao amin\'ny Fikirakirana izany.';

  @override
  String get telemetryAllow => 'Avelao';

  @override
  String get telemetryDecline => 'Tsia, misaotra';

  @override
  String get telemetrySetting =>
      'Antontan\'isa tsy misy anarana sy tatitra momba ny fianjerana';

  @override
  String get telemetrySettingHint =>
      'Impiry no ampiasaina ireo endri-javatra sy tatitra momba ny hadisoana, tsy misy angon-drakitra manokana na ny votoatin\'ny fikarohana sy fandalinanao.';

  @override
  String get askButton => 'Manontania momba ity fandalinana ity';

  @override
  String askTitle(String symbol) {
    return 'Fanontaniana momba ny $symbol';
  }

  @override
  String get askIntro =>
      'Anontanio izay rehetra tianao momba ny fandalinana: ny dikan\'ny atahorana iray, izay mety hanova ny vinavina, ny nahazoana isa iray. Miorina amin\'ity fandalinana ity ny valiny ary tsy torohevitra momba ny fampiasam-bola.';

  @override
  String get askHint => 'Mametraha fanontaniana…';

  @override
  String get askSend => 'Alefa';

  @override
  String get askThinking => 'Mieritreritra…';

  @override
  String get askSuggest1 => 'Inona no atahorana lehibe indrindra?';

  @override
  String get askSuggest2 => 'Inona no mety hanova ny vinavina?';

  @override
  String get askSuggest3 => 'Hazavao amin\'ny teny tsotra';

  @override
  String get askMaxReached =>
      'Io no fanontaniana farany ho an\'ity fandalinana ity. Mamorona fandalinana vaovao raha te hanontany bebe kokoa.';

  @override
  String get errAskLimit =>
      'Tratra ny fetran\'ny fanontaniana androany. Andramo indray rahampitso.';

  @override
  String get eventTomorrow => 'Rahampitso';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'afaka $days andro',
      one: 'afaka 1 andro',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Vokatra isan-telovolana';

  @override
  String get eventBeforeOpen => 'alohan\'ny fisokafan\'ny tsena';

  @override
  String get eventAfterClose => 'aorian\'ny fikatonan\'ny tsena';

  @override
  String eventEpsEstimate(String value) {
    return 'Tombana EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Avy amin\'ny fandalinanao';

  @override
  String get eventsHint =>
      'Ny daty famoahana vokatra ho an\'ny ankafizinao sy ny anjara ao amin\'ny kitapom-bolanao ao anatin\'ny 90 andro ho avy, ary ireo hetsika misy daty nomarihan\'ny fandalinanao.';

  @override
  String get eventsEmpty =>
      'Tsy misy hetsika misy daty ao anatin\'ny 90 andro ho avy. Ampio ankafizina na anjara ao amin\'ny kitapom-bolanao mba hahitanao eto ny daty famoahana ny vokatr\'izy ireo.';

  @override
  String get compareTitle => 'Fampitahana';

  @override
  String get compareAdd => 'Ampio aksiona';

  @override
  String get compareRemove => 'Esory';

  @override
  String get compareTickerHint => 'Ticker, ohatra MSFT';

  @override
  String get compareHint =>
      'Ireo tarehimarika fototra mifanila; asongadina ny sanda tsara indrindra isaky ny andalana. Ny vola dia amin\'ny vola ampiasain\'ny aksiona tsirairay.';

  @override
  String get compareNoAnalysis => 'Mbola tsy misy fandalinana';

  @override
  String get portfolioDividends => 'Dividenda isan-taona';

  @override
  String portfolioDividendYield(String percent) {
    return 'Tahany $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Ny dividenda andrasana isan-taona dia mifototra amin\'ny dividenda naloa tao anatin\'ny 12 volana farany; tsy azo antoka ny fandoavana ho avy.';

  @override
  String positionDividend(String amount) {
    return 'Dividenda: $amount isan-taona';
  }

  @override
  String get chartAvgCost => 'Ny antoninao';

  @override
  String get chartAlertLevel => 'Fanairana';

  @override
  String get marketsToday => 'Tsena androany';

  @override
  String get notesTitle => 'Ny naotiko';

  @override
  String get notesHint =>
      'Nahoana ianao no nividy azy, inona no arahinao maso, inona no hampivarotra anao azy?';

  @override
  String get notesInfo =>
      'Voatahiry amin\'ity fitaovana ity ihany. Raisin\'ny fandalinana AI an-tsaina ny naotinao.';

  @override
  String notesSaved(String date) {
    return 'Voatahiry $date';
  }

  @override
  String get peersTitle => 'Orinasa mitovy';

  @override
  String get portfolioExport => 'Avoahy ho CSV';

  @override
  String get portfolioImport => 'Ampidiro avy amin\'ny CSV';

  @override
  String get portfolioImportHint =>
      'Apetaho fividianana iray isaky ny andalana: ticker, isa, vidiny, vola, daty (YYYY-MM-DD). Azo saraina amin\'ny faingo, teboka misy faingo na tabulation ny tsanganana; tsy voatery ny andalana lohateny.';

  @override
  String get portfolioImportButton => 'Ampidiro';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nampiana fividianana $count',
      one: 'Nampiana fividianana 1',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nadingana andalana $count',
      one: 'Nadingana andalana 1',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Ampifanarahina amin\'ny fitaovanao rehetra ny kitapom-bola, ny ankafizina, ny fanairana vidiny ary ny naoty.';

  @override
  String syncLast(String time) {
    return 'Fampifanarahana farany: $time';
  }

  @override
  String get syncNow => 'Ampifanaraho izao';

  @override
  String get syncFailed =>
      'Tsy nahomby ny fampifanarahana. Hiezaka indray ho azy izy.';

  @override
  String get alertEmailTitle => 'Mailaka rehefa mipoitra ny fanairana';

  @override
  String get alertEmailOn =>
      'Hamarininay isaky ny minitra vitsivitsy ny fanairanao ary handefasanay mailaka ianao, na dia mihidy aza ny fampiharana.';

  @override
  String get alertEmailSignIn =>
      'Midira amin\'ny mailakao ao amin\'ny Fikirakirana mba hahazoana fanairana amin\'ny mailaka, na dia mihidy aza ny fampiharana.';

  @override
  String get portfolioHistory => 'Fivoaran\'ny sanda';

  @override
  String get portfolioReviewTitle => 'Fandalinana ny kitapom-bola amin\'ny AI';

  @override
  String get portfolioReviewIntro =>
      'Jeren\'ny AI manontolo ny kitapom-bolanao: ny fifantohana, ny fiankinana amin\'ny sehatra sy ny vola, ny loza iraisan\'ny petrabolanao, ary ny tombom-barotra zaraina. Mampiasa 1 fandalinana.';

  @override
  String get portfolioReviewButton => 'Dinihina ny kitapom-bolako';

  @override
  String get portfolioReviewAgain => 'Dinihina indray';

  @override
  String get portfolioReviewWorking => 'Dinihina ny kitapom-bolanao…';

  @override
  String get digestTitle => 'Famintinana isan-kerinandro amin\'ny mailaka';

  @override
  String get digestHint =>
      'Isaky ny alatsinainy: ny fivoaran\'ny ankafizinao sy ny kitapom-bolanao tamin\'ny herinandro lasa, ary ny daty hivoahan\'ny vokatra manaraka.';

  @override
  String get benchmarkTitle => 'Ampitahaina amin\'ny S&P 500';

  @override
  String get benchmarkYours => 'Ny novidinao';

  @override
  String get benchmarkIndex => 'Vola mitovy amin\'ny S&P 500';

  @override
  String benchmarkAhead(String points) {
    return 'Mihoatra ny index $points isa isan-jato';
  }

  @override
  String benchmarkBehind(String points) {
    return 'Ambany noho ny index $points isa isan-jato';
  }

  @override
  String get benchmarkHint =>
      'Toy ny hoe napetraka tao amin\'ny tahirim-bola index S&P 500 tamin\'io andro io ihany ny vidin\'ny fividianana tsirairay. Tsy tafiditra ny dividende; ny tombony taloha tsy maminavina ny ho avy.';

  @override
  String get portfolioSell => 'Amidy';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Amidy ny $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Vidim-pivarotana isaky ny aksiona ($currency)';
  }

  @override
  String get portfolioSellDate => 'Daty nivarotana';

  @override
  String get portfolioSellAll => 'Rehetra';

  @override
  String portfolioSellTooMany(String quantity) {
    return '$quantity no anananao';
  }

  @override
  String get portfolioSold => 'Namidy';

  @override
  String get portfolioRealized => 'Tena azo';

  @override
  String get portfolioClosed => 'Fananana efa namidy';

  @override
  String get portfolioClosedNote => 'Efa namidy ny aksiona rehetra';

  @override
  String get portfolioTransactions => 'Fividianana sy fivarotana';

  @override
  String get portfolioRealizedByYear => 'Tombony tena azo isan-taona';

  @override
  String get portfolioRealizedHint =>
      'Ampifandraisina amin\'ny fividiananao tranainy indrindra aloha ny fivarotana (FIFO), novaina araka ny sandam-bola androany. Ho an\'ny fanambaranao hetra, ampiasao ny tatitra avy amin\'ny broker-nao.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Nisy vokatra telovolana vaovao navoaka taorian\'ity fanadihadiana ity ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Vokatra vaovao';

  @override
  String get portfolioImportBrokers =>
      'Fantatra ihany koa ny fanondranana avy amin\'ny Revolut, Trading 212 ary Interactive Brokers, miaraka amin\'ny varotra; dinganina ny dividenda sy ny petrabola.';

  @override
  String get portfolioImportFile => 'Mifidiana rakitra';

  @override
  String offlineBanner(String time) {
    return 'Tsy misy fifandraisana – aseho ny angona voatahiry farany ($time).';
  }

  @override
  String get glossMarketCap =>
      'Ny vidin\'ny orinasa manontolo eny an-tsena: vidin\'ny aksiona × isan\'ny aksiona.';

  @override
  String get glossSharesOutstanding =>
      'Firy ny aksiona navoakan\'ny orinasa. Raha mitombo izany dia kely kokoa ny anjaran\'ny aksiona tsirairay; ny fividianana indray ny aksiona no mampihena azy.';

  @override
  String get glossPeTrailing =>
      'Vidiny ÷ tombony isaky ny aksiona tamin\'ny 12 volana farany: firy taona amin\'ny tombony ankehitriny no aloanao. Ny ambany kokoa no mora kokoa, saingy matetika avo ny P/E an\'ireo orinasa mitombo haingana.';

  @override
  String get glossPeForward =>
      'Toy ny P/E, saingy amin\'ny tombony andrasan\'ny mpandinika ho an\'ny 12 volana ho avy. Raha ambanin\'ny P/E (lasa) izy dia andrasana hitombo ny tombony.';

  @override
  String get glossPb =>
      'Vidiny ÷ sanda ara-kaonty (fananana esorina ny trosa) isaky ny aksiona. Manodidina ny 1 dia midika fa omen\'ny tsena ny sandan\'izay ananany amin\'ny taratasy ny orinasa.';

  @override
  String get glossPs =>
      'Sanda an-tsena ÷ vola miditra isan-taona. Mahasoa ho an\'ny orinasa mbola kely na tsy misy tombony; ampitahao ao anatin\'ny sehatra iray ihany.';

  @override
  String get glossEvToFcf =>
      'Sandan\'ny orinasa miaraka amin\'ny trosa (EV) ÷ ny vola azony ao anatin\'ny herintaona aorian\'ny fampiasam-bola. Ny ambany kokoa dia midika fa mahazo vola bebe kokoa ianao amin\'ny vidiny.';

  @override
  String get glossPeg =>
      'P/E ÷ fitomboan\'ny tombony andrasana isan-taona (%). Manodidina ny 1 matetika no heverina ho ara-drariny; ampitahainy amin\'ny fitomboana ny P/E.';

  @override
  String get glossEps =>
      'Tombony isaky ny aksiona tamin\'ny 12 volana farany. Ny EPS mitombo isan-taona dia iray amin\'ireo famantarana matanjaka indrindra ny orinasa salama.';

  @override
  String get glossBeta =>
      'Hatraiza no mihetsika miaraka amin\'ny tsena ny aksiona: 1 = toy ny tsena, 1,5 = fiovaovana lehibe kokoa eo amin\'ny 50%, ambanin\'ny 1 = milamina kokoa.';

  @override
  String get glossRevenueTtm =>
      'Ny varotra rehetra tamin\'ny 12 volana farany, alohan\'ny fandaniana rehetra.';

  @override
  String get glossNetIncomeTtm =>
      'Ny tombony sisa tavela aorian\'ny fandaniana, zanabola ary hetra rehetra tamin\'ny 12 volana farany.';

  @override
  String get glossGrossMargin =>
      'Ny ampahany amin\'ny vola miditra tavela aorian\'ny vidin\'ny vokatra mivantana. Ny taha avo matetika dia midika fahefana hamaritra ny vidiny.';

  @override
  String get glossOperatingMargin =>
      'Ny ampahany amin\'ny vola miditra tavela aorian\'ny fampandehanana ny orinasa (karama, hofan-trano, varotra), alohan\'ny zanabola sy hetra.';

  @override
  String get glossNetMargin =>
      'Ny ampahany amin\'ny vola miditra lasa tombony farany. 20% dia midika fa tombony ny 20 amin\'ny 100 rehetra amidy.';

  @override
  String get glossRoe =>
      'Tombony amin\'ny renivola: tombony isan-taona ÷ renivolan\'ny tompony. Asehony ny fahaizan\'ny mpitantana mampiasa ny volan\'ny tompon\'aksiona; matanjaka raha mihoatra ny 15% eo ho eo.';

  @override
  String get glossRoa =>
      'Tombony amin\'ny fananana: tombony isan-taona ÷ ny fananan\'ny orinasa rehetra. Ampitahao ao anatin\'ny sehatra iray ihany.';

  @override
  String get glossDebtToEquity =>
      'Trosa ÷ renivolan\'ny tompony. Ny avo kokoa dia midika vola nindramina bebe kokoa: risika lehibe kokoa rehefa miakatra ny zanabola na miadana ny asa.';

  @override
  String get glossCurrentRatio =>
      'Fananana fohy fotoana ÷ faktiora tokony haloa ao anatin\'ny herintaona. Mihoatra ny 1 dia midika fa afaka mandoa ny faktiorany akaiky ny orinasa.';

  @override
  String get glossRevenueGrowth =>
      'Hatraiza no nitomboan\'ny vola miditra raha oharina tamin\'ny herintaona.';

  @override
  String get glossEpsGrowth =>
      'Hatraiza no nitomboan\'ny tombony isaky ny aksiona raha oharina tamin\'ny herintaona.';

  @override
  String get glossDividendYield =>
      'Dividenda isan-taona ÷ vidin\'ny aksiona: ny vola azonao isan-taona, amin\'ny isan-jaton\'izay aloanao.';

  @override
  String get glossDividendPerShare =>
      'Ny dividenda naloa isaky ny aksiona tamin\'ny herintaona farany.';

  @override
  String get glossPayoutRatio =>
      'Ny ampahany amin\'ny tombony zaraina ho dividenda. Mihoatra ny 100% dia mandoa mihoatra noho izay azony ny orinasa, ary tsy maharitra matetika izany.';

  @override
  String get glossTitle => 'Inona no dikany?';

  @override
  String get watchNewsTitle => 'Vaovao momba ny aksionanao';

  @override
  String get undo => 'Averina';

  @override
  String get watchSort => 'Alahatra';

  @override
  String get watchSortOwn => 'Ny filaharako';

  @override
  String get watchSortGainers => 'Ny niakatra indrindra aloha';

  @override
  String get watchSortLosers => 'Ny nidina indrindra aloha';

  @override
  String get watchSortName => 'Araka ny ticker (A–Z)';

  @override
  String get watchHint =>
      'Sintony ny tahony mba handaminana indray, ampitsoaho miankavia mba hanesorana. Ny tsipika dia mampiseho ny 30 andro farany.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: vonona ny famakafakanao.';
  }

  @override
  String alertFromCost(String price) {
    return 'Araka ny vidiny antonony nividiananao ($price):';
  }

  @override
  String get briefTitle => 'Anio miaraka amin’ny lozamanao';

  @override
  String get briefButton => 'Fintino ny anio';

  @override
  String get briefHint =>
      'Famintinana fohy amin’ny AI ny fihetsiky ny portefeuille sy ny tianao anio ary izay lazain’ny vaovao farany momba azy ireo. Tsy mampiasa famakafakana.';

  @override
  String get briefRefresh => 'Havaozina';

  @override
  String get sectionEarnings => 'Vokatra isan-telovolana';

  @override
  String earningsNext(String date) {
    return 'Tatitra manaraka: $date';
  }

  @override
  String get earningsExpected => 'EPS notombanana';

  @override
  String get earningsReported => 'EPS navoaka';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Nahatratra na nihoatra ny EPS notombanana tamin\'ny telovolana $beats amin\'ireo $total farany',
      one:
          'Nahatratra na nihoatra ny EPS notombanana tamin\'ny telovolana $beats amin\'ny 1',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol: vokatra isan-telovolana rahampitso';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol: vokatra isan-telovolana anio';
  }

  @override
  String get earningsRemindersTitle => 'Fampahatsiahivana vokatra';

  @override
  String get earningsRemindersSubtitle =>
      'Fampandrenesana iray andro alohan\'ny hamoahan\'ny ankafizinao na ny tahiry ao amin\'ny portfolio-nao ny vokatra isan-telovolana';

  @override
  String addAllToFavorites(int count) {
    return 'Ampio daholo amin\'ny ankafizina ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Ampidiro avy amin\'ny sary efijery';

  @override
  String get holdingsReading => 'Mamaky ny fanananao…';

  @override
  String get holdingsReviewTitle => 'Fananana hita';

  @override
  String get holdingsReviewHint =>
      'Hamarino ny isa alohan\'ny hampidiranao azy. Ny vidiny dia ny salan\'ny vidin\'ny fividiananao isaky ny anjara, fa tsy ny vidiny androany.';

  @override
  String get holdingsNoPrice =>
      'Tsy misy salan\'ny vidin\'ny fividianana ao amin\'ny sary';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ampio fananana $count',
      one: 'Ampio fananana 1',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Tsy nisy fananana anjara hita tamin\'ity sary ity. Andramo ny sary efijery amin\'ny pejin\'ny fanananao ao amin\'ny broker-nao.';

  @override
  String get week52Range => 'Elanelana tao anatin\'ny 52 herinandro';

  @override
  String week52BelowHigh(String percent) {
    return '$percent ambanin\'ny avo indrindra tao anatin\'ny 52 herinandro';
  }

  @override
  String get week52AtHigh =>
      'Amin\'ny avo indrindra tao anatin\'ny 52 herinandro';

  @override
  String get alertKindTrailing => 'Midina avy amin\'ny tampony';

  @override
  String get alertTrailingPercent => 'Fidinana avy amin\'ny tampony (%)';

  @override
  String get alertTrailingHint =>
      'Manaraka ny vidiny miakatra: maneno raha midina toy izao ny vidiny avy amin\'ny ambony indrindra hatramin\'ny nametrahanao azy.';

  @override
  String alertDescTrailing(String percent) {
    return 'Fidinana $percent avy amin\'ny tampony';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'tampony hatreto: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return 'Nidina $percent avy amin\'ny tampony ny $symbol';
  }

  @override
  String get sectionInsiders => 'Varotra nataon\'ny mpitantana';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fividianana',
      one: '1 fividianana',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fivarotana',
      one: '1 fivarotana',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Madio: $shares aksiona';
  }

  @override
  String get insiderBuy => 'Nividy';

  @override
  String get insiderSell => 'Nivarotra';

  @override
  String get insiderHint =>
      'Fividianana sy fivarotana teny an-tsena malalaka nataon\'ny mpitantana sy ny mpikambana ao amin\'ny filan-kevi-pitantanana tao anatin\'ny 90 andro farany (SEC Form 4). Tsy isaina ny fampiasana safidy (option) sy ny aksiona nomena.';

  @override
  String get insiderNone =>
      'Tsy nisy fividianana na fivarotana nataon\'ny mpitantana teny an-tsena malalaka tao anatin\'ny 90 andro farany.';

  @override
  String get analystTrend => 'Ny fiovan\'ny hevitra isam-bolana';

  @override
  String get watchListAll => 'Rehetra';

  @override
  String get watchListNew => 'Lisitra vaovao';

  @override
  String get watchListName => 'Anaran\'ny lisitra';

  @override
  String get watchListRename => 'Ovay ny anaran\'ny lisitra';

  @override
  String get watchListDelete => 'Fafao ny lisitra';

  @override
  String get watchListAddTo => 'Ampio amin\'ny lisitra';

  @override
  String get watchListEmpty =>
      'Mbola tsy misy anjara ato amin\'ity lisitra ity. Tsindrio ny bokotra lisitra eo akaikin\'ny anjara iray mba hanampiana azy.';

  @override
  String get portfolioAskTitle => 'Fanontaniana momba ny kitapom-bolanao';

  @override
  String get rangeYtd => 'Taona izao';

  @override
  String get backupTitle => 'Fitahirizana';

  @override
  String get backupSave => 'Hitahiry fitahirizana';

  @override
  String get backupSaveHint =>
      'Ny ankafizinao, ny lisitrao, ny kitapom-bolanao, ny fanairanao ary ny naotinao ao anaty rakitra iray.';

  @override
  String get backupRestore => 'Hamerina avy amin\'ny fitahirizana';

  @override
  String get backupRestoreHint =>
      'Ampiana izay ao anaty rakitra; tsy misy fafana amin\'izay anananao ankehitriny.';

  @override
  String get backupRestored => 'Naverina ny fitahirizana.';

  @override
  String get backupInvalid => 'Tsy fitahirizana WhatStock ity rakitra ity.';

  @override
  String get allocationPositions => 'Anjara';

  @override
  String get allocationSectors => 'Sehatra';

  @override
  String get allocationCurrencies => 'Vola';

  @override
  String get compareReturn1y => 'Tombony 1 taona';

  @override
  String get compareFromHigh =>
      'Avy amin\'ny avo indrindra tao anatin\'ny 52 herinandro';

  @override
  String get briefAutoTitle => 'Famintinana isan’andro isa-maraina';

  @override
  String get briefAutoSubtitle =>
      'Ny “Anio miaraka amin’ny lozamanao” dia mamorona ho azy aorian’ny 7:00 maraina raha mbola mandeha ny app; amin’ny solosaina, misy fampandrenesana milaza aminao izany. Mampiasa ny fetran’ny fanontanianao isan’andro izy, fa tsy famakafakana.';

  @override
  String get targetsButton => 'Tanjona fizarana';

  @override
  String get targetsTitle => 'Tanjona fizarana';

  @override
  String get targetsHint =>
      'Farito hoe ohatrinona amin\'ny portefeuille no anjaran\'ny saha tsirairay. Avelao ho foana ny saha raha tsy misy tanjona. Asehon\'ny app avy eo izay tokony hovidiana na hamidy.';

  @override
  String targetsSum(String percent) {
    return 'Totaly: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Vidio ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Amidy ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Mifanaraka amin\'ny tanjona';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol: ambony noho ny EPS notombanana';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol: ambany noho ny EPS notombanana';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'EPS navoaka $actual, notombanana $estimate';
  }
}
