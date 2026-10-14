// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Burmese (`my`).
class AppLocalizationsMy extends AppLocalizations {
  AppLocalizationsMy([String locale = 'my']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'ရှယ်ယာတစ်ခုကို ဓာတ်ပုံရိုက်ပြီး ၎င်းအကြောင်း အားလုံးကို သိလိုက်ပါ။';

  @override
  String get homeHint =>
      'ရှယ်ယာလက်မှတ်၊ ပွဲစားအက်ပ် မျက်နှာပြင်၊ သတင်းစာ သို့မဟုတ် ကုမ္ပဏီလိုဂို – ရှယ်ယာကို ခွဲခြားသိနိုင်သည့် မည်သည့်အရာမဆို ရပါသည်။';

  @override
  String get takePhoto => 'ဓာတ်ပုံရိုက်ရန်';

  @override
  String get chooseFromGallery => 'ပြခန်းမှ ရွေးရန်';

  @override
  String get chooseImage => 'ပုံ ရွေးရန်';

  @override
  String get enterTickerManually => 'သင်္ကေတကို ကိုယ်တိုင် ထည့်ရန်';

  @override
  String get tickerInputLabel => 'ရှယ်ယာသင်္ကေတ';

  @override
  String get tickerInputHint => 'ဥပမာ AAPL';

  @override
  String get lookUp => 'ရှာရန်';

  @override
  String demoModeBanner(String symbols) {
    return 'သရုပ်ပြမုဒ် – ဈေးကွက်ဒေတာ ကီး သတ်မှတ်မထားပါ။ နမူနာဒေတာ ရနိုင်သည့် ရှယ်ယာများ: $symbols။';
  }

  @override
  String get recognizing => 'ပုံကို ခွဲခြမ်းစိတ်ဖြာနေသည်…';

  @override
  String get loadingData => 'ဒေတာ ရယူနေသည်…';

  @override
  String get noCandidatesTitle => 'ရှယ်ယာ မတွေ့ပါ';

  @override
  String get noCandidatesBody =>
      'ဤပုံတွင် ရှယ်ယာကို ခွဲခြားမသိနိုင်ပါ။ ပိုကြည်လင်သော ဓာတ်ပုံဖြင့် ထပ်စမ်းကြည့်ပါ သို့မဟုတ် သင်္ကေတကို ကိုယ်တိုင် ထည့်ပါ။';

  @override
  String get whatWeSaw => 'ကျွန်ုပ်တို့ တွေ့ရှိခဲ့သည်များ';

  @override
  String get chooseCandidateTitle => 'မည်သည့် ရှယ်ယာကို ဆိုလိုပါသလဲ။';

  @override
  String confidencePercent(int percent) {
    return 'ယုံကြည်မှု $percent%';
  }

  @override
  String get settings => 'ဆက်တင်များ';

  @override
  String get language => 'ဘာသာစကား';

  @override
  String get systemLanguage => 'စနစ် မူရင်း';

  @override
  String get about => 'အကြောင်း';

  @override
  String get disclaimer =>
      'ဤအက်ပ်သည် သတင်းအချက်အလက်သာ ပေးပြီး ရင်းနှီးမြှုပ်နှံမှု အကြံပြုချက် မဟုတ်ပါ။ ဒေတာများ နောက်ကျနိုင်သည် သို့မဟုတ် မမှန်ကန်နိုင်ပါ။';

  @override
  String dataSource(String source) {
    return 'ဒေတာ ရင်းမြစ်: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'ခွဲခြားသိမှု: $source';
  }

  @override
  String get retry => 'ထပ်စမ်းရန်';

  @override
  String get cancel => 'မလုပ်တော့';

  @override
  String get ok => 'OK';

  @override
  String get close => 'ပိတ်ရန်';

  @override
  String get errorGeneric => 'တစ်ခုခု မှားယွင်းသွားသည်။';

  @override
  String get errorSectionUnavailable => 'ဤကဏ္ဍကို ဖွင့်၍ မရပါ။';

  @override
  String get notAvailable => 'မရှိ';

  @override
  String get sectionIdentity => 'ခွဲခြားသတ်မှတ်ချက်';

  @override
  String get sectionPrice => 'ဈေးနှုန်း';

  @override
  String get sectionValuation => 'တန်ဖိုးဖြတ်ချက်';

  @override
  String get sectionFinancials => 'ဘဏ္ဍာရေး အချက်အလက်';

  @override
  String get sectionDividend => 'အမြတ်ဝေစု';

  @override
  String get sectionProfile => 'ကုမ္ပဏီ အချက်အလက်';

  @override
  String get sectionAnalysts => 'လေ့လာသုံးသပ်သူများ၏ အကြံပြုချက်';

  @override
  String get sectionNews => 'သတင်း';

  @override
  String get sectionRecognition => 'ခွဲခြားသိမှု အသေးစိတ်';

  @override
  String get labelSymbol => 'သင်္ကေတ';

  @override
  String get labelExchange => 'စတော့အိတ်ချိန်း';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'ငွေကြေး';

  @override
  String get labelCountry => 'နိုင်ငံ';

  @override
  String get labelIndustry => 'လုပ်ငန်းအမျိုးအစား';

  @override
  String get labelSector => 'ကဏ္ဍ';

  @override
  String get labelWebsite => 'ဝဘ်ဆိုက်';

  @override
  String get labelIpoDate => 'IPO ရက်စွဲ';

  @override
  String get labelMarketCap => 'ဈေးကွက်တန်ဖိုး';

  @override
  String get labelSharesOutstanding => 'ထုတ်ဝေထားသော ရှယ်ယာများ';

  @override
  String get labelEmployees => 'ဝန်ထမ်းများ';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'ရုံးချုပ်';

  @override
  String get labelDescription => 'ဖော်ပြချက်';

  @override
  String get labelLastPrice => 'နောက်ဆုံးဈေး';

  @override
  String get labelChange => 'ပြောင်းလဲမှု';

  @override
  String get labelOpen => 'ဖွင့်ဈေး';

  @override
  String get labelDayHigh => 'နေ့အတွင်း အမြင့်ဆုံး';

  @override
  String get labelDayLow => 'နေ့အတွင်း အနိမ့်ဆုံး';

  @override
  String get labelPreviousClose => 'ယခင် ပိတ်ဈေး';

  @override
  String get labelWeek52High => '52 ပတ် အမြင့်ဆုံး';

  @override
  String get labelWeek52Low => '52 ပတ် အနိမ့်ဆုံး';

  @override
  String get labelAverageVolume10d => 'ပျမ်းမျှ အရောင်းအဝယ်ပမာဏ (10 ရက်)';

  @override
  String updatedAt(String time) {
    return '$time တွင် အပ်ဒိတ်လုပ်ခဲ့သည်';
  }

  @override
  String get labelPeTrailing => 'P/E (ယခင်ကာလ)';

  @override
  String get labelPeForward => 'P/E (ခန့်မှန်း)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / လွတ်လပ်သော ငွေသားစီးဆင်းမှု';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'ဘီတာ';

  @override
  String get labelRevenueTtm => 'ဝင်ငွေ (TTM)';

  @override
  String get labelNetIncomeTtm => 'အသားတင်အမြတ် (TTM)';

  @override
  String get labelGrossMargin => 'စုစုပေါင်း အမြတ်နှုန်း';

  @override
  String get labelOperatingMargin => 'လုပ်ငန်းလည်ပတ်မှု အမြတ်နှုန်း';

  @override
  String get labelNetMargin => 'အသားတင် အမြတ်နှုန်း';

  @override
  String get labelRoe => 'ရှယ်ယာရှင် ရင်းနှီးငွေအပေါ် အမြတ်';

  @override
  String get labelRoa => 'ပိုင်ဆိုင်မှုအပေါ် အမြတ်';

  @override
  String get labelDebtToEquity => 'အကြွေး / ရှယ်ယာရှင် ရင်းနှီးငွေ';

  @override
  String get labelCurrentRatio => 'လက်ရှိ အချိုး';

  @override
  String get labelRevenueGrowth => 'ဝင်ငွေ တိုးတက်မှု (YoY)';

  @override
  String get labelEpsGrowth => 'EPS တိုးတက်မှု (YoY)';

  @override
  String get labelDividendYield => 'အမြတ်ဝေစု အထွက်နှုန်း';

  @override
  String get labelDividendPerShare => 'တစ်ရှယ်ယာလျှင် အမြတ်ဝေစု';

  @override
  String get labelPayoutRatio => 'အမြတ်ခွဲဝေမှု အချိုး';

  @override
  String get labelConsensus => 'ဘုံသဘောထား';

  @override
  String get ratingStrongBuy => 'အထူး ဝယ်သင့်';

  @override
  String get ratingBuy => 'ဝယ်သင့်';

  @override
  String get ratingHold => 'ထိန်းထားသင့်';

  @override
  String get ratingSell => 'ရောင်းသင့်';

  @override
  String get ratingStrongSell => 'အထူး ရောင်းသင့်';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'လေ့လာသုံးသပ်သူ $count ဦး',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'ကာလ: $period';
  }

  @override
  String get noNews => 'မကြာသေးမီ သတင်း မရှိပါ။';

  @override
  String get openArticle => 'ဆောင်းပါး ဖွင့်ရန်';

  @override
  String get openLinkFailed => 'လင့်ခ်ကို ဖွင့်၍ မရပါ။';

  @override
  String get recognitionSummary => 'အနှစ်ချုပ်';

  @override
  String get recognitionEvidence => 'ဤသို့ ယူဆရသည့် အကြောင်းရင်း';

  @override
  String get recognitionRawText => 'ပုံမှ ဖတ်ယူထားသော စာသား';

  @override
  String get errMissingAnthropicKey =>
      'ပုံ ခွဲခြားသိမှုကို သတ်မှတ်မထားပါ (ANTHROPIC_API_KEY မရှိပါ)။ သင်္ကေတကို ကိုယ်တိုင် ထည့်ပါ။';

  @override
  String get errRecognitionUnreachable =>
      'ခွဲခြားသိမှု ဝန်ဆောင်မှုသို့ ချိတ်ဆက်၍ မရပါ။ အင်တာနက် ချိတ်ဆက်မှုကို စစ်ဆေးပါ။';

  @override
  String errRecognitionHttp(String status) {
    return 'ခွဲခြားသိမှု ဝန်ဆောင်မှုမှ အမှား ပြန်ပေးသည် (HTTP $status)။';
  }

  @override
  String get errRecognitionRefused =>
      'ခွဲခြားသိမှု ဝန်ဆောင်မှုသည် ဤပုံကို လုပ်ဆောင်၍ မရပါ။';

  @override
  String get errRecognitionTruncated =>
      'ခွဲခြားသိမှု တုံ့ပြန်ချက် ပြတ်တောက်သွားသည်။ ထပ်စမ်းကြည့်ပါ။';

  @override
  String get errRecognitionBadResponse =>
      'ခွဲခြားသိမှု ဝန်ဆောင်မှုမှ မမျှော်လင့်ထားသော တုံ့ပြန်ချက် ရရှိသည်။';

  @override
  String get errRecognitionEmpty =>
      'ခွဲခြားသိမှု ဝန်ဆောင်မှုမှ ဗလာ တုံ့ပြန်ချက် ပြန်ပေးသည်။';

  @override
  String get errMissingFinnhubKey =>
      'ဈေးကွက်ဒေတာကို သတ်မှတ်မထားပါ (FINNHUB_API_KEY မရှိပါ)။';

  @override
  String get errMarketUnreachable =>
      'ဈေးကွက်ဒေတာ ဝန်ဆောင်မှုသို့ ချိတ်ဆက်၍ မရပါ။ အင်တာနက် ချိတ်ဆက်မှုကို စစ်ဆေးပါ။';

  @override
  String get errMarketRateLimited =>
      'ဈေးကွက်ဒေတာ ဝန်ဆောင်မှုသို့ တောင်းဆိုမှု များလွန်းနေသည်။ တစ်မိနစ်ခန့် စောင့်ပါ။';

  @override
  String errMarketHttp(String status) {
    return 'ဈေးကွက်ဒေတာ ဝန်ဆောင်မှုမှ အမှား ပြန်ပေးသည် (HTTP $status)။';
  }

  @override
  String get errMarketBadResponse =>
      'ဈေးကွက်ဒေတာ ဝန်ဆောင်မှုမှ မမျှော်လင့်ထားသော တုံ့ပြန်ချက် ရရှိသည်။';

  @override
  String errNoQuote(String symbol) {
    return '$symbol အတွက် ဈေးနှုန်းဒေတာ မတွေ့ပါ။';
  }

  @override
  String errNoProfile(String symbol) {
    return '$symbol အတွက် ကုမ္ပဏီ အချက်အလက် မတွေ့ပါ။';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'သရုပ်ပြမုဒ်သည် $symbols ကိုသာ ပံ့ပိုးသည်။ တိုက်ရိုက်ဒေတာအတွက် FINNHUB_API_KEY ထည့်ပါ။';
  }

  @override
  String errUnknown(String detail) {
    return 'တစ်ခုခု မှားယွင်းသွားသည်: $detail';
  }

  @override
  String get newSearch => 'ရှာဖွေမှု အသစ်';

  @override
  String get recentSearches => 'မကြာသေးမီက';

  @override
  String get noRecentSearches => 'မကြာသေးမီ ရှာဖွေမှု မရှိသေးပါ။';

  @override
  String get clearRecent => 'မကြာသေးမီ စာရင်း ရှင်းရန်';

  @override
  String get greeting => 'ဘယ်ရှယ်ယာကို ကြည့်ကြမလဲ။';

  @override
  String get searchHint => 'သင်္ကေတ သို့မဟုတ် ကုမ္ပဏီအမည်';

  @override
  String get attachImage => 'ပုံ ပူးတွဲရန်';

  @override
  String get searchResultsTitle => 'ရှာဖွေမှု ရလဒ်များ';

  @override
  String errNoResults(String query) {
    return '“$query” အတွက် ရှယ်ယာ မတွေ့ပါ။';
  }

  @override
  String get quickBarHint => 'သင်္ကေတ သို့မဟုတ် ကုမ္ပဏီအမည် ရိုက်ထည့်ပါ…';

  @override
  String get openFullWindow => 'ဝင်းဒိုး ဖွင့်ရန်';

  @override
  String hotkeyHint(String shortcut) {
    return 'WhatStock ကို ခေါ်ရန် မည်သည့်နေရာတွင်မဆို $shortcut ကို နှိပ်ပါ။';
  }

  @override
  String get trayOpen => 'WhatStock ဖွင့်ရန်';

  @override
  String get trayQuickSearch => 'အမြန် ရှာဖွေရန်';

  @override
  String get trayQuit => 'ထွက်ရန်';

  @override
  String get appearance => 'အသွင်အပြင်';

  @override
  String get themeSystem => 'စနစ်';

  @override
  String get themeDark => 'အမှောင်';

  @override
  String get themeLight => 'အလင်း';

  @override
  String get back => 'နောက်သို့';

  @override
  String get aiSectionTitle => 'AI သုံးသပ်ချက်';

  @override
  String get aiIntro =>
      'AI ရေးသားထားသော အသေးစိတ် ခြုံငုံသုံးသပ်ချက် – မကြာသေးမီ သတင်းအနှစ်ချုပ်၊ လုပ်ငန်း၊ အားသာချက်များ၊ အန္တရာယ်များနှင့် မမြင်သာသော အချက်များ၊ တန်ဖိုးဖြတ်ချက်၊ စိတ်ပညာ၊ လူမှုဗေဒ၊ နည်းပညာပိုင်းနှင့် မက်ခရိုစီးပွားရေး ရှုထောင့်များမှ အခြေအနေများပါဝင်သော ဈေးနှုန်း အလားအလာနှင့် စောင့်ကြည့်သင့်သည့် အချက်များ။';

  @override
  String get aiGenerate => 'သုံးသပ်ချက် ထုတ်ရန်';

  @override
  String get aiRegenerate => 'ပြန်ထုတ်ရန်';

  @override
  String get aiGenerating =>
      'သုံးသပ်ချက်ကို ပြင်ဆင်နေသည်… တစ်မိနစ် နှစ်မိနစ်ခန့် ကြာနိုင်သည်။';

  @override
  String get aiSources => 'ရင်းမြစ်များ';

  @override
  String aiGeneratedAt(String time) {
    return '$time တွင် ထုတ်ခဲ့သည်';
  }

  @override
  String get aiDisclaimer =>
      'အများပြည်သူ ဒေတာနှင့် မကြာသေးမီ သတင်းများအပေါ် အခြေခံ၍ AI ထုတ်ပေးထားသော သုံးသပ်ချက် ဖြစ်သည်။ အမှားများ ပါဝင်နိုင်သည် သို့မဟုတ် ခေတ်နောက်ကျနိုင်ပြီး ရင်းနှီးမြှုပ်နှံမှု အကြံပြုချက် မဟုတ်ပါ။';

  @override
  String get errAiNotConfigured =>
      'AI သုံးသပ်ချက်ကို သတ်မှတ်မထားပါ (ANTHROPIC_API_KEY မရှိပါ)။';

  @override
  String get errAiUnreachable =>
      'AI ဝန်ဆောင်မှုသို့ ချိတ်ဆက်၍ မရပါ။ အင်တာနက် ချိတ်ဆက်မှုကို စစ်ဆေးပါ။';

  @override
  String errAiHttp(String status) {
    return 'AI ဝန်ဆောင်မှုမှ အမှား ပြန်ပေးသည် (HTTP $status)။';
  }

  @override
  String get errAiRefused =>
      'AI ဝန်ဆောင်မှုသည် ဤရှယ်ယာကို သုံးသပ်ရန် ငြင်းဆိုခဲ့သည်။';

  @override
  String get errAiBadResponse =>
      'AI ဝန်ဆောင်မှုမှ မမျှော်လင့်ထားသော တုံ့ပြန်ချက် ရရှိသည်။';

  @override
  String get sectionChart => 'ဈေးနှုန်း ဇယား';

  @override
  String get rangeOneWeek => '1 ပတ်';

  @override
  String get rangeOneMonth => '1 လ';

  @override
  String get rangeThreeMonths => '3 လ';

  @override
  String get rangeOneYear => '1 နှစ်';

  @override
  String get rangeFiveYears => '5 နှစ်';

  @override
  String get chartUnavailable =>
      'လက်ရှိ ဒေတာရင်းမြစ်တွင် ဈေးနှုန်း မှတ်တမ်း မရှိပါ။';

  @override
  String get sectionStatements => 'ဘဏ္ဍာရေး ရှင်းတမ်းများ (နှစ်စဉ်)';

  @override
  String get labelFiscalYear => 'ဘဏ္ဍာနှစ်';

  @override
  String get labelRevenue => 'ဝင်ငွေ';

  @override
  String get labelNetIncome => 'အသားတင်အမြတ်';

  @override
  String get labelTotalAssets => 'စုစုပေါင်း ပိုင်ဆိုင်မှု';

  @override
  String get labelTotalLiabilities => 'စုစုပေါင်း ပေးရန်တာဝန်';

  @override
  String get labelEquity => 'ရှယ်ယာရှင်များ၏ ရင်းနှီးငွေ';

  @override
  String get labelOperatingCashFlow => 'လုပ်ငန်းလည်ပတ်မှု ငွေသားစီးဆင်းမှု';

  @override
  String get statementsUnavailable =>
      'ဤရှယ်ယာအတွက် ထုတ်ပြန်ထားသော ဘဏ္ဍာရေး ရှင်းတမ်းများ မရှိပါ။';

  @override
  String get launchAtLogin => 'အကောင့်ဝင်သည့်အခါ စဖွင့်ရန်';

  @override
  String get hotkeyLabel => 'စနစ်တစ်ခုလုံးသုံး ဖြတ်လမ်း';

  @override
  String get hotkeyRecordHint =>
      'ဤနေရာကို နှိပ်ပြီးနောက် ခလုတ်ပေါင်းစပ်မှု အသစ်ကို နှိပ်ပါ';

  @override
  String get hotkeyReset => 'မူရင်းသို့ ပြန်ထားရန်';

  @override
  String get pasteImage => 'ကလစ်ဘုတ်မှ ပုံ ကူးထည့်ရန်';

  @override
  String get errClipboardNoImage => 'ကလစ်ဘုတ်တွင် ပုံ မရှိပါ။';

  @override
  String get favorites => 'အကြိုက်ဆုံးများ';

  @override
  String get addToFavorites => 'အကြိုက်ဆုံးများသို့ ထည့်ရန်';

  @override
  String get removeFromFavorites => 'အကြိုက်ဆုံးများမှ ဖယ်ရှားရန်';

  @override
  String get noFavorites =>
      'အကြိုက်ဆုံး မရှိသေးပါ။ ထည့်ရန် ရှယ်ယာတစ်ခုရှိ ကြယ်ပွင့်ကို တို့ပါ။';

  @override
  String get displayCurrency => 'ပြသမည့် ငွေကြေး';

  @override
  String get displayCurrencyNone => 'ရှယ်ယာ၏ မူလငွေကြေးသာ';

  @override
  String labelConverted(String currency) {
    return '≈ $currency ဖြင့်';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'နှုန်း: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'အပ်ဒိတ်များ';

  @override
  String currentVersion(String version) {
    return 'ဗားရှင်း $version';
  }

  @override
  String get autoUpdate => 'အပ်ဒိတ်များကို အလိုအလျောက် ထည့်သွင်းရန်';

  @override
  String get checkForUpdates => 'အပ်ဒိတ် စစ်ရန်';

  @override
  String get updateChecking => 'အပ်ဒိတ်များကို စစ်ဆေးနေသည်…';

  @override
  String get updateUpToDate => 'နောက်ဆုံးဗားရှင်းကို သုံးနေပါပြီ။';

  @override
  String updateAvailable(String version) {
    return 'ဗားရှင်း $version ရနိုင်ပါပြီ။';
  }

  @override
  String get updateDownloading =>
      'အပ်ဒိတ်ကို နောက်ကွယ်တွင် ဒေါင်းလုဒ်လုပ်နေသည်…';

  @override
  String get updateDownloaded =>
      'အပ်ဒိတ် အသင့်ဖြစ်ပါပြီ။ ထည့်သွင်းရန် ပြန်စတင်ပါ။';

  @override
  String get updateNow => 'အပ်ဒိတ်လုပ်ရန်';

  @override
  String get restartNow => 'ပြန်စတင်ရန်';

  @override
  String get updatesViaStore =>
      'အပ်ဒိတ်များကို အက်ပ်စတိုးမှတစ်ဆင့် အလိုအလျောက် ရရှိပါမည်။';

  @override
  String get updateCheckFailed => 'အပ်ဒိတ်များကို စစ်ဆေး၍ မရပါ။';

  @override
  String get subscription => 'စာရင်းသွင်းမှု';

  @override
  String get planTrial => 'အစမ်းသုံး';

  @override
  String get planNormal => 'ပုံမှန်';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'အသုံးပြုနေသော အစီအစဉ် မရှိပါ';

  @override
  String planAnalysesPerMonth(int count) {
    return 'တစ်လလျှင် သုံးသပ်ချက် $count ခု';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'သုံးသပ်ချက် $count ခုပါသော $days ရက် အခမဲ့ အစမ်းသုံးကာလ';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'အစမ်းသုံးကာလ $days ရက် ကျန်သည်',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'သင်၏ အခမဲ့ အစမ်းသုံးကာလ ပြီးဆုံးသွားပါပြီ။ ဆက်လက်သုံးသပ်ရန် အစီအစဉ်တစ်ခု ရွေးပါ။';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'ဤကာလအတွက် သုံးသပ်ချက် $total ခုတွင် $remaining ခု ကျန်သည်';
  }

  @override
  String extraCredits(int count) {
    return 'အပိုသုံးသပ်ချက် $count ခု';
  }

  @override
  String renewsOn(String date) {
    return '$date တွင် သက်တမ်းတိုးမည်';
  }

  @override
  String get choosePlan => 'အစီအစဉ် ရွေးရန်';

  @override
  String get currentPlan => 'လက်ရှိ အစီအစဉ်';

  @override
  String get subscribe => 'စာရင်းသွင်းရန်';

  @override
  String get perMonth => '/ လ';

  @override
  String get extraPacksTitle => 'ထပ်လိုပါသလား။ အပိုသုံးသပ်ချက်များ ဝယ်ပါ';

  @override
  String get extraPacksHint =>
      'အပိုသုံးသပ်ချက်များသည် သက်တမ်း မကုန်ဆုံးဘဲ လစဉ်ခွဲတမ်း ကုန်ပြီးနောက်မှ အသုံးပြုမည်။';

  @override
  String get buy => 'ဝယ်ရန်';

  @override
  String get restorePurchases => 'ဝယ်ယူမှုများ ပြန်ယူရန်';

  @override
  String get manageSubscription => 'စာရင်းသွင်းမှု စီမံရန်';

  @override
  String get purchaseSuccess => 'ကျေးဇူးတင်ပါသည်။ သင်၏ ဝယ်ယူမှု အသက်ဝင်ပါပြီ။';

  @override
  String get purchasePending => 'ဝယ်ယူမှု ဆိုင်းငံ့ထားသည်…';

  @override
  String get purchaseFailed => 'ဝယ်ယူမှုကို အပြီးသတ်၍ မရပါ။';

  @override
  String get purchaseCanceled => 'ဝယ်ယူမှုကို ပယ်ဖျက်လိုက်သည်။';

  @override
  String get billingUnavailable =>
      'ဤပလက်ဖောင်းတွင် ဝယ်ယူ၍ မရသေးပါ။ သင့်ဖုန်း သို့မဟုတ် Mac တွင် စာရင်းသွင်းပါ၊ သင့်အစီအစဉ်သည် စက်အားလုံးတွင် အလုပ်လုပ်ပါမည်။';

  @override
  String get errQuotaExceeded =>
      'ဤကာလအတွက် သုံးသပ်ချက် ကုန်သွားပါပြီ။ အစီအစဉ်ကို အဆင့်မြှင့်ပါ သို့မဟုတ် အပိုသုံးသပ်ချက်များ ဝယ်ပါ။';

  @override
  String get errTrialExpired =>
      'သင်၏ အခမဲ့ အစမ်းသုံးကာလ ပြီးဆုံးသွားပါပြီ။ ဆက်လက်အသုံးပြုရန် အစီအစဉ်တစ်ခု ရွေးပါ။';

  @override
  String get errNoPlan =>
      'AI သုံးသပ်ချက်အတွက် အသုံးပြုနေသော အစီအစဉ် လိုအပ်သည်။';

  @override
  String get viewPlans => 'အစီအစဉ်များ ကြည့်ရန်';

  @override
  String get usageTitle => 'အသုံးပြုမှု';

  @override
  String get demoPurchaseNote =>
      'သရုပ်ပြ ငွေပေးချေမှု: ဤပလက်ဖောင်းရှိ ဝယ်ယူမှုများသည် အစမ်းသဘောသာ ဖြစ်သည်။';

  @override
  String get mostPopular => 'လူကြိုက်အများဆုံး';

  @override
  String get bestValue => 'အတန်ဆုံး';

  @override
  String get planFeaturesCommon =>
      'ဓာတ်ပုံ ခွဲခြားသိမှု၊ တိုက်ရိုက်ဒေတာ၊ ဇယားများ၊ အကြိုက်ဆုံးများနှင့် ဘာသာစကား 120 မျိုးလုံးကို အစီအစဉ်တိုင်းတွင် ထည့်သွင်းထားသည်။ ခွဲတမ်းသည် AI သုံးသပ်ချက်များအတွက် ဖြစ်သည်။';

  @override
  String get searchLanguages => 'ဘာသာစကား ရှာရန်…';

  @override
  String get noLanguageMatch => 'ကိုက်ညီသော ဘာသာစကား မရှိပါ။';

  @override
  String get aiSettings => 'AI သုံးသပ်ချက်';

  @override
  String get aiLength => 'အရှည်';

  @override
  String get aiDepthBrief => 'အကျဉ်း';

  @override
  String get aiDepthStandard => 'စံ';

  @override
  String get aiDepthDeep => 'အသေးစိတ်';

  @override
  String get aiDepthBriefDesc => 'အဓိကအချက်များကို မြန်မြန်ဆန်ဆန်။';

  @override
  String get aiDepthStandardDesc => 'ကဏ္ဍအားလုံးပါသော အစီရင်ခံစာ အပြည့်အစုံ။';

  @override
  String get aiDepthDeepDesc =>
      'ဝဘ်ရှာဖွေမှု ပိုများခြင်း၊ ပြိုင်ဘက်ကုမ္ပဏီများနှင့် နှိုင်းယှဉ်ခြင်းနှင့် ပိုမိုနက်ရှိုင်းသော အသေးစိတ်။';

  @override
  String aiDepthWords(String min, String max) {
    return 'စကားလုံး $min–$max ခန့်';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'သုံးသပ်ချက် $count ခု သုံးသည်',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'စာဖတ်သူ အဆင့်';

  @override
  String get aiReaderBeginner => 'စတင်သူ';

  @override
  String get aiReaderExperienced => 'အတွေ့အကြုံရှိသူ';

  @override
  String get aiReaderBeginnerDesc =>
      'ရိုးရှင်းသော ဘာသာစကား၊ နည်းပညာဝေါဟာရတိုင်းကို ရှင်းပြထားသည်။';

  @override
  String get aiReaderExperiencedDesc =>
      'စံ ဘဏ္ဍာရေးဝေါဟာရများဖြင့် ပိုမိုကျစ်လျစ်သော စာသား။';

  @override
  String get aiCounterArgument => 'အပြင်းထန်ဆုံး ဆန့်ကျင်ဘက် အငြင်းအခုံ';

  @override
  String get aiCounterArgumentDesc =>
      'အနှစ်ချုပ်သည် ၎င်း၏ ကောက်ချက်ကို ဆန့်ကျင်သည့် အကောင်းဆုံး အငြင်းအခုံဖြင့် အမြဲ အဆုံးသတ်သည်။';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'သင့်အစီအစဉ်ဖြင့် သုံးသပ်ချက်တစ်ခုလျှင် ဝဘ်ရှာဖွေမှု အများဆုံး $count ကြိမ်',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'အစီအစဉ်အလိုက် စံအရှည်: ပုံမှန် $normal၊ Pro $pro၊ Max $max၊ Ultra $ultra။ အကျဉ်းသည် 2 ကြိမ် လျော့၍ အသေးစိတ်သည် 2 ကြိမ် ပိုသုံးသည်။';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ဝဘ်ရှာဖွေမှု အများဆုံး $count ကြိမ်',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'သုံးသပ်ချက်တစ်ခုလျှင် ဝဘ်ရှာဖွေမှု $count ကြိမ်',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'ဤအရှည်အတွက် သုံးသပ်ချက် $needed ခု လိုအပ်သော်လည်း $left ခုသာ ကျန်ပါသည်။ ဆက်တင်များတွင် ပိုတိုသော အရှည်ကို ရွေးပါ သို့မဟုတ် သုံးသပ်ချက် ထပ်ယူပါ။';
  }

  @override
  String get outlookMarketMood => 'ဈေးကွက် စိတ်ဓာတ်';

  @override
  String get moodVeryPessimistic => 'အလွန် အဆိုးမြင်';

  @override
  String get moodPessimistic => 'အဆိုးမြင်';

  @override
  String get moodNeutral => 'ကြားနေ';

  @override
  String get moodOptimistic => 'အကောင်းမြင်';

  @override
  String get moodVeryOptimistic => 'အလွန် အကောင်းမြင်';

  @override
  String get scenarioBull => 'အကောင်းမြင် အခြေအနေ';

  @override
  String get scenarioBase => 'အခြေခံ အခြေအနေ';

  @override
  String get scenarioBear => 'အဆိုးမြင် အခြေအနေ';

  @override
  String outlookCurrentPrice(String price) {
    return 'လက်ရှိဈေး: $price';
  }

  @override
  String get outlookKeyLevels => 'အဓိက ဈေးအဆင့်များ';

  @override
  String get keyLevelSupport => 'ထောက်ခံဈေး';

  @override
  String get keyLevelResistance => 'ခုခံဈေး';

  @override
  String get keyLevelAnchor => 'ကိုးကားဈေး';

  @override
  String get upcomingEvents => 'လာမည့် ဖြစ်ရပ်များ';

  @override
  String get outlookChartNote =>
      'ခန့်မှန်းခြေ အပိုင်းအခြားများသာ ဖြစ်သည်။ ဖြစ်နိုင်ခြေများသည် အကြမ်းဖျင်း ချင့်ချိန်ချက်များဖြစ်ပြီး ကြိုတင်ဟောကိန်း မဟုတ်ပါ။';

  @override
  String get accountTitle => 'အကောင့်';

  @override
  String get signIn => 'လက်မှတ်ထိုးဝင်ရန်';

  @override
  String get signOut => 'လက်မှတ်ထိုးထွက်ရန်';

  @override
  String get notSignedIn => 'လက်မှတ်ထိုးဝင်မထားပါ';

  @override
  String get accountBenefit =>
      'သင့်စာရင်းသွင်းမှုကို စက်အားလုံးတွင် အသုံးပြုနိုင်ရန် လက်မှတ်ထိုးဝင်ပါ။';

  @override
  String get accountSyncedNote =>
      'သင့်စာရင်းသွင်းမှုနှင့် ကျန်ရှိသော သုံးသပ်ချက်များသည် စက်တိုင်းတွင် တူညီသည်။';

  @override
  String get signInTitle => 'WhatStock သို့ လက်မှတ်ထိုးဝင်ရန်';

  @override
  String get emailLabel => 'အီးမေးလ်လိပ်စာ';

  @override
  String get continueWithEmail => 'အီးမေးလ်ဖြင့် ဆက်လုပ်ရန်';

  @override
  String codeSentTo(String email) {
    return '$email သို့ ဂဏန်း 6 လုံးပါ ကုဒ်တစ်ခု ပို့ထားသည်။ ၎င်းကို 10 မိနစ်အတွင်း အသုံးပြုနိုင်သည်။';
  }

  @override
  String get codeLabel => 'လက်မှတ်ထိုးဝင်ရန် ကုဒ်';

  @override
  String get resendCode => 'ကုဒ်အသစ် ပို့ရန်';

  @override
  String get useDifferentEmail => 'အခြား အီးမေးလ် သုံးရန်';

  @override
  String get errInvalidCode => 'ကုဒ် မှားနေသည် သို့မဟုတ် သက်တမ်းကုန်သွားပြီ။';

  @override
  String get errInvalidEmail => 'မှန်ကန်သော အီးမေးလ်လိပ်စာ ထည့်ပါ။';

  @override
  String get errSignInFailed =>
      'လက်မှတ်ထိုးဝင်၍ မရပါ။ ချိတ်ဆက်မှုကို စစ်ဆေးပြီး ထပ်စမ်းကြည့်ပါ။';

  @override
  String get checkoutWaiting =>
      'သင့်ဘရောင်ဇာတွင် ငွေပေးချေမှုကို အပြီးသတ်ပါ။ ပြီးသွားသည့်အခါ အက်ပ်သည် အလိုအလျောက် အပ်ဒိတ်ဖြစ်မည်။';

  @override
  String get paymentViaStripe =>
      'Stripe မှတစ်ဆင့် သင့်ဘရောင်ဇာတွင် လုံခြုံစွာ ငွေပေးချေပါ။ အချိန်မရွေး ပယ်ဖျက်နိုင်သည်။';

  @override
  String get paymentViaStore =>
      'သင်၏ App Store သို့မဟုတ် Google Play အကောင့်မှတစ်ဆင့် ငွေတောင်းခံသည်။ စတိုး ဆက်တင်များတွင် အချိန်မရွေး ပယ်ဖျက်နိုင်သည်။';

  @override
  String get keySpace => 'Space';

  @override
  String get doubleOptionTitle => 'Option ကို နှစ်ချက် နှိပ်ရန်';

  @override
  String get doubleOptionSubtitle =>
      'Option ခလုတ်ကို အမြန် နှစ်ချက်နှိပ်ခြင်းဖြင့်လည်း WhatStock ကို ခေါ်နိုင်သည်။';

  @override
  String get doubleOptionPermission =>
      'အခြားအက်ပ်များတွင်ပါ အလုပ်လုပ်စေရန် စနစ်ဆက်တင်များ → ကိုယ်ရေးလုံခြုံမှုနှင့် လုံခြုံရေး → ထည့်သွင်းမှု စောင့်ကြည့်ခြင်း တွင် WhatStock ကို ခွင့်ပြုပြီး အက်ပ်ကို ပြန်ဖွင့်ပါ။';

  @override
  String get openSystemSettings => 'စနစ်ဆက်တင်များ ဖွင့်ရန်';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'WhatStock ကို ခေါ်ရန် မည်သည့်နေရာတွင်မဆို $shortcut ကို နှိပ်ပါ သို့မဟုတ် Option ကို နှစ်ချက်နှိပ်ပါ။';
  }

  @override
  String get scenarioMostLikely => 'ဖြစ်နိုင်ခြေ အများဆုံး';

  @override
  String get longTermToday => 'ယနေ့';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years နှစ်',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return 'တစ်နှစ်လျှင် $range';
  }

  @override
  String longTermLikely(String price) {
    return 'ဖြစ်နိုင်ခြေ အများဆုံး $price';
  }

  @override
  String get confidenceLow => 'ယုံကြည်မှု နည်း';

  @override
  String get confidenceMedium => 'ယုံကြည်မှု အလယ်အလတ်';

  @override
  String get confidenceHigh => 'ယုံကြည်မှု မြင့်';

  @override
  String get longTermNote =>
      'ရေရှည် အပိုင်းအခြားများသည် ဖော်ပြထားသော ယူဆချက်များအပေါ် အခြေခံပြီး အချိန်နှင့်အမျှ ကျယ်လာသည်။ ဈေးနှုန်းများတွင် အမြတ်ဝေစု မပါဝင်ပါ။ အကြမ်းဖျင်း ချင့်ချိန်ချက်များဖြစ်ပြီး ကြိုတင်ဟောကိန်း မဟုတ်ပါ။';

  @override
  String get portfolio => 'ပေါ့ဖိုလီယို';

  @override
  String get portfolioEmpty =>
      'ဤနေရာတွင် ဘာမျှ မရှိသေးပါ။ သင်ပိုင်ဆိုင်ထားသည်များကို စောင့်ကြည့်ရန် ရှယ်ယာတစ်ခုကို ဖွင့်ပြီး “ပေါ့ဖိုလီယိုသို့ ထည့်ရန်” ကို တို့ပါ။';

  @override
  String get portfolioLocalNote =>
      'ဤစက်တွင်သာ သိမ်းဆည်းထားသည်။ စုစုပေါင်းများကို ECB ရည်ညွှန်းနှုန်းဖြင့် ပြောင်းလဲတွက်ချက်ထားပြီး ဈေးနှုန်းများ နောက်ကျနိုင်သည်။';

  @override
  String get addToPortfolio => 'ပေါ့ဖိုလီယိုသို့ ထည့်ရန်';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol ထည့်ရန်';
  }

  @override
  String get portfolioQuantity => 'ရှယ်ယာ အရေအတွက်';

  @override
  String portfolioBuyPrice(String currency) {
    return 'တစ်ရှယ်ယာလျှင် ဈေးနှုန်း ($currency)';
  }

  @override
  String get portfolioBuyDate => 'ဝယ်ယူသည့် ရက်စွဲ';

  @override
  String get portfolioAdd => 'ထည့်ရန်';

  @override
  String get portfolioInvalidNumber => 'သုညထက် ကြီးသော ဂဏန်းတစ်ခု ထည့်ပါ။';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol ကို သင့်ပေါ့ဖိုလီယိုသို့ ထည့်ပြီးပါပြီ။';
  }

  @override
  String get portfolioTotalValue => 'စုစုပေါင်း တန်ဖိုး';

  @override
  String get portfolioToday => 'ယနေ့';

  @override
  String get portfolioGainLoss => 'အမြတ်/အရှုံး';

  @override
  String get portfolioInvested => 'ရင်းနှီးထားငွေ';

  @override
  String get portfolioAllocation => 'ခွဲဝေမှု';

  @override
  String get portfolioPositions => 'ကိုင်ဆောင်ထားမှုများ';

  @override
  String portfolioAvgCost(String price) {
    return 'ပျမ်းမျှ ကုန်ကျစရိတ် $price';
  }

  @override
  String get portfolioYourPosition => 'သင်၏ ကိုင်ဆောင်ထားမှု';

  @override
  String get portfolioPurchases => 'ဝယ်ယူမှုများ';

  @override
  String get portfolioRemove => 'ဖယ်ရှားရန်';

  @override
  String get portfolioExcluded =>
      'ဈေးနှုန်း သို့မဟုတ် ငွေလဲနှုန်း မရှိသော ကိုင်ဆောင်ထားမှုများကို စုစုပေါင်းတွင် ထည့်မတွက်ပါ။';

  @override
  String get priceAlerts => 'ဈေးနှုန်း သတိပေးချက်များ';

  @override
  String get setPriceAlert => 'ဈေးနှုန်း သတိပေးချက် သတ်မှတ်ရန်';

  @override
  String alertDialogTitle(String symbol) {
    return 'ဈေးနှုန်း သတိပေးချက် · $symbol';
  }

  @override
  String get alertKindAbove => 'အထက်သို့ တက်လျှင်';

  @override
  String get alertKindBelow => 'အောက်သို့ ကျလျှင်';

  @override
  String get alertKindMove => 'တစ်ရက်အတွင်း များစွာ ပြောင်းလဲလျှင်';

  @override
  String alertTargetPrice(String currency) {
    return 'ဈေးနှုန်း ($currency)';
  }

  @override
  String get alertMovePercent => 'နေ့စဉ် ပြောင်းလဲမှု (%)';

  @override
  String get alertAlreadyMet => 'ဈေးနှုန်းသည် ဤအဆင့်ကို ကျော်လွန်ပြီး ဖြစ်သည်။';

  @override
  String get alertSave => 'သတိပေးချက် သတ်မှတ်ရန်';

  @override
  String alertCreated(String symbol) {
    return '$symbol အတွက် သတိပေးချက် သတ်မှတ်ပြီးပါပြီ။';
  }

  @override
  String get alertsEmpty =>
      'ဈေးနှုန်း သတိပေးချက် မရှိသေးပါ။ သတ်မှတ်ရန် ရှယ်ယာတစ်ခုကို ဖွင့်ပြီး ခေါင်းလောင်းကို တို့ပါ။';

  @override
  String get alertsNote =>
      'WhatStock လည်ပတ်နေစဉ် သတိပေးချက်များကို 5 မိနစ်တိုင်း စစ်ဆေးသည်။ ကွန်ပျူတာတွင် မီနူးဘား သို့မဟုတ် ထရေးတွင် ဆက်လက် လည်ပတ်နေမည်။ ဖုန်းတွင်မူ လောလောဆယ် အက်ပ်ဖွင့်ထားစဉ်သာ သတိပေးချက်များ ရောက်လာမည်။';

  @override
  String alertDescAbove(String price) {
    return '$price အထက်';
  }

  @override
  String alertDescBelow(String price) {
    return '$price အောက်';
  }

  @override
  String alertDescMove(String percent) {
    return 'နေ့စဉ် ပြောင်းလဲမှု ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return '$date တွင် $price ဖြင့် သတိပေးခဲ့သည်';
  }

  @override
  String get alertRearm => 'ပြန်ဖွင့်ရန်';

  @override
  String get alertDelete => 'ဖျက်ရန်';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol သည် $price အထက်သို့ တက်သွားသည်';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol သည် $price အောက်သို့ ကျသွားသည်';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol သည် ယနေ့ $percent ပြောင်းလဲသွားသည်';
  }

  @override
  String alertHitBody(String price) {
    return 'လက်ရှိဈေး: $price';
  }

  @override
  String get alertOpen => 'ဖွင့်ရန်';

  @override
  String get keepInTrayTitle => 'ဝင်းဒိုး ပိတ်ထားချိန်တွင် ဆက်လက် လည်ပတ်ရန်';

  @override
  String get keepInTraySubtitle =>
      'WhatStock သည် မီနူးဘား သို့မဟုတ် ထရေးတွင် ရှိနေမည်ဖြစ်၍ ဖြတ်လမ်းခလုတ်နှင့် ဈေးနှုန်း သတိပေးချက်များ ဆက်လက် အလုပ်လုပ်မည်။';

  @override
  String get termsOfUse => 'အသုံးပြုမှု စည်းမျဉ်းများ';

  @override
  String get privacyPolicy => 'ကိုယ်ရေးအချက်အလက် မူဝါဒ';

  @override
  String get subscriptionLegal =>
      'စာရင်းသွင်းမှုများသည် သင် ပယ်ဖျက်သည်အထိ လစဉ် အလိုအလျောက် သက်တမ်းတိုးသည်။ စာရင်းသွင်းခြင်းဖြင့် အသုံးပြုမှု စည်းမျဉ်းများနှင့် ကိုယ်ရေးအချက်အလက် မူဝါဒကို လက်ခံပါသည်။';

  @override
  String get deleteAccount => 'အကောင့် ဖျက်ရန်';

  @override
  String get deleteAccountTitle => 'သင့်အကောင့်ကို ဖျက်မလား။';

  @override
  String get deleteAccountBody =>
      'သင့်အကောင့်နှင့် ကျွန်ုပ်တို့ ဆာဗာတွင် သိမ်းထားသော အရာအားလုံး (အီးမေးလ်၊ ခွဲတမ်း၊ အသုံးပြုမှု) ကို အပြီးအပိုင် ဖျက်မည်ဖြစ်ပြီး မသုံးရသေးသော သုံးသပ်ချက်များ ဆုံးရှုံးမည်။ ဘရောင်ဇာတွင် ငွေပေးထားသော စာရင်းသွင်းမှုကို ချက်ချင်း ပယ်ဖျက်မည်ဖြစ်ပြီး App Store သို့မဟုတ် Google Play စာရင်းသွင်းမှုကိုမူ စတိုး၏ ဆက်တင်များတွင် ပယ်ဖျက်ရမည်။';

  @override
  String get deleteLocalData =>
      'ဤစက်ပေါ်ရှိ ဒေတာများကိုပါ ဖျက်ရန် (ပေါ့ဖိုလီယို၊ သတိပေးချက်များ၊ အကြိုက်ဆုံးများ၊ မှတ်တမ်း၊ သိမ်းထားသော သုံးသပ်ချက်များ)';

  @override
  String get deleteAccountConfirm => 'အပြီးအပိုင် ဖျက်ရန်';

  @override
  String get accountDeleted => 'သင့်အကောင့်ကို ဖျက်လိုက်ပါပြီ။';

  @override
  String get errDeleteAccount =>
      'အကောင့်ကို ဖျက်၍ မရပါ။ ချိတ်ဆက်မှုကို စစ်ဆေးပြီး ထပ်စမ်းကြည့်ပါ။';

  @override
  String get aiTrialBriefNote =>
      'အစမ်းသုံး သုံးသပ်ချက်များသည် အကျဉ်းဖြစ်ပြီး ပိုမြန်သော AI မော်ဒယ်ဖြင့် ပြုလုပ်ထားပါသည်။ အစီအစဉ်တစ်ခုဖြင့် ကျွန်ုပ်တို့၏ အစွမ်းအထက်ဆုံး AI၊ ဝဘ်ရှာဖွေမှု ပိုများခြင်းနှင့် စံ နှင့် အသေးစိတ် အရှည်များကို ရရှိပါမည်။';

  @override
  String get billingMonthly => 'လစဉ်';

  @override
  String get billingYearly => 'နှစ်စဉ်';

  @override
  String get yearlyDiscount => '2 လ အခမဲ့';

  @override
  String get perYear => '/ နှစ်';

  @override
  String pricePerMonthApprox(String price) {
    return 'တစ်လလျှင် ≈ $price';
  }

  @override
  String get subscriptionLegalYearly =>
      'နှစ်စဉ် စာရင်းသွင်းမှုများသည် သင် ပယ်ဖျက်သည်အထိ နှစ်တိုင်း အလိုအလျောက် သက်တမ်းတိုးသည်။ စာရင်းသွင်းခြင်းဖြင့် အသုံးပြုမှု စည်းမျဉ်းများနှင့် ကိုယ်ရေးအချက်အလက် မူဝါဒကို လက်ခံပါသည်။';

  @override
  String get myAnalyses => 'ကျွန်ုပ်၏ သုံးသပ်ချက်များ';

  @override
  String get navAlerts => 'သတိပေးချက်';

  @override
  String get inviteTitle => 'ကန့်သတ်ထားသော အစမ်းကြည့်ရှုမှု';

  @override
  String get inviteBody =>
      'WhatStock ကို လောလောဆယ် ဖိတ်ကြားချက်ဖြင့်သာ အသုံးပြုနိုင်သည်။ သင်ရရှိထားသော ဖိတ်ကြားကုဒ်ကို ထည့်ပါ။';

  @override
  String get inviteCodeLabel => 'ဖိတ်ကြားကုဒ်';

  @override
  String get inviteContinue => 'ဆက်လုပ်ရန်';

  @override
  String get inviteInvalid => 'ဤဖိတ်ကြားကုဒ်သည် မမှန်ကန်ပါ။';

  @override
  String get inviteExpired =>
      'ဤဖိတ်ကြားချက် သက်တမ်းကုန်သွားပြီ။ သင့်ကို ဖိတ်ကြားသူထံမှ ကုဒ်အသစ် တောင်းပါ။';

  @override
  String get inviteDeviceLimit =>
      'ဤဖိတ်ကြားကုဒ်ကို ခွင့်ပြုထားသော စက်အရေအတွက် အများဆုံးတွင် အသုံးပြုပြီးဖြစ်သည်။';

  @override
  String get previewConfidential => 'လျှို့ဝှက် အစမ်းကြည့်ရှုမှု';

  @override
  String get errPreviewDailyLimit =>
      'ဤအစမ်းကြည့်ရှုမှု၏ ယနေ့ ခွဲခြမ်းစိတ်ဖြာမှု ကန့်သတ်ချက် ပြည့်သွားပါပြီ။ မနက်ဖြန် ထပ်ကြိုးစားပါ။';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'လွန်ခဲ့သော $count နာရီက',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'လွန်ခဲ့သော $count ရက်က',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'ဤသုံးသပ်ချက်ကို အပ်ဒိတ်လုပ်မလား။';

  @override
  String staleBody(String age) {
    return '၎င်းကို $age ထုတ်ခဲ့သည်။ ထိုအချိန်မှစ၍ ဈေးနှုန်းများ၊ သတင်းများနှင့် ရလဒ်များ ပြောင်းလဲသွားနိုင်သည်။';
  }

  @override
  String get staleKeep => 'ယခင်တစ်ခုကို ပြရန်';

  @override
  String get staleRefresh => 'အသစ်ထုတ်ရန်';

  @override
  String seeAll(int count) {
    return 'အားလုံးကြည့်ရန် ($count)';
  }

  @override
  String get searchAnalyses => 'သင့်သုံးသပ်ချက်များကို ရှာရန်';

  @override
  String get deleteAnalysis => 'ဖျက်ရန်';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol သုံးသပ်ချက်ကို ဖျက်လိုက်ပြီ';
  }

  @override
  String get keyLevelAlertHint =>
      'ဈေးနှုန်း ထိုအဆင့်သို့ ရောက်သည့်အခါ သတိပေးချက် ရယူရန် အဆင့်တစ်ခုကို တို့ပါ။';

  @override
  String get shareAnalysisTitle => 'သုံးသပ်ချက်ကို မျှဝေရန်';

  @override
  String get shareAsImage => 'ပုံအဖြစ် မျှဝေရန်';

  @override
  String get shareAsText => 'စာသားအဖြစ် မျှဝေရန်';

  @override
  String get shareCardFooter => 'WhatStock ဖြင့် ပြုလုပ်ထားသည်';

  @override
  String get shareCardDisclaimer =>
      'AI သုံးသပ်ချက် · ရင်းနှီးမြှုပ်နှံမှု အကြံပြုချက် မဟုတ်ပါ';
}
