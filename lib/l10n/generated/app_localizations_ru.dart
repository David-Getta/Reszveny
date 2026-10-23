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
  String get labelYieldOnCost => 'Доходность к цене покупки';

  @override
  String get labelDividendGrowth5y => 'Рост дивидендов (5 лет)';

  @override
  String get dividendNone =>
      'За последние 12 месяцев дивиденды не выплачивались.';

  @override
  String get dividendOnYourShares => 'На ваши акции, в год';

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
  String homeDividendsThisYear(String amount) {
    return 'Дивиденды в этом году: $amount';
  }

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

  @override
  String get onboardTitle1 => 'Сфотографируйте акцию';

  @override
  String get onboardBody1 =>
      'Достаточно экрана брокерского приложения, газеты или логотипа компании: WhatStock распознает акцию и покажет её цену, график и ключевые показатели.';

  @override
  String get onboardTitle2 => 'Разберитесь за минуты';

  @override
  String get onboardBody2 =>
      'ИИ-анализ объясняет, что движет акцией, каковы риски и оценка, и предлагает три сценария движения цены — с источниками и на вашем языке.';

  @override
  String get onboardTitle3 => 'Будьте в курсе';

  @override
  String get onboardBody3 =>
      'Избранное, ваш портфель и ценовые оповещения держат вас в курсе. Ваши анализы хранятся на устройстве и всегда готовы к повторному открытию.';

  @override
  String get onboardNext => 'Далее';

  @override
  String get onboardStart => 'Начать';

  @override
  String get onboardSkip => 'Пропустить';

  @override
  String changesTitle(String date) {
    return 'С предыдущего анализа ($date)';
  }

  @override
  String get changesPrice => 'Цена';

  @override
  String get changesNoMajor => 'Прогноз существенно не изменился.';

  @override
  String get changesPreviousSummary => 'Предыдущее резюме';

  @override
  String get telemetryTitle => 'Помогите улучшить WhatStock';

  @override
  String get telemetryBody =>
      'Отправлять анонимную статистику использования и отчёты о сбоях: какие функции используются и что пошло не так. Никогда — ваши акции, анализы или личные данные. Это можно изменить в любой момент в Настройках.';

  @override
  String get telemetryAllow => 'Разрешить';

  @override
  String get telemetryDecline => 'Нет, спасибо';

  @override
  String get telemetrySetting => 'Анонимная статистика и отчёты о сбоях';

  @override
  String get telemetrySettingHint =>
      'Частота использования функций и отчёты об ошибках — без личных данных и содержания ваших поисков и анализов.';

  @override
  String get askButton => 'Спросить об этом анализе';

  @override
  String askTitle(String symbol) {
    return 'Вопросы по $symbol';
  }

  @override
  String get askIntro =>
      'Спросите что угодно об анализе: что означает тот или иной риск, что может изменить прогноз, как получено то или иное число. Ответы основаны на этом анализе и не являются инвестиционной рекомендацией.';

  @override
  String get askHint => 'Задайте вопрос…';

  @override
  String get askSend => 'Отправить';

  @override
  String get askThinking => 'Думаю…';

  @override
  String get askSuggest1 => 'Какой риск самый большой?';

  @override
  String get askSuggest2 => 'Что может изменить прогноз?';

  @override
  String get askSuggest3 => 'Объясни простыми словами';

  @override
  String get askMaxReached =>
      'Это был последний вопрос по этому анализу. Чтобы спросить ещё, создайте новый анализ.';

  @override
  String get errAskLimit =>
      'Дневной лимит вопросов исчерпан. Попробуйте завтра.';

  @override
  String get eventTomorrow => 'Завтра';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'через $days дня',
      many: 'через $days дней',
      few: 'через $days дня',
      one: 'через $days день',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Квартальная отчётность';

  @override
  String get eventBeforeOpen => 'до открытия рынка';

  @override
  String get eventAfterClose => 'после закрытия рынка';

  @override
  String eventEpsEstimate(String value) {
    return 'Прогноз EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Из вашего анализа';

  @override
  String get eventDividend => 'Ожидается дивиденд';

  @override
  String get eventDividendEstimate => 'Оценка по записанным вами выплатам';

  @override
  String get eventsHint =>
      'Даты отчётности по избранным акциям и акциям из портфеля на ближайшие 90 дней, события с датами, отмеченные в ваших анализах, а также дивиденды, ожидаемые по записанным вами выплатам.';

  @override
  String get eventsEmpty =>
      'В ближайшие 90 дней нет событий с датой. Добавьте акции в избранное или портфель, чтобы видеть здесь даты их отчётности; по записанным дивидендам отображается следующая ожидаемая выплата.';

  @override
  String get compareTitle => 'Сравнение';

  @override
  String get compareAdd => 'Добавить акцию';

  @override
  String get compareRemove => 'Удалить';

  @override
  String get compareTickerHint => 'Тикер, например MSFT';

  @override
  String get compareHint =>
      'Ключевые показатели рядом; лучшее значение в каждой строке выделено. Суммы указаны в валюте каждой акции.';

  @override
  String get compareNoAnalysis => 'Анализа пока нет';

  @override
  String get portfolioDividends => 'Дивиденды за год';

  @override
  String portfolioDividendYield(String percent) {
    return 'Доходность $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Ожидаемые годовые дивиденды рассчитаны по выплатам за последние 12 месяцев; будущие выплаты не гарантированы.';

  @override
  String positionDividend(String amount) {
    return 'Дивиденды: $amount в год';
  }

  @override
  String get chartAvgCost => 'Ваша ср.';

  @override
  String get chartAlertLevel => 'Оповещение';

  @override
  String get marketsToday => 'Рынки сегодня';

  @override
  String get notesTitle => 'Мои заметки';

  @override
  String get notesHint =>
      'Почему вы её купили, за чем следите, что заставит вас продать?';

  @override
  String get notesInfo =>
      'Хранится только на этом устройстве. ИИ-анализ учитывает ваши заметки.';

  @override
  String notesSaved(String date) {
    return 'Сохранено $date';
  }

  @override
  String get peersTitle => 'Похожие компании';

  @override
  String get portfolioExport => 'Экспорт в CSV';

  @override
  String get portfolioImport => 'Импорт из CSV';

  @override
  String get portfolioImportHint =>
      'Вставьте по одной покупке в строке: тикер, количество, цена, валюта, дата (ГГГГ-ММ-ДД). Столбцы можно разделять запятыми, точками с запятой или табуляцией; строка заголовка необязательна.';

  @override
  String get portfolioImportButton => 'Импортировать';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Добавлено $count покупки',
      many: 'Добавлено $count покупок',
      few: 'Добавлено $count покупки',
      one: 'Добавлена $count покупка',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Пропущено $count строки',
      many: 'Пропущено $count строк',
      few: 'Пропущено $count строки',
      one: 'Пропущена $count строка',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Портфель, избранное, ценовые оповещения и заметки синхронизируются на всех ваших устройствах.';

  @override
  String syncLast(String time) {
    return 'Последняя синхронизация: $time';
  }

  @override
  String get syncNow => 'Синхронизировать сейчас';

  @override
  String get syncFailed =>
      'Не удалось синхронизировать. Повторная попытка будет выполнена автоматически.';

  @override
  String get alertEmailTitle => 'Письмо при срабатывании оповещения';

  @override
  String get alertEmailOn =>
      'Мы проверяем ваши оповещения каждые несколько минут и присылаем письмо, даже когда приложение закрыто.';

  @override
  String get alertEmailSignIn =>
      'Войдите по электронной почте в Настройках, чтобы получать оповещения на почту, даже когда приложение закрыто.';

  @override
  String get portfolioHistory => 'Динамика стоимости';

  @override
  String get portfolioReviewTitle => 'ИИ-анализ портфеля';

  @override
  String get portfolioReviewIntro =>
      'ИИ изучает весь ваш портфель: концентрацию, зависимость от секторов и валют, общие риски ваших акций и дивиденды. Расходует 1 анализ.';

  @override
  String get portfolioReviewButton => 'Проанализировать мой портфель';

  @override
  String get portfolioReviewAgain => 'Проанализировать заново';

  @override
  String get portfolioReviewWorking => 'Анализируем ваш портфель…';

  @override
  String get digestTitle => 'Еженедельная сводка по электронной почте';

  @override
  String get digestHint =>
      'Каждый понедельник: как за прошлую неделю изменились ваше избранное и портфель, и ближайшие даты их отчётности.';

  @override
  String get benchmarkTitle => 'Сравнение с S&P 500';

  @override
  String get benchmarkTitleIndex => 'Сравнение с индексом';

  @override
  String get benchmarkHintIndex =>
      'Как если бы каждая покупка в тот же день была вложена в фонд, следующий за выбранным индексом. Без учёта дивидендов; прошлая доходность не предсказывает будущую.';

  @override
  String get benchmarkYours => 'Ваши покупки';

  @override
  String benchmarkAhead(String points) {
    return 'На $points п. п. лучше индекса';
  }

  @override
  String benchmarkBehind(String points) {
    return 'На $points п. п. отстаёт от индекса';
  }

  @override
  String get portfolioSell => 'Продать';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Продать $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Цена продажи за акцию ($currency)';
  }

  @override
  String get portfolioSellDate => 'Дата продажи';

  @override
  String get portfolioSellAll => 'Все';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'У вас $quantity';
  }

  @override
  String get portfolioSold => 'Продано';

  @override
  String get portfolioRealized => 'Реализовано';

  @override
  String get portfolioClosed => 'Закрытые позиции';

  @override
  String get portfolioClosedNote => 'Все акции проданы';

  @override
  String get portfolioTransactions => 'Сделки';

  @override
  String get portfolioRealizedByYear => 'Реализованная прибыль по годам';

  @override
  String get portfolioRealizedHint =>
      'Продажи сначала сопоставляются с самыми ранними покупками (FIFO) и пересчитываются по сегодняшнему курсу. Для налоговой декларации используйте выписку брокера.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'После этого анализа вышла новая квартальная отчётность ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Новая отчётность';

  @override
  String get portfolioImportBrokers =>
      'Распознаются и выгрузки из Revolut, Trading 212, Interactive Brokers, DEGIRO, Schwab, Fidelity и Robinhood, вместе с продажами и дивидендами (за вычетом налога, удержанного у источника); пополнения пропускаются.';

  @override
  String get portfolioImportFile => 'Выбрать файл';

  @override
  String offlineBanner(String time) {
    return 'Нет подключения – показаны последние сохранённые данные ($time).';
  }

  @override
  String get glossMarketCap =>
      'Сколько стоит вся компания на бирже: цена акции × количество акций.';

  @override
  String get glossSharesOutstanding =>
      'Сколько акций выпустила компания. Если их становится больше, каждой акции достаётся меньшая доля; обратный выкуп уменьшает их число.';

  @override
  String get glossPeTrailing =>
      'Цена ÷ прибыль на акцию за последние 12 месяцев: за сколько лет текущей прибыли вы платите. Ниже — дешевле, но у быстрорастущих компаний P/E обычно высокий.';

  @override
  String get glossPeForward =>
      'Как P/E, но с прибылью, которую аналитики ожидают в следующие 12 месяцев. Если он ниже трейлингового P/E, прибыль, как ожидается, вырастет.';

  @override
  String get glossPb =>
      'Цена ÷ балансовая стоимость (активы минус долги) на акцию. Около 1 значит, что рынок оценивает компанию в то, чем она владеет на бумаге.';

  @override
  String get glossPs =>
      'Рыночная стоимость ÷ годовая выручка. Полезен для компаний с небольшой прибылью или без неё; сравнивайте внутри одной отрасли.';

  @override
  String get glossEvToFcf =>
      'Стоимость компании с учётом долга (EV) ÷ деньги, которые она зарабатывает за год после инвестиций. Ниже — значит больше денег за ту же цену.';

  @override
  String get glossPeg =>
      'P/E ÷ ожидаемый годовой рост прибыли (%). Около 1 часто считается справедливым; показывает P/E с учётом роста.';

  @override
  String get glossEps =>
      'Прибыль на акцию за последние 12 месяцев. Растущий из года в год EPS — один из самых сильных признаков здоровой компании.';

  @override
  String get glossBeta =>
      'Насколько акция движется вместе с рынком: 1 = как рынок, 1,5 = колебания примерно на 50 % сильнее, ниже 1 = спокойнее.';

  @override
  String get glossRevenueTtm =>
      'Общие продажи за последние 12 месяцев до вычета любых расходов.';

  @override
  String get glossNetIncomeTtm =>
      'Прибыль, оставшаяся после всех расходов, процентов и налогов за последние 12 месяцев.';

  @override
  String get glossGrossMargin =>
      'Доля выручки, которая остаётся после прямых затрат на продукцию. Высокая маржа часто говорит о власти над ценами.';

  @override
  String get glossOperatingMargin =>
      'Доля выручки, которая остаётся после расходов на ведение бизнеса (зарплаты, аренда, маркетинг), до процентов и налогов.';

  @override
  String get glossNetMargin =>
      'Доля выручки, которая становится итоговой прибылью. 20 % значит, что из каждых 100 продаж 20 — прибыль.';

  @override
  String get glossRoe =>
      'Рентабельность капитала: годовая прибыль ÷ капитал владельцев. Показывает, насколько хорошо руководство использует деньги акционеров; выше примерно 15 % — сильный результат.';

  @override
  String get glossRoa =>
      'Рентабельность активов: годовая прибыль ÷ всё, чем владеет компания. Сравнивайте внутри одной отрасли.';

  @override
  String get glossDebtToEquity =>
      'Долг ÷ капитал владельцев. Выше — значит больше заёмных денег: больше риска при росте ставок или замедлении бизнеса.';

  @override
  String get glossCurrentRatio =>
      'Краткосрочные активы ÷ счета к оплате в течение года. Выше 1 — компания может покрыть ближайшие обязательства.';

  @override
  String get glossRevenueGrowth =>
      'Насколько выросла выручка по сравнению с прошлым годом.';

  @override
  String get glossEpsGrowth =>
      'Насколько выросла прибыль на акцию по сравнению с прошлым годом.';

  @override
  String get glossDividendYield =>
      'Годовой дивиденд ÷ цена акции: денежный доход за год в процентах от того, что вы платите.';

  @override
  String get glossDividendPerShare =>
      'Дивиденд, выплаченный на одну акцию за последний год.';

  @override
  String get glossPayoutRatio =>
      'Доля прибыли, которая выплачивается в виде дивидендов. Выше 100 % компания платит больше, чем зарабатывает, и это редко длится долго.';

  @override
  String get portfolioBeta => 'Бета портфеля';

  @override
  String get glossPortfolioBeta =>
      'Бета ваших акций, взвешенная по их стоимости: примерно на сколько процентов меняются ваши акции, когда рынок меняется на 1 %. Выше 1 — колеблются сильнее рынка, ниже 1 — слабее. Денежные средства не учитываются.';

  @override
  String get portfolioTop3 => 'Топ-3 позиции';

  @override
  String get glossPortfolioTop3 =>
      'Какая доля стоимости ваших акций приходится на три крупнейшие позиции. Чем она выше, тем сильнее плохие новости об одной компании могут ударить по всему портфелю.';

  @override
  String get glossDividendGrowth5y =>
      'Насколько в среднем за год рос дивиденд на акцию за последние пять лет. Стабильный рост обычно означает, что компания уверена в своём денежном потоке; снижение часто служит тревожным сигналом.';

  @override
  String get glossYieldOnCost =>
      'Дивиденды, полученные за последние 12 месяцев, делённые на то, что вы заплатили за акции, которые всё ещё держите. В отличие от дивидендной доходности, она измеряется относительно вашей цены покупки, а не сегодняшней цены.';

  @override
  String get glossTitle => 'Что это значит?';

  @override
  String get watchNewsTitle => 'Новости по вашим акциям';

  @override
  String get undo => 'Отменить';

  @override
  String get watchSort => 'Сортировка';

  @override
  String get watchSortOwn => 'Мой порядок';

  @override
  String get watchSortGainers => 'Сначала лидеры роста';

  @override
  String get watchSortLosers => 'Сначала лидеры падения';

  @override
  String get watchSortName => 'По тикеру (A–Z)';

  @override
  String get watchHint =>
      'Перетащите маркер, чтобы изменить порядок, смахните влево, чтобы удалить. Линия показывает последние 30 дней.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: ваш анализ готов.';
  }

  @override
  String alertFromCost(String price) {
    return 'От вашей средней цены покупки ($price):';
  }

  @override
  String get briefTitle => 'Сегодня с вашими акциями';

  @override
  String get briefButton => 'Подвести итог дня';

  @override
  String get briefHint =>
      'Короткая AI-сводка о том, как сегодня изменились ваш портфель и избранное и что о них пишут свежие новости. Анализ не расходуется.';

  @override
  String get briefRefresh => 'Обновить';

  @override
  String get sectionEarnings => 'Отчётность';

  @override
  String earningsNext(String date) {
    return 'Следующий отчёт: $date';
  }

  @override
  String get earningsExpected => 'Ожидаемый EPS';

  @override
  String get earningsReported => 'Фактический EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'На уровне ожидаемого EPS или выше в $beats из последних $total кварталов',
      one:
          'На уровне ожидаемого EPS или выше в $beats из последнего $total квартала',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol завтра публикует квартальную отчётность';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol сегодня публикует квартальную отчётность';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return '$symbol: сегодня ожидается дивиденд';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Около $amount. Когда поступит, запишите его в портфель.';
  }

  @override
  String get dividendRemindersTitle => 'Напоминания о дивидендах';

  @override
  String get dividendRemindersSubtitle =>
      'Уведомление в день ожидаемого дивиденда — по ритму записанных вами выплат, чтобы вы могли его записать';

  @override
  String get earningsRemindersTitle => 'Напоминания об отчётности';

  @override
  String get earningsRemindersSubtitle =>
      'Уведомление за день до публикации квартальной отчётности по акциям из избранного или портфеля';

  @override
  String addAllToFavorites(int count) {
    return 'Добавить все в избранное ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Импорт со скриншота';

  @override
  String get holdingsReading => 'Считываем ваши позиции…';

  @override
  String get holdingsReviewTitle => 'Найденные позиции';

  @override
  String get holdingsReviewHint =>
      'Проверьте числа, прежде чем добавлять их. Цена – это ваша средняя цена покупки за акцию, а не сегодняшняя цена.';

  @override
  String get holdingsNoPrice => 'На изображении нет средней цены покупки';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Добавить $count позиции',
      many: 'Добавить $count позиций',
      few: 'Добавить $count позиции',
      one: 'Добавить $count позицию',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'На этом изображении не найдено позиций по акциям. Попробуйте скриншот страницы позиций или портфеля у вашего брокера.';

  @override
  String get week52Range => 'Диапазон за 52 недели';

  @override
  String week52BelowHigh(String percent) {
    return 'На $percent ниже максимума за 52 недели';
  }

  @override
  String get week52AtHigh => 'На максимуме за 52 недели';

  @override
  String get alertKindTrailing => 'Упадёт от пика';

  @override
  String get alertTrailingPercent => 'Падение от пика (%)';

  @override
  String get alertTrailingHint =>
      'Следует за ценой вверх: оповещение сработает, когда цена упадёт на столько от максимума с момента установки.';

  @override
  String alertDescTrailing(String percent) {
    return 'Падение на $percent от пика';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'пик на данный момент: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol упала на $percent от пика';
  }

  @override
  String get sectionInsiders => 'Сделки инсайдеров';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count покупки',
      many: '$count покупок',
      few: '$count покупки',
      one: '$count покупка',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count продажи',
      many: '$count продаж',
      few: '$count продажи',
      one: '$count продажа',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Нетто: $shares акций';
  }

  @override
  String get insiderBuy => 'Куплено';

  @override
  String get insiderSell => 'Продано';

  @override
  String get insiderHint =>
      'Покупки и продажи на открытом рынке руководителями и директорами за последние 90 дней (SEC Form 4). Исполнение опционов и наградные акции не учитываются.';

  @override
  String get insiderNone =>
      'За последние 90 дней инсайдеры не покупали и не продавали акции на открытом рынке.';

  @override
  String get analystTrend => 'Как менялись мнения месяц за месяцем';

  @override
  String get watchListAll => 'Все';

  @override
  String get watchListNew => 'Новый список';

  @override
  String get watchListName => 'Название списка';

  @override
  String get watchListRename => 'Переименовать список';

  @override
  String get watchListDelete => 'Удалить список';

  @override
  String get watchListAddTo => 'Добавить в список';

  @override
  String get watchListEmpty =>
      'В этом списке пока нет акций. Нажмите кнопку списка рядом с акцией, чтобы добавить её.';

  @override
  String get portfolioAskTitle => 'Вопросы по вашему портфелю';

  @override
  String get rangeYtd => 'С нач. г.';

  @override
  String get backupTitle => 'Резервная копия';

  @override
  String get backupSave => 'Сохранить резервную копию';

  @override
  String get backupSaveHint =>
      'Ваше избранное, списки, портфель, оповещения и заметки в одном файле.';

  @override
  String get backupRestore => 'Восстановить из резервной копии';

  @override
  String get backupRestoreHint =>
      'Добавляет содержимое файла; ничего из ваших текущих данных не удаляется.';

  @override
  String get backupRestored => 'Резервная копия восстановлена.';

  @override
  String get backupInvalid =>
      'Этот файл не является резервной копией WhatStock.';

  @override
  String get allocationPositions => 'Акции';

  @override
  String get allocationSectors => 'Секторы';

  @override
  String get allocationCurrencies => 'Валюты';

  @override
  String get allocationAccounts => 'Счета';

  @override
  String get compareReturn1y => 'Доходность за 1 год';

  @override
  String get compareFromHigh => 'От максимума за 52 недели';

  @override
  String get briefAutoTitle => 'Ежедневная сводка каждое утро';

  @override
  String get briefAutoSubtitle =>
      '«Сегодня с вашими акциями» создаётся автоматически после 7:00, пока приложение запущено; на компьютерах об этом сообщит уведомление. Расходуется дневной лимит вопросов, а не анализ.';

  @override
  String get targetsButton => 'Целевая структура';

  @override
  String get targetsTitle => 'Целевая структура';

  @override
  String get targetsHint =>
      'Укажите, какую долю портфеля должна занимать каждая акция. Оставьте поле пустым, если цели нет. Приложение покажет, что купить или продать, чтобы её достичь.';

  @override
  String targetsSum(String percent) {
    return 'Итого: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Купить ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Продать ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Соответствует цели';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol превзошёл ожидаемый EPS';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol не дотянул до ожидаемого EPS';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'Фактический EPS $actual, ожидался $estimate';
  }

  @override
  String get newsExplain => 'Что это значит?';

  @override
  String get watchAlertAll => 'Оповещение о сильных движениях за день';

  @override
  String get watchAlertAllHint =>
      'Ценовое оповещение для каждой акции в этом списке: сработает, когда она за день изменится на столько вверх или вниз. Акции, у которых оно уже есть, сохранят своё.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Установлено $count оповещения',
      many: 'Установлено $count оповещений',
      few: 'Установлено $count оповещения',
      one: 'Установлено $count оповещение',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Экспорт реализованной прибыли (CSV)';

  @override
  String get portfolioAnnualReturn => 'Годовая доходность';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / год';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Годовая доходность, взвешенная по денежным потокам (XIRR): учитывает, когда вы покупали и продавали, поэтому деньги, добавленные позже, её не искажают. Показывается, когда вашей первой покупке исполнится хотя бы год; дивиденды не учитываются.';

  @override
  String get eventsAddToCalendar => 'Добавить в календарь (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Уведомление о портфеле';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Уведомление, когда весь портфель за день меняется на столько.';

  @override
  String get portfolioMoveAlertOff => 'Выключено';

  @override
  String portfolioMoveUp(String percent) {
    return 'Ваш портфель сегодня вырос на $percent';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Ваш портфель сегодня упал на $percent';
  }

  @override
  String get whatIfTitle => 'А если бы вы вложили?';

  @override
  String get whatIfAmount => 'Сумма';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount, вложенные $period назад, сегодня стоили бы';
  }

  @override
  String get whatIfNote =>
      'Только по цене акции: дивиденды, комиссии и налоги не учтены. Прошлая доходность не предсказывает будущую.';

  @override
  String get watchShare => 'Поделиться списком';

  @override
  String get watchImport => 'Добавить тикеры';

  @override
  String get watchImportHint =>
      'Вставьте тикеры через запятую, пробел или с новой строки – например, список, которым с вами поделились.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Добавлено $count акции',
      many: 'Добавлено $count акций',
      few: 'Добавлено $count акции',
      one: 'Добавлена $count акция',
      zero: 'Новых акций нет',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Сначала крупнейшие';

  @override
  String get positionsSortGain => 'Сначала лучшая общая доходность';

  @override
  String get positionsSortToday => 'Сначала лучшие за сегодня';

  @override
  String get chartMyBuys => 'Ваши покупки';

  @override
  String get chartMySells => 'Ваши продажи';

  @override
  String get shortcutsTitle => 'Сочетания клавиш';

  @override
  String usMarketOpen(String time) {
    return 'Рынок США открыт · закроется через $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Рынок США закрыт · откроется через $time';
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
  String get dividendGoalSet => 'Задать месячную цель по дивидендам';

  @override
  String get dividendGoalTitle => 'Месячная цель по дивидендам';

  @override
  String get dividendGoalAmount => 'Дивиденды в месяц';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Около $amount в месяц при текущей доходности: $percent от цели $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Около $amount в месяц при текущей доходности: цель $goal достигнута';
  }

  @override
  String get portfolioAccount => 'Счёт';

  @override
  String get portfolioAccountHint => 'напр. ИИС (необязательно)';

  @override
  String get portfolioAccountAdd => 'Указать счёт';

  @override
  String get portfolioAccountsAll => 'Все счета';

  @override
  String get portfolioAccountNote =>
      'Только сделки и дивиденды по этому счёту. Денежные средства, цели и ИИ-анализ — в разделе «Все счета».';

  @override
  String get portfolioNoAccount => 'Без счёта';

  @override
  String portfolioFee(String currency) {
    return 'Комиссия ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Добавить комиссию';

  @override
  String portfolioFeeRow(String amount) {
    return 'Комиссия: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'Итоги за год';

  @override
  String get portfolioProceeds => 'Выручка от продаж';

  @override
  String get portfolioCostBasis => 'Стоимость приобретения';

  @override
  String get portfolioFeesPaid => 'Уплаченные комиссии';

  @override
  String get portfolioAnnualSummaryNote =>
      'Суммы в исходной валюте, без пересчёта. Выручка указана за вычетом комиссии при продаже; стоимость приобретения включает комиссию при покупке (FIFO). Для налоговой декларации пересчитайте по курсу, который требует ваша налоговая служба.';

  @override
  String get portfolioShare => 'Поделиться доходностью';

  @override
  String get portfolioShareHeading => 'Мой портфель';

  @override
  String get portfolioTopHoldings => 'Крупнейшие позиции';

  @override
  String get portfolioShareNote => 'Передаются только проценты, без сумм.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count позиции',
      many: '$count позиций',
      few: '$count позиции',
      one: '$count позиция',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'Не инвестиционная рекомендация';

  @override
  String get contributionButton => 'Вложить новые деньги';

  @override
  String contributionAmount(String currency) {
    return 'Сумма для вложения ($currency)';
  }

  @override
  String get contributionHint =>
      'Только покупки, без продаж: деньги сначала идут в позиции, сильнее всего отстающие от цели.';

  @override
  String contributionShares(String shares) {
    return '≈ $shares шт.';
  }

  @override
  String contributionMissing(String symbols) {
    return 'Нет текущей цены для $symbols: не учтены при распределении.';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'Если годовая доходность сохранится ($rate), вы достигнете цели примерно в $year году.';
  }

  @override
  String get portfolioMaxDrawdown => 'Максимальная просадка';

  @override
  String get glossMaxDrawdown =>
      'Наибольшее падение стоимости ваших акций от прежнего пика до последующего минимума без учёта ваших покупок и продаж (взвешенное по времени). Показывает, насколько глубокую просадку ваш портфель уже пережил.';

  @override
  String watchSince(String date) {
    return 'С момента добавления в избранное ($date)';
  }

  @override
  String get portfolioSampleTry => 'Попробовать на демо-портфеле';

  @override
  String get portfolioSampleBanner =>
      'Это демо-портфель. Добавьте рядом свои покупки или удалите его.';

  @override
  String get portfolioSampleRemove => 'Удалить демо-портфель';

  @override
  String get portfolioStopsAll => 'Трейлинг-стоп для всех позиций';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Установлено $count трейлинг-стопа',
      many: 'Установлено $count трейлинг-стопов',
      few: 'Установлено $count трейлинг-стопа',
      one: 'Установлен $count трейлинг-стоп',
      zero: 'У всех позиций уже есть трейлинг-стоп',
    );
    return '$_temp0';
  }

  @override
  String portfolioSinceSale(String percent) {
    return '$percent с момента продажи';
  }

  @override
  String get lotPreviewRealized => 'Реализовано по этой продаже (FIFO):';

  @override
  String lotPreviewAverage(String after, String before) {
    return 'Новая средняя цена покупки: $after (сейчас $before)';
  }

  @override
  String get portfolioYtdReturn => 'Доходность в этом году';

  @override
  String get glossTwrYtd =>
      'Доходность, взвешенная по времени, с начала года (или с вашей первой покупки, если она была в этом году): каждый день учитывает изменение акций, которыми вы владели в этот день, а дни связываются в цепочку – деньги, которые вы вносите или выводите, не считаются доходностью, поэтому её можно сравнить с индексом. Под ней: выбранный индекс за тот же период.';

  @override
  String alertDistance(String price, String percent) {
    return 'Сейчас $price · осталось $percent';
  }

  @override
  String get watchSortSince => 'По изменению с момента добавления';

  @override
  String get portfolioTodayMovers => 'Больше всего изменились сегодня:';

  @override
  String get lotNoteAdd => 'Добавить заметку';

  @override
  String get lotNoteBuyHint =>
      'Почему вы покупаете? Попадёт в заметки к акции, с датой.';

  @override
  String get lotNoteSellHint =>
      'Почему вы продаёте? Попадёт в заметки к акции, с датой.';

  @override
  String get lotNoteBought => 'Куплено';

  @override
  String get portfolioGoalSet => 'Задать цель';

  @override
  String get portfolioGoalTitle => 'Цель портфеля';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent от цели $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Цель $amount достигнута';
  }

  @override
  String get portfolioGoalRemove => 'Удалить цель';

  @override
  String get alertEdit => 'Изменить оповещение';

  @override
  String get positionOpenLots => 'Ещё в портфеле (сначала самые ранние)';

  @override
  String get lotRemoved => 'Сделка удалена';

  @override
  String get alertDeleted => 'Оповещение удалено';

  @override
  String get alertsClearTriggered => 'Очистить сработавшие оповещения';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Удалено $count оповещения',
      many: 'Удалено $count оповещений',
      few: 'Удалено $count оповещения',
      one: 'Удалено $count оповещение',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Главный экран';

  @override
  String get allocationCountries => 'Страны';

  @override
  String get newsExplainNoteResearch =>
      'Объяснение от ИИ: проверяет факты в интернете, открывает статью и оценивает, насколько надёжен источник. Не является инвестиционной рекомендацией. Расходуется дневной лимит вопросов, а не анализ.';

  @override
  String get sourceOfficial => 'Официально';

  @override
  String get sourcePressRelease => 'Пресс-релиз';

  @override
  String get sourceMajorNews => 'Крупное СМИ';

  @override
  String get sourceOpinion => 'Мнение';

  @override
  String get earningsSummaryButton => 'Что было в последнем отчёте?';

  @override
  String get earningsSummaryNote =>
      'Краткое изложение от ИИ: сообщение компании о результатах и публикации в прессе, которые он находит в интернете. Не является инвестиционной рекомендацией. Расходуется дневной лимит вопросов, а не анализ.';

  @override
  String get compareLastSurprise => 'EPS за последний квартал vs ожидания';

  @override
  String get compareNextReport => 'Следующий отчёт';

  @override
  String get resolvingDescription =>
      'Определяем, какую акцию вы имеете в виду…';

  @override
  String get instrumentTitle => 'Об этом инструменте';

  @override
  String get instrumentHint =>
      'Для этого тикера нет профиля компании – это может быть ETF, фонд или депозитарная расписка. Спросите у ИИ, что это, что входит в его состав и сколько это стоит.';

  @override
  String get instrumentAsk => 'Что это?';

  @override
  String get instrumentNote =>
      'Объяснение от ИИ на основе страницы фонда у эмитента и финансовых сайтов, которые он находит в интернете. Не является инвестиционной рекомендацией. Расходуется дневной лимит вопросов, а не анализ.';

  @override
  String suggestAskAi(String query) {
    return 'Спросить ИИ: «$query»';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Нет текущей цены для $symbols.';
  }

  @override
  String get eventsRecentResults => 'Свежая отчётность';

  @override
  String get saveToNotes => 'Сохранить в мои заметки';

  @override
  String get savedToNotes => 'Сохранено в ваших заметках';

  @override
  String get portfolioDividendsReceived => 'Полученные дивиденды';

  @override
  String get portfolioDividendsThisYear => 'В этом году';

  @override
  String get portfolioDividendsAllTime => 'За всё время';

  @override
  String get portfolioAddDividend => 'Добавить дивиденд';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Полученная сумма ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Дата выплаты';

  @override
  String get portfolioDividendsEmpty =>
      'Дивиденды пока не записаны. Добавьте их вручную или импортируйте выгрузку от брокера – строки с дивидендами тоже будут учтены.';

  @override
  String get portfolioSplit => 'Сплит акций';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Сплит акций: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Покупки и продажи с датой до сплита корректируются: количество акций умножается, а цена за акцию делится, поэтому стоимость не меняется.';

  @override
  String get portfolioSplitRatio => 'Коэффициент (новые : старые)';

  @override
  String get portfolioSplitRatioError =>
      'Введите коэффициент, например 10:1, или 1:10 для обратного сплита (консолидации).';

  @override
  String get portfolioSplitDate => 'Дата сплита';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Сплит акций $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Сплит акций удалён';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Добавлено сплитов акций: $count',
      one: 'Добавлен 1 сплит акций',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Добавлено $count дивиденда',
      many: 'Добавлено $count дивидендов',
      few: 'Добавлено $count дивиденда',
      one: 'Добавлен $count дивиденд',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Экспорт дивидендов (CSV)';

  @override
  String get portfolioDividendDeleted => 'Дивиденд удалён';

  @override
  String get portfolioDividendsHint =>
      'Суммы такие, какими они пришли на ваш счёт, в валюте выплаты; итоги пересчитаны по сегодняшнему курсу. Для налоговой декларации используйте отчёт брокера.';

  @override
  String get awayTitle => 'Пока вас не было';

  @override
  String awaySince(String when) {
    return 'С $when';
  }

  @override
  String get awayQuiet => 'Ничего особо не изменилось.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Сработало $count уведомления',
      many: 'Сработало $count уведомлений',
      few: 'Сработало $count уведомления',
      one: 'Сработало $count уведомление',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Опубликовали отчёты: $symbols';
  }

  @override
  String get moveWhyButton => 'Почему она движется сегодня?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent сегодня';
  }

  @override
  String get moveWhyNote =>
      'Объяснение ИИ на основе сегодняшних новостей из интернета; настоящая причина может быть неизвестна или иной. Не является инвестиционной рекомендацией. Расходует дневной лимит вопросов, а не анализ.';

  @override
  String get sectionTechnical => 'Техническая картина';

  @override
  String get labelSma50 => 'Средняя за 50 дней';

  @override
  String get labelSma200 => 'Средняя за 200 дней';

  @override
  String get labelRsi => 'RSI (14 дней)';

  @override
  String get labelVolatility30 => 'Волатильность (30 дней)';

  @override
  String techAbove(String percent) {
    return '$percent выше';
  }

  @override
  String techBelow(String percent) {
    return '$percent ниже';
  }

  @override
  String get techOverbought => 'перекупленность';

  @override
  String get techOversold => 'перепроданность';

  @override
  String get techNeutral => 'нейтрально';

  @override
  String get techGoldenCross =>
      'Средняя за 50 дней выше средней за 200 дней – по классической трактовке восходящий тренд.';

  @override
  String get techDeathCross =>
      'Средняя за 50 дней ниже средней за 200 дней – по классической трактовке нисходящий тренд.';

  @override
  String get glossSma50 =>
      'Средняя цена закрытия за последние 50 торговых дней. Цену выше неё часто считают признаком краткосрочной силы, ниже – слабости.';

  @override
  String get glossSma200 =>
      'Средняя цена закрытия за последние 200 торговых дней – классическая линия долгосрочного тренда. Многие инвесторы считают цену выше неё долгосрочным восходящим трендом.';

  @override
  String get glossRsi =>
      'Индекс относительной силы: сравнивает недавний рост с недавними падениями по шкале от 0 до 100. Выше 70 акцию часто называют перекупленной (она быстро выросла), ниже 30 – перепроданной, но сильный тренд может долго оставаться там.';

  @override
  String get glossVolatility =>
      'Насколько сильно цена колеблется день ко дню, в годовом выражении: 20% означает, что в обычный год она движется примерно в пределах ±20%. Чем выше волатильность, тем крупнее движения в обе стороны.';

  @override
  String get techNote =>
      'Рассчитано по дневным ценам закрытия. Технические сигналы описывают прошлое, а не будущее.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$above из $count позиций выше своей 200-дневной средней';
  }

  @override
  String get watchSignalsTitle => 'Сигналы';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · перепроданность';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · перекупленность';
  }

  @override
  String get signalCrossedAbove => 'пробила вверх среднюю за 200 дней';

  @override
  String get signalCrossedBelow => 'пробила вниз среднюю за 200 дней';

  @override
  String get signalAlertsTitle => 'Уведомления о технических сигналах';

  @override
  String get signalAlertsSubtitle =>
      'Раз в день, когда отслеживаемая вами акция входит в зону перепроданности или перекупленности (RSI) либо её цена пересекает среднюю за 200 дней.';

  @override
  String get signalAlertsNotification => 'Технические сигналы';

  @override
  String get glossaryPageTitle => 'Глоссарий';

  @override
  String get glossaryPageSubtitle =>
      'Простые объяснения каждого показателя в приложении, от P/E до RSI';

  @override
  String get glossarySearchHint => 'Поиск по глоссарию';

  @override
  String get portfolioCash => 'Денежные средства';

  @override
  String get portfolioCashTitle => 'Остаток денежных средств';

  @override
  String get portfolioCashHint =>
      'Неинвестированные деньги на брокерском счёте, по валютам. Учитываются в общей стоимости и структуре, но не в доходности.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Сумма ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Указать остаток средств';

  @override
  String get portfolioDividendsByMonth => 'По месяцам';

  @override
  String get dividendsLegendReceived => 'Полученные';

  @override
  String get dividendsLegendExpected => 'Ожидаемые';

  @override
  String get portfolioDividendsExpected => 'Ожидаются далее';

  @override
  String get portfolioDividendsExpectedNote =>
      'Оценка по датам и суммам записанных вами выплат; компании могут изменить или отменить их.';

  @override
  String portfolioDividendAround(String date) {
    return 'около $date';
  }
}
