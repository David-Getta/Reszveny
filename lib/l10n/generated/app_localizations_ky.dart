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
  String get eventsHint =>
      'Тандалмалардагы жана портфелдеги акциялардын алдыдагы 90 күндөгү отчет күндөрү жана талдооларыңыз белгилеген датасы бар окуялар.';

  @override
  String get eventsEmpty =>
      'Алдыдагы 90 күндө датасы бар окуя жок. Отчет күндөрүн бул жерден көрүү үчүн тандалмаларга же портфелге акция кошуңуз.';

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
}
