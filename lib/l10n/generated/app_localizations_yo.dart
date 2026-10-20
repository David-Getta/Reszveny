// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Yoruba (`yo`).
class AppLocalizationsYo extends AppLocalizations {
  AppLocalizationsYo([String locale = 'yo']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Ya fọ́tò ìpín kan, kí o sì mọ gbogbo nǹkan nípa rẹ̀.';

  @override
  String get homeHint =>
      'Ìwé ẹ̀rí ìpín, ojú áàpù alágbàtà, ìwé ìròyìn tàbí àmì ilé-iṣẹ́ – ohunkóhun tó lè fi ìpín kan hàn.';

  @override
  String get takePhoto => 'Ya fọ́tò';

  @override
  String get chooseFromGallery => 'Yan láti inú gálẹ́rì';

  @override
  String get chooseImage => 'Yan àwòrán kan';

  @override
  String get enterTickerManually => 'Tẹ àmì ìpín fúnra rẹ';

  @override
  String get tickerInputLabel => 'Àmì ìpín';

  @override
  String get tickerInputHint => 'àpẹẹrẹ: AAPL';

  @override
  String get lookUp => 'Wá a';

  @override
  String demoModeBanner(String symbols) {
    return 'Ipò àfihàn – kò sí kọ́kọ́rọ́ dátà ọjà tí a ṣètò. Dátà àpẹẹrẹ wà fún: $symbols.';
  }

  @override
  String get recognizing => 'À ń ṣàyẹ̀wò àwòrán náà…';

  @override
  String get loadingData => 'À ń gbé dátà wọlé…';

  @override
  String get noCandidatesTitle => 'A kò dá ìpín kankan mọ̀';

  @override
  String get noCandidatesBody =>
      'A kò lè dá ìpín kankan mọ̀ nínú àwòrán yìí. Gbìyànjú fọ́tò tó mọ́ kedere, tàbí tẹ àmì ìpín fúnra rẹ.';

  @override
  String get whatWeSaw => 'Ohun tí a rí';

  @override
  String get chooseCandidateTitle => 'Ìpín wo ni o ní lọ́kàn?';

  @override
  String confidencePercent(int percent) {
    return 'Ìdánilójú $percent%';
  }

  @override
  String get settings => 'Ètò';

  @override
  String get language => 'Èdè';

  @override
  String get systemLanguage => 'Èdè ẹ̀rọ (àìyípadà)';

  @override
  String get about => 'Nípa';

  @override
  String get disclaimer =>
      'Áàpù yìí ń pèsè ìsọfúnni nìkan, kì í ṣe ìmọ̀ràn ìdókòwò. Dátà lè pẹ́ dé tàbí kí ó má péye.';

  @override
  String dataSource(String source) {
    return 'Orísun dátà: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Ìdámọ̀: $source';
  }

  @override
  String get retry => 'Tún gbìyànjú';

  @override
  String get cancel => 'Fagilé';

  @override
  String get ok => 'Ó dáa';

  @override
  String get close => 'Pa á dé';

  @override
  String get errorGeneric => 'Àṣìṣe kan ṣẹlẹ̀.';

  @override
  String get errorSectionUnavailable => 'A kò lè gbé abala yìí wọlé.';

  @override
  String get notAvailable => 'kò sí';

  @override
  String get sectionIdentity => 'Ìdánimọ̀ ìpín';

  @override
  String get sectionPrice => 'Iye owó';

  @override
  String get sectionValuation => 'Ìdíyelé';

  @override
  String get sectionFinancials => 'Ìṣúná';

  @override
  String get sectionDividend => 'Èrè ìpín';

  @override
  String get sectionProfile => 'Àlàyé ilé-iṣẹ́';

  @override
  String get sectionAnalysts => 'Ìdíwọ̀n àwọn olùṣàyẹ̀wò';

  @override
  String get sectionNews => 'Ìròyìn';

  @override
  String get sectionRecognition => 'Àlàyé ìdámọ̀';

  @override
  String get labelSymbol => 'Àmì ìpín';

  @override
  String get labelExchange => 'Ọjà ìpín';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Owó';

  @override
  String get labelCountry => 'Orílẹ̀-èdè';

  @override
  String get labelIndustry => 'Ẹ̀ka iṣẹ́';

  @override
  String get labelSector => 'Ẹ̀ka ọrọ̀ ajé';

  @override
  String get labelWebsite => 'Ìkànnì';

  @override
  String get labelIpoDate => 'Ọjọ́ IPO';

  @override
  String get labelMarketCap => 'Iye ọjà lápapọ̀';

  @override
  String get labelSharesOutstanding => 'Ìpín tó wà lọ́jà';

  @override
  String get labelEmployees => 'Òṣìṣẹ́';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Olú-ilé-iṣẹ́';

  @override
  String get labelDescription => 'Àpèjúwe';

  @override
  String get labelLastPrice => 'Iye owó tó kẹ́yìn';

  @override
  String get labelChange => 'Àyípadà';

  @override
  String get labelOpen => 'Iye ìbẹ̀rẹ̀';

  @override
  String get labelDayHigh => 'Ga jùlọ lónìí';

  @override
  String get labelDayLow => 'Kéré jùlọ lónìí';

  @override
  String get labelPreviousClose => 'Iye ìpadé tó kọjá';

  @override
  String get labelWeek52High => 'Ga jùlọ ní ọ̀sẹ̀ 52';

  @override
  String get labelWeek52Low => 'Kéré jùlọ ní ọ̀sẹ̀ 52';

  @override
  String get labelAverageVolume10d => 'Àròpín ìwọ̀n ìtajà (ọjọ́ 10)';

  @override
  String updatedAt(String time) {
    return 'Ìmúdójúìwọ̀n: $time';
  }

  @override
  String get labelPeTrailing => 'P/E (tó kọjá)';

  @override
  String get labelPeForward => 'P/E (ọjọ́ iwájú)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / ìṣàn owó ọ̀fẹ́';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Owó tó wọlé (TTM)';

  @override
  String get labelNetIncomeTtm => 'Èrè gidi (TTM)';

  @override
  String get labelGrossMargin => 'Ìpín èrè àkọ́kọ́';

  @override
  String get labelOperatingMargin => 'Ìpín èrè iṣẹ́';

  @override
  String get labelNetMargin => 'Ìpín èrè gidi';

  @override
  String get labelRoe => 'Èrè lórí olú-owó (ROE)';

  @override
  String get labelRoa => 'Èrè lórí dúkìá (ROA)';

  @override
  String get labelDebtToEquity => 'Gbèsè / olú-owó';

  @override
  String get labelCurrentRatio => 'Ìwọ̀n olómi (current ratio)';

  @override
  String get labelRevenueGrowth => 'Ìdàgbàsókè owó tó wọlé (YoY)';

  @override
  String get labelEpsGrowth => 'Ìdàgbàsókè EPS (YoY)';

  @override
  String get labelDividendYield => 'Ìwọ̀n èrè ìpín';

  @override
  String get labelDividendPerShare => 'Èrè fún ìpín kọ̀ọ̀kan';

  @override
  String get labelPayoutRatio => 'Ìpín èrè tí a pín';

  @override
  String get labelConsensus => 'Èrò gbogbogbò';

  @override
  String get ratingStrongBuy => 'Rà gidigidi';

  @override
  String get ratingBuy => 'Rà';

  @override
  String get ratingHold => 'Dì í mú';

  @override
  String get ratingSell => 'Tà';

  @override
  String get ratingStrongSell => 'Tà gidigidi';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Olùṣàyẹ̀wò $count',
      one: 'Olùṣàyẹ̀wò 1',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Àkókò: $period';
  }

  @override
  String get noNews => 'Kò sí ìròyìn tuntun.';

  @override
  String get openArticle => 'Ṣí àpilẹ̀kọ';

  @override
  String get openLinkFailed => 'A kò lè ṣí líǹkì náà.';

  @override
  String get recognitionSummary => 'Àkópọ̀';

  @override
  String get recognitionEvidence => 'Ìdí tí a fi rò bẹ́ẹ̀';

  @override
  String get recognitionRawText => 'Ọ̀rọ̀ tí a kà láti inú àwòrán';

  @override
  String get errMissingAnthropicKey =>
      'A kò tíì ṣètò ìdámọ̀ àwòrán (kò sí ANTHROPIC_API_KEY). Tẹ àmì ìpín fúnra rẹ.';

  @override
  String get errRecognitionUnreachable =>
      'A kò lè dé iṣẹ́ ìdámọ̀. Ṣàyẹ̀wò ìsopọ̀ íńtánẹ́ẹ̀tì rẹ.';

  @override
  String errRecognitionHttp(String status) {
    return 'Iṣẹ́ ìdámọ̀ dá àṣìṣe padà (HTTP $status).';
  }

  @override
  String get errRecognitionRefused => 'Iṣẹ́ ìdámọ̀ kò lè ṣe àwòrán yìí.';

  @override
  String get errRecognitionTruncated =>
      'Ìdáhùn ìdámọ̀ kò pé. Jọ̀ọ́ tún gbìyànjú.';

  @override
  String get errRecognitionBadResponse =>
      'Ìdáhùn àìròtẹ́lẹ̀ láti ọ̀dọ̀ iṣẹ́ ìdámọ̀.';

  @override
  String get errRecognitionEmpty => 'Iṣẹ́ ìdámọ̀ dá ìdáhùn òfo padà.';

  @override
  String get errMissingFinnhubKey =>
      'A kò tíì ṣètò dátà ọjà (kò sí FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'A kò lè dé iṣẹ́ dátà ọjà. Ṣàyẹ̀wò ìsopọ̀ íńtánẹ́ẹ̀tì rẹ.';

  @override
  String get errMarketRateLimited =>
      'Ìbéèrè ti pọ̀ jù sí iṣẹ́ dátà ọjà. Jọ̀ọ́ dúró fún ìṣẹ́jú kan.';

  @override
  String errMarketHttp(String status) {
    return 'Iṣẹ́ dátà ọjà dá àṣìṣe padà (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Ìdáhùn àìròtẹ́lẹ̀ láti ọ̀dọ̀ iṣẹ́ dátà ọjà.';

  @override
  String errNoQuote(String symbol) {
    return 'A kò rí dátà iye owó fún $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'A kò rí àlàyé ilé-iṣẹ́ fún $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Ipò àfihàn ń ṣiṣẹ́ fún $symbols nìkan. Fi FINNHUB_API_KEY kún un fún dátà tààrà.';
  }

  @override
  String errUnknown(String detail) {
    return 'Àṣìṣe kan ṣẹlẹ̀: $detail';
  }

  @override
  String get newSearch => 'Ìwádìí tuntun';

  @override
  String get recentSearches => 'Àìpẹ́ yìí';

  @override
  String get noRecentSearches => 'Kò tíì sí ìwádìí àìpẹ́ yìí.';

  @override
  String get clearRecent => 'Pa àìpẹ́ yìí rẹ́';

  @override
  String get greeting => 'Ìpín wo ni ká wò?';

  @override
  String get searchHint => 'Àmì ìpín tàbí orúkọ ilé-iṣẹ́';

  @override
  String get attachImage => 'So àwòrán mọ́ ọn';

  @override
  String get searchResultsTitle => 'Èsì ìwádìí';

  @override
  String errNoResults(String query) {
    return 'A kò rí ìpín kankan fún “$query”.';
  }

  @override
  String get quickBarHint => 'Tẹ àmì ìpín tàbí orúkọ ilé-iṣẹ́…';

  @override
  String get openFullWindow => 'Ṣí fèrèsé';

  @override
  String hotkeyHint(String shortcut) {
    return 'Tẹ $shortcut níbikíbi láti pe WhatStock.';
  }

  @override
  String get trayOpen => 'Ṣí WhatStock';

  @override
  String get trayQuickSearch => 'Ìwádìí kíákíá';

  @override
  String get trayQuit => 'Jáde';

  @override
  String get appearance => 'Ìrísí';

  @override
  String get themeSystem => 'Ẹ̀rọ';

  @override
  String get themeDark => 'Dúdú';

  @override
  String get themeLight => 'Mímọ́lẹ̀';

  @override
  String get back => 'Padà';

  @override
  String get aiSectionTitle => 'Ìtúpalẹ̀ AI';

  @override
  String get aiIntro =>
      'Àlàyé kíkún tí AI kọ: àkópọ̀ ìròyìn àìpẹ́, iṣẹ́ ilé-iṣẹ́ náà, agbára, ewu àti àwọn kókó tó farasin, ìdíyelé, àsọtẹ́lẹ̀ iye owó pẹ̀lú àwọn ìṣẹ̀lẹ̀ tó ṣeé ṣe láti ojú ìwòye ọkàn, àwùjọ, àtẹ iye owó àti ọrọ̀ ajé gbogbogbò, àti ohun tó yẹ kí o máa ṣọ́.';

  @override
  String get aiGenerate => 'Ṣe ìtúpalẹ̀';

  @override
  String get aiRegenerate => 'Tún un ṣe';

  @override
  String get aiGenerating =>
      'À ń pèsè ìtúpalẹ̀ náà… èyí lè gba ìṣẹ́jú kan tàbí méjì.';

  @override
  String get aiSources => 'Àwọn orísun';

  @override
  String aiGeneratedAt(String time) {
    return 'Ìgbà tí a ṣe é: $time';
  }

  @override
  String get aiDisclaimer =>
      'Ìtúpalẹ̀ tí AI ṣe láti inú dátà gbangba àti ìròyìn àìpẹ́. Ó lè ní àṣìṣe tàbí kí ó ti gbó, kì í sì í ṣe ìmọ̀ràn ìdókòwò.';

  @override
  String get errAiNotConfigured =>
      'A kò tíì ṣètò ìtúpalẹ̀ AI (kò sí ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'A kò lè dé iṣẹ́ AI. Ṣàyẹ̀wò ìsopọ̀ íńtánẹ́ẹ̀tì rẹ.';

  @override
  String errAiHttp(String status) {
    return 'Iṣẹ́ AI dá àṣìṣe padà (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Iṣẹ́ AI kọ̀ láti túpalẹ̀ ìpín yìí.';

  @override
  String get errAiBadResponse => 'Ìdáhùn àìròtẹ́lẹ̀ láti ọ̀dọ̀ iṣẹ́ AI.';

  @override
  String get sectionChart => 'Àtẹ iye owó';

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
      'Ìtàn iye owó kò sí láti orísun dátà tí a ń lò báyìí.';

  @override
  String get sectionStatements => 'Àkọsílẹ̀ ìṣúná (ọdọọdún)';

  @override
  String get labelFiscalYear => 'Ọdún ìṣúná';

  @override
  String get labelRevenue => 'Owó tó wọlé';

  @override
  String get labelNetIncome => 'Èrè gidi';

  @override
  String get labelTotalAssets => 'Àpapọ̀ dúkìá';

  @override
  String get labelTotalLiabilities => 'Àpapọ̀ gbèsè';

  @override
  String get labelEquity => 'Olú-owó àwọn onípìn-ín';

  @override
  String get labelOperatingCashFlow => 'Ìṣàn owó iṣẹ́';

  @override
  String get statementsUnavailable =>
      'Kò sí àkọsílẹ̀ ìṣúná tí a tẹ̀jáde fún ìpín yìí.';

  @override
  String get launchAtLogin => 'Ṣí i nígbà tí o bá wọlé';

  @override
  String get hotkeyLabel => 'Ọ̀nà àbùjá gbogbogbò';

  @override
  String get hotkeyRecordHint => 'Tẹ ibí, lẹ́yìn náà tẹ àpapọ̀ bọ́tìnnì tuntun';

  @override
  String get hotkeyReset => 'Dá a padà sí àìyípadà';

  @override
  String get pasteImage => 'Lẹ àwòrán tí o dà kọ';

  @override
  String get errClipboardNoImage => 'Kò sí àwòrán nínú ohun tí o dà kọ.';

  @override
  String get favorites => 'Àwọn ààyò';

  @override
  String get addToFavorites => 'Fi kún àwọn ààyò';

  @override
  String get removeFromFavorites => 'Yọ kúrò nínú àwọn ààyò';

  @override
  String get noFavorites =>
      'Kò tíì sí ààyò kankan. Tẹ ìràwọ̀ lára ìpín kan láti fi kún un.';

  @override
  String get displayCurrency => 'Owó ìfihàn';

  @override
  String get displayCurrencyNone => 'Owó ìpín náà nìkan';

  @override
  String labelConverted(String currency) {
    return '≈ ní $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Ìwọ̀n pàṣípààrọ̀: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Àwọn ìmúdójúìwọ̀n';

  @override
  String currentVersion(String version) {
    return 'Ẹ̀yà $version';
  }

  @override
  String get autoUpdate => 'Fi ìmúdójúìwọ̀n sí i láìfọwọ́yí';

  @override
  String get checkForUpdates => 'Ṣàyẹ̀wò fún ìmúdójúìwọ̀n';

  @override
  String get updateChecking => 'À ń ṣàyẹ̀wò fún ìmúdójúìwọ̀n…';

  @override
  String get updateUpToDate => 'Ẹ̀yà tuntun jùlọ ni o ń lò.';

  @override
  String updateAvailable(String version) {
    return 'Ẹ̀yà $version ti dé.';
  }

  @override
  String get updateDownloading => 'À ń ṣe ìgbàsílẹ̀ ìmúdójúìwọ̀n lẹ́yìn…';

  @override
  String get updateDownloaded =>
      'Ìmúdójúìwọ̀n ti ṣetán. Tún áàpù bẹ̀rẹ̀ láti fi sí i.';

  @override
  String get updateNow => 'Ṣe ìmúdójúìwọ̀n';

  @override
  String get restartNow => 'Tún bẹ̀rẹ̀';

  @override
  String get updatesViaStore =>
      'Àwọn ìmúdójúìwọ̀n ń dé láìfọwọ́yí láti inú ilé ìtajà áàpù.';

  @override
  String get updateCheckFailed => 'A kò lè ṣàyẹ̀wò fún ìmúdójúìwọ̀n.';

  @override
  String get subscription => 'Àsansílẹ̀';

  @override
  String get planTrial => 'Ìdánwò';

  @override
  String get planNormal => 'Déédé';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Kò sí ìpele tó ń ṣiṣẹ́';

  @override
  String planAnalysesPerMonth(int count) {
    return 'Ìtúpalẹ̀ $count lóṣù';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Ìdánwò ọ̀fẹ́ ọlọ́jọ́ $days pẹ̀lú ìtúpalẹ̀ $count';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Ọjọ́ $days ló kù nínú ìdánwò',
      one: 'Ọjọ́ 1 ló kù nínú ìdánwò',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Ìdánwò ọ̀fẹ́ rẹ ti parí. Yan ìpele kan láti máa bá ìtúpalẹ̀ lọ.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Ìtúpalẹ̀ $remaining nínú $total ló kù ní sáà yìí';
  }

  @override
  String extraCredits(int count) {
    return 'Ìtúpalẹ̀ àfikún $count';
  }

  @override
  String renewsOn(String date) {
    return 'Ìsọdọ̀tun: $date';
  }

  @override
  String get choosePlan => 'Yan ìpele kan';

  @override
  String get currentPlan => 'Ìpele rẹ lọ́wọ́lọ́wọ́';

  @override
  String get subscribe => 'Ṣe àsansílẹ̀';

  @override
  String get perMonth => '/ oṣù';

  @override
  String get extraPacksTitle => 'Ṣé o fẹ́ sí i? Ra ìtúpalẹ̀ àfikún';

  @override
  String get extraPacksHint =>
      'Ìtúpalẹ̀ àfikún kì í parí, a sì máa ń lò wọ́n lẹ́yìn ìpín oṣooṣù rẹ.';

  @override
  String get buy => 'Rà á';

  @override
  String get restorePurchases => 'Dá àwọn ohun tí o rà padà';

  @override
  String get manageSubscription => 'Ṣàkóso àsansílẹ̀';

  @override
  String get purchaseSuccess => 'O ṣé! Ohun tí o rà ti ń ṣiṣẹ́.';

  @override
  String get purchasePending => 'Ìrajà ń dúró…';

  @override
  String get purchaseFailed => 'A kò lè parí ìrajà náà.';

  @override
  String get purchaseCanceled => 'A ti fagilé ìrajà náà.';

  @override
  String get billingUnavailable =>
      'Ìrajà kò tíì sí lórí pẹpẹ yìí. Ṣe àsansílẹ̀ lórí fóònù rẹ tàbí Mac; ìpele rẹ yóò ṣiṣẹ́ lórí gbogbo ẹ̀rọ.';

  @override
  String get errQuotaExceeded =>
      'Kò sí ìtúpalẹ̀ tó kù fún ọ ní sáà yìí. Gbé ìpele rẹ ga tàbí ra ìtúpalẹ̀ àfikún.';

  @override
  String get errTrialExpired =>
      'Ìdánwò ọ̀fẹ́ rẹ ti parí. Yan ìpele kan láti tẹ̀síwájú.';

  @override
  String get errNoPlan => 'O nílò ìpele tó ń ṣiṣẹ́ fún ìtúpalẹ̀ AI.';

  @override
  String get viewPlans => 'Wo àwọn ìpele';

  @override
  String get usageTitle => 'Ìlò';

  @override
  String get demoPurchaseNote =>
      'Ìsanwó àfihàn: ìrajà jẹ́ àfarawé lórí pẹpẹ yìí.';

  @override
  String get mostPopular => 'Ó gbajúmọ̀ jùlọ';

  @override
  String get bestValue => 'Ó ní iye jùlọ';

  @override
  String get planFeaturesCommon =>
      'Ìdámọ̀ fọ́tò, dátà tààrà, àtẹ, àwọn ààyò àti gbogbo èdè 120 wà nínú gbogbo ìpele. Ìpín oṣooṣù náà jẹ́ fún ìtúpalẹ̀ AI.';

  @override
  String get searchLanguages => 'Wá èdè…';

  @override
  String get noLanguageMatch => 'Kò sí èdè tó bá a mu.';

  @override
  String get aiSettings => 'Ìtúpalẹ̀ AI';

  @override
  String get aiLength => 'Gígùn';

  @override
  String get aiDepthBrief => 'Ṣókí';

  @override
  String get aiDepthStandard => 'Àgbedeméjì';

  @override
  String get aiDepthDeep => 'Jinlẹ̀';

  @override
  String get aiDepthBriefDesc => 'Àwọn kókó pàtàkì, kíákíá.';

  @override
  String get aiDepthStandardDesc => 'Ìjábọ̀ kíkún pẹ̀lú gbogbo abala.';

  @override
  String get aiDepthDeepDesc =>
      'Ìwádìí wẹ́ẹ̀bù púpọ̀ sí i, ìfiwéra pẹ̀lú àwọn ilé-iṣẹ́ ẹgbẹ́ àti àlàyé tó jinlẹ̀ sí i.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Nǹkan bí ọ̀rọ̀ $min–$max';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ó ń lo ìtúpalẹ̀ $count',
      one: 'ó ń lo ìtúpalẹ̀ 1',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Ìpele òǹkàwé';

  @override
  String get aiReaderBeginner => 'Olùbẹ̀rẹ̀';

  @override
  String get aiReaderExperienced => 'Onírìírí';

  @override
  String get aiReaderBeginnerDesc =>
      'Èdè tó rọrùn; a ṣàlàyé gbogbo ọ̀rọ̀ àmọ̀já.';

  @override
  String get aiReaderExperiencedDesc =>
      'Ọ̀rọ̀ tó kún fún àlàyé pẹ̀lú àwọn ọ̀rọ̀ ìṣúná tí gbogbo èèyàn ń lò.';

  @override
  String get aiCounterArgument => 'Àtakò tó lágbára jùlọ';

  @override
  String get aiCounterArgumentDesc =>
      'Àkópọ̀ náà máa ń parí pẹ̀lú àtakò tó dára jùlọ sí ìparí èrò tirẹ̀.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Títí dé ìwádìí wẹ́ẹ̀bù $count fún ìtúpalẹ̀ kọ̀ọ̀kan pẹ̀lú ìpele rẹ',
      one: 'Títí dé ìwádìí wẹ́ẹ̀bù 1 fún ìtúpalẹ̀ kọ̀ọ̀kan pẹ̀lú ìpele rẹ',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Gígùn Àgbedeméjì gẹ́gẹ́ bí ìpele: Déédé $normal, Pro $pro, Max $max, Ultra $ultra. Ṣókí ń lo 2 dín, Jinlẹ̀ ń lo 2 jù bẹ́ẹ̀ lọ.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'títí dé ìwádìí wẹ́ẹ̀bù $count',
      one: 'títí dé ìwádìí wẹ́ẹ̀bù 1',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ìwádìí wẹ́ẹ̀bù $count fún ìtúpalẹ̀ kọ̀ọ̀kan',
      one: 'Ìwádìí wẹ́ẹ̀bù 1 fún ìtúpalẹ̀ kọ̀ọ̀kan',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Gígùn yìí nílò ìtúpalẹ̀ $needed, ṣùgbọ́n $left péré ló kù. Yan gígùn tó kúrú jù nínú Ètò tàbí gba ìtúpalẹ̀ sí i.';
  }

  @override
  String get outlookMarketMood => 'Ìmọ̀lára ọjà';

  @override
  String get moodVeryPessimistic => 'Àìnírètí gan-an';

  @override
  String get moodPessimistic => 'Àìnírètí';

  @override
  String get moodNeutral => 'Àárín';

  @override
  String get moodOptimistic => 'Ìrètí rere';

  @override
  String get moodVeryOptimistic => 'Ìrètí rere gan-an';

  @override
  String get scenarioBull => 'Ìṣẹ̀lẹ̀ ìgòkè';

  @override
  String get scenarioBase => 'Ìṣẹ̀lẹ̀ àárín';

  @override
  String get scenarioBear => 'Ìṣẹ̀lẹ̀ ìsọ̀kalẹ̀';

  @override
  String outlookCurrentPrice(String price) {
    return 'Iye owó lọ́wọ́lọ́wọ́: $price';
  }

  @override
  String get outlookKeyLevels => 'Ìwọ̀n iye owó pàtàkì';

  @override
  String get keyLevelSupport => 'Àtìlẹ́yìn';

  @override
  String get keyLevelResistance => 'Ìdènà';

  @override
  String get keyLevelAnchor => 'Ìdákọ̀ró';

  @override
  String get upcomingEvents => 'Ìṣẹ̀lẹ̀ tó ń bọ̀';

  @override
  String get outlookChartNote =>
      'Ààlà àbá ni wọ̀nyí; ìṣeéṣe jẹ́ ìfojúdíwọ̀n lásán, kì í ṣe àsọtẹ́lẹ̀.';

  @override
  String get accountTitle => 'Àkáǹtì';

  @override
  String get signIn => 'Wọlé';

  @override
  String get signOut => 'Jáde';

  @override
  String get notSignedIn => 'O kò tíì wọlé';

  @override
  String get accountBenefit =>
      'Wọlé kí àsansílẹ̀ rẹ lè ṣiṣẹ́ lórí gbogbo ẹ̀rọ rẹ.';

  @override
  String get accountSyncedNote =>
      'Àsansílẹ̀ rẹ àti ìtúpalẹ̀ tó kù jẹ́ ọ̀kan náà lórí gbogbo ẹ̀rọ.';

  @override
  String get signInTitle => 'Wọlé sí WhatStock';

  @override
  String get emailLabel => 'Àdírẹ́sì ímeèlì';

  @override
  String get continueWithEmail => 'Tẹ̀síwájú pẹ̀lú ímeèlì';

  @override
  String codeSentTo(String email) {
    return 'A fi kóòdù oní-nọ́ńbà 6 ránṣẹ́ sí $email. Ó wúlò fún ìṣẹ́jú 10.';
  }

  @override
  String get codeLabel => 'Kóòdù ìwọlé';

  @override
  String get resendCode => 'Fi kóòdù tuntun ránṣẹ́';

  @override
  String get useDifferentEmail => 'Lo ímeèlì mìíràn';

  @override
  String get errInvalidCode => 'Kóòdù náà kò tọ̀nà tàbí ó ti parí.';

  @override
  String get errInvalidEmail => 'Jọ̀ọ́ tẹ àdírẹ́sì ímeèlì tó tọ̀nà.';

  @override
  String get errSignInFailed =>
      'Ìwọlé kùnà. Ṣàyẹ̀wò ìsopọ̀ rẹ kí o sì tún gbìyànjú.';

  @override
  String get checkoutWaiting =>
      'Parí ìsanwó nínú aṣàwákiri rẹ. Áàpù náà yóò ṣe ìmúdójúìwọ̀n fúnra rẹ̀ nígbà tí ó bá parí.';

  @override
  String get paymentViaStripe =>
      'Ìsanwó tó ní ààbò nínú aṣàwákiri rẹ nípasẹ̀ Stripe. Fagilé nígbàkigbà.';

  @override
  String get paymentViaStore =>
      'A ń gba owó nípasẹ̀ àkáǹtì App Store tàbí Google Play rẹ. Fagilé nígbàkigbà nínú ètò ilé ìtajà rẹ.';

  @override
  String get keySpace => 'Àlàfo';

  @override
  String get doubleOptionTitle => 'Tẹ Option lẹ́ẹ̀mejì';

  @override
  String get doubleOptionSubtitle =>
      'Títẹ bọ́tìnnì Option lẹ́ẹ̀mejì kíákíá náà máa ń pe WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Kí ó lè ṣiṣẹ́ nínú àwọn áàpù mìíràn pẹ̀lú, gba WhatStock láàyè ní System Settings → Privacy & Security → Input Monitoring, lẹ́yìn náà tún áàpù náà ṣí.';

  @override
  String get openSystemSettings => 'Ṣí System Settings';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Tẹ $shortcut tàbí tẹ Option lẹ́ẹ̀mejì níbikíbi láti pe WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Ó ṣeé ṣe jùlọ';

  @override
  String get longTermToday => 'Òní';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: 'ọdún $years',
      one: 'ọdún 1',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range lọ́dún';
  }

  @override
  String longTermLikely(String price) {
    return 'ó ṣeé ṣe jùlọ: $price';
  }

  @override
  String get confidenceLow => 'Ìdánilójú kékeré';

  @override
  String get confidenceMedium => 'Ìdánilójú àárín';

  @override
  String get confidenceHigh => 'Ìdánilójú gíga';

  @override
  String get longTermNote =>
      'Ààlà ìgbà pípẹ́ dá lórí àwọn àbá tí a sọ, wọ́n sì ń fẹ̀ sí i bí àkókò ti ń lọ. Iye owó kò ka èrè ìpín mọ́ ọn. Ìfojúdíwọ̀n lásán ni, kì í ṣe àsọtẹ́lẹ̀.';

  @override
  String get portfolio => 'Àpò ìdókòwò';

  @override
  String get portfolioEmpty =>
      'Kò sí nǹkan kan níbí síbẹ̀. Ṣí ìpín kan kí o tẹ “Fi kún àpò ìdókòwò” láti máa tẹ̀lé ohun tí o ní.';

  @override
  String get portfolioLocalNote =>
      'Orí ẹ̀rọ yìí nìkan ni a tọ́jú rẹ̀ sí. A ṣe ìyípadà àpapọ̀ pẹ̀lú ìwọ̀n ìtọ́kasí ECB; iye owó lè pẹ́ dé.';

  @override
  String get addToPortfolio => 'Fi kún àpò ìdókòwò';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Fi $symbol kún un';
  }

  @override
  String get portfolioQuantity => 'Iye ìpín';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Iye owó fún ìpín kọ̀ọ̀kan ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Ọjọ́ ìrajà';

  @override
  String get portfolioAdd => 'Fi kún un';

  @override
  String get portfolioInvalidNumber => 'Tẹ nọ́ńbà tó ju òdo lọ.';

  @override
  String portfolioAdded(String symbol) {
    return 'A ti fi $symbol kún àpò ìdókòwò rẹ.';
  }

  @override
  String get portfolioTotalValue => 'Àpapọ̀ iye';

  @override
  String get portfolioToday => 'Lónìí';

  @override
  String get portfolioGainLoss => 'Èrè/àdánù';

  @override
  String get portfolioInvested => 'Owó tí o dókòwò';

  @override
  String get portfolioAllocation => 'Ìpínkiri';

  @override
  String get portfolioPositions => 'Àwọn ohun ìní';

  @override
  String portfolioAvgCost(String price) {
    return 'àròpín iye $price';
  }

  @override
  String get portfolioYourPosition => 'Ohun ìní rẹ';

  @override
  String get portfolioPurchases => 'Àwọn ìrajà';

  @override
  String get portfolioRemove => 'Yọ kúrò';

  @override
  String get portfolioExcluded =>
      'Àwọn ohun ìní tí kò ní iye owó tàbí ìwọ̀n pàṣípààrọ̀ kò sí nínú àpapọ̀.';

  @override
  String get priceAlerts => 'Ìkìlọ̀ iye owó';

  @override
  String get setPriceAlert => 'Ṣètò ìkìlọ̀ iye owó';

  @override
  String alertDialogTitle(String symbol) {
    return 'Ìkìlọ̀ iye owó · $symbol';
  }

  @override
  String get alertKindAbove => 'Tí ó bá gòkè ju';

  @override
  String get alertKindBelow => 'Tí ó bá wálẹ̀ ju';

  @override
  String get alertKindMove => 'Tí ó bá yí padà púpọ̀ lọ́jọ́ kan';

  @override
  String alertTargetPrice(String currency) {
    return 'Iye owó ($currency)';
  }

  @override
  String get alertMovePercent => 'Ìyípadà ojoojúmọ́ (%)';

  @override
  String get alertAlreadyMet => 'Iye owó ti kọjá ìwọ̀n yìí tẹ́lẹ̀.';

  @override
  String get alertSave => 'Ṣètò ìkìlọ̀';

  @override
  String alertCreated(String symbol) {
    return 'A ti ṣètò ìkìlọ̀ fún $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Kò tíì sí ìkìlọ̀ iye owó. Ṣí ìpín kan kí o tẹ agogo láti ṣètò ọ̀kan.';

  @override
  String get alertsNote =>
      'A máa ń ṣàyẹ̀wò ìkìlọ̀ ní gbogbo ìṣẹ́jú 5 nígbà tí WhatStock bá ń ṣiṣẹ́. Lórí kọ̀ǹpútà, ó máa ń ṣiṣẹ́ lọ nínú ọ̀pá mẹ́nù tàbí tíréè; lórí fóònù, fún báyìí, ìkìlọ̀ máa ń dé nígbà tí áàpù bá ṣí sílẹ̀ nìkan.';

  @override
  String alertDescAbove(String price) {
    return 'Ju $price lọ';
  }

  @override
  String alertDescBelow(String price) {
    return 'Kéré sí $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Ìyípadà ojoojúmọ́ ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Ó dún ní $date ní $price';
  }

  @override
  String get alertRearm => 'Tún un mú ṣiṣẹ́';

  @override
  String get alertDelete => 'Paarẹ́';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol ti gòkè ju $price lọ';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol ti wálẹ̀ ju $price lọ';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol yí padà $percent lónìí';
  }

  @override
  String alertHitBody(String price) {
    return 'Iye owó lọ́wọ́lọ́wọ́: $price';
  }

  @override
  String get alertOpen => 'Ṣí i';

  @override
  String get keepInTrayTitle => 'Máa ṣiṣẹ́ lọ nígbà tí fèrèsé bá tì';

  @override
  String get keepInTraySubtitle =>
      'WhatStock yóò wà nínú ọ̀pá mẹ́nù tàbí tíréè, kí ọ̀nà àbùjá àti ìkìlọ̀ iye owó lè máa ṣiṣẹ́.';

  @override
  String get termsOfUse => 'Òfin Ìlò';

  @override
  String get privacyPolicy => 'Ìlànà Ìpamọ́';

  @override
  String get subscriptionLegal =>
      'Àsansílẹ̀ máa ń sọ ara rẹ̀ dọ̀tun láìfọwọ́yí lóṣooṣù títí tí o fi fagilé e. Nípa ṣíṣe àsansílẹ̀, o gba Òfin Ìlò àti Ìlànà Ìpamọ́.';

  @override
  String get deleteAccount => 'Pa àkáǹtì rẹ́';

  @override
  String get deleteAccountTitle => 'Ṣé o fẹ́ pa àkáǹtì rẹ rẹ́?';

  @override
  String get deleteAccountBody =>
      'A ó pa àkáǹtì rẹ àti gbogbo ohun tí a tọ́jú sórí sáfà wa (ímeèlì, ìpín oṣooṣù, ìlò) rẹ́ pátápátá, ìtúpalẹ̀ tí o kò tíì lò yóò sì sọnù. Àsansílẹ̀ tí o san nínú aṣàwákiri ni a ó fagilé lẹ́sẹ̀kẹsẹ̀; àsansílẹ̀ App Store tàbí Google Play gbọ́dọ̀ di fífagilé nínú ètò ilé ìtajà náà.';

  @override
  String get deleteLocalData =>
      'Pa dátà orí ẹ̀rọ yìí rẹ́ pẹ̀lú (àpò ìdókòwò, ìkìlọ̀, ààyò, ìtàn, ìtúpalẹ̀ tí a fi pamọ́)';

  @override
  String get deleteAccountConfirm => 'Pa á rẹ́ pátápátá';

  @override
  String get accountDeleted => 'A ti pa àkáǹtì rẹ rẹ́.';

  @override
  String get errDeleteAccount =>
      'A kò lè pa àkáǹtì náà rẹ́. Ṣàyẹ̀wò ìsopọ̀ rẹ kí o sì tún gbìyànjú.';

  @override
  String get aiTrialBriefNote =>
      'Àwọn ìtúpalẹ̀ ìdánwò jẹ́ ṣókí, a sì ń fi àwòṣe AI tó yára jù ṣe wọ́n. Pẹ̀lú ìpele kan, o máa rí AI wa tó lágbára jùlọ, ìwádìí wẹ́ẹ̀bù púpọ̀ sí i, àti gígùn Àgbedeméjì àti Jinlẹ̀.';

  @override
  String get billingMonthly => 'Lóṣooṣù';

  @override
  String get billingYearly => 'Lọ́dọọdún';

  @override
  String get yearlyDiscount => 'Oṣù 2 lọ́fẹ̀ẹ́';

  @override
  String get perYear => '/ ọdún';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price lóṣù';
  }

  @override
  String get subscriptionLegalYearly =>
      'Àsansílẹ̀ ọdọọdún máa ń sọ ara rẹ̀ dọ̀tun láìfọwọ́yí lọ́dọọdún títí tí o fi fagilé e. Nípa ṣíṣe àsansílẹ̀, o gba Òfin Ìlò àti Ìlànà Ìpamọ́.';

  @override
  String get myAnalyses => 'Àwọn ìtúpalẹ̀ mi';

  @override
  String get navAlerts => 'Ìkìlọ̀';

  @override
  String get inviteTitle => 'Ìfihàn àkọ́kọ́ aládàáni';

  @override
  String get inviteBody =>
      'WhatStock wà fún àwọn tí a pè nìkan fún báyìí. Tẹ kóòdù ìpè tí o gbà.';

  @override
  String get inviteCodeLabel => 'Kóòdù ìpè';

  @override
  String get inviteContinue => 'Tẹ̀síwájú';

  @override
  String get inviteInvalid => 'Kóòdù ìpè yìí kò tọ̀nà.';

  @override
  String get inviteExpired =>
      'Ìpè yìí ti parí. Béèrè kóòdù tuntun lọ́wọ́ ẹni tó pè ọ́.';

  @override
  String get inviteDeviceLimit =>
      'A ti ń lo kóòdù ìpè yìí lórí iye ẹ̀rọ tó pọ̀ jùlọ tí a gbà láàyè.';

  @override
  String get previewConfidential => 'Ìfihàn àṣírí';

  @override
  String get errPreviewDailyLimit =>
      'Ìwọ̀n ìtúpalẹ̀ ti òní fún ìfihàn yìí ti kún. Gbìyànjú lẹ́ẹ̀kan sí i lọ́la.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'wákàtí $count sẹ́yìn',
      one: 'wákàtí 1 sẹ́yìn',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ọjọ́ $count sẹ́yìn',
      one: 'ọjọ́ 1 sẹ́yìn',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Ṣé kí a ṣe àtúnṣe ìtúpalẹ̀ yìí?';

  @override
  String staleBody(String age) {
    return 'A ṣe é ní $age. Iye owó, ìròyìn àti àbájáde lè ti yípadà láti ìgbà náà.';
  }

  @override
  String get staleKeep => 'Fi ti tẹ́lẹ̀ hàn';

  @override
  String get staleRefresh => 'Ṣe tuntun';

  @override
  String seeAll(int count) {
    return 'Wo gbogbo rẹ̀ ($count)';
  }

  @override
  String get searchAnalyses => 'Wá nínú àwọn ìtúpalẹ̀ rẹ';

  @override
  String get deleteAnalysis => 'Pa rẹ́';

  @override
  String analysisDeleted(String symbol) {
    return 'A ti pa ìtúpalẹ̀ $symbol rẹ́';
  }

  @override
  String get keyLevelAlertHint =>
      'Tẹ ìwọ̀n kan láti gba ìkìlọ̀ nígbà tí iye owó bá dé ibẹ̀.';

  @override
  String get shareAnalysisTitle => 'Pín ìtúpalẹ̀';

  @override
  String get shareAsImage => 'Pín gẹ́gẹ́ bí àwòrán';

  @override
  String get shareAsText => 'Pín gẹ́gẹ́ bí ọ̀rọ̀';

  @override
  String get shareCardFooter => 'A ṣe é pẹ̀lú WhatStock';

  @override
  String get shareCardDisclaimer => 'Ìtúpalẹ̀ AI · kì í ṣe ìmọ̀ràn ìdókòwò';

  @override
  String get referralTitle => 'Pe àwọn ọ̀rẹ́';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ìtúpalẹ̀ àfikún $count',
      one: 'ìtúpalẹ̀ àfikún 1',
    );
    return 'Pín kóòdù rẹ. Ọ̀rẹ́ rẹ yóò gba $_temp0 lẹ́sẹ̀kẹsẹ̀, ìwọ náà yóò sì gba iye kan náà lẹ́yìn ìtúpalẹ̀ àkọ́kọ́ rẹ̀.';
  }

  @override
  String get referralYourCode => 'Kóòdù rẹ';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Àwọn tí o pè: $invited · Ẹ̀bùn: $rewarded';
  }

  @override
  String get referralHaveCode => 'Ṣé o ní kóòdù láti ọ̀dọ̀ ọ̀rẹ́ kan?';

  @override
  String get referralRedeem => 'Lò ó';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'A ti fi ìtúpalẹ̀ àfikún $count kún un. Ẹ káàbọ̀!',
      one: 'A ti fi ìtúpalẹ̀ àfikún 1 kún un. Ẹ káàbọ̀!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Kóòdù yìí kò sí. Ṣàyẹ̀wò rẹ̀ kí o sì gbìyànjú lẹ́ẹ̀kan sí i.';

  @override
  String get referralErrOwn => 'O kò lè lo kóòdù tìrẹ.';

  @override
  String get referralErrAlready => 'O ti lo kóòdù ọ̀rẹ́ kan tẹ́lẹ̀.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ìtúpalẹ̀ àfikún $count',
      one: 'ìtúpalẹ̀ àfikún 1',
    );
    return 'Mo ń ṣe ìtúpalẹ̀ ìpín pẹ̀lú WhatStock: ya fọ́tò ìpín kan, AI yóò sì ṣàlàyé rẹ̀. Pẹ̀lú kóòdù mi $code ìwọ yóò gba $_temp0.';
  }

  @override
  String get referralCopied => 'A ti da kóòdù kọ';

  @override
  String get onboardTitle1 => 'Ya fọ́tò ìpín kan';

  @override
  String get onboardBody1 =>
      'Ojú-ìbojú áàpù alágbàtà, ìwé ìròyìn tàbí àmì ilé-iṣẹ́ ti tó: WhatStock yóò dá ìpín náà mọ̀, yóò sì fi iye owó rẹ̀, àwòrán-àtẹ rẹ̀ àti àwọn nọ́ńbà pàtàkì hàn ọ́.';

  @override
  String get onboardTitle2 => 'Lóye rẹ̀ láàárín ìṣẹ́jú díẹ̀';

  @override
  String get onboardBody2 =>
      'Ìtúpalẹ̀ AI ń ṣàlàyé ohun tó ń mú ìpín náà yí padà, àwọn ewu, ìdíyelé rẹ̀ àti ọ̀nà mẹ́ta tí iye owó lè gbà lọ, pẹ̀lú àwọn orísun àti ní èdè rẹ.';

  @override
  String get onboardTitle3 => 'Má ṣe pàdánù nǹkan kan';

  @override
  String get onboardBody3 =>
      'Àwọn ààyò, àpò ìdókòwò rẹ àti ìkìlọ̀ iye owó máa ń jẹ́ kí o mọ ohun tó ń ṣẹlẹ̀. Àwọn ìtúpalẹ̀ rẹ wà lórí ẹ̀rọ rẹ, wọ́n ṣetán láti ṣí lẹ́ẹ̀kan sí i.';

  @override
  String get onboardNext => 'Èyí tó kàn';

  @override
  String get onboardStart => 'Bẹ̀rẹ̀';

  @override
  String get onboardSkip => 'Fò ó';

  @override
  String changesTitle(String date) {
    return 'Láti ìtúpalẹ̀ tó kọjá ($date)';
  }

  @override
  String get changesPrice => 'Iye owó';

  @override
  String get changesNoMajor => 'Ìrètí kò yí padà ní pàtàkì.';

  @override
  String get changesPreviousSummary => 'Àkópọ̀ ti tẹ́lẹ̀';

  @override
  String get telemetryTitle => 'Ràn wá lọ́wọ́ láti mú WhatStock dára síi';

  @override
  String get telemetryBody =>
      'Pín ìṣirò ìlò láìdárúkọ àti àwọn ìròyìn ìjàlù: àwọn ẹ̀yà wo ni a ń lò àti ohun tí kò lọ dáadáa. A kò ní fi àwọn ìpín rẹ, ìtúpalẹ̀ rẹ tàbí dátà ara ẹni rẹ ránṣẹ́ láé. O lè yí èyí padà nígbàkúgbà nínú Ètò.';

  @override
  String get telemetryAllow => 'Gbà láàyè';

  @override
  String get telemetryDecline => 'Rárá o ṣé';

  @override
  String get telemetrySetting => 'Ìṣirò láìdárúkọ àti ìròyìn ìjàlù';

  @override
  String get telemetrySettingHint =>
      'Ìgbà mélòó ni a ń lo àwọn ẹ̀yà àti ìròyìn àṣìṣe, láìsí dátà ara ẹni tàbí àkóónú àwọn ìwádìí àti ìtúpalẹ̀ rẹ.';

  @override
  String get askButton => 'Béèrè nípa ìtúpalẹ̀ yìí';

  @override
  String askTitle(String symbol) {
    return 'Àwọn ìbéèrè nípa $symbol';
  }

  @override
  String get askIntro =>
      'Béèrè ohunkóhun nípa ìtúpalẹ̀ náà: ohun tí ewu kan túmọ̀ sí, ohun tí ó lè yí ìrísí ọjọ́ iwájú padà, bí a ṣe ṣírò nọ́ńbà kan. Àwọn ìdáhùn dá lórí ìtúpalẹ̀ yìí, kì í sì í ṣe ìmọ̀ràn ìdókòwò.';

  @override
  String get askHint => 'Béèrè ìbéèrè kan…';

  @override
  String get askSend => 'Fi ránṣẹ́';

  @override
  String get askThinking => 'Ó ń ronú…';

  @override
  String get askSuggest1 => 'Kí ni ewu tó tóbi jùlọ?';

  @override
  String get askSuggest2 => 'Kí ló lè yí ìrísí ọjọ́ iwájú padà?';

  @override
  String get askSuggest3 => 'Ṣàlàyé rẹ̀ ní ọ̀nà tó rọrùn';

  @override
  String get askMaxReached =>
      'Ìyẹn ni ìbéèrè tó kẹ́yìn fún ìtúpalẹ̀ yìí. Ṣe ìtúpalẹ̀ tuntun láti béèrè sí i.';

  @override
  String get errAskLimit =>
      'O ti dé ìwọ̀n ìbéèrè ti òní. Jọ̀wọ́ gbìyànjú lẹ́ẹ̀kan sí i lọ́la.';

  @override
  String get eventTomorrow => 'Ọ̀la';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'ní ọjọ́ $days sí i',
      one: 'ní ọjọ́ 1 sí i',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Àbájáde ìdámẹ́rin ọdún';

  @override
  String get eventBeforeOpen => 'kí ọjà tó ṣí';

  @override
  String get eventAfterClose => 'lẹ́yìn tí ọjà bá tì';

  @override
  String eventEpsEstimate(String value) {
    return 'Àfojúsùn EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Láti inú ìtúpalẹ̀ yín';

  @override
  String get eventsHint =>
      'Ọjọ́ àbájáde àwọn ìpín ààyò yín àti ti àpò ìdókòwò yín fún ọjọ́ 90 tó ń bọ̀, àti àwọn ìṣẹ̀lẹ̀ tó ní ọjọ́ tí àwọn ìtúpalẹ̀ yín tọ́ka sí.';

  @override
  String get eventsEmpty =>
      'Kò sí ìṣẹ̀lẹ̀ tó ní ọjọ́ ní ọjọ́ 90 tó ń bọ̀. Ẹ fi àwọn ààyò tàbí ìpín àpò ìdókòwò kún un láti rí ọjọ́ àbájáde wọn níbí.';

  @override
  String get compareTitle => 'Ìfiwéra';

  @override
  String get compareAdd => 'Fi ìpín kún';

  @override
  String get compareRemove => 'Yọ kúrò';

  @override
  String get compareTickerHint => 'Àmì ìpín, àpẹẹrẹ MSFT';

  @override
  String get compareHint =>
      'Àwọn ìṣirò pàtàkì lẹ́gbẹ̀ẹ́ ara wọn; iye tó dára jùlọ ní ìlà kọ̀ọ̀kan ni a tẹnumọ́. Àwọn iye owó wà ní owó ìpín kọ̀ọ̀kan.';

  @override
  String get compareNoAnalysis => 'Kò sí ìtúpalẹ̀ síbẹ̀';

  @override
  String get portfolioDividends => 'Èrè ìpín ọdọọdún';

  @override
  String portfolioDividendYield(String percent) {
    return 'Ìwọ̀n $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Èrè ìpín ọdọọdún tí a retí dá lórí èrè ìpín tí a san ní oṣù 12 sẹ́yìn; kò sí ìdánilójú fún ìsanwó ọjọ́ iwájú.';

  @override
  String positionDividend(String amount) {
    return 'Èrè ìpín: $amount lọ́dún';
  }

  @override
  String get chartAvgCost => 'Àròpín rẹ';

  @override
  String get chartAlertLevel => 'Ìkìlọ̀';

  @override
  String get marketsToday => 'Àwọn ọjà lónìí';

  @override
  String get notesTitle => 'Àwọn àkọsílẹ̀ mi';

  @override
  String get notesHint =>
      'Kí ló dé tí o fi rà á, kí lò ń wò, kí ló máa mú kí o tà á?';

  @override
  String get notesInfo =>
      'Orí ẹ̀rọ yìí nìkan ni a tọ́jú rẹ̀ sí. Ìtúpalẹ̀ AI máa ń ro àwọn àkọsílẹ̀ rẹ mọ́ ọn.';

  @override
  String notesSaved(String date) {
    return 'A fi pamọ́: $date';
  }

  @override
  String get peersTitle => 'Àwọn ilé-iṣẹ́ tó jọra';

  @override
  String get portfolioExport => 'Gbé jáde gẹ́gẹ́ bí CSV';

  @override
  String get portfolioImport => 'Gbé wọlé láti CSV';

  @override
  String get portfolioImportHint =>
      'Lẹ ìrajà kan mọ́ ìlà kọ̀ọ̀kan: àmì ìpín, iye ìpín, iye owó, owó, ọjọ́ (YYYY-MM-DD). A lè fi kọ́mà, sẹ̀míkólọ́nì tàbí táàbù ya àwọn ọ̀wọ̀n sọ́tọ̀; ìlà àkọlé kò pọn dandan.';

  @override
  String get portfolioImportButton => 'Gbé wọlé';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'A ti fi ìrajà $count kún un',
      one: 'A ti fi ìrajà 1 kún un',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'A fo ìlà $count sílẹ̀',
      one: 'A fo ìlà 1 sílẹ̀',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Àpò ìdókòwò, àwọn ààyò, ìkìlọ̀ iye owó àti àwọn àkọsílẹ̀ ń múṣiṣẹ́pọ̀ lórí gbogbo ẹ̀rọ rẹ.';

  @override
  String syncLast(String time) {
    return 'Ìmúṣiṣẹ́pọ̀ tó kẹ́yìn: $time';
  }

  @override
  String get syncNow => 'Múṣiṣẹ́pọ̀ báyìí';

  @override
  String get syncFailed => 'Ìmúṣiṣẹ́pọ̀ kùnà. Yóò tún gbìyànjú fúnra rẹ̀.';

  @override
  String get alertEmailTitle => 'Ímeèlì nígbà tí ìkìlọ̀ bá ṣẹlẹ̀';

  @override
  String get alertEmailOn =>
      'A máa ń ṣàyẹ̀wò ìkìlọ̀ rẹ ní ìṣẹ́jú díẹ̀ díẹ̀, a sì máa ń fi ímeèlì ránṣẹ́ sí ọ, kódà nígbà tí áàpù bá ti pa.';

  @override
  String get alertEmailSignIn =>
      'Wọlé pẹ̀lú ímeèlì rẹ nínú Ètò láti máa gba ìkìlọ̀ nípasẹ̀ ímeèlì, kódà nígbà tí áàpù bá ti pa.';

  @override
  String get portfolioHistory => 'Iye bí àkókò ṣe ń lọ';

  @override
  String get portfolioReviewTitle => 'Ìtúpalẹ̀ àpò ìdókòwò AI';

  @override
  String get portfolioReviewIntro =>
      'AI máa ń wo gbogbo àpò ìdókòwò rẹ: bí owó rẹ ṣe kó jọ sí ibì kan, ìgbẹ́kẹ̀lé ẹ̀ka iṣẹ́ àti owó ilẹ̀ òkèèrè, àwọn ewu tí àwọn ìpín rẹ jọ ní, àti èrè ìpín. Ó ń lo ìtúpalẹ̀ 1.';

  @override
  String get portfolioReviewButton => 'Ṣàyẹ̀wò àpò ìdókòwò mi';

  @override
  String get portfolioReviewAgain => 'Tún ṣàyẹ̀wò';

  @override
  String get portfolioReviewWorking => 'À ń ṣàyẹ̀wò àpò ìdókòwò rẹ…';

  @override
  String get digestTitle => 'Àkópọ̀ ọ̀sẹ̀ nípasẹ̀ ímeèlì';

  @override
  String get digestHint =>
      'Ní gbogbo Ọjọ́ Ajé: bí àwọn ààyò rẹ àti àpò ìdókòwò rẹ ṣe lọ ní ọ̀sẹ̀ tó kọjá, àti àwọn ọjọ́ àbájáde wọn tó ń bọ̀.';

  @override
  String get benchmarkTitle => 'Ìfiwéra pẹ̀lú S&P 500';

  @override
  String get benchmarkYours => 'Ohun tí o rà';

  @override
  String get benchmarkIndex => 'Iye kan náà nínú S&P 500';

  @override
  String benchmarkAhead(String points) {
    return 'Ó dára ju atọ́ka lọ ní ààmì ìdá-ọgọ́rùn-ún $points';
  }

  @override
  String benchmarkBehind(String points) {
    return 'Ó wà lẹ́yìn atọ́ka ní ààmì ìdá-ọgọ́rùn-ún $points';
  }

  @override
  String get benchmarkHint =>
      'Bí ẹni pé owó ọjà kọ̀ọ̀kan tí o rà ni a fi sínú owó-àkójọ atọ́ka S&P 500 ní ọjọ́ kan náà. Kò kan èrè ìpín; èrè àtẹ̀yìnwá kò sọ tẹ́lẹ̀ èrè ọjọ́ iwájú.';

  @override
  String get portfolioSell => 'Tà á';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Ta $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Iye owó títà fún ìpín kọ̀ọ̀kan ($currency)';
  }

  @override
  String get portfolioSellDate => 'Ọjọ́ títà';

  @override
  String get portfolioSellAll => 'Gbogbo rẹ̀';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Ìpín $quantity ni o ní';
  }

  @override
  String get portfolioSold => 'Títà';

  @override
  String get portfolioRealized => 'Tí a rí gbà';

  @override
  String get portfolioClosed => 'Àwọn ohun ìní tí a ti tà';

  @override
  String get portfolioClosedNote => 'Gbogbo ìpín ni a ti tà';

  @override
  String get portfolioTransactions => 'Àwọn ìdúnàdúrà';

  @override
  String get portfolioRealizedByYear => 'Èrè tí a rí gbà lọ́dọọdún';

  @override
  String get portfolioRealizedHint =>
      'A máa ń kọ́kọ́ so títà mọ́ àwọn ìrajà rẹ tó pẹ́ jù lọ (FIFO), a sì ń yí i padà ní ìwọ̀n pàṣípààrọ̀ ti òní. Fún ìfisùn owó-orí rẹ, lo ìwé ìṣirò alágbàtà rẹ.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Láti ìgbà ìtúpalẹ̀ yìí, àbájáde ìdámẹ́rin ọdún tuntun ti jáde ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Àbájáde tuntun';

  @override
  String get portfolioImportBrokers =>
      'A tún ń dá àwọn àgbéjáde láti Revolut, Trading 212 àti Interactive Brokers mọ̀, pẹ̀lú àwọn títà; a máa ń fo èrè ìpín àti owó ìfipamọ́ sílẹ̀.';

  @override
  String get portfolioImportFile => 'Yan fáìlì kan';

  @override
  String offlineBanner(String time) {
    return 'Kò sí ìsopọ̀ – à ń fi dátà tí a fipamọ́ kẹ́yìn hàn ($time).';
  }

  @override
  String get glossMarketCap =>
      'Iye tí gbogbo ilé-iṣẹ́ náà tó lórí ọjà ìpín: iye owó ìpín × iye ìpín.';

  @override
  String get glossSharesOutstanding =>
      'Iye ìpín tí ilé-iṣẹ́ náà ti gbé jáde. Tí ó bá pọ̀ sí i, ìpín kọ̀ọ̀kan á ní ipa tó kéré; ríra ìpín padà máa ń dín in kù.';

  @override
  String get glossPeTrailing =>
      'Iye owó ÷ èrè fún ìpín kọ̀ọ̀kan láàrin oṣù 12 sẹ́yìn: iye ọdún èrè ìsinsìnyí tí o ń san fún. Èyí tó kéré jù ni ó din owó jù, ṣùgbọ́n àwọn ilé-iṣẹ́ tó ń dàgbà kíákíá sábà máa ń ní P/E gíga.';

  @override
  String get glossPeForward =>
      'Bí P/E, ṣùgbọ́n pẹ̀lú èrè tí àwọn onímọ̀ ìtúpalẹ̀ ń retí fún oṣù 12 tó ń bọ̀. Tí ó bá kéré ju P/E tó kọjá lọ, a retí pé èrè yóò pọ̀ sí i.';

  @override
  String get glossPb =>
      'Iye owó ÷ iye ìwé (dúkìá yọ gbèsè kúrò) fún ìpín kọ̀ọ̀kan. Ní àyíká 1 túmọ̀ sí pé ọjà ń díye lé ilé-iṣẹ́ náà bí ohun tó ní lórí ìwé.';

  @override
  String get glossPs =>
      'Iye ọjà ÷ owó tó wọlé lọ́dún. Ó wúlò fún àwọn ilé-iṣẹ́ tí èrè wọn ṣì kéré tàbí tí kò sí; ṣe àfiwé rẹ̀ nínú iṣẹ́ kan náà.';

  @override
  String get glossEvToFcf =>
      'Iye ilé-iṣẹ́ pẹ̀lú gbèsè (EV) ÷ owó tí ó ń pa jọ láàrin ọdún kan lẹ́yìn ìdókòwò. Èyí tó kéré túmọ̀ sí pé o ń rí owó púpọ̀ sí i fún iye tí o san.';

  @override
  String get glossPeg =>
      'P/E ÷ ìdàgbàsókè èrè ọdọọdún tí a retí (%). Ní àyíká 1 ni a sábà máa ń kà sí déédéé; ó ń wo P/E ní ìmọ́lẹ̀ ìdàgbàsókè.';

  @override
  String get glossEps =>
      'Èrè fún ìpín kọ̀ọ̀kan láàrin oṣù 12 sẹ́yìn. EPS tó ń gòkè láti ọdún dé ọdún jẹ́ ọ̀kan lára àmì tó lágbára jù lọ ti ilé-iṣẹ́ tó ní ìlera.';

  @override
  String get glossBeta =>
      'Bí ìpín náà ṣe máa ń rìn pẹ̀lú ọjà tó: 1 = bí ọjà, 1.5 = ìyípadà tó tóbi sí i ní nǹkan bí 50%, nísàlẹ̀ 1 = ó farabalẹ̀ jù.';

  @override
  String get glossRevenueTtm =>
      'Gbogbo ọjà tí wọ́n tà láàrin oṣù 12 sẹ́yìn, ṣáájú ìnáwó kankan.';

  @override
  String get glossNetIncomeTtm =>
      'Èrè tó kù lẹ́yìn gbogbo ìnáwó, èlé àti owó-orí láàrin oṣù 12 sẹ́yìn.';

  @override
  String get glossGrossMargin =>
      'Ìpín owó tó wọlé tó kù lẹ́yìn ìnáwó tààrà lórí àwọn ọjà. Ìpín gíga sábà máa ń fi agbára láti pinnu iye owó hàn.';

  @override
  String get glossOperatingMargin =>
      'Ìpín owó tó wọlé tó kù lẹ́yìn ìnáwó ṣíṣe iṣẹ́ (owó-oṣù, owó ilé, ìpolówó), ṣáájú èlé àti owó-orí.';

  @override
  String get glossNetMargin =>
      'Ìpín owó tó wọlé tó di èrè ìkẹyìn. 20% túmọ̀ sí pé nínú gbogbo 100 tí wọ́n tà, 20 jẹ́ èrè.';

  @override
  String get glossRoe =>
      'Èrè lórí olú-owó (ROE): èrè ọdọọdún ÷ olú-owó àwọn olóhun. Ó fi hàn bí àwọn alákòóso ṣe ń lo owó àwọn onípìn-ín dáadáa tó; lókè nǹkan bí 15% lágbára.';

  @override
  String get glossRoa =>
      'Èrè lórí dúkìá (ROA): èrè ọdọọdún ÷ gbogbo ohun tí ilé-iṣẹ́ náà ní. Ṣe àfiwé rẹ̀ nínú iṣẹ́ kan náà.';

  @override
  String get glossDebtToEquity =>
      'Gbèsè ÷ olú-owó àwọn olóhun. Èyí tó ga túmọ̀ sí owó yíyá púpọ̀: ewu tó pọ̀ sí i tí èlé bá gòkè tàbí tí iṣẹ́ bá dẹwọ́.';

  @override
  String get glossCurrentRatio =>
      'Dúkìá ìgbà kúkúrú ÷ owó tí wọ́n gbọ́dọ̀ san láàrin ọdún kan. Lókè 1 túmọ̀ sí pé ilé-iṣẹ́ náà lè san àwọn owó tó súnmọ́.';

  @override
  String get glossRevenueGrowth =>
      'Bí owó tó wọlé ṣe pọ̀ sí i tó ní ìfiwéra pẹ̀lú ọdún kan sẹ́yìn.';

  @override
  String get glossEpsGrowth =>
      'Bí èrè fún ìpín kọ̀ọ̀kan ṣe pọ̀ sí i tó ní ìfiwéra pẹ̀lú ọdún kan sẹ́yìn.';

  @override
  String get glossDividendYield =>
      'Èrè ìpín ọdọọdún ÷ iye owó ìpín: owó tí ìwọ yóò rí lọ́dún, ní ìpín-ọgọ́rùn-ún ohun tí o san.';

  @override
  String get glossDividendPerShare =>
      'Èrè ìpín tí wọ́n san lórí ìpín kan ní ọdún tó kọjá.';

  @override
  String get glossPayoutRatio =>
      'Ìpín èrè tí wọ́n san jáde gẹ́gẹ́ bí èrè ìpín. Lókè 100% ilé-iṣẹ́ náà ń san ju ohun tó ń pa lọ, èyí tí kì í sábà pẹ́.';

  @override
  String get glossTitle => 'Kí ló túmọ̀ sí?';

  @override
  String get watchNewsTitle => 'Ìròyìn nípa ìpín rẹ';

  @override
  String get undo => 'Dá padà';

  @override
  String get watchSort => 'Tò';

  @override
  String get watchSortOwn => 'Ètò mi';

  @override
  String get watchSortGainers => 'Àwọn tó gòkè jù lọ kọ́kọ́';

  @override
  String get watchSortLosers => 'Àwọn tó lọ sílẹ̀ jù lọ kọ́kọ́';

  @override
  String get watchSortName => 'Nípa àmì ìpín (A–Z)';

  @override
  String get watchHint =>
      'Fa ìdìmú láti tún tò, ra sí òsì láti yọ ọ́ kúrò. Ìlà náà ń fi ọjọ́ 30 tó kọjá hàn.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: ìtúpalẹ̀ rẹ ti ṣetán.';
  }

  @override
  String alertFromCost(String price) {
    return 'Láti inú iye àròpin tí o fi rà á ($price):';
  }

  @override
  String get briefTitle => 'Lónìí pẹ̀lú àwọn ìpín rẹ';

  @override
  String get briefButton => 'Ṣàkópọ̀ òní';

  @override
  String get briefHint =>
      'Àkópọ̀ AI kúkúrú nípa bí àpò-ìdókòwò rẹ àti àwọn àyànfẹ́ rẹ ṣe yí padà lónìí àti ohun tí ìròyìn tuntun ń sọ nípa wọn. Kò ná ìtúpalẹ̀ kankan.';

  @override
  String get briefRefresh => 'Ṣe àtúnṣe';

  @override
  String get sectionEarnings => 'Àbájáde ìdámẹ́rin ọdún';

  @override
  String earningsNext(String date) {
    return 'Ìjábọ̀ tó kàn: $date';
  }

  @override
  String get earningsExpected => 'EPS tí a retí';

  @override
  String get earningsReported => 'EPS tí a kéde';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Dọ́gba tàbí ju EPS tí a retí lọ ní $beats nínú ìdámẹ́rin ọdún $total tó kọjá',
      one: 'Dọ́gba tàbí ju EPS tí a retí lọ ní $beats nínú ìdámẹ́rin ọdún 1',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol yóò kéde àbájáde ìdámẹ́rin ọdún lọ́la';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol ń kéde àbájáde ìdámẹ́rin ọdún lónìí';
  }

  @override
  String get earningsRemindersTitle => 'Ìránnilétí àbájáde';

  @override
  String get earningsRemindersSubtitle =>
      'Ìfitónilétí ní ọjọ́ kan ṣáájú kí àwọn ìpín ààyò rẹ tàbí ti pọ́tífólíò rẹ tó kéde àbájáde ìdámẹ́rin ọdún';

  @override
  String addAllToFavorites(int count) {
    return 'Fi gbogbo rẹ̀ kún àwọn ààyò ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Gbé wọlé láti inú àwòrán ojú-ìbojú';

  @override
  String get holdingsReading => 'À ń ka àwọn ìpín rẹ…';

  @override
  String get holdingsReviewTitle => 'Àwọn ìpín tí a rí';

  @override
  String get holdingsReviewHint =>
      'Ṣàyẹ̀wò àwọn nọ́mbà kí o tó fi wọ́n kún un. Iye owó náà ni iye owó ìrajà àpapọ̀ rẹ fún ìpín kọ̀ọ̀kan, kì í ṣe iye owó òní.';

  @override
  String get holdingsNoPrice => 'Kò sí iye owó ìrajà àpapọ̀ lórí àwòrán náà';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Fi ìpín $count kún un',
      one: 'Fi ìpín 1 kún un',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'A kò rí ìpín kankan lórí àwòrán yìí. Gbìyànjú àwòrán ojú-ìbojú ti ojú-ewé ìpín tàbí dúkìá rẹ lọ́dọ̀ alágbàtà rẹ.';

  @override
  String get week52Range => 'Ìwọ̀n ọ̀sẹ̀ 52';

  @override
  String week52BelowHigh(String percent) {
    return '$percent ní ìsàlẹ̀ ga jùlọ ní ọ̀sẹ̀ 52';
  }

  @override
  String get week52AtHigh => 'Ní ga jùlọ ní ọ̀sẹ̀ 52';

  @override
  String get alertKindTrailing => 'Tí ó bá wálẹ̀ láti òkè';

  @override
  String get alertTrailingPercent => 'Ìwálẹ̀ láti òkè (%)';

  @override
  String get alertTrailingHint =>
      'Ó ń tẹ̀lé iye owó bí ó ṣe ń gòkè: yóò sọ fún ọ nígbà tí iye owó bá wálẹ̀ tó báyìí láti ibi tó ga jùlọ láti ìgbà tí o ti ṣètò rẹ̀.';

  @override
  String alertDescTrailing(String percent) {
    return 'Ìwálẹ̀ $percent láti òkè';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'ibi tó ga jùlọ títí di ìsinsìnyí: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol ti wálẹ̀ $percent láti òkè';
  }

  @override
  String get sectionInsiders => 'Káràkátà àwọn ará inú';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ìrà $count',
      one: 'ìrà 1',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ìtà $count',
      one: 'ìtà 1',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Àpapọ̀: ìpín $shares';
  }

  @override
  String get insiderBuy => 'Ó rà';

  @override
  String get insiderSell => 'Ó tà';

  @override
  String get insiderHint =>
      'Ìrà àti ìtà ní ọjà gbangba láti ọwọ́ àwọn alákòóso àti olùdarí ní ọjọ́ 90 sẹ́yìn (SEC Form 4). A kò ka lílo àṣàyàn (options) àti ìpín ẹ̀bùn.';

  @override
  String get insiderNone =>
      'Kò sí ìrà tàbí ìtà àwọn ará inú ní ọjà gbangba ní ọjọ́ 90 sẹ́yìn.';

  @override
  String get analystTrend => 'Bí èrò ṣe yí padà láti oṣù dé oṣù';

  @override
  String get watchListAll => 'Gbogbo';

  @override
  String get watchListNew => 'Àkójọ tuntun';

  @override
  String get watchListName => 'Orúkọ àkójọ';

  @override
  String get watchListRename => 'Yí orúkọ àkójọ padà';

  @override
  String get watchListDelete => 'Pa àkójọ rẹ́';

  @override
  String get watchListAddTo => 'Fi kún àkójọ';

  @override
  String get watchListEmpty =>
      'Kò tíì sí ìpín kankan nínú àkójọ yìí. Tẹ bọ́tìnnì àkójọ lẹ́gbẹ̀ẹ́ ìpín kan láti fi kún un.';

  @override
  String get portfolioAskTitle => 'Àwọn ìbéèrè nípa àpò ìdókòwò rẹ';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'Ẹ̀dà ìpamọ́';

  @override
  String get backupSave => 'Fi ẹ̀dà ìpamọ́ pamọ́';

  @override
  String get backupSaveHint =>
      'Àwọn ààyò rẹ, àkójọ, àpò ìdókòwò, ìkìlọ̀ àti àkọsílẹ̀ rẹ nínú fáìlì kan.';

  @override
  String get backupRestore => 'Dá padà láti ẹ̀dà ìpamọ́';

  @override
  String get backupRestoreHint =>
      'Ó ń fi ohun tó wà nínú fáìlì kún un; kò sí ohun tí o ní báyìí tí a ó pa rẹ́.';

  @override
  String get backupRestored => 'A ti dá ẹ̀dà ìpamọ́ padà.';

  @override
  String get backupInvalid => 'Fáìlì yìí kì í ṣe ẹ̀dà ìpamọ́ WhatStock.';

  @override
  String get allocationPositions => 'Ìpín';

  @override
  String get allocationSectors => 'Ẹ̀ka';

  @override
  String get allocationCurrencies => 'Owó';

  @override
  String get compareReturn1y => 'Èrè ọdún 1';

  @override
  String get compareFromHigh => 'Láti ga jùlọ ní ọ̀sẹ̀ 52';

  @override
  String get briefAutoTitle => 'Àkópọ̀ ojoojúmọ́ ní òwúrọ̀ kọ̀ọ̀kan';

  @override
  String get briefAutoSubtitle =>
      '“Lónìí pẹ̀lú àwọn ìpín rẹ” máa ń ṣe ara rẹ̀ lẹ́yìn 7:00 òwúrọ̀ nígbà tí áàpù náà bá ń ṣiṣẹ́; lórí kọ̀ǹpútà, ìfitónilétí kan yóò sọ fún ọ. Ó ń lo ìwọ̀n ìbéèrè ojoojúmọ́ rẹ, kì í ṣe ìtúpalẹ̀.';

  @override
  String get targetsButton => 'Ìpínkiri àfojúsùn';

  @override
  String get targetsTitle => 'Ìpínkiri àfojúsùn';

  @override
  String get targetsHint =>
      'Ṣètò iye ìpín àpò-ìdókòwò tí ìpín kọ̀ọ̀kan yẹ kí ó ní. Fi àyè sílẹ̀ ní òfo bí kò bá sí àfojúsùn. Lẹ́yìn náà áàpù yóò fi ohun tí o yẹ kí o rà tàbí tà hàn.';

  @override
  String targetsSum(String percent) {
    return 'Àpapọ̀: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Rà á ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Tà á ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Ó wà ní àfojúsùn';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol ré EPS tí a retí kọjá';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol kò dé EPS tí a retí';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'EPS tí a kéde $actual, tí a retí $estimate';
  }

  @override
  String get newsExplain => 'Kí ni èyí túmọ̀ sí?';

  @override
  String get watchAlertAll => 'Ìkìlọ̀ fún ìyípadà ńlá ojoojúmọ́';

  @override
  String get watchAlertAllHint =>
      'Ìkìlọ̀ iye owó fún gbogbo ìpín inú àkójọ yìí tí yóò dún nígbà tí ó bá yí padà tó báyìí ní ọjọ́ kan, sókè tàbí sísàlẹ̀. Àwọn tí ó ti ní ọ̀kan tẹ́lẹ̀ yóò pa tiwọn mọ́.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'A ti ṣètò ìkìlọ̀ $count',
      one: 'A ti ṣètò ìkìlọ̀ 1',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Gbé èrè tí a ti rí jáde (CSV)';

  @override
  String get portfolioAnnualReturn => 'Èrè ọdọọdún';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / ọdún';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Èrè ọdọọdún tí a wọ̀n pẹ̀lú owó (XIRR): ó ń ka ìgbà tí o rà àti tí o tà sí, nítorí náà owó tí o fi kún un lẹ́yìn kò ní yí i po. A máa ń fi hàn nígbà tí ìrajà rẹ àkọ́kọ́ bá ti pé ọdún kan ó kéré tán; èrè ìpín kò sí nínú rẹ̀.';

  @override
  String get eventsAddToCalendar => 'Fi kún kàlẹ́ńdà (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Ìkìlọ̀ pọ́tífólíò';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Ìfitónilétí nígbà tí gbogbo pọ́tífólíò rẹ bá yí padà tó báyìí ní ọjọ́ kan.';

  @override
  String get portfolioMoveAlertOff => 'Pípa';

  @override
  String portfolioMoveUp(String percent) {
    return 'Pọ́tífólíò rẹ ti gòkè $percent lónìí';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Pọ́tífólíò rẹ ti lọ sílẹ̀ $percent lónìí';
  }

  @override
  String get whatIfTitle => 'Tí o bá ti dókòwò ńkọ́?';

  @override
  String get whatIfAmount => 'Iye owó';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount tí o dókòwò ní $period sẹ́yìn ìbá tó lónìí';
  }

  @override
  String get whatIfNote =>
      'Ó dá lórí iye owó ìpín nìkan: èrè ìpín, owó iṣẹ́ àti owó orí kò sí nínú rẹ̀. Èrè àtẹ̀yìnwá kò sọ tọjọ́ iwájú.';

  @override
  String get watchShare => 'Pín àkójọ náà';

  @override
  String get watchImport => 'Ṣàfikún àmì ìpín';

  @override
  String get watchImportHint =>
      'Lẹ àwọn àmì ìpín tí a fi kọ́mà, àlàfo tàbí ìlà tuntun yà sọ́tọ̀ – fún àpẹẹrẹ, àkójọ tí ẹnìkan pín fún ọ.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'A ti fi ìpín $count kún un',
      one: 'A ti fi ìpín 1 kún un',
      zero: 'Kò sí ìpín tuntun',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Àwọn tó tóbi jù lọ kọ́kọ́';

  @override
  String get positionsSortGain => 'Èrè àpapọ̀ tó ga jù lọ kọ́kọ́';

  @override
  String get positionsSortToday => 'Àwọn tó dára jù lónìí kọ́kọ́';

  @override
  String get chartMyBuys => 'Àwọn ìrajà rẹ';

  @override
  String get chartMySells => 'Àwọn ìtajà rẹ';

  @override
  String get shortcutsTitle => 'Àwọn ọ̀nà àbùjá kíbọ́ọ̀dù';

  @override
  String usMarketOpen(String time) {
    return 'Ọjà Amẹ́ríkà ṣí sílẹ̀ · yóò tì ní $time sí i';
  }

  @override
  String usMarketClosed(String time) {
    return 'Ọjà Amẹ́ríkà ti tì · yóò ṣí ní $time sí i';
  }

  @override
  String durationMinutes(int minutes) {
    return 'ìṣẹ́jú $minutes';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return 'wákàtí $hours ìṣẹ́jú $minutes';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return 'ọjọ́ $days wákàtí $hours';
  }

  @override
  String get portfolioGoalSet => 'Ṣètò àfojúsùn';

  @override
  String get portfolioGoalTitle => 'Àfojúsùn àpò ìdókòwò';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · Àfojúsùn: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'O ti dé àfojúsùn: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Yọ àfojúsùn kúrò';

  @override
  String get alertEdit => 'Ṣàtúnṣe ìkìlọ̀';

  @override
  String get positionOpenLots => 'Ṣì wà lọ́wọ́ rẹ (èyí tó pẹ́ jù lọ kọ́kọ́)';

  @override
  String get lotRemoved => 'A ti pa ìdúnàdúrà rẹ́';

  @override
  String get alertDeleted => 'A ti pa ìkìlọ̀ rẹ́';

  @override
  String get alertsClearTriggered => 'Pa àwọn ìkìlọ̀ tó ti ṣẹlẹ̀ rẹ́';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'A ti pa ìkìlọ̀ $count rẹ́',
      one: 'A ti pa ìkìlọ̀ 1 rẹ́',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Ojú-ìwé àkọ́kọ́';

  @override
  String get allocationCountries => 'Orílẹ̀-èdè';

  @override
  String get newsExplainNoteResearch =>
      'Àlàyé AI: ó ń wá òtítọ́ lórí ayélujára, ó ń ṣí àpilẹ̀kọ náà, ó sì ń ṣàyẹ̀wò bí orísun náà ṣe ṣeé gbẹ́kẹ̀lé tó. Kì í ṣe ìmọ̀ràn ìdókòwò. Ó ń lo ìwọ̀n ìbéèrè ojoojúmọ́ rẹ, kì í ṣe ìtúpalẹ̀.';

  @override
  String get sourceOfficial => 'Ti àṣẹ';

  @override
  String get sourcePressRelease => 'Ìkéde';

  @override
  String get sourceMajorNews => 'Ìròyìn ńlá';

  @override
  String get sourceOpinion => 'Èrò';

  @override
  String get earningsSummaryButton => 'Kí ló wà nínú ìròyìn tó kẹ́yìn?';

  @override
  String get earningsSummaryNote =>
      'Àkópọ̀ AI ti ìkéde àbájáde ilé-iṣẹ́ náà àti ìròyìn àwọn oníròyìn tí ó rí lórí ayélujára. Kì í ṣe ìmọ̀ràn ìdókòwò. Ó ń lo ìwọ̀n ìbéèrè ojoojúmọ́ rẹ, kì í ṣe ìtúpalẹ̀.';

  @override
  String get compareLastSurprise => 'EPS ìdámẹ́rin tó kọjá vs tí a retí';

  @override
  String get compareNextReport => 'Ìjábọ̀ tó kàn';

  @override
  String get resolvingDescription => 'À ń wá ìpín tí o ní lọ́kàn…';

  @override
  String get instrumentTitle => 'Nípa ohun èlò ìdókòwò yìí';

  @override
  String get instrumentHint =>
      'Kò sí ìwé ìdánimọ̀ ilé-iṣẹ́ fún àmì yìí – ó lè jẹ́ ETF, owó-ìkójọpọ̀ tàbí ìwé-ẹ̀rí ìfowópamọ́. Béèrè lọ́wọ́ AI kí ni, kí ló wà nínú rẹ̀ àti iye tí ó ná.';

  @override
  String get instrumentAsk => 'Kí nìyí?';

  @override
  String get instrumentNote =>
      'Àlàyé AI láti ojú-ìwé owó-ìkójọpọ̀ ti olùpèsè àti àwọn ojú-òpó ètò ìnáwó tí ó rí lórí ayélujára. Kì í ṣe ìmọ̀ràn ìdókòwò. Ó ń lo ìwọ̀n ìbéèrè ojoojúmọ́ rẹ, kì í ṣe ìtúpalẹ̀.';

  @override
  String suggestAskAi(String query) {
    return 'Béèrè lọ́wọ́ AI: “$query”';
  }
}
