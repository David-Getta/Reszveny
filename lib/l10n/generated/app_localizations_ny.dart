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
}
