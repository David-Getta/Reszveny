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
  String get labelYieldOnCost => 'ဝယ်ဈေးအပေါ် အထွက်နှုန်း';

  @override
  String get labelDividendGrowth5y => 'အမြတ်ဝေစု တိုးတက်မှု (5 နှစ်)';

  @override
  String get dividendNone => 'ပြီးခဲ့သော 12 လအတွင်း အမြတ်ဝေစု မပေးခဲ့ပါ။';

  @override
  String get dividendOnYourShares => 'သင့်ရှယ်ယာများအတွက်၊ တစ်နှစ်လျှင်';

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
  String homeDividendsThisYear(String amount) {
    return 'ယခုနှစ် အမြတ်ဝေစု: $amount';
  }

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

  @override
  String get referralTitle => 'သူငယ်ချင်းများကို ဖိတ်ခေါ်ရန်';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'အပိုသုံးသပ်ချက် $count ခု',
    );
    return 'သင့်ကုဒ်ကို မျှဝေပါ။ သင့်သူငယ်ချင်းသည် $_temp0ကို ချက်ချင်း ရရှိမည်ဖြစ်ပြီး ၎င်း၏ ပထမဆုံး သုံးသပ်ချက်ပြီးနောက် သင်လည်း အလားတူ ရရှိမည်။';
  }

  @override
  String get referralYourCode => 'သင့်ကုဒ်';

  @override
  String referralStats(int invited, int rewarded) {
    return 'ဖိတ်ခေါ်ထားသူ: $invited · ဆုရရှိပြီး: $rewarded';
  }

  @override
  String get referralHaveCode => 'သူငယ်ချင်းထံမှ ကုဒ် ရှိပါသလား။';

  @override
  String get referralRedeem => 'အသုံးပြုရန်';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'အပိုသုံးသပ်ချက် $count ခု ထည့်ပြီးပါပြီ။ ကြိုဆိုပါသည်!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown => 'ဤကုဒ် မရှိပါ။ စစ်ဆေးပြီး ထပ်ကြိုးစားပါ။';

  @override
  String get referralErrOwn => 'သင့်ကိုယ်ပိုင်ကုဒ်ကို အသုံးပြု၍ မရပါ။';

  @override
  String get referralErrAlready =>
      'သင်သည် သူငယ်ချင်းတစ်ဦး၏ ကုဒ်ကို အသုံးပြုပြီးဖြစ်သည်။';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'အပိုသုံးသပ်ချက် $count ခု',
    );
    return 'ကျွန်ုပ်သည် WhatStock ဖြင့် ရှယ်ယာများကို သုံးသပ်ပါသည်- ရှယ်ယာတစ်ခု၏ ဓာတ်ပုံရိုက်လိုက်ရုံဖြင့် AI က ရှင်းပြပေးသည်။ ကျွန်ုပ်၏ ကုဒ် $code ဖြင့် သင် $_temp0 ရရှိမည်။';
  }

  @override
  String get referralCopied => 'ကုဒ် ကူးယူပြီးပါပြီ';

  @override
  String get onboardTitle1 => 'ရှယ်ယာကို ဓာတ်ပုံရိုက်ပါ';

  @override
  String get onboardBody1 =>
      'ပွဲစားအက်ပ်မျက်နှာပြင်၊ သတင်းစာ သို့မဟုတ် ကုမ္ပဏီလိုဂို တစ်ခုခုရှိရုံဖြင့် လုံလောက်ပါသည် – WhatStock က ရှယ်ယာကို မှတ်သိပြီး ၎င်း၏ ဈေးနှုန်း၊ ဇယားနှင့် အဓိကကိန်းဂဏန်းများကို ပြသပေးပါသည်။';

  @override
  String get onboardTitle2 => 'မိနစ်ပိုင်းအတွင်း နားလည်လိုက်ပါ';

  @override
  String get onboardBody2 =>
      'AI သုံးသပ်ချက်က ရှယ်ယာကို ဘာက လှုပ်ရှားစေသည်၊ အန္တရာယ်များ၊ တန်ဖိုးဖြတ်ချက်နှင့် ဈေးနှုန်း ဘယ်ဘက်သို့ ဦးတည်နိုင်သည်ကို ဖြစ်နိုင်ခြေ သုံးမျိုးဖြင့် ရှင်းပြပေးပါသည် – ရင်းမြစ်များနှင့်တကွ သင့်ဘာသာစကားဖြင့်။';

  @override
  String get onboardTitle3 => 'အမြဲ သတင်းမှီနေပါ';

  @override
  String get onboardBody3 =>
      'အကြိုက်ဆုံးများ၊ သင့်ပေါ့ဖိုလီယိုနှင့် ဈေးနှုန်း သတိပေးချက်များက သင့်ကို အမြဲ အသိပေးထားပါမည်။ သင့်သုံးသပ်ချက်များကို သင့်စက်ပေါ်တွင် သိမ်းထားပြီး ပြန်ဖွင့်ရန် အသင့်ဖြစ်နေပါသည်။';

  @override
  String get onboardNext => 'ရှေ့သို့';

  @override
  String get onboardStart => 'စတင်မည်';

  @override
  String get onboardSkip => 'ကျော်မည်';

  @override
  String changesTitle(String date) {
    return 'ယခင်သုံးသပ်ချက် ($date) ကတည်းက';
  }

  @override
  String get changesPrice => 'ဈေး';

  @override
  String get changesNoMajor => 'အလားအလာ သိသိသာသာ မပြောင်းလဲပါ။';

  @override
  String get changesPreviousSummary => 'ယခင် အနှစ်ချုပ်';

  @override
  String get telemetryTitle => 'WhatStock ကို ပိုကောင်းအောင် ကူညီပါ';

  @override
  String get telemetryBody =>
      'အမည်မဖော်သော အသုံးပြုမှု စာရင်းအင်းနှင့် ပျက်ကျမှု အစီရင်ခံစာများကို မျှဝေပါ- မည်သည့် လုပ်ဆောင်ချက်များကို အသုံးပြုသည်နှင့် ဘာမှားယွင်းခဲ့သည်ကို။ သင့်စတော့ရှယ်ယာများ၊ သုံးသပ်ချက်များ သို့မဟုတ် ကိုယ်ရေးအချက်အလက်များကို ဘယ်တော့မှ မမျှဝေပါ။ ၎င်းကို ဆက်တင်များတွင် အချိန်မရွေး ပြောင်းနိုင်သည်။';

  @override
  String get telemetryAllow => 'ခွင့်ပြုရန်';

  @override
  String get telemetryDecline => 'မလိုပါ၊ ကျေးဇူးတင်ပါသည်';

  @override
  String get telemetrySetting =>
      'အမည်မဖော်သော စာရင်းအင်းနှင့် ပျက်ကျမှု အစီရင်ခံစာများ';

  @override
  String get telemetrySettingHint =>
      'လုပ်ဆောင်ချက်များကို မည်မျှ မကြာခဏ အသုံးပြုသည်နှင့် အမှားအစီရင်ခံစာများ၊ ကိုယ်ရေးအချက်အလက် သို့မဟုတ် သင့်ရှာဖွေမှုများနှင့် သုံးသပ်ချက်များ၏ အကြောင်းအရာ မပါဘဲ။';

  @override
  String get askButton => 'ဤသုံးသပ်ချက်အကြောင်း မေးရန်';

  @override
  String askTitle(String symbol) {
    return '$symbol အကြောင်း မေးခွန်းများ';
  }

  @override
  String get askIntro =>
      'သုံးသပ်ချက်အကြောင်း ဘာမဆို မေးနိုင်ပါသည်- အန္တရာယ်တစ်ခု၏ အဓိပ္ပာယ်၊ အလားအလာကို ပြောင်းလဲစေနိုင်သည့်အရာ၊ ကိန်းဂဏန်းတစ်ခုကို တွက်ချက်ပုံ။ အဖြေများသည် ဤသုံးသပ်ချက်အပေါ် အခြေခံပြီး ရင်းနှီးမြှုပ်နှံမှု အကြံပြုချက် မဟုတ်ပါ။';

  @override
  String get askHint => 'မေးခွန်းတစ်ခု မေးပါ…';

  @override
  String get askSend => 'ပို့ရန်';

  @override
  String get askThinking => 'စဉ်းစားနေသည်…';

  @override
  String get askSuggest1 => 'အကြီးဆုံး အန္တရာယ်က ဘာလဲ။';

  @override
  String get askSuggest2 => 'ဘာက အလားအလာကို ပြောင်းလဲစေနိုင်သလဲ။';

  @override
  String get askSuggest3 => 'ရိုးရှင်းစွာ ရှင်းပြပေးပါ';

  @override
  String get askMaxReached =>
      'ဤသုံးသပ်ချက်အတွက် နောက်ဆုံးမေးခွန်း ဖြစ်ပါသည်။ ထပ်မေးလိုပါက သုံးသပ်ချက်အသစ် ထုတ်ပါ။';

  @override
  String get errAskLimit =>
      'ယနေ့အတွက် မေးခွန်းကန့်သတ်ချက် ပြည့်သွားပါပြီ။ မနက်ဖြန် ထပ်ကြိုးစားပါ။';

  @override
  String get eventTomorrow => 'မနက်ဖြန်';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days ရက်အကြာ',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'သုံးလပတ် ရလဒ်များ';

  @override
  String get eventBeforeOpen => 'စျေးကွက်မဖွင့်မီ';

  @override
  String get eventAfterClose => 'စျေးကွက်ပိတ်ပြီးနောက်';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS ခန့်မှန်းချက်: $value';
  }

  @override
  String get eventFromAnalysis => 'သင့်သုံးသပ်ချက်မှ';

  @override
  String get eventDividend => 'အမြတ်ဝေစု မျှော်မှန်း';

  @override
  String get eventDividendEstimate =>
      'သင်မှတ်တမ်းတင်ထားသော ပေးချေမှုများမှ ခန့်မှန်းထားသည်';

  @override
  String get eventsHint =>
      'နောက် ရက် 90 အတွင်း သင့်အကြိုက်ဆုံးနှင့် ပေါ့ဖိုလီယို ရှယ်ယာများ၏ ရလဒ်ထုတ်ပြန်မည့်ရက်များ၊ သင့်သုံးသပ်ချက်များက မှတ်သားထားသော ရက်စွဲပါ ဖြစ်ရပ်များနှင့် သင်မှတ်တမ်းတင်ထားသော ပေးချေမှုများမှ မျှော်မှန်းထားသော အမြတ်ဝေစုများ။';

  @override
  String get eventsEmpty =>
      'နောက် ရက် 90 အတွင်း ရက်စွဲပါ ဖြစ်ရပ် မရှိပါ။ ရလဒ်ထုတ်ပြန်မည့်ရက်များကို ဤနေရာတွင် ကြည့်ရန် အကြိုက်ဆုံး သို့မဟုတ် ပေါ့ဖိုလီယို ရှယ်ယာများ ထည့်ပါ။ မှတ်တမ်းတင်ထားသော အမြတ်ဝေစုများသည် နောက်တစ်ကြိမ် မျှော်မှန်းပေးချေမှုကို ပြသပါသည်။';

  @override
  String get compareTitle => 'နှိုင်းယှဉ်ရန်';

  @override
  String get compareAdd => 'ရှယ်ယာ ထည့်ရန်';

  @override
  String get compareRemove => 'ဖယ်ရှားရန်';

  @override
  String get compareTickerHint => 'ရှယ်ယာသင်္ကေတ၊ ဥပမာ MSFT';

  @override
  String get compareHint =>
      'အဓိက ကိန်းဂဏန်းများကို ဘေးချင်းယှဉ်ပြထားသည်။ အတန်းတိုင်းတွင် အကောင်းဆုံးတန်ဖိုးကို မီးမောင်းထိုးပြထားသည်။ ပမာဏများသည် ရှယ်ယာတစ်ခုစီ၏ ကိုယ်ပိုင်ငွေကြေးဖြင့် ဖြစ်သည်။';

  @override
  String get compareNoAnalysis => 'သုံးသပ်ချက် မရှိသေးပါ';

  @override
  String get portfolioDividends => 'နှစ်စဉ် အမြတ်ဝေစု';

  @override
  String portfolioDividendYield(String percent) {
    return 'အထွက်နှုန်း $percent';
  }

  @override
  String get portfolioDividendNote =>
      'မျှော်မှန်း နှစ်စဉ် အမြတ်ဝေစုသည် လွန်ခဲ့သော 12 လအတွင်း ပေးချေခဲ့သော အမြတ်ဝေစုအပေါ် အခြေခံသည်။ အနာဂတ် ပေးချေမှုများကို အာမမခံပါ။';

  @override
  String positionDividend(String amount) {
    return 'အမြတ်ဝေစု: တစ်နှစ်လျှင် $amount';
  }

  @override
  String get chartAvgCost => 'သင့်ပျမ်းမျှ';

  @override
  String get chartAlertLevel => 'သတိပေးချက်';

  @override
  String get marketsToday => 'ယနေ့ စျေးကွက်များ';

  @override
  String get notesTitle => 'ကျွန်ုပ်၏ မှတ်စုများ';

  @override
  String get notesHint =>
      'ဘာကြောင့် ဝယ်ခဲ့သလဲ၊ ဘာကို စောင့်ကြည့်နေသလဲ၊ ဘာဖြစ်ရင် ရောင်းမလဲ။';

  @override
  String get notesInfo =>
      'ဤစက်တွင်သာ သိမ်းဆည်းထားသည်။ AI သုံးသပ်ချက်သည် သင့်မှတ်စုများကို ထည့်သွင်းစဉ်းစားသည်။';

  @override
  String notesSaved(String date) {
    return '$date တွင် သိမ်းဆည်းခဲ့သည်';
  }

  @override
  String get peersTitle => 'ဆင်တူသော ကုမ္ပဏီများ';

  @override
  String get portfolioExport => 'CSV အဖြစ် ထုတ်ယူရန်';

  @override
  String get portfolioImport => 'CSV မှ တင်သွင်းရန်';

  @override
  String get portfolioImportHint =>
      'တစ်ကြောင်းလျှင် ဝယ်ယူမှုတစ်ခု ကူးထည့်ပါ- ရှယ်ယာသင်္ကေတ၊ အရေအတွက်၊ ဈေးနှုန်း၊ ငွေကြေး၊ ရက်စွဲ (YYYY-MM-DD)။ ကော်လံများကို ကော်မာ၊ ဆီမီးကော်လံ သို့မဟုတ် တဘ်ဖြင့် ခွဲခြားနိုင်သည်၊ ခေါင်းစီးစာကြောင်း မပါလည်း ရသည်။';

  @override
  String get portfolioImportButton => 'တင်သွင်းရန်';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ဝယ်ယူမှု $count ခု ထည့်ပြီးပါပြီ',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'စာကြောင်း $count ကြောင်း ကျော်ခဲ့သည်',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'ပေါ့ဖိုလီယို၊ အကြိုက်ဆုံးများ၊ ဈေးနှုန်း သတိပေးချက်များနှင့် မှတ်စုများကို သင့်စက်အားလုံးတွင် စင့်ခ်လုပ်ထားသည်။';

  @override
  String syncLast(String time) {
    return 'နောက်ဆုံး စင့်ခ်လုပ်ချိန် $time';
  }

  @override
  String get syncNow => 'ယခု စင့်ခ်လုပ်ရန်';

  @override
  String get syncFailed => 'စင့်ခ်လုပ်၍ မရပါ။ အလိုအလျောက် ထပ်မံကြိုးစားပါမည်။';

  @override
  String get alertEmailTitle => 'သတိပေးချက် ဖြစ်ပေါ်သည့်အခါ အီးမေးလ်ပို့ရန်';

  @override
  String get alertEmailOn =>
      'သင့်သတိပေးချက်များကို မိနစ်အနည်းငယ်တိုင်း စစ်ဆေးပြီး အက်ပ်ပိတ်ထားသော်လည်း သင့်ထံ အီးမေးလ် ပို့ပေးပါမည်။';

  @override
  String get alertEmailSignIn =>
      'အက်ပ်ပိတ်ထားသော်လည်း သတိပေးချက်များကို အီးမေးလ်ဖြင့် ရရှိရန် ဆက်တင်များတွင် သင့်အီးမေးလ်ဖြင့် လက်မှတ်ထိုးဝင်ပါ။';

  @override
  String get portfolioHistory => 'အချိန်အလိုက် တန်ဖိုး';

  @override
  String get portfolioReviewTitle => 'AI ပေါ့ဖိုလီယို သုံးသပ်ချက်';

  @override
  String get portfolioReviewIntro =>
      'AI က သင့်ပေါ့ဖိုလီယို တစ်ခုလုံးကို ကြည့်ရှုသည် – စုစည်းမှု၊ ကဏ္ဍနှင့် ငွေကြေး အန္တရာယ်၊ သင့်ရှယ်ယာများ မျှဝေထားသော အန္တရာယ်များနှင့် အမြတ်ဝေစု။ သုံးသပ်ချက် 1 ခု သုံးသည်။';

  @override
  String get portfolioReviewButton => 'ကျွန်ုပ်၏ ပေါ့ဖိုလီယိုကို သုံးသပ်ရန်';

  @override
  String get portfolioReviewAgain => 'ပြန်သုံးသပ်ရန်';

  @override
  String get portfolioReviewWorking => 'သင့်ပေါ့ဖိုလီယိုကို သုံးသပ်နေသည်…';

  @override
  String get digestTitle => 'အီးမေးလ်ဖြင့် အပတ်စဉ် အနှစ်ချုပ်';

  @override
  String get digestHint =>
      'တနင်္လာနေ့တိုင်း- ပြီးခဲ့သည့်အပတ်က သင့်အကြိုက်ဆုံးများနှင့် ပေါ့ဖိုလီယို မည်သို့ ပြောင်းလဲခဲ့သည်နှင့် ၎င်းတို့၏ လာမည့် ရလဒ်ထုတ်ပြန်ရက်များ။';

  @override
  String get benchmarkTitle => 'S&P 500 နှင့် နှိုင်းယှဉ်ချက်';

  @override
  String get benchmarkTitleIndex => 'အညွှန်းကိန်းတစ်ခုနှင့် နှိုင်းယှဉ်ချက်';

  @override
  String get benchmarkHintIndex =>
      'သင့်ဝယ်ယူမှုတိုင်းကို ထိုနေ့တွင်ပင် ရွေးချယ်ထားသော အညွှန်းကိန်းကို လိုက်သည့် ရန်ပုံငွေတစ်ခုထဲ ထည့်ခဲ့သကဲ့သို့ ဖြစ်သည်။ အမြတ်ဝေစု မပါဝင်ပါ၊ ယခင်အမြတ်များက အနာဂတ်အမြတ်ကို ခန့်မှန်းမပေးပါ။';

  @override
  String get benchmarkYours => 'သင့်ဝယ်ယူမှုများ';

  @override
  String benchmarkAhead(String points) {
    return 'အညွှန်းကိန်းထက် ရာခိုင်နှုန်းမှတ် $points ပိုကောင်း';
  }

  @override
  String benchmarkBehind(String points) {
    return 'အညွှန်းကိန်းထက် ရာခိုင်နှုန်းမှတ် $points နောက်ကျ';
  }

  @override
  String get portfolioSell => 'ရောင်းရန်';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbol ရောင်းရန်';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'တစ်ရှယ်ယာလျှင် ရောင်းဈေး ($currency)';
  }

  @override
  String get portfolioSellDate => 'ရောင်းသည့် ရက်စွဲ';

  @override
  String get portfolioSellAll => 'အားလုံး';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'သင့်တွင် $quantity ရှိသည်';
  }

  @override
  String get portfolioSold => 'ရောင်းပြီး';

  @override
  String get portfolioRealized => 'ရရှိပြီး';

  @override
  String get portfolioClosed => 'ပိတ်ပြီး ကိုင်ဆောင်မှုများ';

  @override
  String get portfolioClosedNote => 'ရှယ်ယာအားလုံး ရောင်းပြီး';

  @override
  String get portfolioTransactions => 'အရောင်းအဝယ်များ';

  @override
  String get portfolioRealizedByYear => 'နှစ်အလိုက် ရရှိပြီး အမြတ်';

  @override
  String get portfolioRealizedHint =>
      'ရောင်းချမှုများကို သင်၏ အဟောင်းဆုံး ဝယ်ယူမှုများနှင့် ဦးစွာ တွဲဖက်သည် (FIFO)၊ ယနေ့ ငွေလဲနှုန်းဖြင့် ပြောင်းလဲထားသည်။ အခွန်ဆောင်ရန်အတွက် သင့်ပွဲစား၏ ရှင်းတမ်းကို အသုံးပြုပါ။';

  @override
  String staleNewResults(String symbol, String date) {
    return 'ဤခွဲခြမ်းစိတ်ဖြာမှုနောက်ပိုင်း သုံးလပတ်ရလဒ်အသစ် ထုတ်ပြန်ခဲ့သည် ($symbol, $date)။';
  }

  @override
  String get newResultsBadge => 'ရလဒ်အသစ်';

  @override
  String get portfolioImportBrokers =>
      'Revolut၊ Trading 212 နှင့် Interactive Brokers မှ ထုတ်ယူထားသော ဖိုင်များကိုလည်း ရောင်းချမှုများနှင့်အတူ မှတ်သိနိုင်သည်။ အမြတ်ဝေစုနှင့် ငွေသွင်းမှုများကို ကျော်သွားသည်။';

  @override
  String get portfolioImportFile => 'ဖိုင်ရွေးရန်';

  @override
  String offlineBanner(String time) {
    return 'ချိတ်ဆက်မှု မရှိပါ – နောက်ဆုံး သိမ်းထားသော ဒေတာကို ပြသနေသည် ($time)။';
  }

  @override
  String get glossMarketCap =>
      'စတော့ဈေးကွက်တွင် ကုမ္ပဏီတစ်ခုလုံး၏ တန်ဖိုး: ရှယ်ယာဈေးနှုန်း × ရှယ်ယာအရေအတွက်။';

  @override
  String get glossSharesOutstanding =>
      'ကုမ္ပဏီက ရှယ်ယာမည်မျှ ထုတ်ဝေထားသနည်း။ အရေအတွက် တိုးလာလျှင် ရှယ်ယာတစ်ခုစီ၏ ဝေစု သေးငယ်သွားသည်; ရှယ်ယာပြန်ဝယ်ခြင်းက ၎င်းကို လျှော့ချသည်။';

  @override
  String get glossPeTrailing =>
      'ဈေးနှုန်း ÷ ပြီးခဲ့သော 12 လ၏ တစ်ရှယ်ယာလျှင် အမြတ်: လက်ရှိအမြတ်၏ နှစ်မည်မျှစာကို သင်ပေးနေသည်ကို ပြသည်။ နိမ့်လေ ဈေးသက်သာလေ ဖြစ်သော်လည်း မြန်မြန်ကြီးထွားသော ကုမ္ပဏီများ၏ P/E သည် များသောအားဖြင့် မြင့်သည်။';

  @override
  String get glossPeForward =>
      'P/E ကဲ့သို့ပင် ဖြစ်သော်လည်း နောက် 12 လအတွက် လေ့လာသုံးသပ်သူများ မျှော်မှန်းသည့် အမြတ်ကို အသုံးပြုသည်။ ယခင်ကာလ P/E ထက် နိမ့်လျှင် အမြတ် တိုးလာမည်ဟု မျှော်လင့်ထားသည်။';

  @override
  String get glossPb =>
      'ဈေးနှုန်း ÷ တစ်ရှယ်ယာလျှင် စာရင်းတန်ဖိုး (ပိုင်ဆိုင်မှု နုတ် အကြွေး)။ 1 ဝန်းကျင်ဆိုလျှင် ကုမ္ပဏီ စာရွက်ပေါ်တွင် ပိုင်ဆိုင်သလောက် ဈေးကွက်က တန်ဖိုးထားသည်။';

  @override
  String get glossPs =>
      'ဈေးကွက်တန်ဖိုး ÷ နှစ်စဉ်ဝင်ငွေ။ အမြတ် နည်းသေးသော သို့မဟုတ် မရှိသေးသော ကုမ္ပဏီများအတွက် အသုံးဝင်သည်; လုပ်ငန်းအမျိုးအစားတူအတွင်း နှိုင်းယှဉ်ပါ။';

  @override
  String get glossEvToFcf =>
      'အကြွေးပါဝင်သော ကုမ္ပဏီတန်ဖိုး (EV) ÷ ရင်းနှီးမြှုပ်နှံမှုများပြီးနောက် တစ်နှစ်အတွင်း ရရှိသော ငွေသား။ နိမ့်လေ ပေးသောဈေးအတွက် ငွေသား ပိုရလေ ဖြစ်သည်။';

  @override
  String get glossPeg =>
      'P/E ÷ မျှော်မှန်း နှစ်စဉ်အမြတ်တိုးနှုန်း (%)။ 1 ဝန်းကျင်ကို မျှတသည်ဟု မကြာခဏ ယူဆသည်; P/E ကို ကြီးထွားမှုနှင့် ချိန်ထိုးပြသည်။';

  @override
  String get glossEps =>
      'ပြီးခဲ့သော 12 လအတွင်း တစ်ရှယ်ယာလျှင် အမြတ်။ နှစ်စဉ် မြင့်တက်လာသော EPS သည် ကျန်းမာသော ကုမ္ပဏီ၏ အခိုင်မာဆုံး လက္ခဏာများထဲမှ တစ်ခုဖြစ်သည်။';

  @override
  String get glossBeta =>
      'ရှယ်ယာသည် ဈေးကွက်နှင့်အတူ မည်မျှ လှုပ်ရှားလေ့ရှိသနည်း: 1 = ဈေးကွက်ကဲ့သို့, 1.5 = အတက်အကျ 50% ခန့် ပိုကြီး, 1 အောက် = ပိုငြိမ်။';

  @override
  String get glossRevenueTtm =>
      'ပြီးခဲ့သော 12 လ၏ စုစုပေါင်း ရောင်းရငွေ၊ ကုန်ကျစရိတ်များ မနုတ်မီ။';

  @override
  String get glossNetIncomeTtm =>
      'ပြီးခဲ့သော 12 လအတွင်း ကုန်ကျစရိတ်၊ အတိုးနှင့် အခွန်အားလုံး နုတ်ပြီးနောက် ကျန်သော အမြတ်။';

  @override
  String get glossGrossMargin =>
      'ထုတ်ကုန်များ၏ တိုက်ရိုက်ကုန်ကျစရိတ်ပြီးနောက် ဝင်ငွေ၏ မည်မျှ ကျန်သနည်း။ မြင့်သော အမြတ်နှုန်းသည် ဈေးနှုန်းသတ်မှတ်နိုင်စွမ်းကို မကြာခဏ ပြသည်။';

  @override
  String get glossOperatingMargin =>
      'လုပ်ငန်းလည်ပတ်ခြင်း (လစာ၊ ငှားရမ်းခ၊ စျေးကွက်ရှာဖွေရေး) ပြီးနောက်၊ အတိုးနှင့် အခွန် မတိုင်မီ ဝင်ငွေ၏ မည်မျှ ကျန်သနည်း။';

  @override
  String get glossNetMargin =>
      'ဝင်ငွေ၏ မည်မျှသည် နောက်ဆုံးအမြတ် ဖြစ်လာသနည်း။ 20% ဆိုသည်မှာ ရောင်းရငွေ 100 တိုင်းတွင် 20 သည် အမြတ်ဖြစ်သည်။';

  @override
  String get glossRoe =>
      'ရှယ်ယာရှင် ရင်းနှီးငွေအပေါ် အမြတ်: နှစ်စဉ်အမြတ် ÷ ပိုင်ရှင်များ၏ အရင်းအနှီး။ စီမံခန့်ခွဲသူများက ရှယ်ယာရှင်များ၏ ငွေကို မည်မျှ ကောင်းစွာ အသုံးချသည်ကို ပြသည်; 15% ခန့်အထက်ဆိုလျှင် ကောင်းသည်။';

  @override
  String get glossRoa =>
      'ပိုင်ဆိုင်မှုအပေါ် အမြတ်: နှစ်စဉ်အမြတ် ÷ ကုမ္ပဏီ ပိုင်ဆိုင်သမျှ အားလုံး။ လုပ်ငန်းအမျိုးအစားတူအတွင်း နှိုင်းယှဉ်ပါ။';

  @override
  String get glossDebtToEquity =>
      'အကြွေး ÷ ပိုင်ရှင်များ၏ အရင်းအနှီး။ မြင့်လေ ချေးငွေ ပိုများလေ: အတိုးနှုန်းတက်သည့်အခါ သို့မဟုတ် လုပ်ငန်းနှေးသည့်အခါ အန္တရာယ် ပိုများသည်။';

  @override
  String get glossCurrentRatio =>
      'ရေတိုပိုင်ဆိုင်မှုများ ÷ တစ်နှစ်အတွင်း ပေးရမည့် ငွေတောင်းခံလွှာများ။ 1 အထက်ဆိုလျှင် ကုမ္ပဏီသည် နီးကပ်လာမည့် ပေးချေမှုများကို ကာမိနိုင်သည်။';

  @override
  String get glossRevenueGrowth =>
      'တစ်နှစ်အရင်နှင့် နှိုင်းယှဉ်လျှင် ဝင်ငွေ မည်မျှ တိုးလာသနည်း။';

  @override
  String get glossEpsGrowth =>
      'တစ်နှစ်အရင်နှင့် နှိုင်းယှဉ်လျှင် တစ်ရှယ်ယာလျှင် အမြတ် မည်မျှ တိုးလာသနည်း။';

  @override
  String get glossDividendYield =>
      'နှစ်စဉ်အမြတ်ဝေစု ÷ ရှယ်ယာဈေးနှုန်း: သင်ပေးသောငွေ၏ ရာခိုင်နှုန်းအဖြစ် နှစ်စဉ် ရရှိမည့် ငွေသားဝင်ငွေ။';

  @override
  String get glossDividendPerShare =>
      'ပြီးခဲ့သည့်နှစ်အတွင်း ရှယ်ယာတစ်ခုအတွက် ပေးခဲ့သော အမြတ်ဝေစု။';

  @override
  String get glossPayoutRatio =>
      'အမြတ်၏ မည်မျှကို အမြတ်ဝေစုအဖြစ် ပေးသနည်း။ 100% အထက်ဆိုလျှင် ကုမ္ပဏီက ရသည်ထက် ပိုပေးနေပြီး ယင်းသည် ကြာရှည် မခံတတ်ပါ။';

  @override
  String get portfolioBeta => 'ပေါ့ဖိုလီယို ဘီတာ';

  @override
  String get glossPortfolioBeta =>
      'တန်ဖိုးအလိုက် အလေးချိန်ပေးထားသော သင့်ရှယ်ယာများ၏ ဘီတာ: ဈေးကွက် 1% လှုပ်ရှားသောအခါ သင့်ရှယ်ယာများ ခန့်မှန်းခြေ ရာခိုင်နှုန်း မည်မျှ လှုပ်ရှားသည်ကို ပြသည်။ 1 အထက်ဆိုလျှင် ဈေးကွက်ထက် ပိုလှုပ်ရှားပြီး 1 အောက်ဆိုလျှင် ပိုနည်းသည်။ ငွေသား မပါဝင်ပါ။';

  @override
  String get portfolioTop3 => 'အကြီးဆုံး ကိုင်ဆောင်ထားမှု 3 ခု';

  @override
  String get glossPortfolioTop3 =>
      'သင့်ရှယ်ယာတန်ဖိုး၏ မည်မျှသော အစိတ်အပိုင်းသည် အကြီးဆုံး ကိုင်ဆောင်ထားမှု သုံးခုတွင် ရှိနေသည်ကို ပြသည်။ ပိုမြင့်လေ ကုမ္ပဏီတစ်ခုတည်း၏ သတင်းဆိုးက ပေါ့ဖိုလီယိုတစ်ခုလုံးကို ပိုထိခိုက်နိုင်လေ ဖြစ်သည်။';

  @override
  String get glossDividendGrowth5y =>
      'ပြီးခဲ့သော ငါးနှစ်အတွင်း တစ်ရှယ်ယာလျှင် အမြတ်ဝေစု တစ်နှစ်လျှင် ပျမ်းမျှ မည်မျှ တိုးလာသနည်း။ တည်ငြိမ်သော တိုးတက်မှုသည် များသောအားဖြင့် ကုမ္ပဏီက ၎င်း၏ ငွေသားစီးဆင်းမှုကို ယုံကြည်သည်ဟု ဆိုလိုသည်။ လျှော့ချခြင်းမှာမူ မကြာခဏ သတိပေးလက္ခဏာ ဖြစ်တတ်သည်။';

  @override
  String get glossYieldOnCost =>
      'နောက်ဆုံး ၁၂ လအတွင်း ရရှိသော အမြတ်ဝေစုကို သင်ယခုထိ ပိုင်ဆိုင်နေသော ရှယ်ယာများအတွက် ပေးခဲ့သောငွေနှင့် စားထားသည်။ အမြတ်ဝေစု အထွက်နှုန်းနှင့် မတူဘဲ ယနေ့ဈေးနှုန်းမဟုတ်၊ သင်ကိုယ်တိုင် ဝယ်ယူခဲ့သောဈေးနှုန်းအပေါ် အခြေခံ တိုင်းတာသည်။';

  @override
  String get glossTitle => 'ဘာကို ဆိုလိုသလဲ?';

  @override
  String get watchNewsTitle => 'သင့်ရှယ်ယာများ၏ သတင်း';

  @override
  String get undo => 'နောက်ပြန်ရန်';

  @override
  String get watchSort => 'စီရန်';

  @override
  String get watchSortOwn => 'ကျွန်ုပ်၏အစီအစဉ်';

  @override
  String get watchSortGainers => 'အများဆုံးတက်သည်များ အရင်';

  @override
  String get watchSortLosers => 'အများဆုံးကျသည်များ အရင်';

  @override
  String get watchSortName => 'သင်္ကေတအလိုက် (A–Z)';

  @override
  String get watchHint =>
      'အစီအစဉ်ပြောင်းရန် လက်ကိုင်ကို ဆွဲပါ၊ ဖယ်ရှားရန် ဘယ်ဘက်သို့ ပွတ်ဆွဲပါ။ မျဉ်းသည် နောက်ဆုံး ရက် 30 ကို ပြသည်။';

  @override
  String analysisReady(String symbol) {
    return '$symbol: သင့်ခွဲခြမ်းစိတ်ဖြာချက် အဆင်သင့်ဖြစ်ပါပြီ။';
  }

  @override
  String alertFromCost(String price) {
    return 'သင့်ပျမ်းမျှဝယ်ဈေး ($price) မှ -';
  }

  @override
  String get briefTitle => 'ယနေ့ သင့်ရှယ်ယာများ';

  @override
  String get briefButton => 'ယနေ့ကို အကျဉ်းချုပ်';

  @override
  String get briefHint =>
      'သင့်အစုရှယ်ယာနှင့် အကြိုက်ဆုံးများ ယနေ့ မည်သို့ပြောင်းလဲခဲ့သည်နှင့် နောက်ဆုံးသတင်းများက ဘာပြောသည်ကို AI အကျဉ်းချုပ်။ ခွဲခြမ်းစိတ်ဖြာမှု မသုံးပါ။';

  @override
  String get briefRefresh => 'အပ်ဒိတ်';

  @override
  String get sectionEarnings => 'သုံးလပတ် ရလဒ်များ';

  @override
  String earningsNext(String date) {
    return 'နောက် အစီရင်ခံစာ: $date';
  }

  @override
  String get earningsExpected => 'မျှော်မှန်း EPS';

  @override
  String get earningsReported => 'ထုတ်ပြန်ထားသော EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'နောက်ဆုံး သုံးလပတ် $total ခုအနက် $beats ခုတွင် မျှော်မှန်း EPS နှင့် ညီ သို့မဟုတ် ကျော်',
      one:
          'သုံးလပတ် 1 ခုအနက် $beats ခုတွင် မျှော်မှန်း EPS နှင့် ညီ သို့မဟုတ် ကျော်',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol သည် မနက်ဖြန် သုံးလပတ် ရလဒ်များ ကြေညာမည်';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol သည် ယနေ့ သုံးလပတ် ရလဒ်များ ကြေညာမည်';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return '$symbol ၏ အမြတ်ဝေစု ယနေ့ ရောက်ရှိရန် မျှော်မှန်းထားသည်';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'ခန့်မှန်းခြေ $amount။ ရောက်ရှိလာသည်နှင့် သင်၏ ပေါ့ဖိုလီယိုတွင် မှတ်တမ်းတင်ပါ။';
  }

  @override
  String get dividendRemindersTitle => 'အမြတ်ဝေစု သတိပေးချက်များ';

  @override
  String get dividendRemindersSubtitle =>
      'သင်မှတ်တမ်းတင်ထားသော ပေးချေမှုများ၏ ပုံမှန်အစီအစဉ်အရ အမြတ်ဝေစု မျှော်မှန်းသည့်နေ့တွင် မှတ်တမ်းတင်နိုင်ရန် အသိပေးချက်';

  @override
  String get earningsRemindersTitle => 'ရလဒ် သတိပေးချက်များ';

  @override
  String get earningsRemindersSubtitle =>
      'သင်၏ အကြိုက်ဆုံးများ သို့မဟုတ် ပေါ့ဖိုလီယို ရှယ်ယာများ သုံးလပတ် ရလဒ် မကြေညာမီ တစ်ရက်အလိုတွင် အသိပေးချက်';

  @override
  String addAllToFavorites(int count) {
    return 'အားလုံးကို အကြိုက်ဆုံးများသို့ ထည့်ရန် ($count)';
  }

  @override
  String get portfolioImportPhoto => 'စခရင်ရှော့မှ တင်သွင်းရန်';

  @override
  String get holdingsReading => 'သင့်ရှယ်ယာ ပိုင်ဆိုင်မှုများကို ဖတ်နေသည်…';

  @override
  String get holdingsReviewTitle => 'တွေ့ရှိသော ပိုင်ဆိုင်မှုများ';

  @override
  String get holdingsReviewHint =>
      'မထည့်မီ ဂဏန်းများကို စစ်ဆေးပါ။ စျေးနှုန်းသည် ယနေ့စျေးနှုန်း မဟုတ်ဘဲ ရှယ်ယာတစ်ခုလျှင် သင်၏ ပျမ်းမျှ ဝယ်စျေး ဖြစ်သည်။';

  @override
  String get holdingsNoPrice => 'ပုံတွင် ပျမ်းမျှ ဝယ်စျေး မပါပါ';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ပိုင်ဆိုင်မှု $count ခု ထည့်ရန်',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'ဤပုံတွင် ရှယ်ယာ ပိုင်ဆိုင်မှု မတွေ့ပါ။ သင့်ပွဲစား၏ ပိုင်ဆိုင်မှု စာမျက်နှာ၏ စခရင်ရှော့ကို စမ်းကြည့်ပါ။';

  @override
  String get week52Range => '52 ပတ် အပိုင်းအခြား';

  @override
  String week52BelowHigh(String percent) {
    return '52 ပတ် အမြင့်ဆုံးထက် $percent နိမ့်';
  }

  @override
  String get week52AtHigh => '52 ပတ် အမြင့်ဆုံးတွင်';

  @override
  String get alertKindTrailing => 'အမြင့်ဆုံးမှ ကျဆင်းလျှင်';

  @override
  String get alertTrailingPercent => 'အမြင့်ဆုံးမှ ကျဆင်းမှု (%)';

  @override
  String get alertTrailingHint =>
      'စျေးနှုန်း တက်သည်နှင့်အမျှ လိုက်ပါသည်- သတ်မှတ်ပြီးနောက် အမြင့်ဆုံးအဆင့်မှ စျေးနှုန်း ဤမျှ ကျဆင်းလျှင် သတိပေးပါမည်။';

  @override
  String alertDescTrailing(String percent) {
    return 'အမြင့်ဆုံးမှ $percent ကျဆင်းမှု';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'ယခုထိ အမြင့်ဆုံး: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol သည် အမြင့်ဆုံးမှ $percent ကျဆင်းသွားသည်';
  }

  @override
  String get sectionInsiders => 'အတွင်းလူ ရောင်းဝယ်မှုများ';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ဝယ်ယူမှု $count ခု',
      one: 'ဝယ်ယူမှု 1 ခု',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ရောင်းချမှု $count ခု',
      one: 'ရောင်းချမှု 1 ခု',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'အသားတင်: ရှယ်ယာ $shares';
  }

  @override
  String get insiderBuy => 'ဝယ်ခဲ့';

  @override
  String get insiderSell => 'ရောင်းခဲ့';

  @override
  String get insiderHint =>
      'ပြီးခဲ့သော 90 ရက်အတွင်း အမှုဆောင်များနှင့် ဒါရိုက်တာများ၏ ပွင့်လင်းဈေးကွက်ရှိ ဝယ်ယူမှုနှင့် ရောင်းချမှုများ (SEC Form 4)။ option အသုံးပြုမှုနှင့် ရှယ်ယာဆုချမှုများကို ထည့်မတွက်ပါ။';

  @override
  String get insiderNone =>
      'ပြီးခဲ့သော 90 ရက်အတွင်း ပွင့်လင်းဈေးကွက်တွင် အတွင်းလူ ဝယ်ယူမှု သို့မဟုတ် ရောင်းချမှု မရှိပါ။';

  @override
  String get analystTrend => 'လအလိုက် သဘောထားများ ပြောင်းလဲပုံ';

  @override
  String get watchListAll => 'အားလုံး';

  @override
  String get watchListNew => 'စာရင်းအသစ်';

  @override
  String get watchListName => 'စာရင်းအမည်';

  @override
  String get watchListRename => 'စာရင်းအမည်ပြောင်းရန်';

  @override
  String get watchListDelete => 'စာရင်းဖျက်ရန်';

  @override
  String get watchListAddTo => 'စာရင်းသို့ ထည့်ရန်';

  @override
  String get watchListEmpty =>
      'ဤစာရင်းတွင် စတော့ မရှိသေးပါ။ ထည့်ရန် စတော့ဘေးရှိ စာရင်းခလုတ်ကို တို့ပါ။';

  @override
  String get portfolioAskTitle => 'သင့် ပေါ့ဖိုလီယို အကြောင်း မေးခွန်းများ';

  @override
  String get rangeYtd => 'ယခုနှစ်';

  @override
  String get backupTitle => 'အရန်သိမ်းဆည်းမှု';

  @override
  String get backupSave => 'အရန်သိမ်းရန်';

  @override
  String get backupSaveHint =>
      'သင့်အကြိုက်ဆုံးများ၊ စာရင်းများ၊ ပေါ့ဖိုလီယို၊ သတိပေးချက်များနှင့် မှတ်စုများကို ဖိုင်တစ်ခုတည်းတွင်။';

  @override
  String get backupRestore => 'အရန်မှ ပြန်ယူရန်';

  @override
  String get backupRestoreHint =>
      'ဖိုင်ထဲရှိသည်များကို ထည့်ပေါင်းသည်။ ယခုရှိပြီးသားများ မည်သည်မျှ မဖျက်ပါ။';

  @override
  String get backupRestored => 'အရန်ကို ပြန်ယူပြီးပါပြီ။';

  @override
  String get backupInvalid => 'ဤဖိုင်သည် WhatStock အရန်ဖိုင် မဟုတ်ပါ။';

  @override
  String get allocationPositions => 'ရှယ်ယာ';

  @override
  String get allocationSectors => 'ကဏ္ဍ';

  @override
  String get allocationCurrencies => 'ငွေကြေး';

  @override
  String get allocationAccounts => 'အကောင့်';

  @override
  String get compareReturn1y => '1 နှစ် အမြတ်';

  @override
  String get compareFromHigh => '52 ပတ် အမြင့်ဆုံးမှ ကွာဟချက်';

  @override
  String get briefAutoTitle => 'နံနက်တိုင်း နေ့စဉ်အကျဉ်းချုပ်';

  @override
  String get briefAutoSubtitle =>
      'အက်ပ်ဖွင့်ထားစဉ် နံနက် 7:00 နာရီနောက်ပိုင်း “ယနေ့ သင့်ရှယ်ယာများ” ကို အလိုအလျောက် ပြုလုပ်ပေးပါသည်။ ကွန်ပျူတာများတွင် အကြောင်းကြားချက်က အသိပေးပါမည်။ နေ့စဉ် မေးခွန်းကန့်သတ်ချက်မှ သုံးပြီး ခွဲခြမ်းစိတ်ဖြာမှု မသုံးပါ။';

  @override
  String get targetsButton => 'ပစ်မှတ်ခွဲဝေမှု';

  @override
  String get targetsTitle => 'ပစ်မှတ်ခွဲဝေမှု';

  @override
  String get targetsHint =>
      'ရှယ်ယာတစ်ခုစီသည် ပိုတ်ဖိုလီယို၏ မည်မျှအချိုးရှိသင့်သည်ကို သတ်မှတ်ပါ။ ပစ်မှတ်မရှိပါက အကွက်ကို ဗလာထားပါ။ ထို့နောက် ရောက်ရှိရန် ဘာဝယ်ရမည် သို့မဟုတ် ရောင်းရမည်ကို အက်ပ်က ပြပါမည်။';

  @override
  String targetsSum(String percent) {
    return 'စုစုပေါင်း- $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'ဝယ်ရန် ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'ရောင်းရန် ≈ $amount';
  }

  @override
  String get rebalanceOk => 'ပစ်မှတ်အတိုင်း';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol သည် မျှော်မှန်း EPS ထက် ကျော်လွန်သည်';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol သည် မျှော်မှန်း EPS ထက် နည်းသည်';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'ထုတ်ပြန်ထားသော EPS $actual၊ မျှော်မှန်း $estimate';
  }

  @override
  String get newsExplain => 'ဤသည်မှာ ဘာကို ဆိုလိုသနည်း။';

  @override
  String get watchAlertAll => 'နေ့စဉ် ကြီးမားသော ပြောင်းလဲမှုအတွက် သတိပေးချက်';

  @override
  String get watchAlertAllHint =>
      'ဤစာရင်းရှိ ရှယ်ယာတိုင်းအတွက် ဈေးနှုန်း သတိပေးချက်- တစ်ရက်အတွင်း ဤမျှ အတက် သို့မဟုတ် အကျ ပြောင်းလဲလျှင် အသိပေးပါမည်။ သတိပေးချက် ရှိပြီးသား ရှယ်ယာများသည် ၎င်းတို့၏ဟာကို ဆက်ထားပါမည်။';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'သတိပေးချက် $count ခု သတ်မှတ်ပြီးပါပြီ',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'ရရှိပြီးသော အမြတ်ကို ထုတ်ယူရန် (CSV)';

  @override
  String get portfolioAnnualReturn => 'နှစ်စဉ် အမြတ်နှုန်း';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / နှစ်';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'ငွေပမာဏဖြင့် ချိန်ဆထားသော နှစ်စဉ် အမြတ်နှုန်း (XIRR)- သင် ဝယ်ယူခဲ့ချိန်နှင့် ရောင်းချခဲ့ချိန်ကို ထည့်သွင်းတွက်ချက်သဖြင့် နောက်မှ ထည့်သော ငွေကြောင့် ကိန်းဂဏန်း မလွဲချော်ပါ။ သင်၏ ပထမဆုံး ဝယ်ယူမှု အနည်းဆုံး တစ်နှစ် ပြည့်ပြီးမှ ပြသပါသည်။ အမြတ်ဝေစု မပါဝင်ပါ။';

  @override
  String get eventsAddToCalendar => 'ပြက္ခဒိန်သို့ ထည့်ရန် (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'ပေါ့ဖိုလီယို သတိပေးချက်';

  @override
  String get portfolioMoveAlertSubtitle =>
      'သင်၏ ပေါ့ဖိုလီယို တစ်ခုလုံး တစ်ရက်အတွင်း ဤမျှ ပြောင်းလဲသည့်အခါ အသိပေးချက်။';

  @override
  String get portfolioMoveAlertOff => 'ပိတ်';

  @override
  String portfolioMoveUp(String percent) {
    return 'သင်၏ ပေါ့ဖိုလီယို ယနေ့ $percent တက်သွားသည်';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'သင်၏ ပေါ့ဖိုလီယို ယနေ့ $percent ကျသွားသည်';
  }

  @override
  String get whatIfTitle => 'ရင်းနှီးမြှုပ်နှံခဲ့ရင် ဘယ်လိုဖြစ်မလဲ။';

  @override
  String get whatIfAmount => 'ပမာဏ';

  @override
  String whatIfResult(String amount, String period) {
    return 'လွန်ခဲ့သော $periodက ရင်းနှီးခဲ့သော $amount ၏ ယနေ့တန်ဖိုး';
  }

  @override
  String get whatIfNote =>
      'ရှယ်ယာဈေးနှုန်းကိုသာ အခြေခံသည်- အမြတ်ဝေစု၊ ကြေးများနှင့် အခွန်များ မပါဝင်ပါ။ ယခင်အမြတ်များက အနာဂတ်အမြတ်ကို ခန့်မှန်းမပေးပါ။';

  @override
  String get watchShare => 'စာရင်းကို မျှဝေရန်';

  @override
  String get watchImport => 'ရှယ်ယာသင်္ကေတများ ထည့်ရန်';

  @override
  String get watchImportHint =>
      'ကော်မာ၊ နေရာလွတ် သို့မဟုတ် စာကြောင်းအသစ်ဖြင့် ခွဲထားသော ရှယ်ယာသင်္ကေတများကို ကူးထည့်ပါ – ဥပမာ တစ်စုံတစ်ယောက်က သင့်ထံ မျှဝေထားသော စာရင်း။';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ရှယ်ယာ $count ခု ထည့်ပြီးပါပြီ',
      one: 'ရှယ်ယာ 1 ခု ထည့်ပြီးပါပြီ',
      zero: 'ရှယ်ယာအသစ် မရှိပါ',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'အကြီးဆုံး အရင်';

  @override
  String get positionsSortGain => 'စုစုပေါင်းအမြတ် အများဆုံး အရင်';

  @override
  String get positionsSortToday => 'ယနေ့ အကောင်းဆုံး အရင်';

  @override
  String get chartMyBuys => 'သင့်ဝယ်ယူမှုများ';

  @override
  String get chartMySells => 'သင့်ရောင်းချမှုများ';

  @override
  String get shortcutsTitle => 'ကီးဘုတ် ဖြတ်လမ်းများ';

  @override
  String usMarketOpen(String time) {
    return 'အမေရိကန် စျေးကွက် ဖွင့်ထားသည် · $time အကြာတွင် ပိတ်မည်';
  }

  @override
  String usMarketClosed(String time) {
    return 'အမေရိကန် စျေးကွက် ပိတ်ထားသည် · $time အကြာတွင် ဖွင့်မည်';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes မိနစ်';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours နာရီ $minutes မိနစ်';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days ရက် $hours နာရီ';
  }

  @override
  String get dividendGoalSet => 'လစဉ် အမြတ်ဝေစု ပန်းတိုင် သတ်မှတ်ရန်';

  @override
  String get dividendGoalTitle => 'လစဉ် အမြတ်ဝေစု ပန်းတိုင်';

  @override
  String get dividendGoalAmount => 'တစ်လလျှင် အမြတ်ဝေစု';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'ယနေ့ အထွက်နှုန်းဖြင့် တစ်လလျှင် $amount ခန့် · $percent · ပန်းတိုင် $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'ယနေ့ အထွက်နှုန်းဖြင့် တစ်လလျှင် $amount ခန့် · ပန်းတိုင် $goal ပြည့်မီပြီ';
  }

  @override
  String get portfolioAccount => 'အကောင့်';

  @override
  String get portfolioAccountHint => 'ဥပမာ TBSZ 2026 (ရွေးချယ်နိုင်သည်)';

  @override
  String get portfolioAccountAdd => 'အကောင့် သတ်မှတ်ရန်';

  @override
  String get portfolioAccountsAll => 'အကောင့်အားလုံး';

  @override
  String get portfolioAccountNote =>
      'ဤအကောင့်၏ အရောင်းအဝယ်များနှင့် အမြတ်ဝေစုများသာ။ ငွေသား၊ ပန်းတိုင်များနှင့် AI သုံးသပ်ချက်ကို \"အကောင့်အားလုံး\" တွင် ပြသသည်။';

  @override
  String get portfolioNoAccount => 'အကောင့် မရှိ';

  @override
  String portfolioFee(String currency) {
    return 'ကော်မရှင်ခ ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'ကော်မရှင်ခ ထည့်ရန်';

  @override
  String portfolioFeeRow(String amount) {
    return 'ကော်မရှင်ခ: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'နှစ်ပတ်လည် အနှစ်ချုပ်';

  @override
  String get portfolioProceeds => 'ရောင်းရငွေ';

  @override
  String get portfolioCostBasis => 'ဝယ်ယူကုန်ကျစရိတ်';

  @override
  String get portfolioFeesPaid => 'ပေးခဲ့သော ကော်မရှင်ခ';

  @override
  String get portfolioAnnualSummaryNote =>
      'ပမာဏများကို မူလငွေကြေးဖြင့် ပြထားပြီး ပြောင်းလဲတွက်ချက်ထားခြင်း မရှိပါ။ ရောင်းရငွေမှ ရောင်းချမှု ကော်မရှင်ခကို နုတ်ထားပြီး ဝယ်ယူကုန်ကျစရိတ်တွင် ဝယ်ယူမှု ကော်မရှင်ခ ပါဝင်သည် (FIFO)။ အခွန်ကြေညာလွှာအတွက် သင့်အခွန်ဌာနက သတ်မှတ်သော ငွေလဲနှုန်းဖြင့် ပြောင်းလဲပါ။';

  @override
  String get portfolioShare => 'စွမ်းဆောင်ရည် မျှဝေရန်';

  @override
  String get portfolioShareHeading => 'ကျွန်ုပ်၏ ပေါ့ဖိုလီယို';

  @override
  String get portfolioTopHoldings => 'အကြီးဆုံး ကိုင်ဆောင်ထားမှုများ';

  @override
  String get portfolioShareNote =>
      'ရာခိုင်နှုန်းများကိုသာ မျှဝေပြီး ပမာဏများ မပါဝင်ပါ။';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ကိုင်ဆောင်ထားမှု $count ခု',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'ရင်းနှီးမြှုပ်နှံမှု အကြံပြုချက် မဟုတ်ပါ';

  @override
  String get portfolioGoalSet => 'ပန်းတိုင် သတ်မှတ်ရန်';

  @override
  String get portfolioGoalTitle => 'ပေါ့ဖိုလီယို ပန်းတိုင်';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · ပန်းတိုင် $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'ပန်းတိုင် $amount ပြည့်မီပြီ';
  }

  @override
  String get portfolioGoalRemove => 'ပန်းတိုင် ဖယ်ရှားရန်';

  @override
  String get alertEdit => 'သတိပေးချက် ပြင်ရန်';

  @override
  String get positionOpenLots => 'ကိုင်ထားဆဲ (အဟောင်းဆုံး ဦးစွာ)';

  @override
  String get lotRemoved => 'အရောင်းအဝယ်ကို ဖျက်လိုက်ပြီ';

  @override
  String get alertDeleted => 'သတိပေးချက်ကို ဖျက်လိုက်ပြီ';

  @override
  String get alertsClearTriggered => 'အသက်ဝင်ခဲ့သော သတိပေးချက်များကို ရှင်းရန်';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'သတိပေးချက် $count ခု ရှင်းပြီးပါပြီ',
      one: 'သတိပေးချက် 1 ခု ရှင်းပြီးပါပြီ',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'ပင်မ မျက်နှာပြင်';

  @override
  String get allocationCountries => 'နိုင်ငံ';

  @override
  String get newsExplainNoteResearch =>
      'AI ရှင်းလင်းချက်- ဝဘ်ပေါ်တွင် အချက်အလက်များကို ရှာဖွေပြီး ဆောင်းပါးကိုဖွင့်ကာ ရင်းမြစ် မည်မျှ ယုံကြည်စိတ်ချရသည်ကို အကဲဖြတ်ပါသည်။ ရင်းနှီးမြှုပ်နှံမှု အကြံပြုချက် မဟုတ်ပါ။ နေ့စဉ် မေးခွန်းကန့်သတ်ချက်မှ သုံးပြီး ခွဲခြမ်းစိတ်ဖြာမှု မသုံးပါ။';

  @override
  String get sourceOfficial => 'တရားဝင်';

  @override
  String get sourcePressRelease => 'သတင်းထုတ်ပြန်ချက်';

  @override
  String get sourceMajorNews => 'အဓိကမီဒီယာ';

  @override
  String get sourceOpinion => 'အမြင်';

  @override
  String get earningsSummaryButton => 'နောက်ဆုံးအစီရင်ခံစာတွင် ဘာပါခဲ့သလဲ။';

  @override
  String get earningsSummaryNote =>
      'ကုမ္ပဏီ၏ ရလဒ်ထုတ်ပြန်ချက်နှင့် ဝဘ်ပေါ်တွင် တွေ့ရှိသော သတင်းဖော်ပြချက်များကို AI ဖြင့် အနှစ်ချုပ်ထားခြင်း။ ရင်းနှီးမြှုပ်နှံမှု အကြံပြုချက် မဟုတ်ပါ။ နေ့စဉ် မေးခွန်းကန့်သတ်ချက်မှ သုံးပြီး ခွဲခြမ်းစိတ်ဖြာမှု မသုံးပါ။';

  @override
  String get compareLastSurprise => 'ပြီးခဲ့သော သုံးလပတ် EPS နှင့် မျှော်မှန်း';

  @override
  String get compareNextReport => 'နောက် အစီရင်ခံစာ';

  @override
  String get resolvingDescription => 'သင်ဆိုလိုသော ရှယ်ယာကို ရှာဖွေနေသည်…';

  @override
  String get instrumentTitle => 'ဤငွေကြေးကိရိယာအကြောင်း';

  @override
  String get instrumentHint =>
      'ဤသင်္ကေတအတွက် ကုမ္ပဏီပရိုဖိုင် မရှိပါ – ETF၊ ရန်ပုံငွေ သို့မဟုတ် အပ်ငွေလက်မှတ် ဖြစ်နိုင်ပါသည်။ ၎င်းသည် ဘာလဲ၊ ဘာများ ပါဝင်သလဲ၊ ကုန်ကျစရိတ် ဘယ်လောက်လဲ ဟု AI ကို မေးပါ။';

  @override
  String get instrumentAsk => 'ဒါ ဘာလဲ။';

  @override
  String get instrumentNote =>
      'ထုတ်ဝေသူ၏ ရန်ပုံငွေစာမျက်နှာနှင့် ဝဘ်ပေါ်တွင် တွေ့ရှိသော ဘဏ္ဍာရေးဆိုက်များမှ AI ရှင်းလင်းချက်။ ရင်းနှီးမြှုပ်နှံမှု အကြံပြုချက် မဟုတ်ပါ။ နေ့စဉ် မေးခွန်းကန့်သတ်ချက်မှ သုံးပြီး ခွဲခြမ်းစိတ်ဖြာမှု မသုံးပါ။';

  @override
  String suggestAskAi(String query) {
    return 'AI ကို မေးပါ - “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return '$symbols အတွက် လက်ရှိဈေးနှုန်း မရှိပါ။';
  }

  @override
  String get eventsRecentResults => 'မကြာသေးမီ ထုတ်ပြန်ထားသော ရလဒ်များ';

  @override
  String get saveToNotes => 'ကျွန်ုပ်၏ မှတ်စုများသို့ သိမ်းရန်';

  @override
  String get savedToNotes => 'သင့်မှတ်စုများသို့ သိမ်းပြီးပါပြီ';

  @override
  String get portfolioDividendsReceived => 'ရရှိထားသော အမြတ်ဝေစုများ';

  @override
  String get portfolioDividendsThisYear => 'ယခုနှစ်';

  @override
  String get portfolioDividendsAllTime => 'စုစုပေါင်း';

  @override
  String get portfolioAddDividend => 'အမြတ်ဝေစု ထည့်ရန်';

  @override
  String portfolioDividendAmount(String currency) {
    return 'ရရှိသည့်ပမာဏ ($currency)';
  }

  @override
  String get portfolioDividendDate => 'ပေးချေသည့်ရက်';

  @override
  String get portfolioDividendsEmpty =>
      'အမြတ်ဝေစု မှတ်တမ်းမရှိသေးပါ။ ကိုယ်တိုင်ထည့်ပါ၊ သို့မဟုတ် သင့်ဘရိုကာ၏ export ဖိုင်ကို တင်သွင်းပါ – ထိုဖိုင်ထဲမှ အမြတ်ဝေစုအတန်းများကိုလည်း ဖမ်းယူပါသည်။';

  @override
  String get portfolioSplit => 'ရှယ်ယာခွဲခြင်း';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'ရှယ်ယာခွဲခြင်း: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'ခွဲခြင်းမတိုင်မီ ရက်စွဲပါ အဝယ်နှင့် အရောင်းများကို ချိန်ညှိပါမည်။ ရှယ်ယာအရေအတွက်ကို မြှောက်ပြီး တစ်စုချင်းဈေးကို စားသောကြောင့် ကုန်ကျစရိတ် မပြောင်းလဲပါ။';

  @override
  String get portfolioSplitRatio => 'အချိုး (အသစ် : အဟောင်း)';

  @override
  String get portfolioSplitRatioError =>
      '10:1 ကဲ့သို့ အချိုးထည့်ပါ၊ သို့မဟုတ် ပြောင်းပြန်ခွဲခြင်းအတွက် 1:10 ထည့်ပါ။';

  @override
  String get portfolioSplitDate => 'ခွဲသည့်ရက်စွဲ';

  @override
  String portfolioSplitRow(String ratio) {
    return 'ရှယ်ယာခွဲခြင်း $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'ရှယ်ယာခွဲခြင်းကို ဖျက်လိုက်ပါပြီ';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ရှယ်ယာခွဲခြင်း $count ခု ထည့်ပြီး',
      one: 'ရှယ်ယာခွဲခြင်း 1 ခု ထည့်ပြီး',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'အမြတ်ဝေစု $count ခု ထည့်ပြီး',
      one: 'အမြတ်ဝေစု 1 ခု ထည့်ပြီး',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'အမြတ်ဝေစုများ ထုတ်ယူရန် (CSV)';

  @override
  String get portfolioDividendDeleted => 'အမြတ်ဝေစုကို ဖျက်ပြီး';

  @override
  String get portfolioDividendsHint =>
      'ပမာဏများသည် သင့်အကောင့်ထဲ ရောက်ရှိလာသည့်အတိုင်း၊ ပေးချေငွေကြေးဖြင့် ဖြစ်သည်။ စုစုပေါင်းကို ယနေ့နှုန်းဖြင့် ပြောင်းလဲတွက်ချက်သည်။ အခွန်ကြေညာလွှာအတွက် သင့်ဘရိုကာ၏ ရှင်းတမ်းကို အသုံးပြုပါ။';

  @override
  String get awayTitle => 'သင်မရှိစဉ်';

  @override
  String awaySince(String when) {
    return '$when မှစ၍';
  }

  @override
  String get awayQuiet => 'သိသာသော အပြောင်းအလဲ မရှိပါ။';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'သတိပေးချက် $count ခု အသက်ဝင်ခဲ့သည်',
      one: 'သတိပေးချက် 1 ခု အသက်ဝင်ခဲ့သည်',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'ရလဒ်ထုတ်ပြန်ပြီး: $symbols';
  }

  @override
  String get moveWhyButton => 'ယနေ့ ဘာကြောင့် လှုပ်ရှားနေသလဲ။';

  @override
  String moveWhyTitle(String percent) {
    return 'ယနေ့ $percent';
  }

  @override
  String get moveWhyNote =>
      'ဝဘ်ပေါ်တွင် ရှာတွေ့သော ယနေ့သတင်းများအပေါ် အခြေခံသည့် AI ရှင်းလင်းချက်၊ အမှန်တကယ် အကြောင်းရင်းသည် မသိရှိနိုင်သလို ကွဲပြားနိုင်သည်။ ရင်းနှီးမြှုပ်နှံမှု အကြံဉာဏ် မဟုတ်ပါ။ ခွဲခြမ်းစိတ်ဖြာမှု မဟုတ်ဘဲ သင့်နေ့စဉ် မေးခွန်းခွင့်ပြုအရေအတွက်ကို အသုံးပြုသည်။';

  @override
  String get sectionTechnical => 'နည်းပညာဆိုင်ရာ ရှုခင်း';

  @override
  String get labelSma50 => '၅၀ ရက် ပျမ်းမျှ';

  @override
  String get labelSma200 => '၂၀၀ ရက် ပျမ်းမျှ';

  @override
  String get labelRsi => 'RSI (၁၄ ရက်)';

  @override
  String get labelVolatility30 => 'အတက်အကျ (၃၀ ရက်)';

  @override
  String techAbove(String percent) {
    return '$percent အထက်';
  }

  @override
  String techBelow(String percent) {
    return '$percent အောက်';
  }

  @override
  String get techOverbought => 'အဝယ်လွန်';

  @override
  String get techOversold => 'အရောင်းလွန်';

  @override
  String get techNeutral => 'ကြားနေ';

  @override
  String get techGoldenCross =>
      '၅၀ ရက် ပျမ်းမျှသည် ၂၀၀ ရက် ပျမ်းမျှ၏ အထက်တွင် ရှိသည် – ရိုးရာဖတ်ရှုနည်းအရ အတက်လမ်းကြောင်း။';

  @override
  String get techDeathCross =>
      '၅၀ ရက် ပျမ်းမျှသည် ၂၀၀ ရက် ပျမ်းမျှ၏ အောက်တွင် ရှိသည် – ရိုးရာဖတ်ရှုနည်းအရ အကျလမ်းကြောင်း။';

  @override
  String get glossSma50 =>
      'နောက်ဆုံး အရောင်းအဝယ်ရက် ၅၀ ၏ ပိတ်ဈေး ပျမ်းမျှ။ ဈေးနှုန်း ၎င်း၏အထက်ရှိပါက ရေတိုအားကောင်းမှုဟု၊ အောက်ရှိပါက အားနည်းမှုဟု မကြာခဏ ယူဆကြသည်။';

  @override
  String get glossSma200 =>
      'နောက်ဆုံး အရောင်းအဝယ်ရက် ၂၀၀ ၏ ပိတ်ဈေး ပျမ်းမျှ – ရေရှည်လမ်းကြောင်း၏ ရိုးရာမျဉ်း။ ရင်းနှီးမြှုပ်နှံသူ အများအပြားက ဈေးနှုန်း ၎င်း၏အထက်ရှိပါက ရေရှည်အတက်လမ်းကြောင်းဟု ယူဆကြသည်။';

  @override
  String get glossRsi =>
      'ဆွေမျိုးအားကောင်းမှုအညွှန်းကိန်း – မကြာသေးမီ အမြတ်များကို မကြာသေးမီ အရှုံးများနှင့် ၀–၁၀၀ စကေးပေါ်တွင် နှိုင်းယှဥ်သည်။ ၇၀ အထက်တွင် ရှယ်ယာကို အဝယ်လွန် (လျင်မြန်စွာ တက်ခဲ့) ဟု၊ ၃၀ အောက်တွင် အရောင်းလွန်ဟု မကြာခဏ ခေါ်ကြသည် – သို့သော် ခိုင်မာသော လမ်းကြောင်းတစ်ခုသည် ထိုနေရာတွင် အချိန်ကြာကြာ ရှိနေနိုင်သည်။';

  @override
  String get glossVolatility =>
      'ဈေးနှုန်း တစ်ရက်မှတစ်ရက် မည်မျှ အတက်အကျ ရှိသည်ကို တစ်နှစ်စာအဖြစ် တွက်ထားသည် – ၂၀% ဆိုသည်မှာ ပုံမှန်နှစ်တစ်နှစ်တွင် ခန့်မှန်းခြေ ±၂၀% အတွင်း လှုပ်ရှားသည်။ အတက်အကျ မြင့်လေ နှစ်ဘက်စလုံး လှုပ်ရှားမှု ကြီးလေ ဖြစ်သည်။';

  @override
  String get techNote =>
      'နေ့စဉ် ပိတ်ဈေးများမှ တွက်ချက်ထားသည်။ နည်းပညာအချက်ပြများသည် အတိတ်ကို ဖော်ပြသည်၊ အနာဂတ်ကို မဟုတ်ပါ။';

  @override
  String portfolioAbove200(int above, int count) {
    return 'ပိုင်ဆိုင်မှု $count ခုအနက် $above ခု ၎င်းတို့၏ ရက် 200 ပျမ်းမျှအထက်';
  }

  @override
  String get watchSignalsTitle => 'အချက်ပြများ';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · အရောင်းလွန်';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · အဝယ်လွန်';
  }

  @override
  String get signalCrossedAbove => '၂၀၀ ရက် ပျမ်းမျှအထက်သို့ ကျော်တက်';

  @override
  String get signalCrossedBelow => '၂၀၀ ရက် ပျမ်းမျှအောက်သို့ ကျော်ဆင်း';

  @override
  String get signalAlertsTitle => 'နည်းပညာဆိုင်ရာ အချက်ပြ အသိပေးချက်များ';

  @override
  String get signalAlertsSubtitle =>
      'တစ်ရက်တစ်ကြိမ်၊ သင်စောင့်ကြည့်နေသော ရှယ်ယာတစ်ခု အရောင်းလွန် သို့မဟုတ် အဝယ်လွန် (RSI) ဖြစ်သွားသောအခါ၊ သို့မဟုတ် ၎င်း၏ဈေးနှုန်းသည် ၂၀၀ ရက် ပျမ်းမျှကို ဖြတ်ကျော်သောအခါ။';

  @override
  String get signalAlertsNotification => 'နည်းပညာဆိုင်ရာ အချက်ပြများ';

  @override
  String get glossaryPageTitle => 'ဝေါဟာရ အဘိဓာန်';

  @override
  String get glossaryPageSubtitle =>
      'P/E မှ RSI အထိ အက်ပ်ပြသသော ကိန်းဂဏန်းတိုင်းအတွက် ရိုးရှင်းသော ရှင်းလင်းချက်များ';

  @override
  String get glossarySearchHint => 'ဝေါဟာရ အဘိဓာန်တွင် ရှာရန်';

  @override
  String get portfolioCash => 'ငွေသား';

  @override
  String get portfolioCashTitle => 'ငွေသား လက်ကျန်';

  @override
  String get portfolioCashHint =>
      'သင့်ဘရိုကာတွင် ရင်းနှီးမြှုပ်နှံမထားသော ငွေ၊ ငွေကြေးအလိုက်။ စုစုပေါင်း တန်ဖိုးနှင့် ခွဲဝေမှုတွင် ထည့်တွက်သည်၊ အမြတ်အစွန်းတွင် မပါဝင်ပါ။';

  @override
  String portfolioCashAmount(String currency) {
    return 'ပမာဏ ($currency)';
  }

  @override
  String get portfolioCashEdit => 'ငွေသား လက်ကျန် သတ်မှတ်ရန်';

  @override
  String get portfolioDividendsByMonth => 'လအလိုက်';

  @override
  String get dividendsLegendReceived => 'ရရှိပြီး';

  @override
  String get dividendsLegendExpected => 'မျှော်မှန်း';

  @override
  String get portfolioDividendsExpected => 'နောက်ထပ် မျှော်မှန်း';

  @override
  String get portfolioDividendsExpectedNote =>
      'သင်မှတ်တမ်းတင်ထားသော ပေးချေမှုများ၏ ရက်စွဲနှင့် ပမာဏမှ ခန့်မှန်းထားသည်။ ကုမ္ပဏီများက ပြောင်းလဲနိုင် သို့မဟုတ် ချန်လှပ်နိုင်သည်။';

  @override
  String portfolioDividendAround(String date) {
    return '$date ခန့်';
  }
}
