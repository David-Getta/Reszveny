// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kabyle (`kab`).
class AppLocalizationsKab extends AppLocalizations {
  AppLocalizationsKab([String locale = 'kab']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'Ṭṭef tawlaft n uksyun syen issin kullec fell-as.';

  @override
  String get homeHint =>
      'Aselkin n yiksyunen, agdil n usnas n lbursa, aɣmis neɣ alugu n tkebbanit – ayen akk i d-yemmalen aksyun.';

  @override
  String get takePhoto => 'Ṭṭef tawlaft';

  @override
  String get chooseFromGallery => 'Fren seg tugniwin';

  @override
  String get chooseImage => 'Fren tugna';

  @override
  String get enterTickerManually => 'Sekcem azamul s ufus';

  @override
  String get tickerInputLabel => 'Azamul n uksyun';

  @override
  String get tickerInputHint => 'amedya: AAPL';

  @override
  String get lookUp => 'Nadi';

  @override
  String demoModeBanner(String symbols) {
    return 'Askar n uskan – ulac tasarut n yisefka n usuq. Isefka n umedya llan i: $symbols.';
  }

  @override
  String get recognizing => 'Tasleḍt n tugna…';

  @override
  String get loadingData => 'Asali n yisefka…';

  @override
  String get noCandidatesTitle => 'Ulac aksyun i yettwaɛeqlen';

  @override
  String get noCandidatesBody =>
      'Ur nezmir ara ad naɛqel aksyun deg tugna-a. Ɛreḍ tawlaft yeṣfan ugar, neɣ sekcem azamul s ufus.';

  @override
  String get whatWeSaw => 'Ayen i nwala';

  @override
  String get chooseCandidateTitle => 'Anwa aksyun i tebɣiḍ?';

  @override
  String confidencePercent(int percent) {
    return 'Taflest: $percent%';
  }

  @override
  String get settings => 'Iɣewwaṛen';

  @override
  String get language => 'Tutlayt';

  @override
  String get systemLanguage => 'Amezwer n unagraw';

  @override
  String get about => 'Ɣef WhatStock';

  @override
  String get disclaimer =>
      'Asnas-a yettak-d talɣut kan, ur d awellih n usersi n yidrimen ara. Isefka zemren ad ɛeṭṭlen neɣ ur ṣeḥḥan ara.';

  @override
  String dataSource(String source) {
    return 'Aɣbalu n yisefka: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Aɛqal: $source';
  }

  @override
  String get retry => 'Ɛreḍ tikkelt-nniḍen';

  @override
  String get cancel => 'Sefsex';

  @override
  String get ok => 'IH';

  @override
  String get close => 'Mdel';

  @override
  String get errorGeneric => 'Yella wacu ur neddi ara akken ilaq.';

  @override
  String get errorSectionUnavailable => 'Tigezmi-a ur tezmir ara ad d-tali.';

  @override
  String get notAvailable => 'ulac';

  @override
  String get sectionIdentity => 'Tanekkit';

  @override
  String get sectionPrice => 'Ssuma';

  @override
  String get sectionValuation => 'Aktazal';

  @override
  String get sectionFinancials => 'Isefka n yidrimen';

  @override
  String get sectionDividend => 'Dividand';

  @override
  String get sectionProfile => 'Amaɣnu n tkebbanit';

  @override
  String get sectionAnalysts => 'Tiktiwin n yimesleḍen';

  @override
  String get sectionNews => 'Isallen';

  @override
  String get sectionRecognition => 'Talqayt n uɛqal';

  @override
  String get labelSymbol => 'Azamul';

  @override
  String get labelExchange => 'Lbursa';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Tadrimt';

  @override
  String get labelCountry => 'Tamurt';

  @override
  String get labelIndustry => 'Tasnaɛt';

  @override
  String get labelSector => 'Agezdu';

  @override
  String get labelWebsite => 'Asmel web';

  @override
  String get labelIpoDate => 'Azemz n IPO';

  @override
  String get labelMarketCap => 'Azal deg lbursa';

  @override
  String get labelSharesOutstanding => 'Iksyunen yettwasuffɣen';

  @override
  String get labelEmployees => 'Ixeddamen';

  @override
  String get labelCeo => 'Anemhal amatu';

  @override
  String get labelHeadquarters => 'Amḍiq agejdan';

  @override
  String get labelDescription => 'Aglam';

  @override
  String get labelLastPrice => 'Ssuma taneggarut';

  @override
  String get labelChange => 'Abeddel';

  @override
  String get labelOpen => 'Alday';

  @override
  String get labelDayHigh => 'Afellay n wass';

  @override
  String get labelDayLow => 'Adday n wass';

  @override
  String get labelPreviousClose => 'Amdal yezrin';

  @override
  String get labelWeek52High => 'Afellay n 52 n yimalasen';

  @override
  String get labelWeek52Low => 'Adday n 52 n yimalasen';

  @override
  String get labelAverageVolume10d => 'Ableɣ alemmas (10 wussan)';

  @override
  String updatedAt(String time) {
    return 'Yettwaleqqem $time';
  }

  @override
  String get labelPeTrailing => 'P/E (yezrin)';

  @override
  String get labelPeForward => 'P/E (ara d-yasen)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / asuddem ilelli n yidrimen';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Lmedxul (TTM)';

  @override
  String get labelNetIncomeTtm => 'Rrbeḥ aṣfi (TTM)';

  @override
  String get labelGrossMargin => 'Afmiḍi n rrbeḥ amatu';

  @override
  String get labelOperatingMargin => 'Afmiḍi n rrbeḥ n twuri';

  @override
  String get labelNetMargin => 'Afmiḍi n rrbeḥ aṣfi';

  @override
  String get labelRoe => 'Rrbeḥ ɣef wayla n yimawlan';

  @override
  String get labelRoa => 'Rrbeḥ ɣef wayla';

  @override
  String get labelDebtToEquity => 'Irḍalen / ayla n yimawlan';

  @override
  String get labelCurrentRatio => 'Assaɣ amiran';

  @override
  String get labelRevenueGrowth => 'Timerna n lmedxul (s useggas)';

  @override
  String get labelEpsGrowth => 'Timerna n EPS (s useggas)';

  @override
  String get labelDividendYield => 'Afaris n dividand';

  @override
  String get labelDividendPerShare => 'Dividand i yal aksyun';

  @override
  String get labelPayoutRatio => 'Afmiḍi n beṭṭu';

  @override
  String get labelConsensus => 'Amtawa';

  @override
  String get ratingStrongBuy => 'Aɣ s tezmert';

  @override
  String get ratingBuy => 'Aɣ';

  @override
  String get ratingHold => 'Ṭṭef';

  @override
  String get ratingSell => 'Zzenz';

  @override
  String get ratingStrongSell => 'Zzenz s tezmert';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count n yimesleḍen',
      one: '1 n umesleḍ',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Tallit: $period';
  }

  @override
  String get noNews => 'Ulac isallen n melmi kan.';

  @override
  String get openArticle => 'Ldi amagrad';

  @override
  String get openLinkFailed => 'Aseɣwen ur yezmir ara ad yeldi.';

  @override
  String get recognitionSummary => 'Agzul';

  @override
  String get recognitionEvidence => 'Acuɣer i nɣil akka';

  @override
  String get recognitionRawText => 'Aḍris yettwaɣran seg tugna';

  @override
  String get errMissingAnthropicKey =>
      'Aɛqal n tugniwin ur yettwaswel ara (ulac ANTHROPIC_API_KEY). Sekcem azamul s ufus.';

  @override
  String get errRecognitionUnreachable =>
      'Ur nezmir ara ad naweḍ ɣer umeẓlu n uɛqal. Senqed tuqqna ɣer internet.';

  @override
  String errRecognitionHttp(String status) {
    return 'Ameẓlu n uɛqal yerra-d tuccḍa (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Ameẓlu n uɛqal ur yezmir ara ad yesleḍ tugna-a.';

  @override
  String get errRecognitionTruncated =>
      'Tiririt n uɛqal tegzem. Ɛreḍ tikkelt-nniḍen.';

  @override
  String get errRecognitionBadResponse =>
      'Tiririt ur nettwaṛǧa ara seg umeẓlu n uɛqal.';

  @override
  String get errRecognitionEmpty => 'Ameẓlu n uɛqal yerra-d tiririt tilemt.';

  @override
  String get errMissingFinnhubKey =>
      'Isefka n usuq ur ttwaswelen ara (ulac FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Ur nezmir ara ad naweḍ ɣer umeẓlu n yisefka n usuq. Senqed tuqqna ɣer internet.';

  @override
  String get errMarketRateLimited =>
      'Aṭas n yissutar ɣer umeẓlu n yisefka n usuq. Ma ulac aɣilif, rǧu yiwet n tesdidt.';

  @override
  String errMarketHttp(String status) {
    return 'Ameẓlu n yisefka n usuq yerra-d tuccḍa (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Tiririt ur nettwaṛǧa ara seg umeẓlu n yisefka n usuq.';

  @override
  String errNoQuote(String symbol) {
    return 'Ulac isefka n ssuma i $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Ulac amaɣnu n tkebbanit i $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Askar n uskan yessefrak kan $symbols. Rnu FINNHUB_API_KEY i yisefka srid.';
  }

  @override
  String errUnknown(String detail) {
    return 'Yella wacu ur neddi ara: $detail';
  }

  @override
  String get newSearch => 'Anadi amaynut';

  @override
  String get recentSearches => 'Ineggura';

  @override
  String get noRecentSearches => 'Mazal ulac inadiyen n melmi kan.';

  @override
  String get clearRecent => 'Sfeḍ ineggura';

  @override
  String get greeting => 'Anwa aksyun ara nwali?';

  @override
  String get searchHint => 'Azamul neɣ isem n tkebbanit';

  @override
  String get attachImage => 'Seddu tugna';

  @override
  String get searchResultsTitle => 'Igmaḍ n unadi';

  @override
  String errNoResults(String query) {
    return 'Ulac iksyunen i “$query”.';
  }

  @override
  String get quickBarHint => 'Aru azamul neɣ isem n tkebbanit…';

  @override
  String get openFullWindow => 'Ldi asfaylu';

  @override
  String hotkeyHint(String shortcut) {
    return 'Sit ɣef $shortcut seg yal amkan akken ad d-yeldi WhatStock.';
  }

  @override
  String get trayOpen => 'Ldi WhatStock';

  @override
  String get trayQuickSearch => 'Anadi arurad';

  @override
  String get trayQuit => 'Ffeɣ';

  @override
  String get appearance => 'Udem';

  @override
  String get themeSystem => 'Anagraw';

  @override
  String get themeDark => 'Aberkan';

  @override
  String get themeLight => 'Aceɛlal';

  @override
  String get back => 'Ɣer deffir';

  @override
  String get aiSectionTitle => 'Tasleḍt s AI';

  @override
  String get aiIntro =>
      'Tamuɣli s telqayt yura-tt AI: agzul n yisallen ineggura, armud n tkebbanit, tizmar, ixaṭaren d yisebba yeffren, aktazal, tamuɣli ɣef ssuma s yisenaryuten seg tama n tpsikulujit, tsusyulujit, tatiknit d tmakrudamsa, akked wayen ilaqen ad t-tɛasseḍ.';

  @override
  String get aiGenerate => 'Snulfu-d tasleḍt';

  @override
  String get aiRegenerate => 'Ales asnulfu';

  @override
  String get aiGenerating =>
      'Aheyyi n tesleḍt… Ayagi yezmer ad yeṭṭef tasdidt neɣ snat.';

  @override
  String get aiSources => 'Iɣbula';

  @override
  String aiGeneratedAt(String time) {
    return 'Yettwasnulfa-d $time';
  }

  @override
  String get aiDisclaimer =>
      'Tasleḍt yura-tt AI, tebna ɣef yisefka izayzen d yisallen ineggura. Tezmer ad tesɛu tuccḍiwin neɣ ad tili d taqburt, ur d awellih n usersi n yidrimen ara.';

  @override
  String get errAiNotConfigured =>
      'Tasleḍt s AI ur tettwaswel ara (ulac ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Ur nezmir ara ad naweḍ ɣer umeẓlu n AI. Senqed tuqqna ɣer internet.';

  @override
  String errAiHttp(String status) {
    return 'Ameẓlu n AI yerra-d tuccḍa (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Ameẓlu n AI yugi ad yesleḍ aksyun-a.';

  @override
  String get errAiBadResponse => 'Tiririt ur nettwaṛǧa ara seg umeẓlu n AI.';

  @override
  String get sectionChart => 'Udlif n ssuma';

  @override
  String get rangeOneWeek => 'Amalas';

  @override
  String get rangeOneMonth => 'Ayyur';

  @override
  String get rangeThreeMonths => '3 wayyuren';

  @override
  String get rangeOneYear => 'Aseggas';

  @override
  String get rangeFiveYears => '5 yiseggasen';

  @override
  String get chartUnavailable =>
      'Amazray n ssuma ulac-it deg uɣbalu n yisefka amiran.';

  @override
  String get sectionStatements => 'Ineqqisen n yidrimen (yal aseggas)';

  @override
  String get labelFiscalYear => 'Aseggas n leḥsab';

  @override
  String get labelRevenue => 'Lmedxul';

  @override
  String get labelNetIncome => 'Rrbeḥ aṣfi';

  @override
  String get labelTotalAssets => 'Ayla s umata';

  @override
  String get labelTotalLiabilities => 'Irḍalen s umata';

  @override
  String get labelEquity => 'Ayla n yimawlan';

  @override
  String get labelOperatingCashFlow => 'Asuddem n yidrimen n twuri';

  @override
  String get statementsUnavailable => 'Ulac ineqqisen n yidrimen i uksyun-a.';

  @override
  String get launchAtLogin => 'Sker mi ara tkecmeḍ ɣer unagraw';

  @override
  String get hotkeyLabel => 'Anegzum amatu';

  @override
  String get hotkeyRecordHint => 'Sit da, syen sit ɣef usdukel amaynut n tsura';

  @override
  String get hotkeyReset => 'Err-d ɣer umezwer';

  @override
  String get pasteImage => 'Senṭeḍ tugna seg tecfawt';

  @override
  String get errClipboardNoImage => 'Ulac tugna deg tecfawt.';

  @override
  String get favorites => 'Ismenyifen';

  @override
  String get addToFavorites => 'Rnu ɣer yismenyifen';

  @override
  String get removeFromFavorites => 'Kkes seg yismenyifen';

  @override
  String get noFavorites =>
      'Mazal ulac ismenyifen. Sit ɣef yitri n uksyun akken ad t-ternuḍ.';

  @override
  String get displayCurrency => 'Tadrimt n uskan';

  @override
  String get displayCurrencyNone => 'Tadrimt n uksyun kan';

  @override
  String labelConverted(String currency) {
    return '≈ s $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Azal: 1 $from = $rate $to (BCE, $date)';
  }

  @override
  String get updates => 'Ileqman';

  @override
  String currentVersion(String version) {
    return 'Lqem $version';
  }

  @override
  String get autoUpdate => 'Sebded ileqman s wudem awurman';

  @override
  String get checkForUpdates => 'Nadi ileqman';

  @override
  String get updateChecking => 'Anadi n yileqman…';

  @override
  String get updateUpToDate => 'Tesseqdaceḍ lqem aneggaru.';

  @override
  String updateAvailable(String version) {
    return 'Lqem $version yella.';
  }

  @override
  String get updateDownloading => 'Azdam n uleqqem deg ugilal…';

  @override
  String get updateDownloaded =>
      'Aleqqem yewjed. Ales asenker akken ad yettwasbedd.';

  @override
  String get updateNow => 'Leqqem';

  @override
  String get restartNow => 'Ales asenker';

  @override
  String get updatesViaStore =>
      'Ileqman ttawḍen-d s wudem awurman seg tḥanut n yisnasen.';

  @override
  String get updateCheckFailed => 'Aɣelluy deg usenqed n yileqman.';

  @override
  String get subscription => 'Ajerred';

  @override
  String get planTrial => 'Tirmit';

  @override
  String get planNormal => 'Amagnu';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Ulac aɣawas urmid';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count n tselḍin deg wayyur';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Tirmit n baṭel n $days wussan s $count n tselḍin';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Gran-d $days n wussan n tirmit',
      one: 'Yegra-d 1 n wass n tirmit',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Tirmit n baṭel tfuk. Fren aɣawas akken ad tkemmleḍ tiselḍin.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Gran-d $remaining seg $total n tselḍin deg tallit-a';
  }

  @override
  String extraCredits(int count) {
    return '$count n tselḍin nniḍen';
  }

  @override
  String renewsOn(String date) {
    return 'Ad yettwajedded ass n $date';
  }

  @override
  String get choosePlan => 'Fren aɣawas';

  @override
  String get currentPlan => 'Aɣawas amiran';

  @override
  String get subscribe => 'Jerred';

  @override
  String get perMonth => '/ ayyur';

  @override
  String get extraPacksTitle => 'Tesriḍ ugar? Aɣ tiselḍin nniḍen';

  @override
  String get extraPacksHint =>
      'Tiselḍin nniḍen ur tfukkunt ara, ttwaseqdacent deffir n tesmekta n wayyur.';

  @override
  String get buy => 'Aɣ';

  @override
  String get restorePurchases => 'Err-d tiɣin';

  @override
  String get manageSubscription => 'Sefrek ajerred';

  @override
  String get purchaseSuccess => 'Tanemmirt! Ayen i d-tuɣeḍ yermed.';

  @override
  String get purchasePending => 'Tiɣin deg uraǧu…';

  @override
  String get purchaseFailed => 'Ur nezmir ara ad nsemmed tiɣin.';

  @override
  String get purchaseCanceled => 'Tiɣin tettwasefsex.';

  @override
  String get billingUnavailable =>
      'Tiɣin mazal ur llint ara deg tɣerɣert-a. Jerred seg tiliɣri neɣ seg Mac; aɣawas ad iteddu deg yal ibenk.';

  @override
  String get errQuotaExceeded =>
      'Ur d-tegri ara tesleḍt deg tallit-a. Bedel ɣer uɣawas nnig, neɣ aɣ tiselḍin nniḍen.';

  @override
  String get errTrialExpired =>
      'Tirmit n baṭel tfuk. Fren aɣawas akken ad tkemmleḍ.';

  @override
  String get errNoPlan => 'Tasleḍt s AI tesra aɣawas urmid.';

  @override
  String get viewPlans => 'Wali iɣawasen';

  @override
  String get usageTitle => 'Aseqdec';

  @override
  String get demoPurchaseNote =>
      'Axelleṣ n uskan: tiɣin deg tɣerɣert-a ur d tidet ara.';

  @override
  String get mostPopular => 'Yettwafren ugar';

  @override
  String get bestValue => 'Azal yifen';

  @override
  String get planFeaturesCommon =>
      'Aɛqal n tewlafin, isefka srid, udlifen, ismenyifen d 120 n tutlayin akk llan deg yal aɣawas. Tasmekta tettwaseqdac i tselḍin s AI.';

  @override
  String get searchLanguages => 'Nadi tutlayin…';

  @override
  String get noLanguageMatch => 'Ulac tutlayt i yemmenṭaḍen.';

  @override
  String get aiSettings => 'Tasleḍt s AI';

  @override
  String get aiLength => 'Teɣzi';

  @override
  String get aiDepthBrief => 'Awezlan';

  @override
  String get aiDepthStandard => 'Alugan';

  @override
  String get aiDepthDeep => 'S telqayt';

  @override
  String get aiDepthBriefDesc => 'Ayen ilaqen, s zzerb.';

  @override
  String get aiDepthStandardDesc => 'Aneqqis ummid s yal tigezmi.';

  @override
  String get aiDepthDeepDesc =>
      'Ugar n yinadiyen deg web, aserwes d tkebbaniyin nniḍen d telqayt ugar.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Qrib $min–$max n wawalen';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'yesseqdac $count n tselḍin',
      one: 'yesseqdac 1 n tesleḍt',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Aswir n umeɣri';

  @override
  String get aiReaderBeginner => 'Amebdi';

  @override
  String get aiReaderExperienced => 'Amussnaw';

  @override
  String get aiReaderBeginnerDesc =>
      'Tutlayt tafessast; yal awal atiknik yettwafser.';

  @override
  String get aiReaderExperiencedDesc =>
      'Aḍris yeččuren ugar, s tmawalt tamagnut n yidrimen.';

  @override
  String get aiCounterArgument => 'Awal n umgal yejhden ugar';

  @override
  String get aiCounterArgumentDesc =>
      'Agzul yettfakk yal tikkelt s wawal yelhan ugar mgal taggrayt-is.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Armi d $count n yinadiyen deg web i yal tasleḍt deg uɣawas-ik·im',
      one: 'Armi d 1 n unadi deg web i yal tasleḍt deg uɣawas-ik·im',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Teɣzi talugant s uɣawas: Amagnu $normal, Pro $pro, Max $max, Ultra $ultra. Awezlan yesseqdac 2 drus, S telqayt 2 ugar.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'armi d $count n yinadiyen deg web',
      one: 'armi d 1 n unadi deg web',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count n yinadiyen deg web i yal tasleḍt',
      one: '1 n unadi deg web i yal tasleḍt',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Teɣzi-a tesra $needed n tselḍin, maca gran-d kan $left. Fren teɣzi tawezlant ugar deg Iɣewwaṛen neɣ awi-d ugar n tselḍin.';
  }

  @override
  String get outlookMarketMood => 'Lḥal n usuq';

  @override
  String get moodVeryPessimistic => 'Ulac asirem';

  @override
  String get moodPessimistic => 'Asirem drus';

  @override
  String get moodNeutral => 'Alemmas';

  @override
  String get moodOptimistic => 'Asirem';

  @override
  String get moodVeryOptimistic => 'Asirem ameqqran';

  @override
  String get scenarioBull => 'Asenaryu n walluy';

  @override
  String get scenarioBase => 'Asenaryu agejdan';

  @override
  String get scenarioBear => 'Asenaryu n uɣelluy';

  @override
  String outlookCurrentPrice(String price) {
    return 'Ssuma tamirant: $price';
  }

  @override
  String get outlookKeyLevels => 'Iswiren igejdanen';

  @override
  String get keyLevelSupport => 'Asenned';

  @override
  String get keyLevelResistance => 'Amgal';

  @override
  String get keyLevelAnchor => 'Tamdeyt';

  @override
  String get upcomingEvents => 'Tidyanin i d-iteddun';

  @override
  String get outlookChartNote =>
      'Tilisa d timuɣliwin kan; tegnatin d tikta tiqerrabin, mačči d tamusni n wayen ara d-yeḍrun.';

  @override
  String get accountTitle => 'Amiḍan';

  @override
  String get signIn => 'Kcem';

  @override
  String get signOut => 'Ffeɣ';

  @override
  String get notSignedIn => 'Ur tekcimeḍ ara';

  @override
  String get accountBenefit =>
      'Kcem akken ajerred ad iteddu deg yibenkan-ik·im akk.';

  @override
  String get accountSyncedNote =>
      'Ajerred d tselḍin i d-yegran d yiwen deg yal ibenk.';

  @override
  String get signInTitle => 'Kcem ɣer WhatStock';

  @override
  String get emailLabel => 'Tansa imayl';

  @override
  String get continueWithEmail => 'Kemmel s imayl';

  @override
  String codeSentTo(String email) {
    return 'Nuzen tangalt s 6 n wuṭṭunen ɣer $email. Ad teqqim d tameɣtut 10 n tesdatin.';
  }

  @override
  String get codeLabel => 'Tangalt n ukcam';

  @override
  String get resendCode => 'Azen tangalt tamaynut';

  @override
  String get useDifferentEmail => 'Seqdec imayl nniḍen';

  @override
  String get errInvalidCode => 'Tangalt d tarameɣtut neɣ tfuk.';

  @override
  String get errInvalidEmail => 'Ma ulac aɣilif, sekcem tansa imayl tameɣtut.';

  @override
  String get errSignInFailed =>
      'Akcam ur yeddi ara. Senqed tuqqna syen ɛreḍ tikkelt-nniḍen.';

  @override
  String get checkoutWaiting =>
      'Smed axelleṣ deg yiminig. Asnas ad yettwaleqqem s wudem awurman mi ara yemmed.';

  @override
  String get paymentViaStripe =>
      'Axelleṣ aɣelsan deg yiminig s Stripe. Tzemreḍ ad tsefsxeḍ melmi i tebɣiḍ.';

  @override
  String get paymentViaStore =>
      'Axelleṣ s umiḍan n App Store neɣ Google Play. Tzemreḍ ad tsefsxeḍ melmi i tebɣiḍ deg yiɣewwaṛen n tḥanut.';

  @override
  String get keySpace => 'Tallunt';

  @override
  String get doubleOptionTitle => 'Sit snat n tikkal ɣef Option';

  @override
  String get doubleOptionSubtitle =>
      'Ma tsiteḍ s zzerb snat n tikkal ɣef tqeffalt Option, ad d-yeldi daɣen WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Akken ad iteddu daɣen deg yisnasen nniḍen, sireg WhatStock deg Réglages Système → Confidentialité et sécurité → Surveillance de l’entrée, syen ales alday n usnas.';

  @override
  String get openSystemSettings => 'Ldi Réglages Système';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Sit ɣef $shortcut neɣ snat n tikkal ɣef Option seg yal amkan akken ad d-yeldi WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Yettwarǧa ugar';

  @override
  String get longTermToday => 'Ass-a';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years n yiseggasen',
      one: '1 n useggas',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range i useggas';
  }

  @override
  String longTermLikely(String price) {
    return 'yettwarǧa ugar: $price';
  }

  @override
  String get confidenceLow => 'Taflest tamecṭuḥt';

  @override
  String get confidenceMedium => 'Taflest talemmast';

  @override
  String get confidenceHigh => 'Taflest tameqqrant';

  @override
  String get longTermNote =>
      'Tilisa n wakud aɣezfan bnant ɣef tikta i d-yettwabedren, yerna ttimɣurent s wakud. Ssuma ur tesɛi ara dividand. D tikta tiqerrabin, mačči d tamusni n wayen ara d-yeḍrun.';

  @override
  String get portfolio => 'Aqrab';

  @override
  String get portfolioEmpty =>
      'Mazal ulac kra da. Ldi aksyun syen sit ɣef “Rnu ɣer uqrab” akken ad tḍefreḍ ayen tesɛiḍ.';

  @override
  String get portfolioLocalNote =>
      'Yettwasekles kan deg yibenk-a. Imḍanen ttwabeddlen s wazalen n tmuɣli n BCE; ssuma tezmer ad teɛṭel.';

  @override
  String get addToPortfolio => 'Rnu ɣer uqrab';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Rnu $symbol';
  }

  @override
  String get portfolioQuantity => 'Amḍan n yiksyunen';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Ssuma n yal aksyun ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Azemz n tiɣin';

  @override
  String get portfolioAdd => 'Rnu';

  @override
  String get portfolioInvalidNumber => 'Sekcem amḍan yugaren 0.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol yettwarna ɣer uqrab.';
  }

  @override
  String get portfolioTotalValue => 'Azal amatu';

  @override
  String get portfolioToday => 'Ass-a';

  @override
  String get portfolioGainLoss => 'Rrbeḥ/lexsara';

  @override
  String get portfolioInvested => 'Idrimen yettwasersen';

  @override
  String get portfolioAllocation => 'Beṭṭu';

  @override
  String get portfolioPositions => 'Iksyunen';

  @override
  String portfolioAvgCost(String price) {
    return 'ssuma talemmast $price';
  }

  @override
  String get portfolioYourPosition => 'Ayen tesɛiḍ';

  @override
  String get portfolioPurchases => 'Tiɣin';

  @override
  String get portfolioRemove => 'Kkes';

  @override
  String get portfolioExcluded =>
      'Iksyunen war ssuma neɣ war azal n ubeddel ur ttwaḥesben ara deg yimḍanen.';

  @override
  String get priceAlerts => 'Ilɣa n ssuma';

  @override
  String get setPriceAlert => 'Sbadu alɣu n ssuma';

  @override
  String alertDialogTitle(String symbol) {
    return 'Alɣu n ssuma · $symbol';
  }

  @override
  String get alertKindAbove => 'Yettali nnig';

  @override
  String get alertKindBelow => 'Yettɣelli ddaw';

  @override
  String get alertKindMove => 'Yettbeddil aṭas deg yiwen wass';

  @override
  String alertTargetPrice(String currency) {
    return 'Ssuma ($currency)';
  }

  @override
  String get alertMovePercent => 'Abeddel n wass (%)';

  @override
  String get alertAlreadyMet => 'Ssuma tezger yakan aswir-a.';

  @override
  String get alertSave => 'Sbadu alɣu';

  @override
  String alertCreated(String symbol) {
    return 'Alɣu yettwasbadu i $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Mazal ulac ilɣa n ssuma. Ldi aksyun syen sit ɣef tnaqust akken ad tesbaduḍ yiwen.';

  @override
  String get alertsNote =>
      'Ilɣa ttwasenqaden yal 5 n tesdatin ma yella WhatStock iteddu. Deg uselkim, ad yeqqim iteddu deg ufeggag n wumuɣ neɣ deg ugalis n unagraw; deg tiliɣri, i tura ilɣa ttawḍen-d kan mi ara yili usnas yeldi.';

  @override
  String alertDescAbove(String price) {
    return 'Nnig $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Ddaw $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Abeddel n wass ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Yekker ass n $date ɣef $price';
  }

  @override
  String get alertRearm => 'Ales armed';

  @override
  String get alertDelete => 'Kkes';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol yuli nnig $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol yeɣli ddaw $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol ibeddel s $percent ass-a';
  }

  @override
  String alertHitBody(String price) {
    return 'Ssuma tamirant: $price';
  }

  @override
  String get alertOpen => 'Ldi';

  @override
  String get keepInTrayTitle => 'Ad yeqqim iteddu ma yemdel usfaylu';

  @override
  String get keepInTraySubtitle =>
      'WhatStock ad yeqqim deg ufeggag n wumuɣ neɣ deg ugalis n unagraw, ihi anegzum d yilɣa n ssuma ad kemmlen ad teddun.';

  @override
  String get termsOfUse => 'Tiwtilin n useqdec';

  @override
  String get privacyPolicy => 'Tasertit n tbaḍnit';

  @override
  String get subscriptionLegal =>
      'Ajerred yettwajedded s wudem awurman yal ayyur alamma tsefsxeḍ-t. Mi ara tjerrdeḍ, ad tqebleḍ Tiwtilin n useqdec akked Tasertit n tbaḍnit.';

  @override
  String get deleteAccount => 'Kkes amiḍan';

  @override
  String get deleteAccountTitle => 'Ad tekkseḍ amiḍan-ik·im?';

  @override
  String get deleteAccountBody =>
      'Amiḍan-ik·im d wayen akk yettwaseklasen deg uqeddac-nneɣ (imayl, tasmekta, aseqdec) ad ttwakksen i lebda, ula d tiselḍin ur tesxedmeḍ ara ad ṛuḥent. Ajerred yettwaxelṣen deg yiminig ad yettwasefsex imir-a; ajerred n App Store neɣ Google Play ilaq ad t-tsefsxeḍ deg yiɣewwaṛen n tḥanut.';

  @override
  String get deleteLocalData =>
      'Kkes daɣen isefka deg yibenk-a (aqrab, ilɣa, ismenyifen, amazray, tiselḍin yettwaseklasen)';

  @override
  String get deleteAccountConfirm => 'Kkes i lebda';

  @override
  String get accountDeleted => 'Amiḍan-ik·im yettwakkes.';

  @override
  String get errDeleteAccount =>
      'Ur nezmir ara ad nekkes amiḍan. Senqed tuqqna syen ɛreḍ tikkelt-nniḍen.';

  @override
  String get aiTrialBriefNote =>
      'Tiselḍin n tirmit d tiwezlanin, ttwaxedment s umudil n AI yettxeddmen s zzerb ugar. S uɣawas, tesɛiḍ AI-nneɣ yifen akk, ugar n yinadiyen deg web, akked teɣzi Alugan d S telqayt.';

  @override
  String get billingMonthly => 'Yal ayyur';

  @override
  String get billingYearly => 'Yal aseggas';

  @override
  String get yearlyDiscount => '2 n wayyuren baṭel';

  @override
  String get perYear => '/ aseggas';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price deg wayyur';
  }

  @override
  String get subscriptionLegalYearly =>
      'Ajerred aseggasan yettwajedded s wudem awurman yal aseggas alamma tsefsxeḍ-t. Mi ara tjerrdeḍ, ad tqebleḍ Tiwtilin n useqdec akked Tasertit n tbaḍnit.';

  @override
  String get myAnalyses => 'Tiselḍin-iw';

  @override
  String get navAlerts => 'Ilɣa';

  @override
  String get inviteTitle => 'Taskant tamezwarut tamdelt';

  @override
  String get inviteBody =>
      'WhatStock yella kan s tinubga i tura. Sekcem tangalt n tinubga i d-tremseḍ.';

  @override
  String get inviteCodeLabel => 'Tangalt n tinubga';

  @override
  String get inviteContinue => 'Kemmel';

  @override
  String get inviteInvalid => 'Tangalt-a n tinubga ur tṣeḥḥa ara.';

  @override
  String get inviteExpired =>
      'Tinubga-a tfuk. Suter tangalt tamaynutt i win i k-id-yesnubgen.';

  @override
  String get inviteDeviceLimit =>
      'Tangalt-a n tinubga tettwaseqdac yakan ɣef umḍan afellay n yibenkan.';

  @override
  String get previewConfidential => 'Taskant tuffirt';

  @override
  String get errPreviewDailyLimit =>
      'Talast n tesleḍt n wass-a n teskant-a tewweḍ. Ɛreḍ tikkelt nniḍen azekka.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count n yisragen aya',
      one: '1 n usrag aya',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count n wussan aya',
      one: '1 n wass aya',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Leqqem tasleḍt-a?';

  @override
  String staleBody(String age) {
    return 'Tasleḍt-a tettwaxdem $age. Seg imir-nni, ahat ttbeddlen ssuma, isallen d yigmaḍ.';
  }

  @override
  String get staleKeep => 'Sken-d tin yezrin';

  @override
  String get staleRefresh => 'Snulfu-d tamaynut';

  @override
  String seeAll(int count) {
    return 'Wali akk ($count)';
  }

  @override
  String get searchAnalyses => 'Nadi deg tesleḍwin-ik';

  @override
  String get deleteAnalysis => 'Kkes';

  @override
  String analysisDeleted(String symbol) {
    return 'Tasleḍt n $symbol tettwakkes';
  }

  @override
  String get keyLevelAlertHint =>
      'Sit ɣef uswir akken ad d-teṭṭfeḍ alɣu mi ara yawed ssuma ɣer-s.';

  @override
  String get shareAnalysisTitle => 'Bḍu tasleḍt';

  @override
  String get shareAsImage => 'Bḍu am tugna';

  @override
  String get shareAsText => 'Bḍu am uḍris';

  @override
  String get shareCardFooter => 'Yettwaxdem s WhatStock';

  @override
  String get shareCardDisclaimer =>
      'Tasleḍt s AI · ur d awellih n usersi n yidrimen ara';

  @override
  String get referralTitle => 'Ɛreḍ imeddukal';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count n tselḍin nniḍen',
      one: '1 n tesleḍt nniḍen',
    );
    return 'Bḍu tangalt-ik. Amdakel-ik ad yawi $_temp0 imir-a, ula d kečč ad tawiḍ kif-kif deffir tasleḍt-is tamezwarut.';
  }

  @override
  String get referralYourCode => 'Tangalt-ik';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Inebgawen: $invited · Arrazen: $rewarded';
  }

  @override
  String get referralHaveCode => 'Tesɛiḍ tangalt n umdakel?';

  @override
  String get referralRedeem => 'Seqdec';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ttwarnant-d $count n tselḍin nniḍen. Ansuf!',
      one: 'Tettwarna-d 1 n tesleḍt nniḍen. Ansuf!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Tangalt-a ulac-itt. Senqed-itt sakin ɛreḍ tikkelt nniḍen.';

  @override
  String get referralErrOwn => 'Ur tezmireḍ ara ad tesqedceḍ tangalt-ik.';

  @override
  String get referralErrAlready => 'Tesqedceḍ yakan tangalt n umdakel.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count n tselḍin nniḍen',
      one: '1 n tesleḍt nniḍen',
    );
    return 'Sleḍeɣ aksyunen s WhatStock: tettṣewwireḍ aksyun, AI ad ak-t-id-yessegzi. S tangalt-iw $code ad tawiḍ $_temp0.';
  }

  @override
  String get referralCopied => 'Tangalt tettwanɣel';

  @override
  String get onboardTitle1 => 'Ṭṭef tawlaft n uksyun';

  @override
  String get onboardBody1 =>
      'Agdil n usnas n broker, taɣmist neɣ alugu n tkebbanit yekfa: WhatStock ad yeεqel aksyun, ad k-d-yesken ssuma-s, udlif-is d yimḍanen-is igejdanen.';

  @override
  String get onboardTitle2 => 'Fhem-it deg kra n tesdatin';

  @override
  String get onboardBody2 =>
      'Tasleḍt s AI ad k-d-tessefhem acu i yesseḥrayen aksyun, uguren, azal-is d kraḍ n yisenaryuten ɣef wanida tezmer ad teddu ssuma, s yiɣbula d tutlayt-ik.';

  @override
  String get onboardTitle3 => 'Ur k-tetteffeɣ ula d taɣawsa';

  @override
  String get onboardBody3 =>
      'Ismenyifen, aqrab-ik d yilɣa n ssuma ad k-d-ssalɣun. Tisleḍin-ik qqiment ɣef yibenk-ik, heggant ad tent-teldiḍ tikkelt nniḍen.';

  @override
  String get onboardNext => 'Uḍfiṛ';

  @override
  String get onboardStart => 'Bdu';

  @override
  String get onboardSkip => 'Zgel';

  @override
  String changesTitle(String date) {
    return 'Seg tasleḍt yezrin ($date)';
  }

  @override
  String get changesPrice => 'Ssuma';

  @override
  String get changesNoMajor => 'Ayen i d-yettwarǧan ur ibeddel ara aṭas.';

  @override
  String get changesPreviousSummary => 'Agzul yezrin';

  @override
  String get telemetryTitle => 'Ɛiwen-aɣ ad nesnerni WhatStock';

  @override
  String get telemetryBody =>
      'Bḍu tidaddanin n useqdec war isem d yineqqisen n uɣelluy: anti timahilin yettwasqedcen d wayen ur neddi ara. Ur nettazen ara akk aqrab-ik, tiselḍin-ik neɣ isefka-k udmawanen. Tzemreḍ ad tbeddleḍ aya melmi i tebɣiḍ deg Iɣewwaṛen.';

  @override
  String get telemetryAllow => 'Sireg';

  @override
  String get telemetryDecline => 'Ala, tanemmirt';

  @override
  String get telemetrySetting => 'Tidaddanin war isem d yineqqisen n uɣelluy';

  @override
  String get telemetrySettingHint =>
      'Acḥal n tikkal i ttwasqedcent tmahilin d yineqqisen n tuccḍiwin, war isefka udmawanen neɣ agbur n unadi d tesleḍt-ik.';

  @override
  String get askButton => 'Steqsi ɣef tesleḍt-a';

  @override
  String askTitle(String symbol) {
    return 'Isteqsiyen ɣef $symbol';
  }

  @override
  String get askIntro =>
      'Steqsi ayen tebɣiḍ ɣef tesleḍt: d acu i d-yemmal yiwen wugur, d acu i izemren ad ibeddel tamuɣli ɣer zdat, amek i yettwasiḍen yiwen wuṭṭun. Tiririyin bnant ɣef tesleḍt-a, ur d awellih n usersi n yidrimen ara.';

  @override
  String get askHint => 'Aru asteqsi…';

  @override
  String get askSend => 'Azen';

  @override
  String get askThinking => 'Ttxemmimeɣ…';

  @override
  String get askSuggest1 => 'D acu i d ugur ameqqran akk?';

  @override
  String get askSuggest2 => 'D acu i izemren ad ibeddel tamuɣli ɣer zdat?';

  @override
  String get askSuggest3 => 'Fsser-it-id s wawalen fessusen';

  @override
  String get askMaxReached =>
      'Wa d asteqsi aneggaru i tesleḍt-a. Snulfu-d tasleḍt tamaynut akken ad testeqsiḍ ugar.';

  @override
  String get errAskLimit =>
      'Tewweḍeḍ talast n yisteqsiyen n wass-a. Ɛreḍ tikkelt nniḍen azekka.';

  @override
  String get eventTomorrow => 'Azekka';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'deg $days n wussan',
      one: 'deg 1 n wass',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Igmaḍ n kraḍ n wayyuren';

  @override
  String get eventBeforeOpen => 'send ad yeldi ssuq';

  @override
  String get eventAfterClose => 'seld ma yemdel ssuq';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS i yettwarǧan: $value';
  }

  @override
  String get eventFromAnalysis => 'Seg tesleḍt-ik';

  @override
  String get eventsHint =>
      'Izemziyen n yigmaḍ n yismenyifen-ik d wayen yellan deg uqrab-ik i 90 n wussan i d-iteddun, akked tidyanin s uzemz i d-mmlent tselḍin-ik.';

  @override
  String get eventsEmpty =>
      'Ulac tidyanin s uzemz deg 90 n wussan i d-iteddun. Rnu ismenyifen neɣ ayen ɣer uqrab akken ad twaliḍ dagi izemziyen n yigmaḍ-nsen.';

  @override
  String get compareTitle => 'Serwes';

  @override
  String get compareAdd => 'Rnu aksyun';

  @override
  String get compareRemove => 'Kkes';

  @override
  String get compareTickerHint => 'Azamul, amedya MSFT';

  @override
  String get compareHint =>
      'Imḍanen igejdanen yiwen ɣer tama n wayeḍ; azal ufrin deg yal izirig yettwasbeggen. Idrimen llan s tedrimt n yal aksyun.';

  @override
  String get compareNoAnalysis => 'Ulac tasleḍt ar tura';

  @override
  String get portfolioDividends => 'Dividand n useggas';

  @override
  String portfolioDividendYield(String percent) {
    return 'Afaris $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Dividand n useggas i yettwarǧan yebna ɣef dividand yettwaxelṣen deg 12 n wayyuren ineggura; ixelṣen n uzekka ur ttwaḍemnen ara.';

  @override
  String positionDividend(String amount) {
    return 'Dividand: $amount i useggas';
  }

  @override
  String get chartAvgCost => 'Talemmast-ik';

  @override
  String get chartAlertLevel => 'Alɣu';

  @override
  String get marketsToday => 'Isuqen ass-a';

  @override
  String get notesTitle => 'Tizmilin-iw';

  @override
  String get notesHint =>
      'Acimi i t-tuɣeḍ, d acu i tettɛassaḍ, d acu ara k-yerren ad t-tzenzeḍ?';

  @override
  String get notesInfo =>
      'Yettwasekles kan deg yibenk-a. Tasleḍt s AI tettak azal i tezmilin-ik.';

  @override
  String notesSaved(String date) {
    return 'Yettwasekles $date';
  }

  @override
  String get peersTitle => 'Tikebbaniyin i d-icban';
}
