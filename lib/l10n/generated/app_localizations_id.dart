// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'Reszveny';

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
    return 'Tekan $shortcut di mana saja untuk memanggil Reszveny.';
  }

  @override
  String get trayOpen => 'Buka Reszveny';

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
}
