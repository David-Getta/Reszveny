// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Iloko (`ilo`).
class AppLocalizationsIlo extends AppLocalizations {
  AppLocalizationsIlo([String locale = 'ilo']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Retratuem ti maysa a stock ket ammuem ti amin a maipapan iti dayta.';

  @override
  String get homeHint =>
      'Share certificate, screen ti brokerage app, pagiwarnak wenno logo ti kompania – aniaman a mangbigbig iti maysa a stock.';

  @override
  String get takePhoto => 'Agala iti retrato';

  @override
  String get chooseFromGallery => 'Agpili manipud iti gallery';

  @override
  String get chooseImage => 'Agpili iti ladawan';

  @override
  String get enterTickerManually => 'Iserrek a manual ti ticker';

  @override
  String get tickerInputLabel => 'Simbolo ti ticker';

  @override
  String get tickerInputHint => 'kas iti AAPL';

  @override
  String get lookUp => 'Biruken';

  @override
  String demoModeBanner(String symbols) {
    return 'Demo mode – awan ti naka-configure a market data key. Adda sample data para iti: $symbols.';
  }

  @override
  String get recognizing => 'Suksukimaten ti ladawan…';

  @override
  String get loadingData => 'Ikarkarga ti data…';

  @override
  String get noCandidatesTitle => 'Awan ti nabigbig a stock';

  @override
  String get noCandidatesBody =>
      'Saanmi a mabigbig ti stock iti daytoy a ladawan. Padasem ti nalinlinaw a retrato, wenno iserrekmo a manual ti ticker.';

  @override
  String get whatWeSaw => 'Ti nakitami';

  @override
  String get chooseCandidateTitle => 'Ania a stock ti kayatmo a sawen?';

  @override
  String confidencePercent(int percent) {
    return '$percent% a kinasigurado';
  }

  @override
  String get settings => 'Dagiti Setting';

  @override
  String get language => 'Pagsasao';

  @override
  String get systemLanguage => 'Default ti sistema';

  @override
  String get about => 'Maipapan';

  @override
  String get disclaimer =>
      'Mangted laeng iti impormasion daytoy nga app ket saan a balakad iti panagpuonan. Mabalin a naladaw wenno saan a husto ti data.';

  @override
  String dataSource(String source) {
    return 'Taudan ti data: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Panangbigbig: $source';
  }

  @override
  String get retry => 'Padasen manen';

  @override
  String get cancel => 'Ikansela';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Irikep';

  @override
  String get errorGeneric => 'Adda biddut a napasamak.';

  @override
  String get errorSectionUnavailable => 'Saan a mai-load daytoy a seksion.';

  @override
  String get notAvailable => 'awan';

  @override
  String get sectionIdentity => 'Pannakabigbig';

  @override
  String get sectionPrice => 'Presio';

  @override
  String get sectionValuation => 'Valuation';

  @override
  String get sectionFinancials => 'Pinansial';

  @override
  String get sectionDividend => 'Dibidendo';

  @override
  String get sectionProfile => 'Profile ti kompania';

  @override
  String get sectionAnalysts => 'Rating dagiti analyst';

  @override
  String get sectionNews => 'Damag';

  @override
  String get sectionRecognition => 'Detalye ti panangbigbig';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Exchange';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Currency';

  @override
  String get labelCountry => 'Pagilian';

  @override
  String get labelIndustry => 'Industria';

  @override
  String get labelSector => 'Sektor';

  @override
  String get labelWebsite => 'Website';

  @override
  String get labelIpoDate => 'Petsa ti IPO';

  @override
  String get labelMarketCap => 'Market cap';

  @override
  String get labelSharesOutstanding => 'Dagiti outstanding a share';

  @override
  String get labelEmployees => 'Dagiti empleado';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Kangrunaan nga opisina';

  @override
  String get labelDescription => 'Deskripsion';

  @override
  String get labelLastPrice => 'Maudi a presio';

  @override
  String get labelChange => 'Panagbaliw';

  @override
  String get labelOpen => 'Panaglukat';

  @override
  String get labelDayHigh => 'Kangatuan ita nga aldaw';

  @override
  String get labelDayLow => 'Kababaan ita nga aldaw';

  @override
  String get labelPreviousClose => 'Napalabas a panagrikep';

  @override
  String get labelWeek52High => 'Kangatuan iti 52 a lawas';

  @override
  String get labelWeek52Low => 'Kababaan iti 52 a lawas';

  @override
  String get labelAverageVolume10d => 'Avg. a volume (10 nga aldaw)';

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
  String get labelEvToFcf => 'EV / libre a cash flow';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Sapul (TTM)';

  @override
  String get labelNetIncomeTtm => 'Net a ganansia (TTM)';

  @override
  String get labelGrossMargin => 'Gross margin';

  @override
  String get labelOperatingMargin => 'Margin ti operasion';

  @override
  String get labelNetMargin => 'Net a margin';

  @override
  String get labelRoe => 'Return iti equity';

  @override
  String get labelRoa => 'Return iti assets';

  @override
  String get labelDebtToEquity => 'Utang / equity';

  @override
  String get labelCurrentRatio => 'Current ratio';

  @override
  String get labelRevenueGrowth => 'Panagdakkel ti sapul (YoY)';

  @override
  String get labelEpsGrowth => 'Panagdakkel ti EPS (YoY)';

  @override
  String get labelDividendYield => 'Dividend yield';

  @override
  String get labelDividendPerShare => 'Dibidendo iti tunggal share';

  @override
  String get labelPayoutRatio => 'Payout ratio';

  @override
  String get labelYieldOnCost => 'Yield iti gastos';

  @override
  String get labelDividendGrowth5y => 'Panagdakkel ti dibidendo (5 a tawen)';

  @override
  String get dividendNone =>
      'Awan ti dibidendo a naibayad iti napalabas a 12 a bulan.';

  @override
  String get dividendOnYourShares => 'Kadagiti sharem, iti tinawen';

  @override
  String get labelConsensus => 'Konsensus';

  @override
  String get ratingStrongBuy => 'Gatangen a dagus';

  @override
  String get ratingBuy => 'Gatangen';

  @override
  String get ratingHold => 'Iggaman';

  @override
  String get ratingSell => 'Ilako';

  @override
  String get ratingStrongSell => 'Ilako a dagus';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count nga analyst',
      one: '1 nga analyst',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Periodo: $period';
  }

  @override
  String get noNews => 'Awan ti baro a damag.';

  @override
  String get openArticle => 'Lukatan ti artikulo';

  @override
  String get openLinkFailed => 'Saan a malukatan ti link.';

  @override
  String get recognitionSummary => 'Pakabuklan';

  @override
  String get recognitionEvidence => 'Apay a kasta ti panagkunami';

  @override
  String get recognitionRawText => 'Teksto a nabasa manipud iti ladawan';

  @override
  String get errMissingAnthropicKey =>
      'Saan a naka-configure ti panangbigbig iti ladawan (awan ti ANTHROPIC_API_KEY). Iserrek a manual ti ticker.';

  @override
  String get errRecognitionUnreachable =>
      'Saan a makontak ti serbisio ti panangbigbig. Kitaem ti koneksionmo iti internet.';

  @override
  String errRecognitionHttp(String status) {
    return 'Nangisubli iti error ti serbisio ti panangbigbig (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Saan a maproseso ti serbisio ti panangbigbig daytoy a ladawan.';

  @override
  String get errRecognitionTruncated =>
      'Naputed ti sungbat ti panangbigbig. Pangngaasim ta padasem manen.';

  @override
  String get errRecognitionBadResponse =>
      'Saan a nanamnama a sungbat manipud iti serbisio ti panangbigbig.';

  @override
  String get errRecognitionEmpty =>
      'Awan ti linaon ti sungbat nga insubli ti serbisio ti panangbigbig.';

  @override
  String get errMissingFinnhubKey =>
      'Saan a naka-configure ti market data (awan ti FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Saan a makontak ti serbisio ti market data. Kitaem ti koneksionmo iti internet.';

  @override
  String get errMarketRateLimited =>
      'Adu unay ti request iti serbisio ti market data. Pangngaasim ta agurayka iti maysa a minuto.';

  @override
  String errMarketHttp(String status) {
    return 'Nangisubli iti error ti serbisio ti market data (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Saan a nanamnama a sungbat manipud iti serbisio ti market data.';

  @override
  String errNoQuote(String symbol) {
    return 'Awan ti nasarakan a data ti presio para iti $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Awan ti nasarakan a profile ti kompania para iti $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Suportaran laeng ti demo mode ti $symbols. Agnayon iti FINNHUB_API_KEY para iti live data.';
  }

  @override
  String errUnknown(String detail) {
    return 'Adda biddut: $detail';
  }

  @override
  String get newSearch => 'Baro a panagbiruk';

  @override
  String get recentSearches => 'Kaudian';

  @override
  String get noRecentSearches => 'Awan pay ti kaudian a panagbiruk.';

  @override
  String get clearRecent => 'Punasen ti kaudian';

  @override
  String get greeting => 'Ania a stock ti kitaentayo?';

  @override
  String get searchHint => 'Ticker wenno nagan ti kompania';

  @override
  String get attachImage => 'Ikabit ti ladawan';

  @override
  String get searchResultsTitle => 'Dagiti resulta ti panagbiruk';

  @override
  String errNoResults(String query) {
    return 'Awan ti nasarakan a stock para iti “$query”.';
  }

  @override
  String get quickBarHint => 'Ag-type iti ticker wenno nagan ti kompania…';

  @override
  String get openFullWindow => 'Lukatan ti window';

  @override
  String hotkeyHint(String shortcut) {
    return 'Pindutem ti $shortcut uray sadino tapno ayaban ti WhatStock.';
  }

  @override
  String get trayOpen => 'Lukatan ti WhatStock';

  @override
  String get trayQuickSearch => 'Napardas a panagbiruk';

  @override
  String get trayQuit => 'Rummuar';

  @override
  String get appearance => 'Langa';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeDark => 'Nasipnget';

  @override
  String get themeLight => 'Nalawag';

  @override
  String get back => 'Agsubli';

  @override
  String get aiSectionTitle => 'Panangsukimat ti AI';

  @override
  String get aiIntro =>
      'Detalyado a panangsukimat a sinurat ti AI: pakabuklan dagiti kaudian a damag, ti negosio, dagiti kabileg, peggad ken nailemmeng a banag, valuation, panangkita iti presio nga addaan kadagiti senario manipud iti sikolohikal, sosiolohikal, teknikal ken macro a pagkitaan, ken dagiti rumbeng a bantayan.';

  @override
  String get aiGenerate => 'Mangaramid iti panangsukimat';

  @override
  String get aiRegenerate => 'Aramiden manen';

  @override
  String get aiGenerating =>
      'Isagsagana ti panangsukimat… mabalin nga agpaut daytoy iti maysa wenno dua a minuto.';

  @override
  String get aiSources => 'Dagiti taudan';

  @override
  String aiGeneratedAt(String time) {
    return 'Naaramid $time';
  }

  @override
  String get aiDisclaimer =>
      'Panangsukimat nga inaramid ti AI a naibatay iti publiko a data ken kaudian a damag. Mabalin nga adda biddutna wenno daanen, ken saan a balakad iti panagpuonan.';

  @override
  String get errAiNotConfigured =>
      'Saan a naka-configure ti panangsukimat ti AI (awan ti ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Saan a makontak ti serbisio ti AI. Kitaem ti koneksionmo iti internet.';

  @override
  String errAiHttp(String status) {
    return 'Nangisubli iti error ti serbisio ti AI (HTTP $status).';
  }

  @override
  String get errAiRefused =>
      'Nagkedked ti serbisio ti AI a mangsukimat iti daytoy a stock.';

  @override
  String get errAiBadResponse =>
      'Saan a nanamnama a sungbat manipud iti serbisio ti AI.';

  @override
  String get sectionChart => 'Chart ti presio';

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
      'Awan ti pakasaritaan ti presio manipud iti agdama a taudan ti data.';

  @override
  String get sectionStatements => 'Dagiti financial statement (tinawen)';

  @override
  String get labelFiscalYear => 'Fiscal a tawen';

  @override
  String get labelRevenue => 'Sapul';

  @override
  String get labelNetIncome => 'Net a ganansia';

  @override
  String get labelTotalAssets => 'Dagup dagiti asset';

  @override
  String get labelTotalLiabilities => 'Dagup dagiti liability';

  @override
  String get labelEquity => 'Equity dagiti shareholder';

  @override
  String get labelOperatingCashFlow => 'Cash flow ti operasion';

  @override
  String get statementsUnavailable =>
      'Awan ti naireport a financial statement para iti daytoy a stock.';

  @override
  String get launchAtLogin => 'Agrugi iti panag-log in';

  @override
  String get hotkeyLabel => 'Global a shortcut';

  @override
  String get hotkeyRecordHint =>
      'I-klik ditoy, sa pindutem ti baro a kombinasion ti key';

  @override
  String get hotkeyReset => 'Isubli iti default';

  @override
  String get pasteImage => 'I-paste ti ladawan manipud iti clipboard';

  @override
  String get errClipboardNoImage => 'Awan ti ladawan iti clipboard.';

  @override
  String get favorites => 'Dagiti paborito';

  @override
  String get addToFavorites => 'Inayon kadagiti paborito';

  @override
  String get removeFromFavorites => 'Ikkaten kadagiti paborito';

  @override
  String get noFavorites =>
      'Awan pay ti paborito. I-tap ti bituen iti maysa a stock tapno mainayon.';

  @override
  String get displayCurrency => 'Currency a maipakita';

  @override
  String get displayCurrencyNone => 'Ti mismo a currency laeng ti stock';

  @override
  String labelConverted(String currency) {
    return '≈ iti $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Rate: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Dagiti update';

  @override
  String currentVersion(String version) {
    return 'Bersion $version';
  }

  @override
  String get autoUpdate => 'Automatiko nga i-install dagiti update';

  @override
  String get checkForUpdates => 'Kitaen no adda update';

  @override
  String get updateChecking => 'Kitkitaen no adda update…';

  @override
  String get updateUpToDate => 'Adda kan iti kabaruan a bersion.';

  @override
  String updateAvailable(String version) {
    return 'Adda ti bersion $version.';
  }

  @override
  String get updateDownloading => 'Ida-download ti update iti background…';

  @override
  String get updateDownloaded =>
      'Nakasagana ti update. I-restart tapno mai-install.';

  @override
  String get updateNow => 'I-update';

  @override
  String get restartNow => 'I-restart';

  @override
  String get updatesViaStore =>
      'Automatiko nga umay dagiti update babaen ti app store.';

  @override
  String get updateCheckFailed => 'Saan a makita no adda update.';

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
  String get planNone => 'Awan ti aktibo a plan';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count a panangsukimat iti tunggal bulan';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$days nga aldaw a libre a trial nga addaan iti $count a panangsukimat';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days nga aldaw ti nabati iti trial',
      one: '1 nga aldaw ti nabati iti trial',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Nalpasen ti libre a trialmo. Agpili iti plan tapno agtuloy ti panangsukimat.';

  @override
  String analysesRemaining(int remaining, int total) {
    return '$remaining iti $total a panangsukimat ti nabati iti daytoy a periodo';
  }

  @override
  String extraCredits(int count) {
    return '$count a nayon a panangsukimat';
  }

  @override
  String renewsOn(String date) {
    return 'Mairenew inton $date';
  }

  @override
  String get choosePlan => 'Agpili iti plan';

  @override
  String get currentPlan => 'Agdama a plan';

  @override
  String get subscribe => 'Ag-subscribe';

  @override
  String get perMonth => '/ bulan';

  @override
  String get extraPacksTitle =>
      'Masapulmo pay? Gumatang iti nayon a panangsukimat';

  @override
  String get extraPacksHint =>
      'Saan nga ag-expire ti nayon a panangsukimat ket mausar kalpasan ti binulan nga alokasionmo.';

  @override
  String get buy => 'Gatangen';

  @override
  String get restorePurchases => 'Isubli dagiti nagatang';

  @override
  String get manageSubscription => 'Imaneho ti subscription';

  @override
  String get purchaseSuccess => 'Agyamanak! Aktibon ti gatangmo.';

  @override
  String get purchasePending => 'Agur-uray ti panaggatang…';

  @override
  String get purchaseFailed => 'Saan a nalpas ti panaggatang.';

  @override
  String get purchaseCanceled => 'Nakansela ti panaggatang.';

  @override
  String get billingUnavailable =>
      'Saan pay a mabalin ti panaggatang iti daytoy a platform. Ag-subscribe iti teleponom wenno Mac; agandar ti planmo iti tunggal device.';

  @override
  String get errQuotaExceeded =>
      'Awanen ti nabati a panangsukimatmo iti daytoy a periodo. I-upgrade ti planmo wenno gumatang iti nayon a panangsukimat.';

  @override
  String get errTrialExpired =>
      'Nalpasen ti libre a trialmo. Agpili iti plan tapno agtuloy.';

  @override
  String get errNoPlan =>
      'Masapul ti aktibo a plan para iti panangsukimat ti AI.';

  @override
  String get viewPlans => 'Kitaen dagiti plan';

  @override
  String get usageTitle => 'Panangusar';

  @override
  String get demoPurchaseNote =>
      'Demo billing: simulated laeng dagiti panaggatang iti daytoy a platform.';

  @override
  String get mostPopular => 'Kalatakan';

  @override
  String get bestValue => 'Kasayaatan a pateg';

  @override
  String get planFeaturesCommon =>
      'Ramanen ti tunggal plan ti panangbigbig iti retrato, live data, chart, paborito ken amin a 120 a pagsasao. Para iti panangsukimat ti AI ti alokasion.';

  @override
  String get searchLanguages => 'Agbiruk iti pagsasao…';

  @override
  String get noLanguageMatch => 'Awan ti maitutop a pagsasao.';

  @override
  String get aiSettings => 'Panangsukimat ti AI';

  @override
  String get aiLength => 'Kaatiddog';

  @override
  String get aiDepthBrief => 'Ababa';

  @override
  String get aiDepthStandard => 'Standard';

  @override
  String get aiDepthDeep => 'Nauneg';

  @override
  String get aiDepthBriefDesc => 'Dagiti napateg, napardas.';

  @override
  String get aiDepthStandardDesc =>
      'Naan-anay a report nga addaan iti tunggal seksion.';

  @override
  String get aiDepthDeepDesc =>
      'Ad-adu a panagbiruk iti web, panangiyasping kadagiti kakompetensia ken nauneg-uneg a detalye.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Agarup $min–$max a sao';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'agusar iti $count a panangsukimat',
      one: 'agusar iti 1 a panangsukimat',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Tukad ti agbasbasa';

  @override
  String get aiReaderBeginner => 'Baro pay';

  @override
  String get aiReaderExperienced => 'Nasanay';

  @override
  String get aiReaderBeginnerDesc =>
      'Nalaka a pagsasao; mailawlawag ti tunggal teknikal a termino.';

  @override
  String get aiReaderExperiencedDesc =>
      'Napuspuskol a teksto nga addaan iti standard a terminolohia ti pinansia.';

  @override
  String get aiCounterArgument => 'Kapigsaan a kontra-argumento';

  @override
  String get aiCounterArgumentDesc =>
      'Kanayon a maileppas ti pakabuklan iti kasayaatan nga argumento a maibusor iti bukodna a konklusion.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Agingga iti $count a panagbiruk iti web iti tunggal panangsukimat iti planmo',
      one: 'Agingga iti 1 a panagbiruk iti web iti tunggal panangsukimat iti planmo',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Standard a kaatiddog segun iti plan: Normal $normal, Pro $pro, Max $max, Ultra $ultra. 2 a basbassit ti Ababa, 2 nga ad-adu ti Nauneg.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'agingga iti $count a panagbiruk iti web',
      one: 'agingga iti 1 a panagbiruk iti web',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count a panagbiruk iti web iti tunggal panangsukimat',
      one: '1 a panagbiruk iti web iti tunggal panangsukimat',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Masapul daytoy a kaatiddog ti $needed a panangsukimat, ngem $left laengen ti nabati. Agpili iti ababbaba a kaatiddog iti Dagiti Setting wenno agala iti ad-adu a panangsukimat.';
  }

  @override
  String get outlookMarketMood => 'Rikna ti merkado';

  @override
  String get moodVeryPessimistic => 'Pesimista unay';

  @override
  String get moodPessimistic => 'Pesimista';

  @override
  String get moodNeutral => 'Neutral';

  @override
  String get moodOptimistic => 'Optimista';

  @override
  String get moodVeryOptimistic => 'Optimista unay';

  @override
  String get scenarioBull => 'Optimista a senario';

  @override
  String get scenarioBase => 'Gagangay a senario';

  @override
  String get scenarioBear => 'Pesimista a senario';

  @override
  String outlookCurrentPrice(String price) {
    return 'Agdama a presio: $price';
  }

  @override
  String get outlookKeyLevels => 'Napateg a tukad';

  @override
  String get keyLevelSupport => 'Support';

  @override
  String get keyLevelResistance => 'Resistance';

  @override
  String get keyLevelAnchor => 'Angkla';

  @override
  String get upcomingEvents => 'Dumteng a pasamak';

  @override
  String get outlookChartNote =>
      'Pattapatta a sakup; dagiti probabilidad ket nalawa a pattapatta, saan a padto.';

  @override
  String get accountTitle => 'Account';

  @override
  String get signIn => 'Ag-sign in';

  @override
  String get signOut => 'Ag-sign out';

  @override
  String get notSignedIn => 'Saan a naka-sign in';

  @override
  String get accountBenefit =>
      'Ag-sign in tapno agandar ti subscriptionmo iti amin a devicem.';

  @override
  String get accountSyncedNote =>
      'Agpada ti subscriptionmo ken nabati a panangsukimat iti tunggal device.';

  @override
  String get signInTitle => 'Ag-sign in iti WhatStock';

  @override
  String get emailLabel => 'Adres ti email';

  @override
  String get continueWithEmail => 'Agtuloy babaen ti email';

  @override
  String codeSentTo(String email) {
    return 'Nangipatulodkami iti 6-digit a code iti $email. Balido daytoy iti 10 a minuto.';
  }

  @override
  String get codeLabel => 'Code ti panag-sign in';

  @override
  String get resendCode => 'Mangipatulod iti baro a code';

  @override
  String get useDifferentEmail => 'Agusar iti sabali nga email';

  @override
  String get errInvalidCode => 'Biddut wenno nag-expire ti code.';

  @override
  String get errInvalidEmail =>
      'Pangngaasim ta iserrekmo ti umiso nga email address.';

  @override
  String get errSignInFailed =>
      'Saan a nakapag-sign in. Kitaem ti koneksionmo ket padasem manen.';

  @override
  String get checkoutWaiting =>
      'Leppasem ti panagbayad iti browsermo. Automatiko nga ag-update ti app no nalpas.';

  @override
  String get paymentViaStripe =>
      'Natalged a panagbayad iti browsermo babaen ti Stripe. Mabalin nga ikansela iti aniaman nga oras.';

  @override
  String get paymentViaStore =>
      'Masingir babaen ti App Store wenno Google Play accountmo. Mabalin nga ikansela iti aniaman nga oras iti setting ti store.';

  @override
  String get keySpace => 'Space';

  @override
  String get doubleOptionTitle => 'Mamindua a pindutem ti Option';

  @override
  String get doubleOptionSubtitle =>
      'Ti napardas a mamindua a panangpindut iti Option key ket umaw met iti WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Tapno agandar met daytoy kadagiti sabali nga app, palubosam ti WhatStock iti System Settings → Privacy & Security → Input Monitoring, sa lukatam manen ti app.';

  @override
  String get openSystemSettings => 'Lukatan ti System Settings';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Pindutem ti $shortcut wenno mamindua a pindutem ti Option uray sadino tapno ayaban ti WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Kangatuan a posibilidad';

  @override
  String get longTermToday => 'Ita nga aldaw';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years a tawen',
      one: '1 a tawen',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range iti tawen';
  }

  @override
  String longTermLikely(String price) {
    return 'nalabit $price';
  }

  @override
  String get confidenceLow => 'Nababa a kinasigurado';

  @override
  String get confidenceMedium => 'Katengngaan a kinasigurado';

  @override
  String get confidenceHigh => 'Nangato a kinasigurado';

  @override
  String get longTermNote =>
      'Dagiti atiddog a sakup ket naibatay kadagiti naisao a pattapatta ken lumawlawa bayat ti panaglabas ti tiempo. Saan a karaman ti dibidendo kadagiti presio. Nalawa a pattapatta, saan a padto.';

  @override
  String get portfolio => 'Portfolio';

  @override
  String get portfolioEmpty =>
      'Awan pay ti linaonna. Lukatan ti maysa a stock ket i-tap ti “Inayon iti portfolio” tapno masurotmo dagiti kukuam.';

  @override
  String get portfolioLocalNote =>
      'Naidulin iti daytoy a device, ken iti accountmo no naka-sign in ka. Mai-convert dagiti dagup babaen ti reference rate ti ECB; mabalin a naladaw dagiti presio.';

  @override
  String get addToPortfolio => 'Inayon iti portfolio';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Inayon ti $symbol';
  }

  @override
  String get portfolioQuantity => 'Bilang dagiti share';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Presio iti tunggal share ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Petsa ti panaggatang';

  @override
  String get portfolioAdd => 'Inayon';

  @override
  String get portfolioInvalidNumber =>
      'Iserrek ti numero a nangatngato ngem zero.';

  @override
  String portfolioAdded(String symbol) {
    return 'Nainayon ti $symbol iti portfoliom.';
  }

  @override
  String get portfolioTotalValue => 'Dagup a pateg';

  @override
  String get portfolioToday => 'Ita nga aldaw';

  @override
  String get portfolioGainLoss => 'Ganansia/pukaw';

  @override
  String homeDividendsThisYear(String amount) {
    return 'Dibidendo daytoy a tawen: $amount';
  }

  @override
  String get portfolioInvested => 'Naipuonan';

  @override
  String get portfolioAllocation => 'Panangbingay';

  @override
  String get portfolioPositions => 'Dagiti posision';

  @override
  String portfolioAvgCost(String price) {
    return 'avg. a gastos $price';
  }

  @override
  String get portfolioYourPosition => 'Ti posisionmo';

  @override
  String get portfolioPurchases => 'Dagiti gatang';

  @override
  String get portfolioRemove => 'Ikkaten';

  @override
  String get portfolioExcluded =>
      'Saan a mairaman kadagiti dagup dagiti posision nga awan ti presio wenno exchange rate.';

  @override
  String get priceAlerts => 'Dagiti alerto ti presio';

  @override
  String get setPriceAlert => 'Mangisaad iti alerto ti presio';

  @override
  String alertDialogTitle(String symbol) {
    return 'Alerto ti presio · $symbol';
  }

  @override
  String get alertKindAbove => 'Ngumato ngem';

  @override
  String get alertKindBelow => 'Bumaba ngem';

  @override
  String get alertKindMove => 'Dakkel ti garaw iti maysa nga aldaw';

  @override
  String alertTargetPrice(String currency) {
    return 'Presio ($currency)';
  }

  @override
  String get alertMovePercent => 'Inaldaw a garaw (%)';

  @override
  String get alertAlreadyMet => 'Nalabsan ti presio daytoy a tukad.';

  @override
  String get alertSave => 'Isaad ti alerto';

  @override
  String alertCreated(String symbol) {
    return 'Naisaad ti alerto para iti $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Awan pay ti alerto ti presio. Lukatan ti maysa a stock ket i-tap ti kampana tapno mangisaad.';

  @override
  String get alertsNote =>
      'Kitaen dagiti alerto iti tunggal 5 a minuto bayat nga agandar ti WhatStock. Iti computer, agtultuloy nga agandar daytoy iti menu bar wenno system tray; iti telepono, ita ket dumteng laeng dagiti alerto bayat a nakalukat ti app.';

  @override
  String alertDescAbove(String price) {
    return 'Nangatngato ngem $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Nababbaba ngem $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Inaldaw a garaw ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Na-trigger idi $date iti $price';
  }

  @override
  String get alertRearm => 'I-activate manen';

  @override
  String get alertDelete => 'Punasen';

  @override
  String alertHitAbove(String symbol, String price) {
    return 'Ngimmato ti $symbol ngem $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return 'Bimmaba ti $symbol ngem $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return 'Gimmaraw ti $symbol iti $percent ita nga aldaw';
  }

  @override
  String alertHitBody(String price) {
    return 'Agdama a presio: $price';
  }

  @override
  String get alertOpen => 'Lukatan';

  @override
  String get keepInTrayTitle =>
      'Agtultuloy nga agandar uray nakarikep ti window';

  @override
  String get keepInTraySubtitle =>
      'Agtalinaed ti WhatStock iti menu bar wenno system tray, isu nga agandar latta ti shortcut ken dagiti alerto ti presio.';

  @override
  String get termsOfUse => 'Dagiti Termino ti Panangusar';

  @override
  String get privacyPolicy => 'Annuroten iti Privacy';

  @override
  String get subscriptionLegal =>
      'Automatiko a mairenew ti subscription iti tunggal bulan agingga nga ikanselam. Babaen ti panag-subscribe, awatem dagiti Termino ti Panangusar ken ti Annuroten iti Privacy.';

  @override
  String get deleteAccount => 'Punasen ti account';

  @override
  String get deleteAccountTitle => 'Punasen ti accountmo?';

  @override
  String get deleteAccountBody =>
      'Permanente a mapunas ti accountmo ken amin a naidulin iti servermi (email, alokasion, panangusar), ket mapukaw dagiti saan a nausar a panangsukimat. Dagus a makansela ti subscription a binayadan iti browser; ti subscription iti App Store wenno Google Play ket masapul nga ikansela iti setting ti store.';

  @override
  String get deleteLocalData =>
      'Punasen met ti data iti daytoy a device (portfolio, alerto, paborito, pakasaritaan, naidulin a panangsukimat)';

  @override
  String get deleteAccountConfirm => 'Punasen a permanente';

  @override
  String get accountDeleted => 'Napunasen ti accountmo.';

  @override
  String get errDeleteAccount =>
      'Saan a mapunas ti account. Kitaem ti koneksionmo ket padasem manen.';

  @override
  String get aiTrialBriefNote =>
      'Ababa dagiti panangsukimat iti trial ken naaramid babaen ti napartak a modelo ti AI. No addaanka iti plan, magun-odmo ti kasayaatan nga AI-mi, ad-adu a panagbiruk iti web, ken ti Standard ken Nauneg a kaatiddog.';

  @override
  String get billingMonthly => 'Binulan';

  @override
  String get billingYearly => 'Tinawen';

  @override
  String get yearlyDiscount => '2 a bulan a libre';

  @override
  String get perYear => '/ tawen';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price iti tunggal bulan';
  }

  @override
  String get subscriptionLegalYearly =>
      'Automatiko a mairenew ti tinawen a subscription iti tunggal tawen agingga nga ikanselam. Babaen ti panag-subscribe, awatem dagiti Termino ti Panangusar ken ti Annuroten iti Privacy.';

  @override
  String get myAnalyses => 'Dagiti panangsukimatko';

  @override
  String get navAlerts => 'Alerto';

  @override
  String get inviteTitle => 'Sirado a preview';

  @override
  String get inviteBody =>
      'Iti agdama, babaen laeng iti imbitasion a mausar ti WhatStock. Ikabil ti code ti imbitasion nga inawatmo.';

  @override
  String get inviteCodeLabel => 'Code ti imbitasion';

  @override
  String get inviteContinue => 'Agtuloy';

  @override
  String get inviteInvalid => 'Saan nga umiso daytoy a code ti imbitasion.';

  @override
  String get inviteExpired =>
      'Nag-expire daytoy nga imbitasion. Dumawat iti baro a code iti tao a nangimbitar kenka.';

  @override
  String get inviteDeviceLimit =>
      'Maus-usaren daytoy a code ti imbitasion iti kaaduan a bilang dagiti device a maipalubos.';

  @override
  String get previewConfidential => 'Kompidensial a preview';

  @override
  String get errPreviewDailyLimit =>
      'Nadanonen ti limitasion ti panangsukimat ita nga aldaw para iti daytoy a preview. Padasem manen inton bigat.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count nga oras ti napalabasen',
      one: '1 nga oras ti napalabasen',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count nga aldaw ti napalabasen',
      one: '1 nga aldaw ti napalabasen',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'I-update daytoy a panangsukimat?';

  @override
  String staleBody(String age) {
    return 'Naaramid daytoy $age. Mabalin a nagbaliw dagiti presio, damag, ken resulta manipud idi.';
  }

  @override
  String get staleKeep => 'Ipakita ti immuna';

  @override
  String get staleRefresh => 'Agaramid iti baro';

  @override
  String seeAll(int count) {
    return 'Kitaen amin ($count)';
  }

  @override
  String get searchAnalyses => 'Biroken dagiti panangsukimatmo';

  @override
  String get deleteAnalysis => 'Ikkaten';

  @override
  String analysisDeleted(String symbol) {
    return 'Naikkat ti panangsukimat ti $symbol';
  }

  @override
  String get keyLevelAlertHint =>
      'I-tap ti maysa a tukad tapno maalertoka no madanon ti presio daytoy.';

  @override
  String get shareAnalysisTitle => 'Ibingay ti panangsukimat';

  @override
  String get shareAsImage => 'Ibingay kas ladawan';

  @override
  String get shareAsText => 'Ibingay kas teksto';

  @override
  String get shareCardFooter => 'Naaramid babaen ti WhatStock';

  @override
  String get shareCardDisclaimer =>
      'Panangsukimat ti AI · saan a balakad iti panagpuonan';

  @override
  String get referralTitle => 'Awisem dagiti gagayyem';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count a nayon a panangsukimat',
      one: '1 a nayon a panangsukimat',
    );
    return 'Ibingaymo ti kodigom. Dagus a maalan ti gayyemmo ti $_temp0, ket maalam met ti isu met laeng kalpasan ti umuna a panangsukimatna.';
  }

  @override
  String get referralYourCode => 'Ti kodigom';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Naawis: $invited · Nagunggonaan: $rewarded';
  }

  @override
  String get referralHaveCode => 'Adda kadi kodigom manipud iti gayyem?';

  @override
  String get referralRedeem => 'Usaren';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Nainayon ti $count a nayon a panangsukimat. Naragsak nga isasangpet!',
      one: 'Nainayon ti 1 a nayon a panangsukimat. Naragsak nga isasangpet!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Awan daytoy a kodigo. Kitaem ket padasem manen.';

  @override
  String get referralErrOwn => 'Saanmo a mausar ti bukodmo a kodigo.';

  @override
  String get referralErrAlready => 'Inusarmon ti kodigo ti maysa a gayyem.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count a nayon a panangsukimat',
      one: '1 a nayon a panangsukimat',
    );
    return 'Sukimatek dagiti stock babaen ti WhatStock: ladawam ti stock ket ilawlawag ti AI. Babaen ti kodigok a $code maalam ti $_temp0.';
  }

  @override
  String get referralCopied => 'Nakopya ti kodigo';

  @override
  String get onboardTitle1 => 'Retratuem ti stock';

  @override
  String get onboardBody1 =>
      'Umanayen ti screen ti brokerage app, pagiwarnak wenno logo ti kompania: bigbigen ti WhatStock ti stock ket ipakitana ti presio, chart ken napateg a numerona.';

  @override
  String get onboardTitle2 => 'Maawatam iti sumagmamano a minuto';

  @override
  String get onboardBody2 =>
      'Ilawlawag ti panangsukimat ti AI no ania ti mangtignay iti stock, dagiti peggad, ti pateg daytoy ken tallo a senario no papanan ti presio, addaan kadagiti nagtaudan ken iti bukodmo a pagsasao.';

  @override
  String get onboardTitle3 => 'Kanayon nga ammom';

  @override
  String get onboardBody3 =>
      'Ti dagiti paborito, ti portfolio-m ken dagiti alerto ti presio ipakaammoda kenka. Agtalinaed dagiti panangsukimatmo iti device-mo, nakasagana a lukatam manen.';

  @override
  String get onboardNext => 'Sumaruno';

  @override
  String get onboardStart => 'Mangrugi';

  @override
  String get onboardSkip => 'Labsan';

  @override
  String changesTitle(String date) {
    return 'Manipud iti immuna a panangsukimat ($date)';
  }

  @override
  String get changesPrice => 'Presio';

  @override
  String get changesNoMajor =>
      'Awan ti dakkel a panagbalbaliw iti pangnamnamaan.';

  @override
  String get changesPreviousSummary => 'Immuna a pakabuklan';

  @override
  String get telemetryTitle => 'Tulongannakami a pasayaaten ti WhatStock';

  @override
  String get telemetryBody =>
      'Ibinglay ti anonimo nga estadistika ti panagusar ken dagiti crash report: no ania dagiti feature ti us-usaren ken no ania ti nagbiddut. Saan a pulos dagiti stock, analisis wenno personal a datosmo. Mabalinmo a baliwan daytoy iti aniaman nga oras iti Dagiti Setting.';

  @override
  String get telemetryAllow => 'Ipalubos';

  @override
  String get telemetryDecline => 'Saan, agyamanak';

  @override
  String get telemetrySetting =>
      'Anonimo nga estadistika ken dagiti crash report';

  @override
  String get telemetrySettingHint =>
      'No kasano ti kasansan a pannakausar dagiti feature ken dagiti report ti biddut, awan ti personal a datos wenno linaon dagiti panagsapul ken analisismo.';

  @override
  String get askButton => 'Agsaludsod maipapan iti daytoy a panangsukimat';

  @override
  String askTitle(String symbol) {
    return 'Saludsod maipapan iti $symbol';
  }

  @override
  String get askIntro =>
      'Agsaludsodka iti aniaman maipapan iti panangsukimat: no ania ti kayat a sawen ti maysa a peggad, ania ti makabalbaliw iti pangnamnamaan, kasano a nabilang ti maysa a numero. Dagiti sungbat ket naibatay iti daytoy a panangsukimat ken saan a balakad iti panagpuonan.';

  @override
  String get askHint => 'Agsaludsodka…';

  @override
  String get askSend => 'Ipatulod';

  @override
  String get askThinking => 'Agpampanunot…';

  @override
  String get askSuggest1 => 'Ania ti kadakkelan a peggad?';

  @override
  String get askSuggest2 => 'Ania ti makabalbaliw iti pangnamnamaan?';

  @override
  String get askSuggest3 => 'Ilawlawagmo iti nalaka a pamay-an';

  @override
  String get askMaxReached =>
      'Dayta ti maudi a saludsod para iti daytoy a panangsukimat. Mangaramidka iti baro a panangsukimat tapno makasaludsodka pay.';

  @override
  String get errAskLimit =>
      'Nadanonmon ti limitasion dagiti saludsod ita nga aldaw. Padasem manen inton bigat.';

  @override
  String get eventTomorrow => 'Inton bigat';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'kalpasan ti $days nga aldaw',
      one: 'kalpasan ti 1 nga aldaw',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Kada-kuarter a resulta';

  @override
  String get eventBeforeOpen => 'sakbay a lukatan ti merkado';

  @override
  String get eventAfterClose => 'kalpasan a maiserra ti merkado';

  @override
  String eventEpsEstimate(String value) {
    return 'Pattapatta ti EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Manipud iti panangsukimatmo';

  @override
  String get eventDividend => 'Manamnama a dibidendo';

  @override
  String get eventDividendEstimate =>
      'Nakarkulo manipud kadagiti nairekord a bayadmo';

  @override
  String get eventsHint =>
      'Dagiti petsa ti resulta dagiti paboritom ken dagiti stock iti portfoliom para iti sumaruno a 90 nga aldaw, dagiti pasamak nga addaan petsa a minarkaan dagiti panangsukimatmo, ken dagiti dibidendo a manamnama manipud kadagiti nairekord a bayadmo.';

  @override
  String get eventsEmpty =>
      'Awan ti pasamak nga addaan petsa iti sumaruno a 90 nga aldaw. Agnayon kadagiti paborito wenno stock iti portfolio tapno makitam ditoy dagiti petsa ti resultada; dagiti nairekord a dibidendo ipakitada ti manamnama a sumaruno a bayadda.';

  @override
  String get compareTitle => 'Ikompara';

  @override
  String get compareAdd => 'Inayon ti stock';

  @override
  String get compareRemove => 'Ikkaten';

  @override
  String get compareTickerHint => 'Ticker, kas pagarigan MSFT';

  @override
  String get compareHint =>
      'Dagiti kangrunaan a numero iti abay ti tunggal maysa; nailasin ti kasayaatan a balor iti tunggal linia. Dagiti kantidad ket iti bukod a currency ti tunggal stock.';

  @override
  String get compareNoAnalysis => 'Awan pay ti panangsukimat';

  @override
  String get portfolioDividends => 'Tinawen a dibidendo';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent yield';
  }

  @override
  String get portfolioDividendNote =>
      'Ti mapakpakadaan a tinawen a dibidendo ket naibatay kadagiti dibidendo a naibayad iti napalabas a 12 a bulan; saan a garantisado dagiti bayad iti masakbayan.';

  @override
  String positionDividend(String amount) {
    return 'Dibidendo: $amount iti tinawen';
  }

  @override
  String get chartAvgCost => 'Avg. mo';

  @override
  String get chartAlertLevel => 'Alerto';

  @override
  String get marketsToday => 'Dagiti merkado ita nga aldaw';

  @override
  String get notesTitle => 'Dagiti notak';

  @override
  String get notesHint =>
      'Apay a ginatangmo, ania ti bambantayam, ania ti mangpailako kenka?';

  @override
  String get notesInfo =>
      'Naidulin iti daytoy a device, ken iti accountmo no naka-sign in ka. Ikonsiderar ti panangsukimat ti AI dagiti notam.';

  @override
  String notesSaved(String date) {
    return 'Naidulin $date';
  }

  @override
  String get peersTitle => 'Dagiti kapada a kompania';

  @override
  String get portfolioExport => 'I-export kas CSV';

  @override
  String get portfolioImport => 'I-import manipud iti CSV';

  @override
  String get portfolioImportHint =>
      'I-paste ti maysa a gatang iti tunggal linia: simbolo ti ticker, bilang, presio, currency, petsa (YYYY-MM-DD). Mabalin a mapagsisina dagiti kolum babaen ti comma, semicolon wenno tab; opsional ti linia ti header.';

  @override
  String get portfolioImportButton => 'I-import';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nainayon ti $count a transaksion',
      one: 'Nainayon ti 1 a transaksion',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nalaktawan ti $count a linia',
      one: 'Nalaktawan ti 1 a linia',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Ti portfolio, dagiti paborito, dagiti alerto ti presio ken dagiti nota ket mai-sync iti amin a devicem.';

  @override
  String syncLast(String time) {
    return 'Naudi a na-sync $time';
  }

  @override
  String get syncNow => 'I-sync itan';

  @override
  String get syncFailed =>
      'Saan a nagballigi ti pag-sync. Automatiko a padasenna manen.';

  @override
  String get alertEmailTitle => 'E-mail no agtrigger ti alerto';

  @override
  String get alertEmailOn =>
      'Kitaenmi dagiti alertom iti tunggal sumagmamano a minuto ken ipatulodandaka iti e-mail, uray no nakarikep ti app.';

  @override
  String get alertEmailSignIn =>
      'Ag-sign in babaen ti e-mailmo iti Dagiti Setting tapno makaawat iti alerto babaen ti e-mail, uray no nakarikep ti app.';

  @override
  String get portfolioHistory => 'Pateg iti panaglabas ti panawen';

  @override
  String get portfolioReviewTitle => 'Panangsukimat ti portfolio babaen ti AI';

  @override
  String get portfolioReviewIntro =>
      'Sukimaten ti AI ti intero a portfolio-mo: konsentrasion, pannakaibilang iti sektor ken kuarta, dagiti peggad a pagbibingayan dagiti stock-mo, ken dibidendo. Agusar iti 1 a panangsukimat.';

  @override
  String get portfolioReviewButton => 'Sukimaten ti portfolio-k';

  @override
  String get portfolioReviewAgain => 'Sukimaten manen';

  @override
  String get portfolioReviewWorking => 'Sukimsukimaten ti portfolio-mo…';

  @override
  String get digestTitle => 'Linawas a pakabuklan babaen ti email';

  @override
  String get digestHint =>
      'Tunggal Lunes: no kasano ti panaggaraw dagiti paboritom ken ti portfolio-m iti napalabas a lawas, ken dagiti umay a petsa ti resultada.';

  @override
  String get benchmarkTitle => 'Naikompara iti S&P 500';

  @override
  String get benchmarkTitleIndex => 'Naikompara iti maysa nga index';

  @override
  String get benchmarkHintIndex =>
      'Kasla la naipuonan ti tunggal gatang iti fund a mangsurot iti napili nga index iti isu met laeng nga aldaw. Saan a nairaman ti dibidendo; saan a mangipakpakita ti napalabas a ganansia iti masakbayan.';

  @override
  String get benchmarkYours => 'Dagiti ginatangmo';

  @override
  String benchmarkAhead(String points) {
    return '$points a percentage point a nasaysayaat ngem ti index';
  }

  @override
  String benchmarkBehind(String points) {
    return '$points a percentage point a nababbaba ngem ti index';
  }

  @override
  String get portfolioSell => 'Ilako';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Ilako ti $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Presio ti panaglako iti tunggal share ($currency)';
  }

  @override
  String get portfolioSellDate => 'Petsa ti panaglako';

  @override
  String get portfolioSellAll => 'Amin';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Adda $quantity kenka';
  }

  @override
  String get portfolioSold => 'Nailako';

  @override
  String get portfolioRealized => 'Narealisar';

  @override
  String get portfolioClosed => 'Dagiti nairikep a posision';

  @override
  String get portfolioClosedNote => 'Nailako aminen dagiti share';

  @override
  String get portfolioTransactions => 'Dagiti transaksion';

  @override
  String get portfolioRealizedByYear => 'Narealisar a ganansia iti tinawen';

  @override
  String get portfolioRealizedHint =>
      'Dagiti panaglako ket umuna a maipada kadagiti kadaanan a gatangmo (FIFO), naikomberte iti exchange rate ita nga aldaw. Para iti tax return-mo, usaren ti statement ti brokermo.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Manipud iti daytoy nga analisis, adda baro a quarterly a resulta a naipablaak ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Baro a resulta';

  @override
  String get portfolioImportBrokers =>
      'Mabigbig met dagiti export manipud iti Revolut, Trading 212, Interactive Brokers, DEGIRO, Schwab, Fidelity ken Robinhood, agraman dagiti nailako ken dibidendo (nakissayan ti withholding tax); malaksawan dagiti deposito.';

  @override
  String get portfolioImportFile => 'Agpili iti file';

  @override
  String offlineBanner(String time) {
    return 'Awan ti koneksion – maipakpakita ti naudi a naidulin a datos ($time).';
  }

  @override
  String get glossMarketCap =>
      'No mano ti pateg ti intero a kompania iti stock market: presio ti share × bilang dagiti share.';

  @override
  String get glossSharesOutstanding =>
      'No mano a share ti impablaak ti kompania. No umado, ti tunggal share ket addaan iti basbassit a paset; ti buyback ket pabassitenna.';

  @override
  String get glossPeTrailing =>
      'Presio ÷ ganansia iti tunggal share iti napalabas a 12 a bulan: no mano a tawen ti agdama a ganansia ti bayadam. Ti nababbaba ket nalaklaka, ngem dagiti napardas ti panagdakkelna ket kadawyan nga addaan iti nangato a P/E.';

  @override
  String get glossPeForward =>
      'Kas iti P/E, ngem iti ganansia a namnamaen dagiti analista para iti sumaruno a 12 a bulan. No nababbaba ngem ti trailing P/E, mamnamaan nga umadu ti ganansia.';

  @override
  String get glossPb =>
      'Presio ÷ book value (assets mainus utang) iti tunggal share. Agarup 1 ket kayatna a sawen nga ipateg ti merkado ti kompania a kas iti kukuana iti papel.';

  @override
  String get glossPs =>
      'Market value ÷ tinawen a sapul. Nasayaat para kadagiti kompania a bassit wenno awan pay ti ganansiana; idilig iti isu met laeng nga industria.';

  @override
  String get glossEvToFcf =>
      'Pateg ti kompania agraman utang (EV) ÷ ti kuarta a mapataudna iti maysa a tawen kalpasan dagiti investment. Ti nababbaba ket ad-adu a kuarta ti maalam para iti presio.';

  @override
  String get glossPeg =>
      'P/E ÷ mamnamaan a tinawen a panagdakkel ti ganansia (%). Agarup 1 ket masansan a maibilang a patas; kitaenna ti P/E iti lawag ti panagdakkel.';

  @override
  String get glossEps =>
      'Ganansia iti tunggal share iti napalabas a 12 a bulan. Ti EPS nga agngato iti panaglabas dagiti tawen ket maysa kadagiti kapigsaan a pagilasinan ti nasalun-at a kompania.';

  @override
  String get glossBeta =>
      'No kasano ti panaggunay ti stock a kadua ti merkado: 1 = kas iti merkado, 1.5 = agarup 50% a dakdakkel a panagbaliw, baba ti 1 = nakalkalma.';

  @override
  String get glossRevenueTtm =>
      'Dagup ti nailako iti napalabas a 12 a bulan, sakbay ti aniaman a gastos.';

  @override
  String get glossNetIncomeTtm =>
      'Ganansia a nabati kalpasan ti amin a gastos, interes ken buis iti napalabas a 12 a bulan.';

  @override
  String get glossGrossMargin =>
      'Ti paset ti sapul a nabati kalpasan ti direkta a gastos dagiti produkto. Ti nangato a margin ket masansan a mangipakita iti pannakabalin a mangikeddeng iti presio.';

  @override
  String get glossOperatingMargin =>
      'Ti paset ti sapul a nabati kalpasan ti panangpataray iti negosio (sueldo, abang, marketing), sakbay ti interes ken buis.';

  @override
  String get glossNetMargin =>
      'Ti paset ti sapul nga agbalin a naudi a ganansia. 20% ket kayatna a sawen nga iti tunggal 100 a nailako, 20 ti ganansia.';

  @override
  String get glossRoe =>
      'Return iti equity: tinawen a ganansia ÷ kapital dagiti makinkukua. Ipakitana no kasano kasayaat ti panangusar ti management iti kuarta dagiti shareholder; ngato ti agarup 15% ket napigsa.';

  @override
  String get glossRoa =>
      'Return iti assets: tinawen a ganansia ÷ amin a kukua ti kompania. Idilig iti isu met laeng nga industria.';

  @override
  String get glossDebtToEquity =>
      'Utang ÷ kapital dagiti makinkukua. Ti nangatngato ket ad-adu a binulod a kuarta: dakdakkel a risgo no ngumato ti interes wenno bumuntog ti negosio.';

  @override
  String get glossCurrentRatio =>
      'Short-term assets ÷ dagiti bayadan iti uneg ti maysa a tawen. Ngato ti 1 ket kayatna a sawen a kabaelan ti kompania a bayadan dagiti asideg a bayadan.';

  @override
  String get glossRevenueGrowth =>
      'No mano ti inngato ti sapul no idilig iti maysa a tawen ti napalabas.';

  @override
  String get glossEpsGrowth =>
      'No mano ti inngato ti ganansia iti tunggal share no idilig iti maysa a tawen ti napalabas.';

  @override
  String get glossDividendYield =>
      'Tinawen a dibidendo ÷ presio ti share: ti kuarta a maawatmo iti tinawen, kas porsiento ti imbayadmo.';

  @override
  String get glossDividendPerShare =>
      'Ti dibidendo a naibayad iti maysa a share iti napalabas a tawen.';

  @override
  String get glossPayoutRatio =>
      'Ti paset ti ganansia a maibayad kas dibidendo. Ngato ti 100% ket ad-adu ti ibaybayad ti kompania ngem ti magunggonana, a manmano nga agpaut.';

  @override
  String get portfolioBeta => 'Beta ti portfolio';

  @override
  String get glossPortfolioBeta =>
      'Ti beta dagiti stock-mo, natimbang segun iti pategda: agarup mano a porsiento ti panaggunay dagiti stock-mo no aggunay ti merkado iti 1%. No nangatngato ngem 1, dakdakkel ti panagbaliwda ngem ti merkado; no baba ti 1, basbassit. Saan a karaman ti cash.';

  @override
  String get portfolioTop3 => 'Top 3 a posision';

  @override
  String get glossPortfolioTop3 =>
      'No kasano kadakkel ti paset ti pateg dagiti stock-mo nga adda iti tallo a kadakkelan a posisionmo. No nangatngato daytoy, ad-adu ti madangran ti dakes a damag maipapan iti maysa laeng a kompania iti intero a portfolio.';

  @override
  String get glossDividendGrowth5y =>
      'No kasano ti kadakkel ti inyadu ti dibidendo iti tunggal share iti tinawen, iti promedio, iti napalabas a lima a tawen. Ti agtultuloy a panagdakkel ket kaaduanna a kaipapananna nga agtalek ti kompania iti cash flow-na; ti panangkissay ket masansan a pagilasinan ti pakdaar.';

  @override
  String get glossYieldOnCost =>
      'Ti dibidendo a naawat iti napalabas a 12 a bulan a nabingay iti binayadam para kadagiti share a salsalimetmetam pay. Saan a kas iti dividend yield, marukod daytoy iti bukodmo a presio ti panaggatang, saan nga iti presio ita.';

  @override
  String get glossTitle => 'Ania ti kayatna a sawen?';

  @override
  String get watchNewsTitle => 'Damag maipapan kadagiti stock-mo';

  @override
  String get undo => 'I-undo';

  @override
  String get watchSort => 'Urnosen';

  @override
  String get watchSortOwn => 'Bukodko nga urnos';

  @override
  String get watchSortGainers => 'Kadakkelan nga ngimmato umuna';

  @override
  String get watchSortLosers => 'Kadakkelan nga immababa umuna';

  @override
  String get watchSortName => 'Babaen ti ticker (A–Z)';

  @override
  String get watchHint =>
      'Guyuden ti iggaman tapno urnosen manen, i-swipe iti kannigid tapno ikkaten. Ipakita ti linia ti napalabas a 30 nga aldaw.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: nakasagan ti panaganalisam.';
  }

  @override
  String alertFromCost(String price) {
    return 'Manipud iti promedio a presio ti panaggatangmo ($price):';
  }

  @override
  String get briefTitle => 'Ita nga aldaw kadagiti stock-mo';

  @override
  String get briefButton => 'I-summarize ita';

  @override
  String get briefHint =>
      'Ababa nga AI a pakabuklan no kasano a naggaraw ita ti portfolio ken paboritom ken ania ti ibaga dagiti kabaruan a damag maipapan kadakuada. Saan nga agusar iti panaganalisa.';

  @override
  String get briefRefresh => 'I-update';

  @override
  String get sectionEarnings => 'Kada-kuarter a resulta';

  @override
  String earningsNext(String date) {
    return 'Sumaruno a report: $date';
  }

  @override
  String get earningsExpected => 'Namnamaen nga EPS';

  @override
  String get earningsReported => 'Naireport nga EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Agpada wenno nangatngato ngem ti namnamaen nga EPS iti $beats ti naudi a $total a kuarter',
      one:
          'Agpada wenno nangatngato ngem ti namnamaen nga EPS iti $beats ti 1 a kuarter',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return 'Iwaragawag ti $symbol ti kada-kuarter a resulta inton bigat';
  }

  @override
  String earningsReminderToday(String symbol) {
    return 'Iwaragawag ti $symbol ti kada-kuarter a resulta ita nga aldaw';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return 'Manamnama ita nga aldaw ti dibidendo ti $symbol';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Agarup $amount. Irekord daytoy iti portfoliom inton dumteng.';
  }

  @override
  String get dividendRemindersTitle => 'Pammalagip ti dibidendo';

  @override
  String get dividendRemindersSubtitle =>
      'Pakaammo iti aldaw a manamnama ti dibidendo segun iti ritmo dagiti nairekord a bayadmo, tapno mairekordmo daytoy';

  @override
  String get earningsRemindersTitle => 'Pammalagip ti resulta';

  @override
  String get earningsRemindersSubtitle =>
      'Pakaammo iti aldaw sakbay nga iwaragawag dagiti stock iti paboritom wenno portfoliom ti kada-kuarter a resultada';

  @override
  String addAllToFavorites(int count) {
    return 'Inayon amin kadagiti paborito ($count)';
  }

  @override
  String get portfolioImportPhoto => 'I-import manipud iti screenshot';

  @override
  String get holdingsReading => 'Basbasaen dagiti posisionmo…';

  @override
  String get holdingsReviewTitle => 'Dagiti nasarakan a posision';

  @override
  String get holdingsReviewHint =>
      'Kitaem dagiti numero sakbay nga inayonmo. Ti presio ket ti average a presio ti gatangmo iti tunggal share, saan a ti presio ita nga aldaw.';

  @override
  String get holdingsNoPrice =>
      'Awan ti average a presio ti gatang iti ladawan';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Inayon ti $count a posision',
      one: 'Inayon ti 1 a posision',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Awan ti nasarakan a posision ti stock iti daytoy a ladawan. Padasem ti screenshot ti panid dagiti posision wenno holdings iti brokermo.';

  @override
  String get week52Range => 'Sakup iti 52 a lawas';

  @override
  String week52BelowHigh(String percent) {
    return '$percent a nababbaba ngem iti kangatuan iti 52 a lawas';
  }

  @override
  String get week52AtHigh => 'Adda iti kangatuan iti 52 a lawas';

  @override
  String get alertKindTrailing => 'Bumaba manipud iti kangatuan';

  @override
  String get alertTrailingPercent => 'Ibaba manipud iti kangatuan (%)';

  @override
  String get alertTrailingHint =>
      'Surotenna ti presio nga agpangato: agpakaammo no bumaba ti presio iti kastoy manipud iti kangatuan a lebelna sipud idi insaadmo daytoy.';

  @override
  String alertDescTrailing(String percent) {
    return '$percent a ibaba manipud iti kangatuan';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'kangatuan agingga ita: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return 'Bimmaba ti $symbol iti $percent manipud iti kangatuan';
  }

  @override
  String get sectionInsiders => 'Dagiti transaksion ti insider';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count a gatang',
      one: '1 a gatang',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count a lako',
      one: '1 a lako',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Net: $shares a share';
  }

  @override
  String get insiderBuy => 'Ginatang';

  @override
  String get insiderSell => 'Inlako';

  @override
  String get insiderHint =>
      'Dagiti gatang ken lako iti open market dagiti executive ken director iti napalabas a 90 nga aldaw (SEC Form 4). Saan a mabilang ti panangusar iti option ken dagiti share award.';

  @override
  String get insiderNone =>
      'Awan ti gatang wenno lako ti insider iti open market iti napalabas a 90 nga aldaw.';

  @override
  String get analystTrend =>
      'No kasano a nagbaliw dagiti panangmatmat iti binulan';

  @override
  String get watchListAll => 'Amin';

  @override
  String get watchListNew => 'Baro a listaan';

  @override
  String get watchListName => 'Nagan ti listaan';

  @override
  String get watchListRename => 'Sukatan ti nagan ti listaan';

  @override
  String get watchListDelete => 'Ikkaten ti listaan';

  @override
  String get watchListAddTo => 'Inayon iti listaan';

  @override
  String get watchListEmpty =>
      'Awan pay ti stock iti daytoy a listaan. I-tap ti buton ti listaan iti abay ti stock tapno inayon dayta.';

  @override
  String get portfolioAskTitle => 'Saludsod maipapan iti portfolio-m';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'Backup';

  @override
  String get backupSave => 'I-save ti backup';

  @override
  String get backupSaveHint =>
      'Dagiti paboritom, listaan, portfolio, alerto ken notam iti maysa a file.';

  @override
  String get backupRestore => 'I-restore manipud iti backup';

  @override
  String get backupRestoreHint =>
      'Inayonna ti adda iti file; awan ti maikkat kadagiti adda kenka ita.';

  @override
  String get backupRestored => 'Na-restore ti backup.';

  @override
  String get backupInvalid => 'Saan a WhatStock backup daytoy a file.';

  @override
  String get allocationPositions => 'Stock';

  @override
  String get allocationSectors => 'Sektor';

  @override
  String get allocationCurrencies => 'Currency';

  @override
  String get allocationAccounts => 'Account';

  @override
  String get compareReturn1y => 'Ganansia iti 1 a tawen';

  @override
  String get compareFromHigh => 'Manipud iti kangatuan iti 52 a lawas';

  @override
  String get briefAutoTitle => 'Inaldaw a pakabuklan iti tunggal bigat';

  @override
  String get briefAutoSubtitle =>
      'Ti “Ita nga aldaw kadagiti stock-mo” ket automatiko a maaramid kalpasan ti 7:00 iti bigat bayat nga agtartaray ti app; kadagiti kompiuter, maysa a pakaammo ti mangipakaammo kenka. Agusar daytoy iti inaldaw a limitasion dagiti saludsod-mo, saan nga iti panaganalisa.';

  @override
  String get targetsButton => 'Target a panangbingay';

  @override
  String get targetsTitle => 'Target a panangbingay';

  @override
  String get targetsHint =>
      'Ikeddeng no mano a paset ti portfolio ti rumbeng nga adda iti tunggal stock. Baybayan a blangko ti field no awan ti target. Kalpasanna, ipakita ti app no ania ti gatangen wenno ilako tapno makadanon sadiay.';

  @override
  String targetsSum(String percent) {
    return 'Dagup: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Gumatang ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Ilako ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Adda iti target';

  @override
  String earningsResultBeat(String symbol) {
    return 'Linabsan ti $symbol ti namnamaen nga EPS';
  }

  @override
  String earningsResultMiss(String symbol) {
    return 'Saan a dimteng ti $symbol iti namnamaen nga EPS';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'Naireport nga EPS $actual, namnamaen $estimate';
  }

  @override
  String get newsExplain => 'Ania ti kayat a sawen daytoy?';

  @override
  String get watchAlertAll => 'Pakdaar iti dadakkel nga inaldaw a garaw';

  @override
  String get watchAlertAllHint =>
      'Pakdaar iti presio para iti tunggal stock iti daytoy a listaan nga agtimek no gumaraw iti kastoy kadakkel iti maysa nga aldaw, agpangato wenno agpababa. Dagiti stock nga addaanen iti pakdaar ket agtalinaed ti bukodda.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Naikabil ti $count a pakdaar',
      one: 'Naikabil ti 1 a pakdaar',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized =>
      'I-export ti na-realize a ganansia (CSV)';

  @override
  String get portfolioAnnualReturn => 'Tinawen a ganansia';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / tawen';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Tinawen a ganansia a natimbang iti kuarta (XIRR): ibilangna no kaano ti panaggatang ken panaglakom, isu a ti kuarta a nainayon kalpasanna ket saanna a mapadakes. Maipakita no nakalabesen ti uray maysa a tawen manipud iti umuna a gatangmo; saan a nairaman dagiti dibidendo.';

  @override
  String get eventsAddToCalendar => 'Inayon iti kalendario (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Alerto ti portfolio';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Pakaammo no ti intero a portfoliom ket gumaraw iti kastoy kadakel iti maysa nga aldaw.';

  @override
  String get portfolioMoveAlertOff => 'Naiddep';

  @override
  String portfolioMoveUp(String percent) {
    return 'Immangato ti portfoliom iti $percent ita nga aldaw';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Bimmaba ti portfoliom iti $percent ita nga aldaw';
  }

  @override
  String get whatIfTitle => 'No nagpuonanka koma?';

  @override
  String get whatIfAmount => 'Gatad';

  @override
  String whatIfResult(String amount, String period) {
    return 'Ti $amount a naipuonan $period ti napalabas ket agbalor koma ita iti';
  }

  @override
  String get whatIfNote =>
      'Naibatay laeng iti presio ti share: saan a karaman dagiti dibidendo, bayad ken buis. Saan nga ipakpakauna dagiti napalabas a ganansia dagiti masakbayan.';

  @override
  String get watchShare => 'I-share ti listaan';

  @override
  String get watchImport => 'Agnayon kadagiti ticker';

  @override
  String get watchImportHint =>
      'I-paste dagiti ticker a nasina iti comma, space wenno baro a linia – kas pagarigan, listaan nga inshare kenka ti maysa a tao.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nainayon ti $count a stock',
      one: 'Nainayon ti 1 a stock',
      zero: 'Awan ti baro a stock',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Kadakkelan umuna';

  @override
  String get positionsSortGain => 'Kangatuan a dagup a ganansia umuna';

  @override
  String get positionsSortToday => 'Kasayaatan ita nga aldaw umuna';

  @override
  String get chartMyBuys => 'Dagiti gatangmo';

  @override
  String get chartMySells => 'Dagiti inlakom';

  @override
  String get shortcutsTitle => 'Dagiti keyboard shortcut';

  @override
  String usMarketOpen(String time) {
    return 'Nakalukat ti merkado ti US · agrikep kalpasan ti $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Nakaserra ti merkado ti US · aglukat kalpasan ti $time';
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
    return '$days aldaw $hours oras';
  }

  @override
  String get dividendGoalSet =>
      'Mangikeddeng iti binulan a panggep ti dibidendo';

  @override
  String get dividendGoalTitle => 'Binulan a panggep ti dibidendo';

  @override
  String get dividendGoalAmount => 'Dibidendo iti tunggal bulan';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Agarup $amount iti tunggal bulan iti yield ita: $percent ti panggepmo a $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Agarup $amount iti tunggal bulan iti yield ita: nagun-od ti panggepmo a $goal';
  }

  @override
  String get portfolioAccount => 'Account';

  @override
  String get portfolioAccountHint => 'kas iti PERA (opsional)';

  @override
  String get portfolioAccountAdd => 'Ituding ti account';

  @override
  String get portfolioAccountsAll => 'Amin nga account';

  @override
  String get portfolioAccountNote =>
      'Dagiti transaksion ken dibidendo laeng daytoy nga account. Makita ti cash, dagiti panggep ken ti panangsukimat ti AI iti Amin nga account.';

  @override
  String get portfolioNoAccount => 'Awan ti account';

  @override
  String portfolioFee(String currency) {
    return 'Komision ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Inayon ti komision';

  @override
  String portfolioFeeRow(String amount) {
    return 'Komision: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'Tinawen a pakabuklan';

  @override
  String get portfolioProceeds => 'Sapul iti panaglako';

  @override
  String get portfolioCostBasis => 'Gastos iti panaggatang';

  @override
  String get portfolioFeesPaid => 'Komision a nabayadan';

  @override
  String get portfolioAnnualSummaryNote =>
      'Dagiti kantidad ket iti orihinal a currency, saan a naikomberte. Ti sapul iti panaglako ket nakissayan ti komision ti panaglako; ti gastos iti panaggatang ket mairaman ti komision ti panaggatang (FIFO). Para iti tax return-mo, ikombertem iti exchange rate a kiddawen ti tax authority-mo.';

  @override
  String get portfolioShare => 'Ibingay ti performance';

  @override
  String get portfolioShareHeading => 'Ti portfolio-k';

  @override
  String get portfolioTopHoldings => 'Kadakkelan a posision';

  @override
  String get portfolioShareNote =>
      'Dagiti porsiento laeng ti maibingay, awan ti kantidad.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count a posision',
      one: '1 a posision',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'Saan a balakad iti panagpuonan';

  @override
  String get contributionButton => 'Agipuonan iti baro a kuarta';

  @override
  String contributionAmount(String currency) {
    return 'Gatad a maipuonan ($currency)';
  }

  @override
  String get contributionHint =>
      'Panaggatang laeng, awan ti panaglako: dagiti posision a kaadaywan iti baba ti targetda ti umuna a makaawat iti kuarta.';

  @override
  String contributionShares(String shares) {
    return '≈ $shares a share';
  }

  @override
  String contributionMissing(String symbols) {
    return 'Awan ti agdama a presio para iti $symbols: saan a nairaman iti panagbingay.';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'No agtalinaed ti tinawen a ganansia ($rate), magun-odmo ti panggepmo iti agarup tawen $year.';
  }

  @override
  String get portfolioMaxDrawdown => 'Kadakkelan a panagbaba';

  @override
  String get glossMaxDrawdown =>
      'Ti kadakkelan a panagbaba ti pateg dagiti stock-mo manipud iti maysa a nasapsapa a kangatoan agingga iti maysa a naud-udi a kababaan, nga awan ti epekto dagiti gatang ken lako-mo (time-weighted). Ipakitana no kasano kauneg ti panagbaba a nalasatan ti portfolio-mo.';

  @override
  String watchSince(String date) {
    return 'Manipud idi inayonmo kadagiti paborito ($date)';
  }

  @override
  String get portfolioSampleTry => 'Padasen babaen ti sample a portfolio';

  @override
  String get portfolioSampleBanner =>
      'Daytoy ket sample a portfolio. Inayon dagiti bukodmo a gatang iti abayna, wenno ikkaten daytoy.';

  @override
  String get portfolioSampleRemove => 'Ikkaten ti sample';

  @override
  String get portfolioStopsAll => 'Trailing stop para iti amin a posision';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Naikabil ti $count a trailing stop',
      one: 'Naikabil ti 1 a trailing stop',
      zero: 'Addan trailing stop ti tunggal posision',
    );
    return '$_temp0';
  }

  @override
  String portfolioSinceSale(String percent) {
    return '$percent manipud idi inlakom';
  }

  @override
  String get lotPreviewRealized => 'Narealisar iti daytoy a panaglako (FIFO):';

  @override
  String lotPreviewAverage(String after, String before) {
    return 'Baro a promedio a gastos: $after (ita $before)';
  }

  @override
  String get portfolioYtdReturn => 'Ganansia iti daytoy a tawen';

  @override
  String get glossTwrYtd =>
      'Time-weighted a ganansia manipud iti rugi ti tawen (wenno manipud iti umuna a gatangmo, no daytoy a tawen dayta): tunggal aldaw ket bilangenna ti panagbaliw dagiti stock nga adda kenka iti dayta nga aldaw, ken mapagsisilpo dagiti aldaw – ti kuarta nga ikabil wenno alaem ket saan a ganansia, isu a mabalin a maikompara iti maysa nga index. Iti baba: ti napili nga index iti isu met laeng a periodo.';

  @override
  String alertDistance(String price, String percent) {
    return 'Ita $price · kurang pay ti $percent';
  }

  @override
  String get watchSortSince => 'Babaen ti panagbaliw manipud idi inayon';

  @override
  String get portfolioTodayMovers => 'Kaaduan ti gimmaraw ita nga aldaw:';

  @override
  String get lotNoteAdd => 'Inayon ti nota';

  @override
  String get lotNoteBuyHint =>
      'Apay a gumatangka? Mainayon daytoy kadagiti nota ti stock, agraman ti petsa.';

  @override
  String get lotNoteSellHint =>
      'Apay a aglakoka? Mainayon daytoy kadagiti nota ti stock, agraman ti petsa.';

  @override
  String get lotNoteBought => 'Nagatang';

  @override
  String get positionHeld => 'Kabayag ti panangiggem';

  @override
  String durationMonths(int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months a bulan',
      one: '$months a bulan',
    );
    return '$_temp0';
  }

  @override
  String durationDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days nga aldaw',
      one: '$days nga aldaw',
    );
    return '$_temp0';
  }

  @override
  String positionHeldSince(String date) {
    return 'manipud $date';
  }

  @override
  String lotPreviewWeight(String after, String before) {
    return 'Paset ti portfolio kalpasanna: $after (ita $before)';
  }

  @override
  String lotFromCash(String amount) {
    return 'Agbayad manipud iti cash (ita $amount)';
  }

  @override
  String lotToCash(String amount) {
    return 'Inayon iti cash (ita $amount)';
  }

  @override
  String get onboardTitle4 => 'Bantayam ti portfolio-m';

  @override
  String get onboardBody4 =>
      'I-import ti export ti broker-mo (Revolut, Trading 212, IBKR, DEGIRO, Schwab…) wenno inayon dagiti transaksion babaen ti ima: kitaem ti ganansiam iti abay ti maysa nga index, dagiti dibidendom ken tinawen a pakabuklan para iti tax return-mo.';

  @override
  String get lotEdit => 'I-edit';

  @override
  String lotEditTitle(String symbol) {
    return 'I-edit ti transaksion · $symbol';
  }

  @override
  String get lotSave => 'I-save';

  @override
  String dividendEditTitle(String symbol) {
    return 'I-edit ti dibidendo · $symbol';
  }

  @override
  String get activityTitle => 'Amin a transaksion';

  @override
  String get activitySearchHint => 'I-filter babaen ti ticker';

  @override
  String get activityNoMatch => 'Awan ti maitutop a transaksion iti filter.';

  @override
  String portfolioImportDuplicates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ti nairekordnan, saan a nainayon',
      one: '1 ti nairekordnan, saan a nainayon',
    );
    return '$_temp0';
  }

  @override
  String get tickerChange => 'Panagbaliw ti ticker';

  @override
  String tickerChangeTitle(String symbol) {
    return 'Panagbaliw ti ticker · $symbol';
  }

  @override
  String get tickerChangeNew => 'Baro a ticker';

  @override
  String get tickerChangeHint =>
      'No baliwan ti kompania ti tickerna (kas pagarigan FB → META): amin a transaksion, dibidendo, stock split, ti nota ken dagiti alerto ket maiyalis iti baro.';

  @override
  String tickerChanged(String symbol) {
    return 'Naiyalis iti $symbol';
  }

  @override
  String get referralErrSignIn =>
      'Ag-sign in babaen ti e-mailmo tapno mausarmo ti kodigo ti gayyem.';

  @override
  String get referralErrFull =>
      'Nausaren daytoy a kodigo iti kaadu a maipalubos.';

  @override
  String portfolioGoalReachedBody(String value) {
    return 'Ti pateg ti portfoliom ita ket $value.';
  }

  @override
  String get errAiTruncated =>
      'Naputed ti panangsukimat sakbay a nalpas. Pangngaasim ta padasem manen – saan a nabawasan ti alokasionmo.';

  @override
  String get errImageUnsupported =>
      'Saan a mabasa daytoy a ladawan. I-save daytoy kas JPEG wenno PNG ket padasem manen.';

  @override
  String get errRateLimited =>
      'Adu unay ti request iti ababa a tiempo. Pangngaasim ta agurayka iti maysa a minuto ket padasem manen.';

  @override
  String get watchListNameTaken =>
      'Addan ti listaan nga addaan iti daytoy a nagan.';

  @override
  String watchListLimit(int max) {
    return 'Mabalinmo ti agaddaan agingga iti $max a listaan.';
  }

  @override
  String portfolioBuyBelowSold(String quantity) {
    return 'Di kumurang iti $quantity – kasta kaadu ti nailakon';
  }

  @override
  String get restoreNothing => 'Awan ti nasarakan a nagatang idi a maisubli.';

  @override
  String get manageSubscriptionElsewhere =>
      'Awan ti subscription a maimaneho ditoy. Ti subscription a nagatang iti App Store wenno Google Play ket maimaneho iti setting ti store.';

  @override
  String get backupFailed =>
      'Saan a ma-save ti backup. Pangngaasim ta padasem manen.';

  @override
  String get syncTooLarge =>
      'Dakkel unay ti datam tapno mai-sync iti accountmo. Punasem dagiti transaksion wenno nota a saanmonton a kasapulan, ket padasenna manen.';

  @override
  String get noteFull =>
      'Napno dagiti nota daytoy a stock, isu a saan a nainayon daytoy nga entry. Paababaem dagiti nota sa padasem manen.';

  @override
  String portfolioNoRateFor(String symbols) {
    return 'Awan ti exchange rate para iti $symbols.';
  }

  @override
  String dividendsNotConverted(int count, String currencies) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Awan ti exchange rate ti $count a dibidendo iti $currencies, isu a saan a mairaman kadagiti dagup.',
      one:
          'Awan ti exchange rate ti 1 a dibidendo iti $currencies, isu a saan a mairaman kadagiti dagup.',
    );
    return '$_temp0';
  }

  @override
  String get signOutTitle => 'Ag-sign out?';

  @override
  String get signOutBody =>
      'Agtalinaed iti accountmo ti portfoliom, dagiti listaam, dagiti alerto ti presio ken dagiti notam, ket maikkatdanto iti daytoy a device. Ag-sign in manen tapno maisubli dagitoy.';

  @override
  String get signOutUnsaved =>
      'Adda dagiti panagbalbaliw a saan a naidulin iti accountmo (awan ti koneksion?). No ag-sign out ka ita, mapukawdanto.';

  @override
  String get signOutAnyway => 'Ag-sign out latta';

  @override
  String get fileTooLarge => 'Dakkel unay daytoy a file tapno maluktan ditoy.';

  @override
  String get portfolioGoalSet => 'Mangikeddeng iti panggep';

  @override
  String get portfolioGoalTitle => 'Panggep ti portfolio';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent ti panggepmo a $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Nagun-od ti panggep a $amount';
  }

  @override
  String get portfolioGoalRemove => 'Ikkaten ti panggep';

  @override
  String get alertEdit => 'I-edit ti alerto';

  @override
  String get positionOpenLots => 'Adda pay kenka (kadaanan nga umuna)';

  @override
  String get lotRemoved => 'Naikkat ti transaksion';

  @override
  String get alertDeleted => 'Naikkat ti pakdaar';

  @override
  String get alertsClearTriggered => 'Ikkaten dagiti na-trigger a pakdaar';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Naikkat ti $count a pakdaar',
      one: 'Naikkat ti 1 a pakdaar',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Umuna a screen';

  @override
  String get allocationCountries => 'Pagilian';

  @override
  String get newsExplainNoteResearch =>
      'Panangilawlawag ti AI: sapulenna dagiti pudno iti web, lukatanna ti artikulo ken timbangenna no kasano a mapagtalkan ti taudan. Saan a balakad iti panagpuonan. Agusar daytoy iti inaldaw a limitasion dagiti saludsod-mo, saan nga iti panaganalisa.';

  @override
  String get sourceOfficial => 'Opisial';

  @override
  String get sourcePressRelease => 'Pakaammo';

  @override
  String get sourceMajorNews => 'Dakkel a media';

  @override
  String get sourceOpinion => 'Kapanunotan';

  @override
  String get earningsSummaryButton => 'Ania ti linaon ti kabaruan a report?';

  @override
  String get earningsSummaryNote =>
      'Pakabuklan ti AI iti pakaammo ti resulta ti kompania ken dagiti damag maipapan iti daytoy a nasarakanna iti web. Saan a balakad iti panagpuonan. Agusar daytoy iti inaldaw a limitasion dagiti saludsod-mo, saan nga iti panaganalisa.';

  @override
  String get compareLastSurprise => 'EPS napalabas a kuarter vs. namnamaen';

  @override
  String get compareNextReport => 'Sumaruno a report';

  @override
  String get resolvingDescription =>
      'Amammuen no ania a stock ti kayatmo a sawen…';

  @override
  String get instrumentTitle => 'Maipapan iti daytoy nga instrumento';

  @override
  String get instrumentHint =>
      'Awan ti profile ti kompania para iti daytoy a simbolo – mabalin a ETF, fund wenno depositary receipt daytoy. Saludsodem ti AI no ania daytoy, ania ti linaonna ken mano ti gastosna.';

  @override
  String get instrumentAsk => 'Ania daytoy?';

  @override
  String get instrumentNote =>
      'Panangilawlawag ti AI manipud iti fund page ti nangipaay ken kadagiti financial site a nasarakanna iti web. Saan a balakad iti panagpuonan. Agusar daytoy iti inaldaw a limitasion dagiti saludsod-mo, saan nga iti panaganalisa.';

  @override
  String suggestAskAi(String query) {
    return 'Isaludsod iti AI: “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Awan ti agdama a presio para iti $symbols.';
  }

  @override
  String get eventsRecentResults => 'Kabarbaro a naireport a resulta';

  @override
  String get saveToNotes => 'I-save kadagiti notak';

  @override
  String get savedToNotes => 'Nai-save kadagiti notam';

  @override
  String get portfolioDividendsReceived => 'Naawat a dibidendo';

  @override
  String get portfolioDividendsThisYear => 'Daytoy a tawen';

  @override
  String get portfolioDividendsAllTime => 'Amin a panawen';

  @override
  String get portfolioAddDividend => 'Inayon ti dibidendo';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Kantidad a naawat ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Petsa ti panagbayad';

  @override
  String get portfolioDividendsEmpty =>
      'Awan pay ti nairekord a dibidendo. Inayon dagitoy babaen ti ima, wenno i-import ti export ti broker-mo – maala met dagiti linia ti dibidendo daytoy.';

  @override
  String get portfolioSplit => 'Stock split';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Stock split: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Mabalbaliwan dagiti panaggatang ken panaglako nga addaan petsa sakbay ti split: mapaadu ti bilang dagiti share ket mabingay ti presio ti tunggal share, isu nga agtalinaed ti gastos.';

  @override
  String get portfolioSplitRatio => 'Ratio (baro : daan)';

  @override
  String get portfolioSplitRatioError =>
      'Ikabil ti ratio a kas 10:1, wenno 1:10 para iti reverse split.';

  @override
  String get portfolioSplitDate => 'Petsa ti split';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Stock split $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Naikkat ti stock split';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count stock split ti nainayon',
      one: '1 stock split ti nainayon',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count a dibidendo ti nainayon',
      one: '1 dibidendo ti nainayon',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'I-export dagiti dibidendo (CSV)';

  @override
  String get portfolioDividendDeleted => 'Naikkat ti dibidendo';

  @override
  String get portfolioDividendsHint =>
      'Dagiti kantidad kas iti isasangpetda iti account-mo, iti currency ti panagbayad; dagiti total ket na-convert iti rate ita. Para iti tax return-mo, usarem ti statement ti broker-mo.';

  @override
  String get awayTitle => 'Bayat nga awanka';

  @override
  String awaySince(String when) {
    return 'Manipud $when';
  }

  @override
  String get awayQuiet => 'Awan ti nagbaliw unay.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count nga alerto ti na-trigger',
      one: '1 nga alerto ti na-trigger',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Nangipablaak iti resulta: $symbols';
  }

  @override
  String get moveWhyButton => 'Apay nga aggaraw ita?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent ita';
  }

  @override
  String get moveWhyNote =>
      'Panangilawlawag ti AI manipud kadagiti damag ita nga nasarakan iti web; mabalin a saan a maammuan wenno sabali ti pudno a rason. Saan a balakad iti panagpuonan. Us-usarenna ti inaldaw a kuota ti saludsodmo, saan nga analisis.';

  @override
  String get sectionTechnical => 'Teknikal a ladawan';

  @override
  String get labelSma50 => 'Average ti 50 nga aldaw';

  @override
  String get labelSma200 => 'Average ti 200 nga aldaw';

  @override
  String get labelRsi => 'RSI (14 nga aldaw)';

  @override
  String get labelVolatility30 => 'Volatility (30 nga aldaw)';

  @override
  String techAbove(String percent) {
    return '$percent iti ngato';
  }

  @override
  String techBelow(String percent) {
    return '$percent iti baba';
  }

  @override
  String get techOverbought => 'overbought';

  @override
  String get techOversold => 'oversold';

  @override
  String get techNeutral => 'neutral';

  @override
  String get techGoldenCross =>
      'Ti average ti 50 nga aldaw ket adda iti ngato ti average ti 200 nga aldaw – pangato a tendensia sigun iti klasiko a panagbasa.';

  @override
  String get techDeathCross =>
      'Ti average ti 50 nga aldaw ket adda iti baba ti average ti 200 nga aldaw – pababa a tendensia sigun iti klasiko a panagbasa.';

  @override
  String get glossSma50 =>
      'Ti average a closing price iti napalabas a 50 nga aldaw ti panagtagilako. Ti presio a nangatngato ngem daytoy ket masansan a mabasa kas kinapigsa iti ababa a panawen, ti nababbaba kas kinakapuy.';

  @override
  String get glossSma200 =>
      'Ti average a closing price iti napalabas a 200 nga aldaw ti panagtagilako – ti klasiko a linia ti tendensia iti atiddog a panawen. Adu nga investor ti mangibilang iti presio a nangatngato ngem daytoy kas pangato a tendensia iti atiddog a panawen.';

  @override
  String get glossRsi =>
      'Relative strength index: idiligna dagiti kabbaro a ganansia kadagiti kabbaro a pukaw iti rukod a 0–100. Iti ngato ti 70 masansan a maawagan ti stock nga overbought (napartak a nangato), iti baba ti 30 oversold – ngem ti napigsa a tendensia mabalin nga agtalinaed sadiay iti nabayag.';

  @override
  String get glossVolatility =>
      'Kasano ti kadakkel ti panagbaliw ti presio iti inaldaw, narukod iti maysa a tawen: ti 20% kayatna a sawen nga iti gagangay a tawen aggaraw ti presio iti uneg ti agarup ±20%. Nangatngato a volatility kayatna a sawen dakdakkel a garaw iti dua a direksion.';

  @override
  String get techNote =>
      'Nakwenta manipud kadagiti inaldaw a closing price. Dagiti teknikal a senial deskribirenda ti napalabas, saan a ti masakbayan.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$above iti $count a posision ti nangatngato iti average ti 200 nga aldaw da';
  }

  @override
  String get watchSignalsTitle => 'Dagiti signal';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · oversold';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · overbought';
  }

  @override
  String get signalCrossedAbove =>
      'immuli iti ngato ti average ti 200 nga aldaw';

  @override
  String get signalCrossedBelow =>
      'bimmaba iti baba ti average ti 200 nga aldaw';

  @override
  String get signalAlertsTitle => 'Dagiti pakaammo ti teknikal a senial';

  @override
  String get signalAlertsSubtitle =>
      'Maminsan iti maysa nga aldaw, no ti maysa a stock a sursurotem ket agbalin nga oversold wenno overbought (RSI), wenno ti presiona ket lumasat iti average ti 200 nga aldaw.';

  @override
  String get signalAlertsNotification => 'Dagiti teknikal a senial';

  @override
  String get glossaryPageTitle => 'Glosario';

  @override
  String get glossaryPageSubtitle =>
      'Simple a panangilawlawag iti tunggal numero nga ipakita ti app, manipud P/E agingga RSI';

  @override
  String get glossarySearchHint => 'Agbirok iti glosario';

  @override
  String get portfolioCash => 'Cash';

  @override
  String get portfolioCashTitle => 'Balanse ti cash';

  @override
  String get portfolioCashHint =>
      'Kuarta a saan pay a naipuonan iti brokermo, iti tunggal currency. Maibilang daytoy iti dagup a pateg ken panangbingay; saan nga iti ganansia.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Gatad ($currency)';
  }

  @override
  String get portfolioCashEdit => 'I-set ti balanse ti cash';

  @override
  String get portfolioDividendsByMonth => 'Kada bulan';

  @override
  String get dividendsLegendReceived => 'Naawat';

  @override
  String get dividendsLegendExpected => 'Namnamaen';

  @override
  String get portfolioDividendsExpected => 'Manamnama a sumaruno';

  @override
  String get portfolioDividendsExpectedNote =>
      'Nakarkulado manipud kadagiti petsa ken gatad dagiti bayad nga inrekordmo; mabalin a baliwan wenno laktawan dagitoy dagiti kompania.';

  @override
  String portfolioDividendAround(String date) {
    return 'agarup $date';
  }
}
