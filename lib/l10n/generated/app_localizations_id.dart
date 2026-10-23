// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'Foto sebuah saham dan pelajari semua tentangnya.';

  @override
  String get homeHint =>
      'Sertifikat saham, layar aplikasi sekuritas, koran, atau logo perusahaan – apa pun yang mengidentifikasi sebuah saham.';

  @override
  String get takePhoto => 'Ambil foto';

  @override
  String get chooseFromGallery => 'Pilih dari galeri';

  @override
  String get chooseImage => 'Pilih gambar';

  @override
  String get enterTickerManually => 'Masukkan kode saham manual';

  @override
  String get tickerInputLabel => 'Kode saham';

  @override
  String get tickerInputHint => 'mis. AAPL';

  @override
  String get lookUp => 'Cari';

  @override
  String demoModeBanner(String symbols) {
    return 'Mode demo – kunci data pasar belum dikonfigurasi. Data contoh tersedia untuk: $symbols.';
  }

  @override
  String get recognizing => 'Menganalisis gambar…';

  @override
  String get loadingData => 'Memuat data…';

  @override
  String get noCandidatesTitle => 'Saham tidak dikenali';

  @override
  String get noCandidatesBody =>
      'Kami tidak dapat mengidentifikasi saham dalam gambar ini. Coba foto yang lebih tajam, atau masukkan kode saham secara manual.';

  @override
  String get whatWeSaw => 'Yang kami lihat';

  @override
  String get chooseCandidateTitle => 'Saham mana yang Anda maksud?';

  @override
  String confidencePercent(int percent) {
    return 'Keyakinan $percent%';
  }

  @override
  String get settings => 'Pengaturan';

  @override
  String get language => 'Bahasa';

  @override
  String get systemLanguage => 'Bawaan sistem';

  @override
  String get about => 'Tentang';

  @override
  String get disclaimer =>
      'Aplikasi ini hanya menyediakan informasi dan bukan saran investasi. Data mungkin tertunda atau tidak akurat.';

  @override
  String dataSource(String source) {
    return 'Sumber data: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Pengenalan: $source';
  }

  @override
  String get retry => 'Coba lagi';

  @override
  String get cancel => 'Batal';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Tutup';

  @override
  String get errorGeneric => 'Terjadi kesalahan.';

  @override
  String get errorSectionUnavailable => 'Bagian ini tidak dapat dimuat.';

  @override
  String get notAvailable => 't/a';

  @override
  String get sectionIdentity => 'Identifikasi';

  @override
  String get sectionPrice => 'Harga';

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
  String get sectionNews => 'Berita';

  @override
  String get sectionRecognition => 'Detail pengenalan';

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
  String get labelDescription => 'Deskripsi';

  @override
  String get labelLastPrice => 'Harga terakhir';

  @override
  String get labelChange => 'Perubahan';

  @override
  String get labelOpen => 'Pembukaan';

  @override
  String get labelDayHigh => 'Tertinggi harian';

  @override
  String get labelDayLow => 'Terendah harian';

  @override
  String get labelPreviousClose => 'Penutupan sebelumnya';

  @override
  String get labelWeek52High => 'Tertinggi 52 minggu';

  @override
  String get labelWeek52Low => 'Terendah 52 minggu';

  @override
  String get labelAverageVolume10d => 'Rata-rata volume (10 hari)';

  @override
  String updatedAt(String time) {
    return 'Diperbarui $time';
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
  String get labelNetIncomeTtm => 'Laba bersih (TTM)';

  @override
  String get labelGrossMargin => 'Margin laba kotor';

  @override
  String get labelOperatingMargin => 'Margin laba operasi';

  @override
  String get labelNetMargin => 'Margin laba bersih';

  @override
  String get labelRoe => 'Imbal hasil ekuitas (ROE)';

  @override
  String get labelRoa => 'Imbal hasil aset (ROA)';

  @override
  String get labelDebtToEquity => 'Utang / ekuitas';

  @override
  String get labelCurrentRatio => 'Rasio lancar';

  @override
  String get labelRevenueGrowth => 'Pertumbuhan pendapatan (YoY)';

  @override
  String get labelEpsGrowth => 'Pertumbuhan EPS (YoY)';

  @override
  String get labelDividendYield => 'Imbal hasil dividen';

  @override
  String get labelDividendPerShare => 'Dividen per saham';

  @override
  String get labelPayoutRatio => 'Rasio pembayaran dividen';

  @override
  String get labelYieldOnCost => 'Imbal hasil atas harga beli';

  @override
  String get labelDividendGrowth5y => 'Pertumbuhan dividen (5 thn)';

  @override
  String get dividendNone =>
      'Tidak ada dividen yang dibayarkan dalam 12 bulan terakhir.';

  @override
  String get dividendOnYourShares => 'Atas saham Anda, per tahun';

  @override
  String get labelConsensus => 'Konsensus';

  @override
  String get ratingStrongBuy => 'Beli kuat';

  @override
  String get ratingBuy => 'Beli';

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
    return 'Periode: $period';
  }

  @override
  String get noNews => 'Tidak ada berita terbaru.';

  @override
  String get openArticle => 'Buka artikel';

  @override
  String get openLinkFailed => 'Tautan tidak dapat dibuka.';

  @override
  String get recognitionSummary => 'Ringkasan';

  @override
  String get recognitionEvidence => 'Mengapa kami berpendapat demikian';

  @override
  String get recognitionRawText => 'Teks yang terbaca dari gambar';

  @override
  String get errMissingAnthropicKey =>
      'Pengenalan gambar belum dikonfigurasi (tidak ada ANTHROPIC_API_KEY). Masukkan kode saham secara manual.';

  @override
  String get errRecognitionUnreachable =>
      'Tidak dapat menghubungi layanan pengenalan. Periksa koneksi internet Anda.';

  @override
  String errRecognitionHttp(String status) {
    return 'Layanan pengenalan mengembalikan kesalahan (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Layanan pengenalan tidak dapat memproses gambar ini.';

  @override
  String get errRecognitionTruncated =>
      'Respons pengenalan terpotong. Silakan coba lagi.';

  @override
  String get errRecognitionBadResponse =>
      'Respons tak terduga dari layanan pengenalan.';

  @override
  String get errRecognitionEmpty =>
      'Layanan pengenalan mengembalikan respons kosong.';

  @override
  String get errMissingFinnhubKey =>
      'Data pasar belum dikonfigurasi (tidak ada FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Tidak dapat menghubungi layanan data pasar. Periksa koneksi internet Anda.';

  @override
  String get errMarketRateLimited =>
      'Terlalu banyak permintaan ke layanan data pasar. Mohon tunggu satu menit.';

  @override
  String errMarketHttp(String status) {
    return 'Layanan data pasar mengembalikan kesalahan (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Respons tak terduga dari layanan data pasar.';

  @override
  String errNoQuote(String symbol) {
    return 'Data harga untuk $symbol tidak ditemukan.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Profil perusahaan untuk $symbol tidak ditemukan.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Mode demo hanya mendukung $symbols. Tambahkan FINNHUB_API_KEY untuk data langsung.';
  }

  @override
  String errUnknown(String detail) {
    return 'Terjadi kesalahan: $detail';
  }

  @override
  String get newSearch => 'Pencarian baru';

  @override
  String get recentSearches => 'Terbaru';

  @override
  String get noRecentSearches => 'Belum ada pencarian terbaru.';

  @override
  String get clearRecent => 'Hapus pencarian terbaru';

  @override
  String get greeting => 'Saham mana yang akan kita lihat?';

  @override
  String get searchHint => 'Kode saham atau nama perusahaan';

  @override
  String get attachImage => 'Lampirkan gambar';

  @override
  String get searchResultsTitle => 'Hasil pencarian';

  @override
  String errNoResults(String query) {
    return 'Tidak ada saham yang ditemukan untuk “$query”.';
  }

  @override
  String get quickBarHint => 'Ketik kode saham atau nama perusahaan…';

  @override
  String get openFullWindow => 'Buka jendela';

  @override
  String hotkeyHint(String shortcut) {
    return 'Tekan $shortcut di mana saja untuk memanggil WhatStock.';
  }

  @override
  String get trayOpen => 'Buka WhatStock';

  @override
  String get trayQuickSearch => 'Pencarian cepat';

  @override
  String get trayQuit => 'Keluar';

  @override
  String get appearance => 'Tampilan';

  @override
  String get themeSystem => 'Sistem';

  @override
  String get themeDark => 'Gelap';

  @override
  String get themeLight => 'Terang';

  @override
  String get back => 'Kembali';

  @override
  String get aiSectionTitle => 'Analisis AI';

  @override
  String get aiIntro =>
      'Ulasan mendetail yang ditulis oleh AI: ringkasan berita terbaru, bisnis, kekuatan, risiko dan faktor tersembunyi, valuasi, prospek harga dengan skenario dari sudut pandang psikologis, sosiologis, teknikal, dan makro, serta hal yang perlu dicermati.';

  @override
  String get aiGenerate => 'Buat analisis';

  @override
  String get aiRegenerate => 'Buat ulang';

  @override
  String get aiGenerating =>
      'Menyiapkan analisis… ini bisa memakan waktu satu atau dua menit.';

  @override
  String get aiSources => 'Sumber';

  @override
  String aiGeneratedAt(String time) {
    return 'Dibuat $time';
  }

  @override
  String get aiDisclaimer =>
      'Analisis yang dibuat oleh AI berdasarkan data publik dan berita terbaru. Mungkin berisi kesalahan atau sudah tidak mutakhir, dan bukan merupakan saran investasi.';

  @override
  String get errAiNotConfigured =>
      'Analisis AI belum dikonfigurasi (tidak ada ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Tidak dapat menghubungi layanan AI. Periksa koneksi internet Anda.';

  @override
  String errAiHttp(String status) {
    return 'Layanan AI mengembalikan kesalahan (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Layanan AI menolak menganalisis saham ini.';

  @override
  String get errAiBadResponse => 'Respons tak terduga dari layanan AI.';

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
      'Riwayat harga tidak tersedia dari sumber data saat ini.';

  @override
  String get sectionStatements => 'Laporan keuangan (tahunan)';

  @override
  String get labelFiscalYear => 'Tahun fiskal';

  @override
  String get labelRevenue => 'Pendapatan';

  @override
  String get labelNetIncome => 'Laba bersih';

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
      'Laporan keuangan yang dilaporkan tidak tersedia untuk saham ini.';

  @override
  String get launchAtLogin => 'Jalankan saat masuk';

  @override
  String get hotkeyLabel => 'Pintasan global';

  @override
  String get hotkeyRecordHint =>
      'Klik di sini, lalu tekan kombinasi tombol yang baru';

  @override
  String get hotkeyReset => 'Setel ulang ke bawaan';

  @override
  String get pasteImage => 'Tempel gambar dari papan klip';

  @override
  String get errClipboardNoImage => 'Tidak ada gambar di papan klip.';

  @override
  String get favorites => 'Favorit';

  @override
  String get addToFavorites => 'Tambahkan ke favorit';

  @override
  String get removeFromFavorites => 'Hapus dari favorit';

  @override
  String get noFavorites =>
      'Belum ada favorit. Ketuk bintang pada saham untuk menambahkannya.';

  @override
  String get displayCurrency => 'Mata uang tampilan';

  @override
  String get displayCurrencyNone => 'Hanya mata uang saham itu sendiri';

  @override
  String labelConverted(String currency) {
    return '≈ dalam $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Kurs: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Pembaruan';

  @override
  String currentVersion(String version) {
    return 'Versi $version';
  }

  @override
  String get autoUpdate => 'Pasang pembaruan secara otomatis';

  @override
  String get checkForUpdates => 'Periksa pembaruan';

  @override
  String get updateChecking => 'Memeriksa pembaruan…';

  @override
  String get updateUpToDate => 'Anda sudah menggunakan versi terbaru.';

  @override
  String updateAvailable(String version) {
    return 'Versi $version tersedia.';
  }

  @override
  String get updateDownloading => 'Mengunduh pembaruan di latar belakang…';

  @override
  String get updateDownloaded =>
      'Pembaruan siap. Mulai ulang untuk memasangnya.';

  @override
  String get updateNow => 'Perbarui';

  @override
  String get restartNow => 'Mulai ulang';

  @override
  String get updatesViaStore =>
      'Pembaruan diterima secara otomatis melalui toko aplikasi.';

  @override
  String get updateCheckFailed => 'Tidak dapat memeriksa pembaruan.';

  @override
  String get subscription => 'Langganan';

  @override
  String get planTrial => 'Uji coba';

  @override
  String get planNormal => 'Normal';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Tidak ada paket aktif';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count analisis per bulan';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Uji coba gratis $days hari dengan $count analisis';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days hari uji coba tersisa',
      one: '1 hari uji coba tersisa',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Uji coba gratis Anda telah berakhir. Pilih paket untuk terus menganalisis.';

  @override
  String analysesRemaining(int remaining, int total) {
    return '$remaining dari $total analisis tersisa periode ini';
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
  String get choosePlan => 'Pilih paket';

  @override
  String get currentPlan => 'Paket saat ini';

  @override
  String get subscribe => 'Berlangganan';

  @override
  String get perMonth => '/ bulan';

  @override
  String get extraPacksTitle => 'Butuh lebih banyak? Beli analisis tambahan';

  @override
  String get extraPacksHint =>
      'Analisis tambahan tidak pernah kedaluwarsa dan digunakan setelah kuota bulanan Anda habis.';

  @override
  String get buy => 'Beli';

  @override
  String get restorePurchases => 'Pulihkan pembelian';

  @override
  String get manageSubscription => 'Kelola langganan';

  @override
  String get purchaseSuccess => 'Terima kasih! Pembelian Anda sudah aktif.';

  @override
  String get purchasePending => 'Pembelian tertunda…';

  @override
  String get purchaseFailed => 'Pembelian tidak dapat diselesaikan.';

  @override
  String get purchaseCanceled => 'Pembelian dibatalkan.';

  @override
  String get billingUnavailable =>
      'Pembelian belum tersedia di platform ini. Berlangganan di ponsel atau Mac Anda; paket Anda akan berfungsi di semua perangkat.';

  @override
  String get errQuotaExceeded =>
      'Anda tidak memiliki analisis tersisa untuk periode ini. Tingkatkan paket Anda atau beli analisis tambahan.';

  @override
  String get errTrialExpired =>
      'Uji coba gratis Anda telah berakhir. Pilih paket untuk melanjutkan.';

  @override
  String get errNoPlan => 'Paket aktif diperlukan untuk analisis AI.';

  @override
  String get viewPlans => 'Lihat paket';

  @override
  String get usageTitle => 'Penggunaan';

  @override
  String get demoPurchaseNote =>
      'Penagihan demo: pembelian di platform ini hanya simulasi.';

  @override
  String get mostPopular => 'Paling populer';

  @override
  String get bestValue => 'Paling hemat';

  @override
  String get planFeaturesCommon =>
      'Pengenalan foto, data langsung, grafik, favorit, dan semua 120 bahasa termasuk dalam setiap paket. Kuota berlaku untuk analisis AI.';

  @override
  String get searchLanguages => 'Cari bahasa…';

  @override
  String get noLanguageMatch => 'Tidak ada bahasa yang cocok.';

  @override
  String get aiSettings => 'Analisis AI';

  @override
  String get aiLength => 'Panjang';

  @override
  String get aiDepthBrief => 'Ringkas';

  @override
  String get aiDepthStandard => 'Standar';

  @override
  String get aiDepthDeep => 'Mendalam';

  @override
  String get aiDepthBriefDesc => 'Inti informasinya, dengan cepat.';

  @override
  String get aiDepthStandardDesc => 'Laporan lengkap dengan semua bagian.';

  @override
  String get aiDepthDeepDesc =>
      'Lebih banyak pencarian web, perbandingan dengan perusahaan sejenis, dan detail yang lebih mendalam.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Sekitar $min–$max kata';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'menggunakan $count analisis',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Tingkat pembaca';

  @override
  String get aiReaderBeginner => 'Pemula';

  @override
  String get aiReaderExperienced => 'Berpengalaman';

  @override
  String get aiReaderBeginnerDesc =>
      'Bahasa sederhana; setiap istilah teknis dijelaskan.';

  @override
  String get aiReaderExperiencedDesc =>
      'Teks lebih padat dengan terminologi keuangan standar.';

  @override
  String get aiCounterArgument => 'Argumen tandingan terkuat';

  @override
  String get aiCounterArgumentDesc =>
      'Ringkasan selalu diakhiri dengan argumen terbaik yang menentang kesimpulannya sendiri.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Hingga $count pencarian web per analisis dengan paket Anda',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Panjang standar per paket: Normal $normal, Pro $pro, Max $max, Ultra $ultra. Ringkas menggunakan 2 lebih sedikit, Mendalam 2 lebih banyak.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'hingga $count pencarian web',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pencarian web per analisis',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Panjang ini memerlukan $needed analisis, tetapi hanya tersisa $left. Pilih panjang yang lebih pendek di Pengaturan atau dapatkan analisis tambahan.';
  }

  @override
  String get outlookMarketMood => 'Sentimen pasar';

  @override
  String get moodVeryPessimistic => 'Sangat pesimis';

  @override
  String get moodPessimistic => 'Pesimis';

  @override
  String get moodNeutral => 'Netral';

  @override
  String get moodOptimistic => 'Optimis';

  @override
  String get moodVeryOptimistic => 'Sangat optimis';

  @override
  String get scenarioBull => 'Skenario optimis';

  @override
  String get scenarioBase => 'Skenario dasar';

  @override
  String get scenarioBear => 'Skenario pesimis';

  @override
  String outlookCurrentPrice(String price) {
    return 'Harga saat ini: $price';
  }

  @override
  String get outlookKeyLevels => 'Level kunci';

  @override
  String get keyLevelSupport => 'Support';

  @override
  String get keyLevelResistance => 'Resistance';

  @override
  String get keyLevelAnchor => 'Harga acuan';

  @override
  String get upcomingEvents => 'Agenda mendatang';

  @override
  String get outlookChartNote =>
      'Rentang bersifat indikatif; probabilitas hanyalah perkiraan kasar, bukan prediksi.';

  @override
  String get accountTitle => 'Akun';

  @override
  String get signIn => 'Masuk';

  @override
  String get signOut => 'Keluar';

  @override
  String get notSignedIn => 'Belum masuk';

  @override
  String get accountBenefit =>
      'Masuk agar langganan Anda berlaku di semua perangkat Anda.';

  @override
  String get accountSyncedNote =>
      'Langganan dan sisa analisis Anda sama di setiap perangkat.';

  @override
  String get signInTitle => 'Masuk ke WhatStock';

  @override
  String get emailLabel => 'Alamat email';

  @override
  String get continueWithEmail => 'Lanjutkan dengan email';

  @override
  String codeSentTo(String email) {
    return 'Kami telah mengirim kode 6 digit ke $email. Kode berlaku selama 10 menit.';
  }

  @override
  String get codeLabel => 'Kode masuk';

  @override
  String get resendCode => 'Kirim kode baru';

  @override
  String get useDifferentEmail => 'Gunakan email lain';

  @override
  String get errInvalidCode => 'Kode salah atau sudah kedaluwarsa.';

  @override
  String get errInvalidEmail => 'Masukkan alamat email yang valid.';

  @override
  String get errSignInFailed =>
      'Gagal masuk. Periksa koneksi Anda, lalu coba lagi.';

  @override
  String get checkoutWaiting =>
      'Selesaikan pembayaran di browser Anda. Aplikasi akan diperbarui secara otomatis setelah selesai.';

  @override
  String get paymentViaStripe =>
      'Pembayaran aman di browser Anda melalui Stripe. Batalkan kapan saja.';

  @override
  String get paymentViaStore =>
      'Ditagih melalui akun App Store atau Google Play Anda. Batalkan kapan saja di pengaturan toko Anda.';

  @override
  String get keySpace => 'Spasi';

  @override
  String get doubleOptionTitle => 'Tekan Option dua kali';

  @override
  String get doubleOptionSubtitle =>
      'Menekan tombol Option dua kali dengan cepat juga akan memanggil WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Agar berfungsi juga di aplikasi lain, izinkan WhatStock di Pengaturan Sistem → Privasi & Keamanan → Pemantauan Input, lalu buka kembali aplikasi.';

  @override
  String get openSystemSettings => 'Buka Pengaturan Sistem';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Tekan $shortcut atau tekan Option dua kali di mana saja untuk memanggil WhatStock.';
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
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range per tahun';
  }

  @override
  String longTermLikely(String price) {
    return 'paling mungkin $price';
  }

  @override
  String get confidenceLow => 'Keyakinan rendah';

  @override
  String get confidenceMedium => 'Keyakinan sedang';

  @override
  String get confidenceHigh => 'Keyakinan tinggi';

  @override
  String get longTermNote =>
      'Rentang jangka panjang bertumpu pada asumsi yang disebutkan dan melebar seiring waktu. Harga belum termasuk dividen. Perkiraan kasar, bukan ramalan.';

  @override
  String get portfolio => 'Portofolio';

  @override
  String get portfolioEmpty =>
      'Belum ada apa-apa. Buka saham dan ketuk “Tambahkan ke portofolio” untuk memantau kepemilikan Anda.';

  @override
  String get portfolioLocalNote =>
      'Disimpan di perangkat ini, dan di akun Anda jika Anda sudah masuk. Total dikonversi dengan kurs acuan ECB; harga mungkin tertunda.';

  @override
  String get addToPortfolio => 'Tambahkan ke portofolio';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Tambahkan $symbol';
  }

  @override
  String get portfolioQuantity => 'Jumlah saham';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Harga per saham ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Tanggal pembelian';

  @override
  String get portfolioAdd => 'Tambahkan';

  @override
  String get portfolioInvalidNumber => 'Masukkan angka lebih dari nol.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol ditambahkan ke portofolio.';
  }

  @override
  String get portfolioTotalValue => 'Nilai total';

  @override
  String get portfolioToday => 'Hari ini';

  @override
  String get portfolioGainLoss => 'Untung/rugi';

  @override
  String homeDividendsThisYear(String amount) {
    return 'Dividen tahun ini: $amount';
  }

  @override
  String get portfolioInvested => 'Diinvestasikan';

  @override
  String get portfolioAllocation => 'Alokasi';

  @override
  String get portfolioPositions => 'Posisi';

  @override
  String portfolioAvgCost(String price) {
    return 'harga rata-rata $price';
  }

  @override
  String get portfolioYourPosition => 'Posisi Anda';

  @override
  String get portfolioPurchases => 'Pembelian';

  @override
  String get portfolioRemove => 'Hapus';

  @override
  String get portfolioExcluded =>
      'Posisi tanpa harga atau kurs tidak dihitung dalam total.';

  @override
  String get priceAlerts => 'Peringatan harga';

  @override
  String get setPriceAlert => 'Atur peringatan harga';

  @override
  String alertDialogTitle(String symbol) {
    return 'Peringatan harga · $symbol';
  }

  @override
  String get alertKindAbove => 'Naik di atas';

  @override
  String get alertKindBelow => 'Turun di bawah';

  @override
  String get alertKindMove => 'Bergerak tajam dalam sehari';

  @override
  String alertTargetPrice(String currency) {
    return 'Harga ($currency)';
  }

  @override
  String get alertMovePercent => 'Pergerakan harian (%)';

  @override
  String get alertAlreadyMet => 'Harga sudah melewati level ini.';

  @override
  String get alertSave => 'Atur peringatan';

  @override
  String alertCreated(String symbol) {
    return 'Peringatan untuk $symbol telah diatur.';
  }

  @override
  String get alertsEmpty =>
      'Belum ada peringatan. Buka saham dan ketuk ikon lonceng.';

  @override
  String get alertsNote =>
      'Peringatan diperiksa setiap 5 menit selama WhatStock berjalan. Di komputer, aplikasi tetap berjalan di bilah menu atau baki sistem; di ponsel, untuk saat ini peringatan hanya muncul saat aplikasi terbuka.';

  @override
  String alertDescAbove(String price) {
    return 'Di atas $price';
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
    return 'Terpicu $date di $price';
  }

  @override
  String get alertRearm => 'Aktifkan lagi';

  @override
  String get alertDelete => 'Hapus';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol naik di atas $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol turun di bawah $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol bergerak $percent hari ini';
  }

  @override
  String alertHitBody(String price) {
    return 'Harga saat ini: $price';
  }

  @override
  String get alertOpen => 'Buka';

  @override
  String get keepInTrayTitle => 'Tetap berjalan saat jendela ditutup';

  @override
  String get keepInTraySubtitle =>
      'WhatStock tetap ada di bilah menu atau baki sistem, sehingga pintasan dan peringatan harga tetap berfungsi.';

  @override
  String get termsOfUse => 'Ketentuan Penggunaan';

  @override
  String get privacyPolicy => 'Kebijakan Privasi';

  @override
  String get subscriptionLegal =>
      'Langganan diperpanjang otomatis setiap bulan sampai Anda membatalkannya. Dengan berlangganan, Anda menerima Ketentuan Penggunaan dan Kebijakan Privasi.';

  @override
  String get deleteAccount => 'Hapus akun';

  @override
  String get deleteAccountTitle => 'Hapus akun Anda?';

  @override
  String get deleteAccountBody =>
      'Akun Anda dan semua yang tersimpan di server kami (email, kuota, penggunaan) akan dihapus permanen, dan analisis yang belum dipakai akan hilang. Langganan yang dibayar di peramban langsung dibatalkan; langganan App Store atau Google Play harus dibatalkan di pengaturan toko.';

  @override
  String get deleteLocalData =>
      'Hapus juga data di perangkat ini (portofolio, peringatan, favorit, riwayat, analisis tersimpan)';

  @override
  String get deleteAccountConfirm => 'Hapus permanen';

  @override
  String get accountDeleted => 'Akun Anda telah dihapus.';

  @override
  String get errDeleteAccount =>
      'Akun tidak dapat dihapus. Periksa koneksi dan coba lagi.';

  @override
  String get aiTrialBriefNote =>
      'Analisis uji coba bersifat ringkas dan dibuat dengan model AI yang lebih cepat. Dengan paket, Anda mendapatkan AI kami yang paling canggih, lebih banyak pencarian web, serta panjang Standar dan Mendalam.';

  @override
  String get billingMonthly => 'Bulanan';

  @override
  String get billingYearly => 'Tahunan';

  @override
  String get yearlyDiscount => 'Gratis 2 bulan';

  @override
  String get perYear => '/ tahun';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price per bulan';
  }

  @override
  String get subscriptionLegalYearly =>
      'Langganan tahunan diperpanjang otomatis setiap tahun sampai Anda membatalkannya. Dengan berlangganan, Anda menerima Ketentuan Penggunaan dan Kebijakan Privasi.';

  @override
  String get myAnalyses => 'Analisis saya';

  @override
  String get navAlerts => 'Peringatan';

  @override
  String get inviteTitle => 'Pratinjau tertutup';

  @override
  String get inviteBody =>
      'Untuk saat ini WhatStock hanya tersedia melalui undangan. Masukkan kode undangan yang Anda terima.';

  @override
  String get inviteCodeLabel => 'Kode undangan';

  @override
  String get inviteContinue => 'Lanjutkan';

  @override
  String get inviteInvalid => 'Kode undangan ini tidak valid.';

  @override
  String get inviteExpired =>
      'Undangan ini sudah kedaluwarsa. Mintalah kode baru kepada orang yang mengundang Anda.';

  @override
  String get inviteDeviceLimit =>
      'Kode undangan ini sudah digunakan di jumlah perangkat maksimum.';

  @override
  String get previewConfidential => 'Pratinjau rahasia';

  @override
  String get errPreviewDailyLimit =>
      'Batas analisis harian pratinjau ini sudah tercapai. Coba lagi besok.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jam yang lalu',
      one: '1 jam yang lalu',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hari yang lalu',
      one: '1 hari yang lalu',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Perbarui analisis ini?';

  @override
  String staleBody(String age) {
    return 'Analisis ini dibuat $age. Harga, berita, dan hasil mungkin sudah berubah sejak itu.';
  }

  @override
  String get staleKeep => 'Tampilkan yang sebelumnya';

  @override
  String get staleRefresh => 'Buat yang baru';

  @override
  String seeAll(int count) {
    return 'Lihat semua ($count)';
  }

  @override
  String get searchAnalyses => 'Cari analisis Anda';

  @override
  String get deleteAnalysis => 'Hapus';

  @override
  String analysisDeleted(String symbol) {
    return 'Analisis $symbol dihapus';
  }

  @override
  String get keyLevelAlertHint =>
      'Ketuk level untuk mendapat peringatan saat harga mencapainya.';

  @override
  String get shareAnalysisTitle => 'Bagikan analisis';

  @override
  String get shareAsImage => 'Bagikan sebagai gambar';

  @override
  String get shareAsText => 'Bagikan sebagai teks';

  @override
  String get shareCardFooter => 'Dibuat dengan WhatStock';

  @override
  String get shareCardDisclaimer => 'Analisis AI · bukan saran investasi';

  @override
  String get referralTitle => 'Undang teman';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analisis tambahan',
      one: '1 analisis tambahan',
    );
    return 'Bagikan kode Anda. Teman Anda langsung mendapat $_temp0, dan Anda mendapat jumlah yang sama setelah analisis pertamanya.';
  }

  @override
  String get referralYourCode => 'Kode Anda';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Diundang: $invited · Diberi hadiah: $rewarded';
  }

  @override
  String get referralHaveCode => 'Punya kode dari teman?';

  @override
  String get referralRedeem => 'Tukarkan';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analisis tambahan telah ditambahkan. Selamat datang!',
      one: '1 analisis tambahan telah ditambahkan. Selamat datang!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Kode ini tidak ada. Periksa lalu coba lagi.';

  @override
  String get referralErrOwn => 'Anda tidak dapat menukarkan kode Anda sendiri.';

  @override
  String get referralErrAlready => 'Anda sudah pernah menukarkan kode teman.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analisis tambahan',
      one: '1 analisis tambahan',
    );
    return 'Saya menganalisis saham dengan WhatStock: foto sahamnya dan AI akan menjelaskannya. Dengan kode saya $code kamu mendapat $_temp0.';
  }

  @override
  String get referralCopied => 'Kode disalin';

  @override
  String get onboardTitle1 => 'Foto sebuah saham';

  @override
  String get onboardBody1 =>
      'Cukup layar aplikasi pialang, koran, atau logo perusahaan: WhatStock mengenali sahamnya dan menampilkan harga, grafik, serta angka-angka pentingnya.';

  @override
  String get onboardTitle2 => 'Pahami dalam hitungan menit';

  @override
  String get onboardBody2 =>
      'Analisis AI menjelaskan apa yang menggerakkan saham, risikonya, valuasinya, dan tiga skenario ke mana harga bisa bergerak, lengkap dengan sumber dan dalam bahasa Anda.';

  @override
  String get onboardTitle3 => 'Selalu ikuti perkembangannya';

  @override
  String get onboardBody3 =>
      'Favorit, portofolio Anda, dan peringatan harga membuat Anda selalu tahu kabar terbaru. Analisis Anda tetap tersimpan di perangkat, siap dibuka kembali.';

  @override
  String get onboardNext => 'Berikutnya';

  @override
  String get onboardStart => 'Mulai';

  @override
  String get onboardSkip => 'Lewati';

  @override
  String changesTitle(String date) {
    return 'Sejak analisis sebelumnya ($date)';
  }

  @override
  String get changesPrice => 'Harga';

  @override
  String get changesNoMajor => 'Prospek tidak berubah secara signifikan.';

  @override
  String get changesPreviousSummary => 'Ringkasan sebelumnya';

  @override
  String get telemetryTitle => 'Bantu tingkatkan WhatStock';

  @override
  String get telemetryBody =>
      'Bagikan statistik penggunaan anonim dan laporan kerusakan: fitur mana yang digunakan dan apa yang salah. Tidak pernah saham, analisis, atau data pribadi Anda. Anda dapat mengubahnya kapan saja di Pengaturan.';

  @override
  String get telemetryAllow => 'Izinkan';

  @override
  String get telemetryDecline => 'Tidak, terima kasih';

  @override
  String get telemetrySetting => 'Statistik anonim dan laporan kerusakan';

  @override
  String get telemetrySettingHint =>
      'Seberapa sering fitur digunakan dan laporan kesalahan, tanpa data pribadi atau isi pencarian dan analisis Anda.';

  @override
  String get askButton => 'Tanya tentang analisis ini';

  @override
  String askTitle(String symbol) {
    return 'Pertanyaan tentang $symbol';
  }

  @override
  String get askIntro =>
      'Tanyakan apa saja tentang analisis ini: arti suatu risiko, apa yang bisa mengubah prospeknya, bagaimana suatu angka dihitung. Jawaban didasarkan pada analisis ini dan bukan merupakan saran investasi.';

  @override
  String get askHint => 'Ajukan pertanyaan…';

  @override
  String get askSend => 'Kirim';

  @override
  String get askThinking => 'Sedang berpikir…';

  @override
  String get askSuggest1 => 'Apa risiko terbesarnya?';

  @override
  String get askSuggest2 => 'Apa yang bisa mengubah prospeknya?';

  @override
  String get askSuggest3 => 'Jelaskan dengan bahasa sederhana';

  @override
  String get askMaxReached =>
      'Itu pertanyaan terakhir untuk analisis ini. Buat analisis baru untuk bertanya lagi.';

  @override
  String get errAskLimit =>
      'Anda telah mencapai batas pertanyaan hari ini. Coba lagi besok.';

  @override
  String get eventTomorrow => 'Besok';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days hari lagi',
      one: '1 hari lagi',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Laporan kuartalan';

  @override
  String get eventBeforeOpen => 'sebelum pasar buka';

  @override
  String get eventAfterClose => 'setelah pasar tutup';

  @override
  String eventEpsEstimate(String value) {
    return 'Estimasi EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Dari analisis Anda';

  @override
  String get eventDividend => 'Dividen diperkirakan';

  @override
  String get eventDividendEstimate =>
      'Diperkirakan dari pembayaran yang Anda catat';

  @override
  String get eventsHint =>
      'Tanggal laporan saham favorit dan portofolio Anda untuk 90 hari ke depan, agenda bertanggal yang ditandai analisis Anda, serta dividen yang diperkirakan dari pembayaran yang Anda catat.';

  @override
  String get eventsEmpty =>
      'Tidak ada agenda bertanggal dalam 90 hari ke depan. Tambahkan favorit atau saham portofolio untuk melihat tanggal laporannya di sini; dividen yang Anda catat menampilkan perkiraan pembayaran berikutnya.';

  @override
  String get compareTitle => 'Bandingkan';

  @override
  String get compareAdd => 'Tambahkan saham';

  @override
  String get compareRemove => 'Hapus';

  @override
  String get compareTickerHint => 'Kode saham, mis. MSFT';

  @override
  String get compareHint =>
      'Angka utama berdampingan; nilai terbaik di setiap baris disorot. Jumlah dalam mata uang masing-masing saham.';

  @override
  String get compareNoAnalysis => 'Belum ada analisis';

  @override
  String get portfolioDividends => 'Dividen tahunan';

  @override
  String portfolioDividendYield(String percent) {
    return 'Imbal hasil $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Perkiraan dividen tahunan didasarkan pada dividen yang dibayarkan dalam 12 bulan terakhir; pembayaran di masa mendatang tidak dijamin.';

  @override
  String positionDividend(String amount) {
    return 'Dividen: $amount per tahun';
  }

  @override
  String get chartAvgCost => 'Rata-rata Anda';

  @override
  String get chartAlertLevel => 'Peringatan';

  @override
  String get marketsToday => 'Pasar hari ini';

  @override
  String get notesTitle => 'Catatan saya';

  @override
  String get notesHint =>
      'Mengapa Anda membelinya, apa yang Anda pantau, apa yang akan membuat Anda menjualnya?';

  @override
  String get notesInfo =>
      'Disimpan di perangkat ini, dan di akun Anda jika Anda sudah masuk. Analisis AI mempertimbangkan catatan Anda.';

  @override
  String notesSaved(String date) {
    return 'Disimpan $date';
  }

  @override
  String get peersTitle => 'Perusahaan serupa';

  @override
  String get portfolioExport => 'Ekspor sebagai CSV';

  @override
  String get portfolioImport => 'Impor dari CSV';

  @override
  String get portfolioImportHint =>
      'Tempel satu pembelian per baris: kode saham, jumlah, harga, mata uang, tanggal (TTTT-BB-HH). Kolom dapat dipisahkan dengan koma, titik koma, atau tab; baris judul bersifat opsional.';

  @override
  String get portfolioImportButton => 'Impor';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pembelian ditambahkan',
      one: '1 pembelian ditambahkan',
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
      'Portofolio, favorit, peringatan harga, dan catatan disinkronkan di semua perangkat Anda.';

  @override
  String syncLast(String time) {
    return 'Terakhir disinkronkan $time';
  }

  @override
  String get syncNow => 'Sinkronkan sekarang';

  @override
  String get syncFailed =>
      'Sinkronisasi gagal. Akan dicoba lagi secara otomatis.';

  @override
  String get alertEmailTitle => 'Email saat peringatan terpicu';

  @override
  String get alertEmailOn =>
      'Kami memeriksa peringatan Anda setiap beberapa menit dan mengirimi Anda email, bahkan saat aplikasi ditutup.';

  @override
  String get alertEmailSignIn =>
      'Masuk dengan email Anda di Pengaturan untuk menerima peringatan lewat email, bahkan saat aplikasi ditutup.';

  @override
  String get portfolioHistory => 'Nilai dari waktu ke waktu';

  @override
  String get portfolioReviewTitle => 'Tinjauan portofolio AI';

  @override
  String get portfolioReviewIntro =>
      'AI meninjau seluruh portofolio Anda: konsentrasi, eksposur sektor dan mata uang, risiko yang sama-sama dimiliki saham Anda, serta dividen. Menggunakan 1 analisis.';

  @override
  String get portfolioReviewButton => 'Tinjau portofolio saya';

  @override
  String get portfolioReviewAgain => 'Tinjau ulang';

  @override
  String get portfolioReviewWorking => 'Meninjau portofolio Anda…';

  @override
  String get digestTitle => 'Ringkasan mingguan lewat email';

  @override
  String get digestHint =>
      'Setiap Senin: pergerakan favorit dan portofolio Anda minggu lalu, serta jadwal laporan kuartalan mendatang.';

  @override
  String get benchmarkTitle => 'Dibandingkan dengan S&P 500';

  @override
  String get benchmarkTitleIndex => 'Dibandingkan dengan indeks';

  @override
  String get benchmarkHintIndex =>
      'Seolah setiap pembelian diinvestasikan ke reksa dana yang mengikuti indeks pilihan pada hari yang sama. Tanpa dividen; imbal hasil masa lalu tidak memprediksi imbal hasil masa depan.';

  @override
  String get benchmarkYours => 'Pembelian Anda';

  @override
  String benchmarkAhead(String points) {
    return '$points poin persentase lebih baik dari indeks';
  }

  @override
  String benchmarkBehind(String points) {
    return '$points poin persentase di bawah indeks';
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
  String get portfolioSellDate => 'Tanggal penjualan';

  @override
  String get portfolioSellAll => 'Semua';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Anda memiliki $quantity';
  }

  @override
  String get portfolioSold => 'Terjual';

  @override
  String get portfolioRealized => 'Terealisasi';

  @override
  String get portfolioClosed => 'Posisi ditutup';

  @override
  String get portfolioClosedNote => 'Semua saham terjual';

  @override
  String get portfolioTransactions => 'Transaksi';

  @override
  String get portfolioRealizedByYear => 'Keuntungan terealisasi per tahun';

  @override
  String get portfolioRealizedHint =>
      'Penjualan dicocokkan terlebih dahulu dengan pembelian tertua Anda (FIFO), dikonversi dengan kurs hari ini. Untuk pelaporan pajak, gunakan laporan dari broker Anda.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Sejak analisis ini, laporan kuartalan baru telah terbit ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Laporan baru';

  @override
  String get portfolioImportBrokers =>
      'Ekspor dari Revolut, Trading 212, Interactive Brokers, DEGIRO, Schwab, Fidelity, dan Robinhood juga dikenali, termasuk penjualan dan dividen (setelah dipotong pajak); setoran dilewati.';

  @override
  String get portfolioImportFile => 'Pilih file';

  @override
  String offlineBanner(String time) {
    return 'Tidak ada koneksi – menampilkan data yang terakhir disimpan ($time).';
  }

  @override
  String get glossMarketCap =>
      'Berapa nilai seluruh perusahaan di pasar saham: harga saham × jumlah saham.';

  @override
  String get glossSharesOutstanding =>
      'Berapa banyak saham yang diterbitkan perusahaan. Jika bertambah, setiap saham memiliki bagian yang lebih kecil; pembelian kembali (buyback) menguranginya.';

  @override
  String get glossPeTrailing =>
      'Harga ÷ laba per saham 12 bulan terakhir: berapa tahun laba saat ini yang Anda bayar. Lebih rendah berarti lebih murah, tetapi perusahaan yang tumbuh cepat biasanya punya P/E tinggi.';

  @override
  String get glossPeForward =>
      'Seperti P/E, tetapi dengan laba yang diperkirakan analis untuk 12 bulan ke depan. Jika di bawah P/E trailing, laba diperkirakan akan tumbuh.';

  @override
  String get glossPb =>
      'Harga ÷ nilai buku (aset dikurangi utang) per saham. Sekitar 1 berarti pasar menilai perusahaan sebesar apa yang dimilikinya di atas kertas.';

  @override
  String get glossPs =>
      'Nilai pasar ÷ pendapatan tahunan. Berguna untuk perusahaan yang labanya masih kecil atau belum ada; bandingkan dalam industri yang sama.';

  @override
  String get glossEvToFcf =>
      'Nilai perusahaan termasuk utang (EV) ÷ kas yang dihasilkannya dalam setahun setelah investasi. Lebih rendah berarti Anda mendapat lebih banyak kas untuk harganya.';

  @override
  String get glossPeg =>
      'P/E ÷ perkiraan pertumbuhan laba tahunan (%). Sekitar 1 sering dianggap wajar; rasio ini melihat P/E dari sisi pertumbuhan.';

  @override
  String get glossEps =>
      'Laba per saham selama 12 bulan terakhir. EPS yang naik dari tahun ke tahun adalah salah satu tanda terkuat perusahaan yang sehat.';

  @override
  String get glossBeta =>
      'Seberapa besar saham cenderung bergerak bersama pasar: 1 = seperti pasar, 1,5 = ayunan sekitar 50% lebih besar, di bawah 1 = lebih tenang.';

  @override
  String get glossRevenueTtm =>
      'Total penjualan 12 bulan terakhir, sebelum biaya apa pun.';

  @override
  String get glossNetIncomeTtm =>
      'Laba yang tersisa setelah semua biaya, bunga, dan pajak selama 12 bulan terakhir.';

  @override
  String get glossGrossMargin =>
      'Bagian pendapatan yang tersisa setelah biaya langsung produk. Margin tinggi sering menandakan kekuatan menentukan harga.';

  @override
  String get glossOperatingMargin =>
      'Bagian pendapatan yang tersisa setelah biaya menjalankan usaha (gaji, sewa, pemasaran), sebelum bunga dan pajak.';

  @override
  String get glossNetMargin =>
      'Bagian pendapatan yang menjadi laba akhir. 20% berarti dari setiap 100 penjualan, 20 adalah laba.';

  @override
  String get glossRoe =>
      'Imbal hasil ekuitas: laba tahunan ÷ modal pemilik. Menunjukkan seberapa baik manajemen memakai uang pemegang saham; di atas sekitar 15% tergolong kuat.';

  @override
  String get glossRoa =>
      'Imbal hasil aset: laba tahunan ÷ semua yang dimiliki perusahaan. Bandingkan dalam industri yang sama.';

  @override
  String get glossDebtToEquity =>
      'Utang ÷ modal pemilik. Lebih tinggi berarti lebih banyak uang pinjaman: risiko lebih besar saat suku bunga naik atau bisnis melambat.';

  @override
  String get glossCurrentRatio =>
      'Aset jangka pendek ÷ tagihan yang jatuh tempo dalam setahun. Di atas 1 berarti perusahaan mampu menutup tagihan jangka dekatnya.';

  @override
  String get glossRevenueGrowth =>
      'Seberapa besar pendapatan tumbuh dibandingkan setahun sebelumnya.';

  @override
  String get glossEpsGrowth =>
      'Seberapa besar laba per saham tumbuh dibandingkan setahun sebelumnya.';

  @override
  String get glossDividendYield =>
      'Dividen tahunan ÷ harga saham: pemasukan tunai yang Anda terima per tahun, sebagai persentase dari harga yang Anda bayar.';

  @override
  String get glossDividendPerShare =>
      'Dividen yang dibayarkan untuk satu saham selama setahun terakhir.';

  @override
  String get glossPayoutRatio =>
      'Bagian laba yang dibagikan sebagai dividen. Di atas 100% perusahaan membayar lebih dari yang dihasilkannya, dan itu jarang bertahan lama.';

  @override
  String get portfolioBeta => 'Beta portofolio';

  @override
  String get glossPortfolioBeta =>
      'Beta saham Anda, dibobot menurut nilainya: kira-kira berapa persen saham Anda bergerak saat pasar bergerak 1%. Di atas 1 berarti saham Anda berayun lebih besar daripada pasar, di bawah 1 lebih kecil. Kas tidak termasuk.';

  @override
  String get portfolioTop3 => '3 posisi teratas';

  @override
  String get glossPortfolioTop3 =>
      'Seberapa besar nilai saham Anda yang berada di tiga posisi terbesar Anda. Makin tinggi angkanya, makin besar kerugian yang bisa ditimbulkan kabar buruk dari satu perusahaan saja terhadap seluruh portofolio.';

  @override
  String get glossDividendGrowth5y =>
      'Seberapa besar dividen per saham tumbuh rata-rata per tahun selama lima tahun terakhir. Pertumbuhan yang stabil biasanya berarti perusahaan yakin dengan arus kasnya; pemangkasan sering kali merupakan tanda peringatan.';

  @override
  String get glossYieldOnCost =>
      'Dividen yang diterima dalam 12 bulan terakhir dibagi dengan yang Anda bayar untuk saham yang masih Anda pegang. Berbeda dengan imbal hasil dividen, ini diukur terhadap harga beli Anda sendiri, bukan harga hari ini.';

  @override
  String get glossTitle => 'Apa artinya?';

  @override
  String get watchNewsTitle => 'Berita saham Anda';

  @override
  String get undo => 'Urungkan';

  @override
  String get watchSort => 'Urutkan';

  @override
  String get watchSortOwn => 'Urutan saya';

  @override
  String get watchSortGainers => 'Kenaikan terbesar dulu';

  @override
  String get watchSortLosers => 'Penurunan terbesar dulu';

  @override
  String get watchSortName => 'Menurut kode saham (A–Z)';

  @override
  String get watchHint =>
      'Seret pegangan untuk mengatur ulang, geser ke kiri untuk menghapus. Garis menunjukkan 30 hari terakhir.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: analisis Anda sudah siap.';
  }

  @override
  String alertFromCost(String price) {
    return 'Dari harga beli rata-rata Anda ($price):';
  }

  @override
  String get briefTitle => 'Hari ini dengan saham Anda';

  @override
  String get briefButton => 'Ringkas hari ini';

  @override
  String get briefHint =>
      'Ringkasan AI singkat tentang pergerakan portofolio dan favorit Anda hari ini serta apa kata berita terbaru tentangnya. Tidak memakai analisis.';

  @override
  String get briefRefresh => 'Perbarui';

  @override
  String get sectionEarnings => 'Laporan kuartalan';

  @override
  String earningsNext(String date) {
    return 'Laporan berikutnya: $date';
  }

  @override
  String get earningsExpected => 'EPS yang diharapkan';

  @override
  String get earningsReported => 'EPS yang dilaporkan';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Sesuai atau di atas ekspektasi EPS pada $beats dari $total kuartal terakhir',
      one: 'Sesuai atau di atas ekspektasi EPS pada $beats dari 1 kuartal',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol merilis laporan kuartalan besok';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol merilis laporan kuartalan hari ini';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return 'Dividen $symbol diperkirakan hari ini';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Sekitar $amount. Catat di portofolio Anda setelah diterima.';
  }

  @override
  String get dividendRemindersTitle => 'Pengingat dividen';

  @override
  String get dividendRemindersSubtitle =>
      'Notifikasi pada hari dividen diperkirakan tiba berdasarkan pola pembayaran yang Anda catat, agar Anda dapat mencatatnya';

  @override
  String get earningsRemindersTitle => 'Pengingat laporan kuartalan';

  @override
  String get earningsRemindersSubtitle =>
      'Notifikasi sehari sebelum saham di favorit atau portofoliomu merilis laporan kuartalan';

  @override
  String addAllToFavorites(int count) {
    return 'Tambahkan semua ke favorit ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Impor dari tangkapan layar';

  @override
  String get holdingsReading => 'Membaca posisimu…';

  @override
  String get holdingsReviewTitle => 'Posisi ditemukan';

  @override
  String get holdingsReviewHint =>
      'Periksa angkanya sebelum menambahkan. Harga ini adalah harga beli rata-ratamu per saham, bukan harga hari ini.';

  @override
  String get holdingsNoPrice => 'Tidak ada harga beli rata-rata di gambar';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tambahkan $count posisi',
      one: 'Tambahkan 1 posisi',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Tidak ada posisi saham di gambar ini. Coba tangkapan layar halaman posisi atau portofolio di aplikasi brokermu.';

  @override
  String get week52Range => 'Rentang 52 minggu';

  @override
  String week52BelowHigh(String percent) {
    return '$percent di bawah tertinggi 52 minggu';
  }

  @override
  String get week52AtHigh => 'Di tertinggi 52 minggu';

  @override
  String get alertKindTrailing => 'Turun dari puncak';

  @override
  String get alertTrailingPercent => 'Penurunan dari puncak (%)';

  @override
  String get alertTrailingHint =>
      'Mengikuti harga naik: peringatan berbunyi saat harga turun sebesar ini dari titik tertingginya sejak Anda memasangnya.';

  @override
  String alertDescTrailing(String percent) {
    return 'Turun $percent dari puncak';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'puncak sejauh ini: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol turun $percent dari puncaknya';
  }

  @override
  String get sectionInsiders => 'Transaksi orang dalam';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pembelian',
      one: '1 pembelian',
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
  String get insiderBuy => 'Dibeli';

  @override
  String get insiderSell => 'Dijual';

  @override
  String get insiderHint =>
      'Pembelian dan penjualan di pasar terbuka oleh eksekutif dan direktur dalam 90 hari terakhir (SEC Form 4). Pelaksanaan opsi dan pemberian saham tidak dihitung.';

  @override
  String get insiderNone =>
      'Tidak ada pembelian atau penjualan orang dalam di pasar terbuka dalam 90 hari terakhir.';

  @override
  String get analystTrend => 'Perubahan pandangan dari bulan ke bulan';

  @override
  String get watchListAll => 'Semua';

  @override
  String get watchListNew => 'Daftar baru';

  @override
  String get watchListName => 'Nama daftar';

  @override
  String get watchListRename => 'Ganti nama daftar';

  @override
  String get watchListDelete => 'Hapus daftar';

  @override
  String get watchListAddTo => 'Tambahkan ke daftar';

  @override
  String get watchListEmpty =>
      'Belum ada saham di daftar ini. Ketuk tombol daftar di samping saham untuk menambahkannya.';

  @override
  String get portfolioAskTitle => 'Pertanyaan tentang portofolio Anda';

  @override
  String get rangeYtd => 'YTD';

  @override
  String get backupTitle => 'Cadangan';

  @override
  String get backupSave => 'Simpan cadangan';

  @override
  String get backupSaveHint =>
      'Favorit, daftar, portofolio, peringatan, dan catatan Anda dalam satu file.';

  @override
  String get backupRestore => 'Pulihkan dari cadangan';

  @override
  String get backupRestoreHint =>
      'Menambahkan isi file; tidak ada data Anda saat ini yang dihapus.';

  @override
  String get backupRestored => 'Cadangan dipulihkan.';

  @override
  String get backupInvalid => 'File ini bukan cadangan WhatStock.';

  @override
  String get allocationPositions => 'Saham';

  @override
  String get allocationSectors => 'Sektor';

  @override
  String get allocationCurrencies => 'Mata uang';

  @override
  String get allocationAccounts => 'Akun';

  @override
  String get compareReturn1y => 'Imbal hasil 1 tahun';

  @override
  String get compareFromHigh => 'Dari tertinggi 52 minggu';

  @override
  String get briefAutoTitle => 'Ringkasan harian setiap pagi';

  @override
  String get briefAutoSubtitle =>
      '“Hari ini dengan saham Anda” dibuat otomatis setelah pukul 07.00 selama aplikasi berjalan; di komputer, notifikasi akan memberi tahu Anda. Memakai kuota pertanyaan harian Anda, bukan analisis.';

  @override
  String get targetsButton => 'Alokasi target';

  @override
  String get targetsTitle => 'Alokasi target';

  @override
  String get targetsHint =>
      'Tetapkan porsi portofolio yang seharusnya dimiliki setiap saham. Biarkan kolom kosong jika tidak ada target. Aplikasi lalu menunjukkan apa yang perlu dibeli atau dijual untuk mencapainya.';

  @override
  String targetsSum(String percent) {
    return 'Total: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Beli ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Jual ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Sesuai target';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol melampaui EPS yang diharapkan';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol di bawah EPS yang diharapkan';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'EPS yang dilaporkan $actual, diharapkan $estimate';
  }

  @override
  String get newsExplain => 'Apa artinya ini?';

  @override
  String get watchAlertAll => 'Peringatan untuk pergerakan harian besar';

  @override
  String get watchAlertAllHint =>
      'Peringatan harga untuk setiap saham di daftar ini yang berbunyi saat saham bergerak sebesar ini dalam sehari, naik atau turun. Saham yang sudah punya peringatan tetap memakai miliknya.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count peringatan dipasang',
      one: '1 peringatan dipasang',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Ekspor keuntungan terealisasi (CSV)';

  @override
  String get portfolioAnnualReturn => 'Imbal hasil tahunan';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / tahun';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Imbal hasil tahunan tertimbang uang (XIRR): memperhitungkan kapan Anda membeli dan menjual, sehingga uang yang ditambahkan belakangan tidak mendistorsinya. Ditampilkan setelah pembelian pertama Anda berusia minimal satu tahun; dividen tidak termasuk.';

  @override
  String get eventsAddToCalendar => 'Tambahkan ke kalender (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Peringatan portofolio';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Notifikasi saat seluruh portofoliomu bergerak sebesar ini dalam sehari.';

  @override
  String get portfolioMoveAlertOff => 'Mati';

  @override
  String portfolioMoveUp(String percent) {
    return 'Portofoliomu naik $percent hari ini';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Portofoliomu turun $percent hari ini';
  }

  @override
  String get whatIfTitle => 'Bagaimana jika Anda berinvestasi?';

  @override
  String get whatIfAmount => 'Jumlah';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount yang diinvestasikan $period lalu kini bernilai';
  }

  @override
  String get whatIfNote =>
      'Hanya berdasarkan harga saham: dividen, biaya, dan pajak tidak termasuk. Imbal hasil masa lalu tidak memprediksi imbal hasil di masa depan.';

  @override
  String get watchShare => 'Bagikan daftar';

  @override
  String get watchImport => 'Tambahkan kode saham';

  @override
  String get watchImportHint =>
      'Tempel kode saham yang dipisahkan dengan koma, spasi, atau baris baru – misalnya daftar yang dibagikan seseorang kepada Anda.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count saham ditambahkan',
      one: '1 saham ditambahkan',
      zero: 'Tidak ada saham baru',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Terbesar dulu';

  @override
  String get positionsSortGain => 'Imbal hasil total terbaik dulu';

  @override
  String get positionsSortToday => 'Terbaik hari ini dulu';

  @override
  String get chartMyBuys => 'Pembelian Anda';

  @override
  String get chartMySells => 'Penjualan Anda';

  @override
  String get shortcutsTitle => 'Pintasan keyboard';

  @override
  String usMarketOpen(String time) {
    return 'Pasar AS buka · tutup dalam $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Pasar AS tutup · buka dalam $time';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes mnt';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours j $minutes mnt';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days h $hours j';
  }

  @override
  String get dividendGoalSet => 'Tetapkan target dividen bulanan';

  @override
  String get dividendGoalTitle => 'Target dividen bulanan';

  @override
  String get dividendGoalAmount => 'Dividen per bulan';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Sekitar $amount per bulan dengan imbal hasil saat ini: $percent dari target $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Sekitar $amount per bulan dengan imbal hasil saat ini: target $goal tercapai';
  }

  @override
  String get portfolioAccount => 'Akun';

  @override
  String get portfolioAccountHint => 'mis. TBSZ 2026 (opsional)';

  @override
  String get portfolioAccountAdd => 'Tentukan akun';

  @override
  String get portfolioAccountsAll => 'Semua akun';

  @override
  String get portfolioAccountNote =>
      'Hanya transaksi dan dividen akun ini. Kas, target, dan tinjauan AI ditampilkan di Semua akun.';

  @override
  String get portfolioNoAccount => 'Tanpa akun';

  @override
  String portfolioFee(String currency) {
    return 'Biaya transaksi ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Tambahkan biaya transaksi';

  @override
  String portfolioFeeRow(String amount) {
    return 'Biaya transaksi: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'Ringkasan tahunan';

  @override
  String get portfolioProceeds => 'Hasil penjualan';

  @override
  String get portfolioCostBasis => 'Harga perolehan';

  @override
  String get portfolioFeesPaid => 'Biaya transaksi yang dibayar';

  @override
  String get portfolioAnnualSummaryNote =>
      'Jumlah dalam mata uang asli, tidak dikonversi. Hasil penjualan sudah dikurangi biaya transaksi penjualan; harga perolehan sudah termasuk biaya transaksi pembelian (FIFO). Untuk pelaporan pajak, konversikan dengan kurs yang ditetapkan otoritas pajak Anda.';

  @override
  String get portfolioShare => 'Bagikan kinerja';

  @override
  String get portfolioShareHeading => 'Portofolio saya';

  @override
  String get portfolioTopHoldings => 'Posisi terbesar';

  @override
  String get portfolioShareNote =>
      'Hanya persentase yang dibagikan, tanpa nominal.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count posisi',
      one: '1 posisi',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'Bukan saran investasi';

  @override
  String get contributionButton => 'Investasikan dana baru';

  @override
  String contributionAmount(String currency) {
    return 'Jumlah yang diinvestasikan ($currency)';
  }

  @override
  String get contributionHint =>
      'Hanya membeli, tanpa menjual: posisi yang paling jauh di bawah targetnya mendapat dana lebih dulu.';

  @override
  String contributionShares(String shares) {
    return '≈ $shares saham';
  }

  @override
  String contributionMissing(String symbols) {
    return 'Tidak ada harga terkini untuk $symbols: tidak disertakan dalam pembagian.';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'Jika imbal hasil tahunan bertahan ($rate), Anda akan mencapai target sekitar tahun $year.';
  }

  @override
  String get portfolioMaxDrawdown => 'Penurunan terbesar';

  @override
  String get glossMaxDrawdown =>
      'Penurunan terbesar nilai saham Anda dari puncak sebelumnya ke titik terendah sesudahnya, tanpa pengaruh pembelian dan penjualan Anda (tertimbang waktu). Ini menunjukkan seberapa dalam penurunan yang pernah dialami portofolio Anda.';

  @override
  String watchSince(String date) {
    return 'Sejak ditambahkan ke favorit ($date)';
  }

  @override
  String get portfolioSampleTry => 'Coba dengan portofolio contoh';

  @override
  String get portfolioSampleBanner =>
      'Ini adalah portofolio contoh. Tambahkan pembelian Anda sendiri di sampingnya, atau hapus portofolio ini.';

  @override
  String get portfolioSampleRemove => 'Hapus contoh';

  @override
  String get portfolioStopsAll => 'Trailing stop untuk semua posisi';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count trailing stop dipasang',
      one: '1 trailing stop dipasang',
      zero: 'Semua posisi sudah memiliki trailing stop',
    );
    return '$_temp0';
  }

  @override
  String portfolioSinceSale(String percent) {
    return '$percent sejak dijual';
  }

  @override
  String get lotPreviewRealized => 'Terealisasi dari penjualan ini (FIFO):';

  @override
  String lotPreviewAverage(String after, String before) {
    return 'Harga rata-rata baru: $after (saat ini $before)';
  }

  @override
  String get portfolioYtdReturn => 'Imbal hasil tahun ini';

  @override
  String get glossTwrYtd =>
      'Imbal hasil tertimbang waktu sejak awal tahun (atau sejak pembelian pertama Anda, jika itu tahun ini): setiap hari menghitung perubahan saham yang Anda miliki pada hari itu, lalu hari-hari tersebut dirangkai – uang yang Anda setor atau tarik bukan imbal hasil, sehingga dapat dibandingkan dengan indeks. Di bawahnya: indeks yang dipilih pada periode yang sama.';

  @override
  String alertDistance(String price, String percent) {
    return 'Saat ini $price · $percent lagi';
  }

  @override
  String get watchSortSince => 'Menurut perubahan sejak ditambahkan';

  @override
  String get portfolioTodayMovers => 'Paling bergerak hari ini:';

  @override
  String get lotNoteAdd => 'Tambahkan catatan';

  @override
  String get lotNoteBuyHint =>
      'Mengapa Anda membeli? Akan ditambahkan ke catatan saham, beserta tanggalnya.';

  @override
  String get lotNoteSellHint =>
      'Mengapa Anda menjual? Akan ditambahkan ke catatan saham, beserta tanggalnya.';

  @override
  String get lotNoteBought => 'Dibeli';

  @override
  String get positionHeld => 'Lama kepemilikan';

  @override
  String durationMonths(int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months bulan',
    );
    return '$_temp0';
  }

  @override
  String durationDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days hari',
    );
    return '$_temp0';
  }

  @override
  String positionHeldSince(String date) {
    return 'sejak $date';
  }

  @override
  String lotPreviewWeight(String after, String before) {
    return 'Porsi di portofolio setelahnya: $after (saat ini $before)';
  }

  @override
  String lotFromCash(String amount) {
    return 'Bayar dari kas (saat ini $amount)';
  }

  @override
  String lotToCash(String amount) {
    return 'Tambahkan ke kas (saat ini $amount)';
  }

  @override
  String get onboardTitle4 => 'Pantau portofolio Anda';

  @override
  String get onboardBody4 =>
      'Impor ekspor dari broker Anda (Revolut, Trading 212, IBKR, DEGIRO, Schwab…) atau tambahkan transaksi secara manual: lihat imbal hasil Anda dibandingkan indeks, dividen Anda, dan ringkasan tahunan untuk pelaporan pajak.';

  @override
  String get lotEdit => 'Edit';

  @override
  String lotEditTitle(String symbol) {
    return 'Edit transaksi · $symbol';
  }

  @override
  String get lotSave => 'Simpan';

  @override
  String dividendEditTitle(String symbol) {
    return 'Edit dividen · $symbol';
  }

  @override
  String get portfolioGoalSet => 'Tetapkan target';

  @override
  String get portfolioGoalTitle => 'Target portofolio';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent dari target $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Target $amount tercapai';
  }

  @override
  String get portfolioGoalRemove => 'Hapus target';

  @override
  String get alertEdit => 'Edit peringatan';

  @override
  String get positionOpenLots => 'Masih dimiliki (terlama dulu)';

  @override
  String get lotRemoved => 'Transaksi dihapus';

  @override
  String get alertDeleted => 'Peringatan dihapus';

  @override
  String get alertsClearTriggered => 'Hapus peringatan yang terpicu';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count peringatan dihapus',
      one: '1 peringatan dihapus',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Layar utama';

  @override
  String get allocationCountries => 'Negara';

  @override
  String get newsExplainNoteResearch =>
      'Penjelasan AI: mencari fakta di web, membuka artikelnya, dan menilai seberapa tepercaya sumbernya. Bukan saran investasi. Memakai kuota pertanyaan harian Anda, bukan analisis.';

  @override
  String get sourceOfficial => 'Resmi';

  @override
  String get sourcePressRelease => 'Siaran pers';

  @override
  String get sourceMajorNews => 'Media besar';

  @override
  String get sourceOpinion => 'Opini';

  @override
  String get earningsSummaryButton => 'Apa isi laporan terbaru?';

  @override
  String get earningsSummaryNote =>
      'Ringkasan AI atas pengumuman hasil kinerja perusahaan dan liputan media yang ditemukannya di web. Bukan saran investasi. Memakai kuota pertanyaan harian Anda, bukan analisis.';

  @override
  String get compareLastSurprise => 'EPS kuartal lalu vs. diharapkan';

  @override
  String get compareNextReport => 'Laporan berikutnya';

  @override
  String get resolvingDescription =>
      'Mencari tahu saham mana yang Anda maksud…';

  @override
  String get instrumentTitle => 'Tentang instrumen ini';

  @override
  String get instrumentHint =>
      'Tidak ada profil perusahaan untuk simbol ini – mungkin ini ETF, reksa dana, atau depositary receipt. Tanyakan kepada AI apa ini, apa isinya, dan berapa biayanya.';

  @override
  String get instrumentAsk => 'Apa ini?';

  @override
  String get instrumentNote =>
      'Penjelasan AI dari halaman produk penerbit dan situs keuangan yang ditemukannya di web. Bukan saran investasi. Memakai kuota pertanyaan harian Anda, bukan analisis.';

  @override
  String suggestAskAi(String query) {
    return 'Tanyakan ke AI: “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Tidak ada harga terkini untuk $symbols.';
  }

  @override
  String get eventsRecentResults => 'Laporan terbaru';

  @override
  String get saveToNotes => 'Simpan ke catatan saya';

  @override
  String get savedToNotes => 'Tersimpan di catatan Anda';

  @override
  String get portfolioDividendsReceived => 'Dividen diterima';

  @override
  String get portfolioDividendsThisYear => 'Tahun ini';

  @override
  String get portfolioDividendsAllTime => 'Sepanjang waktu';

  @override
  String get portfolioAddDividend => 'Tambah dividen';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Jumlah diterima ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Tanggal pembayaran';

  @override
  String get portfolioDividendsEmpty =>
      'Belum ada dividen yang dicatat. Tambahkan secara manual, atau impor ekspor dari broker Anda – baris dividennya juga akan diambil.';

  @override
  String get portfolioSplit => 'Pemecahan saham';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Pemecahan saham: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Pembelian dan penjualan yang bertanggal sebelum pemecahan disesuaikan: jumlah saham dikalikan dan harga per saham dibagi, sehingga biayanya tetap sama.';

  @override
  String get portfolioSplitRatio => 'Rasio (baru : lama)';

  @override
  String get portfolioSplitRatioError =>
      'Masukkan rasio seperti 10:1, atau 1:10 untuk reverse split.';

  @override
  String get portfolioSplitDate => 'Tanggal pemecahan';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Pemecahan saham $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Pemecahan saham dihapus';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pemecahan saham ditambahkan',
      one: '1 pemecahan saham ditambahkan',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dividen ditambahkan',
      one: '1 dividen ditambahkan',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Ekspor dividen (CSV)';

  @override
  String get portfolioDividendDeleted => 'Dividen dihapus';

  @override
  String get portfolioDividendsHint =>
      'Jumlah sesuai yang masuk ke akun Anda, dalam mata uang pembayaran; total dikonversi dengan kurs hari ini. Untuk laporan pajak, gunakan laporan dari broker Anda.';

  @override
  String get awayTitle => 'Saat Anda tidak ada';

  @override
  String awaySince(String when) {
    return 'Sejak $when';
  }

  @override
  String get awayQuiet => 'Tidak banyak yang berubah.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count peringatan terpicu',
      one: '1 peringatan terpicu',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Hasil dilaporkan: $symbols';
  }

  @override
  String get moveWhyButton => 'Kenapa bergerak hari ini?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent hari ini';
  }

  @override
  String get moveWhyNote =>
      'Penjelasan AI dari berita hari ini yang ditemukan di web; alasan sebenarnya mungkin tidak diketahui atau berbeda. Bukan saran investasi. Memakai kuota pertanyaan harian Anda, bukan analisis.';

  @override
  String get sectionTechnical => 'Gambaran teknikal';

  @override
  String get labelSma50 => 'Rata-rata 50 hari';

  @override
  String get labelSma200 => 'Rata-rata 200 hari';

  @override
  String get labelRsi => 'RSI (14 hari)';

  @override
  String get labelVolatility30 => 'Volatilitas (30 hari)';

  @override
  String techAbove(String percent) {
    return '$percent di atas';
  }

  @override
  String techBelow(String percent) {
    return '$percent di bawah';
  }

  @override
  String get techOverbought => 'jenuh beli';

  @override
  String get techOversold => 'jenuh jual';

  @override
  String get techNeutral => 'netral';

  @override
  String get techGoldenCross =>
      'Rata-rata 50 hari berada di atas rata-rata 200 hari – tren naik menurut pembacaan klasik.';

  @override
  String get techDeathCross =>
      'Rata-rata 50 hari berada di bawah rata-rata 200 hari – tren turun menurut pembacaan klasik.';

  @override
  String get glossSma50 =>
      'Rata-rata harga penutupan 50 hari perdagangan terakhir. Harga di atasnya sering dibaca sebagai kekuatan jangka pendek, di bawahnya sebagai kelemahan.';

  @override
  String get glossSma200 =>
      'Rata-rata harga penutupan 200 hari perdagangan terakhir – garis tren jangka panjang yang klasik. Banyak investor menganggap harga di atasnya sebagai tren naik jangka panjang.';

  @override
  String get glossRsi =>
      'Relative strength index: membandingkan kenaikan terkini dengan penurunan terkini pada skala 0–100. Di atas 70 saham sering disebut jenuh beli (naik terlalu cepat), di bawah 30 jenuh jual – tetapi tren yang kuat bisa bertahan di sana cukup lama.';

  @override
  String get glossVolatility =>
      'Seberapa besar harga berayun dari hari ke hari, disetahunkan: 20% berarti dalam setahun yang normal harga bergerak dalam kisaran sekitar ±20%. Volatilitas lebih tinggi berarti pergerakan lebih besar ke dua arah.';

  @override
  String get techNote =>
      'Dihitung dari harga penutupan harian. Sinyal teknikal menggambarkan masa lalu, bukan masa depan.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$above dari $count posisi di atas rata-rata 200 harinya';
  }

  @override
  String get watchSignalsTitle => 'Sinyal';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · jenuh jual';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · jenuh beli';
  }

  @override
  String get signalCrossedAbove => 'menembus ke atas rata-rata 200 hari';

  @override
  String get signalCrossedBelow => 'menembus ke bawah rata-rata 200 hari';

  @override
  String get signalAlertsTitle => 'Notifikasi sinyal teknikal';

  @override
  String get signalAlertsSubtitle =>
      'Sekali sehari, saat saham yang kamu ikuti menjadi jenuh jual atau jenuh beli (RSI), atau harganya melintasi rata-rata 200 hari.';

  @override
  String get signalAlertsNotification => 'Sinyal teknikal';

  @override
  String get glossaryPageTitle => 'Glosarium';

  @override
  String get glossaryPageSubtitle =>
      'Penjelasan sederhana setiap angka yang ditampilkan aplikasi, dari P/E hingga RSI';

  @override
  String get glossarySearchHint => 'Cari di glosarium';

  @override
  String get portfolioCash => 'Kas';

  @override
  String get portfolioCashTitle => 'Saldo kas';

  @override
  String get portfolioCashHint =>
      'Uang yang belum diinvestasikan di broker Anda, per mata uang. Dihitung dalam nilai total dan alokasi; tidak dalam imbal hasil.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Jumlah ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Atur saldo kas';

  @override
  String get portfolioDividendsByMonth => 'Per bulan';

  @override
  String get dividendsLegendReceived => 'Diterima';

  @override
  String get dividendsLegendExpected => 'Diperkirakan';

  @override
  String get portfolioDividendsExpected => 'Diperkirakan berikutnya';

  @override
  String get portfolioDividendsExpectedNote =>
      'Diperkirakan dari tanggal dan jumlah pembayaran yang Anda catat; perusahaan dapat mengubah atau melewatkannya.';

  @override
  String portfolioDividendAround(String date) {
    return 'sekitar $date';
  }
}
