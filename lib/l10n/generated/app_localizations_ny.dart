// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Nyanja Chewa Chichewa (`ny`).
class AppLocalizationsNy extends AppLocalizations {
  AppLocalizationsNy([String locale = 'ny']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'Jambulani sheya ndipo mudziwe zonse za iyo.';

  @override
  String get homeHint =>
      'Satifiketi ya masheya, sikirini ya pulogalamu ya broker, nyuzipepala kapena chizindikiro cha kampani – chilichonse chomwe chimazindikiritsa sheya.';

  @override
  String get takePhoto => 'Jambulani chithunzi';

  @override
  String get chooseFromGallery => 'Sankhani mu zithunzi';

  @override
  String get chooseImage => 'Sankhani chithunzi';

  @override
  String get enterTickerManually => 'Lembani ticker nokha';

  @override
  String get tickerInputLabel => 'Chizindikiro cha ticker';

  @override
  String get tickerInputHint => 'mwachitsanzo: AAPL';

  @override
  String get lookUp => 'Sakani';

  @override
  String demoModeBanner(String symbols) {
    return 'Njira yoyeserera – palibe kiyi ya deta ya msika yomwe yakhazikitsidwa. Deta yachitsanzo ilipo ya: $symbols.';
  }

  @override
  String get recognizing => 'Tikusanthula chithunzi…';

  @override
  String get loadingData => 'Tikutsitsa deta…';

  @override
  String get noCandidatesTitle => 'Palibe sheya yomwe yadziwika';

  @override
  String get noCandidatesBody =>
      'Sitinathe kuzindikira sheya pa chithunzichi. Yesani chithunzi chowonekera bwino, kapena lembani ticker nokha.';

  @override
  String get whatWeSaw => 'Zomwe tinaona';

  @override
  String get chooseCandidateTitle => 'Munatanthauza sheya iti?';

  @override
  String confidencePercent(int percent) {
    return 'Kutsimikiza $percent%';
  }

  @override
  String get settings => 'Zokonda';

  @override
  String get language => 'Chilankhulo';

  @override
  String get systemLanguage => 'Chilankhulo cha chipangizo';

  @override
  String get about => 'Zokhudza';

  @override
  String get disclaimer =>
      'Pulogalamuyi imapereka zambiri zokha ndipo si malangizo okhudza kuyika ndalama. Deta ikhoza kuchedwa kapena kukhala yolakwika.';

  @override
  String dataSource(String source) {
    return 'Gwero la deta: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Kuzindikira: $source';
  }

  @override
  String get retry => 'Yesaninso';

  @override
  String get cancel => 'Letsani';

  @override
  String get ok => 'Chabwino';

  @override
  String get close => 'Tsekani';

  @override
  String get errorGeneric => 'Pachitika vuto.';

  @override
  String get errorSectionUnavailable => 'Gawo ili silinathe kutsegulidwa.';

  @override
  String get notAvailable => 'palibe';

  @override
  String get sectionIdentity => 'Chizindikiritso';

  @override
  String get sectionPrice => 'Mtengo';

  @override
  String get sectionValuation => 'Kuwerengera mtengo';

  @override
  String get sectionFinancials => 'Zachuma';

  @override
  String get sectionDividend => 'Gawo la phindu';

  @override
  String get sectionProfile => 'Mbiri ya kampani';

  @override
  String get sectionAnalysts => 'Malingaliro a akatswiri';

  @override
  String get sectionNews => 'Nkhani';

  @override
  String get sectionRecognition => 'Zambiri za kuzindikira';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Msika wa masheya';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Ndalama';

  @override
  String get labelCountry => 'Dziko';

  @override
  String get labelIndustry => 'Mtundu wa bizinesi';

  @override
  String get labelSector => 'Gawo la chuma';

  @override
  String get labelWebsite => 'Webusayiti';

  @override
  String get labelIpoDate => 'Tsiku la IPO';

  @override
  String get labelMarketCap => 'Mtengo pa msika';

  @override
  String get labelSharesOutstanding => 'Masheya omwe aperekedwa';

  @override
  String get labelEmployees => 'Ogwira ntchito';

  @override
  String get labelCeo => 'Mkulu wa kampani';

  @override
  String get labelHeadquarters => 'Likulu';

  @override
  String get labelDescription => 'Kufotokozera';

  @override
  String get labelLastPrice => 'Mtengo womaliza';

  @override
  String get labelChange => 'Kusintha';

  @override
  String get labelOpen => 'Mtengo wotsegulira';

  @override
  String get labelDayHigh => 'Pamwamba pa tsiku';

  @override
  String get labelDayLow => 'Pansi pa tsiku';

  @override
  String get labelPreviousClose => 'Mtengo wotsekera wapitawo';

  @override
  String get labelWeek52High => 'Pamwamba pa masabata 52';

  @override
  String get labelWeek52Low => 'Pansi pa masabata 52';

  @override
  String get labelAverageVolume10d => 'Kuchuluka kwapakatikati (masiku 10)';

  @override
  String updatedAt(String time) {
    return 'Zasinthidwa $time';
  }

  @override
  String get labelPeTrailing => 'P/E (yapitayo)';

  @override
  String get labelPeForward => 'P/E (yoyembekezeka)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / ndalama zotsala (FCF)';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Ndalama zolowa (TTM)';

  @override
  String get labelNetIncomeTtm => 'Phindu lenileni (TTM)';

  @override
  String get labelGrossMargin => 'Phindu lonse (%)';

  @override
  String get labelOperatingMargin => 'Phindu la ntchito (%)';

  @override
  String get labelNetMargin => 'Phindu lenileni (%)';

  @override
  String get labelRoe => 'Phindu pa ndalama za eni (ROE)';

  @override
  String get labelRoa => 'Phindu pa katundu (ROA)';

  @override
  String get labelDebtToEquity => 'Ngongole / ndalama za eni';

  @override
  String get labelCurrentRatio => 'Chiyerekezo cha kubweza ngongole';

  @override
  String get labelRevenueGrowth => 'Kukula kwa ndalama zolowa (YoY)';

  @override
  String get labelEpsGrowth => 'Kukula kwa EPS (YoY)';

  @override
  String get labelDividendYield => 'Chiwerengero cha gawo la phindu (%)';

  @override
  String get labelDividendPerShare => 'Gawo la phindu pa sheya iliyonse';

  @override
  String get labelPayoutRatio => 'Chiyerekezo cha phindu logawidwa';

  @override
  String get labelConsensus => 'Maganizo a ambiri';

  @override
  String get ratingStrongBuy => 'Gulani kwambiri';

  @override
  String get ratingBuy => 'Gulani';

  @override
  String get ratingHold => 'Sungani';

  @override
  String get ratingSell => 'Gulitsani';

  @override
  String get ratingStrongSell => 'Gulitsani kwambiri';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Akatswiri $count',
      one: 'Katswiri 1',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Nthawi: $period';
  }

  @override
  String get noNews => 'Palibe nkhani zaposachedwa.';

  @override
  String get openArticle => 'Tsegulani nkhani';

  @override
  String get openLinkFailed => 'Sitinathe kutsegula ulalo.';

  @override
  String get recognitionSummary => 'Chidule';

  @override
  String get recognitionEvidence => 'Chifukwa chomwe tikuganiza choncho';

  @override
  String get recognitionRawText => 'Mawu owerengedwa pa chithunzi';

  @override
  String get errMissingAnthropicKey =>
      'Kuzindikira zithunzi sikunakhazikitsidwe (palibe ANTHROPIC_API_KEY). Lembani ticker nokha.';

  @override
  String get errRecognitionUnreachable =>
      'Sitinathe kufikira utumiki wozindikira zithunzi. Onani intaneti yanu.';

  @override
  String errRecognitionHttp(String status) {
    return 'Utumiki wozindikira wabweza vuto (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Utumiki wozindikira sunathe kukonza chithunzichi.';

  @override
  String get errRecognitionTruncated =>
      'Yankho la kuzindikira lidadulidwa. Chonde yesaninso.';

  @override
  String get errRecognitionBadResponse =>
      'Yankho losayembekezeka kuchokera ku utumiki wozindikira.';

  @override
  String get errRecognitionEmpty =>
      'Utumiki wozindikira wabweza yankho lopanda kanthu.';

  @override
  String get errMissingFinnhubKey =>
      'Deta ya msika sinakhazikitsidwe (palibe FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Sitinathe kufikira utumiki wa deta ya msika. Onani intaneti yanu.';

  @override
  String get errMarketRateLimited =>
      'Zopempha zambiri kwambiri ku utumiki wa deta ya msika. Chonde dikirani mphindi imodzi.';

  @override
  String errMarketHttp(String status) {
    return 'Utumiki wa deta ya msika wabweza vuto (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Yankho losayembekezeka kuchokera ku utumiki wa deta ya msika.';

  @override
  String errNoQuote(String symbol) {
    return 'Palibe deta ya mtengo yomwe yapezeka ya $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Palibe mbiri ya kampani yomwe yapezeka ya $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Njira yoyeserera imagwira ntchito ndi $symbols zokha. Onjezani FINNHUB_API_KEY kuti mupeze deta ya nthawi yomweyo.';
  }

  @override
  String errUnknown(String detail) {
    return 'Pachitika vuto: $detail';
  }

  @override
  String get newSearch => 'Kusaka kwatsopano';

  @override
  String get recentSearches => 'Zaposachedwa';

  @override
  String get noRecentSearches => 'Palibe zomwe mwasaka posachedwa.';

  @override
  String get clearRecent => 'Chotsani zaposachedwa';

  @override
  String get greeting => 'Tione sheya iti?';

  @override
  String get searchHint => 'Ticker kapena dzina la kampani';

  @override
  String get attachImage => 'Phatikizani chithunzi';

  @override
  String get searchResultsTitle => 'Zotsatira za kusaka';

  @override
  String errNoResults(String query) {
    return 'Palibe masheya omwe apezeka a “$query”.';
  }

  @override
  String get quickBarHint => 'Lembani ticker kapena dzina la kampani…';

  @override
  String get openFullWindow => 'Tsegulani zenera';

  @override
  String hotkeyHint(String shortcut) {
    return 'Dinani $shortcut kulikonse kuti muitane WhatStock.';
  }

  @override
  String get trayOpen => 'Tsegulani WhatStock';

  @override
  String get trayQuickSearch => 'Kusaka mwachangu';

  @override
  String get trayQuit => 'Tulukani';

  @override
  String get appearance => 'Maonekedwe';

  @override
  String get themeSystem => 'Monga chipangizo';

  @override
  String get themeDark => 'Mdima';

  @override
  String get themeLight => 'Kuwala';

  @override
  String get back => 'Bwererani';

  @override
  String get aiSectionTitle => 'Kusanthula kwa AI';

  @override
  String get aiIntro =>
      'Kusanthula kwatsatanetsatane kolembedwa ndi AI: chidule cha nkhani zaposachedwa, bizinesi, mphamvu, zoopsa ndi zinthu zobisika, kuwerengera mtengo, chiyembekezo cha mtengo ndi zochitika zotheka kuchokera ku mbali za maganizo a anthu, za chikhalidwe, zaukadaulo ndi zachuma chonse, komanso zinthu zoyenera kutsatira.';

  @override
  String get aiGenerate => 'Pangani kusanthula';

  @override
  String get aiRegenerate => 'Pangani kachiwiri';

  @override
  String get aiGenerating =>
      'Tikukonza kusanthula… izi zingatenge mphindi imodzi kapena ziwiri.';

  @override
  String get aiSources => 'Magwero';

  @override
  String aiGeneratedAt(String time) {
    return 'Kunapangidwa $time';
  }

  @override
  String get aiDisclaimer =>
      'Kusanthula kopangidwa ndi AI kutengera deta yapoyera ndi nkhani zaposachedwa. Kungakhale ndi zolakwika kapena kukhala kwachikale, ndipo si malangizo okhudza kuyika ndalama.';

  @override
  String get errAiNotConfigured =>
      'Kusanthula kwa AI sikunakhazikitsidwe (palibe ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Sitinathe kufikira utumiki wa AI. Onani intaneti yanu.';

  @override
  String errAiHttp(String status) {
    return 'Utumiki wa AI wabweza vuto (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Utumiki wa AI wakana kusanthula sheya iyi.';

  @override
  String get errAiBadResponse =>
      'Yankho losayembekezeka kuchokera ku utumiki wa AI.';

  @override
  String get sectionChart => 'Tchati cha mtengo';

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
      'Mbiri ya mtengo sikupezeka kuchokera ku gwero la deta lomwe lilipo.';

  @override
  String get sectionStatements => 'Malipoti azachuma (apachaka)';

  @override
  String get labelFiscalYear => 'Chaka chachuma';

  @override
  String get labelRevenue => 'Ndalama zolowa';

  @override
  String get labelNetIncome => 'Phindu lenileni';

  @override
  String get labelTotalAssets => 'Katundu yense';

  @override
  String get labelTotalLiabilities => 'Ngongole zonse';

  @override
  String get labelEquity => 'Ndalama za eni masheya';

  @override
  String get labelOperatingCashFlow => 'Ndalama zochokera mu ntchito';

  @override
  String get statementsUnavailable =>
      'Malipoti azachuma omwe adasindikizidwa sakupezeka pa sheya iyi.';

  @override
  String get launchAtLogin => 'Tsegulani polowa';

  @override
  String get hotkeyLabel => 'Njira yachidule ya ponseponse';

  @override
  String get hotkeyRecordHint => 'Dinani apa, kenako dinani makiyi atsopano';

  @override
  String get hotkeyReset => 'Bwezerani zoyambirira';

  @override
  String get pasteImage => 'Matani chithunzi kuchokera pa clipboard';

  @override
  String get errClipboardNoImage => 'Palibe chithunzi pa clipboard.';

  @override
  String get favorites => 'Zokondedwa';

  @override
  String get addToFavorites => 'Onjezani ku zokondedwa';

  @override
  String get removeFromFavorites => 'Chotsani ku zokondedwa';

  @override
  String get noFavorites =>
      'Palibe zokondedwa pakadali pano. Dinani nyenyezi pa sheya kuti muiwonjezere.';

  @override
  String get displayCurrency => 'Ndalama zowonetsera';

  @override
  String get displayCurrencyNone => 'Ndalama ya sheya yokha';

  @override
  String labelConverted(String currency) {
    return '≈ mu $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Mtengo wosinthira: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Zosintha';

  @override
  String currentVersion(String version) {
    return 'Mtundu $version';
  }

  @override
  String get autoUpdate => 'Ikani zosintha zokha';

  @override
  String get checkForUpdates => 'Onani zosintha';

  @override
  String get updateChecking => 'Tikuyang\'ana zosintha…';

  @override
  String get updateUpToDate => 'Muli ndi mtundu waposachedwa.';

  @override
  String updateAvailable(String version) {
    return 'Mtundu $version ulipo.';
  }

  @override
  String get updateDownloading => 'Tikutsitsa zosintha kumbuyo…';

  @override
  String get updateDownloaded =>
      'Zosintha zakonzeka. Yambitsaninso kuti muziike.';

  @override
  String get updateNow => 'Sinthani';

  @override
  String get restartNow => 'Yambitsaninso';

  @override
  String get updatesViaStore =>
      'Zosintha zimabwera zokha kudzera mu sitolo ya mapulogalamu.';

  @override
  String get updateCheckFailed => 'Sitinathe kuyang\'ana zosintha.';

  @override
  String get subscription => 'Kulembetsa';

  @override
  String get planTrial => 'Yoyeserera';

  @override
  String get planNormal => 'Wamba';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Palibe dongosolo logwira ntchito';

  @override
  String planAnalysesPerMonth(int count) {
    return 'Kusanthula $count pamwezi';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Kuyesera kwaulere kwa masiku $days ndi kusanthula $count';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Atsala masiku $days a kuyesera',
      one: 'Latsala tsiku 1 la kuyesera',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Kuyesera kwanu kwaulere kwatha. Sankhani dongosolo kuti mupitirize kusanthula.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Mwatsala ndi kusanthula $remaining mwa $total nthawi ino';
  }

  @override
  String extraCredits(int count) {
    return 'Kusanthula kowonjezera $count';
  }

  @override
  String renewsOn(String date) {
    return 'Kudzapitirizidwa pa $date';
  }

  @override
  String get choosePlan => 'Sankhani dongosolo';

  @override
  String get currentPlan => 'Dongosolo lanu lapano';

  @override
  String get subscribe => 'Lembetsani';

  @override
  String get perMonth => '/ mwezi';

  @override
  String get extraPacksTitle => 'Mukufuna zina? Gulani kusanthula kowonjezera';

  @override
  String get extraPacksHint =>
      'Kusanthula kowonjezera sikutha ntchito ndipo kumagwiritsidwa ntchito mutamaliza zomwe mumapatsidwa pamwezi.';

  @override
  String get buy => 'Gulani';

  @override
  String get restorePurchases => 'Bwezerani zogula';

  @override
  String get manageSubscription => 'Yang\'anirani kulembetsa';

  @override
  String get purchaseSuccess =>
      'Zikomo! Kugula kwanu kwayamba kugwira ntchito.';

  @override
  String get purchasePending => 'Kugula kukudikira…';

  @override
  String get purchaseFailed => 'Kugula sikunathe kumalizidwa.';

  @override
  String get purchaseCanceled => 'Kugula kwaletsedwa.';

  @override
  String get billingUnavailable =>
      'Kugula sikunapezeke pa makina awa. Lembetsani pa foni yanu kapena Mac; dongosolo lanu lidzagwira ntchito pa chipangizo chilichonse.';

  @override
  String get errQuotaExceeded =>
      'Mulibe kusanthula kotsala nthawi ino. Kwezani dongosolo lanu kapena gulani kusanthula kowonjezera.';

  @override
  String get errTrialExpired =>
      'Kuyesera kwanu kwaulere kwatha. Sankhani dongosolo kuti mupitirize.';

  @override
  String get errNoPlan =>
      'Mukufunika dongosolo logwira ntchito kuti mugwiritse ntchito kusanthula kwa AI.';

  @override
  String get viewPlans => 'Onani madongosolo';

  @override
  String get usageTitle => 'Kagwiritsidwe ntchito';

  @override
  String get demoPurchaseNote =>
      'Malipiro oyeserera: kugula pa makina awa ndi kongoyerekeza.';

  @override
  String get mostPopular => 'Yotchuka kwambiri';

  @override
  String get bestValue => 'Yopindulitsa kwambiri';

  @override
  String get planFeaturesCommon =>
      'Kuzindikira zithunzi, deta ya nthawi yomweyo, matchati, zokondedwa ndi zilankhulo zonse 120 zili mu dongosolo lililonse. Zomwe mumapatsidwa ndi za kusanthula kwa AI.';

  @override
  String get searchLanguages => 'Sakani zilankhulo…';

  @override
  String get noLanguageMatch => 'Palibe chilankhulo chofanana.';

  @override
  String get aiSettings => 'Kusanthula kwa AI';

  @override
  String get aiLength => 'Kutalika';

  @override
  String get aiDepthBrief => 'Kwachidule';

  @override
  String get aiDepthStandard => 'Kwanthawi zonse';

  @override
  String get aiDepthDeep => 'Kwatsatanetsatane';

  @override
  String get aiDepthBriefDesc => 'Zofunika, mwachangu.';

  @override
  String get aiDepthStandardDesc =>
      'Lipoti lathunthu lokhala ndi gawo lililonse.';

  @override
  String get aiDepthDeepDesc =>
      'Kusaka kwambiri pa intaneti, kuyerekeza ndi opikisana nawo komanso tsatanetsatane wozama.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Pafupifupi mawu $min–$max';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'kumagwiritsa ntchito kusanthula $count',
      one: 'kumagwiritsa ntchito kusanthula 1',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Mlingo wa owerenga';

  @override
  String get aiReaderBeginner => 'Woyamba';

  @override
  String get aiReaderExperienced => 'Wodziwa bwino';

  @override
  String get aiReaderBeginnerDesc =>
      'Chilankhulo chosavuta; mawu aliwonse aukadaulo amafotokozedwa.';

  @override
  String get aiReaderExperiencedDesc =>
      'Zolemba zolimba zogwiritsa ntchito mawu azachuma odziwika.';

  @override
  String get aiCounterArgument => 'Mfundo yotsutsa yamphamvu kwambiri';

  @override
  String get aiCounterArgumentDesc =>
      'Chidule nthawi zonse chimatha ndi mfundo yamphamvu kwambiri yotsutsana ndi ganizo lake lomaliza.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Mpaka kusaka $count pa intaneti pa kusanthula kulikonse ndi dongosolo lanu',
      one: 'Mpaka kusaka 1 pa intaneti pa kusanthula kulikonse ndi dongosolo lanu',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Kusaka pa intaneti pa kutalika kwanthawi zonse malinga ndi dongosolo: Wamba $normal, Pro $pro, Max $max, Ultra $ultra. Kwachidule kumachepetsa 2, Kwatsatanetsatane kumawonjezera 2.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'mpaka kusaka $count pa intaneti',
      one: 'mpaka kusaka 1 pa intaneti',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kusaka $count pa intaneti pa kusanthula kulikonse',
      one: 'Kusaka 1 pa intaneti pa kusanthula kulikonse',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Kutalika kumeneku kumafuna kusanthula $needed, koma mwatsala ndi $left kokha. Sankhani kutalika kwachidule mu Zokonda kapena pezani kusanthula kwina.';
  }

  @override
  String get outlookMarketMood => 'Maganizo a msika';

  @override
  String get moodVeryPessimistic => 'Kukayika kwambiri';

  @override
  String get moodPessimistic => 'Kukayika';

  @override
  String get moodNeutral => 'Pakatikati';

  @override
  String get moodOptimistic => 'Chiyembekezo';

  @override
  String get moodVeryOptimistic => 'Chiyembekezo chachikulu';

  @override
  String get scenarioBull => 'Zinthu zikayenda bwino';

  @override
  String get scenarioBase => 'Mkhalidwe wapakati';

  @override
  String get scenarioBear => 'Zinthu zikavuta';

  @override
  String outlookCurrentPrice(String price) {
    return 'Mtengo wapano: $price';
  }

  @override
  String get outlookKeyLevels => 'Milingo yofunika';

  @override
  String get keyLevelSupport => 'Mlingo wapansi (support)';

  @override
  String get keyLevelResistance => 'Mlingo wapamwamba (resistance)';

  @override
  String get keyLevelAnchor => 'Mlingo wokhazikika';

  @override
  String get upcomingEvents => 'Zochitika zikubwera';

  @override
  String get outlookChartNote =>
      'Milingo yongoyerekeza; mwayi ndi kuyerekeza chabe, osati kulosera.';

  @override
  String get accountTitle => 'Akaunti';

  @override
  String get signIn => 'Lowani';

  @override
  String get signOut => 'Tulukani';

  @override
  String get notSignedIn => 'Simunalowe';

  @override
  String get accountBenefit =>
      'Lowani kuti kulembetsa kwanu kugwire ntchito pa zipangizo zanu zonse.';

  @override
  String get accountSyncedNote =>
      'Kulembetsa kwanu ndi kusanthula kotsala ndi zofanana pa chipangizo chilichonse.';

  @override
  String get signInTitle => 'Lowani mu WhatStock';

  @override
  String get emailLabel => 'Adilesi ya imelo';

  @override
  String get continueWithEmail => 'Pitirizani ndi imelo';

  @override
  String codeSentTo(String email) {
    return 'Tatumiza khodi ya manambala 6 ku $email. Ikugwira ntchito kwa mphindi 10.';
  }

  @override
  String get codeLabel => 'Khodi yolowera';

  @override
  String get resendCode => 'Tumizani khodi yatsopano';

  @override
  String get useDifferentEmail => 'Gwiritsani ntchito imelo ina';

  @override
  String get errInvalidCode => 'Khodi ndi yolakwika kapena nthawi yake yatha.';

  @override
  String get errInvalidEmail => 'Chonde lembani adilesi ya imelo yolondola.';

  @override
  String get errSignInFailed =>
      'Kulowa kwalephera. Onani intaneti yanu ndipo yesaninso.';

  @override
  String get checkoutWaiting =>
      'Malizitsani kulipira mu msakatuli wanu. Pulogalamu idzasintha yokha mukamaliza.';

  @override
  String get paymentViaStripe =>
      'Malipiro otetezeka mu msakatuli wanu kudzera mu Stripe. Letsani nthawi iliyonse.';

  @override
  String get paymentViaStore =>
      'Mumalipiritsidwa kudzera mu akaunti yanu ya App Store kapena Google Play. Letsani nthawi iliyonse mu zokonda za sitolo.';

  @override
  String get keySpace => 'Mpata';

  @override
  String get doubleOptionTitle => 'Dinani Option kawiri';

  @override
  String get doubleOptionSubtitle =>
      'Kudina Option kawiri mwachangu kumaitananso WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Kuti zigwire ntchito ngakhale mu mapulogalamu ena, lolani WhatStock mu System Settings → Privacy & Security → Input Monitoring, kenako tsegulaninso pulogalamuyi.';

  @override
  String get openSystemSettings => 'Tsegulani System Settings';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Dinani $shortcut kapena dinani Option kawiri kulikonse kuti muitane WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Zotheka kwambiri';

  @override
  String get longTermToday => 'Lero';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: 'zaka $years',
      one: 'chaka 1',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range pachaka';
  }

  @override
  String longTermLikely(String price) {
    return 'zotheka kwambiri $price';
  }

  @override
  String get confidenceLow => 'Kutsimikiza kochepa';

  @override
  String get confidenceMedium => 'Kutsimikiza kwapakatikati';

  @override
  String get confidenceHigh => 'Kutsimikiza kwakukulu';

  @override
  String get longTermNote =>
      'Milingo ya nthawi yayitali imadalira zongoganizira zomwe zatchulidwa ndipo imakula pakapita nthawi. Mitengo siphatikiza magawo a phindu. Kuyerekeza chabe, osati kulosera.';

  @override
  String get portfolio => 'Masheya anu';

  @override
  String get portfolioEmpty =>
      'Palibe kanthu pano. Tsegulani sheya ndipo dinani “Onjezani ku masheya anu” kuti muzitsatira zomwe muli nazo.';

  @override
  String get portfolioLocalNote =>
      'Zasungidwa pa chipangizo ichi chokha. Ziwerengero zonse zimasinthidwa pa mitengo ya ECB; mitengo ingachedwe.';

  @override
  String get addToPortfolio => 'Onjezani ku masheya anu';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Onjezani $symbol';
  }

  @override
  String get portfolioQuantity => 'Chiwerengero cha masheya';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Mtengo pa sheya iliyonse ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Tsiku logula';

  @override
  String get portfolioAdd => 'Onjezani';

  @override
  String get portfolioInvalidNumber => 'Lembani nambala yoposa ziro.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol yawonjezedwa ku masheya anu.';
  }

  @override
  String get portfolioTotalValue => 'Mtengo wonse';

  @override
  String get portfolioToday => 'Lero';

  @override
  String get portfolioGainLoss => 'Phindu/kutayika';

  @override
  String get portfolioInvested => 'Zoyikidwa';

  @override
  String get portfolioAllocation => 'Kagawidwe';

  @override
  String get portfolioPositions => 'Masheya omwe muli nawo';

  @override
  String portfolioAvgCost(String price) {
    return 'mtengo wapakatikati $price';
  }

  @override
  String get portfolioYourPosition => 'Zomwe muli nazo';

  @override
  String get portfolioPurchases => 'Zogula';

  @override
  String get portfolioRemove => 'Chotsani';

  @override
  String get portfolioExcluded =>
      'Masheya opanda mtengo kapena mtengo wosinthira ndalama sawerengedwa mu ziwerengero zonse.';

  @override
  String get priceAlerts => 'Zidziwitso za mtengo';

  @override
  String get setPriceAlert => 'Khazikitsani chidziwitso cha mtengo';

  @override
  String alertDialogTitle(String symbol) {
    return 'Chidziwitso cha mtengo · $symbol';
  }

  @override
  String get alertKindAbove => 'Ukakwera kupitirira';

  @override
  String get alertKindBelow => 'Ukatsika pansi pa';

  @override
  String get alertKindMove => 'Ukasintha kwambiri tsiku limodzi';

  @override
  String alertTargetPrice(String currency) {
    return 'Mtengo ($currency)';
  }

  @override
  String get alertMovePercent => 'Kusintha kwa tsiku (%)';

  @override
  String get alertAlreadyMet => 'Mtengo wapitirira kale mlingo uwu.';

  @override
  String get alertSave => 'Khazikitsani chidziwitso';

  @override
  String alertCreated(String symbol) {
    return 'Chidziwitso cha $symbol chakhazikitsidwa.';
  }

  @override
  String get alertsEmpty =>
      'Palibe zidziwitso za mtengo pakadali pano. Tsegulani sheya ndipo dinani belu kuti mukhazikitse.';

  @override
  String get alertsNote =>
      'Zidziwitso zimafufuzidwa mphindi 5 zilizonse pamene WhatStock ikugwira ntchito. Pa kompyuta imapitiriza kugwira ntchito mu menu bar kapena tray; pa foni, pakadali pano zidziwitso zimabwera pulogalamu ikakhala yotsegula.';

  @override
  String alertDescAbove(String price) {
    return 'Pamwamba pa $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Pansi pa $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Kusintha kwa tsiku ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Chinachitika $date pa $price';
  }

  @override
  String get alertRearm => 'Khazikitsaninso';

  @override
  String get alertDelete => 'Fufutani';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol yakwera kupitirira $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol yatsika pansi pa $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol yasintha $percent lero';
  }

  @override
  String alertHitBody(String price) {
    return 'Mtengo wapano: $price';
  }

  @override
  String get alertOpen => 'Tsegulani';

  @override
  String get keepInTrayTitle =>
      'Pitirizani kugwira ntchito zenera litatsekedwa';

  @override
  String get keepInTraySubtitle =>
      'WhatStock imakhalabe mu menu bar kapena tray, choncho njira yachidule ndi zidziwitso za mtengo zimapitiriza kugwira ntchito.';

  @override
  String get termsOfUse => 'Malamulo Ogwiritsa Ntchito';

  @override
  String get privacyPolicy => 'Mfundo Zachinsinsi';

  @override
  String get subscriptionLegal =>
      'Kulembetsa kumapitirizidwa kokha mwezi uliwonse mpaka mutaletsa. Polembetsa mukuvomereza Malamulo Ogwiritsa Ntchito ndi Mfundo Zachinsinsi.';

  @override
  String get deleteAccount => 'Fufutani akaunti';

  @override
  String get deleteAccountTitle => 'Mukufuna kufufuta akaunti yanu?';

  @override
  String get deleteAccountBody =>
      'Akaunti yanu ndi zonse zosungidwa pa seva yathu (imelo, zomwe mumapatsidwa, kagwiritsidwe ntchito) zidzafufutidwa kotheratu, ndipo kusanthula komwe simunagwiritse ntchito kudzatayika. Kulembetsa komwe kunalipiridwa mu msakatuli kumaletsedwa nthawi yomweyo; kulembetsa kwa App Store kapena Google Play kuyenera kuletsedwa mu zokonda za sitolo.';

  @override
  String get deleteLocalData =>
      'Fufutaninso deta ya pa chipangizo ichi (masheya, zidziwitso, zokondedwa, mbiri, kusanthula kosungidwa)';

  @override
  String get deleteAccountConfirm => 'Fufutani kotheratu';

  @override
  String get accountDeleted => 'Akaunti yanu yafufutidwa.';

  @override
  String get errDeleteAccount =>
      'Akaunti sinathe kufufutidwa. Onani intaneti yanu ndipo yesaninso.';

  @override
  String get aiTrialBriefNote =>
      'Kusanthula kwa nthawi yoyesera kumakhala kwachidule ndipo kumapangidwa ndi mtundu wa AI wothamanga kwambiri. Ndi dongosolo, mumapeza AI yathu yamphamvu kwambiri, kusaka kwambiri pa intaneti, komanso kutalika kwa Kwanthawi zonse ndi Kwatsatanetsatane.';

  @override
  String get billingMonthly => 'Pamwezi';

  @override
  String get billingYearly => 'Pachaka';

  @override
  String get yearlyDiscount => 'Miyezi 2 yaulere';

  @override
  String get perYear => '/ chaka';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price pamwezi';
  }

  @override
  String get subscriptionLegalYearly =>
      'Kulembetsa kwapachaka kumapitirizidwa kokha chaka chilichonse mpaka mutaletsa. Polembetsa mukuvomereza Malamulo Ogwiritsa Ntchito ndi Mfundo Zachinsinsi.';

  @override
  String get myAnalyses => 'Zosanthula zanga';

  @override
  String get navAlerts => 'Zidziwitso';

  @override
  String get inviteTitle => 'Kuwoneratu kotsekedwa';

  @override
  String get inviteBody =>
      'Pakadali pano WhatStock ikupezeka mwa kuitanidwa kokha. Lowetsani khodi yoitanira imene munalandira.';

  @override
  String get inviteCodeLabel => 'Khodi yoitanira';

  @override
  String get inviteContinue => 'Pitirizani';

  @override
  String get inviteInvalid => 'Khodi yoitanira iyi si yovomerezeka.';

  @override
  String get inviteExpired =>
      'Kuitanidwa kumeneku kwatha nthawi. Pemphani khodi yatsopano kwa munthu amene anakuitanani.';

  @override
  String get inviteDeviceLimit =>
      'Khodi yoitanira iyi ikugwiritsidwa ntchito kale pa zipangizo zochuluka kwambiri zololedwa.';

  @override
  String get previewConfidential => 'Kuwoneratu kwachinsinsi';

  @override
  String get errPreviewDailyLimit =>
      'Malire a kusanthula a lero a kuwoneratu kumeneku afika. Yesaninso mawa.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'maola $count apitawo',
      one: 'ola 1 lapitalo',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'masiku $count apitawo',
      one: 'tsiku 1 lapitalo',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Kodi mukufuna kukonzanso kusanthula kumeneku?';

  @override
  String staleBody(String age) {
    return 'Kusanthula kumeneku kunapangidwa $age. Mitengo, nkhani ndi zotsatira zitha kuti zasintha kuyambira pamenepo.';
  }

  @override
  String get staleKeep => 'Onetsani chakale';

  @override
  String get staleRefresh => 'Pangani chatsopano';

  @override
  String seeAll(int count) {
    return 'Onani zonse ($count)';
  }

  @override
  String get searchAnalyses => 'Sakani zosanthula zanu';

  @override
  String get deleteAnalysis => 'Chotsani';

  @override
  String analysisDeleted(String symbol) {
    return 'Kusanthula kwa $symbol kwachotsedwa';
  }

  @override
  String get keyLevelAlertHint =>
      'Dinani mlingo kuti mulandire chidziwitso mtengo ukafika pamenepo.';

  @override
  String get shareAnalysisTitle => 'Gawani kusanthula';

  @override
  String get shareAsImage => 'Gawani ngati chithunzi';

  @override
  String get shareAsText => 'Gawani ngati mawu';

  @override
  String get shareCardFooter => 'Zapangidwa ndi WhatStock';

  @override
  String get shareCardDisclaimer =>
      'Kusanthula kwa AI · si malangizo okhudza kuyika ndalama';

  @override
  String get referralTitle => 'Itanani anzanu';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'kusanthula kowonjezera $count',
      one: 'kusanthula kowonjezera 1',
    );
    return 'Gawani khodi yanu. Mnzanu amalandira $_temp0 nthawi yomweyo, ndipo inunso mumalandira chimodzimodzi akamaliza kusanthula kwake koyamba.';
  }

  @override
  String get referralYourCode => 'Khodi yanu';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Oitanidwa: $invited · Olandira mphotho: $rewarded';
  }

  @override
  String get referralHaveCode => 'Muli ndi khodi yochokera kwa mnzanu?';

  @override
  String get referralRedeem => 'Gwiritsani ntchito';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kusanthula kowonjezera $count kwawonjezedwa. Takulandirani!',
      one: 'Kusanthula kowonjezera 1 kwawonjezedwa. Takulandirani!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Khodi iyi kulibe. Yang\'anani ndipo yesaninso.';

  @override
  String get referralErrOwn => 'Simungagwiritse ntchito khodi yanu.';

  @override
  String get referralErrAlready => 'Munagwiritsa kale ntchito khodi ya mnzanu.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'kusanthula kowonjezera $count',
      one: 'kusanthula kowonjezera 1',
    );
    return 'Ndimasanthula masheya ndi WhatStock: jambulani sheya ndipo AI imafotokoza. Ndi khodi yanga $code mumalandira $_temp0.';
  }

  @override
  String get referralCopied => 'Khodi yakopedwa';

  @override
  String get onboardTitle1 => 'Jambulani sheya';

  @override
  String get onboardBody1 =>
      'Chophimba cha pulogalamu ya broker, nyuzipepala kapena chizindikiro cha kampani ndi zokwanira: WhatStock imazindikira sheyayo ndipo imakuwonetsani mtengo wake, tchati ndi ziwerengero zofunika.';

  @override
  String get onboardTitle2 => 'Mvetsetsani mu mphindi zochepa';

  @override
  String get onboardBody2 =>
      'Kusanthula kwa AI kumafotokoza zomwe zimasuntha sheya, zoopsa, kufunika kwake ndi zochitika zitatu za komwe mtengo ungapite – ndi magwero komanso m\'chilankhulo chanu.';

  @override
  String get onboardTitle3 => 'Khalani odziwa nthawi zonse';

  @override
  String get onboardBody3 =>
      'Zokondedwa, masheya anu ndi zidziwitso za mtengo zimakudziwitsani nthawi zonse. Zosanthula zanu zimakhala pa chipangizo chanu, zokonzeka kutsegulidwanso.';

  @override
  String get onboardNext => 'Patsogolo';

  @override
  String get onboardStart => 'Tiyeni tiyambe';

  @override
  String get onboardSkip => 'Dumphani';

  @override
  String changesTitle(String date) {
    return 'Kuchokera pa kusanthula kwapitako ($date)';
  }

  @override
  String get changesPrice => 'Mtengo';

  @override
  String get changesNoMajor => 'Zomwe zikuyembekezeka sizinasinthe kwambiri.';

  @override
  String get changesPreviousSummary => 'Chidule chapitacho';

  @override
  String get telemetryTitle => 'Thandizani kukonza WhatStock';

  @override
  String get telemetryBody =>
      'Gawanani ziwerengero za kagwiritsidwe ntchito ndi malipoti a kuwonongeka popanda dzina: ndi zinthu ziti zomwe zimagwiritsidwa ntchito ndi chomwe chalakwika. Osati masheya anu, kusanthula kwanu kapena zambiri zanu zachinsinsi. Mutha kusintha izi nthawi iliyonse mu Zokonda.';

  @override
  String get telemetryAllow => 'Lolani';

  @override
  String get telemetryDecline => 'Ayi, zikomo';

  @override
  String get telemetrySetting =>
      'Ziwerengero zopanda dzina ndi malipoti a kuwonongeka';

  @override
  String get telemetrySettingHint =>
      'Kangati zinthu zimagwiritsidwa ntchito ndi malipoti a zolakwika, popanda zambiri zanu zachinsinsi kapena zomwe mwasaka ndi kusanthula.';

  @override
  String get askButton => 'Funsani za kusanthula kumeneku';

  @override
  String askTitle(String symbol) {
    return 'Mafunso okhudza $symbol';
  }

  @override
  String get askIntro =>
      'Funsani chilichonse chokhudza kusanthula: tanthauzo la chiopsezo, zomwe zingasinthe ziyembekezo, momwe nambala inawerengedwera. Mayankho amachokera pa kusanthula kumeneku ndipo si malangizo okhudza kuyika ndalama.';

  @override
  String get askHint => 'Funsani funso…';

  @override
  String get askSend => 'Tumizani';

  @override
  String get askThinking => 'Ndikuganiza…';

  @override
  String get askSuggest1 => 'Kodi chiopsezo chachikulu kwambiri ndi chiyani?';

  @override
  String get askSuggest2 => 'Kodi chingasinthe ziyembekezo ndi chiyani?';

  @override
  String get askSuggest3 => 'Fotokozani mophweka';

  @override
  String get askMaxReached =>
      'Limenelo linali funso lomaliza la kusanthula kumeneku. Pangani kusanthula kwatsopano kuti mufunse zambiri.';

  @override
  String get errAskLimit => 'Mwafika malire a mafunso a lero. Yesaninso mawa.';

  @override
  String get eventTomorrow => 'Mawa';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'patatha masiku $days',
      one: 'patatha tsiku 1',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Zotsatira za kotala';

  @override
  String get eventBeforeOpen => 'msika usanatsegulidwe';

  @override
  String get eventAfterClose => 'msika utatsekedwa';

  @override
  String eventEpsEstimate(String value) {
    return 'Kuyerekeza kwa EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Kuchokera ku kusanthula kwanu';

  @override
  String get eventsHint =>
      'Masiku a zotsatira za masheya omwe mumawakonda ndi a m\'masheya anu m\'masiku 90 akubwerawa, komanso zochitika za tsiku lodziwika zomwe kusanthula kwanu kwazindikira.';

  @override
  String get eventsEmpty =>
      'Palibe zochitika za tsiku lodziwika m\'masiku 90 akubwerawa. Onjezani zokondedwa kapena masheya kuti muone masiku a zotsatira zawo pano.';

  @override
  String get compareTitle => 'Yerekezani';

  @override
  String get compareAdd => 'Onjezani sheya';

  @override
  String get compareRemove => 'Chotsani';

  @override
  String get compareTickerHint => 'Ticker, mwachitsanzo MSFT';

  @override
  String get compareHint =>
      'Ziwerengero zazikulu mbali ndi mbali; mtengo wabwino kwambiri pa mzere uliwonse wawonetsedwa. Ndalama zili mu ndalama ya sheya iliyonse.';

  @override
  String get compareNoAnalysis => 'Palibe kusanthula pakadali pano';

  @override
  String get portfolioDividends => 'Gawo la phindu pachaka';

  @override
  String portfolioDividendYield(String percent) {
    return 'Chiwerengero: $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Gawo la phindu loyembekezeka pachaka limachokera pa magawo a phindu omwe analipidwa m\'miyezi 12 yapitayi; malipiro amtsogolo sali otsimikizika.';

  @override
  String positionDividend(String amount) {
    return 'Gawo la phindu: $amount pachaka';
  }

  @override
  String get chartAvgCost => 'Wapakati wanu';

  @override
  String get chartAlertLevel => 'Chidziwitso';

  @override
  String get marketsToday => 'Misika lero';

  @override
  String get notesTitle => 'Zolemba zanga';

  @override
  String get notesHint =>
      'Chifukwa chiyani munaigula, mukuyang\'anira chiyani, nchiyani chingakupangitseni kuigulitsa?';

  @override
  String get notesInfo =>
      'Zasungidwa pa chipangizo ichi chokha. Kusanthula kwa AI kumaganizira zolemba zanu.';

  @override
  String notesSaved(String date) {
    return 'Zasungidwa $date';
  }

  @override
  String get peersTitle => 'Makampani ofanana';

  @override
  String get portfolioExport => 'Tumizani ngati CSV';

  @override
  String get portfolioImport => 'Lowetsani kuchokera ku CSV';

  @override
  String get portfolioImportHint =>
      'Matani chogula chimodzi pa mzere uliwonse: ticker, kuchuluka, mtengo, ndalama, tsiku (YYYY-MM-DD). Mizati ingalekanitsidwe ndi koma, semikoloni kapena tabu; mzere wa mitu ndi wosankha.';

  @override
  String get portfolioImportButton => 'Lowetsani';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Zogula $count zawonjezedwa',
      one: 'Chogula 1 chawonjezedwa',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mizere $count yadumphidwa',
      one: 'Mzere 1 wadumphidwa',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Masheya anu, zokondedwa, zidziwitso za mtengo ndi zolemba zimalumikizidwa pa zipangizo zanu zonse.';

  @override
  String syncLast(String time) {
    return 'Kulumikiza komaliza: $time';
  }

  @override
  String get syncNow => 'Lumikizani tsopano';

  @override
  String get syncFailed => 'Kulumikiza kwalephera. Kudzayesanso kokha.';

  @override
  String get alertEmailTitle => 'Imelo chidziwitso chikayambika';

  @override
  String get alertEmailOn =>
      'Timafufuza zidziwitso zanu pakapita mphindi zingapo ndikukutumizirani imelo, ngakhale pulogalamu itatsekedwa.';

  @override
  String get alertEmailSignIn =>
      'Lowani ndi imelo yanu mu Zokonda kuti mulandire zidziwitso pa imelo, ngakhale pulogalamu itatsekedwa.';

  @override
  String get portfolioHistory => 'Mtengo pakapita nthawi';

  @override
  String get portfolioReviewTitle => 'Kusanthula masheya ndi AI';

  @override
  String get portfolioReviewIntro =>
      'AI imaona masheya anu onse: momwe ndalama zanu zasonkhanira pamalo amodzi, kudalira magawo a bizinesi ndi ndalama zakunja, zoopsa zomwe masheya anu amagawana, ndi magawo a phindu. Kumagwiritsa ntchito kusanthula 1.';

  @override
  String get portfolioReviewButton => 'Santhulani masheya anga';

  @override
  String get portfolioReviewAgain => 'Santhulani kachiwiri';

  @override
  String get portfolioReviewWorking => 'Tikusanthula masheya anu…';

  @override
  String get digestTitle => 'Chidule cha sabata pa imelo';

  @override
  String get digestHint =>
      'Lolemba lililonse: momwe zokondedwa zanu ndi masheya anu zinayendera sabata yatha, ndi masiku a zotsatira zawo omwe akubwera.';

  @override
  String get benchmarkTitle => 'Poyerekeza ndi S&P 500';

  @override
  String get benchmarkYours => 'Zomwe munagula';

  @override
  String get benchmarkIndex => 'Ndalama zomwezo mu S&P 500';

  @override
  String benchmarkAhead(String points) {
    return 'Bwino kuposa index ndi mapointi a peresenti $points';
  }

  @override
  String benchmarkBehind(String points) {
    return 'Kumbuyo kwa index ndi mapointi a peresenti $points';
  }

  @override
  String get benchmarkHint =>
      'Ngati kuti chilichonse chomwe munagula chinayikidwa mu S&P 500 index fund tsiku lomwelo. Popanda magawo a phindu; phindu lakale siliwonetsa phindu la mtsogolo.';

  @override
  String get portfolioSell => 'Gulitsani';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Gulitsani $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Mtengo wogulitsira pa sheya iliyonse ($currency)';
  }

  @override
  String get portfolioSellDate => 'Tsiku logulitsa';

  @override
  String get portfolioSellAll => 'Zonse';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Muli ndi $quantity';
  }

  @override
  String get portfolioSold => 'Zagulitsidwa';

  @override
  String get portfolioRealized => 'Phindu lenileni';

  @override
  String get portfolioClosed => 'Masheya ogulitsidwa onse';

  @override
  String get portfolioClosedNote => 'Masheya onse agulitsidwa';

  @override
  String get portfolioTransactions => 'Zogula ndi zogulitsa';

  @override
  String get portfolioRealizedByYear => 'Phindu lenileni pa chaka';

  @override
  String get portfolioRealizedHint =>
      'Zogulitsa zimayamba kufananizidwa ndi zogula zanu zakale kwambiri (FIFO), kusinthidwa pa mtengo wosinthira ndalama wa lero. Pa msonkho wanu, gwiritsani ntchito chikalata cha broker wanu.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Kuyambira kusanthula kumeneku, zotsatira zatsopano za kotala zasindikizidwa ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Zotsatira zatsopano';

  @override
  String get portfolioImportBrokers =>
      'Zotumiza kunja zochokera ku Revolut, Trading 212 ndi Interactive Brokers zimadziwikanso, pamodzi ndi zogulitsa; gawo la phindu ndi ndalama zosungitsa zimadumphidwa.';

  @override
  String get portfolioImportFile => 'Sankhani fayilo';

  @override
  String offlineBanner(String time) {
    return 'Palibe intaneti – tikuwonetsa deta yomaliza yosungidwa ($time).';
  }

  @override
  String get glossMarketCap =>
      'Mtengo wa kampani yonse pa msika wa masheya: mtengo wa sheya × chiwerengero cha masheya.';

  @override
  String get glossSharesOutstanding =>
      'Kuchuluka kwa masheya omwe kampani yapereka. Ngati akuchuluka, sheya iliyonse imakhala ndi gawo laling\'ono; kugulanso masheya kumawachepetsa.';

  @override
  String get glossPeTrailing =>
      'Mtengo ÷ phindu pa sheya iliyonse m\'miyezi 12 yapitayo: zaka zingati za phindu lapano zomwe mukulipira. Yotsika ndi yotchipa, koma makampani okula mofulumira nthawi zambiri amakhala ndi P/E yokwera.';

  @override
  String get glossPeForward =>
      'Monga P/E, koma pogwiritsa ntchito phindu limene akatswiri akuyembekezera m\'miyezi 12 ikubwerayi. Ngati ili pansi pa P/E yapitayo, phindu likuyembekezeka kukula.';

  @override
  String get glossPb =>
      'Mtengo ÷ mtengo wa m\'mabuku (katundu kuchotsa ngongole) pa sheya iliyonse. Pafupifupi 1 zikutanthauza kuti msika ukuyesa kampani mofanana ndi zomwe ili nazo pa pepala.';

  @override
  String get glossPs =>
      'Mtengo pa msika ÷ ndalama zolowa pachaka. Zothandiza pa makampani omwe alibe phindu kapena ali nalo pang\'ono; yerekezani m\'gawo limodzi la bizinesi.';

  @override
  String get glossEvToFcf =>
      'Mtengo wa kampani kuphatikiza ngongole (EV) ÷ ndalama zomwe imapanga pachaka pambuyo pa ndalama zoikamo. Yotsika zikutanthauza kuti mumapeza ndalama zambiri pa mtengowo.';

  @override
  String get glossPeg =>
      'P/E ÷ kukula kwa phindu kwa pachaka komwe kukuyembekezeka (%). Pafupifupi 1 nthawi zambiri kumaonedwa ngati koyenera; kumayesa P/E poganizira kukula.';

  @override
  String get glossEps =>
      'Phindu pa sheya iliyonse m\'miyezi 12 yapitayo. EPS yomwe ikukwera chaka ndi chaka ndi chimodzi mwa zizindikiro zamphamvu kwambiri za kampani yathanzi.';

  @override
  String get glossBeta =>
      'Momwe sheya imayendera limodzi ndi msika: 1 = ngati msika, 1.5 = kusinthasintha kokulirapo ndi pafupifupi 50%, pansi pa 1 = bata.';

  @override
  String get glossRevenueTtm =>
      'Malonda onse a miyezi 12 yapitayo, ndalama zogwiritsira ntchito zisanachotsedwe.';

  @override
  String get glossNetIncomeTtm =>
      'Phindu lotsala pambuyo pa ndalama zonse zogwiritsira ntchito, chiwongola dzanja ndi misonkho m\'miyezi 12 yapitayo.';

  @override
  String get glossGrossMargin =>
      'Gawo la ndalama zolowa lomwe latsala pambuyo pa mtengo wopangira katundu. Phindu lalikulu nthawi zambiri limasonyeza mphamvu yokhazikitsa mitengo.';

  @override
  String get glossOperatingMargin =>
      'Gawo la ndalama zolowa lomwe latsala pambuyo poyendetsa bizinesi (malipiro, lendi, malonda), chiwongola dzanja ndi misonkho zisanachotsedwe.';

  @override
  String get glossNetMargin =>
      'Gawo la ndalama zolowa lomwe limakhala phindu lomaliza. 20% zikutanthauza kuti 20 pa 100 iliyonse ya malonda ndi phindu.';

  @override
  String get glossRoe =>
      'Phindu pa ndalama za eni: phindu la pachaka ÷ ndalama za eni. Limasonyeza momwe oyang\'anira akugwiritsira ntchito bwino ndalama za eni masheya; kupitirira pafupifupi 15% ndi bwino kwambiri.';

  @override
  String get glossRoa =>
      'Phindu pa katundu: phindu la pachaka ÷ zonse zomwe kampani ili nazo. Yerekezani m\'gawo limodzi la bizinesi.';

  @override
  String get glossDebtToEquity =>
      'Ngongole ÷ ndalama za eni. Yokwera zikutanthauza ndalama zambiri zobwereka: chiopsezo chachikulu chiwongola dzanja chikakwera kapena bizinesi ikachepa.';

  @override
  String get glossCurrentRatio =>
      'Katundu wa nthawi yochepa ÷ ngongole zoyenera kulipidwa pasanathe chaka. Kupitirira 1 zikutanthauza kuti kampani ingathe kulipira ngongole zake zapafupi.';

  @override
  String get glossRevenueGrowth =>
      'Kuchuluka komwe ndalama zolowa zakulira poyerekeza ndi chaka chatha.';

  @override
  String get glossEpsGrowth =>
      'Kuchuluka komwe phindu pa sheya iliyonse lakulira poyerekeza ndi chaka chatha.';

  @override
  String get glossDividendYield =>
      'Gawo la phindu la pachaka ÷ mtengo wa sheya: ndalama zomwe mungalandire chaka chilichonse, monga peresenti ya zomwe mwalipira.';

  @override
  String get glossDividendPerShare =>
      'Gawo la phindu lomwe linaperekedwa pa sheya imodzi m\'chaka chathachi.';

  @override
  String get glossPayoutRatio =>
      'Gawo la phindu lomwe limagawidwa kwa eni masheya. Kupitirira 100% kampani imapereka zambiri kuposa zomwe imapeza, zomwe sizikhalitsa kawirikawiri.';

  @override
  String get glossTitle => 'Zikutanthauza chiyani?';

  @override
  String get watchNewsTitle => 'Nkhani za masheya anu';

  @override
  String get undo => 'Bwezerani';

  @override
  String get watchSort => 'Sanjani';

  @override
  String get watchSortOwn => 'Dongosolo langa';

  @override
  String get watchSortGainers => 'Zokwera kwambiri poyamba';

  @override
  String get watchSortLosers => 'Zotsika kwambiri poyamba';

  @override
  String get watchSortName => 'Potsatira ticker (A–Z)';

  @override
  String get watchHint =>
      'Kokani chogwirira kuti musinthe dongosolo, sunthirani kumanzere kuti muchotse. Mzere ukuwonetsa masiku 30 apitawa.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: kusanthula kwanu kwakonzeka.';
  }

  @override
  String alertFromCost(String price) {
    return 'Kuchokera pa mtengo wanu wapakati wogulira ($price):';
  }

  @override
  String get briefTitle => 'Lero ndi masheya anu';

  @override
  String get briefButton => 'Fotokozani lero';

  @override
  String get briefHint =>
      'Chidule chachidule cha AI cha momwe portfolio yanu ndi zomwe mumakonda zayendera lero ndi zomwe nkhani zaposachedwa zikunena. Sichigwiritsa ntchito kusanthula.';

  @override
  String get briefRefresh => 'Sinthani';

  @override
  String get sectionEarnings => 'Zotsatira za kotala';

  @override
  String earningsNext(String date) {
    return 'Lipoti lotsatira: $date';
  }

  @override
  String get earningsExpected => 'EPS yoyembekezeredwa';

  @override
  String get earningsReported => 'EPS yolengezedwa';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Pa kapena pamwamba pa EPS yoyembekezeredwa mu makotala $beats mwa $total omaliza',
      one: 'Pa kapena pamwamba pa EPS yoyembekezeredwa mu kotala $beats mwa 1',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol ilengeza zotsatira za kotala mawa';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol ilengeza zotsatira za kotala lero';
  }

  @override
  String get earningsRemindersTitle => 'Zikumbutso za zotsatira';

  @override
  String get earningsRemindersSubtitle =>
      'Chidziwitso tsiku limodzi zokondedwa zanu kapena masheya a mu portfolio yanu asanalengeze zotsatira za kotala';

  @override
  String addAllToFavorites(int count) {
    return 'Onjezani zonse ku zokondedwa ($count)';
  }

  @override
  String get portfolioImportPhoto =>
      'Lowetsani kuchokera pa chithunzi cha sikirini';

  @override
  String get holdingsReading => 'Tikuwerenga masheya anu…';

  @override
  String get holdingsReviewTitle => 'Masheya opezeka';

  @override
  String get holdingsReviewHint =>
      'Yang\'anani manambala musanawonjezere. Mtengo ndi mtengo wanu wapakati wogulira pa sheya iliyonse, osati mtengo wa lero.';

  @override
  String get holdingsNoPrice => 'Palibe mtengo wapakati wogulira pa chithunzi';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Wonjezerani masheya $count',
      one: 'Wonjezerani sheya 1',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Sitinapeze masheya pa chithunzi ichi. Yesani chithunzi cha sikirini cha tsamba la masheya a broker wanu.';

  @override
  String get week52Range => 'Mlingo wa masabata 52';

  @override
  String week52BelowHigh(String percent) {
    return '$percent pansi pa pamwamba pa masabata 52';
  }

  @override
  String get week52AtHigh => 'Pamwamba pa masabata 52';

  @override
  String get alertKindTrailing => 'Ukatsika kuchokera pamwamba';

  @override
  String get alertTrailingPercent => 'Kutsika kuchokera pamwamba (%)';

  @override
  String get alertTrailingHint =>
      'Imatsatira mtengo ukamakwera: imakudziwitsani mtengo ukatsika chonchi kuchokera pamlingo wapamwamba kwambiri kuyambira pamene mudaiyika.';

  @override
  String alertDescTrailing(String percent) {
    return 'Kutsika kwa $percent kuchokera pamwamba';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'pamwamba mpaka pano: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol yatsika $percent kuchokera pamwamba';
  }

  @override
  String get sectionInsiders => 'Malonda a anthu amkati';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'kugula $count',
      one: 'kugula 1',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'kugulitsa $count',
      one: 'kugulitsa 1',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Zotsala: masheya $shares';
  }

  @override
  String get insiderBuy => 'Anagula';

  @override
  String get insiderSell => 'Anagulitsa';

  @override
  String get insiderHint =>
      'Kugula ndi kugulitsa pamsika wotseguka kochitidwa ndi akuluakulu ndi otsogolera m\'masiku 90 apitawa (SEC Form 4). Kugwiritsa ntchito ma option ndi masheya opatsidwa sikuwerengedwa.';

  @override
  String get insiderNone =>
      'Palibe kugula kapena kugulitsa kwa anthu amkati pamsika wotseguka m\'masiku 90 apitawa.';

  @override
  String get analystTrend => 'Momwe malingaliro asinthira mwezi ndi mwezi';

  @override
  String get watchListAll => 'Zonse';

  @override
  String get watchListNew => 'Mndandanda watsopano';

  @override
  String get watchListName => 'Dzina la mndandanda';

  @override
  String get watchListRename => 'Sinthani dzina la mndandanda';

  @override
  String get watchListDelete => 'Chotsani mndandanda';

  @override
  String get watchListAddTo => 'Onjezani ku mndandanda';

  @override
  String get watchListEmpty =>
      'Palibe masheya pa mndandandawu pano. Dinani batani la mndandanda pafupi ndi sheya kuti muwonjezere.';

  @override
  String get portfolioAskTitle => 'Mafunso okhudza masheya anu';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'Zosunga zobwezera';

  @override
  String get backupSave => 'Sungani zosunga zobwezera';

  @override
  String get backupSaveHint =>
      'Zokondedwa zanu, mindandanda, masheya, zidziwitso ndi zolemba mu fayilo imodzi.';

  @override
  String get backupRestore => 'Bwezeretsani kuchokera ku zosunga';

  @override
  String get backupRestoreHint =>
      'Imawonjezera zomwe zili mu fayilo; palibe chomwe muli nacho tsopano chimene chichotsedwa.';

  @override
  String get backupRestored => 'Zosunga zabwezeretsedwa.';

  @override
  String get backupInvalid => 'Fayilo iyi si zosunga za WhatStock.';

  @override
  String get allocationPositions => 'Masheya';

  @override
  String get allocationSectors => 'Magawo';

  @override
  String get allocationCurrencies => 'Ndalama';

  @override
  String get compareReturn1y => 'Phindu la chaka 1';

  @override
  String get compareFromHigh => 'Kuchokera pamwamba pa masabata 52';

  @override
  String get briefAutoTitle => 'Chidule cha tsiku ndi tsiku m’mawa uliwonse';

  @override
  String get briefAutoSubtitle =>
      '“Lero ndi masheya anu” chimapangidwa chokha pambuyo pa 7:00 m’mawa pamene pulogalamuyo ikugwira ntchito; pa makompyuta, chidziwitso chidzakuuzani. Chimagwiritsa ntchito malire a mafunso anu a tsiku ndi tsiku, osati kusanthula.';

  @override
  String get targetsButton => 'Kagawidwe kofunidwa';

  @override
  String get targetsTitle => 'Kagawidwe kofunidwa';

  @override
  String get targetsHint =>
      'Ikani gawo la potifoliyo lomwe sheya iliyonse iyenera kukhala nalo. Siyani malo opanda kanthu ngati palibe cholinga. Pulogalamuyo idzakuwonetsani zomwe mungagule kapena kugulitsa.';

  @override
  String targetsSum(String percent) {
    return 'Zonse: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Gulani ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Gulitsani ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Pa cholinga';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol yaposa EPS yoyembekezeredwa';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol sinafike EPS yoyembekezeredwa';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'EPS yolengezedwa $actual, yoyembekezeredwa $estimate';
  }

  @override
  String get newsExplain => 'Kodi izi zikutanthauza chiyani?';

  @override
  String get watchAlertAll => 'Chenjezo pa kusintha kwakukulu kwa tsiku';

  @override
  String get watchAlertAllHint =>
      'Chenjezo la mtengo pa gawo lililonse la mndandandawu: lidzalira likasintha chonchi tsiku limodzi, mmwamba kapena pansi. Omwe ali nalo kale adzasunga lawo.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Machenjezo $count akhazikitsidwa',
      one: 'Chenjezo 1 lakhazikitsidwa',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Tumizani phindu lomwe mwapeza (CSV)';

  @override
  String get portfolioAnnualReturn => 'Phindu la pachaka';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / chaka';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Phindu la pachaka loyezedwa ndi ndalama (XIRR): limaganizira nthawi yomwe munagula ndi kugulitsa, choncho ndalama zowonjezeredwa pambuyo pake sizilisokoneza. Limawonetsedwa zogula zanu zoyamba zikakwana chaka chimodzi kapena kuposerapo; magawo a phindu sanaphatikizidwe.';

  @override
  String get eventsAddToCalendar => 'Onjezani ku kalendala (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Chenjezo la portfolio';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Chidziwitso pamene portfolio yanu yonse yasintha chonchi tsiku limodzi.';

  @override
  String get portfolioMoveAlertOff => 'Yazimitsidwa';

  @override
  String portfolioMoveUp(String percent) {
    return 'Portfolio yanu yakwera $percent lero';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Portfolio yanu yatsika $percent lero';
  }

  @override
  String get whatIfTitle => 'Bwanji mukadayika ndalama?';

  @override
  String get whatIfAmount => 'Kuchuluka';

  @override
  String whatIfResult(String amount, String period) {
    return 'Mukadayika $amount kwa $period, lero zikadakhala zamtengo wa';
  }

  @override
  String get whatIfNote =>
      'Zimachokera pa mtengo wa gawo lokha: magawo a phindu, zolipiritsa ndi misonkho siziwerengedwa. Phindu lakale siliwonetsa la mtsogolo.';

  @override
  String get watchShare => 'Gawana mndandanda';

  @override
  String get watchImport => 'Onjezani ma ticker';

  @override
  String get watchImportHint =>
      'Matani ma ticker olekanitsidwa ndi koma, mpata kapena mizere yatsopano – mwachitsanzo mndandanda umene wina wakugawirani.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Magawo $count awonjezedwa',
      one: 'Gawo 1 lawonjezedwa',
      zero: 'Palibe magawo atsopano',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Zazikulu kwambiri poyamba';

  @override
  String get positionsSortGain => 'Phindu lonse lalikulu poyamba';

  @override
  String get positionsSortToday => 'Zabwino kwambiri lero poyamba';

  @override
  String get chartMyBuys => 'Zomwe mwagula';

  @override
  String get chartMySells => 'Zomwe mwagulitsa';

  @override
  String get shortcutsTitle => 'Njira zachidule za kiyibodi';

  @override
  String usMarketOpen(String time) {
    return 'Msika wa ku America uli wotsegula · utsekedwa patatha $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Msika wa ku America watsekedwa · utsegulidwa patatha $time';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes mph';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours ola $minutes mph';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days masiku $hours ola';
  }

  @override
  String get portfolioGoalSet => 'Ikani cholinga';

  @override
  String get portfolioGoalTitle => 'Cholinga cha masheya anu';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · Cholinga: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Mwakwaniritsa cholinga: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Chotsani cholinga';

  @override
  String get alertEdit => 'Sinthani chidziwitso';

  @override
  String get positionOpenLots => 'Zikadali zanu (zakale kwambiri poyamba)';

  @override
  String get lotRemoved => 'Kugula kapena kugulitsa kwachotsedwa';

  @override
  String get alertDeleted => 'Chenjezo lachotsedwa';

  @override
  String get alertsClearTriggered => 'Chotsani machenjezo amene alira';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Machenjezo $count achotsedwa',
      one: 'Chenjezo 1 lachotsedwa',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Tsamba loyamba';

  @override
  String get allocationCountries => 'Mayiko';

  @override
  String get newsExplainNoteResearch =>
      'Kufotokozera kwa AI: chimafufuza zoona pa intaneti, chimatsegula nkhaniyo ndipo chimawunika kuti gwero lake ndi lodalirika bwanji. Si malangizo okhudza kuyika ndalama. Chimagwiritsa ntchito malire a mafunso anu a tsiku ndi tsiku, osati kusanthula.';

  @override
  String get sourceOfficial => 'Zovomerezeka';

  @override
  String get sourcePressRelease => 'Chilengezo';

  @override
  String get sourceMajorNews => 'Nyuzipepala yayikulu';

  @override
  String get sourceOpinion => 'Maganizo';

  @override
  String get earningsSummaryButton =>
      'Kodi lipoti laposachedwa linali ndi chiyani?';

  @override
  String get earningsSummaryNote =>
      'Chidule cha AI cha chilengezo cha zotsatira za kampaniyo ndi nkhani za atolankhani zomwe chimapeza pa intaneti. Si malangizo okhudza kuyika ndalama. Chimagwiritsa ntchito malire a mafunso anu a tsiku ndi tsiku, osati kusanthula.';

  @override
  String get compareLastSurprise => 'EPS ya kotala yapita vs yoyembekezeredwa';

  @override
  String get compareNextReport => 'Lipoti lotsatira';

  @override
  String get resolvingDescription => 'Tikufufuza sheya yomwe mukutanthauza…';

  @override
  String get instrumentTitle => 'Za chida ichi';

  @override
  String get instrumentHint =>
      'Palibe mbiri ya kampani ya chizindikiro ichi – chingakhale ETF, thumba la ndalama kapena chikalata cha depositi. Funsani AI kuti ndi chiyani, chili ndi chiyani ndipo mtengo wake ndi wotani.';

  @override
  String get instrumentAsk => 'Ichi ndi chiyani?';

  @override
  String get instrumentNote =>
      'Kufotokozera kwa AI kuchokera patsamba la thumba la wotulutsa ndi masamba azachuma omwe chimapeza pa intaneti. Si malangizo okhudza kuyika ndalama. Chimagwiritsa ntchito malire a mafunso anu a tsiku ndi tsiku, osati kusanthula.';

  @override
  String suggestAskAi(String query) {
    return 'Funsani AI: “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Palibe mtengo wapano wa $symbols.';
  }

  @override
  String get eventsRecentResults => 'Zotsatira zolengezedwa posachedwa';

  @override
  String get saveToNotes => 'Sungani ku zolemba zanga';

  @override
  String get savedToNotes => 'Zasungidwa ku zolemba zanu';

  @override
  String get portfolioDividendsReceived => 'Madividendi olandiridwa';

  @override
  String get portfolioDividendsThisYear => 'Chaka chino';

  @override
  String get portfolioDividendsAllTime => 'Nthawi zonse';

  @override
  String get portfolioAddDividend => 'Onjezani dividendi';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Ndalama zolandiridwa ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Tsiku lolipira';

  @override
  String get portfolioDividendsEmpty =>
      'Palibe madividendi olembedwa pakali pano. Awonjezereni pamanja, kapena tengani fayilo ya export ya broker wanu – mizere yake ya madividendi imatengedwanso.';

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Madividendi $count awonjezedwa',
      one: 'Dividendi 1 yawonjezedwa',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Tumizani madividendi (CSV)';

  @override
  String get portfolioDividendDeleted => 'Dividendi yachotsedwa';

  @override
  String get portfolioDividendsHint =>
      'Ndalama monga momwe zinafikira mu akaunti yanu, mu ndalama yolipira; ziwerengero zonse zimasinthidwa pa mtengo wa lero. Pa msonkho wanu, gwiritsani ntchito chikalata cha broker wanu.';

  @override
  String get awayTitle => 'Pamene munali kulibe';

  @override
  String awaySince(String when) {
    return 'Kuyambira $when';
  }

  @override
  String get awayQuiet => 'Palibe chomwe chasintha kwambiri.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Machenjezo $count alira',
      one: 'Chenjezo 1 lalira',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Zotsatira zalengezedwa: $symbols';
  }

  @override
  String get moveWhyButton => 'Chifukwa chiyani ikusuntha lero?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent lero';
  }

  @override
  String get moveWhyNote =>
      'Kufotokoza kwa AI kochokera ku nkhani za lero zopezeka pa intaneti; chifukwa chenicheni chikhoza kukhala chosadziwika kapena chosiyana. Si uphungu wa zachuma. Kumagwiritsa ntchito mafunso anu a tsiku ndi tsiku, osati kusanthula.';

  @override
  String get sectionTechnical => 'Chithunzi chaukadaulo';

  @override
  String get labelSma50 => 'Avareji ya masiku 50';

  @override
  String get labelSma200 => 'Avareji ya masiku 200';

  @override
  String get labelRsi => 'RSI (masiku 14)';

  @override
  String get labelVolatility30 => 'Kusinthasintha (masiku 30)';

  @override
  String techAbove(String percent) {
    return '$percent pamwamba';
  }

  @override
  String techBelow(String percent) {
    return '$percent pansi';
  }

  @override
  String get techOverbought => 'yagulidwa kwambiri';

  @override
  String get techOversold => 'yagulitsidwa kwambiri';

  @override
  String get techNeutral => 'pakati';

  @override
  String get techGoldenCross =>
      'Avareji ya masiku 50 ili pamwamba pa avareji ya masiku 200 – kukwera malinga ndi kuwerenga kwachikhalidwe.';

  @override
  String get techDeathCross =>
      'Avareji ya masiku 50 ili pansi pa avareji ya masiku 200 – kutsika malinga ndi kuwerenga kwachikhalidwe.';

  @override
  String get glossSma50 =>
      'Avareji ya mtengo wotseka wa masiku 50 omaliza a malonda. Mtengo wopitirira umenewu nthawi zambiri umaonedwa ngati mphamvu yakanthawi kochepa, wotsika ngati kufooka.';

  @override
  String get glossSma200 =>
      'Avareji ya mtengo wotseka wa masiku 200 omaliza a malonda – mzere wachikhalidwe wa njira yanthawi yayitali. Osunga ndalama ambiri amaona mtengo wopitirira umenewu ngati kukwera kwanthawi yayitali.';

  @override
  String get glossRsi =>
      'Mlozera wa mphamvu yofananiza: umayerekezera phindu laposachedwa ndi kutayika kwaposachedwa pa sikelo ya 0–100. Pamwamba pa 70 sitoko nthawi zambiri imati yagulidwa kwambiri (yakwera mofulumira), pansi pa 30 yagulitsidwa kwambiri – koma njira yamphamvu ingakhale pamenepo nthawi yayitali.';

  @override
  String get glossVolatility =>
      'Momwe mtengo umasinthira tsiku ndi tsiku, poyerekeza ndi chaka: 20% zikutanthauza kuti chaka chachizolowezi chimayenda pafupifupi ±20%. Kusinthasintha kwakukulu kumatanthauza kuyenda kwakukulu mbali zonse ziwiri.';

  @override
  String get techNote =>
      'Zawerengedwa kuchokera ku mitengo yotseka ya tsiku ndi tsiku. Zizindikiro zaukadaulo zimafotokoza zakale, osati zamtsogolo.';

  @override
  String portfolioAbove200(int above, int count) {
    return 'Malo $above pa $count ali pamwamba pa avareji yawo ya masiku 200';
  }

  @override
  String get watchSignalsTitle => 'Zizindikiro';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · yagulitsidwa kwambiri';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · yagulidwa kwambiri';
  }

  @override
  String get signalCrossedAbove => 'yadutsa pamwamba pa avareji ya masiku 200';

  @override
  String get signalCrossedBelow => 'yadutsa pansi pa avareji ya masiku 200';

  @override
  String get signalAlertsTitle => 'Zidziwitso za zizindikiro zaukadaulo';

  @override
  String get signalAlertsSubtitle =>
      'Kamodzi patsiku, pamene sitoko yomwe mukutsatira yagulitsidwa kwambiri kapena yagulidwa kwambiri (RSI), kapena mtengo wake wadutsa avareji ya masiku 200.';

  @override
  String get signalAlertsNotification => 'Zizindikiro zaukadaulo';

  @override
  String get glossaryPageTitle => 'Mndandanda wa mawu';

  @override
  String get glossaryPageSubtitle =>
      'Mafotokozedwe osavuta a nambala iliyonse yomwe pulogalamuyi imasonyeza, kuyambira P/E mpaka RSI';

  @override
  String get glossarySearchHint => 'Sakani mu mndandanda wa mawu';
}
