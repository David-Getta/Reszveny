// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Macedonian (`mk`).
class AppLocalizationsMk extends AppLocalizations {
  AppLocalizationsMk([String locale = 'mk']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'Фотографирајте акција и дознајте сѐ за неа.';

  @override
  String get homeHint =>
      'Сертификат за акции, екран од брокерска апликација, весник или лого на компанија – сѐ по што може да се препознае акцијата.';

  @override
  String get takePhoto => 'Направи фотографија';

  @override
  String get chooseFromGallery => 'Избери од галеријата';

  @override
  String get chooseImage => 'Избери слика';

  @override
  String get enterTickerManually => 'Внеси тикер рачно';

  @override
  String get tickerInputLabel => 'Тикер-симбол';

  @override
  String get tickerInputHint => 'на пр. AAPL';

  @override
  String get lookUp => 'Пребарај';

  @override
  String demoModeBanner(String symbols) {
    return 'Демо-режим – не е поставен клуч за пазарни податоци. Примерни податоци се достапни за: $symbols.';
  }

  @override
  String get recognizing => 'Се анализира сликата…';

  @override
  String get loadingData => 'Се вчитуваат податоците…';

  @override
  String get noCandidatesTitle => 'Не е препознаена акција';

  @override
  String get noCandidatesBody =>
      'Не успеавме да препознаеме акција на оваа слика. Обидете се со поостра фотографија или внесете го тикерот рачно.';

  @override
  String get whatWeSaw => 'Што видовме';

  @override
  String get chooseCandidateTitle => 'На која акција мислевте?';

  @override
  String confidencePercent(int percent) {
    return '$percent% сигурност';
  }

  @override
  String get settings => 'Поставки';

  @override
  String get language => 'Јазик';

  @override
  String get systemLanguage => 'Според системот';

  @override
  String get about => 'За апликацијата';

  @override
  String get disclaimer =>
      'Оваа апликација дава само информации и не претставува инвестициски совет. Податоците може да доцнат или да бидат неточни.';

  @override
  String dataSource(String source) {
    return 'Извор на податоци: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Препознавање: $source';
  }

  @override
  String get retry => 'Обиди се повторно';

  @override
  String get cancel => 'Откажи';

  @override
  String get ok => 'Во ред';

  @override
  String get close => 'Затвори';

  @override
  String get errorGeneric => 'Нешто тргна наопаку.';

  @override
  String get errorSectionUnavailable => 'Овој дел не можеше да се вчита.';

  @override
  String get notAvailable => 'н/д';

  @override
  String get sectionIdentity => 'Идентификација';

  @override
  String get sectionPrice => 'Цена';

  @override
  String get sectionValuation => 'Вреднување';

  @override
  String get sectionFinancials => 'Финансии';

  @override
  String get sectionDividend => 'Дивиденда';

  @override
  String get sectionProfile => 'Профил на компанијата';

  @override
  String get sectionAnalysts => 'Оценки од аналитичари';

  @override
  String get sectionNews => 'Вести';

  @override
  String get sectionRecognition => 'Детали за препознавањето';

  @override
  String get labelSymbol => 'Тикер';

  @override
  String get labelExchange => 'Берза';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Валута';

  @override
  String get labelCountry => 'Земја';

  @override
  String get labelIndustry => 'Индустрија';

  @override
  String get labelSector => 'Сектор';

  @override
  String get labelWebsite => 'Веб-страница';

  @override
  String get labelIpoDate => 'Датум на IPO';

  @override
  String get labelMarketCap => 'Пазарна капитализација';

  @override
  String get labelSharesOutstanding => 'Акции во оптек';

  @override
  String get labelEmployees => 'Вработени';

  @override
  String get labelCeo => 'Извршен директор';

  @override
  String get labelHeadquarters => 'Седиште';

  @override
  String get labelDescription => 'Опис';

  @override
  String get labelLastPrice => 'Последна цена';

  @override
  String get labelChange => 'Промена';

  @override
  String get labelOpen => 'Отворање';

  @override
  String get labelDayHigh => 'Дневен максимум';

  @override
  String get labelDayLow => 'Дневен минимум';

  @override
  String get labelPreviousClose => 'Претходно затворање';

  @override
  String get labelWeek52High => '52-неделен максимум';

  @override
  String get labelWeek52Low => '52-неделен минимум';

  @override
  String get labelAverageVolume10d => 'Просечен обем (10 дена)';

  @override
  String updatedAt(String time) {
    return 'Ажурирано $time';
  }

  @override
  String get labelPeTrailing => 'P/E (тековен)';

  @override
  String get labelPeForward => 'P/E (очекуван)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / слободен паричен тек';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Бета';

  @override
  String get labelRevenueTtm => 'Приходи (TTM)';

  @override
  String get labelNetIncomeTtm => 'Нето добивка (TTM)';

  @override
  String get labelGrossMargin => 'Бруто маржа';

  @override
  String get labelOperatingMargin => 'Оперативна маржа';

  @override
  String get labelNetMargin => 'Нето маржа';

  @override
  String get labelRoe => 'Поврат на капиталот';

  @override
  String get labelRoa => 'Поврат на средствата';

  @override
  String get labelDebtToEquity => 'Долг / капитал';

  @override
  String get labelCurrentRatio => 'Коефициент на тековна ликвидност';

  @override
  String get labelRevenueGrowth => 'Раст на приходите (г/г)';

  @override
  String get labelEpsGrowth => 'Раст на EPS (г/г)';

  @override
  String get labelDividendYield => 'Дивиденден принос';

  @override
  String get labelDividendPerShare => 'Дивиденда по акција';

  @override
  String get labelPayoutRatio => 'Стапка на исплата';

  @override
  String get labelConsensus => 'Консензус';

  @override
  String get ratingStrongBuy => 'Силно купи';

  @override
  String get ratingBuy => 'Купи';

  @override
  String get ratingHold => 'Задржи';

  @override
  String get ratingSell => 'Продај';

  @override
  String get ratingStrongSell => 'Силно продај';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count аналитичари',
      one: '$count аналитичар',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Период: $period';
  }

  @override
  String get noNews => 'Нема скорешни вести.';

  @override
  String get openArticle => 'Отвори ја статијата';

  @override
  String get openLinkFailed => 'Врската не можеше да се отвори.';

  @override
  String get recognitionSummary => 'Резиме';

  @override
  String get recognitionEvidence => 'Зошто мислиме така';

  @override
  String get recognitionRawText => 'Текст прочитан од сликата';

  @override
  String get errMissingAnthropicKey =>
      'Препознавањето слики не е поставено (нема ANTHROPIC_API_KEY). Внесете го тикерот рачно.';

  @override
  String get errRecognitionUnreachable =>
      'Не може да се воспостави врска со услугата за препознавање. Проверете ја интернет-врската.';

  @override
  String errRecognitionHttp(String status) {
    return 'Услугата за препознавање врати грешка (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Услугата за препознавање не можеше да ја обработи оваа слика.';

  @override
  String get errRecognitionTruncated =>
      'Одговорот од препознавањето беше прекинат. Обидете се повторно.';

  @override
  String get errRecognitionBadResponse =>
      'Неочекуван одговор од услугата за препознавање.';

  @override
  String get errRecognitionEmpty =>
      'Услугата за препознавање врати празен одговор.';

  @override
  String get errMissingFinnhubKey =>
      'Пазарните податоци не се поставени (нема FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Не може да се воспостави врска со услугата за пазарни податоци. Проверете ја интернет-врската.';

  @override
  String get errMarketRateLimited =>
      'Премногу барања до услугата за пазарни податоци. Почекајте една минута.';

  @override
  String errMarketHttp(String status) {
    return 'Услугата за пазарни податоци врати грешка (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Неочекуван одговор од услугата за пазарни податоци.';

  @override
  String errNoQuote(String symbol) {
    return 'Не се најдени ценовни податоци за $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Не е најден профил на компанијата за $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Демо-режимот поддржува само $symbols. Додајте FINNHUB_API_KEY за податоци во живо.';
  }

  @override
  String errUnknown(String detail) {
    return 'Нешто тргна наопаку: $detail';
  }

  @override
  String get newSearch => 'Ново пребарување';

  @override
  String get recentSearches => 'Неодамнешни';

  @override
  String get noRecentSearches => 'Сѐ уште нема неодамнешни пребарувања.';

  @override
  String get clearRecent => 'Исчисти ги неодамнешните';

  @override
  String get greeting => 'Која акција да ја погледнеме?';

  @override
  String get searchHint => 'Тикер или име на компанија';

  @override
  String get attachImage => 'Прикачи слика';

  @override
  String get searchResultsTitle => 'Резултати од пребарувањето';

  @override
  String errNoResults(String query) {
    return 'Не се најдени акции за „$query“.';
  }

  @override
  String get quickBarHint => 'Внесете тикер или име на компанија…';

  @override
  String get openFullWindow => 'Отвори прозорец';

  @override
  String hotkeyHint(String shortcut) {
    return 'Притиснете $shortcut од каде било за да го повикате WhatStock.';
  }

  @override
  String get trayOpen => 'Отвори WhatStock';

  @override
  String get trayQuickSearch => 'Брзо пребарување';

  @override
  String get trayQuit => 'Излези';

  @override
  String get appearance => 'Изглед';

  @override
  String get themeSystem => 'Системска';

  @override
  String get themeDark => 'Темна';

  @override
  String get themeLight => 'Светла';

  @override
  String get back => 'Назад';

  @override
  String get aiSectionTitle => 'AI-анализа';

  @override
  String get aiIntro =>
      'Детален преглед напишан од AI: резиме на неодамнешните вести, бизнисот, силните страни, ризиците и скриените фактори, вреднувањето, изгледите за цената со сценарија од психолошки, социолошки, технички и макроекономски агол, како и на што треба да се внимава.';

  @override
  String get aiGenerate => 'Генерирај анализа';

  @override
  String get aiRegenerate => 'Генерирај повторно';

  @override
  String get aiGenerating =>
      'Ја подготвуваме анализата… ова може да трае минута-две.';

  @override
  String get aiSources => 'Извори';

  @override
  String aiGeneratedAt(String time) {
    return 'Генерирано $time';
  }

  @override
  String get aiDisclaimer =>
      'Анализа генерирана од AI врз основа на јавни податоци и неодамнешни вести. Може да содржи грешки или да биде застарена и не претставува инвестициски совет.';

  @override
  String get errAiNotConfigured =>
      'AI-анализата не е поставена (нема ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Не може да се воспостави врска со AI-услугата. Проверете ја интернет-врската.';

  @override
  String errAiHttp(String status) {
    return 'AI-услугата врати грешка (HTTP $status).';
  }

  @override
  String get errAiRefused => 'AI-услугата одби да ја анализира оваа акција.';

  @override
  String get errAiBadResponse => 'Неочекуван одговор од AI-услугата.';

  @override
  String get sectionChart => 'Графикон на цената';

  @override
  String get rangeOneWeek => '1Н';

  @override
  String get rangeOneMonth => '1М';

  @override
  String get rangeThreeMonths => '3М';

  @override
  String get rangeOneYear => '1Г';

  @override
  String get rangeFiveYears => '5Г';

  @override
  String get chartUnavailable =>
      'Историјата на цените не е достапна од тековниот извор на податоци.';

  @override
  String get sectionStatements => 'Финансиски извештаи (годишни)';

  @override
  String get labelFiscalYear => 'Фискална година';

  @override
  String get labelRevenue => 'Приходи';

  @override
  String get labelNetIncome => 'Нето добивка';

  @override
  String get labelTotalAssets => 'Вкупни средства';

  @override
  String get labelTotalLiabilities => 'Вкупни обврски';

  @override
  String get labelEquity => 'Капитал на акционерите';

  @override
  String get labelOperatingCashFlow => 'Оперативен паричен тек';

  @override
  String get statementsUnavailable =>
      'За оваа акција не се достапни објавени финансиски извештаи.';

  @override
  String get launchAtLogin => 'Стартувај при најавување';

  @override
  String get hotkeyLabel => 'Глобална кратенка';

  @override
  String get hotkeyRecordHint =>
      'Кликнете тука, а потоа притиснете ја новата комбинација на копчиња';

  @override
  String get hotkeyReset => 'Врати на стандардно';

  @override
  String get pasteImage => 'Залепи слика од привремената меморија';

  @override
  String get errClipboardNoImage => 'Во привремената меморија нема слика.';

  @override
  String get favorites => 'Омилени';

  @override
  String get addToFavorites => 'Додај во омилени';

  @override
  String get removeFromFavorites => 'Отстрани од омилени';

  @override
  String get noFavorites =>
      'Сѐ уште нема омилени. Допрете ја ѕвездата кај акцијата за да ја додадете.';

  @override
  String get displayCurrency => 'Валута за прикажување';

  @override
  String get displayCurrencyNone => 'Само сопствената валута на акцијата';

  @override
  String labelConverted(String currency) {
    return '≈ во $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Курс: 1 $from = $rate $to (ЕЦБ, $date)';
  }

  @override
  String get updates => 'Ажурирања';

  @override
  String currentVersion(String version) {
    return 'Верзија $version';
  }

  @override
  String get autoUpdate => 'Автоматски инсталирај ажурирања';

  @override
  String get checkForUpdates => 'Провери за ажурирања';

  @override
  String get updateChecking => 'Се проверува за ажурирања…';

  @override
  String get updateUpToDate => 'Ја имате најновата верзија.';

  @override
  String updateAvailable(String version) {
    return 'Достапна е верзијата $version.';
  }

  @override
  String get updateDownloading => 'Ажурирањето се презема во заднина…';

  @override
  String get updateDownloaded =>
      'Ажурирањето е подготвено. Рестартирајте за да го инсталирате.';

  @override
  String get updateNow => 'Ажурирај';

  @override
  String get restartNow => 'Рестартирај';

  @override
  String get updatesViaStore =>
      'Ажурирањата пристигнуваат автоматски преку продавницата за апликации.';

  @override
  String get updateCheckFailed => 'Не можеше да се провери за ажурирања.';

  @override
  String get subscription => 'Претплата';

  @override
  String get planTrial => 'Пробен';

  @override
  String get planNormal => 'Нормален';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Нема активен план';

  @override
  String planAnalysesPerMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count анализи месечно',
      one: '$count анализа месечно',
    );
    return '$_temp0';
  }

  @override
  String planTrialDescription(int days, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$days-дневен бесплатен пробен период со $count анализи',
      one: '$days-дневен бесплатен пробен период со $count анализа',
    );
    return '$_temp0';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Преостануваат уште $days дена од пробниот период',
      one: 'Преостанува уште $days ден од пробниот период',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Вашиот бесплатен пробен период истече. Изберете план за да продолжите со анализите.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Преостанати анализи за овој период: $remaining од $total';
  }

  @override
  String extraCredits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дополнителни анализи',
      one: '$count дополнителна анализа',
    );
    return '$_temp0';
  }

  @override
  String renewsOn(String date) {
    return 'Се обновува на $date';
  }

  @override
  String get choosePlan => 'Изберете план';

  @override
  String get currentPlan => 'Тековен план';

  @override
  String get subscribe => 'Претплати се';

  @override
  String get perMonth => '/ месец';

  @override
  String get extraPacksTitle => 'Ви треба повеќе? Купете дополнителни анализи';

  @override
  String get extraPacksHint =>
      'Дополнителните анализи никогаш не истекуваат и се користат откако ќе се потроши месечната квота.';

  @override
  String get buy => 'Купи';

  @override
  String get restorePurchases => 'Врати ги купувањата';

  @override
  String get manageSubscription => 'Управувај со претплатата';

  @override
  String get purchaseSuccess => 'Ви благодариме! Вашето купување е активно.';

  @override
  String get purchasePending => 'Купувањето е во тек…';

  @override
  String get purchaseFailed => 'Купувањето не можеше да се заврши.';

  @override
  String get purchaseCanceled => 'Купувањето е откажано.';

  @override
  String get billingUnavailable =>
      'Купувањата сѐ уште не се достапни на оваа платформа. Претплатете се на телефонот или на Mac; вашиот план ќе работи на секој уред.';

  @override
  String get errQuotaExceeded =>
      'Немате преостанати анализи за овој период. Надградете го планот или купете дополнителни анализи.';

  @override
  String get errTrialExpired =>
      'Вашиот бесплатен пробен период истече. Изберете план за да продолжите.';

  @override
  String get errNoPlan => 'За AI-анализа е потребен активен план.';

  @override
  String get viewPlans => 'Прикажи ги плановите';

  @override
  String get usageTitle => 'Користење';

  @override
  String get demoPurchaseNote =>
      'Демо-наплата: купувањата на оваа платформа се симулирани.';

  @override
  String get mostPopular => 'Најпопуларен';

  @override
  String get bestValue => 'Најисплатлив';

  @override
  String get planFeaturesCommon =>
      'Препознавање фотографии, податоци во живо, графикони, омилени и сите 120 јазици се вклучени во секој план. Квотата се однесува на AI-анализите.';

  @override
  String get searchLanguages => 'Пребарај јазици…';

  @override
  String get noLanguageMatch => 'Нема соодветен јазик.';

  @override
  String get aiSettings => 'AI-анализа';

  @override
  String get aiLength => 'Должина';

  @override
  String get aiDepthBrief => 'Кратко';

  @override
  String get aiDepthStandard => 'Стандардно';

  @override
  String get aiDepthDeep => 'Детално';

  @override
  String get aiDepthBriefDesc => 'Најважното, брзо.';

  @override
  String get aiDepthStandardDesc => 'Целосен извештај со сите делови.';

  @override
  String get aiDepthDeepDesc =>
      'Повеќе веб-пребарувања, споредба со конкурентите и подлабоки детали.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Околу $min–$max зборови';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'троши $count анализи',
      one: 'троши $count анализа',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Ниво на читателот';

  @override
  String get aiReaderBeginner => 'Почетник';

  @override
  String get aiReaderExperienced => 'Искусен';

  @override
  String get aiReaderBeginnerDesc =>
      'Едноставен јазик; секој стручен термин е објаснет.';

  @override
  String get aiReaderExperiencedDesc =>
      'Погуст текст со стандардна финансиска терминологија.';

  @override
  String get aiCounterArgument => 'Најсилен контрааргумент';

  @override
  String get aiCounterArgumentDesc =>
      'Резимето секогаш завршува со најсилниот аргумент против сопствениот заклучок.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Со вашиот план – до $count веб-пребарувања по анализа',
      one: 'Со вашиот план – до $count веб-пребарување по анализа',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Стандардна должина според планот: Нормален $normal, Pro $pro, Max $max, Ultra $ultra. „Кратко“ користи 2 помалку, „Детално“ 2 повеќе.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'до $count веб-пребарувања',
      one: 'до $count веб-пребарување',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count веб-пребарувања по анализа',
      one: '$count веб-пребарување по анализа',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Потребни анализи за оваа должина: $needed, а преостануваат: $left. Изберете пократка должина во Поставки или набавете повеќе анализи.';
  }

  @override
  String get outlookMarketMood => 'Расположение на пазарот';

  @override
  String get moodVeryPessimistic => 'Многу песимистичко';

  @override
  String get moodPessimistic => 'Песимистичко';

  @override
  String get moodNeutral => 'Неутрално';

  @override
  String get moodOptimistic => 'Оптимистичко';

  @override
  String get moodVeryOptimistic => 'Многу оптимистичко';

  @override
  String get scenarioBull => 'Оптимистичко сценарио';

  @override
  String get scenarioBase => 'Основно сценарио';

  @override
  String get scenarioBear => 'Песимистичко сценарио';

  @override
  String outlookCurrentPrice(String price) {
    return 'Тековна цена: $price';
  }

  @override
  String get outlookKeyLevels => 'Клучни нивоа';

  @override
  String get keyLevelSupport => 'Поддршка';

  @override
  String get keyLevelResistance => 'Отпор';

  @override
  String get keyLevelAnchor => 'Ценовно сидро';

  @override
  String get upcomingEvents => 'Претстојни настани';

  @override
  String get outlookChartNote =>
      'Ориентациони распони; веројатностите се груби проценки, а не предвидувања.';

  @override
  String get accountTitle => 'Сметка';

  @override
  String get signIn => 'Најави се';

  @override
  String get signOut => 'Одјави се';

  @override
  String get notSignedIn => 'Не сте најавени';

  @override
  String get accountBenefit =>
      'Најавете се за вашата претплата да работи на сите ваши уреди.';

  @override
  String get accountSyncedNote =>
      'Вашата претплата и преостанатите анализи се исти на секој уред.';

  @override
  String get signInTitle => 'Најава во WhatStock';

  @override
  String get emailLabel => 'Адреса на е-пошта';

  @override
  String get continueWithEmail => 'Продолжи со е-пошта';

  @override
  String codeSentTo(String email) {
    return 'Испративме 6-цифрен код на $email. Важи 10 минути.';
  }

  @override
  String get codeLabel => 'Код за најава';

  @override
  String get resendCode => 'Испрати нов код';

  @override
  String get useDifferentEmail => 'Користи друга е-пошта';

  @override
  String get errInvalidCode => 'Кодот е погрешен или истечен.';

  @override
  String get errInvalidEmail => 'Внесете важечка адреса на е-пошта.';

  @override
  String get errSignInFailed =>
      'Најавата не успеа. Проверете ја врската и обидете се повторно.';

  @override
  String get checkoutWaiting =>
      'Завршете го плаќањето во прелистувачот. Апликацијата ќе се ажурира автоматски кога ќе заврши.';

  @override
  String get paymentViaStripe =>
      'Безбедно плаќање во прелистувачот преку Stripe. Откажете во секое време.';

  @override
  String get paymentViaStore =>
      'Наплатата е преку вашата сметка на App Store или Google Play. Откажете во секое време во поставките на продавницата.';

  @override
  String get keySpace => 'Празно место';

  @override
  String get doubleOptionTitle => 'Двоен притисок на Option';

  @override
  String get doubleOptionSubtitle =>
      'Брзиот двоен притисок на копчето Option исто така го повикува WhatStock.';

  @override
  String get doubleOptionPermission =>
      'За да работи и во други апликации, дозволете му на WhatStock пристап во „Системски поставки“ → „Приватност и безбедност“ → „Следење на внесот“, а потоа повторно отворете ја апликацијата.';

  @override
  String get openSystemSettings => 'Отвори ги Системските поставки';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Притиснете $shortcut или двапати притиснете Option од каде било за да го повикате WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Најверојатно';

  @override
  String get longTermToday => 'Денес';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years години',
      one: '$years година',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range годишно';
  }

  @override
  String longTermLikely(String price) {
    return 'најверојатно $price';
  }

  @override
  String get confidenceLow => 'Ниска сигурност';

  @override
  String get confidenceMedium => 'Средна сигурност';

  @override
  String get confidenceHigh => 'Висока сигурност';

  @override
  String get longTermNote =>
      'Долгорочните распони се засноваат на наведените претпоставки и се шират со текот на времето. Цените се без дивиденди. Груби проценки, а не предвидувања.';

  @override
  String get portfolio => 'Портфолио';

  @override
  String get portfolioEmpty =>
      'Сѐ уште е празно. Отворете акција и допрете „Додај во портфолио“ за да го следите она што го поседувате.';

  @override
  String get portfolioLocalNote =>
      'Се чува само на овој уред. Збировите се пресметуваат по референтните курсеви на ЕЦБ; цените може да доцнат.';

  @override
  String get addToPortfolio => 'Додај во портфолио';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Додај $symbol';
  }

  @override
  String get portfolioQuantity => 'Број на акции';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Цена по акција ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Датум на купување';

  @override
  String get portfolioAdd => 'Додај';

  @override
  String get portfolioInvalidNumber => 'Внесете број поголем од нула.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol е додадена во портфолиото.';
  }

  @override
  String get portfolioTotalValue => 'Вкупна вредност';

  @override
  String get portfolioToday => 'Денес';

  @override
  String get portfolioGainLoss => 'Добивка/загуба';

  @override
  String get portfolioInvested => 'Вложено';

  @override
  String get portfolioAllocation => 'Распределба';

  @override
  String get portfolioPositions => 'Позиции';

  @override
  String portfolioAvgCost(String price) {
    return 'просечна цена $price';
  }

  @override
  String get portfolioYourPosition => 'Вашата позиција';

  @override
  String get portfolioPurchases => 'Купувања';

  @override
  String get portfolioRemove => 'Отстрани';

  @override
  String get portfolioExcluded =>
      'Позициите без цена или девизен курс не се вклучени во збировите.';

  @override
  String get priceAlerts => 'Ценовни известувања';

  @override
  String get setPriceAlert => 'Постави ценовно известување';

  @override
  String alertDialogTitle(String symbol) {
    return 'Ценовно известување · $symbol';
  }

  @override
  String get alertKindAbove => 'Порасне над';

  @override
  String get alertKindBelow => 'Падне под';

  @override
  String get alertKindMove => 'Силно се движи во текот на денот';

  @override
  String alertTargetPrice(String currency) {
    return 'Цена ($currency)';
  }

  @override
  String get alertMovePercent => 'Дневна промена (%)';

  @override
  String get alertAlreadyMet => 'Цената веќе го помина ова ниво.';

  @override
  String get alertSave => 'Постави известување';

  @override
  String alertCreated(String symbol) {
    return 'Известувањето за $symbol е поставено.';
  }

  @override
  String get alertsEmpty =>
      'Сѐ уште нема ценовни известувања. Отворете акција и допрете го ѕвончето за да поставите.';

  @override
  String get alertsNote =>
      'Известувањата се проверуваат на секои 5 минути додека WhatStock работи. На компјутер продолжува да работи во лентата со менија или во системската лента; на телефон, засега известувањата пристигнуваат само додека апликацијата е отворена.';

  @override
  String alertDescAbove(String price) {
    return 'Над $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Под $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Дневна промена ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Активирано на $date при $price';
  }

  @override
  String get alertRearm => 'Повторно вклучи';

  @override
  String get alertDelete => 'Избриши';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol порасна над $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol падна под $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol се помести за $percent денес';
  }

  @override
  String alertHitBody(String price) {
    return 'Тековна цена: $price';
  }

  @override
  String get alertOpen => 'Отвори';

  @override
  String get keepInTrayTitle => 'Продолжи да работи кога прозорецот е затворен';

  @override
  String get keepInTraySubtitle =>
      'WhatStock останува во лентата со менија или во системската лента, па кратенката и ценовните известувања продолжуваат да работат.';

  @override
  String get termsOfUse => 'Услови за користење';

  @override
  String get privacyPolicy => 'Политика за приватност';

  @override
  String get subscriptionLegal =>
      'Претплатата автоматски се обновува секој месец додека не ја откажете. Со претплатата ги прифаќате Условите за користење и Политиката за приватност.';

  @override
  String get deleteAccount => 'Избриши сметка';

  @override
  String get deleteAccountTitle => 'Да се избрише вашата сметка?';

  @override
  String get deleteAccountBody =>
      'Вашата сметка и сѐ што е зачувано на нашиот сервер (е-пошта, квота, користење) ќе бидат трајно избришани, а неискористените анализи се губат. Претплата платена во прелистувачот се откажува веднаш; претплата преку App Store или Google Play мора да ја откажете во поставките на продавницата.';

  @override
  String get deleteLocalData =>
      'Избриши ги и податоците на овој уред (портфолио, известувања, омилени, историја, зачувани анализи)';

  @override
  String get deleteAccountConfirm => 'Избриши трајно';

  @override
  String get accountDeleted => 'Вашата сметка е избришана.';

  @override
  String get errDeleteAccount =>
      'Сметката не можеше да се избрише. Проверете ја врската и обидете се повторно.';

  @override
  String get aiTrialBriefNote =>
      'Пробните анализи се кратки и се изработуваат со побрз AI-модел. Со план го добивате нашиот најспособен AI, повеќе веб-пребарувања и стандардна и детална должина.';

  @override
  String get billingMonthly => 'Месечно';

  @override
  String get billingYearly => 'Годишно';

  @override
  String get yearlyDiscount => '2 месеци бесплатно';

  @override
  String get perYear => '/ година';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price месечно';
  }

  @override
  String get subscriptionLegalYearly =>
      'Годишната претплата автоматски се обновува секоја година додека не ја откажете. Со претплатата ги прифаќате Условите за користење и Политиката за приватност.';

  @override
  String get myAnalyses => 'Мои анализи';

  @override
  String get navAlerts => 'Известувања';

  @override
  String get inviteTitle => 'Затворен преглед';

  @override
  String get inviteBody =>
      'WhatStock засега е достапен само со покана. Внесете го кодот за покана што го добивте.';

  @override
  String get inviteCodeLabel => 'Код за покана';

  @override
  String get inviteContinue => 'Продолжи';

  @override
  String get inviteInvalid => 'Овој код за покана не е важечки.';

  @override
  String get inviteExpired =>
      'Оваа покана истече. Побарајте нов код од лицето што ве покани.';

  @override
  String get inviteDeviceLimit =>
      'Овој код за покана веќе се користи на максималниот број уреди.';

  @override
  String get previewConfidential => 'Доверлив преглед';

  @override
  String get errPreviewDailyLimit =>
      'Дневниот лимит на анализи за овој преглед е достигнат. Обидете се повторно утре.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'пред $count часа',
      one: 'пред $count час',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'пред $count дена',
      one: 'пред $count ден',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Да се ажурира анализава?';

  @override
  String staleBody(String age) {
    return 'Направена е $age. Цените, вестите и резултатите можеби се промениле оттогаш.';
  }

  @override
  String get staleKeep => 'Прикажи ја претходната';

  @override
  String get staleRefresh => 'Направи нова';

  @override
  String seeAll(int count) {
    return 'Види ги сите ($count)';
  }

  @override
  String get searchAnalyses => 'Пребарај ги своите анализи';

  @override
  String get deleteAnalysis => 'Избриши';

  @override
  String analysisDeleted(String symbol) {
    return 'Анализата за $symbol е избришана';
  }

  @override
  String get keyLevelAlertHint =>
      'Допрете ниво за да добиете известување кога цената ќе го достигне.';

  @override
  String get shareAnalysisTitle => 'Сподели ја анализата';

  @override
  String get shareAsImage => 'Сподели како слика';

  @override
  String get shareAsText => 'Сподели како текст';

  @override
  String get shareCardFooter => 'Направено со WhatStock';

  @override
  String get shareCardDisclaimer => 'AI-анализа · не е инвестициски совет';

  @override
  String get referralTitle => 'Покани пријатели';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дополнителни анализи',
      one: '$count дополнителна анализа',
    );
    return 'Сподели го својот код. Твојот пријател веднаш добива $_temp0, а ти го добиваш истото по неговата прва анализа.';
  }

  @override
  String get referralYourCode => 'Твојот код';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Поканети: $invited · Наградени: $rewarded';
  }

  @override
  String get referralHaveCode => 'Имаш код од пријател?';

  @override
  String get referralRedeem => 'Искористи';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Додадени се $count дополнителни анализи. Добредојде!',
      one: 'Додадена е $count дополнителна анализа. Добредојде!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Овој код не постои. Провери го и обиди се повторно.';

  @override
  String get referralErrOwn => 'Не можеш да го искористиш сопствениот код.';

  @override
  String get referralErrAlready => 'Веќе искористи код од пријател.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дополнителни анализи',
      one: '$count дополнителна анализа',
    );
    return 'Ги анализирам акциите со WhatStock: фотографирај акција и AI ќе ти ја објасни. Со мојот код $code добиваш $_temp0.';
  }

  @override
  String get referralCopied => 'Кодот е копиран';

  @override
  String get onboardTitle1 => 'Фотографирајте акција';

  @override
  String get onboardBody1 =>
      'Доволен е екран од брокерска апликација, весник или лого на компанија: WhatStock ја препознава акцијата и ви ги покажува цената, графиконот и клучните бројки.';

  @override
  String get onboardTitle2 => 'Разберете ја за неколку минути';

  @override
  String get onboardBody2 =>
      'AI-анализата објаснува што ја движи акцијата, кои се ризиците, какво е вреднувањето и дава три сценарија каде може да оди цената – со извори и на вашиот јазик.';

  @override
  String get onboardTitle3 => 'Бидете секогаш во тек';

  @override
  String get onboardBody3 =>
      'Омилените, вашето портфолио и ценовните известувања ве држат во тек. Вашите анализи остануваат на вашиот уред, подготвени повторно да ги отворите.';

  @override
  String get onboardNext => 'Следно';

  @override
  String get onboardStart => 'Започнете';

  @override
  String get onboardSkip => 'Прескокни';

  @override
  String changesTitle(String date) {
    return 'Од претходната анализа ($date)';
  }

  @override
  String get changesPrice => 'Цена';

  @override
  String get changesNoMajor => 'Изгледите не се променија значително.';

  @override
  String get changesPreviousSummary => 'Претходно резиме';

  @override
  String get telemetryTitle => 'Помогни да го подобриме WhatStock';

  @override
  String get telemetryBody =>
      'Споделувај анонимни статистики за користење и извештаи за падови: кои функции се користат и што тргнало наопаку. Никогаш твоите акции, анализи или лични податоци. Ова можеш да го промениш во секое време во Поставки.';

  @override
  String get telemetryAllow => 'Дозволи';

  @override
  String get telemetryDecline => 'Не, благодарам';

  @override
  String get telemetrySetting => 'Анонимни статистики и извештаи за падови';

  @override
  String get telemetrySettingHint =>
      'Колку често се користат функциите и извештаи за грешки, без лични податоци или содржината на твоите пребарувања и анализи.';

  @override
  String get askButton => 'Прашајте за анализава';

  @override
  String askTitle(String symbol) {
    return 'Прашања за $symbol';
  }

  @override
  String get askIntro =>
      'Прашајте што било за анализата: што значи некој ризик, што би ги променило изгледите, како е пресметан некој број. Одговорите се засноваат на оваа анализа и не претставуваат инвестициски совет.';

  @override
  String get askHint => 'Поставете прашање…';

  @override
  String get askSend => 'Испрати';

  @override
  String get askThinking => 'Размислувам…';

  @override
  String get askSuggest1 => 'Кој е најголемиот ризик?';

  @override
  String get askSuggest2 => 'Што би ги променило изгледите?';

  @override
  String get askSuggest3 => 'Објасни го ова едноставно';

  @override
  String get askMaxReached =>
      'Тоа беше последното прашање за оваа анализа. Направете нова анализа за да прашате повеќе.';

  @override
  String get errAskLimit =>
      'Го достигнавте дневниот лимит на прашања. Обидете се повторно утре.';

  @override
  String get eventTomorrow => 'Утре';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'за $days дена',
      one: 'за $days ден',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Квартални резултати';

  @override
  String get eventBeforeOpen => 'пред отворањето на берзата';

  @override
  String get eventAfterClose => 'по затворањето на берзата';

  @override
  String eventEpsEstimate(String value) {
    return 'Проценка на EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Од твојата анализа';

  @override
  String get eventsHint =>
      'Датуми на резултатите на твоите омилени акции и акциите од портфолиото за следните 90 дена, како и настаните со датум што ги означија твоите анализи.';

  @override
  String get eventsEmpty =>
      'Нема настани со датум во следните 90 дена. Додај омилени или акции во портфолиото за да ги видиш нивните датуми на резултати тука.';

  @override
  String get compareTitle => 'Споредба';

  @override
  String get compareAdd => 'Додај акција';

  @override
  String get compareRemove => 'Отстрани';

  @override
  String get compareTickerHint => 'Тикер, на пр. MSFT';

  @override
  String get compareHint =>
      'Клучни бројки една до друга; најдобрата вредност во секој ред е истакната. Износите се во сопствената валута на секоја акција.';

  @override
  String get compareNoAnalysis => 'Сè уште нема анализа';

  @override
  String get portfolioDividends => 'Годишни дивиденди';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent принос';
  }

  @override
  String get portfolioDividendNote =>
      'Очекуваните годишни дивиденди се засноваат на дивидендите исплатени во последните 12 месеци; идните исплати не се загарантирани.';

  @override
  String positionDividend(String amount) {
    return 'Дивиденда: $amount годишно';
  }

  @override
  String get chartAvgCost => 'Ваша просечна';

  @override
  String get chartAlertLevel => 'Известување';

  @override
  String get marketsToday => 'Пазари денес';

  @override
  String get notesTitle => 'Мои белешки';

  @override
  String get notesHint =>
      'Зошто ја купивте, што следите, што би ве натерало да продадете?';

  @override
  String get notesInfo =>
      'Се чува само на овој уред. AI-анализата ги зема предвид вашите белешки.';

  @override
  String notesSaved(String date) {
    return 'Зачувано $date';
  }

  @override
  String get peersTitle => 'Слични компании';

  @override
  String get portfolioExport => 'Извези како CSV';

  @override
  String get portfolioImport => 'Увези од CSV';

  @override
  String get portfolioImportHint =>
      'Залепи по едно купување во секој ред: тикер, количина, цена, валута, датум (ГГГГ-ММ-ДД). Колоните може да се одделени со запирки, точка-запирки или табулатори; насловниот ред не е задолжителен.';

  @override
  String get portfolioImportButton => 'Увези';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Додадени се $count купувања',
      one: 'Додадено е $count купување',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Прескокнати се $count редови',
      one: 'Прескокнат е $count ред',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Портфолиото, омилените, ценовните известувања и белешките се синхронизираат на сите ваши уреди.';

  @override
  String syncLast(String time) {
    return 'Последна синхронизација: $time';
  }

  @override
  String get syncNow => 'Синхронизирај сега';

  @override
  String get syncFailed =>
      'Синхронизацијата не успеа. Автоматски ќе се обиде повторно.';

  @override
  String get alertEmailTitle => 'Е-пошта кога ќе се активира известување';

  @override
  String get alertEmailOn =>
      'Ги проверуваме вашите известувања на секои неколку минути и ви праќаме е-пошта, дури и кога апликацијата е затворена.';

  @override
  String get alertEmailSignIn =>
      'Најавете се со вашата е-пошта во Поставки за да добивате известувања по е-пошта, дури и кога апликацијата е затворена.';

  @override
  String get portfolioHistory => 'Вредност низ времето';

  @override
  String get portfolioReviewTitle => 'AI-анализа на портфолиото';

  @override
  String get portfolioReviewIntro =>
      'AI го прегледува целото ваше портфолио: концентрација, изложеност на сектори и валути, заеднички ризици на вашите акции и дивиденди. Троши 1 анализа.';

  @override
  String get portfolioReviewButton => 'Анализирај го моето портфолио';

  @override
  String get portfolioReviewAgain => 'Анализирај повторно';

  @override
  String get portfolioReviewWorking => 'Го анализираме вашето портфолио…';

  @override
  String get digestTitle => 'Неделно резиме по е-пошта';

  @override
  String get digestHint =>
      'Секој понеделник: како се движеа вашите омилени и портфолиото минатата недела и нивните претстојни датуми на резултати.';

  @override
  String get benchmarkTitle => 'Споредба со S&P 500';

  @override
  String get benchmarkYours => 'Ваши купувања';

  @override
  String get benchmarkIndex => 'Истите износи во S&P 500';

  @override
  String benchmarkAhead(String points) {
    return '$points процентни поени подобро од индексот';
  }

  @override
  String benchmarkBehind(String points) {
    return '$points процентни поени зад индексот';
  }

  @override
  String get benchmarkHint =>
      'Како секое купување истиот ден да било вложено во индексен фонд на S&P 500. Без дивиденди; минатите приноси не ги предвидуваат идните.';

  @override
  String get portfolioSell => 'Продај';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Продај $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Продажна цена по акција ($currency)';
  }

  @override
  String get portfolioSellDate => 'Датум на продажба';

  @override
  String get portfolioSellAll => 'Сите';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Имате $quantity';
  }

  @override
  String get portfolioSold => 'Продадено';

  @override
  String get portfolioRealized => 'Остварено';

  @override
  String get portfolioClosed => 'Затворени позиции';

  @override
  String get portfolioClosedNote => 'Сите акции се продадени';

  @override
  String get portfolioTransactions => 'Трансакции';

  @override
  String get portfolioRealizedByYear => 'Остварена добивка по години';

  @override
  String get portfolioRealizedHint =>
      'Продажбите прво се спаруваат со вашите најстари купувања (FIFO) и се пресметуваат по денешниот девизен курс. За даночната пријава користете го изводот од вашиот брокер.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'По оваа анализа се објавени нови квартални резултати ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Нови резултати';

  @override
  String get portfolioImportBrokers =>
      'Се препознаваат и извозите од Revolut, Trading 212 и Interactive Brokers, заедно со продажбите; дивидендите и уплатите се прескокнуваат.';

  @override
  String get portfolioImportFile => 'Избери датотека';

  @override
  String offlineBanner(String time) {
    return 'Нема врска – прикажани се последно зачуваните податоци ($time).';
  }

  @override
  String get glossMarketCap =>
      'Колку вреди целата компанија на берзата: цена на акцијата × број на акции.';

  @override
  String get glossSharesOutstanding =>
      'Колку акции издала компанијата. Ако бројот расте, секоја акција поседува помало парче; откупот на сопствени акции го намалува.';

  @override
  String get glossPeTrailing =>
      'Цена ÷ добивка по акција за последните 12 месеци: колку години сегашна добивка плаќате. Пониско е поевтино, но брзорастечките компании обично имаат висок P/E.';

  @override
  String get glossPeForward =>
      'Како P/E, но со добивката што аналитичарите ја очекуваат за следните 12 месеци. Ако е под тековниот P/E, се очекува добивката да расте.';

  @override
  String get glossPb =>
      'Цена ÷ книговодствена вредност (средства минус долгови) по акција. Околу 1 значи дека пазарот ја вреднува компанијата колку што поседува на хартија.';

  @override
  String get glossPs =>
      'Пазарна вредност ÷ годишни приходи. Корисно за компании со мала или никаква добивка; споредувајте во иста индустрија.';

  @override
  String get glossEvToFcf =>
      'Вредност на компанијата заедно со долгот (EV) ÷ готовината што ја создава за една година по инвестициите. Пониско значи повеќе готовина за цената.';

  @override
  String get glossPeg =>
      'P/E ÷ очекуван годишен раст на добивката (%). Околу 1 често се смета за фер; го става P/E во светлина на растот.';

  @override
  String get glossEps =>
      'Добивка по акција за последните 12 месеци. EPS што расте со годините е еден од најсилните знаци за здрава компанија.';

  @override
  String get glossBeta =>
      'Колку акцијата се движи заедно со пазарот: 1 = како пазарот, 1,5 = околу 50% поголеми осцилации, под 1 = помирна.';

  @override
  String get glossRevenueTtm =>
      'Вкупна продажба за последните 12 месеци, пред сите трошоци.';

  @override
  String get glossNetIncomeTtm =>
      'Добивката што останува по сите трошоци, камати и даноци за последните 12 месеци.';

  @override
  String get glossGrossMargin =>
      'Делот од приходите што останува по директниот трошок за производите. Високата маржа често значи моќ за одредување цени.';

  @override
  String get glossOperatingMargin =>
      'Делот од приходите што останува по водењето на бизнисот (плати, кирија, маркетинг), пред камати и даноци.';

  @override
  String get glossNetMargin =>
      'Делот од приходите што станува конечна добивка. 20% значи дека 20 од секои 100 од продажбата се добивка.';

  @override
  String get glossRoe =>
      'Поврат на капиталот: годишна добивка ÷ капиталот на сопствениците. Покажува колку добро раководството ги користи парите на акционерите; над околу 15% е силно.';

  @override
  String get glossRoa =>
      'Поврат на средствата: годишна добивка ÷ сè што поседува компанијата. Споредувајте во иста индустрија.';

  @override
  String get glossDebtToEquity =>
      'Долг ÷ капиталот на сопствениците. Повисоко значи повеќе позајмени пари: поголем ризик кога каматите растат или бизнисот забавува.';

  @override
  String get glossCurrentRatio =>
      'Краткорочни средства ÷ сметки што доспеваат во рок од една година. Над 1 значи дека компанијата може да ги покрие блиските обврски.';

  @override
  String get glossRevenueGrowth =>
      'Колку пораснаа приходите во споредба со пред една година.';

  @override
  String get glossEpsGrowth =>
      'Колку порасна добивката по акција во споредба со пред една година.';

  @override
  String get glossDividendYield =>
      'Годишна дивиденда ÷ цена на акцијата: готовинскиот приход што би го добивале годишно, како процент од она што го плаќате.';

  @override
  String get glossDividendPerShare =>
      'Дивидендата исплатена на една акција во последната година.';

  @override
  String get glossPayoutRatio =>
      'Делот од добивката исплатен како дивиденди. Над 100% компанијата исплаќа повеќе отколку што заработува, што ретко трае.';

  @override
  String get glossTitle => 'Што значи ова?';

  @override
  String get watchNewsTitle => 'Вести за вашите акции';

  @override
  String get undo => 'Врати';

  @override
  String get watchSort => 'Подреди';

  @override
  String get watchSortOwn => 'Мој редослед';

  @override
  String get watchSortGainers => 'Најголем раст прво';

  @override
  String get watchSortLosers => 'Најголем пад прво';

  @override
  String get watchSortName => 'По тикер (A–Z)';

  @override
  String get watchHint =>
      'Повлечете ја рачката за прередување, лизгајте налево за отстранување. Линијата ги прикажува последните 30 дена.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: вашата анализа е подготвена.';
  }

  @override
  String alertFromCost(String price) {
    return 'Во однос на вашата просечна набавна цена ($price):';
  }

  @override
  String get briefTitle => 'Денес со вашите акции';

  @override
  String get briefButton => 'Сумирај го денот';

  @override
  String get briefHint =>
      'Кратко AI-резиме за тоа како денес се движеа вашето портфолио и омилените и што велат најновите вести за нив. Не троши анализа.';

  @override
  String get briefRefresh => 'Ажурирај';

  @override
  String get sectionEarnings => 'Квартални резултати';

  @override
  String earningsNext(String date) {
    return 'Следен извештај: $date';
  }

  @override
  String get earningsExpected => 'Очекуван EPS';

  @override
  String get earningsReported => 'Објавен EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'На или над очекуваниот EPS во $beats од последните $total квартали',
      one: 'На или над очекуваниот EPS во $beats од 1 квартал',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol објавува квартални резултати утре';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol објавува квартални резултати денес';
  }

  @override
  String get earningsRemindersTitle => 'Потсетници за резултати';

  @override
  String get earningsRemindersSubtitle =>
      'Известување ден пред омилените или акциите од твоето портфолио да објават квартални резултати';

  @override
  String addAllToFavorites(int count) {
    return 'Додај ги сите во омилени ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Увези од слика од екранот';

  @override
  String get holdingsReading => 'Се читаат вашите позиции…';

  @override
  String get holdingsReviewTitle => 'Пронајдени позиции';

  @override
  String get holdingsReviewHint =>
      'Проверете ги бројките пред да ги додадете. Цената е вашата просечна набавна цена по акција, не денешната цена.';

  @override
  String get holdingsNoPrice => 'На сликата нема просечна набавна цена';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Додај $count позиции',
      one: 'Додај $count позиција',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'На оваа слика не се пронајдени позиции во акции. Обидете се со слика од екранот на страницата со позиции или портфолио кај вашиот брокер.';

  @override
  String get week52Range => '52-неделен опсег';

  @override
  String week52BelowHigh(String percent) {
    return '$percent под 52-неделниот максимум';
  }

  @override
  String get week52AtHigh => 'На 52-неделниот максимум';

  @override
  String get alertKindTrailing => 'Падне од врвот';

  @override
  String get alertTrailingPercent => 'Пад од врвот (%)';

  @override
  String get alertTrailingHint =>
      'Ја следи цената нагоре: известува кога цената ќе падне за толку од највисокото ниво откако го поставивте.';

  @override
  String alertDescTrailing(String percent) {
    return 'Пад за $percent од врвот';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'досегашен врв: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol падна за $percent од врвот';
  }

  @override
  String get sectionInsiders => 'Инсајдерски трансакции';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count купувања',
      one: '$count купување',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count продажби',
      one: '$count продажба',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Нето: $shares акции';
  }

  @override
  String get insiderBuy => 'Купено';

  @override
  String get insiderSell => 'Продадено';

  @override
  String get insiderHint =>
      'Купувања и продажби на отворен пазар од страна на раководители и членови на одборот во последните 90 дена (SEC Form 4). Искористените опции и доделените акции не се сметаат.';

  @override
  String get insiderNone =>
      'Нема инсајдерски купувања или продажби на отворен пазар во последните 90 дена.';

  @override
  String get analystTrend => 'Како се менуваа мислењата од месец во месец';

  @override
  String get watchListAll => 'Сите';

  @override
  String get watchListNew => 'Нова листа';

  @override
  String get watchListName => 'Име на листата';

  @override
  String get watchListRename => 'Преименувај листа';

  @override
  String get watchListDelete => 'Избриши листа';

  @override
  String get watchListAddTo => 'Додај во листа';

  @override
  String get watchListEmpty =>
      'Во оваа листа сè уште нема акции. Допрете го копчето за листа до акцијата за да ја додадете.';

  @override
  String get portfolioAskTitle => 'Прашања за вашето портфолио';

  @override
  String get rangeYtd => 'Од поч. г.';

  @override
  String get backupTitle => 'Резервна копија';

  @override
  String get backupSave => 'Зачувај резервна копија';

  @override
  String get backupSaveHint =>
      'Вашите омилени, листи, портфолио, известувања и белешки во една датотека.';

  @override
  String get backupRestore => 'Врати од резервна копија';

  @override
  String get backupRestoreHint =>
      'Се додава она што е во датотеката; ништо од сегашните податоци не се брише.';

  @override
  String get backupRestored => 'Резервната копија е вратена.';

  @override
  String get backupInvalid =>
      'Оваа датотека не е резервна копија од WhatStock.';

  @override
  String get allocationPositions => 'Акции';

  @override
  String get allocationSectors => 'Сектори';

  @override
  String get allocationCurrencies => 'Валути';

  @override
  String get compareReturn1y => 'Принос за 1 година';

  @override
  String get compareFromHigh => 'Од 52-неделниот максимум';

  @override
  String get briefAutoTitle => 'Дневен преглед секое утро';

  @override
  String get briefAutoSubtitle =>
      '„Денес со вашите акции“ се создава автоматски по 7:00 часот додека апликацијата работи; на компјутери ќе ве извести известување. Го користи вашиот дневен лимит на прашања, не анализа.';

  @override
  String get targetsButton => 'Целна распределба';

  @override
  String get targetsTitle => 'Целна распределба';

  @override
  String get targetsHint =>
      'Одредете колкав удел од портфолиото треба да има секоја акција. Оставете го полето празно ако нема цел. Апликацијата потоа покажува што да купите или продадете.';

  @override
  String targetsSum(String percent) {
    return 'Вкупно: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Купи ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Продај ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Според целта';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol го надмина очекуваниот EPS';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol не го достигна очекуваниот EPS';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'Објавен EPS $actual, очекуван $estimate';
  }

  @override
  String get newsExplain => 'Што значи ова?';

  @override
  String get watchAlertAll => 'Известување за големи дневни движења';

  @override
  String get watchAlertAllHint =>
      'Ценовно известување за секоја акција на оваа листа што се активира кога таа ќе се помести толку во еден ден, нагоре или надолу. Акциите што веќе имаат такво го задржуваат своето.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Поставени се $count известувања',
      one: 'Поставено е $count известување',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Извези остварена добивка (CSV)';

  @override
  String get portfolioAnnualReturn => 'Годишен принос';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / год.';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Парично пондериран годишен принос (XIRR): ги зема предвид моментите кога сте купувале и продавале, па подоцна додадените пари не го искривуваат. Се прикажува кога вашето прво купување ќе биде старо најмалку една година; дивидендите не се вклучени.';

  @override
  String get eventsAddToCalendar => 'Додај во календар (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Известување за портфолиото';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Известување кога целото твое портфолио ќе се помести толку за еден ден.';

  @override
  String get portfolioMoveAlertOff => 'Исклучено';

  @override
  String portfolioMoveUp(String percent) {
    return 'Твоето портфолио денес порасна за $percent';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Твоето портфолио денес падна за $percent';
  }

  @override
  String get whatIfTitle => 'Што ако сте инвестирале?';

  @override
  String get whatIfAmount => 'Износ';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount инвестирани пред $period денес би вределе';
  }

  @override
  String get whatIfNote =>
      'Само врз основа на цената на акцијата: дивидендите, провизиите и даноците не се вклучени. Минатите приноси не ги предвидуваат идните.';

  @override
  String get watchShare => 'Сподели ја листата';

  @override
  String get watchImport => 'Додај тикери';

  @override
  String get watchImportHint =>
      'Залепи тикери одделени со запирки, празни места или нови редови – на пример листа што некој ја споделил со тебе.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Додадени се $count акции',
      one: 'Додадена е $count акција',
      zero: 'Нема нови акции',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Најголеми прво';

  @override
  String get positionsSortGain => 'Најголем вкупен принос прво';

  @override
  String get positionsSortToday => 'Најдобри денес прво';

  @override
  String get chartMyBuys => 'Ваши купувања';

  @override
  String get chartMySells => 'Ваши продажби';

  @override
  String get shortcutsTitle => 'Кратенки на тастатура';

  @override
  String usMarketOpen(String time) {
    return 'Пазарот во САД е отворен · се затвора за $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Пазарот во САД е затворен · се отвора за $time';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes мин';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours ч $minutes мин';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days д $hours ч';
  }

  @override
  String get portfolioGoalSet => 'Постави цел';

  @override
  String get portfolioGoalTitle => 'Цел на портфолиото';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent од целта од $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Целта од $amount е постигната';
  }

  @override
  String get portfolioGoalRemove => 'Отстрани ја целта';

  @override
  String get alertEdit => 'Уреди известување';

  @override
  String get positionOpenLots => 'Сè уште во сопственост (прво најстарите)';

  @override
  String get lotRemoved => 'Трансакцијата е избришана';

  @override
  String get alertDeleted => 'Известувањето е избришано';

  @override
  String get alertsClearTriggered => 'Исчисти ги активираните известувања';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Исчистени се $count известувања',
      one: 'Исчистено е $count известување',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Почетен екран';

  @override
  String get allocationCountries => 'Држави';

  @override
  String get newsExplainNoteResearch =>
      'Објаснување од AI: ги проверува фактите на интернет, ја отвора статијата и проценува колку е сигурен изворот. Не претставува инвестициски совет. Го користи вашиот дневен лимит на прашања, не анализа.';

  @override
  String get sourceOfficial => 'Официјално';

  @override
  String get sourcePressRelease => 'Соопштение';

  @override
  String get sourceMajorNews => 'Голем медиум';

  @override
  String get sourceOpinion => 'Мислење';

  @override
  String get earningsSummaryButton => 'Што имаше во последниот извештај?';

  @override
  String get earningsSummaryNote =>
      'Резиме од AI на објавата на резултатите на компанијата и медиумските написи што ги наоѓа на интернет. Не претставува инвестициски совет. Го користи вашиот дневен лимит на прашања, не анализа.';

  @override
  String get compareLastSurprise => 'EPS последен квартал vs. очекуван';

  @override
  String get compareNextReport => 'Следен извештај';

  @override
  String get resolvingDescription => 'Се утврдува на која акција мислите…';

  @override
  String get instrumentTitle => 'За овој инструмент';

  @override
  String get instrumentHint =>
      'За овој симбол нема профил на компанија – може да е ETF, фонд или депозитарна потврда. Прашајте го AI што е тоа, што содржи и колку чини.';

  @override
  String get instrumentAsk => 'Што е ова?';

  @override
  String get instrumentNote =>
      'Објаснување од AI врз основа на страницата на фондот кај издавачот и финансиски сајтови што ги наоѓа на интернет. Не претставува инвестициски совет. Го користи вашиот дневен лимит на прашања, не анализа.';

  @override
  String suggestAskAi(String query) {
    return 'Прашајте го AI: „$query“';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Нема актуелна цена за $symbols.';
  }

  @override
  String get eventsRecentResults => 'Неодамна објавени резултати';

  @override
  String get saveToNotes => 'Зачувај во моите белешки';

  @override
  String get savedToNotes => 'Зачувано во вашите белешки';

  @override
  String get portfolioDividendsReceived => 'Примени дивиденди';

  @override
  String get portfolioDividendsThisYear => 'Оваа година';

  @override
  String get portfolioDividendsAllTime => 'Вкупно досега';

  @override
  String get portfolioAddDividend => 'Додај дивиденда';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Примен износ ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Датум на исплата';

  @override
  String get portfolioDividendsEmpty =>
      'Сè уште нема евидентирани дивиденди. Додајте ги рачно или увезете го извозот од вашиот брокер – се преземаат и редовите со дивиденди.';

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Додадени се $count дивиденди',
      one: 'Додадена е 1 дивиденда',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Извези дивиденди (CSV)';

  @override
  String get portfolioDividendDeleted => 'Дивидендата е избришана';

  @override
  String get portfolioDividendsHint =>
      'Износите се како што пристигнале на вашата сметка, во валутата на исплата; збировите се конвертираат по денешниот курс. За даночната пријава користете го извештајот од вашиот брокер.';
}
