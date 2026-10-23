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
  String get labelYieldOnCost => 'Доходност спрямо покупната цена';

  @override
  String get labelDividendGrowth5y => 'Ръст на дивидента (5 г.)';

  @override
  String get dividendNone =>
      'Не е изплащан дивидент през последните 12 месеца.';

  @override
  String get dividendOnYourShares => 'За вашите акции, годишно';

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
  String homeDividendsThisYear(String amount) {
    return 'Дивиденти тази година: $amount';
  }

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
  String get eventDividend => 'Очакван дивидент';

  @override
  String get eventDividendEstimate => 'Прогноза по записаните от вас плащания';

  @override
  String get eventsHint =>
      'Датите на резултатите на любимите ви акции и акциите в портфейла ви за следващите 90 дни, датираните събития, отбелязани от вашите анализи, както и дивидентите, очаквани по записаните от вас плащания.';

  @override
  String get eventsEmpty =>
      'Няма датирани събития през следващите 90 дни. Добавете любими или акции в портфейла, за да виждате тук датите на резултатите им; записаните дивиденти показват очакваното си следващо плащане.';

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
  String get benchmarkTitleIndex => 'Сравнение с индекс';

  @override
  String get benchmarkHintIndex =>
      'Сякаш всяка покупка е вложена в същия ден във фонд, следващ избрания индекс. Без дивиденти; миналата доходност не предсказва бъдещата.';

  @override
  String get benchmarkYours => 'Вашите покупки';

  @override
  String benchmarkAhead(String points) {
    return 'С $points процентни пункта по-добре от индекса';
  }

  @override
  String benchmarkBehind(String points) {
    return 'С $points процентни пункта под индекса';
  }

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

  @override
  String get glossMarketCap =>
      'Колко струва цялата компания на борсата: цена на акцията × брой акции.';

  @override
  String get glossSharesOutstanding =>
      'Колко акции е издала компанията. Ако броят им расте, всяка акция притежава по-малък дял; обратното изкупуване го намалява.';

  @override
  String get glossPeTrailing =>
      'Цена ÷ печалба на акция за последните 12 месеца: за колко години от сегашната печалба плащате. По-ниското е по-евтино, но бързо растящите компании обикновено имат висок P/E.';

  @override
  String get glossPeForward =>
      'Като P/E, но с печалбата, която анализаторите очакват за следващите 12 месеца. Ако е под текущия P/E, се очаква печалбата да расте.';

  @override
  String get glossPb =>
      'Цена ÷ балансова стойност (активи минус дългове) на акция. Около 1 означава, че пазарът оценява компанията на това, което притежава на хартия.';

  @override
  String get glossPs =>
      'Пазарна стойност ÷ годишни приходи. Полезно за компании с малко или все още никаква печалба; сравнявайте в рамките на един отрасъл.';

  @override
  String get glossEvToFcf =>
      'Стойност на компанията с дълга (EV) ÷ парите, които тя генерира за година след инвестициите. По-ниското означава, че получавате повече пари срещу цената.';

  @override
  String get glossPeg =>
      'P/E ÷ очакван годишен ръст на печалбата (%). Около 1 често се смята за справедливо; поставя P/E в светлината на растежа.';

  @override
  String get glossEps =>
      'Печалба на акция за последните 12 месеца. Растящият през годините EPS е един от най-силните признаци за здрава компания.';

  @override
  String get glossBeta =>
      'Доколко акцията се движи заедно с пазара: 1 = като пазара, 1,5 = с около 50% по-големи колебания, под 1 = по-спокойна.';

  @override
  String get glossRevenueTtm =>
      'Общите продажби за последните 12 месеца, преди всякакви разходи.';

  @override
  String get glossNetIncomeTtm =>
      'Печалбата, останала след всички разходи, лихви и данъци за последните 12 месеца.';

  @override
  String get glossGrossMargin =>
      'Делът от приходите, който остава след преките разходи за продуктите. Високият марж често означава ценова сила.';

  @override
  String get glossOperatingMargin =>
      'Делът от приходите, който остава след разходите за дейността (заплати, наем, маркетинг), преди лихви и данъци.';

  @override
  String get glossNetMargin =>
      'Делът от приходите, който става крайна печалба. 20% означава, че от всеки 100 продажби 20 са печалба.';

  @override
  String get glossRoe =>
      'Възвръщаемост на капитала: годишна печалба ÷ капитала на собствениците. Показва колко добре ръководството използва парите на акционерите; над около 15% е силно.';

  @override
  String get glossRoa =>
      'Възвръщаемост на активите: годишна печалба ÷ всичко, което компанията притежава. Сравнявайте в рамките на един отрасъл.';

  @override
  String get glossDebtToEquity =>
      'Дългове ÷ капитала на собствениците. По-високото означава повече заемни пари: по-голям риск при растящи лихви или забавяне на бизнеса.';

  @override
  String get glossCurrentRatio =>
      'Краткосрочни активи ÷ задължения, дължими в рамките на година. Над 1 означава, че компанията може да покрие близките си задължения.';

  @override
  String get glossRevenueGrowth =>
      'С колко са нараснали приходите спрямо година по-рано.';

  @override
  String get glossEpsGrowth =>
      'С колко е нараснала печалбата на акция спрямо година по-рано.';

  @override
  String get glossDividendYield =>
      'Годишен дивидент ÷ цена на акцията: паричният доход, който бихте получавали годишно, като процент от платеното.';

  @override
  String get glossDividendPerShare =>
      'Дивидентът, изплатен на една акция през последната година.';

  @override
  String get glossPayoutRatio =>
      'Делът от печалбата, изплатен като дивиденти. Над 100% компанията плаща повече, отколкото печели, което рядко трае дълго.';

  @override
  String get portfolioBeta => 'Бета на портфейла';

  @override
  String get glossPortfolioBeta =>
      'Бетата на вашите акции, претеглена по тяхната стойност: приблизително с колко процента се движат акциите ви, когато пазарът се движи с 1%. Над 1 те се колебаят повече от пазара, под 1 – по-малко. Кешът не е включен.';

  @override
  String get portfolioTop3 => 'Топ 3 позиции';

  @override
  String get glossPortfolioTop3 =>
      'Каква част от стойността на акциите ви е в трите ви най-големи позиции. Колкото по-висока е, толкова повече лоши новини за една-единствена компания могат да навредят на целия портфейл.';

  @override
  String get glossDividendGrowth5y =>
      'С колко средно на година е нараствал дивидентът на акция през последните пет години. Стабилният ръст обикновено означава, че компанията има доверие в паричния си поток; намаляването често е предупредителен знак.';

  @override
  String get glossYieldOnCost =>
      'Получените дивиденти за последните 12 месеца, разделени на това, което сте платили за акциите, които още държите. За разлика от дивидентната доходност, тя се измерва спрямо вашата покупна цена, а не спрямо днешната.';

  @override
  String get glossTitle => 'Какво означава?';

  @override
  String get watchNewsTitle => 'Новини за вашите акции';

  @override
  String get undo => 'Отмяна';

  @override
  String get watchSort => 'Сортиране';

  @override
  String get watchSortOwn => 'Моят ред';

  @override
  String get watchSortGainers => 'Най-голям ръст първо';

  @override
  String get watchSortLosers => 'Най-голям спад първо';

  @override
  String get watchSortName => 'По тикер (A–Z)';

  @override
  String get watchHint =>
      'Плъзнете дръжката, за да пренаредите, плъзнете наляво, за да премахнете. Линията показва последните 30 дни.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: анализът ви е готов.';
  }

  @override
  String alertFromCost(String price) {
    return 'Спрямо средната ви покупна цена ($price):';
  }

  @override
  String get briefTitle => 'Днес с вашите акции';

  @override
  String get briefButton => 'Обобщи деня';

  @override
  String get briefHint =>
      'Кратко AI обобщение как днес се движиха портфейлът и любимите ви акции и какво казват последните новини за тях. Не използва анализ.';

  @override
  String get briefRefresh => 'Обнови';

  @override
  String get sectionEarnings => 'Печалби';

  @override
  String earningsNext(String date) {
    return 'Следващ отчет: $date';
  }

  @override
  String get earningsExpected => 'Очаквана EPS';

  @override
  String get earningsReported => 'Отчетена EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'На или над очакваната EPS в $beats от последните $total тримесечия',
      one: 'На или над очакваната EPS в $beats от 1 тримесечие',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol обявява тримесечни резултати утре';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol обявява тримесечни резултати днес';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return '$symbol: днес се очаква дивидент';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Около $amount. Запишете го в портфейла си, когато постъпи.';
  }

  @override
  String get dividendRemindersTitle => 'Напомняния за дивиденти';

  @override
  String get dividendRemindersSubtitle =>
      'Известие в деня, в който според ритъма на записаните от вас плащания се очаква дивидент, за да можете да го запишете';

  @override
  String get earningsRemindersTitle => 'Напомняния за резултати';

  @override
  String get earningsRemindersSubtitle =>
      'Известие ден преди акциите от любимите ви или от портфейла ви да обявят тримесечни резултати';

  @override
  String addAllToFavorites(int count) {
    return 'Добави всички към любими ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Импортиране от екранна снимка';

  @override
  String get holdingsReading => 'Разчитане на позициите ви…';

  @override
  String get holdingsReviewTitle => 'Открити позиции';

  @override
  String get holdingsReviewHint =>
      'Проверете числата, преди да ги добавите. Цената е средната ви покупна цена за акция, а не днешната цена.';

  @override
  String get holdingsNoPrice => 'На изображението няма средна покупна цена';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Добави $count позиции',
      one: 'Добави 1 позиция',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'На това изображение не са открити позиции в акции. Опитайте с екранна снимка на страницата с позиции или активи при вашия брокер.';

  @override
  String get week52Range => '52-седмичен диапазон';

  @override
  String week52BelowHigh(String percent) {
    return '$percent под 52-седмичния максимум';
  }

  @override
  String get week52AtHigh => 'На 52-седмичния максимум';

  @override
  String get alertKindTrailing => 'Спадне от върха';

  @override
  String get alertTrailingPercent => 'Спад от върха (%)';

  @override
  String get alertTrailingHint =>
      'Следва цената нагоре: известието се задейства, когато цената падне с толкова от най-високото си ниво след задаването му.';

  @override
  String alertDescTrailing(String percent) {
    return 'Спад с $percent от върха';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'връх досега: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol падна с $percent от върха си';
  }

  @override
  String get sectionInsiders => 'Сделки на вътрешни лица';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count покупки',
      one: '1 покупка',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count продажби',
      one: '1 продажба',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Нето: $shares акции';
  }

  @override
  String get insiderBuy => 'Купени';

  @override
  String get insiderSell => 'Продадени';

  @override
  String get insiderHint =>
      'Покупки и продажби на открития пазар от ръководители и директори през последните 90 дни (SEC Form 4). Упражняването на опции и предоставените акции не се отчитат.';

  @override
  String get insiderNone =>
      'Няма покупки или продажби на вътрешни лица на открития пазар през последните 90 дни.';

  @override
  String get analystTrend => 'Как се промениха мненията месец по месец';

  @override
  String get watchListAll => 'Всички';

  @override
  String get watchListNew => 'Нов списък';

  @override
  String get watchListName => 'Име на списъка';

  @override
  String get watchListRename => 'Преименувай списъка';

  @override
  String get watchListDelete => 'Изтрий списъка';

  @override
  String get watchListAddTo => 'Добави към списък';

  @override
  String get watchListEmpty =>
      'В този списък все още няма акции. Докоснете бутона за списък до акция, за да я добавите.';

  @override
  String get portfolioAskTitle => 'Въпроси за вашия портфейл';

  @override
  String get rangeYtd => 'От нач. г.';

  @override
  String get backupTitle => 'Резервно копие';

  @override
  String get backupSave => 'Запазване на резервно копие';

  @override
  String get backupSaveHint =>
      'Любимите ви, списъците, портфейлът, известията и бележките в един файл.';

  @override
  String get backupRestore => 'Възстановяване от резервно копие';

  @override
  String get backupRestoreHint =>
      'Добавя съдържанието на файла; нищо от сегашните ви данни не се изтрива.';

  @override
  String get backupRestored => 'Резервното копие е възстановено.';

  @override
  String get backupInvalid => 'Този файл не е резервно копие на WhatStock.';

  @override
  String get allocationPositions => 'Акции';

  @override
  String get allocationSectors => 'Сектори';

  @override
  String get allocationCurrencies => 'Валути';

  @override
  String get allocationAccounts => 'Сметки';

  @override
  String get compareReturn1y => 'Доходност за 1 година';

  @override
  String get compareFromHigh => 'От 52-седмичния максимум';

  @override
  String get briefAutoTitle => 'Дневно резюме всяка сутрин';

  @override
  String get briefAutoSubtitle =>
      '„Днес с вашите акции“ се създава автоматично след 7:00 ч., докато приложението работи; на компютри ще ви уведоми известие. Използва дневния ви лимит за въпроси, не анализ.';

  @override
  String get targetsButton => 'Целево разпределение';

  @override
  String get targetsTitle => 'Целево разпределение';

  @override
  String get targetsHint =>
      'Задайте какъв дял от портфейла да заема всяка акция. Оставете полето празно, ако няма цел. След това приложението ще покаже какво да купите или продадете, за да стигнете дотам.';

  @override
  String targetsSum(String percent) {
    return 'Общо: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Купи ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Продай ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Според целта';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol надмина очакваната EPS';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol не достигна очакваната EPS';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'Отчетена EPS $actual, очаквана $estimate';
  }

  @override
  String get newsExplain => 'Какво означава това?';

  @override
  String get watchAlertAll => 'Известие при големи дневни движения';

  @override
  String get watchAlertAllHint =>
      'Ценово известие за всяка акция в този списък, което се задейства, когато тя се движи толкова за един ден – нагоре или надолу. Акциите, които вече имат такова, го запазват.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Зададени са $count известия',
      one: 'Зададено е 1 известие',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized =>
      'Експортиране на реализираната печалба (CSV)';

  @override
  String get portfolioAnnualReturn => 'Годишна доходност';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / год.';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Претеглена спрямо паричните потоци годишна доходност (XIRR): отчита кога сте купували и продавали, така че добавените по-късно пари не я изкривяват. Показва се, когато първата ви покупка е поне на една година; дивидентите не са включени.';

  @override
  String get eventsAddToCalendar => 'Добави към календара (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Сигнал за портфейла';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Известие, когато целият ви портфейл се промени с толкова за един ден.';

  @override
  String get portfolioMoveAlertOff => 'Изключено';

  @override
  String portfolioMoveUp(String percent) {
    return 'Портфейлът ви се е покачил с $percent днес';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Портфейлът ви е спаднал с $percent днес';
  }

  @override
  String get whatIfTitle => 'Ами ако бяхте инвестирали?';

  @override
  String get whatIfAmount => 'Сума';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount, инвестирани преди $period, днес биха стрували';
  }

  @override
  String get whatIfNote =>
      'Само въз основа на цената на акцията: дивидентите, таксите и данъците не са включени. Миналата доходност не предсказва бъдещата.';

  @override
  String get watchShare => 'Споделяне на списъка';

  @override
  String get watchImport => 'Добавяне на тикери';

  @override
  String get watchImportHint =>
      'Поставете тикери, разделени със запетаи, интервали или нови редове – например списък, който някой е споделил с вас.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Добавени са $count акции',
      one: 'Добавена е 1 акция',
      zero: 'Няма нови акции',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Най-големите първо';

  @override
  String get positionsSortGain => 'Най-голяма обща печалба първо';

  @override
  String get positionsSortToday => 'Най-добри днес първо';

  @override
  String get chartMyBuys => 'Вашите покупки';

  @override
  String get chartMySells => 'Вашите продажби';

  @override
  String get shortcutsTitle => 'Клавишни комбинации';

  @override
  String usMarketOpen(String time) {
    return 'Пазарът в САЩ е отворен · затваря след $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Пазарът в САЩ е затворен · отваря след $time';
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
  String get dividendGoalSet => 'Задай месечна цел за дивиденти';

  @override
  String get dividendGoalTitle => 'Месечна цел за дивиденти';

  @override
  String get dividendGoalAmount => 'Дивиденти на месец';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Около $amount на месец при текущата доходност: $percent от целта ти от $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Около $amount на месец при текущата доходност: целта ти от $goal е постигната';
  }

  @override
  String get portfolioAccount => 'Сметка';

  @override
  String get portfolioAccountHint => 'напр. TBSZ 2026 (по избор)';

  @override
  String get portfolioAccountAdd => 'Посочете сметка';

  @override
  String get portfolioAccountsAll => 'Всички сметки';

  @override
  String get portfolioAccountNote =>
      'Само транзакциите и дивидентите по тази сметка. Кешът, целите и AI анализът се показват във „Всички сметки“.';

  @override
  String get portfolioNoAccount => 'Без сметка';

  @override
  String portfolioFee(String currency) {
    return 'Комисиона ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Добавете комисиона';

  @override
  String portfolioFeeRow(String amount) {
    return 'Комисиона: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'Годишно обобщение';

  @override
  String get portfolioProceeds => 'Приходи от продажби';

  @override
  String get portfolioCostBasis => 'Цена на придобиване';

  @override
  String get portfolioFeesPaid => 'Платени комисиони';

  @override
  String get portfolioAnnualSummaryNote =>
      'Сумите са в оригиналната валута, без превалутиране. Приходите са след приспадане на комисионата за продажба; цената на придобиване включва комисионата за покупка (FIFO). За данъчната декларация превалутирайте по курса, който изисква данъчната администрация.';

  @override
  String get portfolioShare => 'Споделяне на резултатите';

  @override
  String get portfolioShareHeading => 'Моят портфейл';

  @override
  String get portfolioTopHoldings => 'Най-големи позиции';

  @override
  String get portfolioShareNote => 'Споделят се само проценти, без суми.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count позиции',
      one: '1 позиция',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'Не е инвестиционен съвет';

  @override
  String get contributionButton => 'Инвестиране на нови пари';

  @override
  String contributionAmount(String currency) {
    return 'Сума за инвестиране ($currency)';
  }

  @override
  String get contributionHint =>
      'Само покупки, без продажби: първо получават пари позициите, които най-много изостават от целта си.';

  @override
  String contributionShares(String shares) {
    return '≈ $shares акции';
  }

  @override
  String contributionMissing(String symbols) {
    return 'Няма актуална цена за $symbols: не са включени в разпределението.';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'Ако годишната доходност се запази ($rate), ще постигнете целта около $year г.';
  }

  @override
  String get portfolioMaxDrawdown => 'Най-голям спад';

  @override
  String get glossMaxDrawdown =>
      'Най-големият спад в стойността на вашите акции от по-ранен връх до по-късно дъно, без ефекта от вашите покупки и продажби (претеглен по време). Показва колко дълбок спад вече е преживял портфейлът ви.';

  @override
  String watchSince(String date) {
    return 'От добавянето в любими ($date)';
  }

  @override
  String get portfolioSampleTry => 'Опитайте с примерен портфейл';

  @override
  String get portfolioSampleBanner =>
      'Това е примерен портфейл. Добавете собствените си покупки до него или го премахнете.';

  @override
  String get portfolioSampleRemove => 'Премахни примера';

  @override
  String get portfolioStopsAll => 'Трейлинг стоп за всички позиции';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Зададени са $count трейлинг стопа',
      one: 'Зададен е 1 трейлинг стоп',
      zero: 'Всички позиции вече имат трейлинг стоп',
    );
    return '$_temp0';
  }

  @override
  String portfolioSinceSale(String percent) {
    return '$percent от продажбата';
  }

  @override
  String get lotPreviewRealized => 'Реализирано от тази продажба (FIFO):';

  @override
  String lotPreviewAverage(String after, String before) {
    return 'Нова средна покупна цена: $after (сега $before)';
  }

  @override
  String get portfolioGoalSet => 'Задай цел';

  @override
  String get portfolioGoalTitle => 'Цел на портфейла';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent от целта ти от $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Целта от $amount е постигната';
  }

  @override
  String get portfolioGoalRemove => 'Премахни целта';

  @override
  String get alertEdit => 'Редактирай известие';

  @override
  String get positionOpenLots => 'Все още притежавани (първо най-старите)';

  @override
  String get lotRemoved => 'Транзакцията е изтрита';

  @override
  String get alertDeleted => 'Известието е изтрито';

  @override
  String get alertsClearTriggered => 'Изчисти задействаните известия';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Изчистени са $count известия',
      one: 'Изчистено е 1 известие',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Начален екран';

  @override
  String get allocationCountries => 'Държави';

  @override
  String get newsExplainNoteResearch =>
      'Обяснение от AI: проверява фактите в интернет, отваря статията и преценява колко надежден е източникът. Не представлява инвестиционен съвет. Използва дневния ви лимит за въпроси, не анализ.';

  @override
  String get sourceOfficial => 'Официално';

  @override
  String get sourcePressRelease => 'Прессъобщение';

  @override
  String get sourceMajorNews => 'Водеща медия';

  @override
  String get sourceOpinion => 'Мнение';

  @override
  String get earningsSummaryButton => 'Какво имаше в последния отчет?';

  @override
  String get earningsSummaryNote =>
      'Обобщение от AI на съобщението на компанията за резултатите и на медийното отразяване, което намира в интернет. Не представлява инвестиционен съвет. Използва дневния ви лимит за въпроси, не анализ.';

  @override
  String get compareLastSurprise => 'EPS посл. тримесечие vs. очаквана';

  @override
  String get compareNextReport => 'Следващ отчет';

  @override
  String get resolvingDescription => 'Определяме коя акция имате предвид…';

  @override
  String get instrumentTitle => 'За този инструмент';

  @override
  String get instrumentHint =>
      'За този символ няма фирмен профил – може да е ETF, фонд или депозитарна разписка. Попитайте AI какво е, какво съдържа и колко струва.';

  @override
  String get instrumentAsk => 'Какво е това?';

  @override
  String get instrumentNote =>
      'Обяснение от AI по страницата на фонда при емитента и финансови сайтове, които намира в интернет. Не представлява инвестиционен съвет. Използва дневния ви лимит за въпроси, не анализ.';

  @override
  String suggestAskAi(String query) {
    return 'Попитайте AI: „$query“';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Няма актуална цена за $symbols.';
  }

  @override
  String get eventsRecentResults => 'Наскоро отчетени резултати';

  @override
  String get saveToNotes => 'Запази в моите бележки';

  @override
  String get savedToNotes => 'Запазено в бележките ви';

  @override
  String get portfolioDividendsReceived => 'Получени дивиденти';

  @override
  String get portfolioDividendsThisYear => 'Тази година';

  @override
  String get portfolioDividendsAllTime => 'За целия период';

  @override
  String get portfolioAddDividend => 'Добавяне на дивидент';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Получена сума ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Дата на плащане';

  @override
  String get portfolioDividendsEmpty =>
      'Още няма записани дивиденти. Добавете ги ръчно или импортирайте експорта от вашия брокер – редовете с дивиденти също се разпознават.';

  @override
  String get portfolioSplit => 'Сплит на акции';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Сплит на акции: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Покупките и продажбите с дата преди сплита се коригират: броят на акциите се умножава, а цената за акция се дели, така че разходът остава същият.';

  @override
  String get portfolioSplitRatio => 'Съотношение (нови : стари)';

  @override
  String get portfolioSplitRatioError =>
      'Въведете съотношение като 10:1 или 1:10 за обратен сплит.';

  @override
  String get portfolioSplitDate => 'Дата на сплита';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Сплит на акции $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Сплитът на акции е изтрит';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Добавени са $count сплита на акции',
      one: 'Добавен е 1 сплит на акции',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Добавени са $count дивидента',
      one: 'Добавен е 1 дивидент',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Експортиране на дивиденти (CSV)';

  @override
  String get portfolioDividendDeleted => 'Дивидентът е изтрит';

  @override
  String get portfolioDividendsHint =>
      'Сумите са такива, каквито са постъпили по сметката ви, във валутата на изплащане; общите суми се преизчисляват по днешния курс. За данъчната декларация използвайте извлечението от брокера си.';

  @override
  String get awayTitle => 'Докато ви нямаше';

  @override
  String awaySince(String when) {
    return 'От $when';
  }

  @override
  String get awayQuiet => 'Нищо не се промени особено.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Задействани са $count сигнала',
      one: 'Задействан е 1 сигнал',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Публикуваха резултати: $symbols';
  }

  @override
  String get moveWhyButton => 'Защо се движи днес?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent днес';
  }

  @override
  String get moveWhyNote =>
      'Обяснение от ИИ по днешните новини в интернет; истинската причина може да е неизвестна или различна. Не е инвестиционен съвет. Използва дневния ви лимит за въпроси, а не анализ.';

  @override
  String get sectionTechnical => 'Техническа картина';

  @override
  String get labelSma50 => '50-дневна средна';

  @override
  String get labelSma200 => '200-дневна средна';

  @override
  String get labelRsi => 'RSI (14 дни)';

  @override
  String get labelVolatility30 => 'Волатилност (30 дни)';

  @override
  String techAbove(String percent) {
    return '$percent над';
  }

  @override
  String techBelow(String percent) {
    return '$percent под';
  }

  @override
  String get techOverbought => 'свръхкупен';

  @override
  String get techOversold => 'свръхпродаден';

  @override
  String get techNeutral => 'неутрално';

  @override
  String get techGoldenCross =>
      '50-дневната средна е над 200-дневната – възходящ тренд според класическото тълкуване.';

  @override
  String get techDeathCross =>
      '50-дневната средна е под 200-дневната – низходящ тренд според класическото тълкуване.';

  @override
  String get glossSma50 =>
      'Средната цена на затваряне за последните 50 търговски дни. Цена над нея често се тълкува като краткосрочна сила, под нея – като слабост.';

  @override
  String get glossSma200 =>
      'Средната цена на затваряне за последните 200 търговски дни – класическата дългосрочна трендова линия. Много инвеститори приемат цена над нея за дългосрочен възходящ тренд.';

  @override
  String get glossRsi =>
      'Индекс на относителната сила: сравнява скорошните печалби със скорошните загуби по скала от 0 до 100. Над 70 акцията често се нарича свръхкупена (поскъпнала е бързо), под 30 – свръхпродадена, но силен тренд може да остане там дълго.';

  @override
  String get glossVolatility =>
      'Колко се колебае цената от ден на ден, преизчислено за година: 20% означава, че през типична година цената се движи в рамки около ±20%. По-висока волатилност означава по-големи движения в двете посоки.';

  @override
  String get techNote =>
      'Изчислено по дневните цени на затваряне. Техническите сигнали описват миналото, а не бъдещето.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$above от $count позиции над 200-дневната си средна';
  }

  @override
  String get watchSignalsTitle => 'Сигнали';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · свръхпродаден';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · свръхкупен';
  }

  @override
  String get signalCrossedAbove => 'пресече 200-дневната средна нагоре';

  @override
  String get signalCrossedBelow => 'пресече 200-дневната средна надолу';

  @override
  String get signalAlertsTitle => 'Известия за технически сигнали';

  @override
  String get signalAlertsSubtitle =>
      'Веднъж дневно, когато акция, която следите, стане свръхпродадена или свръхкупена (RSI), или цената ѝ пресече 200-дневната средна.';

  @override
  String get signalAlertsNotification => 'Технически сигнали';

  @override
  String get glossaryPageTitle => 'Речник';

  @override
  String get glossaryPageSubtitle =>
      'Прости обяснения на всеки показател в приложението, от P/E до RSI';

  @override
  String get glossarySearchHint => 'Търсене в речника';

  @override
  String get portfolioCash => 'Кеш';

  @override
  String get portfolioCashTitle => 'Паричен баланс';

  @override
  String get portfolioCashHint =>
      'Неинвестирани пари при брокера ви, по валути. Включват се в общата стойност и разпределението; не и в доходността.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Сума ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Задаване на паричен баланс';

  @override
  String get portfolioDividendsByMonth => 'По месеци';

  @override
  String get dividendsLegendReceived => 'Получени';

  @override
  String get dividendsLegendExpected => 'Очаквани';

  @override
  String get portfolioDividendsExpected => 'Очаквани следващи';

  @override
  String get portfolioDividendsExpectedNote =>
      'Приблизителна оценка по датите и сумите на записаните от вас плащания; компаниите могат да ги променят или пропуснат.';

  @override
  String portfolioDividendAround(String date) {
    return 'около $date';
  }
}
