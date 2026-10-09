// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'Reszveny';

  @override
  String get homeTagline => '拍下一只股票，了解它的一切。';

  @override
  String get homeHint => '股票凭证、券商应用界面、报纸或公司标志——任何能识别出股票的内容。';

  @override
  String get takePhoto => '拍照';

  @override
  String get chooseFromGallery => '从相册选择';

  @override
  String get chooseImage => '选择图片';

  @override
  String get enterTickerManually => '手动输入股票代码';

  @override
  String get tickerInputLabel => '股票代码';

  @override
  String get tickerInputHint => '例如 AAPL';

  @override
  String get lookUp => '查询';

  @override
  String demoModeBanner(String symbols) {
    return '演示模式——未配置行情数据密钥。可用示例数据：$symbols。';
  }

  @override
  String get recognizing => '正在分析图片…';

  @override
  String get loadingData => '正在加载数据…';

  @override
  String get noCandidatesTitle => '未识别出股票';

  @override
  String get noCandidatesBody => '无法从这张图片中识别出股票。请尝试更清晰的照片，或手动输入股票代码。';

  @override
  String get whatWeSaw => '我们看到的内容';

  @override
  String get chooseCandidateTitle => '您指的是哪只股票？';

  @override
  String confidencePercent(int percent) {
    return '置信度 $percent%';
  }

  @override
  String get settings => '设置';

  @override
  String get language => '语言';

  @override
  String get systemLanguage => '跟随系统';

  @override
  String get about => '关于';

  @override
  String get disclaimer => '本应用仅提供信息，不构成投资建议。数据可能延迟或不准确。';

  @override
  String dataSource(String source) {
    return '数据来源：$source';
  }

  @override
  String recognizerSource(String source) {
    return '识别服务：$source';
  }

  @override
  String get retry => '重试';

  @override
  String get cancel => '取消';

  @override
  String get ok => '确定';

  @override
  String get close => '关闭';

  @override
  String get errorGeneric => '出了点问题。';

  @override
  String get errorSectionUnavailable => '无法加载此部分。';

  @override
  String get notAvailable => '暂无';

  @override
  String get sectionIdentity => '基本信息';

  @override
  String get sectionPrice => '价格';

  @override
  String get sectionValuation => '估值';

  @override
  String get sectionFinancials => '财务';

  @override
  String get sectionDividend => '股息';

  @override
  String get sectionProfile => '公司简介';

  @override
  String get sectionAnalysts => '分析师评级';

  @override
  String get sectionNews => '新闻';

  @override
  String get sectionRecognition => '识别详情';

  @override
  String get labelSymbol => '股票代码';

  @override
  String get labelExchange => '交易所';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => '货币';

  @override
  String get labelCountry => '国家/地区';

  @override
  String get labelIndustry => '行业';

  @override
  String get labelSector => '板块';

  @override
  String get labelWebsite => '网站';

  @override
  String get labelIpoDate => 'IPO 日期';

  @override
  String get labelMarketCap => '市值';

  @override
  String get labelSharesOutstanding => '流通股数';

  @override
  String get labelEmployees => '员工人数';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => '总部';

  @override
  String get labelDescription => '简介';

  @override
  String get labelLastPrice => '最新价';

  @override
  String get labelChange => '涨跌';

  @override
  String get labelOpen => '开盘价';

  @override
  String get labelDayHigh => '当日最高';

  @override
  String get labelDayLow => '当日最低';

  @override
  String get labelPreviousClose => '昨收价';

  @override
  String get labelWeek52High => '52周最高';

  @override
  String get labelWeek52Low => '52周最低';

  @override
  String get labelAverageVolume10d => '平均成交量（10日）';

  @override
  String updatedAt(String time) {
    return '更新于 $time';
  }

  @override
  String get labelPeTrailing => 'P/E（滚动）';

  @override
  String get labelPeForward => 'P/E（预期）';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / 自由现金流';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS（TTM）';

  @override
  String get labelBeta => '贝塔系数';

  @override
  String get labelRevenueTtm => '营业收入（TTM）';

  @override
  String get labelNetIncomeTtm => '净利润（TTM）';

  @override
  String get labelGrossMargin => '毛利率';

  @override
  String get labelOperatingMargin => '营业利润率';

  @override
  String get labelNetMargin => '净利率';

  @override
  String get labelRoe => '净资产收益率';

  @override
  String get labelRoa => '总资产收益率';

  @override
  String get labelDebtToEquity => '负债/权益比';

  @override
  String get labelCurrentRatio => '流动比率';

  @override
  String get labelRevenueGrowth => '营收增长（YoY）';

  @override
  String get labelEpsGrowth => 'EPS 增长（YoY）';

  @override
  String get labelDividendYield => '股息率';

  @override
  String get labelDividendPerShare => '每股股息';

  @override
  String get labelPayoutRatio => '派息率';

  @override
  String get labelConsensus => '一致预期';

  @override
  String get ratingStrongBuy => '强力买入';

  @override
  String get ratingBuy => '买入';

  @override
  String get ratingHold => '持有';

  @override
  String get ratingSell => '卖出';

  @override
  String get ratingStrongSell => '强力卖出';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 位分析师',
      one: '1 位分析师',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return '周期：$period';
  }

  @override
  String get noNews => '暂无最新新闻。';

  @override
  String get openArticle => '打开文章';

  @override
  String get openLinkFailed => '无法打开链接。';

  @override
  String get recognitionSummary => '摘要';

  @override
  String get recognitionEvidence => '判断依据';

  @override
  String get recognitionRawText => '从图片中读取的文字';

  @override
  String get errMissingAnthropicKey =>
      '图像识别未配置（缺少 ANTHROPIC_API_KEY）。请手动输入股票代码。';

  @override
  String get errRecognitionUnreachable => '无法连接识别服务。请检查网络连接。';

  @override
  String errRecognitionHttp(String status) {
    return '识别服务返回错误（HTTP $status）。';
  }

  @override
  String get errRecognitionRefused => '识别服务无法处理这张图片。';

  @override
  String get errRecognitionTruncated => '识别结果被截断。请重试。';

  @override
  String get errRecognitionBadResponse => '识别服务返回了意外的响应。';

  @override
  String get errRecognitionEmpty => '识别服务返回了空响应。';

  @override
  String get errMissingFinnhubKey => '行情数据未配置（缺少 FINNHUB_API_KEY）。';

  @override
  String get errMarketUnreachable => '无法连接行情数据服务。请检查网络连接。';

  @override
  String get errMarketRateLimited => '对行情数据服务的请求过多。请稍等一分钟。';

  @override
  String errMarketHttp(String status) {
    return '行情数据服务返回错误（HTTP $status）。';
  }

  @override
  String get errMarketBadResponse => '行情数据服务返回了意外的响应。';

  @override
  String errNoQuote(String symbol) {
    return '未找到 $symbol 的价格数据。';
  }

  @override
  String errNoProfile(String symbol) {
    return '未找到 $symbol 的公司简介。';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return '演示模式仅支持 $symbols。添加 FINNHUB_API_KEY 以获取实时数据。';
  }

  @override
  String errUnknown(String detail) {
    return '出了点问题：$detail';
  }

  @override
  String get newSearch => '新搜索';

  @override
  String get recentSearches => '最近';

  @override
  String get noRecentSearches => '还没有最近的搜索。';

  @override
  String get clearRecent => '清除最近记录';

  @override
  String get greeting => '今天想看哪只股票？';

  @override
  String get searchHint => '股票代码或公司名称';

  @override
  String get attachImage => '添加图片';

  @override
  String get searchResultsTitle => '搜索结果';

  @override
  String errNoResults(String query) {
    return '未找到与“$query”相关的股票。';
  }

  @override
  String get quickBarHint => '输入股票代码或公司名称…';

  @override
  String get openFullWindow => '打开窗口';

  @override
  String hotkeyHint(String shortcut) {
    return '在任意位置按 $shortcut 即可呼出 Reszveny。';
  }

  @override
  String get trayOpen => '打开 Reszveny';

  @override
  String get trayQuickSearch => '快速搜索';

  @override
  String get trayQuit => '退出';

  @override
  String get appearance => '外观';

  @override
  String get themeSystem => '跟随系统';

  @override
  String get themeDark => '深色';

  @override
  String get themeLight => '浅色';

  @override
  String get back => '返回';

  @override
  String get aiSectionTitle => 'AI 分析';

  @override
  String get aiIntro => '由 AI 撰写的详细概览：近期新闻摘要、业务、优势、风险与隐藏因素、估值以及值得关注的要点。';

  @override
  String get aiGenerate => '生成分析';

  @override
  String get aiRegenerate => '重新生成';

  @override
  String get aiGenerating => '正在准备分析…这可能需要一到两分钟。';

  @override
  String get aiSources => '来源';

  @override
  String aiGeneratedAt(String time) {
    return '生成于 $time';
  }

  @override
  String get aiDisclaimer => '基于公开数据和近期新闻由 AI 生成的分析。内容可能有误或已过时，不构成投资建议。';

  @override
  String get errAiNotConfigured => 'AI 分析未配置（缺少 ANTHROPIC_API_KEY）。';

  @override
  String get errAiUnreachable => '无法连接 AI 服务。请检查网络连接。';

  @override
  String errAiHttp(String status) {
    return 'AI 服务返回错误（HTTP $status）。';
  }

  @override
  String get errAiRefused => 'AI 服务拒绝分析这只股票。';

  @override
  String get errAiBadResponse => 'AI 服务返回了意外的响应。';

  @override
  String get sectionChart => '价格走势';

  @override
  String get rangeOneWeek => '1周';

  @override
  String get rangeOneMonth => '1月';

  @override
  String get rangeThreeMonths => '3月';

  @override
  String get rangeOneYear => '1年';

  @override
  String get rangeFiveYears => '5年';

  @override
  String get chartUnavailable => '当前数据来源不提供历史价格。';

  @override
  String get sectionStatements => '财务报表（年度）';

  @override
  String get labelFiscalYear => '财年';

  @override
  String get labelRevenue => '营业收入';

  @override
  String get labelNetIncome => '净利润';

  @override
  String get labelTotalAssets => '总资产';

  @override
  String get labelTotalLiabilities => '总负债';

  @override
  String get labelEquity => '股东权益';

  @override
  String get labelOperatingCashFlow => '经营现金流';

  @override
  String get statementsUnavailable => '暂无这只股票的已披露财务报表。';

  @override
  String get launchAtLogin => '登录时启动';

  @override
  String get hotkeyLabel => '全局快捷键';

  @override
  String get hotkeyRecordHint => '点击此处，然后按下新的组合键';

  @override
  String get hotkeyReset => '恢复默认';

  @override
  String get pasteImage => '从剪贴板粘贴图片';

  @override
  String get errClipboardNoImage => '剪贴板中没有图片。';

  @override
  String get favorites => '收藏';

  @override
  String get addToFavorites => '添加到收藏';

  @override
  String get removeFromFavorites => '从收藏中移除';

  @override
  String get noFavorites => '还没有收藏。点击股票上的星标即可添加。';
}

/// The translations for Chinese, as used in Hong Kong, using the Han script (`zh_Hant_HK`).
class AppLocalizationsZhHantHk extends AppLocalizationsZh {
  AppLocalizationsZhHantHk() : super('zh_Hant_HK');

  @override
  String get appTitle => 'Reszveny';

  @override
  String get homeTagline => '拍一張股票相片，全面了解該股。';

  @override
  String get homeHint => '股票證書、證券商 App 畫面、報紙或公司商標——任何能識別股票的內容。';

  @override
  String get takePhoto => '拍照';

  @override
  String get chooseFromGallery => '從相簿選擇';

  @override
  String get chooseImage => '選擇圖片';

  @override
  String get enterTickerManually => '手動輸入股票代號';

  @override
  String get tickerInputLabel => '股票代號';

  @override
  String get tickerInputHint => '例如 AAPL';

  @override
  String get lookUp => '查詢';

  @override
  String demoModeBanner(String symbols) {
    return '示範模式——未設定市場數據金鑰。可用示範數據：$symbols。';
  }

  @override
  String get recognizing => '正在分析圖片…';

  @override
  String get loadingData => '正在載入數據…';

  @override
  String get noCandidatesTitle => '未能識別股票';

  @override
  String get noCandidatesBody => '無法從這張圖片識別出股票。請試用較清晰的相片，或手動輸入股票代號。';

  @override
  String get whatWeSaw => '我們看到的內容';

  @override
  String get chooseCandidateTitle => '你指的是哪隻股票？';

  @override
  String confidencePercent(int percent) {
    return '可信度 $percent%';
  }

  @override
  String get settings => '設定';

  @override
  String get language => '語言';

  @override
  String get systemLanguage => '跟隨系統';

  @override
  String get about => '關於';

  @override
  String get disclaimer => '本 App 只提供資訊，並不構成投資建議。數據可能有延遲或不準確。';

  @override
  String dataSource(String source) {
    return '數據來源：$source';
  }

  @override
  String recognizerSource(String source) {
    return '識別服務：$source';
  }

  @override
  String get retry => '重試';

  @override
  String get cancel => '取消';

  @override
  String get ok => '確定';

  @override
  String get close => '關閉';

  @override
  String get errorGeneric => '出現問題。';

  @override
  String get errorSectionUnavailable => '無法載入此部分。';

  @override
  String get notAvailable => '不適用';

  @override
  String get sectionIdentity => '基本資料';

  @override
  String get sectionPrice => '股價';

  @override
  String get sectionValuation => '估值';

  @override
  String get sectionFinancials => '財務';

  @override
  String get sectionDividend => '股息';

  @override
  String get sectionProfile => '公司簡介';

  @override
  String get sectionAnalysts => '分析員評級';

  @override
  String get sectionNews => '新聞';

  @override
  String get sectionRecognition => '識別詳情';

  @override
  String get labelSymbol => '股票代號';

  @override
  String get labelExchange => '交易所';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => '貨幣';

  @override
  String get labelCountry => '國家／地區';

  @override
  String get labelIndustry => '行業';

  @override
  String get labelSector => '板塊';

  @override
  String get labelWebsite => '網站';

  @override
  String get labelIpoDate => 'IPO 日期';

  @override
  String get labelMarketCap => '市值';

  @override
  String get labelSharesOutstanding => '已發行股數';

  @override
  String get labelEmployees => '員工人數';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => '總部';

  @override
  String get labelDescription => '簡介';

  @override
  String get labelLastPrice => '最新價';

  @override
  String get labelChange => '升跌';

  @override
  String get labelOpen => '開市價';

  @override
  String get labelDayHigh => '全日最高';

  @override
  String get labelDayLow => '全日最低';

  @override
  String get labelPreviousClose => '上日收市價';

  @override
  String get labelWeek52High => '52週高位';

  @override
  String get labelWeek52Low => '52週低位';

  @override
  String get labelAverageVolume10d => '平均成交量（10日）';

  @override
  String updatedAt(String time) {
    return '更新時間：$time';
  }

  @override
  String get labelPeTrailing => 'P/E（歷史市盈率）';

  @override
  String get labelPeForward => 'P/E（預測市盈率）';

  @override
  String get labelPb => 'P/B（市賬率）';

  @override
  String get labelPs => 'P/S（市銷率）';

  @override
  String get labelEvToFcf => 'EV／自由現金流';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS（TTM）';

  @override
  String get labelBeta => 'Beta 值';

  @override
  String get labelRevenueTtm => '收入（TTM）';

  @override
  String get labelNetIncomeTtm => '純利（TTM）';

  @override
  String get labelGrossMargin => '毛利率';

  @override
  String get labelOperatingMargin => '經營利潤率';

  @override
  String get labelNetMargin => '純利率';

  @override
  String get labelRoe => '股本回報率';

  @override
  String get labelRoa => '資產回報率';

  @override
  String get labelDebtToEquity => '負債／股本比率';

  @override
  String get labelCurrentRatio => '流動比率';

  @override
  String get labelRevenueGrowth => '收入增長（YoY）';

  @override
  String get labelEpsGrowth => 'EPS 增長（YoY）';

  @override
  String get labelDividendYield => '股息率';

  @override
  String get labelDividendPerShare => '每股股息';

  @override
  String get labelPayoutRatio => '派息比率';

  @override
  String get labelConsensus => '綜合評級';

  @override
  String get ratingStrongBuy => '強烈買入';

  @override
  String get ratingBuy => '買入';

  @override
  String get ratingHold => '持有';

  @override
  String get ratingSell => '賣出';

  @override
  String get ratingStrongSell => '強烈賣出';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 位分析員',
      one: '1 位分析員',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return '期間：$period';
  }

  @override
  String get noNews => '暫無最新新聞。';

  @override
  String get openArticle => '開啟文章';

  @override
  String get openLinkFailed => '無法開啟連結。';

  @override
  String get recognitionSummary => '摘要';

  @override
  String get recognitionEvidence => '判斷依據';

  @override
  String get recognitionRawText => '從圖片讀取的文字';

  @override
  String get errMissingAnthropicKey =>
      '尚未設定圖像識別（缺少 ANTHROPIC_API_KEY）。請手動輸入股票代號。';

  @override
  String get errRecognitionUnreachable => '無法連接識別服務。請檢查網絡連線。';

  @override
  String errRecognitionHttp(String status) {
    return '識別服務回傳錯誤（HTTP $status）。';
  }

  @override
  String get errRecognitionRefused => '識別服務無法處理這張圖片。';

  @override
  String get errRecognitionTruncated => '識別結果被截斷。請再試一次。';

  @override
  String get errRecognitionBadResponse => '識別服務回傳了預期以外的回應。';

  @override
  String get errRecognitionEmpty => '識別服務回傳了空白回應。';

  @override
  String get errMissingFinnhubKey => '尚未設定市場數據（缺少 FINNHUB_API_KEY）。';

  @override
  String get errMarketUnreachable => '無法連接市場數據服務。請檢查網絡連線。';

  @override
  String get errMarketRateLimited => '向市場數據服務發出的請求過多。請稍等一分鐘。';

  @override
  String errMarketHttp(String status) {
    return '市場數據服務回傳錯誤（HTTP $status）。';
  }

  @override
  String get errMarketBadResponse => '市場數據服務回傳了預期以外的回應。';

  @override
  String errNoQuote(String symbol) {
    return '找不到 $symbol 的股價數據。';
  }

  @override
  String errNoProfile(String symbol) {
    return '找不到 $symbol 的公司簡介。';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return '示範模式只支援 $symbols。加入 FINNHUB_API_KEY 以取得即時數據。';
  }

  @override
  String errUnknown(String detail) {
    return '出現問題：$detail';
  }

  @override
  String get newSearch => '新搜尋';

  @override
  String get recentSearches => '最近';

  @override
  String get noRecentSearches => '暫時未有最近搜尋。';

  @override
  String get clearRecent => '清除最近記錄';

  @override
  String get greeting => '今天想看哪隻股票？';

  @override
  String get searchHint => '股票代號或公司名稱';

  @override
  String get attachImage => '附加圖片';

  @override
  String get searchResultsTitle => '搜尋結果';

  @override
  String errNoResults(String query) {
    return '找不到與「$query」相關的股票。';
  }

  @override
  String get quickBarHint => '輸入股票代號或公司名稱…';

  @override
  String get openFullWindow => '開啟視窗';

  @override
  String hotkeyHint(String shortcut) {
    return '在任何地方按 $shortcut 即可呼出 Reszveny。';
  }

  @override
  String get trayOpen => '開啟 Reszveny';

  @override
  String get trayQuickSearch => '快速搜尋';

  @override
  String get trayQuit => '結束';

  @override
  String get appearance => '外觀';

  @override
  String get themeSystem => '跟隨系統';

  @override
  String get themeDark => '深色';

  @override
  String get themeLight => '淺色';

  @override
  String get back => '返回';

  @override
  String get aiSectionTitle => 'AI 分析';

  @override
  String get aiIntro => '由 AI 撰寫的詳細概覽：近期新聞摘要、業務、優勢、風險與隱藏因素、估值，以及值得留意的要點。';

  @override
  String get aiGenerate => '產生分析';

  @override
  String get aiRegenerate => '重新產生';

  @override
  String get aiGenerating => '正在準備分析…可能需要一至兩分鐘。';

  @override
  String get aiSources => '來源';

  @override
  String aiGeneratedAt(String time) {
    return '產生時間：$time';
  }

  @override
  String get aiDisclaimer => '由 AI 根據公開數據及近期新聞產生的分析。內容可能有誤或已過時，並不構成投資建議。';

  @override
  String get errAiNotConfigured => '尚未設定 AI 分析（缺少 ANTHROPIC_API_KEY）。';

  @override
  String get errAiUnreachable => '無法連接 AI 服務。請檢查網絡連線。';

  @override
  String errAiHttp(String status) {
    return 'AI 服務回傳錯誤（HTTP $status）。';
  }

  @override
  String get errAiRefused => 'AI 服務拒絕分析這隻股票。';

  @override
  String get errAiBadResponse => 'AI 服務回傳了預期以外的回應。';

  @override
  String get sectionChart => '股價走勢';

  @override
  String get rangeOneWeek => '1週';

  @override
  String get rangeOneMonth => '1月';

  @override
  String get rangeThreeMonths => '3月';

  @override
  String get rangeOneYear => '1年';

  @override
  String get rangeFiveYears => '5年';

  @override
  String get chartUnavailable => '目前的數據來源不提供股價歷史。';

  @override
  String get sectionStatements => '財務報表（年度）';

  @override
  String get labelFiscalYear => '財政年度';

  @override
  String get labelRevenue => '收入';

  @override
  String get labelNetIncome => '純利';

  @override
  String get labelTotalAssets => '總資產';

  @override
  String get labelTotalLiabilities => '總負債';

  @override
  String get labelEquity => '股東權益';

  @override
  String get labelOperatingCashFlow => '經營現金流';

  @override
  String get statementsUnavailable => '沒有這隻股票的已公布財務報表。';

  @override
  String get launchAtLogin => '登入時啟動';

  @override
  String get hotkeyLabel => '全域快速鍵';

  @override
  String get hotkeyRecordHint => '按一下此處，然後按下新的組合鍵';

  @override
  String get hotkeyReset => '重設為預設值';

  @override
  String get pasteImage => '從剪貼簿貼上圖片';

  @override
  String get errClipboardNoImage => '剪貼簿中沒有圖片。';

  @override
  String get favorites => '收藏';

  @override
  String get addToFavorites => '加入收藏';

  @override
  String get removeFromFavorites => '從收藏中移除';

  @override
  String get noFavorites => '暫時未有收藏。點一下股票上的星星即可加入。';
}
