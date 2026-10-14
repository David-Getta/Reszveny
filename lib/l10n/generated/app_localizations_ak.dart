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
}
