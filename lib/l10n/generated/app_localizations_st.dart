// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Southern Sotho (`st`).
class AppLocalizationsSt extends AppLocalizations {
  AppLocalizationsSt([String locale = 'st']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'Nka setshwantsho sa shere mme o ithute tsohle ka yona.';

  @override
  String get homeHint =>
      'Setifikeiti sa dishere, sekirini sa app ya borokara, koranta kapa logo ya khampani – eng kapa eng e tsebahatsang shere.';

  @override
  String get takePhoto => 'Nka setshwantsho';

  @override
  String get chooseFromGallery => 'Kgetha ho tswa galaring';

  @override
  String get chooseImage => 'Kgetha setshwantsho';

  @override
  String get enterTickerManually => 'Kenya ticker ka letsoho';

  @override
  String get tickerInputLabel => 'Letshwao la ticker';

  @override
  String get tickerInputHint => 'mohl. AAPL';

  @override
  String get lookUp => 'Batla';

  @override
  String demoModeBanner(String symbols) {
    return 'Mokgwa wa pontsho – ha ho senotlolo sa data ya mmaraka se hlophisitsweng. Data ya mohlala e fumaneha bakeng sa: $symbols.';
  }

  @override
  String get recognizing => 'E hlahloba setshwantsho…';

  @override
  String get loadingData => 'E laisha data…';

  @override
  String get noCandidatesTitle => 'Ha ho shere e lemohilweng';

  @override
  String get noCandidatesBody =>
      'Ha re a kgona ho lemoha shere setshwantshong sena. Leka setshwantsho se hlakileng haholwanyane, kapa o kenye ticker ka letsoho.';

  @override
  String get whatWeSaw => 'Seo re se boneng';

  @override
  String get chooseCandidateTitle => 'O ne o bolela shere efe?';

  @override
  String confidencePercent(int percent) {
    return '$percent% ya tiiso';
  }

  @override
  String get settings => 'Ditlhophiso';

  @override
  String get language => 'Puo';

  @override
  String get systemLanguage => 'Tlwaelo ya sistimi';

  @override
  String get about => 'Mabapi le app';

  @override
  String get disclaimer =>
      'App ena e fana ka tlhahisoleseding feela mme hase keletso ya ho tsetela. Data e ka dieha kapa ya se nepahale.';

  @override
  String dataSource(String source) {
    return 'Mohlodi wa data: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Temoho: $source';
  }

  @override
  String get retry => 'Leka hape';

  @override
  String get cancel => 'Khansela';

  @override
  String get ok => 'Ho lokile';

  @override
  String get close => 'Kwala';

  @override
  String get errorGeneric => 'Ho hlahile phoso.';

  @override
  String get errorSectionUnavailable => 'Karolo ena ha e a kgona ho laishwa.';

  @override
  String get notAvailable => 'ha e eo';

  @override
  String get sectionIdentity => 'Boitsebiso';

  @override
  String get sectionPrice => 'Theko';

  @override
  String get sectionValuation => 'Tekanyetso ya boleng';

  @override
  String get sectionFinancials => 'Dipalo tsa ditjhelete';

  @override
  String get sectionDividend => 'Dividende';

  @override
  String get sectionProfile => 'Profaele ya khampani';

  @override
  String get sectionAnalysts => 'Maikutlo a bahlahlobi';

  @override
  String get sectionNews => 'Ditaba';

  @override
  String get sectionRecognition => 'Dintlha tsa temoho';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Mmaraka wa dishere';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Mofuta wa tjhelete';

  @override
  String get labelCountry => 'Naha';

  @override
  String get labelIndustry => 'Indasteri';

  @override
  String get labelSector => 'Lekala';

  @override
  String get labelWebsite => 'Websaete';

  @override
  String get labelIpoDate => 'Letsatsi la IPO';

  @override
  String get labelMarketCap => 'Boleng ba mmaraka';

  @override
  String get labelSharesOutstanding => 'Dishere tse ntshitsweng';

  @override
  String get labelEmployees => 'Basebetsi';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Ntlokgolo';

  @override
  String get labelDescription => 'Tlhaloso';

  @override
  String get labelLastPrice => 'Theko ya ho qetela';

  @override
  String get labelChange => 'Phetoho';

  @override
  String get labelOpen => 'Ho bula';

  @override
  String get labelDayHigh => 'Bophahamo ba letsatsi';

  @override
  String get labelDayLow => 'Botlase ba letsatsi';

  @override
  String get labelPreviousClose => 'Ho kwala ho fetileng';

  @override
  String get labelWeek52High => 'Bophahamo ba dibeke tse 52';

  @override
  String get labelWeek52Low => 'Botlase ba dibeke tse 52';

  @override
  String get labelAverageVolume10d => 'Karolelano ya kgwebo (matsatsi a 10)';

  @override
  String updatedAt(String time) {
    return 'E ntjhafaditswe $time';
  }

  @override
  String get labelPeTrailing => 'P/E (e fetileng)';

  @override
  String get labelPeForward => 'P/E (e tlang)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / phallo ya tjhelete e lokolohileng';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Lekeno (TTM)';

  @override
  String get labelNetIncomeTtm => 'Phaello e hlwekileng (TTM)';

  @override
  String get labelGrossMargin => 'Sekgahla sa phaello ya kakaretso';

  @override
  String get labelOperatingMargin => 'Sekgahla sa phaello ya tshebetso';

  @override
  String get labelNetMargin => 'Sekgahla sa phaello e hlwekileng';

  @override
  String get labelRoe => 'Phaello ho tjhelete ya beng';

  @override
  String get labelRoa => 'Phaello ho thepa';

  @override
  String get labelDebtToEquity => 'Dikoloto / tjhelete ya beng';

  @override
  String get labelCurrentRatio => 'Sekgahla sa hona jwale';

  @override
  String get labelRevenueGrowth => 'Kgolo ya lekeno (YoY)';

  @override
  String get labelEpsGrowth => 'Kgolo ya EPS (YoY)';

  @override
  String get labelDividendYield => 'Poelo ya dividende';

  @override
  String get labelDividendPerShare => 'Dividende ka shere';

  @override
  String get labelPayoutRatio => 'Sekgahla sa tefo';

  @override
  String get labelConsensus => 'Tumellano';

  @override
  String get ratingStrongBuy => 'Reka haholo';

  @override
  String get ratingBuy => 'Reka';

  @override
  String get ratingHold => 'Tshwara';

  @override
  String get ratingSell => 'Rekisa';

  @override
  String get ratingStrongSell => 'Rekisa haholo';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Bahlahlobi ba $count',
      one: 'Mohlahlobi a le mong',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Nako: $period';
  }

  @override
  String get noNews => 'Ha ho ditaba tsa morao-rao.';

  @override
  String get openArticle => 'Bula sengolwa';

  @override
  String get openLinkFailed => 'Ha e a kgona ho bula lehokela.';

  @override
  String get recognitionSummary => 'Kakaretso';

  @override
  String get recognitionEvidence => 'Hobaneng re nahana jwalo';

  @override
  String get recognitionRawText => 'Mongolo o badilweng setshwantshong';

  @override
  String get errMissingAnthropicKey =>
      'Temoho ya ditshwantsho ha e a hlophiswa (ha ho ANTHROPIC_API_KEY). Kenya ticker ka letsoho.';

  @override
  String get errRecognitionUnreachable =>
      'Ha e a kgona ho fihlella tshebeletso ya temoho. Hlahloba kgokahano ya hao ya inthanete.';

  @override
  String errRecognitionHttp(String status) {
    return 'Tshebeletso ya temoho e kgutlisitse phoso (HTTP $status).';
  }

  @override
  String get errRecognitionRefused => 'Tshebeletso ya temoho ha e a kgona ho sebetsa setshwantsho sena.';

  @override
  String get errRecognitionTruncated => 'Karabo ya temoho e kgaohile. Ka kopo leka hape.';

  @override
  String get errRecognitionBadResponse => 'Karabo e sa lebellwang ho tswa tshebeletsong ya temoho.';

  @override
  String get errRecognitionEmpty => 'Tshebeletso ya temoho e kgutlisitse karabo e se nang letho.';

  @override
  String get errMissingFinnhubKey => 'Data ya mmaraka ha e a hlophiswa (ha ho FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Ha e a kgona ho fihlella tshebeletso ya data ya mmaraka. Hlahloba kgokahano ya hao ya inthanete.';

  @override
  String get errMarketRateLimited => 'Dikopo di ngata haholo ho tshebeletso ya data ya mmaraka. Ka kopo ema motsotso.';

  @override
  String errMarketHttp(String status) {
    return 'Tshebeletso ya data ya mmaraka e kgutlisitse phoso (HTTP $status).';
  }

  @override
  String get errMarketBadResponse => 'Karabo e sa lebellwang ho tswa tshebeletsong ya data ya mmaraka.';

  @override
  String errNoQuote(String symbol) {
    return 'Ha ho data ya theko e fumanweng bakeng sa $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Ha ho profaele ya khampani e fumanweng bakeng sa $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Mokgwa wa pontsho o tshehetsa $symbols feela. Kenya FINNHUB_API_KEY bakeng sa data ya nako ya jwale.';
  }

  @override
  String errUnknown(String detail) {
    return 'Ho hlahile phoso: $detail';
  }

  @override
  String get newSearch => 'Patlo e ntjha';

  @override
  String get recentSearches => 'Tsa morao-rao';

  @override
  String get noRecentSearches => 'Ha ho so be le dipatlo tsa morao-rao.';

  @override
  String get clearRecent => 'Hlakola tsa morao-rao';

  @override
  String get greeting => 'Re shebe shere efe?';

  @override
  String get searchHint => 'Ticker kapa lebitso la khampani';

  @override
  String get attachImage => 'Hokela setshwantsho';

  @override
  String get searchResultsTitle => 'Diphetho tsa patlo';

  @override
  String errNoResults(String query) {
    return 'Ha ho dishere tse fumanweng bakeng sa “$query”.';
  }

  @override
  String get quickBarHint => 'Ngola ticker kapa lebitso la khampani…';

  @override
  String get openFullWindow => 'Bula fensetere';

  @override
  String hotkeyHint(String shortcut) {
    return 'Tobetsa $shortcut kae kapa kae ho bitsa WhatStock.';
  }

  @override
  String get trayOpen => 'Bula WhatStock';

  @override
  String get trayQuickSearch => 'Patlo e potlakileng';

  @override
  String get trayQuit => 'Tswa';

  @override
  String get appearance => 'Ponahalo';

  @override
  String get themeSystem => 'Sistimi';

  @override
  String get themeDark => 'Lefifi';

  @override
  String get themeLight => 'Lesedi';

  @override
  String get back => 'Morao';

  @override
  String get aiSectionTitle => 'Tlhahlobo ya AI';

  @override
  String get aiIntro =>
      'Kakaretso e qaqileng e ngotsweng ke AI: kakaretso ya ditaba tsa morao-rao, kgwebo, matla, dikotsi le dintlha tse patehileng, boleng, ponelopele ya theko e nang le maemo a ka bang teng ho tswa mahlakoreng a kelello, a setjhaba, a tekheniki le a moruo o moholo, le seo o lokelang ho se shebisisa.';

  @override
  String get aiGenerate => 'Etsa tlhahlobo';

  @override
  String get aiRegenerate => 'Etsa hape';

  @override
  String get aiGenerating => 'E lokisa tlhahlobo… sena se ka nka motsotso kapa e mmedi.';

  @override
  String get aiSources => 'Mehlodi';

  @override
  String aiGeneratedAt(String time) {
    return 'E entswe $time';
  }

  @override
  String get aiDisclaimer =>
      'Tlhahlobo e entsweng ke AI e thehilwe hodima data ya setjhaba le ditaba tsa morao-rao. E ka ba le diphoso kapa ya se be ya morao-rao, mme hase keletso ya ho tsetela.';

  @override
  String get errAiNotConfigured => 'Tlhahlobo ya AI ha e a hlophiswa (ha ho ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable => 'Ha e a kgona ho fihlella tshebeletso ya AI. Hlahloba kgokahano ya hao ya inthanete.';

  @override
  String errAiHttp(String status) {
    return 'Tshebeletso ya AI e kgutlisitse phoso (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Tshebeletso ya AI e hanne ho hlahloba shere ena.';

  @override
  String get errAiBadResponse => 'Karabo e sa lebellwang ho tswa tshebeletsong ya AI.';

  @override
  String get sectionChart => 'Kerafo ya theko';

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
  String get chartUnavailable => 'Histori ya theko ha e fumanehe ho tswa mohloding wa data wa hona jwale.';

  @override
  String get sectionStatements => 'Ditlaleho tsa ditjhelete (tsa selemo)';

  @override
  String get labelFiscalYear => 'Selemo sa ditjhelete';

  @override
  String get labelRevenue => 'Lekeno';

  @override
  String get labelNetIncome => 'Phaello e hlwekileng';

  @override
  String get labelTotalAssets => 'Kakaretso ya thepa';

  @override
  String get labelTotalLiabilities => 'Kakaretso ya dikoloto';

  @override
  String get labelEquity => 'Tjhelete ya beng ba dishere';

  @override
  String get labelOperatingCashFlow => 'Phallo ya tjhelete ya tshebetso';

  @override
  String get statementsUnavailable => 'Ditlaleho tsa ditjhelete tse tlalehilweng ha di fumanehe bakeng sa shere ena.';

  @override
  String get launchAtLogin => 'Qala ha o kena';

  @override
  String get hotkeyLabel => 'Khutsufatso ya kakaretso';

  @override
  String get hotkeyRecordHint => 'Tobetsa mona, ebe o tobetsa motswako o motjha wa dikonopo';

  @override
  String get hotkeyReset => 'Kgutlisetsa tlwaelong';

  @override
  String get pasteImage => 'Kgomaretsa setshwantsho ho tswa klipbotong';

  @override
  String get errClipboardNoImage => 'Ha ho setshwantsho klipbotong.';

  @override
  String get favorites => 'Tseo o di ratang';

  @override
  String get addToFavorites => 'Kenya ho tseo o di ratang';

  @override
  String get removeFromFavorites => 'Tlosa ho tseo o di ratang';

  @override
  String get noFavorites => 'Ha ho so be le tseo o di ratang. Tobetsa naledi shereng ho e kenya.';

  @override
  String get displayCurrency => 'Mofuta wa tjhelete o bontshwang';

  @override
  String get displayCurrencyNone => 'Tjhelete ya shere feela';

  @override
  String labelConverted(String currency) {
    return '≈ ka $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Sekgahla: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Dintjhafatso';

  @override
  String currentVersion(String version) {
    return 'Mofuta $version';
  }

  @override
  String get autoUpdate => 'Kenya dintjhafatso ka boiketsetso';

  @override
  String get checkForUpdates => 'Hlahloba dintjhafatso';

  @override
  String get updateChecking => 'E hlahloba dintjhafatso…';

  @override
  String get updateUpToDate => 'O na le mofuta wa morao-rao.';

  @override
  String updateAvailable(String version) {
    return 'Mofuta $version o a fumaneha.';
  }

  @override
  String get updateDownloading => 'E dawunelouda ntjhafatso ka morao…';

  @override
  String get updateDownloaded => 'Ntjhafatso e se e loketse. Qala hape ho e kenya.';

  @override
  String get updateNow => 'Ntjhafatsa';

  @override
  String get restartNow => 'Qala hape';

  @override
  String get updatesViaStore => 'Dintjhafatso di tla ka boiketsetso ka lebenkele la di-app.';

  @override
  String get updateCheckFailed => 'Ha e a kgona ho hlahloba dintjhafatso.';

  @override
  String get subscription => 'Ingodiso';

  @override
  String get planTrial => 'Teko';

  @override
  String get planNormal => 'Tlwaelo';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Ha ho moralo o sebetsang';

  @override
  String planAnalysesPerMonth(int count) {
    return 'Ditlhahlobo tse $count ka kgwedi';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Teko ya mahala ya matsatsi a $days e nang le ditlhahlobo tse $count';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Ho setse matsatsi a $days a teko',
      one: 'Ho setse letsatsi le le leng la teko',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired => 'Teko ya hao ya mahala e fedile. Kgetha moralo ho tswela pele ka ditlhahlobo.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Ho setse ditlhahlobo tse $remaining ho tse $total nakong ena';
  }

  @override
  String extraCredits(int count) {
    return 'Ditlhahlobo tse eketsehileng tse $count';
  }

  @override
  String renewsOn(String date) {
    return 'E ntjhafala ka $date';
  }

  @override
  String get choosePlan => 'Kgetha moralo';

  @override
  String get currentPlan => 'Moralo wa hona jwale';

  @override
  String get subscribe => 'Ingodise';

  @override
  String get perMonth => '/ kgwedi';

  @override
  String get extraPacksTitle => 'O hloka tse ding? Reka ditlhahlobo tse eketsehileng';

  @override
  String get extraPacksHint =>
      'Ditlhahlobo tse eketsehileng ha di fele nako mme di sebediswa ka mora kabelo ya hao ya kgwedi.';

  @override
  String get buy => 'Reka';

  @override
  String get restorePurchases => 'Kgutlisa ditheko';

  @override
  String get manageSubscription => 'Laola ingodiso';

  @override
  String get purchaseSuccess => 'Re a leboha! Theko ya hao e a sebetsa.';

  @override
  String get purchasePending => 'Theko e emetse…';

  @override
  String get purchaseFailed => 'Theko ha e a kgona ho phethelwa.';

  @override
  String get purchaseCanceled => 'Theko e khanseletswe.';

  @override
  String get billingUnavailable =>
      'Ditheko ha di eso fumanehe sethaleng sena. Ingodise ka fono ya hao kapa ka Mac; moralo wa hao o tla sebetsa sesebedisweng se seng le se seng.';

  @override
  String get errQuotaExceeded =>
      'Ha o sa na ditlhahlobo nakong ena. Ntlafatsa moralo wa hao kapa o reke ditlhahlobo tse eketsehileng.';

  @override
  String get errTrialExpired => 'Teko ya hao ya mahala e fedile. Kgetha moralo ho tswela pele.';

  @override
  String get errNoPlan => 'Ho hlokahala moralo o sebetsang bakeng sa tlhahlobo ya AI.';

  @override
  String get viewPlans => 'Sheba meralo';

  @override
  String get usageTitle => 'Tshebediso';

  @override
  String get demoPurchaseNote => 'Tefo ya pontsho: ditheko di etsiswa feela sethaleng sena.';

  @override
  String get mostPopular => 'E ratwang haholo';

  @override
  String get bestValue => 'Boleng bo botle ka ho fetisisa';

  @override
  String get planFeaturesCommon =>
      'Temoho ya ditshwantsho, data ya nako ya jwale, dikerafo, tseo o di ratang le dipuo tsohle tse 120 di kenyelleditswe moralong o mong le o mong. Kabelo e akaretsa ditlhahlobo tsa AI.';

  @override
  String get searchLanguages => 'Batla dipuo…';

  @override
  String get noLanguageMatch => 'Ha ho puo e tsamaellanang.';

  @override
  String get aiSettings => 'Tlhahlobo ya AI';

  @override
  String get aiLength => 'Bolelele';

  @override
  String get aiDepthBrief => 'Kgutshwanyane';

  @override
  String get aiDepthStandard => 'Mahareng';

  @override
  String get aiDepthDeep => 'E qaqileng';

  @override
  String get aiDepthBriefDesc => 'Dintlha tsa bohlokwa, ka potlako.';

  @override
  String get aiDepthStandardDesc => 'Tlaleho e felletseng e nang le dikarolo tsohle.';

  @override
  String get aiDepthDeepDesc =>
      'Dipatlo tse ngata tsa inthanete, papiso le bahlodisani le dintlha tse qaqileng haholwanyane.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Mantswe a ka bang $min–$max';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'e sebedisa ditlhahlobo tse $count',
      one: 'e sebedisa tlhahlobo e le nngwe',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Boemo ba mmadi';

  @override
  String get aiReaderBeginner => 'Moqadi';

  @override
  String get aiReaderExperienced => 'Ya nang le boiphihlelo';

  @override
  String get aiReaderBeginnerDesc => 'Puo e bonolo; lereo le leng le le leng la tekheniki le a hlaloswa.';

  @override
  String get aiReaderExperiencedDesc => 'Mongolo o teteaneng o nang le mareo a tlwaelehileng a ditjhelete.';

  @override
  String get aiCounterArgument => 'Kganetso e matla ka ho fetisisa';

  @override
  String get aiCounterArgumentDesc =>
      'Kakaretso kamehla e qetella ka kganetso e matla ka ho fetisisa kgahlanong le qeto ya yona.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ho fihla ho dipatlo tse $count tsa inthanete tlhahlobong ka nngwe ka moralo wa hao',
      one: 'Ho fihla ho patlo e le nngwe ya inthanete tlhahlobong ka nngwe ka moralo wa hao',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Dipatlo tsa inthanete ka bolelele ba Mahareng ho ya ka moralo: Tlwaelo $normal, Pro $pro, Max $max, Ultra $ultra. Kgutshwanyane e sebedisa tse 2 tse fokolang, E qaqileng tse 2 tse eketsehileng.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ho fihla ho dipatlo tse $count tsa inthanete',
      one: 'ho fihla ho patlo e le nngwe ya inthanete',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dipatlo tse $count tsa inthanete tlhahlobong ka nngwe',
      one: 'Patlo e le nngwe ya inthanete tlhahlobong ka nngwe',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Bolelele bona bo hloka ditlhahlobo tse $needed, empa ho setse tse $left feela. Kgetha bolelele bo kgutshwanyane ho Ditlhophiso kapa o fumane ditlhahlobo tse ding.';
  }

  @override
  String get outlookMarketMood => 'Maikutlo a mmaraka';

  @override
  String get moodVeryPessimistic => 'Tshepo e tlase haholo';

  @override
  String get moodPessimistic => 'Tshepo e tlase';

  @override
  String get moodNeutral => 'Mahareng';

  @override
  String get moodOptimistic => 'Tshepo e hodimo';

  @override
  String get moodVeryOptimistic => 'Tshepo e hodimo haholo';

  @override
  String get scenarioBull => 'Boemo bo botle';

  @override
  String get scenarioBase => 'Boemo ba motheo';

  @override
  String get scenarioBear => 'Boemo bo bobe';

  @override
  String outlookCurrentPrice(String price) {
    return 'Theko ya hona jwale: $price';
  }

  @override
  String get outlookKeyLevels => 'Maemo a bohlokwa';

  @override
  String get keyLevelSupport => 'Tshehetso';

  @override
  String get keyLevelResistance => 'Kganelo';

  @override
  String get keyLevelAnchor => 'Tshupiso';

  @override
  String get upcomingEvents => 'Diketsahalo tse tlang';

  @override
  String get outlookChartNote => 'Mekgahlelo ke ya tataiso feela; menyetla ke dikakanyo, hase dipolelopele.';

  @override
  String get accountTitle => 'Akhaonto';

  @override
  String get signIn => 'Kena';

  @override
  String get signOut => 'Tswa';

  @override
  String get notSignedIn => 'Ha o a kena';

  @override
  String get accountBenefit => 'Kena e le hore ingodiso ya hao e sebetse disebedisweng tsohle tsa hao.';

  @override
  String get accountSyncedNote =>
      'Ingodiso ya hao le ditlhahlobo tse setseng di a tshwana sesebedisweng se seng le se seng.';

  @override
  String get signInTitle => 'Kena ho WhatStock';

  @override
  String get emailLabel => 'Aterese ya imeile';

  @override
  String get continueWithEmail => 'Tswela pele ka imeile';

  @override
  String codeSentTo(String email) {
    return 'Re rometse khoutu ya dinomoro tse 6 ho $email. E sebetsa metsotso e 10.';
  }

  @override
  String get codeLabel => 'Khoutu ya ho kena';

  @override
  String get resendCode => 'Romela khoutu e ntjha';

  @override
  String get useDifferentEmail => 'Sebedisa imeile e nngwe';

  @override
  String get errInvalidCode => 'Khoutu e fosahetse kapa nako ya yona e fetile.';

  @override
  String get errInvalidEmail => 'Ka kopo kenya aterese ya imeile e nepahetseng.';

  @override
  String get errSignInFailed => 'Ho kena ho hlolehile. Hlahloba kgokahano ya hao mme o leke hape.';

  @override
  String get checkoutWaiting => 'Phethela tefo sebatling sa hao. App e tla ntjhafala ka boiketsetso ha o qetile.';

  @override
  String get paymentViaStripe => 'Tefo e sireletsehileng sebatling ka Stripe. Khansela nako efe kapa efe.';

  @override
  String get paymentViaStore =>
      'O lefiswa ka akhaonto ya hao ya App Store kapa Google Play. Khansela nako efe kapa efe ditlhophisong tsa lebenkele.';

  @override
  String get keySpace => 'Space';

  @override
  String get doubleOptionTitle => 'Tobetsa Option habedi';

  @override
  String get doubleOptionSubtitle => 'Ho tobetsa konopo ya Option habedi ka potlako le hona ho bitsa WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Hore e sebetse le ho di-app tse ding, dumella WhatStock ho System Settings → Privacy & Security → Input Monitoring, ebe o bula app hape.';

  @override
  String get openSystemSettings => 'Bula System Settings';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Tobetsa $shortcut kapa tobetsa Option habedi kae kapa kae ho bitsa WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Ho ka etsahala haholo';

  @override
  String get longTermToday => 'Kajeno';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: 'dilemo tse $years',
      one: 'selemo se le seng',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range ka selemo';
  }

  @override
  String longTermLikely(String price) {
    return 'monyetla o moholo: $price';
  }

  @override
  String get confidenceLow => 'Tiiso e tlase';

  @override
  String get confidenceMedium => 'Tiiso e mahareng';

  @override
  String get confidenceHigh => 'Tiiso e hodimo';

  @override
  String get longTermNote =>
      'Mekgahlelo ya nako e telele e itshetlehile ka dikakanyo tse boletsweng mme e a atoloha ha nako e ntse e tsamaya. Ditheko ha di kenyeletse dividende. Dikakanyo feela, hase dipolelopele.';

  @override
  String get portfolio => 'Potefolio';

  @override
  String get portfolioEmpty =>
      'Ha ho letho mona hajwale. Bula shere mme o tobetse “Kenya potefoliong” ho sala morao seo o nang le sona.';

  @override
  String get portfolioLocalNote =>
      'E bolokilwe sesebedisweng sena feela. Dikakaretso di fetolwa ka ditekanyetso tsa ECB; ditheko di ka dieha.';

  @override
  String get addToPortfolio => 'Kenya potefoliong';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Kenya $symbol';
  }

  @override
  String get portfolioQuantity => 'Palo ya dishere';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Theko ka shere ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Letsatsi la theko';

  @override
  String get portfolioAdd => 'Kenya';

  @override
  String get portfolioInvalidNumber => 'Kenya nomoro e kgolo ho feta lefela.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol e kentswe potefoliong ya hao.';
  }

  @override
  String get portfolioTotalValue => 'Boleng ka kakaretso';

  @override
  String get portfolioToday => 'Kajeno';

  @override
  String get portfolioGainLoss => 'Phaello/tahlehelo';

  @override
  String get portfolioInvested => 'Tse tseteditsweng';

  @override
  String get portfolioAllocation => 'Kabo';

  @override
  String get portfolioPositions => 'Dishere';

  @override
  String portfolioAvgCost(String price) {
    return 'theko ya karolelano $price';
  }

  @override
  String get portfolioYourPosition => 'Dishere tsa hao';

  @override
  String get portfolioPurchases => 'Ditheko';

  @override
  String get portfolioRemove => 'Tlosa';

  @override
  String get portfolioExcluded =>
      'Dishere tse se nang theko kapa sekgahla sa phapanyetsano ha di kenyelletswe dikakaretsong.';

  @override
  String get priceAlerts => 'Ditsebiso tsa theko';

  @override
  String get setPriceAlert => 'Beha tsebiso ya theko';

  @override
  String alertDialogTitle(String symbol) {
    return 'Tsebiso ya theko · $symbol';
  }

  @override
  String get alertKindAbove => 'E nyolohela hodima';

  @override
  String get alertKindBelow => 'E theohela tlase ho';

  @override
  String get alertKindMove => 'E fetoha haholo ka letsatsi';

  @override
  String alertTargetPrice(String currency) {
    return 'Theko ($currency)';
  }

  @override
  String get alertMovePercent => 'Phetoho ya letsatsi (%)';

  @override
  String get alertAlreadyMet => 'Theko e se e fetile boemo bona.';

  @override
  String get alertSave => 'Beha tsebiso';

  @override
  String alertCreated(String symbol) {
    return 'Tsebiso e behilwe bakeng sa $symbol.';
  }

  @override
  String get alertsEmpty => 'Ha ho so be le ditsebiso tsa theko. Bula shere mme o tobetse tshepe ho beha e nngwe.';

  @override
  String get alertsNote =>
      'Ditsebiso di hlahlojwa metsotso e meng le e meng e 5 ha WhatStock e ntse e sebetsa. Khomputareng e tswela pele e sebetsa bareng ya menyu kapa treing; fonong, hajwale ditsebiso di fihla feela ha app e butswe.';

  @override
  String alertDescAbove(String price) {
    return 'Hodima $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Tlase ho $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Phetoho ya letsatsi ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'E hlahile $date ka $price';
  }

  @override
  String get alertRearm => 'Tsosolosa';

  @override
  String get alertDelete => 'Hlakola';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol e nyolohetse hodima $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol e theohetse tlase ho $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol e fetohile ka $percent kajeno';
  }

  @override
  String alertHitBody(String price) {
    return 'Theko ya hona jwale: $price';
  }

  @override
  String get alertOpen => 'Bula';

  @override
  String get keepInTrayTitle => 'Tswela pele o sebetsa ha fensetere e kwetswe';

  @override
  String get keepInTraySubtitle =>
      'WhatStock e dula bareng ya menyu kapa treing, kahoo khutsufatso le ditsebiso tsa theko di tswela pele di sebetsa.';

  @override
  String get termsOfUse => 'Dipehelo tsa Tshebediso';

  @override
  String get privacyPolicy => 'Pholisi ya Lekunutu';

  @override
  String get subscriptionLegal =>
      'Dingodiso di ntjhafala ka boiketsetso kgwedi le kgwedi ho fihlela o di khansela. Ka ho ingodisa o amohela Dipehelo tsa Tshebediso le Pholisi ya Lekunutu.';

  @override
  String get deleteAccount => 'Hlakola akhaonto';

  @override
  String get deleteAccountTitle => 'Na o batla ho hlakola akhaonto ya hao?';

  @override
  String get deleteAccountBody =>
      'Akhaonto ya hao le tsohle tse bolokilweng sevareng sa rona (imeile, kabelo, tshebediso) di tla hlakolwa ka ho sa feleng, mme ditlhahlobo tse sa sebediswang di tla lahleha. Ingodiso e lefilweng sebatling e khanselwa hanghang; ingodiso ya App Store kapa Google Play e tlameha ho khanselwa ditlhophisong tsa lebenkele.';

  @override
  String get deleteLocalData =>
      'Hlakola le data e sesebedisweng sena (potefolio, ditsebiso, tseo o di ratang, histori, ditlhahlobo tse bolokilweng)';

  @override
  String get deleteAccountConfirm => 'Hlakola ka ho sa feleng';

  @override
  String get accountDeleted => 'Akhaonto ya hao e hlakotswe.';

  @override
  String get errDeleteAccount => 'Akhaonto ha e a kgona ho hlakolwa. Hlahloba kgokahano ya hao mme o leke hape.';

  @override
  String get aiTrialBriefNote =>
      'Ditlhahlobo tsa teko di kgutshwanyane mme di etswa ka mofuta wa AI o potlakileng. Ka moralo o fumana AI ya rona e matla ka ho fetisisa, dipatlo tse ngata tsa inthanete, le bolelele ba Mahareng le E qaqileng.';
}
