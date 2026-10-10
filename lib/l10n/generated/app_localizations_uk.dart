// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get appTitle => 'StockLens';

  @override
  String get homeTagline => 'Сфотографуйте акцію та дізнайтеся про неї все.';

  @override
  String get homeHint =>
      'Сертифікат акції, екран брокерського застосунку, газета або логотип компанії – будь-що, що дозволяє визначити акцію.';

  @override
  String get takePhoto => 'Зробити фото';

  @override
  String get chooseFromGallery => 'Вибрати з галереї';

  @override
  String get chooseImage => 'Вибрати зображення';

  @override
  String get enterTickerManually => 'Ввести тікер вручну';

  @override
  String get tickerInputLabel => 'Тікер';

  @override
  String get tickerInputHint => 'напр. AAPL';

  @override
  String get lookUp => 'Знайти';

  @override
  String demoModeBanner(String symbols) {
    return 'Демо-режим – ключ ринкових даних не налаштовано. Зразкові дані доступні для: $symbols.';
  }

  @override
  String get recognizing => 'Аналіз зображення…';

  @override
  String get loadingData => 'Завантаження даних…';

  @override
  String get noCandidatesTitle => 'Акцію не розпізнано';

  @override
  String get noCandidatesBody =>
      'Не вдалося визначити акцію на цьому зображенні. Спробуйте чіткіше фото або введіть тікер вручну.';

  @override
  String get whatWeSaw => 'Що ми побачили';

  @override
  String get chooseCandidateTitle => 'Яку акцію ви мали на увазі?';

  @override
  String confidencePercent(int percent) {
    return 'Упевненість $percent%';
  }

  @override
  String get settings => 'Налаштування';

  @override
  String get language => 'Мова';

  @override
  String get systemLanguage => 'Системна за замовчуванням';

  @override
  String get about => 'Про застосунок';

  @override
  String get disclaimer =>
      'Цей застосунок надає лише інформацію і не є інвестиційною порадою. Дані можуть бути затримані або неточні.';

  @override
  String dataSource(String source) {
    return 'Джерело даних: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Розпізнавання: $source';
  }

  @override
  String get retry => 'Повторити';

  @override
  String get cancel => 'Скасувати';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Закрити';

  @override
  String get errorGeneric => 'Щось пішло не так.';

  @override
  String get errorSectionUnavailable => 'Не вдалося завантажити цей розділ.';

  @override
  String get notAvailable => 'н/д';

  @override
  String get sectionIdentity => 'Ідентифікація';

  @override
  String get sectionPrice => 'Ціна';

  @override
  String get sectionValuation => 'Оцінка';

  @override
  String get sectionFinancials => 'Фінанси';

  @override
  String get sectionDividend => 'Дивіденди';

  @override
  String get sectionProfile => 'Профіль компанії';

  @override
  String get sectionAnalysts => 'Рейтинги аналітиків';

  @override
  String get sectionNews => 'Новини';

  @override
  String get sectionRecognition => 'Деталі розпізнавання';

  @override
  String get labelSymbol => 'Тікер';

  @override
  String get labelExchange => 'Біржа';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Валюта';

  @override
  String get labelCountry => 'Країна';

  @override
  String get labelIndustry => 'Галузь';

  @override
  String get labelSector => 'Сектор';

  @override
  String get labelWebsite => 'Вебсайт';

  @override
  String get labelIpoDate => 'Дата IPO';

  @override
  String get labelMarketCap => 'Капіталізація';

  @override
  String get labelSharesOutstanding => 'Акцій в обігу';

  @override
  String get labelEmployees => 'Працівники';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Штаб-квартира';

  @override
  String get labelDescription => 'Опис';

  @override
  String get labelLastPrice => 'Остання ціна';

  @override
  String get labelChange => 'Зміна';

  @override
  String get labelOpen => 'Відкриття';

  @override
  String get labelDayHigh => 'Максимум дня';

  @override
  String get labelDayLow => 'Мінімум дня';

  @override
  String get labelPreviousClose => 'Попереднє закриття';

  @override
  String get labelWeek52High => 'Максимум за 52 тижні';

  @override
  String get labelWeek52Low => 'Мінімум за 52 тижні';

  @override
  String get labelAverageVolume10d => 'Середній обсяг (10 днів)';

  @override
  String updatedAt(String time) {
    return 'Оновлено $time';
  }

  @override
  String get labelPeTrailing => 'P/E (трейлінг)';

  @override
  String get labelPeForward => 'P/E (форвардний)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / вільний грошовий потік';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Бета';

  @override
  String get labelRevenueTtm => 'Виручка (TTM)';

  @override
  String get labelNetIncomeTtm => 'Чистий прибуток (TTM)';

  @override
  String get labelGrossMargin => 'Валова маржа';

  @override
  String get labelOperatingMargin => 'Операційна маржа';

  @override
  String get labelNetMargin => 'Чиста маржа';

  @override
  String get labelRoe => 'Рентабельність капіталу';

  @override
  String get labelRoa => 'Рентабельність активів';

  @override
  String get labelDebtToEquity => 'Борг / капітал';

  @override
  String get labelCurrentRatio => 'Коефіцієнт поточної ліквідності';

  @override
  String get labelRevenueGrowth => 'Зростання виручки (YoY)';

  @override
  String get labelEpsGrowth => 'Зростання EPS (YoY)';

  @override
  String get labelDividendYield => 'Дивідендна дохідність';

  @override
  String get labelDividendPerShare => 'Дивіденд на акцію';

  @override
  String get labelPayoutRatio => 'Коефіцієнт виплат';

  @override
  String get labelConsensus => 'Консенсус';

  @override
  String get ratingStrongBuy => 'Активно купувати';

  @override
  String get ratingBuy => 'Купувати';

  @override
  String get ratingHold => 'Тримати';

  @override
  String get ratingSell => 'Продавати';

  @override
  String get ratingStrongSell => 'Активно продавати';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count аналітика',
      many: '$count аналітиків',
      few: '$count аналітики',
      one: '$count аналітик',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Період: $period';
  }

  @override
  String get noNews => 'Немає свіжих новин.';

  @override
  String get openArticle => 'Відкрити статтю';

  @override
  String get openLinkFailed => 'Не вдалося відкрити посилання.';

  @override
  String get recognitionSummary => 'Підсумок';

  @override
  String get recognitionEvidence => 'Чому ми так вважаємо';

  @override
  String get recognitionRawText => 'Текст, зчитаний із зображення';

  @override
  String get errMissingAnthropicKey =>
      'Розпізнавання зображень не налаштовано (немає ANTHROPIC_API_KEY). Введіть тікер вручну.';

  @override
  String get errRecognitionUnreachable =>
      'Не вдалося підключитися до служби розпізнавання. Перевірте підключення до інтернету.';

  @override
  String errRecognitionHttp(String status) {
    return 'Служба розпізнавання повернула помилку (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Служба розпізнавання не змогла обробити це зображення.';

  @override
  String get errRecognitionTruncated =>
      'Відповідь служби розпізнавання була обрізана. Спробуйте ще раз.';

  @override
  String get errRecognitionBadResponse =>
      'Неочікувана відповідь від служби розпізнавання.';

  @override
  String get errRecognitionEmpty =>
      'Служба розпізнавання повернула порожню відповідь.';

  @override
  String get errMissingFinnhubKey =>
      'Ринкові дані не налаштовано (немає FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Не вдалося підключитися до служби ринкових даних. Перевірте підключення до інтернету.';

  @override
  String get errMarketRateLimited =>
      'Занадто багато запитів до служби ринкових даних. Зачекайте хвилину.';

  @override
  String errMarketHttp(String status) {
    return 'Служба ринкових даних повернула помилку (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Неочікувана відповідь від служби ринкових даних.';

  @override
  String errNoQuote(String symbol) {
    return 'Дані про ціну для $symbol не знайдено.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Профіль компанії для $symbol не знайдено.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Демо-режим підтримує лише $symbols. Додайте FINNHUB_API_KEY для актуальних даних.';
  }

  @override
  String errUnknown(String detail) {
    return 'Щось пішло не так: $detail';
  }

  @override
  String get newSearch => 'Новий пошук';

  @override
  String get recentSearches => 'Недавні';

  @override
  String get noRecentSearches => 'Недавніх запитів ще немає.';

  @override
  String get clearRecent => 'Очистити недавні';

  @override
  String get greeting => 'Яку акцію подивимось?';

  @override
  String get searchHint => 'Тікер або назва компанії';

  @override
  String get attachImage => 'Прикріпити зображення';

  @override
  String get searchResultsTitle => 'Результати пошуку';

  @override
  String errNoResults(String query) {
    return 'За запитом «$query» акцій не знайдено.';
  }

  @override
  String get quickBarHint => 'Введіть тікер або назву компанії…';

  @override
  String get openFullWindow => 'Відкрити вікно';

  @override
  String hotkeyHint(String shortcut) {
    return 'Натисніть $shortcut будь-де, щоб викликати StockLens.';
  }

  @override
  String get trayOpen => 'Відкрити StockLens';

  @override
  String get trayQuickSearch => 'Швидкий пошук';

  @override
  String get trayQuit => 'Вийти';

  @override
  String get appearance => 'Вигляд';

  @override
  String get themeSystem => 'Системна';

  @override
  String get themeDark => 'Темна';

  @override
  String get themeLight => 'Світла';

  @override
  String get back => 'Назад';

  @override
  String get aiSectionTitle => 'ШІ-аналіз';

  @override
  String get aiIntro =>
      'Детальний огляд, написаний ШІ: підсумок останніх новин, бізнес, сильні сторони, ризики та приховані фактори, оцінка і за чим стежити.';

  @override
  String get aiGenerate => 'Створити аналіз';

  @override
  String get aiRegenerate => 'Створити заново';

  @override
  String get aiGenerating => 'Готуємо аналіз… це може зайняти хвилину-дві.';

  @override
  String get aiSources => 'Джерела';

  @override
  String aiGeneratedAt(String time) {
    return 'Створено $time';
  }

  @override
  String get aiDisclaimer =>
      'Аналіз створено ШІ на основі відкритих даних і останніх новин. Він може містити помилки або бути застарілим і не є інвестиційною порадою.';

  @override
  String get errAiNotConfigured =>
      'ШІ-аналіз не налаштовано (немає ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Не вдалося підключитися до служби ШІ. Перевірте підключення до інтернету.';

  @override
  String errAiHttp(String status) {
    return 'Служба ШІ повернула помилку (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Служба ШІ відмовилася аналізувати цю акцію.';

  @override
  String get errAiBadResponse => 'Неочікувана відповідь від служби ШІ.';

  @override
  String get sectionChart => 'Графік ціни';

  @override
  String get rangeOneWeek => '1Т';

  @override
  String get rangeOneMonth => '1М';

  @override
  String get rangeThreeMonths => '3М';

  @override
  String get rangeOneYear => '1Р';

  @override
  String get rangeFiveYears => '5Р';

  @override
  String get chartUnavailable =>
      'Історія цін недоступна в поточному джерелі даних.';

  @override
  String get sectionStatements => 'Фінансова звітність (річна)';

  @override
  String get labelFiscalYear => 'Фінансовий рік';

  @override
  String get labelRevenue => 'Виручка';

  @override
  String get labelNetIncome => 'Чистий прибуток';

  @override
  String get labelTotalAssets => 'Усього активів';

  @override
  String get labelTotalLiabilities => 'Усього зобов’язань';

  @override
  String get labelEquity => 'Власний капітал';

  @override
  String get labelOperatingCashFlow => 'Операційний грошовий потік';

  @override
  String get statementsUnavailable =>
      'Опублікована фінансова звітність для цієї акції недоступна.';

  @override
  String get launchAtLogin => 'Запускати під час входу в систему';

  @override
  String get hotkeyLabel => 'Глобальне сполучення клавіш';

  @override
  String get hotkeyRecordHint =>
      'Натисніть тут, а потім натисніть нове сполучення клавіш';

  @override
  String get hotkeyReset => 'Скинути до типового';

  @override
  String get pasteImage => 'Вставити зображення з буфера обміну';

  @override
  String get errClipboardNoImage => 'У буфері обміну немає зображення.';

  @override
  String get favorites => 'Обране';

  @override
  String get addToFavorites => 'Додати до обраного';

  @override
  String get removeFromFavorites => 'Видалити з обраного';

  @override
  String get noFavorites =>
      'В обраному поки нічого немає. Натисніть на зірочку біля акції, щоб додати її.';

  @override
  String get displayCurrency => 'Валюта відображення';

  @override
  String get displayCurrencyNone => 'Лише власна валюта акції';

  @override
  String labelConverted(String currency) {
    return '≈ у $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Курс: 1 $from = $rate $to (ЄЦБ, $date)';
  }
}
