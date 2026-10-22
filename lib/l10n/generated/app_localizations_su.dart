// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sundanese (`su`).
class AppLocalizationsSu extends AppLocalizations {
  AppLocalizationsSu([String locale = 'su']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Poto hiji saham, terus kanyahoan sagala rupa ngeunaan éta saham.';

  @override
  String get homeHint =>
      'Sértifikat saham, layar aplikasi sekuritas, koran atawa logo pausahaan – naon waé nu bisa ngaidéntifikasi hiji saham.';

  @override
  String get takePhoto => 'Candak poto';

  @override
  String get chooseFromGallery => 'Pilih tina galeri';

  @override
  String get chooseImage => 'Pilih gambar';

  @override
  String get enterTickerManually => 'Asupkeun kode saham sacara manual';

  @override
  String get tickerInputLabel => 'Kode saham';

  @override
  String get tickerInputHint => 'conto: AAPL';

  @override
  String get lookUp => 'Téangan';

  @override
  String demoModeBanner(String symbols) {
    return 'Mode démo – konci data pasar can disetél. Data conto sayaga pikeun: $symbols.';
  }

  @override
  String get recognizing => 'Nganalisis gambar…';

  @override
  String get loadingData => 'Ngamuat data…';

  @override
  String get noCandidatesTitle => 'Teu aya saham nu dikenal';

  @override
  String get noCandidatesBody =>
      'Kami teu bisa ngaidéntifikasi saham dina gambar ieu. Cobaan poto nu leuwih jelas, atawa asupkeun kode saham sacara manual.';

  @override
  String get whatWeSaw => 'Nu katingali ku kami';

  @override
  String get chooseCandidateTitle => 'Saham mana nu dimaksud ku anjeun?';

  @override
  String confidencePercent(int percent) {
    return 'Kayakinan $percent%';
  }

  @override
  String get settings => 'Setélan';

  @override
  String get language => 'Basa';

  @override
  String get systemLanguage => 'Bawaan sistem';

  @override
  String get about => 'Ngeunaan';

  @override
  String get disclaimer =>
      'Aplikasi ieu ngan nyadiakeun informasi sarta lain naséhat investasi. Data bisa waé telat atawa teu akurat.';

  @override
  String dataSource(String source) {
    return 'Sumber data: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Pangenalan: $source';
  }

  @override
  String get retry => 'Cobaan deui';

  @override
  String get cancel => 'Bolay';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Tutup';

  @override
  String get errorGeneric => 'Aya kasalahan.';

  @override
  String get errorSectionUnavailable => 'Bagian ieu teu bisa dimuat.';

  @override
  String get notAvailable => 't/a';

  @override
  String get sectionIdentity => 'Idéntifikasi';

  @override
  String get sectionPrice => 'Harga';

  @override
  String get sectionValuation => 'Valuasi';

  @override
  String get sectionFinancials => 'Kauangan';

  @override
  String get sectionDividend => 'Dividén';

  @override
  String get sectionProfile => 'Profil pausahaan';

  @override
  String get sectionAnalysts => 'Rating analis';

  @override
  String get sectionNews => 'Warta';

  @override
  String get sectionRecognition => 'Detil pangenalan';

  @override
  String get labelSymbol => 'Kode saham';

  @override
  String get labelExchange => 'Bursa';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Mata uang';

  @override
  String get labelCountry => 'Nagara';

  @override
  String get labelIndustry => 'Industri';

  @override
  String get labelSector => 'Séktor';

  @override
  String get labelWebsite => 'Situs wéb';

  @override
  String get labelIpoDate => 'Tanggal IPO';

  @override
  String get labelMarketCap => 'Kapitalisasi pasar';

  @override
  String get labelSharesOutstanding => 'Saham nu beredar';

  @override
  String get labelEmployees => 'Karyawan';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Kantor puseur';

  @override
  String get labelDescription => 'Pedaran';

  @override
  String get labelLastPrice => 'Harga panungtung';

  @override
  String get labelChange => 'Parobahan';

  @override
  String get labelOpen => 'Harga buka';

  @override
  String get labelDayHigh => 'Pangluhurna poé ieu';

  @override
  String get labelDayLow => 'Panghandapna poé ieu';

  @override
  String get labelPreviousClose => 'Harga tutup saméméhna';

  @override
  String get labelWeek52High => 'Pangluhurna 52 minggu';

  @override
  String get labelWeek52Low => 'Panghandapna 52 minggu';

  @override
  String get labelAverageVolume10d => 'Rata-rata volume (10 poé)';

  @override
  String updatedAt(String time) {
    return 'Diropéa $time';
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
  String get labelEvToFcf => 'EV / arus kas bébas';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Béta';

  @override
  String get labelRevenueTtm => 'Pendapatan (TTM)';

  @override
  String get labelNetIncomeTtm => 'Laba bersih (TTM)';

  @override
  String get labelGrossMargin => 'Margin kotor';

  @override
  String get labelOperatingMargin => 'Margin operasional';

  @override
  String get labelNetMargin => 'Margin bersih';

  @override
  String get labelRoe => 'Imbal hasil ékuitas (ROE)';

  @override
  String get labelRoa => 'Imbal hasil aset (ROA)';

  @override
  String get labelDebtToEquity => 'Hutang / ékuitas';

  @override
  String get labelCurrentRatio => 'Rasio lancar';

  @override
  String get labelRevenueGrowth => 'Tumuwuhna pendapatan (YoY)';

  @override
  String get labelEpsGrowth => 'Tumuwuhna EPS (YoY)';

  @override
  String get labelDividendYield => 'Imbal hasil dividén';

  @override
  String get labelDividendPerShare => 'Dividén per saham';

  @override
  String get labelPayoutRatio => 'Rasio pambayaran dividén';

  @override
  String get labelYieldOnCost => 'Imbal hasil tina harga meuli';

  @override
  String get labelDividendGrowth5y => 'Tumuwuhna dividén (5 taun)';

  @override
  String get dividendNone =>
      'Teu aya dividén anu dibayarkeun dina 12 bulan ka tukang.';

  @override
  String get dividendOnYourShares => 'Tina saham anjeun, sataun';

  @override
  String get labelConsensus => 'Konsénsus';

  @override
  String get ratingStrongBuy => 'Beuli kuat';

  @override
  String get ratingBuy => 'Beuli';

  @override
  String get ratingHold => 'Tahan';

  @override
  String get ratingSell => 'Jual';

  @override
  String get ratingStrongSell => 'Jual kuat';

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
    return 'Période: $period';
  }

  @override
  String get noNews => 'Teu aya warta anyar.';

  @override
  String get openArticle => 'Buka artikel';

  @override
  String get openLinkFailed => 'Tautan teu bisa dibuka.';

  @override
  String get recognitionSummary => 'Ringkesan';

  @override
  String get recognitionEvidence => 'Naha kami nyangka kitu';

  @override
  String get recognitionRawText => 'Téks nu kabaca tina gambar';

  @override
  String get errMissingAnthropicKey =>
      'Pangenalan gambar can disetél (teu aya ANTHROPIC_API_KEY). Asupkeun kode saham sacara manual.';

  @override
  String get errRecognitionUnreachable =>
      'Teu bisa nyambung ka layanan pangenalan. Pariksa sambungan internét anjeun.';

  @override
  String errRecognitionHttp(String status) {
    return 'Layanan pangenalan ngabalikeun kasalahan (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Layanan pangenalan teu bisa ngolah gambar ieu.';

  @override
  String get errRecognitionTruncated =>
      'Réspon pangenalan kapotong. Mangga cobaan deui.';

  @override
  String get errRecognitionBadResponse =>
      'Réspon nu teu disangka-sangka ti layanan pangenalan.';

  @override
  String get errRecognitionEmpty =>
      'Layanan pangenalan ngabalikeun réspon kosong.';

  @override
  String get errMissingFinnhubKey =>
      'Data pasar can disetél (teu aya FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Teu bisa nyambung ka layanan data pasar. Pariksa sambungan internét anjeun.';

  @override
  String get errMarketRateLimited =>
      'Kaleuleuwihi pamundut ka layanan data pasar. Mangga antosan samenit.';

  @override
  String errMarketHttp(String status) {
    return 'Layanan data pasar ngabalikeun kasalahan (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Réspon nu teu disangka-sangka ti layanan data pasar.';

  @override
  String errNoQuote(String symbol) {
    return 'Teu kapanggih data harga pikeun $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Teu kapanggih profil pausahaan pikeun $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Mode démo ngan ngarojong $symbols. Tambahkeun FINNHUB_API_KEY pikeun data langsung.';
  }

  @override
  String errUnknown(String detail) {
    return 'Aya kasalahan: $detail';
  }

  @override
  String get newSearch => 'Panéangan anyar';

  @override
  String get recentSearches => 'Panganyarna';

  @override
  String get noRecentSearches => 'Can aya panéangan panganyarna.';

  @override
  String get clearRecent => 'Pupus panganyarna';

  @override
  String get greeting => 'Saham mana nu rék urang tingali?';

  @override
  String get searchHint => 'Kode saham atawa ngaran pausahaan';

  @override
  String get attachImage => 'Lampirkeun gambar';

  @override
  String get searchResultsTitle => 'Hasil panéangan';

  @override
  String errNoResults(String query) {
    return 'Teu kapanggih saham pikeun “$query”.';
  }

  @override
  String get quickBarHint => 'Ketik kode saham atawa ngaran pausahaan…';

  @override
  String get openFullWindow => 'Buka jandéla';

  @override
  String hotkeyHint(String shortcut) {
    return 'Pencét $shortcut di mana waé pikeun nyauran WhatStock.';
  }

  @override
  String get trayOpen => 'Buka WhatStock';

  @override
  String get trayQuickSearch => 'Panéangan gancang';

  @override
  String get trayQuit => 'Kaluar';

  @override
  String get appearance => 'Tampilan';

  @override
  String get themeSystem => 'Sistem';

  @override
  String get themeDark => 'Poék';

  @override
  String get themeLight => 'Caang';

  @override
  String get back => 'Balik';

  @override
  String get aiSectionTitle => 'Analisis AI';

  @override
  String get aiIntro =>
      'Tinjauan lengkep nu ditulis ku AI: ringkesan warta panganyarna, bisnisna, kaunggulan, résiko jeung faktor nu nyumput, valuasi, prospék harga kalayan skénario tina sudut pandang psikologis, sosiologis, téknis jeung makro, sarta naon nu kudu diawaskeun.';

  @override
  String get aiGenerate => 'Jieun analisis';

  @override
  String get aiRegenerate => 'Jieun deui';

  @override
  String get aiGenerating =>
      'Nyiapkeun analisis… ieu bisa butuh waktu samenit atawa dua menit.';

  @override
  String get aiSources => 'Sumber';

  @override
  String aiGeneratedAt(String time) {
    return 'Dijieun $time';
  }

  @override
  String get aiDisclaimer =>
      'Analisis nu dijieun ku AI dumasar kana data umum jeung warta panganyarna. Bisa waé aya kasalahan atawa geus teu anyar, sarta lain naséhat investasi.';

  @override
  String get errAiNotConfigured =>
      'Analisis AI can disetél (teu aya ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Teu bisa nyambung ka layanan AI. Pariksa sambungan internét anjeun.';

  @override
  String errAiHttp(String status) {
    return 'Layanan AI ngabalikeun kasalahan (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Layanan AI nolak nganalisis saham ieu.';

  @override
  String get errAiBadResponse => 'Réspon nu teu disangka-sangka ti layanan AI.';

  @override
  String get sectionChart => 'Grafik harga';

  @override
  String get rangeOneWeek => '1M';

  @override
  String get rangeOneMonth => '1B';

  @override
  String get rangeThreeMonths => '3B';

  @override
  String get rangeOneYear => '1T';

  @override
  String get rangeFiveYears => '5T';

  @override
  String get chartUnavailable =>
      'Riwayat harga teu sayaga tina sumber data ayeuna.';

  @override
  String get sectionStatements => 'Laporan kauangan (taunan)';

  @override
  String get labelFiscalYear => 'Taun fiskal';

  @override
  String get labelRevenue => 'Pendapatan';

  @override
  String get labelNetIncome => 'Laba bersih';

  @override
  String get labelTotalAssets => 'Total aset';

  @override
  String get labelTotalLiabilities => 'Total liabilitas';

  @override
  String get labelEquity => 'Ékuitas pemegang saham';

  @override
  String get labelOperatingCashFlow => 'Arus kas operasional';

  @override
  String get statementsUnavailable =>
      'Laporan kauangan nu dilaporkeun teu sayaga pikeun saham ieu.';

  @override
  String get launchAtLogin => 'Jalankeun waktu asup';

  @override
  String get hotkeyLabel => 'Pintasan global';

  @override
  String get hotkeyRecordHint =>
      'Klik di dieu, terus pencét kombinasi tombol nu anyar';

  @override
  String get hotkeyReset => 'Balikkeun ka bawaan';

  @override
  String get pasteImage => 'Témpélkeun gambar tina papan klip';

  @override
  String get errClipboardNoImage => 'Teu aya gambar dina papan klip.';

  @override
  String get favorites => 'Paporit';

  @override
  String get addToFavorites => 'Tambahkeun ka paporit';

  @override
  String get removeFromFavorites => 'Piceun tina paporit';

  @override
  String get noFavorites =>
      'Can aya paporit. Toél béntang dina hiji saham pikeun nambahkeunana.';

  @override
  String get displayCurrency => 'Mata uang tampilan';

  @override
  String get displayCurrencyNone => 'Ngan mata uang saham éta sorangan';

  @override
  String labelConverted(String currency) {
    return '≈ dina $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Kurs: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Pamutahiran';

  @override
  String currentVersion(String version) {
    return 'Vérsi $version';
  }

  @override
  String get autoUpdate => 'Pasang pamutahiran sacara otomatis';

  @override
  String get checkForUpdates => 'Pariksa pamutahiran';

  @override
  String get updateChecking => 'Mariksa pamutahiran…';

  @override
  String get updateUpToDate => 'Anjeun geus maké vérsi panganyarna.';

  @override
  String updateAvailable(String version) {
    return 'Vérsi $version geus sayaga.';
  }

  @override
  String get updateDownloading => 'Ngundeur pamutahiran di latar tukang…';

  @override
  String get updateDownloaded =>
      'Pamutahiran geus siap. Mimitian deui pikeun masangna.';

  @override
  String get updateNow => 'Mutahirkeun';

  @override
  String get restartNow => 'Mimitian deui';

  @override
  String get updatesViaStore =>
      'Pamutahiran datang sacara otomatis ngaliwatan toko aplikasi.';

  @override
  String get updateCheckFailed => 'Teu bisa mariksa pamutahiran.';

  @override
  String get subscription => 'Langganan';

  @override
  String get planTrial => 'Uji coba';

  @override
  String get planNormal => 'Biasa';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Teu aya pakét aktip';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count analisis per bulan';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Uji coba gratis $days poé kalayan $count analisis';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Sésa $days poé uji coba',
      one: 'Sésa 1 poé uji coba',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Uji coba gratis anjeun geus réngsé. Pilih pakét pikeun terus nganalisis.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Sésa $remaining tina $total analisis pikeun période ieu';
  }

  @override
  String extraCredits(int count) {
    return '$count analisis tambahan';
  }

  @override
  String renewsOn(String date) {
    return 'Diperpanjang $date';
  }

  @override
  String get choosePlan => 'Pilih pakét';

  @override
  String get currentPlan => 'Pakét ayeuna';

  @override
  String get subscribe => 'Langganan';

  @override
  String get perMonth => '/ bulan';

  @override
  String get extraPacksTitle => 'Butuh deui? Beuli analisis tambahan';

  @override
  String get extraPacksHint =>
      'Analisis tambahan moal kadaluwarsa sarta dipaké sanggeus jatah bulanan anjeun béak.';

  @override
  String get buy => 'Beuli';

  @override
  String get restorePurchases => 'Pulihkeun pameulian';

  @override
  String get manageSubscription => 'Atur langganan';

  @override
  String get purchaseSuccess => 'Hatur nuhun! Pameulian anjeun geus aktip.';

  @override
  String get purchasePending => 'Pameulian keur diprosés…';

  @override
  String get purchaseFailed => 'Pameulian teu bisa diréngsékeun.';

  @override
  String get purchaseCanceled => 'Pameulian dibolaykeun.';

  @override
  String get billingUnavailable =>
      'Pameulian can sayaga dina platform ieu. Langganan dina telepon atawa Mac anjeun; pakét anjeun bakal jalan dina unggal parangkat.';

  @override
  String get errQuotaExceeded =>
      'Analisis anjeun geus béak pikeun période ieu. Tingkatkeun pakét anjeun atawa beuli analisis tambahan.';

  @override
  String get errTrialExpired =>
      'Uji coba gratis anjeun geus réngsé. Pilih pakét pikeun neruskeun.';

  @override
  String get errNoPlan => 'Butuh pakét aktip pikeun analisis AI.';

  @override
  String get viewPlans => 'Tingali pakét';

  @override
  String get usageTitle => 'Pamakéan';

  @override
  String get demoPurchaseNote =>
      'Tagihan démo: pameulian disimulasikeun dina platform ieu.';

  @override
  String get mostPopular => 'Pangpopulerna';

  @override
  String get bestValue => 'Nilai pangalusna';

  @override
  String get planFeaturesCommon =>
      'Pangenalan poto, data langsung, grafik, paporit jeung sakabéh 120 basa kaasup dina unggal pakét. Jatahna pikeun analisis AI.';

  @override
  String get searchLanguages => 'Téangan basa…';

  @override
  String get noLanguageMatch => 'Teu aya basa nu cocog.';

  @override
  String get aiSettings => 'Analisis AI';

  @override
  String get aiLength => 'Panjangna';

  @override
  String get aiDepthBrief => 'Ringkes';

  @override
  String get aiDepthStandard => 'Standar';

  @override
  String get aiDepthDeep => 'Jero';

  @override
  String get aiDepthBriefDesc => 'Nu penting-penting, gancang.';

  @override
  String get aiDepthStandardDesc => 'Laporan lengkep kalayan unggal bagian.';

  @override
  String get aiDepthDeepDesc =>
      'Leuwih loba panéangan wéb, babandingan jeung pausahaan sajenis, sarta detil nu leuwih jero.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Kira-kira $min–$max kecap';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'maké $count analisis',
      one: 'maké 1 analisis',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Tingkat pamaca';

  @override
  String get aiReaderBeginner => 'Pamula';

  @override
  String get aiReaderExperienced => 'Boga pangalaman';

  @override
  String get aiReaderBeginnerDesc =>
      'Basa basajan; unggal istilah téknis dijelaskeun.';

  @override
  String get aiReaderExperiencedDesc =>
      'Téks leuwih padet kalayan istilah kauangan standar.';

  @override
  String get aiCounterArgument => 'Argumén tandingan pangkuatna';

  @override
  String get aiCounterArgumentDesc =>
      'Ringkesan salawasna ditungtungan ku argumén pangalusna nu ngalawan kacindekanana sorangan.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nepi ka $count panéangan wéb per analisis dina pakét anjeun',
      one: 'Nepi ka 1 panéangan wéb per analisis dina pakét anjeun',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Panjang standar dumasar pakét: Biasa $normal, Pro $pro, Max $max, Ultra $ultra. Ringkes maké 2 leuwih saeutik, Jero 2 leuwih loba.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'nepi ka $count panéangan wéb',
      one: 'nepi ka 1 panéangan wéb',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count panéangan wéb per analisis',
      one: '1 panéangan wéb per analisis',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Panjang ieu butuh $needed analisis, tapi ngan sésa $left. Pilih panjang nu leuwih pondok dina Setélan atawa tambahan deui analisisna.';
  }

  @override
  String get outlookMarketMood => 'Suasana pasar';

  @override
  String get moodVeryPessimistic => 'Pesimis pisan';

  @override
  String get moodPessimistic => 'Pesimis';

  @override
  String get moodNeutral => 'Nétral';

  @override
  String get moodOptimistic => 'Optimis';

  @override
  String get moodVeryOptimistic => 'Optimis pisan';

  @override
  String get scenarioBull => 'Skénario optimis';

  @override
  String get scenarioBase => 'Skénario dasar';

  @override
  String get scenarioBear => 'Skénario pesimis';

  @override
  String outlookCurrentPrice(String price) {
    return 'Harga ayeuna: $price';
  }

  @override
  String get outlookKeyLevels => 'Tingkat konci';

  @override
  String get keyLevelSupport => 'Support';

  @override
  String get keyLevelResistance => 'Resistance';

  @override
  String get keyLevelAnchor => 'Harga patokan';

  @override
  String get upcomingEvents => 'Acara nu bakal datang';

  @override
  String get outlookChartNote =>
      'Rentang indikatif; probabilitas ngan ukur kira-kira kasar, lain ramalan.';

  @override
  String get accountTitle => 'Akun';

  @override
  String get signIn => 'Asup';

  @override
  String get signOut => 'Kaluar';

  @override
  String get notSignedIn => 'Can asup';

  @override
  String get accountBenefit =>
      'Asup sangkan langganan anjeun jalan dina sakabéh parangkat anjeun.';

  @override
  String get accountSyncedNote =>
      'Langganan jeung sésa analisis anjeun sarua dina unggal parangkat.';

  @override
  String get signInTitle => 'Asup ka WhatStock';

  @override
  String get emailLabel => 'Alamat surélék';

  @override
  String get continueWithEmail => 'Teraskeun ku surélék';

  @override
  String codeSentTo(String email) {
    return 'Kami geus ngirim kode 6 digit ka $email. Kode ieu valid salila 10 menit.';
  }

  @override
  String get codeLabel => 'Kode asup';

  @override
  String get resendCode => 'Kirim kode anyar';

  @override
  String get useDifferentEmail => 'Paké surélék séjén';

  @override
  String get errInvalidCode => 'Kodena salah atawa geus kadaluwarsa.';

  @override
  String get errInvalidEmail => 'Mangga asupkeun alamat surélék nu valid.';

  @override
  String get errSignInFailed =>
      'Gagal asup. Pariksa sambungan anjeun terus cobaan deui.';

  @override
  String get checkoutWaiting =>
      'Réngsékeun pambayaran dina panyungsi anjeun. Aplikasi bakal diropéa sacara otomatis lamun geus réngsé.';

  @override
  String get paymentViaStripe =>
      'Pambayaran aman dina panyungsi anjeun ngaliwatan Stripe. Bisa dibolaykeun iraha waé.';

  @override
  String get paymentViaStore =>
      'Ditagihkeun ngaliwatan akun App Store atawa Google Play anjeun. Bisa dibolaykeun iraha waé dina setélan toko.';

  @override
  String get keySpace => 'Spasi';

  @override
  String get doubleOptionTitle => 'Pencét Option dua kali';

  @override
  String get doubleOptionSubtitle =>
      'Mencét tombol Option dua kali gancang ogé nyauran WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Sangkan jalan ogé dina aplikasi séjén, idinan WhatStock dina Pengaturan Sistem → Privasi & Keamanan → Pemantauan Input, terus buka deui aplikasina.';

  @override
  String get openSystemSettings => 'Buka Pengaturan Sistem';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Pencét $shortcut atawa pencét Option dua kali di mana waé pikeun nyauran WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Pangmungkinna';

  @override
  String get longTermToday => 'Poé ieu';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years taun',
      one: '1 taun',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range sataun';
  }

  @override
  String longTermLikely(String price) {
    return 'pangmungkinna $price';
  }

  @override
  String get confidenceLow => 'Kayakinan handap';

  @override
  String get confidenceMedium => 'Kayakinan sedeng';

  @override
  String get confidenceHigh => 'Kayakinan luhur';

  @override
  String get longTermNote =>
      'Rentang jangka panjang dumasar kana asumsi nu ditétélakeun sarta beuki lega jeung waktu. Harga teu kaasup dividén. Kira-kira kasar, lain ramalan.';

  @override
  String get portfolio => 'Portofolio';

  @override
  String get portfolioEmpty =>
      'Can aya nanaon di dieu. Buka hiji saham terus toél “Tambahkeun ka portofolio” pikeun nuturkeun naon nu dipiboga ku anjeun.';

  @override
  String get portfolioLocalNote =>
      'Ngan disimpen dina parangkat ieu. Total dirobah maké kurs rujukan ECB; harga bisa waé telat.';

  @override
  String get addToPortfolio => 'Tambahkeun ka portofolio';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Tambahkeun $symbol';
  }

  @override
  String get portfolioQuantity => 'Jumlah saham';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Harga per saham ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Tanggal meuli';

  @override
  String get portfolioAdd => 'Tambahkeun';

  @override
  String get portfolioInvalidNumber => 'Asupkeun angka nu leuwih ti nol.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol geus ditambahkeun ka portofolio anjeun.';
  }

  @override
  String get portfolioTotalValue => 'Total nilai';

  @override
  String get portfolioToday => 'Poé ieu';

  @override
  String get portfolioGainLoss => 'Untung/rugi';

  @override
  String homeDividendsThisYear(String amount) {
    return 'Dividen taun ieu: $amount';
  }

  @override
  String get portfolioInvested => 'Diinvestasikeun';

  @override
  String get portfolioAllocation => 'Alokasi';

  @override
  String get portfolioPositions => 'Posisi';

  @override
  String portfolioAvgCost(String price) {
    return 'rata-rata harga beuli $price';
  }

  @override
  String get portfolioYourPosition => 'Posisi anjeun';

  @override
  String get portfolioPurchases => 'Pameulian';

  @override
  String get portfolioRemove => 'Piceun';

  @override
  String get portfolioExcluded =>
      'Posisi nu teu boga harga atawa kurs teu diasupkeun kana total.';

  @override
  String get priceAlerts => 'Béwara harga';

  @override
  String get setPriceAlert => 'Setél béwara harga';

  @override
  String alertDialogTitle(String symbol) {
    return 'Béwara harga · $symbol';
  }

  @override
  String get alertKindAbove => 'Naék leuwih ti';

  @override
  String get alertKindBelow => 'Turun handapeun';

  @override
  String get alertKindMove => 'Gerak gedé dina sapoé';

  @override
  String alertTargetPrice(String currency) {
    return 'Harga ($currency)';
  }

  @override
  String get alertMovePercent => 'Gerak harian (%)';

  @override
  String get alertAlreadyMet => 'Harga geus ngaliwatan tingkat ieu.';

  @override
  String get alertSave => 'Setél béwara';

  @override
  String alertCreated(String symbol) {
    return 'Béwara disetél pikeun $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Can aya béwara harga. Buka hiji saham terus toél lonceng pikeun nyetélna.';

  @override
  String get alertsNote =>
      'Béwara dipariksa unggal 5 menit salila WhatStock jalan. Dina komputer, WhatStock tetep jalan dina bar menu atawa baki sistem; dina telepon, samentawis béwara ngan datang lamun aplikasina keur dibuka.';

  @override
  String alertDescAbove(String price) {
    return 'Di luhur $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Di handap $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Gerak harian ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Kapicu $date dina harga $price';
  }

  @override
  String get alertRearm => 'Aktipkeun deui';

  @override
  String get alertDelete => 'Pupus';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol naék leuwih ti $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol turun handapeun $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol gerak $percent poé ieu';
  }

  @override
  String alertHitBody(String price) {
    return 'Harga ayeuna: $price';
  }

  @override
  String get alertOpen => 'Buka';

  @override
  String get keepInTrayTitle => 'Tetep jalan sanajan jandéla ditutup';

  @override
  String get keepInTraySubtitle =>
      'WhatStock tetep aya dina bar menu atawa baki sistem, jadi pintasan jeung béwara harga tetep jalan.';

  @override
  String get termsOfUse => 'Katangtuan Pamakéan';

  @override
  String get privacyPolicy => 'Kawijakan Privasi';

  @override
  String get subscriptionLegal =>
      'Langganan diperpanjang sacara otomatis unggal bulan nepi ka anjeun ngabolaykeunana. Ku langganan, anjeun narima Katangtuan Pamakéan jeung Kawijakan Privasi.';

  @override
  String get deleteAccount => 'Pupus akun';

  @override
  String get deleteAccountTitle => 'Pupus akun anjeun?';

  @override
  String get deleteAccountBody =>
      'Akun anjeun jeung sagala nu disimpen dina server kami (surélék, jatah, pamakéan) bakal dipupus salamina, sarta analisis nu can dipaké bakal leungit. Langganan nu dibayar dina panyungsi langsung dibolaykeun; langganan App Store atawa Google Play kudu dibolaykeun dina setélan toko.';

  @override
  String get deleteLocalData =>
      'Pupus ogé data dina parangkat ieu (portofolio, béwara, paporit, riwayat, analisis nu disimpen)';

  @override
  String get deleteAccountConfirm => 'Pupus salamina';

  @override
  String get accountDeleted => 'Akun anjeun geus dipupus.';

  @override
  String get errDeleteAccount =>
      'Akun teu bisa dipupus. Pariksa sambungan anjeun terus cobaan deui.';

  @override
  String get aiTrialBriefNote =>
      'Analisis uji coba téh ringkes sarta dijieun ku modél AI nu leuwih gancang. Ku pakét, anjeun meunang AI kami nu pangpinterna, leuwih loba panéangan wéb, sarta panjang Standar jeung Jero.';

  @override
  String get billingMonthly => 'Bulanan';

  @override
  String get billingYearly => 'Taunan';

  @override
  String get yearlyDiscount => '2 bulan gratis';

  @override
  String get perYear => '/ taun';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price per bulan';
  }

  @override
  String get subscriptionLegalYearly =>
      'Langganan taunan diperpanjang sacara otomatis unggal taun nepi ka anjeun ngabolaykeunana. Ku langganan, anjeun narima Katangtuan Pamakéan jeung Kawijakan Privasi.';

  @override
  String get myAnalyses => 'Analisis abdi';

  @override
  String get navAlerts => 'Béwara';

  @override
  String get inviteTitle => 'Pratinjau katutup';

  @override
  String get inviteBody =>
      'WhatStock ayeuna ngan ukur sayogi ku uleman. Lebetkeun kode uleman anu anjeun tampi.';

  @override
  String get inviteCodeLabel => 'Kode uleman';

  @override
  String get inviteContinue => 'Teraskeun';

  @override
  String get inviteInvalid => 'Kode uleman ieu teu valid.';

  @override
  String get inviteExpired =>
      'Uleman ieu geus kadaluwarsa. Pénta kode anyar ka jalma anu ngondang anjeun.';

  @override
  String get inviteDeviceLimit =>
      'Kode uleman ieu geus dipaké dina jumlah alat maksimum.';

  @override
  String get previewConfidential => 'Pratinjau rahasia';

  @override
  String get errPreviewDailyLimit =>
      'Wates analisis poé ieu pikeun pratinjau ieu geus kahontal. Cobian deui isukan.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jam katukang',
      one: '1 jam katukang',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count poé katukang',
      one: '1 poé katukang',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Anyarkeun analisis ieu?';

  @override
  String staleBody(String age) {
    return 'Analisis ieu dijieun $age. Harga, warta, jeung hasil bisa geus robah ti harita.';
  }

  @override
  String get staleKeep => 'Témbongkeun nu saméméhna';

  @override
  String get staleRefresh => 'Jieun nu anyar';

  @override
  String seeAll(int count) {
    return 'Tingali sadayana ($count)';
  }

  @override
  String get searchAnalyses => 'Paluruh analisis anjeun';

  @override
  String get deleteAnalysis => 'Pupus';

  @override
  String analysisDeleted(String symbol) {
    return 'Analisis $symbol geus dipupus';
  }

  @override
  String get keyLevelAlertHint =>
      'Toél hiji tingkat pikeun meunang béwara nalika harga nepi ka dinya.';

  @override
  String get shareAnalysisTitle => 'Bagikeun analisis';

  @override
  String get shareAsImage => 'Bagikeun salaku gambar';

  @override
  String get shareAsText => 'Bagikeun salaku téks';

  @override
  String get shareCardFooter => 'Dijieun ku WhatStock';

  @override
  String get shareCardDisclaimer => 'Analisis AI · lain naséhat investasi';

  @override
  String get referralTitle => 'Ondang babaturan';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analisis tambahan',
      one: '1 analisis tambahan',
    );
    return 'Bagikeun kode anjeun. Babaturan anjeun langsung meunang $_temp0, sarta anjeun meunang nu sarua sanggeus analisis kahijina.';
  }

  @override
  String get referralYourCode => 'Kode anjeun';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Diondang: $invited · Diganjar: $rewarded';
  }

  @override
  String get referralHaveCode => 'Boga kode ti babaturan?';

  @override
  String get referralRedeem => 'Tukeurkeun';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analisis tambahan ditambahkeun. Wilujeng sumping!',
      one: '1 analisis tambahan ditambahkeun. Wilujeng sumping!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown => 'Kode ieu teu aya. Pariksa tur coba deui.';

  @override
  String get referralErrOwn => 'Anjeun teu bisa nukeurkeun kode sorangan.';

  @override
  String get referralErrAlready => 'Anjeun geus nukeurkeun kode ti babaturan.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analisis tambahan',
      one: '1 analisis tambahan',
    );
    return 'Kuring nganalisis saham ku WhatStock: poto sahamna, AI ngajelaskeunana. Ku kode kuring $code anjeun meunang $_temp0.';
  }

  @override
  String get referralCopied => 'Kode disalin';

  @override
  String get onboardTitle1 => 'Poto hiji saham';

  @override
  String get onboardBody1 =>
      'Cukup ku layar aplikasi sekuritas, koran atawa logo pausahaan: WhatStock bakal mikawanoh sahamna sarta mintonkeun hargana, grafikna jeung angka-angka pentingna.';

  @override
  String get onboardTitle2 => 'Paham dina sababaraha menit';

  @override
  String get onboardBody2 =>
      'Analisis AI ngajelaskeun naon nu ngagerakkeun saham, résikona, valuasina jeung tilu skénario ka mana hargana bisa ngalih, dibarengan ku sumber jeung dina basa anjeun.';

  @override
  String get onboardTitle3 => 'Tetep apdet terus';

  @override
  String get onboardBody3 =>
      'Paporit, portofolio anjeun jeung béwara harga bakal terus ngabéjaan anjeun. Analisis anjeun tetep aya dina alat anjeun, siap dibuka deui.';

  @override
  String get onboardNext => 'Salajengna';

  @override
  String get onboardStart => 'Mimitian';

  @override
  String get onboardSkip => 'Liwat';

  @override
  String changesTitle(String date) {
    return 'Ti saprak analisis saméméhna ($date)';
  }

  @override
  String get changesPrice => 'Harga';

  @override
  String get changesNoMajor => 'Prospékna teu robah sacara signifikan.';

  @override
  String get changesPreviousSummary => 'Ringkesan saméméhna';

  @override
  String get telemetryTitle => 'Bantuan ngaronjatkeun WhatStock';

  @override
  String get telemetryBody =>
      'Bagikeun statistik pamakéan anonim jeung laporan kacilakaan aplikasi: fitur mana nu dipaké jeung naon nu salah. Saham, analisis, atawa data pribadi anjeun moal pernah dibagikeun. Anjeun bisa ngarobah ieu iraha waé dina Setélan.';

  @override
  String get telemetryAllow => 'Idinan';

  @override
  String get telemetryDecline => 'Henteu, hatur nuhun';

  @override
  String get telemetrySetting =>
      'Statistik anonim jeung laporan kacilakaan aplikasi';

  @override
  String get telemetrySettingHint =>
      'Sabaraha sering fitur dipaké jeung laporan kasalahan, tanpa data pribadi atawa eusi pamilarian jeung analisis anjeun.';

  @override
  String get askButton => 'Taroskeun ngeunaan analisis ieu';

  @override
  String askTitle(String symbol) {
    return 'Patarosan ngeunaan $symbol';
  }

  @override
  String get askIntro =>
      'Taroskeun naon waé ngeunaan analisis: naon hartina hiji résiko, naon nu bisa ngarobah prospek, kumaha hiji angka diitung. Jawabanana dumasar kana analisis ieu sarta lain naséhat investasi.';

  @override
  String get askHint => 'Tulis patarosan…';

  @override
  String get askSend => 'Kirim';

  @override
  String get askThinking => 'Keur mikir…';

  @override
  String get askSuggest1 => 'Naon résiko panggedéna?';

  @override
  String get askSuggest2 => 'Naon nu bisa ngarobah prospek?';

  @override
  String get askSuggest3 => 'Jelaskeun sacara basajan';

  @override
  String get askMaxReached =>
      'Éta patarosan panungtung pikeun analisis ieu. Jieun analisis anyar pikeun nanya deui.';

  @override
  String get errAskLimit =>
      'Anjeun geus ngahontal wates patarosan poé ieu. Cobian deui isukan.';

  @override
  String get eventTomorrow => 'Isukan';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days poé deui',
      one: '1 poé deui',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Laporan kuartalan';

  @override
  String get eventBeforeOpen => 'saméméh pasar dibuka';

  @override
  String get eventAfterClose => 'sanggeus pasar ditutup';

  @override
  String eventEpsEstimate(String value) {
    return 'Perkiraan EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Tina analisis anjeun';

  @override
  String get eventDividend => 'Dividen diperkirakeun';

  @override
  String get eventDividendEstimate =>
      'Diperkirakeun tina pamayaran anu anjeun catet';

  @override
  String get eventsHint =>
      'Tanggal laporan saham paporit sareng portofolio anjeun pikeun 90 poé ka hareup, acara anu aya tanggalna anu ditandaan ku analisis anjeun, sareng dividen anu diperkirakeun tina pamayaran anu anjeun catet.';

  @override
  String get eventsEmpty =>
      'Teu aya acara anu aya tanggalna dina 90 poé ka hareup. Tambahkeun paporit atanapi saham portofolio pikeun ningali tanggal laporanana di dieu; dividen anu dicatet nembongkeun pamayaran salajengna anu diperkirakeun.';

  @override
  String get compareTitle => 'Bandingkeun';

  @override
  String get compareAdd => 'Tambahkeun saham';

  @override
  String get compareRemove => 'Piceun';

  @override
  String get compareTickerHint => 'Kode saham, conto MSFT';

  @override
  String get compareHint =>
      'Angka utama sajajar; nilai pangalusna dina unggal baris disorot. Jumlahna dina mata uang unggal saham.';

  @override
  String get compareNoAnalysis => 'Can aya analisis';

  @override
  String get portfolioDividends => 'Dividén taunan';

  @override
  String portfolioDividendYield(String percent) {
    return 'Imbal hasil $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Dividén taunan anu diperkirakeun dumasar kana dividén anu dibayar dina 12 bulan ka tukang; pamayaran ka hareup henteu dijamin.';

  @override
  String positionDividend(String amount) {
    return 'Dividén: $amount sataun';
  }

  @override
  String get chartAvgCost => 'Rata-rata anjeun';

  @override
  String get chartAlertLevel => 'Béwara';

  @override
  String get marketsToday => 'Pasar poé ieu';

  @override
  String get notesTitle => 'Catetan abdi';

  @override
  String get notesHint =>
      'Naha anjeun mésér, naon anu diawaskeun, naon anu bakal ngajantenkeun anjeun ngajual?';

  @override
  String get notesInfo =>
      'Ngan disimpen dina parangkat ieu. Analisis AI merhatikeun catetan anjeun.';

  @override
  String notesSaved(String date) {
    return 'Disimpen $date';
  }

  @override
  String get peersTitle => 'Pausahaan nu sarupa';

  @override
  String get portfolioExport => 'Ékspor salaku CSV';

  @override
  String get portfolioImport => 'Impor tina CSV';

  @override
  String get portfolioImportHint =>
      'Témpélkeun hiji pameulian per baris: kode saham, jumlah, harga, mata uang, tanggal (YYYY-MM-DD). Kolom bisa dipisahkeun ku koma, titik koma atawa tab; baris judul henteu wajib.';

  @override
  String get portfolioImportButton => 'Impor';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pameulian ditambahkeun',
      one: '1 pameulian ditambahkeun',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count baris dilewat',
      one: '1 baris dilewat',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Portofolio, paporit, béwara harga, jeung catetan disingkronkeun di sadaya parangkat anjeun.';

  @override
  String syncLast(String time) {
    return 'Panungtungan disingkronkeun $time';
  }

  @override
  String get syncNow => 'Singkronkeun ayeuna';

  @override
  String get syncFailed =>
      'Singkronisasi gagal. Bakal dicobian deui sacara otomatis.';

  @override
  String get alertEmailTitle => 'Email nalika béwara aktip';

  @override
  String get alertEmailOn =>
      'Kami mariksa béwara anjeun unggal sababaraha menit sareng ngirim email ka anjeun, sanajan aplikasina ditutup.';

  @override
  String get alertEmailSignIn =>
      'Asup nganggo email anjeun dina Setélan pikeun nampi béwara ku email, sanajan aplikasina ditutup.';

  @override
  String get portfolioHistory => 'Nilai ti waktu ka waktu';

  @override
  String get portfolioReviewTitle => 'Tinjauan portofolio AI';

  @override
  String get portfolioReviewIntro =>
      'AI mariksa sakabéh portofolio anjeun: konsentrasi, gumantungna kana séktor jeung mata uang, résiko anu sarua dina saham-saham anjeun, sarta dividen. Maké 1 analisis.';

  @override
  String get portfolioReviewButton => 'Pariksa portofolio abdi';

  @override
  String get portfolioReviewAgain => 'Pariksa deui';

  @override
  String get portfolioReviewWorking => 'Mariksa portofolio anjeun…';

  @override
  String get digestTitle => 'Ringkesan mingguan ngaliwatan surélék';

  @override
  String get digestHint =>
      'Unggal Senén: kumaha obahna paporit jeung portofolio anjeun minggu kamari, sarta tanggal laporan kuartalan nu bakal datang.';

  @override
  String get benchmarkTitle => 'Dibandingkeun jeung S&P 500';

  @override
  String get benchmarkTitleIndex => 'Dibandingkeun jeung indéks';

  @override
  String get benchmarkHintIndex =>
      'Saolah-olah unggal pameser anjeun diasupkeun dina poé anu sarua ka dana anu nuturkeun indéks anu dipilih. Dividén teu kaasup; hasil ti tukang henteu ngaramal hasil ka hareup.';

  @override
  String get benchmarkYours => 'Pameser anjeun';

  @override
  String benchmarkAhead(String points) {
    return '$points poin persentase leuwih alus batan indéks';
  }

  @override
  String benchmarkBehind(String points) {
    return '$points poin persentase katinggaleun ku indéks';
  }

  @override
  String get portfolioSell => 'Jual';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Jual $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Harga jual per saham ($currency)';
  }

  @override
  String get portfolioSellDate => 'Tanggal ngajual';

  @override
  String get portfolioSellAll => 'Sadayana';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Anjeun gaduh $quantity';
  }

  @override
  String get portfolioSold => 'Dijual';

  @override
  String get portfolioRealized => 'Direalisasikeun';

  @override
  String get portfolioClosed => 'Posisi ditutup';

  @override
  String get portfolioClosedNote => 'Sadaya saham parantos dijual';

  @override
  String get portfolioTransactions => 'Transaksi';

  @override
  String get portfolioRealizedByYear => 'Kauntungan direalisasikeun per taun';

  @override
  String get portfolioRealizedHint =>
      'Penjualan dicocogkeun heula jeung pameulian anjeun nu pangkolotna (FIFO), dirobih nganggo kurs dinten ieu. Pikeun laporan pajeg, anggo laporan ti broker anjeun.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Ti saprak analisis ieu, laporan kuartalan anyar geus medal ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Laporan anyar';

  @override
  String get portfolioImportBrokers =>
      'Ékspor ti Revolut, Trading 212 sareng Interactive Brokers ogé dikenal, kaasup penjualan; dividén sareng setoran dilangkungan.';

  @override
  String get portfolioImportFile => 'Pilih file';

  @override
  String offlineBanner(String time) {
    return 'Teu aya sambungan – nembongkeun data anu panungtungan disimpen ($time).';
  }

  @override
  String get glossMarketCap =>
      'Sabaraha ajén sakabéh pausahaan di pasar saham: harga saham × jumlah saham.';

  @override
  String get glossSharesOutstanding =>
      'Sabaraha saham anu geus dikaluarkeun ku pausahaan. Lamun nambahan, unggal saham boga bagian anu leuwih leutik; buyback ngurangan jumlahna.';

  @override
  String get glossPeTrailing =>
      'Harga ÷ laba per saham 12 bulan ka tukang: sabaraha taun laba ayeuna anu anjeun bayar. Leuwih handap leuwih murah, tapi pausahaan anu tumuwuh gancang biasana boga P/E luhur.';

  @override
  String get glossPeForward =>
      'Siga P/E, tapi maké laba anu diperkirakeun ku analis pikeun 12 bulan ka hareup. Lamun leuwih handap batan P/E trailing, labana diperkirakeun tumuwuh.';

  @override
  String get glossPb =>
      'Harga ÷ nilai buku (aset dikurangan hutang) per saham. Sabudeureun 1 hartina pasar meunteun pausahaan saluyu jeung naon anu dipiboga dina kertas.';

  @override
  String get glossPs =>
      'Nilai pasar ÷ pendapatan taunan. Mangpaat pikeun pausahaan anu labana masih saeutik atawa can aya; bandingkeun dina industri anu sarua.';

  @override
  String get glossEvToFcf =>
      'Ajén pausahaan kaasup hutang (EV) ÷ duit kas anu dihasilkeun dina sataun sanggeus investasi. Leuwih handap hartina anjeun meunang leuwih loba duit pikeun hargana.';

  @override
  String get glossPeg =>
      'P/E ÷ perkiraan tumuwuhna laba taunan (%). Sabudeureun 1 mindeng dianggap wajar; ieu nempatkeun P/E dina konteks tumuwuhna.';

  @override
  String get glossEps =>
      'Laba per saham salila 12 bulan ka tukang. EPS anu naék ti taun ka taun téh salah sahiji tanda pangkuatna pausahaan anu séhat.';

  @override
  String get glossBeta =>
      'Sabaraha saham biasana obah babarengan jeung pasar: 1 = sarua jeung pasar, 1,5 = ayunan kira-kira 50% leuwih gedé, handapeun 1 = leuwih tenang.';

  @override
  String get glossRevenueTtm =>
      'Total penjualan 12 bulan ka tukang, saméméh biaya naon waé.';

  @override
  String get glossNetIncomeTtm =>
      'Laba anu nyésa sanggeus sagala biaya, bunga jeung pajeg salila 12 bulan ka tukang.';

  @override
  String get glossGrossMargin =>
      'Bagian pendapatan anu nyésa sanggeus biaya langsung produk. Margin anu luhur mindeng nuduhkeun kakuatan nangtukeun harga.';

  @override
  String get glossOperatingMargin =>
      'Bagian pendapatan anu nyésa sanggeus biaya ngajalankeun usaha (gajih, séwa, pamasaran), saméméh bunga jeung pajeg.';

  @override
  String get glossNetMargin =>
      'Bagian pendapatan anu jadi laba ahir. 20% hartina tina unggal 100 penjualan, 20 téh laba.';

  @override
  String get glossRoe =>
      'Imbal hasil ékuitas (ROE): laba taunan ÷ modal nu boga. Nuduhkeun sabaraha alus manajemén ngagunakeun duit pemegang saham; leuwih ti kira-kira 15% kaasup kuat.';

  @override
  String get glossRoa =>
      'Imbal hasil aset (ROA): laba taunan ÷ sagala anu dipiboga ku pausahaan. Bandingkeun dina industri anu sarua.';

  @override
  String get glossDebtToEquity =>
      'Hutang ÷ modal nu boga. Leuwih luhur hartina leuwih loba duit injeuman: résiko leuwih gedé lamun suku bunga naék atawa usaha ngalambatan.';

  @override
  String get glossCurrentRatio =>
      'Aset jangka pondok ÷ tagihan anu kudu dibayar dina sataun. Leuwih ti 1 hartina pausahaan bisa nutupan tagihan anu geus deukeut.';

  @override
  String get glossRevenueGrowth =>
      'Sabaraha pendapatan tumuwuh dibandingkeun jeung sataun saméméhna.';

  @override
  String get glossEpsGrowth =>
      'Sabaraha laba per saham tumuwuh dibandingkeun jeung sataun saméméhna.';

  @override
  String get glossDividendYield =>
      'Dividén taunan ÷ harga saham: panghasilan kas anu bakal ditampa unggal taun, dina persén tina naon anu anjeun bayar.';

  @override
  String get glossDividendPerShare =>
      'Dividén anu dibayarkeun pikeun hiji saham salila sataun ka tukang.';

  @override
  String get glossPayoutRatio =>
      'Bagian laba anu dibayarkeun salaku dividén. Leuwih ti 100% pausahaan mayar leuwih loba batan anu dimeunangkeun, anu jarang lumangsung lila.';

  @override
  String get portfolioBeta => 'Béta portofolio';

  @override
  String get glossPortfolioBeta =>
      'Béta saham anjeun, ditimbang dumasar kana ajénna: kira-kira sabaraha persén saham anjeun obah nalika pasar obah 1%. Di luhur 1 ayunanana leuwih gedé batan pasar, handapeun 1 leuwih leutik. Tunai teu kaasup.';

  @override
  String get portfolioTop3 => '3 posisi panggedéna';

  @override
  String get glossPortfolioTop3 =>
      'Sabaraha bagian tina ajén saham anjeun aya dina tilu posisi panggedéna anjeun. Beuki luhur, beuki gedé warta goréng ngeunaan hiji perusahaan bisa ngarugikeun sakabéh portofolio.';

  @override
  String get glossDividendGrowth5y =>
      'Sabaraha dividén per saham tumuwuh unggal taun sacara rata-rata salila lima taun ka tukang. Tumuwuh anu ajeg biasana hartosna pausahaan yakin kana aliran kasna; pamotongan sering janten tanda bahaya.';

  @override
  String get glossYieldOnCost =>
      'Dividén anu katampi dina 12 bulan panungtungan dibagi ku jumlah anu anjeun bayar pikeun saham anu masih dipiboga. Béda jeung imbal hasil dividén, ieu diukur dumasar harga meuli anjeun sorangan, lain harga ayeuna.';

  @override
  String get glossTitle => 'Naon hartina?';

  @override
  String get watchNewsTitle => 'Warta saham anjeun';

  @override
  String get undo => 'Balikeun';

  @override
  String get watchSort => 'Runtuykeun';

  @override
  String get watchSortOwn => 'Runtuyan abdi';

  @override
  String get watchSortGainers => 'Naék panggedéna heula';

  @override
  String get watchSortLosers => 'Turun panggedéna heula';

  @override
  String get watchSortName => 'Dumasar kode saham (A–Z)';

  @override
  String get watchHint =>
      'Sered cepengan pikeun ngarobih runtuyan, usapkeun ka kénca pikeun miceun. Garis nembongkeun 30 dinten pamungkas.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: analisis anjeun parantos siap.';
  }

  @override
  String alertFromCost(String price) {
    return 'Tina harga beuli rata-rata anjeun ($price):';
  }

  @override
  String get briefTitle => 'Dinten ieu sareng saham anjeun';

  @override
  String get briefButton => 'Ringkes dinten ieu';

  @override
  String get briefHint =>
      'Ringkesan AI pondok ngeunaan kumaha portofolio sareng paporit anjeun gerak dinten ieu sareng naon anu dicarioskeun ku warta panganyarna. Henteu nganggo analisis.';

  @override
  String get briefRefresh => 'Apdet';

  @override
  String get sectionEarnings => 'Laporan kuartalan';

  @override
  String earningsNext(String date) {
    return 'Laporan salajengna: $date';
  }

  @override
  String get earningsExpected => 'EPS anu diperkirakeun';

  @override
  String get earningsReported => 'EPS anu dilaporkeun';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Sarua atawa di luhur EPS anu diperkirakeun dina $beats ti $total kuartal pamungkas',
      one:
          'Sarua atawa di luhur EPS anu diperkirakeun dina $beats ti 1 kuartal',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol ngumumkeun laporan kuartalan isukan';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol ngumumkeun laporan kuartalan poé ieu';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return 'Dividen $symbol diperkirakeun poé ieu';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Kira-kira $amount. Catet dina portofolio anjeun upami parantos lebet.';
  }

  @override
  String get dividendRemindersTitle => 'Panginget dividen';

  @override
  String get dividendRemindersSubtitle =>
      'Béwara dina poé dividen diperkirakeun dumasar kana wirahma pamayaran anu anjeun catet, supados anjeun tiasa nyatetna';

  @override
  String get earningsRemindersTitle => 'Panginget laporan';

  @override
  String get earningsRemindersSubtitle =>
      'Béwara sapoé saméméh saham paporit atawa portofolio anjeun ngumumkeun laporan kuartalan';

  @override
  String addAllToFavorites(int count) {
    return 'Tambahkeun sadayana ka paporit ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Impor tina tangkapan layar';

  @override
  String get holdingsReading => 'Maca posisi anjeun…';

  @override
  String get holdingsReviewTitle => 'Posisi anu kapanggih';

  @override
  String get holdingsReviewHint =>
      'Pariksa heula angka-angkana saméméh ditambahkeun. Harga téh rata-rata harga pameulian per saham anjeun, lain harga poé ieu.';

  @override
  String get holdingsNoPrice => 'Teu aya rata-rata harga pameulian dina gambar';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tambahkeun $count posisi',
      one: 'Tambahkeun 1 posisi',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Teu kapanggih posisi saham dina gambar ieu. Cobian tangkapan layar kaca posisi atanapi aset di aplikasi pialang anjeun.';

  @override
  String get week52Range => 'Rentang 52 minggu';

  @override
  String week52BelowHigh(String percent) {
    return '$percent di handapeun pangluhurna 52 minggu';
  }

  @override
  String get week52AtHigh => 'Dina pangluhurna 52 minggu';

  @override
  String get alertKindTrailing => 'Turun ti puncak';

  @override
  String get alertTrailingPercent => 'Turun ti puncak (%)';

  @override
  String get alertTrailingHint =>
      'Nuturkeun harga naék: béwara disada lamun harga turun sakitu ti titik pangluhurna saprak anjeun nyetél éta.';

  @override
  String alertDescTrailing(String percent) {
    return 'Turun $percent ti puncak';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'puncak nepi ka ayeuna: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol turun $percent ti puncak';
  }

  @override
  String get sectionInsiders => 'Transaksi urang jero';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pameseran',
      one: '1 pameseran',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count penjualan',
      one: '1 penjualan',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Bersih: $shares saham';
  }

  @override
  String get insiderBuy => 'Meuli';

  @override
  String get insiderSell => 'Ngajual';

  @override
  String get insiderHint =>
      'Pameseran sareng penjualan di pasar kabuka ku eksekutif sareng diréktur dina 90 dinten panungtung (SEC Form 4). Palaksanaan opsi sareng hadiah saham henteu diitung.';

  @override
  String get insiderNone =>
      'Teu aya pameseran atanapi penjualan urang jero di pasar kabuka dina 90 dinten panungtung.';

  @override
  String get analystTrend => 'Kumaha pamadegan robah ti bulan ka bulan';

  @override
  String get watchListAll => 'Sadayana';

  @override
  String get watchListNew => 'Daptar anyar';

  @override
  String get watchListName => 'Ngaran daptar';

  @override
  String get watchListRename => 'Ganti ngaran daptar';

  @override
  String get watchListDelete => 'Hapus daptar';

  @override
  String get watchListAddTo => 'Tambahkeun ka daptar';

  @override
  String get watchListEmpty =>
      'Can aya saham dina daptar ieu. Toél tombol daptar di gigireun saham pikeun nambahkeunana.';

  @override
  String get portfolioAskTitle => 'Patarosan ngeunaan portofolio anjeun';

  @override
  String get rangeYtd => 'Taun ieu';

  @override
  String get backupTitle => 'Cadangan';

  @override
  String get backupSave => 'Simpen cadangan';

  @override
  String get backupSaveHint =>
      'Paporit, daptar, portofolio, béwara, jeung catetan anjeun dina hiji file.';

  @override
  String get backupRestore => 'Pulihkeun tina cadangan';

  @override
  String get backupRestoreHint =>
      'Nambahkeun eusi file; euweuh nu dipiboga ayeuna anu dihapus.';

  @override
  String get backupRestored => 'Cadangan dipulihkeun.';

  @override
  String get backupInvalid => 'File ieu sanés cadangan WhatStock.';

  @override
  String get allocationPositions => 'Saham';

  @override
  String get allocationSectors => 'Séktor';

  @override
  String get allocationCurrencies => 'Mata uang';

  @override
  String get compareReturn1y => 'Hasil 1 taun';

  @override
  String get compareFromHigh => 'Ti pangluhurna 52 minggu';

  @override
  String get briefAutoTitle => 'Ringkesan unggal dinten unggal énjing';

  @override
  String get briefAutoSubtitle =>
      '“Dinten ieu sareng saham anjeun” didamel otomatis saatos jam 07.00 salami aplikasi jalan; dina komputer, béwara bakal ngabéjaan anjeun. Nganggo wates patarosan sapopoé anjeun, sanés analisis.';

  @override
  String get targetsButton => 'Alokasi target';

  @override
  String get targetsTitle => 'Alokasi target';

  @override
  String get targetsHint =>
      'Tangtukeun sabaraha bagian portopolio anu kedah dipiboga ku unggal saham. Antepkeun kolom kosong upami teu aya target. Aplikasi teras nembongkeun naon anu kedah dibeuli atanapi dijual.';

  @override
  String targetsSum(String percent) {
    return 'Jumlah: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Beuli ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Jual ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Saluyu target';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol ngaleuwihan EPS anu diperkirakeun';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol teu nepi ka EPS anu diperkirakeun';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'EPS anu dilaporkeun $actual, diperkirakeun $estimate';
  }

  @override
  String get newsExplain => 'Ieu hartosna naon?';

  @override
  String get watchAlertAll => 'Pépéling pikeun gerak harian gedé';

  @override
  String get watchAlertAllHint =>
      'Pépéling harga pikeun unggal saham dina daptar ieu anu disada nalika saham gerak sakitu dina sapoé, naék atawa turun. Saham anu geus boga pépéling tetep maké nu sorangan.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pépéling dipasang',
      one: '1 pépéling dipasang',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized =>
      'Ékspor kauntungan nu geus diréalisasikeun (CSV)';

  @override
  String get portfolioAnnualReturn => 'Imbal hasil taunan';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / taun';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Imbal hasil taunan anu ditimbang dumasar artos (XIRR): ngitung iraha anjeun meuli jeung ngajual, jadi artos anu ditambahkeun engké henteu ngaganggu itunganana. Ditémbongkeun saatos pameulian munggaran anjeun sahenteuna sataun; dividén henteu kaasup.';

  @override
  String get eventsAddToCalendar => 'Tambahkeun ka kalénder (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Béwara portofolio';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Béwara nalika sakabéh portofolio anjeun gerak sakitu dina sapoé.';

  @override
  String get portfolioMoveAlertOff => 'Pareum';

  @override
  String portfolioMoveUp(String percent) {
    return 'Portofolio anjeun naék $percent poé ieu';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Portofolio anjeun turun $percent poé ieu';
  }

  @override
  String get whatIfTitle => 'Kumaha upami anjeun investasi?';

  @override
  String get whatIfAmount => 'Jumlah';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount anu diinvestasikeun $period ka tukang ayeuna hargana';
  }

  @override
  String get whatIfNote =>
      'Ngan dumasar kana harga saham: dividén, biaya, jeung pajeg teu kaasup. Hasil ti tukang henteu ngaramal hasil ka hareup.';

  @override
  String get watchShare => 'Bagikeun daptar';

  @override
  String get watchImport => 'Tambahkeun kode saham';

  @override
  String get watchImportHint =>
      'Témpélkeun kode saham anu dipisahkeun ku koma, spasi atawa baris anyar – contona daptar anu dibagikeun ku batur ka anjeun.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count saham ditambahkeun',
      one: '1 saham ditambahkeun',
      zero: 'Teu aya saham anyar',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Panggedéna heula';

  @override
  String get positionsSortGain => 'Hasil total pangluhurna heula';

  @override
  String get positionsSortToday => 'Pangalusna poé ieu heula';

  @override
  String get chartMyBuys => 'Pameulian anjeun';

  @override
  String get chartMySells => 'Penjualan anjeun';

  @override
  String get shortcutsTitle => 'Pintasan kibor';

  @override
  String usMarketOpen(String time) {
    return 'Pasar AS buka · nutup $time deui';
  }

  @override
  String usMarketClosed(String time) {
    return 'Pasar AS tutup · muka $time deui';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes mnt';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours jam $minutes mnt';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days poé $hours jam';
  }

  @override
  String get dividendGoalSet => 'Setél target dividén bulanan';

  @override
  String get dividendGoalTitle => 'Target dividén bulanan';

  @override
  String get dividendGoalAmount => 'Dividén per bulan';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Kira-kira $amount per bulan dumasar imbal hasil ayeuna: $percent tina target $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Kira-kira $amount per bulan dumasar imbal hasil ayeuna: target $goal kahontal';
  }

  @override
  String get portfolioAccount => 'Akun';

  @override
  String get portfolioAccountHint => 'conto: TBSZ 2026 (opsional)';

  @override
  String get portfolioAccountAdd => 'Tangtukeun akun';

  @override
  String get portfolioAccountsAll => 'Sadaya akun';

  @override
  String get portfolioAccountNote =>
      'Ngan transaksi akun ieu. Tunai jeung dividen ditémbongkeun dina Sadaya akun.';

  @override
  String get portfolioNoAccount => 'Tanpa akun';

  @override
  String get portfolioGoalSet => 'Setél target';

  @override
  String get portfolioGoalTitle => 'Target portofolio';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent tina target $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Target $amount kahontal';
  }

  @override
  String get portfolioGoalRemove => 'Hapus target';

  @override
  String get alertEdit => 'Robah béwara';

  @override
  String get positionOpenLots => 'Masih dicekel (nu pangkolotna heula)';

  @override
  String get lotRemoved => 'Transaksi geus dipupus';

  @override
  String get alertDeleted => 'Pépéling geus dipupus';

  @override
  String get alertsClearTriggered => 'Pupus pépéling anu geus aktip';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pépéling dipupus',
      one: '1 pépéling dipupus',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Layar utama';

  @override
  String get allocationCountries => 'Nagara';

  @override
  String get newsExplainNoteResearch =>
      'Katerangan AI: néangan fakta di wéb, muka artikelna, sarta meunteun sabaraha bisa dipercaya sumberna. Lain naséhat investasi. Nganggo wates patarosan sapopoé anjeun, sanés analisis.';

  @override
  String get sourceOfficial => 'Resmi';

  @override
  String get sourcePressRelease => 'Siaran pers';

  @override
  String get sourceMajorNews => 'Média gedé';

  @override
  String get sourceOpinion => 'Pamadegan';

  @override
  String get earningsSummaryButton => 'Naon eusi laporan panganyarna?';

  @override
  String get earningsSummaryNote =>
      'Ringkesan AI ngeunaan pengumuman hasil pausahaan jeung liputan média anu kapanggih di wéb. Lain naséhat investasi. Nganggo wates patarosan sapopoé anjeun, sanés analisis.';

  @override
  String get compareLastSurprise => 'EPS kuartal kamari vs. diperkirakeun';

  @override
  String get compareNextReport => 'Laporan salajengna';

  @override
  String get resolvingDescription => 'Néangan saham nu dimaksud ku anjeun…';

  @override
  String get instrumentTitle => 'Ngeunaan instrumén ieu';

  @override
  String get instrumentHint =>
      'Teu aya profil pausahaan pikeun simbol ieu – bisa jadi ETF, dana, atawa depositary receipt. Tanyakeun ka AI naon éta, naon eusina, sareng sabaraha wargina.';

  @override
  String get instrumentAsk => 'Naon ieu?';

  @override
  String get instrumentNote =>
      'Katerangan AI tina halaman dana penerbit sareng situs kauangan anu kapanggih di wéb. Lain naséhat investasi. Nganggo wates patarosan sapopoé anjeun, sanés analisis.';

  @override
  String suggestAskAi(String query) {
    return 'Tanya ka AI: “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Teu aya harga ayeuna pikeun $symbols.';
  }

  @override
  String get eventsRecentResults => 'Laporan anyar';

  @override
  String get saveToNotes => 'Simpen ka catetan abdi';

  @override
  String get savedToNotes => 'Parantos disimpen dina catetan anjeun';

  @override
  String get portfolioDividendsReceived => 'Dividen anu katampi';

  @override
  String get portfolioDividendsThisYear => 'Taun ieu';

  @override
  String get portfolioDividendsAllTime => 'Sadayana';

  @override
  String get portfolioAddDividend => 'Tambihkeun dividen';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Jumlah anu katampi ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Tanggal pamayaran';

  @override
  String get portfolioDividendsEmpty =>
      'Can aya dividen anu kacatet. Tambihkeun sacara manual, atanapi impor ékspor ti broker anjeun – baris dividenna ogé bakal kacandak.';

  @override
  String get portfolioSplit => 'Pamecahan saham';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Pamecahan saham: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Pameseran sareng penjualan anu tanggalna sateuacan pamecahan bakal disaluyukeun: jumlah saham dikalikeun sareng harga per saham dibagi, janten biayana tetep sami.';

  @override
  String get portfolioSplitRatio => 'Rasio (anyar : heubeul)';

  @override
  String get portfolioSplitRatioError =>
      'Lebetkeun rasio sapertos 10:1, atanapi 1:10 kanggo pamecahan tibalik.';

  @override
  String get portfolioSplitDate => 'Tanggal pamecahan';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Pamecahan saham $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Pamecahan saham parantos dihapus';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pamecahan saham ditambihkeun',
      one: '1 pamecahan saham ditambihkeun',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dividen ditambihkeun',
      one: '1 dividen ditambihkeun',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Ékspor dividen (CSV)';

  @override
  String get portfolioDividendDeleted => 'Dividen dihapus';

  @override
  String get portfolioDividendsHint =>
      'Jumlah sakumaha asupna kana akun anjeun, dina mata uang pamayaran; totalna dikonvérsi ku kurs dinten ieu. Kanggo laporan pajeg, anggo laporan ti broker anjeun.';

  @override
  String get awayTitle => 'Nalika anjeun teu aya';

  @override
  String awaySince(String when) {
    return 'Ti $when';
  }

  @override
  String get awayQuiet => 'Teu aya nu robih pisan.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count peringatan dipicu',
      one: '1 peringatan dipicu',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Hasil anu dilaporkeun: $symbols';
  }

  @override
  String get moveWhyButton => 'Naha dinten ieu obah?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent dinten ieu';
  }

  @override
  String get moveWhyNote =>
      'Katerangan AI dumasar warta dinten ieu anu kapendak di wéb; alesan saleresna tiasa teu dipikanyaho atanapi béda. Sanés naséhat investasi. Ngagunakeun kuota patarosan harian anjeun, sanés analisis.';

  @override
  String get sectionTechnical => 'Gambaran téknis';

  @override
  String get labelSma50 => 'Rata-rata 50 poé';

  @override
  String get labelSma200 => 'Rata-rata 200 poé';

  @override
  String get labelRsi => 'RSI (14 poé)';

  @override
  String get labelVolatility30 => 'Volatilitas (30 poé)';

  @override
  String techAbove(String percent) {
    return '$percent di luhur';
  }

  @override
  String techBelow(String percent) {
    return '$percent di handap';
  }

  @override
  String get techOverbought => 'kaleuwihan dibeuli';

  @override
  String get techOversold => 'kaleuwihan dijual';

  @override
  String get techNeutral => 'nétral';

  @override
  String get techGoldenCross =>
      'Rata-rata 50 poé aya di luhureun rata-rata 200 poé – tren naék numutkeun bacaan klasik.';

  @override
  String get techDeathCross =>
      'Rata-rata 50 poé aya di handapeun rata-rata 200 poé – tren turun numutkeun bacaan klasik.';

  @override
  String get glossSma50 =>
      'Rata-rata harga panutup 50 poé dagang panungtungan. Harga di luhureunana sering dibaca salaku kakuatan jangka pondok, di handapeunana salaku kalemahan.';

  @override
  String get glossSma200 =>
      'Rata-rata harga panutup 200 poé dagang panungtungan – garis tren jangka panjang anu klasik. Loba investor nganggap harga di luhureunana salaku tren naék jangka panjang.';

  @override
  String get glossRsi =>
      'Indéks kakuatan rélatif: ngabandingkeun kauntungan anyar jeung karugian anyar dina skala 0–100. Di luhur 70 saham sering disebut kaleuwihan dibeuli (naék gancang), di handap 30 kaleuwihan dijual – tapi tren anu kuat bisa cicing di dinya lila.';

  @override
  String get glossVolatility =>
      'Sakumaha gedé harga ngayun unggal poé, diskalakeun ka sataun: 20% hartina taun biasa gerak dina kurang leuwih ±20%. Volatilitas anu leuwih luhur hartina gerakan anu leuwih gedé ka dua arah.';

  @override
  String get techNote =>
      'Diitung tina harga panutup poéan. Sinyal téknis ngagambarkeun jaman baheula, lain pikahareupeun.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$above tina $count posisi di luhureun rata-rata 200 poéna';
  }

  @override
  String get watchSignalsTitle => 'Sinyal';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · kaleuwihan dijual';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · kaleuwihan dibeuli';
  }

  @override
  String get signalCrossedAbove => 'nembus ka luhureun rata-rata 200 poé';

  @override
  String get signalCrossedBelow => 'nembus ka handapeun rata-rata 200 poé';

  @override
  String get signalAlertsTitle => 'Béwara sinyal téknis';

  @override
  String get signalAlertsSubtitle =>
      'Sakali sapoé, nalika saham anu anjeun tuturkeun jadi kaleuwihan dijual atanapi kaleuwihan dibeuli (RSI), atanapi hargana meuntas rata-rata 200 poé.';

  @override
  String get signalAlertsNotification => 'Sinyal téknis';

  @override
  String get glossaryPageTitle => 'Daptar istilah';

  @override
  String get glossaryPageSubtitle =>
      'Katerangan basajan unggal angka anu dipidangkeun aplikasi, ti P/E dugi ka RSI';

  @override
  String get glossarySearchHint => 'Paluruh dina daptar istilah';

  @override
  String get portfolioCash => 'Tunai';

  @override
  String get portfolioCashTitle => 'Saldo tunai';

  @override
  String get portfolioCashHint =>
      'Artos anu teu acan diinvestasikeun di broker anjeun, dumasar mata uang. Diitung dina total nilai sareng alokasi; henteu dina hasil.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Jumlah ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Setel saldo tunai';

  @override
  String get portfolioDividendsByMonth => 'Per bulan';

  @override
  String get dividendsLegendReceived => 'Katampi';

  @override
  String get dividendsLegendExpected => 'Diperkirakeun';

  @override
  String get portfolioDividendsExpected => 'Diperkirakeun salajengna';

  @override
  String get portfolioDividendsExpectedNote =>
      'Diperkirakeun tina tanggal sareng jumlah pamayaran anu anjeun catet; pausahaan tiasa ngarobih atanapi ngaliwatanana.';

  @override
  String portfolioDividendAround(String date) {
    return 'kira-kira $date';
  }
}
