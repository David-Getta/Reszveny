// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Azerbaijani (`az`).
class AppLocalizationsAz extends AppLocalizations {
  AppLocalizationsAz([String locale = 'az']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Səhmin şəklini çəkin və onun haqqında hər şeyi öyrənin.';

  @override
  String get homeHint =>
      'Səhm sertifikatı, broker tətbiqinin ekranı, qəzet və ya şirkət loqosu – səhmi müəyyən etməyə imkan verən istənilən şey.';

  @override
  String get takePhoto => 'Şəkil çək';

  @override
  String get chooseFromGallery => 'Qalereyadan seç';

  @override
  String get chooseImage => 'Şəkil seç';

  @override
  String get enterTickerManually => 'Tikeri əl ilə daxil et';

  @override
  String get tickerInputLabel => 'Tiker';

  @override
  String get tickerInputHint => 'məs., AAPL';

  @override
  String get lookUp => 'Axtar';

  @override
  String demoModeBanner(String symbols) {
    return 'Demo rejimi – bazar məlumatları açarı tənzimlənməyib. Nümunə məlumatlar bunlar üçün mövcuddur: $symbols.';
  }

  @override
  String get recognizing => 'Şəkil təhlil edilir…';

  @override
  String get loadingData => 'Məlumatlar yüklənir…';

  @override
  String get noCandidatesTitle => 'Səhm tanınmadı';

  @override
  String get noCandidatesBody =>
      'Bu şəkildə səhmi müəyyən edə bilmədik. Daha aydın şəkil sınayın və ya tikeri əl ilə daxil edin.';

  @override
  String get whatWeSaw => 'Nə gördük';

  @override
  String get chooseCandidateTitle => 'Hansı səhmi nəzərdə tuturdunuz?';

  @override
  String confidencePercent(int percent) {
    return '$percent% əminlik';
  }

  @override
  String get settings => 'Ayarlar';

  @override
  String get language => 'Dil';

  @override
  String get systemLanguage => 'Sistem dili';

  @override
  String get about => 'Haqqında';

  @override
  String get disclaimer =>
      'Bu tətbiq yalnız məlumat xarakterlidir və investisiya məsləhəti deyil. Məlumatlar gecikə və ya qeyri-dəqiq ola bilər.';

  @override
  String dataSource(String source) {
    return 'Məlumat mənbəyi: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Tanıma: $source';
  }

  @override
  String get retry => 'Yenidən cəhd et';

  @override
  String get cancel => 'Ləğv et';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Bağla';

  @override
  String get errorGeneric => 'Nəsə səhv getdi.';

  @override
  String get errorSectionUnavailable => 'Bu bölməni yükləmək mümkün olmadı.';

  @override
  String get notAvailable => 'yoxdur';

  @override
  String get sectionIdentity => 'İdentifikasiya';

  @override
  String get sectionPrice => 'Qiymət';

  @override
  String get sectionValuation => 'Qiymətləndirmə';

  @override
  String get sectionFinancials => 'Maliyyə göstəriciləri';

  @override
  String get sectionDividend => 'Dividend';

  @override
  String get sectionProfile => 'Şirkət profili';

  @override
  String get sectionAnalysts => 'Analitik reytinqləri';

  @override
  String get sectionNews => 'Xəbərlər';

  @override
  String get sectionRecognition => 'Tanıma təfərrüatları';

  @override
  String get labelSymbol => 'Tiker';

  @override
  String get labelExchange => 'Birja';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Valyuta';

  @override
  String get labelCountry => 'Ölkə';

  @override
  String get labelIndustry => 'Sahə';

  @override
  String get labelSector => 'Sektor';

  @override
  String get labelWebsite => 'Veb-sayt';

  @override
  String get labelIpoDate => 'IPO tarixi';

  @override
  String get labelMarketCap => 'Bazar kapitalizasiyası';

  @override
  String get labelSharesOutstanding => 'Dövriyyədəki səhmlər';

  @override
  String get labelEmployees => 'İşçilər';

  @override
  String get labelCeo => 'Baş direktor';

  @override
  String get labelHeadquarters => 'Baş ofis';

  @override
  String get labelDescription => 'Təsvir';

  @override
  String get labelLastPrice => 'Son qiymət';

  @override
  String get labelChange => 'Dəyişmə';

  @override
  String get labelOpen => 'Açılış';

  @override
  String get labelDayHigh => 'Günün maksimumu';

  @override
  String get labelDayLow => 'Günün minimumu';

  @override
  String get labelPreviousClose => 'Əvvəlki bağlanış';

  @override
  String get labelWeek52High => '52 həftəlik maksimum';

  @override
  String get labelWeek52Low => '52 həftəlik minimum';

  @override
  String get labelAverageVolume10d => 'Orta həcm (10 gün)';

  @override
  String updatedAt(String time) {
    return 'Yeniləndi: $time';
  }

  @override
  String get labelPeTrailing => 'P/E (keçmiş dövr)';

  @override
  String get labelPeForward => 'P/E (proqnoz)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / sərbəst pul axını';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Gəlir (TTM)';

  @override
  String get labelNetIncomeTtm => 'Xalis mənfəət (TTM)';

  @override
  String get labelGrossMargin => 'Ümumi marja';

  @override
  String get labelOperatingMargin => 'Əməliyyat marjası';

  @override
  String get labelNetMargin => 'Xalis marja';

  @override
  String get labelRoe => 'Kapitalın rentabelliyi';

  @override
  String get labelRoa => 'Aktivlərin rentabelliyi';

  @override
  String get labelDebtToEquity => 'Borc / kapital';

  @override
  String get labelCurrentRatio => 'Cari likvidlik əmsalı';

  @override
  String get labelRevenueGrowth => 'Gəlir artımı (YoY)';

  @override
  String get labelEpsGrowth => 'EPS artımı (YoY)';

  @override
  String get labelDividendYield => 'Dividend gəlirliliyi';

  @override
  String get labelDividendPerShare => 'Səhm başına dividend';

  @override
  String get labelPayoutRatio => 'Dividend ödəmə əmsalı';

  @override
  String get labelConsensus => 'Konsensus';

  @override
  String get ratingStrongBuy => 'Güclü al';

  @override
  String get ratingBuy => 'Al';

  @override
  String get ratingHold => 'Saxla';

  @override
  String get ratingSell => 'Sat';

  @override
  String get ratingStrongSell => 'Güclü sat';

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
    return 'Dövr: $period';
  }

  @override
  String get noNews => 'Son xəbər yoxdur.';

  @override
  String get openArticle => 'Məqaləni aç';

  @override
  String get openLinkFailed => 'Linki açmaq mümkün olmadı.';

  @override
  String get recognitionSummary => 'Xülasə';

  @override
  String get recognitionEvidence => 'Niyə belə düşünürük';

  @override
  String get recognitionRawText => 'Şəkildən oxunan mətn';

  @override
  String get errMissingAnthropicKey =>
      'Şəkil tanıma tənzimlənməyib (ANTHROPIC_API_KEY yoxdur). Tikeri əl ilə daxil edin.';

  @override
  String get errRecognitionUnreachable =>
      'Tanıma xidmətinə qoşulmaq mümkün olmadı. İnternet bağlantınızı yoxlayın.';

  @override
  String errRecognitionHttp(String status) {
    return 'Tanıma xidməti xəta qaytardı (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Tanıma xidməti bu şəkli emal edə bilmədi.';

  @override
  String get errRecognitionTruncated =>
      'Tanıma cavabı yarımçıq kəsildi. Yenidən cəhd edin.';

  @override
  String get errRecognitionBadResponse =>
      'Tanıma xidmətindən gözlənilməz cavab gəldi.';

  @override
  String get errRecognitionEmpty => 'Tanıma xidməti boş cavab qaytardı.';

  @override
  String get errMissingFinnhubKey =>
      'Bazar məlumatları tənzimlənməyib (FINNHUB_API_KEY yoxdur).';

  @override
  String get errMarketUnreachable =>
      'Bazar məlumatları xidmətinə qoşulmaq mümkün olmadı. İnternet bağlantınızı yoxlayın.';

  @override
  String get errMarketRateLimited =>
      'Bazar məlumatları xidmətinə həddindən çox sorğu göndərildi. Bir dəqiqə gözləyin.';

  @override
  String errMarketHttp(String status) {
    return 'Bazar məlumatları xidməti xəta qaytardı (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Bazar məlumatları xidmətindən gözlənilməz cavab gəldi.';

  @override
  String errNoQuote(String symbol) {
    return '$symbol üçün qiymət məlumatı tapılmadı.';
  }

  @override
  String errNoProfile(String symbol) {
    return '$symbol üçün şirkət profili tapılmadı.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Demo rejimi yalnız bunları dəstəkləyir: $symbols. Canlı məlumatlar üçün FINNHUB_API_KEY əlavə edin.';
  }

  @override
  String errUnknown(String detail) {
    return 'Nəsə səhv getdi: $detail';
  }

  @override
  String get newSearch => 'Yeni axtarış';

  @override
  String get recentSearches => 'Son axtarışlar';

  @override
  String get noRecentSearches => 'Hələ son axtarış yoxdur.';

  @override
  String get clearRecent => 'Son axtarışları təmizlə';

  @override
  String get greeting => 'Hansı səhmə baxaq?';

  @override
  String get searchHint => 'Tiker və ya şirkət adı';

  @override
  String get attachImage => 'Şəkil əlavə et';

  @override
  String get searchResultsTitle => 'Axtarış nəticələri';

  @override
  String errNoResults(String query) {
    return '«$query» üzrə səhm tapılmadı.';
  }

  @override
  String get quickBarHint => 'Tiker və ya şirkət adını yazın…';

  @override
  String get openFullWindow => 'Pəncərəni aç';

  @override
  String hotkeyHint(String shortcut) {
    return 'WhatStock-u çağırmaq üçün istənilən yerdə $shortcut düymələrini basın.';
  }

  @override
  String get trayOpen => 'WhatStock-u aç';

  @override
  String get trayQuickSearch => 'Sürətli axtarış';

  @override
  String get trayQuit => 'Çıxış';

  @override
  String get appearance => 'Görünüş';

  @override
  String get themeSystem => 'Sistem';

  @override
  String get themeDark => 'Tünd';

  @override
  String get themeLight => 'Açıq';

  @override
  String get back => 'Geri';

  @override
  String get aiSectionTitle => 'AI təhlili';

  @override
  String get aiIntro =>
      'AI tərəfindən yazılmış ətraflı icmal: son xəbərlərin xülasəsi, biznes, güclü tərəflər, risklər və gizli amillər, qiymətləndirmə, psixoloji, sosioloji, texniki və makro baxış bucaqlarından ssenarilərlə qiymət proqnozu və nələrə diqqət yetirmək lazım olduğu.';

  @override
  String get aiGenerate => 'Təhlil yarat';

  @override
  String get aiRegenerate => 'Yenidən yarat';

  @override
  String get aiGenerating => 'Təhlil hazırlanır… bu bir-iki dəqiqə çəkə bilər.';

  @override
  String get aiSources => 'Mənbələr';

  @override
  String aiGeneratedAt(String time) {
    return 'Yaradıldı: $time';
  }

  @override
  String get aiDisclaimer =>
      'Açıq məlumatlar və son xəbərlər əsasında AI tərəfindən yaradılmış təhlil. Səhvlər ehtiva edə və ya köhnəlmiş ola bilər və investisiya məsləhəti deyil.';

  @override
  String get errAiNotConfigured =>
      'AI təhlili tənzimlənməyib (ANTHROPIC_API_KEY yoxdur).';

  @override
  String get errAiUnreachable =>
      'AI xidmətinə qoşulmaq mümkün olmadı. İnternet bağlantınızı yoxlayın.';

  @override
  String errAiHttp(String status) {
    return 'AI xidməti xəta qaytardı (HTTP $status).';
  }

  @override
  String get errAiRefused => 'AI xidməti bu səhmi təhlil etməkdən imtina etdi.';

  @override
  String get errAiBadResponse => 'AI xidmətindən gözlənilməz cavab gəldi.';

  @override
  String get sectionChart => 'Qiymət qrafiki';

  @override
  String get rangeOneWeek => '1H';

  @override
  String get rangeOneMonth => '1A';

  @override
  String get rangeThreeMonths => '3A';

  @override
  String get rangeOneYear => '1İ';

  @override
  String get rangeFiveYears => '5İ';

  @override
  String get chartUnavailable =>
      'Cari məlumat mənbəyində qiymət tarixçəsi mövcud deyil.';

  @override
  String get sectionStatements => 'Maliyyə hesabatları (illik)';

  @override
  String get labelFiscalYear => 'Maliyyə ili';

  @override
  String get labelRevenue => 'Gəlir';

  @override
  String get labelNetIncome => 'Xalis mənfəət';

  @override
  String get labelTotalAssets => 'Cəmi aktivlər';

  @override
  String get labelTotalLiabilities => 'Cəmi öhdəliklər';

  @override
  String get labelEquity => 'Səhmdar kapitalı';

  @override
  String get labelOperatingCashFlow => 'Əməliyyat pul axını';

  @override
  String get statementsUnavailable =>
      'Bu səhm üçün dərc edilmiş maliyyə hesabatları mövcud deyil.';

  @override
  String get launchAtLogin => 'Sistemə girişdə başlat';

  @override
  String get hotkeyLabel => 'Qlobal qısayol';

  @override
  String get hotkeyRecordHint =>
      'Bura klikləyin, sonra yeni düymə kombinasiyasını basın';

  @override
  String get hotkeyReset => 'Standarta qaytar';

  @override
  String get pasteImage => 'Mübadilə buferindən şəkil yapışdır';

  @override
  String get errClipboardNoImage => 'Mübadilə buferində şəkil yoxdur.';

  @override
  String get favorites => 'Seçilmişlər';

  @override
  String get addToFavorites => 'Seçilmişlərə əlavə et';

  @override
  String get removeFromFavorites => 'Seçilmişlərdən sil';

  @override
  String get noFavorites =>
      'Hələ seçilmiş yoxdur. Əlavə etmək üçün səhmin ulduzuna toxunun.';

  @override
  String get displayCurrency => 'Göstərilən valyuta';

  @override
  String get displayCurrencyNone => 'Yalnız səhmin öz valyutası';

  @override
  String labelConverted(String currency) {
    return '≈ $currency ilə';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Məzənnə: 1 $from = $rate $to (AMB, $date)';
  }

  @override
  String get updates => 'Yeniləmələr';

  @override
  String currentVersion(String version) {
    return 'Versiya $version';
  }

  @override
  String get autoUpdate => 'Yeniləmələri avtomatik quraşdır';

  @override
  String get checkForUpdates => 'Yeniləmələri yoxla';

  @override
  String get updateChecking => 'Yeniləmələr yoxlanılır…';

  @override
  String get updateUpToDate => 'Ən son versiyadan istifadə edirsiniz.';

  @override
  String updateAvailable(String version) {
    return '$version versiyası mövcuddur.';
  }

  @override
  String get updateDownloading => 'Yeniləmə arxa planda endirilir…';

  @override
  String get updateDownloaded =>
      'Yeniləmə hazırdır. Quraşdırmaq üçün tətbiqi yenidən başladın.';

  @override
  String get updateNow => 'Yenilə';

  @override
  String get restartNow => 'Yenidən başlat';

  @override
  String get updatesViaStore =>
      'Yeniləmələr tətbiq mağazası vasitəsilə avtomatik gəlir.';

  @override
  String get updateCheckFailed => 'Yeniləmələri yoxlamaq mümkün olmadı.';

  @override
  String get subscription => 'Abunəlik';

  @override
  String get planTrial => 'Sınaq';

  @override
  String get planNormal => 'Adi';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Aktiv plan yoxdur';

  @override
  String planAnalysesPerMonth(int count) {
    return 'Ayda $count təhlil';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$count təhlil ilə $days günlük pulsuz sınaq';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Sınaq müddətinin bitməsinə $days gün qalıb',
      one: 'Sınaq müddətinin bitməsinə 1 gün qalıb',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Pulsuz sınaq müddətiniz bitdi. Təhlilə davam etmək üçün plan seçin.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Bu dövrdə $total təhlildən $remaining qalıb';
  }

  @override
  String extraCredits(int count) {
    return '$count əlavə təhlil';
  }

  @override
  String renewsOn(String date) {
    return '$date tarixində yenilənir';
  }

  @override
  String get choosePlan => 'Plan seçin';

  @override
  String get currentPlan => 'Cari plan';

  @override
  String get subscribe => 'Abunə ol';

  @override
  String get perMonth => '/ ay';

  @override
  String get extraPacksTitle => 'Daha çox lazımdır? Əlavə təhlil alın';

  @override
  String get extraPacksHint =>
      'Əlavə təhlillərin müddəti heç vaxt bitmir və aylıq limitinizdən sonra istifadə olunur.';

  @override
  String get buy => 'Al';

  @override
  String get restorePurchases => 'Alışları bərpa et';

  @override
  String get manageSubscription => 'Abunəliyi idarə et';

  @override
  String get purchaseSuccess => 'Təşəkkürlər! Alışınız aktivdir.';

  @override
  String get purchasePending => 'Alış gözləmədədir…';

  @override
  String get purchaseFailed => 'Alışı tamamlamaq mümkün olmadı.';

  @override
  String get purchaseCanceled => 'Alış ləğv edildi.';

  @override
  String get billingUnavailable =>
      'Bu platformada alışlar hələ mövcud deyil. Telefonunuzda və ya Mac-də abunə olun; planınız bütün cihazlarda işləyəcək.';

  @override
  String get errQuotaExceeded =>
      'Bu dövr üçün təhliliniz qalmayıb. Planınızı yüksəldin və ya əlavə təhlil alın.';

  @override
  String get errTrialExpired =>
      'Pulsuz sınaq müddətiniz bitdi. Davam etmək üçün plan seçin.';

  @override
  String get errNoPlan => 'AI təhlili üçün aktiv plan lazımdır.';

  @override
  String get viewPlans => 'Planlara bax';

  @override
  String get usageTitle => 'İstifadə';

  @override
  String get demoPurchaseNote =>
      'Demo ödəniş: bu platformada alışlar simulyasiya edilir.';

  @override
  String get mostPopular => 'Ən populyar';

  @override
  String get bestValue => 'Ən sərfəli';

  @override
  String get planFeaturesCommon =>
      'Şəkildən tanıma, canlı məlumatlar, qrafiklər, seçilmişlər və bütün 120 dil hər plana daxildir. Limit AI təhlillərinə aiddir.';

  @override
  String get searchLanguages => 'Dil axtar…';

  @override
  String get noLanguageMatch => 'Uyğun dil tapılmadı.';

  @override
  String get aiSettings => 'AI təhlili';

  @override
  String get aiLength => 'Həcm';

  @override
  String get aiDepthBrief => 'Qısa';

  @override
  String get aiDepthStandard => 'Standart';

  @override
  String get aiDepthDeep => 'Ətraflı';

  @override
  String get aiDepthBriefDesc => 'Ən vacibi, tez.';

  @override
  String get aiDepthStandardDesc => 'Bütün bölmələrlə tam hesabat.';

  @override
  String get aiDepthDeepDesc =>
      'Daha çox veb axtarışı, rəqiblərlə müqayisə və daha dərin təfərrüat.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Təxminən $min–$max söz';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count təhlil sərf edir',
      one: '1 təhlil sərf edir',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Oxucu səviyyəsi';

  @override
  String get aiReaderBeginner => 'Başlanğıc';

  @override
  String get aiReaderExperienced => 'Təcrübəli';

  @override
  String get aiReaderBeginnerDesc =>
      'Sadə dil; hər bir xüsusi termin izah olunur.';

  @override
  String get aiReaderExperiencedDesc =>
      'Standart maliyyə terminologiyası ilə daha sıx mətn.';

  @override
  String get aiCounterArgument => 'Ən güclü əks arqument';

  @override
  String get aiCounterArgumentDesc =>
      'Xülasə həmişə öz nəticəsinə qarşı ən güclü arqumentlə bitir.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Planınızla hər təhlil üçün $count veb axtarışa qədər',
      one: 'Planınızla hər təhlil üçün 1 veb axtarışa qədər',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Plana görə standart həcm: Adi $normal, Pro $pro, Max $max, Ultra $ultra. Qısa həcm 2 az, Ətraflı həcm 2 çox istifadə edir.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count veb axtarışa qədər',
      one: '1 veb axtarışa qədər',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Hər təhlil üçün $count veb axtarış',
      one: 'Hər təhlil üçün 1 veb axtarış',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Bu həcm üçün $needed təhlil lazımdır, lakin yalnız $left qalıb. Ayarlarda daha qısa həcm seçin və ya əlavə təhlil əldə edin.';
  }

  @override
  String get outlookMarketMood => 'Bazar əhval-ruhiyyəsi';

  @override
  String get moodVeryPessimistic => 'Çox pessimist';

  @override
  String get moodPessimistic => 'Pessimist';

  @override
  String get moodNeutral => 'Neytral';

  @override
  String get moodOptimistic => 'Optimist';

  @override
  String get moodVeryOptimistic => 'Çox optimist';

  @override
  String get scenarioBull => 'Optimist ssenari';

  @override
  String get scenarioBase => 'Əsas ssenari';

  @override
  String get scenarioBear => 'Pessimist ssenari';

  @override
  String outlookCurrentPrice(String price) {
    return 'Cari qiymət: $price';
  }

  @override
  String get outlookKeyLevels => 'Əsas səviyyələr';

  @override
  String get keyLevelSupport => 'Dəstək';

  @override
  String get keyLevelResistance => 'Müqavimət';

  @override
  String get keyLevelAnchor => 'Lövbər səviyyəsi';

  @override
  String get upcomingEvents => 'Qarşıdakı hadisələr';

  @override
  String get outlookChartNote =>
      'Təxmini diapazonlar; ehtimallar proqnoz deyil, kobud qiymətləndirmələrdir.';

  @override
  String get accountTitle => 'Hesab';

  @override
  String get signIn => 'Daxil ol';

  @override
  String get signOut => 'Çıxış et';

  @override
  String get notSignedIn => 'Daxil olunmayıb';

  @override
  String get accountBenefit =>
      'Abunəliyinizin bütün cihazlarınızda işləməsi üçün daxil olun.';

  @override
  String get accountSyncedNote =>
      'Abunəliyiniz və qalan təhlilləriniz bütün cihazlarda eynidir.';

  @override
  String get signInTitle => 'WhatStock-a daxil olun';

  @override
  String get emailLabel => 'E-poçt ünvanı';

  @override
  String get continueWithEmail => 'E-poçt ilə davam et';

  @override
  String codeSentTo(String email) {
    return '$email ünvanına 6 rəqəmli kod göndərdik. Kod 10 dəqiqə etibarlıdır.';
  }

  @override
  String get codeLabel => 'Giriş kodu';

  @override
  String get resendCode => 'Yeni kod göndər';

  @override
  String get useDifferentEmail => 'Başqa e-poçt istifadə et';

  @override
  String get errInvalidCode => 'Kod yanlışdır və ya müddəti bitib.';

  @override
  String get errInvalidEmail => 'Düzgün e-poçt ünvanı daxil edin.';

  @override
  String get errSignInFailed =>
      'Daxil olmaq alınmadı. Bağlantınızı yoxlayın və yenidən cəhd edin.';

  @override
  String get checkoutWaiting =>
      'Ödənişi brauzerinizdə tamamlayın. Ödəniş bitəndə tətbiq avtomatik yenilənəcək.';

  @override
  String get paymentViaStripe =>
      'Stripe vasitəsilə brauzerinizdə təhlükəsiz ödəniş. İstənilən vaxt ləğv edə bilərsiniz.';

  @override
  String get paymentViaStore =>
      'Ödəniş App Store və ya Google Play hesabınız vasitəsilə aparılır. İstənilən vaxt mağaza ayarlarında ləğv edə bilərsiniz.';

  @override
  String get keySpace => 'Boşluq';

  @override
  String get doubleOptionTitle => 'Option düyməsini iki dəfə basmaq';

  @override
  String get doubleOptionSubtitle =>
      'Option düyməsini cəld iki dəfə basmaq da WhatStock-u çağırır.';

  @override
  String get doubleOptionPermission =>
      'Bunun digər tətbiqlərdə də işləməsi üçün Sistem ayarları → Məxfilik və təhlükəsizlik → Daxiletmə monitorinqi bölməsində WhatStock-a icazə verin, sonra tətbiqi yenidən açın.';

  @override
  String get openSystemSettings => 'Sistem ayarlarını aç';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'WhatStock-u çağırmaq üçün istənilən yerdə $shortcut düymələrini basın və ya Option düyməsini iki dəfə basın.';
  }

  @override
  String get scenarioMostLikely => 'Ən ehtimallı';

  @override
  String get longTermToday => 'Bu gün';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years il',
      one: '1 il',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return 'ildə $range';
  }

  @override
  String longTermLikely(String price) {
    return 'ən ehtimallı $price';
  }

  @override
  String get confidenceLow => 'Aşağı əminlik';

  @override
  String get confidenceMedium => 'Orta əminlik';

  @override
  String get confidenceHigh => 'Yüksək əminlik';

  @override
  String get longTermNote =>
      'Uzunmüddətli diapazonlar göstərilən fərziyyələrə əsaslanır və zamanla genişlənir. Qiymətlərə dividendlər daxil deyil. Bunlar proqnoz deyil, kobud qiymətləndirmələrdir.';

  @override
  String get portfolio => 'Portfel';

  @override
  String get portfolioEmpty =>
      'Hələ burada heç nə yoxdur. Sahib olduğunuz səhmləri izləmək üçün bir səhm açın və «Portfelə əlavə et» düyməsinə toxunun.';

  @override
  String get portfolioLocalNote =>
      'Yalnız bu cihazda saxlanılır. Cəmlər AMB-nin istinad məzənnələri ilə çevrilir; qiymətlər gecikə bilər.';

  @override
  String get addToPortfolio => 'Portfelə əlavə et';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol əlavə et';
  }

  @override
  String get portfolioQuantity => 'Səhm sayı';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Səhm başına qiymət ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Alış tarixi';

  @override
  String get portfolioAdd => 'Əlavə et';

  @override
  String get portfolioInvalidNumber => 'Sıfırdan böyük ədəd daxil edin.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol portfelinizə əlavə edildi.';
  }

  @override
  String get portfolioTotalValue => 'Ümumi dəyər';

  @override
  String get portfolioToday => 'Bu gün';

  @override
  String get portfolioGainLoss => 'Mənfəət/zərər';

  @override
  String get portfolioInvested => 'Yatırılan';

  @override
  String get portfolioAllocation => 'Bölgü';

  @override
  String get portfolioPositions => 'Mövqelər';

  @override
  String portfolioAvgCost(String price) {
    return 'orta qiymət $price';
  }

  @override
  String get portfolioYourPosition => 'Sizin mövqeyiniz';

  @override
  String get portfolioPurchases => 'Alışlar';

  @override
  String get portfolioRemove => 'Sil';

  @override
  String get portfolioExcluded =>
      'Qiyməti və ya məzənnəsi olmayan mövqelər cəmlərə daxil edilmir.';

  @override
  String get priceAlerts => 'Qiymət bildirişləri';

  @override
  String get setPriceAlert => 'Qiymət bildirişi qur';

  @override
  String alertDialogTitle(String symbol) {
    return 'Qiymət bildirişi · $symbol';
  }

  @override
  String get alertKindAbove => 'Yuxarı qalxarsa';

  @override
  String get alertKindBelow => 'Aşağı düşərsə';

  @override
  String get alertKindMove => 'Bir gündə kəskin dəyişərsə';

  @override
  String alertTargetPrice(String currency) {
    return 'Qiymət ($currency)';
  }

  @override
  String get alertMovePercent => 'Günlük dəyişmə (%)';

  @override
  String get alertAlreadyMet => 'Qiymət artıq bu səviyyəni keçib.';

  @override
  String get alertSave => 'Bildiriş qur';

  @override
  String alertCreated(String symbol) {
    return '$symbol üçün bildiriş quruldu.';
  }

  @override
  String get alertsEmpty =>
      'Hələ qiymət bildirişi yoxdur. Bir səhm açın və bildiriş qurmaq üçün zəngə toxunun.';

  @override
  String get alertsNote =>
      'WhatStock işlədiyi müddətdə bildirişlər hər 5 dəqiqədən bir yoxlanılır. Kompüterdə tətbiq menyu sətrində və ya sistem trayında işləməyə davam edir; telefonda isə bildirişlər hələlik yalnız tətbiq açıq olanda gəlir.';

  @override
  String alertDescAbove(String price) {
    return '$price həddindən yuxarı';
  }

  @override
  String alertDescBelow(String price) {
    return '$price həddindən aşağı';
  }

  @override
  String alertDescMove(String percent) {
    return 'Günlük dəyişmə ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return '$date tarixində $price qiymətində işə düşdü';
  }

  @override
  String get alertRearm => 'Yenidən aktivləşdir';

  @override
  String get alertDelete => 'Sil';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol $price həddindən yuxarı qalxdı';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol $price həddindən aşağı düşdü';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol bu gün $percent dəyişdi';
  }

  @override
  String alertHitBody(String price) {
    return 'Cari qiymət: $price';
  }

  @override
  String get alertOpen => 'Aç';

  @override
  String get keepInTrayTitle => 'Pəncərə bağlananda da işləsin';

  @override
  String get keepInTraySubtitle =>
      'WhatStock menyu sətrində və ya sistem trayında qalır, beləliklə qısayol və qiymət bildirişləri işləməyə davam edir.';

  @override
  String get termsOfUse => 'İstifadə şərtləri';

  @override
  String get privacyPolicy => 'Məxfilik siyasəti';

  @override
  String get subscriptionLegal =>
      'Abunəlik siz ləğv edənə qədər hər ay avtomatik yenilənir. Abunə olmaqla İstifadə şərtlərini və Məxfilik siyasətini qəbul edirsiniz.';

  @override
  String get deleteAccount => 'Hesabı sil';

  @override
  String get deleteAccountTitle => 'Hesabınız silinsin?';

  @override
  String get deleteAccountBody =>
      'Hesabınız və serverimizdə saxlanılan hər şey (e-poçt, limit, istifadə) həmişəlik silinəcək, istifadə olunmamış təhlillər isə itəcək. Brauzerdə ödənilmiş abunəlik dərhal ləğv edilir; App Store və ya Google Play abunəliyini mağaza ayarlarında ləğv etmək lazımdır.';

  @override
  String get deleteLocalData =>
      'Bu cihazdakı məlumatları da sil (portfel, bildirişlər, seçilmişlər, tarixçə, saxlanılan təhlillər)';

  @override
  String get deleteAccountConfirm => 'Həmişəlik sil';

  @override
  String get accountDeleted => 'Hesabınız silindi.';

  @override
  String get errDeleteAccount =>
      'Hesabı silmək mümkün olmadı. Bağlantınızı yoxlayın və yenidən cəhd edin.';

  @override
  String get aiTrialBriefNote =>
      'Sınaq təhlilləri qısadır və daha sürətli AI modeli ilə hazırlanır. Planla ən güclü AI modelimizi, daha çox veb axtarışını, həmçinin Standart və Ətraflı həcmləri əldə edirsiniz.';

  @override
  String get billingMonthly => 'Aylıq';

  @override
  String get billingYearly => 'İllik';

  @override
  String get yearlyDiscount => '2 ay pulsuz';

  @override
  String get perYear => '/ il';

  @override
  String pricePerMonthApprox(String price) {
    return 'Ayda ≈ $price';
  }

  @override
  String get subscriptionLegalYearly =>
      'İllik abunəlik siz ləğv edənə qədər hər il avtomatik yenilənir. Abunə olmaqla İstifadə şərtlərini və Məxfilik siyasətini qəbul edirsiniz.';

  @override
  String get myAnalyses => 'Təhlillərim';

  @override
  String get navAlerts => 'Bildirişlər';

  @override
  String get inviteTitle => 'Qapalı önizləmə';

  @override
  String get inviteBody =>
      'WhatStock hələlik yalnız dəvətlə əlçatandır. Aldığınız dəvət kodunu daxil edin.';

  @override
  String get inviteCodeLabel => 'Dəvət kodu';

  @override
  String get inviteContinue => 'Davam et';

  @override
  String get inviteInvalid => 'Bu dəvət kodu etibarlı deyil.';

  @override
  String get inviteExpired =>
      'Bu dəvətin müddəti bitib. Sizi dəvət edən şəxsdən yeni kod istəyin.';

  @override
  String get inviteDeviceLimit =>
      'Bu dəvət kodu artıq maksimum sayda cihazda istifadə olunur.';

  @override
  String get previewConfidential => 'Məxfi önizləmə';

  @override
  String get errPreviewDailyLimit =>
      'Bu önizləmənin bugünkü təhlil limiti dolub. Sabah yenidən cəhd edin.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count saat əvvəl',
      one: '1 saat əvvəl',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gün əvvəl',
      one: '1 gün əvvəl',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Bu təhlil yenilənsin?';

  @override
  String staleBody(String age) {
    return 'O, $age yaradılıb. O vaxtdan bəri qiymətlər, xəbərlər və nəticələr dəyişmiş ola bilər.';
  }

  @override
  String get staleKeep => 'Əvvəlkini göstər';

  @override
  String get staleRefresh => 'Yenisini yarat';

  @override
  String seeAll(int count) {
    return 'Hamısına bax ($count)';
  }

  @override
  String get searchAnalyses => 'Təhlillərində axtar';

  @override
  String get deleteAnalysis => 'Sil';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol təhlili silindi';
  }

  @override
  String get keyLevelAlertHint =>
      'Qiymət səviyyəyə çatanda bildiriş almaq üçün səviyyəyə toxunun.';

  @override
  String get shareAnalysisTitle => 'Təhlili paylaş';

  @override
  String get shareAsImage => 'Şəkil kimi paylaş';

  @override
  String get shareAsText => 'Mətn kimi paylaş';

  @override
  String get shareCardFooter => 'WhatStock ilə hazırlanıb';

  @override
  String get shareCardDisclaimer => 'AI təhlili · investisiya məsləhəti deyil';

  @override
  String get referralTitle => 'Dostları dəvət edin';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count əlavə təhlil',
      one: '1 əlavə təhlil',
    );
    return 'Kodunuzu paylaşın. Dostunuz dərhal $_temp0 alır, siz isə onun ilk təhlilindən sonra eyni qədər alırsınız.';
  }

  @override
  String get referralYourCode => 'Kodunuz';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Dəvət edilib: $invited · Mükafatlandırılıb: $rewarded';
  }

  @override
  String get referralHaveCode => 'Dostunuzdan kodunuz var?';

  @override
  String get referralRedeem => 'Aktivləşdir';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count əlavə təhlil əlavə olundu. Xoş gəlmisiniz!',
      one: '1 əlavə təhlil əlavə olundu. Xoş gəlmisiniz!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Belə kod yoxdur. Yoxlayın və yenidən cəhd edin.';

  @override
  String get referralErrOwn => 'Öz kodunuzu aktivləşdirə bilməzsiniz.';

  @override
  String get referralErrAlready =>
      'Siz artıq bir dostunuzun kodunu aktivləşdirmisiniz.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count əlavə təhlil',
      one: '1 əlavə təhlil',
    );
    return 'Səhmləri WhatStock ilə təhlil edirəm: səhmin şəklini çəkin, AI onu izah etsin. Mənim $code kodumla $_temp0 əldə edəcəksiniz.';
  }

  @override
  String get referralCopied => 'Kod kopyalandı';

  @override
  String get onboardTitle1 => 'Səhmin şəklini çəkin';

  @override
  String get onboardBody1 =>
      'Broker tətbiqinin ekranı, qəzet və ya şirkət loqosu kifayətdir: WhatStock səhmi tanıyır və onun qiymətini, qrafikini və əsas göstəricilərini göstərir.';

  @override
  String get onboardTitle2 => 'Bir neçə dəqiqəyə anlayın';

  @override
  String get onboardBody2 =>
      'AI təhlili səhmi nəyin hərəkətə gətirdiyini, riskləri, dəyərləndirməni və qiymətin hara gedə biləcəyinə dair üç ssenarini izah edir – mənbələrlə və sizin dilinizdə.';

  @override
  String get onboardTitle3 => 'Həmişə xəbərdar olun';

  @override
  String get onboardBody3 =>
      'Seçilmişlər, portfeliniz və qiymət bildirişləri sizi xəbərdar edir. Təhlilləriniz cihazınızda qalır və istənilən vaxt yenidən açıla bilər.';

  @override
  String get onboardNext => 'Növbəti';

  @override
  String get onboardStart => 'Başlayaq';

  @override
  String get onboardSkip => 'Keç';

  @override
  String changesTitle(String date) {
    return 'Əvvəlki təhlildən bəri ($date)';
  }

  @override
  String get changesPrice => 'Qiymət';

  @override
  String get changesNoMajor => 'Proqnoz əhəmiyyətli dərəcədə dəyişməyib.';

  @override
  String get changesPreviousSummary => 'Əvvəlki xülasə';

  @override
  String get telemetryTitle => 'WhatStock-u təkmilləşdirməyə kömək edin';

  @override
  String get telemetryBody =>
      'Anonim istifadə statistikası və çökmə hesabatlarını paylaşın: hansı funksiyaların istifadə olunduğu və nəyin səhv getdiyi. Səhmləriniz, təhlilləriniz və ya şəxsi məlumatlarınız heç vaxt paylaşılmır. Bunu istənilən vaxt Ayarlarda dəyişə bilərsiniz.';

  @override
  String get telemetryAllow => 'İcazə ver';

  @override
  String get telemetryDecline => 'Xeyr, təşəkkürlər';

  @override
  String get telemetrySetting => 'Anonim statistika və çökmə hesabatları';

  @override
  String get telemetrySettingHint =>
      'Funksiyaların nə qədər tez-tez istifadə olunduğu və xəta hesabatları – şəxsi məlumatlar, axtarışlarınızın və təhlillərinizin məzmunu olmadan.';

  @override
  String get askButton => 'Bu təhlil haqqında soruşun';

  @override
  String askTitle(String symbol) {
    return '$symbol haqqında suallar';
  }

  @override
  String get askIntro =>
      'Təhlil haqqında istənilən sualı verin: risk nə deməkdir, proqnozu nə dəyişə bilər, rəqəm necə hesablanıb. Cavablar bu təhlilə əsaslanır və investisiya məsləhəti deyil.';

  @override
  String get askHint => 'Sual verin…';

  @override
  String get askSend => 'Göndər';

  @override
  String get askThinking => 'Düşünür…';

  @override
  String get askSuggest1 => 'Ən böyük risk nədir?';

  @override
  String get askSuggest2 => 'Proqnozu nə dəyişə bilər?';

  @override
  String get askSuggest3 => 'Sadə dillə izah et';

  @override
  String get askMaxReached =>
      'Bu, həmin təhlil üçün son sual idi. Daha çox soruşmaq üçün yeni təhlil yaradın.';

  @override
  String get errAskLimit =>
      'Bugünkü sual limitinə çatdınız. Lütfən, sabah yenidən cəhd edin.';

  @override
  String get eventTomorrow => 'Sabah';

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
  String get eventEarnings => 'Rüblük nəticələr';

  @override
  String get eventBeforeOpen => 'bazar açılmazdan əvvəl';

  @override
  String get eventAfterClose => 'bazar bağlandıqdan sonra';

  @override
  String eventEpsEstimate(String value) {
    return 'Gözlənilən EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Təhlilinizdən';

  @override
  String get eventDividend => 'Dividend gözlənilir';

  @override
  String get eventDividendEstimate =>
      'Qeyd etdiyiniz ödənişlərə əsasən təxmin edilib';

  @override
  String get eventsHint =>
      'Seçilmişlərinizin və portfelinizdəki səhmlərin növbəti 90 gün üçün hesabat tarixləri və təhlillərinizin qeyd etdiyi tarixli hadisələr.';

  @override
  String get eventsEmpty =>
      'Növbəti 90 gündə tarixli hadisə yoxdur. Hesabat tarixlərini burada görmək üçün seçilmişlərə və ya portfelə səhm əlavə edin.';

  @override
  String get compareTitle => 'Müqayisə';

  @override
  String get compareAdd => 'Səhm əlavə et';

  @override
  String get compareRemove => 'Sil';

  @override
  String get compareTickerHint => 'Tiker, məs. MSFT';

  @override
  String get compareHint =>
      'Əsas göstəricilər yan-yana; hər sətirdə ən yaxşı dəyər vurğulanır. Məbləğlər hər səhmin öz valyutasındadır.';

  @override
  String get compareNoAnalysis => 'Hələ təhlil yoxdur';

  @override
  String get portfolioDividends => 'İllik dividendlər';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent gəlirlilik';
  }

  @override
  String get portfolioDividendNote =>
      'Gözlənilən illik dividendlər son 12 ayda ödənilmiş dividendlərə əsaslanır; gələcək ödənişlərə zəmanət verilmir.';

  @override
  String positionDividend(String amount) {
    return 'Dividend: ildə $amount';
  }

  @override
  String get chartAvgCost => 'Orta qiymətiniz';

  @override
  String get chartAlertLevel => 'Bildiriş';

  @override
  String get marketsToday => 'Bu gün bazarlar';

  @override
  String get notesTitle => 'Qeydlərim';

  @override
  String get notesHint =>
      'Niyə aldınız, nəyi izləyirsiniz, nə sizi satmağa vadar edərdi?';

  @override
  String get notesInfo =>
      'Yalnız bu cihazda saxlanılır. AI təhlili qeydlərinizi nəzərə alır.';

  @override
  String notesSaved(String date) {
    return 'Yadda saxlanıldı: $date';
  }

  @override
  String get peersTitle => 'Oxşar şirkətlər';

  @override
  String get portfolioExport => 'CSV kimi ixrac et';

  @override
  String get portfolioImport => 'CSV-dən idxal et';

  @override
  String get portfolioImportHint =>
      'Hər sətirdə bir alış yapışdırın: tiker, miqdar, qiymət, valyuta, tarix (İİİİ-AA-GG). Sütunlar vergül, nöqtəli vergül və ya tabla ayrıla bilər; başlıq sətri məcburi deyil.';

  @override
  String get portfolioImportButton => 'İdxal et';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count alış əlavə olundu',
      one: '1 alış əlavə olundu',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sətir ötürüldü',
      one: '1 sətir ötürüldü',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Portfel, seçilmişlər, qiymət bildirişləri və qeydlər bütün cihazlarınızda sinxronlaşdırılır.';

  @override
  String syncLast(String time) {
    return 'Son sinxronizasiya: $time';
  }

  @override
  String get syncNow => 'İndi sinxronlaşdır';

  @override
  String get syncFailed =>
      'Sinxronizasiya alınmadı. Avtomatik olaraq yenidən cəhd ediləcək.';

  @override
  String get alertEmailTitle => 'Bildiriş işə düşəndə e-poçt';

  @override
  String get alertEmailOn =>
      'Bildirişlərinizi bir neçə dəqiqədən bir yoxlayırıq və tətbiq bağlı olsa belə, sizə e-poçt göndəririk.';

  @override
  String get alertEmailSignIn =>
      'Tətbiq bağlı olsa belə, bildirişləri e-poçtla almaq üçün Ayarlarda e-poçtunuzla daxil olun.';

  @override
  String get portfolioHistory => 'Dəyərin dinamikası';

  @override
  String get portfolioReviewTitle => 'AI portfel təhlili';

  @override
  String get portfolioReviewIntro =>
      'AI bütün portfelinizə baxır: konsentrasiya, sektor və valyuta asılılığı, səhmlərinizin ortaq riskləri və dividendlər. 1 təhlil sərf edir.';

  @override
  String get portfolioReviewButton => 'Portfelimi təhlil et';

  @override
  String get portfolioReviewAgain => 'Yenidən təhlil et';

  @override
  String get portfolioReviewWorking => 'Portfeliniz təhlil edilir…';

  @override
  String get digestTitle => 'E-poçtla həftəlik xülasə';

  @override
  String get digestHint =>
      'Hər bazar ertəsi: seçilmişləriniz və portfeliniz keçən həftə necə dəyişdi və onların qarşıdakı hesabat tarixləri.';

  @override
  String get benchmarkTitle => 'S&P 500 ilə müqayisə';

  @override
  String get benchmarkYours => 'Alışlarınız';

  @override
  String get benchmarkIndex => 'Eyni məbləğ S&P 500-də';

  @override
  String benchmarkAhead(String points) {
    return 'İndeksdən $points faiz bəndi yaxşı';
  }

  @override
  String benchmarkBehind(String points) {
    return 'İndeksdən $points faiz bəndi geri';
  }

  @override
  String get benchmarkHint =>
      'Sanki hər alışınız eyni gün S&P 500 indeks fonduna yatırılıb. Dividendlər daxil deyil; keçmiş gəlirlər gələcək gəlirləri proqnozlaşdırmır.';

  @override
  String get portfolioSell => 'Sat';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbol sat';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Səhm başına satış qiyməti ($currency)';
  }

  @override
  String get portfolioSellDate => 'Satış tarixi';

  @override
  String get portfolioSellAll => 'Hamısı';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Sizdə $quantity var';
  }

  @override
  String get portfolioSold => 'Satıldı';

  @override
  String get portfolioRealized => 'Reallaşmış';

  @override
  String get portfolioClosed => 'Bağlı mövqelər';

  @override
  String get portfolioClosedNote => 'Bütün səhmlər satılıb';

  @override
  String get portfolioTransactions => 'Əməliyyatlar';

  @override
  String get portfolioRealizedByYear => 'İllər üzrə reallaşmış mənfəət';

  @override
  String get portfolioRealizedHint =>
      'Satışlar əvvəlcə ən köhnə alışlarınızla uyğunlaşdırılır (FIFO) və bugünkü məzənnə ilə çevrilir. Vergi bəyannaməsi üçün brokerinizin hesabatından istifadə edin.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Bu təhlildən sonra yeni rüblük hesabat dərc olunub ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Yeni hesabat';

  @override
  String get portfolioImportBrokers =>
      'Revolut, Trading 212 və Interactive Brokers ixracları da satışlarla birlikdə tanınır; dividendlər və depozitlər ötürülür.';

  @override
  String get portfolioImportFile => 'Fayl seçin';

  @override
  String offlineBanner(String time) {
    return 'Bağlantı yoxdur – son saxlanılan məlumatlar göstərilir ($time).';
  }

  @override
  String get glossMarketCap =>
      'Bütün şirkətin birjada nə qədər dəyərli olduğu: səhm qiyməti × səhmlərin sayı.';

  @override
  String get glossSharesOutstanding =>
      'Şirkətin neçə səhm buraxdığı. Artarsa, hər səhmə daha kiçik pay düşür; geri alışlar onu azaldır.';

  @override
  String get glossPeTrailing =>
      'Qiymət ÷ son 12 ayın bir səhmə düşən mənfəəti: indiki mənfəətin neçə illiyini ödədiyinizi göstərir. Aşağı olan daha ucuzdur, amma sürətlə böyüyən şirkətlərin P/E-si adətən yüksəkdir.';

  @override
  String get glossPeForward =>
      'P/E kimidir, amma analitiklərin növbəti 12 ay üçün gözlədiyi mənfəətlə. Keçmiş dövr P/E-dən aşağıdırsa, mənfəətin artacağı gözlənilir.';

  @override
  String get glossPb =>
      'Qiymət ÷ bir səhmə düşən balans dəyəri (aktivlər çıxılsın borclar). Təxminən 1 o deməkdir ki, bazar şirkəti kağız üzərində sahib olduğu qədər qiymətləndirir.';

  @override
  String get glossPs =>
      'Bazar dəyəri ÷ illik gəlir. Hələ az və ya heç mənfəəti olmayan şirkətlər üçün faydalıdır; eyni sənaye daxilində müqayisə edin.';

  @override
  String get glossEvToFcf =>
      'Borc daxil şirkət dəyəri (EV) ÷ investisiyalardan sonra bir ildə yaratdığı pul. Aşağı olması qiymətə görə daha çox pul aldığınızı göstərir.';

  @override
  String get glossPeg =>
      'P/E ÷ gözlənilən illik mənfəət artımı (%). Təxminən 1 çox vaxt ədalətli sayılır; P/E-ni artım işığında göstərir.';

  @override
  String get glossEps =>
      'Son 12 ayda bir səhmə düşən mənfəət. İllər ərzində artan EPS sağlam şirkətin ən güclü əlamətlərindən biridir.';

  @override
  String get glossBeta =>
      'Səhmin bazarla nə qədər birlikdə hərəkət etməyə meyilli olduğu: 1 = bazar kimi, 1,5 = təxminən 50% daha böyük dalğalanmalar, 1-dən aşağı = daha sakit.';

  @override
  String get glossRevenueTtm =>
      'Son 12 ayın ümumi satışları, hər hansı xərcdən əvvəl.';

  @override
  String get glossNetIncomeTtm =>
      'Son 12 ayda bütün xərclər, faizlər və vergilərdən sonra qalan mənfəət.';

  @override
  String get glossGrossMargin =>
      'Məhsulların birbaşa xərcindən sonra gəlirdən qalan pay. Yüksək marja çox vaxt qiymət gücü deməkdir.';

  @override
  String get glossOperatingMargin =>
      'Biznesin idarə olunması xərclərindən (maaşlar, icarə, marketinq) sonra, faiz və vergilərdən əvvəl gəlirdən qalan pay.';

  @override
  String get glossNetMargin =>
      'Gəlirin son mənfəətə çevrilən payı. 20% hər 100 satışdan 20-nin mənfəət olduğunu göstərir.';

  @override
  String get glossRoe =>
      'Kapitalın rentabelliyi: illik mənfəət ÷ sahiblərin kapitalı. Rəhbərliyin səhmdarların pulundan nə qədər yaxşı istifadə etdiyini göstərir; təxminən 15%-dən yuxarı güclüdür.';

  @override
  String get glossRoa =>
      'Aktivlərin rentabelliyi: illik mənfəət ÷ şirkətin sahib olduğu hər şey. Eyni sənaye daxilində müqayisə edin.';

  @override
  String get glossDebtToEquity =>
      'Borclar ÷ sahiblərin kapitalı. Yüksək olması daha çox borc pul deməkdir: faizlər artanda və ya iş zəiflədikdə daha çox risk.';

  @override
  String get glossCurrentRatio =>
      'Qısamüddətli aktivlər ÷ bir il ərzində ödənməli öhdəliklər. 1-dən yuxarı şirkətin yaxın öhdəliklərini ödəyə biləcəyini göstərir.';

  @override
  String get glossRevenueGrowth =>
      'Gəlirin bir il əvvəllə müqayisədə nə qədər artdığı.';

  @override
  String get glossEpsGrowth =>
      'Bir səhmə düşən mənfəətin bir il əvvəllə müqayisədə nə qədər artdığı.';

  @override
  String get glossDividendYield =>
      'İllik dividend ÷ səhm qiyməti: ödədiyiniz məbləğin faizi kimi ildə alacağınız pul gəliri.';

  @override
  String get glossDividendPerShare =>
      'Son bir ildə bir səhmə ödənilən dividend.';

  @override
  String get glossPayoutRatio =>
      'Mənfəətin dividend kimi ödənilən payı. 100%-dən yuxarı şirkət qazandığından çox ödəyir və bu nadir hallarda davam edir.';

  @override
  String get glossTitle => 'Bu nə deməkdir?';

  @override
  String get watchNewsTitle => 'Səhmləriniz üzrə xəbərlər';

  @override
  String get undo => 'Geri al';

  @override
  String get watchSort => 'Sırala';

  @override
  String get watchSortOwn => 'Mənim sıram';

  @override
  String get watchSortGainers => 'Ən çox artanlar əvvəl';

  @override
  String get watchSortLosers => 'Ən çox düşənlər əvvəl';

  @override
  String get watchSortName => 'Tikerə görə (A–Z)';

  @override
  String get watchHint =>
      'Sıranı dəyişmək üçün tutacağı sürüşdürün, silmək üçün sola sürüşdürün. Xətt son 30 günü göstərir.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: təhliliniz hazırdır.';
  }

  @override
  String alertFromCost(String price) {
    return 'Orta alış qiymətinizə ($price) görə:';
  }

  @override
  String get briefTitle => 'Bu gün səhmlərinizlə';

  @override
  String get briefButton => 'Bugünü xülasə et';

  @override
  String get briefHint =>
      'Portfelinizin və seçilmişlərinizin bu gün necə dəyişdiyinə və son xəbərlərin onlar haqqında nə dediyinə dair qısa süni intellekt xülasəsi. Təhlil sərf etmir.';

  @override
  String get briefRefresh => 'Yenilə';

  @override
  String get sectionEarnings => 'Mənfəət';

  @override
  String earningsNext(String date) {
    return 'Növbəti hesabat: $date';
  }

  @override
  String get earningsExpected => 'Gözlənilən EPS';

  @override
  String get earningsReported => 'Açıqlanan EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Son $total rübdən $beats rübdə gözlənilən EPS səviyyəsində və ya ondan yuxarı',
      one:
          '1 rübdən $beats rübdə gözlənilən EPS səviyyəsində və ya ondan yuxarı',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol sabah rüblük nəticələrini açıqlayır';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol bu gün rüblük nəticələrini açıqlayır';
  }

  @override
  String get earningsRemindersTitle => 'Nəticə xatırlatmaları';

  @override
  String get earningsRemindersSubtitle =>
      'Seçilmişlərinizdəki və ya portfelinizdəki səhmlər rüblük nəticələrini açıqlamazdan bir gün əvvəl bildiriş';

  @override
  String addAllToFavorites(int count) {
    return 'Hamısını seçilmişlərə əlavə et ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Ekran görüntüsündən idxal et';

  @override
  String get holdingsReading => 'Mövqeləriniz oxunur…';

  @override
  String get holdingsReviewTitle => 'Tapılan mövqelər';

  @override
  String get holdingsReviewHint =>
      'Əlavə etməzdən əvvəl rəqəmləri yoxlayın. Qiymət bugünkü qiymət deyil, səhm başına orta alış qiymətinizdir.';

  @override
  String get holdingsNoPrice => 'Şəkildə orta alış qiyməti yoxdur';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mövqe əlavə et',
      one: '1 mövqe əlavə et',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Bu şəkildə səhm mövqeyi tapılmadı. Brokerinizin mövqelər və ya portfel səhifəsinin ekran görüntüsünü yoxlayın.';

  @override
  String get week52Range => '52 həftəlik diapazon';

  @override
  String week52BelowHigh(String percent) {
    return '52 həftəlik maksimumdan $percent aşağı';
  }

  @override
  String get week52AtHigh => '52 həftəlik maksimumda';

  @override
  String get alertKindTrailing => 'Zirvədən düşərsə';

  @override
  String get alertTrailingPercent => 'Zirvədən düşmə (%)';

  @override
  String get alertTrailingHint =>
      'Qiyməti yuxarı izləyir: qiymət quraşdırıldığı vaxtdan bəri çatdığı ən yüksək səviyyədən bu qədər düşəndə xəbərdarlıq edir.';

  @override
  String alertDescTrailing(String percent) {
    return 'Zirvədən $percent düşmə';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'indiyədək zirvə: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol zirvədən $percent düşdü';
  }

  @override
  String get sectionInsiders => 'İnsayder əməliyyatları';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count alış',
      one: '1 alış',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count satış',
      one: '1 satış',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Xalis: $shares səhm';
  }

  @override
  String get insiderBuy => 'Alınıb';

  @override
  String get insiderSell => 'Satılıb';

  @override
  String get insiderHint =>
      'Son 90 gündə rəhbərlər və direktorlar tərəfindən açıq bazarda edilmiş alış və satışlar (SEC Form 4). Opsionların icrası və səhm mükafatları nəzərə alınmır.';

  @override
  String get insiderNone =>
      'Son 90 gündə açıq bazarda insayder alışı və ya satışı olmayıb.';

  @override
  String get analystTrend => 'Rəylər aydan-aya necə dəyişdi';

  @override
  String get watchListAll => 'Hamısı';

  @override
  String get watchListNew => 'Yeni siyahı';

  @override
  String get watchListName => 'Siyahı adı';

  @override
  String get watchListRename => 'Siyahının adını dəyiş';

  @override
  String get watchListDelete => 'Siyahını sil';

  @override
  String get watchListAddTo => 'Siyahıya əlavə et';

  @override
  String get watchListEmpty =>
      'Bu siyahıda hələ səhm yoxdur. Əlavə etmək üçün səhmin yanındakı siyahı düyməsinə toxunun.';

  @override
  String get portfolioAskTitle => 'Portfeliniz haqqında suallar';

  @override
  String get rangeYtd => 'Bu il';

  @override
  String get backupTitle => 'Ehtiyat nüsxə';

  @override
  String get backupSave => 'Ehtiyat nüsxəni saxla';

  @override
  String get backupSaveHint =>
      'Seçilmişləriniz, siyahılarınız, portfeliniz, bildirişləriniz və qeydləriniz bir faylda.';

  @override
  String get backupRestore => 'Ehtiyat nüsxədən bərpa et';

  @override
  String get backupRestoreHint =>
      'Fayldakıları əlavə edir; hazırkı məlumatlarınızdan heç nə silinmir.';

  @override
  String get backupRestored => 'Ehtiyat nüsxə bərpa edildi.';

  @override
  String get backupInvalid => 'Bu fayl WhatStock ehtiyat nüsxəsi deyil.';

  @override
  String get allocationPositions => 'Səhmlər';

  @override
  String get allocationSectors => 'Sektorlar';

  @override
  String get allocationCurrencies => 'Valyutalar';

  @override
  String get compareReturn1y => '1 illik gəlirlilik';

  @override
  String get compareFromHigh => '52 həftəlik maksimumdan məsafə';

  @override
  String get briefAutoTitle => 'Hər səhər gündəlik xülasə';

  @override
  String get briefAutoSubtitle =>
      '«Bu gün səhmlərinizlə» tətbiq işlədikcə saat 7:00-dan sonra avtomatik hazırlanır; kompüterlərdə bildiriş sizə xəbər verir. Gündəlik sual limitinizdən istifadə edir, təhlil sərf etmir.';

  @override
  String get targetsButton => 'Hədəf bölgüsü';

  @override
  String get targetsTitle => 'Hədəf bölgüsü';

  @override
  String get targetsHint =>
      'Hər səhmin portfelin hansı payını tutmalı olduğunu təyin edin. Hədəf yoxdursa, sahəni boş saxlayın. Tətbiq sonra ora çatmaq üçün nəyi almaq və ya satmaq lazım olduğunu göstərəcək.';

  @override
  String targetsSum(String percent) {
    return 'Cəmi: $percent';
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
  String get rebalanceOk => 'Hədəfdə';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol gözlənilən EPS-i üstələdi';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol gözlənilən EPS-ə çatmadı';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'Açıqlanan EPS $actual, gözlənilən $estimate';
  }

  @override
  String get newsExplain => 'Bu nə deməkdir?';

  @override
  String get watchAlertAll => 'Böyük gündəlik dəyişmələrdə xəbərdarlıq';

  @override
  String get watchAlertAllHint =>
      'Bu siyahıdakı hər səhm üçün qiymət xəbərdarlığı: bir gündə bu qədər yuxarı və ya aşağı dəyişərsə, xəbər verir. Artıq xəbərdarlığı olan səhmlər onu saxlayır.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count xəbərdarlıq quruldu',
      one: '1 xəbərdarlıq quruldu',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Realizə olunmuş gəliri ixrac et (CSV)';

  @override
  String get portfolioAnnualReturn => 'İllik gəlirlilik';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / il';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Pul axınları ilə çəkili illik gəlirlilik (XIRR): nə vaxt aldığınızı və satdığınızı nəzərə alır, buna görə sonradan əlavə edilən pul onu təhrif etmir. İlk alışınızdan ən azı bir il keçdikdə göstərilir; dividendlər daxil deyil.';

  @override
  String get eventsAddToCalendar => 'Təqvimə əlavə et (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Portfel bildirişi';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Bütün portfeliniz bir gündə bu qədər dəyişəndə bildiriş.';

  @override
  String get portfolioMoveAlertOff => 'Söndürülüb';

  @override
  String portfolioMoveUp(String percent) {
    return 'Portfeliniz bu gün $percent artıb';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Portfeliniz bu gün $percent azalıb';
  }

  @override
  String get whatIfTitle => 'İnvestisiya etsəydiniz nə olardı?';

  @override
  String get whatIfAmount => 'Məbləğ';

  @override
  String whatIfResult(String amount, String period) {
    return '$period əvvəl yatırılan $amount bu gün bu qədər olardı';
  }

  @override
  String get whatIfNote =>
      'Yalnız səhm qiymətinə əsaslanır: dividendlər, komissiyalar və vergilər daxil deyil. Keçmiş gəlirlər gələcək gəlirləri proqnozlaşdırmır.';

  @override
  String get watchShare => 'Siyahını paylaş';

  @override
  String get watchImport => 'Tiker əlavə et';

  @override
  String get watchImportHint =>
      'Tikerləri vergül, boşluq və ya yeni sətirlə ayıraraq yapışdırın – məsələn, kiminsə sizinlə paylaşdığı siyahını.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count səhm əlavə olundu',
      one: '1 səhm əlavə olundu',
      zero: 'Yeni səhm yoxdur',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Ən böyüklər əvvəl';

  @override
  String get positionsSortGain => 'Ən yüksək ümumi gəlir əvvəl';

  @override
  String get positionsSortToday => 'Bu günün ən yaxşıları əvvəl';

  @override
  String get chartMyBuys => 'Alışlarınız';

  @override
  String get chartMySells => 'Satışlarınız';

  @override
  String get shortcutsTitle => 'Klaviatura qısayolları';

  @override
  String usMarketOpen(String time) {
    return 'ABŞ bazarı açıqdır · $time sonra bağlanır';
  }

  @override
  String usMarketClosed(String time) {
    return 'ABŞ bazarı bağlıdır · $time sonra açılır';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes dəq';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours saat $minutes dəq';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days gün $hours saat';
  }

  @override
  String get portfolioGoalSet => 'Hədəf təyin et';

  @override
  String get portfolioGoalTitle => 'Portfel hədəfi';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · hədəf: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Hədəfə çatdın: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Hədəfi sil';

  @override
  String get alertEdit => 'Bildirişi redaktə et';

  @override
  String get positionOpenLots =>
      'Hələ də əlinizdə olanlar (əvvəlcə ən köhnələr)';

  @override
  String get lotRemoved => 'Əməliyyat silindi';

  @override
  String get alertDeleted => 'Xəbərdarlıq silindi';

  @override
  String get alertsClearTriggered => 'İşə düşmüş xəbərdarlıqları təmizlə';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count xəbərdarlıq təmizləndi',
      one: '1 xəbərdarlıq təmizləndi',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Əsas ekran';

  @override
  String get allocationCountries => 'Ölkələr';

  @override
  String get newsExplainNoteResearch =>
      'AI izahı: faktları internetdə axtarır, məqaləni açır və mənbənin nə qədər etibarlı olduğunu qiymətləndirir. İnvestisiya məsləhəti deyil. Gündəlik sual limitinizdən istifadə edir, təhlil sərf etmir.';

  @override
  String get sourceOfficial => 'Rəsmi';

  @override
  String get sourcePressRelease => 'Press-reliz';

  @override
  String get sourceMajorNews => 'Böyük media';

  @override
  String get sourceOpinion => 'Rəy';

  @override
  String get earningsSummaryButton => 'Son hesabatda nə var idi?';

  @override
  String get earningsSummaryNote =>
      'Şirkətin nəticələr açıqlamasının və internetdə tapdığı mətbuat xəbərlərinin AI xülasəsi. İnvestisiya məsləhəti deyil. Gündəlik sual limitinizdən istifadə edir, təhlil sərf etmir.';

  @override
  String get compareLastSurprise => 'Son rüb EPS vs. gözlənilən';

  @override
  String get compareNextReport => 'Növbəti hesabat';

  @override
  String get resolvingDescription =>
      'Hansı səhmi nəzərdə tutduğunuz müəyyən edilir…';

  @override
  String get instrumentTitle => 'Bu alət haqqında';

  @override
  String get instrumentHint =>
      'Bu simvol üçün şirkət profili yoxdur – bu ETF, fond və ya depozitar qəbz ola bilər. AI-dan soruşun: bu nədir, nəyi saxlayır və nə qədər xərc tələb edir.';

  @override
  String get instrumentAsk => 'Bu nədir?';

  @override
  String get instrumentNote =>
      'Emitentin fond səhifəsindən və internetdə tapdığı maliyyə saytlarından AI izahı. İnvestisiya məsləhəti deyil. Gündəlik sual limitinizdən istifadə edir, təhlil sərf etmir.';

  @override
  String suggestAskAi(String query) {
    return 'AI-dən soruşun: «$query»';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return '$symbols üçün cari qiymət yoxdur.';
  }

  @override
  String get eventsRecentResults => 'Son açıqlanan nəticələr';

  @override
  String get saveToNotes => 'Qeydlərimə yadda saxla';

  @override
  String get savedToNotes => 'Qeydlərinizə yadda saxlanıldı';

  @override
  String get portfolioDividendsReceived => 'Alınan dividendlər';

  @override
  String get portfolioDividendsThisYear => 'Bu il';

  @override
  String get portfolioDividendsAllTime => 'Bütün dövr';

  @override
  String get portfolioAddDividend => 'Dividend əlavə et';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Alınan məbləğ ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Ödəniş tarixi';

  @override
  String get portfolioDividendsEmpty =>
      'Hələ heç bir dividend qeyd edilməyib. Əl ilə əlavə edin və ya brokerinizin ixrac faylını idxal edin – oradakı dividend sətirləri də götürülür.';

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dividend əlavə edildi',
      one: '1 dividend əlavə edildi',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Dividendləri ixrac et (CSV)';

  @override
  String get portfolioDividendDeleted => 'Dividend silindi';

  @override
  String get portfolioDividendsHint =>
      'Məbləğlər hesabınıza gəldiyi kimi, ödəniş valyutasında; cəmlər bugünkü məzənnə ilə çevrilir. Vergi bəyannaməniz üçün brokerinizin hesabatından istifadə edin.';

  @override
  String get awayTitle => 'Siz yox ikən';

  @override
  String awaySince(String when) {
    return '$when tarixindən';
  }

  @override
  String get awayQuiet => 'Çox bir şey dəyişmədi.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count xəbərdarlıq işə düşdü',
      one: '1 xəbərdarlıq işə düşdü',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Nəticələrini açıqladı: $symbols';
  }

  @override
  String get moveWhyButton => 'Bu gün niyə dəyişir?';

  @override
  String moveWhyTitle(String percent) {
    return 'Bu gün $percent';
  }

  @override
  String get moveWhyNote =>
      'Vebdə tapılan bugünkü xəbərlərə əsaslanan AI izahı; əsl səbəb naməlum və ya fərqli ola bilər. İnvestisiya məsləhəti deyil. Gündəlik sual limitinizdən istifadə edir, analiz deyil.';

  @override
  String get sectionTechnical => 'Texniki mənzərə';

  @override
  String get labelSma50 => '50 günlük orta';

  @override
  String get labelSma200 => '200 günlük orta';

  @override
  String get labelRsi => 'RSI (14 gün)';

  @override
  String get labelVolatility30 => 'Volatillik (30 gün)';

  @override
  String techAbove(String percent) {
    return '$percent yuxarıda';
  }

  @override
  String techBelow(String percent) {
    return '$percent aşağıda';
  }

  @override
  String get techOverbought => 'həddindən artıq alınmış';

  @override
  String get techOversold => 'həddindən artıq satılmış';

  @override
  String get techNeutral => 'neytral';

  @override
  String get techGoldenCross =>
      '50 günlük orta 200 günlük ortadan yuxarıdır – klassik oxunuşa görə yüksələn trend.';

  @override
  String get techDeathCross =>
      '50 günlük orta 200 günlük ortadan aşağıdır – klassik oxunuşa görə enən trend.';

  @override
  String get glossSma50 =>
      'Son 50 ticarət gününün orta bağlanış qiyməti. Ondan yuxarı qiymət çox vaxt qısamüddətli güc, aşağı qiymət isə zəiflik kimi oxunur.';

  @override
  String get glossSma200 =>
      'Son 200 ticarət gününün orta bağlanış qiyməti – klassik uzunmüddətli trend xətti. Bir çox investor ondan yuxarı qiyməti uzunmüddətli yüksələn trend sayır.';

  @override
  String get glossRsi =>
      'Nisbi güc indeksi: son qazancları son itkilərlə 0–100 şkalasında müqayisə edir. 70-dən yuxarı səhm çox vaxt həddindən artıq alınmış (sürətlə yüksəlib), 30-dan aşağı həddindən artıq satılmış adlanır – amma güclü trend orada uzun müddət qala bilər.';

  @override
  String get glossVolatility =>
      'Qiymətin gündən-günə nə qədər dəyişdiyi, illik hesablanmış: 20% o deməkdir ki, adi bir il təxminən ±20% daxilində hərəkət edir. Yüksək volatillik hər iki istiqamətdə daha böyük hərəkətlər deməkdir.';

  @override
  String get techNote =>
      'Gündəlik bağlanış qiymətlərindən hesablanıb. Texniki siqnallar keçmişi təsvir edir, gələcəyi yox.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$count mövqedən $above mövqe 200 günlük ortasının üzərindədir';
  }

  @override
  String get watchSignalsTitle => 'Siqnallar';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · həddindən artıq satılmış';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · həddindən artıq alınmış';
  }

  @override
  String get signalCrossedAbove => '200 günlük ortanı yuxarı kəsdi';

  @override
  String get signalCrossedBelow => '200 günlük ortanı aşağı kəsdi';

  @override
  String get signalAlertsTitle => 'Texniki siqnal bildirişləri';

  @override
  String get signalAlertsSubtitle =>
      'Gündə bir dəfə, izlədiyiniz səhm həddindən artıq satılmış və ya həddindən artıq alınmış olduqda (RSI), yaxud qiyməti 200 günlük ortanı keçdikdə.';

  @override
  String get signalAlertsNotification => 'Texniki siqnallar';

  @override
  String get glossaryPageTitle => 'Lüğət';

  @override
  String get glossaryPageSubtitle =>
      'Tətbiqin göstərdiyi hər rəqəmin sadə izahı, P/E-dən RSI-yə qədər';

  @override
  String get glossarySearchHint => 'Lüğətdə axtar';

  @override
  String get portfolioCash => 'Nağd';

  @override
  String get portfolioCashTitle => 'Nağd qalıq';

  @override
  String get portfolioCashHint =>
      'Brokerinizdəki yatırılmamış pul, valyuta üzrə. Ümumi dəyərə və bölgüyə daxil edilir; gəlirliliyə daxil edilmir.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Məbləğ ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Nağd qalığı təyin et';

  @override
  String get portfolioDividendsExpected => 'Növbəti gözlənilən';

  @override
  String get portfolioDividendsExpectedNote =>
      'Qeyd etdiyiniz ödənişlərin tarix və məbləğlərinə əsasən təxmin edilib; şirkətlər onları dəyişdirə və ya ödəməyə bilər.';

  @override
  String portfolioDividendAround(String date) {
    return 'təxminən $date';
  }
}
