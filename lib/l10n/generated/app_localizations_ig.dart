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

  @override
  String get referralTitle => 'Kpọọ ndị enyi';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'nyocha mgbakwunye $count',
      one: 'nyocha mgbakwunye 1',
    );
    return 'Kesaa koodu gị. Enyi gị ga-enweta $_temp0 ozugbo, ị ga-enwetakwa otu ahụ mgbe o mechara nyocha mbụ ya.';
  }

  @override
  String get referralYourCode => 'Koodu gị';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Ndị a kpọrọ: $invited · Ndị e ji nweta onyinye: $rewarded';
  }

  @override
  String get referralHaveCode => 'Ị nwere koodu sitere n\'aka enyi?';

  @override
  String get referralRedeem => 'Jiri ya';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Agbakwunyere nyocha mgbakwunye $count. Nnọọ!',
      one: 'Agbakwunyere nyocha mgbakwunye 1. Nnọọ!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown => 'Koodu a adịghị. Lelee ya ma nwaa ọzọ.';

  @override
  String get referralErrOwn => 'Ị nweghị ike iji koodu nke gị.';

  @override
  String get referralErrAlready => 'Ị jirela koodu otu enyi gị.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'nyocha mgbakwunye $count',
      one: 'nyocha mgbakwunye 1',
    );
    return 'Ana m eji WhatStock enyocha stock: see foto stock, AI ga-akọwakwa ya. Site na koodu m $code ị ga-enweta $_temp0.';
  }

  @override
  String get referralCopied => 'Edepụtagharala koodu';

  @override
  String get onboardTitle1 => 'See foto nke stock';

  @override
  String get onboardBody1 =>
      'Ihuenyo ngwa broker, akwụkwọ akụkọ ma ọ bụ akara ụlọ ọrụ zuru ezu: WhatStock ga-amata stock ahụ ma gosi gị ọnụahịa ya, eserese ya na ọnụọgụgụ ndị dị mkpa.';

  @override
  String get onboardTitle2 => 'Ghọta ya n\'ime nkeji ole na ole';

  @override
  String get onboardBody2 =>
      'Nyocha AI na-akọwa ihe na-akpali stock ahụ, ihe egwu dị na ya, uru ya na ọnọdụ atọ nke ebe ọnụahịa ya nwere ike ịga, ya na isi iyi ozi na n\'asụsụ gị.';

  @override
  String get onboardTitle3 => 'Nọrọ na-amata ihe niile';

  @override
  String get onboardBody3 =>
      'Ọkacha mmasị, portfolio gị na ọkwa ọnụahịa na-eme ka ị mara ihe na-eme. Nyocha gị na-anọ na ngwaọrụ gị, dị njikere ka i meghee ha ọzọ.';

  @override
  String get onboardNext => 'Na-esote';

  @override
  String get onboardStart => 'Malite';

  @override
  String get onboardSkip => 'Wụfee';

  @override
  String changesTitle(String date) {
    return 'Kemgbe nyocha gara aga ($date)';
  }

  @override
  String get changesPrice => 'Ọnụahịa';

  @override
  String get changesNoMajor => 'Atụmanya agbanwebeghị nke ukwuu.';

  @override
  String get changesPreviousSummary => 'Nchịkọta gara aga';

  @override
  String get telemetryTitle => 'Nyere aka ime ka WhatStock ka mma';

  @override
  String get telemetryBody =>
      'Kesaa ọnụ ọgụgụ ojiji na-enweghị aha na akụkọ mkpọka: atụmatụ ndị a na-eji na ihe mebiri emebi. Ọ dịghị mgbe anyị na-eziga stọk gị, nyocha gị ma ọ bụ data nkeonwe gị. Ị nwere ike ịgbanwe nke a mgbe ọ bụla na Ntọala.';

  @override
  String get telemetryAllow => 'Kwe';

  @override
  String get telemetryDecline => 'Mba, daalụ';

  @override
  String get telemetrySetting => 'Ọnụ ọgụgụ na-enweghị aha na akụkọ mkpọka';

  @override
  String get telemetrySettingHint =>
      'Ugboro ole a na-eji atụmatụ na akụkọ njehie, na-enweghị data nkeonwe ma ọ bụ ọdịnaya nke ọchụchọ na nyocha gị.';

  @override
  String get askButton => 'Jụọ ajụjụ gbasara nyocha a';

  @override
  String askTitle(String symbol) {
    return 'Ajụjụ gbasara $symbol';
  }

  @override
  String get askIntro =>
      'Jụọ ihe ọ bụla gbasara nyocha a: ihe otu ihe egwu pụtara, ihe nwere ike ịgbanwe ọdịnihu ya, otu e si nweta otu ọnụọgụ. Azịza ndị a dabere na nyocha a, ha abụghịkwa ndụmọdụ itinye ego.';

  @override
  String get askHint => 'Jụọ ajụjụ…';

  @override
  String get askSend => 'Ziga';

  @override
  String get askThinking => 'Na-eche echiche…';

  @override
  String get askSuggest1 => 'Gịnị bụ ihe egwu kacha ukwuu?';

  @override
  String get askSuggest2 => 'Gịnị nwere ike ịgbanwe ọdịnihu ya?';

  @override
  String get askSuggest3 => 'Kọwaa ya n\'ụzọ dị mfe';

  @override
  String get askMaxReached =>
      'Nke ahụ bụ ajụjụ ikpeazụ maka nyocha a. Mepụta nyocha ọhụrụ ka ị jụọ ọzọ.';

  @override
  String get errAskLimit => 'Ị ruola oke ajụjụ nke taa. Nwaa ọzọ echi.';

  @override
  String get eventTomorrow => 'Echi';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'n\'ime ụbọchị $days',
      one: 'n\'ime ụbọchị 1',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Nsonaazụ nkeji ọnwa atọ';

  @override
  String get eventBeforeOpen => 'tupu ahịa emepee';

  @override
  String get eventAfterClose => 'mgbe ahịa mechiri';

  @override
  String eventEpsEstimate(String value) {
    return 'Atụmatụ EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Site na nyocha gị';

  @override
  String get eventsHint =>
      'Ụbọchị nsonaazụ nke ọkacha mmasị gị na stock dị na portfolio gị maka ụbọchị 90 na-abịa, na ihe omume nwere ụbọchị nyocha gị gosiri.';

  @override
  String get eventsEmpty =>
      'Enweghị ihe omume nwere ụbọchị n\'ime ụbọchị 90 na-abịa. Tinye ọkacha mmasị ma ọ bụ stock na portfolio ka ị hụ ụbọchị nsonaazụ ha ebe a.';

  @override
  String get compareTitle => 'Tụnyere';

  @override
  String get compareAdd => 'Tinye stock';

  @override
  String get compareRemove => 'Wepụ';

  @override
  String get compareTickerHint => 'Ticker, dịka MSFT';

  @override
  String get compareHint =>
      'Ọnụ ọgụgụ ndị dị mkpa n\'akụkụ ibe ha; e gosipụtara uru kacha mma n\'ahịrị ọ bụla. Ego dị n\'ụdị ego nke stock ọ bụla.';

  @override
  String get compareNoAnalysis => 'Enweghị nyocha ugbu a';

  @override
  String get portfolioDividends => 'Dividend kwa afọ';

  @override
  String portfolioDividendYield(String percent) {
    return 'Mkpụrụ $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Dividend a na-atụ anya kwa afọ dabere na dividend a kwụrụ n\'ime ọnwa 12 gara aga; enweghị nkwa na a ga-akwụ ụgwọ n\'ọdịnihu.';

  @override
  String positionDividend(String amount) {
    return 'Dividend: $amount kwa afọ';
  }

  @override
  String get chartAvgCost => 'Nkezi gị';

  @override
  String get chartAlertLevel => 'Ọkwa';

  @override
  String get marketsToday => 'Ahịa taa';

  @override
  String get notesTitle => 'Ndetu m';

  @override
  String get notesHint =>
      'Gịnị mere i ji zụta ya, gịnị ka ị na-eleba anya, gịnị ga-eme ka i ree ya?';

  @override
  String get notesInfo =>
      'E chekwara ya naanị na ngwaọrụ a. Nyocha AI na-atụle ndetu gị.';

  @override
  String notesSaved(String date) {
    return 'Echekwara $date';
  }

  @override
  String get peersTitle => 'Ụlọ ọrụ yiri ya';

  @override
  String get portfolioExport => 'Bupụ ka CSV';

  @override
  String get portfolioImport => 'Bubata site na CSV';

  @override
  String get portfolioImportHint =>
      'Mado otu ihe ị zụrụ n\'ahịrị ọ bụla: akara ticker, ọnụ ọgụgụ, ọnụ ahịa, ego, ụbọchị (YYYY-MM-DD). Enwere ike iji rịkọm, semikọlọn ma ọ bụ tab kewaa kọlụm; ahịrị isiokwu bụ nhọrọ.';

  @override
  String get portfolioImportButton => 'Bubata';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Agbakwunyere ihe ịzụrụ $count',
      one: 'Agbakwunyere ihe ịzụrụ 1',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Awụfere ahịrị $count',
      one: 'Awụfere ahịrị 1',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'A na-emekọrịta portfolio, ọkacha mmasị, ọkwa ọnụahịa na ndetu gị na ngwaọrụ gị niile.';

  @override
  String syncLast(String time) {
    return 'Mmekọrịta ikpeazụ: $time';
  }

  @override
  String get syncNow => 'Mekọrịta ugbu a';

  @override
  String get syncFailed => 'Mmekọrịta adaghị. Ọ ga-anwa ọzọ na-akpaghị aka.';

  @override
  String get alertEmailTitle => 'Email mgbe ọkwa malitere';

  @override
  String get alertEmailOn =>
      'Anyị na-elele ọkwa gị kwa nkeji ole na ole ma zitere gị email, ọbụlagodi mgbe emechiri app ahụ.';

  @override
  String get alertEmailSignIn =>
      'Jiri email gị banye na Ntọala ka ị nweta ọkwa site na email, ọbụlagodi mgbe emechiri app ahụ.';

  @override
  String get portfolioHistory => 'Uru ka oge na-aga';

  @override
  String get portfolioReviewTitle => 'Nyocha portfolio AI';

  @override
  String get portfolioReviewIntro =>
      'AI na-enyocha portfolio gị niile: otú ego gị si gbakọta n\'otu ebe, ngalaba na ego mba ọzọ ị dabere na ha, ihe ize ndụ ndị stock gị nwekọrọ, na dividend. Na-eji nyocha 1.';

  @override
  String get portfolioReviewButton => 'Nyochaa portfolio m';

  @override
  String get portfolioReviewAgain => 'Nyochaa ọzọ';

  @override
  String get portfolioReviewWorking => 'Na-enyocha portfolio gị…';

  @override
  String get digestTitle => 'Nchịkọta izu ụka site na email';

  @override
  String get digestHint =>
      'Mọnde ọ bụla: otú ọkacha mmasị gị na portfolio gị si gaa n\'izu gara aga, na ụbọchị nsonaazụ ha na-abịa.';

  @override
  String get benchmarkTitle => 'Atụnyere S&P 500';

  @override
  String get benchmarkYours => 'Ihe ị zụrụ';

  @override
  String get benchmarkIndex => 'Otu ego ahụ na S&P 500';

  @override
  String benchmarkAhead(String points) {
    return 'Ka ndeksi mma site na pasentị $points';
  }

  @override
  String benchmarkBehind(String points) {
    return 'Nọ n\'azụ ndeksi site na pasentị $points';
  }

  @override
  String get benchmarkHint =>
      'Dị ka a ga-asị na etinyere ego nke ọ bụla ịzụrụ n\'ego ndeksi S&P 500 n\'otu ụbọchị ahụ. Etinyeghị dividend; uru gara aga anaghị ebu amụma uru ga-abịa.';

  @override
  String get portfolioSell => 'Ree';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Ree $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Ọnụahịa ire kwa share ($currency)';
  }

  @override
  String get portfolioSellDate => 'Ụbọchị ire';

  @override
  String get portfolioSellAll => 'Ha niile';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'I nwere $quantity';
  }

  @override
  String get portfolioSold => 'E rere';

  @override
  String get portfolioRealized => 'Uru enwetara';

  @override
  String get portfolioClosed => 'Ihe ndị ị rechara';

  @override
  String get portfolioClosedNote => 'E rechaala share niile';

  @override
  String get portfolioTransactions => 'Azụmahịa';

  @override
  String get portfolioRealizedByYear => 'Uru enwetara kwa afọ';

  @override
  String get portfolioRealizedHint =>
      'A na-ebu ụzọ jikọta ire na ihe ndị ochie ị zụrụ (FIFO), gbanwee ya n\'ọnụego mgbanwe nke taa. Maka akụkọ ụtụ isi gị, jiri nkọwa ego onye ọrụ ahịa gị (broker).';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Nsonaazụ ọhụrụ nke nkeji ọnwa atọ apụtala kemgbe e mere nyocha a ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Nsonaazụ ọhụrụ';

  @override
  String get portfolioImportBrokers =>
      'A na-amatakwa mbupụ sitere na Revolut, Trading 212 na Interactive Brokers, ya na ihe e rere; a na-awụfe dividend na ego e tinyere.';

  @override
  String get portfolioImportFile => 'Họrọ faịlụ';

  @override
  String offlineBanner(String time) {
    return 'Enweghị njikọ – a na-egosi data ikpeazụ echekwara ($time).';
  }

  @override
  String get glossMarketCap =>
      'Ego ụlọ ọrụ ahụ dum bara n\'ahịa stock: ọnụahịa otu share × ọnụọgụ shares.';

  @override
  String get glossSharesOutstanding =>
      'Ọnụọgụ shares ụlọ ọrụ ahụ wepụtara. Ọ bụrụ na ọ rịọ elu, share ọ bụla na-enwe obere òkè; ịzụghachi shares (buyback) na-ebelata ya.';

  @override
  String get glossPeTrailing =>
      'Ọnụahịa ÷ uru kwa share n\'ime ọnwa 12 gara aga: afọ ole nke uru ugbu a ka ị na-akwụ ụgwọ ya. Nke dị ala dị ọnụ ala, mana ụlọ ọrụ na-eto ngwa ngwa na-enwekarị P/E dị elu.';

  @override
  String get glossPeForward =>
      'Dị ka P/E, mana jiri uru ndị nyocha na-atụ anya n\'ọnwa 12 na-abịa. Ọ bụrụ na ọ dị ala karịa P/E gara aga, a na-atụ anya na uru ga-eto.';

  @override
  String get glossPb =>
      'Ọnụahịa ÷ uru akwụkwọ (akụ wepụ ụgwọ) kwa share. Ihe dị ka 1 pụtara na ahịa na-ahụ ụlọ ọrụ ahụ ka ihe ruru ihe o nwere n\'akwụkwọ.';

  @override
  String get glossPs =>
      'Uru ahịa ÷ ego mbata kwa afọ. Ọ bara uru maka ụlọ ọrụ nwere obere uru ma ọ bụ enweghị uru ọ bụla; tụnyere ya n\'otu ụdị ọrụ.';

  @override
  String get glossEvToFcf =>
      'Uru ụlọ ọrụ gụnyere ụgwọ (EV) ÷ ego ọ na-enweta n\'otu afọ mgbe itinye ego gasịrị. Nke dị ala pụtara na ị na-enweta ego karịa maka ọnụahịa ahụ.';

  @override
  String get glossPeg =>
      'P/E ÷ uto uru a na-atụ anya kwa afọ (%). Ihe dị ka 1 ka a na-ewekarị dị ka ihe ziri ezi; ọ na-ele P/E anya n\'ihe gbasara uto.';

  @override
  String get glossEps =>
      'Uru kwa share n\'ime ọnwa 12 gara aga. EPS na-arị elu kwa afọ bụ otu n\'ime ihe ịrịba ama kachasị ike nke ụlọ ọrụ dị mma.';

  @override
  String get glossBeta =>
      'Etu stock ahụ si agagharị na ahịa: 1 = dị ka ahịa, 1.5 = mgbagharị dị ihe dị ka 50% karịa, n\'okpuru 1 = dị jụụ karịa.';

  @override
  String get glossRevenueTtm =>
      'Ngụkọta ihe e rere n\'ime ọnwa 12 gara aga, tupu mmefu ọ bụla.';

  @override
  String get glossNetIncomeTtm =>
      'Uru fọdụrụ mgbe mmefu niile, ọmụrụ nwa na ụtụ isi gasịrị n\'ime ọnwa 12 gara aga.';

  @override
  String get glossGrossMargin =>
      'Òkè ego mbata fọdụrụ mgbe ọnụ ego ozugbo nke ngwaahịa gasịrị. Pasentị dị elu na-egosikarị ike ịkpebi ọnụahịa.';

  @override
  String get glossOperatingMargin =>
      'Òkè ego mbata fọdụrụ mgbe ọrụ azụmahịa gasịrị (ụgwọ ọnwa, ụlọ mgbazinye, mgbasa ozi), tupu ọmụrụ nwa na ụtụ isi.';

  @override
  String get glossNetMargin =>
      'Òkè ego mbata na-aghọ uru ikpeazụ. 20% pụtara na n\'ime 100 ọ bụla e rere, 20 bụ uru.';

  @override
  String get glossRoe =>
      'Uru n\'ego ndị nwe: uru kwa afọ ÷ ego ndị nwe ụlọ ọrụ. Ọ na-egosi etu ndị isi si eji ego ndị nwe shares eme ihe nke ọma; karịa ihe dị ka 15% siri ike.';

  @override
  String get glossRoa =>
      'Uru n\'akụ: uru kwa afọ ÷ ihe niile ụlọ ọrụ nwere. Tụnyere ya n\'otu ụdị ọrụ.';

  @override
  String get glossDebtToEquity =>
      'Ụgwọ ÷ ego ndị nwe. Nke dị elu pụtara ego mgbazinye karịa: ihe ize ndụ karịa mgbe ọmụrụ nwa rịrị elu ma ọ bụ azụmahịa ji nwayọ.';

  @override
  String get glossCurrentRatio =>
      'Akụ obere oge ÷ ụgwọ a ga-akwụ n\'ime otu afọ. Karịa 1 pụtara na ụlọ ọrụ ahụ nwere ike ịkwụ ụgwọ ndị dị nso.';

  @override
  String get glossRevenueGrowth =>
      'Etu ego mbata si too ma e jiri ya tụnyere afọ gara aga.';

  @override
  String get glossEpsGrowth =>
      'Etu uru kwa share si too ma e jiri ya tụnyere afọ gara aga.';

  @override
  String get glossDividendYield =>
      'Dividend kwa afọ ÷ ọnụahịa share: ego ị ga-enweta kwa afọ, dị ka pasentị nke ihe ị kwụrụ.';

  @override
  String get glossDividendPerShare =>
      'Dividend a kwụrụ n\'otu share n\'afọ gara aga.';

  @override
  String get glossPayoutRatio =>
      'Òkè uru a na-akwụ dị ka dividend. Karịa 100%, ụlọ ọrụ ahụ na-akwụ karịa ihe ọ na-enweta, nke anaghị adịgide.';

  @override
  String get glossTitle => 'Gịnị ka ọ pụtara?';

  @override
  String get watchNewsTitle => 'Akụkọ gbasara stock gị';

  @override
  String get undo => 'Weghachi';

  @override
  String get watchSort => 'Hazie';

  @override
  String get watchSortOwn => 'Usoro m';

  @override
  String get watchSortGainers => 'Ndị kacha rịa elu buru ụzọ';

  @override
  String get watchSortLosers => 'Ndị kacha daa buru ụzọ';

  @override
  String get watchSortName => 'Site na ticker (A–Z)';

  @override
  String get watchHint =>
      'Dọrọ njide ahụ iji hazie ọzọ, swaipụ n\'aka ekpe iji wepụ. Ahịrị ahụ na-egosi ụbọchị 30 gara aga.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: nyocha gị adịla njikere.';
  }

  @override
  String alertFromCost(String price) {
    return 'Site na ọnụahịa nzụta nkezi gị ($price):';
  }

  @override
  String get briefTitle => 'Taa na ngwa ahịa gị';

  @override
  String get briefButton => 'Chịkọta taa';

  @override
  String get briefHint =>
      'Nchịkọta AI dị mkpụmkpụ maka otú pọtụfoliyo gị na ndị ị hụrụ n’anya si gaa taa na ihe akụkọ ọhụrụ na-ekwu banyere ha. Ọ naghị eji nyocha.';

  @override
  String get briefRefresh => 'Melite';

  @override
  String get sectionEarnings => 'Nsonaazụ nkeji ọnwa atọ';

  @override
  String earningsNext(String date) {
    return 'Akụkọ na-esote: $date';
  }

  @override
  String get earningsExpected => 'EPS a na-atụ anya ya';

  @override
  String get earningsReported => 'EPS e kwuputara';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Ruru ma ọ bụ karịa EPS a tụrụ anya ya na $beats n\'ime nkeji ọnwa atọ $total gara aga',
      one:
          'Ruru ma ọ bụ karịa EPS a tụrụ anya ya na $beats n\'ime nkeji ọnwa atọ 1',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol ga-ewepụta nsonaazụ nkeji ọnwa atọ echi';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol na-ewepụta nsonaazụ nkeji ọnwa atọ taa';
  }

  @override
  String get earningsRemindersTitle => 'Ncheta nsonaazụ';

  @override
  String get earningsRemindersSubtitle =>
      'Ọkwa otu ụbọchị tupu òkè dị n\'ọkacha mmasị gị ma ọ bụ na pọtfolio gị ewepụta nsonaazụ nkeji ọnwa atọ';

  @override
  String addAllToFavorites(int count) {
    return 'Tinye ha niile n\'ọkacha mmasị ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Bubata site na foto ihuenyo';

  @override
  String get holdingsReading => 'Na-agụ òkè gị…';

  @override
  String get holdingsReviewTitle => 'Òkè achọtara';

  @override
  String get holdingsReviewHint =>
      'Lelee ọnụọgụ ndị a tupu ịgbakwunye ha. Ọnụahịa bụ ọnụahịa nkezi i ji zụta otu òkè, ọ bụghị ọnụahịa taa.';

  @override
  String get holdingsNoPrice => 'Enweghị ọnụahịa nkezi ịzụrụ na onyonyo a';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Gbakwunye òkè $count',
      one: 'Gbakwunye òkè 1',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Achọtaghị òkè ahịa ọ bụla na onyonyo a. Nwalee foto ihuenyo nke peeji òkè gị n\'ime ngwa onye na-ere ahịa òkè gị.';

  @override
  String get week52Range => 'Oke n\'izu 52';

  @override
  String week52BelowHigh(String percent) {
    return '$percent n\'okpuru kachasị elu n\'izu 52';
  }

  @override
  String get week52AtHigh => 'Na kachasị elu n\'izu 52';

  @override
  String get alertKindTrailing => 'Dara site n\'elu';

  @override
  String get alertTrailingPercent => 'Ọdịda site n\'elu (%)';

  @override
  String get alertTrailingHint =>
      'Ọ na-eso ọnụahịa ka ọ na-arị elu: ọ ga-agwa gị mgbe ọnụahịa dara nke a site n\'ọkwa kacha elu ya kemgbe i dobere ya.';

  @override
  String alertDescTrailing(String percent) {
    return 'Ọdịda $percent site n\'elu';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'elu kacha ruo ugbu a: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol dara $percent site n\'elu ya';
  }

  @override
  String get sectionInsiders => 'Azụmahịa ndị isi ụlọ ọrụ';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ịzụta $count',
      one: 'ịzụta 1',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ire $count',
      one: 'ire 1',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Ngụkọta: shares $shares';
  }

  @override
  String get insiderBuy => 'Zụtara';

  @override
  String get insiderSell => 'Rere';

  @override
  String get insiderHint =>
      'Ịzụta na ire n\'ahịa mepere emepe nke ndị isi na ndị nduzi mere n\'ụbọchị 90 gara aga (SEC Form 4). Anaghị agụnye iji option na shares e nyere dị ka onyinye.';

  @override
  String get insiderNone =>
      'Ọ dịghị ịzụta ma ọ bụ ire ndị isi n\'ahịa mepere emepe n\'ụbọchị 90 gara aga.';

  @override
  String get analystTrend => 'Otú echiche si gbanwee kwa ọnwa';

  @override
  String get watchListAll => 'Ha niile';

  @override
  String get watchListNew => 'Ndepụta ọhụrụ';

  @override
  String get watchListName => 'Aha ndepụta';

  @override
  String get watchListRename => 'Gbanwee aha ndepụta';

  @override
  String get watchListDelete => 'Hichapụ ndepụta';

  @override
  String get watchListAddTo => 'Tinye na ndepụta';

  @override
  String get watchListEmpty =>
      'Enweghị òkè ọ bụla na ndepụta a ka ugbu a. Pịa bọtịnụ ndepụta dị n\'akụkụ òkè iji tinye ya.';

  @override
  String get portfolioAskTitle => 'Ajụjụ gbasara portfolio gị';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'Ndabere';

  @override
  String get backupSave => 'Chekwaa ndabere';

  @override
  String get backupSaveHint =>
      'Ọkacha mmasị gị, ndepụta gị, portfolio gị, ọkwa gị na ndetu gị n\'otu faịlụ.';

  @override
  String get backupRestore => 'Weghachite site na ndabere';

  @override
  String get backupRestoreHint =>
      'Ọ na-agbakwunye ihe dị na faịlụ ahụ; ọ dịghị ihe ị nwere ugbu a a ga-ehichapụ.';

  @override
  String get backupRestored => 'Eweghachila ndabere.';

  @override
  String get backupInvalid => 'Faịlụ a abụghị ndabere WhatStock.';

  @override
  String get allocationPositions => 'Òkè';

  @override
  String get allocationSectors => 'Ngalaba';

  @override
  String get allocationCurrencies => 'Ego';

  @override
  String get compareReturn1y => 'Uru afọ 1';

  @override
  String get compareFromHigh => 'Site na kachasị elu n\'izu 52';

  @override
  String get briefAutoTitle => 'Nchịkọta kwa ụbọchị kwa ụtụtụ';

  @override
  String get briefAutoSubtitle =>
      'A na-eme “Taa na ngwa ahịa gị” na-akpaghị aka mgbe elekere 7:00 nke ụtụtụ gachara ka ngwa ahụ na-arụ ọrụ; na kọmputa, ọkwa ga-agwa gị. Ọ na-eji oke ajụjụ gị kwa ụbọchị, ọ bụghị nyocha.';

  @override
  String get targetsButton => 'Nkesa ebumnuche';

  @override
  String get targetsTitle => 'Nkesa ebumnuche';

  @override
  String get targetsHint =>
      'Debe òkè nke pọtụfoliyo nke òkè ọ bụla kwesịrị inwe. Hapụ oghere ahụ efu ma ọ bụrụ na ebumnuche adịghị. Mgbe ahụ ngwa ahụ ga-egosi ihe ị ga-azụ ma ọ bụ ree iji ruo ebe ahụ.';

  @override
  String targetsSum(String percent) {
    return 'Ngụkọta: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Zụta ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Ree ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Ọ ruru ebumnuche';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol karịrị EPS a na-atụ anya ya';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol erughị EPS a na-atụ anya ya';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'EPS e kwuputara $actual, a tụrụ anya $estimate';
  }

  @override
  String get newsExplain => 'Gịnị ka nke a pụtara?';

  @override
  String get watchAlertAll => 'Ọkwa maka nnukwu mgbanwe kwa ụbọchị';

  @override
  String get watchAlertAllHint =>
      'Ọkwa ọnụahịa maka òkè ọ bụla dị na ndepụta a: ọ ga-ada ma ọ gbanwee otu a n\'otu ụbọchị, elu ma ọ bụ ala. Ndị nwere otu ugbu a ga-edobe nke ha.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Edobere ọkwa $count',
      one: 'Edobere ọkwa 1',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Bupụ uru enwetara (CSV)';

  @override
  String get portfolioAnnualReturn => 'Uru kwa afọ';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / afọ';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Uru kwa afọ dabere n\'ego (XIRR): ọ na-atụle mgbe ị zụrụ na mgbe ị rere, ya mere ego ị tinyere mgbe e mesịrị anaghị emebi ya. A na-egosi ya ozugbo ihe mbụ ị zụrụ gbara opekata mpe otu afọ; dividend esoghị na ya.';

  @override
  String get eventsAddToCalendar => 'Tinye na kalenda (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Ọkwa pọtfolio';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Ọkwa mgbe pọtfolio gị niile gbanwere nke a n\'otu ụbọchị.';

  @override
  String get portfolioMoveAlertOff => 'Agbanyụrụ';

  @override
  String portfolioMoveUp(String percent) {
    return 'Pọtfolio gị arịgoro $percent taa';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Pọtfolio gị agbadala $percent taa';
  }

  @override
  String get whatIfTitle => 'Ọ bụrụ na i tinyere ego?';

  @override
  String get whatIfAmount => 'Ego ole';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount e tinyere $period gara aga ga-adị ugbu a';
  }

  @override
  String get whatIfNote =>
      'Dabere naanị na ọnụahịa òkè: dividend, ụgwọ ọrụ na ụtụ isi esoghị. Uru gara aga anaghị ebu amụma uru ga-abịa.';

  @override
  String get watchShare => 'Kesaa ndepụta ahụ';

  @override
  String get watchImport => 'Tinye akara ticker';

  @override
  String get watchImportHint =>
      'Mado akara ticker ndị e ji rịkọm, ohere ma ọ bụ ahịrị ọhụrụ kewaa – dịka ọmụmaatụ, ndepụta mmadụ kesaara gị.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Agbakwunyere òkè $count',
      one: 'Agbakwunyere òkè 1',
      zero: 'Enweghị òkè ọhụrụ',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Ndị kacha ukwuu buru ụzọ';

  @override
  String get positionsSortGain => 'Uru niile kacha elu buru ụzọ';

  @override
  String get positionsSortToday => 'Ndị kacha mma taa buru ụzọ';

  @override
  String get chartMyBuys => 'Ihe ị zụrụ';

  @override
  String get chartMySells => 'Ihe ị rere';

  @override
  String get shortcutsTitle => 'Ụzọ mkpirisi kiibọọdụ';

  @override
  String usMarketOpen(String time) {
    return 'Ahịa US mepere emepe · ga-emechi n\'ime $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Ahịa US mechiri emechi · ga-emeghe n\'ime $time';
  }

  @override
  String durationMinutes(int minutes) {
    return 'nkeji $minutes';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return 'awa $hours nkeji $minutes';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return 'ụbọchị $days awa $hours';
  }

  @override
  String get portfolioGoalSet => 'Tọọ ebumnuche';

  @override
  String get portfolioGoalTitle => 'Ebumnuche portfolio';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · Ebumnuche: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Emezuru ebumnuche: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Wepụ ebumnuche';

  @override
  String get alertEdit => 'Dezie ọkwa';

  @override
  String get positionOpenLots => 'Ka nọ n\'aka gị (ndị ochie mbụ)';

  @override
  String get lotRemoved => 'E hichapụla azụmahịa ahụ';

  @override
  String get alertDeleted => 'E hichapụla ọkwa';

  @override
  String get alertsClearTriggered => 'Hichapụ ọkwa ndị rụrụ ọrụ';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'E hichapụla ọkwa $count',
      one: 'E hichapụla ọkwa 1',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Ibe mbụ';

  @override
  String get allocationCountries => 'Mba';

  @override
  String get newsExplainNoteResearch =>
      'Nkọwa AI: ọ na-achọ eziokwu n\'ịntanetị, mepee isiokwu ahụ ma tụlee ma ebe e si nweta ya bụ nke a pụrụ ịtụkwasị obi. Ọ bụghị ndụmọdụ itinye ego. Ọ na-eji oke ajụjụ gị kwa ụbọchị, ọ bụghị nyocha.';

  @override
  String get sourceOfficial => 'Nke ikike';

  @override
  String get sourcePressRelease => 'Ọkwa';

  @override
  String get sourceMajorNews => 'Mgbasaozi ukwu';

  @override
  String get sourceOpinion => 'Echiche';

  @override
  String get earningsSummaryButton => 'Gịnị dị na akụkọ kacha ọhụrụ?';

  @override
  String get earningsSummaryNote =>
      'Nchịkọta AI nke ọkwa nsonaazụ ụlọ ọrụ ahụ na akụkọ ndị nta akụkọ ọ chọtara n\'ịntanetị. Ọ bụghị ndụmọdụ itinye ego. Ọ na-eji oke ajụjụ gị kwa ụbọchị, ọ bụghị nyocha.';

  @override
  String get compareLastSurprise => 'EPS nkeji gara aga vs. atụrụ anya';

  @override
  String get compareNextReport => 'Akụkọ na-esote';

  @override
  String get resolvingDescription => 'Na-achọpụta stock ị bu n\'uche…';

  @override
  String get instrumentTitle => 'Maka ngwa ego a';

  @override
  String get instrumentHint =>
      'Enweghị profaịlụ ụlọ ọrụ maka akara a – ọ nwere ike ịbụ ETF, fund ma ọ bụ depositary receipt. Jụọ AI ihe ọ bụ, ihe dị n\'ime ya na ego ole ọ na-efu.';

  @override
  String get instrumentAsk => 'Gịnị bụ nke a?';

  @override
  String get instrumentNote =>
      'Nkọwa AI sitere na peeji fund nke onye nyere ya na saịtị ego ndị ọ chọtara n\'ịntanetị. Ọ bụghị ndụmọdụ itinye ego. Ọ na-eji oke ajụjụ gị kwa ụbọchị, ọ bụghị nyocha.';

  @override
  String suggestAskAi(String query) {
    return 'Jụọ AI: “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Enweghị ọnụahịa ugbu a maka $symbols.';
  }

  @override
  String get eventsRecentResults => 'Nsonaazụ e kwuputara nso nso a';

  @override
  String get saveToNotes => 'Chekwaa na ndetu m';

  @override
  String get savedToNotes => 'Echekwara na ndetu gị';

  @override
  String get portfolioDividendsReceived => 'Nkesa uru enwetara';

  @override
  String get portfolioDividendsThisYear => 'Afọ a';

  @override
  String get portfolioDividendsAllTime => 'Oge niile';

  @override
  String get portfolioAddDividend => 'Tinye nkesa uru';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Ego enwetara ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Ụbọchị ịkwụ ụgwọ';

  @override
  String get portfolioDividendsEmpty =>
      'Edebanyebeghị nkesa uru ọ bụla. Tinye ha n\'aka, ma ọ bụ bubata export nke broker gị – a na-ewerekwa ahịrị nkesa uru ya.';

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Etinyere nkesa uru $count',
      one: 'Etinyere nkesa uru 1',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Bupụ nkesa uru (CSV)';

  @override
  String get portfolioDividendDeleted => 'Ehichapụla nkesa uru';

  @override
  String get portfolioDividendsHint =>
      'Ego ndị ahụ dị ka ha si bata n\'akaụntụ gị, n\'ego e ji kwụọ; a na-agbanwe mkpokọta na ọnụ ahịa taa. Maka nkwupụta ụtụ isi gị, jiri akwụkwọ nkọwa nke broker gị.';

  @override
  String get awayTitle => 'Mgbe ị nọghị';

  @override
  String awaySince(String when) {
    return 'Kemgbe $when';
  }

  @override
  String get awayQuiet => 'Ọ dịghị ihe gbanwere nke ukwuu.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ọkwa $count dara',
      one: 'Ọkwa 1 dara',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Kwupụtara nsonaazụ: $symbols';
  }

  @override
  String get moveWhyButton => 'Gịnị mere ọ na-agbanwe taa?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent taa';
  }

  @override
  String get moveWhyNote =>
      'Nkọwa AI sitere n\'akụkọ taa a chọtara na weebụ; ezigbo ihe kpatara ya nwere ike bụrụ ihe a na-amaghị ma ọ bụ dị iche. Ọ bụghị ndụmọdụ itinye ego. Ọ na-eji oke ajụjụ gị kwa ụbọchị, ọ bụghị nyocha.';

  @override
  String get sectionTechnical => 'Ihe onyonyo teknikal';

  @override
  String get labelSma50 => 'Nkezi ụbọchị 50';

  @override
  String get labelSma200 => 'Nkezi ụbọchị 200';

  @override
  String get labelRsi => 'RSI (ụbọchị 14)';

  @override
  String get labelVolatility30 => 'Mgbanwe ọnụahịa (ụbọchị 30)';

  @override
  String techAbove(String percent) {
    return '$percent n\'elu';
  }

  @override
  String techBelow(String percent) {
    return '$percent n\'okpuru';
  }

  @override
  String get techOverbought => 'azụrụ ya karịa';

  @override
  String get techOversold => 'erela ya karịa';

  @override
  String get techNeutral => 'n\'etiti';

  @override
  String get techGoldenCross =>
      'Nkezi ụbọchị 50 dị n\'elu nkezi ụbọchị 200 – dị ka nkọwa ochie si dị, ọ bụ ụzọ ịrị elu.';

  @override
  String get techDeathCross =>
      'Nkezi ụbọchị 50 dị n\'okpuru nkezi ụbọchị 200 – dị ka nkọwa ochie si dị, ọ bụ ụzọ ịda ala.';

  @override
  String get glossSma50 =>
      'Nkezi ọnụahịa mmechi nke ụbọchị ahịa 50 gara aga. A na-ahụkarị ọnụahịa dị n\'elu ya dị ka ike nwa oge, nke dị n\'okpuru ya dị ka adịghị ike.';

  @override
  String get glossSma200 =>
      'Nkezi ọnụahịa mmechi nke ụbọchị ahịa 200 gara aga – ahịrị ụzọ ogologo oge nke ochie. Ọtụtụ ndị na-etinye ego na-ewere ọnụahịa dị n\'elu ya dị ka ụzọ ịrị elu ogologo oge.';

  @override
  String get glossRsi =>
      'Ngosi ike mmekọrịta (RSI): ọ na-atụnyere uru nso nso a na mfu nso nso a n\'ihe ọtụtụ 0–100. N\'elu 70 a na-akpọkarị stock ahụ azụrụ ya karịa (o riri elu ngwa ngwa), n\'okpuru 30 erela ya karịa – mana ụzọ siri ike nwere ike ịnọ ebe ahụ ogologo oge.';

  @override
  String get glossVolatility =>
      'Otú ọnụahịa si agbanwe kwa ụbọchị, gbakọọ n\'otu afọ: 20% pụtara na n\'afọ nkịtị ọnụahịa na-agagharị n\'ime ihe dị ka ±20%. Mgbanwe dị elu pụtara mmegharị ka ukwuu n\'akụkụ abụọ.';

  @override
  String get techNote =>
      'Agbakọrọ ya site na ọnụahịa mmechi kwa ụbọchị. Akara teknikal na-akọwa ihe gara aga, ọ bụghị ọdịnihu.';
}
