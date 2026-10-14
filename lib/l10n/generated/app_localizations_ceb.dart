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
      'Niini lang nga device gitipigan. Ang mga total gi-convert gamit ang reference rate sa ECB; ang mga presyo mahimong nalangan.';

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
  String get eventsHint =>
      'Mga petsa sa resulta sa imong mga paborito ug mga stock sa portfolio sulod sa sunod 90 ka adlaw, ug ang mga panghitabo nga may petsa nga gimarkahan sa imong mga pagtuki.';

  @override
  String get eventsEmpty =>
      'Walay panghitabo nga may petsa sa sunod 90 ka adlaw. Pagdugang og mga paborito o stock sa portfolio aron makita dinhi ang ilang mga petsa sa resulta.';

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
}
