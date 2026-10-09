// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Reszveny';

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
  String get errRecognitionRefused => 'Служба распознавания не смогла обработать это изображение.';

  @override
  String get errRecognitionTruncated => 'Ответ службы распознавания был обрезан. Попробуйте ещё раз.';

  @override
  String get errRecognitionBadResponse => 'Неожиданный ответ от службы распознавания.';

  @override
  String get errRecognitionEmpty => 'Служба распознавания вернула пустой ответ.';

  @override
  String get errMissingFinnhubKey => 'Рыночные данные не настроены (нет FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Не удалось связаться со службой рыночных данных. Проверьте подключение к интернету.';

  @override
  String get errMarketRateLimited => 'Слишком много запросов к службе рыночных данных. Подождите минуту.';

  @override
  String errMarketHttp(String status) {
    return 'Служба рыночных данных вернула ошибку (HTTP $status).';
  }

  @override
  String get errMarketBadResponse => 'Неожиданный ответ от службы рыночных данных.';

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
    return 'Нажмите $shortcut в любом месте, чтобы вызвать Reszveny.';
  }

  @override
  String get trayOpen => 'Открыть Reszveny';

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
      'Подробный обзор, написанный ИИ: сводка последних новостей, бизнес, сильные стороны, риски и скрытые факторы, оценка и за чем следить.';

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
  String get errAiNotConfigured => 'ИИ-анализ не настроен (нет ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable => 'Не удалось связаться со службой ИИ. Проверьте подключение к интернету.';

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
  String get chartUnavailable => 'История цен недоступна в текущем источнике данных.';

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
  String get statementsUnavailable => 'Опубликованная финансовая отчётность для этой акции недоступна.';

  @override
  String get launchAtLogin => 'Запускать при входе в систему';

  @override
  String get hotkeyLabel => 'Глобальное сочетание клавиш';

  @override
  String get hotkeyRecordHint => 'Нажмите здесь, затем нажмите новое сочетание клавиш';

  @override
  String get hotkeyReset => 'Сбросить по умолчанию';

  @override
  String get pasteImage => 'Вставить изображение из буфера обмена';

  @override
  String get errClipboardNoImage => 'В буфере обмена нет изображения.';
}
