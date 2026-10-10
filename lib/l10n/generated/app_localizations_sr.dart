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
      'Детаљан преглед који је написала вештачка интелигенција: резиме недавних вести, пословање, снаге, ризици и скривени фактори, вредновање и шта пратити.';

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
}
