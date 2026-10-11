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
  String get errRecognitionRefused => 'Услугата за препознавање не можеше да ја обработи оваа слика.';

  @override
  String get errRecognitionTruncated => 'Одговорот од препознавањето беше прекинат. Обидете се повторно.';

  @override
  String get errRecognitionBadResponse => 'Неочекуван одговор од услугата за препознавање.';

  @override
  String get errRecognitionEmpty => 'Услугата за препознавање врати празен одговор.';

  @override
  String get errMissingFinnhubKey => 'Пазарните податоци не се поставени (нема FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Не може да се воспостави врска со услугата за пазарни податоци. Проверете ја интернет-врската.';

  @override
  String get errMarketRateLimited => 'Премногу барања до услугата за пазарни податоци. Почекајте една минута.';

  @override
  String errMarketHttp(String status) {
    return 'Услугата за пазарни податоци врати грешка (HTTP $status).';
  }

  @override
  String get errMarketBadResponse => 'Неочекуван одговор од услугата за пазарни податоци.';

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
  String get aiGenerating => 'Ја подготвуваме анализата… ова може да трае минута-две.';

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
  String get errAiNotConfigured => 'AI-анализата не е поставена (нема ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable => 'Не може да се воспостави врска со AI-услугата. Проверете ја интернет-врската.';

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
  String get chartUnavailable => 'Историјата на цените не е достапна од тековниот извор на податоци.';

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
  String get statementsUnavailable => 'За оваа акција не се достапни објавени финансиски извештаи.';

  @override
  String get launchAtLogin => 'Стартувај при најавување';

  @override
  String get hotkeyLabel => 'Глобална кратенка';

  @override
  String get hotkeyRecordHint => 'Кликнете тука, а потоа притиснете ја новата комбинација на копчиња';

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
  String get noFavorites => 'Сѐ уште нема омилени. Допрете ја ѕвездата кај акцијата за да ја додадете.';

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
  String get updateDownloaded => 'Ажурирањето е подготвено. Рестартирајте за да го инсталирате.';

  @override
  String get updateNow => 'Ажурирај';

  @override
  String get restartNow => 'Рестартирај';

  @override
  String get updatesViaStore => 'Ажурирањата пристигнуваат автоматски преку продавницата за апликации.';

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
  String get trialExpired => 'Вашиот бесплатен пробен период истече. Изберете план за да продолжите со анализите.';

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
  String get errTrialExpired => 'Вашиот бесплатен пробен период истече. Изберете план за да продолжите.';

  @override
  String get errNoPlan => 'За AI-анализа е потребен активен план.';

  @override
  String get viewPlans => 'Прикажи ги плановите';

  @override
  String get usageTitle => 'Користење';

  @override
  String get demoPurchaseNote => 'Демо-наплата: купувањата на оваа платформа се симулирани.';

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
  String get aiDepthDeepDesc => 'Повеќе веб-пребарувања, споредба со конкурентите и подлабоки детали.';

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
  String get aiReaderBeginnerDesc => 'Едноставен јазик; секој стручен термин е објаснет.';

  @override
  String get aiReaderExperiencedDesc => 'Погуст текст со стандардна финансиска терминологија.';

  @override
  String get aiCounterArgument => 'Најсилен контрааргумент';

  @override
  String get aiCounterArgumentDesc => 'Резимето секогаш завршува со најсилниот аргумент против сопствениот заклучок.';

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
  String get outlookChartNote => 'Ориентациони распони; веројатностите се груби проценки, а не предвидувања.';

  @override
  String get accountTitle => 'Сметка';

  @override
  String get signIn => 'Најави се';

  @override
  String get signOut => 'Одјави се';

  @override
  String get notSignedIn => 'Не сте најавени';

  @override
  String get accountBenefit => 'Најавете се за вашата претплата да работи на сите ваши уреди.';

  @override
  String get accountSyncedNote => 'Вашата претплата и преостанатите анализи се исти на секој уред.';

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
  String get errSignInFailed => 'Најавата не успеа. Проверете ја врската и обидете се повторно.';

  @override
  String get checkoutWaiting =>
      'Завршете го плаќањето во прелистувачот. Апликацијата ќе се ажурира автоматски кога ќе заврши.';

  @override
  String get paymentViaStripe => 'Безбедно плаќање во прелистувачот преку Stripe. Откажете во секое време.';

  @override
  String get paymentViaStore =>
      'Наплатата е преку вашата сметка на App Store или Google Play. Откажете во секое време во поставките на продавницата.';

  @override
  String get keySpace => 'Празно место';

  @override
  String get doubleOptionTitle => 'Двоен притисок на Option';

  @override
  String get doubleOptionSubtitle => 'Брзиот двоен притисок на копчето Option исто така го повикува WhatStock.';

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
    String _temp0 = intl.Intl.pluralLogic(years, locale: localeName, other: '$years години', one: '$years година');
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
  String get portfolioExcluded => 'Позициите без цена или девизен курс не се вклучени во збировите.';

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
  String get alertsEmpty => 'Сѐ уште нема ценовни известувања. Отворете акција и допрете го ѕвончето за да поставите.';

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
  String get errDeleteAccount => 'Сметката не можеше да се избрише. Проверете ја врската и обидете се повторно.';
}
