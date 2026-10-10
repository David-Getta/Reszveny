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
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count аналитици', one: '1 аналитик');
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
  String get errRecognitionUnreachable => 'Няма връзка с услугата за разпознаване. Проверете интернет връзката си.';

  @override
  String errRecognitionHttp(String status) {
    return 'Услугата за разпознаване върна грешка (HTTP $status).';
  }

  @override
  String get errRecognitionRefused => 'Услугата за разпознаване не можа да обработи това изображение.';

  @override
  String get errRecognitionTruncated => 'Отговорът от разпознаването беше прекъснат. Моля, опитайте отново.';

  @override
  String get errRecognitionBadResponse => 'Неочакван отговор от услугата за разпознаване.';

  @override
  String get errRecognitionEmpty => 'Услугата за разпознаване върна празен отговор.';

  @override
  String get errMissingFinnhubKey => 'Пазарните данни не са конфигурирани (няма FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable => 'Няма връзка с услугата за пазарни данни. Проверете интернет връзката си.';

  @override
  String get errMarketRateLimited => 'Твърде много заявки към услугата за пазарни данни. Моля, изчакайте една минута.';

  @override
  String errMarketHttp(String status) {
    return 'Услугата за пазарни данни върна грешка (HTTP $status).';
  }

  @override
  String get errMarketBadResponse => 'Неочакван отговор от услугата за пазарни данни.';

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
      'Подробен преглед, написан от AI: обобщение на последните новини, бизнесът, силните страни, рисковете и скритите фактори, оценката, прогноза за цената със сценарии от психологическа, социологическа, техническа и макро гледна точка, и какво да следите.';

  @override
  String get aiGenerate => 'Генерирай анализ';

  @override
  String get aiRegenerate => 'Генерирай отново';

  @override
  String get aiGenerating => 'Анализът се подготвя… това може да отнеме минута-две.';

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
  String get errAiNotConfigured => 'AI анализът не е конфигуриран (няма ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable => 'Няма връзка с AI услугата. Проверете интернет връзката си.';

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
  String get chartUnavailable => 'Ценовата история не е налична от текущия източник на данни.';

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
  String get statementsUnavailable => 'За тази акция няма налични публикувани финансови отчети.';

  @override
  String get launchAtLogin => 'Стартиране при влизане';

  @override
  String get hotkeyLabel => 'Глобална клавишна комбинация';

  @override
  String get hotkeyRecordHint => 'Щракнете тук, после натиснете новата клавишна комбинация';

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
  String get noFavorites => 'Още няма любими. Докоснете звездата на акция, за да я добавите.';

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
  String get updateDownloaded => 'Актуализацията е готова. Рестартирайте, за да я инсталирате.';

  @override
  String get updateNow => 'Актуализирай';

  @override
  String get restartNow => 'Рестартирай';

  @override
  String get updatesViaStore => 'Актуализациите пристигат автоматично през магазина за приложения.';

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
  String get trialExpired => 'Безплатният ви пробен период изтече. Изберете план, за да продължите да анализирате.';

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
  String get errTrialExpired => 'Безплатният ви пробен период изтече. Изберете план, за да продължите.';

  @override
  String get errNoPlan => 'За AI анализ е необходим активен план.';

  @override
  String get viewPlans => 'Виж плановете';

  @override
  String get usageTitle => 'Използване';

  @override
  String get demoPurchaseNote => 'Демо таксуване: покупките на тази платформа са симулирани.';

  @override
  String get mostPopular => 'Най-популярен';

  @override
  String get bestValue => 'Най-изгоден';

  @override
  String get planFeaturesCommon =>
      'Разпознаване на снимки, данни в реално време, графики, любими и всички 44 езика са включени във всеки план. Лимитът се отнася за AI анализите.';

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
  String get aiDepthDeepDesc => 'Повече търсения в мрежата, сравнение с конкурентите и по-задълбочени подробности.';

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
  String get aiReaderBeginnerDesc => 'Прост език; всеки специализиран термин е обяснен.';

  @override
  String get aiReaderExperiencedDesc => 'По-наситен текст със стандартна финансова терминология.';

  @override
  String get aiCounterArgument => 'Най-силният контрааргумент';

  @override
  String get aiCounterArgumentDesc => 'Обобщението винаги завършва с най-силния аргумент срещу собствения си извод.';

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
}
