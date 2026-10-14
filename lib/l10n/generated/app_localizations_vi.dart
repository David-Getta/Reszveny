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
      'Chỉ lưu trên thiết bị này. Tổng được quy đổi theo tỷ giá tham chiếu của ECB; giá có thể bị trễ.';

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
}
