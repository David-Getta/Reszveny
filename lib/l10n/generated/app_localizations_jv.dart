// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Javanese (`jv`).
class AppLocalizationsJv extends AppLocalizations {
  AppLocalizationsJv([String locale = 'jv']) : super(locale);

  @override
  String get appTitle => 'StockLens';

  @override
  String get homeTagline => 'Fotonen saham lan ngertenana kabeh babagan saham iku.';

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
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count analis', one: '1 analis');
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
  String get errRecognitionRefused => 'Layanan pangenalan ora bisa ngolah gambar iki.';

  @override
  String get errRecognitionTruncated => 'Respons pangenalan kepunggel. Mangga jajal maneh.';

  @override
  String get errRecognitionBadResponse => 'Respons sing ora dikarepake saka layanan pangenalan.';

  @override
  String get errRecognitionEmpty => 'Layanan pangenalan mbalekake respons kosong.';

  @override
  String get errMissingFinnhubKey => 'Data pasar durung disetel (ora ana FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Ora bisa nyambung menyang layanan data pasar. Priksa sambungan internet sampeyan.';

  @override
  String get errMarketRateLimited => 'Kakehan panjalukan menyang layanan data pasar. Mangga ngenteni sak menit.';

  @override
  String errMarketHttp(String status) {
    return 'Layanan data pasar mbalekake kaluputan (HTTP $status).';
  }

  @override
  String get errMarketBadResponse => 'Respons sing ora dikarepake saka layanan data pasar.';

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
    return 'Tekan $shortcut ing ngendi wae kanggo nimbali StockLens.';
  }

  @override
  String get trayOpen => 'Bukak StockLens';

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
      'Tinjauan rinci sing ditulis dening AI: ringkesan warta paling anyar, bisnis, kaluwihan, risiko lan faktor sing ora katon, valuasi, lan apa sing kudu digatekake.';

  @override
  String get aiGenerate => 'Gawe analisis';

  @override
  String get aiRegenerate => 'Gawe maneh';

  @override
  String get aiGenerating => 'Nyiapake analisis… iki bisa mbutuhake wektu siji utawa rong menit.';

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
  String get errAiNotConfigured => 'Analisis AI durung disetel (ora ana ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable => 'Ora bisa nyambung menyang layanan AI. Priksa sambungan internet sampeyan.';

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
  String get chartUnavailable => 'Riwayat rega ora kasedhiya saka sumber data saiki.';

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
  String get statementsUnavailable => 'Laporan keuangan sing dilaporake ora kasedhiya kanggo saham iki.';

  @override
  String get launchAtLogin => 'Bukak nalika mlebu';

  @override
  String get hotkeyLabel => 'Trabasan global';

  @override
  String get hotkeyRecordHint => 'Klik ing kene, banjur tekan kombinasi tombol sing anyar';

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
  String get noFavorites => 'Durung ana favorit. Tutul lintang ing saham kanggo nambahake.';

  @override
  String get displayCurrency => 'Display currency';

  @override
  String get displayCurrencyNone => 'Stock’s own currency only';

  @override
  String labelConverted(String currency) {
    return '≈ in $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Rate: 1 $from = $rate $to (ECB, $date)';
  }
}
