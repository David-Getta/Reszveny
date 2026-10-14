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
      'Diňe şu enjamda saklanýar. Jemler ÝMB-niň salgylanma hümmetleri boýunça hasaplanýar; bahalar gijikdirilen bolup biler.';

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
}
