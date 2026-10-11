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
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count falanqeeye', one: '1 falanqeeye');
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
  String get errRecognitionUnreachable => 'Adeegga aqoonsiga lama gaari karin. Hubi xiriirka internetkaaga.';

  @override
  String errRecognitionHttp(String status) {
    return 'Adeegga aqoonsigu wuxuu soo celiyay khalad (HTTP $status).';
  }

  @override
  String get errRecognitionRefused => 'Adeegga aqoonsigu ma habayn karin sawirkan.';

  @override
  String get errRecognitionTruncated => 'Jawaabta aqoonsiga way go\'day. Fadlan isku day mar kale.';

  @override
  String get errRecognitionBadResponse => 'Jawaab aan la filayn ayaa ka timid adeegga aqoonsiga.';

  @override
  String get errRecognitionEmpty => 'Adeegga aqoonsigu wuxuu soo celiyay jawaab madhan.';

  @override
  String get errMissingFinnhubKey => 'Xogta suuqa lama dejin (FINNHUB_API_KEY ma jiro).';

  @override
  String get errMarketUnreachable => 'Adeegga xogta suuqa lama gaari karin. Hubi xiriirka internetkaaga.';

  @override
  String get errMarketRateLimited => 'Codsiyo aad u badan ayaa loo diray adeegga xogta suuqa. Fadlan sug hal daqiiqo.';

  @override
  String errMarketHttp(String status) {
    return 'Adeegga xogta suuqu wuxuu soo celiyay khalad (HTTP $status).';
  }

  @override
  String get errMarketBadResponse => 'Jawaab aan la filayn ayaa ka timid adeegga xogta suuqa.';

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
  String get aiGenerating => 'Falanqaynta waa la diyaarinayaa… tani waxay qaadan kartaa hal ama laba daqiiqo.';

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
  String get errAiNotConfigured => 'Falanqaynta AI lama dejin (ANTHROPIC_API_KEY ma jiro).';

  @override
  String get errAiUnreachable => 'Adeegga AI lama gaari karin. Hubi xiriirka internetkaaga.';

  @override
  String errAiHttp(String status) {
    return 'Adeegga AI wuxuu soo celiyay khalad (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Adeegga AI wuu diiday inuu falanqeeyo saamigan.';

  @override
  String get errAiBadResponse => 'Jawaab aan la filayn ayaa ka timid adeegga AI.';

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
  String get chartUnavailable => 'Taariikhda qiimaha lagama heli karo isha xogta ee hadda.';

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
  String get statementsUnavailable => 'Warbixinno maaliyadeed oo la soo gudbiyay lagama hayo saamigan.';

  @override
  String get launchAtLogin => 'Ku bilow marka aad gasho';

  @override
  String get hotkeyLabel => 'Furaha gaaban ee guud';

  @override
  String get hotkeyRecordHint => 'Halkan guji, kadibna riix isku-darka furayaasha cusub';

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
  String get noFavorites => 'Weli ma jiraan kuwa la jecel yahay. Taabo xiddigta saamiga si aad ugu darto.';

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
  String get updateDownloading => 'Cusboonaysiinta waxaa lagu soo dejinayaa gadaasha…';

  @override
  String get updateDownloaded => 'Cusboonaysiintu waa diyaar. Dib u bilow si aad u rakibto.';

  @override
  String get updateNow => 'Cusboonaysii';

  @override
  String get restartNow => 'Dib u bilow';

  @override
  String get updatesViaStore => 'Cusboonaysiintu si toos ah ayay ugu timaaddaa dukaanka app-ka.';

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
  String get extraPacksTitle => 'Ma u baahan tahay wax badan? Iibso falanqayn dheeraad ah';

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
  String get errTrialExpired => 'Tijaabadaadii bilaashka ahayd way dhammaatay. Dooro qorshe si aad u sii wadato.';

  @override
  String get errNoPlan => 'Falanqaynta AI waxay u baahan tahay qorshe firfircoon.';

  @override
  String get viewPlans => 'Eeg qorshayaasha';

  @override
  String get usageTitle => 'Isticmaalka';

  @override
  String get demoPurchaseNote => 'Lacag-bixin bandhig: nidaamkan iibsashadu waa ku-dayasho keliya.';

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
  String get aiDepthDeepDesc => 'Raadin web oo badan, isbarbardhig shirkadaha la midka ah iyo faahfaahin qoto dheer.';

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
  String get aiReaderBeginnerDesc => 'Luqad fudud; erey farsamo kasta waa la sharxayaa.';

  @override
  String get aiReaderExperiencedDesc => 'Qoraal cufan oo adeegsada ereyada maaliyadda ee caadiga ah.';

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
  String get outlookChartNote => 'Xadad tilmaan ah; suurtagalnimadu waa qiyaas guud, ma aha saadaal.';

  @override
  String get accountTitle => 'Akoonka';

  @override
  String get signIn => 'Gal';

  @override
  String get signOut => 'Ka bax';

  @override
  String get notSignedIn => 'Ma aadan gelin';

  @override
  String get accountBenefit => 'Gal si rukummadaadu uga shaqayso dhammaan qalabkaaga.';

  @override
  String get accountSyncedNote => 'Rukummadaada iyo falanqaynta kuu harsan waa isku mid qalab kasta.';

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
  String get errSignInFailed => 'Galitaanku wuu fashilmay. Hubi xiriirkaaga oo isku day mar kale.';

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
  String get doubleOptionSubtitle => 'Riixidda furaha Option laba jeer oo degdeg ah ayaa sidoo kale furaysa WhatStock.';

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
    String _temp0 = intl.Intl.pluralLogic(years, locale: localeName, other: '$years sano', one: '1 sano');
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
  String get portfolioExcluded => 'Haysashooyinka aan lahayn qiime ama sicir sarrif waa laga reebay wadarta.';

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
  String get alertsEmpty => 'Weli ma jiraan digniino qiimo. Fur saami oo taabo gambaleelka si aad u dejiso.';

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
  String get errDeleteAccount => 'Akoonka lama tirtiri karin. Hubi xiriirkaaga oo isku day mar kale.';

  @override
  String get aiTrialBriefNote =>
      'Falanqaynta tijaabadu waa kooban, waxaana lagu sameeyaa nooc AI ah oo degdeg ah. Qorshe ayaad ku helaysaa AI-gayaga ugu awoodda badan, raadin web oo badan, iyo dhererka Caadi iyo Qoto dheer.';
}
