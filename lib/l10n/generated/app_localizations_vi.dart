// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'Chụp ảnh một cổ phiếu và tìm hiểu mọi thứ về nó.';

  @override
  String get homeHint =>
      'Chứng chỉ cổ phiếu, màn hình ứng dụng chứng khoán, báo hoặc logo công ty – bất cứ thứ gì giúp nhận diện cổ phiếu.';

  @override
  String get takePhoto => 'Chụp ảnh';

  @override
  String get chooseFromGallery => 'Chọn từ thư viện';

  @override
  String get chooseImage => 'Chọn ảnh';

  @override
  String get enterTickerManually => 'Nhập mã cổ phiếu thủ công';

  @override
  String get tickerInputLabel => 'Mã cổ phiếu';

  @override
  String get tickerInputHint => 'ví dụ: AAPL';

  @override
  String get lookUp => 'Tra cứu';

  @override
  String demoModeBanner(String symbols) {
    return 'Chế độ demo – chưa cấu hình khóa dữ liệu thị trường. Dữ liệu mẫu có sẵn cho: $symbols.';
  }

  @override
  String get recognizing => 'Đang phân tích ảnh…';

  @override
  String get loadingData => 'Đang tải dữ liệu…';

  @override
  String get noCandidatesTitle => 'Không nhận diện được cổ phiếu';

  @override
  String get noCandidatesBody =>
      'Chúng tôi không thể xác định cổ phiếu trong ảnh này. Hãy thử ảnh rõ hơn hoặc nhập mã cổ phiếu thủ công.';

  @override
  String get whatWeSaw => 'Những gì chúng tôi nhận thấy';

  @override
  String get chooseCandidateTitle => 'Bạn muốn tìm cổ phiếu nào?';

  @override
  String confidencePercent(int percent) {
    return 'Độ tin cậy $percent%';
  }

  @override
  String get settings => 'Cài đặt';

  @override
  String get language => 'Ngôn ngữ';

  @override
  String get systemLanguage => 'Theo hệ thống';

  @override
  String get about => 'Giới thiệu';

  @override
  String get disclaimer =>
      'Ứng dụng này chỉ cung cấp thông tin và không phải là lời khuyên đầu tư. Dữ liệu có thể bị trễ hoặc không chính xác.';

  @override
  String dataSource(String source) {
    return 'Nguồn dữ liệu: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Nhận diện: $source';
  }

  @override
  String get retry => 'Thử lại';

  @override
  String get cancel => 'Hủy';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Đóng';

  @override
  String get errorGeneric => 'Đã xảy ra lỗi.';

  @override
  String get errorSectionUnavailable => 'Không thể tải mục này.';

  @override
  String get notAvailable => 'Không có';

  @override
  String get sectionIdentity => 'Thông tin định danh';

  @override
  String get sectionPrice => 'Giá';

  @override
  String get sectionValuation => 'Định giá';

  @override
  String get sectionFinancials => 'Tài chính';

  @override
  String get sectionDividend => 'Cổ tức';

  @override
  String get sectionProfile => 'Hồ sơ công ty';

  @override
  String get sectionAnalysts => 'Đánh giá của chuyên gia phân tích';

  @override
  String get sectionNews => 'Tin tức';

  @override
  String get sectionRecognition => 'Chi tiết nhận diện';

  @override
  String get labelSymbol => 'Mã cổ phiếu';

  @override
  String get labelExchange => 'Sàn giao dịch';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Tiền tệ';

  @override
  String get labelCountry => 'Quốc gia';

  @override
  String get labelIndustry => 'Ngành';

  @override
  String get labelSector => 'Lĩnh vực';

  @override
  String get labelWebsite => 'Trang web';

  @override
  String get labelIpoDate => 'Ngày IPO';

  @override
  String get labelMarketCap => 'Vốn hóa thị trường';

  @override
  String get labelSharesOutstanding => 'Số cổ phiếu đang lưu hành';

  @override
  String get labelEmployees => 'Số nhân viên';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Trụ sở chính';

  @override
  String get labelDescription => 'Mô tả';

  @override
  String get labelLastPrice => 'Giá mới nhất';

  @override
  String get labelChange => 'Thay đổi';

  @override
  String get labelOpen => 'Giá mở cửa';

  @override
  String get labelDayHigh => 'Cao nhất trong ngày';

  @override
  String get labelDayLow => 'Thấp nhất trong ngày';

  @override
  String get labelPreviousClose => 'Giá đóng cửa hôm trước';

  @override
  String get labelWeek52High => 'Cao nhất 52 tuần';

  @override
  String get labelWeek52Low => 'Thấp nhất 52 tuần';

  @override
  String get labelAverageVolume10d => 'KL giao dịch TB (10 ngày)';

  @override
  String updatedAt(String time) {
    return 'Cập nhật $time';
  }

  @override
  String get labelPeTrailing => 'P/E (quá khứ)';

  @override
  String get labelPeForward => 'P/E (dự phóng)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / dòng tiền tự do';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Doanh thu (TTM)';

  @override
  String get labelNetIncomeTtm => 'Lợi nhuận ròng (TTM)';

  @override
  String get labelGrossMargin => 'Biên lợi nhuận gộp';

  @override
  String get labelOperatingMargin => 'Biên lợi nhuận hoạt động';

  @override
  String get labelNetMargin => 'Biên lợi nhuận ròng';

  @override
  String get labelRoe => 'Lợi nhuận trên vốn chủ sở hữu (ROE)';

  @override
  String get labelRoa => 'Lợi nhuận trên tổng tài sản (ROA)';

  @override
  String get labelDebtToEquity => 'Nợ / vốn chủ sở hữu';

  @override
  String get labelCurrentRatio => 'Hệ số thanh toán hiện hành';

  @override
  String get labelRevenueGrowth => 'Tăng trưởng doanh thu (YoY)';

  @override
  String get labelEpsGrowth => 'Tăng trưởng EPS (YoY)';

  @override
  String get labelDividendYield => 'Tỷ suất cổ tức';

  @override
  String get labelDividendPerShare => 'Cổ tức trên mỗi cổ phiếu';

  @override
  String get labelPayoutRatio => 'Tỷ lệ chi trả cổ tức';

  @override
  String get labelYieldOnCost => 'Tỷ suất cổ tức trên giá vốn';

  @override
  String get labelDividendGrowth5y => 'Tăng trưởng cổ tức (5 năm)';

  @override
  String get dividendNone => 'Không trả cổ tức trong 12 tháng qua.';

  @override
  String get dividendOnYourShares => 'Trên số cổ phiếu của bạn, mỗi năm';

  @override
  String get labelConsensus => 'Đồng thuận';

  @override
  String get ratingStrongBuy => 'Mua mạnh';

  @override
  String get ratingBuy => 'Mua';

  @override
  String get ratingHold => 'Nắm giữ';

  @override
  String get ratingSell => 'Bán';

  @override
  String get ratingStrongSell => 'Bán mạnh';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count chuyên gia phân tích',
      one: '1 chuyên gia phân tích',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Kỳ: $period';
  }

  @override
  String get noNews => 'Không có tin tức gần đây.';

  @override
  String get openArticle => 'Mở bài viết';

  @override
  String get openLinkFailed => 'Không thể mở liên kết.';

  @override
  String get recognitionSummary => 'Tóm tắt';

  @override
  String get recognitionEvidence => 'Căn cứ nhận diện';

  @override
  String get recognitionRawText => 'Văn bản đọc được từ ảnh';

  @override
  String get errMissingAnthropicKey =>
      'Chưa cấu hình nhận diện ảnh (thiếu ANTHROPIC_API_KEY). Hãy nhập mã cổ phiếu thủ công.';

  @override
  String get errRecognitionUnreachable =>
      'Không thể kết nối tới dịch vụ nhận diện. Hãy kiểm tra kết nối internet.';

  @override
  String errRecognitionHttp(String status) {
    return 'Dịch vụ nhận diện trả về lỗi (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Dịch vụ nhận diện không thể xử lý ảnh này.';

  @override
  String get errRecognitionTruncated =>
      'Phản hồi nhận diện bị cắt ngắn. Vui lòng thử lại.';

  @override
  String get errRecognitionBadResponse =>
      'Phản hồi không mong đợi từ dịch vụ nhận diện.';

  @override
  String get errRecognitionEmpty => 'Dịch vụ nhận diện trả về phản hồi trống.';

  @override
  String get errMissingFinnhubKey =>
      'Chưa cấu hình dữ liệu thị trường (thiếu FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Không thể kết nối tới dịch vụ dữ liệu thị trường. Hãy kiểm tra kết nối internet.';

  @override
  String get errMarketRateLimited =>
      'Quá nhiều yêu cầu tới dịch vụ dữ liệu thị trường. Vui lòng đợi một phút.';

  @override
  String errMarketHttp(String status) {
    return 'Dịch vụ dữ liệu thị trường trả về lỗi (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Phản hồi không mong đợi từ dịch vụ dữ liệu thị trường.';

  @override
  String errNoQuote(String symbol) {
    return 'Không tìm thấy dữ liệu giá cho $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Không tìm thấy hồ sơ công ty cho $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Chế độ demo chỉ hỗ trợ $symbols. Hãy thêm FINNHUB_API_KEY để có dữ liệu thực.';
  }

  @override
  String errUnknown(String detail) {
    return 'Đã xảy ra lỗi: $detail';
  }

  @override
  String get newSearch => 'Tìm kiếm mới';

  @override
  String get recentSearches => 'Gần đây';

  @override
  String get noRecentSearches => 'Chưa có tìm kiếm gần đây.';

  @override
  String get clearRecent => 'Xóa gần đây';

  @override
  String get greeting => 'Hôm nay bạn muốn xem cổ phiếu nào?';

  @override
  String get searchHint => 'Mã cổ phiếu hoặc tên công ty';

  @override
  String get attachImage => 'Đính kèm ảnh';

  @override
  String get searchResultsTitle => 'Kết quả tìm kiếm';

  @override
  String errNoResults(String query) {
    return 'Không tìm thấy cổ phiếu nào cho “$query”.';
  }

  @override
  String get quickBarHint => 'Nhập mã cổ phiếu hoặc tên công ty…';

  @override
  String get openFullWindow => 'Mở cửa sổ';

  @override
  String hotkeyHint(String shortcut) {
    return 'Nhấn $shortcut ở bất kỳ đâu để gọi WhatStock.';
  }

  @override
  String get trayOpen => 'Mở WhatStock';

  @override
  String get trayQuickSearch => 'Tìm kiếm nhanh';

  @override
  String get trayQuit => 'Thoát';

  @override
  String get appearance => 'Giao diện';

  @override
  String get themeSystem => 'Theo hệ thống';

  @override
  String get themeDark => 'Tối';

  @override
  String get themeLight => 'Sáng';

  @override
  String get back => 'Quay lại';

  @override
  String get aiSectionTitle => 'Phân tích AI';

  @override
  String get aiIntro =>
      'Tổng quan chi tiết do AI viết: tóm tắt tin tức gần đây, hoạt động kinh doanh, điểm mạnh, rủi ro và các yếu tố tiềm ẩn, định giá, triển vọng giá với các kịch bản từ góc độ tâm lý, xã hội, kỹ thuật và vĩ mô, và những điều cần theo dõi.';

  @override
  String get aiGenerate => 'Tạo phân tích';

  @override
  String get aiRegenerate => 'Tạo lại';

  @override
  String get aiGenerating =>
      'Đang chuẩn bị phân tích… có thể mất một hoặc hai phút.';

  @override
  String get aiSources => 'Nguồn';

  @override
  String aiGeneratedAt(String time) {
    return 'Tạo lúc $time';
  }

  @override
  String get aiDisclaimer =>
      'Phân tích do AI tạo dựa trên dữ liệu công khai và tin tức gần đây. Nội dung có thể sai hoặc lỗi thời và không phải là lời khuyên đầu tư.';

  @override
  String get errAiNotConfigured =>
      'Chưa cấu hình phân tích AI (thiếu ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Không thể kết nối tới dịch vụ AI. Hãy kiểm tra kết nối internet.';

  @override
  String errAiHttp(String status) {
    return 'Dịch vụ AI trả về lỗi (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Dịch vụ AI đã từ chối phân tích cổ phiếu này.';

  @override
  String get errAiBadResponse => 'Phản hồi không mong đợi từ dịch vụ AI.';

  @override
  String get sectionChart => 'Biểu đồ giá';

  @override
  String get rangeOneWeek => '1T';

  @override
  String get rangeOneMonth => '1Th';

  @override
  String get rangeThreeMonths => '3Th';

  @override
  String get rangeOneYear => '1N';

  @override
  String get rangeFiveYears => '5N';

  @override
  String get chartUnavailable =>
      'Nguồn dữ liệu hiện tại không cung cấp lịch sử giá.';

  @override
  String get sectionStatements => 'Báo cáo tài chính (năm)';

  @override
  String get labelFiscalYear => 'Năm tài chính';

  @override
  String get labelRevenue => 'Doanh thu';

  @override
  String get labelNetIncome => 'Lợi nhuận ròng';

  @override
  String get labelTotalAssets => 'Tổng tài sản';

  @override
  String get labelTotalLiabilities => 'Tổng nợ phải trả';

  @override
  String get labelEquity => 'Vốn chủ sở hữu';

  @override
  String get labelOperatingCashFlow => 'Dòng tiền từ hoạt động kinh doanh';

  @override
  String get statementsUnavailable =>
      'Không có báo cáo tài chính đã công bố cho cổ phiếu này.';

  @override
  String get launchAtLogin => 'Khởi chạy khi đăng nhập';

  @override
  String get hotkeyLabel => 'Phím tắt toàn cục';

  @override
  String get hotkeyRecordHint => 'Nhấp vào đây, rồi nhấn tổ hợp phím mới';

  @override
  String get hotkeyReset => 'Đặt lại mặc định';

  @override
  String get pasteImage => 'Dán ảnh từ bảng tạm';

  @override
  String get errClipboardNoImage => 'Không có ảnh trong bảng tạm.';

  @override
  String get favorites => 'Yêu thích';

  @override
  String get addToFavorites => 'Thêm vào yêu thích';

  @override
  String get removeFromFavorites => 'Xóa khỏi yêu thích';

  @override
  String get noFavorites =>
      'Chưa có mục yêu thích nào. Nhấn vào ngôi sao trên một cổ phiếu để thêm.';

  @override
  String get displayCurrency => 'Tiền tệ hiển thị';

  @override
  String get displayCurrencyNone => 'Chỉ tiền tệ của cổ phiếu';

  @override
  String labelConverted(String currency) {
    return '≈ theo $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Tỷ giá: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Cập nhật';

  @override
  String currentVersion(String version) {
    return 'Phiên bản $version';
  }

  @override
  String get autoUpdate => 'Tự động cài đặt bản cập nhật';

  @override
  String get checkForUpdates => 'Kiểm tra bản cập nhật';

  @override
  String get updateChecking => 'Đang kiểm tra bản cập nhật…';

  @override
  String get updateUpToDate => 'Bạn đang dùng phiên bản mới nhất.';

  @override
  String updateAvailable(String version) {
    return 'Đã có phiên bản $version.';
  }

  @override
  String get updateDownloading => 'Đang tải bản cập nhật trong nền…';

  @override
  String get updateDownloaded =>
      'Bản cập nhật đã sẵn sàng. Khởi động lại để cài đặt.';

  @override
  String get updateNow => 'Cập nhật';

  @override
  String get restartNow => 'Khởi động lại';

  @override
  String get updatesViaStore =>
      'Các bản cập nhật được cung cấp tự động qua cửa hàng ứng dụng.';

  @override
  String get updateCheckFailed => 'Không thể kiểm tra bản cập nhật.';

  @override
  String get subscription => 'Gói đăng ký';

  @override
  String get planTrial => 'Dùng thử';

  @override
  String get planNormal => 'Thường';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Không có gói đang hoạt động';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count lượt phân tích mỗi tháng';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Dùng thử miễn phí $days ngày với $count lượt phân tích';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Còn $days ngày dùng thử',
      one: 'Còn 1 ngày dùng thử',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Thời gian dùng thử miễn phí đã kết thúc. Hãy chọn một gói để tiếp tục phân tích.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Còn $remaining/$total lượt phân tích trong kỳ này';
  }

  @override
  String extraCredits(int count) {
    return '$count lượt phân tích bổ sung';
  }

  @override
  String renewsOn(String date) {
    return 'Gia hạn $date';
  }

  @override
  String get choosePlan => 'Chọn gói';

  @override
  String get currentPlan => 'Gói hiện tại';

  @override
  String get subscribe => 'Đăng ký';

  @override
  String get perMonth => '/ tháng';

  @override
  String get extraPacksTitle => 'Cần thêm? Mua lượt phân tích bổ sung';

  @override
  String get extraPacksHint =>
      'Lượt phân tích bổ sung không bao giờ hết hạn và được dùng sau khi hết hạn mức hằng tháng.';

  @override
  String get buy => 'Mua';

  @override
  String get restorePurchases => 'Khôi phục giao dịch mua';

  @override
  String get manageSubscription => 'Quản lý gói đăng ký';

  @override
  String get purchaseSuccess => 'Cảm ơn bạn! Giao dịch mua đã có hiệu lực.';

  @override
  String get purchasePending => 'Đang xử lý giao dịch mua…';

  @override
  String get purchaseFailed => 'Không thể hoàn tất giao dịch mua.';

  @override
  String get purchaseCanceled => 'Đã hủy giao dịch mua.';

  @override
  String get billingUnavailable =>
      'Nền tảng này chưa hỗ trợ mua hàng. Hãy đăng ký trên điện thoại hoặc Mac; gói của bạn sẽ hoạt động trên mọi thiết bị.';

  @override
  String get errQuotaExceeded =>
      'Bạn đã hết lượt phân tích trong kỳ này. Hãy nâng cấp gói hoặc mua lượt phân tích bổ sung.';

  @override
  String get errTrialExpired =>
      'Thời gian dùng thử miễn phí đã kết thúc. Hãy chọn một gói để tiếp tục.';

  @override
  String get errNoPlan => 'Cần có gói đang hoạt động để phân tích AI.';

  @override
  String get viewPlans => 'Xem các gói';

  @override
  String get usageTitle => 'Mức sử dụng';

  @override
  String get demoPurchaseNote =>
      'Thanh toán demo: các giao dịch mua trên nền tảng này chỉ là mô phỏng.';

  @override
  String get mostPopular => 'Phổ biến nhất';

  @override
  String get bestValue => 'Đáng giá nhất';

  @override
  String get planFeaturesCommon =>
      'Nhận diện ảnh, dữ liệu trực tiếp, biểu đồ, yêu thích và toàn bộ 120 ngôn ngữ đều có trong mọi gói. Hạn mức áp dụng cho các lượt phân tích AI.';

  @override
  String get searchLanguages => 'Tìm ngôn ngữ…';

  @override
  String get noLanguageMatch => 'Không có ngôn ngữ phù hợp.';

  @override
  String get aiSettings => 'Phân tích AI';

  @override
  String get aiLength => 'Độ dài';

  @override
  String get aiDepthBrief => 'Ngắn gọn';

  @override
  String get aiDepthStandard => 'Tiêu chuẩn';

  @override
  String get aiDepthDeep => 'Chuyên sâu';

  @override
  String get aiDepthBriefDesc => 'Những điểm chính, nhanh chóng.';

  @override
  String get aiDepthStandardDesc => 'Báo cáo đầy đủ với mọi phần.';

  @override
  String get aiDepthDeepDesc =>
      'Nhiều lượt tìm kiếm web hơn, so sánh với doanh nghiệp cùng ngành và chi tiết sâu hơn.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Khoảng $min–$max từ';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'dùng $count lượt phân tích',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Trình độ người đọc';

  @override
  String get aiReaderBeginner => 'Người mới';

  @override
  String get aiReaderExperienced => 'Có kinh nghiệm';

  @override
  String get aiReaderBeginnerDesc =>
      'Ngôn ngữ dễ hiểu; mọi thuật ngữ chuyên môn đều được giải thích.';

  @override
  String get aiReaderExperiencedDesc =>
      'Văn bản cô đọng hơn với thuật ngữ tài chính tiêu chuẩn.';

  @override
  String get aiCounterArgument => 'Lập luận phản bác mạnh nhất';

  @override
  String get aiCounterArgumentDesc =>
      'Phần tóm tắt luôn kết thúc bằng lập luận mạnh nhất chống lại chính kết luận của nó.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Tối đa $count lượt tìm kiếm web cho mỗi phân tích với gói của bạn',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Độ dài tiêu chuẩn theo gói: Thường $normal, Pro $pro, Max $max, Ultra $ultra. Ngắn gọn dùng ít hơn 2, Chuyên sâu nhiều hơn 2.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tối đa $count lượt tìm kiếm web',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lượt tìm kiếm web mỗi phân tích',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Độ dài này cần $needed lượt phân tích, nhưng bạn chỉ còn $left. Hãy chọn độ dài ngắn hơn trong Cài đặt hoặc mua thêm lượt phân tích.';
  }

  @override
  String get outlookMarketMood => 'Tâm lý thị trường';

  @override
  String get moodVeryPessimistic => 'Rất bi quan';

  @override
  String get moodPessimistic => 'Bi quan';

  @override
  String get moodNeutral => 'Trung lập';

  @override
  String get moodOptimistic => 'Lạc quan';

  @override
  String get moodVeryOptimistic => 'Rất lạc quan';

  @override
  String get scenarioBull => 'Kịch bản lạc quan';

  @override
  String get scenarioBase => 'Kịch bản cơ sở';

  @override
  String get scenarioBear => 'Kịch bản bi quan';

  @override
  String outlookCurrentPrice(String price) {
    return 'Giá hiện tại: $price';
  }

  @override
  String get outlookKeyLevels => 'Mức giá then chốt';

  @override
  String get keyLevelSupport => 'Hỗ trợ';

  @override
  String get keyLevelResistance => 'Kháng cự';

  @override
  String get keyLevelAnchor => 'Mức neo';

  @override
  String get upcomingEvents => 'Sự kiện sắp tới';

  @override
  String get outlookChartNote =>
      'Các vùng giá chỉ mang tính tham khảo; xác suất là ước đoán sơ bộ, không phải dự báo.';

  @override
  String get accountTitle => 'Tài khoản';

  @override
  String get signIn => 'Đăng nhập';

  @override
  String get signOut => 'Đăng xuất';

  @override
  String get notSignedIn => 'Chưa đăng nhập';

  @override
  String get accountBenefit =>
      'Đăng nhập để gói đăng ký của bạn dùng được trên mọi thiết bị.';

  @override
  String get accountSyncedNote =>
      'Gói đăng ký và số lượt phân tích còn lại của bạn giống nhau trên mọi thiết bị.';

  @override
  String get signInTitle => 'Đăng nhập vào WhatStock';

  @override
  String get emailLabel => 'Địa chỉ email';

  @override
  String get continueWithEmail => 'Tiếp tục bằng email';

  @override
  String codeSentTo(String email) {
    return 'Chúng tôi đã gửi mã 6 chữ số đến $email. Mã có hiệu lực trong 10 phút.';
  }

  @override
  String get codeLabel => 'Mã đăng nhập';

  @override
  String get resendCode => 'Gửi mã mới';

  @override
  String get useDifferentEmail => 'Dùng email khác';

  @override
  String get errInvalidCode => 'Mã không đúng hoặc đã hết hạn.';

  @override
  String get errInvalidEmail => 'Vui lòng nhập địa chỉ email hợp lệ.';

  @override
  String get errSignInFailed =>
      'Đăng nhập không thành công. Hãy kiểm tra kết nối rồi thử lại.';

  @override
  String get checkoutWaiting =>
      'Hãy hoàn tất thanh toán trong trình duyệt. Ứng dụng sẽ tự động cập nhật khi xong.';

  @override
  String get paymentViaStripe =>
      'Thanh toán an toàn trong trình duyệt qua Stripe. Hủy bất cứ lúc nào.';

  @override
  String get paymentViaStore =>
      'Thanh toán qua tài khoản App Store hoặc Google Play của bạn. Hủy bất cứ lúc nào trong phần cài đặt của cửa hàng.';

  @override
  String get keySpace => 'Phím cách';

  @override
  String get doubleOptionTitle => 'Nhấn Option hai lần';

  @override
  String get doubleOptionSubtitle =>
      'Nhấn nhanh phím Option hai lần cũng sẽ gọi WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Để tính năng này hoạt động cả trong các ứng dụng khác, hãy cho phép WhatStock trong Cài đặt hệ thống → Quyền riêng tư & Bảo mật → Giám sát đầu vào, sau đó mở lại ứng dụng.';

  @override
  String get openSystemSettings => 'Mở Cài đặt hệ thống';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Nhấn $shortcut hoặc nhấn Option hai lần ở bất kỳ đâu để gọi WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Khả năng cao nhất';

  @override
  String get longTermToday => 'Hôm nay';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years năm',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range mỗi năm';
  }

  @override
  String longTermLikely(String price) {
    return 'khả năng cao nhất $price';
  }

  @override
  String get confidenceLow => 'Độ tin cậy thấp';

  @override
  String get confidenceMedium => 'Độ tin cậy trung bình';

  @override
  String get confidenceHigh => 'Độ tin cậy cao';

  @override
  String get longTermNote =>
      'Các khoảng dài hạn dựa trên các giả định đã nêu và rộng dần theo thời gian. Giá chưa tính cổ tức. Chỉ là nhận định sơ bộ, không phải dự báo.';

  @override
  String get portfolio => 'Danh mục';

  @override
  String get portfolioEmpty =>
      'Chưa có gì. Mở một cổ phiếu và nhấn “Thêm vào danh mục” để theo dõi những gì bạn sở hữu.';

  @override
  String get portfolioLocalNote =>
      'Lưu trên thiết bị này và trong tài khoản của bạn nếu bạn đã đăng nhập. Tổng được quy đổi theo tỷ giá tham chiếu của ECB; giá có thể bị trễ.';

  @override
  String get addToPortfolio => 'Thêm vào danh mục';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Thêm $symbol';
  }

  @override
  String get portfolioQuantity => 'Số cổ phiếu';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Giá mỗi cổ phiếu ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Ngày mua';

  @override
  String get portfolioAdd => 'Thêm';

  @override
  String get portfolioInvalidNumber => 'Hãy nhập một số lớn hơn 0.';

  @override
  String portfolioAdded(String symbol) {
    return 'Đã thêm $symbol vào danh mục.';
  }

  @override
  String get portfolioTotalValue => 'Tổng giá trị';

  @override
  String get portfolioToday => 'Hôm nay';

  @override
  String get portfolioGainLoss => 'Lãi/lỗ';

  @override
  String homeDividendsThisYear(String amount) {
    return 'Cổ tức năm nay: $amount';
  }

  @override
  String get portfolioInvested => 'Đã đầu tư';

  @override
  String get portfolioAllocation => 'Phân bổ';

  @override
  String get portfolioPositions => 'Vị thế';

  @override
  String portfolioAvgCost(String price) {
    return 'giá vốn TB $price';
  }

  @override
  String get portfolioYourPosition => 'Vị thế của bạn';

  @override
  String get portfolioPurchases => 'Lần mua';

  @override
  String get portfolioRemove => 'Xóa';

  @override
  String get portfolioExcluded =>
      'Các vị thế không có giá hoặc tỷ giá sẽ không được tính vào tổng.';

  @override
  String get priceAlerts => 'Cảnh báo giá';

  @override
  String get setPriceAlert => 'Đặt cảnh báo giá';

  @override
  String alertDialogTitle(String symbol) {
    return 'Cảnh báo giá · $symbol';
  }

  @override
  String get alertKindAbove => 'Tăng vượt';

  @override
  String get alertKindBelow => 'Giảm dưới';

  @override
  String get alertKindMove => 'Biến động mạnh trong ngày';

  @override
  String alertTargetPrice(String currency) {
    return 'Giá ($currency)';
  }

  @override
  String get alertMovePercent => 'Biến động trong ngày (%)';

  @override
  String get alertAlreadyMet => 'Giá đã vượt qua mức này.';

  @override
  String get alertSave => 'Đặt cảnh báo';

  @override
  String alertCreated(String symbol) {
    return 'Đã đặt cảnh báo cho $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Chưa có cảnh báo nào. Mở một cổ phiếu và nhấn vào biểu tượng chuông.';

  @override
  String get alertsNote =>
      'Cảnh báo được kiểm tra mỗi 5 phút khi WhatStock đang chạy. Trên máy tính, ứng dụng tiếp tục chạy ở thanh menu hoặc khay hệ thống; trên điện thoại, hiện chỉ báo khi ứng dụng đang mở.';

  @override
  String alertDescAbove(String price) {
    return 'Trên $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Dưới $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Biến động ngày ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Đã kích hoạt ngày $date ở giá $price';
  }

  @override
  String get alertRearm => 'Bật lại';

  @override
  String get alertDelete => 'Xóa';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol đã tăng vượt $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol đã giảm dưới $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol hôm nay biến động $percent';
  }

  @override
  String alertHitBody(String price) {
    return 'Giá hiện tại: $price';
  }

  @override
  String get alertOpen => 'Mở';

  @override
  String get keepInTrayTitle => 'Tiếp tục chạy khi đóng cửa sổ';

  @override
  String get keepInTraySubtitle =>
      'WhatStock ở lại thanh menu hoặc khay hệ thống để phím tắt và cảnh báo giá vẫn hoạt động.';

  @override
  String get termsOfUse => 'Điều khoản sử dụng';

  @override
  String get privacyPolicy => 'Chính sách quyền riêng tư';

  @override
  String get subscriptionLegal =>
      'Gói đăng ký tự động gia hạn hằng tháng cho đến khi bạn hủy. Khi đăng ký, bạn chấp nhận Điều khoản sử dụng và Chính sách quyền riêng tư.';

  @override
  String get deleteAccount => 'Xóa tài khoản';

  @override
  String get deleteAccountTitle => 'Xóa tài khoản của bạn?';

  @override
  String get deleteAccountBody =>
      'Tài khoản và mọi thứ lưu trên máy chủ của chúng tôi (email, hạn mức, lịch sử sử dụng) sẽ bị xóa vĩnh viễn, và các phân tích chưa dùng sẽ mất. Gói trả tiền trong trình duyệt được hủy ngay; gói qua App Store hoặc Google Play phải hủy trong phần cài đặt của cửa hàng.';

  @override
  String get deleteLocalData =>
      'Xóa cả dữ liệu trên thiết bị này (danh mục, cảnh báo, yêu thích, lịch sử, phân tích đã lưu)';

  @override
  String get deleteAccountConfirm => 'Xóa vĩnh viễn';

  @override
  String get accountDeleted => 'Tài khoản của bạn đã bị xóa.';

  @override
  String get errDeleteAccount =>
      'Không thể xóa tài khoản. Hãy kiểm tra kết nối và thử lại.';

  @override
  String get aiTrialBriefNote =>
      'Phân tích trong thời gian dùng thử ở mức Ngắn gọn và dùng mô hình AI nhanh hơn. Khi đăng ký gói, bạn có AI mạnh nhất của chúng tôi, nhiều lượt tìm kiếm web hơn cùng độ dài Tiêu chuẩn và Chuyên sâu.';

  @override
  String get billingMonthly => 'Hàng tháng';

  @override
  String get billingYearly => 'Hàng năm';

  @override
  String get yearlyDiscount => 'Miễn phí 2 tháng';

  @override
  String get perYear => '/ năm';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price mỗi tháng';
  }

  @override
  String get subscriptionLegalYearly =>
      'Gói đăng ký theo năm tự động gia hạn hằng năm cho đến khi bạn hủy. Khi đăng ký, bạn chấp nhận Điều khoản sử dụng và Chính sách quyền riêng tư.';

  @override
  String get myAnalyses => 'Phân tích của tôi';

  @override
  String get navAlerts => 'Cảnh báo';

  @override
  String get inviteTitle => 'Bản xem trước giới hạn';

  @override
  String get inviteBody =>
      'Hiện tại WhatStock chỉ dành cho người được mời. Hãy nhập mã mời bạn đã nhận được.';

  @override
  String get inviteCodeLabel => 'Mã mời';

  @override
  String get inviteContinue => 'Tiếp tục';

  @override
  String get inviteInvalid => 'Mã mời này không hợp lệ.';

  @override
  String get inviteExpired =>
      'Lời mời này đã hết hạn. Hãy xin mã mới từ người đã mời bạn.';

  @override
  String get inviteDeviceLimit =>
      'Mã mời này đã được dùng trên số thiết bị tối đa cho phép.';

  @override
  String get previewConfidential => 'Bản xem trước bảo mật';

  @override
  String get errPreviewDailyLimit =>
      'Bản xem trước này đã đạt giới hạn phân tích hôm nay. Hãy thử lại vào ngày mai.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count giờ trước',
      one: '1 giờ trước',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ngày trước',
      one: '1 ngày trước',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Cập nhật phân tích này?';

  @override
  String staleBody(String age) {
    return 'Phân tích này được tạo $age. Giá, tin tức và kết quả có thể đã thay đổi kể từ đó.';
  }

  @override
  String get staleKeep => 'Xem bản trước';

  @override
  String get staleRefresh => 'Tạo bản mới';

  @override
  String seeAll(int count) {
    return 'Xem tất cả ($count)';
  }

  @override
  String get searchAnalyses => 'Tìm trong phân tích của bạn';

  @override
  String get deleteAnalysis => 'Xóa';

  @override
  String analysisDeleted(String symbol) {
    return 'Đã xóa phân tích $symbol';
  }

  @override
  String get keyLevelAlertHint =>
      'Nhấn vào một mức giá để nhận cảnh báo khi giá chạm tới mức đó.';

  @override
  String get shareAnalysisTitle => 'Chia sẻ phân tích';

  @override
  String get shareAsImage => 'Chia sẻ dưới dạng ảnh';

  @override
  String get shareAsText => 'Chia sẻ dưới dạng văn bản';

  @override
  String get shareCardFooter => 'Tạo bằng WhatStock';

  @override
  String get shareCardDisclaimer =>
      'Phân tích AI · không phải lời khuyên đầu tư';

  @override
  String get referralTitle => 'Mời bạn bè';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lượt phân tích bổ sung',
      one: '1 lượt phân tích bổ sung',
    );
    return 'Chia sẻ mã của bạn. Bạn bè của bạn nhận ngay $_temp0, và bạn cũng nhận được số lượt tương tự sau lần phân tích đầu tiên của họ.';
  }

  @override
  String get referralYourCode => 'Mã của bạn';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Đã mời: $invited · Đã thưởng: $rewarded';
  }

  @override
  String get referralHaveCode => 'Bạn có mã từ bạn bè?';

  @override
  String get referralRedeem => 'Đổi mã';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Đã thêm $count lượt phân tích bổ sung. Chào mừng bạn!',
      one: 'Đã thêm 1 lượt phân tích bổ sung. Chào mừng bạn!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Mã này không tồn tại. Hãy kiểm tra và thử lại.';

  @override
  String get referralErrOwn => 'Bạn không thể đổi mã của chính mình.';

  @override
  String get referralErrAlready => 'Bạn đã đổi mã của một người bạn rồi.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lượt phân tích bổ sung',
      one: '1 lượt phân tích bổ sung',
    );
    return 'Mình phân tích cổ phiếu bằng WhatStock: chụp ảnh một cổ phiếu và AI sẽ giải thích. Dùng mã $code của mình, bạn nhận được $_temp0.';
  }

  @override
  String get referralCopied => 'Đã sao chép mã';

  @override
  String get onboardTitle1 => 'Chụp ảnh một cổ phiếu';

  @override
  String get onboardBody1 =>
      'Chỉ cần màn hình ứng dụng môi giới, một tờ báo hay logo công ty: WhatStock sẽ nhận diện cổ phiếu và hiển thị giá, biểu đồ cùng các chỉ số quan trọng.';

  @override
  String get onboardTitle2 => 'Hiểu rõ chỉ trong vài phút';

  @override
  String get onboardBody2 =>
      'Phân tích AI giải thích điều gì đang tác động đến cổ phiếu, các rủi ro, định giá và ba kịch bản cho hướng đi của giá – kèm nguồn tham khảo và bằng ngôn ngữ của bạn.';

  @override
  String get onboardTitle3 => 'Luôn nắm bắt tình hình';

  @override
  String get onboardBody3 =>
      'Yêu thích, danh mục của bạn và cảnh báo giá giúp bạn luôn cập nhật. Các bản phân tích được lưu trên thiết bị, sẵn sàng để mở lại bất cứ lúc nào.';

  @override
  String get onboardNext => 'Tiếp';

  @override
  String get onboardStart => 'Bắt đầu';

  @override
  String get onboardSkip => 'Bỏ qua';

  @override
  String changesTitle(String date) {
    return 'Kể từ lần phân tích trước ($date)';
  }

  @override
  String get changesPrice => 'Giá';

  @override
  String get changesNoMajor => 'Triển vọng không thay đổi đáng kể.';

  @override
  String get changesPreviousSummary => 'Tóm tắt trước đó';

  @override
  String get telemetryTitle => 'Giúp cải thiện WhatStock';

  @override
  String get telemetryBody =>
      'Chia sẻ số liệu thống kê sử dụng ẩn danh và báo cáo sự cố: tính năng nào được sử dụng và điều gì đã gặp lỗi. Không bao giờ bao gồm cổ phiếu, phân tích hay dữ liệu cá nhân của bạn. Bạn có thể thay đổi tùy chọn này bất cứ lúc nào trong Cài đặt.';

  @override
  String get telemetryAllow => 'Cho phép';

  @override
  String get telemetryDecline => 'Không, cảm ơn';

  @override
  String get telemetrySetting => 'Thống kê ẩn danh và báo cáo sự cố';

  @override
  String get telemetrySettingHint =>
      'Tần suất sử dụng tính năng và báo cáo lỗi, không bao gồm dữ liệu cá nhân hay nội dung tìm kiếm và phân tích của bạn.';

  @override
  String get askButton => 'Hỏi về phân tích này';

  @override
  String askTitle(String symbol) {
    return 'Câu hỏi về $symbol';
  }

  @override
  String get askIntro =>
      'Hỏi bất cứ điều gì về phân tích: một rủi ro có nghĩa là gì, điều gì có thể thay đổi triển vọng, một con số được tính ra như thế nào. Câu trả lời dựa trên phân tích này và không phải là lời khuyên đầu tư.';

  @override
  String get askHint => 'Đặt câu hỏi…';

  @override
  String get askSend => 'Gửi';

  @override
  String get askThinking => 'Đang suy nghĩ…';

  @override
  String get askSuggest1 => 'Rủi ro lớn nhất là gì?';

  @override
  String get askSuggest2 => 'Điều gì có thể thay đổi triển vọng?';

  @override
  String get askSuggest3 => 'Giải thích một cách đơn giản';

  @override
  String get askMaxReached =>
      'Đó là câu hỏi cuối cùng cho phân tích này. Hãy tạo phân tích mới để hỏi thêm.';

  @override
  String get errAskLimit =>
      'Bạn đã đạt giới hạn câu hỏi hôm nay. Hãy thử lại vào ngày mai.';

  @override
  String get eventTomorrow => 'Ngày mai';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days ngày nữa',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Kết quả kinh doanh quý';

  @override
  String get eventBeforeOpen => 'trước giờ mở cửa';

  @override
  String get eventAfterClose => 'sau giờ đóng cửa';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS dự kiến: $value';
  }

  @override
  String get eventFromAnalysis => 'Từ phân tích của bạn';

  @override
  String get eventDividend => 'Dự kiến có cổ tức';

  @override
  String get eventDividendEstimate =>
      'Ước tính từ các khoản chi trả bạn đã ghi lại';

  @override
  String get eventsHint =>
      'Ngày công bố kết quả kinh doanh của các cổ phiếu yêu thích và trong danh mục của bạn trong 90 ngày tới, các sự kiện có ngày cụ thể mà phân tích của bạn đã đánh dấu, cùng các khoản cổ tức dự kiến ước tính từ các khoản chi trả bạn đã ghi lại.';

  @override
  String get eventsEmpty =>
      'Không có sự kiện nào có ngày cụ thể trong 90 ngày tới. Hãy thêm cổ phiếu yêu thích hoặc vào danh mục để xem ngày công bố kết quả tại đây; cổ tức đã ghi lại sẽ hiển thị lần chi trả dự kiến tiếp theo.';

  @override
  String get compareTitle => 'So sánh';

  @override
  String get compareAdd => 'Thêm cổ phiếu';

  @override
  String get compareRemove => 'Xóa';

  @override
  String get compareTickerHint => 'Mã cổ phiếu, ví dụ MSFT';

  @override
  String get compareHint =>
      'Các chỉ số chính đặt cạnh nhau; giá trị tốt nhất ở mỗi hàng được làm nổi bật. Số tiền tính theo đơn vị tiền tệ riêng của từng cổ phiếu.';

  @override
  String get compareNoAnalysis => 'Chưa có phân tích';

  @override
  String get portfolioDividends => 'Cổ tức hằng năm';

  @override
  String portfolioDividendYield(String percent) {
    return 'Tỷ suất $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Cổ tức hằng năm dự kiến dựa trên cổ tức đã chi trả trong 12 tháng qua; các khoản chi trả trong tương lai không được đảm bảo.';

  @override
  String positionDividend(String amount) {
    return 'Cổ tức: $amount mỗi năm';
  }

  @override
  String get chartAvgCost => 'Giá vốn TB';

  @override
  String get chartAlertLevel => 'Cảnh báo';

  @override
  String get marketsToday => 'Thị trường hôm nay';

  @override
  String get notesTitle => 'Ghi chú của tôi';

  @override
  String get notesHint =>
      'Vì sao bạn mua, bạn đang theo dõi điều gì, điều gì sẽ khiến bạn bán?';

  @override
  String get notesInfo =>
      'Lưu trên thiết bị này và trong tài khoản của bạn nếu bạn đã đăng nhập. Phân tích AI có xét đến ghi chú của bạn.';

  @override
  String notesSaved(String date) {
    return 'Đã lưu $date';
  }

  @override
  String get peersTitle => 'Công ty tương tự';

  @override
  String get portfolioExport => 'Xuất dưới dạng CSV';

  @override
  String get portfolioImport => 'Nhập từ CSV';

  @override
  String get portfolioImportHint =>
      'Dán mỗi dòng một lần mua: mã cổ phiếu, số lượng, giá, tiền tệ, ngày (YYYY-MM-DD). Các cột có thể phân tách bằng dấu phẩy, dấu chấm phẩy hoặc tab; dòng tiêu đề là tùy chọn.';

  @override
  String get portfolioImportButton => 'Nhập';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Đã thêm $count lần mua',
      one: 'Đã thêm 1 lần mua',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Đã bỏ qua $count dòng',
      one: 'Đã bỏ qua 1 dòng',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Danh mục, mục yêu thích, cảnh báo giá và ghi chú được đồng bộ hóa trên mọi thiết bị của bạn.';

  @override
  String syncLast(String time) {
    return 'Đồng bộ hóa lần cuối $time';
  }

  @override
  String get syncNow => 'Đồng bộ hóa ngay';

  @override
  String get syncFailed =>
      'Đồng bộ hóa không thành công. Ứng dụng sẽ tự động thử lại.';

  @override
  String get alertEmailTitle => 'Gửi email khi cảnh báo được kích hoạt';

  @override
  String get alertEmailOn =>
      'Chúng tôi kiểm tra cảnh báo của bạn vài phút một lần và gửi email cho bạn, kể cả khi ứng dụng đã đóng.';

  @override
  String get alertEmailSignIn =>
      'Đăng nhập bằng email trong Cài đặt để nhận cảnh báo qua email, kể cả khi ứng dụng đã đóng.';

  @override
  String get portfolioHistory => 'Biến động giá trị';

  @override
  String get portfolioReviewTitle => 'Đánh giá danh mục bằng AI';

  @override
  String get portfolioReviewIntro =>
      'AI xem xét toàn bộ danh mục của bạn: mức độ tập trung, mức phơi nhiễm theo ngành và tiền tệ, rủi ro chung giữa các cổ phiếu của bạn và cổ tức. Dùng 1 lượt phân tích.';

  @override
  String get portfolioReviewButton => 'Đánh giá danh mục của tôi';

  @override
  String get portfolioReviewAgain => 'Đánh giá lại';

  @override
  String get portfolioReviewWorking => 'Đang đánh giá danh mục của bạn…';

  @override
  String get digestTitle => 'Tóm tắt hằng tuần qua email';

  @override
  String get digestHint =>
      'Mỗi thứ Hai: mục yêu thích và danh mục của bạn biến động ra sao trong tuần trước, cùng ngày công bố kết quả kinh doanh sắp tới.';

  @override
  String get benchmarkTitle => 'So với S&P 500';

  @override
  String get benchmarkTitleIndex => 'So với một chỉ số';

  @override
  String get benchmarkHintIndex =>
      'Như thể mỗi khoản mua được đưa vào một quỹ theo dõi chỉ số đã chọn ngay trong ngày đó. Không bao gồm cổ tức; lợi nhuận trong quá khứ không dự báo lợi nhuận tương lai.';

  @override
  String get benchmarkYours => 'Khoản mua của bạn';

  @override
  String benchmarkAhead(String points) {
    return 'Cao hơn chỉ số $points điểm phần trăm';
  }

  @override
  String benchmarkBehind(String points) {
    return 'Thấp hơn chỉ số $points điểm phần trăm';
  }

  @override
  String get portfolioSell => 'Bán';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Bán $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Giá bán mỗi cổ phiếu ($currency)';
  }

  @override
  String get portfolioSellDate => 'Ngày bán';

  @override
  String get portfolioSellAll => 'Tất cả';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Bạn đang giữ $quantity';
  }

  @override
  String get portfolioSold => 'Đã bán';

  @override
  String get portfolioRealized => 'Đã thực hiện';

  @override
  String get portfolioClosed => 'Vị thế đã đóng';

  @override
  String get portfolioClosedNote => 'Đã bán hết cổ phiếu';

  @override
  String get portfolioTransactions => 'Giao dịch';

  @override
  String get portfolioRealizedByYear => 'Lãi đã thực hiện theo năm';

  @override
  String get portfolioRealizedHint =>
      'Các lần bán được khớp trước với những lần mua cũ nhất của bạn (FIFO), quy đổi theo tỷ giá hôm nay. Khi khai thuế, hãy dùng sao kê của công ty môi giới.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Kể từ phân tích này, kết quả kinh doanh quý mới đã được công bố ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Kết quả mới';

  @override
  String get portfolioImportBrokers =>
      'Tệp xuất từ Revolut, Trading 212, Interactive Brokers, DEGIRO, Schwab, Fidelity và Robinhood cũng được nhận diện, kèm cả giao dịch bán và cổ tức (đã trừ thuế khấu trừ tại nguồn); tiền nạp được bỏ qua.';

  @override
  String get portfolioImportFile => 'Chọn tệp';

  @override
  String offlineBanner(String time) {
    return 'Không có kết nối – đang hiển thị dữ liệu đã lưu gần nhất ($time).';
  }

  @override
  String get glossMarketCap =>
      'Giá trị của toàn bộ công ty trên thị trường chứng khoán: giá cổ phiếu × số cổ phiếu.';

  @override
  String get glossSharesOutstanding =>
      'Số cổ phiếu công ty đã phát hành. Nếu con số này tăng, mỗi cổ phiếu sở hữu một phần nhỏ hơn; mua lại cổ phiếu sẽ làm nó giảm.';

  @override
  String get glossPeTrailing =>
      'Giá ÷ lợi nhuận trên mỗi cổ phiếu trong 12 tháng qua: bạn đang trả cho bao nhiêu năm lợi nhuận hiện tại. Thấp hơn là rẻ hơn, nhưng công ty tăng trưởng nhanh thường có P/E cao.';

  @override
  String get glossPeForward =>
      'Giống P/E, nhưng dùng lợi nhuận mà giới phân tích kỳ vọng trong 12 tháng tới. Thấp hơn P/E quá khứ nghĩa là lợi nhuận được kỳ vọng sẽ tăng.';

  @override
  String get glossPb =>
      'Giá ÷ giá trị sổ sách (tài sản trừ nợ) trên mỗi cổ phiếu. Khoảng 1 nghĩa là thị trường định giá công ty bằng những gì nó sở hữu trên giấy tờ.';

  @override
  String get glossPs =>
      'Giá trị thị trường ÷ doanh thu hằng năm. Hữu ích với công ty còn ít hoặc chưa có lợi nhuận; hãy so sánh trong cùng ngành.';

  @override
  String get glossEvToFcf =>
      'Giá trị công ty tính cả nợ (EV) ÷ tiền mặt công ty tạo ra trong một năm sau đầu tư. Thấp hơn nghĩa là bạn nhận được nhiều tiền mặt hơn so với giá phải trả.';

  @override
  String get glossPeg =>
      'P/E ÷ mức tăng trưởng lợi nhuận hằng năm dự kiến (%). Khoảng 1 thường được xem là hợp lý; nó đặt P/E trong bối cảnh tăng trưởng.';

  @override
  String get glossEps =>
      'Lợi nhuận trên mỗi cổ phiếu trong 12 tháng qua. EPS tăng đều qua các năm là một trong những dấu hiệu mạnh nhất của một công ty khỏe mạnh.';

  @override
  String get glossBeta =>
      'Cổ phiếu thường biến động theo thị trường đến mức nào: 1 = như thị trường, 1,5 = dao động lớn hơn khoảng 50%, dưới 1 = ổn định hơn.';

  @override
  String get glossRevenueTtm =>
      'Tổng doanh số 12 tháng qua, trước mọi chi phí.';

  @override
  String get glossNetIncomeTtm =>
      'Lợi nhuận còn lại sau mọi chi phí, lãi vay và thuế trong 12 tháng qua.';

  @override
  String get glossGrossMargin =>
      'Phần doanh thu còn lại sau chi phí trực tiếp của sản phẩm. Biên lợi nhuận cao thường cho thấy sức mạnh định giá.';

  @override
  String get glossOperatingMargin =>
      'Phần doanh thu còn lại sau chi phí vận hành doanh nghiệp (lương, tiền thuê, marketing), trước lãi vay và thuế.';

  @override
  String get glossNetMargin =>
      'Phần doanh thu trở thành lợi nhuận cuối cùng. 20% nghĩa là cứ 100 doanh số thì có 20 là lợi nhuận.';

  @override
  String get glossRoe =>
      'Lợi nhuận trên vốn chủ sở hữu: lợi nhuận hằng năm ÷ vốn của chủ sở hữu. Cho thấy ban lãnh đạo dùng tiền của cổ đông tốt đến đâu; trên khoảng 15% là mạnh.';

  @override
  String get glossRoa =>
      'Lợi nhuận trên tổng tài sản: lợi nhuận hằng năm ÷ mọi thứ công ty sở hữu. Hãy so sánh trong cùng ngành.';

  @override
  String get glossDebtToEquity =>
      'Nợ ÷ vốn của chủ sở hữu. Cao hơn nghĩa là vay nhiều tiền hơn: rủi ro lớn hơn khi lãi suất tăng hoặc kinh doanh chậm lại.';

  @override
  String get glossCurrentRatio =>
      'Tài sản ngắn hạn ÷ các khoản phải trả trong vòng một năm. Trên 1 nghĩa là công ty có thể trang trải các khoản phải trả sắp tới.';

  @override
  String get glossRevenueGrowth =>
      'Doanh thu đã tăng bao nhiêu so với một năm trước.';

  @override
  String get glossEpsGrowth =>
      'Lợi nhuận trên mỗi cổ phiếu đã tăng bao nhiêu so với một năm trước.';

  @override
  String get glossDividendYield =>
      'Cổ tức hằng năm ÷ giá cổ phiếu: thu nhập tiền mặt bạn nhận được mỗi năm, tính theo phần trăm số tiền bạn bỏ ra.';

  @override
  String get glossDividendPerShare =>
      'Cổ tức đã trả cho một cổ phiếu trong năm qua.';

  @override
  String get glossPayoutRatio =>
      'Phần lợi nhuận được chi trả dưới dạng cổ tức. Trên 100% thì công ty chi nhiều hơn số tiền kiếm được, điều hiếm khi kéo dài.';

  @override
  String get portfolioBeta => 'Beta danh mục';

  @override
  String get glossPortfolioBeta =>
      'Beta của các cổ phiếu bạn nắm giữ, có trọng số theo giá trị: cổ phiếu của bạn biến động khoảng bao nhiêu phần trăm khi thị trường biến động 1%. Trên 1 thì dao động mạnh hơn thị trường, dưới 1 thì ít hơn. Không tính tiền mặt.';

  @override
  String get portfolioTop3 => '3 vị thế lớn nhất';

  @override
  String get glossPortfolioTop3 =>
      'Tỷ trọng giá trị cổ phiếu của bạn nằm trong ba vị thế lớn nhất. Tỷ lệ này càng cao, tin xấu từ một công ty duy nhất càng có thể ảnh hưởng nhiều đến toàn bộ danh mục.';

  @override
  String get glossDividendGrowth5y =>
      'Cổ tức trên mỗi cổ phiếu đã tăng trung bình bao nhiêu mỗi năm trong 5 năm qua. Tăng trưởng đều đặn thường cho thấy công ty tin tưởng vào dòng tiền của mình; việc cắt giảm thường là dấu hiệu cảnh báo.';

  @override
  String get glossYieldOnCost =>
      'Cổ tức đã nhận trong 12 tháng gần nhất chia cho số tiền bạn đã bỏ ra để mua những cổ phiếu còn đang nắm giữ. Khác với tỷ suất cổ tức, chỉ số này được tính trên giá mua của chính bạn, không phải giá hôm nay.';

  @override
  String get glossTitle => 'Nghĩa là gì?';

  @override
  String get watchNewsTitle => 'Tin tức về cổ phiếu của bạn';

  @override
  String get undo => 'Hoàn tác';

  @override
  String get watchSort => 'Sắp xếp';

  @override
  String get watchSortOwn => 'Thứ tự của tôi';

  @override
  String get watchSortGainers => 'Tăng mạnh nhất trước';

  @override
  String get watchSortLosers => 'Giảm mạnh nhất trước';

  @override
  String get watchSortName => 'Theo mã (A–Z)';

  @override
  String get watchHint =>
      'Kéo tay cầm để sắp xếp lại, vuốt sang trái để xóa. Đường kẻ hiển thị 30 ngày qua.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: bản phân tích của bạn đã sẵn sàng.';
  }

  @override
  String alertFromCost(String price) {
    return 'Dựa trên giá mua trung bình của bạn ($price):';
  }

  @override
  String get briefTitle => 'Hôm nay với cổ phiếu của bạn';

  @override
  String get briefButton => 'Tóm tắt hôm nay';

  @override
  String get briefHint =>
      'Bản tóm tắt AI ngắn về cách danh mục và mã yêu thích của bạn biến động hôm nay và tin tức mới nhất nói gì về chúng. Không dùng lượt phân tích.';

  @override
  String get briefRefresh => 'Cập nhật';

  @override
  String get sectionEarnings => 'Kết quả kinh doanh';

  @override
  String earningsNext(String date) {
    return 'Báo cáo tiếp theo: $date';
  }

  @override
  String get earningsExpected => 'EPS dự kiến';

  @override
  String get earningsReported => 'EPS công bố';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: 'Bằng hoặc vượt EPS dự kiến trong $beats/$total quý gần nhất',
      one: 'Bằng hoặc vượt EPS dự kiến trong $beats/1 quý',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol công bố kết quả kinh doanh quý vào ngày mai';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol công bố kết quả kinh doanh quý hôm nay';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return '$symbol dự kiến trả cổ tức hôm nay';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Khoảng $amount. Hãy ghi lại vào danh mục khi tiền về.';
  }

  @override
  String get dividendRemindersTitle => 'Nhắc cổ tức';

  @override
  String get dividendRemindersSubtitle =>
      'Thông báo vào ngày dự kiến có cổ tức theo nhịp các khoản chi trả bạn đã ghi lại, để bạn ghi nhận';

  @override
  String get earningsRemindersTitle => 'Nhắc kết quả kinh doanh';

  @override
  String get earningsRemindersSubtitle =>
      'Thông báo một ngày trước khi cổ phiếu yêu thích hoặc trong danh mục của bạn công bố kết quả kinh doanh quý';

  @override
  String addAllToFavorites(int count) {
    return 'Thêm tất cả vào yêu thích ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Nhập từ ảnh chụp màn hình';

  @override
  String get holdingsReading => 'Đang đọc các vị thế của bạn…';

  @override
  String get holdingsReviewTitle => 'Vị thế tìm thấy';

  @override
  String get holdingsReviewHint =>
      'Hãy kiểm tra các con số trước khi thêm. Giá là giá mua trung bình mỗi cổ phiếu của bạn, không phải giá hôm nay.';

  @override
  String get holdingsNoPrice => 'Không có giá mua trung bình trên ảnh';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Thêm $count vị thế',
      one: 'Thêm 1 vị thế',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Không tìm thấy vị thế cổ phiếu nào trong ảnh này. Hãy thử ảnh chụp màn hình trang vị thế hoặc danh mục nắm giữ tại công ty môi giới của bạn.';

  @override
  String get week52Range => 'Biên độ 52 tuần';

  @override
  String week52BelowHigh(String percent) {
    return 'Thấp hơn mức cao nhất 52 tuần $percent';
  }

  @override
  String get week52AtHigh => 'Ở mức cao nhất 52 tuần';

  @override
  String get alertKindTrailing => 'Giảm từ đỉnh';

  @override
  String get alertTrailingPercent => 'Mức giảm từ đỉnh (%)';

  @override
  String get alertTrailingHint =>
      'Bám theo giá khi tăng: cảnh báo khi giá giảm chừng này so với mức cao nhất kể từ lúc bạn đặt.';

  @override
  String alertDescTrailing(String percent) {
    return 'Giảm $percent từ đỉnh';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'đỉnh đến nay: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol đã giảm $percent từ đỉnh';
  }

  @override
  String get sectionInsiders => 'Giao dịch nội bộ';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lần mua',
      one: '1 lần mua',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lần bán',
      one: '1 lần bán',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Ròng: $shares cổ phiếu';
  }

  @override
  String get insiderBuy => 'Đã mua';

  @override
  String get insiderSell => 'Đã bán';

  @override
  String get insiderHint =>
      'Các giao dịch mua và bán trên thị trường mở của lãnh đạo và thành viên hội đồng quản trị trong 90 ngày qua (SEC Form 4). Không tính thực hiện quyền chọn và cổ phiếu thưởng.';

  @override
  String get insiderNone =>
      'Không có giao dịch mua hoặc bán nội bộ trên thị trường mở trong 90 ngày qua.';

  @override
  String get analystTrend => 'Ý kiến thay đổi thế nào qua từng tháng';

  @override
  String get watchListAll => 'Tất cả';

  @override
  String get watchListNew => 'Danh sách mới';

  @override
  String get watchListName => 'Tên danh sách';

  @override
  String get watchListRename => 'Đổi tên danh sách';

  @override
  String get watchListDelete => 'Xóa danh sách';

  @override
  String get watchListAddTo => 'Thêm vào danh sách';

  @override
  String get watchListEmpty =>
      'Danh sách này chưa có cổ phiếu nào. Nhấn nút danh sách bên cạnh cổ phiếu để thêm.';

  @override
  String get portfolioAskTitle => 'Câu hỏi về danh mục của bạn';

  @override
  String get rangeYtd => 'Từ đầu năm';

  @override
  String get backupTitle => 'Sao lưu';

  @override
  String get backupSave => 'Lưu bản sao lưu';

  @override
  String get backupSaveHint =>
      'Mục yêu thích, danh sách, danh mục, cảnh báo và ghi chú của bạn trong một tệp.';

  @override
  String get backupRestore => 'Khôi phục từ bản sao lưu';

  @override
  String get backupRestoreHint =>
      'Thêm nội dung trong tệp; không có gì bạn đang có bị xóa.';

  @override
  String get backupRestored => 'Đã khôi phục bản sao lưu.';

  @override
  String get backupInvalid => 'Tệp này không phải bản sao lưu WhatStock.';

  @override
  String get allocationPositions => 'Cổ phiếu';

  @override
  String get allocationSectors => 'Lĩnh vực';

  @override
  String get allocationCurrencies => 'Tiền tệ';

  @override
  String get allocationAccounts => 'Tài khoản';

  @override
  String get compareReturn1y => 'Lợi suất 1 năm';

  @override
  String get compareFromHigh => 'Cách mức cao nhất 52 tuần';

  @override
  String get briefAutoTitle => 'Tóm tắt hằng ngày mỗi sáng';

  @override
  String get briefAutoSubtitle =>
      '“Hôm nay với cổ phiếu của bạn” được tự động tạo sau 7:00 sáng khi ứng dụng đang chạy; trên máy tính, một thông báo sẽ cho bạn biết. Dùng hạn mức câu hỏi hằng ngày của bạn, không dùng lượt phân tích.';

  @override
  String get targetsButton => 'Phân bổ mục tiêu';

  @override
  String get targetsTitle => 'Phân bổ mục tiêu';

  @override
  String get targetsHint =>
      'Đặt tỷ trọng trong danh mục mà mỗi cổ phiếu nên có. Để trống nếu không có mục tiêu. Sau đó ứng dụng sẽ cho biết cần mua hoặc bán gì để đạt được.';

  @override
  String targetsSum(String percent) {
    return 'Tổng: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Mua ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Bán ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Đạt mục tiêu';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol vượt EPS dự kiến';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol không đạt EPS dự kiến';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'EPS công bố $actual, dự kiến $estimate';
  }

  @override
  String get newsExplain => 'Điều này có nghĩa là gì?';

  @override
  String get watchAlertAll => 'Cảnh báo biến động mạnh trong ngày';

  @override
  String get watchAlertAllHint =>
      'Cảnh báo giá cho mọi cổ phiếu trong danh sách này, sẽ báo khi cổ phiếu biến động chừng này trong một ngày, tăng hoặc giảm. Cổ phiếu nào đã có cảnh báo thì giữ nguyên.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Đã đặt $count cảnh báo',
      one: 'Đã đặt 1 cảnh báo',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Xuất lãi lỗ đã thực hiện (CSV)';

  @override
  String get portfolioAnnualReturn => 'Lợi nhuận hằng năm';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / năm';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Lợi nhuận hằng năm theo trọng số tiền (XIRR): tính đến thời điểm bạn mua và bán, nên tiền nạp thêm sau này không làm sai lệch con số. Hiển thị khi lần mua đầu tiên của bạn đã được ít nhất một năm; không bao gồm cổ tức.';

  @override
  String get eventsAddToCalendar => 'Thêm vào lịch (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Cảnh báo danh mục';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Thông báo khi toàn bộ danh mục của bạn biến động chừng này trong một ngày.';

  @override
  String get portfolioMoveAlertOff => 'Tắt';

  @override
  String portfolioMoveUp(String percent) {
    return 'Danh mục của bạn hôm nay tăng $percent';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Danh mục của bạn hôm nay giảm $percent';
  }

  @override
  String get whatIfTitle => 'Nếu bạn đã đầu tư thì sao?';

  @override
  String get whatIfAmount => 'Số tiền';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount đầu tư từ $period trước sẽ có giá trị hôm nay là';
  }

  @override
  String get whatIfNote =>
      'Chỉ dựa trên giá cổ phiếu: không bao gồm cổ tức, phí và thuế. Lợi nhuận trong quá khứ không dự báo lợi nhuận tương lai.';

  @override
  String get watchShare => 'Chia sẻ danh sách';

  @override
  String get watchImport => 'Thêm mã cổ phiếu';

  @override
  String get watchImportHint =>
      'Dán các mã cổ phiếu, phân tách bằng dấu phẩy, dấu cách hoặc xuống dòng – ví dụ một danh sách ai đó đã chia sẻ với bạn.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Đã thêm $count cổ phiếu',
      one: 'Đã thêm 1 cổ phiếu',
      zero: 'Không có cổ phiếu mới',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Lớn nhất trước';

  @override
  String get positionsSortGain => 'Lợi nhuận tổng cao nhất trước';

  @override
  String get positionsSortToday => 'Tốt nhất hôm nay trước';

  @override
  String get chartMyBuys => 'Lần mua của bạn';

  @override
  String get chartMySells => 'Lần bán của bạn';

  @override
  String get shortcutsTitle => 'Phím tắt';

  @override
  String usMarketOpen(String time) {
    return 'Thị trường Mỹ mở cửa · đóng cửa sau $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Thị trường Mỹ đóng cửa · mở cửa sau $time';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes phút';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours giờ $minutes phút';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days ngày $hours giờ';
  }

  @override
  String get dividendGoalSet => 'Đặt mục tiêu cổ tức hằng tháng';

  @override
  String get dividendGoalTitle => 'Mục tiêu cổ tức hằng tháng';

  @override
  String get dividendGoalAmount => 'Cổ tức mỗi tháng';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Khoảng $amount mỗi tháng theo tỷ suất hiện tại: $percent mục tiêu $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Khoảng $amount mỗi tháng theo tỷ suất hiện tại: đã đạt mục tiêu $goal';
  }

  @override
  String get portfolioAccount => 'Tài khoản';

  @override
  String get portfolioAccountHint => 'ví dụ: TBSZ 2026 (không bắt buộc)';

  @override
  String get portfolioAccountAdd => 'Chỉ định tài khoản';

  @override
  String get portfolioAccountsAll => 'Tất cả tài khoản';

  @override
  String get portfolioAccountNote =>
      'Chỉ giao dịch và cổ tức của tài khoản này. Tiền mặt, mục tiêu và đánh giá bằng AI hiển thị trong Tất cả tài khoản.';

  @override
  String get portfolioNoAccount => 'Không có tài khoản';

  @override
  String portfolioFee(String currency) {
    return 'Phí giao dịch ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Thêm phí';

  @override
  String portfolioFeeRow(String amount) {
    return 'Phí: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'Tổng kết năm';

  @override
  String get portfolioProceeds => 'Tiền thu từ bán';

  @override
  String get portfolioCostBasis => 'Giá vốn';

  @override
  String get portfolioFeesPaid => 'Phí đã trả';

  @override
  String get portfolioAnnualSummaryNote =>
      'Số tiền theo đồng tiền gốc, không quy đổi. Tiền thu từ bán đã trừ phí bán; giá vốn đã gồm phí mua (FIFO). Khi khai thuế, hãy quy đổi theo tỷ giá mà cơ quan thuế yêu cầu.';

  @override
  String get portfolioShare => 'Chia sẻ hiệu suất';

  @override
  String get portfolioShareHeading => 'Danh mục của tôi';

  @override
  String get portfolioTopHoldings => 'Vị thế lớn nhất';

  @override
  String get portfolioShareNote =>
      'Chỉ chia sẻ tỷ lệ phần trăm, không có số tiền.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count vị thế',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'Không phải lời khuyên đầu tư';

  @override
  String get contributionButton => 'Đầu tư tiền mới';

  @override
  String contributionAmount(String currency) {
    return 'Số tiền đầu tư ($currency)';
  }

  @override
  String get contributionHint =>
      'Chỉ mua, không bán: các vị thế thấp hơn mục tiêu nhiều nhất sẽ nhận tiền trước.';

  @override
  String contributionShares(String shares) {
    return '≈ $shares cổ phiếu';
  }

  @override
  String contributionMissing(String symbols) {
    return 'Không có giá hiện tại cho $symbols: không được tính vào phần phân bổ.';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'Nếu lợi nhuận hằng năm được duy trì ($rate), bạn sẽ đạt mục tiêu vào khoảng năm $year.';
  }

  @override
  String get portfolioMaxDrawdown => 'Mức sụt giảm tối đa';

  @override
  String get glossMaxDrawdown =>
      'Mức giảm lớn nhất của giá trị cổ phiếu bạn nắm giữ từ một đỉnh trước đó xuống một đáy sau đó, không tính ảnh hưởng của việc mua và bán của bạn (theo trọng số thời gian). Cho thấy danh mục của bạn đã từng trải qua đợt sụt giảm sâu đến mức nào.';

  @override
  String watchSince(String date) {
    return 'Kể từ khi thêm vào yêu thích ($date)';
  }

  @override
  String get portfolioSampleTry => 'Dùng thử với danh mục mẫu';

  @override
  String get portfolioSampleBanner =>
      'Đây là danh mục mẫu. Hãy thêm các khoản mua của bạn bên cạnh, hoặc xóa danh mục này.';

  @override
  String get portfolioSampleRemove => 'Xóa danh mục mẫu';

  @override
  String get portfolioStopsAll => 'Trailing stop cho tất cả vị thế';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Đã đặt $count trailing stop',
      one: 'Đã đặt 1 trailing stop',
      zero: 'Mọi vị thế đã có trailing stop',
    );
    return '$_temp0';
  }

  @override
  String portfolioSinceSale(String percent) {
    return '$percent kể từ khi bán';
  }

  @override
  String get lotPreviewRealized => 'Đã thực hiện từ lần bán này (FIFO):';

  @override
  String lotPreviewAverage(String after, String before) {
    return 'Giá vốn TB mới: $after (hiện tại $before)';
  }

  @override
  String get portfolioYtdReturn => 'Lợi nhuận năm nay';

  @override
  String get glossTwrYtd =>
      'Lợi nhuận theo trọng số thời gian từ đầu năm (hoặc từ lần mua đầu tiên của bạn, nếu đó là trong năm nay): mỗi ngày tính mức thay đổi của các cổ phiếu bạn nắm giữ vào ngày đó, và các ngày được nối tiếp với nhau – tiền bạn nạp vào hoặc rút ra không phải là lợi nhuận, nên có thể so sánh với một chỉ số. Bên dưới: chỉ số đã chọn trong cùng kỳ.';

  @override
  String alertDistance(String price, String percent) {
    return 'Hiện tại $price · còn $percent';
  }

  @override
  String get watchSortSince => 'Theo thay đổi kể từ khi thêm';

  @override
  String get portfolioTodayMovers => 'Biến động mạnh nhất hôm nay:';

  @override
  String get lotNoteAdd => 'Thêm ghi chú';

  @override
  String get lotNoteBuyHint =>
      'Vì sao bạn mua? Nội dung sẽ được thêm vào ghi chú của cổ phiếu, kèm ngày.';

  @override
  String get lotNoteSellHint =>
      'Vì sao bạn bán? Nội dung sẽ được thêm vào ghi chú của cổ phiếu, kèm ngày.';

  @override
  String get lotNoteBought => 'Đã mua';

  @override
  String get positionHeld => 'Thời gian nắm giữ';

  @override
  String durationMonths(int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months tháng',
    );
    return '$_temp0';
  }

  @override
  String durationDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days ngày',
    );
    return '$_temp0';
  }

  @override
  String positionHeldSince(String date) {
    return 'từ $date';
  }

  @override
  String lotPreviewWeight(String after, String before) {
    return 'Tỷ trọng trong danh mục sau giao dịch: $after (hiện tại $before)';
  }

  @override
  String lotFromCash(String amount) {
    return 'Thanh toán từ tiền mặt (hiện tại $amount)';
  }

  @override
  String lotToCash(String amount) {
    return 'Cộng vào tiền mặt (hiện tại $amount)';
  }

  @override
  String get portfolioGoalSet => 'Đặt mục tiêu';

  @override
  String get portfolioGoalTitle => 'Mục tiêu danh mục';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent mục tiêu $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Đã đạt mục tiêu $amount';
  }

  @override
  String get portfolioGoalRemove => 'Xóa mục tiêu';

  @override
  String get alertEdit => 'Sửa cảnh báo';

  @override
  String get positionOpenLots => 'Vẫn đang nắm giữ (cũ nhất trước)';

  @override
  String get lotRemoved => 'Đã xóa giao dịch';

  @override
  String get alertDeleted => 'Đã xóa cảnh báo';

  @override
  String get alertsClearTriggered => 'Xóa các cảnh báo đã kích hoạt';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Đã xóa $count cảnh báo',
      one: 'Đã xóa 1 cảnh báo',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Màn hình chính';

  @override
  String get allocationCountries => 'Quốc gia';

  @override
  String get newsExplainNoteResearch =>
      'Giải thích do AI tạo: AI tra cứu thông tin trên web, mở bài báo và đánh giá mức độ đáng tin cậy của nguồn. Không phải là lời khuyên đầu tư. Dùng hạn mức câu hỏi hằng ngày của bạn, không dùng lượt phân tích.';

  @override
  String get sourceOfficial => 'Chính thức';

  @override
  String get sourcePressRelease => 'Thông cáo báo chí';

  @override
  String get sourceMajorNews => 'Báo lớn';

  @override
  String get sourceOpinion => 'Ý kiến';

  @override
  String get earningsSummaryButton => 'Báo cáo mới nhất có gì?';

  @override
  String get earningsSummaryNote =>
      'Tóm tắt do AI tạo về thông báo kết quả kinh doanh của công ty và các bài báo mà AI tìm thấy trên web. Không phải là lời khuyên đầu tư. Dùng hạn mức câu hỏi hằng ngày của bạn, không dùng lượt phân tích.';

  @override
  String get compareLastSurprise => 'EPS quý trước so với dự kiến';

  @override
  String get compareNextReport => 'Báo cáo tiếp theo';

  @override
  String get resolvingDescription => 'Đang xác định cổ phiếu bạn muốn nói…';

  @override
  String get instrumentTitle => 'Về công cụ này';

  @override
  String get instrumentHint =>
      'Không có hồ sơ công ty cho mã này – đây có thể là ETF, quỹ hoặc chứng chỉ lưu ký. Hãy hỏi AI xem đây là gì, nắm giữ những gì và chi phí bao nhiêu.';

  @override
  String get instrumentAsk => 'Đây là gì?';

  @override
  String get instrumentNote =>
      'Giải thích do AI tạo từ trang quỹ của tổ chức phát hành và các trang tài chính mà AI tìm thấy trên web. Không phải là lời khuyên đầu tư. Dùng hạn mức câu hỏi hằng ngày của bạn, không dùng lượt phân tích.';

  @override
  String suggestAskAi(String query) {
    return 'Hỏi AI: “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Không có giá hiện tại cho $symbols.';
  }

  @override
  String get eventsRecentResults => 'Kết quả kinh doanh mới công bố';

  @override
  String get saveToNotes => 'Lưu vào ghi chú của tôi';

  @override
  String get savedToNotes => 'Đã lưu vào ghi chú của bạn';

  @override
  String get portfolioDividendsReceived => 'Cổ tức đã nhận';

  @override
  String get portfolioDividendsThisYear => 'Năm nay';

  @override
  String get portfolioDividendsAllTime => 'Tổng cộng';

  @override
  String get portfolioAddDividend => 'Thêm cổ tức';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Số tiền đã nhận ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Ngày chi trả';

  @override
  String get portfolioDividendsEmpty =>
      'Chưa có cổ tức nào được ghi lại. Thêm thủ công hoặc nhập file xuất từ công ty chứng khoán của bạn – các dòng cổ tức trong đó cũng được nhận diện.';

  @override
  String get portfolioSplit => 'Chia tách cổ phiếu';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Chia tách cổ phiếu: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Các giao dịch mua và bán có ngày trước đợt chia tách sẽ được điều chỉnh: số cổ phiếu được nhân lên và giá mỗi cổ phiếu được chia xuống, nên giá vốn không thay đổi.';

  @override
  String get portfolioSplitRatio => 'Tỷ lệ (mới : cũ)';

  @override
  String get portfolioSplitRatioError =>
      'Nhập tỷ lệ như 10:1, hoặc 1:10 cho chia tách ngược (gộp cổ phiếu).';

  @override
  String get portfolioSplitDate => 'Ngày chia tách';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Chia tách cổ phiếu $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Đã xóa chia tách cổ phiếu';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Đã thêm $count đợt chia tách cổ phiếu',
      one: 'Đã thêm 1 đợt chia tách cổ phiếu',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Đã thêm $count khoản cổ tức',
      one: 'Đã thêm 1 khoản cổ tức',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Xuất cổ tức (CSV)';

  @override
  String get portfolioDividendDeleted => 'Đã xóa cổ tức';

  @override
  String get portfolioDividendsHint =>
      'Số tiền đúng như đã về tài khoản của bạn, theo đồng tiền chi trả; tổng được quy đổi theo tỷ giá hôm nay. Khi kê khai thuế, hãy dùng sao kê của công ty chứng khoán.';

  @override
  String get awayTitle => 'Trong lúc bạn vắng mặt';

  @override
  String awaySince(String when) {
    return 'Từ $when';
  }

  @override
  String get awayQuiet => 'Không có biến động đáng kể.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cảnh báo đã kích hoạt',
      one: '1 cảnh báo đã kích hoạt',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Đã công bố kết quả: $symbols';
  }

  @override
  String get moveWhyButton => 'Vì sao hôm nay biến động?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent hôm nay';
  }

  @override
  String get moveWhyNote =>
      'Giải thích của AI dựa trên tin tức hôm nay tìm thấy trên web; lý do thực sự có thể chưa rõ hoặc khác. Không phải lời khuyên đầu tư. Dùng hạn mức câu hỏi hằng ngày của bạn, không phải phân tích.';

  @override
  String get sectionTechnical => 'Bức tranh kỹ thuật';

  @override
  String get labelSma50 => 'Trung bình 50 ngày';

  @override
  String get labelSma200 => 'Trung bình 200 ngày';

  @override
  String get labelRsi => 'RSI (14 ngày)';

  @override
  String get labelVolatility30 => 'Biến động (30 ngày)';

  @override
  String techAbove(String percent) {
    return 'cao hơn $percent';
  }

  @override
  String techBelow(String percent) {
    return 'thấp hơn $percent';
  }

  @override
  String get techOverbought => 'quá mua';

  @override
  String get techOversold => 'quá bán';

  @override
  String get techNeutral => 'trung lập';

  @override
  String get techGoldenCross =>
      'Trung bình 50 ngày nằm trên trung bình 200 ngày – xu hướng tăng theo cách đọc cổ điển.';

  @override
  String get techDeathCross =>
      'Trung bình 50 ngày nằm dưới trung bình 200 ngày – xu hướng giảm theo cách đọc cổ điển.';

  @override
  String get glossSma50 =>
      'Giá đóng cửa trung bình của 50 phiên giao dịch gần nhất. Giá nằm trên đường này thường được xem là sức mạnh ngắn hạn, nằm dưới là sự suy yếu.';

  @override
  String get glossSma200 =>
      'Giá đóng cửa trung bình của 200 phiên giao dịch gần nhất – đường xu hướng dài hạn cổ điển. Nhiều nhà đầu tư coi giá nằm trên đường này là xu hướng tăng dài hạn.';

  @override
  String get glossRsi =>
      'Chỉ số sức mạnh tương đối: so sánh mức tăng gần đây với mức giảm gần đây trên thang 0–100. Trên 70 cổ phiếu thường được gọi là quá mua (tăng nhanh), dưới 30 là quá bán – nhưng một xu hướng mạnh có thể duy trì ở đó rất lâu.';

  @override
  String get glossVolatility =>
      'Mức độ giá dao động từ ngày này sang ngày khác, quy ra một năm: 20% nghĩa là trong một năm thông thường giá dao động trong khoảng ±20%. Biến động càng cao thì biên độ dao động hai chiều càng lớn.';

  @override
  String get techNote =>
      'Tính từ giá đóng cửa hàng ngày. Tín hiệu kỹ thuật mô tả quá khứ, không phải tương lai.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$above trong $count vị thế đang trên đường trung bình 200 ngày';
  }

  @override
  String get watchSignalsTitle => 'Tín hiệu';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · quá bán';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · quá mua';
  }

  @override
  String get signalCrossedAbove => 'cắt lên trên trung bình 200 ngày';

  @override
  String get signalCrossedBelow => 'cắt xuống dưới trung bình 200 ngày';

  @override
  String get signalAlertsTitle => 'Thông báo tín hiệu kỹ thuật';

  @override
  String get signalAlertsSubtitle =>
      'Mỗi ngày một lần, khi cổ phiếu bạn theo dõi rơi vào vùng quá bán hoặc quá mua (RSI), hoặc giá cắt qua trung bình 200 ngày.';

  @override
  String get signalAlertsNotification => 'Tín hiệu kỹ thuật';

  @override
  String get glossaryPageTitle => 'Bảng thuật ngữ';

  @override
  String get glossaryPageSubtitle =>
      'Giải thích đơn giản mọi chỉ số ứng dụng hiển thị, từ P/E đến RSI';

  @override
  String get glossarySearchHint => 'Tìm trong bảng thuật ngữ';

  @override
  String get portfolioCash => 'Tiền mặt';

  @override
  String get portfolioCashTitle => 'Số dư tiền mặt';

  @override
  String get portfolioCashHint =>
      'Tiền chưa đầu tư tại công ty chứng khoán của bạn, theo từng loại tiền. Được tính vào tổng giá trị và phân bổ; không tính vào lợi nhuận.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Số tiền ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Đặt số dư tiền mặt';

  @override
  String get portfolioDividendsByMonth => 'Theo tháng';

  @override
  String get dividendsLegendReceived => 'Đã nhận';

  @override
  String get dividendsLegendExpected => 'Dự kiến';

  @override
  String get portfolioDividendsExpected => 'Dự kiến sắp tới';

  @override
  String get portfolioDividendsExpectedNote =>
      'Ước tính từ ngày và số tiền của các khoản chi trả bạn đã ghi lại; công ty có thể thay đổi hoặc bỏ qua.';

  @override
  String portfolioDividendAround(String date) {
    return 'khoảng $date';
  }
}
