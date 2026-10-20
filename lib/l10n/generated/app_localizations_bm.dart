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

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'lɛrɛ $count tɛmɛnen',
      one: 'lɛrɛ 1 tɛmɛnen',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tile $count tɛmɛnen',
      one: 'tile 1 tɛmɛnen',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Sɛgɛsɛgɛli nin kura kɛ wa?';

  @override
  String staleBody(String age) {
    return 'A dilanna $age. Sɔngɔw, kibaruyaw ani jaabiw bɛ se ka kɛ ka yɛlɛma kabini o waati.';
  }

  @override
  String get staleKeep => 'Kɔrɔlen jira';

  @override
  String get staleRefresh => 'Kura dilan';

  @override
  String seeAll(int count) {
    return 'A bɛɛ lajɛ ($count)';
  }

  @override
  String get searchAnalyses => 'I ka sɛgɛsɛgɛliw ɲini';

  @override
  String get deleteAnalysis => 'Jɔsi';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol sɛgɛsɛgɛli jɔsira';
  }

  @override
  String get keyLevelAlertHint =>
      'Hakɛ dɔ digi walasa ka lasɔmini sɔrɔ ni sɔngɔ sera a ma.';

  @override
  String get shareAnalysisTitle => 'Sɛgɛsɛgɛli jɛnsɛn';

  @override
  String get shareAsImage => 'A jɛnsɛn ja ye';

  @override
  String get shareAsText => 'A jɛnsɛn sɛbɛn ye';

  @override
  String get shareCardFooter => 'WhatStock de ye a dilan';

  @override
  String get shareCardDisclaimer => 'AI sɛgɛsɛgɛli · wari donni ladilikan tɛ';

  @override
  String get referralTitle => 'I teriw wele';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'sɛgɛsɛgɛli wɛrɛ $count',
      one: 'sɛgɛsɛgɛli wɛrɛ 1',
    );
    return 'I ka kode jɛnsɛn. I teri bɛ $_temp0 sɔrɔ joona, i fana bɛ o hakɛ kelen sɔrɔ a ka sɛgɛsɛgɛli fɔlɔ kɔ.';
  }

  @override
  String get referralYourCode => 'I ka kode';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Welelenw: $invited · Sarali: $rewarded';
  }

  @override
  String get referralHaveCode => 'Kode dɔ bɛ i bolo ka bɔ i teri fɛ wa?';

  @override
  String get referralRedeem => 'A labaara';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Sɛgɛsɛgɛli wɛrɛ $count farala a kan. I bisimila!',
      one: 'Sɛgɛsɛgɛli wɛrɛ 1 farala a kan. I bisimila!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown => 'Nin kode tɛ yen. A lajɛ ka a kɔrɔbɔ tugun.';

  @override
  String get referralErrOwn => 'I tɛ se ka i yɛrɛ ka kode labaara.';

  @override
  String get referralErrAlready => 'I ye i teri dɔ ka kode labaara ka ban.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'sɛgɛsɛgɛli wɛrɛ $count',
      one: 'sɛgɛsɛgɛli wɛrɛ 1',
    );
    return 'N bɛ aksiyɔnw sɛgɛsɛgɛ ni WhatStock ye: aksiyɔn dɔ ja ta, AI bɛ a ɲɛfɔ. Ni n ka kode $code ye, i bɛ $_temp0 sɔrɔ.';
  }

  @override
  String get referralCopied => 'Kode kopiyelen don';

  @override
  String get onboardTitle1 => 'Aksiyɔn dɔ ja ta';

  @override
  String get onboardBody1 =>
      'Bɔrisi aplikasiyɔn ka ekaran, gazeti walima sosiyete taamasiyɛn bɛ se: WhatStock bɛ aksiyɔn dɔn ka a sɔngɔ, a grafiki ani a jate nafamaw jira i la.';

  @override
  String get onboardTitle2 => 'A faamu miniti dama kɔnɔ';

  @override
  String get onboardBody2 =>
      'AI sɛgɛsɛgɛli bɛ a ɲɛfɔ min bɛ aksiyɔn lamaga, a faratiw, a sɔngɔ jateminɛ ani cogo saba a sɔngɔ bɛ se ka taa cogo min na – ni a sɔrɔyɔrɔw ye, i ka kan na.';

  @override
  String get onboardTitle3 => 'To kunnafoni na tuma bɛɛ';

  @override
  String get onboardBody3 =>
      'Diyanyelenw, i ka aksiyɔn kɛsu ani sɔngɔ lasɔminiw bɛ i ladɔnniya. I ka sɛgɛsɛgɛliw bɛ to i ka minɛn kan, i bɛ se k’u da wuli tugun waati o waati.';

  @override
  String get onboardNext => 'Ɲɛfɛ';

  @override
  String get onboardStart => 'An ka daminɛ';

  @override
  String get onboardSkip => 'A tɛmɛ';

  @override
  String changesTitle(String date) {
    return 'Kabini sɛgɛsɛgɛli kɔrɔlen ($date)';
  }

  @override
  String get changesPrice => 'Sɔngɔ';

  @override
  String get changesNoMajor => 'Siniko cogo ma yɛlɛma kosɛbɛ.';

  @override
  String get changesPreviousSummary => 'Kɔrɔlen kuma surun';

  @override
  String get telemetryTitle => 'Dɛmɛ ka WhatStock ɲɛ';

  @override
  String get telemetryBody =>
      'Baarakɛcogo jate tɔgɔbaliw ni tiɲɛni kibaruyaw ci: fɛɛrɛ minnu bɛ baara la ani min tiɲɛna. I ka aksiyɔnw, i ka sɛgɛsɛgɛliw walima i yɛrɛ ka kunnafoniw tɛ ci abada. I bɛ se ka nin yɛlɛma waati o waati Labɛnw kɔnɔ.';

  @override
  String get telemetryAllow => 'Sɔn';

  @override
  String get telemetryDecline => 'Ayi, i ni ce';

  @override
  String get telemetrySetting => 'Jate tɔgɔbaliw ni tiɲɛni kibaruyaw';

  @override
  String get telemetrySettingHint =>
      'Fɛɛrɛw bɛ baara la siɲɛ joli ani fili kibaruyaw, i yɛrɛ ka kunnafoniw tɛ, i ka ɲininiw ni i ka sɛgɛsɛgɛliw kɔnɔkow fana tɛ.';

  @override
  String get askButton => 'Ɲininkali kɛ nin sɛgɛsɛgɛli kan';

  @override
  String askTitle(String symbol) {
    return 'Ɲininkaliw $symbol kan';
  }

  @override
  String get askIntro =>
      'Ɲininkali o ɲininkali kɛ sɛgɛsɛgɛli in kan: farati dɔ kɔrɔ ye mun ye, mun bɛ se ka siniko yɛlɛma, jate dɔ sɔrɔla cogo min na. Jaabiw sinsinnen bɛ nin sɛgɛsɛgɛli kan, wari donni ladilikan tɛ.';

  @override
  String get askHint => 'Ɲininkali dɔ sɛbɛn…';

  @override
  String get askSend => 'A ci';

  @override
  String get askThinking => 'A bɛ miiri…';

  @override
  String get askSuggest1 => 'Farati belebele ye jumɛn ye?';

  @override
  String get askSuggest2 => 'Mun bɛ se ka siniko yɛlɛma?';

  @override
  String get askSuggest3 => 'A ɲɛfɔ ka nɔgɔya';

  @override
  String get askMaxReached =>
      'O tun ye nin sɛgɛsɛgɛli ɲininkali laban ye. Sɛgɛsɛgɛli kura dilan walasa ka ɲininkali wɛrɛw kɛ.';

  @override
  String get errAskLimit =>
      'I sera bi ɲininkaliw dan na. Hakɛto, a lajɛ tugun sini.';

  @override
  String get eventTomorrow => 'Sini';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'tile $days kɔfɛ',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Kalo saba jatebɔ';

  @override
  String get eventBeforeOpen => 'sani sugu ka da yɛlɛ';

  @override
  String get eventAfterClose => 'sugu da tugulen kɔfɛ';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS jateminɛ: $value';
  }

  @override
  String get eventFromAnalysis => 'Ka bɔ i ka sɛgɛsɛgɛli la';

  @override
  String get eventsHint =>
      'I ka diyanyelenw ni i ka aksiyɔn kɛsu aksiyɔnw jatebɔ donw tile 90 nataw kɔnɔ, ani ko nataw minnu don sɛbɛnna i ka sɛgɛsɛgɛliw fɛ.';

  @override
  String get eventsEmpty =>
      'Ko nata si don tɛ tile 90 nataw kɔnɔ. Diyanyelenw walima aksiyɔn kɛsu aksiyɔnw fara a kan walasa k’u jatebɔ donw ye yan.';

  @override
  String get compareTitle => 'Sanga ɲɔgɔn ma';

  @override
  String get compareAdd => 'Aksiyɔn dɔ fara a kan';

  @override
  String get compareRemove => 'A bɔ';

  @override
  String get compareTickerHint => 'Aksiyɔn taamasiyɛn, i n\'a fɔ MSFT';

  @override
  String get compareHint =>
      'Jatebila nafamaw ɲɔgɔn kɛrɛ fɛ; jɛrɛ kelen kelen bɛɛ la, hakɛ ɲumanba jiralen bɛ. Wari hakɛw bɛ aksiyɔn kelen kelen bɛɛ yɛrɛ wari suguya la.';

  @override
  String get compareNoAnalysis => 'Sɛgɛsɛgɛli si tɛ yen fɔlɔ';

  @override
  String get portfolioDividends => 'Sanji tɔnɔ tilali';

  @override
  String portfolioDividendYield(String percent) {
    return 'Sɔrɔ hakɛ: $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Sanji tɔnɔ tilali makɔnɔnen sinsinna tɔnɔ tilali kan min sarala kalo 12 tɛmɛnenw kɔnɔ; nata saraliw tɛ dantigɛlen ye.';

  @override
  String positionDividend(String amount) {
    return 'Tɔnɔ tilali: $amount san o san';
  }

  @override
  String get chartAvgCost => 'I ka cɛmancɛ';

  @override
  String get chartAlertLevel => 'Lasɔmini';

  @override
  String get marketsToday => 'Suguw bi';

  @override
  String get notesTitle => 'N ka sɛbɛnniw';

  @override
  String get notesHint =>
      'Mun na i y\'a san, i bɛ mun kɔlɔsi, mun b\'a to i b\'a feere?';

  @override
  String get notesInfo =>
      'A marala nin minɛn in dɔrɔn de kan. AI sɛgɛsɛgɛli bɛ i ka sɛbɛnniw jateminɛ.';

  @override
  String notesSaved(String date) {
    return 'A marala: $date';
  }

  @override
  String get peersTitle => 'Sosiyete ɲɔgɔnnaw';

  @override
  String get portfolioExport => 'Bɔ ka kɛ CSV ye';

  @override
  String get portfolioImport => 'Don ka bɔ CSV la';

  @override
  String get portfolioImportHint =>
      'San kelen bila sira kelen kelen kan: aksiyɔn taamasiyɛn, hakɛ, sɔngɔ, wari suguya, don (YYYY-MM-DD). Kolɔnw bɛ se ka faran ni virgule, point-virgule walima tabulation ye; kunkan sira tɛ wajibi ye.';

  @override
  String get portfolioImportButton => 'Don';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'San $count farala a kan',
      one: 'San 1 farala a kan',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Sira $count tɛmɛna',
      one: 'Sira 1 tɛmɛna',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Aksiyɔn kɛsu, diyanyelenw, sɔngɔ lasɔminiw ani sɛbɛnniw bɛ kɛ kelen ye i ka minɛnw bɛɛ kan.';

  @override
  String syncLast(String time) {
    return 'Sync laban: $time';
  }

  @override
  String get syncNow => 'Sync sisan';

  @override
  String get syncFailed => 'Sync ma se ka kɛ. A bɛ segin ka a kɛ a yɛrɛ ma.';

  @override
  String get alertEmailTitle => 'E-mail ni lasɔmini dɔ sera';

  @override
  String get alertEmailOn =>
      'An bɛ i ka lasɔminiw lajɛ miniti dama o miniti dama, ka e-mail ci i ma, hali ni aplikasiyɔn datugulen don.';

  @override
  String get alertEmailSignIn =>
      'Don ni i ka e-mail ye Labɛnw kɔnɔ walasa ka lasɔminiw sɔrɔ e-mail fɛ, hali ni aplikasiyɔn datugulen don.';

  @override
  String get portfolioHistory => 'Sɔngɔ yɛlɛmali';

  @override
  String get portfolioReviewTitle => 'Aksiyɔn kɛsu AI sɛgɛsɛgɛli';

  @override
  String get portfolioReviewIntro =>
      'AI bɛ i ka aksiyɔn kɛsu bɛɛ lajɛ: i ka wari cɛ̀tigɛlen bɛ yɔrɔ kelen na wa, sektɛriw ni wari suguyaw, farati minnu bɛ i ka aksiyɔnw bɛɛ la, ani tɔnɔ tilalenw. Sɛgɛsɛgɛli 1 bɛ ta.';

  @override
  String get portfolioReviewButton => 'N ka aksiyɔn kɛsu sɛgɛsɛgɛ';

  @override
  String get portfolioReviewAgain => 'A sɛgɛsɛgɛ tugun';

  @override
  String get portfolioReviewWorking => 'I ka aksiyɔn kɛsu bɛ ka sɛgɛsɛgɛ…';

  @override
  String get digestTitle => 'Dɔgɔkun kunnafoni surun imɛli fɛ';

  @override
  String get digestHint =>
      'Ntɛnɛn o ntɛnɛn: i ka diyanyelenw ni i ka aksiyɔn kɛsu tun bɛ cogo min dɔgɔkun tɛmɛnen na, ani u ka jatebɔ don nataw.';

  @override
  String get benchmarkTitle => 'Ni S&P 500 sanga';

  @override
  String get benchmarkYours => 'I ka sanniw';

  @override
  String get benchmarkIndex => 'Wari kelen in S&P 500 kɔnɔ';

  @override
  String benchmarkAhead(String points) {
    return 'Ka fisa ni indɛkisi ye ni pursantazi pwɛn $points ye';
  }

  @override
  String benchmarkBehind(String points) {
    return 'Ka dɔgɔ ni indɛkisi ye ni pursantazi pwɛn $points ye';
  }

  @override
  String get benchmarkHint =>
      'I n\'a fɔ i ka sanni kelen kelen bɛɛ wari donna S&P 500 indɛkisi fɔn na o don kelen in. Tɔnɔ tilalenw ma jate; tɛmɛnen tɔnɔ tɛ nata tɔnɔ fɔ ka kɔn.';

  @override
  String get portfolioSell => 'Feere';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbol feere';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Aksiyɔn kelen feereli sɔngɔ ($currency)';
  }

  @override
  String get portfolioSellDate => 'Feereli don';

  @override
  String get portfolioSellAll => 'A bɛɛ';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'I bolo ye $quantity ye';
  }

  @override
  String get portfolioSold => 'Feerelen';

  @override
  String get portfolioRealized => 'Tɔnɔ sɔrɔlen';

  @override
  String get portfolioClosed => 'Aksiyɔn feerelenw';

  @override
  String get portfolioClosedNote => 'Aksiyɔnw bɛɛ feerela';

  @override
  String get portfolioTransactions => 'Sanniw ni feereliw';

  @override
  String get portfolioRealizedByYear => 'Tɔnɔ sɔrɔlen san o san';

  @override
  String get portfolioRealizedHint =>
      'Feereliw bɛ bɛn i ka sanni kɔrɔw ma fɔlɔ (FIFO), ka falen bi wari falen sɔngɔ la. I ka nisɔngɔ dantigɛli kama, i ka broker ka sɛbɛn baara.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Kabini nin sɛgɛsɛgɛli kɛra, kalo saba jatebɔ kura bɔra ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Jatebɔ kura';

  @override
  String get portfolioImportBrokers =>
      'Revolut, Trading 212 ani Interactive Brokers ka bɔliw fana bɛ dɔn, feereliw fana; tɔnɔ tilaliw ni wari donniw bɛ to yen.';

  @override
  String get portfolioImportFile => 'Fisiye dɔ sugandi';

  @override
  String offlineBanner(String time) {
    return 'Jɛɲɔgɔnya tɛ yen – kunnafoni laban minnu marala, olu de bɛ yira ($time).';
  }

  @override
  String get glossMarketCap =>
      'Sosiyete bɛɛ ka nafa ye min ye sugu kan: aksiyɔn sɔngɔ × aksiyɔnw hakɛ.';

  @override
  String get glossSharesOutstanding =>
      'Sosiyete ye aksiyɔn hakɛ min bɔ. Ni a ka ca, aksiyɔn kelen-kelen bɛ niyɔrɔ fitinin sɔrɔ; ka u san ka segin bɛ a dɔgɔya.';

  @override
  String get glossPeTrailing =>
      'Sɔngɔ ÷ aksiyɔn kelen tɔnɔ kalo 12 laban kɔnɔ: i bɛ sisan tɔnɔ san joli sara. Min ka dɔgɔ o ka nɔgɔn, nka sosiyete minnu bɛ yiriwa joona, olu ka P/E ka bon tuma caman.';

  @override
  String get glossPeForward =>
      'I n\'a fɔ P/E, nka ni tɔnɔ ye min sɛgɛsɛgɛbagaw b\'a makɔnɔ kalo 12 nata kɔnɔ. Ni a ka dɔgɔ ni P/E tɛmɛnen ye, o kɔrɔ ye ko tɔnɔ bɛna yiriwa.';

  @override
  String get glossPb =>
      'Sɔngɔ ÷ gafe nafa (nafolo bɔ juru la) aksiyɔn kelen na. Ni a bɛ 1 ɲɔgɔn na, sugu bɛ sosiyete jate a ka nafolo hakɛ la min bɛ sɛbɛn kan.';

  @override
  String get glossPs =>
      'Sugu nafa ÷ san feereli hakɛ. A nafa ka bon sosiyete minnu tɔnɔ ka dɔgɔ walima u ma tɔnɔ sɔrɔ fɔlɔ; a suma ni baara suguya kelen ta ye.';

  @override
  String get glossEvToFcf =>
      'Sosiyete nafa ni juru ye (EV) ÷ wari min bɛ bɔ san kɔnɔ wari bilali kɔfɛ. Ni a ka dɔgɔ, i bɛ wari caman sɔrɔ sɔngɔ in na.';

  @override
  String get glossPeg =>
      'P/E ÷ san tɔnɔ yiriwali min makɔnɔnen don (%). Ni a bɛ 1 ɲɔgɔn na, mɔgɔ caman b\'a jate tilennen ye; a bɛ P/E jira yiriwali yeelen na.';

  @override
  String get glossEps =>
      'Aksiyɔn kelen tɔnɔ kalo 12 laban kɔnɔ. Ni EPS bɛ yɛlɛ san o san, o ye sosiyete kɛnɛman taamasyɛn barikama dɔ ye.';

  @override
  String get glossBeta =>
      'Aksiyɔn bɛ yɛlɛma ni sugu ye cogo min na: 1 = i n\'a fɔ sugu, 1.5 = yɛlɛmaliw ka bon 50% ɲɔgɔn, 1 duguma = a ka sabali.';

  @override
  String get glossRevenueTtm =>
      'Feereli bɛɛ lajɛlen kalo 12 laban kɔnɔ, sani musaka si ka bɔ.';

  @override
  String get glossNetIncomeTtm =>
      'Tɔnɔ min bɛ to musakaw bɛɛ, juru tɔnɔ ani nisɔngɔw kɔfɛ kalo 12 laban kɔnɔ.';

  @override
  String get glossGrossMargin =>
      'Feereli hakɛ niyɔrɔ min bɛ to fɛnw dilan musaka kɔfɛ. Ni a ka bon, o bɛ a jira tuma caman ko sosiyete bɛ se ka sɔngɔ latigɛ.';

  @override
  String get glossOperatingMargin =>
      'Feereli hakɛ niyɔrɔ min bɛ to baara kɛli musakaw (sara, sokɔnɔ sara, feerelikow) kɔfɛ, sani juru tɔnɔ ni nisɔngɔw ka sara.';

  @override
  String get glossNetMargin =>
      'Feereli hakɛ niyɔrɔ min bɛ kɛ tɔnɔ laban ye. 20% kɔrɔ ye ko feereli 100 o 100, 20 ye tɔnɔ ye.';

  @override
  String get glossRoe =>
      'Tɔnɔ yɛrɛ nafolo kan: san tɔnɔ ÷ tigiw ka nafolo. A bɛ a jira ɲɛmɔgɔw bɛ aksiyɔntigiw ka wari baara kɛ cogo ɲuman na cogo min; 15% ɲɔgɔn sanfɛ, o ka ɲi kosɛbɛ.';

  @override
  String get glossRoa =>
      'Tɔnɔ nafolo bɛɛ kan: san tɔnɔ ÷ sosiyete ka nafolo bɛɛ. A suma ni baara suguya kelen ta ye.';

  @override
  String get glossDebtToEquity =>
      'Juru ÷ tigiw ka nafolo. Ni a ka bon, wari jurulen ka ca: farati ka bon ni juru tɔnɔ yɛlɛla walima baara sumayara.';

  @override
  String get glossCurrentRatio =>
      'Nafolo surun ÷ juru minnu ka kan ka sara san kelen kɔnɔ. 1 sanfɛ, o kɔrɔ ye ko sosiyete bɛ se k\'a ka juru surunw sara.';

  @override
  String get glossRevenueGrowth =>
      'Feereli hakɛ yiriwara hakɛ min ye ni san tɛmɛnen ye.';

  @override
  String get glossEpsGrowth =>
      'Aksiyɔn kelen tɔnɔ yiriwara hakɛ min ye ni san tɛmɛnen ye.';

  @override
  String get glossDividendYield =>
      'San tɔnɔ tilali ÷ aksiyɔn sɔngɔ: wari min bɛna don i bolo san o san, i ye min sara o kɛmɛsarada la.';

  @override
  String get glossDividendPerShare =>
      'Tɔnɔ tilali min sarala aksiyɔn kelen na san tɛmɛnen kɔnɔ.';

  @override
  String get glossPayoutRatio =>
      'Tɔnɔ niyɔrɔ min bɛ tila ka di aksiyɔntigiw ma. 100% sanfɛ, sosiyete bɛ wari di ka tɛmɛ a ka sɔrɔ kan, o tɛ mɛn tuma caman.';

  @override
  String get glossTitle => 'O kɔrɔ ye mun ye?';

  @override
  String get watchNewsTitle => 'I ka aksiyɔnw kibaruyaw';

  @override
  String get undo => 'Segin kɔ';

  @override
  String get watchSort => 'Ka labɛn';

  @override
  String get watchSortOwn => 'N ka labɛnni';

  @override
  String get watchSortGainers => 'Minnu yɛlɛla kosɛbɛ fɔlɔ';

  @override
  String get watchSortLosers => 'Minnu jiginna kosɛbɛ fɔlɔ';

  @override
  String get watchSortName => 'Taamasiyɛn kɔ (A–Z)';

  @override
  String get watchHint =>
      'Minɛnan sama walasa ka labɛnni yɛlɛma, i bolo sama numanbolo fɛ walasa ka bɔ. Juru bɛ tile 30 laban jira.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: i ka sɛgɛsɛgɛli labɛnna.';
  }

  @override
  String alertFromCost(String price) {
    return 'I ka sanni sɔngɔ cɛmancɛ ($price) ma:';
  }

  @override
  String get briefTitle => 'Bi ni i ka aksiyɔnw';

  @override
  String get briefButton => 'Bi kuma surun';

  @override
  String get briefHint =>
      'AI kuma surun min b’a jira cogo min na i ka pɔrtifoliyo ani i ka diyanyew yɛlɛmana bi, ani kibaru kuraw b’u ko min fɔ. A tɛ sɛgɛsɛgɛli si ta.';

  @override
  String get briefRefresh => 'Kura';

  @override
  String get sectionEarnings => 'Tɔnɔ jatebɔ';

  @override
  String earningsNext(String date) {
    return 'Jatebɔ nata: $date';
  }

  @override
  String get earningsExpected => 'EPS makɔnɔnen';

  @override
  String get earningsReported => 'EPS fɔlen';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'EPS sera makɔnɔnen ma walima ka tɛmɛ a kan kalo saba $beats la $total laban kɔnɔ',
      one:
          'EPS sera makɔnɔnen ma walima ka tɛmɛ a kan kalo saba $beats la 1 kɔnɔ',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol bɛ kalo saba jatebɔ jira sini';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol bɛ kalo saba jatebɔ jira bi';
  }

  @override
  String get earningsRemindersTitle => 'Jatebɔ hakilijiginw';

  @override
  String get earningsRemindersSubtitle =>
      'Kunnafoni don kelen ka kɔn i ka diyanyelenw walima i ka portfolio aksiyɔnw ka kalo saba jatebɔ jira ɲɛ';

  @override
  String addAllToFavorites(int count) {
    return 'U bɛɛ fara diyanyelenw kan ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Don ka bɔ ɛkran ja la';

  @override
  String get holdingsReading => 'I ka aksiyɔnw bɛ ka kalan…';

  @override
  String get holdingsReviewTitle => 'Aksiyɔn minnu sɔrɔla';

  @override
  String get holdingsReviewHint =>
      'Jatew lajɛ sani i k’u fara a kan. Sɔngɔ ye i ka sanni sɔngɔ cɛmancɛ ye aksiyɔn kelen na, a tɛ bi sɔngɔ ye.';

  @override
  String get holdingsNoPrice => 'Sanni sɔngɔ cɛmancɛ tɛ ja kan';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Aksiyɔn $count fara a kan',
      one: 'Aksiyɔn 1 fara a kan',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Aksiyɔn si ma sɔrɔ nin ja kan. I ka burusi ka aksiyɔnw ɲɛ ɛkran ja dɔ lajɛ.';

  @override
  String get week52Range => 'Dɔgɔkun 52 sɔngɔ cɛ';

  @override
  String week52BelowHigh(String percent) {
    return '$percent Dɔgɔkun 52 sɔngɔ sanfɛla duguma';
  }

  @override
  String get week52AtHigh => 'Dɔgɔkun 52 sɔngɔ sanfɛla la';

  @override
  String get alertKindTrailing => 'Ni a jiginna ka bɔ a sanfɛla la';

  @override
  String get alertTrailingPercent => 'Jigin ka bɔ sanfɛla la (%)';

  @override
  String get alertTrailingHint =>
      'A bɛ sɔngɔ tugu sanfɛ: a bɛ i kunnafoni ni sɔngɔ jiginna nin hakɛ ye ka bɔ a sanfɛla la k\'a ta i y\'a labɛn tuma.';

  @override
  String alertDescTrailing(String percent) {
    return '$percent jigin ka bɔ sanfɛla la';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'sanfɛla ka se bi ma: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol jiginna $percent ka bɔ a sanfɛla la';
  }

  @override
  String get sectionInsiders => 'Ɲɛmɔgɔw ka aksiyɔn sanni ni feereli';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'sanni $count',
      one: 'sanni 1',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'feereli $count',
      one: 'feereli 1',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'A tɔ: aksiyɔn $shares';
  }

  @override
  String get insiderBuy => 'A sanna';

  @override
  String get insiderSell => 'A feerela';

  @override
  String get insiderHint =>
      'Ɲɛmɔgɔw ni ɲɛmaaw ka sanni ni feereli sugu la tile 90 laban na (SEC Form 4). Option baarakɛli ni aksiyɔn sɔrɔlenw tɛ jate.';

  @override
  String get insiderNone =>
      'Ɲɛmɔgɔw ma aksiyɔn san wala ka a feere sugu la tile 90 laban na.';

  @override
  String get analystTrend => 'Hakilinaw yɛlɛmana cogo min na kalo o kalo';

  @override
  String get watchListAll => 'A bɛɛ';

  @override
  String get watchListNew => 'Lisi kura';

  @override
  String get watchListName => 'Lisi tɔgɔ';

  @override
  String get watchListRename => 'Lisi tɔgɔ yɛlɛma';

  @override
  String get watchListDelete => 'Lisi jɔsi';

  @override
  String get watchListAddTo => 'Fara lisi kan';

  @override
  String get watchListEmpty =>
      'Aksiyɔn si tɛ nin lisi la fɔlɔ. Digi lisi butɔni kan aksiyɔn kɛrɛfɛ walasa k\'a fara a kan.';

  @override
  String get portfolioAskTitle => 'Ɲininkaliw i ka aksiyɔn kɛsu kan';

  @override
  String get rangeYtd => 'Nin san';

  @override
  String get backupTitle => 'Kopi lamaralen';

  @override
  String get backupSave => 'Kopi lamaralen mara';

  @override
  String get backupSaveHint =>
      'I ka diyanyelenw, lisiw, aksiyɔn kɛsu, lasɔminiw ani sɛbɛnniw fisiye kelen kɔnɔ.';

  @override
  String get backupRestore => 'Segin ka bɔ kopi lamaralen na';

  @override
  String get backupRestoreHint =>
      'A bɛ fisiye kɔnɔ fɛnw fara a kan; i bɛ fɛn minnu sɔrɔ sisan, olu si tɛna jɔsi.';

  @override
  String get backupRestored => 'Kopi lamaralen seginna.';

  @override
  String get backupInvalid => 'Nin fisiye tɛ WhatStock kopi lamaralen ye.';

  @override
  String get allocationPositions => 'Aksiyɔnw';

  @override
  String get allocationSectors => 'Baara fanw';

  @override
  String get allocationCurrencies => 'Wariw';

  @override
  String get compareReturn1y => 'San 1 tɔnɔ';

  @override
  String get compareFromHigh => 'Ka bɔ Dɔgɔkun 52 sɔngɔ sanfɛla la';

  @override
  String get briefAutoTitle => 'Don o don kuntaman sɔgɔma o sɔgɔma';

  @override
  String get briefAutoSubtitle =>
      '“Bi ni i ka aksiyɔnw” bɛ dilan a yɛrɛ ma sɔgɔma 7:00 kɔfɛ ni app bɛ baara la; ɔridinatɛri kan, ladɔnniyali bɛ a fɔ i ye. A bɛ bɔ i ka don o don ɲininkaliw hakɛ la, a tɛ sɛgɛsɛgɛli si ta.';

  @override
  String get targetsButton => 'Laɲini tilacogo';

  @override
  String get targetsTitle => 'Laɲini tilacogo';

  @override
  String get targetsHint =>
      'A sigi aksiyɔn kelen-kelen bɛɛ ka kan ka portfolio tilayɔrɔ hakɛ min sɔrɔ. Ni laɲini tɛ, yɔrɔ to lankolon. O kɔ, app bɛna a jira min ka kan ka san walima ka feere walasa ka se o ma.';

  @override
  String targetsSum(String percent) {
    return 'Bɛɛ lajɛlen: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'San ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Feere ≈ $amount';
  }

  @override
  String get rebalanceOk => 'A sera laɲini ma';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol ye EPS makɔnɔnen tɛmɛ';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol ma se EPS makɔnɔnen ma';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'EPS fɔlen $actual, makɔnɔnen $estimate';
  }

  @override
  String get newsExplain => 'Nin kɔrɔ ye mun ye?';

  @override
  String get watchAlertAll => 'Kunnafoni don yɛlɛma belebeleba kan';

  @override
  String get watchAlertAllHint =>
      'Sɔngɔ kunnafoni lisi nin kɔnɔ aksiyɔn kelen kelen bɛɛ ye: a bɛ i ladɔnniya ni a yɛlɛmana nin hakɛ ye don kelen kɔnɔ, sanfɛ walima duguma. Minnu bɛ ni kunnafoni ye kaban, olu ta bɛ to.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kunnafoni $count sigilen don',
      one: 'Kunnafoni 1 sigilen don',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Tɔnɔ sɔrɔlenw bɔ (CSV)';

  @override
  String get portfolioAnnualReturn => 'San o san tɔnɔ';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / san';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Tɔnɔ san o san min sumana ni wari ye (XIRR): a bɛ i ka sanni ni i ka feereli waati jate, o la wari min farala a kan kɔfɛ, o tɛ a tiɲɛ. A bɛ jira ni i ka sanni fɔlɔ sera san kelen ma walima ka tɛmɛ; tɔnɔ tilali tɛ a la.';

  @override
  String get eventsAddToCalendar => 'Fara kalandiriye kan (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Portfolio lasɔmini';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Kunnafoni ni i ka portfolio bɛɛ yɛlɛmana nin hakɛ ye tile kelen kɔnɔ.';

  @override
  String get portfolioMoveAlertOff => 'Datugulen';

  @override
  String portfolioMoveUp(String percent) {
    return 'I ka portfolio yɛlɛla $percent bi';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'I ka portfolio jiginna $percent bi';
  }

  @override
  String get whatIfTitle => 'N\'i tun ye wari don, a tun bɛna kɛ di?';

  @override
  String get whatIfAmount => 'Hakɛ';

  @override
  String whatIfResult(String amount, String period) {
    return 'N\'i tun ye $amount don $period kɔfɛ, a sɔngɔ tun bɛna kɛ bi';
  }

  @override
  String get whatIfNote =>
      'A sinsinnen bɛ aksiyɔn sɔngɔ dɔrɔn kan: tɔnɔ tilali, sara ni nisɔngɔw tɛ a la. Tɛmɛnen tɔnɔw tɛ nata tɔnɔw jira.';

  @override
  String get watchShare => 'Lisi nin tila';

  @override
  String get watchImport => 'Aksiyɔn taamasiyɛnw fara a kan';

  @override
  String get watchImportHint =>
      'Aksiyɔn taamasiyɛnw bila, u faranni ni virgule, yɔrɔ lankolon walima sira kura ye – misali la, lisi min mɔgɔ dɔ ye tila i ni.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Aksiyɔn $count farala a kan',
      one: 'Aksiyɔn 1 farala a kan',
      zero: 'Aksiyɔn kura si tɛ',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Minnu ka bon kosɛbɛ fɔlɔ';

  @override
  String get positionsSortGain => 'Tɔnɔ bɛɛ ka bon kosɛbɛ fɔlɔ';

  @override
  String get positionsSortToday => 'Bi minnu ka ɲi kosɛbɛ fɔlɔ';

  @override
  String get chartMyBuys => 'I ka sanniw';

  @override
  String get chartMySells => 'I ka feereliw';

  @override
  String get shortcutsTitle => 'Clavier sira surunw';

  @override
  String usMarketOpen(String time) {
    return 'Ameriki sugu dayɛlɛlen don · a bɛ datugu $time kɔfɛ';
  }

  @override
  String usMarketClosed(String time) {
    return 'Ameriki sugu datugulen don · a bɛ dayɛlɛ $time kɔfɛ';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes min';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours h $minutes min';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days tile $hours h';
  }

  @override
  String get portfolioGoalSet => 'Laɲini sigi';

  @override
  String get portfolioGoalTitle => 'Aksiyɔn kɛsu laɲini';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · Laɲini: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'I ye i ka laɲini sɔrɔ: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Laɲini bɔ a la';

  @override
  String get alertEdit => 'Lasɔmini yɛlɛma';

  @override
  String get positionOpenLots => 'Hali bɛ i bolo (kɔrɔw fɔlɔ)';

  @override
  String get lotRemoved => 'Sanni walima feereli jɔsira';

  @override
  String get alertDeleted => 'Kunnafoni jɔsira';

  @override
  String get alertsClearTriggered => 'Kunnafoni wulilenw jɔsi';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kunnafoni $count jɔsira',
      one: 'Kunnafoni 1 jɔsira',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Ɲɛ fɔlɔ';

  @override
  String get allocationCountries => 'Jamanaw';

  @override
  String get newsExplainNoteResearch =>
      'AI ka ɲɛfɔli: a bɛ tiɲɛw ɲini ɛntɛrinɛti kan, ka sɛbɛn in da wuli, ka a jateminɛ ni bɔyɔrɔ in bɛ se ka da a la cogo min na. Wari donni ladilikan tɛ. A bɛ bɔ i ka don o don ɲininkaliw hakɛ la, a tɛ sɛgɛsɛgɛli si ta.';

  @override
  String get sourceOfficial => 'Ofisiyɛli';

  @override
  String get sourcePressRelease => 'Kunnafonidi';

  @override
  String get sourceMajorNews => 'Kibaru ba';

  @override
  String get sourceOpinion => 'Hakilina';

  @override
  String get earningsSummaryButton => 'Mun tun bɛ kibaru laban in kɔnɔ?';

  @override
  String get earningsSummaryNote =>
      'AI ka kuma surun sosiyete ka tɔnɔ kibaru ni kunnafonidisɛbɛnw ka sɛbɛnni minnu a bɛ sɔrɔ ɛntɛrinɛti kan. Wari donni ladilikan tɛ. A bɛ bɔ i ka don o don ɲininkaliw hakɛ la, a tɛ sɛgɛsɛgɛli si ta.';

  @override
  String get compareLastSurprise => 'Kalo saba tɛmɛnen EPS ni makɔnɔnen';

  @override
  String get compareNextReport => 'Jatebɔ nata';

  @override
  String get resolvingDescription => 'I bɛ aksiyɔn min fɛ, o bɛ ka ɲini…';

  @override
  String get instrumentTitle => 'Nin fɛn in kan';

  @override
  String get instrumentHint =>
      'Sosiyete kunnafoni tɛ nin taamasiyɛn in na – a bɛ se ka kɛ ETF ye, fond walima dɛpozitɛri sɛbɛn. AI ɲininka a ye mun ye, mun bɛ a kɔnɔ ani a sɔngɔ ye joli ye.';

  @override
  String get instrumentAsk => 'Nin ye mun ye?';

  @override
  String get instrumentNote =>
      'AI ka ɲɛfɔli min bɔra fond bɔbaga ka ɲɛ kan ani wariko siti minnu a bɛ sɔrɔ ɛntɛrinɛti kan. Wari donni ladilikan tɛ. A bɛ bɔ i ka don o don ɲininkaliw hakɛ la, a tɛ sɛgɛsɛgɛli si ta.';

  @override
  String suggestAskAi(String query) {
    return 'AI ɲininka: « $query »';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return '$symbols sisan sɔngɔ tɛ yen.';
  }

  @override
  String get eventsRecentResults => 'Jatebɔ fɔlen kuraw';

  @override
  String get saveToNotes => 'A mara n ka sɛbɛnniw la';

  @override
  String get savedToNotes => 'A marala i ka sɛbɛnniw la';
}
