// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

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
  String get labelYieldOnCost => 'Maliyete göre temettü verimi';

  @override
  String get labelDividendGrowth5y => 'Temettü büyümesi (5 yıl)';

  @override
  String get dividendNone => 'Son 12 ayda temettü ödenmedi.';

  @override
  String get dividendOnYourShares => 'Hisseleriniz için, yıllık';

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
    return 'WhatStock\'u çağırmak için herhangi bir yerde $shortcut tuşlarına basın.';
  }

  @override
  String get trayOpen => 'WhatStock\'u aç';

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
      'Yapay zekâ tarafından yazılan ayrıntılı bir genel bakış: güncel haberlerin özeti, iş modeli, güçlü yönler, riskler ve gizli etkenler, değerleme, psikolojik, sosyolojik, teknik ve makro açılardan senaryolar içeren bir fiyat görünümü ve izlenmesi gerekenler.';

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

  @override
  String get displayCurrency => 'Görüntüleme para birimi';

  @override
  String get displayCurrencyNone => 'Yalnızca hissenin kendi para birimi';

  @override
  String labelConverted(String currency) {
    return '≈ $currency olarak';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Kur: 1 $from = $rate $to (AMB, $date)';
  }

  @override
  String get updates => 'Güncellemeler';

  @override
  String currentVersion(String version) {
    return 'Sürüm $version';
  }

  @override
  String get autoUpdate => 'Güncellemeleri otomatik olarak yükle';

  @override
  String get checkForUpdates => 'Güncellemeleri denetle';

  @override
  String get updateChecking => 'Güncellemeler denetleniyor…';

  @override
  String get updateUpToDate => 'En son sürümü kullanıyorsunuz.';

  @override
  String updateAvailable(String version) {
    return '$version sürümü kullanılabilir.';
  }

  @override
  String get updateDownloading => 'Güncelleme arka planda indiriliyor…';

  @override
  String get updateDownloaded =>
      'Güncelleme hazır. Yüklemek için yeniden başlatın.';

  @override
  String get updateNow => 'Güncelle';

  @override
  String get restartNow => 'Yeniden başlat';

  @override
  String get updatesViaStore =>
      'Güncellemeler uygulama mağazası üzerinden otomatik olarak gelir.';

  @override
  String get updateCheckFailed => 'Güncellemeler denetlenemedi.';

  @override
  String get subscription => 'Abonelik';

  @override
  String get planTrial => 'Deneme';

  @override
  String get planNormal => 'Normal';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Etkin plan yok';

  @override
  String planAnalysesPerMonth(int count) {
    return 'Ayda $count analiz';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$count analiz içeren $days günlük ücretsiz deneme';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Denemede $days gün kaldı',
      one: 'Denemede 1 gün kaldı',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Ücretsiz denemeniz sona erdi. Analize devam etmek için bir plan seçin.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Bu dönemde $total analizden $remaining tanesi kaldı';
  }

  @override
  String extraCredits(int count) {
    return '$count ek analiz';
  }

  @override
  String renewsOn(String date) {
    return '$date tarihinde yenilenir';
  }

  @override
  String get choosePlan => 'Plan seçin';

  @override
  String get currentPlan => 'Mevcut plan';

  @override
  String get subscribe => 'Abone ol';

  @override
  String get perMonth => '/ ay';

  @override
  String get extraPacksTitle => 'Daha fazlası mı lazım? Ek analiz satın alın';

  @override
  String get extraPacksHint =>
      'Ek analizlerin süresi asla dolmaz ve aylık hakkınız bittikten sonra kullanılır.';

  @override
  String get buy => 'Satın al';

  @override
  String get restorePurchases => 'Satın alımları geri yükle';

  @override
  String get manageSubscription => 'Aboneliği yönet';

  @override
  String get purchaseSuccess => 'Teşekkürler! Satın alımınız etkin.';

  @override
  String get purchasePending => 'Satın alma bekliyor…';

  @override
  String get purchaseFailed => 'Satın alma tamamlanamadı.';

  @override
  String get purchaseCanceled => 'Satın alma iptal edildi.';

  @override
  String get billingUnavailable =>
      'Bu platformda satın alma henüz kullanılamıyor. Telefonunuzdan veya Mac’inizden abone olun; planınız tüm cihazlarda çalışır.';

  @override
  String get errQuotaExceeded =>
      'Bu dönem için analiz hakkınız kalmadı. Planınızı yükseltin veya ek analiz satın alın.';

  @override
  String get errTrialExpired =>
      'Ücretsiz denemeniz sona erdi. Devam etmek için bir plan seçin.';

  @override
  String get errNoPlan => 'Yapay zekâ analizi için etkin bir plan gerekir.';

  @override
  String get viewPlans => 'Planları görüntüle';

  @override
  String get usageTitle => 'Kullanım';

  @override
  String get demoPurchaseNote =>
      'Demo faturalandırma: bu platformda satın alımlar simüle edilir.';

  @override
  String get mostPopular => 'En popüler';

  @override
  String get bestValue => 'En avantajlı';

  @override
  String get planFeaturesCommon =>
      'Fotoğraf tanıma, canlı veriler, grafikler, favoriler ve 120 dilin tümü her planda dahildir. Hak, yapay zekâ analizlerini kapsar.';

  @override
  String get searchLanguages => 'Dil ara…';

  @override
  String get noLanguageMatch => 'Eşleşen dil yok.';

  @override
  String get aiSettings => 'Yapay zekâ analizi';

  @override
  String get aiLength => 'Uzunluk';

  @override
  String get aiDepthBrief => 'Kısa';

  @override
  String get aiDepthStandard => 'Standart';

  @override
  String get aiDepthDeep => 'Ayrıntılı';

  @override
  String get aiDepthBriefDesc => 'Özü, hızlıca.';

  @override
  String get aiDepthStandardDesc => 'Tüm bölümleri içeren tam rapor.';

  @override
  String get aiDepthDeepDesc =>
      'Daha fazla web araması, benzer şirketlerle karşılaştırma ve daha derin ayrıntı.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Yaklaşık $min–$max kelime';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analiz kullanır',
      one: '$count analiz kullanır',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Okuyucu düzeyi';

  @override
  String get aiReaderBeginner => 'Başlangıç';

  @override
  String get aiReaderExperienced => 'Deneyimli';

  @override
  String get aiReaderBeginnerDesc => 'Sade dil; her teknik terim açıklanır.';

  @override
  String get aiReaderExperiencedDesc =>
      'Yerleşik finans terminolojisiyle daha yoğun metin.';

  @override
  String get aiCounterArgument => 'En güçlü karşı argüman';

  @override
  String get aiCounterArgumentDesc =>
      'Özet her zaman kendi sonucuna karşı en güçlü argümanla biter.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Planınızla analiz başına en fazla $count web araması',
      one: 'Planınızla analiz başına en fazla $count web araması',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Plana göre standart uzunluk: Normal $normal, Pro $pro, Max $max, Ultra $ultra. Kısa 2 daha az, Ayrıntılı 2 daha fazla kullanır.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'en fazla $count web araması',
      one: 'en fazla $count web araması',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Analiz başına $count web araması',
      one: 'Analiz başına $count web araması',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Bu uzunluk $needed analiz gerektiriyor, ancak yalnızca $left analiz hakkınız kaldı. Ayarlar\'dan daha kısa bir uzunluk seçin veya ek analiz alın.';
  }

  @override
  String get outlookMarketMood => 'Piyasa duyarlılığı';

  @override
  String get moodVeryPessimistic => 'Çok kötümser';

  @override
  String get moodPessimistic => 'Kötümser';

  @override
  String get moodNeutral => 'Nötr';

  @override
  String get moodOptimistic => 'İyimser';

  @override
  String get moodVeryOptimistic => 'Çok iyimser';

  @override
  String get scenarioBull => 'İyimser senaryo';

  @override
  String get scenarioBase => 'Baz senaryo';

  @override
  String get scenarioBear => 'Kötümser senaryo';

  @override
  String outlookCurrentPrice(String price) {
    return 'Güncel fiyat: $price';
  }

  @override
  String get outlookKeyLevels => 'Kilit seviyeler';

  @override
  String get keyLevelSupport => 'Destek';

  @override
  String get keyLevelResistance => 'Direnç';

  @override
  String get keyLevelAnchor => 'Çapa seviyesi';

  @override
  String get upcomingEvents => 'Yaklaşan olaylar';

  @override
  String get outlookChartNote =>
      'Göstergesel aralıklar; olasılıklar kaba tahminlerdir, öngörü değildir.';

  @override
  String get accountTitle => 'Hesap';

  @override
  String get signIn => 'Giriş yap';

  @override
  String get signOut => 'Çıkış yap';

  @override
  String get notSignedIn => 'Giriş yapılmadı';

  @override
  String get accountBenefit =>
      'Aboneliğinizin tüm cihazlarınızda çalışması için giriş yapın.';

  @override
  String get accountSyncedNote =>
      'Aboneliğiniz ve kalan analizleriniz her cihazda aynıdır.';

  @override
  String get signInTitle => 'WhatStock\'a giriş yapın';

  @override
  String get emailLabel => 'E-posta adresi';

  @override
  String get continueWithEmail => 'E-postayla devam et';

  @override
  String codeSentTo(String email) {
    return '$email adresine 6 haneli bir kod gönderdik. Kod 10 dakika geçerlidir.';
  }

  @override
  String get codeLabel => 'Giriş kodu';

  @override
  String get resendCode => 'Yeni kod gönder';

  @override
  String get useDifferentEmail => 'Başka bir e-posta kullan';

  @override
  String get errInvalidCode => 'Kod yanlış veya süresi dolmuş.';

  @override
  String get errInvalidEmail => 'Lütfen geçerli bir e-posta adresi girin.';

  @override
  String get errSignInFailed =>
      'Giriş başarısız oldu. Bağlantınızı kontrol edip tekrar deneyin.';

  @override
  String get checkoutWaiting =>
      'Ödemeyi tarayıcınızda tamamlayın. İşlem bitince uygulama otomatik olarak güncellenir.';

  @override
  String get paymentViaStripe =>
      'Stripe üzerinden tarayıcınızda güvenli ödeme. İstediğiniz zaman iptal edin.';

  @override
  String get paymentViaStore =>
      'App Store veya Google Play hesabınız üzerinden faturalandırılır. İstediğiniz zaman mağaza ayarlarından iptal edin.';

  @override
  String get keySpace => 'Boşluk';

  @override
  String get doubleOptionTitle => 'Option tuşuna çift basma';

  @override
  String get doubleOptionSubtitle =>
      'Option tuşuna hızlıca iki kez basmak da WhatStock\'u çağırır.';

  @override
  String get doubleOptionPermission =>
      'Bunun diğer uygulamalarda da çalışması için Sistem Ayarları → Gizlilik ve Güvenlik → Girdi İzleme bölümünde WhatStock\'a izin verin, ardından uygulamayı yeniden açın.';

  @override
  String get openSystemSettings => 'Sistem Ayarları\'nı aç';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'WhatStock\'u çağırmak için herhangi bir yerde $shortcut tuşlarına veya iki kez Option tuşuna basın.';
  }

  @override
  String get scenarioMostLikely => 'En olası';

  @override
  String get longTermToday => 'Bugün';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years yıl',
      one: '1 yıl',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return 'yılda $range';
  }

  @override
  String longTermLikely(String price) {
    return 'en olası $price';
  }

  @override
  String get confidenceLow => 'Düşük güven';

  @override
  String get confidenceMedium => 'Orta güven';

  @override
  String get confidenceHigh => 'Yüksek güven';

  @override
  String get longTermNote =>
      'Uzun vadeli aralıklar belirtilen varsayımlara dayanır ve zamanla genişler. Fiyatlara temettüler dahil değildir. Kaba tahminlerdir, öngörü değildir.';

  @override
  String get portfolio => 'Portföy';

  @override
  String get portfolioEmpty =>
      'Henüz boş. Bir hisse açın ve sahip olduklarınızı izlemek için “Portföye ekle”ye dokunun.';

  @override
  String get portfolioLocalNote =>
      'Bu cihazda ve giriş yaptıysanız hesabınızda saklanır. Toplamlar ECB referans kurlarıyla çevrilir; fiyatlar gecikmeli olabilir.';

  @override
  String get addToPortfolio => 'Portföye ekle';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol ekle';
  }

  @override
  String get portfolioQuantity => 'Hisse adedi';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Hisse başına fiyat ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Alış tarihi';

  @override
  String get portfolioAdd => 'Ekle';

  @override
  String get portfolioInvalidNumber => 'Sıfırdan büyük bir sayı girin.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol portföye eklendi.';
  }

  @override
  String get portfolioTotalValue => 'Toplam değer';

  @override
  String get portfolioToday => 'Bugün';

  @override
  String get portfolioGainLoss => 'Kâr/zarar';

  @override
  String homeDividendsThisYear(String amount) {
    return 'Bu yılki temettüler: $amount';
  }

  @override
  String get portfolioInvested => 'Yatırılan';

  @override
  String get portfolioAllocation => 'Dağılım';

  @override
  String get portfolioPositions => 'Pozisyonlar';

  @override
  String portfolioAvgCost(String price) {
    return 'ort. maliyet $price';
  }

  @override
  String get portfolioYourPosition => 'Pozisyonunuz';

  @override
  String get portfolioPurchases => 'Alışlar';

  @override
  String get portfolioRemove => 'Kaldır';

  @override
  String get portfolioExcluded =>
      'Fiyatı veya döviz kuru olmayan pozisyonlar toplamlara dahil edilmez.';

  @override
  String get priceAlerts => 'Fiyat alarmları';

  @override
  String get setPriceAlert => 'Fiyat alarmı kur';

  @override
  String alertDialogTitle(String symbol) {
    return 'Fiyat alarmı · $symbol';
  }

  @override
  String get alertKindAbove => 'Şunun üstüne çıkarsa';

  @override
  String get alertKindBelow => 'Şunun altına düşerse';

  @override
  String get alertKindMove => 'Bir günde çok hareket ederse';

  @override
  String alertTargetPrice(String currency) {
    return 'Fiyat ($currency)';
  }

  @override
  String get alertMovePercent => 'Günlük hareket (%)';

  @override
  String get alertAlreadyMet => 'Fiyat bu seviyeyi zaten geçti.';

  @override
  String get alertSave => 'Alarm kur';

  @override
  String alertCreated(String symbol) {
    return '$symbol için alarm kuruldu.';
  }

  @override
  String get alertsEmpty => 'Henüz alarm yok. Bir hisse açın ve zile dokunun.';

  @override
  String get alertsNote =>
      'Alarmlar, WhatStock çalıştığı sürece 5 dakikada bir kontrol edilir. Bilgisayarda uygulama menü çubuğunda veya sistem tepsisinde çalışmaya devam eder; telefonda şimdilik yalnızca uygulama açıkken bildirir.';

  @override
  String alertDescAbove(String price) {
    return '$price üstünde';
  }

  @override
  String alertDescBelow(String price) {
    return '$price altında';
  }

  @override
  String alertDescMove(String percent) {
    return 'Günlük hareket ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return '$date tarihinde $price fiyatında tetiklendi';
  }

  @override
  String get alertRearm => 'Yeniden kur';

  @override
  String get alertDelete => 'Sil';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol $price üstüne çıktı';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol $price altına düştü';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol bugün $percent hareket etti';
  }

  @override
  String alertHitBody(String price) {
    return 'Güncel fiyat: $price';
  }

  @override
  String get alertOpen => 'Aç';

  @override
  String get keepInTrayTitle => 'Pencere kapanınca da çalışsın';

  @override
  String get keepInTraySubtitle =>
      'WhatStock menü çubuğunda veya sistem tepsisinde kalır; böylece kısayol ve fiyat alarmları çalışmaya devam eder.';

  @override
  String get termsOfUse => 'Kullanım Koşulları';

  @override
  String get privacyPolicy => 'Gizlilik Politikası';

  @override
  String get subscriptionLegal =>
      'Abonelik, iptal edene kadar her ay otomatik olarak yenilenir. Abone olarak Kullanım Koşulları’nı ve Gizlilik Politikası’nı kabul etmiş olursunuz.';

  @override
  String get deleteAccount => 'Hesabı sil';

  @override
  String get deleteAccountTitle => 'Hesabınız silinsin mi?';

  @override
  String get deleteAccountBody =>
      'Hesabınız ve sunucumuzda saklanan her şey (e-posta, kota, kullanım) kalıcı olarak silinir; kullanılmayan analizler kaybolur. Tarayıcıda ödenen abonelik hemen iptal edilir; App Store veya Google Play aboneliğini mağaza ayarlarından iptal etmeniz gerekir.';

  @override
  String get deleteLocalData =>
      'Bu cihazdaki verileri de sil (portföy, alarmlar, favoriler, geçmiş, kaydedilen analizler)';

  @override
  String get deleteAccountConfirm => 'Kalıcı olarak sil';

  @override
  String get accountDeleted => 'Hesabınız silindi.';

  @override
  String get errDeleteAccount =>
      'Hesap silinemedi. Bağlantınızı kontrol edip tekrar deneyin.';

  @override
  String get aiTrialBriefNote =>
      'Deneme analizleri kısadır ve daha hızlı bir yapay zekâ modeliyle hazırlanır. Bir planla en yetenekli yapay zekâmızı, daha fazla web araştırmasını ve Standart ile Ayrıntılı uzunlukları elde edersiniz.';

  @override
  String get billingMonthly => 'Aylık';

  @override
  String get billingYearly => 'Yıllık';

  @override
  String get yearlyDiscount => '2 ay ücretsiz';

  @override
  String get perYear => '/ yıl';

  @override
  String pricePerMonthApprox(String price) {
    return 'Ayda ≈ $price';
  }

  @override
  String get subscriptionLegalYearly =>
      'Yıllık abonelik, iptal edene kadar her yıl otomatik olarak yenilenir. Abone olarak Kullanım Koşulları’nı ve Gizlilik Politikası’nı kabul etmiş olursunuz.';

  @override
  String get myAnalyses => 'Analizlerim';

  @override
  String get navAlerts => 'Alarmlar';

  @override
  String get inviteTitle => 'Kapalı önizleme';

  @override
  String get inviteBody =>
      'WhatStock şimdilik yalnızca davetle kullanılabilir. Aldığınız davet kodunu girin.';

  @override
  String get inviteCodeLabel => 'Davet kodu';

  @override
  String get inviteContinue => 'Devam';

  @override
  String get inviteInvalid => 'Bu davet kodu geçerli değil.';

  @override
  String get inviteExpired =>
      'Bu davetin süresi doldu. Sizi davet eden kişiden yeni bir kod isteyin.';

  @override
  String get inviteDeviceLimit =>
      'Bu davet kodu zaten izin verilen en fazla sayıda cihazda kullanılıyor.';

  @override
  String get previewConfidential => 'Gizli önizleme';

  @override
  String get errPreviewDailyLimit =>
      'Bu önizlemenin bugünkü analiz sınırına ulaşıldı. Yarın tekrar deneyin.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count saat önce',
      one: '1 saat önce',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gün önce',
      one: '1 gün önce',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Bu analiz güncellensin mi?';

  @override
  String staleBody(String age) {
    return '$age hazırlandı. O zamandan beri fiyatlar, haberler ve sonuçlar değişmiş olabilir.';
  }

  @override
  String get staleKeep => 'Öncekini göster';

  @override
  String get staleRefresh => 'Yenisini oluştur';

  @override
  String seeAll(int count) {
    return 'Tümünü gör ($count)';
  }

  @override
  String get searchAnalyses => 'Analizlerinde ara';

  @override
  String get deleteAnalysis => 'Sil';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol analizi silindi';
  }

  @override
  String get keyLevelAlertHint =>
      'Fiyat bir seviyeye ulaştığında alarm almak için o seviyeye dokunun.';

  @override
  String get shareAnalysisTitle => 'Analizi paylaş';

  @override
  String get shareAsImage => 'Görsel olarak paylaş';

  @override
  String get shareAsText => 'Metin olarak paylaş';

  @override
  String get shareCardFooter => 'WhatStock ile hazırlandı';

  @override
  String get shareCardDisclaimer =>
      'Yapay zekâ analizi · yatırım tavsiyesi değildir';

  @override
  String get referralTitle => 'Arkadaşlarını davet et';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ek analiz',
      one: '1 ek analiz',
    );
    return 'Kodunu paylaş. Arkadaşın hemen $_temp0 kazanır, sen de onun ilk analizinden sonra aynısını kazanırsın.';
  }

  @override
  String get referralYourCode => 'Kodun';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Davet edilen: $invited · Ödüllendirilen: $rewarded';
  }

  @override
  String get referralHaveCode => 'Bir arkadaşından kod mu aldın?';

  @override
  String get referralRedeem => 'Kullan';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ek analiz eklendi. Hoş geldin!',
      one: '1 ek analiz eklendi. Hoş geldin!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Bu kod mevcut değil. Kontrol edip tekrar dene.';

  @override
  String get referralErrOwn => 'Kendi kodunu kullanamazsın.';

  @override
  String get referralErrAlready => 'Bir arkadaşının kodunu zaten kullandın.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ek analiz',
      one: '1 ek analiz',
    );
    return 'Hisseleri WhatStock ile analiz ediyorum: bir hissenin fotoğrafını çek, yapay zekâ açıklasın. Kodum $code ile $_temp0 kazanırsın.';
  }

  @override
  String get referralCopied => 'Kod kopyalandı';

  @override
  String get onboardTitle1 => 'Bir hissenin fotoğrafını çekin';

  @override
  String get onboardBody1 =>
      'Bir aracı kurum ekranı, bir gazete ya da bir şirket logosu yeterli: WhatStock hisseyi tanır; fiyatını, grafiğini ve temel verilerini gösterir.';

  @override
  String get onboardTitle2 => 'Dakikalar içinde anlayın';

  @override
  String get onboardBody2 =>
      'Yapay zekâ analizi; hisseyi neyin hareket ettirdiğini, riskleri, değerlemeyi ve fiyatın nereye gidebileceğine dair üç senaryoyu kaynaklarıyla ve kendi dilinizde açıklar.';

  @override
  String get onboardTitle3 => 'Her şeyden haberdar olun';

  @override
  String get onboardBody3 =>
      'Favoriler, portföyünüz ve fiyat alarmları sizi gelişmelerden haberdar eder. Analizleriniz cihazınızda kalır, istediğiniz zaman yeniden açabilirsiniz.';

  @override
  String get onboardNext => 'İleri';

  @override
  String get onboardStart => 'Başlayın';

  @override
  String get onboardSkip => 'Atla';

  @override
  String changesTitle(String date) {
    return 'Önceki analizden bu yana ($date)';
  }

  @override
  String get changesPrice => 'Fiyat';

  @override
  String get changesNoMajor => 'Görünüm önemli ölçüde değişmedi.';

  @override
  String get changesPreviousSummary => 'Önceki özet';

  @override
  String get telemetryTitle => 'WhatStock\'u geliştirmemize yardım et';

  @override
  String get telemetryBody =>
      'Anonim kullanım istatistiklerini ve kilitlenme raporlarını paylaş: hangi özelliklerin kullanıldığı ve neyin ters gittiği. Hisselerin, analizlerin veya kişisel verilerin asla paylaşılmaz. Bunu istediğin zaman Ayarlar\'dan değiştirebilirsin.';

  @override
  String get telemetryAllow => 'İzin ver';

  @override
  String get telemetryDecline => 'Hayır, teşekkürler';

  @override
  String get telemetrySetting => 'Anonim istatistikler ve kilitlenme raporları';

  @override
  String get telemetrySettingHint =>
      'Özelliklerin ne sıklıkla kullanıldığı ve hata raporları; kişisel veriler ya da aramalarının ve analizlerinin içeriği olmadan.';

  @override
  String get askButton => 'Bu analiz hakkında soru sorun';

  @override
  String askTitle(String symbol) {
    return '$symbol hakkında sorular';
  }

  @override
  String get askIntro =>
      'Analizle ilgili her şeyi sorabilirsiniz: bir riskin ne anlama geldiğini, görünümü neyin değiştirebileceğini, bir rakamın nasıl hesaplandığını. Yanıtlar bu analize dayanır ve yatırım tavsiyesi değildir.';

  @override
  String get askHint => 'Bir soru sorun…';

  @override
  String get askSend => 'Gönder';

  @override
  String get askThinking => 'Düşünüyor…';

  @override
  String get askSuggest1 => 'En büyük risk nedir?';

  @override
  String get askSuggest2 => 'Görünümü ne değiştirebilir?';

  @override
  String get askSuggest3 => 'Basitçe açıkla';

  @override
  String get askMaxReached =>
      'Bu analiz için son soruydu. Daha fazla soru sormak için yeni bir analiz oluşturun.';

  @override
  String get errAskLimit =>
      'Bugünkü soru sınırına ulaştınız. Lütfen yarın tekrar deneyin.';

  @override
  String get eventTomorrow => 'Yarın';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days gün sonra',
      one: '1 gün sonra',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Çeyreklik bilanço';

  @override
  String get eventBeforeOpen => 'piyasa açılmadan önce';

  @override
  String get eventAfterClose => 'piyasa kapandıktan sonra';

  @override
  String eventEpsEstimate(String value) {
    return 'HBK beklentisi: $value';
  }

  @override
  String get eventFromAnalysis => 'Analizinden';

  @override
  String get eventDividend => 'Temettü bekleniyor';

  @override
  String get eventDividendEstimate =>
      'Kaydettiğiniz ödemelerden tahmin edilmiştir';

  @override
  String get eventsHint =>
      'Favorilerinin ve portföyündeki hisselerin önümüzdeki 90 gündeki bilanço tarihleri, analizlerinin işaret ettiği tarihli olaylar ve kaydettiğin ödemelere göre beklenen temettüler.';

  @override
  String get eventsEmpty =>
      'Önümüzdeki 90 günde tarihli bir olay yok. Bilanço tarihlerini burada görmek için favori ya da portföy hissesi ekle; kaydedilen temettüler bir sonraki beklenen ödemeyi gösterir.';

  @override
  String get compareTitle => 'Karşılaştır';

  @override
  String get compareAdd => 'Hisse ekle';

  @override
  String get compareRemove => 'Kaldır';

  @override
  String get compareTickerHint => 'Hisse sembolü, ör. MSFT';

  @override
  String get compareHint =>
      'Temel rakamlar yan yana; her satırdaki en iyi değer vurgulanır. Tutarlar her hissenin kendi para birimindedir.';

  @override
  String get compareNoAnalysis => 'Henüz analiz yok';

  @override
  String get portfolioDividends => 'Yıllık temettü';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent verim';
  }

  @override
  String get portfolioDividendNote =>
      'Beklenen yıllık temettü, son 12 ayda ödenen temettülere dayanır; gelecekteki ödemeler garanti değildir.';

  @override
  String positionDividend(String amount) {
    return 'Temettü: yılda $amount';
  }

  @override
  String get chartAvgCost => 'Ort. maliyetiniz';

  @override
  String get chartAlertLevel => 'Alarm';

  @override
  String get marketsToday => 'Bugün piyasalar';

  @override
  String get notesTitle => 'Notlarım';

  @override
  String get notesHint =>
      'Neden aldınız, neyi takip ediyorsunuz, sizi satmaya ne yöneltir?';

  @override
  String get notesInfo =>
      'Bu cihazda ve giriş yaptıysanız hesabınızda saklanır. Yapay zekâ analizi notlarınızı dikkate alır.';

  @override
  String notesSaved(String date) {
    return 'Kaydedildi: $date';
  }

  @override
  String get peersTitle => 'Benzer şirketler';

  @override
  String get portfolioExport => 'CSV olarak dışa aktar';

  @override
  String get portfolioImport => 'CSV\'den içe aktar';

  @override
  String get portfolioImportHint =>
      'Her satıra bir alış yapıştır: hisse sembolü, adet, fiyat, para birimi, tarih (YYYY-AA-GG). Sütunlar virgül, noktalı virgül veya sekmeyle ayrılabilir; başlık satırı isteğe bağlıdır.';

  @override
  String get portfolioImportButton => 'İçe aktar';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count alış eklendi',
      one: '1 alış eklendi',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count satır atlandı',
      one: '1 satır atlandı',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Portföy, favoriler, fiyat alarmları ve notlar tüm cihazlarınızda senkronize edilir.';

  @override
  String syncLast(String time) {
    return 'Son senkronizasyon: $time';
  }

  @override
  String get syncNow => 'Şimdi senkronize et';

  @override
  String get syncFailed =>
      'Senkronizasyon başarısız oldu. Otomatik olarak yeniden denenecek.';

  @override
  String get alertEmailTitle => 'Alarm tetiklendiğinde e-posta';

  @override
  String get alertEmailOn =>
      'Alarmlarınızı birkaç dakikada bir kontrol eder ve uygulama kapalıyken bile size e-posta göndeririz.';

  @override
  String get alertEmailSignIn =>
      'Uygulama kapalıyken bile alarmları e-postayla almak için Ayarlar’dan e-posta adresinizle giriş yapın.';

  @override
  String get portfolioHistory => 'Değer gelişimi';

  @override
  String get portfolioReviewTitle => 'Yapay zekâ portföy analizi';

  @override
  String get portfolioReviewIntro =>
      'Yapay zekâ tüm portföyünüze bakar: yoğunlaşma, sektör ve döviz riski, hisselerinizin ortak riskleri ve temettüler. 1 analiz kullanır.';

  @override
  String get portfolioReviewButton => 'Portföyümü analiz et';

  @override
  String get portfolioReviewAgain => 'Yeniden analiz et';

  @override
  String get portfolioReviewWorking => 'Portföyünüz analiz ediliyor…';

  @override
  String get digestTitle => 'E-postayla haftalık özet';

  @override
  String get digestHint =>
      'Her pazartesi: favorilerinizin ve portföyünüzün geçen hafta nasıl hareket ettiği ve yaklaşan bilanço tarihleri.';

  @override
  String get benchmarkTitle => 'S&P 500 ile karşılaştırma';

  @override
  String get benchmarkTitleIndex => 'Bir endeksle karşılaştırma';

  @override
  String get benchmarkHintIndex =>
      'Her alımınız aynı gün seçilen endeksi izleyen bir fona yatırılmış gibi. Temettüler dahil değildir; geçmiş getiriler gelecekteki getirileri öngörmez.';

  @override
  String get benchmarkYours => 'Alımlarınız';

  @override
  String benchmarkAhead(String points) {
    return 'Endeksten $points yüzde puan iyi';
  }

  @override
  String benchmarkBehind(String points) {
    return 'Endeksin $points yüzde puan gerisinde';
  }

  @override
  String get portfolioSell => 'Sat';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbol sat';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Hisse başına satış fiyatı ($currency)';
  }

  @override
  String get portfolioSellDate => 'Satış tarihi';

  @override
  String get portfolioSellAll => 'Tümü';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Elinizde $quantity var';
  }

  @override
  String get portfolioSold => 'Satış';

  @override
  String get portfolioRealized => 'Gerçekleşen';

  @override
  String get portfolioClosed => 'Kapanan pozisyonlar';

  @override
  String get portfolioClosedNote => 'Tüm hisseler satıldı';

  @override
  String get portfolioTransactions => 'İşlemler';

  @override
  String get portfolioRealizedByYear => 'Yıllara göre gerçekleşen kâr';

  @override
  String get portfolioRealizedHint =>
      'Satışlar önce en eski alışlarınızla eşleştirilir (FIFO) ve bugünkü döviz kuruyla çevrilir. Vergi beyannameniz için aracı kurumunuzun ekstresini kullanın.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Bu analizden sonra yeni çeyrek bilançosu açıklandı ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Yeni bilanço';

  @override
  String get portfolioImportBrokers =>
      'Revolut, Trading 212, Interactive Brokers, DEGIRO, Schwab, Fidelity ve Robinhood dışa aktarımları da satışlar ve temettülerle (stopaj düşülmüş olarak) birlikte tanınır; para yatırmalar atlanır.';

  @override
  String get portfolioImportFile => 'Dosya seç';

  @override
  String offlineBanner(String time) {
    return 'Bağlantı yok – en son kaydedilen veriler gösteriliyor ($time).';
  }

  @override
  String get glossMarketCap =>
      'Şirketin tamamının borsadaki değeri: hisse fiyatı × hisse sayısı.';

  @override
  String get glossSharesOutstanding =>
      'Şirketin kaç hisse ihraç ettiği. Artarsa her hisse daha küçük bir paya sahip olur; geri alımlar bu sayıyı azaltır.';

  @override
  String get glossPeTrailing =>
      'Fiyat ÷ son 12 ayın hisse başına kârı: bugünkü kârın kaç yılı için ödeme yaptığınız. Düşük olan daha ucuzdur, ancak hızlı büyüyen şirketlerin P/E\'si genellikle yüksektir.';

  @override
  String get glossPeForward =>
      'P/E gibi, ancak analistlerin önümüzdeki 12 ay için beklediği kârla hesaplanır. Geçmiş P/E\'nin altındaysa kârın artması bekleniyor demektir.';

  @override
  String get glossPb =>
      'Fiyat ÷ hisse başına defter değeri (varlıklar eksi borçlar). 1 civarı, piyasanın şirketi kâğıt üzerindeki varlıkları kadar değerlendirdiği anlamına gelir.';

  @override
  String get glossPs =>
      'Piyasa değeri ÷ yıllık gelir. Henüz kârı az olan veya hiç olmayan şirketler için kullanışlıdır; aynı sektör içinde karşılaştırın.';

  @override
  String get glossEvToFcf =>
      'Borç dahil şirket değeri (EV) ÷ yatırımlardan sonra bir yılda ürettiği nakit. Düşük olması, ödediğiniz fiyata daha fazla nakit aldığınız anlamına gelir.';

  @override
  String get glossPeg =>
      'P/E ÷ beklenen yıllık kâr büyümesi (%). 1 civarı genellikle makul kabul edilir; P/E\'yi büyüme ışığında değerlendirir.';

  @override
  String get glossEps =>
      'Son 12 ayda hisse başına düşen kâr. Yıllar içinde artan EPS, sağlıklı bir şirketin en güçlü işaretlerinden biridir.';

  @override
  String get glossBeta =>
      'Hissenin piyasayla birlikte ne kadar hareket etme eğiliminde olduğu: 1 = piyasa gibi, 1,5 = yaklaşık %50 daha büyük dalgalanmalar, 1\'in altı = daha sakin.';

  @override
  String get glossRevenueTtm =>
      'Son 12 ayın toplam satışları, tüm maliyetlerden önce.';

  @override
  String get glossNetIncomeTtm =>
      'Son 12 ayda tüm maliyetler, faizler ve vergilerden sonra kalan kâr.';

  @override
  String get glossGrossMargin =>
      'Ürünlerin doğrudan maliyetinden sonra gelirden kalan pay. Yüksek marj çoğu zaman fiyatlama gücüne işaret eder.';

  @override
  String get glossOperatingMargin =>
      'İşi yürütme maliyetlerinden (maaşlar, kira, pazarlama) sonra, faiz ve vergilerden önce gelirden kalan pay.';

  @override
  String get glossNetMargin =>
      'Gelirin nihai kâra dönüşen payı. %20, her 100 birimlik satışın 20\'sinin kâr olduğu anlamına gelir.';

  @override
  String get glossRoe =>
      'Özkaynak kârlılığı: yıllık kâr ÷ sahiplerin sermayesi. Yönetimin hissedarların parasını ne kadar iyi kullandığını gösterir; yaklaşık %15\'in üzeri güçlüdür.';

  @override
  String get glossRoa =>
      'Aktif kârlılığı: yıllık kâr ÷ şirketin sahip olduğu her şey. Aynı sektör içinde karşılaştırın.';

  @override
  String get glossDebtToEquity =>
      'Borçlar ÷ sahiplerin sermayesi. Yüksek olması daha fazla borç para demektir: faizler yükseldiğinde veya işler yavaşladığında risk artar.';

  @override
  String get glossCurrentRatio =>
      'Kısa vadeli varlıklar ÷ bir yıl içinde ödenecek borçlar. 1\'in üzeri, şirketin yakın vadeli borçlarını karşılayabileceği anlamına gelir.';

  @override
  String get glossRevenueGrowth =>
      'Gelirin bir yıl öncesine göre ne kadar arttığı.';

  @override
  String get glossEpsGrowth =>
      'Hisse başına kârın bir yıl öncesine göre ne kadar arttığı.';

  @override
  String get glossDividendYield =>
      'Yıllık temettü ÷ hisse fiyatı: ödediğiniz tutarın yüzdesi olarak yılda alacağınız nakit gelir.';

  @override
  String get glossDividendPerShare =>
      'Son bir yılda bir hisse için ödenen temettü.';

  @override
  String get glossPayoutRatio =>
      'Kârın temettü olarak dağıtılan payı. %100\'ün üzerinde şirket kazandığından fazlasını öder; bu nadiren uzun sürer.';

  @override
  String get portfolioBeta => 'Portföy betası';

  @override
  String get glossPortfolioBeta =>
      'Hisselerinizin değerlerine göre ağırlıklandırılmış betası: piyasa %1 hareket ettiğinde hisselerinizin yaklaşık yüzde kaç hareket ettiği. 1\'in üzerindeyse piyasadan daha fazla dalgalanır, 1\'in altındaysa daha az. Nakit dahil değildir.';

  @override
  String get portfolioTop3 => 'En büyük 3 pozisyon';

  @override
  String get glossPortfolioTop3 =>
      'Hisselerinizin değerinin ne kadarının en büyük üç pozisyonunuzda olduğu. Bu oran ne kadar yüksekse, tek bir şirketle ilgili kötü haberler tüm portföye o kadar çok zarar verebilir.';

  @override
  String get glossDividendGrowth5y =>
      'Hisse başına temettünün son beş yılda yılda ortalama ne kadar arttığı. İstikrarlı büyüme genellikle şirketin nakit akışına güvendiği anlamına gelir; temettü kesintisi çoğu zaman bir uyarı işaretidir.';

  @override
  String get glossYieldOnCost =>
      'Son 12 ayda alınan temettülerin, hâlâ elinizde tuttuğunuz hisseler için ödediğiniz tutara bölümü. Temettü veriminden farklı olarak bugünkü fiyata değil, kendi alış fiyatınıza göre ölçülür.';

  @override
  String get glossTitle => 'Ne anlama geliyor?';

  @override
  String get watchNewsTitle => 'Hisselerinizle ilgili haberler';

  @override
  String get undo => 'Geri al';

  @override
  String get watchSort => 'Sırala';

  @override
  String get watchSortOwn => 'Kendi sıram';

  @override
  String get watchSortGainers => 'En çok yükselenler önce';

  @override
  String get watchSortLosers => 'En çok düşenler önce';

  @override
  String get watchSortName => 'Sembole göre (A–Z)';

  @override
  String get watchHint =>
      'Sıralamak için tutamacı sürükle, kaldırmak için sola kaydır. Çizgi son 30 günü gösterir.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: analiziniz hazır.';
  }

  @override
  String alertFromCost(String price) {
    return 'Ortalama alış fiyatınıza ($price) göre:';
  }

  @override
  String get briefTitle => 'Bugün hisselerinle';

  @override
  String get briefButton => 'Bugünü özetle';

  @override
  String get briefHint =>
      'Portföyünün ve favorilerinin bugün nasıl hareket ettiğine ve son haberlerin onlar hakkında ne dediğine dair kısa bir yapay zekâ özeti. Analiz hakkı kullanmaz.';

  @override
  String get briefRefresh => 'Güncelle';

  @override
  String get sectionEarnings => 'Bilançolar';

  @override
  String earningsNext(String date) {
    return 'Sonraki bilanço: $date';
  }

  @override
  String get earningsExpected => 'Beklenen HBK';

  @override
  String get earningsReported => 'Açıklanan HBK';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Son $total çeyreğin $beats tanesinde HBK beklentisine eşit veya üzerinde',
      one: '1 çeyreğin $beats tanesinde HBK beklentisine eşit veya üzerinde',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol yarın çeyreklik bilançosunu açıklıyor';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol bugün çeyreklik bilançosunu açıklıyor';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return '$symbol: bugün temettü bekleniyor';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Yaklaşık $amount. Geldiğinde portföyünüze kaydedin.';
  }

  @override
  String get dividendRemindersTitle => 'Temettü hatırlatıcıları';

  @override
  String get dividendRemindersSubtitle =>
      'Kaydettiğiniz ödemelerin düzenine göre temettü beklenen gün, kaydedebilmeniz için bildirim';

  @override
  String get earningsRemindersTitle => 'Bilanço hatırlatıcıları';

  @override
  String get earningsRemindersSubtitle =>
      'Favorilerindeki veya portföyündeki hisseler çeyreklik bilançosunu açıklamadan bir gün önce bildirim';

  @override
  String addAllToFavorites(int count) {
    return 'Tümünü favorilere ekle ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Ekran görüntüsünden içe aktar';

  @override
  String get holdingsReading => 'Pozisyonların okunuyor…';

  @override
  String get holdingsReviewTitle => 'Bulunan pozisyonlar';

  @override
  String get holdingsReviewHint =>
      'Eklemeden önce rakamları kontrol et. Fiyat, hisse başına ortalama alış fiyatındır, bugünkü fiyat değil.';

  @override
  String get holdingsNoPrice => 'Görselde ortalama alış fiyatı yok';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pozisyon ekle',
      one: '1 pozisyon ekle',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Bu görselde hisse pozisyonu bulunamadı. Aracı kurumunun pozisyonlar veya varlıklar sayfasının ekran görüntüsünü dene.';

  @override
  String get week52Range => '52 haftalık aralık';

  @override
  String week52BelowHigh(String percent) {
    return '52 haftalık en yüksekten $percent aşağıda';
  }

  @override
  String get week52AtHigh => '52 haftalık en yüksekte';

  @override
  String get alertKindTrailing => 'Zirveden düşerse';

  @override
  String get alertTrailingPercent => 'Zirveden düşüş (%)';

  @override
  String get alertTrailingHint =>
      'Fiyatı yukarı doğru takip eder: fiyat, kurulduğundan beri ulaştığı en yüksek seviyeden bu kadar düştüğünde uyarır.';

  @override
  String alertDescTrailing(String percent) {
    return 'Zirveden $percent düşüş';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'şimdiye kadarki zirve: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol zirveden $percent düştü';
  }

  @override
  String get sectionInsiders => 'İçeriden işlemler';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count alım',
      one: '1 alım',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count satım',
      one: '1 satım',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Net: $shares hisse';
  }

  @override
  String get insiderBuy => 'Aldı';

  @override
  String get insiderSell => 'Sattı';

  @override
  String get insiderHint =>
      'Son 90 günde yöneticiler ve yönetim kurulu üyelerinin açık piyasada yaptığı alım ve satımlar (SEC Form 4). Opsiyon kullanımları ve hisse ödülleri sayılmaz.';

  @override
  String get insiderNone =>
      'Son 90 günde açık piyasada içeriden alım veya satım yok.';

  @override
  String get analystTrend => 'Görüşlerin aydan aya değişimi';

  @override
  String get watchListAll => 'Tümü';

  @override
  String get watchListNew => 'Yeni liste';

  @override
  String get watchListName => 'Liste adı';

  @override
  String get watchListRename => 'Listeyi yeniden adlandır';

  @override
  String get watchListDelete => 'Listeyi sil';

  @override
  String get watchListAddTo => 'Listeye ekle';

  @override
  String get watchListEmpty =>
      'Bu listede henüz hisse yok. Eklemek için hissenin yanındaki liste düğmesine dokun.';

  @override
  String get portfolioAskTitle => 'Portföyün hakkında sorular';

  @override
  String get rangeYtd => 'YBB';

  @override
  String get backupTitle => 'Yedekleme';

  @override
  String get backupSave => 'Yedek kaydet';

  @override
  String get backupSaveHint =>
      'Favorileriniz, listeleriniz, portföyünüz, alarmlarınız ve notlarınız tek bir dosyada.';

  @override
  String get backupRestore => 'Yedekten geri yükle';

  @override
  String get backupRestoreHint =>
      'Dosyadakileri ekler; şu anki verilerinizden hiçbiri silinmez.';

  @override
  String get backupRestored => 'Yedek geri yüklendi.';

  @override
  String get backupInvalid => 'Bu dosya bir WhatStock yedeği değil.';

  @override
  String get allocationPositions => 'Hisseler';

  @override
  String get allocationSectors => 'Sektörler';

  @override
  String get allocationCurrencies => 'Dövizler';

  @override
  String get allocationAccounts => 'Hesaplar';

  @override
  String get compareReturn1y => '1 yıllık getiri';

  @override
  String get compareFromHigh => '52 haftalık en yüksekten uzaklık';

  @override
  String get briefAutoTitle => 'Her sabah günlük özet';

  @override
  String get briefAutoSubtitle =>
      '“Bugün hisselerinle”, uygulama çalıştığı sürece saat 7.00’den sonra otomatik olarak hazırlanır; bilgisayarlarda bir bildirim seni haberdar eder. Günlük soru hakkından düşer, analiz hakkı kullanmaz.';

  @override
  String get targetsButton => 'Hedef dağılım';

  @override
  String get targetsTitle => 'Hedef dağılım';

  @override
  String get targetsHint =>
      'Her hissenin portföyde ne kadar pay alması gerektiğini belirleyin. Hedef yoksa alanı boş bırakın. Uygulama ardından hedefe ulaşmak için neyi alıp satmanız gerektiğini gösterir.';

  @override
  String targetsSum(String percent) {
    return 'Toplam: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Al ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Sat ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Hedefte';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol beklenen HBK\'yı aştı';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol beklenen HBK\'nın altında kaldı';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'Açıklanan HBK $actual, beklenen $estimate';
  }

  @override
  String get newsExplain => 'Bu ne anlama geliyor?';

  @override
  String get watchAlertAll => 'Büyük günlük hareketlerde alarm';

  @override
  String get watchAlertAllHint =>
      'Bu listedeki her hisse için bir fiyat alarmı: bir günde bu kadar yukarı ya da aşağı hareket ettiğinde çalar. Zaten alarmı olan hisseler kendininkini korur.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count alarm kuruldu',
      one: '1 alarm kuruldu',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Gerçekleşen kazancı dışa aktar (CSV)';

  @override
  String get portfolioAnnualReturn => 'Yıllık getiri';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / yıl';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Para ağırlıklı yıllık getiri (XIRR): ne zaman alıp sattığınızı hesaba katar, böylece sonradan eklenen para onu çarpıtmaz. İlk alışınızın üzerinden en az bir yıl geçince gösterilir; temettüler dahil değildir.';

  @override
  String get eventsAddToCalendar => 'Takvime ekle (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Portföy uyarısı';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Portföyünün tamamı bir günde bu kadar hareket ettiğinde bildirim.';

  @override
  String get portfolioMoveAlertOff => 'Kapalı';

  @override
  String portfolioMoveUp(String percent) {
    return 'Portföyün bugün $percent yükseldi';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Portföyün bugün $percent düştü';
  }

  @override
  String get whatIfTitle => 'Yatırım yapsaydınız?';

  @override
  String get whatIfAmount => 'Tutar';

  @override
  String whatIfResult(String amount, String period) {
    return '$period önce yatırılan $amount bugün şu kadar ederdi';
  }

  @override
  String get whatIfNote =>
      'Yalnızca hisse fiyatına dayanır: temettüler, ücretler ve vergiler dahil değildir. Geçmiş getiriler gelecekteki getirileri öngörmez.';

  @override
  String get watchShare => 'Listeyi paylaş';

  @override
  String get watchImport => 'Hisse sembolü ekle';

  @override
  String get watchImportHint =>
      'Hisse sembollerini virgül, boşluk veya yeni satırla ayırarak yapıştır – örneğin birinin seninle paylaştığı bir listeyi.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hisse eklendi',
      one: '1 hisse eklendi',
      zero: 'Yeni hisse yok',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'En büyükler önce';

  @override
  String get positionsSortGain => 'En yüksek toplam getiri önce';

  @override
  String get positionsSortToday => 'Bugün en iyiler önce';

  @override
  String get chartMyBuys => 'Alışlarınız';

  @override
  String get chartMySells => 'Satışlarınız';

  @override
  String get shortcutsTitle => 'Klavye kısayolları';

  @override
  String usMarketOpen(String time) {
    return 'ABD piyasası açık · $time sonra kapanır';
  }

  @override
  String usMarketClosed(String time) {
    return 'ABD piyasası kapalı · $time sonra açılır';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes dk';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours sa $minutes dk';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days g $hours sa';
  }

  @override
  String get dividendGoalSet => 'Aylık temettü hedefi belirle';

  @override
  String get dividendGoalTitle => 'Aylık temettü hedefi';

  @override
  String get dividendGoalAmount => 'Aylık temettü';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Bugünkü verimlerle ayda yaklaşık $amount · $percent · hedef: $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Bugünkü verimlerle ayda yaklaşık $amount · Hedefe ulaşıldı: $goal';
  }

  @override
  String get portfolioAccount => 'Hesap';

  @override
  String get portfolioAccountHint => 'örn. BES (isteğe bağlı)';

  @override
  String get portfolioAccountAdd => 'Hesap belirt';

  @override
  String get portfolioAccountsAll => 'Tüm hesaplar';

  @override
  String get portfolioAccountNote =>
      'Yalnızca bu hesabın işlemleri ve temettüleri. Nakit, hedefler ve yapay zekâ analizi Tüm hesaplar altında gösterilir.';

  @override
  String get portfolioNoAccount => 'Hesap yok';

  @override
  String portfolioFee(String currency) {
    return 'Komisyon ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Komisyon ekle';

  @override
  String portfolioFeeRow(String amount) {
    return 'Komisyon: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'Yıllık özet';

  @override
  String get portfolioProceeds => 'Satış bedeli';

  @override
  String get portfolioCostBasis => 'Maliyet bedeli';

  @override
  String get portfolioFeesPaid => 'Ödenen komisyon';

  @override
  String get portfolioAnnualSummaryNote =>
      'Tutarlar orijinal para biriminde, çevrilmemiştir. Satış bedelinden satış komisyonu düşülmüştür; maliyet bedeline alış komisyonu dahildir (FIFO). Vergi beyannameniz için vergi idarenizin istediği döviz kuruyla çevirin.';

  @override
  String get portfolioShare => 'Performansı paylaş';

  @override
  String get portfolioShareHeading => 'Portföyüm';

  @override
  String get portfolioTopHoldings => 'En büyük pozisyonlar';

  @override
  String get portfolioShareNote =>
      'Yalnızca yüzdeler paylaşılır, tutarlar paylaşılmaz.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pozisyon',
      one: '$count pozisyon',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'Yatırım tavsiyesi değildir';

  @override
  String get contributionButton => 'Yeni para yatır';

  @override
  String contributionAmount(String currency) {
    return 'Yatırılacak tutar ($currency)';
  }

  @override
  String get contributionHint =>
      'Yalnızca alım, satış yok: para önce hedefinin en çok altında kalan pozisyonlara gider.';

  @override
  String contributionShares(String shares) {
    return '≈ $shares hisse';
  }

  @override
  String contributionMissing(String symbols) {
    return '$symbols için güncel fiyat yok: dağılıma dahil edilmedi.';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'Yıllık getiri böyle sürerse ($rate), hedefe $year yılı civarında ulaşırsınız.';
  }

  @override
  String get portfolioMaxDrawdown => 'En büyük düşüş';

  @override
  String get glossMaxDrawdown =>
      'Hisselerinizin değerinin önceki bir zirveden sonraki bir dibe kadar yaşadığı en büyük düşüş; alım ve satımlarınızın etkisi olmadan (zaman ağırlıklı). Portföyünüzün şimdiye kadar ne kadar derin bir düşüş yaşadığını gösterir.';

  @override
  String watchSince(String date) {
    return 'Favorilere eklediğinizden bu yana ($date)';
  }

  @override
  String get portfolioSampleTry => 'Örnek portföyle dene';

  @override
  String get portfolioSampleBanner =>
      'Bu bir örnek portföy. Yanına kendi alımlarınızı ekleyin ya da onu kaldırın.';

  @override
  String get portfolioSampleRemove => 'Örneği kaldır';

  @override
  String get portfolioStopsAll => 'Tüm pozisyonlar için iz süren stop';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count iz süren stop kuruldu',
      one: '1 iz süren stop kuruldu',
      zero: 'Tüm pozisyonlarda zaten iz süren stop var',
    );
    return '$_temp0';
  }

  @override
  String portfolioSinceSale(String percent) {
    return '$percent satıştan bu yana';
  }

  @override
  String get lotPreviewRealized => 'Bu satışta gerçekleşen (FIFO):';

  @override
  String lotPreviewAverage(String after, String before) {
    return 'Yeni ortalama maliyet: $after (şu an $before)';
  }

  @override
  String get portfolioYtdReturn => 'Bu yılki getiri';

  @override
  String get glossTwrYtd =>
      'Yılbaşından bu yana (veya ilk alımınız bu yıl olduysa o tarihten bu yana) zaman ağırlıklı getiri: her gün, o gün elinizde bulunan hisselerin değişimini hesaba katar ve günler birbirine zincirlenir – yatırdığınız veya çektiğiniz para getiri değildir, bu yüzden bir endeksle karşılaştırılabilir. Altında: aynı dönemde seçilen endeks.';

  @override
  String alertDistance(String price, String percent) {
    return 'Şu an $price · $percent kaldı';
  }

  @override
  String get watchSortSince => 'Eklendiğinden beri değişime göre';

  @override
  String get portfolioTodayMovers => 'Bugün en çok hareket edenler:';

  @override
  String get lotNoteAdd => 'Not ekle';

  @override
  String get lotNoteBuyHint =>
      'Neden alıyorsunuz? Tarihiyle birlikte hissenin notlarına eklenir.';

  @override
  String get lotNoteSellHint =>
      'Neden satıyorsunuz? Tarihiyle birlikte hissenin notlarına eklenir.';

  @override
  String get lotNoteBought => 'Alış';

  @override
  String get positionHeld => 'Elde tutma süresi';

  @override
  String durationMonths(int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months ay',
      one: '$months ay',
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
    return '$date tarihinden beri';
  }

  @override
  String lotPreviewWeight(String after, String before) {
    return 'İşlem sonrası portföy payı: $after (şu an $before)';
  }

  @override
  String get portfolioGoalSet => 'Hedef belirle';

  @override
  String get portfolioGoalTitle => 'Portföy hedefi';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · hedef: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Hedefe ulaşıldı: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Hedefi kaldır';

  @override
  String get alertEdit => 'Alarmı düzenle';

  @override
  String get positionOpenLots => 'Hâlâ elinizde (en eskiler önce)';

  @override
  String get lotRemoved => 'İşlem silindi';

  @override
  String get alertDeleted => 'Alarm silindi';

  @override
  String get alertsClearTriggered => 'Tetiklenen alarmları temizle';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count alarm temizlendi',
      one: '1 alarm temizlendi',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Ana ekran';

  @override
  String get allocationCountries => 'Ülkeler';

  @override
  String get newsExplainNoteResearch =>
      'Yapay zekâ açıklaması: Bilgileri web’de araştırır, haberi açar ve kaynağın ne kadar güvenilir olduğunu değerlendirir. Yatırım tavsiyesi değildir. Günlük soru hakkından düşer, analiz hakkı kullanmaz.';

  @override
  String get sourceOfficial => 'Resmi';

  @override
  String get sourcePressRelease => 'Basın bülteni';

  @override
  String get sourceMajorNews => 'Büyük medya';

  @override
  String get sourceOpinion => 'Görüş';

  @override
  String get earningsSummaryButton => 'Son bilançoda neler vardı?';

  @override
  String get earningsSummaryNote =>
      'Şirketin sonuç açıklamasının ve web’de bulduğu basın haberlerinin yapay zekâ özeti. Yatırım tavsiyesi değildir. Günlük soru hakkından düşer, analiz hakkı kullanmaz.';

  @override
  String get compareLastSurprise => 'Son çeyrek HBK vs. beklenen';

  @override
  String get compareNextReport => 'Sonraki bilanço';

  @override
  String get resolvingDescription =>
      'Hangi hisseyi kastettiğiniz belirleniyor…';

  @override
  String get instrumentTitle => 'Bu enstrüman hakkında';

  @override
  String get instrumentHint =>
      'Bu sembol için şirket profili yok – bir ETF, fon veya depo sertifikası olabilir. Yapay zekâya ne olduğunu, neleri içerdiğini ve maliyetini sor.';

  @override
  String get instrumentAsk => 'Bu nedir?';

  @override
  String get instrumentNote =>
      'İhraççının fon sayfası ve web’de bulduğu finans sitelerine dayanan yapay zekâ açıklaması. Yatırım tavsiyesi değildir. Günlük soru hakkından düşer, analiz hakkı kullanmaz.';

  @override
  String suggestAskAi(String query) {
    return 'Yapay zekâya sorun: “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return '$symbols için güncel fiyat yok.';
  }

  @override
  String get eventsRecentResults => 'Son açıklanan bilançolar';

  @override
  String get saveToNotes => 'Notlarıma kaydet';

  @override
  String get savedToNotes => 'Notlarınıza kaydedildi';

  @override
  String get portfolioDividendsReceived => 'Alınan temettüler';

  @override
  String get portfolioDividendsThisYear => 'Bu yıl';

  @override
  String get portfolioDividendsAllTime => 'Tüm zamanlar';

  @override
  String get portfolioAddDividend => 'Temettü ekle';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Alınan tutar ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Ödeme tarihi';

  @override
  String get portfolioDividendsEmpty =>
      'Henüz kayıtlı temettü yok. Elle ekleyin veya aracı kurumunuzun dışa aktarım dosyasını içe aktarın – temettü satırları da alınır.';

  @override
  String get portfolioSplit => 'Hisse bölünmesi';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Hisse bölünmesi: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Bölünme tarihinden önceki alım ve satımlar düzeltilir: hisse sayısı çarpılır, hisse başına fiyat bölünür; böylece maliyet aynı kalır.';

  @override
  String get portfolioSplitRatio => 'Oran (yeni : eski)';

  @override
  String get portfolioSplitRatioError =>
      '10:1 gibi bir oran girin, ters bölünme için 1:10.';

  @override
  String get portfolioSplitDate => 'Bölünme tarihi';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Hisse bölünmesi $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Hisse bölünmesi silindi';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hisse bölünmesi eklendi',
      one: '1 hisse bölünmesi eklendi',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count temettü eklendi',
      one: '1 temettü eklendi',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Temettüleri dışa aktar (CSV)';

  @override
  String get portfolioDividendDeleted => 'Temettü silindi';

  @override
  String get portfolioDividendsHint =>
      'Tutarlar hesabınıza geldiği şekliyle, ödeme para biriminde; toplamlar bugünkü kurla çevrilir. Vergi beyannameniz için aracı kurumunuzun ekstresini kullanın.';

  @override
  String get awayTitle => 'Siz yokken';

  @override
  String awaySince(String when) {
    return '$when tarihinden beri';
  }

  @override
  String get awayQuiet => 'Pek bir hareket olmadı.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count alarm tetiklendi',
      one: '1 alarm tetiklendi',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Açıklanan sonuçlar: $symbols';
  }

  @override
  String get moveWhyButton => 'Bugün neden hareket ediyor?';

  @override
  String moveWhyTitle(String percent) {
    return 'Bugün $percent';
  }

  @override
  String get moveWhyNote =>
      'İnternette bulunan bugünkü haberlere dayalı yapay zekâ açıklaması; gerçek neden bilinmiyor veya farklı olabilir. Yatırım tavsiyesi değildir. Analiz değil, günlük soru hakkınızı kullanır.';

  @override
  String get sectionTechnical => 'Teknik görünüm';

  @override
  String get labelSma50 => '50 günlük ortalama';

  @override
  String get labelSma200 => '200 günlük ortalama';

  @override
  String get labelRsi => 'RSI (14 gün)';

  @override
  String get labelVolatility30 => 'Volatilite (30 gün)';

  @override
  String techAbove(String percent) {
    return '$percent üzerinde';
  }

  @override
  String techBelow(String percent) {
    return '$percent altında';
  }

  @override
  String get techOverbought => 'aşırı alım';

  @override
  String get techOversold => 'aşırı satım';

  @override
  String get techNeutral => 'nötr';

  @override
  String get techGoldenCross =>
      '50 günlük ortalama 200 günlük ortalamanın üzerinde – klasik okumaya göre yükseliş trendi.';

  @override
  String get techDeathCross =>
      '50 günlük ortalama 200 günlük ortalamanın altında – klasik okumaya göre düşüş trendi.';

  @override
  String get glossSma50 =>
      'Son 50 işlem gününün ortalama kapanış fiyatı. Fiyatın bunun üzerinde olması genellikle kısa vadeli güç, altında olması zayıflık olarak okunur.';

  @override
  String get glossSma200 =>
      'Son 200 işlem gününün ortalama kapanış fiyatı – klasik uzun vadeli trend çizgisi. Birçok yatırımcı bunun üzerindeki fiyatı uzun vadeli yükseliş trendi sayar.';

  @override
  String get glossRsi =>
      'Göreceli güç endeksi: yakın dönemdeki kazançları yakın dönemdeki kayıplarla 0–100 ölçeğinde karşılaştırır. 70\'in üzerinde hisse genellikle aşırı alım bölgesinde (hızlı yükseldi), 30\'un altında aşırı satım bölgesinde sayılır – ancak güçlü bir trend orada uzun süre kalabilir.';

  @override
  String get glossVolatility =>
      'Fiyatın günden güne ne kadar dalgalandığı, yıllık bazda: %20, tipik bir yılda yaklaşık ±%20 aralığında hareket ettiği anlamına gelir. Daha yüksek volatilite, her iki yönde daha büyük hareketler demektir.';

  @override
  String get techNote =>
      'Günlük kapanış fiyatlarından hesaplanmıştır. Teknik sinyaller geçmişi anlatır, geleceği değil.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$count pozisyonun $above tanesi 200 günlük ortalamasının üzerinde';
  }

  @override
  String get watchSignalsTitle => 'Sinyaller';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · aşırı satım';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · aşırı alım';
  }

  @override
  String get signalCrossedAbove => '200 günlük ortalamanın üzerine çıktı';

  @override
  String get signalCrossedBelow => '200 günlük ortalamanın altına indi';

  @override
  String get signalAlertsTitle => 'Teknik sinyal bildirimleri';

  @override
  String get signalAlertsSubtitle =>
      'Günde bir kez, takip ettiğiniz bir hisse aşırı satım veya aşırı alım (RSI) bölgesine girdiğinde ya da fiyatı 200 günlük ortalamayı kestiğinde.';

  @override
  String get signalAlertsNotification => 'Teknik sinyaller';

  @override
  String get glossaryPageTitle => 'Sözlük';

  @override
  String get glossaryPageSubtitle =>
      'Uygulamadaki her rakamın sade açıklaması, P/E\'den RSI\'ya';

  @override
  String get glossarySearchHint => 'Sözlükte ara';

  @override
  String get portfolioCash => 'Nakit';

  @override
  String get portfolioCashTitle => 'Nakit bakiyesi';

  @override
  String get portfolioCashHint =>
      'Aracı kurumunuzdaki yatırılmamış para, para birimine göre. Toplam değere ve dağılıma dahildir; getiriye dahil değildir.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Tutar ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Nakit bakiyesini ayarla';

  @override
  String get portfolioDividendsByMonth => 'Aylara göre';

  @override
  String get dividendsLegendReceived => 'Alınan';

  @override
  String get dividendsLegendExpected => 'Beklenen';

  @override
  String get portfolioDividendsExpected => 'Sıradaki beklenen';

  @override
  String get portfolioDividendsExpectedNote =>
      'Kaydettiğiniz ödemelerin tarih ve tutarlarından tahmin edilmiştir; şirketler bunları değiştirebilir veya ödemeyebilir.';

  @override
  String portfolioDividendAround(String date) {
    return '$date civarı';
  }
}
