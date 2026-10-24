// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Cebuano (`ceb`).
class AppLocalizationsCeb extends AppLocalizations {
  AppLocalizationsCeb([String locale = 'ceb']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Kuhai og litrato ang usa ka stock ug hibal-i ang tanan bahin niini.';

  @override
  String get homeHint =>
      'Share certificate, screen sa brokerage app, mantalaan o logo sa kompanya – bisan unsa nga makaila sa usa ka stock.';

  @override
  String get takePhoto => 'Pagkuha og litrato';

  @override
  String get chooseFromGallery => 'Pagpili gikan sa gallery';

  @override
  String get chooseImage => 'Pagpili og hulagway';

  @override
  String get enterTickerManually => 'Isulod ang ticker nga mano-mano';

  @override
  String get tickerInputLabel => 'Simbolo sa ticker';

  @override
  String get tickerInputHint => 'sama sa AAPL';

  @override
  String get lookUp => 'Pangitaa';

  @override
  String demoModeBanner(String symbols) {
    return 'Demo mode – walay na-configure nga market data key. Adunay sample data para sa: $symbols.';
  }

  @override
  String get recognizing => 'Gisusi ang hulagway…';

  @override
  String get loadingData => 'Gi-load ang data…';

  @override
  String get noCandidatesTitle => 'Walay nailhan nga stock';

  @override
  String get noCandidatesBody =>
      'Dili namo mailhan ang stock niini nga hulagway. Sulayi ang mas klaro nga litrato, o isulod ang ticker nga mano-mano.';

  @override
  String get whatWeSaw => 'Ang among nakita';

  @override
  String get chooseCandidateTitle => 'Hain nga stock ang imong gipasabot?';

  @override
  String confidencePercent(int percent) {
    return '$percent% kasiguroan';
  }

  @override
  String get settings => 'Mga Setting';

  @override
  String get language => 'Pinulongan';

  @override
  String get systemLanguage => 'Default sa sistema';

  @override
  String get about => 'Mahitungod';

  @override
  String get disclaimer =>
      'Naghatag lang og impormasyon kini nga app ug dili kini tambag sa pagpamuhunan. Ang data mahimong nalangan o dili tukma.';

  @override
  String dataSource(String source) {
    return 'Tinubdan sa data: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Pag-ila: $source';
  }

  @override
  String get retry => 'Sulayi pag-usab';

  @override
  String get cancel => 'Kanselahon';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Isira';

  @override
  String get errorGeneric => 'Adunay sayop nga nahitabo.';

  @override
  String get errorSectionUnavailable => 'Dili ma-load kini nga seksyon.';

  @override
  String get notAvailable => 'wala';

  @override
  String get sectionIdentity => 'Identipikasyon';

  @override
  String get sectionPrice => 'Presyo';

  @override
  String get sectionValuation => 'Valuation';

  @override
  String get sectionFinancials => 'Pinansyal';

  @override
  String get sectionDividend => 'Dibidendo';

  @override
  String get sectionProfile => 'Profile sa kompanya';

  @override
  String get sectionAnalysts => 'Mga rating sa analyst';

  @override
  String get sectionNews => 'Balita';

  @override
  String get sectionRecognition => 'Mga detalye sa pag-ila';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Exchange';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Currency';

  @override
  String get labelCountry => 'Nasod';

  @override
  String get labelIndustry => 'Industriya';

  @override
  String get labelSector => 'Sektor';

  @override
  String get labelWebsite => 'Website';

  @override
  String get labelIpoDate => 'Petsa sa IPO';

  @override
  String get labelMarketCap => 'Market cap';

  @override
  String get labelSharesOutstanding => 'Mga outstanding nga share';

  @override
  String get labelEmployees => 'Mga empleyado';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Punoang opisina';

  @override
  String get labelDescription => 'Deskripsyon';

  @override
  String get labelLastPrice => 'Katapusang presyo';

  @override
  String get labelChange => 'Kausaban';

  @override
  String get labelOpen => 'Pag-abli';

  @override
  String get labelDayHigh => 'Pinakataas karong adlawa';

  @override
  String get labelDayLow => 'Pinakaubos karong adlawa';

  @override
  String get labelPreviousClose => 'Miaging pagsira';

  @override
  String get labelWeek52High => 'Pinakataas sa 52 ka semana';

  @override
  String get labelWeek52Low => 'Pinakaubos sa 52 ka semana';

  @override
  String get labelAverageVolume10d => 'Avg. nga volume (10 ka adlaw)';

  @override
  String updatedAt(String time) {
    return 'Na-update $time';
  }

  @override
  String get labelPeTrailing => 'P/E (trailing)';

  @override
  String get labelPeForward => 'P/E (forward)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / libreng cash flow';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Kita (TTM)';

  @override
  String get labelNetIncomeTtm => 'Neto nga kita (TTM)';

  @override
  String get labelGrossMargin => 'Gross margin';

  @override
  String get labelOperatingMargin => 'Margin sa operasyon';

  @override
  String get labelNetMargin => 'Neto nga margin';

  @override
  String get labelRoe => 'Return sa equity';

  @override
  String get labelRoa => 'Return sa assets';

  @override
  String get labelDebtToEquity => 'Utang / equity';

  @override
  String get labelCurrentRatio => 'Current ratio';

  @override
  String get labelRevenueGrowth => 'Pagtubo sa kita (YoY)';

  @override
  String get labelEpsGrowth => 'Pagtubo sa EPS (YoY)';

  @override
  String get labelDividendYield => 'Dividend yield';

  @override
  String get labelDividendPerShare => 'Dibidendo matag share';

  @override
  String get labelPayoutRatio => 'Payout ratio';

  @override
  String get labelYieldOnCost => 'Yield sa gasto';

  @override
  String get labelDividendGrowth5y => 'Pagtubo sa dibidendo (5 ka tuig)';

  @override
  String get dividendNone =>
      'Walay dibidendo nga gibayad sulod sa miaging 12 ka bulan.';

  @override
  String get dividendOnYourShares => 'Sa imong mga share, kada tuig';

  @override
  String get labelConsensus => 'Konsensus';

  @override
  String get ratingStrongBuy => 'Kusog nga palit';

  @override
  String get ratingBuy => 'Palit';

  @override
  String get ratingHold => 'Kupti';

  @override
  String get ratingSell => 'Baligya';

  @override
  String get ratingStrongSell => 'Kusog nga baligya';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ka analyst',
      one: '1 ka analyst',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Panahon: $period';
  }

  @override
  String get noNews => 'Walay bag-ong balita.';

  @override
  String get openArticle => 'Ablihi ang artikulo';

  @override
  String get openLinkFailed => 'Dili maablihan ang link.';

  @override
  String get recognitionSummary => 'Katingbanan';

  @override
  String get recognitionEvidence => 'Ngano nga mao kini among hunahuna';

  @override
  String get recognitionRawText => 'Tekstong nabasa gikan sa hulagway';

  @override
  String get errMissingAnthropicKey =>
      'Wala ma-configure ang pag-ila sa hulagway (walay ANTHROPIC_API_KEY). Isulod ang ticker nga mano-mano.';

  @override
  String get errRecognitionUnreachable =>
      'Dili makontak ang serbisyo sa pag-ila. Susiha ang imong koneksyon sa internet.';

  @override
  String errRecognitionHttp(String status) {
    return 'Nagbalik og error ang serbisyo sa pag-ila (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Dili maproseso sa serbisyo sa pag-ila kini nga hulagway.';

  @override
  String get errRecognitionTruncated =>
      'Naputol ang tubag sa pag-ila. Palihug sulayi pag-usab.';

  @override
  String get errRecognitionBadResponse =>
      'Wala gidahom nga tubag gikan sa serbisyo sa pag-ila.';

  @override
  String get errRecognitionEmpty =>
      'Walay sulod ang tubag nga gibalik sa serbisyo sa pag-ila.';

  @override
  String get errMissingFinnhubKey =>
      'Wala ma-configure ang market data (walay FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Dili makontak ang serbisyo sa market data. Susiha ang imong koneksyon sa internet.';

  @override
  String get errMarketRateLimited =>
      'Daghan kaayong request sa serbisyo sa market data. Palihug paghulat og usa ka minuto.';

  @override
  String errMarketHttp(String status) {
    return 'Nagbalik og error ang serbisyo sa market data (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Wala gidahom nga tubag gikan sa serbisyo sa market data.';

  @override
  String errNoQuote(String symbol) {
    return 'Walay nakit-ang data sa presyo para sa $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Walay nakit-ang profile sa kompanya para sa $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Ang demo mode nagsuporta lang sa $symbols. Pagdugang og FINNHUB_API_KEY para sa live data.';
  }

  @override
  String errUnknown(String detail) {
    return 'Adunay sayop: $detail';
  }

  @override
  String get newSearch => 'Bag-ong pagpangita';

  @override
  String get recentSearches => 'Bag-o lang';

  @override
  String get noRecentSearches => 'Wala pay bag-ong pagpangita.';

  @override
  String get clearRecent => 'Hawani ang bag-o lang';

  @override
  String get greeting => 'Hain nga stock ang atong tan-awon?';

  @override
  String get searchHint => 'Ticker o ngalan sa kompanya';

  @override
  String get attachImage => 'Ilakip ang hulagway';

  @override
  String get searchResultsTitle => 'Mga resulta sa pagpangita';

  @override
  String errNoResults(String query) {
    return 'Walay nakit-ang stock para sa “$query”.';
  }

  @override
  String get quickBarHint => 'I-type ang ticker o ngalan sa kompanya…';

  @override
  String get openFullWindow => 'Ablihi ang window';

  @override
  String hotkeyHint(String shortcut) {
    return 'Pindota ang $shortcut bisan asa aron tawgon ang WhatStock.';
  }

  @override
  String get trayOpen => 'Ablihi ang WhatStock';

  @override
  String get trayQuickSearch => 'Dali nga pagpangita';

  @override
  String get trayQuit => 'Gawas';

  @override
  String get appearance => 'Panagway';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeDark => 'Ngitngit';

  @override
  String get themeLight => 'Hayag';

  @override
  String get back => 'Balik';

  @override
  String get aiSectionTitle => 'Pagtuki sa AI';

  @override
  String get aiIntro =>
      'Detalyado nga kinatibuk-ang tan-aw nga gisulat sa AI: katingbanan sa bag-ong mga balita, ang negosyo, mga kalig-on, mga risgo ug tinagong hinungdan, valuation, panglantaw sa presyo nga adunay mga senaryo gikan sa sikolohikal, sosyolohikal, teknikal ug macro nga anggulo, ug unsay angay bantayan.';

  @override
  String get aiGenerate => 'Paghimo og pagtuki';

  @override
  String get aiRegenerate => 'Himoa pag-usab';

  @override
  String get aiGenerating =>
      'Giandam ang pagtuki… mahimong molungtad kini og usa o duha ka minuto.';

  @override
  String get aiSources => 'Mga tinubdan';

  @override
  String aiGeneratedAt(String time) {
    return 'Gihimo $time';
  }

  @override
  String get aiDisclaimer =>
      'Pagtuki nga gihimo sa AI base sa publikong data ug bag-ong mga balita. Mahimong adunay sayop o daan na kini, ug dili kini tambag sa pagpamuhunan.';

  @override
  String get errAiNotConfigured =>
      'Wala ma-configure ang pagtuki sa AI (walay ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Dili makontak ang serbisyo sa AI. Susiha ang imong koneksyon sa internet.';

  @override
  String errAiHttp(String status) {
    return 'Nagbalik og error ang serbisyo sa AI (HTTP $status).';
  }

  @override
  String get errAiRefused =>
      'Midumili ang serbisyo sa AI sa pagtuki niini nga stock.';

  @override
  String get errAiBadResponse =>
      'Wala gidahom nga tubag gikan sa serbisyo sa AI.';

  @override
  String get sectionChart => 'Chart sa presyo';

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
      'Dili available ang kasaysayan sa presyo gikan sa kasamtangang tinubdan sa data.';

  @override
  String get sectionStatements => 'Mga financial statement (tinuig)';

  @override
  String get labelFiscalYear => 'Fiscal nga tuig';

  @override
  String get labelRevenue => 'Kita';

  @override
  String get labelNetIncome => 'Neto nga kita';

  @override
  String get labelTotalAssets => 'Kinatibuk-ang assets';

  @override
  String get labelTotalLiabilities => 'Kinatibuk-ang liabilities';

  @override
  String get labelEquity => 'Equity sa mga shareholder';

  @override
  String get labelOperatingCashFlow => 'Cash flow sa operasyon';

  @override
  String get statementsUnavailable =>
      'Dili available ang gi-report nga mga financial statement para niini nga stock.';

  @override
  String get launchAtLogin => 'Ablihi inig log in';

  @override
  String get hotkeyLabel => 'Global nga shortcut';

  @override
  String get hotkeyRecordHint =>
      'I-klik dinhi, unya pindota ang bag-ong kombinasyon sa key';

  @override
  String get hotkeyReset => 'I-reset sa default';

  @override
  String get pasteImage => 'I-paste ang hulagway gikan sa clipboard';

  @override
  String get errClipboardNoImage => 'Walay hulagway sa clipboard.';

  @override
  String get favorites => 'Mga paborito';

  @override
  String get addToFavorites => 'Idugang sa mga paborito';

  @override
  String get removeFromFavorites => 'Tangtanga sa mga paborito';

  @override
  String get noFavorites =>
      'Wala pay paborito. I-tap ang bituon sa usa ka stock aron idugang kini.';

  @override
  String get displayCurrency => 'Currency nga ipakita';

  @override
  String get displayCurrencyNone => 'Kaugalingong currency lang sa stock';

  @override
  String labelConverted(String currency) {
    return '≈ sa $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Rate: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Mga update';

  @override
  String currentVersion(String version) {
    return 'Bersyon $version';
  }

  @override
  String get autoUpdate => 'Awtomatikong i-install ang mga update';

  @override
  String get checkForUpdates => 'Susiha kung adunay update';

  @override
  String get updateChecking => 'Gisusi kung adunay update…';

  @override
  String get updateUpToDate => 'Naa na ka sa pinakabag-ong bersyon.';

  @override
  String updateAvailable(String version) {
    return 'Available na ang bersyon $version.';
  }

  @override
  String get updateDownloading => 'Gi-download ang update sa background…';

  @override
  String get updateDownloaded =>
      'Andam na ang update. I-restart aron ma-install kini.';

  @override
  String get updateNow => 'I-update';

  @override
  String get restartNow => 'I-restart';

  @override
  String get updatesViaStore =>
      'Awtomatikong moabot ang mga update pinaagi sa app store.';

  @override
  String get updateCheckFailed => 'Dili masusi kung adunay update.';

  @override
  String get subscription => 'Subscription';

  @override
  String get planTrial => 'Trial';

  @override
  String get planNormal => 'Normal';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Walay aktibong plan';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count ka pagtuki matag bulan';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$days ka adlaw nga libreng trial nga adunay $count ka pagtuki';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days ka adlaw nga nahabilin sa trial',
      one: '1 ka adlaw nga nahabilin sa trial',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Nahuman na ang imong libreng trial. Pagpili og plan aron magpadayon sa pagtuki.';

  @override
  String analysesRemaining(int remaining, int total) {
    return '$remaining sa $total ka pagtuki ang nahabilin karong panahona';
  }

  @override
  String extraCredits(int count) {
    return '$count ka dugang nga pagtuki';
  }

  @override
  String renewsOn(String date) {
    return 'Ma-renew sa $date';
  }

  @override
  String get choosePlan => 'Pagpili og plan';

  @override
  String get currentPlan => 'Kasamtangang plan';

  @override
  String get subscribe => 'Mag-subscribe';

  @override
  String get perMonth => '/ bulan';

  @override
  String get extraPacksTitle =>
      'Kinahanglan og dugang? Palit og dugang nga pagtuki';

  @override
  String get extraPacksHint =>
      'Ang dugang nga pagtuki dili gyud mo-expire ug gamiton human sa imong binulan nga alokasyon.';

  @override
  String get buy => 'Paliton';

  @override
  String get restorePurchases => 'I-restore ang mga napalit';

  @override
  String get manageSubscription => 'Dumalaha ang subscription';

  @override
  String get purchaseSuccess => 'Salamat! Aktibo na ang imong napalit.';

  @override
  String get purchasePending => 'Gipaabot pa ang pagpalit…';

  @override
  String get purchaseFailed => 'Dili makompleto ang pagpalit.';

  @override
  String get purchaseCanceled => 'Gikansela ang pagpalit.';

  @override
  String get billingUnavailable =>
      'Dili pa available ang pagpalit niini nga platform. Mag-subscribe sa imong telepono o Mac; mogana ang imong plan sa matag device.';

  @override
  String get errQuotaExceeded =>
      'Wala nay nahabilin nimong pagtuki karong panahona. I-upgrade ang imong plan o palit og dugang nga pagtuki.';

  @override
  String get errTrialExpired =>
      'Nahuman na ang imong libreng trial. Pagpili og plan aron magpadayon.';

  @override
  String get errNoPlan => 'Kinahanglan og aktibong plan para sa pagtuki sa AI.';

  @override
  String get viewPlans => 'Tan-awa ang mga plan';

  @override
  String get usageTitle => 'Paggamit';

  @override
  String get demoPurchaseNote =>
      'Demo billing: simulated lang ang mga pagpalit niini nga platform.';

  @override
  String get mostPopular => 'Labing popular';

  @override
  String get bestValue => 'Labing sulit';

  @override
  String get planFeaturesCommon =>
      'Apil sa matag plan ang pag-ila sa litrato, live data, mga chart, mga paborito ug tanan nga 120 ka pinulongan. Ang alokasyon para sa mga pagtuki sa AI.';

  @override
  String get searchLanguages => 'Pangitag pinulongan…';

  @override
  String get noLanguageMatch => 'Walay mitugma nga pinulongan.';

  @override
  String get aiSettings => 'Pagtuki sa AI';

  @override
  String get aiLength => 'Gitas-on';

  @override
  String get aiDepthBrief => 'Mubo';

  @override
  String get aiDepthStandard => 'Standard';

  @override
  String get aiDepthDeep => 'Lawom';

  @override
  String get aiDepthBriefDesc => 'Ang importante, paspas.';

  @override
  String get aiDepthStandardDesc => 'Bug-os nga report uban ang matag seksyon.';

  @override
  String get aiDepthDeepDesc =>
      'Mas daghang pagpangita sa web, pagtandi sa mga kakompetensya ug mas lawom nga detalye.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Mga $min–$max ka pulong';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'mogamit og $count ka pagtuki',
      one: 'mogamit og 1 ka pagtuki',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Lebel sa magbabasa';

  @override
  String get aiReaderBeginner => 'Nagsugod pa';

  @override
  String get aiReaderExperienced => 'Batid na';

  @override
  String get aiReaderBeginnerDesc =>
      'Simple nga pinulongan; gipasabot ang matag teknikal nga termino.';

  @override
  String get aiReaderExperiencedDesc =>
      'Mas dasok nga teksto nga adunay standard nga terminolohiya sa pinansya.';

  @override
  String get aiCounterArgument => 'Labing kusog nga kontra-argumento';

  @override
  String get aiCounterArgumentDesc =>
      'Kanunay matapos ang katingbanan sa labing maayong argumento batok sa kaugalingon niining konklusyon.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Hangtod $count ka pagpangita sa web matag pagtuki sa imong plan',
      one: 'Hangtod 1 ka pagpangita sa web matag pagtuki sa imong plan',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Standard nga gitas-on matag plan: Normal $normal, Pro $pro, Max $max, Ultra $ultra. Ang Mubo mogamit og 2 ka mas gamay, ang Lawom 2 ka mas daghan.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'hangtod $count ka pagpangita sa web',
      one: 'hangtod 1 ka pagpangita sa web',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ka pagpangita sa web matag pagtuki',
      one: '1 ka pagpangita sa web matag pagtuki',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Kini nga gitas-on nagkinahanglan og $needed ka pagtuki, apan $left na lang ang nahabilin. Pagpili og mas mubo nga gitas-on sa Mga Setting o pagkuha og dugang nga pagtuki.';
  }

  @override
  String get outlookMarketMood => 'Sentimyento sa merkado';

  @override
  String get moodVeryPessimistic => 'Pesimista kaayo';

  @override
  String get moodPessimistic => 'Pesimista';

  @override
  String get moodNeutral => 'Neyutral';

  @override
  String get moodOptimistic => 'Optimista';

  @override
  String get moodVeryOptimistic => 'Optimista kaayo';

  @override
  String get scenarioBull => 'Optimistang senaryo';

  @override
  String get scenarioBase => 'Batakang senaryo';

  @override
  String get scenarioBear => 'Pesimistang senaryo';

  @override
  String outlookCurrentPrice(String price) {
    return 'Kasamtangang presyo: $price';
  }

  @override
  String get outlookKeyLevels => 'Importanteng lebel';

  @override
  String get keyLevelSupport => 'Support';

  @override
  String get keyLevelResistance => 'Resistance';

  @override
  String get keyLevelAnchor => 'Angkla';

  @override
  String get upcomingEvents => 'Umaabot nga mga panghitabo';

  @override
  String get outlookChartNote =>
      'Gibanabana nga mga range; ang mga posibilidad hapit-hapit nga paghukom, dili tagna.';

  @override
  String get accountTitle => 'Account';

  @override
  String get signIn => 'Mag-sign in';

  @override
  String get signOut => 'Mag-sign out';

  @override
  String get notSignedIn => 'Wala naka-sign in';

  @override
  String get accountBenefit =>
      'Mag-sign in aron mogana ang imong subscription sa tanan nimong device.';

  @override
  String get accountSyncedNote =>
      'Parehas ang imong subscription ug nahabilin nga pagtuki sa matag device.';

  @override
  String get signInTitle => 'Mag-sign in sa WhatStock';

  @override
  String get emailLabel => 'Adres sa email';

  @override
  String get continueWithEmail => 'Padayon gamit ang email';

  @override
  String codeSentTo(String email) {
    return 'Nagpadala mi og 6-digit nga code sa $email. Balido kini sulod sa 10 ka minuto.';
  }

  @override
  String get codeLabel => 'Code sa pag-sign in';

  @override
  String get resendCode => 'Pagpadala og bag-ong code';

  @override
  String get useDifferentEmail => 'Gamit og laing email';

  @override
  String get errInvalidCode => 'Sayop o expired na ang code.';

  @override
  String get errInvalidEmail => 'Palihug isulod ang balido nga email address.';

  @override
  String get errSignInFailed =>
      'Napakyas ang pag-sign in. Susiha ang imong koneksyon ug sulayi pag-usab.';

  @override
  String get checkoutWaiting =>
      'Kompletoha ang pagbayad sa imong browser. Awtomatikong mo-update ang app kung mahuman na.';

  @override
  String get paymentViaStripe =>
      'Luwas nga pagbayad sa imong browser pinaagi sa Stripe. Pwede kanselahon bisan kanus-a.';

  @override
  String get paymentViaStore =>
      'Gisingil pinaagi sa imong App Store o Google Play account. Pwede kanselahon bisan kanus-a sa mga setting sa store.';

  @override
  String get keySpace => 'Space';

  @override
  String get doubleOptionTitle => 'Pindota og kaduha ang Option';

  @override
  String get doubleOptionSubtitle =>
      'Ang paspas nga pagpindot sa Option key og kaduha motawag usab sa WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Aron mogana usab kini sa ubang mga app, tugoti ang WhatStock sa System Settings → Privacy & Security → Input Monitoring, unya ablihi pag-usab ang app.';

  @override
  String get openSystemSettings => 'Ablihi ang System Settings';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Pindota ang $shortcut o pindota og kaduha ang Option bisan asa aron tawgon ang WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Labing posible';

  @override
  String get longTermToday => 'Karon';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years ka tuig',
      one: '1 ka tuig',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range matag tuig';
  }

  @override
  String longTermLikely(String price) {
    return 'labing posible $price';
  }

  @override
  String get confidenceLow => 'Ubos nga kasiguroan';

  @override
  String get confidenceMedium => 'Tunga-tunga nga kasiguroan';

  @override
  String get confidenceHigh => 'Taas nga kasiguroan';

  @override
  String get longTermNote =>
      'Ang dugay nga mga range nagsukad sa gipahayag nga mga pangagpas ug molapad sa paglabay sa panahon. Wala gilakip ang dibidendo sa mga presyo. Hapit-hapit nga paghukom, dili tagna.';

  @override
  String get portfolio => 'Portfolio';

  @override
  String get portfolioEmpty =>
      'Wala pay sulod dinhi. Ablihi ang usa ka stock ug i-tap ang “Idugang sa portfolio” aron masubay ang imong mga gipanag-iya.';

  @override
  String get portfolioLocalNote =>
      'Gitipigan niini nga device, ug sa imong account kon naka-sign in ka. Ang mga total gi-convert gamit ang reference rate sa ECB; ang mga presyo mahimong nalangan.';

  @override
  String get addToPortfolio => 'Idugang sa portfolio';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Idugang ang $symbol';
  }

  @override
  String get portfolioQuantity => 'Gidaghanon sa share';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Presyo matag share ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Petsa sa pagpalit';

  @override
  String get portfolioAdd => 'Idugang';

  @override
  String get portfolioInvalidNumber => 'Pagsulod og numero nga labaw sa zero.';

  @override
  String portfolioAdded(String symbol) {
    return 'Nadugang ang $symbol sa imong portfolio.';
  }

  @override
  String get portfolioTotalValue => 'Kinatibuk-ang bili';

  @override
  String get portfolioToday => 'Karon';

  @override
  String get portfolioGainLoss => 'Ganansya/kapildihan';

  @override
  String homeDividendsThisYear(String amount) {
    return 'Dibidendo karong tuiga: $amount';
  }

  @override
  String get portfolioInvested => 'Napuhunan';

  @override
  String get portfolioAllocation => 'Alokasyon';

  @override
  String get portfolioPositions => 'Mga posisyon';

  @override
  String portfolioAvgCost(String price) {
    return 'avg. nga gasto $price';
  }

  @override
  String get portfolioYourPosition => 'Imong posisyon';

  @override
  String get portfolioPurchases => 'Mga pagpalit';

  @override
  String get portfolioRemove => 'Tangtanga';

  @override
  String get portfolioExcluded =>
      'Wala iapil sa mga total ang mga posisyon nga walay presyo o exchange rate.';

  @override
  String get priceAlerts => 'Mga alerto sa presyo';

  @override
  String get setPriceAlert => 'Pagbutang og alerto sa presyo';

  @override
  String alertDialogTitle(String symbol) {
    return 'Alerto sa presyo · $symbol';
  }

  @override
  String get alertKindAbove => 'Mosaka labaw sa';

  @override
  String get alertKindBelow => 'Mous-os ubos sa';

  @override
  String get alertKindMove => 'Dakog lihok sulod sa usa ka adlaw';

  @override
  String alertTargetPrice(String currency) {
    return 'Presyo ($currency)';
  }

  @override
  String get alertMovePercent => 'Lihok sa adlaw (%)';

  @override
  String get alertAlreadyMet => 'Milapas na ang presyo niini nga lebel.';

  @override
  String get alertSave => 'Ibutang ang alerto';

  @override
  String alertCreated(String symbol) {
    return 'Nabutang ang alerto para sa $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Wala pay alerto sa presyo. Ablihi ang usa ka stock ug i-tap ang lingganay aron magbutang og usa.';

  @override
  String get alertsNote =>
      'Gisusi ang mga alerto matag 5 ka minuto samtang nagdagan ang WhatStock. Sa computer, padayon kini nga nagdagan sa menu bar o system tray; sa telepono, sa pagkakaron moabot lang ang mga alerto samtang bukas ang app.';

  @override
  String alertDescAbove(String price) {
    return 'Labaw sa $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Ubos sa $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Lihok sa adlaw ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Na-trigger $date sa $price';
  }

  @override
  String get alertRearm => 'I-activate pag-usab';

  @override
  String get alertDelete => 'Papasa';

  @override
  String alertHitAbove(String symbol, String price) {
    return 'Misaka ang $symbol labaw sa $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return 'Mius-os ang $symbol ubos sa $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return 'Milihok ang $symbol og $percent karon';
  }

  @override
  String alertHitBody(String price) {
    return 'Kasamtangang presyo: $price';
  }

  @override
  String get alertOpen => 'Ablihi';

  @override
  String get keepInTrayTitle => 'Padayon nga modagan bisan sirado ang window';

  @override
  String get keepInTraySubtitle =>
      'Magpabilin ang WhatStock sa menu bar o system tray, busa padayon nga mogana ang shortcut ug mga alerto sa presyo.';

  @override
  String get termsOfUse => 'Mga Termino sa Paggamit';

  @override
  String get privacyPolicy => 'Palisiya sa Privacy';

  @override
  String get subscriptionLegal =>
      'Awtomatikong ma-renew ang subscription matag bulan hangtod nimo kini kanselahon. Pinaagi sa pag-subscribe, gidawat nimo ang Mga Termino sa Paggamit ug ang Palisiya sa Privacy.';

  @override
  String get deleteAccount => 'Papasa ang account';

  @override
  String get deleteAccountTitle => 'Papason ang imong account?';

  @override
  String get deleteAccountBody =>
      'Permanente nga mapapas ang imong account ug tanan nga gitipigan sa among server (email, alokasyon, paggamit), ug mawala ang wala magamit nga mga pagtuki. Dayon nga makansela ang subscription nga gibayran sa browser; ang subscription sa App Store o Google Play kinahanglan kanselahon sa mga setting sa store.';

  @override
  String get deleteLocalData =>
      'Papasa usab ang data niini nga device (portfolio, alerto, paborito, kasaysayan, natipig nga pagtuki)';

  @override
  String get deleteAccountConfirm => 'Papasa nga permanente';

  @override
  String get accountDeleted => 'Napapas na ang imong account.';

  @override
  String get errDeleteAccount =>
      'Dili mapapas ang account. Susiha ang imong koneksyon ug sulayi pag-usab.';

  @override
  String get aiTrialBriefNote =>
      'Mubo ang mga pagtuki sa trial ug gihimo kini gamit ang mas paspas nga AI model. Sa usa ka plan, makuha nimo ang among labing maayong AI, mas daghang pagpangita sa web, ug ang Standard ug Lawom nga gitas-on.';

  @override
  String get billingMonthly => 'Binulan';

  @override
  String get billingYearly => 'Tinuig';

  @override
  String get yearlyDiscount => '2 ka bulan libre';

  @override
  String get perYear => '/ tuig';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price matag bulan';
  }

  @override
  String get subscriptionLegalYearly =>
      'Awtomatikong ma-renew ang tinuig nga subscription matag tuig hangtod nimo kini kanselahon. Pinaagi sa pag-subscribe, gidawat nimo ang Mga Termino sa Paggamit ug ang Palisiya sa Privacy.';

  @override
  String get myAnalyses => 'Akong mga pagtuki';

  @override
  String get navAlerts => 'Mga alerto';

  @override
  String get inviteTitle => 'Sirado nga preview';

  @override
  String get inviteBody =>
      'Sa pagkakaron, makuha lang ang WhatStock pinaagi sa imbitasyon. Isulod ang invite code nga imong nadawat.';

  @override
  String get inviteCodeLabel => 'Invite code';

  @override
  String get inviteContinue => 'Padayon';

  @override
  String get inviteInvalid => 'Dili balido kining invite code.';

  @override
  String get inviteExpired =>
      'Expired na kining imbitasyon. Pangayo og bag-ong code sa tawo nga nag-imbitar nimo.';

  @override
  String get inviteDeviceLimit =>
      'Gigamit na kining invite code sa pinakadaghang device nga gitugotan.';

  @override
  String get previewConfidential => 'Kumpidensyal nga preview';

  @override
  String get errPreviewDailyLimit =>
      'Naabot na niining preview ang limitasyon sa pagtuki karong adlawa. Sulayi pag-usab ugma.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ka oras na ang milabay',
      one: '1 ka oras na ang milabay',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ka adlaw na ang milabay',
      one: '1 ka adlaw na ang milabay',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'I-update kini nga pagtuki?';

  @override
  String staleBody(String age) {
    return 'Gihimo kini $age. Basin nausab na ang mga presyo, balita ug resulta sukad niadto.';
  }

  @override
  String get staleKeep => 'Ipakita ang nauna';

  @override
  String get staleRefresh => 'Paghimo og bag-o';

  @override
  String seeAll(int count) {
    return 'Tan-awa tanan ($count)';
  }

  @override
  String get searchAnalyses => 'Pangitaa ang imong mga pagtuki';

  @override
  String get deleteAnalysis => 'Papasa';

  @override
  String analysisDeleted(String symbol) {
    return 'Napapas ang pagtuki sa $symbol';
  }

  @override
  String get keyLevelAlertHint =>
      'I-tap ang usa ka lebel aron makadawat og alerto kon maabot na kini sa presyo.';

  @override
  String get shareAnalysisTitle => 'Ipaambit ang pagtuki';

  @override
  String get shareAsImage => 'Ipaambit isip hulagway';

  @override
  String get shareAsText => 'Ipaambit isip teksto';

  @override
  String get shareCardFooter => 'Gihimo gamit ang WhatStock';

  @override
  String get shareCardDisclaimer =>
      'Pagtuki sa AI · dili tambag sa pagpamuhunan';

  @override
  String get referralTitle => 'Dapita ang mga higala';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ka dugang nga pagtuki',
      one: '1 ka dugang nga pagtuki',
    );
    return 'Ipaambit ang imong code. Ang imong higala makadawat dayon og $_temp0, ug ikaw usab makadawat og ingon niana human sa iyang unang pagtuki.';
  }

  @override
  String get referralYourCode => 'Imong code';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Gidapit: $invited · Gigantihan: $rewarded';
  }

  @override
  String get referralHaveCode => 'Naa kay code gikan sa higala?';

  @override
  String get referralRedeem => 'I-redeem';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nadugang ang $count ka dugang nga pagtuki. Maayong pag-abot!',
      one: 'Nadugang ang 1 ka dugang nga pagtuki. Maayong pag-abot!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Walay ingon ani nga code. Susiha kini ug sulayi pag-usab.';

  @override
  String get referralErrOwn =>
      'Dili nimo ma-redeem ang imong kaugalingong code.';

  @override
  String get referralErrAlready =>
      'Naka-redeem ka na sa code sa usa ka higala.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ka dugang nga pagtuki',
      one: '1 ka dugang nga pagtuki',
    );
    return 'Gituki nako ang mga stock gamit ang WhatStock: kuhai og litrato ang usa ka stock ug ipasabot kini sa AI. Gamit ang akong code $code makadawat ka og $_temp0.';
  }

  @override
  String get referralCopied => 'Nakopya ang code';

  @override
  String get onboardTitle1 => 'Kuhai og litrato ang usa ka stock';

  @override
  String get onboardBody1 =>
      'Igo na ang screen sa brokerage app, mantalaan o logo sa kompanya: mailhan sa WhatStock ang stock ug ipakita ang presyo, tsart ug importanteng mga numero niini.';

  @override
  String get onboardTitle2 => 'Masabtan sulod sa pipila ka minuto';

  @override
  String get onboardBody2 =>
      'Ipasabot sa pagtuki sa AI kung unsay nagpalihok sa stock, ang mga risgo, ang valuation ug tulo ka senaryo kung asa mahimong padulong ang presyo – uban sa mga tinubdan ug sa imong pinulongan.';

  @override
  String get onboardTitle3 => 'Kanunay nga mahibalo';

  @override
  String get onboardBody3 =>
      'Ang mga paborito, imong portfolio ug mga alerto sa presyo magpahibalo kanimo. Ang imong mga pagtuki magpabilin sa imong device, andam nga ablihan pag-usab.';

  @override
  String get onboardNext => 'Sunod';

  @override
  String get onboardStart => 'Magsugod na';

  @override
  String get onboardSkip => 'Laktawan';

  @override
  String changesTitle(String date) {
    return 'Sukad sa miaging pagtuki ($date)';
  }

  @override
  String get changesPrice => 'Presyo';

  @override
  String get changesNoMajor => 'Ang panglantaw wala kaayo mausab.';

  @override
  String get changesPreviousSummary => 'Miaging katingbanan';

  @override
  String get telemetryTitle => 'Tabangi kami sa pagpauswag sa WhatStock';

  @override
  String get telemetryBody =>
      'Ipaambit ang dili mailhan nga estadistika sa paggamit ug mga crash report: unsang mga feature ang gigamit ug unsay nasayop. Dili gayod ipaambit ang imong mga stock, pagtuki o personal nga datos. Mahimo nimo kining usbon bisan kanus-a sa Mga Setting.';

  @override
  String get telemetryAllow => 'Tugoti';

  @override
  String get telemetryDecline => 'Dili, salamat';

  @override
  String get telemetrySetting =>
      'Dili mailhan nga estadistika ug mga crash report';

  @override
  String get telemetrySettingHint =>
      'Kung unsa ka sagad gamiton ang mga feature ug mga report sa sayop, walay personal nga datos o sulod sa imong mga pagpangita ug pagtuki.';

  @override
  String get askButton => 'Pangutana bahin niini nga pagtuki';

  @override
  String askTitle(String symbol) {
    return 'Mga pangutana bahin sa $symbol';
  }

  @override
  String get askIntro =>
      'Pangutana bisan unsa bahin sa pagtuki: unsay buot ipasabot sa usa ka risgo, unsay makausab sa panglantaw, giunsa pagkuwenta ang usa ka numero. Ang mga tubag gibase niini nga pagtuki ug dili kini tambag sa pagpamuhunan.';

  @override
  String get askHint => 'Isulat ang imong pangutana…';

  @override
  String get askSend => 'Ipadala';

  @override
  String get askThinking => 'Naghunahuna…';

  @override
  String get askSuggest1 => 'Unsa ang pinakadakong risgo?';

  @override
  String get askSuggest2 => 'Unsa ang makausab sa panglantaw?';

  @override
  String get askSuggest3 => 'Ipasabot kini sa yanong paagi';

  @override
  String get askMaxReached =>
      'Kana na ang kataposang pangutana para niini nga pagtuki. Paghimo og bag-ong pagtuki aron makapangutana pa.';

  @override
  String get errAskLimit =>
      'Naabot na nimo ang limitasyon sa mga pangutana karong adlawa. Palihog sulayi pag-usab ugma.';

  @override
  String get eventTomorrow => 'Ugma';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'sulod sa $days ka adlaw',
      one: 'sulod sa 1 ka adlaw',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Resulta sa quarter';

  @override
  String get eventBeforeOpen => 'sa dili pa moabli ang merkado';

  @override
  String get eventAfterClose => 'human magsira ang merkado';

  @override
  String eventEpsEstimate(String value) {
    return 'Gipaabot nga EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Gikan sa imong pagtuki';

  @override
  String get eventDividend => 'Gipaabot nga dibidendo';

  @override
  String get eventDividendEstimate =>
      'Gibanabana gikan sa imong narekord nga mga bayad';

  @override
  String get eventsHint =>
      'Mga petsa sa resulta sa imong mga paborito ug mga stock sa portfolio sulod sa sunod 90 ka adlaw, ang mga panghitabo nga may petsa nga gimarkahan sa imong mga pagtuki, ug ang mga dibidendo nga gipaabot gikan sa imong narekord nga mga bayad.';

  @override
  String get eventsEmpty =>
      'Walay panghitabo nga may petsa sa sunod 90 ka adlaw. Pagdugang og mga paborito o stock sa portfolio aron makita dinhi ang ilang mga petsa sa resulta; ang narekord nga mga dibidendo nagpakita sa ilang gipaabot nga sunod bayad.';

  @override
  String get compareTitle => 'Itandi';

  @override
  String get compareAdd => 'Idugang ug stock';

  @override
  String get compareRemove => 'Tangtangon';

  @override
  String get compareTickerHint => 'Ticker, pananglitan MSFT';

  @override
  String get compareHint =>
      'Ang mga importanteng numero magkatapad; gi-highlight ang labing maayong value sa matag laray. Ang mga kantidad anaa sa kaugalingong currency sa matag stock.';

  @override
  String get compareNoAnalysis => 'Wala pay pagtuki';

  @override
  String get portfolioDividends => 'Tinuig nga dibidendo';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent yield';
  }

  @override
  String get portfolioDividendNote =>
      'Ang gipaabot nga tinuig nga dibidendo gibase sa mga dibidendo nga gibayad sulod sa miaging 12 ka bulan; ang umaabot nga mga bayad dili garantisado.';

  @override
  String positionDividend(String amount) {
    return 'Dibidendo: $amount kada tuig';
  }

  @override
  String get chartAvgCost => 'Imong avg.';

  @override
  String get chartAlertLevel => 'Alerto';

  @override
  String get marketsToday => 'Mga merkado karon';

  @override
  String get notesTitle => 'Akong mga nota';

  @override
  String get notesHint =>
      'Nganong gipalit nimo kini, unsay imong gibantayan, unsay makapabaligya nimo niini?';

  @override
  String get notesInfo =>
      'Gitipigan niini nga device, ug sa imong account kon naka-sign in ka. Gikonsiderar sa pagtuki sa AI ang imong mga nota.';

  @override
  String notesSaved(String date) {
    return 'Gitipigan $date';
  }

  @override
  String get peersTitle => 'Susamang mga kompanya';

  @override
  String get portfolioExport => 'I-export isip CSV';

  @override
  String get portfolioImport => 'I-import gikan sa CSV';

  @override
  String get portfolioImportHint =>
      'I-paste ang usa ka pagpalit matag linya: simbolo sa ticker, gidaghanon, presyo, currency, petsa (YYYY-MM-DD). Ang mga kolum mahimong bulagon sa comma, semicolon o tab; opsyonal ang header nga linya.';

  @override
  String get portfolioImportButton => 'I-import';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nadugang ang $count ka transaksyon',
      one: 'Nadugang ang 1 ka transaksyon',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Gilaktawan ang $count ka linya',
      one: 'Gilaktawan ang 1 ka linya',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Ang portfolio, mga paborito, mga alerto sa presyo ug mga nota gi-sync sa tanan nimong device.';

  @override
  String syncLast(String time) {
    return 'Katapusang na-sync $time';
  }

  @override
  String get syncNow => 'I-sync karon';

  @override
  String get syncFailed =>
      'Napakyas ang pag-sync. Mosulay kini pag-usab nga awtomatiko.';

  @override
  String get alertEmailTitle => 'E-mail kon motrigger ang alerto';

  @override
  String get alertEmailOn =>
      'Among susihon ang imong mga alerto matag pipila ka minuto ug padad-an ka namo og e-mail, bisan sirado ang app.';

  @override
  String get alertEmailSignIn =>
      'Mag-sign in gamit ang imong e-mail sa Mga Setting aron makadawat og mga alerto pinaagi sa e-mail, bisan sirado ang app.';

  @override
  String get portfolioHistory => 'Bili sa paglabay sa panahon';

  @override
  String get portfolioReviewTitle => 'Pagtuki sa portfolio gamit ang AI';

  @override
  String get portfolioReviewIntro =>
      'Tan-awon sa AI ang imong tibuok portfolio: konsentrasyon, exposure sa sektor ug salapi, mga risgo nga gipaambit sa imong mga stock, ug dibidendo. Mogamit og 1 ka pagtuki.';

  @override
  String get portfolioReviewButton => 'Tukia ang akong portfolio';

  @override
  String get portfolioReviewAgain => 'Tukia pag-usab';

  @override
  String get portfolioReviewWorking => 'Gituki ang imong portfolio…';

  @override
  String get digestTitle => 'Senemanang summary pinaagi sa email';

  @override
  String get digestHint =>
      'Matag Lunes: giunsa paglihok sa imong mga paborito ug portfolio sa miaging semana, ug ang ilang umaabot nga mga petsa sa resulta.';

  @override
  String get benchmarkTitle => 'Itandi sa S&P 500';

  @override
  String get benchmarkTitleIndex => 'Itandi sa usa ka index';

  @override
  String get benchmarkHintIndex =>
      'Ingon nga ang matag palit gibutang sa usa ka fund nga nagsunod sa gipiling index sa samang adlaw. Wala giapil ang dibidendo; ang nangaging kita dili magtagna sa umaabot.';

  @override
  String get benchmarkYours => 'Imong mga gipalit';

  @override
  String benchmarkAhead(String points) {
    return '$points ka percentage point nga mas maayo kaysa index';
  }

  @override
  String benchmarkBehind(String points) {
    return '$points ka percentage point nga ubos sa index';
  }

  @override
  String get portfolioSell => 'Ibaligya';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Ibaligya ang $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Presyo sa pagbaligya matag share ($currency)';
  }

  @override
  String get portfolioSellDate => 'Petsa sa pagbaligya';

  @override
  String get portfolioSellAll => 'Tanan';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Naa kay $quantity';
  }

  @override
  String get portfolioSold => 'Gibaligya';

  @override
  String get portfolioRealized => 'Narealisar';

  @override
  String get portfolioClosed => 'Sirado nga mga posisyon';

  @override
  String get portfolioClosedNote => 'Nabaligya na ang tanang share';

  @override
  String get portfolioTransactions => 'Mga transaksyon';

  @override
  String get portfolioRealizedByYear => 'Narealisar nga ganansya matag tuig';

  @override
  String get portfolioRealizedHint =>
      'Ang mga pagbaligya ipares una sa imong pinakaunang mga pagpalit (FIFO), gi-convert sa exchange rate karon. Para sa imong tax return, gamita ang statement sa imong broker.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Sukad niining pagtuki, may bag-ong quarterly nga resulta nga gipatik ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Bag-ong resulta';

  @override
  String get portfolioImportBrokers =>
      'Mailhan usab ang mga export gikan sa Revolut, Trading 212, Interactive Brokers, DEGIRO, Schwab, Fidelity ug Robinhood, apil ang mga gibaligya ug dibidendo (kuhaan na sa withholding tax); ang mga deposito laktawan.';

  @override
  String get portfolioImportFile => 'Pagpili og file';

  @override
  String offlineBanner(String time) {
    return 'Walay koneksyon – gipakita ang katapusang na-save nga datos ($time).';
  }

  @override
  String get glossMarketCap =>
      'Pila ang bili sa tibuok kompanya sa stock market: presyo sa share × gidaghanon sa shares.';

  @override
  String get glossSharesOutstanding =>
      'Pila ka share ang gi-issue sa kompanya. Kon kini modaghan, mas gamay nga bahin ang maangkon sa matag share; ang buyback mopaubos niini.';

  @override
  String get glossPeTrailing =>
      'Presyo ÷ kita kada share sa miaging 12 ka bulan: pila ka tuig sa kasamtangang ganansya ang imong gibayran. Ang mas ubos mas barato, apan ang paspas motubo nga kompanya kasagaran adunay taas nga P/E.';

  @override
  String get glossPeForward =>
      'Sama sa P/E, apan gamit ang ganansya nga gipaabot sa mga analista sa sunod nga 12 ka bulan. Kon ubos sa trailing P/E, gipaabot nga motubo ang ganansya.';

  @override
  String get glossPb =>
      'Presyo ÷ book value (assets minus utang) kada share. Mga 1 nagpasabot nga gibili sa merkado ang kompanya sumala sa iyang gipanag-iya sa papel.';

  @override
  String get glossPs =>
      'Bili sa merkado ÷ tinuig nga kita. Mapuslanon sa mga kompanya nga gamay o wala pay ganansya; ikumpara sulod sa samang industriya.';

  @override
  String get glossEvToFcf =>
      'Bili sa kompanya lakip ang utang (EV) ÷ ang cash nga mahimo niini sulod sa usa ka tuig human sa mga puhunan. Ang mas ubos nagpasabot nga mas daghang cash ang imong makuha sa presyo.';

  @override
  String get glossPeg =>
      'P/E ÷ gipaabot nga tinuig nga pagtubo sa ganansya (%). Mga 1 kasagaran giisip nga patas; gitan-aw niini ang P/E sumala sa pagtubo.';

  @override
  String get glossEps =>
      'Ganansya kada share sa miaging 12 ka bulan. Ang EPS nga mosaka matag tuig usa sa labing lig-on nga timailhan sa himsog nga kompanya.';

  @override
  String get glossBeta =>
      'Unsa ka dako ang paglihok sa stock uban sa merkado: 1 = sama sa merkado, 1.5 = mga 50% mas dako nga pag-uyog, ubos sa 1 = mas kalma.';

  @override
  String get glossRevenueTtm =>
      'Kinatibuk-ang halin sa miaging 12 ka bulan, una sa bisan unsang gasto.';

  @override
  String get glossNetIncomeTtm =>
      'Ganansya nga nahibilin human sa tanang gasto, interes ug buhis sa miaging 12 ka bulan.';

  @override
  String get glossGrossMargin =>
      'Ang bahin sa kita nga nahibilin human sa direktang gasto sa mga produkto. Ang taas nga margin kasagaran nagpasabot og gahom sa pagpresyo.';

  @override
  String get glossOperatingMargin =>
      'Ang bahin sa kita nga nahibilin human sa pagpadagan sa negosyo (suweldo, abang, marketing), sa wala pa ang interes ug buhis.';

  @override
  String get glossNetMargin =>
      'Ang bahin sa kita nga mahimong katapusang ganansya. Ang 20% nagpasabot nga 20 sa matag 100 nga halin ganansya.';

  @override
  String get glossRoe =>
      'Return sa equity: tinuig nga ganansya ÷ kapital sa mga tag-iya. Nagpakita kon unsa ka maayo gigamit sa management ang kuwarta sa mga shareholder; labaw sa mga 15% lig-on.';

  @override
  String get glossRoa =>
      'Return sa assets: tinuig nga ganansya ÷ tanan nga gipanag-iya sa kompanya. Ikumpara sulod sa samang industriya.';

  @override
  String get glossDebtToEquity =>
      'Utang ÷ kapital sa mga tag-iya. Ang mas taas nagpasabot og mas daghang hinulam nga kuwarta: mas dakong risgo kon mosaka ang interes o mohinay ang negosyo.';

  @override
  String get glossCurrentRatio =>
      'Short-term nga assets ÷ mga bayranan sulod sa usa ka tuig. Labaw sa 1 nagpasabot nga makabayad ang kompanya sa mga duol nga bayranan.';

  @override
  String get glossRevenueGrowth =>
      'Pila ang pagtubo sa kita kumpara sa usa ka tuig na ang milabay.';

  @override
  String get glossEpsGrowth =>
      'Pila ang pagtubo sa ganansya kada share kumpara sa usa ka tuig na ang milabay.';

  @override
  String get glossDividendYield =>
      'Tinuig nga dibidendo ÷ presyo sa share: ang cash nga kita nga imong madawat matag tuig, isip porsiyento sa imong gibayad.';

  @override
  String get glossDividendPerShare =>
      'Ang dibidendo nga gibayad sa usa ka share sa miaging tuig.';

  @override
  String get glossPayoutRatio =>
      'Ang bahin sa ganansya nga gibayad isip dibidendo. Labaw sa 100%, mas daghan ang gibayad sa kompanya kaysa sa iyang kinitaan, nga panagsa ra molungtad.';

  @override
  String get portfolioBeta => 'Beta sa portfolio';

  @override
  String get glossPortfolioBeta =>
      'Ang beta sa imong mga stock, gitimbang sumala sa ilang bili: mga pila ka porsiyento ang paglihok sa imong mga stock kon ang merkado molihok og 1%. Kon labaw sa 1, mas dako ang ilang pag-uyog kaysa merkado; kon ubos sa 1, mas gamay. Wala giapil ang cash.';

  @override
  String get portfolioTop3 => 'Top 3 nga posisyon';

  @override
  String get glossPortfolioTop3 =>
      'Pila sa bili sa imong mga stock ang anaa sa imong tulo ka pinakadakong posisyon. Kon mas taas kini, mas makadaot sa tibuok portfolio ang daotang balita bahin sa usa lang ka kompanya.';

  @override
  String get glossDividendGrowth5y =>
      'Pila ang gitubo sa dibidendo matag share kada tuig sa aberids sulod sa miaging lima ka tuig. Ang makanunayong pagtubo kasagaran nagpasabot nga nagsalig ang kompanya sa iyang cash flow; ang pagkunhod kasagaran usa ka timaan sa pasidaan.';

  @override
  String get glossYieldOnCost =>
      'Ang dibidendo nga nadawat sa miaging 12 ka bulan nga gibahin sa imong gibayad para sa mga share nga gihuptan pa nimo. Dili sama sa dividend yield, gisukod kini sa imong kaugalingong presyo sa pagpalit, dili sa presyo karon.';

  @override
  String get glossTitle => 'Unsay buot ipasabot?';

  @override
  String get watchNewsTitle => 'Balita sa imong mga stock';

  @override
  String get undo => 'I-undo';

  @override
  String get watchSort => 'Han-aya';

  @override
  String get watchSortOwn => 'Akong han-ay';

  @override
  String get watchSortGainers => 'Pinakadako nga pagsaka una';

  @override
  String get watchSortLosers => 'Pinakadako nga pagkanaog una';

  @override
  String get watchSortName => 'Sumala sa ticker (A–Z)';

  @override
  String get watchHint =>
      'Guyora ang kuptanan aron ihan-ay pag-usab, i-swipe pawala aron tangtangon. Ang linya nagpakita sa miaging 30 ka adlaw.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: andam na ang imong pagtuki.';
  }

  @override
  String alertFromCost(String price) {
    return 'Gikan sa imong kasagaran nga presyo sa pagpalit ($price):';
  }

  @override
  String get briefTitle => 'Karon uban sa imong mga stock';

  @override
  String get briefButton => 'I-summarize karon';

  @override
  String get briefHint =>
      'Mubo nga AI summary kon giunsa paglihok karon sa imong portfolio ug mga paborito ug unsay giingon sa labing bag-ong balita bahin kanila. Dili kini mogamit og pagtuki.';

  @override
  String get briefRefresh => 'I-update';

  @override
  String get sectionEarnings => 'Kita';

  @override
  String earningsNext(String date) {
    return 'Sunod nga report: $date';
  }

  @override
  String get earningsExpected => 'Gipaabot nga EPS';

  @override
  String get earningsReported => 'Gi-report nga EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Sama o labaw sa gipaabot nga EPS sa $beats sa katapusang $total ka quarter',
      one: 'Sama o labaw sa gipaabot nga EPS sa $beats sa 1 ka quarter',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return 'Ipahibalo sa $symbol ang resulta sa quarter ugma';
  }

  @override
  String earningsReminderToday(String symbol) {
    return 'Ipahibalo sa $symbol ang resulta sa quarter karon';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return 'Gipaabot karon ang dibidendo sa $symbol';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Mga $amount. Irekord kini sa imong portfolio kung moabot na.';
  }

  @override
  String get dividendRemindersTitle => 'Mga pahinumdom sa dibidendo';

  @override
  String get dividendRemindersSubtitle =>
      'Usa ka pahibalo sa adlaw nga gipaabot ang dibidendo sumala sa ritmo sa imong narekord nga mga bayad, aron imo kining marekord';

  @override
  String get earningsRemindersTitle => 'Mga pahinumdom sa resulta';

  @override
  String get earningsRemindersSubtitle =>
      'Usa ka pahibalo usa ka adlaw sa dili pa ipahibalo sa imong mga paborito o stock sa portfolio ang ilang resulta sa quarter';

  @override
  String addAllToFavorites(int count) {
    return 'Idugang tanan sa mga paborito ($count)';
  }

  @override
  String get portfolioImportPhoto => 'I-import gikan sa screenshot';

  @override
  String get holdingsReading => 'Gibasa ang imong mga posisyon…';

  @override
  String get holdingsReviewTitle => 'Mga posisyon nga nakit-an';

  @override
  String get holdingsReviewHint =>
      'Susiha ang mga numero sa dili pa idugang. Ang presyo mao ang imong average nga presyo sa pagpalit matag share, dili ang presyo karon.';

  @override
  String get holdingsNoPrice =>
      'Walay average nga presyo sa pagpalit sa hulagway';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Idugang ang $count ka posisyon',
      one: 'Idugang ang 1 ka posisyon',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Walay nakit-an nga posisyon sa stock niini nga hulagway. Sulayi ang screenshot sa positions o holdings nga panid sa imong broker.';

  @override
  String get week52Range => 'Gilay-on sa 52 ka semana';

  @override
  String week52BelowHigh(String percent) {
    return '$percent ubos sa pinakataas sa 52 ka semana';
  }

  @override
  String get week52AtHigh => 'Anaa sa pinakataas sa 52 ka semana';

  @override
  String get alertKindTrailing => 'Mous-os gikan sa kinatas-an';

  @override
  String get alertTrailingPercent => 'Pagkunhod gikan sa kinatas-an (%)';

  @override
  String get alertTrailingHint =>
      'Mosunod sa presyo pataas: mopahibalo kung ang presyo mous-os niining kantidad gikan sa kinatas-ang lebel sukad gibutang nimo kini.';

  @override
  String alertDescTrailing(String percent) {
    return '$percent pagkunhod gikan sa kinatas-an';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'kinatas-an hangtod karon: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return 'Mius-os ang $symbol og $percent gikan sa kinatas-an';
  }

  @override
  String get sectionInsiders => 'Mga transaksyon sa insider';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ka pagpalit',
      one: '1 ka pagpalit',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ka pagbaligya',
      one: '1 ka pagbaligya',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Net: $shares ka share';
  }

  @override
  String get insiderBuy => 'Gipalit';

  @override
  String get insiderSell => 'Gibaligya';

  @override
  String get insiderHint =>
      'Mga pagpalit ug pagbaligya sa open market sa mga executive ug director sulod sa miaging 90 ka adlaw (SEC Form 4). Wala giihap ang paggamit sa option ug mga share award.';

  @override
  String get insiderNone =>
      'Walay pagpalit o pagbaligya sa insider sa open market sulod sa miaging 90 ka adlaw.';

  @override
  String get analystTrend => 'Giunsa pagbag-o sa mga panglantaw matag bulan';

  @override
  String get watchListAll => 'Tanan';

  @override
  String get watchListNew => 'Bag-ong lista';

  @override
  String get watchListName => 'Ngalan sa lista';

  @override
  String get watchListRename => 'Ilisi ang ngalan sa lista';

  @override
  String get watchListDelete => 'Papasa ang lista';

  @override
  String get watchListAddTo => 'Idugang sa usa ka lista';

  @override
  String get watchListEmpty =>
      'Wala pay stock niining listaha. I-tap ang buton sa lista tupad sa stock aron idugang kini.';

  @override
  String get portfolioAskTitle => 'Mga pangutana bahin sa imong portfolio';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'Backup';

  @override
  String get backupSave => 'I-save ang backup';

  @override
  String get backupSaveHint =>
      'Ang imong mga paborito, lista, portfolio, alerto ug nota sa usa ka file.';

  @override
  String get backupRestore => 'I-restore gikan sa backup';

  @override
  String get backupRestoreHint =>
      'Idugang ang anaa sa file; walay mapapas sa imong naa karon.';

  @override
  String get backupRestored => 'Na-restore ang backup.';

  @override
  String get backupInvalid => 'Kini nga file dili WhatStock backup.';

  @override
  String get allocationPositions => 'Mga stock';

  @override
  String get allocationSectors => 'Sektor';

  @override
  String get allocationCurrencies => 'Currency';

  @override
  String get allocationAccounts => 'Mga account';

  @override
  String get compareReturn1y => '1 ka tuig nga ganansya';

  @override
  String get compareFromHigh => 'Gikan sa pinakataas sa 52 ka semana';

  @override
  String get briefAutoTitle => 'Adlaw-adlaw nga summary matag buntag';

  @override
  String get briefAutoSubtitle =>
      'Ang “Karon uban sa imong mga stock” awtomatikong mahimo human sa 7:00 sa buntag samtang nagdagan ang app; sa mga kompyuter, usa ka notipikasyon ang mopahibalo nimo. Mogamit kini sa imong adlaw-adlaw nga limitasyon sa pangutana, dili sa pagtuki.';

  @override
  String get targetsButton => 'Target nga alokasyon';

  @override
  String get targetsTitle => 'Target nga alokasyon';

  @override
  String get targetsHint =>
      'Itakda kung pila ka bahin sa portfolio ang angay sa matag stock. Biyai nga blangko ang field kung walay target. Unya ipakita sa app kung unsa ang paliton o ibaligya aron makaabot didto.';

  @override
  String targetsSum(String percent) {
    return 'Kinatibuk-an: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Palita ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Ibaligya ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Naa sa target';

  @override
  String earningsResultBeat(String symbol) {
    return 'Milapas ang $symbol sa gipaabot nga EPS';
  }

  @override
  String earningsResultMiss(String symbol) {
    return 'Wala makaabot ang $symbol sa gipaabot nga EPS';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'Gi-report nga EPS $actual, gipaabot $estimate';
  }

  @override
  String get newsExplain => 'Unsa ang buot ipasabot niini?';

  @override
  String get watchAlertAll => 'Alerto sa dagkong lihok sa adlaw';

  @override
  String get watchAlertAllHint =>
      'Usa ka alerto sa presyo para sa matag stock niining lista nga mopatingog kon molihok kini ingon niini kadako sulod sa usa ka adlaw, pataas o paubos. Ang mga stock nga duna nay alerto magpabilin sa ilang kaugalingon.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Na-set ang $count ka alerto',
      one: 'Na-set ang 1 ka alerto',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized =>
      'I-export ang na-realize nga ganansya (CSV)';

  @override
  String get portfolioAnnualReturn => 'Tinuig nga kita';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / tuig';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Tinuig nga kita nga gitimbang sa kwarta (XIRR): gikonsiderar niini kanus-a ka mipalit ug mibaligya, mao nga ang kwarta nga gidugang sa ulahi dili makatuis niini. Ipakita kini kung ang imong unang pagpalit labing menos usa na ka tuig; wala gilakip ang mga dibidendo.';

  @override
  String get eventsAddToCalendar => 'Idugang sa kalendaryo (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Alerto sa portfolio';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Usa ka pahibalo kon ang tibuok nimong portfolio molihok ingon niini kadako sulod sa usa ka adlaw.';

  @override
  String get portfolioMoveAlertOff => 'Gipalong';

  @override
  String portfolioMoveUp(String percent) {
    return 'Mitaas og $percent ang imong portfolio karon';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Mius-os og $percent ang imong portfolio karon';
  }

  @override
  String get whatIfTitle => 'Unsa kaha kon nag-invest ka?';

  @override
  String get whatIfAmount => 'Kantidad';

  @override
  String whatIfResult(String amount, String period) {
    return 'Ang $amount nga gi-invest $period na ang milabay nagkantidad unta karon og';
  }

  @override
  String get whatIfNote =>
      'Base lang sa presyo sa share: wala maapil ang dibidendo, bayronon ug buhis. Ang miaging kita dili magtagna sa umaabot.';

  @override
  String get watchShare => 'I-share ang lista';

  @override
  String get watchImport => 'Pagdugang og mga ticker';

  @override
  String get watchImportHint =>
      'I-paste ang mga ticker nga gibulag sa comma, space o bag-ong linya – pananglitan, usa ka lista nga gi-share kanimo sa usa ka tawo.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nadugang ang $count ka stock',
      one: 'Nadugang ang 1 ka stock',
      zero: 'Walay bag-ong stock',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Pinakadako una';

  @override
  String get positionsSortGain => 'Pinakataas nga total nga ganansya una';

  @override
  String get positionsSortToday => 'Pinakamaayo karon una';

  @override
  String get chartMyBuys => 'Imong mga pagpalit';

  @override
  String get chartMySells => 'Imong mga gibaligya';

  @override
  String get shortcutsTitle => 'Mga keyboard shortcut';

  @override
  String usMarketOpen(String time) {
    return 'Abli ang merkado sa US · mosira sulod sa $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Sirado ang merkado sa US · moabli sulod sa $time';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes min';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours oras $minutes min';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days adlaw $hours oras';
  }

  @override
  String get dividendGoalSet => 'Pagbutang og binulan nga tumong sa dibidendo';

  @override
  String get dividendGoalTitle => 'Binulan nga tumong sa dibidendo';

  @override
  String get dividendGoalAmount => 'Dibidendo kada bulan';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Mga $amount kada bulan sa yield karon: $percent sa imong tumong nga $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Mga $amount kada bulan sa yield karon: naabot na ang imong tumong nga $goal';
  }

  @override
  String get portfolioAccount => 'Account';

  @override
  String get portfolioAccountHint => 'sama sa PERA (opsyonal)';

  @override
  String get portfolioAccountAdd => 'Ibutang ang account';

  @override
  String get portfolioAccountsAll => 'Tanang account';

  @override
  String get portfolioAccountNote =>
      'Mga transaksyon ug dibidendo lang niini nga account. Ang cash, mga tumong ug ang pagtuki sa AI makita sa Tanang account.';

  @override
  String get portfolioNoAccount => 'Walay account';

  @override
  String portfolioFee(String currency) {
    return 'Komisyon ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Idugang ang komisyon';

  @override
  String portfolioFeeRow(String amount) {
    return 'Komisyon: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'Tinuig nga katingbanan';

  @override
  String get portfolioProceeds => 'Kita sa pagbaligya';

  @override
  String get portfolioCostBasis => 'Gasto sa pagpalit';

  @override
  String get portfolioFeesPaid => 'Nabayad nga komisyon';

  @override
  String get portfolioAnnualSummaryNote =>
      'Mga kantidad sa orihinal nga currency, wala gi-convert. Ang kita sa pagbaligya net na sa komisyon sa pagbaligya; ang gasto sa pagpalit naglakip sa komisyon sa pagpalit (FIFO). Para sa imong tax return, i-convert sa exchange rate nga gikinahanglan sa imong tax authority.';

  @override
  String get portfolioShare => 'Ipaambit ang performance';

  @override
  String get portfolioShareHeading => 'Akong portfolio';

  @override
  String get portfolioTopHoldings => 'Pinakadakong mga posisyon';

  @override
  String get portfolioShareNote =>
      'Mga porsyento lang ang ipaambit, walay mga kantidad.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ka posisyon',
      one: '1 ka posisyon',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'Dili tambag sa pagpamuhunan';

  @override
  String get contributionButton => 'I-invest ang bag-ong kwarta';

  @override
  String contributionAmount(String currency) {
    return 'Kantidad nga i-invest ($currency)';
  }

  @override
  String get contributionHint =>
      'Pagpalit lang, walay pagbaligya: ang mga posisyon nga labing layo ubos sa ilang target ang unang makadawat sa kwarta.';

  @override
  String contributionShares(String shares) {
    return '≈ $shares ka share';
  }

  @override
  String contributionMissing(String symbols) {
    return 'Walay presyo karon alang sa $symbols: wala iapil sa pagbahin.';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'Kung magpabilin ang tinuig nga kita ($rate), maabot nimo ang tumong mga tuig $year.';
  }

  @override
  String get portfolioMaxDrawdown => 'Pinakadakong pagkunhod';

  @override
  String get glossMaxDrawdown =>
      'Ang pinakadakong pagkunhod sa bili sa imong mga stock gikan sa usa ka naunang kinatas-an ngadto sa usa ka ulahing kinaubsan, nga walay epekto sa imong pagpalit ug pagbaligya (time-weighted). Gipakita niini kung unsa ka lawom nga pagkunhod ang naagian na sa imong portfolio.';

  @override
  String watchSince(String date) {
    return 'Sukad nimo kini gidugang sa mga paborito ($date)';
  }

  @override
  String get portfolioSampleTry => 'Sulayi gamit ang sample nga portfolio';

  @override
  String get portfolioSampleBanner =>
      'Kini usa ka sample nga portfolio. Idugang ang imong kaugalingong mga gipalit tupad niini, o tangtanga kini.';

  @override
  String get portfolioSampleRemove => 'Tangtanga ang sample';

  @override
  String get portfolioStopsAll => 'Trailing stop para sa tanang posisyon';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Na-set ang $count ka trailing stop',
      one: 'Na-set ang 1 ka trailing stop',
      zero: 'Ang matag posisyon aduna nay trailing stop',
    );
    return '$_temp0';
  }

  @override
  String portfolioSinceSale(String percent) {
    return '$percent sukad nimo kini gibaligya';
  }

  @override
  String get lotPreviewRealized => 'Narealisar niining baligya (FIFO):';

  @override
  String lotPreviewAverage(String after, String before) {
    return 'Bag-ong kasagarang gasto: $after (karon $before)';
  }

  @override
  String get portfolioYtdReturn => 'Kita karong tuiga';

  @override
  String get glossTwrYtd =>
      'Time-weighted nga kita sukad sa sinugdanan sa tuig (o sukad sa imong unang pagpalit, kon karong tuiga kini): ang matag adlaw nag-ihap sa kausaban sa mga stock nga imong gihuptan nianang adlawa, ug ang mga adlaw gikadena-kadena – ang kuwarta nga imong ibutang o kuhaon dili kita, busa mahimo kining itandi sa usa ka index. Sa ubos niini: ang napiling index sa samang yugto.';

  @override
  String alertDistance(String price, String percent) {
    return 'Karon $price · $percent pa ang kulang';
  }

  @override
  String get watchSortSince => 'Sumala sa kausaban sukad gidugang';

  @override
  String get portfolioTodayMovers => 'Labing milihok karon:';

  @override
  String get lotNoteAdd => 'Idugang ang nota';

  @override
  String get lotNoteBuyHint =>
      'Nganong mopalit ka? Ma-apil kini sa mga nota sa stock, uban ang petsa.';

  @override
  String get lotNoteSellHint =>
      'Nganong mobaligya ka? Ma-apil kini sa mga nota sa stock, uban ang petsa.';

  @override
  String get lotNoteBought => 'Gipalit';

  @override
  String get positionHeld => 'Gidugayon sa paghupot';

  @override
  String durationMonths(int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months ka bulan',
      one: '$months ka bulan',
    );
    return '$_temp0';
  }

  @override
  String durationDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days ka adlaw',
      one: '$days ka adlaw',
    );
    return '$_temp0';
  }

  @override
  String positionHeldSince(String date) {
    return 'sukad sa $date';
  }

  @override
  String lotPreviewWeight(String after, String before) {
    return 'Bahin sa portfolio human niini: $after (karon $before)';
  }

  @override
  String lotFromCash(String amount) {
    return 'Bayri gikan sa cash (karon $amount)';
  }

  @override
  String lotToCash(String amount) {
    return 'Idugang sa cash (karon $amount)';
  }

  @override
  String get onboardTitle4 => 'Bantayi ang imong portfolio';

  @override
  String get onboardBody4 =>
      'I-import ang export sa imong broker (Revolut, Trading 212, IBKR, DEGIRO, Schwab…) o idugang nga manwal ang mga transaksyon: tan-awa ang imong kita tupad sa usa ka index, ang imong mga dibidendo ug tinuig nga katingbanan para sa imong tax return.';

  @override
  String get lotEdit => 'Usba';

  @override
  String lotEditTitle(String symbol) {
    return 'Usba ang transaksyon · $symbol';
  }

  @override
  String get lotSave => 'I-save';

  @override
  String dividendEditTitle(String symbol) {
    return 'Usba ang dibidendo · $symbol';
  }

  @override
  String get activityTitle => 'Tanang transaksyon';

  @override
  String get activitySearchHint => 'I-filter sumala sa ticker';

  @override
  String get activityNoMatch => 'Walay transaksyon nga mitugma sa filter.';

  @override
  String portfolioImportDuplicates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count narekord na, wala gilakip',
      one: '1 narekord na, wala gilakip',
    );
    return '$_temp0';
  }

  @override
  String get tickerChange => 'Pag-usab sa ticker';

  @override
  String tickerChangeTitle(String symbol) {
    return 'Pag-usab sa ticker · $symbol';
  }

  @override
  String get tickerChangeNew => 'Bag-ong ticker';

  @override
  String get tickerChangeHint =>
      'Kon usbon sa kompanya ang ticker niini (pananglitan FB → META): ang tanang transaksyon, dibidendo, stock split, ang nota ug ang mga alerto mabalhin sa bag-o.';

  @override
  String tickerChanged(String symbol) {
    return 'Gibalhin ngadto sa $symbol';
  }

  @override
  String get referralErrSignIn =>
      'Mag-sign in gamit ang imong e-mail aron ma-redeem ang code sa usa ka higala.';

  @override
  String get referralErrFull =>
      'Naabot na niini nga code ang kinatas-ang gidaghanon sa pag-redeem.';

  @override
  String portfolioGoalReachedBody(String value) {
    return 'Nagkantidad na og $value ang imong portfolio karon.';
  }

  @override
  String get errAiTruncated =>
      'Naputol ang pagtuki sa wala pa kini mahuman. Palihug sulayi pag-usab – wala kini makuha gikan sa imong alokasyon.';

  @override
  String get errImageUnsupported =>
      'Dili mabasa kini nga hulagway. I-save kini isip JPEG o PNG ug sulayi pag-usab.';

  @override
  String get errRateLimited =>
      'Daghan kaayong request sa mubong panahon. Palihug paghulat og usa ka minuto ug sulayi pag-usab.';

  @override
  String get watchListNameTaken => 'Aduna nay lista nga kini ang ngalan.';

  @override
  String watchListLimit(int max) {
    return 'Mahimo kang adunay hangtod $max ka lista.';
  }

  @override
  String portfolioBuyBelowSold(String quantity) {
    return 'Labing gamay $quantity – nabaligya na ang ingon niana kadaghan';
  }

  @override
  String get restoreNothing =>
      'Walay nakit-ang nangaging napalit nga ma-restore.';

  @override
  String get manageSubscriptionElsewhere =>
      'Walay subscription nga madumala dinhi. Ang subscription nga gipalit sa App Store o Google Play gidumala sa mga setting sa store.';

  @override
  String get backupFailed =>
      'Dili ma-save ang backup. Palihug sulayi pag-usab.';

  @override
  String get syncTooLarge =>
      'Dako kaayo ang imong data aron ma-sync sa imong account. Papasa ang mga transaksyon o nota nga dili na nimo kinahanglan, ug mosulay kini pag-usab.';

  @override
  String get portfolioGoalSet => 'Pagbutang og tumong';

  @override
  String get portfolioGoalTitle => 'Tumong sa portfolio';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent sa imong tumong nga $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Naabot ang tumong nga $amount';
  }

  @override
  String get portfolioGoalRemove => 'Tangtanga ang tumong';

  @override
  String get alertEdit => 'Usba ang alerto';

  @override
  String get positionOpenLots => 'Gikupot pa (pinakauna una)';

  @override
  String get lotRemoved => 'Napapas ang transaksyon';

  @override
  String get alertDeleted => 'Napapas ang alerto';

  @override
  String get alertsClearTriggered => 'Papasa ang mga na-trigger nga alerto';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Napapas ang $count ka alerto',
      one: 'Napapas ang 1 ka alerto',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Panguna nga screen';

  @override
  String get allocationCountries => 'Nasud';

  @override
  String get newsExplainNoteResearch =>
      'Pagpatin-aw sa AI: pangitaon niini ang mga kamatuoran sa web, ablihan ang artikulo ug timbangon kon unsa ka kasaligan ang tinubdan. Dili kini tambag sa pagpamuhunan. Mogamit kini sa imong adlaw-adlaw nga limitasyon sa pangutana, dili sa pagtuki.';

  @override
  String get sourceOfficial => 'Opisyal';

  @override
  String get sourcePressRelease => 'Pahibalo';

  @override
  String get sourceMajorNews => 'Dakong media';

  @override
  String get sourceOpinion => 'Opinyon';

  @override
  String get earningsSummaryButton => 'Unsa ang sulod sa pinakabag-ong report?';

  @override
  String get earningsSummaryNote =>
      'Katingbanan sa AI sa pahibalo sa resulta sa kompanya ug sa mga balita bahin niini nga makit-an niini sa web. Dili kini tambag sa pagpamuhunan. Mogamit kini sa imong adlaw-adlaw nga limitasyon sa pangutana, dili sa pagtuki.';

  @override
  String get compareLastSurprise => 'EPS sa miaging quarter vs. gipaabot';

  @override
  String get compareNextReport => 'Sunod nga report';

  @override
  String get resolvingDescription =>
      'Gisusi kung unsa nga stock ang imong gipasabot…';

  @override
  String get instrumentTitle => 'Bahin niini nga instrumento';

  @override
  String get instrumentHint =>
      'Walay profile sa kompanya alang niini nga simbolo – mahimong ETF, fund o depositary receipt kini. Pangutan-a ang AI unsa kini, unsa ang sulod niini ug pila ang gasto niini.';

  @override
  String get instrumentAsk => 'Unsa kini?';

  @override
  String get instrumentNote =>
      'Pagpatin-aw sa AI gikan sa fund page sa nag-isyu ug sa mga financial site nga makit-an niini sa web. Dili kini tambag sa pagpamuhunan. Mogamit kini sa imong adlaw-adlaw nga limitasyon sa pangutana, dili sa pagtuki.';

  @override
  String suggestAskAi(String query) {
    return 'Pangutan-a ang AI: “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Walay presyo karon alang sa $symbols.';
  }

  @override
  String get eventsRecentResults => 'Bag-ong gi-report nga resulta';

  @override
  String get saveToNotes => 'I-save sa akong mga nota';

  @override
  String get savedToNotes => 'Na-save sa imong mga nota';

  @override
  String get portfolioDividendsReceived => 'Nadawat nga dibidendo';

  @override
  String get portfolioDividendsThisYear => 'Karong tuiga';

  @override
  String get portfolioDividendsAllTime => 'Tanang panahon';

  @override
  String get portfolioAddDividend => 'Idugang ang dibidendo';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Kantidad nga nadawat ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Petsa sa pagbayad';

  @override
  String get portfolioDividendsEmpty =>
      'Wala pay narekord nga dibidendo. Idugang kini nga manwal, o i-import ang export sa imong broker – makuha usab ang mga linya sa dibidendo niini.';

  @override
  String get portfolioSplit => 'Stock split';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Stock split: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Ang mga pagpalit ug pagbaligya nga may petsa sa wala pa ang split gi-adjust: ang gidaghanon sa mga share gipadaghan ug ang presyo matag share gibahin, aron magpabilin ang gasto.';

  @override
  String get portfolioSplitRatio => 'Ratio (bag-o : daan)';

  @override
  String get portfolioSplitRatioError =>
      'Isulod ang ratio sama sa 10:1, o 1:10 alang sa reverse split.';

  @override
  String get portfolioSplitDate => 'Petsa sa split';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Stock split $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Gipapas ang stock split';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count stock split ang gidugang',
      one: '1 stock split ang gidugang',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dibidendo ang nadugang',
      one: '1 dibidendo ang nadugang',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'I-export ang mga dibidendo (CSV)';

  @override
  String get portfolioDividendDeleted => 'Napapas ang dibidendo';

  @override
  String get portfolioDividendsHint =>
      'Mga kantidad sumala sa pag-abot niini sa imong account, sa currency sa pagbayad; ang mga total gi-convert sa karon nga rate. Alang sa imong tax return, gamita ang statement sa imong broker.';

  @override
  String get awayTitle => 'Samtang wala ka';

  @override
  String awaySince(String when) {
    return 'Sukad $when';
  }

  @override
  String get awayQuiet => 'Wala kaayoy nausab.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ka alerto ang na-trigger',
      one: '1 ka alerto ang na-trigger',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Nagpagawas og resulta: $symbols';
  }

  @override
  String get moveWhyButton => 'Nganong nagalihok kini karon?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent karon';
  }

  @override
  String get moveWhyNote =>
      'Pagpatin-aw sa AI gikan sa mga balita karong adlawa nga nakit-an sa web; ang tinuod nga hinungdan mahimong wala mahibaloi o lahi. Dili tambag sa pagpamuhunan. Mogamit sa imong adlaw-adlaw nga kuota sa pangutana, dili analisis.';

  @override
  String get sectionTechnical => 'Teknikal nga hulagway';

  @override
  String get labelSma50 => '50 ka adlaw nga average';

  @override
  String get labelSma200 => '200 ka adlaw nga average';

  @override
  String get labelRsi => 'RSI (14 ka adlaw)';

  @override
  String get labelVolatility30 => 'Volatility (30 ka adlaw)';

  @override
  String techAbove(String percent) {
    return '$percent ibabaw';
  }

  @override
  String techBelow(String percent) {
    return '$percent ubos';
  }

  @override
  String get techOverbought => 'overbought';

  @override
  String get techOversold => 'oversold';

  @override
  String get techNeutral => 'neutral';

  @override
  String get techGoldenCross =>
      'Ang 50 ka adlaw nga average anaa sa ibabaw sa 200 ka adlaw nga average – usa ka pasaka nga uso sumala sa klasikong pagbasa.';

  @override
  String get techDeathCross =>
      'Ang 50 ka adlaw nga average anaa sa ubos sa 200 ka adlaw nga average – usa ka paubos nga uso sumala sa klasikong pagbasa.';

  @override
  String get glossSma50 =>
      'Ang average nga closing price sa miaging 50 ka adlaw sa pamatigayon. Ang presyo nga labaw niini sagad gibasa isip kalig-on sa mubo nga panahon, ang ubos niini isip kahuyang.';

  @override
  String get glossSma200 =>
      'Ang average nga closing price sa miaging 200 ka adlaw sa pamatigayon – ang klasikong linya sa uso sa taas nga panahon. Daghang mamumuhunan nag-isip sa presyo nga labaw niini isip pasaka nga uso sa taas nga panahon.';

  @override
  String get glossRsi =>
      'Relative strength index: gitandi ang bag-ong mga ganansya sa bag-ong mga kapildihan sa sukdanan nga 0–100. Labaw sa 70 ang stock sagad gitawag nga overbought (paspas misaka), ubos sa 30 oversold – apan ang kusog nga uso mahimong magpabilin didto og dugay.';

  @override
  String get glossVolatility =>
      'Unsa ka dako ang pag-usab-usab sa presyo matag adlaw, gisukod sa usa ka tuig: ang 20% nagpasabot nga sa kasagarang tuig ang presyo molihok sulod sa mga ±20%. Mas taas nga volatility nagpasabot og mas dagkong lihok sa duha ka direksyon.';

  @override
  String get techNote =>
      'Gikuwenta gikan sa adlaw-adlaw nga closing price. Ang teknikal nga mga signal naghulagway sa nangagi, dili sa umaabot.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$above sa $count ka posisyon labaw sa ilang 200 ka adlaw nga average';
  }

  @override
  String get watchSignalsTitle => 'Mga signal';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · oversold';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · overbought';
  }

  @override
  String get signalCrossedAbove => 'misaka ibabaw sa 200 ka adlaw nga average';

  @override
  String get signalCrossedBelow => 'mikanaog ubos sa 200 ka adlaw nga average';

  @override
  String get signalAlertsTitle => 'Mga pahibalo sa teknikal nga signal';

  @override
  String get signalAlertsSubtitle =>
      'Kausa sa usa ka adlaw, kon ang usa ka stock nga imong gisubay mahimong oversold o overbought (RSI), o ang presyo niini molabang sa iyang 200 ka adlaw nga average.';

  @override
  String get signalAlertsNotification => 'Mga teknikal nga signal';

  @override
  String get glossaryPageTitle => 'Glosaryo';

  @override
  String get glossaryPageSubtitle =>
      'Yano nga mga pagpasabot sa matag numero nga gipakita sa app, gikan sa P/E hangtod RSI';

  @override
  String get glossarySearchHint => 'Pangitaa sa glosaryo';

  @override
  String get portfolioCash => 'Cash';

  @override
  String get portfolioCashTitle => 'Balanse sa cash';

  @override
  String get portfolioCashHint =>
      'Wala pa mapuhunan nga kuwarta sa imong broker, matag currency. Maapil kini sa kinatibuk-ang bili ug alokasyon; dili sa kita.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Kantidad ($currency)';
  }

  @override
  String get portfolioCashEdit => 'I-set ang balanse sa cash';

  @override
  String get portfolioDividendsByMonth => 'Matag bulan';

  @override
  String get dividendsLegendReceived => 'Nadawat';

  @override
  String get dividendsLegendExpected => 'Gipaabot';

  @override
  String get portfolioDividendsExpected => 'Gipaabot sunod';

  @override
  String get portfolioDividendsExpectedNote =>
      'Gibanabana gikan sa mga petsa ug kantidad sa mga bayad nga imong narekord; mahimong usbon o laktawan kini sa mga kompanya.';

  @override
  String portfolioDividendAround(String date) {
    return 'mga $date';
  }
}
