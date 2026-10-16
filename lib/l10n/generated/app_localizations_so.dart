// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Somali (`so`).
class AppLocalizationsSo extends AppLocalizations {
  AppLocalizationsSo([String locale = 'so']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'Sawir saami oo wax walba ka baro.';

  @override
  String get homeHint =>
      'Shahaado saami, shaashadda app-ka dillaalka, wargeys ama astaanta shirkad – wax kasta oo saami lagu garto.';

  @override
  String get takePhoto => 'Sawir qaad';

  @override
  String get chooseFromGallery => 'Ka dooro gaalariga';

  @override
  String get chooseImage => 'Dooro sawir';

  @override
  String get enterTickerManually => 'Astaanta gacanta ku geli';

  @override
  String get tickerInputLabel => 'Astaanta saamiga';

  @override
  String get tickerInputHint => 'tus. AAPL';

  @override
  String get lookUp => 'Raadi';

  @override
  String demoModeBanner(String symbols) {
    return 'Habka bandhigga – fure xogta suuqa lama dejin. Xog tusaale ah ayaa loo heli karaa: $symbols.';
  }

  @override
  String get recognizing => 'Sawirka waa la falanqaynayaa…';

  @override
  String get loadingData => 'Xogta waa la soo rarayaa…';

  @override
  String get noCandidatesTitle => 'Saami lama aqoonsan';

  @override
  String get noCandidatesBody =>
      'Ma aanu aqoonsan karin saami ku jira sawirkan. Isku day sawir ka cad, ama astaanta gacanta ku geli.';

  @override
  String get whatWeSaw => 'Waxa aan aragnay';

  @override
  String get chooseCandidateTitle => 'Saamigee baad ula jeeddey?';

  @override
  String confidencePercent(int percent) {
    return '$percent% kalsooni';
  }

  @override
  String get settings => 'Dejinta';

  @override
  String get language => 'Luqadda';

  @override
  String get systemLanguage => 'Caadiga nidaamka';

  @override
  String get about => 'Ku saabsan';

  @override
  String get disclaimer =>
      'App-kani wuxuu bixiyaa macluumaad keliya, mana aha talo maalgashi. Xogtu way dib u dhici kartaa ama way khaldanaan kartaa.';

  @override
  String dataSource(String source) {
    return 'Isha xogta: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Aqoonsiga: $source';
  }

  @override
  String get retry => 'Isku day mar kale';

  @override
  String get cancel => 'Jooji';

  @override
  String get ok => 'Hagaag';

  @override
  String get close => 'Xir';

  @override
  String get errorGeneric => 'Wax baa khaldamay.';

  @override
  String get errorSectionUnavailable => 'Qaybtan lama soo rari karin.';

  @override
  String get notAvailable => 'lama hayo';

  @override
  String get sectionIdentity => 'Aqoonsi';

  @override
  String get sectionPrice => 'Qiimaha';

  @override
  String get sectionValuation => 'Qiimeyn';

  @override
  String get sectionFinancials => 'Xogta maaliyadda';

  @override
  String get sectionDividend => 'Qaybta faa\'iidada';

  @override
  String get sectionProfile => 'Faahfaahinta shirkadda';

  @override
  String get sectionAnalysts => 'Qiimeynta falanqeeyayaasha';

  @override
  String get sectionNews => 'Warar';

  @override
  String get sectionRecognition => 'Faahfaahinta aqoonsiga';

  @override
  String get labelSymbol => 'Astaan';

  @override
  String get labelExchange => 'Suuqa saamiyada';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Lacagta';

  @override
  String get labelCountry => 'Dalka';

  @override
  String get labelIndustry => 'Warshadda';

  @override
  String get labelSector => 'Waaxda';

  @override
  String get labelWebsite => 'Websaydh';

  @override
  String get labelIpoDate => 'Taariikhda IPO';

  @override
  String get labelMarketCap => 'Qiimaha guud ee suuqa';

  @override
  String get labelSharesOutstanding => 'Saamiyada la bixiyay';

  @override
  String get labelEmployees => 'Shaqaalaha';

  @override
  String get labelCeo => 'Maamulaha guud';

  @override
  String get labelHeadquarters => 'Xarunta dhexe';

  @override
  String get labelDescription => 'Sharaxaad';

  @override
  String get labelLastPrice => 'Qiimihii u dambeeyay';

  @override
  String get labelChange => 'Isbeddel';

  @override
  String get labelOpen => 'Furitaan';

  @override
  String get labelDayHigh => 'Ugu sarreeya maalinta';

  @override
  String get labelDayLow => 'Ugu hooseeya maalinta';

  @override
  String get labelPreviousClose => 'Xiritaankii hore';

  @override
  String get labelWeek52High => 'Ugu sarreeya 52 toddobaad';

  @override
  String get labelWeek52Low => 'Ugu hooseeya 52 toddobaad';

  @override
  String get labelAverageVolume10d => 'Celceliska mugga (10 maalmood)';

  @override
  String updatedAt(String time) {
    return 'La cusboonaysiiyay $time';
  }

  @override
  String get labelPeTrailing => 'P/E (taariikhi)';

  @override
  String get labelPeForward => 'P/E (la filayo)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / socodka lacagta xorta ah';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Dakhli (TTM)';

  @override
  String get labelNetIncomeTtm => 'Faa\'iido saafi ah (TTM)';

  @override
  String get labelGrossMargin => 'Heerka faa\'iidada guud';

  @override
  String get labelOperatingMargin => 'Heerka faa\'iidada hawlgalka';

  @override
  String get labelNetMargin => 'Heerka faa\'iidada saafiga';

  @override
  String get labelRoe => 'Soo-celinta raasumaalka';

  @override
  String get labelRoa => 'Soo-celinta hantida';

  @override
  String get labelDebtToEquity => 'Deyn / raasumaal';

  @override
  String get labelCurrentRatio => 'Heerka dareeraha';

  @override
  String get labelRevenueGrowth => 'Kororka dakhliga (sannadle)';

  @override
  String get labelEpsGrowth => 'Kororka EPS (sannadle)';

  @override
  String get labelDividendYield => 'Heerka qaybta faa\'iidada';

  @override
  String get labelDividendPerShare => 'Qaybta faa\'iidada saamigiiba';

  @override
  String get labelPayoutRatio => 'Heerka bixinta faa\'iidada';

  @override
  String get labelConsensus => 'Is-afgarad';

  @override
  String get ratingStrongBuy => 'Si xoog leh u iibso';

  @override
  String get ratingBuy => 'Iibso';

  @override
  String get ratingHold => 'Hay';

  @override
  String get ratingSell => 'Iibi';

  @override
  String get ratingStrongSell => 'Si xoog leh u iibi';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count falanqeeye',
      one: '1 falanqeeye',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Muddada: $period';
  }

  @override
  String get noNews => 'Ma jiraan warar dhawaan ah.';

  @override
  String get openArticle => 'Fur maqaalka';

  @override
  String get openLinkFailed => 'Linkiga lama furi karin.';

  @override
  String get recognitionSummary => 'Soo koobid';

  @override
  String get recognitionEvidence => 'Sababta aan sidaas u qabno';

  @override
  String get recognitionRawText => 'Qoraalka laga akhriyay sawirka';

  @override
  String get errMissingAnthropicKey =>
      'Aqoonsiga sawirka lama dejin (ANTHROPIC_API_KEY ma jiro). Astaanta gacanta ku geli.';

  @override
  String get errRecognitionUnreachable =>
      'Adeegga aqoonsiga lama gaari karin. Hubi xiriirka internetkaaga.';

  @override
  String errRecognitionHttp(String status) {
    return 'Adeegga aqoonsigu wuxuu soo celiyay khalad (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Adeegga aqoonsigu ma habayn karin sawirkan.';

  @override
  String get errRecognitionTruncated =>
      'Jawaabta aqoonsiga way go\'day. Fadlan isku day mar kale.';

  @override
  String get errRecognitionBadResponse =>
      'Jawaab aan la filayn ayaa ka timid adeegga aqoonsiga.';

  @override
  String get errRecognitionEmpty =>
      'Adeegga aqoonsigu wuxuu soo celiyay jawaab madhan.';

  @override
  String get errMissingFinnhubKey =>
      'Xogta suuqa lama dejin (FINNHUB_API_KEY ma jiro).';

  @override
  String get errMarketUnreachable =>
      'Adeegga xogta suuqa lama gaari karin. Hubi xiriirka internetkaaga.';

  @override
  String get errMarketRateLimited =>
      'Codsiyo aad u badan ayaa loo diray adeegga xogta suuqa. Fadlan sug hal daqiiqo.';

  @override
  String errMarketHttp(String status) {
    return 'Adeegga xogta suuqu wuxuu soo celiyay khalad (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Jawaab aan la filayn ayaa ka timid adeegga xogta suuqa.';

  @override
  String errNoQuote(String symbol) {
    return 'Xog qiimo looma helin $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Faahfaahin shirkadeed looma helin $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Habka bandhiggu wuxuu taageeraa oo keliya: $symbols. Ku dar FINNHUB_API_KEY si aad u hesho xog toos ah.';
  }

  @override
  String errUnknown(String detail) {
    return 'Wax baa khaldamay: $detail';
  }

  @override
  String get newSearch => 'Raadin cusub';

  @override
  String get recentSearches => 'Dhawaan';

  @override
  String get noRecentSearches => 'Weli ma jiraan raadinno dhawaan ah.';

  @override
  String get clearRecent => 'Tirtir kuwa dhawaan';

  @override
  String get greeting => 'Saamigee aan eegno?';

  @override
  String get searchHint => 'Astaan ama magaca shirkadda';

  @override
  String get attachImage => 'Ku lifaaq sawir';

  @override
  String get searchResultsTitle => 'Natiijooyinka raadinta';

  @override
  String errNoResults(String query) {
    return 'Saami looma helin “$query”.';
  }

  @override
  String get quickBarHint => 'Qor astaan ama magaca shirkadda…';

  @override
  String get openFullWindow => 'Fur daaqadda';

  @override
  String hotkeyHint(String shortcut) {
    return 'Meel kasta ka riix $shortcut si aad u furto WhatStock.';
  }

  @override
  String get trayOpen => 'Fur WhatStock';

  @override
  String get trayQuickSearch => 'Raadin degdeg ah';

  @override
  String get trayQuit => 'Ka bax';

  @override
  String get appearance => 'Muuqaalka';

  @override
  String get themeSystem => 'Nidaamka';

  @override
  String get themeDark => 'Mugdi';

  @override
  String get themeLight => 'Iftiin';

  @override
  String get back => 'Dib u noqo';

  @override
  String get aiSectionTitle => 'Falanqaynta AI';

  @override
  String get aiIntro =>
      'Dulmar faahfaahsan oo uu AI qoray: soo koobidda wararkii dhawaa, ganacsiga, awoodaha, khataraha iyo arrimaha qarsoon, qiimeynta, saadaasha qiimaha oo leh xaalado laga eegay dhinacyada nafsiga, bulshada, farsamada iyo dhaqaalaha guud, iyo waxa aad la socon lahayd.';

  @override
  String get aiGenerate => 'Samee falanqayn';

  @override
  String get aiRegenerate => 'Dib u samee';

  @override
  String get aiGenerating =>
      'Falanqaynta waa la diyaarinayaa… tani waxay qaadan kartaa hal ama laba daqiiqo.';

  @override
  String get aiSources => 'Ilaha';

  @override
  String aiGeneratedAt(String time) {
    return 'La sameeyay $time';
  }

  @override
  String get aiDisclaimer =>
      'Falanqayn uu AI sameeyay oo ku salaysan xog dadweyne iyo warar dhawaan ah. Waxay yeelan kartaa khaladaad ama way duugoobi kartaa, mana aha talo maalgashi.';

  @override
  String get errAiNotConfigured =>
      'Falanqaynta AI lama dejin (ANTHROPIC_API_KEY ma jiro).';

  @override
  String get errAiUnreachable =>
      'Adeegga AI lama gaari karin. Hubi xiriirka internetkaaga.';

  @override
  String errAiHttp(String status) {
    return 'Adeegga AI wuxuu soo celiyay khalad (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Adeegga AI wuu diiday inuu falanqeeyo saamigan.';

  @override
  String get errAiBadResponse =>
      'Jawaab aan la filayn ayaa ka timid adeegga AI.';

  @override
  String get sectionChart => 'Jaantuska qiimaha';

  @override
  String get rangeOneWeek => '1 todd.';

  @override
  String get rangeOneMonth => '1 bil';

  @override
  String get rangeThreeMonths => '3 bil';

  @override
  String get rangeOneYear => '1 sano';

  @override
  String get rangeFiveYears => '5 sano';

  @override
  String get chartUnavailable =>
      'Taariikhda qiimaha lagama heli karo isha xogta ee hadda.';

  @override
  String get sectionStatements => 'Warbixinnada maaliyadda (sannadle)';

  @override
  String get labelFiscalYear => 'Sannad maaliyadeed';

  @override
  String get labelRevenue => 'Dakhli';

  @override
  String get labelNetIncome => 'Faa\'iido saafi ah';

  @override
  String get labelTotalAssets => 'Wadarta hantida';

  @override
  String get labelTotalLiabilities => 'Wadarta deymaha';

  @override
  String get labelEquity => 'Raasumaalka milkiilayaasha';

  @override
  String get labelOperatingCashFlow => 'Socodka lacagta hawlgalka';

  @override
  String get statementsUnavailable =>
      'Warbixinno maaliyadeed oo la soo gudbiyay lagama hayo saamigan.';

  @override
  String get launchAtLogin => 'Ku bilow marka aad gasho';

  @override
  String get hotkeyLabel => 'Furaha gaaban ee guud';

  @override
  String get hotkeyRecordHint =>
      'Halkan guji, kadibna riix isku-darka furayaasha cusub';

  @override
  String get hotkeyReset => 'Ku celi caadiga';

  @override
  String get pasteImage => 'Ka dheji sawir kilibboodhka';

  @override
  String get errClipboardNoImage => 'Sawir kuma jiro kilibboodhka.';

  @override
  String get favorites => 'Kuwa la jecel yahay';

  @override
  String get addToFavorites => 'Ku dar kuwa la jecel yahay';

  @override
  String get removeFromFavorites => 'Ka saar kuwa la jecel yahay';

  @override
  String get noFavorites =>
      'Weli ma jiraan kuwa la jecel yahay. Taabo xiddigta saamiga si aad ugu darto.';

  @override
  String get displayCurrency => 'Lacagta muujinta';

  @override
  String get displayCurrencyNone => 'Lacagta saamiga oo keliya';

  @override
  String labelConverted(String currency) {
    return '≈ $currency ahaan';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Sicirka: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Cusboonaysiinta';

  @override
  String currentVersion(String version) {
    return 'Nooca $version';
  }

  @override
  String get autoUpdate => 'Si toos ah u rakib cusboonaysiinta';

  @override
  String get checkForUpdates => 'Hubi cusboonaysiin';

  @override
  String get updateChecking => 'Waxaa la hubinayaa cusboonaysiin…';

  @override
  String get updateUpToDate => 'Waxaad haysataa nooca ugu dambeeyay.';

  @override
  String updateAvailable(String version) {
    return 'Nooca $version waa la heli karaa.';
  }

  @override
  String get updateDownloading =>
      'Cusboonaysiinta waxaa lagu soo dejinayaa gadaasha…';

  @override
  String get updateDownloaded =>
      'Cusboonaysiintu waa diyaar. Dib u bilow si aad u rakibto.';

  @override
  String get updateNow => 'Cusboonaysii';

  @override
  String get restartNow => 'Dib u bilow';

  @override
  String get updatesViaStore =>
      'Cusboonaysiintu si toos ah ayay ugu timaaddaa dukaanka app-ka.';

  @override
  String get updateCheckFailed => 'Cusboonaysiin lama hubin karin.';

  @override
  String get subscription => 'Rukummo';

  @override
  String get planTrial => 'Tijaabo';

  @override
  String get planNormal => 'Caadi';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Qorshe firfircoon ma jiro';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count falanqayn bishii';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Tijaabo bilaash ah oo $days maalmood ah oo leh $count falanqayn';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days maalmood oo tijaabo ah ayaa harsan',
      one: '1 maalin oo tijaabo ah ayaa harsan',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Tijaabadaadii bilaashka ahayd way dhammaatay. Dooro qorshe si aad falanqaynta u sii wadato.';

  @override
  String analysesRemaining(int remaining, int total) {
    return '$remaining ka mid ah $total falanqayn ayaa harsan muddadan';
  }

  @override
  String extraCredits(int count) {
    return '$count falanqayn oo dheeraad ah';
  }

  @override
  String renewsOn(String date) {
    return 'Waxay cusboonaanaysaa $date';
  }

  @override
  String get choosePlan => 'Dooro qorshe';

  @override
  String get currentPlan => 'Qorshaha hadda';

  @override
  String get subscribe => 'Rukumo';

  @override
  String get perMonth => '/ bishii';

  @override
  String get extraPacksTitle =>
      'Ma u baahan tahay wax badan? Iibso falanqayn dheeraad ah';

  @override
  String get extraPacksHint =>
      'Falanqaynta dheeraadka ahi weligeed ma dhacdo, waxaana la isticmaalaa marka qoondadaada bishu dhammaato.';

  @override
  String get buy => 'Iibso';

  @override
  String get restorePurchases => 'Soo celi iibsashada';

  @override
  String get manageSubscription => 'Maamul rukummada';

  @override
  String get purchaseSuccess => 'Mahadsanid! Iibsashadaadu way shaqaynaysaa.';

  @override
  String get purchasePending => 'Iibsashadu way sugaysaa…';

  @override
  String get purchaseFailed => 'Iibsashada lama dhammaystiri karin.';

  @override
  String get purchaseCanceled => 'Iibsashada waa la joojiyay.';

  @override
  String get billingUnavailable =>
      'Iibsashadu weli lagama heli karo nidaamkan. Ku rukumo taleefankaaga ama Mac; qorshahaagu wuxuu ka shaqayn doonaa qalab kasta.';

  @override
  String get errQuotaExceeded =>
      'Muddadan falanqayn kuuma harsana. Kor u qaad qorshahaaga ama iibso falanqayn dheeraad ah.';

  @override
  String get errTrialExpired =>
      'Tijaabadaadii bilaashka ahayd way dhammaatay. Dooro qorshe si aad u sii wadato.';

  @override
  String get errNoPlan =>
      'Falanqaynta AI waxay u baahan tahay qorshe firfircoon.';

  @override
  String get viewPlans => 'Eeg qorshayaasha';

  @override
  String get usageTitle => 'Isticmaalka';

  @override
  String get demoPurchaseNote =>
      'Lacag-bixin bandhig: nidaamkan iibsashadu waa ku-dayasho keliya.';

  @override
  String get mostPopular => 'Ugu caansan';

  @override
  String get bestValue => 'Qiimaha ugu fiican';

  @override
  String get planFeaturesCommon =>
      'Aqoonsiga sawirka, xogta tooska ah, jaantusyada, kuwa la jecel yahay iyo dhammaan 120-ka luqadood waxay ku jiraan qorshe kasta. Qoondadu waxay daboolaysaa falanqaynta AI.';

  @override
  String get searchLanguages => 'Raadi luqadaha…';

  @override
  String get noLanguageMatch => 'Luqad la mid ah lama helin.';

  @override
  String get aiSettings => 'Falanqaynta AI';

  @override
  String get aiLength => 'Dhererka';

  @override
  String get aiDepthBrief => 'Kooban';

  @override
  String get aiDepthStandard => 'Caadi';

  @override
  String get aiDepthDeep => 'Qoto dheer';

  @override
  String get aiDepthBriefDesc => 'Waxa muhiimka ah, si degdeg ah.';

  @override
  String get aiDepthStandardDesc => 'Warbixin dhammaystiran oo leh qayb kasta.';

  @override
  String get aiDepthDeepDesc =>
      'Raadin web oo badan, isbarbardhig shirkadaha la midka ah iyo faahfaahin qoto dheer.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Qiyaastii $min–$max eray';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'waxay isticmaashaa $count falanqayn',
      one: 'waxay isticmaashaa 1 falanqayn',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Heerka akhristaha';

  @override
  String get aiReaderBeginner => 'Bilaabe';

  @override
  String get aiReaderExperienced => 'Khibrad leh';

  @override
  String get aiReaderBeginnerDesc =>
      'Luqad fudud; erey farsamo kasta waa la sharxayaa.';

  @override
  String get aiReaderExperiencedDesc =>
      'Qoraal cufan oo adeegsada ereyada maaliyadda ee caadiga ah.';

  @override
  String get aiCounterArgument => 'Doodda ka soo horjeedda ee ugu xooggan';

  @override
  String get aiCounterArgumentDesc =>
      'Soo koobiddu had iyo jeer waxay ku dhammaataa doodda ugu fiican ee ka soo horjeedda gunaanadkeeda.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Qorshahaagu wuxuu bixiyaa ilaa $count raadin web falanqayntiiba',
      one: 'Qorshahaagu wuxuu bixiyaa ilaa 1 raadin web falanqayntiiba',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Raadinta web ee dhererka caadiga, qorshe ahaan: Caadi $normal, Pro $pro, Max $max, Ultra $ultra. Kooban wuxuu isticmaalaa 2 ka yar, Qoto dheerna 2 ka badan.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ilaa $count raadin web',
      one: 'ilaa 1 raadin web',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count raadin web falanqayntiiba',
      one: '1 raadin web falanqayntiiba',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Dhererkan wuxuu u baahan yahay $needed falanqayn, laakiin $left keliya ayaa harsan. Dejinta ka dooro dherer ka gaaban ama hel falanqayn dheeraad ah.';
  }

  @override
  String get outlookMarketMood => 'Niyadda suuqa';

  @override
  String get moodVeryPessimistic => 'Aad u niyad-jabsan';

  @override
  String get moodPessimistic => 'Niyad-jabsan';

  @override
  String get moodNeutral => 'Dhexdhexaad';

  @override
  String get moodOptimistic => 'Rajo leh';

  @override
  String get moodVeryOptimistic => 'Rajo weyn leh';

  @override
  String get scenarioBull => 'Xaaladda kororka';

  @override
  String get scenarioBase => 'Xaaladda aasaasiga ah';

  @override
  String get scenarioBear => 'Xaaladda hoos u dhaca';

  @override
  String outlookCurrentPrice(String price) {
    return 'Qiimaha hadda: $price';
  }

  @override
  String get outlookKeyLevels => 'Heerarka muhiimka ah';

  @override
  String get keyLevelSupport => 'Taageero';

  @override
  String get keyLevelResistance => 'Iska caabin';

  @override
  String get keyLevelAnchor => 'Tixraac';

  @override
  String get upcomingEvents => 'Dhacdooyinka soo socda';

  @override
  String get outlookChartNote =>
      'Xadad tilmaan ah; suurtagalnimadu waa qiyaas guud, ma aha saadaal.';

  @override
  String get accountTitle => 'Akoonka';

  @override
  String get signIn => 'Gal';

  @override
  String get signOut => 'Ka bax';

  @override
  String get notSignedIn => 'Ma aadan gelin';

  @override
  String get accountBenefit =>
      'Gal si rukummadaadu uga shaqayso dhammaan qalabkaaga.';

  @override
  String get accountSyncedNote =>
      'Rukummadaada iyo falanqaynta kuu harsan waa isku mid qalab kasta.';

  @override
  String get signInTitle => 'Gal WhatStock';

  @override
  String get emailLabel => 'Ciwaanka iimaylka';

  @override
  String get continueWithEmail => 'Ku sii wad iimayl';

  @override
  String codeSentTo(String email) {
    return 'Waxaan koodh 6 lambar ah u dirnay $email. Wuxuu shaqaynayaa 10 daqiiqo.';
  }

  @override
  String get codeLabel => 'Koodhka galitaanka';

  @override
  String get resendCode => 'Dir koodh cusub';

  @override
  String get useDifferentEmail => 'Isticmaal iimayl kale';

  @override
  String get errInvalidCode => 'Koodhku waa khaldan yahay ama wuu dhacay.';

  @override
  String get errInvalidEmail => 'Fadlan geli ciwaan iimayl oo sax ah.';

  @override
  String get errSignInFailed =>
      'Galitaanku wuu fashilmay. Hubi xiriirkaaga oo isku day mar kale.';

  @override
  String get checkoutWaiting =>
      'Ku dhammaystir lacag-bixinta browser-kaaga. App-ku si toos ah ayuu isu cusboonaysiinayaa marka ay dhammaato.';

  @override
  String get paymentViaStripe =>
      'Lacag-bixin ammaan ah oo browser-kaaga ah, iyada oo loo marayo Stripe. Jooji wakhti kasta.';

  @override
  String get paymentViaStore =>
      'Lacagta waxaa laga qaadaa akoonkaaga App Store ama Google Play. Ka jooji wakhti kasta dejinta dukaanka.';

  @override
  String get keySpace => 'Space';

  @override
  String get doubleOptionTitle => 'Laba jeer riix Option';

  @override
  String get doubleOptionSubtitle =>
      'Riixidda furaha Option laba jeer oo degdeg ah ayaa sidoo kale furaysa WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Si ay ugu shaqayso apps-ka kale sidoo kale, u oggolow WhatStock gudaha System Settings → Privacy & Security → Input Monitoring, kadibna dib u fur app-ka.';

  @override
  String get openSystemSettings => 'Fur dejinta nidaamka';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Meel kasta ka riix $shortcut ama laba jeer riix Option si aad u furto WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Ugu suurtagalsan';

  @override
  String get longTermToday => 'Maanta';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years sano',
      one: '1 sano',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range sannadkii';
  }

  @override
  String longTermLikely(String price) {
    return 'ugu suurtagalsan $price';
  }

  @override
  String get confidenceLow => 'Kalsooni hoose';

  @override
  String get confidenceMedium => 'Kalsooni dhexe';

  @override
  String get confidenceHigh => 'Kalsooni sare';

  @override
  String get longTermNote =>
      'Xadadka muddada dheer waxay ku salaysan yihiin malo-awaalka la sheegay, waxayna la ballaartaan waqtiga. Qiimayaashu kuma jiraan qaybta faa\'iidada. Waa qiyaas guud, ma aha saadaal.';

  @override
  String get portfolio => 'Portfoliyo';

  @override
  String get portfolioEmpty =>
      'Weli halkan waxba ma jiraan. Fur saami oo taabo “Ku dar portfoliyo” si aad ula socoto waxa aad leedahay.';

  @override
  String get portfolioLocalNote =>
      'Waxaa lagu kaydiyaa qalabkan oo keliya. Wadarta waxaa lagu beddelaa sicirrada tixraaca ECB; qiimayaashu way dib u dhici karaan.';

  @override
  String get addToPortfolio => 'Ku dar portfoliyo';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Ku dar $symbol';
  }

  @override
  String get portfolioQuantity => 'Tirada saamiyada';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Qiimaha saamigiiba ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Taariikhda iibsashada';

  @override
  String get portfolioAdd => 'Ku dar';

  @override
  String get portfolioInvalidNumber => 'Geli tiro ka weyn eber.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol waxaa lagu daray portfoliyadaada.';
  }

  @override
  String get portfolioTotalValue => 'Wadarta qiimaha';

  @override
  String get portfolioToday => 'Maanta';

  @override
  String get portfolioGainLoss => 'Faa\'iido/khasaare';

  @override
  String get portfolioInvested => 'La maalgashaday';

  @override
  String get portfolioAllocation => 'Qaybinta';

  @override
  String get portfolioPositions => 'Haysashooyinka';

  @override
  String portfolioAvgCost(String price) {
    return 'kharashka celceliska $price';
  }

  @override
  String get portfolioYourPosition => 'Haysashadaada';

  @override
  String get portfolioPurchases => 'Iibsashooyinka';

  @override
  String get portfolioRemove => 'Ka saar';

  @override
  String get portfolioExcluded =>
      'Haysashooyinka aan lahayn qiime ama sicir sarrif waa laga reebay wadarta.';

  @override
  String get priceAlerts => 'Digniinaha qiimaha';

  @override
  String get setPriceAlert => 'Deji digniin qiimo';

  @override
  String alertDialogTitle(String symbol) {
    return 'Digniin qiimo · $symbol';
  }

  @override
  String get alertKindAbove => 'Kor uga baxo';

  @override
  String get alertKindBelow => 'Hoos uga dhaco';

  @override
  String get alertKindMove => 'Maalin gudaheed si weyn isu beddelo';

  @override
  String alertTargetPrice(String currency) {
    return 'Qiimaha ($currency)';
  }

  @override
  String get alertMovePercent => 'Isbeddelka maalinlaha (%)';

  @override
  String get alertAlreadyMet => 'Qiimuhu horeba wuu dhaafay heerkan.';

  @override
  String get alertSave => 'Deji digniin';

  @override
  String alertCreated(String symbol) {
    return 'Digniin waa loo dejiyay $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Weli ma jiraan digniino qiimo. Fur saami oo taabo gambaleelka si aad u dejiso.';

  @override
  String get alertsNote =>
      'Digniinaha waxaa la hubiyaa 5-tii daqiiqoba mar inta WhatStock shaqaynayo. Kombiyuutarka wuxuu ku sii shaqeeyaa menu bar-ka ama tray-ga; taleefanka, hadda digniinuhu waxay yimaadaan oo keliya marka app-ku furan yahay.';

  @override
  String alertDescAbove(String price) {
    return 'Ka sarreeya $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Ka hooseeya $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Isbeddel maalinle ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Waxay dhacday $date, qiimaha $price';
  }

  @override
  String get alertRearm => 'Dib u hawlgeli';

  @override
  String get alertDelete => 'Tirtir';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol wuxuu ka kor maray $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol wuxuu ka hoos dhacay $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol wuxuu maanta isu beddelay $percent';
  }

  @override
  String alertHitBody(String price) {
    return 'Qiimaha hadda: $price';
  }

  @override
  String get alertOpen => 'Fur';

  @override
  String get keepInTrayTitle => 'Sii shaqee marka daaqadda la xiro';

  @override
  String get keepInTraySubtitle =>
      'WhatStock wuxuu ku sii jiraa menu bar-ka ama tray-ga, sidaas darteed furaha gaaban iyo digniinaha qiimuhu way sii shaqeeyaan.';

  @override
  String get termsOfUse => 'Shuruudaha Isticmaalka';

  @override
  String get privacyPolicy => 'Siyaasadda Qarsoodiga';

  @override
  String get subscriptionLegal =>
      'Rukummooyinku si toos ah ayay u cusboonaadaan bil kasta ilaa aad joojiso. Markaad rukunto waxaad aqbashaa Shuruudaha Isticmaalka iyo Siyaasadda Qarsoodiga.';

  @override
  String get deleteAccount => 'Tirtir akoonka';

  @override
  String get deleteAccountTitle => 'Ma tirtirtaa akoonkaaga?';

  @override
  String get deleteAccountBody =>
      'Akoonkaaga iyo wax kasta oo ku kaydsan server-kayaga (iimaylka, qoondada, isticmaalka) si joogto ah ayaa loo tirtiri doonaa, falanqaynta aan la isticmaalinna way lumi doontaa. Rukummada lagu bixiyay browser-ka isla markiiba waa la joojinayaa; rukummada App Store ama Google Play waa in laga joojiyaa dejinta dukaanka.';

  @override
  String get deleteLocalData =>
      'Sidoo kale tirtir xogta qalabkan (portfoliyo, digniinaha, kuwa la jecel yahay, taariikhda, falanqaynta la kaydiyay)';

  @override
  String get deleteAccountConfirm => 'Tirtir si joogto ah';

  @override
  String get accountDeleted => 'Akoonkaaga waa la tirtiray.';

  @override
  String get errDeleteAccount =>
      'Akoonka lama tirtiri karin. Hubi xiriirkaaga oo isku day mar kale.';

  @override
  String get aiTrialBriefNote =>
      'Falanqaynta tijaabadu waa kooban, waxaana lagu sameeyaa nooc AI ah oo degdeg ah. Qorshe ayaad ku helaysaa AI-gayaga ugu awoodda badan, raadin web oo badan, iyo dhererka Caadi iyo Qoto dheer.';

  @override
  String get billingMonthly => 'Bishii';

  @override
  String get billingYearly => 'Sannadkii';

  @override
  String get yearlyDiscount => '2 bilood oo bilaash ah';

  @override
  String get perYear => '/ sannadkii';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price bishii';
  }

  @override
  String get subscriptionLegalYearly =>
      'Rukummooyinka sannadlaha ah si toos ah ayay u cusboonaadaan sannad kasta ilaa aad joojiso. Markaad rukunto waxaad aqbashaa Shuruudaha Isticmaalka iyo Siyaasadda Qarsoodiga.';

  @override
  String get myAnalyses => 'Falanqaynahayga';

  @override
  String get navAlerts => 'Digniinaha';

  @override
  String get inviteTitle => 'Muuqaal hore oo xiran';

  @override
  String get inviteBody =>
      'WhatStock hadda waxaa lagu heli karaa casuumad oo keliya. Geli koodhka casuumadda ee laguu soo diray.';

  @override
  String get inviteCodeLabel => 'Koodhka casuumadda';

  @override
  String get inviteContinue => 'Sii wad';

  @override
  String get inviteInvalid => 'Koodhkan casuumaddu ma ansax aha.';

  @override
  String get inviteExpired =>
      'Casuumaddani way dhacday. Weydii qofkii ku casuumay koodh cusub.';

  @override
  String get inviteDeviceLimit =>
      'Koodhkan casuumadda waxaa hore loogu isticmaalay tirada ugu badan ee qalabka la oggol yahay.';

  @override
  String get previewConfidential => 'Muuqaal hore oo qarsoodi ah';

  @override
  String get errPreviewDailyLimit =>
      'Xadka falanqaynta maanta ee muuqaalkan hore waa la gaadhay. Isku day mar kale berri.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count saacadood ka hor',
      one: '1 saac ka hor',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count maalmood ka hor',
      one: '1 maalin ka hor',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Ma la cusboonaysiiyaa falanqayntan?';

  @override
  String staleBody(String age) {
    return 'Waxaa la sameeyay $age. Qiimayaasha, wararka iyo natiijooyinka ayaa laga yaabaa inay isbeddeleen tan iyo markaas.';
  }

  @override
  String get staleKeep => 'Tus tii hore';

  @override
  String get staleRefresh => 'Samee mid cusub';

  @override
  String seeAll(int count) {
    return 'Eeg dhammaan ($count)';
  }

  @override
  String get searchAnalyses => 'Ka raadi falanqaynahaaga';

  @override
  String get deleteAnalysis => 'Tirtir';

  @override
  String analysisDeleted(String symbol) {
    return 'Falanqaynta $symbol waa la tirtiray';
  }

  @override
  String get keyLevelAlertHint =>
      'Taabo heer si aad u hesho digniin marka qiimuhu gaaro.';

  @override
  String get shareAnalysisTitle => 'La wadaag falanqaynta';

  @override
  String get shareAsImage => 'U wadaag sawir ahaan';

  @override
  String get shareAsText => 'U wadaag qoraal ahaan';

  @override
  String get shareCardFooter => 'Waxaa lagu sameeyay WhatStock';

  @override
  String get shareCardDisclaimer => 'Falanqaynta AI · ma aha talo maalgashi';

  @override
  String get referralTitle => 'Casuun saaxiibbada';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count falanqayn oo dheeraad ah',
      one: '1 falanqayn oo dheeraad ah',
    );
    return 'La wadaag koodhkaaga. Saaxiibkaa wuxuu isla markiiba helayaa $_temp0, adiguna waxaad helaysaa isla intaas kadib falanqayntiisa ugu horreysa.';
  }

  @override
  String get referralYourCode => 'Koodhkaaga';

  @override
  String referralStats(int invited, int rewarded) {
    return 'La casuumay: $invited · Abaalmarin: $rewarded';
  }

  @override
  String get referralHaveCode => 'Ma haysaa koodh saaxiib?';

  @override
  String get referralRedeem => 'Isticmaal';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count falanqayn oo dheeraad ah ayaa lagu daray. Soo dhawoow!',
      one: '1 falanqayn oo dheeraad ah ayaa lagu daray. Soo dhawoow!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Koodhkan ma jiro. Hubi oo isku day mar kale.';

  @override
  String get referralErrOwn => 'Ma isticmaali kartid koodhkaaga.';

  @override
  String get referralErrAlready =>
      'Horay ayaad u isticmaashay koodhka saaxiib.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count falanqayn oo dheeraad ah',
      one: '1 falanqayn oo dheeraad ah',
    );
    return 'Saamiyada waxaan ku falanqeeyaa WhatStock: sawir saami, AI-guna wuu kuu sharxayaa. Koodhkayga $code waxaad ku helaysaa $_temp0.';
  }

  @override
  String get referralCopied => 'Koodhka waa la koobiyeeyay';

  @override
  String get onboardTitle1 => 'Sawir saami';

  @override
  String get onboardBody1 =>
      'Shaashadda app-ka dillaalka, wargeys ama astaanta shirkad ayaa ku filan: WhatStock wuxuu aqoonsadaa saamiga wuxuuna ku tusaa qiimihiisa, jaantuskiisa iyo tirooyinka muhiimka ah.';

  @override
  String get onboardTitle2 => 'Ku fahan daqiiqado gudahood';

  @override
  String get onboardBody2 =>
      'Falanqaynta AI waxay sharraxdaa waxa dhaqaajiya saamiga, khataraha, qiimayntiisa iyo saddex xaaladood oo ku saabsan halka uu qiimuhu u socon karo, iyadoo leh ilo isla markaana ku qoran luqaddaada.';

  @override
  String get onboardTitle3 => 'La soco wax walba';

  @override
  String get onboardBody3 =>
      'Kuwa la jecel yahay, portfoliyahaaga iyo digniinaha qiimaha ayaa kuu sheegaya wixii dhaca. Falanqaynahaagu waxay ku keydsan yihiin qalabkaaga, diyaarna u ah in mar kale la furo.';

  @override
  String get onboardNext => 'Xiga';

  @override
  String get onboardStart => 'Bilow';

  @override
  String get onboardSkip => 'Ka bood';

  @override
  String changesTitle(String date) {
    return 'Tan iyo falanqayntii hore ($date)';
  }

  @override
  String get changesPrice => 'Qiimaha';

  @override
  String get changesNoMajor => 'Saadaashu si weyn uma isbeddelin.';

  @override
  String get changesPreviousSummary => 'Soo koobiddii hore';

  @override
  String get telemetryTitle => 'Naga caawi hagaajinta WhatStock';

  @override
  String get telemetryBody =>
      'La wadaag tirakoob isticmaal oo aan magac lahayn iyo warbixinnada burburka: astaamaha la isticmaalo iyo waxa khaldamay. Marna lama wadaago saamiyadaada, falanqaynahaaga ama xogtaada shakhsiyeed. Waxaad tan beddeli kartaa wakhti kasta gudaha Dejinta.';

  @override
  String get telemetryAllow => 'Oggolow';

  @override
  String get telemetryDecline => 'Maya, mahadsanid';

  @override
  String get telemetrySetting =>
      'Tirakoob aan magac lahayn iyo warbixinnada burburka';

  @override
  String get telemetrySettingHint =>
      'Inta jeer ee astaamaha la isticmaalo iyo warbixinnada khaladaadka, iyadoo aan lahayn xog shakhsiyeed ama nuxurka raadintaada iyo falanqaynahaaga.';

  @override
  String get askButton => 'Wax ka weydii falanqayntan';

  @override
  String askTitle(String symbol) {
    return 'Su\'aalo ku saabsan $symbol';
  }

  @override
  String get askIntro =>
      'Wax kasta ka weydii falanqaynta: waxa khatar ka dhigan tahay, waxa beddeli kara mustaqbalka la filayo, sida tiro loo xisaabiyay. Jawaabuhu waxay ku salaysan yihiin falanqayntan mana aha talo maalgashi.';

  @override
  String get askHint => 'Weydii su\'aal…';

  @override
  String get askSend => 'Dir';

  @override
  String get askThinking => 'Waan fekerayaa…';

  @override
  String get askSuggest1 => 'Waa maxay khatarta ugu weyn?';

  @override
  String get askSuggest2 => 'Maxaa beddeli kara mustaqbalka la filayo?';

  @override
  String get askSuggest3 => 'Si fudud ii sharax';

  @override
  String get askMaxReached =>
      'Taasi waxay ahayd su\'aashii ugu dambaysay ee falanqayntan. Samee falanqayn cusub si aad wax badan u weydiiso.';

  @override
  String get errAskLimit =>
      'Waxaad gaadhay xadka su\'aalaha ee maanta. Fadlan isku day mar kale berri.';

  @override
  String get eventTomorrow => 'Berri';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days maalmood kadib',
      one: '1 maalin kadib',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Natiijooyinka rubuc-sanadeedka';

  @override
  String get eventBeforeOpen => 'ka hor furitaanka suuqa';

  @override
  String get eventAfterClose => 'ka dib xiritaanka suuqa';

  @override
  String eventEpsEstimate(String value) {
    return 'Qiyaasta EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Ka yimid falanqayntaada';

  @override
  String get eventsHint =>
      'Taariikhaha natiijooyinka saamiyada aad jeceshahay iyo kuwa portfoliyadaada 90-ka maalmood ee soo socda, iyo dhacdooyinka taariikhda leh ee falanqaynahaagu calaamadeeyeen.';

  @override
  String get eventsEmpty =>
      'Ma jiraan dhacdooyin taariikh leh 90-ka maalmood ee soo socda. Ku dar kuwa aad jeceshahay ama saamiyo portfoliyo si aad halkan ugu aragto taariikhaha natiijooyinkooda.';

  @override
  String get compareTitle => 'Isbarbardhig';

  @override
  String get compareAdd => 'Ku dar saami';

  @override
  String get compareRemove => 'Ka saar';

  @override
  String get compareTickerHint => 'Astaanta, tusaale MSFT';

  @override
  String get compareHint =>
      'Tirooyinka muhiimka ah oo dhinac dhinac ah; qiimaha ugu fiican ee saf kasta waa la iftiimiyay. Lacagaha waxay ku qoran yihiin lacagta saami kasta.';

  @override
  String get compareNoAnalysis => 'Weli falanqayn ma jirto';

  @override
  String get portfolioDividends => 'Qaybta faa\'iidada sanadlaha';

  @override
  String portfolioDividendYield(String percent) {
    return 'Heerka $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Qaybta faa\'iidada sanadlaha ah ee la filayo waxay ku salaysan tahay qaybaha faa\'iidada la bixiyay 12-kii bilood ee la soo dhaafay; lacag-bixinnada mustaqbalka lama dammaanad qaadayo.';

  @override
  String positionDividend(String amount) {
    return 'Qaybta faa\'iidada: $amount sanadkii';
  }

  @override
  String get chartAvgCost => 'Celceliskaaga';

  @override
  String get chartAlertLevel => 'Digniin';

  @override
  String get marketsToday => 'Suuqyada maanta';

  @override
  String get notesTitle => 'Qoraalladayda';

  @override
  String get notesHint =>
      'Maxaad u iibsatay, maxaad la socotaa, maxaa kugu kallifi lahaa inaad iibiso?';

  @override
  String get notesInfo =>
      'Waxaa lagu kaydiyaa qalabkan oo keliya. Falanqaynta AI waxay tixgelisaa qoraalladaada.';

  @override
  String notesSaved(String date) {
    return 'La kaydiyay $date';
  }

  @override
  String get peersTitle => 'Shirkado la mid ah';

  @override
  String get portfolioExport => 'U dhoofi sida CSV';

  @override
  String get portfolioImport => 'Ka soo deji CSV';

  @override
  String get portfolioImportHint =>
      'Ku dheji hal iibsasho saf kasta: astaanta saamiga, tirada, qiimaha, lacagta, taariikhda (YYYY-MM-DD). Tiirarka waxaa lagu kala saari karaa hakad, hakad-joog ama tab; safka cinwaanku waa ikhtiyaari.';

  @override
  String get portfolioImportButton => 'Soo deji';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count iibsasho ayaa lagu daray',
      one: '1 iibsasho ayaa lagu daray',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count saf ayaa laga booday',
      one: '1 saf ayaa laga booday',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Portfoliyada, kuwa la jecel yahay, digniinaha qiimaha iyo qoraallada waxaa lagu waafajiyaa dhammaan qalabkaaga.';

  @override
  String syncLast(String time) {
    return 'Waafajintii u dambeysay: $time';
  }

  @override
  String get syncNow => 'Hadda waafaji';

  @override
  String get syncFailed =>
      'Waafajintu way fashilantay. Si toos ah ayay dib isugu dayi doontaa.';

  @override
  String get alertEmailTitle => 'Iimayl marka digniin dhacdo';

  @override
  String get alertEmailOn =>
      'Waxaan hubinnaa digniinahaaga dhowr daqiiqo kasta waxaana kuu soo dirnaa iimayl, xitaa marka app-ku xiran yahay.';

  @override
  String get alertEmailSignIn =>
      'Ku gal iimaylkaaga Dejinta si aad digniinaha ugu hesho iimayl, xitaa marka app-ku xiran yahay.';

  @override
  String get portfolioHistory => 'Isbeddelka qiimaha';

  @override
  String get portfolioReviewTitle => 'Dib-u-eegista portfoliyada AI';

  @override
  String get portfolioReviewIntro =>
      'AI waxay eegtaa portfoliyadaada oo dhan: isku-uruursanaanta, ku-tiirsanaanta qaybaha iyo lacagaha, khataraha ay saamiyadaadu wadaagaan, iyo faa\'iidada saamiyada. Waxay isticmaashaa 1 falanqayn.';

  @override
  String get portfolioReviewButton => 'Dib u eeg portfoliyadayda';

  @override
  String get portfolioReviewAgain => 'Mar kale dib u eeg';

  @override
  String get portfolioReviewWorking => 'Portfoliyadaada waa la eegayaa…';

  @override
  String get digestTitle => 'Soo koobid toddobaadle ah iimaylka';

  @override
  String get digestHint =>
      'Isniin kasta: sida ay u dhaqaaqeen kuwa aad jeceshahay iyo portfoliyadaada toddobaadkii hore, iyo taariikhaha natiijooyinkooda soo socda.';

  @override
  String get benchmarkTitle => 'Marka la barbardhigo S&P 500';

  @override
  String get benchmarkYours => 'Iibsadaada';

  @override
  String get benchmarkIndex => 'Isla lacagta S&P 500';

  @override
  String benchmarkAhead(String points) {
    return '$points dhibcood oo boqolkiiba ka fiican tusmada';
  }

  @override
  String benchmarkBehind(String points) {
    return '$points dhibcood oo boqolkiiba ka dambeeya tusmada';
  }

  @override
  String get benchmarkHint =>
      'Sidii in iibsasho kasta lagu maalgeliyey sanduuqa tusmada S&P 500 isla maalintaas. Saami-qaybsiga kuma jiro; soo-celintii hore ma saadaalinayso tan mustaqbalka.';

  @override
  String get portfolioSell => 'Iibi';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Iibi $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Qiimaha iibka saamigiiba ($currency)';
  }

  @override
  String get portfolioSellDate => 'Taariikhda iibka';

  @override
  String get portfolioSellAll => 'Dhammaan';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Waxaad haysataa $quantity';
  }

  @override
  String get portfolioSold => 'La iibiyay';

  @override
  String get portfolioRealized => 'La xaqiijiyay';

  @override
  String get portfolioClosed => 'Haysashooyin xiran';

  @override
  String get portfolioClosedNote => 'Dhammaan saamiyada waa la iibiyay';

  @override
  String get portfolioTransactions => 'Macaamilada';

  @override
  String get portfolioRealizedByYear => 'Faa\'iidada la xaqiijiyay sannadkiiba';

  @override
  String get portfolioRealizedHint =>
      'Iibabka marka hore waxaa lala jaanqaadaa iibsashooyinkaaga ugu da\'da weyn (FIFO), waxaana lagu beddelaa sicirka sarrifka maanta. Canshuur celintaada, isticmaal warbixinta dillaalkaaga.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Tan iyo falanqayntan, natiijooyin rubuc sanadeed oo cusub ayaa la daabacay ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Natiijooyin cusub';

  @override
  String get portfolioImportBrokers =>
      'Dhoofinta Revolut, Trading 212 iyo Interactive Brokers sidoo kale waa la aqoonsadaa, oo ay la socdaan iibka; qaybta faa\'iidada iyo dhigaalka waa laga boodaa.';

  @override
  String get portfolioImportFile => 'Dooro fayl';

  @override
  String offlineBanner(String time) {
    return 'Xiriir ma jiro – waxaa la muujinayaa xogtii ugu dambeysay ee la keydiyay ($time).';
  }

  @override
  String get glossMarketCap =>
      'Inta ay shirkadda oo dhan ku qiimaysan tahay suuqa saamiyada: qiimaha saamiga × tirada saamiyada.';

  @override
  String get glossSharesOutstanding =>
      'Inta saami ee ay shirkaddu bixisay. Haddii ay korodho, saami kastaa wuxuu yeeshaa qayb ka yar; dib-u-iibsashada saamiyadu way yareysaa.';

  @override
  String get glossPeTrailing =>
      'Qiimaha ÷ faa\'iidada saamigiiba ee 12-kii bilood ee la soo dhaafay: imisa sano oo faa\'iidada hadda ah ayaad bixinaysaa. Ka hooseeya waa ka jaban yahay, laakiin shirkadaha si degdeg ah u kora badanaa P/E sare ayay leeyihiin.';

  @override
  String get glossPeForward =>
      'Sida P/E, laakiin waxaa lagu xisaabiyaa faa\'iidada ay falanqeeyayaashu filayaan 12-ka bilood ee soo socda. Haddii uu ka hooseeyo P/E-ga taariikhiga ah, faa\'iidada ayaa la filayaa inay korodho.';

  @override
  String get glossPb =>
      'Qiimaha ÷ qiimaha buugga (hantida laga jaray deymaha) saamigiiba. Qiyaastii 1 waxay ka dhigan tahay in suuqu shirkadda ku qiimeeyo waxa ay warqad ahaan leedahay.';

  @override
  String get glossPs =>
      'Qiimaha suuqa ÷ dakhliga sanadlaha ah. Waxtar u leh shirkadaha weli faa\'iido yar leh ama aan lahayn; is barbar dhig isla qaybta ganacsiga.';

  @override
  String get glossEvToFcf =>
      'Qiimaha shirkadda oo deynta lagu daray (EV) ÷ lacagta ay sannadkii abuurto maalgashiga kadib. Ka hooseeya wuxuu ka dhigan yahay inaad qiimaha aad bixiso lacag badan ka hesho.';

  @override
  String get glossPeg =>
      'P/E ÷ kororka faa\'iidada sanadlaha ah ee la filayo (%). Qiyaastii 1 badanaa waxaa loo arkaa mid cadaalad ah; wuxuu P/E-ga ku eegaa iftiinka kororka.';

  @override
  String get glossEps =>
      'Faa\'iidada saamigiiba 12-kii bilood ee la soo dhaafay. EPS sanad ka sanad kordhaya waa mid ka mid ah calaamadaha ugu xooggan ee shirkad caafimaad qabta.';

  @override
  String get glossBeta =>
      'Inta saamigu caadi ahaan la dhaqaaqo suuqa: 1 = sida suuqa, 1.5 = isbeddello qiyaastii 50% ka weyn, ka hooseeya 1 = ka deggan.';

  @override
  String get glossRevenueTtm =>
      'Wadarta iibka 12-kii bilood ee la soo dhaafay, ka hor kharash kasta.';

  @override
  String get glossNetIncomeTtm =>
      'Faa\'iidada hadhay kadib dhammaan kharashaadka, dulsaarka iyo canshuuraha 12-kii bilood ee la soo dhaafay.';

  @override
  String get glossGrossMargin =>
      'Qaybta dakhliga ee hadha kadib kharashka tooska ah ee alaabta. Heer sare wuxuu badanaa muujiyaa awood lagu dejiyo qiimaha.';

  @override
  String get glossOperatingMargin =>
      'Qaybta dakhliga ee hadha kadib kharashka socodsiinta ganacsiga (mushaharka, kirada, suuq-geynta), ka hor dulsaarka iyo canshuuraha.';

  @override
  String get glossNetMargin =>
      'Qaybta dakhliga ee noqota faa\'iidada ugu dambeysa. 20% waxay ka dhigan tahay in 100 kasta oo iib ah, 20 ay faa\'iido yihiin.';

  @override
  String get glossRoe =>
      'Soo-celinta raasumaalka: faa\'iidada sanadlaha ah ÷ raasumaalka milkiilayaasha. Waxay muujinaysaa sida maamulku si fiican ugu isticmaalo lacagta saamilayda; ka sarreysa qiyaastii 15% waa xoog.';

  @override
  String get glossRoa =>
      'Soo-celinta hantida: faa\'iidada sanadlaha ah ÷ wax kasta oo ay shirkaddu leedahay. Is barbar dhig isla qaybta ganacsiga.';

  @override
  String get glossDebtToEquity =>
      'Deymaha ÷ raasumaalka milkiilayaasha. Ka sarreeya wuxuu ka dhigan yahay lacag deyn ah oo badan: khatar badan marka dulsaarku kordho ama ganacsigu gaabiyo.';

  @override
  String get glossCurrentRatio =>
      'Hantida muddada gaaban ÷ biilasha la bixinayo sannad gudihii. Ka sarreysa 1 waxay ka dhigan tahay in shirkaddu bixin karto biilasheeda dhow.';

  @override
  String get glossRevenueGrowth =>
      'Inta dakhligu kordhay marka loo eego sannad ka hor.';

  @override
  String get glossEpsGrowth =>
      'Inta faa\'iidada saamigiiba kordhay marka loo eego sannad ka hor.';

  @override
  String get glossDividendYield =>
      'Qaybta faa\'iidada sanadlaha ah ÷ qiimaha saamiga: dakhliga lacageed ee aad sannadkii heli lahayd, boqolkiiba ahaan waxa aad bixisay.';

  @override
  String get glossDividendPerShare =>
      'Qaybta faa\'iidada ee lagu bixiyay hal saami sannadkii la soo dhaafay.';

  @override
  String get glossPayoutRatio =>
      'Qaybta faa\'iidada ee loo qaybiyo saamilayda. Ka sarreysa 100% shirkaddu waxay bixinaysaa wax ka badan inta ay kasbato, taas oo dhif ah inay sii socoto.';

  @override
  String get glossTitle => 'Maxay ka dhigan tahay?';

  @override
  String get watchNewsTitle => 'Wararka saamiyadaada';

  @override
  String get undo => 'Dib u celi';

  @override
  String get watchSort => 'Kala sooc';

  @override
  String get watchSortOwn => 'Habayntayda';

  @override
  String get watchSortGainers => 'Kuwa ugu kacay badan marka hore';

  @override
  String get watchSortLosers => 'Kuwa ugu dhacay badan marka hore';

  @override
  String get watchSortName => 'Astaan ahaan (A–Z)';

  @override
  String get watchHint =>
      'Jiid gacan-qabsiga si aad u dib u habayso, u jiid bidix si aad u saarto. Xariiqdu waxay muujinaysaa 30-kii maalmood ee la soo dhaafay.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: falanqaynta aad codsatay waa diyaar.';
  }

  @override
  String alertFromCost(String price) {
    return 'Marka laga eego celceliska qiimaha aad ku iibsatay ($price):';
  }

  @override
  String get briefTitle => 'Maanta iyo saamiyadaada';

  @override
  String get briefButton => 'Soo koob maanta';

  @override
  String get briefHint =>
      'Soo koobid AI oo gaaban oo ku saabsan sida boortafooliyadaada iyo kuwa aad jeceshahay maanta isu beddeleen iyo waxa wararka ugu dambeeyay ka sheegayaan. Ma isticmaalo falanqayn.';

  @override
  String get briefRefresh => 'Cusboonaysii';

  @override
  String get sectionEarnings => 'Natiijooyinka';

  @override
  String earningsNext(String date) {
    return 'Warbixinta xigta: $date';
  }

  @override
  String get earningsExpected => 'EPS la filayo';

  @override
  String get earningsReported => 'EPS la sheegay';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'La mid ama ka sarreeya EPS-ka la filayo $beats ka mid ah $total-dii rubuc ee u dambeeyay',
      one: 'La mid ama ka sarreeya EPS-ka la filayo $beats ka mid ah 1 rubuc',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol wuxuu berri soo bandhigayaa natiijooyinka rubuc-sanadeedka';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol wuxuu maanta soo bandhigayaa natiijooyinka rubuc-sanadeedka';
  }

  @override
  String get earningsRemindersTitle => 'Xasuusinta natiijooyinka';

  @override
  String get earningsRemindersSubtitle =>
      'Ogeysiis maalin ka hor inta aysan saamiyada aad jeceshahay ama kuwa boortfoliyahaaga soo bandhigin natiijooyinka rubuc-sanadeedka';
}
