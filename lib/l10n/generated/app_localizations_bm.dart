// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bambara (`bm`).
class AppLocalizationsBm extends AppLocalizations {
  AppLocalizationsBm([String locale = 'bm']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'Aksiyɔn dɔ ja ta, ka a ko bɛɛ dɔn.';

  @override
  String get homeHint =>
      'Aksiyɔn sɛbɛn, bɔrisi aplikasiyɔn ka ekaran, gazeti walima sosiyete taamasiyɛn – fɛn o fɛn bɛ se ka aksiyɔn dɔ jira.';

  @override
  String get takePhoto => 'Ja ta';

  @override
  String get chooseFromGallery => 'Sugandi galeri kɔnɔ';

  @override
  String get chooseImage => 'Ja dɔ sugandi';

  @override
  String get enterTickerManually => 'Taamasiyɛn sɛbɛn i yɛrɛ ye';

  @override
  String get tickerInputLabel => 'Aksiyɔn taamasiyɛn';

  @override
  String get tickerInputHint => 'misali: AAPL';

  @override
  String get lookUp => 'Ɲini';

  @override
  String demoModeBanner(String symbols) {
    return 'Demo cogo – sugu kunnafoni kile si ma labɛn. Misali kunnafoniw bɛ yen nin ninnu kama: $symbols.';
  }

  @override
  String get recognizing => 'Ja bɛ ka sɛgɛsɛgɛ…';

  @override
  String get loadingData => 'Kunnafoniw bɛ ka doni…';

  @override
  String get noCandidatesTitle => 'Aksiyɔn si ma dɔn';

  @override
  String get noCandidatesBody =>
      'An ma se ka aksiyɔn si dɔn nin ja in kɔnɔ. Ja jɛlen wɛrɛ ta, walima taamasiyɛn sɛbɛn i yɛrɛ ye.';

  @override
  String get whatWeSaw => 'An ye min ye';

  @override
  String get chooseCandidateTitle => 'Aksiyɔn jumɛn tun bɛ i hakili la?';

  @override
  String confidencePercent(int percent) {
    return '$percent% dannaya';
  }

  @override
  String get settings => 'Labɛnw';

  @override
  String get language => 'Kan';

  @override
  String get systemLanguage => 'Sisitɛmu ka kan';

  @override
  String get about => 'A kan kunnafoniw';

  @override
  String get disclaimer =>
      'Nin aplikasiyɔn in bɛ kunnafoni dɔrɔn de di, wari donni ladilikan tɛ. Kunnafoniw bɛ se ka sumaya walima ka fili.';

  @override
  String dataSource(String source) {
    return 'Kunnafoni bɔyɔrɔ: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Dɔnni: $source';
  }

  @override
  String get retry => 'Segin a kan';

  @override
  String get cancel => 'Dabila';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Datugu';

  @override
  String get errorGeneric => 'Fili dɔ donna.';

  @override
  String get errorSectionUnavailable => 'Nin yɔrɔ in ma se ka doni.';

  @override
  String get notAvailable => 'tɛ yen';

  @override
  String get sectionIdentity => 'Taamasiyɛnw';

  @override
  String get sectionPrice => 'Sɔngɔ';

  @override
  String get sectionValuation => 'Sɔngɔ jateminɛ';

  @override
  String get sectionFinancials => 'Wariko';

  @override
  String get sectionDividend => 'Tɔnɔ tilali';

  @override
  String get sectionProfile => 'Sosiyete kunnafoniw';

  @override
  String get sectionAnalysts => 'Sɛgɛsɛgɛlikɛlaw ka jateminɛ';

  @override
  String get sectionNews => 'Kibaruyaw';

  @override
  String get sectionRecognition => 'Dɔnni ɲɛfɔli';

  @override
  String get labelSymbol => 'Taamasiyɛn';

  @override
  String get labelExchange => 'Aksiyɔn sugu';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Wari suguya';

  @override
  String get labelCountry => 'Jamana';

  @override
  String get labelIndustry => 'Baara suguya';

  @override
  String get labelSector => 'Baara fan';

  @override
  String get labelWebsite => 'Wɛbusiti';

  @override
  String get labelIpoDate => 'IPO don';

  @override
  String get labelMarketCap => 'Kapitalizasiyɔn';

  @override
  String get labelSharesOutstanding => 'Aksiyɔn minnu bɛ sugu la';

  @override
  String get labelEmployees => 'Baarakɛlaw';

  @override
  String get labelCeo => 'Ɲɛmɔgɔba';

  @override
  String get labelHeadquarters => 'Sigiyɔrɔba';

  @override
  String get labelDescription => 'Ɲɛfɔli';

  @override
  String get labelLastPrice => 'Sɔngɔ laban';

  @override
  String get labelChange => 'Yɛlɛma';

  @override
  String get labelOpen => 'Dayɛlɛ sɔngɔ';

  @override
  String get labelDayHigh => 'Don sɔngɔ sanfɛla';

  @override
  String get labelDayLow => 'Don sɔngɔ dugumala';

  @override
  String get labelPreviousClose => 'Datugu sɔngɔ tɛmɛnen';

  @override
  String get labelWeek52High => 'Dɔgɔkun 52 sɔngɔ sanfɛla';

  @override
  String get labelWeek52Low => 'Dɔgɔkun 52 sɔngɔ dugumala';

  @override
  String get labelAverageVolume10d => 'Jago hakɛ cɛmancɛ (tile 10)';

  @override
  String updatedAt(String time) {
    return 'Kurayali: $time';
  }

  @override
  String get labelPeTrailing => 'P/E (tɛmɛnen)';

  @override
  String get labelPeForward => 'P/E (nata)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / wari bɔli hɔrɔn';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (kalo 12 laban)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Feereli hakɛ (kalo 12 laban)';

  @override
  String get labelNetIncomeTtm => 'Tɔnɔ jɔnjɔn (kalo 12 laban)';

  @override
  String get labelGrossMargin => 'Tɔnɔ hakɛ bɛɛ lajɛlen';

  @override
  String get labelOperatingMargin => 'Baara tɔnɔ hakɛ';

  @override
  String get labelNetMargin => 'Tɔnɔ hakɛ jɔnjɔn';

  @override
  String get labelRoe => 'Tɔnɔ yɛrɛ nafolo kan';

  @override
  String get labelRoa => 'Tɔnɔ nafolo bɛɛ kan';

  @override
  String get labelDebtToEquity => 'Juru / yɛrɛ nafolo';

  @override
  String get labelCurrentRatio => 'Juru surunw sara se';

  @override
  String get labelRevenueGrowth => 'Feereli yiriwali (san ni san)';

  @override
  String get labelEpsGrowth => 'EPS yiriwali (san ni san)';

  @override
  String get labelDividendYield => 'Tɔnɔ tilali sɔrɔ hakɛ';

  @override
  String get labelDividendPerShare => 'Tɔnɔ tilali aksiyɔn kelen na';

  @override
  String get labelPayoutRatio => 'Tɔnɔ tilalen hakɛ';

  @override
  String get labelConsensus => 'Bɛnkan';

  @override
  String get ratingStrongBuy => 'San kosɛbɛ';

  @override
  String get ratingBuy => 'San';

  @override
  String get ratingHold => 'A mara';

  @override
  String get ratingSell => 'Feere';

  @override
  String get ratingStrongSell => 'Feere kosɛbɛ';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'sɛgɛsɛgɛlikɛla $count',
      one: 'sɛgɛsɛgɛlikɛla 1',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Waati: $period';
  }

  @override
  String get noNews => 'Kibaru kura si tɛ yen.';

  @override
  String get openArticle => 'Sɛbɛn dayɛlɛ';

  @override
  String get openLinkFailed => 'Lɛnki ma se ka dayɛlɛ.';

  @override
  String get recognitionSummary => 'Kuma surun';

  @override
  String get recognitionEvidence => 'Mun na an b’o miiri';

  @override
  String get recognitionRawText => 'Sɛbɛn min kalanna ja kan';

  @override
  String get errMissingAnthropicKey =>
      'Ja dɔnni ma labɛn (ANTHROPIC_API_KEY tɛ yen). Taamasiyɛn sɛbɛn i yɛrɛ ye.';

  @override
  String get errRecognitionUnreachable =>
      'An ma se ka dɔnni sɛriwisi sɔrɔ. I ka ɛntɛrinɛti jɛɲɔgɔnya lajɛ.';

  @override
  String errRecognitionHttp(String status) {
    return 'Dɔnni sɛriwisi ye fili dɔ segin (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Dɔnni sɛriwisi ma se ka nin ja in baara.';

  @override
  String get errRecognitionTruncated => 'Dɔnni jaabi tigɛra. A kɔrɔbɔ tugun.';

  @override
  String get errRecognitionBadResponse =>
      'Dɔnni sɛriwisi ye jaabi min di, o tun ma makɔnɔ.';

  @override
  String get errRecognitionEmpty => 'Dɔnni sɛriwisi ye jaabi lankolon di.';

  @override
  String get errMissingFinnhubKey =>
      'Sugu kunnafoniw ma labɛn (FINNHUB_API_KEY tɛ yen).';

  @override
  String get errMarketUnreachable =>
      'An ma se ka sugu kunnafoni sɛriwisi sɔrɔ. I ka ɛntɛrinɛti jɛɲɔgɔnya lajɛ.';

  @override
  String get errMarketRateLimited =>
      'Ɲininiw ka ca sugu kunnafoni sɛriwisi ma. Miniti kelen makɔnɔ.';

  @override
  String errMarketHttp(String status) {
    return 'Sugu kunnafoni sɛriwisi ye fili dɔ segin (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Sugu kunnafoni sɛriwisi ye jaabi min di, o tun ma makɔnɔ.';

  @override
  String errNoQuote(String symbol) {
    return 'Sɔngɔ kunnafoni si ma sɔrɔ $symbol kama.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Sosiyete kunnafoni si ma sɔrɔ $symbol kama.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Demo cogo bɛ $symbols dɔrɔn de dɛmɛ. FINNHUB_API_KEY fara a kan walasa ka sisan kunnafoniw sɔrɔ.';
  }

  @override
  String errUnknown(String detail) {
    return 'Fili dɔ donna: $detail';
  }

  @override
  String get newSearch => 'Ɲinini kura';

  @override
  String get recentSearches => 'Kɔsa ɲininiw';

  @override
  String get noRecentSearches => 'Ɲinini si ma kɛ fɔlɔ.';

  @override
  String get clearRecent => 'Kɔsa ɲininiw jɔsi';

  @override
  String get greeting => 'An bɛ aksiyɔn jumɛn lajɛ?';

  @override
  String get searchHint => 'Taamasiyɛn walima sosiyete tɔgɔ';

  @override
  String get attachImage => 'Ja dɔ fara a kan';

  @override
  String get searchResultsTitle => 'Ɲinini jaabiw';

  @override
  String errNoResults(String query) {
    return 'Aksiyɔn si ma sɔrɔ « $query » kama.';
  }

  @override
  String get quickBarHint => 'Taamasiyɛn walima sosiyete tɔgɔ sɛbɛn…';

  @override
  String get openFullWindow => 'Fenɛtiri dayɛlɛ';

  @override
  String hotkeyHint(String shortcut) {
    return '$shortcut digi yɔrɔ o yɔrɔ walasa ka WhatStock wele.';
  }

  @override
  String get trayOpen => 'WhatStock dayɛlɛ';

  @override
  String get trayQuickSearch => 'Ɲinini teliman';

  @override
  String get trayQuit => 'Bɔ';

  @override
  String get appearance => 'Cogoya';

  @override
  String get themeSystem => 'Sisitɛmu';

  @override
  String get themeDark => 'Dibi';

  @override
  String get themeLight => 'Yeelen';

  @override
  String get back => 'Segin kɔ';

  @override
  String get aiSectionTitle => 'AI sɛgɛsɛgɛli';

  @override
  String get aiIntro =>
      'Ɲɛfɔli dafalen min sɛbɛnna AI fɛ: kibaru kuraw kuma surun, sosiyete ka baara, a fanga n’a faratiw ani ko dogolenw, sɔngɔ jateminɛ, sɔngɔ ɲɛfɛta ni a cogo caman ye – hakili, sigida, tekiniki ani ɛkonomi ba fan fɛ – ani ko minnu ka kan ka kɔlɔsi.';

  @override
  String get aiGenerate => 'Sɛgɛsɛgɛli dilan';

  @override
  String get aiRegenerate => 'A dilan tugun';

  @override
  String get aiGenerating =>
      'Sɛgɛsɛgɛli bɛ ka labɛn… o bɛ se ka miniti kelen walima fila ta.';

  @override
  String get aiSources => 'Bɔyɔrɔw';

  @override
  String aiGeneratedAt(String time) {
    return 'A dilanna $time';
  }

  @override
  String get aiDisclaimer =>
      'AI ye nin sɛgɛsɛgɛli dilan ni kunnafoni dayɛlɛlenw ani kibaru kuraw ye. Fili bɛ se ka kɛ a la walima a bɛ se ka kɔrɔ, wari donni ladilikan tɛ.';

  @override
  String get errAiNotConfigured =>
      'AI sɛgɛsɛgɛli ma labɛn (ANTHROPIC_API_KEY tɛ yen).';

  @override
  String get errAiUnreachable =>
      'An ma se ka AI sɛriwisi sɔrɔ. I ka ɛntɛrinɛti jɛɲɔgɔnya lajɛ.';

  @override
  String errAiHttp(String status) {
    return 'AI sɛriwisi ye fili dɔ segin (HTTP $status).';
  }

  @override
  String get errAiRefused => 'AI sɛriwisi ma sɔn ka nin aksiyɔn in sɛgɛsɛgɛ.';

  @override
  String get errAiBadResponse =>
      'AI sɛriwisi ye jaabi min di, o tun ma makɔnɔ.';

  @override
  String get sectionChart => 'Sɔngɔ grafiki';

  @override
  String get rangeOneWeek => '1D';

  @override
  String get rangeOneMonth => '1K';

  @override
  String get rangeThreeMonths => '3K';

  @override
  String get rangeOneYear => '1S';

  @override
  String get rangeFiveYears => '5S';

  @override
  String get chartUnavailable =>
      'Sɔngɔ tariku tɛ sɔrɔ sisan kunnafoni bɔyɔrɔ in fɛ.';

  @override
  String get sectionStatements => 'Wariko jatebɔ sɛbɛnw (san o san)';

  @override
  String get labelFiscalYear => 'Wariko san';

  @override
  String get labelRevenue => 'Feereli hakɛ';

  @override
  String get labelNetIncome => 'Tɔnɔ jɔnjɔn';

  @override
  String get labelTotalAssets => 'Nafolo bɛɛ lajɛlen';

  @override
  String get labelTotalLiabilities => 'Juru bɛɛ lajɛlen';

  @override
  String get labelEquity => 'Aksiyɔntigiw ka nafolo';

  @override
  String get labelOperatingCashFlow => 'Baara wari donni-bɔli';

  @override
  String get statementsUnavailable =>
      'Wariko jatebɔ sɛbɛnw tɛ sɔrɔ nin aksiyɔn in kama.';

  @override
  String get launchAtLogin => 'A daminɛ ni i donna';

  @override
  String get hotkeyLabel => 'Sira surun yɔrɔ bɛɛ';

  @override
  String get hotkeyRecordHint => 'Digi yan, o kɔ butɔn ɲɔgɔndan kura digi';

  @override
  String get hotkeyReset => 'Segin fɔlɔ labɛn ma';

  @override
  String get pasteImage => 'Ja kopilen nɔrɔ';

  @override
  String get errClipboardNoImage => 'Ja si tɛ kopi yɔrɔ la.';

  @override
  String get favorites => 'Diyanyelenw';

  @override
  String get addToFavorites => 'Fara diyanyelenw kan';

  @override
  String get removeFromFavorites => 'Bɔ diyanyelenw na';

  @override
  String get noFavorites =>
      'Diyanyelen si tɛ yen fɔlɔ. Dolo digi aksiyɔn dɔ kan k’a fara a kan.';

  @override
  String get displayCurrency => 'Wari suguya jiralen';

  @override
  String get displayCurrencyNone => 'Aksiyɔn yɛrɛ ka wari dɔrɔn';

  @override
  String labelConverted(String currency) {
    return '≈ $currency la';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Wari falen hakɛ: 1 $from = $rate $to (BCE, $date)';
  }

  @override
  String get updates => 'Kurayaliw';

  @override
  String currentVersion(String version) {
    return 'Wɛrisiyɔn $version';
  }

  @override
  String get autoUpdate => 'Kurayaliw don a yɛrɛ ma';

  @override
  String get checkForUpdates => 'Kurayaliw lajɛ';

  @override
  String get updateChecking => 'Kurayaliw bɛ ka lajɛ…';

  @override
  String get updateUpToDate => 'Wɛrisiyɔn laban de bɛ i bolo.';

  @override
  String updateAvailable(String version) {
    return 'Wɛrisiyɔn $version bɛ sɔrɔ.';
  }

  @override
  String get updateDownloading => 'Kurayali bɛ ka jigin kɔfɛ…';

  @override
  String get updateDownloaded =>
      'Kurayali labɛnnen don. A daminɛ kokura walasa k’a don.';

  @override
  String get updateNow => 'Kuraya';

  @override
  String get restartNow => 'Daminɛ kokura';

  @override
  String get updatesViaStore =>
      'Kurayaliw bɛ na u yɛrɛ ma aplikasiyɔn butiki fɛ.';

  @override
  String get updateCheckFailed => 'Kurayaliw ma se ka lajɛ.';

  @override
  String get subscription => 'Abɔnɛman';

  @override
  String get planTrial => 'Kɔrɔbɔli';

  @override
  String get planNormal => 'Gansan';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Pilan si tɛ baara la';

  @override
  String planAnalysesPerMonth(int count) {
    return 'Sɛgɛsɛgɛli $count kalo o kalo';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Kɔrɔbɔli fu tile $days kɔnɔ, ni sɛgɛsɛgɛli $count ye';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Kɔrɔbɔli tile $days de to',
      one: 'Kɔrɔbɔli tile 1 de to',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'I ka kɔrɔbɔli fu banna. Pilan dɔ sugandi walasa ka sɛgɛsɛgɛli kɛ ka taa a fɛ.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Sɛgɛsɛgɛli $remaining de to $total la nin waati in kɔnɔ';
  }

  @override
  String extraCredits(int count) {
    return 'Sɛgɛsɛgɛli wɛrɛ $count';
  }

  @override
  String renewsOn(String date) {
    return 'A bɛ kuraya $date';
  }

  @override
  String get choosePlan => 'Pilan sugandi';

  @override
  String get currentPlan => 'Sisan pilan';

  @override
  String get subscribe => 'Abɔnɛ kɛ';

  @override
  String get perMonth => '/ kalo';

  @override
  String get extraPacksTitle => 'I mago bɛ dɔ wɛrɛ la wa? Sɛgɛsɛgɛli wɛrɛw san';

  @override
  String get extraPacksHint =>
      'Sɛgɛsɛgɛli wɛrɛw tɛ ban abada, u bɛ baara kɛ i ka kalo hakɛ banni kɔ.';

  @override
  String get buy => 'San';

  @override
  String get restorePurchases => 'Sanni kɔrɔw segin';

  @override
  String get manageSubscription => 'Abɔnɛman ɲɛnabɔ';

  @override
  String get purchaseSuccess => 'I ni ce! I ka sanni bɛ baara la.';

  @override
  String get purchasePending => 'Sanni bɛ makɔnɔni na…';

  @override
  String get purchaseFailed => 'Sanni ma se ka dafa.';

  @override
  String get purchaseCanceled => 'Sanni dabilara.';

  @override
  String get billingUnavailable =>
      'Sanniw tɛ se ka kɛ nin sisitɛmu in kan fɔlɔ. Abɔnɛ kɛ i ka telefɔni walima Mac kan; i ka pilan bɛna baara kɛ i ka minɛn bɛɛ kan.';

  @override
  String get errQuotaExceeded =>
      'Sɛgɛsɛgɛli si ma to i bolo nin waati in kɔnɔ. I ka pilan kɔrɔta walima sɛgɛsɛgɛli wɛrɛw san.';

  @override
  String get errTrialExpired =>
      'I ka kɔrɔbɔli fu banna. Pilan dɔ sugandi walasa ka taa a fɛ.';

  @override
  String get errNoPlan =>
      'Pilan min bɛ baara la, o de wajibi don AI sɛgɛsɛgɛli kama.';

  @override
  String get viewPlans => 'Pilanw lajɛ';

  @override
  String get usageTitle => 'Labaarali';

  @override
  String get demoPurchaseNote =>
      'Demo sarali: sanniw ye ɲɛjirali dɔrɔn ye nin sisitɛmu in kan.';

  @override
  String get mostPopular => 'Mɔgɔw b’a fɛ kosɛbɛ';

  @override
  String get bestValue => 'Nafa ka bon';

  @override
  String get planFeaturesCommon =>
      'Ja dɔnni, sisan kunnafoniw, grafikiw, diyanyelenw ani kan 120 bɛɛ bɛ pilan bɛɛ la. Hakɛ bɛ AI sɛgɛsɛgɛliw dɔrɔn de jate.';

  @override
  String get searchLanguages => 'Kanw ɲini…';

  @override
  String get noLanguageMatch => 'Kan si ma bɛn.';

  @override
  String get aiSettings => 'AI sɛgɛsɛgɛli';

  @override
  String get aiLength => 'Janya';

  @override
  String get aiDepthBrief => 'Surun';

  @override
  String get aiDepthStandard => 'Cɛmancɛ';

  @override
  String get aiDepthDeep => 'Dunba';

  @override
  String get aiDepthBriefDesc => 'Ko nafamaw dɔrɔn, joona.';

  @override
  String get aiDepthStandardDesc => 'Ɲɛfɔli dafalen ni a yɔrɔw bɛɛ ye.';

  @override
  String get aiDepthDeepDesc =>
      'Ɛntɛrinɛti ɲinini caman, sosiyete ɲɔgɔnnaw sanga ɲɔgɔn ma, ani kunnafoni dunba.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Daɲɛ $min–$max ɲɔgɔn';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'sɛgɛsɛgɛli $count bɛ ta',
      one: 'sɛgɛsɛgɛli 1 bɛ ta',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Kalanbaga hakɛ';

  @override
  String get aiReaderBeginner => 'Daminɛbaga';

  @override
  String get aiReaderExperienced => 'Kodɔnbaga';

  @override
  String get aiReaderBeginnerDesc => 'Kan nɔgɔman; tekiniki kuma bɛɛ bɛ ɲɛfɔ.';

  @override
  String get aiReaderExperiencedDesc =>
      'Sɛbɛn kɔrɔ ka ca a la; wariko kuma dɔnninw bɛ kɛ a la.';

  @override
  String get aiCounterArgument => 'Sɔsɔli barikamaba';

  @override
  String get aiCounterArgumentDesc =>
      'Kuma surun bɛ ban tuma bɛɛ ni sɔsɔli ɲumanba ye a yɛrɛ ka laban kan.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Ɛntɛrinɛti ɲinini fo $count sɛgɛsɛgɛli kelen o kelen kɔnɔ i ka pilan na',
      one: 'Ɛntɛrinɛti ɲinini 1 sɛgɛsɛgɛli kelen o kelen kɔnɔ i ka pilan na',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Janya cɛmancɛ pilan kelen kelen na: Gansan $normal, Pro $pro, Max $max, Ultra $ultra. Surun bɛ 2 dɔgɔya, Dunba bɛ 2 fara a kan.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ɛntɛrinɛti ɲinini fo $count',
      one: 'ɛntɛrinɛti ɲinini 1',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ɛntɛrinɛti ɲinini $count sɛgɛsɛgɛli kelen na',
      one: 'Ɛntɛrinɛti ɲinini 1 sɛgɛsɛgɛli kelen na',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Nin janya in mago bɛ sɛgɛsɛgɛli $needed na, nka $left dɔrɔn de to. Janya surun sugandi Labɛnw kɔnɔ walima sɛgɛsɛgɛli wɛrɛw sɔrɔ.';
  }

  @override
  String get outlookMarketMood => 'Sugu hakilisigi';

  @override
  String get moodVeryPessimistic => 'Jigitigɛ kosɛbɛ';

  @override
  String get moodPessimistic => 'Jigitigɛ';

  @override
  String get moodNeutral => 'Cɛmancɛ';

  @override
  String get moodOptimistic => 'Jigiya';

  @override
  String get moodVeryOptimistic => 'Jigiya kosɛbɛ';

  @override
  String get scenarioBull => 'Yiriwali cogo';

  @override
  String get scenarioBase => 'Cogo gansan';

  @override
  String get scenarioBear => 'Jiginni cogo';

  @override
  String outlookCurrentPrice(String price) {
    return 'Sisan sɔngɔ: $price';
  }

  @override
  String get outlookKeyLevels => 'Sɔngɔ hakɛ nafamaw';

  @override
  String get keyLevelSupport => 'Sinsinyɔrɔ';

  @override
  String get keyLevelResistance => 'Baliyɔrɔ';

  @override
  String get keyLevelAnchor => 'Sɔngɔ jɔlen';

  @override
  String get upcomingEvents => 'Ko nataw';

  @override
  String get outlookChartNote =>
      'Hakɛ jiralenw dɔrɔn; ko bɛ se ka kɛ cogo minnu na, olu ye miiri dɔrɔn ye, kiraya tɛ.';

  @override
  String get accountTitle => 'Kɔnti';

  @override
  String get signIn => 'Don';

  @override
  String get signOut => 'Bɔ kɔnti la';

  @override
  String get notSignedIn => 'I ma don fɔlɔ';

  @override
  String get accountBenefit =>
      'Don walasa i ka abɔnɛman ka baara kɛ i ka minɛnw bɛɛ kan.';

  @override
  String get accountSyncedNote =>
      'I ka abɔnɛman ni sɛgɛsɛgɛli tolenw ye kelen ye minɛn bɛɛ kan.';

  @override
  String get signInTitle => 'Don WhatStock kɔnɔ';

  @override
  String get emailLabel => 'Imɛli adrɛsi';

  @override
  String get continueWithEmail => 'Taa a fɛ ni imɛli ye';

  @override
  String codeSentTo(String email) {
    return 'An ye kode nimɔrɔ 6 ci $email ma. A bɛ baara kɛ miniti 10 kɔnɔ.';
  }

  @override
  String get codeLabel => 'Donni kode';

  @override
  String get resendCode => 'Kode kura ci';

  @override
  String get useDifferentEmail => 'Imɛli wɛrɛ ta';

  @override
  String get errInvalidCode => 'Kode ma ɲɛ walima a waati tɛmɛna.';

  @override
  String get errInvalidEmail => 'Imɛli adrɛsi ɲuman sɛbɛn.';

  @override
  String get errSignInFailed =>
      'Donni ma se. I ka jɛɲɔgɔnya lajɛ ka a kɔrɔbɔ tugun.';

  @override
  String get checkoutWaiting =>
      'Sarali dafa i ka navigatɛri kɔnɔ. Aplikasiyɔn bɛna kuraya a yɛrɛ ma ni a banna.';

  @override
  String get paymentViaStripe =>
      'Sarali lakananen i ka navigatɛri kɔnɔ Stripe fɛ. I bɛ se k’a dabila waati bɛɛ.';

  @override
  String get paymentViaStore =>
      'Sarali bɛ kɛ i ka App Store walima Google Play kɔnti fɛ. I bɛ se k’a dabila waati bɛɛ i ka butiki labɛnw kɔnɔ.';

  @override
  String get keySpace => 'Espace';

  @override
  String get doubleOptionTitle => 'Option digi siɲɛ fila';

  @override
  String get doubleOptionSubtitle =>
      'Ni i ye Option butɔn digi siɲɛ fila joona, o fana bɛ WhatStock wele.';

  @override
  String get doubleOptionPermission =>
      'Walasa a ka baara kɛ aplikasiyɔn wɛrɛw kɔnɔ fana, WhatStock yamaruya Réglages Système → Confidentialité et sécurité → Surveillance de l’entrée la, o kɔ aplikasiyɔn dayɛlɛ kokura.';

  @override
  String get openSystemSettings => 'Réglages Système dayɛlɛ';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return '$shortcut digi walima Option digi siɲɛ fila yɔrɔ o yɔrɔ walasa ka WhatStock wele.';
  }

  @override
  String get scenarioMostLikely => 'Min bɛ se ka kɛ kosɛbɛ';

  @override
  String get longTermToday => 'Bi';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: 'san $years',
      one: 'san 1',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range san o san';
  }

  @override
  String longTermLikely(String price) {
    return 'a ka c’a la $price';
  }

  @override
  String get confidenceLow => 'Dannaya dɔgɔman';

  @override
  String get confidenceMedium => 'Dannaya cɛmancɛ';

  @override
  String get confidenceHigh => 'Dannaya kɔrɔtalen';

  @override
  String get longTermNote =>
      'Waati jan hakɛw sinsinnen bɛ miiri fɔlenw kan, u bɛ bonya ni waati ye. Sɔngɔw tɛ tɔnɔ tilali jate. Miiri dɔrɔn, kiraya tɛ.';

  @override
  String get portfolio => 'Aksiyɔn kɛsu';

  @override
  String get portfolioEmpty =>
      'Foyi tɛ yan fɔlɔ. Aksiyɔn dɔ dayɛlɛ ka « Fara aksiyɔn kɛsu kan » digi walasa ka i ta fɛnw kɔlɔsi.';

  @override
  String get portfolioLocalNote =>
      'A marala nin minɛn in dɔrɔn de kan. Hakɛ bɛɛ lajɛlenw falenna ni BCE ka wari falen hakɛw ye; sɔngɔw bɛ se ka sumaya.';

  @override
  String get addToPortfolio => 'Fara aksiyɔn kɛsu kan';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol fara a kan';
  }

  @override
  String get portfolioQuantity => 'Aksiyɔn hakɛ';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Aksiyɔn kelen sɔngɔ ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Sanni don';

  @override
  String get portfolioAdd => 'Fara a kan';

  @override
  String get portfolioInvalidNumber => 'Nimɔrɔ dɔ sɛbɛn min ka bon ni 0 ye.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol farala i ka aksiyɔn kɛsu kan.';
  }

  @override
  String get portfolioTotalValue => 'Sɔngɔ bɛɛ lajɛlen';

  @override
  String get portfolioToday => 'Bi';

  @override
  String get portfolioGainLoss => 'Tɔnɔ/bɔnɛ';

  @override
  String get portfolioInvested => 'Wari donnen';

  @override
  String get portfolioAllocation => 'Tilacogo';

  @override
  String get portfolioPositions => 'Aksiyɔnw';

  @override
  String portfolioAvgCost(String price) {
    return 'sɔngɔ cɛmancɛ $price';
  }

  @override
  String get portfolioYourPosition => 'Min bɛ i bolo';

  @override
  String get portfolioPurchases => 'Sanniw';

  @override
  String get portfolioRemove => 'Bɔ a la';

  @override
  String get portfolioExcluded =>
      'Aksiyɔn minnu sɔngɔ walima wari falen hakɛ tɛ yen, olu ma jate hakɛ bɛɛ lajɛlenw na.';

  @override
  String get priceAlerts => 'Sɔngɔ lasɔminiw';

  @override
  String get setPriceAlert => 'Sɔngɔ lasɔmini sigi';

  @override
  String alertDialogTitle(String symbol) {
    return 'Sɔngɔ lasɔmini · $symbol';
  }

  @override
  String get alertKindAbove => 'Ni a yɛlɛla ka tɛmɛ';

  @override
  String get alertKindBelow => 'Ni a jiginna a duguma';

  @override
  String get alertKindMove => 'Ni a yɛlɛmana kosɛbɛ don kelen kɔnɔ';

  @override
  String alertTargetPrice(String currency) {
    return 'Sɔngɔ ($currency)';
  }

  @override
  String get alertMovePercent => 'Don yɛlɛma (%)';

  @override
  String get alertAlreadyMet => 'Sɔngɔ tɛmɛna nin hakɛ in kan kaban.';

  @override
  String get alertSave => 'Lasɔmini sigi';

  @override
  String alertCreated(String symbol) {
    return 'Lasɔmini sigira $symbol kama.';
  }

  @override
  String get alertsEmpty =>
      'Sɔngɔ lasɔmini si tɛ yen fɔlɔ. Aksiyɔn dɔ dayɛlɛ ka lasɔmini taamasiyɛn digi walasa k’a sigi.';

  @override
  String get alertsNote =>
      'Lasɔminiw bɛ lajɛ miniti 5 o miniti 5 WhatStock bɛ baara la tuma min na. Ɔridinatɛri kan, a bɛ to baara la menu barɛ walima kunnafoni yɔrɔ la; telefɔni kan, sisan lasɔminiw bɛ na ni aplikasiyɔn dayɛlɛlen don dɔrɔn.';

  @override
  String alertDescAbove(String price) {
    return '$price sanfɛ';
  }

  @override
  String alertDescBelow(String price) {
    return '$price duguma';
  }

  @override
  String alertDescMove(String percent) {
    return 'Don yɛlɛma ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'A kɛra $date, $price la';
  }

  @override
  String get alertRearm => 'A labɛn kokura';

  @override
  String get alertDelete => 'A jɔsi';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol yɛlɛla ka tɛmɛ $price kan';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol jiginna $price duguma';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol yɛlɛmana $percent bi';
  }

  @override
  String alertHitBody(String price) {
    return 'Sisan sɔngɔ: $price';
  }

  @override
  String get alertOpen => 'Dayɛlɛ';

  @override
  String get keepInTrayTitle => 'A to baara la ni fenɛtiri datugura';

  @override
  String get keepInTraySubtitle =>
      'WhatStock bɛ to menu barɛ walima kunnafoni yɔrɔ la, o la sira surun ni sɔngɔ lasɔminiw bɛ to baara la.';

  @override
  String get termsOfUse => 'Baarakɛcogo sariyaw';

  @override
  String get privacyPolicy => 'Gundo marali sariyaw';

  @override
  String get subscriptionLegal =>
      'Abɔnɛmanw bɛ kuraya u yɛrɛ ma kalo o kalo fo i k’u dabila. Ni i ye abɔnɛ kɛ, i sɔnna Baarakɛcogo sariyaw ni Gundo marali sariyaw ma.';

  @override
  String get deleteAccount => 'Kɔnti jɔsi';

  @override
  String get deleteAccountTitle => 'I ka kɔnti jɔsi wa?';

  @override
  String get deleteAccountBody =>
      'I ka kɔnti ni fɛn o fɛn marala an ka sɛriwɛri kan (imɛli, hakɛ, labaarali) bɛna jɔsi pewu, sɛgɛsɛgɛli minnu ma kɛ, olu bɛna tunun. Abɔnɛman min sarala navigatɛri kɔnɔ, o bɛ dabila o yɔrɔ bɛɛ; App Store walima Google Play abɔnɛman ka kan ka dabila butiki labɛnw kɔnɔ.';

  @override
  String get deleteLocalData =>
      'Nin minɛn in kan kunnafoniw fana jɔsi (aksiyɔn kɛsu, lasɔminiw, diyanyelenw, tariku, sɛgɛsɛgɛli maralenw)';

  @override
  String get deleteAccountConfirm => 'A jɔsi pewu';

  @override
  String get accountDeleted => 'I ka kɔnti jɔsira.';

  @override
  String get errDeleteAccount =>
      'Kɔnti ma se ka jɔsi. I ka jɛɲɔgɔnya lajɛ ka a kɔrɔbɔ tugun.';

  @override
  String get aiTrialBriefNote =>
      'Kɔrɔbɔli sɛgɛsɛgɛliw ka surun, u bɛ kɛ ni AI modɛli teliman ye. Ni pilan bɛ i fɛ, i bɛ an ka AI ɲuman bɛɛ la sɔrɔ, ɛntɛrinɛti ɲinini caman, ani janya Cɛmancɛ ni Dunba.';

  @override
  String get billingMonthly => 'Kalo o kalo';

  @override
  String get billingYearly => 'San o san';

  @override
  String get yearlyDiscount => 'Kalo 2 fu';

  @override
  String get perYear => '/ san';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price kalo o kalo';
  }

  @override
  String get subscriptionLegalYearly =>
      'Abɔnɛmanw bɛ kuraya u yɛrɛ ma san o san fo i k’u dabila. Ni i ye abɔnɛ kɛ, i sɔnna Baarakɛcogo sariyaw ni Gundo marali sariyaw ma.';

  @override
  String get myAnalyses => 'N ka sɛgɛsɛgɛliw';

  @override
  String get navAlerts => 'Lasɔminiw';

  @override
  String get inviteTitle => 'Kɔrɔbɔli datugulen';

  @override
  String get inviteBody =>
      'Sisan, WhatStock bɛ sɔrɔ weleli dɔrɔn de fɛ. I ye weleli kode min sɔrɔ, o sɛbɛn.';

  @override
  String get inviteCodeLabel => 'Weleli kode';

  @override
  String get inviteContinue => 'Taa a fɛ';

  @override
  String get inviteInvalid => 'Nin weleli kode in ma ɲɛ.';

  @override
  String get inviteExpired =>
      'Nin weleli in waati tɛmɛna. Mɔgɔ min ye i wele, kode kura ɲini o fɛ.';

  @override
  String get inviteDeviceLimit =>
      'Nin weleli kode in bɛ ka baara kɛ minɛn hakɛ laban kan kaban.';

  @override
  String get previewConfidential => 'Kɔrɔbɔli gundolen';

  @override
  String get errPreviewDailyLimit =>
      'Nin kɔrɔbɔli in ka bi sɛgɛsɛgɛli dan sera. A lajɛ tugun sini.';
}
