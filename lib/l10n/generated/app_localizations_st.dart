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
  String get homeTagline =>
      'Nka setshwantsho sa shere mme o ithute tsohle ka yona.';

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
  String get errRecognitionRefused =>
      'Tshebeletso ya temoho ha e a kgona ho sebetsa setshwantsho sena.';

  @override
  String get errRecognitionTruncated =>
      'Karabo ya temoho e kgaohile. Ka kopo leka hape.';

  @override
  String get errRecognitionBadResponse =>
      'Karabo e sa lebellwang ho tswa tshebeletsong ya temoho.';

  @override
  String get errRecognitionEmpty =>
      'Tshebeletso ya temoho e kgutlisitse karabo e se nang letho.';

  @override
  String get errMissingFinnhubKey =>
      'Data ya mmaraka ha e a hlophiswa (ha ho FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Ha e a kgona ho fihlella tshebeletso ya data ya mmaraka. Hlahloba kgokahano ya hao ya inthanete.';

  @override
  String get errMarketRateLimited =>
      'Dikopo di ngata haholo ho tshebeletso ya data ya mmaraka. Ka kopo ema motsotso.';

  @override
  String errMarketHttp(String status) {
    return 'Tshebeletso ya data ya mmaraka e kgutlisitse phoso (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Karabo e sa lebellwang ho tswa tshebeletsong ya data ya mmaraka.';

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
  String get aiGenerating =>
      'E lokisa tlhahlobo… sena se ka nka motsotso kapa e mmedi.';

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
  String get errAiNotConfigured =>
      'Tlhahlobo ya AI ha e a hlophiswa (ha ho ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Ha e a kgona ho fihlella tshebeletso ya AI. Hlahloba kgokahano ya hao ya inthanete.';

  @override
  String errAiHttp(String status) {
    return 'Tshebeletso ya AI e kgutlisitse phoso (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Tshebeletso ya AI e hanne ho hlahloba shere ena.';

  @override
  String get errAiBadResponse =>
      'Karabo e sa lebellwang ho tswa tshebeletsong ya AI.';

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
  String get chartUnavailable =>
      'Histori ya theko ha e fumanehe ho tswa mohloding wa data wa hona jwale.';

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
  String get statementsUnavailable =>
      'Ditlaleho tsa ditjhelete tse tlalehilweng ha di fumanehe bakeng sa shere ena.';

  @override
  String get launchAtLogin => 'Qala ha o kena';

  @override
  String get hotkeyLabel => 'Khutsufatso ya kakaretso';

  @override
  String get hotkeyRecordHint =>
      'Tobetsa mona, ebe o tobetsa motswako o motjha wa dikonopo';

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
  String get noFavorites =>
      'Ha ho so be le tseo o di ratang. Tobetsa naledi shereng ho e kenya.';

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
  String get updateDownloaded =>
      'Ntjhafatso e se e loketse. Qala hape ho e kenya.';

  @override
  String get updateNow => 'Ntjhafatsa';

  @override
  String get restartNow => 'Qala hape';

  @override
  String get updatesViaStore =>
      'Dintjhafatso di tla ka boiketsetso ka lebenkele la di-app.';

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
  String get trialExpired =>
      'Teko ya hao ya mahala e fedile. Kgetha moralo ho tswela pele ka ditlhahlobo.';

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
  String get extraPacksTitle =>
      'O hloka tse ding? Reka ditlhahlobo tse eketsehileng';

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
  String get errTrialExpired =>
      'Teko ya hao ya mahala e fedile. Kgetha moralo ho tswela pele.';

  @override
  String get errNoPlan =>
      'Ho hlokahala moralo o sebetsang bakeng sa tlhahlobo ya AI.';

  @override
  String get viewPlans => 'Sheba meralo';

  @override
  String get usageTitle => 'Tshebediso';

  @override
  String get demoPurchaseNote =>
      'Tefo ya pontsho: ditheko di etsiswa feela sethaleng sena.';

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
  String get aiDepthStandardDesc =>
      'Tlaleho e felletseng e nang le dikarolo tsohle.';

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
  String get aiReaderBeginnerDesc =>
      'Puo e bonolo; lereo le leng le le leng la tekheniki le a hlaloswa.';

  @override
  String get aiReaderExperiencedDesc =>
      'Mongolo o teteaneng o nang le mareo a tlwaelehileng a ditjhelete.';

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
      other:
          'Ho fihla ho dipatlo tse $count tsa inthanete tlhahlobong ka nngwe ka moralo wa hao',
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
  String get outlookChartNote =>
      'Mekgahlelo ke ya tataiso feela; menyetla ke dikakanyo, hase dipolelopele.';

  @override
  String get accountTitle => 'Akhaonto';

  @override
  String get signIn => 'Kena';

  @override
  String get signOut => 'Tswa';

  @override
  String get notSignedIn => 'Ha o a kena';

  @override
  String get accountBenefit =>
      'Kena e le hore ingodiso ya hao e sebetse disebedisweng tsohle tsa hao.';

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
  String get errInvalidEmail =>
      'Ka kopo kenya aterese ya imeile e nepahetseng.';

  @override
  String get errSignInFailed =>
      'Ho kena ho hlolehile. Hlahloba kgokahano ya hao mme o leke hape.';

  @override
  String get checkoutWaiting =>
      'Phethela tefo sebatling sa hao. App e tla ntjhafala ka boiketsetso ha o qetile.';

  @override
  String get paymentViaStripe =>
      'Tefo e sireletsehileng sebatling ka Stripe. Khansela nako efe kapa efe.';

  @override
  String get paymentViaStore =>
      'O lefiswa ka akhaonto ya hao ya App Store kapa Google Play. Khansela nako efe kapa efe ditlhophisong tsa lebenkele.';

  @override
  String get keySpace => 'Space';

  @override
  String get doubleOptionTitle => 'Tobetsa Option habedi';

  @override
  String get doubleOptionSubtitle =>
      'Ho tobetsa konopo ya Option habedi ka potlako le hona ho bitsa WhatStock.';

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
  String get alertsEmpty =>
      'Ha ho so be le ditsebiso tsa theko. Bula shere mme o tobetse tshepe ho beha e nngwe.';

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
  String get errDeleteAccount =>
      'Akhaonto ha e a kgona ho hlakolwa. Hlahloba kgokahano ya hao mme o leke hape.';

  @override
  String get aiTrialBriefNote =>
      'Ditlhahlobo tsa teko di kgutshwanyane mme di etswa ka mofuta wa AI o potlakileng. Ka moralo o fumana AI ya rona e matla ka ho fetisisa, dipatlo tse ngata tsa inthanete, le bolelele ba Mahareng le E qaqileng.';

  @override
  String get billingMonthly => 'Ka kgwedi';

  @override
  String get billingYearly => 'Ka selemo';

  @override
  String get yearlyDiscount => 'Dikgwedi tse 2 mahala';

  @override
  String get perYear => '/ selemo';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price ka kgwedi';
  }

  @override
  String get subscriptionLegalYearly =>
      'Dingodiso tsa selemo di ntjhafala ka boiketsetso selemo le selemo ho fihlela o di khansela. Ka ho ingodisa o amohela Dipehelo tsa Tshebediso le Pholisi ya Lekunutu.';

  @override
  String get myAnalyses => 'Ditlhahlobo tsa ka';

  @override
  String get navAlerts => 'Ditsebiso';

  @override
  String get inviteTitle => 'Ponelopele e kwetsweng';

  @override
  String get inviteBody =>
      'WhatStock e fumaneha ka memo feela hajwale. Kenya khoutu ya memo eo o e fumaneng.';

  @override
  String get inviteCodeLabel => 'Khoutu ya memo';

  @override
  String get inviteContinue => 'Tswela pele';

  @override
  String get inviteInvalid => 'Khoutu ena ya memo ha e nepahale.';

  @override
  String get inviteExpired =>
      'Memo ena e fetile nako. Kopa motho ya o memileng khoutu e ntjha.';

  @override
  String get inviteDeviceLimit =>
      'Khoutu ena ya memo e se e sebediswa palong e phahameng ka ho fetisisa ya disebediswa tse dumelletsweng.';

  @override
  String get previewConfidential => 'Ponelopele ya lekunutu';

  @override
  String get errPreviewDailyLimit =>
      'Moedi wa ditlhahlobo wa kajeno wa ponelopele ena o fihletswe. Leka hape hosane.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'dihora tse $count tse fetileng',
      one: 'hora e 1 e fetileng',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'matsatsi a $count a fetileng',
      one: 'letsatsi le 1 le fetileng',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Ntjhafatsa tlhahlobo ena?';

  @override
  String staleBody(String age) {
    return 'E entswe $age. Ditheko, ditaba le diphetho di ka nna tsa be di fetohile ho tloha ka nako eo.';
  }

  @override
  String get staleKeep => 'Bontsha ya pele';

  @override
  String get staleRefresh => 'Etsa e ntjha';

  @override
  String seeAll(int count) {
    return 'Bona tsohle ($count)';
  }

  @override
  String get searchAnalyses => 'Batla ditlhahlobong tsa hao';

  @override
  String get deleteAnalysis => 'Hlakola';

  @override
  String analysisDeleted(String symbol) {
    return 'Tlhahlobo ya $symbol e hlakotswe';
  }

  @override
  String get keyLevelAlertHint =>
      'Tobetsa boemo ho fumana tsebiso ha theko e fihla ho bona.';

  @override
  String get shareAnalysisTitle => 'Arolelana tlhahlobo';

  @override
  String get shareAsImage => 'Arolelana jwalo ka setshwantsho';

  @override
  String get shareAsText => 'Arolelana jwalo ka mongolo';

  @override
  String get shareCardFooter => 'E entswe ka WhatStock';

  @override
  String get shareCardDisclaimer =>
      'Tlhahlobo ya AI · hase keletso ya ho tsetela';

  @override
  String get referralTitle => 'Mema metswalle';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ditlhahlobo tse eketsehileng tse $count',
      one: 'tlhahlobo e le nngwe e eketsehileng',
    );
    return 'Arolelana khoutu ya hao. Motswalle wa hao o fumana $_temp0 hang-hang, mme le wena o fumana tse tshwanang kamora tlhahlobo ya hae ya pele.';
  }

  @override
  String get referralYourCode => 'Khoutu ya hao';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Ba memilweng: $invited · Meputso: $rewarded';
  }

  @override
  String get referralHaveCode => 'Na o na le khoutu ya motswalle?';

  @override
  String get referralRedeem => 'Sebedisa';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ho eketsitswe ditlhahlobo tse $count. Rea o amohela!',
      one: 'Ho eketsitswe tlhahlobo e le nngwe. Rea o amohela!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Khoutu ena ha e yo. E hlahlobe mme o leke hape.';

  @override
  String get referralErrOwn => 'O ke ke wa sebedisa khoutu ya hao.';

  @override
  String get referralErrAlready => 'O se o sebedisitse khoutu ya motswalle.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ditlhahlobo tse eketsehileng tse $count',
      one: 'tlhahlobo e le nngwe e eketsehileng',
    );
    return 'Ke hlahloba diabo ka WhatStock: nka foto ya kabo mme AI e a e hlalosa. Ka khoutu ya ka $code o fumana $_temp0.';
  }

  @override
  String get referralCopied => 'Khoutu e kopilwe';

  @override
  String get onboardTitle1 => 'Nka setshwantsho sa shere';

  @override
  String get onboardBody1 =>
      'Sekirini sa app ya borokara, koranta kapa logo ya khampani di a lekana: WhatStock e tseba shere mme e o bontsha theko ya yona, kerafo le dipalo tsa bohlokwa.';

  @override
  String get onboardTitle2 => 'E utlwisise ka metsotso e mmalwa';

  @override
  String get onboardBody2 =>
      'Tlhahlobo ya AI e hlalosa se tsamaisang shere, dikotsi, boleng ba yona le maemo a mararo a hore na theko e ka ya kae, ka mehlodi le ka puo ya hao.';

  @override
  String get onboardTitle3 => 'Dula o tseba tsohle';

  @override
  String get onboardBody3 =>
      'Tseo o di ratang, potefolio ya hao le ditsebiso tsa theko di o tsebisa se etsahalang. Ditlhahlobo tsa hao di dula sesebedisweng sa hao, di loketse ho bulwa hape.';

  @override
  String get onboardNext => 'E latelang';

  @override
  String get onboardStart => 'Qala';

  @override
  String get onboardSkip => 'Tlola';

  @override
  String changesTitle(String date) {
    return 'Ho tloha tlhahlobong ya pele ($date)';
  }

  @override
  String get changesPrice => 'Theko';

  @override
  String get changesNoMajor => 'Ponelopele ha e a fetoha haholo.';

  @override
  String get changesPreviousSummary => 'Kakaretso ya pele';

  @override
  String get telemetryTitle => 'Thusa ho ntlafatsa WhatStock';

  @override
  String get telemetryBody =>
      'Arolelana dipalopalo tsa tshebediso tse sa tsebahaleng le ditlaleho tsa ho wa: hore na ke dikarolo dife tse sebediswang le hore na ho sentsweng eng. Ha ho mohla re arolelanang disheare tsa hao, ditlhahlobo tsa hao kapa dintlha tsa hao tsa botho. O ka fetola sena neng kapa neng ho Ditlhophiso.';

  @override
  String get telemetryAllow => 'Dumella';

  @override
  String get telemetryDecline => 'Tjhe, ke a leboha';

  @override
  String get telemetrySetting =>
      'Dipalopalo tse sa tsebahaleng le ditlaleho tsa ho wa';

  @override
  String get telemetrySettingHint =>
      'Hore na dikarolo di sebediswa hangata hakae le ditlaleho tsa diphoso, ntle le dintlha tsa botho kapa dikahare tsa diphuputso le ditlhahlobo tsa hao.';

  @override
  String get askButton => 'Botsa ka tlhahlobo ena';

  @override
  String askTitle(String symbol) {
    return 'Dipotso ka $symbol';
  }

  @override
  String get askIntro =>
      'Botsa eng kapa eng ka tlhahlobo: kotsi e itseng e bolela eng, ke eng e ka fetolang ponelopele, palo e itseng e fumanwe jwang. Dikarabo di thehilwe hodima tlhahlobo ena mme hase keletso ya ho tsetela.';

  @override
  String get askHint => 'Botsa potso…';

  @override
  String get askSend => 'Romela';

  @override
  String get askThinking => 'Ke a nahana…';

  @override
  String get askSuggest1 => 'Kotsi e kgolo ka ho fetisisa ke efe?';

  @override
  String get askSuggest2 => 'Ke eng e ka fetolang ponelopele?';

  @override
  String get askSuggest3 => 'E hlalose ka mantswe a bonolo';

  @override
  String get askMaxReached =>
      'Eo e ne e le potso ya ho qetela bakeng sa tlhahlobo ena. Etsa tlhahlobo e ntjha ho botsa tse ding.';

  @override
  String get errAskLimit =>
      'O fihlile moeding wa dipotso wa kajeno. Ka kopo leka hape hosane.';

  @override
  String get eventTomorrow => 'Hosane';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'ka mor\'a matsatsi a $days',
      one: 'ka mor\'a letsatsi le 1',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Diphetho tsa kotara';

  @override
  String get eventBeforeOpen => 'pele mmaraka o bulwa';

  @override
  String get eventAfterClose => 'ka mor\'a hore mmaraka o kwalwe';

  @override
  String eventEpsEstimate(String value) {
    return 'Khakanyo ya EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Ho tswa tlhahlobong ya hao';

  @override
  String get eventsHint =>
      'Matsatsi a diphetho tsa disheare tseo o di ratang le tsa potefolio ya hao bakeng sa matsatsi a 90 a tlang, le diketsahalo tse nang le matsatsi tse bontshitsweng ke ditlhahlobo tsa hao.';

  @override
  String get eventsEmpty =>
      'Ha ho diketsahalo tse nang le matsatsi matsatsing a 90 a tlang. Kenya tseo o di ratang kapa disheare tsa potefolio ho bona matsatsi a diphetho tsa tsona mona.';

  @override
  String get compareTitle => 'Bapisa';

  @override
  String get compareAdd => 'Kenya seabo';

  @override
  String get compareRemove => 'Tlosa';

  @override
  String get compareTickerHint => 'Ticker, mohlala MSFT';

  @override
  String get compareHint =>
      'Dipalo tsa bohlokwa di bapile; boleng bo botle ka ho fetisisa moleng ka mong bo totobaditswe. Ditjhelete di ka mofuta wa tjhelete wa seabo ka seng.';

  @override
  String get compareNoAnalysis => 'Ha ho tlhahlobo hajoale';

  @override
  String get portfolioDividends => 'Dividende ya selemo';

  @override
  String portfolioDividendYield(String percent) {
    return 'Poelo ya $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Dividende e lebelletsweng ya selemo e thehilwe hodima dividende e lefilweng dikgweding tse 12 tse fetileng; ditefo tsa nako e tlang ha di netefatswe.';

  @override
  String positionDividend(String amount) {
    return 'Dividende: $amount ka selemo';
  }

  @override
  String get chartAvgCost => 'Karolelano ya hao';

  @override
  String get chartAlertLevel => 'Tsebiso';

  @override
  String get marketsToday => 'Mebaraka kajeno';

  @override
  String get notesTitle => 'Dintlha tsa ka';

  @override
  String get notesHint =>
      'Hobaneng o e rekile, o shebile eng, ke eng e ka etsang hore o e rekise?';

  @override
  String get notesInfo =>
      'E bolokilwe sesebedisweng sena feela. Tlhahlobo ya AI e ela hloko dintlha tsa hao.';

  @override
  String notesSaved(String date) {
    return 'E bolokilwe $date';
  }

  @override
  String get peersTitle => 'Dikhampani tse tshwanang';

  @override
  String get portfolioExport => 'Romela ka ntle jwalo ka CSV';

  @override
  String get portfolioImport => 'Kenya ho tswa ho CSV';

  @override
  String get portfolioImportHint =>
      'Kgomaretsa theko e le nngwe moleng ka mong: ticker, palo, theko ya karolo, mofuta wa tjhelete, letsatsi (YYYY-MM-DD). Dikholomo di ka arohanngwa ka dikhoma, disemikholone kapa di-tab; mola wa dihlooho ha o a tlameha.';

  @override
  String get portfolioImportButton => 'Kenya';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ho eketsitswe ditheko tse $count',
      one: 'Ho eketsitswe theko e le nngwe',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mela e $count e tlotswe',
      one: 'Mola o le mong o tlotswe',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Potefolio, tseo o di ratang, ditsebiso tsa theko le dintlha di a sinkronaeswa disebedisweng tsohle tsa hao.';

  @override
  String syncLast(String time) {
    return 'Ho sinkronaesa ha ho qetela: $time';
  }

  @override
  String get syncNow => 'Sinkronaesa hona joale';

  @override
  String get syncFailed =>
      'Ho sinkronaesa ho hlolehile. Ho tla lekwa hape ka boiketsetso.';

  @override
  String get alertEmailTitle => 'Imeile ha tsebiso e qala';

  @override
  String get alertEmailOn =>
      'Re hlahloba ditsebiso tsa hao metsotso e meng le e meng e mmalwa mme re o romella imeile, leha app e kwetswe.';

  @override
  String get alertEmailSignIn =>
      'Kena ka imeile ya hao ho Ditlhophiso hore o fumane ditsebiso ka imeile, leha app e kwetswe.';

  @override
  String get portfolioHistory => 'Boleng ho ya ka nako';

  @override
  String get portfolioReviewTitle => 'Tlhahlobo ya potefolio ya AI';

  @override
  String get portfolioReviewIntro =>
      'AI e sheba potefolio ya hao kaofela: ho bokellwa ha chelete sebakeng se le seng, ho itshetleha ka makala le dichelete, dikotsi tseo dishere tsa hao di arolelanang tsona, le dikarolo tsa phaello. E sebedisa tlhahlobo e le nngwe.';

  @override
  String get portfolioReviewButton => 'Hlahloba potefolio ya ka';

  @override
  String get portfolioReviewAgain => 'Hlahloba hape';

  @override
  String get portfolioReviewWorking => 'Re hlahloba potefolio ya hao…';

  @override
  String get digestTitle => 'Kakaretso ya beke ka imeile';

  @override
  String get digestHint =>
      'Mantaha o mong le o mong: kamoo tseo o di ratang le potefolio ya hao di tsamaileng kateng bekeng e fetileng, le matsatsi a tlang a diphetho tsa tsona.';

  @override
  String get benchmarkTitle => 'Ha ho bapiswa le S&P 500';

  @override
  String get benchmarkYours => 'Tseo o di rekileng';

  @override
  String get benchmarkIndex => 'Chelete e tshwanang ho S&P 500';

  @override
  String benchmarkAhead(String points) {
    return 'Ho feta index ka dintlha tsa phesente tse $points';
  }

  @override
  String benchmarkBehind(String points) {
    return 'Ka morao ho index ka dintlha tsa phesente tse $points';
  }

  @override
  String get benchmarkHint =>
      'Jwalokaha eka theko ka nngwe e tsetetswe ho S&P 500 index fund ka lona letsatsi leo. Ha ho kenyeleditswe karolo ya phaello; diphaello tsa nako e fetileng ha di bolele esale pele tsa nako e tlang.';

  @override
  String get portfolioSell => 'Rekisa';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Rekisa $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Theko ya ho rekisa ka shere ($currency)';
  }

  @override
  String get portfolioSellDate => 'Letsatsi la thekiso';

  @override
  String get portfolioSellAll => 'Tsohle';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'O na le $quantity';
  }

  @override
  String get portfolioSold => 'E rekisitswe';

  @override
  String get portfolioRealized => 'E fumanehileng';

  @override
  String get portfolioClosed => 'Dishere tse rekisitsweng';

  @override
  String get portfolioClosedNote => 'Dishere tsohle di rekisitswe';

  @override
  String get portfolioTransactions => 'Ditheko le dithekiso';

  @override
  String get portfolioRealizedByYear => 'Phaello e fumanehileng ka selemo';

  @override
  String get portfolioRealizedHint =>
      'Dithekiso di qala ho bapiswa le ditheko tsa hao tsa kgale ka ho fetisisa (FIFO), di fetolwa ka sekgahla sa phapanyetsano sa kajeno. Bakeng sa tlaleho ya hao ya lekgetho, sebedisa setatemente sa broker ya hao.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Ho tloha tlhahlobong ena, ho phatlaladitswe diphetho tse ntjha tsa kotara ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Diphetho tse ntjha';

  @override
  String get portfolioImportBrokers =>
      'Ho tsejoa le diromelwantle tse tswang ho Revolut, Trading 212 le Interactive Brokers, hammoho le thekiso; dividende le dipeheletso di a tlolwa.';

  @override
  String get portfolioImportFile => 'Kgetha faele';

  @override
  String offlineBanner(String time) {
    return 'Ha ho kgokahano – ho bontshwa data ya ho qetela e bolokilweng ($time).';
  }

  @override
  String get glossMarketCap =>
      'Boleng ba khampani yohle mmarakeng wa dishere: theko ya shere × palo ya dishere.';

  @override
  String get glossSharesOutstanding =>
      'Palo ya dishere tseo khampani e di ntshitseng. Ha e eketseha, shere ka nngwe e na le karolo e nyane; ho reka dishere hape ho e fokotsa.';

  @override
  String get glossPeTrailing =>
      'Theko ÷ phaello ka shere ya dikgwedi tse 12 tse fetileng: o lefella dilemo tse kae tsa phaello ya hajwale. E tlase e theko e tlase, empa dikhampani tse holang ka potlako hangata di na le P/E e phahameng.';

  @override
  String get glossPeForward =>
      'Jwaloka P/E, empa ka phaello eo bahlahlobi ba e lebelletseng dikgweding tse 12 tse tlang. Ha e le tlase ho P/E e fetileng, phaello e lebelletswe ho hola.';

  @override
  String get glossPb =>
      'Theko ÷ boleng ba dibuka (thepa ho tloswa dikoloto) ka shere. Hoo e ka bang 1 ho bolela hore mmaraka o lekanya khampani ka seo e nang le sona pampiring.';

  @override
  String get glossPs =>
      'Boleng ba mmaraka ÷ lekeno la selemo. Ho na le thuso bakeng sa dikhampani tse nang le phaello e nyane kapa tse se nang yona hajwale; bapisa kahare ho indasteri e le nngwe.';

  @override
  String get glossEvToFcf =>
      'Boleng ba khampani ho kenyeletswa le dikoloto (EV) ÷ tjhelete eo e e hlahisang ka selemo ka mora matsete. E tlase e bolela hore o fumana tjhelete e ngata bakeng sa theko.';

  @override
  String get glossPeg =>
      'P/E ÷ kgolo ya phaello ya selemo e lebelletsweng (%). Hoo e ka bang 1 hangata e nkwa e le e loketseng; e sheba P/E ho latela kgolo.';

  @override
  String get glossEps =>
      'Phaello ka shere dikgweding tse 12 tse fetileng. EPS e nyolohang selemo le selemo ke e nngwe ya matshwao a matla ka ho fetisisa a khampani e phetseng hantle.';

  @override
  String get glossBeta =>
      'Hore na shere e tloaetse ho tsamaya hakae le mmaraka: 1 = jwaloka mmaraka, 1.5 = diphetoho tse kgolwanyane ka hoo e ka bang 50%, ka tlase ho 1 = e kgutsitse haholwanyane.';

  @override
  String get glossRevenueTtm =>
      'Thekiso yohle ya dikgwedi tse 12 tse fetileng, pele ho ditjeo dife kapa dife.';

  @override
  String get glossNetIncomeTtm =>
      'Phaello e setseng ka mora ditjeo tsohle, tswala le lekgetho dikgweding tse 12 tse fetileng.';

  @override
  String get glossGrossMargin =>
      'Karolo ya lekeno e setseng ka mora ditjeo tse tobileng tsa dihlahiswa. Sekgahla se phahameng hangata se bontsha matla a ho beha theko.';

  @override
  String get glossOperatingMargin =>
      'Karolo ya lekeno e setseng ka mora ditjeo tsa ho tsamaisa kgwebo (meputso, rente, papatso), pele ho tswala le lekgetho.';

  @override
  String get glossNetMargin =>
      'Karolo ya lekeno e fetohang phaello ya ho qetela. 20% e bolela hore ho 100 e nngwe le e nngwe ya thekiso, 20 ke phaello.';

  @override
  String get glossRoe =>
      'Phaello ho tjhelete ya beng: phaello ya selemo ÷ tjhelete ya beng. E bontsha hore na botsamaisi bo sebedisa tjhelete ya beng ba dishere hantle hakae; ka hodima hoo e ka bang 15% e matla.';

  @override
  String get glossRoa =>
      'Phaello ho thepa: phaello ya selemo ÷ tsohle tseo khampani e nang le tsona. Bapisa kahare ho indasteri e le nngwe.';

  @override
  String get glossDebtToEquity =>
      'Dikoloto ÷ tjhelete ya beng. E phahameng e bolela tjhelete e ngata e adimilweng: kotsi e kgolo ha ditswala di nyoloha kapa kgwebo e dieha.';

  @override
  String get glossCurrentRatio =>
      'Thepa ya nako e kgutshwane ÷ dikoloto tse lokelang ho lefuwa nakong ya selemo. Ka hodima 1 e bolela hore khampani e kgona ho lefa dikoloto tsa yona tse haufi.';

  @override
  String get glossRevenueGrowth =>
      'Hore na lekeno le hotse hakae ha le bapiswa le selemo se fetileng.';

  @override
  String get glossEpsGrowth =>
      'Hore na phaello ka shere e hotse hakae ha e bapiswa le selemo se fetileng.';

  @override
  String get glossDividendYield =>
      'Dividende ya selemo ÷ theko ya shere: tjhelete eo o ka e fumanang ka selemo, e le phesente ya seo o se lefang.';

  @override
  String get glossDividendPerShare =>
      'Dividende e lefilweng shere e le nngwe selemong se fetileng.';

  @override
  String get glossPayoutRatio =>
      'Karolo ya phaello e lefuwang e le dividende. Ka hodima 100% khampani e lefa ho feta seo e se fumanang, mme hoo ha se hangata ho tswelang pele.';

  @override
  String get glossTitle => 'Ho bolela eng?';

  @override
  String get watchNewsTitle => 'Ditaba ka dishere tsa hao';

  @override
  String get undo => 'Etsolla';

  @override
  String get watchSort => 'Hlophisa';

  @override
  String get watchSortOwn => 'Tatellano ya ka';

  @override
  String get watchSortGainers => 'Tse nyolohileng haholo pele';

  @override
  String get watchSortLosers => 'Tse theohileng haholo pele';

  @override
  String get watchSortName => 'Ka ticker (A–Z)';

  @override
  String get watchHint =>
      'Hula sehokelo ho hlophisa bocha, sutumetsa ka ho le letshehadi ho tlosa. Mola o bontsha matsatsi a 30 a fetileng.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: manollo a hao o lokile.';
  }

  @override
  String alertFromCost(String price) {
    return 'Ho tswa theko ya hao e mahareng ya ho reka ($price):';
  }

  @override
  String get briefTitle => 'Kajeno le diabo tsa hao';

  @override
  String get briefButton => 'Akaretsa kajeno';

  @override
  String get briefHint =>
      'Kakaretso e kgutshwane ya AI ya kamoo portfolio ya hao le tseo o di ratang di tsamaileng ka teng kajeno le seo ditaba tsa morao-rao di se buang. Ha e sebedise manollo.';

  @override
  String get briefRefresh => 'Ntjhafatsa';

  @override
  String get sectionEarnings => 'Diphetho';

  @override
  String earningsNext(String date) {
    return 'Tlaleho e latelang: $date';
  }

  @override
  String get earningsExpected => 'EPS e lebelletsweng';

  @override
  String get earningsReported => 'EPS e tlalehilweng';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'E lekana kapa e feta EPS e lebelletsweng ho $beats ho dikotara tse $total tsa ho qetela',
      one: 'E lekana kapa e feta EPS e lebelletsweng ho $beats ho kotara e 1',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol e phatlalatsa diphetho tsa kotara hosane';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol e phatlalatsa diphetho tsa kotara kajeno';
  }

  @override
  String get earningsRemindersTitle => 'Dikgopotso tsa diphetho';

  @override
  String get earningsRemindersSubtitle =>
      'Tsebiso letsatsi pele ho ha dishere tseo o di ratang kapa tsa phothefolio ya hao di phatlalatsa diphetho tsa kotara';

  @override
  String addAllToFavorites(int count) {
    return 'Kenya tsohle ho tseo o di ratang ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Kenya ho tswa setshwantshong sa skrine';

  @override
  String get holdingsReading => 'E bala maemo a hao…';

  @override
  String get holdingsReviewTitle => 'Maemo a fumanweng';

  @override
  String get holdingsReviewHint =>
      'Hlahloba dinomoro pele o di eketsa. Theko ke karolelano ya theko eo o rekileng ka yona seabo ka seng, eseng theko ya kajeno.';

  @override
  String get holdingsNoPrice =>
      'Ha ho karolelano ya theko ya ho reka setshwantshong';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Eketsa maemo a $count',
      one: 'Eketsa boemo bo le bong',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Ha ho maemo a diabo a fumanweng setshwantshong sena. Leka setshwantsho sa skrine sa leqephe la maemo kapa thepa ya hao ho brokara wa hao.';

  @override
  String get week52Range => 'Bophara ba dibeke tse 52';

  @override
  String week52BelowHigh(String percent) {
    return '$percent ka tlase ho bophahamo ba dibeke tse 52';
  }

  @override
  String get week52AtHigh => 'Bophahamong ba dibeke tse 52';

  @override
  String get alertKindTrailing => 'E theoha ho tloha hodimodimo';

  @override
  String get alertTrailingPercent => 'Ho theoha ho tloha hodimodimo (%)';

  @override
  String get alertTrailingHint =>
      'E latela theko ha e nyoloha: e o tsebisa ha theko e theoha ka hona ho tloha boemong bo hodimodimo ho tloha ha o e beile.';

  @override
  String alertDescTrailing(String percent) {
    return 'Ho theoha ka $percent ho tloha hodimodimo';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'hodimodimo ho fihlela jwale: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol e theohile ka $percent ho tloha hodimodimo';
  }

  @override
  String get sectionInsiders => 'Kgwebo ya ba ka hare';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ditheko tse $count',
      one: 'theko e 1',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'dithekiso tse $count',
      one: 'thekiso e 1',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Kakaretso: dishere tse $shares';
  }

  @override
  String get insiderBuy => 'Rekile';

  @override
  String get insiderSell => 'Rekisitse';

  @override
  String get insiderHint =>
      'Ditheko le dithekiso mmarakeng o bulehileng tse entsweng ke baokamedi le batsamaisi matsatsing a 90 a fetileng (SEC Form 4). Tshebediso ya dikgetho (options) le dishere tse fanweng ha di balwe.';

  @override
  String get insiderNone =>
      'Ha ho ditheko kapa dithekiso tsa ba ka hare mmarakeng o bulehileng matsatsing a 90 a fetileng.';

  @override
  String get analystTrend =>
      'Kamoo maikutlo a fetohileng ka teng kgwedi le kgwedi';

  @override
  String get watchListAll => 'Tsohle';

  @override
  String get watchListNew => 'Lenane le letjha';

  @override
  String get watchListName => 'Lebitso la lenane';

  @override
  String get watchListRename => 'Fetola lebitso la lenane';

  @override
  String get watchListDelete => 'Hlakola lenane';

  @override
  String get watchListAddTo => 'Kenya lenaneng';

  @override
  String get watchListEmpty =>
      'Ha ho na ditoko lenaneng lena hajwale. Tobetsa konopo ya lenane pela setoko ho se kenya.';

  @override
  String get portfolioAskTitle => 'Dipotso ka potefolio ya hao';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'Polokelo ya tshehetso';

  @override
  String get backupSave => 'Boloka polokelo ya tshehetso';

  @override
  String get backupSaveHint =>
      'Tseo o di ratang, manane, potefolio, ditsebiso le dintlha tsa hao faeleng e le nngwe.';

  @override
  String get backupRestore => 'Kgutlisa ho tswa polokelong ya tshehetso';

  @override
  String get backupRestoreHint =>
      'E eketsa se faeleng; ha ho letho leo o nang le lona hona jwale le hlakolwang.';

  @override
  String get backupRestored => 'Polokelo ya tshehetso e kgutlisitswe.';

  @override
  String get backupInvalid =>
      'Faele ena hase polokelo ya tshehetso ya WhatStock.';

  @override
  String get allocationPositions => 'Dishere';

  @override
  String get allocationSectors => 'Makala';

  @override
  String get allocationCurrencies => 'Ditjhelete';

  @override
  String get compareReturn1y => 'Poelo ya selemo se 1';

  @override
  String get compareFromHigh => 'Ho tloha bophahamong ba dibeke tse 52';

  @override
  String get briefAutoTitle =>
      'Kakaretso ya letsatsi le letsatsi hoseng ho hong le ho hong';

  @override
  String get briefAutoSubtitle =>
      '“Kajeno le diabo tsa hao” e iketsa ka boyona ka mora 7:00 hoseng ha app e ntse e sebetsa; dikhomphutheng, tsebiso e tla o tsebisa. E sebedisa moedi wa hao wa dipotso wa letsatsi le letsatsi, eseng manollo.';

  @override
  String get targetsButton => 'Kabo e lebeletsweng';

  @override
  String get targetsTitle => 'Kabo e lebeletsweng';

  @override
  String get targetsHint =>
      'Beha hore sehere ka seng se lokela ho ba le karolo e kae ya potefolio. Siya lebokose le se na letho haeba ho se sepheo. Ka mora moo app e tla bontsha seo o lokelang ho se reka kapa ho se rekisa.';

  @override
  String targetsSum(String percent) {
    return 'Kakaretso: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Reka ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Rekisa ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Sepheong';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol e fetile EPS e lebelletsweng';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol ha e a fihla EPS e lebelletsweng';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'EPS e tlalehilweng $actual, e lebelletsweng $estimate';
  }

  @override
  String get newsExplain => 'See se bolelang?';

  @override
  String get newsExplainNote =>
      'Tlhaloso ya AI e thehilweng hodima sehlooho le kakaretso ya sona feela. Hase keletso ya ho tsetela. E sebedisa moedi wa hao wa dipotso wa letsatsi le letsatsi, eseng manollo.';

  @override
  String get watchAlertAll => 'Temoso ya diphetoho tse kgolo tsa letsatsi';

  @override
  String get watchAlertAllHint =>
      'Temoso ya theko bakeng sa share e nngwe le e nngwe lenaneng lena: e tla lla ha e fetoha hakana ka letsatsi le le leng, hodimo kapa tlase. Tseo di seng di ena le yona di tla boloka ya tsona.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ho beilwe ditemoso tse $count',
      one: 'Ho beilwe temoso e le nngwe',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized =>
      'Romela ka ntle phaello e fumanweng (CSV)';

  @override
  String get portfolioAnnualReturn => 'Poelo ya selemo';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / selemo';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Poelo ya selemo e lekantsweng ka tjhelete (XIRR): e ela hloko hore o rekile le ho rekisa neng, kahoo tjhelete e kentsweng hamorao ha e e sothe. E bontshwa ha theko ya hao ya pele e se e le selemo bonyane; dividende ha e a kenyeletswa.';

  @override
  String get eventsAddToCalendar => 'Kenya khalendareng (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Temoso ya phothefolio';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Tsebiso ha phothefolio ya hao kaofela e fetoha hakana ka letsatsi le le leng.';

  @override
  String get portfolioMoveAlertOff => 'E timile';

  @override
  String portfolioMoveUp(String percent) {
    return 'Phothefolio ya hao e nyolohile ka $percent kajeno';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Phothefolio ya hao e theohile ka $percent kajeno';
  }

  @override
  String get whatIfTitle => 'Ho ka be ho le jwang ha o ne o tsetetse?';

  @override
  String get whatIfAmount => 'Palo';

  @override
  String whatIfResult(String amount, String period) {
    return 'Ha o ne o tsetetse $amount ka nako ya $period, kajeno e ne e tla ba ya boleng ba';
  }

  @override
  String get whatIfNote =>
      'E thehilwe feela hodima theko ya seabo: dividende, ditefello le lekgetho ha di a kenyeletswa. Dipoelo tsa nako e fetileng ha di bolele esale pele tsa nako e tlang.';

  @override
  String get watchShare => 'Arolelana lenane';

  @override
  String get watchImport => 'Kenya di-ticker';

  @override
  String get watchImportHint =>
      'Kgomaretsa di-ticker tse arohantsweng ka dikhoma, dibaka tse se nang letho kapa mela e metjha – mohlala, lenane leo motho e mong a le arolelaneng le wena.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ho eketsitswe dishere tse $count',
      one: 'Ho eketsitswe shere e le nngwe',
      zero: 'Ha ho na dishere tse ntjha',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Tse kgolo haholo pele';

  @override
  String get positionsSortGain => 'Phaello yohle e kgolo pele';

  @override
  String get positionsSortToday => 'Tse ntle ka ho fetisisa kajeno pele';

  @override
  String get chartMyBuys => 'Ditheko tsa hao';

  @override
  String get chartMySells => 'Thekiso tsa hao';

  @override
  String get shortcutsTitle => 'Dikhutsufatso tsa khiboto';

  @override
  String usMarketOpen(String time) {
    return 'Mmaraka wa Amerika o bulehile · o tla kwalwa ka mor\'a $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Mmaraka wa Amerika o kwetswe · o tla bulwa ka mor\'a $time';
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
    return '$days matsatsi $hours h';
  }

  @override
  String get portfolioGoalSet => 'Beha sepheo';

  @override
  String get portfolioGoalTitle => 'Sepheo sa potefolio';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · Sepheo: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Sepheo se fihletswe: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Tlosa sepheo';

  @override
  String get alertEdit => 'Fetola tsebiso';

  @override
  String get positionOpenLots => 'E ntse e le tsa hao (tsa kgale pele)';

  @override
  String get lotRemoved => 'Theko kapa thekiso e hlakotswe';

  @override
  String get alertDeleted => 'Temoso e hlakotswe';

  @override
  String get alertsClearTriggered => 'Hlakola ditemoso tse etsahetseng';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ho hlakotswe ditemoso tse $count',
      one: 'Ho hlakotswe temoso e le nngwe',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Leqephe la qalo';
}
