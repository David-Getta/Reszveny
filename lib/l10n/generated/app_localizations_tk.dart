// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkmen (`tk`).
class AppLocalizationsTk extends AppLocalizations {
  AppLocalizationsTk([String locale = 'tk']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Paýnamany surata düşüriň we ol barada hemme zady öwreniň.';

  @override
  String get homeHint =>
      'Paýnama şahadatnamasy, broker programmasynyň ekrany, gazet ýa-da kompaniýanyň logotipi – paýnamany kesgitlemäge kömek edýän islendik zat.';

  @override
  String get takePhoto => 'Surata düşür';

  @override
  String get chooseFromGallery => 'Galereýadan saýla';

  @override
  String get chooseImage => 'Surat saýla';

  @override
  String get enterTickerManually => 'Tikeri el bilen giriz';

  @override
  String get tickerInputLabel => 'Tiker';

  @override
  String get tickerInputHint => 'meselem, AAPL';

  @override
  String get lookUp => 'Gözle';

  @override
  String demoModeBanner(String symbols) {
    return 'Demo režimi – bazar maglumatlarynyň açary sazlanmadyk. Nusga maglumatlar şular üçin elýeterli: $symbols.';
  }

  @override
  String get recognizing => 'Surat seljerilýär…';

  @override
  String get loadingData => 'Maglumatlar ýüklenýär…';

  @override
  String get noCandidatesTitle => 'Paýnama tanalmady';

  @override
  String get noCandidatesBody =>
      'Bu suratda paýnamany kesgitläp bilmedik. Has aýdyň surat bilen synanyşyň ýa-da tikeri el bilen giriziň.';

  @override
  String get whatWeSaw => 'Näme gördük';

  @override
  String get chooseCandidateTitle => 'Haýsy paýnamany göz öňünde tutduňyz?';

  @override
  String confidencePercent(int percent) {
    return '$percent% ynam';
  }

  @override
  String get settings => 'Sazlamalar';

  @override
  String get language => 'Dil';

  @override
  String get systemLanguage => 'Ulgam dili';

  @override
  String get about => 'Programma barada';

  @override
  String get disclaimer =>
      'Bu programma diňe maglumat berýär we maýa goýum maslahaty däldir. Maglumatlar gijikdirilen ýa-da takyk däl bolup biler.';

  @override
  String dataSource(String source) {
    return 'Maglumat çeşmesi: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Tanama: $source';
  }

  @override
  String get retry => 'Gaýtadan synanyş';

  @override
  String get cancel => 'Ýatyr';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Ýap';

  @override
  String get errorGeneric => 'Bir zat ýalňyş boldy.';

  @override
  String get errorSectionUnavailable => 'Bu bölümi ýükläp bolmady.';

  @override
  String get notAvailable => 'ýok';

  @override
  String get sectionIdentity => 'Kesgitleme';

  @override
  String get sectionPrice => 'Baha';

  @override
  String get sectionValuation => 'Bahalandyrma';

  @override
  String get sectionFinancials => 'Maliýe görkezijileri';

  @override
  String get sectionDividend => 'Diwidend';

  @override
  String get sectionProfile => 'Kompaniýanyň profili';

  @override
  String get sectionAnalysts => 'Analitikleriň reýtingleri';

  @override
  String get sectionNews => 'Habarlar';

  @override
  String get sectionRecognition => 'Tanama jikme-jiklikleri';

  @override
  String get labelSymbol => 'Tiker';

  @override
  String get labelExchange => 'Birža';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Walýuta';

  @override
  String get labelCountry => 'Ýurt';

  @override
  String get labelIndustry => 'Pudak';

  @override
  String get labelSector => 'Sektor';

  @override
  String get labelWebsite => 'Web sahypa';

  @override
  String get labelIpoDate => 'IPO senesi';

  @override
  String get labelMarketCap => 'Bazar kapitalizasiýasy';

  @override
  String get labelSharesOutstanding => 'Dolanyşykdaky paýnamalar';

  @override
  String get labelEmployees => 'Işgärler';

  @override
  String get labelCeo => 'Baş direktor';

  @override
  String get labelHeadquarters => 'Baş edara';

  @override
  String get labelDescription => 'Beýan';

  @override
  String get labelLastPrice => 'Soňky baha';

  @override
  String get labelChange => 'Üýtgeýiş';

  @override
  String get labelOpen => 'Açylyş';

  @override
  String get labelDayHigh => 'Günüň iň ýokarysy';

  @override
  String get labelDayLow => 'Günüň iň pesi';

  @override
  String get labelPreviousClose => 'Öňki ýapylyş';

  @override
  String get labelWeek52High => '52 hepdäniň iň ýokarysy';

  @override
  String get labelWeek52Low => '52 hepdäniň iň pesi';

  @override
  String get labelAverageVolume10d => 'Orta göwrüm (10 gün)';

  @override
  String updatedAt(String time) {
    return 'Täzelendi: $time';
  }

  @override
  String get labelPeTrailing => 'P/E (geçen döwür)';

  @override
  String get labelPeForward => 'P/E (çaklama)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / erkin pul akymy';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Girdeji (TTM)';

  @override
  String get labelNetIncomeTtm => 'Arassa peýda (TTM)';

  @override
  String get labelGrossMargin => 'Umumy marža';

  @override
  String get labelOperatingMargin => 'Operasion marža';

  @override
  String get labelNetMargin => 'Arassa marža';

  @override
  String get labelRoe => 'Kapitalyň girdejililigi';

  @override
  String get labelRoa => 'Aktiwleriň girdejililigi';

  @override
  String get labelDebtToEquity => 'Karz / kapital';

  @override
  String get labelCurrentRatio => 'Häzirki likwidlik koeffisiýenti';

  @override
  String get labelRevenueGrowth => 'Girdejiniň ösüşi (YoY)';

  @override
  String get labelEpsGrowth => 'EPS ösüşi (YoY)';

  @override
  String get labelDividendYield => 'Diwidend girdejililigi';

  @override
  String get labelDividendPerShare => 'Bir paýnama düşýän diwidend';

  @override
  String get labelPayoutRatio => 'Diwidend töleg paýy';

  @override
  String get labelYieldOnCost => 'Satyn alyş bahasyna girdejililik';

  @override
  String get labelDividendGrowth5y => 'Diwidendiň ösüşi (5 ýyl)';

  @override
  String get dividendNone => 'Soňky 12 aýda diwidend tölenmedi.';

  @override
  String get dividendOnYourShares => 'Siziň paýnamalaryňyza, ýylda';

  @override
  String get labelConsensus => 'Konsensus';

  @override
  String get ratingStrongBuy => 'Güýçli satyn al';

  @override
  String get ratingBuy => 'Satyn al';

  @override
  String get ratingHold => 'Sakla';

  @override
  String get ratingSell => 'Sat';

  @override
  String get ratingStrongSell => 'Güýçli sat';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analitik',
      one: '1 analitik',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Döwür: $period';
  }

  @override
  String get noNews => 'Soňky habarlar ýok.';

  @override
  String get openArticle => 'Makalany aç';

  @override
  String get openLinkFailed => 'Baglanyşygy açyp bolmady.';

  @override
  String get recognitionSummary => 'Gysgaça mazmun';

  @override
  String get recognitionEvidence => 'Näme üçin beýle pikir edýäris';

  @override
  String get recognitionRawText => 'Suratdan okalan tekst';

  @override
  String get errMissingAnthropicKey =>
      'Surat tanama sazlanmadyk (ANTHROPIC_API_KEY ýok). Tikeri el bilen giriziň.';

  @override
  String get errRecognitionUnreachable =>
      'Tanama hyzmatyna birigip bolmady. Internet baglanyşygyňyzy barlaň.';

  @override
  String errRecognitionHttp(String status) {
    return 'Tanama hyzmaty ýalňyşlyk gaýtardy (HTTP $status).';
  }

  @override
  String get errRecognitionRefused => 'Tanama hyzmaty bu suraty işläp bilmedi.';

  @override
  String get errRecognitionTruncated =>
      'Tanama hyzmatynyň jogaby kesildi. Gaýtadan synanyşyň.';

  @override
  String get errRecognitionBadResponse =>
      'Tanama hyzmatyndan garaşylmadyk jogap geldi.';

  @override
  String get errRecognitionEmpty => 'Tanama hyzmaty boş jogap gaýtardy.';

  @override
  String get errMissingFinnhubKey =>
      'Bazar maglumatlary sazlanmadyk (FINNHUB_API_KEY ýok).';

  @override
  String get errMarketUnreachable =>
      'Bazar maglumatlary hyzmatyna birigip bolmady. Internet baglanyşygyňyzy barlaň.';

  @override
  String get errMarketRateLimited =>
      'Bazar maglumatlary hyzmatyna gaty köp haýyş iberildi. Bir minut garaşyň.';

  @override
  String errMarketHttp(String status) {
    return 'Bazar maglumatlary hyzmaty ýalňyşlyk gaýtardy (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Bazar maglumatlary hyzmatyndan garaşylmadyk jogap geldi.';

  @override
  String errNoQuote(String symbol) {
    return '$symbol üçin baha maglumatlary tapylmady.';
  }

  @override
  String errNoProfile(String symbol) {
    return '$symbol üçin kompaniýanyň profili tapylmady.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Demo režimi diňe şulary goldaýar: $symbols. Hakyky wagtdaky maglumatlar üçin FINNHUB_API_KEY goşuň.';
  }

  @override
  String errUnknown(String detail) {
    return 'Bir zat ýalňyş boldy: $detail';
  }

  @override
  String get newSearch => 'Täze gözleg';

  @override
  String get recentSearches => 'Soňkular';

  @override
  String get noRecentSearches => 'Entek soňky gözleg ýok.';

  @override
  String get clearRecent => 'Soňkulary arassala';

  @override
  String get greeting => 'Haýsy paýnama seredeli?';

  @override
  String get searchHint => 'Tiker ýa-da kompaniýanyň ady';

  @override
  String get attachImage => 'Surat goş';

  @override
  String get searchResultsTitle => 'Gözleg netijeleri';

  @override
  String errNoResults(String query) {
    return '«$query» boýunça paýnama tapylmady.';
  }

  @override
  String get quickBarHint => 'Tiker ýa-da kompaniýanyň adyny ýazyň…';

  @override
  String get openFullWindow => 'Penjiräni aç';

  @override
  String hotkeyHint(String shortcut) {
    return 'WhatStock-y çagyrmak üçin islendik ýerde $shortcut düwmelerine basyň.';
  }

  @override
  String get trayOpen => 'WhatStock-y aç';

  @override
  String get trayQuickSearch => 'Çalt gözleg';

  @override
  String get trayQuit => 'Çyk';

  @override
  String get appearance => 'Daşky görnüş';

  @override
  String get themeSystem => 'Ulgam';

  @override
  String get themeDark => 'Garaňky';

  @override
  String get themeLight => 'Ýagty';

  @override
  String get back => 'Yza';

  @override
  String get aiSectionTitle => 'AI seljermesi';

  @override
  String get aiIntro =>
      'AI tarapyndan ýazylan jikme-jik syn: soňky habarlaryň gysgaça mazmuny, iş, güýçli taraplar, töwekgelçilikler we gizlin faktorlar, bahalandyrma, psihologik, sosiologik, tehniki we makro nukdaýnazardan ssenariýaly baha çaklamasy hem-de nämelere üns bermelidigi.';

  @override
  String get aiGenerate => 'Seljerme döret';

  @override
  String get aiRegenerate => 'Täzeden döret';

  @override
  String get aiGenerating =>
      'Seljerme taýýarlanýar… bu bir-iki minut alyp biler.';

  @override
  String get aiSources => 'Çeşmeler';

  @override
  String aiGeneratedAt(String time) {
    return 'Döredildi: $time';
  }

  @override
  String get aiDisclaimer =>
      'Açyk maglumatlara we soňky habarlara esaslanýan, AI tarapyndan döredilen seljerme. Onda ýalňyşlyklar bolup ýa-da ol könelip biler we ol maýa goýum maslahaty däldir.';

  @override
  String get errAiNotConfigured =>
      'AI seljermesi sazlanmadyk (ANTHROPIC_API_KEY ýok).';

  @override
  String get errAiUnreachable =>
      'AI hyzmatyna birigip bolmady. Internet baglanyşygyňyzy barlaň.';

  @override
  String errAiHttp(String status) {
    return 'AI hyzmaty ýalňyşlyk gaýtardy (HTTP $status).';
  }

  @override
  String get errAiRefused => 'AI hyzmaty bu paýnamany seljermekden ýüz öwürdi.';

  @override
  String get errAiBadResponse => 'AI hyzmatyndan garaşylmadyk jogap geldi.';

  @override
  String get sectionChart => 'Baha grafigi';

  @override
  String get rangeOneWeek => '1H';

  @override
  String get rangeOneMonth => '1A';

  @override
  String get rangeThreeMonths => '3A';

  @override
  String get rangeOneYear => '1Ý';

  @override
  String get rangeFiveYears => '5Ý';

  @override
  String get chartUnavailable =>
      'Häzirki maglumat çeşmesinde bahalaryň taryhy elýeterli däl.';

  @override
  String get sectionStatements => 'Maliýe hasabatlary (ýyllyk)';

  @override
  String get labelFiscalYear => 'Maliýe ýyly';

  @override
  String get labelRevenue => 'Girdeji';

  @override
  String get labelNetIncome => 'Arassa peýda';

  @override
  String get labelTotalAssets => 'Jemi aktiwler';

  @override
  String get labelTotalLiabilities => 'Jemi borçnamalar';

  @override
  String get labelEquity => 'Hususy kapital';

  @override
  String get labelOperatingCashFlow => 'Operasion pul akymy';

  @override
  String get statementsUnavailable =>
      'Bu paýnama üçin çap edilen maliýe hasabatlary elýeterli däl.';

  @override
  String get launchAtLogin => 'Ulgama girilende işe göýber';

  @override
  String get hotkeyLabel => 'Global düwme utgaşmasy';

  @override
  String get hotkeyRecordHint =>
      'Şu ýere basyň, soňra täze düwme utgaşmasyna basyň';

  @override
  String get hotkeyReset => 'Deslapky ýagdaýa gaýtar';

  @override
  String get pasteImage => 'Buferden surat goý';

  @override
  String get errClipboardNoImage => 'Buferde surat ýok.';

  @override
  String get favorites => 'Saýlananlar';

  @override
  String get addToFavorites => 'Saýlananlara goş';

  @override
  String get removeFromFavorites => 'Saýlananlardan aýyr';

  @override
  String get noFavorites =>
      'Entek saýlananlar ýok. Goşmak üçin paýnamadaky ýyldyzjyga basyň.';

  @override
  String get displayCurrency => 'Görkeziş walýutasy';

  @override
  String get displayCurrencyNone => 'Diňe paýnamanyň öz walýutasy';

  @override
  String labelConverted(String currency) {
    return '≈ $currency hasabynda';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Hümmet: 1 $from = $rate $to (ÝMB, $date)';
  }

  @override
  String get updates => 'Täzelenmeler';

  @override
  String currentVersion(String version) {
    return 'Wersiýa $version';
  }

  @override
  String get autoUpdate => 'Täzelenmeleri awtomatik gurna';

  @override
  String get checkForUpdates => 'Täzelenmeleri barla';

  @override
  String get updateChecking => 'Täzelenmeler barlanýar…';

  @override
  String get updateUpToDate => 'Sizde iň soňky wersiýa bar.';

  @override
  String updateAvailable(String version) {
    return '$version wersiýasy elýeterli.';
  }

  @override
  String get updateDownloading => 'Täzelenme fonda ýüklenýär…';

  @override
  String get updateDownloaded =>
      'Täzelenme taýýar. Gurnamak üçin programmany täzeden işlediň.';

  @override
  String get updateNow => 'Täzele';

  @override
  String get restartNow => 'Täzeden işlet';

  @override
  String get updatesViaStore =>
      'Täzelenmeler programma dükany arkaly awtomatik gelýär.';

  @override
  String get updateCheckFailed => 'Täzelenmeleri barlap bolmady.';

  @override
  String get subscription => 'Abuna';

  @override
  String get planTrial => 'Synag';

  @override
  String get planNormal => 'Adaty';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Işjeň tarif ýok';

  @override
  String planAnalysesPerMonth(int count) {
    return 'Aýda $count seljerme';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$count seljermeli $days günlük mugt synag';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Synag möhletiniň gutarmagyna $days gün galdy',
      one: 'Synag möhletiniň gutarmagyna 1 gün galdy',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Mugt synag möhletiňiz gutardy. Seljermäni dowam etmek üçin tarif saýlaň.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Bu döwürde $total seljermeden $remaining sanysy galdy';
  }

  @override
  String extraCredits(int count) {
    return '$count goşmaça seljerme';
  }

  @override
  String renewsOn(String date) {
    return '$date senesinde täzelenýär';
  }

  @override
  String get choosePlan => 'Tarif saýlaň';

  @override
  String get currentPlan => 'Häzirki tarif';

  @override
  String get subscribe => 'Abuna ýazyl';

  @override
  String get perMonth => '/ aý';

  @override
  String get extraPacksTitle => 'Has köp gerekmi? Goşmaça seljerme satyn alyň';

  @override
  String get extraPacksHint =>
      'Goşmaça seljermeleriň möhleti hiç haçan gutarmaýar we olar aýlyk limitiňizden soň ulanylýar.';

  @override
  String get buy => 'Satyn al';

  @override
  String get restorePurchases => 'Satyn alyşlary dikelt';

  @override
  String get manageSubscription => 'Abunany dolandyr';

  @override
  String get purchaseSuccess => 'Sag boluň! Satyn alşyňyz işjeň.';

  @override
  String get purchasePending => 'Satyn alyş garaşylýar…';

  @override
  String get purchaseFailed => 'Satyn alşy tamamlap bolmady.';

  @override
  String get purchaseCanceled => 'Satyn alyş ýatyryldy.';

  @override
  String get billingUnavailable =>
      'Bu platformada satyn alyşlar entek elýeterli däl. Telefonyňyzda ýa-da Mac-da abuna ýazylyň – tarifiňiz ähli enjamlarda işlär.';

  @override
  String get errQuotaExceeded =>
      'Bu döwür üçin seljermäňiz galmady. Tarifiňizi ýokarlandyryň ýa-da goşmaça seljerme satyn alyň.';

  @override
  String get errTrialExpired =>
      'Mugt synag möhletiňiz gutardy. Dowam etmek üçin tarif saýlaň.';

  @override
  String get errNoPlan => 'AI seljermesi üçin işjeň tarif gerek.';

  @override
  String get viewPlans => 'Tariflere seret';

  @override
  String get usageTitle => 'Ulanyş';

  @override
  String get demoPurchaseNote =>
      'Demo töleg: bu platformada satyn alyşlar simulýasiýa edilýär.';

  @override
  String get mostPopular => 'Iň meşhur';

  @override
  String get bestValue => 'Iň amatly';

  @override
  String get planFeaturesCommon =>
      'Suratdan tanama, hakyky wagtdaky maglumatlar, grafikler, saýlananlar we ähli 120 dil her tarife girýär. Limit AI seljermelerine degişlidir.';

  @override
  String get searchLanguages => 'Dilleri gözle…';

  @override
  String get noLanguageMatch => 'Laýyk dil tapylmady.';

  @override
  String get aiSettings => 'AI seljermesi';

  @override
  String get aiLength => 'Göwrüm';

  @override
  String get aiDepthBrief => 'Gysga';

  @override
  String get aiDepthStandard => 'Standart';

  @override
  String get aiDepthDeep => 'Jikme-jik';

  @override
  String get aiDepthBriefDesc => 'Iň esasy zatlar, çalt.';

  @override
  String get aiDepthStandardDesc => 'Ähli bölümli doly hasabat.';

  @override
  String get aiDepthDeepDesc =>
      'Has köp web gözleg, bäsdeşler bilen deňeşdirme we has çuňňur jikme-jiklik.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Takmynan $min–$max söz';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count seljerme sarp edýär',
      one: '1 seljerme sarp edýär',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Okyjynyň derejesi';

  @override
  String get aiReaderBeginner => 'Täze başlaýan';

  @override
  String get aiReaderExperienced => 'Tejribeli';

  @override
  String get aiReaderBeginnerDesc =>
      'Ýönekeý dil; her bir ýörite adalga düşündirilýär.';

  @override
  String get aiReaderExperiencedDesc =>
      'Standart maliýe adalgalary bilen has dykyz tekst.';

  @override
  String get aiCounterArgument => 'Iň güýçli garşy delil';

  @override
  String get aiCounterArgumentDesc =>
      'Gysgaça mazmun hemişe öz netijesine garşy iň güýçli delil bilen tamamlanýar.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tarifiňiz boýunça her seljermä $count web gözlege çenli',
      one: 'Tarifiňiz boýunça her seljermä 1 web gözlege çenli',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Tarifler boýunça standart göwrüm: Adaty $normal, Pro $pro, Max $max, Ultra $ultra. Gysga göwrüm 2 sany az, Jikme-jik göwrüm 2 sany köp ulanýar.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count web gözlege çenli',
      one: '1 web gözlege çenli',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Her seljermä $count web gözleg',
      one: 'Her seljermä 1 web gözleg',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Bu göwrüm üçin $needed seljerme gerek, ýöne diňe $left galdy. Sazlamalarda has gysga göwrümi saýlaň ýa-da goşmaça seljerme alyň.';
  }

  @override
  String get outlookMarketMood => 'Bazaryň keýpi';

  @override
  String get moodVeryPessimistic => 'Örän pessimistik';

  @override
  String get moodPessimistic => 'Pessimistik';

  @override
  String get moodNeutral => 'Bitarap';

  @override
  String get moodOptimistic => 'Optimistik';

  @override
  String get moodVeryOptimistic => 'Örän optimistik';

  @override
  String get scenarioBull => 'Optimistik ssenariý';

  @override
  String get scenarioBase => 'Esasy ssenariý';

  @override
  String get scenarioBear => 'Pessimistik ssenariý';

  @override
  String outlookCurrentPrice(String price) {
    return 'Häzirki baha: $price';
  }

  @override
  String get outlookKeyLevels => 'Esasy derejeler';

  @override
  String get keyLevelSupport => 'Goldaw';

  @override
  String get keyLevelResistance => 'Garşylyk';

  @override
  String get keyLevelAnchor => 'Labyr derejesi';

  @override
  String get upcomingEvents => 'Ýakynlaşýan wakalar';

  @override
  String get outlookChartNote =>
      'Takmyny aralyklar; ähtimallyklar çaklama däl, takmyny bahalardyr.';

  @override
  String get accountTitle => 'Hasap';

  @override
  String get signIn => 'Gir';

  @override
  String get signOut => 'Çyk';

  @override
  String get notSignedIn => 'Hasaba girilmedik';

  @override
  String get accountBenefit =>
      'Abunaňyzyň ähli enjamlaryňyzda işlemegi üçin hasabyňyza giriň.';

  @override
  String get accountSyncedNote =>
      'Abunaňyz we galan seljermeleriňiz ähli enjamlarda birmeňzeş.';

  @override
  String get signInTitle => 'WhatStock-a giriň';

  @override
  String get emailLabel => 'E-poçta salgysy';

  @override
  String get continueWithEmail => 'E-poçta bilen dowam et';

  @override
  String codeSentTo(String email) {
    return '$email salgysyna 6 sanly kod iberdik. Ol 10 minutlap hereket edýär.';
  }

  @override
  String get codeLabel => 'Giriş kody';

  @override
  String get resendCode => 'Täze kod iber';

  @override
  String get useDifferentEmail => 'Başga e-poçta ulan';

  @override
  String get errInvalidCode => 'Kod nädogry ýa-da onuň möhleti geçen.';

  @override
  String get errInvalidEmail => 'Dogry e-poçta salgysyny giriziň.';

  @override
  String get errSignInFailed =>
      'Girip bolmady. Baglanyşygyňyzy barlap, gaýtadan synanyşyň.';

  @override
  String get checkoutWaiting =>
      'Tölegi brauzeriňizde tamamlaň. Töleg tamamlananda programma awtomatik täzelener.';

  @override
  String get paymentViaStripe =>
      'Stripe arkaly brauzeriňizde howpsuz töleg. Islän wagtyňyz ýatyryp bilersiňiz.';

  @override
  String get paymentViaStore =>
      'Töleg App Store ýa-da Google Play hasabyňyz arkaly alynýar. Islän wagtyňyz dükanyň sazlamalarynda ýatyryp bilersiňiz.';

  @override
  String get keySpace => 'Boşluk';

  @override
  String get doubleOptionTitle => 'Option düwmesine iki gezek basmak';

  @override
  String get doubleOptionSubtitle =>
      'Option düwmesine çalt iki gezek basmak hem WhatStock-y çagyrýar.';

  @override
  String get doubleOptionPermission =>
      'Munuň beýleki programmalarda hem işlemegi üçin Ulgam sazlamalary → Gizlinlik we howpsuzlyk → Girizişe gözegçilik bölüminde WhatStock-a rugsat beriň, soňra programmany täzeden açyň.';

  @override
  String get openSystemSettings => 'Ulgam sazlamalaryny aç';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'WhatStock-y çagyrmak üçin islendik ýerde $shortcut düwmelerine ýa-da Option düwmesine iki gezek basyň.';
  }

  @override
  String get scenarioMostLikely => 'Iň ähtimal';

  @override
  String get longTermToday => 'Şu gün';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years ýyl',
      one: '1 ýyl',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return 'ýylda $range';
  }

  @override
  String longTermLikely(String price) {
    return 'iň ähtimal $price';
  }

  @override
  String get confidenceLow => 'Pes ynam';

  @override
  String get confidenceMedium => 'Orta ynam';

  @override
  String get confidenceHigh => 'Ýokary ynam';

  @override
  String get longTermNote =>
      'Uzak möhletli aralyklar görkezilen çak edilýän şertlere esaslanýar we wagtyň geçmegi bilen giňelýär. Bahalara diwidendler girmeýär. Bular çaklama däl, takmyny bahalardyr.';

  @override
  String get portfolio => 'Portfel';

  @override
  String get portfolioEmpty =>
      'Entek bu ýerde hiç zat ýok. Eýeçiligiňizdäki paýnamalary yzarlamak üçin paýnamany açyň we «Portfele goş» düwmesine basyň.';

  @override
  String get portfolioLocalNote =>
      'Şu enjamda we, hasaba giren bolsaňyz, hasabyňyzda saklanýar. Jemler ÝMB-niň salgylanma hümmetleri boýunça hasaplanýar; bahalar gijikdirilen bolup biler.';

  @override
  String get addToPortfolio => 'Portfele goş';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol goş';
  }

  @override
  String get portfolioQuantity => 'Paýnamalaryň sany';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Bir paýnamanyň bahasy ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Satyn alnan senesi';

  @override
  String get portfolioAdd => 'Goş';

  @override
  String get portfolioInvalidNumber => 'Noldan uly san giriziň.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol portfeliňize goşuldy.';
  }

  @override
  String get portfolioTotalValue => 'Umumy gymmaty';

  @override
  String get portfolioToday => 'Şu gün';

  @override
  String get portfolioGainLoss => 'Peýda/zyýan';

  @override
  String homeDividendsThisYear(String amount) {
    return 'Şu ýylky diwidendler: $amount';
  }

  @override
  String get portfolioInvested => 'Goýlan maýa';

  @override
  String get portfolioAllocation => 'Paýlanyş';

  @override
  String get portfolioPositions => 'Pozisiýalar';

  @override
  String portfolioAvgCost(String price) {
    return 'orta baha $price';
  }

  @override
  String get portfolioYourPosition => 'Siziň pozisiýaňyz';

  @override
  String get portfolioPurchases => 'Satyn alyşlar';

  @override
  String get portfolioRemove => 'Aýyr';

  @override
  String get portfolioExcluded =>
      'Bahasy ýa-da walýuta hümmeti bolmadyk pozisiýalar jemlere goşulmaýar.';

  @override
  String get priceAlerts => 'Baha duýduryşlary';

  @override
  String get setPriceAlert => 'Baha duýduryşyny goý';

  @override
  String alertDialogTitle(String symbol) {
    return 'Baha duýduryşy · $symbol';
  }

  @override
  String get alertKindAbove => 'Ýokary galsa';

  @override
  String get alertKindBelow => 'Aşak düşse';

  @override
  String get alertKindMove => 'Bir günde güýçli üýtgese';

  @override
  String alertTargetPrice(String currency) {
    return 'Baha ($currency)';
  }

  @override
  String get alertMovePercent => 'Gündelik üýtgeýiş (%)';

  @override
  String get alertAlreadyMet => 'Baha eýýäm bu derejeden geçdi.';

  @override
  String get alertSave => 'Duýduryş goý';

  @override
  String alertCreated(String symbol) {
    return '$symbol üçin duýduryş goýuldy.';
  }

  @override
  String get alertsEmpty =>
      'Entek baha duýduryşy ýok. Duýduryş goýmak üçin paýnamany açyň we jaň nyşanyna basyň.';

  @override
  String get alertsNote =>
      'WhatStock işläp durka duýduryşlar her 5 minutda barlanýar. Kompýuterde programma menýu setirinde ýa-da ulgam meýdançasynda işlemegini dowam edýär; telefonda bolsa duýduryşlar häzirlikçe diňe programma açyk wagty gelýär.';

  @override
  String alertDescAbove(String price) {
    return '$price derejesinden ýokary';
  }

  @override
  String alertDescBelow(String price) {
    return '$price derejesinden pes';
  }

  @override
  String alertDescMove(String percent) {
    return 'Gündelik üýtgeýiş ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return '$date senesinde $price bahasynda işledi';
  }

  @override
  String get alertRearm => 'Täzeden işjeňleşdir';

  @override
  String get alertDelete => 'Poz';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol $price derejesinden ýokary galdy';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol $price derejesinden aşak düşdi';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol şu gün $percent üýtgedi';
  }

  @override
  String alertHitBody(String price) {
    return 'Häzirki baha: $price';
  }

  @override
  String get alertOpen => 'Aç';

  @override
  String get keepInTrayTitle => 'Penjire ýapylanda hem işlesin';

  @override
  String get keepInTraySubtitle =>
      'WhatStock menýu setirinde ýa-da ulgam meýdançasynda galýar, şonuň üçin düwme utgaşmasy we baha duýduryşlary işlemegini dowam edýär.';

  @override
  String get termsOfUse => 'Ulanyş şertleri';

  @override
  String get privacyPolicy => 'Gizlinlik syýasaty';

  @override
  String get subscriptionLegal =>
      'Abuna siz ony ýatyrýançaňyz her aý awtomatik täzelenýär. Abuna ýazylmak bilen Ulanyş şertlerini we Gizlinlik syýasatyny kabul edýärsiňiz.';

  @override
  String get deleteAccount => 'Hasaby poz';

  @override
  String get deleteAccountTitle => 'Hasabyňyz pozulsynmy?';

  @override
  String get deleteAccountBody =>
      'Hasabyňyz we serwerimizde saklanýan ähli zat (e-poçta, limit, ulanyş) hemişelik pozular, ulanylmadyk seljermeler bolsa ýiter. Brauzerde tölenen abuna derrew ýatyrylýar; App Store ýa-da Google Play abunasyny dükanyň sazlamalarynda ýatyrmaly.';

  @override
  String get deleteLocalData =>
      'Şu enjamdaky maglumatlary hem poz (portfel, duýduryşlar, saýlananlar, taryh, ýatda saklanan seljermeler)';

  @override
  String get deleteAccountConfirm => 'Hemişelik poz';

  @override
  String get accountDeleted => 'Hasabyňyz pozuldy.';

  @override
  String get errDeleteAccount =>
      'Hasaby pozup bolmady. Baglanyşygyňyzy barlap, gaýtadan synanyşyň.';

  @override
  String get aiTrialBriefNote =>
      'Synag seljermeleri gysga bolýar we has çalt AI modeli bilen taýýarlanýar. Tarif bilen iň ukyply AI-ymyzy, has köp web gözlegini hem-de Standart we Jikme-jik uzynlyklary alýarsyňyz.';

  @override
  String get billingMonthly => 'Aýlyk';

  @override
  String get billingYearly => 'Ýyllyk';

  @override
  String get yearlyDiscount => '2 aý mugt';

  @override
  String get perYear => '/ ýyl';

  @override
  String pricePerMonthApprox(String price) {
    return 'Aýda ≈ $price';
  }

  @override
  String get subscriptionLegalYearly =>
      'Ýyllyk abuna siz ony ýatyrýançaňyz her ýyl awtomatik täzelenýär. Abuna ýazylmak bilen Ulanyş şertlerini we Gizlinlik syýasatyny kabul edýärsiňiz.';

  @override
  String get myAnalyses => 'Meniň seljermelerim';

  @override
  String get navAlerts => 'Duýduryşlar';

  @override
  String get inviteTitle => 'Ýapyk deslapky wersiýa';

  @override
  String get inviteBody =>
      'WhatStock häzirlikçe diňe çakylyk boýunça elýeterlidir. Alan çakylyk koduňyzy giriziň.';

  @override
  String get inviteCodeLabel => 'Çakylyk kody';

  @override
  String get inviteContinue => 'Dowam et';

  @override
  String get inviteInvalid => 'Bu çakylyk kody nädogry.';

  @override
  String get inviteExpired =>
      'Bu çakylygyň möhleti geçdi. Sizi çagyran adamdan täze kod soraň.';

  @override
  String get inviteDeviceLimit =>
      'Bu çakylyk kody eýýäm rugsat berlen iň köp enjamda ulanylýar.';

  @override
  String get previewConfidential => 'Gizlin deslapky wersiýa';

  @override
  String get errPreviewDailyLimit =>
      'Bu deslapky wersiýanyň şu günki seljerme çägi doldy. Ertir täzeden synanyşyň.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sagat öň',
      one: '1 sagat öň',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gün öň',
      one: '1 gün öň',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Bu seljerme täzelensinmi?';

  @override
  String staleBody(String age) {
    return 'Ol $age taýýarlandy. Şondan bäri bahalar, habarlar we netijeler üýtgän bolmagy mümkin.';
  }

  @override
  String get staleKeep => 'Öňküsini görkez';

  @override
  String get staleRefresh => 'Täzesini döret';

  @override
  String seeAll(int count) {
    return 'Ählisini gör ($count)';
  }

  @override
  String get searchAnalyses => 'Seljermeleriňden gözle';

  @override
  String get deleteAnalysis => 'Poz';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol seljermesi pozuldy';
  }

  @override
  String get keyLevelAlertHint =>
      'Baha derejä ýetende duýduryş almak üçin derejä basyň.';

  @override
  String get shareAnalysisTitle => 'Seljermäni paýlaş';

  @override
  String get shareAsImage => 'Surat hökmünde paýlaş';

  @override
  String get shareAsText => 'Tekst hökmünde paýlaş';

  @override
  String get shareCardFooter => 'WhatStock bilen döredildi';

  @override
  String get shareCardDisclaimer => 'AI seljermesi · maýa goýum maslahaty däl';

  @override
  String get referralTitle => 'Dostlaryňy çagyr';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count goşmaça seljerme',
      one: '1 goşmaça seljerme',
    );
    return 'Koduňy paýlaş. Dostuň derrew $_temp0 alýar, sen bolsa onuň ilkinji seljermesinden soň şonça alýarsyň.';
  }

  @override
  String get referralYourCode => 'Seniň koduň';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Çagyrylanlar: $invited · Sylaglananlar: $rewarded';
  }

  @override
  String get referralHaveCode => 'Dostuňdan koduň barmy?';

  @override
  String get referralRedeem => 'Ulan';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count goşmaça seljerme goşuldy. Hoş geldiň!',
      one: '1 goşmaça seljerme goşuldy. Hoş geldiň!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown => 'Beýle kod ýok. Barla we täzeden synanyş.';

  @override
  String get referralErrOwn => 'Öz koduňy ulanyp bilmeýärsiň.';

  @override
  String get referralErrAlready => 'Sen eýýäm dostuňyň koduny ulandyň.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count goşmaça seljerme',
      one: '1 goşmaça seljerme',
    );
    return 'Men WhatStock bilen paýnamalary seljerýärin: paýnamanyň suratyny al, AI ony düşündirer. Meniň $code kodum bilen $_temp0 alarsyň.';
  }

  @override
  String get referralCopied => 'Kod göçürildi';

  @override
  String get onboardTitle1 => 'Paýnamany surata düşüriň';

  @override
  String get onboardBody1 =>
      'Broker programmasynyň ekrany, gazet ýa-da kompaniýanyň logotipi ýeterlik: WhatStock paýnamany tanaýar we onuň bahasyny, grafigini hem-de esasy görkezijilerini görkezýär.';

  @override
  String get onboardTitle2 => 'Birnäçe minutda düşüniň';

  @override
  String get onboardBody2 =>
      'AI seljermesi paýnamany nämäniň hereketlendirýändigini, töwekgelçilikleri, bahalandyrmany we bahanyň nirä gidip biljekdigi barada üç ssenariýany düşündirýär – çeşmeler bilen we siziň diliňizde.';

  @override
  String get onboardTitle3 => 'Hemişe habarly boluň';

  @override
  String get onboardBody3 =>
      'Saýlananlar, portfeliňiz we baha duýduryşlary sizi wakalardan habarly saklaýar. Seljermeleriňiz enjamyňyzda galýar, olary islendik wagt täzeden açyp bilersiňiz.';

  @override
  String get onboardNext => 'Indiki';

  @override
  String get onboardStart => 'Başlaň';

  @override
  String get onboardSkip => 'Geçiň';

  @override
  String changesTitle(String date) {
    return 'Öňki seljermeden bäri ($date)';
  }

  @override
  String get changesPrice => 'Baha';

  @override
  String get changesNoMajor => 'Çaklamalar düýpli üýtgemedi.';

  @override
  String get changesPreviousSummary => 'Öňki gysgaça mazmun';

  @override
  String get telemetryTitle => 'WhatStock-y gowulandyrmaga kömek ediň';

  @override
  String get telemetryBody =>
      'Anonim ulanyş statistikasyny we näsazlyk hasabatlaryny paýlaşyň: haýsy funksiýalaryň ulanylýandygy we näme ýalňyş bolandygy. Paýnamalaryňyz, seljermeleriňiz ýa-da şahsy maglumatlaryňyz hiç haçan paýlaşylmaýar. Muny islän wagtyňyz Sazlamalarda üýtgedip bilersiňiz.';

  @override
  String get telemetryAllow => 'Rugsat ber';

  @override
  String get telemetryDecline => 'Ýok, sag boluň';

  @override
  String get telemetrySetting => 'Anonim statistika we näsazlyk hasabatlary';

  @override
  String get telemetrySettingHint =>
      'Funksiýalaryň näçe gezek ulanylýandygy we ýalňyşlyk hasabatlary, şahsy maglumatlarsyz we gözlegleriňiziň hem-de seljermeleriňiziň mazmunysyz.';

  @override
  String get askButton => 'Bu seljerme barada soraň';

  @override
  String askTitle(String symbol) {
    return '$symbol barada soraglar';
  }

  @override
  String get askIntro =>
      'Seljerme barada islendik zady soraň: bir töwekgelçiligiň nämäni aňladýandygyny, çaklamany nämäniň üýtgedip biljekdigini, bir sanyň nähili hasaplanandygyny. Jogaplar bu seljermä esaslanýar we maýa goýum maslahaty däldir.';

  @override
  String get askHint => 'Sorag beriň…';

  @override
  String get askSend => 'Iber';

  @override
  String get askThinking => 'Pikirlenýär…';

  @override
  String get askSuggest1 => 'Iň uly töwekgelçilik näme?';

  @override
  String get askSuggest2 => 'Çaklamany näme üýtgedip biler?';

  @override
  String get askSuggest3 => 'Ýönekeý dilde düşündir';

  @override
  String get askMaxReached =>
      'Bu seljerme üçin iň soňky sorag şudy. Has köp soramak üçin täze seljerme dörediň.';

  @override
  String get errAskLimit =>
      'Şu günki sorag çägiňize ýetdiňiz. Ertir täzeden synanyşyň.';

  @override
  String get eventTomorrow => 'Ertir';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days günden',
      one: '1 günden',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Çärýeklik netijeler';

  @override
  String get eventBeforeOpen => 'bazar açylmazdan öň';

  @override
  String get eventAfterClose => 'bazar ýapylandan soň';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS çaklamasy: $value';
  }

  @override
  String get eventFromAnalysis => 'Seljermäňden';

  @override
  String get eventDividend => 'Garaşylýan diwidend';

  @override
  String get eventDividendEstimate =>
      'Siziň ýazan tölegleriňiz esasynda çaklanyldy';

  @override
  String get eventsHint =>
      'Saýlanan we portfeldäki paýnamalaryňyň indiki 90 gündäki netije seneleri, seljermeleriňiň belläp geçen seneli wakalary hem-de ýazan tölegleriň esasynda garaşylýan diwidendler.';

  @override
  String get eventsEmpty =>
      'Indiki 90 günde seneli waka ýok. Netije senelerini şu ýerde görmek üçin saýlananlary ýa-da portfel paýnamalaryny goş; ýazylan diwidendler indiki garaşylýan tölegi görkezýär.';

  @override
  String get compareTitle => 'Deňeşdirme';

  @override
  String get compareAdd => 'Paýnama goş';

  @override
  String get compareRemove => 'Aýyr';

  @override
  String get compareTickerHint => 'Tiker, meselem MSFT';

  @override
  String get compareHint =>
      'Esasy görkezijiler gapdal-gapdala; her setirde iň gowy baha bellenýär. Mukdarlar her paýnamanyň öz walýutasynda.';

  @override
  String get compareNoAnalysis => 'Entek seljerme ýok';

  @override
  String get portfolioDividends => 'Ýyllyk diwidend';

  @override
  String portfolioDividendYield(String percent) {
    return 'Girdejililik $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Garaşylýan ýyllyk diwidend soňky 12 aýda tölenen diwidendlere esaslanýar; geljekki tölegler kepillendirilmeýär.';

  @override
  String positionDividend(String amount) {
    return 'Diwidend: ýylda $amount';
  }

  @override
  String get chartAvgCost => 'Siziň ortaňyz';

  @override
  String get chartAlertLevel => 'Duýduryş';

  @override
  String get marketsToday => 'Bazarlar şu gün';

  @override
  String get notesTitle => 'Meniň belliklerim';

  @override
  String get notesHint =>
      'Ony näme üçin satyn aldyňyz, nämä gözegçilik edýärsiňiz, näme sizi satmaga mejbur eder?';

  @override
  String get notesInfo =>
      'Şu enjamda we, hasaba giren bolsaňyz, hasabyňyzda saklanýar. AI seljermesi bellikleriňizi göz öňünde tutýar.';

  @override
  String notesSaved(String date) {
    return 'Ýatda saklandy: $date';
  }

  @override
  String get peersTitle => 'Meňzeş kompaniýalar';

  @override
  String get portfolioExport => 'CSV görnüşinde eksport et';

  @override
  String get portfolioImport => 'CSV-den import et';

  @override
  String get portfolioImportHint =>
      'Her setire bir satyn alyş goý: tiker, mukdar, baha, walýuta, sene (ÝÝÝÝ-AA-GG). Sütünler otur, nokatly otur ýa-da tab bilen bölünip bilner; sözbaşy setiri hökman däl.';

  @override
  String get portfolioImportButton => 'Import et';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count amal goşuldy',
      one: '1 amal goşuldy',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count setir geçildi',
      one: '1 setir geçildi',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Portfel, saýlananlar, baha duýduryşlary we bellikler ähli enjamlaryňyzda sinhronlanýar.';

  @override
  String syncLast(String time) {
    return 'Soňky sinhronlama: $time';
  }

  @override
  String get syncNow => 'Häzir sinhronla';

  @override
  String get syncFailed =>
      'Sinhronlamak başartmady. Awtomatik usulda täzeden synanyşylar.';

  @override
  String get alertEmailTitle => 'Duýduryş işlände e-poçta';

  @override
  String get alertEmailOn =>
      'Duýduryşlaryňyzy her birnäçe minutdan barlaýarys we programma ýapyk bolsa-da, size e-poçta iberýäris.';

  @override
  String get alertEmailSignIn =>
      'Programma ýapyk bolsa-da duýduryşlary e-poçta arkaly almak üçin Sazlamalarda e-poçtaňyz bilen giriň.';

  @override
  String get portfolioHistory => 'Gymmatyň üýtgeýşi';

  @override
  String get portfolioReviewTitle => 'Portfeliň AI seljermesi';

  @override
  String get portfolioReviewIntro =>
      'AI tutuş portfeliňize seredýär: jemlenmä, pudak we walýuta töwekgelçiligine, paýnamalaryňyzyň umumy töwekgelçiliklerine we diwidendlere. 1 seljerme sarp edýär.';

  @override
  String get portfolioReviewButton => 'Portfelimi seljer';

  @override
  String get portfolioReviewAgain => 'Täzeden seljer';

  @override
  String get portfolioReviewWorking => 'Portfeliňiz seljerilýär…';

  @override
  String get digestTitle => 'E-poçta arkaly hepdelik jemleme';

  @override
  String get digestHint =>
      'Her duşenbe: saýlananlaryňyz we portfeliňiz geçen hepde nähili üýtgedi we olaryň ýakynlaşýan hasabat seneleri.';

  @override
  String get benchmarkTitle => 'S&P 500 bilen deňeşdirme';

  @override
  String get benchmarkTitleIndex => 'Indeks bilen deňeşdirme';

  @override
  String get benchmarkHintIndex =>
      'Edil her satyn alşyňyz şol gün saýlanan indeksi yzarlaýan gazna goýlan ýaly. Diwidendler girizilmedi; geçmişdäki girdeji geljekdäkini çaklamaýar.';

  @override
  String get benchmarkYours => 'Satyn alanlaryňyz';

  @override
  String benchmarkAhead(String points) {
    return 'Indeksden $points göterim bendi gowy';
  }

  @override
  String benchmarkBehind(String points) {
    return 'Indeksden $points göterim bendi yzda';
  }

  @override
  String get portfolioSell => 'Sat';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbol sat';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Bir paýnamanyň satuw bahasy ($currency)';
  }

  @override
  String get portfolioSellDate => 'Satylan senesi';

  @override
  String get portfolioSellAll => 'Hemmesi';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Sizde $quantity bar';
  }

  @override
  String get portfolioSold => 'Satyldy';

  @override
  String get portfolioRealized => 'Gazanylan';

  @override
  String get portfolioClosed => 'Ýapyk pozisiýalar';

  @override
  String get portfolioClosedNote => 'Ähli paýnamalar satyldy';

  @override
  String get portfolioTransactions => 'Amallar';

  @override
  String get portfolioRealizedByYear => 'Ýyllar boýunça gazanylan peýda';

  @override
  String get portfolioRealizedHint =>
      'Satuwlar ilki bilen iň köne satyn alyşlaryňyz bilen deňeşdirilýär (FIFO) we şu günüň walýuta hümmeti boýunça öwrülýär. Salgyt beýannamasy üçin brokeriňiziň hasabatyny ulanyň.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Bu seljermeden soň täze çärýek hasabaty çap edildi ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Täze hasabat';

  @override
  String get portfolioImportBrokers =>
      'Revolut, Trading 212, Interactive Brokers, DEGIRO, Schwab, Fidelity we Robinhood eksportlary hem satuwlar we diwidendler (çeşmede saklanan salgyt aýrylyp) bilen bilelikde tanalýar; goýumlar geçilýär.';

  @override
  String get portfolioImportFile => 'Faýl saýla';

  @override
  String offlineBanner(String time) {
    return 'Baglanyşyk ýok – iň soňky ýatda saklanan maglumatlar görkezilýär ($time).';
  }

  @override
  String get glossMarketCap =>
      'Tutuş kompaniýanyň biržadaky bahasy: paýnamanyň bahasy × paýnamalaryň sany.';

  @override
  String get glossSharesOutstanding =>
      'Kompaniýanyň näçe paýnama çykarandygy. Sany artsa, her paýnama has kiçi paý düşýär; yzyna satyn alyşlar ony azaldýar.';

  @override
  String get glossPeTrailing =>
      'Baha ÷ soňky 12 aýda bir paýnama düşýän peýda: häzirki peýdanyň näçe ýyly üçin töleýändigiňiz. Pesi arzanrak, ýöne çalt ösýän kompaniýalaryň P/E-si adatça ýokary.';

  @override
  String get glossPeForward =>
      'P/E ýaly, ýöne analitikleriň indiki 12 aý üçin garaşýan peýdasy bilen. Geçen döwrüň P/E-sinden pes bolsa, peýdanyň ösmegine garaşylýar.';

  @override
  String get glossPb =>
      'Baha ÷ bir paýnama düşýän balans bahasy (aktiwler minus karzlar). Takmynan 1 bazaryň kompaniýany kagyz ýüzündäki emlägi derejesinde bahalandyrýandygyny aňladýar.';

  @override
  String get glossPs =>
      'Bazar bahasy ÷ ýyllyk girdeji. Entek peýdasy az ýa-da asla ýok kompaniýalar üçin peýdaly; bir pudagyň içinde deňeşdiriň.';

  @override
  String get glossEvToFcf =>
      'Karz bilen bilelikde kompaniýanyň bahasy (EV) ÷ maýa goýumlardan soň bir ýylda öndürýän puly. Pes bolsa, baha üçin has köp pul alýarsyňyz.';

  @override
  String get glossPeg =>
      'P/E ÷ garaşylýan ýyllyk peýda ösüşi (%). Takmynan 1 köplenç adalatly hasaplanýar; P/E-ni ösüşiň nukdaýnazaryndan görkezýär.';

  @override
  String get glossEps =>
      'Soňky 12 aýda bir paýnama düşýän peýda. Ýyllar boýy ösýän EPS sagdyn kompaniýanyň iň güýçli alamatlarynyň biridir.';

  @override
  String get glossBeta =>
      'Paýnamanyň bazar bilen bilelikde näçe hereket edýändigi: 1 = bazar ýaly, 1,5 = takmynan 50% uly yrgyldylar, 1-den pes = has asuda.';

  @override
  String get glossRevenueTtm =>
      'Soňky 12 aýyň jemi satuwy, islendik çykdajylardan öň.';

  @override
  String get glossNetIncomeTtm =>
      'Soňky 12 aýda ähli çykdajylardan, göterimlerden we salgytlardan soň galan peýda.';

  @override
  String get glossGrossMargin =>
      'Önümleriň gönüden-göni çykdajylaryndan soň galýan girdeji paýy. Ýokary marža köplenç baha kesgitlemek güýjüni görkezýär.';

  @override
  String get glossOperatingMargin =>
      'Işi alyp barmagyň çykdajylaryndan (aýlyklar, kärende, marketing) soň, göterimlerden we salgytlardan öň galýan girdeji paýy.';

  @override
  String get glossNetMargin =>
      'Girdejiniň ahyrky peýda öwrülýän paýy. 20% her 100 satuwdan 20-siniň peýdadygyny aňladýar.';

  @override
  String get glossRoe =>
      'Kapitalyň girdejililigi: ýyllyk peýda ÷ eýeleriň kapitaly. Ýolbaşçylygyň paýdarlaryň puluny näçe gowy ulanýandygyny görkezýär; takmynan 15%-den ýokarysy güýçli.';

  @override
  String get glossRoa =>
      'Aktiwleriň girdejililigi: ýyllyk peýda ÷ kompaniýanyň ähli emlägi. Bir pudagyň içinde deňeşdiriň.';

  @override
  String get glossDebtToEquity =>
      'Karzlar ÷ eýeleriň kapitaly. Ýokary bolsa, karz alnan pul köp: göterimler ýokarlananda ýa-da iş haýallanda töwekgelçilik uly.';

  @override
  String get glossCurrentRatio =>
      'Gysga möhletli aktiwler ÷ bir ýylyň içinde tölenmeli borçnamalar. 1-den ýokary bolsa, kompaniýa ýakyn borçnamalaryny ýapyp bilýär.';

  @override
  String get glossRevenueGrowth =>
      'Girdejiniň bir ýyl öňküsi bilen deňeşdirilende näçe artandygy.';

  @override
  String get glossEpsGrowth =>
      'Bir paýnama düşýän peýdanyň bir ýyl öňküsi bilen deňeşdirilende näçe artandygy.';

  @override
  String get glossDividendYield =>
      'Ýyllyk diwidend ÷ paýnamanyň bahasy: tölän puluňyzyň göterimi hökmünde ýylda aljak nagt girdejiňiz.';

  @override
  String get glossDividendPerShare =>
      'Soňky ýylda bir paýnama üçin tölenen diwidend.';

  @override
  String get glossPayoutRatio =>
      'Peýdanyň diwidend hökmünde tölenýän paýy. 100%-den ýokary bolsa, kompaniýa gazanýanyndan köp töleýär, bu seýrek dowam edýär.';

  @override
  String get portfolioBeta => 'Portfeliň betasy';

  @override
  String get glossPortfolioBeta =>
      'Paýnamalaryňyzyň gymmatyna görä agramlandyrylan betasy: bazar 1% hereket edende paýnamalaryňyz takmynan näçe göterim hereket edýär. 1-den ýokary bolsa bazardan has köp yrgyldaýar, 1-den pes bolsa az. Nagt pul hasaba alynmaýar.';

  @override
  String get portfolioTop3 => 'Iň uly 3 pozisiýa';

  @override
  String get glossPortfolioTop3 =>
      'Paýnamalaryňyzyň gymmatynyň näçesiniň iň uly üç pozisiýaňyzda ýerleşýändigi. Näçe ýokary bolsa, ýeke-täk kompaniýa baradaky erbet habar şonça-da tutuş portfele zyýan ýetirip biler.';

  @override
  String get glossDividendGrowth5y =>
      'Soňky bäş ýylda bir paýnama düşýän diwidendiň ýylda ortaça näçe artandygy. Durnukly ösüş adatça kompaniýanyň öz pul akymyna ynanýandygyny aňladýar; azaldylmagy köplenç duýduryş alamatydyr.';

  @override
  String get glossYieldOnCost =>
      'Soňky 12 aýda alnan diwidendler, häzirem saklaýan paýnamalaryňyz üçin tölän puluňyza bölünýär. Diwidend girdejililiginden tapawutlylykda, ol şu günki baha bilen däl-de, siziň öz satyn alyş bahaňyz bilen ölçelýär.';

  @override
  String get glossTitle => 'Bu näme aňladýar?';

  @override
  String get watchNewsTitle => 'Paýnamalaryňyz barada habarlar';

  @override
  String get undo => 'Yzyna al';

  @override
  String get watchSort => 'Tertiple';

  @override
  String get watchSortOwn => 'Meniň tertibim';

  @override
  String get watchSortGainers => 'Iň köp ýokarlananlar ilki';

  @override
  String get watchSortLosers => 'Iň köp peselenler ilki';

  @override
  String get watchSortName => 'Tiker boýunça (A–Z)';

  @override
  String get watchHint =>
      'Tertibi üýtgetmek üçin tutawajy süýräň, aýyrmak üçin çepe süýşüriň. Çyzyk soňky 30 güni görkezýär.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: derňewiňiz taýýar.';
  }

  @override
  String alertFromCost(String price) {
    return 'Ortaça satyn alyş bahaňyzdan ($price):';
  }

  @override
  String get briefTitle => 'Şu gün paýnamalaryňyz bilen';

  @override
  String get briefButton => 'Şu güni jemle';

  @override
  String get briefHint =>
      'Portfeliňiziň we saýlananlaryňyzyň şu gün nähili hereket edendigi we iň täze habarlaryň olar barada näme diýýändigi barada gysga AI jemlemesi. Seljerme sarp etmeýär.';

  @override
  String get briefRefresh => 'Täzele';

  @override
  String get sectionEarnings => 'Çärýeklik netijeler';

  @override
  String earningsNext(String date) {
    return 'Indiki hasabat: $date';
  }

  @override
  String get earningsExpected => 'Garaşylýan EPS';

  @override
  String get earningsReported => 'Yglan edilen EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Soňky $total çärýegiň $beats sanysynda garaşylýan EPS-e deň ýa-da ondan ýokary',
      one:
          '1 çärýegiň $beats sanysynda garaşylýan EPS-e deň ýa-da ondan ýokary',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol ertir çärýeklik netijelerini yglan edýär';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol şu gün çärýeklik netijelerini yglan edýär';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return '$symbol: şu gün diwidend garaşylýar';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Takmynan $amount. Gelenden soň ony portfeliňize ýazyň.';
  }

  @override
  String get dividendRemindersTitle => 'Diwidend ýatlatmalary';

  @override
  String get dividendRemindersSubtitle =>
      'Siziň ýazan tölegleriňiziň yzygiderliligi esasynda diwidend garaşylýan gün, ony ýazmagyňyz üçin duýduryş';

  @override
  String get earningsRemindersTitle => 'Netije ýatlatmalary';

  @override
  String get earningsRemindersSubtitle =>
      'Saýlananlaryňyzdaky ýa-da portfeliňizdäki paýnamalar çärýeklik netijelerini yglan etmezinden bir gün öň duýduryş';

  @override
  String addAllToFavorites(int count) {
    return 'Ählisini saýlananlara goş ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Ekran suratyndan import et';

  @override
  String get holdingsReading => 'Pozisiýalaryň okalýar…';

  @override
  String get holdingsReviewTitle => 'Tapylan pozisiýalar';

  @override
  String get holdingsReviewHint =>
      'Goşmazdan öň sanlary barla. Baha — bir paýnama üçin ortaça satyn alyş bahaň, şu günki baha däl.';

  @override
  String get holdingsNoPrice => 'Suratda ortaça satyn alyş bahasy ýok';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pozisiýa goş',
      one: '1 pozisiýa goş',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Bu suratda paýnama pozisiýasy tapylmady. Brokeriňiň pozisiýalar ýa-da aktiwler sahypasynyň ekran suratyny synap gör.';

  @override
  String get week52Range => '52 hepdäniň aralygy';

  @override
  String week52BelowHigh(String percent) {
    return '52 hepdäniň iň ýokarysyndan $percent pes';
  }

  @override
  String get week52AtHigh => '52 hepdäniň iň ýokarysynda';

  @override
  String get alertKindTrailing => 'Iň ýokarydan düşse';

  @override
  String get alertTrailingPercent => 'Iň ýokarydan düşüş (%)';

  @override
  String get alertTrailingHint =>
      'Bahany ýokary yzarlaýar: bellänizden bäri iň ýokary derejesinden baha şunça düşse habar berýär.';

  @override
  String alertDescTrailing(String percent) {
    return 'Iň ýokarydan $percent düşüş';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'häzire çenli iň ýokary: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol iň ýokary derejesinden $percent düşdi';
  }

  @override
  String get sectionInsiders => 'Insaýderleriň amallary';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count satyn alyş',
      one: '1 satyn alyş',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count satuw',
      one: '1 satuw',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Arassa: $shares paýnama';
  }

  @override
  String get insiderBuy => 'Satyn aldy';

  @override
  String get insiderSell => 'Satdy';

  @override
  String get insiderHint =>
      'Soňky 90 günde ýolbaşçylaryň we direktorlaryň açyk bazarda eden satyn alyşlary we satuwlary (SEC Form 4). Opsionlaryň ulanylmagy we sylag paýnamalary hasaba alynmaýar.';

  @override
  String get insiderNone =>
      'Soňky 90 günde açyk bazarda insaýderleriň satyn alyşy ýa-da satuwy bolmady.';

  @override
  String get analystTrend => 'Pikirler aýba-aý nähili üýtgedi';

  @override
  String get watchListAll => 'Ählisi';

  @override
  String get watchListNew => 'Täze sanaw';

  @override
  String get watchListName => 'Sanawyň ady';

  @override
  String get watchListRename => 'Sanawyň adyny üýtget';

  @override
  String get watchListDelete => 'Sanawy poz';

  @override
  String get watchListAddTo => 'Sanawa goş';

  @override
  String get watchListEmpty =>
      'Bu sanawda entek paýnama ýok. Goşmak üçin paýnamanyň gapdalyndaky sanaw düwmesine basyň.';

  @override
  String get portfolioAskTitle => 'Portfeliňiz barada soraglar';

  @override
  String get rangeYtd => 'Şu ýyl';

  @override
  String get backupTitle => 'Ätiýaçlyk nusga';

  @override
  String get backupSave => 'Ätiýaçlyk nusgany sakla';

  @override
  String get backupSaveHint =>
      'Saýlananlaryňyz, sanawlaryňyz, portfeliňiz, duýduryşlaryňyz we bellikleriňiz bir faýlda.';

  @override
  String get backupRestore => 'Ätiýaçlyk nusgadan dikelt';

  @override
  String get backupRestoreHint =>
      'Faýldakylary goşýar; häzirki zatlaryňyzdan hiç zat pozulmaýar.';

  @override
  String get backupRestored => 'Ätiýaçlyk nusga dikeldildi.';

  @override
  String get backupInvalid => 'Bu faýl WhatStock ätiýaçlyk nusgasy däl.';

  @override
  String get allocationPositions => 'Paýnamalar';

  @override
  String get allocationSectors => 'Sektorlar';

  @override
  String get allocationCurrencies => 'Walýutalar';

  @override
  String get allocationAccounts => 'Hasaplar';

  @override
  String get compareReturn1y => '1 ýyllyk girdejililik';

  @override
  String get compareFromHigh => '52 hepdäniň iň ýokarysyndan aralyk';

  @override
  String get briefAutoTitle => 'Her irden gündelik jemleme';

  @override
  String get briefAutoSubtitle =>
      '“Şu gün paýnamalaryňyz bilen” programma işläp durka sagat 7:00-dan soň awtomatik taýýarlanýar; kompýuterlerde bildiriş size habar berer. Gündelik sorag çägiňizden harçlanýar, seljerme däl.';

  @override
  String get targetsButton => 'Maksatly paýlanyş';

  @override
  String get targetsTitle => 'Maksatly paýlanyş';

  @override
  String get targetsHint =>
      'Her paýnamanyň portfeliň näçe paýyny eýelemelidigini belläň. Maksat ýok bolsa, meýdany boş goýuň. Soňra programma oňa ýetmek üçin näme satyn almalydygyny ýa-da satmalydygyny görkezer.';

  @override
  String targetsSum(String percent) {
    return 'Jemi: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Satyn al ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Sat ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Maksada laýyk';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol garaşylýan EPS-den geçdi';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol garaşylýan EPS-e ýetmedi';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'Yglan edilen EPS $actual, garaşylýan $estimate';
  }

  @override
  String get newsExplain => 'Bu näme aňladýar?';

  @override
  String get watchAlertAll => 'Uly gündelik üýtgeýişler barada duýduryş';

  @override
  String get watchAlertAllHint =>
      'Bu sanawdaky her bir paýnama üçin baha duýduryşy: bir günde şunça ýokary ýa-da aşak üýtgese, habar berer. Eýýäm duýduryşy bolan paýnamalar özüninkini saklar.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count duýduryş goýuldy',
      one: '1 duýduryş goýuldy',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized =>
      'Durmuşa geçirilen girdejini eksport et (CSV)';

  @override
  String get portfolioAnnualReturn => 'Ýyllyk girdejililik';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / ýyl';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Pul akymlary boýunça agramlandyrylan ýyllyk girdejililik (XIRR): haçan satyn alandygyňyzy we satandygyňyzy hasaba alýar, şonuň üçin soňra goşulan pul ony ýoýmaýar. Ilkinji satyn alşyňyza azyndan bir ýyl dolanda görkezilýär; diwidendler goşulmaýar.';

  @override
  String get eventsAddToCalendar => 'Senenama goş (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Portfel duýduryşy';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Tutuş portfeliňiz bir günde şunça üýtgände duýduryş.';

  @override
  String get portfolioMoveAlertOff => 'Öçük';

  @override
  String portfolioMoveUp(String percent) {
    return 'Portfeliňiz şu gün $percent ýokarlandy';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Portfeliňiz şu gün $percent aşaklady';
  }

  @override
  String get whatIfTitle => 'Maýa goýan bolsadyňyz näme bolardy?';

  @override
  String get whatIfAmount => 'Mukdar';

  @override
  String whatIfResult(String amount, String period) {
    return '$period öň goýlan $amount şu gün şunça bolardy';
  }

  @override
  String get whatIfNote =>
      'Diňe paýnamanyň bahasyna esaslanýar: diwidendler, ýygymlar we salgytlar girizilmedi. Geçmişdäki girdeji geljekdäkini çaklamaýar.';

  @override
  String get watchShare => 'Sanawy paýlaş';

  @override
  String get watchImport => 'Tiker goş';

  @override
  String get watchImportHint =>
      'Tikerleri otur, boşluk ýa-da täze setir bilen bölüp goý – meselem, kimdir biriniň saňa paýlaşan sanawyny.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count paýnama goşuldy',
      one: '1 paýnama goşuldy',
      zero: 'Täze paýnama ýok',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Iň ulular ilki';

  @override
  String get positionsSortGain => 'Iň ýokary jemi girdeji ilki';

  @override
  String get positionsSortToday => 'Şu günüň iň gowulary ilki';

  @override
  String get chartMyBuys => 'Satyn alyşlaryňyz';

  @override
  String get chartMySells => 'Satuwlaryňyz';

  @override
  String get shortcutsTitle => 'Klawiatura düwme utgaşmalary';

  @override
  String usMarketOpen(String time) {
    return 'ABŞ bazary açyk · ýapylmagyna $time galdy';
  }

  @override
  String usMarketClosed(String time) {
    return 'ABŞ bazary ýapyk · açylmagyna $time galdy';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes min';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours sag $minutes min';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days gün $hours sag';
  }

  @override
  String get dividendGoalSet => 'Aýlyk diwidend maksadyny goý';

  @override
  String get dividendGoalTitle => 'Aýlyk diwidend maksady';

  @override
  String get dividendGoalAmount => 'Aýda diwidend';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Häzirki girdejililik bilen aýda takmynan $amount · $percent · maksat: $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Häzirki girdejililik bilen aýda takmynan $amount · Maksada ýetildi: $goal';
  }

  @override
  String get portfolioAccount => 'Hasap';

  @override
  String get portfolioAccountHint => 'meselem, TBSZ 2026 (hökmany däl)';

  @override
  String get portfolioAccountAdd => 'Hasaby görkez';

  @override
  String get portfolioAccountsAll => 'Ähli hasaplar';

  @override
  String get portfolioAccountNote =>
      'Diňe şu hasabyň amallary we diwidendleri. Nagt pul, maksatlar we AI seljermesi «Ähli hasaplar» bölüminde görkezilýär.';

  @override
  String get portfolioNoAccount => 'Hasapsyz';

  @override
  String portfolioFee(String currency) {
    return 'Komissiýa ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Komissiýa goş';

  @override
  String portfolioFeeRow(String amount) {
    return 'Komissiýa: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'Ýyllyk jemleme';

  @override
  String get portfolioProceeds => 'Satuw girdejisi';

  @override
  String get portfolioCostBasis => 'Satyn alyş bahasy';

  @override
  String get portfolioFeesPaid => 'Tölenen komissiýa';

  @override
  String get portfolioAnnualSummaryNote =>
      'Möçberler asyl walýutada, öwrülmedik. Satuw girdejisinden satuw komissiýasy aýrylan; satyn alyş bahasyna satyn alyş komissiýasy goşulan (FIFO). Salgyt beýannamasy üçin salgyt edaraňyzyň talap edýän walýuta hümmeti boýunça öwrüň.';

  @override
  String get portfolioShare => 'Netijäni paýlaş';

  @override
  String get portfolioShareHeading => 'Meniň portfelim';

  @override
  String get portfolioTopHoldings => 'Iň uly pozisiýalar';

  @override
  String get portfolioShareNote =>
      'Diňe göterimler paýlaşylýar, möçberler däl.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pozisiýa',
      one: '$count pozisiýa',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'Maýa goýum maslahaty däl';

  @override
  String get contributionButton => 'Täze maýa goý';

  @override
  String contributionAmount(String currency) {
    return 'Goýuljak mukdar ($currency)';
  }

  @override
  String get contributionHint =>
      'Diňe satyn almak, satmak ýok: maksadyndan iň köp aşakda galan pozisiýalar puly ilki alýar.';

  @override
  String contributionShares(String shares) {
    return '≈ $shares paýnama';
  }

  @override
  String contributionMissing(String symbols) {
    return '$symbols üçin häzirki baha ýok: paýlanyşa goşulmady.';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'Ýyllyk girdejililik şeýle galsa ($rate), maksada takmynan $year ýyl töwereginde ýetersiňiz.';
  }

  @override
  String get portfolioMaxDrawdown => 'Iň uly pese gaçyş';

  @override
  String get glossMaxDrawdown =>
      'Paýnamalaryňyzyň gymmatynyň öňki iň ýokary derejeden soňky iň pes derejä çenli iň uly pese gaçyşy, satyn alyşlaryňyzyň we satyşlaryňyzyň täsiri hasaba alynmazdan (wagt boýunça agramlandyrylan). Portfeliňiziň eýýäm näçe çuň pese gaçyşy başdan geçirendigini görkezýär.';

  @override
  String watchSince(String date) {
    return 'Saýlananlara goşanyňyzdan bäri ($date)';
  }

  @override
  String get portfolioSampleTry => 'Nusga portfel bilen synap gör';

  @override
  String get portfolioSampleBanner =>
      'Bu nusga portfel. Onuň ýanyna öz satyn alyşlaryňyzy goşuň ýa-da ony aýyryň.';

  @override
  String get portfolioSampleRemove => 'Nusgany aýyr';

  @override
  String get portfolioStopsAll =>
      'Ähli pozisiýalar üçin iň ýokarydan düşüş duýduryşy';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count duýduryş goýuldy',
      one: '1 duýduryş goýuldy',
      zero: 'Ähli pozisiýalarda bu duýduryş eýýäm bar',
    );
    return '$_temp0';
  }

  @override
  String portfolioSinceSale(String percent) {
    return '$percent satanyňyzdan bäri';
  }

  @override
  String get lotPreviewRealized => 'Bu satuwdan gazanylan (FIFO):';

  @override
  String lotPreviewAverage(String after, String before) {
    return 'Täze orta baha: $after (häzir $before)';
  }

  @override
  String get portfolioYtdReturn => 'Şu ýylyň girdejililigi';

  @override
  String get glossTwrYtd =>
      'Ýylyň başyndan bäri (ýa-da ilkinji satyn alşyňyz şu ýyl bolan bolsa, şondan bäri) wagt boýunça agramlandyrylan girdejililik: her gün şol gün sizde bolan paýnamalaryň üýtgeşmesini hasaplaýar we günler biri-birine zynjyr ýaly birikdirilýär – goýýan ýa-da çykarýan puluňyz girdeji däl, şonuň üçin ony indeks bilen deňeşdirip bolýar. Aşagynda: şol bir döwürde saýlanan indeks.';

  @override
  String alertDistance(String price, String percent) {
    return 'Häzir $price · $percent galdy';
  }

  @override
  String get watchSortSince => 'Goşulandan bäri üýtgeýiş boýunça';

  @override
  String get portfolioTodayMovers => 'Şu gün iň köp üýtgänler:';

  @override
  String get lotNoteAdd => 'Bellik goş';

  @override
  String get lotNoteBuyHint =>
      'Näme üçin satyn alýarsyňyz? Sene bilen paýnamanyň belliklerine goşulýar.';

  @override
  String get lotNoteSellHint =>
      'Näme üçin satýarsyňyz? Sene bilen paýnamanyň belliklerine goşulýar.';

  @override
  String get lotNoteBought => 'Satyn alyndy';

  @override
  String get positionHeld => 'Saklama möhleti';

  @override
  String durationMonths(int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months aý',
      one: '$months aý',
    );
    return '$_temp0';
  }

  @override
  String durationDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days gün',
      one: '$days gün',
    );
    return '$_temp0';
  }

  @override
  String positionHeldSince(String date) {
    return '$date senesinden bäri';
  }

  @override
  String lotPreviewWeight(String after, String before) {
    return 'Soňra portfeldäki paý: $after (häzir $before)';
  }

  @override
  String lotFromCash(String amount) {
    return 'Nagt puldan töle (häzir $amount)';
  }

  @override
  String lotToCash(String amount) {
    return 'Nagt pula goş (häzir $amount)';
  }

  @override
  String get onboardTitle4 => 'Portfeliňizi yzarlaň';

  @override
  String get onboardBody4 =>
      'Brokeriňiziň eksportyny import ediň (Revolut, Trading 212, IBKR, DEGIRO, Schwab…) ýa-da amallary el bilen goşuň: girdejililigiňizi indeks bilen deňeşdirip, diwidendleriňizi we salgyt beýannamasy üçin ýyllyk jemlemäni görüň.';

  @override
  String get lotEdit => 'Üýtget';

  @override
  String lotEditTitle(String symbol) {
    return 'Amaly üýtget · $symbol';
  }

  @override
  String get lotSave => 'Sakla';

  @override
  String dividendEditTitle(String symbol) {
    return 'Diwidendi üýtget · $symbol';
  }

  @override
  String get activityTitle => 'Ähli amallar';

  @override
  String get activitySearchHint => 'Tiker boýunça süzgüçle';

  @override
  String get activityNoMatch => 'Süzgüje laýyk amal ýok.';

  @override
  String portfolioImportDuplicates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count eýýäm ýazylan, goşulmady',
      one: '1 eýýäm ýazylan, goşulmady',
    );
    return '$_temp0';
  }

  @override
  String get tickerChange => 'Tikeri üýtgetmek';

  @override
  String tickerChangeTitle(String symbol) {
    return 'Tikeri üýtgetmek · $symbol';
  }

  @override
  String get tickerChangeNew => 'Täze tiker';

  @override
  String get tickerChangeHint =>
      'Kompaniýa tikerini üýtgedende (meselem, FB → META): ähli amallar, diwidendler, paýnama bölünişleri, bellik we duýduryşlar täze tikere geçirilýär.';

  @override
  String tickerChanged(String symbol) {
    return '$symbol tikerine geçirildi';
  }

  @override
  String get portfolioGoalSet => 'Maksat goý';

  @override
  String get portfolioGoalTitle => 'Portfel maksady';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · maksat: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Maksada ýetildi: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Maksady aýyr';

  @override
  String get alertEdit => 'Duýduryşy üýtget';

  @override
  String get positionOpenLots => 'Henizem elinde bar (ilki iň könesi)';

  @override
  String get lotRemoved => 'Amal pozuldy';

  @override
  String get alertDeleted => 'Duýduryş pozuldy';

  @override
  String get alertsClearTriggered => 'Işlän duýduryşlary arassala';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count duýduryş arassalandy',
      one: '1 duýduryş arassalandy',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Baş ekran';

  @override
  String get allocationCountries => 'Ýurtlar';

  @override
  String get newsExplainNoteResearch =>
      'AI düşündirişi: faktlary internetde gözleýär, makalany açýar we çeşmäniň näderejede ygtybarlydygyna baha berýär. Maýa goýum maslahaty däldir. Gündelik sorag çägiňizden harçlanýar, seljerme däl.';

  @override
  String get sourceOfficial => 'Resmi';

  @override
  String get sourcePressRelease => 'Metbugat beýannamasy';

  @override
  String get sourceMajorNews => 'Iri media';

  @override
  String get sourceOpinion => 'Pikir';

  @override
  String get earningsSummaryButton => 'Soňky hasabatda näme bardy?';

  @override
  String get earningsSummaryNote =>
      'Kompaniýanyň netijeler baradaky beýannamasynyň we internetde tapan metbugat habarlarynyň AI gysgaça mazmuny. Maýa goýum maslahaty däldir. Gündelik sorag çägiňizden harçlanýar, seljerme däl.';

  @override
  String get compareLastSurprise => 'Soňky çärýek EPS vs garaşylýan';

  @override
  String get compareNextReport => 'Indiki hasabat';

  @override
  String get resolvingDescription =>
      'Haýsy paýnamany göz öňünde tutýandygyňyz kesgitlenýär…';

  @override
  String get instrumentTitle => 'Bu gural barada';

  @override
  String get instrumentHint =>
      'Bu nyşan üçin kompaniýa profili ýok – bu ETF, gazna ýa-da depozitar şahadatnama bolup biler. AI-dan bu näme, düzüminde näme bar we näçe çykdajy edýär diýip soraň.';

  @override
  String get instrumentAsk => 'Bu näme?';

  @override
  String get instrumentNote =>
      'Emitentiň gazna sahypasyna we internetde tapan maliýe saýtlaryna esaslanan AI düşündirişi. Maýa goýum maslahaty däldir. Gündelik sorag çägiňizden harçlanýar, seljerme däl.';

  @override
  String suggestAskAi(String query) {
    return 'AI-dan soraň: “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return '$symbols üçin häzirki baha ýok.';
  }

  @override
  String get eventsRecentResults => 'Ýaňy-ýakynda yglan edilen netijeler';

  @override
  String get saveToNotes => 'Belliklerime ýazdyr';

  @override
  String get savedToNotes => 'Bellikleriňize ýazdyryldy';

  @override
  String get portfolioDividendsReceived => 'Alnan diwidendler';

  @override
  String get portfolioDividendsThisYear => 'Şu ýyl';

  @override
  String get portfolioDividendsAllTime => 'Jemi';

  @override
  String get portfolioAddDividend => 'Diwidend goş';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Alnan möçber ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Töleg senesi';

  @override
  String get portfolioDividendsEmpty =>
      'Häzirlikçe diwidend ýazylmady. Olary el bilen goşuň ýa-da brokeriňiziň eksportyny import ediň – onuň diwidend setirleri hem alynýar.';

  @override
  String get portfolioSplit => 'Paýnamalaryň bölünişi';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Paýnamalaryň bölünişi: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Bölünişden öňki senelik satyn almalar we satuwlar düzedilýär: paýnamalaryň sany köpeldilýär, bir paýnamanyň bahasy bolsa bölünýär, şonuň üçin çykdajy üýtgemeýär.';

  @override
  String get portfolioSplitRatio => 'Gatnaşyk (täze : köne)';

  @override
  String get portfolioSplitRatioError =>
      '10:1 ýaly gatnaşyk giriziň, ýa-da ters bölüniş üçin 1:10.';

  @override
  String get portfolioSplitDate => 'Bölünişiň senesi';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Paýnamalaryň bölünişi $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Paýnamalaryň bölünişi pozuldy';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count paýnama bölünişi goşuldy',
      one: '1 paýnama bölünişi goşuldy',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count diwidend goşuldy',
      one: '1 diwidend goşuldy',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Diwidendleri eksport et (CSV)';

  @override
  String get portfolioDividendDeleted => 'Diwidend pozuldy';

  @override
  String get portfolioDividendsHint =>
      'Möçberler hasabyňyza gelen görnüşinde, töleg walýutasynda; jemler şu günki kurs bilen öwrülýär. Salgyt beýannamasy üçin brokeriňiziň hasabatyny ulanyň.';

  @override
  String get awayTitle => 'Siz ýok wagtyňyz';

  @override
  String awaySince(String when) {
    return '$when bäri';
  }

  @override
  String get awayQuiet => 'Köp zat üýtgemedi.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count duýduryş işe girdi',
      one: '1 duýduryş işe girdi',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Netijeler yglan edildi: $symbols';
  }

  @override
  String get moveWhyButton => 'Şu gün näme üçin hereket edýär?';

  @override
  String moveWhyTitle(String percent) {
    return 'Şu gün $percent';
  }

  @override
  String get moveWhyNote =>
      'Internetde tapylan şu günki habarlara esaslanýan AI düşündirişi; hakyky sebäp näbelli ýa-da başga bolup biler. Maýa goýum maslahaty däl. Analiz däl-de, gündelik sorag çägiňizi ulanýar.';

  @override
  String get sectionTechnical => 'Tehniki surat';

  @override
  String get labelSma50 => '50 günlük ortalama';

  @override
  String get labelSma200 => '200 günlük ortalama';

  @override
  String get labelRsi => 'RSI (14 gün)';

  @override
  String get labelVolatility30 => 'Üýtgäpdurma (30 gün)';

  @override
  String techAbove(String percent) {
    return '$percent ýokarda';
  }

  @override
  String techBelow(String percent) {
    return '$percent aşakda';
  }

  @override
  String get techOverbought => 'aşa satyn alnan';

  @override
  String get techOversold => 'aşa satylan';

  @override
  String get techNeutral => 'bitarap';

  @override
  String get techGoldenCross =>
      '50 günlük ortalama 200 günlük ortalamadan ýokarda – adaty düşündiriş boýunça ýokarlanýan ugur.';

  @override
  String get techDeathCross =>
      '50 günlük ortalama 200 günlük ortalamadan aşakda – adaty düşündiriş boýunça aşaklaýan ugur.';

  @override
  String get glossSma50 =>
      'Soňky 50 söwda gününiň ýapylyş nyrhynyň ortalamasy. Ondan ýokardaky nyrh köplenç gysga möhletli güýç, aşakdaky bolsa gowşaklyk hasaplanýar.';

  @override
  String get glossSma200 =>
      'Soňky 200 söwda gününiň ýapylyş nyrhynyň ortalamasy – uzak möhletli ugruň adaty çyzygy. Köp maýadar ondan ýokardaky nyrhy uzak möhletli ýokarlanýan ugur hasaplaýar.';

  @override
  String get glossRsi =>
      'Otnositel güýç indeksi: soňky girdejileri soňky ýitgiler bilen 0–100 şkalasynda deňeşdirýär. 70-den ýokarda paýnama köplenç aşa satyn alnan (çalt ýokarlandy), 30-dan aşakda aşa satylan diýilýär – ýöne güýçli ugur ol ýerde uzak wagtlap galyp biler.';

  @override
  String get glossVolatility =>
      'Nyrhyň günden-güne näçe üýtgeýändigi, bir ýyla hasaplanan: 20% adaty ýylda takmynan ±20% çäginde hereket edýändigini aňladýar. Has ýokary üýtgäpdurma iki tarapa-da has uly hereketleri aňladýar.';

  @override
  String get techNote =>
      'Gündelik ýapylyş nyrhlaryndan hasaplandy. Tehniki signallar geçmişi beýan edýär, geljegi däl.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$count pozisiýadan $above öz 200 günlük ortalamasyndan ýokarda';
  }

  @override
  String get watchSignalsTitle => 'Signallar';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · aşa satylan';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · aşa satyn alnan';
  }

  @override
  String get signalCrossedAbove => '200 günlük ortalamadan ýokary geçdi';

  @override
  String get signalCrossedBelow => '200 günlük ortalamadan aşak geçdi';

  @override
  String get signalAlertsTitle => 'Tehniki signal habarnamalary';

  @override
  String get signalAlertsSubtitle =>
      'Günde bir gezek, yzarlaýan paýnamaňyz aşa satylan ýa-da aşa satyn alnan (RSI) bolanda, ýa-da onuň bahasy 200 günlük ortalamany kesip geçende.';

  @override
  String get signalAlertsNotification => 'Tehniki signallar';

  @override
  String get glossaryPageTitle => 'Sözlük';

  @override
  String get glossaryPageSubtitle =>
      'Programmanyň görkezýän her sanynyň ýönekeý düşündirişi, P/E-den RSI-e çenli';

  @override
  String get glossarySearchHint => 'Sözlükde gözle';

  @override
  String get portfolioCash => 'Nagt pul';

  @override
  String get portfolioCashTitle => 'Nagt pul galyndysy';

  @override
  String get portfolioCashHint =>
      'Brokeriňizdäki goýulmadyk pul, walýuta boýunça. Umumy gymmata we paýlanyşa goşulýar; girdejililige goşulmaýar.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Möçber ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Nagt pul galyndysyny belle';

  @override
  String get portfolioDividendsByMonth => 'Aýlar boýunça';

  @override
  String get dividendsLegendReceived => 'Alnan';

  @override
  String get dividendsLegendExpected => 'Garaşylýan';

  @override
  String get portfolioDividendsExpected => 'Indiki garaşylýan';

  @override
  String get portfolioDividendsExpectedNote =>
      'Siziň ýazan tölegleriňiziň seneleri we möçberleri esasynda çaklanyldy; kompaniýalar olary üýtgedip ýa-da geçirmän bilerler.';

  @override
  String portfolioDividendAround(String date) {
    return 'takmynan $date';
  }
}
