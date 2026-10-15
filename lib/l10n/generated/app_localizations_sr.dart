// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Serbian (`sr`).
class AppLocalizationsSr extends AppLocalizations {
  AppLocalizationsSr([String locale = 'sr']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'Фотографишите акцију и сазнајте све о њој.';

  @override
  String get homeHint =>
      'Сертификат о акцијама, екран брокерске апликације, новине или лого компаније – било шта што идентификује акцију.';

  @override
  String get takePhoto => 'Снимите фотографију';

  @override
  String get chooseFromGallery => 'Изаберите из галерије';

  @override
  String get chooseImage => 'Изаберите слику';

  @override
  String get enterTickerManually => 'Унесите тикер ручно';

  @override
  String get tickerInputLabel => 'Тикер симбол';

  @override
  String get tickerInputHint => 'нпр. AAPL';

  @override
  String get lookUp => 'Претражи';

  @override
  String demoModeBanner(String symbols) {
    return 'Демо режим – кључ за тржишне податке није подешен. Пробни подаци су доступни за: $symbols.';
  }

  @override
  String get recognizing => 'Анализа слике…';

  @override
  String get loadingData => 'Учитавање података…';

  @override
  String get noCandidatesTitle => 'Акција није препозната';

  @override
  String get noCandidatesBody =>
      'Нисмо успели да идентификујемо акцију на овој слици. Пробајте оштрију фотографију или унесите тикер ручно.';

  @override
  String get whatWeSaw => 'Шта смо видели';

  @override
  String get chooseCandidateTitle => 'Коју акцију сте мислили?';

  @override
  String confidencePercent(int percent) {
    return '$percent% поузданости';
  }

  @override
  String get settings => 'Подешавања';

  @override
  String get language => 'Језик';

  @override
  String get systemLanguage => 'Подразумевано системом';

  @override
  String get about => 'О апликацији';

  @override
  String get disclaimer =>
      'Ова апликација пружа само информације и не представља инвестициони савет. Подаци могу бити закаснели или нетачни.';

  @override
  String dataSource(String source) {
    return 'Извор података: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Препознавање: $source';
  }

  @override
  String get retry => 'Покушај поново';

  @override
  String get cancel => 'Откажи';

  @override
  String get ok => 'У реду';

  @override
  String get close => 'Затвори';

  @override
  String get errorGeneric => 'Нешто је пошло наопако.';

  @override
  String get errorSectionUnavailable => 'Овај одељак није могао да се учита.';

  @override
  String get notAvailable => 'н/д';

  @override
  String get sectionIdentity => 'Идентификација';

  @override
  String get sectionPrice => 'Цена';

  @override
  String get sectionValuation => 'Вредновање';

  @override
  String get sectionFinancials => 'Финансијски подаци';

  @override
  String get sectionDividend => 'Дивиденда';

  @override
  String get sectionProfile => 'Профил компаније';

  @override
  String get sectionAnalysts => 'Оцене аналитичара';

  @override
  String get sectionNews => 'Вести';

  @override
  String get sectionRecognition => 'Детаљи препознавања';

  @override
  String get labelSymbol => 'Тикер';

  @override
  String get labelExchange => 'Берза';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Валута';

  @override
  String get labelCountry => 'Земља';

  @override
  String get labelIndustry => 'Индустрија';

  @override
  String get labelSector => 'Сектор';

  @override
  String get labelWebsite => 'Веб-сајт';

  @override
  String get labelIpoDate => 'Датум IPO';

  @override
  String get labelMarketCap => 'Тржишна капитализација';

  @override
  String get labelSharesOutstanding => 'Акције у оптицају';

  @override
  String get labelEmployees => 'Запослени';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Седиште';

  @override
  String get labelDescription => 'Опис';

  @override
  String get labelLastPrice => 'Последња цена';

  @override
  String get labelChange => 'Промена';

  @override
  String get labelOpen => 'Отварање';

  @override
  String get labelDayHigh => 'Дневни максимум';

  @override
  String get labelDayLow => 'Дневни минимум';

  @override
  String get labelPreviousClose => 'Претходно затварање';

  @override
  String get labelWeek52High => '52-недељни максимум';

  @override
  String get labelWeek52Low => '52-недељни минимум';

  @override
  String get labelAverageVolume10d => 'Просечан обим (10 дана)';

  @override
  String updatedAt(String time) {
    return 'Ажурирано $time';
  }

  @override
  String get labelPeTrailing => 'P/E (текући)';

  @override
  String get labelPeForward => 'P/E (очекивани)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / слободни новчани ток';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Бета';

  @override
  String get labelRevenueTtm => 'Приходи (TTM)';

  @override
  String get labelNetIncomeTtm => 'Нето добит (TTM)';

  @override
  String get labelGrossMargin => 'Бруто маржа';

  @override
  String get labelOperatingMargin => 'Оперативна маржа';

  @override
  String get labelNetMargin => 'Нето маржа';

  @override
  String get labelRoe => 'Принос на капитал';

  @override
  String get labelRoa => 'Принос на имовину';

  @override
  String get labelDebtToEquity => 'Дуг / капитал';

  @override
  String get labelCurrentRatio => 'Коефицијент текуће ликвидности';

  @override
  String get labelRevenueGrowth => 'Раст прихода (YoY)';

  @override
  String get labelEpsGrowth => 'Раст EPS (YoY)';

  @override
  String get labelDividendYield => 'Дивидендни принос';

  @override
  String get labelDividendPerShare => 'Дивиденда по акцији';

  @override
  String get labelPayoutRatio => 'Стопа исплате';

  @override
  String get labelConsensus => 'Консензус';

  @override
  String get ratingStrongBuy => 'Снажна куповина';

  @override
  String get ratingBuy => 'Куповина';

  @override
  String get ratingHold => 'Задржати';

  @override
  String get ratingSell => 'Продаја';

  @override
  String get ratingStrongSell => 'Снажна продаја';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count аналитичара',
      few: '$count аналитичара',
      one: '$count аналитичар',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Период: $period';
  }

  @override
  String get noNews => 'Нема недавних вести.';

  @override
  String get openArticle => 'Отвори чланак';

  @override
  String get openLinkFailed => 'Није могуће отворити везу.';

  @override
  String get recognitionSummary => 'Резиме';

  @override
  String get recognitionEvidence => 'Зашто тако мислимо';

  @override
  String get recognitionRawText => 'Текст прочитан са слике';

  @override
  String get errMissingAnthropicKey =>
      'Препознавање слика није подешено (нема ANTHROPIC_API_KEY). Унесите тикер ручно.';

  @override
  String get errRecognitionUnreachable =>
      'Није могуће повезати се са сервисом за препознавање. Проверите интернет везу.';

  @override
  String errRecognitionHttp(String status) {
    return 'Сервис за препознавање је вратио грешку (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Сервис за препознавање није могао да обради ову слику.';

  @override
  String get errRecognitionTruncated =>
      'Одговор препознавања је прекинут. Покушајте поново.';

  @override
  String get errRecognitionBadResponse =>
      'Неочекиван одговор сервиса за препознавање.';

  @override
  String get errRecognitionEmpty =>
      'Сервис за препознавање је вратио празан одговор.';

  @override
  String get errMissingFinnhubKey =>
      'Тржишни подаци нису подешени (нема FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Није могуће повезати се са сервисом тржишних података. Проверите интернет везу.';

  @override
  String get errMarketRateLimited =>
      'Превише захтева ка сервису тржишних података. Сачекајте минут.';

  @override
  String errMarketHttp(String status) {
    return 'Сервис тржишних података је вратио грешку (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Неочекиван одговор сервиса тржишних података.';

  @override
  String errNoQuote(String symbol) {
    return 'Нису пронађени подаци о цени за $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Није пронађен профил компаније за $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Демо режим подржава само $symbols. Додајте FINNHUB_API_KEY за податке у реалном времену.';
  }

  @override
  String errUnknown(String detail) {
    return 'Нешто је пошло наопако: $detail';
  }

  @override
  String get newSearch => 'Нова претрага';

  @override
  String get recentSearches => 'Недавне';

  @override
  String get noRecentSearches => 'Још нема недавних претрага.';

  @override
  String get clearRecent => 'Обриши недавне';

  @override
  String get greeting => 'Коју акцију да погледамо?';

  @override
  String get searchHint => 'Тикер или назив компаније';

  @override
  String get attachImage => 'Приложи слику';

  @override
  String get searchResultsTitle => 'Резултати претраге';

  @override
  String errNoResults(String query) {
    return 'Нису пронађене акције за „$query“.';
  }

  @override
  String get quickBarHint => 'Унесите тикер или назив компаније…';

  @override
  String get openFullWindow => 'Отвори прозор';

  @override
  String hotkeyHint(String shortcut) {
    return 'Притисните $shortcut било где да позовете WhatStock.';
  }

  @override
  String get trayOpen => 'Отвори WhatStock';

  @override
  String get trayQuickSearch => 'Брза претрага';

  @override
  String get trayQuit => 'Изађи';

  @override
  String get appearance => 'Изглед';

  @override
  String get themeSystem => 'Системска';

  @override
  String get themeDark => 'Тамна';

  @override
  String get themeLight => 'Светла';

  @override
  String get back => 'Назад';

  @override
  String get aiSectionTitle => 'AI анализа';

  @override
  String get aiIntro =>
      'Детаљан преглед који је написала вештачка интелигенција: резиме недавних вести, пословање, снаге, ризици и скривени фактори, вредновање, изгледи цене са сценаријима из психолошког, социолошког, техничког и макроекономског угла и шта пратити.';

  @override
  String get aiGenerate => 'Генериши анализу';

  @override
  String get aiRegenerate => 'Генериши поново';

  @override
  String get aiGenerating =>
      'Припремамо анализу… ово може потрајати минут или два.';

  @override
  String get aiSources => 'Извори';

  @override
  String aiGeneratedAt(String time) {
    return 'Генерисано $time';
  }

  @override
  String get aiDisclaimer =>
      'Анализа коју је генерисала вештачка интелигенција на основу јавних података и недавних вести. Може садржати грешке или бити застарела и не представља инвестициони савет.';

  @override
  String get errAiNotConfigured =>
      'AI анализа није подешена (нема ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Није могуће повезати се са AI сервисом. Проверите интернет везу.';

  @override
  String errAiHttp(String status) {
    return 'AI сервис је вратио грешку (HTTP $status).';
  }

  @override
  String get errAiRefused => 'AI сервис је одбио да анализира ову акцију.';

  @override
  String get errAiBadResponse => 'Неочекиван одговор AI сервиса.';

  @override
  String get sectionChart => 'Графикон цене';

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
  String get chartUnavailable =>
      'Историја цена није доступна из тренутног извора података.';

  @override
  String get sectionStatements => 'Финансијски извештаји (годишњи)';

  @override
  String get labelFiscalYear => 'Фискална година';

  @override
  String get labelRevenue => 'Приходи';

  @override
  String get labelNetIncome => 'Нето добит';

  @override
  String get labelTotalAssets => 'Укупна имовина';

  @override
  String get labelTotalLiabilities => 'Укупне обавезе';

  @override
  String get labelEquity => 'Акционарски капитал';

  @override
  String get labelOperatingCashFlow => 'Оперативни новчани ток';

  @override
  String get statementsUnavailable =>
      'Објављени финансијски извештаји нису доступни за ову акцију.';

  @override
  String get launchAtLogin => 'Покрени при пријављивању';

  @override
  String get hotkeyLabel => 'Глобална пречица';

  @override
  String get hotkeyRecordHint =>
      'Кликните овде, а затим притисните нову комбинацију тастера';

  @override
  String get hotkeyReset => 'Врати на подразумевано';

  @override
  String get pasteImage => 'Налепи слику из клипборда';

  @override
  String get errClipboardNoImage => 'У клипборду нема слике.';

  @override
  String get favorites => 'Омиљено';

  @override
  String get addToFavorites => 'Додај у омиљене';

  @override
  String get removeFromFavorites => 'Уклони из омиљених';

  @override
  String get noFavorites =>
      'Још нема омиљених. Додирните звездицу поред акције да бисте је додали.';

  @override
  String get displayCurrency => 'Валута приказа';

  @override
  String get displayCurrencyNone => 'Само сопствена валута акције';

  @override
  String labelConverted(String currency) {
    return '≈ у $currency';
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
  String get autoUpdate => 'Аутоматски инсталирај ажурирања';

  @override
  String get checkForUpdates => 'Потражи ажурирања';

  @override
  String get updateChecking => 'Тражење ажурирања…';

  @override
  String get updateUpToDate => 'Имате најновију верзију.';

  @override
  String updateAvailable(String version) {
    return 'Доступна је верзија $version.';
  }

  @override
  String get updateDownloading => 'Ажурирање се преузима у позадини…';

  @override
  String get updateDownloaded =>
      'Ажурирање је спремно. Поново покрените апликацију да бисте га инсталирали.';

  @override
  String get updateNow => 'Ажурирај';

  @override
  String get restartNow => 'Поново покрени';

  @override
  String get updatesViaStore =>
      'Ажурирања стижу аутоматски преко продавнице апликација.';

  @override
  String get updateCheckFailed => 'Није могуће потражити ажурирања.';

  @override
  String get subscription => 'Претплата';

  @override
  String get planTrial => 'Пробни';

  @override
  String get planNormal => 'Стандард';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Нема активног плана';

  @override
  String planAnalysesPerMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count анализа месечно',
      few: '$count анализе месечно',
      one: '$count анализа месечно',
    );
    return '$_temp0';
  }

  @override
  String planTrialDescription(int days, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Бесплатни пробни период од $days дана са $count анализа',
      few: 'Бесплатни пробни период од $days дана са $count анализе',
      one: 'Бесплатни пробни период од $days дана са $count анализом',
    );
    return '$_temp0';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Преостало је још $days дана пробног периода',
      few: 'Преостала су још $days дана пробног периода',
      one: 'Преостао је још $days дан пробног периода',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Ваш бесплатни пробни период је истекао. Изаберите план да бисте наставили са анализама.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Преостало је $remaining од $total анализа у овом периоду';
  }

  @override
  String extraCredits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count додатних анализа',
      few: '$count додатне анализе',
      one: '$count додатна анализа',
    );
    return '$_temp0';
  }

  @override
  String renewsOn(String date) {
    return 'Обнавља се $date';
  }

  @override
  String get choosePlan => 'Изаберите план';

  @override
  String get currentPlan => 'Тренутни план';

  @override
  String get subscribe => 'Претплати се';

  @override
  String get perMonth => '/ месец';

  @override
  String get extraPacksTitle => 'Потребно вам је више? Купите додатне анализе';

  @override
  String get extraPacksHint =>
      'Додатне анализе никада не истичу и користе се након месечне квоте.';

  @override
  String get buy => 'Купи';

  @override
  String get restorePurchases => 'Врати куповине';

  @override
  String get manageSubscription => 'Управљај претплатом';

  @override
  String get purchaseSuccess => 'Хвала! Ваша куповина је активна.';

  @override
  String get purchasePending => 'Куповина је у току…';

  @override
  String get purchaseFailed => 'Куповину није било могуће завршити.';

  @override
  String get purchaseCanceled => 'Куповина је отказана.';

  @override
  String get billingUnavailable =>
      'Куповине још нису доступне на овој платформи. Претплатите се на телефону или Mac рачунару; ваш план ће радити на свим уређајима.';

  @override
  String get errQuotaExceeded =>
      'Немате више анализа у овом периоду. Надоградите план или купите додатне анализе.';

  @override
  String get errTrialExpired =>
      'Ваш бесплатни пробни период је истекао. Изаберите план да бисте наставили.';

  @override
  String get errNoPlan => 'За AI анализу је потребан активан план.';

  @override
  String get viewPlans => 'Прикажи планове';

  @override
  String get usageTitle => 'Потрошња';

  @override
  String get demoPurchaseNote =>
      'Демо наплата: куповине се на овој платформи симулирају.';

  @override
  String get mostPopular => 'Најпопуларнији';

  @override
  String get bestValue => 'Најбоља вредност';

  @override
  String get planFeaturesCommon =>
      'Препознавање фотографија, подаци у реалном времену, графикони, омиљено и сва 120 језика укључени су у сваки план. Квота се односи на AI анализе.';

  @override
  String get searchLanguages => 'Претрага језика…';

  @override
  String get noLanguageMatch => 'Ниједан језик не одговара.';

  @override
  String get aiSettings => 'AI анализа';

  @override
  String get aiLength => 'Дужина';

  @override
  String get aiDepthBrief => 'Кратко';

  @override
  String get aiDepthStandard => 'Стандардно';

  @override
  String get aiDepthDeep => 'Детаљно';

  @override
  String get aiDepthBriefDesc => 'Најважније, брзо.';

  @override
  String get aiDepthStandardDesc => 'Комплетан извештај са свим одељцима.';

  @override
  String get aiDepthDeepDesc =>
      'Више веб-претрага, поређење са конкурентима и детаљнија разрада.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Око $min–$max речи';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'троши $count анализа',
      few: 'троши $count анализе',
      one: 'троши $count анализу',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Ниво читаоца';

  @override
  String get aiReaderBeginner => 'Почетник';

  @override
  String get aiReaderExperienced => 'Искусан';

  @override
  String get aiReaderBeginnerDesc =>
      'Једноставан језик; сваки стручни термин је објашњен.';

  @override
  String get aiReaderExperiencedDesc =>
      'Збијенији текст са стандардном финансијском терминологијом.';

  @override
  String get aiCounterArgument => 'Најјачи контрааргумент';

  @override
  String get aiCounterArgumentDesc =>
      'Резиме се увек завршава најјачим аргументом против сопственог закључка.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Уз ваш план до $count веб-претрага по анализи',
      few: 'Уз ваш план до $count веб-претраге по анализи',
      one: 'Уз ваш план до $count веб-претраге по анализи',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Стандардна дужина по плану: Стандард $normal, Pro $pro, Max $max, Ultra $ultra. „Кратко“ користи 2 мање, „Детаљно“ 2 више.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'до $count веб-претрага',
      few: 'до $count веб-претраге',
      one: 'до $count веб-претраге',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count веб-претрага по анализи',
      few: '$count веб-претраге по анализи',
      one: '$count веб-претрага по анализи',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'За ову дужину потребно је анализа: $needed, а преостало је: $left. Изаберите краћу дужину у Подешавањима или набавите још анализа.';
  }

  @override
  String get outlookMarketMood => 'Расположење тржишта';

  @override
  String get moodVeryPessimistic => 'Веома песимистично';

  @override
  String get moodPessimistic => 'Песимистично';

  @override
  String get moodNeutral => 'Неутрално';

  @override
  String get moodOptimistic => 'Оптимистично';

  @override
  String get moodVeryOptimistic => 'Веома оптимистично';

  @override
  String get scenarioBull => 'Оптимистички сценарио';

  @override
  String get scenarioBase => 'Основни сценарио';

  @override
  String get scenarioBear => 'Песимистички сценарио';

  @override
  String outlookCurrentPrice(String price) {
    return 'Тренутна цена: $price';
  }

  @override
  String get outlookKeyLevels => 'Кључни нивои';

  @override
  String get keyLevelSupport => 'Подршка';

  @override
  String get keyLevelResistance => 'Отпор';

  @override
  String get keyLevelAnchor => 'Ценовно сидро';

  @override
  String get upcomingEvents => 'Предстојећи догађаји';

  @override
  String get outlookChartNote =>
      'Оквирни распони; вероватноће су грубе процене, а не предвиђања.';

  @override
  String get accountTitle => 'Налог';

  @override
  String get signIn => 'Пријави се';

  @override
  String get signOut => 'Одјави се';

  @override
  String get notSignedIn => 'Нисте пријављени';

  @override
  String get accountBenefit =>
      'Пријавите се да би ваша претплата радила на свим вашим уређајима.';

  @override
  String get accountSyncedNote =>
      'Ваша претплата и преостале анализе су исте на сваком уређају.';

  @override
  String get signInTitle => 'Пријава на WhatStock';

  @override
  String get emailLabel => 'Имејл адреса';

  @override
  String get continueWithEmail => 'Настави путем имејла';

  @override
  String codeSentTo(String email) {
    return 'Послали смо шестоцифрени код на $email. Важи 10 минута.';
  }

  @override
  String get codeLabel => 'Код за пријаву';

  @override
  String get resendCode => 'Пошаљи нови код';

  @override
  String get useDifferentEmail => 'Користи други имејл';

  @override
  String get errInvalidCode => 'Код је погрешан или је истекао.';

  @override
  String get errInvalidEmail => 'Унесите исправну имејл адресу.';

  @override
  String get errSignInFailed =>
      'Пријава није успела. Проверите интернет везу и покушајте поново.';

  @override
  String get checkoutWaiting =>
      'Довршите плаћање у прегледачу. Апликација ће се аутоматски ажурирати када буде готово.';

  @override
  String get paymentViaStripe =>
      'Безбедно плаћање у прегледачу преко Stripe-а. Откажите кад год желите.';

  @override
  String get paymentViaStore =>
      'Наплаћује се преко вашег App Store или Google Play налога. Откажите кад год желите у подешавањима продавнице.';

  @override
  String get keySpace => 'Размак';

  @override
  String get doubleOptionTitle => 'Двоструки притисак на Option';

  @override
  String get doubleOptionSubtitle =>
      'Брзи двоструки притисак тастера Option такође позива WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Да би радило и у другим апликацијама, дозволите приступ апликацији WhatStock у одељку Подешавања система → Приватност и безбедност → Праћење уноса, а затим поново отворите апликацију.';

  @override
  String get openSystemSettings => 'Отвори Подешавања система';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Притисните $shortcut или двапут притисните Option било где да позовете WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Највероватније';

  @override
  String get longTermToday => 'Данас';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years година',
      few: '$years године',
      one: '$years година',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range годишње';
  }

  @override
  String longTermLikely(String price) {
    return 'највероватније $price';
  }

  @override
  String get confidenceLow => 'Ниска поузданост';

  @override
  String get confidenceMedium => 'Средња поузданост';

  @override
  String get confidenceHigh => 'Висока поузданост';

  @override
  String get longTermNote =>
      'Дугорочни распони почивају на наведеним претпоставкама и шире се с временом. Цене без дивиденди. Грубе процене, а не предвиђања.';

  @override
  String get portfolio => 'Портфолио';

  @override
  String get portfolioEmpty =>
      'Још је празно. Отворите акцију и додирните „Додај у портфолио“ да бисте пратили шта поседујете.';

  @override
  String get portfolioLocalNote =>
      'Чува се само на овом уређају. Збирови се прерачунавају по референтним курсевима ЕЦБ; цене могу каснити.';

  @override
  String get addToPortfolio => 'Додај у портфолио';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Додај $symbol';
  }

  @override
  String get portfolioQuantity => 'Број акција';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Цена по акцији ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Датум куповине';

  @override
  String get portfolioAdd => 'Додај';

  @override
  String get portfolioInvalidNumber => 'Унесите број већи од нуле.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol је додата у портфолио.';
  }

  @override
  String get portfolioTotalValue => 'Укупна вредност';

  @override
  String get portfolioToday => 'Данас';

  @override
  String get portfolioGainLoss => 'Добит/губитак';

  @override
  String get portfolioInvested => 'Уложено';

  @override
  String get portfolioAllocation => 'Расподела';

  @override
  String get portfolioPositions => 'Позиције';

  @override
  String portfolioAvgCost(String price) {
    return 'просечна цена $price';
  }

  @override
  String get portfolioYourPosition => 'Ваша позиција';

  @override
  String get portfolioPurchases => 'Куповине';

  @override
  String get portfolioRemove => 'Уклони';

  @override
  String get portfolioExcluded =>
      'Позиције без цене или девизног курса нису урачунате у збирове.';

  @override
  String get priceAlerts => 'Обавештења о цени';

  @override
  String get setPriceAlert => 'Подеси обавештење о цени';

  @override
  String alertDialogTitle(String symbol) {
    return 'Обавештење о цени · $symbol';
  }

  @override
  String get alertKindAbove => 'Порасте изнад';

  @override
  String get alertKindBelow => 'Падне испод';

  @override
  String get alertKindMove => 'Снажно се помери у току дана';

  @override
  String alertTargetPrice(String currency) {
    return 'Цена ($currency)';
  }

  @override
  String get alertMovePercent => 'Дневна промена (%)';

  @override
  String get alertAlreadyMet => 'Цена је већ прешла овај ниво.';

  @override
  String get alertSave => 'Подеси обавештење';

  @override
  String alertCreated(String symbol) {
    return 'Обавештење за $symbol је подешено.';
  }

  @override
  String get alertsEmpty =>
      'Још нема обавештења. Отворите акцију и додирните звонце.';

  @override
  String get alertsNote =>
      'Обавештења се проверавају на сваких 5 минута док WhatStock ради. На рачунару апликација наставља да ради у траци менија или системској палети; на телефону за сада обавештава само док је апликација отворена.';

  @override
  String alertDescAbove(String price) {
    return 'Изнад $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Испод $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Дневна промена ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Активирано $date по цени $price';
  }

  @override
  String get alertRearm => 'Поново укључи';

  @override
  String get alertDelete => 'Обриши';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol је порасла изнад $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol је пала испод $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol се данас померила за $percent';
  }

  @override
  String alertHitBody(String price) {
    return 'Тренутна цена: $price';
  }

  @override
  String get alertOpen => 'Отвори';

  @override
  String get keepInTrayTitle => 'Ради и након затварања прозора';

  @override
  String get keepInTraySubtitle =>
      'WhatStock остаје у траци менија или системској палети, па пречица и обавештења о цени и даље раде.';

  @override
  String get termsOfUse => 'Услови коришћења';

  @override
  String get privacyPolicy => 'Политика приватности';

  @override
  String get subscriptionLegal =>
      'Претплата се аутоматски обнавља сваког месеца док је не откажете. Претплатом прихватате Услове коришћења и Политику приватности.';

  @override
  String get deleteAccount => 'Обриши налог';

  @override
  String get deleteAccountTitle => 'Обрисати налог?';

  @override
  String get deleteAccountBody =>
      'Ваш налог и све што чувамо на серверу (имејл, лимит, коришћење) биће трајно обрисани, а неискоришћене анализе пропадају. Претплату плаћену у прегледачу одмах отказујемо; претплату преко App Store-а или Google Play-а морате да откажете у подешавањима продавнице.';

  @override
  String get deleteLocalData =>
      'Обриши и податке на овом уређају (портфолио, обавештења, омиљене, историја, сачуване анализе)';

  @override
  String get deleteAccountConfirm => 'Трајно обриши';

  @override
  String get accountDeleted => 'Ваш налог је обрисан.';

  @override
  String get errDeleteAccount =>
      'Налог није могао да се обрише. Проверите везу и покушајте поново.';

  @override
  String get aiTrialBriefNote =>
      'Пробне анализе су кратке и израђује их бржи AI модел. Уз план добијате наш најмоћнији AI, више веб-претрага и дужине „Стандардно“ и „Детаљно“.';

  @override
  String get billingMonthly => 'Месечно';

  @override
  String get billingYearly => 'Годишње';

  @override
  String get yearlyDiscount => '2 месеца бесплатно';

  @override
  String get perYear => '/ година';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price месечно';
  }

  @override
  String get subscriptionLegalYearly =>
      'Годишња претплата се аутоматски обнавља сваке године док је не откажете. Претплатом прихватате Услове коришћења и Политику приватности.';

  @override
  String get myAnalyses => 'Моје анализе';

  @override
  String get navAlerts => 'Обавештења';

  @override
  String get inviteTitle => 'Затворени преглед';

  @override
  String get inviteBody =>
      'WhatStock је за сада доступан само уз позивницу. Унесите код позивнице који сте добили.';

  @override
  String get inviteCodeLabel => 'Код позивнице';

  @override
  String get inviteContinue => 'Настави';

  @override
  String get inviteInvalid => 'Овај код позивнице није важећи.';

  @override
  String get inviteExpired =>
      'Ова позивница је истекла. Затражите нови код од особе која вас је позвала.';

  @override
  String get inviteDeviceLimit =>
      'Овај код позивнице се већ користи на максималном броју уређаја.';

  @override
  String get previewConfidential => 'Поверљиви преглед';

  @override
  String get errPreviewDailyLimit =>
      'Дневно ограничење анализа за овај преглед је достигнуто. Покушајте поново сутра.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'пре $count сати',
      few: 'пре $count сата',
      one: 'пре $count сат',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'пре $count дана',
      few: 'пре $count дана',
      one: 'пре $count дан',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Да ажурирамо ову анализу?';

  @override
  String staleBody(String age) {
    return 'Направљена је $age. Цене, вести и резултати су се у међувремену можда променили.';
  }

  @override
  String get staleKeep => 'Прикажи ранију';

  @override
  String get staleRefresh => 'Направи нову';

  @override
  String seeAll(int count) {
    return 'Прикажи све ($count)';
  }

  @override
  String get searchAnalyses => 'Претражи своје анализе';

  @override
  String get deleteAnalysis => 'Обриши';

  @override
  String analysisDeleted(String symbol) {
    return 'Анализа за $symbol је обрисана';
  }

  @override
  String get keyLevelAlertHint =>
      'Додирните ниво да бисте добили обавештење када га цена достигне.';

  @override
  String get shareAnalysisTitle => 'Подели анализу';

  @override
  String get shareAsImage => 'Подели као слику';

  @override
  String get shareAsText => 'Подели као текст';

  @override
  String get shareCardFooter => 'Направљено уз WhatStock';

  @override
  String get shareCardDisclaimer => 'AI анализа · није инвестициони савет';

  @override
  String get referralTitle => 'Позови пријатеље';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count додатних анализа',
      few: '$count додатне анализе',
      one: '$count додатну анализу',
    );
    return 'Подели свој код. Твој пријатељ одмах добија $_temp0, а ти исто толико после његове прве анализе.';
  }

  @override
  String get referralYourCode => 'Твој код';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Позвано: $invited · Награђено: $rewarded';
  }

  @override
  String get referralHaveCode => 'Имаш код од пријатеља?';

  @override
  String get referralRedeem => 'Искористи';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Додато је $count додатних анализа. Добро дошли!',
      few: 'Додате су $count додатне анализе. Добро дошли!',
      one: 'Додата је $count додатна анализа. Добро дошли!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Овај код не постоји. Провери га и покушај поново.';

  @override
  String get referralErrOwn => 'Не можеш да искористиш свој код.';

  @override
  String get referralErrAlready =>
      'Код пријатеља је већ искоришћен на овом налогу.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count додатних анализа',
      few: '$count додатне анализе',
      one: '$count додатну анализу',
    );
    return 'Анализирам акције уз WhatStock: фотографишеш акцију, а AI ти је објасни. Са мојим кодом $code добијаш $_temp0.';
  }

  @override
  String get referralCopied => 'Код је копиран';

  @override
  String get onboardTitle1 => 'Фотографишите акцију';

  @override
  String get onboardBody1 =>
      'Довољан је екран брокерске апликације, новине или лого компаније: WhatStock препознаје акцију и приказује њену цену, графикон и кључне податке.';

  @override
  String get onboardTitle2 => 'Све јасно за неколико минута';

  @override
  String get onboardBody2 =>
      'AI анализа објашњава шта покреће акцију, које су ризици, колико вреди и даје три сценарија куда би цена могла да крене – са изворима и на вашем језику.';

  @override
  String get onboardTitle3 => 'Увек будите у току';

  @override
  String get onboardBody3 =>
      'Омиљено, ваш портфолио и обавештења о цени редовно вас обавештавају о новостима. Ваше анализе остају на вашем уређају, спремне да их поново отворите.';

  @override
  String get onboardNext => 'Даље';

  @override
  String get onboardStart => 'Почните';

  @override
  String get onboardSkip => 'Прескочи';

  @override
  String changesTitle(String date) {
    return 'Од претходне анализе ($date)';
  }

  @override
  String get changesPrice => 'Цена';

  @override
  String get changesNoMajor => 'Изгледи се нису битно променили.';

  @override
  String get changesPreviousSummary => 'Претходни резиме';

  @override
  String get telemetryTitle => 'Помози да WhatStock буде бољи';

  @override
  String get telemetryBody =>
      'Дели анонимну статистику коришћења и извештаје о падовима: које функције се користе и шта није успело. Никада твоје акције, анализе или личне податке. Ово можеш да промениш у било ком тренутку у Подешавањима.';

  @override
  String get telemetryAllow => 'Дозволи';

  @override
  String get telemetryDecline => 'Не, хвала';

  @override
  String get telemetrySetting => 'Анонимна статистика и извештаји о падовима';

  @override
  String get telemetrySettingHint =>
      'Колико често се функције користе и извештаји о грешкама, без личних података и садржаја твојих претрага и анализа.';

  @override
  String get askButton => 'Поставите питање о анализи';

  @override
  String askTitle(String symbol) {
    return 'Питања о $symbol';
  }

  @override
  String get askIntro =>
      'Питајте било шта о анализи: шта значи неки ризик, шта би променило изгледе, како је израчунат неки број. Одговори се заснивају на овој анализи и не представљају инвестициони савет.';

  @override
  String get askHint => 'Поставите питање…';

  @override
  String get askSend => 'Пошаљи';

  @override
  String get askThinking => 'Размишљам…';

  @override
  String get askSuggest1 => 'Који је највећи ризик?';

  @override
  String get askSuggest2 => 'Шта би променило изгледе?';

  @override
  String get askSuggest3 => 'Објасни ми то једноставно';

  @override
  String get askMaxReached =>
      'То је било последње питање за ову анализу. Направите нову анализу да бисте поставили још питања.';

  @override
  String get errAskLimit =>
      'Достигли сте данашње ограничење питања. Покушајте поново сутра.';

  @override
  String get eventTomorrow => 'Сутра';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'за $days дана',
      few: 'за $days дана',
      one: 'за $days дан',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Квартални резултати';

  @override
  String get eventBeforeOpen => 'пре отварања берзе';

  @override
  String get eventAfterClose => 'после затварања берзе';

  @override
  String eventEpsEstimate(String value) {
    return 'Очекивани EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Из ваше анализе';

  @override
  String get eventsHint =>
      'Датуми објаве резултата ваших омиљених акција и акција из портфолија за наредних 90 дана, као и датирани догађаји које су ваше анализе издвојиле.';

  @override
  String get eventsEmpty =>
      'Нема датираних догађаја у наредних 90 дана. Додајте омиљене акције или акције у портфолио да бисте овде видели датуме њихових резултата.';

  @override
  String get compareTitle => 'Поређење';

  @override
  String get compareAdd => 'Додај акцију';

  @override
  String get compareRemove => 'Уклони';

  @override
  String get compareTickerHint => 'Тикер, нпр. MSFT';

  @override
  String get compareHint =>
      'Кључни показатељи један поред другог; најбоља вредност у сваком реду је истакнута. Износи су у валути сваке акције.';

  @override
  String get compareNoAnalysis => 'Још нема анализе';

  @override
  String get portfolioDividends => 'Годишње дивиденде';

  @override
  String portfolioDividendYield(String percent) {
    return 'Принос $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Очекиване годишње дивиденде заснивају се на дивидендама исплаћеним у последњих 12 месеци; будуће исплате нису загарантоване.';

  @override
  String positionDividend(String amount) {
    return 'Дивиденда: $amount годишње';
  }

  @override
  String get chartAvgCost => 'Ваша просечна';

  @override
  String get chartAlertLevel => 'Обавештење';

  @override
  String get marketsToday => 'Тржишта данас';

  @override
  String get notesTitle => 'Моје белешке';

  @override
  String get notesHint =>
      'Зашто сте је купили, шта пратите, шта би вас навело да је продате?';

  @override
  String get notesInfo =>
      'Чува се само на овом уређају. AI анализа узима у обзир ваше белешке.';

  @override
  String notesSaved(String date) {
    return 'Сачувано $date';
  }

  @override
  String get peersTitle => 'Сличне компаније';
}
