// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Belarusian (`be`).
class AppLocalizationsBe extends AppLocalizations {
  AppLocalizationsBe([String locale = 'be']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'Сфатаграфуйце акцыю і даведайцеся пра яе ўсё.';

  @override
  String get homeHint =>
      'Сертыфікат акцыі, экран брокерскай праграмы, газета ці лагатып кампаніі – усё, па чым можна вызначыць акцыю.';

  @override
  String get takePhoto => 'Зрабіць фота';

  @override
  String get chooseFromGallery => 'Выбраць з галерэі';

  @override
  String get chooseImage => 'Выбраць выяву';

  @override
  String get enterTickerManually => 'Увесці тыкер уручную';

  @override
  String get tickerInputLabel => 'Тыкер';

  @override
  String get tickerInputHint => 'напр. AAPL';

  @override
  String get lookUp => 'Знайсці';

  @override
  String demoModeBanner(String symbols) {
    return 'Дэма-рэжым – ключ для рыначных даных не наладжаны. Дэманстрацыйныя даныя даступныя для: $symbols.';
  }

  @override
  String get recognizing => 'Аналіз выявы…';

  @override
  String get loadingData => 'Загрузка даных…';

  @override
  String get noCandidatesTitle => 'Акцыя не распазнана';

  @override
  String get noCandidatesBody =>
      'Не ўдалося вызначыць акцыю на гэтай выяве. Паспрабуйце больш выразнае фота або ўвядзіце тыкер уручную.';

  @override
  String get whatWeSaw => 'Што мы ўбачылі';

  @override
  String get chooseCandidateTitle => 'Якую акцыю вы мелі на ўвазе?';

  @override
  String confidencePercent(int percent) {
    return 'Упэўненасць $percent%';
  }

  @override
  String get settings => 'Налады';

  @override
  String get language => 'Мова';

  @override
  String get systemLanguage => 'Як у сістэме';

  @override
  String get about => 'Пра праграму';

  @override
  String get disclaimer =>
      'Гэта праграма толькі дае інфармацыю і не з’яўляецца інвестыцыйнай парадай. Даныя могуць запазняцца або быць недакладнымі.';

  @override
  String dataSource(String source) {
    return 'Крыніца даных: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Распазнаванне: $source';
  }

  @override
  String get retry => 'Паўтарыць';

  @override
  String get cancel => 'Скасаваць';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Закрыць';

  @override
  String get errorGeneric => 'Нешта пайшло не так.';

  @override
  String get errorSectionUnavailable => 'Не ўдалося загрузіць гэты раздзел.';

  @override
  String get notAvailable => 'н/д';

  @override
  String get sectionIdentity => 'Ідэнтыфікацыя';

  @override
  String get sectionPrice => 'Цана';

  @override
  String get sectionValuation => 'Ацэнка';

  @override
  String get sectionFinancials => 'Фінансы';

  @override
  String get sectionDividend => 'Дывідэнды';

  @override
  String get sectionProfile => 'Профіль кампаніі';

  @override
  String get sectionAnalysts => 'Рэйтынгі аналітыкаў';

  @override
  String get sectionNews => 'Навіны';

  @override
  String get sectionRecognition => 'Падрабязнасці распазнавання';

  @override
  String get labelSymbol => 'Тыкер';

  @override
  String get labelExchange => 'Біржа';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Валюта';

  @override
  String get labelCountry => 'Краіна';

  @override
  String get labelIndustry => 'Галіна';

  @override
  String get labelSector => 'Сектар';

  @override
  String get labelWebsite => 'Вэб-сайт';

  @override
  String get labelIpoDate => 'Дата IPO';

  @override
  String get labelMarketCap => 'Рыначная капіталізацыя';

  @override
  String get labelSharesOutstanding => 'Акцый у абарачэнні';

  @override
  String get labelEmployees => 'Супрацоўнікі';

  @override
  String get labelCeo => 'Кіраўнік';

  @override
  String get labelHeadquarters => 'Штаб-кватэра';

  @override
  String get labelDescription => 'Апісанне';

  @override
  String get labelLastPrice => 'Апошняя цана';

  @override
  String get labelChange => 'Змена';

  @override
  String get labelOpen => 'Адкрыццё';

  @override
  String get labelDayHigh => 'Максімум дня';

  @override
  String get labelDayLow => 'Мінімум дня';

  @override
  String get labelPreviousClose => 'Папярэдняе закрыццё';

  @override
  String get labelWeek52High => 'Максімум за 52 тыдні';

  @override
  String get labelWeek52Low => 'Мінімум за 52 тыдні';

  @override
  String get labelAverageVolume10d => 'Сярэдні аб’ём (10 дзён)';

  @override
  String updatedAt(String time) {
    return 'Абноўлена $time';
  }

  @override
  String get labelPeTrailing => 'P/E (бягучы)';

  @override
  String get labelPeForward => 'P/E (прагнозны)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / свабодны грашовы паток';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Бэта';

  @override
  String get labelRevenueTtm => 'Выручка (TTM)';

  @override
  String get labelNetIncomeTtm => 'Чысты прыбытак (TTM)';

  @override
  String get labelGrossMargin => 'Валавая маржа';

  @override
  String get labelOperatingMargin => 'Аперацыйная маржа';

  @override
  String get labelNetMargin => 'Чыстая маржа';

  @override
  String get labelRoe => 'Рэнтабельнасць капіталу';

  @override
  String get labelRoa => 'Рэнтабельнасць актываў';

  @override
  String get labelDebtToEquity => 'Доўг / капітал';

  @override
  String get labelCurrentRatio => 'Каэфіцыент бягучай ліквіднасці';

  @override
  String get labelRevenueGrowth => 'Рост выручкі (г/г)';

  @override
  String get labelEpsGrowth => 'Рост EPS (г/г)';

  @override
  String get labelDividendYield => 'Дывідэндная даходнасць';

  @override
  String get labelDividendPerShare => 'Дывідэнд на акцыю';

  @override
  String get labelPayoutRatio => 'Каэфіцыент выплат';

  @override
  String get labelConsensus => 'Кансэнсус';

  @override
  String get ratingStrongBuy => 'Актыўна купляць';

  @override
  String get ratingBuy => 'Купляць';

  @override
  String get ratingHold => 'Трымаць';

  @override
  String get ratingSell => 'Прадаваць';

  @override
  String get ratingStrongSell => 'Актыўна прадаваць';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count аналітыка',
      many: '$count аналітыкаў',
      few: '$count аналітыкі',
      one: '$count аналітык',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Перыяд: $period';
  }

  @override
  String get noNews => 'Свежых навін няма.';

  @override
  String get openArticle => 'Адкрыць артыкул';

  @override
  String get openLinkFailed => 'Не ўдалося адкрыць спасылку.';

  @override
  String get recognitionSummary => 'Рэзюмэ';

  @override
  String get recognitionEvidence => 'Чаму мы так думаем';

  @override
  String get recognitionRawText => 'Тэкст, прачытаны з выявы';

  @override
  String get errMissingAnthropicKey =>
      'Распазнаванне выяў не наладжана (няма ANTHROPIC_API_KEY). Увядзіце тыкер уручную.';

  @override
  String get errRecognitionUnreachable =>
      'Не ўдалося падключыцца да сэрвісу распазнавання. Праверце падключэнне да інтэрнэту.';

  @override
  String errRecognitionHttp(String status) {
    return 'Сэрвіс распазнавання вярнуў памылку (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Сэрвіс распазнавання не змог апрацаваць гэту выяву.';

  @override
  String get errRecognitionTruncated =>
      'Адказ сэрвісу распазнавання быў абрэзаны. Паспрабуйце яшчэ раз.';

  @override
  String get errRecognitionBadResponse =>
      'Нечаканы адказ ад сэрвісу распазнавання.';

  @override
  String get errRecognitionEmpty => 'Сэрвіс распазнавання вярнуў пусты адказ.';

  @override
  String get errMissingFinnhubKey =>
      'Рыначныя даныя не наладжаны (няма FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Не ўдалося падключыцца да сэрвісу рыначных даных. Праверце падключэнне да інтэрнэту.';

  @override
  String get errMarketRateLimited =>
      'Занадта шмат запытаў да сэрвісу рыначных даных. Пачакайце хвіліну.';

  @override
  String errMarketHttp(String status) {
    return 'Сэрвіс рыначных даных вярнуў памылку (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Нечаканы адказ ад сэрвісу рыначных даных.';

  @override
  String errNoQuote(String symbol) {
    return 'Даныя пра цану для $symbol не знойдзены.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Профіль кампаніі для $symbol не знойдзены.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Дэма-рэжым падтрымлівае толькі $symbols. Дадайце FINNHUB_API_KEY, каб атрымліваць актуальныя даныя.';
  }

  @override
  String errUnknown(String detail) {
    return 'Нешта пайшло не так: $detail';
  }

  @override
  String get newSearch => 'Новы пошук';

  @override
  String get recentSearches => 'Нядаўнія';

  @override
  String get noRecentSearches => 'Нядаўніх пошукаў пакуль няма.';

  @override
  String get clearRecent => 'Ачысціць нядаўнія';

  @override
  String get greeting => 'Якую акцыю паглядзім?';

  @override
  String get searchHint => 'Тыкер або назва кампаніі';

  @override
  String get attachImage => 'Далучыць выяву';

  @override
  String get searchResultsTitle => 'Вынікі пошуку';

  @override
  String errNoResults(String query) {
    return 'Па запыце «$query» акцый не знойдзена.';
  }

  @override
  String get quickBarHint => 'Увядзіце тыкер або назву кампаніі…';

  @override
  String get openFullWindow => 'Адкрыць акно';

  @override
  String hotkeyHint(String shortcut) {
    return 'Націсніце $shortcut дзе заўгодна, каб выклікаць WhatStock.';
  }

  @override
  String get trayOpen => 'Адкрыць WhatStock';

  @override
  String get trayQuickSearch => 'Хуткі пошук';

  @override
  String get trayQuit => 'Выйсці';

  @override
  String get appearance => 'Выгляд';

  @override
  String get themeSystem => 'Сістэмная';

  @override
  String get themeDark => 'Цёмная';

  @override
  String get themeLight => 'Светлая';

  @override
  String get back => 'Назад';

  @override
  String get aiSectionTitle => 'AI-аналіз';

  @override
  String get aiIntro =>
      'Падрабязны агляд, напісаны AI: рэзюмэ апошніх навін, бізнес, моцныя бакі, рызыкі і схаваныя фактары, ацэнка, прагноз цаны са сцэнарыямі з псіхалагічнага, сацыялагічнага, тэхнічнага і макраэканамічнага пункту гледжання, а таксама на што звярнуць увагу.';

  @override
  String get aiGenerate => 'Стварыць аналіз';

  @override
  String get aiRegenerate => 'Стварыць нанова';

  @override
  String get aiGenerating => 'Рыхтуем аналіз… гэта можа заняць хвіліну-дзве.';

  @override
  String get aiSources => 'Крыніцы';

  @override
  String aiGeneratedAt(String time) {
    return 'Створана $time';
  }

  @override
  String get aiDisclaimer =>
      'Аналіз створаны AI на аснове адкрытых даных і апошніх навін. Ён можа ўтрымліваць памылкі або быць састарэлым і не з’яўляецца інвестыцыйнай парадай.';

  @override
  String get errAiNotConfigured =>
      'AI-аналіз не наладжаны (няма ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Не ўдалося падключыцца да сэрвісу AI. Праверце падключэнне да інтэрнэту.';

  @override
  String errAiHttp(String status) {
    return 'Сэрвіс AI вярнуў памылку (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Сэрвіс AI адмовіўся аналізаваць гэту акцыю.';

  @override
  String get errAiBadResponse => 'Нечаканы адказ ад сэрвісу AI.';

  @override
  String get sectionChart => 'Графік цаны';

  @override
  String get rangeOneWeek => '1Т';

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
      'Гісторыя цэн недаступная ў бягучай крыніцы даных.';

  @override
  String get sectionStatements => 'Фінансавая справаздачнасць (гадавая)';

  @override
  String get labelFiscalYear => 'Фінансавы год';

  @override
  String get labelRevenue => 'Выручка';

  @override
  String get labelNetIncome => 'Чысты прыбытак';

  @override
  String get labelTotalAssets => 'Усяго актываў';

  @override
  String get labelTotalLiabilities => 'Усяго абавязацельстваў';

  @override
  String get labelEquity => 'Уласны капітал';

  @override
  String get labelOperatingCashFlow => 'Аперацыйны грашовы паток';

  @override
  String get statementsUnavailable =>
      'Апублікаваная фінансавая справаздачнасць для гэтай акцыі недаступная.';

  @override
  String get launchAtLogin => 'Запускаць пры ўваходзе ў сістэму';

  @override
  String get hotkeyLabel => 'Глабальнае спалучэнне клавіш';

  @override
  String get hotkeyRecordHint =>
      'Націсніце тут, а потым націсніце новае спалучэнне клавіш';

  @override
  String get hotkeyReset => 'Вярнуць стандартнае';

  @override
  String get pasteImage => 'Уставіць выяву з буфера абмену';

  @override
  String get errClipboardNoImage => 'У буферы абмену няма выявы.';

  @override
  String get favorites => 'Абранае';

  @override
  String get addToFavorites => 'Дадаць у абранае';

  @override
  String get removeFromFavorites => 'Выдаліць з абранага';

  @override
  String get noFavorites =>
      'У абраным пакуль нічога няма. Націсніце на зорачку ля акцыі, каб дадаць яе.';

  @override
  String get displayCurrency => 'Валюта адлюстравання';

  @override
  String get displayCurrencyNone => 'Толькі ўласная валюта акцыі';

  @override
  String labelConverted(String currency) {
    return '≈ у $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Курс: 1 $from = $rate $to (ЕЦБ, $date)';
  }

  @override
  String get updates => 'Абнаўленні';

  @override
  String currentVersion(String version) {
    return 'Версія $version';
  }

  @override
  String get autoUpdate => 'Усталёўваць абнаўленні аўтаматычна';

  @override
  String get checkForUpdates => 'Праверыць абнаўленні';

  @override
  String get updateChecking => 'Праверка абнаўленняў…';

  @override
  String get updateUpToDate => 'У вас апошняя версія.';

  @override
  String updateAvailable(String version) {
    return 'Даступная версія $version.';
  }

  @override
  String get updateDownloading => 'Абнаўленне спампоўваецца ў фонавым рэжыме…';

  @override
  String get updateDownloaded =>
      'Абнаўленне гатовае. Перазапусціце праграму, каб усталяваць яго.';

  @override
  String get updateNow => 'Абнавіць';

  @override
  String get restartNow => 'Перазапусціць';

  @override
  String get updatesViaStore =>
      'Абнаўленні прыходзяць аўтаматычна праз краму праграм.';

  @override
  String get updateCheckFailed => 'Не ўдалося праверыць абнаўленні.';

  @override
  String get subscription => 'Падпіска';

  @override
  String get planTrial => 'Пробны';

  @override
  String get planNormal => 'Звычайны';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Няма актыўнага тарыфу';

  @override
  String planAnalysesPerMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count аналізу ў месяц',
      many: '$count аналізаў у месяц',
      few: '$count аналізы ў месяц',
      one: '$count аналіз у месяц',
    );
    return '$_temp0';
  }

  @override
  String planTrialDescription(int days, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Бясплатны пробны перыяд на $days дн. з $count аналізамі',
      many: 'Бясплатны пробны перыяд на $days дн. з $count аналізамі',
      few: 'Бясплатны пробны перыяд на $days дн. з $count аналізамі',
      one: 'Бясплатны пробны перыяд на $days дн. з $count аналізам',
    );
    return '$_temp0';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Засталося $days дня пробнага перыяду',
      many: 'Засталося $days дзён пробнага перыяду',
      few: 'Засталося $days дні пробнага перыяду',
      one: 'Застаўся $days дзень пробнага перыяду',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Ваш бясплатны пробны перыяд скончыўся. Выберыце тарыф, каб працягваць аналізаваць.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Засталося аналізаў у гэтым перыядзе: $remaining з $total';
  }

  @override
  String extraCredits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дадатковага аналізу',
      many: '$count дадатковых аналізаў',
      few: '$count дадатковыя аналізы',
      one: '$count дадатковы аналіз',
    );
    return '$_temp0';
  }

  @override
  String renewsOn(String date) {
    return 'Падаўжэнне $date';
  }

  @override
  String get choosePlan => 'Выберыце тарыф';

  @override
  String get currentPlan => 'Бягучы тарыф';

  @override
  String get subscribe => 'Падпісацца';

  @override
  String get perMonth => '/ мес.';

  @override
  String get extraPacksTitle => 'Патрэбна больш? Купіце дадатковыя аналізы';

  @override
  String get extraPacksHint =>
      'Дадатковыя аналізы ніколі не згараюць і выкарыстоўваюцца пасля вычарпання месячнага ліміту.';

  @override
  String get buy => 'Купіць';

  @override
  String get restorePurchases => 'Аднавіць пакупкі';

  @override
  String get manageSubscription => 'Кіраваць падпіскай';

  @override
  String get purchaseSuccess => 'Дзякуй! Ваша пакупка актыўная.';

  @override
  String get purchasePending => 'Пакупка чакае пацвярджэння…';

  @override
  String get purchaseFailed => 'Не ўдалося завяршыць пакупку.';

  @override
  String get purchaseCanceled => 'Пакупка скасавана.';

  @override
  String get billingUnavailable =>
      'Пакупкі на гэтай платформе пакуль недаступныя. Аформіце падпіску на тэлефоне або Mac; ваш тарыф будзе працаваць на ўсіх прыладах.';

  @override
  String get errQuotaExceeded =>
      'У гэтым перыядзе ў вас не засталося аналізаў. Перайдзіце на вышэйшы тарыф або купіце дадатковыя аналізы.';

  @override
  String get errTrialExpired =>
      'Ваш бясплатны пробны перыяд скончыўся. Выберыце тарыф, каб працягнуць.';

  @override
  String get errNoPlan => 'Для AI-аналізу патрэбны актыўны тарыф.';

  @override
  String get viewPlans => 'Паглядзець тарыфы';

  @override
  String get usageTitle => 'Выкарыстанне';

  @override
  String get demoPurchaseNote =>
      'Дэма-аплата: пакупкі на гэтай платформе імітуюцца.';

  @override
  String get mostPopular => 'Самы папулярны';

  @override
  String get bestValue => 'Самы выгадны';

  @override
  String get planFeaturesCommon =>
      'Распазнаванне фота, актуальныя даныя, графікі, абранае і ўсе 120 моў уключаны ў кожны тарыф. Ліміт тычыцца AI-аналізаў.';

  @override
  String get searchLanguages => 'Пошук моў…';

  @override
  String get noLanguageMatch => 'Няма адпаведных моў.';

  @override
  String get aiSettings => 'AI-аналіз';

  @override
  String get aiLength => 'Даўжыня';

  @override
  String get aiDepthBrief => 'Коратка';

  @override
  String get aiDepthStandard => 'Стандартна';

  @override
  String get aiDepthDeep => 'Падрабязна';

  @override
  String get aiDepthBriefDesc => 'Галоўнае – хутка.';

  @override
  String get aiDepthStandardDesc => 'Поўная справаздача з усімі раздзеламі.';

  @override
  String get aiDepthDeepDesc =>
      'Больш вэб-пошукаў, параўнанне з канкурэнтамі і глыбейшая дэталізацыя.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Прыкладна $min–$max слоў';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'выкарыстоўвае $count аналізу',
      many: 'выкарыстоўвае $count аналізаў',
      few: 'выкарыстоўвае $count аналізы',
      one: 'выкарыстоўвае $count аналіз',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Узровень чытача';

  @override
  String get aiReaderBeginner => 'Пачатковец';

  @override
  String get aiReaderExperienced => 'Дасведчаны';

  @override
  String get aiReaderBeginnerDesc =>
      'Простая мова; кожны спецыяльны тэрмін растлумачаны.';

  @override
  String get aiReaderExperiencedDesc =>
      'Больш шчыльны тэкст са стандартнай фінансавай тэрміналогіяй.';

  @override
  String get aiCounterArgument => 'Наймацнейшы контраргумент';

  @override
  String get aiCounterArgumentDesc =>
      'Рэзюмэ заўсёды завяршаецца наймацнейшым аргументам супраць уласнай высновы.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'З вашым тарыфам – да $count вэб-пошуку на аналіз',
      many: 'З вашым тарыфам – да $count вэб-пошукаў на аналіз',
      few: 'З вашым тарыфам – да $count вэб-пошукаў на аналіз',
      one: 'З вашым тарыфам – да $count вэб-пошуку на аналіз',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Стандартная даўжыня паводле тарыфу: Звычайны $normal, Pro $pro, Max $max, Ultra $ultra. «Коратка» – на 2 менш, «Падрабязна» – на 2 больш.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'да $count вэб-пошуку',
      many: 'да $count вэб-пошукаў',
      few: 'да $count вэб-пошукаў',
      one: 'да $count вэб-пошуку',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count вэб-пошуку на аналіз',
      many: '$count вэб-пошукаў на аналіз',
      few: '$count вэб-пошукі на аналіз',
      one: '$count вэб-пошук на аналіз',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Для гэтай даўжыні патрэбна аналізаў: $needed, а засталося: $left. Выберыце карацейшую даўжыню ў Наладах або атрымайце больш аналізаў.';
  }

  @override
  String get outlookMarketMood => 'Настрой рынку';

  @override
  String get moodVeryPessimistic => 'Вельмі песімістычны';

  @override
  String get moodPessimistic => 'Песімістычны';

  @override
  String get moodNeutral => 'Нейтральны';

  @override
  String get moodOptimistic => 'Аптымістычны';

  @override
  String get moodVeryOptimistic => 'Вельмі аптымістычны';

  @override
  String get scenarioBull => 'Аптымістычны сцэнарый';

  @override
  String get scenarioBase => 'Базавы сцэнарый';

  @override
  String get scenarioBear => 'Песімістычны сцэнарый';

  @override
  String outlookCurrentPrice(String price) {
    return 'Бягучая цана: $price';
  }

  @override
  String get outlookKeyLevels => 'Ключавыя ўзроўні';

  @override
  String get keyLevelSupport => 'Падтрымка';

  @override
  String get keyLevelResistance => 'Супраціў';

  @override
  String get keyLevelAnchor => 'Якарны ўзровень';

  @override
  String get upcomingEvents => 'Бліжэйшыя падзеі';

  @override
  String get outlookChartNote =>
      'Арыенціровачныя дыяпазоны; імавернасці – грубыя ацэнкі, а не прагнозы.';

  @override
  String get accountTitle => 'Уліковы запіс';

  @override
  String get signIn => 'Увайсці';

  @override
  String get signOut => 'Выйсці';

  @override
  String get notSignedIn => 'Уваход не выкананы';

  @override
  String get accountBenefit =>
      'Увайдзіце, каб ваша падпіска працавала на ўсіх вашых прыладах.';

  @override
  String get accountSyncedNote =>
      'Ваша падпіска і астатак аналізаў аднолькавыя на ўсіх прыладах.';

  @override
  String get signInTitle => 'Уваход у WhatStock';

  @override
  String get emailLabel => 'Адрас электроннай пошты';

  @override
  String get continueWithEmail => 'Працягнуць з электроннай поштай';

  @override
  String codeSentTo(String email) {
    return 'Мы адправілі 6-значны код на $email. Ён дзейнічае 10 хвілін.';
  }

  @override
  String get codeLabel => 'Код для ўваходу';

  @override
  String get resendCode => 'Адправіць новы код';

  @override
  String get useDifferentEmail => 'Выкарыстаць іншы адрас';

  @override
  String get errInvalidCode =>
      'Код няправільны або тэрмін яго дзеяння скончыўся.';

  @override
  String get errInvalidEmail => 'Увядзіце сапраўдны адрас электроннай пошты.';

  @override
  String get errSignInFailed =>
      'Не ўдалося ўвайсці. Праверце падключэнне да інтэрнэту і паспрабуйце яшчэ раз.';

  @override
  String get checkoutWaiting =>
      'Завяршыце аплату ў браўзеры. Праграма абновіцца аўтаматычна, калі ўсё будзе гатова.';

  @override
  String get paymentViaStripe =>
      'Бяспечная аплата ў браўзеры праз Stripe. Скасаваць можна ў любы час.';

  @override
  String get paymentViaStore =>
      'Аплата праз ваш уліковы запіс App Store або Google Play. Скасаваць можна ў любы час у наладах крамы.';

  @override
  String get keySpace => 'Прабел';

  @override
  String get doubleOptionTitle => 'Двайны націск Option';

  @override
  String get doubleOptionSubtitle =>
      'Хуткі двайны націск клавішы Option таксама выклікае WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Каб гэта працавала і ў іншых праграмах, дазвольце доступ для WhatStock у раздзеле «Сістэмныя налады» → «Прыватнасць і бяспека» → «Маніторынг уводу», а потым зноў адкрыйце праграму.';

  @override
  String get openSystemSettings => 'Адкрыць «Сістэмныя налады»';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Націсніце $shortcut або двойчы націсніце Option дзе заўгодна, каб выклікаць WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Найбольш верагодны';

  @override
  String get longTermToday => 'Сёння';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years года',
      many: '$years гадоў',
      few: '$years гады',
      one: '$years год',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range у год';
  }

  @override
  String longTermLikely(String price) {
    return 'найверагодней $price';
  }

  @override
  String get confidenceLow => 'Нізкая ўпэўненасць';

  @override
  String get confidenceMedium => 'Сярэдняя ўпэўненасць';

  @override
  String get confidenceHigh => 'Высокая ўпэўненасць';

  @override
  String get longTermNote =>
      'Доўгатэрміновыя дыяпазоны грунтуюцца на пададзеных здагадках і з часам пашыраюцца. Цэны без уліку дывідэндаў. Грубыя ацэнкі, а не прагнозы.';

  @override
  String get portfolio => 'Партфель';

  @override
  String get portfolioEmpty =>
      'Пакуль пуста. Адкрыйце акцыю і націсніце «Дадаць у партфель», каб сачыць за сваімі акцыямі.';

  @override
  String get portfolioLocalNote =>
      'Захоўваецца толькі на гэтай прыладзе. Вынікі пералічваюцца па даведачных курсах ЕЦБ; цэны могуць запазняцца.';

  @override
  String get addToPortfolio => 'Дадаць у партфель';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Дадаць $symbol';
  }

  @override
  String get portfolioQuantity => 'Колькасць акцый';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Цана за акцыю ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Дата пакупкі';

  @override
  String get portfolioAdd => 'Дадаць';

  @override
  String get portfolioInvalidNumber => 'Увядзіце лік, большы за нуль.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol дададзена ў партфель.';
  }

  @override
  String get portfolioTotalValue => 'Агульная вартасць';

  @override
  String get portfolioToday => 'Сёння';

  @override
  String get portfolioGainLoss => 'Прыбытак/страта';

  @override
  String get portfolioInvested => 'Укладзена';

  @override
  String get portfolioAllocation => 'Размеркаванне';

  @override
  String get portfolioPositions => 'Пазіцыі';

  @override
  String portfolioAvgCost(String price) {
    return 'сяр. цана пакупкі $price';
  }

  @override
  String get portfolioYourPosition => 'Ваша пазіцыя';

  @override
  String get portfolioPurchases => 'Пакупкі';

  @override
  String get portfolioRemove => 'Выдаліць';

  @override
  String get portfolioExcluded =>
      'Пазіцыі без цаны або валютнага курсу не ўлічваюцца ў выніках.';

  @override
  String get priceAlerts => 'Цэнавыя апавяшчэнні';

  @override
  String get setPriceAlert => 'Стварыць цэнавае апавяшчэнне';

  @override
  String alertDialogTitle(String symbol) {
    return 'Цэнавае апавяшчэнне · $symbol';
  }

  @override
  String get alertKindAbove => 'Падымецца вышэй';

  @override
  String get alertKindBelow => 'Апусціцца ніжэй';

  @override
  String get alertKindMove => 'Моцна зменіцца за дзень';

  @override
  String alertTargetPrice(String currency) {
    return 'Цана ($currency)';
  }

  @override
  String get alertMovePercent => 'Змена за дзень (%)';

  @override
  String get alertAlreadyMet => 'Цана ўжо перайшла гэты ўзровень.';

  @override
  String get alertSave => 'Стварыць апавяшчэнне';

  @override
  String alertCreated(String symbol) {
    return 'Апавяшчэнне для $symbol створана.';
  }

  @override
  String get alertsEmpty =>
      'Цэнавых апавяшчэнняў пакуль няма. Адкрыйце акцыю і націсніце на званочак, каб стварыць яго.';

  @override
  String get alertsNote =>
      'Апавяшчэнні правяраюцца кожныя 5 хвілін, пакуль WhatStock працуе. На камп’ютары праграма працуе далей у радку меню або ў сістэмным трэі; на тэлефоне апавяшчэнні пакуль прыходзяць, толькі калі праграма адкрыта.';

  @override
  String alertDescAbove(String price) {
    return 'Вышэй за $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Ніжэй за $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Змена за дзень ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Спрацавала $date па цане $price';
  }

  @override
  String get alertRearm => 'Уключыць зноў';

  @override
  String get alertDelete => 'Выдаліць';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol паднялася вышэй за $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol апусцілася ніжэй за $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol сёння змянілася на $percent';
  }

  @override
  String alertHitBody(String price) {
    return 'Бягучая цана: $price';
  }

  @override
  String get alertOpen => 'Адкрыць';

  @override
  String get keepInTrayTitle => 'Працаваць пасля закрыцця акна';

  @override
  String get keepInTraySubtitle =>
      'WhatStock застаецца ў радку меню або ў сістэмным трэі, таму спалучэнне клавіш і цэнавыя апавяшчэнні працуюць далей.';

  @override
  String get termsOfUse => 'Умовы выкарыстання';

  @override
  String get privacyPolicy => 'Палітыка прыватнасці';

  @override
  String get subscriptionLegal =>
      'Падпіска аўтаматычна падаўжаецца кожны месяц, пакуль вы яе не скасуеце. Афармляючы падпіску, вы згаджаецеся з Умовамі выкарыстання і Палітыкай прыватнасці.';

  @override
  String get deleteAccount => 'Выдаліць уліковы запіс';

  @override
  String get deleteAccountTitle => 'Выдаліць уліковы запіс?';

  @override
  String get deleteAccountBody =>
      'Ваш уліковы запіс і ўсё, што захоўваецца на нашым серверы (электронная пошта, ліміт, выкарыстанне), будзе выдалена назаўсёды, а нявыкарыстаныя аналізы згараць. Падпіска, аплачаная ў браўзеры, скасоўваецца адразу; падпіску праз App Store або Google Play трэба скасаваць у наладах крамы.';

  @override
  String get deleteLocalData =>
      'Таксама выдаліць даныя на гэтай прыладзе (партфель, апавяшчэнні, абранае, гісторыя, захаваныя аналізы)';

  @override
  String get deleteAccountConfirm => 'Выдаліць назаўсёды';

  @override
  String get accountDeleted => 'Ваш уліковы запіс выдалены.';

  @override
  String get errDeleteAccount =>
      'Не ўдалося выдаліць уліковы запіс. Праверце злучэнне і паспрабуйце яшчэ раз.';

  @override
  String get aiTrialBriefNote =>
      'Пробныя аналізы кароткія і ствараюцца больш хуткай мадэллю AI. З тарыфам вы атрымліваеце наш самы магутны AI, больш вэб-пошукаў, а таксама даўжыні «Стандартна» і «Падрабязна».';

  @override
  String get billingMonthly => 'Штомесяц';

  @override
  String get billingYearly => 'Штогод';

  @override
  String get yearlyDiscount => '2 месяцы бясплатна';

  @override
  String get perYear => '/ год';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price у месяц';
  }

  @override
  String get subscriptionLegalYearly =>
      'Гадавая падпіска аўтаматычна падаўжаецца кожны год, пакуль вы яе не скасуеце. Афармляючы падпіску, вы згаджаецеся з Умовамі выкарыстання і Палітыкай прыватнасці.';

  @override
  String get myAnalyses => 'Мае аналізы';

  @override
  String get navAlerts => 'Апавяшчэнні';

  @override
  String get inviteTitle => 'Закрыты папярэдні прагляд';

  @override
  String get inviteBody =>
      'WhatStock пакуль даступны толькі па запрашэннях. Увядзіце атрыманы код запрашэння.';

  @override
  String get inviteCodeLabel => 'Код запрашэння';

  @override
  String get inviteContinue => 'Працягнуць';

  @override
  String get inviteInvalid => 'Гэты код запрашэння несапраўдны.';

  @override
  String get inviteExpired =>
      'Тэрмін дзеяння гэтага запрашэння скончыўся. Папрасіце новы код у чалавека, які вас запрасіў.';

  @override
  String get inviteDeviceLimit =>
      'Гэты код запрашэння ўжо выкарыстоўваецца на максімальнай колькасці прылад.';

  @override
  String previewFor(String name) {
    return 'Канфідэнцыйны прагляд для $name';
  }

  @override
  String get errPreviewDailyLimit =>
      'Сённяшні ліміт аналізаў гэтага папярэдняга прагляду вычарпаны. Паспрабуйце зноў заўтра.';
}
