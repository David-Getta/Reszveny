// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Akan (`ak`).
class AppLocalizationsAk extends AppLocalizations {
  AppLocalizationsAk([String locale = 'ak']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'Twa kyɛfa bi mfonini na hu ne ho nsɛm nyinaa.';

  @override
  String get homeHint =>
      'Kyɛfa krataa, broker app bi skrin, atesɛm krataa anaa adwumakuw bi agyiraehyɛde – biribiara a ɛkyerɛ kyɛfa bi.';

  @override
  String get takePhoto => 'Twa mfonini';

  @override
  String get chooseFromGallery => 'Paw fi gallery mu';

  @override
  String get chooseImage => 'Paw mfonini';

  @override
  String get enterTickerManually => 'Kyerɛw ticker no wo ankasa';

  @override
  String get tickerInputLabel => 'Ticker agyiraehyɛde';

  @override
  String get tickerInputHint => 'sɛ nhwɛso, AAPL';

  @override
  String get lookUp => 'Hwehwɛ';

  @override
  String demoModeBanner(String symbols) {
    return 'Demo kwan so – wɔnhyehyɛɛ dwa ho data safe biara. Nhwɛso data wɔ hɔ ma: $symbols.';
  }

  @override
  String get recognizing => 'Ɛrehwehwɛ mfonini no mu…';

  @override
  String get loadingData => 'Ɛrefa data no aba…';

  @override
  String get noCandidatesTitle => 'Yɛanhu kyɛfa biara';

  @override
  String get noCandidatesBody =>
      'Yɛantumi anhu kyɛfa biara wɔ mfonini yi mu. Twa mfonini a ɛda hɔ pefee, anaa kyerɛw ticker no wo ankasa.';

  @override
  String get whatWeSaw => 'Nea yɛhuu';

  @override
  String get chooseCandidateTitle => 'Kyɛfa bɛn na wopɛ?';

  @override
  String confidencePercent(int percent) {
    return '$percent% ahotoso';
  }

  @override
  String get settings => 'Nhyehyɛe';

  @override
  String get language => 'Kasa';

  @override
  String get systemLanguage => 'Sistem no deɛ';

  @override
  String get about => 'Ho nsɛm';

  @override
  String get disclaimer =>
      'App yi de nsɛm nko ara ma, ɛnyɛ sikahyɛmu ho afotu. Data no betumi akyɛ anaa ayɛ mfomso.';

  @override
  String dataSource(String source) {
    return 'Data fibea: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Nhunu: $source';
  }

  @override
  String get retry => 'Sɔ hwɛ bio';

  @override
  String get cancel => 'Twa mu';

  @override
  String get ok => 'OK';

  @override
  String get close => 'To mu';

  @override
  String get errorGeneric => 'Biribi akɔ basaa.';

  @override
  String get errorSectionUnavailable => 'Yɛantumi amfa ɔfa yi amma.';

  @override
  String get notAvailable => 'ɛnni hɔ';

  @override
  String get sectionIdentity => 'Agyiraehyɛde';

  @override
  String get sectionPrice => 'Bo';

  @override
  String get sectionValuation => 'Bo nsusuwii';

  @override
  String get sectionFinancials => 'Sika ho nsɛm';

  @override
  String get sectionDividend => 'Mfaso kyɛ';

  @override
  String get sectionProfile => 'Adwumakuw no ho nsɛm';

  @override
  String get sectionAnalysts => 'Nhwehwɛmufo adwene';

  @override
  String get sectionNews => 'Kaseɛbɔ';

  @override
  String get sectionRecognition => 'Nhunu ho nsɛm';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Kyɛfa dwa';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Sika';

  @override
  String get labelCountry => 'Ɔman';

  @override
  String get labelIndustry => 'Adwuma su';

  @override
  String get labelSector => 'Ɔfa';

  @override
  String get labelWebsite => 'Wɛbsaet';

  @override
  String get labelIpoDate => 'IPO da';

  @override
  String get labelMarketCap => 'Dwa so bo';

  @override
  String get labelSharesOutstanding => 'Nkyɛfa a ɛwɔ dwa so';

  @override
  String get labelEmployees => 'Adwumayɛfo';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Ti adwumabea';

  @override
  String get labelDescription => 'Nkyerɛkyerɛmu';

  @override
  String get labelLastPrice => 'Bo a etwa to';

  @override
  String get labelChange => 'Nsakrae';

  @override
  String get labelOpen => 'Mfiase bo';

  @override
  String get labelDayHigh => 'Da no mu bo kɛse';

  @override
  String get labelDayLow => 'Da no mu bo ketewa';

  @override
  String get labelPreviousClose => 'To mu bo a atwam';

  @override
  String get labelWeek52High => 'Nnawɔtwe 52 bo kɛse';

  @override
  String get labelWeek52Low => 'Nnawɔtwe 52 bo ketewa';

  @override
  String get labelAverageVolume10d => 'Dwadi dodow mfinimfini (nna 10)';

  @override
  String updatedAt(String time) {
    return 'Ɛyɛɛ foforo $time';
  }

  @override
  String get labelPeTrailing => 'P/E (atwam)';

  @override
  String get labelPeForward => 'P/E (daakye)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / sika a ɛda hɔ (FCF)';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (abosome 12 a atwam)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Sika a ɛbaa mu (abosome 12 a atwam)';

  @override
  String get labelNetIncomeTtm => 'Mfaso ankasa (abosome 12 a atwam)';

  @override
  String get labelGrossMargin => 'Mfaso nkyemu nyinaa';

  @override
  String get labelOperatingMargin => 'Adwumayɛ mfaso nkyemu';

  @override
  String get labelNetMargin => 'Mfaso nkyemu ankasa';

  @override
  String get labelRoe => 'Mfaso wɔ wuranom sika so';

  @override
  String get labelRoa => 'Mfaso wɔ agyapade so';

  @override
  String get labelDebtToEquity => 'Ka / wuranom sika';

  @override
  String get labelCurrentRatio => 'Ka tiawa tua tumi';

  @override
  String get labelRevenueGrowth => 'Sika a ɛba mu nkɔso (afe ne afe)';

  @override
  String get labelEpsGrowth => 'EPS nkɔso (afe ne afe)';

  @override
  String get labelDividendYield => 'Mfaso kyɛ wɔ bo so';

  @override
  String get labelDividendPerShare => 'Mfaso kyɛ wɔ kyɛfa biara so';

  @override
  String get labelPayoutRatio => 'Mfaso a wɔkyɛ no dodow';

  @override
  String get labelYieldOnCost => 'Mfaso kyɛ wɔ tɔ bo so';

  @override
  String get labelDividendGrowth5y => 'Mfaso kyɛ nkɔso (mfe 5)';

  @override
  String get dividendNone =>
      'Wɔantua mfaso kyɛ biara wɔ abosome 12 a atwam no mu.';

  @override
  String get dividendOnYourShares => 'Wɔ wo kyɛfa so, afe biara';

  @override
  String get labelConsensus => 'Adwene a wɔapene so';

  @override
  String get ratingStrongBuy => 'Tɔ paa';

  @override
  String get ratingBuy => 'Tɔ';

  @override
  String get ratingHold => 'Kora so';

  @override
  String get ratingSell => 'Tɔn';

  @override
  String get ratingStrongSell => 'Tɔn paa';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'nhwehwɛmufo $count',
      one: 'nhwehwɛmuni 1',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Bere: $period';
  }

  @override
  String get noNews => 'Kaseɛbɔ foforo biara nni hɔ.';

  @override
  String get openArticle => 'Bue asɛm no';

  @override
  String get openLinkFailed => 'Yɛantumi ammue link no.';

  @override
  String get recognitionSummary => 'Ntiawa';

  @override
  String get recognitionEvidence => 'Nea enti a yɛsusuw saa';

  @override
  String get recognitionRawText => 'Nkyerɛwee a yɛkenkan fii mfonini no so';

  @override
  String get errMissingAnthropicKey =>
      'Wɔnhyehyɛɛ mfonini nhunu (ANTHROPIC_API_KEY nni hɔ). Kyerɛw ticker no wo ankasa.';

  @override
  String get errRecognitionUnreachable =>
      'Yɛantumi anka nhunu dwumadie no. Hwɛ wo intanɛt nkitahodi.';

  @override
  String errRecognitionHttp(String status) {
    return 'Nhunu dwumadie no de mfomso baa (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Nhunu dwumadie no antumi anyɛ mfonini yi ho hwee.';

  @override
  String get errRecognitionTruncated =>
      'Nhunu mmuae no twaa mu. Yɛsrɛ wo, sɔ hwɛ bio.';

  @override
  String get errRecognitionBadResponse =>
      'Mmuae a yɛnhwɛ kwan fi nhunu dwumadie no.';

  @override
  String get errRecognitionEmpty => 'Nhunu dwumadie no de mmuae hunu baa.';

  @override
  String get errMissingFinnhubKey =>
      'Wɔnhyehyɛɛ dwa ho data (FINNHUB_API_KEY nni hɔ).';

  @override
  String get errMarketUnreachable =>
      'Yɛantumi anka dwa ho data dwumadie no. Hwɛ wo intanɛt nkitahodi.';

  @override
  String get errMarketRateLimited =>
      'Abisade dodow dodo akɔ dwa ho data dwumadie no so. Yɛsrɛ wo, twɛn simma baako.';

  @override
  String errMarketHttp(String status) {
    return 'Dwa ho data dwumadie no de mfomso baa (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Mmuae a yɛnhwɛ kwan fi dwa ho data dwumadie no.';

  @override
  String errNoQuote(String symbol) {
    return 'Yɛanhu bo ho data biara mma $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Yɛanhu adwumakuw ho nsɛm biara mma $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Demo kwan so no boa $symbols nko ara. Fa FINNHUB_API_KEY ka ho na woanya data a ɛrekɔ so seesei.';
  }

  @override
  String errUnknown(String detail) {
    return 'Biribi akɔ basaa: $detail';
  }

  @override
  String get newSearch => 'Nhwehwɛ foforo';

  @override
  String get recentSearches => 'Nnansa yi';

  @override
  String get noRecentSearches => 'Wonhwehwɛɛ hwee nnansa yi.';

  @override
  String get clearRecent => 'Popa nnansa yi nhwehwɛ';

  @override
  String get greeting => 'Kyɛfa bɛn na yɛnhwɛ?';

  @override
  String get searchHint => 'Ticker anaa adwumakuw din';

  @override
  String get attachImage => 'Fa mfonini ka ho';

  @override
  String get searchResultsTitle => 'Nhwehwɛ mu nsunsuanso';

  @override
  String errNoResults(String query) {
    return 'Yɛanhu kyɛfa biara mma “$query”.';
  }

  @override
  String get quickBarHint => 'Kyerɛw ticker anaa adwumakuw din…';

  @override
  String get openFullWindow => 'Bue mfɛnsere';

  @override
  String hotkeyHint(String shortcut) {
    return 'Mia $shortcut baabiara na frɛ WhatStock.';
  }

  @override
  String get trayOpen => 'Bue WhatStock';

  @override
  String get trayQuickSearch => 'Nhwehwɛ ntɛm';

  @override
  String get trayQuit => 'Gyae';

  @override
  String get appearance => 'Sɛnea ɛte';

  @override
  String get themeSystem => 'Sistem';

  @override
  String get themeDark => 'Sum';

  @override
  String get themeLight => 'Hann';

  @override
  String get back => 'San kɔ';

  @override
  String get aiSectionTitle => 'AI nhwehwɛmu';

  @override
  String get aiIntro =>
      'Nkyerɛkyerɛmu a ɛkɔ akyiri a AI na ɛkyerɛwee: kaseɛbɔ foforo ntiawa, adwuma no, n’ahoɔden ne n’asiane ne nneɛma a ahintaw, ne bo a ɛsɛ, bo a ɛbɛba ne nea ebetumi asi fi adwene, ɔmanfo, technical ne sikasɛm kɛse fam, ne nea ɛsɛ sɛ wohwɛ.';

  @override
  String get aiGenerate => 'Yɛ nhwehwɛmu';

  @override
  String get aiRegenerate => 'Yɛ bio';

  @override
  String get aiGenerating =>
      'Ɛresiesie nhwehwɛmu no… ebetumi agye simma baako anaa abien.';

  @override
  String get aiSources => 'Fibea';

  @override
  String aiGeneratedAt(String time) {
    return 'Wɔyɛɛ no $time';
  }

  @override
  String get aiDisclaimer =>
      'AI na ɛyɛɛ nhwehwɛmu yi fii data a abue ne kaseɛbɔ foforo so. Ebetumi anya mfomso anaa ayɛ dedaw, na ɛnyɛ sikahyɛmu ho afotu.';

  @override
  String get errAiNotConfigured =>
      'Wɔnhyehyɛɛ AI nhwehwɛmu (ANTHROPIC_API_KEY nni hɔ).';

  @override
  String get errAiUnreachable =>
      'Yɛantumi anka AI dwumadie no. Hwɛ wo intanɛt nkitahodi.';

  @override
  String errAiHttp(String status) {
    return 'AI dwumadie no de mfomso baa (HTTP $status).';
  }

  @override
  String get errAiRefused => 'AI dwumadie no ampene sɛ ɛbɛhwehwɛ kyɛfa yi mu.';

  @override
  String get errAiBadResponse => 'Mmuae a yɛnhwɛ kwan fi AI dwumadie no.';

  @override
  String get sectionChart => 'Bo nsakrae mfonini';

  @override
  String get rangeOneWeek => '1N';

  @override
  String get rangeOneMonth => '1B';

  @override
  String get rangeThreeMonths => '3B';

  @override
  String get rangeOneYear => '1A';

  @override
  String get rangeFiveYears => '5A';

  @override
  String get chartUnavailable =>
      'Bo abakɔsɛm nni hɔ wɔ data fibea a ɛwɔ hɔ seesei no so.';

  @override
  String get sectionStatements => 'Sika ho akontaabu (afe biara)';

  @override
  String get labelFiscalYear => 'Sika afe';

  @override
  String get labelRevenue => 'Sika a ɛbaa mu';

  @override
  String get labelNetIncome => 'Mfaso ankasa';

  @override
  String get labelTotalAssets => 'Agyapade nyinaa';

  @override
  String get labelTotalLiabilities => 'Ka nyinaa';

  @override
  String get labelEquity => 'Kyɛfa wuranom sika';

  @override
  String get labelOperatingCashFlow => 'Adwumayɛ mu sika a ɛkɔ ne ba';

  @override
  String get statementsUnavailable => 'Sika ho akontaabu nni hɔ mma kyɛfa yi.';

  @override
  String get launchAtLogin => 'Fi ase bere a wowura mu';

  @override
  String get hotkeyLabel => 'Kwan tiawa (baabiara)';

  @override
  String get hotkeyRecordHint => 'Mia ha, na afei mia nsafe a ɛbom foforo no';

  @override
  String get hotkeyReset => 'San kɔ mfiase nhyehyɛe so';

  @override
  String get pasteImage => 'Fa mfonini a wokɔpii no hyɛ mu';

  @override
  String get errClipboardNoImage => 'Mfonini biara nni nea wokɔpii mu.';

  @override
  String get favorites => 'Nea mepɛ';

  @override
  String get addToFavorites => 'Fa ka nea mepɛ ho';

  @override
  String get removeFromFavorites => 'Yi fi nea mepɛ mu';

  @override
  String get noFavorites =>
      'Biribiara nni ha. Mia nsoromma no wɔ kyɛfa bi so na fa ka ho.';

  @override
  String get displayCurrency => 'Sika a wode kyerɛ';

  @override
  String get displayCurrencyNone => 'Kyɛfa no ankasa sika nko ara';

  @override
  String labelConverted(String currency) {
    return '≈ wɔ $currency mu';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Sesa bo: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Nsakrae foforo';

  @override
  String currentVersion(String version) {
    return 'Version $version';
  }

  @override
  String get autoUpdate => 'Fa nsakrae foforo hyɛ mu ankasa';

  @override
  String get checkForUpdates => 'Hwɛ sɛ nsakrae foforo wɔ hɔ';

  @override
  String get updateChecking => 'Ɛrehwɛ sɛ nsakrae foforo wɔ hɔ…';

  @override
  String get updateUpToDate => 'Wowɔ version a ɛyɛ foforo paa no so.';

  @override
  String updateAvailable(String version) {
    return 'Version $version wɔ hɔ.';
  }

  @override
  String get updateDownloading => 'Ɛretwe nsakrae foforo no wɔ akyi…';

  @override
  String get updateDownloaded =>
      'Nsakrae foforo no awie. San fi ase na fa hyɛ mu.';

  @override
  String get updateNow => 'Yɛ no foforo';

  @override
  String get restartNow => 'San fi ase';

  @override
  String get updatesViaStore =>
      'Nsakrae foforo ba ankasa denam app store no so.';

  @override
  String get updateCheckFailed => 'Yɛantumi anhwɛ nsakrae foforo.';

  @override
  String get subscription => 'Subscription';

  @override
  String get planTrial => 'Sɔhwɛ';

  @override
  String get planNormal => 'Daa deɛ';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Plan biara nni hɔ';

  @override
  String planAnalysesPerMonth(int count) {
    return 'Nhwehwɛmu $count bosome biara';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Sɔhwɛ a ɛyɛ kwa nna $days, nhwehwɛmu $count ka ho';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Sɔhwɛ nna $days na aka',
      one: 'Sɔhwɛ da 1 na aka',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Wo sɔhwɛ a ɛyɛ kwa no aba awiei. Paw plan na kɔ so yɛ nhwehwɛmu.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Nhwehwɛmu $remaining na aka wɔ $total mu wɔ bere yi mu';
  }

  @override
  String extraCredits(int count) {
    return 'Nhwehwɛmu $count a ɛka ho';
  }

  @override
  String renewsOn(String date) {
    return 'Ɛbɛyɛ foforo $date';
  }

  @override
  String get choosePlan => 'Paw plan';

  @override
  String get currentPlan => 'Wo plan seesei';

  @override
  String get subscribe => 'Kyerɛw wo din';

  @override
  String get perMonth => '/ bosome';

  @override
  String get extraPacksTitle => 'Wohia pii? Tɔ nhwehwɛmu a ɛka ho';

  @override
  String get extraPacksHint =>
      'Nhwehwɛmu a ɛka ho no bere ntwa da, na wode di dwuma wɔ wo bosome mu deɛ no akyi.';

  @override
  String get buy => 'Tɔ';

  @override
  String get restorePurchases => 'San fa nea wotɔɔ bra';

  @override
  String get manageSubscription => 'Hwɛ wo subscription so';

  @override
  String get purchaseSuccess => 'Meda wo ase! Nea wotɔɔ no reyɛ adwuma.';

  @override
  String get purchasePending => 'Adetɔ no retwɛn…';

  @override
  String get purchaseFailed => 'Yɛantumi anwie adetɔ no.';

  @override
  String get purchaseCanceled => 'Wɔatwa adetɔ no mu.';

  @override
  String get billingUnavailable =>
      'Adetɔ nni hɔ wɔ platform yi so seesei. Kyerɛw wo din wɔ wo fon anaa Mac so; wo plan bɛyɛ adwuma wɔ wo mfiri nyinaa so.';

  @override
  String get errQuotaExceeded =>
      'Nhwehwɛmu biara nka wo wɔ bere yi mu. Ma wo plan nkɔ soro anaa tɔ nhwehwɛmu a ɛka ho.';

  @override
  String get errTrialExpired =>
      'Wo sɔhwɛ a ɛyɛ kwa no aba awiei. Paw plan na kɔ so.';

  @override
  String get errNoPlan =>
      'Wohia plan a ɛreyɛ adwuma ansa na woayɛ AI nhwehwɛmu.';

  @override
  String get viewPlans => 'Hwɛ plan ahorow';

  @override
  String get usageTitle => 'Dwumadi';

  @override
  String get demoPurchaseNote =>
      'Demo akatua: adetɔ yɛ nhwɛso nko ara wɔ platform yi so.';

  @override
  String get mostPopular => 'Nkurɔfo pɛ paa';

  @override
  String get bestValue => 'Ne bo yɛ papa paa';

  @override
  String get planFeaturesCommon =>
      'Mfonini nhunu, data a ɛrekɔ so, chart ahorow, nea wopɛ ne kasa 120 nyinaa ka plan biara ho. Dodow no fa AI nhwehwɛmu nko ara ho.';

  @override
  String get searchLanguages => 'Hwehwɛ kasa…';

  @override
  String get noLanguageMatch => 'Kasa biara nhyia.';

  @override
  String get aiSettings => 'AI nhwehwɛmu';

  @override
  String get aiLength => 'Ne tenten';

  @override
  String get aiDepthBrief => 'Tiawa';

  @override
  String get aiDepthStandard => 'Mfinimfini';

  @override
  String get aiDepthDeep => 'Emu dɔ';

  @override
  String get aiDepthBriefDesc => 'Nea ehia nko ara, ntɛm.';

  @override
  String get aiDepthStandardDesc => 'Amanneɛbɔ a ɛyɛ pɛ a ɔfa biara ka ho.';

  @override
  String get aiDepthDeepDesc =>
      'Intanɛt so nhwehwɛ pii, ɛde adwumakuw a ɛte saa toto ho, ne nsɛm a ɛkɔ akyiri.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Bɛyɛ nsɛmfua $min–$max';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ɛde nhwehwɛmu $count di dwuma',
      one: 'ɛde nhwehwɛmu 1 di dwuma',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Ɔkenkanfo gyinabea';

  @override
  String get aiReaderBeginner => 'Ɔfitiasefo';

  @override
  String get aiReaderExperienced => 'Ɔwɔ osuahu';

  @override
  String get aiReaderBeginnerDesc =>
      'Kasa a ɛyɛ mmerɛw; wɔkyerɛkyerɛ technical asɛmfua biara mu.';

  @override
  String get aiReaderExperiencedDesc =>
      'Nkyerɛwee a emu yɛ duru, a sikasɛm nsɛmfua a wɔtaa de di dwuma wom.';

  @override
  String get aiCounterArgument => 'Akyinnyegye a ɛyɛ den paa';

  @override
  String get aiCounterArgumentDesc =>
      'Ntiawa no wie bere biara de akyinnyegye a ɛyɛ papa paa a etia n’ankasa n’awiei asɛm.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Ebedu intanɛt so nhwehwɛ $count wɔ nhwehwɛmu biara mu wɔ wo plan so',
      one: 'Ebedu intanɛt so nhwehwɛ 1 wɔ nhwehwɛmu biara mu wɔ wo plan so',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Mfinimfini tenten wɔ plan biara so: Daa deɛ $normal, Pro $pro, Max $max, Ultra $ultra. Tiawa de 2 tew so, Emu dɔ de 2 ka ho.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ebedu intanɛt so nhwehwɛ $count',
      one: 'ebedu intanɛt so nhwehwɛ 1',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Intanɛt so nhwehwɛ $count wɔ nhwehwɛmu biara mu',
      one: 'Intanɛt so nhwehwɛ 1 wɔ nhwehwɛmu biara mu',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Tenten yi hia nhwehwɛmu $needed, nanso $left pɛ na aka. Paw tenten tiawa wɔ Nhyehyɛe mu anaa nya nhwehwɛmu pii.';
  }

  @override
  String get outlookMarketMood => 'Dwa no tebea';

  @override
  String get moodVeryPessimistic => 'Anidaso nni hɔ koraa';

  @override
  String get moodPessimistic => 'Anidaso sua';

  @override
  String get moodNeutral => 'Mfinimfini';

  @override
  String get moodOptimistic => 'Anidaso wɔ hɔ';

  @override
  String get moodVeryOptimistic => 'Anidaso wɔ hɔ paa';

  @override
  String get scenarioBull => 'Bo kɔ soro';

  @override
  String get scenarioBase => 'Nea ɛtaa ba';

  @override
  String get scenarioBear => 'Bo kɔ fam';

  @override
  String outlookCurrentPrice(String price) {
    return 'Bo seesei: $price';
  }

  @override
  String get outlookKeyLevels => 'Bo gyinabea a ehia';

  @override
  String get keyLevelSupport => 'Mmoa';

  @override
  String get keyLevelResistance => 'Akwanside';

  @override
  String get keyLevelAnchor => 'Gyinapɛn';

  @override
  String get upcomingEvents => 'Nsɛm a ɛreba';

  @override
  String get outlookChartNote =>
      'Ɛyɛ nsusuwii nko ara; nea ebetumi asi yɛ adwene a ɛnyɛ pɛpɛɛpɛ, ɛnyɛ nkɔmhyɛ.';

  @override
  String get accountTitle => 'Akawnt';

  @override
  String get signIn => 'Wura mu';

  @override
  String get signOut => 'Fi mu';

  @override
  String get notSignedIn => 'Wonwuraa mu';

  @override
  String get accountBenefit =>
      'Wura mu na wo subscription ayɛ adwuma wɔ wo mfiri nyinaa so.';

  @override
  String get accountSyncedNote =>
      'Wo subscription ne nhwehwɛmu a aka no yɛ pɛ wɔ mfiri nyinaa so.';

  @override
  String get signInTitle => 'Wura WhatStock mu';

  @override
  String get emailLabel => 'Email adrɛs';

  @override
  String get continueWithEmail => 'Kɔ so wɔ email so';

  @override
  String codeSentTo(String email) {
    return 'Yɛde code a ɛwɔ nɔma 6 akɔma $email. Ɛyɛ adwuma simma 10.';
  }

  @override
  String get codeLabel => 'Wura mu code';

  @override
  String get resendCode => 'Soma code foforo';

  @override
  String get useDifferentEmail => 'Fa email foforo';

  @override
  String get errInvalidCode => 'Code no nteɛ anaa ne bere atwam.';

  @override
  String get errInvalidEmail => 'Yɛsrɛ wo, kyerɛw email adrɛs a ɛteɛ.';

  @override
  String get errSignInFailed =>
      'Wuramu no anyɛ yie. Hwɛ wo nkitahodi na sɔ hwɛ bio.';

  @override
  String get checkoutWaiting =>
      'Wie akatua no wɔ wo browser mu. App no bɛyɛ foforo ankasa sɛ ɛwie a.';

  @override
  String get paymentViaStripe =>
      'Akatua a ahobammɔ wom wɔ wo browser mu denam Stripe so. Twa mu bere biara.';

  @override
  String get paymentViaStore =>
      'Wotua denam wo App Store anaa Google Play akawnt so. Twa mu bere biara wɔ wo store nhyehyɛe mu.';

  @override
  String get keySpace => 'Space';

  @override
  String get doubleOptionTitle => 'Mia Option mprɛnu';

  @override
  String get doubleOptionSubtitle =>
      'Sɛ womia Option mprɛnu ntɛm a, ɛno nso frɛ WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Sɛ wopɛ sɛ ɛyɛ adwuma wɔ app foforo mu nso a, ma WhatStock kwan wɔ System Settings → Privacy & Security → Input Monitoring, na afei bue app no bio.';

  @override
  String get openSystemSettings => 'Bue System Settings';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Mia $shortcut anaa mia Option mprɛnu baabiara na frɛ WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Nea ebetumi asi paa';

  @override
  String get longTermToday => 'Ɛnnɛ';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: 'mfe $years',
      one: 'afe 1',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range afe biara';
  }

  @override
  String longTermLikely(String price) {
    return 'nea ebetumi asi paa: $price';
  }

  @override
  String get confidenceLow => 'Ahotoso kakra';

  @override
  String get confidenceMedium => 'Ahotoso mfinimfini';

  @override
  String get confidenceHigh => 'Ahotoso kɛse';

  @override
  String get longTermNote =>
      'Bere tenten nsusuwii gyina nsusuwii a wɔaka so, na ɛtrɛw sɛ bere kɔ so. Bo no nka mfaso kyɛ ho. Ɛyɛ nsusuwii, ɛnyɛ nkɔmhyɛ.';

  @override
  String get portfolio => 'Wo nkyɛfa';

  @override
  String get portfolioEmpty =>
      'Biribiara nni ha. Bue kyɛfa bi na mia “Fa ka wo nkyɛfa ho” na di nea wowɔ akyi.';

  @override
  String get portfolioLocalNote =>
      'Ɛkora wɔ mfiri yi so nko ara. Wɔde ECB sesa bo sesa nkɔntaabu nyinaa; bo no betumi akyɛ.';

  @override
  String get addToPortfolio => 'Fa ka wo nkyɛfa ho';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Fa $symbol ka ho';
  }

  @override
  String get portfolioQuantity => 'Nkyɛfa dodow';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Kyɛfa biara bo ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Da a wotɔe';

  @override
  String get portfolioAdd => 'Fa ka ho';

  @override
  String get portfolioInvalidNumber => 'Kyerɛw nɔma a ɛboro 0.';

  @override
  String portfolioAdded(String symbol) {
    return 'Wɔde $symbol aka wo nkyɛfa ho.';
  }

  @override
  String get portfolioTotalValue => 'Ne bo nyinaa';

  @override
  String get portfolioToday => 'Ɛnnɛ';

  @override
  String get portfolioGainLoss => 'Mfaso/ahweredeɛ';

  @override
  String homeDividendsThisYear(String amount) {
    return 'Dividend afe yi: $amount';
  }

  @override
  String get portfolioInvested => 'Sika a wode ahyɛ mu';

  @override
  String get portfolioAllocation => 'Nkyekyɛmu';

  @override
  String get portfolioPositions => 'Nkyɛfa a wowɔ';

  @override
  String portfolioAvgCost(String price) {
    return 'bo mfinimfini $price';
  }

  @override
  String get portfolioYourPosition => 'Nea wowɔ';

  @override
  String get portfolioPurchases => 'Adetɔ';

  @override
  String get portfolioRemove => 'Yi fi mu';

  @override
  String get portfolioExcluded =>
      'Nkyɛfa a bo anaa sesa bo nni hɔ no nka nkɔntaabu no ho.';

  @override
  String get priceAlerts => 'Bo ho kɔkɔbɔ';

  @override
  String get setPriceAlert => 'Hyɛ bo ho kɔkɔbɔ';

  @override
  String alertDialogTitle(String symbol) {
    return 'Bo ho kɔkɔbɔ · $symbol';
  }

  @override
  String get alertKindAbove => 'Sɛ ɛkɔ soro boro';

  @override
  String get alertKindBelow => 'Sɛ ɛba fam sen';

  @override
  String get alertKindMove => 'Sɛ ɛsesa pii da koro mu';

  @override
  String alertTargetPrice(String currency) {
    return 'Bo ($currency)';
  }

  @override
  String get alertMovePercent => 'Da koro nsakrae (%)';

  @override
  String get alertAlreadyMet => 'Bo no atwa gyinabea yi dedaw.';

  @override
  String get alertSave => 'Hyɛ kɔkɔbɔ';

  @override
  String alertCreated(String symbol) {
    return 'Wɔahyɛ kɔkɔbɔ ama $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Bo ho kɔkɔbɔ biara nni hɔ. Bue kyɛfa bi na mia dɔn no na hyɛ bi.';

  @override
  String get alertsNote =>
      'Yɛhwɛ kɔkɔbɔ simma 5 biara bere a WhatStock reyɛ adwuma. Wɔ kɔmputa so, ɛkɔ so yɛ adwuma wɔ menu bar anaa tray mu; wɔ fon so, seesei kɔkɔbɔ ba bere a app no abue nko ara.';

  @override
  String alertDescAbove(String price) {
    return 'Ɛboro $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Ɛsua sen $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Da koro nsakrae ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Ɛyɛɛ adwuma $date wɔ $price';
  }

  @override
  String get alertRearm => 'San hyɛ';

  @override
  String get alertDelete => 'Popa';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol akɔ soro aboro $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol aba fam asua sen $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol asesa $percent ɛnnɛ';
  }

  @override
  String alertHitBody(String price) {
    return 'Bo seesei: $price';
  }

  @override
  String get alertOpen => 'Bue';

  @override
  String get keepInTrayTitle => 'Kɔ so yɛ adwuma sɛ wɔto mfɛnsere no mu a';

  @override
  String get keepInTraySubtitle =>
      'WhatStock tena menu bar anaa tray mu, enti kwan tiawa no ne bo ho kɔkɔbɔ kɔ so yɛ adwuma.';

  @override
  String get termsOfUse => 'Dwumadi Mmara';

  @override
  String get privacyPolicy => 'Kokoam Nhyehyɛe';

  @override
  String get subscriptionLegal =>
      'Subscription yɛ foforo ankasa bosome biara kosi sɛ wobɛtwa mu. Sɛ wokyerɛw wo din a, wopene Dwumadi Mmara ne Kokoam Nhyehyɛe no so.';

  @override
  String get deleteAccount => 'Popa akawnt';

  @override
  String get deleteAccountTitle => 'Wopɛ sɛ wopopa w’akawnt?';

  @override
  String get deleteAccountBody =>
      'Wɔbɛpopa w’akawnt ne biribiara a ɛwɔ yɛn server so (email, dodow, dwumadi) koraa, na nhwehwɛmu a womfaa nni dwuma no bɛyera. Subscription a wotuaa wɔ browser mu no, wɔbɛtwa mu ntɛm ara; App Store anaa Google Play subscription deɛ, ɛsɛ sɛ wotwa mu wɔ store no nhyehyɛe mu.';

  @override
  String get deleteLocalData =>
      'Popa data a ɛwɔ mfiri yi so nso (wo nkyɛfa, kɔkɔbɔ, nea wopɛ, abakɔsɛm, nhwehwɛmu a woakora)';

  @override
  String get deleteAccountConfirm => 'Popa koraa';

  @override
  String get accountDeleted => 'Wɔapopa w’akawnt.';

  @override
  String get errDeleteAccount =>
      'Yɛantumi ampopa akawnt no. Hwɛ wo nkitahodi na sɔ hwɛ bio.';

  @override
  String get aiTrialBriefNote =>
      'Sɔhwɛ nhwehwɛmu yɛ tiawa, na AI model a ɛyɛ ntɛm na ɛyɛ. Sɛ wowɔ plan a, wunya yɛn AI a ɛyɛ papa sen biara, intanɛt so nhwehwɛ pii, ne tenten Mfinimfini ne Emu dɔ.';

  @override
  String get billingMonthly => 'Bosome biara';

  @override
  String get billingYearly => 'Afe biara';

  @override
  String get yearlyDiscount => 'Bosome 2 kwa';

  @override
  String get perYear => '/ afe';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price bosome biara';
  }

  @override
  String get subscriptionLegalYearly =>
      'Subscription yɛ foforo ankasa afe biara kosi sɛ wobɛtwa mu. Sɛ wokyerɛw wo din a, wopene Dwumadi Mmara ne Kokoam Nhyehyɛe no so.';

  @override
  String get myAnalyses => 'Me nhwehwɛmu';

  @override
  String get navAlerts => 'Kɔkɔbɔ';

  @override
  String get inviteTitle => 'Nhwɛkan a ɛto mu';

  @override
  String get inviteBody =>
      'Seesei deɛ, wɔde WhatStock ma nnipa a wɔafrɛ wɔn nko ara. Hyɛ nsafrɛ code a wonyaeɛ no.';

  @override
  String get inviteCodeLabel => 'Nsafrɛ code';

  @override
  String get inviteContinue => 'Kɔ so';

  @override
  String get inviteInvalid => 'Nsafrɛ code yi nteɛ.';

  @override
  String get inviteExpired =>
      'Nsafrɛ yi bere atwam. Bisa onipa a ɔfrɛɛ wo no ma ɔmma wo code foforo.';

  @override
  String get inviteDeviceLimit =>
      'Wɔde nsafrɛ code yi di dwuma wɔ mfiri dodoɔ a ɛsɛ so dedaw.';

  @override
  String get previewConfidential => 'Nhwɛkan a ɛyɛ kokoam';

  @override
  String get errPreviewDailyLimit =>
      'Nhwɛkan yi nhwehwɛmu dodoɔ a ɛsɛ ɛnnɛ no asa. San bɔ mmɔden ɔkyena.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'nnɔnhwerew $count a atwam',
      one: 'dɔnhwerew 1 a atwam',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'nna $count a atwam',
      one: 'da 1 a atwam',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Wopɛ sɛ woyɛ nhwehwɛmu yi foforo?';

  @override
  String staleBody(String age) {
    return 'Wɔyɛɛ no $age. Ebia ɛboɔ, kasɛɛbɔ ne nsunsuansoɔ asesa fi saa bere no.';
  }

  @override
  String get staleKeep => 'Kyerɛ nea edi kan no';

  @override
  String get staleRefresh => 'Yɛ foforo';

  @override
  String seeAll(int count) {
    return 'Hwɛ ne nyinaa ($count)';
  }

  @override
  String get searchAnalyses => 'Hwehwɛ wo nhwehwɛmu mu';

  @override
  String get deleteAnalysis => 'Popa';

  @override
  String analysisDeleted(String symbol) {
    return 'Wɔapopa $symbol nhwehwɛmu';
  }

  @override
  String get keyLevelAlertHint =>
      'Mia gyinabea bi na wobɛnya kɔkɔbɔ bere a bo no du hɔ.';

  @override
  String get shareAnalysisTitle => 'Kyɛ nhwehwɛmu';

  @override
  String get shareAsImage => 'Kyɛ sɛ mfonini';

  @override
  String get shareAsText => 'Kyɛ sɛ nkyerɛwee';

  @override
  String get shareCardFooter => 'Wɔde WhatStock na ɛyɛe';

  @override
  String get shareCardDisclaimer => 'AI nhwehwɛmu · ɛnyɛ sikahyɛmu ho afotu';

  @override
  String get referralTitle => 'Frɛ wo nnamfonom';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'nhwehwɛmu $count a ɛka ho',
      one: 'nhwehwɛmu 1 a ɛka ho',
    );
    return 'Kyɛ wo code no. Wo damfo bɛnya $_temp0 ntɛm ara, na wo nso wobɛnya saa ara wɔ ne nhwehwɛmu a edi kan no akyi.';
  }

  @override
  String get referralYourCode => 'Wo code';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Wofrɛɛ: $invited · Akatua: $rewarded';
  }

  @override
  String get referralHaveCode => 'Wowɔ code bi a efi wo damfo hɔ?';

  @override
  String get referralRedeem => 'Fa di dwuma';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Wɔde nhwehwɛmu $count a ɛka ho aka ho. Akwaaba!',
      one: 'Wɔde nhwehwɛmu 1 a ɛka ho aka ho. Akwaaba!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown => 'Code yi nni hɔ. Hwɛ mu yie na sɔ hwɛ bio.';

  @override
  String get referralErrOwn => 'Wuntumi mfa wo ankasa wo code nni dwuma.';

  @override
  String get referralErrAlready => 'Wode wo damfo bi code adi dwuma dedaw.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'nhwehwɛmu $count a ɛka ho',
      one: 'nhwehwɛmu 1 a ɛka ho',
    );
    return 'Mede WhatStock hwehwɛ kyɛfa mu: twa kyɛfa bi mfonini na AI no bɛkyerɛkyerɛ mu. Wode me code $code bɛnya $_temp0.';
  }

  @override
  String get referralCopied => 'Wɔakɔpi code no';

  @override
  String get onboardTitle1 => 'Twa kyɛfa bi mfonini';

  @override
  String get onboardBody1 =>
      'Broker app bi skrin, atesɛm krataa anaa adwumakuw bi agyiraehyɛde ara bɛyɛ: WhatStock behu kyɛfa no na akyerɛ ne bo, ne nsesae mfonini ne ne nkontabuo titiriw.';

  @override
  String get onboardTitle2 => 'Te ase wɔ simma kakra mu';

  @override
  String get onboardBody2 =>
      'AI nhwehwɛmu no kyerɛkyerɛ nea ɛma kyɛfa no bo kɔ soro anaa fam, ne asiane ahorow, ne bo ankasa, ne kwan abiɛsa a ne bo betumi afa so – ne fibea ahorow ka ho, na ɛwɔ wo kasa mu.';

  @override
  String get onboardTitle3 => 'Nya nsɛm no daa';

  @override
  String get onboardBody3 =>
      'Nea mepɛ, wo nkyɛfa ne bo ho kɔkɔbɔ ma wuhu nea ɛrekɔ so. Wo nhwehwɛmu ahorow tena wo fon so, na wubetumi abue bio bere biara.';

  @override
  String get onboardNext => 'Toa so';

  @override
  String get onboardStart => 'Fi ase';

  @override
  String get onboardSkip => 'Twa mu';

  @override
  String changesTitle(String date) {
    return 'Efi nhwehwɛmu a edi kan no ($date)';
  }

  @override
  String get changesPrice => 'Bo';

  @override
  String get changesNoMajor => 'Daakye tebea no nsesaa kɛse biara.';

  @override
  String get changesPreviousSummary => 'Nhwehwɛmu a edi kan no tiawa';

  @override
  String get telemetryTitle => 'Boa ma WhatStock nyɛ yiye';

  @override
  String get telemetryBody =>
      'Kyɛ akontaabu a ɛmfa wo din a ɛfa sɛnea wode app no di dwuma ne mfomso ho amanneɛbɔ: dwumadi a wode di dwuma ne nea ɛkɔɔ basaa. Yɛremfa wo nkyɛfa, wo nhwehwɛmu anaa wo ankasa wo ho nsɛm nkyɛ da. Wobɛtumi asesa yei bere biara wɔ Nhyehyɛe mu.';

  @override
  String get telemetryAllow => 'Ma kwan';

  @override
  String get telemetryDecline => 'Daabi, meda wo ase';

  @override
  String get telemetrySetting =>
      'Akontaabu a ɛmfa wo din ne mfomso ho amanneɛbɔ';

  @override
  String get telemetrySettingHint =>
      'Mpɛn dodow a wode dwumadi ahorow di dwuma ne mfomso ho amanneɛbɔ, a wo ankasa wo ho nsɛm anaa nea wohwehwɛ ne wo nhwehwɛmu mu nsɛm nni mu.';

  @override
  String get askButton => 'Bisa nhwehwɛmu yi ho asɛm';

  @override
  String askTitle(String symbol) {
    return 'Nsɛmmisa fa $symbol ho';
  }

  @override
  String get askIntro =>
      'Bisa biribiara fa nhwehwɛmu no ho: nea asiane bi kyerɛ, nea ebetumi asesa daakye tebea no, sɛnea wonyaa nɔma bi. Mmuaeɛ no gyina nhwehwɛmu yi so, na ɛnyɛ sikahyɛmu ho afotu.';

  @override
  String get askHint => 'Bisa asɛm…';

  @override
  String get askSend => 'Soma';

  @override
  String get askThinking => 'Redwene ho…';

  @override
  String get askSuggest1 => 'Asiane bɛn na ɛso sen biara?';

  @override
  String get askSuggest2 => 'Dɛn na ebetumi asesa daakye tebea no?';

  @override
  String get askSuggest3 => 'Kyerɛkyerɛ mu wɔ ɔkwan a ɛnyɛ den so';

  @override
  String get askMaxReached =>
      'Ɛno ne asɛmmisa a etwa to ma nhwehwɛmu yi. Yɛ nhwehwɛmu foforo na woatumi abisa bio.';

  @override
  String get errAskLimit =>
      'Woadu nsɛmmisa dodoɔ a ɛsɛ ɛnnɛ no ano. Mepa wo kyɛw, san bɔ mmɔden ɔkyena.';

  @override
  String get eventTomorrow => 'Ɔkyena';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'nna $days akyi',
      one: 'da 1 akyi',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Abosome mmiɛnsa akontaabu';

  @override
  String get eventBeforeOpen => 'ansa na dwa no abue';

  @override
  String get eventAfterClose => 'dwa no to akyi';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS a wɔhwɛ kwan: $value';
  }

  @override
  String get eventFromAnalysis => 'Efi wo nhwehwɛmu mu';

  @override
  String get eventDividend => 'Dividend a wɔhwɛ kwan';

  @override
  String get eventDividendEstimate =>
      'Wɔabu akontaa afi ntua a wokyerɛw too hɔ mu';

  @override
  String get eventsHint =>
      'Nea mepɛ ne wo nkyɛfa mu kyɛfa akontaabu da wɔ nnafua 90 a ɛreba no mu, nsɛm a ɛwɔ da a wo nhwehwɛmu ahu, ne dividend a wɔhwɛ kwan afi ntua a wokyerɛw too hɔ mu.';

  @override
  String get eventsEmpty =>
      'Nsɛm biara a ɛwɔ da nni nnafua 90 a ɛreba no mu. Fa nea mepɛ anaa wo nkyɛfa mu kyɛfa ka ho na hwɛ wɔn akontaabu da wɔ ha; dividend a wokyerɛw too hɔ kyerɛ ntua a edi hɔ a wɔhwɛ kwan.';

  @override
  String get compareTitle => 'Ntotoho';

  @override
  String get compareAdd => 'Fa nkyɛfa bi ka ho';

  @override
  String get compareRemove => 'Yi fi mu';

  @override
  String get compareTickerHint => 'Ticker, sɛ MSFT';

  @override
  String get compareHint =>
      'Akontaa atitiriw si nkyɛn nkyɛn; wɔahyɛ bo a ɛyɛ papa sen biara wɔ nsensanee biara mu no nsow. Sika dodow no wɔ nkyɛfa biara ankasa sika mu.';

  @override
  String get compareNoAnalysis => 'Nhwehwɛmu biara nni hɔ mmom';

  @override
  String get portfolioDividends => 'Afe biara mfaso kyɛ';

  @override
  String portfolioDividendYield(String percent) {
    return 'Mfaso kyɛ wɔ bo so: $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Mfaso kyɛ a yɛhwɛ kwan afe biara gyina mfaso kyɛ a wɔtuaa wɔ abosome 12 a atwam no so; yɛrentumi nhyɛ da sɛ wɔbɛtua bi daakye.';

  @override
  String positionDividend(String amount) {
    return 'Mfaso kyɛ: $amount afe biara';
  }

  @override
  String get chartAvgCost => 'Wo mfinimfini';

  @override
  String get chartAlertLevel => 'Kɔkɔbɔ';

  @override
  String get marketsToday => 'Dwa ahorow ɛnnɛ';

  @override
  String get notesTitle => 'Me nkyerɛwee';

  @override
  String get notesHint =>
      'Adɛn nti na wotɔeɛ, dɛn na worehwɛ, dɛn na ɛbɛma woatɔn?';

  @override
  String get notesInfo =>
      'Ɛkora wɔ mfiri yi so nko ara. AI nhwehwɛmu no de wo nkyerɛwee no bɛka ho.';

  @override
  String notesSaved(String date) {
    return 'Wɔakora $date';
  }

  @override
  String get peersTitle => 'Adwumakuw a ɛte sɛ yei';

  @override
  String get portfolioExport => 'Yi kɔ CSV mu';

  @override
  String get portfolioImport => 'Fa fi CSV mu bra';

  @override
  String get portfolioImportHint =>
      'Fa adetɔ baako hyɛ nkyerɛwee biara so: ticker agyiraehyɛde, dodow, bo, sika, da (YYYY-MM-DD). Wobetumi de kɔma, semikɔlɔn anaa tab atetew afanem no mu; atifi nkyerɛwee no nhia.';

  @override
  String get portfolioImportButton => 'Fa bra';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Wɔde adetɔ $count aka ho',
      one: 'Wɔde adetɔ 1 aka ho',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Wɔagyaw nkyerɛwee $count',
      one: 'Wɔagyaw nkyerɛwee 1',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Wo nkyɛfa, nea wopɛ, bo ho kɔkɔbɔ ne wo nkyerɛwee yɛ pɛ wɔ wo mfiri nyinaa so.';

  @override
  String syncLast(String time) {
    return 'Sync a etwa to: $time';
  }

  @override
  String get syncNow => 'Sync seesei';

  @override
  String get syncFailed => 'Sync no anyɛ yie. Ɛbɛsan abɔ mmɔden bio ankasa.';

  @override
  String get alertEmailTitle => 'Email bere a kɔkɔbɔ bi ba mu';

  @override
  String get alertEmailOn =>
      'Yɛhwɛ wo kɔkɔbɔ simma kakra biara na yɛde email bɔ wo amanneɛ, sɛ app no to mu mpo a.';

  @override
  String get alertEmailSignIn =>
      'Fa wo email wura mu wɔ Nhyehyɛe mu na wunya kɔkɔbɔ wɔ email so, sɛ app no to mu mpo a.';

  @override
  String get portfolioHistory => 'Ne bo nsakrae';

  @override
  String get portfolioReviewTitle => 'Wo nkyɛfa AI nhwehwɛmu';

  @override
  String get portfolioReviewIntro =>
      'AI hwɛ wo nkyɛfa nyinaa: sɛnea wo sika aboa ano wɔ baabi koro, adwumayɛ mmeae ne sika ahorow a wo ho twe ho, asiane a wo nkyɛfa no nyinaa kyɛ, ne mfasoɔ a wonya. Ɛde nhwehwɛmu 1 di dwuma.';

  @override
  String get portfolioReviewButton => 'Hwehwɛ me nkyɛfa mu';

  @override
  String get portfolioReviewAgain => 'Hwehwɛ mu bio';

  @override
  String get portfolioReviewWorking => 'Ɛrehwehwɛ wo nkyɛfa mu…';

  @override
  String get digestTitle => 'Nnawɔtwe biara nsɛm tiawa wɔ email so';

  @override
  String get digestHint =>
      'Dwoda biara: sɛnea nea wopɛ ne wo nkyɛfa kɔɔ so nnawɔtwe a atwam no, ne da a wɔbɛda wɔn akontaabu adi.';

  @override
  String get benchmarkTitle => 'Ɛne S&P 500 a wɔde toto ho';

  @override
  String get benchmarkTitleIndex => 'Ɛne index bi a wɔde toto ho';

  @override
  String get benchmarkHintIndex =>
      'Te sɛ nea wode nneɛma a wotɔe biara sika hyɛɛ fund a edi index a woapaw no akyi mu da koro no ara. Mfaso a wɔkyɛ (dividend) nka ho; mfaso a atwam nkyerɛ daakye de.';

  @override
  String get benchmarkYours => 'Nea wotɔe';

  @override
  String benchmarkAhead(String points) {
    return 'Ɛye sen index no ɔha mu nkyɛmu $points';
  }

  @override
  String benchmarkBehind(String points) {
    return 'Ɛka index no akyi ɔha mu nkyɛmu $points';
  }

  @override
  String get portfolioSell => 'Tɔn';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Tɔn $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Kyɛfa biara tɔn bo ($currency)';
  }

  @override
  String get portfolioSellDate => 'Da a wotɔn';

  @override
  String get portfolioSellAll => 'Ne nyinaa';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Wowɔ $quantity';
  }

  @override
  String get portfolioSold => 'Watɔn';

  @override
  String get portfolioRealized => 'Mfaso a wonyae';

  @override
  String get portfolioClosed => 'Nkyɛfa a woatɔn';

  @override
  String get portfolioClosedNote => 'Woatɔn kyɛfa no nyinaa';

  @override
  String get portfolioTransactions => 'Adetɔ ne adetɔn';

  @override
  String get portfolioRealizedByYear => 'Mfaso a wonyae afe biara';

  @override
  String get portfolioRealizedHint =>
      'Wɔde nea wotɔn no hyia w\'adetɔ a edi kan no ho kan (FIFO), na wɔsesa no ɛnnɛ sika sesa bo so. Fa wo broker no krataa di dwuma ma w\'apoobɔ ho nsɛm.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Wɔayi akontaabu foforo a ɛfa abosome mmiɛnsa ho adi fi bere a wɔyɛɛ nhwehwɛmu yi ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Akontaabu foforo';

  @override
  String get portfolioImportBrokers =>
      'Wɔhu Revolut, Trading 212 ne Interactive Brokers nkrataa a wɔde fi mu nso, a nneɛma a wɔtɔn ka ho; wɔgyaw mfaso kyɛ ne sika a wɔde to mu.';

  @override
  String get portfolioImportFile => 'Paw fael bi';

  @override
  String offlineBanner(String time) {
    return 'Nkitahodi biara nni hɔ – yɛrekyerɛ data a yɛkoraa no akyire yi ($time).';
  }

  @override
  String get glossMarketCap =>
      'Sɛnea adwumakuw no nyinaa som bo wɔ dwa so: kyɛfa boɔ × nkyɛfa dodow.';

  @override
  String get glossSharesOutstanding =>
      'Nkyɛfa dodow a adwumakuw no ayi. Sɛ ɛkɔ soro a, kyɛfa biara nya ɔfa ketewa; sɛ wɔsan tɔ bi a, ɛtew so.';

  @override
  String get glossPeTrailing =>
      'Boɔ ÷ mfaso a kyɛfa biara nyae wɔ abosome 12 a atwam mu: mfe dodow a wotua mprempren mfaso no ho ka. Ɛba fam a, ɛyɛ mmerɛw, nanso adwumakuw a wɔnyin ntɛm taa wɔ P/E kɛse.';

  @override
  String get glossPeForward =>
      'Te sɛ P/E, nanso ɛde mfaso a nhwehwɛmufo hwɛ kwan wɔ abosome 12 a ɛreba no di dwuma. Sɛ ɛwɔ P/E a atwam no ase a, ɛkyerɛ sɛ wɔhwɛ kwan sɛ mfaso bɛkɔ soro.';

  @override
  String get glossPb =>
      'Boɔ ÷ akontaabu bo (agyapade yi ka) wɔ kyɛfa biara so. Sɛ ɛbɛn 1 a, ɛkyerɛ sɛ dwa no bu adwumakuw no sɛnea nneɛma a ɛwɔ no wɔ krataa so te.';

  @override
  String get glossPs =>
      'Dwa so bo ÷ sika a ɛba mu afe biara. Ɛho wɔ mfaso ma adwumakuw a wonnya nnya mfaso pii; fa toto afoforo a wɔwɔ adwuma koro mu ho.';

  @override
  String get glossEvToFcf =>
      'Adwumakuw no bo a ka ka ho (EV) ÷ sika a ɛnya afe mu wɔ ne sika a ɛde to dwuma akyi. Ɛba fam a, ɛkyerɛ sɛ wunya sika pii ma boɔ no.';

  @override
  String get glossPeg =>
      'P/E ÷ mfaso nkɔso a wɔhwɛ kwan afe biara (%). Sɛ ɛbɛn 1 a, nnipa pii bu no sɛ ɛfata; ɛde P/E no toto nkɔso ho.';

  @override
  String get glossEps =>
      'Mfaso a kyɛfa biara nyae wɔ abosome 12 a atwam mu. Sɛ EPS kɔ soro mfe pii a, ɛyɛ adwumakuw a ne ho yɛ den nsɛnkyerɛnne a ɛyɛ den paa no mu baako.';

  @override
  String get glossBeta =>
      'Sɛnea kyɛfa no taa ne dwa no kɔ: 1 = te sɛ dwa no, 1.5 = nsakrae a ɛsõ bɛyɛ 50%, 1 ase = ɛyɛ dinn.';

  @override
  String get glossRevenueTtm =>
      'Nneɛma a wɔtɔn nyinaa wɔ abosome 12 a atwam mu, ansa na wɔayi ka biara.';

  @override
  String get glossNetIncomeTtm =>
      'Mfaso a ɛka wɔ ka nyinaa, nsiho ne towtua akyi wɔ abosome 12 a atwam mu.';

  @override
  String get glossGrossMargin =>
      'Sika a ɛbaa mu no ɔfa a ɛka bere a wɔayi nneɛma no ka tẽẽ akyi. Mfaso nkyemu kɛse taa kyerɛ tumi a ɛwɔ wɔ boɔ so.';

  @override
  String get glossOperatingMargin =>
      'Sika a ɛbaa mu no ɔfa a ɛka bere a wɔde adwuma no ayɛ (akatua, efi ka, dwadi nkamfo) akyi, ansa na wɔatua nsiho ne towtua.';

  @override
  String get glossNetMargin =>
      'Sika a ɛbaa mu no ɔfa a ɛdan mfaso a etwa to. 20% kyerɛ sɛ 100 biara a wɔtɔn mu, 20 yɛ mfaso.';

  @override
  String get glossRoe =>
      'Mfaso wɔ wuranom sika so: afe mfaso ÷ wuranom sika. Ɛkyerɛ sɛnea akannifo de kyɛfa wuranom sika di dwuma yiye; bɛyɛ 15% so a, ɛyɛ den.';

  @override
  String get glossRoa =>
      'Mfaso wɔ agyapade so: afe mfaso ÷ nneɛma a adwumakuw no wɔ nyinaa. Fa toto afoforo a wɔwɔ adwuma koro mu ho.';

  @override
  String get glossDebtToEquity =>
      'Ka ÷ wuranom sika. Ɛkɔ soro a, ɛkyerɛ sika a wɔbɔɔ bosea pii: asiane kɛse bere a nsiho kɔ soro anaa adwuma bɔ fam.';

  @override
  String get glossCurrentRatio =>
      'Agyapade a ɛyɛ bere tiaa mu de ÷ ka a ɛsɛ sɛ wotua wɔ afe mu. 1 so a, ɛkyerɛ sɛ adwumakuw no betumi atua ne ka a ɛbɛn.';

  @override
  String get glossRevenueGrowth =>
      'Sɛnea sika a ɛba mu akɔ soro sɛ wɔde toto afe a atwam ho a.';

  @override
  String get glossEpsGrowth =>
      'Sɛnea mfaso a kyɛfa biara nya akɔ soro sɛ wɔde toto afe a atwam ho a.';

  @override
  String get glossDividendYield =>
      'Afe mfaso kyɛ ÷ kyɛfa boɔ: sika a wobɛnya afe biara, sɛ ɔha nkyemu wɔ nea wotua ho.';

  @override
  String get glossDividendPerShare =>
      'Mfaso kyɛ a wɔtuae wɔ kyɛfa baako so wɔ afe a atwam mu.';

  @override
  String get glossPayoutRatio =>
      'Mfaso no ɔfa a wɔde kyɛ sɛ mfaso kyɛ. Sɛ ɛboro 100% a, adwumakuw no tua bɛboro nea ɛnya, na ɛntaa nkyɛ.';

  @override
  String get portfolioBeta => 'Wo nkyɛfa beta';

  @override
  String get glossPortfolioBeta =>
      'Wo nkyɛfa no beta, a wɔakari no sɛnea wɔn bo te: ɛkyerɛ bɛyɛ ɔha mu nkyɛmu dodoɔ a wo nkyɛfa sesa bere a dwa no sesa 1%. Sɛ ɛboro 1 a, wɔsesa sene dwa no; sɛ ɛwɔ 1 ase a, wɔsesa kakra. Wɔmfa sika a ɛda hɔ nka ho.';

  @override
  String get portfolioTop3 => 'Nkyɛfa 3 a ɛsõ koraa';

  @override
  String get glossPortfolioTop3 =>
      'Wo nkyɛfa no bo dodoɔ a ɛwɔ nkyɛfa mmiɛnsa a ɛsõ koraa a wowɔ no mu. Sɛ ɛkɔ soro a, adwumakuo baako ho asɛm bɔne betumi asɛe wo nkyɛfa nyinaa kɛse.';

  @override
  String get glossDividendGrowth5y =>
      'Sɛnea mfaso kyɛ wɔ kyɛfa biara so nyinii afe biara, sɛ yɛkyɛ mu pɛpɛɛpɛ a, wɔ mfe enum a atwam no mu. Nkɔso a ɛkɔ so daa taa kyerɛ sɛ adwumakuw no wɔ ahotoso wɔ ne sika a ɛba ne nea ɛkɔ mu; sɛ wɔtew so a, ɛtaa yɛ kɔkɔbɔ sɛnkyerɛnne.';

  @override
  String get glossYieldOnCost =>
      'Dividend a woanya wɔ abosome 12 a atwam no mu, a wɔde akyekyɛ sika a wotuaa maa kyɛfa a wowɔ no da so. Ɛnte sɛ mfaso kyɛ wɔ bo so: wɔde wo ankasa tɔ bo na ɛsusuw, ɛnyɛ nnɛ bo.';

  @override
  String get glossTitle => 'Ɛkyerɛ dɛn?';

  @override
  String get watchNewsTitle => 'Kaseɛbɔ fa wo nkyɛfa ho';

  @override
  String get undo => 'San kɔ';

  @override
  String get watchSort => 'Hyehyɛ';

  @override
  String get watchSortOwn => 'Me nhyehyɛe';

  @override
  String get watchSortGainers => 'Nea ɛforo kɛse di kan';

  @override
  String get watchSortLosers => 'Nea ɛtew kɛse di kan';

  @override
  String get watchSortName => 'Ticker so (A–Z)';

  @override
  String get watchHint =>
      'Twe nsakuraeɛ no na sesa nhyehyɛe no, twe kɔ benkum na yi fi mu. Ntwamu no kyerɛ nnafua 30 a atwam.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: wo nhwehwɛmu no awie.';
  }

  @override
  String alertFromCost(String price) {
    return 'Fi wo sika a wotua no mfinimfini so ($price):';
  }

  @override
  String get briefTitle => 'Ɛnnɛ ne wo stocks';

  @override
  String get briefButton => 'Bɔ ɛnnɛ mu tiaa';

  @override
  String get briefHint =>
      'AI nsɛm tiaa a ɛkyerɛ sɛnea wo portfolio ne wo nea w’ani gye ho kɔɔ ɛnnɛ ne nsɛm foforo a ɛfa wɔn ho. Ɛnni nhwehwɛmu biara.';

  @override
  String get briefRefresh => 'Yɛ no foforo';

  @override
  String get sectionEarnings => 'Mfaso akontaabu';

  @override
  String earningsNext(String date) {
    return 'Akontaabu a ɛdi hɔ: $date';
  }

  @override
  String get earningsExpected => 'EPS a wɔhwɛ kwan';

  @override
  String get earningsReported => 'EPS a wɔbɔɔ ho amanneɛ';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          '$beats wɔ abosome mmiɛnsa mmerɛ $total a atwam no mu: EPS duu nea wɔhwɛɛ kwan anaa ɛboroo so',
      one:
          '$beats wɔ abosome mmiɛnsa mmerɛ 1 mu: EPS duu nea wɔhwɛɛ kwan anaa ɛboroo so',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol bɛda n’abosome mmiɛnsa akontaabu adi ɔkyena';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol da n’abosome mmiɛnsa akontaabu adi ɛnnɛ';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return '$symbol dividend a wɔhwɛ kwan ɛnnɛ';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Bɛyɛ $amount. Sɛ ɛba a, kyerɛw no wɔ wo portfolio mu.';
  }

  @override
  String get dividendRemindersTitle => 'Dividend ho nkaebɔ';

  @override
  String get dividendRemindersSubtitle =>
      'Wɔbɛbɔ wo amanneɛ da a wɔhwɛ dividend kwan, gyina ntua a wokyerɛw too hɔ no nhyehyɛe so, sɛnea ɛbɛyɛ a wobɛtumi akyerɛw';

  @override
  String get earningsRemindersTitle => 'Akontaabu ho nkaebɔ';

  @override
  String get earningsRemindersSubtitle =>
      'Wɔbɛbɔ wo amanneɛ da koro ansa na nea wopɛ anaa wo portfolio mu stock bi bɛda abosome mmiɛnsa akontaabu adi';

  @override
  String addAllToFavorites(int count) {
    return 'Fa ne nyinaa ka nea mepɛ ho ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Fa fi screenshot mu bra';

  @override
  String get holdingsReading => 'Ɛrekenkan wo nkyɛfa…';

  @override
  String get holdingsReviewTitle => 'Nkyɛfa a yɛahu';

  @override
  String get holdingsReviewHint =>
      'Hwɛ nɔma no yiye ansa na wode aka ho. Bo no yɛ bo mfinimfini a wotɔɔ kyɛfa biara, ɛnyɛ nnɛ bo.';

  @override
  String get holdingsNoPrice => 'Bo mfinimfini a wotɔe nni mfonini no so';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Fa nkyɛfa $count ka ho',
      one: 'Fa kyɛfa 1 ka ho',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Yɛanhu kyɛfa biara wɔ mfonini yi so. Sɔ screenshot a ɛfiri wo broker no nkyɛfa krataafa so hwɛ.';

  @override
  String get week52Range => 'Nnawɔtwe 52 bo ntam';

  @override
  String week52BelowHigh(String percent) {
    return '$percent wɔ Nnawɔtwe 52 bo kɛse ase';
  }

  @override
  String get week52AtHigh => 'Ɛwɔ Nnawɔtwe 52 bo kɛse so';

  @override
  String get alertKindTrailing => 'Sɛ ɛtew fi soro pɛn';

  @override
  String get alertTrailingPercent => 'Ntew fi soro pɛn (%)';

  @override
  String get alertTrailingHint =>
      'Ɛdi boɔ no akyi kɔ soro: ɛbɛbɔ wo amanneɛ sɛ boɔ no tew saa dodoɔ yi fi ne soro pɛn a ɛduruu firi bere a wosiee no.';

  @override
  String alertDescTrailing(String percent) {
    return '$percent ntew fi soro pɛn';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'soro pɛn de besi seesei: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol atew $percent afi ne soro pɛn';
  }

  @override
  String get sectionInsiders => 'Adwumapanyin nkyɛfa adetɔ ne adetɔn';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'adetɔ $count',
      one: 'adetɔ 1',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'adetɔn $count',
      one: 'adetɔn 1',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Nea ɛkae: nkyɛfa $shares';
  }

  @override
  String get insiderBuy => 'Tɔe';

  @override
  String get insiderSell => 'Tɔnee';

  @override
  String get insiderHint =>
      'Adwumapanyinfo ne akwankyerɛfo nkyɛfa a wɔtɔɔ ne wɔtɔnee wɔ dwa so nnafua 90 a atwam yi mu (SEC Form 4). Yɛnkan option a wɔde dii dwuma ne nkyɛfa a wɔde maa wɔn akyɛde.';

  @override
  String get insiderNone =>
      'Adwumapanyinfo ntɔɔ anaa wɔntɔnee nkyɛfa biara wɔ dwa so nnafua 90 a atwam yi mu.';

  @override
  String get analystTrend => 'Sɛnea adwene sesaa ɔsram biara';

  @override
  String get watchListAll => 'Ne nyinaa';

  @override
  String get watchListNew => 'Nhyehyɛe foforo';

  @override
  String get watchListName => 'Nhyehyɛe no din';

  @override
  String get watchListRename => 'Sesa nhyehyɛe no din';

  @override
  String get watchListDelete => 'Yi nhyehyɛe no fi hɔ';

  @override
  String get watchListAddTo => 'Fa ka nhyehyɛe bi ho';

  @override
  String get watchListEmpty =>
      'Stɔk biara nni nhyehyɛe yi mu da. Mia nhyehyɛe bɔtɔn a ɛbɛn stɔk bi na fa ka ho.';

  @override
  String get portfolioAskTitle => 'Nsɛmmisa fa wo nkyɛfa ho';

  @override
  String get rangeYtd => 'Afe yi';

  @override
  String get backupTitle => 'Akorae';

  @override
  String get backupSave => 'Kora wo nneɛma';

  @override
  String get backupSaveHint =>
      'Nea wopɛ, wo nhyehyɛe, wo nkyɛfa, wo kɔkɔbɔ ne wo nkyerɛwee wɔ fael baako mu.';

  @override
  String get backupRestore => 'San fa fi akorae mu';

  @override
  String get backupRestoreHint =>
      'Ɛde nea ɛwɔ fael no mu ka ho; wɔmpopa biribiara a wowɔ seesei.';

  @override
  String get backupRestored => 'Wɔasan de akorae no aba.';

  @override
  String get backupInvalid => 'Saa fael yi nyɛ WhatStock akorae.';

  @override
  String get allocationPositions => 'Nkyɛfa';

  @override
  String get allocationSectors => 'Afa';

  @override
  String get allocationCurrencies => 'Sika ahodoɔ';

  @override
  String get allocationAccounts => 'Akontaabu';

  @override
  String get compareReturn1y => 'Mfe 1 mfaso';

  @override
  String get compareFromHigh => 'Firi Nnawɔtwe 52 bo kɛse';

  @override
  String get briefAutoTitle => 'Nsɛm tiaa da biara anɔpa';

  @override
  String get briefAutoSubtitle =>
      '“Ɛnnɛ ne wo stocks” yɛ ne ho ankasa anɔpa 7:00 akyi bere a app no reyɛ adwuma; kɔmputa so no, nkaebɔ bɛma woahu. Ɛfiri wo nsɛmmisa a ɛsɛ da biara mu, ɛnni nhwehwɛmu biara.';

  @override
  String get targetsButton => 'Botaeɛ nkyekyɛmu';

  @override
  String get targetsTitle => 'Botaeɛ nkyekyɛmu';

  @override
  String get targetsHint =>
      'Kyerɛ ɔfa a nkyɛfa biara nsa bɛka wɔ portfolio no mu. Gyaw beaeɛ no hunu sɛ wonni botaeɛ biara a. Afei app no bɛkyerɛ deɛ ɛsɛ sɛ wotɔ anaa wotɔn na woadu hɔ.';

  @override
  String targetsSum(String percent) {
    return 'Ne nyinaa: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Tɔ ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Tɔn ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Edu botaeɛ so';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol EPS boro deɛ wɔhwɛɛ kwan';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol EPS anndu deɛ wɔhwɛɛ kwan';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'EPS a wɔbɔɔ ho amanneɛ $actual, wɔhwɛɛ kwan $estimate';
  }

  @override
  String get newsExplain => 'Dɛn na eyi kyerɛ?';

  @override
  String get watchAlertAll => 'Kɔkɔbɔ wɔ da koro nsakrae kɛse ho';

  @override
  String get watchAlertAllHint =>
      'Boɔ ho kɔkɔbɔ ma kyɛfa biara a ɛwɔ nhyehyɛe yi mu: ɛbɛbɔ wo kɔkɔ sɛ ɛsesa saa dodow yi da koro mu, ɛkɔ soro anaa fam. Deɛ ɛwɔ bi dada no bɛkora ne deɛ.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Wɔde kɔkɔbɔ $count asi hɔ',
      one: 'Wɔde kɔkɔbɔ 1 asi hɔ',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Yi mfaso a woanya kɔ (CSV)';

  @override
  String get portfolioAnnualReturn => 'Afe mfaso';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / afe';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Mfaso a ɛgyina sika so afe biara (XIRR): ɛhwɛ bere a wotɔe ne bere a wotɔn, enti sika a wode ka ho akyiri no nsɛe no. Yɛkyerɛ no bere a w\'adetɔ a edi kan no adi afe koro anaa nea ɛboro saa; mfaso kyɛ nka ho.';

  @override
  String get eventsAddToCalendar => 'Fa ka kalenda ho (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Portfolio kɔkɔbɔ';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Wɔbɛbɔ wo amanneɛ sɛ wo portfolio nyinaa sesa saa dodow yi da koro mu a.';

  @override
  String get portfolioMoveAlertOff => 'Adum';

  @override
  String portfolioMoveUp(String percent) {
    return 'Wo portfolio akɔ soro $percent ɛnnɛ';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Wo portfolio aba fam $percent ɛnnɛ';
  }

  @override
  String get whatIfTitle => 'Sɛ wode sika hyɛɛ mu a, anka ɛbɛyɛ dɛn?';

  @override
  String get whatIfAmount => 'Sika dodow';

  @override
  String whatIfResult(String amount, String period) {
    return 'Sɛ wode $amount hyɛɛ mu $period a atwam no a, nnɛ anka ɛsom';
  }

  @override
  String get whatIfNote =>
      'Egyina kyɛfa no bo nkutoo so: mfaso kyɛ, ka ne towtua nka ho. Mfaso a atwam no nkyerɛ deɛ ɛbɛba daakye.';

  @override
  String get watchShare => 'Kyɛ nhyehyɛe no';

  @override
  String get watchImport => 'Fa ticker agyiraehyɛde ka ho';

  @override
  String get watchImportHint =>
      'Fa ticker agyiraehyɛde hyɛ mu, na fa kɔma, kwan hunu anaa nkyerɛwee foforo tetew mu – sɛ nhwɛso no, nhyehyɛe bi a obi de akyɛ wo.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Wɔde kyɛfa $count aka ho',
      one: 'Wɔde kyɛfa 1 aka ho',
      zero: 'Kyɛfa foforo biara nni hɔ',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Nea ɛsõ kɛse di kan';

  @override
  String get positionsSortGain => 'Mfaso nyinaa a ɛkorɔn di kan';

  @override
  String get positionsSortToday => 'Ɛnnɛ deɛ ɛyɛ papa di kan';

  @override
  String get chartMyBuys => 'Wo adetɔ';

  @override
  String get chartMySells => 'Wo adetɔn';

  @override
  String get shortcutsTitle => 'Kiiboɔd kwan tiawa';

  @override
  String usMarketOpen(String time) {
    return 'Amerika dwa abue · ɛbɛto mu $time akyi';
  }

  @override
  String usMarketClosed(String time) {
    return 'Amerika dwa ato mu · ɛbɛbue $time akyi';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes min';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours dɔn $minutes min';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days nna $hours dɔn';
  }

  @override
  String get dividendGoalSet => 'Hyɛ bosome biara dividend botaeɛ';

  @override
  String get dividendGoalTitle => 'Bosome biara dividend botaeɛ';

  @override
  String get dividendGoalAmount => 'Dividend bosome biara';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Bɛyɛ $amount bosome biara, sɛnea mfaso te nnɛ · $percent · Botaeɛ: $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Bɛyɛ $amount bosome biara, sɛnea mfaso te nnɛ · Woadu wo botaeɛ: $goal';
  }

  @override
  String get portfolioAccount => 'Akontaabu';

  @override
  String get portfolioAccountHint => 'sɛ nhwɛso, TBSZ 2026 (ɛnhia)';

  @override
  String get portfolioAccountAdd => 'Kyerɛ akontaabu bi';

  @override
  String get portfolioAccountsAll => 'Akontaabu nyinaa';

  @override
  String get portfolioAccountNote =>
      'Saa akontaabu yi adetɔ, adetɔn ne dividend nko ara. Sika a ɛda hɔ, botaeɛ ne AI nhwehwɛmu da adi wɔ Akontaabu nyinaa ase.';

  @override
  String get portfolioNoAccount => 'Akontaabu nni hɔ';

  @override
  String portfolioFee(String currency) {
    return 'Akatua ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Fa akatua bi ka ho';

  @override
  String portfolioFeeRow(String amount) {
    return 'Akatua: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'Afe nsɛm tiawa';

  @override
  String get portfolioProceeds => 'Adetɔn mu sika';

  @override
  String get portfolioCostBasis => 'Adetɔ ka';

  @override
  String get portfolioFeesPaid => 'Akatua a wotuae';

  @override
  String get portfolioAnnualSummaryNote =>
      'Sika dodow no wɔ sika a edi kan no mu, wɔnsesaa no. Wɔayi adetɔn akatua no afi adetɔn mu sika no mu; adetɔ ka no ka adetɔ akatua no ho (FIFO). Ma wo tow ho nsɛm, sesa no wɔ sika sesa bo a wo tow adwumakuw hwehwɛ no so.';

  @override
  String get portfolioShare => 'Kyɛ nkɔsoɔ';

  @override
  String get portfolioShareHeading => 'Me nkyɛfa';

  @override
  String get portfolioTopHoldings => 'Nkyɛfa a ɛsõ koraa';

  @override
  String get portfolioShareNote =>
      'Ɔha mu nkyɛmu nko ara na wɔkyɛ, ɛnyɛ sika dodow.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nkyɛfa $count',
      one: 'Kyɛfa 1',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'Ɛnyɛ sikahyɛmu ho afotu';

  @override
  String get contributionButton => 'Fa sika foforo hyɛ mu';

  @override
  String contributionAmount(String currency) {
    return 'Sika a wode bɛhyɛ mu ($currency)';
  }

  @override
  String get contributionHint =>
      'Wɔtɔ nko ara, wɔntɔn hwee: nkyɛfa a aka akyi koraa wɔ wɔn botaeɛ ho na wɔnya sika no kan.';

  @override
  String contributionShares(String shares) {
    return '≈ nkyɛfa $shares';
  }

  @override
  String contributionMissing(String symbols) {
    return 'Seesei bo biara nni hɔ mma $symbols: wɔamfa wɔn anka sika nkyɛmu no ho.';
  }

  @override
  String get portfolioGoalSet => 'Hyɛ botaeɛ';

  @override
  String get portfolioGoalTitle => 'Wo nkyɛfa botaeɛ';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · Botaeɛ: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Woadu wo botaeɛ: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Yi botaeɛ no fi hɔ';

  @override
  String get alertEdit => 'Sesa kɔkɔbɔ';

  @override
  String get positionOpenLots => 'Ɛda so wɔ wo nsam (nea edi kan di kan)';

  @override
  String get lotRemoved => 'Wɔapopa adetɔ anaa adetɔn no';

  @override
  String get alertDeleted => 'Wɔapopa kɔkɔbɔ';

  @override
  String get alertsClearTriggered => 'Popa kɔkɔbɔ a ayɛ adwuma';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Wɔapopa kɔkɔbɔ $count',
      one: 'Wɔapopa kɔkɔbɔ 1',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Fie skrin';

  @override
  String get allocationCountries => 'Aman';

  @override
  String get newsExplainNoteResearch =>
      'AI nkyerɛkyerɛmu: ɛhwehwɛ nokwasɛm no wɔ intanɛt so, ebue asɛm no na ɛhwɛ sɛnea wobetumi de wo ho ato fibea no so. Ɛnyɛ sikahyɛmu ho afotu. Ɛfiri wo nsɛmmisa a ɛsɛ da biara mu, ɛnni nhwehwɛmu biara.';

  @override
  String get sourceOfficial => 'Ankasa';

  @override
  String get sourcePressRelease => 'Amanneɛbɔ';

  @override
  String get sourceMajorNews => 'Kaseɛbɔ kɛse';

  @override
  String get sourceOpinion => 'Adwene';

  @override
  String get earningsSummaryButton => 'Dɛn na ɛwɔ amanneɛbɔ a ɛtwa toɔ no mu?';

  @override
  String get earningsSummaryNote =>
      'AI tiawa a ɛfa adwumakuo no mfaso ho amanneɛbɔ ne nsɛm a nsɛmmɔnenafoɔ akyerɛw wɔ ho a ɛhu wɔ intanɛt so. Ɛnyɛ sikahyɛmu ho afotu. Ɛfiri wo nsɛmmisa a ɛsɛ da biara mu, ɛnni nhwehwɛmu biara.';

  @override
  String get compareLastSurprise => 'Kwata a etwaam EPS ne nea wɔhwɛ kwan';

  @override
  String get compareNextReport => 'Akontaabu a ɛdi hɔ';

  @override
  String get resolvingDescription => 'Ɛrehwehwɛ kyɛfa a worekyerɛ…';

  @override
  String get instrumentTitle => 'Saa instrument yi ho asɛm';

  @override
  String get instrumentHint =>
      'Adwumakuo ho nsɛm biara nni hɔ mma saa symbol yi – ebia ɛyɛ ETF, fund anaa depositary receipt. Bisa AI no sɛ ɛyɛ dɛn, dɛn na ɛwɔ mu, na ne bo yɛ sɛn.';

  @override
  String get instrumentAsk => 'Ɛyɛ dɛn?';

  @override
  String get instrumentNote =>
      'AI nkyerɛkyerɛmu a ɛfiri deɛ ɔde baeɛ no fund krataafa ne sikasɛm nkrataafa a ɛhu wɔ intanɛt so. Ɛnyɛ sikahyɛmu ho afotu. Ɛfiri wo nsɛmmisa a ɛsɛ da biara mu, ɛnni nhwehwɛmu biara.';

  @override
  String suggestAskAi(String query) {
    return 'Bisa AI no: “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Seesei bo biara nni hɔ mma $symbols.';
  }

  @override
  String get eventsRecentResults => 'Akontaabu a wɔabɔ ho amanneɛ nnansa yi';

  @override
  String get saveToNotes => 'Kora wɔ me nkyerɛwee mu';

  @override
  String get savedToNotes => 'Wɔakora wɔ wo nkyerɛwee mu';

  @override
  String get portfolioDividendsReceived => 'Dividend a woanya';

  @override
  String get portfolioDividendsThisYear => 'Afe yi';

  @override
  String get portfolioDividendsAllTime => 'Bere nyinaa';

  @override
  String get portfolioAddDividend => 'Fa dividend ka ho';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Sika a woanya ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Da a wɔtuaa';

  @override
  String get portfolioDividendsEmpty =>
      'Wɔnkyerɛw dividend biara nnya. Fa wo nsa kyerɛw, anaa fa wo broker export no bra – ɛfa dividend nkyerɛwee no nso.';

  @override
  String get portfolioSplit => 'Share nkyekyɛmu';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Share nkyekyɛmu: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Wɔsesa atɔdeɛ ne atɔn a wɔyɛɛ ansa na nkyekyɛmu no reba: wɔde dodoɔ bɔ share dodoɔ no ho na wɔkyekyɛ share biara boɔ mu, enti ɛboɔ a wɔtuaa no nsesa.';

  @override
  String get portfolioSplitRatio => 'Nsusuiɛ (foforɔ : dada)';

  @override
  String get portfolioSplitRatioError =>
      'Kyerɛw nsusuiɛ te sɛ 10:1, anaa 1:10 ma nkyekyɛmu a wɔboaboa ano.';

  @override
  String get portfolioSplitDate => 'Nkyekyɛmu no da';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Share nkyekyɛmu $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Wɔayi share nkyekyɛmu no afiri hɔ';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Wɔde share nkyekyɛmu $count akã ho',
      one: 'Wɔde share nkyekyɛmu 1 akã ho',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Wɔde dividend $count aka ho',
      one: 'Wɔde dividend 1 aka ho',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Fa dividend kɔ (CSV)';

  @override
  String get portfolioDividendDeleted => 'Wɔayi dividend no afi hɔ';

  @override
  String get portfolioDividendsHint =>
      'Sika dodow sɛnea ɛbaa wo akontaabu so, wɔ sika a wɔde tuaa mu; wɔde nnɛ bo na ɛsesa nea aboaboa ano no. Fa wo broker nkrataa di dwuma ma wo tow.';

  @override
  String get awayTitle => 'Bere a wonni hɔ no';

  @override
  String awaySince(String when) {
    return 'Efi $when';
  }

  @override
  String get awayQuiet => 'Biribiara anhinhim kɛse.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kɔkɔbɔ $count na ɛbaa',
      one: 'Kɔkɔbɔ 1 na ɛbaa',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Adwuma mu nsunsuanso a wɔdaa no adi: $symbols';
  }

  @override
  String get moveWhyButton => 'Adɛn nti na ɛresesa nnɛ?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent nnɛ';
  }

  @override
  String get moveWhyNote =>
      'AI nkyerɛkyerɛmu a efi nnɛ nsɛm a wohuu wɔ intanɛt so; nokware nti no betumi ayɛ nea wonnim anaa nea ɛsono. Ɛnyɛ sika a wode betɔ ade ho afotu. Ɛde wo da biara nsɛmmisa a wɔde ama wo no di dwuma, ɛnyɛ nhwehwɛmu.';

  @override
  String get sectionTechnical => 'Mfiridwuma mfonini';

  @override
  String get labelSma50 => 'Nna 50 nkyemu';

  @override
  String get labelSma200 => 'Nna 200 nkyemu';

  @override
  String get labelRsi => 'RSI (nna 14)';

  @override
  String get labelVolatility30 => 'Nsakrae (nna 30)';

  @override
  String techAbove(String percent) {
    return '$percent wɔ soro';
  }

  @override
  String techBelow(String percent) {
    return '$percent wɔ ase';
  }

  @override
  String get techOverbought => 'wɔatɔ no dodo';

  @override
  String get techOversold => 'wɔatɔn no dodo';

  @override
  String get techNeutral => 'ɛnni fa biara';

  @override
  String get techGoldenCross =>
      'Nna 50 nkyemu no wɔ nna 200 nkyemu no so – sɛnea tete nhwehwɛmu kyerɛ no, ɛyɛ foro kwan.';

  @override
  String get techDeathCross =>
      'Nna 50 nkyemu no wɔ nna 200 nkyemu no ase – sɛnea tete nhwehwɛmu kyerɛ no, ɛyɛ sian kwan.';

  @override
  String get glossSma50 =>
      'Nna 50 a etwa to a wodii gua no bo a wɔde too nkyemu. Sɛ bo no wɔ so a, wɔtaa fa no sɛ ahoɔden bere tiaa mu; sɛ ɛwɔ ase a, ɛyɛ mmerɛwyɛ.';

  @override
  String get glossSma200 =>
      'Nna 200 a etwa to a wodii gua no bo a wɔde too nkyemu – tete bere tenten kwan no. Sikasɛmfo pii fa bo a ɛwɔ so sɛ bere tenten foro kwan.';

  @override
  String get glossRsi =>
      'Ahoɔden a wɔde toto ho (RSI): ɛde nnansa yi mfaso toto nnansa yi adehwere ho wɔ 0–100 nsusuwii so. Sɛ ɛboro 70 a, wɔtaa ka sɛ wɔatɔ kyɛmfa no dodo (ɛforo ntɛm), sɛ ɛwɔ 30 ase a wɔatɔn no dodo – nanso kwan a emu yɛ den betumi atena hɔ bere tenten.';

  @override
  String get glossVolatility =>
      'Sɛnea bo no sesa da biara, a wɔabu no afe biako so: 20% kyerɛ sɛ afe biara bo no sesa bɛyɛ ±20% mu. Nsakrae kɛse kyerɛ sɛ nsesae akɛse ba akwan abien no nyinaa so.';

  @override
  String get techNote =>
      'Wɔde da biara bo a gua no de ewiee na ebuu. Mfiridwuma nsɛnkyerɛnne ka nea atwam ho asɛm, ɛnyɛ daakye.';

  @override
  String portfolioAbove200(int above, int count) {
    return 'Nkyɛfa $above a ɛfiri $count mu wɔ wɔn nna 200 nkyemu no so';
  }

  @override
  String get watchSignalsTitle => 'Nsɛnkyerɛnne';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · wɔatɔn no dodo';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · wɔatɔ no dodo';
  }

  @override
  String get signalCrossedAbove => 'akɔ ne nna 200 nkyemu no so';

  @override
  String get signalCrossedBelow => 'akɔ ne nna 200 nkyemu no ase';

  @override
  String get signalAlertsTitle => 'Tɛknikal nsɛnkyerɛnne ho amanneɛbɔ';

  @override
  String get signalAlertsSubtitle =>
      'Da koro pɛn, sɛ kyɛfa bi a wodi akyi no wɔatɔn no dodo anaa wɔatɔ no dodo (RSI), anaa ne bo twam ne nna 200 nkyemu no a.';

  @override
  String get signalAlertsNotification => 'Tɛknikal nsɛnkyerɛnne';

  @override
  String get glossaryPageTitle => 'Nsɛmfua nkyerɛase';

  @override
  String get glossaryPageSubtitle =>
      'Nkyerɛkyerɛmu a ɛyɛ mmerɛw fa akontaabu biara a app no kyerɛ ho, fi P/E kosi RSI';

  @override
  String get glossarySearchHint => 'Hwehwɛ wɔ nsɛmfua nkyerɛase no mu';

  @override
  String get portfolioCash => 'Sika a ɛda hɔ';

  @override
  String get portfolioCashTitle => 'Sika a ɛda hɔ dodow';

  @override
  String get portfolioCashHint =>
      'Sika a wonnya mfa nhyɛɛ mu a ɛwɔ wo broker hɔ, sɛnea sika biara te. Wɔkan no wɔ ne bo nyinaa ne nkyekyɛmu mu; wɔnkan no wɔ mfaso mu.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Sika dodow ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Hyehyɛ sika a ɛda hɔ';

  @override
  String get portfolioDividendsByMonth => 'Ɔsram biara';

  @override
  String get dividendsLegendReceived => 'Nea wɔanya';

  @override
  String get dividendsLegendExpected => 'Nea wɔhwɛ kwan';

  @override
  String get portfolioDividendsExpected => 'Nea ɛdi hɔ a wɔhwɛ kwan';

  @override
  String get portfolioDividendsExpectedNote =>
      'Wobu ho akontaa fi nna ne sika dodow a wokyerɛw faa ntuaa no ho mu; nnwumakuw betumi asesa anaa wɔagyae.';

  @override
  String portfolioDividendAround(String date) {
    return 'bɛyɛ $date';
  }
}
