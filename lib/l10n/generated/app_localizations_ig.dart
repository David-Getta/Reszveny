// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Igbo (`ig`).
class AppLocalizationsIg extends AppLocalizations {
  AppLocalizationsIg([String locale = 'ig']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'See foto nke stock, mụta ihe niile gbasara ya.';

  @override
  String get homeHint =>
      'Asambodo share, ihuenyo app onye broker, akwụkwọ akụkọ ma ọ bụ akara ụlọ ọrụ – ihe ọ bụla na-egosi stock.';

  @override
  String get takePhoto => 'See foto';

  @override
  String get chooseFromGallery => 'Họrọ na gallery';

  @override
  String get chooseImage => 'Họrọ onyonyo';

  @override
  String get enterTickerManually => 'Tinye ticker n\'aka';

  @override
  String get tickerInputLabel => 'Akara ticker';

  @override
  String get tickerInputHint => 'ọmụmaatụ AAPL';

  @override
  String get lookUp => 'Chọọ';

  @override
  String demoModeBanner(String symbols) {
    return 'Ọnọdụ ngosi – enweghị igodo data ahịa edobere. Data ọmụmaatụ dị maka: $symbols.';
  }

  @override
  String get recognizing => 'Na-enyocha onyonyo ahụ…';

  @override
  String get loadingData => 'Na-ebudata data…';

  @override
  String get noCandidatesTitle => 'Amataghị stock ọ bụla';

  @override
  String get noCandidatesBody =>
      'Anyị enweghị ike ịmata stock ọ bụla n\'onyonyo a. Nwaa foto doro anya karịa, ma ọ bụ tinye ticker n\'aka.';

  @override
  String get whatWeSaw => 'Ihe anyị hụrụ';

  @override
  String get chooseCandidateTitle => 'Kedu stock ị pụtara?';

  @override
  String confidencePercent(int percent) {
    return 'Ịdị n\'aka $percent%';
  }

  @override
  String get settings => 'Ntọala';

  @override
  String get language => 'Asụsụ';

  @override
  String get systemLanguage => 'Ndabara sistemụ';

  @override
  String get about => 'Maka';

  @override
  String get disclaimer =>
      'App a na-enye naanị ozi, ọ bụghị ndụmọdụ itinye ego. Data nwere ike igbu oge ma ọ bụ ghara izi ezi.';

  @override
  String dataSource(String source) {
    return 'Ebe data si: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Nmata: $source';
  }

  @override
  String get retry => 'Nwaa ọzọ';

  @override
  String get cancel => 'Kagbuo';

  @override
  String get ok => 'Ọ dị mma';

  @override
  String get close => 'Mechie';

  @override
  String get errorGeneric => 'Ihe mehiere.';

  @override
  String get errorSectionUnavailable => 'Enweghị ike ibudata akụkụ a.';

  @override
  String get notAvailable => 'enweghị';

  @override
  String get sectionIdentity => 'Njirimara';

  @override
  String get sectionPrice => 'Ọnụahịa';

  @override
  String get sectionValuation => 'Ntụle uru';

  @override
  String get sectionFinancials => 'Ọnọdụ ego';

  @override
  String get sectionDividend => 'Dividend';

  @override
  String get sectionProfile => 'Nkọwa ụlọ ọrụ';

  @override
  String get sectionAnalysts => 'Ntụle ndị nyocha';

  @override
  String get sectionNews => 'Akụkọ';

  @override
  String get sectionRecognition => 'Nkọwa nmata';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Ahịa stock';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Ego';

  @override
  String get labelCountry => 'Mba';

  @override
  String get labelIndustry => 'Ụdị azụmahịa';

  @override
  String get labelSector => 'Ngalaba';

  @override
  String get labelWebsite => 'Weebụsaịtị';

  @override
  String get labelIpoDate => 'Ụbọchị IPO';

  @override
  String get labelMarketCap => 'Uru ahịa';

  @override
  String get labelSharesOutstanding => 'Shares dị n\'ahịa';

  @override
  String get labelEmployees => 'Ndị ọrụ';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Isi ụlọ ọrụ';

  @override
  String get labelDescription => 'Nkọwa';

  @override
  String get labelLastPrice => 'Ọnụahịa ikpeazụ';

  @override
  String get labelChange => 'Mgbanwe';

  @override
  String get labelOpen => 'Mmeghe';

  @override
  String get labelDayHigh => 'Kachasị elu taa';

  @override
  String get labelDayLow => 'Kachasị ala taa';

  @override
  String get labelPreviousClose => 'Mmechi gara aga';

  @override
  String get labelWeek52High => 'Kachasị elu n\'izu 52';

  @override
  String get labelWeek52Low => 'Kachasị ala n\'izu 52';

  @override
  String get labelAverageVolume10d => 'Nkezi volume (ụbọchị 10)';

  @override
  String updatedAt(String time) {
    return 'Emelitere $time';
  }

  @override
  String get labelPeTrailing => 'P/E (gara aga)';

  @override
  String get labelPeForward => 'P/E (na-abịa)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / free cash flow';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Ego mbata (TTM)';

  @override
  String get labelNetIncomeTtm => 'Uru fọdụrụ (TTM)';

  @override
  String get labelGrossMargin => 'Pasentị uru mbụ';

  @override
  String get labelOperatingMargin => 'Pasentị uru ọrụ';

  @override
  String get labelNetMargin => 'Pasentị uru fọdụrụ';

  @override
  String get labelRoe => 'Uru n\'ego ndị nwe (ROE)';

  @override
  String get labelRoa => 'Uru n\'akụ (ROA)';

  @override
  String get labelDebtToEquity => 'Ụgwọ / ego ndị nwe';

  @override
  String get labelCurrentRatio => 'Current ratio (akụ/ụgwọ)';

  @override
  String get labelRevenueGrowth => 'Uto ego mbata (YoY)';

  @override
  String get labelEpsGrowth => 'Uto EPS (YoY)';

  @override
  String get labelDividendYield => 'Mkpụrụ dividend';

  @override
  String get labelDividendPerShare => 'Dividend kwa share';

  @override
  String get labelPayoutRatio => 'Pasentị uru a na-ekesa';

  @override
  String get labelConsensus => 'Nkwekọrịta';

  @override
  String get ratingStrongBuy => 'Zụta nke ukwuu';

  @override
  String get ratingBuy => 'Zụta';

  @override
  String get ratingHold => 'Jide';

  @override
  String get ratingSell => 'Ree';

  @override
  String get ratingStrongSell => 'Ree nke ukwuu';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ndị nyocha $count',
      one: 'Onye nyocha 1',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Oge: $period';
  }

  @override
  String get noNews => 'Enweghị akụkọ ọhụrụ.';

  @override
  String get openArticle => 'Mepee akụkọ';

  @override
  String get openLinkFailed => 'Enweghị ike imepe njikọ ahụ.';

  @override
  String get recognitionSummary => 'Nchịkọta';

  @override
  String get recognitionEvidence => 'Ihe mere anyị ji chee otu a';

  @override
  String get recognitionRawText => 'Ederede a gụrụ n\'onyonyo';

  @override
  String get errMissingAnthropicKey =>
      'Ahazibeghị nmata onyonyo (enweghị ANTHROPIC_API_KEY). Tinye ticker n\'aka.';

  @override
  String get errRecognitionUnreachable =>
      'Enweghị ike iru ọrụ nmata. Lelee njikọ ịntanetị gị.';

  @override
  String errRecognitionHttp(String status) {
    return 'Ọrụ nmata zitere njehie (HTTP $status).';
  }

  @override
  String get errRecognitionRefused => 'Ọrụ nmata enweghị ike ịhazi onyonyo a.';

  @override
  String get errRecognitionTruncated =>
      'Azịza nmata kwụsịrị n\'etiti. Biko nwaa ọzọ.';

  @override
  String get errRecognitionBadResponse =>
      'Azịza a na-atụghị anya si n\'ọrụ nmata.';

  @override
  String get errRecognitionEmpty => 'Ọrụ nmata zitere azịza efu.';

  @override
  String get errMissingFinnhubKey =>
      'Ahazibeghị data ahịa (enweghị FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Enweghị ike iru ọrụ data ahịa. Lelee njikọ ịntanetị gị.';

  @override
  String get errMarketRateLimited =>
      'Arịrịọ dị ukwuu na-aga n\'ọrụ data ahịa. Biko chere otu nkeji.';

  @override
  String errMarketHttp(String status) {
    return 'Ọrụ data ahịa zitere njehie (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Azịza a na-atụghị anya si n\'ọrụ data ahịa.';

  @override
  String errNoQuote(String symbol) {
    return 'Ahụghị data ọnụahịa maka $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Ahụghị nkọwa ụlọ ọrụ maka $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Ọnọdụ ngosi na-akwado naanị $symbols. Tinye FINNHUB_API_KEY maka data ndụ.';
  }

  @override
  String errUnknown(String detail) {
    return 'Ihe mehiere: $detail';
  }

  @override
  String get newSearch => 'Ọchụchọ ọhụrụ';

  @override
  String get recentSearches => 'Nso nso a';

  @override
  String get noRecentSearches => 'Enwebeghị ọchụchọ nso nso a.';

  @override
  String get clearRecent => 'Hichapụ nso nso a';

  @override
  String get greeting => 'Kedu stock ka anyị ga-elele?';

  @override
  String get searchHint => 'Ticker ma ọ bụ aha ụlọ ọrụ';

  @override
  String get attachImage => 'Tinye onyonyo';

  @override
  String get searchResultsTitle => 'Nsonaazụ ọchụchọ';

  @override
  String errNoResults(String query) {
    return 'Ahụghị stock ọ bụla maka “$query”.';
  }

  @override
  String get quickBarHint => 'Pịnye ticker ma ọ bụ aha ụlọ ọrụ…';

  @override
  String get openFullWindow => 'Mepee window';

  @override
  String hotkeyHint(String shortcut) {
    return 'Pịa $shortcut ebe ọ bụla ka ị kpọọ WhatStock.';
  }

  @override
  String get trayOpen => 'Mepee WhatStock';

  @override
  String get trayQuickSearch => 'Ọchụchọ ngwa ngwa';

  @override
  String get trayQuit => 'Pụọ';

  @override
  String get appearance => 'Ọdịdị';

  @override
  String get themeSystem => 'Sistemụ';

  @override
  String get themeDark => 'Ọchịchịrị';

  @override
  String get themeLight => 'Ìhè';

  @override
  String get back => 'Azụ';

  @override
  String get aiSectionTitle => 'Nyocha AI';

  @override
  String get aiIntro =>
      'Nkọwa zuru ezu nke AI dere: nchịkọta akụkọ ọhụrụ, azụmahịa ahụ, ike ya, ihe egwu na ihe zoro ezo, ntụle uru, atụmanya ọnụahịa nwere ọnọdụ dị iche iche site n\'akụkụ uche, ọha mmadụ, chaatị na akụnụba ukwu, na ihe ị ga-eleba anya.';

  @override
  String get aiGenerate => 'Mepụta nyocha';

  @override
  String get aiRegenerate => 'Mepụta ọzọ';

  @override
  String get aiGenerating =>
      'Na-akwado nyocha ahụ… nke a nwere ike were otu nkeji ma ọ bụ abụọ.';

  @override
  String get aiSources => 'Ebe e si nweta';

  @override
  String aiGeneratedAt(String time) {
    return 'Emepụtara $time';
  }

  @override
  String get aiDisclaimer =>
      'Nyocha AI mepụtara dabere na data ọha na akụkọ ọhụrụ. O nwere ike inwe mmejọ ma ọ bụ ghara ịbụ nke ugbu a, ọ bụkwaghị ndụmọdụ itinye ego.';

  @override
  String get errAiNotConfigured =>
      'Ahazibeghị nyocha AI (enweghị ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Enweghị ike iru ọrụ AI. Lelee njikọ ịntanetị gị.';

  @override
  String errAiHttp(String status) {
    return 'Ọrụ AI zitere njehie (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Ọrụ AI jụrụ inyocha stock a.';

  @override
  String get errAiBadResponse => 'Azịza a na-atụghị anya si n\'ọrụ AI.';

  @override
  String get sectionChart => 'Chaatị ọnụahịa';

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
      'Akụkọ ọnụahịa gara aga adịghị n\'ebe data a na-eji ugbu a.';

  @override
  String get sectionStatements => 'Nkwupụta ego (kwa afọ)';

  @override
  String get labelFiscalYear => 'Afọ ego';

  @override
  String get labelRevenue => 'Ego mbata';

  @override
  String get labelNetIncome => 'Uru fọdụrụ';

  @override
  String get labelTotalAssets => 'Ngụkọta akụ';

  @override
  String get labelTotalLiabilities => 'Ngụkọta ụgwọ';

  @override
  String get labelEquity => 'Ego ndị nwe shares';

  @override
  String get labelOperatingCashFlow => 'Ego na-abata site n\'ọrụ';

  @override
  String get statementsUnavailable =>
      'Nkwupụta ego a kọọrọ adịghị maka stock a.';

  @override
  String get launchAtLogin => 'Malite mgbe ị banyere';

  @override
  String get hotkeyLabel => 'Ụzọ mkpirisi ebe niile';

  @override
  String get hotkeyRecordHint => 'Pịa ebe a, wee pịa njikọ igodo ọhụrụ';

  @override
  String get hotkeyReset => 'Laghachi na ndabara';

  @override
  String get pasteImage => 'Mado onyonyo e depụtara';

  @override
  String get errClipboardNoImage => 'Onweghị onyonyo e depụtara.';

  @override
  String get favorites => 'Ọkacha mmasị';

  @override
  String get addToFavorites => 'Tinye n\'ọkacha mmasị';

  @override
  String get removeFromFavorites => 'Wepụ n\'ọkacha mmasị';

  @override
  String get noFavorites =>
      'Enwebeghị ọkacha mmasị. Pịa kpakpando dị na stock iji tinye ya.';

  @override
  String get displayCurrency => 'Ego ngosi';

  @override
  String get displayCurrencyNone => 'Naanị ego stock ahụ';

  @override
  String labelConverted(String currency) {
    return '≈ na $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Ọnụego: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Mmelite';

  @override
  String currentVersion(String version) {
    return 'Ụdị $version';
  }

  @override
  String get autoUpdate => 'Wụnye mmelite na-akpaghị aka';

  @override
  String get checkForUpdates => 'Lelee mmelite';

  @override
  String get updateChecking => 'Na-elele mmelite…';

  @override
  String get updateUpToDate => 'Ị nọ n\'ụdị kachasị ọhụrụ.';

  @override
  String updateAvailable(String version) {
    return 'Ụdị $version dị ugbu a.';
  }

  @override
  String get updateDownloading => 'Na-ebudata mmelite n\'azụ…';

  @override
  String get updateDownloaded =>
      'Mmelite adịla njikere. Malitegharịa iji wụnye ya.';

  @override
  String get updateNow => 'Melite';

  @override
  String get restartNow => 'Malitegharịa';

  @override
  String get updatesViaStore =>
      'Mmelite na-abịa na-akpaghị aka site n\'ụlọ ahịa app.';

  @override
  String get updateCheckFailed => 'Enweghị ike ilele mmelite.';

  @override
  String get subscription => 'Ndenye aha';

  @override
  String get planTrial => 'Nnwale';

  @override
  String get planNormal => 'Nkịtị';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Enweghị atụmatụ na-arụ ọrụ';

  @override
  String planAnalysesPerMonth(int count) {
    return 'Nyocha $count kwa ọnwa';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Nnwale n\'efu ụbọchị $days nwere nyocha $count';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Ụbọchị $days fọdụrụ na nnwale',
      one: 'Ụbọchị 1 fọdụrụ na nnwale',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Nnwale n\'efu gị agwụla. Họrọ atụmatụ ka ị gaa n\'ihu na-enyocha.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Nyocha $remaining n\'ime $total fọdụrụ n\'oge a';
  }

  @override
  String extraCredits(int count) {
    return 'Nyocha mgbakwunye $count';
  }

  @override
  String renewsOn(String date) {
    return 'Na-aga n\'ihu na $date';
  }

  @override
  String get choosePlan => 'Họrọ atụmatụ';

  @override
  String get currentPlan => 'Atụmatụ ugbu a';

  @override
  String get subscribe => 'Denye aha';

  @override
  String get perMonth => '/ ọnwa';

  @override
  String get extraPacksTitle => 'Ịchọrọ karịa? Zụta nyocha mgbakwunye';

  @override
  String get extraPacksHint =>
      'Nyocha mgbakwunye anaghị agwụ, a na-ejikwa ha mgbe oke kwa ọnwa gị gwụsịrị.';

  @override
  String get buy => 'Zụta';

  @override
  String get restorePurchases => 'Weghachi ihe ị zụrụ';

  @override
  String get manageSubscription => 'Jikwaa ndenye aha';

  @override
  String get purchaseSuccess => 'Daalụ! Ihe ị zụrụ na-arụ ọrụ ugbu a.';

  @override
  String get purchasePending => 'Ịzụ ahịa na-eche…';

  @override
  String get purchaseFailed => 'Enweghị ike imecha ịzụ ahịa ahụ.';

  @override
  String get purchaseCanceled => 'Akagbuola ịzụ ahịa.';

  @override
  String get billingUnavailable =>
      'Ịzụ ihe adịbeghị n\'ikpo okwu a. Denye aha na ekwentị gị ma ọ bụ Mac; atụmatụ gị ga-arụ ọrụ na ngwaọrụ niile.';

  @override
  String get errQuotaExceeded =>
      'Ị nweghị nyocha fọdụrụ n\'oge a. Kwalite atụmatụ gị ma ọ bụ zụta nyocha mgbakwunye.';

  @override
  String get errTrialExpired =>
      'Nnwale n\'efu gị agwụla. Họrọ atụmatụ ka ị gaa n\'ihu.';

  @override
  String get errNoPlan => 'A chọrọ atụmatụ na-arụ ọrụ maka nyocha AI.';

  @override
  String get viewPlans => 'Lee atụmatụ';

  @override
  String get usageTitle => 'Ojiji';

  @override
  String get demoPurchaseNote =>
      'Ịkwụ ụgwọ ngosi: a na-eṅomi ịzụ ihe n\'ikpo okwu a.';

  @override
  String get mostPopular => 'Kacha ewu ewu';

  @override
  String get bestValue => 'Kacha baa uru';

  @override
  String get planFeaturesCommon =>
      'Nmata foto, data ndụ, chaatị, ọkacha mmasị na asụsụ 120 niile so n\'atụmatụ ọ bụla. Oke a bụ maka nyocha AI.';

  @override
  String get searchLanguages => 'Chọọ asụsụ…';

  @override
  String get noLanguageMatch => 'Enweghị asụsụ dakọrọ.';

  @override
  String get aiSettings => 'Nyocha AI';

  @override
  String get aiLength => 'Ogologo';

  @override
  String get aiDepthBrief => 'Nkenke';

  @override
  String get aiDepthStandard => 'Ọkọlọtọ';

  @override
  String get aiDepthDeep => 'Miri emi';

  @override
  String get aiDepthBriefDesc => 'Isi ihe, ngwa ngwa.';

  @override
  String get aiDepthStandardDesc => 'Nkọwa zuru ezu nwere akụkụ niile.';

  @override
  String get aiDepthDeepDesc =>
      'Ọchụchọ web karịa, ntụnyere ya na ụlọ ọrụ ndị yiri ya na nkọwa miri emi karịa.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Ihe dị ka okwu $min–$max';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'na-eji nyocha $count',
      one: 'na-eji nyocha 1',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Ogo onye na-agụ';

  @override
  String get aiReaderBeginner => 'Onye mbido';

  @override
  String get aiReaderExperienced => 'Onye nwere ahụmahụ';

  @override
  String get aiReaderBeginnerDesc =>
      'Asụsụ dị mfe; a na-akọwa okwu ọkachamara ọ bụla.';

  @override
  String get aiReaderExperiencedDesc =>
      'Ederede jupụtara n\'ozi, nwere okwu ego a na-ejikarị.';

  @override
  String get aiCounterArgument => 'Arụmụka megidere kachasị ike';

  @override
  String get aiCounterArgumentDesc =>
      'Nchịkọta ahụ na-ejedebe mgbe niile n\'arụmụka kachasị mma megide nkwubi okwu ya.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ruo ọchụchọ web $count kwa nyocha n\'atụmatụ gị',
      one: 'Ruo ọchụchọ web 1 kwa nyocha n\'atụmatụ gị',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Ogologo Ọkọlọtọ dịka atụmatụ si dị: Nkịtị $normal, Pro $pro, Max $max, Ultra $ultra. Nkenke na-eji 2 belatara, Miri emi 2 karịa.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ruo ọchụchọ web $count',
      one: 'ruo ọchụchọ web 1',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ọchụchọ web $count kwa nyocha',
      one: 'Ọchụchọ web 1 kwa nyocha',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Ogologo a chọrọ nyocha $needed, mana naanị $left fọdụrụ. Họrọ ogologo dị mkpụmkpụ na Ntọala ma ọ bụ nweta nyocha ndị ọzọ.';
  }

  @override
  String get outlookMarketMood => 'Mmetụta ahịa';

  @override
  String get moodVeryPessimistic => 'Enweghị olileanya nke ukwuu';

  @override
  String get moodPessimistic => 'Enweghị olileanya';

  @override
  String get moodNeutral => 'N\'etiti';

  @override
  String get moodOptimistic => 'Nwere olileanya';

  @override
  String get moodVeryOptimistic => 'Nwere olileanya nke ukwuu';

  @override
  String get scenarioBull => 'Ọnọdụ ịrị elu';

  @override
  String get scenarioBase => 'Ọnọdụ ntọala';

  @override
  String get scenarioBear => 'Ọnọdụ ịda ala';

  @override
  String outlookCurrentPrice(String price) {
    return 'Ọnụahịa ugbu a: $price';
  }

  @override
  String get outlookKeyLevels => 'Ogo ndị dị mkpa';

  @override
  String get keyLevelSupport => 'Nkwado';

  @override
  String get keyLevelResistance => 'Mgbochi';

  @override
  String get keyLevelAnchor => 'Ntụaka';

  @override
  String get upcomingEvents => 'Ihe omume na-abịa';

  @override
  String get outlookChartNote =>
      'Ndị a bụ oke atụmatụ; ohere ndị ahụ bụ ntụle nkịtị, ọ bụghị amụma.';

  @override
  String get accountTitle => 'Akaụntụ';

  @override
  String get signIn => 'Banye';

  @override
  String get signOut => 'Pụọ';

  @override
  String get notSignedIn => 'Ịbanyeghị';

  @override
  String get accountBenefit =>
      'Banye ka ndenye aha gị rụọ ọrụ na ngwaọrụ gị niile.';

  @override
  String get accountSyncedNote =>
      'Ndenye aha gị na nyocha fọdụrụ bụ otu na ngwaọrụ ọ bụla.';

  @override
  String get signInTitle => 'Banye na WhatStock';

  @override
  String get emailLabel => 'Adreesị email';

  @override
  String get continueWithEmail => 'Gaa n\'ihu na email';

  @override
  String codeSentTo(String email) {
    return 'Anyị zigara koodu ọnụọgụ 6 na $email. Ọ dị irè maka nkeji 10.';
  }

  @override
  String get codeLabel => 'Koodu mbanye';

  @override
  String get resendCode => 'Zipu koodu ọhụrụ';

  @override
  String get useDifferentEmail => 'Jiri email ọzọ';

  @override
  String get errInvalidCode => 'Koodu ahụ ezighi ezi ma ọ bụ oge ya agafeela.';

  @override
  String get errInvalidEmail => 'Biko tinye adreesị email ziri ezi.';

  @override
  String get errSignInFailed =>
      'Mbanye agaghị nke ọma. Lelee njikọ gị wee nwaa ọzọ.';

  @override
  String get checkoutWaiting =>
      'Mezue ịkwụ ụgwọ n\'ihe nchọgharị gị. App ahụ ga-emelite onwe ya mgbe ọ gwụrụ.';

  @override
  String get paymentViaStripe =>
      'Ịkwụ ụgwọ echekwara n\'ihe nchọgharị gị site na Stripe. Kagbuo n\'oge ọ bụla.';

  @override
  String get paymentViaStore =>
      'A na-akwụ ụgwọ site n\'akaụntụ App Store ma ọ bụ Google Play gị. Kagbuo n\'oge ọ bụla na ntọala ụlọ ahịa gị.';

  @override
  String get keySpace => 'Oghere';

  @override
  String get doubleOptionTitle => 'Pịa Option ugboro abụọ';

  @override
  String get doubleOptionSubtitle =>
      'Ịpị igodo Option ugboro abụọ ngwa ngwa na-akpọkwa WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Ka ọ rụọ ọrụ n\'app ndị ọzọ kwa, kwe WhatStock na System Settings → Privacy & Security → Input Monitoring, wee mepeghachi app ahụ.';

  @override
  String get openSystemSettings => 'Mepee System Settings';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Pịa $shortcut ma ọ bụ pịa Option ugboro abụọ ebe ọ bụla ka ị kpọọ WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Kacha ga-eme';

  @override
  String get longTermToday => 'Taa';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: 'afọ $years',
      one: 'afọ 1',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range kwa afọ';
  }

  @override
  String longTermLikely(String price) {
    return 'kacha ga-eme: $price';
  }

  @override
  String get confidenceLow => 'Ịdị n\'aka dị ala';

  @override
  String get confidenceMedium => 'Ịdị n\'aka nọ n\'etiti';

  @override
  String get confidenceHigh => 'Ịdị n\'aka dị elu';

  @override
  String get longTermNote =>
      'Oke ogologo oge dabere n\'echiche ndị e kwuru, ha na-agbasawanye ka oge na-aga. Ọnụahịa agụnyeghị dividend. Ntụle nkịtị, ọ bụghị amụma.';

  @override
  String get portfolio => 'Portfolio';

  @override
  String get portfolioEmpty =>
      'Ọ dịbeghị ihe ebe a. Mepee stock ma pịa “Tinye na portfolio” ka i soro ihe ị nwere.';

  @override
  String get portfolioLocalNote =>
      'E chekwara ya naanị na ngwaọrụ a. A na-agbanwe ngụkọta site n\'ọnụego ntụaka ECB; ọnụahịa nwere ike igbu oge.';

  @override
  String get addToPortfolio => 'Tinye na portfolio';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Tinye $symbol';
  }

  @override
  String get portfolioQuantity => 'Ọnụ ọgụgụ shares';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Ọnụahịa kwa share ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Ụbọchị ịzụ';

  @override
  String get portfolioAdd => 'Tinye';

  @override
  String get portfolioInvalidNumber => 'Tinye ọnụọgụ karịrị efu.';

  @override
  String portfolioAdded(String symbol) {
    return 'Etinyela $symbol na portfolio gị.';
  }

  @override
  String get portfolioTotalValue => 'Ngụkọta uru';

  @override
  String get portfolioToday => 'Taa';

  @override
  String get portfolioGainLoss => 'Uru/mfu';

  @override
  String get portfolioInvested => 'Ego etinyere';

  @override
  String get portfolioAllocation => 'Nkesa';

  @override
  String get portfolioPositions => 'Ihe ndị ị nwere';

  @override
  String portfolioAvgCost(String price) {
    return 'nkezi ọnụahịa $price';
  }

  @override
  String get portfolioYourPosition => 'Ihe ị nwere na ya';

  @override
  String get portfolioPurchases => 'Ihe ị zụrụ';

  @override
  String get portfolioRemove => 'Wepụ';

  @override
  String get portfolioExcluded =>
      'Ihe ndị na-enweghị ọnụahịa ma ọ bụ ọnụego agụnyeghị na ngụkọta.';

  @override
  String get priceAlerts => 'Ọkwa ọnụahịa';

  @override
  String get setPriceAlert => 'Debe ọkwa ọnụahịa';

  @override
  String alertDialogTitle(String symbol) {
    return 'Ọkwa ọnụahịa · $symbol';
  }

  @override
  String get alertKindAbove => 'Rịgoro karịa';

  @override
  String get alertKindBelow => 'Dara n\'okpuru';

  @override
  String get alertKindMove => 'Gbanwere nke ukwuu n\'ụbọchị';

  @override
  String alertTargetPrice(String currency) {
    return 'Ọnụahịa ($currency)';
  }

  @override
  String get alertMovePercent => 'Mgbanwe kwa ụbọchị (%)';

  @override
  String get alertAlreadyMet => 'Ọnụahịa agafeela ogo a.';

  @override
  String get alertSave => 'Debe ọkwa';

  @override
  String alertCreated(String symbol) {
    return 'Edobela ọkwa maka $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Enwebeghị ọkwa ọnụahịa. Mepee stock ma pịa mgbịrịgba iji debe otu.';

  @override
  String get alertsNote =>
      'A na-elele ọkwa kwa nkeji 5 mgbe WhatStock na-arụ ọrụ. Na kọmputa, ọ na-anọgide na-arụ ọrụ n\'ogwe menu ma ọ bụ tray; na ekwentị, ugbu a ọkwa na-abịa naanị mgbe app ahụ mepere emepe.';

  @override
  String alertDescAbove(String price) {
    return 'Karịa $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'N\'okpuru $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Mgbanwe kwa ụbọchị ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Ọ dara ụda $date na $price';
  }

  @override
  String get alertRearm => 'Mee ka ọ rụọ ọzọ';

  @override
  String get alertDelete => 'Hichapụ';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol rịgoro karịa $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol dara n\'okpuru $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol gbanwere $percent taa';
  }

  @override
  String alertHitBody(String price) {
    return 'Ọnụahịa ugbu a: $price';
  }

  @override
  String get alertOpen => 'Mepee';

  @override
  String get keepInTrayTitle => 'Nọgide na-arụ ọrụ mgbe emechiri window';

  @override
  String get keepInTraySubtitle =>
      'WhatStock na-anọ n\'ogwe menu ma ọ bụ tray, ka ụzọ mkpirisi na ọkwa ọnụahịa nọgide na-arụ ọrụ.';

  @override
  String get termsOfUse => 'Usoro Ojiji';

  @override
  String get privacyPolicy => 'Iwu Nzuzo';

  @override
  String get subscriptionLegal =>
      'Ndenye aha na-emeghari onwe ya kwa ọnwa ruo mgbe ị kagbuo ya. Site n\'idenye aha, ị nabatara Usoro Ojiji na Iwu Nzuzo.';

  @override
  String get deleteAccount => 'Hichapụ akaụntụ';

  @override
  String get deleteAccountTitle => 'Ị chọrọ ihichapụ akaụntụ gị?';

  @override
  String get deleteAccountBody =>
      'A ga-ehichapụ akaụntụ gị na ihe niile echekwara na sava anyị (email, oke, ojiji) kpamkpam, nyocha ndị ị jibeghị ga-efukwa. Ndenye aha akwụrụ ụgwọ ya n\'ihe nchọgharị ka a ga-akagbu ozugbo; ndenye aha App Store ma ọ bụ Google Play ka a ga-akagbu na ntọala ụlọ ahịa ahụ.';

  @override
  String get deleteLocalData =>
      'Hichapụkwa data dị na ngwaọrụ a (portfolio, ọkwa, ọkacha mmasị, akụkọ ihe mere, nyocha echekwara)';

  @override
  String get deleteAccountConfirm => 'Hichapụ kpamkpam';

  @override
  String get accountDeleted => 'Ehichapụla akaụntụ gị.';

  @override
  String get errDeleteAccount =>
      'Enweghị ike ihichapụ akaụntụ ahụ. Lelee njikọ gị wee nwaa ọzọ.';

  @override
  String get aiTrialBriefNote =>
      'Nyocha nnwale dị nkenke, a na-ejikwa ụdị AI dị ọsọ karịa eme ha. Site n\'atụmatụ, ị na-enweta AI anyị kacha sie ike, ọchụchọ web karịa, yana ogologo Ọkọlọtọ na Miri emi.';

  @override
  String get billingMonthly => 'Kwa ọnwa';

  @override
  String get billingYearly => 'Kwa afọ';

  @override
  String get yearlyDiscount => 'Ọnwa 2 n\'efu';

  @override
  String get perYear => '/ afọ';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price kwa ọnwa';
  }

  @override
  String get subscriptionLegalYearly =>
      'Ndenye aha nke afọ na-emeghari onwe ya kwa afọ ruo mgbe ị kagbuo ya. Site n\'idenye aha, ị nabatara Usoro Ojiji na Iwu Nzuzo.';

  @override
  String get myAnalyses => 'Nyocha m';

  @override
  String get navAlerts => 'Ọkwa';

  @override
  String get inviteTitle => 'Nlele mbụ emechiri emechi';

  @override
  String get inviteBody =>
      'Ugbu a, WhatStock dị naanị site na òkù. Tinye koodu òkù i nwetara.';

  @override
  String get inviteCodeLabel => 'Koodu òkù';

  @override
  String get inviteContinue => 'Gaa n\'ihu';

  @override
  String get inviteInvalid => 'Koodu òkù a ezighi ezi.';

  @override
  String get inviteExpired =>
      'Oge òkù a agafeela. Rịọ onye kpọrọ gị òkù ka o nye gị koodu ọhụrụ.';

  @override
  String get inviteDeviceLimit =>
      'A na-eji koodu òkù a na ọnụ ọgụgụ ngwaọrụ kachasị elu e kwere.';

  @override
  String get previewConfidential => 'Nlele mbụ nzuzo';

  @override
  String get errPreviewDailyLimit =>
      'Oke nyocha nke taa maka nlele mbụ a agwụla. Nwaa ọzọ echi.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'elekere $count gara aga',
      one: 'elekere 1 gara aga',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ụbọchị $count gara aga',
      one: 'ụbọchị 1 gara aga',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Melite nyocha a?';

  @override
  String staleBody(String age) {
    return 'E mere nyocha a $age. Ọnụahịa, akụkọ na nsonaazụ nwere ike ịgbanwela kemgbe ahụ.';
  }

  @override
  String get staleKeep => 'Gosi nke mbụ';

  @override
  String get staleRefresh => 'Mepụta nke ọhụrụ';

  @override
  String seeAll(int count) {
    return 'Hụ ha niile ($count)';
  }

  @override
  String get searchAnalyses => 'Chọọ na nyocha gị';

  @override
  String get deleteAnalysis => 'Hichapụ';

  @override
  String analysisDeleted(String symbol) {
    return 'E hichapụla nyocha $symbol';
  }

  @override
  String get keyLevelAlertHint =>
      'Pịa otu ogo ka ị nweta ọkwa mgbe ọnụahịa ruru ya.';

  @override
  String get shareAnalysisTitle => 'Kesaa nyocha';

  @override
  String get shareAsImage => 'Kesaa dị ka foto';

  @override
  String get shareAsText => 'Kesaa dị ka ederede';

  @override
  String get shareCardFooter => 'E ji WhatStock mee ya';

  @override
  String get shareCardDisclaimer => 'Nyocha AI · ọ bụghị ndụmọdụ itinye ego';
}
