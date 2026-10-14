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
}
