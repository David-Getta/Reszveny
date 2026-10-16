// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Javanese (`jv`).
class AppLocalizationsJv extends AppLocalizations {
  AppLocalizationsJv([String locale = 'jv']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Fotonen saham lan ngertenana kabeh babagan saham iku.';

  @override
  String get homeHint =>
      'Sertifikat saham, layar aplikasi sekuritas, koran utawa logo perusahaan – apa wae sing bisa ngenali saham.';

  @override
  String get takePhoto => 'Jupuk foto';

  @override
  String get chooseFromGallery => 'Pilih saka galeri';

  @override
  String get chooseImage => 'Pilih gambar';

  @override
  String get enterTickerManually => 'Ketik kode saham kanthi manual';

  @override
  String get tickerInputLabel => 'Kode saham';

  @override
  String get tickerInputHint => 'conto: AAPL';

  @override
  String get lookUp => 'Golek';

  @override
  String demoModeBanner(String symbols) {
    return 'Mode demo – kunci data pasar durung disetel. Data conto kasedhiya kanggo: $symbols.';
  }

  @override
  String get recognizing => 'Nganalisis gambar…';

  @override
  String get loadingData => 'Ngemot data…';

  @override
  String get noCandidatesTitle => 'Ora ana saham sing dikenali';

  @override
  String get noCandidatesBody =>
      'Kita ora bisa ngenali saham ing gambar iki. Coba foto sing luwih cetha, utawa ketik kode saham kanthi manual.';

  @override
  String get whatWeSaw => 'Sing kita deleng';

  @override
  String get chooseCandidateTitle => 'Saham endi sing dikarepake?';

  @override
  String confidencePercent(int percent) {
    return 'Keyakinan $percent%';
  }

  @override
  String get settings => 'Setelan';

  @override
  String get language => 'Basa';

  @override
  String get systemLanguage => 'Standar sistem';

  @override
  String get about => 'Babagan';

  @override
  String get disclaimer =>
      'Aplikasi iki mung nyedhiyakake informasi lan dudu saran investasi. Data bisa uga telat utawa ora akurat.';

  @override
  String dataSource(String source) {
    return 'Sumber data: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Pangenalan: $source';
  }

  @override
  String get retry => 'Jajal maneh';

  @override
  String get cancel => 'Batal';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Tutup';

  @override
  String get errorGeneric => 'Ana sing salah.';

  @override
  String get errorSectionUnavailable => 'Bagean iki ora bisa dimuat.';

  @override
  String get notAvailable => 't/a';

  @override
  String get sectionIdentity => 'Identifikasi';

  @override
  String get sectionPrice => 'Rega';

  @override
  String get sectionValuation => 'Valuasi';

  @override
  String get sectionFinancials => 'Keuangan';

  @override
  String get sectionDividend => 'Dividen';

  @override
  String get sectionProfile => 'Profil perusahaan';

  @override
  String get sectionAnalysts => 'Rating analis';

  @override
  String get sectionNews => 'Warta';

  @override
  String get sectionRecognition => 'Rincian pangenalan';

  @override
  String get labelSymbol => 'Kode saham';

  @override
  String get labelExchange => 'Bursa';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Mata uang';

  @override
  String get labelCountry => 'Negara';

  @override
  String get labelIndustry => 'Industri';

  @override
  String get labelSector => 'Sektor';

  @override
  String get labelWebsite => 'Situs web';

  @override
  String get labelIpoDate => 'Tanggal IPO';

  @override
  String get labelMarketCap => 'Kapitalisasi pasar';

  @override
  String get labelSharesOutstanding => 'Saham beredar';

  @override
  String get labelEmployees => 'Karyawan';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Kantor pusat';

  @override
  String get labelDescription => 'Katrangan';

  @override
  String get labelLastPrice => 'Rega pungkasan';

  @override
  String get labelChange => 'Owah-owahan';

  @override
  String get labelOpen => 'Rega bukaan';

  @override
  String get labelDayHigh => 'Paling dhuwur dina iki';

  @override
  String get labelDayLow => 'Paling endhek dina iki';

  @override
  String get labelPreviousClose => 'Rega tutup sadurunge';

  @override
  String get labelWeek52High => 'Paling dhuwur 52 minggu';

  @override
  String get labelWeek52Low => 'Paling endhek 52 minggu';

  @override
  String get labelAverageVolume10d => 'Rata-rata volume (10 dina)';

  @override
  String updatedAt(String time) {
    return 'Dianyari $time';
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
  String get labelEvToFcf => 'EV / arus kas bebas';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Pendapatan (TTM)';

  @override
  String get labelNetIncomeTtm => 'Bathi resik (TTM)';

  @override
  String get labelGrossMargin => 'Margin bathi kotor';

  @override
  String get labelOperatingMargin => 'Margin bathi operasi';

  @override
  String get labelNetMargin => 'Margin bathi resik';

  @override
  String get labelRoe => 'Imbal hasil ekuitas (ROE)';

  @override
  String get labelRoa => 'Imbal hasil aset (ROA)';

  @override
  String get labelDebtToEquity => 'Utang / ekuitas';

  @override
  String get labelCurrentRatio => 'Rasio lancar';

  @override
  String get labelRevenueGrowth => 'Tuwuhing pendapatan (YoY)';

  @override
  String get labelEpsGrowth => 'Tuwuhing EPS (YoY)';

  @override
  String get labelDividendYield => 'Imbal hasil dividen';

  @override
  String get labelDividendPerShare => 'Dividen saben saham';

  @override
  String get labelPayoutRatio => 'Rasio pembayaran dividen';

  @override
  String get labelConsensus => 'Konsensus';

  @override
  String get ratingStrongBuy => 'Tuku kuwat';

  @override
  String get ratingBuy => 'Tuku';

  @override
  String get ratingHold => 'Tahan';

  @override
  String get ratingSell => 'Adol';

  @override
  String get ratingStrongSell => 'Adol kuwat';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analis',
      one: '1 analis',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Periode: $period';
  }

  @override
  String get noNews => 'Ora ana warta anyar.';

  @override
  String get openArticle => 'Bukak artikel';

  @override
  String get openLinkFailed => 'Pranala ora bisa dibukak.';

  @override
  String get recognitionSummary => 'Ringkesan';

  @override
  String get recognitionEvidence => 'Kenapa kita mikir ngono';

  @override
  String get recognitionRawText => 'Teks sing diwaca saka gambar';

  @override
  String get errMissingAnthropicKey =>
      'Pangenalan gambar durung disetel (ora ana ANTHROPIC_API_KEY). Ketik kode saham kanthi manual.';

  @override
  String get errRecognitionUnreachable =>
      'Ora bisa nyambung menyang layanan pangenalan. Priksa sambungan internet sampeyan.';

  @override
  String errRecognitionHttp(String status) {
    return 'Layanan pangenalan mbalekake kaluputan (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Layanan pangenalan ora bisa ngolah gambar iki.';

  @override
  String get errRecognitionTruncated =>
      'Respons pangenalan kepunggel. Mangga jajal maneh.';

  @override
  String get errRecognitionBadResponse =>
      'Respons sing ora dikarepake saka layanan pangenalan.';

  @override
  String get errRecognitionEmpty =>
      'Layanan pangenalan mbalekake respons kosong.';

  @override
  String get errMissingFinnhubKey =>
      'Data pasar durung disetel (ora ana FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Ora bisa nyambung menyang layanan data pasar. Priksa sambungan internet sampeyan.';

  @override
  String get errMarketRateLimited =>
      'Kakehan panjalukan menyang layanan data pasar. Mangga ngenteni sak menit.';

  @override
  String errMarketHttp(String status) {
    return 'Layanan data pasar mbalekake kaluputan (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Respons sing ora dikarepake saka layanan data pasar.';

  @override
  String errNoQuote(String symbol) {
    return 'Ora ana data rega kanggo $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Ora ana profil perusahaan kanggo $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Mode demo mung ndhukung $symbols. Tambahake FINNHUB_API_KEY kanggo data langsung.';
  }

  @override
  String errUnknown(String detail) {
    return 'Ana sing salah: $detail';
  }

  @override
  String get newSearch => 'Panelusuran anyar';

  @override
  String get recentSearches => 'Paling anyar';

  @override
  String get noRecentSearches => 'Durung ana panelusuran anyar.';

  @override
  String get clearRecent => 'Busak panelusuran anyar';

  @override
  String get greeting => 'Saham endi sing arep dideleng?';

  @override
  String get searchHint => 'Kode saham utawa jeneng perusahaan';

  @override
  String get attachImage => 'Lampirake gambar';

  @override
  String get searchResultsTitle => 'Asil panelusuran';

  @override
  String errNoResults(String query) {
    return 'Ora ana saham sing ditemokake kanggo “$query”.';
  }

  @override
  String get quickBarHint => 'Ketik kode saham utawa jeneng perusahaan…';

  @override
  String get openFullWindow => 'Bukak jendhela';

  @override
  String hotkeyHint(String shortcut) {
    return 'Tekan $shortcut ing ngendi wae kanggo nimbali WhatStock.';
  }

  @override
  String get trayOpen => 'Bukak WhatStock';

  @override
  String get trayQuickSearch => 'Panelusuran cepet';

  @override
  String get trayQuit => 'Metu';

  @override
  String get appearance => 'Tampilan';

  @override
  String get themeSystem => 'Sistem';

  @override
  String get themeDark => 'Peteng';

  @override
  String get themeLight => 'Padhang';

  @override
  String get back => 'Bali';

  @override
  String get aiSectionTitle => 'Analisis AI';

  @override
  String get aiIntro =>
      'Tinjauan rinci sing ditulis dening AI: ringkesan warta paling anyar, bisnis, kaluwihan, risiko lan faktor sing ora katon, valuasi, prospek rega kanthi skenario saka sudut pandang psikologis, sosiologis, teknikal, lan makro, lan apa sing kudu digatekake.';

  @override
  String get aiGenerate => 'Gawe analisis';

  @override
  String get aiRegenerate => 'Gawe maneh';

  @override
  String get aiGenerating =>
      'Nyiapake analisis… iki bisa mbutuhake wektu siji utawa rong menit.';

  @override
  String get aiSources => 'Sumber';

  @override
  String aiGeneratedAt(String time) {
    return 'Digawe $time';
  }

  @override
  String get aiDisclaimer =>
      'Analisis sing digawe dening AI adhedhasar data umum lan warta paling anyar. Bisa uga ngemot kaluputan utawa wis ora anyar, lan dudu saran investasi.';

  @override
  String get errAiNotConfigured =>
      'Analisis AI durung disetel (ora ana ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Ora bisa nyambung menyang layanan AI. Priksa sambungan internet sampeyan.';

  @override
  String errAiHttp(String status) {
    return 'Layanan AI mbalekake kaluputan (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Layanan AI ora gelem nganalisis saham iki.';

  @override
  String get errAiBadResponse => 'Respons sing ora dikarepake saka layanan AI.';

  @override
  String get sectionChart => 'Grafik rega';

  @override
  String get rangeOneWeek => '1M';

  @override
  String get rangeOneMonth => '1S';

  @override
  String get rangeThreeMonths => '3S';

  @override
  String get rangeOneYear => '1T';

  @override
  String get rangeFiveYears => '5T';

  @override
  String get chartUnavailable =>
      'Riwayat rega ora kasedhiya saka sumber data saiki.';

  @override
  String get sectionStatements => 'Laporan keuangan (taunan)';

  @override
  String get labelFiscalYear => 'Taun fiskal';

  @override
  String get labelRevenue => 'Pendapatan';

  @override
  String get labelNetIncome => 'Bathi resik';

  @override
  String get labelTotalAssets => 'Total aset';

  @override
  String get labelTotalLiabilities => 'Total liabilitas';

  @override
  String get labelEquity => 'Ekuitas pemegang saham';

  @override
  String get labelOperatingCashFlow => 'Arus kas operasi';

  @override
  String get statementsUnavailable =>
      'Laporan keuangan sing dilaporake ora kasedhiya kanggo saham iki.';

  @override
  String get launchAtLogin => 'Bukak nalika mlebu';

  @override
  String get hotkeyLabel => 'Trabasan global';

  @override
  String get hotkeyRecordHint =>
      'Klik ing kene, banjur tekan kombinasi tombol sing anyar';

  @override
  String get hotkeyReset => 'Balekake menyang standar';

  @override
  String get pasteImage => 'Tempel gambar saka papan klip';

  @override
  String get errClipboardNoImage => 'Ora ana gambar ing papan klip.';

  @override
  String get favorites => 'Favorit';

  @override
  String get addToFavorites => 'Tambahake menyang favorit';

  @override
  String get removeFromFavorites => 'Busak saka favorit';

  @override
  String get noFavorites =>
      'Durung ana favorit. Tutul lintang ing saham kanggo nambahake.';

  @override
  String get displayCurrency => 'Mata uang tampilan';

  @override
  String get displayCurrencyNone => 'Mung mata uang saham dhewe';

  @override
  String labelConverted(String currency) {
    return '≈ ing $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Kurs: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Anyaran';

  @override
  String currentVersion(String version) {
    return 'Versi $version';
  }

  @override
  String get autoUpdate => 'Instal anyaran kanthi otomatis';

  @override
  String get checkForUpdates => 'Priksa anyaran';

  @override
  String get updateChecking => 'Lagi mriksa anyaran…';

  @override
  String get updateUpToDate => 'Sampeyan wis nganggo versi paling anyar.';

  @override
  String updateAvailable(String version) {
    return 'Versi $version wis kasedhiya.';
  }

  @override
  String get updateDownloading => 'Lagi ngundhuh anyaran ing latar mburi…';

  @override
  String get updateDownloaded =>
      'Anyaran wis siyap. Wiwiti maneh kanggo nginstal.';

  @override
  String get updateNow => 'Nganyari';

  @override
  String get restartNow => 'Wiwiti maneh';

  @override
  String get updatesViaStore =>
      'Anyaran ditampa kanthi otomatis liwat toko aplikasi.';

  @override
  String get updateCheckFailed => 'Ora bisa mriksa anyaran.';

  @override
  String get subscription => 'Langganan';

  @override
  String get planTrial => 'Nyoba';

  @override
  String get planNormal => 'Normal';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Ora ana paket aktif';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count analisis saben sasi';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Nyoba gratis $days dina karo $count analisis';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Isih $days dina masa nyoba',
      one: 'Isih 1 dina masa nyoba',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Masa nyoba gratis sampeyan wis rampung. Pilih paket kanggo nerusake analisis.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Isih $remaining saka $total analisis ing periode iki';
  }

  @override
  String extraCredits(int count) {
    return '$count analisis tambahan';
  }

  @override
  String renewsOn(String date) {
    return 'Dianyari maneh $date';
  }

  @override
  String get choosePlan => 'Pilih paket';

  @override
  String get currentPlan => 'Paket saiki';

  @override
  String get subscribe => 'Langganan';

  @override
  String get perMonth => '/ sasi';

  @override
  String get extraPacksTitle => 'Butuh luwih akeh? Tuku analisis tambahan';

  @override
  String get extraPacksHint =>
      'Analisis tambahan ora tau kadaluwarsa lan digunakake sawise kuota saben sasi entek.';

  @override
  String get buy => 'Tuku';

  @override
  String get restorePurchases => 'Pulihake tukon';

  @override
  String get manageSubscription => 'Atur langganan';

  @override
  String get purchaseSuccess => 'Matur nuwun! Tukon sampeyan wis aktif.';

  @override
  String get purchasePending => 'Tukon lagi diproses…';

  @override
  String get purchaseFailed => 'Tukon ora bisa dirampungake.';

  @override
  String get purchaseCanceled => 'Tukon dibatalake.';

  @override
  String get billingUnavailable =>
      'Tukon durung kasedhiya ing platform iki. Langganan ing HP utawa Mac sampeyan; paket sampeyan bakal bisa digunakake ing kabeh piranti.';

  @override
  String get errQuotaExceeded =>
      'Analisis sampeyan kanggo periode iki wis entek. Tingkatake paket utawa tuku analisis tambahan.';

  @override
  String get errTrialExpired =>
      'Masa nyoba gratis sampeyan wis rampung. Pilih paket kanggo nerusake.';

  @override
  String get errNoPlan => 'Analisis AI mbutuhake paket aktif.';

  @override
  String get viewPlans => 'Deleng paket';

  @override
  String get usageTitle => 'Panggunaan';

  @override
  String get demoPurchaseNote =>
      'Tagihan demo: tukon ing platform iki mung simulasi.';

  @override
  String get mostPopular => 'Paling populer';

  @override
  String get bestValue => 'Paling untung';

  @override
  String get planFeaturesCommon =>
      'Pangenalan foto, data langsung, grafik, favorit, lan kabeh 120 basa kalebu ing saben paket. Kuota ditrapake kanggo analisis AI.';

  @override
  String get searchLanguages => 'Golek basa…';

  @override
  String get noLanguageMatch => 'Ora ana basa sing cocog.';

  @override
  String get aiSettings => 'Analisis AI';

  @override
  String get aiLength => 'Dawa';

  @override
  String get aiDepthBrief => 'Ringkes';

  @override
  String get aiDepthStandard => 'Standar';

  @override
  String get aiDepthDeep => 'Jero';

  @override
  String get aiDepthBriefDesc => 'Bab-bab penting, kanthi cepet.';

  @override
  String get aiDepthStandardDesc => 'Laporan lengkap kanthi saben bagean.';

  @override
  String get aiDepthDeepDesc =>
      'Luwih akeh telusuran web, perbandingan karo perusahaan sejenis lan rincian sing luwih jero.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Kira-kira $min–$max tembung';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'nggunakake $count analisis',
      one: 'nggunakake 1 analisis',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Tingkat pamaca';

  @override
  String get aiReaderBeginner => 'Pemula';

  @override
  String get aiReaderExperienced => 'Pengalaman';

  @override
  String get aiReaderBeginnerDesc =>
      'Basa sing gampang; saben istilah teknis diterangake.';

  @override
  String get aiReaderExperiencedDesc =>
      'Teks luwih padhet kanthi istilah keuangan standar.';

  @override
  String get aiCounterArgument => 'Argumen tandhing paling kuwat';

  @override
  String get aiCounterArgumentDesc =>
      'Ringkesan tansah dipungkasi karo argumen paling kuwat sing nglawan kesimpulane dhewe.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nganti $count telusuran web saben analisis karo paket sampeyan',
      one: 'Nganti 1 telusuran web saben analisis karo paket sampeyan',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Dawa standar miturut paket: Normal $normal, Pro $pro, Max $max, Ultra $ultra. Ringkes nggunakake 2 luwih sithik, Jero 2 luwih akeh.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'nganti $count telusuran web',
      one: 'nganti 1 telusuran web',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count telusuran web saben analisis',
      one: '1 telusuran web saben analisis',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Dawa iki mbutuhake $needed analisis, nanging mung kari $left. Pilih dawa sing luwih cendhak ing Setelan utawa entuk analisis tambahan.';
  }

  @override
  String get outlookMarketMood => 'Swasana pasar';

  @override
  String get moodVeryPessimistic => 'Pesimis banget';

  @override
  String get moodPessimistic => 'Pesimis';

  @override
  String get moodNeutral => 'Netral';

  @override
  String get moodOptimistic => 'Optimis';

  @override
  String get moodVeryOptimistic => 'Optimis banget';

  @override
  String get scenarioBull => 'Skenario optimis';

  @override
  String get scenarioBase => 'Skenario dhasar';

  @override
  String get scenarioBear => 'Skenario pesimis';

  @override
  String outlookCurrentPrice(String price) {
    return 'Rega saiki: $price';
  }

  @override
  String get outlookKeyLevels => 'Level penting';

  @override
  String get keyLevelSupport => 'Support';

  @override
  String get keyLevelResistance => 'Resistance';

  @override
  String get keyLevelAnchor => 'Jangkar';

  @override
  String get upcomingEvents => 'Acara sing bakal teka';

  @override
  String get outlookChartNote =>
      'Kisaran indikatif; probabilitas mung pambiji kasar, dudu ramalan.';

  @override
  String get accountTitle => 'Akun';

  @override
  String get signIn => 'Mlebu';

  @override
  String get signOut => 'Metu';

  @override
  String get notSignedIn => 'Durung mlebu';

  @override
  String get accountBenefit =>
      'Mlebu supaya langganan sampeyan bisa digunakake ing kabeh piranti sampeyan.';

  @override
  String get accountSyncedNote =>
      'Langganan lan sisa analisis sampeyan padha ing saben piranti.';

  @override
  String get signInTitle => 'Mlebu menyang WhatStock';

  @override
  String get emailLabel => 'Alamat email';

  @override
  String get continueWithEmail => 'Terusake nganggo email';

  @override
  String codeSentTo(String email) {
    return 'Kita wis ngirim kode 6 digit menyang $email. Kode iki laku nganti 10 menit.';
  }

  @override
  String get codeLabel => 'Kode mlebu';

  @override
  String get resendCode => 'Kirim kode anyar';

  @override
  String get useDifferentEmail => 'Nganggo email liya';

  @override
  String get errInvalidCode => 'Kode salah utawa wis kadaluwarsa.';

  @override
  String get errInvalidEmail => 'Mangga lebokake alamat email sing bener.';

  @override
  String get errSignInFailed =>
      'Gagal mlebu. Priksa sambungan internet sampeyan lan jajal maneh.';

  @override
  String get checkoutWaiting =>
      'Rampungake pambayaran ing browser sampeyan. Aplikasi bakal nganyari kanthi otomatis yen wis rampung.';

  @override
  String get paymentViaStripe =>
      'Pambayaran aman ing browser sampeyan liwat Stripe. Bisa dibatalake kapan wae.';

  @override
  String get paymentViaStore =>
      'Ditagih liwat akun App Store utawa Google Play sampeyan. Bisa dibatalake kapan wae ing setelan toko.';

  @override
  String get keySpace => 'Spasi';

  @override
  String get doubleOptionTitle => 'Tekan Option kaping pindho';

  @override
  String get doubleOptionSubtitle =>
      'Mencet tombol Option kaping pindho kanthi cepet uga bakal nimbali WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Supaya bisa mlaku ing aplikasi liyane uga, wenehana idin marang WhatStock ing Setelan Sistem → Privasi & Keamanan → Pemantauan Input, banjur bukak maneh aplikasine.';

  @override
  String get openSystemSettings => 'Bukak Setelan Sistem';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Tekan $shortcut utawa tekan Option kaping pindho ing ngendi wae kanggo nimbali WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Paling mungkin';

  @override
  String get longTermToday => 'Dina iki';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years taun',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range saben taun';
  }

  @override
  String longTermLikely(String price) {
    return 'paling mungkin $price';
  }

  @override
  String get confidenceLow => 'Kapercayan endhek';

  @override
  String get confidenceMedium => 'Kapercayan sedheng';

  @override
  String get confidenceHigh => 'Kapercayan dhuwur';

  @override
  String get longTermNote =>
      'Rentang jangka dawa adhedhasar asumsi sing kasebut lan saya amba saka wektu menyang wektu. Rega durung kalebu dividen. Kira-kira kasar, dudu ramalan.';

  @override
  String get portfolio => 'Portofolio';

  @override
  String get portfolioEmpty =>
      'Durung ana apa-apa. Bukak saham lan tutul “Tambahake menyang portofolio” kanggo ngawasi sahammu.';

  @override
  String get portfolioLocalNote =>
      'Mung disimpen ing piranti iki. Total diowahi nganggo kurs referensi ECB; rega bisa telat.';

  @override
  String get addToPortfolio => 'Tambahake menyang portofolio';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Tambahake $symbol';
  }

  @override
  String get portfolioQuantity => 'Cacahe saham';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Rega saben saham ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Tanggal tuku';

  @override
  String get portfolioAdd => 'Tambahake';

  @override
  String get portfolioInvalidNumber => 'Lebokake angka luwih saka nol.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol wis ditambahake menyang portofolio.';
  }

  @override
  String get portfolioTotalValue => 'Nilai total';

  @override
  String get portfolioToday => 'Dina iki';

  @override
  String get portfolioGainLoss => 'Bathi/rugi';

  @override
  String get portfolioInvested => 'Diinvestasekake';

  @override
  String get portfolioAllocation => 'Alokasi';

  @override
  String get portfolioPositions => 'Posisi';

  @override
  String portfolioAvgCost(String price) {
    return 'rega rata-rata $price';
  }

  @override
  String get portfolioYourPosition => 'Posisimu';

  @override
  String get portfolioPurchases => 'Tukon';

  @override
  String get portfolioRemove => 'Busak';

  @override
  String get portfolioExcluded =>
      'Posisi tanpa rega utawa kurs ora diétung ing total.';

  @override
  String get priceAlerts => 'Pèngetan rega';

  @override
  String get setPriceAlert => 'Atur pèngetan rega';

  @override
  String alertDialogTitle(String symbol) {
    return 'Pèngetan rega · $symbol';
  }

  @override
  String get alertKindAbove => 'Munggah ngluwihi';

  @override
  String get alertKindBelow => 'Mudhun ngisoré';

  @override
  String get alertKindMove => 'Obah banget sajroning sedina';

  @override
  String alertTargetPrice(String currency) {
    return 'Rega ($currency)';
  }

  @override
  String get alertMovePercent => 'Owah-owahan saben dina (%)';

  @override
  String get alertAlreadyMet => 'Rega wis ngliwati level iki.';

  @override
  String get alertSave => 'Atur pèngetan';

  @override
  String alertCreated(String symbol) {
    return 'Pèngetan kanggo $symbol wis diatur.';
  }

  @override
  String get alertsEmpty =>
      'Durung ana pèngetan. Bukak saham lan tutul lonceng.';

  @override
  String get alertsNote =>
      'Pèngetan dipriksa saben 5 menit sajrone WhatStock mlaku. Ing komputer, aplikasi tetep mlaku ing bilah menu utawa baki sistem; ing HP, saiki pèngetan mung teka nalika aplikasi dibukak.';

  @override
  String alertDescAbove(String price) {
    return 'Ing ndhuwur $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Ing ngisor $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Owah-owahan saben dina ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Aktif $date ing rega $price';
  }

  @override
  String get alertRearm => 'Aktifaké manèh';

  @override
  String get alertDelete => 'Busak';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol munggah ngluwihi $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol mudhun ngisoré $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol obah $percent dina iki';
  }

  @override
  String alertHitBody(String price) {
    return 'Rega saiki: $price';
  }

  @override
  String get alertOpen => 'Bukak';

  @override
  String get keepInTrayTitle => 'Tetep mlaku nalika jendhéla ditutup';

  @override
  String get keepInTraySubtitle =>
      'WhatStock tetep ana ing bilah menu utawa baki sistem, mula trabasan lan pèngetan rega tetep mlaku.';

  @override
  String get termsOfUse => 'Katemtuan Panganggo';

  @override
  String get privacyPolicy => 'Kawicaksanan Privasi';

  @override
  String get subscriptionLegal =>
      'Langganan otomatis dianyari saben sasi nganti sampeyan mbatalake. Kanthi langganan, sampeyan nampa Katemtuan Panganggo lan Kawicaksanan Privasi.';

  @override
  String get deleteAccount => 'Busak akun';

  @override
  String get deleteAccountTitle => 'Busak akun sampeyan?';

  @override
  String get deleteAccountBody =>
      'Akun sampeyan lan kabèh sing disimpen ing server kita (email, kuota, panggunaan) bakal dibusak permanen, lan analisis sing durung dienggo bakal ilang. Langganan sing dibayar ing browser langsung dibatalake; langganan App Store utawa Google Play kudu dibatalake ing setelan toko.';

  @override
  String get deleteLocalData =>
      'Busak uga data ing piranti iki (portofolio, pèngetan, favorit, riwayat, analisis sing disimpen)';

  @override
  String get deleteAccountConfirm => 'Busak permanen';

  @override
  String get accountDeleted => 'Akun sampeyan wis dibusak.';

  @override
  String get errDeleteAccount =>
      'Akun ora bisa dibusak. Priksa sambungan lan coba manèh.';

  @override
  String get aiTrialBriefNote =>
      'Analisis nyoba iku ringkes lan digawe nganggo model AI sing luwih cepet. Kanthi paket, sampeyan entuk AI paling canggih saka kita, luwih akeh telusuran web, lan dawa Standar lan Jero.';

  @override
  String get billingMonthly => 'Saben sasi';

  @override
  String get billingYearly => 'Saben taun';

  @override
  String get yearlyDiscount => 'Gratis 2 sasi';

  @override
  String get perYear => '/ taun';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price saben sasi';
  }

  @override
  String get subscriptionLegalYearly =>
      'Langganan taunan otomatis dianyari saben taun nganti sampeyan mbatalake. Kanthi langganan, sampeyan nampa Katemtuan Panganggo lan Kawicaksanan Privasi.';

  @override
  String get myAnalyses => 'Analisisku';

  @override
  String get navAlerts => 'Pèngetan';

  @override
  String get inviteTitle => 'Pratinjau tertutup';

  @override
  String get inviteBody =>
      'Saiki WhatStock mung bisa dienggo nganggo undangan. Lebokna kode undangan sing wis sampeyan tampa.';

  @override
  String get inviteCodeLabel => 'Kode undangan';

  @override
  String get inviteContinue => 'Terusake';

  @override
  String get inviteInvalid => 'Kode undangan iki ora valid.';

  @override
  String get inviteExpired =>
      'Undangan iki wis kadaluwarsa. Njaluka kode anyar marang wong sing ngundang sampeyan.';

  @override
  String get inviteDeviceLimit =>
      'Kode undangan iki wis dienggo ing jumlah piranti maksimal.';

  @override
  String get previewConfidential => 'Pratinjau rahasia';

  @override
  String get errPreviewDailyLimit =>
      'Watesan analisis dina iki kanggo pratinjau iki wis entek. Coba maneh sesuk.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jam kepungkur',
      one: '1 jam kepungkur',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dina kepungkur',
      one: '1 dina kepungkur',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Anyari analisis iki?';

  @override
  String staleBody(String age) {
    return 'Analisis iki digawe $age. Rega, kabar, lan asil bisa uga wis owah wiwit iku.';
  }

  @override
  String get staleKeep => 'Tampilake sing sadurunge';

  @override
  String get staleRefresh => 'Gawe sing anyar';

  @override
  String seeAll(int count) {
    return 'Deleng kabeh ($count)';
  }

  @override
  String get searchAnalyses => 'Goleki analisismu';

  @override
  String get deleteAnalysis => 'Busak';

  @override
  String analysisDeleted(String symbol) {
    return 'Analisis $symbol wis dibusak';
  }

  @override
  String get keyLevelAlertHint =>
      'Tutul level kanggo éntuk pèngetan nalika rega tekan level kasebut.';

  @override
  String get shareAnalysisTitle => 'Bagekake analisis';

  @override
  String get shareAsImage => 'Bagekake minangka gambar';

  @override
  String get shareAsText => 'Bagekake minangka teks';

  @override
  String get shareCardFooter => 'Digawe nganggo WhatStock';

  @override
  String get shareCardDisclaimer => 'Analisis AI · dudu saran investasi';

  @override
  String get referralTitle => 'Undang kanca';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analisis tambahan',
      one: '1 analisis tambahan',
    );
    return 'Bagekake kodhemu. Kancamu langsung entuk $_temp0, lan kowe entuk semono uga sawise analisis pisanane.';
  }

  @override
  String get referralYourCode => 'Kodhemu';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Diundang: $invited · Entuk ganjaran: $rewarded';
  }

  @override
  String get referralHaveCode => 'Duwe kodhe saka kanca?';

  @override
  String get referralRedeem => 'Tukarake';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analisis tambahan wis ditambahake. Sugeng rawuh!',
      one: '1 analisis tambahan wis ditambahake. Sugeng rawuh!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Kodhe iki ora ana. Priksanen lan coba maneh.';

  @override
  String get referralErrOwn => 'Kowe ora bisa nukarake kodhemu dhewe.';

  @override
  String get referralErrAlready => 'Kowe wis tau nukarake kodhe saka kanca.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analisis tambahan',
      one: '1 analisis tambahan',
    );
    return 'Aku nganalisis saham nganggo WhatStock: foto sahame lan AI bakal nerangake. Nganggo kodheku $code kowe entuk $_temp0.';
  }

  @override
  String get referralCopied => 'Kodhe disalin';

  @override
  String get onboardTitle1 => 'Fotonen saham';

  @override
  String get onboardBody1 =>
      'Cukup layar aplikasi broker, koran utawa logo perusahaan: WhatStock bakal ngenali sahamé lan nuduhaké rega, grafik lan angka-angka pentingé.';

  @override
  String get onboardTitle2 => 'Ngerti sajroning sawetara menit';

  @override
  String get onboardBody2 =>
      'Analisis AI njlèntrèhaké apa sing nggerakaké saham, risikoné, valuasiné lan telung skenario arah rega, kanthi sumber lan nganggo basamu.';

  @override
  String get onboardTitle3 => 'Tansah ngerti kabar anyar';

  @override
  String get onboardBody3 =>
      'Favorit, portofoliomu lan pèngetan rega bakal ngabari kowé. Analisismu tetep ana ing piranti, siap dibukak manèh.';

  @override
  String get onboardNext => 'Sabanjuré';

  @override
  String get onboardStart => 'Ayo miwiti';

  @override
  String get onboardSkip => 'Liwati';

  @override
  String changesTitle(String date) {
    return 'Wiwit analisis sadurunge ($date)';
  }

  @override
  String get changesPrice => 'Rega';

  @override
  String get changesNoMajor => 'Prospek ora owah kanthi wigati.';

  @override
  String get changesPreviousSummary => 'Ringkesan sadurunge';

  @override
  String get telemetryTitle => 'Bantu nggawe WhatStock luwih apik';

  @override
  String get telemetryBody =>
      'Bagekaké statistik panggunaan anonim lan laporan aplikasi macet: fitur endi sing digunakaké lan apa sing salah. Ora tau saham, analisis, utawa data pribadhimu. Kowé bisa ngganti iki kapan waé ing Setelan.';

  @override
  String get telemetryAllow => 'Idinaké';

  @override
  String get telemetryDecline => 'Ora, matur nuwun';

  @override
  String get telemetrySetting => 'Statistik anonim lan laporan aplikasi macet';

  @override
  String get telemetrySettingHint =>
      'Sepira kerepé fitur digunakaké lan laporan kasalahan, tanpa data pribadhi utawa isi panelusuran lan analisismu.';

  @override
  String get askButton => 'Takon babagan analisis iki';

  @override
  String askTitle(String symbol) {
    return 'Pitakon babagan $symbol';
  }

  @override
  String get askIntro =>
      'Takon apa waé babagan analisis iki: apa tegesé sawijining risiko, apa sing bisa ngowahi prospeké, kepriyé sawijining angka diétung. Wangsulané adhedhasar analisis iki lan dudu saran investasi.';

  @override
  String get askHint => 'Takon apa waé…';

  @override
  String get askSend => 'Kirim';

  @override
  String get askThinking => 'Lagi mikir…';

  @override
  String get askSuggest1 => 'Apa risiko sing paling gedhé?';

  @override
  String get askSuggest2 => 'Apa sing bisa ngowahi prospeké?';

  @override
  String get askSuggest3 => 'Jelasna nganggo basa sing gampang';

  @override
  String get askMaxReached =>
      'Kuwi pitakon pungkasan kanggo analisis iki. Gawe analisis anyar yen arep takon manèh.';

  @override
  String get errAskLimit =>
      'Watesan pitakon dina iki wis entek. Coba maneh sesuk.';

  @override
  String get eventTomorrow => 'Sesuk';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days dina engkas',
      one: '1 dina engkas',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Laporan kuartalan';

  @override
  String get eventBeforeOpen => 'sadurunge pasar buka';

  @override
  String get eventAfterClose => 'sawise pasar tutup';

  @override
  String eventEpsEstimate(String value) {
    return 'Prakiraan EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Saka analisismu';

  @override
  String get eventsHint =>
      'Tanggal laporan saham favorit lan portofoliomu kanggo 90 dina sabanjure, uga acara sing ana tanggale sing ditandhani analisismu.';

  @override
  String get eventsEmpty =>
      'Ora ana acara sing ana tanggale ing 90 dina sabanjure. Tambahna favorit utawa saham portofolio supaya tanggal laporane katon ing kene.';

  @override
  String get compareTitle => 'Bandhingake';

  @override
  String get compareAdd => 'Tambahake saham';

  @override
  String get compareRemove => 'Busak';

  @override
  String get compareTickerHint => 'Kode saham, upamane MSFT';

  @override
  String get compareHint =>
      'Angka utama jejer-jejer; nilai paling apik ing saben baris disorot. Jumlah ing mata uang saben saham dhewe-dhewe.';

  @override
  String get compareNoAnalysis => 'Durung ana analisis';

  @override
  String get portfolioDividends => 'Dividen taunan';

  @override
  String portfolioDividendYield(String percent) {
    return 'Imbal hasil $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Dividen taunan sing dikira-kira adhedhasar dividen sing dibayar sajrone 12 sasi pungkasan; pambayaran ing mbesuk ora dijamin.';

  @override
  String positionDividend(String amount) {
    return 'Dividen: $amount saben taun';
  }

  @override
  String get chartAvgCost => 'Rata-ratamu';

  @override
  String get chartAlertLevel => 'Pèngetan';

  @override
  String get marketsToday => 'Pasar dina iki';

  @override
  String get notesTitle => 'Cathetanku';

  @override
  String get notesHint =>
      'Kenapa sampeyan tuku, apa sing sampeyan pantau, apa sing bakal nggawe sampeyan adol?';

  @override
  String get notesInfo =>
      'Mung disimpen ing piranti iki. Analisis AI nggatekake cathetan sampeyan.';

  @override
  String notesSaved(String date) {
    return 'Disimpen $date';
  }

  @override
  String get peersTitle => 'Perusahaan sing padha';

  @override
  String get portfolioExport => 'Ekspor dadi CSV';

  @override
  String get portfolioImport => 'Impor saka CSV';

  @override
  String get portfolioImportHint =>
      'Tempelake siji tukon saben baris: kode saham, jumlah, rega, mata uang, tanggal (YYYY-MM-DD). Kolom bisa dipisah nganggo koma, titik koma utawa tab; baris irah-irahan ora wajib.';

  @override
  String get portfolioImportButton => 'Impor';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tukon wis ditambahake',
      one: '1 tukon wis ditambahake',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count baris dilewati',
      one: '1 baris dilewati',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Portofolio, favorit, pèngetan rega, lan cathetan disinkronaké ing kabèh piranti sampeyan.';

  @override
  String syncLast(String time) {
    return 'Pungkasan disinkronaké $time';
  }

  @override
  String get syncNow => 'Sinkronaké saiki';

  @override
  String get syncFailed =>
      'Sinkronisasi gagal. Bakal dicoba manèh kanthi otomatis.';

  @override
  String get alertEmailTitle => 'Email nalika pèngetan aktif';

  @override
  String get alertEmailOn =>
      'Kita mriksa pèngetan sampeyan saben sawetara menit lan ngirim email marang sampeyan, sanajan aplikasi ditutup.';

  @override
  String get alertEmailSignIn =>
      'Mlebu nganggo email sampeyan ing Setelan supaya nampa pèngetan liwat email, sanajan aplikasi ditutup.';

  @override
  String get portfolioHistory => 'Nilai saka wektu ke wektu';

  @override
  String get portfolioReviewTitle => 'Tinjauan portofolio AI';

  @override
  String get portfolioReviewIntro =>
      'AI mriksa kabèh portofoliomu: konsentrasi, gumantungé marang sektor lan mata uang, risiko sing padha ing saham-sahammu, lan dividen. Nggunakake 1 analisis.';

  @override
  String get portfolioReviewButton => 'Priksa portofolioku';

  @override
  String get portfolioReviewAgain => 'Priksa maneh';

  @override
  String get portfolioReviewWorking => 'Mriksa portofoliomu…';

  @override
  String get digestTitle => 'Ringkesan mingguan liwat email';

  @override
  String get digestHint =>
      'Saben Senin: obahé favorit lan portofolio sampeyan minggu kepungkur, uga tanggal laporan kuartalan sing bakal teka.';

  @override
  String get benchmarkTitle => 'Dibandhingake karo S&P 500';

  @override
  String get benchmarkYours => 'Tumbasan sampeyan';

  @override
  String get benchmarkIndex => 'Jumlah padha ing S&P 500';

  @override
  String benchmarkAhead(String points) {
    return '$points poin persentase luwih apik tinimbang indeks';
  }

  @override
  String benchmarkBehind(String points) {
    return '$points poin persentase ing ngisor indeks';
  }

  @override
  String get benchmarkHint =>
      'Kaya-kaya saben tumbasan diinvestasekake menyang reksa dana indeks S&P 500 ing dina sing padha. Tanpa dividen; asil kepungkur ora bisa kanggo ngramal asil ing mbesuk.';

  @override
  String get portfolioSell => 'Dol';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Dol $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Rega dodolan saben saham ($currency)';
  }

  @override
  String get portfolioSellDate => 'Tanggal adol';

  @override
  String get portfolioSellAll => 'Kabeh';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Sampeyan duwe $quantity';
  }

  @override
  String get portfolioSold => 'Didol';

  @override
  String get portfolioRealized => 'Terealisasi';

  @override
  String get portfolioClosed => 'Posisi ditutup';

  @override
  String get portfolioClosedNote => 'Kabeh saham wis didol';

  @override
  String get portfolioTransactions => 'Transaksi';

  @override
  String get portfolioRealizedByYear => 'Bathi terealisasi saben taun';

  @override
  String get portfolioRealizedHint =>
      'Dodolan dicocogake dhisik karo tukon sing paling lawas (FIFO), diowahi nganggo kurs dina iki. Kanggo laporan pajeg, gunakake laporan saka broker sampeyan.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Wiwit analisis iki, laporan kuartalan anyar wis metu ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Laporan anyar';

  @override
  String get portfolioImportBrokers =>
      'Ekspor saka Revolut, Trading 212 lan Interactive Brokers uga dikenali, kalebu dodolan; dividen lan setoran dilewati.';

  @override
  String get portfolioImportFile => 'Pilih file';

  @override
  String offlineBanner(String time) {
    return 'Ora ana sambungan – nampilaké data sing pungkasan disimpen ($time).';
  }

  @override
  String get glossMarketCap =>
      'Pira regane kabeh perusahaan ing pasar saham: rega saham × cacahe saham.';

  @override
  String get glossSharesOutstanding =>
      'Pira cacahe saham sing diterbitake perusahaan. Yen tambah, saben saham nduwe bagean sing luwih cilik; tuku maneh saham (buyback) nyuda cacahe.';

  @override
  String get glossPeTrailing =>
      'Rega ÷ bathi saben saham 12 sasi pungkasan: pirang taun bathi saiki sing mbok bayar. Luwih endhek tegese luwih murah, nanging perusahaan sing tuwuh cepet biasane P/E-ne dhuwur.';

  @override
  String get glossPeForward =>
      'Kaya P/E, nanging nganggo bathi sing dikira analis kanggo 12 sasi ngarep. Yen luwih endhek tinimbang P/E trailing, bathi dikira bakal tuwuh.';

  @override
  String get glossPb =>
      'Rega ÷ nilai buku (aset dikurangi utang) saben saham. Watara 1 tegese pasar ngregani perusahaan padha karo apa sing diduweni ing kertas.';

  @override
  String get glossPs =>
      'Nilai pasar ÷ pendapatan taunan. Migunani kanggo perusahaan sing bathine isih sithik utawa durung ana; bandhingna ing industri sing padha.';

  @override
  String get glossEvToFcf =>
      'Nilai perusahaan kalebu utang (EV) ÷ dhuwit sing diasilake sajrone setaun sawise investasi. Luwih endhek tegese sampeyan oleh dhuwit luwih akeh kanggo regane.';

  @override
  String get glossPeg =>
      'P/E ÷ pangarep-arep tuwuhing bathi saben taun (%). Watara 1 asring dianggep adil; iki ndeleng P/E saka sisih tuwuhe.';

  @override
  String get glossEps =>
      'Bathi saben saham sajrone 12 sasi pungkasan. EPS sing mundhak saka taun menyang taun minangka salah siji tandha paling kuwat perusahaan sing sehat.';

  @override
  String get glossBeta =>
      'Sepira saham kerep obah bareng pasar: 1 = kaya pasar, 1,5 = obahe watara 50% luwih gedhe, ing ngisor 1 = luwih anteng.';

  @override
  String get glossRevenueTtm =>
      'Gunggung dodolan 12 sasi pungkasan, sadurunge biaya apa wae.';

  @override
  String get glossNetIncomeTtm =>
      'Bathi sing isih ana sawise kabeh biaya, bunga lan pajek sajrone 12 sasi pungkasan.';

  @override
  String get glossGrossMargin =>
      'Bagean pendapatan sing isih ana sawise biaya langsung produk. Margin dhuwur asring nuduhake kekuwatan nemtokake rega.';

  @override
  String get glossOperatingMargin =>
      'Bagean pendapatan sing isih ana sawise biaya nglakokake usaha (bayaran, sewa, pemasaran), sadurunge bunga lan pajek.';

  @override
  String get glossNetMargin =>
      'Bagean pendapatan sing dadi bathi pungkasan. 20% tegese saka saben 100 dodolan, 20 iku bathi.';

  @override
  String get glossRoe =>
      'Imbal hasil ekuitas: bathi taunan ÷ modal sing nduweni. Nuduhake sepira apik manajemen nggunakake dhuwite pemegang saham; ing ndhuwur watara 15% kalebu kuwat.';

  @override
  String get glossRoa =>
      'Imbal hasil aset: bathi taunan ÷ kabeh sing diduweni perusahaan. Bandhingna ing industri sing padha.';

  @override
  String get glossDebtToEquity =>
      'Utang ÷ modal sing nduweni. Luwih dhuwur tegese luwih akeh dhuwit utangan: risiko luwih gedhe nalika bunga mundhak utawa usaha alon.';

  @override
  String get glossCurrentRatio =>
      'Aset jangka cendhak ÷ tagihan sing kudu dibayar sajrone setaun. Ing ndhuwur 1 tegese perusahaan bisa nutup tagihan sing cedhak.';

  @override
  String get glossRevenueGrowth =>
      'Sepira pendapatan tuwuh dibandhingake setaun kepungkur.';

  @override
  String get glossEpsGrowth =>
      'Sepira bathi saben saham tuwuh dibandhingake setaun kepungkur.';

  @override
  String get glossDividendYield =>
      'Dividen taunan ÷ rega saham: pemasukan dhuwit sing bakal sampeyan tampa saben taun, minangka persentase saka sing sampeyan bayar.';

  @override
  String get glossDividendPerShare =>
      'Dividen sing dibayar kanggo siji saham sajrone setaun kepungkur.';

  @override
  String get glossPayoutRatio =>
      'Bagean bathi sing dibayarake minangka dividen. Ing ndhuwur 100% perusahaan mbayar luwih akeh tinimbang sing diasilake, lan iki arang suwe.';

  @override
  String get glossTitle => 'Apa tegese?';

  @override
  String get watchNewsTitle => 'Warta saham sampeyan';

  @override
  String get undo => 'Wurungaké';

  @override
  String get watchSort => 'Urutaké';

  @override
  String get watchSortOwn => 'Urutanku';

  @override
  String get watchSortGainers => 'Mundhak paling gedhé dhisik';

  @override
  String get watchSortLosers => 'Mudhun paling gedhé dhisik';

  @override
  String get watchSortName => 'Miturut kode saham (A–Z)';

  @override
  String get watchHint =>
      'Seret gagang kanggo ngurutaké manèh, gésér ngiwa kanggo mbusak. Garis nuduhaké 30 dina pungkasan.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: analisis sampeyan wis siyap.';
  }

  @override
  String alertFromCost(String price) {
    return 'Saka rega tuku rata-rata sampeyan ($price):';
  }

  @override
  String get briefTitle => 'Dina iki karo saham sampeyan';

  @override
  String get briefButton => 'Ringkes dina iki';

  @override
  String get briefHint =>
      'Ringkesan AI cekak babagan obahe portofolio lan favorit sampeyan dina iki lan apa sing dikandhakake kabar paling anyar. Ora nggunakake analisis.';

  @override
  String get briefRefresh => 'Anyari';

  @override
  String get sectionEarnings => 'Laporan kuartalan';

  @override
  String earningsNext(String date) {
    return 'Laporan sabanjure: $date';
  }

  @override
  String get earningsExpected => 'EPS sing dikarepake';

  @override
  String get earningsReported => 'EPS sing dilaporake';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Padha utawa luwih dhuwur tinimbang EPS sing dikarepake ing $beats saka $total kuartal pungkasan',
      one:
          'Padha utawa luwih dhuwur tinimbang EPS sing dikarepake ing $beats saka 1 kuartal',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol ngetokaké laporan kuartalan sesuk';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol ngetokaké laporan kuartalan dina iki';
  }

  @override
  String get earningsRemindersTitle => 'Pangéling laporan kuartalan';

  @override
  String get earningsRemindersSubtitle =>
      'Notifikasi sedina sadurungé saham ing favorit utawa portofoliomu ngetokaké laporan kuartalan';

  @override
  String addAllToFavorites(int count) {
    return 'Tambahake kabeh menyang favorit ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Impor saka screenshot';

  @override
  String get holdingsReading => 'Maca posisimu…';

  @override
  String get holdingsReviewTitle => 'Posisi sing ditemokake';

  @override
  String get holdingsReviewHint =>
      'Priksa angka-angkane sadurunge ditambahake. Regane yaiku rega tuku rata-ratamu saben saham, dudu rega dina iki.';

  @override
  String get holdingsNoPrice => 'Ora ana rega tuku rata-rata ing gambar';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tambahake $count posisi',
      one: 'Tambahake 1 posisi',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Ora ana posisi saham sing ditemokake ing gambar iki. Coba screenshot kaca posisi utawa portofolio ing aplikasi brokermu.';

  @override
  String get week52Range => 'Kisaran 52 minggu';

  @override
  String week52BelowHigh(String percent) {
    return '$percent ing ngisor paling dhuwur 52 minggu';
  }

  @override
  String get week52AtHigh => 'Ing paling dhuwur 52 minggu';

  @override
  String get alertKindTrailing => 'Mudhun saka pucuk';

  @override
  String get alertTrailingPercent => 'Mudhun saka pucuk (%)';

  @override
  String get alertTrailingHint =>
      'Ngetutaké rega munggah: pènget muni yèn rega mudhun semono saka titik paling dhuwur wiwit kowé masang.';

  @override
  String alertDescTrailing(String percent) {
    return 'Mudhun $percent saka pucuk';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'pucuk nganti saiki: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol mudhun $percent saka pucuké';
  }

  @override
  String get sectionInsiders => 'Transaksi wong njero';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tukon',
      one: '1 tukon',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dodolan',
      one: '1 dodolan',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Resik: $shares saham';
  }

  @override
  String get insiderBuy => 'Dituku';

  @override
  String get insiderSell => 'Didol';

  @override
  String get insiderHint =>
      'Tukon lan dodolan ing pasar terbuka dening eksekutif lan direktur sajrone 90 dina pungkasan (SEC Form 4). Panggunaan opsi lan paweh saham ora diétung.';

  @override
  String get insiderNone =>
      'Ora ana tukon utawa dodolan wong njero ing pasar terbuka sajrone 90 dina pungkasan.';

  @override
  String get analystTrend => 'Kepiye panemu owah saben sasi';
}
