// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kirghiz Kyrgyz (`ky`).
class AppLocalizationsKy extends AppLocalizations {
  AppLocalizationsKy([String locale = 'ky']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Акцияны сүрөткө тартып, ал тууралуу баарын билиңиз.';

  @override
  String get homeHint =>
      'Акциянын сертификаты, брокердик колдонмонун экраны, гезит же компаниянын логотиби – акцияны тааныта турган нерсенин баары.';

  @override
  String get takePhoto => 'Сүрөткө тартуу';

  @override
  String get chooseFromGallery => 'Галереядан тандоо';

  @override
  String get chooseImage => 'Сүрөт тандоо';

  @override
  String get enterTickerManually => 'Тикерди кол менен киргизүү';

  @override
  String get tickerInputLabel => 'Тикер';

  @override
  String get tickerInputHint => 'мис., AAPL';

  @override
  String get lookUp => 'Издөө';

  @override
  String demoModeBanner(String symbols) {
    return 'Демо режим – рыноктук маалымат ачкычы жөндөлгөн эмес. Үлгү маалыматтар төмөнкүлөр үчүн бар: $symbols.';
  }

  @override
  String get recognizing => 'Сүрөт талданууда…';

  @override
  String get loadingData => 'Маалыматтар жүктөлүүдө…';

  @override
  String get noCandidatesTitle => 'Акция таанылган жок';

  @override
  String get noCandidatesBody =>
      'Бул сүрөттөн акцияны аныктай алган жокпуз. Даанараак сүрөт тартып көрүңүз же тикерди кол менен киргизиңиз.';

  @override
  String get whatWeSaw => 'Биз эмнени көрдүк';

  @override
  String get chooseCandidateTitle => 'Кайсы акцияны айткыңыз келди?';

  @override
  String confidencePercent(int percent) {
    return '$percent% ишеним';
  }

  @override
  String get settings => 'Жөндөөлөр';

  @override
  String get language => 'Тил';

  @override
  String get systemLanguage => 'Системанын тили';

  @override
  String get about => 'Колдонмо жөнүндө';

  @override
  String get disclaimer =>
      'Бул колдонмо маалымат үчүн гана берилет жана инвестициялык кеңеш болуп саналбайт. Маалыматтар кечигип же так эмес болушу мүмкүн.';

  @override
  String dataSource(String source) {
    return 'Маалымат булагы: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Таануу: $source';
  }

  @override
  String get retry => 'Кайталоо';

  @override
  String get cancel => 'Жокко чыгаруу';

  @override
  String get ok => 'Макул';

  @override
  String get close => 'Жабуу';

  @override
  String get errorGeneric => 'Бир жерден ката кетти.';

  @override
  String get errorSectionUnavailable => 'Бул бөлүм жүктөлгөн жок.';

  @override
  String get notAvailable => 'жок';

  @override
  String get sectionIdentity => 'Идентификация';

  @override
  String get sectionPrice => 'Баа';

  @override
  String get sectionValuation => 'Баалоо';

  @override
  String get sectionFinancials => 'Каржы көрсөткүчтөрү';

  @override
  String get sectionDividend => 'Дивиденддер';

  @override
  String get sectionProfile => 'Компаниянын профили';

  @override
  String get sectionAnalysts => 'Аналитиктердин рейтингдери';

  @override
  String get sectionNews => 'Жаңылыктар';

  @override
  String get sectionRecognition => 'Таануунун чоо-жайы';

  @override
  String get labelSymbol => 'Тикер';

  @override
  String get labelExchange => 'Биржа';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Валюта';

  @override
  String get labelCountry => 'Өлкө';

  @override
  String get labelIndustry => 'Тармак';

  @override
  String get labelSector => 'Сектор';

  @override
  String get labelWebsite => 'Веб-сайт';

  @override
  String get labelIpoDate => 'IPO күнү';

  @override
  String get labelMarketCap => 'Капиталдаштыруу';

  @override
  String get labelSharesOutstanding => 'Жүгүртүүдөгү акциялар';

  @override
  String get labelEmployees => 'Кызматкерлер';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Башкы кеңсе';

  @override
  String get labelDescription => 'Сүрөттөмө';

  @override
  String get labelLastPrice => 'Акыркы баа';

  @override
  String get labelChange => 'Өзгөрүү';

  @override
  String get labelOpen => 'Ачылыш баасы';

  @override
  String get labelDayHigh => 'Күндүн максимуму';

  @override
  String get labelDayLow => 'Күндүн минимуму';

  @override
  String get labelPreviousClose => 'Мурунку жабылыш';

  @override
  String get labelWeek52High => '52 жумалык максимум';

  @override
  String get labelWeek52Low => '52 жумалык минимум';

  @override
  String get labelAverageVolume10d => 'Орт. көлөм (10 күн)';

  @override
  String updatedAt(String time) {
    return 'Жаңыртылды: $time';
  }

  @override
  String get labelPeTrailing => 'P/E (өткөн)';

  @override
  String get labelPeForward => 'P/E (болжолдуу)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / эркин акча агымы';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Бета';

  @override
  String get labelRevenueTtm => 'Түшүм (TTM)';

  @override
  String get labelNetIncomeTtm => 'Таза пайда (TTM)';

  @override
  String get labelGrossMargin => 'Дүң маржа';

  @override
  String get labelOperatingMargin => 'Операциялык маржа';

  @override
  String get labelNetMargin => 'Таза маржа';

  @override
  String get labelRoe => 'Өздүк капиталдын кирешелүүлүгү';

  @override
  String get labelRoa => 'Активдердин кирешелүүлүгү';

  @override
  String get labelDebtToEquity => 'Карыз / өздүк капитал';

  @override
  String get labelCurrentRatio => 'Учурдагы ликвиддүүлүк';

  @override
  String get labelRevenueGrowth => 'Түшүмдүн өсүшү (YoY)';

  @override
  String get labelEpsGrowth => 'EPS өсүшү (YoY)';

  @override
  String get labelDividendYield => 'Дивиденддик кирешелүүлүк';

  @override
  String get labelDividendPerShare => 'Бир акцияга дивиденд';

  @override
  String get labelPayoutRatio => 'Төлөө коэффициенти';

  @override
  String get labelYieldOnCost => 'Сатып алуу баасына кирешелүүлүк';

  @override
  String get labelDividendGrowth5y => 'Дивиденддин өсүшү (5 ж.)';

  @override
  String get dividendNone => 'Акыркы 12 айда дивиденд төлөнгөн жок.';

  @override
  String get dividendOnYourShares => 'Акцияларыңызга, жылына';

  @override
  String get labelConsensus => 'Консенсус';

  @override
  String get ratingStrongBuy => 'Активдүү сатып алуу';

  @override
  String get ratingBuy => 'Сатып алуу';

  @override
  String get ratingHold => 'Кармоо';

  @override
  String get ratingSell => 'Сатуу';

  @override
  String get ratingStrongSell => 'Активдүү сатуу';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count аналитик',
      one: '1 аналитик',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Мезгил: $period';
  }

  @override
  String get noNews => 'Акыркы жаңылыктар жок.';

  @override
  String get openArticle => 'Макаланы ачуу';

  @override
  String get openLinkFailed => 'Шилтемени ачуу мүмкүн болгон жок.';

  @override
  String get recognitionSummary => 'Кыскача мазмун';

  @override
  String get recognitionEvidence => 'Эмне үчүн мындай ойлойбуз';

  @override
  String get recognitionRawText => 'Сүрөттөн окулган текст';

  @override
  String get errMissingAnthropicKey =>
      'Сүрөт таануу жөндөлгөн эмес (ANTHROPIC_API_KEY жок). Тикерди кол менен киргизиңиз.';

  @override
  String get errRecognitionUnreachable =>
      'Таануу кызматына туташуу мүмкүн болгон жок. Интернет байланышыңызды текшериңиз.';

  @override
  String errRecognitionHttp(String status) {
    return 'Таануу кызматы ката кайтарды (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Таануу кызматы бул сүрөттү иштете алган жок.';

  @override
  String get errRecognitionTruncated =>
      'Таануу кызматынын жообу толук келген жок. Кайра аракет кылыңыз.';

  @override
  String get errRecognitionBadResponse =>
      'Таануу кызматынан күтүлбөгөн жооп келди.';

  @override
  String get errRecognitionEmpty => 'Таануу кызматы бош жооп кайтарды.';

  @override
  String get errMissingFinnhubKey =>
      'Рыноктук маалыматтар жөндөлгөн эмес (FINNHUB_API_KEY жок).';

  @override
  String get errMarketUnreachable =>
      'Рыноктук маалымат кызматына туташуу мүмкүн болгон жок. Интернет байланышыңызды текшериңиз.';

  @override
  String get errMarketRateLimited =>
      'Рыноктук маалымат кызматына өтө көп суроо-талап жөнөтүлдү. Бир мүнөт күтө туруңуз.';

  @override
  String errMarketHttp(String status) {
    return 'Рыноктук маалымат кызматы ката кайтарды (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Рыноктук маалымат кызматынан күтүлбөгөн жооп келди.';

  @override
  String errNoQuote(String symbol) {
    return '$symbol үчүн баа маалыматтары табылган жок.';
  }

  @override
  String errNoProfile(String symbol) {
    return '$symbol үчүн компаниянын профили табылган жок.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Демо режимде $symbols гана колдоого алынат. Реалдуу убакыттагы маалыматтар үчүн FINNHUB_API_KEY кошуңуз.';
  }

  @override
  String errUnknown(String detail) {
    return 'Бир жерден ката кетти: $detail';
  }

  @override
  String get newSearch => 'Жаңы издөө';

  @override
  String get recentSearches => 'Акыркылар';

  @override
  String get noRecentSearches => 'Азырынча акыркы издөөлөр жок.';

  @override
  String get clearRecent => 'Акыркыларды тазалоо';

  @override
  String get greeting => 'Кайсы акцияны карайбыз?';

  @override
  String get searchHint => 'Тикер же компаниянын аталышы';

  @override
  String get attachImage => 'Сүрөт тиркөө';

  @override
  String get searchResultsTitle => 'Издөө натыйжалары';

  @override
  String errNoResults(String query) {
    return '«$query» боюнча акция табылган жок.';
  }

  @override
  String get quickBarHint => 'Тикерди же компаниянын аталышын жазыңыз…';

  @override
  String get openFullWindow => 'Терезени ачуу';

  @override
  String hotkeyHint(String shortcut) {
    return 'WhatStock колдонмосун чакыруу үчүн каалаган жерден $shortcut басыңыз.';
  }

  @override
  String get trayOpen => 'WhatStock колдонмосун ачуу';

  @override
  String get trayQuickSearch => 'Тез издөө';

  @override
  String get trayQuit => 'Чыгуу';

  @override
  String get appearance => 'Тышкы көрүнүш';

  @override
  String get themeSystem => 'Системалык';

  @override
  String get themeDark => 'Караңгы';

  @override
  String get themeLight => 'Жарык';

  @override
  String get back => 'Артка';

  @override
  String get aiSectionTitle => 'AI талдоосу';

  @override
  String get aiIntro =>
      'AI жазган кеңири сереп: акыркы жаңылыктардын кыскача мазмуну, бизнес, күчтүү жактары, тобокелдиктер жана жашыруун факторлор, баалоо, психологиялык, социологиялык, техникалык жана макроэкономикалык көз караштан сценарийлер менен баа божомолу, ошондой эле эмнеге көңүл буруу керектиги.';

  @override
  String get aiGenerate => 'Талдоо түзүү';

  @override
  String get aiRegenerate => 'Кайра түзүү';

  @override
  String get aiGenerating =>
      'Талдоо даярдалууда… бул бир-эки мүнөткө созулушу мүмкүн.';

  @override
  String get aiSources => 'Булактар';

  @override
  String aiGeneratedAt(String time) {
    return 'Түзүлдү: $time';
  }

  @override
  String get aiDisclaimer =>
      'Ачык маалыматтардын жана акыркы жаңылыктардын негизинде AI түзгөн талдоо. Анда каталар болушу же ал эскирип калышы мүмкүн жана ал инвестициялык кеңеш эмес.';

  @override
  String get errAiNotConfigured =>
      'AI талдоосу жөндөлгөн эмес (ANTHROPIC_API_KEY жок).';

  @override
  String get errAiUnreachable =>
      'AI кызматына туташуу мүмкүн болгон жок. Интернет байланышыңызды текшериңиз.';

  @override
  String errAiHttp(String status) {
    return 'AI кызматы ката кайтарды (HTTP $status).';
  }

  @override
  String get errAiRefused => 'AI кызматы бул акцияны талдоодон баш тартты.';

  @override
  String get errAiBadResponse => 'AI кызматынан күтүлбөгөн жооп келди.';

  @override
  String get sectionChart => 'Баа графиги';

  @override
  String get rangeOneWeek => '1 апта';

  @override
  String get rangeOneMonth => '1 ай';

  @override
  String get rangeThreeMonths => '3 ай';

  @override
  String get rangeOneYear => '1 жыл';

  @override
  String get rangeFiveYears => '5 жыл';

  @override
  String get chartUnavailable =>
      'Учурдагы маалымат булагында баа тарыхы жеткиликсиз.';

  @override
  String get sectionStatements => 'Каржылык отчеттуулук (жылдык)';

  @override
  String get labelFiscalYear => 'Каржы жылы';

  @override
  String get labelRevenue => 'Түшүм';

  @override
  String get labelNetIncome => 'Таза пайда';

  @override
  String get labelTotalAssets => 'Жалпы активдер';

  @override
  String get labelTotalLiabilities => 'Жалпы милдеттенмелер';

  @override
  String get labelEquity => 'Өздүк капитал';

  @override
  String get labelOperatingCashFlow => 'Операциялык акча агымы';

  @override
  String get statementsUnavailable =>
      'Бул акция үчүн жарыяланган каржылык отчеттор жеткиликсиз.';

  @override
  String get launchAtLogin => 'Системага киргенде иштетүү';

  @override
  String get hotkeyLabel => 'Глобалдык ыкчам баскыч';

  @override
  String get hotkeyRecordHint =>
      'Бул жерди басып, андан кийин жаңы баскычтар айкалышын басыңыз';

  @override
  String get hotkeyReset => 'Демейкиге кайтаруу';

  @override
  String get pasteImage => 'Алмашуу буферинен сүрөт коюу';

  @override
  String get errClipboardNoImage => 'Алмашуу буферинде сүрөт жок.';

  @override
  String get favorites => 'Тандалмалар';

  @override
  String get addToFavorites => 'Тандалмаларга кошуу';

  @override
  String get removeFromFavorites => 'Тандалмалардан өчүрүү';

  @override
  String get noFavorites =>
      'Азырынча тандалмалар жок. Кошуу үчүн акциянын жылдызчасын басыңыз.';

  @override
  String get displayCurrency => 'Көрсөтүү валютасы';

  @override
  String get displayCurrencyNone => 'Акциянын өз валютасы гана';

  @override
  String labelConverted(String currency) {
    return '≈ $currency эсебинде';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Курс: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Жаңыртуулар';

  @override
  String currentVersion(String version) {
    return 'Версия $version';
  }

  @override
  String get autoUpdate => 'Жаңыртууларды автоматтык түрдө орнотуу';

  @override
  String get checkForUpdates => 'Жаңыртууларды текшерүү';

  @override
  String get updateChecking => 'Жаңыртуулар текшерилүүдө…';

  @override
  String get updateUpToDate => 'Сизде акыркы версия орнотулган.';

  @override
  String updateAvailable(String version) {
    return '$version версиясы жеткиликтүү.';
  }

  @override
  String get updateDownloading => 'Жаңыртуу фондо жүктөлүүдө…';

  @override
  String get updateDownloaded =>
      'Жаңыртуу даяр. Орнотуу үчүн колдонмону кайра иштетиңиз.';

  @override
  String get updateNow => 'Жаңыртуу';

  @override
  String get restartNow => 'Кайра иштетүү';

  @override
  String get updatesViaStore =>
      'Жаңыртуулар колдонмолор дүкөнү аркылуу автоматтык түрдө келет.';

  @override
  String get updateCheckFailed => 'Жаңыртууларды текшерүү мүмкүн болгон жок.';

  @override
  String get subscription => 'Жазылуу';

  @override
  String get planTrial => 'Сыноо';

  @override
  String get planNormal => 'Кадимки';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Активдүү тариф жок';

  @override
  String planAnalysesPerMonth(int count) {
    return 'Айына $count талдоо';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$count талдоо менен $days күндүк акысыз сыноо';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Сыноо мөөнөтүнүн $days күнү калды',
      one: 'Сыноо мөөнөтүнүн 1 күнү калды',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Акысыз сыноо мөөнөтүңүз бүттү. Талдоону улантуу үчүн тариф тандаңыз.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Бул мезгилге $total талдоодон $remaining калды';
  }

  @override
  String extraCredits(int count) {
    return '$count кошумча талдоо';
  }

  @override
  String renewsOn(String date) {
    return 'Узартылат: $date';
  }

  @override
  String get choosePlan => 'Тариф тандоо';

  @override
  String get currentPlan => 'Учурдагы тариф';

  @override
  String get subscribe => 'Жазылуу';

  @override
  String get perMonth => '/ ай';

  @override
  String get extraPacksTitle => 'Көбүрөөк керекпи? Кошумча талдоо сатып алыңыз';

  @override
  String get extraPacksHint =>
      'Кошумча талдоолордун мөөнөтү эч качан бүтпөйт жана алар айлык лимитиңиз бүткөндөн кийин колдонулат.';

  @override
  String get buy => 'Сатып алуу';

  @override
  String get restorePurchases => 'Сатып алууларды калыбына келтирүү';

  @override
  String get manageSubscription => 'Жазылууну башкаруу';

  @override
  String get purchaseSuccess => 'Рахмат! Сатып алууңуз активдүү.';

  @override
  String get purchasePending => 'Сатып алуу күтүүдө…';

  @override
  String get purchaseFailed => 'Сатып алууну аяктоо мүмкүн болгон жок.';

  @override
  String get purchaseCanceled => 'Сатып алуу жокко чыгарылды.';

  @override
  String get billingUnavailable =>
      'Бул платформада сатып алуулар азырынча жеткиликсиз. Телефонуңуздан же Mac компьютериңизден жазылыңыз; тарифиңиз бардык түзмөктөрдө иштейт.';

  @override
  String get errQuotaExceeded =>
      'Бул мезгилге талдооңуз калган жок. Тарифиңизди жогорулатыңыз же кошумча талдоо сатып алыңыз.';

  @override
  String get errTrialExpired =>
      'Акысыз сыноо мөөнөтүңүз бүттү. Улантуу үчүн тариф тандаңыз.';

  @override
  String get errNoPlan => 'AI талдоосу үчүн активдүү тариф керек.';

  @override
  String get viewPlans => 'Тарифтерди көрүү';

  @override
  String get usageTitle => 'Колдонуу';

  @override
  String get demoPurchaseNote =>
      'Демо төлөм: бул платформада сатып алуулар симуляцияланат.';

  @override
  String get mostPopular => 'Эң популярдуу';

  @override
  String get bestValue => 'Эң пайдалуу';

  @override
  String get planFeaturesCommon =>
      'Сүрөт таануу, реалдуу убакыттагы маалыматтар, графиктер, тандалмалар жана бардык 120 тил ар бир тарифке кирет. Лимит AI талдоолоруна тиешелүү.';

  @override
  String get searchLanguages => 'Тилдерди издөө…';

  @override
  String get noLanguageMatch => 'Дал келген тил жок.';

  @override
  String get aiSettings => 'AI талдоосу';

  @override
  String get aiLength => 'Көлөмү';

  @override
  String get aiDepthBrief => 'Кыскача';

  @override
  String get aiDepthStandard => 'Стандарттуу';

  @override
  String get aiDepthDeep => 'Кеңири';

  @override
  String get aiDepthBriefDesc => 'Эң негизгиси, тез.';

  @override
  String get aiDepthStandardDesc => 'Бардык бөлүмдөрү бар толук отчет.';

  @override
  String get aiDepthDeepDesc =>
      'Көбүрөөк веб-издөө, атаандаштар менен салыштыруу жана тереңирээк талдоо.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Болжол менен $min–$max сөз';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count талдоо жумшайт',
      one: '1 талдоо жумшайт',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Окурмандын деңгээли';

  @override
  String get aiReaderBeginner => 'Башталгыч';

  @override
  String get aiReaderExperienced => 'Тажрыйбалуу';

  @override
  String get aiReaderBeginnerDesc =>
      'Жөнөкөй тил; ар бир адистик термин түшүндүрүлөт.';

  @override
  String get aiReaderExperiencedDesc =>
      'Стандарттуу каржылык терминология менен жыш текст.';

  @override
  String get aiCounterArgument => 'Эң күчтүү каршы аргумент';

  @override
  String get aiCounterArgumentDesc =>
      'Кыскача мазмун ар дайым өз корутундусуна каршы эң күчтүү аргумент менен аяктайт.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Тарифиңиз боюнча ар бир талдоого $count веб-издөөгө чейин',
      one: 'Тарифиңиз боюнча ар бир талдоого 1 веб-издөөгө чейин',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Тарифтер боюнча стандарттуу көлөм: Кадимки $normal, Pro $pro, Max $max, Ultra $ultra. Кыскача – 2 азыраак, Кеңири – 2 көбүрөөк.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count веб-издөөгө чейин',
      one: '1 веб-издөөгө чейин',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ар бир талдоого $count веб-издөө',
      one: 'Ар бир талдоого 1 веб-издөө',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Бул көлөм үчүн $needed талдоо керек, бирок $left гана калды. Жөндөөлөрдөн кыскараак көлөмдү тандаңыз же көбүрөөк талдоо алыңыз.';
  }

  @override
  String get outlookMarketMood => 'Рыноктун маанайы';

  @override
  String get moodVeryPessimistic => 'Өтө пессимисттик';

  @override
  String get moodPessimistic => 'Пессимисттик';

  @override
  String get moodNeutral => 'Нейтралдуу';

  @override
  String get moodOptimistic => 'Оптимисттик';

  @override
  String get moodVeryOptimistic => 'Өтө оптимисттик';

  @override
  String get scenarioBull => 'Оптимисттик сценарий';

  @override
  String get scenarioBase => 'Базалык сценарий';

  @override
  String get scenarioBear => 'Пессимисттик сценарий';

  @override
  String outlookCurrentPrice(String price) {
    return 'Учурдагы баа: $price';
  }

  @override
  String get outlookKeyLevels => 'Негизги деңгээлдер';

  @override
  String get keyLevelSupport => 'Колдоо';

  @override
  String get keyLevelResistance => 'Каршылык';

  @override
  String get keyLevelAnchor => 'Таяныч деңгээл';

  @override
  String get upcomingEvents => 'Алдыдагы окуялар';

  @override
  String get outlookChartNote =>
      'Шарттуу диапазондор; ыктымалдыктар – болжолдуу баалоолор, божомол эмес.';

  @override
  String get accountTitle => 'Аккаунт';

  @override
  String get signIn => 'Кирүү';

  @override
  String get signOut => 'Чыгуу';

  @override
  String get notSignedIn => 'Кире элексиз';

  @override
  String get accountBenefit =>
      'Жазылууңуз бардык түзмөктөрүңүздө иштеши үчүн кириңиз.';

  @override
  String get accountSyncedNote =>
      'Жазылууңуз жана калган талдоолоруңуз бардык түзмөктө бирдей.';

  @override
  String get signInTitle => 'WhatStock аккаунтуна кирүү';

  @override
  String get emailLabel => 'Электрондук почта дареги';

  @override
  String get continueWithEmail => 'Электрондук почта менен улантуу';

  @override
  String codeSentTo(String email) {
    return '$email дарегине 6 орундуу код жөнөттүк. Ал 10 мүнөт жарактуу.';
  }

  @override
  String get codeLabel => 'Кирүү коду';

  @override
  String get resendCode => 'Жаңы код жөнөтүү';

  @override
  String get useDifferentEmail => 'Башка электрондук почтаны колдонуу';

  @override
  String get errInvalidCode => 'Код туура эмес же мөөнөтү бүткөн.';

  @override
  String get errInvalidEmail =>
      'Жарактуу электрондук почта дарегин киргизиңиз.';

  @override
  String get errSignInFailed =>
      'Кирүү ишке ашкан жок. Байланышыңызды текшерип, кайра аракет кылыңыз.';

  @override
  String get checkoutWaiting =>
      'Төлөмдү браузериңизде аяктаңыз. Бүткөндөн кийин колдонмо автоматтык түрдө жаңыланат.';

  @override
  String get paymentViaStripe =>
      'Stripe аркылуу браузерде коопсуз төлөм. Каалаган убакта жокко чыгарсаңыз болот.';

  @override
  String get paymentViaStore =>
      'Төлөм App Store же Google Play аккаунтуңуз аркылуу алынат. Каалаган убакта дүкөндүн жөндөөлөрүнөн жокко чыгарсаңыз болот.';

  @override
  String get keySpace => 'Боштук';

  @override
  String get doubleOptionTitle => 'Option баскычын эки жолу басуу';

  @override
  String get doubleOptionSubtitle =>
      'Option баскычын тез эки жолу басуу да WhatStock колдонмосун чакырат.';

  @override
  String get doubleOptionPermission =>
      'Бул башка колдонмолордо да иштеши үчүн «Системалык жөндөөлөр» → «Купуялык жана коопсуздук» → «Киргизүүнү көзөмөлдөө» бөлүмүндө WhatStock колдонмосуна уруксат берип, колдонмону кайра ачыңыз.';

  @override
  String get openSystemSettings => 'Системалык жөндөөлөрдү ачуу';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'WhatStock колдонмосун чакыруу үчүн каалаган жерден $shortcut басыңыз же Option баскычын эки жолу басыңыз.';
  }

  @override
  String get scenarioMostLikely => 'Эң ыктымалдуу';

  @override
  String get longTermToday => 'Бүгүн';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years жыл',
      one: '1 жыл',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return 'жылына $range';
  }

  @override
  String longTermLikely(String price) {
    return 'эң ыктымалдуусу $price';
  }

  @override
  String get confidenceLow => 'Төмөн ишеним';

  @override
  String get confidenceMedium => 'Орточо ишеним';

  @override
  String get confidenceHigh => 'Жогорку ишеним';

  @override
  String get longTermNote =>
      'Узак мөөнөттүү диапазондор көрсөтүлгөн жоромолдорго таянат жана убакыт өткөн сайын кеңейет. Бааларга дивиденддер кирбейт. Болжолдуу баалоолор, божомол эмес.';

  @override
  String get portfolio => 'Портфель';

  @override
  String get portfolioEmpty =>
      'Азырынча бош. Ээлик кылган акцияларыңызды көзөмөлдөө үчүн акцияны ачып, «Портфелге кошуу» баскычын басыңыз.';

  @override
  String get portfolioLocalNote =>
      'Ушул түзмөктө гана сакталат. Жыйынтыктар ECB маалымдама курстары боюнча которулат; баалар кечигиши мүмкүн.';

  @override
  String get addToPortfolio => 'Портфелге кошуу';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol кошуу';
  }

  @override
  String get portfolioQuantity => 'Акциялардын саны';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Бир акциянын баасы ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Сатып алынган күн';

  @override
  String get portfolioAdd => 'Кошуу';

  @override
  String get portfolioInvalidNumber => 'Нөлдөн чоң санды киргизиңиз.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol портфелге кошулду.';
  }

  @override
  String get portfolioTotalValue => 'Жалпы наркы';

  @override
  String get portfolioToday => 'Бүгүн';

  @override
  String get portfolioGainLoss => 'Пайда/зыян';

  @override
  String homeDividendsThisYear(String amount) {
    return 'Бул жылкы дивиденддер: $amount';
  }

  @override
  String get portfolioInvested => 'Салынган';

  @override
  String get portfolioAllocation => 'Бөлүштүрүү';

  @override
  String get portfolioPositions => 'Позициялар';

  @override
  String portfolioAvgCost(String price) {
    return 'орт. баа $price';
  }

  @override
  String get portfolioYourPosition => 'Сиздин позиция';

  @override
  String get portfolioPurchases => 'Сатып алуулар';

  @override
  String get portfolioRemove => 'Өчүрүү';

  @override
  String get portfolioExcluded =>
      'Баасы же алмашуу курсу жок позициялар жыйынтыкка кирбейт.';

  @override
  String get priceAlerts => 'Баа эскертмелери';

  @override
  String get setPriceAlert => 'Баа эскертмесин коюу';

  @override
  String alertDialogTitle(String symbol) {
    return 'Баа эскертмеси · $symbol';
  }

  @override
  String get alertKindAbove => 'Жогору көтөрүлсө';

  @override
  String get alertKindBelow => 'Төмөн түшсө';

  @override
  String get alertKindMove => 'Бир күндө катуу өзгөрсө';

  @override
  String alertTargetPrice(String currency) {
    return 'Баа ($currency)';
  }

  @override
  String get alertMovePercent => 'Күндүк өзгөрүү (%)';

  @override
  String get alertAlreadyMet => 'Баа бул деңгээлден өтүп кеткен.';

  @override
  String get alertSave => 'Эскертме коюу';

  @override
  String alertCreated(String symbol) {
    return '$symbol үчүн эскертме коюлду.';
  }

  @override
  String get alertsEmpty =>
      'Азырынча баа эскертмелери жок. Эскертме коюу үчүн акцияны ачып, коңгуроону басыңыз.';

  @override
  String get alertsNote =>
      'WhatStock иштеп турганда эскертмелер ар 5 мүнөт сайын текшерилет. Компьютерде ал меню тилкесинде же трейде иштей берет; телефондо азырынча эскертмелер колдонмо ачык турганда гана келет.';

  @override
  String alertDescAbove(String price) {
    return '$price деңгээлинен жогору';
  }

  @override
  String alertDescBelow(String price) {
    return '$price деңгээлинен төмөн';
  }

  @override
  String alertDescMove(String percent) {
    return 'Күндүк өзгөрүү ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Иштеди: $date, $price баада';
  }

  @override
  String get alertRearm => 'Кайра күйгүзүү';

  @override
  String get alertDelete => 'Өчүрүү';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol $price деңгээлинен жогору көтөрүлдү';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol $price деңгээлинен төмөн түштү';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol бүгүн $percent өзгөрдү';
  }

  @override
  String alertHitBody(String price) {
    return 'Учурдагы баа: $price';
  }

  @override
  String get alertOpen => 'Ачуу';

  @override
  String get keepInTrayTitle => 'Терезе жабылганда да иштей берсин';

  @override
  String get keepInTraySubtitle =>
      'WhatStock меню тилкесинде же трейде калат, ошондуктан ыкчам баскыч жана баа эскертмелери иштей берет.';

  @override
  String get termsOfUse => 'Колдонуу шарттары';

  @override
  String get privacyPolicy => 'Купуялык саясаты';

  @override
  String get subscriptionLegal =>
      'Жазылуу сиз жокко чыгармайынча ар ай сайын автоматтык түрдө узартылат. Жазылуу менен сиз Колдонуу шарттарын жана Купуялык саясатын кабыл аласыз.';

  @override
  String get deleteAccount => 'Аккаунтту өчүрүү';

  @override
  String get deleteAccountTitle => 'Аккаунтуңуз өчүрүлсүнбү?';

  @override
  String get deleteAccountBody =>
      'Аккаунтуңуз жана биздин серверде сакталган бардык нерсе (электрондук почта, лимит, колдонуу) биротоло өчүрүлөт, ал эми колдонулбаган талдоолор жоголот. Браузерде төлөнгөн жазылуу дароо жокко чыгарылат; App Store же Google Play жазылуусун дүкөндүн жөндөөлөрүнөн жокко чыгаруу керек.';

  @override
  String get deleteLocalData =>
      'Ушул түзмөктөгү маалыматтарды да өчүрүү (портфель, эскертмелер, тандалмалар, тарых, сакталган талдоолор)';

  @override
  String get deleteAccountConfirm => 'Биротоло өчүрүү';

  @override
  String get accountDeleted => 'Аккаунтуңуз өчүрүлдү.';

  @override
  String get errDeleteAccount =>
      'Аккаунтту өчүрүү мүмкүн болгон жок. Байланышыңызды текшерип, кайра аракет кылыңыз.';

  @override
  String get aiTrialBriefNote =>
      'Сыноо талдоолору кыскача жана ылдамыраак AI модели менен түзүлөт. Тариф менен эң күчтүү AI, көбүрөөк веб-издөө жана стандарттуу, кеңири көлөм жеткиликтүү болот.';

  @override
  String get billingMonthly => 'Айлык';

  @override
  String get billingYearly => 'Жылдык';

  @override
  String get yearlyDiscount => '2 ай акысыз';

  @override
  String get perYear => '/ жыл';

  @override
  String pricePerMonthApprox(String price) {
    return 'айына ≈ $price';
  }

  @override
  String get subscriptionLegalYearly =>
      'Жылдык жазылуу сиз жокко чыгармайынча жыл сайын автоматтык түрдө узартылат. Жазылуу менен сиз Колдонуу шарттарын жана Купуялык саясатын кабыл аласыз.';

  @override
  String get myAnalyses => 'Менин талдоолорум';

  @override
  String get navAlerts => 'Эскертмелер';

  @override
  String get inviteTitle => 'Жабык алдын ала көрүү';

  @override
  String get inviteBody =>
      'Азырынча WhatStock чакыруу менен гана жеткиликтүү. Алган чакыруу кодуңузду киргизиңиз.';

  @override
  String get inviteCodeLabel => 'Чакыруу коду';

  @override
  String get inviteContinue => 'Улантуу';

  @override
  String get inviteInvalid => 'Бул чакыруу коду жараксыз.';

  @override
  String get inviteExpired =>
      'Бул чакыруунун мөөнөтү бүткөн. Сизди чакырган адамдан жаңы код сураңыз.';

  @override
  String get inviteDeviceLimit =>
      'Бул чакыруу коду уруксат берилген эң көп түзмөктө колдонулуп жатат.';

  @override
  String get previewConfidential => 'Купуя алдын ала көрүү';

  @override
  String get errPreviewDailyLimit =>
      'Бул алдын ала көрүүнүн бүгүнкү талдоо чеги түгөндү. Эртең кайра аракет кылыңыз.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count саат мурун',
      one: '1 саат мурун',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count күн мурун',
      one: '1 күн мурун',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Бул талдоону жаңыртуу керекпи?';

  @override
  String staleBody(String age) {
    return 'Бул талдоо $age түзүлгөн. Ошондон бери баалар, жаңылыктар жана натыйжалар өзгөргөн болушу мүмкүн.';
  }

  @override
  String get staleKeep => 'Мурункусун көрсөтүү';

  @override
  String get staleRefresh => 'Жаңысын түзүү';

  @override
  String seeAll(int count) {
    return 'Баарын көрүү ($count)';
  }

  @override
  String get searchAnalyses => 'Талдоолоруңуздан издөө';

  @override
  String get deleteAnalysis => 'Өчүрүү';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol талдоосу өчүрүлдү';
  }

  @override
  String get keyLevelAlertHint =>
      'Баа деңгээлге жеткенде эскертме алуу үчүн деңгээлди басыңыз.';

  @override
  String get shareAnalysisTitle => 'Талдоо менен бөлүшүү';

  @override
  String get shareAsImage => 'Сүрөт катары бөлүшүү';

  @override
  String get shareAsText => 'Текст катары бөлүшүү';

  @override
  String get shareCardFooter => 'WhatStock менен түзүлгөн';

  @override
  String get shareCardDisclaimer => 'AI талдоосу · инвестициялык кеңеш эмес';

  @override
  String get referralTitle => 'Досторду чакыруу';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count кошумча талдоо',
      one: '1 кошумча талдоо',
    );
    return 'Кодуңуз менен бөлүшүңүз. Досуңуз дароо $_temp0 алат, ал эми сиз да анын биринчи талдоосунан кийин ошончо аласыз.';
  }

  @override
  String get referralYourCode => 'Сиздин кодуңуз';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Чакырылгандар: $invited · Сыйлык берилгендер: $rewarded';
  }

  @override
  String get referralHaveCode => 'Досуңуздун коду барбы?';

  @override
  String get referralRedeem => 'Колдонуу';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count кошумча талдоо кошулду. Кош келиңиз!',
      one: '1 кошумча талдоо кошулду. Кош келиңиз!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Мындай код жок. Текшерип, кайра аракет кылыңыз.';

  @override
  String get referralErrOwn => 'Өз кодуңузду колдоно албайсыз.';

  @override
  String get referralErrAlready => 'Сиз досуңуздун кодун мурун колдонгонсуз.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count кошумча талдоо',
      one: '1 кошумча талдоо',
    );
    return 'Мен акцияларды WhatStock менен талдайм: акцияны сүрөткө тартасың, AI аны түшүндүрүп берет. Менин $code кодум менен $_temp0 аласың.';
  }

  @override
  String get referralCopied => 'Код көчүрүлдү';

  @override
  String get onboardTitle1 => 'Акцияны сүрөткө тартыңыз';

  @override
  String get onboardBody1 =>
      'Брокердик колдонмонун экраны, гезит же компаниянын логотиби жетиштүү: WhatStock акцияны таанып, анын баасын, графигин жана негизги көрсөткүчтөрүн көрсөтөт.';

  @override
  String get onboardTitle2 => 'Бир нече мүнөттө түшүнүңүз';

  @override
  String get onboardBody2 =>
      'AI талдоосу акцияны эмне кыймылдатаарын, тобокелдиктерди, баалоону жана баа кайда кетиши мүмкүн экени тууралуу үч сценарийди булактары менен жана сиздин тилиңизде түшүндүрөт.';

  @override
  String get onboardTitle3 => 'Дайыма кабардар болуңуз';

  @override
  String get onboardBody3 =>
      'Тандалмалар, портфелиңиз жана баа эскертмелери сизди дайыма кабардар кылат. Талдоолоруңуз түзмөгүңүздө сакталат, кайра ачууга даяр.';

  @override
  String get onboardNext => 'Кийинки';

  @override
  String get onboardStart => 'Баштоо';

  @override
  String get onboardSkip => 'Өткөрүп жиберүү';

  @override
  String changesTitle(String date) {
    return 'Мурунку талдоодон бери ($date)';
  }

  @override
  String get changesPrice => 'Баа';

  @override
  String get changesNoMajor => 'Болжол олуттуу өзгөргөн жок.';

  @override
  String get changesPreviousSummary => 'Мурунку корутунду';

  @override
  String get telemetryTitle => 'WhatStock\'ту жакшыртууга жардам бериңиз';

  @override
  String get telemetryBody =>
      'Колдонуу боюнча анонимдүү статистиканы жана бузулуу тууралуу кабарларды бөлүшүңүз: кайсы функциялар колдонулат жана эмне туура эмес болду. Акцияларыңыз, талдоолоруңуз же жеке маалыматтарыңыз эч качан жөнөтүлбөйт. Муну каалаган убакта Жөндөөлөрдөн өзгөртө аласыз.';

  @override
  String get telemetryAllow => 'Уруксат берүү';

  @override
  String get telemetryDecline => 'Жок, рахмат';

  @override
  String get telemetrySetting =>
      'Анонимдүү статистика жана бузулуу тууралуу кабарлар';

  @override
  String get telemetrySettingHint =>
      'Функциялар канчалык көп колдонулары жана ката тууралуу кабарлар — жеке маалыматтарсыз жана издөөлөрүңүз менен талдоолоруңуздун мазмунусуз.';

  @override
  String get askButton => 'Бул талдоо тууралуу суроо берүү';

  @override
  String askTitle(String symbol) {
    return '$symbol боюнча суроолор';
  }

  @override
  String get askIntro =>
      'Талдоо тууралуу каалаган нерсени сураңыз: кандайдыр бир тобокелдик эмнени билдирет, болжолду эмне өзгөртүшү мүмкүн, сан кантип эсептелген. Жооптор ушул талдоого негизделген жана инвестициялык кеңеш эмес.';

  @override
  String get askHint => 'Суроо жазыңыз…';

  @override
  String get askSend => 'Жөнөтүү';

  @override
  String get askThinking => 'Ойлонуп жатат…';

  @override
  String get askSuggest1 => 'Эң чоң тобокелдик кайсы?';

  @override
  String get askSuggest2 => 'Болжолду эмне өзгөртүшү мүмкүн?';

  @override
  String get askSuggest3 => 'Жөнөкөй тил менен түшүндүрүп бер';

  @override
  String get askMaxReached =>
      'Бул талдоо боюнча акыркы суроо ушул эле. Дагы суроо берүү үчүн жаңы талдоо түзүңүз.';

  @override
  String get errAskLimit =>
      'Бүгүнкү суроолор чегине жеттиңиз. Эртең кайра аракет кылыңыз.';

  @override
  String get eventTomorrow => 'Эртең';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days күндөн кийин',
      one: '1 күндөн кийин',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Чейректик натыйжалар';

  @override
  String get eventBeforeOpen => 'биржа ачылганга чейин';

  @override
  String get eventAfterClose => 'биржа жабылгандан кийин';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS болжолу: $value';
  }

  @override
  String get eventFromAnalysis => 'Сиздин талдооңуздан';

  @override
  String get eventDividend => 'Дивиденд күтүлөт';

  @override
  String get eventDividendEstimate => 'Сиз жазган төлөмдөр боюнча болжолдонду';

  @override
  String get eventsHint =>
      'Тандалмалардагы жана портфелдеги акциялардын алдыдагы 90 күндөгү отчет күндөрү, талдооларыңыз белгилеген датасы бар окуялар жана сиз жазган төлөмдөр боюнча күтүлгөн дивиденддер.';

  @override
  String get eventsEmpty =>
      'Алдыдагы 90 күндө датасы бар окуя жок. Отчет күндөрүн бул жерден көрүү үчүн тандалмаларга же портфелге акция кошуңуз; жазылган дивиденддердин күтүлгөн кийинки төлөмү бул жерде көрсөтүлөт.';

  @override
  String get compareTitle => 'Салыштыруу';

  @override
  String get compareAdd => 'Акция кошуу';

  @override
  String get compareRemove => 'Алып салуу';

  @override
  String get compareTickerHint => 'Тикер, мисалы MSFT';

  @override
  String get compareHint =>
      'Негизги көрсөткүчтөр катар; ар бир саптагы эң жакшы маани белгиленген. Суммалар ар бир акциянын өз валютасында.';

  @override
  String get compareNoAnalysis => 'Азырынча талдоо жок';

  @override
  String get portfolioDividends => 'Жылдык дивиденддер';

  @override
  String portfolioDividendYield(String percent) {
    return 'Кирешелүүлүк $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Күтүлгөн жылдык дивиденддер акыркы 12 айда төлөнгөн дивиденддерге негизделет; келечектеги төлөмдөргө кепилдик жок.';

  @override
  String positionDividend(String amount) {
    return 'Дивиденд: жылына $amount';
  }

  @override
  String get chartAvgCost => 'Сиздин орт.';

  @override
  String get chartAlertLevel => 'Эскертме';

  @override
  String get marketsToday => 'Рыноктор бүгүн';

  @override
  String get notesTitle => 'Менин жазууларым';

  @override
  String get notesHint =>
      'Эмне үчүн сатып алдыңыз, эмнени көзөмөлдөп жатасыз, эмне болсо сатасыз?';

  @override
  String get notesInfo =>
      'Ушул түзмөктө гана сакталат. AI талдоосу жазууларыңызды эске алат.';

  @override
  String notesSaved(String date) {
    return 'Сакталды: $date';
  }

  @override
  String get peersTitle => 'Окшош компаниялар';

  @override
  String get portfolioExport => 'CSV катары экспорттоо';

  @override
  String get portfolioImport => 'CSV\'ден импорттоо';

  @override
  String get portfolioImportHint =>
      'Ар бир сапка бир сатып алууну коюңуз: тикер, саны, баасы, валюта, күнү (ЖЖЖЖ-АА-КК). Мамычалар үтүр, үтүрлүү чекит же табуляция менен бөлүнүшү мүмкүн; баш сап милдеттүү эмес.';

  @override
  String get portfolioImportButton => 'Импорттоо';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сатып алуу кошулду',
      one: '1 сатып алуу кошулду',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сап өткөрүлүп жиберилди',
      one: '1 сап өткөрүлүп жиберилди',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Портфель, тандалмалар, баа эскертмелери жана жазуулар бардык түзмөктөрүңүздө шайкештирилет.';

  @override
  String syncLast(String time) {
    return 'Акыркы шайкештирүү: $time';
  }

  @override
  String get syncNow => 'Азыр шайкештирүү';

  @override
  String get syncFailed =>
      'Шайкештирүү ишке ашкан жок. Кайра автоматтык түрдө аракет кылынат.';

  @override
  String get alertEmailTitle => 'Эскертме иштегенде электрондук кат';

  @override
  String get alertEmailOn =>
      'Эскертмелериңизди бир нече мүнөт сайын текшерип, колдонмо жабык турса да, сизге электрондук кат жөнөтөбүз.';

  @override
  String get alertEmailSignIn =>
      'Колдонмо жабык турса да эскертмелерди электрондук почта аркылуу алуу үчүн Жөндөөлөрдөн электрондук почтаңыз менен кириңиз.';

  @override
  String get portfolioHistory => 'Нарктын динамикасы';

  @override
  String get portfolioReviewTitle => 'Портфелдин AI талдоосу';

  @override
  String get portfolioReviewIntro =>
      'AI бүт портфелиңизди карап чыгат: топтолуу, тармак жана валюта тобокелдиги, акцияларыңыздын жалпы тобокелдиктери жана дивиденддер. 1 талдоо жумшайт.';

  @override
  String get portfolioReviewButton => 'Портфелимди талдоо';

  @override
  String get portfolioReviewAgain => 'Кайра талдоо';

  @override
  String get portfolioReviewWorking => 'Портфелиңиз талданууда…';

  @override
  String get digestTitle => 'Электрондук почта аркылуу апталык сереп';

  @override
  String get digestHint =>
      'Ар дүйшөмбү: тандалмаларыңыз жана портфелиңиз өткөн аптада кандай өзгөргөнү жана алардын алдыдагы отчет күндөрү.';

  @override
  String get benchmarkTitle => 'S&P 500 менен салыштыруу';

  @override
  String get benchmarkTitleIndex => 'Индекс менен салыштыруу';

  @override
  String get benchmarkHintIndex =>
      'Ар бир сатып алуу ошол эле күнү тандалган индексти кайталаган фондго салынгандай. Дивиденддер кошулган эмес; өткөн киреше келечекти алдын ала айтпайт.';

  @override
  String get benchmarkYours => 'Сатып алууларыңыз';

  @override
  String benchmarkAhead(String points) {
    return 'Индекстен $points пайыздык пунктка жакшы';
  }

  @override
  String benchmarkBehind(String points) {
    return 'Индекстен $points пайыздык пунктка артта';
  }

  @override
  String get portfolioSell => 'Сатуу';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbol сатуу';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Бир акциянын сатуу баасы ($currency)';
  }

  @override
  String get portfolioSellDate => 'Сатылган күн';

  @override
  String get portfolioSellAll => 'Баары';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Сизде $quantity бар';
  }

  @override
  String get portfolioSold => 'Сатылды';

  @override
  String get portfolioRealized => 'Ишке ашкан';

  @override
  String get portfolioClosed => 'Жабык позициялар';

  @override
  String get portfolioClosedNote => 'Бардык акциялар сатылды';

  @override
  String get portfolioTransactions => 'Транзакциялар';

  @override
  String get portfolioRealizedByYear => 'Жылдар боюнча ишке ашкан пайда';

  @override
  String get portfolioRealizedHint =>
      'Сатуулар алгач эң эски сатып алууларыңыз менен дал келтирилет (FIFO) жана бүгүнкү алмашуу курсу менен которулат. Салык декларациясы үчүн брокериңиздин көчүрмөсүн колдонуңуз.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Бул талдоодон кийин жаңы чейректик отчет жарыяланды ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Жаңы отчет';

  @override
  String get portfolioImportBrokers =>
      'Revolut, Trading 212 жана Interactive Brokers экспорттору да сатуулар менен кошо таанылат; дивиденддер жана салымдар өткөрүлүп жиберилет.';

  @override
  String get portfolioImportFile => 'Файл тандоо';

  @override
  String offlineBanner(String time) {
    return 'Байланыш жок – акыркы сакталган маалыматтар көрсөтүлүүдө ($time).';
  }

  @override
  String get glossMarketCap =>
      'Бүт компаниянын биржадагы баасы: акциянын баасы × акциялардын саны.';

  @override
  String get glossSharesOutstanding =>
      'Компания канча акция чыгарганы. Саны өссө, ар бир акцияга кичирээк үлүш тиет; акцияларды кайра сатып алуу аны азайтат.';

  @override
  String get glossPeTrailing =>
      'Баа ÷ акыркы 12 айдагы бир акцияга туура келген пайда: учурдагы пайданын канча жылы үчүн төлөп жатасыз. Төмөнү арзаныраак, бирок тез өскөн компаниялардын P/E көбүнчө жогору болот.';

  @override
  String get glossPeForward =>
      'P/E сыяктуу, бирок аналитиктер кийинки 12 айга күткөн пайда менен. Өткөн P/E\'ден төмөн болсо, пайданын өсүшү күтүлөт.';

  @override
  String get glossPb =>
      'Баа ÷ бир акцияга туура келген баланстык нарк (активдер минус карыздар). Болжол менен 1 рынок компанияны кагаз жүзүндөгү мүлкүнчө баалайт дегенди билдирет.';

  @override
  String get glossPs =>
      'Рыноктук нарк ÷ жылдык түшүм. Пайдасы азырынча аз же жок компаниялар үчүн пайдалуу; бир тармактын ичинде салыштырыңыз.';

  @override
  String get glossEvToFcf =>
      'Карызды кошкондогу компаниянын наркы (EV) ÷ инвестициялардан кийин бир жылда тапкан акчасы. Төмөнү баага жараша көбүрөөк акча аласыз дегенди билдирет.';

  @override
  String get glossPeg =>
      'P/E ÷ күтүлгөн жылдык пайданын өсүшү (%). Болжол менен 1 көбүнчө адилет деп эсептелет; ал P/E\'ни өсүш менен салыштырат.';

  @override
  String get glossEps =>
      'Акыркы 12 айдагы бир акцияга туура келген пайда. Жылдар бою өскөн EPS — дени сак компаниянын эң күчтүү белгилеринин бири.';

  @override
  String get glossBeta =>
      'Акция рынок менен канчалык чогуу кыймылдайт: 1 = рыноктой, 1,5 = болжол менен 50% чоңураак термелүүлөр, 1ден төмөн = тынчыраак.';

  @override
  String get glossRevenueTtm =>
      'Акыркы 12 айдагы жалпы сатуулар, ар кандай чыгымдарга чейин.';

  @override
  String get glossNetIncomeTtm =>
      'Акыркы 12 айда бардык чыгымдардан, пайыздардан жана салыктардан кийин калган пайда.';

  @override
  String get glossGrossMargin =>
      'Товарлардын түз өздүк наркынан кийин түшүмдүн калган үлүшү. Жогорку маржа көбүнчө баа коюу күчүн көрсөтөт.';

  @override
  String get glossOperatingMargin =>
      'Бизнести жүргүзүү чыгымдарынан (эмгек акы, ижара, маркетинг) кийин, пайыздар менен салыктарга чейин түшүмдүн калган үлүшү.';

  @override
  String get glossNetMargin =>
      'Түшүмдүн акыркы пайдага айланган үлүшү. 20% ар бир 100 сатуудан 20сы пайда дегенди билдирет.';

  @override
  String get glossRoe =>
      'Өздүк капиталдын кирешелүүлүгү: жылдык пайда ÷ ээлеринин капиталы. Жетекчилик акционерлердин акчасын канчалык жакшы колдонорун көрсөтөт; болжол менен 15%дан жогору күчтүү.';

  @override
  String get glossRoa =>
      'Активдердин кирешелүүлүгү: жылдык пайда ÷ компаниянын бүт мүлкү. Бир тармактын ичинде салыштырыңыз.';

  @override
  String get glossDebtToEquity =>
      'Карыз ÷ ээлеринин капиталы. Жогору болсо, карызга алынган акча көп: пайыздык чендер өскөндө же бизнес жайлаганда тобокелдик көбүрөөк.';

  @override
  String get glossCurrentRatio =>
      'Кыска мөөнөттүү активдер ÷ бир жылдын ичинде төлөнүүчү милдеттенмелер. 1ден жогору болсо, компания жакынкы төлөмдөрүн жаба алат.';

  @override
  String get glossRevenueGrowth =>
      'Түшүм бир жыл мурункуга салыштырмалуу канчага өскөнү.';

  @override
  String get glossEpsGrowth =>
      'Бир акцияга туура келген пайда бир жыл мурункуга салыштырмалуу канчага өскөнү.';

  @override
  String get glossDividendYield =>
      'Жылдык дивиденд ÷ акциянын баасы: төлөгөн суммаңыздын пайызы катары жыл сайын ала турган акчалай кирешеңиз.';

  @override
  String get glossDividendPerShare =>
      'Акыркы бир жылда бир акцияга төлөнгөн дивиденд.';

  @override
  String get glossPayoutRatio =>
      'Пайданын дивиденд катары төлөнгөн үлүшү. 100%дан ашса, компания тапканынан көп төлөйт, бул сейрек узакка созулат.';

  @override
  String get portfolioBeta => 'Портфелдин бетасы';

  @override
  String get glossPortfolioBeta =>
      'Акцияларыңыздын наркына жараша салмакталган бетасы: рынок 1%га кыймылдаганда акцияларыңыз болжол менен канча пайызга кыймылдай турганы. 1ден жогору болсо, алар рыноктон көбүрөөк термелет, 1ден төмөн болсо — азыраак. Нак акча эсепке алынбайт.';

  @override
  String get portfolioTop3 => 'Эң ири 3 позиция';

  @override
  String get glossPortfolioTop3 =>
      'Акцияларыңыздын наркынын канча бөлүгү эң ири үч позицияңызга туура келет. Ал канчалык жогору болсо, бир эле компания тууралуу жаман жаңылык бүт портфелге ошончолук көп зыян келтириши мүмкүн.';

  @override
  String get glossDividendGrowth5y =>
      'Акыркы беш жылда бир акцияга дивиденд жылына орточо канчалык өскөнү. Туруктуу өсүш адатта компания өзүнүн акча агымына ишенерин билдирет; кыскартуу көбүнчө эскертүүчү белги болот.';

  @override
  String get glossYieldOnCost =>
      'Акыркы 12 айда алынган дивиденддер азыр да кармап турган акцияларыңызга төлөгөн суммага бөлүнөт. Дивиденддик кирешелүүлүктөн айырмаланып, ал бүгүнкү баага эмес, өзүңүздүн сатып алуу бааңызга карата ченелет.';

  @override
  String get glossTitle => 'Бул эмнени билдирет?';

  @override
  String get watchNewsTitle => 'Акцияларыңыз боюнча жаңылыктар';

  @override
  String get undo => 'Кайтаруу';

  @override
  String get watchSort => 'Иреттөө';

  @override
  String get watchSortOwn => 'Менин иретим';

  @override
  String get watchSortGainers => 'Эң көп өскөндөр биринчи';

  @override
  String get watchSortLosers => 'Эң көп түшкөндөр биринчи';

  @override
  String get watchSortName => 'Тикер боюнча (A–Z)';

  @override
  String get watchHint =>
      'Иретин өзгөртүү үчүн туткасын сүйрөңүз, өчүрүү үчүн солго сүрүңүз. Сызык акыркы 30 күндү көрсөтөт.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: талдооңуз даяр.';
  }

  @override
  String alertFromCost(String price) {
    return 'Орточо сатып алуу бааңыздан ($price):';
  }

  @override
  String get briefTitle => 'Бүгүн акцияларыңыз менен';

  @override
  String get briefButton => 'Бүгүндү кыскача';

  @override
  String get briefHint =>
      'Портфелиңиз жана тандалгандарыңыз бүгүн кандай өзгөргөнү жана акыркы жаңылыктар алар тууралуу эмне дегени жөнүндө кыскача AI корутундусу. Талдоо сарпталбайт.';

  @override
  String get briefRefresh => 'Жаңыртуу';

  @override
  String get sectionEarnings => 'Чейректик натыйжалар';

  @override
  String earningsNext(String date) {
    return 'Кийинки отчет: $date';
  }

  @override
  String get earningsExpected => 'Күтүлгөн EPS';

  @override
  String get earningsReported => 'Жарыяланган EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'EPS күтүлгөндөн жогору же барабар: акыркы $total чейректин $beats',
      one: 'EPS күтүлгөндөн жогору же барабар: 1 чейректин $beats',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol эртең чейректик натыйжаларын жарыялайт';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol бүгүн чейректик натыйжаларын жарыялайт';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return '$symbol дивиденди бүгүн күтүлөт';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Болжол менен $amount. Келгенде аны портфелиңизге жазып коюңуз.';
  }

  @override
  String get dividendRemindersTitle => 'Дивиденддер тууралуу эскертме';

  @override
  String get dividendRemindersSubtitle =>
      'Жазылган төлөмдөрүңүздүн ыргагы боюнча дивиденд күтүлгөн күнү билдирме, аны жазып коюшуңуз үчүн';

  @override
  String get earningsRemindersTitle => 'Натыйжалар тууралуу эскертме';

  @override
  String get earningsRemindersSubtitle =>
      'Тандалмаларыңыздагы же портфелиңиздеги акциялар чейректик натыйжаларын жарыялаардан бир күн мурун билдирме';

  @override
  String addAllToFavorites(int count) {
    return 'Баарын тандалмаларга кошуу ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Скриншоттон импорттоо';

  @override
  String get holdingsReading => 'Позициялар окулууда…';

  @override
  String get holdingsReviewTitle => 'Табылган позициялар';

  @override
  String get holdingsReviewHint =>
      'Кошуудан мурун сандарды текшериңиз. Баа — бүгүнкү баа эмес, бир акциянын орточо сатып алуу баасы.';

  @override
  String get holdingsNoPrice => 'Сүрөттө орточо сатып алуу баасы жок';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count позиция кошуу',
      one: '1 позиция кошуу',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Бул сүрөттөн акция позициялары табылган жок. Брокериңиздин позициялар же активдер барагынын скриншотун колдонуп көрүңүз.';

  @override
  String get week52Range => '52 жумалык диапазон';

  @override
  String week52BelowHigh(String percent) {
    return '52 жумалык максимумдан $percent төмөн';
  }

  @override
  String get week52AtHigh => '52 жумалык максимумда';

  @override
  String get alertKindTrailing => 'Чокудан түшсө';

  @override
  String get alertTrailingPercent => 'Чокудан төмөндөө (%)';

  @override
  String get alertTrailingHint =>
      'Бааны өйдө карай ээрчийт: баа коюлгандан берки эң жогорку деңгээлинен ушунча түшсө, эскертет.';

  @override
  String alertDescTrailing(String percent) {
    return 'Чокудан $percent төмөндөө';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'азырга чейинки чоку: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol чокудан $percent түштү';
  }

  @override
  String get sectionInsiders => 'Инсайдердик бүтүмдөр';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сатып алуу',
      one: '1 сатып алуу',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сатуу',
      one: '1 сатуу',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Таза: $shares акция';
  }

  @override
  String get insiderBuy => 'Сатып алынды';

  @override
  String get insiderSell => 'Сатылды';

  @override
  String get insiderHint =>
      'Акыркы 90 күндө жетекчилер жана директорлор тарабынан ачык рынокто жасалган сатып алуулар жана сатуулар (SEC Form 4). Опциондорду аткаруу жана акция менен сыйлоо эсептелбейт.';

  @override
  String get insiderNone =>
      'Акыркы 90 күндө ачык рынокто инсайдердик сатып алуу же сатуу болгон жок.';

  @override
  String get analystTrend => 'Пикирлер айдан айга кантип өзгөрдү';

  @override
  String get watchListAll => 'Баары';

  @override
  String get watchListNew => 'Жаңы тизме';

  @override
  String get watchListName => 'Тизменин аталышы';

  @override
  String get watchListRename => 'Тизменин атын өзгөртүү';

  @override
  String get watchListDelete => 'Тизмени өчүрүү';

  @override
  String get watchListAddTo => 'Тизмеге кошуу';

  @override
  String get watchListEmpty =>
      'Бул тизмеде азырынча акциялар жок. Кошуу үчүн акциянын жанындагы тизме баскычын басыңыз.';

  @override
  String get portfolioAskTitle => 'Портфелиңиз боюнча суроолор';

  @override
  String get rangeYtd => 'Быйыл';

  @override
  String get backupTitle => 'Камдык көчүрмө';

  @override
  String get backupSave => 'Камдык көчүрмөнү сактоо';

  @override
  String get backupSaveHint =>
      'Тандалмаларыңыз, тизмелериңиз, портфелиңиз, эскертмелериңиз жана жазууларыңыз бир файлда.';

  @override
  String get backupRestore => 'Камдык көчүрмөдөн калыбына келтирүү';

  @override
  String get backupRestoreHint =>
      'Файлдагыны кошот; азыркы маалыматтарыңыздан эч нерсе өчүрүлбөйт.';

  @override
  String get backupRestored => 'Камдык көчүрмө калыбына келтирилди.';

  @override
  String get backupInvalid => 'Бул файл WhatStock камдык көчүрмөсү эмес.';

  @override
  String get allocationPositions => 'Акциялар';

  @override
  String get allocationSectors => 'Секторлор';

  @override
  String get allocationCurrencies => 'Валюталар';

  @override
  String get allocationAccounts => 'Эсептер';

  @override
  String get compareReturn1y => '1 жылдык кирешелүүлүк';

  @override
  String get compareFromHigh => '52 жумалык максимумдан аралык';

  @override
  String get briefAutoTitle => 'Күн сайын эртең менен күнүмдүк корутунду';

  @override
  String get briefAutoSubtitle =>
      '«Бүгүн акцияларыңыз менен» колдонмо иштеп турганда саат 7:00дөн кийин автоматтык түрдө даярдалат; компьютерлерде бул тууралуу билдирме чыгат. Күнүмдүк суроолор чегиңизден сарпталат, талдоо эмес.';

  @override
  String get targetsButton => 'Максаттуу бөлүштүрүү';

  @override
  String get targetsTitle => 'Максаттуу бөлүштүрүү';

  @override
  String get targetsHint =>
      'Ар бир акция портфелдин канча үлүшүн ээлеши керектигин белгилеңиз. Максат жок болсо, талааны бош калтырыңыз. Андан кийин колдонмо ага жетүү үчүн эмнени сатып алуу же сатуу керектигин көрсөтөт.';

  @override
  String targetsSum(String percent) {
    return 'Бардыгы: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Сатып алуу ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Сатуу ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Максатта';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol күтүлгөн EPSтен ашты';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol күтүлгөн EPSке жеткен жок';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'Жарыяланган EPS $actual, күтүлгөн $estimate';
  }

  @override
  String get newsExplain => 'Бул эмнени билдирет?';

  @override
  String get watchAlertAll => 'Чоң күндүк өзгөрүүлөр жөнүндө эскертүү';

  @override
  String get watchAlertAllHint =>
      'Бул тизмедеги ар бир акцияга баа эскертүүсү: бир күндө ушунча өйдө же ылдый өзгөрсө, кабар берет. Эскертүүсү мурунтан бар акциялар өзүнүкүн сактайт.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count эскертүү коюлду',
      one: '1 эскертүү коюлду',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized =>
      'Ишке ашырылган кирешени экспорттоо (CSV)';

  @override
  String get portfolioAnnualReturn => 'Жылдык кирешелүүлүк';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / жыл';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Акча агымдары менен салмакталган жылдык кирешелүүлүк (XIRR): качан сатып алып, качан сатканыңызды эске алат, ошондуктан кийин кошулган акча аны бурмалабайт. Биринчи сатып алууңузга кеминде бир жыл толгондо көрсөтүлөт; дивиденддер кирбейт.';

  @override
  String get eventsAddToCalendar => 'Календарга кошуу (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Портфель эскертмеси';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Бүт портфелиңиз бир күндө ушунча өзгөргөндө билдирме.';

  @override
  String get portfolioMoveAlertOff => 'Өчүк';

  @override
  String portfolioMoveUp(String percent) {
    return 'Портфелиңиз бүгүн $percent өстү';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Портфелиңиз бүгүн $percent төмөндөдү';
  }

  @override
  String get whatIfTitle => 'Инвестиция салсаңыз эмне болмок?';

  @override
  String get whatIfAmount => 'Сумма';

  @override
  String whatIfResult(String amount, String period) {
    return '$period мурун салынган $amount бүгүн мынча болмок';
  }

  @override
  String get whatIfNote =>
      'Акциянын баасына гана негизделген: дивиденддер, комиссиялар жана салыктар эске алынган эмес. Мурунку кирешелүүлүк келечектегисин алдын ала айтпайт.';

  @override
  String get watchShare => 'Тизмени бөлүшүү';

  @override
  String get watchImport => 'Тикер кошуу';

  @override
  String get watchImportHint =>
      'Тикерлерди үтүр, боштук же жаңы сап менен бөлүп коюңуз – мисалы, бирөө сиз менен бөлүшкөн тизмени.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count акция кошулду',
      one: '1 акция кошулду',
      zero: 'Жаңы акция жок',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Эң ирилери биринчи';

  @override
  String get positionsSortGain => 'Эң жогорку жалпы киреше биринчи';

  @override
  String get positionsSortToday => 'Бүгүнкү эң жакшылары биринчи';

  @override
  String get chartMyBuys => 'Сиздин сатып алууларыңыз';

  @override
  String get chartMySells => 'Сиздин сатууларыңыз';

  @override
  String get shortcutsTitle => 'Ыкчам баскычтар';

  @override
  String usMarketOpen(String time) {
    return 'АКШ рыногу ачык · жабылышына $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'АКШ рыногу жабык · ачылышына $time';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes мүн';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours саат $minutes мүн';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days күн $hours саат';
  }

  @override
  String get dividendGoalSet => 'Айлык дивиденд максатын коюу';

  @override
  String get dividendGoalTitle => 'Айлык дивиденд максаты';

  @override
  String get dividendGoalAmount => 'Айына дивиденд';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Учурдагы кирешелүүлүк менен айына болжол менен $amount · $percent · максат: $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Учурдагы кирешелүүлүк менен айына болжол менен $amount · максат аткарылды: $goal';
  }

  @override
  String get portfolioAccount => 'Эсеп';

  @override
  String get portfolioAccountHint => 'мис., TBSZ 2026 (милдеттүү эмес)';

  @override
  String get portfolioAccountAdd => 'Эсепти көрсөтүү';

  @override
  String get portfolioAccountsAll => 'Бардык эсептер';

  @override
  String get portfolioAccountNote =>
      'Ушул эсептин транзакциялары жана дивиденддери гана. Нак акча, максаттар жана AI талдоосу «Бардык эсептер» бөлүмүндө көрсөтүлөт.';

  @override
  String get portfolioNoAccount => 'Эсепсиз';

  @override
  String portfolioFee(String currency) {
    return 'Комиссия ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Комиссия кошуу';

  @override
  String portfolioFeeRow(String amount) {
    return 'Комиссия: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'Жылдык корутунду';

  @override
  String get portfolioProceeds => 'Сатуудан түшкөн каражат';

  @override
  String get portfolioCostBasis => 'Сатып алуу наркы';

  @override
  String get portfolioFeesPaid => 'Төлөнгөн комиссия';

  @override
  String get portfolioAnnualSummaryNote =>
      'Суммалар баштапкы валютада, которулган эмес. Сатуудан түшкөн каражат сатуу комиссиясы чегерилгенден кийин көрсөтүлөт; сатып алуу наркына сатып алуу комиссиясы кирет (FIFO). Салык декларациясы үчүн салык органыңыз талап кылган курс менен которуңуз.';

  @override
  String get portfolioShare => 'Натыйжалар менен бөлүшүү';

  @override
  String get portfolioShareHeading => 'Менин портфелим';

  @override
  String get portfolioTopHoldings => 'Эң ири позициялар';

  @override
  String get portfolioShareNote => 'Пайыздар гана бөлүшүлөт, суммалар эмес.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count позиция',
      one: '1 позиция',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'Инвестициялык кеңеш эмес';

  @override
  String get contributionButton => 'Жаңы каражат салуу';

  @override
  String contributionAmount(String currency) {
    return 'Салына турган сумма ($currency)';
  }

  @override
  String get contributionHint =>
      'Сатып алуу гана, сатуусуз: акчаны адегенде максатынан эң көп артта калган позициялар алат.';

  @override
  String contributionShares(String shares) {
    return '≈ $shares акция';
  }

  @override
  String contributionMissing(String symbols) {
    return '$symbols үчүн учурдагы баа жок: бөлүштүрүүгө кирген жок.';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'Жылдык кирешелүүлүк сакталса ($rate), максатка болжол менен $year-жылы жетесиз.';
  }

  @override
  String get portfolioMaxDrawdown => 'Эң чоң төмөндөө';

  @override
  String get glossMaxDrawdown =>
      'Акцияларыңыздын наркынын мурунку чокудан кийинки эң төмөнкү чекитке чейинки эң чоң төмөндөшү, сатып алууларыңыздын жана сатууларыңыздын таасирисиз (убакыт боюнча салмакталган). Портфелиңиз буга чейин канчалык терең төмөндөөнү башынан өткөргөнүн көрсөтөт.';

  @override
  String watchSince(String date) {
    return 'Тандалмаларга кошулгандан бери ($date)';
  }

  @override
  String get portfolioSampleTry => 'Үлгү портфель менен сынап көрүү';

  @override
  String get portfolioSampleBanner =>
      'Бул – үлгү портфель. Анын жанына өз сатып алууларыңызды кошуңуз же аны өчүрүңүз.';

  @override
  String get portfolioSampleRemove => 'Үлгүнү өчүрүү';

  @override
  String get portfolioStopsAll => 'Бардык позицияларга трейлинг-стоп';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count трейлинг-стоп коюлду',
      one: '1 трейлинг-стоп коюлду',
      zero: 'Бардык позицияларда трейлинг-стоп мурунтан эле бар',
    );
    return '$_temp0';
  }

  @override
  String get portfolioGoalSet => 'Максат коюу';

  @override
  String get portfolioGoalTitle => 'Портфель максаты';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · максат: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Максат аткарылды: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Максатты өчүрүү';

  @override
  String get alertEdit => 'Эскертмени түзөтүү';

  @override
  String get positionOpenLots => 'Дагы эле колуңузда (адегенде эң эскилери)';

  @override
  String get lotRemoved => 'Транзакция өчүрүлдү';

  @override
  String get alertDeleted => 'Эскертүү өчүрүлдү';

  @override
  String get alertsClearTriggered => 'Иштеген эскертүүлөрдү тазалоо';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count эскертүү тазаланды',
      one: '1 эскертүү тазаланды',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Башкы экран';

  @override
  String get allocationCountries => 'Өлкөлөр';

  @override
  String get newsExplainNoteResearch =>
      'AI түшүндүрмөсү: фактыларды интернеттен издейт, макаланы ачат жана булактын канчалык ишенимдүү экенин баалайт. Инвестициялык кеңеш эмес. Күнүмдүк суроолор чегиңизден сарпталат, талдоо эмес.';

  @override
  String get sourceOfficial => 'Расмий';

  @override
  String get sourcePressRelease => 'Пресс-релиз';

  @override
  String get sourceMajorNews => 'Ири ЖМК';

  @override
  String get sourceOpinion => 'Пикир';

  @override
  String get earningsSummaryButton => 'Акыркы отчетто эмне болду?';

  @override
  String get earningsSummaryNote =>
      'Компаниянын натыйжалар тууралуу билдирүүсүнүн жана интернеттен тапкан басма сөз материалдарынын AI корутундусу. Инвестициялык кеңеш эмес. Күнүмдүк суроолор чегиңизден сарпталат, талдоо эмес.';

  @override
  String get compareLastSurprise => 'Акыркы чейрек EPS vs күтүлгөн';

  @override
  String get compareNextReport => 'Кийинки отчет';

  @override
  String get resolvingDescription =>
      'Кайсы акцияны айтып жатканыңыз аныкталууда…';

  @override
  String get instrumentTitle => 'Бул инструмент жөнүндө';

  @override
  String get instrumentHint =>
      'Бул символ үчүн компаниянын профили жок – бул ETF, фонд же депозитардык тилкат болушу мүмкүн. AIдан бул эмне, анын курамында эмне бар жана канча турарын сураңыз.';

  @override
  String get instrumentAsk => 'Бул эмне?';

  @override
  String get instrumentNote =>
      'Эмитенттин фонд барагы менен интернеттен тапкан каржы сайттарынын негизиндеги AI түшүндүрмөсү. Инвестициялык кеңеш эмес. Күнүмдүк суроолор чегиңизден сарпталат, талдоо эмес.';

  @override
  String suggestAskAi(String query) {
    return 'AI-дан суроо: «$query»';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return '$symbols үчүн учурдагы баа жок.';
  }

  @override
  String get eventsRecentResults => 'Жакында жарыяланган натыйжалар';

  @override
  String get saveToNotes => 'Жазууларыма сактоо';

  @override
  String get savedToNotes => 'Жазууларыңызга сакталды';

  @override
  String get portfolioDividendsReceived => 'Алынган дивиденддер';

  @override
  String get portfolioDividendsThisYear => 'Бул жыл';

  @override
  String get portfolioDividendsAllTime => 'Бардык убакыт';

  @override
  String get portfolioAddDividend => 'Дивиденд кошуу';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Алынган сумма ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Төлөм күнү';

  @override
  String get portfolioDividendsEmpty =>
      'Дивиденддер азырынча жазыла элек. Кол менен кошуңуз же брокериңиздин экспортун импорттоңуз – андагы дивиденд саптары да алынат.';

  @override
  String get portfolioSplit => 'Акцияларды бөлүү';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Акцияларды бөлүү: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Бөлүүгө чейинки датадагы сатып алуулар жана сатуулар оңдолот: акциялардын саны көбөйтүлүп, бир акциянын баасы бөлүнөт, ошондуктан чыгым өзгөрбөйт.';

  @override
  String get portfolioSplitRatio => 'Катыш (жаңы : эски)';

  @override
  String get portfolioSplitRatioError =>
      '10:1 сыяктуу катышты киргизиңиз, же тескери бөлүү үчүн 1:10.';

  @override
  String get portfolioSplitDate => 'Бөлүү датасы';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Акцияларды бөлүү $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Акцияларды бөлүү өчүрүлдү';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count акция бөлүүсү кошулду',
      one: '1 акция бөлүүсү кошулду',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дивиденд кошулду',
      one: '1 дивиденд кошулду',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Дивиденддерди экспорттоо (CSV)';

  @override
  String get portfolioDividendDeleted => 'Дивиденд өчүрүлдү';

  @override
  String get portfolioDividendsHint =>
      'Суммалар эсебиңизге келгендей, төлөм валютасында; жыйынтыктар бүгүнкү курс боюнча которулат. Салык декларациясы үчүн брокериңиздин көчүрмөсүн колдонуңуз.';

  @override
  String get awayTitle => 'Сиз жокто';

  @override
  String awaySince(String when) {
    return '$when баштап';
  }

  @override
  String get awayQuiet => 'Көп нерсе өзгөргөн жок.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count эскертүү иштеди',
      one: '1 эскертүү иштеди',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Жыйынтыктарын жарыялады: $symbols';
  }

  @override
  String get moveWhyButton => 'Бүгүн эмне үчүн өзгөрүп жатат?';

  @override
  String moveWhyTitle(String percent) {
    return 'Бүгүн $percent';
  }

  @override
  String get moveWhyNote =>
      'Интернеттен табылган бүгүнкү жаңылыктарга негизделген ЖИ түшүндүрмөсү; чыныгы себеп белгисиз же башка болушу мүмкүн. Инвестициялык кеңеш эмес. Күнүмдүк суроо лимитиңизди колдонот, анализди эмес.';

  @override
  String get sectionTechnical => 'Техникалык көрүнүш';

  @override
  String get labelSma50 => '50 күндүк орточо';

  @override
  String get labelSma200 => '200 күндүк орточо';

  @override
  String get labelRsi => 'RSI (14 күн)';

  @override
  String get labelVolatility30 => 'Өзгөрүлмөлүүлүк (30 күн)';

  @override
  String techAbove(String percent) {
    return '$percent жогору';
  }

  @override
  String techBelow(String percent) {
    return '$percent төмөн';
  }

  @override
  String get techOverbought => 'ашыкча сатылып алынган';

  @override
  String get techOversold => 'ашыкча сатылган';

  @override
  String get techNeutral => 'нейтралдуу';

  @override
  String get techGoldenCross =>
      '50 күндүк орточо 200 күндүк орточодон жогору – классикалык окуу боюнча өсүү тренди.';

  @override
  String get techDeathCross =>
      '50 күндүк орточо 200 күндүк орточодон төмөн – классикалык окуу боюнча төмөндөө тренди.';

  @override
  String get glossSma50 =>
      'Акыркы 50 соода күнүнүн орточо жабылуу баасы. Андан жогорку баа көбүнчө кыска мөөнөттүү күч, төмөнкү баа алсыздык деп окулат.';

  @override
  String get glossSma200 =>
      'Акыркы 200 соода күнүнүн орточо жабылуу баасы – классикалык узак мөөнөттүү тренд сызыгы. Көп инвесторлор андан жогорку бааны узак мөөнөттүү өсүү тренди деп эсептейт.';

  @override
  String get glossRsi =>
      'Салыштырмалуу күч индекси: акыркы өсүүлөрдү акыркы жоготуулар менен 0–100 шкаласында салыштырат. 70дөн жогору болсо акция көбүнчө ашыкча сатылып алынган (тез өстү), 30дан төмөн болсо ашыкча сатылган деп аталат – бирок күчтүү тренд ал жерде узак кала алат.';

  @override
  String get glossVolatility =>
      'Баа күндөн күнгө канчалык өзгөрөт, жылдык эсепте: 20% дегени кадимки жылда баа болжол менен ±20% чегинде кыймылдайт. Жогорку өзгөрүлмөлүүлүк – эки тарапка да чоң кыймылдар.';

  @override
  String get techNote =>
      'Күнүмдүк жабылуу бааларынан эсептелген. Техникалык сигналдар өткөндү сүрөттөйт, келечекти эмес.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$count позициянын ичинен $above позиция 200 күндүк орточосунан жогору';
  }

  @override
  String get watchSignalsTitle => 'Сигналдар';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · ашыкча сатылган';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · ашыкча сатылып алынган';
  }

  @override
  String get signalCrossedAbove => '200 күндүк орточодон жогору өттү';

  @override
  String get signalCrossedBelow => '200 күндүк орточодон ылдый түштү';

  @override
  String get signalAlertsTitle => 'Техникалык сигнал билдирмелери';

  @override
  String get signalAlertsSubtitle =>
      'Күнүнө бир жолу, сиз көзөмөлдөгөн акция ашыкча сатылган же ашыкча сатылып алынган (RSI) болгондо, же анын баасы 200 күндүк орточону кесип өткөндө.';

  @override
  String get signalAlertsNotification => 'Техникалык сигналдар';

  @override
  String get glossaryPageTitle => 'Глоссарий';

  @override
  String get glossaryPageSubtitle =>
      'Колдонмо көрсөткөн ар бир көрсөткүчтүн жөнөкөй түшүндүрмөсү, P/E-ден RSI-ге чейин';

  @override
  String get glossarySearchHint => 'Глоссарийден издөө';

  @override
  String get portfolioCash => 'Нак акча';

  @override
  String get portfolioCashTitle => 'Нак акча калдыгы';

  @override
  String get portfolioCashHint =>
      'Брокериңиздеги салынбаган акча, валюта боюнча. Жалпы наркта жана бөлүштүрүүдө эсепке алынат; кирешелүүлүктө эсепке алынбайт.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Сумма ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Нак акча калдыгын коюу';

  @override
  String get portfolioDividendsByMonth => 'Ай боюнча';

  @override
  String get dividendsLegendReceived => 'Алынган';

  @override
  String get dividendsLegendExpected => 'Күтүлүүчү';

  @override
  String get portfolioDividendsExpected => 'Кийинки күтүлгөн';

  @override
  String get portfolioDividendsExpectedNote =>
      'Сиз жазган төлөмдөрдүн күндөрү менен суммалары боюнча болжолдонгон; компаниялар аларды өзгөртө же өткөрүп жибере алат.';

  @override
  String portfolioDividendAround(String date) {
    return 'болжол менен $date';
  }
}
