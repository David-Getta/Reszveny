// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kikuyu Gikuyu (`ki`).
class AppLocalizationsKi extends AppLocalizations {
  AppLocalizationsKi([String locale = 'ki']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'Oya mbica ya hisa ũmenye ũhoro wayo wothe.';

  @override
  String get homeHint =>
      'Cetifiketi ya hisa, skrini ya app ya broker, ngathĩti kana logo ya kambuni – kĩndũ o gĩothe kĩngĩonania hisa.';

  @override
  String get takePhoto => 'Oya mbica';

  @override
  String get chooseFromGallery => 'Thuura kuuma gallery';

  @override
  String get chooseImage => 'Thuura mbica';

  @override
  String get enterTickerManually => 'Andĩka ticker wee mwene';

  @override
  String get tickerInputLabel => 'Ticker ya hisa';

  @override
  String get tickerInputHint => 'mũhiano: AAPL';

  @override
  String get lookUp => 'Caria';

  @override
  String demoModeBanner(String symbols) {
    return 'Mũtaratara wa demo – gũtirĩ kĩhingũro kĩa ũhoro wa thoko kĩigĩtwo. Ũhoro wa mũhiano ũrĩ wa: $symbols.';
  }

  @override
  String get recognizing => 'Nĩtũrathuthuria mbica…';

  @override
  String get loadingData => 'Nĩtũragĩa na ũhoro…';

  @override
  String get noCandidatesTitle => 'Gũtirĩ hisa yamenyekire';

  @override
  String get noCandidatesBody =>
      'Tũtiahotire kũmenya hisa mbica-inĩ ĩno. Geria mbica ĩrĩ njega makĩria, kana wandĩke ticker wee mwene.';

  @override
  String get whatWeSaw => 'Kĩrĩa twonire';

  @override
  String get chooseCandidateTitle => 'Wendaga kuuga hisa ĩrĩkũ?';

  @override
  String confidencePercent(int percent) {
    return 'Wĩhoko $percent%';
  }

  @override
  String get settings => 'Mĩtaratara';

  @override
  String get language => 'Rũthiomi';

  @override
  String get systemLanguage => 'Rũthiomi rwa system';

  @override
  String get about => 'Ũhoro wa app';

  @override
  String get disclaimer =>
      'App ĩno ĩheanaga ũhoro tu, na ti ũtaaro wa investment. Ũhoro no ũcererwo kana ũtuĩke ti wa ma.';

  @override
  String dataSource(String source) {
    return 'Gĩthima kĩa ũhoro: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Kũmenya mbica: $source';
  }

  @override
  String get retry => 'Geria rĩngĩ';

  @override
  String get cancel => 'Tiga';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Hinga';

  @override
  String get errorGeneric => 'Kũrĩ na ũndũ ũtathiĩte wega.';

  @override
  String get errorSectionUnavailable => 'Gĩcunjĩ gĩkĩ gĩtiahotire kũhingũka.';

  @override
  String get notAvailable => 'gũtirĩ';

  @override
  String get sectionIdentity => 'Ũhoro wa hisa';

  @override
  String get sectionPrice => 'Thogora';

  @override
  String get sectionValuation => 'Gũthima thogora';

  @override
  String get sectionFinancials => 'Ũhoro wa mbeca';

  @override
  String get sectionDividend => 'Dividend';

  @override
  String get sectionProfile => 'Ũhoro wa kambuni';

  @override
  String get sectionAnalysts => 'Mawoni ma athuthuria';

  @override
  String get sectionNews => 'Mohoro';

  @override
  String get sectionRecognition => 'Ũrĩa twamenyire hisa';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Thoko ya hisa';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Mbeca';

  @override
  String get labelCountry => 'Bũrũri';

  @override
  String get labelIndustry => 'Mũthemba wa wĩra';

  @override
  String get labelSector => 'Sekta';

  @override
  String get labelWebsite => 'Website';

  @override
  String get labelIpoDate => 'Mũthenya wa IPO';

  @override
  String get labelMarketCap => 'Thogora wa kambuni thoko-inĩ';

  @override
  String get labelSharesOutstanding => 'Hisa iria irĩ thoko-inĩ';

  @override
  String get labelEmployees => 'Aruti a wĩra';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Wabici mũnene';

  @override
  String get labelDescription => 'Ũtaarĩrio';

  @override
  String get labelLastPrice => 'Thogora wa kũrigĩrĩria';

  @override
  String get labelChange => 'Ũgarũrũku';

  @override
  String get labelOpen => 'Thogora wa kũhingũra';

  @override
  String get labelDayHigh => 'Thogora wa igũrũ mũno (mũthenya)';

  @override
  String get labelDayLow => 'Thogora wa thĩ mũno (mũthenya)';

  @override
  String get labelPreviousClose => 'Thogora wa kũhinga mũthenya ũrĩa ũthirĩte';

  @override
  String get labelWeek52High => 'Thogora wa igũrũ mũno (ciumia 52)';

  @override
  String get labelWeek52Low => 'Thogora wa thĩ mũno (ciumia 52)';

  @override
  String get labelAverageVolume10d => 'Mũigana wa gatagatĩ (mĩthenya 10)';

  @override
  String updatedAt(String time) {
    return 'Werũhirio $time';
  }

  @override
  String get labelPeTrailing => 'P/E (ya thuutha)';

  @override
  String get labelPeForward => 'P/E (ya mbere)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / mbeca iria itigaraga';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Mbeca iria itoonyete (TTM)';

  @override
  String get labelNetIncomeTtm => 'Uumithio mũtheru (TTM)';

  @override
  String get labelGrossMargin => 'Kĩgero kĩa uumithio wa mbere';

  @override
  String get labelOperatingMargin => 'Kĩgero kĩa uumithio wa wĩra';

  @override
  String get labelNetMargin => 'Kĩgero kĩa uumithio mũtheru';

  @override
  String get labelRoe => 'Uumithio harĩ mbeca cia ene hisa (ROE)';

  @override
  String get labelRoa => 'Uumithio harĩ indo (ROA)';

  @override
  String get labelDebtToEquity => 'Thiirĩ / mbeca cia ene hisa';

  @override
  String get labelCurrentRatio => 'Ũhoti wa kũrĩha thiirĩ wa ihenya';

  @override
  String get labelRevenueGrowth => 'Gũkũra kwa mbeca iria itoonyete (YoY)';

  @override
  String get labelEpsGrowth => 'Gũkũra kwa EPS (YoY)';

  @override
  String get labelDividendYield => 'Uumithio wa dividend';

  @override
  String get labelDividendPerShare => 'Dividend harĩ hisa ĩmwe';

  @override
  String get labelPayoutRatio => 'Gĩcunjĩ kĩa uumithio kĩrĩa kĩgayagwo';

  @override
  String get labelConsensus => 'Mwĩtĩkanĩro';

  @override
  String get ratingStrongBuy => 'Gũra mũno';

  @override
  String get ratingBuy => 'Gũra';

  @override
  String get ratingHold => 'Iga';

  @override
  String get ratingSell => 'Endia';

  @override
  String get ratingStrongSell => 'Endia mũno';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'athuthuria $count',
      one: 'mũthuthuria 1',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Ihinda: $period';
  }

  @override
  String get noNews => 'Gũtirĩ mohoro ma rĩu.';

  @override
  String get openArticle => 'Hingũra ũhoro';

  @override
  String get openLinkFailed => 'Tũtiahotire kũhingũra link.';

  @override
  String get recognitionSummary => 'Ũhoro mũkuhĩ';

  @override
  String get recognitionEvidence => 'Nĩkĩ twĩciirĩtie ũguo';

  @override
  String get recognitionRawText => 'Ndeto iria ciathomirwo mbica-inĩ';

  @override
  String get errMissingAnthropicKey =>
      'Gũtirĩ ũhoti wa kũmenya mbica (gũtirĩ ANTHROPIC_API_KEY). Andĩka ticker wee mwene.';

  @override
  String get errRecognitionUnreachable =>
      'Tũtiahotire gũkinya service ya kũmenya mbica. Rora connection ya internet yaku.';

  @override
  String errRecognitionHttp(String status) {
    return 'Service ya kũmenya mbica yacookia ihĩtia (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Service ya kũmenya mbica ĩtiahotire kũruta wĩra na mbica ĩno.';

  @override
  String get errRecognitionTruncated =>
      'Icookio rĩa kũmenya mbica rĩatinĩkire. Geria rĩngĩ.';

  @override
  String get errRecognitionBadResponse =>
      'Icookio rĩa magegania kuuma service ya kũmenya mbica.';

  @override
  String get errRecognitionEmpty =>
      'Service ya kũmenya mbica yacookia icookio rĩtarĩ na kĩndũ.';

  @override
  String get errMissingFinnhubKey =>
      'Gũtirĩ ũhoro wa thoko (gũtirĩ FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Tũtiahotire gũkinya service ya ũhoro wa thoko. Rora connection ya internet yaku.';

  @override
  String get errMarketRateLimited =>
      'Mahoya maingĩ mũno harĩ service ya ũhoro wa thoko. Etereera ndagĩka ĩmwe.';

  @override
  String errMarketHttp(String status) {
    return 'Service ya ũhoro wa thoko yacookia ihĩtia (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Icookio rĩa magegania kuuma service ya ũhoro wa thoko.';

  @override
  String errNoQuote(String symbol) {
    return 'Gũtirĩ thogora wonekire wa $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Gũtirĩ ũhoro wa kambuni wonekire wa $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Mũtaratara wa demo wĩtĩkagĩra $symbols tu. Ongerera FINNHUB_API_KEY nĩguo ũgĩe na ũhoro wa rĩu.';
  }

  @override
  String errUnknown(String detail) {
    return 'Kũrĩ na ũndũ ũtathiĩte wega: $detail';
  }

  @override
  String get newSearch => 'Ũcaria mwerũ';

  @override
  String get recentSearches => 'Ũcaria wa rĩu';

  @override
  String get noRecentSearches => 'Gũtirĩ ũcaria wa rĩu.';

  @override
  String get clearRecent => 'Eheria ũcaria wa rĩu';

  @override
  String get greeting => 'Tũrore hisa ĩrĩkũ?';

  @override
  String get searchHint => 'Ticker kana rĩtwa rĩa kambuni';

  @override
  String get attachImage => 'Ongerera mbica';

  @override
  String get searchResultsTitle => 'Kĩrĩa kĩonekire';

  @override
  String errNoResults(String query) {
    return 'Gũtirĩ hisa yonekire ya “$query”.';
  }

  @override
  String get quickBarHint => 'Andĩka ticker kana rĩtwa rĩa kambuni…';

  @override
  String get openFullWindow => 'Hingũra ndirica';

  @override
  String hotkeyHint(String shortcut) {
    return 'Hihinya $shortcut harĩa hothe nĩguo wĩte WhatStock.';
  }

  @override
  String get trayOpen => 'Hingũra WhatStock';

  @override
  String get trayQuickSearch => 'Ũcaria wa ihenya';

  @override
  String get trayQuit => 'Uma';

  @override
  String get appearance => 'Ũrĩa yonekaga';

  @override
  String get themeSystem => 'System';

  @override
  String get themeDark => 'Nduma';

  @override
  String get themeLight => 'Ũtheri';

  @override
  String get back => 'Cooka';

  @override
  String get aiSectionTitle => 'Ũthuthuria wa AI';

  @override
  String get aiIntro =>
      'Ũtaarĩrio mũraihu wandĩkĩtwo nĩ AI: mohoro ma rĩu na mũkuhĩ, wĩra wa kambuni, hinya, ugwati na maũndũ mahithe, gũthima thogora, ũrĩa thogora ũngĩthiĩ na mĩhiano ya maũndũ kuuma mawoni ma meciria, ma mũtũũrĩre wa andũ, ma technical na ma ũtonga wa bũrũri, na maũndũ ma kũrũmĩrĩra.';

  @override
  String get aiGenerate => 'Thondeka ũthuthuria';

  @override
  String get aiRegenerate => 'Thondeka rĩngĩ';

  @override
  String get aiGenerating =>
      'Nĩtũrahaarĩria ũthuthuria… ũngĩoya ndagĩka ĩmwe kana igĩrĩ.';

  @override
  String get aiSources => 'Ithima cia ũhoro';

  @override
  String aiGeneratedAt(String time) {
    return 'Wathondekirwo $time';
  }

  @override
  String get aiDisclaimer =>
      'Ũthuthuria ũyũ wathondekirwo nĩ AI kuuma ũhoro wa andũ othe na mohoro ma rĩu. No ũkorwo na mahĩtia kana ũkorwo ũrĩ wa tene, na ti ũtaaro wa investment.';

  @override
  String get errAiNotConfigured =>
      'Ũthuthuria wa AI ndũrĩ ho (gũtirĩ ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Tũtiahotire gũkinya service ya AI. Rora connection ya internet yaku.';

  @override
  String errAiHttp(String status) {
    return 'Service ya AI yacookia ihĩtia (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Service ya AI nĩyaregire gũthuthuria hisa ĩno.';

  @override
  String get errAiBadResponse => 'Icookio rĩa magegania kuuma service ya AI.';

  @override
  String get sectionChart => 'Chati ya thogora';

  @override
  String get rangeOneWeek => 'Kiumia 1';

  @override
  String get rangeOneMonth => 'Mweri 1';

  @override
  String get rangeThreeMonths => 'Mĩeri 3';

  @override
  String get rangeOneYear => 'Mwaka 1';

  @override
  String get rangeFiveYears => 'Mĩaka 5';

  @override
  String get chartUnavailable =>
      'Historia ya thogora ndĩrĩ ho kuuma gĩthima kĩa ũhoro kĩa rĩu.';

  @override
  String get sectionStatements => 'Ripoti cia mbeca (cia o mwaka)';

  @override
  String get labelFiscalYear => 'Mwaka wa mbeca';

  @override
  String get labelRevenue => 'Mbeca iria itoonyete';

  @override
  String get labelNetIncome => 'Uumithio mũtheru';

  @override
  String get labelTotalAssets => 'Indo ciothe';

  @override
  String get labelTotalLiabilities => 'Thiirĩ wothe';

  @override
  String get labelEquity => 'Mbeca cia ene hisa';

  @override
  String get labelOperatingCashFlow => 'Mũtherere wa mbeca cia wĩra';

  @override
  String get statementsUnavailable => 'Ripoti cia mbeca itirĩ ho cia hisa ĩno.';

  @override
  String get launchAtLogin => 'Ambĩrĩria rĩrĩa ũgũtoonya';

  @override
  String get hotkeyLabel => 'Njĩra ya ihenya';

  @override
  String get hotkeyRecordHint => 'Hihinya haha, ũcooke ũhihinye keys njerũ';

  @override
  String get hotkeyReset => 'Cookia ũrĩa warĩ mbere';

  @override
  String get pasteImage => 'Ikĩra mbica ĩrĩa wakopire';

  @override
  String get errClipboardNoImage => 'Gũtirĩ mbica wakopire.';

  @override
  String get favorites => 'Iria wendete';

  @override
  String get addToFavorites => 'Ongerera harĩ iria wendete';

  @override
  String get removeFromFavorites => 'Ruta harĩ iria wendete';

  @override
  String get noFavorites =>
      'Gũtirĩ kĩndũ gũkũ rĩu. Hihinya njata ya hisa nĩguo ũmĩongerere.';

  @override
  String get displayCurrency => 'Mbeca cia kuonania';

  @override
  String get displayCurrencyNone => 'Mbeca cia hisa yo nyene tu';

  @override
  String labelConverted(String currency) {
    return '≈ na $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Kĩgero: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Mawerũhia';

  @override
  String currentVersion(String version) {
    return 'Version $version';
  }

  @override
  String get autoUpdate => 'Mawerũhia meikĩrage o ene';

  @override
  String get checkForUpdates => 'Caria mawerũhia';

  @override
  String get updateChecking => 'Nĩtũracaria mawerũhia…';

  @override
  String get updateUpToDate => 'Ũrĩ na version njerũ mũno.';

  @override
  String updateAvailable(String version) {
    return 'Version $version nĩ ĩrĩ ho.';
  }

  @override
  String get updateDownloading => 'Nĩtũraikũrũkia iwerũhia thuutha-inĩ…';

  @override
  String get updateDownloaded =>
      'Iwerũhia rĩhaarĩrĩtie. Ambĩrĩria rĩngĩ nĩguo ũrĩikĩre.';

  @override
  String get updateNow => 'Erũhia';

  @override
  String get restartNow => 'Ambĩrĩria rĩngĩ';

  @override
  String get updatesViaStore => 'Mawerũhia mokaga o ene kuuma store ya app.';

  @override
  String get updateCheckFailed => 'Tũtiahotire gũcaria mawerũhia.';

  @override
  String get subscription => 'Ũiyandĩkithio';

  @override
  String get planTrial => 'Kũgeria';

  @override
  String get planNormal => 'Ya mũtugo';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Gũtirĩ mũbango ũrĩ ho';

  @override
  String planAnalysesPerMonth(int count) {
    return 'Mathuthuria $count o mweri';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Kũgeria gwa tũhũ kwa mĩthenya $days na mathuthuria $count';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Gwatigara mĩthenya $days ya kũgeria',
      one: 'Gwatigara mũthenya 1 wa kũgeria',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Kũgeria gwaku gwa tũhũ nĩkũthirĩte. Thuura mũbango nĩguo ũthiĩ na mbere gũthuthuria.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Mathuthuria $remaining kuuma $total matigaire ihinda-inĩ rĩĩrĩ';
  }

  @override
  String extraCredits(int count) {
    return 'Mathuthuria $count ma kũongerera';
  }

  @override
  String renewsOn(String date) {
    return 'Ũkerũhio $date';
  }

  @override
  String get choosePlan => 'Thuura mũbango';

  @override
  String get currentPlan => 'Mũbango wa rĩu';

  @override
  String get subscribe => 'Iyandĩkithie';

  @override
  String get perMonth => '/ mweri';

  @override
  String get extraPacksTitle =>
      'Ũrabatara makĩria? Gũra mathuthuria ma kũongerera';

  @override
  String get extraPacksHint =>
      'Mathuthuria ma kũongerera matithiraga, na mahũthagĩrwo thuutha wa marĩa ma mweri wothe gũthira.';

  @override
  String get buy => 'Gũra';

  @override
  String get restorePurchases => 'Cookia indo iria wagũrire';

  @override
  String get manageSubscription => 'Rũgamĩrĩra ũiyandĩkithio';

  @override
  String get purchaseSuccess => 'Nĩ wega! Ũgũri waku nĩ ũrarũta wĩra.';

  @override
  String get purchasePending => 'Ũgũri nĩ ũreterera…';

  @override
  String get purchaseFailed => 'Ũgũri ndũngĩahotire kũrĩkia.';

  @override
  String get purchaseCanceled => 'Ũgũri nĩ watigwo.';

  @override
  String get billingUnavailable =>
      'Ũgũri ndũrĩ ho platform-inĩ ĩno rĩu. Iyandĩkithie na thimũ yaku kana Mac; mũbango waku nĩũkũruta wĩra harĩ kĩndũ o gĩothe kĩaku.';

  @override
  String get errQuotaExceeded =>
      'Ndũrĩ na mathuthuria matigaire ihinda-inĩ rĩĩrĩ. Ambata mũbango waku kana ũgũre mathuthuria ma kũongerera.';

  @override
  String get errTrialExpired =>
      'Kũgeria gwaku gwa tũhũ nĩkũthirĩte. Thuura mũbango nĩguo ũthiĩ na mbere.';

  @override
  String get errNoPlan =>
      'Nĩ ũrabatara mũbango ũrĩ ho nĩguo ũhũthĩre ũthuthuria wa AI.';

  @override
  String get viewPlans => 'Rora mĩbango';

  @override
  String get usageTitle => 'Ũhũthĩri';

  @override
  String get demoPurchaseNote =>
      'Marĩhi ma demo: ũgũri platform-inĩ ĩno nĩ wa kwĩgerekania tu.';

  @override
  String get mostPopular => 'Ĩrĩa yendetwo mũno';

  @override
  String get bestValue => 'Thogora mwega mũno';

  @override
  String get planFeaturesCommon =>
      'Kũmenya mbica, ũhoro wa rĩu, chati, iria wendete na thiomi ciothe 120 irĩ thĩinĩ wa o mũbango. Mũigana wa mweri nĩ wa mathuthuria ma AI.';

  @override
  String get searchLanguages => 'Caria thiomi…';

  @override
  String get noLanguageMatch => 'Gũtirĩ rũthiomi rũiganaine.';

  @override
  String get aiSettings => 'Ũthuthuria wa AI';

  @override
  String get aiLength => 'Ũraihu';

  @override
  String get aiDepthBrief => 'Mũkuhĩ';

  @override
  String get aiDepthStandard => 'Wa gatagatĩ';

  @override
  String get aiDepthDeep => 'Mũriku';

  @override
  String get aiDepthBriefDesc => 'Maũndũ ma bata, na ihenya.';

  @override
  String get aiDepthStandardDesc => 'Ripoti ĩrĩ na icunjĩ ciothe.';

  @override
  String get aiDepthDeepDesc =>
      'Ũcaria mũingĩ wa internet, kũgerekania na kambuni ingĩ, na ũtaarĩrio mũriku makĩria.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Ta ndeto $min–$max';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ũhũthagĩra mathuthuria $count',
      one: 'ũhũthagĩra ũthuthuria 1',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Kĩrathi kĩa mũthomi';

  @override
  String get aiReaderBeginner => 'Mwambĩrĩria';

  @override
  String get aiReaderExperienced => 'Mũmenyereri';

  @override
  String get aiReaderBeginnerDesc =>
      'Rũthiomi rũhũthũ; o kiugo gĩa ũũgĩ nĩgĩtaarĩrĩtio.';

  @override
  String get aiReaderExperiencedDesc =>
      'Mandĩko maiyũrĩte makĩria, na ciugo cia mbeca cia mũtugo.';

  @override
  String get aiCounterArgument => 'Ũhoro mũrũmu mũno wa gũkararia';

  @override
  String get aiCounterArgumentDesc =>
      'Ũhoro mũkuhĩ hĩndĩ ciothe ũrĩkagia na ũhoro mũrũmu mũno wa gũkararia ũtuĩro waguo mwene.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Nginya maita $count ma gũcaria internet harĩ o ũthuthuria na mũbango waku',
      one: 'Nginya rĩita 1 rĩa gũcaria internet harĩ o ũthuthuria na mũbango waku',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Maita ma gũcaria na ũraihu wa gatagatĩ, kũringana na mũbango: Ya mũtugo $normal, Pro $pro, Max $max, Ultra $ultra. “Mũkuhĩ” nĩ 2 nini, “Mũriku” nĩ 2 makĩria.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'nginya maita $count ma gũcaria internet',
      one: 'nginya rĩita 1 rĩa gũcaria internet',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Maita $count ma gũcaria internet harĩ o ũthuthuria',
      one: 'Rĩita 1 rĩa gũcaria internet harĩ o ũthuthuria',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Ũraihu ũyũ ũbataraga mathuthuria $needed, no matigaire $left tu. Thuura ũraihu mũkuhĩ makĩria thĩinĩ wa Mĩtaratara kana ũgĩe na mathuthuria mangĩ.';
  }

  @override
  String get outlookMarketMood => 'Ngoro ya thoko';

  @override
  String get moodVeryPessimistic => 'Kĩrĩrĩro kĩnini mũno';

  @override
  String get moodPessimistic => 'Kĩrĩrĩro kĩnini';

  @override
  String get moodNeutral => 'Gatagatĩ';

  @override
  String get moodOptimistic => 'Kĩrĩrĩro';

  @override
  String get moodVeryOptimistic => 'Kĩrĩrĩro kĩnene';

  @override
  String get scenarioBull => 'Mũhiano wa kũambata';

  @override
  String get scenarioBase => 'Mũhiano wa gatagatĩ';

  @override
  String get scenarioBear => 'Mũhiano wa kũikũrũka';

  @override
  String outlookCurrentPrice(String price) {
    return 'Thogora wa rĩu: $price';
  }

  @override
  String get outlookKeyLevels => 'Mĩhaka ya bata';

  @override
  String get keyLevelSupport => 'Kĩnyiitĩro';

  @override
  String get keyLevelResistance => 'Kĩhingĩrĩria';

  @override
  String get keyLevelAnchor => 'Nanga';

  @override
  String get upcomingEvents => 'Maũndũ marĩa magũũka';

  @override
  String get outlookChartNote =>
      'Mĩhaka nĩ ya kuonania tu; ũhoti wa ũndũ gwĩkĩka nĩ gũthima kwa ũguo tu, ti ũrathi.';

  @override
  String get accountTitle => 'Akaunti';

  @override
  String get signIn => 'Toonya';

  @override
  String get signOut => 'Uma';

  @override
  String get notSignedIn => 'Ndũtoonyete';

  @override
  String get accountBenefit =>
      'Toonya nĩguo ũiyandĩkithio waku ũrute wĩra harĩ indo ciaku ciothe.';

  @override
  String get accountSyncedNote =>
      'Ũiyandĩkithio waku na mathuthuria marĩa matigaire nĩ o ũndũ ũmwe harĩ o kĩndũ.';

  @override
  String get signInTitle => 'Toonya WhatStock';

  @override
  String get emailLabel => 'Email yaku';

  @override
  String get continueWithEmail => 'Thiĩ na mbere na email';

  @override
  String codeSentTo(String email) {
    return 'Twakũtũmĩra code ya namba 6 kũrĩ $email. Ĩrarũta wĩra gwa ndagĩka 10.';
  }

  @override
  String get codeLabel => 'Code ya gũtoonya';

  @override
  String get resendCode => 'Tũma code njerũ';

  @override
  String get useDifferentEmail => 'Hũthĩra email ĩngĩ';

  @override
  String get errInvalidCode => 'Code ti ya ma kana ihinda rĩayo nĩrĩthirĩte.';

  @override
  String get errInvalidEmail => 'Andĩka email ĩrĩ ya ma.';

  @override
  String get errSignInFailed =>
      'Gũtoonya nĩkwaremire. Rora connection yaku ũcooke ũgerie rĩngĩ.';

  @override
  String get checkoutWaiting =>
      'Rĩkia kũrĩha thĩinĩ wa browser yaku. Warĩkia, app nĩĩgwĩerũhia yo nyene.';

  @override
  String get paymentViaStripe =>
      'Marĩhi marĩ na ũgitĩri thĩinĩ wa browser yaku na Stripe. Tiga hĩndĩ o yothe.';

  @override
  String get paymentViaStore =>
      'Ũrĩhagio na akaunti yaku ya App Store kana Google Play. Tiga hĩndĩ o yothe mĩtaratara-inĩ ya store.';

  @override
  String get keySpace => 'Space';

  @override
  String get doubleOptionTitle => 'Hihinya Option maita meerĩ';

  @override
  String get doubleOptionSubtitle =>
      'Gũhihinya key ya Option maita meerĩ na ihenya o nakuo nĩgwĩtaga WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Nĩguo ĩrute wĩra o na thĩinĩ wa app ingĩ, ĩtĩkĩria WhatStock thĩinĩ wa System Settings → Privacy & Security → Input Monitoring, ũcooke ũhingũre app rĩngĩ.';

  @override
  String get openSystemSettings => 'Hingũra System Settings';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Hihinya $shortcut kana ũhihinye Option maita meerĩ harĩa hothe nĩguo wĩte WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Ũrĩa ũngĩĩkĩka mũno';

  @override
  String get longTermToday => 'Ũmũthĩ';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: 'mĩaka $years',
      one: 'mwaka 1',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range o mwaka';
  }

  @override
  String longTermLikely(String price) {
    return 'kũngĩĩkĩka mũno $price';
  }

  @override
  String get confidenceLow => 'Wĩhoko mũnini';

  @override
  String get confidenceMedium => 'Wĩhoko wa gatagatĩ';

  @override
  String get confidenceHigh => 'Wĩhoko mũnene';

  @override
  String get longTermNote =>
      'Mĩhaka ya ihinda iraihu yĩtiĩrĩire mathabu marĩa moigĩtwo, na ĩkaaramaga ihinda rĩgĩthiĩ. Thogora ndũtarĩte dividend. Gũthima kwa ũguo tu, ti ũrathi.';

  @override
  String get portfolio => 'Hisa ciaku';

  @override
  String get portfolioEmpty =>
      'Gũtirĩ kĩndũ gũkũ rĩu. Hingũra hisa ũcooke ũhihinye “Ongerera harĩ hisa ciaku” nĩguo ũrũmĩrĩre kĩrĩa ũrĩ nakĩo.';

  @override
  String get portfolioLocalNote =>
      'Ĩigĩtwo kĩndũ-inĩ gĩkĩ tu. Mũigana wothe ũgarũrĩtwo na thogora wa ECB; thogora no ũcererwo.';

  @override
  String get addToPortfolio => 'Ongerera harĩ hisa ciaku';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Ongerera $symbol';
  }

  @override
  String get portfolioQuantity => 'Mũigana wa hisa';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Thogora wa o hisa ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Mũthenya wa kũgũra';

  @override
  String get portfolioAdd => 'Ongerera';

  @override
  String get portfolioInvalidNumber => 'Andĩka namba nene gũkĩra zero.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol nĩyongereirwo harĩ hisa ciaku.';
  }

  @override
  String get portfolioTotalValue => 'Thogora wothe';

  @override
  String get portfolioToday => 'Ũmũthĩ';

  @override
  String get portfolioGainLoss => 'Uumithio/Hasara';

  @override
  String get portfolioInvested => 'Mbeca ciigĩtwo';

  @override
  String get portfolioAllocation => 'Ũgayanio';

  @override
  String get portfolioPositions => 'Hisa iria ũrĩ nacio';

  @override
  String portfolioAvgCost(String price) {
    return 'thogora wa gatagatĩ $price';
  }

  @override
  String get portfolioYourPosition => 'Kĩrĩa ũrĩ nakĩo';

  @override
  String get portfolioPurchases => 'Ũgũri';

  @override
  String get portfolioRemove => 'Ruta';

  @override
  String get portfolioExcluded =>
      'Hisa itarĩ na thogora kana kĩgero kĩa gũcenjia mbeca ititaranagwo mũigana-inĩ wothe.';

  @override
  String get priceAlerts => 'Imenyithia cia thogora';

  @override
  String get setPriceAlert => 'Iga kĩmenyithia kĩa thogora';

  @override
  String alertDialogTitle(String symbol) {
    return 'Kĩmenyithia kĩa thogora · $symbol';
  }

  @override
  String get alertKindAbove => 'Ũkĩambata igũrũ wa';

  @override
  String get alertKindBelow => 'Ũgĩikũrũka thĩ wa';

  @override
  String get alertKindMove => 'Ũkĩgarũrũka mũno mũthenya ũmwe';

  @override
  String alertTargetPrice(String currency) {
    return 'Thogora ($currency)';
  }

  @override
  String get alertMovePercent => 'Ũgarũrũku wa mũthenya (%)';

  @override
  String get alertAlreadyMet => 'Thogora nĩ ũrĩkĩte gũkĩra mũhaka ũyũ.';

  @override
  String get alertSave => 'Iga kĩmenyithia';

  @override
  String alertCreated(String symbol) {
    return 'Kĩmenyithia kĩa $symbol nĩ kĩaigwo.';
  }

  @override
  String get alertsEmpty =>
      'Gũtirĩ imenyithia rĩu. Hingũra hisa ũcooke ũhihinye kengele nĩguo ũige kĩmwe.';

  @override
  String get alertsNote =>
      'Imenyithia irorithagio o ndagĩka 5 rĩrĩa WhatStock ĩrarũta wĩra. Kompiuta-inĩ, ĩthiĩaga na mbere kũruta wĩra menu bar-inĩ kana tray; thimũ-inĩ, rĩu imenyithia ikinyaga tu rĩrĩa app ĩhingũrĩtwo.';

  @override
  String alertDescAbove(String price) {
    return 'Igũrũ wa $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Thĩ wa $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Ũgarũrũku wa mũthenya ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Kĩarĩrire $date harĩ $price';
  }

  @override
  String get alertRearm => 'Iga rĩngĩ';

  @override
  String get alertDelete => 'Eheria';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol nĩyambata igũrũ wa $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol nĩyaikũrũka thĩ wa $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol nĩyagarũrũka $percent ũmũthĩ';
  }

  @override
  String alertHitBody(String price) {
    return 'Thogora wa rĩu: $price';
  }

  @override
  String get alertOpen => 'Hingũra';

  @override
  String get keepInTrayTitle => 'Thiĩ na mbere kũruta wĩra ndirica yahingwo';

  @override
  String get keepInTraySubtitle =>
      'WhatStock ĩtigaraga menu bar-inĩ kana tray, nĩ ũndũ ũcio njĩra ya ihenya na imenyithia cia thogora ithiĩaga na mbere kũruta wĩra.';

  @override
  String get termsOfUse => 'Mawatho ma Ũhũthĩri';

  @override
  String get privacyPolicy => 'Mawatho ma Kũgitĩra Ũhoro Waku';

  @override
  String get subscriptionLegal =>
      'Ũiyandĩkithio werũhagio o ũguo o mweri nginya ũũtige. Na gwĩyandĩkithia, nĩwetĩkĩra Mawatho ma Ũhũthĩri na Mawatho ma Kũgitĩra Ũhoro Waku.';

  @override
  String get deleteAccount => 'Eheria akaunti';

  @override
  String get deleteAccountTitle => 'Nĩ ũrenda kweheria akaunti yaku?';

  @override
  String get deleteAccountBody =>
      'Akaunti yaku na kĩndũ o gĩothe kĩigĩtwo server-inĩ iitũ (email, mũigana, ũhũthĩri) nĩ ikwehererio biũ, na mathuthuria marĩa ũtahũthĩrĩte nĩ makũũra. Ũiyandĩkithio ũrĩa warĩhire na browser nĩ ũgũtigwo o rĩu; ũiyandĩkithio wa App Store kana Google Play no nginya ũtigwo mĩtaratara-inĩ ya store.';

  @override
  String get deleteLocalData =>
      'Eheria o na ũhoro ũrĩa ũrĩ kĩndũ-inĩ gĩkĩ (hisa ciaku, imenyithia, iria wendete, ũcaria wa rĩu, mathuthuria maigĩtwo)';

  @override
  String get deleteAccountConfirm => 'Eheria biũ';

  @override
  String get accountDeleted => 'Akaunti yaku nĩyeheririo.';

  @override
  String get errDeleteAccount =>
      'Tũtiahotire kweheria akaunti. Rora connection yaku ũcooke ũgerie rĩngĩ.';

  @override
  String get aiTrialBriefNote =>
      'Mathuthuria ma kũgeria nĩ makuhĩ na mathondekagwo na AI model ya ihenya makĩria. Na mũbango, nĩ ũkũgĩa na AI iitũ njega makĩria, ũcaria mũingĩ wa internet, na ũraihu wa Wa gatagatĩ na Mũriku.';

  @override
  String get billingMonthly => 'O mweri';

  @override
  String get billingYearly => 'O mwaka';

  @override
  String get yearlyDiscount => 'Mĩeri 2 ya tũhũ';

  @override
  String get perYear => '/ mwaka';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price o mweri';
  }

  @override
  String get subscriptionLegalYearly =>
      'Ũiyandĩkithio wa mwaka werũhagio o ũguo o mwaka nginya ũũtige. Na gwĩyandĩkithia, nĩwetĩkĩra Mawatho ma Ũhũthĩri na Mawatho ma Kũgitĩra Ũhoro Waku.';

  @override
  String get myAnalyses => 'Ũthuthuria wakwa';

  @override
  String get navAlerts => 'Imenyithia';

  @override
  String get inviteTitle => 'Kuona kwa mbere kũhingĩre';

  @override
  String get inviteBody =>
      'Rĩu WhatStock ĩkuoneka na ũiti tu. Ĩkĩra code ya ũiti ĩrĩa wamũkĩrire.';

  @override
  String get inviteCodeLabel => 'Code ya ũiti';

  @override
  String get inviteContinue => 'Thiĩ na mbere';

  @override
  String get inviteInvalid => 'Code ĩno ya ũiti ti ya ma.';

  @override
  String get inviteExpired =>
      'Ihinda rĩa ũiti ũyũ nĩrĩthirĩte. Hooya code njerũ kuuma kũrĩ mũndũ ũrĩa wagwĩtire.';

  @override
  String get inviteDeviceLimit =>
      'Code ĩno ya ũiti nĩĩrahũthĩrwo mĩtambo-inĩ mĩingĩ makĩria ĩrĩa ĩtĩkĩrĩtio.';

  @override
  String get previewConfidential => 'Kuona kwa mbere kwa hitho';

  @override
  String get errPreviewDailyLimit =>
      'Mũhaka wa mathuthuria ma ũmũthĩ wa kuona kũũ kwa mbere nĩũkinyĩtio. Geria rĩngĩ rũciũ.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'mathaa $count mahĩtũku',
      one: 'ithaa 1 rĩhĩtũku',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'mĩthenya $count mĩhĩtũku',
      one: 'mũthenya 1 ũhĩtũku',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Thondeka ũthuthuria ũyũ rĩngĩ?';

  @override
  String staleBody(String age) {
    return 'Ũthuthuria ũyũ wathondekirwo $age. Kuuma hĩndĩ ĩyo, thogora, ũhoro na maumĩrĩra no makorwo magarũrũkĩte.';
  }

  @override
  String get staleKeep => 'Onania ũrĩa wa mbere';

  @override
  String get staleRefresh => 'Thondeka mwerũ';

  @override
  String seeAll(int count) {
    return 'Ona yothe ($count)';
  }

  @override
  String get searchAnalyses => 'Caria ũthuthuria waku';

  @override
  String get deleteAnalysis => 'Eheria';

  @override
  String analysisDeleted(String symbol) {
    return 'Ũthuthuria wa $symbol weherio';
  }

  @override
  String get keyLevelAlertHint =>
      'Hihinya mũhaka nĩguo wone kĩmenyithia rĩrĩa thogora ũgakinya hau.';

  @override
  String get shareAnalysisTitle => 'Gayana ũthuthuria';

  @override
  String get shareAsImage => 'Gayana ta mbica';

  @override
  String get shareAsText => 'Gayana ta mandĩko';

  @override
  String get shareCardFooter => 'Ũthondeketwo na WhatStock';

  @override
  String get shareCardDisclaimer =>
      'Ũthuthuria wa AI · ti ũtaaro wa investment';

  @override
  String get referralTitle => 'Ita arata';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'mathuthuria $count ma kũongerera',
      one: 'ũthuthuria 1 wa kũongerera',
    );
    return 'Gayana kodi yaku. Mũrata waku nĩ egũkora $_temp0 o rĩu, na we nĩ ũgũkora o ũguo thutha wa ũthuthuria wake wa mbere.';
  }

  @override
  String get referralYourCode => 'Kodi yaku';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Arĩa wĩtĩte: $invited · Ibeo: $rewarded';
  }

  @override
  String get referralHaveCode => 'Ũrĩ na kodi kuuma kũrĩ mũrata?';

  @override
  String get referralRedeem => 'Hũthĩra';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mathuthuria $count ma kũongerera nĩ mongereirwo. Nĩ wamũkĩrwo!',
      one: 'Ũthuthuria 1 wa kũongerera nĩ wongereirwo. Nĩ wamũkĩrwo!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown => 'Kodi ĩno ndĩrĩ kuo. Ĩrore na ũgerie rĩngĩ.';

  @override
  String get referralErrOwn => 'Ndũngĩhũthĩra kodi yaku we mwene.';

  @override
  String get referralErrAlready => 'Nĩ wahũthĩrire kodi ya mũrata.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'mathuthuria $count ma kũongerera',
      one: 'ũthuthuria 1 wa kũongerera',
    );
    return 'Njĩthuthuragia hisa na WhatStock: oya mbica ya hisa na AI nĩ ĩgũgũtaarĩria. Na kodi yakwa $code nĩ ũgũkora $_temp0.';
  }

  @override
  String get referralCopied => 'Kodi nĩ yakobĩo';

  @override
  String get onboardTitle1 => 'Oya mbica ya hisa';

  @override
  String get onboardBody1 =>
      'Skrini ya app ya broker, gazeti kana rũũri rwa kampuni nĩ ciiganu: WhatStock nĩ ĩkũmenya hisa ĩyo na ĩkuonie thogora wayo, chati na namba cia bata.';

  @override
  String get onboardTitle2 => 'Ĩmenye na ndagĩka nini';

  @override
  String get onboardBody2 =>
      'Ũthuthuria wa AI ũtaaragia kĩrĩa gĩtũmaga hisa ĩthiĩ, ũgwati, bata wayo na njĩra ithatũ iria thogora ũngĩthiĩ, hamwe na kũrĩa ũhoro uumĩte na rũthiomi-inĩ rwaku.';

  @override
  String get onboardTitle3 => 'Menya ũhoro wothe';

  @override
  String get onboardBody3 =>
      'Iria wendete, hisa ciaku na imenyithia cia thogora nĩ ikũmenyithagia. Ũthuthuria waku ũtũũraga thimũ-inĩ yaku, ũhaarĩrĩtio kũhingũrwo rĩngĩ.';

  @override
  String get onboardNext => 'Ĩrĩa ĩngĩ';

  @override
  String get onboardStart => 'Ambĩrĩria';

  @override
  String get onboardSkip => 'Hĩtũka';

  @override
  String changesTitle(String date) {
    return 'Kuuma ũthuthuria wa mbere ($date)';
  }

  @override
  String get changesPrice => 'Thogora';

  @override
  String get changesNoMajor => 'Maũndũ marĩa marorirwo matigarũrũkĩte mũno.';

  @override
  String get changesPreviousSummary => 'Mũhĩnanĩrio wa mbere';

  @override
  String get telemetryTitle => 'Tũteithie gũthondeka WhatStock wega makĩria';

  @override
  String get telemetryBody =>
      'Heana ũhoro wa ũhũthĩri ũtarĩ na rĩĩtwa na ripoti cia gũthũka: nĩ mawĩra marĩkũ mahũthagĩrwo na nĩ kĩĩ kĩathũkire. Gũtirĩ hĩndĩ tũtũmaga hisa ciaku, ũthuthuria waku kana ũhoro waku wa mwene. No ũgarũre ũndũ ũyũ hĩndĩ o yothe thĩinĩ wa Mĩtaratara.';

  @override
  String get telemetryAllow => 'Ĩtĩkĩria';

  @override
  String get telemetryDecline => 'Aca, nĩ wega';

  @override
  String get telemetrySetting => 'Ũhoro ũtarĩ na rĩĩtwa na ripoti cia gũthũka';

  @override
  String get telemetrySettingHint =>
      'Ũrĩa mawĩra mahũthagĩrwo kaingĩ na ripoti cia mahĩtia, hatarĩ ũhoro wa mwene kana ũrĩa ũrĩ thĩinĩ wa macaria na ũthuthuria waku.';

  @override
  String get askButton => 'Ũria ũhoro wa ũthuthuria ũyũ';

  @override
  String askTitle(String symbol) {
    return 'Ciũria igiĩ $symbol';
  }

  @override
  String get askIntro =>
      'Ũria ũndũ o wothe ũkoniĩ ũthuthuria ũyũ: ũgwati ũmwe nĩ ũrĩ na ũguo ũrĩkũ, nĩ kĩĩ kĩngĩgarũra ũrĩa maũndũ makoneka, namba ĩmwe yatarirwo atĩa. Macookio maya mamĩtĩte ũthuthuria ũyũ, na ti ũtaaro wa investment.';

  @override
  String get askHint => 'Andĩka kĩũria…';

  @override
  String get askSend => 'Tũma';

  @override
  String get askThinking => 'Ndĩrĩĩciria…';

  @override
  String get askSuggest1 => 'Ũgwati ũrĩa mũnene mũno nĩ ũrĩkũ?';

  @override
  String get askSuggest2 => 'Nĩ kĩĩ kĩngĩgarũra ũrĩa maũndũ makoneka?';

  @override
  String get askSuggest3 => 'Taarĩria ũhoro ũyũ na njĩra ĩhũthũ';

  @override
  String get askMaxReached =>
      'Kĩu nĩkĩo kĩũria kĩa mũthia kĩa ũthuthuria ũyũ. Thondeka ũthuthuria mwerũ nĩguo ũũrie ingĩ.';

  @override
  String get errAskLimit =>
      'Nĩũkinyĩte mũhaka wa ciũria cia ũmũthĩ. Geria rĩngĩ rũciũ.';

  @override
  String get eventTomorrow => 'Rũciũ';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'thutha wa mĩthenya $days',
      one: 'thutha wa mũthenya 1',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Maumĩrĩra ma mĩeri ĩtatũ';

  @override
  String get eventBeforeOpen => 'mbere ya ndũnyũ kũhingũrwo';

  @override
  String get eventAfterClose => 'thutha wa ndũnyũ kũhingwo';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS ĩrĩa yetagĩrĩrwo: $value';
  }

  @override
  String get eventFromAnalysis => 'Kuuma ũthuthuria waku';

  @override
  String get eventsHint =>
      'Matukũ ma maumĩrĩra ma iria wendete na hisa ciaku harĩa mĩthenya 90 ĩrĩa ĩroka, na maũndũ marĩ na matukũ marĩa ũthuthuria waku wonanirie.';

  @override
  String get eventsEmpty =>
      'Gũtirĩ maũndũ marĩ na matukũ mĩthenya-inĩ 90 ĩrĩa ĩroka. Ongerera iria wendete kana hisa nĩguo wone matukũ ma maumĩrĩra mazo haha.';

  @override
  String get compareTitle => 'Gereranĩria';

  @override
  String get compareAdd => 'Ongerera hisa';

  @override
  String get compareRemove => 'Ruta';

  @override
  String get compareTickerHint => 'Ticker, ta MSFT';

  @override
  String get compareHint =>
      'Namba cia bata hamwe hĩndĩ ĩmwe; thogora mwega makĩria mũhari-inĩ o wothe nĩ ũmũrĩkĩtio. Mbeca irĩ na mbeca cia o hisa.';

  @override
  String get compareNoAnalysis => 'Gũtirĩ ũthuthuria o na rĩu';
}
