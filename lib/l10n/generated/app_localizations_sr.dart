// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Serbian (`sr`).
class AppLocalizationsSr extends AppLocalizations {
  AppLocalizationsSr([String locale = 'sr']) : super(locale);

  @override
  String get appTitle => 'StockLens';

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
    return 'Притисните $shortcut било где да позовете StockLens.';
  }

  @override
  String get trayOpen => 'Отвори StockLens';

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
  String get planMax1 => 'Max 1';

  @override
  String get planMax2 => 'Max 2';

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
      'Препознавање фотографија, подаци у реалном времену, графикони, омиљено и сва 44 језика укључени су у сваки план. Квота се односи на AI анализе.';
}
