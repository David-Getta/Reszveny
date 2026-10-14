// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

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
    return '在任意位置按 $shortcut 即可呼出 WhatStock。';
  }

  @override
  String get trayOpen => '打开 WhatStock';

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
  String get aiIntro =>
      '由 AI 撰写的详细概览：近期新闻摘要、业务、优势、风险与隐藏因素、估值、从心理、社会、技术和宏观角度给出情景的股价展望，以及值得关注的要点。';

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

  @override
  String get displayCurrency => '显示货币';

  @override
  String get displayCurrencyNone => '仅显示股票自身货币';

  @override
  String labelConverted(String currency) {
    return '≈ 折合 $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return '汇率：1 $from = $rate $to（欧洲央行，$date）';
  }

  @override
  String get updates => '更新';

  @override
  String currentVersion(String version) {
    return '版本 $version';
  }

  @override
  String get autoUpdate => '自动安装更新';

  @override
  String get checkForUpdates => '检查更新';

  @override
  String get updateChecking => '正在检查更新…';

  @override
  String get updateUpToDate => '您已是最新版本。';

  @override
  String updateAvailable(String version) {
    return '版本 $version 已可用。';
  }

  @override
  String get updateDownloading => '正在后台下载更新…';

  @override
  String get updateDownloaded => '更新已就绪。重新启动以安装。';

  @override
  String get updateNow => '更新';

  @override
  String get restartNow => '重新启动';

  @override
  String get updatesViaStore => '更新会通过应用商店自动推送。';

  @override
  String get updateCheckFailed => '无法检查更新。';

  @override
  String get subscription => '订阅';

  @override
  String get planTrial => '试用';

  @override
  String get planNormal => '标准';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => '没有有效的计划';

  @override
  String planAnalysesPerMonth(int count) {
    return '每月 $count 次分析';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$days 天免费试用，含 $count 次分析';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '试用期剩余 $days 天',
      one: '试用期剩余 1 天',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired => '您的免费试用已结束。请选择一个计划以继续分析。';

  @override
  String analysesRemaining(int remaining, int total) {
    return '本周期还剩 $remaining 次分析（共 $total 次）';
  }

  @override
  String extraCredits(int count) {
    return '$count 次额外分析';
  }

  @override
  String renewsOn(String date) {
    return '$date 续订';
  }

  @override
  String get choosePlan => '选择计划';

  @override
  String get currentPlan => '当前计划';

  @override
  String get subscribe => '订阅';

  @override
  String get perMonth => '/ 月';

  @override
  String get extraPacksTitle => '还需要更多？购买额外分析';

  @override
  String get extraPacksHint => '额外分析永不过期，并在每月配额用完后使用。';

  @override
  String get buy => '购买';

  @override
  String get restorePurchases => '恢复购买';

  @override
  String get manageSubscription => '管理订阅';

  @override
  String get purchaseSuccess => '感谢！您的购买已生效。';

  @override
  String get purchasePending => '购买处理中…';

  @override
  String get purchaseFailed => '无法完成购买。';

  @override
  String get purchaseCanceled => '购买已取消。';

  @override
  String get billingUnavailable => '此平台暂不支持购买。请在手机或 Mac 上订阅，您的计划将在所有设备上生效。';

  @override
  String get errQuotaExceeded => '本周期的分析次数已用完。请升级计划或购买额外分析。';

  @override
  String get errTrialExpired => '您的免费试用已结束。请选择一个计划以继续。';

  @override
  String get errNoPlan => 'AI 分析需要有效的计划。';

  @override
  String get viewPlans => '查看计划';

  @override
  String get usageTitle => '使用情况';

  @override
  String get demoPurchaseNote => '演示计费：此平台上的购买为模拟操作。';

  @override
  String get mostPopular => '最受欢迎';

  @override
  String get bestValue => '最超值';

  @override
  String get planFeaturesCommon =>
      '所有计划均包含照片识别、实时数据、图表、收藏和全部 120 种语言。配额仅用于 AI 分析。';

  @override
  String get searchLanguages => '搜索语言…';

  @override
  String get noLanguageMatch => '没有匹配的语言。';

  @override
  String get aiSettings => 'AI 分析';

  @override
  String get aiLength => '篇幅';

  @override
  String get aiDepthBrief => '简要';

  @override
  String get aiDepthStandard => '常规';

  @override
  String get aiDepthDeep => '深入';

  @override
  String get aiDepthBriefDesc => '快速了解要点。';

  @override
  String get aiDepthStandardDesc => '包含所有部分的完整报告。';

  @override
  String get aiDepthDeepDesc => '更多网络搜索、同业比较以及更深入的细节。';

  @override
  String aiDepthWords(String min, String max) {
    return '约 $min–$max 词';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '消耗 $count 次分析',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => '读者水平';

  @override
  String get aiReaderBeginner => '新手';

  @override
  String get aiReaderExperienced => '有经验';

  @override
  String get aiReaderBeginnerDesc => '语言通俗易懂，每个专业术语都会解释。';

  @override
  String get aiReaderExperiencedDesc => '内容更紧凑，使用标准金融术语。';

  @override
  String get aiCounterArgument => '最有力的反方观点';

  @override
  String get aiCounterArgumentDesc => '摘要的最后总会给出反对其自身结论的最有力论据。';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '您的计划每次分析最多可进行 $count 次网络搜索',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return '各计划的常规篇幅：标准 $normal、Pro $pro、Max $max、Ultra $ultra。简要少 2 次，深入多 2 次。';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '最多 $count 次网络搜索',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '每次分析 $count 次网络搜索',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return '此篇幅需要 $needed 次分析，但仅剩 $left 次。请在设置中选择更短的篇幅，或获取更多分析。';
  }

  @override
  String get outlookMarketMood => '市场情绪';

  @override
  String get moodVeryPessimistic => '非常悲观';

  @override
  String get moodPessimistic => '悲观';

  @override
  String get moodNeutral => '中性';

  @override
  String get moodOptimistic => '乐观';

  @override
  String get moodVeryOptimistic => '非常乐观';

  @override
  String get scenarioBull => '乐观情景';

  @override
  String get scenarioBase => '基准情景';

  @override
  String get scenarioBear => '悲观情景';

  @override
  String outlookCurrentPrice(String price) {
    return '当前价格：$price';
  }

  @override
  String get outlookKeyLevels => '关键价位';

  @override
  String get keyLevelSupport => '支撑位';

  @override
  String get keyLevelResistance => '阻力位';

  @override
  String get keyLevelAnchor => '锚定价位';

  @override
  String get upcomingEvents => '近期事件';

  @override
  String get outlookChartNote => '区间仅供参考；概率为粗略判断，并非预测。';

  @override
  String get accountTitle => '账户';

  @override
  String get signIn => '登录';

  @override
  String get signOut => '退出登录';

  @override
  String get notSignedIn => '未登录';

  @override
  String get accountBenefit => '登录后，你的订阅可在所有设备上使用。';

  @override
  String get accountSyncedNote => '你的订阅和剩余分析次数在每台设备上都相同。';

  @override
  String get signInTitle => '登录 WhatStock';

  @override
  String get emailLabel => '邮箱地址';

  @override
  String get continueWithEmail => '使用邮箱继续';

  @override
  String codeSentTo(String email) {
    return '我们已向 $email 发送 6 位验证码，10 分钟内有效。';
  }

  @override
  String get codeLabel => '登录验证码';

  @override
  String get resendCode => '重新发送验证码';

  @override
  String get useDifferentEmail => '使用其他邮箱';

  @override
  String get errInvalidCode => '验证码错误或已过期。';

  @override
  String get errInvalidEmail => '请输入有效的邮箱地址。';

  @override
  String get errSignInFailed => '登录失败。请检查网络连接后重试。';

  @override
  String get checkoutWaiting => '请在浏览器中完成付款。完成后应用会自动更新。';

  @override
  String get paymentViaStripe => '通过 Stripe 在浏览器中安全付款。可随时取消。';

  @override
  String get paymentViaStore =>
      '通过你的 App Store 或 Google Play 账户扣费。可随时在商店设置中取消。';

  @override
  String get keySpace => '空格键';

  @override
  String get doubleOptionTitle => '连按两下 Option 键';

  @override
  String get doubleOptionSubtitle => '快速连按两下 Option 键也可呼出 WhatStock。';

  @override
  String get doubleOptionPermission =>
      '如需在其他应用中也能使用，请在“系统设置”→“隐私与安全性”→“输入监控”中允许 WhatStock，然后重新打开本应用。';

  @override
  String get openSystemSettings => '打开系统设置';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return '在任意位置按 $shortcut 或连按两下 Option 键即可呼出 WhatStock。';
  }

  @override
  String get scenarioMostLikely => '最有可能';

  @override
  String get longTermToday => '今天';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years年',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '年化 $range';
  }

  @override
  String longTermLikely(String price) {
    return '最可能 $price';
  }

  @override
  String get confidenceLow => '可信度低';

  @override
  String get confidenceMedium => '可信度中等';

  @override
  String get confidenceHigh => '可信度高';

  @override
  String get longTermNote => '长期区间基于所列假设，并随时间推移而扩大。价格不含股息。仅为粗略判断，并非预测。';

  @override
  String get portfolio => '投资组合';

  @override
  String get portfolioEmpty => '这里还没有内容。打开一只股票并点按“添加到投资组合”，即可跟踪你的持仓。';

  @override
  String get portfolioLocalNote => '仅保存在此设备上。合计按欧洲央行参考汇率换算；价格可能有延迟。';

  @override
  String get addToPortfolio => '添加到投资组合';

  @override
  String portfolioAddTitle(String symbol) {
    return '添加 $symbol';
  }

  @override
  String get portfolioQuantity => '股数';

  @override
  String portfolioBuyPrice(String currency) {
    return '每股价格（$currency）';
  }

  @override
  String get portfolioBuyDate => '买入日期';

  @override
  String get portfolioAdd => '添加';

  @override
  String get portfolioInvalidNumber => '请输入大于零的数字。';

  @override
  String portfolioAdded(String symbol) {
    return '已将 $symbol 添加到投资组合。';
  }

  @override
  String get portfolioTotalValue => '总市值';

  @override
  String get portfolioToday => '今日';

  @override
  String get portfolioGainLoss => '盈亏';

  @override
  String get portfolioInvested => '投入成本';

  @override
  String get portfolioAllocation => '配置';

  @override
  String get portfolioPositions => '持仓';

  @override
  String portfolioAvgCost(String price) {
    return '平均成本 $price';
  }

  @override
  String get portfolioYourPosition => '你的持仓';

  @override
  String get portfolioPurchases => '买入记录';

  @override
  String get portfolioRemove => '移除';

  @override
  String get portfolioExcluded => '没有价格或汇率的持仓不计入合计。';

  @override
  String get priceAlerts => '价格提醒';

  @override
  String get setPriceAlert => '设置价格提醒';

  @override
  String alertDialogTitle(String symbol) {
    return '价格提醒 · $symbol';
  }

  @override
  String get alertKindAbove => '涨破';

  @override
  String get alertKindBelow => '跌破';

  @override
  String get alertKindMove => '单日大幅波动';

  @override
  String alertTargetPrice(String currency) {
    return '价格（$currency）';
  }

  @override
  String get alertMovePercent => '单日波动（%）';

  @override
  String get alertAlreadyMet => '价格已越过该水平。';

  @override
  String get alertSave => '设置提醒';

  @override
  String alertCreated(String symbol) {
    return '已为 $symbol 设置提醒。';
  }

  @override
  String get alertsEmpty => '还没有提醒。打开一只股票并点按铃铛即可设置。';

  @override
  String get alertsNote =>
      'WhatStock 运行期间每 5 分钟检查一次提醒。在电脑上，应用会继续在菜单栏或系统托盘中运行；在手机上，目前仅在应用打开时提醒。';

  @override
  String alertDescAbove(String price) {
    return '高于 $price';
  }

  @override
  String alertDescBelow(String price) {
    return '低于 $price';
  }

  @override
  String alertDescMove(String percent) {
    return '单日波动 ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return '已于 $date 以 $price 触发';
  }

  @override
  String get alertRearm => '重新启用';

  @override
  String get alertDelete => '删除';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol 已涨破 $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol 已跌破 $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol 今日波动 $percent';
  }

  @override
  String alertHitBody(String price) {
    return '当前价格：$price';
  }

  @override
  String get alertOpen => '打开';

  @override
  String get keepInTrayTitle => '关闭窗口后继续运行';

  @override
  String get keepInTraySubtitle => 'WhatStock 会留在菜单栏或系统托盘中，快捷键和价格提醒将继续工作。';

  @override
  String get termsOfUse => '使用条款';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get subscriptionLegal => '订阅会每月自动续订，直到你取消。订阅即表示你接受使用条款和隐私政策。';

  @override
  String get deleteAccount => '删除账户';

  @override
  String get deleteAccountTitle => '要删除你的账户吗？';

  @override
  String get deleteAccountBody =>
      '你的账户以及我们服务器上存储的所有内容（电子邮件、额度、使用记录）将被永久删除，未使用的分析将失效。在浏览器中付费的订阅会立即取消；App Store 或 Google Play 的订阅需在商店设置中取消。';

  @override
  String get deleteLocalData => '同时删除此设备上的数据（投资组合、提醒、收藏、历史记录、已保存的分析）';

  @override
  String get deleteAccountConfirm => '永久删除';

  @override
  String get accountDeleted => '你的账户已删除。';

  @override
  String get errDeleteAccount => '无法删除账户。请检查网络连接后重试。';

  @override
  String get aiTrialBriefNote =>
      '试用期分析为简要版，由速度更快的 AI 模型生成。订阅计划后，您将获得我们能力最强的 AI、更多网络搜索，以及“常规”和“深入”篇幅。';

  @override
  String get billingMonthly => '按月';

  @override
  String get billingYearly => '按年';

  @override
  String get yearlyDiscount => '免费 2 个月';

  @override
  String get perYear => '/ 年';

  @override
  String pricePerMonthApprox(String price) {
    return '每月约 $price';
  }

  @override
  String get subscriptionLegalYearly => '年度订阅会每年自动续订，直到你取消。订阅即表示你接受使用条款和隐私政策。';

  @override
  String get myAnalyses => '我的分析';

  @override
  String get navAlerts => '提醒';

  @override
  String get inviteTitle => '封闭预览';

  @override
  String get inviteBody => 'WhatStock 目前仅限受邀用户使用。请输入您收到的邀请码。';

  @override
  String get inviteCodeLabel => '邀请码';

  @override
  String get inviteContinue => '继续';

  @override
  String get inviteInvalid => '此邀请码无效。';

  @override
  String get inviteExpired => '此邀请已过期。请向邀请您的人索取新的邀请码。';

  @override
  String get inviteDeviceLimit => '此邀请码已在允许的最多设备上使用。';

  @override
  String get previewConfidential => '保密预览';

  @override
  String get errPreviewDailyLimit => '此预览今日的分析次数已用完。请明天再试。';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 小时前',
      one: '1 小时前',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 天前',
      one: '1 天前',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => '要更新这份分析吗？';

  @override
  String staleBody(String age) {
    return '这份分析生成于$age。此后价格、新闻和业绩可能已有变化。';
  }

  @override
  String get staleKeep => '查看之前的分析';

  @override
  String get staleRefresh => '生成新分析';

  @override
  String seeAll(int count) {
    return '查看全部 ($count)';
  }

  @override
  String get searchAnalyses => '搜索你的分析';

  @override
  String get deleteAnalysis => '删除';

  @override
  String analysisDeleted(String symbol) {
    return '已删除 $symbol 分析';
  }

  @override
  String get keyLevelAlertHint => '点按某个价位，股价到达时即会提醒你。';

  @override
  String get shareAnalysisTitle => '分享分析';

  @override
  String get shareAsImage => '以图片分享';

  @override
  String get shareAsText => '以文本分享';

  @override
  String get shareCardFooter => '由 WhatStock 制作';

  @override
  String get shareCardDisclaimer => 'AI 分析 · 不构成投资建议';

  @override
  String get referralTitle => '邀请好友';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 次额外分析',
      one: '1 次额外分析',
    );
    return '分享你的邀请码。好友立即获得 $_temp0，在其完成首次分析后，你也将获得相同次数。';
  }

  @override
  String get referralYourCode => '你的邀请码';

  @override
  String referralStats(int invited, int rewarded) {
    return '已邀请：$invited · 已奖励：$rewarded';
  }

  @override
  String get referralHaveCode => '有好友的邀请码？';

  @override
  String get referralRedeem => '兑换';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '已添加 $count 次额外分析。欢迎！',
      one: '已添加 1 次额外分析。欢迎！',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown => '该邀请码不存在。请检查后重试。';

  @override
  String get referralErrOwn => '不能兑换自己的邀请码。';

  @override
  String get referralErrAlready => '你已经兑换过好友的邀请码。';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 次额外分析',
      one: '1 次额外分析',
    );
    return '我在用 WhatStock 分析股票：给股票拍张照，AI 就会为你讲解。使用我的邀请码 $code，即可获得 $_temp0。';
  }

  @override
  String get referralCopied => '邀请码已复制';
}

/// The translations for Chinese, as used in Hong Kong, using the Han script (`zh_Hant_HK`).
class AppLocalizationsZhHantHk extends AppLocalizationsZh {
  AppLocalizationsZhHantHk() : super('zh_Hant_HK');

  @override
  String get appTitle => 'WhatStock';

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
    return '在任何地方按 $shortcut 即可呼出 WhatStock。';
  }

  @override
  String get trayOpen => '開啟 WhatStock';

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
  String get aiIntro =>
      '由 AI 撰寫的詳細概覽：近期新聞摘要、業務、優勢、風險與隱藏因素、估值、從心理、社會、技術及宏觀角度給出情景的股價展望，以及值得留意的要點。';

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

  @override
  String get displayCurrency => '顯示貨幣';

  @override
  String get displayCurrencyNone => '只顯示股票本身貨幣';

  @override
  String labelConverted(String currency) {
    return '≈ 折合 $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return '匯率：1 $from = $rate $to（歐洲央行，$date）';
  }

  @override
  String get updates => '更新';

  @override
  String currentVersion(String version) {
    return '版本 $version';
  }

  @override
  String get autoUpdate => '自動安裝更新';

  @override
  String get checkForUpdates => '檢查更新';

  @override
  String get updateChecking => '正在檢查更新…';

  @override
  String get updateUpToDate => '已經是最新版本。';

  @override
  String updateAvailable(String version) {
    return '版本 $version 已可供更新。';
  }

  @override
  String get updateDownloading => '正在背景下載更新…';

  @override
  String get updateDownloaded => '更新已準備好。重新啟動即可安裝。';

  @override
  String get updateNow => '更新';

  @override
  String get restartNow => '重新啟動';

  @override
  String get updatesViaStore => '更新會透過應用程式商店自動送達。';

  @override
  String get updateCheckFailed => '無法檢查更新。';

  @override
  String get subscription => '訂閱';

  @override
  String get planTrial => '試用';

  @override
  String get planNormal => '標準';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => '沒有生效的計劃';

  @override
  String planAnalysesPerMonth(int count) {
    return '每月 $count 次分析';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$days 日免費試用，包含 $count 次分析';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '試用期尚餘 $days 日',
      one: '試用期尚餘 1 日',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired => '你的免費試用已結束。請選擇計劃以繼續分析。';

  @override
  String analysesRemaining(int remaining, int total) {
    return '本期尚餘 $remaining 次分析（共 $total 次）';
  }

  @override
  String extraCredits(int count) {
    return '$count 次額外分析';
  }

  @override
  String renewsOn(String date) {
    return '$date 續訂';
  }

  @override
  String get choosePlan => '選擇計劃';

  @override
  String get currentPlan => '目前計劃';

  @override
  String get subscribe => '訂閱';

  @override
  String get perMonth => '/ 月';

  @override
  String get extraPacksTitle => '需要更多？購買額外分析';

  @override
  String get extraPacksHint => '額外分析永不過期，會在每月配額用完後才使用。';

  @override
  String get buy => '購買';

  @override
  String get restorePurchases => '恢復購買';

  @override
  String get manageSubscription => '管理訂閱';

  @override
  String get purchaseSuccess => '多謝！你的購買已生效。';

  @override
  String get purchasePending => '購買處理中…';

  @override
  String get purchaseFailed => '無法完成購買。';

  @override
  String get purchaseCanceled => '購買已取消。';

  @override
  String get billingUnavailable => '此平台暫未支援購買。請在手機或 Mac 上訂閱，你的計劃可在所有裝置使用。';

  @override
  String get errQuotaExceeded => '本期的分析次數已用完。請升級計劃或購買額外分析。';

  @override
  String get errTrialExpired => '你的免費試用已結束。請選擇計劃以繼續。';

  @override
  String get errNoPlan => 'AI 分析需要生效的計劃。';

  @override
  String get viewPlans => '查看計劃';

  @override
  String get usageTitle => '用量';

  @override
  String get demoPurchaseNote => '示範計費：此平台上的購買只屬模擬。';

  @override
  String get mostPopular => '最受歡迎';

  @override
  String get bestValue => '最抵用';

  @override
  String get planFeaturesCommon =>
      '所有計劃均包含相片識別、即時數據、圖表、收藏及全部 120 種語言。配額只用於 AI 分析。';

  @override
  String get searchLanguages => '搜尋語言…';

  @override
  String get noLanguageMatch => '沒有符合的語言。';

  @override
  String get aiSettings => 'AI 分析';

  @override
  String get aiLength => '篇幅';

  @override
  String get aiDepthBrief => '簡要';

  @override
  String get aiDepthStandard => '常規';

  @override
  String get aiDepthDeep => '深入';

  @override
  String get aiDepthBriefDesc => '快速掌握重點。';

  @override
  String get aiDepthStandardDesc => '包含所有部分的完整報告。';

  @override
  String get aiDepthDeepDesc => '更多網上搜尋、同業比較及更深入的細節。';

  @override
  String aiDepthWords(String min, String max) {
    return '約 $min–$max 字';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '用 $count 次分析',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => '讀者程度';

  @override
  String get aiReaderBeginner => '新手';

  @override
  String get aiReaderExperienced => '有經驗';

  @override
  String get aiReaderBeginnerDesc => '用淺白語言，每個專業術語都會解釋。';

  @override
  String get aiReaderExperiencedDesc => '內容更精簡，使用標準金融術語。';

  @override
  String get aiCounterArgument => '最有力的反方論點';

  @override
  String get aiCounterArgumentDesc => '摘要最後一定會提出反駁其自身結論的最有力論據。';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '你的計劃每次分析最多可進行 $count 次網上搜尋',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return '各計劃的常規篇幅：標準 $normal、Pro $pro、Max $max、Ultra $ultra。簡要少 2 次，深入多 2 次。';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '最多 $count 次網上搜尋',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '每次分析 $count 次網上搜尋',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return '此篇幅需要 $needed 次分析，但只剩 $left 次。請在設定中選擇較短的篇幅，或獲取更多分析。';
  }

  @override
  String get outlookMarketMood => '市場情緒';

  @override
  String get moodVeryPessimistic => '非常悲觀';

  @override
  String get moodPessimistic => '悲觀';

  @override
  String get moodNeutral => '中性';

  @override
  String get moodOptimistic => '樂觀';

  @override
  String get moodVeryOptimistic => '非常樂觀';

  @override
  String get scenarioBull => '樂觀情景';

  @override
  String get scenarioBase => '基本情景';

  @override
  String get scenarioBear => '悲觀情景';

  @override
  String outlookCurrentPrice(String price) {
    return '現價：$price';
  }

  @override
  String get outlookKeyLevels => '關鍵價位';

  @override
  String get keyLevelSupport => '支持位';

  @override
  String get keyLevelResistance => '阻力位';

  @override
  String get keyLevelAnchor => '錨定價位';

  @override
  String get upcomingEvents => '近期事件';

  @override
  String get outlookChartNote => '區間僅供參考；概率只屬粗略判斷，並非預測。';

  @override
  String get accountTitle => '帳戶';

  @override
  String get signIn => '登入';

  @override
  String get signOut => '登出';

  @override
  String get notSignedIn => '未登入';

  @override
  String get accountBenefit => '登入後，你的訂閱可在所有裝置使用。';

  @override
  String get accountSyncedNote => '你的訂閱及剩餘分析次數在每部裝置上都相同。';

  @override
  String get signInTitle => '登入 WhatStock';

  @override
  String get emailLabel => '電郵地址';

  @override
  String get continueWithEmail => '以電郵繼續';

  @override
  String codeSentTo(String email) {
    return '我們已將 6 位數字驗證碼傳送至 $email，10 分鐘內有效。';
  }

  @override
  String get codeLabel => '登入驗證碼';

  @override
  String get resendCode => '重新傳送驗證碼';

  @override
  String get useDifferentEmail => '使用其他電郵';

  @override
  String get errInvalidCode => '驗證碼錯誤或已過期。';

  @override
  String get errInvalidEmail => '請輸入有效的電郵地址。';

  @override
  String get errSignInFailed => '登入失敗。請檢查網絡連線後再試。';

  @override
  String get checkoutWaiting => '請在瀏覽器中完成付款。完成後，應用程式會自動更新。';

  @override
  String get paymentViaStripe => '透過 Stripe 在瀏覽器中安全付款。可隨時取消。';

  @override
  String get paymentViaStore => '經你的 App Store 或 Google Play 帳戶收費。可隨時在商店設定中取消。';

  @override
  String get keySpace => '空白鍵';

  @override
  String get doubleOptionTitle => '連按兩下 Option 鍵';

  @override
  String get doubleOptionSubtitle => '快速連按兩下 Option 鍵亦可呼出 WhatStock。';

  @override
  String get doubleOptionPermission =>
      '如要在其他 App 中亦能使用，請在「系統設定」→「私隱與保安」→「輸入監控」中允許 WhatStock，然後重新開啟此 App。';

  @override
  String get openSystemSettings => '開啟系統設定';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return '在任何地方按 $shortcut 或連按兩下 Option 鍵即可呼出 WhatStock。';
  }

  @override
  String get scenarioMostLikely => '最有可能';

  @override
  String get longTermToday => '今日';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years年',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '年化 $range';
  }

  @override
  String longTermLikely(String price) {
    return '最可能 $price';
  }

  @override
  String get confidenceLow => '可信度低';

  @override
  String get confidenceMedium => '可信度中等';

  @override
  String get confidenceHigh => '可信度高';

  @override
  String get longTermNote => '長期區間基於所列假設，並會隨時間擴闊。價格不包括股息。只屬粗略判斷，並非預測。';

  @override
  String get portfolio => '投資組合';

  @override
  String get portfolioEmpty => '這裡暫時未有內容。打開一隻股票並點一下「加入投資組合」，即可追蹤你的持倉。';

  @override
  String get portfolioLocalNote => '只會儲存在此裝置上。總計以歐洲央行參考匯率換算；股價可能有延遲。';

  @override
  String get addToPortfolio => '加入投資組合';

  @override
  String portfolioAddTitle(String symbol) {
    return '加入 $symbol';
  }

  @override
  String get portfolioQuantity => '股數';

  @override
  String portfolioBuyPrice(String currency) {
    return '每股價格（$currency）';
  }

  @override
  String get portfolioBuyDate => '買入日期';

  @override
  String get portfolioAdd => '加入';

  @override
  String get portfolioInvalidNumber => '請輸入大於零的數字。';

  @override
  String portfolioAdded(String symbol) {
    return '已將 $symbol 加入投資組合。';
  }

  @override
  String get portfolioTotalValue => '總市值';

  @override
  String get portfolioToday => '今日';

  @override
  String get portfolioGainLoss => '盈虧';

  @override
  String get portfolioInvested => '投入成本';

  @override
  String get portfolioAllocation => '配置';

  @override
  String get portfolioPositions => '持倉';

  @override
  String portfolioAvgCost(String price) {
    return '平均成本 $price';
  }

  @override
  String get portfolioYourPosition => '你的持倉';

  @override
  String get portfolioPurchases => '買入記錄';

  @override
  String get portfolioRemove => '移除';

  @override
  String get portfolioExcluded => '沒有股價或匯率的持倉不計入總計。';

  @override
  String get priceAlerts => '價格提示';

  @override
  String get setPriceAlert => '設定價格提示';

  @override
  String alertDialogTitle(String symbol) {
    return '價格提示 · $symbol';
  }

  @override
  String get alertKindAbove => '升穿';

  @override
  String get alertKindBelow => '跌穿';

  @override
  String get alertKindMove => '單日大幅波動';

  @override
  String alertTargetPrice(String currency) {
    return '價格（$currency）';
  }

  @override
  String get alertMovePercent => '單日波動（%）';

  @override
  String get alertAlreadyMet => '股價已越過此水平。';

  @override
  String get alertSave => '設定提示';

  @override
  String alertCreated(String symbol) {
    return '已為 $symbol 設定提示。';
  }

  @override
  String get alertsEmpty => '暫時未有提示。打開一隻股票並點一下鈴鐺即可設定。';

  @override
  String get alertsNote =>
      'WhatStock 運行期間每 5 分鐘檢查一次提示。電腦上，程式會繼續在選單列或系統匣中運行；手機上，暫時只會在程式開啟時提示。';

  @override
  String alertDescAbove(String price) {
    return '高於 $price';
  }

  @override
  String alertDescBelow(String price) {
    return '低於 $price';
  }

  @override
  String alertDescMove(String percent) {
    return '單日波動 ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return '已於 $date 以 $price 觸發';
  }

  @override
  String get alertRearm => '重新啟用';

  @override
  String get alertDelete => '刪除';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol 已升穿 $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol 已跌穿 $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol 今日波動 $percent';
  }

  @override
  String alertHitBody(String price) {
    return '現價：$price';
  }

  @override
  String get alertOpen => '打開';

  @override
  String get keepInTrayTitle => '關閉視窗後繼續運行';

  @override
  String get keepInTraySubtitle => 'WhatStock 會留在選單列或系統匣中，快捷鍵及價格提示會繼續運作。';

  @override
  String get termsOfUse => '使用條款';

  @override
  String get privacyPolicy => '私隱政策';

  @override
  String get subscriptionLegal => '訂閱會每月自動續期，直至你取消。訂閱即表示你接受使用條款及私隱政策。';

  @override
  String get deleteAccount => '刪除帳戶';

  @override
  String get deleteAccountTitle => '要刪除你的帳戶嗎？';

  @override
  String get deleteAccountBody =>
      '你的帳戶及我們伺服器上儲存的所有內容（電郵、額度、使用記錄）將被永久刪除，未使用的分析將會失效。於瀏覽器付款的訂閱會即時取消；App Store 或 Google Play 的訂閱需於商店設定中取消。';

  @override
  String get deleteLocalData => '同時刪除此裝置上的資料（投資組合、提示、收藏、記錄、已儲存的分析）';

  @override
  String get deleteAccountConfirm => '永久刪除';

  @override
  String get accountDeleted => '你的帳戶已刪除。';

  @override
  String get errDeleteAccount => '未能刪除帳戶。請檢查網絡連線後再試。';

  @override
  String get aiTrialBriefNote =>
      '試用期分析為簡要版，由速度更快的 AI 模型生成。訂閱計劃後，你可享用我們能力最強的 AI、更多網上搜尋，以及「常規」和「深入」篇幅。';

  @override
  String get billingMonthly => '按月';

  @override
  String get billingYearly => '按年';

  @override
  String get yearlyDiscount => '免費 2 個月';

  @override
  String get perYear => '/ 年';

  @override
  String pricePerMonthApprox(String price) {
    return '每月約 $price';
  }

  @override
  String get subscriptionLegalYearly => '年度訂閱會每年自動續期，直至你取消。訂閱即表示你接受使用條款及私隱政策。';

  @override
  String get myAnalyses => '我的分析';

  @override
  String get navAlerts => '提示';

  @override
  String get inviteTitle => '封閉預覽';

  @override
  String get inviteBody => 'WhatStock 目前只限受邀用戶使用。請輸入你收到的邀請碼。';

  @override
  String get inviteCodeLabel => '邀請碼';

  @override
  String get inviteContinue => '繼續';

  @override
  String get inviteInvalid => '此邀請碼無效。';

  @override
  String get inviteExpired => '此邀請已過期。請向邀請你的人索取新的邀請碼。';

  @override
  String get inviteDeviceLimit => '此邀請碼已在允許的最多裝置上使用。';

  @override
  String get previewConfidential => '機密預覽';

  @override
  String get errPreviewDailyLimit => '此預覽今日的分析次數已用完。請明天再試。';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 小時前',
      one: '1 小時前',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 日前',
      one: '1 日前',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => '要更新這份分析嗎？';

  @override
  String staleBody(String age) {
    return '這份分析於$age產生。此後價格、新聞及業績可能已有變化。';
  }

  @override
  String get staleKeep => '查看之前的分析';

  @override
  String get staleRefresh => '產生新分析';

  @override
  String seeAll(int count) {
    return '查看全部 ($count)';
  }

  @override
  String get searchAnalyses => '搜尋你的分析';

  @override
  String get deleteAnalysis => '刪除';

  @override
  String analysisDeleted(String symbol) {
    return '已刪除 $symbol 分析';
  }

  @override
  String get keyLevelAlertHint => '點一下價位，股價到達時便會提示你。';

  @override
  String get shareAnalysisTitle => '分享分析';

  @override
  String get shareAsImage => '以圖片分享';

  @override
  String get shareAsText => '以文字分享';

  @override
  String get shareCardFooter => '由 WhatStock 製作';

  @override
  String get shareCardDisclaimer => 'AI 分析 · 並不構成投資建議';

  @override
  String get referralTitle => '邀請朋友';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 次額外分析',
      one: '1 次額外分析',
    );
    return '分享你的邀請碼。朋友即時獲得 $_temp0，對方完成首次分析後，你亦會獲得相同次數。';
  }

  @override
  String get referralYourCode => '你的邀請碼';

  @override
  String referralStats(int invited, int rewarded) {
    return '已邀請：$invited · 已獎勵：$rewarded';
  }

  @override
  String get referralHaveCode => '有朋友的邀請碼？';

  @override
  String get referralRedeem => '兌換';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '已加入 $count 次額外分析。歡迎！',
      one: '已加入 1 次額外分析。歡迎！',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown => '此邀請碼不存在。請檢查後再試。';

  @override
  String get referralErrOwn => '你不能兌換自己的邀請碼。';

  @override
  String get referralErrAlready => '你已兌換過朋友的邀請碼。';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 次額外分析',
      one: '1 次額外分析',
    );
    return '我用 WhatStock 分析股票：為股票拍照，AI 就會為你解釋。用我的邀請碼 $code，即可獲得 $_temp0。';
  }

  @override
  String get referralCopied => '已複製邀請碼';
}
