// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malayalam (`ml`).
class AppLocalizationsMl extends AppLocalizations {
  AppLocalizationsMl([String locale = 'ml']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'ഒരു ഓഹരിയുടെ ഫോട്ടോ എടുത്ത് അതിനെക്കുറിച്ച് എല്ലാം അറിയൂ.';

  @override
  String get homeHint =>
      'ഓഹരി സർട്ടിഫിക്കറ്റ്, ബ്രോക്കറേജ് ആപ്പിന്റെ സ്ക്രീൻ, പത്രം അല്ലെങ്കിൽ കമ്പനിയുടെ ലോഗോ – ഓഹരി തിരിച്ചറിയാൻ സഹായിക്കുന്ന എന്തും.';

  @override
  String get takePhoto => 'ഫോട്ടോ എടുക്കുക';

  @override
  String get chooseFromGallery => 'ഗാലറിയിൽ നിന്ന് തിരഞ്ഞെടുക്കുക';

  @override
  String get chooseImage => 'ചിത്രം തിരഞ്ഞെടുക്കുക';

  @override
  String get enterTickerManually => 'ടിക്കർ നേരിട്ട് നൽകുക';

  @override
  String get tickerInputLabel => 'ടിക്കർ ചിഹ്നം';

  @override
  String get tickerInputHint => 'ഉദാ. AAPL';

  @override
  String get lookUp => 'തിരയുക';

  @override
  String demoModeBanner(String symbols) {
    return 'ഡെമോ മോഡ് – മാർക്കറ്റ് ഡാറ്റ കീ കോൺഫിഗർ ചെയ്തിട്ടില്ല. സാമ്പിൾ ഡാറ്റ ഇവയ്ക്ക് ലഭ്യമാണ്: $symbols.';
  }

  @override
  String get recognizing => 'ചിത്രം വിശകലനം ചെയ്യുന്നു…';

  @override
  String get loadingData => 'ഡാറ്റ ലോഡ് ചെയ്യുന്നു…';

  @override
  String get noCandidatesTitle => 'ഓഹരിയൊന്നും തിരിച്ചറിഞ്ഞില്ല';

  @override
  String get noCandidatesBody =>
      'ഈ ചിത്രത്തിൽ ഒരു ഓഹരിയും തിരിച്ചറിയാൻ ഞങ്ങൾക്ക് കഴിഞ്ഞില്ല. കൂടുതൽ വ്യക്തമായ ഫോട്ടോ പരീക്ഷിക്കുക, അല്ലെങ്കിൽ ടിക്കർ നേരിട്ട് നൽകുക.';

  @override
  String get whatWeSaw => 'ഞങ്ങൾ കണ്ടത്';

  @override
  String get chooseCandidateTitle => 'ഏത് ഓഹരിയാണ് നിങ്ങൾ ഉദ്ദേശിച്ചത്?';

  @override
  String confidencePercent(int percent) {
    return '$percent% ഉറപ്പ്';
  }

  @override
  String get settings => 'ക്രമീകരണം';

  @override
  String get language => 'ഭാഷ';

  @override
  String get systemLanguage => 'സിസ്റ്റം ഡിഫോൾട്ട്';

  @override
  String get about => 'ആപ്പിനെക്കുറിച്ച്';

  @override
  String get disclaimer =>
      'ഈ ആപ്പ് വിവരങ്ങൾ മാത്രമാണ് നൽകുന്നത്, ഇത് നിക്ഷേപ ഉപദേശമല്ല. ഡാറ്റ വൈകിയതോ കൃത്യമല്ലാത്തതോ ആകാം.';

  @override
  String dataSource(String source) {
    return 'ഡാറ്റ ഉറവിടം: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'തിരിച്ചറിയൽ: $source';
  }

  @override
  String get retry => 'വീണ്ടും ശ്രമിക്കുക';

  @override
  String get cancel => 'റദ്ദാക്കുക';

  @override
  String get ok => 'ശരി';

  @override
  String get close => 'അടയ്ക്കുക';

  @override
  String get errorGeneric => 'എന്തോ കുഴപ്പം സംഭവിച്ചു.';

  @override
  String get errorSectionUnavailable => 'ഈ വിഭാഗം ലോഡ് ചെയ്യാനായില്ല.';

  @override
  String get notAvailable => 'ലഭ്യമല്ല';

  @override
  String get sectionIdentity => 'തിരിച്ചറിയൽ';

  @override
  String get sectionPrice => 'വില';

  @override
  String get sectionValuation => 'മൂല്യനിർണ്ണയം';

  @override
  String get sectionFinancials => 'സാമ്പത്തിക കണക്കുകൾ';

  @override
  String get sectionDividend => 'ലാഭവിഹിതം';

  @override
  String get sectionProfile => 'കമ്പനി പ്രൊഫൈൽ';

  @override
  String get sectionAnalysts => 'അനലിസ്റ്റ് റേറ്റിംഗുകൾ';

  @override
  String get sectionNews => 'വാർത്തകൾ';

  @override
  String get sectionRecognition => 'തിരിച്ചറിയൽ വിശദാംശങ്ങൾ';

  @override
  String get labelSymbol => 'ടിക്കർ';

  @override
  String get labelExchange => 'എക്സ്ചേഞ്ച്';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'കറൻസി';

  @override
  String get labelCountry => 'രാജ്യം';

  @override
  String get labelIndustry => 'വ്യവസായം';

  @override
  String get labelSector => 'മേഖല';

  @override
  String get labelWebsite => 'വെബ്സൈറ്റ്';

  @override
  String get labelIpoDate => 'IPO തീയതി';

  @override
  String get labelMarketCap => 'വിപണി മൂലധനം';

  @override
  String get labelSharesOutstanding => 'നിലവിലുള്ള ഓഹരികൾ';

  @override
  String get labelEmployees => 'ജീവനക്കാർ';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'ആസ്ഥാനം';

  @override
  String get labelDescription => 'വിവരണം';

  @override
  String get labelLastPrice => 'അവസാന വില';

  @override
  String get labelChange => 'മാറ്റം';

  @override
  String get labelOpen => 'ഓപ്പൺ';

  @override
  String get labelDayHigh => 'ദിവസത്തെ ഉയർന്ന വില';

  @override
  String get labelDayLow => 'ദിവസത്തെ താഴ്ന്ന വില';

  @override
  String get labelPreviousClose => 'മുൻ ക്ലോസിംഗ്';

  @override
  String get labelWeek52High => '52 ആഴ്ചയിലെ ഉയർന്ന നില';

  @override
  String get labelWeek52Low => '52 ആഴ്ചയിലെ താഴ്ന്ന നില';

  @override
  String get labelAverageVolume10d => 'ശരാശരി വോളിയം (10 ദിവസം)';

  @override
  String updatedAt(String time) {
    return 'അപ്ഡേറ്റ് ചെയ്തത്: $time';
  }

  @override
  String get labelPeTrailing => 'P/E (ട്രെയിലിംഗ്)';

  @override
  String get labelPeForward => 'P/E (ഫോർവേഡ്)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / ഫ്രീ ക്യാഷ് ഫ്ലോ';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'ബീറ്റ';

  @override
  String get labelRevenueTtm => 'വരുമാനം (TTM)';

  @override
  String get labelNetIncomeTtm => 'അറ്റാദായം (TTM)';

  @override
  String get labelGrossMargin => 'മൊത്ത മാർജിൻ';

  @override
  String get labelOperatingMargin => 'ഓപ്പറേറ്റിംഗ് മാർജിൻ';

  @override
  String get labelNetMargin => 'അറ്റ മാർജിൻ';

  @override
  String get labelRoe => 'ഇക്വിറ്റിയിലെ ആദായം';

  @override
  String get labelRoa => 'ആസ്തികളിലെ ആദായം';

  @override
  String get labelDebtToEquity => 'കടം / ഇക്വിറ്റി';

  @override
  String get labelCurrentRatio => 'കറന്റ് റേഷ്യോ';

  @override
  String get labelRevenueGrowth => 'വരുമാന വളർച്ച (YoY)';

  @override
  String get labelEpsGrowth => 'EPS വളർച്ച (YoY)';

  @override
  String get labelDividendYield => 'ലാഭവിഹിത യീൽഡ്';

  @override
  String get labelDividendPerShare => 'ഓഹരിയൊന്നിന് ലാഭവിഹിതം';

  @override
  String get labelPayoutRatio => 'പേഔട്ട് അനുപാതം';

  @override
  String get labelYieldOnCost => 'വാങ്ങിയ വിലയിലെ യീൽഡ്';

  @override
  String get labelDividendGrowth5y => 'ലാഭവിഹിത വളർച്ച (5 വർഷം)';

  @override
  String get dividendNone => 'കഴിഞ്ഞ 12 മാസത്തിൽ ലാഭവിഹിതം നൽകിയിട്ടില്ല.';

  @override
  String get dividendOnYourShares => 'നിങ്ങളുടെ ഓഹരികൾക്ക്, പ്രതിവർഷം';

  @override
  String get labelConsensus => 'സമവായം';

  @override
  String get ratingStrongBuy => 'ശക്തമായ വാങ്ങൽ';

  @override
  String get ratingBuy => 'വാങ്ങൽ';

  @override
  String get ratingHold => 'ഹോൾഡ്';

  @override
  String get ratingSell => 'വിൽപ്പന';

  @override
  String get ratingStrongSell => 'ശക്തമായ വിൽപ്പന';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count അനലിസ്റ്റുകൾ',
      one: '1 അനലിസ്റ്റ്',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'കാലയളവ്: $period';
  }

  @override
  String get noNews => 'സമീപകാല വാർത്തകളൊന്നുമില്ല.';

  @override
  String get openArticle => 'ലേഖനം തുറക്കുക';

  @override
  String get openLinkFailed => 'ലിങ്ക് തുറക്കാനായില്ല.';

  @override
  String get recognitionSummary => 'സംഗ്രഹം';

  @override
  String get recognitionEvidence => 'ഞങ്ങൾ ഇങ്ങനെ കരുതാൻ കാരണം';

  @override
  String get recognitionRawText => 'ചിത്രത്തിൽ നിന്ന് വായിച്ച ടെക്സ്റ്റ്';

  @override
  String get errMissingAnthropicKey =>
      'ചിത്ര തിരിച്ചറിയൽ കോൺഫിഗർ ചെയ്തിട്ടില്ല (ANTHROPIC_API_KEY ഇല്ല). ടിക്കർ നേരിട്ട് നൽകുക.';

  @override
  String get errRecognitionUnreachable =>
      'തിരിച്ചറിയൽ സേവനവുമായി ബന്ധപ്പെടാനായില്ല. നിങ്ങളുടെ ഇന്റർനെറ്റ് കണക്ഷൻ പരിശോധിക്കുക.';

  @override
  String errRecognitionHttp(String status) {
    return 'തിരിച്ചറിയൽ സേവനം ഒരു പിശക് നൽകി (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'തിരിച്ചറിയൽ സേവനത്തിന് ഈ ചിത്രം പ്രോസസ്സ് ചെയ്യാനായില്ല.';

  @override
  String get errRecognitionTruncated =>
      'തിരിച്ചറിയൽ പ്രതികരണം പാതിവഴിയിൽ മുറിഞ്ഞുപോയി. വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get errRecognitionBadResponse =>
      'തിരിച്ചറിയൽ സേവനത്തിൽ നിന്ന് അപ്രതീക്ഷിത പ്രതികരണം.';

  @override
  String get errRecognitionEmpty =>
      'തിരിച്ചറിയൽ സേവനം ശൂന്യമായ പ്രതികരണം നൽകി.';

  @override
  String get errMissingFinnhubKey =>
      'മാർക്കറ്റ് ഡാറ്റ കോൺഫിഗർ ചെയ്തിട്ടില്ല (FINNHUB_API_KEY ഇല്ല).';

  @override
  String get errMarketUnreachable =>
      'മാർക്കറ്റ് ഡാറ്റ സേവനവുമായി ബന്ധപ്പെടാനായില്ല. നിങ്ങളുടെ ഇന്റർനെറ്റ് കണക്ഷൻ പരിശോധിക്കുക.';

  @override
  String get errMarketRateLimited =>
      'മാർക്കറ്റ് ഡാറ്റ സേവനത്തിലേക്ക് വളരെയധികം അഭ്യർത്ഥനകൾ. ഒരു മിനിറ്റ് കാത്തിരിക്കുക.';

  @override
  String errMarketHttp(String status) {
    return 'മാർക്കറ്റ് ഡാറ്റ സേവനം ഒരു പിശക് നൽകി (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'മാർക്കറ്റ് ഡാറ്റ സേവനത്തിൽ നിന്ന് അപ്രതീക്ഷിത പ്രതികരണം.';

  @override
  String errNoQuote(String symbol) {
    return '$symbol എന്നതിന് വില ഡാറ്റയൊന്നും കണ്ടെത്തിയില്ല.';
  }

  @override
  String errNoProfile(String symbol) {
    return '$symbol എന്നതിന് കമ്പനി പ്രൊഫൈലൊന്നും കണ്ടെത്തിയില്ല.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'ഡെമോ മോഡിൽ $symbols മാത്രമേ ലഭ്യമാകൂ. ലൈവ് ഡാറ്റയ്ക്കായി FINNHUB_API_KEY ചേർക്കുക.';
  }

  @override
  String errUnknown(String detail) {
    return 'എന്തോ കുഴപ്പം സംഭവിച്ചു: $detail';
  }

  @override
  String get newSearch => 'പുതിയ തിരയൽ';

  @override
  String get recentSearches => 'സമീപകാലം';

  @override
  String get noRecentSearches => 'സമീപകാല തിരയലുകളൊന്നുമില്ല.';

  @override
  String get clearRecent => 'സമീപകാലം മായ്ക്കുക';

  @override
  String get greeting => 'ഇന്ന് ഏത് ഓഹരി നോക്കാം?';

  @override
  String get searchHint => 'ടിക്കർ അല്ലെങ്കിൽ കമ്പനിയുടെ പേര്';

  @override
  String get attachImage => 'ചിത്രം അറ്റാച്ച് ചെയ്യുക';

  @override
  String get searchResultsTitle => 'തിരയൽ ഫലങ്ങൾ';

  @override
  String errNoResults(String query) {
    return '“$query” എന്നതിന് ഓഹരികളൊന്നും കണ്ടെത്തിയില്ല.';
  }

  @override
  String get quickBarHint =>
      'ടിക്കർ അല്ലെങ്കിൽ കമ്പനിയുടെ പേര് ടൈപ്പ് ചെയ്യുക…';

  @override
  String get openFullWindow => 'വിൻഡോ തുറക്കുക';

  @override
  String hotkeyHint(String shortcut) {
    return 'എവിടെ നിന്നും WhatStock തുറക്കാൻ $shortcut അമർത്തുക.';
  }

  @override
  String get trayOpen => 'WhatStock തുറക്കുക';

  @override
  String get trayQuickSearch => 'ദ്രുത തിരയൽ';

  @override
  String get trayQuit => 'പുറത്തുകടക്കുക';

  @override
  String get appearance => 'രൂപഭാവം';

  @override
  String get themeSystem => 'സിസ്റ്റം';

  @override
  String get themeDark => 'ഡാർക്ക്';

  @override
  String get themeLight => 'ലൈറ്റ്';

  @override
  String get back => 'മടങ്ങുക';

  @override
  String get aiSectionTitle => 'AI വിശകലനം';

  @override
  String get aiIntro =>
      'AI എഴുതിയ വിശദമായ അവലോകനം: സമീപകാല വാർത്തകളുടെ സംഗ്രഹം, ബിസിനസ്സ്, ശക്തികൾ, അപകടസാധ്യതകളും മറഞ്ഞിരിക്കുന്ന ഘടകങ്ങളും, മൂല്യനിർണ്ണയം, മനഃശാസ്ത്ര, സാമൂഹിക, സാങ്കേതിക, മാക്രോ സാമ്പത്തിക വീക്ഷണങ്ങളിൽ നിന്നുള്ള സാഹചര്യങ്ങളോടെ വിലയുടെ ഭാവി സാധ്യതകൾ, ശ്രദ്ധിക്കേണ്ട കാര്യങ്ങൾ.';

  @override
  String get aiGenerate => 'വിശകലനം തയ്യാറാക്കുക';

  @override
  String get aiRegenerate => 'വീണ്ടും തയ്യാറാക്കുക';

  @override
  String get aiGenerating =>
      'വിശകലനം തയ്യാറാക്കുന്നു… ഇതിന് ഒന്നോ രണ്ടോ മിനിറ്റ് എടുത്തേക്കാം.';

  @override
  String get aiSources => 'ഉറവിടങ്ങൾ';

  @override
  String aiGeneratedAt(String time) {
    return 'തയ്യാറാക്കിയത്: $time';
  }

  @override
  String get aiDisclaimer =>
      'പൊതു ഡാറ്റയെയും സമീപകാല വാർത്തകളെയും അടിസ്ഥാനമാക്കി AI തയ്യാറാക്കിയ വിശകലനം. ഇതിൽ പിശകുകൾ ഉണ്ടാകാം അല്ലെങ്കിൽ ഇത് കാലഹരണപ്പെട്ടതാകാം, ഇത് നിക്ഷേപ ഉപദേശമല്ല.';

  @override
  String get errAiNotConfigured =>
      'AI വിശകലനം കോൺഫിഗർ ചെയ്തിട്ടില്ല (ANTHROPIC_API_KEY ഇല്ല).';

  @override
  String get errAiUnreachable =>
      'AI സേവനവുമായി ബന്ധപ്പെടാനായില്ല. നിങ്ങളുടെ ഇന്റർനെറ്റ് കണക്ഷൻ പരിശോധിക്കുക.';

  @override
  String errAiHttp(String status) {
    return 'AI സേവനം ഒരു പിശക് നൽകി (HTTP $status).';
  }

  @override
  String get errAiRefused => 'ഈ ഓഹരി വിശകലനം ചെയ്യാൻ AI സേവനം വിസമ്മതിച്ചു.';

  @override
  String get errAiBadResponse => 'AI സേവനത്തിൽ നിന്ന് അപ്രതീക്ഷിത പ്രതികരണം.';

  @override
  String get sectionChart => 'വില ചാർട്ട്';

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
      'നിലവിലെ ഡാറ്റ ഉറവിടത്തിൽ നിന്ന് വിലയുടെ ചരിത്രം ലഭ്യമല്ല.';

  @override
  String get sectionStatements => 'സാമ്പത്തിക റിപ്പോർട്ടുകൾ (വാർഷികം)';

  @override
  String get labelFiscalYear => 'സാമ്പത്തിക വർഷം';

  @override
  String get labelRevenue => 'വരുമാനം';

  @override
  String get labelNetIncome => 'അറ്റാദായം';

  @override
  String get labelTotalAssets => 'മൊത്തം ആസ്തികൾ';

  @override
  String get labelTotalLiabilities => 'മൊത്തം ബാധ്യതകൾ';

  @override
  String get labelEquity => 'ഓഹരി ഉടമകളുടെ ഇക്വിറ്റി';

  @override
  String get labelOperatingCashFlow => 'ഓപ്പറേറ്റിംഗ് ക്യാഷ് ഫ്ലോ';

  @override
  String get statementsUnavailable =>
      'ഈ ഓഹരിയുടെ പ്രസിദ്ധീകരിച്ച സാമ്പത്തിക റിപ്പോർട്ടുകൾ ലഭ്യമല്ല.';

  @override
  String get launchAtLogin => 'ലോഗിൻ ചെയ്യുമ്പോൾ തുറക്കുക';

  @override
  String get hotkeyLabel => 'ഗ്ലോബൽ ഷോർട്ട്കട്ട്';

  @override
  String get hotkeyRecordHint =>
      'ഇവിടെ ക്ലിക്ക് ചെയ്യുക, തുടർന്ന് പുതിയ കീ കോമ്പിനേഷൻ അമർത്തുക';

  @override
  String get hotkeyReset => 'ഡിഫോൾട്ടിലേക്ക് റീസെറ്റ് ചെയ്യുക';

  @override
  String get pasteImage => 'ക്ലിപ്പ്ബോർഡിൽ നിന്ന് ചിത്രം ഒട്ടിക്കുക';

  @override
  String get errClipboardNoImage => 'ക്ലിപ്പ്ബോർഡിൽ ചിത്രമൊന്നുമില്ല.';

  @override
  String get favorites => 'പ്രിയപ്പെട്ടവ';

  @override
  String get addToFavorites => 'പ്രിയപ്പെട്ടവയിലേക്ക് ചേർക്കുക';

  @override
  String get removeFromFavorites => 'പ്രിയപ്പെട്ടവയിൽ നിന്ന് നീക്കം ചെയ്യുക';

  @override
  String get noFavorites =>
      'ഇതുവരെ പ്രിയപ്പെട്ടവയൊന്നുമില്ല. ചേർക്കാൻ ഒരു ഓഹരിയിലെ നക്ഷത്രത്തിൽ ടാപ്പ് ചെയ്യുക.';

  @override
  String get displayCurrency => 'പ്രദർശന കറൻസി';

  @override
  String get displayCurrencyNone => 'ഓഹരിയുടെ സ്വന്തം കറൻസി മാത്രം';

  @override
  String labelConverted(String currency) {
    return '≈ $currency-ൽ';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'നിരക്ക്: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'അപ്ഡേറ്റുകൾ';

  @override
  String currentVersion(String version) {
    return 'പതിപ്പ് $version';
  }

  @override
  String get autoUpdate => 'അപ്ഡേറ്റുകൾ സ്വയമേവ ഇൻസ്റ്റാൾ ചെയ്യുക';

  @override
  String get checkForUpdates => 'അപ്ഡേറ്റുകൾക്കായി പരിശോധിക്കുക';

  @override
  String get updateChecking => 'അപ്ഡേറ്റുകൾക്കായി പരിശോധിക്കുന്നു…';

  @override
  String get updateUpToDate =>
      'നിങ്ങൾ ഏറ്റവും പുതിയ പതിപ്പാണ് ഉപയോഗിക്കുന്നത്.';

  @override
  String updateAvailable(String version) {
    return 'പതിപ്പ് $version ലഭ്യമാണ്.';
  }

  @override
  String get updateDownloading =>
      'അപ്ഡേറ്റ് പശ്ചാത്തലത്തിൽ ഡൗൺലോഡ് ചെയ്യുന്നു…';

  @override
  String get updateDownloaded =>
      'അപ്ഡേറ്റ് തയ്യാറാണ്. ഇൻസ്റ്റാൾ ചെയ്യാൻ റീസ്റ്റാർട്ട് ചെയ്യുക.';

  @override
  String get updateNow => 'അപ്ഡേറ്റ് ചെയ്യുക';

  @override
  String get restartNow => 'റീസ്റ്റാർട്ട് ചെയ്യുക';

  @override
  String get updatesViaStore =>
      'അപ്ഡേറ്റുകൾ ആപ്പ് സ്റ്റോർ വഴി സ്വയമേവ ലഭിക്കും.';

  @override
  String get updateCheckFailed => 'അപ്ഡേറ്റുകൾക്കായി പരിശോധിക്കാനായില്ല.';

  @override
  String get subscription => 'സബ്സ്ക്രിപ്ഷൻ';

  @override
  String get planTrial => 'ട്രയൽ';

  @override
  String get planNormal => 'സാധാരണ';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'സജീവ പ്ലാനൊന്നുമില്ല';

  @override
  String planAnalysesPerMonth(int count) {
    return 'മാസം $count വിശകലനങ്ങൾ';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$count വിശകലനങ്ങളോടെ $days ദിവസത്തെ സൗജന്യ ട്രയൽ';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'ട്രയലിൽ $days ദിവസം ബാക്കി',
      one: 'ട്രയലിൽ 1 ദിവസം ബാക്കി',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'നിങ്ങളുടെ സൗജന്യ ട്രയൽ അവസാനിച്ചു. വിശകലനം തുടരാൻ ഒരു പ്ലാൻ തിരഞ്ഞെടുക്കുക.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'ഈ കാലയളവിൽ $total-ൽ $remaining വിശകലനങ്ങൾ ബാക്കി';
  }

  @override
  String extraCredits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count അധിക വിശകലനങ്ങൾ',
      one: '$count അധിക വിശകലനം',
    );
    return '$_temp0';
  }

  @override
  String renewsOn(String date) {
    return '$date-ന് പുതുക്കും';
  }

  @override
  String get choosePlan => 'പ്ലാൻ തിരഞ്ഞെടുക്കുക';

  @override
  String get currentPlan => 'നിലവിലെ പ്ലാൻ';

  @override
  String get subscribe => 'സബ്സ്ക്രൈബ് ചെയ്യുക';

  @override
  String get perMonth => '/ മാസം';

  @override
  String get extraPacksTitle => 'കൂടുതൽ വേണോ? അധിക വിശകലനങ്ങൾ വാങ്ങുക';

  @override
  String get extraPacksHint =>
      'അധിക വിശകലനങ്ങൾ ഒരിക്കലും കാലഹരണപ്പെടില്ല, നിങ്ങളുടെ പ്രതിമാസ ക്വാട്ട തീർന്ന ശേഷമാണ് ഉപയോഗിക്കുക.';

  @override
  String get buy => 'വാങ്ങുക';

  @override
  String get restorePurchases => 'വാങ്ങലുകൾ പുനഃസ്ഥാപിക്കുക';

  @override
  String get manageSubscription => 'സബ്സ്ക്രിപ്ഷൻ മാനേജ് ചെയ്യുക';

  @override
  String get purchaseSuccess => 'നന്ദി! നിങ്ങളുടെ വാങ്ങൽ സജീവമാണ്.';

  @override
  String get purchasePending => 'വാങ്ങൽ തീർപ്പാകാനുണ്ട്…';

  @override
  String get purchaseFailed => 'വാങ്ങൽ പൂർത്തിയാക്കാനായില്ല.';

  @override
  String get purchaseCanceled => 'വാങ്ങൽ റദ്ദാക്കി.';

  @override
  String get billingUnavailable =>
      'ഈ പ്ലാറ്റ്ഫോമിൽ വാങ്ങലുകൾ ഇതുവരെ ലഭ്യമല്ല. നിങ്ങളുടെ ഫോണിലോ Mac-ലോ സബ്സ്ക്രൈബ് ചെയ്യുക; നിങ്ങളുടെ പ്ലാൻ എല്ലാ ഉപകരണങ്ങളിലും പ്രവർത്തിക്കും.';

  @override
  String get errQuotaExceeded =>
      'ഈ കാലയളവിൽ നിങ്ങൾക്ക് വിശകലനങ്ങളൊന്നും ബാക്കിയില്ല. പ്ലാൻ അപ്ഗ്രേഡ് ചെയ്യുക അല്ലെങ്കിൽ അധിക വിശകലനങ്ങൾ വാങ്ങുക.';

  @override
  String get errTrialExpired =>
      'നിങ്ങളുടെ സൗജന്യ ട്രയൽ അവസാനിച്ചു. തുടരാൻ ഒരു പ്ലാൻ തിരഞ്ഞെടുക്കുക.';

  @override
  String get errNoPlan => 'AI വിശകലനത്തിന് ഒരു സജീവ പ്ലാൻ ആവശ്യമാണ്.';

  @override
  String get viewPlans => 'പ്ലാനുകൾ കാണുക';

  @override
  String get usageTitle => 'ഉപയോഗം';

  @override
  String get demoPurchaseNote =>
      'ഡെമോ ബില്ലിംഗ്: ഈ പ്ലാറ്റ്ഫോമിൽ വാങ്ങലുകൾ സിമുലേറ്റ് ചെയ്യുന്നു.';

  @override
  String get mostPopular => 'ഏറ്റവും ജനപ്രിയം';

  @override
  String get bestValue => 'ഏറ്റവും മികച്ച മൂല്യം';

  @override
  String get planFeaturesCommon =>
      'ഫോട്ടോ തിരിച്ചറിയൽ, ലൈവ് ഡാറ്റ, ചാർട്ടുകൾ, പ്രിയപ്പെട്ടവ, എല്ലാ 120 ഭാഷകളും എല്ലാ പ്ലാനിലും ഉൾപ്പെടുന്നു. ക്വാട്ട AI വിശകലനങ്ങൾക്ക് മാത്രമാണ് ബാധകം.';

  @override
  String get searchLanguages => 'ഭാഷകൾ തിരയുക…';

  @override
  String get noLanguageMatch => 'പൊരുത്തപ്പെടുന്ന ഭാഷയൊന്നുമില്ല.';

  @override
  String get aiSettings => 'AI വിശകലനം';

  @override
  String get aiLength => 'ദൈർഘ്യം';

  @override
  String get aiDepthBrief => 'ചുരുക്കം';

  @override
  String get aiDepthStandard => 'സ്റ്റാൻഡേർഡ്';

  @override
  String get aiDepthDeep => 'വിശദം';

  @override
  String get aiDepthBriefDesc => 'പ്രധാന കാര്യങ്ങൾ, വേഗത്തിൽ.';

  @override
  String get aiDepthStandardDesc => 'എല്ലാ വിഭാഗങ്ങളുമുള്ള പൂർണ്ണ റിപ്പോർട്ട്.';

  @override
  String get aiDepthDeepDesc =>
      'കൂടുതൽ വെബ് തിരയലുകൾ, സമാന കമ്പനികളുമായുള്ള താരതമ്യം, കൂടുതൽ ആഴത്തിലുള്ള വിശദാംശങ്ങൾ.';

  @override
  String aiDepthWords(String min, String max) {
    return 'ഏകദേശം $min–$max വാക്കുകൾ';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count വിശകലനങ്ങൾ ഉപയോഗിക്കും',
      one: '1 വിശകലനം ഉപയോഗിക്കും',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'വായനക്കാരന്റെ നിലവാരം';

  @override
  String get aiReaderBeginner => 'തുടക്കക്കാരൻ';

  @override
  String get aiReaderExperienced => 'പരിചയസമ്പന്നൻ';

  @override
  String get aiReaderBeginnerDesc =>
      'ലളിതമായ ഭാഷ; എല്ലാ സാങ്കേതിക പദങ്ങളും വിശദീകരിക്കും.';

  @override
  String get aiReaderExperiencedDesc =>
      'സാധാരണ സാമ്പത്തിക പദാവലിയോടെയുള്ള സാന്ദ്രമായ ടെക്സ്റ്റ്.';

  @override
  String get aiCounterArgument => 'ഏറ്റവും ശക്തമായ എതിർവാദം';

  @override
  String get aiCounterArgumentDesc =>
      'സംഗ്രഹം എപ്പോഴും സ്വന്തം നിഗമനത്തിനെതിരായ ഏറ്റവും ശക്തമായ വാദത്തോടെയാണ് അവസാനിക്കുക.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'നിങ്ങളുടെ പ്ലാനിൽ ഓരോ വിശകലനത്തിനും പരമാവധി $count വെബ് തിരയലുകൾ',
      one: 'നിങ്ങളുടെ പ്ലാനിൽ ഓരോ വിശകലനത്തിനും പരമാവധി 1 വെബ് തിരയൽ',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'പ്ലാൻ അനുസരിച്ച് സ്റ്റാൻഡേർഡ് ദൈർഘ്യത്തിൽ: സാധാരണ $normal, Pro $pro, Max $max, Ultra $ultra. ചുരുക്കത്തിൽ 2 കുറവ്, വിശദത്തിൽ 2 കൂടുതൽ.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'പരമാവധി $count വെബ് തിരയലുകൾ',
      one: 'പരമാവധി 1 വെബ് തിരയൽ',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ഓരോ വിശകലനത്തിനും $count വെബ് തിരയലുകൾ',
      one: 'ഓരോ വിശകലനത്തിനും 1 വെബ് തിരയൽ',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'ഈ ദൈർഘ്യത്തിന് $needed വിശകലനങ്ങൾ വേണം, പക്ഷേ $left മാത്രമേ ബാക്കിയുള്ളൂ. ക്രമീകരണത്തിൽ കുറഞ്ഞ ദൈർഘ്യം തിരഞ്ഞെടുക്കുക അല്ലെങ്കിൽ കൂടുതൽ വിശകലനങ്ങൾ നേടുക.';
  }

  @override
  String get outlookMarketMood => 'വിപണി മനോഭാവം';

  @override
  String get moodVeryPessimistic => 'വളരെ അശുഭാപ്തിപരം';

  @override
  String get moodPessimistic => 'അശുഭാപ്തിപരം';

  @override
  String get moodNeutral => 'നിഷ്പക്ഷം';

  @override
  String get moodOptimistic => 'ശുഭാപ്തിപരം';

  @override
  String get moodVeryOptimistic => 'വളരെ ശുഭാപ്തിപരം';

  @override
  String get scenarioBull => 'മുന്നേറ്റ സാഹചര്യം';

  @override
  String get scenarioBase => 'അടിസ്ഥാന സാഹചര്യം';

  @override
  String get scenarioBear => 'ഇടിവ് സാഹചര്യം';

  @override
  String outlookCurrentPrice(String price) {
    return 'നിലവിലെ വില: $price';
  }

  @override
  String get outlookKeyLevels => 'പ്രധാന നിലകൾ';

  @override
  String get keyLevelSupport => 'സപ്പോർട്ട്';

  @override
  String get keyLevelResistance => 'റെസിസ്റ്റൻസ്';

  @override
  String get keyLevelAnchor => 'ആങ്കർ നില';

  @override
  String get upcomingEvents => 'വരാനിരിക്കുന്ന സംഭവങ്ങൾ';

  @override
  String get outlookChartNote =>
      'സൂചകമായ ശ്രേണികൾ; സാധ്യതകൾ ഏകദേശ വിലയിരുത്തലുകളാണ്, പ്രവചനങ്ങളല്ല.';

  @override
  String get accountTitle => 'അക്കൗണ്ട്';

  @override
  String get signIn => 'സൈൻ ഇൻ ചെയ്യുക';

  @override
  String get signOut => 'സൈൻ ഔട്ട് ചെയ്യുക';

  @override
  String get notSignedIn => 'സൈൻ ഇൻ ചെയ്തിട്ടില്ല';

  @override
  String get accountBenefit =>
      'നിങ്ങളുടെ സബ്സ്ക്രിപ്ഷൻ എല്ലാ ഉപകരണങ്ങളിലും പ്രവർത്തിക്കാൻ സൈൻ ഇൻ ചെയ്യുക.';

  @override
  String get accountSyncedNote =>
      'നിങ്ങളുടെ സബ്സ്ക്രിപ്ഷനും ബാക്കിയുള്ള വിശകലനങ്ങളും എല്ലാ ഉപകരണങ്ങളിലും ഒന്നുതന്നെയാണ്.';

  @override
  String get signInTitle => 'WhatStock-ൽ സൈൻ ഇൻ ചെയ്യുക';

  @override
  String get emailLabel => 'ഇമെയിൽ വിലാസം';

  @override
  String get continueWithEmail => 'ഇമെയിൽ ഉപയോഗിച്ച് തുടരുക';

  @override
  String codeSentTo(String email) {
    return '$email എന്ന വിലാസത്തിലേക്ക് ഞങ്ങൾ 6 അക്ക കോഡ് അയച്ചു. ഇത് 10 മിനിറ്റ് സാധുവാണ്.';
  }

  @override
  String get codeLabel => 'സൈൻ-ഇൻ കോഡ്';

  @override
  String get resendCode => 'പുതിയ കോഡ് അയയ്ക്കുക';

  @override
  String get useDifferentEmail => 'മറ്റൊരു ഇമെയിൽ ഉപയോഗിക്കുക';

  @override
  String get errInvalidCode => 'കോഡ് തെറ്റാണ് അല്ലെങ്കിൽ കാലഹരണപ്പെട്ടു.';

  @override
  String get errInvalidEmail => 'സാധുവായ ഒരു ഇമെയിൽ വിലാസം നൽകുക.';

  @override
  String get errSignInFailed =>
      'സൈൻ ഇൻ പരാജയപ്പെട്ടു. നിങ്ങളുടെ കണക്ഷൻ പരിശോധിച്ച് വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get checkoutWaiting =>
      'നിങ്ങളുടെ ബ്രൗസറിൽ പേയ്മെന്റ് പൂർത്തിയാക്കുക. അത് കഴിഞ്ഞാൽ ആപ്പ് സ്വയമേവ അപ്ഡേറ്റ് ആകും.';

  @override
  String get paymentViaStripe =>
      'Stripe വഴി നിങ്ങളുടെ ബ്രൗസറിൽ സുരക്ഷിതമായ പേയ്മെന്റ്. എപ്പോൾ വേണമെങ്കിലും റദ്ദാക്കാം.';

  @override
  String get paymentViaStore =>
      'നിങ്ങളുടെ App Store അല്ലെങ്കിൽ Google Play അക്കൗണ്ട് വഴിയാണ് ബില്ലിംഗ്. സ്റ്റോർ ക്രമീകരണങ്ങളിൽ എപ്പോൾ വേണമെങ്കിലും റദ്ദാക്കാം.';

  @override
  String get keySpace => 'സ്പേസ്';

  @override
  String get doubleOptionTitle => 'Option രണ്ടുതവണ അമർത്തുക';

  @override
  String get doubleOptionSubtitle =>
      'Option കീ വേഗത്തിൽ രണ്ടുതവണ അമർത്തിയാലും WhatStock തുറക്കും.';

  @override
  String get doubleOptionPermission =>
      'മറ്റ് ആപ്പുകളിലും ഇത് പ്രവർത്തിക്കാൻ, സിസ്റ്റം ക്രമീകരണം → സ്വകാര്യതയും സുരക്ഷയും → ഇൻപുട്ട് മോണിറ്ററിംഗ് എന്നതിൽ WhatStock-ന് അനുമതി നൽകുക, തുടർന്ന് ആപ്പ് വീണ്ടും തുറക്കുക.';

  @override
  String get openSystemSettings => 'സിസ്റ്റം ക്രമീകരണം തുറക്കുക';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'എവിടെ നിന്നും WhatStock തുറക്കാൻ $shortcut അമർത്തുക അല്ലെങ്കിൽ Option രണ്ടുതവണ അമർത്തുക.';
  }

  @override
  String get scenarioMostLikely => 'ഏറ്റവും സാധ്യതയുള്ളത്';

  @override
  String get longTermToday => 'ഇന്ന്';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years വർഷം',
      one: '1 വർഷം',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return 'പ്രതിവർഷം $range';
  }

  @override
  String longTermLikely(String price) {
    return 'ഏറ്റവും സാധ്യത $price';
  }

  @override
  String get confidenceLow => 'കുറഞ്ഞ ഉറപ്പ്';

  @override
  String get confidenceMedium => 'ഇടത്തരം ഉറപ്പ്';

  @override
  String get confidenceHigh => 'ഉയർന്ന ഉറപ്പ്';

  @override
  String get longTermNote =>
      'ദീർഘകാല ശ്രേണികൾ പറഞ്ഞിരിക്കുന്ന അനുമാനങ്ങളെ ആശ്രയിച്ചുള്ളതാണ്, കാലം ചെല്ലുന്തോറും വിശാലമാകും. വിലകളിൽ ലാഭവിഹിതം ഉൾപ്പെടുന്നില്ല. ഇവ ഏകദേശ വിലയിരുത്തലുകളാണ്, പ്രവചനങ്ങളല്ല.';

  @override
  String get portfolio => 'പോർട്ട്ഫോളിയോ';

  @override
  String get portfolioEmpty =>
      'ഇവിടെ ഇതുവരെ ഒന്നുമില്ല. നിങ്ങളുടെ കൈവശമുള്ളവ ട്രാക്ക് ചെയ്യാൻ ഒരു ഓഹരി തുറന്ന് “പോർട്ട്ഫോളിയോയിലേക്ക് ചേർക്കുക” ടാപ്പ് ചെയ്യുക.';

  @override
  String get portfolioLocalNote =>
      'ഈ ഉപകരണത്തിലും സൈൻ ഇൻ ചെയ്തിട്ടുണ്ടെങ്കിൽ നിങ്ങളുടെ അക്കൗണ്ടിലും സൂക്ഷിച്ചിരിക്കുന്നു. ആകെ തുകകൾ ECB റഫറൻസ് നിരക്കുകളിൽ പരിവർത്തനം ചെയ്യുന്നു; വിലകൾ വൈകിയേക്കാം.';

  @override
  String get addToPortfolio => 'പോർട്ട്ഫോളിയോയിലേക്ക് ചേർക്കുക';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol ചേർക്കുക';
  }

  @override
  String get portfolioQuantity => 'ഓഹരികളുടെ എണ്ണം';

  @override
  String portfolioBuyPrice(String currency) {
    return 'ഓഹരിയൊന്നിന്റെ വില ($currency)';
  }

  @override
  String get portfolioBuyDate => 'വാങ്ങിയ തീയതി';

  @override
  String get portfolioAdd => 'ചേർക്കുക';

  @override
  String get portfolioInvalidNumber => 'പൂജ്യത്തേക്കാൾ വലിയ ഒരു സംഖ്യ നൽകുക.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol നിങ്ങളുടെ പോർട്ട്ഫോളിയോയിലേക്ക് ചേർത്തു.';
  }

  @override
  String get portfolioTotalValue => 'ആകെ മൂല്യം';

  @override
  String get portfolioToday => 'ഇന്ന്';

  @override
  String get portfolioGainLoss => 'ലാഭം/നഷ്ടം';

  @override
  String homeDividendsThisYear(String amount) {
    return 'ഈ വർഷത്തെ ഡിവിഡന്റുകൾ: $amount';
  }

  @override
  String get portfolioInvested => 'നിക്ഷേപിച്ചത്';

  @override
  String get portfolioAllocation => 'വിന്യാസം';

  @override
  String get portfolioPositions => 'പൊസിഷനുകൾ';

  @override
  String portfolioAvgCost(String price) {
    return 'ശരാശരി ചെലവ് $price';
  }

  @override
  String get portfolioYourPosition => 'നിങ്ങളുടെ പൊസിഷൻ';

  @override
  String get portfolioPurchases => 'വാങ്ങലുകൾ';

  @override
  String get portfolioRemove => 'നീക്കം ചെയ്യുക';

  @override
  String get portfolioExcluded =>
      'വിലയോ വിനിമയ നിരക്കോ ഇല്ലാത്ത പൊസിഷനുകൾ ആകെ തുകയിൽ ഉൾപ്പെടുത്തിയിട്ടില്ല.';

  @override
  String get priceAlerts => 'വില അലേർട്ടുകൾ';

  @override
  String get setPriceAlert => 'വില അലേർട്ട് സജ്ജമാക്കുക';

  @override
  String alertDialogTitle(String symbol) {
    return 'വില അലേർട്ട് · $symbol';
  }

  @override
  String get alertKindAbove => 'ഇതിന് മുകളിലേക്ക് ഉയർന്നാൽ';

  @override
  String get alertKindBelow => 'ഇതിന് താഴേക്ക് വീണാൽ';

  @override
  String get alertKindMove => 'ഒരു ദിവസം വലിയ ചാഞ്ചാട്ടം';

  @override
  String alertTargetPrice(String currency) {
    return 'വില ($currency)';
  }

  @override
  String get alertMovePercent => 'പ്രതിദിന ചാഞ്ചാട്ടം (%)';

  @override
  String get alertAlreadyMet => 'വില ഇതിനകം ഈ നില കടന്നിരിക്കുന്നു.';

  @override
  String get alertSave => 'അലേർട്ട് സജ്ജമാക്കുക';

  @override
  String alertCreated(String symbol) {
    return '$symbol എന്നതിന് അലേർട്ട് സജ്ജമാക്കി.';
  }

  @override
  String get alertsEmpty =>
      'ഇതുവരെ വില അലേർട്ടുകളൊന്നുമില്ല. ഒരെണ്ണം സജ്ജമാക്കാൻ ഒരു ഓഹരി തുറന്ന് മണിയിൽ ടാപ്പ് ചെയ്യുക.';

  @override
  String get alertsNote =>
      'WhatStock പ്രവർത്തിക്കുമ്പോൾ ഓരോ 5 മിനിറ്റിലും അലേർട്ടുകൾ പരിശോധിക്കും. കമ്പ്യൂട്ടറിൽ ഇത് മെനു ബാറിലോ സിസ്റ്റം ട്രേയിലോ പ്രവർത്തിച്ചുകൊണ്ടിരിക്കും; ഫോണിൽ തൽക്കാലം ആപ്പ് തുറന്നിരിക്കുമ്പോൾ മാത്രമേ അലേർട്ടുകൾ ലഭിക്കൂ.';

  @override
  String alertDescAbove(String price) {
    return '$price-ന് മുകളിൽ';
  }

  @override
  String alertDescBelow(String price) {
    return '$price-ന് താഴെ';
  }

  @override
  String alertDescMove(String percent) {
    return 'പ്രതിദിന ചാഞ്ചാട്ടം ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return '$date-ന് $price-ൽ ട്രിഗർ ചെയ്തു';
  }

  @override
  String get alertRearm => 'വീണ്ടും സജീവമാക്കുക';

  @override
  String get alertDelete => 'ഇല്ലാതാക്കുക';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol $price-ന് മുകളിലേക്ക് ഉയർന്നു';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol $price-ന് താഴേക്ക് വീണു';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol ഇന്ന് $percent ചാഞ്ചാടി';
  }

  @override
  String alertHitBody(String price) {
    return 'നിലവിലെ വില: $price';
  }

  @override
  String get alertOpen => 'തുറക്കുക';

  @override
  String get keepInTrayTitle => 'വിൻഡോ അടച്ചാലും പ്രവർത്തിക്കുക';

  @override
  String get keepInTraySubtitle =>
      'WhatStock മെനു ബാറിലോ സിസ്റ്റം ട്രേയിലോ തുടരും, അതിനാൽ ഷോർട്ട്കട്ടും വില അലേർട്ടുകളും പ്രവർത്തിച്ചുകൊണ്ടിരിക്കും.';

  @override
  String get termsOfUse => 'ഉപയോഗ നിബന്ധനകൾ';

  @override
  String get privacyPolicy => 'സ്വകാര്യതാ നയം';

  @override
  String get subscriptionLegal =>
      'നിങ്ങൾ റദ്ദാക്കുന്നതുവരെ സബ്സ്ക്രിപ്ഷനുകൾ എല്ലാ മാസവും സ്വയമേവ പുതുക്കും. സബ്സ്ക്രൈബ് ചെയ്യുന്നതിലൂടെ നിങ്ങൾ ഉപയോഗ നിബന്ധനകളും സ്വകാര്യതാ നയവും അംഗീകരിക്കുന്നു.';

  @override
  String get deleteAccount => 'അക്കൗണ്ട് ഇല്ലാതാക്കുക';

  @override
  String get deleteAccountTitle => 'നിങ്ങളുടെ അക്കൗണ്ട് ഇല്ലാതാക്കണോ?';

  @override
  String get deleteAccountBody =>
      'നിങ്ങളുടെ അക്കൗണ്ടും ഞങ്ങളുടെ സെർവറിൽ സൂക്ഷിച്ചിരിക്കുന്ന എല്ലാം (ഇമെയിൽ, ക്വാട്ട, ഉപയോഗം) ശാശ്വതമായി ഇല്ലാതാകും, ഉപയോഗിക്കാത്ത വിശകലനങ്ങൾ നഷ്ടപ്പെടും. ബ്രൗസറിൽ പണമടച്ച സബ്സ്ക്രിപ്ഷൻ ഉടൻ റദ്ദാകും; App Store അല്ലെങ്കിൽ Google Play സബ്സ്ക്രിപ്ഷൻ സ്റ്റോറിന്റെ ക്രമീകരണങ്ങളിൽ റദ്ദാക്കണം.';

  @override
  String get deleteLocalData =>
      'ഈ ഉപകരണത്തിലെ ഡാറ്റയും ഇല്ലാതാക്കുക (പോർട്ട്ഫോളിയോ, അലേർട്ടുകൾ, പ്രിയപ്പെട്ടവ, ചരിത്രം, സംരക്ഷിച്ച വിശകലനങ്ങൾ)';

  @override
  String get deleteAccountConfirm => 'ശാശ്വതമായി ഇല്ലാതാക്കുക';

  @override
  String get accountDeleted => 'നിങ്ങളുടെ അക്കൗണ്ട് ഇല്ലാതാക്കി.';

  @override
  String get errDeleteAccount =>
      'അക്കൗണ്ട് ഇല്ലാതാക്കാനായില്ല. നിങ്ങളുടെ കണക്ഷൻ പരിശോധിച്ച് വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get aiTrialBriefNote =>
      'ട്രയൽ വിശകലനങ്ങൾ ചുരുക്കമാണ്, വേഗതയേറിയ ഒരു AI മോഡൽ ഉപയോഗിച്ചാണ് തയ്യാറാക്കുന്നത്. ഒരു പ്ലാനിലൂടെ ഞങ്ങളുടെ ഏറ്റവും കഴിവുള്ള AI, കൂടുതൽ വെബ് തിരയലുകൾ, സ്റ്റാൻഡേർഡ്, വിശദം ദൈർഘ്യങ്ങൾ എന്നിവ ലഭിക്കും.';

  @override
  String get billingMonthly => 'പ്രതിമാസം';

  @override
  String get billingYearly => 'വാർഷികം';

  @override
  String get yearlyDiscount => '2 മാസം സൗജന്യം';

  @override
  String get perYear => '/ വർഷം';

  @override
  String pricePerMonthApprox(String price) {
    return 'പ്രതിമാസം ≈ $price';
  }

  @override
  String get subscriptionLegalYearly =>
      'നിങ്ങൾ റദ്ദാക്കുന്നതുവരെ വാർഷിക സബ്സ്ക്രിപ്ഷനുകൾ എല്ലാ വർഷവും സ്വയമേവ പുതുക്കും. സബ്സ്ക്രൈബ് ചെയ്യുന്നതിലൂടെ നിങ്ങൾ ഉപയോഗ നിബന്ധനകളും സ്വകാര്യതാ നയവും അംഗീകരിക്കുന്നു.';

  @override
  String get myAnalyses => 'എന്റെ വിശകലനങ്ങൾ';

  @override
  String get navAlerts => 'അലേർട്ടുകൾ';

  @override
  String get inviteTitle => 'ക്ലോസ്ഡ് പ്രിവ്യൂ';

  @override
  String get inviteBody =>
      'WhatStock ഇപ്പോൾ ക്ഷണം വഴി മാത്രമേ ലഭ്യമാകൂ. നിങ്ങൾക്ക് ലഭിച്ച ക്ഷണ കോഡ് നൽകുക.';

  @override
  String get inviteCodeLabel => 'ക്ഷണ കോഡ്';

  @override
  String get inviteContinue => 'തുടരുക';

  @override
  String get inviteInvalid => 'ഈ ക്ഷണ കോഡ് സാധുവല്ല.';

  @override
  String get inviteExpired =>
      'ഈ ക്ഷണത്തിന്റെ കാലാവധി കഴിഞ്ഞു. നിങ്ങളെ ക്ഷണിച്ച വ്യക്തിയോട് പുതിയ കോഡ് ചോദിക്കുക.';

  @override
  String get inviteDeviceLimit =>
      'ഈ ക്ഷണ കോഡ് ഇതിനകം പരമാവധി എണ്ണം ഉപകരണങ്ങളിൽ ഉപയോഗത്തിലുണ്ട്.';

  @override
  String get previewConfidential => 'രഹസ്യ പ്രിവ്യൂ';

  @override
  String get errPreviewDailyLimit =>
      'ഈ പ്രിവ്യൂവിന്റെ ഇന്നത്തെ വിശകലന പരിധി എത്തി. നാളെ വീണ്ടും ശ്രമിക്കുക.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count മണിക്കൂർ മുമ്പ്',
      one: '1 മണിക്കൂർ മുമ്പ്',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ദിവസം മുമ്പ്',
      one: '1 ദിവസം മുമ്പ്',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'ഈ വിശകലനം പുതുക്കണോ?';

  @override
  String staleBody(String age) {
    return 'ഇത് തയ്യാറാക്കിയത് $age ആണ്. അതിനുശേഷം വിലകളും വാർത്തകളും ഫലങ്ങളും മാറിയിരിക്കാം.';
  }

  @override
  String get staleKeep => 'പഴയത് കാണിക്കുക';

  @override
  String get staleRefresh => 'പുതിയത് തയ്യാറാക്കുക';

  @override
  String seeAll(int count) {
    return 'എല്ലാം കാണുക ($count)';
  }

  @override
  String get searchAnalyses => 'നിങ്ങളുടെ വിശകലനങ്ങൾ തിരയുക';

  @override
  String get deleteAnalysis => 'ഇല്ലാതാക്കുക';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol വിശകലനം ഇല്ലാതാക്കി';
  }

  @override
  String get keyLevelAlertHint =>
      'വില ഒരു നിലയിലെത്തുമ്പോൾ അലേർട്ട് ലഭിക്കാൻ ആ നിലയിൽ ടാപ്പ് ചെയ്യുക.';

  @override
  String get shareAnalysisTitle => 'വിശകലനം പങ്കിടുക';

  @override
  String get shareAsImage => 'ചിത്രമായി പങ്കിടുക';

  @override
  String get shareAsText => 'ടെക്സ്റ്റായി പങ്കിടുക';

  @override
  String get shareCardFooter => 'WhatStock ഉപയോഗിച്ച് തയ്യാറാക്കിയത്';

  @override
  String get shareCardDisclaimer => 'AI വിശകലനം · നിക്ഷേപ ഉപദേശമല്ല';

  @override
  String get referralTitle => 'സുഹൃത്തുക്കളെ ക്ഷണിക്കുക';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count അധിക വിശകലനങ്ങൾ',
      one: '1 അധിക വിശകലനം',
    );
    return 'നിങ്ങളുടെ കോഡ് പങ്കിടുക. നിങ്ങളുടെ സുഹൃത്തിന് ഉടൻ തന്നെ $_temp0 ലഭിക്കും, അവരുടെ ആദ്യ വിശകലനത്തിന് ശേഷം നിങ്ങൾക്കും അത്രയും ലഭിക്കും.';
  }

  @override
  String get referralYourCode => 'നിങ്ങളുടെ കോഡ്';

  @override
  String referralStats(int invited, int rewarded) {
    return 'ക്ഷണിച്ചത്: $invited · പ്രതിഫലം ലഭിച്ചത്: $rewarded';
  }

  @override
  String get referralHaveCode => 'സുഹൃത്തിൽ നിന്നുള്ള കോഡ് ഉണ്ടോ?';

  @override
  String get referralRedeem => 'റിഡീം ചെയ്യുക';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count അധിക വിശകലനങ്ങൾ ചേർത്തു. സ്വാഗതം!',
      one: '1 അധിക വിശകലനം ചേർത്തു. സ്വാഗതം!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'ഈ കോഡ് നിലവിലില്ല. പരിശോധിച്ച് വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get referralErrOwn => 'നിങ്ങളുടെ സ്വന്തം കോഡ് റിഡീം ചെയ്യാനാകില്ല.';

  @override
  String get referralErrAlready =>
      'നിങ്ങൾ ഇതിനകം ഒരു സുഹൃത്തിന്റെ കോഡ് റിഡീം ചെയ്തിട്ടുണ്ട്.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count അധിക വിശകലനങ്ങൾ',
      one: '1 അധിക വിശകലനം',
    );
    return 'ഞാൻ WhatStock ഉപയോഗിച്ച് ഓഹരികൾ വിശകലനം ചെയ്യുന്നു: ഒരു ഓഹരിയുടെ ഫോട്ടോ എടുക്കൂ, AI അത് വിശദീകരിക്കും. എന്റെ കോഡ് $code ഉപയോഗിച്ചാൽ നിങ്ങൾക്ക് $_temp0 ലഭിക്കും.';
  }

  @override
  String get referralCopied => 'കോഡ് പകർത്തി';

  @override
  String get onboardTitle1 => 'ഒരു ഓഹരിയുടെ ഫോട്ടോ എടുക്കൂ';

  @override
  String get onboardBody1 =>
      'ഒരു ബ്രോക്കറേജ് സ്ക്രീനോ പത്രമോ കമ്പനി ലോഗോയോ മതി: WhatStock ഓഹരി തിരിച്ചറിഞ്ഞ് അതിന്റെ വിലയും ചാർട്ടും പ്രധാന കണക്കുകളും കാണിക്കുന്നു.';

  @override
  String get onboardTitle2 => 'മിനിറ്റുകൾക്കുള്ളിൽ മനസ്സിലാക്കൂ';

  @override
  String get onboardBody2 =>
      'ഓഹരിയെ ചലിപ്പിക്കുന്നത് എന്താണ്, അപകടസാധ്യതകൾ, മൂല്യനിർണ്ണയം, വില എങ്ങോട്ട് നീങ്ങാം എന്നതിന്റെ മൂന്ന് സാധ്യതകൾ എന്നിവ AI വിശകലനം വിശദീകരിക്കുന്നു – ഉറവിടങ്ങൾ സഹിതം, നിങ്ങളുടെ ഭാഷയിൽ.';

  @override
  String get onboardTitle3 => 'എപ്പോഴും അപ്ഡേറ്റായിരിക്കൂ';

  @override
  String get onboardBody3 =>
      'പ്രിയപ്പെട്ടവ, നിങ്ങളുടെ പോർട്ട്ഫോളിയോ, വില അലേർട്ടുകൾ എന്നിവ നിങ്ങളെ എപ്പോഴും വിവരം അറിയിക്കും. നിങ്ങളുടെ വിശകലനങ്ങൾ നിങ്ങളുടെ ഉപകരണത്തിൽ തന്നെ സൂക്ഷിക്കപ്പെടും, വീണ്ടും തുറക്കാൻ തയ്യാറായി.';

  @override
  String get onboardNext => 'അടുത്തത്';

  @override
  String get onboardStart => 'ആരംഭിക്കൂ';

  @override
  String get onboardSkip => 'ഒഴിവാക്കൂ';

  @override
  String changesTitle(String date) {
    return 'മുൻ വിശകലനത്തിന് ശേഷം ($date)';
  }

  @override
  String get changesPrice => 'വില';

  @override
  String get changesNoMajor => 'സാധ്യതകളിൽ കാര്യമായ മാറ്റമില്ല.';

  @override
  String get changesPreviousSummary => 'മുൻ സംഗ്രഹം';

  @override
  String get telemetryTitle => 'WhatStock മെച്ചപ്പെടുത്താൻ സഹായിക്കൂ';

  @override
  String get telemetryBody =>
      'അജ്ഞാത ഉപയോഗ സ്ഥിതിവിവരക്കണക്കുകളും ക്രാഷ് റിപ്പോർട്ടുകളും പങ്കിടുക: ഏതൊക്കെ ഫീച്ചറുകൾ ഉപയോഗിക്കുന്നുവെന്നും എന്താണ് തെറ്റിയതെന്നും. നിങ്ങളുടെ ഓഹരികളോ വിശകലനങ്ങളോ വ്യക്തിഗത ഡാറ്റയോ ഒരിക്കലും പങ്കിടില്ല. ക്രമീകരണത്തിൽ എപ്പോൾ വേണമെങ്കിലും ഇത് മാറ്റാം.';

  @override
  String get telemetryAllow => 'അനുവദിക്കുക';

  @override
  String get telemetryDecline => 'വേണ്ട, നന്ദി';

  @override
  String get telemetrySetting =>
      'അജ്ഞാത സ്ഥിതിവിവരക്കണക്കുകളും ക്രാഷ് റിപ്പോർട്ടുകളും';

  @override
  String get telemetrySettingHint =>
      'ഫീച്ചറുകൾ എത്ര തവണ ഉപയോഗിക്കുന്നുവെന്നതും പിശക് റിപ്പോർട്ടുകളും, വ്യക്തിഗത ഡാറ്റയോ നിങ്ങളുടെ തിരയലുകളുടെയും വിശകലനങ്ങളുടെയും ഉള്ളടക്കമോ ഇല്ലാതെ.';

  @override
  String get askButton => 'ഈ വിശകലനത്തെക്കുറിച്ച് ചോദിക്കുക';

  @override
  String askTitle(String symbol) {
    return '$symbol സംബന്ധിച്ച ചോദ്യങ്ങൾ';
  }

  @override
  String get askIntro =>
      'വിശകലനത്തെക്കുറിച്ച് എന്തും ചോദിക്കാം: ഒരു അപകടസാധ്യത എന്താണ് അർത്ഥമാക്കുന്നത്, എന്ത് സംഭവിച്ചാൽ സാധ്യതകൾ മാറും, ഒരു സംഖ്യ എങ്ങനെ കണക്കാക്കി. ഉത്തരങ്ങൾ ഈ വിശകലനത്തെ അടിസ്ഥാനമാക്കിയുള്ളതാണ്, ഇവ നിക്ഷേപ ഉപദേശമല്ല.';

  @override
  String get askHint => 'ഒരു ചോദ്യം ചോദിക്കുക…';

  @override
  String get askSend => 'അയയ്ക്കുക';

  @override
  String get askThinking => 'ചിന്തിക്കുന്നു…';

  @override
  String get askSuggest1 => 'ഏറ്റവും വലിയ അപകടസാധ്യത എന്താണ്?';

  @override
  String get askSuggest2 => 'എന്ത് സംഭവിച്ചാൽ സാധ്യതകൾ മാറും?';

  @override
  String get askSuggest3 => 'ലളിതമായി വിശദീകരിക്കൂ';

  @override
  String get askMaxReached =>
      'ഈ വിശകലനത്തിനുള്ള അവസാന ചോദ്യമായിരുന്നു അത്. കൂടുതൽ ചോദിക്കാൻ പുതിയൊരു വിശകലനം തയ്യാറാക്കുക.';

  @override
  String get errAskLimit =>
      'ഇന്നത്തെ ചോദ്യ പരിധി എത്തി. നാളെ വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get eventTomorrow => 'നാളെ';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days ദിവസത്തിനുള്ളിൽ',
      one: '1 ദിവസത്തിനുള്ളിൽ',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'ത്രൈമാസ ഫലങ്ങൾ';

  @override
  String get eventBeforeOpen => 'വിപണി തുറക്കുന്നതിന് മുമ്പ്';

  @override
  String get eventAfterClose => 'വിപണി അടച്ചതിന് ശേഷം';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS പ്രതീക്ഷ: $value';
  }

  @override
  String get eventFromAnalysis => 'നിങ്ങളുടെ വിശകലനത്തിൽ നിന്ന്';

  @override
  String get eventDividend => 'ഡിവിഡന്റ് പ്രതീക്ഷിക്കുന്നു';

  @override
  String get eventDividendEstimate =>
      'നിങ്ങൾ രേഖപ്പെടുത്തിയ പേയ്‌മെന്റുകളിൽ നിന്നുള്ള കണക്കുകൂട്ടൽ';

  @override
  String get eventsHint =>
      'അടുത്ത 90 ദിവസത്തെ നിങ്ങളുടെ പ്രിയപ്പെട്ടവയുടെയും പോർട്ട്ഫോളിയോ ഓഹരികളുടെയും ഫല തീയതികളും, നിങ്ങളുടെ വിശകലനങ്ങൾ അടയാളപ്പെടുത്തിയ തീയതിയുള്ള സംഭവങ്ങളും, നിങ്ങൾ രേഖപ്പെടുത്തിയ പേയ്‌മെന്റുകളിൽ നിന്ന് പ്രതീക്ഷിക്കുന്ന ഡിവിഡന്റുകളും.';

  @override
  String get eventsEmpty =>
      'അടുത്ത 90 ദിവസത്തിനുള്ളിൽ തീയതിയുള്ള സംഭവങ്ങളൊന്നുമില്ല. ഫല തീയതികൾ ഇവിടെ കാണാൻ പ്രിയപ്പെട്ടവയോ പോർട്ട്ഫോളിയോ ഓഹരികളോ ചേർക്കുക; രേഖപ്പെടുത്തിയ ഡിവിഡന്റുകൾ അവയുടെ അടുത്ത പ്രതീക്ഷിത പേയ്‌മെന്റ് ഇവിടെ കാണിക്കും.';

  @override
  String get compareTitle => 'താരതമ്യം';

  @override
  String get compareAdd => 'ഓഹരി ചേർക്കുക';

  @override
  String get compareRemove => 'നീക്കം ചെയ്യുക';

  @override
  String get compareTickerHint => 'ടിക്കർ, ഉദാ. MSFT';

  @override
  String get compareHint =>
      'പ്രധാന കണക്കുകൾ അടുത്തടുത്ത്; ഓരോ വരിയിലെയും മികച്ച മൂല്യം ഹൈലൈറ്റ് ചെയ്തിരിക്കുന്നു. തുകകൾ ഓരോ ഓഹരിയുടെയും സ്വന്തം കറൻസിയിലാണ്.';

  @override
  String get compareNoAnalysis => 'ഇതുവരെ വിശകലനം ഇല്ല';

  @override
  String get portfolioDividends => 'വാർഷിക ലാഭവിഹിതം';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent യീൽഡ്';
  }

  @override
  String get portfolioDividendNote =>
      'പ്രതീക്ഷിക്കുന്ന വാർഷിക ലാഭവിഹിതം കഴിഞ്ഞ 12 മാസത്തിൽ നൽകിയ ലാഭവിഹിതത്തെ അടിസ്ഥാനമാക്കിയുള്ളതാണ്; ഭാവിയിലെ പേയ്‌മെന്റുകൾ ഉറപ്പില്ല.';

  @override
  String positionDividend(String amount) {
    return 'ലാഭവിഹിതം: പ്രതിവർഷം $amount';
  }

  @override
  String get chartAvgCost => 'നിങ്ങളുടെ ശരാശരി';

  @override
  String get chartAlertLevel => 'അലേർട്ട്';

  @override
  String get marketsToday => 'ഇന്നത്തെ വിപണികൾ';

  @override
  String get notesTitle => 'എന്റെ കുറിപ്പുകൾ';

  @override
  String get notesHint =>
      'എന്തിനാണ് നിങ്ങൾ ഇത് വാങ്ങിയത്, എന്താണ് ശ്രദ്ധിക്കുന്നത്, എന്തുണ്ടായാൽ വിൽക്കും?';

  @override
  String get notesInfo =>
      'ഈ ഉപകരണത്തിലും സൈൻ ഇൻ ചെയ്തിട്ടുണ്ടെങ്കിൽ നിങ്ങളുടെ അക്കൗണ്ടിലും സൂക്ഷിച്ചിരിക്കുന്നു. AI വിശകലനം നിങ്ങളുടെ കുറിപ്പുകൾ കണക്കിലെടുക്കുന്നു.';

  @override
  String notesSaved(String date) {
    return 'സംരക്ഷിച്ചത്: $date';
  }

  @override
  String get peersTitle => 'സമാന കമ്പനികൾ';

  @override
  String get portfolioExport => 'CSV ആയി എക്സ്പോർട്ട് ചെയ്യുക';

  @override
  String get portfolioImport => 'CSV-യിൽ നിന്ന് ഇമ്പോർട്ട് ചെയ്യുക';

  @override
  String get portfolioImportHint =>
      'ഓരോ വരിയിലും ഒരു വാങ്ങൽ ഒട്ടിക്കുക: ടിക്കർ, അളവ്, വില, കറൻസി, തീയതി (YYYY-MM-DD). കോളങ്ങൾ കോമ, സെമികോളൻ അല്ലെങ്കിൽ ടാബ് ഉപയോഗിച്ച് വേർതിരിക്കാം; തലക്കെട്ട് വരി ഐച്ഛികമാണ്.';

  @override
  String get portfolioImportButton => 'ഇമ്പോർട്ട് ചെയ്യുക';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ഇടപാടുകൾ ചേർത്തു',
      one: '1 ഇടപാട് ചേർത്തു',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count വരികൾ ഒഴിവാക്കി',
      one: '1 വരി ഒഴിവാക്കി',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'പോർട്ട്ഫോളിയോ, പ്രിയപ്പെട്ടവ, വില അലേർട്ടുകൾ, കുറിപ്പുകൾ എന്നിവ നിങ്ങളുടെ എല്ലാ ഉപകരണങ്ങളിലും സമന്വയിപ്പിക്കപ്പെടുന്നു.';

  @override
  String syncLast(String time) {
    return 'അവസാനം സമന്വയിപ്പിച്ചത്: $time';
  }

  @override
  String get syncNow => 'ഇപ്പോൾ സമന്വയിപ്പിക്കുക';

  @override
  String get syncFailed =>
      'സമന്വയിപ്പിക്കൽ പരാജയപ്പെട്ടു. ഇത് സ്വയമേവ വീണ്ടും ശ്രമിക്കും.';

  @override
  String get alertEmailTitle => 'അലേർട്ട് ട്രിഗർ ആകുമ്പോൾ ഇമെയിൽ';

  @override
  String get alertEmailOn =>
      'ഏതാനും മിനിറ്റുകൾ കൂടുമ്പോൾ ഞങ്ങൾ നിങ്ങളുടെ അലേർട്ടുകൾ പരിശോധിക്കുകയും ആപ്പ് അടച്ചിരിക്കുമ്പോഴും നിങ്ങൾക്ക് ഇമെയിൽ അയയ്ക്കുകയും ചെയ്യും.';

  @override
  String get alertEmailSignIn =>
      'ആപ്പ് അടച്ചിരിക്കുമ്പോഴും ഇമെയിൽ വഴി അലേർട്ടുകൾ ലഭിക്കാൻ ക്രമീകരണത്തിൽ നിങ്ങളുടെ ഇമെയിൽ ഉപയോഗിച്ച് സൈൻ ഇൻ ചെയ്യുക.';

  @override
  String get portfolioHistory => 'കാലക്രമേണയുള്ള മൂല്യം';

  @override
  String get portfolioReviewTitle => 'AI പോർട്ട്ഫോളിയോ അവലോകനം';

  @override
  String get portfolioReviewIntro =>
      'AI നിങ്ങളുടെ മുഴുവൻ പോർട്ട്ഫോളിയോയും പരിശോധിക്കുന്നു: കേന്ദ്രീകരണം, മേഖലയും കറൻസിയും സംബന്ധിച്ച എക്സ്പോഷർ, നിങ്ങളുടെ ഓഹരികൾക്ക് പൊതുവായ അപകടസാധ്യതകൾ, ലാഭവിഹിതം. 1 വിശകലനം ഉപയോഗിക്കും.';

  @override
  String get portfolioReviewButton => 'എന്റെ പോർട്ട്ഫോളിയോ അവലോകനം ചെയ്യുക';

  @override
  String get portfolioReviewAgain => 'വീണ്ടും അവലോകനം ചെയ്യുക';

  @override
  String get portfolioReviewWorking =>
      'നിങ്ങളുടെ പോർട്ട്ഫോളിയോ അവലോകനം ചെയ്യുന്നു…';

  @override
  String get digestTitle => 'ഇമെയിൽ വഴി പ്രതിവാര സംഗ്രഹം';

  @override
  String get digestHint =>
      'എല്ലാ തിങ്കളാഴ്ചയും: കഴിഞ്ഞ ആഴ്ച നിങ്ങളുടെ പ്രിയപ്പെട്ടവയും പോർട്ട്ഫോളിയോയും എങ്ങനെ നീങ്ങി, അവയുടെ വരാനിരിക്കുന്ന ഫല തീയതികളും.';

  @override
  String get benchmarkTitle => 'S&P 500-മായി താരതമ്യം';

  @override
  String get benchmarkTitleIndex => 'ഒരു സൂചികയുമായി താരതമ്യം';

  @override
  String get benchmarkHintIndex =>
      'നിങ്ങളുടെ ഓരോ വാങ്ങലും അതേ ദിവസം തിരഞ്ഞെടുത്ത സൂചിക പിന്തുടരുന്ന ഒരു ഫണ്ടിൽ നിക്ഷേപിച്ചിരുന്നെങ്കിൽ എന്നപോലെ. ലാഭവിഹിതം ഉൾപ്പെടുന്നില്ല; മുൻകാല വരുമാനം ഭാവി വരുമാനം പ്രവചിക്കുന്നില്ല.';

  @override
  String get benchmarkYours => 'നിങ്ങളുടെ വാങ്ങലുകൾ';

  @override
  String benchmarkAhead(String points) {
    return 'സൂചികയെക്കാൾ $points ശതമാന പോയിന്റ് മികച്ചത്';
  }

  @override
  String benchmarkBehind(String points) {
    return 'സൂചികയെക്കാൾ $points ശതമാന പോയിന്റ് പിന്നിൽ';
  }

  @override
  String get portfolioSell => 'വിൽക്കുക';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbol വിൽക്കുക';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'ഓഹരിയൊന്നിന്റെ വിൽപ്പന വില ($currency)';
  }

  @override
  String get portfolioSellDate => 'വിറ്റ തീയതി';

  @override
  String get portfolioSellAll => 'എല്ലാം';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'നിങ്ങളുടെ പക്കൽ $quantity ഉണ്ട്';
  }

  @override
  String get portfolioSold => 'വിറ്റു';

  @override
  String get portfolioRealized => 'ലഭിച്ചത്';

  @override
  String get portfolioClosed => 'ക്ലോസ് ചെയ്ത പൊസിഷനുകൾ';

  @override
  String get portfolioClosedNote => 'എല്ലാ ഓഹരികളും വിറ്റു';

  @override
  String get portfolioTransactions => 'ഇടപാടുകൾ';

  @override
  String get portfolioRealizedByYear => 'വർഷം തിരിച്ച് ലഭിച്ച ലാഭം';

  @override
  String get portfolioRealizedHint =>
      'വിൽപ്പനകൾ ആദ്യം നിങ്ങളുടെ ഏറ്റവും പഴയ വാങ്ങലുകളുമായി പൊരുത്തപ്പെടുത്തുന്നു (FIFO), ഇന്നത്തെ വിനിമയ നിരക്കിൽ മാറ്റുന്നു. നികുതി റിട്ടേണിന് നിങ്ങളുടെ ബ്രോക്കറുടെ സ്റ്റേറ്റ്മെന്റ് ഉപയോഗിക്കുക.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'ഈ വിശകലനത്തിനുശേഷം പുതിയ ത്രൈമാസ ഫലങ്ങൾ പ്രസിദ്ധീകരിച്ചു ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'പുതിയ ഫലങ്ങൾ';

  @override
  String get portfolioImportBrokers =>
      'Revolut, Trading 212, Interactive Brokers, DEGIRO, Schwab, Fidelity, Robinhood എന്നിവയുടെ എക്സ്പോർട്ടുകളും വിൽപ്പനകളും ലാഭവിഹിതവും (സ്രോതസ്സിൽ പിടിച്ച നികുതി കിഴിച്ച്) ഉൾപ്പെടെ തിരിച്ചറിയും; നിക്ഷേപങ്ങൾ ഒഴിവാക്കും.';

  @override
  String get portfolioImportFile => 'ഒരു ഫയൽ തിരഞ്ഞെടുക്കുക';

  @override
  String offlineBanner(String time) {
    return 'കണക്ഷനില്ല – അവസാനം സംരക്ഷിച്ച ഡാറ്റ കാണിക്കുന്നു ($time).';
  }

  @override
  String get glossMarketCap =>
      'ഓഹരി വിപണിയിൽ കമ്പനിക്ക് മൊത്തം എത്ര വിലയുണ്ട്: ഓഹരി വില × ഓഹരികളുടെ എണ്ണം.';

  @override
  String get glossSharesOutstanding =>
      'കമ്പനി എത്ര ഓഹരികൾ പുറത്തിറക്കിയിട്ടുണ്ട്. ഇത് കൂടിയാൽ ഓരോ ഓഹരിക്കും ചെറിയ പങ്കേ കിട്ടൂ; ഓഹരി തിരികെ വാങ്ങൽ (ബൈബാക്ക്) ഇത് കുറയ്ക്കും.';

  @override
  String get glossPeTrailing =>
      'വില ÷ കഴിഞ്ഞ 12 മാസത്തെ ഓഹരിയൊന്നിന് വരുമാനം: ഇപ്പോഴത്തെ ലാഭത്തിന്റെ എത്ര വർഷത്തെ തുക നിങ്ങൾ നൽകുന്നു. കുറവാണെങ്കിൽ വില കുറവ്, പക്ഷേ വേഗത്തിൽ വളരുന്ന കമ്പനികൾക്ക് സാധാരണയായി ഉയർന്ന P/E ഉണ്ടാകും.';

  @override
  String get glossPeForward =>
      'P/E പോലെ തന്നെ, പക്ഷേ അടുത്ത 12 മാസത്തേക്ക് അനലിസ്റ്റുകൾ പ്രതീക്ഷിക്കുന്ന ലാഭം ഉപയോഗിച്ച്. ട്രെയിലിംഗ് P/E-യെക്കാൾ കുറവാണെങ്കിൽ ലാഭം വളരുമെന്നാണ് പ്രതീക്ഷ.';

  @override
  String get glossPb =>
      'വില ÷ ഓഹരിയൊന്നിന് ബുക്ക് വാല്യൂ (ആസ്തികളിൽ നിന്ന് കടം കുറച്ചത്). ഏകദേശം 1 എന്നാൽ കടലാസിൽ കമ്പനിക്കുള്ളതിന്റെ മൂല്യം തന്നെയാണ് വിപണി നൽകുന്നത്.';

  @override
  String get glossPs =>
      'വിപണി മൂല്യം ÷ വാർഷിക വരുമാനം. ഇതുവരെ ലാഭം കുറവോ ഇല്ലാത്തതോ ആയ കമ്പനികൾക്ക് ഉപകാരപ്രദം; ഒരേ വ്യവസായത്തിനുള്ളിൽ താരതമ്യം ചെയ്യുക.';

  @override
  String get glossEvToFcf =>
      'കടം ഉൾപ്പെടെയുള്ള കമ്പനി മൂല്യം (EV) ÷ നിക്ഷേപങ്ങൾക്ക് ശേഷം ഒരു വർഷം ഉണ്ടാക്കുന്ന പണം. കുറവാണെങ്കിൽ നൽകുന്ന വിലയ്ക്ക് കൂടുതൽ പണം കിട്ടുന്നു എന്നർത്ഥം.';

  @override
  String get glossPeg =>
      'P/E ÷ പ്രതീക്ഷിക്കുന്ന വാർഷിക ലാഭ വളർച്ച (%). ഏകദേശം 1 പലപ്പോഴും ന്യായമായി കണക്കാക്കുന്നു; ഇത് P/E-യെ വളർച്ചയുടെ വെളിച്ചത്തിൽ കാണിക്കുന്നു.';

  @override
  String get glossEps =>
      'കഴിഞ്ഞ 12 മാസത്തെ ഓഹരിയൊന്നിന് ലാഭം. വർഷങ്ങളായി ഉയരുന്ന EPS ആരോഗ്യമുള്ള കമ്പനിയുടെ ഏറ്റവും ശക്തമായ സൂചനകളിൽ ഒന്നാണ്.';

  @override
  String get glossBeta =>
      'ഓഹരി വിപണിക്കൊപ്പം എത്രത്തോളം നീങ്ങുന്നു: 1 = വിപണി പോലെ, 1.5 = ഏകദേശം 50% വലിയ ചാഞ്ചാട്ടം, 1-ൽ താഴെ = ശാന്തം.';

  @override
  String get glossRevenueTtm =>
      'കഴിഞ്ഞ 12 മാസത്തെ ആകെ വിൽപ്പന, ചെലവുകൾ കുറയ്ക്കുന്നതിന് മുമ്പ്.';

  @override
  String get glossNetIncomeTtm =>
      'കഴിഞ്ഞ 12 മാസത്തിൽ എല്ലാ ചെലവുകളും പലിശയും നികുതിയും കഴിഞ്ഞ് ബാക്കിയുള്ള ലാഭം.';

  @override
  String get glossGrossMargin =>
      'ഉൽപ്പന്നങ്ങളുടെ നേരിട്ടുള്ള ചെലവ് കഴിഞ്ഞ് വരുമാനത്തിന്റെ എത്ര ഭാഗം ബാക്കിയാകുന്നു. ഉയർന്ന മാർജിൻ പലപ്പോഴും വില നിശ്ചയിക്കാനുള്ള ശക്തി കാണിക്കുന്നു.';

  @override
  String get glossOperatingMargin =>
      'ബിസിനസ് നടത്തിപ്പിന്റെ ചെലവുകൾ (ശമ്പളം, വാടക, മാർക്കറ്റിംഗ്) കഴിഞ്ഞ്, പലിശയ്ക്കും നികുതിക്കും മുമ്പ് വരുമാനത്തിന്റെ എത്ര ഭാഗം ബാക്കിയാകുന്നു.';

  @override
  String get glossNetMargin =>
      'വരുമാനത്തിന്റെ എത്ര ഭാഗം അന്തിമ ലാഭമായി മാറുന്നു. 20% എന്നാൽ ഓരോ 100 വിൽപ്പനയിലും 20 ലാഭമാണ്.';

  @override
  String get glossRoe =>
      'ഇക്വിറ്റിയിലെ ആദായം: വാർഷിക ലാഭം ÷ ഉടമകളുടെ മൂലധനം. ഓഹരിയുടമകളുടെ പണം മാനേജ്മെന്റ് എത്ര നന്നായി ഉപയോഗിക്കുന്നു എന്ന് കാണിക്കുന്നു; ഏകദേശം 15%-ന് മുകളിൽ ശക്തമാണ്.';

  @override
  String get glossRoa =>
      'ആസ്തികളിലെ ആദായം: വാർഷിക ലാഭം ÷ കമ്പനിയുടെ മൊത്തം ആസ്തികൾ. ഒരേ വ്യവസായത്തിനുള്ളിൽ താരതമ്യം ചെയ്യുക.';

  @override
  String get glossDebtToEquity =>
      'കടം ÷ ഉടമകളുടെ മൂലധനം. കൂടുതലാണെങ്കിൽ കൂടുതൽ കടമെടുത്ത പണം: പലിശ നിരക്ക് കൂടുമ്പോഴോ ബിസിനസ് മന്ദഗതിയിലാകുമ്പോഴോ കൂടുതൽ അപകടസാധ്യത.';

  @override
  String get glossCurrentRatio =>
      'ഹ്രസ്വകാല ആസ്തികൾ ÷ ഒരു വർഷത്തിനുള്ളിൽ അടയ്ക്കേണ്ട ബില്ലുകൾ. 1-ന് മുകളിൽ എന്നാൽ കമ്പനിക്ക് അടുത്ത ബില്ലുകൾ അടയ്ക്കാൻ കഴിയും.';

  @override
  String get glossRevenueGrowth =>
      'ഒരു വർഷം മുമ്പത്തെ അപേക്ഷിച്ച് വരുമാനം എത്ര വളർന്നു.';

  @override
  String get glossEpsGrowth =>
      'ഒരു വർഷം മുമ്പത്തെ അപേക്ഷിച്ച് ഓഹരിയൊന്നിന് ലാഭം എത്ര വളർന്നു.';

  @override
  String get glossDividendYield =>
      'വാർഷിക ലാഭവിഹിതം ÷ ഓഹരി വില: നിങ്ങൾ നൽകുന്ന തുകയുടെ ശതമാനമായി ഓരോ വർഷവും കിട്ടുന്ന പണ വരുമാനം.';

  @override
  String get glossDividendPerShare =>
      'കഴിഞ്ഞ വർഷം ഒരു ഓഹരിക്ക് നൽകിയ ലാഭവിഹിതം.';

  @override
  String get glossPayoutRatio =>
      'ലാഭത്തിന്റെ എത്ര ഭാഗം ലാഭവിഹിതമായി നൽകുന്നു. 100%-ന് മുകളിൽ കമ്പനി സമ്പാദിക്കുന്നതിലും കൂടുതൽ നൽകുന്നു, ഇത് അപൂർവമായേ നീണ്ടുനിൽക്കൂ.';

  @override
  String get portfolioBeta => 'പോർട്ട്ഫോളിയോ ബീറ്റ';

  @override
  String get glossPortfolioBeta =>
      'നിങ്ങളുടെ ഓഹരികളുടെ മൂല്യം അനുസരിച്ച് വെയ്റ്റ് ചെയ്ത ബീറ്റ: വിപണി 1% നീങ്ങുമ്പോൾ നിങ്ങളുടെ ഓഹരികൾ ഏകദേശം എത്ര ശതമാനം നീങ്ങുന്നു എന്ന്. 1-ന് മുകളിലാണെങ്കിൽ വിപണിയേക്കാൾ കൂടുതൽ ചാഞ്ചാടും, 1-ൽ താഴെയാണെങ്കിൽ കുറവ്. പണം ഉൾപ്പെടുത്തിയിട്ടില്ല.';

  @override
  String get portfolioTop3 => 'മുൻനിര 3 പൊസിഷനുകൾ';

  @override
  String get glossPortfolioTop3 =>
      'നിങ്ങളുടെ ഓഹരികളുടെ മൂല്യത്തിന്റെ എത്ര ഭാഗം ഏറ്റവും വലിയ മൂന്ന് പൊസിഷനുകളിലാണ് എന്ന്. ഇത് കൂടുന്തോറും ഒരൊറ്റ കമ്പനിയെക്കുറിച്ചുള്ള മോശം വാർത്ത മുഴുവൻ പോർട്ട്ഫോളിയോയെയും കൂടുതൽ ബാധിക്കാം.';

  @override
  String get glossDividendGrowth5y =>
      'കഴിഞ്ഞ അഞ്ച് വർഷത്തിൽ ഓഹരിയൊന്നിന് ലാഭവിഹിതം പ്രതിവർഷം ശരാശരി എത്ര വളർന്നു. സ്ഥിരമായ വളർച്ച സാധാരണയായി കമ്പനിക്ക് അതിന്റെ പണമൊഴുക്കിൽ വിശ്വാസമുണ്ടെന്ന് സൂചിപ്പിക്കുന്നു; വെട്ടിക്കുറയ്ക്കൽ പലപ്പോഴും ഒരു മുന്നറിയിപ്പ് സൂചനയാണ്.';

  @override
  String get glossYieldOnCost =>
      'കഴിഞ്ഞ 12 മാസത്തിൽ ലഭിച്ച ലാഭവിഹിതം, നിങ്ങൾ ഇപ്പോഴും കൈവശം വെച്ചിരിക്കുന്ന ഓഹരികൾക്ക് നൽകിയ തുക കൊണ്ട് ഹരിച്ചത്. ലാഭവിഹിത യീൽഡിൽനിന്ന് വ്യത്യസ്തമായി, ഇത് ഇന്നത്തെ വിലയല്ല, നിങ്ങളുടെ സ്വന്തം വാങ്ങൽ വിലയാണ് അടിസ്ഥാനമാക്കുന്നത്.';

  @override
  String get glossTitle => 'ഇതിന്റെ അർത്ഥം എന്താണ്?';

  @override
  String get watchNewsTitle => 'നിങ്ങളുടെ ഓഹരികളുടെ വാർത്തകൾ';

  @override
  String get undo => 'പഴയപടിയാക്കുക';

  @override
  String get watchSort => 'അടുക്കുക';

  @override
  String get watchSortOwn => 'എന്റെ ക്രമം';

  @override
  String get watchSortGainers => 'ഏറ്റവും കൂടുതൽ ഉയർന്നവ ആദ്യം';

  @override
  String get watchSortLosers => 'ഏറ്റവും കൂടുതൽ ഇടിഞ്ഞവ ആദ്യം';

  @override
  String get watchSortName => 'ടിക്കർ പ്രകാരം (A–Z)';

  @override
  String get watchHint =>
      'ക്രമം മാറ്റാൻ ഹാൻഡിൽ വലിച്ചിടുക, നീക്കം ചെയ്യാൻ ഇടത്തേക്ക് സ്വൈപ്പ് ചെയ്യുക. വര കഴിഞ്ഞ 30 ദിവസം കാണിക്കുന്നു.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: നിങ്ങളുടെ വിശകലനം തയ്യാറാണ്.';
  }

  @override
  String alertFromCost(String price) {
    return 'നിങ്ങളുടെ ശരാശരി വാങ്ങൽ വിലയിൽ നിന്ന് ($price):';
  }

  @override
  String get briefTitle => 'ഇന്ന് നിങ്ങളുടെ ഓഹരികളോടൊപ്പം';

  @override
  String get briefButton => 'ഇന്നത്തെ സംഗ്രഹം';

  @override
  String get briefHint =>
      'നിങ്ങളുടെ പോർട്ട്‌ഫോളിയോയും പ്രിയപ്പെട്ടവയും ഇന്ന് എങ്ങനെ നീങ്ങിയെന്നും ഏറ്റവും പുതിയ വാർത്തകൾ അവയെക്കുറിച്ച് എന്തു പറയുന്നുവെന്നും ചുരുക്കി പറയുന്ന AI സംഗ്രഹം. വിശകലനം ഉപയോഗിക്കില്ല.';

  @override
  String get briefRefresh => 'പുതുക്കുക';

  @override
  String get sectionEarnings => 'ത്രൈമാസ ഫലങ്ങൾ';

  @override
  String earningsNext(String date) {
    return 'അടുത്ത റിപ്പോർട്ട്: $date';
  }

  @override
  String get earningsExpected => 'പ്രതീക്ഷിച്ച EPS';

  @override
  String get earningsReported => 'റിപ്പോർട്ട് ചെയ്ത EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'കഴിഞ്ഞ $total പാദങ്ങളിൽ $beats എണ്ണത്തിൽ പ്രതീക്ഷിച്ച EPS-നൊപ്പമോ അതിനു മുകളിലോ',
      one: '1 പാദത്തിൽ $beats എണ്ണത്തിൽ പ്രതീക്ഷിച്ച EPS-നൊപ്പമോ അതിനു മുകളിലോ',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol നാളെ ത്രൈമാസ ഫലങ്ങൾ പ്രസിദ്ധീകരിക്കും';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol ഇന്ന് ത്രൈമാസ ഫലങ്ങൾ പ്രസിദ്ധീകരിക്കും';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return '$symbol: ഇന്ന് ഡിവിഡന്റ് പ്രതീക്ഷിക്കുന്നു';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'ഏകദേശം $amount. ലഭിച്ചുകഴിഞ്ഞാൽ നിങ്ങളുടെ പോർട്ട്‌ഫോളിയോയിൽ രേഖപ്പെടുത്തുക.';
  }

  @override
  String get dividendRemindersTitle => 'ഡിവിഡന്റ് ഓർമ്മപ്പെടുത്തലുകൾ';

  @override
  String get dividendRemindersSubtitle =>
      'നിങ്ങൾ രേഖപ്പെടുത്തിയ പേയ്‌മെന്റുകളുടെ ക്രമം അനുസരിച്ച് ഡിവിഡന്റ് പ്രതീക്ഷിക്കുന്ന ദിവസം, അത് രേഖപ്പെടുത്താനായി ഒരു അറിയിപ്പ്';

  @override
  String get earningsRemindersTitle => 'ഫല ഓർമ്മപ്പെടുത്തലുകൾ';

  @override
  String get earningsRemindersSubtitle =>
      'നിങ്ങളുടെ പ്രിയപ്പെട്ടവയോ പോർട്ട്‌ഫോളിയോയിലെ ഓഹരികളോ ത്രൈമാസ ഫലങ്ങൾ പ്രസിദ്ധീകരിക്കുന്നതിന്റെ തലേദിവസം ഒരു അറിയിപ്പ്';

  @override
  String addAllToFavorites(int count) {
    return 'എല്ലാം പ്രിയപ്പെട്ടവയിലേക്ക് ചേർക്കുക ($count)';
  }

  @override
  String get portfolioImportPhoto => 'സ്ക്രീൻഷോട്ടിൽ നിന്ന് ഇമ്പോർട്ട് ചെയ്യുക';

  @override
  String get holdingsReading => 'നിങ്ങളുടെ പൊസിഷനുകൾ വായിക്കുന്നു…';

  @override
  String get holdingsReviewTitle => 'കണ്ടെത്തിയ പൊസിഷനുകൾ';

  @override
  String get holdingsReviewHint =>
      'ചേർക്കുന്നതിന് മുമ്പ് സംഖ്യകൾ പരിശോധിക്കുക. വില ഓരോ ഓഹരിക്കുമുള്ള നിങ്ങളുടെ ശരാശരി വാങ്ങൽ വിലയാണ്, ഇന്നത്തെ വിലയല്ല.';

  @override
  String get holdingsNoPrice => 'ചിത്രത്തിൽ ശരാശരി വാങ്ങൽ വിലയില്ല';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count പൊസിഷനുകൾ ചേർക്കുക',
      one: '1 പൊസിഷൻ ചേർക്കുക',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'ഈ ചിത്രത്തിൽ ഓഹരി പൊസിഷനുകളൊന്നും കണ്ടെത്തിയില്ല. നിങ്ങളുടെ ബ്രോക്കറുടെ പൊസിഷനുകൾ അല്ലെങ്കിൽ ഹോൾഡിംഗ്സ് പേജിന്റെ സ്ക്രീൻഷോട്ട് പരീക്ഷിക്കുക.';

  @override
  String get week52Range => '52 ആഴ്ചയിലെ പരിധി';

  @override
  String week52BelowHigh(String percent) {
    return '52 ആഴ്ചയിലെ ഉയർന്ന നിലയേക്കാൾ $percent താഴെ';
  }

  @override
  String get week52AtHigh => '52 ആഴ്ചയിലെ ഉയർന്ന നിലയിൽ';

  @override
  String get alertKindTrailing => 'ഉയർന്ന നിലയിൽ നിന്ന് വീണാൽ';

  @override
  String get alertTrailingPercent => 'ഉയർന്ന നിലയിൽ നിന്നുള്ള ഇടിവ് (%)';

  @override
  String get alertTrailingHint =>
      'വില ഉയരുമ്പോൾ പിന്തുടരും: സജ്ജമാക്കിയ ശേഷമുള്ള ഏറ്റവും ഉയർന്ന നിലയിൽ നിന്ന് വില ഇത്രയും ഇടിഞ്ഞാൽ അറിയിക്കും.';

  @override
  String alertDescTrailing(String percent) {
    return 'ഉയർന്ന നിലയിൽ നിന്ന് $percent ഇടിവ്';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'ഇതുവരെയുള്ള ഉയർന്ന നില: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol ഉയർന്ന നിലയിൽ നിന്ന് $percent ഇടിഞ്ഞു';
  }

  @override
  String get sectionInsiders => 'ഇൻസൈഡർ ഇടപാടുകൾ';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count വാങ്ങലുകൾ',
      one: '1 വാങ്ങൽ',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count വിൽപ്പനകൾ',
      one: '1 വിൽപ്പന',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'നെറ്റ്: $shares ഓഹരികൾ';
  }

  @override
  String get insiderBuy => 'വാങ്ങി';

  @override
  String get insiderSell => 'വിറ്റു';

  @override
  String get insiderHint =>
      'കഴിഞ്ഞ 90 ദിവസത്തിനുള്ളിൽ എക്സിക്യൂട്ടീവുകളും ഡയറക്ടർമാരും ഓപ്പൺ മാർക്കറ്റിൽ നടത്തിയ വാങ്ങലുകളും വിൽപ്പനകളും (SEC Form 4). ഓപ്ഷൻ എക്സർസൈസുകളും ഓഹരി അവാർഡുകളും കണക്കാക്കിയിട്ടില്ല.';

  @override
  String get insiderNone =>
      'കഴിഞ്ഞ 90 ദിവസത്തിനുള്ളിൽ ഓപ്പൺ മാർക്കറ്റിൽ ഇൻസൈഡർ വാങ്ങലുകളോ വിൽപ്പനകളോ ഇല്ല.';

  @override
  String get analystTrend => 'ഓരോ മാസവും അഭിപ്രായങ്ങൾ എങ്ങനെ മാറി';

  @override
  String get watchListAll => 'എല്ലാം';

  @override
  String get watchListNew => 'പുതിയ ലിസ്റ്റ്';

  @override
  String get watchListName => 'ലിസ്റ്റിന്റെ പേര്';

  @override
  String get watchListRename => 'ലിസ്റ്റിന്റെ പേര് മാറ്റുക';

  @override
  String get watchListDelete => 'ലിസ്റ്റ് ഇല്ലാതാക്കുക';

  @override
  String get watchListAddTo => 'ലിസ്റ്റിലേക്ക് ചേർക്കുക';

  @override
  String get watchListEmpty =>
      'ഈ ലിസ്റ്റിൽ ഇതുവരെ ഓഹരികളൊന്നുമില്ല. ചേർക്കാൻ ഓഹരിയുടെ അടുത്തുള്ള ലിസ്റ്റ് ബട്ടൺ ടാപ്പ് ചെയ്യുക.';

  @override
  String get portfolioAskTitle =>
      'നിങ്ങളുടെ പോർട്ട്ഫോളിയോ സംബന്ധിച്ച ചോദ്യങ്ങൾ';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'ബാക്കപ്പ്';

  @override
  String get backupSave => 'ബാക്കപ്പ് സേവ് ചെയ്യുക';

  @override
  String get backupSaveHint =>
      'നിങ്ങളുടെ പ്രിയപ്പെട്ടവ, ലിസ്റ്റുകൾ, പോർട്ട്ഫോളിയോ, അലേർട്ടുകൾ, കുറിപ്പുകൾ എന്നിവ ഒരു ഫയലിൽ.';

  @override
  String get backupRestore => 'ബാക്കപ്പിൽ നിന്ന് പുനഃസ്ഥാപിക്കുക';

  @override
  String get backupRestoreHint =>
      'ഫയലിലുള്ളത് ചേർക്കുന്നു; ഇപ്പോഴുള്ളതൊന്നും ഇല്ലാതാക്കില്ല.';

  @override
  String get backupRestored => 'ബാക്കപ്പ് പുനഃസ്ഥാപിച്ചു.';

  @override
  String get backupInvalid => 'ഈ ഫയൽ ഒരു WhatStock ബാക്കപ്പ് അല്ല.';

  @override
  String get allocationPositions => 'ഓഹരികൾ';

  @override
  String get allocationSectors => 'മേഖലകൾ';

  @override
  String get allocationCurrencies => 'കറൻസികൾ';

  @override
  String get allocationAccounts => 'അക്കൗണ്ടുകൾ';

  @override
  String get compareReturn1y => '1 വർഷത്തെ റിട്ടേൺ';

  @override
  String get compareFromHigh => '52 ആഴ്ചയിലെ ഉയർന്ന നിലയിൽ നിന്നുള്ള അകലം';

  @override
  String get briefAutoTitle => 'എല്ലാ രാവിലെയും ദൈനംദിന സംഗ്രഹം';

  @override
  String get briefAutoSubtitle =>
      'ആപ്പ് പ്രവർത്തിക്കുമ്പോൾ രാവിലെ 7:00-ന് ശേഷം “ഇന്ന് നിങ്ങളുടെ ഓഹരികളോടൊപ്പം” സ്വയമേവ തയ്യാറാകും; കമ്പ്യൂട്ടറുകളിൽ ഒരു അറിയിപ്പ് നിങ്ങളെ അറിയിക്കും. ഇത് നിങ്ങളുടെ ദൈനംദിന ചോദ്യ പരിധിയിൽ നിന്നാണ്, വിശകലനം ഉപയോഗിക്കില്ല.';

  @override
  String get targetsButton => 'ലക്ഷ്യ വിന്യാസം';

  @override
  String get targetsTitle => 'ലക്ഷ്യ വിന്യാസം';

  @override
  String get targetsHint =>
      'പോർട്ട്ഫോളിയോയിൽ ഓരോ ഓഹരിക്കും എത്ര പങ്ക് വേണമെന്ന് സജ്ജമാക്കുക. ലക്ഷ്യമില്ലെങ്കിൽ ഫീൽഡ് ശൂന്യമായി വിടുക. അവിടെ എത്താൻ എന്ത് വാങ്ങണം അല്ലെങ്കിൽ വിൽക്കണം എന്ന് ആപ്പ് കാണിക്കും.';

  @override
  String targetsSum(String percent) {
    return 'ആകെ: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'വാങ്ങുക ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'വിൽക്കുക ≈ $amount';
  }

  @override
  String get rebalanceOk => 'ലക്ഷ്യത്തിൽ';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol പ്രതീക്ഷിച്ച EPS മറികടന്നു';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol പ്രതീക്ഷിച്ച EPS എത്തിയില്ല';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'റിപ്പോർട്ട് ചെയ്ത EPS $actual, പ്രതീക്ഷിച്ചത് $estimate';
  }

  @override
  String get newsExplain => 'ഇതിന്റെ അർത്ഥമെന്ത്?';

  @override
  String get watchAlertAll => 'വലിയ പ്രതിദിന ചാഞ്ചാട്ടത്തിന് അലേർട്ട്';

  @override
  String get watchAlertAllHint =>
      'ഈ ലിസ്റ്റിലെ ഓരോ ഓഹരിക്കും ഒരു വില അലേർട്ട്: ഒരു ദിവസം ഇത്രയും മുകളിലേക്കോ താഴേക്കോ നീങ്ങിയാൽ അറിയിക്കും. ഇതിനകം അലേർട്ട് ഉള്ള ഓഹരികൾക്ക് അവയുടേത് തന്നെ നിലനിൽക്കും.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count അലേർട്ടുകൾ സജ്ജമാക്കി',
      one: '1 അലേർട്ട് സജ്ജമാക്കി',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized =>
      'ലഭിച്ച ലാഭം എക്സ്പോർട്ട് ചെയ്യുക (CSV)';

  @override
  String get portfolioAnnualReturn => 'വാർഷിക റിട്ടേൺ';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / വർഷം';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'പണം-ഭാരിത വാർഷിക റിട്ടേൺ (XIRR): നിങ്ങൾ എപ്പോൾ വാങ്ങി, വിറ്റു എന്നത് കണക്കിലെടുക്കുന്നു, അതിനാൽ പിന്നീട് ചേർത്ത പണം ഇതിനെ വികലമാക്കുന്നില്ല. നിങ്ങളുടെ ആദ്യ വാങ്ങലിന് കുറഞ്ഞത് ഒരു വർഷമായാൽ കാണിക്കും; ലാഭവിഹിതം ഉൾപ്പെടുത്തിയിട്ടില്ല.';

  @override
  String get eventsAddToCalendar => 'കലണ്ടറിലേക്ക് ചേർക്കുക (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'പോർട്ട്‌ഫോളിയോ അലേർട്ട്';

  @override
  String get portfolioMoveAlertSubtitle =>
      'നിങ്ങളുടെ മുഴുവൻ പോർട്ട്‌ഫോളിയോയും ഒരു ദിവസം ഇത്രയും ചാഞ്ചാടുമ്പോൾ ഒരു അറിയിപ്പ്.';

  @override
  String get portfolioMoveAlertOff => 'ഓഫ്';

  @override
  String portfolioMoveUp(String percent) {
    return 'നിങ്ങളുടെ പോർട്ട്‌ഫോളിയോ ഇന്ന് $percent ഉയർന്നു';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'നിങ്ങളുടെ പോർട്ട്‌ഫോളിയോ ഇന്ന് $percent ഇടിഞ്ഞു';
  }

  @override
  String get whatIfTitle => 'നിക്ഷേപിച്ചിരുന്നെങ്കിൽ?';

  @override
  String get whatIfAmount => 'തുക';

  @override
  String whatIfResult(String amount, String period) {
    return '$period മുമ്പ് നിക്ഷേപിച്ച $amount ഇന്ന് ആകുമായിരുന്നു';
  }

  @override
  String get whatIfNote =>
      'ഓഹരി വിലയെ മാത്രം അടിസ്ഥാനമാക്കി: ലാഭവിഹിതം, ഫീസ്, നികുതി എന്നിവ ഉൾപ്പെടുന്നില്ല. മുൻകാല വരുമാനം ഭാവി വരുമാനം പ്രവചിക്കുന്നില്ല.';

  @override
  String get watchShare => 'ലിസ്റ്റ് പങ്കിടുക';

  @override
  String get watchImport => 'ടിക്കറുകൾ ചേർക്കുക';

  @override
  String get watchImportHint =>
      'കോമ, സ്‌പെയ്‌സ് അല്ലെങ്കിൽ പുതിയ വരി ഉപയോഗിച്ച് വേർതിരിച്ച ടിക്കറുകൾ ഒട്ടിക്കുക – ഉദാഹരണത്തിന്, ആരെങ്കിലും നിങ്ങളുമായി പങ്കിട്ട ലിസ്റ്റ്.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ഓഹരികൾ ചേർത്തു',
      one: '1 ഓഹരി ചേർത്തു',
      zero: 'പുതിയ ഓഹരികളൊന്നുമില്ല',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'ഏറ്റവും വലുത് ആദ്യം';

  @override
  String get positionsSortGain => 'ഏറ്റവും കൂടുതൽ മൊത്തം റിട്ടേൺ ആദ്യം';

  @override
  String get positionsSortToday => 'ഇന്നത്തെ മികച്ചവ ആദ്യം';

  @override
  String get chartMyBuys => 'നിങ്ങളുടെ വാങ്ങലുകൾ';

  @override
  String get chartMySells => 'നിങ്ങളുടെ വിൽപ്പനകൾ';

  @override
  String get shortcutsTitle => 'കീബോർഡ് ഷോർട്ട്കട്ടുകൾ';

  @override
  String usMarketOpen(String time) {
    return 'യുഎസ് വിപണി തുറന്നിരിക്കുന്നു · അടയ്ക്കാൻ $time കൂടി';
  }

  @override
  String usMarketClosed(String time) {
    return 'യുഎസ് വിപണി അടച്ചിരിക്കുന്നു · തുറക്കാൻ $time കൂടി';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes മി.';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours മ. $minutes മി.';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days ദി. $hours മ.';
  }

  @override
  String get dividendGoalSet => 'പ്രതിമാസ ലാഭവിഹിത ലക്ഷ്യം സജ്ജമാക്കുക';

  @override
  String get dividendGoalTitle => 'പ്രതിമാസ ലാഭവിഹിത ലക്ഷ്യം';

  @override
  String get dividendGoalAmount => 'പ്രതിമാസ ലാഭവിഹിതം';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'ഇന്നത്തെ യീൽഡിൽ പ്രതിമാസം ഏകദേശം $amount · $percent · ലക്ഷ്യം: $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'ഇന്നത്തെ യീൽഡിൽ പ്രതിമാസം ഏകദേശം $amount · ലക്ഷ്യം കൈവരിച്ചു: $goal';
  }

  @override
  String get portfolioAccount => 'അക്കൗണ്ട്';

  @override
  String get portfolioAccountHint => 'ഉദാ. NPS (ഓപ്ഷണൽ)';

  @override
  String get portfolioAccountAdd => 'അക്കൗണ്ട് വ്യക്തമാക്കുക';

  @override
  String get portfolioAccountsAll => 'എല്ലാ അക്കൗണ്ടുകളും';

  @override
  String get portfolioAccountNote =>
      'ഈ അക്കൗണ്ടിലെ ഇടപാടുകളും ഡിവിഡന്റുകളും മാത്രം. പണം, ലക്ഷ്യങ്ങൾ, AI അവലോകനം എന്നിവ \'എല്ലാ അക്കൗണ്ടുകളും\' എന്നതിൽ കാണിക്കുന്നു.';

  @override
  String get portfolioNoAccount => 'അക്കൗണ്ട് ഇല്ല';

  @override
  String portfolioFee(String currency) {
    return 'ഫീസ് ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'ഫീസ് ചേർക്കുക';

  @override
  String portfolioFeeRow(String amount) {
    return 'ഫീസ്: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'വാർഷിക സംഗ്രഹം';

  @override
  String get portfolioProceeds => 'വിൽപ്പന വരുമാനം';

  @override
  String get portfolioCostBasis => 'വാങ്ങൽ ചെലവ്';

  @override
  String get portfolioFeesPaid => 'അടച്ച ഫീസ്';

  @override
  String get portfolioAnnualSummaryNote =>
      'തുകകൾ യഥാർത്ഥ കറൻസിയിലാണ്, മാറ്റിയിട്ടില്ല. വിൽപ്പന വരുമാനം വിൽപ്പന ഫീസ് കുറച്ചതാണ്; വാങ്ങൽ ചെലവിൽ വാങ്ങൽ ഫീസ് ഉൾപ്പെടുന്നു (FIFO). നികുതി റിട്ടേണിനായി, നിങ്ങളുടെ നികുതി വകുപ്പ് ആവശ്യപ്പെടുന്ന വിനിമയ നിരക്കിൽ മാറ്റുക.';

  @override
  String get portfolioShare => 'പ്രകടനം പങ്കിടുക';

  @override
  String get portfolioShareHeading => 'എന്റെ പോർട്ട്ഫോളിയോ';

  @override
  String get portfolioTopHoldings => 'ഏറ്റവും വലിയ പൊസിഷനുകൾ';

  @override
  String get portfolioShareNote =>
      'ശതമാനങ്ങൾ മാത്രമാണ് പങ്കിടുന്നത്, തുകകളല്ല.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count പൊസിഷനുകൾ',
      one: '$count പൊസിഷൻ',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'നിക്ഷേപ ഉപദേശമല്ല';

  @override
  String get contributionButton => 'പുതിയ പണം നിക്ഷേപിക്കുക';

  @override
  String contributionAmount(String currency) {
    return 'നിക്ഷേപിക്കേണ്ട തുക ($currency)';
  }

  @override
  String get contributionHint =>
      'വാങ്ങൽ മാത്രം, വിൽപ്പനയില്ല: ലക്ഷ്യത്തിൽ നിന്ന് ഏറ്റവും താഴെയുള്ള പൊസിഷനുകൾക്കാണ് ആദ്യം പണം ലഭിക്കുക.';

  @override
  String contributionShares(String shares) {
    return '≈ $shares ഓഹരികൾ';
  }

  @override
  String contributionMissing(String symbols) {
    return '$symbols-ന് നിലവിലെ വില ലഭ്യമല്ല: വിഭജനത്തിൽ ഉൾപ്പെടുത്തിയിട്ടില്ല.';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'വാർഷിക റിട്ടേൺ ($rate) ഇതുപോലെ തുടർന്നാൽ, ഏകദേശം $year ആകുമ്പോഴേക്കും നിങ്ങൾ ലക്ഷ്യം കൈവരിക്കും.';
  }

  @override
  String get portfolioMaxDrawdown => 'ഏറ്റവും വലിയ ഇടിവ്';

  @override
  String get glossMaxDrawdown =>
      'നിങ്ങളുടെ ഓഹരികളുടെ മൂല്യത്തിൽ മുമ്പത്തെ ഒരു ഉയർന്ന നിലയിൽ നിന്ന് പിന്നീടുള്ള ഒരു താഴ്ന്ന നിലയിലേക്കുണ്ടായ ഏറ്റവും വലിയ ഇടിവ്, നിങ്ങളുടെ വാങ്ങലുകളുടെയും വിൽപ്പനകളുടെയും സ്വാധീനമില്ലാതെ (സമയ-ഭാരിതം). നിങ്ങളുടെ പോർട്ട്ഫോളിയോ ഇതിനകം എത്ര ആഴത്തിലുള്ള ഇടിവിലൂടെ കടന്നുപോയിട്ടുണ്ടെന്ന് ഇത് കാണിക്കുന്നു.';

  @override
  String watchSince(String date) {
    return 'പ്രിയപ്പെട്ടവയിലേക്ക് ചേർത്തതുമുതൽ ($date)';
  }

  @override
  String get portfolioSampleTry =>
      'സാമ്പിൾ പോർട്ട്ഫോളിയോ ഉപയോഗിച്ച് പരീക്ഷിക്കുക';

  @override
  String get portfolioSampleBanner =>
      'ഇതൊരു സാമ്പിൾ പോർട്ട്ഫോളിയോ ആണ്. ഇതിനൊപ്പം നിങ്ങളുടെ സ്വന്തം വാങ്ങലുകൾ ചേർക്കുക, അല്ലെങ്കിൽ ഇത് നീക്കം ചെയ്യുക.';

  @override
  String get portfolioSampleRemove => 'സാമ്പിൾ നീക്കം ചെയ്യുക';

  @override
  String get portfolioStopsAll => 'എല്ലാ പൊസിഷനുകൾക്കും ട്രെയിലിംഗ് സ്റ്റോപ്പ്';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ട്രെയിലിംഗ് സ്റ്റോപ്പുകൾ സജ്ജമാക്കി',
      one: '1 ട്രെയിലിംഗ് സ്റ്റോപ്പ് സജ്ജമാക്കി',
      zero: 'എല്ലാ പൊസിഷനുകൾക്കും ഇതിനകം ട്രെയിലിംഗ് സ്റ്റോപ്പ് ഉണ്ട്',
    );
    return '$_temp0';
  }

  @override
  String portfolioSinceSale(String percent) {
    return 'വിറ്റതുമുതൽ $percent';
  }

  @override
  String get lotPreviewRealized => 'ഈ വിൽപ്പനയിൽ ലഭിച്ചത് (FIFO):';

  @override
  String lotPreviewAverage(String after, String before) {
    return 'പുതിയ ശരാശരി ചെലവ്: $after (ഇപ്പോൾ $before)';
  }

  @override
  String get portfolioYtdReturn => 'ഈ വർഷത്തെ റിട്ടേൺ';

  @override
  String get glossTwrYtd =>
      'വർഷാരംഭം മുതലുള്ള (അല്ലെങ്കിൽ നിങ്ങളുടെ ആദ്യ വാങ്ങൽ ഈ വർഷമാണെങ്കിൽ അന്നുമുതലുള്ള) സമയ-ഭാരിത റിട്ടേൺ: ഓരോ ദിവസവും അന്ന് നിങ്ങളുടെ കൈവശമുണ്ടായിരുന്ന ഓഹരികളുടെ മാറ്റം കണക്കാക്കുന്നു, ദിവസങ്ങൾ ഒന്നിനു പുറകെ ഒന്നായി കൂട്ടിച്ചേർക്കുന്നു – നിങ്ങൾ നിക്ഷേപിക്കുന്നതോ പിൻവലിക്കുന്നതോ ആയ പണം റിട്ടേൺ അല്ല, അതിനാൽ ഇതിനെ ഒരു സൂചികയുമായി താരതമ്യം ചെയ്യാം. താഴെ: അതേ കാലയളവിൽ തിരഞ്ഞെടുത്ത സൂചിക.';

  @override
  String alertDistance(String price, String percent) {
    return 'ഇപ്പോൾ $price · ഇനി $percent';
  }

  @override
  String get watchSortSince => 'ചേർത്തതുമുതലുള്ള മാറ്റം പ്രകാരം';

  @override
  String get portfolioTodayMovers => 'ഇന്ന് ഏറ്റവും കൂടുതൽ ചാഞ്ചാടിയവ:';

  @override
  String get lotNoteAdd => 'കുറിപ്പ് ചേർക്കുക';

  @override
  String get lotNoteBuyHint =>
      'എന്തിനാണ് വാങ്ങുന്നത്? തീയതിയോടൊപ്പം ഇത് ഓഹരിയുടെ കുറിപ്പുകളിൽ ചേർക്കും.';

  @override
  String get lotNoteSellHint =>
      'എന്തിനാണ് വിൽക്കുന്നത്? തീയതിയോടൊപ്പം ഇത് ഓഹരിയുടെ കുറിപ്പുകളിൽ ചേർക്കും.';

  @override
  String get lotNoteBought => 'വാങ്ങി';

  @override
  String get positionHeld => 'കൈവശം വെച്ച കാലയളവ്';

  @override
  String durationMonths(int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months മാസം',
      one: '$months മാസം',
    );
    return '$_temp0';
  }

  @override
  String durationDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days ദിവസം',
      one: '$days ദിവസം',
    );
    return '$_temp0';
  }

  @override
  String positionHeldSince(String date) {
    return '$date മുതൽ';
  }

  @override
  String lotPreviewWeight(String after, String before) {
    return 'പിന്നീട് പോർട്ട്ഫോളിയോയിലെ പങ്ക്: $after (ഇപ്പോൾ $before)';
  }

  @override
  String lotFromCash(String amount) {
    return 'പണത്തിൽ നിന്ന് അടയ്ക്കുക (ഇപ്പോൾ $amount)';
  }

  @override
  String lotToCash(String amount) {
    return 'പണത്തിലേക്ക് ചേർക്കുക (ഇപ്പോൾ $amount)';
  }

  @override
  String get onboardTitle4 => 'നിങ്ങളുടെ പോർട്ട്ഫോളിയോ ട്രാക്ക് ചെയ്യൂ';

  @override
  String get onboardBody4 =>
      'നിങ്ങളുടെ ബ്രോക്കറുടെ എക്സ്പോർട്ട് ഇംപോർട്ട് ചെയ്യൂ (Revolut, Trading 212, IBKR, DEGIRO, Schwab…) അല്ലെങ്കിൽ ഇടപാടുകൾ നേരിട്ട് ചേർക്കൂ: ഒരു സൂചികയുമായി താരതമ്യം ചെയ്ത നിങ്ങളുടെ റിട്ടേൺ, ഡിവിഡന്റുകൾ, നികുതി റിട്ടേണിനുള്ള വാർഷിക സംഗ്രഹം എന്നിവ കാണൂ.';

  @override
  String get lotEdit => 'എഡിറ്റ് ചെയ്യുക';

  @override
  String lotEditTitle(String symbol) {
    return 'ഇടപാട് എഡിറ്റ് ചെയ്യുക · $symbol';
  }

  @override
  String get lotSave => 'സേവ് ചെയ്യുക';

  @override
  String dividendEditTitle(String symbol) {
    return 'ഡിവിഡന്റ് എഡിറ്റ് ചെയ്യുക · $symbol';
  }

  @override
  String get activityTitle => 'എല്ലാ ഇടപാടുകളും';

  @override
  String get activitySearchHint => 'ടിക്കർ പ്രകാരം ഫിൽട്ടർ ചെയ്യുക';

  @override
  String get activityNoMatch =>
      'ഫിൽട്ടറുമായി പൊരുത്തപ്പെടുന്ന ഇടപാടുകളൊന്നുമില്ല.';

  @override
  String portfolioImportDuplicates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ഇതിനകം രേഖപ്പെടുത്തിയിട്ടുണ്ട്, ചേർത്തില്ല',
      one: '1 ഇതിനകം രേഖപ്പെടുത്തിയിട്ടുണ്ട്, ചേർത്തില്ല',
    );
    return '$_temp0';
  }

  @override
  String get tickerChange => 'ടിക്കർ മാറ്റം';

  @override
  String tickerChangeTitle(String symbol) {
    return 'ടിക്കർ മാറ്റം · $symbol';
  }

  @override
  String get tickerChangeNew => 'പുതിയ ടിക്കർ';

  @override
  String get tickerChangeHint =>
      'ഒരു കമ്പനി അതിന്റെ ടിക്കർ മാറ്റുമ്പോൾ (ഉദാ. FB → META): എല്ലാ ഇടപാടുകളും ഡിവിഡന്റുകളും സ്റ്റോക്ക് സ്പ്ലിറ്റുകളും കുറിപ്പും അലേർട്ടുകളും പുതിയ ടിക്കറിലേക്ക് മാറ്റപ്പെടും.';

  @override
  String tickerChanged(String symbol) {
    return '$symbol എന്നതിലേക്ക് മാറ്റി';
  }

  @override
  String get referralErrSignIn =>
      'സുഹൃത്തിന്റെ കോഡ് റിഡീം ചെയ്യാൻ നിങ്ങളുടെ ഇമെയിൽ ഉപയോഗിച്ച് സൈൻ ഇൻ ചെയ്യുക.';

  @override
  String get referralErrFull =>
      'ഈ കോഡ് ഇതിനകം പരമാവധി തവണ റിഡീം ചെയ്തുകഴിഞ്ഞു.';

  @override
  String portfolioGoalReachedBody(String value) {
    return 'നിങ്ങളുടെ പോർട്ട്ഫോളിയോയുടെ മൂല്യം ഇപ്പോൾ $value ആണ്.';
  }

  @override
  String get errAiTruncated =>
      'വിശകലനം പൂർത്തിയാകുന്നതിന് മുമ്പ് മുറിഞ്ഞുപോയി. വീണ്ടും ശ്രമിക്കുക – ഇത് നിങ്ങളുടെ ക്വാട്ടയിൽ നിന്ന് കുറച്ചിട്ടില്ല.';

  @override
  String get errImageUnsupported =>
      'ഈ ചിത്രം വായിക്കാനാകുന്നില്ല. ഇത് JPEG അല്ലെങ്കിൽ PNG ആയി സേവ് ചെയ്ത് വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get errRateLimited =>
      'കുറഞ്ഞ സമയത്തിനുള്ളിൽ വളരെയധികം അഭ്യർത്ഥനകൾ. ഒരു മിനിറ്റ് കാത്തിരുന്ന് വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get watchListNameTaken => 'ഈ പേരിൽ ഒരു ലിസ്റ്റ് ഇതിനകം നിലവിലുണ്ട്.';

  @override
  String watchListLimit(int max) {
    return 'നിങ്ങൾക്ക് പരമാവധി $max ലിസ്റ്റുകൾ വരെ ഉണ്ടാകാം.';
  }

  @override
  String portfolioBuyBelowSold(String quantity) {
    return 'കുറഞ്ഞത് $quantity – അത്രയും ഇതിനകം വിറ്റുകഴിഞ്ഞു';
  }

  @override
  String get restoreNothing =>
      'പുനഃസ്ഥാപിക്കാൻ മുമ്പുള്ള വാങ്ങലുകളൊന്നും കണ്ടെത്തിയില്ല.';

  @override
  String get manageSubscriptionElsewhere =>
      'ഇവിടെ മാനേജ് ചെയ്യാൻ സബ്സ്ക്രിപ്ഷനൊന്നുമില്ല. App Store-ലോ Google Play-യിലോ വാങ്ങിയ സബ്സ്ക്രിപ്ഷൻ സ്റ്റോർ ക്രമീകരണങ്ങളിലാണ് മാനേജ് ചെയ്യുന്നത്.';

  @override
  String get backupFailed =>
      'ബാക്കപ്പ് സേവ് ചെയ്യാനായില്ല. വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get syncTooLarge =>
      'നിങ്ങളുടെ ഡാറ്റ അക്കൗണ്ടുമായി സമന്വയിപ്പിക്കാൻ കഴിയാത്തത്ര വലുതാണ്. ഇനി ആവശ്യമില്ലാത്ത ഇടപാടുകളോ കുറിപ്പുകളോ ഇല്ലാതാക്കുക, തുടർന്ന് ഇത് വീണ്ടും ശ്രമിക്കും.';

  @override
  String get noteFull =>
      'ഈ ഓഹരിയുടെ കുറിപ്പ് നിറഞ്ഞു, അതിനാൽ ഈ എൻട്രി ചേർത്തില്ല. കുറിപ്പ് ചുരുക്കി വീണ്ടും ശ്രമിക്കുക.';

  @override
  String portfolioNoRateFor(String symbols) {
    return '$symbols-ന് വിനിമയ നിരക്ക് ലഭ്യമല്ല.';
  }

  @override
  String dividendsNotConverted(int count, String currencies) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          '$currencies-ലുള്ള $count ഡിവിഡന്റുകൾക്ക് വിനിമയ നിരക്ക് ഇല്ല, അതിനാൽ ആകെ തുകയിൽ ഉൾപ്പെടുത്തിയിട്ടില്ല.',
      one:
          '$currencies-ലുള്ള 1 ഡിവിഡന്റിന് വിനിമയ നിരക്ക് ഇല്ല, അതിനാൽ ആകെ തുകയിൽ ഉൾപ്പെടുത്തിയിട്ടില്ല.',
    );
    return '$_temp0';
  }

  @override
  String get signOutTitle => 'സൈൻ ഔട്ട് ചെയ്യണോ?';

  @override
  String get signOutBody =>
      'നിങ്ങളുടെ പോർട്ട്ഫോളിയോ, ലിസ്റ്റുകൾ, വില അലേർട്ടുകൾ, കുറിപ്പുകൾ എന്നിവ നിങ്ങളുടെ അക്കൗണ്ടിൽ നിലനിൽക്കും, ഈ ഉപകരണത്തിൽ നിന്ന് നീക്കം ചെയ്യപ്പെടും. അവ തിരികെ ലഭിക്കാൻ വീണ്ടും സൈൻ ഇൻ ചെയ്യുക.';

  @override
  String get signOutUnsaved =>
      'ചില മാറ്റങ്ങൾ നിങ്ങളുടെ അക്കൗണ്ടിൽ സംരക്ഷിക്കാനായില്ല (കണക്ഷനില്ലേ?). ഇപ്പോൾ സൈൻ ഔട്ട് ചെയ്താൽ അവ നഷ്ടപ്പെടും.';

  @override
  String get signOutAnyway => 'എന്തായാലും സൈൻ ഔട്ട് ചെയ്യുക';

  @override
  String get fileTooLarge => 'ഈ ഫയൽ ഇവിടെ തുറക്കാൻ കഴിയാത്തത്ര വലുതാണ്.';

  @override
  String portfolioAnnualSummaryYear(String year) {
    return '$year വാർഷിക സംഗ്രഹം';
  }

  @override
  String portfolioSoldRow(String quantity, String price) {
    return 'വിറ്റു $quantity × $price';
  }

  @override
  String get subscribedInStore =>
      'App Store അല്ലെങ്കിൽ Google Play വഴി നിങ്ങൾക്ക് ഇതിനകം ഒരു സബ്സ്ക്രിപ്ഷൻ ഉണ്ട്. പ്ലാൻ മാറ്റാൻ ആ സ്റ്റോറിന്റെ സബ്സ്ക്രിപ്ഷൻ ക്രമീകരണങ്ങൾ ഉപയോഗിക്കുക.';

  @override
  String get paymentViaAppStore =>
      'നിങ്ങളുടെ Apple അക്കൗണ്ട് വഴിയാണ് ബില്ലിംഗ്. App Store സബ്സ്ക്രിപ്ഷൻ ക്രമീകരണങ്ങളിൽ എപ്പോൾ വേണമെങ്കിലും റദ്ദാക്കാം.';

  @override
  String get paymentViaGooglePlay =>
      'നിങ്ങളുടെ Google Play അക്കൗണ്ട് വഴിയാണ് ബില്ലിംഗ്. Google Play സബ്സ്ക്രിപ്ഷൻ ക്രമീകരണങ്ങളിൽ എപ്പോൾ വേണമെങ്കിലും റദ്ദാക്കാം.';

  @override
  String get manageSubscriptionAppStore =>
      'ഇവിടെ മാനേജ് ചെയ്യാൻ സബ്സ്ക്രിപ്ഷനൊന്നുമില്ല. App Store-ൽ വാങ്ങിയ സബ്സ്ക്രിപ്ഷൻ നിങ്ങളുടെ App Store ക്രമീകരണങ്ങളിലാണ് മാനേജ് ചെയ്യുന്നത്.';

  @override
  String get manageSubscriptionGooglePlay =>
      'ഇവിടെ മാനേജ് ചെയ്യാൻ സബ്സ്ക്രിപ്ഷനൊന്നുമില്ല. Google Play-യിൽ വാങ്ങിയ സബ്സ്ക്രിപ്ഷൻ നിങ്ങളുടെ Google Play ക്രമീകരണങ്ങളിലാണ് മാനേജ് ചെയ്യുന്നത്.';

  @override
  String get deleteAccountBodyAppStore =>
      'നിങ്ങളുടെ അക്കൗണ്ടും ഞങ്ങളുടെ സെർവറിൽ സൂക്ഷിച്ചിരിക്കുന്ന എല്ലാം (ഇമെയിൽ, ക്വാട്ട, ഉപയോഗം) ശാശ്വതമായി ഇല്ലാതാകും, ഉപയോഗിക്കാത്ത വിശകലനങ്ങൾ നഷ്ടപ്പെടും. App Store സബ്സ്ക്രിപ്ഷൻ നിങ്ങളുടെ App Store ക്രമീകരണങ്ങളിൽ റദ്ദാക്കണം.';

  @override
  String get deleteAccountBodyGooglePlay =>
      'നിങ്ങളുടെ അക്കൗണ്ടും ഞങ്ങളുടെ സെർവറിൽ സൂക്ഷിച്ചിരിക്കുന്ന എല്ലാം (ഇമെയിൽ, ക്വാട്ട, ഉപയോഗം) ശാശ്വതമായി ഇല്ലാതാകും, ഉപയോഗിക്കാത്ത വിശകലനങ്ങൾ നഷ്ടപ്പെടും. Google Play സബ്സ്ക്രിപ്ഷൻ നിങ്ങളുടെ Google Play ക്രമീകരണങ്ങളിൽ റദ്ദാക്കണം.';

  @override
  String get aiConsentTitle => 'AI ഫീച്ചറുകൾ ഉപയോഗിക്കുന്നതിന് മുമ്പ്';

  @override
  String get aiConsentBody =>
      'ഓഹരികൾ വിശകലനം ചെയ്യാനും ഫോട്ടോകളും സ്ക്രീൻഷോട്ടുകളും വായിക്കാനും നിങ്ങളുടെ ചോദ്യങ്ങൾക്ക് ഉത്തരം നൽകാനും, അഭ്യർത്ഥനയ്ക്ക് ആവശ്യമായ ഡാറ്റ — ഫോട്ടോ അല്ലെങ്കിൽ സ്ക്രീൻഷോട്ട്, ഓഹരി, നിങ്ങളുടെ ചോദ്യം, നിങ്ങൾ ഉപയോഗിക്കുന്നുണ്ടെങ്കിൽ നിങ്ങളുടെ കുറിപ്പുകളും പൊസിഷനുകളും — WhatStock, Claude AI മോഡൽ പ്രവർത്തിപ്പിക്കുന്ന Anthropic-ലേക്ക് അയയ്ക്കുന്നു. Anthropic ഇത് അഭ്യർത്ഥനയ്ക്ക് ഉത്തരം നൽകാൻ മാത്രം പ്രോസസ്സ് ചെയ്യുന്നു, അതിന്റെ AI-യെ പരിശീലിപ്പിക്കാൻ ഉപയോഗിക്കുന്നില്ല. വിശദാംശങ്ങൾ സ്വകാര്യതാ നയത്തിലുണ്ട്.';

  @override
  String get aiConsentLater => 'ഇപ്പോൾ വേണ്ട';

  @override
  String get aiConsentAllow => 'അനുവദിക്കുക';

  @override
  String get aiConsentSetting => 'AI ഫീച്ചറുകൾ';

  @override
  String get aiConsentSettingDesc =>
      'നിങ്ങളുടെ അഭ്യർത്ഥനകൾ ഉത്തരം ലഭിക്കാൻ Anthropic (Claude)-ലേക്ക് അയയ്ക്കുന്നു. ഓഫാണെങ്കിൽ, അടുത്ത AI അഭ്യർത്ഥനയ്ക്ക് മുമ്പ് ആപ്പ് ചോദിക്കും, രാവിലത്തെ ഓട്ടോമാറ്റിക് സംഗ്രഹം പ്രവർത്തിക്കില്ല.';

  @override
  String get aiReport => 'റിപ്പോർട്ട് ചെയ്യുക';

  @override
  String get aiReportTitle => 'ഈ AI ഉത്തരം റിപ്പോർട്ട് ചെയ്യുക';

  @override
  String get aiReportInaccurate => 'തെറ്റായതോ തെറ്റിദ്ധരിപ്പിക്കുന്നതോ';

  @override
  String get aiReportHarmful => 'അധിക്ഷേപകരമോ ദോഷകരമോ';

  @override
  String get aiReportOther => 'മറ്റെന്തെങ്കിലും';

  @override
  String get aiReportNoteHint => 'എന്താണ് പ്രശ്നം? (ഓപ്ഷണൽ)';

  @override
  String get aiReportPrivacy =>
      'ഞങ്ങൾക്ക് പരിശോധിക്കാനായി ഈ ഉത്തരത്തിന്റെ ടെക്സ്റ്റും നിങ്ങളുടെ കുറിപ്പും ലഭിക്കും — നിങ്ങളുടെ അക്കൗണ്ട് ഇല്ലാതെ.';

  @override
  String get aiReportSend => 'റിപ്പോർട്ട് അയയ്ക്കുക';

  @override
  String get aiReportThanks => 'നന്ദി — ഞങ്ങൾ ഇത് പരിശോധിക്കും.';

  @override
  String get portfolioGoalSet => 'ലക്ഷ്യം സജ്ജമാക്കുക';

  @override
  String get portfolioGoalTitle => 'പോർട്ട്ഫോളിയോ ലക്ഷ്യം';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · ലക്ഷ്യം: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'ലക്ഷ്യം കൈവരിച്ചു: $amount';
  }

  @override
  String get portfolioGoalRemove => 'ലക്ഷ്യം നീക്കം ചെയ്യുക';

  @override
  String get alertEdit => 'അലേർട്ട് എഡിറ്റ് ചെയ്യുക';

  @override
  String get positionOpenLots => 'ഇപ്പോഴും കൈവശമുള്ളവ (പഴയവ ആദ്യം)';

  @override
  String get lotRemoved => 'ഇടപാട് ഇല്ലാതാക്കി';

  @override
  String get alertDeleted => 'അലേർട്ട് ഇല്ലാതാക്കി';

  @override
  String get alertsClearTriggered => 'ട്രിഗർ ആയ അലേർട്ടുകൾ മായ്ക്കുക';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count അലേർട്ടുകൾ മായ്ച്ചു',
      one: '1 അലേർട്ട് മായ്ച്ചു',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'ഹോം സ്ക്രീൻ';

  @override
  String get allocationCountries => 'രാജ്യങ്ങൾ';

  @override
  String get newsExplainNoteResearch =>
      'AI വിശദീകരണം: ഇത് വെബിൽ വസ്തുതകൾ തിരയുന്നു, ലേഖനം തുറക്കുന്നു, ഉറവിടം എത്രത്തോളം വിശ്വസനീയമാണെന്ന് വിലയിരുത്തുന്നു. ഇത് നിക്ഷേപ ഉപദേശമല്ല. ഇത് നിങ്ങളുടെ ദൈനംദിന ചോദ്യ പരിധിയിൽ നിന്നാണ്, വിശകലനം ഉപയോഗിക്കില്ല.';

  @override
  String get sourceOfficial => 'ഔദ്യോഗികം';

  @override
  String get sourcePressRelease => 'പത്രക്കുറിപ്പ്';

  @override
  String get sourceMajorNews => 'പ്രമുഖ മാധ്യമം';

  @override
  String get sourceOpinion => 'അഭിപ്രായം';

  @override
  String get earningsSummaryButton =>
      'ഏറ്റവും പുതിയ റിപ്പോർട്ടിൽ എന്തായിരുന്നു?';

  @override
  String get earningsSummaryNote =>
      'കമ്പനിയുടെ ഫല പ്രഖ്യാപനത്തിന്റെയും വെബിൽ കണ്ടെത്തുന്ന മാധ്യമ റിപ്പോർട്ടുകളുടെയും AI സംഗ്രഹം. ഇത് നിക്ഷേപ ഉപദേശമല്ല. ഇത് നിങ്ങളുടെ ദൈനംദിന ചോദ്യ പരിധിയിൽ നിന്നാണ്, വിശകലനം ഉപയോഗിക്കില്ല.';

  @override
  String get compareLastSurprise => 'കഴിഞ്ഞ പാദ EPS vs പ്രതീക്ഷിച്ചത്';

  @override
  String get compareNextReport => 'അടുത്ത റിപ്പോർട്ട്';

  @override
  String get resolvingDescription =>
      'നിങ്ങൾ ഉദ്ദേശിക്കുന്ന ഓഹരി ഏതാണെന്ന് കണ്ടെത്തുന്നു…';

  @override
  String get instrumentTitle => 'ഈ ഇൻസ്ട്രുമെന്റിനെക്കുറിച്ച്';

  @override
  String get instrumentHint =>
      'ഈ ചിഹ്നത്തിന് കമ്പനി പ്രൊഫൈൽ ഇല്ല – ഇത് ഒരു ETF, ഫണ്ട് അല്ലെങ്കിൽ ഡിപ്പോസിറ്ററി രസീത് ആയിരിക്കാം. ഇത് എന്താണ്, ഇതിൽ എന്താണുള്ളത്, ഇതിന്റെ ചെലവ് എത്ര എന്ന് AI-യോട് ചോദിക്കൂ.';

  @override
  String get instrumentAsk => 'ഇത് എന്താണ്?';

  @override
  String get instrumentNote =>
      'ഇഷ്യൂവറുടെ ഫണ്ട് പേജിൽ നിന്നും വെബിൽ കണ്ടെത്തുന്ന സാമ്പത്തിക സൈറ്റുകളിൽ നിന്നുമുള്ള AI വിശദീകരണം. ഇത് നിക്ഷേപ ഉപദേശമല്ല. ഇത് നിങ്ങളുടെ ദൈനംദിന ചോദ്യ പരിധിയിൽ നിന്നാണ്, വിശകലനം ഉപയോഗിക്കില്ല.';

  @override
  String suggestAskAi(String query) {
    return 'AI-യോട് ചോദിക്കൂ: “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return '$symbols-ന് നിലവിലെ വില ലഭ്യമല്ല.';
  }

  @override
  String get eventsRecentResults => 'അടുത്തിടെ റിപ്പോർട്ട് ചെയ്ത ഫലങ്ങൾ';

  @override
  String get saveToNotes => 'എന്റെ കുറിപ്പുകളിൽ സേവ് ചെയ്യുക';

  @override
  String get savedToNotes => 'നിങ്ങളുടെ കുറിപ്പുകളിൽ സേവ് ചെയ്തു';

  @override
  String get portfolioDividendsReceived => 'ലഭിച്ച ഡിവിഡന്റുകൾ';

  @override
  String get portfolioDividendsThisYear => 'ഈ വർഷം';

  @override
  String get portfolioDividendsAllTime => 'ഇതുവരെ ആകെ';

  @override
  String get portfolioAddDividend => 'ഡിവിഡന്റ് ചേർക്കുക';

  @override
  String portfolioDividendAmount(String currency) {
    return 'ലഭിച്ച തുക ($currency)';
  }

  @override
  String get portfolioDividendDate => 'പേയ്‌മെന്റ് തീയതി';

  @override
  String get portfolioDividendsEmpty =>
      'ഇതുവരെ ഡിവിഡന്റുകളൊന്നും രേഖപ്പെടുത്തിയിട്ടില്ല. അവ നേരിട്ട് ചേർക്കുക, അല്ലെങ്കിൽ നിങ്ങളുടെ ബ്രോക്കറുടെ എക്സ്പോർട്ട് ഇംപോർട്ട് ചെയ്യുക – അതിലെ ഡിവിഡന്റ് വരികളും എടുക്കും.';

  @override
  String get portfolioSplit => 'സ്റ്റോക്ക് സ്പ്ലിറ്റ്';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'സ്റ്റോക്ക് സ്പ്ലിറ്റ്: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'സ്പ്ലിറ്റിന് മുമ്പുള്ള തീയതിയിലെ വാങ്ങലുകളും വിൽപ്പനകളും ക്രമീകരിക്കും: ഓഹരികളുടെ എണ്ണം ഗുണിക്കുകയും ഒരു ഓഹരിയുടെ വില ഹരിക്കുകയും ചെയ്യുന്നതിനാൽ ചെലവ് മാറില്ല.';

  @override
  String get portfolioSplitRatio => 'അനുപാതം (പുതിയത് : പഴയത്)';

  @override
  String get portfolioSplitRatioError =>
      '10:1 പോലെ ഒരു അനുപാതം നൽകുക, അല്ലെങ്കിൽ റിവേഴ്സ് സ്പ്ലിറ്റിന് 1:10.';

  @override
  String get portfolioSplitDate => 'സ്പ്ലിറ്റിന്റെ തീയതി';

  @override
  String portfolioSplitRow(String ratio) {
    return 'സ്റ്റോക്ക് സ്പ്ലിറ്റ് $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'സ്റ്റോക്ക് സ്പ്ലിറ്റ് ഇല്ലാതാക്കി';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count സ്റ്റോക്ക് സ്പ്ലിറ്റുകൾ ചേർത്തു',
      one: '1 സ്റ്റോക്ക് സ്പ്ലിറ്റ് ചേർത്തു',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ഡിവിഡന്റുകൾ ചേർത്തു',
      one: '1 ഡിവിഡന്റ് ചേർത്തു',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends =>
      'ഡിവിഡന്റുകൾ എക്സ്പോർട്ട് ചെയ്യുക (CSV)';

  @override
  String get portfolioDividendDeleted => 'ഡിവിഡന്റ് ഇല്ലാതാക്കി';

  @override
  String get portfolioDividendsHint =>
      'തുകകൾ നിങ്ങളുടെ അക്കൗണ്ടിൽ എത്തിയതുപോലെ, പേഔട്ട് കറൻസിയിൽ; ആകെത്തുകകൾ ഇന്നത്തെ നിരക്കിൽ മാറ്റുന്നു. നികുതി റിട്ടേണിനായി നിങ്ങളുടെ ബ്രോക്കറുടെ സ്റ്റേറ്റ്‌മെന്റ് ഉപയോഗിക്കുക.';

  @override
  String get awayTitle => 'നിങ്ങൾ ഇല്ലാതിരുന്നപ്പോൾ';

  @override
  String awaySince(String when) {
    return '$when മുതൽ';
  }

  @override
  String get awayQuiet => 'കാര്യമായ മാറ്റമൊന്നുമില്ല.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count അലേർട്ടുകൾ പ്രവർത്തനക്ഷമമായി',
      one: '1 അലേർട്ട് പ്രവർത്തനക്ഷമമായി',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'ഫലങ്ങൾ പ്രഖ്യാപിച്ചു: $symbols';
  }

  @override
  String get moveWhyButton => 'ഇന്ന് എന്തുകൊണ്ട് മാറുന്നു?';

  @override
  String moveWhyTitle(String percent) {
    return 'ഇന്ന് $percent';
  }

  @override
  String get moveWhyNote =>
      'വെബിൽ കണ്ടെത്തിയ ഇന്നത്തെ വാർത്തകളിൽ നിന്നുള്ള AI വിശദീകരണം; യഥാർത്ഥ കാരണം അജ്ഞാതമോ വ്യത്യസ്തമോ ആകാം. നിക്ഷേപ ഉപദേശമല്ല. ഇത് നിങ്ങളുടെ ദിവസേനയുള്ള ചോദ്യ പരിധി ഉപയോഗിക്കുന്നു, വിശകലനമല്ല.';

  @override
  String get sectionTechnical => 'ടെക്നിക്കൽ ചിത്രം';

  @override
  String get labelSma50 => '50 ദിവസ ശരാശരി';

  @override
  String get labelSma200 => '200 ദിവസ ശരാശരി';

  @override
  String get labelRsi => 'RSI (14 ദിവസം)';

  @override
  String get labelVolatility30 => 'ചാഞ്ചാട്ടം (30 ദിവസം)';

  @override
  String techAbove(String percent) {
    return '$percent മുകളിൽ';
  }

  @override
  String techBelow(String percent) {
    return '$percent താഴെ';
  }

  @override
  String get techOverbought => 'ഓവർബോട്ട്';

  @override
  String get techOversold => 'ഓവർസോൾഡ്';

  @override
  String get techNeutral => 'നിഷ്പക്ഷം';

  @override
  String get techGoldenCross =>
      '50 ദിവസ ശരാശരി 200 ദിവസ ശരാശരിയുടെ മുകളിലാണ് – ക്ലാസിക് വായനപ്രകാരം ഉയർച്ചാപ്രവണത.';

  @override
  String get techDeathCross =>
      '50 ദിവസ ശരാശരി 200 ദിവസ ശരാശരിയുടെ താഴെയാണ് – ക്ലാസിക് വായനപ്രകാരം താഴ്ചാപ്രവണത.';

  @override
  String get glossSma50 =>
      'കഴിഞ്ഞ 50 വ്യാപാര ദിവസങ്ങളിലെ ക്ലോസിംഗ് വിലയുടെ ശരാശരി. അതിന് മുകളിലുള്ള വില പലപ്പോഴും ഹ്രസ്വകാല ശക്തിയായും താഴെയുള്ളത് ദൗർബല്യമായും കണക്കാക്കുന്നു.';

  @override
  String get glossSma200 =>
      'കഴിഞ്ഞ 200 വ്യാപാര ദിവസങ്ങളിലെ ക്ലോസിംഗ് വിലയുടെ ശരാശരി – ക്ലാസിക് ദീർഘകാല ട്രെൻഡ് ലൈൻ. അതിന് മുകളിലുള്ള വിലയെ പല നിക്ഷേപകരും ദീർഘകാല ഉയർച്ചാപ്രവണതയായി കാണുന്നു.';

  @override
  String get glossRsi =>
      'റിലേറ്റീവ് സ്ട്രെങ്ത് ഇൻഡക്സ്: സമീപകാല നേട്ടങ്ങളെ സമീപകാല നഷ്ടങ്ങളുമായി 0–100 സ്കെയിലിൽ താരതമ്യം ചെയ്യുന്നു. 70-ന് മുകളിൽ ഓഹരി പലപ്പോഴും ഓവർബോട്ട് (വേഗത്തിൽ ഉയർന്നു) എന്നും 30-ന് താഴെ ഓവർസോൾഡ് എന്നും പറയുന്നു – പക്ഷേ ശക്തമായ ട്രെൻഡ് ഏറെക്കാലം അവിടെ തുടരാം.';

  @override
  String get glossVolatility =>
      'വില ദിവസേന എത്രമാത്രം ചാഞ്ചാടുന്നു എന്നത് ഒരു വർഷത്തിലേക്ക് കണക്കാക്കിയത്: 20% എന്നാൽ സാധാരണ ഒരു വർഷത്തിൽ ഏകദേശം ±20% പരിധിയിൽ നീങ്ങുന്നു. ഉയർന്ന ചാഞ്ചാട്ടം എന്നാൽ ഇരുദിശയിലും വലിയ നീക്കങ്ങൾ.';

  @override
  String get techNote =>
      'ദിവസേനയുള്ള ക്ലോസിംഗ് വിലകളിൽ നിന്ന് കണക്കാക്കിയത്. ടെക്നിക്കൽ സിഗ്നലുകൾ ഭൂതകാലത്തെ വിവരിക്കുന്നു, ഭാവിയെ അല്ല.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$count പൊസിഷനുകളിൽ $above എണ്ണം അവയുടെ 200-ദിവസ ശരാശരിക്ക് മുകളിൽ';
  }

  @override
  String get watchSignalsTitle => 'സിഗ്നലുകൾ';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · ഓവർസോൾഡ്';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · ഓവർബോട്ട്';
  }

  @override
  String get signalCrossedAbove => '200 ദിവസ ശരാശരിക്ക് മുകളിൽ കടന്നു';

  @override
  String get signalCrossedBelow => '200 ദിവസ ശരാശരിക്ക് താഴെ കടന്നു';

  @override
  String get signalAlertsTitle => 'ടെക്നിക്കൽ സിഗ്നൽ അറിയിപ്പുകൾ';

  @override
  String get signalAlertsSubtitle =>
      'ദിവസത്തിൽ ഒരിക്കൽ, നിങ്ങൾ പിന്തുടരുന്ന ഒരു ഓഹരി ഓവർസോൾഡ് അല്ലെങ്കിൽ ഓവർബോട്ട് (RSI) ആകുമ്പോഴോ, അതിന്റെ വില 200 ദിവസ ശരാശരി മുറിച്ചുകടക്കുമ്പോഴോ.';

  @override
  String get signalAlertsNotification => 'ടെക്നിക്കൽ സിഗ്നലുകൾ';

  @override
  String get glossaryPageTitle => 'പദാവലി';

  @override
  String get glossaryPageSubtitle =>
      'P/E മുതൽ RSI വരെ, ആപ്പ് കാണിക്കുന്ന ഓരോ കണക്കിന്റെയും ലളിതമായ വിശദീകരണങ്ങൾ';

  @override
  String get glossarySearchHint => 'പദാവലിയിൽ തിരയുക';

  @override
  String get portfolioCash => 'പണം';

  @override
  String get portfolioCashTitle => 'പണ ബാലൻസ്';

  @override
  String get portfolioCashHint =>
      'നിങ്ങളുടെ ബ്രോക്കറുടെ അടുത്തുള്ള നിക്ഷേപിക്കാത്ത പണം, കറൻസി തിരിച്ച്. ഇത് ആകെ മൂല്യത്തിലും വിന്യാസത്തിലും കണക്കാക്കും; വരുമാനത്തിൽ ഉൾപ്പെടില്ല.';

  @override
  String portfolioCashAmount(String currency) {
    return 'തുക ($currency)';
  }

  @override
  String get portfolioCashEdit => 'പണ ബാലൻസ് സജ്ജമാക്കുക';

  @override
  String get portfolioDividendsByMonth => 'മാസം തിരിച്ച്';

  @override
  String get dividendsLegendReceived => 'ലഭിച്ചത്';

  @override
  String get dividendsLegendExpected => 'പ്രതീക്ഷിക്കുന്നത്';

  @override
  String get portfolioDividendsExpected => 'അടുത്തത് പ്രതീക്ഷിക്കുന്നത്';

  @override
  String get portfolioDividendsExpectedNote =>
      'നിങ്ങൾ രേഖപ്പെടുത്തിയ പേയ്‌മെന്റുകളുടെ തീയതികളും തുകകളും അടിസ്ഥാനമാക്കിയ കണക്കുകൂട്ടൽ; കമ്പനികൾ അവ മാറ്റുകയോ ഒഴിവാക്കുകയോ ചെയ്യാം.';

  @override
  String portfolioDividendAround(String date) {
    return 'ഏകദേശം $date';
  }
}
