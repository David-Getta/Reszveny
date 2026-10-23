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
  String get labelYieldOnCost => 'Isivuno kwixabiso lokuthenga';

  @override
  String get labelDividendGrowth5y => 'Ukukhula kwe-dividend (iminyaka eyi-5)';

  @override
  String get dividendNone =>
      'Akukho dividend ihlawulweyo kwiinyanga ezili-12 ezidlulileyo.';

  @override
  String get dividendOnYourShares => 'Kwizabelo zakho, ngonyaka';

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
      'Igcinwe kwesi sixhobo, nakwiakhawunti yakho ukuba ungenile. Iitotali ziguqulwa ngamazinga esalathiso e-ECB; amaxabiso asenokulibaziseka.';

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
  String homeDividendsThisYear(String amount) {
    return 'Izahlulo zalo nyaka: $amount';
  }

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

  @override
  String get keyLevelAlertHint =>
      'Cofa inqanaba ukuze ufumane isilumkiso xa ixabiso lifikelela kulo.';

  @override
  String get shareAnalysisTitle => 'Yabelana ngohlalutyo';

  @override
  String get shareAsImage => 'Yabelana njengomfanekiso';

  @override
  String get shareAsText => 'Yabelana njengombhalo';

  @override
  String get shareCardFooter => 'Yenziwe nge-WhatStock';

  @override
  String get shareCardDisclaimer =>
      'Uhlalutyo lwe-AI · alulocebiso lotyalo-mali';

  @override
  String get referralTitle => 'Mema abahlobo';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'iintlalutyo ezongezelelweyo ezi-$count',
      one: 'uhlalutyo olunye olongezelelweyo',
    );
    return 'Yabelana ngekhowudi yakho. Umhlobo wakho ufumana $_temp0 ngoko nangoko, nawe ufumana okufanayo emva kohlalutyo lwakhe lokuqala.';
  }

  @override
  String get referralYourCode => 'Ikhowudi yakho';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Abamenyiweyo: $invited · Abavuzwe: $rewarded';
  }

  @override
  String get referralHaveCode => 'Unekhowudi evela kumhlobo?';

  @override
  String get referralRedeem => 'Sebenzisa';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kongezwe iintlalutyo ezi-$count. Wamkelekile!',
      one: 'Kongezwe uhlalutyo olunye. Wamkelekile!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Le khowudi ayikho. Yijonge uze uzame kwakhona.';

  @override
  String get referralErrOwn => 'Awunakuyisebenzisa ikhowudi yakho.';

  @override
  String get referralErrAlready => 'Sele uyisebenzisile ikhowudi yomhlobo.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'iintlalutyo ezongezelelweyo ezi-$count',
      one: 'uhlalutyo olunye olongezelelweyo',
    );
    return 'Ndihlalutya izabelo nge-WhatStock: thatha ifoto yesabelo kwaye i-AI iyasicacisa. Ngekhowudi yam $code ufumana $_temp0.';
  }

  @override
  String get referralCopied => 'Ikhowudi ikhutshelwe';

  @override
  String get onboardTitle1 => 'Thatha ifoto yesabelo';

  @override
  String get onboardBody1 =>
      'Isikrini se-app ye-broker, iphephandaba okanye ilogo yenkampani zanele: I-WhatStock iyasiqonda isabelo ize ikubonise ixabiso laso, itshathi namanani abalulekileyo.';

  @override
  String get onboardTitle2 => 'Siqonde ngemizuzu embalwa';

  @override
  String get onboardBody2 =>
      'Uhlalutyo lwe-AI luchaza oko kushukumisa isabelo, imingcipheko, ixabiso laso lokwenyani kunye neemeko ezintathu zokuba ixabiso lingaya phi – kunye nemithombo nangolwimi lwakho.';

  @override
  String get onboardTitle3 => 'Hlala unolwazi';

  @override
  String get onboardBody3 =>
      'Ezithandwayo, ipotifoliyo yakho nezilumkiso zamaxabiso zikwazisa ngokwenzekayo. Uhlalutyo lwakho luhlala kwisixhobo sakho, lulungele ukuvulwa kwakhona.';

  @override
  String get onboardNext => 'Okulandelayo';

  @override
  String get onboardStart => 'Qalisa';

  @override
  String get onboardSkip => 'Tsiba';

  @override
  String changesTitle(String date) {
    return 'Ukusukela kuhlalutyo lwangaphambili ($date)';
  }

  @override
  String get changesPrice => 'Ixabiso';

  @override
  String get changesNoMajor => 'Imbono ayitshintshanga kakhulu.';

  @override
  String get changesPreviousSummary => 'Isishwankathelo sangaphambili';

  @override
  String get telemetryTitle => 'Nceda uphucule i-WhatStock';

  @override
  String get telemetryBody =>
      'Yabelana ngeenkcukacha-manani zokusetyenziswa ezingachazi gama kunye neengxelo zokuwa: zeziphi iimpawu ezisetyenziswayo nokuba yintoni engahambanga kakuhle. Izabelo zakho, uhlalutyo lwakho okanye iinkcukacha zakho zobuqu azisoze zabelwane. Ungakutshintsha oku nangaliphi na ixesha kwiiSetingi.';

  @override
  String get telemetryAllow => 'Vumela';

  @override
  String get telemetryDecline => 'Hayi, enkosi';

  @override
  String get telemetrySetting =>
      'Iinkcukacha-manani ezingachazi gama kunye neengxelo zokuwa';

  @override
  String get telemetrySettingHint =>
      'Kangakanani iimpawu zisetyenziswa kunye neengxelo zeempazamo, ngaphandle kweenkcukacha zobuqu okanye umxholo wokukhangela nohlalutyo lwakho.';

  @override
  String get askButton => 'Buza ngolu hlalutyo';

  @override
  String askTitle(String symbol) {
    return 'Imibuzo nge-$symbol';
  }

  @override
  String get askIntro =>
      'Buza nantoni na malunga nohlalutyo: intsingiselo yomngcipheko othile, yintoni enokutshintsha imbono yekamva, inani elithile libalwe njani. Iimpendulo zisekelwe kolu hlalutyo kwaye aziyocebiso lotyalo-mali.';

  @override
  String get askHint => 'Buza umbuzo…';

  @override
  String get askSend => 'Thumela';

  @override
  String get askThinking => 'Iyacinga…';

  @override
  String get askSuggest1 => 'Yintoni owona mngcipheko mkhulu?';

  @override
  String get askSuggest2 => 'Yintoni enokutshintsha imbono yekamva?';

  @override
  String get askSuggest3 => 'Ndicacisele ngendlela elula';

  @override
  String get askMaxReached =>
      'Lo ibingowokugqibela umbuzo wolu hlalutyo. Yenza uhlalutyo olutsha ukuze ubuze ngakumbi.';

  @override
  String get errAskLimit =>
      'Ufikelele kumda wemibuzo wanamhlanje. Nceda uzame kwakhona ngomso.';

  @override
  String get eventTomorrow => 'Ngomso';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'emva kweentsuku ezi-$days',
      one: 'emva kosuku olu-1',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Iziphumo zekota';

  @override
  String get eventBeforeOpen => 'phambi kokuba imakethi ivule';

  @override
  String get eventAfterClose => 'emva kokuba imakethi ivaliwe';

  @override
  String eventEpsEstimate(String value) {
    return 'Uqikelelo lwe-EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Kuhlalutyo lwakho';

  @override
  String get eventDividend => 'Isahlulo esilindelekileyo';

  @override
  String get eventDividendEstimate => 'Siqikelelwe kwiintlawulo ozirekhodileyo';

  @override
  String get eventsHint =>
      'Imihla yeziphumo zezabelo ozithandayo nezepotifoliyo yakho kwiintsuku ezingama-90 ezizayo, iziganeko ezinemihla eziphawulwe luhlalutyo lwakho, kunye nezahlulo ezilindelekileyo eziqikelelwe kwiintlawulo ozirekhodileyo.';

  @override
  String get eventsEmpty =>
      'Akukho ziganeko zinemihla kwiintsuku ezingama-90 ezizayo. Yongeza ezithandayo okanye izabelo zepotifoliyo ukuze ubone imihla yeziphumo zazo apha; izahlulo ozirekhodileyo zibonisa intlawulo elandelayo elindelekileyo.';

  @override
  String get compareTitle => 'Thelekisa';

  @override
  String get compareAdd => 'Yongeza isitokhwe';

  @override
  String get compareRemove => 'Susa';

  @override
  String get compareTickerHint => 'Ticker, umzekelo MSFT';

  @override
  String get compareHint =>
      'Amanani aphambili ecaleni komnye; elona xabiso lilungileyo kumqolo ngamnye liqaqanjisiwe. Izixa zikwimali yesitokhwe ngasinye.';

  @override
  String get compareNoAnalysis => 'Akukabikho uhlalutyo';

  @override
  String get portfolioDividends => 'I-dividend yonyaka';

  @override
  String portfolioDividendYield(String percent) {
    return 'Isivuno $percent';
  }

  @override
  String get portfolioDividendNote =>
      'I-dividend yonyaka elindelekileyo isekelwe kwii-dividend ezihlawulwe kwiinyanga ezili-12 ezidlulileyo; iintlawulo zexesha elizayo aziqinisekiswanga.';

  @override
  String positionDividend(String amount) {
    return 'I-dividend: $amount ngonyaka';
  }

  @override
  String get chartAvgCost => 'Owakho umndilili';

  @override
  String get chartAlertLevel => 'Isilumkiso';

  @override
  String get marketsToday => 'Iimarike namhlanje';

  @override
  String get notesTitle => 'Amanqaku am';

  @override
  String get notesHint =>
      'Kutheni usithengile, ujonge ntoni, yintoni enokwenza usithengise?';

  @override
  String get notesInfo =>
      'Igcinwe kwesi sixhobo, nakwiakhawunti yakho ukuba ungenile. Uhlalutyo lwe-AI luthathela ingqalelo amanqaku akho.';

  @override
  String notesSaved(String date) {
    return 'Kugcinwe: $date';
  }

  @override
  String get peersTitle => 'Iinkampani ezifanayo';

  @override
  String get portfolioExport => 'Thumela ngaphandle njenge-CSV';

  @override
  String get portfolioImport => 'Ngenisa ukusuka kwi-CSV';

  @override
  String get portfolioImportHint =>
      'Ncamathisela into enye ethengiweyo kumgca ngamnye: uphawu lwe-ticker, isixa, ixabiso, imali, umhla (YYYY-MM-DD). Iikholamu zingahlulwa ngeekoma, iisemikholoni okanye iithebhu; umgca wesihloko awunyanzelekanga.';

  @override
  String get portfolioImportButton => 'Ngenisa';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kongezwe iintengiselwano ezi-$count',
      one: 'Kongezwe intengiselwano enye',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kutsitywe imigca emi-$count',
      one: 'Kutsitywe umgca omnye',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Ipotifoliyo, ezithandwayo, izilumkiso zamaxabiso namanqaku zingqamaniswa kuzo zonke izixhobo zakho.';

  @override
  String syncLast(String time) {
    return 'Ukungqamanisa kokugqibela: $time';
  }

  @override
  String get syncNow => 'Ngqamanisa ngoku';

  @override
  String get syncFailed =>
      'Ukungqamanisa kusilele. Kuza kuzama kwakhona ngokuzenzekelayo.';

  @override
  String get alertEmailTitle => 'I-imeyile xa isilumkiso sisebenza';

  @override
  String get alertEmailOn =>
      'Sijonga izilumkiso zakho rhoqo emva kwemizuzu embalwa size sikuthumelele i-imeyile, nokuba i-app ivaliwe.';

  @override
  String get alertEmailSignIn =>
      'Ngena nge-imeyile yakho kwiiSetingi ukuze ufumane izilumkiso nge-imeyile, nokuba i-app ivaliwe.';

  @override
  String get portfolioHistory => 'Ixabiso ngokuhamba kwexesha';

  @override
  String get portfolioReviewTitle => 'Uhlalutyo lwepotifoliyo lwe-AI';

  @override
  String get portfolioReviewIntro =>
      'I-AI ijonga ipotifoliyo yakho yonke: ukugxila kwemali kwindawo enye, ukuxhomekeka kumacandelo nakwiimali zamazwe, imingcipheko ekwabelwana ngayo zizabelo zakho, kunye nezahlulo zenzuzo. Isebenzisa uhlalutyo olu-1.';

  @override
  String get portfolioReviewButton => 'Hlalutya ipotifoliyo yam';

  @override
  String get portfolioReviewAgain => 'Hlalutya kwakhona';

  @override
  String get portfolioReviewWorking => 'Sihlalutya ipotifoliyo yakho…';

  @override
  String get digestTitle => 'Isishwankathelo seveki nge-imeyile';

  @override
  String get digestHint =>
      'Rhoqo ngoMvulo: indlela ezithandwayo zakho nepotifoliyo yakho eziye zahamba ngayo kwiveki ephelileyo, kunye nemihla ezayo yeziphumo zazo.';

  @override
  String get benchmarkTitle => 'Xa kuthelekiswa ne-S&P 500';

  @override
  String get benchmarkTitleIndex => 'Xa kuthelekiswa ne-index';

  @override
  String get benchmarkHintIndex =>
      'Ngokungathi into nganye oyithengileyo ifakwe ngaloo mini kwingxowa-mali elandela i-index oyikhethileyo. Ii-dividend azibandakanywanga; iingeniso zangaphambili azixeli kwangaphambili ezizayo.';

  @override
  String get benchmarkYours => 'Ozithengileyo';

  @override
  String benchmarkAhead(String points) {
    return 'Ngcono kune-index ngamanqaku epesenti angama-$points';
  }

  @override
  String benchmarkBehind(String points) {
    return 'Emva kwe-index ngamanqaku epesenti angama-$points';
  }

  @override
  String get portfolioSell => 'Thengisa';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Thengisa $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Ixabiso lokuthengisa ngesabelo ($currency)';
  }

  @override
  String get portfolioSellDate => 'Umhla wokuthengisa';

  @override
  String get portfolioSellAll => 'Zonke';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Unazo $quantity';
  }

  @override
  String get portfolioSold => 'Kuthengisiwe';

  @override
  String get portfolioRealized => 'Efunyenweyo';

  @override
  String get portfolioClosed => 'Iipozishini ezivaliweyo';

  @override
  String get portfolioClosedNote => 'Zonke izabelo zithengisiwe';

  @override
  String get portfolioTransactions => 'Iintengiselwano';

  @override
  String get portfolioRealizedByYear => 'Inzuzo efunyenweyo ngonyaka';

  @override
  String get portfolioRealizedHint =>
      'Ezithengisiweyo zidityaniswa kuqala nezona zinto zindala uzithengileyo (FIFO), ziguqulwe ngexabiso lotshintshiselwano lanamhlanje. Kwingxelo yerhafu, sebenzisa ingxelo yebroker yakho.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Ukususela kolu hlalutyo, kupapashwe iziphumo ezitsha zekota ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Iziphumo ezitsha';

  @override
  String get portfolioImportBrokers =>
      'Iithumelo eziphuma kwi-Revolut, Trading 212, Interactive Brokers, DEGIRO, Schwab, Fidelity kunye ne-Robinhood nazo ziyaqondwa, kunye nokuthengisa nee-dividend (emva kokutsalwa kwerhafu ebanjwayo); iidipozithi ziyatsitywa.';

  @override
  String get portfolioImportFile => 'Khetha ifayile';

  @override
  String offlineBanner(String time) {
    return 'Akukho qhagamshelo – kuboniswa idatha egcinwe ekugqibeleni ($time).';
  }

  @override
  String get glossMarketCap =>
      'Ixabiso lenkampani yonke kwimarike yezabelo: ixabiso lesabelo × inani lezabelo.';

  @override
  String get glossSharesOutstanding =>
      'Inani lezabelo ezikhutshwe yinkampani. Ukuba liyanda, isabelo ngasinye sinesiqephu esincinci; ukuthenga izabelo kwakhona kuyalinciphisa.';

  @override
  String get glossPeTrailing =>
      'Ixabiso ÷ inzuzo ngesabelo ngasinye kwiinyanga ezili-12 ezidlulileyo: uhlawula iminyaka emingaphi yenzuzo yangoku. Ephantsi itshiphu ngakumbi, kodwa iinkampani ezikhula ngokukhawuleza zihlala zine-P/E ephezulu.';

  @override
  String get glossPeForward =>
      'Njenge-P/E, kodwa ngenzuzo abahlalutyi abayilindeleyo kwiinyanga ezili-12 ezizayo. Ukuba ingaphantsi kwe-P/E edlulileyo, inzuzo kulindeleke ukuba ikhule.';

  @override
  String get glossPb =>
      'Ixabiso ÷ ixabiso leencwadi (ii-asethi kuthatyathwe amatyala) ngesabelo ngasinye. Malunga ne-1 kuthetha ukuba imarike ixabisa inkampani ngokwento enayo ephepheni.';

  @override
  String get glossPs =>
      'Ixabiso lemarike ÷ ingeniso yonyaka. Iluncedo kwiinkampani ezinenzuzo encinci okanye ezingenayo okwangoku; thelekisa ngaphakathi kwishishini elinye.';

  @override
  String get glossEvToFcf =>
      'Ixabiso lenkampani kubandakanya ityala (EV) ÷ imali eyenzayo ngonyaka emva kotyalo-mali. Ephantsi ithetha ukuba ufumana imali eninzi ngexabiso olihlawulayo.';

  @override
  String get glossPeg =>
      'P/E ÷ ukukhula kwenzuzo yonyaka okulindelekileyo (%). Malunga ne-1 kudla ngokuthathwa njengokufanelekileyo; ijonga i-P/E ngokokukhula.';

  @override
  String get glossEps =>
      'Inzuzo ngesabelo ngasinye kwiinyanga ezili-12 ezidlulileyo. I-EPS enyuka unyaka nonyaka yenye yezona mpawu zomeleleyo zenkampani esempilweni.';

  @override
  String get glossBeta =>
      'Isabelo sihamba kangakanani nemarike: 1 = njengemarike, 1.5 = ukutshintsha okukhulu malunga ne-50%, ngaphantsi kwe-1 = kuzolile ngakumbi.';

  @override
  String get glossRevenueTtm =>
      'Intengiso iyonke yeenyanga ezili-12 ezidlulileyo, phambi kwazo naziphi na iindleko.';

  @override
  String get glossNetIncomeTtm =>
      'Inzuzo eseleyo emva kwazo zonke iindleko, inzala neerhafu kwiinyanga ezili-12 ezidlulileyo.';

  @override
  String get glossGrossMargin =>
      'Inxalenye yengeniso eseleyo emva kweendleko ezithe ngqo zeemveliso. Imajini ephezulu idla ngokubonisa amandla okumisela amaxabiso.';

  @override
  String get glossOperatingMargin =>
      'Inxalenye yengeniso eseleyo emva kweendleko zokuqhuba ishishini (imivuzo, irente, ukwazisa ngeemveliso), phambi kwenzala neerhafu.';

  @override
  String get glossNetMargin =>
      'Inxalenye yengeniso eba yinzuzo yokugqibela. 20% kuthetha ukuba kwi-100 nganye yentengiso, i-20 yinzuzo.';

  @override
  String get glossRoe =>
      'Imbuyekezo kwi-equity: inzuzo yonyaka ÷ imali yabanini. Ibonisa ukuba abaphathi bayisebenzisa kakuhle kangakanani imali yabanini-zabelo; ngaphezu kwe-15% malunga, yomelele.';

  @override
  String get glossRoa =>
      'Imbuyekezo kwii-asethi: inzuzo yonyaka ÷ yonke into enayo inkampani. Thelekisa ngaphakathi kwishishini elinye.';

  @override
  String get glossDebtToEquity =>
      'Amatyala ÷ imali yabanini. Ephezulu ithetha imali eninzi ebolekiweyo: umngcipheko omkhulu xa inzala inyuka okanye ishishini licotha.';

  @override
  String get glossCurrentRatio =>
      'Ii-asethi zexesha elifutshane ÷ amatyala ekufuneka ehlawulwe kunyaka omnye. Ngaphezu kwe-1 kuthetha ukuba inkampani inako ukuhlawula amatyala ayo akufutshane.';

  @override
  String get glossRevenueGrowth =>
      'Ingeniso ikhule kangakanani xa ithelekiswa nonyaka ophelileyo.';

  @override
  String get glossEpsGrowth =>
      'Inzuzo ngesabelo ngasinye ikhule kangakanani xa ithelekiswa nonyaka ophelileyo.';

  @override
  String get glossDividendYield =>
      'I-dividend yonyaka ÷ ixabiso lesabelo: imali obuya kuyifumana ngonyaka, njengepesenti yento oyihlawulayo.';

  @override
  String get glossDividendPerShare =>
      'I-dividend ehlawulwe kwisabelo esinye kunyaka ophelileyo.';

  @override
  String get glossPayoutRatio =>
      'Inxalenye yenzuzo ehlawulwa njenge-dividend. Ngaphezu kwe-100% inkampani ihlawula ngaphezu koko ikufumanayo, nto leyo engafane ihlale ixesha elide.';

  @override
  String get portfolioBeta => 'I-beta yepotifoliyo';

  @override
  String get glossPortfolioBeta =>
      'I-beta yezabelo zakho, ilinganiswe ngokwexabiso lazo: imalunga nepesenti ezingaphi izabelo zakho ezihamba ngazo xa imarike ihamba nge-1%. Ngaphezu kwe-1 zitshintsha ngaphezu kwemarike, ngaphantsi kwe-1 kancinci. Imali ayibandakanywanga.';

  @override
  String get portfolioTop3 => 'Iipozishini ezi-3 ezinkulu';

  @override
  String get glossPortfolioTop3 =>
      'Ingakanani ixabiso lezabelo zakho elikwiipozishini zakho ezintathu ezinkulu kakhulu. Okukhona liphezulu, kokukhona iindaba ezimbi zenkampani enye zinokonakalisa ipotifoliyo yonke.';

  @override
  String get glossDividendGrowth5y =>
      'I-dividend ngesabelo ngasinye ikhule kangakanani ngonyaka ngokomndilili kwiminyaka emihlanu edlulileyo. Ukukhula okuzinzileyo kudla ngokuthetha ukuba inkampani iyakuthemba ukuhamba kwemali yayo; ukuncitshiswa kudla ngokuba luphawu lwesilumkiso.';

  @override
  String get glossYieldOnCost =>
      'Ii-dividend ezifunyenwe kwiinyanga ezili-12 ezidlulileyo zahlulwe ngoko ukuhlawuleleyo izabelo osenazo. Ngokwahlukileyo kwisivuno se-dividend, silinganiswa ngexabiso owathenga ngalo wena, hayi ixabiso lanamhlanje.';

  @override
  String get glossTitle => 'Kuthetha ntoni?';

  @override
  String get watchNewsTitle => 'Iindaba ngezabelo zakho';

  @override
  String get undo => 'Buyisela';

  @override
  String get watchSort => 'Lungelelanisa';

  @override
  String get watchSortOwn => 'Ulandelelwano lwam';

  @override
  String get watchSortGainers => 'Ezinyuke kakhulu kuqala';

  @override
  String get watchSortLosers => 'Ezehle kakhulu kuqala';

  @override
  String get watchSortName => 'Nge-ticker (A–Z)';

  @override
  String get watchHint =>
      'Rhuqa isibambo ukuze ulungelelanise kwakhona, swayipha ekhohlo ukuze ususe. Umgca ubonisa iintsuku ezingama-30 ezidlulileyo.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: uhlalutyo lwakho lulungile.';
  }

  @override
  String alertFromCost(String price) {
    return 'Ukusuka kwixabiso lakho eliphakathi lokuthenga ($price):';
  }

  @override
  String get briefTitle => 'Namhlanje nezabelo zakho';

  @override
  String get briefButton => 'Shwankathela namhlanje';

  @override
  String get briefHint =>
      'Isishwankathelo esifutshane se-AI sendlela ipotifoliyo yakho nezo uzithandayo eziye zahamba ngayo namhlanje nokuba iindaba zamva nje zithini ngazo. Asisebenzisi uhlalutyo.';

  @override
  String get briefRefresh => 'Hlaziya';

  @override
  String get sectionEarnings => 'Iziphumo';

  @override
  String earningsNext(String date) {
    return 'Ingxelo elandelayo: $date';
  }

  @override
  String get earningsExpected => 'I-EPS elindelekileyo';

  @override
  String get earningsReported => 'I-EPS exeliweyo';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Ilingana okanye ingaphezulu kwe-EPS elindelekileyo kwi-$beats kwiikota ezi-$total zokugqibela',
      one:
          'Ilingana okanye ingaphezulu kwe-EPS elindelekileyo kwi-$beats kwikota e-1',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol ikhupha iziphumo zekota ngomso';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol ikhupha iziphumo zekota namhlanje';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return '$symbol: isahlulo esilindelekileyo namhlanje';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Malunga ne-$amount. Sirekhode kwipotifoliyo yakho xa sifikile.';
  }

  @override
  String get dividendRemindersTitle => 'Izikhumbuzi zesahlulo';

  @override
  String get dividendRemindersSubtitle =>
      'Isaziso ngosuku isahlulo esilindeleke ngalo ngokwesingqi seentlawulo ozirekhodileyo, ukuze usirekhode';

  @override
  String get earningsRemindersTitle => 'Izikhumbuzi zeziphumo';

  @override
  String get earningsRemindersSubtitle =>
      'Isaziso usuku olungaphambi kokuba izabelo zakho ezithandwayo okanye zepotifoliyo yakho zikhuphe iziphumo zekota';

  @override
  String addAllToFavorites(int count) {
    return 'Yongeza konke kwezithandwayo ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Ngenisa ukusuka kumfanekiso wesikrini';

  @override
  String get holdingsReading => 'Ifunda izabelo zakho…';

  @override
  String get holdingsReviewTitle => 'Izabelo ezifunyenweyo';

  @override
  String get holdingsReviewHint =>
      'Jonga amanani phambi kokuba uwongeze. Ixabiso lixabiso lakho eliphakathi lokuthenga ngesabelo ngasinye, ingelilo ixabiso lanamhlanje.';

  @override
  String get holdingsNoPrice =>
      'Akukho xabiso liphakathi lokuthenga emfanekisweni';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Yongeza izabelo ezi-$count',
      one: 'Yongeza isabelo esinye',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Akukho zabelo zifunyenweyo kulo mfanekiso. Zama umfanekiso wesikrini wephepha lezabelo okanye lezinto ozibambileyo kwibhrokha yakho.';

  @override
  String get week52Range => 'Uluhlu lweeveki ezi-52';

  @override
  String week52BelowHigh(String percent) {
    return '$percent ngaphantsi kweliphezulu leeveki ezi-52';
  }

  @override
  String get week52AtHigh => 'Kweliphezulu leeveki ezi-52';

  @override
  String get alertKindTrailing => 'Yehla ukusuka encotsheni';

  @override
  String get alertTrailingPercent => 'Ukwehla ukusuka encotsheni (%)';

  @override
  String get alertTrailingHint =>
      'Ilandela ixabiso linyuka: ikwazisa xa ixabiso lisehla ngolu hlobo ukusuka kwelona nqanaba liphezulu ukusukela oko uyisetile.';

  @override
  String alertDescTrailing(String percent) {
    return 'Ukwehla nge-$percent ukusuka encotsheni';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'incopho ukuza kuthi ga ngoku: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol yehle nge-$percent ukusuka encotsheni';
  }

  @override
  String get sectionInsiders => 'Urhwebo lwabangaphakathi';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ukuthenga $count',
      one: 'ukuthenga 1',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ukuthengisa $count',
      one: 'ukuthengisa 1',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Iyonke: izabelo $shares';
  }

  @override
  String get insiderBuy => 'Uthengile';

  @override
  String get insiderSell => 'Uthengisile';

  @override
  String get insiderHint =>
      'Ukuthenga nokuthengisa kwimarike evulekileyo okwenziwe ngabaphathi nabalawuli kwiintsuku ezingama-90 ezidlulileyo (SEC Form 4). Ukusetyenziswa kweenketho (options) nezabelo ezinikelweyo azibalwa.';

  @override
  String get insiderNone =>
      'Akukho kuthenga okanye kuthengisa kwabangaphakathi kwimarike evulekileyo kwiintsuku ezingama-90 ezidlulileyo.';

  @override
  String get analystTrend => 'Indlela izimvo eziguquke ngayo inyanga nenyanga';

  @override
  String get watchListAll => 'Zonke';

  @override
  String get watchListNew => 'Uluhlu olutsha';

  @override
  String get watchListName => 'Igama loluhlu';

  @override
  String get watchListRename => 'Thiya kwakhona uluhlu';

  @override
  String get watchListDelete => 'Cima uluhlu';

  @override
  String get watchListAddTo => 'Yongeza kuluhlu';

  @override
  String get watchListEmpty =>
      'Akukho zabelo kolu luhlu okwangoku. Cofa iqhosha loluhlu ecaleni kwesabelo ukuze usongeze.';

  @override
  String get portfolioAskTitle => 'Imibuzo ngepotifoliyo yakho';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'Ugcino lokhuseleko';

  @override
  String get backupSave => 'Gcina ikopi yokhuseleko';

  @override
  String get backupSaveHint =>
      'Ezithandwayo, uluhlu, ipotifoliyo, izilumkiso namanqaku akho kwifayile enye.';

  @override
  String get backupRestore => 'Buyisela kwikopi yokhuseleko';

  @override
  String get backupRestoreHint =>
      'Yongeza okukwifayile; akukho nto onayo ngoku icinywayo.';

  @override
  String get backupRestored => 'Ikopi yokhuseleko ibuyiselwe.';

  @override
  String get backupInvalid =>
      'Le fayile asiyiyo ikopi yokhuseleko ye-WhatStock.';

  @override
  String get allocationPositions => 'Izabelo';

  @override
  String get allocationSectors => 'Amacandelo';

  @override
  String get allocationCurrencies => 'Iimali';

  @override
  String get allocationAccounts => 'Iiakhawunti';

  @override
  String get compareReturn1y => 'Imbuyekezo yonyaka o-1';

  @override
  String get compareFromHigh => 'Ukusuka kweliphezulu leeveki ezi-52';

  @override
  String get briefAutoTitle => 'Isishwankathelo semihla ngemihla ntsasa nganye';

  @override
  String get briefAutoSubtitle =>
      '“Namhlanje nezabelo zakho” senziwa ngokuzenzekelayo emva kwe-7:00 kusasa xa i-app isasebenza; kwiikhompyutha, isaziso siya kukwazisa. Sisebenzisa umda wakho wemibuzo wemihla ngemihla, hayi uhlalutyo.';

  @override
  String get targetsButton => 'Ulwabiwo ekujoliswe kulo';

  @override
  String get targetsTitle => 'Ulwabiwo ekujoliswe kulo';

  @override
  String get targetsHint =>
      'Misela ukuba isabelo ngasinye kufuneka sibe nesiqephu esingakanani sepotfoliyo. Shiya indawo ingenanto ukuba akukho njongo. Emva koko i-app iza kubonisa into ofanele uyithenge okanye uyithengise.';

  @override
  String targetsSum(String percent) {
    return 'Iyonke: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Thenga ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Thengisa ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Kwinjongo';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol idlule i-EPS elindelekileyo';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol ayifikanga kwi-EPS elindelekileyo';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'I-EPS exeliweyo $actual, elindelekileyo $estimate';
  }

  @override
  String get newsExplain => 'Oku kuthetha ukuthini?';

  @override
  String get watchAlertAll => 'Isilumkiso sentshukumo enkulu yosuku';

  @override
  String get watchAlertAllHint =>
      'Isilumkiso sexabiso kwisabelo ngasinye kolu luhlu: siya kukhala xa sishukuma kangaka ngosuku olunye, siye phezulu okanye ezantsi. Ezo sele zinaso zigcina esazo.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kusetwe izilumkiso ezi-$count',
      one: 'Kusetwe isilumkiso esinye',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized =>
      'Thumela ngaphandle inzuzo efunyenweyo (CSV)';

  @override
  String get portfolioAnnualReturn => 'Inzuzo yonyaka';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / unyaka';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Inzuzo yonyaka ekalwe ngemali (XIRR): ithathela ingqalelo ukuba uthenge nini kwaye uthengise nini, ngoko imali eyongezwe kamva ayiyiphazamisi. Iboniswa xa sele kudlule unyaka omnye ubuncinane uthenge okokuqala; ii-dividend azibandakanywanga.';

  @override
  String get eventsAddToCalendar => 'Yongeza kwikhalenda (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Isilumkiso sepotifoliyo';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Isaziso xa ipotifoliyo yakho yonke ishukuma ngolu hlobo ngosuku olunye.';

  @override
  String get portfolioMoveAlertOff => 'Icinyiwe';

  @override
  String portfolioMoveUp(String percent) {
    return 'Ipotifoliyo yakho inyuke nge-$percent namhlanje';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Ipotifoliyo yakho yehle nge-$percent namhlanje';
  }

  @override
  String get whatIfTitle => 'Kunjani ukuba ubutyalile?';

  @override
  String get whatIfAmount => 'Isixa';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount etyalwe (ixesha: $period) ngoku ibiya kuba nexabiso';
  }

  @override
  String get whatIfNote =>
      'Isekelwe kwixabiso lesabelo kuphela: ii-dividend, iifizi neerhafu azibandakanywanga. Iingeniso zangaphambili azixeli kwangaphambili ezizayo.';

  @override
  String get watchShare => 'Yabelana ngoluhlu';

  @override
  String get watchImport => 'Yongeza ii-ticker';

  @override
  String get watchImportHint =>
      'Ncamathisela ii-ticker ezahlulwe ngeekoma, izithuba okanye imigca emitsha – umzekelo, uluhlu omnye umntu awabelane nawe ngalo.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kongezwe izabelo ezi-$count',
      one: 'Kongezwe isabelo esinye',
      zero: 'Akukho zabelo zintsha',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Ezinkulu kakhulu kuqala';

  @override
  String get positionsSortGain => 'Eyona nzuzo iphelele kuqala';

  @override
  String get positionsSortToday => 'Ezona zilungileyo namhlanje kuqala';

  @override
  String get chartMyBuys => 'Oko ukuthengileyo';

  @override
  String get chartMySells => 'Oko ukuthengisileyo';

  @override
  String get shortcutsTitle => 'Iindlela ezimfutshane zekhibhodi';

  @override
  String usMarketOpen(String time) {
    return 'Imarike yaseMelika ivuliwe · iza kuvalwa emva kwe-$time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Imarike yaseMelika ivaliwe · iza kuvulwa emva kwe-$time';
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
    return '$days iintsuku $hours h';
  }

  @override
  String get dividendGoalSet => 'Misela usukelo lwe-dividend lwenyanga';

  @override
  String get dividendGoalTitle => 'Usukelo lwe-dividend lwenyanga';

  @override
  String get dividendGoalAmount => 'I-dividend ngenyanga';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Malunga ne-$amount ngenyanga ngesivuno sanamhlanje · $percent · Usukelo: $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Malunga ne-$amount ngenyanga ngesivuno sanamhlanje · Usukelo lufikelelwe: $goal';
  }

  @override
  String get portfolioAccount => 'Iakhawunti';

  @override
  String get portfolioAccountHint => 'umz. TFSA (ayinyanzelekanga)';

  @override
  String get portfolioAccountAdd => 'Chaza iakhawunti';

  @override
  String get portfolioAccountsAll => 'Zonke iiakhawunti';

  @override
  String get portfolioAccountNote =>
      'Iintengiselwano nezahlulo zale akhawunti kuphela. Imali, usukelo kunye nohlalutyo lwe-AI ziboniswa phantsi kwe-\"Zonke iiakhawunti\".';

  @override
  String get portfolioNoAccount => 'Akukho akhawunti';

  @override
  String portfolioFee(String currency) {
    return 'Ifizi ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Yongeza ifizi';

  @override
  String portfolioFeeRow(String amount) {
    return 'Ifizi: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'Isishwankathelo sonyaka';

  @override
  String get portfolioProceeds => 'Ingeniso yokuthengisa';

  @override
  String get portfolioCostBasis => 'Iindleko zokuthenga';

  @override
  String get portfolioFeesPaid => 'Iifizi ezihlawuliweyo';

  @override
  String get portfolioAnnualSummaryNote =>
      'Izixa zikwimali yokuqala, aziguqulwanga. Ingeniso yokuthengisa sele kutsalwe ifizi yokuthengisa; iindleko zokuthenga ziquka ifizi yokuthenga (FIFO). Kwingxelo yakho yerhafu, guqula ngexabiso lotshintshiselwano elifunwa ligunya lerhafu.';

  @override
  String get portfolioShare => 'Yabelana ngeziphumo';

  @override
  String get portfolioShareHeading => 'Ipotifoliyo yam';

  @override
  String get portfolioTopHoldings => 'Iipozishini ezinkulu';

  @override
  String get portfolioShareNote =>
      'Kwabelwana ngeepesenti kuphela, hayi ngezixa zemali.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Iipozishini ezi-$count',
      one: 'Ipozishini e-$count',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'Ayilocebiso lotyalo-mali';

  @override
  String get contributionButton => 'Tyala imali entsha';

  @override
  String contributionAmount(String currency) {
    return 'Isixa sokutyala ($currency)';
  }

  @override
  String get contributionHint =>
      'Kuthengwa kuphela, akuthengiswa: iipozishini ezingaphantsi kakhulu kwenjongo yazo zifumana imali kuqala.';

  @override
  String contributionShares(String shares) {
    return '≈ izabelo $shares';
  }

  @override
  String contributionMissing(String symbols) {
    return 'Akukho xabiso langoku kwi-$symbols: azibandakanywanga kulwabiwo.';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'Ukuba inzuzo yonyaka ihlala injalo ($rate), uya kufikelela usukelo lwakho malunga nonyaka ka-$year.';
  }

  @override
  String get portfolioMaxDrawdown => 'Ukwehla okukhulu kakhulu';

  @override
  String get glossMaxDrawdown =>
      'Ukwehla okukhulu kakhulu kwexabiso lezabelo zakho ukusuka kwincopho yangaphambili ukuya kweyona ndawo iphantsi yamva, ngaphandle kwempembelelo yokuthenga nokuthengisa kwakho (kulinganiswe ngexesha). Kubonisa ukuba ipotifoliyo yakho sele yehle kangakanani ngokunzulu.';

  @override
  String watchSince(String date) {
    return 'Ukususela oko wasongeza kwezithandwayo ($date)';
  }

  @override
  String get portfolioSampleTry => 'Zama ngepotifoliyo yomzekelo';

  @override
  String get portfolioSampleBanner =>
      'Le yipotifoliyo yomzekelo. Yongeza ozithengileyo ecaleni kwayo, okanye uyisuse.';

  @override
  String get portfolioSampleRemove => 'Susa umzekelo';

  @override
  String get portfolioStopsAll =>
      'Isilumkiso sokwehla ukusuka encotsheni kuzo zonke iipozishini';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kusetwe izilumkiso ezi-$count',
      one: 'Kusetwe isilumkiso esinye',
      zero: 'Ipozishini nganye sele inaso esi silumkiso',
    );
    return '$_temp0';
  }

  @override
  String portfolioSinceSale(String percent) {
    return '$percent ukususela oko wasithengisa';
  }

  @override
  String get lotPreviewRealized => 'Efunyenweyo kule ntengiso (FIFO):';

  @override
  String lotPreviewAverage(String after, String before) {
    return 'Iindleko ezintsha eziphakathi: $after (ngoku $before)';
  }

  @override
  String get portfolioYtdReturn => 'Inzuzo yalo nyaka';

  @override
  String get glossTwrYtd =>
      'Inzuzo elinganiswe ngexesha ukususela ekuqaleni konyaka (okanye ukususela ekuthengeni kwakho kokuqala, ukuba bekukulo nyaka): usuku ngalunye lubala utshintsho lwezabelo obunazo ngolo suku, kwaye iintsuku zidityaniswa njengetyathanga – imali oyifakayo okanye oyikhuphayo ayiyonzuzo, ngoko ke inokuthelekiswa ne-index. Ngezantsi kwayo: i-index ekhethiweyo kwisithuba esifanayo.';

  @override
  String alertDistance(String price, String percent) {
    return 'Ngoku $price · kusele $percent';
  }

  @override
  String get watchSortSince => 'Ngotshintsho ukususela oko yongezwa';

  @override
  String get portfolioTodayMovers => 'Ezishukume kakhulu namhlanje:';

  @override
  String get lotNoteAdd => 'Yongeza inqaku';

  @override
  String get lotNoteBuyHint =>
      'Kutheni usithenga? Kuya kongezwa kumanqaku esabelo, kunye nomhla.';

  @override
  String get lotNoteSellHint =>
      'Kutheni usithengisa? Kuya kongezwa kumanqaku esabelo, kunye nomhla.';

  @override
  String get lotNoteBought => 'Kuthengiwe';

  @override
  String get positionHeld => 'Ixesha lokubamba';

  @override
  String durationMonths(int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: 'iinyanga ezi-$months',
      one: 'inyanga e-$months',
    );
    return '$_temp0';
  }

  @override
  String durationDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'iintsuku ezi-$days',
      one: 'usuku olu-$days',
    );
    return '$_temp0';
  }

  @override
  String positionHeldSince(String date) {
    return 'ukususela ngo-$date';
  }

  @override
  String lotPreviewWeight(String after, String before) {
    return 'Isiqephu sepotifoliyo emva koko: $after (ngoku $before)';
  }

  @override
  String lotFromCash(String amount) {
    return 'Hlawula ngemali (ngoku $amount)';
  }

  @override
  String lotToCash(String amount) {
    return 'Yongeza kwimali (ngoku $amount)';
  }

  @override
  String get onboardTitle4 => 'Landela ipotifoliyo yakho';

  @override
  String get onboardBody4 =>
      'Ngenisa i-export yebroker yakho (Revolut, Trading 212, IBKR, DEGIRO, Schwab…) okanye wongeze iintengiselwano ngesandla: bona inzuzo yakho xa ithelekiswa ne-index, izahlulo zakho nesishwankathelo sonyaka sengxelo yerhafu.';

  @override
  String get lotEdit => 'Hlela';

  @override
  String lotEditTitle(String symbol) {
    return 'Hlela intengiselwano · $symbol';
  }

  @override
  String get lotSave => 'Gcina';

  @override
  String dividendEditTitle(String symbol) {
    return 'Hlela isahlulo · $symbol';
  }

  @override
  String get activityTitle => 'Zonke iintengiselwano';

  @override
  String get activitySearchHint => 'Hluza nge-ticker';

  @override
  String get activityNoMatch => 'Akukho ntengiselwano ihambelana nesihluzi.';

  @override
  String portfolioImportDuplicates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ezi-$count sele zirekhodiwe, azongezwanga',
      one: 'Enye sele irekhodiwe, ayongezwanga',
    );
    return '$_temp0';
  }

  @override
  String get tickerChange => 'Ukutshintsha i-ticker';

  @override
  String tickerChangeTitle(String symbol) {
    return 'Ukutshintsha i-ticker · $symbol';
  }

  @override
  String get tickerChangeNew => 'I-ticker entsha';

  @override
  String get tickerChangeHint =>
      'Xa inkampani itshintsha i-ticker yayo (umz. FB → META): zonke iintengiselwano, izahlulo, ukwahlulwa kwezabelo, inqaku nezilumkiso zifuduselwa kwi-ticker entsha.';

  @override
  String tickerChanged(String symbol) {
    return 'Kufuduselwe ku-$symbol';
  }

  @override
  String get referralErrSignIn =>
      'Ngena nge-imeyile yakho ukuze usebenzise ikhowudi yomhlobo.';

  @override
  String get referralErrFull =>
      'Le khowudi sele isetyenziswe amaxesha onke avumelekileyo.';

  @override
  String get portfolioGoalSet => 'Misela usukelo';

  @override
  String get portfolioGoalTitle => 'Usukelo lwepotifoliyo';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · Usukelo: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Usukelo lufikelelwe: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Susa usukelo';

  @override
  String get alertEdit => 'Hlela isilumkiso';

  @override
  String get positionOpenLots => 'Zisekuwe (ezona zindala kuqala)';

  @override
  String get lotRemoved => 'Intengiselwano icinyiwe';

  @override
  String get alertDeleted => 'Isilumkiso sicinyiwe';

  @override
  String get alertsClearTriggered => 'Cima izilumkiso eziqalisiweyo';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kucinywe izilumkiso ezi-$count',
      one: 'Kucinywe isilumkiso esinye',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Isikrini sokuqala';

  @override
  String get allocationCountries => 'Amazwe';

  @override
  String get newsExplainNoteResearch =>
      'Ingcaciso ye-AI: ikhangela iinyani kwiwebhu, ivule inqaku kwaye ivavanye ukuba umthombo uthembeke kangakanani. Ayilocebiso lotyalo-mali. Sisebenzisa umda wakho wemibuzo wemihla ngemihla, hayi uhlalutyo.';

  @override
  String get sourceOfficial => 'Esemthethweni';

  @override
  String get sourcePressRelease => 'Ingxelo yoonondaba';

  @override
  String get sourceMajorNews => 'Umthombo omkhulu';

  @override
  String get sourceOpinion => 'Uluvo';

  @override
  String get earningsSummaryButton => 'Bekukho ntoni kwingxelo yamva nje?';

  @override
  String get earningsSummaryNote =>
      'Isishwankathelo se-AI sesibhengezo seziphumo zenkampani kunye neendaba zoshicilelo esizifumana kwiwebhu. Ayilocebiso lotyalo-mali. Sisebenzisa umda wakho wemibuzo wemihla ngemihla, hayi uhlalutyo.';

  @override
  String get compareLastSurprise => 'I-EPS yekota edlulileyo vs elindelekileyo';

  @override
  String get compareNextReport => 'Ingxelo elandelayo';

  @override
  String get resolvingDescription => 'Ifumanisa isabelo othetha ngaso…';

  @override
  String get instrumentTitle => 'Malunga nesi sixhobo';

  @override
  String get instrumentHint =>
      'Akukho profayile yenkampani yolu phawu – inokuba yi-ETF, ingxowa-mali okanye isatifikethi sedipozithi. Buza i-AI ukuba yintoni, iqulethe ntoni nokuba ixabisa kangakanani.';

  @override
  String get instrumentAsk => 'Yintoni le?';

  @override
  String get instrumentNote =>
      'Ingcaciso ye-AI esuka kwiphepha lengxowa-mali lomkhuphi nakwiisayithi zezemali ezifumana kwiwebhu. Ayilocebiso lotyalo-mali. Sisebenzisa umda wakho wemibuzo wemihla ngemihla, hayi uhlalutyo.';

  @override
  String suggestAskAi(String query) {
    return 'Buza i-AI: “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Akukho xabiso langoku kwi-$symbols.';
  }

  @override
  String get eventsRecentResults => 'Iziphumo ezisandula kuxelwa';

  @override
  String get saveToNotes => 'Gcina kumanqaku am';

  @override
  String get savedToNotes => 'Igciniwe kumanqaku akho';

  @override
  String get portfolioDividendsReceived => 'Izahlulo ezifunyenweyo';

  @override
  String get portfolioDividendsThisYear => 'Kulo nyaka';

  @override
  String get portfolioDividendsAllTime => 'Lonke ixesha';

  @override
  String get portfolioAddDividend => 'Yongeza isahlulo';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Imali efunyenweyo ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Umhla wentlawulo';

  @override
  String get portfolioDividendsEmpty =>
      'Akukho zahlulo zirekhodiweyo okwangoku. Zongeze ngesandla, okanye ungenise ifayile ye-export yebroker yakho – nemigca yayo yezahlulo iyathathwa.';

  @override
  String get portfolioSplit => 'Ukwahlulwa kwezabelo';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Ukwahlulwa kwezabelo: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Ukuthenga nokuthengisa okunomhla ongaphambi kokwahlulwa kuyalungiswa: inani lezabelo liyaphindaphindwa kwaye ixabiso lesabelo ngasinye liyahlulwa, ngoko iindleko zihlala zifana.';

  @override
  String get portfolioSplitRatio => 'Umlinganiselo (ezintsha : ezindala)';

  @override
  String get portfolioSplitRatioError =>
      'Faka umlinganiselo ofana no-10:1, okanye 1:10 wokwahlulwa okubuyela umva.';

  @override
  String get portfolioSplitDate => 'Umhla wokwahlulwa';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Ukwahlulwa kwezabelo $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Ukwahlulwa kwezabelo kucinyiwe';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ukwahlulwa kwezabelo oku-$count kongeziwe',
      one: 'Ukwahlulwa kwezabelo oku-1 kongeziwe',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Izahlulo ezi-$count zongeziwe',
      one: 'Isahlulo esi-1 songeziwe',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Khupha izahlulo (CSV)';

  @override
  String get portfolioDividendDeleted => 'Isahlulo sicinyiwe';

  @override
  String get portfolioDividendsHint =>
      'Izixa njengoko zifike kwiakhawunti yakho, ngemali yentlawulo; amanani apheleleyo aguqulelwa ngexabiso lanamhlanje. Kwingxelo yakho yerhafu, sebenzisa ingxelo yebroker yakho.';

  @override
  String get awayTitle => 'Ngexesha wawungekho';

  @override
  String awaySince(String when) {
    return 'Ukususela $when';
  }

  @override
  String get awayQuiet => 'Akukho nto itshintshe kakhulu.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Izilumkiso $count ziqalisiwe',
      one: 'Isilumkiso 1 siqalisiwe',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Iziphumo ezipapashiweyo: $symbols';
  }

  @override
  String get moveWhyButton => 'Kutheni sishukuma namhlanje?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent namhlanje';
  }

  @override
  String get moveWhyNote =>
      'Ingcaciso ye-AI esuka kwiindaba zanamhlanje ezifumaneka kwi-intanethi; isizathu sokwenyani sisenokungaziwa okanye sahluke. Ayisicebiso sotyalo-mali. Isebenzisa umlinganiselo wakho wemibuzo wosuku, hayi uhlalutyo.';

  @override
  String get sectionTechnical => 'Umfanekiso wobuchwepheshe';

  @override
  String get labelSma50 => 'Umndilili weentsuku ezingama-50';

  @override
  String get labelSma200 => 'Umndilili weentsuku ezingama-200';

  @override
  String get labelRsi => 'RSI (iintsuku ezili-14)';

  @override
  String get labelVolatility30 => 'Ukuguquguquka (iintsuku ezingama-30)';

  @override
  String techAbove(String percent) {
    return '$percent ngaphezulu';
  }

  @override
  String techBelow(String percent) {
    return '$percent ngaphantsi';
  }

  @override
  String get techOverbought => 'ithengwe ngokugqithisileyo';

  @override
  String get techOversold => 'ithengisiwe ngokugqithisileyo';

  @override
  String get techNeutral => 'phakathi';

  @override
  String get techGoldenCross =>
      'Umndilili weentsuku ezingama-50 ungaphezulu kowe-200 – ngokufunda kwesiqhelo ngumkhwa onyukayo.';

  @override
  String get techDeathCross =>
      'Umndilili weentsuku ezingama-50 ungaphantsi kowe-200 – ngokufunda kwesiqhelo ngumkhwa ohlayo.';

  @override
  String get glossSma50 =>
      'Umndilili wexabiso lokuvala leentsuku ezingama-50 zokugqibela zorhwebo. Ixabiso elingaphezulu kwawo lidla ngokubonwa njengamandla exesha elifutshane, elingaphantsi njengobuthathaka.';

  @override
  String get glossSma200 =>
      'Umndilili wexabiso lokuvala leentsuku ezingama-200 zokugqibela zorhwebo – umgca wesiqhelo womkhwa wexesha elide. Abatyali-mali abaninzi bathatha ixabiso elingaphezulu kwawo njengomkhwa onyukayo wexesha elide.';

  @override
  String get glossRsi =>
      'Isalathisi samandla athelekiswayo: sithelekisa inzuzo yakutshanje nelahleko yakutshanje kwisikali se-0–100. Ngaphezulu kwe-70 isitokhwe sidla ngokuthiwa sithengwe ngokugqithisileyo (sinyuke ngokukhawuleza), ngaphantsi kwe-30 sithengisiwe ngokugqithisileyo – kodwa umkhwa owomeleleyo unokuhlala apho ixesha elide.';

  @override
  String get glossVolatility =>
      'Indlela ixabiso elijikajika ngayo imihla ngemihla, lilinganiselwe kunyaka: i-20% ithetha ukuba unyaka oqhelekileyo uhamba phakathi kwe-±20% malunga. Ukuguquguquka okuphezulu kuthetha ukuhamba okukhulu kumacala omabini.';

  @override
  String get techNote =>
      'Kubalwe kumaxabiso okuvala emihla ngemihla. Iimpawu zobuchwepheshe zichaza okudlulileyo, hayi ikamva.';

  @override
  String portfolioAbove200(int above, int count) {
    return 'Izabelo ezi-$above kwezi-$count zingaphezulu komndilili wazo weentsuku ezingama-200';
  }

  @override
  String get watchSignalsTitle => 'Imiqondiso';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · ithengisiwe ngokugqithisileyo';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · ithengwe ngokugqithisileyo';
  }

  @override
  String get signalCrossedAbove =>
      'inqumle ngaphezulu komndilili weentsuku ezingama-200';

  @override
  String get signalCrossedBelow =>
      'inqumle ngaphantsi komndilili weentsuku ezingama-200';

  @override
  String get signalAlertsTitle => 'Izaziso zemiqondiso yobuchwepheshe';

  @override
  String get signalAlertsSubtitle =>
      'Kanye ngosuku, xa isabelo osilandelayo sithengisiwe ngokugqithisileyo okanye sithengwe ngokugqithisileyo (RSI), okanye ixabiso laso linqumla umndilili weentsuku ezingama-200.';

  @override
  String get signalAlertsNotification => 'Imiqondiso yobuchwepheshe';

  @override
  String get glossaryPageTitle => 'Uluhlu lwamagama';

  @override
  String get glossaryPageSubtitle =>
      'Iingcaciso ezilula zalo lonke inani eliboniswa yi-app, ukusuka ku-P/E ukuya ku-RSI';

  @override
  String get glossarySearchHint => 'Khangela kuluhlu lwamagama';

  @override
  String get portfolioCash => 'Imali';

  @override
  String get portfolioCashTitle => 'Ibhalansi yemali';

  @override
  String get portfolioCashHint =>
      'Imali engatyalwanga kubroker wakho, ngohlobo lwemali. Ibalwa kwixabiso elipheleleyo nakulwabiwo; hayi kwinzuzo.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Isixa ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Misela ibhalansi yemali';

  @override
  String get portfolioDividendsByMonth => 'Ngenyanga';

  @override
  String get dividendsLegendReceived => 'Ezifunyenweyo';

  @override
  String get dividendsLegendExpected => 'Ezilindelekileyo';

  @override
  String get portfolioDividendsExpected => 'Ezilindelekileyo ngokulandelayo';

  @override
  String get portfolioDividendsExpectedNote =>
      'Ziqikelelwe kwimihla nakwizixa zeentlawulo ozirekhodileyo; iinkampani zinokuzitshintsha okanye zizitsibe.';

  @override
  String portfolioDividendAround(String date) {
    return 'malunga ne-$date';
  }
}
