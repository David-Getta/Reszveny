// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

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
    return 'Натисніть $shortcut будь-де, щоб викликати WhatStock.';
  }

  @override
  String get trayOpen => 'Відкрити WhatStock';

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
      'Детальний огляд, написаний ШІ: підсумок останніх новин, бізнес, сильні сторони, ризики та приховані фактори, оцінка, прогноз ціни зі сценаріями з психологічного, соціологічного, технічного та макроекономічного поглядів, а також за чим стежити.';

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

  @override
  String get updates => 'Оновлення';

  @override
  String currentVersion(String version) {
    return 'Версія $version';
  }

  @override
  String get autoUpdate => 'Встановлювати оновлення автоматично';

  @override
  String get checkForUpdates => 'Перевірити оновлення';

  @override
  String get updateChecking => 'Перевірка оновлень…';

  @override
  String get updateUpToDate => 'У вас найновіша версія.';

  @override
  String updateAvailable(String version) {
    return 'Доступна версія $version.';
  }

  @override
  String get updateDownloading => 'Оновлення завантажується у фоновому режимі…';

  @override
  String get updateDownloaded =>
      'Оновлення готове. Перезапустіть застосунок, щоб установити його.';

  @override
  String get updateNow => 'Оновити';

  @override
  String get restartNow => 'Перезапустити';

  @override
  String get updatesViaStore =>
      'Оновлення надходять автоматично через магазин застосунків.';

  @override
  String get updateCheckFailed => 'Не вдалося перевірити оновлення.';

  @override
  String get subscription => 'Підписка';

  @override
  String get planTrial => 'Пробний';

  @override
  String get planNormal => 'Стандарт';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Немає активного тарифу';

  @override
  String planAnalysesPerMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count аналізу на місяць',
      many: '$count аналізів на місяць',
      few: '$count аналізи на місяць',
      one: '$count аналіз на місяць',
    );
    return '$_temp0';
  }

  @override
  String planTrialDescription(int days, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Безкоштовний пробний період $days дн. з $count аналізами',
      many: 'Безкоштовний пробний період $days дн. з $count аналізами',
      few: 'Безкоштовний пробний період $days дн. з $count аналізами',
      one: 'Безкоштовний пробний період $days дн. з $count аналізом',
    );
    return '$_temp0';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Залишилося $days дня пробного періоду',
      many: 'Залишилося $days днів пробного періоду',
      few: 'Залишилося $days дні пробного періоду',
      one: 'Залишився $days день пробного періоду',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Ваш безкоштовний пробний період завершився. Оберіть тариф, щоб продовжити аналізувати.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Залишилося $remaining з $total аналізів у цьому періоді';
  }

  @override
  String extraCredits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count додаткового аналізу',
      many: '$count додаткових аналізів',
      few: '$count додаткові аналізи',
      one: '$count додатковий аналіз',
    );
    return '$_temp0';
  }

  @override
  String renewsOn(String date) {
    return 'Поновлення $date';
  }

  @override
  String get choosePlan => 'Оберіть тариф';

  @override
  String get currentPlan => 'Поточний тариф';

  @override
  String get subscribe => 'Підписатися';

  @override
  String get perMonth => '/ міс.';

  @override
  String get extraPacksTitle => 'Потрібно більше? Придбайте додаткові аналізи';

  @override
  String get extraPacksHint =>
      'Додаткові аналізи ніколи не згорають і використовуються після вичерпання місячного ліміту.';

  @override
  String get buy => 'Придбати';

  @override
  String get restorePurchases => 'Відновити покупки';

  @override
  String get manageSubscription => 'Керувати підпискою';

  @override
  String get purchaseSuccess => 'Дякуємо! Ваша покупка активна.';

  @override
  String get purchasePending => 'Покупка очікує підтвердження…';

  @override
  String get purchaseFailed => 'Не вдалося завершити покупку.';

  @override
  String get purchaseCanceled => 'Покупку скасовано.';

  @override
  String get billingUnavailable =>
      'Покупки на цій платформі поки недоступні. Оформіть підписку на телефоні або Mac; ваш тариф працюватиме на всіх пристроях.';

  @override
  String get errQuotaExceeded =>
      'У цьому періоді у вас не залишилося аналізів. Перейдіть на вищий тариф або придбайте додаткові аналізи.';

  @override
  String get errTrialExpired =>
      'Ваш безкоштовний пробний період завершився. Оберіть тариф, щоб продовжити.';

  @override
  String get errNoPlan => 'Для ШІ-аналізу потрібен активний тариф.';

  @override
  String get viewPlans => 'Переглянути тарифи';

  @override
  String get usageTitle => 'Використання';

  @override
  String get demoPurchaseNote =>
      'Демо-режим оплати: на цій платформі покупки імітуються.';

  @override
  String get mostPopular => 'Найпопулярніший';

  @override
  String get bestValue => 'Найвигідніший';

  @override
  String get planFeaturesCommon =>
      'Розпізнавання фото, дані в реальному часі, графіки, обране та всі 120 мови включені в кожний тариф. Ліміт стосується ШІ-аналізів.';

  @override
  String get searchLanguages => 'Пошук мов…';

  @override
  String get noLanguageMatch => 'Жодна мова не знайдена.';

  @override
  String get aiSettings => 'ШІ-аналіз';

  @override
  String get aiLength => 'Довжина';

  @override
  String get aiDepthBrief => 'Коротко';

  @override
  String get aiDepthStandard => 'Стандартно';

  @override
  String get aiDepthDeep => 'Детально';

  @override
  String get aiDepthBriefDesc => 'Головне — швидко.';

  @override
  String get aiDepthStandardDesc => 'Повний звіт з усіма розділами.';

  @override
  String get aiDepthDeepDesc =>
      'Більше вебпошуків, порівняння з конкурентами та глибша деталізація.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Приблизно $min–$max слів';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'витрачає $count аналізу',
      many: 'витрачає $count аналізів',
      few: 'витрачає $count аналізи',
      one: 'витрачає $count аналіз',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Рівень читача';

  @override
  String get aiReaderBeginner => 'Початківець';

  @override
  String get aiReaderExperienced => 'Досвідчений';

  @override
  String get aiReaderBeginnerDesc =>
      'Простою мовою; кожен фаховий термін пояснено.';

  @override
  String get aiReaderExperiencedDesc =>
      'Щільніший текст зі стандартною фінансовою термінологією.';

  @override
  String get aiCounterArgument => 'Найсильніший контраргумент';

  @override
  String get aiCounterArgumentDesc =>
      'Підсумок завжди завершується найвагомішим аргументом проти власного висновку.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'З вашим тарифом — до $count вебпошуку на аналіз',
      many: 'З вашим тарифом — до $count вебпошуків на аналіз',
      few: 'З вашим тарифом — до $count вебпошуків на аналіз',
      one: 'З вашим тарифом — до $count вебпошуку на аналіз',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Стандартна довжина за тарифами: Стандарт $normal, Pro $pro, Max $max, Ultra $ultra. «Коротко» — на 2 менше, «Детально» — на 2 більше.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'до $count вебпошуку',
      many: 'до $count вебпошуків',
      few: 'до $count вебпошуків',
      one: 'до $count вебпошуку',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count вебпошуку на аналіз',
      many: '$count вебпошуків на аналіз',
      few: '$count вебпошуки на аналіз',
      one: '$count вебпошук на аналіз',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Для цієї довжини потрібно аналізів: $needed, а залишилося: $left. Виберіть коротшу довжину в Налаштуваннях або отримайте більше аналізів.';
  }

  @override
  String get outlookMarketMood => 'Настрій ринку';

  @override
  String get moodVeryPessimistic => 'Дуже песимістичний';

  @override
  String get moodPessimistic => 'Песимістичний';

  @override
  String get moodNeutral => 'Нейтральний';

  @override
  String get moodOptimistic => 'Оптимістичний';

  @override
  String get moodVeryOptimistic => 'Дуже оптимістичний';

  @override
  String get scenarioBull => 'Оптимістичний сценарій';

  @override
  String get scenarioBase => 'Базовий сценарій';

  @override
  String get scenarioBear => 'Песимістичний сценарій';

  @override
  String outlookCurrentPrice(String price) {
    return 'Поточна ціна: $price';
  }

  @override
  String get outlookKeyLevels => 'Ключові рівні';

  @override
  String get keyLevelSupport => 'Підтримка';

  @override
  String get keyLevelResistance => 'Опір';

  @override
  String get keyLevelAnchor => 'Якірний рівень';

  @override
  String get upcomingEvents => 'Найближчі події';

  @override
  String get outlookChartNote =>
      'Орієнтовні діапазони; ймовірності — приблизні оцінки, а не прогнози.';

  @override
  String get accountTitle => 'Обліковий запис';

  @override
  String get signIn => 'Увійти';

  @override
  String get signOut => 'Вийти';

  @override
  String get notSignedIn => 'Вхід не виконано';

  @override
  String get accountBenefit =>
      'Увійдіть, щоб ваша підписка працювала на всіх ваших пристроях.';

  @override
  String get accountSyncedNote =>
      'Ваша підписка та залишок аналізів однакові на всіх пристроях.';

  @override
  String get signInTitle => 'Вхід у WhatStock';

  @override
  String get emailLabel => 'Адреса електронної пошти';

  @override
  String get continueWithEmail => 'Продовжити з email';

  @override
  String codeSentTo(String email) {
    return 'Ми надіслали 6-значний код на $email. Він дійсний 10 хвилин.';
  }

  @override
  String get codeLabel => 'Код для входу';

  @override
  String get resendCode => 'Надіслати новий код';

  @override
  String get useDifferentEmail => 'Використати іншу адресу';

  @override
  String get errInvalidCode => 'Код неправильний або термін його дії минув.';

  @override
  String get errInvalidEmail => 'Введіть дійсну адресу електронної пошти.';

  @override
  String get errSignInFailed =>
      'Не вдалося увійти. Перевірте підключення до інтернету та спробуйте ще раз.';

  @override
  String get checkoutWaiting =>
      'Завершіть оплату в браузері. Застосунок оновиться автоматично, щойно все буде готово.';

  @override
  String get paymentViaStripe =>
      'Безпечна оплата в браузері через Stripe. Скасувати можна будь-коли.';

  @override
  String get paymentViaStore =>
      'Оплата через ваш обліковий запис App Store або Google Play. Скасувати можна будь-коли в налаштуваннях магазину.';

  @override
  String get keySpace => 'Пробіл';

  @override
  String get doubleOptionTitle => 'Подвійне натискання Option';

  @override
  String get doubleOptionSubtitle =>
      'Швидке подвійне натискання клавіші Option також викликає WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Щоб це працювало й в інших застосунках, дозвольте доступ для WhatStock у розділі «Системні параметри» → «Приватність і безпека» → «Моніторинг введення», а потім знову відкрийте застосунок.';

  @override
  String get openSystemSettings => 'Відкрити «Системні параметри»';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Натисніть $shortcut або двічі натисніть Option будь-де, щоб викликати WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Найімовірніший';

  @override
  String get longTermToday => 'Сьогодні';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years року',
      many: '$years років',
      few: '$years роки',
      one: '$years рік',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range на рік';
  }

  @override
  String longTermLikely(String price) {
    return 'найімовірніше $price';
  }

  @override
  String get confidenceLow => 'Низька впевненість';

  @override
  String get confidenceMedium => 'Середня впевненість';

  @override
  String get confidenceHigh => 'Висока впевненість';

  @override
  String get longTermNote =>
      'Довгострокові діапазони ґрунтуються на зазначених припущеннях і з часом розширюються. Ціни без урахування дивідендів. Грубі оцінки, а не прогнози.';

  @override
  String get portfolio => 'Портфель';

  @override
  String get portfolioEmpty =>
      'Поки що порожньо. Відкрийте акцію й натисніть «Додати до портфеля», щоб стежити за своїми паперами.';

  @override
  String get portfolioLocalNote =>
      'Зберігається лише на цьому пристрої. Підсумки перераховуються за довідковими курсами ЄЦБ; ціни можуть надходити із затримкою.';

  @override
  String get addToPortfolio => 'Додати до портфеля';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Додати $symbol';
  }

  @override
  String get portfolioQuantity => 'Кількість акцій';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Ціна за акцію ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Дата купівлі';

  @override
  String get portfolioAdd => 'Додати';

  @override
  String get portfolioInvalidNumber => 'Введіть число, більше за нуль.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol додано до портфеля.';
  }

  @override
  String get portfolioTotalValue => 'Загальна вартість';

  @override
  String get portfolioToday => 'Сьогодні';

  @override
  String get portfolioGainLoss => 'Прибуток/збиток';

  @override
  String get portfolioInvested => 'Вкладено';

  @override
  String get portfolioAllocation => 'Структура';

  @override
  String get portfolioPositions => 'Позиції';

  @override
  String portfolioAvgCost(String price) {
    return 'сер. ціна купівлі $price';
  }

  @override
  String get portfolioYourPosition => 'Ваша позиція';

  @override
  String get portfolioPurchases => 'Купівлі';

  @override
  String get portfolioRemove => 'Видалити';

  @override
  String get portfolioExcluded =>
      'Позиції без ціни або курсу валют не враховуються в підсумках.';

  @override
  String get priceAlerts => 'Цінові сповіщення';

  @override
  String get setPriceAlert => 'Створити цінове сповіщення';

  @override
  String alertDialogTitle(String symbol) {
    return 'Цінове сповіщення · $symbol';
  }

  @override
  String get alertKindAbove => 'Підніметься вище';

  @override
  String get alertKindBelow => 'Опуститься нижче';

  @override
  String get alertKindMove => 'Сильно зміниться за день';

  @override
  String alertTargetPrice(String currency) {
    return 'Ціна ($currency)';
  }

  @override
  String get alertMovePercent => 'Зміна за день (%)';

  @override
  String get alertAlreadyMet => 'Ціна вже пройшла цей рівень.';

  @override
  String get alertSave => 'Створити сповіщення';

  @override
  String alertCreated(String symbol) {
    return 'Сповіщення для $symbol створено.';
  }

  @override
  String get alertsEmpty =>
      'Сповіщень поки немає. Відкрийте акцію й натисніть на дзвіночок.';

  @override
  String get alertsNote =>
      'Сповіщення перевіряються кожні 5 хвилин, поки WhatStock працює. На комп’ютері застосунок працює далі в рядку меню або в треї; на телефоні сповіщення поки надходять, лише коли застосунок відкритий.';

  @override
  String alertDescAbove(String price) {
    return 'Вище $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Нижче $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Зміна за день ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Спрацювало $date за ціною $price';
  }

  @override
  String get alertRearm => 'Увімкнути знову';

  @override
  String get alertDelete => 'Видалити';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol піднялася вище $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol опустилася нижче $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol сьогодні змінилася на $percent';
  }

  @override
  String alertHitBody(String price) {
    return 'Поточна ціна: $price';
  }

  @override
  String get alertOpen => 'Відкрити';

  @override
  String get keepInTrayTitle => 'Працювати після закриття вікна';

  @override
  String get keepInTraySubtitle =>
      'WhatStock залишається в рядку меню або в треї, тож комбінація клавіш і цінові сповіщення працюють далі.';

  @override
  String get termsOfUse => 'Умови використання';

  @override
  String get privacyPolicy => 'Політика конфіденційності';

  @override
  String get subscriptionLegal =>
      'Підписка автоматично поновлюється щомісяця, доки ви її не скасуєте. Оформлюючи підписку, ви приймаєте Умови використання та Політику конфіденційності.';

  @override
  String get deleteAccount => 'Видалити акаунт';

  @override
  String get deleteAccountTitle => 'Видалити акаунт?';

  @override
  String get deleteAccountBody =>
      'Ваш акаунт і все, що зберігається на нашому сервері (e-mail, ліміт, використання), буде видалено назавжди, а невикористані аналізи пропадуть. Підписку, оплачену в браузері, скасовуємо одразу; підписку через App Store або Google Play треба скасувати в налаштуваннях магазину.';

  @override
  String get deleteLocalData =>
      'Видалити й дані на цьому пристрої (портфель, сповіщення, обране, історія, збережені аналізи)';

  @override
  String get deleteAccountConfirm => 'Видалити назавжди';

  @override
  String get accountDeleted => 'Ваш акаунт видалено.';

  @override
  String get errDeleteAccount =>
      'Не вдалося видалити акаунт. Перевірте з’єднання й спробуйте ще раз.';

  @override
  String get aiTrialBriefNote =>
      'Пробні аналізи короткі й створюються швидшою моделлю ШІ. З тарифом ви отримуєте наш найпотужніший ШІ, більше вебпошуку та довжини «Стандартно» і «Детально».';

  @override
  String get billingMonthly => 'Щомісяця';

  @override
  String get billingYearly => 'Щороку';

  @override
  String get yearlyDiscount => '2 місяці безкоштовно';

  @override
  String get perYear => '/ рік';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price на місяць';
  }

  @override
  String get subscriptionLegalYearly =>
      'Річна підписка автоматично поновлюється щороку, доки ви її не скасуєте. Оформлюючи підписку, ви приймаєте Умови використання та Політику конфіденційності.';

  @override
  String get myAnalyses => 'Мої аналізи';

  @override
  String get navAlerts => 'Сповіщення';

  @override
  String get inviteTitle => 'Закритий попередній перегляд';

  @override
  String get inviteBody =>
      'WhatStock поки що доступний лише за запрошенням. Введіть отриманий код запрошення.';

  @override
  String get inviteCodeLabel => 'Код запрошення';

  @override
  String get inviteContinue => 'Продовжити';

  @override
  String get inviteInvalid => 'Цей код запрошення недійсний.';

  @override
  String get inviteExpired =>
      'Термін дії цього запрошення минув. Попросіть новий код у людини, яка вас запросила.';

  @override
  String get inviteDeviceLimit =>
      'Цей код запрошення вже використовується на максимальній кількості пристроїв.';

  @override
  String get previewConfidential => 'Конфіденційний перегляд';

  @override
  String get errPreviewDailyLimit =>
      'Денний ліміт аналізів цього попереднього перегляду вичерпано. Спробуйте ще раз завтра.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count години тому',
      many: '$count годин тому',
      few: '$count години тому',
      one: '$count годину тому',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дня тому',
      many: '$count днів тому',
      few: '$count дні тому',
      one: '$count день тому',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Оновити цей аналіз?';

  @override
  String staleBody(String age) {
    return 'Його створено $age. Відтоді ціни, новини та результати могли змінитися.';
  }

  @override
  String get staleKeep => 'Показати попередній';

  @override
  String get staleRefresh => 'Створити новий';

  @override
  String seeAll(int count) {
    return 'Переглянути всі ($count)';
  }

  @override
  String get searchAnalyses => 'Шукати у своїх аналізах';

  @override
  String get deleteAnalysis => 'Видалити';

  @override
  String analysisDeleted(String symbol) {
    return 'Аналіз $symbol видалено';
  }

  @override
  String get keyLevelAlertHint =>
      'Натисніть на рівень, щоб отримати сповіщення, коли ціна його досягне.';

  @override
  String get shareAnalysisTitle => 'Поділитися аналізом';

  @override
  String get shareAsImage => 'Поділитися зображенням';

  @override
  String get shareAsText => 'Поділитися текстом';

  @override
  String get shareCardFooter => 'Створено у WhatStock';

  @override
  String get shareCardDisclaimer => 'ШІ-аналіз · не інвестиційна порада';

  @override
  String get referralTitle => 'Запросіть друзів';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count додаткового аналізу',
      many: '$count додаткових аналізів',
      few: '$count додаткові аналізи',
      one: '$count додатковий аналіз',
    );
    return 'Поділіться своїм кодом. Ваш друг одразу отримає $_temp0, а ви — стільки ж після його першого аналізу.';
  }

  @override
  String get referralYourCode => 'Ваш код';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Запрошено: $invited · Винагороджено: $rewarded';
  }

  @override
  String get referralHaveCode => 'Маєте код від друга?';

  @override
  String get referralRedeem => 'Активувати';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Додано $count додаткового аналізу. Вітаємо!',
      many: 'Додано $count додаткових аналізів. Вітаємо!',
      few: 'Додано $count додаткові аналізи. Вітаємо!',
      one: 'Додано $count додатковий аналіз. Вітаємо!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Такого коду не існує. Перевірте його та спробуйте ще раз.';

  @override
  String get referralErrOwn => 'Не можна активувати власний код.';

  @override
  String get referralErrAlready => 'Ви вже активували код друга.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count додаткового аналізу',
      many: '$count додаткових аналізів',
      few: '$count додаткові аналізи',
      one: '$count додатковий аналіз',
    );
    return 'Я аналізую акції у WhatStock: сфотографуйте акцію, і ШІ її пояснить. З моїм кодом $code ви отримаєте $_temp0.';
  }

  @override
  String get referralCopied => 'Код скопійовано';

  @override
  String get onboardTitle1 => 'Сфотографуйте акцію';

  @override
  String get onboardBody1 =>
      'Досить екрана брокерського застосунку, газети чи логотипа компанії: WhatStock розпізнає акцію та покаже її ціну, графік і ключові показники.';

  @override
  String get onboardTitle2 => 'Зрозумійте все за кілька хвилин';

  @override
  String get onboardBody2 =>
      'ШІ-аналіз пояснює, що рухає акцію, які є ризики, як її оцінено, і пропонує три сценарії того, куди може піти ціна, — з джерелами та вашою мовою.';

  @override
  String get onboardTitle3 => 'Тримайте руку на пульсі';

  @override
  String get onboardBody3 =>
      'Обране, ваш портфель і цінові сповіщення завжди тримають вас у курсі. Ваші аналізи зберігаються на пристрої — їх можна будь-коли відкрити знову.';

  @override
  String get onboardNext => 'Далі';

  @override
  String get onboardStart => 'Почати';

  @override
  String get onboardSkip => 'Пропустити';

  @override
  String changesTitle(String date) {
    return 'Від попереднього аналізу ($date)';
  }

  @override
  String get changesPrice => 'Ціна';

  @override
  String get changesNoMajor => 'Прогноз суттєво не змінився.';

  @override
  String get changesPreviousSummary => 'Попередній підсумок';

  @override
  String get telemetryTitle => 'Допоможіть покращити WhatStock';

  @override
  String get telemetryBody =>
      'Надсилайте анонімну статистику використання та звіти про збої: які функції використовуються і що пішло не так. Ваші акції, аналізи чи персональні дані ніколи не передаються. Це можна будь-коли змінити в Налаштуваннях.';

  @override
  String get telemetryAllow => 'Дозволити';

  @override
  String get telemetryDecline => 'Ні, дякую';

  @override
  String get telemetrySetting => 'Анонімна статистика та звіти про збої';

  @override
  String get telemetrySettingHint =>
      'Як часто використовуються функції та звіти про помилки — без персональних даних і вмісту ваших пошуків та аналізів.';

  @override
  String get askButton => 'Запитати про цей аналіз';

  @override
  String askTitle(String symbol) {
    return 'Запитання про $symbol';
  }

  @override
  String get askIntro =>
      'Запитуйте будь-що про аналіз: що означає певний ризик, що могло б змінити прогноз, як було розраховано певне число. Відповіді ґрунтуються на цьому аналізі й не є інвестиційною порадою.';

  @override
  String get askHint => 'Поставте запитання…';

  @override
  String get askSend => 'Надіслати';

  @override
  String get askThinking => 'Думаю…';

  @override
  String get askSuggest1 => 'Який найбільший ризик?';

  @override
  String get askSuggest2 => 'Що могло б змінити прогноз?';

  @override
  String get askSuggest3 => 'Поясни простими словами';

  @override
  String get askMaxReached =>
      'Це було останнє запитання для цього аналізу. Щоб поставити більше запитань, створіть новий аналіз.';

  @override
  String get errAskLimit =>
      'Ви досягли сьогоднішнього ліміту запитань. Спробуйте ще раз завтра.';

  @override
  String get eventTomorrow => 'Завтра';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'через $days дня',
      many: 'через $days днів',
      few: 'через $days дні',
      one: 'через $days день',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Квартальні результати';

  @override
  String get eventBeforeOpen => 'до відкриття біржі';

  @override
  String get eventAfterClose => 'після закриття біржі';

  @override
  String eventEpsEstimate(String value) {
    return 'Прогноз EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'З вашого аналізу';

  @override
  String get eventsHint =>
      'Дати звітів ваших обраних акцій і акцій з портфеля на найближчі 90 днів, а також події з датами, які виявили ваші аналізи.';

  @override
  String get eventsEmpty =>
      'У найближчі 90 днів немає подій з датами. Додайте обрані акції або акції в портфель, щоб бачити тут дати їхніх звітів.';

  @override
  String get compareTitle => 'Порівняння';

  @override
  String get compareAdd => 'Додати акцію';

  @override
  String get compareRemove => 'Видалити';

  @override
  String get compareTickerHint => 'Тікер, напр. MSFT';

  @override
  String get compareHint =>
      'Ключові показники поруч; найкраще значення в кожному рядку виділено. Суми вказано у валюті кожної акції.';

  @override
  String get compareNoAnalysis => 'Аналізу ще немає';

  @override
  String get portfolioDividends => 'Дивіденди за рік';

  @override
  String portfolioDividendYield(String percent) {
    return 'Дохідність $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Очікувані річні дивіденди розраховано за виплатами за останні 12 місяців; майбутні виплати не гарантовані.';

  @override
  String positionDividend(String amount) {
    return 'Дивіденди: $amount на рік';
  }

  @override
  String get chartAvgCost => 'Ваша сер.';

  @override
  String get chartAlertLevel => 'Сповіщення';

  @override
  String get marketsToday => 'Ринки сьогодні';

  @override
  String get notesTitle => 'Мої нотатки';

  @override
  String get notesHint =>
      'Чому ви її купили, за чим стежите, що змусить вас продати?';

  @override
  String get notesInfo =>
      'Зберігається лише на цьому пристрої. ШІ-аналіз враховує ваші нотатки.';

  @override
  String notesSaved(String date) {
    return 'Збережено $date';
  }

  @override
  String get peersTitle => 'Схожі компанії';

  @override
  String get portfolioExport => 'Експорт у CSV';

  @override
  String get portfolioImport => 'Імпорт із CSV';

  @override
  String get portfolioImportHint =>
      'Вставте по одній купівлі в рядок: тікер, кількість, ціна, валюта, дата (РРРР-ММ-ДД). Стовпці можна розділяти комами, крапками з комою або табуляцією; рядок заголовка необовʼязковий.';

  @override
  String get portfolioImportButton => 'Імпортувати';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Додано $count купівлі',
      many: 'Додано $count купівель',
      few: 'Додано $count купівлі',
      one: 'Додано $count купівлю',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Пропущено $count рядка',
      many: 'Пропущено $count рядків',
      few: 'Пропущено $count рядки',
      one: 'Пропущено $count рядок',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Портфель, обране, цінові сповіщення та нотатки синхронізуються на всіх ваших пристроях.';

  @override
  String syncLast(String time) {
    return 'Остання синхронізація: $time';
  }

  @override
  String get syncNow => 'Синхронізувати зараз';

  @override
  String get syncFailed =>
      'Не вдалося синхронізувати. Повторна спроба відбудеться автоматично.';

  @override
  String get alertEmailTitle => 'Лист при спрацюванні сповіщення';

  @override
  String get alertEmailOn =>
      'Ми перевіряємо ваші сповіщення кожні кілька хвилин і надсилаємо вам лист, навіть коли застосунок закрито.';

  @override
  String get alertEmailSignIn =>
      'Увійдіть з електронною поштою в Налаштуваннях, щоб отримувати сповіщення на пошту, навіть коли застосунок закрито.';

  @override
  String get portfolioHistory => 'Динаміка вартості';

  @override
  String get portfolioReviewTitle => 'ШІ-аналіз портфеля';

  @override
  String get portfolioReviewIntro =>
      'ШІ переглядає весь ваш портфель: концентрацію, залежність від секторів і валют, спільні ризики ваших акцій і дивіденди. Витрачає 1 аналіз.';

  @override
  String get portfolioReviewButton => 'Проаналізувати мій портфель';

  @override
  String get portfolioReviewAgain => 'Проаналізувати знову';

  @override
  String get portfolioReviewWorking => 'Аналізуємо ваш портфель…';

  @override
  String get digestTitle => 'Щотижневий підсумок електронною поштою';

  @override
  String get digestHint =>
      'Щопонеділка: як змінилися ваше обране та портфель за минулий тиждень і найближчі дати їхньої звітності.';

  @override
  String get benchmarkTitle => 'Порівняння з S&P 500';

  @override
  String get benchmarkYours => 'Ваші покупки';

  @override
  String get benchmarkIndex => 'Ті самі суми в S&P 500';

  @override
  String benchmarkAhead(String points) {
    return 'На $points в. п. краще за індекс';
  }

  @override
  String benchmarkBehind(String points) {
    return 'На $points в. п. відстає від індексу';
  }

  @override
  String get benchmarkHint =>
      'Ніби кожну покупку того ж дня вкладено в індексний фонд S&P 500. Без урахування дивідендів; минула дохідність не передбачає майбутньої.';

  @override
  String get portfolioSell => 'Продати';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Продати $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Ціна продажу за акцію ($currency)';
  }

  @override
  String get portfolioSellDate => 'Дата продажу';

  @override
  String get portfolioSellAll => 'Усі';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'У вас $quantity';
  }

  @override
  String get portfolioSold => 'Продано';

  @override
  String get portfolioRealized => 'Реалізовано';

  @override
  String get portfolioClosed => 'Закриті позиції';

  @override
  String get portfolioClosedNote => 'Усі акції продано';

  @override
  String get portfolioTransactions => 'Операції';

  @override
  String get portfolioRealizedByYear => 'Реалізований прибуток за роками';

  @override
  String get portfolioRealizedHint =>
      'Продажі спершу зіставляються з найдавнішими покупками (FIFO) і перераховуються за сьогоднішнім курсом. Для податкової декларації використовуйте виписку свого брокера.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Після цього аналізу вийшла нова квартальна звітність ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Нова звітність';

  @override
  String get portfolioImportBrokers =>
      'Розпізнаються також вивантаження з Revolut, Trading 212 та Interactive Brokers, разом із продажами; дивіденди й поповнення пропускаються.';

  @override
  String get portfolioImportFile => 'Вибрати файл';

  @override
  String offlineBanner(String time) {
    return 'Немає з’єднання – показано останні збережені дані ($time).';
  }

  @override
  String get glossMarketCap =>
      'Скільки коштує вся компанія на біржі: ціна акції × кількість акцій.';

  @override
  String get glossSharesOutstanding =>
      'Скільки акцій випустила компанія. Якщо їх стає більше, кожна акція володіє меншою часткою; викуп акцій зменшує їх кількість.';

  @override
  String get glossPeTrailing =>
      'Ціна ÷ прибуток на акцію за останні 12 місяців: за скільки років нинішнього прибутку ви платите. Нижчий — дешевше, але у швидкозростаючих компаній P/E зазвичай високий.';

  @override
  String get glossPeForward =>
      'Як P/E, але з прибутком, який аналітики очікують у наступні 12 місяців. Якщо він нижчий за трейлінговий P/E, очікується зростання прибутку.';

  @override
  String get glossPb =>
      'Ціна ÷ балансова вартість (активи мінус борги) на акцію. Близько 1 означає, що ринок оцінює компанію в те, чим вона володіє на папері.';

  @override
  String get glossPs =>
      'Ринкова вартість ÷ річна виручка. Корисно для компаній, що ще мають мало прибутку або не мають його зовсім; порівнюйте в межах однієї галузі.';

  @override
  String get glossEvToFcf =>
      'Вартість компанії разом із боргом (EV) ÷ гроші, які вона генерує за рік після інвестицій. Нижче значення означає, що за свою ціну ви отримуєте більше грошей.';

  @override
  String get glossPeg =>
      'P/E ÷ очікуване річне зростання прибутку (%). Близько 1 часто вважають справедливим; показник оцінює P/E з урахуванням зростання.';

  @override
  String get glossEps =>
      'Прибуток на акцію за останні 12 місяців. EPS, що зростає з року в рік, — одна з найсильніших ознак здорової компанії.';

  @override
  String get glossBeta =>
      'Наскільки акція зазвичай рухається разом із ринком: 1 = як ринок, 1,5 = коливання приблизно на 50% більші, менше 1 = спокійніша.';

  @override
  String get glossRevenueTtm =>
      'Загальні продажі за останні 12 місяців, до будь-яких витрат.';

  @override
  String get glossNetIncomeTtm =>
      'Прибуток, що залишається після всіх витрат, відсотків і податків за останні 12 місяців.';

  @override
  String get glossGrossMargin =>
      'Частка виручки, що залишається після прямих витрат на продукцію. Висока маржа часто означає силу в ціноутворенні.';

  @override
  String get glossOperatingMargin =>
      'Частка виручки, що залишається після витрат на ведення бізнесу (зарплати, оренда, маркетинг), до відсотків і податків.';

  @override
  String get glossNetMargin =>
      'Частка виручки, що стає кінцевим прибутком. 20% означає, що з кожних 100 продажів 20 — це прибуток.';

  @override
  String get glossRoe =>
      'Рентабельність капіталу: річний прибуток ÷ капітал власників. Показує, наскільки добре керівництво використовує гроші акціонерів; понад приблизно 15% — сильний результат.';

  @override
  String get glossRoa =>
      'Рентабельність активів: річний прибуток ÷ усе, чим володіє компанія. Порівнюйте в межах однієї галузі.';

  @override
  String get glossDebtToEquity =>
      'Борги ÷ капітал власників. Вище значення — більше позикових грошей: більший ризик, коли ставки зростають або бізнес сповільнюється.';

  @override
  String get glossCurrentRatio =>
      'Короткострокові активи ÷ рахунки до сплати протягом року. Понад 1 означає, що компанія може покрити найближчі зобов’язання.';

  @override
  String get glossRevenueGrowth =>
      'Наскільки виручка зросла порівняно з роком раніше.';

  @override
  String get glossEpsGrowth =>
      'Наскільки прибуток на акцію зріс порівняно з роком раніше.';

  @override
  String get glossDividendYield =>
      'Річний дивіденд ÷ ціна акції: грошовий дохід, який ви отримували б щороку, у відсотках від того, що платите.';

  @override
  String get glossDividendPerShare =>
      'Дивіденд, виплачений на одну акцію за останній рік.';

  @override
  String get glossPayoutRatio =>
      'Частка прибутку, виплачена як дивіденди. Понад 100% компанія виплачує більше, ніж заробляє, і це рідко триває довго.';

  @override
  String get glossTitle => 'Що це означає?';

  @override
  String get watchNewsTitle => 'Новини про ваші акції';

  @override
  String get undo => 'Відмінити';

  @override
  String get watchSort => 'Сортування';

  @override
  String get watchSortOwn => 'Мій порядок';

  @override
  String get watchSortGainers => 'Спершу лідери зростання';

  @override
  String get watchSortLosers => 'Спершу лідери падіння';

  @override
  String get watchSortName => 'За тікером (A–Z)';

  @override
  String get watchHint =>
      'Перетягніть маркер, щоб змінити порядок, проведіть ліворуч, щоб видалити. Лінія показує останні 30 днів.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: ваш аналіз готовий.';
  }

  @override
  String alertFromCost(String price) {
    return 'Від вашої середньої ціни купівлі ($price):';
  }

  @override
  String get briefTitle => 'Сьогодні з вашими акціями';

  @override
  String get briefButton => 'Підсумувати день';

  @override
  String get briefHint =>
      'Короткий AI-підсумок того, як сьогодні рухалися ваш портфель і обране та що про них кажуть свіжі новини. Аналіз не витрачається.';

  @override
  String get briefRefresh => 'Оновити';

  @override
  String get sectionEarnings => 'Квартальні звіти';

  @override
  String earningsNext(String date) {
    return 'Наступний звіт: $date';
  }

  @override
  String get earningsExpected => 'Очікуваний EPS';

  @override
  String get earningsReported => 'Опублікований EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'На рівні очікуваного EPS або вище в $beats з останніх $total кварталів',
      many:
          'На рівні очікуваного EPS або вище в $beats з останніх $total кварталів',
      few:
          'На рівні очікуваного EPS або вище в $beats з останніх $total кварталів',
      one:
          'На рівні очікуваного EPS або вище в $beats з останніх $total кварталу',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol завтра публікує квартальні результати';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol сьогодні публікує квартальні результати';
  }

  @override
  String get earningsRemindersTitle => 'Нагадування про результати';

  @override
  String get earningsRemindersSubtitle =>
      'Сповіщення за день до того, як акції з обраного або портфеля опублікують квартальні результати';

  @override
  String addAllToFavorites(int count) {
    return 'Додати всі до обраного ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Імпорт зі знімка екрана';

  @override
  String get holdingsReading => 'Зчитування позицій…';

  @override
  String get holdingsReviewTitle => 'Знайдені позиції';

  @override
  String get holdingsReviewHint =>
      'Перевірте числа, перш ніж додавати. Ціна — це середня ціна купівлі за акцію, а не сьогоднішня ціна.';

  @override
  String get holdingsNoPrice => 'На зображенні немає середньої ціни купівлі';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Додати $count позиції',
      many: 'Додати $count позицій',
      few: 'Додати $count позиції',
      one: 'Додати $count позицію',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'На цьому зображенні не знайдено позицій в акціях. Спробуйте знімок екрана сторінки позицій або активів у вашого брокера.';

  @override
  String get week52Range => 'Діапазон за 52 тижні';

  @override
  String week52BelowHigh(String percent) {
    return 'На $percent нижче максимуму за 52 тижні';
  }

  @override
  String get week52AtHigh => 'На максимумі за 52 тижні';

  @override
  String get alertKindTrailing => 'Впаде від піку';

  @override
  String get alertTrailingPercent => 'Падіння від піку (%)';

  @override
  String get alertTrailingHint =>
      'Стежить за ціною вгору: сповіщення спрацює, коли ціна впаде на стільки від максимуму з моменту встановлення.';

  @override
  String alertDescTrailing(String percent) {
    return 'Падіння на $percent від піку';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'пік на цей момент: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol впала на $percent від піку';
  }

  @override
  String get sectionInsiders => 'Угоди інсайдерів';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count купівлі',
      many: '$count купівель',
      few: '$count купівлі',
      one: '$count купівля',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count продажу',
      many: '$count продажів',
      few: '$count продажі',
      one: '$count продаж',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Нетто: $shares акцій';
  }

  @override
  String get insiderBuy => 'Куплено';

  @override
  String get insiderSell => 'Продано';

  @override
  String get insiderHint =>
      'Купівлі та продажі на відкритому ринку керівниками й директорами за останні 90 днів (SEC Form 4). Виконання опціонів і нагородні акції не враховуються.';

  @override
  String get insiderNone =>
      'За останні 90 днів інсайдери не купували й не продавали акції на відкритому ринку.';

  @override
  String get analystTrend => 'Як змінювалися думки місяць за місяцем';

  @override
  String get watchListAll => 'Усі';

  @override
  String get watchListNew => 'Новий список';

  @override
  String get watchListName => 'Назва списку';

  @override
  String get watchListRename => 'Перейменувати список';

  @override
  String get watchListDelete => 'Видалити список';

  @override
  String get watchListAddTo => 'Додати до списку';

  @override
  String get watchListEmpty =>
      'У цьому списку ще немає акцій. Торкніться кнопки списку поруч з акцією, щоб додати її.';

  @override
  String get portfolioAskTitle => 'Запитання про ваш портфель';

  @override
  String get rangeYtd => 'З поч. р.';

  @override
  String get backupTitle => 'Резервна копія';

  @override
  String get backupSave => 'Зберегти резервну копію';

  @override
  String get backupSaveHint =>
      'Ваше обране, списки, портфель, сповіщення та нотатки в одному файлі.';

  @override
  String get backupRestore => 'Відновити з резервної копії';

  @override
  String get backupRestoreHint =>
      'Додає вміст файлу; нічого з ваших поточних даних не видаляється.';

  @override
  String get backupRestored => 'Резервну копію відновлено.';

  @override
  String get backupInvalid => 'Цей файл не є резервною копією WhatStock.';

  @override
  String get allocationPositions => 'Акції';

  @override
  String get allocationSectors => 'Сектори';

  @override
  String get allocationCurrencies => 'Валюти';

  @override
  String get compareReturn1y => 'Дохідність за 1 рік';

  @override
  String get compareFromHigh => 'Від максимуму за 52 тижні';

  @override
  String get briefAutoTitle => 'Щоденне зведення щоранку';

  @override
  String get briefAutoSubtitle =>
      '«Сьогодні з вашими акціями» створюється автоматично після 7:00, поки застосунок працює; на комп’ютерах про це повідомить сповіщення. Витрачається денний ліміт запитань, а не аналіз.';

  @override
  String get targetsButton => 'Цільова структура';

  @override
  String get targetsTitle => 'Цільова структура';

  @override
  String get targetsHint =>
      'Укажіть, яку частку портфеля має займати кожна акція. Залиште поле порожнім, якщо цілі немає. Застосунок покаже, що купити чи продати, щоб її досягти.';

  @override
  String targetsSum(String percent) {
    return 'Разом: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Купити ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Продати ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Відповідає цілі';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol перевершив очікуваний EPS';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol не досяг очікуваного EPS';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'Опублікований EPS $actual, очікуваний $estimate';
  }

  @override
  String get newsExplain => 'Що це означає?';

  @override
  String get newsExplainNote =>
      'Пояснення від ШІ лише на основі заголовка та короткого змісту. Не є інвестиційною порадою. Витрачається денний ліміт запитань, а не аналіз.';

  @override
  String get watchAlertAll => 'Сповіщення про великі зміни за день';

  @override
  String get watchAlertAllHint =>
      'Цінове сповіщення для кожної акції в цьому списку: спрацює, коли за день вона зміниться на стільки вгору чи вниз. Акції, які вже мають таке, зберігають своє.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Встановлено $count сповіщення',
      many: 'Встановлено $count сповіщень',
      few: 'Встановлено $count сповіщення',
      one: 'Встановлено $count сповіщення',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Експорт реалізованого прибутку (CSV)';

  @override
  String get portfolioAnnualReturn => 'Річна дохідність';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / рік';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Річна дохідність, зважена за грошовими потоками (XIRR): враховує, коли ви купували та продавали, тож гроші, додані пізніше, її не спотворюють. Показується, коли вашій першій покупці мине щонайменше рік; дивіденди не враховано.';

  @override
  String get eventsAddToCalendar => 'Додати до календаря (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Сповіщення про портфель';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Сповіщення, коли весь ваш портфель за день змінюється на стільки.';

  @override
  String get portfolioMoveAlertOff => 'Вимкнено';

  @override
  String portfolioMoveUp(String percent) {
    return 'Ваш портфель сьогодні зріс на $percent';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Ваш портфель сьогодні впав на $percent';
  }

  @override
  String get whatIfTitle => 'А якби ви вклали?';

  @override
  String get whatIfAmount => 'Сума';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount, вкладені $period тому, сьогодні коштували б';
  }

  @override
  String get whatIfNote =>
      'Лише за ціною акції: дивіденди, комісії та податки не враховано. Минула дохідність не передбачає майбутньої.';

  @override
  String get watchShare => 'Поділитися списком';

  @override
  String get watchImport => 'Додати тікери';

  @override
  String get watchImportHint =>
      'Вставте тікери через кому, пробіл або з нового рядка – наприклад, список, яким з вами поділилися.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Додано $count акції',
      many: 'Додано $count акцій',
      few: 'Додано $count акції',
      one: 'Додано $count акцію',
      zero: 'Нових акцій немає',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Спершу найбільші';

  @override
  String get positionsSortGain => 'Спершу найвища загальна дохідність';

  @override
  String get positionsSortToday => 'Спершу найкращі за сьогодні';

  @override
  String get chartMyBuys => 'Ваші купівлі';

  @override
  String get chartMySells => 'Ваші продажі';

  @override
  String get shortcutsTitle => 'Сполучення клавіш';

  @override
  String usMarketOpen(String time) {
    return 'Ринок США відкритий · закриється через $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Ринок США закритий · відкриється через $time';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes хв';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours год $minutes хв';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days дн $hours год';
  }

  @override
  String get portfolioGoalSet => 'Задати ціль';

  @override
  String get portfolioGoalTitle => 'Ціль портфеля';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent від цілі $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Ціль $amount досягнуто';
  }

  @override
  String get portfolioGoalRemove => 'Видалити ціль';
}
