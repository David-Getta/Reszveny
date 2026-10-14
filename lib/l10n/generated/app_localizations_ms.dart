// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class AppLocalizationsMs extends AppLocalizations {
  AppLocalizationsMs([String locale = 'ms']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Ambil foto saham dan ketahui segala-galanya mengenainya.';

  @override
  String get homeHint =>
      'Sijil saham, skrin aplikasi broker, surat khabar atau logo syarikat – apa-apa sahaja yang dapat mengenal pasti sesuatu saham.';

  @override
  String get takePhoto => 'Ambil foto';

  @override
  String get chooseFromGallery => 'Pilih dari galeri';

  @override
  String get chooseImage => 'Pilih imej';

  @override
  String get enterTickerManually => 'Masukkan ticker secara manual';

  @override
  String get tickerInputLabel => 'Simbol ticker';

  @override
  String get tickerInputHint => 'cth. AAPL';

  @override
  String get lookUp => 'Cari';

  @override
  String demoModeBanner(String symbols) {
    return 'Mod demo – tiada kunci data pasaran dikonfigurasikan. Data sampel tersedia untuk: $symbols.';
  }

  @override
  String get recognizing => 'Menganalisis imej…';

  @override
  String get loadingData => 'Memuatkan data…';

  @override
  String get noCandidatesTitle => 'Tiada saham dikenal pasti';

  @override
  String get noCandidatesBody =>
      'Kami tidak dapat mengenal pasti saham dalam imej ini. Cuba foto yang lebih jelas, atau masukkan ticker secara manual.';

  @override
  String get whatWeSaw => 'Apa yang kami lihat';

  @override
  String get chooseCandidateTitle => 'Saham yang mana satu anda maksudkan?';

  @override
  String confidencePercent(int percent) {
    return 'Keyakinan $percent%';
  }

  @override
  String get settings => 'Tetapan';

  @override
  String get language => 'Bahasa';

  @override
  String get systemLanguage => 'Lalai sistem';

  @override
  String get about => 'Perihal';

  @override
  String get disclaimer =>
      'Aplikasi ini hanya menyediakan maklumat dan bukan nasihat pelaburan. Data mungkin tertangguh atau tidak tepat.';

  @override
  String dataSource(String source) {
    return 'Sumber data: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Pengecaman: $source';
  }

  @override
  String get retry => 'Cuba lagi';

  @override
  String get cancel => 'Batal';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Tutup';

  @override
  String get errorGeneric => 'Ada sesuatu yang tidak kena.';

  @override
  String get errorSectionUnavailable => 'Bahagian ini tidak dapat dimuatkan.';

  @override
  String get notAvailable => 't/a';

  @override
  String get sectionIdentity => 'Pengenalan';

  @override
  String get sectionPrice => 'Harga';

  @override
  String get sectionValuation => 'Penilaian';

  @override
  String get sectionFinancials => 'Kewangan';

  @override
  String get sectionDividend => 'Dividen';

  @override
  String get sectionProfile => 'Profil syarikat';

  @override
  String get sectionAnalysts => 'Penarafan penganalisis';

  @override
  String get sectionNews => 'Berita';

  @override
  String get sectionRecognition => 'Butiran pengecaman';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Bursa';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Mata wang';

  @override
  String get labelCountry => 'Negara';

  @override
  String get labelIndustry => 'Industri';

  @override
  String get labelSector => 'Sektor';

  @override
  String get labelWebsite => 'Laman web';

  @override
  String get labelIpoDate => 'Tarikh IPO';

  @override
  String get labelMarketCap => 'Permodalan pasaran';

  @override
  String get labelSharesOutstanding => 'Saham terbitan';

  @override
  String get labelEmployees => 'Pekerja';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Ibu pejabat';

  @override
  String get labelDescription => 'Penerangan';

  @override
  String get labelLastPrice => 'Harga terakhir';

  @override
  String get labelChange => 'Perubahan';

  @override
  String get labelOpen => 'Harga buka';

  @override
  String get labelDayHigh => 'Tertinggi hari ini';

  @override
  String get labelDayLow => 'Terendah hari ini';

  @override
  String get labelPreviousClose => 'Harga tutup sebelumnya';

  @override
  String get labelWeek52High => 'Tertinggi 52 minggu';

  @override
  String get labelWeek52Low => 'Terendah 52 minggu';

  @override
  String get labelAverageVolume10d => 'Purata volum (10 hari)';

  @override
  String updatedAt(String time) {
    return 'Dikemas kini $time';
  }

  @override
  String get labelPeTrailing => 'P/E (sejarah)';

  @override
  String get labelPeForward => 'P/E (hadapan)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / aliran tunai bebas';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Hasil (TTM)';

  @override
  String get labelNetIncomeTtm => 'Keuntungan bersih (TTM)';

  @override
  String get labelGrossMargin => 'Margin kasar';

  @override
  String get labelOperatingMargin => 'Margin operasi';

  @override
  String get labelNetMargin => 'Margin bersih';

  @override
  String get labelRoe => 'Pulangan atas ekuiti';

  @override
  String get labelRoa => 'Pulangan atas aset';

  @override
  String get labelDebtToEquity => 'Hutang / ekuiti';

  @override
  String get labelCurrentRatio => 'Nisbah semasa';

  @override
  String get labelRevenueGrowth => 'Pertumbuhan hasil (YoY)';

  @override
  String get labelEpsGrowth => 'Pertumbuhan EPS (YoY)';

  @override
  String get labelDividendYield => 'Hasil dividen';

  @override
  String get labelDividendPerShare => 'Dividen sesaham';

  @override
  String get labelPayoutRatio => 'Nisbah pembayaran';

  @override
  String get labelConsensus => 'Konsensus';

  @override
  String get ratingStrongBuy => 'Beli kuat';

  @override
  String get ratingBuy => 'Beli';

  @override
  String get ratingHold => 'Pegang';

  @override
  String get ratingSell => 'Jual';

  @override
  String get ratingStrongSell => 'Jual kuat';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count penganalisis',
      one: '1 penganalisis',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Tempoh: $period';
  }

  @override
  String get noNews => 'Tiada berita terkini.';

  @override
  String get openArticle => 'Buka artikel';

  @override
  String get openLinkFailed => 'Pautan tidak dapat dibuka.';

  @override
  String get recognitionSummary => 'Ringkasan';

  @override
  String get recognitionEvidence => 'Mengapa kami fikir begitu';

  @override
  String get recognitionRawText => 'Teks yang dibaca daripada imej';

  @override
  String get errMissingAnthropicKey =>
      'Pengecaman imej tidak dikonfigurasikan (tiada ANTHROPIC_API_KEY). Masukkan ticker secara manual.';

  @override
  String get errRecognitionUnreachable =>
      'Tidak dapat menghubungi perkhidmatan pengecaman. Semak sambungan internet anda.';

  @override
  String errRecognitionHttp(String status) {
    return 'Perkhidmatan pengecaman mengembalikan ralat (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Perkhidmatan pengecaman tidak dapat memproses imej ini.';

  @override
  String get errRecognitionTruncated =>
      'Respons pengecaman terputus. Sila cuba lagi.';

  @override
  String get errRecognitionBadResponse =>
      'Respons yang tidak dijangka daripada perkhidmatan pengecaman.';

  @override
  String get errRecognitionEmpty =>
      'Perkhidmatan pengecaman mengembalikan respons kosong.';

  @override
  String get errMissingFinnhubKey =>
      'Data pasaran tidak dikonfigurasikan (tiada FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Tidak dapat menghubungi perkhidmatan data pasaran. Semak sambungan internet anda.';

  @override
  String get errMarketRateLimited =>
      'Terlalu banyak permintaan kepada perkhidmatan data pasaran. Sila tunggu seminit.';

  @override
  String errMarketHttp(String status) {
    return 'Perkhidmatan data pasaran mengembalikan ralat (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Respons yang tidak dijangka daripada perkhidmatan data pasaran.';

  @override
  String errNoQuote(String symbol) {
    return 'Tiada data harga ditemui untuk $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Tiada profil syarikat ditemui untuk $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Mod demo hanya menyokong $symbols. Tambahkan FINNHUB_API_KEY untuk data langsung.';
  }

  @override
  String errUnknown(String detail) {
    return 'Ada sesuatu yang tidak kena: $detail';
  }

  @override
  String get newSearch => 'Carian baharu';

  @override
  String get recentSearches => 'Terkini';

  @override
  String get noRecentSearches => 'Belum ada carian terkini.';

  @override
  String get clearRecent => 'Kosongkan carian terkini';

  @override
  String get greeting => 'Saham mana yang hendak kita lihat?';

  @override
  String get searchHint => 'Ticker atau nama syarikat';

  @override
  String get attachImage => 'Lampirkan imej';

  @override
  String get searchResultsTitle => 'Hasil carian';

  @override
  String errNoResults(String query) {
    return 'Tiada saham ditemui untuk “$query”.';
  }

  @override
  String get quickBarHint => 'Taip ticker atau nama syarikat…';

  @override
  String get openFullWindow => 'Buka tetingkap';

  @override
  String hotkeyHint(String shortcut) {
    return 'Tekan $shortcut di mana-mana untuk memanggil WhatStock.';
  }

  @override
  String get trayOpen => 'Buka WhatStock';

  @override
  String get trayQuickSearch => 'Carian pantas';

  @override
  String get trayQuit => 'Keluar';

  @override
  String get appearance => 'Penampilan';

  @override
  String get themeSystem => 'Sistem';

  @override
  String get themeDark => 'Gelap';

  @override
  String get themeLight => 'Cerah';

  @override
  String get back => 'Kembali';

  @override
  String get aiSectionTitle => 'Analisis AI';

  @override
  String get aiIntro =>
      'Gambaran keseluruhan terperinci yang ditulis oleh AI: ringkasan berita terkini, perniagaan, kekuatan, risiko dan faktor tersembunyi, penilaian, tinjauan harga dengan senario dari sudut psikologi, sosiologi, teknikal dan makro, serta perkara yang perlu diperhatikan.';

  @override
  String get aiGenerate => 'Jana analisis';

  @override
  String get aiRegenerate => 'Jana semula';

  @override
  String get aiGenerating =>
      'Menyediakan analisis… ini mungkin mengambil masa satu atau dua minit.';

  @override
  String get aiSources => 'Sumber';

  @override
  String aiGeneratedAt(String time) {
    return 'Dijana $time';
  }

  @override
  String get aiDisclaimer =>
      'Analisis yang dijana oleh AI berdasarkan data awam dan berita terkini. Ia mungkin mengandungi kesilapan atau sudah lapuk, dan bukan nasihat pelaburan.';

  @override
  String get errAiNotConfigured =>
      'Analisis AI tidak dikonfigurasikan (tiada ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Tidak dapat menghubungi perkhidmatan AI. Semak sambungan internet anda.';

  @override
  String errAiHttp(String status) {
    return 'Perkhidmatan AI mengembalikan ralat (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Perkhidmatan AI enggan menganalisis saham ini.';

  @override
  String get errAiBadResponse =>
      'Respons yang tidak dijangka daripada perkhidmatan AI.';

  @override
  String get sectionChart => 'Carta harga';

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
      'Sejarah harga tidak tersedia daripada sumber data semasa.';

  @override
  String get sectionStatements => 'Penyata kewangan (tahunan)';

  @override
  String get labelFiscalYear => 'Tahun kewangan';

  @override
  String get labelRevenue => 'Hasil';

  @override
  String get labelNetIncome => 'Keuntungan bersih';

  @override
  String get labelTotalAssets => 'Jumlah aset';

  @override
  String get labelTotalLiabilities => 'Jumlah liabiliti';

  @override
  String get labelEquity => 'Ekuiti pemegang saham';

  @override
  String get labelOperatingCashFlow => 'Aliran tunai operasi';

  @override
  String get statementsUnavailable =>
      'Penyata kewangan yang dilaporkan tidak tersedia untuk saham ini.';

  @override
  String get launchAtLogin => 'Lancarkan semasa log masuk';

  @override
  String get hotkeyLabel => 'Pintasan global';

  @override
  String get hotkeyRecordHint =>
      'Klik di sini, kemudian tekan gabungan kekunci baharu';

  @override
  String get hotkeyReset => 'Tetapkan semula kepada lalai';

  @override
  String get pasteImage => 'Tampal imej dari papan keratan';

  @override
  String get errClipboardNoImage => 'Tiada imej pada papan keratan.';

  @override
  String get favorites => 'Kegemaran';

  @override
  String get addToFavorites => 'Tambah ke kegemaran';

  @override
  String get removeFromFavorites => 'Alih keluar daripada kegemaran';

  @override
  String get noFavorites =>
      'Belum ada kegemaran. Ketik bintang pada saham untuk menambahkannya.';

  @override
  String get displayCurrency => 'Mata wang paparan';

  @override
  String get displayCurrencyNone => 'Mata wang saham itu sendiri sahaja';

  @override
  String labelConverted(String currency) {
    return '≈ dalam $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Kadar: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Kemas kini';

  @override
  String currentVersion(String version) {
    return 'Versi $version';
  }

  @override
  String get autoUpdate => 'Pasang kemas kini secara automatik';

  @override
  String get checkForUpdates => 'Semak kemas kini';

  @override
  String get updateChecking => 'Menyemak kemas kini…';

  @override
  String get updateUpToDate => 'Anda menggunakan versi terkini.';

  @override
  String updateAvailable(String version) {
    return 'Versi $version sudah tersedia.';
  }

  @override
  String get updateDownloading => 'Memuat turun kemas kini di latar belakang…';

  @override
  String get updateDownloaded =>
      'Kemas kini sudah sedia. Mulakan semula untuk memasangnya.';

  @override
  String get updateNow => 'Kemas kini';

  @override
  String get restartNow => 'Mulakan semula';

  @override
  String get updatesViaStore =>
      'Kemas kini diterima secara automatik melalui gedung aplikasi.';

  @override
  String get updateCheckFailed => 'Tidak dapat menyemak kemas kini.';

  @override
  String get subscription => 'Langganan';

  @override
  String get planTrial => 'Percubaan';

  @override
  String get planNormal => 'Biasa';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Tiada pelan aktif';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count analisis sebulan';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Percubaan percuma $days hari dengan $count analisis';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days hari percubaan lagi',
      one: '1 hari percubaan lagi',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Percubaan percuma anda telah tamat. Pilih pelan untuk terus menganalisis.';

  @override
  String analysesRemaining(int remaining, int total) {
    return '$remaining daripada $total analisis berbaki untuk tempoh ini';
  }

  @override
  String extraCredits(int count) {
    return '$count analisis tambahan';
  }

  @override
  String renewsOn(String date) {
    return 'Diperbaharui pada $date';
  }

  @override
  String get choosePlan => 'Pilih pelan';

  @override
  String get currentPlan => 'Pelan semasa';

  @override
  String get subscribe => 'Langgan';

  @override
  String get perMonth => '/ bulan';

  @override
  String get extraPacksTitle => 'Perlukan lagi? Beli analisis tambahan';

  @override
  String get extraPacksHint =>
      'Analisis tambahan tidak pernah luput dan digunakan selepas peruntukan bulanan anda habis.';

  @override
  String get buy => 'Beli';

  @override
  String get restorePurchases => 'Pulihkan pembelian';

  @override
  String get manageSubscription => 'Urus langganan';

  @override
  String get purchaseSuccess => 'Terima kasih! Pembelian anda kini aktif.';

  @override
  String get purchasePending => 'Pembelian belum selesai…';

  @override
  String get purchaseFailed => 'Pembelian tidak dapat diselesaikan.';

  @override
  String get purchaseCanceled => 'Pembelian dibatalkan.';

  @override
  String get billingUnavailable =>
      'Pembelian belum tersedia pada platform ini. Langgan pada telefon atau Mac anda; pelan anda akan berfungsi pada setiap peranti.';

  @override
  String get errQuotaExceeded =>
      'Anda tiada lagi baki analisis untuk tempoh ini. Naik taraf pelan anda atau beli analisis tambahan.';

  @override
  String get errTrialExpired =>
      'Percubaan percuma anda telah tamat. Pilih pelan untuk meneruskan.';

  @override
  String get errNoPlan => 'Pelan aktif diperlukan untuk analisis AI.';

  @override
  String get viewPlans => 'Lihat pelan';

  @override
  String get usageTitle => 'Penggunaan';

  @override
  String get demoPurchaseNote =>
      'Pengebilan demo: pembelian disimulasikan pada platform ini.';

  @override
  String get mostPopular => 'Paling popular';

  @override
  String get bestValue => 'Nilai terbaik';

  @override
  String get planFeaturesCommon =>
      'Pengecaman foto, data langsung, carta, kegemaran dan kesemua 120 bahasa disertakan dalam setiap pelan. Peruntukan meliputi analisis AI.';

  @override
  String get searchLanguages => 'Cari bahasa…';

  @override
  String get noLanguageMatch => 'Tiada bahasa yang sepadan.';

  @override
  String get aiSettings => 'Analisis AI';

  @override
  String get aiLength => 'Panjang';

  @override
  String get aiDepthBrief => 'Ringkas';

  @override
  String get aiDepthStandard => 'Standard';

  @override
  String get aiDepthDeep => 'Mendalam';

  @override
  String get aiDepthBriefDesc => 'Perkara penting, dengan pantas.';

  @override
  String get aiDepthStandardDesc => 'Laporan penuh dengan setiap bahagian.';

  @override
  String get aiDepthDeepDesc =>
      'Lebih banyak carian web, perbandingan dengan syarikat setara dan butiran yang lebih mendalam.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Kira-kira $min–$max perkataan';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'menggunakan $count analisis',
      one: 'menggunakan 1 analisis',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Tahap pembaca';

  @override
  String get aiReaderBeginner => 'Pemula';

  @override
  String get aiReaderExperienced => 'Berpengalaman';

  @override
  String get aiReaderBeginnerDesc =>
      'Bahasa mudah; setiap istilah teknikal diterangkan.';

  @override
  String get aiReaderExperiencedDesc =>
      'Teks lebih padat dengan istilah kewangan standard.';

  @override
  String get aiCounterArgument => 'Hujah balas terkuat';

  @override
  String get aiCounterArgumentDesc =>
      'Ringkasan sentiasa diakhiri dengan hujah terbaik yang menentang kesimpulannya sendiri.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Sehingga $count carian web bagi setiap analisis dengan pelan anda',
      one: 'Sehingga 1 carian web bagi setiap analisis dengan pelan anda',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Panjang standard mengikut pelan: Biasa $normal, Pro $pro, Max $max, Ultra $ultra. Ringkas menggunakan 2 kurang, Mendalam 2 lebih.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'sehingga $count carian web',
      one: 'sehingga 1 carian web',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count carian web bagi setiap analisis',
      one: '1 carian web bagi setiap analisis',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Panjang ini memerlukan $needed analisis, tetapi hanya tinggal $left. Pilih panjang yang lebih pendek dalam Tetapan atau dapatkan lebih banyak analisis.';
  }

  @override
  String get outlookMarketMood => 'Sentimen pasaran';

  @override
  String get moodVeryPessimistic => 'Sangat pesimis';

  @override
  String get moodPessimistic => 'Pesimis';

  @override
  String get moodNeutral => 'Neutral';

  @override
  String get moodOptimistic => 'Optimis';

  @override
  String get moodVeryOptimistic => 'Sangat optimis';

  @override
  String get scenarioBull => 'Senario optimis';

  @override
  String get scenarioBase => 'Senario asas';

  @override
  String get scenarioBear => 'Senario pesimis';

  @override
  String outlookCurrentPrice(String price) {
    return 'Harga semasa: $price';
  }

  @override
  String get outlookKeyLevels => 'Paras utama';

  @override
  String get keyLevelSupport => 'Sokongan';

  @override
  String get keyLevelResistance => 'Rintangan';

  @override
  String get keyLevelAnchor => 'Harga rujukan';

  @override
  String get upcomingEvents => 'Acara akan datang';

  @override
  String get outlookChartNote =>
      'Julat indikatif; kebarangkalian hanyalah anggaran kasar, bukan ramalan.';

  @override
  String get accountTitle => 'Akaun';

  @override
  String get signIn => 'Log masuk';

  @override
  String get signOut => 'Log keluar';

  @override
  String get notSignedIn => 'Belum log masuk';

  @override
  String get accountBenefit =>
      'Log masuk supaya langganan anda berfungsi pada semua peranti anda.';

  @override
  String get accountSyncedNote =>
      'Langganan dan baki analisis anda adalah sama pada setiap peranti.';

  @override
  String get signInTitle => 'Log masuk ke WhatStock';

  @override
  String get emailLabel => 'Alamat e-mel';

  @override
  String get continueWithEmail => 'Teruskan dengan e-mel';

  @override
  String codeSentTo(String email) {
    return 'Kami telah menghantar kod 6 digit ke $email. Kod ini sah selama 10 minit.';
  }

  @override
  String get codeLabel => 'Kod log masuk';

  @override
  String get resendCode => 'Hantar kod baharu';

  @override
  String get useDifferentEmail => 'Guna e-mel lain';

  @override
  String get errInvalidCode => 'Kod salah atau telah tamat tempoh.';

  @override
  String get errInvalidEmail => 'Sila masukkan alamat e-mel yang sah.';

  @override
  String get errSignInFailed =>
      'Log masuk gagal. Semak sambungan anda dan cuba lagi.';

  @override
  String get checkoutWaiting =>
      'Lengkapkan pembayaran dalam pelayar anda. Aplikasi akan dikemas kini secara automatik apabila selesai.';

  @override
  String get paymentViaStripe =>
      'Pembayaran selamat dalam pelayar anda melalui Stripe. Batalkan pada bila-bila masa.';

  @override
  String get paymentViaStore =>
      'Dibilkan melalui akaun App Store atau Google Play anda. Batalkan pada bila-bila masa dalam tetapan gedung.';

  @override
  String get keySpace => 'Space';

  @override
  String get doubleOptionTitle => 'Tekan Option dua kali';

  @override
  String get doubleOptionSubtitle =>
      'Menekan kekunci Option dua kali dengan pantas juga memanggil WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Untuk menjadikannya berfungsi dalam aplikasi lain juga, benarkan WhatStock di bawah Seting Sistem → Privasi & Keselamatan → Pemantauan Input, kemudian buka semula aplikasi.';

  @override
  String get openSystemSettings => 'Buka Seting Sistem';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Tekan $shortcut atau tekan Option dua kali di mana-mana untuk memanggil WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Paling mungkin';

  @override
  String get longTermToday => 'Hari ini';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years tahun',
      one: '1 tahun',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range setahun';
  }

  @override
  String longTermLikely(String price) {
    return 'paling mungkin $price';
  }

  @override
  String get confidenceLow => 'Keyakinan rendah';

  @override
  String get confidenceMedium => 'Keyakinan sederhana';

  @override
  String get confidenceHigh => 'Keyakinan tinggi';

  @override
  String get longTermNote =>
      'Julat jangka panjang bergantung pada andaian yang dinyatakan dan semakin melebar mengikut masa. Harga tidak termasuk dividen. Anggaran kasar, bukan ramalan.';

  @override
  String get portfolio => 'Portfolio';

  @override
  String get portfolioEmpty =>
      'Belum ada apa-apa di sini. Buka saham dan ketik “Tambah ke portfolio” untuk menjejak pegangan anda.';

  @override
  String get portfolioLocalNote =>
      'Disimpan pada peranti ini sahaja. Jumlah ditukar pada kadar rujukan ECB; harga mungkin tertangguh.';

  @override
  String get addToPortfolio => 'Tambah ke portfolio';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Tambah $symbol';
  }

  @override
  String get portfolioQuantity => 'Bilangan saham';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Harga sesaham ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Tarikh pembelian';

  @override
  String get portfolioAdd => 'Tambah';

  @override
  String get portfolioInvalidNumber =>
      'Masukkan nombor yang lebih besar daripada sifar.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol ditambahkan ke portfolio anda.';
  }

  @override
  String get portfolioTotalValue => 'Jumlah nilai';

  @override
  String get portfolioToday => 'Hari ini';

  @override
  String get portfolioGainLoss => 'Untung/rugi';

  @override
  String get portfolioInvested => 'Dilaburkan';

  @override
  String get portfolioAllocation => 'Peruntukan';

  @override
  String get portfolioPositions => 'Pegangan';

  @override
  String portfolioAvgCost(String price) {
    return 'kos purata $price';
  }

  @override
  String get portfolioYourPosition => 'Pegangan anda';

  @override
  String get portfolioPurchases => 'Pembelian';

  @override
  String get portfolioRemove => 'Alih keluar';

  @override
  String get portfolioExcluded =>
      'Pegangan tanpa harga atau kadar pertukaran tidak dimasukkan dalam jumlah.';

  @override
  String get priceAlerts => 'Amaran harga';

  @override
  String get setPriceAlert => 'Tetapkan amaran harga';

  @override
  String alertDialogTitle(String symbol) {
    return 'Amaran harga · $symbol';
  }

  @override
  String get alertKindAbove => 'Naik melebihi';

  @override
  String get alertKindBelow => 'Jatuh di bawah';

  @override
  String get alertKindMove => 'Bergerak banyak dalam sehari';

  @override
  String alertTargetPrice(String currency) {
    return 'Harga ($currency)';
  }

  @override
  String get alertMovePercent => 'Pergerakan harian (%)';

  @override
  String get alertAlreadyMet => 'Harga sudah melepasi paras ini.';

  @override
  String get alertSave => 'Tetapkan amaran';

  @override
  String alertCreated(String symbol) {
    return 'Amaran ditetapkan untuk $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Belum ada amaran harga. Buka saham dan ketik loceng untuk menetapkannya.';

  @override
  String get alertsNote =>
      'Amaran disemak setiap 5 minit semasa WhatStock berjalan. Pada komputer, ia terus berjalan dalam bar menu atau dulang sistem; pada telefon, buat masa ini amaran hanya diterima semasa aplikasi dibuka.';

  @override
  String alertDescAbove(String price) {
    return 'Melebihi $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Di bawah $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Pergerakan harian ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Dicetuskan pada $date pada harga $price';
  }

  @override
  String get alertRearm => 'Aktifkan semula';

  @override
  String get alertDelete => 'Padam';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol naik melebihi $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol jatuh di bawah $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol bergerak $percent hari ini';
  }

  @override
  String alertHitBody(String price) {
    return 'Harga semasa: $price';
  }

  @override
  String get alertOpen => 'Buka';

  @override
  String get keepInTrayTitle => 'Terus berjalan apabila tetingkap ditutup';

  @override
  String get keepInTraySubtitle =>
      'WhatStock kekal dalam bar menu atau dulang sistem, jadi pintasan dan amaran harga terus berfungsi.';

  @override
  String get termsOfUse => 'Terma Penggunaan';

  @override
  String get privacyPolicy => 'Dasar Privasi';

  @override
  String get subscriptionLegal =>
      'Langganan diperbaharui secara automatik setiap bulan sehingga anda membatalkannya. Dengan melanggan, anda menerima Terma Penggunaan dan Dasar Privasi.';

  @override
  String get deleteAccount => 'Padam akaun';

  @override
  String get deleteAccountTitle => 'Padam akaun anda?';

  @override
  String get deleteAccountBody =>
      'Akaun anda dan semua yang disimpan pada pelayan kami (e-mel, peruntukan, penggunaan) akan dipadam secara kekal, dan analisis yang belum digunakan akan hilang. Langganan yang dibayar dalam pelayar dibatalkan serta-merta; langganan App Store atau Google Play mesti dibatalkan dalam tetapan gedung.';

  @override
  String get deleteLocalData =>
      'Padam juga data pada peranti ini (portfolio, amaran, kegemaran, sejarah, analisis yang disimpan)';

  @override
  String get deleteAccountConfirm => 'Padam secara kekal';

  @override
  String get accountDeleted => 'Akaun anda telah dipadam.';

  @override
  String get errDeleteAccount =>
      'Akaun tidak dapat dipadam. Semak sambungan anda dan cuba lagi.';

  @override
  String get aiTrialBriefNote =>
      'Analisis percubaan adalah ringkas dan dihasilkan dengan model AI yang lebih pantas. Dengan pelan, anda mendapat AI kami yang paling canggih, lebih banyak carian web, serta panjang Standard dan Mendalam.';

  @override
  String get billingMonthly => 'Bulanan';

  @override
  String get billingYearly => 'Tahunan';

  @override
  String get yearlyDiscount => '2 bulan percuma';

  @override
  String get perYear => '/ tahun';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price sebulan';
  }

  @override
  String get subscriptionLegalYearly =>
      'Langganan tahunan diperbaharui secara automatik setiap tahun sehingga anda membatalkannya. Dengan melanggan, anda menerima Terma Penggunaan dan Dasar Privasi.';

  @override
  String get myAnalyses => 'Analisis saya';

  @override
  String get navAlerts => 'Amaran';

  @override
  String get inviteTitle => 'Pratonton tertutup';

  @override
  String get inviteBody =>
      'WhatStock kini tersedia melalui jemputan sahaja. Masukkan kod jemputan yang anda terima.';

  @override
  String get inviteCodeLabel => 'Kod jemputan';

  @override
  String get inviteContinue => 'Teruskan';

  @override
  String get inviteInvalid => 'Kod jemputan ini tidak sah.';

  @override
  String get inviteExpired =>
      'Jemputan ini telah tamat tempoh. Minta kod baharu daripada orang yang menjemput anda.';

  @override
  String get inviteDeviceLimit =>
      'Kod jemputan ini sudah digunakan pada bilangan peranti maksimum.';

  @override
  String get previewConfidential => 'Pratonton sulit';

  @override
  String get errPreviewDailyLimit =>
      'Had analisis hari ini untuk pratonton ini telah dicapai. Cuba lagi esok.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jam lalu',
      one: '1 jam lalu',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hari lalu',
      one: '1 hari lalu',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Kemas kini analisis ini?';

  @override
  String staleBody(String age) {
    return 'Analisis ini dibuat $age. Harga, berita dan keputusan mungkin telah berubah sejak itu.';
  }

  @override
  String get staleKeep => 'Tunjukkan yang terdahulu';

  @override
  String get staleRefresh => 'Buat yang baharu';

  @override
  String seeAll(int count) {
    return 'Lihat semua ($count)';
  }

  @override
  String get searchAnalyses => 'Cari analisis anda';

  @override
  String get deleteAnalysis => 'Padam';

  @override
  String analysisDeleted(String symbol) {
    return 'Analisis $symbol dipadam';
  }

  @override
  String get keyLevelAlertHint =>
      'Ketik paras untuk menerima amaran apabila harga mencapainya.';

  @override
  String get shareAnalysisTitle => 'Kongsi analisis';

  @override
  String get shareAsImage => 'Kongsi sebagai imej';

  @override
  String get shareAsText => 'Kongsi sebagai teks';

  @override
  String get shareCardFooter => 'Dibuat dengan WhatStock';

  @override
  String get shareCardDisclaimer => 'Analisis AI · bukan nasihat pelaburan';

  @override
  String get referralTitle => 'Jemput rakan';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analisis tambahan',
      one: '1 analisis tambahan',
    );
    return 'Kongsi kod anda. Rakan anda terus mendapat $_temp0, dan anda mendapat jumlah yang sama selepas analisis pertama mereka.';
  }

  @override
  String get referralYourCode => 'Kod anda';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Dijemput: $invited · Diberi ganjaran: $rewarded';
  }

  @override
  String get referralHaveCode => 'Ada kod daripada rakan?';

  @override
  String get referralRedeem => 'Tebus';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analisis tambahan ditambah. Selamat datang!',
      one: '1 analisis tambahan ditambah. Selamat datang!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown => 'Kod ini tidak wujud. Semak dan cuba lagi.';

  @override
  String get referralErrOwn => 'Anda tidak boleh menebus kod anda sendiri.';

  @override
  String get referralErrAlready => 'Anda sudah menebus kod rakan.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analisis tambahan',
      one: '1 analisis tambahan',
    );
    return 'Saya menganalisis saham dengan WhatStock: ambil foto saham dan AI akan menerangkannya. Dengan kod saya $code, anda mendapat $_temp0.';
  }

  @override
  String get referralCopied => 'Kod disalin';

  @override
  String get onboardTitle1 => 'Ambil foto saham';

  @override
  String get onboardBody1 =>
      'Skrin aplikasi broker, surat khabar atau logo syarikat sudah memadai: WhatStock mengenal pasti saham itu dan menunjukkan harga, carta serta angka utamanya.';

  @override
  String get onboardTitle2 => 'Fahami dalam beberapa minit';

  @override
  String get onboardBody2 =>
      'Analisis AI menerangkan apa yang menggerakkan saham, risikonya, penilaiannya dan tiga senario ke mana harga mungkin bergerak, lengkap dengan sumber dan dalam bahasa anda.';

  @override
  String get onboardTitle3 => 'Sentiasa ikuti perkembangan';

  @override
  String get onboardBody3 =>
      'Kegemaran, portfolio anda dan amaran harga memastikan anda sentiasa dimaklumkan. Analisis anda kekal pada peranti anda, sedia untuk dibuka semula.';

  @override
  String get onboardNext => 'Seterusnya';

  @override
  String get onboardStart => 'Mulakan';

  @override
  String get onboardSkip => 'Langkau';

  @override
  String changesTitle(String date) {
    return 'Sejak analisis sebelumnya ($date)';
  }

  @override
  String get changesPrice => 'Harga';

  @override
  String get changesNoMajor => 'Tinjauan tidak berubah dengan ketara.';

  @override
  String get changesPreviousSummary => 'Ringkasan sebelumnya';
}
