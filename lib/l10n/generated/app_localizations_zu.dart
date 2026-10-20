// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Zulu (`zu`).
class AppLocalizationsZu extends AppLocalizations {
  AppLocalizationsZu([String locale = 'zu']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'Thatha isithombe sesheya bese ufunda konke ngalo.';

  @override
  String get homeHint =>
      'Isitifiketi sesheya, isikrini se-app ye-broker, iphephandaba noma ilogo yenkampani – noma yini ekhomba isheya.';

  @override
  String get takePhoto => 'Thatha isithombe';

  @override
  String get chooseFromGallery => 'Khetha kugalari';

  @override
  String get chooseImage => 'Khetha isithombe';

  @override
  String get enterTickerManually => 'Faka i-ticker ngesandla';

  @override
  String get tickerInputLabel => 'Uphawu lwe-ticker';

  @override
  String get tickerInputHint => 'isb. AAPL';

  @override
  String get lookUp => 'Bheka';

  @override
  String demoModeBanner(String symbols) {
    return 'Imodi yedemo – ayikho ikhiye yedatha yemakethe esethiwe. Idatha yesampula itholakala ku: $symbols.';
  }

  @override
  String get recognizing => 'Ihlaziya isithombe…';

  @override
  String get loadingData => 'Ilayisha idatha…';

  @override
  String get noCandidatesTitle => 'Alikho isheya eliqashelwe';

  @override
  String get noCandidatesBody =>
      'Asikwazanga ukuthola isheya kulesi sithombe. Zama isithombe esicace kakhudlwana, noma ufake i-ticker ngesandla.';

  @override
  String get whatWeSaw => 'Esikubonile';

  @override
  String get chooseCandidateTitle => 'Ubuqonde isheya eliphi?';

  @override
  String confidencePercent(int percent) {
    return 'Ukuqiniseka: $percent%';
  }

  @override
  String get settings => 'Izilungiselelo';

  @override
  String get language => 'Ulimi';

  @override
  String get systemLanguage => 'Okuzenzakalelayo kwesistimu';

  @override
  String get about => 'Mayelana';

  @override
  String get disclaimer =>
      'Le app inikeza ulwazi kuphela futhi ayisona iseluleko sokutshala imali. Idatha ingase ibambezeleke noma ingabi nembile.';

  @override
  String dataSource(String source) {
    return 'Umthombo wedatha: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Ukuqashelwa: $source';
  }

  @override
  String get retry => 'Zama futhi';

  @override
  String get cancel => 'Khansela';

  @override
  String get ok => 'Kulungile';

  @override
  String get close => 'Vala';

  @override
  String get errorGeneric => 'Kukhona okungahambanga kahle.';

  @override
  String get errorSectionUnavailable => 'Lesi sigaba asikwazanga ukulayishwa.';

  @override
  String get notAvailable => 'akutholakali';

  @override
  String get sectionIdentity => 'Ukuhlonzwa';

  @override
  String get sectionPrice => 'Intengo';

  @override
  String get sectionValuation => 'Ukulinganiswa kwenani';

  @override
  String get sectionFinancials => 'Imininingwane yezimali';

  @override
  String get sectionDividend => 'I-dividend';

  @override
  String get sectionProfile => 'Iphrofayela yenkampani';

  @override
  String get sectionAnalysts => 'Izilinganiso zabahlaziyi';

  @override
  String get sectionNews => 'Izindaba';

  @override
  String get sectionRecognition => 'Imininingwane yokuqashelwa';

  @override
  String get labelSymbol => 'I-ticker';

  @override
  String get labelExchange => 'Imakethe yamasheya';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Imali';

  @override
  String get labelCountry => 'Izwe';

  @override
  String get labelIndustry => 'Imboni';

  @override
  String get labelSector => 'Umkhakha';

  @override
  String get labelWebsite => 'Iwebhusayithi';

  @override
  String get labelIpoDate => 'Usuku lwe-IPO';

  @override
  String get labelMarketCap => 'Inani lemakethe';

  @override
  String get labelSharesOutstanding => 'Amasheya akhishiwe';

  @override
  String get labelEmployees => 'Abasebenzi';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Ikomkhulu';

  @override
  String get labelDescription => 'Incazelo';

  @override
  String get labelLastPrice => 'Intengo yokugcina';

  @override
  String get labelChange => 'Ushintsho';

  @override
  String get labelOpen => 'Intengo yokuvula';

  @override
  String get labelDayHigh => 'Okuphezulu kosuku';

  @override
  String get labelDayLow => 'Okuphansi kosuku';

  @override
  String get labelPreviousClose => 'Intengo yokuvala edlule';

  @override
  String get labelWeek52High => 'Okuphezulu kwamasonto angu-52';

  @override
  String get labelWeek52Low => 'Okuphansi kwamasonto angu-52';

  @override
  String get labelAverageVolume10d =>
      'Ivolumu emaphakathi (izinsuku ezingu-10)';

  @override
  String updatedAt(String time) {
    return 'Kubuyekezwe: $time';
  }

  @override
  String get labelPeTrailing => 'P/E (edlule)';

  @override
  String get labelPeForward => 'P/E (ezayo)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / ukugeleza kwemali okukhululekile';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'I-Beta';

  @override
  String get labelRevenueTtm => 'Imali engenayo (TTM)';

  @override
  String get labelNetIncomeTtm => 'Inzuzo enetha (TTM)';

  @override
  String get labelGrossMargin => 'Imajini egrosi';

  @override
  String get labelOperatingMargin => 'Imajini yokusebenza';

  @override
  String get labelNetMargin => 'Imajini enetha';

  @override
  String get labelRoe => 'Imbuyiselo ku-equity';

  @override
  String get labelRoa => 'Imbuyiselo ezimpahleni';

  @override
  String get labelDebtToEquity => 'Isikweletu / i-equity';

  @override
  String get labelCurrentRatio => 'I-current ratio';

  @override
  String get labelRevenueGrowth => 'Ukukhula kwemali engenayo (YoY)';

  @override
  String get labelEpsGrowth => 'Ukukhula kwe-EPS (YoY)';

  @override
  String get labelDividendYield => 'Isivuno se-dividend';

  @override
  String get labelDividendPerShare => 'I-dividend ngesheya ngalinye';

  @override
  String get labelPayoutRatio => 'Isilinganiso sokukhokha';

  @override
  String get labelConsensus => 'Ukuvumelana';

  @override
  String get ratingStrongBuy => 'Thenga ngokuqinile';

  @override
  String get ratingBuy => 'Thenga';

  @override
  String get ratingHold => 'Gcina';

  @override
  String get ratingSell => 'Thengisa';

  @override
  String get ratingStrongSell => 'Thengisa ngokuqinile';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'abahlaziyi abangu-$count',
      one: 'umhlaziyi o-1',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Isikhathi: $period';
  }

  @override
  String get noNews => 'Azikho izindaba zakamuva.';

  @override
  String get openArticle => 'Vula isihloko';

  @override
  String get openLinkFailed => 'Isixhumanisi asikwazanga ukuvulwa.';

  @override
  String get recognitionSummary => 'Isifinyezo';

  @override
  String get recognitionEvidence => 'Kungani sicabanga kanjalo';

  @override
  String get recognitionRawText => 'Umbhalo ofundwe esithombeni';

  @override
  String get errMissingAnthropicKey =>
      'Ukuqashelwa kwezithombe akusethiwe (ayikho i-ANTHROPIC_API_KEY). Faka i-ticker ngesandla.';

  @override
  String get errRecognitionUnreachable =>
      'Ayikwazanga ukufinyelela isevisi yokuqashelwa. Hlola uxhumano lwakho lwe-inthanethi.';

  @override
  String errRecognitionHttp(String status) {
    return 'Isevisi yokuqashelwa ibuyise iphutha (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Isevisi yokuqashelwa ayikwazanga ukucubungula lesi sithombe.';

  @override
  String get errRecognitionTruncated =>
      'Impendulo yokuqashelwa inqamukile. Sicela uzame futhi.';

  @override
  String get errRecognitionBadResponse =>
      'Impendulo engalindelekile evela kusevisi yokuqashelwa.';

  @override
  String get errRecognitionEmpty =>
      'Isevisi yokuqashelwa ibuyise impendulo engenalutho.';

  @override
  String get errMissingFinnhubKey =>
      'Idatha yemakethe ayisethiwe (ayikho i-FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Ayikwazanga ukufinyelela isevisi yedatha yemakethe. Hlola uxhumano lwakho lwe-inthanethi.';

  @override
  String get errMarketRateLimited =>
      'Izicelo eziningi kakhulu kusevisi yedatha yemakethe. Sicela ulinde umzuzu.';

  @override
  String errMarketHttp(String status) {
    return 'Isevisi yedatha yemakethe ibuyise iphutha (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Impendulo engalindelekile evela kusevisi yedatha yemakethe.';

  @override
  String errNoQuote(String symbol) {
    return 'Ayikho idatha yentengo etholakele ye-$symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Ayikho iphrofayela yenkampani etholakele ye-$symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Imodi yedemo isekela kuphela: $symbols. Engeza i-FINNHUB_API_KEY ukuze uthole idatha ebukhoma.';
  }

  @override
  String errUnknown(String detail) {
    return 'Kukhona okungahambanga kahle: $detail';
  }

  @override
  String get newSearch => 'Usesho olusha';

  @override
  String get recentSearches => 'Okwakamuva';

  @override
  String get noRecentSearches => 'Alukho usesho lwakamuva okwamanje.';

  @override
  String get clearRecent => 'Sula okwakamuva';

  @override
  String get greeting => 'Sibheke isheya eliphi?';

  @override
  String get searchHint => 'I-ticker noma igama lenkampani';

  @override
  String get attachImage => 'Namathisela isithombe';

  @override
  String get searchResultsTitle => 'Imiphumela yosesho';

  @override
  String errNoResults(String query) {
    return 'Awekho amasheya atholakele ngokuthi “$query”.';
  }

  @override
  String get quickBarHint => 'Thayipha i-ticker noma igama lenkampani…';

  @override
  String get openFullWindow => 'Vula iwindi';

  @override
  String hotkeyHint(String shortcut) {
    return 'Cindezela $shortcut noma kuphi ukuze ubize i-WhatStock.';
  }

  @override
  String get trayOpen => 'Vula i-WhatStock';

  @override
  String get trayQuickSearch => 'Usesho olusheshayo';

  @override
  String get trayQuit => 'Phuma';

  @override
  String get appearance => 'Ukubukeka';

  @override
  String get themeSystem => 'Isistimu';

  @override
  String get themeDark => 'Okumnyama';

  @override
  String get themeLight => 'Okukhanyayo';

  @override
  String get back => 'Emuva';

  @override
  String get aiSectionTitle => 'Uhlaziyo lwe-AI';

  @override
  String get aiIntro =>
      'Ukubuka konke okunemininingwane okubhalwe yi-AI: isifinyezo sezindaba zakamuva, ibhizinisi, amandla, izingozi nezinto ezifihlekile, ukulinganiswa kwenani, umbono wentengo onezimo ezahlukene ngokwengqondo, ngokwenhlalo, ngokobuchwepheshe nangokomnotho omkhulu, kanye nalokho okufanele ukuqaphele.';

  @override
  String get aiGenerate => 'Yenza uhlaziyo';

  @override
  String get aiRegenerate => 'Yenza kabusha';

  @override
  String get aiGenerating =>
      'Ilungiselela uhlaziyo… lokhu kungathatha umzuzu owodwa noma emibili.';

  @override
  String get aiSources => 'Imithombo';

  @override
  String aiGeneratedAt(String time) {
    return 'Kwenziwe: $time';
  }

  @override
  String get aiDisclaimer =>
      'Uhlaziyo olwenziwe yi-AI olusekelwe kudatha yomphakathi nezindaba zakamuva. Lungaba namaphutha noma lube lungasesikhathini, futhi aluyona iseluleko sokutshala imali.';

  @override
  String get errAiNotConfigured =>
      'Uhlaziyo lwe-AI alusethiwe (ayikho i-ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Ayikwazanga ukufinyelela isevisi ye-AI. Hlola uxhumano lwakho lwe-inthanethi.';

  @override
  String errAiHttp(String status) {
    return 'Isevisi ye-AI ibuyise iphutha (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Isevisi ye-AI yenqabile ukuhlaziya leli sheya.';

  @override
  String get errAiBadResponse =>
      'Impendulo engalindelekile evela kusevisi ye-AI.';

  @override
  String get sectionChart => 'Ishadi lentengo';

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
      'Umlando wentengo awutholakali kumthombo wedatha wamanje.';

  @override
  String get sectionStatements => 'Izitatimende zezimali (zonyaka)';

  @override
  String get labelFiscalYear => 'Unyaka wezimali';

  @override
  String get labelRevenue => 'Imali engenayo';

  @override
  String get labelNetIncome => 'Inzuzo enetha';

  @override
  String get labelTotalAssets => 'Ingqikithi yezimpahla';

  @override
  String get labelTotalLiabilities => 'Ingqikithi yezikweletu';

  @override
  String get labelEquity => 'I-equity yabanikazi bamasheya';

  @override
  String get labelOperatingCashFlow => 'Ukugeleza kwemali kokusebenza';

  @override
  String get statementsUnavailable =>
      'Izitatimende zezimali ezibikiwe azitholakali kuleli sheya.';

  @override
  String get launchAtLogin => 'Qala lapho ungena ngemvume';

  @override
  String get hotkeyLabel => 'Isinqamuleli esisebenza yonke indawo';

  @override
  String get hotkeyRecordHint =>
      'Chofoza lapha, bese ucindezela inhlanganisela entsha yokhiye';

  @override
  String get hotkeyReset => 'Setha kabusha kokuzenzakalelayo';

  @override
  String get pasteImage =>
      'Namathisela isithombe esivela ebhodini lokunamathisela';

  @override
  String get errClipboardNoImage =>
      'Asikho isithombe ebhodini lokunamathisela.';

  @override
  String get favorites => 'Izintandokazi';

  @override
  String get addToFavorites => 'Engeza kuzintandokazi';

  @override
  String get removeFromFavorites => 'Susa kuzintandokazi';

  @override
  String get noFavorites =>
      'Azikho izintandokazi okwamanje. Thepha inkanyezi esheyeni ukuze ulengeze.';

  @override
  String get displayCurrency => 'Imali yokubonisa';

  @override
  String get displayCurrencyNone => 'Imali yesheya kuphela';

  @override
  String labelConverted(String currency) {
    return '≈ ku-$currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Izinga: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Izibuyekezo';

  @override
  String currentVersion(String version) {
    return 'Inguqulo $version';
  }

  @override
  String get autoUpdate => 'Faka izibuyekezo ngokuzenzakalelayo';

  @override
  String get checkForUpdates => 'Hlola izibuyekezo';

  @override
  String get updateChecking => 'Ihlola izibuyekezo…';

  @override
  String get updateUpToDate => 'Usebenzisa inguqulo yakamuva.';

  @override
  String updateAvailable(String version) {
    return 'Inguqulo $version iyatholakala.';
  }

  @override
  String get updateDownloading => 'Ilanda isibuyekezo ngemuva…';

  @override
  String get updateDownloaded =>
      'Isibuyekezo silungile. Qala kabusha ukuze usifake.';

  @override
  String get updateNow => 'Buyekeza';

  @override
  String get restartNow => 'Qala kabusha';

  @override
  String get updatesViaStore =>
      'Izibuyekezo zifika ngokuzenzakalelayo ngesitolo sama-app.';

  @override
  String get updateCheckFailed => 'Ayikwazanga ukuhlola izibuyekezo.';

  @override
  String get subscription => 'Ukubhalisa';

  @override
  String get planTrial => 'Ukuzama';

  @override
  String get planNormal => 'Okujwayelekile';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Alukho uhlelo olusebenzayo';

  @override
  String planAnalysesPerMonth(int count) {
    return 'Izinhlaziyo ezingu-$count ngenyanga';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Ukuzama mahhala kwezinsuku ezingu-$days nezinhlaziyo ezingu-$count';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Kusele izinsuku ezingu-$days zokuzama',
      one: 'Kusele usuku olu-1 lokuzama',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Ukuzama kwakho mahhala kuphelile. Khetha uhlelo ukuze uqhubeke uhlaziya.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Kusele izinhlaziyo ezingu-$remaining kwezingu-$total kulesi sikhathi';
  }

  @override
  String extraCredits(int count) {
    return 'Izinhlaziyo ezengeziwe ezingu-$count';
  }

  @override
  String renewsOn(String date) {
    return 'Kuvuselelwa ngo-$date';
  }

  @override
  String get choosePlan => 'Khetha uhlelo';

  @override
  String get currentPlan => 'Uhlelo lwamanje';

  @override
  String get subscribe => 'Bhalisa';

  @override
  String get perMonth => '/ inyanga';

  @override
  String get extraPacksTitle =>
      'Udinga okwengeziwe? Thenga izinhlaziyo ezengeziwe';

  @override
  String get extraPacksHint =>
      'Izinhlaziyo ezengeziwe aziphelelwa yisikhathi futhi zisetshenziswa ngemva kwesabelo sakho senyanga.';

  @override
  String get buy => 'Thenga';

  @override
  String get restorePurchases => 'Buyisela okuthengiwe';

  @override
  String get manageSubscription => 'Phatha ukubhalisa';

  @override
  String get purchaseSuccess => 'Siyabonga! Ukuthenga kwakho sekuyasebenza.';

  @override
  String get purchasePending => 'Ukuthenga kusalindile…';

  @override
  String get purchaseFailed => 'Ukuthenga akukwazanga ukuqedwa.';

  @override
  String get purchaseCanceled => 'Ukuthenga kukhanseliwe.';

  @override
  String get billingUnavailable =>
      'Ukuthenga akukatholakali kule nkundla. Bhalisa kufoni yakho noma ku-Mac; uhlelo lwakho luzosebenza kuyo yonke idivayisi.';

  @override
  String get errQuotaExceeded =>
      'Azikho izinhlaziyo ezisele kulesi sikhathi. Thuthukisa uhlelo lwakho noma uthenge izinhlaziyo ezengeziwe.';

  @override
  String get errTrialExpired =>
      'Ukuzama kwakho mahhala kuphelile. Khetha uhlelo ukuze uqhubeke.';

  @override
  String get errNoPlan => 'Uhlaziyo lwe-AI ludinga uhlelo olusebenzayo.';

  @override
  String get viewPlans => 'Buka izinhlelo';

  @override
  String get usageTitle => 'Ukusetshenziswa';

  @override
  String get demoPurchaseNote =>
      'Ukukhokha kwedemo: ukuthenga kule nkundla kuyalingiswa nje.';

  @override
  String get mostPopular => 'Okuthandwa kakhulu';

  @override
  String get bestValue => 'Inani elihle kakhulu';

  @override
  String get planFeaturesCommon =>
      'Ukuqashelwa kwezithombe, idatha ebukhoma, amashadi, izintandokazi nazo zonke izilimi ezingu-120 kufakiwe kuzo zonke izinhlelo. Isabelo simboza izinhlaziyo ze-AI.';

  @override
  String get searchLanguages => 'Sesha izilimi…';

  @override
  String get noLanguageMatch => 'Alukho ulimi oluhambisanayo.';

  @override
  String get aiSettings => 'Uhlaziyo lwe-AI';

  @override
  String get aiLength => 'Ubude';

  @override
  String get aiDepthBrief => 'Okufushane';

  @override
  String get aiDepthStandard => 'Okuvamile';

  @override
  String get aiDepthDeep => 'Okujulile';

  @override
  String get aiDepthBriefDesc => 'Okubalulekile, ngokushesha.';

  @override
  String get aiDepthStandardDesc => 'Umbiko ophelele onazo zonke izigaba.';

  @override
  String get aiDepthDeepDesc =>
      'Usesho lwewebhu olwengeziwe, ukuqhathanisa nezinkampani ezifanayo kanye nemininingwane ejulile.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Cishe amagama angu-$min–$max';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'isebenzisa izinhlaziyo ezingu-$count',
      one: 'isebenzisa uhlaziyo olu-1',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Izinga lomfundi';

  @override
  String get aiReaderBeginner => 'Osaqalayo';

  @override
  String get aiReaderExperienced => 'Onolwazi';

  @override
  String get aiReaderBeginnerDesc =>
      'Ulimi olulula; lonke igama lobuchwepheshe liyachazwa.';

  @override
  String get aiReaderExperiencedDesc =>
      'Umbhalo ominyene onamagama ajwayelekile ezezimali.';

  @override
  String get aiCounterArgument => 'Impikiswano eqine kakhulu';

  @override
  String get aiCounterArgumentDesc =>
      'Isifinyezo sihlala siphetha ngempikiswano eqine kakhulu ephikisana nesiphetho saso.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Ngohlelo lwakho ungasesha kuwebhu kuze kube izikhathi ezingu-$count ohlaziyweni ngalunye',
      one: 'Ngohlelo lwakho ungasesha kuwebhu kanye ohlaziyweni ngalunye',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Usesho lwewebhu ngobude obuvamile ngokohlelo: Okujwayelekile $normal, Pro $pro, Max $max, Ultra $ultra. Okufushane: kuncishiswa ngo-2, Okujulile: kwengezwa ngo-2.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'usesho lwewebhu kuze kube izikhathi ezingu-$count',
      one: 'usesho lwewebhu kanye',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Usesho lwewebhu izikhathi ezingu-$count ohlaziyweni ngalunye',
      one: 'Usesho lwewebhu kanye ohlaziyweni ngalunye',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Lobu bude budinga izinhlaziyo ezingu-$needed, kodwa kusele ezingu-$left kuphela. Khetha ubude obufushane kuZilungiselelo noma uthole izinhlaziyo ezengeziwe.';
  }

  @override
  String get outlookMarketMood => 'Isimo semakethe';

  @override
  String get moodVeryPessimistic => 'Akunathemba nhlobo';

  @override
  String get moodPessimistic => 'Akunathemba';

  @override
  String get moodNeutral => 'Phakathi nendawo';

  @override
  String get moodOptimistic => 'Kunethemba';

  @override
  String get moodVeryOptimistic => 'Kunethemba kakhulu';

  @override
  String get scenarioBull => 'Isimo sokukhuphuka';

  @override
  String get scenarioBase => 'Isimo esiyisisekelo';

  @override
  String get scenarioBear => 'Isimo sokwehla';

  @override
  String outlookCurrentPrice(String price) {
    return 'Intengo yamanje: $price';
  }

  @override
  String get outlookKeyLevels => 'Amazinga abalulekile';

  @override
  String get keyLevelSupport => 'Ukusekela';

  @override
  String get keyLevelResistance => 'Ukumelana';

  @override
  String get keyLevelAnchor => 'Ihange';

  @override
  String get upcomingEvents => 'Imicimbi ezayo';

  @override
  String get outlookChartNote =>
      'Amabanga okuqondisa; amathuba ayizilinganiso nje, hhayi izibikezelo.';

  @override
  String get accountTitle => 'I-akhawunti';

  @override
  String get signIn => 'Ngena ngemvume';

  @override
  String get signOut => 'Phuma';

  @override
  String get notSignedIn => 'Awungenile ngemvume';

  @override
  String get accountBenefit =>
      'Ngena ngemvume ukuze ukubhalisa kwakho kusebenze kuwo wonke amadivayisi akho.';

  @override
  String get accountSyncedNote =>
      'Ukubhalisa kwakho nezinhlaziyo ezisele kuyafana kuyo yonke idivayisi.';

  @override
  String get signInTitle => 'Ngena ku-WhatStock';

  @override
  String get emailLabel => 'Ikheli le-imeyili';

  @override
  String get continueWithEmail => 'Qhubeka nge-imeyili';

  @override
  String codeSentTo(String email) {
    return 'Sithumele ikhodi enezinombolo ezingu-6 ku-$email. Isebenza imizuzu engu-10.';
  }

  @override
  String get codeLabel => 'Ikhodi yokungena';

  @override
  String get resendCode => 'Thumela ikhodi entsha';

  @override
  String get useDifferentEmail => 'Sebenzisa enye i-imeyili';

  @override
  String get errInvalidCode => 'Ikhodi ayilungile noma isiphelelwe yisikhathi.';

  @override
  String get errInvalidEmail => 'Sicela ufake ikheli le-imeyili elivumelekile.';

  @override
  String get errSignInFailed =>
      'Ukungena kuhlulekile. Hlola uxhumano lwakho bese uzama futhi.';

  @override
  String get checkoutWaiting =>
      'Qedela inkokhelo kusiphequluli sakho. I-app izozibuyekeza ngokuzenzakalelayo uma sekuqediwe.';

  @override
  String get paymentViaStripe =>
      'Inkokhelo ephephile kusiphequluli sakho nge-Stripe. Khansela noma nini.';

  @override
  String get paymentViaStore =>
      'Ikhokhiswa nge-akhawunti yakho ye-App Store noma ye-Google Play. Khansela noma nini kuzilungiselelo zesitolo sakho.';

  @override
  String get keySpace => 'Isikhala';

  @override
  String get doubleOptionTitle => 'Cindezela i-Option kabili';

  @override
  String get doubleOptionSubtitle =>
      'Ukucindezela inkinobho ye-Option kabili ngokushesha nakho kubiza i-WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Ukuze kusebenze nakwamanye ama-app, vumela i-WhatStock kuZilungiselelo Zesistimu → Ubumfihlo Nokuphepha → Ukuqapha Okokufaka, bese uvula i-app futhi.';

  @override
  String get openSystemSettings => 'Vula Izilungiselelo Zesistimu';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Cindezela $shortcut noma ucindezele i-Option kabili noma kuphi ukuze ubize i-WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Okungenzeka kakhulu';

  @override
  String get longTermToday => 'Namuhla';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: 'iminyaka engu-$years',
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
    return 'okungenzeka kakhulu $price';
  }

  @override
  String get confidenceLow => 'Ukuqiniseka okuphansi';

  @override
  String get confidenceMedium => 'Ukuqiniseka okumaphakathi';

  @override
  String get confidenceHigh => 'Ukuqiniseka okuphezulu';

  @override
  String get longTermNote =>
      'Amabanga esikhathi eside asekelwe ezimisweni ezishiwoyo futhi anwebeka ngokuhamba kwesikhathi. Izintengo azifaki ama-dividend. Izilinganiso nje, hhayi izibikezelo.';

  @override
  String get portfolio => 'Iphothifoliyo';

  @override
  String get portfolioEmpty =>
      'Akukho lutho okwamanje. Vula isheya bese uthepha “Engeza kuphothifoliyo” ukuze ulandelele okungokwakho.';

  @override
  String get portfolioLocalNote =>
      'Kugcinwe kule divayisi kuphela. Izingqikithi ziguqulwa ngamazinga okuqhathanisa e-ECB; izintengo zingase zibambezeleke.';

  @override
  String get addToPortfolio => 'Engeza kuphothifoliyo';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Engeza $symbol';
  }

  @override
  String get portfolioQuantity => 'Inani lamasheya';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Intengo yesheya ngalinye ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Usuku lokuthenga';

  @override
  String get portfolioAdd => 'Engeza';

  @override
  String get portfolioInvalidNumber => 'Faka inombolo enkulu kunoziro.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol yengezwe kuphothifoliyo yakho.';
  }

  @override
  String get portfolioTotalValue => 'Inani eliphelele';

  @override
  String get portfolioToday => 'Namuhla';

  @override
  String get portfolioGainLoss => 'Inzuzo/ukulahlekelwa';

  @override
  String get portfolioInvested => 'Okutshaliwe';

  @override
  String get portfolioAllocation => 'Ukwabiwa';

  @override
  String get portfolioPositions => 'Okuphethwe';

  @override
  String portfolioAvgCost(String price) {
    return 'izindleko ezimaphakathi $price';
  }

  @override
  String get portfolioYourPosition => 'Okwakho';

  @override
  String get portfolioPurchases => 'Okuthengiwe';

  @override
  String get portfolioRemove => 'Susa';

  @override
  String get portfolioExcluded =>
      'Okuphethwe okungenayo intengo noma izinga lokushintshaniswa kwemali akufakwa ezingqikithini.';

  @override
  String get priceAlerts => 'Izexwayiso zentengo';

  @override
  String get setPriceAlert => 'Setha isexwayiso sentengo';

  @override
  String alertDialogTitle(String symbol) {
    return 'Isexwayiso sentengo · $symbol';
  }

  @override
  String get alertKindAbove => 'Ikhuphukela ngaphezulu';

  @override
  String get alertKindBelow => 'Yehlela ngaphansi';

  @override
  String get alertKindMove => 'Inyakaza kakhulu ngosuku olulodwa';

  @override
  String alertTargetPrice(String currency) {
    return 'Intengo ($currency)';
  }

  @override
  String get alertMovePercent => 'Ukunyakaza kosuku (%)';

  @override
  String get alertAlreadyMet => 'Intengo isivele idlule leli zinga.';

  @override
  String get alertSave => 'Setha isexwayiso';

  @override
  String alertCreated(String symbol) {
    return 'Isexwayiso sisethiwe: $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Azikho izexwayiso zentengo okwamanje. Vula isheya bese uthepha insimbi ukuze usethe esisodwa.';

  @override
  String get alertsNote =>
      'Izexwayiso zihlolwa njalo ngemizuzu emi-5 ngenkathi i-WhatStock isebenza. Kukhompyutha ihlala isebenza kubha yemenyu noma kuthreyi; kufoni, okwamanje izexwayiso zifika kuphela uma i-app ivuliwe.';

  @override
  String alertDescAbove(String price) {
    return 'Ngaphezu kuka-$price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Ngaphansi kuka-$price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Ukunyakaza kosuku ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Kuqalisiwe ngo-$date ku-$price';
  }

  @override
  String get alertRearm => 'Yenza kusebenze futhi';

  @override
  String get alertDelete => 'Susa';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol ikhuphukele ngaphezu kuka-$price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol yehlele ngaphansi kuka-$price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol inyakaze ngo-$percent namuhla';
  }

  @override
  String alertHitBody(String price) {
    return 'Intengo yamanje: $price';
  }

  @override
  String get alertOpen => 'Vula';

  @override
  String get keepInTrayTitle => 'Qhubeka usebenza uma iwindi livaliwe';

  @override
  String get keepInTraySubtitle =>
      'I-WhatStock ihlala kubha yemenyu noma kuthreyi, ukuze isinqamuleli nezexwayiso zentengo ziqhubeke zisebenza.';

  @override
  String get termsOfUse => 'Imigomo Yokusetshenziswa';

  @override
  String get privacyPolicy => 'Inqubomgomo Yobumfihlo';

  @override
  String get subscriptionLegal =>
      'Ukubhalisa kuvuselelwa ngokuzenzakalelayo njalo ngenyanga uze ukukhansele. Ngokubhalisa wamukela Imigomo Yokusetshenziswa kanye Nenqubomgomo Yobumfihlo.';

  @override
  String get deleteAccount => 'Susa i-akhawunti';

  @override
  String get deleteAccountTitle => 'Susa i-akhawunti yakho?';

  @override
  String get deleteAccountBody =>
      'I-akhawunti yakho nakho konke okugcinwe kuseva yethu (i-imeyili, isabelo, ukusetshenziswa) kuzosuswa unomphela, futhi izinhlaziyo ezingasetshenzisiwe zizolahleka. Ukubhalisa okukhokhelwe kusiphequluli kukhanselwa ngokushesha; ukubhalisa kwe-App Store noma kwe-Google Play kufanele kukhanselwe kuzilungiselelo zesitolo.';

  @override
  String get deleteLocalData =>
      'Susa nedatha ekule divayisi (iphothifoliyo, izexwayiso, izintandokazi, umlando, izinhlaziyo ezigciniwe)';

  @override
  String get deleteAccountConfirm => 'Susa unomphela';

  @override
  String get accountDeleted => 'I-akhawunti yakho isusiwe.';

  @override
  String get errDeleteAccount =>
      'I-akhawunti ayikwazanga ukususwa. Hlola uxhumano lwakho bese uzama futhi.';

  @override
  String get aiTrialBriefNote =>
      'Izinhlaziyo zokuzama zifushane futhi zenziwa ngemodeli ye-AI esheshayo. Ngohlelo uthola i-AI yethu enekhono kakhulu, usesho lwewebhu olwengeziwe, nobude obuvamile nobujulile.';

  @override
  String get billingMonthly => 'Ngenyanga';

  @override
  String get billingYearly => 'Ngonyaka';

  @override
  String get yearlyDiscount => 'Izinyanga ezi-2 mahhala';

  @override
  String get perYear => '/ unyaka';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price ngenyanga';
  }

  @override
  String get subscriptionLegalYearly =>
      'Ukubhalisa konyaka kuvuselelwa ngokuzenzakalelayo njalo ngonyaka uze ukukhansele. Ngokubhalisa wamukela Imigomo Yokusetshenziswa kanye Nenqubomgomo Yobumfihlo.';

  @override
  String get myAnalyses => 'Uhlaziyo lwami';

  @override
  String get navAlerts => 'Izexwayiso';

  @override
  String get inviteTitle => 'Ukubuka kuqala okuvaliwe';

  @override
  String get inviteBody =>
      'I-WhatStock itholakala ngesimemo kuphela okwamanje. Faka ikhodi yesimemo oyitholile.';

  @override
  String get inviteCodeLabel => 'Ikhodi yesimemo';

  @override
  String get inviteContinue => 'Qhubeka';

  @override
  String get inviteInvalid => 'Le khodi yesimemo ayivumelekile.';

  @override
  String get inviteExpired =>
      'Lesi simemo siphelelwe yisikhathi. Cela ikhodi entsha kumuntu okumemile.';

  @override
  String get inviteDeviceLimit =>
      'Le khodi yesimemo isivele isetshenziswa enanini eliphezulu lamadivayisi elivunyelwe.';

  @override
  String get previewConfidential => 'Ukubuka kuqala okuyimfihlo';

  @override
  String get errPreviewDailyLimit =>
      'Umkhawulo wezinhlaziyo wanamuhla walokhu kubuka kuqala ufinyelelwe. Zama futhi kusasa.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'emahoreni angu-$count adlule',
      one: 'ehoreni eli-1 eledlule',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ezinsukwini ezingu-$count ezedlule',
      one: 'osukwini olu-1 oludlule',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Buyekeza lolu hlaziyo?';

  @override
  String staleBody(String age) {
    return 'Lolu hlaziyo lwenziwa $age. Amanani, izindaba nemiphumela kungenzeka ukuthi kushintshile kusukela ngaleso sikhathi.';
  }

  @override
  String get staleKeep => 'Bonisa olwangaphambili';

  @override
  String get staleRefresh => 'Yenza olusha';

  @override
  String seeAll(int count) {
    return 'Bona konke ($count)';
  }

  @override
  String get searchAnalyses => 'Sesha kuhlaziyo lwakho';

  @override
  String get deleteAnalysis => 'Susa';

  @override
  String analysisDeleted(String symbol) {
    return 'Uhlaziyo lwe-$symbol lususiwe';
  }

  @override
  String get keyLevelAlertHint =>
      'Thepha izinga ukuze uthole isexwayiso uma intengo ifinyelela kulo.';

  @override
  String get shareAnalysisTitle => 'Yabelana ngohlaziyo';

  @override
  String get shareAsImage => 'Yabelana njengesithombe';

  @override
  String get shareAsText => 'Yabelana njengombhalo';

  @override
  String get shareCardFooter => 'Kwenziwe nge-WhatStock';

  @override
  String get shareCardDisclaimer =>
      'Uhlaziyo lwe-AI · aluyona iseluleko sokutshala imali';

  @override
  String get referralTitle => 'Mema abangane';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'izinhlaziyo ezengeziwe ezingu-$count',
      one: 'uhlaziyo olulodwa olwengeziwe',
    );
    return 'Yabelana ngekhodi yakho. Umngane wakho uthola $_temp0 ngokushesha, nawe uthola okufanayo ngemuva kohlaziyo lwakhe lokuqala.';
  }

  @override
  String get referralYourCode => 'Ikhodi yakho';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Abamenyiwe: $invited · Abaklonyelisiwe: $rewarded';
  }

  @override
  String get referralHaveCode => 'Unekhodi evela kumngane?';

  @override
  String get referralRedeem => 'Sebenzisa';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kwengezwe izinhlaziyo ezingu-$count. Siyakwamukela!',
      one: 'Kwengezwe uhlaziyo olulodwa. Siyakwamukela!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown => 'Le khodi ayikho. Yihlole bese uzama futhi.';

  @override
  String get referralErrOwn => 'Awukwazi ukusebenzisa ikhodi yakho.';

  @override
  String get referralErrAlready => 'Usuvele uyisebenzisile ikhodi yomngane.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'izinhlaziyo ezengeziwe ezingu-$count',
      one: 'uhlaziyo olulodwa olwengeziwe',
    );
    return 'Ngihlaziya amasheya nge-WhatStock: thatha isithombe sesheya bese i-AI iyalichaza. Ngekhodi yami $code uthola $_temp0.';
  }

  @override
  String get referralCopied => 'Ikhodi ikopishiwe';

  @override
  String get onboardTitle1 => 'Thatha isithombe sesheya';

  @override
  String get onboardBody1 =>
      'Isikrini se-app yomthengisi wamasheya, iphephandaba noma ilogo yenkampani kwanele: I-WhatStock iyalibona isheya bese ikukhombisa intengo yalo, ishadi nezibalo ezibalulekile.';

  @override
  String get onboardTitle2 => 'Liqonde ngemizuzu embalwa';

  @override
  String get onboardBody2 =>
      'Uhlaziyo lwe-AI luchaza okunyakazisa isheya, izingozi, ukubaluleka kwalo kanye nezimo ezintathu zokuthi intengo ingaya kuphi – kanye nemithombo nangolimi lwakho.';

  @override
  String get onboardTitle3 => 'Hlala wazi konke';

  @override
  String get onboardBody3 =>
      'Izintandokazi, iphothifoliyo yakho nezexwayiso zentengo zikwazisa njalo ngokwenzekayo. Uhlaziyo lwakho luhlala kudivayisi yakho, lulungele ukuvulwa futhi.';

  @override
  String get onboardNext => 'Okulandelayo';

  @override
  String get onboardStart => 'Qala';

  @override
  String get onboardSkip => 'Yeqa';

  @override
  String changesTitle(String date) {
    return 'Kusukela ohlaziyweni lwangaphambilini ($date)';
  }

  @override
  String get changesPrice => 'Intengo';

  @override
  String get changesNoMajor => 'Okulindelekile akushintshanga kakhulu.';

  @override
  String get changesPreviousSummary => 'Isifinyezo sangaphambilini';

  @override
  String get telemetryTitle => 'Siza ukuthuthukisa i-WhatStock';

  @override
  String get telemetryBody =>
      'Yabelana ngezibalo zokusetshenziswa ezingaziwa nemibiko yokuphahlazeka: yiziphi izici ezisetshenziswayo nokuthi yini engahambanga kahle. Amasheya akho, ukuhlaziya kwakho noma idatha yakho yomuntu siqu akusoze kwabiwa. Ungashintsha lokhu noma nini Ezilungiselelweni.';

  @override
  String get telemetryAllow => 'Vumela';

  @override
  String get telemetryDecline => 'Cha ngiyabonga';

  @override
  String get telemetrySetting => 'Izibalo ezingaziwa nemibiko yokuphahlazeka';

  @override
  String get telemetrySettingHint =>
      'Ukuthi izici zisetshenziswa kangakanani nemibiko yamaphutha, ngaphandle kwedatha yomuntu siqu noma okuqukethwe kosesho nokuhlaziya kwakho.';

  @override
  String get askButton => 'Buza ngalolu hlaziyo';

  @override
  String askTitle(String symbol) {
    return 'Imibuzo nge-$symbol';
  }

  @override
  String get askIntro =>
      'Buza noma yini ngohlaziyo: ukuthi ingozi ethile isho ukuthini, yini engashintsha ukubukeka kwesikhathi esizayo, ukuthi inombolo ithile ibalwe kanjani. Izimpendulo zisekelwe kulolu hlaziyo futhi aziyona iseluleko sokutshala imali.';

  @override
  String get askHint => 'Buza umbuzo…';

  @override
  String get askSend => 'Thumela';

  @override
  String get askThinking => 'Iyacabanga…';

  @override
  String get askSuggest1 => 'Iyiphi ingozi enkulu kunazo zonke?';

  @override
  String get askSuggest2 => 'Yini engashintsha ukubukeka kwesikhathi esizayo?';

  @override
  String get askSuggest3 => 'Ngichazele ngendlela elula';

  @override
  String get askMaxReached =>
      'Lowo bekungumbuzo wokugcina walolu hlaziyo. Yenza uhlaziyo olusha ukuze ubuze okwengeziwe.';

  @override
  String get errAskLimit =>
      'Ufinyelele umkhawulo wemibuzo wanamuhla. Sicela uzame futhi kusasa.';

  @override
  String get eventTomorrow => 'Kusasa';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'ngemva kwezinsuku ezingu-$days',
      one: 'ngemva kosuku olu-1',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Imiphumela yekota';

  @override
  String get eventBeforeOpen => 'ngaphambi kokuvulwa kwemakethe';

  @override
  String get eventAfterClose => 'ngemva kokuvalwa kwemakethe';

  @override
  String eventEpsEstimate(String value) {
    return 'Isilinganiso se-EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Kusuka ekuhlaziyweni kwakho';

  @override
  String get eventsHint =>
      'Izinsuku zemiphumela yamasheya akho ayizintandokazi nawephothifoliyo ezinsukwini ezingu-90 ezizayo, kanye nemicimbi enezinsuku ephawulwe uhlaziyo lwakho.';

  @override
  String get eventsEmpty =>
      'Ayikho imicimbi enezinsuku ezinsukwini ezingu-90 ezizayo. Engeza izintandokazi noma amasheya ephothifoliyo ukuze ubone izinsuku zemiphumela yawo lapha.';

  @override
  String get compareTitle => 'Qhathanisa';

  @override
  String get compareAdd => 'Engeza isitoko';

  @override
  String get compareRemove => 'Susa';

  @override
  String get compareTickerHint => 'Ticker, isibonelo MSFT';

  @override
  String get compareHint =>
      'Izibalo ezibalulekile eceleni kwezinye; inani elihle kakhulu emgqeni ngamunye ligqanyisiwe. Amanani emali asemalini yesitoko ngasinye.';

  @override
  String get compareNoAnalysis => 'Akukabi khona ukuhlaziya';

  @override
  String get portfolioDividends => 'I-dividend yonyaka';

  @override
  String portfolioDividendYield(String percent) {
    return 'Isivuno $percent';
  }

  @override
  String get portfolioDividendNote =>
      'I-dividend yonyaka elindelekile isekelwe kuma-dividend akhokhwe ezinyangeni ezingu-12 ezedlule; izinkokhelo zesikhathi esizayo aziqinisekisiwe.';

  @override
  String positionDividend(String amount) {
    return 'I-dividend: $amount ngonyaka';
  }

  @override
  String get chartAvgCost => 'Isilinganiso sakho';

  @override
  String get chartAlertLevel => 'Isexwayiso';

  @override
  String get marketsToday => 'Izimakethe namuhla';

  @override
  String get notesTitle => 'Amanothi ami';

  @override
  String get notesHint =>
      'Ulithengeleni, yini oyiqaphile, yini engakwenza ulithengise?';

  @override
  String get notesInfo =>
      'Kugcinwe kule divayisi kuphela. Uhlaziyo lwe-AI lubheka amanothi akho.';

  @override
  String notesSaved(String date) {
    return 'Kulondoloziwe: $date';
  }

  @override
  String get peersTitle => 'Izinkampani ezifanayo';

  @override
  String get portfolioExport => 'Thumela ngaphandle njenge-CSV';

  @override
  String get portfolioImport => 'Ngenisa kusuka ku-CSV';

  @override
  String get portfolioImportHint =>
      'Namathisela okuthengiwe okukodwa emugqeni ngamunye: uphawu lwe-ticker, inani, intengo, imali, usuku (YYYY-MM-DD). Amakholomu angahlukaniswa ngokhefana, ngamasemikholoni noma ngamathebhu; umugqa wezihloko awuphoqelekile.';

  @override
  String get portfolioImportButton => 'Ngenisa';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kwengezwe okuthengiwe okungu-$count',
      one: 'Kwengezwe okuthengiwe okukodwa',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kweqiwe imigqa engu-$count',
      one: 'Kweqiwe umugqa owodwa',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Iphothifoliyo, izintandokazi, izexwayiso zentengo namanothi kuvumelaniswa kuwo wonke amadivayisi akho.';

  @override
  String syncLast(String time) {
    return 'Ukuvumelanisa kokugcina: $time';
  }

  @override
  String get syncNow => 'Vumelanisa manje';

  @override
  String get syncFailed =>
      'Ukuvumelanisa kuhlulekile. Kuzozama futhi ngokuzenzakalelayo.';

  @override
  String get alertEmailTitle => 'I-imeyili uma isexwayiso senzeka';

  @override
  String get alertEmailOn =>
      'Sihlola izexwayiso zakho njalo emizuzwini embalwa futhi sikuthumelele i-imeyili, ngisho noma i-app ivaliwe.';

  @override
  String get alertEmailSignIn =>
      'Ngena ngemvume nge-imeyili yakho kuZilungiselelo ukuze uthole izexwayiso nge-imeyili, ngisho noma i-app ivaliwe.';

  @override
  String get portfolioHistory => 'Inani ngokuhamba kwesikhathi';

  @override
  String get portfolioReviewTitle => 'Uhlaziyo lwephothifoliyo lwe-AI';

  @override
  String get portfolioReviewIntro =>
      'I-AI ibheka iphothifoliyo yakho yonke: ukugxila kwemali endaweni eyodwa, ukuncika emikhakheni nasemalini yamazwe, izingozi ezabiwe ngamasheya akho, kanye nezabelo zenzuzo. Isebenzisa uhlaziyo olu-1.';

  @override
  String get portfolioReviewButton => 'Hlaziya iphothifoliyo yami';

  @override
  String get portfolioReviewAgain => 'Hlaziya kabusha';

  @override
  String get portfolioReviewWorking => 'Sihlaziya iphothifoliyo yakho…';

  @override
  String get digestTitle => 'Isifinyezo samasonto onke nge-imeyili';

  @override
  String get digestHint =>
      'Njalo ngoMsombuluko: ukuthi izintandokazi zakho nephothifoliyo yakho kuhambe kanjani ngesonto eledlule, nezinsuku ezizayo zemiphumela yazo.';

  @override
  String get benchmarkTitle => 'Uma kuqhathaniswa ne-S&P 500';

  @override
  String get benchmarkYours => 'Okuthengile';

  @override
  String get benchmarkIndex => 'Imali efanayo ku-S&P 500';

  @override
  String benchmarkAhead(String points) {
    return 'Ngcono kune-index ngamaphuzu amaphesenti angu-$points';
  }

  @override
  String benchmarkBehind(String points) {
    return 'Ngemuva kwe-index ngamaphuzu amaphesenti angu-$points';
  }

  @override
  String get benchmarkHint =>
      'Kungathi imali yokuthenga ngakunye ityalwe esikhwameni se-index se-S&P 500 ngalolo suku. Izabelo azifakiwe; imbuyiselo yesikhathi esedlule ayibikezeli eyesikhathi esizayo.';

  @override
  String get portfolioSell => 'Thengisa';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Thengisa $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Intengo yokuthengisa yesheya ngalinye ($currency)';
  }

  @override
  String get portfolioSellDate => 'Usuku lokuthengisa';

  @override
  String get portfolioSellAll => 'Konke';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Unakho $quantity';
  }

  @override
  String get portfolioSold => 'Kuthengisiwe';

  @override
  String get portfolioRealized => 'Okutholakele';

  @override
  String get portfolioClosed => 'Okuthengiswe konke';

  @override
  String get portfolioClosedNote => 'Wonke amasheya athengisiwe';

  @override
  String get portfolioTransactions => 'Ukuthenga nokuthengisa';

  @override
  String get portfolioRealizedByYear => 'Inzuzo etholakele ngonyaka';

  @override
  String get portfolioRealizedHint =>
      'Okuthengisiwe kuqala kuqhathaniswe nokuthenga kwakho okudala kakhulu (FIFO), kuguqulwe ngezinga lokushintshaniswa kwemali lanamuhla. Embikweni wakho wentela, sebenzisa isitatimende somdayisi wakho (broker).';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Kusukela kulolu hlaziyo, kushicilelwe imiphumela emisha yekota ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Imiphumela emisha';

  @override
  String get portfolioImportBrokers =>
      'Okuthunyelwa ngaphandle kwe-Revolut, Trading 212 ne-Interactive Brokers nakho kuyaqashelwa, kanye nokuthengisa; ama-dividend namadiphozithi ayeqiwa.';

  @override
  String get portfolioImportFile => 'Khetha ifayela';

  @override
  String offlineBanner(String time) {
    return 'Alukho uxhumano – kuboniswa idatha egcinwe ekugcineni ($time).';
  }

  @override
  String get glossMarketCap =>
      'Inani lenkampani yonke emakethe yamasheya: intengo yesheya × inani lamasheya.';

  @override
  String get glossSharesOutstanding =>
      'Inani lamasheya inkampani ewakhiphile. Uma likhula, isheya ngalinye linengxenye encane; ukuthenga kabusha amasheya kuyalinciphisa.';

  @override
  String get glossPeTrailing =>
      'Intengo ÷ inzuzo ngesheya ngalinye yezinyanga ezingu-12 ezedlule: ukhokhela iminyaka emingaki yenzuzo yamanje. Ephansi ishibhile, kodwa izinkampani ezikhula ngokushesha zivame ukuba ne-P/E ephezulu.';

  @override
  String get glossPeForward =>
      'Njenge-P/E, kodwa ngenzuzo abahlaziyi abayilindele ezinyangeni ezingu-12 ezizayo. Uma iphansi kune-P/E edlule, inzuzo kulindeleke ukuthi ikhule.';

  @override
  String get glossPb =>
      'Intengo ÷ inani lasezincwadini (izimpahla kususwe izikweletu) ngesheya ngalinye. Cishe u-1 kusho ukuthi imakethe ilinganisa inkampani ngalokho enakho ephepheni.';

  @override
  String get glossPs =>
      'Inani lemakethe ÷ imali engenayo yonyaka. Kuwusizo ezinkampanini ezinenzuzo encane noma ezingenayo okwamanje; qhathanisa ngaphakathi embonini eyodwa.';

  @override
  String get glossEvToFcf =>
      'Inani lenkampani kuhlanganise nesikweletu (EV) ÷ imali eyenzayo ngonyaka ngemva kokutshala imali. Ephansi isho ukuthi uthola imali eningi ngentengo oyikhokhayo.';

  @override
  String get glossPeg =>
      'P/E ÷ ukukhula kwenzuzo yonyaka okulindelekile (%). Cishe u-1 kuvame ukubhekwa njengokulungile; ibheka i-P/E ngokokukhula.';

  @override
  String get glossEps =>
      'Inzuzo ngesheya ngalinye ezinyangeni ezingu-12 ezedlule. I-EPS ekhuphuka unyaka nonyaka ingesinye sezimpawu eziqine kakhulu zenkampani ephilile.';

  @override
  String get glossBeta =>
      'Isheya livame ukunyakaza kangakanani nemakethe: 1 = njengemakethe, 1.5 = ukushintsha okukhulu ngokucishe kube ngu-50%, ngaphansi kuka-1 = kuzolile kakhulu.';

  @override
  String get glossRevenueTtm =>
      'Konke okuthengisiwe ezinyangeni ezingu-12 ezedlule, ngaphambi kwanoma yiziphi izindleko.';

  @override
  String get glossNetIncomeTtm =>
      'Inzuzo esele ngemva kwazo zonke izindleko, inzalo nentela ezinyangeni ezingu-12 ezedlule.';

  @override
  String get glossGrossMargin =>
      'Ingxenye yemali engenayo esala ngemva kwezindleko eziqondile zemikhiqizo. Imajini ephezulu ivame ukukhombisa amandla okubeka amanani.';

  @override
  String get glossOperatingMargin =>
      'Ingxenye yemali engenayo esala ngemva kwezindleko zokuqhuba ibhizinisi (amaholo, irenti, ukumaketha), ngaphambi kwenzalo nentela.';

  @override
  String get glossNetMargin =>
      'Ingxenye yemali engenayo eba yinzuzo yokugcina. 20% kusho ukuthi kukho konke okungu-100 okuthengisiwe, okungu-20 kuyinzuzo.';

  @override
  String get glossRoe =>
      'Imbuyiselo ku-equity: inzuzo yonyaka ÷ imali yabanikazi. Ikhombisa ukuthi abaphathi bayisebenzisa kahle kangakanani imali yabanikazi bamasheya; ngaphezu kuka-15% cishe kuqinile.';

  @override
  String get glossRoa =>
      'Imbuyiselo ezimpahleni: inzuzo yonyaka ÷ konke okungokwenkampani. Qhathanisa ngaphakathi embonini eyodwa.';

  @override
  String get glossDebtToEquity =>
      'Izikweletu ÷ imali yabanikazi. Ephezulu isho imali eningi ebolekiwe: ingozi enkulu lapho inzalo inyuka noma ibhizinisi lehla.';

  @override
  String get glossCurrentRatio =>
      'Izimpahla zesikhathi esifushane ÷ izikweletu okumele zikhokhwe phakathi konyaka. Ngaphezu kuka-1 kusho ukuthi inkampani ingakhokha izikweletu zayo eziseduze.';

  @override
  String get glossRevenueGrowth =>
      'Imali engenayo ikhule kangakanani uma iqhathaniswa nonyaka odlule.';

  @override
  String get glossEpsGrowth =>
      'Inzuzo ngesheya ngalinye ikhule kangakanani uma iqhathaniswa nonyaka odlule.';

  @override
  String get glossDividendYield =>
      'I-dividend yonyaka ÷ intengo yesheya: imali obungayithola ngonyaka, njengephesenti yalokho okukhokhayo.';

  @override
  String get glossDividendPerShare =>
      'I-dividend ekhokhelwe isheya elilodwa onyakeni odlule.';

  @override
  String get glossPayoutRatio =>
      'Ingxenye yenzuzo ekhokhwa njenge-dividend. Ngaphezu kuka-100% inkampani ikhokha okungaphezu kwalokho ekutholayo, okungavamile ukuhlala isikhathi eside.';

  @override
  String get glossTitle => 'Kusho ukuthini?';

  @override
  String get watchNewsTitle => 'Izindaba ngamasheya akho';

  @override
  String get undo => 'Hlehlisa';

  @override
  String get watchSort => 'Hlela';

  @override
  String get watchSortOwn => 'Ukuhleleka kwami';

  @override
  String get watchSortGainers => 'Ezinyuke kakhulu kuqala';

  @override
  String get watchSortLosers => 'Ezehle kakhulu kuqala';

  @override
  String get watchSortName => 'Nge-ticker (A–Z)';

  @override
  String get watchHint =>
      'Hudula isibambo ukuze uhlele kabusha, swayiphela kwesobunxele ukuze ususe. Umugqa ubonisa izinsuku ezingu-30 ezedlule.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: ukuhlaziya kwakho sekulungile.';
  }

  @override
  String alertFromCost(String price) {
    return 'Kusukela entengweni yakho emaphakathi yokuthenga ($price):';
  }

  @override
  String get briefTitle => 'Namuhla namasheya akho';

  @override
  String get briefButton => 'Fingqa namuhla';

  @override
  String get briefHint =>
      'Isifinyezo esifushane se-AI sendlela iphothifoliyo yakho nalawo owathandayo ahambe ngayo namuhla nokuthi izindaba zakamuva zithini ngawo. Asisebenzisi ukuhlaziya.';

  @override
  String get briefRefresh => 'Buyekeza';

  @override
  String get sectionEarnings => 'Imiphumela';

  @override
  String earningsNext(String date) {
    return 'Umbiko olandelayo: $date';
  }

  @override
  String get earningsExpected => 'I-EPS elindelekile';

  @override
  String get earningsReported => 'I-EPS ebikiwe';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Ilingana noma ingaphezu kwe-EPS elindelekile ku-$beats kumakota angu-$total okugcina',
      one:
          'Ilingana noma ingaphezu kwe-EPS elindelekile ku-$beats kwikota engu-1',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol ikhipha imiphumela yekota kusasa';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol ikhipha imiphumela yekota namuhla';
  }

  @override
  String get earningsRemindersTitle => 'Izikhumbuzi zemiphumela';

  @override
  String get earningsRemindersSubtitle =>
      'Isaziso ngosuku olwandulela ukuthi amasheya akho athandekayo noma ephothifoliyo yakho akhiphe imiphumela yekota';

  @override
  String addAllToFavorites(int count) {
    return 'Engeza konke kuzintandokazi ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Ngenisa kusuka kusithombe-skrini';

  @override
  String get holdingsReading => 'Ifunda amasheya akho…';

  @override
  String get holdingsReviewTitle => 'Amasheya atholiwe';

  @override
  String get holdingsReviewHint =>
      'Hlola izinombolo ngaphambi kokuthi uzengeze. Intengo yintengo yakho emaphakathi yokuthenga isheya ngalinye, hhayi intengo yanamuhla.';

  @override
  String get holdingsNoPrice =>
      'Ayikho intengo emaphakathi yokuthenga esithombeni';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Engeza amasheya angu-$count',
      one: 'Engeza isheya elilodwa',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Awekho amasheya atholakele kulesi sithombe. Zama isithombe-skrini sekhasi lamasheya noma lezimpahla zakho kumthengisi wakho wamasheya.';

  @override
  String get week52Range => 'Ibanga lamasonto angu-52';

  @override
  String week52BelowHigh(String percent) {
    return '$percent ngaphansi kokuphezulu kwamasonto angu-52';
  }

  @override
  String get week52AtHigh => 'Kokuphezulu kwamasonto angu-52';

  @override
  String get alertKindTrailing => 'Yehla isuka esiqongweni';

  @override
  String get alertTrailingPercent => 'Ukwehla kusuka esiqongweni (%)';

  @override
  String get alertTrailingHint =>
      'Ilandela intengo inyuka: ikwazisa uma intengo yehla ngaleli zinga isuka ezingeni eliphezulu kakhulu selokhu uyisethile.';

  @override
  String alertDescTrailing(String percent) {
    return 'Ukwehla ngo-$percent kusuka esiqongweni';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'isiqongo kuze kube manje: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol yehle ngo-$percent isuka esiqongweni';
  }

  @override
  String get sectionInsiders => 'Ukuhweba kwabangaphakathi';

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
    return 'Isamba: amasheya $shares';
  }

  @override
  String get insiderBuy => 'Uthengile';

  @override
  String get insiderSell => 'Uthengisile';

  @override
  String get insiderHint =>
      'Ukuthenga nokuthengisa emakethe evulekile okwenziwe yizikhulu nabaqondisi ezinsukwini ezingu-90 ezedlule (SEC Form 4). Ukusetshenziswa kwezinketho (options) namasheya anikezwayo akubalwa.';

  @override
  String get insiderNone =>
      'Akukho kuthenga noma ukuthengisa kwabangaphakathi emakethe evulekile ezinsukwini ezingu-90 ezedlule.';

  @override
  String get analystTrend => 'Indlela imibono eshintshe ngayo inyanga nenyanga';

  @override
  String get watchListAll => 'Konke';

  @override
  String get watchListNew => 'Uhlu olusha';

  @override
  String get watchListName => 'Igama lohlu';

  @override
  String get watchListRename => 'Qamba kabusha uhlu';

  @override
  String get watchListDelete => 'Susa uhlu';

  @override
  String get watchListAddTo => 'Engeza ohlwini';

  @override
  String get watchListEmpty =>
      'Awekho amasheya kulolu hlu okwamanje. Thepha inkinobho yohlu eduze kwesheya ukuze ulengeze.';

  @override
  String get portfolioAskTitle => 'Imibuzo ngephothifoliyo yakho';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'Isipele';

  @override
  String get backupSave => 'Londoloza isipele';

  @override
  String get backupSaveHint =>
      'Izintandokazi zakho, uhlu, iphothifoliyo, izexwayiso namanothi akho efayeleni elilodwa.';

  @override
  String get backupRestore => 'Buyisela kusuka esipeleni';

  @override
  String get backupRestoreHint =>
      'Yengeza okusefayeleni; akukho lutho onalo manje olusulwayo.';

  @override
  String get backupRestored => 'Isipele sibuyiselwe.';

  @override
  String get backupInvalid => 'Leli fayela akusona isipele se-WhatStock.';

  @override
  String get allocationPositions => 'Amasheya';

  @override
  String get allocationSectors => 'Imikhakha';

  @override
  String get allocationCurrencies => 'Izimali';

  @override
  String get compareReturn1y => 'Inzuzo yonyaka o-1';

  @override
  String get compareFromHigh => 'Kusuka kokuphezulu kwamasonto angu-52';

  @override
  String get briefAutoTitle => 'Isifinyezo sansuku zonke njalo ekuseni';

  @override
  String get briefAutoSubtitle =>
      '“Namuhla namasheya akho” senziwa ngokuzenzakalelayo ngemva kuka-7:00 ekuseni ngesikhathi i-app isasebenza; kumakhompyutha, isaziso sizokwazisa. Sisebenzisa umkhawulo wakho wemibuzo wansuku zonke, hhayi ukuhlaziya.';

  @override
  String get targetsButton => 'Ukwabiwa okuhlosiwe';

  @override
  String get targetsTitle => 'Ukwabiwa okuhlosiwe';

  @override
  String get targetsHint =>
      'Setha ukuthi isheya ngalinye kufanele libe nengxenye engakanani yephothifoliyo. Shiya inkambu ingenalutho uma kungekho umgomo. Bese uhlelo lokusebenza lukubonisa okufanele ukuthenge noma ukuthengise.';

  @override
  String targetsSum(String percent) {
    return 'Isamba: $percent';
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
  String get rebalanceOk => 'Kumgomo';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol idlule i-EPS elindelekile';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol ayifinyelelanga ku-EPS elindelekile';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'I-EPS ebikiwe $actual, elindelekile $estimate';
  }

  @override
  String get newsExplain => 'Lokhu kusho ukuthini?';

  @override
  String get watchAlertAll => 'Isexwayiso sokunyakaza okukhulu kosuku';

  @override
  String get watchAlertAllHint =>
      'Isexwayiso senani kusitoko ngasinye kulolu hlu: sizokhala uma sinyakaza kangaka ngosuku olulodwa, phezulu noma phansi. Lezo esezinaso zigcina esazo.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kusethwe izexwayiso ezingu-$count',
      one: 'Kusethwe isexwayiso esisodwa',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized =>
      'Thumela ngaphandle inzuzo etholiwe (CSV)';

  @override
  String get portfolioAnnualReturn => 'Inzuzo yonyaka';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / unyaka';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Inzuzo yonyaka ekalwe ngemali (XIRR): ibheka ukuthi uthenge nini futhi wathengisa nini, ngakho imali eyengezwe kamuva ayiyiphazamisi. Iboniswa uma sekudlule okungenani unyaka owodwa kusukela uthenge okokuqala; ama-dividend awafakiwe.';

  @override
  String get eventsAddToCalendar => 'Engeza kukhalenda (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Isexwayiso sephothifoliyo';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Isaziso lapho iphothifoliyo yakho yonke inyakaza kangaka ngosuku olulodwa.';

  @override
  String get portfolioMoveAlertOff => 'Kucishiwe';

  @override
  String portfolioMoveUp(String percent) {
    return 'Iphothifoliyo yakho ikhuphuke ngo-$percent namuhla';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Iphothifoliyo yakho yehle ngo-$percent namuhla';
  }

  @override
  String get whatIfTitle => 'Kungaba njani ukube utshalile?';

  @override
  String get whatIfAmount => 'Inani';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount etshaliwe (isikhathi: $period) namuhla ibizoba nenani';
  }

  @override
  String get whatIfNote =>
      'Kusekelwe entengweni yesabelo kuphela: ama-dividend, izimali nezintela akufakiwe. Imbuyiselo yangaphambilini ayibikezeli ezizayo.';

  @override
  String get watchShare => 'Yabelana ngohlu';

  @override
  String get watchImport => 'Engeza ama-ticker';

  @override
  String get watchImportHint =>
      'Namathisela ama-ticker ahlukaniswe ngokhefana, izikhala noma imigqa emisha – isibonelo, uhlu othile abelane nawe ngalo.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kwengezwe amasheya angu-$count',
      one: 'Kwengezwe isheya elilodwa',
      zero: 'Awekho amasheya amasha',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Ezinkulu kakhulu kuqala';

  @override
  String get positionsSortGain => 'Inzuzo ephelele ephezulu kuqala';

  @override
  String get positionsSortToday => 'Ezihamba phambili namuhla kuqala';

  @override
  String get chartMyBuys => 'Okuthengile';

  @override
  String get chartMySells => 'Okuthengisile';

  @override
  String get shortcutsTitle => 'Izinqamuleli zekhibhodi';

  @override
  String usMarketOpen(String time) {
    return 'Imakethe yaseMelika ivuliwe · izovalwa ngemva kuka-$time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Imakethe yaseMelika ivaliwe · izovulwa ngemva kuka-$time';
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
    return '$days izinsuku $hours h';
  }

  @override
  String get portfolioGoalSet => 'Setha umgomo';

  @override
  String get portfolioGoalTitle => 'Umgomo wephothifoliyo';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · Umgomo: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Umgomo ufinyelelwe: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Susa umgomo';

  @override
  String get alertEdit => 'Hlela isexwayiso';

  @override
  String get positionOpenLots => 'Kusekuwe (okudala kakhulu kuqala)';

  @override
  String get lotRemoved => 'Ukuthenga noma ukuthengisa kususiwe';

  @override
  String get alertDeleted => 'Isexwayiso sisusiwe';

  @override
  String get alertsClearTriggered => 'Sula izexwayiso eziqalisiwe';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kususwe izexwayiso ezingu-$count',
      one: 'Kususwe isexwayiso esisodwa',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Isikrini sasekhaya';

  @override
  String get allocationCountries => 'Amazwe';

  @override
  String get newsExplainNoteResearch =>
      'Incazelo ye-AI: ifuna amaqiniso kuwebhu, ivule i-athikili futhi ihlole ukuthi umthombo uthembeke kangakanani. Akuyona iseluleko sokutshala imali. Sisebenzisa umkhawulo wakho wemibuzo wansuku zonke, hhayi ukuhlaziya.';

  @override
  String get sourceOfficial => 'Okusemthethweni';

  @override
  String get sourcePressRelease => 'Isitatimende';

  @override
  String get sourceMajorNews => 'Abezindaba abakhulu';

  @override
  String get sourceOpinion => 'Umbono';

  @override
  String get earningsSummaryButton => 'Bekukhona ini embikweni wakamuva?';

  @override
  String get earningsSummaryNote =>
      'Isifinyezo se-AI sesimemezelo semiphumela yenkampani kanye nezindaba zabezindaba esizithola kuwebhu. Akuyona iseluleko sokutshala imali. Sisebenzisa umkhawulo wakho wemibuzo wansuku zonke, hhayi ukuhlaziya.';

  @override
  String get compareLastSurprise => 'I-EPS yekota edlule vs elindelekile';

  @override
  String get compareNextReport => 'Umbiko olandelayo';

  @override
  String get resolvingDescription => 'Ithola isheya osho ngalo…';

  @override
  String get instrumentTitle => 'Mayelana naleli thuluzi';

  @override
  String get instrumentHint =>
      'Alikho iphrofayili yenkampani yalolu phawu – kungaba yi-ETF, isikhwama semali noma isitifiketi sediphozithi. Buza i-AI ukuthi yini, iqukethe ini nokuthi ibiza malini.';

  @override
  String get instrumentAsk => 'Yini lena?';

  @override
  String get instrumentNote =>
      'Incazelo ye-AI evela ekhasini lesikhwama lomkhiphi nakumawebhusayithi ezezimali esiwathola kuwebhu. Akuyona iseluleko sokutshala imali. Sisebenzisa umkhawulo wakho wemibuzo wansuku zonke, hhayi ukuhlaziya.';

  @override
  String suggestAskAi(String query) {
    return 'Buza i-AI: “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Ayikho intengo yamanje ye-$symbols.';
  }

  @override
  String get eventsRecentResults => 'Imiphumela esanda kubikwa';

  @override
  String get saveToNotes => 'Londoloza kumanothi ami';

  @override
  String get savedToNotes => 'Kulondolozwe kumanothi akho';
}
