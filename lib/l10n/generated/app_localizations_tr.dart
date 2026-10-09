// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'Reszveny';

  @override
  String get homeTagline =>
      'Bir hissenin fotoğrafını çekin, hakkındaki her şeyi öğrenin.';

  @override
  String get homeHint =>
      'Hisse senedi belgesi, aracı kurum uygulaması ekranı, gazete veya şirket logosu – hisseyi tanımlayan herhangi bir şey.';

  @override
  String get takePhoto => 'Fotoğraf çek';

  @override
  String get chooseFromGallery => 'Galeriden seç';

  @override
  String get chooseImage => 'Görsel seç';

  @override
  String get enterTickerManually => 'Sembolü elle gir';

  @override
  String get tickerInputLabel => 'Hisse sembolü';

  @override
  String get tickerInputHint => 'örn. AAPL';

  @override
  String get lookUp => 'Ara';

  @override
  String demoModeBanner(String symbols) {
    return 'Demo modu – piyasa verisi anahtarı yapılandırılmamış. Örnek veriler şu semboller için mevcut: $symbols.';
  }

  @override
  String get recognizing => 'Görsel analiz ediliyor…';

  @override
  String get loadingData => 'Veriler yükleniyor…';

  @override
  String get noCandidatesTitle => 'Hisse tanınamadı';

  @override
  String get noCandidatesBody =>
      'Bu görselde bir hisse tespit edemedik. Daha net bir fotoğraf deneyin veya sembolü elle girin.';

  @override
  String get whatWeSaw => 'Gördüklerimiz';

  @override
  String get chooseCandidateTitle => 'Hangi hisseyi kastettiniz?';

  @override
  String confidencePercent(int percent) {
    return '%$percent güven';
  }

  @override
  String get settings => 'Ayarlar';

  @override
  String get language => 'Dil';

  @override
  String get systemLanguage => 'Sistem varsayılanı';

  @override
  String get about => 'Hakkında';

  @override
  String get disclaimer =>
      'Bu uygulama yalnızca bilgi amaçlıdır ve yatırım tavsiyesi değildir. Veriler gecikmeli veya hatalı olabilir.';

  @override
  String dataSource(String source) {
    return 'Veri kaynağı: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Tanıma: $source';
  }

  @override
  String get retry => 'Yeniden dene';

  @override
  String get cancel => 'İptal';

  @override
  String get ok => 'Tamam';

  @override
  String get close => 'Kapat';

  @override
  String get errorGeneric => 'Bir şeyler yanlış gitti.';

  @override
  String get errorSectionUnavailable => 'Bu bölüm yüklenemedi.';

  @override
  String get notAvailable => 'yok';

  @override
  String get sectionIdentity => 'Tanımlama';

  @override
  String get sectionPrice => 'Fiyat';

  @override
  String get sectionValuation => 'Değerleme';

  @override
  String get sectionFinancials => 'Finansallar';

  @override
  String get sectionDividend => 'Temettü';

  @override
  String get sectionProfile => 'Şirket profili';

  @override
  String get sectionAnalysts => 'Analist tavsiyeleri';

  @override
  String get sectionNews => 'Haberler';

  @override
  String get sectionRecognition => 'Tanıma ayrıntıları';

  @override
  String get labelSymbol => 'Sembol';

  @override
  String get labelExchange => 'Borsa';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Para birimi';

  @override
  String get labelCountry => 'Ülke';

  @override
  String get labelIndustry => 'Endüstri';

  @override
  String get labelSector => 'Sektör';

  @override
  String get labelWebsite => 'Web sitesi';

  @override
  String get labelIpoDate => 'IPO tarihi';

  @override
  String get labelMarketCap => 'Piyasa değeri';

  @override
  String get labelSharesOutstanding => 'Dolaşımdaki hisse sayısı';

  @override
  String get labelEmployees => 'Çalışan sayısı';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Genel merkez';

  @override
  String get labelDescription => 'Açıklama';

  @override
  String get labelLastPrice => 'Son fiyat';

  @override
  String get labelChange => 'Değişim';

  @override
  String get labelOpen => 'Açılış';

  @override
  String get labelDayHigh => 'Gün içi en yüksek';

  @override
  String get labelDayLow => 'Gün içi en düşük';

  @override
  String get labelPreviousClose => 'Önceki kapanış';

  @override
  String get labelWeek52High => '52 haftalık en yüksek';

  @override
  String get labelWeek52Low => '52 haftalık en düşük';

  @override
  String get labelAverageVolume10d => 'Ort. hacim (10 gün)';

  @override
  String updatedAt(String time) {
    return 'Güncellendi: $time';
  }

  @override
  String get labelPeTrailing => 'P/E (geçmiş)';

  @override
  String get labelPeForward => 'P/E (ileriye dönük)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / serbest nakit akışı';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Gelir (TTM)';

  @override
  String get labelNetIncomeTtm => 'Net kâr (TTM)';

  @override
  String get labelGrossMargin => 'Brüt kâr marjı';

  @override
  String get labelOperatingMargin => 'Faaliyet kâr marjı';

  @override
  String get labelNetMargin => 'Net kâr marjı';

  @override
  String get labelRoe => 'Özkaynak kârlılığı';

  @override
  String get labelRoa => 'Aktif kârlılığı';

  @override
  String get labelDebtToEquity => 'Borç / özkaynak';

  @override
  String get labelCurrentRatio => 'Cari oran';

  @override
  String get labelRevenueGrowth => 'Gelir büyümesi (YoY)';

  @override
  String get labelEpsGrowth => 'EPS büyümesi (YoY)';

  @override
  String get labelDividendYield => 'Temettü verimi';

  @override
  String get labelDividendPerShare => 'Hisse başına temettü';

  @override
  String get labelPayoutRatio => 'Temettü dağıtım oranı';

  @override
  String get labelConsensus => 'Konsensüs';

  @override
  String get ratingStrongBuy => 'Güçlü al';

  @override
  String get ratingBuy => 'Al';

  @override
  String get ratingHold => 'Tut';

  @override
  String get ratingSell => 'Sat';

  @override
  String get ratingStrongSell => 'Güçlü sat';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analist',
      one: '1 analist',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Dönem: $period';
  }

  @override
  String get noNews => 'Güncel haber yok.';

  @override
  String get openArticle => 'Haberi aç';

  @override
  String get openLinkFailed => 'Bağlantı açılamadı.';

  @override
  String get recognitionSummary => 'Özet';

  @override
  String get recognitionEvidence => 'Neden böyle düşünüyoruz';

  @override
  String get recognitionRawText => 'Görselden okunan metin';

  @override
  String get errMissingAnthropicKey =>
      'Görsel tanıma yapılandırılmamış (ANTHROPIC_API_KEY yok). Sembolü elle girin.';

  @override
  String get errRecognitionUnreachable =>
      'Tanıma hizmetine ulaşılamadı. İnternet bağlantınızı kontrol edin.';

  @override
  String errRecognitionHttp(String status) {
    return 'Tanıma hizmeti bir hata döndürdü (HTTP $status).';
  }

  @override
  String get errRecognitionRefused => 'Tanıma hizmeti bu görseli işleyemedi.';

  @override
  String get errRecognitionTruncated =>
      'Tanıma yanıtı kesildi. Lütfen tekrar deneyin.';

  @override
  String get errRecognitionBadResponse =>
      'Tanıma hizmetinden beklenmeyen yanıt.';

  @override
  String get errRecognitionEmpty => 'Tanıma hizmeti boş yanıt döndürdü.';

  @override
  String get errMissingFinnhubKey =>
      'Piyasa verisi yapılandırılmamış (FINNHUB_API_KEY yok).';

  @override
  String get errMarketUnreachable =>
      'Piyasa verisi hizmetine ulaşılamadı. İnternet bağlantınızı kontrol edin.';

  @override
  String get errMarketRateLimited =>
      'Piyasa verisi hizmetine çok fazla istek gönderildi. Lütfen bir dakika bekleyin.';

  @override
  String errMarketHttp(String status) {
    return 'Piyasa verisi hizmeti bir hata döndürdü (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Piyasa verisi hizmetinden beklenmeyen yanıt.';

  @override
  String errNoQuote(String symbol) {
    return '$symbol için fiyat verisi bulunamadı.';
  }

  @override
  String errNoProfile(String symbol) {
    return '$symbol için şirket profili bulunamadı.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Demo modu yalnızca şu sembolleri destekler: $symbols. Canlı veri için bir FINNHUB_API_KEY ekleyin.';
  }

  @override
  String errUnknown(String detail) {
    return 'Bir şeyler yanlış gitti: $detail';
  }

  @override
  String get newSearch => 'Yeni arama';

  @override
  String get recentSearches => 'Son aramalar';

  @override
  String get noRecentSearches => 'Henüz son arama yok.';

  @override
  String get clearRecent => 'Son aramaları temizle';

  @override
  String get greeting => 'Hangi hisseye bakalım?';

  @override
  String get searchHint => 'Sembol veya şirket adı';

  @override
  String get attachImage => 'Görsel ekle';

  @override
  String get searchResultsTitle => 'Arama sonuçları';

  @override
  String errNoResults(String query) {
    return '“$query” için hisse bulunamadı.';
  }

  @override
  String get quickBarHint => 'Bir sembol veya şirket adı yazın…';

  @override
  String get openFullWindow => 'Pencereyi aç';

  @override
  String hotkeyHint(String shortcut) {
    return 'Reszveny\'yi çağırmak için herhangi bir yerde $shortcut tuşlarına basın.';
  }

  @override
  String get trayOpen => 'Reszveny\'yi aç';

  @override
  String get trayQuickSearch => 'Hızlı arama';

  @override
  String get trayQuit => 'Çıkış';

  @override
  String get appearance => 'Görünüm';

  @override
  String get themeSystem => 'Sistem';

  @override
  String get themeDark => 'Koyu';

  @override
  String get themeLight => 'Açık';

  @override
  String get back => 'Geri';

  @override
  String get aiSectionTitle => 'Yapay zekâ analizi';

  @override
  String get aiIntro =>
      'Yapay zekâ tarafından yazılan ayrıntılı bir genel bakış: güncel haberlerin özeti, iş modeli, güçlü yönler, riskler ve gizli etkenler, değerleme ve izlenmesi gerekenler.';

  @override
  String get aiGenerate => 'Analiz oluştur';

  @override
  String get aiRegenerate => 'Yeniden oluştur';

  @override
  String get aiGenerating =>
      'Analiz hazırlanıyor… bu bir iki dakika sürebilir.';

  @override
  String get aiSources => 'Kaynaklar';

  @override
  String aiGeneratedAt(String time) {
    return 'Oluşturuldu: $time';
  }

  @override
  String get aiDisclaimer =>
      'Kamuya açık veriler ve güncel haberlere dayanan, yapay zekâ tarafından oluşturulmuş analiz. Hatalar içerebilir veya güncelliğini yitirmiş olabilir; yatırım tavsiyesi değildir.';

  @override
  String get errAiNotConfigured =>
      'Yapay zekâ analizi yapılandırılmamış (ANTHROPIC_API_KEY yok).';

  @override
  String get errAiUnreachable =>
      'Yapay zekâ hizmetine ulaşılamadı. İnternet bağlantınızı kontrol edin.';

  @override
  String errAiHttp(String status) {
    return 'Yapay zekâ hizmeti bir hata döndürdü (HTTP $status).';
  }

  @override
  String get errAiRefused =>
      'Yapay zekâ hizmeti bu hisseyi analiz etmeyi reddetti.';

  @override
  String get errAiBadResponse => 'Yapay zekâ hizmetinden beklenmeyen yanıt.';

  @override
  String get sectionChart => 'Fiyat grafiği';

  @override
  String get rangeOneWeek => '1H';

  @override
  String get rangeOneMonth => '1A';

  @override
  String get rangeThreeMonths => '3A';

  @override
  String get rangeOneYear => '1Y';

  @override
  String get rangeFiveYears => '5Y';

  @override
  String get chartUnavailable =>
      'Mevcut veri kaynağında fiyat geçmişi bulunmuyor.';

  @override
  String get sectionStatements => 'Finansal tablolar (yıllık)';

  @override
  String get labelFiscalYear => 'Mali yıl';

  @override
  String get labelRevenue => 'Gelir';

  @override
  String get labelNetIncome => 'Net kâr';

  @override
  String get labelTotalAssets => 'Toplam varlıklar';

  @override
  String get labelTotalLiabilities => 'Toplam yükümlülükler';

  @override
  String get labelEquity => 'Özkaynaklar';

  @override
  String get labelOperatingCashFlow => 'Faaliyetlerden nakit akışı';

  @override
  String get statementsUnavailable =>
      'Bu hisse için raporlanmış finansal tablolar bulunmuyor.';

  @override
  String get launchAtLogin => 'Oturum açılışında başlat';

  @override
  String get hotkeyLabel => 'Genel kısayol';

  @override
  String get hotkeyRecordHint =>
      'Buraya tıklayın, ardından yeni tuş kombinasyonuna basın';

  @override
  String get hotkeyReset => 'Varsayılana sıfırla';

  @override
  String get pasteImage => 'Panodan görsel yapıştır';

  @override
  String get errClipboardNoImage => 'Panoda görsel yok.';

  @override
  String get favorites => 'Favoriler';

  @override
  String get addToFavorites => 'Favorilere ekle';

  @override
  String get removeFromFavorites => 'Favorilerden kaldır';

  @override
  String get noFavorites =>
      'Henüz favori yok. Eklemek için bir hissenin yıldızına dokunun.';
}
