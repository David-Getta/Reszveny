// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Xhosa (`xh`).
class AppLocalizationsXh extends AppLocalizations {
  AppLocalizationsXh([String locale = 'xh']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Thatha ifoto yesabelo uze ufunde yonke into ngaso.';

  @override
  String get homeHint =>
      'Isatifikethi sezabelo, isikrini se-app ye-broker, iphephandaba okanye ilogo yenkampani – nantoni na echonga isabelo.';

  @override
  String get takePhoto => 'Thatha ifoto';

  @override
  String get chooseFromGallery => 'Khetha kwigalari';

  @override
  String get chooseImage => 'Khetha umfanekiso';

  @override
  String get enterTickerManually => 'Faka i-ticker ngesandla';

  @override
  String get tickerInputLabel => 'Uphawu lwe-ticker';

  @override
  String get tickerInputHint => 'umz. AAPL';

  @override
  String get lookUp => 'Khangela';

  @override
  String demoModeBanner(String symbols) {
    return 'Imowudi yedemo – akukho sitshixo sedatha yemarike esimiselweyo. Idatha yomzekelo iyafumaneka ku: $symbols.';
  }

  @override
  String get recognizing => 'Ihlalutya umfanekiso…';

  @override
  String get loadingData => 'Ilayisha idatha…';

  @override
  String get noCandidatesTitle => 'Akukho sabelo sichongiweyo';

  @override
  String get noCandidatesBody =>
      'Asikwazanga ukuchonga isabelo kulo mfanekiso. Zama ifoto ecace ngakumbi, okanye ufake i-ticker ngesandla.';

  @override
  String get whatWeSaw => 'Esikubonileyo';

  @override
  String get chooseCandidateTitle => 'Ubuthetha esiphi isabelo?';

  @override
  String confidencePercent(int percent) {
    return 'Ukuqiniseka: $percent%';
  }

  @override
  String get settings => 'Iisetingi';

  @override
  String get language => 'Ulwimi';

  @override
  String get systemLanguage => 'Okumiselweyo kwesistim';

  @override
  String get about => 'Malunga';

  @override
  String get disclaimer =>
      'Le app inika ulwazi kuphela kwaye ayilocebiso lotyalo-mali. Idatha isenokulibaziseka okanye ingachanekanga.';

  @override
  String dataSource(String source) {
    return 'Umthombo wedatha: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Ukuchonga: $source';
  }

  @override
  String get retry => 'Zama kwakhona';

  @override
  String get cancel => 'Rhoxisa';

  @override
  String get ok => 'Kulungile';

  @override
  String get close => 'Vala';

  @override
  String get errorGeneric => 'Kukho into engahambanga kakuhle.';

  @override
  String get errorSectionUnavailable => 'Eli candelo alikwazanga ukulayishwa.';

  @override
  String get notAvailable => 'ayifumaneki';

  @override
  String get sectionIdentity => 'Ukuchongwa';

  @override
  String get sectionPrice => 'Ixabiso';

  @override
  String get sectionValuation => 'Uqikelelo lwexabiso';

  @override
  String get sectionFinancials => 'Iinkcukacha zemali';

  @override
  String get sectionDividend => 'I-dividend';

  @override
  String get sectionProfile => 'Iprofayile yenkampani';

  @override
  String get sectionAnalysts => 'Iingcebiso zabahlalutyi';

  @override
  String get sectionNews => 'Iindaba';

  @override
  String get sectionRecognition => 'Iinkcukacha zokuchonga';

  @override
  String get labelSymbol => 'I-ticker';

  @override
  String get labelExchange => 'Imarike yezabelo';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Imali';

  @override
  String get labelCountry => 'Ilizwe';

  @override
  String get labelIndustry => 'Ishishini';

  @override
  String get labelSector => 'Icandelo';

  @override
  String get labelWebsite => 'Iwebhusayithi';

  @override
  String get labelIpoDate => 'Umhla we-IPO';

  @override
  String get labelMarketCap => 'Ixabiso lemarike';

  @override
  String get labelSharesOutstanding => 'Izabelo ezikhutshiweyo';

  @override
  String get labelEmployees => 'Abasebenzi';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Ikomkhulu';

  @override
  String get labelDescription => 'Inkcazo';

  @override
  String get labelLastPrice => 'Ixabiso lokugqibela';

  @override
  String get labelChange => 'Utshintsho';

  @override
  String get labelOpen => 'Ixabiso lokuvula';

  @override
  String get labelDayHigh => 'Eliphezulu losuku';

  @override
  String get labelDayLow => 'Eliphantsi losuku';

  @override
  String get labelPreviousClose => 'Ixabiso lokuvala langaphambili';

  @override
  String get labelWeek52High => 'Eliphezulu leeveki ezi-52';

  @override
  String get labelWeek52Low => 'Eliphantsi leeveki ezi-52';

  @override
  String get labelAverageVolume10d => 'Umthamo ophakathi (iintsuku ezi-10)';

  @override
  String updatedAt(String time) {
    return 'Kuhlaziywe: $time';
  }

  @override
  String get labelPeTrailing => 'P/E (edlulileyo)';

  @override
  String get labelPeForward => 'P/E (ezayo)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / ukuhamba kwemali ekhululekileyo';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'I-Beta';

  @override
  String get labelRevenueTtm => 'Ingeniso (TTM)';

  @override
  String get labelNetIncomeTtm => 'Inzuzo ecocekileyo (TTM)';

  @override
  String get labelGrossMargin => 'Imajini egrosi';

  @override
  String get labelOperatingMargin => 'Imajini yokusebenza';

  @override
  String get labelNetMargin => 'Imajini ecocekileyo';

  @override
  String get labelRoe => 'Imbuyekezo kwi-equity';

  @override
  String get labelRoa => 'Imbuyekezo kwii-asethi';

  @override
  String get labelDebtToEquity => 'Ityala / i-equity';

  @override
  String get labelCurrentRatio => 'I-current ratio';

  @override
  String get labelRevenueGrowth => 'Ukukhula kwengeniso (YoY)';

  @override
  String get labelEpsGrowth => 'Ukukhula kwe-EPS (YoY)';

  @override
  String get labelDividendYield => 'Isivuno se-dividend';

  @override
  String get labelDividendPerShare => 'I-dividend ngesabelo';

  @override
  String get labelPayoutRatio => 'Umlinganiselo wentlawulo';

  @override
  String get labelConsensus => 'Imvumelwano';

  @override
  String get ratingStrongBuy => 'Thenga ngamandla';

  @override
  String get ratingBuy => 'Thenga';

  @override
  String get ratingHold => 'Gcina';

  @override
  String get ratingSell => 'Thengisa';

  @override
  String get ratingStrongSell => 'Thengisa ngamandla';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'abahlalutyi aba-$count',
      one: 'umhlalutyi o-1',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Ixesha: $period';
  }

  @override
  String get noNews => 'Akukho ndaba zakutsha nje.';

  @override
  String get openArticle => 'Vula inqaku';

  @override
  String get openLinkFailed => 'Ikhonkco alikwazanga ukuvulwa.';

  @override
  String get recognitionSummary => 'Isishwankathelo';

  @override
  String get recognitionEvidence => 'Kutheni sicinga njalo';

  @override
  String get recognitionRawText => 'Umbhalo ofundwe emfanekisweni';

  @override
  String get errMissingAnthropicKey =>
      'Ukuchongwa kwemifanekiso akuqwalaselwanga (akukho ANTHROPIC_API_KEY). Faka i-ticker ngesandla.';

  @override
  String get errRecognitionUnreachable =>
      'Ayikwazanga ukufikelela kwinkonzo yokuchonga. Jonga uqhagamshelo lwakho lwe-intanethi.';

  @override
  String errRecognitionHttp(String status) {
    return 'Inkonzo yokuchonga ibuyise impazamo (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Inkonzo yokuchonga ayikwazanga ukusebenza ngalo mfanekiso.';

  @override
  String get errRecognitionTruncated =>
      'Impendulo yokuchonga inqunyulwe. Nceda uzame kwakhona.';

  @override
  String get errRecognitionBadResponse =>
      'Impendulo engalindelekanga evela kwinkonzo yokuchonga.';

  @override
  String get errRecognitionEmpty =>
      'Inkonzo yokuchonga ibuyise impendulo engenanto.';

  @override
  String get errMissingFinnhubKey =>
      'Idatha yemarike ayiqwalaselwanga (akukho FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Ayikwazanga ukufikelela kwinkonzo yedatha yemarike. Jonga uqhagamshelo lwakho lwe-intanethi.';

  @override
  String get errMarketRateLimited =>
      'Zininzi kakhulu izicelo kwinkonzo yedatha yemarike. Nceda ulinde umzuzu.';

  @override
  String errMarketHttp(String status) {
    return 'Inkonzo yedatha yemarike ibuyise impazamo (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Impendulo engalindelekanga evela kwinkonzo yedatha yemarike.';

  @override
  String errNoQuote(String symbol) {
    return 'Akukho datha yexabiso ifunyenweyo ye-$symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Akukho profayile yenkampani ifunyenweyo ye-$symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Imowudi yedemo ixhasa kuphela: $symbols. Yongeza i-FINNHUB_API_KEY ukuze ufumane idatha yangoku.';
  }

  @override
  String errUnknown(String detail) {
    return 'Kukho into engahambanga kakuhle: $detail';
  }

  @override
  String get newSearch => 'Ukhangelo olutsha';

  @override
  String get recentSearches => 'Okwakutsha nje';

  @override
  String get noRecentSearches => 'Akukabikho ukhangelo lwakutsha nje.';

  @override
  String get clearRecent => 'Cima okwakutsha nje';

  @override
  String get greeting => 'Sijonge esiphi isabelo?';

  @override
  String get searchHint => 'I-ticker okanye igama lenkampani';

  @override
  String get attachImage => 'Qhoboshela umfanekiso';

  @override
  String get searchResultsTitle => 'Iziphumo zokhangelo';

  @override
  String errNoResults(String query) {
    return 'Akukho zabelo zifunyenweyo ze-“$query”.';
  }

  @override
  String get quickBarHint => 'Chwetheza i-ticker okanye igama lenkampani…';

  @override
  String get openFullWindow => 'Vula ifestile';

  @override
  String hotkeyHint(String shortcut) {
    return 'Cofa $shortcut naphi na ukuze ubize i-WhatStock.';
  }

  @override
  String get trayOpen => 'Vula i-WhatStock';

  @override
  String get trayQuickSearch => 'Ukhangelo olukhawulezayo';

  @override
  String get trayQuit => 'Phuma';

  @override
  String get appearance => 'Inkangeleko';

  @override
  String get themeSystem => 'Isistim';

  @override
  String get themeDark => 'Okumnyama';

  @override
  String get themeLight => 'Okukhanyayo';

  @override
  String get back => 'Emva';

  @override
  String get aiSectionTitle => 'Uhlalutyo lwe-AI';

  @override
  String get aiIntro =>
      'Isishwankathelo esineenkcukacha esibhalwe yi-AI: isishwankathelo seendaba zakutsha nje, ishishini, amandla, imingcipheko nezinto ezifihliweyo, uqikelelo lwexabiso, imbono yexabiso eneemeko ezahlukeneyo ngokwengqondo, ngokwentlalo, ngokobugcisa nangokoqoqosho olubanzi, kunye noko kufuneka ukulandele.';

  @override
  String get aiGenerate => 'Yenza uhlalutyo';

  @override
  String get aiRegenerate => 'Yenza kwakhona';

  @override
  String get aiGenerating =>
      'Ilungiselela uhlalutyo… oku kunokuthatha umzuzu omnye okanye emibini.';

  @override
  String get aiSources => 'Imithombo';

  @override
  String aiGeneratedAt(String time) {
    return 'Yenziwe: $time';
  }

  @override
  String get aiDisclaimer =>
      'Uhlalutyo olwenziwe yi-AI olusekelwe kwidatha yoluntu neendaba zakutsha nje. Lunokuba neempazamo okanye lube luphelelwe lixesha, kwaye alulocebiso lotyalo-mali.';

  @override
  String get errAiNotConfigured =>
      'Uhlalutyo lwe-AI aluqwalaselwanga (akukho ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Ayikwazanga ukufikelela kwinkonzo ye-AI. Jonga uqhagamshelo lwakho lwe-intanethi.';

  @override
  String errAiHttp(String status) {
    return 'Inkonzo ye-AI ibuyise impazamo (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Inkonzo ye-AI yalile ukuhlalutya esi sabelo.';

  @override
  String get errAiBadResponse =>
      'Impendulo engalindelekanga evela kwinkonzo ye-AI.';

  @override
  String get sectionChart => 'Itshathi yexabiso';

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
      'Imbali yexabiso ayifumaneki kumthombo wedatha wangoku.';

  @override
  String get sectionStatements => 'Iingxelo zemali (zonyaka)';

  @override
  String get labelFiscalYear => 'Unyaka-mali';

  @override
  String get labelRevenue => 'Ingeniso';

  @override
  String get labelNetIncome => 'Inzuzo ecocekileyo';

  @override
  String get labelTotalAssets => 'Ii-asethi zizonke';

  @override
  String get labelTotalLiabilities => 'Amatyala ewonke';

  @override
  String get labelEquity => 'I-equity yabanini-zabelo';

  @override
  String get labelOperatingCashFlow => 'Ukuhamba kwemali ekusebenzeni';

  @override
  String get statementsUnavailable =>
      'Iingxelo zemali ezixeliweyo azifumaneki kwesi sabelo.';

  @override
  String get launchAtLogin => 'Qalisa xa ungena';

  @override
  String get hotkeyLabel => 'Indlela emfutshane esebenza naphi na';

  @override
  String get hotkeyRecordHint =>
      'Cofa apha, uze ucofe indibaniselwano entsha yamaqhosha';

  @override
  String get hotkeyReset => 'Buyisela kokumiselweyo';

  @override
  String get pasteImage => 'Ncamathisela umfanekiso osuka kwibhodi yokukopa';

  @override
  String get errClipboardNoImage => 'Akukho mfanekiso kwibhodi yokukopa.';

  @override
  String get favorites => 'Ezithandwayo';

  @override
  String get addToFavorites => 'Yongeza kwezithandwayo';

  @override
  String get removeFromFavorites => 'Susa kwezithandwayo';

  @override
  String get noFavorites =>
      'Akukabikho zithandwayo. Cofa inkwenkwezi kwisabelo ukuze usongeze.';

  @override
  String get displayCurrency => 'Imali yokubonisa';

  @override
  String get displayCurrencyNone => 'Imali yesabelo kuphela';

  @override
  String labelConverted(String currency) {
    return '≈ nge-$currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Izinga: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Uhlaziyo';

  @override
  String currentVersion(String version) {
    return 'Uguqulelo $version';
  }

  @override
  String get autoUpdate => 'Faka uhlaziyo ngokuzenzekelayo';

  @override
  String get checkForUpdates => 'Jonga uhlaziyo';

  @override
  String get updateChecking => 'Ijonga uhlaziyo…';

  @override
  String get updateUpToDate => 'Usebenzisa uguqulelo lwamva nje.';

  @override
  String updateAvailable(String version) {
    return 'Uguqulelo $version luyafumaneka.';
  }

  @override
  String get updateDownloading => 'Ikhuphela uhlaziyo ngasemva…';

  @override
  String get updateDownloaded =>
      'Uhlaziyo lulungile. Qala kwakhona ukuze ulufake.';

  @override
  String get updateNow => 'Hlaziya';

  @override
  String get restartNow => 'Qala kwakhona';

  @override
  String get updatesViaStore =>
      'Uhlaziyo lufika ngokuzenzekelayo ngevenkile yee-app.';

  @override
  String get updateCheckFailed => 'Ayikwazanga ukujonga uhlaziyo.';

  @override
  String get subscription => 'Umrhumo';

  @override
  String get planTrial => 'Uvavanyo';

  @override
  String get planNormal => 'Esiqhelekileyo';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Akukho sicwangciso sisebenzayo';

  @override
  String planAnalysesPerMonth(int count) {
    return 'Iintlalutyo ezi-$count ngenyanga';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Uvavanyo lwasimahla lweentsuku ezi-$days oluneentlalutyo ezi-$count';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Kusele iintsuku ezi-$days zovavanyo',
      one: 'Kusele usuku olu-1 lovavanyo',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Uvavanyo lwakho lwasimahla luphelile. Khetha isicwangciso ukuze uqhubeke uhlalutya.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Kusele iintlalutyo ezi-$remaining kwezi-$total kweli xesha';
  }

  @override
  String extraCredits(int count) {
    return 'Iintlalutyo ezongezelelweyo ezi-$count';
  }

  @override
  String renewsOn(String date) {
    return 'Kuhlaziywa ngo-$date';
  }

  @override
  String get choosePlan => 'Khetha isicwangciso';

  @override
  String get currentPlan => 'Isicwangciso sangoku';

  @override
  String get subscribe => 'Bhalisa';

  @override
  String get perMonth => '/ ngenyanga';

  @override
  String get extraPacksTitle =>
      'Ufuna ngaphezulu? Thenga iintlalutyo ezongezelelweyo';

  @override
  String get extraPacksHint =>
      'Iintlalutyo ezongezelelweyo aziphelelwa lixesha kwaye zisetyenziswa emva komlinganiselo wakho wenyanga.';

  @override
  String get buy => 'Thenga';

  @override
  String get restorePurchases => 'Buyisela izinto ezithengiweyo';

  @override
  String get manageSubscription => 'Lawula umrhumo';

  @override
  String get purchaseSuccess => 'Enkosi! Uthengo lwakho luyasebenza.';

  @override
  String get purchasePending => 'Uthengo lusalindile…';

  @override
  String get purchaseFailed => 'Uthengo alukwazanga ukugqitywa.';

  @override
  String get purchaseCanceled => 'Uthengo lurhoxisiwe.';

  @override
  String get billingUnavailable =>
      'Uthengo alukafumaneki kweli qonga. Bhalisa kwifowuni yakho okanye kwi-Mac; isicwangciso sakho siza kusebenza kuzo zonke izixhobo.';

  @override
  String get errQuotaExceeded =>
      'Akukho ntlalutyo iseleyo kweli xesha. Phucula isicwangciso sakho okanye uthenge iintlalutyo ezongezelelweyo.';

  @override
  String get errTrialExpired =>
      'Uvavanyo lwakho lwasimahla luphelile. Khetha isicwangciso ukuze uqhubeke.';

  @override
  String get errNoPlan => 'Uhlalutyo lwe-AI lufuna isicwangciso esisebenzayo.';

  @override
  String get viewPlans => 'Jonga izicwangciso';

  @override
  String get usageTitle => 'Usetyenziso';

  @override
  String get demoPurchaseNote =>
      'Intlawulo yedemo: ukuthenga kweli qonga kungokulinganisa nje.';

  @override
  String get mostPopular => 'Ethandwa kakhulu';

  @override
  String get bestValue => 'Elona xabiso lilungileyo';

  @override
  String get planFeaturesCommon =>
      'Ukuchongwa kweefoto, idatha yangoku, iitshathi, ezithandwayo kunye neelwimi zonke ezili-120 ziqukiwe kuzo zonke izicwangciso. Umlinganiselo ugubungela iintlalutyo ze-AI.';

  @override
  String get searchLanguages => 'Khangela iilwimi…';

  @override
  String get noLanguageMatch => 'Akukho lwimi luhambelanayo.';

  @override
  String get aiSettings => 'Uhlalutyo lwe-AI';

  @override
  String get aiLength => 'Ubude';

  @override
  String get aiDepthBrief => 'Emfutshane';

  @override
  String get aiDepthStandard => 'Esemgangathweni';

  @override
  String get aiDepthDeep => 'Enzulu';

  @override
  String get aiDepthBriefDesc => 'Okona kubalulekileyo, ngokukhawuleza.';

  @override
  String get aiDepthStandardDesc => 'Ingxelo epheleleyo enawo onke amacandelo.';

  @override
  String get aiDepthDeepDesc =>
      'Ukhangelo oluninzi lwewebhu, uthelekiso neenkampani ezifanayo neenkcukacha ezinzulu ngakumbi.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Amagama amalunga ne-$min–$max';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'isebenzisa iintlalutyo ezi-$count',
      one: 'isebenzisa uhlalutyo olu-1',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Inqanaba lomfundi';

  @override
  String get aiReaderBeginner => 'Oqalayo';

  @override
  String get aiReaderExperienced => 'Onamava';

  @override
  String get aiReaderBeginnerDesc =>
      'Ulwimi olulula; onke amagama obugcisa ayacaciswa.';

  @override
  String get aiReaderExperiencedDesc =>
      'Umbhalo oxineneyo onamagama aqhelekileyo ezemali.';

  @override
  String get aiCounterArgument => 'Eyona mpikiswano yomeleleyo';

  @override
  String get aiCounterArgumentDesc =>
      'Isishwankathelo sihlala siphela ngeyona mpikiswano yomeleleyo echasene nesigqibo saso.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Ngesicwangciso sakho: ukhangelo lwewebhu ukuya kutsho kwi-$count kuhlalutyo ngalunye',
      one: 'Ngesicwangciso sakho: ukhangelo lwewebhu olu-1 kuhlalutyo ngalunye',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Ukhangelo lwewebhu kubude obuqhelekileyo ngokwesicwangciso: Esiqhelekileyo $normal, Pro $pro, Max $max, Ultra $ultra. Emfutshane: 2 ngaphantsi, Enzulu: 2 ngaphezulu.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ukhangelo lwewebhu ukuya kutsho kwi-$count',
      one: 'ukhangelo lwewebhu olu-1',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ukhangelo lwewebhu kuhlalutyo ngalunye: $count',
      one: 'Ukhangelo lwewebhu olu-1 kuhlalutyo ngalunye',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Obu bude bufuna iintlalutyo ezi-$needed, kodwa kusele ezi-$left kuphela. Khetha ubude obufutshane kwiiSetingi okanye ufumane iintlalutyo ezongezelelweyo.';
  }

  @override
  String get outlookMarketMood => 'Imo yemarike';

  @override
  String get moodVeryPessimistic => 'Ayinathemba kwaphela';

  @override
  String get moodPessimistic => 'Ayinathemba';

  @override
  String get moodNeutral => 'Iphakathi';

  @override
  String get moodOptimistic => 'Inethemba';

  @override
  String get moodVeryOptimistic => 'Inethemba kakhulu';

  @override
  String get scenarioBull => 'Imeko yokunyuka';

  @override
  String get scenarioBase => 'Imeko esisiseko';

  @override
  String get scenarioBear => 'Imeko yokuhla';

  @override
  String outlookCurrentPrice(String price) {
    return 'Ixabiso langoku: $price';
  }

  @override
  String get outlookKeyLevels => 'Amanqanaba aphambili';

  @override
  String get keyLevelSupport => 'Inkxaso';

  @override
  String get keyLevelResistance => 'Uxhathiso';

  @override
  String get keyLevelAnchor => 'Iankile';

  @override
  String get upcomingEvents => 'Iziganeko ezizayo';

  @override
  String get outlookChartNote =>
      'Imida yesalathiso; amathuba ziingqikelelo nje, hayi izibikezelo.';

  @override
  String get accountTitle => 'Iakhawunti';

  @override
  String get signIn => 'Ngena';

  @override
  String get signOut => 'Phuma';

  @override
  String get notSignedIn => 'Awungenanga';

  @override
  String get accountBenefit =>
      'Ngena ukuze umrhumo wakho usebenze kuzo zonke izixhobo zakho.';

  @override
  String get accountSyncedNote =>
      'Umrhumo wakho neentlalutyo eziseleyo ziyafana kuzo zonke izixhobo.';

  @override
  String get signInTitle => 'Ngena kwi-WhatStock';

  @override
  String get emailLabel => 'Idilesi ye-imeyile';

  @override
  String get continueWithEmail => 'Qhubeka nge-imeyile';

  @override
  String codeSentTo(String email) {
    return 'Sithumele ikhowudi enamanani ama-6 ku-$email. Isebenza imizuzu eli-10.';
  }

  @override
  String get codeLabel => 'Ikhowudi yokungena';

  @override
  String get resendCode => 'Thumela ikhowudi entsha';

  @override
  String get useDifferentEmail => 'Sebenzisa enye i-imeyile';

  @override
  String get errInvalidCode =>
      'Ikhowudi ayichanekanga okanye iphelelwe lixesha.';

  @override
  String get errInvalidEmail => 'Nceda ufake idilesi ye-imeyile esebenzayo.';

  @override
  String get errSignInFailed =>
      'Ukungena akuphumelelanga. Jonga uqhagamshelo lwakho uze uzame kwakhona.';

  @override
  String get checkoutWaiting =>
      'Gqibezela intlawulo kwibhrawuza yakho. I-app iza kuzihlaziya ngokuzenzekelayo xa kugqityiwe.';

  @override
  String get paymentViaStripe =>
      'Intlawulo ekhuselekileyo kwibhrawuza yakho nge-Stripe. Rhoxisa nanini na.';

  @override
  String get paymentViaStore =>
      'Uhlawuliswa nge-akhawunti yakho ye-App Store okanye ye-Google Play. Rhoxisa nanini na kwiisetingi zevenkile yakho.';

  @override
  String get keySpace => 'Isithuba';

  @override
  String get doubleOptionTitle => 'Cofa i-Option kabini';

  @override
  String get doubleOptionSubtitle =>
      'Ukucofa iqhosha le-Option kabini ngokukhawuleza nako kubiza i-WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Ukuze isebenze nakwezinye ii-app, vumela i-WhatStock kwiiSetingi zeSistim → Ubumfihlo noKhuseleko → Ukubeka iliso kwiGalelo, uze uvule i-app kwakhona.';

  @override
  String get openSystemSettings => 'Vula iiSetingi zeSistim';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Cofa $shortcut okanye ucofe i-Option kabini naphi na ukuze ubize i-WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Okunokwenzeka kakhulu';

  @override
  String get longTermToday => 'Namhlanje';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: 'iminyaka eyi-$years',
      one: 'unyaka o-1',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range ngonyaka';
  }

  @override
  String longTermLikely(String price) {
    return 'okunokwenzeka kakhulu $price';
  }

  @override
  String get confidenceLow => 'Ukuqiniseka okuphantsi';

  @override
  String get confidenceMedium => 'Ukuqiniseka okuphakathi';

  @override
  String get confidenceHigh => 'Ukuqiniseka okuphezulu';

  @override
  String get longTermNote =>
      'Imida yexesha elide isekelwe kwiingcinga ezichaziweyo kwaye iyanda ngokuhamba kwexesha. Amaxabiso awaquki ii-dividend. Iingqikelelo nje, hayi izibikezelo.';

  @override
  String get portfolio => 'Ipotifoliyo';

  @override
  String get portfolioEmpty =>
      'Akukho nto apha okwangoku. Vula isabelo uze ucofe “Yongeza kwipotifoliyo” ukuze ulandele oko ukuphetheyo.';

  @override
  String get portfolioLocalNote =>
      'Igcinwe kwesi sixhobo kuphela. Iitotali ziguqulwa ngamazinga esalathiso e-ECB; amaxabiso asenokulibaziseka.';

  @override
  String get addToPortfolio => 'Yongeza kwipotifoliyo';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Yongeza $symbol';
  }

  @override
  String get portfolioQuantity => 'Inani lezabelo';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Ixabiso ngesabelo ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Umhla wokuthenga';

  @override
  String get portfolioAdd => 'Yongeza';

  @override
  String get portfolioInvalidNumber => 'Faka inani elingaphezulu kweqanda.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol yongeziwe kwipotifoliyo yakho.';
  }

  @override
  String get portfolioTotalValue => 'Ixabiso elipheleleyo';

  @override
  String get portfolioToday => 'Namhlanje';

  @override
  String get portfolioGainLoss => 'Inzuzo/ilahleko';

  @override
  String get portfolioInvested => 'Okutyaliweyo';

  @override
  String get portfolioAllocation => 'Ulwabiwo';

  @override
  String get portfolioPositions => 'Iipozishini';

  @override
  String portfolioAvgCost(String price) {
    return 'iindleko eziphakathi $price';
  }

  @override
  String get portfolioYourPosition => 'Ipozishini yakho';

  @override
  String get portfolioPurchases => 'Ezithengiweyo';

  @override
  String get portfolioRemove => 'Susa';

  @override
  String get portfolioExcluded =>
      'Iipozishini ezingenalo ixabiso okanye izinga lotshintshiselwano azibandakanywa kwiitotali.';

  @override
  String get priceAlerts => 'Izilumkiso zamaxabiso';

  @override
  String get setPriceAlert => 'Seta isilumkiso sexabiso';

  @override
  String alertDialogTitle(String symbol) {
    return 'Isilumkiso sexabiso · $symbol';
  }

  @override
  String get alertKindAbove => 'Inyukela ngaphezulu';

  @override
  String get alertKindBelow => 'Yehlela ngaphantsi';

  @override
  String get alertKindMove => 'Ishukuma kakhulu ngosuku olunye';

  @override
  String alertTargetPrice(String currency) {
    return 'Ixabiso ($currency)';
  }

  @override
  String get alertMovePercent => 'Intshukumo yosuku (%)';

  @override
  String get alertAlreadyMet => 'Ixabiso sele lidlule kweli nqanaba.';

  @override
  String get alertSave => 'Seta isilumkiso';

  @override
  String alertCreated(String symbol) {
    return 'Isilumkiso sisetiwe: $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Akukabikho zilumkiso zamaxabiso. Vula isabelo uze ucofe intsimbi ukuze usete esinye.';

  @override
  String get alertsNote =>
      'Izilumkiso zijongwa rhoqo emva kwemizuzu emi-5 ngelixa i-WhatStock isebenza. Kwikhompyutha ihlala isebenza kwibha yemenyu okanye kwitreyi; kwifowuni, okwangoku izilumkiso zifika kuphela xa i-app ivuliwe.';

  @override
  String alertDescAbove(String price) {
    return 'Ngaphezu kwe-$price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Ngaphantsi kwe-$price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Intshukumo yosuku ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Kuqaliswe ngo-$date ku-$price';
  }

  @override
  String get alertRearm => 'Phinda usete';

  @override
  String get alertDelete => 'Cima';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol inyukele ngaphezu kwe-$price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol yehlele ngaphantsi kwe-$price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol ishukume nge-$percent namhlanje';
  }

  @override
  String alertHitBody(String price) {
    return 'Ixabiso langoku: $price';
  }

  @override
  String get alertOpen => 'Vula';

  @override
  String get keepInTrayTitle => 'Qhubeka usebenza xa ifestile ivaliwe';

  @override
  String get keepInTraySubtitle =>
      'I-WhatStock ihlala kwibha yemenyu okanye kwitreyi, ukuze indlela emfutshane nezilumkiso zamaxabiso ziqhubeke zisebenza.';

  @override
  String get termsOfUse => 'Imiqathango Yokusetyenziswa';

  @override
  String get privacyPolicy => 'Umgaqo-nkqubo Wabucala';

  @override
  String get subscriptionLegal =>
      'Imirhumo ihlaziywa ngokuzenzekelayo nyanga nganye de uyirhoxise. Ngokubhalisa uyayamkela Imiqathango Yokusetyenziswa noMgaqo-nkqubo Wabucala.';

  @override
  String get deleteAccount => 'Cima iakhawunti';

  @override
  String get deleteAccountTitle => 'Cima iakhawunti yakho?';

  @override
  String get deleteAccountBody =>
      'Iakhawunti yakho nayo yonke into egcinwe kwiseva yethu (i-imeyile, umlinganiselo, usetyenziso) iya kucinywa ngonaphakade, kwaye iintlalutyo ezingasetyenziswanga ziya kulahleka. Umrhumo ohlawulwe kwibhrawuza urhoxiswa kwangoko; umrhumo we-App Store okanye we-Google Play kufuneka urhoxiswe kwiisetingi zevenkile.';

  @override
  String get deleteLocalData =>
      'Cima nedatha ekwesi sixhobo (ipotifoliyo, izilumkiso, ezithandwayo, imbali, iintlalutyo ezigciniweyo)';

  @override
  String get deleteAccountConfirm => 'Cima ngonaphakade';

  @override
  String get accountDeleted => 'Iakhawunti yakho icinyiwe.';

  @override
  String get errDeleteAccount =>
      'Iakhawunti ayikwazanga ukucinywa. Jonga uqhagamshelo lwakho uze uzame kwakhona.';

  @override
  String get aiTrialBriefNote =>
      'Iintlalutyo zovavanyo zimfutshane kwaye zenziwa ngemodeli ye-AI ekhawulezayo ngakumbi. Ngesicwangciso ufumana i-AI yethu enamandla kakhulu, ukhangelo olungakumbi lwewebhu, nobude obusemgangathweni nobunzulu.';

  @override
  String get billingMonthly => 'Ngenyanga';

  @override
  String get billingYearly => 'Ngonyaka';

  @override
  String get yearlyDiscount => 'Iinyanga ezi-2 simahla';

  @override
  String get perYear => '/ ngonyaka';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price ngenyanga';
  }

  @override
  String get subscriptionLegalYearly =>
      'Imirhumo yonyaka ihlaziywa ngokuzenzekelayo unyaka ngamnye de uyirhoxise. Ngokubhalisa uyayamkela Imiqathango Yokusetyenziswa noMgaqo-nkqubo Wabucala.';

  @override
  String get myAnalyses => 'Uhlalutyo lwam';

  @override
  String get navAlerts => 'Izilumkiso';

  @override
  String get inviteTitle => 'Umboniso wangaphambili ovaliweyo';

  @override
  String get inviteBody =>
      'I-WhatStock ifumaneka ngesimemo kuphela okwangoku. Faka ikhowudi yesimemo oyifumeneyo.';

  @override
  String get inviteCodeLabel => 'Ikhowudi yesimemo';

  @override
  String get inviteContinue => 'Qhubeka';

  @override
  String get inviteInvalid => 'Le khowudi yesimemo ayisebenzi.';

  @override
  String get inviteExpired =>
      'Esi simemo siphelelwe lixesha. Cela ikhowudi entsha kumntu okumemileyo.';

  @override
  String get inviteDeviceLimit =>
      'Le khowudi yesimemo sele isetyenziswa kwinani eliphezulu lezixhobo elivumelekileyo.';

  @override
  String get previewConfidential => 'Umboniso oyimfihlo';

  @override
  String get errPreviewDailyLimit =>
      'Umda wohlalutyo wanamhlanje walo mboniso wangaphambili ufikelelwe. Zama kwakhona ngomso.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'kwiiyure ezi-$count ezidlulileyo',
      one: 'kwiyure enye edlulileyo',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'kwiintsuku ezi-$count ezidlulileyo',
      one: 'kusuku olunye oludlulileyo',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Hlaziya olu hlalutyo?';

  @override
  String staleBody(String age) {
    return 'Olu hlalutyo lwenziwe $age. Amaxabiso, iindaba neziphumo zisenokuba zitshintshile ukususela ngoko.';
  }

  @override
  String get staleKeep => 'Bonisa olwangaphambili';

  @override
  String get staleRefresh => 'Yenza olutsha';

  @override
  String seeAll(int count) {
    return 'Bona konke ($count)';
  }

  @override
  String get searchAnalyses => 'Khangela kuhlalutyo lwakho';

  @override
  String get deleteAnalysis => 'Cima';

  @override
  String analysisDeleted(String symbol) {
    return 'Uhlalutyo lwe-$symbol lucinyiwe';
  }
}
