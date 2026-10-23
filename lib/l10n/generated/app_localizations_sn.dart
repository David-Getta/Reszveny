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
  String get labelYieldOnCost => 'Pundutso pamutengo wawakatenga';

  @override
  String get labelDividendGrowth5y => 'Kukura kwedhividhendi (makore 5)';

  @override
  String get dividendNone =>
      'Hapana dhividhendi yakabhadharwa mumwedzi 12 yapfuura.';

  @override
  String get dividendOnYourShares => 'Pamasheya ako, pagore';

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
  String homeDividendsThisYear(String amount) {
    return 'Madividendi gore rino: $amount';
  }

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

  @override
  String get inviteTitle => 'Shanduro yekuedza yakavharika';

  @override
  String get inviteBody =>
      'WhatStock iri kuwanikwa nekukokwa chete parizvino. Isa kodhi yekukoka yawakagamuchira.';

  @override
  String get inviteCodeLabel => 'Kodhi yekukoka';

  @override
  String get inviteContinue => 'Enderera mberi';

  @override
  String get inviteInvalid => 'Kodhi yekukoka iyi haina kururama.';

  @override
  String get inviteExpired =>
      'Kukoka uku kwapera nguva. Kumbira munhu akakukoka kodhi itsva.';

  @override
  String get inviteDeviceLimit =>
      'Kodhi yekukoka iyi yatoshandiswa pamidziyo yakawanda sezvinobvumirwa.';

  @override
  String get previewConfidential => 'Shanduro yakavanzika';

  @override
  String get errPreviewDailyLimit =>
      'Muganhu weongororo wanhasi weshanduro iyi wasvika. Edza zvakare mangwana.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'maawa $count apfuura',
      one: 'awa 1 rapfuura',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'mazuva $count apfuura',
      one: 'zuva 1 rapfuura',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Gadziridza ongororo iyi?';

  @override
  String staleBody(String age) {
    return 'Yakagadzirwa $age. Mitengo, nhau nemhedzisiro zvingave zvakachinja kubva ipapo.';
  }

  @override
  String get staleKeep => 'Ratidza yekare';

  @override
  String get staleRefresh => 'Gadzira itsva';

  @override
  String seeAll(int count) {
    return 'Ona zvese ($count)';
  }

  @override
  String get searchAnalyses => 'Tsvaga ongororo dzako';

  @override
  String get deleteAnalysis => 'Dzima';

  @override
  String analysisDeleted(String symbol) {
    return 'Ongororo ya$symbol yadzimwa';
  }

  @override
  String get keyLevelAlertHint =>
      'Baya zinga kuti uwane chiziviso kana mutengo wasvika ipapo.';

  @override
  String get shareAnalysisTitle => 'Govera ongororo';

  @override
  String get shareAsImage => 'Govera semufananidzo';

  @override
  String get shareAsText => 'Govera semavara';

  @override
  String get shareCardFooter => 'Zvakagadzirwa neWhatStock';

  @override
  String get shareCardDisclaimer => 'Ongororo yeAI · haisi zano rekuisa mari';

  @override
  String get referralTitle => 'Koka shamwari';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ongororo $count dzekuwedzera',
      one: 'ongororo 1 yekuwedzera',
    );
    return 'Govera kodhi yako. Shamwari yako inowana $_temp0 ipapo ipapo, uye newe unowana zvakafanana mushure meongororo yayo yekutanga.';
  }

  @override
  String get referralYourCode => 'Kodhi yako';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Vakokwa: $invited · Mibairo: $rewarded';
  }

  @override
  String get referralHaveCode => 'Une kodhi kubva kushamwari?';

  @override
  String get referralRedeem => 'Shandisa';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ongororo $count dzekuwedzera dzawedzerwa. Mauya!',
      one: 'Ongororo 1 yekuwedzera yawedzerwa. Mauya!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Kodhi iyi haipo. Iongorore wozoedza zvakare.';

  @override
  String get referralErrOwn => 'Haugoni kushandisa kodhi yako pachako.';

  @override
  String get referralErrAlready => 'Wakatoshandisa kodhi yeshamwari.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ongororo $count dzekuwedzera',
      one: 'ongororo 1 yekuwedzera',
    );
    return 'Ndinoongorora masheya neWhatStock: tora mufananidzo wesheya uye AI inokutsanangurira. Nekodhi yangu $code unowana $_temp0.';
  }

  @override
  String get referralCopied => 'Kodhi yakopwa';

  @override
  String get onboardTitle1 => 'Tora mufananidzo wesheya';

  @override
  String get onboardBody1 =>
      'Skrini yeapp yebhurokeri, pepanhau kana logo yekambani zvakakwana: WhatStock inoziva sheya yobva yakuratidza mutengo wayo, girafu nenhamba dzinokosha.';

  @override
  String get onboardTitle2 => 'Inzwisisa mumaminitsi mashoma';

  @override
  String get onboardBody2 =>
      'Ongororo yeAI inotsanangura zvinofambisa sheya, njodzi, kukosha kwayo uye zviitiko zvitatu zvekuti mutengo ungaendepi, ine zvinyorwa zvainobva uye mumutauro wako.';

  @override
  String get onboardTitle3 => 'Ramba uchiziva zviri kuitika';

  @override
  String get onboardBody3 =>
      'Zvaunofarira, potiforiyo yako nezviziviso zvemutengo zvinokuzivisa nguva dzose. Ongororo dzako dzinogara pamudziyo wako, dzakagadzirira kuvhurwa zvakare.';

  @override
  String get onboardNext => 'Inotevera';

  @override
  String get onboardStart => 'Tanga';

  @override
  String get onboardSkip => 'Svetuka';

  @override
  String changesTitle(String date) {
    return 'Kubvira paongororo yapfuura ($date)';
  }

  @override
  String get changesPrice => 'Mutengo';

  @override
  String get changesNoMajor => 'Tarisiro haina kuchinja zvikuru.';

  @override
  String get changesPreviousSummary => 'Pfupiso yapfuura';

  @override
  String get telemetryTitle => 'Batsira kuvandudza WhatStock';

  @override
  String get telemetryBody =>
      'Govana nhamba dzekushandiswa dzisingazivikanwe nemishumo yekukanganisika: zvinhu zvinoshandiswa nezvakakanganisika. Kwete masheya ako, ongororo dzako kana ruzivo rwako rwega. Unogona kuchinja izvi chero nguva muMarongero.';

  @override
  String get telemetryAllow => 'Bvumira';

  @override
  String get telemetryDecline => 'Kwete, ndatenda';

  @override
  String get telemetrySetting =>
      'Nhamba dzisingazivikanwe nemishumo yekukanganisika';

  @override
  String get telemetrySettingHint =>
      'Kuti zvinhu zvinoshandiswa kangani nemishumo yezvikanganiso, pasina ruzivo rwako rwega kana zviri mukutsvaga kwako neongororo dzako.';

  @override
  String get askButton => 'Bvunza nezve ongororo iyi';

  @override
  String askTitle(String symbol) {
    return 'Mibvunzo nezve $symbol';
  }

  @override
  String get askIntro =>
      'Bvunza chero chinhu nezve ongororo iyi: zvinorehwa nenjodzi, zvingashandura maonero, kuti nhamba yakawanikwa sei. Mhinduro dzinobva paongororo iyi uye hadzisi zano rekuisa mari.';

  @override
  String get askHint => 'Bvunza mubvunzo…';

  @override
  String get askSend => 'Tumira';

  @override
  String get askThinking => 'Ndiri kufunga…';

  @override
  String get askSuggest1 => 'Ndeipi njodzi huru kupfuura dzose?';

  @override
  String get askSuggest2 => 'Chii chingashandura maonero?';

  @override
  String get askSuggest3 => 'Tsanangura nenzira iri nyore';

  @override
  String get askMaxReached =>
      'Uyu ndiwo waive mubvunzo wekupedzisira weongororo iyi. Gadzira ongororo itsva kuti ubvunze zvimwe.';

  @override
  String get errAskLimit =>
      'Wasvika pamuganhu wemibvunzo wanhasi. Edza zvakare mangwana.';

  @override
  String get eventTomorrow => 'Mangwana';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'mushure memazuva $days',
      one: 'mushure mezuva 1',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Mhedzisiro yekota';

  @override
  String get eventBeforeOpen => 'musika usati wavhurwa';

  @override
  String get eventAfterClose => 'mushure mekuvharwa kwemusika';

  @override
  String eventEpsEstimate(String value) {
    return 'Fungidziro yeEPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Kubva muongororo yako';

  @override
  String get eventDividend => 'Dividendi inotarisirwa';

  @override
  String get eventDividendEstimate =>
      'Zvakafungidzirwa kubva pamibhadharo yawakanyora';

  @override
  String get eventsHint =>
      'Mazuva emhedzisiro yemasheya aunofarira neepotiforiyo yako mumazuva 90 anotevera, zviitiko zvine mazuva zvakaratidzwa neongororo dzako, uye madividendi anotarisirwa kubva pamibhadharo yawakanyora.';

  @override
  String get eventsEmpty =>
      'Hapana zviitiko zvine mazuva mumazuva 90 anotevera. Wedzera zvaunofarira kana masheya epotiforiyo kuti uone mazuva emhedzisiro yawo pano; madividendi awakanyora anoratidza mubhadharo unotevera unotarisirwa.';

  @override
  String get compareTitle => 'Enzanisa';

  @override
  String get compareAdd => 'Wedzera sheya';

  @override
  String get compareRemove => 'Bvisa';

  @override
  String get compareTickerHint => 'Ticker, semuenzaniso MSFT';

  @override
  String get compareHint =>
      'Nhamba huru dzakatarisana; kukosha kwakanakisa mumutsara wega wega kwaratidzwa. Mari dziri mumari yesheya imwe neimwe.';

  @override
  String get compareNoAnalysis => 'Hapana ongororo parizvino';

  @override
  String get portfolioDividends => 'Dhividhendi yegore';

  @override
  String portfolioDividendYield(String percent) {
    return 'Pundutso $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Dhividhendi inotarisirwa yegore inobva padhividhendi dzakabhadharwa mumwedzi 12 yapfuura; kubhadhara kweramangwana hakuvimbiswi.';

  @override
  String positionDividend(String amount) {
    return 'Dhividhendi: $amount pagore';
  }

  @override
  String get chartAvgCost => 'Avhareji yako';

  @override
  String get chartAlertLevel => 'Chiziviso';

  @override
  String get marketsToday => 'Misika nhasi';

  @override
  String get notesTitle => 'Zvinyorwa zvangu';

  @override
  String get notesHint =>
      'Wakaitengerei, uri kutarisa chii, chii chingaita kuti uitengese?';

  @override
  String get notesInfo =>
      'Zvakachengetwa pamudziyo uyu chete. Ongororo yeAI inotarisa zvinyorwa zvako.';

  @override
  String notesSaved(String date) {
    return 'Zvachengetwa $date';
  }

  @override
  String get peersTitle => 'Makambani akafanana';

  @override
  String get portfolioExport => 'Tumira seCSV';

  @override
  String get portfolioImport => 'Pinza kubva kuCSV';

  @override
  String get portfolioImportHint =>
      'Namira chinhu chimwe chawakatenga pamutsara mumwe nemumwe: ticker, huwandu, mutengo, mari, zuva (YYYY-MM-DD). Makoramu anogona kuparadzaniswa nemakoma, semikoroni kana tabhu; mutsara wemisoro hausi wekumanikidzwa.';

  @override
  String get portfolioImportButton => 'Pinza';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Zvinhu $count zvawakatenga zvawedzerwa',
      one: 'Chinhu 1 chawakatenga chawedzerwa',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mitsara $count yasvetwa',
      one: 'Mutsara 1 wasvetwa',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Potiforiyo, zvaunofarira, zviziviso zvemutengo nezvinyorwa zvinowiriraniswa pamidziyo yako yese.';

  @override
  String syncLast(String time) {
    return 'Kuwiriranisa kwekupedzisira: $time';
  }

  @override
  String get syncNow => 'Wiriranisa izvozvi';

  @override
  String get syncFailed => 'Kuwiriranisa kwatadza. Kuchaedza zvakare kwega.';

  @override
  String get alertEmailTitle => 'Email kana chiziviso chaitika';

  @override
  String get alertEmailOn =>
      'Tinotarisa zviziviso zvako maminiti mashoma ega ega uye tinokutumira email, kunyange app yakavharwa.';

  @override
  String get alertEmailSignIn =>
      'Pinda neemail yako muMarongero kuti uwane zviziviso neemail, kunyange app yakavharwa.';

  @override
  String get portfolioHistory => 'Kukosha nekufamba kwenguva';

  @override
  String get portfolioReviewTitle => 'Ongororo yepotiforiyo yeAI';

  @override
  String get portfolioReviewIntro =>
      'AI inoongorora potiforiyo yako yose: kuunganidzwa kwemari panzvimbo imwe, kuvimba nemapazi ebhizinesi nemari dzekunze, njodzi dzinogovaniwa nemasheya ako, uye zvikamu zveprofiti. Inoshandisa ongororo 1.';

  @override
  String get portfolioReviewButton => 'Ongorora potiforiyo yangu';

  @override
  String get portfolioReviewAgain => 'Ongorora zvakare';

  @override
  String get portfolioReviewWorking => 'Tiri kuongorora potiforiyo yako…';

  @override
  String get digestTitle => 'Pfupiso yevhiki ne-email';

  @override
  String get digestHint =>
      'Muvhuro wega wega: mafambiro akaita zvaunofarira nepotiforiyo yako vhiki rapfuura, nemazuva anotevera emhedzisiro yazvo.';

  @override
  String get benchmarkTitle => 'Kuenzaniswa neS&P 500';

  @override
  String get benchmarkTitleIndex => 'Kuenzaniswa neindex';

  @override
  String get benchmarkHintIndex =>
      'Sekunge chese chawakatenga chakaiswa zuva iroro muhomwe yemari inotevera index yawasarudza. Dhividhendi hadzisanganisirwi; purofiti dzakapfuura hadzifanotaure dzeramangwana.';

  @override
  String get benchmarkYours => 'Zvawakatenga';

  @override
  String benchmarkAhead(String points) {
    return 'Zvirinani pane index nemapoinzi epasenti $points';
  }

  @override
  String benchmarkBehind(String points) {
    return 'Kumashure kwe index nemapoinzi epasenti $points';
  }

  @override
  String get portfolioSell => 'Tengesa';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Tengesa $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Mutengo wekutengesa pasheya ($currency)';
  }

  @override
  String get portfolioSellDate => 'Zuva rekutengesa';

  @override
  String get portfolioSellAll => 'Ese';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Une $quantity';
  }

  @override
  String get portfolioSold => 'Zvatengeswa';

  @override
  String get portfolioRealized => 'Pundutso chaiyo';

  @override
  String get portfolioClosed => 'Masheya akatengeswa ese';

  @override
  String get portfolioClosedNote => 'Masheya ese akatengeswa';

  @override
  String get portfolioTransactions => 'Zvakatengwa nezvakatengeswa';

  @override
  String get portfolioRealizedByYear => 'Pundutso chaiyo pagore';

  @override
  String get portfolioRealizedHint =>
      'Zvatengeswa zvinotanga kuenzaniswa nezvawakatenga kare kare (FIFO), zvichishandurwa pamutengo wekuchinjana mari wanhasi. Pamushumo wako wemutero, shandisa chitatimende chebroker wako.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Kubva paongororo iyi, mhedzisiro itsva yekota yaburitswa ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Mhedzisiro itsva';

  @override
  String get portfolioImportBrokers =>
      'Zvinobviswa kubva kuRevolut, Trading 212 neInteractive Brokers zvinozivikanwawo, pamwe chete nezvatengeswa; dhividhendi nemari yakaiswa zvinosvetuka.';

  @override
  String get portfolioImportFile => 'Sarudza faira';

  @override
  String offlineBanner(String time) {
    return 'Hapana kubatana – kuri kuratidzwa data yekupedzisira yakachengetwa ($time).';
  }

  @override
  String get glossMarketCap =>
      'Kukosha kwekambani yose pamusika wemasheya: mutengo wesheya × huwandu hwemasheya.';

  @override
  String get glossSharesOutstanding =>
      'Masheya mangani akabudiswa nekambani. Kana achiwedzera, sheya yega yega inova nechikamu chidiki; kutengazve masheya kunoaderedza.';

  @override
  String get glossPeTrailing =>
      'Mutengo ÷ pundutso pasheya yemwedzi 12 yapfuura: makore mangani epundutso yazvino aunobhadharira. Kudiki kunoreva kuti zvakachipa, asi makambani anokura nekukurumidza anowanzova neP/E yakakwira.';

  @override
  String get glossPeForward =>
      'Kufanana neP/E, asi nepundutso inotarisirwa nevaongorori mumwedzi 12 inotevera. Kana iri pasi peP/E yakapfuura, pundutso inotarisirwa kukura.';

  @override
  String get glossPb =>
      'Mutengo ÷ kukosha kwemumabhuku (pfuma kubvisa zvikwereti) pasheya. Pedyo ne1 zvinoreva kuti musika unokoshesa kambani zvakaenzana nezvainazvo pabepa.';

  @override
  String get glossPs =>
      'Kukosha pamusika ÷ mari inopinda pagore. Zvinobatsira kumakambani asati ave nepundutso huru kana asina; enzanisa mukati meindasitiri imwe chete.';

  @override
  String get glossEvToFcf =>
      'Kukosha kwekambani pamwe nechikwereti (EV) ÷ mari yainoita mugore rimwe mushure mekudyara. Kudiki kunoreva kuti unowana mari yakawanda pamutengo waunobhadhara.';

  @override
  String get glossPeg =>
      'P/E ÷ kukura kwepundutso kunotarisirwa pagore (%). Pedyo ne1 kunowanzoonekwa sekwakaringana; kunoisa P/E pachiedza chekukura.';

  @override
  String get glossEps =>
      'Pundutso pasheya mumwedzi 12 yapfuura. EPS inokwira gore negore ndechimwe chezviratidzo zvakasimba zvekambani ine utano.';

  @override
  String get glossBeta =>
      'Kuti sheya inowanzofamba zvakadii nemusika: 1 = semusika, 1.5 = kuzununguka kwakakura neinenge 50%, pasi pe1 = yakadzikama.';

  @override
  String get glossRevenueTtm =>
      'Kutengesa kwese kwemwedzi 12 yapfuura, pasati pabviswa mari dzakashandiswa.';

  @override
  String get glossNetIncomeTtm =>
      'Pundutso inosara mushure memari dzese dzakashandiswa, mubereko nemitero mumwedzi 12 yapfuura.';

  @override
  String get glossGrossMargin =>
      'Chikamu chemari inopinda chinosara mushure memari yakananga yezvigadzirwa. Chiyero chakakwira chinowanzoratidza simba rekutara mitengo.';

  @override
  String get glossOperatingMargin =>
      'Chikamu chemari inopinda chinosara mushure mekufambisa bhizinesi (mihoro, rendi, kushambadza), pasati pabviswa mubereko nemitero.';

  @override
  String get glossNetMargin =>
      'Chikamu chemari inopinda chinova pundutso yekupedzisira. 20% zvinoreva kuti pa100 yega yega yekutengesa, 20 ipundutso.';

  @override
  String get glossRoe =>
      'Pundutso pamari yevaridzi: pundutso yegore ÷ mari yevaridzi. Inoratidza kuti vatungamiriri vanoshandisa mari yevagovani zvakanaka sei; pamusoro peinenge 15% yakasimba.';

  @override
  String get glossRoa =>
      'Pundutso papfuma: pundutso yegore ÷ zvese zviri zvekambani. Enzanisa mukati meindasitiri imwe chete.';

  @override
  String get glossDebtToEquity =>
      'Zvikwereti ÷ mari yevaridzi. Kukwira kunoreva mari yakakweretwa yakawanda: njodzi huru kana mubereko uchikwira kana bhizinesi richinonoka.';

  @override
  String get glossCurrentRatio =>
      'Pfuma yenguva pfupi ÷ mabhiri anofanira kubhadharwa mukati megore. Pamusoro pe1 zvinoreva kuti kambani inogona kubhadhara mabhiri ayo ari pedyo.';

  @override
  String get glossRevenueGrowth =>
      'Kuti mari inopinda yakakura zvakadii kana ichienzaniswa negore rapfuura.';

  @override
  String get glossEpsGrowth =>
      'Kuti pundutso pasheya yakakura zvakadii kana ichienzaniswa negore rapfuura.';

  @override
  String get glossDividendYield =>
      'Dhividhendi yegore ÷ mutengo wesheya: mari yaungawana pagore, sechikamu muzana chezvaunobhadhara.';

  @override
  String get glossDividendPerShare =>
      'Dhividhendi yakabhadharwa pasheya imwe mugore rapfuura.';

  @override
  String get glossPayoutRatio =>
      'Chikamu chepundutso chinobhadharwa sedhividhendi. Pamusoro pe100% kambani inobhadhara kupfuura zvainowana, izvo zvisingawanzogari.';

  @override
  String get portfolioBeta => 'Beta yepotiforiyo';

  @override
  String get glossPortfolioBeta =>
      'Beta yemasheya ako, yakayerwa maererano nekukosha kwawo: inenge masheya ako anofamba nezvikamu zvingani muzana kana musika ukafamba ne1%. Pamusoro pe1 anozununguka kupfuura musika, pasi pe1 zvishoma. Mari haina kuverengerwa.';

  @override
  String get portfolioTop3 => 'Masheya makuru 3';

  @override
  String get glossPortfolioTop3 =>
      'Chikamu chekukosha kwemasheya ako chiri mumasheya ako matatu makuru. Pachinowedzera, ndipo nhau dzakaipa dzekambani imwe chete dzinogona kukuvadza potiforiyo yese.';

  @override
  String get glossDividendGrowth5y =>
      'Kuti dhividhendi pasheya yakakura zvakadii pagore pavhareji mumakore mashanu apfuura. Kukura kwakatsiga kazhinji kunoreva kuti kambani inovimba nemari yayo inopinda; kuderedzwa kazhinji chiratidzo chenyevero.';

  @override
  String get glossYieldOnCost =>
      'Madividendi akagamuchirwa mumwedzi 12 yapfuura akakamurwa nezvawakabhadhara masheya auchiri nawo. Kusiyana nepundutso yedhividhendi, inoyerwa nemutengo wawakatenga nawo iwe, kwete mutengo wanhasi.';

  @override
  String get glossTitle => 'Zvinorevei?';

  @override
  String get watchNewsTitle => 'Nhau dzesheya dzako';

  @override
  String get undo => 'Dzosa';

  @override
  String get watchSort => 'Ronga';

  @override
  String get watchSortOwn => 'Kurongwa kwangu';

  @override
  String get watchSortGainers => 'Zvakakwira zvikuru kutanga';

  @override
  String get watchSortLosers => 'Zvakadzika zvikuru kutanga';

  @override
  String get watchSortName => 'Nema ticker (A–Z)';

  @override
  String get watchHint =>
      'Dhonza mubato kuti urongazve, svaipa kuruboshwe kuti ubvise. Mutsara unoratidza mazuva 30 apfuura.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: ongororo yako yagadzirira.';
  }

  @override
  String alertFromCost(String price) {
    return 'Kubva pamutengo wako wepakati wekutenga ($price):';
  }

  @override
  String get briefTitle => 'Nhasi nemasheya ako';

  @override
  String get briefButton => 'Pfupikisa nhasi';

  @override
  String get briefHint =>
      'Pfupiso pfupi yeAI yekuti portfolio yako nezvaunofarira zvafamba sei nhasi uye kuti nhau dzichangobva dzinoti kudii. Hazvishandisi ongororo.';

  @override
  String get briefRefresh => 'Gadzirisa';

  @override
  String get sectionEarnings => 'Mhedzisiro yekota';

  @override
  String earningsNext(String date) {
    return 'Chirevo chinotevera: $date';
  }

  @override
  String get earningsExpected => 'EPS inotarisirwa';

  @override
  String get earningsReported => 'EPS yakaziviswa';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Yakaenzana kana kupfuura EPS inotarisirwa mumakota $beats kubva pa $total ekupedzisira',
      one: 'Yakaenzana kana kupfuura EPS inotarisirwa mukota $beats kubva pa 1',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol ichaburitsa mhedzisiro yekota mangwana';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol ichaburitsa mhedzisiro yekota nhasi';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return '$symbol: dividendi inotarisirwa nhasi';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Inenge $amount. Inyore mupotiforiyo yako kana yasvika.';
  }

  @override
  String get dividendRemindersTitle => 'Zviyeuchidzo zvedividendi';

  @override
  String get dividendRemindersSubtitle =>
      'Chiziviso pazuva rinotarisirwa dividendi zvichienderana nemaitiro emibhadharo yawakanyora, kuti uinyore';

  @override
  String get earningsRemindersTitle => 'Zviyeuchidzo zvemhedzisiro';

  @override
  String get earningsRemindersSubtitle =>
      'Chiziviso zuva rimwe zvaunofarira kana masheya ari mupotiforiyo yako asati aburitsa mhedzisiro yekota';

  @override
  String addAllToFavorites(int count) {
    return 'Wedzera zvese kune zvaunofarira ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Pinza kubva pamufananidzo wesikirini';

  @override
  String get holdingsReading => 'Kuverenga masheya ako…';

  @override
  String get holdingsReviewTitle => 'Masheya awanikwa';

  @override
  String get holdingsReviewHint =>
      'Tarisa nhamba usati wadzipinza. Mutengo ndiwo mutengo wako wepakati wawakatenga nawo sheya imwe neimwe, kwete mutengo wanhasi.';

  @override
  String get holdingsNoPrice =>
      'Hapana mutengo wepakati wekutenga pamufananidzo';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Wedzera masheya $count',
      one: 'Wedzera sheya 1',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Hapana masheya awanikwa pamufananidzo uyu. Edza mufananidzo wesikirini wepeji remasheya kubroker yako.';

  @override
  String get week52Range => 'Mutsetse wemavhiki 52';

  @override
  String week52BelowHigh(String percent) {
    return '$percent pasi pepakakwirira pamavhiki 52';
  }

  @override
  String get week52AtHigh => 'Pakakwirira pamavhiki 52';

  @override
  String get alertKindTrailing => 'Ukadzika kubva pamusoro-soro';

  @override
  String get alertTrailingPercent => 'Kudzika kubva pamusoro-soro (%)';

  @override
  String get alertTrailingHint =>
      'Inotevera mutengo uchikwira: inokuzivisa kana mutengo wadzika zvakadai kubva padanho repamusoro-soro kubva pawakaiseta.';

  @override
  String alertDescTrailing(String percent) {
    return 'Kudzika ne-$percent kubva pamusoro-soro';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'pamusoro-soro kusvika zvino: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol yadzika ne-$percent kubva pamusoro-soro';
  }

  @override
  String get sectionInsiders => 'Kutengeserana kwevari mukati';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'kutenga $count',
      one: 'kutenga 1',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'kutengesa $count',
      one: 'kutengesa 1',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Zvasara: masheya $shares';
  }

  @override
  String get insiderBuy => 'Akatenga';

  @override
  String get insiderSell => 'Akatengesa';

  @override
  String get insiderHint =>
      'Kutenga nekutengesa pamusika wakavhurika kwakaitwa nevakuru nemadhairekita mumazuva 90 apfuura (SEC Form 4). Kushandiswa kwema option nemasheya akapihwa hazvina kuverengwa.';

  @override
  String get insiderNone =>
      'Hapana kutenga kana kutengesa kwevari mukati pamusika wakavhurika mumazuva 90 apfuura.';

  @override
  String get analystTrend => 'Maonero akashanduka sei mwedzi nemwedzi';

  @override
  String get watchListAll => 'Zvese';

  @override
  String get watchListNew => 'Rondedzero itsva';

  @override
  String get watchListName => 'Zita rerondedzero';

  @override
  String get watchListRename => 'Chinja zita rerondedzero';

  @override
  String get watchListDelete => 'Dzima rondedzero';

  @override
  String get watchListAddTo => 'Wedzera kurondedzero';

  @override
  String get watchListEmpty =>
      'Hapana masheya murondedzero iyi parizvino. Baya bhatani rerondedzero riri padyo nesheya kuti uriwedzere.';

  @override
  String get portfolioAskTitle => 'Mibvunzo nezvepotiforiyo yako';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'Bhakapu';

  @override
  String get backupSave => 'Chengetedza bhakapu';

  @override
  String get backupSaveHint =>
      'Zvaunofarira, marondedzero, potiforiyo, zviziviso nezvinyorwa zvako mufaira imwe.';

  @override
  String get backupRestore => 'Dzorera kubva kubhakapu';

  @override
  String get backupRestoreHint =>
      'Inowedzera zviri mufaira; hapana chaunacho izvozvi chinodzimwa.';

  @override
  String get backupRestored => 'Bhakapu yadzorerwa.';

  @override
  String get backupInvalid => 'Faira iyi haisi bhakapu yeWhatStock.';

  @override
  String get allocationPositions => 'Masheya';

  @override
  String get allocationSectors => 'Mabazi';

  @override
  String get allocationCurrencies => 'Mari';

  @override
  String get allocationAccounts => 'Maakaundi';

  @override
  String get compareReturn1y => 'Purofiti yegore 1';

  @override
  String get compareFromHigh => 'Kubva pakakwirira pamavhiki 52';

  @override
  String get briefAutoTitle => 'Pfupiso yezuva nezuva mangwanani ega ega';

  @override
  String get briefAutoSubtitle =>
      '“Nhasi nemasheya ako” inozvigadzira pachayo mushure ma7:00 mangwanani app ichiri kushanda; pamakombiyuta, chiziviso chinokuzivisa. Inoshandisa muganhu wako wemibvunzo wezuva nezuva, kwete ongororo.';

  @override
  String get targetsButton => 'Kugoverwa kunodiwa';

  @override
  String get targetsTitle => 'Kugoverwa kunodiwa';

  @override
  String get targetsHint =>
      'Isa chikamu chepotifoliyo chinofanira kuva nesheya imwe neimwe. Siya nzvimbo isina chinhu kana pasina chinangwa. App ichakuratidza zvekutenga kana kutengesa.';

  @override
  String targetsSum(String percent) {
    return 'Zvese pamwe: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Tenga ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Tengesa ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Pachinangwa';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol yapfuura EPS inotarisirwa';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol haina kusvika EPS inotarisirwa';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'EPS yakaziviswa $actual, inotarisirwa $estimate';
  }

  @override
  String get newsExplain => 'Izvi zvinorevei?';

  @override
  String get watchAlertAll => 'Yambiro pakuchinja kukuru kwezuva';

  @override
  String get watchAlertAllHint =>
      'Yambiro remutengo kune yega yega share iri pane rondedzero iyi: richarira kana ichinja zvakadai muzuva rimwe, kumusoro kana pasi. Idzo dzatova neimwe dzicharamba nedzadzo.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Yambiro $count dzaiswa',
      one: 'Yambiro 1 raiswa',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Tumira purofiti yawanikwa (CSV)';

  @override
  String get portfolioAnnualReturn => 'Pundutso yegore';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / gore';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Pundutso yegore inoyerwa nemari (XIRR): inofunga kuti wakatenga uye wakatengesa rini, saka mari inowedzerwa gare gare haiikanganise. Inoratidzwa kana kutenga kwako kwekutanga kwave negore rimwe zvishoma; dhividhendi hadzina kubatanidzwa.';

  @override
  String get eventsAddToCalendar => 'Wedzera kukarenda (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Yambiro yepotiforiyo';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Chiziviso kana potiforiyo yako yose yachinja zvakadai muzuva rimwe.';

  @override
  String get portfolioMoveAlertOff => 'Yakadzimwa';

  @override
  String portfolioMoveUp(String percent) {
    return 'Potiforiyo yako yakwira ne-$percent nhasi';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Potiforiyo yako yadzika ne-$percent nhasi';
  }

  @override
  String get whatIfTitle => 'Dai wakaisa mari?';

  @override
  String get whatIfAmount => 'Huwandu';

  @override
  String whatIfResult(String amount, String period) {
    return 'Dai wakaisa $amount mukati me$period, nhasi zvaizove zvakakosha';
  }

  @override
  String get whatIfNote =>
      'Zvinobva pamutengo wechikamu chete: dhividhendi, mari dzekubhadhara nemitero hazvisanganisirwi. Purofiti dzakapfuura hadzifanotaure dzeramangwana.';

  @override
  String get watchShare => 'Govana rondedzero';

  @override
  String get watchImport => 'Wedzera ma ticker';

  @override
  String get watchImportHint =>
      'Namira ma ticker akaparadzaniswa nemakoma, nzvimbo isina chinhu kana mitsara mitsva – semuenzaniso rondedzero yawakagoverwa nemumwe munhu.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Masheya $count awedzerwa',
      one: 'Sheya 1 rawedzerwa',
      zero: 'Hapana masheya matsva',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Zvakakura zvikuru kutanga';

  @override
  String get positionsSortGain => 'Pundutso yose huru kutanga';

  @override
  String get positionsSortToday => 'Zvakanaka nhasi kutanga';

  @override
  String get chartMyBuys => 'Zvawakatenga';

  @override
  String get chartMySells => 'Zvawakatengesa';

  @override
  String get shortcutsTitle => 'Nzira pfupi dzekhibhodi';

  @override
  String usMarketOpen(String time) {
    return 'Musika weAmerica wakavhurika · uchavharwa mushure me$time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Musika weAmerica wakavharwa · uchavhurwa mushure me$time';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes min';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours h $minutes min';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days mazuva $hours h';
  }

  @override
  String get dividendGoalSet => 'Isa chinangwa chedhividhendi pamwedzi';

  @override
  String get dividendGoalTitle => 'Chinangwa chedhividhendi pamwedzi';

  @override
  String get dividendGoalAmount => 'Dhividhendi pamwedzi';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Ingangoita $amount pamwedzi nepundutso yanhasi · $percent · Chinangwa: $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Ingangoita $amount pamwedzi nepundutso yanhasi · Wasvika pachinangwa: $goal';
  }

  @override
  String get portfolioAccount => 'Akaundi';

  @override
  String get portfolioAccountHint => 'sem. TBSZ 2026 (kana uchida)';

  @override
  String get portfolioAccountAdd => 'Taura akaundi';

  @override
  String get portfolioAccountsAll => 'Maakaundi ese';

  @override
  String get portfolioAccountNote =>
      'Zvakatengwa, zvakatengeswa nemadividendi muakaundi iyi chete. Mari, zvinangwa neongororo yeAI zvinoratidzwa pasi pe\"Maakaundi ese\".';

  @override
  String get portfolioNoAccount => 'Hapana akaundi';

  @override
  String portfolioFee(String currency) {
    return 'Mubhadharo ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Wedzera mubhadharo';

  @override
  String portfolioFeeRow(String amount) {
    return 'Mubhadharo: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'Pfupiso yegore';

  @override
  String get portfolioProceeds => 'Mari yezvatengeswa';

  @override
  String get portfolioCostBasis => 'Mutengo wekutenga';

  @override
  String get portfolioFeesPaid => 'Mibhadharo yakabhadharwa';

  @override
  String get portfolioAnnualSummaryNote =>
      'Mari iri mumari yepakutanga, haina kushandurwa. Mari yezvatengeswa yabviswa mubhadharo wekutengesa; mutengo wekutenga unosanganisira mubhadharo wekutenga (FIFO). Pamushumo wako wemutero, shandura nemutengo wekuchinjana mari unodiwa nevakuru vemutero.';

  @override
  String get portfolioShare => 'Govera mhedzisiro';

  @override
  String get portfolioShareHeading => 'Potiforiyo yangu';

  @override
  String get portfolioTopHoldings => 'Masheya makuru';

  @override
  String get portfolioShareNote =>
      'Mapesenti chete ndiwo anogoverwa, kwete mari.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Masheya $count',
      one: 'Sheya $count',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'Haisi zano rekuisa mari';

  @override
  String get contributionButton => 'Isa mari itsva';

  @override
  String contributionAmount(String currency) {
    return 'Mari yekuisa ($currency)';
  }

  @override
  String get contributionHint =>
      'Kutenga chete, hapana kutengesa: masheya ari pasi zvikuru pechinangwa chawo anotanga kuwana mari.';

  @override
  String contributionShares(String shares) {
    return '≈ masheya $shares';
  }

  @override
  String contributionMissing(String symbols) {
    return 'Hapana mutengo wazvino we $symbols: hazvina kuverengerwa mukugovera.';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'Kana pundutso yegore ikaramba yakadaro ($rate), uchasvika pachinangwa kunenge muna $year.';
  }

  @override
  String get portfolioMaxDrawdown => 'Kudzikira kukuru kwazvo';

  @override
  String get glossMaxDrawdown =>
      'Kudzikira kukuru kwazvo kwekukosha kwemasheya ako kubva pakakwirira kwakambovapo kusvika pakaderera kwakazotevera, pasina mhedzisiro yekutenga nekutengesa kwako (kwakayerwa nenguva). Kunoratidza kuti potiforiyo yako yakambodzikira zvakadzama sei.';

  @override
  String get portfolioGoalSet => 'Isa chinangwa';

  @override
  String get portfolioGoalTitle => 'Chinangwa chepotiforiyo';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · Chinangwa: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Wasvika pachinangwa: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Bvisa chinangwa';

  @override
  String get alertEdit => 'Gadzirisa chiziviso';

  @override
  String get positionOpenLots => 'Zvichiri zvako (zvekare kare kutanga)';

  @override
  String get lotRemoved => 'Kutenga kana kutengesa kwadzimwa';

  @override
  String get alertDeleted => 'Yambiro radzimwa';

  @override
  String get alertsClearTriggered => 'Dzima yambiro dzaitika';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Yambiro $count dzadzimwa',
      one: 'Yambiro 1 radzimwa',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Peji rekutanga';

  @override
  String get allocationCountries => 'Nyika';

  @override
  String get newsExplainNoteResearch =>
      'Tsananguro yeAI: inotsvaga chokwadi painternet, inovhura nyaya yacho uye inoongorora kuti kwazvakabva kunovimbika sei. Haisi zano rekuisa mari. Inoshandisa muganhu wako wemibvunzo wezuva nezuva, kwete ongororo.';

  @override
  String get sourceOfficial => 'Zvepamutemo';

  @override
  String get sourcePressRelease => 'Chiziviso';

  @override
  String get sourceMajorNews => 'Bepanhau guru';

  @override
  String get sourceOpinion => 'Pfungwa';

  @override
  String get earningsSummaryButton => 'Chii chaive mumushumo wechizvino?';

  @override
  String get earningsSummaryNote =>
      'Pfupiso yeAI yechiziviso chemhedzisiro yekambani nenhau dzemapepanhau dzainowana painternet. Haisi zano rekuisa mari. Inoshandisa muganhu wako wemibvunzo wezuva nezuva, kwete ongororo.';

  @override
  String get compareLastSurprise => 'EPS yekota yapfuura vs inotarisirwa';

  @override
  String get compareNextReport => 'Chirevo chinotevera';

  @override
  String get resolvingDescription => 'Kutsvaga sheya yauri kureva…';

  @override
  String get instrumentTitle => 'Nezvechishandiso ichi';

  @override
  String get instrumentHint =>
      'Hapana ruzivo rwekambani rwechiratidzo ichi – chinogona kuva ETF, homwe yemari kana gwaro redhipoziti. Bvunza AI kuti chii, chine chii mukati uye chinodhura zvakadii.';

  @override
  String get instrumentAsk => 'Ichi chii?';

  @override
  String get instrumentNote =>
      'Tsananguro yeAI kubva papeji yehomwe yemari yemubudisi nemasaiti emari ainowana painternet. Haisi zano rekuisa mari. Inoshandisa muganhu wako wemibvunzo wezuva nezuva, kwete ongororo.';

  @override
  String suggestAskAi(String query) {
    return 'Bvunza AI: “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Hapana mutengo wazvino we $symbols.';
  }

  @override
  String get eventsRecentResults => 'Mhedzisiro ichangoziviswa';

  @override
  String get saveToNotes => 'Chengetedza muzvinyorwa zvangu';

  @override
  String get savedToNotes => 'Zvachengetedzwa muzvinyorwa zvako';

  @override
  String get portfolioDividendsReceived => 'Madividendi akagamuchirwa';

  @override
  String get portfolioDividendsThisYear => 'Gore rino';

  @override
  String get portfolioDividendsAllTime => 'Zvose kusvika zvino';

  @override
  String get portfolioAddDividend => 'Wedzera dividendi';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Mari yakagamuchirwa ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Zuva rekubhadhara';

  @override
  String get portfolioDividendsEmpty =>
      'Hapana madividendi akanyorwa parizvino. Awedzere nemaoko, kana kuti pinza faira re-export rebroker wako – mitsara yaro yemadividendi inotorwawo.';

  @override
  String get portfolioSplit => 'Kupatsanura masheya';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Kupatsanura masheya: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Zvakatengwa nezvakatengeswa pamazuva ari pamberi pekupatsanura zvinogadziridzwa: huwandu hwemasheya hunowedzerwa uye mutengo wesheya imwe unogoverwa, saka mutengo wose unoramba wakafanana.';

  @override
  String get portfolioSplitRatio => 'Chiyero (matsva : ekare)';

  @override
  String get portfolioSplitRatioError =>
      'Nyora chiyero sa 10:1, kana 1:10 pakupatsanura kunodzokera shure.';

  @override
  String get portfolioSplitDate => 'Zuva rekupatsanura';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Kupatsanura masheya $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Kupatsanura masheya kwabviswa';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kupatsanura masheya $count kwawedzerwa',
      one: 'Kupatsanura masheya 1 kwawedzerwa',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Madividendi $count awedzerwa',
      one: 'Dividendi 1 rawedzerwa',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Buditsa madividendi (CSV)';

  @override
  String get portfolioDividendDeleted => 'Dividendi radzimwa';

  @override
  String get portfolioDividendsHint =>
      'Mari sezvayakasvika muakaunti yako, mumari yekubhadhara; zvose zvinoshandurwa nemutengo wanhasi. Pamutero wako, shandisa chinyorwa chebroker wako.';

  @override
  String get awayTitle => 'Pawaive usipo';

  @override
  String awaySince(String when) {
    return 'Kubva $when';
  }

  @override
  String get awayQuiet => 'Hapana chakanyanya kuchinja.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Yambiro $count dzarira',
      one: 'Yambiro 1 yarira',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Mhedzisiro dzakaburitswa: $symbols';
  }

  @override
  String get moveWhyButton => 'Sei iri kufamba nhasi?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent nhasi';
  }

  @override
  String get moveWhyNote =>
      'Tsananguro ye-AI kubva munhau dzanhasi dzakawanikwa pawebhu; chikonzero chaicho chinogona kusazivikanwa kana kusiyana. Hazvisi zano rekudyara mari. Zvinoshandisa mibvunzo yako yezuva, kwete ongororo.';

  @override
  String get sectionTechnical => 'Mufananidzo wetekiniki';

  @override
  String get labelSma50 => 'Avhareji yemazuva 50';

  @override
  String get labelSma200 => 'Avhareji yemazuva 200';

  @override
  String get labelRsi => 'RSI (mazuva 14)';

  @override
  String get labelVolatility30 => 'Kuchinja-chinja (mazuva 30)';

  @override
  String techAbove(String percent) {
    return '$percent pamusoro';
  }

  @override
  String techBelow(String percent) {
    return '$percent pasi';
  }

  @override
  String get techOverbought => 'yatengwa zvakanyanya';

  @override
  String get techOversold => 'yatengeswa zvakanyanya';

  @override
  String get techNeutral => 'pakati';

  @override
  String get techGoldenCross =>
      'Avhareji yemazuva 50 iri pamusoro peavhareji yemazuva 200 – kukwira maererano nekuverenga kwechinyakare.';

  @override
  String get techDeathCross =>
      'Avhareji yemazuva 50 iri pasi peavhareji yemazuva 200 – kudzika maererano nekuverenga kwechinyakare.';

  @override
  String get glossSma50 =>
      'Avhareji yemutengo wekuvhara wemazuva 50 ekupedzisira ekutengeserana. Mutengo uri pamusoro payo kazhinji unoonekwa sesimba renguva pfupi, uri pasi sekushaya simba.';

  @override
  String get glossSma200 =>
      'Avhareji yemutengo wekuvhara wemazuva 200 ekupedzisira ekutengeserana – mutsetse wechinyakare wenzira yenguva refu. Vazhinji vanoisa mari vanoona mutengo uri pamusoro payo sekukwira kwenguva refu.';

  @override
  String get glossRsi =>
      'Chiyero chesimba rinoenzaniswa (RSI): chinoenzanisa mibairo yenguva pfupi yapfuura nekurasikirwa kwenguva pfupi yapfuura pachiyero che0–100. Pamusoro pe70 sheya kazhinji inonzi yatengwa zvakanyanya (yakwira nekukurumidza), pasi pe30 yatengeswa zvakanyanya – asi nzira yakasimba inogona kugara ipapo kwenguva refu.';

  @override
  String get glossVolatility =>
      'Kuti mutengo unochinja zvakadini zuva nezuva, zvichiyerwa pagore: 20% zvinoreva kuti gore rakajairika rinofamba mukati meanenge ±20%. Kuchinja-chinja kwakakwirira kunoreva kufamba kukuru kumativi ose ari maviri.';

  @override
  String get techNote =>
      'Zvakaverengwa kubva pamitengo yekuvhara yezuva nezuva. Zviratidzo zvetekiniki zvinotsanangura zvakapfuura, kwete zvinouya.';

  @override
  String portfolioAbove200(int above, int count) {
    return 'Zvawakabata $above pa $count zviri pamusoro peavhareji yazvo yemazuva 200';
  }

  @override
  String get watchSignalsTitle => 'Zviratidzo';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · yatengeswa zvakanyanya';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · yatengwa zvakanyanya';
  }

  @override
  String get signalCrossedAbove => 'yakwira pamusoro peavhareji yemazuva 200';

  @override
  String get signalCrossedBelow => 'yadzika pasi peavhareji yemazuva 200';

  @override
  String get signalAlertsTitle => 'Zviziviso zvezviratidzo zvetekiniki';

  @override
  String get signalAlertsSubtitle =>
      'Kamwe pazuva, kana sheya yauri kutevera yatengeswa zvakanyanya kana yatengwa zvakanyanya (RSI), kana mutengo wayo wayambuka avhareji yemazuva 200.';

  @override
  String get signalAlertsNotification => 'Zviratidzo zvetekiniki';

  @override
  String get glossaryPageTitle => 'Tsanangudzo yemazwi';

  @override
  String get glossaryPageSubtitle =>
      'Tsanangudzo dziri nyore dzenhamba dzose dzinoratidzwa neapp, kubva pa P/E kusvika pa RSI';

  @override
  String get glossarySearchHint => 'Tsvaga mutsanangudzo yemazwi';

  @override
  String get portfolioCash => 'Mari';

  @override
  String get portfolioCashTitle => 'Mari yasara';

  @override
  String get portfolioCashHint =>
      'Mari isina kuiswa kuna broker wako, nerudzi rwemari. Inoverengwa mukukosha kwese nemukugoverwa; kwete mupundutso.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Huwandu ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Isa mari yasara';

  @override
  String get portfolioDividendsByMonth => 'Pamwedzi';

  @override
  String get dividendsLegendReceived => 'Zvakagamuchirwa';

  @override
  String get dividendsLegendExpected => 'Zvinotarisirwa';

  @override
  String get portfolioDividendsExpected => 'Zvinotarisirwa zvinotevera';

  @override
  String get portfolioDividendsExpectedNote =>
      'Zvakafungidzirwa kubva pamazuva nemari yemibhadharo yawakanyora; makambani anogona kuzvichinja kana kuzvisiya.';

  @override
  String portfolioDividendAround(String date) {
    return 'panenge $date';
  }
}
