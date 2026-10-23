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
  String get labelYieldOnCost => 'Даходнасць да цаны пакупкі';

  @override
  String get labelDividendGrowth5y => 'Рост дывідэнду (5 г.)';

  @override
  String get dividendNone => 'За апошнія 12 месяцаў дывідэнды не выплачваліся.';

  @override
  String get dividendOnYourShares => 'На вашы акцыі, за год';

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
      'Захоўваецца на гэтай прыладзе, а калі вы ўвайшлі, — і ў вашым уліковым запісе. Вынікі пералічваюцца па даведачных курсах ЕЦБ; цэны могуць запазняцца.';

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
  String homeDividendsThisYear(String amount) {
    return 'Дывідэнды сёлета: $amount';
  }

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
  String get previewConfidential => 'Канфідэнцыйны прагляд';

  @override
  String get errPreviewDailyLimit =>
      'Сённяшні ліміт аналізаў гэтага папярэдняга прагляду вычарпаны. Паспрабуйце зноў заўтра.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count гадзіны таму',
      many: '$count гадзін таму',
      few: '$count гадзіны таму',
      one: '$count гадзіну таму',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дня таму',
      many: '$count дзён таму',
      few: '$count дні таму',
      one: '$count дзень таму',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Абнавіць гэты аналіз?';

  @override
  String staleBody(String age) {
    return 'Ён створаны $age. З таго часу маглі змяніцца кошты, навіны і вынікі.';
  }

  @override
  String get staleKeep => 'Паказаць ранейшы';

  @override
  String get staleRefresh => 'Стварыць новы';

  @override
  String seeAll(int count) {
    return 'Усе ($count)';
  }

  @override
  String get searchAnalyses => 'Пошук па аналізах';

  @override
  String get deleteAnalysis => 'Выдаліць';

  @override
  String analysisDeleted(String symbol) {
    return 'Аналіз $symbol выдалены';
  }

  @override
  String get keyLevelAlertHint =>
      'Націсніце на ўзровень, каб атрымаць апавяшчэнне, калі цана яго дасягне.';

  @override
  String get shareAnalysisTitle => 'Падзяліцца аналізам';

  @override
  String get shareAsImage => 'Падзяліцца выявай';

  @override
  String get shareAsText => 'Падзяліцца тэкстам';

  @override
  String get shareCardFooter => 'Зроблена ў WhatStock';

  @override
  String get shareCardDisclaimer => 'AI-аналіз · не інвестыцыйная парада';

  @override
  String get referralTitle => 'Запрасіце сяброў';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дадатковага аналізу',
      many: '$count дадатковых аналізаў',
      few: '$count дадатковыя аналізы',
      one: '$count дадатковы аналіз',
    );
    return 'Падзяліцеся сваім кодам. Ваш сябар адразу атрымае $_temp0, а вы — столькі ж пасля яго першага аналізу.';
  }

  @override
  String get referralYourCode => 'Ваш код';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Запрошана: $invited · Узнагароджана: $rewarded';
  }

  @override
  String get referralHaveCode => 'Ёсць код ад сябра?';

  @override
  String get referralRedeem => 'Актываваць';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Дададзена $count дадатковага аналізу. Вітаем!',
      many: 'Дададзена $count дадатковых аналізаў. Вітаем!',
      few: 'Дададзены $count дадатковыя аналізы. Вітаем!',
      one: 'Дададзены $count дадатковы аналіз. Вітаем!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Такога кода не існуе. Праверце яго і паспрабуйце яшчэ раз.';

  @override
  String get referralErrOwn => 'Нельга актываваць уласны код.';

  @override
  String get referralErrAlready => 'Вы ўжо актывавалі код сябра.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дадатковага аналізу',
      many: '$count дадатковых аналізаў',
      few: '$count дадатковыя аналізы',
      one: '$count дадатковы аналіз',
    );
    return 'Я аналізую акцыі з WhatStock: сфатаграфуйце акцыю, і AI растлумачыць яе. З маім кодам $code вы атрымаеце $_temp0.';
  }

  @override
  String get referralCopied => 'Код скапіяваны';

  @override
  String get onboardTitle1 => 'Сфатаграфуйце акцыю';

  @override
  String get onboardBody1 =>
      'Дастаткова экрана брокерскай праграмы, газеты або лагатыпа кампаніі: WhatStock распазнае акцыю і пакажа яе кошт, графік і ключавыя паказчыкі.';

  @override
  String get onboardTitle2 => 'Зразумейце за лічаныя хвіліны';

  @override
  String get onboardBody2 =>
      'AI-аналіз растлумачыць, што рухае акцыю, якія рызыкі і ацэнка, і апіша тры сцэнарыі таго, куды можа пайсці кошт, — з крыніцамі і на вашай мове.';

  @override
  String get onboardTitle3 => 'Будзьце ў курсе';

  @override
  String get onboardBody3 =>
      'Абранае, ваш партфель і цэнавыя апавяшчэнні трымаюць вас у курсе. Вашы аналізы застаюцца на вашай прыладзе, і іх можна адкрыць зноў у любы момант.';

  @override
  String get onboardNext => 'Далей';

  @override
  String get onboardStart => 'Пачаць';

  @override
  String get onboardSkip => 'Прапусціць';

  @override
  String changesTitle(String date) {
    return 'З часу папярэдняга аналізу ($date)';
  }

  @override
  String get changesPrice => 'Цана';

  @override
  String get changesNoMajor => 'Перспектывы істотна не змяніліся.';

  @override
  String get changesPreviousSummary => 'Папярэдняе рэзюмэ';

  @override
  String get telemetryTitle => 'Дапамажыце палепшыць WhatStock';

  @override
  String get telemetryBody =>
      'Дзяліцеся ананімнай статыстыкай выкарыстання і справаздачамі пра збоі: якія функцыі выкарыстоўваюцца і што пайшло не так. Вашы акцыі, аналізы і асабістыя даныя ніколі не перадаюцца. Вы можаце змяніць гэта ў любы час у Наладах.';

  @override
  String get telemetryAllow => 'Дазволіць';

  @override
  String get telemetryDecline => 'Не, дзякуй';

  @override
  String get telemetrySetting => 'Ананімная статыстыка і справаздачы пра збоі';

  @override
  String get telemetrySettingHint =>
      'Як часта выкарыстоўваюцца функцыі і справаздачы пра памылкі – без асабістых даных і змесціва вашых пошукаў і аналізаў.';

  @override
  String get askButton => 'Спытаць пра гэты аналіз';

  @override
  String askTitle(String symbol) {
    return 'Пытанні пра $symbol';
  }

  @override
  String get askIntro =>
      'Пытайцеся пра аналіз што заўгодна: што азначае пэўная рызыка, што можа змяніць прагноз, як атрымалася тая ці іншая лічба. Адказы грунтуюцца на гэтым аналізе і не з’яўляюцца інвестыцыйнай парадай.';

  @override
  String get askHint => 'Задайце пытанне…';

  @override
  String get askSend => 'Адправіць';

  @override
  String get askThinking => 'Думаю…';

  @override
  String get askSuggest1 => 'Якая самая вялікая рызыка?';

  @override
  String get askSuggest2 => 'Што можа змяніць прагноз?';

  @override
  String get askSuggest3 => 'Растлумач простымі словамі';

  @override
  String get askMaxReached =>
      'Гэта было апошняе пытанне для гэтага аналізу. Каб спытаць яшчэ, стварыце новы аналіз.';

  @override
  String get errAskLimit =>
      'Вы дасягнулі сённяшняга ліміту пытанняў. Паспрабуйце зноў заўтра.';

  @override
  String get eventTomorrow => 'Заўтра';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'праз $days дня',
      many: 'праз $days дзён',
      few: 'праз $days дні',
      one: 'праз $days дзень',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Квартальныя вынікі';

  @override
  String get eventBeforeOpen => 'да адкрыцця рынку';

  @override
  String get eventAfterClose => 'пасля закрыцця рынку';

  @override
  String eventEpsEstimate(String value) {
    return 'Прагноз EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'З вашага аналізу';

  @override
  String get eventDividend => 'Чакаецца дывідэнд';

  @override
  String get eventDividendEstimate =>
      'Ацэнка на падставе вашых запісаных выплат';

  @override
  String get eventsHint =>
      'Даты справаздач вашых абраных акцый і акцый з партфеля на бліжэйшыя 90 дзён, падзеі з датамі, адзначаныя ў вашых аналізах, а таксама дывідэнды, якія чакаюцца на падставе вашых запісаных выплат.';

  @override
  String get eventsEmpty =>
      'У бліжэйшыя 90 дзён падзей з датамі няма. Дадайце акцыі ў абранае або ў партфель, каб бачыць тут даты іх справаздач; для запісаных дывідэндаў тут паказваецца чаканая наступная выплата.';

  @override
  String get compareTitle => 'Параўнанне';

  @override
  String get compareAdd => 'Дадаць акцыю';

  @override
  String get compareRemove => 'Выдаліць';

  @override
  String get compareTickerHint => 'Тыкер, напр. MSFT';

  @override
  String get compareHint =>
      'Асноўныя паказчыкі побач; найлепшае значэнне ў кожным радку вылучана. Сумы — ва ўласнай валюце кожнай акцыі.';

  @override
  String get compareNoAnalysis => 'Аналізу пакуль няма';

  @override
  String get portfolioDividends => 'Гадавыя дывідэнды';

  @override
  String portfolioDividendYield(String percent) {
    return 'Даходнасць $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Чаканыя гадавыя дывідэнды разлічаны паводле дывідэндаў, выплачаных за апошнія 12 месяцаў; будучыя выплаты не гарантаваныя.';

  @override
  String positionDividend(String amount) {
    return 'Дывідэнд: $amount у год';
  }

  @override
  String get chartAvgCost => 'Ваша сяр.';

  @override
  String get chartAlertLevel => 'Апавяшчэнне';

  @override
  String get marketsToday => 'Рынкі сёння';

  @override
  String get notesTitle => 'Мае нататкі';

  @override
  String get notesHint =>
      'Чаму вы яе купілі, за чым сочыце, што прымусіць вас прадаць?';

  @override
  String get notesInfo =>
      'Захоўваецца на гэтай прыладзе, а калі вы ўвайшлі, — і ў вашым уліковым запісе. AI-аналіз улічвае вашы нататкі.';

  @override
  String notesSaved(String date) {
    return 'Захавана $date';
  }

  @override
  String get peersTitle => 'Падобныя кампаніі';

  @override
  String get portfolioExport => 'Экспартаваць у CSV';

  @override
  String get portfolioImport => 'Імпартаваць з CSV';

  @override
  String get portfolioImportHint =>
      'Устаўце па адной пакупцы ў радку: тыкер, колькасць, цана, валюта, дата (ГГГГ-ММ-ДД). Слупкі можна раздзяляць коскамі, кропкамі з коскай або табуляцыяй; радок загалоўкаў неабавязковы.';

  @override
  String get portfolioImportButton => 'Імпартаваць';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Дададзена $count аперацыі',
      many: 'Дададзена $count аперацый',
      few: 'Дададзены $count аперацыі',
      one: 'Дададзена $count аперацыя',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Прапушчана $count радка',
      many: 'Прапушчана $count радкоў',
      few: 'Прапушчаны $count радкі',
      one: 'Прапушчаны $count радок',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Партфель, абранае, цэнавыя апавяшчэнні і нататкі сінхранізуюцца на ўсіх вашых прыладах.';

  @override
  String syncLast(String time) {
    return 'Апошняя сінхранізацыя: $time';
  }

  @override
  String get syncNow => 'Сінхранізаваць зараз';

  @override
  String get syncFailed =>
      'Не ўдалося сінхранізаваць. Спроба паўторыцца аўтаматычна.';

  @override
  String get alertEmailTitle => 'Электронны ліст пры спрацоўванні апавяшчэння';

  @override
  String get alertEmailOn =>
      'Мы правяраем вашы апавяшчэнні кожныя некалькі хвілін і дасылаем вам ліст, нават калі праграма закрыта.';

  @override
  String get alertEmailSignIn =>
      'Увайдзіце праз электронную пошту ў Наладах, каб атрымліваць апавяшчэнні па электроннай пошце, нават калі праграма закрыта.';

  @override
  String get portfolioHistory => 'Дынаміка вартасці';

  @override
  String get portfolioReviewTitle => 'AI-аналіз партфеля';

  @override
  String get portfolioReviewIntro =>
      'AI праглядае ўвесь ваш партфель: канцэнтрацыю, залежнасць ад сектараў і валют, агульныя рызыкі вашых акцый і дывідэнды. Выкарыстоўвае 1 аналіз.';

  @override
  String get portfolioReviewButton => 'Прааналізаваць мой партфель';

  @override
  String get portfolioReviewAgain => 'Прааналізаваць нанова';

  @override
  String get portfolioReviewWorking => 'Аналізуем ваш партфель…';

  @override
  String get digestTitle => 'Штотыднёвая зводка па электроннай пошце';

  @override
  String get digestHint =>
      'Кожны панядзелак: як змяніліся вашы абраныя і партфель за мінулы тыдзень і бліжэйшыя даты іх справаздач.';

  @override
  String get benchmarkTitle => 'У параўнанні з S&P 500';

  @override
  String get benchmarkTitleIndex => 'У параўнанні з індэксам';

  @override
  String get benchmarkHintIndex =>
      'Як калі б кожная пакупка была ўкладзена ў той жа дзень у фонд, які паўтарае абраны індэкс. Без уліку дывідэндаў; мінулая даходнасць не прадказвае будучую.';

  @override
  String get benchmarkYours => 'Вашы пакупкі';

  @override
  String benchmarkAhead(String points) {
    return 'На $points п. п. лепш за індэкс';
  }

  @override
  String benchmarkBehind(String points) {
    return 'На $points п. п. адстае ад індэкса';
  }

  @override
  String get portfolioSell => 'Прадаць';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Прадаць $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Цана продажу за акцыю ($currency)';
  }

  @override
  String get portfolioSellDate => 'Дата продажу';

  @override
  String get portfolioSellAll => 'Усе';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'У вас $quantity';
  }

  @override
  String get portfolioSold => 'Прададзена';

  @override
  String get portfolioRealized => 'Рэалізавана';

  @override
  String get portfolioClosed => 'Закрытыя пазіцыі';

  @override
  String get portfolioClosedNote => 'Усе акцыі прададзены';

  @override
  String get portfolioTransactions => 'Аперацыі';

  @override
  String get portfolioRealizedByYear => 'Рэалізаваны прыбытак па гадах';

  @override
  String get portfolioRealizedHint =>
      'Продажы супастаўляюцца спачатку з самымі старымі пакупкамі (FIFO) і пералічваюцца па сённяшнім курсе. Для падатковай дэкларацыі карыстайцеся выпіскай брокера.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Пасля гэтага аналізу выйшла новая квартальная справаздача ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Новая справаздача';

  @override
  String get portfolioImportBrokers =>
      'Таксама распазнаюцца экспарты з Revolut, Trading 212, Interactive Brokers, DEGIRO, Schwab, Fidelity і Robinhood, разам з продажамі і дывідэндамі (за вылікам падатку, утрыманага ў крыніцы); папаўненні прапускаюцца.';

  @override
  String get portfolioImportFile => 'Выбраць файл';

  @override
  String offlineBanner(String time) {
    return 'Няма злучэння – паказаны апошнія захаваныя даныя ($time).';
  }

  @override
  String get glossMarketCap =>
      'Колькі каштуе ўся кампанія на біржы: кошт акцыі × колькасць акцый.';

  @override
  String get glossSharesOutstanding =>
      'Колькі акцый выпусціла кампанія. Калі колькасць расце, кожнай акцыі належыць меншая доля; выкуп яе памяншае.';

  @override
  String get glossPeTrailing =>
      'Кошт ÷ прыбытак на акцыю за апошнія 12 месяцаў: за колькі гадоў цяперашняга прыбытку вы плаціце. Ніжэйшы — танней, але ў хутка растучых кампаній P/E звычайна высокі.';

  @override
  String get glossPeForward =>
      'Як P/E, але з прыбыткам, які аналітыкі чакаюць на наступныя 12 месяцаў. Калі ён ніжэйшы за бягучы P/E, чакаецца рост прыбытку.';

  @override
  String get glossPb =>
      'Кошт ÷ балансавы кошт (актывы мінус даўгі) на акцыю. Каля 1 азначае, што рынак ацэньвае кампанію ў тое, чым яна валодае на паперы.';

  @override
  String get glossPs =>
      'Рыначны кошт ÷ гадавая выручка. Карысна для кампаній, у якіх яшчэ мала або зусім няма прыбытку; параўноўвайце ў межах адной галіны.';

  @override
  String get glossEvToFcf =>
      'Кошт кампаніі з улікам доўгу (EV) ÷ грошы, якія яна зарабляе за год пасля інвестыцый. Ніжэй — значыць, вы атрымліваеце больш грошай за кошт.';

  @override
  String get glossPeg =>
      'P/E ÷ чаканы гадавы рост прыбытку (%). Каля 1 часта лічыцца справядлівым; паказвае P/E з улікам росту.';

  @override
  String get glossEps =>
      'Прыбытак на адну акцыю за апошнія 12 месяцаў. Рост EPS год за годам — адна з самых моцных прыкмет здаровай кампаніі.';

  @override
  String get glossBeta =>
      'Наколькі акцыя схільная рухацца разам з рынкам: 1 = як рынак, 1,5 = ваганні прыкладна на 50% большыя, ніжэй за 1 = спакайней.';

  @override
  String get glossRevenueTtm =>
      'Агульны аб\'ём продажаў за апошнія 12 месяцаў, да ўсіх выдаткаў.';

  @override
  String get glossNetIncomeTtm =>
      'Прыбытак, які застаўся пасля ўсіх выдаткаў, працэнтаў і падаткаў за апошнія 12 месяцаў.';

  @override
  String get glossGrossMargin =>
      'Доля выручкі, якая застаецца пасля прамых выдаткаў на прадукцыю. Высокая маржа часта азначае здольнасць дыктаваць цэны.';

  @override
  String get glossOperatingMargin =>
      'Доля выручкі, якая застаецца пасля выдаткаў на працу кампаніі (заробкі, арэнда, маркетынг), да працэнтаў і падаткаў.';

  @override
  String get glossNetMargin =>
      'Доля выручкі, якая ператвараецца ў канчатковы прыбытак. 20% азначае, што з кожных 100 продажаў 20 — прыбытак.';

  @override
  String get glossRoe =>
      'Рэнтабельнасць капіталу: гадавы прыбытак ÷ капітал уладальнікаў. Паказвае, наколькі добра кіраўніцтва выкарыстоўвае грошы акцыянераў; вышэй за прыкладна 15% — моцна.';

  @override
  String get glossRoa =>
      'Рэнтабельнасць актываў: гадавы прыбытак ÷ усё, чым валодае кампанія. Параўноўвайце ў межах адной галіны.';

  @override
  String get glossDebtToEquity =>
      'Даўгі ÷ капітал уладальнікаў. Вышэй — больш пазычаных грошай: большая рызыка пры росце ставак або запаволенні бізнесу.';

  @override
  String get glossCurrentRatio =>
      'Кароткатэрміновыя актывы ÷ рахункі да аплаты на працягу года. Вышэй за 1 — кампанія можа пакрыць свае бліжэйшыя абавязацельствы.';

  @override
  String get glossRevenueGrowth =>
      'Наколькі вырасла выручка ў параўнанні з годам раней.';

  @override
  String get glossEpsGrowth =>
      'Наколькі вырас прыбытак на акцыю ў параўнанні з годам раней.';

  @override
  String get glossDividendYield =>
      'Гадавы дывідэнд ÷ кошт акцыі: грашовы даход, які вы атрымлівалі б за год, у працэнтах ад таго, што плаціце.';

  @override
  String get glossDividendPerShare =>
      'Дывідэнд, выплачаны на адну акцыю за апошні год.';

  @override
  String get glossPayoutRatio =>
      'Доля прыбытку, якая выплачваецца як дывідэнды. Вышэй за 100% кампанія плаціць больш, чым зарабляе, і гэта рэдка доўжыцца доўга.';

  @override
  String get portfolioBeta => 'Бэта партфеля';

  @override
  String get glossPortfolioBeta =>
      'Бэта вашых акцый, узважаная па іх кошце: прыкладна на колькі працэнтаў рухаюцца вашы акцыі, калі рынак рухаецца на 1%. Вышэй за 1 — яны вагаюцца мацней за рынак, ніжэй за 1 — слабей. Грошы не ўлічваюцца.';

  @override
  String get portfolioTop3 => 'Топ-3 пазіцыі';

  @override
  String get glossPortfolioTop3 =>
      'Якая доля кошту вашых акцый прыпадае на тры найбуйнейшыя пазіцыі. Чым яна вышэйшая, тым мацней дрэнныя навіны пра адну кампанію могуць пашкодзіць усяму партфелю.';

  @override
  String get glossDividendGrowth5y =>
      'Наколькі ў сярэднім за год рос дывідэнд на акцыю на працягу апошніх пяці гадоў. Стабільны рост звычайна азначае, што кампанія ўпэўненая ў сваім грашовым патоку; скарачэнне часта — трывожны сігнал.';

  @override
  String get glossYieldOnCost =>
      'Дывідэнды, атрыманыя за апошнія 12 месяцаў, падзеленыя на тое, што вы заплацілі за акцыі, якімі ўсё яшчэ валодаеце. У адрозненне ад дывідэнднай даходнасці, яна вымяраецца адносна вашай цаны пакупкі, а не сённяшняй цаны.';

  @override
  String get glossTitle => 'Што гэта значыць?';

  @override
  String get watchNewsTitle => 'Навіны пра вашы акцыі';

  @override
  String get undo => 'Адрабіць';

  @override
  String get watchSort => 'Сартаваць';

  @override
  String get watchSortOwn => 'Мой парадак';

  @override
  String get watchSortGainers => 'Спачатку найбольшы рост';

  @override
  String get watchSortLosers => 'Спачатку найбольшае падзенне';

  @override
  String get watchSortName => 'Па тыкеры (A–Z)';

  @override
  String get watchHint =>
      'Перацягніце маркер, каб змяніць парадак, правядзіце ўлева, каб выдаліць. Лінія паказвае апошнія 30 дзён.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: ваш аналіз гатовы.';
  }

  @override
  String alertFromCost(String price) {
    return 'Ад вашага сярэдняга кошту пакупкі ($price):';
  }

  @override
  String get briefTitle => 'Сёння з вашымі акцыямі';

  @override
  String get briefButton => 'Падсумаваць дзень';

  @override
  String get briefHint =>
      'Кароткае AI-падсумаванне таго, як сёння змяніліся ваш партфель і абранае і што пра іх кажуць свежыя навіны. Аналіз не выкарыстоўваецца.';

  @override
  String get briefRefresh => 'Абнавіць';

  @override
  String get sectionEarnings => 'Прыбытак';

  @override
  String earningsNext(String date) {
    return 'Наступная справаздача: $date';
  }

  @override
  String get earningsExpected => 'Чаканы EPS';

  @override
  String get earningsReported => 'Апублікаваны EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'На ўзроўні чаканага EPS або вышэй: $beats з апошніх $total кварталаў',
      one: 'На ўзроўні чаканага EPS або вышэй: $beats з $total квартала',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol заўтра публікуе квартальныя вынікі';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol сёння публікуе квартальныя вынікі';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return '$symbol: сёння чакаецца дывідэнд';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Каля $amount. Запішыце яго ў партфель, калі ён паступіць.';
  }

  @override
  String get dividendRemindersTitle => 'Напаміны пра дывідэнды';

  @override
  String get dividendRemindersSubtitle =>
      'Апавяшчэнне ў дзень, калі паводле рытму вашых запісаных выплат чакаецца дывідэнд, каб вы маглі яго запісаць';

  @override
  String get earningsRemindersTitle => 'Напаміны пра вынікі';

  @override
  String get earningsRemindersSubtitle =>
      'Апавяшчэнне за дзень да таго, як акцыі з вашага абранага або партфеля апублікуюць квартальныя вынікі';

  @override
  String addAllToFavorites(int count) {
    return 'Дадаць усе ў абранае ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Імпартаваць са здымка экрана';

  @override
  String get holdingsReading => 'Чытаем вашы пазіцыі…';

  @override
  String get holdingsReviewTitle => 'Знойдзеныя пазіцыі';

  @override
  String get holdingsReviewHint =>
      'Праверце лічбы, перш чым дадаваць іх. Цана — гэта ваша сярэдняя цана пакупкі адной акцыі, а не сённяшняя цана.';

  @override
  String get holdingsNoPrice => 'На выяве няма сярэдняй цаны пакупкі';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Дадаць $count пазіцыі',
      many: 'Дадаць $count пазіцый',
      few: 'Дадаць $count пазіцыі',
      one: 'Дадаць $count пазіцыю',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'На гэтай выяве не знойдзена пазіцый па акцыях. Паспрабуйце здымак экрана старонкі пазіцый або актываў у вашага брокера.';

  @override
  String get week52Range => 'Дыяпазон за 52 тыдні';

  @override
  String week52BelowHigh(String percent) {
    return 'На $percent ніжэй за максімум за 52 тыдні';
  }

  @override
  String get week52AtHigh => 'На максімуме за 52 тыдні';

  @override
  String get alertKindTrailing => 'Упадзе ад піку';

  @override
  String get alertTrailingPercent => 'Падзенне ад піку (%)';

  @override
  String get alertTrailingHint =>
      'Сочыць за цаной уверх: апавяшчае, калі цана ўпадзе на столькі ад найвышэйшага ўзроўню з моманту ўстаноўкі.';

  @override
  String alertDescTrailing(String percent) {
    return 'Падзенне на $percent ад піку';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'пік на дадзены момант: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol упала на $percent ад піку';
  }

  @override
  String get sectionInsiders => 'Інсайдарскія здзелкі';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count куплі',
      many: '$count купляў',
      few: '$count куплі',
      one: '$count купля',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count продажу',
      many: '$count продажаў',
      few: '$count продажы',
      one: '$count продаж',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Нета: $shares акцый';
  }

  @override
  String get insiderBuy => 'Куплена';

  @override
  String get insiderSell => 'Прададзена';

  @override
  String get insiderHint =>
      'Купля і продаж на адкрытым рынку кіраўнікамі і дырэктарамі за апошнія 90 дзён (SEC Form 4). Выкананне апцыёнаў і ўзнагароды акцыямі не ўлічваюцца.';

  @override
  String get insiderNone =>
      'За апошнія 90 дзён інсайдары не куплялі і не прадавалі акцыі на адкрытым рынку.';

  @override
  String get analystTrend => 'Як змяняліся меркаванні месяц за месяцам';

  @override
  String get watchListAll => 'Усе';

  @override
  String get watchListNew => 'Новы спіс';

  @override
  String get watchListName => 'Назва спіса';

  @override
  String get watchListRename => 'Перайменаваць спіс';

  @override
  String get watchListDelete => 'Выдаліць спіс';

  @override
  String get watchListAddTo => 'Дадаць у спіс';

  @override
  String get watchListEmpty =>
      'У гэтым спісе пакуль няма акцый. Націсніце кнопку спіса побач з акцыяй, каб дадаць яе.';

  @override
  String get portfolioAskTitle => 'Пытанні пра ваш партфель';

  @override
  String get rangeYtd => 'З пач. г.';

  @override
  String get backupTitle => 'Рэзервовая копія';

  @override
  String get backupSave => 'Захаваць рэзервовую копію';

  @override
  String get backupSaveHint =>
      'Вашы абранае, спісы, партфель, апавяшчэнні і нататкі ў адным файле.';

  @override
  String get backupRestore => 'Аднавіць з рэзервовай копіі';

  @override
  String get backupRestoreHint =>
      'Дадае тое, што ёсць у файле; нічога з вашых цяперашніх даных не выдаляецца.';

  @override
  String get backupRestored => 'Рэзервовая копія адноўлена.';

  @override
  String get backupInvalid =>
      'Гэты файл не з\'яўляецца рэзервовай копіяй WhatStock.';

  @override
  String get allocationPositions => 'Акцыі';

  @override
  String get allocationSectors => 'Сектары';

  @override
  String get allocationCurrencies => 'Валюты';

  @override
  String get allocationAccounts => 'Рахункі';

  @override
  String get compareReturn1y => 'Даходнасць за 1 год';

  @override
  String get compareFromHigh => 'Ад максімуму за 52 тыдні';

  @override
  String get briefAutoTitle => 'Штодзённая зводка кожную раніцу';

  @override
  String get briefAutoSubtitle =>
      '«Сёння з вашымі акцыямі» ствараецца аўтаматычна пасля 7:00, пакуль праграма працуе; на камп’ютарах пра гэта паведаміць апавяшчэнне. Выкарыстоўвае дзённы ліміт пытанняў, а не аналіз.';

  @override
  String get targetsButton => 'Мэтавае размеркаванне';

  @override
  String get targetsTitle => 'Мэтавае размеркаванне';

  @override
  String get targetsHint =>
      'Укажыце, якую долю партфеля павінна займаць кожная акцыя. Пакіньце поле пустым, калі мэты няма. Пасля праграма пакажа, што трэба купіць або прадаць, каб гэтага дасягнуць.';

  @override
  String targetsSum(String percent) {
    return 'Разам: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Купіць ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Прадаць ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Адпавядае мэце';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol перавысіў чаканы EPS';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol не дасягнуў чаканага EPS';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'Апублікаваны EPS $actual, чаканы $estimate';
  }

  @override
  String get newsExplain => 'Што гэта значыць?';

  @override
  String get watchAlertAll => 'Апавяшчэнне пра вялікія змены за дзень';

  @override
  String get watchAlertAllHint =>
      'Цэнавае апавяшчэнне для кожнай акцыі ў гэтым спісе: спрацуе, калі за дзень яна зменіцца на столькі ўверх ці ўніз. Акцыі, у якіх ужо ёсць такое, захоўваюць сваё.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Устаноўлена $count апавяшчэння',
      many: 'Устаноўлена $count апавяшчэнняў',
      few: 'Устаноўлена $count апавяшчэнні',
      one: 'Устаноўлена $count апавяшчэнне',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized =>
      'Экспартаваць рэалізаваны прыбытак (CSV)';

  @override
  String get portfolioAnnualReturn => 'Гадавая даходнасць';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / год';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Узважаная па грашовых патоках гадавая даходнасць (XIRR): улічвае, калі вы куплялі і прадавалі, таму грошы, дададзеныя пазней, яе не скажаюць. Паказваецца, калі вашай першай пакупцы споўніцца хаця б год; дывідэнды не ўлічваюцца.';

  @override
  String get eventsAddToCalendar => 'Дадаць у каляндар (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Апавяшчэнне пра партфель';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Апавяшчэнне, калі ўвесь ваш партфель за дзень змяняецца на столькі.';

  @override
  String get portfolioMoveAlertOff => 'Выключана';

  @override
  String portfolioMoveUp(String percent) {
    return 'Ваш партфель сёння вырас на $percent';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Ваш партфель сёння ўпаў на $percent';
  }

  @override
  String get whatIfTitle => 'А калі б вы ўклалі?';

  @override
  String get whatIfAmount => 'Сума';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount, укладзеныя $period таму, сёння каштавалі б';
  }

  @override
  String get whatIfNote =>
      'Толькі па кошце акцыі: дывідэнды, камісіі і падаткі не ўлічаны. Мінулая даходнасць не прадказвае будучую.';

  @override
  String get watchShare => 'Падзяліцца спісам';

  @override
  String get watchImport => 'Дадаць тыкеры';

  @override
  String get watchImportHint =>
      'Устаўце тыкеры праз коску, прабел або з новага радка – напрыклад, спіс, якім з вамі хтосьці падзяліўся.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Дададзена $count акцыі',
      many: 'Дададзена $count акцый',
      few: 'Дададзены $count акцыі',
      one: 'Дададзена $count акцыя',
      zero: 'Няма новых акцый',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Спачатку найбуйнейшыя';

  @override
  String get positionsSortGain => 'Спачатку найбольшы агульны прыбытак';

  @override
  String get positionsSortToday => 'Спачатку лепшыя за сёння';

  @override
  String get chartMyBuys => 'Вашы пакупкі';

  @override
  String get chartMySells => 'Вашы продажы';

  @override
  String get shortcutsTitle => 'Спалучэнні клавіш';

  @override
  String usMarketOpen(String time) {
    return 'Рынак ЗША адкрыты · закрыецца праз $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Рынак ЗША зачынены · адкрыецца праз $time';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes хв';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours гадз $minutes хв';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days дз $hours гадз';
  }

  @override
  String get dividendGoalSet => 'Задаць штомесячную мэту па дывідэндах';

  @override
  String get dividendGoalTitle => 'Штомесячная мэта па дывідэндах';

  @override
  String get dividendGoalAmount => 'Дывідэнды ў месяц';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Каля $amount у месяц пры цяперашняй даходнасці: $percent ад мэты $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Каля $amount у месяц пры цяперашняй даходнасці: мэта $goal дасягнута';
  }

  @override
  String get portfolioAccount => 'Рахунак';

  @override
  String get portfolioAccountHint => 'напр. TBSZ 2026 (неабавязкова)';

  @override
  String get portfolioAccountAdd => 'Пазначыць рахунак';

  @override
  String get portfolioAccountsAll => 'Усе рахункі';

  @override
  String get portfolioAccountNote =>
      'Толькі аперацыі і дывідэнды гэтага рахунку. Грошы, мэты і AI-аналіз паказваюцца ў раздзеле «Усе рахункі».';

  @override
  String get portfolioNoAccount => 'Без рахунку';

  @override
  String portfolioFee(String currency) {
    return 'Камісія ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Дадаць камісію';

  @override
  String portfolioFeeRow(String amount) {
    return 'Камісія: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'Гадавая зводка';

  @override
  String get portfolioProceeds => 'Выручка ад продажу';

  @override
  String get portfolioCostBasis => 'Кошт набыцця';

  @override
  String get portfolioFeesPaid => 'Выплачаная камісія';

  @override
  String get portfolioAnnualSummaryNote =>
      'Сумы ў зыходнай валюце, без пераліку. Выручка паказана за вылікам камісіі за продаж; кошт набыцця ўключае камісію за пакупку (FIFO). Для падатковай дэкларацыі пералічыце па курсе, які патрабуе ваша падатковая служба.';

  @override
  String get portfolioShare => 'Падзяліцца вынікамі';

  @override
  String get portfolioShareHeading => 'Мой партфель';

  @override
  String get portfolioTopHoldings => 'Найбуйнейшыя пазіцыі';

  @override
  String get portfolioShareNote => 'Вы дзеліцеся толькі працэнтамі, без сум.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count пазіцыі',
      many: '$count пазіцый',
      few: '$count пазіцыі',
      one: '$count пазіцыя',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'Не з’яўляецца інвестыцыйнай парадай';

  @override
  String get contributionButton => 'Укласці новыя грошы';

  @override
  String contributionAmount(String currency) {
    return 'Сума для ўкладання ($currency)';
  }

  @override
  String get contributionHint =>
      'Толькі куплі, без продажаў: грошы спачатку атрымліваюць пазіцыі, якія найбольш адстаюць ад мэты.';

  @override
  String contributionShares(String shares) {
    return '≈ $shares шт.';
  }

  @override
  String contributionMissing(String symbols) {
    return 'Няма актуальнай цаны для $symbols: не ўлічаны пры размеркаванні.';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'Калі гадавая даходнасць захаваецца ($rate), вы дасягнеце мэты каля $year года.';
  }

  @override
  String get portfolioMaxDrawdown => 'Найбольшае падзенне';

  @override
  String get glossMaxDrawdown =>
      'Найбольшае падзенне кошту вашых акцый ад ранейшага піку да пазнейшага мінімуму без уплыву вашых купляў і продажаў (узважана па часе). Паказвае, наколькі глыбокую прасадку ваш партфель ужо перажыў.';

  @override
  String watchSince(String date) {
    return 'З часу дадання ў абранае ($date)';
  }

  @override
  String get portfolioSampleTry => 'Паспрабаваць з дэманстрацыйным партфелем';

  @override
  String get portfolioSampleBanner =>
      'Гэта дэманстрацыйны партфель. Дадайце побач свае пакупкі або выдаліце яго.';

  @override
  String get portfolioSampleRemove => 'Выдаліць дэма-партфель';

  @override
  String get portfolioStopsAll => 'Трэйлінг-стоп для ўсіх пазіцый';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Устаноўлена $count трэйлінг-стопа',
      many: 'Устаноўлена $count трэйлінг-стопаў',
      few: 'Устаноўлены $count трэйлінг-стопы',
      one: 'Устаноўлены $count трэйлінг-стоп',
      zero: 'На ўсіх пазіцыях ужо ёсць трэйлінг-стоп',
    );
    return '$_temp0';
  }

  @override
  String portfolioSinceSale(String percent) {
    return '$percent з моманту продажу';
  }

  @override
  String get lotPreviewRealized => 'Рэалізавана ад гэтага продажу (FIFO):';

  @override
  String lotPreviewAverage(String after, String before) {
    return 'Новая сярэдняя цана пакупкі: $after (зараз $before)';
  }

  @override
  String get portfolioYtdReturn => 'Даходнасць за гэты год';

  @override
  String get glossTwrYtd =>
      'Узважаная па часе даходнасць з пачатку года (або з вашай першай куплі, калі яна была сёлета): кожны дзень улічвае змену акцый, якія вы мелі ў той дзень, а дні злучаюцца ў ланцуг – грошы, якія вы ўносіце ці выводзіце, не з\'яўляюцца даходнасцю, таму яе можна параўнаць з індэксам. Пад ёй: выбраны індэкс за той жа перыяд.';

  @override
  String alertDistance(String price, String percent) {
    return 'Зараз $price · засталося $percent';
  }

  @override
  String get watchSortSince => 'Па змене з часу дадання';

  @override
  String get portfolioTodayMovers => 'Найбольш змяніліся сёння:';

  @override
  String get lotNoteAdd => 'Дадаць нататку';

  @override
  String get lotNoteBuyHint =>
      'Чаму вы купляеце? Гэта трапіць у нататкі да акцыі разам з датай.';

  @override
  String get lotNoteSellHint =>
      'Чаму вы прадаеце? Гэта трапіць у нататкі да акцыі разам з датай.';

  @override
  String get lotNoteBought => 'Куплена';

  @override
  String get positionHeld => 'Тэрмін валодання';

  @override
  String durationMonths(int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months месяца',
      many: '$months месяцаў',
      few: '$months месяцы',
      one: '$months месяц',
    );
    return '$_temp0';
  }

  @override
  String durationDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days дня',
      many: '$days дзён',
      few: '$days дні',
      one: '$days дзень',
    );
    return '$_temp0';
  }

  @override
  String positionHeldSince(String date) {
    return 'з $date';
  }

  @override
  String lotPreviewWeight(String after, String before) {
    return 'Доля ў партфелі пасля: $after (зараз $before)';
  }

  @override
  String lotFromCash(String amount) {
    return 'Аплаціць з грашовага рэшту (зараз $amount)';
  }

  @override
  String lotToCash(String amount) {
    return 'Дадаць да грашовага рэшту (зараз $amount)';
  }

  @override
  String get onboardTitle4 => 'Сачыце за партфелем';

  @override
  String get onboardBody4 =>
      'Імпартуйце экспарт вашага брокера (Revolut, Trading 212, IBKR, DEGIRO, Schwab…) або дадавайце аперацыі ўручную: глядзіце даходнасць у параўнанні з індэксам, дывідэнды і гадавую зводку для падатковай дэкларацыі.';

  @override
  String get lotEdit => 'Рэдагаваць';

  @override
  String lotEditTitle(String symbol) {
    return 'Рэдагаваць аперацыю · $symbol';
  }

  @override
  String get lotSave => 'Захаваць';

  @override
  String dividendEditTitle(String symbol) {
    return 'Рэдагаваць дывідэнд · $symbol';
  }

  @override
  String get activityTitle => 'Усе аперацыі';

  @override
  String get activitySearchHint => 'Фільтр па тыкеры';

  @override
  String get activityNoMatch => 'Няма аперацый, якія адпавядаюць фільтру.';

  @override
  String portfolioImportDuplicates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ужо ёсць, не дададзена',
      many: '$count ужо ёсць, не дададзена',
      few: '$count ужо ёсць, не дададзены',
      one: '$count ужо ёсць, не дададзена',
    );
    return '$_temp0';
  }

  @override
  String get tickerChange => 'Змена тыкера';

  @override
  String tickerChangeTitle(String symbol) {
    return 'Змена тыкера · $symbol';
  }

  @override
  String get tickerChangeNew => 'Новы тыкер';

  @override
  String get tickerChangeHint =>
      'Калі кампанія мяняе тыкер (напр. FB → META): усе аперацыі, дывідэнды, драбленні акцый, нататка і апавяшчэнні пераносяцца на новы.';

  @override
  String tickerChanged(String symbol) {
    return 'Перанесена на $symbol';
  }

  @override
  String get referralErrSignIn =>
      'Увайдзіце праз электронную пошту, каб актываваць код сябра.';

  @override
  String get referralErrFull =>
      'Гэты код ужо актываваны максімальную колькасць разоў.';

  @override
  String get portfolioGoalSet => 'Задаць мэту';

  @override
  String get portfolioGoalTitle => 'Мэта партфеля';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent ад мэты $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Мэта $amount дасягнута';
  }

  @override
  String get portfolioGoalRemove => 'Выдаліць мэту';

  @override
  String get alertEdit => 'Рэдагаваць апавяшчэнне';

  @override
  String get positionOpenLots => 'Яшчэ ў партфелі (спачатку старэйшыя)';

  @override
  String get lotRemoved => 'Аперацыя выдалена';

  @override
  String get alertDeleted => 'Апавяшчэнне выдалена';

  @override
  String get alertsClearTriggered => 'Ачысціць спрацаваныя апавяшчэнні';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ачышчана $count апавяшчэння',
      many: 'Ачышчана $count апавяшчэнняў',
      few: 'Ачышчана $count апавяшчэнні',
      one: 'Ачышчана $count апавяшчэнне',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Галоўны экран';

  @override
  String get allocationCountries => 'Краіны';

  @override
  String get newsExplainNoteResearch =>
      'Тлумачэнне AI: шукае факты ў інтэрнэце, адкрывае артыкул і ацэньвае, наколькі надзейная крыніца. Не з’яўляецца інвестыцыйнай парадай. Выкарыстоўвае дзённы ліміт пытанняў, а не аналіз.';

  @override
  String get sourceOfficial => 'Афіцыйна';

  @override
  String get sourcePressRelease => 'Прэс-рэліз';

  @override
  String get sourceMajorNews => 'Буйное СМІ';

  @override
  String get sourceOpinion => 'Меркаванне';

  @override
  String get earningsSummaryButton => 'Што было ў апошняй справаздачы?';

  @override
  String get earningsSummaryNote =>
      'Кароткі змест ад AI: паведамленне кампаніі пра вынікі і публікацыі ў прэсе, якія ён знаходзіць у інтэрнэце. Не з’яўляецца інвестыцыйнай парадай. Выкарыстоўвае дзённы ліміт пытанняў, а не аналіз.';

  @override
  String get compareLastSurprise => 'EPS за апошні квартал vs чаканы';

  @override
  String get compareNextReport => 'Наступная справаздача';

  @override
  String get resolvingDescription => 'Вызначаем, якую акцыю вы маеце на ўвазе…';

  @override
  String get instrumentTitle => 'Пра гэты інструмент';

  @override
  String get instrumentHint =>
      'Для гэтага сімвала няма профілю кампаніі – гэта можа быць ETF, фонд або дэпазітарная распіска. Спытайце ў AI, што гэта, што ў яго ўваходзіць і колькі гэта каштуе.';

  @override
  String get instrumentAsk => 'Што гэта?';

  @override
  String get instrumentNote =>
      'Тлумачэнне ад AI на падставе старонкі фонду ў эмітэнта і фінансавых сайтаў, якія ён знаходзіць у інтэрнэце. Не з’яўляецца інвестыцыйнай парадай. Выкарыстоўвае дзённы ліміт пытанняў, а не аналіз.';

  @override
  String suggestAskAi(String query) {
    return 'Спытаць у AI: «$query»';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Няма актуальнай цаны для $symbols.';
  }

  @override
  String get eventsRecentResults => 'Нядаўна апублікаваныя вынікі';

  @override
  String get saveToNotes => 'Захаваць у мае нататкі';

  @override
  String get savedToNotes => 'Захавана ў вашых нататках';

  @override
  String get portfolioDividendsReceived => 'Атрыманыя дывідэнды';

  @override
  String get portfolioDividendsThisYear => 'Сёлета';

  @override
  String get portfolioDividendsAllTime => 'За ўвесь час';

  @override
  String get portfolioAddDividend => 'Дадаць дывідэнд';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Атрыманая сума ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Дата выплаты';

  @override
  String get portfolioDividendsEmpty =>
      'Дывідэнды пакуль не запісаныя. Дадайце іх уручную або імпартуйце экспарт вашага брокера – радкі з дывідэндамі таксама падхопяцца.';

  @override
  String get portfolioSplit => 'Дробленне акцый';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Дробленне акцый: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Пакупкі і продажы, датаваныя да драблення, карэктуюцца: колькасць акцый памнажаецца, а цана за акцыю дзеліцца, таму кошт застаецца тым жа.';

  @override
  String get portfolioSplitRatio => 'Каэфіцыент (новыя : старыя)';

  @override
  String get portfolioSplitRatioError =>
      'Увядзіце каэфіцыент, напрыклад 10:1, або 1:10 для зваротнага драблення.';

  @override
  String get portfolioSplitDate => 'Дата драблення';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Дробленне акцый $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Дробленне акцый выдалена';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Дададзена драбленняў акцый: $count',
      one: 'Дададзена $count дробленне акцый',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Дададзена $count дывідэнду',
      many: 'Дададзена $count дывідэндаў',
      few: 'Дададзена $count дывідэнды',
      one: 'Дададзены $count дывідэнд',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Экспартаваць дывідэнды (CSV)';

  @override
  String get portfolioDividendDeleted => 'Дывідэнд выдалены';

  @override
  String get portfolioDividendsHint =>
      'Сумы такія, як яны прыйшлі на ваш рахунак, у валюце выплаты; вынікі пераводзяцца па сённяшнім курсе. Для падатковай дэкларацыі карыстайцеся выпіскай вашага брокера.';

  @override
  String get awayTitle => 'Пакуль вас не было';

  @override
  String awaySince(String when) {
    return 'З $when';
  }

  @override
  String get awayQuiet => 'Нічога асабліва не змянілася.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Спрацавала $count абвесткі',
      many: 'Спрацавала $count абвестак',
      few: 'Спрацавалі $count абвесткі',
      one: 'Спрацавала $count абвестка',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Апублікавалі вынікі: $symbols';
  }

  @override
  String get moveWhyButton => 'Чаму яна рухаецца сёння?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent сёння';
  }

  @override
  String get moveWhyNote =>
      'Тлумачэнне ШІ на аснове сённяшніх навін з інтэрнэту; сапраўдная прычына можа быць невядомай або іншай. Не з’яўляецца інвестыцыйнай парадай. Выкарыстоўвае ваш дзённы ліміт пытанняў, а не аналіз.';

  @override
  String get sectionTechnical => 'Тэхнічная карціна';

  @override
  String get labelSma50 => '50-дзённая сярэдняя';

  @override
  String get labelSma200 => '200-дзённая сярэдняя';

  @override
  String get labelRsi => 'RSI (14 дзён)';

  @override
  String get labelVolatility30 => 'Валацільнасць (30 дзён)';

  @override
  String techAbove(String percent) {
    return 'на $percent вышэй';
  }

  @override
  String techBelow(String percent) {
    return 'на $percent ніжэй';
  }

  @override
  String get techOverbought => 'перакупленасць';

  @override
  String get techOversold => 'перапраданасць';

  @override
  String get techNeutral => 'нейтральна';

  @override
  String get techGoldenCross =>
      '50-дзённая сярэдняя вышэй за 200-дзённую – паводле класічнага прачытання гэта ўзыходны трэнд.';

  @override
  String get techDeathCross =>
      '50-дзённая сярэдняя ніжэй за 200-дзённую – паводле класічнага прачытання гэта сыходны трэнд.';

  @override
  String get glossSma50 =>
      'Сярэдняя цана закрыцця за апошнія 50 гандлёвых дзён. Цану вышэй за яе часта чытаюць як кароткатэрміновую сілу, ніжэй – як слабасць.';

  @override
  String get glossSma200 =>
      'Сярэдняя цана закрыцця за апошнія 200 гандлёвых дзён – класічная лінія доўгатэрміновага трэнду. Многія інвестары лічаць цану вышэй за яе доўгатэрміновым узыходным трэндам.';

  @override
  String get glossRsi =>
      'Індэкс адноснай сілы: параўноўвае нядаўнія прыросты з нядаўнімі падзеннямі па шкале 0–100. Вышэй за 70 акцыю часта называюць перакупленай (яна хутка вырасла), ніжэй за 30 – перапраданай, але моцны трэнд можа застацца там надоўга.';

  @override
  String get glossVolatility =>
      'Наколькі цана вагаецца з дня ў дзень, у пераліку на год: 20% азначае, што за звычайны год цана рухаецца прыкладна ў межах ±20%. Вышэйшая валацільнасць – большыя рухі ў абодва бакі.';

  @override
  String get techNote =>
      'Разлічана па дзённых цэнах закрыцця. Тэхнічныя сігналы апісваюць мінулае, а не будучыню.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$above з $count пазіцый вышэй за сваю 200-дзённую сярэднюю';
  }

  @override
  String get watchSignalsTitle => 'Сігналы';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · перапраданасць';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · перакупленасць';
  }

  @override
  String get signalCrossedAbove => 'перасекла 200-дзённую сярэднюю ўверх';

  @override
  String get signalCrossedBelow => 'перасекла 200-дзённую сярэднюю ўніз';

  @override
  String get signalAlertsTitle => 'Апавяшчэнні пра тэхнічныя сігналы';

  @override
  String get signalAlertsSubtitle =>
      'Раз на дзень, калі акцыя, за якой вы сочыце, пераходзіць у перапраданасць або перакупленасць (RSI), або яе цана перасякае 200-дзённую сярэднюю.';

  @override
  String get signalAlertsNotification => 'Тэхнічныя сігналы';

  @override
  String get glossaryPageTitle => 'Гласарый';

  @override
  String get glossaryPageSubtitle =>
      'Простыя тлумачэнні кожнага паказчыка ў праграме, ад P/E да RSI';

  @override
  String get glossarySearchHint => 'Пошук у гласарыі';

  @override
  String get portfolioCash => 'Грошы';

  @override
  String get portfolioCashTitle => 'Грашовы рэшт';

  @override
  String get portfolioCashHint =>
      'Неўкладзеныя грошы ў брокера, па валютах. Улічваюцца ў агульнай вартасці і размеркаванні; не ўлічваюцца ў даходнасці.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Сума ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Задаць грашовы рэшт';

  @override
  String get portfolioDividendsByMonth => 'Па месяцах';

  @override
  String get dividendsLegendReceived => 'Атрыманыя';

  @override
  String get dividendsLegendExpected => 'Чаканыя';

  @override
  String get portfolioDividendsExpected => 'Чакаецца далей';

  @override
  String get portfolioDividendsExpectedNote =>
      'Разлічана па датах і сумах запісаных вамі выплат; кампаніі могуць іх змяніць або прапусціць.';

  @override
  String portfolioDividendAround(String date) {
    return 'прыкладна $date';
  }
}
