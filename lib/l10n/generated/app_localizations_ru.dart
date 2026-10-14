// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'Сфотографируйте акцию и узнайте о ней всё.';

  @override
  String get homeHint =>
      'Сертификат акции, экран брокерского приложения, газета или логотип компании – всё, что позволяет определить акцию.';

  @override
  String get takePhoto => 'Сделать фото';

  @override
  String get chooseFromGallery => 'Выбрать из галереи';

  @override
  String get chooseImage => 'Выбрать изображение';

  @override
  String get enterTickerManually => 'Ввести тикер вручную';

  @override
  String get tickerInputLabel => 'Тикер';

  @override
  String get tickerInputHint => 'напр. AAPL';

  @override
  String get lookUp => 'Найти';

  @override
  String demoModeBanner(String symbols) {
    return 'Демо-режим – ключ рыночных данных не настроен. Примерные данные доступны для: $symbols.';
  }

  @override
  String get recognizing => 'Анализ изображения…';

  @override
  String get loadingData => 'Загрузка данных…';

  @override
  String get noCandidatesTitle => 'Акция не распознана';

  @override
  String get noCandidatesBody =>
      'Не удалось определить акцию на этом изображении. Попробуйте более чёткое фото или введите тикер вручную.';

  @override
  String get whatWeSaw => 'Что мы увидели';

  @override
  String get chooseCandidateTitle => 'Какую акцию вы имели в виду?';

  @override
  String confidencePercent(int percent) {
    return 'Уверенность $percent%';
  }

  @override
  String get settings => 'Настройки';

  @override
  String get language => 'Язык';

  @override
  String get systemLanguage => 'Системный по умолчанию';

  @override
  String get about => 'О приложении';

  @override
  String get disclaimer =>
      'Приложение носит исключительно информационный характер и не является инвестиционной рекомендацией. Данные могут быть задержаны или неточны.';

  @override
  String dataSource(String source) {
    return 'Источник данных: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Распознавание: $source';
  }

  @override
  String get retry => 'Повторить';

  @override
  String get cancel => 'Отмена';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Закрыть';

  @override
  String get errorGeneric => 'Что-то пошло не так.';

  @override
  String get errorSectionUnavailable => 'Не удалось загрузить этот раздел.';

  @override
  String get notAvailable => 'н/д';

  @override
  String get sectionIdentity => 'Идентификация';

  @override
  String get sectionPrice => 'Цена';

  @override
  String get sectionValuation => 'Оценка';

  @override
  String get sectionFinancials => 'Финансы';

  @override
  String get sectionDividend => 'Дивиденды';

  @override
  String get sectionProfile => 'Профиль компании';

  @override
  String get sectionAnalysts => 'Рейтинги аналитиков';

  @override
  String get sectionNews => 'Новости';

  @override
  String get sectionRecognition => 'Детали распознавания';

  @override
  String get labelSymbol => 'Тикер';

  @override
  String get labelExchange => 'Биржа';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Валюта';

  @override
  String get labelCountry => 'Страна';

  @override
  String get labelIndustry => 'Отрасль';

  @override
  String get labelSector => 'Сектор';

  @override
  String get labelWebsite => 'Веб-сайт';

  @override
  String get labelIpoDate => 'Дата IPO';

  @override
  String get labelMarketCap => 'Капитализация';

  @override
  String get labelSharesOutstanding => 'Акций в обращении';

  @override
  String get labelEmployees => 'Сотрудники';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Штаб-квартира';

  @override
  String get labelDescription => 'Описание';

  @override
  String get labelLastPrice => 'Последняя цена';

  @override
  String get labelChange => 'Изменение';

  @override
  String get labelOpen => 'Открытие';

  @override
  String get labelDayHigh => 'Максимум дня';

  @override
  String get labelDayLow => 'Минимум дня';

  @override
  String get labelPreviousClose => 'Предыдущее закрытие';

  @override
  String get labelWeek52High => 'Максимум за 52 недели';

  @override
  String get labelWeek52Low => 'Минимум за 52 недели';

  @override
  String get labelAverageVolume10d => 'Средний объём (10 дней)';

  @override
  String updatedAt(String time) {
    return 'Обновлено $time';
  }

  @override
  String get labelPeTrailing => 'P/E (трейлинг)';

  @override
  String get labelPeForward => 'P/E (форвардный)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / свободный денежный поток';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Бета';

  @override
  String get labelRevenueTtm => 'Выручка (TTM)';

  @override
  String get labelNetIncomeTtm => 'Чистая прибыль (TTM)';

  @override
  String get labelGrossMargin => 'Валовая маржа';

  @override
  String get labelOperatingMargin => 'Операционная маржа';

  @override
  String get labelNetMargin => 'Чистая маржа';

  @override
  String get labelRoe => 'Рентабельность капитала';

  @override
  String get labelRoa => 'Рентабельность активов';

  @override
  String get labelDebtToEquity => 'Долг / капитал';

  @override
  String get labelCurrentRatio => 'Коэффициент текущей ликвидности';

  @override
  String get labelRevenueGrowth => 'Рост выручки (YoY)';

  @override
  String get labelEpsGrowth => 'Рост EPS (YoY)';

  @override
  String get labelDividendYield => 'Дивидендная доходность';

  @override
  String get labelDividendPerShare => 'Дивиденд на акцию';

  @override
  String get labelPayoutRatio => 'Коэффициент выплат';

  @override
  String get labelConsensus => 'Консенсус';

  @override
  String get ratingStrongBuy => 'Активно покупать';

  @override
  String get ratingBuy => 'Покупать';

  @override
  String get ratingHold => 'Держать';

  @override
  String get ratingSell => 'Продавать';

  @override
  String get ratingStrongSell => 'Активно продавать';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count аналитика',
      many: '$count аналитиков',
      few: '$count аналитика',
      one: '$count аналитик',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Период: $period';
  }

  @override
  String get noNews => 'Нет свежих новостей.';

  @override
  String get openArticle => 'Открыть статью';

  @override
  String get openLinkFailed => 'Не удалось открыть ссылку.';

  @override
  String get recognitionSummary => 'Сводка';

  @override
  String get recognitionEvidence => 'Почему мы так считаем';

  @override
  String get recognitionRawText => 'Текст, считанный с изображения';

  @override
  String get errMissingAnthropicKey =>
      'Распознавание изображений не настроено (нет ANTHROPIC_API_KEY). Введите тикер вручную.';

  @override
  String get errRecognitionUnreachable =>
      'Не удалось связаться со службой распознавания. Проверьте подключение к интернету.';

  @override
  String errRecognitionHttp(String status) {
    return 'Служба распознавания вернула ошибку (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Служба распознавания не смогла обработать это изображение.';

  @override
  String get errRecognitionTruncated =>
      'Ответ службы распознавания был обрезан. Попробуйте ещё раз.';

  @override
  String get errRecognitionBadResponse =>
      'Неожиданный ответ от службы распознавания.';

  @override
  String get errRecognitionEmpty =>
      'Служба распознавания вернула пустой ответ.';

  @override
  String get errMissingFinnhubKey =>
      'Рыночные данные не настроены (нет FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Не удалось связаться со службой рыночных данных. Проверьте подключение к интернету.';

  @override
  String get errMarketRateLimited =>
      'Слишком много запросов к службе рыночных данных. Подождите минуту.';

  @override
  String errMarketHttp(String status) {
    return 'Служба рыночных данных вернула ошибку (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Неожиданный ответ от службы рыночных данных.';

  @override
  String errNoQuote(String symbol) {
    return 'Данные о цене для $symbol не найдены.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Профиль компании для $symbol не найден.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Демо-режим поддерживает только $symbols. Добавьте FINNHUB_API_KEY для актуальных данных.';
  }

  @override
  String errUnknown(String detail) {
    return 'Что-то пошло не так: $detail';
  }

  @override
  String get newSearch => 'Новый поиск';

  @override
  String get recentSearches => 'Недавние';

  @override
  String get noRecentSearches => 'Недавних запросов пока нет.';

  @override
  String get clearRecent => 'Очистить недавние';

  @override
  String get greeting => 'Какую акцию посмотрим?';

  @override
  String get searchHint => 'Тикер или название компании';

  @override
  String get attachImage => 'Прикрепить изображение';

  @override
  String get searchResultsTitle => 'Результаты поиска';

  @override
  String errNoResults(String query) {
    return 'По запросу «$query» акции не найдены.';
  }

  @override
  String get quickBarHint => 'Введите тикер или название компании…';

  @override
  String get openFullWindow => 'Открыть окно';

  @override
  String hotkeyHint(String shortcut) {
    return 'Нажмите $shortcut в любом месте, чтобы вызвать WhatStock.';
  }

  @override
  String get trayOpen => 'Открыть WhatStock';

  @override
  String get trayQuickSearch => 'Быстрый поиск';

  @override
  String get trayQuit => 'Выйти';

  @override
  String get appearance => 'Внешний вид';

  @override
  String get themeSystem => 'Системная';

  @override
  String get themeDark => 'Тёмная';

  @override
  String get themeLight => 'Светлая';

  @override
  String get back => 'Назад';

  @override
  String get aiSectionTitle => 'ИИ-анализ';

  @override
  String get aiIntro =>
      'Подробный обзор, написанный ИИ: сводка последних новостей, бизнес, сильные стороны, риски и скрытые факторы, оценка, прогноз цены со сценариями с психологической, социологической, технической и макроэкономической точек зрения, а также за чем следить.';

  @override
  String get aiGenerate => 'Создать анализ';

  @override
  String get aiRegenerate => 'Создать заново';

  @override
  String get aiGenerating => 'Готовим анализ… это может занять минуту-другую.';

  @override
  String get aiSources => 'Источники';

  @override
  String aiGeneratedAt(String time) {
    return 'Создано $time';
  }

  @override
  String get aiDisclaimer =>
      'Анализ создан ИИ на основе открытых данных и последних новостей. Он может содержать ошибки или быть устаревшим и не является инвестиционной рекомендацией.';

  @override
  String get errAiNotConfigured =>
      'ИИ-анализ не настроен (нет ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Не удалось связаться со службой ИИ. Проверьте подключение к интернету.';

  @override
  String errAiHttp(String status) {
    return 'Служба ИИ вернула ошибку (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Служба ИИ отказалась анализировать эту акцию.';

  @override
  String get errAiBadResponse => 'Неожиданный ответ от службы ИИ.';

  @override
  String get sectionChart => 'График цены';

  @override
  String get rangeOneWeek => '1Н';

  @override
  String get rangeOneMonth => '1М';

  @override
  String get rangeThreeMonths => '3М';

  @override
  String get rangeOneYear => '1Г';

  @override
  String get rangeFiveYears => '5Л';

  @override
  String get chartUnavailable =>
      'История цен недоступна в текущем источнике данных.';

  @override
  String get sectionStatements => 'Финансовая отчётность (годовая)';

  @override
  String get labelFiscalYear => 'Финансовый год';

  @override
  String get labelRevenue => 'Выручка';

  @override
  String get labelNetIncome => 'Чистая прибыль';

  @override
  String get labelTotalAssets => 'Всего активов';

  @override
  String get labelTotalLiabilities => 'Всего обязательств';

  @override
  String get labelEquity => 'Собственный капитал';

  @override
  String get labelOperatingCashFlow => 'Операционный денежный поток';

  @override
  String get statementsUnavailable =>
      'Опубликованная финансовая отчётность для этой акции недоступна.';

  @override
  String get launchAtLogin => 'Запускать при входе в систему';

  @override
  String get hotkeyLabel => 'Глобальное сочетание клавиш';

  @override
  String get hotkeyRecordHint =>
      'Нажмите здесь, затем нажмите новое сочетание клавиш';

  @override
  String get hotkeyReset => 'Сбросить по умолчанию';

  @override
  String get pasteImage => 'Вставить изображение из буфера обмена';

  @override
  String get errClipboardNoImage => 'В буфере обмена нет изображения.';

  @override
  String get favorites => 'Избранное';

  @override
  String get addToFavorites => 'Добавить в избранное';

  @override
  String get removeFromFavorites => 'Удалить из избранного';

  @override
  String get noFavorites =>
      'В избранном пока ничего нет. Нажмите на звёздочку рядом с акцией, чтобы добавить её.';

  @override
  String get displayCurrency => 'Валюта отображения';

  @override
  String get displayCurrencyNone => 'Только собственная валюта акции';

  @override
  String labelConverted(String currency) {
    return '≈ в $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Курс: 1 $from = $rate $to (ЕЦБ, $date)';
  }

  @override
  String get updates => 'Обновления';

  @override
  String currentVersion(String version) {
    return 'Версия $version';
  }

  @override
  String get autoUpdate => 'Устанавливать обновления автоматически';

  @override
  String get checkForUpdates => 'Проверить обновления';

  @override
  String get updateChecking => 'Проверка обновлений…';

  @override
  String get updateUpToDate => 'У вас установлена последняя версия.';

  @override
  String updateAvailable(String version) {
    return 'Доступна версия $version.';
  }

  @override
  String get updateDownloading => 'Обновление загружается в фоновом режиме…';

  @override
  String get updateDownloaded =>
      'Обновление готово. Перезапустите приложение, чтобы установить его.';

  @override
  String get updateNow => 'Обновить';

  @override
  String get restartNow => 'Перезапустить';

  @override
  String get updatesViaStore =>
      'Обновления приходят автоматически через магазин приложений.';

  @override
  String get updateCheckFailed => 'Не удалось проверить обновления.';

  @override
  String get subscription => 'Подписка';

  @override
  String get planTrial => 'Пробный';

  @override
  String get planNormal => 'Стандарт';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Нет активного тарифа';

  @override
  String planAnalysesPerMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count анализа в месяц',
      many: '$count анализов в месяц',
      few: '$count анализа в месяц',
      one: '$count анализ в месяц',
    );
    return '$_temp0';
  }

  @override
  String planTrialDescription(int days, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Бесплатный пробный период $days дн. с $count анализами',
      many: 'Бесплатный пробный период $days дн. с $count анализами',
      few: 'Бесплатный пробный период $days дн. с $count анализами',
      one: 'Бесплатный пробный период $days дн. с $count анализом',
    );
    return '$_temp0';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Осталось $days дня пробного периода',
      many: 'Осталось $days дней пробного периода',
      few: 'Осталось $days дня пробного периода',
      one: 'Остался $days день пробного периода',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Ваш бесплатный пробный период закончился. Выберите тариф, чтобы продолжить анализировать.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Осталось $remaining из $total анализов в этом периоде';
  }

  @override
  String extraCredits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дополнительного анализа',
      many: '$count дополнительных анализов',
      few: '$count дополнительных анализа',
      one: '$count дополнительный анализ',
    );
    return '$_temp0';
  }

  @override
  String renewsOn(String date) {
    return 'Продление $date';
  }

  @override
  String get choosePlan => 'Выберите тариф';

  @override
  String get currentPlan => 'Текущий тариф';

  @override
  String get subscribe => 'Подписаться';

  @override
  String get perMonth => '/ мес.';

  @override
  String get extraPacksTitle => 'Нужно больше? Купите дополнительные анализы';

  @override
  String get extraPacksHint =>
      'Дополнительные анализы не сгорают и используются после исчерпания месячного лимита.';

  @override
  String get buy => 'Купить';

  @override
  String get restorePurchases => 'Восстановить покупки';

  @override
  String get manageSubscription => 'Управление подпиской';

  @override
  String get purchaseSuccess => 'Спасибо! Ваша покупка активна.';

  @override
  String get purchasePending => 'Покупка ожидает подтверждения…';

  @override
  String get purchaseFailed => 'Не удалось завершить покупку.';

  @override
  String get purchaseCanceled => 'Покупка отменена.';

  @override
  String get billingUnavailable =>
      'Покупки на этой платформе пока недоступны. Оформите подписку на телефоне или Mac; ваш тариф будет работать на всех устройствах.';

  @override
  String get errQuotaExceeded =>
      'В этом периоде у вас не осталось анализов. Перейдите на более высокий тариф или купите дополнительные анализы.';

  @override
  String get errTrialExpired =>
      'Ваш бесплатный пробный период закончился. Выберите тариф, чтобы продолжить.';

  @override
  String get errNoPlan => 'Для ИИ-анализа нужен активный тариф.';

  @override
  String get viewPlans => 'Посмотреть тарифы';

  @override
  String get usageTitle => 'Использование';

  @override
  String get demoPurchaseNote =>
      'Демо-режим оплаты: на этой платформе покупки имитируются.';

  @override
  String get mostPopular => 'Самый популярный';

  @override
  String get bestValue => 'Самый выгодный';

  @override
  String get planFeaturesCommon =>
      'Распознавание фото, данные в реальном времени, графики, избранное и все 120 языка включены в каждый тариф. Лимит относится к ИИ-анализам.';

  @override
  String get searchLanguages => 'Поиск языков…';

  @override
  String get noLanguageMatch => 'Ни один язык не найден.';

  @override
  String get aiSettings => 'ИИ-анализ';

  @override
  String get aiLength => 'Длина';

  @override
  String get aiDepthBrief => 'Кратко';

  @override
  String get aiDepthStandard => 'Стандартно';

  @override
  String get aiDepthDeep => 'Подробно';

  @override
  String get aiDepthBriefDesc => 'Главное — быстро.';

  @override
  String get aiDepthStandardDesc => 'Полный отчёт со всеми разделами.';

  @override
  String get aiDepthDeepDesc =>
      'Больше веб-поисков, сравнение с конкурентами и более глубокая детализация.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Примерно $min–$max слов';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'расходует $count анализа',
      many: 'расходует $count анализов',
      few: 'расходует $count анализа',
      one: 'расходует $count анализ',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Уровень читателя';

  @override
  String get aiReaderBeginner => 'Новичок';

  @override
  String get aiReaderExperienced => 'Опытный';

  @override
  String get aiReaderBeginnerDesc =>
      'Простым языком; каждый специальный термин объясняется.';

  @override
  String get aiReaderExperiencedDesc =>
      'Более плотный текст со стандартной финансовой терминологией.';

  @override
  String get aiCounterArgument => 'Самый сильный контраргумент';

  @override
  String get aiCounterArgumentDesc =>
      'Сводка всегда завершается самым весомым аргументом против собственного вывода.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'С вашим тарифом — до $count веб-поиска на анализ',
      many: 'С вашим тарифом — до $count веб-поисков на анализ',
      few: 'С вашим тарифом — до $count веб-поисков на анализ',
      one: 'С вашим тарифом — до $count веб-поиска на анализ',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Стандартная длина по тарифам: Стандарт $normal, Pro $pro, Max $max, Ultra $ultra. «Кратко» — на 2 меньше, «Подробно» — на 2 больше.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'до $count веб-поиска',
      many: 'до $count веб-поисков',
      few: 'до $count веб-поисков',
      one: 'до $count веб-поиска',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count веб-поиска на анализ',
      many: '$count веб-поисков на анализ',
      few: '$count веб-поиска на анализ',
      one: '$count веб-поиск на анализ',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Для этой длины нужно анализов: $needed, а осталось: $left. Выберите более короткую длину в Настройках или получите больше анализов.';
  }

  @override
  String get outlookMarketMood => 'Настроение рынка';

  @override
  String get moodVeryPessimistic => 'Очень пессимистичное';

  @override
  String get moodPessimistic => 'Пессимистичное';

  @override
  String get moodNeutral => 'Нейтральное';

  @override
  String get moodOptimistic => 'Оптимистичное';

  @override
  String get moodVeryOptimistic => 'Очень оптимистичное';

  @override
  String get scenarioBull => 'Оптимистичный сценарий';

  @override
  String get scenarioBase => 'Базовый сценарий';

  @override
  String get scenarioBear => 'Пессимистичный сценарий';

  @override
  String outlookCurrentPrice(String price) {
    return 'Текущая цена: $price';
  }

  @override
  String get outlookKeyLevels => 'Ключевые уровни';

  @override
  String get keyLevelSupport => 'Поддержка';

  @override
  String get keyLevelResistance => 'Сопротивление';

  @override
  String get keyLevelAnchor => 'Якорный уровень';

  @override
  String get upcomingEvents => 'Предстоящие события';

  @override
  String get outlookChartNote =>
      'Ориентировочные диапазоны; вероятности — приблизительные оценки, а не прогнозы.';

  @override
  String get accountTitle => 'Аккаунт';

  @override
  String get signIn => 'Войти';

  @override
  String get signOut => 'Выйти';

  @override
  String get notSignedIn => 'Вход не выполнен';

  @override
  String get accountBenefit =>
      'Войдите, чтобы ваша подписка работала на всех ваших устройствах.';

  @override
  String get accountSyncedNote =>
      'Ваша подписка и оставшиеся анализы одинаковы на всех устройствах.';

  @override
  String get signInTitle => 'Вход в WhatStock';

  @override
  String get emailLabel => 'Адрес электронной почты';

  @override
  String get continueWithEmail => 'Продолжить с email';

  @override
  String codeSentTo(String email) {
    return 'Мы отправили 6-значный код на $email. Он действителен 10 минут.';
  }

  @override
  String get codeLabel => 'Код для входа';

  @override
  String get resendCode => 'Отправить новый код';

  @override
  String get useDifferentEmail => 'Использовать другой email';

  @override
  String get errInvalidCode => 'Неверный код или истёк срок его действия.';

  @override
  String get errInvalidEmail =>
      'Введите действительный адрес электронной почты.';

  @override
  String get errSignInFailed =>
      'Не удалось войти. Проверьте подключение к интернету и попробуйте ещё раз.';

  @override
  String get checkoutWaiting =>
      'Завершите оплату в браузере. Приложение обновится автоматически, когда всё будет готово.';

  @override
  String get paymentViaStripe =>
      'Безопасная оплата в браузере через Stripe. Отменить можно в любой момент.';

  @override
  String get paymentViaStore =>
      'Оплата через ваш аккаунт App Store или Google Play. Отменить можно в любой момент в настройках магазина.';

  @override
  String get keySpace => 'Пробел';

  @override
  String get doubleOptionTitle => 'Двойное нажатие Option';

  @override
  String get doubleOptionSubtitle =>
      'Быстрое двойное нажатие клавиши Option тоже вызывает WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Чтобы это работало и в других приложениях, разрешите доступ для WhatStock в разделе «Системные настройки» → «Конфиденциальность и безопасность» → «Мониторинг ввода», а затем снова откройте приложение.';

  @override
  String get openSystemSettings => 'Открыть «Системные настройки»';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Нажмите $shortcut или дважды нажмите Option в любом месте, чтобы вызвать WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Наиболее вероятный';

  @override
  String get longTermToday => 'Сегодня';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years года',
      many: '$years лет',
      few: '$years года',
      one: '$years год',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range в год';
  }

  @override
  String longTermLikely(String price) {
    return 'наиболее вероятно $price';
  }

  @override
  String get confidenceLow => 'Низкая уверенность';

  @override
  String get confidenceMedium => 'Средняя уверенность';

  @override
  String get confidenceHigh => 'Высокая уверенность';

  @override
  String get longTermNote =>
      'Долгосрочные диапазоны основаны на указанных допущениях и расширяются со временем. Цены без учёта дивидендов. Грубые оценки, а не прогнозы.';

  @override
  String get portfolio => 'Портфель';

  @override
  String get portfolioEmpty =>
      'Пока пусто. Откройте акцию и нажмите «Добавить в портфель», чтобы следить за своими бумагами.';

  @override
  String get portfolioLocalNote =>
      'Хранится только на этом устройстве. Итоги пересчитываются по справочным курсам ЕЦБ; цены могут быть с задержкой.';

  @override
  String get addToPortfolio => 'Добавить в портфель';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Добавить $symbol';
  }

  @override
  String get portfolioQuantity => 'Количество акций';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Цена за акцию ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Дата покупки';

  @override
  String get portfolioAdd => 'Добавить';

  @override
  String get portfolioInvalidNumber => 'Введите число больше нуля.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol добавлена в портфель.';
  }

  @override
  String get portfolioTotalValue => 'Общая стоимость';

  @override
  String get portfolioToday => 'Сегодня';

  @override
  String get portfolioGainLoss => 'Прибыль/убыток';

  @override
  String get portfolioInvested => 'Вложено';

  @override
  String get portfolioAllocation => 'Структура';

  @override
  String get portfolioPositions => 'Позиции';

  @override
  String portfolioAvgCost(String price) {
    return 'ср. цена покупки $price';
  }

  @override
  String get portfolioYourPosition => 'Ваша позиция';

  @override
  String get portfolioPurchases => 'Покупки';

  @override
  String get portfolioRemove => 'Удалить';

  @override
  String get portfolioExcluded =>
      'Позиции без цены или курса валют не учитываются в итогах.';

  @override
  String get priceAlerts => 'Ценовые оповещения';

  @override
  String get setPriceAlert => 'Создать ценовое оповещение';

  @override
  String alertDialogTitle(String symbol) {
    return 'Ценовое оповещение · $symbol';
  }

  @override
  String get alertKindAbove => 'Поднимется выше';

  @override
  String get alertKindBelow => 'Опустится ниже';

  @override
  String get alertKindMove => 'Сильно изменится за день';

  @override
  String alertTargetPrice(String currency) {
    return 'Цена ($currency)';
  }

  @override
  String get alertMovePercent => 'Изменение за день (%)';

  @override
  String get alertAlreadyMet => 'Цена уже прошла этот уровень.';

  @override
  String get alertSave => 'Создать оповещение';

  @override
  String alertCreated(String symbol) {
    return 'Оповещение для $symbol создано.';
  }

  @override
  String get alertsEmpty =>
      'Оповещений пока нет. Откройте акцию и нажмите на колокольчик.';

  @override
  String get alertsNote =>
      'Оповещения проверяются каждые 5 минут, пока WhatStock запущен. На компьютере приложение продолжает работать в строке меню или в трее; на телефоне оповещения пока приходят, только когда приложение открыто.';

  @override
  String alertDescAbove(String price) {
    return 'Выше $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Ниже $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Изменение за день ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Сработало $date по цене $price';
  }

  @override
  String get alertRearm => 'Включить снова';

  @override
  String get alertDelete => 'Удалить';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol поднялась выше $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol опустилась ниже $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol сегодня изменилась на $percent';
  }

  @override
  String alertHitBody(String price) {
    return 'Текущая цена: $price';
  }

  @override
  String get alertOpen => 'Открыть';

  @override
  String get keepInTrayTitle => 'Работать после закрытия окна';

  @override
  String get keepInTraySubtitle =>
      'WhatStock остаётся в строке меню или в трее, поэтому сочетание клавиш и ценовые оповещения продолжают работать.';

  @override
  String get termsOfUse => 'Условия использования';

  @override
  String get privacyPolicy => 'Политика конфиденциальности';

  @override
  String get subscriptionLegal =>
      'Подписка автоматически продлевается каждый месяц, пока вы её не отмените. Оформляя подписку, вы принимаете Условия использования и Политику конфиденциальности.';

  @override
  String get deleteAccount => 'Удалить аккаунт';

  @override
  String get deleteAccountTitle => 'Удалить аккаунт?';

  @override
  String get deleteAccountBody =>
      'Ваш аккаунт и всё, что хранится на нашем сервере (e-mail, лимит, использование), будет удалено навсегда, а неиспользованные анализы пропадут. Подписка, оплаченная в браузере, отменяется сразу; подписку через App Store или Google Play нужно отменить в настройках магазина.';

  @override
  String get deleteLocalData =>
      'Удалить и данные на этом устройстве (портфель, оповещения, избранное, история, сохранённые анализы)';

  @override
  String get deleteAccountConfirm => 'Удалить навсегда';

  @override
  String get accountDeleted => 'Ваш аккаунт удалён.';

  @override
  String get errDeleteAccount =>
      'Не удалось удалить аккаунт. Проверьте подключение и попробуйте снова.';

  @override
  String get aiTrialBriefNote =>
      'Пробные анализы краткие и создаются более быстрой моделью ИИ. С тарифом вы получаете наш самый мощный ИИ, больше веб-поисков, а также стандартную и подробную длину.';

  @override
  String get billingMonthly => 'Ежемесячно';

  @override
  String get billingYearly => 'Ежегодно';

  @override
  String get yearlyDiscount => '2 месяца бесплатно';

  @override
  String get perYear => '/ год';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price в месяц';
  }

  @override
  String get subscriptionLegalYearly =>
      'Годовая подписка автоматически продлевается каждый год, пока вы её не отмените. Оформляя подписку, вы принимаете Условия использования и Политику конфиденциальности.';

  @override
  String get myAnalyses => 'Мои анализы';

  @override
  String get navAlerts => 'Оповещения';

  @override
  String get inviteTitle => 'Закрытый доступ';

  @override
  String get inviteBody =>
      'Пока WhatStock доступен только по приглашению. Введите полученный код приглашения.';

  @override
  String get inviteCodeLabel => 'Код приглашения';

  @override
  String get inviteContinue => 'Продолжить';

  @override
  String get inviteInvalid => 'Этот код приглашения недействителен.';

  @override
  String get inviteExpired =>
      'Срок действия приглашения истёк. Попросите новый код у пригласившего вас человека.';

  @override
  String get inviteDeviceLimit =>
      'Этот код приглашения уже используется на максимально допустимом числе устройств.';

  @override
  String get previewConfidential => 'Конфиденциальная предварительная версия';

  @override
  String get errPreviewDailyLimit =>
      'Дневной лимит анализов в этой предварительной версии исчерпан. Попробуйте завтра.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count часа назад',
      many: '$count часов назад',
      few: '$count часа назад',
      one: '$count час назад',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дня назад',
      many: '$count дней назад',
      few: '$count дня назад',
      one: '$count день назад',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Обновить этот анализ?';

  @override
  String staleBody(String age) {
    return 'Он был создан $age. С тех пор цены, новости и результаты могли измениться.';
  }

  @override
  String get staleKeep => 'Показать прежний';

  @override
  String get staleRefresh => 'Создать новый';

  @override
  String seeAll(int count) {
    return 'Показать все ($count)';
  }

  @override
  String get searchAnalyses => 'Поиск по анализам';

  @override
  String get deleteAnalysis => 'Удалить';

  @override
  String analysisDeleted(String symbol) {
    return 'Анализ $symbol удалён';
  }

  @override
  String get keyLevelAlertHint =>
      'Нажмите на уровень, чтобы получить оповещение, когда цена его достигнет.';

  @override
  String get shareAnalysisTitle => 'Поделиться анализом';

  @override
  String get shareAsImage => 'Поделиться изображением';

  @override
  String get shareAsText => 'Поделиться текстом';

  @override
  String get shareCardFooter => 'Сделано в WhatStock';

  @override
  String get shareCardDisclaimer =>
      'ИИ-анализ · не инвестиционная рекомендация';

  @override
  String get referralTitle => 'Пригласите друзей';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дополнительного анализа',
      many: '$count дополнительных анализов',
      few: '$count дополнительных анализа',
      one: '$count дополнительный анализ',
    );
    return 'Поделитесь своим кодом. Друг сразу получит $_temp0, а вы — столько же после первого анализа друга.';
  }

  @override
  String get referralYourCode => 'Ваш код';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Приглашено: $invited · Награждено: $rewarded';
  }

  @override
  String get referralHaveCode => 'Есть код от друга?';

  @override
  String get referralRedeem => 'Активировать';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Добавлено $count дополнительного анализа. Добро пожаловать!',
      many: 'Добавлено $count дополнительных анализов. Добро пожаловать!',
      few: 'Добавлено $count дополнительных анализа. Добро пожаловать!',
      one: 'Добавлен $count дополнительный анализ. Добро пожаловать!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Такого кода не существует. Проверьте его и попробуйте ещё раз.';

  @override
  String get referralErrOwn => 'Нельзя активировать собственный код.';

  @override
  String get referralErrAlready => 'Вы уже активировали код друга.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дополнительного анализа',
      many: '$count дополнительных анализов',
      few: '$count дополнительных анализа',
      one: '$count дополнительный анализ',
    );
    return 'Я анализирую акции с WhatStock: сфотографируй акцию, и ИИ её объяснит. С моим кодом $code ты получишь $_temp0.';
  }

  @override
  String get referralCopied => 'Код скопирован';
}
