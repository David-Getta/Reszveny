// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ganda Luganda (`lg`).
class AppLocalizationsLg extends AppLocalizations {
  AppLocalizationsLg([String locale = 'lg']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Kuba ekifaananyi ky\'omugabo omanye buli kimu ku gwo.';

  @override
  String get homeHint =>
      'Satifikeeti y\'emigabo, ssirini ya app y\'omusuubuzi w\'emigabo, olupapula lw\'amawulire oba akabonero ka kkampuni – ekintu kyonna ekiraga omugabo.';

  @override
  String get takePhoto => 'Kuba ekifaananyi';

  @override
  String get chooseFromGallery => 'Londa mu bifaananyi';

  @override
  String get chooseImage => 'Londa ekifaananyi';

  @override
  String get enterTickerManually => 'Wandiika ticker mu ngalo';

  @override
  String get tickerInputLabel => 'Akabonero ka ticker';

  @override
  String get tickerInputHint => 'okugeza: AAPL';

  @override
  String get lookUp => 'Noonya';

  @override
  String demoModeBanner(String symbols) {
    return 'Embeera ya demo – tewali kisumuluzo kya data y\'akatale ekiteereddwawo. Data ey\'okulabirako eriwo ku: $symbols.';
  }

  @override
  String get recognizing => 'Twekenneenya ekifaananyi…';

  @override
  String get loadingData => 'Tutikka data…';

  @override
  String get noCandidatesTitle => 'Tewali mugabo gumanyiddwa';

  @override
  String get noCandidatesBody =>
      'Tetusobodde kuzuula mugabo mu kifaananyi kino. Gezaako ekifaananyi ekirabika obulungi, oba wandiika ticker mu ngalo.';

  @override
  String get whatWeSaw => 'Bye twalabye';

  @override
  String get chooseCandidateTitle => 'Mugabo ki gw\'obadde otegeeza?';

  @override
  String confidencePercent(int percent) {
    return 'Obukakafu $percent%';
  }

  @override
  String get settings => 'Ensengeka';

  @override
  String get language => 'Olulimi';

  @override
  String get systemLanguage => 'Olulimi lwa sisitemu';

  @override
  String get about => 'Ebikwata ku app';

  @override
  String get disclaimer =>
      'App eno ewa mawulire gokka era si magezi ga kusiga nsimbi. Data eyinza okulwawo oba obutaba ntuufu.';

  @override
  String dataSource(String source) {
    return 'Ensibuko ya data: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Okuzuula: $source';
  }

  @override
  String get retry => 'Gezaako nate';

  @override
  String get cancel => 'Sazaamu';

  @override
  String get ok => 'Kale';

  @override
  String get close => 'Ggalawo';

  @override
  String get errorGeneric => 'Waliwo ekitagenze bulungi.';

  @override
  String get errorSectionUnavailable => 'Ekitundu kino tekisobodde kutikkibwa.';

  @override
  String get notAvailable => 'tewali';

  @override
  String get sectionIdentity => 'Ebimanyisa';

  @override
  String get sectionPrice => 'Ebbeeyi';

  @override
  String get sectionValuation => 'Omuwendo';

  @override
  String get sectionFinancials => 'Eby\'ensimbi';

  @override
  String get sectionDividend => 'Amagoba ku migabo';

  @override
  String get sectionProfile => 'Ebikwata ku kkampuni';

  @override
  String get sectionAnalysts => 'Endowooza z\'abeekenneenya';

  @override
  String get sectionNews => 'Amawulire';

  @override
  String get sectionRecognition => 'Ebikwata ku kuzuula';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Akatale k\'emigabo';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Ensimbi';

  @override
  String get labelCountry => 'Eggwanga';

  @override
  String get labelIndustry => 'Omulimu';

  @override
  String get labelSector => 'Ekitundu';

  @override
  String get labelWebsite => 'Omukutu';

  @override
  String get labelIpoDate => 'Olunaku lwa IPO';

  @override
  String get labelMarketCap => 'Omuwendo ku katale';

  @override
  String get labelSharesOutstanding => 'Emigabo egyafulumizibwa';

  @override
  String get labelEmployees => 'Abakozi';

  @override
  String get labelCeo => 'Ssenkulu';

  @override
  String get labelHeadquarters => 'Ekitebe ekikulu';

  @override
  String get labelDescription => 'Ennyinnyonnyola';

  @override
  String get labelLastPrice => 'Ebbeeyi esembayo';

  @override
  String get labelChange => 'Enkyukakyuka';

  @override
  String get labelOpen => 'Okuggulawo';

  @override
  String get labelDayHigh => 'Waggulu ku lunaku';

  @override
  String get labelDayLow => 'Wansi ku lunaku';

  @override
  String get labelPreviousClose => 'Okuggalawo okwasembyeyo';

  @override
  String get labelWeek52High => 'Waggulu mu wiiki 52';

  @override
  String get labelWeek52Low => 'Wansi mu wiiki 52';

  @override
  String get labelAverageVolume10d => 'Obungi obwa wakati (ennaku 10)';

  @override
  String updatedAt(String time) {
    return 'Kyazzibwa obuggya $time';
  }

  @override
  String get labelPeTrailing => 'P/E (ewedde)';

  @override
  String get labelPeForward => 'P/E (esuubirwa)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / ensimbi ezisigalawo (FCF)';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Ensimbi eziyingidde (TTM)';

  @override
  String get labelNetIncomeTtm => 'Amagoba amalongoofu (TTM)';

  @override
  String get labelGrossMargin => 'Amagoba ag\'awamu (%)';

  @override
  String get labelOperatingMargin => 'Amagoba g\'emirimu (%)';

  @override
  String get labelNetMargin => 'Amagoba amalongoofu (%)';

  @override
  String get labelRoe => 'Amagoba ku nsimbi z\'abannannyini (ROE)';

  @override
  String get labelRoa => 'Amagoba ku by\'obugagga (ROA)';

  @override
  String get labelDebtToEquity => 'Ebbanja / ensimbi z\'abannannyini';

  @override
  String get labelCurrentRatio => 'Omugerageranyo gw\'okusasula amabanja';

  @override
  String get labelRevenueGrowth => 'Okukula kw\'ensimbi eziyingidde (YoY)';

  @override
  String get labelEpsGrowth => 'Okukula kwa EPS (YoY)';

  @override
  String get labelDividendYield => 'Amagoba ku migabo (%)';

  @override
  String get labelDividendPerShare => 'Amagoba ku buli mugabo';

  @override
  String get labelPayoutRatio => 'Ekitundu ky\'amagoba ekigabibwa';

  @override
  String get labelYieldOnCost => 'Amagoba ku bbeeyi ey\'okugula (%)';

  @override
  String get labelDividendGrowth5y =>
      'Okukula kw\'amagoba ku migabo (emyaka 5)';

  @override
  String get dividendNone =>
      'Tewali magoba ku migabo agasasuddwa mu myezi 12 egiyise.';

  @override
  String get dividendOnYourShares => 'Ku migabo gyo, buli mwaka';

  @override
  String get labelConsensus => 'Endowooza ya bonna';

  @override
  String get ratingStrongBuy => 'Gula nnyo';

  @override
  String get ratingBuy => 'Gula';

  @override
  String get ratingHold => 'Kuuma';

  @override
  String get ratingSell => 'Tunda';

  @override
  String get ratingStrongSell => 'Tunda nnyo';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Abeekenneenya $count',
      one: 'Omwekenneenya 1',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Ekiseera: $period';
  }

  @override
  String get noNews => 'Tewali mawulire ga kaakano.';

  @override
  String get openArticle => 'Ggulawo ekiwandiiko';

  @override
  String get openLinkFailed => 'Tekisobose kuggulawo link.';

  @override
  String get recognitionSummary => 'Mu bufunze';

  @override
  String get recognitionEvidence => 'Lwaki tulowooza bwe tutyo';

  @override
  String get recognitionRawText => 'Ebiwandiiko ebisomeddwa mu kifaananyi';

  @override
  String get errMissingAnthropicKey =>
      'Okuzuula ebifaananyi tekunnategekebwa (tewali ANTHROPIC_API_KEY). Wandiika ticker mu ngalo.';

  @override
  String get errRecognitionUnreachable =>
      'Tetusobodde kutuuka ku mpeereza y\'okuzuula ebifaananyi. Kebera yintaneeti yo.';

  @override
  String errRecognitionHttp(String status) {
    return 'Empeereza y\'okuzuula ezzizzaayo ensobi (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Empeereza y\'okuzuula tesobodde kukola ku kifaananyi kino.';

  @override
  String get errRecognitionTruncated =>
      'Okuddamu kw\'okuzuula kusaliddwako. Gezaako nate.';

  @override
  String get errRecognitionBadResponse =>
      'Okuddamu okutasuubirwa okuva mu mpeereza y\'okuzuula.';

  @override
  String get errRecognitionEmpty =>
      'Empeereza y\'okuzuula ezzizzaayo okuddamu okutaliimu kintu.';

  @override
  String get errMissingFinnhubKey =>
      'Data y\'akatale tennategekebwa (tewali FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Tetusobodde kutuuka ku mpeereza ya data y\'akatale. Kebera yintaneeti yo.';

  @override
  String get errMarketRateLimited =>
      'Okusaba kungi nnyo eri empeereza ya data y\'akatale. Lindako eddakiika emu.';

  @override
  String errMarketHttp(String status) {
    return 'Empeereza ya data y\'akatale ezzizzaayo ensobi (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Okuddamu okutasuubirwa okuva mu mpeereza ya data y\'akatale.';

  @override
  String errNoQuote(String symbol) {
    return 'Tewali data ya bbeeyi efunise ku $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Tewali bikwata ku kkampuni bifunise ku $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Embeera ya demo ekola ku $symbols kyokka. Gattako FINNHUB_API_KEY ofune data ey\'ekiseera kino.';
  }

  @override
  String errUnknown(String detail) {
    return 'Waliwo ekitagenze bulungi: $detail';
  }

  @override
  String get newSearch => 'Okunoonya okupya';

  @override
  String get recentSearches => 'Ebya kaakano';

  @override
  String get noRecentSearches => 'Tonnaba kunoonya kintu.';

  @override
  String get clearRecent => 'Sangula ebya kaakano';

  @override
  String get greeting => 'Tulabe mugabo ki?';

  @override
  String get searchHint => 'Ticker oba erinnya lya kkampuni';

  @override
  String get attachImage => 'Gattako ekifaananyi';

  @override
  String get searchResultsTitle => 'Ebivudde mu kunoonya';

  @override
  String errNoResults(String query) {
    return 'Tewali migabo gizuuliddwa ku “$query”.';
  }

  @override
  String get quickBarHint => 'Wandiika ticker oba erinnya lya kkampuni…';

  @override
  String get openFullWindow => 'Ggulawo eddirisa';

  @override
  String hotkeyHint(String shortcut) {
    return 'Nyiga $shortcut wonna w\'oli okuyita WhatStock.';
  }

  @override
  String get trayOpen => 'Ggulawo WhatStock';

  @override
  String get trayQuickSearch => 'Okunoonya okw\'amangu';

  @override
  String get trayQuit => 'Fuluma';

  @override
  String get appearance => 'Endabika';

  @override
  String get themeSystem => 'Sisitemu';

  @override
  String get themeDark => 'Ekizikiza';

  @override
  String get themeLight => 'Ekitangaala';

  @override
  String get back => 'Ddayo';

  @override
  String get aiSectionTitle => 'Okwekenneenya kwa AI';

  @override
  String get aiIntro =>
      'Okwekenneenya okujjuvu okuwandiikiddwa AI: amawulire ag\'akaakano mu bufunze, bizinensi, amaanyi, akabi n\'ebintu ebikwekeddwa, omuwendo, endaba y\'ebbeeyi n\'embeera eziyinza okubaawo okuva mu ndaba ez\'endowooza y\'abantu, ez\'embeera z\'abantu, ez\'ekikugu n\'ez\'ebyenfuna eby\'awamu, n\'eby\'okugoberera.';

  @override
  String get aiGenerate => 'Kola okwekenneenya';

  @override
  String get aiRegenerate => 'Ddamu okukola';

  @override
  String get aiGenerating =>
      'Tutegeka okwekenneenya… kino kiyinza okutwala eddakiika emu oba bbiri.';

  @override
  String get aiSources => 'Ensibuko';

  @override
  String aiGeneratedAt(String time) {
    return 'Kyakolebwa $time';
  }

  @override
  String get aiDisclaimer =>
      'Okwekenneenya okukoleddwa AI nga kwesigamiziddwa ku data ya lukale n\'amawulire ag\'akaakano. Kuyinza okubaamu ensobi oba okuba nga kukaddiye, era si magezi ga kusiga nsimbi.';

  @override
  String get errAiNotConfigured =>
      'Okwekenneenya kwa AI tekunnategekebwa (tewali ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Tetusobodde kutuuka ku mpeereza ya AI. Kebera yintaneeti yo.';

  @override
  String errAiHttp(String status) {
    return 'Empeereza ya AI ezzizzaayo ensobi (HTTP $status).';
  }

  @override
  String get errAiRefused =>
      'Empeereza ya AI egaanye okwekenneenya omugabo guno.';

  @override
  String get errAiBadResponse =>
      'Okuddamu okutasuubirwa okuva mu mpeereza ya AI.';

  @override
  String get sectionChart => 'Ekipande ky\'ebbeeyi';

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
      'Ebyafaayo by\'ebbeeyi tebifunika mu nsibuko ya data eriwo kati.';

  @override
  String get sectionStatements => 'Lipoota z\'ensimbi (ez\'omwaka)';

  @override
  String get labelFiscalYear => 'Omwaka gw\'ebyensimbi';

  @override
  String get labelRevenue => 'Ensimbi eziyingidde';

  @override
  String get labelNetIncome => 'Amagoba amalongoofu';

  @override
  String get labelTotalAssets => 'Eby\'obugagga byonna';

  @override
  String get labelTotalLiabilities => 'Amabanja gonna';

  @override
  String get labelEquity => 'Ensimbi z\'abannannyini migabo';

  @override
  String get labelOperatingCashFlow => 'Ensimbi eziva mu mirimu';

  @override
  String get statementsUnavailable =>
      'Lipoota z\'ensimbi ezaafulumizibwa tezifunika ku mugabo guno.';

  @override
  String get launchAtLogin => 'Ggulawo ng\'oyingidde';

  @override
  String get hotkeyLabel => 'Shortcut ya buli wamu';

  @override
  String get hotkeyRecordHint =>
      'Nyiga wano, oluvannyuma onyige obupeesa obupya';

  @override
  String get hotkeyReset => 'Zzaawo ebyasooka';

  @override
  String get pasteImage => 'Teeka ekifaananyi okuva ku clipboard';

  @override
  String get errClipboardNoImage => 'Tewali kifaananyi ku clipboard.';

  @override
  String get favorites => 'By\'oyagala';

  @override
  String get addToFavorites => 'Gattako ku by\'oyagala';

  @override
  String get removeFromFavorites => 'Ggyako ku by\'oyagala';

  @override
  String get noFavorites =>
      'Tonnaba kugattako kintu. Nyiga emmunyeenye ku mugabo okugugattako.';

  @override
  String get displayCurrency => 'Ensimbi ez\'okulaga';

  @override
  String get displayCurrencyNone => 'Ensimbi z\'omugabo zokka';

  @override
  String labelConverted(String currency) {
    return '≈ mu $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Omuwendo: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Ebipya';

  @override
  String currentVersion(String version) {
    return 'Vezoni $version';
  }

  @override
  String get autoUpdate => 'Teekamu ebipya byokka';

  @override
  String get checkForUpdates => 'Kebera ebipya';

  @override
  String get updateChecking => 'Tukebera ebipya…';

  @override
  String get updateUpToDate => 'Olina vezoni esembyeyo.';

  @override
  String updateAvailable(String version) {
    return 'Vezoni $version eriwo.';
  }

  @override
  String get updateDownloading => 'Tuwanula ebipya mu kasirise…';

  @override
  String get updateDownloaded =>
      'Ebipya byetegese. Ddamu otandike app okubiteekamu.';

  @override
  String get updateNow => 'Zza obuggya';

  @override
  String get restartNow => 'Ddamu otandike';

  @override
  String get updatesViaStore =>
      'Ebipya bijja byokka okuyita mu dduuka lya app.';

  @override
  String get updateCheckFailed => 'Tetusobodde kukebera bipya.';

  @override
  String get subscription => 'Okwewandiisa';

  @override
  String get planTrial => 'Okugezesa';

  @override
  String get planNormal => 'Ekya bulijjo';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Tewali nteekateeka ekola';

  @override
  String planAnalysesPerMonth(int count) {
    return 'Okwekenneenya $count buli mwezi';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Okugezesa okw\'obwereere okw\'ennaku $days n\'okwekenneenya $count';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Osigazza ennaku $days ez\'okugezesa',
      one: 'Osigazza olunaku 1 olw\'okugezesa',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Okugezesa kwo okw\'obwereere kuweddeko. Londa enteekateeka okweyongera okwekenneenya.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Osigazza okwekenneenya $remaining ku $total mu kiseera kino';
  }

  @override
  String extraCredits(int count) {
    return 'Okwekenneenya okw\'okwongerako $count';
  }

  @override
  String renewsOn(String date) {
    return 'Kizzibwa obuggya $date';
  }

  @override
  String get choosePlan => 'Londa enteekateeka';

  @override
  String get currentPlan => 'Enteekateeka yo eya kati';

  @override
  String get subscribe => 'Wewandiise';

  @override
  String get perMonth => '/ omwezi';

  @override
  String get extraPacksTitle =>
      'Weetaaga ebisingawo? Gula okwekenneenya okw\'okwongerako';

  @override
  String get extraPacksHint =>
      'Okwekenneenya okw\'okwongerako tekuggwaako era kukozesebwa ng\'ekyo ky\'okkirizibwa buli mwezi kiwedde.';

  @override
  String get buy => 'Gula';

  @override
  String get restorePurchases => 'Zzaawo bye wagula';

  @override
  String get manageSubscription => 'Ddukanya okwewandiisa';

  @override
  String get purchaseSuccess => 'Weebale! Ky\'oguze kikola.';

  @override
  String get purchasePending => 'Okugula kulindiridde…';

  @override
  String get purchaseFailed => 'Okugula tekusobodde kumalirizibwa.';

  @override
  String get purchaseCanceled => 'Okugula kusaziddwamu.';

  @override
  String get billingUnavailable =>
      'Okugula tekunnabaawo ku sisitemu eno. Wewandiise ku ssimu yo oba ku Mac; enteekateeka yo ejja kukola ku buli kyuma.';

  @override
  String get errQuotaExceeded =>
      'Tosigazza kwekenneenya mu kiseera kino. Kuza enteekateeka yo oba gula okwekenneenya okw\'okwongerako.';

  @override
  String get errTrialExpired =>
      'Okugezesa kwo okw\'obwereere kuweddeko. Londa enteekateeka okweyongerayo.';

  @override
  String get errNoPlan =>
      'Weetaaga enteekateeka ekola okukozesa okwekenneenya kwa AI.';

  @override
  String get viewPlans => 'Laba enteekateeka';

  @override
  String get usageTitle => 'Enkozesa';

  @override
  String get demoPurchaseNote =>
      'Okusasula kwa demo: okugula ku sisitemu eno kwa kufaanaanyiriza kwokka.';

  @override
  String get mostPopular => 'Esinga okwagalibwa';

  @override
  String get bestValue => 'Esinga omuwendo';

  @override
  String get planFeaturesCommon =>
      'Okuzuula ebifaananyi, data ey\'ekiseera kino, ebipande, by\'oyagala n\'ennimi zonna 120 biri mu buli nteekateeka. Ekitundu ky\'okkirizibwa kikwata ku kwekenneenya kwa AI.';

  @override
  String get searchLanguages => 'Noonya ennimi…';

  @override
  String get noLanguageMatch => 'Tewali lulimi lukwatagana.';

  @override
  String get aiSettings => 'Okwekenneenya kwa AI';

  @override
  String get aiLength => 'Obuwanvu';

  @override
  String get aiDepthBrief => 'Mu bufunze';

  @override
  String get aiDepthStandard => 'Bwa bulijjo';

  @override
  String get aiDepthDeep => 'Mu bujjuvu';

  @override
  String get aiDepthBriefDesc => 'Ebikulu, mu bwangu.';

  @override
  String get aiDepthStandardDesc => 'Lipoota enzijuvu n\'ebitundu byonna.';

  @override
  String get aiDepthDeepDesc =>
      'Okunoonya okusingawo ku yintaneeti, okugeraageranya n\'abavuganya n\'ebisingawo mu bujjuvu.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Ebigambo nga $min–$max';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'kikozesa okwekenneenya $count',
      one: 'kikozesa okwekenneenya 1',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Omutendera gw\'omusomi';

  @override
  String get aiReaderBeginner => 'Atandika';

  @override
  String get aiReaderExperienced => 'Omukugu';

  @override
  String get aiReaderBeginnerDesc =>
      'Olulimi olwangu; buli kigambo kya kikugu kinnyonnyolwa.';

  @override
  String get aiReaderExperiencedDesc =>
      'Ebiwandiiko ebinywevu nga bikozesa ebigambo by\'ebyensimbi ebya bulijjo.';

  @override
  String get aiCounterArgument => 'Ensonga esinga okuwakanya';

  @override
  String get aiCounterArgumentDesc =>
      'Mu bufunze bulijjo bukomekkerezebwa n\'ensonga esinga amaanyi ewakanya ekyo kye busazeewo.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Okunoonya okutuuka ku $count ku yintaneeti buli kwekenneenya mu nteekateeka yo',
      one: 'Okunoonya 1 ku yintaneeti buli kwekenneenya mu nteekateeka yo',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Okunoonya ku yintaneeti ku buwanvu bwa bulijjo okusinziira ku nteekateeka: Ekya bulijjo $normal, Pro $pro, Max $max, Ultra $ultra. Mu bufunze kikendeezaako 2, Mu bujjuvu kyongerako 2.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'okunoonya okutuuka ku $count ku yintaneeti',
      one: 'okunoonya 1 ku yintaneeti',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Okunoonya $count ku yintaneeti buli kwekenneenya',
      one: 'Okunoonya 1 ku yintaneeti buli kwekenneenya',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Obuwanvu buno bwetaaga okwekenneenya $needed, naye osigazza $left kyokka. Londa obuwanvu obutono mu Ensengeka oba funa okwekenneenya okusingawo.';
  }

  @override
  String get outlookMarketMood => 'Embeera y\'akatale';

  @override
  String get moodVeryPessimistic => 'Essuubi ttono nnyo';

  @override
  String get moodPessimistic => 'Essuubi ttono';

  @override
  String get moodNeutral => 'Wakati';

  @override
  String get moodOptimistic => 'Essuubi lingi';

  @override
  String get moodVeryOptimistic => 'Essuubi lingi nnyo';

  @override
  String get scenarioBull => 'Embeera ennungi';

  @override
  String get scenarioBase => 'Embeera ya bulijjo';

  @override
  String get scenarioBear => 'Embeera embi';

  @override
  String outlookCurrentPrice(String price) {
    return 'Ebbeeyi eya kati: $price';
  }

  @override
  String get outlookKeyLevels => 'Emitendera emikulu';

  @override
  String get keyLevelSupport => 'Obuwagizi';

  @override
  String get keyLevelResistance => 'Okuziyiza';

  @override
  String get keyLevelAnchor => 'Omusingi';

  @override
  String get upcomingEvents => 'Ebigenda okubaawo';

  @override
  String get outlookChartNote =>
      'Emiwendo gya kulabirako; emikisa kuteebereza buteebereza, si bunnabbi.';

  @override
  String get accountTitle => 'Akawunti';

  @override
  String get signIn => 'Yingira';

  @override
  String get signOut => 'Fuluma';

  @override
  String get notSignedIn => 'Toyingidde';

  @override
  String get accountBenefit =>
      'Yingira okwewandiisa kwo kukole ku byuma byo byonna.';

  @override
  String get accountSyncedNote =>
      'Okwewandiisa kwo n\'okwekenneenya okusigaddeyo bye bimu ku buli kyuma.';

  @override
  String get signInTitle => 'Yingira mu WhatStock';

  @override
  String get emailLabel => 'Endagiriro ya email';

  @override
  String get continueWithEmail => 'Weyongereyo ne email';

  @override
  String codeSentTo(String email) {
    return 'Tuweerezza koodi ya nnamba 6 ku $email. Ekola okumala eddakiika 10.';
  }

  @override
  String get codeLabel => 'Koodi y\'okuyingira';

  @override
  String get resendCode => 'Weereza koodi empya';

  @override
  String get useDifferentEmail => 'Kozesa email endala';

  @override
  String get errInvalidCode => 'Koodi nkyamu oba ebiseera byayo biweddeko.';

  @override
  String get errInvalidEmail => 'Yingiza endagiriro ya email entuufu.';

  @override
  String get errSignInFailed =>
      'Okuyingira kulemye. Kebera yintaneeti yo oddemu ogezeeko.';

  @override
  String get checkoutWaiting =>
      'Maliriza okusasula mu browser yo. App ejja kwezza obuggya yokka ng\'omaze.';

  @override
  String get paymentViaStripe =>
      'Okusasula okw\'obukuumi mu browser yo nga kuyita mu Stripe. Sazaamu essaawa yonna.';

  @override
  String get paymentViaStore =>
      'Osasulizibwa okuyita mu akawunti yo eya App Store oba Google Play. Sazaamu essaawa yonna mu nsengeka z\'edduuka.';

  @override
  String get keySpace => 'Ebbanga';

  @override
  String get doubleOptionTitle => 'Nyiga Option emirundi ebiri';

  @override
  String get doubleOptionSubtitle =>
      'Okunyiga Option emirundi ebiri amangu nakyo kiyita WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Okukisobozesa okukola ne mu apps endala, kkiriza WhatStock mu System Settings → Privacy & Security → Input Monitoring, olwo oddemu oggulewo app.';

  @override
  String get openSystemSettings => 'Ggulawo System Settings';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Nyiga $shortcut oba nyiga Option emirundi ebiri wonna w\'oli okuyita WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Ekisinga okuyinzika';

  @override
  String get longTermToday => 'Leero';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: 'emyaka $years',
      one: 'omwaka 1',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range buli mwaka';
  }

  @override
  String longTermLikely(String price) {
    return 'ekisinga okuyinzika $price';
  }

  @override
  String get confidenceLow => 'Obukakafu butono';

  @override
  String get confidenceMedium => 'Obukakafu bwa wakati';

  @override
  String get confidenceHigh => 'Obukakafu bungi';

  @override
  String get longTermNote =>
      'Emiwendo gy\'ekiseera ekiwanvu gyesigamye ku ebyo ebiteeberezeddwa era gigaziwa ng\'ekiseera kiyitawo. Ebbeeyi teziteekamu magoba ku migabo. Kuteebereza buteebereza, si bunnabbi.';

  @override
  String get portfolio => 'Emigabo gyo';

  @override
  String get portfolioEmpty =>
      'Tewali kintu wano. Ggulawo omugabo onyige “Gattako ku migabo gyo” okugoberera by\'olina.';

  @override
  String get portfolioLocalNote =>
      'Bitereddwa ku kyuma kino kyokka. Omugatte gukyusibwa ku miwendo gya ECB; ebbeeyi ziyinza okulwawo.';

  @override
  String get addToPortfolio => 'Gattako ku migabo gyo';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Gattako $symbol';
  }

  @override
  String get portfolioQuantity => 'Omuwendo gw\'emigabo';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Ebbeeyi ya buli mugabo ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Olunaku lw\'okugula';

  @override
  String get portfolioAdd => 'Gattako';

  @override
  String get portfolioInvalidNumber => 'Wandiika ennamba esinga zeero.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol kyongeddwa ku migabo gyo.';
  }

  @override
  String get portfolioTotalValue => 'Omuwendo gwonna';

  @override
  String get portfolioToday => 'Leero';

  @override
  String get portfolioGainLoss => 'Amagoba/okufiirwa';

  @override
  String homeDividendsThisYear(String amount) {
    return 'Dividendi omwaka guno: $amount';
  }

  @override
  String get portfolioInvested => 'Ensimbi ezisiigiddwa';

  @override
  String get portfolioAllocation => 'Engabanya';

  @override
  String get portfolioPositions => 'Emigabo gy\'olina';

  @override
  String portfolioAvgCost(String price) {
    return 'ebbeeyi ya wakati $price';
  }

  @override
  String get portfolioYourPosition => 'By\'olina';

  @override
  String get portfolioPurchases => 'Bye wagula';

  @override
  String get portfolioRemove => 'Ggyawo';

  @override
  String get portfolioExcluded =>
      'Emigabo egitalina bbeeyi oba omuwendo gw\'okuwaanyisa ensimbi tegibalibwa mu mugatte.';

  @override
  String get priceAlerts => 'Okulabula ku bbeeyi';

  @override
  String get setPriceAlert => 'Teekawo okulabula ku bbeeyi';

  @override
  String alertDialogTitle(String symbol) {
    return 'Okulabula ku bbeeyi · $symbol';
  }

  @override
  String get alertKindAbove => 'Bw\'erinnya okusukka';

  @override
  String get alertKindBelow => 'Bw\'ekka wansi wa';

  @override
  String get alertKindMove => 'Bw\'ekyuka ennyo mu lunaku lumu';

  @override
  String alertTargetPrice(String currency) {
    return 'Ebbeeyi ($currency)';
  }

  @override
  String get alertMovePercent => 'Enkyukakyuka ya lunaku (%)';

  @override
  String get alertAlreadyMet => 'Ebbeeyi emaze okusukka omutendera guno.';

  @override
  String get alertSave => 'Teekawo okulabula';

  @override
  String alertCreated(String symbol) {
    return 'Okulabula kwa $symbol kuteereddwawo.';
  }

  @override
  String get alertsEmpty =>
      'Tewali kulabula ku bbeeyi. Ggulawo omugabo onyige ekide okukuteekawo.';

  @override
  String get alertsNote =>
      'Okulabula kukeberebwa buli ddakiika 5 nga WhatStock ekola. Ku kompyuta esigala ekola mu menu bar oba tray; ku ssimu, kati okulabula kujja nga app eggule.';

  @override
  String alertDescAbove(String price) {
    return 'Waggulu wa $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Wansi wa $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Enkyukakyuka ya lunaku ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Kwakola $date ku $price';
  }

  @override
  String get alertRearm => 'Ddamu okuteekawo';

  @override
  String get alertDelete => 'Sangula';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol kirinnye okusukka $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol kikkiridde wansi wa $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol kyakyuse $percent leero';
  }

  @override
  String alertHitBody(String price) {
    return 'Ebbeeyi eya kati: $price';
  }

  @override
  String get alertOpen => 'Ggulawo';

  @override
  String get keepInTrayTitle => 'Sigala ng\'okola eddirisa bwe liggalwa';

  @override
  String get keepInTraySubtitle =>
      'WhatStock esigala mu menu bar oba tray, n\'olwekyo shortcut n\'okulabula ku bbeeyi bisigala nga bikola.';

  @override
  String get termsOfUse => 'Amateeka g\'okukozesa';

  @override
  String get privacyPolicy => 'Enkola y\'ebyama';

  @override
  String get subscriptionLegal =>
      'Okwewandiisa kwezza obuggya kwokka buli mwezi okutuusa lw\'okusazaamu. Bw\'owewandiisa, oba okkirizza Amateeka g\'okukozesa n\'Enkola y\'ebyama.';

  @override
  String get deleteAccount => 'Sangula akawunti';

  @override
  String get deleteAccountTitle => 'Oyagala okusangula akawunti yo?';

  @override
  String get deleteAccountBody =>
      'Akawunti yo ne buli kimu ekiterekeddwa ku seva yaffe (email, ky\'okkirizibwa, enkozesa) bijja kusangulwa ddala, era okwekenneenya kw\'otokozesanga kujja kubula. Okwewandiisa okwasasulirwa mu browser kusazibwamu amangu ddala; okwewandiisa kwa App Store oba Google Play kulina okusazibwamu mu nsengeka z\'edduuka.';

  @override
  String get deleteLocalData =>
      'Sangula ne data eri ku kyuma kino (emigabo, okulabula, by\'oyagala, ebyafaayo, okwekenneenya okuterekeddwa)';

  @override
  String get deleteAccountConfirm => 'Sangula ddala';

  @override
  String get accountDeleted => 'Akawunti yo esanguddwa.';

  @override
  String get errDeleteAccount =>
      'Akawunti tesobodde kusangulwa. Kebera yintaneeti yo oddemu ogezeeko.';

  @override
  String get aiTrialBriefNote =>
      'Okwekenneenya okw\'okugezesa kuba mu bufunze era kukolebwa AI model ey\'amangu. Ng\'olina enteekateeka, ofuna AI yaffe esinga obusobozi, okunoonya okusingawo ku yintaneeti, n\'obuwanvu Bwa bulijjo ne Mu bujjuvu.';

  @override
  String get billingMonthly => 'Buli mwezi';

  @override
  String get billingYearly => 'Buli mwaka';

  @override
  String get yearlyDiscount => 'Emyezi 2 bwereere';

  @override
  String get perYear => '/ omwaka';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price buli mwezi';
  }

  @override
  String get subscriptionLegalYearly =>
      'Okwewandiisa okw\'omwaka kwezza obuggya kwokka buli mwaka okutuusa lw\'okusazaamu. Bw\'owewandiisa, oba okkirizza Amateeka g\'okukozesa n\'Enkola y\'ebyama.';

  @override
  String get myAnalyses => 'Okwekenneenya kwange';

  @override
  String get navAlerts => 'Okulabula';

  @override
  String get inviteTitle => 'Okulaba okusooka okw\'ekyama';

  @override
  String get inviteBody =>
      'Kati WhatStock efunibwa ng\'oyitiddwa kyokka. Yingiza koodi y\'okuyitibwa gye wafuna.';

  @override
  String get inviteCodeLabel => 'Koodi y\'okuyitibwa';

  @override
  String get inviteContinue => 'Weeyongereyo';

  @override
  String get inviteInvalid => 'Koodi eno ey\'okuyitibwa si ntuufu.';

  @override
  String get inviteExpired =>
      'Okuyitibwa kuno kuweddeko. Saba omuntu eyakuyita akuwe koodi empya.';

  @override
  String get inviteDeviceLimit =>
      'Koodi eno ey\'okuyitibwa ekozesebwa dda ku byuma ebisinga obungi ebikkirizibwa.';

  @override
  String get previewConfidential => 'Okulaba okusooka okw\'ekyama';

  @override
  String get errPreviewDailyLimit =>
      'Ekkomo ly\'okwekenneenya kwa leero mu kulaba kuno okusooka lituukiddwako. Gezaako nate enkya.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'essaawa $count emabega',
      one: 'essaawa 1 emabega',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ennaku $count emabega',
      one: 'olunaku 1 emabega',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Okuzza obuggya okwekenneenya kuno?';

  @override
  String staleBody(String age) {
    return 'Okwekenneenya kuno kwakolebwa $age. Okuva olwo, emiwendo, amawulire n\'ebivudde mu bizinensi biyinza okuba nga byakyuka.';
  }

  @override
  String get staleKeep => 'Laga okw\'edda';

  @override
  String get staleRefresh => 'Kola okupya';

  @override
  String seeAll(int count) {
    return 'Laba byonna ($count)';
  }

  @override
  String get searchAnalyses => 'Noonya mu kwekenneenya kwo';

  @override
  String get deleteAnalysis => 'Sangula';

  @override
  String analysisDeleted(String symbol) {
    return 'Okwekenneenya kwa $symbol kusanguddwawo';
  }

  @override
  String get keyLevelAlertHint =>
      'Nyiga omutendera ofune okulabula bbeeyi bw\'etuuka ku gwo.';

  @override
  String get shareAnalysisTitle => 'Gabana okwekenneenya';

  @override
  String get shareAsImage => 'Gabana ng\'ekifaananyi';

  @override
  String get shareAsText => 'Gabana ng\'ebiwandiiko';

  @override
  String get shareCardFooter => 'Kyakoleddwa ne WhatStock';

  @override
  String get shareCardDisclaimer =>
      'Okwekenneenya kwa AI · si magezi ga kusiga nsimbi';

  @override
  String get referralTitle => 'Yita mikwano gyo';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'okwekenneenya okw\'okwongerako $count',
      one: 'okwekenneenya okw\'okwongerako 1',
    );
    return 'Gabana koodi yo. Mukwano gwo ajja kufuna $_temp0 amangu ddala, naawe ojja kufuna bwe bityo ng\'amaze okwekenneenya kwe okusooka.';
  }

  @override
  String get referralYourCode => 'Koodi yo';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Abayitiddwa: $invited · Ebirabo: $rewarded';
  }

  @override
  String get referralHaveCode => 'Olina koodi okuva ewa mukwano gwo?';

  @override
  String get referralRedeem => 'Gikozese';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Okwekenneenya okw\'okwongerako $count kwongeddwako. Tukwanirizza!',
      one: 'Okwekenneenya okw\'okwongerako 1 kwongeddwako. Tukwanirizza!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Koodi eno teriiwo. Gikebere oddemu ogezeeko.';

  @override
  String get referralErrOwn => 'Toyinza kukozesa koodi yo ggwe kennyini.';

  @override
  String get referralErrAlready => 'Wamala dda okukozesa koodi ya mukwano gwo.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'okwekenneenya okw\'okwongerako $count',
      one: 'okwekenneenya okw\'okwongerako 1',
    );
    return 'Nneekenneenya emigabo nga nkozesa WhatStock: kuba ekifaananyi ky\'omugabo, AI n\'ekikunnyonnyola. Ne koodi yange $code ofuna $_temp0.';
  }

  @override
  String get referralCopied => 'Koodi ekoppoddwa';

  @override
  String get onboardTitle1 => 'Kuba ekifaananyi ky\'omugabo';

  @override
  String get onboardBody1 =>
      'Olutimbe lwa app ya broker, olupapula lw\'amawulire oba akabonero ka kkampuni bimala: WhatStock etegeera omugabo n\'ekulaga bbeeyi yaagwo, ekipande kyagwo n\'ennamba enkulu.';

  @override
  String get onboardTitle2 => 'Kitegeere mu ddakiika ntono';

  @override
  String get onboardBody2 =>
      'Okwekenneenya kwa AI kunnyonnyola ekireetera omugabo okukyuka, obulabe, omuwendo gwagwo n\'embeera ssatu bbeeyi w\'eyinza okudda, nga kuliko ensibuko era mu lulimi lwo.';

  @override
  String get onboardTitle3 => 'Bera ng\'omanyi buli kimu';

  @override
  String get onboardBody3 =>
      'By\'oyagala, emigabo gyo n\'okulabula ku bbeeyi bikutegeeza buli ekibaawo. Okwekenneenya kwo kusigala ku kyuma kyo, nga kwetegefu okuggulwawo nate.';

  @override
  String get onboardNext => 'Ekiddako';

  @override
  String get onboardStart => 'Tandika';

  @override
  String get onboardSkip => 'Buuka';

  @override
  String changesTitle(String date) {
    return 'Okuva ku kwekenneenya okw\'edda ($date)';
  }

  @override
  String get changesPrice => 'Ebbeeyi';

  @override
  String get changesNoMajor => 'Embeera esuubirwa tekyuse nnyo.';

  @override
  String get changesPreviousSummary => 'Mu bufunze okw\'edda';

  @override
  String get telemetryTitle => 'Tuyambe okulongoosa WhatStock';

  @override
  String get telemetryBody =>
      'Gabana ebibalo by\'enkozesa ebitaliiko linnya n\'alipoota z\'okugwa kwa pulogulaamu: ebintu ebikozesebwa n\'ekyo ekyagenda obubi. Tetujja kuweereza migabo gyo, kwekenneenya kwo oba ebikukwatako ku bubwo. Osobola okukikyusa essaawa yonna mu Ensengeka.';

  @override
  String get telemetryAllow => 'Kkiriza';

  @override
  String get telemetryDecline => 'Nedda, weebale';

  @override
  String get telemetrySetting =>
      'Ebibalo ebitaliiko linnya n\'alipoota z\'okugwa kwa pulogulaamu';

  @override
  String get telemetrySettingHint =>
      'Emirundi ebintu gye bikozesebwa n\'alipoota z\'ensobi, awatali bikukwatako ku bubwo oba ebiri mu kunoonya kwo n\'okwekenneenya kwo.';

  @override
  String get askButton => 'Buuza ku kwekenneenya kuno';

  @override
  String askTitle(String symbol) {
    return 'Ebibuuzo ku $symbol';
  }

  @override
  String get askIntro =>
      'Buuza kyonna ku kwekenneenya: akabi akamu kategeeza ki, kiki ekiyinza okukyusa ebisuubirwa, ennamba emu yabalibwa etya. Okuddamu kwesigamiziddwa ku kwekenneenya kuno, era si magezi ga kusiga nsimbi.';

  @override
  String get askHint => 'Buuza ekibuuzo…';

  @override
  String get askSend => 'Weereza';

  @override
  String get askThinking => 'Kirowooza…';

  @override
  String get askSuggest1 => 'Kabi ki akasinga obunene?';

  @override
  String get askSuggest2 => 'Kiki ekiyinza okukyusa ebisuubirwa?';

  @override
  String get askSuggest3 => 'Kinnyonnyole mu ngeri ennyangu';

  @override
  String get askMaxReached =>
      'Ekyo kye kibuuzo ekisembayo ku kwekenneenya kuno. Kola okwekenneenya okupya okubuuza ebirala.';

  @override
  String get errAskLimit =>
      'Otuuse ku kkomo ly\'ebibuuzo bya leero. Gezaako nate enkya.';

  @override
  String get eventTomorrow => 'Enkya';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'mu nnaku $days',
      one: 'mu lunaku 1',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Ebivudde mu kitundu ky\'omwaka';

  @override
  String get eventBeforeOpen => 'ng\'akatale tekannaggulwawo';

  @override
  String get eventAfterClose => 'ng\'akatale kaggaddwa';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS esuubirwa: $value';
  }

  @override
  String get eventFromAnalysis => 'Okuva mu kwekenneenya kwo';

  @override
  String get eventDividend => 'Dividendi esuubirwa';

  @override
  String get eventDividendEstimate =>
      'Ebalirirwa okuva mu nsasula z\'owandiise';

  @override
  String get eventsHint =>
      'Ennaku z\'ebivudde mu by\'oyagala n\'emigabo gyo mu nnaku 90 eziddako, ebigenda okubaawo eby\'ennaku entongole okwekenneenya kwo bye kulaze, ne dividendi ezisuubirwa okuva mu nsasula z\'owandiise.';

  @override
  String get eventsEmpty =>
      'Tewali bigenda kubaawo bya nnaku ntongole mu nnaku 90 eziddako. Yongerako by\'oyagala oba emigabo okulaba wano ennaku z\'ebivudde byabyo; dividendi z\'owandiise ziraga ensasula yazo eddako esuubirwa.';

  @override
  String get compareTitle => 'Geraageranya';

  @override
  String get compareAdd => 'Gattako omugabo';

  @override
  String get compareRemove => 'Ggyamu';

  @override
  String get compareTickerHint => 'Ticker, okugeza MSFT';

  @override
  String get compareHint =>
      'Ebibalo ebikulu ku bbali na bbali; omuwendo ogusinga obulungi mu buli lunyiriri gulagiddwa. Ssente ziri mu nsimbi za buli mugabo.';

  @override
  String get compareNoAnalysis => 'Okwekenneenya tekunnabaawo';

  @override
  String get portfolioDividends => 'Amagoba ku migabo ag’omwaka';

  @override
  String portfolioDividendYield(String percent) {
    return 'Amagoba: $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Amagoba ku migabo agasuubirwa buli mwaka gasinziira ku magoba agaasasulwa mu myezi 12 egiyise; okusasula okw’omu maaso tekukakasiddwa.';

  @override
  String positionDividend(String amount) {
    return 'Amagoba ku migabo: $amount buli mwaka';
  }

  @override
  String get chartAvgCost => 'Eyiyo ya wakati';

  @override
  String get chartAlertLevel => 'Okulabula';

  @override
  String get marketsToday => 'Obutale leero';

  @override
  String get notesTitle => 'Ebiwandiiko byange';

  @override
  String get notesHint =>
      'Lwaki wagugula, kiki ky\'olondoola, kiki ekyandikuleetedde okugutunda?';

  @override
  String get notesInfo =>
      'Bitereddwa ku kyuma kino kyokka. Okwekenneenya kwa AI kutunuulira ebiwandiiko byo.';

  @override
  String notesSaved(String date) {
    return 'Bitereddwa $date';
  }

  @override
  String get peersTitle => 'Kkampuni ezifaananako';

  @override
  String get portfolioExport => 'Fulumya nga CSV';

  @override
  String get portfolioImport => 'Yingiza okuva mu CSV';

  @override
  String get portfolioImportHint =>
      'Teekamu ekyaguliddwa kimu ku buli lunyiriri: akabonero ka ticker, omuwendo, bbeeyi, ensimbi, olunaku (YYYY-MM-DD). Empagi ziyinza okwawulwamu koma, semikolon oba tab; olunyiriri lw\'emitwe si lwa tteeka.';

  @override
  String get portfolioImportButton => 'Yingiza';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ebyaguliddwa $count byongeddwako',
      one: 'Ekyaguliddwa 1 kyongeddwako',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ennyiriri $count zibuukiddwa',
      one: 'Olunyiriri 1 lubuukiddwa',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Emigabo gyo, by\'oyagala, okulabula ku bbeeyi n\'ebiwandiiko bikwatagana ku byuma byo byonna.';

  @override
  String syncLast(String time) {
    return 'Okukwataganya okusembayo: $time';
  }

  @override
  String get syncNow => 'Kwataganya kati';

  @override
  String get syncFailed =>
      'Okukwataganya kulemye. Kujja kuddamu okugezaako kwokka.';

  @override
  String get alertEmailTitle => 'Email nga okulabula kutuuse';

  @override
  String get alertEmailOn =>
      'Tukebera okulabula kwo buli ddakiika ntono era tukuweereza email, ne bwe kiba nti app eggaddwa.';

  @override
  String get alertEmailSignIn =>
      'Yingira n\'email yo mu Nsengeka ofune okulabula ku email, ne bwe kiba nti app eggaddwa.';

  @override
  String get portfolioHistory => 'Omuwendo mu biseera';

  @override
  String get portfolioReviewTitle => 'Okwekenneenya emigabo kwa AI';

  @override
  String get portfolioReviewIntro =>
      'AI yeekenneenya emigabo gyo gyonna: engeri ssente zo gye zikuŋŋaanidde mu kifo kimu, ebitongole n\'ensimbi z\'ensi endala by\'oyimiriddeko, obulabe emigabo gyo bwe gigabana, n\'amagoba g\'emigabo. Kikozesa okwekenneenya 1.';

  @override
  String get portfolioReviewButton => 'Kebera emigabo gyange';

  @override
  String get portfolioReviewAgain => 'Kebera nate';

  @override
  String get portfolioReviewWorking => 'Tukebera emigabo gyo…';

  @override
  String get digestTitle => 'Ebifunze bya wiiki ku email';

  @override
  String get digestHint =>
      'Buli Mmande: engeri by\'oyagala n\'emigabo gyo gye byatambulamu wiiki ewedde, n\'ennaku z\'ebivudde mu kitundu ky\'omwaka ebijja.';

  @override
  String get benchmarkTitle => 'Okugeraageranya ne S&P 500';

  @override
  String get benchmarkTitleIndex => 'Okugeraageranya ne index';

  @override
  String get benchmarkHintIndex =>
      'Nga buli kye wagula ssente zaakyo zaateekebwa mu fund egoberera index gy\'olonze ku lunaku lwe lumu. Amagoba agagabanyizibwa tegazingiddwamu; amagoba ag\'emabega tegalagula ag\'omu maaso.';

  @override
  String get benchmarkYours => 'By\'wagula';

  @override
  String benchmarkAhead(String points) {
    return 'Kisinga index ebitundu ku kikumi $points';
  }

  @override
  String benchmarkBehind(String points) {
    return 'Kiri emabega wa index ebitundu ku kikumi $points';
  }

  @override
  String get portfolioSell => 'Tunda';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Tunda $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Ebbeeyi y\'okutunda buli mugabo ($currency)';
  }

  @override
  String get portfolioSellDate => 'Olunaku lw\'okutunda';

  @override
  String get portfolioSellAll => 'Gyonna';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Olina $quantity';
  }

  @override
  String get portfolioSold => 'Watunda';

  @override
  String get portfolioRealized => 'Amagoba agafunise';

  @override
  String get portfolioClosed => 'Emigabo gye watunda gyonna';

  @override
  String get portfolioClosedNote => 'Emigabo gyonna gyatundiddwa';

  @override
  String get portfolioTransactions => 'Bye wagula ne bye watunda';

  @override
  String get portfolioRealizedByYear => 'Amagoba agafunise buli mwaka';

  @override
  String get portfolioRealizedHint =>
      'Ebitundiddwa bisooka kugeraageranyizibwa n\'ebyo bye wasooka okugula (FIFO), nga bikyusiddwa ku muwendo gw\'okuwaanyisa ensimbi ogw\'olwaleero. Ku lipoota y\'omusolo, kozesa sitetimenti ya broker wo.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Okuva okwekenneenya kuno lwe kwakolebwa, ebivudde mu kitundu ky\'omwaka ebipya bifulumiziddwa ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Ebivudde ebipya';

  @override
  String get portfolioImportBrokers =>
      'Ebifulumizibwa okuva mu Revolut, Trading 212 ne Interactive Brokers nabyo bitegeerebwa, nga mw\'otwalidde n\'ebyatundibwa; amagoba ku migabo n\'ensimbi ezateekebwamu bisuulibwa.';

  @override
  String get portfolioImportFile => 'Londa fayiro';

  @override
  String offlineBanner(String time) {
    return 'Tewali yintaneeti – data eyasembayo okuterekebwa y\'eragibwa ($time).';
  }

  @override
  String get glossMarketCap =>
      'Kkampuni yonna gy\'ebalirirwa ku katale k\'emigabo: omuwendo gw\'omugabo × omuwendo gw\'emigabo.';

  @override
  String get glossSharesOutstanding =>
      'Emigabo kkampuni gy\'efulumizza. Bwe gyeyongera, buli mugabo gufuna ekitundu ekitono; okugula emigabo emabega (buyback) kugikendeeza.';

  @override
  String get glossPeTrailing =>
      'Bbeeyi ÷ amagoba ku buli mugabo mu myezi 12 egiyise: emyaka emeka egy\'amagoba ag\'kati gy\'osasulira. Ekiri wansi kiba kya layisi, naye kkampuni ezikula amangu zitera okuba ne P/E ennene.';

  @override
  String get glossPeForward =>
      'Nga P/E, naye nga ekozesa amagoba abakugu ge basuubira mu myezi 12 egijja. Bw\'eba wansi wa P/E ewedde, amagoba gasuubirwa okweyongera.';

  @override
  String get glossPb =>
      'Bbeeyi ÷ omuwendo ku bitabo (eby\'obugagga okuggyako amabanja) ku buli mugabo. Okuba nga 1 kitegeeza nti akatale kabalirira kkampuni nga bw\'erina ku mpapula.';

  @override
  String get glossPs =>
      'Omuwendo ku katale ÷ ensimbi eziyingira buli mwaka. Kiyamba ku kkampuni ezitannaba kufuna magoba mangi oba tezirina; kigeraageranye ku kkampuni ez\'ekika kye kimu.';

  @override
  String get glossEvToFcf =>
      'Omuwendo gwa kkampuni nga mw\'otwalidde amabanja (EV) ÷ ensimbi z\'efuna mu mwaka ng\'emaze okusiga ensimbi. Ekiri wansi kitegeeza ofuna ensimbi nnyingi ku bbeeyi gy\'osasula.';

  @override
  String get glossPeg =>
      'P/E ÷ okukula kw\'amagoba okusuubirwa buli mwaka (%). Okuba nga 1 kitera okutwalibwa nga kya bwenkanya; kiraga P/E ng\'olowooza ku kukula.';

  @override
  String get glossEps =>
      'Amagoba ku buli mugabo mu myezi 12 egiyise. EPS erinnya buli mwaka kye kimu ku bubonero obusinga amaanyi obwa kkampuni ennamu.';

  @override
  String get glossBeta =>
      'Omugabo bwe gutambula wamu n\'akatale: 1 = ng\'akatale, 1.5 = okukyukakyuka okusingako nga 50%, wansi wa 1 = kikkakkamu.';

  @override
  String get glossRevenueTtm =>
      'Ebyatundibwa byonna mu myezi 12 egiyise, nga tonnaggyamu nsaasaanya yonna.';

  @override
  String get glossNetIncomeTtm =>
      'Amagoba agasigalawo oluvannyuma lw\'ensaasaanya yonna, interest n\'emisolo mu myezi 12 egiyise.';

  @override
  String get glossGrossMargin =>
      'Ekitundu ky\'ensimbi eziyingidde ekisigalawo oluvannyuma lw\'ensaasaanya ey\'obutereevu ku bintu ebikolebwa. Ekitundu ekinene kitera okulaga obuyinza ku bbeeyi.';

  @override
  String get glossOperatingMargin =>
      'Ekitundu ky\'ensimbi eziyingidde ekisigalawo oluvannyuma lw\'okuddukanya bizinensi (emisaala, obupangisa, okulanga), nga interest n\'emisolo tebinnaba.';

  @override
  String get glossNetMargin =>
      'Ekitundu ky\'ensimbi eziyingidde ekifuuka amagoba ag\'enkomerero. 20% kitegeeza nti ku buli 100 ez\'ebyatundibwa, 20 ge magoba.';

  @override
  String get glossRoe =>
      'Amagoba ku nsimbi z\'abannannyini: amagoba ag\'omwaka ÷ ensimbi z\'abannannyini. Kiraga abaddukanya kkampuni bwe bakozesa obulungi ensimbi z\'abalina emigabo; okusukka nga 15% kiba kirungi nnyo.';

  @override
  String get glossRoa =>
      'Amagoba ku by\'obugagga: amagoba ag\'omwaka ÷ byonna kkampuni by\'erina. Kigeraageranye ku kkampuni ez\'ekika kye kimu.';

  @override
  String get glossDebtToEquity =>
      'Ebbanja ÷ ensimbi z\'abannannyini. Ekisingako kitegeeza ensimbi nnyingi ez\'okwewola: akabi kangi ng\'interest erinnye oba bizinensi ekendedde.';

  @override
  String get glossCurrentRatio =>
      'Eby\'obugagga eby\'ekiseera ekitono ÷ amabanja ag\'okusasula mu mwaka gumu. Okusukka 1 kitegeeza nti kkampuni esobola okusasula amabanja ag\'okumpi.';

  @override
  String get glossRevenueGrowth =>
      'Ensimbi eziyingidde bwe zeeyongedde bw\'ogeraageranya n\'omwaka oguwedde.';

  @override
  String get glossEpsGrowth =>
      'Amagoba ku buli mugabo bwe geeyongedde bw\'ogeraageranya n\'omwaka oguwedde.';

  @override
  String get glossDividendYield =>
      'Amagoba ag\'omwaka agagabibwa ÷ bbeeyi y\'omugabo: ensimbi z\'ofuna buli mwaka, ng\'ebitundu ku kikumi eby\'ebyo by\'osasudde.';

  @override
  String get glossDividendPerShare =>
      'Amagoba agaagabibwa ku mugabo gumu mu mwaka oguwedde.';

  @override
  String get glossPayoutRatio =>
      'Ekitundu ky\'amagoba ekigabibwa eri abalina emigabo. Okusukka 100% kkampuni egaba okusinga by\'efuna, ekitera obutawangaala.';

  @override
  String get portfolioBeta => 'Beta y\'emigabo gyo';

  @override
  String get glossPortfolioBeta =>
      'Beta y\'emigabo gyo, epimiddwa okusinziira ku muwendo gwagyo: kumpi ebitundu ku kikumi bimeka emigabo gyo bye gitambula akatale bwe katambula 1%. Waggulu wa 1 gikyukakyuka okusinga akatale, wansi wa 1 kitono. Ensimbi enkalu tezibalibwa.';

  @override
  String get portfolioTop3 => 'Emigabo 3 egisinga obunene';

  @override
  String get glossPortfolioTop3 =>
      'Omuwendo gw\'emigabo gyo gwenkana wa oguli mu migabo gyo esatu egisinga obunene. Gye gukoma okuba waggulu, amawulire amabi ku kkampuni emu yokka gye gakoma okusobola okwonoona emigabo gyo gyonna.';

  @override
  String get glossDividendGrowth5y =>
      'Obungi amagoba ku buli mugabo bwe gaayongerwako buli mwaka ku kigero mu myaka etaano egiyise. Okukula okutakyukakyuka kutera okulaga nti kkampuni yeesiga ensimbi zaayo eziyingira n\'ezifuluma; okukendeeza amagoba kutera okuba akabonero ak\'okulabula.';

  @override
  String get glossYieldOnCost =>
      'Dividendi ezafunibwa mu myezi 12 egiyise nga zigabanyizibwamu ssente ze wasasula ku migabo gy\'okyalina. Okwawukana ku magoba ku migabo, kino kipimibwa ku bbeeyi gye wagulako ggwe, so si ku bbeeyi ya leero.';

  @override
  String get glossTitle => 'Kitegeeza ki?';

  @override
  String get watchNewsTitle => 'Amawulire ku migabo gyo';

  @override
  String get undo => 'Komyawo';

  @override
  String get watchSort => 'Sengeka';

  @override
  String get watchSortOwn => 'Ensengeka yange';

  @override
  String get watchSortGainers => 'Ebyalinnye ennyo bisooke';

  @override
  String get watchSortLosers => 'Ebyakka ennyo bisooke';

  @override
  String get watchSortName => 'Okusinziira ku ticker (A–Z)';

  @override
  String get watchHint =>
      'Walula ekikwatibwako okusengeka obulala, sikula ku kkono okuggyako. Olunyiriri lulaga ennaku 30 eziyise.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: okwekenneenya kwo kuwedde.';
  }

  @override
  String alertFromCost(String price) {
    return 'Okusinziira ku bbeeyi yo eya wakati gye wagulirako ($price):';
  }

  @override
  String get briefTitle => 'Leero ne sitoowa zo';

  @override
  String get briefButton => 'Funza olwaleero';

  @override
  String get briefHint =>
      'Mu bufunze, AI ekulaga engeri portfolio yo n’ezo z’oyagala gye zitambuddemu leero n’ebyo amawulire amapya gye bigamba. Tekozesa kwekenneenya.';

  @override
  String get briefRefresh => 'Zza buggya';

  @override
  String get sectionEarnings => 'Ebivudde mu kitundu ky\'omwaka';

  @override
  String earningsNext(String date) {
    return 'Lipoota eddako: $date';
  }

  @override
  String get earningsExpected => 'EPS esuubirwa';

  @override
  String get earningsReported => 'EPS eyalangiriddwa';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Etuuse oba esinze EPS esuubirwa mu $beats ku bitundu by\'omwaka $total ebiyise',
      one: 'Etuuse oba esinze EPS esuubirwa mu $beats ku kitundu ky\'omwaka 1',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol egenda kufulumya ebivudde mu kitundu ky\'omwaka enkya';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol efulumya ebivudde mu kitundu ky\'omwaka leero';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return 'Dividendi ya $symbol esuubirwa leero';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Nga $amount. Giwandiike mu portfolio yo ng\'etuuse.';
  }

  @override
  String get dividendRemindersTitle => 'Okujjukiza ku dividendi';

  @override
  String get dividendRemindersSubtitle =>
      'Obubaka ku lunaku dividendi lw\'esuubirwa okusinziira ku nkola y\'ensasula z\'owandiise, osobole okugiwandiika';

  @override
  String get earningsRemindersTitle => 'Okujjukiza ku bivudde';

  @override
  String get earningsRemindersSubtitle =>
      'Obubaka olunaku lumu nga emigabo gy\'oyagala oba egiri mu portfolio yo tennafulumya bivudde mu kitundu ky\'omwaka';

  @override
  String addAllToFavorites(int count) {
    return 'Byonna gattako ku by\'oyagala ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Yingiza okuva mu kifaananyi kya sikirini';

  @override
  String get holdingsReading => 'Tusoma emigabo gyo…';

  @override
  String get holdingsReviewTitle => 'Emigabo egizuuliddwa';

  @override
  String get holdingsReviewHint =>
      'Kebera ennamba nga tonnaziyongerako. Bbeeyi ye bbeeyi yo eya wakati gye wagulirako buli mugabo, so si bbeeyi ya leero.';

  @override
  String get holdingsNoPrice =>
      'Tewali bbeeyi ya wakati ey\'okugula ku kifaananyi';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Yongerako emigabo $count',
      one: 'Yongerako omugabo 1',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Tewali migabo gizuuliddwa ku kifaananyi kino. Gezaako ekifaananyi kya sikirini eky\'olupapula lw\'emigabo gyo ku app ya broker wo.';

  @override
  String get week52Range => 'Ebbanga lya wiiki 52';

  @override
  String week52BelowHigh(String percent) {
    return '$percent wansi wa waggulu mu wiiki 52';
  }

  @override
  String get week52AtHigh => 'Ku waggulu mu wiiki 52';

  @override
  String get alertKindTrailing => 'Bw\'ekka okuva ku ntikko';

  @override
  String get alertTrailingPercent => 'Okukka okuva ku ntikko (%)';

  @override
  String get alertTrailingHint =>
      'Egoberera bbeeyi ng\'erinnya: ekumanyisa bbeeyi bw\'ekka kino okuva ku ddaala lyayo erisinga waggulu bukyanga ogiteekawo.';

  @override
  String alertDescTrailing(String percent) {
    return 'Okukka kwa $percent okuva ku ntikko';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'entikko okutuuka kati: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol kikkiridde $percent okuva ku ntikko';
  }

  @override
  String get sectionInsiders => 'Okugula n\'okutunda kw\'abakulu ba kkampuni';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'okugula $count',
      one: 'okugula 1',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'okutunda $count',
      one: 'okutunda 1',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Ekisigadde: emigabo $shares';
  }

  @override
  String get insiderBuy => 'Yagula';

  @override
  String get insiderSell => 'Yatunda';

  @override
  String get insiderHint =>
      'Okugula n\'okutunda mu katale akaggule okw\'abakulu n\'abakungu mu nnaku 90 eziyise (SEC Form 4). Okukozesa option n\'emigabo egiweebwa ng\'ekirabo tebibalibwa.';

  @override
  String get insiderNone =>
      'Tewali kugula oba kutunda kw\'abakulu mu katale akaggule mu nnaku 90 eziyise.';

  @override
  String get analystTrend => 'Endowooza bwe zakyuka buli mwezi';

  @override
  String get watchListAll => 'Byonna';

  @override
  String get watchListNew => 'Olukalala olupya';

  @override
  String get watchListName => 'Erinnya ly\'olukalala';

  @override
  String get watchListRename => 'Kyusa erinnya ly\'olukalala';

  @override
  String get watchListDelete => 'Sazaamu olukalala';

  @override
  String get watchListAddTo => 'Gattako ku lukalala';

  @override
  String get watchListEmpty =>
      'Tewannaba kubaawo sitoka ku lukalala luno. Nyiga eppeesa ly\'olukalala eriri okumpi ne sitoka okugigattako.';

  @override
  String get portfolioAskTitle => 'Ebibuuzo ku migabo gyo';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'Kkopi ey\'obukuumi';

  @override
  String get backupSave => 'Tereka kkopi ey\'obukuumi';

  @override
  String get backupSaveHint =>
      'By\'oyagala, enkalala zo, emigabo gyo, okulabula n\'ebiwandiiko byo mu fayiro emu.';

  @override
  String get backupRestore => 'Zzaawo okuva mu kkopi ey\'obukuumi';

  @override
  String get backupRestoreHint =>
      'Kyongerako ebiri mu fayiro; tewali na kimu ky\'olina kati ekijjibwawo.';

  @override
  String get backupRestored => 'Kkopi ey\'obukuumi ezziddwawo.';

  @override
  String get backupInvalid => 'Fayiro eno si kkopi ey\'obukuumi eya WhatStock.';

  @override
  String get allocationPositions => 'Emigabo';

  @override
  String get allocationSectors => 'Ebitundu';

  @override
  String get allocationCurrencies => 'Ensimbi';

  @override
  String get allocationAccounts => 'Akawunti';

  @override
  String get compareReturn1y => 'Amagoba g\'omwaka 1';

  @override
  String get compareFromHigh => 'Okuva ku waggulu mu wiiki 52';

  @override
  String get briefAutoTitle => 'Ebifunze bya buli lunaku buli ku makya';

  @override
  String get briefAutoSubtitle =>
      '“Leero ne sitoowa zo” kyekolera kyokka oluvannyuma lwa 7:00 ku makya nga app ekola; ku kompyuta, obubaka bujja kukutegeeza. Kikozesa kkomo ly’ebibuuzo byo erya buli lunaku, so si kwekenneenya.';

  @override
  String get targetsButton => 'Engabanya ey\'ekigendererwa';

  @override
  String get targetsTitle => 'Engabanya ey\'ekigendererwa';

  @override
  String get targetsHint =>
      'Teekawo kitundu ki ekya portfolio buli mugabo kye gulina okuba nakyo. Leka ekifo nga kikalu bwe wataba kigendererwa. Oluvannyuma app ejja kukulaga ky\'olina okugula oba okutunda okutuuka eyo.';

  @override
  String targetsSum(String percent) {
    return 'Byonna awamu: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Gula ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Tunda ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Kituuse ku kigendererwa';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol esukkulumye EPS esuubirwa';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol tetuuse ku EPS esuubirwa';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'EPS eyalangiriddwa $actual, esuubirwa $estimate';
  }

  @override
  String get newsExplain => 'Kino kitegeeza ki?';

  @override
  String get watchAlertAll => 'Okulabula ku nkyukakyuka ennene ez\'olunaku';

  @override
  String get watchAlertAllHint =>
      'Okulabula ku bbeeyi eri buli mugabo ku lukalala luno: kujja kuvuga bwe gukyuka bwe kutyo mu lunaku lumu, waggulu oba wansi. Egyo egirina okulabula edda gijja kusigaza kwagyo.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Okulabula $count kuteekeddwawo',
      one: 'Okulabula 1 kuteekeddwawo',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Fulumya amagoba agafunye (CSV)';

  @override
  String get portfolioAnnualReturn => 'Amagoba ga buli mwaka';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / omwaka';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Amagoba ga buli mwaka agapimiddwa ku nsimbi (XIRR): gatunuulira ddi lwe wagula ne lwe watunda, n\'olwekyo ensimbi ze wayongerako oluvannyuma tezigatabula. Galagibwa ng\'ekyo kye wasooka okugula kiweza waakiri omwaka gumu; amagoba ku migabo tegazingiddwamu.';

  @override
  String get eventsAddToCalendar => 'Gattako ku kalenda (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Okulabula ku portfolio';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Obubaka nga portfolio yo yonna ekyuse bwe kati mu lunaku lumu.';

  @override
  String get portfolioMoveAlertOff => 'Kiziddwako';

  @override
  String portfolioMoveUp(String percent) {
    return 'Portfolio yo erinnye $percent leero';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Portfolio yo ekka $percent leero';
  }

  @override
  String get whatIfTitle => 'Singa wateeka ssente?';

  @override
  String get whatIfAmount => 'Omuwendo';

  @override
  String whatIfResult(String amount, String period) {
    return 'Singa wateeka $amount okumala $period, leero zandibadde';
  }

  @override
  String get whatIfNote =>
      'Kisinziira ku bbeeyi y’omugabo yokka: amagoba ku migabo, ebisale n’emisolo tebiriimu. Amagoba ag’emabega tegalagula ga mu maaso.';

  @override
  String get watchShare => 'Gabana olukalala';

  @override
  String get watchImport => 'Yongerako obubonero bwa ticker';

  @override
  String get watchImportHint =>
      'Teekamu obubonero bwa ticker obwawuddwamu koma, ebbanga oba ennyiriri empya – okugeza olukalala omuntu lw\'akuweerezza.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Emigabo $count gyongeddwako',
      one: 'Omugabo 1 gwongeddwako',
      zero: 'Tewali migabo mipya',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Ebisinga obunene bisooke';

  @override
  String get positionsSortGain => 'Amagoba gonna agasinga bisooke';

  @override
  String get positionsSortToday => 'Ebisinze leero bisooke';

  @override
  String get chartMyBuys => 'Bye wagula';

  @override
  String get chartMySells => 'Bye watunda';

  @override
  String get shortcutsTitle => 'Shortcut za kiibodi';

  @override
  String usMarketOpen(String time) {
    return 'Akatale k\'Amerika kaggule · kajja kuggalwa mu $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Akatale k\'Amerika kaggale · kajja kuggulwa mu $time';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes ddak.';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours ssaawa $minutes ddak.';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days nnaku $hours ssaawa';
  }

  @override
  String get dividendGoalSet =>
      'Teekawo ekiruubirirwa kya dividendi buli mwezi';

  @override
  String get dividendGoalTitle => 'Ekiruubirirwa kya dividendi buli mwezi';

  @override
  String get dividendGoalAmount => 'Dividendi buli mwezi';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Nga $amount buli mwezi ku magoba ga leero · $percent · Ekiruubirirwa: $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Nga $amount buli mwezi ku magoba ga leero · Otuuse ku kiruubirirwa: $goal';
  }

  @override
  String get portfolioAccount => 'Akawunti';

  @override
  String get portfolioAccountHint => 'okugeza: TBSZ 2026 (si kya tteeka)';

  @override
  String get portfolioAccountAdd => 'Londa akawunti';

  @override
  String get portfolioAccountsAll => 'Akawunti zonna';

  @override
  String get portfolioAccountNote =>
      'Bye wagula, bye watunda ne dividendi ku akawunti eno byokka. Ensimbi enkalu, ebiruubirirwa n\'okwekenneenya kwa AI biragibwa wansi wa Akawunti zonna.';

  @override
  String get portfolioNoAccount => 'Tewali akawunti';

  @override
  String portfolioFee(String currency) {
    return 'Ebisale ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Yongerako ebisale';

  @override
  String portfolioFeeRow(String amount) {
    return 'Ebisale: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'Ebifunze by\'omwaka';

  @override
  String get portfolioProceeds => 'Ssente z\'okutunda';

  @override
  String get portfolioCostBasis => 'Omuwendo gw\'okugula';

  @override
  String get portfolioFeesPaid => 'Ebisale ebyasasulwa';

  @override
  String get portfolioAnnualSummaryNote =>
      'Ssente ziri mu ssente ezaasooka, tezikyusiddwa. Ssente z\'okutunda zigyiddwako ebisale by\'okutunda; omuwendo gw\'okugula gutwaliddemu ebisale by\'okugula (FIFO). Ku lipoota y\'omusolo, kyusa ku muwendo gw\'okuwaanyisa ensimbi ekitongole ky\'omusolo kye kyetaaga.';

  @override
  String get portfolioShare => 'Gabana amagoba/okufiirwa';

  @override
  String get portfolioShareHeading => 'Emigabo gyange';

  @override
  String get portfolioTopHoldings => 'Emigabo egisinga obunene';

  @override
  String get portfolioShareNote =>
      'Ebitundu ku kikumi byokka bye bigabanwa, si ssente.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Emigabo $count',
      one: 'Omugabo 1',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'Si magezi ga kusiga nsimbi';

  @override
  String get contributionButton => 'Teeka ssente empya';

  @override
  String contributionAmount(String currency) {
    return 'Ssente z\'onoteeka ($currency)';
  }

  @override
  String get contributionHint =>
      'Kugula kwokka, tewali kutunda: emigabo egisinga okuba wansi w\'ekigendererwa kyagyo gye gisooka okufuna ssente.';

  @override
  String contributionShares(String shares) {
    return '≈ emigabo $shares';
  }

  @override
  String get portfolioGoalSet => 'Teekawo ekiruubirirwa';

  @override
  String get portfolioGoalTitle => 'Ekiruubirirwa ky\'emigabo gyo';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · Ekiruubirirwa: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Otuuse ku kiruubirirwa: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Ggyawo ekiruubirirwa';

  @override
  String get alertEdit => 'Kyusa okulabula';

  @override
  String get positionOpenLots => 'Bikyali byo (ebyasooka okusooka)';

  @override
  String get lotRemoved => 'Ekyaguliddwa oba ekyatundiddwa kisanguddwawo';

  @override
  String get alertDeleted => 'Okulabula kusanguddwawo';

  @override
  String get alertsClearTriggered => 'Sangulawo okulabula okwakoze';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Okulabula $count kusanguddwawo',
      one: 'Okulabula 1 kusanguddwawo',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Omuko ogusooka';

  @override
  String get allocationCountries => 'Amawanga';

  @override
  String get newsExplainNoteResearch =>
      'Ennyinnyonnyola ya AI: enoonya amazima ku mukutu, eggulawo ekiwandiiko, era epima ensibuko bw\'eyesigika. Si magezi ga kusiga nsimbi. Kikozesa kkomo ly’ebibuuzo byo erya buli lunaku, so si kwekenneenya.';

  @override
  String get sourceOfficial => 'Ekyakakasibwa';

  @override
  String get sourcePressRelease => 'Ekirango';

  @override
  String get sourceMajorNews => 'Omukutu omunene';

  @override
  String get sourceOpinion => 'Endowooza';

  @override
  String get earningsSummaryButton => 'Kiki ekyali mu lipoota esembyeyo?';

  @override
  String get earningsSummaryNote =>
      'Mu bufunze okuva mu AI ku birango by\'ebivudde mu kkampuni n\'amawulire g\'empapula g\'esanga ku mukutu. Si magezi ga kusiga nsimbi. Kikozesa kkomo ly’ebibuuzo byo erya buli lunaku, so si kwekenneenya.';

  @override
  String get compareLastSurprise => 'EPS ey\'ekitundu ekyayita vs esuubirwa';

  @override
  String get compareNextReport => 'Lipoota eddako';

  @override
  String get resolvingDescription => 'Tuzuula mugabo gw\'otegeeza…';

  @override
  String get instrumentTitle => 'Ebikwata ku kintu kino';

  @override
  String get instrumentHint =>
      'Tewali bikwata ku kkampuni ku kabonero kano – kiyinza okuba ETF, fund oba depositary receipt. Buuza AI kye kiri, kirimu ki, era kisaasaanya ki.';

  @override
  String get instrumentAsk => 'Kino kiki?';

  @override
  String get instrumentNote =>
      'Okunnyonnyola kwa AI okuva ku lupapula lwa fund lw’oyo agifulumya n’emikutu gy’ebyensimbi gy’esanga ku mukutu. Si magezi ga kusiga nsimbi. Kikozesa kkomo ly’ebibuuzo byo erya buli lunaku, so si kwekenneenya.';

  @override
  String suggestAskAi(String query) {
    return 'Buuza AI: “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Tewali bbeeyi ya kati eya $symbols.';
  }

  @override
  String get eventsRecentResults => 'Ebivudde ebyakalangirirwa';

  @override
  String get saveToNotes => 'Tereka mu biwandiiko byange';

  @override
  String get savedToNotes => 'Kitereddwa mu biwandiiko byo';

  @override
  String get portfolioDividendsReceived => 'Dividendi ezafunibwa';

  @override
  String get portfolioDividendsThisYear => 'Omwaka guno';

  @override
  String get portfolioDividendsAllTime => 'Ebiseera byonna';

  @override
  String get portfolioAddDividend => 'Yongerako dividendi';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Ssente ezafunibwa ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Olunaku lw\'okusasula';

  @override
  String get portfolioDividendsEmpty =>
      'Tewannabaawo dividendi ewandiikiddwa. Ziyongereko n\'engalo, oba leeta export ya broker wo – ennyiriri zaayo eza dividendi nazo zitwalibwa.';

  @override
  String get portfolioSplit => 'Okugabanya emigabo';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Okugabanya emigabo: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Ebyaguzibwa n\'ebyatundibwa nga tebinnagabanyizibwa bikyusibwa: omuwendo gw\'emigabo gukubisibwamu ate ebbeeyi ya buli mugabo n\'egabanyizibwamu, kale ssente ezaasasulwa zisigala nga bwe ziri.';

  @override
  String get portfolioSplitRatio => 'Ekigero (emipya : emikadde)';

  @override
  String get portfolioSplitRatioError =>
      'Wandiika ekigero nga 10:1, oba 1:10 okugatta emigabo.';

  @override
  String get portfolioSplitDate => 'Ennaku z\'okugabanya';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Okugabanya emigabo $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Okugabanya emigabo kusanguddwa';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Okugabanya emigabo $count kwongeddwako',
      one: 'Okugabanya emigabo 1 kwongeddwako',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dividendi $count ziyongeddwako',
      one: 'Dividendi 1 eyongeddwako',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Fulumya dividendi (CSV)';

  @override
  String get portfolioDividendDeleted => 'Dividendi esanguddwa';

  @override
  String get portfolioDividendsHint =>
      'Ssente nga bwe zaatuuka ku akawunti yo, mu ssente ez\'okusasula; omugatte gukyusibwa ku mutindo gwa leero. Ku lipoota yo ey\'omusolo, kozesa ekiwandiiko kya broker wo.';

  @override
  String get awayTitle => 'Bwe wabadde toliiwo';

  @override
  String awaySince(String when) {
    return 'Okuva $when';
  }

  @override
  String get awayQuiet => 'Tewali kyakyuse nnyo.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Okulabula $count kuzze',
      one: 'Okulabula 1 kuzze',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Baafulumizza ebivuddemu: $symbols';
  }

  @override
  String get moveWhyButton => 'Lwaki ekyukakyuka leero?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent leero';
  }

  @override
  String get moveWhyNote =>
      'Ennyinnyonnyola ya AI okuva mu mawulire ga leero agasangiddwa ku mukutu; ensonga entuufu eyinza obutamanyibwa oba okuba ey\'enjawulo. Si kubuulirira ku kusiga ensimbi. Ekozesa omuwendo gwo gw\'ebibuuzo ebya buli lunaku, si kwekenneenya.';

  @override
  String get sectionTechnical => 'Ekifaananyi eky\'obukugu';

  @override
  String get labelSma50 => 'Wakati w\'ennaku 50';

  @override
  String get labelSma200 => 'Wakati w\'ennaku 200';

  @override
  String get labelRsi => 'RSI (ennaku 14)';

  @override
  String get labelVolatility30 => 'Enkyukakyuka y\'omuwendo (ennaku 30)';

  @override
  String techAbove(String percent) {
    return '$percent waggulu';
  }

  @override
  String techBelow(String percent) {
    return '$percent wansi';
  }

  @override
  String get techOverbought => 'gugulidwa ennyo';

  @override
  String get techOversold => 'gutundiddwa ennyo';

  @override
  String get techNeutral => 'wakati';

  @override
  String get techGoldenCross =>
      'Wakati w\'ennaku 50 ali waggulu wa wakati w\'ennaku 200 – okusinziira ku nsoma ey\'edda, kiraga okulinnya.';

  @override
  String get techDeathCross =>
      'Wakati w\'ennaku 50 ali wansi wa wakati w\'ennaku 200 – okusinziira ku nsoma ey\'edda, kiraga okukka.';

  @override
  String get glossSma50 =>
      'Wakati w\'emiwendo egy\'okuggalawo egy\'ennaku 50 ez\'obusuubuzi ezaakayita. Omuwendo oguli waggulu waayo gutera okutwalibwa ng\'amaanyi ag\'ekiseera ekitono, oguli wansi ng\'obunafu.';

  @override
  String get glossSma200 =>
      'Wakati w\'emiwendo egy\'okuggalawo egy\'ennaku 200 ez\'obusuubuzi ezaakayita – olunyiriri olw\'edda olw\'ekiseera ekiwanvu. Abasigansimbi bangi batwala omuwendo oguli waggulu waayo ng\'okulinnya okw\'ekiseera ekiwanvu.';

  @override
  String get glossRsi =>
      'Ekipimo ky\'amaanyi agageraageranyizibwa (RSI): kigeraageranya amagoba ag\'ennaku zino n\'okufiirwa okw\'ennaku zino ku kipimo kya 0–100. Waggulu wa 70 sitoka etera okuyitibwa egulidwa ennyo (yalinnya mangu), wansi wa 30 etundiddwa ennyo – naye omutendera ogw\'amaanyi gusobola okusigala awo ekiseera kiwanvu.';

  @override
  String get glossVolatility =>
      'Omuwendo bwe gukyukakyuka buli lunaku, nga gubaliddwa mu mwaka gumu: 20% kitegeeza nti mu mwaka ogwa bulijjo omuwendo gutambulira mu ±20%. Enkyukakyuka ennyingi kitegeeza entambula ennene ku njuyi zombi.';

  @override
  String get techNote =>
      'Kibaliddwa okuva mu miwendo egy\'okuggalawo egya buli lunaku. Obubonero obw\'obukugu bunnyonnyola ebyayita, so si eby\'omu maaso.';

  @override
  String portfolioAbove200(int above, int count) {
    return 'Emigabo $above ku $count giri waggulu wa wakati gwayo ogw\'ennaku 200';
  }

  @override
  String get watchSignalsTitle => 'Obubonero';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · gutundiddwa ennyo';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · gugulidwa ennyo';
  }

  @override
  String get signalCrossedAbove => 'gulinnye waggulu wa wakati w\'ennaku 200';

  @override
  String get signalCrossedBelow => 'gukkide wansi wa wakati w\'ennaku 200';

  @override
  String get signalAlertsTitle => 'Obubaka ku bubonero obwa tekinika';

  @override
  String get signalAlertsSubtitle =>
      'Omulundi gumu buli lunaku, nga omugabo gw\'ogoberera gutundiddwa ennyo oba gugulidwa ennyo (RSI), oba omuwendo gwagwo gusomose wakati w\'ennaku 200.';

  @override
  String get signalAlertsNotification => 'Obubonero obwa tekinika';

  @override
  String get glossaryPageTitle => 'Ennyinyonnyola y\'ebigambo';

  @override
  String get glossaryPageSubtitle =>
      'Ennyinyonnyola ennyangu eya buli muwendo app gw\'eraga, okuva ku P/E okutuuka ku RSI';

  @override
  String get glossarySearchHint => 'Noonya mu nnyinyonnyola y\'ebigambo';

  @override
  String get portfolioCash => 'Ensimbi enkalu';

  @override
  String get portfolioCashTitle => 'Ensimbi enkalu eziriwo';

  @override
  String get portfolioCashHint =>
      'Ensimbi ezitasiigiddwa eziri ewa broker wo, buli kika kya ssente. Zibalirwa mu muwendo gwonna ne mu ngabanya; so si mu magoba.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Omuwendo ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Teeka ensimbi enkalu eziriwo';

  @override
  String get portfolioDividendsByMonth => 'Buli mwezi';

  @override
  String get dividendsLegendReceived => 'Ebyafunibwa';

  @override
  String get dividendsLegendExpected => 'Ebisuubirwa';

  @override
  String get portfolioDividendsExpected => 'Ezisuubirwa okuddako';

  @override
  String get portfolioDividendsExpectedNote =>
      'Zibalirirwa okuva ku nnaku n\'emiwendo gy\'ensasula ze wawandiika; kkampuni zisobola okuzikyusa oba okuzibuuka.';

  @override
  String portfolioDividendAround(String date) {
    return 'awo nga $date';
  }
}
