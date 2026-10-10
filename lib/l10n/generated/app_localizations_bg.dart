// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bulgarian (`bg`).
class AppLocalizationsBg extends AppLocalizations {
  AppLocalizationsBg([String locale = 'bg']) : super(locale);

  @override
  String get appTitle => 'StockLens';

  @override
  String get homeTagline => 'Снимайте акция и научете всичко за нея.';

  @override
  String get homeHint =>
      'Сертификат за акции, екран на брокерско приложение, вестник или фирмено лого – всичко, което идентифицира акция.';

  @override
  String get takePhoto => 'Направи снимка';

  @override
  String get chooseFromGallery => 'Избор от галерията';

  @override
  String get chooseImage => 'Избор на изображение';

  @override
  String get enterTickerManually => 'Ръчно въвеждане на тикер';

  @override
  String get tickerInputLabel => 'Тикер символ';

  @override
  String get tickerInputHint => 'напр. AAPL';

  @override
  String get lookUp => 'Търсене';

  @override
  String demoModeBanner(String symbols) {
    return 'Демо режим – не е конфигуриран ключ за пазарни данни. Примерни данни са налични за: $symbols.';
  }

  @override
  String get recognizing => 'Анализ на изображението…';

  @override
  String get loadingData => 'Зареждане на данни…';

  @override
  String get noCandidatesTitle => 'Не е разпозната акция';

  @override
  String get noCandidatesBody =>
      'Не успяхме да идентифицираме акция на това изображение. Опитайте с по-ясна снимка или въведете тикера ръчно.';

  @override
  String get whatWeSaw => 'Какво видяхме';

  @override
  String get chooseCandidateTitle => 'Коя акция имахте предвид?';

  @override
  String confidencePercent(int percent) {
    return '$percent% сигурност';
  }

  @override
  String get settings => 'Настройки';

  @override
  String get language => 'Език';

  @override
  String get systemLanguage => 'Системен език';

  @override
  String get about => 'За приложението';

  @override
  String get disclaimer =>
      'Това приложение предоставя само информация и не е инвестиционен съвет. Данните може да са забавени или неточни.';

  @override
  String dataSource(String source) {
    return 'Източник на данни: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Разпознаване: $source';
  }

  @override
  String get retry => 'Опитай отново';

  @override
  String get cancel => 'Отказ';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Затвори';

  @override
  String get errorGeneric => 'Нещо се обърка.';

  @override
  String get errorSectionUnavailable => 'Този раздел не можа да бъде зареден.';

  @override
  String get notAvailable => 'н/д';

  @override
  String get sectionIdentity => 'Идентификация';

  @override
  String get sectionPrice => 'Цена';

  @override
  String get sectionValuation => 'Оценка';

  @override
  String get sectionFinancials => 'Финансови показатели';

  @override
  String get sectionDividend => 'Дивидент';

  @override
  String get sectionProfile => 'Профил на компанията';

  @override
  String get sectionAnalysts => 'Оценки на аналитици';

  @override
  String get sectionNews => 'Новини';

  @override
  String get sectionRecognition => 'Детайли за разпознаването';

  @override
  String get labelSymbol => 'Тикер';

  @override
  String get labelExchange => 'Борса';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Валута';

  @override
  String get labelCountry => 'Държава';

  @override
  String get labelIndustry => 'Индустрия';

  @override
  String get labelSector => 'Сектор';

  @override
  String get labelWebsite => 'Уебсайт';

  @override
  String get labelIpoDate => 'Дата на IPO';

  @override
  String get labelMarketCap => 'Пазарна капитализация';

  @override
  String get labelSharesOutstanding => 'Акции в обращение';

  @override
  String get labelEmployees => 'Служители';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Централа';

  @override
  String get labelDescription => 'Описание';

  @override
  String get labelLastPrice => 'Последна цена';

  @override
  String get labelChange => 'Промяна';

  @override
  String get labelOpen => 'Отваряне';

  @override
  String get labelDayHigh => 'Дневен максимум';

  @override
  String get labelDayLow => 'Дневен минимум';

  @override
  String get labelPreviousClose => 'Предишно затваряне';

  @override
  String get labelWeek52High => '52-седмичен максимум';

  @override
  String get labelWeek52Low => '52-седмичен минимум';

  @override
  String get labelAverageVolume10d => 'Среден обем (10 дни)';

  @override
  String updatedAt(String time) {
    return 'Обновено $time';
  }

  @override
  String get labelPeTrailing => 'P/E (текущо)';

  @override
  String get labelPeForward => 'P/E (прогнозно)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / свободен паричен поток';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Бета';

  @override
  String get labelRevenueTtm => 'Приходи (TTM)';

  @override
  String get labelNetIncomeTtm => 'Нетна печалба (TTM)';

  @override
  String get labelGrossMargin => 'Брутен марж';

  @override
  String get labelOperatingMargin => 'Операционен марж';

  @override
  String get labelNetMargin => 'Нетен марж';

  @override
  String get labelRoe => 'Възвръщаемост на капитала';

  @override
  String get labelRoa => 'Възвръщаемост на активите';

  @override
  String get labelDebtToEquity => 'Дълг / собствен капитал';

  @override
  String get labelCurrentRatio => 'Коефициент на текуща ликвидност';

  @override
  String get labelRevenueGrowth => 'Ръст на приходите (YoY)';

  @override
  String get labelEpsGrowth => 'Ръст на EPS (YoY)';

  @override
  String get labelDividendYield => 'Дивидентна доходност';

  @override
  String get labelDividendPerShare => 'Дивидент на акция';

  @override
  String get labelPayoutRatio => 'Коефициент на изплащане';

  @override
  String get labelConsensus => 'Консенсус';

  @override
  String get ratingStrongBuy => 'Силна покупка';

  @override
  String get ratingBuy => 'Покупка';

  @override
  String get ratingHold => 'Задържане';

  @override
  String get ratingSell => 'Продажба';

  @override
  String get ratingStrongSell => 'Силна продажба';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count аналитици',
      one: '1 аналитик',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Период: $period';
  }

  @override
  String get noNews => 'Няма скорошни новини.';

  @override
  String get openArticle => 'Отвори статията';

  @override
  String get openLinkFailed => 'Връзката не можа да бъде отворена.';

  @override
  String get recognitionSummary => 'Обобщение';

  @override
  String get recognitionEvidence => 'Защо смятаме така';

  @override
  String get recognitionRawText => 'Текст, разчетен от изображението';

  @override
  String get errMissingAnthropicKey =>
      'Разпознаването на изображения не е конфигурирано (няма ANTHROPIC_API_KEY). Въведете тикера ръчно.';

  @override
  String get errRecognitionUnreachable =>
      'Няма връзка с услугата за разпознаване. Проверете интернет връзката си.';

  @override
  String errRecognitionHttp(String status) {
    return 'Услугата за разпознаване върна грешка (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Услугата за разпознаване не можа да обработи това изображение.';

  @override
  String get errRecognitionTruncated =>
      'Отговорът от разпознаването беше прекъснат. Моля, опитайте отново.';

  @override
  String get errRecognitionBadResponse =>
      'Неочакван отговор от услугата за разпознаване.';

  @override
  String get errRecognitionEmpty =>
      'Услугата за разпознаване върна празен отговор.';

  @override
  String get errMissingFinnhubKey =>
      'Пазарните данни не са конфигурирани (няма FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Няма връзка с услугата за пазарни данни. Проверете интернет връзката си.';

  @override
  String get errMarketRateLimited =>
      'Твърде много заявки към услугата за пазарни данни. Моля, изчакайте една минута.';

  @override
  String errMarketHttp(String status) {
    return 'Услугата за пазарни данни върна грешка (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Неочакван отговор от услугата за пазарни данни.';

  @override
  String errNoQuote(String symbol) {
    return 'Не са намерени ценови данни за $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Не е намерен профил на компания за $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Демо режимът поддържа само $symbols. Добавете FINNHUB_API_KEY за данни в реално време.';
  }

  @override
  String errUnknown(String detail) {
    return 'Нещо се обърка: $detail';
  }

  @override
  String get newSearch => 'Ново търсене';

  @override
  String get recentSearches => 'Скорошни';

  @override
  String get noRecentSearches => 'Още няма скорошни търсения.';

  @override
  String get clearRecent => 'Изчисти скорошните';

  @override
  String get greeting => 'Коя акция да разгледаме?';

  @override
  String get searchHint => 'Тикер или име на компания';

  @override
  String get attachImage => 'Прикачи изображение';

  @override
  String get searchResultsTitle => 'Резултати от търсенето';

  @override
  String errNoResults(String query) {
    return 'Не са намерени акции за „$query“.';
  }

  @override
  String get quickBarHint => 'Въведете тикер или име на компания…';

  @override
  String get openFullWindow => 'Отвори прозореца';

  @override
  String hotkeyHint(String shortcut) {
    return 'Натиснете $shortcut отвсякъде, за да извикате StockLens.';
  }

  @override
  String get trayOpen => 'Отвори StockLens';

  @override
  String get trayQuickSearch => 'Бързо търсене';

  @override
  String get trayQuit => 'Изход';

  @override
  String get appearance => 'Външен вид';

  @override
  String get themeSystem => 'Системна';

  @override
  String get themeDark => 'Тъмна';

  @override
  String get themeLight => 'Светла';

  @override
  String get back => 'Назад';

  @override
  String get aiSectionTitle => 'AI анализ';

  @override
  String get aiIntro =>
      'Подробен преглед, написан от AI: обобщение на последните новини, бизнесът, силните страни, рисковете и скритите фактори, оценката и какво да следите.';

  @override
  String get aiGenerate => 'Генерирай анализ';

  @override
  String get aiRegenerate => 'Генерирай отново';

  @override
  String get aiGenerating =>
      'Анализът се подготвя… това може да отнеме минута-две.';

  @override
  String get aiSources => 'Източници';

  @override
  String aiGeneratedAt(String time) {
    return 'Генерирано $time';
  }

  @override
  String get aiDisclaimer =>
      'Анализ, генериран от AI въз основа на публични данни и актуални новини. Може да съдържа грешки или да е остарял и не представлява инвестиционен съвет.';

  @override
  String get errAiNotConfigured =>
      'AI анализът не е конфигуриран (няма ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Няма връзка с AI услугата. Проверете интернет връзката си.';

  @override
  String errAiHttp(String status) {
    return 'AI услугата върна грешка (HTTP $status).';
  }

  @override
  String get errAiRefused => 'AI услугата отказа да анализира тази акция.';

  @override
  String get errAiBadResponse => 'Неочакван отговор от AI услугата.';

  @override
  String get sectionChart => 'Ценова графика';

  @override
  String get rangeOneWeek => '1С';

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
      'Ценовата история не е налична от текущия източник на данни.';

  @override
  String get sectionStatements => 'Финансови отчети (годишни)';

  @override
  String get labelFiscalYear => 'Финансова година';

  @override
  String get labelRevenue => 'Приходи';

  @override
  String get labelNetIncome => 'Нетна печалба';

  @override
  String get labelTotalAssets => 'Общо активи';

  @override
  String get labelTotalLiabilities => 'Общо пасиви';

  @override
  String get labelEquity => 'Собствен капитал';

  @override
  String get labelOperatingCashFlow => 'Оперативен паричен поток';

  @override
  String get statementsUnavailable =>
      'За тази акция няма налични публикувани финансови отчети.';

  @override
  String get launchAtLogin => 'Стартиране при влизане';

  @override
  String get hotkeyLabel => 'Глобална клавишна комбинация';

  @override
  String get hotkeyRecordHint =>
      'Щракнете тук, после натиснете новата клавишна комбинация';

  @override
  String get hotkeyReset => 'Възстанови по подразбиране';

  @override
  String get pasteImage => 'Постави изображение от клипборда';

  @override
  String get errClipboardNoImage => 'В клипборда няма изображение.';

  @override
  String get favorites => 'Любими';

  @override
  String get addToFavorites => 'Добави към любими';

  @override
  String get removeFromFavorites => 'Премахни от любими';

  @override
  String get noFavorites =>
      'Още няма любими. Докоснете звездата на акция, за да я добавите.';

  @override
  String get displayCurrency => 'Валута за показване';

  @override
  String get displayCurrencyNone => 'Само собствената валута на акцията';

  @override
  String labelConverted(String currency) {
    return '≈ в $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Курс: 1 $from = $rate $to (ЕЦБ, $date)';
  }
}
