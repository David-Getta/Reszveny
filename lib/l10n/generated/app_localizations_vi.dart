// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'Reszveny';

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
  String get errRecognitionUnreachable => 'Không thể kết nối tới dịch vụ nhận diện. Hãy kiểm tra kết nối internet.';

  @override
  String errRecognitionHttp(String status) {
    return 'Dịch vụ nhận diện trả về lỗi (HTTP $status).';
  }

  @override
  String get errRecognitionRefused => 'Dịch vụ nhận diện không thể xử lý ảnh này.';

  @override
  String get errRecognitionTruncated => 'Phản hồi nhận diện bị cắt ngắn. Vui lòng thử lại.';

  @override
  String get errRecognitionBadResponse => 'Phản hồi không mong đợi từ dịch vụ nhận diện.';

  @override
  String get errRecognitionEmpty => 'Dịch vụ nhận diện trả về phản hồi trống.';

  @override
  String get errMissingFinnhubKey => 'Chưa cấu hình dữ liệu thị trường (thiếu FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable => 'Không thể kết nối tới dịch vụ dữ liệu thị trường. Hãy kiểm tra kết nối internet.';

  @override
  String get errMarketRateLimited => 'Quá nhiều yêu cầu tới dịch vụ dữ liệu thị trường. Vui lòng đợi một phút.';

  @override
  String errMarketHttp(String status) {
    return 'Dịch vụ dữ liệu thị trường trả về lỗi (HTTP $status).';
  }

  @override
  String get errMarketBadResponse => 'Phản hồi không mong đợi từ dịch vụ dữ liệu thị trường.';

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
    return 'Nhấn $shortcut ở bất kỳ đâu để gọi Reszveny.';
  }

  @override
  String get trayOpen => 'Mở Reszveny';

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
  String get aiSectionTitle => 'AI analysis';

  @override
  String get aiIntro =>
      'A detailed, AI-written overview: summary of recent news, the business, strengths, risks and hidden factors, valuation and what to watch.';

  @override
  String get aiGenerate => 'Generate analysis';

  @override
  String get aiRegenerate => 'Regenerate';

  @override
  String get aiGenerating => 'Preparing the analysis… this can take a minute or two.';

  @override
  String get aiSources => 'Sources';

  @override
  String aiGeneratedAt(String time) {
    return 'Generated $time';
  }

  @override
  String get aiDisclaimer =>
      'AI-generated analysis based on public data and recent news. It may contain errors or be out of date, and it is not investment advice.';

  @override
  String get errAiNotConfigured => 'AI analysis is not configured (no ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable => 'Could not reach the AI service. Check your internet connection.';

  @override
  String errAiHttp(String status) {
    return 'The AI service returned an error (HTTP $status).';
  }

  @override
  String get errAiRefused => 'The AI service declined to analyse this stock.';

  @override
  String get errAiBadResponse => 'Unexpected response from the AI service.';

  @override
  String get sectionChart => 'Price chart';

  @override
  String get rangeOneWeek => '1W';

  @override
  String get rangeOneMonth => '1M';

  @override
  String get rangeThreeMonths => '3M';

  @override
  String get rangeOneYear => '1Y';

  @override
  String get rangeFiveYears => '5Y';

  @override
  String get chartUnavailable => 'Price history is not available from the current data source.';

  @override
  String get sectionStatements => 'Financial statements (annual)';

  @override
  String get labelFiscalYear => 'Fiscal year';

  @override
  String get labelRevenue => 'Revenue';

  @override
  String get labelNetIncome => 'Net income';

  @override
  String get labelTotalAssets => 'Total assets';

  @override
  String get labelTotalLiabilities => 'Total liabilities';

  @override
  String get labelEquity => 'Shareholders’ equity';

  @override
  String get labelOperatingCashFlow => 'Operating cash flow';

  @override
  String get statementsUnavailable => 'Reported financial statements are not available for this stock.';

  @override
  String get launchAtLogin => 'Launch at login';

  @override
  String get hotkeyLabel => 'Global shortcut';

  @override
  String get hotkeyRecordHint => 'Click here, then press the new key combination';

  @override
  String get hotkeyReset => 'Reset to default';

  @override
  String get pasteImage => 'Paste image from clipboard';

  @override
  String get errClipboardNoImage => 'There is no image on the clipboard.';
}
