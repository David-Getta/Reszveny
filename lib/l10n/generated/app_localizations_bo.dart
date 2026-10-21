// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tibetan (`bo`).
class AppLocalizationsBo extends AppLocalizations {
  AppLocalizationsBo([String locale = 'bo']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'ཧུར་ཁག་ཅིག་གི་པར་བླངས་ནས་དེའི་སྐོར་ཚང་མ་ཤེས་རྟོགས་གནང་།';

  @override
  String get homeHint =>
      'ཧུར་ཁག་ལག་འཁྱེར། ཧུར་ཁག་ཉོ་ཚོང་ཉེར་སྤྱོད་ཀྱི་བརྙན་ཡོལ། ཚགས་པར་རམ་ཀུང་སིའི་མཚོན་རྟགས། – ཧུར་ཁག་ངོས་འཛིན་ཐུབ་པའི་དངོས་པོ་གང་ཡིན་ཡང་ཆོག';

  @override
  String get takePhoto => 'པར་ལེན';

  @override
  String get chooseFromGallery => 'པར་མཛོད་ནས་འདེམས';

  @override
  String get chooseImage => 'པར་རིས་འདེམས';

  @override
  String get enterTickerManually => 'ཨང་རྟགས་ལག་ཐོག་ནས་འཇུག';

  @override
  String get tickerInputLabel => 'ཧུར་ཁག་ཨང་རྟགས';

  @override
  String get tickerInputHint => 'དཔེར་ན། AAPL';

  @override
  String get lookUp => 'འཚོལ';

  @override
  String demoModeBanner(String symbols) {
    return 'དཔེ་སྟོན་རྣམ་པ། – ཁྲོམ་རའི་གཞི་གྲངས་ལྡེ་མིག་སྒྲིག་འགོད་བྱས་མེད། གཤམ་གྱི་ཧུར་ཁག་ལ་དཔེ་གཞིའི་གཞི་གྲངས་ཡོད། $symbols།';
  }

  @override
  String get recognizing => 'པར་རིས་དབྱེ་ཞིབ་བྱེད་བཞིན་པ…';

  @override
  String get loadingData => 'གཞི་གྲངས་འཇུག་བཞིན་པ…';

  @override
  String get noCandidatesTitle => 'ཧུར་ཁག་ངོས་འཛིན་མ་ཐུབ';

  @override
  String get noCandidatesBody =>
      'པར་རིས་འདིའི་ནང་ཧུར་ཁག་ངོས་འཛིན་བྱེད་མ་ཐུབ། པར་གསལ་པོ་ཞིག་ལེན་པའམ་ཨང་རྟགས་ལག་ཐོག་ནས་འཇུག་གནང་།';

  @override
  String get whatWeSaw => 'ང་ཚོས་མཐོང་བ';

  @override
  String get chooseCandidateTitle => 'ཁྱེད་ཀྱིས་ཧུར་ཁག་གང་ཞིག་གསུངས་པ་ཡིན་ནམ།';

  @override
  String confidencePercent(int percent) {
    return 'ཡིད་ཆེས་ཚད $percent%';
  }

  @override
  String get settings => 'སྒྲིག་འགོད';

  @override
  String get language => 'སྐད་ཡིག';

  @override
  String get systemLanguage => 'མ་ལག་གི་སྔོན་སྒྲིག';

  @override
  String get about => 'ངོ་སྤྲོད';

  @override
  String get disclaimer =>
      'ཉེར་སྤྱོད་འདིས་ཆ་འཕྲིན་ཙམ་མཁོ་སྤྲོད་བྱེད་པ་ལས་མ་འཇོག་གི་བསམ་འཆར་མིན། གཞི་གྲངས་ལ་འགོར་འཕྱི་དང་ནོར་འཁྲུལ་ཡོད་སྲིད།';

  @override
  String dataSource(String source) {
    return 'གཞི་གྲངས་འབྱུང་ཁུངས: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'ངོས་འཛིན: $source';
  }

  @override
  String get retry => 'ཡང་བསྐྱར་ཚོད་ལྟ';

  @override
  String get cancel => 'ཕྱིར་འཐེན';

  @override
  String get ok => 'འགྲིག';

  @override
  String get close => 'ཁ་རྒྱག';

  @override
  String get errorGeneric => 'ནོར་འཁྲུལ་ཞིག་བྱུང་།';

  @override
  String get errorSectionUnavailable => 'དུམ་མཚམས་འདི་འཇུག་མ་ཐུབ།';

  @override
  String get notAvailable => 'མེད';

  @override
  String get sectionIdentity => 'ངོས་འཛིན་ཆ་འཕྲིན';

  @override
  String get sectionPrice => 'གོང་ཚད';

  @override
  String get sectionValuation => 'རིན་ཐང་བརྩི་འཇོག';

  @override
  String get sectionFinancials => 'དངུལ་ལས་གནས་ཚུལ';

  @override
  String get sectionDividend => 'ཁེ་བགོ';

  @override
  String get sectionProfile => 'ཀུང་སིའི་ངོ་སྤྲོད';

  @override
  String get sectionAnalysts => 'དབྱེ་ཞིབ་པའི་བསམ་འཆར';

  @override
  String get sectionNews => 'གསར་འགྱུར';

  @override
  String get sectionRecognition => 'ངོས་འཛིན་ཞིབ་ཕྲ';

  @override
  String get labelSymbol => 'ཨང་རྟགས';

  @override
  String get labelExchange => 'ཉོ་ཚོང་ཁང';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'དངུལ་ལོར';

  @override
  String get labelCountry => 'རྒྱལ་ཁབ';

  @override
  String get labelIndustry => 'ལས་རིགས';

  @override
  String get labelSector => 'སྡེ་ཚན';

  @override
  String get labelWebsite => 'དྲ་ཚིགས';

  @override
  String get labelIpoDate => 'IPO ཚེས་གྲངས';

  @override
  String get labelMarketCap => 'ཁྲོམ་རའི་རིན་ཐང';

  @override
  String get labelSharesOutstanding => 'རྒྱུ་འགྲུལ་ཧུར་ཁག';

  @override
  String get labelEmployees => 'ལས་བྱེད་པ';

  @override
  String get labelCeo => 'སྤྱི་ཁྱབ་འགོ་འཛིན';

  @override
  String get labelHeadquarters => 'དབུ་ཁང';

  @override
  String get labelDescription => 'གསལ་བཤད';

  @override
  String get labelLastPrice => 'གོང་ཚད་གསར་ཤོས';

  @override
  String get labelChange => 'འགྱུར་ལྡོག';

  @override
  String get labelOpen => 'སྒོ་འབྱེད་གོང་ཚད';

  @override
  String get labelDayHigh => 'ཉིན་དེའི་མཐོ་ཤོས';

  @override
  String get labelDayLow => 'ཉིན་དེའི་དམའ་ཤོས';

  @override
  String get labelPreviousClose => 'སྔོན་མའི་སྒོ་རྒྱག་གོང་ཚད';

  @override
  String get labelWeek52High => 'གཟའ་འཁོར་ 52 ནང་གི་མཐོ་ཤོས';

  @override
  String get labelWeek52Low => 'གཟའ་འཁོར་ 52 ནང་གི་དམའ་ཤོས';

  @override
  String get labelAverageVolume10d => 'ཉོ་ཚོང་ཚད་ཆ་སྙོམས (ཉིན་ 10)';

  @override
  String updatedAt(String time) {
    return 'གསར་སྒྱུར: $time';
  }

  @override
  String get labelPeTrailing => 'P/E (འདས་པ)';

  @override
  String get labelPeForward => 'P/E (མ་འོངས)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / རང་དབང་དངུལ་རྒྱུན';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'བེ་ཊ';

  @override
  String get labelRevenueTtm => 'ཡོང་འབབ (TTM)';

  @override
  String get labelNetIncomeTtm => 'ཁེ་སྤོགས་གཙང་མ (TTM)';

  @override
  String get labelGrossMargin => 'ཁེ་སྤོགས་ཧྲིལ་པོའི་ཚད';

  @override
  String get labelOperatingMargin => 'ལས་སྒོའི་ཁེ་སྤོགས་ཚད';

  @override
  String get labelNetMargin => 'ཁེ་སྤོགས་གཙང་མའི་ཚད';

  @override
  String get labelRoe => 'རང་མ་རྩའི་ཁེ་འབབ་ཚད';

  @override
  String get labelRoa => 'རྒྱུ་ནོར་གྱི་ཁེ་འབབ་ཚད';

  @override
  String get labelDebtToEquity => 'བུ་ལོན / རང་མ་རྩ';

  @override
  String get labelCurrentRatio => 'རྒྱུ་འགྲུལ་བསྡུར་ཚད';

  @override
  String get labelRevenueGrowth => 'ཡོང་འབབ་འཕེལ་ཚད (YoY)';

  @override
  String get labelEpsGrowth => 'EPS འཕེལ་ཚད (YoY)';

  @override
  String get labelDividendYield => 'ཁེ་བགོའི་ཁེ་འབབ་ཚད';

  @override
  String get labelDividendPerShare => 'ཧུར་ཁག་རེའི་ཁེ་བགོ';

  @override
  String get labelPayoutRatio => 'ཁེ་བགོའི་བསྡུར་ཚད';

  @override
  String get labelConsensus => 'མཐུན་མོང་བསམ་འཆར';

  @override
  String get ratingStrongBuy => 'ཤུགས་ཆེར་ཉོ';

  @override
  String get ratingBuy => 'ཉོ';

  @override
  String get ratingHold => 'ཉར';

  @override
  String get ratingSell => 'འཚོང';

  @override
  String get ratingStrongSell => 'ཤུགས་ཆེར་འཚོང';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'དབྱེ་ཞིབ་པ་ $count',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'དུས་ཡུན: $period';
  }

  @override
  String get noNews => 'ཉེ་ཆར་གསར་འགྱུར་མེད།';

  @override
  String get openArticle => 'རྩོམ་ཡིག་ཁ་ཕྱེ';

  @override
  String get openLinkFailed => 'སྦྲེལ་མཐུད་ཁ་ཕྱེ་མ་ཐུབ།';

  @override
  String get recognitionSummary => 'བསྡུས་དོན';

  @override
  String get recognitionEvidence => 'དེ་ལྟར་བསམ་པའི་རྒྱུ་མཚན';

  @override
  String get recognitionRawText => 'པར་རིས་ནས་ཀློག་པའི་ཡི་གེ';

  @override
  String get errMissingAnthropicKey =>
      'པར་རིས་ངོས་འཛིན་སྒྲིག་འགོད་བྱས་མེད (ANTHROPIC_API_KEY མེད)། ཨང་རྟགས་ལག་ཐོག་ནས་འཇུག་གནང་།';

  @override
  String get errRecognitionUnreachable =>
      'ངོས་འཛིན་ཞབས་ཞུར་འབྲེལ་མཐུད་བྱེད་མ་ཐུབ། དྲ་རྒྱའི་འབྲེལ་མཐུད་ལ་ཞིབ་བཤེར་གནང་།';

  @override
  String errRecognitionHttp(String status) {
    return 'ངོས་འཛིན་ཞབས་ཞུས་ནོར་འཁྲུལ་སླར་སྤྲོད་བྱས (HTTP $status)།';
  }

  @override
  String get errRecognitionRefused =>
      'ངོས་འཛིན་ཞབས་ཞུས་པར་རིས་འདི་ཐག་གཅོད་བྱེད་མ་ཐུབ།';

  @override
  String get errRecognitionTruncated =>
      'ངོས་འཛིན་གྱི་ལན་བར་ཆད་བྱུང་། ཡང་བསྐྱར་ཚོད་ལྟ་གནང་།';

  @override
  String get errRecognitionBadResponse =>
      'ངོས་འཛིན་ཞབས་ཞུ་ནས་རེ་སྒུག་མེད་པའི་ལན་བྱུང་།';

  @override
  String get errRecognitionEmpty => 'ངོས་འཛིན་ཞབས་ཞུས་ལན་སྟོང་པ་སླར་སྤྲོད་བྱས།';

  @override
  String get errMissingFinnhubKey =>
      'ཁྲོམ་རའི་གཞི་གྲངས་སྒྲིག་འགོད་བྱས་མེད (FINNHUB_API_KEY མེད)།';

  @override
  String get errMarketUnreachable =>
      'ཁྲོམ་རའི་གཞི་གྲངས་ཞབས་ཞུར་འབྲེལ་མཐུད་བྱེད་མ་ཐུབ། དྲ་རྒྱའི་འབྲེལ་མཐུད་ལ་ཞིབ་བཤེར་གནང་།';

  @override
  String get errMarketRateLimited =>
      'ཁྲོམ་རའི་གཞི་གྲངས་ཞབས་ཞུར་རེ་ཞུ་མང་དྲགས་འདུག སྐར་མ་གཅིག་སྒུག་རོགས་གནང་།';

  @override
  String errMarketHttp(String status) {
    return 'ཁྲོམ་རའི་གཞི་གྲངས་ཞབས་ཞུས་ནོར་འཁྲུལ་སླར་སྤྲོད་བྱས (HTTP $status)།';
  }

  @override
  String get errMarketBadResponse =>
      'ཁྲོམ་རའི་གཞི་གྲངས་ཞབས་ཞུ་ནས་རེ་སྒུག་མེད་པའི་ལན་བྱུང་།';

  @override
  String errNoQuote(String symbol) {
    return '$symbol ཡི་གོང་ཚད་གཞི་གྲངས་རྙེད་མ་བྱུང་།';
  }

  @override
  String errNoProfile(String symbol) {
    return '$symbol ཡི་ཀུང་སིའི་ངོ་སྤྲོད་རྙེད་མ་བྱུང་།';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'དཔེ་སྟོན་རྣམ་པས་ $symbols ཁོ་ན་རྒྱབ་སྐྱོར་བྱེད། ཐད་གཏོང་གཞི་གྲངས་ཆེད་དུ་ FINNHUB_API_KEY ཁ་སྣོན་གནང་།';
  }

  @override
  String errUnknown(String detail) {
    return 'ནོར་འཁྲུལ་བྱུང་: $detail';
  }

  @override
  String get newSearch => 'འཚོལ་ཞིབ་གསར་པ';

  @override
  String get recentSearches => 'ཉེ་ཆར';

  @override
  String get noRecentSearches => 'ད་ལྟའི་བར་ཉེ་ཆར་འཚོལ་ཞིབ་མེད།';

  @override
  String get clearRecent => 'ཉེ་ཆར་བ་སུབ';

  @override
  String get greeting => 'ཧུར་ཁག་གང་ལ་ལྟ་རྒྱུ་ཡིན།';

  @override
  String get searchHint => 'ཨང་རྟགས་སམ་ཀུང་སིའི་མིང';

  @override
  String get attachImage => 'པར་རིས་མཉམ་སྦྱར';

  @override
  String get searchResultsTitle => 'འཚོལ་ཞིབ་ཀྱི་འབྲས་བུ';

  @override
  String errNoResults(String query) {
    return '“$query” ལ་ཧུར་ཁག་རྙེད་མ་བྱུང་།';
  }

  @override
  String get quickBarHint => 'ཨང་རྟགས་སམ་ཀུང་སིའི་མིང་འབྲི…';

  @override
  String get openFullWindow => 'སྒེའུ་ཁུང་ཁ་ཕྱེ';

  @override
  String hotkeyHint(String shortcut) {
    return 'WhatStock འབོད་པར་གནས་གང་དུ་ཡང་ $shortcut མནན།';
  }

  @override
  String get trayOpen => 'WhatStock ཁ་ཕྱེ';

  @override
  String get trayQuickSearch => 'མྱུར་འཚོལ';

  @override
  String get trayQuit => 'ཕྱིར་ཐོན';

  @override
  String get appearance => 'ཕྱི་ཚུལ';

  @override
  String get themeSystem => 'མ་ལག';

  @override
  String get themeDark => 'མདོག་ནག';

  @override
  String get themeLight => 'མདོག་དཀར';

  @override
  String get back => 'ཕྱིར་ལོག';

  @override
  String get aiSectionTitle => 'AI དབྱེ་ཞིབ';

  @override
  String get aiIntro =>
      'AI ཡིས་བྲིས་པའི་ཞིབ་ཕྲའི་སྤྱི་བཤད། ཉེ་ཆར་གསར་འགྱུར་གྱི་བསྡུས་དོན། ཚོང་ལས། ནུས་ཤུགས། ཉེན་ཁ་དང་སྦས་པའི་རྐྱེན། རིན་ཐང་བརྩི་འཇོག སེམས་ཁམས་རིག་པ། སྤྱི་ཚོགས་རིག་པ། ལག་རྩལ་དང་སྤྱི་ཁྱབ་དཔལ་འབྱོར་གྱི་ལྟ་ཕྱོགས་ནས་གནས་ཚུལ་འདྲ་མིན་ལྡན་པའི་གོང་ཚད་མདུན་ལྟ། དེ་བཞིན་དོ་སྣང་བྱ་དགོས་པའི་གནད་དོན་བཅས།';

  @override
  String get aiGenerate => 'དབྱེ་ཞིབ་བཟོ';

  @override
  String get aiRegenerate => 'ཡང་བསྐྱར་བཟོ';

  @override
  String get aiGenerating =>
      'དབྱེ་ཞིབ་གྲ་སྒྲིག་བྱེད་བཞིན་པ… སྐར་མ་གཅིག་གཉིས་འགོར་སྲིད།';

  @override
  String get aiSources => 'འབྱུང་ཁུངས';

  @override
  String aiGeneratedAt(String time) {
    return 'བཟོས་དུས: $time';
  }

  @override
  String get aiDisclaimer =>
      'སྤྱི་སྤྱོད་གཞི་གྲངས་དང་ཉེ་ཆར་གསར་འགྱུར་ལ་གཞིགས་ནས་ AI ཡིས་བཟོས་པའི་དབྱེ་ཞིབ། དེའི་ནང་ནོར་འཁྲུལ་ཡོད་པའམ་དུས་ཡོལ་བ་ཡིན་སྲིད་ལ། མ་འཇོག་གི་བསམ་འཆར་ཡང་མིན།';

  @override
  String get errAiNotConfigured =>
      'AI དབྱེ་ཞིབ་སྒྲིག་འགོད་བྱས་མེད (ANTHROPIC_API_KEY མེད)།';

  @override
  String get errAiUnreachable =>
      'AI ཞབས་ཞུར་འབྲེལ་མཐུད་བྱེད་མ་ཐུབ། དྲ་རྒྱའི་འབྲེལ་མཐུད་ལ་ཞིབ་བཤེར་གནང་།';

  @override
  String errAiHttp(String status) {
    return 'AI ཞབས་ཞུས་ནོར་འཁྲུལ་སླར་སྤྲོད་བྱས (HTTP $status)།';
  }

  @override
  String get errAiRefused =>
      'AI ཞབས་ཞུས་ཧུར་ཁག་འདིར་དབྱེ་ཞིབ་བྱེད་རྒྱུ་ཁས་མ་བླངས།';

  @override
  String get errAiBadResponse => 'AI ཞབས་ཞུ་ནས་རེ་སྒུག་མེད་པའི་ལན་བྱུང་།';

  @override
  String get sectionChart => 'གོང་ཚད་ཀྱི་རི་མོ';

  @override
  String get rangeOneWeek => 'གཟའ་འཁོར་ 1';

  @override
  String get rangeOneMonth => 'ཟླ་ 1';

  @override
  String get rangeThreeMonths => 'ཟླ་ 3';

  @override
  String get rangeOneYear => 'ལོ་ 1';

  @override
  String get rangeFiveYears => 'ལོ་ 5';

  @override
  String get chartUnavailable =>
      'ད་ལྟའི་གཞི་གྲངས་འབྱུང་ཁུངས་ནས་གོང་ཚད་ལོ་རྒྱུས་མི་ཐོབ།';

  @override
  String get sectionStatements => 'དངུལ་རྩིས་སྙན་ཐོ (ལོ་རེའི)';

  @override
  String get labelFiscalYear => 'དངུལ་རྩིས་ལོ';

  @override
  String get labelRevenue => 'ཡོང་འབབ';

  @override
  String get labelNetIncome => 'ཁེ་སྤོགས་གཙང་མ';

  @override
  String get labelTotalAssets => 'རྒྱུ་ནོར་བསྡོམས';

  @override
  String get labelTotalLiabilities => 'བུ་ལོན་བསྡོམས';

  @override
  String get labelEquity => 'ཧུར་ཁག་བདག་པོའི་དབང་ཆ';

  @override
  String get labelOperatingCashFlow => 'ལས་སྒོའི་དངུལ་རྒྱུན';

  @override
  String get statementsUnavailable => 'ཧུར་ཁག་འདིའི་དངུལ་རྩིས་སྙན་ཐོ་མི་ཐོབ།';

  @override
  String get launchAtLogin => 'ནང་འཛུལ་དུས་འགོ་འཛུགས';

  @override
  String get hotkeyLabel => 'ཡོངས་ཁྱབ་མྱུར་མཐེབ';

  @override
  String get hotkeyRecordHint => 'འདིར་རྐྱང་རྡེབ་བྱས་རྗེས་མཐེབ་སྡེབ་གསར་པ་མནན';

  @override
  String get hotkeyReset => 'སྔོན་སྒྲིག་ལ་སླར་གསོ';

  @override
  String get pasteImage => 'དྲས་སྦྱར་པང་ནས་པར་རིས་སྦྱར';

  @override
  String get errClipboardNoImage => 'དྲས་སྦྱར་པང་ནང་པར་རིས་མེད།';

  @override
  String get favorites => 'དགའ་མོས';

  @override
  String get addToFavorites => 'དགའ་མོས་སུ་སྣོན';

  @override
  String get removeFromFavorites => 'དགའ་མོས་ནས་སུབ';

  @override
  String get noFavorites =>
      'ད་ལྟའི་བར་དགའ་མོས་མེད། ཁ་སྣོན་བྱེད་པར་ཧུར་ཁག་གི་སྐར་མ་ལ་མནན།';

  @override
  String get displayCurrency => 'མངོན་སྟོན་དངུལ་ལོར';

  @override
  String get displayCurrencyNone => 'ཧུར་ཁག་རང་གི་དངུལ་ལོར་ཁོ་ན';

  @override
  String labelConverted(String currency) {
    return '≈ $currency ལ་བསྒྱུར་ན';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'བརྗེ་ཚད: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'གསར་སྒྱུར';

  @override
  String currentVersion(String version) {
    return 'པར་གཞི $version';
  }

  @override
  String get autoUpdate => 'གསར་སྒྱུར་རང་འགུལ་གྱིས་སྒྲིག་འཇུག';

  @override
  String get checkForUpdates => 'གསར་སྒྱུར་ཞིབ་བཤེར';

  @override
  String get updateChecking => 'གསར་སྒྱུར་ཞིབ་བཤེར་བྱེད་བཞིན་པ…';

  @override
  String get updateUpToDate =>
      'ཁྱེད་ཀྱིས་པར་གཞི་གསར་ཤོས་བེད་སྤྱོད་གནང་བཞིན་ཡོད།';

  @override
  String updateAvailable(String version) {
    return 'པར་གཞི $version ཐོབ་ཐུབ།';
  }

  @override
  String get updateDownloading => 'རྒྱབ་ལྗོངས་སུ་གསར་སྒྱུར་ཕབ་ལེན་བྱེད་བཞིན་པ…';

  @override
  String get updateDownloaded =>
      'གསར་སྒྱུར་གྲ་སྒྲིག་ཡོད། སྒྲིག་འཇུག་ཆེད་བསྐྱར་དུ་འགོ་འཛུགས་གནང་།';

  @override
  String get updateNow => 'གསར་སྒྱུར';

  @override
  String get restartNow => 'བསྐྱར་འགོ་འཛུགས';

  @override
  String get updatesViaStore =>
      'གསར་སྒྱུར་རྣམས་ཉེར་སྤྱོད་ཚོང་ཁང་བརྒྱུད་རང་འགུལ་གྱིས་ཡོང་།';

  @override
  String get updateCheckFailed => 'གསར་སྒྱུར་ཞིབ་བཤེར་བྱེད་མ་ཐུབ།';

  @override
  String get subscription => 'མཁོ་ཉོ';

  @override
  String get planTrial => 'ཚོད་ལྟ';

  @override
  String get planNormal => 'རྒྱུན་ལྡན';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'སྤྱོད་བཞིན་པའི་འཆར་གཞི་མེད';

  @override
  String planAnalysesPerMonth(int count) {
    return 'ཟླ་རེར་དབྱེ་ཞིབ་ $count';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'དབྱེ་ཞིབ་ $count ཡོད་པའི་ཉིན་ $days རིང་གི་རིན་མེད་ཚོད་ལྟ';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'ཚོད་ལྟའི་ཉིན་ $days ལྷག་ཡོད',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'ཁྱེད་ཀྱི་རིན་མེད་ཚོད་ལྟ་མཇུག་རྫོགས་སོང་། དབྱེ་ཞིབ་མུ་མཐུད་པར་འཆར་གཞི་ཞིག་འདེམས་རོགས།';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'དུས་སྐབས་འདིར་དབྱེ་ཞིབ་ $total ལས་ $remaining ལྷག་ཡོད';
  }

  @override
  String extraCredits(int count) {
    return 'ཟུར་སྣོན་དབྱེ་ཞིབ་ $count';
  }

  @override
  String renewsOn(String date) {
    return '$date ལ་བསྐྱར་གསོ';
  }

  @override
  String get choosePlan => 'འཆར་གཞི་འདེམས';

  @override
  String get currentPlan => 'ད་ལྟའི་འཆར་གཞི';

  @override
  String get subscribe => 'མཁོ་ཉོ་བྱེད';

  @override
  String get perMonth => '/ ཟླ';

  @override
  String get extraPacksTitle => 'མང་བ་དགོས་སམ། ཟུར་སྣོན་དབྱེ་ཞིབ་ཉོ';

  @override
  String get extraPacksHint =>
      'ཟུར་སྣོན་དབྱེ་ཞིབ་ལ་དུས་ཚོད་ཡོལ་རྒྱུ་མེད་ལ། ཟླ་རེའི་ཚད་བཀག་རྫོགས་རྗེས་བེད་སྤྱོད་བྱེད།';

  @override
  String get buy => 'ཉོ';

  @override
  String get restorePurchases => 'ཉོས་པ་སླར་གསོ';

  @override
  String get manageSubscription => 'མཁོ་ཉོ་དོ་དམ';

  @override
  String get purchaseSuccess =>
      'ཐུགས་རྗེ་ཆེ། ཁྱེད་ཀྱི་ཉོ་སྒྲུབ་ནུས་ལྡན་ཆགས་སོང་།';

  @override
  String get purchasePending => 'ཉོ་སྒྲུབ་སྒུག་བཞིན་པ…';

  @override
  String get purchaseFailed => 'ཉོ་སྒྲུབ་མཇུག་སྒྲིལ་མ་ཐུབ།';

  @override
  String get purchaseCanceled => 'ཉོ་སྒྲུབ་ཕྱིར་འཐེན་བྱས།';

  @override
  String get billingUnavailable =>
      'སྟེགས་བུ་འདིའི་ཐོག་ད་དུང་ཉོ་སྒྲུབ་བྱེད་མི་ཐུབ། ཁ་པར་རམ་ Mac ཐོག་མཁོ་ཉོ་གནང་། ཁྱེད་ཀྱི་འཆར་གཞི་སྒྲིག་ཆས་ཚང་མའི་ཐོག་སྤྱོད་ཐུབ།';

  @override
  String get errQuotaExceeded =>
      'དུས་སྐབས་འདིར་དབྱེ་ཞིབ་ལྷག་མེད། འཆར་གཞི་རིམ་སྤོར་རམ་ཟུར་སྣོན་དབྱེ་ཞིབ་ཉོ་རོགས།';

  @override
  String get errTrialExpired =>
      'ཁྱེད་ཀྱི་རིན་མེད་ཚོད་ལྟ་མཇུག་རྫོགས་སོང་། མུ་མཐུད་པར་འཆར་གཞི་ཞིག་འདེམས་རོགས།';

  @override
  String get errNoPlan => 'AI དབྱེ་ཞིབ་ལ་སྤྱོད་བཞིན་པའི་འཆར་གཞི་ཞིག་དགོས།';

  @override
  String get viewPlans => 'འཆར་གཞི་ལ་ལྟ';

  @override
  String get usageTitle => 'བེད་སྤྱོད་གནས་ཚུལ';

  @override
  String get demoPurchaseNote =>
      'དཔེ་སྟོན་རིན་སྤྲོད: སྟེགས་བུ་འདིའི་ཐོག་ཉོ་སྒྲུབ་ནི་ལད་ཟློས་ཙམ་ཡིན།';

  @override
  String get mostPopular => 'དགའ་བསུ་ཆེ་ཤོས';

  @override
  String get bestValue => 'རིན་ཐང་ལེགས་ཤོས';

  @override
  String get planFeaturesCommon =>
      'པར་རིས་ངོས་འཛིན། ཐད་གཏོང་གཞི་གྲངས། རི་མོ། དགའ་མོས་དང་སྐད་ཡིག་ 120 ཚང་མ་འཆར་གཞི་རེ་རེའི་ནང་ཚུད་ཡོད། ཚད་བཀག་ནི་ AI དབྱེ་ཞིབ་ཁོ་ནའི་ཆེད་ཡིན།';

  @override
  String get searchLanguages => 'སྐད་ཡིག་འཚོལ…';

  @override
  String get noLanguageMatch => 'མཐུན་པའི་སྐད་ཡིག་མེད།';

  @override
  String get aiSettings => 'AI དབྱེ་ཞིབ';

  @override
  String get aiLength => 'རིང་ཚད';

  @override
  String get aiDepthBrief => 'མདོར་བསྡུས';

  @override
  String get aiDepthStandard => 'ཚད་ལྡན';

  @override
  String get aiDepthDeep => 'ཞིབ་ཕྲ';

  @override
  String get aiDepthBriefDesc => 'གནད་དོན་གཙོ་བོ། མགྱོགས་པོ།';

  @override
  String get aiDepthStandardDesc => 'དུམ་མཚམས་ཚང་མ་ཡོད་པའི་སྙན་ཐོ་ཆ་ཚང་།';

  @override
  String get aiDepthDeepDesc =>
      'དྲ་རྒྱའི་འཚོལ་ཞིབ་མང་བ། འགྲན་ཟླ་དང་བསྡུར་བ། ཞིབ་ཕྲ་ཟབ་པ།';

  @override
  String aiDepthWords(String min, String max) {
    return 'ཚིག་ $min–$max ཙམ';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'དབྱེ་ཞིབ་ $count བེད་སྤྱོད',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'ཀློག་པ་པོའི་ཚད';

  @override
  String get aiReaderBeginner => 'གསར་སློབ';

  @override
  String get aiReaderExperienced => 'ཉམས་མྱོང་ཅན';

  @override
  String get aiReaderBeginnerDesc =>
      'སྐད་ཆ་སླ་པོ། ཆེད་ལས་ཐ་སྙད་ཚང་མ་འགྲེལ་བཤད་བྱེད།';

  @override
  String get aiReaderExperiencedDesc =>
      'ཚད་ལྡན་དངུལ་ལས་ཐ་སྙད་ལྡན་པའི་ཡི་གེ་སྡོམ་པོ།';

  @override
  String get aiCounterArgument => 'ཤུགས་ཆེ་ཤོས་ཀྱི་ལྡོག་ཕྱོགས་རྒྱུ་མཚན';

  @override
  String get aiCounterArgumentDesc =>
      'བསྡུས་དོན་ནི་རྟག་ཏུ་རང་གི་མཇུག་འབྲས་ལ་ལྡོག་པའི་རྒྱུ་མཚན་ལེགས་ཤོས་ཀྱིས་མཇུག་སྒྲིལ།';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'ཁྱེད་ཀྱི་འཆར་གཞི་ལ་དབྱེ་ཞིབ་རེར་དྲ་རྒྱའི་འཚོལ་ཞིབ་ཆེས་མང་ན་ $count',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'འཆར་གཞི་ལྟར་ཚད་ལྡན་རིང་ཚད: རྒྱུན་ལྡན $normal, Pro $pro, Max $max, Ultra $ultra། མདོར་བསྡུས་ལ་ 2 ཉུང་བ་དང་། ཞིབ་ཕྲ་ལ་ 2 མང་བ་བེད་སྤྱོད་བྱེད།';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'དྲ་རྒྱའི་འཚོལ་ཞིབ་ཆེས་མང་ན་ $count',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'དབྱེ་ཞིབ་རེར་དྲ་རྒྱའི་འཚོལ་ཞིབ་ $count',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'རིང་ཚད་འདི་ལ་དབྱེ་ཞིབ་ $needed དགོས་ཀྱང་ $left ཁོ་ན་ལྷག་ཡོད། སྒྲིག་འགོད་ནང་རིང་ཚད་ཐུང་བ་ཞིག་འདེམས་པའམ་དབྱེ་ཞིབ་མང་བ་ལེན་རོགས།';
  }

  @override
  String get outlookMarketMood => 'ཁྲོམ་རའི་སེམས་ཁམས';

  @override
  String get moodVeryPessimistic => 'ཧ་ཅང་བློ་ཕམ';

  @override
  String get moodPessimistic => 'བློ་ཕམ';

  @override
  String get moodNeutral => 'བར་གནས';

  @override
  String get moodOptimistic => 'རེ་བ་ཆེ';

  @override
  String get moodVeryOptimistic => 'ཧ་ཅང་རེ་བ་ཆེ';

  @override
  String get scenarioBull => 'འཕར་ཕྱོགས་ཀྱི་གནས་ཚུལ';

  @override
  String get scenarioBase => 'གཞི་རྩའི་གནས་ཚུལ';

  @override
  String get scenarioBear => 'འབབ་ཕྱོགས་ཀྱི་གནས་ཚུལ';

  @override
  String outlookCurrentPrice(String price) {
    return 'ད་ལྟའི་གོང་ཚད: $price';
  }

  @override
  String get outlookKeyLevels => 'གནད་འགག་གི་ཚད';

  @override
  String get keyLevelSupport => 'རྒྱབ་སྐྱོར';

  @override
  String get keyLevelResistance => 'འགོག་རྒོལ';

  @override
  String get keyLevelAnchor => 'གཞི་ཚད';

  @override
  String get upcomingEvents => 'འབྱུང་འགྱུར་བྱ་བ';

  @override
  String get outlookChartNote =>
      'ཁྱབ་ཁོངས་ཕལ་ཙམ་ཡིན། སྲིད་ཚད་ནི་ཚོད་དཔག་རགས་ཙམ་ཡིན་གྱི་སྔོན་བརྡ་མིན།';

  @override
  String get accountTitle => 'རྩིས་ཁྲ';

  @override
  String get signIn => 'ནང་འཛུལ';

  @override
  String get signOut => 'ཕྱིར་འཐོན';

  @override
  String get notSignedIn => 'ནང་འཛུལ་བྱས་མེད';

  @override
  String get accountBenefit =>
      'ཁྱེད་ཀྱི་མཁོ་ཉོ་སྒྲིག་ཆས་ཚང་མའི་ཐོག་སྤྱོད་ཐུབ་པར་ནང་འཛུལ་གནང་།';

  @override
  String get accountSyncedNote =>
      'ཁྱེད་ཀྱི་མཁོ་ཉོ་དང་ལྷག་མའི་དབྱེ་ཞིབ་སྒྲིག་ཆས་ཚང་མའི་ཐོག་གཅིག་མཚུངས་ཡིན།';

  @override
  String get signInTitle => 'WhatStock ལ་ནང་འཛུལ';

  @override
  String get emailLabel => 'གློག་འཕྲིན་ཁ་བྱང';

  @override
  String get continueWithEmail => 'གློག་འཕྲིན་གྱིས་མུ་མཐུད';

  @override
  String codeSentTo(String email) {
    return '$email ལ་ཨང་གྲངས་ 6 ཅན་གྱི་ར་སྤྲོད་ཨང་བསྐུར་ཟིན། དེ་སྐར་མ་ 10 རིང་ནུས་ལྡན་ཡིན།';
  }

  @override
  String get codeLabel => 'ནང་འཛུལ་ར་སྤྲོད་ཨང';

  @override
  String get resendCode => 'ར་སྤྲོད་ཨང་གསར་པ་བསྐུར';

  @override
  String get useDifferentEmail => 'གློག་འཕྲིན་གཞན་ཞིག་བེད་སྤྱོད';

  @override
  String get errInvalidCode => 'ར་སྤྲོད་ཨང་ནོར་འདུག་གམ་དུས་ཡོལ་སོང་།';

  @override
  String get errInvalidEmail => 'ནུས་ལྡན་གྱི་གློག་འཕྲིན་ཁ་བྱང་ཞིག་འཇུག་གནང་།';

  @override
  String get errSignInFailed =>
      'ནང་འཛུལ་མ་ཐུབ། འབྲེལ་མཐུད་ཞིབ་བཤེར་བྱས་ནས་ཡང་བསྐྱར་ཚོད་ལྟ་གནང་།';

  @override
  String get checkoutWaiting =>
      'དྲ་ལྟ་ཆས་ནང་རིན་སྤྲོད་མཇུག་སྒྲིལ་གནང་། མཇུག་རྫོགས་རྗེས་ཉེར་སྤྱོད་རང་འགུལ་གྱིས་གསར་སྒྱུར་བྱེད།';

  @override
  String get paymentViaStripe =>
      'Stripe བརྒྱུད་དྲ་ལྟ་ཆས་ནང་བདེ་འཇགས་ཀྱི་རིན་སྤྲོད། དུས་ནམ་ཡིན་ཡང་ཕྱིར་འཐེན་ཆོག';

  @override
  String get paymentViaStore =>
      'ཁྱེད་ཀྱི་ App Store ཡང་ན་ Google Play རྩིས་ཁྲ་བརྒྱུད་རིན་སྤྲོད། ཚོང་ཁང་གི་སྒྲིག་འགོད་ནང་དུས་ནམ་ཡིན་ཡང་ཕྱིར་འཐེན་ཆོག';

  @override
  String get keySpace => 'བར་སྟོང';

  @override
  String get doubleOptionTitle => 'Option ཐེངས་གཉིས་མནན';

  @override
  String get doubleOptionSubtitle =>
      'Option མཐེབ་མགྱོགས་པོར་ཐེངས་གཉིས་མནན་ནའང་ WhatStock འབོད་ཐུབ།';

  @override
  String get doubleOptionPermission =>
      'ཉེར་སྤྱོད་གཞན་དག་ནང་ཡང་སྤྱོད་ཐུབ་ཆེད། མ་ལག་སྒྲིག་འགོད → སྒེར་གསང་དང་བདེ་འཇགས → ནང་འཇུག་ལྟ་ཞིབ་ནང་ WhatStock ལ་ཆོག་མཆན་སྤྲོད་རྗེས་ཉེར་སྤྱོད་བསྐྱར་དུ་ཁ་ཕྱེ་རོགས།';

  @override
  String get openSystemSettings => 'མ་ལག་སྒྲིག་འགོད་ཁ་ཕྱེ';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'WhatStock འབོད་པར་གནས་གང་དུ་ཡང་ $shortcut མནན་པའམ་ Option ཐེངས་གཉིས་མནན།';
  }

  @override
  String get scenarioMostLikely => 'སྲིད་ཚད་ཆེ་ཤོས';

  @override
  String get longTermToday => 'དེ་རིང';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: 'ལོ་ $years',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return 'ལོ་རེར་ $range';
  }

  @override
  String longTermLikely(String price) {
    return 'སྲིད་ཚད་ཆེ་ཤོས་ $price';
  }

  @override
  String get confidenceLow => 'ཡིད་ཆེས་དམའ';

  @override
  String get confidenceMedium => 'ཡིད་ཆེས་འབྲིང';

  @override
  String get confidenceHigh => 'ཡིད་ཆེས་མཐོ';

  @override
  String get longTermNote =>
      'ཡུན་རིང་གི་ཁྱབ་ཁོངས་ནི་གསལ་བཤད་བྱས་པའི་ཚོད་དཔག་ལ་བརྟེན་ཡོད་ལ། དུས་ཚོད་དང་བསྟུན་ནས་ཡངས་སུ་འགྲོ། གོང་ཚད་ནང་ཁེ་བགོ་མི་ཚུད། ཚོད་དཔག་རགས་ཙམ་ཡིན་གྱི་སྔོན་བརྡ་མིན།';

  @override
  String get portfolio => 'མ་འཇོག་ཚོགས་སྡེབ';

  @override
  String get portfolioEmpty =>
      'ད་ལྟའི་བར་འདིར་ཅི་ཡང་མེད། ཁྱེད་ལ་ཡོད་པའི་ཧུར་ཁག་རྗེས་འདེད་བྱེད་པར་ཧུར་ཁག་ཅིག་ཁ་ཕྱེ་ནས་ “ཚོགས་སྡེབ་ཏུ་སྣོན” ལ་མནན།';

  @override
  String get portfolioLocalNote =>
      'སྒྲིག་ཆས་འདིའི་ཐོག་ཁོ་ནར་ཉར་ཚགས་བྱེད། བསྡོམས་འབོར་ ECB ཡི་དཔྱད་གཞིའི་བརྗེ་ཚད་ལྟར་བསྒྱུར། གོང་ཚད་ལ་འགོར་འཕྱི་ཡོད་སྲིད།';

  @override
  String get addToPortfolio => 'ཚོགས་སྡེབ་ཏུ་སྣོན';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol སྣོན';
  }

  @override
  String get portfolioQuantity => 'ཧུར་ཁག་གི་གྲངས་ཀ';

  @override
  String portfolioBuyPrice(String currency) {
    return 'ཧུར་ཁག་རེའི་གོང་ཚད ($currency)';
  }

  @override
  String get portfolioBuyDate => 'ཉོས་པའི་ཚེས་གྲངས';

  @override
  String get portfolioAdd => 'སྣོན';

  @override
  String get portfolioInvalidNumber =>
      'ཀླད་ཀོར་ལས་ཆེ་བའི་གྲངས་ཀ་ཞིག་འཇུག་རོགས།';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol ཁྱེད་ཀྱི་ཚོགས་སྡེབ་ཏུ་བསྣན་ཟིན།';
  }

  @override
  String get portfolioTotalValue => 'རིན་ཐང་བསྡོམས';

  @override
  String get portfolioToday => 'དེ་རིང';

  @override
  String get portfolioGainLoss => 'ཁེ་གྱོང';

  @override
  String get portfolioInvested => 'མ་འཇོག་བྱས་པ';

  @override
  String get portfolioAllocation => 'བགོ་འགྲེམས';

  @override
  String get portfolioPositions => 'ཉར་ཡོད་ཧུར་ཁག';

  @override
  String portfolioAvgCost(String price) {
    return 'ཆ་སྙོམས་མ་གནས་ $price';
  }

  @override
  String get portfolioYourPosition => 'ཁྱེད་ཀྱི་ཉར་ཡོད';

  @override
  String get portfolioPurchases => 'ཉོ་སྒྲུབ';

  @override
  String get portfolioRemove => 'སུབ';

  @override
  String get portfolioExcluded =>
      'གོང་ཚད་དམ་བརྗེ་ཚད་མེད་པའི་ཉར་ཡོད་ཧུར་ཁག་རྣམས་བསྡོམས་འབོར་ནང་མ་བསྡུས།';

  @override
  String get priceAlerts => 'གོང་ཚད་ཉེན་བརྡ';

  @override
  String get setPriceAlert => 'གོང་ཚད་ཉེན་བརྡ་སྒྲིག';

  @override
  String alertDialogTitle(String symbol) {
    return 'གོང་ཚད་ཉེན་བརྡ · $symbol';
  }

  @override
  String get alertKindAbove => 'ཡན་ལ་འཕར་ན';

  @override
  String get alertKindBelow => 'མན་ལ་ཆག་ན';

  @override
  String get alertKindMove => 'ཉིན་གཅིག་ལ་འགྱུར་བ་ཆེན་པོ་བྱུང་ན';

  @override
  String alertTargetPrice(String currency) {
    return 'གོང་ཚད ($currency)';
  }

  @override
  String get alertMovePercent => 'ཉིན་རེའི་འགྱུར་ཚད (%)';

  @override
  String get alertAlreadyMet => 'གོང་ཚད་ཚད་གཞི་འདི་ལས་བརྒལ་ཟིན།';

  @override
  String get alertSave => 'ཉེན་བརྡ་སྒྲིག';

  @override
  String alertCreated(String symbol) {
    return '$symbol ལ་ཉེན་བརྡ་སྒྲིག་ཟིན།';
  }

  @override
  String get alertsEmpty =>
      'ད་ལྟའི་བར་གོང་ཚད་ཉེན་བརྡ་མེད། ཧུར་ཁག་ཅིག་ཁ་ཕྱེ་ནས་དྲིལ་བུ་ལ་མནན་ཏེ་སྒྲིག';

  @override
  String get alertsNote =>
      'WhatStock འཁོར་བཞིན་པའི་སྐབས་ཉེན་བརྡ་རྣམས་སྐར་མ་ 5 རེར་ཞིབ་བཤེར་བྱེད། རྩིས་འཁོར་ཐོག་དེ་འདེམས་ཐོ་ཕྲེང་ངམ་མ་ལག་སྡེར་མའི་ནང་མུ་མཐུད་འཁོར། ཁ་པར་ཐོག་ད་ལྟ་ཉེར་སྤྱོད་ཁ་ཕྱེ་ཡོད་སྐབས་ཁོ་ནར་ཉེན་བརྡ་ཡོང་།';

  @override
  String alertDescAbove(String price) {
    return '$price ལས་མཐོ';
  }

  @override
  String alertDescBelow(String price) {
    return '$price ལས་དམའ';
  }

  @override
  String alertDescMove(String percent) {
    return 'ཉིན་རེའི་འགྱུར་ཚད ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return '$date ལ་ $price ཐོག་ཉེན་བརྡ་ཐོན';
  }

  @override
  String get alertRearm => 'བསྐྱར་དུ་སྒྲིག';

  @override
  String get alertDelete => 'སུབ';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol $price ལས་འཕར་སོང་།';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol $price ལས་ཆག་སོང་།';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol དེ་རིང་ $percent འགྱུར་སོང་།';
  }

  @override
  String alertHitBody(String price) {
    return 'ད་ལྟའི་གོང་ཚད: $price';
  }

  @override
  String get alertOpen => 'ཁ་ཕྱེ';

  @override
  String get keepInTrayTitle => 'སྒེའུ་ཁུང་བརྒྱབ་ཀྱང་མུ་མཐུད་འཁོར';

  @override
  String get keepInTraySubtitle =>
      'WhatStock འདེམས་ཐོ་ཕྲེང་ངམ་མ་ལག་སྡེར་མའི་ནང་སྡོད་པས། མྱུར་མཐེབ་དང་གོང་ཚད་ཉེན་བརྡ་མུ་མཐུད་སྤྱོད་ཐུབ།';

  @override
  String get termsOfUse => 'བེད་སྤྱོད་ཆ་རྐྱེན';

  @override
  String get privacyPolicy => 'སྒེར་གསང་སྲིད་ཇུས';

  @override
  String get subscriptionLegal =>
      'ཁྱེད་ཀྱིས་ཕྱིར་མ་འཐེན་བར་དུ་མཁོ་ཉོ་ཟླ་རེར་རང་འགུལ་གྱིས་བསྐྱར་གསོ་བྱེད། མཁོ་ཉོ་བྱས་ན་བེད་སྤྱོད་ཆ་རྐྱེན་དང་སྒེར་གསང་སྲིད་ཇུས་ཁས་ལེན་པ་ཡིན།';

  @override
  String get deleteAccount => 'རྩིས་ཁྲ་སུབ';

  @override
  String get deleteAccountTitle => 'ཁྱེད་ཀྱི་རྩིས་ཁྲ་སུབ་བམ།';

  @override
  String get deleteAccountBody =>
      'ཁྱེད་ཀྱི་རྩིས་ཁྲ་དང་ང་ཚོའི་ཞབས་ཞུ་འཕྲུལ་ཆས་ཐོག་ཉར་བའི་ཅ་དངོས་ཚང་མ (གློག་འཕྲིན། ཚད་བཀག བེད་སྤྱོད་གནས་ཚུལ།) རྩ་མེད་དུ་སུབ་འགྲོ་ལ། བེད་སྤྱོད་མ་བྱས་པའི་དབྱེ་ཞིབ་ཀྱང་མེད་པར་འགྱུར། དྲ་ལྟ་ཆས་ནང་རིན་སྤྲོད་བྱས་པའི་མཁོ་ཉོ་ལམ་སེང་ཕྱིར་འཐེན་བྱེད། App Store ཡང་ན་ Google Play ཡི་མཁོ་ཉོ་ནི་ཚོང་ཁང་གི་སྒྲིག་འགོད་ནང་ཕྱིར་འཐེན་དགོས།';

  @override
  String get deleteLocalData =>
      'སྒྲིག་ཆས་འདིའི་གཞི་གྲངས་ཀྱང་སུབ (མ་འཇོག་ཚོགས་སྡེབ། ཉེན་བརྡ། དགའ་མོས། ལོ་རྒྱུས། ཉར་ཚགས་བྱས་པའི་དབྱེ་ཞིབ།)';

  @override
  String get deleteAccountConfirm => 'རྩ་མེད་དུ་སུབ';

  @override
  String get accountDeleted => 'ཁྱེད་ཀྱི་རྩིས་ཁྲ་སུབ་ཟིན།';

  @override
  String get errDeleteAccount =>
      'རྩིས་ཁྲ་སུབ་མ་ཐུབ། འབྲེལ་མཐུད་ཞིབ་བཤེར་བྱས་ནས་ཡང་བསྐྱར་ཚོད་ལྟ་གནང་།';

  @override
  String get aiTrialBriefNote =>
      'ཚོད་ལྟའི་དབྱེ་ཞིབ་ནི་མདོར་བསྡུས་ཡིན་ཞིང་ AI དཔེ་དབྱིབས་མགྱོགས་པ་ཞིག་གིས་བཟོས་པ་ཡིན། འཆར་གཞི་ཡོད་ན་ང་ཚོའི་ནུས་པ་ཆེ་ཤོས་ཀྱི་ AI དང་། དྲ་རྒྱའི་འཚོལ་ཞིབ་མང་བ། ཚད་ལྡན་དང་ཞིབ་ཕྲའི་རིང་ཚད་བཅས་ཐོབ།';

  @override
  String get billingMonthly => 'ཟླ་རེ';

  @override
  String get billingYearly => 'ལོ་རེ';

  @override
  String get yearlyDiscount => 'ཟླ་བ་ 2 རིན་མེད';

  @override
  String get perYear => '/ ལོ';

  @override
  String pricePerMonthApprox(String price) {
    return 'ཟླ་རེར་ ≈ $price';
  }

  @override
  String get subscriptionLegalYearly =>
      'ཁྱེད་ཀྱིས་ཕྱིར་མ་འཐེན་བར་དུ་མཁོ་ཉོ་ལོ་རེར་རང་འགུལ་གྱིས་བསྐྱར་གསོ་བྱེད། མཁོ་ཉོ་བྱས་ན་བེད་སྤྱོད་ཆ་རྐྱེན་དང་སྒེར་གསང་སྲིད་ཇུས་ཁས་ལེན་པ་ཡིན།';

  @override
  String get myAnalyses => 'ངའི་དབྱེ་ཞིབ';

  @override
  String get navAlerts => 'ཉེན་བརྡ';

  @override
  String get inviteTitle => 'ཁ་བརྒྱབ་པའི་སྔོན་ལྟ།';

  @override
  String get inviteBody =>
      'WhatStock ད་ལྟ་མགྲོན་འབོད་ཁོ་ནས་བེད་སྤྱོད་བྱེད་ཐུབ། ཁྱེད་ཀྱིས་འཐོབ་པའི་མགྲོན་འབོད་ཨང་འཇུག་རོགས།';

  @override
  String get inviteCodeLabel => 'མགྲོན་འབོད་ཨང';

  @override
  String get inviteContinue => 'མུ་མཐུད།';

  @override
  String get inviteInvalid => 'མགྲོན་འབོད་ཨང་འདི་ནུས་མེད་རེད།';

  @override
  String get inviteExpired =>
      'མགྲོན་འབོད་འདིའི་དུས་ཡོལ་སོང་། ཁྱེད་ལ་མགྲོན་འབོད་བྱས་མཁན་དེར་ཨང་གསར་པ་ཞིག་ཞུ་རོགས།';

  @override
  String get inviteDeviceLimit =>
      'མགྲོན་འབོད་ཨང་འདི་སྒྲིག་ཆས་གྲངས་ཚད་མཐོ་ཤོས་སྟེང་བེད་སྤྱོད་བྱས་ཟིན།';

  @override
  String get previewConfidential => 'གསང་བའི་སྔོན་ལྟ།';

  @override
  String get errPreviewDailyLimit =>
      'སྔོན་ལྟ་འདིའི་དེ་རིང་གི་དབྱེ་ཞིབ་ཚད་བཀག་ལ་སླེབས་སོང་། སང་ཉིན་ཡང་བསྐྱར་ཚོད་ལྟ་བྱེད་རོགས།';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ཆུ་ཚོད་ $count གི་སྔོན་ལ',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ཉིན་ $count གི་སྔོན་ལ',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'དབྱེ་ཞིབ་འདི་གསར་བསྒྱུར་བྱེད་དམ།';

  @override
  String staleBody(String age) {
    return 'འདི་ $age བཟོས་པ་ཡིན། དེ་ནས་བཟུང་གོང་ཚད་དང་གསར་འགྱུར། གྲུབ་འབྲས་བཅས་ལ་འགྱུར་བ་བྱུང་སྲིད།';
  }

  @override
  String get staleKeep => 'སྔ་མ་དེ་སྟོན';

  @override
  String get staleRefresh => 'གསར་པ་ཞིག་བཟོ';

  @override
  String seeAll(int count) {
    return 'ཚང་མ་ལྟ ($count)';
  }

  @override
  String get searchAnalyses => 'དབྱེ་ཞིབ་ནང་འཚོལ';

  @override
  String get deleteAnalysis => 'སུབ';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol ཡི་དབྱེ་ཞིབ་བསུབས་ཟིན';
  }

  @override
  String get keyLevelAlertHint =>
      'གོང་ཚད་ཚད་དེར་སླེབས་སྐབས་ཉེན་བརྡ་ཐོབ་པར་ཚད་ཅིག་ལ་མནན།';

  @override
  String get shareAnalysisTitle => 'དབྱེ་ཞིབ་མཉམ་སྤྱོད།';

  @override
  String get shareAsImage => 'པར་རིས་སུ་མཉམ་སྤྱོད།';

  @override
  String get shareAsText => 'ཡི་གེར་མཉམ་སྤྱོད།';

  @override
  String get shareCardFooter => 'WhatStock གིས་བཟོས།';

  @override
  String get shareCardDisclaimer => 'AI དབྱེ་ཞིབ · མ་འཇོག་གི་བསམ་འཆར་མིན།';

  @override
  String get referralTitle => 'གྲོགས་པོ་མགྲོན་འབོད';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ཟུར་སྣོན་དབྱེ་ཞིབ་ $count',
    );
    return 'ཁྱེད་ཀྱི་ཨང་རྟགས་མཉམ་སྤྱོད་གནང་། ཁྱེད་ཀྱི་གྲོགས་པོས་འཕྲལ་དུ་$_temp0 ཐོབ་ཀྱི་རེད། ཁོང་གིས་དབྱེ་ཞིབ་དང་པོ་བྱས་རྗེས་ཁྱེད་ལའང་གྲངས་ཀ་དེ་ཙམ་ཐོབ་ཀྱི་རེད།';
  }

  @override
  String get referralYourCode => 'ཁྱེད་ཀྱི་ཨང་རྟགས';

  @override
  String referralStats(int invited, int rewarded) {
    return 'མགྲོན་འབོད་བྱས་པ: $invited · བྱ་དགའ་ཐོབ་པ: $rewarded';
  }

  @override
  String get referralHaveCode => 'གྲོགས་པོ་ཞིག་ནས་ཐོབ་པའི་ཨང་རྟགས་ཡོད་དམ།';

  @override
  String get referralRedeem => 'བེད་སྤྱོད།';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ཟུར་སྣོན་དབྱེ་ཞིབ་ $count ཁ་སྣོན་བྱས་ཟིན། ཕེབས་པ་ལེགས་སོ།',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'ཨང་རྟགས་འདི་མེད། ཞིབ་བཤེར་བྱས་ནས་ཡང་བསྐྱར་ཚོད་ལྟ་གནང་།';

  @override
  String get referralErrOwn => 'རང་གི་ཨང་རྟགས་བེད་སྤྱོད་བྱེད་མི་ཆོག';

  @override
  String get referralErrAlready =>
      'ཁྱེད་ཀྱིས་གྲོགས་པོའི་ཨང་རྟགས་སྔོན་ནས་བེད་སྤྱོད་བྱས་ཟིན།';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ཟུར་སྣོན་དབྱེ་ཞིབ་ $count',
    );
    return 'ངས་ WhatStock བརྒྱུད་ནས་ཧུར་ཁག་དབྱེ་ཞིབ་བྱེད། ཧུར་ཁག་ཅིག་གི་པར་བླངས་ན་ AI ཡིས་འགྲེལ་བཤད་བྱེད། ངའི་ཨང་རྟགས་ $code བེད་སྤྱོད་བྱས་ན་ཁྱེད་ལ་$_temp0 ཐོབ་ཀྱི་རེད།';
  }

  @override
  String get referralCopied => 'ཨང་རྟགས་འདྲ་བཤུས་བྱས་ཟིན།';

  @override
  String get onboardTitle1 => 'ཧུར་ཁག་གི་པར་བླངས།';

  @override
  String get onboardBody1 =>
      'ཧུར་ཁག་ཉོ་ཚོང་ཉེར་སྤྱོད་ཀྱི་བརྙན་ཡོལ། ཚགས་པར་རམ་ཀུང་སིའི་མཚོན་རྟགས་ཙམ་གྱིས་འགྲིག WhatStock ཡིས་ཧུར་ཁག་ངོས་འཛིན་བྱས་ནས་དེའི་གོང་ཚད། རི་མོ། གལ་ཆེའི་གྲངས་ཀ་བཅས་སྟོན་གྱི་ཡོད།';

  @override
  String get onboardTitle2 => 'སྐར་མ་ཁ་ཤས་ནང་གོ་བ་ལོང་།';

  @override
  String get onboardBody2 =>
      'AI དབྱེ་ཞིབ་ཀྱིས་ཧུར་ཁག་འགུལ་སྐྱོད་བྱེད་པའི་རྒྱུ་རྐྱེན། ཉེན་ཁ། རིན་ཐང་གི་བརྟག་དཔྱད། གོང་ཚད་གར་འགྲོ་སྲིད་པའི་གནས་སྟངས་གསུམ་བཅས་འགྲེལ་བཤད་བྱེད། ཁུངས་དང་བཅས་ཁྱེད་རང་གི་སྐད་ཡིག་ཐོག་ཏུ།';

  @override
  String get onboardTitle3 => 'རྟག་ཏུ་གནས་ཚུལ་ཤེས་པར་བཞུགས།';

  @override
  String get onboardBody3 =>
      'དགའ་མོས། ཁྱེད་ཀྱི་མ་འཇོག་ཚོགས་སྡེབ། གོང་ཚད་ཉེན་བརྡ་བཅས་ཀྱིས་ཁྱེད་ལ་གནས་ཚུལ་སྙན་སེང་ཞུ་གི་རེད། ཁྱེད་ཀྱི་དབྱེ་ཞིབ་རྣམས་ཁྱེད་ཀྱི་སྒྲིག་ཆས་ནང་ཉར་ཡོད་པས་ནམ་ཡིན་ཡང་ཡང་བསྐྱར་ཁ་ཕྱེ་ཆོག';

  @override
  String get onboardNext => 'རྗེས་མ།';

  @override
  String get onboardStart => 'འགོ་འཛུགས།';

  @override
  String get onboardSkip => 'མཆོང་།';

  @override
  String changesTitle(String date) {
    return 'དབྱེ་ཞིབ་སྔ་མ་ནས་བཟུང་། ($date)';
  }

  @override
  String get changesPrice => 'གོང་ཚད';

  @override
  String get changesNoMajor => 'མདུན་ལྟའི་གནས་ཚུལ་ལ་འགྱུར་བ་ཆེན་པོ་མ་བྱུང་།';

  @override
  String get changesPreviousSummary => 'སྙིང་བསྡུས་སྔ་མ';

  @override
  String get telemetryTitle => 'WhatStock ལེགས་བཅོས་གཏོང་བར་རོགས་རམ་གནང་།';

  @override
  String get telemetryBody =>
      'མིང་མེད་ཀྱི་བེད་སྤྱོད་གྲངས་ཐོ་དང་ཆག་སྐྱོན་སྙན་ཞུ་མཉམ་སྤྱོད་གནང་། ནུས་པ་གང་དག་བེད་སྤྱོད་བྱས་པ་དང་ནོར་འཁྲུལ་ཅི་བྱུང་བ། ཁྱེད་ཀྱི་མ་འཇོག་དང་དབྱེ་ཞིབ། སྒེར་གྱི་གཞི་གྲངས་ནམ་ཡང་མཉམ་སྤྱོད་མི་བྱེད། ཁྱེད་ཀྱིས་དུས་ནམ་ཡིན་ཡང་སྒྲིག་འགོད་ནང་འདི་བསྒྱུར་ཆོག';

  @override
  String get telemetryAllow => 'ཆོག་མཆན་སྤྲོད';

  @override
  String get telemetryDecline => 'མི་དགོས། ཐུགས་རྗེ་ཆེ།';

  @override
  String get telemetrySetting => 'མིང་མེད་ཀྱི་གྲངས་ཐོ་དང་ཆག་སྐྱོན་སྙན་ཞུ';

  @override
  String get telemetrySettingHint =>
      'ནུས་པ་ཇི་ཙམ་བེད་སྤྱོད་བྱས་པ་དང་ནོར་འཁྲུལ་སྙན་ཞུ། སྒེར་གྱི་གཞི་གྲངས་སམ་ཁྱེད་ཀྱི་འཚོལ་ཞིབ་དང་དབྱེ་ཞིབ་ཀྱི་ནང་དོན་མེད་པར།';

  @override
  String get askButton => 'དབྱེ་ཞིབ་འདིའི་སྐོར་དྲི་བ་འདྲི།';

  @override
  String askTitle(String symbol) {
    return '$symbol སྐོར་གྱི་དྲི་བ།';
  }

  @override
  String get askIntro =>
      'དབྱེ་ཞིབ་འདིའི་སྐོར་ཅི་ཡང་རུང་དྲི་རོགས། ཉེན་ཁ་ཞིག་གི་དོན་གང་ཡིན་པ། མདུན་ལྟ་གང་གིས་འགྱུར་སྲིད་པ། ཨང་གྲངས་ཞིག་ཇི་ལྟར་རྩིས་བརྒྱབ་པ་སོགས། ལན་རྣམས་དབྱེ་ཞིབ་འདི་ལ་གཞིགས་ཡོད་ལ། མ་འཇོག་གི་བསམ་འཆར་ཡང་མིན།';

  @override
  String get askHint => 'དྲི་བ་ཞིག་འདྲི་རོགས…';

  @override
  String get askSend => 'གཏོང་།';

  @override
  String get askThinking => 'བསམ་བློ་གཏོང་བཞིན་པ…';

  @override
  String get askSuggest1 => 'ཉེན་ཁ་ཆེ་ཤོས་གང་ཡིན།';

  @override
  String get askSuggest2 => 'མདུན་ལྟ་གང་གིས་འགྱུར་སྲིད།';

  @override
  String get askSuggest3 => 'སྟབས་བདེའི་ཚིག་གིས་འགྲེལ་བཤད་བྱེད་རོགས།';

  @override
  String get askMaxReached =>
      'དེ་ནི་དབྱེ་ཞིབ་འདིའི་དྲི་བ་མཐའ་མ་ཡིན། དྲི་བ་མང་བ་འདྲི་བར་དབྱེ་ཞིབ་གསར་པ་ཞིག་བཟོ་རོགས།';

  @override
  String get errAskLimit =>
      'ཁྱེད་ཀྱིས་དེ་རིང་གི་དྲི་བའི་ཚད་བཀག་ལ་སླེབས་སོང་། སང་ཉིན་ཡང་བསྐྱར་ཚོད་ལྟ་བྱེད་རོགས།';

  @override
  String get eventTomorrow => 'སང་ཉིན';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'ཉིན་ $days རྗེས་སུ',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'ཟླ་གསུམ་རེའི་གྲུབ་འབྲས';

  @override
  String get eventBeforeOpen => 'ཚོང་ར་མ་ཕྱེ་གོང་';

  @override
  String get eventAfterClose => 'ཚོང་ར་བཀག་རྗེས';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS སྔོན་རྩིས: $value';
  }

  @override
  String get eventFromAnalysis => 'ཁྱེད་ཀྱི་དབྱེ་ཞིབ་ནས';

  @override
  String get eventsHint =>
      'ཉིན་ 90 ནང་ཁྱེད་ཀྱི་དགའ་མོས་དང་མ་འཇོག་ཚོགས་སྡེབ་ཀྱི་ཧུར་ཁག་གི་གྲུབ་འབྲས་ཚེས་གྲངས་དང་། ཁྱེད་ཀྱི་དབྱེ་ཞིབ་ཀྱིས་མཚོན་པའི་ཚེས་གྲངས་ཅན་གྱི་བྱ་བ།';

  @override
  String get eventsEmpty =>
      'ཉིན་ 90 ནང་ཚེས་གྲངས་ཅན་གྱི་བྱ་བ་མེད། གྲུབ་འབྲས་ཚེས་གྲངས་འདིར་མཐོང་བར་དགའ་མོས་སམ་མ་འཇོག་ཚོགས་སྡེབ་ཏུ་ཧུར་ཁག་སྣོན།';

  @override
  String get compareTitle => 'བསྡུར་ཞིབ';

  @override
  String get compareAdd => 'ཧུར་ཁག་གཅིག་སྣོན';

  @override
  String get compareRemove => 'སུབ';

  @override
  String get compareTickerHint => 'ཧུར་ཁག་ཨང་རྟགས། དཔེར་ན། MSFT';

  @override
  String get compareHint =>
      'གནད་ཆེའི་གྲངས་ཀ་གཤིབ་སྟེ་བཀོད་ཡོད། ཕྲེང་རེ་རེའི་ནང་གི་རིན་ཐང་ལེགས་ཤོས་དེ་གསལ་སྟོན་བྱས་ཡོད། དངུལ་གྲངས་ནི་ཧུར་ཁག་རེ་རེའི་རང་གི་དངུལ་ལོར་ཐོག་ཡིན།';

  @override
  String get compareNoAnalysis => 'ད་དུང་དབྱེ་ཞིབ་མེད';

  @override
  String get portfolioDividends => 'ལོ་རེའི་ཁེ་བགོ';

  @override
  String portfolioDividendYield(String percent) {
    return 'ཁེ་འབབ་ཚད་ $percent';
  }

  @override
  String get portfolioDividendNote =>
      'རེ་སྒུག་བྱེད་པའི་ལོ་རེའི་ཁེ་བགོ་ནི་ཟླ་བ་ 12 སྔོན་ནས་སྤྲད་པའི་ཁེ་བགོ་ལ་གཞི་བཅོལ་ཡོད། མ་འོངས་པའི་སྤྲོད་འབབ་ལ་ཁག་ཐེག་མེད།';

  @override
  String positionDividend(String amount) {
    return 'ཁེ་བགོ། ལོ་རེར་ $amount';
  }

  @override
  String get chartAvgCost => 'ཁྱེད་ཀྱི་ཆ་སྙོམས';

  @override
  String get chartAlertLevel => 'ཉེན་བརྡ';

  @override
  String get marketsToday => 'དེ་རིང་གི་ཚོང་ར';

  @override
  String get notesTitle => 'ངའི་ཟིན་ཐོ';

  @override
  String get notesHint =>
      'ཁྱེད་ཀྱིས་ཅིའི་ཕྱིར་ཉོས་པ་དང་། གང་ལ་དོ་སྣང་གནང་གི་ཡོད་པ། ཅི་ཞིག་བྱུང་ན་འཚོང་གི་ཡིན་ནམ།';

  @override
  String get notesInfo =>
      'སྒྲིག་ཆས་འདིའི་ཐོག་ཁོ་ནར་ཉར་ཚགས་བྱེད། AI དབྱེ་ཞིབ་ཀྱིས་ཁྱེད་ཀྱི་ཟིན་ཐོ་ལ་དཔྱད་གཞི་བྱེད།';

  @override
  String notesSaved(String date) {
    return 'ཉར་ཚགས་བྱས: $date';
  }

  @override
  String get peersTitle => 'འདྲ་མཚུངས་ཀུང་སི';

  @override
  String get portfolioExport => 'CSV ཡི་རྣམ་པར་ཕྱིར་འདྲེན།';

  @override
  String get portfolioImport => 'CSV ནས་ནང་འདྲེན།';

  @override
  String get portfolioImportHint =>
      'ཕྲེང་རེ་རེར་ཉོ་སྒྲུབ་རེ་སྦྱོར་རོགས། ཧུར་ཁག་ཨང་རྟགས། གྲངས་ཀ། རིན་གོང་། དངུལ་ལོར། ཚེས་གྲངས། (YYYY-MM-DD) ཀ་བ་རྣམས་ , དང་ ; ཡང་ན་ tab ཡིས་ཁ་འབྱེད་ཆོག མགོ་བྱང་གི་ཕྲེང་ནི་གདམ་ཀ་ཡིན།';

  @override
  String get portfolioImportButton => 'ནང་འདྲེན།';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ཉོ་སྒྲུབ་ $count ཁ་སྣོན་བྱས་ཟིན།',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ཕྲེང་ $count མཆོང་ཟིན།',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'མ་འཇོག་ཚོགས་སྡེབ་དང་། དགའ་མོས། གོང་ཚད་ཉེན་བརྡ། ཟིན་ཐོ་བཅས་ཁྱེད་ཀྱི་སྒྲིག་ཆས་ཚང་མར་མཉམ་སྒྲིག་བྱེད།';

  @override
  String syncLast(String time) {
    return 'མཐའ་མའི་མཉམ་སྒྲིག: $time';
  }

  @override
  String get syncNow => 'ད་ལྟ་མཉམ་སྒྲིག';

  @override
  String get syncFailed =>
      'མཉམ་སྒྲིག་མ་ཐུབ། རང་འགུལ་གྱིས་བསྐྱར་དུ་ཚོད་ལྟ་བྱེད་ངེས།';

  @override
  String get alertEmailTitle => 'ཉེན་བརྡ་འཁོར་སྐབས་གློག་འཕྲིན།';

  @override
  String get alertEmailOn =>
      'ང་ཚོས་སྐར་མ་ཁ་ཤས་རེར་ཁྱེད་ཀྱི་ཉེན་བརྡ་ཞིབ་བཤེར་བྱས་ནས། ཉེར་སྤྱོད་ཁ་བརྒྱབ་ཡོད་ཀྱང་ཁྱེད་ལ་གློག་འཕྲིན་གཏོང་།';

  @override
  String get alertEmailSignIn =>
      'ཉེར་སྤྱོད་ཁ་བརྒྱབ་ཡོད་ཀྱང་ཉེན་བརྡ་གློག་འཕྲིན་ཐོག་ཐོབ་པར་སྒྲིག་འགོད་ནང་ཁྱེད་ཀྱི་གློག་འཕྲིན་གྱིས་ནང་འཛུལ་གནང་།';

  @override
  String get portfolioHistory => 'རིན་ཐང་གི་འགྱུར་ལྡོག';

  @override
  String get portfolioReviewTitle => 'མ་འཇོག་ཚོགས་སྡེབ་ཀྱི་ AI དབྱེ་ཞིབ';

  @override
  String get portfolioReviewIntro =>
      'AI ཡིས་ཁྱེད་ཀྱི་མ་འཇོག་ཚོགས་སྡེབ་ཧྲིལ་པོར་ལྟ་ཞིབ་བྱེད། མ་འཇོག་གཅིག་ཏུ་བསྡུས་པ། ལས་རིགས་དང་དངུལ་ལོར་བརྟེན་པ། ཁྱེད་ཀྱི་མ་ཤེར་ཚོར་མཉམ་དུ་ཡོད་པའི་ཉེན་ཁ། ཁེ་བགོ་བཅས། དབྱེ་ཞིབ་ 1 བེད་སྤྱོད།';

  @override
  String get portfolioReviewButton => 'ངའི་མ་འཇོག་ཚོགས་སྡེབ་དབྱེ་ཞིབ་བྱེད';

  @override
  String get portfolioReviewAgain => 'ཡང་བསྐྱར་དབྱེ་ཞིབ་བྱེད';

  @override
  String get portfolioReviewWorking =>
      'ཁྱེད་ཀྱི་མ་འཇོག་ཚོགས་སྡེབ་དབྱེ་ཞིབ་བྱེད་བཞིན་པ…';

  @override
  String get digestTitle => 'གློག་འཕྲིན་བརྒྱུད་གཟའ་འཁོར་རེའི་བསྡུས་དོན།';

  @override
  String get digestHint =>
      'གཟའ་ཟླ་བ་རེ་རེར། ཁྱེད་ཀྱི་དགའ་མོས་དང་མ་འཇོག་ཚོགས་སྡེབ་ཀྱི་གཟའ་འཁོར་སྔ་མའི་འགྱུར་ལྡོག་དང་། དེ་དག་གི་གྲུབ་འབྲས་འཆར་རྒྱུའི་ཚེས་གྲངས།';

  @override
  String get benchmarkTitle => 'S&P 500 དང་བསྡུར་བ།';

  @override
  String get benchmarkYours => 'ཁྱེད་ཀྱི་ཉོ་ཚོང་།';

  @override
  String get benchmarkIndex => 'དངུལ་གྲངས་གཅིག་པ་ S&P 500 ནང་།';

  @override
  String benchmarkAhead(String points) {
    return 'སྟོན་གྲངས་ལས་བརྒྱ་ཆའི་ཚག་ $points ལེགས་པ།';
  }

  @override
  String benchmarkBehind(String points) {
    return 'སྟོན་གྲངས་ལས་བརྒྱ་ཆའི་ཚག་ $points རྗེས་ལུས།';
  }

  @override
  String get benchmarkHint =>
      'ཉོ་ཚོང་རེ་རེའི་དངུལ་ཉིན་གཅིག་པར་ S&P 500 སྟོན་གྲངས་མ་དངུལ་ནང་མ་འཇོག་བྱས་པ་ལྟར། ཁེ་བགོས་མི་ཚུད། སྔོན་གྱི་ཁེ་སྤོགས་ཀྱིས་མ་འོངས་པའི་ཁེ་སྤོགས་སྔོན་དཔག་མི་བྱེད།';

  @override
  String get portfolioSell => 'འཚོང';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbol འཚོང';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'ཧུར་ཁག་རེའི་འཚོང་གོང ($currency)';
  }

  @override
  String get portfolioSellDate => 'འཚོང་བའི་ཚེས་གྲངས';

  @override
  String get portfolioSellAll => 'ཚང་མ';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'ཁྱེད་ལ་ $quantity ཡོད';
  }

  @override
  String get portfolioSold => 'བཙོངས་ཟིན';

  @override
  String get portfolioRealized => 'ལག་ཐོབ';

  @override
  String get portfolioClosed => 'མཇུག་སྒྲིལ་ཟིན་པའི་ཧུར་ཁག';

  @override
  String get portfolioClosedNote => 'ཧུར་ཁག་ཚང་མ་བཙོངས་ཟིན';

  @override
  String get portfolioTransactions => 'ཉོ་འཚོང';

  @override
  String get portfolioRealizedByYear => 'ལོ་རེའི་ལག་ཐོབ་ཁེ་སྤོགས';

  @override
  String get portfolioRealizedHint =>
      'འཚོང་བ་དེ་དང་པོར་ཁྱེད་ཀྱི་ཉོ་སྒྲུབ་རྙིང་ཤོས་དང་མཐུན་སྒྲིག་བྱེད (FIFO)། དེ་རིང་གི་དངུལ་བརྗེའི་ཐང་ཚད་ལྟར་བསྒྱུར་ཡོད། ཁྲལ་འབབ་ཞུ་ཐོའི་ཆེད་དུ་ཁྱེད་ཀྱི་བར་མིའི་གསལ་ཐོ་བེད་སྤྱོད་གནང་།';

  @override
  String staleNewResults(String symbol, String date) {
    return 'དབྱེ་ཞིབ་འདི་བྱས་རྗེས་ཟླ་གསུམ་གྲུབ་འབྲས་གསར་པ་སྤེལ་ཟིན། ($symbol, $date)';
  }

  @override
  String get newResultsBadge => 'གྲུབ་འབྲས་གསར་པ';

  @override
  String get portfolioImportBrokers =>
      'Revolut དང་ Trading 212 དང་ Interactive Brokers ནས་ཕྱིར་འདྲེན་བྱས་པའི་ཡིག་ཆ་ཡང་བཙོང་བ་དང་བཅས་ངོས་འཛིན་བྱེད། ཁེ་བགོ་དང་དངུལ་འཇོག་ནི་བཞག་ནས་འགྲོ།';

  @override
  String get portfolioImportFile => 'ཡིག་ཆ་ཞིག་འདེམས།';

  @override
  String offlineBanner(String time) {
    return 'འབྲེལ་མཐུད་མེད། – མཐའ་མར་ཉར་ཚགས་བྱས་པའི་གཞི་གྲངས་སྟོན་བཞིན་པ། ($time)';
  }

  @override
  String get glossMarketCap =>
      'ཧུར་ཁག་ཁྲོམ་རར་ཚོང་ཁང་ཧྲིལ་པོའི་རིན་ཐང་ཇི་ཙམ་ཡོད་པ། ཧུར་ཁག་གི་རིན་གོང་ × ཧུར་ཁག་གི་གྲངས་ཀ།';

  @override
  String get glossSharesOutstanding =>
      'ཚོང་ཁང་གིས་ཧུར་ཁག་ག་ཚོད་བཏོན་ཡོད་པ། དེ་མང་དུ་ཕྱིན་ན་ཧུར་ཁག་རེ་རེའི་ཐོབ་ཆ་ཆུང་དུ་འགྲོ། ཧུར་ཁག་ཕྱིར་ཉོས་ན་དེ་ཉུང་དུ་འགྲོ།';

  @override
  String get glossPeTrailing =>
      'རིན་གོང་ ÷ འདས་པའི་ཟླ་བ་ 12 ནང་གི་ཧུར་ཁག་རེའི་ཁེ་སྤོགས། ད་ལྟའི་ཁེ་སྤོགས་ལོ་ག་ཚོད་ཀྱི་རིན་སྤྲོད་ཀྱི་ཡོད་པ་སྟོན། དམའ་ན་ཁེ་བ་ཡིན། འོན་ཀྱང་མགྱོགས་པོར་འཕེལ་བའི་ཚོང་ཁང་གི་ P/E རྒྱུན་དུ་མཐོ་བ་ཡོད།';

  @override
  String get glossPeForward =>
      'P/E དང་འདྲ། འོན་ཀྱང་དབྱེ་ཞིབ་པས་མ་འོངས་པའི་ཟླ་བ་ 12 ལ་རེ་བའི་ཁེ་སྤོགས་བེད་སྤྱོད། འདས་པའི་ P/E ལས་དམའ་ན་ཁེ་སྤོགས་འཕེལ་རྒྱུའི་རེ་བ་ཡོད།';

  @override
  String get glossPb =>
      'རིན་གོང་ ÷ ཧུར་ཁག་རེའི་དེབ་ཐོའི་རིན་ཐང་ (རྒྱུ་ནོར་ནས་བུ་ལོན་ཕུད་པ)། 1 ཙམ་ཡིན་ན་ཁྲོམ་རས་ཚོང་ཁང་ལ་ཤོག་བུའི་ཐོག་གི་རྒྱུ་ནོར་དང་མཉམ་པའི་རིན་ཐང་བཞག་ཡོད།';

  @override
  String get glossPs =>
      'ཁྲོམ་རའི་རིན་ཐང་ ÷ ལོ་རེའི་ཡོང་འབབ། ད་དུང་ཁེ་སྤོགས་ཉུང་བའམ་མེད་པའི་ཚོང་ཁང་ལ་ཕན། ལས་རིགས་གཅིག་གི་ནང་དུ་བསྡུར་དགོས།';

  @override
  String get glossEvToFcf =>
      'བུ་ལོན་བཅས་པའི་ཚོང་ཁང་གི་རིན་ཐང་ (EV) ÷ མ་འཇོག་རྗེས་ལོ་གཅིག་ལ་བསྐྲུན་པའི་དངུལ་ལག་མ། དམའ་ན་རིན་གོང་དེར་དངུལ་ལག་མ་མང་བ་ཐོབ།';

  @override
  String get glossPeg =>
      'P/E ÷ རེ་བའི་ལོ་རེའི་ཁེ་སྤོགས་འཕེལ་ཚད (%)། 1 ཙམ་ཡིན་ན་རྒྱུན་དུ་འོས་འཚམ་པར་བརྩི། དེས་ P/E འཕེལ་རྒྱས་དང་བསྡུར་ནས་སྟོན།';

  @override
  String get glossEps =>
      'འདས་པའི་ཟླ་བ་ 12 ནང་ཧུར་ཁག་རེའི་ཁེ་སྤོགས། ལོ་ནས་ལོར་ EPS འཕེལ་བ་ནི་ཚོང་ཁང་བདེ་ཐང་ཡིན་པའི་རྟགས་ཤུགས་ཆེ་ཤོས་ཀྱི་གཅིག་ཡིན།';

  @override
  String get glossBeta =>
      'ཧུར་ཁག་དེ་ཁྲོམ་ར་དང་མཉམ་དུ་ག་ཚོད་འགུལ་བ། 1 = ཁྲོམ་ར་དང་འདྲ། 1.5 = 50% ཙམ་གྱིས་འགྱུར་ལྡོག་ཆེ་བ། 1 ལས་དམའ = ཞི་བ།';

  @override
  String get glossRevenueTtm =>
      'འདས་པའི་ཟླ་བ་ 12 ནང་གི་ཚོང་འབབ་ཧྲིལ་པོ། འགྲོ་སོང་གང་ཡང་མ་ཕུད་གོང་།';

  @override
  String get glossNetIncomeTtm =>
      'འདས་པའི་ཟླ་བ་ 12 ནང་འགྲོ་སོང་དང་སྐྱེད་ཀ། ཁྲལ་ཚང་མ་ཕུད་རྗེས་ལྷག་པའི་ཁེ་སྤོགས།';

  @override
  String get glossGrossMargin =>
      'ཐོན་རྫས་ཀྱི་ཐད་ཀའི་འགྲོ་སོང་ཕུད་རྗེས་ཡོང་འབབ་ལས་ལྷག་པའི་ཆ་ཚད། ཚད་མཐོ་ན་རྒྱུན་དུ་རིན་གོང་གཏན་འཁེལ་གྱི་ནུས་པ་ཡོད་པ་སྟོན།';

  @override
  String get glossOperatingMargin =>
      'ལས་སྒོ་སྐྱོང་བའི་འགྲོ་སོང་ (གླ་ཕོགས། ཁང་གླ། ཚོང་སྒྲིལ།) ཕུད་རྗེས། སྐྱེད་ཀ་དང་ཁྲལ་མ་ཕུད་གོང་ཡོང་འབབ་ལས་ལྷག་པའི་ཆ་ཚད།';

  @override
  String get glossNetMargin =>
      'ཡོང་འབབ་ལས་མཐའ་མའི་ཁེ་སྤོགས་སུ་གྱུར་པའི་ཆ་ཚད། 20% ཞེས་པ་ཚོང་འབབ་ 100 རེ་ལས་ 20 ཁེ་སྤོགས་ཡིན་པ།';

  @override
  String get glossRoe =>
      'རང་མ་རྩའི་ཁེ་འབབ་ཚད། ལོ་རེའི་ཁེ་སྤོགས་ ÷ བདག་པོའི་མ་རྩ། འགན་འཛིན་པས་ཧུར་ཁག་བདག་པོའི་དངུལ་ག་ཚོད་ལེགས་པོར་བེད་སྤྱོད་བྱེད་པ་སྟོན། 15% ཙམ་ལས་བརྒལ་ན་ཤུགས་ཆེ།';

  @override
  String get glossRoa =>
      'རྒྱུ་ནོར་གྱི་ཁེ་འབབ་ཚད། ལོ་རེའི་ཁེ་སྤོགས་ ÷ ཚོང་ཁང་གི་རྒྱུ་ནོར་ཡོངས། ལས་རིགས་གཅིག་གི་ནང་དུ་བསྡུར་དགོས།';

  @override
  String get glossDebtToEquity =>
      'བུ་ལོན་ ÷ བདག་པོའི་མ་རྩ། མཐོ་ན་སྐྱིན་པའི་དངུལ་མང་བ་སྟེ། སྐྱེད་ཀ་མཐོ་རུ་སོང་བའམ་ཚོང་ལས་དལ་དུ་སོང་ན་ཉེན་ཁ་ཆེ།';

  @override
  String get glossCurrentRatio =>
      'དུས་ཐུང་རྒྱུ་ནོར་ ÷ ལོ་གཅིག་གི་ནང་སྤྲོད་དགོས་པའི་བུ་ལོན། 1 ལས་བརྒལ་ན་ཚོང་ཁང་གིས་ཉེ་དུས་ཀྱི་བུ་ལོན་སྤྲོད་ཐུབ།';

  @override
  String get glossRevenueGrowth =>
      'ལོ་གཅིག་སྔོན་དང་བསྡུར་ན་ཡོང་འབབ་ག་ཚོད་འཕེལ་བ།';

  @override
  String get glossEpsGrowth =>
      'ལོ་གཅིག་སྔོན་དང་བསྡུར་ན་ཧུར་ཁག་རེའི་ཁེ་སྤོགས་ག་ཚོད་འཕེལ་བ།';

  @override
  String get glossDividendYield =>
      'ལོ་རེའི་ཁེ་བགོ་ ÷ ཧུར་ཁག་གི་རིན་གོང་། ཁྱེད་ཀྱིས་སྤྲད་པའི་བརྒྱ་ཆར་ལོ་རེར་ཐོབ་རྒྱུའི་དངུལ་ལག་མའི་ཡོང་འབབ།';

  @override
  String get glossDividendPerShare =>
      'འདས་པའི་ལོ་ནང་ཧུར་ཁག་གཅིག་ལ་སྤྲད་པའི་ཁེ་བགོ།';

  @override
  String get glossPayoutRatio =>
      'ཁེ་སྤོགས་ལས་ཁེ་བགོར་སྤྲད་པའི་ཆ་ཚད། 100% ལས་བརྒལ་ན་ཚོང་ཁང་གིས་ཐོབ་པ་ལས་མང་བ་སྤྲོད་ཀྱི་ཡོད་པས་ཡུན་རིང་མི་ཐུབ།';

  @override
  String get glossTitle => 'འདིའི་དོན་ག་རེ་རེད།';

  @override
  String get watchNewsTitle => 'ཁྱེད་ཀྱི་ཧུར་ཁག་གི་གསར་འགྱུར';

  @override
  String get undo => 'ཕྱིར་ལྡོག';

  @override
  String get watchSort => 'རིམ་སྒྲིག';

  @override
  String get watchSortOwn => 'ངའི་གོ་རིམ';

  @override
  String get watchSortGainers => 'འཕར་ཆེ་ཤོས་སྔོན་ལ';

  @override
  String get watchSortLosers => 'ཆག་ཆེ་ཤོས་སྔོན་ལ';

  @override
  String get watchSortName => 'ཨང་རྟགས་ལྟར (A–Z)';

  @override
  String get watchHint =>
      'གོ་རིམ་བསྒྱུར་བར་ལག་ཡུ་འཐེན། སུབ་པར་གཡོན་ཕྱོགས་སུ་འདྲུད། ཐིག་གིས་ཉིན་ 30 སྔོན་མ་སྟོན།';

  @override
  String analysisReady(String symbol) {
    return '$symbol: ཁྱེད་ཀྱི་དབྱེ་ཞིབ་གྲ་སྒྲིག་ཡོད།';
  }

  @override
  String alertFromCost(String price) {
    return 'ཁྱེད་ཀྱི་ཉོ་གོང་ཆ་སྙོམས ($price) ལ་གཞིགས་ནས།';
  }

  @override
  String get briefTitle => 'དེ་རིང་ཁྱེད་ཀྱི་ཚོང་ཤེར།';

  @override
  String get briefButton => 'དེ་རིང་གི་བསྡུས་དོན།';

  @override
  String get briefHint =>
      'ཁྱེད་ཀྱི་མ་འཇོག་ཐོ་དང་དགའ་ཤོས་ཚོ་དེ་རིང་ཇི་ལྟར་འགྱུར་བ་དང་གསར་འགྱུར་གསར་ཤོས་ཀྱིས་ཅི་ཟེར་བའི་AIཡི་བསྡུས་དོན་ཐུང་ངུ་། དབྱེ་ཞིབ་མི་བེད་སྤྱོད།';

  @override
  String get briefRefresh => 'གསར་བསྒྱུར།';

  @override
  String get sectionEarnings => 'ཁེ་སྤོགས་སྙན་ཞུ';

  @override
  String earningsNext(String date) {
    return 'རྗེས་མའི་སྙན་ཞུ: $date';
  }

  @override
  String get earningsExpected => 'རེ་སྒུག་བྱས་པའི་EPS';

  @override
  String get earningsReported => 'སྙན་ཞུ་བྱས་པའི་EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'ཉེ་ཆར་གྱི་ཟླ་གསུམ་ $total ཡི་ནང་ $beats ལ་ EPS རེ་སྒུག་དང་མཉམ་པའམ་དེ་ལས་མཐོ།',
      one: 'ཟླ་གསུམ་ 1 ཡི་ནང་ $beats ལ་ EPS རེ་སྒུག་དང་མཉམ་པའམ་དེ་ལས་མཐོ།',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol: སང་ཉིན་ཟླ་གསུམ་རེའི་གྲུབ་འབྲས།';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol: དེ་རིང་ཟླ་གསུམ་རེའི་གྲུབ་འབྲས།';
  }

  @override
  String get earningsRemindersTitle => 'གྲུབ་འབྲས་དྲན་སྐུལ།';

  @override
  String get earningsRemindersSubtitle =>
      'ཁྱེད་ཀྱི་དགའ་མོས་སམ་མ་འཛུགས་ཀྱི་ཚོང་ཀས་ཟླ་གསུམ་རེའི་གྲུབ་འབྲས་མ་སྤེལ་གོང་ཉིན་གཅིག་ལ་བརྡ་ཐོ།';

  @override
  String addAllToFavorites(int count) {
    return 'ཚང་མ་དགའ་མོས་སུ་སྣོན ($count)';
  }

  @override
  String get portfolioImportPhoto => 'བརྙན་ཡོལ་པར་རིས་ནས་ནང་འདྲེན།';

  @override
  String get holdingsReading => 'ཁྱེད་ཀྱི་ཉར་ཡོད་ཧུར་ཁག་ཀློག་བཞིན་པ…';

  @override
  String get holdingsReviewTitle => 'རྙེད་པའི་ཉར་ཡོད་ཧུར་ཁག';

  @override
  String get holdingsReviewHint =>
      'ཁ་སྣོན་མ་བྱས་གོང་ཨང་གྲངས་ཞིབ་བཤེར་གནང་རོགས། གོང་ཚད་དེ་དེ་རིང་གི་གོང་ཚད་མ་ཡིན་པར་ཧུར་ཁག་རེའི་ཆ་སྙོམས་ཉོ་གོང་ཡིན།';

  @override
  String get holdingsNoPrice => 'པར་རིས་ནང་ཆ་སྙོམས་ཉོ་གོང་མི་འདུག';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ཉར་ཡོད་ཧུར་ཁག་ $count སྣོན',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'པར་རིས་འདིའི་ནང་ཧུར་ཁག་གི་ཉར་ཡོད་མ་རྙེད། ཁྱེད་ཀྱི་བརྐོ་བའི་ཉར་ཡོད་ཤོག་ངོས་ཀྱི་བརྙན་ཡོལ་པར་རིས་ཤིག་ཚོད་ལྟ་གནང་རོགས།';

  @override
  String get week52Range => 'གཟའ་འཁོར་ 52 ནང་གི་ཁྱབ་ཁོངས';

  @override
  String week52BelowHigh(String percent) {
    return 'གཟའ་འཁོར་ 52 ནང་གི་མཐོ་ཤོས་ལས་ $percent དམའ་བ';
  }

  @override
  String get week52AtHigh => 'གཟའ་འཁོར་ 52 ནང་གི་མཐོ་ཤོས་སུ';

  @override
  String get alertKindTrailing => 'ཡང་རྩེ་ནས་ཆག་ན';

  @override
  String get alertTrailingPercent => 'ཡང་རྩེ་ནས་ཆག་ཚད (%)';

  @override
  String get alertTrailingHint =>
      'གོང་ཚད་ཡར་འཕར་བའི་རྗེས་སུ་འབྲང་། སྒྲིག་པ་ནས་བཟུང་ཐོབ་པའི་གོང་ཚད་མཐོ་ཤོས་ནས་འདི་ཙམ་ཆག་ན་བརྡ་གཏོང་།';

  @override
  String alertDescTrailing(String percent) {
    return 'ཡང་རྩེ་ནས་ $percent ཆག';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'ད་བར་གྱི་ཡང་རྩེ: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol ཡང་རྩེ་ནས་ $percent ཆག་སོང་།';
  }

  @override
  String get sectionInsiders => 'ནང་ཁུལ་མིའི་ཉོ་འཚོང';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ཉོ་བ་ $count',
      one: 'ཉོ་བ་ 1',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'འཚོང་བ་ $count',
      one: 'འཚོང་བ་ 1',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'ལྷག་མ། ཧུར་ཁག $shares';
  }

  @override
  String get insiderBuy => 'ཉོས་པ';

  @override
  String get insiderSell => 'བཙོངས་པ';

  @override
  String get insiderHint =>
      'ཉིན་ 90 ནང་ལས་དོན་འགན་འཛིན་དང་འགོ་འཛིན་ཚོས་ཁ་ཕྱེ་ཚོང་ར་ནས་ཉོ་འཚོང་བྱས་པ། (SEC Form 4) འདེམས་ཆ་ལག་བསྟར་དང་ཧུར་ཁག་གི་བྱ་དགའ་མི་རྩིས།';

  @override
  String get insiderNone =>
      'ཉིན་ 90 ནང་ཁ་ཕྱེ་ཚོང་ར་ནས་ནང་ཁུལ་མིའི་ཉོ་འཚོང་མེད།';

  @override
  String get analystTrend => 'ཟླ་བ་རེ་རེར་བསམ་འཆར་ཇི་ལྟར་འགྱུར་བ།';

  @override
  String get watchListAll => 'ཚང་མ';

  @override
  String get watchListNew => 'ཐོ་ཡིག་གསར་པ';

  @override
  String get watchListName => 'ཐོ་ཡིག་གི་མིང་';

  @override
  String get watchListRename => 'ཐོ་ཡིག་གི་མིང་བསྒྱུར';

  @override
  String get watchListDelete => 'ཐོ་ཡིག་སུབ';

  @override
  String get watchListAddTo => 'ཐོ་ཡིག་ལ་སྣོན';

  @override
  String get watchListEmpty =>
      'ཐོ་ཡིག་འདིའི་ནང་ད་དུང་མ་འཛིན་མེད། སྣོན་པར་མ་འཛིན་གྱི་འགྲམ་གྱི་ཐོ་ཡིག་མཐེབ་གནོན་ལ་ཨེབ།';

  @override
  String get portfolioAskTitle => 'ཁྱེད་ཀྱི་མ་འཇོག་ཚོགས་སྡེབ་སྐོར་གྱི་དྲི་བ།';

  @override
  String get rangeYtd => 'ད་ལོ';

  @override
  String get backupTitle => 'གྲབས་ཉར།';

  @override
  String get backupSave => 'གྲབས་ཉར་ཉར་ཚགས།';

  @override
  String get backupSaveHint =>
      'ཁྱེད་ཀྱི་དགའ་མོས་དང་། ཐོ་ཡིག མ་འཇོག་ཚོགས་སྡེབ། ཉེན་བརྡ། ཟིན་ཐོ་བཅས་ཡིག་ཆ་གཅིག་གི་ནང་།';

  @override
  String get backupRestore => 'གྲབས་ཉར་ནས་སླར་གསོ།';

  @override
  String get backupRestoreHint =>
      'ཡིག་ཆའི་ནང་ཡོད་པ་ཁ་སྣོན་བྱེད། ཁྱེད་ལ་ད་ལྟ་ཡོད་པ་གང་ཡང་མི་སུབ།';

  @override
  String get backupRestored => 'གྲབས་ཉར་སླར་གསོ་བྱས་ཟིན།';

  @override
  String get backupInvalid => 'ཡིག་ཆ་འདི་ WhatStock གྱི་གྲབས་ཉར་མིན།';

  @override
  String get allocationPositions => 'ཧུར་ཁག';

  @override
  String get allocationSectors => 'སྡེ་ཚན';

  @override
  String get allocationCurrencies => 'དངུལ་ལོར';

  @override
  String get compareReturn1y => 'ལོ་ 1 ནང་གི་ཁེ་ཕན';

  @override
  String get compareFromHigh => 'གཟའ་འཁོར་ 52 ནང་གི་མཐོ་ཤོས་ལས་ཐག་རིང་ཚད';

  @override
  String get briefAutoTitle => 'ཞོགས་པ་རེ་རེར་ཉིན་རེའི་བསྡུས་དོན།';

  @override
  String get briefAutoSubtitle =>
      'ཉེར་སྤྱོད་འཁོར་བཞིན་པའི་སྐབས་ཞོགས་པའི་ཆུ་ཚོད་7:00རྗེས་སུ་“དེ་རིང་ཁྱེད་ཀྱི་ཚོང་ཤེར།” རང་འགུལ་གྱིས་བཟོ་གི་ཡོད། གློག་ཀླད་སྟེང་བརྡ་ཐོ་ཞིག་གིས་ཁྱེད་ལ་བརྡ་སྤྲོད། ཉིན་རེའི་དྲི་བའི་ཚད་ནས་འགྲོ་བ་ཡིན་ལ་དབྱེ་ཞིབ་མི་བེད་སྤྱོད།';

  @override
  String get targetsButton => 'དམིགས་ཡུལ་བགོ་འགྲེམས';

  @override
  String get targetsTitle => 'དམིགས་ཡུལ་བགོ་འགྲེམས';

  @override
  String get targetsHint =>
      'ཧུར་ཁག་རེ་རེར་མ་འཛུགས་ཁྱོན་ནས་ཆ་ཤས་ག་ཚོད་ཡོད་དགོས་པ་གཏན་འཁེལ་གནང་། དམིགས་ཡུལ་མེད་ན་ས་སྟོང་པར་བཞག། དེ་ནས་ཉེར་སྤྱོད་ཀྱིས་དེར་སླེབས་ཆེད་ཉོ་དགོས་པའམ་འཚོང་དགོས་པ་གང་ཡིན་སྟོན་གྱི་རེད།';

  @override
  String targetsSum(String percent) {
    return 'ཁྱོན་བསྡོམས་: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'ཉོ ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'འཚོང ≈ $amount';
  }

  @override
  String get rebalanceOk => 'དམིགས་ཡུལ་ཐོག';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol: རེ་སྒུག་བྱས་པའི་EPS ལས་མཐོ།';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol: རེ་སྒུག་བྱས་པའི་EPS ལས་དམའ།';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'སྙན་ཞུ་བྱས་པའི་EPS $actual། རེ་སྒུག་བྱས་པ $estimate';
  }

  @override
  String get newsExplain => 'འདིའི་དོན་གང་ཡིན།';

  @override
  String get watchAlertAll => 'ཉིན་རེའི་འགྱུར་བ་ཆེན་པོར་ཉེན་བརྡ།';

  @override
  String get watchAlertAllHint =>
      'ཐོ་ཡིག་འདིའི་ནང་གི་མ་འཛུགས་རེ་རེར་རིན་གོང་གི་ཉེན་བརྡ། ཉིན་གཅིག་ལ་གོང་དུ་འམ་འོག་ཏུ་ཚད་འདི་ཙམ་འགྱུར་ན་བརྡ་གཏོང་། སྔར་ནས་ཉེན་བརྡ་ཡོད་པ་རྣམས་དེ་བཞིན་སྡོད།';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ཉེན་བརྡ་ $count བཀོད་ཟིན།',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'ཐོབ་ཟིན་པའི་ཁེ་བཟང་ཕྱིར་འདྲེན། (CSV)';

  @override
  String get portfolioAnnualReturn => 'ལོ་རེའི་ཁེ་འབབ';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / ལོ';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'དངུལ་ལ་གཞིགས་པའི་ལོ་རེའི་ཁེ་འབབ (XIRR)། ཁྱེད་ཀྱིས་ནམ་ཉོས་པ་དང་ནམ་བཙོངས་པ་རྩིས་སུ་བཟུང་ཡོད་པས། རྗེས་སུ་བསྣན་པའི་དངུལ་གྱིས་དེ་ལ་འཁྱོག་གཏོང་མི་བྱེད། ཁྱེད་ཀྱི་ཉོ་སྒྲུབ་དང་པོ་ལོ་གཅིག་ལས་མི་ཉུང་བ་ཕྱིན་རྗེས་མངོན་གྱི་ཡོད། ཁེ་བགོ་ཚུད་མེད།';

  @override
  String get eventsAddToCalendar => 'ལོ་ཐོར་སྣོན (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'མ་འཛུགས་ཉེན་བརྡ།';

  @override
  String get portfolioMoveAlertSubtitle =>
      'ཁྱེད་ཀྱི་མ་འཛུགས་ཧྲིལ་པོ་ཉིན་གཅིག་ལ་འདི་ཙམ་འགྱུར་ན་བརྡ་ཐོ།';

  @override
  String get portfolioMoveAlertOff => 'སྒོ་བརྒྱབ།';

  @override
  String portfolioMoveUp(String percent) {
    return 'དེ་རིང་ཁྱེད་ཀྱི་མ་འཛུགས་ $percent འཕར་སོང་།';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'དེ་རིང་ཁྱེད་ཀྱི་མ་འཛུགས་ $percent ཆག་སོང་།';
  }

  @override
  String get whatIfTitle => 'གལ་ཏེ་མ་འཇོག་བྱས་ན་ཅི་འགྱུར།';

  @override
  String get whatIfAmount => 'གྲངས་འབོར།';

  @override
  String whatIfResult(String amount, String period) {
    return '$period སྔོན་ལ་མ་འཇོག་བྱས་པའི་ $amount གྱི་དེ་རིང་གི་རིན་ཐང་།';
  }

  @override
  String get whatIfNote =>
      'མ་ཤེར་གྱི་རིན་གོང་ཁོ་ན་ལ་གཞི་བཅོལ་ཡོད། ཁེ་བགོ་དང་འགྲོ་གྲོན། ཁྲལ་འབབ་བཅས་མ་ཚུད། སྔོན་གྱི་ཁེ་ཕན་གྱིས་མ་འོངས་པའི་ཁེ་ཕན་སྔོན་དཔག་མི་བྱེད།';

  @override
  String get watchShare => 'ཐོ་ཡིག་མཉམ་སྤྱོད།';

  @override
  String get watchImport => 'ཧུར་ཁག་ཨང་རྟགས་ཁ་སྣོན།';

  @override
  String get watchImportHint =>
      'ཧུར་ཁག་ཨང་རྟགས་རྣམས་ , དང་བར་སྟོང་། ཡང་ན་ཕྲེང་གསར་པས་ཁ་ཕྲལ་ནས་སྦྱོར་རོགས། དཔེར་ན། མི་ཞིག་གིས་ཁྱེད་ལ་མཉམ་སྤྱོད་བྱས་པའི་ཐོ་ཡིག';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ཧུར་ཁག་ $count ཁ་སྣོན་བྱས་ཟིན།',
      one: 'ཧུར་ཁག་ 1 ཁ་སྣོན་བྱས་ཟིན།',
      zero: 'ཧུར་ཁག་གསར་པ་མེད།',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'ཆེ་ཤོས་སྔོན་ལ';

  @override
  String get positionsSortGain => 'ཁྱོན་བསྡོམས་ཁེ་ཆེ་ཤོས་སྔོན་ལ';

  @override
  String get positionsSortToday => 'དེ་རིང་ལེགས་ཤོས་སྔོན་ལ';

  @override
  String get chartMyBuys => 'ཁྱེད་ཀྱི་ཉོ་བ';

  @override
  String get chartMySells => 'ཁྱེད་ཀྱི་འཚོང་བ';

  @override
  String get shortcutsTitle => 'མཐེབ་གཞོང་གི་མྱུར་མཐེབ';

  @override
  String usMarketOpen(String time) {
    return 'ཨ་རིའི་ཚོང་ར་ཁ་ཕྱེ་ཡོད། · $time རྗེས་སུ་སྒོ་རྒྱག';
  }

  @override
  String usMarketClosed(String time) {
    return 'ཨ་རིའི་ཚོང་ར་སྒོ་བརྒྱབ་ཡོད། · $time རྗེས་སུ་སྒོ་འབྱེད';
  }

  @override
  String durationMinutes(int minutes) {
    return 'སྐར་མ་ $minutes';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return 'ཆུ་ཚོད་ $hours སྐར་མ་ $minutes';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return 'ཉིན་ $days ཆུ་ཚོད་ $hours';
  }

  @override
  String get portfolioGoalSet => 'དམིགས་ཚད་འཇོག';

  @override
  String get portfolioGoalTitle => 'མ་འཇོག་ཚོགས་སྡེབ་ཀྱི་དམིགས་ཚད';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · དམིགས་ཚད། $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'དམིགས་ཚད་ལ་སླེབས་སོང་། $amount';
  }

  @override
  String get portfolioGoalRemove => 'དམིགས་ཚད་སུབ';

  @override
  String get alertEdit => 'ཉེན་བརྡ་རྩོམ་སྒྲིག';

  @override
  String get positionOpenLots => 'ད་དུང་ཉར་ཡོད་པ། (རྙིང་ཤོས་སྔོན་ལ།)';

  @override
  String get lotRemoved => 'ཉོ་འཚོང་བསུབས་ཟིན';

  @override
  String get alertDeleted => 'ཉེན་བརྡ་བསུབས་ཟིན';

  @override
  String get alertsClearTriggered => 'འགུལ་སློང་བྱུང་བའི་ཉེན་བརྡ་གཙང་སེལ';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ཉེན་བརྡ་ $count བསུབས་ཟིན།',
      one: 'ཉེན་བརྡ་ 1 བསུབས་ཟིན།',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'གཙོ་ངོས།';

  @override
  String get allocationCountries => 'རྒྱལ་ཁབ';

  @override
  String get newsExplainNoteResearch =>
      'AI འགྲེལ་བཤད། དྲ་རྒྱའི་ཐོག་དངོས་ཡོད་གནས་ཚུལ་འཚོལ་བ་དང་། རྩོམ་ཡིག་ཁ་ཕྱེ་བ། འབྱུང་ཁུངས་ཇི་ཙམ་ཡིད་ཆེས་རུང་བ་ལ་དཔྱད་པ་བཅས་བྱེད། མ་འཇོག་གི་བསམ་འཆར་མིན། ཉིན་རེའི་དྲི་བའི་ཚད་ནས་འགྲོ་བ་ཡིན་ལ་དབྱེ་ཞིབ་མི་བེད་སྤྱོད།';

  @override
  String get sourceOfficial => 'གཞུང་འབྲེལ';

  @override
  String get sourcePressRelease => 'གསར་འགྱུར་གསལ་བསྒྲགས';

  @override
  String get sourceMajorNews => 'བརྒྱུད་ལམ་གཙོ་བོ';

  @override
  String get sourceOpinion => 'བསམ་ཚུལ';

  @override
  String get earningsSummaryButton => 'སྙན་ཞུ་གསར་ཤོས་ནང་ཅི་ཞིག་ཡོད་དམ།';

  @override
  String get earningsSummaryNote =>
      'ཀུང་སིའི་གྲུབ་འབྲས་གསལ་བསྒྲགས་དང་དྲ་རྒྱའི་ཐོག་རྙེད་པའི་གསར་འགྱུར་སྙན་ཞུའི་AI བསྡུས་དོན། མ་འཇོག་གི་བསམ་འཆར་མིན། ཉིན་རེའི་དྲི་བའི་ཚད་ནས་འགྲོ་བ་ཡིན་ལ་དབྱེ་ཞིབ་མི་བེད་སྤྱོད།';

  @override
  String get compareLastSurprise => 'སྔོན་མའི་དུས་བཞི་EPS དང་རེ་སྒུག';

  @override
  String get compareNextReport => 'རྗེས་མའི་སྙན་ཞུ';

  @override
  String get resolvingDescription =>
      'ཁྱེད་རང་གིས་བཤད་པའི་ཧུར་ཁག་གང་ཡིན་ངོས་འཛིན་བྱེད་བཞིན་པ…';

  @override
  String get instrumentTitle => 'ཡོ་བྱད་འདིའི་སྐོར།';

  @override
  String get instrumentHint =>
      'མཚོན་རྟགས་འདིར་ཀུང་སིའི་ངོ་སྤྲོད་མེད། ETF དང་མ་དངུལ་ཚོགས་པ། ཡང་ན་གཏའ་འཇོག་བྱུང་འཛིན་ཡིན་སྲིད། འདི་ཅི་ཞིག་ཡིན་པ་དང་ནང་དུ་ཅི་ཡོད་པ། རིན་གོང་ཅི་ཙམ་ཡིན་པ་ AI ལ་དྲིས།';

  @override
  String get instrumentAsk => 'འདི་ཅི་ཞིག་རེད།';

  @override
  String get instrumentNote =>
      'སྤེལ་མཁན་གྱི་མ་དངུལ་ཤོག་ངོས་དང་དྲ་རྒྱའི་ཐོག་རྙེད་པའི་དངུལ་རྩིས་དྲ་ཚིགས་ལས་བྱུང་བའི་ AI འགྲེལ་བཤད། མ་འཇོག་གི་བསམ་འཆར་མིན། ཉིན་རེའི་དྲི་བའི་ཚད་ནས་འགྲོ་བ་ཡིན་ལ་དབྱེ་ཞིབ་མི་བེད་སྤྱོད།';

  @override
  String suggestAskAi(String query) {
    return 'AI ལ་དྲིས། “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return '$symbols ལ་ད་ལྟའི་གོང་ཚད་མེད།';
  }

  @override
  String get eventsRecentResults => 'ཉེ་ཆར་སྙན་ཞུ་བྱས་པའི་གྲུབ་འབྲས';

  @override
  String get saveToNotes => 'ངའི་ཟིན་ཐོར་ཉར་ཚགས།';

  @override
  String get savedToNotes => 'ཁྱེད་ཀྱི་ཟིན་ཐོར་ཉར་ཟིན།';

  @override
  String get portfolioDividendsReceived => 'ཐོབ་པའི་ཁེ་བགོས།';

  @override
  String get portfolioDividendsThisYear => 'ད་ལོ།';

  @override
  String get portfolioDividendsAllTime => 'དུས་ཡུན་ཡོངས།';

  @override
  String get portfolioAddDividend => 'ཁེ་བགོས་ཁ་སྣོན།';

  @override
  String portfolioDividendAmount(String currency) {
    return 'ཐོབ་པའི་དངུལ་འབོར། ($currency)';
  }

  @override
  String get portfolioDividendDate => 'སྤྲོད་པའི་ཚེས་གྲངས།';

  @override
  String get portfolioDividendsEmpty =>
      'ད་དུང་ཁེ་བགོས་གང་ཡང་ཐོ་འགོད་བྱས་མེད། ལག་ཐོག་ནས་ཁ་སྣོན་བྱོས། ཡང་ན་ཁྱེད་ཀྱི་ཚོང་བར་གྱི་ཕྱིར་གཏོང་ཡིག་ཆ་ནང་འདྲེན་བྱོས། དེའི་ཁེ་བགོས་ཐིག་ཕྲེང་ཡང་ལེན་གི་ཡོད།';

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ཁེ་བགོས་ $count ཁ་སྣོན་བྱས།',
      one: 'ཁེ་བགོས་ 1 ཁ་སྣོན་བྱས།',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'ཁེ་བགོས་ཕྱིར་གཏོང། (CSV)';

  @override
  String get portfolioDividendDeleted => 'ཁེ་བགོས་བསུབས་ཟིན།';

  @override
  String get portfolioDividendsHint =>
      'དངུལ་འབོར་ནི་ཁྱེད་ཀྱི་རྩིས་ཁྲར་འབྱོར་བ་ལྟར་སྤྲོད་དངུལ་གྱི་དངུལ་ལུགས་ཐོག་ཡིན། བསྡོམས་འབོར་དེ་རིང་གི་བརྗེ་ཚད་ལྟར་བསྒྱུར་ཡོད། ཁྱེད་ཀྱི་ཁྲལ་ཐོ་ཆེད་ཚོང་བར་གྱི་རྩིས་ཐོ་བེད་སྤྱོད་གནང་རོགས།';

  @override
  String get awayTitle => 'ཁྱེད་རང་མེད་སྐབས།';

  @override
  String awaySince(String when) {
    return '$when ནས།';
  }

  @override
  String get awayQuiet => 'གང་ཡང་ཆེར་འགྱུར་བ་མ་བྱུང་།';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'དྲན་སྐུལ་ $count བྱུང་།',
      one: 'དྲན་སྐུལ་ 1 བྱུང་།',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'གྲུབ་འབྲས་བསྒྲགས་པ། $symbols';
  }

  @override
  String get moveWhyButton => 'དེ་རིང་ཅིའི་ཕྱིར་འགྱུར་བ་འགྲོ་གི་ཡོད་དམ།';

  @override
  String moveWhyTitle(String percent) {
    return 'དེ་རིང་ $percent';
  }

  @override
  String get moveWhyNote =>
      'དྲ་ཐོག་ནས་རྙེད་པའི་དེ་རིང་གི་གསར་འགྱུར་ལ་གཞིགས་པའི་AI་འགྲེལ་བཤད། རྒྱུ་མཚན་ངོ་མ་མི་ཤེས་པའམ་མི་འདྲ་བ་ཡོང་སྲིད། མ་འཛུགས་ཀྱི་བསླབ་བྱ་མིན། ཁྱེད་ཀྱི་ཉིན་རེའི་དྲི་བའི་ཚད་བཀག་བེད་སྤྱོད་བྱེད་ཀྱི་ཡོད། དབྱེ་ཞིབ་མིན།';

  @override
  String get sectionTechnical => 'ལག་རྩལ་རྣམ་པ།';

  @override
  String get labelSma50 => 'ཉིན་༥༠ ཆ་སྙོམས།';

  @override
  String get labelSma200 => 'ཉིན་༢༠༠ ཆ་སྙོམས།';

  @override
  String get labelRsi => 'RSI (ཉིན་༡༤)';

  @override
  String get labelVolatility30 => 'འགྱུར་ལྡོག་ཚད། (ཉིན་༣༠)';

  @override
  String techAbove(String percent) {
    return '$percent མཐོ་བ།';
  }

  @override
  String techBelow(String percent) {
    return '$percent དམའ་བ།';
  }

  @override
  String get techOverbought => 'ཉོ་ཚད་བརྒལ་བ།';

  @override
  String get techOversold => 'འཚོང་ཚད་བརྒལ་བ།';

  @override
  String get techNeutral => 'བར་མ།';

  @override
  String get techGoldenCross =>
      'ཉིན་༥༠ ཆ་སྙོམས་དེ་ཉིན་༢༠༠ ཆ་སྙོམས་ལས་མཐོ་བ་ཡོད། – སྔར་སྲོལ་འགྲེལ་བཤད་ལྟར་ཡར་འཕར་གྱི་ཁ་ཕྱོགས་ཡིན།';

  @override
  String get techDeathCross =>
      'ཉིན་༥༠ ཆ་སྙོམས་དེ་ཉིན་༢༠༠ ཆ་སྙོམས་ལས་དམའ་བ་ཡོད། – སྔར་སྲོལ་འགྲེལ་བཤད་ལྟར་མར་ཆག་གི་ཁ་ཕྱོགས་ཡིན།';

  @override
  String get glossSma50 =>
      'ཉེ་ཆར་གྱི་ཚོང་ཉིན་༥༠ ཡི་སྒོ་རྒྱག་རིན་གོང་ཆ་སྙོམས། དེ་ལས་མཐོ་བའི་རིན་གོང་ནི་མང་ཆེ་བར་དུས་ཡུན་ཐུང་ངུའི་ནུས་ཤུགས་དང་། དམའ་བ་ནི་ཞན་ཆ་ཡིན་པར་འགྲེལ།';

  @override
  String get glossSma200 =>
      'ཉེ་ཆར་གྱི་ཚོང་ཉིན་༢༠༠ ཡི་སྒོ་རྒྱག་རིན་གོང་ཆ་སྙོམས། – སྔར་སྲོལ་གྱི་དུས་ཡུན་རིང་པོའི་ཁ་ཕྱོགས་ཐིག། མ་འཇོག་མཁན་མང་པོས་དེ་ལས་མཐོ་བའི་རིན་གོང་ནི་དུས་ཡུན་རིང་པོའི་ཡར་འཕར་ཁ་ཕྱོགས་ཡིན་པར་བརྩི།';

  @override
  String get glossRsi =>
      'ལྟོས་བཅས་ནུས་ཤུགས་ཚད་སྟོན། ཉེ་ཆར་གྱི་ཁེ་བཟང་དང་གྱོང་གུན་གཉིས་༠ ནས་༡༠༠ བར་གྱི་ཚད་གཞིར་བསྡུར་བ། ༧༠ ལས་མཐོ་ན་ཤོག་ཁྱི་དེ་ཉོ་ཚད་བརྒལ་བ། (མགྱོགས་པོར་ཡར་འཕར་བ།) དང་༣༠ ལས་དམའ་ན་འཚོང་ཚད་བརྒལ་བ་ཟེར། – འོན་ཀྱང་ཁ་ཕྱོགས་ཤུགས་ཆེན་ཞིག་དེ་ལྟར་ཡུན་རིང་སྡོད་སྲིད།';

  @override
  String get glossVolatility =>
      'རིན་གོང་ཉིན་རེ་བཞིན་འགྱུར་ལྡོག་ཆེ་ཆུང་ལོ་གཅིག་ལ་བརྩིས་པ། ༢༠% ཟེར་ན་ལོ་རྒྱུན་ལྡན་ཞིག་ལ་རིན་གོང་ཕལ་ཆེར་±༢༠% ནང་འགུལ་སྐྱོད་བྱེད། འགྱུར་ལྡོག་ཚད་མཐོ་ན་ཕྱོགས་གཉིས་ཀར་འགུལ་སྐྱོད་ཆེ་བ་ཡོང།';

  @override
  String get techNote =>
      'ཉིན་རེའི་སྒོ་རྒྱག་རིན་གོང་ནས་བརྩིས་པ། ལག་རྩལ་བརྡ་རྟགས་ཀྱིས་འདས་པ་སྟོན་གྱི་ཡོད་པ་ལས་མ་འོངས་པ་མིན།';

  @override
  String portfolioAbove200(int above, int count) {
    return 'ཉར་ཡོད་ཧུར་ཁག $count ལས $above རང་གི་ཉིན་༢༠༠ ཆ་སྙོམས་ལས་མཐོ།';
  }

  @override
  String get watchSignalsTitle => 'བརྡ་རྟགས།';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · འཚོང་ཚད་བརྒལ་བ།';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · ཉོ་ཚད་བརྒལ་བ།';
  }

  @override
  String get signalCrossedAbove => 'ཉིན་༢༠༠ ཆ་སྙོམས་ལས་ཡར་བརྒལ།';

  @override
  String get signalCrossedBelow => 'ཉིན་༢༠༠ ཆ་སྙོམས་ལས་མར་བརྒལ།';

  @override
  String get signalAlertsTitle => 'ལག་རྩལ་བརྡ་རྟགས་ཀྱི་བརྡ་ཐོ།';

  @override
  String get signalAlertsSubtitle =>
      'ཉིན་རེར་ཐེངས་གཅིག ཁྱེད་ཀྱིས་རྗེས་འདེད་བྱེད་པའི་ཧུར་ཁག་འཚོང་ཚད་བརྒལ་བ་ཡང་ན་ཉོ་ཚད་བརྒལ་བ་ (RSI) ཆགས་སྐབས། ཡང་ན་དེའི་རིན་གོང་ཉིན་༢༠༠ ཆ་སྙོམས་ལས་བརྒལ་སྐབས།';

  @override
  String get signalAlertsNotification => 'ལག་རྩལ་བརྡ་རྟགས།';

  @override
  String get glossaryPageTitle => 'ཐ་སྙད་རེའུ་མིག';

  @override
  String get glossaryPageSubtitle =>
      'མཉེན་ཆས་ནང་སྟོན་པའི་གྲངས་ཀ་རེ་རེའི་འགྲེལ་བཤད་ལྷུག་པོ། P/E ནས་ RSI བར།';

  @override
  String get glossarySearchHint => 'ཐ་སྙད་རེའུ་མིག་ནང་འཚོལ།';
}
