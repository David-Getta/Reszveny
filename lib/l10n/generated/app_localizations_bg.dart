// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bulgarian (`bg`).
class AppLocalizationsBg extends AppLocalizations {
  AppLocalizationsBg([String locale = 'bg']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

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
    return 'Натиснете $shortcut отвсякъде, за да извикате WhatStock.';
  }

  @override
  String get trayOpen => 'Отвори WhatStock';

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
      'Подробен преглед, написан от AI: обобщение на последните новини, бизнесът, силните страни, рисковете и скритите фактори, оценката, прогноза за цената със сценарии от психологическа, социологическа, техническа и макро гледна точка, и какво да следите.';

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

  @override
  String get updates => 'Актуализации';

  @override
  String currentVersion(String version) {
    return 'Версия $version';
  }

  @override
  String get autoUpdate => 'Автоматично инсталиране на актуализациите';

  @override
  String get checkForUpdates => 'Провери за актуализации';

  @override
  String get updateChecking => 'Проверка за актуализации…';

  @override
  String get updateUpToDate => 'Използвате най-новата версия.';

  @override
  String updateAvailable(String version) {
    return 'Налична е версия $version.';
  }

  @override
  String get updateDownloading => 'Актуализацията се изтегля във фонов режим…';

  @override
  String get updateDownloaded =>
      'Актуализацията е готова. Рестартирайте, за да я инсталирате.';

  @override
  String get updateNow => 'Актуализирай';

  @override
  String get restartNow => 'Рестартирай';

  @override
  String get updatesViaStore =>
      'Актуализациите пристигат автоматично през магазина за приложения.';

  @override
  String get updateCheckFailed => 'Проверката за актуализации не бе успешна.';

  @override
  String get subscription => 'Абонамент';

  @override
  String get planTrial => 'Пробен период';

  @override
  String get planNormal => 'Нормален';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Няма активен план';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count анализа на месец';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$days-дневен безплатен пробен период с $count анализа';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Остават $days дни от пробния период',
      one: 'Остава 1 ден от пробния период',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Безплатният ви пробен период изтече. Изберете план, за да продължите да анализирате.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Остават $remaining от $total анализа за този период';
  }

  @override
  String extraCredits(int count) {
    return '$count допълнителни анализа';
  }

  @override
  String renewsOn(String date) {
    return 'Подновява се на $date';
  }

  @override
  String get choosePlan => 'Изберете план';

  @override
  String get currentPlan => 'Текущ план';

  @override
  String get subscribe => 'Абонирай се';

  @override
  String get perMonth => '/ месец';

  @override
  String get extraPacksTitle => 'Нужни са ви още? Купете допълнителни анализи';

  @override
  String get extraPacksHint =>
      'Допълнителните анализи никога не изтичат и се използват след изчерпване на месечния ви лимит.';

  @override
  String get buy => 'Купи';

  @override
  String get restorePurchases => 'Възстанови покупките';

  @override
  String get manageSubscription => 'Управление на абонамента';

  @override
  String get purchaseSuccess => 'Благодарим! Покупката ви е активна.';

  @override
  String get purchasePending => 'Покупката се обработва…';

  @override
  String get purchaseFailed => 'Покупката не можа да бъде завършена.';

  @override
  String get purchaseCanceled => 'Покупката е отказана.';

  @override
  String get billingUnavailable =>
      'Покупките още не са налични на тази платформа. Абонирайте се от телефона или Mac; планът ви ще работи на всяко устройство.';

  @override
  String get errQuotaExceeded =>
      'Нямате оставащи анализи за този период. Надстройте плана си или купете допълнителни анализи.';

  @override
  String get errTrialExpired =>
      'Безплатният ви пробен период изтече. Изберете план, за да продължите.';

  @override
  String get errNoPlan => 'За AI анализ е необходим активен план.';

  @override
  String get viewPlans => 'Виж плановете';

  @override
  String get usageTitle => 'Използване';

  @override
  String get demoPurchaseNote =>
      'Демо таксуване: покупките на тази платформа са симулирани.';

  @override
  String get mostPopular => 'Най-популярен';

  @override
  String get bestValue => 'Най-изгоден';

  @override
  String get planFeaturesCommon =>
      'Разпознаване на снимки, данни в реално време, графики, любими и всички 120 езика са включени във всеки план. Лимитът се отнася за AI анализите.';

  @override
  String get searchLanguages => 'Търсене на езици…';

  @override
  String get noLanguageMatch => 'Няма съвпадащ език.';

  @override
  String get aiSettings => 'AI анализ';

  @override
  String get aiLength => 'Дължина';

  @override
  String get aiDepthBrief => 'Кратко';

  @override
  String get aiDepthStandard => 'Стандартно';

  @override
  String get aiDepthDeep => 'Подробно';

  @override
  String get aiDepthBriefDesc => 'Най-важното, бързо.';

  @override
  String get aiDepthStandardDesc => 'Пълен доклад с всички раздели.';

  @override
  String get aiDepthDeepDesc =>
      'Повече търсения в мрежата, сравнение с конкурентите и по-задълбочени подробности.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Около $min–$max думи';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'използва $count анализа',
      one: 'използва $count анализ',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Ниво на читателя';

  @override
  String get aiReaderBeginner => 'Начинаещ';

  @override
  String get aiReaderExperienced => 'Опитен';

  @override
  String get aiReaderBeginnerDesc =>
      'Прост език; всеки специализиран термин е обяснен.';

  @override
  String get aiReaderExperiencedDesc =>
      'По-наситен текст със стандартна финансова терминология.';

  @override
  String get aiCounterArgument => 'Най-силният контрааргумент';

  @override
  String get aiCounterArgumentDesc =>
      'Обобщението винаги завършва с най-силния аргумент срещу собствения си извод.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'С вашия план — до $count търсения в мрежата на анализ',
      one: 'С вашия план — до $count търсене в мрежата на анализ',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Стандартна дължина според плана: Нормален $normal, Pro $pro, Max $max, Ultra $ultra. „Кратко“ използва с 2 по-малко, „Подробно“ – с 2 повече.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'до $count търсения в мрежата',
      one: 'до $count търсене в мрежата',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count търсения в мрежата на анализ',
      one: '$count търсене в мрежата на анализ',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Тази дължина изисква анализи: $needed, а оставащите са: $left. Изберете по-кратка дължина в Настройки или вземете още анализи.';
  }

  @override
  String get outlookMarketMood => 'Пазарни настроения';

  @override
  String get moodVeryPessimistic => 'Много песимистични';

  @override
  String get moodPessimistic => 'Песимистични';

  @override
  String get moodNeutral => 'Неутрални';

  @override
  String get moodOptimistic => 'Оптимистични';

  @override
  String get moodVeryOptimistic => 'Много оптимистични';

  @override
  String get scenarioBull => 'Оптимистичен сценарий';

  @override
  String get scenarioBase => 'Базов сценарий';

  @override
  String get scenarioBear => 'Песимистичен сценарий';

  @override
  String outlookCurrentPrice(String price) {
    return 'Текуща цена: $price';
  }

  @override
  String get outlookKeyLevels => 'Ключови нива';

  @override
  String get keyLevelSupport => 'Подкрепа';

  @override
  String get keyLevelResistance => 'Съпротива';

  @override
  String get keyLevelAnchor => 'Ценова котва';

  @override
  String get upcomingEvents => 'Предстоящи събития';

  @override
  String get outlookChartNote =>
      'Ориентировъчни диапазони; вероятностите са груби оценки, а не прогнози.';

  @override
  String get accountTitle => 'Акаунт';

  @override
  String get signIn => 'Вход';

  @override
  String get signOut => 'Изход';

  @override
  String get notSignedIn => 'Не сте влезли';

  @override
  String get accountBenefit =>
      'Влезте, за да работи абонаментът ви на всичките ви устройства.';

  @override
  String get accountSyncedNote =>
      'Абонаментът ви и оставащите анализи са едни и същи на всяко устройство.';

  @override
  String get signInTitle => 'Вход в WhatStock';

  @override
  String get emailLabel => 'Имейл адрес';

  @override
  String get continueWithEmail => 'Продължете с имейл';

  @override
  String codeSentTo(String email) {
    return 'Изпратихме 6-цифрен код на $email. Той е валиден 10 минути.';
  }

  @override
  String get codeLabel => 'Код за вход';

  @override
  String get resendCode => 'Изпрати нов код';

  @override
  String get useDifferentEmail => 'Използвай друг имейл';

  @override
  String get errInvalidCode => 'Кодът е грешен или е изтекъл.';

  @override
  String get errInvalidEmail => 'Моля, въведете валиден имейл адрес.';

  @override
  String get errSignInFailed =>
      'Входът не бе успешен. Проверете интернет връзката си и опитайте отново.';

  @override
  String get checkoutWaiting =>
      'Завършете плащането в браузъра. Приложението ще се обнови автоматично, когато е готово.';

  @override
  String get paymentViaStripe =>
      'Сигурно плащане в браузъра чрез Stripe. Можете да откажете по всяко време.';

  @override
  String get paymentViaStore =>
      'Плащането е чрез акаунта ви в App Store или Google Play. Можете да откажете по всяко време от настройките на магазина.';

  @override
  String get keySpace => 'Интервал';

  @override
  String get doubleOptionTitle => 'Двойно натискане на Option';

  @override
  String get doubleOptionSubtitle =>
      'Бързото двойно натискане на клавиша Option също извиква WhatStock.';

  @override
  String get doubleOptionPermission =>
      'За да работи и в други приложения, разрешете достъп на WhatStock в Системни настройки → Поверителност и сигурност → Наблюдение на въвеждането, след което отворете приложението отново.';

  @override
  String get openSystemSettings => 'Отвори Системни настройки';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Натиснете $shortcut или натиснете два пъти Option отвсякъде, за да извикате WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Най-вероятен';

  @override
  String get longTermToday => 'Днес';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years години',
      one: '1 година',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range годишно';
  }

  @override
  String longTermLikely(String price) {
    return 'най-вероятно $price';
  }

  @override
  String get confidenceLow => 'Ниска увереност';

  @override
  String get confidenceMedium => 'Средна увереност';

  @override
  String get confidenceHigh => 'Висока увереност';

  @override
  String get longTermNote =>
      'Дългосрочните диапазони се основават на посочените допускания и се разширяват с времето. Цени без дивиденти. Груби преценки, не прогнози.';

  @override
  String get portfolio => 'Портфейл';

  @override
  String get portfolioEmpty =>
      'Все още е празен. Отворете акция и докоснете „Добави към портфейла“, за да следите какво притежавате.';

  @override
  String get portfolioLocalNote =>
      'Съхранява се само на това устройство. Сборовете се преизчисляват по референтните курсове на ЕЦБ; цените може да са със закъснение.';

  @override
  String get addToPortfolio => 'Добави към портфейла';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Добави $symbol';
  }

  @override
  String get portfolioQuantity => 'Брой акции';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Цена за акция ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Дата на покупка';

  @override
  String get portfolioAdd => 'Добави';

  @override
  String get portfolioInvalidNumber => 'Въведете число, по-голямо от нула.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol е добавена към портфейла.';
  }

  @override
  String get portfolioTotalValue => 'Обща стойност';

  @override
  String get portfolioToday => 'Днес';

  @override
  String get portfolioGainLoss => 'Печалба/загуба';

  @override
  String get portfolioInvested => 'Инвестирано';

  @override
  String get portfolioAllocation => 'Разпределение';

  @override
  String get portfolioPositions => 'Позиции';

  @override
  String portfolioAvgCost(String price) {
    return 'ср. покупна цена $price';
  }

  @override
  String get portfolioYourPosition => 'Вашата позиция';

  @override
  String get portfolioPurchases => 'Покупки';

  @override
  String get portfolioRemove => 'Премахни';

  @override
  String get portfolioExcluded =>
      'Позициите без цена или валутен курс не са включени в сборовете.';

  @override
  String get priceAlerts => 'Ценови известия';

  @override
  String get setPriceAlert => 'Задай ценово известие';

  @override
  String alertDialogTitle(String symbol) {
    return 'Ценово известие · $symbol';
  }

  @override
  String get alertKindAbove => 'Покачи се над';

  @override
  String get alertKindBelow => 'Падне под';

  @override
  String get alertKindMove => 'Се движи силно за ден';

  @override
  String alertTargetPrice(String currency) {
    return 'Цена ($currency)';
  }

  @override
  String get alertMovePercent => 'Дневно движение (%)';

  @override
  String get alertAlreadyMet => 'Цената вече е преминала това ниво.';

  @override
  String get alertSave => 'Задай известие';

  @override
  String alertCreated(String symbol) {
    return 'Известието за $symbol е зададено.';
  }

  @override
  String get alertsEmpty =>
      'Още няма известия. Отворете акция и докоснете звънчето.';

  @override
  String get alertsNote =>
      'Известията се проверяват на всеки 5 минути, докато WhatStock работи. На компютър приложението продължава в лентата с менюта или в системната област; на телефон засега известява само докато приложението е отворено.';

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
    return 'Дневно движение ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Задействано на $date при $price';
  }

  @override
  String get alertRearm => 'Активирай отново';

  @override
  String get alertDelete => 'Изтрий';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol се покачи над $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol падна под $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol се движи с $percent днес';
  }

  @override
  String alertHitBody(String price) {
    return 'Текуща цена: $price';
  }

  @override
  String get alertOpen => 'Отвори';

  @override
  String get keepInTrayTitle => 'Работи и след затваряне на прозореца';

  @override
  String get keepInTraySubtitle =>
      'WhatStock остава в лентата с менюта или в системната област, така клавишната комбинация и ценовите известия продължават да работят.';

  @override
  String get termsOfUse => 'Условия за ползване';

  @override
  String get privacyPolicy => 'Политика за поверителност';

  @override
  String get subscriptionLegal =>
      'Абонаментът се подновява автоматично всеки месец, докато не го прекратите. С абонамента приемате Условията за ползване и Политиката за поверителност.';

  @override
  String get deleteAccount => 'Изтриване на акаунта';

  @override
  String get deleteAccountTitle => 'Да изтрием ли акаунта ви?';

  @override
  String get deleteAccountBody =>
      'Акаунтът ви и всичко, съхранено на сървъра ни (имейл, лимит, използване), ще бъдат изтрити окончателно, а неизползваните анализи се губят. Абонамент, платен в браузъра, се прекратява веднага; абонамент през App Store или Google Play трябва да прекратите в настройките на магазина.';

  @override
  String get deleteLocalData =>
      'Изтрий и данните на това устройство (портфейл, известия, любими, история, запазени анализи)';

  @override
  String get deleteAccountConfirm => 'Изтрий окончателно';

  @override
  String get accountDeleted => 'Акаунтът ви е изтрит.';

  @override
  String get errDeleteAccount =>
      'Акаунтът не можа да бъде изтрит. Проверете връзката и опитайте отново.';

  @override
  String get aiTrialBriefNote =>
      'Пробните анализи са кратки и се изготвят с по-бърз AI модел. С план получавате най-мощния ни AI, повече търсения в мрежата и дължините „Стандартно“ и „Подробно“.';

  @override
  String get billingMonthly => 'Месечно';

  @override
  String get billingYearly => 'Годишно';

  @override
  String get yearlyDiscount => '2 месеца безплатно';

  @override
  String get perYear => '/ година';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price на месец';
  }

  @override
  String get subscriptionLegalYearly =>
      'Годишният абонамент се подновява автоматично всяка година, докато не го прекратите. С абонамента приемате Условията за ползване и Политиката за поверителност.';

  @override
  String get myAnalyses => 'Моите анализи';

  @override
  String get navAlerts => 'Известия';

  @override
  String get inviteTitle => 'Затворена предварителна версия';

  @override
  String get inviteBody =>
      'WhatStock засега е достъпен само с покана. Въведете получения код за покана.';

  @override
  String get inviteCodeLabel => 'Код за покана';

  @override
  String get inviteContinue => 'Продължи';

  @override
  String get inviteInvalid => 'Този код за покана не е валиден.';

  @override
  String get inviteExpired =>
      'Тази покана е изтекла. Поискайте нов код от човека, който ви е поканил.';

  @override
  String get inviteDeviceLimit =>
      'Този код за покана вече се използва на максималния брой устройства.';

  @override
  String get previewConfidential => 'Поверителна версия';

  @override
  String get errPreviewDailyLimit =>
      'Днешният лимит за анализи на тази предварителна версия е изчерпан. Опитайте отново утре.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'преди $count часа',
      one: 'преди 1 час',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'преди $count дни',
      one: 'преди 1 ден',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Да обновим ли анализа?';

  @override
  String staleBody(String age) {
    return 'Създаден е $age. Оттогава цените, новините и резултатите може да са се променили.';
  }

  @override
  String get staleKeep => 'Покажи предишния';

  @override
  String get staleRefresh => 'Създай нов';

  @override
  String seeAll(int count) {
    return 'Виж всички ($count)';
  }

  @override
  String get searchAnalyses => 'Търси в анализите си';

  @override
  String get deleteAnalysis => 'Изтрий';

  @override
  String analysisDeleted(String symbol) {
    return 'Анализът на $symbol е изтрит';
  }

  @override
  String get keyLevelAlertHint =>
      'Докоснете ниво, за да получите известие, когато цената го достигне.';

  @override
  String get shareAnalysisTitle => 'Споделяне на анализа';

  @override
  String get shareAsImage => 'Споделяне като изображение';

  @override
  String get shareAsText => 'Споделяне като текст';

  @override
  String get shareCardFooter => 'Създадено с WhatStock';

  @override
  String get shareCardDisclaimer => 'AI анализ · не е инвестиционен съвет';

  @override
  String get referralTitle => 'Поканете приятели';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count допълнителни анализа',
      one: '1 допълнителен анализ',
    );
    return 'Споделете кода си. Вашият приятел веднага получава $_temp0, а вие получавате същото след първия му анализ.';
  }

  @override
  String get referralYourCode => 'Вашият код';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Поканени: $invited · Наградени: $rewarded';
  }

  @override
  String get referralHaveCode => 'Имате код от приятел?';

  @override
  String get referralRedeem => 'Активиране';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Добавени са $count допълнителни анализа. Добре дошли!',
      one: 'Добавен е 1 допълнителен анализ. Добре дошли!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Такъв код не съществува. Проверете го и опитайте отново.';

  @override
  String get referralErrOwn => 'Не можете да използвате собствения си код.';

  @override
  String get referralErrAlready => 'Вече сте използвали код от приятел.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count допълнителни анализа',
      one: '1 допълнителен анализ',
    );
    return 'Анализирам акции с WhatStock: снимате акция и AI ви я обяснява. С моя код $code получавате $_temp0.';
  }

  @override
  String get referralCopied => 'Кодът е копиран';

  @override
  String get onboardTitle1 => 'Снимайте акция';

  @override
  String get onboardBody1 =>
      'Достатъчни са екран на брокерско приложение, вестник или лого на компания: WhatStock разпознава акцията и показва цената, графиката и ключовите ѝ показатели.';

  @override
  String get onboardTitle2 => 'Разберете я за минути';

  @override
  String get onboardBody2 =>
      'AI анализът обяснява какво движи акцията, какви са рисковете и оценката ѝ, и дава три сценария накъде може да поеме цената – с източници и на вашия език.';

  @override
  String get onboardTitle3 => 'Бъдете винаги в течение';

  @override
  String get onboardBody3 =>
      'Любими, портфейлът ви и ценовите известия ви държат в течение. Анализите ви остават на устройството ви, готови да ги отворите отново.';

  @override
  String get onboardNext => 'Напред';

  @override
  String get onboardStart => 'Започнете';

  @override
  String get onboardSkip => 'Пропускане';

  @override
  String changesTitle(String date) {
    return 'След предишния анализ ($date)';
  }

  @override
  String get changesPrice => 'Цена';

  @override
  String get changesNoMajor => 'Перспективите не са се променили съществено.';

  @override
  String get changesPreviousSummary => 'Предишно резюме';

  @override
  String get telemetryTitle => 'Помогнете да подобрим WhatStock';

  @override
  String get telemetryBody =>
      'Споделяйте анонимна статистика за използването и отчети за сривове: кои функции се използват и какво се е объркало. Вашите акции, анализи и лични данни никога не се споделят. Можете да промените това по всяко време в Настройки.';

  @override
  String get telemetryAllow => 'Разрешаване';

  @override
  String get telemetryDecline => 'Не, благодаря';

  @override
  String get telemetrySetting => 'Анонимна статистика и отчети за сривове';

  @override
  String get telemetrySettingHint =>
      'Колко често се използват функциите и отчети за грешки – без лични данни или съдържанието на вашите търсения и анализи.';

  @override
  String get askButton => 'Попитайте за този анализ';

  @override
  String askTitle(String symbol) {
    return 'Въпроси за $symbol';
  }

  @override
  String get askIntro =>
      'Попитайте каквото и да е за анализа: какво означава даден риск, какво би променило перспективите, как е изчислено дадено число. Отговорите се основават на този анализ и не представляват инвестиционен съвет.';

  @override
  String get askHint => 'Задайте въпрос…';

  @override
  String get askSend => 'Изпращане';

  @override
  String get askThinking => 'Мисля…';

  @override
  String get askSuggest1 => 'Кой е най-големият риск?';

  @override
  String get askSuggest2 => 'Какво би променило перспективите?';

  @override
  String get askSuggest3 => 'Обясни го с прости думи';

  @override
  String get askMaxReached =>
      'Това беше последният въпрос за този анализ. Създайте нов анализ, за да попитате още.';

  @override
  String get errAskLimit =>
      'Достигнахте днешния лимит за въпроси. Моля, опитайте отново утре.';

  @override
  String get eventTomorrow => 'Утре';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'след $days дни',
      one: 'след 1 ден',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Тримесечни резултати';

  @override
  String get eventBeforeOpen => 'преди отварянето';

  @override
  String get eventAfterClose => 'след затварянето';

  @override
  String eventEpsEstimate(String value) {
    return 'Прогноза за EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'От вашия анализ';

  @override
  String get eventsHint =>
      'Датите на резултатите на любимите ви акции и акциите в портфейла ви за следващите 90 дни, както и датираните събития, отбелязани от вашите анализи.';

  @override
  String get eventsEmpty =>
      'Няма датирани събития през следващите 90 дни. Добавете любими или акции в портфейла, за да виждате тук датите на резултатите им.';

  @override
  String get compareTitle => 'Сравнение';

  @override
  String get compareAdd => 'Добави акция';

  @override
  String get compareRemove => 'Премахни';

  @override
  String get compareTickerHint => 'Тикер, напр. MSFT';

  @override
  String get compareHint =>
      'Основните показатели един до друг; най-добрата стойност на всеки ред е отличена. Сумите са в собствената валута на всяка акция.';

  @override
  String get compareNoAnalysis => 'Все още няма анализ';

  @override
  String get portfolioDividends => 'Годишни дивиденти';

  @override
  String portfolioDividendYield(String percent) {
    return 'Доходност $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Очакваните годишни дивиденти се базират на дивидентите, изплатени през последните 12 месеца; бъдещите плащания не са гарантирани.';

  @override
  String positionDividend(String amount) {
    return 'Дивидент: $amount годишно';
  }

  @override
  String get chartAvgCost => 'Вашата ср.';

  @override
  String get chartAlertLevel => 'Известие';

  @override
  String get marketsToday => 'Пазарите днес';

  @override
  String get notesTitle => 'Моите бележки';

  @override
  String get notesHint =>
      'Защо я купихте, какво следите, какво би ви накарало да продадете?';

  @override
  String get notesInfo =>
      'Съхранява се само на това устройство. AI анализът взема предвид бележките ви.';

  @override
  String notesSaved(String date) {
    return 'Запазено $date';
  }

  @override
  String get peersTitle => 'Подобни компании';

  @override
  String get portfolioExport => 'Експортиране като CSV';

  @override
  String get portfolioImport => 'Импортиране от CSV';

  @override
  String get portfolioImportHint =>
      'Поставете по една покупка на ред: тикер символ, количество, цена, валута, дата (ГГГГ-ММ-ДД). Колоните може да са разделени със запетаи, точки и запетаи или табулации; заглавният ред не е задължителен.';

  @override
  String get portfolioImportButton => 'Импортиране';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Добавени са $count покупки',
      one: 'Добавена е 1 покупка',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Пропуснати са $count реда',
      one: 'Пропуснат е 1 ред',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Портфейлът, любимите, ценовите известия и бележките се синхронизират на всичките ви устройства.';

  @override
  String syncLast(String time) {
    return 'Последна синхронизация: $time';
  }

  @override
  String get syncNow => 'Синхронизиране сега';

  @override
  String get syncFailed =>
      'Синхронизирането не бе успешно. Ще бъде опитано отново автоматично.';

  @override
  String get alertEmailTitle => 'Имейл при задействане на известие';

  @override
  String get alertEmailOn =>
      'Проверяваме известията ви на всеки няколко минути и ви пращаме имейл, дори когато приложението е затворено.';

  @override
  String get alertEmailSignIn =>
      'Влезте с имейла си от Настройки, за да получавате известията по имейл, дори когато приложението е затворено.';

  @override
  String get portfolioHistory => 'Стойност във времето';

  @override
  String get portfolioReviewTitle => 'AI анализ на портфейла';

  @override
  String get portfolioReviewIntro =>
      'AI преглежда целия портфейл: концентрация, експозиция към сектори и валути, общите рискове на акциите и дивидентите. Използва 1 анализ.';

  @override
  String get portfolioReviewButton => 'Анализирай портфейла ми';

  @override
  String get portfolioReviewAgain => 'Анализирай отново';

  @override
  String get portfolioReviewWorking => 'Портфейлът се анализира…';

  @override
  String get digestTitle => 'Седмично обобщение по имейл';

  @override
  String get digestHint =>
      'Всеки понеделник: как са се движили любимите ви и портфейлът ви през изминалата седмица и предстоящите дати на резултатите им.';

  @override
  String get benchmarkTitle => 'Сравнение с S&P 500';

  @override
  String get benchmarkYours => 'Вашите покупки';

  @override
  String get benchmarkIndex => 'Същите суми в S&P 500';

  @override
  String benchmarkAhead(String points) {
    return 'С $points процентни пункта по-добре от индекса';
  }

  @override
  String benchmarkBehind(String points) {
    return 'С $points процентни пункта под индекса';
  }

  @override
  String get benchmarkHint =>
      'Сякаш всяка покупка е вложена в индексен фонд на S&P 500 в същия ден. Без дивиденти; миналата доходност не предсказва бъдещата.';

  @override
  String get portfolioSell => 'Продай';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Продай $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Продажна цена за акция ($currency)';
  }

  @override
  String get portfolioSellDate => 'Дата на продажба';

  @override
  String get portfolioSellAll => 'Всички';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Имате $quantity';
  }

  @override
  String get portfolioSold => 'Продадени';

  @override
  String get portfolioRealized => 'Реализирана';

  @override
  String get portfolioClosed => 'Затворени позиции';

  @override
  String get portfolioClosedNote => 'Всички акции са продадени';

  @override
  String get portfolioTransactions => 'Транзакции';

  @override
  String get portfolioRealizedByYear => 'Реализирана печалба по години';

  @override
  String get portfolioRealizedHint =>
      'Продажбите се съпоставят първо с най-старите ви покупки (FIFO) и се превалутират по днешния курс. За данъчната декларация използвайте отчета на брокера си.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'След този анализ са публикувани нови тримесечни резултати ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Нови резултати';

  @override
  String get portfolioImportBrokers =>
      'Разпознават се и експорти от Revolut, Trading 212 и Interactive Brokers, включително продажбите; дивидентите и депозитите се пропускат.';

  @override
  String get portfolioImportFile => 'Изберете файл';

  @override
  String offlineBanner(String time) {
    return 'Няма връзка – показани са последно запазените данни ($time).';
  }
}
