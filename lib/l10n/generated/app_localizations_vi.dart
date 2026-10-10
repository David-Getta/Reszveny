// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'StockLens';

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
    return 'Nhấn $shortcut ở bất kỳ đâu để gọi StockLens.';
  }

  @override
  String get trayOpen => 'Mở StockLens';

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
}
