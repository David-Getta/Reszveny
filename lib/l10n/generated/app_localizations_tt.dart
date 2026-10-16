// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tatar (`tt`).
class AppLocalizationsTt extends AppLocalizations {
  AppLocalizationsTt([String locale = 'tt']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Акцияне фотога төшерегез һәм аның турында барысын да белегез.';

  @override
  String get homeHint =>
      'Акция сертификаты, брокер кушымтасы экраны, газета яки компания логотипы – акцияне билгеләргә ярдәм иткән теләсә нәрсә.';

  @override
  String get takePhoto => 'Фотога төшерү';

  @override
  String get chooseFromGallery => 'Галереядан сайлау';

  @override
  String get chooseImage => 'Рәсем сайлау';

  @override
  String get enterTickerManually => 'Тикерны кулдан кертү';

  @override
  String get tickerInputLabel => 'Тикер';

  @override
  String get tickerInputHint => 'мәс., AAPL';

  @override
  String get lookUp => 'Эзләү';

  @override
  String demoModeBanner(String symbols) {
    return 'Демо-режим – базар мәгълүматлары ачкычы көйләнмәгән. Үрнәк мәгълүматлар түбәндәгеләр өчен бар: $symbols.';
  }

  @override
  String get recognizing => 'Рәсем анализлана…';

  @override
  String get loadingData => 'Мәгълүматлар йөкләнә…';

  @override
  String get noCandidatesTitle => 'Акция танылмады';

  @override
  String get noCandidatesBody =>
      'Бу рәсемдә акцияне билгели алмадык. Ачыграк фото төшереп карагыз яки тикерны кулдан кертегез.';

  @override
  String get whatWeSaw => 'Без нәрсә күрдек';

  @override
  String get chooseCandidateTitle => 'Сез кайсы акцияне күздә тоттыгыз?';

  @override
  String confidencePercent(int percent) {
    return '$percent% ышаныч';
  }

  @override
  String get settings => 'Көйләүләр';

  @override
  String get language => 'Тел';

  @override
  String get systemLanguage => 'Система теле';

  @override
  String get about => 'Кушымта турында';

  @override
  String get disclaimer =>
      'Бу кушымта мәгълүмат өчен генә һәм инвестиция киңәше булып тормый. Мәгълүматлар соңга калган яки төгәл булмаган булырга мөмкин.';

  @override
  String dataSource(String source) {
    return 'Мәгълүмат чыганагы: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Тану: $source';
  }

  @override
  String get retry => 'Кабатлау';

  @override
  String get cancel => 'Баш тарту';

  @override
  String get ok => 'Ярый';

  @override
  String get close => 'Ябу';

  @override
  String get errorGeneric => 'Ниндидер хата килеп чыкты.';

  @override
  String get errorSectionUnavailable => 'Бу бүлекне йөкләп булмады.';

  @override
  String get notAvailable => 'юк';

  @override
  String get sectionIdentity => 'Идентификация';

  @override
  String get sectionPrice => 'Бәя';

  @override
  String get sectionValuation => 'Бәяләү';

  @override
  String get sectionFinancials => 'Финанс күрсәткечләре';

  @override
  String get sectionDividend => 'Дивидендлар';

  @override
  String get sectionProfile => 'Компания профиле';

  @override
  String get sectionAnalysts => 'Аналитиклар рейтинглары';

  @override
  String get sectionNews => 'Яңалыклар';

  @override
  String get sectionRecognition => 'Тану тәфсилләре';

  @override
  String get labelSymbol => 'Тикер';

  @override
  String get labelExchange => 'Биржа';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Валюта';

  @override
  String get labelCountry => 'Ил';

  @override
  String get labelIndustry => 'Тармак';

  @override
  String get labelSector => 'Сектор';

  @override
  String get labelWebsite => 'Веб-сайт';

  @override
  String get labelIpoDate => 'IPO датасы';

  @override
  String get labelMarketCap => 'Капитализация';

  @override
  String get labelSharesOutstanding => 'Әйләнештәге акцияләр';

  @override
  String get labelEmployees => 'Хезмәткәрләр';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Баш офис';

  @override
  String get labelDescription => 'Тасвирлама';

  @override
  String get labelLastPrice => 'Соңгы бәя';

  @override
  String get labelChange => 'Үзгәреш';

  @override
  String get labelOpen => 'Ачылу бәясе';

  @override
  String get labelDayHigh => 'Көн максимумы';

  @override
  String get labelDayLow => 'Көн минимумы';

  @override
  String get labelPreviousClose => 'Алдагы ябылу';

  @override
  String get labelWeek52High => '52 атналык максимум';

  @override
  String get labelWeek52Low => '52 атналык минимум';

  @override
  String get labelAverageVolume10d => 'Урт. күләм (10 көн)';

  @override
  String updatedAt(String time) {
    return 'Яңартылды: $time';
  }

  @override
  String get labelPeTrailing => 'P/E (үткән)';

  @override
  String get labelPeForward => 'P/E (фаразлы)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / ирекле акча агымы';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Бета';

  @override
  String get labelRevenueTtm => 'Керем (TTM)';

  @override
  String get labelNetIncomeTtm => 'Чиста табыш (TTM)';

  @override
  String get labelGrossMargin => 'Тулай маржа';

  @override
  String get labelOperatingMargin => 'Операцион маржа';

  @override
  String get labelNetMargin => 'Чиста маржа';

  @override
  String get labelRoe => 'Үз капиталы рентабельлеге';

  @override
  String get labelRoa => 'Активлар рентабельлеге';

  @override
  String get labelDebtToEquity => 'Бурыч / үз капиталы';

  @override
  String get labelCurrentRatio => 'Агымдагы ликвидлылык';

  @override
  String get labelRevenueGrowth => 'Керем үсеше (YoY)';

  @override
  String get labelEpsGrowth => 'EPS үсеше (YoY)';

  @override
  String get labelDividendYield => 'Дивиденд керемлелеге';

  @override
  String get labelDividendPerShare => 'Бер акциягә дивиденд';

  @override
  String get labelPayoutRatio => 'Түләү коэффициенты';

  @override
  String get labelConsensus => 'Консенсус';

  @override
  String get ratingStrongBuy => 'Актив сатып алу';

  @override
  String get ratingBuy => 'Сатып алу';

  @override
  String get ratingHold => 'Тоту';

  @override
  String get ratingSell => 'Сату';

  @override
  String get ratingStrongSell => 'Актив сату';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count аналитик',
      one: '1 аналитик',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Чор: $period';
  }

  @override
  String get noNews => 'Соңгы яңалыклар юк.';

  @override
  String get openArticle => 'Мәкаләне ачу';

  @override
  String get openLinkFailed => 'Сылтаманы ачып булмады.';

  @override
  String get recognitionSummary => 'Йомгак';

  @override
  String get recognitionEvidence => 'Ни өчен без шулай уйлыйбыз';

  @override
  String get recognitionRawText => 'Рәсемнән укылган текст';

  @override
  String get errMissingAnthropicKey =>
      'Рәсем тану көйләнмәгән (ANTHROPIC_API_KEY юк). Тикерны кулдан кертегез.';

  @override
  String get errRecognitionUnreachable =>
      'Тану хезмәтенә тоташып булмады. Интернет тоташуыгызны тикшерегез.';

  @override
  String errRecognitionHttp(String status) {
    return 'Тану хезмәте хата кайтарды (HTTP $status).';
  }

  @override
  String get errRecognitionRefused => 'Тану хезмәте бу рәсемне эшкәртә алмады.';

  @override
  String get errRecognitionTruncated =>
      'Тану хезмәтенең җавабы өзелде. Зинһар, кабат тырышып карагыз.';

  @override
  String get errRecognitionBadResponse => 'Тану хезмәтеннән көтелмәгән җавап.';

  @override
  String get errRecognitionEmpty => 'Тану хезмәте буш җавап кайтарды.';

  @override
  String get errMissingFinnhubKey =>
      'Базар мәгълүматлары көйләнмәгән (FINNHUB_API_KEY юк).';

  @override
  String get errMarketUnreachable =>
      'Базар мәгълүматлары хезмәтенә тоташып булмады. Интернет тоташуыгызны тикшерегез.';

  @override
  String get errMarketRateLimited =>
      'Базар мәгълүматлары хезмәтенә артык күп сорау җибәрелде. Зинһар, бер минут көтегез.';

  @override
  String errMarketHttp(String status) {
    return 'Базар мәгълүматлары хезмәте хата кайтарды (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Базар мәгълүматлары хезмәтеннән көтелмәгән җавап.';

  @override
  String errNoQuote(String symbol) {
    return '$symbol өчен бәя мәгълүматлары табылмады.';
  }

  @override
  String errNoProfile(String symbol) {
    return '$symbol өчен компания профиле табылмады.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Демо-режимда $symbols генә эшли. Реаль вакыттагы мәгълүматлар өчен FINNHUB_API_KEY өстәгез.';
  }

  @override
  String errUnknown(String detail) {
    return 'Хата килеп чыкты: $detail';
  }

  @override
  String get newSearch => 'Яңа эзләү';

  @override
  String get recentSearches => 'Соңгылар';

  @override
  String get noRecentSearches => 'Әлегә соңгы эзләүләр юк.';

  @override
  String get clearRecent => 'Соңгыларны чистарту';

  @override
  String get greeting => 'Кайсы акцияне карыйбыз?';

  @override
  String get searchHint => 'Тикер яки компания исеме';

  @override
  String get attachImage => 'Рәсем беркетү';

  @override
  String get searchResultsTitle => 'Эзләү нәтиҗәләре';

  @override
  String errNoResults(String query) {
    return '«$query» буенча акцияләр табылмады.';
  }

  @override
  String get quickBarHint => 'Тикер яки компания исемен языгыз…';

  @override
  String get openFullWindow => 'Тәрәзәне ачу';

  @override
  String hotkeyHint(String shortcut) {
    return 'WhatStock кушымтасын чакыру өчен теләсә кайда $shortcut басыгыз.';
  }

  @override
  String get trayOpen => 'WhatStock кушымтасын ачу';

  @override
  String get trayQuickSearch => 'Тиз эзләү';

  @override
  String get trayQuit => 'Чыгу';

  @override
  String get appearance => 'Тышкы күренеш';

  @override
  String get themeSystem => 'Система';

  @override
  String get themeDark => 'Караңгы';

  @override
  String get themeLight => 'Якты';

  @override
  String get back => 'Артка';

  @override
  String get aiSectionTitle => 'AI анализы';

  @override
  String get aiIntro =>
      'AI язган җентекле күзәтү: соңгы яңалыкларның кыскача эчтәлеге, бизнес, көчле яклар, рисклар һәм яшерен факторлар, бәяләү, психологик, социологик, техник һәм макроикътисади яктан сценарийлар белән бәя фаразы, шулай ук нәрсәгә игътибар итәргә кирәклеге.';

  @override
  String get aiGenerate => 'Анализ ясау';

  @override
  String get aiRegenerate => 'Яңадан ясау';

  @override
  String get aiGenerating =>
      'Анализ әзерләнә… бу бер-ике минут вакыт алырга мөмкин.';

  @override
  String get aiSources => 'Чыганаклар';

  @override
  String aiGeneratedAt(String time) {
    return 'Ясалды: $time';
  }

  @override
  String get aiDisclaimer =>
      'Ачык мәгълүматлар һәм соңгы яңалыклар нигезендә AI ясаган анализ. Анда хаталар булырга яки ул искергән булырга мөмкин, һәм ул инвестиция киңәше түгел.';

  @override
  String get errAiNotConfigured =>
      'AI анализы көйләнмәгән (ANTHROPIC_API_KEY юк).';

  @override
  String get errAiUnreachable =>
      'AI хезмәтенә тоташып булмады. Интернет тоташуыгызны тикшерегез.';

  @override
  String errAiHttp(String status) {
    return 'AI хезмәте хата кайтарды (HTTP $status).';
  }

  @override
  String get errAiRefused => 'AI хезмәте бу акцияне анализлаудан баш тартты.';

  @override
  String get errAiBadResponse => 'AI хезмәтеннән көтелмәгән җавап.';

  @override
  String get sectionChart => 'Бәя графигы';

  @override
  String get rangeOneWeek => '1 атна';

  @override
  String get rangeOneMonth => '1 ай';

  @override
  String get rangeThreeMonths => '3 ай';

  @override
  String get rangeOneYear => '1 ел';

  @override
  String get rangeFiveYears => '5 ел';

  @override
  String get chartUnavailable => 'Хәзерге мәгълүмат чыганагында бәя тарихы юк.';

  @override
  String get sectionStatements => 'Финанс хисаплылыгы (еллык)';

  @override
  String get labelFiscalYear => 'Финанс елы';

  @override
  String get labelRevenue => 'Керем';

  @override
  String get labelNetIncome => 'Чиста табыш';

  @override
  String get labelTotalAssets => 'Барлык активлар';

  @override
  String get labelTotalLiabilities => 'Барлык йөкләмәләр';

  @override
  String get labelEquity => 'Үз капиталы';

  @override
  String get labelOperatingCashFlow => 'Операцион акча агымы';

  @override
  String get statementsUnavailable =>
      'Бу акция өчен бастырылган финанс хисаплары юк.';

  @override
  String get launchAtLogin => 'Системага кергәндә җибәрү';

  @override
  String get hotkeyLabel => 'Глобаль тиз төймәләр';

  @override
  String get hotkeyRecordHint =>
      'Монда басыгыз, аннары яңа төймәләр кушылмасына басыгыз';

  @override
  String get hotkeyReset => 'Башлангыч көйләнешкә кайтару';

  @override
  String get pasteImage => 'Алмашу буферыннан рәсем кую';

  @override
  String get errClipboardNoImage => 'Алмашу буферында рәсем юк.';

  @override
  String get favorites => 'Сайланмалар';

  @override
  String get addToFavorites => 'Сайланмаларга өстәү';

  @override
  String get removeFromFavorites => 'Сайланмалардан бетерү';

  @override
  String get noFavorites =>
      'Әлегә сайланмалар юк. Өстәү өчен акциядәге йолдызга басыгыз.';

  @override
  String get displayCurrency => 'Күрсәтү валютасы';

  @override
  String get displayCurrencyNone => 'Акциянең үз валютасы гына';

  @override
  String labelConverted(String currency) {
    return '≈ $currency исәбендә';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Курс: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Яңартулар';

  @override
  String currentVersion(String version) {
    return 'Версия $version';
  }

  @override
  String get autoUpdate => 'Яңартуларны автоматик урнаштыру';

  @override
  String get checkForUpdates => 'Яңартуларны тикшерү';

  @override
  String get updateChecking => 'Яңартулар тикшерелә…';

  @override
  String get updateUpToDate => 'Сездә соңгы версия.';

  @override
  String updateAvailable(String version) {
    return 'Яңа версия бар: $version.';
  }

  @override
  String get updateDownloading => 'Яңарту фон режимында йөкләнә…';

  @override
  String get updateDownloaded =>
      'Яңарту әзер. Урнаштыру өчен кушымтаны яңадан җибәрегез.';

  @override
  String get updateNow => 'Яңарту';

  @override
  String get restartNow => 'Яңадан җибәрү';

  @override
  String get updatesViaStore =>
      'Яңартулар кушымталар кибете аша автоматик рәвештә килә.';

  @override
  String get updateCheckFailed => 'Яңартуларны тикшереп булмады.';

  @override
  String get subscription => 'Язылу';

  @override
  String get planTrial => 'Сынау';

  @override
  String get planNormal => 'Гадәти';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Актив тариф юк';

  @override
  String planAnalysesPerMonth(int count) {
    return 'Айга $count анализ';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$count анализ белән $days көнлек түләүсез сынау';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Сынау чорының $days көне калды',
      one: 'Сынау чорының 1 көне калды',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Түләүсез сынау чорыгыз тәмамланды. Анализлауны дәвам итү өчен тариф сайлагыз.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Бу чорда $total анализдан $remaining калды';
  }

  @override
  String extraCredits(int count) {
    return '$count өстәмә анализ';
  }

  @override
  String renewsOn(String date) {
    return 'Озайтылу: $date';
  }

  @override
  String get choosePlan => 'Тариф сайлау';

  @override
  String get currentPlan => 'Хәзерге тариф';

  @override
  String get subscribe => 'Язылу';

  @override
  String get perMonth => '/ ай';

  @override
  String get extraPacksTitle => 'Күбрәк кирәкме? Өстәмә анализлар сатып алыгыз';

  @override
  String get extraPacksHint =>
      'Өстәмә анализларның вакыты беркайчан да чыкмый, алар айлык лимитыгыздан соң кулланыла.';

  @override
  String get buy => 'Сатып алу';

  @override
  String get restorePurchases => 'Сатып алуларны кайтару';

  @override
  String get manageSubscription => 'Язылу белән идарә итү';

  @override
  String get purchaseSuccess => 'Рәхмәт! Сатып алуыгыз актив.';

  @override
  String get purchasePending => 'Сатып алу көтелә…';

  @override
  String get purchaseFailed => 'Сатып алуны тәмамлап булмады.';

  @override
  String get purchaseCanceled => 'Сатып алу гамәлдән чыгарылды.';

  @override
  String get billingUnavailable =>
      'Бу платформада сатып алулар әлегә мөмкин түгел. Телефоныгыздан яки Mac компьютерыгыздан язылыгыз; тарифыгыз барлык җайланмаларда да эшләячәк.';

  @override
  String get errQuotaExceeded =>
      'Бу чорга анализларыгыз калмады. Тарифыгызны күтәрегез яки өстәмә анализлар сатып алыгыз.';

  @override
  String get errTrialExpired =>
      'Түләүсез сынау чорыгыз тәмамланды. Дәвам итү өчен тариф сайлагыз.';

  @override
  String get errNoPlan => 'AI анализы өчен актив тариф кирәк.';

  @override
  String get viewPlans => 'Тарифларны карау';

  @override
  String get usageTitle => 'Куллану';

  @override
  String get demoPurchaseNote =>
      'Демо-түләү: бу платформада сатып алулар симуляцияләнә.';

  @override
  String get mostPopular => 'Иң популяр';

  @override
  String get bestValue => 'Иң отышлы';

  @override
  String get planFeaturesCommon =>
      'Фото тану, реаль вакыттагы мәгълүматлар, графиклар, сайланмалар һәм барлык 120 тел һәр тарифка керә. Лимит AI анализларына кагыла.';

  @override
  String get searchLanguages => 'Телләрне эзләү…';

  @override
  String get noLanguageMatch => 'Туры килгән тел юк.';

  @override
  String get aiSettings => 'AI анализы';

  @override
  String get aiLength => 'Күләм';

  @override
  String get aiDepthBrief => 'Кыскача';

  @override
  String get aiDepthStandard => 'Стандарт';

  @override
  String get aiDepthDeep => 'Җентекле';

  @override
  String get aiDepthBriefDesc => 'Иң мөһиме, тиз.';

  @override
  String get aiDepthStandardDesc => 'Барлык бүлекләр белән тулы хисап.';

  @override
  String get aiDepthDeepDesc =>
      'Күбрәк веб-эзләү, көндәшләр белән чагыштыру һәм тирәнрәк тәфсилләр.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Якынча $min–$max сүз';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count анализ сарыф ителә',
      one: '1 анализ сарыф ителә',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Укучы дәрәҗәсе';

  @override
  String get aiReaderBeginner => 'Яңа башлаучы';

  @override
  String get aiReaderExperienced => 'Тәҗрибәле';

  @override
  String get aiReaderBeginnerDesc => 'Гади тел; һәр махсус термин аңлатыла.';

  @override
  String get aiReaderExperiencedDesc =>
      'Стандарт финанс терминологиясе белән тыгызрак текст.';

  @override
  String get aiCounterArgument => 'Иң көчле каршы аргумент';

  @override
  String get aiCounterArgumentDesc =>
      'Йомгак һәрвакыт үз нәтиҗәсенә каршы иң көчле аргумент белән тәмамлана.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Тарифыгыз буенча һәр анализга $count веб-эзләүгә кадәр',
      one: 'Тарифыгыз буенча һәр анализга 1 веб-эзләүгә кадәр',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Тарифлар буенча стандарт күләм: Гадәти $normal, Pro $pro, Max $max, Ultra $ultra. Кыскача – 2 кимрәк, Җентекле – 2 күбрәк.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count веб-эзләүгә кадәр',
      one: '1 веб-эзләүгә кадәр',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Һәр анализга $count веб-эзләү',
      one: 'Һәр анализга 1 веб-эзләү',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Бу күләм өчен $needed анализ кирәк, ә $left генә калды. Көйләүләрдә кыскарак күләм сайлагыз яки күбрәк анализ алыгыз.';
  }

  @override
  String get outlookMarketMood => 'Базар кәефе';

  @override
  String get moodVeryPessimistic => 'Бик пессимистик';

  @override
  String get moodPessimistic => 'Пессимистик';

  @override
  String get moodNeutral => 'Нейтраль';

  @override
  String get moodOptimistic => 'Оптимистик';

  @override
  String get moodVeryOptimistic => 'Бик оптимистик';

  @override
  String get scenarioBull => 'Оптимистик сценарий';

  @override
  String get scenarioBase => 'Төп сценарий';

  @override
  String get scenarioBear => 'Пессимистик сценарий';

  @override
  String outlookCurrentPrice(String price) {
    return 'Хәзерге бәя: $price';
  }

  @override
  String get outlookKeyLevels => 'Төп дәрәҗәләр';

  @override
  String get keyLevelSupport => 'Терәк';

  @override
  String get keyLevelResistance => 'Каршылык';

  @override
  String get keyLevelAnchor => 'Таяныч дәрәҗә';

  @override
  String get upcomingEvents => 'Алдагы вакыйгалар';

  @override
  String get outlookChartNote =>
      'Якынча диапазоннар; ихтималлыклар – якынча бәяләүләр, фаразлар түгел.';

  @override
  String get accountTitle => 'Аккаунт';

  @override
  String get signIn => 'Керү';

  @override
  String get signOut => 'Чыгу';

  @override
  String get notSignedIn => 'Керелмәгән';

  @override
  String get accountBenefit =>
      'Язылуыгыз барлык җайланмаларыгызда да эшләсен өчен керегез.';

  @override
  String get accountSyncedNote =>
      'Язылуыгыз һәм калган анализларыгыз һәр җайланмада бертөрле.';

  @override
  String get signInTitle => 'WhatStock аккаунтына керү';

  @override
  String get emailLabel => 'Электрон почта адресы';

  @override
  String get continueWithEmail => 'Электрон почта белән дәвам итү';

  @override
  String codeSentTo(String email) {
    return '$email адресына 6 саннан торган код җибәрдек. Ул 10 минут гамәлдә.';
  }

  @override
  String get codeLabel => 'Керү коды';

  @override
  String get resendCode => 'Яңа код җибәрү';

  @override
  String get useDifferentEmail => 'Башка электрон почта куллану';

  @override
  String get errInvalidCode => 'Код дөрес түгел яки аның вакыты чыккан.';

  @override
  String get errInvalidEmail => 'Дөрес электрон почта адресын кертегез.';

  @override
  String get errSignInFailed =>
      'Керү барып чыкмады. Тоташуыгызны тикшерегез һәм кабат тырышып карагыз.';

  @override
  String get checkoutWaiting =>
      'Түләүне браузерыгызда тәмамлагыз. Тәмамлангач, кушымта автоматик рәвештә яңарачак.';

  @override
  String get paymentViaStripe =>
      'Stripe аша браузерда куркынычсыз түләү. Теләсә кайчан баш тарта аласыз.';

  @override
  String get paymentViaStore =>
      'Түләү App Store яки Google Play аккаунтыгыз аша алына. Кибет көйләүләрендә теләсә кайчан баш тарта аласыз.';

  @override
  String get keySpace => 'Пробел';

  @override
  String get doubleOptionTitle => 'Option төймәсенә ике тапкыр басу';

  @override
  String get doubleOptionSubtitle =>
      'Option төймәсенә тиз генә ике тапкыр басу да WhatStock кушымтасын чакыра.';

  @override
  String get doubleOptionPermission =>
      'Бу башка кушымталарда да эшләсен өчен, «Система көйләүләре» → «Хосусыйлык һәм куркынычсызлык» → «Кертүне күзәтү» бүлегендә WhatStock кушымтасына рөхсәт бирегез, аннары кушымтаны яңадан ачыгыз.';

  @override
  String get openSystemSettings => 'Система көйләүләрен ачу';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'WhatStock кушымтасын чакыру өчен теләсә кайда $shortcut басыгыз яки Option төймәсенә ике тапкыр басыгыз.';
  }

  @override
  String get scenarioMostLikely => 'Иң ихтималлы';

  @override
  String get longTermToday => 'Бүген';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years ел',
      one: '1 ел',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return 'елына $range';
  }

  @override
  String longTermLikely(String price) {
    return 'иң ихтималлысы $price';
  }

  @override
  String get confidenceLow => 'Түбән ышаныч';

  @override
  String get confidenceMedium => 'Уртача ышаныч';

  @override
  String get confidenceHigh => 'Югары ышаныч';

  @override
  String get longTermNote =>
      'Озак сроклы диапазоннар күрсәтелгән шартларга нигезләнә һәм вакыт узу белән киңәя. Бәяләргә дивидендлар кермәгән. Якынча бәяләүләр, фаразлар түгел.';

  @override
  String get portfolio => 'Портфель';

  @override
  String get portfolioEmpty =>
      'Монда әлегә буш. Үз акцияләрегезне күзәтү өчен акцияне ачыгыз һәм «Портфельгә өстәү» дигәнгә басыгыз.';

  @override
  String get portfolioLocalNote =>
      'Бу җайланмада гына саклана. Гомуми суммалар ECB белешмә курслары буенча күчерелә; бәяләр соңга калырга мөмкин.';

  @override
  String get addToPortfolio => 'Портфельгә өстәү';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol өстәү';
  }

  @override
  String get portfolioQuantity => 'Акцияләр саны';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Бер акция бәясе ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Сатып алу датасы';

  @override
  String get portfolioAdd => 'Өстәү';

  @override
  String get portfolioInvalidNumber => 'Нульдән зуррак сан кертегез.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol портфельгә өстәлде.';
  }

  @override
  String get portfolioTotalValue => 'Гомуми кыйммәт';

  @override
  String get portfolioToday => 'Бүген';

  @override
  String get portfolioGainLoss => 'Табыш/зыян';

  @override
  String get portfolioInvested => 'Салынган';

  @override
  String get portfolioAllocation => 'Бүленеш';

  @override
  String get portfolioPositions => 'Позицияләр';

  @override
  String portfolioAvgCost(String price) {
    return 'урт. бәя $price';
  }

  @override
  String get portfolioYourPosition => 'Сезнең позиция';

  @override
  String get portfolioPurchases => 'Сатып алулар';

  @override
  String get portfolioRemove => 'Бетерү';

  @override
  String get portfolioExcluded =>
      'Бәясе яки валюта курсы булмаган позицияләр гомуми суммага кертелми.';

  @override
  String get priceAlerts => 'Бәя искәртүләре';

  @override
  String get setPriceAlert => 'Бәя искәртүе кую';

  @override
  String alertDialogTitle(String symbol) {
    return 'Бәя искәртүе · $symbol';
  }

  @override
  String get alertKindAbove => 'Күтәрелсә';

  @override
  String get alertKindBelow => 'Төшсә';

  @override
  String get alertKindMove => 'Бер көндә нык үзгәрсә';

  @override
  String alertTargetPrice(String currency) {
    return 'Бәя ($currency)';
  }

  @override
  String get alertMovePercent => 'Көнлек үзгәреш (%)';

  @override
  String get alertAlreadyMet => 'Бәя бу дәрәҗәне инде узган.';

  @override
  String get alertSave => 'Искәртү кую';

  @override
  String alertCreated(String symbol) {
    return '$symbol өчен искәртү куелды.';
  }

  @override
  String get alertsEmpty =>
      'Әлегә бәя искәртүләре юк. Искәртү кую өчен акцияне ачыгыз һәм кыңгырауга басыгыз.';

  @override
  String get alertsNote =>
      'WhatStock эшләгәндә искәртүләр һәр 5 минут саен тикшерелә. Компьютерда ул меню юлында яки трейда эшләвен дәвам итә; телефонда исә искәртүләр әлегә кушымта ачык булганда гына килә.';

  @override
  String alertDescAbove(String price) {
    return '$price дәрәҗәсеннән югарырак';
  }

  @override
  String alertDescBelow(String price) {
    return '$price дәрәҗәсеннән түбәнрәк';
  }

  @override
  String alertDescMove(String percent) {
    return 'Көнлек үзгәреш ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Эшләде: $date, $price бәясендә';
  }

  @override
  String get alertRearm => 'Кабат кабызу';

  @override
  String get alertDelete => 'Бетерү';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol $price дәрәҗәсеннән югарырак күтәрелде';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol $price дәрәҗәсеннән түбәнрәк төште';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol бүген $percent үзгәрде';
  }

  @override
  String alertHitBody(String price) {
    return 'Хәзерге бәя: $price';
  }

  @override
  String get alertOpen => 'Ачу';

  @override
  String get keepInTrayTitle => 'Тәрәзә ябылгач та эшләсен';

  @override
  String get keepInTraySubtitle =>
      'WhatStock меню юлында яки трейда кала, шуңа күрә тиз төймәләр һәм бәя искәртүләре эшләвен дәвам итә.';

  @override
  String get termsOfUse => 'Куллану шартлары';

  @override
  String get privacyPolicy => 'Хосусыйлык сәясәте';

  @override
  String get subscriptionLegal =>
      'Язылу сез аннан баш тартканчы һәр ай саен автоматик рәвештә озайтыла. Язылып, сез Куллану шартларын һәм Хосусыйлык сәясәтен кабул итәсез.';

  @override
  String get deleteAccount => 'Аккаунтны бетерү';

  @override
  String get deleteAccountTitle => 'Аккаунтыгыз бетерелсенме?';

  @override
  String get deleteAccountBody =>
      'Аккаунтыгыз һәм безнең серверда сакланган бар нәрсә (электрон почта, лимит, куллану) мәңгегә бетереләчәк, ә кулланылмаган анализлар юкка чыгачак. Браузерда түләнгән язылу шунда ук туктатыла; App Store яки Google Play язылуын кибет көйләүләрендә туктатырга кирәк.';

  @override
  String get deleteLocalData =>
      'Бу җайланмадагы мәгълүматларны да бетерү (портфель, искәртүләр, сайланмалар, тарих, сакланган анализлар)';

  @override
  String get deleteAccountConfirm => 'Мәңгегә бетерү';

  @override
  String get accountDeleted => 'Аккаунтыгыз бетерелде.';

  @override
  String get errDeleteAccount =>
      'Аккаунтны бетереп булмады. Тоташуыгызны тикшерегез һәм кабат тырышып карагыз.';

  @override
  String get aiTrialBriefNote =>
      'Сынау анализлары кыска һәм тизрәк AI модель ярдәмендә ясала. Тариф белән сез иң көчле AI-ыбызны, күбрәк веб-эзләүне һәм Стандарт белән Җентекле озынлыкларны аласыз.';

  @override
  String get billingMonthly => 'Айлык';

  @override
  String get billingYearly => 'Еллык';

  @override
  String get yearlyDiscount => '2 ай бушлай';

  @override
  String get perYear => '/ ел';

  @override
  String pricePerMonthApprox(String price) {
    return 'Айга ≈ $price';
  }

  @override
  String get subscriptionLegalYearly =>
      'Еллык язылу сез аннан баш тартканчы һәр ел саен автоматик рәвештә озайтыла. Язылып, сез Куллану шартларын һәм Хосусыйлык сәясәтен кабул итәсез.';

  @override
  String get myAnalyses => 'Минем анализларым';

  @override
  String get navAlerts => 'Искәртүләр';

  @override
  String get inviteTitle => 'Ябык алдан карау';

  @override
  String get inviteBody =>
      'WhatStock хәзергә чакыру белән генә кулланыла ала. Алган чакыру кодыгызны кертегез.';

  @override
  String get inviteCodeLabel => 'Чакыру коды';

  @override
  String get inviteContinue => 'Дәвам итү';

  @override
  String get inviteInvalid => 'Бу чакыру коды гамәлдә түгел.';

  @override
  String get inviteExpired =>
      'Бу чакыруның вакыты чыккан. Сезне чакырган кешедән яңа код сорагыз.';

  @override
  String get inviteDeviceLimit =>
      'Бу чакыру коды инде рөхсәт ителгән иң күп җайланмада кулланыла.';

  @override
  String get previewConfidential => 'Яшерен алдан карау';

  @override
  String get errPreviewDailyLimit =>
      'Бу алдан карауның бүгенге анализ чиге тулды. Иртәгә кабат тырышып карагыз.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сәгать элек',
      one: '1 сәгать элек',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count көн элек',
      one: '1 көн элек',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Бу анализны яңартыйкмы?';

  @override
  String staleBody(String age) {
    return 'Ул $age ясалды. Шуннан бирле бәяләр, яңалыклар һәм нәтиҗәләр үзгәргән булырга мөмкин.';
  }

  @override
  String get staleKeep => 'Элеккесен күрсәтү';

  @override
  String get staleRefresh => 'Яңасын ясау';

  @override
  String seeAll(int count) {
    return 'Барысын да карау ($count)';
  }

  @override
  String get searchAnalyses => 'Анализларыгыздан эзләү';

  @override
  String get deleteAnalysis => 'Бетерү';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol анализы бетерелде';
  }

  @override
  String get keyLevelAlertHint =>
      'Бәя дәрәҗәгә җиткәч искәртү алу өчен дәрәҗәгә басыгыз.';

  @override
  String get shareAnalysisTitle => 'Анализ белән бүлешү';

  @override
  String get shareAsImage => 'Рәсем итеп бүлешү';

  @override
  String get shareAsText => 'Текст итеп бүлешү';

  @override
  String get shareCardFooter => 'WhatStock ярдәмендә ясалган';

  @override
  String get shareCardDisclaimer => 'AI анализы · инвестиция киңәше түгел';

  @override
  String get referralTitle => 'Дусларны чакыру';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count өстәмә анализ',
      one: '1 өстәмә анализ',
    );
    return 'Кодыгыз белән бүлешегез. Дустыгыз шунда ук $_temp0 ала, ә сез аның беренче анализыннан соң шулкадәр үк аласыз.';
  }

  @override
  String get referralYourCode => 'Сезнең код';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Чакырылган: $invited · Бүләкләнгән: $rewarded';
  }

  @override
  String get referralHaveCode => 'Дустыгыздан код бармы?';

  @override
  String get referralRedeem => 'Куллану';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count өстәмә анализ өстәлде. Рәхим итегез!',
      one: '1 өстәмә анализ өстәлде. Рәхим итегез!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Мондый код юк. Тикшерегез һәм кабат тырышып карагыз.';

  @override
  String get referralErrOwn => 'Үз кодыгызны куллана алмыйсыз.';

  @override
  String get referralErrAlready => 'Сез инде дустыгызның кодын кулландыгыз.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count өстәмә анализ',
      one: '1 өстәмә анализ',
    );
    return 'Мин акцияләрне WhatStock белән анализлыйм: акциянең фотосын төшерегез, ә AI аны аңлатып бирә. Минем $code кодым белән сез $_temp0 аласыз.';
  }

  @override
  String get referralCopied => 'Код күчерелде';

  @override
  String get onboardTitle1 => 'Акцияне фотога төшерегез';

  @override
  String get onboardBody1 =>
      'Брокер кушымтасы экраны, газета яки компания логотибы да җитә: WhatStock акцияне таный һәм аның бәясен, графигын, төп күрсәткечләрен күрсәтә.';

  @override
  String get onboardTitle2 => 'Берничә минутта аңлагыз';

  @override
  String get onboardBody2 =>
      'AI анализы акцияне нәрсә хәрәкәткә китергәнен, куркынычларны, бәяләүне һәм бәянең кая таба китә алуы турында өч сценарийны аңлата – чыганаклар белән һәм сезнең телдә.';

  @override
  String get onboardTitle3 => 'Һәрвакыт хәбәрдар булыгыз';

  @override
  String get onboardBody3 =>
      'Сайланмалар, портфелегез һәм бәя искәртүләре сезгә яңалыклар турында хәбәр итеп тора. Анализларыгыз җайланмагызда саклана, аларны теләсә кайчан яңадан ача аласыз.';

  @override
  String get onboardNext => 'Алга';

  @override
  String get onboardStart => 'Башлагыз';

  @override
  String get onboardSkip => 'Калдыру';

  @override
  String changesTitle(String date) {
    return 'Алдагы анализдан бирле ($date)';
  }

  @override
  String get changesPrice => 'Бәя';

  @override
  String get changesNoMajor => 'Фаразлар җитди үзгәрмәде.';

  @override
  String get changesPreviousSummary => 'Алдагы йомгак';

  @override
  String get telemetryTitle => 'WhatStock\'ны яхшыртырга булышыгыз';

  @override
  String get telemetryBody =>
      'Анонимлы куллану статистикасы һәм ватылу хисаплары белән уртаклашыгыз: нинди функцияләр кулланыла һәм нәрсә дөрес эшләмәде. Акцияләрегез, анализларыгыз яки шәхси мәгълүматларыгыз беркайчан да җибәрелми. Моны теләсә кайчан Көйләүләрдә үзгәртә аласыз.';

  @override
  String get telemetryAllow => 'Рөхсәт итү';

  @override
  String get telemetryDecline => 'Юк, рәхмәт';

  @override
  String get telemetrySetting => 'Анонимлы статистика һәм ватылу хисаплары';

  @override
  String get telemetrySettingHint =>
      'Функцияләрнең никадәр еш кулланылуы һәм хата хисаплары, шәхси мәгълүматларсыз һәм эзләүләрегез белән анализларыгыз эчтәлегеннән башка.';

  @override
  String get askButton => 'Бу анализ турында сорагыз';

  @override
  String askTitle(String symbol) {
    return '$symbol турында сораулар';
  }

  @override
  String get askIntro =>
      'Анализ турында теләсә нәрсә сорагыз: берәр куркыныч нәрсәне аңлата, фаразны нәрсә үзгәртә ала, сан ничек исәпләнгән. Җаваплар шушы анализга нигезләнә һәм инвестиция киңәше түгел.';

  @override
  String get askHint => 'Сорау бирегез…';

  @override
  String get askSend => 'Җибәрү';

  @override
  String get askThinking => 'Уйлый…';

  @override
  String get askSuggest1 => 'Иң зур куркыныч нәрсә?';

  @override
  String get askSuggest2 => 'Фаразны нәрсә үзгәртә ала?';

  @override
  String get askSuggest3 => 'Гади итеп аңлат';

  @override
  String get askMaxReached =>
      'Бу анализ өчен бу соңгы сорау иде. Тагын сорау бирү өчен яңа анализ ясагыз.';

  @override
  String get errAskLimit =>
      'Сез бүгенге сораулар чигенә җиттегез. Зинһар, иртәгә кабат тырышып карагыз.';

  @override
  String get eventTomorrow => 'Иртәгә';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days көннән',
      one: '1 көннән',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Квартал нәтиҗәләре';

  @override
  String get eventBeforeOpen => 'биржа ачылганчы';

  @override
  String get eventAfterClose => 'биржа ябылгач';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS фаразы: $value';
  }

  @override
  String get eventFromAnalysis => 'Сезнең анализдан';

  @override
  String get eventsHint =>
      'Сайланмалардагы һәм портфельдәге акцияләрнең киләсе 90 көндәге нәтиҗә көннәре, шулай ук анализларыгыз билгеләгән даталы вакыйгалар.';

  @override
  String get eventsEmpty =>
      'Киләсе 90 көндә даталы вакыйгалар юк. Нәтиҗә көннәрен монда күрү өчен сайланмалар яки портфель акцияләре өстәгез.';

  @override
  String get compareTitle => 'Чагыштыру';

  @override
  String get compareAdd => 'Акция өстәү';

  @override
  String get compareRemove => 'Бетерү';

  @override
  String get compareTickerHint => 'Тикер, мәсәлән MSFT';

  @override
  String get compareHint =>
      'Төп күрсәткечләр янәшә; һәр юлда иң яхшы кыйммәт аерып күрсәтелә. Суммалар һәр акциянең үз валютасында.';

  @override
  String get compareNoAnalysis => 'Әлегә анализ юк';

  @override
  String get portfolioDividends => 'Еллык дивидендлар';

  @override
  String portfolioDividendYield(String percent) {
    return 'Керемлелек $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Көтелгән еллык дивидендлар соңгы 12 айда түләнгән дивидендларга нигезләнә; киләчәк түләүләр гарантияләнми.';

  @override
  String positionDividend(String amount) {
    return 'Дивиденд: елына $amount';
  }

  @override
  String get chartAvgCost => 'Сезнең урт.';

  @override
  String get chartAlertLevel => 'Искәртү';

  @override
  String get marketsToday => 'Базарлар бүген';

  @override
  String get notesTitle => 'Минем язмаларым';

  @override
  String get notesHint =>
      'Аны ни өчен сатып алдыгыз, нәрсәне күзәтәсез, нәрсә сезне сатарга этәрер иде?';

  @override
  String get notesInfo =>
      'Бу җайланмада гына саклана. AI анализы язмаларыгызны исәпкә ала.';

  @override
  String notesSaved(String date) {
    return 'Сакланды: $date';
  }

  @override
  String get peersTitle => 'Охшаш компанияләр';

  @override
  String get portfolioExport => 'CSV итеп экспортлау';

  @override
  String get portfolioImport => 'CSV-тан импортлау';

  @override
  String get portfolioImportHint =>
      'Һәр юлга бер сатып алуны куегыз: тикер, саны, бәясе, валюта, дата (ЕЕЕЕ-АА-КК). Баганалар өтер, нокталы өтер яки табуляция белән аерылырга мөмкин; башлык юлы мәҗбүри түгел.';

  @override
  String get portfolioImportButton => 'Импортлау';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сатып алу өстәлде',
      one: '1 сатып алу өстәлде',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count юл калдырылды',
      one: '1 юл калдырылды',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Портфель, сайланмалар, бәя искәртүләре һәм язмалар бөтен җайланмаларыгызда синхронлаштырыла.';

  @override
  String syncLast(String time) {
    return 'Соңгы синхронлаштыру: $time';
  }

  @override
  String get syncNow => 'Хәзер синхронлаштыру';

  @override
  String get syncFailed =>
      'Синхронлаштырып булмады. Автомат рәвештә кабат омтылыш ясалачак.';

  @override
  String get alertEmailTitle => 'Искәртү эшләгәндә электрон хат';

  @override
  String get alertEmailOn =>
      'Без искәртүләрегезне берничә минут саен тикшерәбез һәм кушымта ябык булса да, сезгә электрон хат җибәрәбез.';

  @override
  String get alertEmailSignIn =>
      'Кушымта ябык булса да искәртүләрне электрон почта аша алу өчен Көйләүләрдә электрон почтагыз белән керегез.';

  @override
  String get portfolioHistory => 'Кыйммәт динамикасы';

  @override
  String get portfolioReviewTitle => 'Портфельнең AI анализы';

  @override
  String get portfolioReviewIntro =>
      'AI бөтен портфелегезне карый: тупланыш, тармак һәм валюта куркынычы, акцияләрегезнең уртак куркынычлары һәм дивидендлар. 1 анализ сарыф ителә.';

  @override
  String get portfolioReviewButton => 'Портфелемне анализлау';

  @override
  String get portfolioReviewAgain => 'Яңадан анализлау';

  @override
  String get portfolioReviewWorking => 'Портфелегез анализлана…';

  @override
  String get digestTitle => 'Электрон почта аша атналык җыелма';

  @override
  String get digestHint =>
      'Һәр дүшәмбе: сайланмаларыгыз һәм портфелегез узган атнада ничек үзгәрде, һәм аларның якындагы хисап көннәре.';

  @override
  String get benchmarkTitle => 'S&P 500 белән чагыштыру';

  @override
  String get benchmarkYours => 'Сатып алуларыгыз';

  @override
  String get benchmarkIndex => 'Шул ук суммалар S&P 500-дә';

  @override
  String benchmarkAhead(String points) {
    return 'Индекстан $points процент пунктка яхшырак';
  }

  @override
  String benchmarkBehind(String points) {
    return 'Индекстан $points процент пунктка калыша';
  }

  @override
  String get benchmarkHint =>
      'Әйтерсең лә һәр сатып алу шул ук көнне S&P 500 индекс фондына салынган. Дивидендларсыз; үткән керем киләчәкне фаразламый.';

  @override
  String get portfolioSell => 'Сату';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbol сату';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Бер акциянең сату бәясе ($currency)';
  }

  @override
  String get portfolioSellDate => 'Сату датасы';

  @override
  String get portfolioSellAll => 'Барысы';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Сездә $quantity бар';
  }

  @override
  String get portfolioSold => 'Сатылды';

  @override
  String get portfolioRealized => 'Реальләшкән';

  @override
  String get portfolioClosed => 'Ябык позицияләр';

  @override
  String get portfolioClosedNote => 'Барлык акцияләр сатылды';

  @override
  String get portfolioTransactions => 'Операцияләр';

  @override
  String get portfolioRealizedByYear => 'Еллар буенча реальләшкән табыш';

  @override
  String get portfolioRealizedHint =>
      'Сатулар башта иң иске сатып алуларыгыз белән чагыштырыла (FIFO) һәм бүгенге алмашу курсы буенча күчерелә. Салым декларациясе өчен брокерыгызның өземтәсен кулланыгыз.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Бу анализдан соң яңа квартал хисабы басылды ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Яңа хисап';

  @override
  String get portfolioImportBrokers =>
      'Revolut, Trading 212 һәм Interactive Brokers экспортлары да сатулар белән бергә таныла; дивидендлар һәм кертемнәр төшереп калдырыла.';

  @override
  String get portfolioImportFile => 'Файл сайлау';

  @override
  String offlineBanner(String time) {
    return 'Тоташу юк – соңгы сакланган мәгълүматлар күрсәтелә ($time).';
  }

  @override
  String get glossMarketCap =>
      'Бөтен компаниянең биржадагы бәясе: акция бәясе × акцияләр саны.';

  @override
  String get glossSharesOutstanding =>
      'Компания ничә акция чыгарган. Саны артса, һәр акциягә кечерәк өлеш туры килә; кире сатып алу аны киметә.';

  @override
  String get glossPeTrailing =>
      'Бәя ÷ соңгы 12 айда бер акциягә туры килгән табыш: хәзерге табышның ничә елы өчен түлисез. Түбәнрәге арзанрак, ләкин тиз үсүче компанияләрнең P/E гадәттә югары.';

  @override
  String get glossPeForward =>
      'P/E кебек, ләкин аналитиклар киләсе 12 айга көткән табыш белән. Үткән P/E-дан түбәнрәк булса, табыш үсәр дип көтелә.';

  @override
  String get glossPb =>
      'Бәя ÷ бер акциягә туры килгән баланс бәясе (активлар минус бурычлар). 1 тирәсе базар компанияне кәгазьдәге милке кадәр бәяли дигәнне аңлата.';

  @override
  String get glossPs =>
      'Базар бәясе ÷ еллык керем. Табышы әле аз яки бөтенләй булмаган компанияләр өчен файдалы; бер тармак эчендә чагыштырыгыз.';

  @override
  String get glossEvToFcf =>
      'Бурыч белән бергә компания бәясе (EV) ÷ инвестицияләрдән соң ул бер елда ясаган акча. Түбәнрәк булса, бәягә күбрәк акча аласыз.';

  @override
  String get glossPeg =>
      'P/E ÷ көтелгән еллык табыш үсеше (%). 1 тирәсе еш кына гадел санала; P/E-ны үсеш яктылыгында күрсәтә.';

  @override
  String get glossEps =>
      'Соңгы 12 айда бер акциягә туры килгән табыш. Еллар буе үсүче EPS — сәламәт компаниянең иң көчле билгеләренең берсе.';

  @override
  String get glossBeta =>
      'Акция базар белән бергә күпме хәрәкәт итә: 1 = базар кебек, 1,5 = якынча 50% зуррак тирбәлешләр, 1-дән түбән = тынычрак.';

  @override
  String get glossRevenueTtm =>
      'Соңгы 12 айдагы гомуми сату, теләсә нинди чыгымнарга кадәр.';

  @override
  String get glossNetIncomeTtm =>
      'Соңгы 12 айда барлык чыгымнар, процентлар һәм салымнардан соң калган табыш.';

  @override
  String get glossGrossMargin =>
      'Продукциянең туры чыгымнарыннан соң калган керем өлеше. Югары маржа еш кына бәя кую көчен күрсәтә.';

  @override
  String get glossOperatingMargin =>
      'Бизнесны алып бару чыгымнарыннан (хезмәт хакы, аренда, маркетинг) соң, процентлар һәм салымнарга кадәр калган керем өлеше.';

  @override
  String get glossNetMargin =>
      'Керемнең соңгы табышка әйләнгән өлеше. 20% һәр 100 сатудан 20 табыш дигәнне аңлата.';

  @override
  String get glossRoe =>
      'Үз капиталы рентабельлеге: еллык табыш ÷ хуҗаларның капиталы. Җитәкчелекнең акционерлар акчасын никадәр яхшы куллануын күрсәтә; якынча 15%-тан югары — көчле.';

  @override
  String get glossRoa =>
      'Активлар рентабельлеге: еллык табыш ÷ компаниянең бөтен милке. Бер тармак эчендә чагыштырыгыз.';

  @override
  String get glossDebtToEquity =>
      'Бурычлар ÷ хуҗаларның капиталы. Югарырак булса, бурычка алынган акча күбрәк: ставкалар күтәрелгәндә яки эшләр әкренәйгәндә риск зуррак.';

  @override
  String get glossCurrentRatio =>
      'Кыска вакытлы активлар ÷ бер ел эчендә түләнергә тиешле бурычлар. 1-дән югары булса, компания якын бурычларын каплый ала.';

  @override
  String get glossRevenueGrowth =>
      'Керем бер ел элеккегә караганда күпме арткан.';

  @override
  String get glossEpsGrowth =>
      'Бер акциягә туры килгән табыш бер ел элеккегә караганда күпме арткан.';

  @override
  String get glossDividendYield =>
      'Еллык дивиденд ÷ акция бәясе: түләгән суммагызның проценты буларак елына ала торган акчалата керемегез.';

  @override
  String get glossDividendPerShare =>
      'Соңгы елда бер акциягә түләнгән дивиденд.';

  @override
  String get glossPayoutRatio =>
      'Табышның дивиденд итеп түләнгән өлеше. 100%-тан югары булса, компания эшләгәненнән күбрәк түли, һәм бу сирәк озакка бара.';

  @override
  String get glossTitle => 'Бу нәрсә аңлата?';

  @override
  String get watchNewsTitle => 'Акцияләрегез турында яңалыклар';

  @override
  String get undo => 'Кире кайтару';

  @override
  String get watchSort => 'Сортлау';

  @override
  String get watchSortOwn => 'Минем тәртибем';

  @override
  String get watchSortGainers => 'Иң күп күтәрелгәннәр башта';

  @override
  String get watchSortLosers => 'Иң күп төшкәннәр башта';

  @override
  String get watchSortName => 'Тикер буенча (A–Z)';

  @override
  String get watchHint =>
      'Тәртипне үзгәртү өчен тотканы тартыгыз, бетерү өчен сулга шудырыгыз. Сызык соңгы 30 көнне күрсәтә.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: анализыгыз әзер.';
  }

  @override
  String alertFromCost(String price) {
    return 'Уртача сатып алу бәягездән ($price):';
  }

  @override
  String get briefTitle => 'Бүген акцияләрегез белән';

  @override
  String get briefButton => 'Бүгенге көнгә йомгак';

  @override
  String get briefHint =>
      'Портфелегез һәм сайланмаларыгыз бүген ничек үзгәрүе һәм соңгы яңалыклар алар турында нәрсә әйтүе турында кыска AI йомгагы. Анализ тотылмый.';

  @override
  String get briefRefresh => 'Яңарту';

  @override
  String get sectionEarnings => 'Квартал нәтиҗәләре';

  @override
  String earningsNext(String date) {
    return 'Киләсе хисап: $date';
  }

  @override
  String get earningsExpected => 'Көтелгән EPS';

  @override
  String get earningsReported => 'Игълан ителгән EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Соңгы $total кварталның $beats очрагында көтелгән EPS дәрәҗәсендә яки югарырак',
      one:
          '1 кварталның $beats очрагында көтелгән EPS дәрәҗәсендә яки югарырак',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol иртәгә квартал нәтиҗәләрен игълан итә';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol бүген квартал нәтиҗәләрен игълан итә';
  }

  @override
  String get earningsRemindersTitle => 'Нәтиҗәләр искәртмәләре';

  @override
  String get earningsRemindersSubtitle =>
      'Сайланмаларыгыздагы яки портфелегездәге акцияләр квартал нәтиҗәләрен игълан итүдән бер көн алдан белдерү';

  @override
  String addAllToFavorites(int count) {
    return 'Барысын да сайланмаларга өстәү ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Скриншоттан импортлау';

  @override
  String get holdingsReading => 'Позицияләр укыла…';

  @override
  String get holdingsReviewTitle => 'Табылган позицияләр';

  @override
  String get holdingsReviewHint =>
      'Өстәгәнче саннарны тикшер. Бәя — бер акция өчен уртача сатып алу бәяң, бүгенге бәя түгел.';

  @override
  String get holdingsNoPrice => 'Рәсемдә уртача сатып алу бәясе юк';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count позиция өстәү',
      one: '1 позиция өстәү',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Бу рәсемдә акция позицияләре табылмады. Брокерыңның позицияләр яки активлар битенең скриншотын карап кара.';

  @override
  String get week52Range => '52 атналык диапазон';

  @override
  String week52BelowHigh(String percent) {
    return '52 атналык максимумнан $percent түбән';
  }

  @override
  String get week52AtHigh => '52 атналык максимумда';

  @override
  String get alertKindTrailing => 'Иң югарыдан төшсә';

  @override
  String get alertTrailingPercent => 'Иң югарыдан төшү (%)';

  @override
  String get alertTrailingHint =>
      'Бәяне өскә таба күзәтә: куйганнан бирле иң югары дәрәҗәсеннән бәя шулкадәр төшсә, хәбәр итә.';

  @override
  String alertDescTrailing(String percent) {
    return 'Иң югарыдан $percent төшү';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'хәзергә кадәр иң югары: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol иң югары дәрәҗәсеннән $percent төште';
  }

  @override
  String get sectionInsiders => 'Инсайдерлар килешүләре';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сатып алу',
      one: '1 сатып алу',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сату',
      one: '1 сату',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Саф: $shares акция';
  }

  @override
  String get insiderBuy => 'Сатып алды';

  @override
  String get insiderSell => 'Сатты';

  @override
  String get insiderHint =>
      'Соңгы 90 көндә җитәкчеләр һәм директорлар тарафыннан ачык базарда сатып алу һәм сату (SEC Form 4). Опционнарны куллану һәм бүләк акцияләре исәпләнми.';

  @override
  String get insiderNone =>
      'Соңгы 90 көндә ачык базарда инсайдерларның сатып алулары яки сатулары булмады.';

  @override
  String get analystTrend => 'Фикерләр айдан-айга ничек үзгәрде';

  @override
  String get watchListAll => 'Барысы';

  @override
  String get watchListNew => 'Яңа исемлек';

  @override
  String get watchListName => 'Исемлек исеме';

  @override
  String get watchListRename => 'Исемлекнең исемен үзгәртү';

  @override
  String get watchListDelete => 'Исемлекне бетерү';

  @override
  String get watchListAddTo => 'Исемлеккә өстәү';

  @override
  String get watchListEmpty =>
      'Бу исемлектә әлегә акцияләр юк. Өстәү өчен акция янындагы исемлек төймәсенә басыгыз.';

  @override
  String get portfolioAskTitle => 'Портфелегез турында сораулар';

  @override
  String get rangeYtd => 'Быел';

  @override
  String get backupTitle => 'Резерв күчермә';

  @override
  String get backupSave => 'Резерв күчермәне саклау';

  @override
  String get backupSaveHint =>
      'Сайланмаларыгыз, исемлекләрегез, портфелегез, искәртүләрегез һәм язмаларыгыз бер файлда.';

  @override
  String get backupRestore => 'Резерв күчермәдән торгызу';

  @override
  String get backupRestoreHint =>
      'Файлдагыны өсти; хәзерге мәгълүматларыгыздан бернәрсә дә бетерелми.';

  @override
  String get backupRestored => 'Резерв күчермә торгызылды.';

  @override
  String get backupInvalid => 'Бу файл WhatStock резерв күчермәсе түгел.';

  @override
  String get allocationPositions => 'Акцияләр';

  @override
  String get allocationSectors => 'Секторлар';

  @override
  String get allocationCurrencies => 'Валюталар';

  @override
  String get compareReturn1y => '1 еллык табышлылык';

  @override
  String get compareFromHigh => '52 атналык максимумнан ераклык';

  @override
  String get briefAutoTitle => 'Һәр иртә көндәлек йомгак';

  @override
  String get briefAutoSubtitle =>
      '«Бүген акцияләрегез белән» кушымта эшләгәндә сәгать 7:00 дән соң автоматик рәвештә әзерләнә; компьютерларда бу хакта хәбәрнамә күренә. Көндәлек сораулар чигегездән тотыла, анализ түгел.';

  @override
  String get targetsButton => 'Максатлы бүленеш';

  @override
  String get targetsTitle => 'Максатлы бүленеш';

  @override
  String get targetsHint =>
      'Һәр акция портфельнең күпме өлешен алырга тиешлеген билгеләгез. Максат булмаса, кырны буш калдырыгыз. Аннары кушымта анда ирешү өчен нәрсә сатып алырга яки сатарга кирәклеген күрсәтә.';

  @override
  String targetsSum(String percent) {
    return 'Барлыгы: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Сатып алу ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Сату ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Максатка туры килә';
}
