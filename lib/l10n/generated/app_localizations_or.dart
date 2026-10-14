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
}
