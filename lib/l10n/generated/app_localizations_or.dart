// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Oriya (`or`).
class AppLocalizationsOr extends AppLocalizations {
  AppLocalizationsOr([String locale = 'or']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'ଗୋଟିଏ ସେୟାରର ଫଟୋ ଉଠାନ୍ତୁ ଏବଂ ଏହା ବିଷୟରେ ସବୁକିଛି ଜାଣନ୍ତୁ।';

  @override
  String get homeHint =>
      'ସେୟାର ସାର୍ଟିଫିକେଟ, ବ୍ରୋକରେଜ ଆପର ସ୍କ୍ରିନ, ଖବରକାଗଜ କିମ୍ବା କମ୍ପାନୀର ଲୋଗୋ – ଯାହା ବି ଗୋଟିଏ ସେୟାରକୁ ଚିହ୍ନାଏ।';

  @override
  String get takePhoto => 'ଫଟୋ ଉଠାନ୍ତୁ';

  @override
  String get chooseFromGallery => 'ଗ୍ୟାଲେରୀରୁ ବାଛନ୍ତୁ';

  @override
  String get chooseImage => 'ଛବି ବାଛନ୍ତୁ';

  @override
  String get enterTickerManually => 'ଟିକର ନିଜେ ଲେଖନ୍ତୁ';

  @override
  String get tickerInputLabel => 'ଟିକର ସିମ୍ବଲ';

  @override
  String get tickerInputHint => 'ଯେପରି AAPL';

  @override
  String get lookUp => 'ଖୋଜନ୍ତୁ';

  @override
  String demoModeBanner(String symbols) {
    return 'ଡେମୋ ମୋଡ – କୌଣସି ମାର୍କେଟ ଡାଟା କି କନଫିଗର କରାଯାଇନାହିଁ। ଏଗୁଡ଼ିକ ପାଇଁ ନମୁନା ଡାଟା ଉପଲବ୍ଧ: $symbols।';
  }

  @override
  String get recognizing => 'ଛବି ବିଶ୍ଳେଷଣ କରାଯାଉଛି…';

  @override
  String get loadingData => 'ଡାଟା ଲୋଡ ହେଉଛି…';

  @override
  String get noCandidatesTitle => 'କୌଣସି ସେୟାର ଚିହ୍ନଟ ହେଲା ନାହିଁ';

  @override
  String get noCandidatesBody =>
      'ଏହି ଛବିରେ ଆମେ କୌଣସି ସେୟାର ଚିହ୍ନଟ କରିପାରିଲୁ ନାହିଁ। ଅଧିକ ସ୍ପଷ୍ଟ ଫଟୋ ଉଠାନ୍ତୁ, କିମ୍ବା ଟିକର ନିଜେ ଲେଖନ୍ତୁ।';

  @override
  String get whatWeSaw => 'ଆମେ କ\'ଣ ଦେଖିଲୁ';

  @override
  String get chooseCandidateTitle => 'ଆପଣ କେଉଁ ସେୟାର କଥା କହୁଥିଲେ?';

  @override
  String confidencePercent(int percent) {
    return '$percent% ନିଶ୍ଚିତତା';
  }

  @override
  String get settings => 'ସେଟିଂସ';

  @override
  String get language => 'ଭାଷା';

  @override
  String get systemLanguage => 'ସିଷ୍ଟମ ଡିଫଲ୍ଟ';

  @override
  String get about => 'ଆପ ବିଷୟରେ';

  @override
  String get disclaimer =>
      'ଏହି ଆପ କେବଳ ସୂଚନା ପ୍ରଦାନ କରେ ଏବଂ ଏହା ନିବେଶ ପରାମର୍ଶ ନୁହେଁ। ଡାଟା ବିଳମ୍ବିତ କିମ୍ବା ଭୁଲ ହୋଇପାରେ।';

  @override
  String dataSource(String source) {
    return 'ଡାଟା ଉତ୍ସ: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'ଚିହ୍ନଟ: $source';
  }

  @override
  String get retry => 'ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ';

  @override
  String get cancel => 'ବାତିଲ କରନ୍ତୁ';

  @override
  String get ok => 'ଠିକ ଅଛି';

  @override
  String get close => 'ବନ୍ଦ କରନ୍ତୁ';

  @override
  String get errorGeneric => 'କିଛି ଭୁଲ ହୋଇଗଲା।';

  @override
  String get errorSectionUnavailable => 'ଏହି ବିଭାଗ ଲୋଡ ହୋଇପାରିଲା ନାହିଁ।';

  @override
  String get notAvailable => 'ଉପଲବ୍ଧ ନାହିଁ';

  @override
  String get sectionIdentity => 'ପରିଚୟ';

  @override
  String get sectionPrice => 'ଦର';

  @override
  String get sectionValuation => 'ମୂଲ୍ୟାଙ୍କନ';

  @override
  String get sectionFinancials => 'ଆର୍ଥିକ ତଥ୍ୟ';

  @override
  String get sectionDividend => 'ଲାଭାଂଶ';

  @override
  String get sectionProfile => 'କମ୍ପାନୀ ପ୍ରୋଫାଇଲ';

  @override
  String get sectionAnalysts => 'ବିଶ୍ଳେଷକ ରେଟିଂ';

  @override
  String get sectionNews => 'ଖବର';

  @override
  String get sectionRecognition => 'ଚିହ୍ନଟର ବିବରଣୀ';

  @override
  String get labelSymbol => 'ଟିକର';

  @override
  String get labelExchange => 'ଏକ୍ସଚେଞ୍ଜ';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'ମୁଦ୍ରା';

  @override
  String get labelCountry => 'ଦେଶ';

  @override
  String get labelIndustry => 'ଶିଳ୍ପ';

  @override
  String get labelSector => 'ସେକ୍ଟର';

  @override
  String get labelWebsite => 'ୱେବସାଇଟ';

  @override
  String get labelIpoDate => 'IPO ତାରିଖ';

  @override
  String get labelMarketCap => 'ମାର୍କେଟ କ୍ୟାପ';

  @override
  String get labelSharesOutstanding => 'ମୋଟ ପ୍ରଚଳିତ ସେୟାର';

  @override
  String get labelEmployees => 'କର୍ମଚାରୀ';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'ମୁଖ୍ୟାଳୟ';

  @override
  String get labelDescription => 'ବିବରଣୀ';

  @override
  String get labelLastPrice => 'ଶେଷ ଦର';

  @override
  String get labelChange => 'ପରିବର୍ତ୍ତନ';

  @override
  String get labelOpen => 'ଓପନ';

  @override
  String get labelDayHigh => 'ଦିନର ସର୍ବାଧିକ';

  @override
  String get labelDayLow => 'ଦିନର ସର୍ବନିମ୍ନ';

  @override
  String get labelPreviousClose => 'ପୂର୍ବ କ୍ଲୋଜ';

  @override
  String get labelWeek52High => '52-ସପ୍ତାହ ସର୍ବାଧିକ';

  @override
  String get labelWeek52Low => '52-ସପ୍ତାହ ସର୍ବନିମ୍ନ';

  @override
  String get labelAverageVolume10d => 'ହାରାହାରି ଭଲ୍ୟୁମ (10 ଦିନ)';

  @override
  String updatedAt(String time) {
    return 'ଅପଡେଟ $time';
  }

  @override
  String get labelPeTrailing => 'P/E (ଟ୍ରେଲିଂ)';

  @override
  String get labelPeForward => 'P/E (ଫରୱାର୍ଡ)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / ଫ୍ରି କ୍ୟାଶ ଫ୍ଲୋ';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'ବିଟା';

  @override
  String get labelRevenueTtm => 'ରାଜସ୍ୱ (TTM)';

  @override
  String get labelNetIncomeTtm => 'ନିଟ ଆୟ (TTM)';

  @override
  String get labelGrossMargin => 'ଗ୍ରସ ମାର୍ଜିନ';

  @override
  String get labelOperatingMargin => 'ଅପରେଟିଂ ମାର୍ଜିନ';

  @override
  String get labelNetMargin => 'ନିଟ ମାର୍ଜିନ';

  @override
  String get labelRoe => 'ଇକ୍ୱିଟି ଉପରେ ରିଟର୍ନ';

  @override
  String get labelRoa => 'ସମ୍ପତ୍ତି ଉପରେ ରିଟର୍ନ';

  @override
  String get labelDebtToEquity => 'ଋଣ / ଇକ୍ୱିଟି';

  @override
  String get labelCurrentRatio => 'କରେଣ୍ଟ ରେସିଓ';

  @override
  String get labelRevenueGrowth => 'ରାଜସ୍ୱ ବୃଦ୍ଧି (YoY)';

  @override
  String get labelEpsGrowth => 'EPS ବୃଦ୍ଧି (YoY)';

  @override
  String get labelDividendYield => 'ଲାଭାଂଶ ୟିଲ୍ଡ';

  @override
  String get labelDividendPerShare => 'ପ୍ରତି ସେୟାର ଲାଭାଂଶ';

  @override
  String get labelPayoutRatio => 'ପେଆଉଟ ଅନୁପାତ';

  @override
  String get labelYieldOnCost => 'କ୍ରୟ ମୂଲ୍ୟ ଉପରେ ୟିଲ୍ଡ';

  @override
  String get labelDividendGrowth5y => 'ଲାଭାଂଶ ବୃଦ୍ଧି (5 ବର୍ଷ)';

  @override
  String get dividendNone => 'ଗତ 12 ମାସରେ କୌଣସି ଲାଭାଂଶ ଦିଆଯାଇନାହିଁ।';

  @override
  String get dividendOnYourShares => 'ଆପଣଙ୍କ ସେୟାର ଉପରେ, ବାର୍ଷିକ';

  @override
  String get labelConsensus => 'ସର୍ବସମ୍ମତି';

  @override
  String get ratingStrongBuy => 'ଦୃଢ଼ କ୍ରୟ';

  @override
  String get ratingBuy => 'କ୍ରୟ';

  @override
  String get ratingHold => 'ହୋଲ୍ଡ';

  @override
  String get ratingSell => 'ବିକ୍ରୟ';

  @override
  String get ratingStrongSell => 'ଦୃଢ଼ ବିକ୍ରୟ';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ଜଣ ବିଶ୍ଳେଷକ',
      one: '1 ଜଣ ବିଶ୍ଳେଷକ',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'ଅବଧି: $period';
  }

  @override
  String get noNews => 'ସାମ୍ପ୍ରତିକ କୌଣସି ଖବର ନାହିଁ।';

  @override
  String get openArticle => 'ଲେଖା ଖୋଲନ୍ତୁ';

  @override
  String get openLinkFailed => 'ଲିଙ୍କ ଖୋଲିହେଲା ନାହିଁ।';

  @override
  String get recognitionSummary => 'ସାରାଂଶ';

  @override
  String get recognitionEvidence => 'ଆମେ କାହିଁକି ଏପରି ଭାବୁଛୁ';

  @override
  String get recognitionRawText => 'ଛବିରୁ ପଢ଼ାଯାଇଥିବା ଟେକ୍ସଟ';

  @override
  String get errMissingAnthropicKey =>
      'ଛବି ଚିହ୍ନଟ କନଫିଗର କରାଯାଇନାହିଁ (ANTHROPIC_API_KEY ନାହିଁ)। ଟିକର ନିଜେ ଲେଖନ୍ତୁ।';

  @override
  String get errRecognitionUnreachable =>
      'ଚିହ୍ନଟ ସେବା ସହ ସଂଯୋଗ ହୋଇପାରିଲା ନାହିଁ। ଆପଣଙ୍କ ଇଣ୍ଟରନେଟ ସଂଯୋଗ ଯାଞ୍ଚ କରନ୍ତୁ।';

  @override
  String errRecognitionHttp(String status) {
    return 'ଚିହ୍ନଟ ସେବା ଏକ ତ୍ରୁଟି ଫେରାଇଲା (HTTP $status)।';
  }

  @override
  String get errRecognitionRefused =>
      'ଚିହ୍ନଟ ସେବା ଏହି ଛବିକୁ ପ୍ରକ୍ରିୟାକରଣ କରିପାରିଲା ନାହିଁ।';

  @override
  String get errRecognitionTruncated =>
      'ଚିହ୍ନଟର ଉତ୍ତର ଅଧାରେ କଟିଗଲା। ଦୟାକରି ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get errRecognitionBadResponse => 'ଚିହ୍ନଟ ସେବାରୁ ଅପ୍ରତ୍ୟାଶିତ ଉତ୍ତର।';

  @override
  String get errRecognitionEmpty => 'ଚିହ୍ନଟ ସେବା ଏକ ଖାଲି ଉତ୍ତର ଫେରାଇଲା।';

  @override
  String get errMissingFinnhubKey =>
      'ମାର୍କେଟ ଡାଟା କନଫିଗର କରାଯାଇନାହିଁ (FINNHUB_API_KEY ନାହିଁ)।';

  @override
  String get errMarketUnreachable =>
      'ମାର୍କେଟ ଡାଟା ସେବା ସହ ସଂଯୋଗ ହୋଇପାରିଲା ନାହିଁ। ଆପଣଙ୍କ ଇଣ୍ଟରନେଟ ସଂଯୋଗ ଯାଞ୍ଚ କରନ୍ତୁ।';

  @override
  String get errMarketRateLimited =>
      'ମାର୍କେଟ ଡାଟା ସେବାକୁ ବହୁତ ଅଧିକ ଅନୁରୋଧ ପଠାଯାଇଛି। ଦୟାକରି ଏକ ମିନିଟ ଅପେକ୍ଷା କରନ୍ତୁ।';

  @override
  String errMarketHttp(String status) {
    return 'ମାର୍କେଟ ଡାଟା ସେବା ଏକ ତ୍ରୁଟି ଫେରାଇଲା (HTTP $status)।';
  }

  @override
  String get errMarketBadResponse => 'ମାର୍କେଟ ଡାଟା ସେବାରୁ ଅପ୍ରତ୍ୟାଶିତ ଉତ୍ତର।';

  @override
  String errNoQuote(String symbol) {
    return '$symbol ପାଇଁ କୌଣସି ଦର ଡାଟା ମିଳିଲା ନାହିଁ।';
  }

  @override
  String errNoProfile(String symbol) {
    return '$symbol ପାଇଁ କୌଣସି କମ୍ପାନୀ ପ୍ରୋଫାଇଲ ମିଳିଲା ନାହିଁ।';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'ଡେମୋ ମୋଡ କେବଳ $symbols ସମର୍ଥନ କରେ। ଲାଇଭ ଡାଟା ପାଇଁ ଏକ FINNHUB_API_KEY ଯୋଡ଼ନ୍ତୁ।';
  }

  @override
  String errUnknown(String detail) {
    return 'କିଛି ଭୁଲ ହୋଇଗଲା: $detail';
  }

  @override
  String get newSearch => 'ନୂଆ ସନ୍ଧାନ';

  @override
  String get recentSearches => 'ସାମ୍ପ୍ରତିକ';

  @override
  String get noRecentSearches => 'ଏପର୍ଯ୍ୟନ୍ତ କୌଣସି ସାମ୍ପ୍ରତିକ ସନ୍ଧାନ ନାହିଁ।';

  @override
  String get clearRecent => 'ସାମ୍ପ୍ରତିକ ସଫା କରନ୍ତୁ';

  @override
  String get greeting => 'ଆଜି କେଉଁ ସେୟାର ଦେଖିବା?';

  @override
  String get searchHint => 'ଟିକର କିମ୍ବା କମ୍ପାନୀର ନାମ';

  @override
  String get attachImage => 'ଛବି ସଂଲଗ୍ନ କରନ୍ତୁ';

  @override
  String get searchResultsTitle => 'ସନ୍ଧାନ ଫଳାଫଳ';

  @override
  String errNoResults(String query) {
    return '“$query” ପାଇଁ କୌଣସି ସେୟାର ମିଳିଲା ନାହିଁ।';
  }

  @override
  String get quickBarHint => 'ଟିକର କିମ୍ବା କମ୍ପାନୀର ନାମ ଟାଇପ କରନ୍ତୁ…';

  @override
  String get openFullWindow => 'ୱିଣ୍ଡୋ ଖୋଲନ୍ତୁ';

  @override
  String hotkeyHint(String shortcut) {
    return 'ଯେକୌଣସି ସ୍ଥାନରୁ WhatStock ଖୋଲିବାକୁ $shortcut ଦବାନ୍ତୁ।';
  }

  @override
  String get trayOpen => 'WhatStock ଖୋଲନ୍ତୁ';

  @override
  String get trayQuickSearch => 'ଦ୍ରୁତ ସନ୍ଧାନ';

  @override
  String get trayQuit => 'ବାହାରନ୍ତୁ';

  @override
  String get appearance => 'ରୂପ';

  @override
  String get themeSystem => 'ସିଷ୍ଟମ';

  @override
  String get themeDark => 'ଗାଢ଼';

  @override
  String get themeLight => 'ହାଲୁକା';

  @override
  String get back => 'ପଛକୁ';

  @override
  String get aiSectionTitle => 'AI ବିଶ୍ଳେଷଣ';

  @override
  String get aiIntro =>
      'AI ଦ୍ୱାରା ଲିଖିତ ଏକ ବିସ୍ତୃତ ସମୀକ୍ଷା: ସାମ୍ପ୍ରତିକ ଖବରର ସାରାଂଶ, ବ୍ୟବସାୟ, ଶକ୍ତି, ଝୁଙ୍କି ଓ ଲୁକ୍କାୟିତ କାରକ, ମୂଲ୍ୟାଙ୍କନ, ମନସ୍ତାତ୍ତ୍ୱିକ, ସାମାଜିକ, ଟେକ୍ନିକାଲ ଓ ମାକ୍ରୋ ଦୃଷ୍ଟିକୋଣରୁ ପରିସ୍ଥିତି ସହିତ ଦରର ପୂର୍ବାନୁମାନ, ଏବଂ କେଉଁ କଥା ଉପରେ ନଜର ରଖିବେ।';

  @override
  String get aiGenerate => 'ବିଶ୍ଳେଷଣ ତିଆରି କରନ୍ତୁ';

  @override
  String get aiRegenerate => 'ପୁଣି ତିଆରି କରନ୍ତୁ';

  @override
  String get aiGenerating =>
      'ବିଶ୍ଳେଷଣ ପ୍ରସ୍ତୁତ ହେଉଛି… ଏଥିରେ ଏକ-ଦୁଇ ମିନିଟ ଲାଗିପାରେ।';

  @override
  String get aiSources => 'ଉତ୍ସ';

  @override
  String aiGeneratedAt(String time) {
    return 'ତିଆରି $time';
  }

  @override
  String get aiDisclaimer =>
      'ସାର୍ବଜନୀନ ଡାଟା ଓ ସାମ୍ପ୍ରତିକ ଖବର ଉପରେ ଆଧାରିତ AI-ନିର୍ମିତ ବିଶ୍ଳେଷଣ। ଏଥିରେ ତ୍ରୁଟି ଥାଇପାରେ କିମ୍ବା ଏହା ପୁରୁଣା ହୋଇଥାଇପାରେ, ଏବଂ ଏହା ନିବେଶ ପରାମର୍ଶ ନୁହେଁ।';

  @override
  String get errAiNotConfigured =>
      'AI ବିଶ୍ଳେଷଣ କନଫିଗର କରାଯାଇନାହିଁ (ANTHROPIC_API_KEY ନାହିଁ)।';

  @override
  String get errAiUnreachable =>
      'AI ସେବା ସହ ସଂଯୋଗ ହୋଇପାରିଲା ନାହିଁ। ଆପଣଙ୍କ ଇଣ୍ଟରନେଟ ସଂଯୋଗ ଯାଞ୍ଚ କରନ୍ତୁ।';

  @override
  String errAiHttp(String status) {
    return 'AI ସେବା ଏକ ତ୍ରୁଟି ଫେରାଇଲା (HTTP $status)।';
  }

  @override
  String get errAiRefused => 'AI ସେବା ଏହି ସେୟାରର ବିଶ୍ଳେଷଣ କରିବାକୁ ମନା କଲା।';

  @override
  String get errAiBadResponse => 'AI ସେବାରୁ ଅପ୍ରତ୍ୟାଶିତ ଉତ୍ତର।';

  @override
  String get sectionChart => 'ଦର ଚାର୍ଟ';

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
      'ବର୍ତ୍ତମାନର ଡାଟା ଉତ୍ସରୁ ଦରର ଇତିହାସ ଉପଲବ୍ଧ ନାହିଁ।';

  @override
  String get sectionStatements => 'ଆର୍ଥିକ ବିବରଣୀ (ବାର୍ଷିକ)';

  @override
  String get labelFiscalYear => 'ଆର୍ଥିକ ବର୍ଷ';

  @override
  String get labelRevenue => 'ରାଜସ୍ୱ';

  @override
  String get labelNetIncome => 'ନିଟ ଆୟ';

  @override
  String get labelTotalAssets => 'ମୋଟ ସମ୍ପତ୍ତି';

  @override
  String get labelTotalLiabilities => 'ମୋଟ ଦାୟବଦ୍ଧତା';

  @override
  String get labelEquity => 'ସେୟାରଧାରକଙ୍କ ଇକ୍ୱିଟି';

  @override
  String get labelOperatingCashFlow => 'ଅପରେଟିଂ କ୍ୟାଶ ଫ୍ଲୋ';

  @override
  String get statementsUnavailable =>
      'ଏହି ସେୟାର ପାଇଁ ପ୍ରକାଶିତ ଆର୍ଥିକ ବିବରଣୀ ଉପଲବ୍ଧ ନାହିଁ।';

  @override
  String get launchAtLogin => 'ଲଗଇନ ସମୟରେ ଆରମ୍ଭ କରନ୍ତୁ';

  @override
  String get hotkeyLabel => 'ଗ୍ଲୋବାଲ ସର୍ଟକଟ';

  @override
  String get hotkeyRecordHint =>
      'ଏଠାରେ କ୍ଲିକ କରନ୍ତୁ, ତାପରେ ନୂଆ କି ସମ୍ମିଶ୍ରଣ ଦବାନ୍ତୁ';

  @override
  String get hotkeyReset => 'ଡିଫଲ୍ଟକୁ ରିସେଟ କରନ୍ତୁ';

  @override
  String get pasteImage => 'କ୍ଲିପବୋର୍ଡରୁ ଛବି ପେଷ୍ଟ କରନ୍ତୁ';

  @override
  String get errClipboardNoImage => 'କ୍ଲିପବୋର୍ଡରେ କୌଣସି ଛବି ନାହିଁ।';

  @override
  String get favorites => 'ପସନ୍ଦ';

  @override
  String get addToFavorites => 'ପସନ୍ଦରେ ଯୋଡ଼ନ୍ତୁ';

  @override
  String get removeFromFavorites => 'ପସନ୍ଦରୁ ହଟାନ୍ତୁ';

  @override
  String get noFavorites =>
      'ଏପର୍ଯ୍ୟନ୍ତ କିଛି ପସନ୍ଦ ନାହିଁ। ଯୋଡ଼ିବାକୁ କୌଣସି ସେୟାରର ତାରକାକୁ ଟ୍ୟାପ କରନ୍ତୁ।';

  @override
  String get displayCurrency => 'ପ୍ରଦର୍ଶନ ମୁଦ୍ରା';

  @override
  String get displayCurrencyNone => 'କେବଳ ସେୟାରର ନିଜ ମୁଦ୍ରା';

  @override
  String labelConverted(String currency) {
    return '≈ $currencyରେ';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'ହାର: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'ଅପଡେଟ';

  @override
  String currentVersion(String version) {
    return 'ସଂସ୍କରଣ $version';
  }

  @override
  String get autoUpdate => 'ଅପଡେଟ ସ୍ୱୟଂଚାଳିତ ଭାବେ ଇନଷ୍ଟଲ କରନ୍ତୁ';

  @override
  String get checkForUpdates => 'ଅପଡେଟ ଯାଞ୍ଚ କରନ୍ତୁ';

  @override
  String get updateChecking => 'ଅପଡେଟ ଯାଞ୍ଚ କରାଯାଉଛି…';

  @override
  String get updateUpToDate => 'ଆପଣ ସର୍ବଶେଷ ସଂସ୍କରଣ ବ୍ୟବହାର କରୁଛନ୍ତି।';

  @override
  String updateAvailable(String version) {
    return 'ସଂସ୍କରଣ $version ଉପଲବ୍ଧ।';
  }

  @override
  String get updateDownloading => 'ବ୍ୟାକଗ୍ରାଉଣ୍ଡରେ ଅପଡେଟ ଡାଉନଲୋଡ ହେଉଛି…';

  @override
  String get updateDownloaded =>
      'ଅପଡେଟ ପ୍ରସ୍ତୁତ। ଇନଷ୍ଟଲ କରିବାକୁ ରିଷ୍ଟାର୍ଟ କରନ୍ତୁ।';

  @override
  String get updateNow => 'ଅପଡେଟ କରନ୍ତୁ';

  @override
  String get restartNow => 'ରିଷ୍ଟାର୍ଟ କରନ୍ତୁ';

  @override
  String get updatesViaStore => 'ଅପଡେଟ ଆପ ଷ୍ଟୋର ମାଧ୍ୟମରେ ସ୍ୱୟଂଚାଳିତ ଭାବେ ଆସେ।';

  @override
  String get updateCheckFailed => 'ଅପଡେଟ ଯାଞ୍ଚ କରିହେଲା ନାହିଁ।';

  @override
  String get subscription => 'ସବସ୍କ୍ରିପସନ';

  @override
  String get planTrial => 'ଟ୍ରାଏଲ';

  @override
  String get planNormal => 'ସାଧାରଣ';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'କୌଣସି ସକ୍ରିୟ ପ୍ଲାନ ନାହିଁ';

  @override
  String planAnalysesPerMonth(int count) {
    return 'ମାସକୁ $countଟି ବିଶ୍ଳେଷଣ';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$countଟି ବିଶ୍ଳେଷଣ ସହ $days ଦିନର ମାଗଣା ଟ୍ରାଏଲ';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'ଟ୍ରାଏଲର $days ଦିନ ବାକି',
      one: 'ଟ୍ରାଏଲର 1 ଦିନ ବାକି',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'ଆପଣଙ୍କ ମାଗଣା ଟ୍ରାଏଲ ଶେଷ ହୋଇଛି। ବିଶ୍ଳେଷଣ ଜାରି ରଖିବାକୁ ଏକ ପ୍ଲାନ ବାଛନ୍ତୁ।';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'ଏହି ଅବଧିରେ $totalଟିରୁ $remainingଟି ବିଶ୍ଳେଷଣ ବାକି';
  }

  @override
  String extraCredits(int count) {
    return '$countଟି ଅତିରିକ୍ତ ବିଶ୍ଳେଷଣ';
  }

  @override
  String renewsOn(String date) {
    return '$dateରେ ନବୀକରଣ';
  }

  @override
  String get choosePlan => 'ଏକ ପ୍ଲାନ ବାଛନ୍ତୁ';

  @override
  String get currentPlan => 'ବର୍ତ୍ତମାନର ପ୍ଲାନ';

  @override
  String get subscribe => 'ସବସ୍କ୍ରାଇବ କରନ୍ତୁ';

  @override
  String get perMonth => '/ ମାସ';

  @override
  String get extraPacksTitle => 'ଅଧିକ ଦରକାର? ଅତିରିକ୍ତ ବିଶ୍ଳେଷଣ କିଣନ୍ତୁ';

  @override
  String get extraPacksHint =>
      'ଅତିରିକ୍ତ ବିଶ୍ଳେଷଣର ମିଆଦ କେବେ ଶେଷ ହୁଏ ନାହିଁ ଏବଂ ଆପଣଙ୍କ ମାସିକ କୋଟା ପରେ ବ୍ୟବହୃତ ହୁଏ।';

  @override
  String get buy => 'କିଣନ୍ତୁ';

  @override
  String get restorePurchases => 'କ୍ରୟ ପୁନରୁଦ୍ଧାର କରନ୍ତୁ';

  @override
  String get manageSubscription => 'ସବସ୍କ୍ରିପସନ ପରିଚାଳନା କରନ୍ତୁ';

  @override
  String get purchaseSuccess => 'ଧନ୍ୟବାଦ! ଆପଣଙ୍କ କ୍ରୟ ସକ୍ରିୟ ହୋଇଛି।';

  @override
  String get purchasePending => 'କ୍ରୟ ପ୍ରକ୍ରିୟାଧୀନ…';

  @override
  String get purchaseFailed => 'କ୍ରୟ ସମ୍ପୂର୍ଣ୍ଣ ହୋଇପାରିଲା ନାହିଁ।';

  @override
  String get purchaseCanceled => 'କ୍ରୟ ବାତିଲ ହେଲା।';

  @override
  String get billingUnavailable =>
      'ଏହି ପ୍ଲାଟଫର୍ମରେ କ୍ରୟ ଏପର୍ଯ୍ୟନ୍ତ ଉପଲବ୍ଧ ନାହିଁ। ଆପଣଙ୍କ ଫୋନ କିମ୍ବା Macରେ ସବସ୍କ୍ରାଇବ କରନ୍ତୁ; ଆପଣଙ୍କ ପ୍ଲାନ ପ୍ରତ୍ୟେକ ଡିଭାଇସରେ କାମ କରିବ।';

  @override
  String get errQuotaExceeded =>
      'ଏହି ଅବଧି ପାଇଁ ଆପଣଙ୍କ ପାଖରେ କୌଣସି ବିଶ୍ଳେଷଣ ବାକି ନାହିଁ। ଆପଣଙ୍କ ପ୍ଲାନ ଅପଗ୍ରେଡ କରନ୍ତୁ କିମ୍ବା ଅତିରିକ୍ତ ବିଶ୍ଳେଷଣ କିଣନ୍ତୁ।';

  @override
  String get errTrialExpired =>
      'ଆପଣଙ୍କ ମାଗଣା ଟ୍ରାଏଲ ଶେଷ ହୋଇଛି। ଜାରି ରଖିବାକୁ ଏକ ପ୍ଲାନ ବାଛନ୍ତୁ।';

  @override
  String get errNoPlan => 'AI ବିଶ୍ଳେଷଣ ପାଇଁ ଏକ ସକ୍ରିୟ ପ୍ଲାନ ଆବଶ୍ୟକ।';

  @override
  String get viewPlans => 'ପ୍ଲାନ ଦେଖନ୍ତୁ';

  @override
  String get usageTitle => 'ବ୍ୟବହାର';

  @override
  String get demoPurchaseNote =>
      'ଡେମୋ ବିଲିଂ: ଏହି ପ୍ଲାଟଫର୍ମରେ କ୍ରୟ ସିମୁଲେଟ କରାଯାଏ।';

  @override
  String get mostPopular => 'ସବୁଠାରୁ ଲୋକପ୍ରିୟ';

  @override
  String get bestValue => 'ସର୍ବୋତ୍ତମ ମୂଲ୍ୟ';

  @override
  String get planFeaturesCommon =>
      'ଫଟୋ ଚିହ୍ନଟ, ଲାଇଭ ଡାଟା, ଚାର୍ଟ, ପସନ୍ଦ ଏବଂ ସମସ୍ତ 120ଟି ଭାଷା ପ୍ରତ୍ୟେକ ପ୍ଲାନରେ ଅନ୍ତର୍ଭୁକ୍ତ। କୋଟା AI ବିଶ୍ଳେଷଣ ପାଇଁ ପ୍ରଯୁଜ୍ୟ।';

  @override
  String get searchLanguages => 'ଭାଷା ଖୋଜନ୍ତୁ…';

  @override
  String get noLanguageMatch => 'କୌଣସି ଭାଷା ମେଳ ଖାଉନାହିଁ।';

  @override
  String get aiSettings => 'AI ବିଶ୍ଳେଷଣ';

  @override
  String get aiLength => 'ଦୈର୍ଘ୍ୟ';

  @override
  String get aiDepthBrief => 'ସଂକ୍ଷିପ୍ତ';

  @override
  String get aiDepthStandard => 'ମାନକ';

  @override
  String get aiDepthDeep => 'ବିସ୍ତୃତ';

  @override
  String get aiDepthBriefDesc => 'ମୁଖ୍ୟ କଥା, ଶୀଘ୍ର।';

  @override
  String get aiDepthStandardDesc => 'ପ୍ରତ୍ୟେକ ବିଭାଗ ସହ ସମ୍ପୂର୍ଣ୍ଣ ରିପୋର୍ଟ।';

  @override
  String get aiDepthDeepDesc =>
      'ଅଧିକ ୱେବ ସନ୍ଧାନ, ସମକକ୍ଷ କମ୍ପାନୀ ସହ ତୁଳନା ଏବଂ ଗଭୀର ବିବରଣୀ।';

  @override
  String aiDepthWords(String min, String max) {
    return 'ପ୍ରାୟ $min–$max ଶବ୍ଦ';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countଟି ବିଶ୍ଳେଷଣ ବ୍ୟବହାର ହୁଏ',
      one: '1ଟି ବିଶ୍ଳେଷଣ ବ୍ୟବହାର ହୁଏ',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'ପାଠକ ସ୍ତର';

  @override
  String get aiReaderBeginner => 'ଆରମ୍ଭକାରୀ';

  @override
  String get aiReaderExperienced => 'ଅଭିଜ୍ଞ';

  @override
  String get aiReaderBeginnerDesc =>
      'ସରଳ ଭାଷା; ପ୍ରତ୍ୟେକ ବୈଷୟିକ ଶବ୍ଦର ବ୍ୟାଖ୍ୟା କରାଯାଏ।';

  @override
  String get aiReaderExperiencedDesc => 'ମାନକ ଆର୍ଥିକ ପରିଭାଷା ସହ ଘନ ଲେଖା।';

  @override
  String get aiCounterArgument => 'ସବୁଠାରୁ ଦୃଢ଼ ପ୍ରତିଯୁକ୍ତି';

  @override
  String get aiCounterArgumentDesc =>
      'ସାରାଂଶ ସର୍ବଦା ନିଜ ସିଦ୍ଧାନ୍ତ ବିରୋଧରେ ସବୁଠାରୁ ଦୃଢ଼ ଯୁକ୍ତି ସହ ଶେଷ ହୁଏ।';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ଆପଣଙ୍କ ପ୍ଲାନରେ ପ୍ରତି ବିଶ୍ଳେଷଣରେ ସର୍ବାଧିକ $countଟି ୱେବ ସନ୍ଧାନ',
      one: 'ଆପଣଙ୍କ ପ୍ଲାନରେ ପ୍ରତି ବିଶ୍ଳେଷଣରେ ସର୍ବାଧିକ 1ଟି ୱେବ ସନ୍ଧାନ',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'ପ୍ଲାନ ଅନୁଯାୟୀ ମାନକ ଦୈର୍ଘ୍ୟ: ସାଧାରଣ $normal, Pro $pro, Max $max, Ultra $ultra। ସଂକ୍ଷିପ୍ତରେ 2ଟି କମ, ବିସ୍ତୃତରେ 2ଟି ଅଧିକ।';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ସର୍ବାଧିକ $countଟି ୱେବ ସନ୍ଧାନ',
      one: 'ସର୍ବାଧିକ 1ଟି ୱେବ ସନ୍ଧାନ',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ପ୍ରତି ବିଶ୍ଳେଷଣରେ $countଟି ୱେବ ସନ୍ଧାନ',
      one: 'ପ୍ରତି ବିଶ୍ଳେଷଣରେ 1ଟି ୱେବ ସନ୍ଧାନ',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'ଏହି ଦୈର୍ଘ୍ୟ ପାଇଁ $neededଟି ବିଶ୍ଳେଷଣ ଦରକାର, କିନ୍ତୁ କେବଳ $leftଟି ବାକି ଅଛି। ସେଟିଂସରେ ଛୋଟ ଦୈର୍ଘ୍ୟ ବାଛନ୍ତୁ କିମ୍ବା ଅଧିକ ବିଶ୍ଳେଷଣ ନିଅନ୍ତୁ।';
  }

  @override
  String get outlookMarketMood => 'ବଜାରର ମନୋଭାବ';

  @override
  String get moodVeryPessimistic => 'ଅତ୍ୟନ୍ତ ନିରାଶାବାଦୀ';

  @override
  String get moodPessimistic => 'ନିରାଶାବାଦୀ';

  @override
  String get moodNeutral => 'ନିରପେକ୍ଷ';

  @override
  String get moodOptimistic => 'ଆଶାବାଦୀ';

  @override
  String get moodVeryOptimistic => 'ଅତ୍ୟନ୍ତ ଆଶାବାଦୀ';

  @override
  String get scenarioBull => 'ତେଜି ପରିସ୍ଥିତି';

  @override
  String get scenarioBase => 'ମୂଳ ପରିସ୍ଥିତି';

  @override
  String get scenarioBear => 'ମନ୍ଦା ପରିସ୍ଥିତି';

  @override
  String outlookCurrentPrice(String price) {
    return 'ବର୍ତ୍ତମାନର ଦର: $price';
  }

  @override
  String get outlookKeyLevels => 'ମୁଖ୍ୟ ସ୍ତର';

  @override
  String get keyLevelSupport => 'ସପୋର୍ଟ';

  @override
  String get keyLevelResistance => 'ରେଜିଷ୍ଟାନ୍ସ';

  @override
  String get keyLevelAnchor => 'ଆଙ୍କର ସ୍ତର';

  @override
  String get upcomingEvents => 'ଆଗାମୀ ଘଟଣା';

  @override
  String get outlookChartNote =>
      'ସୂଚକ ପରିସର; ସମ୍ଭାବନାଗୁଡ଼ିକ ମୋଟାମୋଟି ଆକଳନ, ଭବିଷ୍ୟବାଣୀ ନୁହେଁ।';

  @override
  String get accountTitle => 'ଆକାଉଣ୍ଟ';

  @override
  String get signIn => 'ସାଇନ ଇନ କରନ୍ତୁ';

  @override
  String get signOut => 'ସାଇନ ଆଉଟ କରନ୍ତୁ';

  @override
  String get notSignedIn => 'ସାଇନ ଇନ କରାଯାଇନାହିଁ';

  @override
  String get accountBenefit =>
      'ସାଇନ ଇନ କରନ୍ତୁ, ଯାହାଦ୍ୱାରା ଆପଣଙ୍କ ସବସ୍କ୍ରିପସନ ଆପଣଙ୍କ ସମସ୍ତ ଡିଭାଇସରେ କାମ କରିବ।';

  @override
  String get accountSyncedNote =>
      'ଆପଣଙ୍କ ସବସ୍କ୍ରିପସନ ଓ ବାକି ବିଶ୍ଳେଷଣ ପ୍ରତ୍ୟେକ ଡିଭାଇସରେ ସମାନ ରହେ।';

  @override
  String get signInTitle => 'WhatStockରେ ସାଇନ ଇନ କରନ୍ତୁ';

  @override
  String get emailLabel => 'ଇମେଲ ଠିକଣା';

  @override
  String get continueWithEmail => 'ଇମେଲ ସହ ଜାରି ରଖନ୍ତୁ';

  @override
  String codeSentTo(String email) {
    return 'ଆମେ $emailକୁ ଏକ 6 ଅଙ୍କ ବିଶିଷ୍ଟ କୋଡ ପଠାଇଛୁ। ଏହା 10 ମିନିଟ ପାଇଁ ବୈଧ।';
  }

  @override
  String get codeLabel => 'ସାଇନ-ଇନ କୋଡ';

  @override
  String get resendCode => 'ନୂଆ କୋଡ ପଠାନ୍ତୁ';

  @override
  String get useDifferentEmail => 'ଅନ୍ୟ ଏକ ଇମେଲ ବ୍ୟବହାର କରନ୍ତୁ';

  @override
  String get errInvalidCode => 'କୋଡଟି ଭୁଲ କିମ୍ବା ଏହାର ମିଆଦ ଶେଷ ହୋଇଯାଇଛି।';

  @override
  String get errInvalidEmail => 'ଦୟାକରି ଏକ ବୈଧ ଇମେଲ ଠିକଣା ଲେଖନ୍ତୁ।';

  @override
  String get errSignInFailed =>
      'ସାଇନ ଇନ ବିଫଳ ହେଲା। ଆପଣଙ୍କ ସଂଯୋଗ ଯାଞ୍ଚ କରି ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get checkoutWaiting =>
      'ଆପଣଙ୍କ ବ୍ରାଉଜରରେ ପେମେଣ୍ଟ ସମ୍ପୂର୍ଣ୍ଣ କରନ୍ତୁ। ଏହା ହୋଇଗଲେ ଆପ ସ୍ୱୟଂଚାଳିତ ଭାବେ ଅପଡେଟ ହେବ।';

  @override
  String get paymentViaStripe =>
      'Stripe ମାଧ୍ୟମରେ ଆପଣଙ୍କ ବ୍ରାଉଜରରେ ସୁରକ୍ଷିତ ପେମେଣ୍ଟ। ଯେକୌଣସି ସମୟରେ ବାତିଲ କରନ୍ତୁ।';

  @override
  String get paymentViaStore =>
      'ଆପଣଙ୍କ App Store କିମ୍ବା Google Play ଆକାଉଣ୍ଟ ମାଧ୍ୟମରେ ବିଲ କରାଯାଏ। ଷ୍ଟୋର ସେଟିଂସରେ ଯେକୌଣସି ସମୟରେ ବାତିଲ କରନ୍ତୁ।';

  @override
  String get keySpace => 'ସ୍ପେସ';

  @override
  String get doubleOptionTitle => 'Option ଦୁଇଥର ଦବାନ୍ତୁ';

  @override
  String get doubleOptionSubtitle =>
      'Option କି ଶୀଘ୍ର ଦୁଇଥର ଦବାଇଲେ ମଧ୍ୟ WhatStock ଖୋଲିଯାଏ।';

  @override
  String get doubleOptionPermission =>
      'ଅନ୍ୟ ଆପଗୁଡ଼ିକରେ ମଧ୍ୟ ଏହା କାମ କରିବା ପାଇଁ, ସିଷ୍ଟମ ସେଟିଂସ → ଗୋପନୀୟତା ଓ ସୁରକ୍ଷା → ଇନପୁଟ ମନିଟରିଂରେ WhatStockକୁ ଅନୁମତି ଦିଅନ୍ତୁ, ତାପରେ ଆପଟି ପୁଣି ଖୋଲନ୍ତୁ।';

  @override
  String get openSystemSettings => 'ସିଷ୍ଟମ ସେଟିଂସ ଖୋଲନ୍ତୁ';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'ଯେକୌଣସି ସ୍ଥାନରୁ WhatStock ଖୋଲିବାକୁ $shortcut ଦବାନ୍ତୁ କିମ୍ବା Option ଦୁଇଥର ଦବାନ୍ତୁ।';
  }

  @override
  String get scenarioMostLikely => 'ସବୁଠାରୁ ସମ୍ଭାବ୍ୟ';

  @override
  String get longTermToday => 'ଆଜି';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years ବର୍ଷ',
      one: '1 ବର୍ଷ',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return 'ବର୍ଷକୁ $range';
  }

  @override
  String longTermLikely(String price) {
    return 'ସବୁଠାରୁ ସମ୍ଭାବ୍ୟ $price';
  }

  @override
  String get confidenceLow => 'ନିମ୍ନ ନିଶ୍ଚିତତା';

  @override
  String get confidenceMedium => 'ମଧ୍ୟମ ନିଶ୍ଚିତତା';

  @override
  String get confidenceHigh => 'ଉଚ୍ଚ ନିଶ୍ଚିତତା';

  @override
  String get longTermNote =>
      'ଦୀର୍ଘକାଳୀନ ପରିସରଗୁଡ଼ିକ ଉଲ୍ଲିଖିତ ଅନୁମାନ ଉପରେ ଆଧାରିତ ଏବଂ ସମୟ ସହ ପ୍ରଶସ୍ତ ହୁଏ। ଦରରେ ଲାଭାଂଶ ଅନ୍ତର୍ଭୁକ୍ତ ନୁହେଁ। ମୋଟାମୋଟି ଆକଳନ, ଭବିଷ୍ୟବାଣୀ ନୁହେଁ।';

  @override
  String get portfolio => 'ପୋର୍ଟଫୋଲିଓ';

  @override
  String get portfolioEmpty =>
      'ଏଠାରେ ଏପର୍ଯ୍ୟନ୍ତ କିଛି ନାହିଁ। ଆପଣଙ୍କ ପାଖରେ ଥିବା ସେୟାର ଉପରେ ନଜର ରଖିବାକୁ ଗୋଟିଏ ସେୟାର ଖୋଲନ୍ତୁ ଏବଂ “ପୋର୍ଟଫୋଲିଓରେ ଯୋଡ଼ନ୍ତୁ” ଟ୍ୟାପ କରନ୍ତୁ।';

  @override
  String get portfolioLocalNote =>
      'କେବଳ ଏହି ଡିଭାଇସରେ ସଞ୍ଚିତ। ମୋଟ ହିସାବ ECB ରେଫରେନ୍ସ ହାରରେ ରୂପାନ୍ତରିତ ହୁଏ; ଦର ବିଳମ୍ବିତ ହୋଇପାରେ।';

  @override
  String get addToPortfolio => 'ପୋର୍ଟଫୋଲିଓରେ ଯୋଡ଼ନ୍ତୁ';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol ଯୋଡ଼ନ୍ତୁ';
  }

  @override
  String get portfolioQuantity => 'ସେୟାର ସଂଖ୍ୟା';

  @override
  String portfolioBuyPrice(String currency) {
    return 'ପ୍ରତି ସେୟାର ଦର ($currency)';
  }

  @override
  String get portfolioBuyDate => 'କ୍ରୟ ତାରିଖ';

  @override
  String get portfolioAdd => 'ଯୋଡ଼ନ୍ତୁ';

  @override
  String get portfolioInvalidNumber => 'ଶୂନ୍ୟଠାରୁ ବଡ଼ ଏକ ସଂଖ୍ୟା ଲେଖନ୍ତୁ।';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol ଆପଣଙ୍କ ପୋର୍ଟଫୋଲିଓରେ ଯୋଡ଼ାଗଲା।';
  }

  @override
  String get portfolioTotalValue => 'ମୋଟ ମୂଲ୍ୟ';

  @override
  String get portfolioToday => 'ଆଜି';

  @override
  String get portfolioGainLoss => 'ଲାଭ/କ୍ଷତି';

  @override
  String homeDividendsThisYear(String amount) {
    return 'ଏହି ବର୍ଷର ଡିଭିଡେଣ୍ଡ: $amount';
  }

  @override
  String get portfolioInvested => 'ନିବେଶିତ';

  @override
  String get portfolioAllocation => 'ବଣ୍ଟନ';

  @override
  String get portfolioPositions => 'ପୋଜିସନ';

  @override
  String portfolioAvgCost(String price) {
    return 'ହାରାହାରି ଖର୍ଚ୍ଚ $price';
  }

  @override
  String get portfolioYourPosition => 'ଆପଣଙ୍କ ପୋଜିସନ';

  @override
  String get portfolioPurchases => 'କ୍ରୟଗୁଡ଼ିକ';

  @override
  String get portfolioRemove => 'ହଟାନ୍ତୁ';

  @override
  String get portfolioExcluded =>
      'ଦର କିମ୍ବା ବିନିମୟ ହାର ନଥିବା ପୋଜିସନଗୁଡ଼ିକୁ ମୋଟ ହିସାବରେ ଧରାଯାଏ ନାହିଁ।';

  @override
  String get priceAlerts => 'ଦର ଆଲର୍ଟ';

  @override
  String get setPriceAlert => 'ଦର ଆଲର୍ଟ ସେଟ କରନ୍ତୁ';

  @override
  String alertDialogTitle(String symbol) {
    return 'ଦର ଆଲର୍ଟ · $symbol';
  }

  @override
  String get alertKindAbove => 'ଉପରକୁ ଗଲେ';

  @override
  String get alertKindBelow => 'ତଳକୁ ଖସିଲେ';

  @override
  String get alertKindMove => 'ଦିନରେ ବହୁତ ହଲଚଲ ହେଲେ';

  @override
  String alertTargetPrice(String currency) {
    return 'ଦର ($currency)';
  }

  @override
  String get alertMovePercent => 'ଦୈନିକ ପରିବର୍ତ୍ତନ (%)';

  @override
  String get alertAlreadyMet => 'ଦର ପୂର୍ବରୁ ଏହି ସ୍ତର ପାର କରିସାରିଛି।';

  @override
  String get alertSave => 'ଆଲର୍ଟ ସେଟ କରନ୍ତୁ';

  @override
  String alertCreated(String symbol) {
    return '$symbol ପାଇଁ ଆଲର୍ଟ ସେଟ ହେଲା।';
  }

  @override
  String get alertsEmpty =>
      'ଏପର୍ଯ୍ୟନ୍ତ କୌଣସି ଦର ଆଲର୍ଟ ନାହିଁ। ଗୋଟିଏ ସେୟାର ଖୋଲନ୍ତୁ ଏବଂ ସେଟ କରିବାକୁ ଘଣ୍ଟି ଟ୍ୟାପ କରନ୍ତୁ।';

  @override
  String get alertsNote =>
      'WhatStock ଚାଲୁଥିବା ସମୟରେ ପ୍ରତି 5 ମିନିଟରେ ଆଲର୍ଟ ଯାଞ୍ଚ କରାଯାଏ। କମ୍ପ୍ୟୁଟରରେ ଏହା ମେନୁ ବାର କିମ୍ବା ଟ୍ରେରେ ଚାଲୁ ରହେ; ଫୋନରେ ଆପାତତଃ ଆପ ଖୋଲା ଥିଲେ ହିଁ ଆଲର୍ଟ ଆସେ।';

  @override
  String alertDescAbove(String price) {
    return '$priceରୁ ଉପରେ';
  }

  @override
  String alertDescBelow(String price) {
    return '$priceରୁ ତଳେ';
  }

  @override
  String alertDescMove(String percent) {
    return 'ଦୈନିକ ପରିବର୍ତ୍ତନ ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return '$dateରେ $priceରେ ସକ୍ରିୟ ହେଲା';
  }

  @override
  String get alertRearm => 'ପୁଣି ଚାଲୁ କରନ୍ତୁ';

  @override
  String get alertDelete => 'ଡିଲିଟ କରନ୍ତୁ';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol $priceରୁ ଉପରକୁ ଗଲା';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol $priceରୁ ତଳକୁ ଖସିଲା';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol ଆଜି $percent ହଲଚଲ ହେଲା';
  }

  @override
  String alertHitBody(String price) {
    return 'ବର୍ତ୍ତମାନର ଦର: $price';
  }

  @override
  String get alertOpen => 'ଖୋଲନ୍ତୁ';

  @override
  String get keepInTrayTitle => 'ୱିଣ୍ଡୋ ବନ୍ଦ ହେଲେ ମଧ୍ୟ ଚାଲୁ ରଖନ୍ତୁ';

  @override
  String get keepInTraySubtitle =>
      'WhatStock ମେନୁ ବାର କିମ୍ବା ଟ୍ରେରେ ରହେ, ତେଣୁ ସର୍ଟକଟ ଓ ଦର ଆଲର୍ଟ କାମ କରୁଥାଏ।';

  @override
  String get termsOfUse => 'ବ୍ୟବହାର ସର୍ତ୍ତାବଳୀ';

  @override
  String get privacyPolicy => 'ଗୋପନୀୟତା ନୀତି';

  @override
  String get subscriptionLegal =>
      'ଆପଣ ବାତିଲ ନକରିବା ପର୍ଯ୍ୟନ୍ତ ସବସ୍କ୍ରିପସନ ପ୍ରତି ମାସରେ ସ୍ୱୟଂଚାଳିତ ଭାବେ ନବୀକରଣ ହୁଏ। ସବସ୍କ୍ରାଇବ କରି ଆପଣ ବ୍ୟବହାର ସର୍ତ୍ତାବଳୀ ଓ ଗୋପନୀୟତା ନୀତି ଗ୍ରହଣ କରୁଛନ୍ତି।';

  @override
  String get deleteAccount => 'ଆକାଉଣ୍ଟ ଡିଲିଟ କରନ୍ତୁ';

  @override
  String get deleteAccountTitle => 'ଆପଣଙ୍କ ଆକାଉଣ୍ଟ ଡିଲିଟ କରିବେ?';

  @override
  String get deleteAccountBody =>
      'ଆପଣଙ୍କ ଆକାଉଣ୍ଟ ଏବଂ ଆମ ସର୍ଭରରେ ସଞ୍ଚିତ ସବୁକିଛି (ଇମେଲ, କୋଟା, ବ୍ୟବହାର) ସ୍ଥାୟୀ ଭାବେ ଡିଲିଟ ହୋଇଯିବ, ଏବଂ ଅବ୍ୟବହୃତ ବିଶ୍ଳେଷଣ ହଜିଯିବ। ବ୍ରାଉଜରରେ ପେମେଣ୍ଟ କରାଯାଇଥିବା ସବସ୍କ୍ରିପସନ ତୁରନ୍ତ ବାତିଲ ହୁଏ; App Store କିମ୍ବା Google Play ସବସ୍କ୍ରିପସନ ଷ୍ଟୋରର ସେଟିଂସରେ ବାତିଲ କରିବାକୁ ପଡ଼ିବ।';

  @override
  String get deleteLocalData =>
      'ଏହି ଡିଭାଇସର ଡାଟା ମଧ୍ୟ ଡିଲିଟ କରନ୍ତୁ (ପୋର୍ଟଫୋଲିଓ, ଆଲର୍ଟ, ପସନ୍ଦ, ଇତିହାସ, ସଞ୍ଚିତ ବିଶ୍ଳେଷଣ)';

  @override
  String get deleteAccountConfirm => 'ସ୍ଥାୟୀ ଭାବେ ଡିଲିଟ କରନ୍ତୁ';

  @override
  String get accountDeleted => 'ଆପଣଙ୍କ ଆକାଉଣ୍ଟ ଡିଲିଟ କରାଯାଇଛି।';

  @override
  String get errDeleteAccount =>
      'ଆକାଉଣ୍ଟ ଡିଲିଟ କରିହେଲା ନାହିଁ। ଆପଣଙ୍କ ସଂଯୋଗ ଯାଞ୍ଚ କରି ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get aiTrialBriefNote =>
      'ଟ୍ରାଏଲ ବିଶ୍ଳେଷଣ ସଂକ୍ଷିପ୍ତ ଏବଂ ଏକ ଦ୍ରୁତ AI ମଡେଲରେ ତିଆରି ହୁଏ। ପ୍ଲାନ ସହ ଆପଣ ଆମର ସବୁଠାରୁ ସକ୍ଷମ AI, ଅଧିକ ୱେବ ସନ୍ଧାନ ଏବଂ ମାନକ ଓ ବିସ୍ତୃତ ଦୈର୍ଘ୍ୟ ପାଆନ୍ତି।';

  @override
  String get billingMonthly => 'ମାସିକ';

  @override
  String get billingYearly => 'ବାର୍ଷିକ';

  @override
  String get yearlyDiscount => '2 ମାସ ମାଗଣା';

  @override
  String get perYear => '/ ବର୍ଷ';

  @override
  String pricePerMonthApprox(String price) {
    return 'ମାସକୁ ≈ $price';
  }

  @override
  String get subscriptionLegalYearly =>
      'ଆପଣ ବାତିଲ ନକରିବା ପର୍ଯ୍ୟନ୍ତ ବାର୍ଷିକ ସବସ୍କ୍ରିପସନ ପ୍ରତି ବର୍ଷ ସ୍ୱୟଂଚାଳିତ ଭାବେ ନବୀକରଣ ହୁଏ। ସବସ୍କ୍ରାଇବ କରି ଆପଣ ବ୍ୟବହାର ସର୍ତ୍ତାବଳୀ ଓ ଗୋପନୀୟତା ନୀତି ଗ୍ରହଣ କରୁଛନ୍ତି।';

  @override
  String get myAnalyses => 'ମୋ ବିଶ୍ଳେଷଣ';

  @override
  String get navAlerts => 'ଆଲର୍ଟ';

  @override
  String get inviteTitle => 'ବନ୍ଦ ପୂର୍ବାବଲୋକନ';

  @override
  String get inviteBody =>
      'WhatStock ବର୍ତ୍ତମାନ କେବଳ ନିମନ୍ତ୍ରଣ ମାଧ୍ୟମରେ ଉପଲବ୍ଧ। ଆପଣ ପାଇଥିବା ନିମନ୍ତ୍ରଣ କୋଡ ଲେଖନ୍ତୁ।';

  @override
  String get inviteCodeLabel => 'ନିମନ୍ତ୍ରଣ କୋଡ';

  @override
  String get inviteContinue => 'ଜାରି ରଖନ୍ତୁ';

  @override
  String get inviteInvalid => 'ଏହି ନିମନ୍ତ୍ରଣ କୋଡ ବୈଧ ନୁହେଁ।';

  @override
  String get inviteExpired =>
      'ଏହି ନିମନ୍ତ୍ରଣର ମିଆଦ ଶେଷ ହୋଇଯାଇଛି। ଯିଏ ଆପଣଙ୍କୁ ନିମନ୍ତ୍ରଣ କରିଥିଲେ ତାଙ୍କଠାରୁ ନୂଆ କୋଡ ମାଗନ୍ତୁ।';

  @override
  String get inviteDeviceLimit =>
      'ଏହି ନିମନ୍ତ୍ରଣ କୋଡ ପୂର୍ବରୁ ସର୍ବାଧିକ ସଂଖ୍ୟକ ଡିଭାଇସରେ ବ୍ୟବହୃତ ହେଉଛି।';

  @override
  String get previewConfidential => 'ଗୋପନୀୟ ପୂର୍ବାବଲୋକନ';

  @override
  String get errPreviewDailyLimit =>
      'ଏହି ପୂର୍ବାବଲୋକନର ଆଜିର ବିଶ୍ଳେଷଣ ସୀମା ପୂରଣ ହୋଇଯାଇଛି। କାଲି ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ଘଣ୍ଟା ପୂର୍ବରୁ',
      one: '1 ଘଣ୍ଟା ପୂର୍ବରୁ',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ଦିନ ପୂର୍ବରୁ',
      one: '1 ଦିନ ପୂର୍ବରୁ',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'ଏହି ବିଶ୍ଳେଷଣ ଅପଡେଟ କରିବେ?';

  @override
  String staleBody(String age) {
    return 'ଏହା $age ତିଆରି ହୋଇଥିଲା। ସେବେଠାରୁ ଦର, ସମ୍ବାଦ ଓ ଫଳାଫଳ ବଦଳିଥାଇପାରେ।';
  }

  @override
  String get staleKeep => 'ପୂର୍ବଟି ଦେଖାନ୍ତୁ';

  @override
  String get staleRefresh => 'ନୂଆ ତିଆରି କରନ୍ତୁ';

  @override
  String seeAll(int count) {
    return 'ସବୁ ଦେଖନ୍ତୁ ($count)';
  }

  @override
  String get searchAnalyses => 'ଆପଣଙ୍କ ବିଶ୍ଳେଷଣ ଖୋଜନ୍ତୁ';

  @override
  String get deleteAnalysis => 'ଡିଲିଟ କରନ୍ତୁ';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol ବିଶ୍ଳେଷଣ ଡିଲିଟ ହେଲା';
  }

  @override
  String get keyLevelAlertHint =>
      'ଦର କୌଣସି ସ୍ତରରେ ପହଞ୍ଚିଲେ ଆଲର୍ଟ ପାଇବାକୁ ସେହି ସ୍ତରକୁ ଟ୍ୟାପ କରନ୍ତୁ।';

  @override
  String get shareAnalysisTitle => 'ବିଶ୍ଳେଷଣ ସେୟାର କରନ୍ତୁ';

  @override
  String get shareAsImage => 'ଛବି ଭାବେ ସେୟାର କରନ୍ତୁ';

  @override
  String get shareAsText => 'ଟେକ୍ସଟ ଭାବେ ସେୟାର କରନ୍ତୁ';

  @override
  String get shareCardFooter => 'WhatStock ଦ୍ୱାରା ନିର୍ମିତ';

  @override
  String get shareCardDisclaimer => 'AI ବିଶ୍ଳେଷଣ · ନିବେଶ ପରାମର୍ଶ ନୁହେଁ';

  @override
  String get referralTitle => 'ବନ୍ଧୁମାନଙ୍କୁ ଆମନ୍ତ୍ରଣ କରନ୍ତୁ';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countଟି ଅତିରିକ୍ତ ବିଶ୍ଳେଷଣ',
      one: '1ଟି ଅତିରିକ୍ତ ବିଶ୍ଳେଷଣ',
    );
    return 'ଆପଣଙ୍କ କୋଡ ସେୟାର କରନ୍ତୁ। ଆପଣଙ୍କ ବନ୍ଧୁ ତୁରନ୍ତ $_temp0 ପାଇବେ, ଏବଂ ସେମାନଙ୍କ ପ୍ରଥମ ବିଶ୍ଳେଷଣ ପରେ ଆପଣ ମଧ୍ୟ ସେତିକି ପାଇବେ।';
  }

  @override
  String get referralYourCode => 'ଆପଣଙ୍କ କୋଡ';

  @override
  String referralStats(int invited, int rewarded) {
    return 'ଆମନ୍ତ୍ରିତ: $invited · ପୁରସ୍କୃତ: $rewarded';
  }

  @override
  String get referralHaveCode => 'ବନ୍ଧୁଙ୍କଠାରୁ କୋଡ ଅଛି କି?';

  @override
  String get referralRedeem => 'ରିଡିମ କରନ୍ତୁ';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countଟି ଅତିରିକ୍ତ ବିଶ୍ଳେଷଣ ଯୋଡ଼ାଗଲା। ସ୍ୱାଗତ!',
      one: '1ଟି ଅତିରିକ୍ତ ବିଶ୍ଳେଷଣ ଯୋଡ଼ାଗଲା। ସ୍ୱାଗତ!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'ଏହି କୋଡ ନାହିଁ। ଯାଞ୍ଚ କରି ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get referralErrOwn => 'ଆପଣ ନିଜର କୋଡ ରିଡିମ କରିପାରିବେ ନାହିଁ।';

  @override
  String get referralErrAlready =>
      'ଆପଣ ପୂର୍ବରୁ ଜଣେ ବନ୍ଧୁଙ୍କ କୋଡ ରିଡିମ କରିସାରିଛନ୍ତି।';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countଟି ଅତିରିକ୍ତ ବିଶ୍ଳେଷଣ',
      one: '1ଟି ଅତିରିକ୍ତ ବିଶ୍ଳେଷଣ',
    );
    return 'ମୁଁ WhatStock ସହିତ ସେୟାର ବିଶ୍ଳେଷଣ କରେ: ଗୋଟିଏ ସେୟାରର ଫଟୋ ଉଠାନ୍ତୁ ଏବଂ AI ତାହା ବୁଝାଇଦିଏ। ମୋ କୋଡ $code ସହିତ ଆପଣ $_temp0 ପାଇବେ।';
  }

  @override
  String get referralCopied => 'କୋଡ କପି ହେଲା';

  @override
  String get onboardTitle1 => 'ଗୋଟିଏ ସେୟାରର ଫଟୋ ଉଠାନ୍ତୁ';

  @override
  String get onboardBody1 =>
      'ଏକ ବ୍ରୋକରେଜ୍ ଆପ୍‌ର ସ୍କ୍ରିନ୍, ଖବରକାଗଜ କିମ୍ବା କମ୍ପାନୀ ଲୋଗୋ ଯଥେଷ୍ଟ: WhatStock ସେୟାରଟିକୁ ଚିହ୍ନିଥାଏ ଏବଂ ଏହାର ଦର, ଚାର୍ଟ ଓ ମୁଖ୍ୟ ତଥ୍ୟ ଦେଖାଏ।';

  @override
  String get onboardTitle2 => 'କିଛି ମିନିଟରେ ବୁଝନ୍ତୁ';

  @override
  String get onboardBody2 =>
      'AI ବିଶ୍ଳେଷଣ ବୁଝାଏ ଯେ ସେୟାରକୁ କ\'ଣ ଚଳାଉଛି, ଏହାର ବିପଦ, ମୂଲ୍ୟାୟନ ଏବଂ ଦର କେଉଁ ଆଡ଼କୁ ଯାଇପାରେ ତାହାର ତିନୋଟି ସମ୍ଭାବ୍ୟ ଦୃଶ୍ୟ – ଉତ୍ସ ସହିତ ଏବଂ ଆପଣଙ୍କ ଭାଷାରେ।';

  @override
  String get onboardTitle3 => 'ସବୁବେଳେ ଅପଡେଟ୍ ରୁହନ୍ତୁ';

  @override
  String get onboardBody3 =>
      'ପସନ୍ଦ, ଆପଣଙ୍କ ପୋର୍ଟଫୋଲିଓ ଏବଂ ଦର ଆଲର୍ଟ ଆପଣଙ୍କୁ ଖବର ଦେଇଥାଏ। ଆପଣଙ୍କ ବିଶ୍ଳେଷଣ ଆପଣଙ୍କ ଡିଭାଇସରେ ରହେ, ପୁଣି ଖୋଲିବା ପାଇଁ ପ୍ରସ୍ତୁତ।';

  @override
  String get onboardNext => 'ପରବର୍ତ୍ତୀ';

  @override
  String get onboardStart => 'ଆରମ୍ଭ କରନ୍ତୁ';

  @override
  String get onboardSkip => 'ଛାଡ଼ନ୍ତୁ';

  @override
  String changesTitle(String date) {
    return 'ପୂର୍ବ ବିଶ୍ଳେଷଣ ପରଠାରୁ ($date)';
  }

  @override
  String get changesPrice => 'ଦର';

  @override
  String get changesNoMajor => 'ଦୃଷ୍ଟିଭଙ୍ଗୀରେ ବିଶେଷ ପରିବର୍ତ୍ତନ ହୋଇନାହିଁ।';

  @override
  String get changesPreviousSummary => 'ପୂର୍ବ ସାରାଂଶ';

  @override
  String get telemetryTitle => 'WhatStockକୁ ଉନ୍ନତ କରିବାରେ ସାହାଯ୍ୟ କରନ୍ତୁ';

  @override
  String get telemetryBody =>
      'ଅଜ୍ଞାତ ବ୍ୟବହାର ପରିସଂଖ୍ୟାନ ଏବଂ କ୍ରାସ ରିପୋର୍ଟ ସେୟାର କରନ୍ତୁ: କେଉଁ ଫିଚର ବ୍ୟବହାର ହେଉଛି ଏବଂ କଣ ଭୁଲ ହେଲା। ଆପଣଙ୍କ ସେୟାର, ବିଶ୍ଳେଷଣ କିମ୍ବା ବ୍ୟକ୍ତିଗତ ଡାଟା କେବେ ନୁହେଁ। ଆପଣ ଏହାକୁ ଯେକୌଣସି ସମୟରେ ସେଟିଂସରେ ବଦଳାଇ ପାରିବେ।';

  @override
  String get telemetryAllow => 'ଅନୁମତି ଦିଅନ୍ତୁ';

  @override
  String get telemetryDecline => 'ନା, ଧନ୍ୟବାଦ';

  @override
  String get telemetrySetting => 'ଅଜ୍ଞାତ ପରିସଂଖ୍ୟାନ ଏବଂ କ୍ରାସ ରିପୋର୍ଟ';

  @override
  String get telemetrySettingHint =>
      'ଫିଚରଗୁଡ଼ିକ କେତେ ଥର ବ୍ୟବହୃତ ହୁଏ ଏବଂ ତ୍ରୁଟି ରିପୋର୍ଟ, ବ୍ୟକ୍ତିଗତ ଡାଟା କିମ୍ବା ଆପଣଙ୍କ ସନ୍ଧାନ ଓ ବିଶ୍ଳେଷଣର ବିଷୟବସ୍ତୁ ବିନା।';

  @override
  String get askButton => 'ଏହି ବିଶ୍ଳେଷଣ ବିଷୟରେ ପଚାରନ୍ତୁ';

  @override
  String askTitle(String symbol) {
    return '$symbol ବିଷୟରେ ପ୍ରଶ୍ନ';
  }

  @override
  String get askIntro =>
      'ବିଶ୍ଳେଷଣ ବିଷୟରେ ଯାହା ବି ପଚାରନ୍ତୁ: କୌଣସି ଝୁଙ୍କିର ଅର୍ଥ କ\'ଣ, କ\'ଣ ଭବିଷ୍ୟତ ସମ୍ଭାବନାକୁ ବଦଳାଇପାରେ, କୌଣସି ସଂଖ୍ୟା କିପରି ହିସାବ କରାଗଲା। ଉତ୍ତରଗୁଡ଼ିକ ଏହି ବିଶ୍ଳେଷଣ ଉପରେ ଆଧାରିତ ଏବଂ ଏହା ନିବେଶ ପରାମର୍ଶ ନୁହେଁ।';

  @override
  String get askHint => 'ଏକ ପ୍ରଶ୍ନ ପଚାରନ୍ତୁ…';

  @override
  String get askSend => 'ପଠାନ୍ତୁ';

  @override
  String get askThinking => 'ଚିନ୍ତା କରୁଛି…';

  @override
  String get askSuggest1 => 'ସବୁଠାରୁ ବଡ଼ ଝୁଙ୍କି କ\'ଣ?';

  @override
  String get askSuggest2 => 'କ\'ଣ ଭବିଷ୍ୟତ ସମ୍ଭାବନାକୁ ବଦଳାଇପାରେ?';

  @override
  String get askSuggest3 => 'ସରଳ ଭାଷାରେ ବୁଝାନ୍ତୁ';

  @override
  String get askMaxReached =>
      'ଏହି ବିଶ୍ଳେଷଣ ପାଇଁ ଏହା ଶେଷ ପ୍ରଶ୍ନ ଥିଲା। ଅଧିକ ପଚାରିବାକୁ ନୂଆ ବିଶ୍ଳେଷଣ ତିଆରି କରନ୍ତୁ।';

  @override
  String get errAskLimit =>
      'ଆପଣ ଆଜିର ପ୍ରଶ୍ନ ସୀମାରେ ପହଞ୍ଚିଛନ୍ତି। କାଲି ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get eventTomorrow => 'କାଲି';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days ଦିନରେ',
      one: '1 ଦିନରେ',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'ତ୍ରୈମାସିକ ଫଳାଫଳ';

  @override
  String get eventBeforeOpen => 'ବଜାର ଖୋଲିବା ପୂର୍ବରୁ';

  @override
  String get eventAfterClose => 'ବଜାର ବନ୍ଦ ହେବା ପରେ';

  @override
  String eventEpsEstimate(String value) {
    return 'ଆନୁମାନିକ EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'ଆପଣଙ୍କ ବିଶ୍ଳେଷଣରୁ';

  @override
  String get eventDividend => 'ଡିଭିଡେଣ୍ଡ ଆଶା କରାଯାଉଛି';

  @override
  String get eventDividendEstimate => 'ଆପଣ ରେକର୍ଡ କରିଥିବା ପେମେଣ୍ଟରୁ ଆକଳନ';

  @override
  String get eventsHint =>
      'ଆଗାମୀ 90 ଦିନରେ ଆପଣଙ୍କ ପସନ୍ଦ ଓ ପୋର୍ଟଫୋଲିଓ ଶେୟାରଗୁଡ଼ିକର ଫଳାଫଳ ତାରିଖ, ଆପଣଙ୍କ ବିଶ୍ଳେଷଣ ଚିହ୍ନିତ କରିଥିବା ତାରିଖଯୁକ୍ତ ଘଟଣା, ଏବଂ ଆପଣ ରେକର୍ଡ କରିଥିବା ପେମେଣ୍ଟରୁ ଆଶା କରାଯାଉଥିବା ଡିଭିଡେଣ୍ଡ।';

  @override
  String get eventsEmpty =>
      'ଆଗାମୀ 90 ଦିନରେ କୌଣସି ତାରିଖଯୁକ୍ତ ଘଟଣା ନାହିଁ। ଫଳାଫଳ ତାରିଖ ଏଠାରେ ଦେଖିବାକୁ ପସନ୍ଦ କିମ୍ବା ପୋର୍ଟଫୋଲିଓ ଶେୟାର ଯୋଡ଼ନ୍ତୁ; ରେକର୍ଡ କରିଥିବା ଡିଭିଡେଣ୍ଡ ସେଗୁଡ଼ିକର ପରବର୍ତ୍ତୀ ଆଶା କରାଯାଉଥିବା ପେମେଣ୍ଟ ଦେଖାଏ।';

  @override
  String get compareTitle => 'ତୁଳନା';

  @override
  String get compareAdd => 'ସେୟାର ଯୋଡ଼ନ୍ତୁ';

  @override
  String get compareRemove => 'ହଟାନ୍ତୁ';

  @override
  String get compareTickerHint => 'ଟିକର, ଯଥା MSFT';

  @override
  String get compareHint =>
      'ମୁଖ୍ୟ ସଂଖ୍ୟାଗୁଡ଼ିକ ପାଖାପାଖି; ପ୍ରତ୍ୟେକ ଧାଡ଼ିରେ ସର୍ବୋତ୍ତମ ମୂଲ୍ୟ ହାଇଲାଇଟ୍ କରାଯାଇଛି। ରାଶି ପ୍ରତ୍ୟେକ ସେୟାରର ନିଜ ମୁଦ୍ରାରେ ଅଛି।';

  @override
  String get compareNoAnalysis => 'ଏପର୍ଯ୍ୟନ୍ତ କୌଣସି ବିଶ୍ଳେଷଣ ନାହିଁ';

  @override
  String get portfolioDividends => 'ବାର୍ଷିକ ଲାଭାଂଶ';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent ୟିଲ୍ଡ';
  }

  @override
  String get portfolioDividendNote =>
      'ଆଶାକୃତ ବାର୍ଷିକ ଲାଭାଂଶ ଗତ 12 ମାସରେ ପ୍ରଦାନ କରାଯାଇଥିବା ଲାଭାଂଶ ଉପରେ ଆଧାରିତ; ଭବିଷ୍ୟତ ପ୍ରଦାନର ନିଶ୍ଚିତତା ନାହିଁ।';

  @override
  String positionDividend(String amount) {
    return 'ଲାଭାଂଶ: ବାର୍ଷିକ $amount';
  }

  @override
  String get chartAvgCost => 'ଆପଣଙ୍କ ହାରାହାରି';

  @override
  String get chartAlertLevel => 'ଆଲର୍ଟ';

  @override
  String get marketsToday => 'ଆଜିର ବଜାର';

  @override
  String get notesTitle => 'ମୋ ନୋଟ୍';

  @override
  String get notesHint =>
      'ଆପଣ ଏହାକୁ କାହିଁକି କିଣିଲେ, କ\'ଣ ଉପରେ ନଜର ରଖୁଛନ୍ତି, କ\'ଣ ହେଲେ ବିକ୍ରି କରିବେ?';

  @override
  String get notesInfo =>
      'କେବଳ ଏହି ଡିଭାଇସରେ ସଞ୍ଚିତ। AI ବିଶ୍ଳେଷଣ ଆପଣଙ୍କ ନୋଟ୍‌କୁ ବିଚାରକୁ ନିଏ।';

  @override
  String notesSaved(String date) {
    return 'ସଞ୍ଚିତ $date';
  }

  @override
  String get peersTitle => 'ସମାନ କମ୍ପାନୀ';

  @override
  String get portfolioExport => 'CSV ଭାବେ ରପ୍ତାନି କରନ୍ତୁ';

  @override
  String get portfolioImport => 'CSV ରୁ ଆମଦାନି କରନ୍ତୁ';

  @override
  String get portfolioImportHint =>
      'ପ୍ରତି ଧାଡ଼ିରେ ଗୋଟିଏ କ୍ରୟ ପେଷ୍ଟ କରନ୍ତୁ: ଟିକର, ପରିମାଣ, ମୂଲ୍ୟ, ମୁଦ୍ରା, ତାରିଖ (YYYY-MM-DD)। ସ୍ତମ୍ଭଗୁଡ଼ିକ କମା, ସେମିକୋଲନ କିମ୍ବା ଟ୍ୟାବ ଦ୍ୱାରା ଅଲଗା ହୋଇପାରେ; ଶୀର୍ଷ ଧାଡ଼ି ବୈକଳ୍ପିକ।';

  @override
  String get portfolioImportButton => 'ଆମଦାନି କରନ୍ତୁ';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countଟି କ୍ରୟ ଯୋଡ଼ାଗଲା',
      one: '1ଟି କ୍ରୟ ଯୋଡ଼ାଗଲା',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countଟି ଧାଡ଼ି ବାଦ ଦିଆଗଲା',
      one: '1ଟି ଧାଡ଼ି ବାଦ ଦିଆଗଲା',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'ପୋର୍ଟଫୋଲିଓ, ପସନ୍ଦ, ଦର ଆଲର୍ଟ ଓ ନୋଟ୍ ଆପଣଙ୍କ ସମସ୍ତ ଡିଭାଇସରେ ସିଙ୍କ ହୁଏ।';

  @override
  String syncLast(String time) {
    return 'ଶେଷ ସିଙ୍କ: $time';
  }

  @override
  String get syncNow => 'ବର୍ତ୍ତମାନ ସିଙ୍କ କରନ୍ତୁ';

  @override
  String get syncFailed =>
      'ସିଙ୍କ ବିଫଳ ହେଲା। ଏହା ସ୍ୱୟଂଚାଳିତ ଭାବେ ପୁଣି ଚେଷ୍ଟା କରିବ।';

  @override
  String get alertEmailTitle => 'ଆଲର୍ଟ ଟ୍ରିଗର ହେଲେ ଇମେଲ';

  @override
  String get alertEmailOn =>
      'ଆମେ ପ୍ରତି କିଛି ମିନିଟରେ ଆପଣଙ୍କ ଆଲର୍ଟ ଯାଞ୍ଚ କରୁ ଏବଂ ଆପ ବନ୍ଦ ଥିଲେ ମଧ୍ୟ ଆପଣଙ୍କୁ ଇମେଲ ପଠାଉ।';

  @override
  String get alertEmailSignIn =>
      'ଆପ ବନ୍ଦ ଥିଲେ ମଧ୍ୟ ଇମେଲରେ ଆଲର୍ଟ ପାଇବା ପାଇଁ ସେଟିଂସରେ ଆପଣଙ୍କ ଇମେଲ ସହ ସାଇନ ଇନ କରନ୍ତୁ।';

  @override
  String get portfolioHistory => 'ସମୟ ସହ ମୂଲ୍ୟ';

  @override
  String get portfolioReviewTitle => 'AI ପୋର୍ଟଫୋଲିଓ ସମୀକ୍ଷା';

  @override
  String get portfolioReviewIntro =>
      'AI ଆପଣଙ୍କ ସମଗ୍ର ପୋର୍ଟଫୋଲିଓ ଦେଖେ: କେନ୍ଦ୍ରୀକରଣ, କ୍ଷେତ୍ର ଓ ମୁଦ୍ରା ବିପଦ, ଆପଣଙ୍କ ସେୟାରଗୁଡ଼ିକର ସାଧାରଣ ବିପଦ, ଏବଂ ଲାଭାଂଶ। 1ଟି ବିଶ୍ଳେଷଣ ବ୍ୟବହାର ହୁଏ।';

  @override
  String get portfolioReviewButton => 'ମୋ ପୋର୍ଟଫୋଲିଓ ସମୀକ୍ଷା କରନ୍ତୁ';

  @override
  String get portfolioReviewAgain => 'ପୁଣି ସମୀକ୍ଷା କରନ୍ତୁ';

  @override
  String get portfolioReviewWorking => 'ଆପଣଙ୍କ ପୋର୍ଟଫୋଲିଓ ସମୀକ୍ଷା ହେଉଛି…';

  @override
  String get digestTitle => 'ଇମେଲରେ ସାପ୍ତାହିକ ସାରାଂଶ';

  @override
  String get digestHint =>
      'ପ୍ରତି ସୋମବାର: ଗତ ସପ୍ତାହରେ ଆପଣଙ୍କ ପସନ୍ଦ ଓ ପୋର୍ଟଫୋଲିଓ କିପରି ଗତି କଲା, ଏବଂ ସେଗୁଡ଼ିକର ଆଗାମୀ ଫଳାଫଳ ତାରିଖ।';

  @override
  String get benchmarkTitle => 'S&P 500 ସହ ତୁଳନା';

  @override
  String get benchmarkYours => 'ଆପଣଙ୍କ କ୍ରୟ';

  @override
  String get benchmarkIndex => 'ସମାନ ରାଶି S&P 500ରେ';

  @override
  String benchmarkAhead(String points) {
    return 'ସୂଚକାଙ୍କଠାରୁ $points ପ୍ରତିଶତ ପଏଣ୍ଟ ଭଲ';
  }

  @override
  String benchmarkBehind(String points) {
    return 'ସୂଚକାଙ୍କଠାରୁ $points ପ୍ରତିଶତ ପଏଣ୍ଟ ପଛରେ';
  }

  @override
  String get benchmarkHint =>
      'ଯେପରି ପ୍ରତ୍ୟେକ କ୍ରୟର ରାଶି ସେହି ଦିନ ଏକ S&P 500 ଇଣ୍ଡେକ୍ସ ଫଣ୍ଡରେ ନିବେଶ କରାଯାଇଥିଲା। ଲାଭାଂଶ ଅନ୍ତର୍ଭୁକ୍ତ ନୁହେଁ; ଅତୀତର ରିଟର୍ଣ୍ଣ ଭବିଷ୍ୟତର ପୂର୍ବାନୁମାନ କରେ ନାହିଁ।';

  @override
  String get portfolioSell => 'ବିକ୍ରି କରନ୍ତୁ';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbol ବିକ୍ରି କରନ୍ତୁ';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'ପ୍ରତି ସେୟାର ବିକ୍ରି ଦର ($currency)';
  }

  @override
  String get portfolioSellDate => 'ବିକ୍ରି ତାରିଖ';

  @override
  String get portfolioSellAll => 'ସମସ୍ତ';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'ଆପଣଙ୍କ ପାଖରେ $quantity ଅଛି';
  }

  @override
  String get portfolioSold => 'ବିକ୍ରି ହେଲା';

  @override
  String get portfolioRealized => 'ପ୍ରାପ୍ତ';

  @override
  String get portfolioClosed => 'ବନ୍ଦ ପୋଜିସନ';

  @override
  String get portfolioClosedNote => 'ସମସ୍ତ ସେୟାର ବିକ୍ରି ହୋଇଛି';

  @override
  String get portfolioTransactions => 'କାରବାର';

  @override
  String get portfolioRealizedByYear => 'ବର୍ଷ ଅନୁଯାୟୀ ପ୍ରାପ୍ତ ଲାଭ';

  @override
  String get portfolioRealizedHint =>
      'ବିକ୍ରିକୁ ପ୍ରଥମେ ଆପଣଙ୍କ ସବୁଠାରୁ ପୁରୁଣା କ୍ରୟ ସହ ମେଳ କରାଯାଏ (FIFO), ଆଜିର ବିନିମୟ ଦରରେ ରୂପାନ୍ତରିତ। ଟିକସ ରିଟର୍ଣ୍ଣ ପାଇଁ ଆପଣଙ୍କ ବ୍ରୋକରଙ୍କ ବିବରଣୀ ବ୍ୟବହାର କରନ୍ତୁ।';

  @override
  String staleNewResults(String symbol, String date) {
    return 'ଏହି ବିଶ୍ଳେଷଣ ପରେ ନୂଆ ତ୍ରୈମାସିକ ଫଳାଫଳ ପ୍ରକାଶିତ ହୋଇଛି ($symbol, $date)।';
  }

  @override
  String get newResultsBadge => 'ନୂଆ ଫଳାଫଳ';

  @override
  String get portfolioImportBrokers =>
      'Revolut, Trading 212 ଏବଂ Interactive Brokers ର ଏକ୍ସପୋର୍ଟ ମଧ୍ୟ ବିକ୍ରି ସହିତ ଚିହ୍ନଟ ହୁଏ; ଲାଭାଂଶ ଏବଂ ଜମା ଛାଡ଼ି ଦିଆଯାଏ।';

  @override
  String get portfolioImportFile => 'ଏକ ଫାଇଲ ବାଛନ୍ତୁ';

  @override
  String offlineBanner(String time) {
    return 'ସଂଯୋଗ ନାହିଁ – ଶେଷ ଥର ସେଭ୍ କରାଯାଇଥିବା ଡାଟା ଦେଖାଯାଉଛି ($time)।';
  }

  @override
  String get glossMarketCap =>
      'ସେୟାର ବଜାରରେ ସମଗ୍ର କମ୍ପାନୀର ମୂଲ୍ୟ କେତେ: ସେୟାର ଦର × ସେୟାର ସଂଖ୍ୟା।';

  @override
  String get glossSharesOutstanding =>
      'କମ୍ପାନୀ କେତେ ସେୟାର ଜାରି କରିଛି। ଏହା ବଢ଼ିଲେ ପ୍ରତି ସେୟାରର ଅଂଶ ଛୋଟ ହୁଏ; ସେୟାର ବାଇବ୍ୟାକ ଏହାକୁ କମାଏ।';

  @override
  String get glossPeTrailing =>
      'ଦର ÷ ଗତ 12 ମାସର ପ୍ରତି ସେୟାର ଆୟ: ବର୍ତ୍ତମାନ ଲାଭର କେତେ ବର୍ଷର ମୂଲ୍ୟ ଆପଣ ଦେଉଛନ୍ତି। କମ୍ ହେଲେ ଶସ୍ତା, କିନ୍ତୁ ଦ୍ରୁତ ବଢ଼ୁଥିବା କମ୍ପାନୀର P/E ସାଧାରଣତଃ ଅଧିକ ଥାଏ।';

  @override
  String get glossPeForward =>
      'P/E ପରି, କିନ୍ତୁ ଆଗାମୀ 12 ମାସ ପାଇଁ ବିଶ୍ଳେଷକମାନେ ଆଶା କରୁଥିବା ଲାଭ ସହିତ। ଟ୍ରେଲିଂ P/E ଠାରୁ କମ୍ ହେଲେ ଲାଭ ବଢ଼ିବ ବୋଲି ଆଶା କରାଯାଏ।';

  @override
  String get glossPb =>
      'ଦର ÷ ପ୍ରତି ସେୟାର ବୁକ ଭାଲ୍ୟୁ (ସମ୍ପତ୍ତିରୁ ଋଣ ବାଦ)। ପ୍ରାୟ 1 ର ଅର୍ଥ ବଜାର କମ୍ପାନୀକୁ କାଗଜରେ ଥିବା ସମ୍ପତ୍ତି ସହ ସମାନ ମୂଲ୍ୟ ଦେଉଛି।';

  @override
  String get glossPs =>
      'ବଜାର ମୂଲ୍ୟ ÷ ବାର୍ଷିକ ରାଜସ୍ୱ। ଯେଉଁ କମ୍ପାନୀର ଏପର୍ଯ୍ୟନ୍ତ କମ୍ ବା କୌଣସି ଲାଭ ନାହିଁ ସେଥିପାଇଁ ଉପଯୋଗୀ; ଏକା ଶିଳ୍ପ ମଧ୍ୟରେ ତୁଳନା କରନ୍ତୁ।';

  @override
  String get glossEvToFcf =>
      'ଋଣ ସହିତ କମ୍ପାନୀର ମୂଲ୍ୟ (EV) ÷ ନିବେଶ ପରେ ବର୍ଷକରେ ସୃଷ୍ଟି ହେଉଥିବା ନଗଦ। କମ୍ ହେଲେ ଦର ବଦଳରେ ଆପଣ ଅଧିକ ନଗଦ ପାଆନ୍ତି।';

  @override
  String get glossPeg =>
      'P/E ÷ ଆଶାକୃତ ବାର୍ଷିକ ଲାଭ ବୃଦ୍ଧି (%)। ପ୍ରାୟ 1 କୁ ପ୍ରାୟତଃ ଉଚିତ ବୋଲି ଧରାଯାଏ; ଏହା P/E କୁ ବୃଦ୍ଧି ଆଧାରରେ ଦେଖାଏ।';

  @override
  String get glossEps =>
      'ଗତ 12 ମାସରେ ପ୍ରତି ସେୟାର ଲାଭ। ବର୍ଷକୁ ବର୍ଷ ବଢ଼ୁଥିବା EPS ଏକ ସୁସ୍ଥ କମ୍ପାନୀର ସବୁଠାରୁ ଦୃଢ଼ ସଙ୍କେତ ମଧ୍ୟରୁ ଗୋଟିଏ।';

  @override
  String get glossBeta =>
      'ସେୟାର ବଜାର ସହ କେତେ ହଲଚଲ କରେ: 1 = ବଜାର ପରି, 1.5 = ପ୍ରାୟ 50% ଅଧିକ ଉଠାଣି-ଖସିବା, 1 ରୁ କମ୍ = ଶାନ୍ତ।';

  @override
  String get glossRevenueTtm =>
      'ଗତ 12 ମାସର ମୋଟ ବିକ୍ରି, କୌଣସି ଖର୍ଚ୍ଚ ବାଦ ଦେବା ପୂର୍ବରୁ।';

  @override
  String get glossNetIncomeTtm =>
      'ଗତ 12 ମାସରେ ସମସ୍ତ ଖର୍ଚ୍ଚ, ସୁଧ ଓ କର ପରେ ବଳକା ଲାଭ।';

  @override
  String get glossGrossMargin =>
      'ଉତ୍ପାଦର ସିଧା ଖର୍ଚ୍ଚ ପରେ ରାଜସ୍ୱର କେତେ ଅଂଶ ବଳେ। ଅଧିକ ମାର୍ଜିନ ପ୍ରାୟତଃ ଦର ସ୍ଥିର କରିବାର କ୍ଷମତା ଦର୍ଶାଏ।';

  @override
  String get glossOperatingMargin =>
      'ବ୍ୟବସାୟ ଚଳାଇବା ଖର୍ଚ୍ଚ (ଦରମା, ଭଡ଼ା, ମାର୍କେଟିଂ) ପରେ, ସୁଧ ଓ କର ପୂର୍ବରୁ ରାଜସ୍ୱର କେତେ ଅଂଶ ବଳେ।';

  @override
  String get glossNetMargin =>
      'ରାଜସ୍ୱର କେତେ ଅଂଶ ଶେଷ ଲାଭ ହୁଏ। 20% ର ଅର୍ଥ ବିକ୍ରିର ପ୍ରତି 100 ରୁ 20 ଲାଭ।';

  @override
  String get glossRoe =>
      'ଇକ୍ୱିଟି ଉପରେ ରିଟର୍ନ: ବାର୍ଷିକ ଲାଭ ÷ ମାଲିକଙ୍କ ପୁଞ୍ଜି। ପରିଚାଳନା ସେୟାରଧାରୀଙ୍କ ଟଙ୍କା କେତେ ଭଲ ଭାବେ ବ୍ୟବହାର କରେ ତାହା ଦେଖାଏ; ପ୍ରାୟ 15% ରୁ ଅଧିକ ଦୃଢ଼।';

  @override
  String get glossRoa =>
      'ସମ୍ପତ୍ତି ଉପରେ ରିଟର୍ନ: ବାର୍ଷିକ ଲାଭ ÷ କମ୍ପାନୀର ସମସ୍ତ ସମ୍ପତ୍ତି। ଏକା ଶିଳ୍ପ ମଧ୍ୟରେ ତୁଳନା କରନ୍ତୁ।';

  @override
  String get glossDebtToEquity =>
      'ଋଣ ÷ ମାଲିକଙ୍କ ପୁଞ୍ଜି। ଅଧିକ ହେଲେ ଅଧିକ ଧାର ଟଙ୍କା: ସୁଧ ହାର ବଢ଼ିଲେ ବା ବ୍ୟବସାୟ ମନ୍ଥର ହେଲେ ଅଧିକ ବିପଦ।';

  @override
  String get glossCurrentRatio =>
      'ସ୍ୱଳ୍ପକାଳୀନ ସମ୍ପତ୍ତି ÷ ବର୍ଷକ ମଧ୍ୟରେ ଦେବାକୁ ଥିବା ବିଲ୍। 1 ରୁ ଅଧିକ ହେଲେ କମ୍ପାନୀ ନିକଟ ବିଲ୍ ପୈଠ କରିପାରିବ।';

  @override
  String get glossRevenueGrowth =>
      'ଗୋଟିଏ ବର୍ଷ ପୂର୍ବ ତୁଳନାରେ ରାଜସ୍ୱ କେତେ ବଢ଼ିଲା।';

  @override
  String get glossEpsGrowth =>
      'ଗୋଟିଏ ବର୍ଷ ପୂର୍ବ ତୁଳନାରେ ପ୍ରତି ସେୟାର ଲାଭ କେତେ ବଢ଼ିଲା।';

  @override
  String get glossDividendYield =>
      'ବାର୍ଷିକ ଲାଭାଂଶ ÷ ସେୟାର ଦର: ଆପଣ ଦେଇଥିବା ରାଶିର ପ୍ରତିଶତ ଭାବେ ବର୍ଷକୁ ମିଳୁଥିବା ନଗଦ ଆୟ।';

  @override
  String get glossDividendPerShare =>
      'ଗତ ବର୍ଷରେ ଗୋଟିଏ ସେୟାର ଉପରେ ଦିଆଯାଇଥିବା ଲାଭାଂଶ।';

  @override
  String get glossPayoutRatio =>
      'ଲାଭର କେତେ ଅଂଶ ଲାଭାଂଶ ଭାବେ ଦିଆଯାଏ। 100% ରୁ ଅଧିକ ହେଲେ କମ୍ପାନୀ ଯେତେ ରୋଜଗାର କରେ ତାଠାରୁ ଅଧିକ ଦିଏ, ଯାହା କ୍ୱଚିତ୍ ସ୍ଥାୟୀ ହୁଏ।';

  @override
  String get glossDividendGrowth5y =>
      'ଗତ ପାଞ୍ଚ ବର୍ଷରେ ପ୍ରତି ସେୟାର ଲାଭାଂଶ ବାର୍ଷିକ ହାରାହାରି କେତେ ବଢ଼ିଲା। ସ୍ଥିର ବୃଦ୍ଧି ସାଧାରଣତଃ ଦର୍ଶାଏ ଯେ କମ୍ପାନୀ ନିଜ ନଗଦ ପ୍ରବାହ ଉପରେ ଭରସା କରେ; ହ୍ରାସ ପ୍ରାୟତଃ ଏକ ଚେତାବନୀ ସଙ୍କେତ।';

  @override
  String get glossYieldOnCost =>
      'ଗତ ୧୨ ମାସରେ ପ୍ରାପ୍ତ ଡିଭିଡେଣ୍ଡକୁ ଆପଣ ଏବେ ବି ଧରି ରଖିଥିବା ସେୟାର ପାଇଁ ଦେଇଥିବା ରାଶି ଦ୍ୱାରା ଭାଗ କରାଯାଏ। ଲାଭାଂଶ ୟିଲ୍ଡ ଭଳି ନୁହେଁ, ଏହା ଆଜିର ଦର ଉପରେ ନୁହେଁ, ଆପଣ ନିଜେ କିଣିଥିବା ଦର ଉପରେ ମାପ କରାଯାଏ।';

  @override
  String get glossTitle => 'ଏହାର ଅର୍ଥ କ\'ଣ?';

  @override
  String get watchNewsTitle => 'ଆପଣଙ୍କ ସେୟାରର ଖବର';

  @override
  String get undo => 'ପୂର୍ବବତ୍ କରନ୍ତୁ';

  @override
  String get watchSort => 'ସଜାନ୍ତୁ';

  @override
  String get watchSortOwn => 'ମୋ କ୍ରମ';

  @override
  String get watchSortGainers => 'ସର୍ବାଧିକ ବୃଦ୍ଧି ପ୍ରଥମେ';

  @override
  String get watchSortLosers => 'ସର୍ବାଧିକ ହ୍ରାସ ପ୍ରଥମେ';

  @override
  String get watchSortName => 'ଟିକର ଅନୁସାରେ (A–Z)';

  @override
  String get watchHint =>
      'କ୍ରମ ବଦଳାଇବାକୁ ହ୍ୟାଣ୍ଡଲ ଟାଣନ୍ତୁ, ହଟାଇବାକୁ ବାମକୁ ସ୍ୱାଇପ କରନ୍ତୁ। ରେଖା ଗତ 30 ଦିନ ଦେଖାଏ।';

  @override
  String analysisReady(String symbol) {
    return '$symbol: ଆପଣଙ୍କ ବିଶ୍ଳେଷଣ ପ୍ରସ୍ତୁତ।';
  }

  @override
  String alertFromCost(String price) {
    return 'ଆପଣଙ୍କ ହାରାହାରି କ୍ରୟ ମୂଲ୍ୟ ($price) ରୁ:';
  }

  @override
  String get briefTitle => 'ଆଜି ଆପଣଙ୍କ ସେୟାର ସହ';

  @override
  String get briefButton => 'ଆଜିର ସାରାଂଶ';

  @override
  String get briefHint =>
      'ଆଜି ଆପଣଙ୍କ ପୋର୍ଟଫୋଲିଓ ଓ ପସନ୍ଦର ସେୟାର କିପରି ଚାଲିଲା ଓ ସଦ୍ୟତମ ଖବର ସେଗୁଡ଼ିକ ବିଷୟରେ କ’ଣ କହୁଛି, ତାହାର ଛୋଟ AI ସାରାଂଶ। ଏଥିରେ କୌଣସି ବିଶ୍ଳେଷଣ ଖର୍ଚ୍ଚ ହୁଏ ନାହିଁ।';

  @override
  String get briefRefresh => 'ଅପଡେଟ୍ କରନ୍ତୁ';

  @override
  String get sectionEarnings => 'ତ୍ରୈମାସିକ ଫଳାଫଳ';

  @override
  String earningsNext(String date) {
    return 'ପରବର୍ତ୍ତୀ ରିପୋର୍ଟ: $date';
  }

  @override
  String get earningsExpected => 'ପ୍ରତ୍ୟାଶିତ EPS';

  @override
  String get earningsReported => 'ଘୋଷିତ EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'ଗତ $totalଟି ମଧ୍ୟରୁ $beatsଟି ତ୍ରୈମାସିକରେ ପ୍ରତ୍ୟାଶିତ EPS ସହ ସମାନ ବା ଅଧିକ',
      one: '1ଟି ମଧ୍ୟରୁ $beatsଟି ତ୍ରୈମାସିକରେ ପ୍ରତ୍ୟାଶିତ EPS ସହ ସମାନ ବା ଅଧିକ',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol କାଲି ତ୍ରୈମାସିକ ଫଳାଫଳ ପ୍ରକାଶ କରିବ';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol ଆଜି ତ୍ରୈମାସିକ ଫଳାଫଳ ପ୍ରକାଶ କରିବ';
  }

  @override
  String get earningsRemindersTitle => 'ଫଳାଫଳ ସ୍ମାରକ';

  @override
  String get earningsRemindersSubtitle =>
      'ଆପଣଙ୍କ ପସନ୍ଦ କିମ୍ବା ପୋର୍ଟଫୋଲିଓର ଷ୍ଟକ୍ ତ୍ରୈମାସିକ ଫଳାଫଳ ପ୍ରକାଶ କରିବାର ପୂର୍ବ ଦିନ ଏକ ବିଜ୍ଞପ୍ତି';

  @override
  String addAllToFavorites(int count) {
    return 'ସବୁ ପସନ୍ଦରେ ଯୋଡ଼ନ୍ତୁ ($count)';
  }

  @override
  String get portfolioImportPhoto => 'ସ୍କ୍ରିନସଟରୁ ଆମଦାନି କରନ୍ତୁ';

  @override
  String get holdingsReading => 'ଆପଣଙ୍କ ପୋଜିସନ ପଢ଼ାଯାଉଛି…';

  @override
  String get holdingsReviewTitle => 'ମିଳିଥିବା ପୋଜିସନ';

  @override
  String get holdingsReviewHint =>
      'ଯୋଡ଼ିବା ପୂର୍ବରୁ ସଂଖ୍ୟାଗୁଡ଼ିକ ଯାଞ୍ଚ କରନ୍ତୁ। ମୂଲ୍ୟଟି ପ୍ରତି ସେୟାରରେ ଆପଣଙ୍କ ହାରାହାରି କ୍ରୟ ମୂଲ୍ୟ, ଆଜିର ମୂଲ୍ୟ ନୁହେଁ।';

  @override
  String get holdingsNoPrice => 'ଛବିରେ ହାରାହାରି କ୍ରୟ ମୂଲ୍ୟ ନାହିଁ';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countଟି ପୋଜିସନ ଯୋଡ଼ନ୍ତୁ',
      one: '1ଟି ପୋଜିସନ ଯୋଡ଼ନ୍ତୁ',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'ଏହି ଛବିରେ କୌଣସି ସେୟାର ପୋଜିସନ ମିଳିଲା ନାହିଁ। ଆପଣଙ୍କ ବ୍ରୋକରଙ୍କ ପୋଜିସନ କିମ୍ବା ହୋଲ୍ଡିଂସ ପୃଷ୍ଠାର ସ୍କ୍ରିନସଟ ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get week52Range => '52-ସପ୍ତାହ ପରିସର';

  @override
  String week52BelowHigh(String percent) {
    return '52-ସପ୍ତାହ ସର୍ବାଧିକଠାରୁ $percent ତଳେ';
  }

  @override
  String get week52AtHigh => '52-ସପ୍ତାହ ସର୍ବାଧିକରେ';

  @override
  String get alertKindTrailing => 'ଶିଖରରୁ ଖସିଲେ';

  @override
  String get alertTrailingPercent => 'ଶିଖରରୁ ଖସିବା (%)';

  @override
  String get alertTrailingHint =>
      'ଦର ଉପରକୁ ଗଲେ ପଛେ ପଛେ ଯାଏ: ସେଟ କରିବା ପରଠାରୁ ସର୍ବୋଚ୍ଚ ସ୍ତରରୁ ଦର ଏତିକି ଖସିଲେ ଜଣାଏ।';

  @override
  String alertDescTrailing(String percent) {
    return 'ଶିଖରରୁ $percent ଖସିବା';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'ଏପର୍ଯ୍ୟନ୍ତ ଶିଖର: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol ଶିଖରରୁ $percent ଖସିଲା';
  }

  @override
  String get sectionInsiders => 'ଇନସାଇଡର କାରବାର';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countଟି କ୍ରୟ',
      one: '1ଟି କ୍ରୟ',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countଟି ବିକ୍ରୟ',
      one: '1ଟି ବିକ୍ରୟ',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'ନିଟ୍: $shares ସେୟାର';
  }

  @override
  String get insiderBuy => 'କିଣିଲେ';

  @override
  String get insiderSell => 'ବିକିଲେ';

  @override
  String get insiderHint =>
      'ଗତ 90 ଦିନରେ କାର୍ଯ୍ୟନିର୍ବାହୀ ଓ ନିର୍ଦ୍ଦେଶକମାନଙ୍କ ଦ୍ୱାରା ଖୋଲା ବଜାରରେ କରାଯାଇଥିବା କ୍ରୟ ଓ ବିକ୍ରୟ (SEC Form 4)। ଅପସନ୍ ପ୍ରୟୋଗ ଓ ସେୟାର ପୁରସ୍କାର ଗଣନା କରାଯାଏ ନାହିଁ।';

  @override
  String get insiderNone =>
      'ଗତ 90 ଦିନରେ ଖୋଲା ବଜାରରେ କୌଣସି ଇନସାଇଡର କ୍ରୟ କିମ୍ବା ବିକ୍ରୟ ନାହିଁ।';

  @override
  String get analystTrend => 'ମାସକୁ ମାସ ମତାମତ କିପରି ବଦଳିଲା';

  @override
  String get watchListAll => 'ସବୁ';

  @override
  String get watchListNew => 'ନୂଆ ତାଲିକା';

  @override
  String get watchListName => 'ତାଲିକା ନାମ';

  @override
  String get watchListRename => 'ତାଲିକାର ନାମ ବଦଳାନ୍ତୁ';

  @override
  String get watchListDelete => 'ତାଲିକା ଡିଲିଟ କରନ୍ତୁ';

  @override
  String get watchListAddTo => 'ତାଲିକାରେ ଯୋଡ଼ନ୍ତୁ';

  @override
  String get watchListEmpty =>
      'ଏହି ତାଲିକାରେ ଏପର୍ଯ୍ୟନ୍ତ କୌଣସି ଷ୍ଟକ ନାହିଁ। ଯୋଡ଼ିବାକୁ ଷ୍ଟକ ପାଖରେ ଥିବା ତାଲିକା ବଟନରେ ଟାପ କରନ୍ତୁ।';

  @override
  String get portfolioAskTitle => 'ଆପଣଙ୍କ ପୋର୍ଟଫୋଲିଓ ବିଷୟରେ ପ୍ରଶ୍ନ';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'ବ୍ୟାକଅପ୍';

  @override
  String get backupSave => 'ବ୍ୟାକଅପ୍ ସେଭ୍ କରନ୍ତୁ';

  @override
  String get backupSaveHint =>
      'ଆପଣଙ୍କ ପସନ୍ଦ, ତାଲିକା, ପୋର୍ଟଫୋଲିଓ, ଆଲର୍ଟ ଓ ନୋଟ୍ ଗୋଟିଏ ଫାଇଲରେ।';

  @override
  String get backupRestore => 'ବ୍ୟାକଅପ୍‌ରୁ ପୁନରୁଦ୍ଧାର କରନ୍ତୁ';

  @override
  String get backupRestoreHint =>
      'ଫାଇଲରେ ଥିବା ଯୋଡ଼ାଯାଏ; ଆପଣଙ୍କ ପାଖରେ ଏବେ ଥିବା କିଛି ବି ଡିଲିଟ୍ ହୁଏ ନାହିଁ।';

  @override
  String get backupRestored => 'ବ୍ୟାକଅପ୍ ପୁନରୁଦ୍ଧାର ହେଲା।';

  @override
  String get backupInvalid => 'ଏହି ଫାଇଲଟି WhatStock ବ୍ୟାକଅପ୍ ନୁହେଁ।';

  @override
  String get allocationPositions => 'ସେୟାର';

  @override
  String get allocationSectors => 'ସେକ୍ଟର';

  @override
  String get allocationCurrencies => 'ମୁଦ୍ରା';

  @override
  String get compareReturn1y => '1 ବର୍ଷର ରିଟର୍ନ';

  @override
  String get compareFromHigh => '52-ସପ୍ତାହ ସର୍ବାଧିକଠାରୁ ଦୂରତା';

  @override
  String get briefAutoTitle => 'ପ୍ରତିଦିନ ସକାଳେ ଦୈନିକ ସାରାଂଶ';

  @override
  String get briefAutoSubtitle =>
      'ଆପ୍ ଚାଲୁଥିବା ସମୟରେ ସକାଳ 7:00 ପରେ “ଆଜି ଆପଣଙ୍କ ସେୟାର ସହ” ନିଜେ ପ୍ରସ୍ତୁତ ହୁଏ; କମ୍ପ୍ୟୁଟରରେ ଏକ ବିଜ୍ଞପ୍ତି ଆପଣଙ୍କୁ ଜଣାଏ। ଏହା ଆପଣଙ୍କ ଦୈନିକ ପ୍ରଶ୍ନ ସୀମାରୁ ଯାଏ, କୌଣସି ବିଶ୍ଳେଷଣ ଖର୍ଚ୍ଚ ହୁଏ ନାହିଁ।';

  @override
  String get targetsButton => 'ଲକ୍ଷ୍ୟ ବଣ୍ଟନ';

  @override
  String get targetsTitle => 'ଲକ୍ଷ୍ୟ ବଣ୍ଟନ';

  @override
  String get targetsHint =>
      'ପୋର୍ଟଫୋଲିଓରେ ପ୍ରତ୍ୟେକ ସେୟାରର କେତେ ଅଂଶ ରହିବା ଉଚିତ ତାହା ସ୍ଥିର କରନ୍ତୁ। ଲକ୍ଷ୍ୟ ନଥିଲେ ଫିଲ୍ଡ ଖାଲି ଛାଡନ୍ତୁ। ତାପରେ ଆପ୍ ସେଠାରେ ପହଞ୍ଚିବାକୁ କ\'ଣ କିଣିବେ ବା ବିକ୍ରି କରିବେ ଦେଖାଇବ।';

  @override
  String targetsSum(String percent) {
    return 'ମୋଟ: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'କିଣନ୍ତୁ ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'ବିକ୍ରି କରନ୍ତୁ ≈ $amount';
  }

  @override
  String get rebalanceOk => 'ଲକ୍ଷ୍ୟରେ';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol ପ୍ରତ୍ୟାଶିତ EPS ଅତିକ୍ରମ କଲା';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol ପ୍ରତ୍ୟାଶିତ EPS ରେ ପହଞ୍ଚିଲା ନାହିଁ';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'ଘୋଷିତ EPS $actual, ପ୍ରତ୍ୟାଶିତ $estimate';
  }

  @override
  String get newsExplain => 'ଏହାର ଅର୍ଥ କ\'ଣ?';

  @override
  String get watchAlertAll => 'ବଡ଼ ଦୈନିକ ପରିବର୍ତ୍ତନରେ ସତର୍କତା';

  @override
  String get watchAlertAllHint =>
      'ଏହି ତାଲିକାର ପ୍ରତ୍ୟେକ ସେୟାର ପାଇଁ ମୂଲ୍ୟ ସତର୍କତା: ଦିନରେ ଏତିକି ଉପରକୁ ବା ତଳକୁ ହଲଚଲ ହେଲେ ଜଣାଇବ। ଯେଉଁଥିରେ ପୂର୍ବରୁ ସତର୍କତା ଅଛି, ତାହା ସେମିତି ରହିବ।';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countଟି ସତର୍କତା ସେଟ୍ ହେଲା',
      one: '1ଟି ସତର୍କତା ସେଟ୍ ହେଲା',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'ପ୍ରାପ୍ତ ଲାଭ ରପ୍ତାନି କରନ୍ତୁ (CSV)';

  @override
  String get portfolioAnnualReturn => 'ବାର୍ଷିକ ରିଟର୍ନ';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / ବର୍ଷ';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'ଅର୍ଥ-ଭାରିତ ବାର୍ଷିକ ରିଟର୍ନ (XIRR): ଆପଣ କେବେ କିଣିଲେ ଓ ବିକ୍ରି କଲେ ତାହା ବିଚାରକୁ ନିଏ, ତେଣୁ ପରେ ଯୋଡ଼ାଯାଇଥିବା ଟଙ୍କା ଏହାକୁ ବିକୃତ କରେ ନାହିଁ। ଆପଣଙ୍କ ପ୍ରଥମ କ୍ରୟ ଅତି କମରେ ଏକ ବର୍ଷ ପୁରୁଣା ହେଲେ ଦେଖାଯାଏ; ଲାଭାଂଶ ଅନ୍ତର୍ଭୁକ୍ତ ନୁହେଁ।';

  @override
  String get eventsAddToCalendar => 'କ୍ୟାଲେଣ୍ଡରରେ ଯୋଡ଼ନ୍ତୁ (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'ପୋର୍ଟଫୋଲିଓ ଆଲର୍ଟ';

  @override
  String get portfolioMoveAlertSubtitle =>
      'ଆପଣଙ୍କ ସମଗ୍ର ପୋର୍ଟଫୋଲିଓ ଦିନକରେ ଏତିକି ହଲଚଲ ହେଲେ ଏକ ବିଜ୍ଞପ୍ତି।';

  @override
  String get portfolioMoveAlertOff => 'ବନ୍ଦ';

  @override
  String portfolioMoveUp(String percent) {
    return 'ଆଜି ଆପଣଙ୍କ ପୋର୍ଟଫୋଲିଓ $percent ବଢ଼ିଛି';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'ଆଜି ଆପଣଙ୍କ ପୋର୍ଟଫୋଲିଓ $percent କମିଛି';
  }

  @override
  String get whatIfTitle => 'ଯଦି ଆପଣ ନିବେଶ କରିଥାନ୍ତେ?';

  @override
  String get whatIfAmount => 'ପରିମାଣ';

  @override
  String whatIfResult(String amount, String period) {
    return '$period ପୂର୍ବରୁ ନିବେଶ କରାଯାଇଥିବା $amount ଆଜି ହୋଇଥାନ୍ତା';
  }

  @override
  String get whatIfNote =>
      'କେବଳ ସେୟାର ମୂଲ୍ୟ ଉପରେ ଆଧାରିତ: ଲାଭାଂଶ, ଶୁଳ୍କ ଓ କର ଅନ୍ତର୍ଭୁକ୍ତ ନୁହେଁ। ଅତୀତର ରିଟର୍ଣ୍ଣ ଭବିଷ୍ୟତର ରିଟର୍ଣ୍ଣର ପୂର୍ବାନୁମାନ କରେ ନାହିଁ।';

  @override
  String get watchShare => 'ତାଲିକା ସେୟାର କରନ୍ତୁ';

  @override
  String get watchImport => 'ଟିକର ଯୋଡ଼ନ୍ତୁ';

  @override
  String get watchImportHint =>
      'କମା, ସ୍ପେସ କିମ୍ବା ନୂଆ ଧାଡ଼ି ଦ୍ୱାରା ଅଲଗା ହୋଇଥିବା ଟିକର ପେଷ୍ଟ କରନ୍ତୁ – ଯେପରି କେହି ଆପଣଙ୍କ ସହ ସେୟାର କରିଥିବା ଏକ ତାଲିକା।';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countଟି ସେୟାର ଯୋଡ଼ାଗଲା',
      one: '1ଟି ସେୟାର ଯୋଡ଼ାଗଲା',
      zero: 'କୌଣସି ନୂଆ ସେୟାର ନାହିଁ',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'ସବୁଠୁ ବଡ଼ ପ୍ରଥମେ';

  @override
  String get positionsSortGain => 'ସର୍ବାଧିକ ମୋଟ ରିଟର୍ନ ପ୍ରଥମେ';

  @override
  String get positionsSortToday => 'ଆଜିର ଶ୍ରେଷ୍ଠ ପ୍ରଥମେ';

  @override
  String get chartMyBuys => 'ଆପଣଙ୍କ କ୍ରୟ';

  @override
  String get chartMySells => 'ଆପଣଙ୍କ ବିକ୍ରୟ';

  @override
  String get shortcutsTitle => 'କୀବୋର୍ଡ ସର୍ଟକଟ';

  @override
  String usMarketOpen(String time) {
    return 'ଆମେରିକା ବଜାର ଖୋଲା · $time ପରେ ବନ୍ଦ ହେବ';
  }

  @override
  String usMarketClosed(String time) {
    return 'ଆମେରିକା ବଜାର ବନ୍ଦ · $time ପରେ ଖୋଲିବ';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes ମିନିଟ';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours ଘଣ୍ଟା $minutes ମିନିଟ';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days ଦିନ $hours ଘଣ୍ଟା';
  }

  @override
  String get portfolioGoalSet => 'ଲକ୍ଷ୍ୟ ସ୍ଥିର କରନ୍ତୁ';

  @override
  String get portfolioGoalTitle => 'ପୋର୍ଟଫୋଲିଓ ଲକ୍ଷ୍ୟ';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · ଲକ୍ଷ୍ୟ: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'ଲକ୍ଷ୍ୟ ପୂରଣ ହେଲା: $amount';
  }

  @override
  String get portfolioGoalRemove => 'ଲକ୍ଷ୍ୟ ହଟାନ୍ତୁ';

  @override
  String get alertEdit => 'ଆଲର୍ଟ ଏଡିଟ କରନ୍ତୁ';

  @override
  String get positionOpenLots => 'ଏବେ ବି ଧରି ରଖିଥିବା (ସବୁଠାରୁ ପୁରୁଣା ପ୍ରଥମେ)';

  @override
  String get lotRemoved => 'କାରବାର ଡିଲିଟ ହେଲା';

  @override
  String get alertDeleted => 'ସତର୍କତା ଡିଲିଟ ହେଲା';

  @override
  String get alertsClearTriggered => 'ଟ୍ରିଗର ହୋଇଥିବା ସତର୍କତା ସଫା କରନ୍ତୁ';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countଟି ସତର୍କତା ସଫା ହେଲା',
      one: '1ଟି ସତର୍କତା ସଫା ହେଲା',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'ହୋମ ସ୍କ୍ରିନ';

  @override
  String get allocationCountries => 'ଦେଶ';

  @override
  String get newsExplainNoteResearch =>
      'AI ବ୍ୟାଖ୍ୟା: ଏହା ୱେବରେ ତଥ୍ୟ ଖୋଜେ, ଲେଖଟି ଖୋଲେ ଏବଂ ଉତ୍ସଟି କେତେ ବିଶ୍ୱସନୀୟ ତାହା ଆକଳନ କରେ। ଏହା ନିବେଶ ପରାମର୍ଶ ନୁହେଁ। ଏହା ଆପଣଙ୍କ ଦୈନିକ ପ୍ରଶ୍ନ ସୀମାରୁ ଯାଏ, କୌଣସି ବିଶ୍ଳେଷଣ ଖର୍ଚ୍ଚ ହୁଏ ନାହିଁ।';

  @override
  String get sourceOfficial => 'ଆଧିକାରିକ';

  @override
  String get sourcePressRelease => 'ପ୍ରେସ ବିଜ୍ଞପ୍ତି';

  @override
  String get sourceMajorNews => 'ପ୍ରମୁଖ ଗଣମାଧ୍ୟମ';

  @override
  String get sourceOpinion => 'ମତାମତ';

  @override
  String get earningsSummaryButton => 'ସର୍ବଶେଷ ରିପୋର୍ଟରେ କ’ଣ ଥିଲା?';

  @override
  String get earningsSummaryNote =>
      'କମ୍ପାନୀର ଫଳାଫଳ ଘୋଷଣା ଏବଂ ୱେବରେ ମିଳୁଥିବା ଗଣମାଧ୍ୟମ ଖବରର AI ସାରାଂଶ। ଏହା ନିବେଶ ପରାମର୍ଶ ନୁହେଁ। ଏହା ଆପଣଙ୍କ ଦୈନିକ ପ୍ରଶ୍ନ ସୀମାରୁ ଯାଏ, କୌଣସି ବିଶ୍ଳେଷଣ ଖର୍ଚ୍ଚ ହୁଏ ନାହିଁ।';

  @override
  String get compareLastSurprise => 'ଗତ ତ୍ରୈମାସିକ EPS ବନାମ ପ୍ରତ୍ୟାଶିତ';

  @override
  String get compareNextReport => 'ପରବର୍ତ୍ତୀ ରିପୋର୍ଟ';

  @override
  String get resolvingDescription =>
      'ଆପଣ କେଉଁ ସେୟାର କହୁଛନ୍ତି ତାହା ଚିହ୍ନଟ କରାଯାଉଛି…';

  @override
  String get instrumentTitle => 'ଏହି ଇନଷ୍ଟ୍ରୁମେଣ୍ଟ ବିଷୟରେ';

  @override
  String get instrumentHint =>
      'ଏହି ସିମ୍ବଲ ପାଇଁ କୌଣସି କମ୍ପାନୀ ପ୍ରୋଫାଇଲ ନାହିଁ – ଏହା ଏକ ETF, ଫଣ୍ଡ ବା ଡିପୋଜିଟରୀ ରସିଦ ହୋଇପାରେ। AI କୁ ପଚାରନ୍ତୁ ଏହା କ’ଣ, ଏଥିରେ କ’ଣ ଅଛି ଏବଂ ଏହାର ଖର୍ଚ୍ଚ କେତେ।';

  @override
  String get instrumentAsk => 'ଏହା କ’ଣ?';

  @override
  String get instrumentNote =>
      'ଜାରିକର୍ତ୍ତାର ଫଣ୍ଡ ପୃଷ୍ଠା ଏବଂ ୱେବରେ ମିଳୁଥିବା ଆର୍ଥିକ ସାଇଟରୁ AI ବ୍ୟାଖ୍ୟା। ଏହା ନିବେଶ ପରାମର୍ଶ ନୁହେଁ। ଏହା ଆପଣଙ୍କ ଦୈନିକ ପ୍ରଶ୍ନ ସୀମାରୁ ଯାଏ, କୌଣସି ବିଶ୍ଳେଷଣ ଖର୍ଚ୍ଚ ହୁଏ ନାହିଁ।';

  @override
  String suggestAskAi(String query) {
    return 'AI କୁ ପଚାରନ୍ତୁ: “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return '$symbols ପାଇଁ ବର୍ତ୍ତମାନର ଦର ଉପଲବ୍ଧ ନାହିଁ।';
  }

  @override
  String get eventsRecentResults => 'ସମ୍ପ୍ରତି ଘୋଷିତ ଫଳାଫଳ';

  @override
  String get saveToNotes => 'ମୋ ନୋଟ୍‌ରେ ସେଭ୍ କରନ୍ତୁ';

  @override
  String get savedToNotes => 'ଆପଣଙ୍କ ନୋଟ୍‌ରେ ସେଭ୍ ହୋଇଛି';

  @override
  String get portfolioDividendsReceived => 'ପ୍ରାପ୍ତ ଡିଭିଡେଣ୍ଡ';

  @override
  String get portfolioDividendsThisYear => 'ଏହି ବର୍ଷ';

  @override
  String get portfolioDividendsAllTime => 'ଏପର୍ୟ୍ୟନ୍ତ ମୋଟ';

  @override
  String get portfolioAddDividend => 'ଡିଭିଡେଣ୍ଡ ଯୋଡ଼ନ୍ତୁ';

  @override
  String portfolioDividendAmount(String currency) {
    return 'ପ୍ରାପ୍ତ ରାଶି ($currency)';
  }

  @override
  String get portfolioDividendDate => 'ଦେୟ ତାରିଖ';

  @override
  String get portfolioDividendsEmpty =>
      'ଏପର୍ୟ୍ୟନ୍ତ କୌଣସି ଡିଭିଡେଣ୍ଡ ରେକର୍ଡ ହୋଇନାହିଁ। ହାତରେ ଯୋଡ଼ନ୍ତୁ, କିମ୍ବା ଆପଣଙ୍କ ବ୍ରୋକରର ଏକ୍ସପୋର୍ଟ ଇମ୍ପୋର୍ଟ କରନ୍ତୁ – ତାହାର ଡିଭିଡେଣ୍ଡ ଧାଡ଼ିଗୁଡ଼ିକ ମଧ୍ୟ ନିଆଯାଏ।';

  @override
  String get portfolioSplit => 'ଷ୍ଟକ୍ ସ୍ପ୍ଲିଟ୍';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'ଷ୍ଟକ୍ ସ୍ପ୍ଲିଟ୍: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'ସ୍ପ୍ଲିଟ୍ ପୂର୍ବ ତାରିଖର କ୍ରୟ ଓ ବିକ୍ରୟ ସଜାଡ଼ି ଦିଆଯାଏ: ସେୟାର ସଂଖ୍ୟା ଗୁଣିତ ହୁଏ ଏବଂ ପ୍ରତି ସେୟାର ମୂଲ୍ୟ ଭାଗ ହୁଏ, ତେଣୁ ଖର୍ଚ୍ଚ ସମାନ ରହେ।';

  @override
  String get portfolioSplitRatio => 'ଅନୁପାତ (ନୂଆ : ପୁରୁଣା)';

  @override
  String get portfolioSplitRatioError =>
      '10:1 ଭଳି ଅନୁପାତ ଲେଖନ୍ତୁ, କିମ୍ବା ରିଭର୍ସ ସ୍ପ୍ଲିଟ୍ ପାଇଁ 1:10।';

  @override
  String get portfolioSplitDate => 'ସ୍ପ୍ଲିଟ୍ ତାରିଖ';

  @override
  String portfolioSplitRow(String ratio) {
    return 'ଷ୍ଟକ୍ ସ୍ପ୍ଲିଟ୍ $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'ଷ୍ଟକ୍ ସ୍ପ୍ଲିଟ୍ ବିଲୋପ ହେଲା';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ଷ୍ଟକ୍ ସ୍ପ୍ଲିଟ୍ ଯୋଡ଼ା ହେଲା',
      one: '1 ଷ୍ଟକ୍ ସ୍ପ୍ଲିଟ୍ ଯୋଡ଼ା ହେଲା',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ଡିଭିଡେଣ୍ଡ ଯୋଡ଼ା ହେଲା',
      one: '1 ଡିଭିଡେଣ୍ଡ ଯୋଡ଼ା ହେଲା',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'ଡିଭିଡେଣ୍ଡ ଏକ୍ସପୋର୍ଟ କରନ୍ତୁ (CSV)';

  @override
  String get portfolioDividendDeleted => 'ଡିଭିଡେଣ୍ଡ ଡିଲିଟ୍ ହେଲା';

  @override
  String get portfolioDividendsHint =>
      'ରାଶି ଆପଣଙ୍କ ଖାତାରେ ଯେପରି ଆସିଲା, ପେଆଉଟ୍ ମୁଦ୍ରାରେ; ମୋଟ ରାଶି ଆଜିର ଦରରେ ରୂପାନ୍ତରିତ ହୁଏ। ଟିକସ ରିଟର୍ଣ୍ଣ ପାଇଁ ଆପଣଙ୍କ ବ୍ରୋକରର ଷ୍ଟେଟମେଣ୍ଟ ବ୍ୟବହାର କରନ୍ତୁ।';

  @override
  String get awayTitle => 'ଆପଣ ନଥିବା ସମୟରେ';

  @override
  String awaySince(String when) {
    return '$when ଠାରୁ';
  }

  @override
  String get awayQuiet => 'ବିଶେଷ କିଛି ବଦଳିନାହିଁ।';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ଆଲର୍ଟ ଟ୍ରିଗର ହେଲା',
      one: '1 ଆଲର୍ଟ ଟ୍ରିଗର ହେଲା',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'ଫଳାଫଳ ଘୋଷିତ: $symbols';
  }

  @override
  String get moveWhyButton => 'ଆଜି କାହିଁକି ଗତି କରୁଛି?';

  @override
  String moveWhyTitle(String percent) {
    return 'ଆଜି $percent';
  }

  @override
  String get moveWhyNote =>
      'ୱେବରେ ମିଳିଥିବା ଆଜିର ଖବର ଆଧାରିତ AI ବ୍ୟାଖ୍ୟା; ପ୍ରକୃତ କାରଣ ଅଜ୍ଞାତ ବା ଭିନ୍ନ ହୋଇପାରେ। ନିବେଶ ପରାମର୍ଶ ନୁହେଁ। ଏହା ଆପଣଙ୍କ ଦୈନିକ ପ୍ରଶ୍ନ ସୀମା ବ୍ୟବହାର କରେ, ବିଶ୍ଳେଷଣ ନୁହେଁ।';

  @override
  String get sectionTechnical => 'ଟେକ୍ନିକାଲ ଚିତ୍ର';

  @override
  String get labelSma50 => '୫୦ ଦିନର ହାରାହାରି';

  @override
  String get labelSma200 => '୨୦୦ ଦିନର ହାରାହାରି';

  @override
  String get labelRsi => 'RSI (୧୪ ଦିନ)';

  @override
  String get labelVolatility30 => 'ଅସ୍ଥିରତା (୩୦ ଦିନ)';

  @override
  String techAbove(String percent) {
    return '$percent ଉପରେ';
  }

  @override
  String techBelow(String percent) {
    return '$percent ତଳେ';
  }

  @override
  String get techOverbought => 'ଓଭରବଟ୍';

  @override
  String get techOversold => 'ଓଭରସୋଲ୍ଡ';

  @override
  String get techNeutral => 'ନିରପେକ୍ଷ';

  @override
  String get techGoldenCross =>
      '୫୦ ଦିନର ହାରାହାରି ୨୦୦ ଦିନର ହାରାହାରିର ଉପରେ ଅଛି – ପାରମ୍ପରିକ ବ୍ୟାଖ୍ୟା ଅନୁସାରେ ଊର୍ଦ୍ଧ୍ୱମୁଖୀ ଧାରା।';

  @override
  String get techDeathCross =>
      '୫୦ ଦିନର ହାରାହାରି ୨୦୦ ଦିନର ହାରାହାରିର ତଳେ ଅଛି – ପାରମ୍ପରିକ ବ୍ୟାଖ୍ୟା ଅନୁସାରେ ନିମ୍ନମୁଖୀ ଧାରା।';

  @override
  String get glossSma50 =>
      'ଗତ ୫୦ କାରବାର ଦିନର ବନ୍ଦ ମୂଲ୍ୟର ହାରାହାରି। ଏହାର ଉପରେ ଥିବା ମୂଲ୍ୟକୁ ପ୍ରାୟତଃ ସ୍ୱଳ୍ପକାଳୀନ ଶକ୍ତି, ତଳେ ଥିବା ମୂଲ୍ୟକୁ ଦୁର୍ବଳତା ବୋଲି ବୁଝାଯାଏ।';

  @override
  String get glossSma200 =>
      'ଗତ ୨୦୦ କାରବାର ଦିନର ବନ୍ଦ ମୂଲ୍ୟର ହାରାହାରି – ଦୀର୍ଘକାଳୀନ ଧାରାର ପାରମ୍ପରିକ ରେଖା। ଅନେକ ନିବେଶକ ଏହାର ଉପରେ ଥିବା ମୂଲ୍ୟକୁ ଦୀର୍ଘକାଳୀନ ଊର୍ଦ୍ଧ୍ୱମୁଖୀ ଧାରା ବୋଲି ମାନନ୍ତି।';

  @override
  String get glossRsi =>
      'ରିଲେଟିଭ୍ ସ୍ଟ୍ରେଂଥ୍ ଇଣ୍ଡେକ୍ସ: ସମ୍ପ୍ରତି ଲାଭକୁ ସମ୍ପ୍ରତି କ୍ଷତି ସହ ୦–୧୦୦ ମାପରେ ତୁଳନା କରେ। ୭୦ ଉପରେ ଷ୍ଟକ୍‌କୁ ପ୍ରାୟତଃ ଓଭରବଟ୍ (ଶୀଘ୍ର ବଢ଼ିଛି), ୩୦ ତଳେ ଓଭରସୋଲ୍ଡ କୁହାଯାଏ – କିନ୍ତୁ ଏକ ଦୃଢ଼ ଧାରା ସେଠାରେ ଦୀର୍ଘ ସମୟ ରହିପାରେ।';

  @override
  String get glossVolatility =>
      'ମୂଲ୍ୟ ଦିନକୁ ଦିନ କେତେ ଉଠାପକା ହୁଏ, ବର୍ଷ ଅନୁସାରେ ମାପ କରାଯାଇଛି: ୨୦% ଅର୍ଥ ଏକ ସାଧାରଣ ବର୍ଷରେ ପ୍ରାୟ ±୨୦% ମଧ୍ୟରେ ଚଳେ। ଅଧିକ ଅସ୍ଥିରତା ଅର୍ଥ ଉଭୟ ଦିଗରେ ବଡ଼ ଗତି।';

  @override
  String get techNote =>
      'ଦୈନିକ ବନ୍ଦ ମୂଲ୍ୟରୁ ଗଣନା କରାଯାଇଛି। ଟେକ୍ନିକାଲ ସଙ୍କେତ ଅତୀତକୁ ବର୍ଣ୍ଣନା କରେ, ଭବିଷ୍ୟତକୁ ନୁହେଁ।';

  @override
  String portfolioAbove200(int above, int count) {
    return '$count ପୋଜିସନ୍ ମଧ୍ୟରୁ $aboveଟି ନିଜ 200-ଦିନର ହାରାହାରିରୁ ଉପରେ';
  }

  @override
  String get watchSignalsTitle => 'ସଙ୍କେତ';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · ଓଭରସୋଲ୍ଡ';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · ଓଭରବଟ୍';
  }

  @override
  String get signalCrossedAbove => '୨୦୦ ଦିନର ହାରାହାରି ଉପରକୁ ଗଲା';

  @override
  String get signalCrossedBelow => '୨୦୦ ଦିନର ହାରାହାରି ତଳକୁ ଗଲା';

  @override
  String get signalAlertsTitle => 'ଟେକ୍ନିକାଲ ସିଗନାଲ ବିଜ୍ଞପ୍ତି';

  @override
  String get signalAlertsSubtitle =>
      'ଦିନକୁ ଥରେ, ଯେତେବେଳେ ଆପଣ ଅନୁସରଣ କରୁଥିବା ଷ୍ଟକ ଓଭରସୋଲ୍ଡ କିମ୍ବା ଓଭରବଟ୍ (RSI) ହୁଏ, କିମ୍ବା ତାହାର ମୂଲ୍ୟ ୨୦୦ ଦିନର ହାରାହାରିକୁ ଅତିକ୍ରମ କରେ।';

  @override
  String get signalAlertsNotification => 'ଟେକ୍ନିକାଲ ସିଗନାଲ';

  @override
  String get glossaryPageTitle => 'ଶବ୍ଦକୋଷ';

  @override
  String get glossaryPageSubtitle =>
      'P/E ରୁ RSI ପର୍ୟ୍ୟନ୍ତ, ଆପ୍ ଦେଖାଉଥିବା ପ୍ରତ୍ୟେକ ସଂଖ୍ୟାର ସରଳ ବ୍ୟାଖ୍ୟା';

  @override
  String get glossarySearchHint => 'ଶବ୍ଦକୋଷରେ ଖୋଜନ୍ତୁ';

  @override
  String get portfolioCash => 'ନଗଦ';

  @override
  String get portfolioCashTitle => 'ନଗଦ ବାଲାନ୍ସ';

  @override
  String get portfolioCashHint =>
      'ଆପଣଙ୍କ ବ୍ରୋକର ନିକଟରେ ଥିବା ନିବେଶ ହୋଇନଥିବା ଅର୍ଥ, ମୁଦ୍ରା ଅନୁସାରେ। ଏହା ମୋଟ ମୂଲ୍ୟ ଏବଂ ବଣ୍ଟନରେ ଗଣନା ହୁଏ; ରିଟର୍ନରେ ନୁହେଁ।';

  @override
  String portfolioCashAmount(String currency) {
    return 'ରାଶି ($currency)';
  }

  @override
  String get portfolioCashEdit => 'ନଗଦ ବାଲାନ୍ସ ସେଟ କରନ୍ତୁ';

  @override
  String get portfolioDividendsExpected => 'ପରବର୍ତ୍ତୀ ଆଶା କରାଯାଉଛି';

  @override
  String get portfolioDividendsExpectedNote =>
      'ଆପଣ ରେକର୍ଡ କରିଥିବା ପେମେଣ୍ଟର ତାରିଖ ଓ ରାଶିରୁ ଆକଳନ କରାଯାଇଛି; କମ୍ପାନୀମାନେ ଏହାକୁ ବଦଳାଇ ପାରନ୍ତି କିମ୍ବା ଛାଡ଼ି ଦେଇ ପାରନ୍ତି।';

  @override
  String portfolioDividendAround(String date) {
    return '$date ପାଖାପାଖି';
  }
}
