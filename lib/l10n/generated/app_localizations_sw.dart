// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swahili (`sw`).
class AppLocalizationsSw extends AppLocalizations {
  AppLocalizationsSw([String locale = 'sw']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'Piga picha ya hisa na ujifunze kila kitu kuihusu.';

  @override
  String get homeHint =>
      'Hati ya hisa, skrini ya programu ya broker, gazeti au nembo ya kampuni – kitu chochote kinachotambulisha hisa.';

  @override
  String get takePhoto => 'Piga picha';

  @override
  String get chooseFromGallery => 'Chagua kutoka galeri';

  @override
  String get chooseImage => 'Chagua picha';

  @override
  String get enterTickerManually => 'Ingiza ticker mwenyewe';

  @override
  String get tickerInputLabel => 'Alama ya ticker';

  @override
  String get tickerInputHint => 'k.m. AAPL';

  @override
  String get lookUp => 'Tafuta';

  @override
  String demoModeBanner(String symbols) {
    return 'Hali ya onyesho – hakuna ufunguo wa data ya soko uliowekwa. Data ya mfano inapatikana kwa: $symbols.';
  }

  @override
  String get recognizing => 'Inachambua picha…';

  @override
  String get loadingData => 'Inapakia data…';

  @override
  String get noCandidatesTitle => 'Hakuna hisa iliyotambuliwa';

  @override
  String get noCandidatesBody =>
      'Hatukuweza kutambua hisa katika picha hii. Jaribu picha iliyo wazi zaidi, au ingiza ticker mwenyewe.';

  @override
  String get whatWeSaw => 'Tulichokiona';

  @override
  String get chooseCandidateTitle => 'Ulimaanisha hisa gani?';

  @override
  String confidencePercent(int percent) {
    return 'Uhakika $percent%';
  }

  @override
  String get settings => 'Mipangilio';

  @override
  String get language => 'Lugha';

  @override
  String get systemLanguage => 'Chaguo-msingi la mfumo';

  @override
  String get about => 'Kuhusu';

  @override
  String get disclaimer =>
      'Programu hii inatoa taarifa tu na si ushauri wa uwekezaji. Data inaweza kuchelewa au kuwa si sahihi.';

  @override
  String dataSource(String source) {
    return 'Chanzo cha data: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Utambuzi: $source';
  }

  @override
  String get retry => 'Jaribu tena';

  @override
  String get cancel => 'Ghairi';

  @override
  String get ok => 'Sawa';

  @override
  String get close => 'Funga';

  @override
  String get errorGeneric => 'Hitilafu imetokea.';

  @override
  String get errorSectionUnavailable => 'Sehemu hii haikuweza kupakiwa.';

  @override
  String get notAvailable => 'haipo';

  @override
  String get sectionIdentity => 'Utambulisho';

  @override
  String get sectionPrice => 'Bei';

  @override
  String get sectionValuation => 'Uthamini';

  @override
  String get sectionFinancials => 'Taarifa za kifedha';

  @override
  String get sectionDividend => 'Gawio';

  @override
  String get sectionProfile => 'Wasifu wa kampuni';

  @override
  String get sectionAnalysts => 'Tathmini za wachambuzi';

  @override
  String get sectionNews => 'Habari';

  @override
  String get sectionRecognition => 'Maelezo ya utambuzi';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Soko la hisa';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Sarafu';

  @override
  String get labelCountry => 'Nchi';

  @override
  String get labelIndustry => 'Tasnia';

  @override
  String get labelSector => 'Sekta';

  @override
  String get labelWebsite => 'Tovuti';

  @override
  String get labelIpoDate => 'Tarehe ya IPO';

  @override
  String get labelMarketCap => 'Thamani ya soko';

  @override
  String get labelSharesOutstanding => 'Hisa zilizotolewa';

  @override
  String get labelEmployees => 'Wafanyakazi';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Makao makuu';

  @override
  String get labelDescription => 'Maelezo';

  @override
  String get labelLastPrice => 'Bei ya mwisho';

  @override
  String get labelChange => 'Badiliko';

  @override
  String get labelOpen => 'Ufunguzi';

  @override
  String get labelDayHigh => 'Juu ya siku';

  @override
  String get labelDayLow => 'Chini ya siku';

  @override
  String get labelPreviousClose => 'Kufunga kwa awali';

  @override
  String get labelWeek52High => 'Juu ya wiki 52';

  @override
  String get labelWeek52Low => 'Chini ya wiki 52';

  @override
  String get labelAverageVolume10d => 'Wastani wa kiasi (siku 10)';

  @override
  String updatedAt(String time) {
    return 'Imesasishwa $time';
  }

  @override
  String get labelPeTrailing => 'P/E (ya nyuma)';

  @override
  String get labelPeForward => 'P/E (ya mbele)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / mtiririko huru wa fedha';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Mapato (TTM)';

  @override
  String get labelNetIncomeTtm => 'Faida halisi (TTM)';

  @override
  String get labelGrossMargin => 'Ukingo wa faida ghafi';

  @override
  String get labelOperatingMargin => 'Ukingo wa uendeshaji';

  @override
  String get labelNetMargin => 'Ukingo halisi';

  @override
  String get labelRoe => 'Faida kwa mtaji';

  @override
  String get labelRoa => 'Faida kwa mali';

  @override
  String get labelDebtToEquity => 'Deni / mtaji';

  @override
  String get labelCurrentRatio => 'Uwiano wa sasa';

  @override
  String get labelRevenueGrowth => 'Ukuaji wa mapato (YoY)';

  @override
  String get labelEpsGrowth => 'Ukuaji wa EPS (YoY)';

  @override
  String get labelDividendYield => 'Mavuno ya gawio';

  @override
  String get labelDividendPerShare => 'Gawio kwa hisa';

  @override
  String get labelPayoutRatio => 'Uwiano wa malipo';

  @override
  String get labelConsensus => 'Makubaliano';

  @override
  String get ratingStrongBuy => 'Nunua kwa nguvu';

  @override
  String get ratingBuy => 'Nunua';

  @override
  String get ratingHold => 'Shikilia';

  @override
  String get ratingSell => 'Uza';

  @override
  String get ratingStrongSell => 'Uza kwa nguvu';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Wachambuzi $count',
      one: 'Mchambuzi 1',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Kipindi: $period';
  }

  @override
  String get noNews => 'Hakuna habari za hivi karibuni.';

  @override
  String get openArticle => 'Fungua makala';

  @override
  String get openLinkFailed => 'Imeshindwa kufungua kiungo.';

  @override
  String get recognitionSummary => 'Muhtasari';

  @override
  String get recognitionEvidence => 'Kwa nini tunadhani hivyo';

  @override
  String get recognitionRawText => 'Maandishi yaliyosomwa kutoka picha';

  @override
  String get errMissingAnthropicKey =>
      'Utambuzi wa picha haujasanidiwa (hakuna ANTHROPIC_API_KEY). Ingiza ticker mwenyewe.';

  @override
  String get errRecognitionUnreachable =>
      'Imeshindwa kufikia huduma ya utambuzi. Angalia muunganisho wako wa intaneti.';

  @override
  String errRecognitionHttp(String status) {
    return 'Huduma ya utambuzi imerudisha hitilafu (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Huduma ya utambuzi haikuweza kuchakata picha hii.';

  @override
  String get errRecognitionTruncated =>
      'Jibu la utambuzi lilikatizwa. Tafadhali jaribu tena.';

  @override
  String get errRecognitionBadResponse =>
      'Jibu lisilotarajiwa kutoka huduma ya utambuzi.';

  @override
  String get errRecognitionEmpty => 'Huduma ya utambuzi imerudisha jibu tupu.';

  @override
  String get errMissingFinnhubKey =>
      'Data ya soko haijasanidiwa (hakuna FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Imeshindwa kufikia huduma ya data ya soko. Angalia muunganisho wako wa intaneti.';

  @override
  String get errMarketRateLimited =>
      'Maombi mengi mno kwa huduma ya data ya soko. Tafadhali subiri dakika moja.';

  @override
  String errMarketHttp(String status) {
    return 'Huduma ya data ya soko imerudisha hitilafu (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Jibu lisilotarajiwa kutoka huduma ya data ya soko.';

  @override
  String errNoQuote(String symbol) {
    return 'Hakuna data ya bei iliyopatikana kwa $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Hakuna wasifu wa kampuni uliopatikana kwa $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Hali ya onyesho inaauni $symbols tu. Ongeza FINNHUB_API_KEY kwa data ya moja kwa moja.';
  }

  @override
  String errUnknown(String detail) {
    return 'Hitilafu imetokea: $detail';
  }

  @override
  String get newSearch => 'Utafutaji mpya';

  @override
  String get recentSearches => 'Hivi karibuni';

  @override
  String get noRecentSearches => 'Bado hakuna utafutaji wa hivi karibuni.';

  @override
  String get clearRecent => 'Futa za hivi karibuni';

  @override
  String get greeting => 'Tuangalie hisa gani?';

  @override
  String get searchHint => 'Ticker au jina la kampuni';

  @override
  String get attachImage => 'Ambatisha picha';

  @override
  String get searchResultsTitle => 'Matokeo ya utafutaji';

  @override
  String errNoResults(String query) {
    return 'Hakuna hisa zilizopatikana kwa “$query”.';
  }

  @override
  String get quickBarHint => 'Andika ticker au jina la kampuni…';

  @override
  String get openFullWindow => 'Fungua dirisha';

  @override
  String hotkeyHint(String shortcut) {
    return 'Bonyeza $shortcut mahali popote kuita WhatStock.';
  }

  @override
  String get trayOpen => 'Fungua WhatStock';

  @override
  String get trayQuickSearch => 'Utafutaji wa haraka';

  @override
  String get trayQuit => 'Ondoka';

  @override
  String get appearance => 'Mwonekano';

  @override
  String get themeSystem => 'Mfumo';

  @override
  String get themeDark => 'Giza';

  @override
  String get themeLight => 'Mwanga';

  @override
  String get back => 'Rudi';

  @override
  String get aiSectionTitle => 'Uchambuzi wa AI';

  @override
  String get aiIntro =>
      'Muhtasari wa kina ulioandikwa na AI: muhtasari wa habari za hivi karibuni, biashara, uimara, hatari na mambo yaliyofichika, uthamini, mtazamo wa bei ukiwa na matukio yanayowezekana kutoka mitazamo ya kisaikolojia, kijamii, kiufundi na kiuchumi mpana, na mambo ya kufuatilia.';

  @override
  String get aiGenerate => 'Tengeneza uchambuzi';

  @override
  String get aiRegenerate => 'Tengeneza upya';

  @override
  String get aiGenerating =>
      'Inaandaa uchambuzi… hili linaweza kuchukua dakika moja au mbili.';

  @override
  String get aiSources => 'Vyanzo';

  @override
  String aiGeneratedAt(String time) {
    return 'Imetengenezwa $time';
  }

  @override
  String get aiDisclaimer =>
      'Uchambuzi uliotengenezwa na AI kwa kutumia data ya umma na habari za hivi karibuni. Unaweza kuwa na makosa au kuwa umepitwa na wakati, na si ushauri wa uwekezaji.';

  @override
  String get errAiNotConfigured =>
      'Uchambuzi wa AI haujasanidiwa (hakuna ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Imeshindwa kufikia huduma ya AI. Angalia muunganisho wako wa intaneti.';

  @override
  String errAiHttp(String status) {
    return 'Huduma ya AI imerudisha hitilafu (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Huduma ya AI imekataa kuchambua hisa hii.';

  @override
  String get errAiBadResponse => 'Jibu lisilotarajiwa kutoka huduma ya AI.';

  @override
  String get sectionChart => 'Chati ya bei';

  @override
  String get rangeOneWeek => '1W';

  @override
  String get rangeOneMonth => '1M';

  @override
  String get rangeThreeMonths => '3M';

  @override
  String get rangeOneYear => '1Y';

  @override
  String get rangeFiveYears => '5Y';

  @override
  String get chartUnavailable =>
      'Historia ya bei haipatikani kutoka chanzo cha data cha sasa.';

  @override
  String get sectionStatements => 'Taarifa za fedha (za mwaka)';

  @override
  String get labelFiscalYear => 'Mwaka wa fedha';

  @override
  String get labelRevenue => 'Mapato';

  @override
  String get labelNetIncome => 'Faida halisi';

  @override
  String get labelTotalAssets => 'Jumla ya mali';

  @override
  String get labelTotalLiabilities => 'Jumla ya madeni';

  @override
  String get labelEquity => 'Mtaji wa wanahisa';

  @override
  String get labelOperatingCashFlow => 'Mtiririko wa fedha wa uendeshaji';

  @override
  String get statementsUnavailable =>
      'Taarifa za fedha zilizoripotiwa hazipatikani kwa hisa hii.';

  @override
  String get launchAtLogin => 'Anzisha wakati wa kuingia';

  @override
  String get hotkeyLabel => 'Njia ya mkato ya jumla';

  @override
  String get hotkeyRecordHint =>
      'Bofya hapa, kisha bonyeza mchanganyiko mpya wa vitufe';

  @override
  String get hotkeyReset => 'Rejesha chaguo-msingi';

  @override
  String get pasteImage => 'Bandika picha kutoka ubao wa kunakili';

  @override
  String get errClipboardNoImage => 'Hakuna picha kwenye ubao wa kunakili.';

  @override
  String get favorites => 'Vipendwa';

  @override
  String get addToFavorites => 'Ongeza kwenye vipendwa';

  @override
  String get removeFromFavorites => 'Ondoa kwenye vipendwa';

  @override
  String get noFavorites =>
      'Bado hakuna vipendwa. Gusa nyota kwenye hisa ili kuiongeza.';

  @override
  String get displayCurrency => 'Sarafu ya kuonyesha';

  @override
  String get displayCurrencyNone => 'Sarafu ya hisa yenyewe pekee';

  @override
  String labelConverted(String currency) {
    return '≈ kwa $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Kiwango: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Masasisho';

  @override
  String currentVersion(String version) {
    return 'Toleo $version';
  }

  @override
  String get autoUpdate => 'Sakinisha masasisho kiotomatiki';

  @override
  String get checkForUpdates => 'Angalia masasisho';

  @override
  String get updateChecking => 'Inaangalia masasisho…';

  @override
  String get updateUpToDate => 'Unatumia toleo jipya zaidi.';

  @override
  String updateAvailable(String version) {
    return 'Toleo $version linapatikana.';
  }

  @override
  String get updateDownloading => 'Inapakua sasisho chinichini…';

  @override
  String get updateDownloaded =>
      'Sasisho liko tayari. Anzisha upya ili kulisakinisha.';

  @override
  String get updateNow => 'Sasisha';

  @override
  String get restartNow => 'Anzisha upya';

  @override
  String get updatesViaStore =>
      'Masasisho hufika kiotomatiki kupitia duka la programu.';

  @override
  String get updateCheckFailed => 'Imeshindwa kuangalia masasisho.';

  @override
  String get subscription => 'Usajili';

  @override
  String get planTrial => 'Jaribio';

  @override
  String get planNormal => 'Kawaida';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Hakuna mpango unaotumika';

  @override
  String planAnalysesPerMonth(int count) {
    return 'Uchambuzi $count kwa mwezi';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Jaribio la bila malipo la siku $days lenye uchambuzi $count';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Zimesalia siku $days za jaribio',
      one: 'Imesalia siku 1 ya jaribio',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Jaribio lako la bila malipo limekamilika. Chagua mpango ili kuendelea kuchambua.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Umesalia na uchambuzi $remaining kati ya $total katika kipindi hiki';
  }

  @override
  String extraCredits(int count) {
    return 'Uchambuzi $count wa ziada';
  }

  @override
  String renewsOn(String date) {
    return 'Husasishwa $date';
  }

  @override
  String get choosePlan => 'Chagua mpango';

  @override
  String get currentPlan => 'Mpango wa sasa';

  @override
  String get subscribe => 'Jisajili';

  @override
  String get perMonth => '/ mwezi';

  @override
  String get extraPacksTitle => 'Unahitaji zaidi? Nunua uchambuzi wa ziada';

  @override
  String get extraPacksHint =>
      'Uchambuzi wa ziada hauishi muda na hutumika baada ya kiasi chako cha mwezi kumalizika.';

  @override
  String get buy => 'Nunua';

  @override
  String get restorePurchases => 'Rejesha manunuzi';

  @override
  String get manageSubscription => 'Dhibiti usajili';

  @override
  String get purchaseSuccess => 'Asante! Ununuzi wako unatumika.';

  @override
  String get purchasePending => 'Ununuzi unasubiri…';

  @override
  String get purchaseFailed => 'Ununuzi haukuweza kukamilika.';

  @override
  String get purchaseCanceled => 'Ununuzi umeghairiwa.';

  @override
  String get billingUnavailable =>
      'Manunuzi hayapatikani bado kwenye jukwaa hili. Jisajili kwenye simu yako au Mac; mpango wako utafanya kazi kwenye kila kifaa.';

  @override
  String get errQuotaExceeded =>
      'Huna uchambuzi uliosalia kwa kipindi hiki. Boresha mpango wako au nunua uchambuzi wa ziada.';

  @override
  String get errTrialExpired =>
      'Jaribio lako la bila malipo limekamilika. Chagua mpango ili kuendelea.';

  @override
  String get errNoPlan => 'Mpango unaotumika unahitajika kwa uchambuzi wa AI.';

  @override
  String get viewPlans => 'Tazama mipango';

  @override
  String get usageTitle => 'Matumizi';

  @override
  String get demoPurchaseNote =>
      'Malipo ya majaribio: manunuzi kwenye jukwaa hili ni ya kuigiza tu.';

  @override
  String get mostPopular => 'Maarufu zaidi';

  @override
  String get bestValue => 'Thamani bora';

  @override
  String get planFeaturesCommon =>
      'Utambuzi wa picha, data ya moja kwa moja, chati, vipendwa na lugha zote 120 vimejumuishwa katika kila mpango. Kiasi kinahusu uchambuzi wa AI.';

  @override
  String get searchLanguages => 'Tafuta lugha…';

  @override
  String get noLanguageMatch => 'Hakuna lugha inayolingana.';

  @override
  String get aiSettings => 'Uchambuzi wa AI';

  @override
  String get aiLength => 'Urefu';

  @override
  String get aiDepthBrief => 'Mfupi';

  @override
  String get aiDepthStandard => 'Wastani';

  @override
  String get aiDepthDeep => 'Wa kina';

  @override
  String get aiDepthBriefDesc => 'Mambo muhimu, kwa haraka.';

  @override
  String get aiDepthStandardDesc => 'Ripoti kamili yenye kila sehemu.';

  @override
  String get aiDepthDeepDesc =>
      'Utafutaji zaidi wa wavuti, ulinganisho na washindani na undani zaidi.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Takriban maneno $min–$max';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'hutumia uchambuzi $count',
      one: 'hutumia uchambuzi $count',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Kiwango cha msomaji';

  @override
  String get aiReaderBeginner => 'Anayeanza';

  @override
  String get aiReaderExperienced => 'Mzoefu';

  @override
  String get aiReaderBeginnerDesc =>
      'Lugha rahisi; kila istilahi ya kitaalamu inaelezwa.';

  @override
  String get aiReaderExperiencedDesc =>
      'Maandishi mazito zaidi yenye istilahi za kawaida za kifedha.';

  @override
  String get aiCounterArgument => 'Hoja pinzani yenye nguvu zaidi';

  @override
  String get aiCounterArgumentDesc =>
      'Muhtasari daima humalizika kwa hoja yenye nguvu zaidi dhidi ya hitimisho lake lenyewe.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Hadi utafutaji $count wa wavuti kwa kila uchambuzi kwa mpango wako',
      one: 'Hadi utafutaji $count wa wavuti kwa kila uchambuzi kwa mpango wako',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Utafutaji wa wavuti kwa urefu wa wastani kulingana na mpango: Kawaida $normal, Pro $pro, Max $max, Ultra $ultra. Mfupi hutumia 2 pungufu, Wa kina 2 zaidi.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'hadi utafutaji $count wa wavuti',
      one: 'hadi utafutaji $count wa wavuti',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Utafutaji $count wa wavuti kwa kila uchambuzi',
      one: 'Utafutaji $count wa wavuti kwa kila uchambuzi',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Urefu huu unahitaji uchambuzi $needed, lakini umesalia na $left tu. Chagua urefu mfupi zaidi katika Mipangilio au pata uchambuzi zaidi.';
  }

  @override
  String get outlookMarketMood => 'Hali ya soko';

  @override
  String get moodVeryPessimistic => 'Hasi sana';

  @override
  String get moodPessimistic => 'Hasi';

  @override
  String get moodNeutral => 'Ya wastani';

  @override
  String get moodOptimistic => 'Chanya';

  @override
  String get moodVeryOptimistic => 'Chanya sana';

  @override
  String get scenarioBull => 'Hali ya matumaini';

  @override
  String get scenarioBase => 'Hali ya msingi';

  @override
  String get scenarioBear => 'Hali ya kukata tamaa';

  @override
  String outlookCurrentPrice(String price) {
    return 'Bei ya sasa: $price';
  }

  @override
  String get outlookKeyLevels => 'Viwango muhimu';

  @override
  String get keyLevelSupport => 'Kiwango cha usaidizi';

  @override
  String get keyLevelResistance => 'Kiwango cha upinzani';

  @override
  String get keyLevelAnchor => 'Kiwango cha nanga';

  @override
  String get upcomingEvents => 'Matukio yajayo';

  @override
  String get outlookChartNote =>
      'Masafa elekezi; uwezekano ni makadirio ya jumla, si utabiri.';

  @override
  String get accountTitle => 'Akaunti';

  @override
  String get signIn => 'Ingia';

  @override
  String get signOut => 'Toka';

  @override
  String get notSignedIn => 'Hujaingia';

  @override
  String get accountBenefit =>
      'Ingia ili usajili wako ufanye kazi kwenye vifaa vyako vyote.';

  @override
  String get accountSyncedNote =>
      'Usajili wako na uchambuzi uliobaki ni sawa kwenye kila kifaa.';

  @override
  String get signInTitle => 'Ingia kwenye WhatStock';

  @override
  String get emailLabel => 'Anwani ya barua pepe';

  @override
  String get continueWithEmail => 'Endelea kwa barua pepe';

  @override
  String codeSentTo(String email) {
    return 'Tumetuma msimbo wa tarakimu 6 kwa $email. Ni halali kwa dakika 10.';
  }

  @override
  String get codeLabel => 'Msimbo wa kuingia';

  @override
  String get resendCode => 'Tuma msimbo mpya';

  @override
  String get useDifferentEmail => 'Tumia barua pepe nyingine';

  @override
  String get errInvalidCode => 'Msimbo si sahihi au muda wake umekwisha.';

  @override
  String get errInvalidEmail => 'Tafadhali weka anwani sahihi ya barua pepe.';

  @override
  String get errSignInFailed =>
      'Kuingia kumeshindwa. Angalia muunganisho wako kisha ujaribu tena.';

  @override
  String get checkoutWaiting =>
      'Kamilisha malipo kwenye kivinjari chako. Programu itasasishwa kiotomatiki ukimaliza.';

  @override
  String get paymentViaStripe =>
      'Malipo salama kwenye kivinjari kupitia Stripe. Ghairi wakati wowote.';

  @override
  String get paymentViaStore =>
      'Utatozwa kupitia akaunti yako ya App Store au Google Play. Ghairi wakati wowote kwenye mipangilio ya duka.';

  @override
  String get keySpace => 'Nafasi';

  @override
  String get doubleOptionTitle => 'Bonyeza Option mara mbili';

  @override
  String get doubleOptionSubtitle =>
      'Kubonyeza kitufe cha Option mara mbili kwa haraka pia huita WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Ili ifanye kazi pia katika programu nyingine, ruhusu WhatStock katika Mipangilio ya Mfumo → Faragha na Usalama → Ufuatiliaji wa Ingizo, kisha fungua programu tena.';

  @override
  String get openSystemSettings => 'Fungua Mipangilio ya Mfumo';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Bonyeza $shortcut au bonyeza Option mara mbili mahali popote kuita WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Uwezekano mkubwa zaidi';

  @override
  String get longTermToday => 'Leo';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: 'miaka $years',
      one: 'mwaka 1',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range kwa mwaka';
  }

  @override
  String longTermLikely(String price) {
    return 'uwezekano mkubwa $price';
  }

  @override
  String get confidenceLow => 'Uhakika mdogo';

  @override
  String get confidenceMedium => 'Uhakika wa wastani';

  @override
  String get confidenceHigh => 'Uhakika mkubwa';

  @override
  String get longTermNote =>
      'Viwango vya muda mrefu vinategemea dhana zilizotajwa na hupanuka kadiri muda unavyopita. Bei hazijumuishi gawio. Makadirio ya jumla, si utabiri.';

  @override
  String get portfolio => 'Jalada la hisa';

  @override
  String get portfolioEmpty =>
      'Bado hakuna kitu. Fungua hisa na ugusa “Ongeza kwenye jalada” ili kufuatilia unachomiliki.';

  @override
  String get portfolioLocalNote =>
      'Huhifadhiwa kwenye kifaa hiki pekee. Jumla hubadilishwa kwa viwango vya marejeleo vya ECB; bei zinaweza kuchelewa.';

  @override
  String get addToPortfolio => 'Ongeza kwenye jalada';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Ongeza $symbol';
  }

  @override
  String get portfolioQuantity => 'Idadi ya hisa';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Bei kwa kila hisa ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Tarehe ya kununua';

  @override
  String get portfolioAdd => 'Ongeza';

  @override
  String get portfolioInvalidNumber => 'Weka nambari kubwa kuliko sifuri.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol imeongezwa kwenye jalada.';
  }

  @override
  String get portfolioTotalValue => 'Thamani ya jumla';

  @override
  String get portfolioToday => 'Leo';

  @override
  String get portfolioGainLoss => 'Faida/hasara';

  @override
  String get portfolioInvested => 'Kilichowekezwa';

  @override
  String get portfolioAllocation => 'Mgawanyo';

  @override
  String get portfolioPositions => 'Nafasi';

  @override
  String portfolioAvgCost(String price) {
    return 'gharama ya wastani $price';
  }

  @override
  String get portfolioYourPosition => 'Nafasi yako';

  @override
  String get portfolioPurchases => 'Manunuzi';

  @override
  String get portfolioRemove => 'Ondoa';

  @override
  String get portfolioExcluded =>
      'Nafasi zisizo na bei au kiwango cha ubadilishaji hazijumuishwi kwenye jumla.';

  @override
  String get priceAlerts => 'Arifa za bei';

  @override
  String get setPriceAlert => 'Weka arifa ya bei';

  @override
  String alertDialogTitle(String symbol) {
    return 'Arifa ya bei · $symbol';
  }

  @override
  String get alertKindAbove => 'Ikipanda juu ya';

  @override
  String get alertKindBelow => 'Ikishuka chini ya';

  @override
  String get alertKindMove => 'Ikisogea sana kwa siku moja';

  @override
  String alertTargetPrice(String currency) {
    return 'Bei ($currency)';
  }

  @override
  String get alertMovePercent => 'Mabadiliko ya siku (%)';

  @override
  String get alertAlreadyMet => 'Bei tayari imepita kiwango hiki.';

  @override
  String get alertSave => 'Weka arifa';

  @override
  String alertCreated(String symbol) {
    return 'Arifa ya $symbol imewekwa.';
  }

  @override
  String get alertsEmpty => 'Bado hakuna arifa. Fungua hisa na ugusa kengele.';

  @override
  String get alertsNote =>
      'Arifa hukaguliwa kila dakika 5 wakati WhatStock inaendeshwa. Kwenye kompyuta programu huendelea kwenye upau wa menyu au trei ya mfumo; kwenye simu, kwa sasa arifa huja tu programu ikiwa wazi.';

  @override
  String alertDescAbove(String price) {
    return 'Juu ya $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Chini ya $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Mabadiliko ya siku ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Ilifyatuka $date kwa $price';
  }

  @override
  String get alertRearm => 'Washa tena';

  @override
  String get alertDelete => 'Futa';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol imepanda juu ya $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol imeshuka chini ya $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol imesogea $percent leo';
  }

  @override
  String alertHitBody(String price) {
    return 'Bei ya sasa: $price';
  }

  @override
  String get alertOpen => 'Fungua';

  @override
  String get keepInTrayTitle => 'Endelea kufanya kazi dirisha likifungwa';

  @override
  String get keepInTraySubtitle =>
      'WhatStock hubaki kwenye upau wa menyu au trei ya mfumo, hivyo njia ya mkato na arifa za bei huendelea kufanya kazi.';

  @override
  String get termsOfUse => 'Masharti ya Matumizi';

  @override
  String get privacyPolicy => 'Sera ya Faragha';

  @override
  String get subscriptionLegal =>
      'Usajili hujisasisha kiotomatiki kila mwezi hadi utakapoughairi. Kwa kujisajili unakubali Masharti ya Matumizi na Sera ya Faragha.';

  @override
  String get deleteAccount => 'Futa akaunti';

  @override
  String get deleteAccountTitle => 'Ungependa kufuta akaunti yako?';

  @override
  String get deleteAccountBody =>
      'Akaunti yako na kila kitu kilichohifadhiwa kwenye seva yetu (barua pepe, kiwango, matumizi) vitafutwa kabisa, na uchambuzi ambao haujatumika utapotea. Usajili uliolipwa kwenye kivinjari unaghairiwa mara moja; usajili wa App Store au Google Play lazima ughairiwe kwenye mipangilio ya duka.';

  @override
  String get deleteLocalData =>
      'Futa pia data kwenye kifaa hiki (jalada, arifa, vipendwa, historia, uchambuzi uliohifadhiwa)';

  @override
  String get deleteAccountConfirm => 'Futa kabisa';

  @override
  String get accountDeleted => 'Akaunti yako imefutwa.';

  @override
  String get errDeleteAccount =>
      'Akaunti haikuweza kufutwa. Angalia muunganisho na ujaribu tena.';

  @override
  String get aiTrialBriefNote =>
      'Uchambuzi wa jaribio ni mfupi na hufanywa kwa modeli ya AI yenye kasi zaidi. Ukiwa na mpango, unapata AI yetu yenye uwezo mkubwa zaidi, utafutaji zaidi wa wavuti, na urefu wa Wastani na Wa kina.';

  @override
  String get billingMonthly => 'Kila mwezi';

  @override
  String get billingYearly => 'Kila mwaka';

  @override
  String get yearlyDiscount => 'Miezi 2 bure';

  @override
  String get perYear => '/ mwaka';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price kwa mwezi';
  }

  @override
  String get subscriptionLegalYearly =>
      'Usajili wa mwaka hujisasisha kiotomatiki kila mwaka hadi utakapoughairi. Kwa kujisajili unakubali Masharti ya Matumizi na Sera ya Faragha.';

  @override
  String get myAnalyses => 'Uchambuzi wangu';

  @override
  String get navAlerts => 'Arifa';

  @override
  String get inviteTitle => 'Onyesho la awali lililofungwa';

  @override
  String get inviteBody =>
      'WhatStock inapatikana kwa mwaliko pekee kwa sasa. Weka msimbo wa mwaliko uliopokea.';

  @override
  String get inviteCodeLabel => 'Msimbo wa mwaliko';

  @override
  String get inviteContinue => 'Endelea';

  @override
  String get inviteInvalid => 'Msimbo huu wa mwaliko si sahihi.';

  @override
  String get inviteExpired =>
      'Mwaliko huu umeisha muda wake. Muombe aliyekualika akupe msimbo mpya.';

  @override
  String get inviteDeviceLimit =>
      'Msimbo huu wa mwaliko tayari unatumika kwenye idadi ya juu zaidi ya vifaa.';

  @override
  String get previewConfidential => 'Onyesho la awali la siri';

  @override
  String get errPreviewDailyLimit =>
      'Kikomo cha uchambuzi cha leo cha onyesho hili la awali kimefikiwa. Jaribu tena kesho.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'saa $count zilizopita',
      one: 'saa 1 iliyopita',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'siku $count zilizopita',
      one: 'siku 1 iliyopita',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Ungependa kusasisha uchambuzi huu?';

  @override
  String staleBody(String age) {
    return 'Ulifanywa $age. Bei, habari na matokeo huenda yamebadilika tangu wakati huo.';
  }

  @override
  String get staleKeep => 'Onyesha ule wa awali';

  @override
  String get staleRefresh => 'Tengeneza mpya';

  @override
  String seeAll(int count) {
    return 'Ona zote ($count)';
  }

  @override
  String get searchAnalyses => 'Tafuta katika uchambuzi wako';

  @override
  String get deleteAnalysis => 'Futa';

  @override
  String analysisDeleted(String symbol) {
    return 'Uchambuzi wa $symbol umefutwa';
  }

  @override
  String get keyLevelAlertHint =>
      'Gusa kiwango ili upate arifa bei inapokifikia.';

  @override
  String get shareAnalysisTitle => 'Shiriki uchambuzi';

  @override
  String get shareAsImage => 'Shiriki kama picha';

  @override
  String get shareAsText => 'Shiriki kama maandishi';

  @override
  String get shareCardFooter => 'Imetengenezwa kwa WhatStock';

  @override
  String get shareCardDisclaimer => 'Uchambuzi wa AI · si ushauri wa uwekezaji';

  @override
  String get referralTitle => 'Alika marafiki';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'uchambuzi $count wa ziada',
      one: 'uchambuzi 1 wa ziada',
    );
    return 'Shiriki msimbo wako. Rafiki yako anapata $_temp0 papo hapo, nawe unapata kiasi hicho hicho baada ya uchambuzi wake wa kwanza.';
  }

  @override
  String get referralYourCode => 'Msimbo wako';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Walioalikwa: $invited · Waliozawadiwa: $rewarded';
  }

  @override
  String get referralHaveCode => 'Una msimbo kutoka kwa rafiki?';

  @override
  String get referralRedeem => 'Tumia';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Uchambuzi $count wa ziada umeongezwa. Karibu!',
      one: 'Uchambuzi 1 wa ziada umeongezwa. Karibu!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Msimbo huu haupo. Uangalie kisha ujaribu tena.';

  @override
  String get referralErrOwn => 'Huwezi kutumia msimbo wako mwenyewe.';

  @override
  String get referralErrAlready => 'Tayari umetumia msimbo wa rafiki.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'uchambuzi $count wa ziada',
      one: 'uchambuzi 1 wa ziada',
    );
    return 'Ninachambua hisa kwa WhatStock: piga picha ya hisa na AI inaieleza. Kwa msimbo wangu $code unapata $_temp0.';
  }

  @override
  String get referralCopied => 'Msimbo umenakiliwa';

  @override
  String get onboardTitle1 => 'Piga picha ya hisa';

  @override
  String get onboardBody1 =>
      'Skrini ya programu ya udalali, gazeti au nembo ya kampuni inatosha: WhatStock inatambua hisa na kukuonyesha bei yake, chati na takwimu muhimu.';

  @override
  String get onboardTitle2 => 'Ielewe kwa dakika chache';

  @override
  String get onboardBody2 =>
      'Uchambuzi wa AI unaeleza kinachosukuma hisa, hatari, thamani yake na hali tatu za mahali bei inaweza kuelekea – pamoja na vyanzo na kwa lugha yako.';

  @override
  String get onboardTitle3 => 'Usipitwe na chochote';

  @override
  String get onboardBody3 =>
      'Vipendwa, jalada lako la hisa na arifa za bei hukujulisha kila kinachotokea. Uchambuzi wako hubaki kwenye kifaa chako, tayari kufunguliwa tena.';

  @override
  String get onboardNext => 'Ifuatayo';

  @override
  String get onboardStart => 'Anza';

  @override
  String get onboardSkip => 'Ruka';

  @override
  String changesTitle(String date) {
    return 'Tangu uchambuzi uliopita ($date)';
  }

  @override
  String get changesPrice => 'Bei';

  @override
  String get changesNoMajor => 'Mtazamo haujabadilika kwa kiasi kikubwa.';

  @override
  String get changesPreviousSummary => 'Muhtasari uliopita';

  @override
  String get telemetryTitle => 'Saidia kuboresha WhatStock';

  @override
  String get telemetryBody =>
      'Shiriki takwimu za matumizi zisizo na majina na ripoti za kuacha kufanya kazi: vipengele vipi vinatumika na nini kilienda vibaya. Kamwe si hisa zako, uchambuzi wako wala data yako binafsi. Unaweza kubadilisha hili wakati wowote katika Mipangilio.';

  @override
  String get telemetryAllow => 'Ruhusu';

  @override
  String get telemetryDecline => 'Hapana, asante';

  @override
  String get telemetrySetting =>
      'Takwimu zisizo na majina na ripoti za kuacha kufanya kazi';

  @override
  String get telemetrySettingHint =>
      'Mara ngapi vipengele vinatumika na ripoti za hitilafu, bila data binafsi wala maudhui ya utafutaji na uchambuzi wako.';

  @override
  String get askButton => 'Uliza kuhusu uchambuzi huu';

  @override
  String askTitle(String symbol) {
    return 'Maswali kuhusu $symbol';
  }

  @override
  String get askIntro =>
      'Uliza chochote kuhusu uchambuzi: hatari fulani inamaanisha nini, nini kingebadilisha mtazamo, jinsi namba ilivyopatikana. Majibu yanatokana na uchambuzi huu na si ushauri wa uwekezaji.';

  @override
  String get askHint => 'Uliza swali…';

  @override
  String get askSend => 'Tuma';

  @override
  String get askThinking => 'Inafikiri…';

  @override
  String get askSuggest1 => 'Hatari kubwa zaidi ni ipi?';

  @override
  String get askSuggest2 => 'Nini kingebadilisha mtazamo?';

  @override
  String get askSuggest3 => 'Nieleze kwa maneno rahisi';

  @override
  String get askMaxReached =>
      'Hilo lilikuwa swali la mwisho kwa uchambuzi huu. Tengeneza uchambuzi mpya ili uulize zaidi.';

  @override
  String get errAskLimit =>
      'Umefikia kikomo cha maswali cha leo. Tafadhali jaribu tena kesho.';

  @override
  String get eventTomorrow => 'Kesho';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'baada ya siku $days',
      one: 'baada ya siku 1',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Matokeo ya robo mwaka';

  @override
  String get eventBeforeOpen => 'kabla ya soko kufunguliwa';

  @override
  String get eventAfterClose => 'baada ya soko kufungwa';

  @override
  String eventEpsEstimate(String value) {
    return 'Makadirio ya EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Kutoka kwa uchambuzi wako';

  @override
  String get eventsHint =>
      'Tarehe za matokeo ya hisa unazopenda na za jalada lako la hisa kwa siku 90 zijazo, pamoja na matukio yenye tarehe yaliyobainishwa na uchambuzi wako.';

  @override
  String get eventsEmpty =>
      'Hakuna matukio yenye tarehe katika siku 90 zijazo. Ongeza vipendwa au hisa kwenye jalada ili kuona tarehe zao za matokeo hapa.';

  @override
  String get compareTitle => 'Linganisha';

  @override
  String get compareAdd => 'Ongeza hisa';

  @override
  String get compareRemove => 'Ondoa';

  @override
  String get compareTickerHint => 'Ticker, k.m. MSFT';

  @override
  String get compareHint =>
      'Takwimu kuu kando kwa kando; thamani bora katika kila safu imeangaziwa. Kiasi kiko katika sarafu ya kila hisa.';

  @override
  String get compareNoAnalysis => 'Bado hakuna uchambuzi';

  @override
  String get portfolioDividends => 'Gawio la mwaka';

  @override
  String portfolioDividendYield(String percent) {
    return 'Mavuno $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Gawio la mwaka linalotarajiwa linategemea gawio lililolipwa katika miezi 12 iliyopita; malipo ya baadaye hayana uhakika.';

  @override
  String positionDividend(String amount) {
    return 'Gawio: $amount kwa mwaka';
  }

  @override
  String get chartAvgCost => 'Wastani wako';

  @override
  String get chartAlertLevel => 'Arifa';

  @override
  String get marketsToday => 'Masoko leo';

  @override
  String get notesTitle => 'Madokezo yangu';

  @override
  String get notesHint =>
      'Kwa nini uliinunua, unafuatilia nini, nini kingekufanya uiuze?';

  @override
  String get notesInfo =>
      'Huhifadhiwa kwenye kifaa hiki pekee. Uchambuzi wa AI huzingatia madokezo yako.';

  @override
  String notesSaved(String date) {
    return 'Imehifadhiwa $date';
  }

  @override
  String get peersTitle => 'Kampuni zinazofanana';

  @override
  String get portfolioExport => 'Hamisha kama CSV';

  @override
  String get portfolioImport => 'Leta kutoka CSV';

  @override
  String get portfolioImportHint =>
      'Bandika ununuzi mmoja kwa kila mstari: ticker, idadi, bei, sarafu, tarehe (YYYY-MM-DD). Safu wima zinaweza kutenganishwa kwa koma, nukta-koma au tabo; mstari wa vichwa ni wa hiari.';

  @override
  String get portfolioImportButton => 'Leta';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Manunuzi $count yameongezwa',
      one: 'Ununuzi 1 umeongezwa',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mistari $count imerukwa',
      one: 'Mstari 1 umerukwa',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Jalada la hisa, vipendwa, arifa za bei na madokezo husawazishwa kwenye vifaa vyako vyote.';

  @override
  String syncLast(String time) {
    return 'Ilisawazishwa mwisho $time';
  }

  @override
  String get syncNow => 'Sawazisha sasa';

  @override
  String get syncFailed =>
      'Imeshindwa kusawazisha. Itajaribu tena kiotomatiki.';

  @override
  String get alertEmailTitle => 'Barua pepe arifa ikitimia';

  @override
  String get alertEmailOn =>
      'Tunakagua arifa zako kila baada ya dakika chache na kukutumia barua pepe, hata programu ikiwa imefungwa.';

  @override
  String get alertEmailSignIn =>
      'Ingia kwa barua pepe yako katika Mipangilio ili upate arifa kwa barua pepe, hata programu ikiwa imefungwa.';

  @override
  String get portfolioHistory => 'Thamani kwa muda';

  @override
  String get portfolioReviewTitle => 'Uchambuzi wa jalada la hisa kwa AI';

  @override
  String get portfolioReviewIntro =>
      'AI hukagua jalada lako lote la hisa: mrundikano, utegemezi kwa sekta na sarafu, hatari zinazoshirikiwa na hisa zako, na gawio. Hutumia uchambuzi 1.';

  @override
  String get portfolioReviewButton => 'Chambua jalada langu la hisa';

  @override
  String get portfolioReviewAgain => 'Chambua tena';

  @override
  String get portfolioReviewWorking => 'Inachambua jalada lako la hisa…';

  @override
  String get digestTitle => 'Muhtasari wa kila wiki kwa barua pepe';

  @override
  String get digestHint =>
      'Kila Jumatatu: jinsi vipendwa vyako na jalada lako la hisa vilivyoenda wiki iliyopita, na tarehe zijazo za matokeo yao.';

  @override
  String get benchmarkTitle => 'Ikilinganishwa na S&P 500';

  @override
  String get benchmarkYours => 'Ununuzi wako';

  @override
  String get benchmarkIndex => 'Kiasi sawa katika S&P 500';

  @override
  String benchmarkAhead(String points) {
    return 'Bora kuliko fahirisi kwa pointi $points za asilimia';
  }

  @override
  String benchmarkBehind(String points) {
    return 'Nyuma ya fahirisi kwa pointi $points za asilimia';
  }

  @override
  String get benchmarkHint =>
      'Kana kwamba kila ununuzi uliwekezwa katika mfuko wa fahirisi wa S&P 500 siku hiyo hiyo. Gawio halijajumuishwa; mapato ya zamani hayatabiri ya baadaye.';

  @override
  String get portfolioSell => 'Uza';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Uza $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Bei ya kuuza kwa kila hisa ($currency)';
  }

  @override
  String get portfolioSellDate => 'Tarehe ya kuuza';

  @override
  String get portfolioSellAll => 'Zote';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Una $quantity';
  }

  @override
  String get portfolioSold => 'Umeuza';

  @override
  String get portfolioRealized => 'Halisi';

  @override
  String get portfolioClosed => 'Nafasi zilizofungwa';

  @override
  String get portfolioClosedNote => 'Hisa zote zimeuzwa';

  @override
  String get portfolioTransactions => 'Miamala';

  @override
  String get portfolioRealizedByYear => 'Faida halisi kwa mwaka';

  @override
  String get portfolioRealizedHint =>
      'Mauzo hulinganishwa kwanza na ununuzi wako wa zamani zaidi (FIFO), na kubadilishwa kwa kiwango cha ubadilishaji cha leo. Kwa ripoti yako ya kodi, tumia taarifa ya dalali wako.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Tangu uchambuzi huu, matokeo mapya ya robo mwaka yamechapishwa ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Matokeo mapya';

  @override
  String get portfolioImportBrokers =>
      'Faili zilizotolewa kutoka Revolut, Trading 212 na Interactive Brokers pia zinatambuliwa, pamoja na mauzo; gawio na amana zinarukwa.';

  @override
  String get portfolioImportFile => 'Chagua faili';

  @override
  String offlineBanner(String time) {
    return 'Hakuna muunganisho – inaonyesha data iliyohifadhiwa mwisho ($time).';
  }

  @override
  String get glossMarketCap =>
      'Thamani ya kampuni nzima kwenye soko la hisa: bei ya hisa × idadi ya hisa.';

  @override
  String get glossSharesOutstanding =>
      'Idadi ya hisa ambazo kampuni imetoa. Ikiongezeka, kila hisa inamiliki sehemu ndogo zaidi; kampuni ikinunua tena hisa zake, idadi hupungua.';

  @override
  String get glossPeTrailing =>
      'Bei ÷ faida kwa kila hisa ya miezi 12 iliyopita: unalipia miaka mingapi ya faida ya sasa. Chini zaidi ni nafuu zaidi, lakini kampuni zinazokua haraka kwa kawaida huwa na P/E ya juu.';

  @override
  String get glossPeForward =>
      'Kama P/E, lakini kwa faida ambayo wachambuzi wanatarajia kwa miezi 12 ijayo. Ikiwa chini ya P/E ya nyuma, faida inatarajiwa kukua.';

  @override
  String get glossPb =>
      'Bei ÷ thamani ya kitabu (mali ukitoa madeni) kwa kila hisa. Karibu 1 inamaanisha soko linathamini kampuni sawa na inachomiliki kwenye karatasi.';

  @override
  String get glossPs =>
      'Thamani ya soko ÷ mapato ya mwaka. Inafaa kwa kampuni zenye faida ndogo au zisizo na faida bado; linganisha ndani ya sekta moja.';

  @override
  String get glossEvToFcf =>
      'Thamani ya kampuni pamoja na deni (EV) ÷ pesa inayozalisha kwa mwaka baada ya uwekezaji. Chini zaidi inamaanisha unapata pesa zaidi kwa bei unayolipa.';

  @override
  String get glossPeg =>
      'P/E ÷ ukuaji wa faida unaotarajiwa kwa mwaka (%). Karibu 1 mara nyingi huonekana kuwa wa haki; huiweka P/E katika mtazamo wa ukuaji.';

  @override
  String get glossEps =>
      'Faida kwa kila hisa katika miezi 12 iliyopita. EPS inayopanda mwaka hadi mwaka ni mojawapo ya ishara thabiti zaidi za kampuni yenye afya.';

  @override
  String get glossBeta =>
      'Kiasi ambacho hisa huelekea kusonga pamoja na soko: 1 = kama soko, 1.5 = mabadiliko makubwa kwa takriban 50%, chini ya 1 = tulivu zaidi.';

  @override
  String get glossRevenueTtm =>
      'Jumla ya mauzo ya miezi 12 iliyopita, kabla ya gharama zozote.';

  @override
  String get glossNetIncomeTtm =>
      'Faida inayobaki baada ya gharama zote, riba na kodi katika miezi 12 iliyopita.';

  @override
  String get glossGrossMargin =>
      'Sehemu ya mapato inayobaki baada ya gharama za moja kwa moja za bidhaa. Ukingo wa juu mara nyingi huonyesha uwezo wa kupanga bei.';

  @override
  String get glossOperatingMargin =>
      'Sehemu ya mapato inayobaki baada ya gharama za kuendesha biashara (mishahara, kodi ya pango, masoko), kabla ya riba na kodi.';

  @override
  String get glossNetMargin =>
      'Sehemu ya mapato inayobaki kama faida ya mwisho. 20% inamaanisha kati ya kila 100 za mauzo, 20 ni faida.';

  @override
  String get glossRoe =>
      'Faida kwa mtaji: faida ya mwaka ÷ mtaji wa wamiliki. Huonyesha jinsi uongozi unavyotumia vizuri pesa za wanahisa; zaidi ya takriban 15% ni nzuri sana.';

  @override
  String get glossRoa =>
      'Faida kwa mali: faida ya mwaka ÷ kila kitu kampuni inachomiliki. Linganisha ndani ya sekta moja.';

  @override
  String get glossDebtToEquity =>
      'Madeni ÷ mtaji wa wamiliki. Juu zaidi inamaanisha pesa nyingi zaidi za mkopo: hatari zaidi riba zikipanda au biashara ikidorora.';

  @override
  String get glossCurrentRatio =>
      'Mali za muda mfupi ÷ bili zinazopaswa kulipwa ndani ya mwaka mmoja. Zaidi ya 1 inamaanisha kampuni inaweza kulipa bili zake za karibu.';

  @override
  String get glossRevenueGrowth =>
      'Kiasi ambacho mapato yamekua ikilinganishwa na mwaka mmoja uliopita.';

  @override
  String get glossEpsGrowth =>
      'Kiasi ambacho faida kwa kila hisa imekua ikilinganishwa na mwaka mmoja uliopita.';

  @override
  String get glossDividendYield =>
      'Gawio la mwaka ÷ bei ya hisa: mapato ya pesa ambayo ungepata kila mwaka, kama asilimia ya kiasi unacholipa.';

  @override
  String get glossDividendPerShare =>
      'Gawio lililolipwa kwa hisa moja katika mwaka uliopita.';

  @override
  String get glossPayoutRatio =>
      'Sehemu ya faida inayolipwa kama gawio. Zaidi ya 100% kampuni inalipa zaidi ya inavyopata, jambo ambalo mara chache hudumu.';

  @override
  String get glossTitle => 'Inamaanisha nini?';

  @override
  String get watchNewsTitle => 'Habari za hisa zako';

  @override
  String get undo => 'Tendua';

  @override
  String get watchSort => 'Panga';

  @override
  String get watchSortOwn => 'Mpangilio wangu';

  @override
  String get watchSortGainers => 'Zilizopanda zaidi kwanza';

  @override
  String get watchSortLosers => 'Zilizoshuka zaidi kwanza';

  @override
  String get watchSortName => 'Kwa ticker (A–Z)';

  @override
  String get watchHint =>
      'Buruta kishikio ili kupanga upya, telezesha kushoto ili kuondoa. Mstari unaonyesha siku 30 zilizopita.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: uchambuzi wako uko tayari.';
  }

  @override
  String alertFromCost(String price) {
    return 'Kutoka bei yako ya wastani ya kununua ($price):';
  }

  @override
  String get briefTitle => 'Leo na hisa zako';

  @override
  String get briefButton => 'Fupisha leo';

  @override
  String get briefHint =>
      'Muhtasari mfupi wa AI wa jinsi jalada lako na vipendwa vyako vilivyosonga leo na habari za karibuni zinasema nini kuzihusu. Hautumii uchambuzi.';

  @override
  String get briefRefresh => 'Sasisha';

  @override
  String get sectionEarnings => 'Matokeo ya robo mwaka';

  @override
  String earningsNext(String date) {
    return 'Ripoti ijayo: $date';
  }

  @override
  String get earningsExpected => 'EPS inayotarajiwa';

  @override
  String get earningsReported => 'EPS iliyoripotiwa';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Sawa au juu ya EPS inayotarajiwa katika $beats kati ya robo $total zilizopita',
      one: 'Sawa au juu ya EPS inayotarajiwa katika $beats kati ya robo 1',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol inatangaza matokeo ya robo mwaka kesho';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol inatangaza matokeo ya robo mwaka leo';
  }

  @override
  String get earningsRemindersTitle => 'Vikumbusho vya matokeo';

  @override
  String get earningsRemindersSubtitle =>
      'Arifa siku moja kabla hisa zako unazopenda au za jalada lako hazijatangaza matokeo ya robo mwaka';

  @override
  String addAllToFavorites(int count) {
    return 'Ongeza zote kwenye vipendwa ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Leta kutoka picha ya skrini';

  @override
  String get holdingsReading => 'Inasoma nafasi zako…';

  @override
  String get holdingsReviewTitle => 'Nafasi zilizopatikana';

  @override
  String get holdingsReviewHint =>
      'Kagua namba kabla ya kuziongeza. Bei ni wastani wa bei yako ya ununuzi kwa kila hisa, si bei ya leo.';

  @override
  String get holdingsNoPrice => 'Hakuna wastani wa bei ya ununuzi kwenye picha';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ongeza nafasi $count',
      one: 'Ongeza nafasi 1',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Hakuna nafasi za hisa zilizopatikana kwenye picha hii. Jaribu picha ya skrini ya ukurasa wa nafasi au mali zako kwa dalali wako.';

  @override
  String get week52Range => 'Masafa ya wiki 52';

  @override
  String week52BelowHigh(String percent) {
    return '$percent chini ya juu ya wiki 52';
  }

  @override
  String get week52AtHigh => 'Kwenye juu ya wiki 52';

  @override
  String get alertKindTrailing => 'Ikishuka kutoka kilele';

  @override
  String get alertTrailingPercent => 'Kushuka kutoka kilele (%)';

  @override
  String get alertTrailingHint =>
      'Hufuata bei ikipanda: hukuarifu bei inaposhuka kiasi hiki kutoka kiwango cha juu zaidi tangu ulipoiweka.';

  @override
  String alertDescTrailing(String percent) {
    return 'Kushuka $percent kutoka kilele';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'kilele hadi sasa: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol imeshuka $percent kutoka kilele';
  }

  @override
  String get sectionInsiders => 'Biashara ya watu wa ndani';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ununuzi $count',
      one: 'ununuzi 1',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'mauzo $count',
      one: 'mauzo 1',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Halisi: hisa $shares';
  }

  @override
  String get insiderBuy => 'Alinunua';

  @override
  String get insiderSell => 'Aliuza';

  @override
  String get insiderHint =>
      'Ununuzi na mauzo katika soko huria yaliyofanywa na watendaji na wakurugenzi katika siku 90 zilizopita (SEC Form 4). Utekelezaji wa chaguo (options) na hisa za tuzo hauhesabiwi.';

  @override
  String get insiderNone =>
      'Hakuna ununuzi wala mauzo ya watu wa ndani katika soko huria katika siku 90 zilizopita.';

  @override
  String get analystTrend => 'Jinsi maoni yalivyobadilika mwezi baada ya mwezi';

  @override
  String get watchListAll => 'Zote';

  @override
  String get watchListNew => 'Orodha mpya';

  @override
  String get watchListName => 'Jina la orodha';

  @override
  String get watchListRename => 'Badilisha jina la orodha';

  @override
  String get watchListDelete => 'Futa orodha';

  @override
  String get watchListAddTo => 'Ongeza kwenye orodha';

  @override
  String get watchListEmpty =>
      'Bado hakuna hisa kwenye orodha hii. Gusa kitufe cha orodha kando ya hisa ili kuiongeza.';
}
