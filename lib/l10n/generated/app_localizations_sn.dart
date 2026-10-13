// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Shona (`sn`).
class AppLocalizationsSn extends AppLocalizations {
  AppLocalizationsSn([String locale = 'sn']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'Tora mufananidzo wesheya uzive zvese nezvayo.';

  @override
  String get homeHint =>
      'Gwaro remasheya, skrini yeapp yebhurokeri, pepanhau kana logo yekambani – chero chinhu chinoratidza sheya.';

  @override
  String get takePhoto => 'Tora mufananidzo';

  @override
  String get chooseFromGallery => 'Sarudza kubva mugalari';

  @override
  String get chooseImage => 'Sarudza mufananidzo';

  @override
  String get enterTickerManually => 'Nyora ticker iwe pachako';

  @override
  String get tickerInputLabel => 'Chiratidzo cheticker';

  @override
  String get tickerInputHint => 'sem. AAPL';

  @override
  String get lookUp => 'Tsvaga';

  @override
  String demoModeBanner(String symbols) {
    return 'Modhi yekuratidza – hapana kiyi yedata yemusika yakaiswa. Data yemuenzaniso iripo ye: $symbols.';
  }

  @override
  String get recognizing => 'Kuongorora mufananidzo…';

  @override
  String get loadingData => 'Kurodha data…';

  @override
  String get noCandidatesTitle => 'Hapana sheya yazivikanwa';

  @override
  String get noCandidatesBody =>
      'Hatina kukwanisa kuziva sheya mumufananidzo uyu. Edza mufananidzo wakajeka, kana nyora ticker iwe pachako.';

  @override
  String get whatWeSaw => 'Zvatakaona';

  @override
  String get chooseCandidateTitle => 'Waireva sheya ipi?';

  @override
  String confidencePercent(int percent) {
    return 'Chivimbo $percent%';
  }

  @override
  String get settings => 'Marongero';

  @override
  String get language => 'Mutauro';

  @override
  String get systemLanguage => 'Sezvinoita sisitimu';

  @override
  String get about => 'Nezve app';

  @override
  String get disclaimer =>
      'App iyi inopa ruzivo chete uye haisi zano rekuisa mari. Data inogona kunonoka kana kusava yechokwadi.';

  @override
  String dataSource(String source) {
    return 'Kunobva data: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Kuziva: $source';
  }

  @override
  String get retry => 'Edza zvakare';

  @override
  String get cancel => 'Kanzura';

  @override
  String get ok => 'Zvakanaka';

  @override
  String get close => 'Vhara';

  @override
  String get errorGeneric => 'Pane chakakanganisika.';

  @override
  String get errorSectionUnavailable =>
      'Chikamu ichi hachina kukwanisa kurodhwa.';

  @override
  String get notAvailable => 'hapana';

  @override
  String get sectionIdentity => 'Kuzivikanwa';

  @override
  String get sectionPrice => 'Mutengo';

  @override
  String get sectionValuation => 'Kukoshesa';

  @override
  String get sectionFinancials => 'Zvemari';

  @override
  String get sectionDividend => 'Dhividhendi';

  @override
  String get sectionProfile => 'Purofairi yekambani';

  @override
  String get sectionAnalysts => 'Maonero evaongorori';

  @override
  String get sectionNews => 'Nhau';

  @override
  String get sectionRecognition => 'Tsanangudzo dzekuziva';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Musika wemasheya';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Mari';

  @override
  String get labelCountry => 'Nyika';

  @override
  String get labelIndustry => 'Indasitiri';

  @override
  String get labelSector => 'Bazi';

  @override
  String get labelWebsite => 'Webhusaiti';

  @override
  String get labelIpoDate => 'Zuva reIPO';

  @override
  String get labelMarketCap => 'Kukosha pamusika';

  @override
  String get labelSharesOutstanding => 'Masheya akabudiswa';

  @override
  String get labelEmployees => 'Vashandi';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Dzimbahwe';

  @override
  String get labelDescription => 'Tsananguro';

  @override
  String get labelLastPrice => 'Mutengo wekupedzisira';

  @override
  String get labelChange => 'Shanduko';

  @override
  String get labelOpen => 'Kuvhura';

  @override
  String get labelDayHigh => 'Pakakwirira pezuva';

  @override
  String get labelDayLow => 'Pakaderera pezuva';

  @override
  String get labelPreviousClose => 'Kuvhara kwapfuura';

  @override
  String get labelWeek52High => 'Pakakwirira pamavhiki 52';

  @override
  String get labelWeek52Low => 'Pakaderera pamavhiki 52';

  @override
  String get labelAverageVolume10d => 'Avhareji yekutengeserana (mazuva 10)';

  @override
  String updatedAt(String time) {
    return 'Yagadziridzwa $time';
  }

  @override
  String get labelPeTrailing => 'P/E (yakapfuura)';

  @override
  String get labelPeForward => 'P/E (inotevera)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / kuyerera kwemari kwakasununguka';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Mari inopinda (TTM)';

  @override
  String get labelNetIncomeTtm => 'Pundutso chaiyo (TTM)';

  @override
  String get labelGrossMargin => 'Chiyero chepundutso yose';

  @override
  String get labelOperatingMargin => 'Chiyero chepundutso yekushanda';

  @override
  String get labelNetMargin => 'Chiyero chepundutso chaiyo';

  @override
  String get labelRoe => 'Pundutso pamari yevaridzi';

  @override
  String get labelRoa => 'Pundutso papfuma';

  @override
  String get labelDebtToEquity => 'Zvikwereti / mari yevaridzi';

  @override
  String get labelCurrentRatio => 'Chiyero chazvino';

  @override
  String get labelRevenueGrowth => 'Kukura kwemari inopinda (YoY)';

  @override
  String get labelEpsGrowth => 'Kukura kweEPS (YoY)';

  @override
  String get labelDividendYield => 'Pundutso yedhividhendi';

  @override
  String get labelDividendPerShare => 'Dhividhendi pasheya';

  @override
  String get labelPayoutRatio => 'Chiyero chekubhadhara';

  @override
  String get labelConsensus => 'Kubvumirana';

  @override
  String get ratingStrongBuy => 'Tenga zvakasimba';

  @override
  String get ratingBuy => 'Tenga';

  @override
  String get ratingHold => 'Chengeta';

  @override
  String get ratingSell => 'Tengesa';

  @override
  String get ratingStrongSell => 'Tengesa zvakasimba';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vaongorori $count',
      one: 'Muongorori 1',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Nguva: $period';
  }

  @override
  String get noNews => 'Hapana nhau nyowani.';

  @override
  String get openArticle => 'Vhura chinyorwa';

  @override
  String get openLinkFailed => 'Hazvina kukwanisika kuvhura chinongedzo.';

  @override
  String get recognitionSummary => 'Pfupiso';

  @override
  String get recognitionEvidence => 'Nei tichifunga kudaro';

  @override
  String get recognitionRawText => 'Mavara akaverengwa kubva mumufananidzo';

  @override
  String get errMissingAnthropicKey =>
      'Kuziva mifananidzo hakuna kurongwa (hapana ANTHROPIC_API_KEY). Nyora ticker iwe pachako.';

  @override
  String get errRecognitionUnreachable =>
      'Hazvina kukwanisika kusvika kusevhisi yekuziva. Tarisa kubatana kwako neindaneti.';

  @override
  String errRecognitionHttp(String status) {
    return 'Sevhisi yekuziva yadzosa chikanganiso (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Sevhisi yekuziva haina kukwanisa kugadzirisa mufananidzo uyu.';

  @override
  String get errRecognitionTruncated =>
      'Mhinduro yekuziva yakadimburwa. Ndapota edza zvakare.';

  @override
  String get errRecognitionBadResponse =>
      'Mhinduro isingatarisirwi kubva kusevhisi yekuziva.';

  @override
  String get errRecognitionEmpty =>
      'Sevhisi yekuziva yadzosa mhinduro isina chinhu.';

  @override
  String get errMissingFinnhubKey =>
      'Data yemusika haina kurongwa (hapana FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Hazvina kukwanisika kusvika kusevhisi yedata yemusika. Tarisa kubatana kwako neindaneti.';

  @override
  String get errMarketRateLimited =>
      'Zvikumbiro zvawandisa kusevhisi yedata yemusika. Ndapota mira miniti imwe.';

  @override
  String errMarketHttp(String status) {
    return 'Sevhisi yedata yemusika yadzosa chikanganiso (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Mhinduro isingatarisirwi kubva kusevhisi yedata yemusika.';

  @override
  String errNoQuote(String symbol) {
    return 'Hapana data yemutengo yawanikwa ye-$symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Hapana purofairi yekambani yawanikwa ye-$symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Modhi yekuratidza inotsigira $symbols chete. Wedzera FINNHUB_API_KEY kuti uwane data yepanguva iyoyo.';
  }

  @override
  String errUnknown(String detail) {
    return 'Pane chakakanganisika: $detail';
  }

  @override
  String get newSearch => 'Kutsvaga kutsva';

  @override
  String get recentSearches => 'Zvichangobva';

  @override
  String get noRecentSearches => 'Hapana zvichangotsvagwa parizvino.';

  @override
  String get clearRecent => 'Dzima zvichangobva';

  @override
  String get greeting => 'Tingatarisa sheya ipi?';

  @override
  String get searchHint => 'Ticker kana zita rekambani';

  @override
  String get attachImage => 'Batanidza mufananidzo';

  @override
  String get searchResultsTitle => 'Zvawanikwa';

  @override
  String errNoResults(String query) {
    return 'Hapana masheya awanikwa pakutsvaga “$query”.';
  }

  @override
  String get quickBarHint => 'Nyora ticker kana zita rekambani…';

  @override
  String get openFullWindow => 'Vhura hwindo';

  @override
  String hotkeyHint(String shortcut) {
    return 'Dzvanya $shortcut chero kupi kuti udaidze WhatStock.';
  }

  @override
  String get trayOpen => 'Vhura WhatStock';

  @override
  String get trayQuickSearch => 'Kutsvaga nekukurumidza';

  @override
  String get trayQuit => 'Buda';

  @override
  String get appearance => 'Chitarisiko';

  @override
  String get themeSystem => 'Sisitimu';

  @override
  String get themeDark => 'Rima';

  @override
  String get themeLight => 'Chiedza';

  @override
  String get back => 'Dzokera';

  @override
  String get aiSectionTitle => 'Ongororo yeAI';

  @override
  String get aiIntro =>
      'Tsananguro yakadzama yakanyorwa neAI: pfupiso yenhau dzichangobva, bhizimisi, masimba, njodzi nezvinhu zvakavanzika, kukosha, maonero emutengo ane mamiriro anogona kuitika kubva kumativi epfungwa, emagariro, ehunyanzvi nehupfumi hwese, uye zvaunofanira kutarisa.';

  @override
  String get aiGenerate => 'Gadzira ongororo';

  @override
  String get aiRegenerate => 'Gadzira patsva';

  @override
  String get aiGenerating =>
      'Kugadzirira ongororo… izvi zvinogona kutora miniti imwe kana mbiri.';

  @override
  String get aiSources => 'Kwazvakabva';

  @override
  String aiGeneratedAt(String time) {
    return 'Yakagadzirwa $time';
  }

  @override
  String get aiDisclaimer =>
      'Ongororo yakagadzirwa neAI ichishandisa data yeruzhinji nenhau dzichangobva. Inogona kunge iine zvikanganiso kana kunge yasara, uye haisi zano rekuisa mari.';

  @override
  String get errAiNotConfigured =>
      'Ongororo yeAI haina kurongwa (hapana ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Hazvina kukwanisika kusvika kusevhisi yeAI. Tarisa kubatana kwako neindaneti.';

  @override
  String errAiHttp(String status) {
    return 'Sevhisi yeAI yadzosa chikanganiso (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Sevhisi yeAI yaramba kuongorora sheya iyi.';

  @override
  String get errAiBadResponse =>
      'Mhinduro isingatarisirwi kubva kusevhisi yeAI.';

  @override
  String get sectionChart => 'Chati yemutengo';

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
      'Nhoroondo yemutengo haiwanikwe kubva kunobva data parizvino.';

  @override
  String get sectionStatements => 'Mishumo yemari (yegore)';

  @override
  String get labelFiscalYear => 'Gore remari';

  @override
  String get labelRevenue => 'Mari inopinda';

  @override
  String get labelNetIncome => 'Pundutso chaiyo';

  @override
  String get labelTotalAssets => 'Pfuma yose';

  @override
  String get labelTotalLiabilities => 'Zvikwereti zvese';

  @override
  String get labelEquity => 'Mari yevaridzi vemasheya';

  @override
  String get labelOperatingCashFlow => 'Kuyerera kwemari kwekushanda';

  @override
  String get statementsUnavailable =>
      'Mishumo yemari yakaburitswa haiwanikwe pasheya iyi.';

  @override
  String get launchAtLogin => 'Tanga paunopinda';

  @override
  String get hotkeyLabel => 'Nzira pfupi yepese';

  @override
  String get hotkeyRecordHint =>
      'Dzvanya pano, wozodzvanya musanganiswa mutsva wemakiyi';

  @override
  String get hotkeyReset => 'Dzorera kune zvakajairwa';

  @override
  String get pasteImage => 'Namatidza mufananidzo kubva paclipboard';

  @override
  String get errClipboardNoImage => 'Hapana mufananidzo uri paclipboard.';

  @override
  String get favorites => 'Zvaunofarira';

  @override
  String get addToFavorites => 'Wedzera kune zvaunofarira';

  @override
  String get removeFromFavorites => 'Bvisa pane zvaunofarira';

  @override
  String get noFavorites =>
      'Hapana zvaunofarira parizvino. Baya nyeredzi pasheya kuti uiwedzere.';

  @override
  String get displayCurrency => 'Mari yekuratidza';

  @override
  String get displayCurrencyNone => 'Mari yesheya chete';

  @override
  String labelConverted(String currency) {
    return '≈ mu-$currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Chiyero: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Zvivandudzo';

  @override
  String currentVersion(String version) {
    return 'Vhezheni $version';
  }

  @override
  String get autoUpdate => 'Isa zvivandudzo zvega';

  @override
  String get checkForUpdates => 'Tarisa zvivandudzo';

  @override
  String get updateChecking => 'Kutarisa zvivandudzo…';

  @override
  String get updateUpToDate => 'Une vhezheni nyowani kwazvo.';

  @override
  String updateAvailable(String version) {
    return 'Vhezheni $version iripo.';
  }

  @override
  String get updateDownloading => 'Kudhawunirodha chivandudzo kumashure…';

  @override
  String get updateDownloaded =>
      'Chivandudzo chagadzirira. Tangazve kuti uchiise.';

  @override
  String get updateNow => 'Vandudza';

  @override
  String get restartNow => 'Tangazve';

  @override
  String get updatesViaStore =>
      'Zvivandudzo zvinouya zvega kuburikidza nechitoro chemaapp.';

  @override
  String get updateCheckFailed => 'Hazvina kukwanisika kutarisa zvivandudzo.';

  @override
  String get subscription => 'Kunyoresa';

  @override
  String get planTrial => 'Muedzo';

  @override
  String get planNormal => 'Yakajairwa';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Hapana chirongwa chiri kushanda';

  @override
  String planAnalysesPerMonth(int count) {
    return 'Ongororo $count pamwedzi';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Muedzo wemahara wemazuva $days une ongororo $count';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Pasara mazuva $days emuedzo',
      one: 'Pasara zuva 1 remuedzo',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Muedzo wako wemahara wapera. Sarudza chirongwa kuti urambe uchiongorora.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Pasara ongororo $remaining kubva pa$total munguva ino';
  }

  @override
  String extraCredits(int count) {
    return 'Ongororo $count dzekuwedzera';
  }

  @override
  String renewsOn(String date) {
    return 'Kunovandudzwa $date';
  }

  @override
  String get choosePlan => 'Sarudza chirongwa';

  @override
  String get currentPlan => 'Chirongwa chazvino';

  @override
  String get subscribe => 'Nyoresa';

  @override
  String get perMonth => '/ mwedzi';

  @override
  String get extraPacksTitle => 'Unoda zvimwe? Tenga ongororo dzekuwedzera';

  @override
  String get extraPacksHint =>
      'Ongororo dzekuwedzera hadzimbopera nguva uye dzinoshandiswa mushure mekupera kwemwero wako wemwedzi.';

  @override
  String get buy => 'Tenga';

  @override
  String get restorePurchases => 'Dzorera zvawakatenga';

  @override
  String get manageSubscription => 'Tarisira kunyoresa';

  @override
  String get purchaseSuccess => 'Tatenda! Zvawatenga zvave kushanda.';

  @override
  String get purchasePending => 'Kutenga kwakamirira…';

  @override
  String get purchaseFailed => 'Kutenga hakuna kukwanisa kupedzwa.';

  @override
  String get purchaseCanceled => 'Kutenga kwakanzurwa.';

  @override
  String get billingUnavailable =>
      'Kutenga hakusati kwavapo papuratifomu iyi. Nyoresa pafoni yako kana paMac; chirongwa chako chichashanda pamudziyo wese.';

  @override
  String get errQuotaExceeded =>
      'Hauna ongororo dzasara munguva ino. Simudzira chirongwa chako kana tenga ongororo dzekuwedzera.';

  @override
  String get errTrialExpired =>
      'Muedzo wako wemahara wapera. Sarudza chirongwa kuti uenderere mberi.';

  @override
  String get errNoPlan =>
      'Chirongwa chiri kushanda chinodiwa kuti uwane ongororo yeAI.';

  @override
  String get viewPlans => 'Ona zvirongwa';

  @override
  String get usageTitle => 'Mashandisiro';

  @override
  String get demoPurchaseNote =>
      'Kubhadhara kwekuratidza: kutenga ndekwekuedzera chete papuratifomu iyi.';

  @override
  String get mostPopular => 'Inonyanya kufarirwa';

  @override
  String get bestValue => 'Inokosha zvakanyanya';

  @override
  String get planFeaturesCommon =>
      'Kuziva mifananidzo, data yepanguva iyoyo, machati, zvaunofarira nemitauro yese 120 zviri muchirongwa chimwe nechimwe. Mwero unosanganisira ongororo dzeAI.';

  @override
  String get searchLanguages => 'Tsvaga mitauro…';

  @override
  String get noLanguageMatch => 'Hapana mutauro unoenderana.';

  @override
  String get aiSettings => 'Ongororo yeAI';

  @override
  String get aiLength => 'Kureba';

  @override
  String get aiDepthBrief => 'Pfupi';

  @override
  String get aiDepthStandard => 'Yepakati';

  @override
  String get aiDepthDeep => 'Yakadzama';

  @override
  String get aiDepthBriefDesc => 'Zvakakosha, nekukurumidza.';

  @override
  String get aiDepthStandardDesc => 'Mushumo wakazara une zvikamu zvese.';

  @override
  String get aiDepthDeepDesc =>
      'Kutsvaga kwakawanda paindaneti, kuenzanisa nevakwikwidzi uye zvakadzama zvakanyanya.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Anenge mazwi $min–$max';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'inoshandisa ongororo $count',
      one: 'inoshandisa ongororo 1',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Danho remuverengi';

  @override
  String get aiReaderBeginner => 'Mutangi';

  @override
  String get aiReaderExperienced => 'Ane ruzivo';

  @override
  String get aiReaderBeginnerDesc =>
      'Mutauro uri nyore; izwi rega rega rehunyanzvi rinotsanangurwa.';

  @override
  String get aiReaderExperiencedDesc =>
      'Chinyorwa chakadzama chine mazwi akajairwa emari.';

  @override
  String get aiCounterArgument => 'Pfungwa inopikisa yakasimba kwazvo';

  @override
  String get aiCounterArgumentDesc =>
      'Pfupiso inogara ichipera nepfungwa yakasimba kwazvo inopikisa mhedziso yayo pachayo.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Kusvika pakutsvaga $count paindaneti paongororo imwe neimwe nechirongwa chako',
      one: 'Kusvika pakutsvaga 1 paindaneti paongororo imwe neimwe nechirongwa chako',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Kutsvaga paindaneti pakureba kwepakati nechirongwa: Yakajairwa $normal, Pro $pro, Max $max, Ultra $ultra. Pfupi inoshandisa 2 zvishoma, Yakadzama inowedzera 2.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'kusvika pakutsvaga $count paindaneti',
      one: 'kusvika pakutsvaga 1 paindaneti',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kutsvaga $count paindaneti paongororo imwe neimwe',
      one: 'Kutsvaga 1 paindaneti paongororo imwe neimwe',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Kureba uku kunoda ongororo $needed, asi dzasara $left chete. Sarudza kureba kupfupi muMarongero kana uwane dzimwe ongororo.';
  }

  @override
  String get outlookMarketMood => 'Mafungiro emusika';

  @override
  String get moodVeryPessimistic => 'Tariro yakaderera zvikuru';

  @override
  String get moodPessimistic => 'Tariro yakaderera';

  @override
  String get moodNeutral => 'Pakati nepakati';

  @override
  String get moodOptimistic => 'Tariro yakakwira';

  @override
  String get moodVeryOptimistic => 'Tariro yakakwira zvikuru';

  @override
  String get scenarioBull => 'Mamiriro akanaka';

  @override
  String get scenarioBase => 'Mamiriro epakati';

  @override
  String get scenarioBear => 'Mamiriro akaipa';

  @override
  String outlookCurrentPrice(String price) {
    return 'Mutengo wazvino: $price';
  }

  @override
  String get outlookKeyLevels => 'Mazinga akakosha';

  @override
  String get keyLevelSupport => 'Rutsigiro';

  @override
  String get keyLevelResistance => 'Kupikisa';

  @override
  String get keyLevelAnchor => 'Hwaro';

  @override
  String get upcomingEvents => 'Zviitiko zviri kuuya';

  @override
  String get outlookChartNote =>
      'Mazinga ekungofungidzira; mikana ifungidziro dzisina kunyatsojeka, kwete kufanotaura.';

  @override
  String get accountTitle => 'Akaundi';

  @override
  String get signIn => 'Pinda';

  @override
  String get signOut => 'Buda';

  @override
  String get notSignedIn => 'Hauna kupinda';

  @override
  String get accountBenefit =>
      'Pinda kuti kunyoresa kwako kushande pamidziyo yako yese.';

  @override
  String get accountSyncedNote =>
      'Kunyoresa kwako neongororo dzasara zvakafanana pamudziyo wese.';

  @override
  String get signInTitle => 'Pinda muWhatStock';

  @override
  String get emailLabel => 'Kero ye-email';

  @override
  String get continueWithEmail => 'Enderera ne-email';

  @override
  String codeSentTo(String email) {
    return 'Takatumira kodhi yenhamba 6 ku-$email. Inoshanda kwemaminiti 10.';
  }

  @override
  String get codeLabel => 'Kodhi yekupinda';

  @override
  String get resendCode => 'Tumira kodhi nyowani';

  @override
  String get useDifferentEmail => 'Shandisa imwe email';

  @override
  String get errInvalidCode => 'Kodhi haina kururama kana kuti yapera nguva.';

  @override
  String get errInvalidEmail => 'Ndapota nyora kero ye-email chaiyo.';

  @override
  String get errSignInFailed =>
      'Kupinda kwakundikana. Tarisa kubatana kwako wozoedza zvakare.';

  @override
  String get checkoutWaiting =>
      'Pedzisa kubhadhara mubhurawuza yako. App ichagadziridzwa yega kana zvapera.';

  @override
  String get paymentViaStripe =>
      'Kubhadhara kwakachengeteka mubhurawuza kuburikidza neStripe. Kanzura chero nguva.';

  @override
  String get paymentViaStore =>
      'Unobhadhariswa kuburikidza neakaundi yako yeApp Store kana Google Play. Kanzura chero nguva mumarongero echitoro.';

  @override
  String get keySpace => 'Space';

  @override
  String get doubleOptionTitle => 'Dzvanya Option kaviri';

  @override
  String get doubleOptionSubtitle =>
      'Kudzvanya kiyi yeOption kaviri nekukurumidza kunodaidzawo WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Kuti zvishande nemumamwe maapp, bvumira WhatStock pa System Settings → Privacy & Security → Input Monitoring, wozovhurazve app.';

  @override
  String get openSystemSettings => 'Vhura System Settings';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Dzvanya $shortcut kana dzvanya Option kaviri chero kupi kuti udaidze WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Zvinonyanya kuitika';

  @override
  String get longTermToday => 'Nhasi';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: 'makore $years',
      one: 'gore 1',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range pagore';
  }

  @override
  String longTermLikely(String price) {
    return 'zvinonyanya kuitika: $price';
  }

  @override
  String get confidenceLow => 'Chivimbo chakaderera';

  @override
  String get confidenceMedium => 'Chivimbo chepakati';

  @override
  String get confidenceHigh => 'Chivimbo chakakwira';

  @override
  String get longTermNote =>
      'Mazinga enguva refu anovakirwa pazvifungidziro zvataurwa uye anowedzera kufara nekufamba kwenguva. Mitengo haisanganisiri dhividhendi. Fungidziro chete, kwete kufanotaura.';

  @override
  String get portfolio => 'Potiforiyo';

  @override
  String get portfolioEmpty =>
      'Hapana chiripo parizvino. Vhura sheya wobaya “Wedzera kupotiforiyo” kuti utevere zvaunazvo.';

  @override
  String get portfolioLocalNote =>
      'Zvakachengetwa pamudziyo uyu chete. Huwandu hwose hunoshandurwa nemitengo yereferensi yeECB; mitengo inogona kunonoka.';

  @override
  String get addToPortfolio => 'Wedzera kupotiforiyo';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Wedzera $symbol';
  }

  @override
  String get portfolioQuantity => 'Huwandu hwemasheya';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Mutengo pasheya ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Zuva rekutenga';

  @override
  String get portfolioAdd => 'Wedzera';

  @override
  String get portfolioInvalidNumber => 'Nyora nhamba inopfuura zero.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol yawedzerwa kupotiforiyo yako.';
  }

  @override
  String get portfolioTotalValue => 'Kukosha kwese';

  @override
  String get portfolioToday => 'Nhasi';

  @override
  String get portfolioGainLoss => 'Pundutso/kurasikirwa';

  @override
  String get portfolioInvested => 'Zvakaiswa';

  @override
  String get portfolioAllocation => 'Kugoverwa';

  @override
  String get portfolioPositions => 'Masheya';

  @override
  String portfolioAvgCost(String price) {
    return 'avhareji yemutengo $price';
  }

  @override
  String get portfolioYourPosition => 'Masheya ako';

  @override
  String get portfolioPurchases => 'Zvawakatenga';

  @override
  String get portfolioRemove => 'Bvisa';

  @override
  String get portfolioExcluded =>
      'Masheya asina mutengo kana chiyero chekuchinjana mari haaverengerwi muhuwandu hwese.';

  @override
  String get priceAlerts => 'Zviziviso zvemutengo';

  @override
  String get setPriceAlert => 'Isa chiziviso chemutengo';

  @override
  String alertDialogTitle(String symbol) {
    return 'Chiziviso chemutengo · $symbol';
  }

  @override
  String get alertKindAbove => 'Ukakwira pamusoro pe';

  @override
  String get alertKindBelow => 'Ukadzika pasi pe';

  @override
  String get alertKindMove => 'Ukachinja zvikuru muzuva rimwe';

  @override
  String alertTargetPrice(String currency) {
    return 'Mutengo ($currency)';
  }

  @override
  String get alertMovePercent => 'Shanduko yezuva (%)';

  @override
  String get alertAlreadyMet => 'Mutengo watopfuura danho iri.';

  @override
  String get alertSave => 'Isa chiziviso';

  @override
  String alertCreated(String symbol) {
    return 'Chiziviso che-$symbol chaiswa.';
  }

  @override
  String get alertsEmpty =>
      'Hapana zviziviso zvemutengo parizvino. Vhura sheya wobaya bhero kuti uise chimwe.';

  @override
  String get alertsNote =>
      'Zviziviso zvinotariswa maminiti 5 ega ega WhatStock ichiri kushanda. Pakombiyuta inoramba ichishanda pamenu bar kana patray; pafoni, parizvino zviziviso zvinosvika chete kana app yakavhurwa.';

  @override
  String alertDescAbove(String price) {
    return 'Pamusoro pe-$price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Pasi pe-$price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Shanduko yezuva ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Chakaitika $date pa-$price';
  }

  @override
  String get alertRearm => 'Isazve';

  @override
  String get alertDelete => 'Dzima';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol yakwira pamusoro pe-$price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol yadzika pasi pe-$price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol yachinja ne-$percent nhasi';
  }

  @override
  String alertHitBody(String price) {
    return 'Mutengo wazvino: $price';
  }

  @override
  String get alertOpen => 'Vhura';

  @override
  String get keepInTrayTitle => 'Ramba uchishanda kana hwindo rakavharwa';

  @override
  String get keepInTraySubtitle =>
      'WhatStock inogara pamenu bar kana patray, saka nzira pfupi nezviziviso zvemutengo zvinoramba zvichishanda.';

  @override
  String get termsOfUse => 'Mitemo Yekushandisa';

  @override
  String get privacyPolicy => 'Mutemo Wekuvanzika';

  @override
  String get subscriptionLegal =>
      'Kunyoresa kunovandudzwa kwega mwedzi wega wega kusvika wakanzura. Nekunyoresa unobvuma Mitemo Yekushandisa neMutemo Wekuvanzika.';

  @override
  String get deleteAccount => 'Dzima akaundi';

  @override
  String get deleteAccountTitle => 'Dzima akaundi yako here?';

  @override
  String get deleteAccountBody =>
      'Akaundi yako nezvose zvakachengetwa pasevha yedu (email, mwero, mashandisiro) zvichadzimwa zvachose, uye ongororo dzisina kushandiswa dzicharasika. Kunyoresa kwakabhadharwa mubhurawuza kunokanzurwa ipapo ipapo; kunyoresa kweApp Store kana Google Play kunofanira kukanzurwa mumarongero echitoro.';

  @override
  String get deleteLocalData =>
      'Dzimawo data iri pamudziyo uyu (potiforiyo, zviziviso, zvaunofarira, nhoroondo, ongororo dzakachengetwa)';

  @override
  String get deleteAccountConfirm => 'Dzima zvachose';

  @override
  String get accountDeleted => 'Akaundi yako yadzimwa.';

  @override
  String get errDeleteAccount =>
      'Akaundi haina kukwanisa kudzimwa. Tarisa kubatana kwako wozoedza zvakare.';

  @override
  String get aiTrialBriefNote =>
      'Ongororo dzemuedzo ipfupi uye dzinoitwa nemodhi yeAI inokurumidza. Nechirongwa unowana AI yedu ine simba kwazvo, kutsvaga kwakawanda paindaneti, uye kureba kweYepakati neYakadzama.';

  @override
  String get billingMonthly => 'Pamwedzi';

  @override
  String get billingYearly => 'Pagore';

  @override
  String get yearlyDiscount => 'Mwedzi 2 mahara';

  @override
  String get perYear => '/ gore';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price pamwedzi';
  }

  @override
  String get subscriptionLegalYearly =>
      'Kunyoresa kwegore kunovandudzwa kwega gore rega rega kusvika wakanzura. Nekunyoresa unobvuma Mitemo Yekushandisa neMutemo Wekuvanzika.';

  @override
  String get myAnalyses => 'Ongororo dzangu';

  @override
  String get navAlerts => 'Zviziviso';
}
