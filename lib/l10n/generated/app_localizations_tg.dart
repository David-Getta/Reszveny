// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tajik (`tg`).
class AppLocalizationsTg extends AppLocalizations {
  AppLocalizationsTg([String locale = 'tg']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'Аз саҳмия акс гиред ва ҳама чизро дар бораи он бифаҳмед.';

  @override
  String get homeHint =>
      'Сертификати саҳмия, экрани барномаи брокерӣ, рӯзнома ё логотипи ширкат – ҳар чизе, ки саҳмияро муайян мекунад.';

  @override
  String get takePhoto => 'Акс гирифтан';

  @override
  String get chooseFromGallery => 'Интихоб аз галерея';

  @override
  String get chooseImage => 'Интихоби тасвир';

  @override
  String get enterTickerManually => 'Тикерро дастӣ ворид кардан';

  @override
  String get tickerInputLabel => 'Тикер';

  @override
  String get tickerInputHint => 'мас., AAPL';

  @override
  String get lookUp => 'Ҷустуҷӯ';

  @override
  String demoModeBanner(String symbols) {
    return 'Реҷаи намоишӣ – калиди маълумоти бозор танзим нашудааст. Маълумоти намунавӣ барои инҳо дастрас аст: $symbols.';
  }

  @override
  String get recognizing => 'Тасвир таҳлил мешавад…';

  @override
  String get loadingData => 'Маълумот бор мешавад…';

  @override
  String get noCandidatesTitle => 'Саҳмия шинохта нашуд';

  @override
  String get noCandidatesBody =>
      'Мо дар ин тасвир саҳмияро муайян карда натавонистем. Акси равшантар гиред ё тикерро дастӣ ворид кунед.';

  @override
  String get whatWeSaw => 'Он чи мо дидем';

  @override
  String get chooseCandidateTitle => 'Шумо кадом саҳмияро дар назар доштед?';

  @override
  String confidencePercent(int percent) {
    return '$percent% боварӣ';
  }

  @override
  String get settings => 'Танзимот';

  @override
  String get language => 'Забон';

  @override
  String get systemLanguage => 'Забони система';

  @override
  String get about => 'Дар бораи барнома';

  @override
  String get disclaimer =>
      'Ин барнома танҳо барои маълумот аст ва маслиҳати сармоягузорӣ намебошад. Маълумот метавонад бо таъхир ё нодуруст бошад.';

  @override
  String dataSource(String source) {
    return 'Манбаи маълумот: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Шинохтан: $source';
  }

  @override
  String get retry => 'Такрор кардан';

  @override
  String get cancel => 'Бекор кардан';

  @override
  String get ok => 'Хуб';

  @override
  String get close => 'Пӯшидан';

  @override
  String get errorGeneric => 'Хатое рух дод.';

  @override
  String get errorSectionUnavailable => 'Ин бахш бор нашуд.';

  @override
  String get notAvailable => 'мавҷуд нест';

  @override
  String get sectionIdentity => 'Мушаххасот';

  @override
  String get sectionPrice => 'Нарх';

  @override
  String get sectionValuation => 'Арзёбӣ';

  @override
  String get sectionFinancials => 'Нишондиҳандаҳои молиявӣ';

  @override
  String get sectionDividend => 'Дивидендҳо';

  @override
  String get sectionProfile => 'Профили ширкат';

  @override
  String get sectionAnalysts => 'Рейтингҳои таҳлилгарон';

  @override
  String get sectionNews => 'Хабарҳо';

  @override
  String get sectionRecognition => 'Тафсилоти шинохтан';

  @override
  String get labelSymbol => 'Тикер';

  @override
  String get labelExchange => 'Биржа';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Асъор';

  @override
  String get labelCountry => 'Кишвар';

  @override
  String get labelIndustry => 'Соҳа';

  @override
  String get labelSector => 'Сектор';

  @override
  String get labelWebsite => 'Вебсайт';

  @override
  String get labelIpoDate => 'Санаи IPO';

  @override
  String get labelMarketCap => 'Арзиши бозорӣ';

  @override
  String get labelSharesOutstanding => 'Саҳмияҳои дар муомилот';

  @override
  String get labelEmployees => 'Кормандон';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Идораи марказӣ';

  @override
  String get labelDescription => 'Тавсиф';

  @override
  String get labelLastPrice => 'Нархи охирин';

  @override
  String get labelChange => 'Тағйирот';

  @override
  String get labelOpen => 'Нархи кушодашавӣ';

  @override
  String get labelDayHigh => 'Баландтарин нархи рӯз';

  @override
  String get labelDayLow => 'Пасттарин нархи рӯз';

  @override
  String get labelPreviousClose => 'Пӯшидашавии қаблӣ';

  @override
  String get labelWeek52High => 'Баландтарин дар 52 ҳафта';

  @override
  String get labelWeek52Low => 'Пасттарин дар 52 ҳафта';

  @override
  String get labelAverageVolume10d => 'Ҳаҷми миёна (10 рӯз)';

  @override
  String updatedAt(String time) {
    return 'Навсозӣ: $time';
  }

  @override
  String get labelPeTrailing => 'P/E (гузашта)';

  @override
  String get labelPeForward => 'P/E (пешбинӣ)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / ҷараёни озоди пулӣ';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Бета';

  @override
  String get labelRevenueTtm => 'Даромад (TTM)';

  @override
  String get labelNetIncomeTtm => 'Фоидаи соф (TTM)';

  @override
  String get labelGrossMargin => 'Маржаи умумӣ';

  @override
  String get labelOperatingMargin => 'Маржаи амалиётӣ';

  @override
  String get labelNetMargin => 'Маржаи соф';

  @override
  String get labelRoe => 'Даромаднокии сармояи худӣ';

  @override
  String get labelRoa => 'Даромаднокии дороиҳо';

  @override
  String get labelDebtToEquity => 'Қарз / сармояи худӣ';

  @override
  String get labelCurrentRatio => 'Пардохтпазирии ҷорӣ';

  @override
  String get labelRevenueGrowth => 'Афзоиши даромад (YoY)';

  @override
  String get labelEpsGrowth => 'Афзоиши EPS (YoY)';

  @override
  String get labelDividendYield => 'Даромаднокии дивидендӣ';

  @override
  String get labelDividendPerShare => 'Дивиденд ба як саҳмия';

  @override
  String get labelPayoutRatio => 'Коэффитсиенти пардохт';

  @override
  String get labelConsensus => 'Консенсус';

  @override
  String get ratingStrongBuy => 'Қатъиян харидан';

  @override
  String get ratingBuy => 'Харидан';

  @override
  String get ratingHold => 'Нигоҳ доштан';

  @override
  String get ratingSell => 'Фурӯхтан';

  @override
  String get ratingStrongSell => 'Қатъиян фурӯхтан';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count таҳлилгар', one: '1 таҳлилгар');
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Давра: $period';
  }

  @override
  String get noNews => 'Хабарҳои нав нестанд.';

  @override
  String get openArticle => 'Кушодани мақола';

  @override
  String get openLinkFailed => 'Пайванд кушода нашуд.';

  @override
  String get recognitionSummary => 'Хулоса';

  @override
  String get recognitionEvidence => 'Чаро мо чунин фикр мекунем';

  @override
  String get recognitionRawText => 'Матни аз тасвир хондашуда';

  @override
  String get errMissingAnthropicKey =>
      'Шинохтани тасвир танзим нашудааст (ANTHROPIC_API_KEY нест). Тикерро дастӣ ворид кунед.';

  @override
  String get errRecognitionUnreachable => 'Ба хидмати шинохтан пайваст шуда натавонистем. Пайвасти интернетро санҷед.';

  @override
  String errRecognitionHttp(String status) {
    return 'Хидмати шинохтан хато баргардонд (HTTP $status).';
  }

  @override
  String get errRecognitionRefused => 'Хидмати шинохтан ин тасвирро коркард карда натавонист.';

  @override
  String get errRecognitionTruncated => 'Ҷавоби хидмати шинохтан нопурра омад. Лутфан, бори дигар кӯшиш кунед.';

  @override
  String get errRecognitionBadResponse => 'Ҷавоби ғайричашмдошт аз хидмати шинохтан.';

  @override
  String get errRecognitionEmpty => 'Хидмати шинохтан ҷавоби холӣ баргардонд.';

  @override
  String get errMissingFinnhubKey => 'Маълумоти бозор танзим нашудааст (FINNHUB_API_KEY нест).';

  @override
  String get errMarketUnreachable =>
      'Ба хидмати маълумоти бозор пайваст шуда натавонистем. Пайвасти интернетро санҷед.';

  @override
  String get errMarketRateLimited =>
      'Ба хидмати маълумоти бозор дархостҳои аз ҳад зиёд фиристода шуд. Лутфан, як дақиқа интизор шавед.';

  @override
  String errMarketHttp(String status) {
    return 'Хидмати маълумоти бозор хато баргардонд (HTTP $status).';
  }

  @override
  String get errMarketBadResponse => 'Ҷавоби ғайричашмдошт аз хидмати маълумоти бозор.';

  @override
  String errNoQuote(String symbol) {
    return 'Барои $symbol маълумоти нарх ёфт нашуд.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Барои $symbol профили ширкат ёфт нашуд.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Реҷаи намоишӣ танҳо инҳоро дастгирӣ мекунад: $symbols. Барои маълумоти зинда FINNHUB_API_KEY илова кунед.';
  }

  @override
  String errUnknown(String detail) {
    return 'Хатое рух дод: $detail';
  }

  @override
  String get newSearch => 'Ҷустуҷӯи нав';

  @override
  String get recentSearches => 'Охиринҳо';

  @override
  String get noRecentSearches => 'Ҳоло ҷустуҷӯҳои охирин нестанд.';

  @override
  String get clearRecent => 'Тоза кардани охиринҳо';

  @override
  String get greeting => 'Кадом саҳмияро бубинем?';

  @override
  String get searchHint => 'Тикер ё номи ширкат';

  @override
  String get attachImage => 'Замима кардани тасвир';

  @override
  String get searchResultsTitle => 'Натиҷаҳои ҷустуҷӯ';

  @override
  String errNoResults(String query) {
    return 'Барои «$query» ягон саҳмия ёфт нашуд.';
  }

  @override
  String get quickBarHint => 'Тикер ё номи ширкатро нависед…';

  @override
  String get openFullWindow => 'Кушодани равзана';

  @override
  String hotkeyHint(String shortcut) {
    return 'Дар ҳар ҷо $shortcut пахш кунед, то WhatStock кушода шавад.';
  }

  @override
  String get trayOpen => 'Кушодани WhatStock';

  @override
  String get trayQuickSearch => 'Ҷустуҷӯи зуд';

  @override
  String get trayQuit => 'Баромадан';

  @override
  String get appearance => 'Намуди зоҳирӣ';

  @override
  String get themeSystem => 'Системавӣ';

  @override
  String get themeDark => 'Торик';

  @override
  String get themeLight => 'Равшан';

  @override
  String get back => 'Бозгашт';

  @override
  String get aiSectionTitle => 'Таҳлили AI';

  @override
  String get aiIntro =>
      'Шарҳи муфассале, ки AI навиштааст: хулосаи хабарҳои охирин, тиҷорат, ҷиҳатҳои қавӣ, хатарҳо ва омилҳои пинҳонӣ, арзёбӣ, пешомади нарх бо сенарияҳо аз нигоҳи равоншиносӣ, ҷомеашиносӣ, техникӣ ва макроиқтисодӣ, инчунин он чизҳое, ки бояд пайгирӣ кард.';

  @override
  String get aiGenerate => 'Эҷоди таҳлил';

  @override
  String get aiRegenerate => 'Аз нав эҷод кардан';

  @override
  String get aiGenerating => 'Таҳлил омода мешавад… ин метавонад як-ду дақиқа вақт гирад.';

  @override
  String get aiSources => 'Манбаъҳо';

  @override
  String aiGeneratedAt(String time) {
    return 'Эҷод шуд: $time';
  }

  @override
  String get aiDisclaimer =>
      'Таҳлили аз ҷониби AI эҷодшуда дар асоси маълумоти ошкор ва хабарҳои охирин. Он метавонад хато дошта бошад ё кӯҳна шуда бошад ва маслиҳати сармоягузорӣ нест.';

  @override
  String get errAiNotConfigured => 'Таҳлили AI танзим нашудааст (ANTHROPIC_API_KEY нест).';

  @override
  String get errAiUnreachable => 'Ба хидмати AI пайваст шуда натавонистем. Пайвасти интернетро санҷед.';

  @override
  String errAiHttp(String status) {
    return 'Хидмати AI хато баргардонд (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Хидмати AI аз таҳлили ин саҳмия даст кашид.';

  @override
  String get errAiBadResponse => 'Ҷавоби ғайричашмдошт аз хидмати AI.';

  @override
  String get sectionChart => 'Графики нарх';

  @override
  String get rangeOneWeek => '1 ҳафта';

  @override
  String get rangeOneMonth => '1 моҳ';

  @override
  String get rangeThreeMonths => '3 моҳ';

  @override
  String get rangeOneYear => '1 сол';

  @override
  String get rangeFiveYears => '5 сол';

  @override
  String get chartUnavailable => 'Таърихи нарх дар манбаи ҷории маълумот дастрас нест.';

  @override
  String get sectionStatements => 'Ҳисоботи молиявӣ (солона)';

  @override
  String get labelFiscalYear => 'Соли молиявӣ';

  @override
  String get labelRevenue => 'Даромад';

  @override
  String get labelNetIncome => 'Фоидаи соф';

  @override
  String get labelTotalAssets => 'Ҳамагӣ дороиҳо';

  @override
  String get labelTotalLiabilities => 'Ҳамагӣ ӯҳдадориҳо';

  @override
  String get labelEquity => 'Сармояи худӣ';

  @override
  String get labelOperatingCashFlow => 'Ҷараёни пулии амалиётӣ';

  @override
  String get statementsUnavailable => 'Ҳисоботи молиявии нашршуда барои ин саҳмия дастрас нест.';

  @override
  String get launchAtLogin => 'Ҳангоми воридшавӣ ба система оғоз кардан';

  @override
  String get hotkeyLabel => 'Миёнбури глобалӣ';

  @override
  String get hotkeyRecordHint => 'Ин ҷоро клик кунед, сипас омезиши нави тугмаҳоро пахш кунед';

  @override
  String get hotkeyReset => 'Барқарор кардани пешфарз';

  @override
  String get pasteImage => 'Гузоштани тасвир аз буфери мубодила';

  @override
  String get errClipboardNoImage => 'Дар буфери мубодила тасвир нест.';

  @override
  String get favorites => 'Интихобшудаҳо';

  @override
  String get addToFavorites => 'Илова ба интихобшудаҳо';

  @override
  String get removeFromFavorites => 'Хориҷ аз интихобшудаҳо';

  @override
  String get noFavorites => 'Ҳоло интихобшудаҳо нестанд. Барои илова кардан ситораи саҳмияро пахш кунед.';

  @override
  String get displayCurrency => 'Асъори намоиш';

  @override
  String get displayCurrencyNone => 'Танҳо асъори худи саҳмия';

  @override
  String labelConverted(String currency) {
    return '≈ бо $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Қурб: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Навсозиҳо';

  @override
  String currentVersion(String version) {
    return 'Версияи $version';
  }

  @override
  String get autoUpdate => 'Навсозиҳоро худкор насб кардан';

  @override
  String get checkForUpdates => 'Санҷиши навсозиҳо';

  @override
  String get updateChecking => 'Навсозиҳо санҷида мешаванд…';

  @override
  String get updateUpToDate => 'Шумо версияи охиринро истифода мебаред.';

  @override
  String updateAvailable(String version) {
    return 'Версияи $version дастрас аст.';
  }

  @override
  String get updateDownloading => 'Навсозӣ дар пасзамина бор карда мешавад…';

  @override
  String get updateDownloaded => 'Навсозӣ омода аст. Барои насб барномаро аз нав оғоз кунед.';

  @override
  String get updateNow => 'Навсозӣ';

  @override
  String get restartNow => 'Аз нав оғоз кардан';

  @override
  String get updatesViaStore => 'Навсозиҳо тавассути мағозаи барномаҳо худкор меоянд.';

  @override
  String get updateCheckFailed => 'Навсозиҳоро санҷида натавонистем.';

  @override
  String get subscription => 'Обуна';

  @override
  String get planTrial => 'Озмоишӣ';

  @override
  String get planNormal => 'Оддӣ';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Тарифи фаъол нест';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count таҳлил дар як моҳ';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$days рӯз озмоиши ройгон бо $count таҳлил';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Аз давраи озмоишӣ $days рӯз монд',
      one: 'Аз давраи озмоишӣ 1 рӯз монд',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired => 'Давраи озмоиши ройгони шумо ба охир расид. Барои идомаи таҳлил тариф интихоб кунед.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Дар ин давра $remaining аз $total таҳлил монд';
  }

  @override
  String extraCredits(int count) {
    return '$count таҳлили иловагӣ';
  }

  @override
  String renewsOn(String date) {
    return 'Тамдид: $date';
  }

  @override
  String get choosePlan => 'Интихоби тариф';

  @override
  String get currentPlan => 'Тарифи ҷорӣ';

  @override
  String get subscribe => 'Обуна шудан';

  @override
  String get perMonth => '/ моҳ';

  @override
  String get extraPacksTitle => 'Бештар лозим аст? Таҳлилҳои иловагӣ харед';

  @override
  String get extraPacksHint =>
      'Мӯҳлати таҳлилҳои иловагӣ ҳеҷ гоҳ ба охир намерасад ва онҳо пас аз тамом шудани ҳаҷми моҳонаи шумо истифода мешаванд.';

  @override
  String get buy => 'Харидан';

  @override
  String get restorePurchases => 'Барқарор кардани харидҳо';

  @override
  String get manageSubscription => 'Идоракунии обуна';

  @override
  String get purchaseSuccess => 'Ташаккур! Хариди шумо фаъол аст.';

  @override
  String get purchasePending => 'Харид дар интизорӣ…';

  @override
  String get purchaseFailed => 'Харид анҷом наёфт.';

  @override
  String get purchaseCanceled => 'Харид бекор карда шуд.';

  @override
  String get billingUnavailable =>
      'Дар ин платформа харидҳо ҳоло дастрас нестанд. Дар телефон ё Mac обуна шавед; тарифи шумо дар ҳама дастгоҳҳо кор мекунад.';

  @override
  String get errQuotaExceeded =>
      'Дар ин давра таҳлилҳои шумо тамом шуданд. Тарифи худро баланд бардоред ё таҳлилҳои иловагӣ харед.';

  @override
  String get errTrialExpired => 'Давраи озмоиши ройгони шумо ба охир расид. Барои идома тариф интихоб кунед.';

  @override
  String get errNoPlan => 'Барои таҳлили AI тарифи фаъол лозим аст.';

  @override
  String get viewPlans => 'Дидани тарифҳо';

  @override
  String get usageTitle => 'Истифода';

  @override
  String get demoPurchaseNote => 'Пардохти намоишӣ: дар ин платформа харидҳо тақлид карда мешаванд.';

  @override
  String get mostPopular => 'Маъмултарин';

  @override
  String get bestValue => 'Фоиданоктарин';

  @override
  String get planFeaturesCommon =>
      'Шинохтани акс, маълумоти зинда, графикҳо, интихобшудаҳо ва ҳамаи 120 забон ба ҳар тариф дохил мешаванд. Ҳаҷм ба таҳлилҳои AI дахл дорад.';

  @override
  String get searchLanguages => 'Ҷустуҷӯи забонҳо…';

  @override
  String get noLanguageMatch => 'Ягон забон мувофиқ наомад.';

  @override
  String get aiSettings => 'Таҳлили AI';

  @override
  String get aiLength => 'Ҳаҷм';

  @override
  String get aiDepthBrief => 'Мухтасар';

  @override
  String get aiDepthStandard => 'Стандартӣ';

  @override
  String get aiDepthDeep => 'Муфассал';

  @override
  String get aiDepthBriefDesc => 'Асосӣ, зуд.';

  @override
  String get aiDepthStandardDesc => 'Ҳисоботи пурра бо ҳамаи бахшҳо.';

  @override
  String get aiDepthDeepDesc => 'Ҷустуҷӯҳои бештари веб, муқоиса бо рақибон ва тафсилоти амиқтар.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Тақрибан $min–$max калима';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count таҳлил сарф мешавад',
      one: '1 таҳлил сарф мешавад',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Сатҳи хонанда';

  @override
  String get aiReaderBeginner => 'Навомӯз';

  @override
  String get aiReaderExperienced => 'Ботаҷриба';

  @override
  String get aiReaderBeginnerDesc => 'Забони содда; ҳар истилоҳи махсус шарҳ дода мешавад.';

  @override
  String get aiReaderExperiencedDesc => 'Матни зичтар бо истилоҳоти стандартии молиявӣ.';

  @override
  String get aiCounterArgument => 'Қавитарин далели муқобил';

  @override
  String get aiCounterArgumentDesc => 'Хулоса ҳамеша бо қавитарин далел бар зидди натиҷаи худ анҷом меёбад.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Бо тарифи шумо то $count ҷустуҷӯи веб барои ҳар таҳлил',
      one: 'Бо тарифи шумо то 1 ҷустуҷӯи веб барои ҳар таҳлил',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Ҳаҷми стандартӣ аз рӯи тариф: Оддӣ $normal, Pro $pro, Max $max, Ultra $ultra. Мухтасар – 2 камтар, Муфассал – 2 бештар.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'то $count ҷустуҷӯи веб',
      one: 'то 1 ҷустуҷӯи веб',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ҷустуҷӯи веб барои ҳар таҳлил',
      one: '1 ҷустуҷӯи веб барои ҳар таҳлил',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Барои ин ҳаҷм $needed таҳлил лозим аст, вале танҳо $left монд. Дар Танзимот ҳаҷми кӯтоҳтар интихоб кунед ё таҳлилҳои бештар гиред.';
  }

  @override
  String get outlookMarketMood => 'Кайфияти бозор';

  @override
  String get moodVeryPessimistic => 'Хеле бадбинона';

  @override
  String get moodPessimistic => 'Бадбинона';

  @override
  String get moodNeutral => 'Бетараф';

  @override
  String get moodOptimistic => 'Хушбинона';

  @override
  String get moodVeryOptimistic => 'Хеле хушбинона';

  @override
  String get scenarioBull => 'Сенарияи хушбинона';

  @override
  String get scenarioBase => 'Сенарияи асосӣ';

  @override
  String get scenarioBear => 'Сенарияи бадбинона';

  @override
  String outlookCurrentPrice(String price) {
    return 'Нархи ҷорӣ: $price';
  }

  @override
  String get outlookKeyLevels => 'Сатҳҳои калидӣ';

  @override
  String get keyLevelSupport => 'Дастгирӣ';

  @override
  String get keyLevelResistance => 'Муқовимат';

  @override
  String get keyLevelAnchor => 'Сатҳи такягоҳ';

  @override
  String get upcomingEvents => 'Рӯйдодҳои наздик';

  @override
  String get outlookChartNote => 'Доираҳои тахминӣ; эҳтимолиятҳо арзёбиҳои тахминӣ мебошанд, на пешгӯиҳо.';

  @override
  String get accountTitle => 'Ҳисоб';

  @override
  String get signIn => 'Ворид шудан';

  @override
  String get signOut => 'Баромадан';

  @override
  String get notSignedIn => 'Ворид нашудаед';

  @override
  String get accountBenefit => 'Ворид шавед, то обунаи шумо дар ҳамаи дастгоҳҳоятон кор кунад.';

  @override
  String get accountSyncedNote => 'Обуна ва таҳлилҳои боқимондаи шумо дар ҳама дастгоҳҳо якхела мебошанд.';

  @override
  String get signInTitle => 'Ворид шудан ба WhatStock';

  @override
  String get emailLabel => 'Суроғаи почтаи электронӣ';

  @override
  String get continueWithEmail => 'Идома бо почтаи электронӣ';

  @override
  String codeSentTo(String email) {
    return 'Мо ба $email коди 6-рақама фиристодем. Он 10 дақиқа эътибор дорад.';
  }

  @override
  String get codeLabel => 'Коди воридшавӣ';

  @override
  String get resendCode => 'Фиристодани коди нав';

  @override
  String get useDifferentEmail => 'Истифодаи почтаи электронии дигар';

  @override
  String get errInvalidCode => 'Код нодуруст аст ё мӯҳлаташ гузаштааст.';

  @override
  String get errInvalidEmail => 'Лутфан, суроғаи дурусти почтаи электрониро ворид кунед.';

  @override
  String get errSignInFailed => 'Ворид шудан муяссар нашуд. Пайвастро санҷед ва бори дигар кӯшиш кунед.';

  @override
  String get checkoutWaiting => 'Пардохтро дар браузер анҷом диҳед. Пас аз анҷом барнома худкор навсозӣ мешавад.';

  @override
  String get paymentViaStripe => 'Пардохти бехатар дар браузер тавассути Stripe. Ҳар вақт метавонед бекор кунед.';

  @override
  String get paymentViaStore =>
      'Пардохт тавассути ҳисоби шумо дар App Store ё Google Play. Ҳар вақт метавонед дар танзимоти мағоза бекор кунед.';

  @override
  String get keySpace => 'Фосила';

  @override
  String get doubleOptionTitle => 'Ду бор пахш кардани Option';

  @override
  String get doubleOptionSubtitle => 'Бо зуд ду бор пахш кардани тугмаи Option низ WhatStock кушода мешавад.';

  @override
  String get doubleOptionPermission =>
      'Барои он ки ин дар барномаҳои дигар низ кор кунад, дар «Танзимоти система» → «Махфият ва амният» → «Назорати воридот» ба WhatStock иҷозат диҳед ва сипас барномаро аз нав кушоед.';

  @override
  String get openSystemSettings => 'Кушодани «Танзимоти система»';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Дар ҳар ҷо $shortcut пахш кунед ё тугмаи Option-ро ду бор пахш кунед, то WhatStock кушода шавад.';
  }

  @override
  String get scenarioMostLikely => 'Эҳтимолтарин';

  @override
  String get longTermToday => 'Имрӯз';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(years, locale: localeName, other: '$years сол', one: '1 сол');
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range дар як сол';
  }

  @override
  String longTermLikely(String price) {
    return 'эҳтимолтарин $price';
  }

  @override
  String get confidenceLow => 'Боварии паст';

  @override
  String get confidenceMedium => 'Боварии миёна';

  @override
  String get confidenceHigh => 'Боварии баланд';

  @override
  String get longTermNote =>
      'Доираҳои дарозмуддат ба фарзияҳои зикршуда асос ёфтаанд ва бо мурури замон васеъ мешаванд. Нархҳо бе дивидендҳо нишон дода шудаанд. Арзёбиҳои тахминӣ, на пешгӯиҳо.';

  @override
  String get portfolio => 'Портфел';

  @override
  String get portfolioEmpty =>
      'Ҳоло ин ҷо холӣ аст. Саҳмияро кушоед ва «Илова ба портфел»-ро пахш кунед, то дороиҳои худро пайгирӣ кунед.';

  @override
  String get portfolioLocalNote =>
      'Танҳо дар ҳамин дастгоҳ нигоҳ дошта мешавад. Ҷамъбастҳо бо қурбҳои истинодии ECB табдил дода мешаванд; нархҳо метавонанд бо таъхир бошанд.';

  @override
  String get addToPortfolio => 'Илова ба портфел';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Илова кардани $symbol';
  }

  @override
  String get portfolioQuantity => 'Шумораи саҳмияҳо';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Нархи як саҳмия ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Санаи харид';

  @override
  String get portfolioAdd => 'Илова кардан';

  @override
  String get portfolioInvalidNumber => 'Адади аз сифр калонтар ворид кунед.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol ба портфел илова шуд.';
  }

  @override
  String get portfolioTotalValue => 'Арзиши умумӣ';

  @override
  String get portfolioToday => 'Имрӯз';

  @override
  String get portfolioGainLoss => 'Фоида/зарар';

  @override
  String get portfolioInvested => 'Сармоягузорӣ';

  @override
  String get portfolioAllocation => 'Тақсимот';

  @override
  String get portfolioPositions => 'Мавқеъҳо';

  @override
  String portfolioAvgCost(String price) {
    return 'нархи миёнаи харид $price';
  }

  @override
  String get portfolioYourPosition => 'Мавқеи шумо';

  @override
  String get portfolioPurchases => 'Харидҳо';

  @override
  String get portfolioRemove => 'Хориҷ кардан';

  @override
  String get portfolioExcluded => 'Мавқеъҳои бе нарх ё қурби асъор ба ҷамъбаст дохил намешаванд.';

  @override
  String get priceAlerts => 'Огоҳиҳои нарх';

  @override
  String get setPriceAlert => 'Гузоштани огоҳии нарх';

  @override
  String alertDialogTitle(String symbol) {
    return 'Огоҳии нарх · $symbol';
  }

  @override
  String get alertKindAbove => 'Боло равад';

  @override
  String get alertKindBelow => 'Поён фарояд';

  @override
  String get alertKindMove => 'Дар як рӯз хеле тағйир ёбад';

  @override
  String alertTargetPrice(String currency) {
    return 'Нарх ($currency)';
  }

  @override
  String get alertMovePercent => 'Тағйироти рӯзона (%)';

  @override
  String get alertAlreadyMet => 'Нарх аллакай аз ин сатҳ гузаштааст.';

  @override
  String get alertSave => 'Гузоштани огоҳӣ';

  @override
  String alertCreated(String symbol) {
    return 'Огоҳӣ барои $symbol гузошта шуд.';
  }

  @override
  String get alertsEmpty => 'Ҳоло огоҳии нарх нест. Саҳмияро кушоед ва барои гузоштани огоҳӣ зангӯларо пахш кунед.';

  @override
  String get alertsNote =>
      'То даме ки WhatStock кор мекунад, огоҳиҳо ҳар 5 дақиқа санҷида мешаванд. Дар компютер он дар сатри меню ё трей кор карданро идома медиҳад; дар телефон огоҳиҳо ҳоло танҳо ҳангоми кушода будани барнома меоянд.';

  @override
  String alertDescAbove(String price) {
    return 'Болотар аз $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Поёнтар аз $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Тағйироти рӯзона ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Кор кард: $date, бо нархи $price';
  }

  @override
  String get alertRearm => 'Аз нав фаъол кардан';

  @override
  String get alertDelete => 'Нест кардан';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol аз $price боло рафт';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol аз $price поён фаромад';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol имрӯз $percent тағйир ёфт';
  }

  @override
  String alertHitBody(String price) {
    return 'Нархи ҷорӣ: $price';
  }

  @override
  String get alertOpen => 'Кушодан';

  @override
  String get keepInTrayTitle => 'Пас аз пӯшидани равзана ҳам кор кунад';

  @override
  String get keepInTraySubtitle =>
      'WhatStock дар сатри меню ё трей мемонад, бинобар ин миёнбур ва огоҳиҳои нарх кор карданро идома медиҳанд.';

  @override
  String get termsOfUse => 'Шартҳои истифода';

  @override
  String get privacyPolicy => 'Сиёсати махфият';

  @override
  String get subscriptionLegal =>
      'Обуна то он даме ки шумо онро бекор накунед, ҳар моҳ худкор тамдид мешавад. Бо обуна шудан шумо Шартҳои истифода ва Сиёсати махфиятро қабул мекунед.';

  @override
  String get deleteAccount => 'Нест кардани ҳисоб';

  @override
  String get deleteAccountTitle => 'Ҳисоби шумо нест карда шавад?';

  @override
  String get deleteAccountBody =>
      'Ҳисоби шумо ва ҳар чизе, ки дар сервери мо нигоҳ дошта мешавад (почтаи электронӣ, ҳаҷм, истифода), барои ҳамеша нест карда мешавад ва таҳлилҳои истифоданашуда аз байн мераванд. Обунае, ки дар браузер пардохт шудааст, фавран бекор карда мешавад; обунаи App Store ё Google Play-ро бояд дар танзимоти мағоза бекор кунед.';

  @override
  String get deleteLocalData =>
      'Маълумоти ин дастгоҳро низ нест кардан (портфел, огоҳиҳо, интихобшудаҳо, таърих, таҳлилҳои захирашуда)';

  @override
  String get deleteAccountConfirm => 'Барои ҳамеша нест кардан';

  @override
  String get accountDeleted => 'Ҳисоби шумо нест карда шуд.';

  @override
  String get errDeleteAccount => 'Ҳисобро нест карда натавонистем. Пайвастро санҷед ва бори дигар кӯшиш кунед.';

  @override
  String get aiTrialBriefNote =>
      'Таҳлилҳои озмоишӣ мухтасаранд ва бо модели тезтари AI сохта мешаванд. Бо тариф шумо AI-и пурқувваттарини моро, ҷустуҷӯҳои бештари веб ва дарозиҳои Стандартӣ ва Муфассалро мегиред.';
}
