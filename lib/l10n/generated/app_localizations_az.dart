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
}
