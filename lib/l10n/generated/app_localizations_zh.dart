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
  String get labelYieldOnCost => '成本股息率';

  @override
  String get labelDividendGrowth5y => '股息增长（5年）';

  @override
  String get dividendNone => '过去 12 个月未派发股息。';

  @override
  String get dividendOnYourShares => '按您的持股，每年';

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
  String homeDividendsThisYear(String amount) {
    return '今年股息：$amount';
  }

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

  @override
  String get onboardTitle1 => '拍下一只股票';

  @override
  String get onboardBody1 =>
      '券商应用界面、报纸或公司标志都可以：WhatStock 会识别出股票，并显示它的价格、走势图和关键指标。';

  @override
  String get onboardTitle2 => '几分钟就能看懂';

  @override
  String get onboardBody2 =>
      'AI 分析会解释股价的驱动因素、风险、估值，以及股价未来走向的三种情景——附有信息来源，并使用你的语言。';

  @override
  String get onboardTitle3 => '动态尽在掌握';

  @override
  String get onboardBody3 => '收藏、投资组合和价格提醒让你随时掌握最新动态。你的分析保存在设备上，随时可以重新打开。';

  @override
  String get onboardNext => '下一步';

  @override
  String get onboardStart => '开始使用';

  @override
  String get onboardSkip => '跳过';

  @override
  String changesTitle(String date) {
    return '自上次分析以来（$date）';
  }

  @override
  String get changesPrice => '股价';

  @override
  String get changesNoMajor => '前景没有实质性变化。';

  @override
  String get changesPreviousSummary => '上次分析摘要';

  @override
  String get telemetryTitle => '帮助改进 WhatStock';

  @override
  String get telemetryBody =>
      '分享匿名使用统计信息和崩溃报告：使用了哪些功能以及出现了什么问题。绝不包含你的股票、分析或个人数据。你可以随时在设置中更改此选项。';

  @override
  String get telemetryAllow => '允许';

  @override
  String get telemetryDecline => '不用了，谢谢';

  @override
  String get telemetrySetting => '匿名统计信息和崩溃报告';

  @override
  String get telemetrySettingHint => '功能使用频率和错误报告，不包含个人数据，也不包含你的搜索和分析内容。';

  @override
  String get askButton => '就此分析提问';

  @override
  String askTitle(String symbol) {
    return '关于 $symbol 的问题';
  }

  @override
  String get askIntro =>
      '关于这份分析，你可以问任何问题：某项风险意味着什么、什么会改变前景、某个数字是怎么算出来的。回答基于这份分析，不构成投资建议。';

  @override
  String get askHint => '输入问题…';

  @override
  String get askSend => '发送';

  @override
  String get askThinking => '正在思考…';

  @override
  String get askSuggest1 => '最大的风险是什么？';

  @override
  String get askSuggest2 => '什么会改变前景？';

  @override
  String get askSuggest3 => '用简单的话解释一下';

  @override
  String get askMaxReached => '这是本次分析的最后一个问题。如需继续提问，请生成新的分析。';

  @override
  String get errAskLimit => '你已达到今日提问上限。请明天再试。';

  @override
  String get eventTomorrow => '明天';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days 天后',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => '季度财报';

  @override
  String get eventBeforeOpen => '盘前';

  @override
  String get eventAfterClose => '盘后';

  @override
  String eventEpsEstimate(String value) {
    return '预期每股收益：$value';
  }

  @override
  String get eventFromAnalysis => '来自你的分析';

  @override
  String get eventDividend => '预计派息';

  @override
  String get eventDividendEstimate => '根据您记录的派息估算';

  @override
  String get eventsHint =>
      '收藏和投资组合中股票未来 90 天的财报日期、你的分析中标记的有日期的事件，以及根据你记录的派息估算的预计派息。';

  @override
  String get eventsEmpty =>
      '未来 90 天内没有有日期的事件。添加收藏或投资组合股票，即可在此查看其财报日期；已记录的股息会在此显示下一次预计派息。';

  @override
  String get compareTitle => '对比';

  @override
  String get compareAdd => '添加股票';

  @override
  String get compareRemove => '移除';

  @override
  String get compareTickerHint => '股票代码，例如 MSFT';

  @override
  String get compareHint => '关键指标并排显示；每行最佳数值已突出显示。金额以各股票自身的货币计价。';

  @override
  String get compareNoAnalysis => '暂无分析';

  @override
  String get portfolioDividends => '年度股息';

  @override
  String portfolioDividendYield(String percent) {
    return '股息率 $percent';
  }

  @override
  String get portfolioDividendNote => '预期年度股息基于过去 12 个月已派发的股息估算；未来派息并无保证。';

  @override
  String positionDividend(String amount) {
    return '股息：每年 $amount';
  }

  @override
  String get chartAvgCost => '你的均价';

  @override
  String get chartAlertLevel => '提醒';

  @override
  String get marketsToday => '今日市场';

  @override
  String get notesTitle => '我的笔记';

  @override
  String get notesHint => '您为什么买入？在关注什么？什么情况下会卖出？';

  @override
  String get notesInfo => '仅保存在此设备上。AI 分析会参考您的笔记。';

  @override
  String notesSaved(String date) {
    return '保存于 $date';
  }

  @override
  String get peersTitle => '同类公司';

  @override
  String get portfolioExport => '导出为 CSV';

  @override
  String get portfolioImport => '从 CSV 导入';

  @override
  String get portfolioImportHint =>
      '每行粘贴一笔买入：股票代码、数量、价格、货币、日期（YYYY-MM-DD）。各列可用逗号、分号或制表符分隔；标题行可省略。';

  @override
  String get portfolioImportButton => '导入';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '已添加 $count 笔买入',
      one: '已添加 1 笔买入',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '已跳过 $count 行',
      one: '已跳过 1 行',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo => '投资组合、收藏、价格提醒和笔记会在你的所有设备间同步。';

  @override
  String syncLast(String time) {
    return '上次同步：$time';
  }

  @override
  String get syncNow => '立即同步';

  @override
  String get syncFailed => '同步失败，将自动重试。';

  @override
  String get alertEmailTitle => '提醒触发时发送电子邮件';

  @override
  String get alertEmailOn => '我们每隔几分钟检查一次你的提醒，即使应用已关闭，也会给你发送电子邮件。';

  @override
  String get alertEmailSignIn => '在设置中用电子邮件登录，即使应用已关闭，也能通过电子邮件收到提醒。';

  @override
  String get portfolioHistory => '市值走势';

  @override
  String get portfolioReviewTitle => 'AI 投资组合诊断';

  @override
  String get portfolioReviewIntro =>
      'AI 将全面审视整个投资组合：集中度、行业与货币敞口、持仓股票的共同风险以及股息。消耗 1 次分析。';

  @override
  String get portfolioReviewButton => '诊断我的投资组合';

  @override
  String get portfolioReviewAgain => '重新诊断';

  @override
  String get portfolioReviewWorking => '正在诊断投资组合…';

  @override
  String get digestTitle => '每周邮件摘要';

  @override
  String get digestHint => '每周一：你的收藏和投资组合上周的走势，以及即将公布财报的日期。';

  @override
  String get benchmarkTitle => '与 S&P 500 对比';

  @override
  String get benchmarkTitleIndex => '与指数对比';

  @override
  String get benchmarkHintIndex => '假设每笔买入都在当天投入跟踪所选指数的基金。不含股息；过往回报不代表未来表现。';

  @override
  String get benchmarkYours => '您的买入';

  @override
  String benchmarkAhead(String points) {
    return '比指数高 $points 个百分点';
  }

  @override
  String benchmarkBehind(String points) {
    return '比指数低 $points 个百分点';
  }

  @override
  String get portfolioSell => '卖出';

  @override
  String portfolioSellTitle(String symbol) {
    return '卖出 $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return '每股卖出价格（$currency）';
  }

  @override
  String get portfolioSellDate => '卖出日期';

  @override
  String get portfolioSellAll => '全部';

  @override
  String portfolioSellTooMany(String quantity) {
    return '仅持有 $quantity';
  }

  @override
  String get portfolioSold => '卖出';

  @override
  String get portfolioRealized => '已实现';

  @override
  String get portfolioClosed => '已清仓';

  @override
  String get portfolioClosedNote => '已全部卖出';

  @override
  String get portfolioTransactions => '交易记录';

  @override
  String get portfolioRealizedByYear => '按年度已实现收益';

  @override
  String get portfolioRealizedHint =>
      '卖出优先与最早的买入匹配（FIFO），按今日汇率换算。报税时请以券商的结单为准。';

  @override
  String staleNewResults(String symbol, String date) {
    return '此分析之后已发布新的季度财报（$symbol，$date）。';
  }

  @override
  String get newResultsBadge => '新财报';

  @override
  String get portfolioImportBrokers =>
      '也能识别 Revolut、Trading 212 和 Interactive Brokers 的导出文件，包括卖出记录；股息和入金会被跳过。';

  @override
  String get portfolioImportFile => '选择文件';

  @override
  String offlineBanner(String time) {
    return '无网络连接 – 正在显示上次保存的数据（$time）。';
  }

  @override
  String get glossMarketCap => '整个公司在股市上的价值：股价 × 股份数量。';

  @override
  String get glossSharesOutstanding => '公司已发行的股份数量。数量增加时，每股所占的份额变小；回购会使其减少。';

  @override
  String get glossPeTrailing =>
      '股价 ÷ 过去 12 个月的每股收益：相当于您为多少年的当前利润付钱。越低越便宜，但高速成长的公司 P/E 通常较高。';

  @override
  String get glossPeForward =>
      '与 P/E 类似，但使用分析师预期的未来 12 个月利润。低于滚动 P/E 意味着预计利润将增长。';

  @override
  String get glossPb => '股价 ÷ 每股账面价值（资产减去负债）。约为 1 表示市场对公司的估值相当于其账面上拥有的资产。';

  @override
  String get glossPs => '市值 ÷ 年营业收入。适用于利润还很少或尚无利润的公司；应在同一行业内比较。';

  @override
  String get glossEvToFcf => '包含债务的公司价值（EV）÷ 公司扣除投资后一年产生的现金。越低表示您付出的价格能换来更多现金。';

  @override
  String get glossPeg => 'P/E ÷ 预期年利润增长率（%）。约为 1 通常被视为合理；它把 P/E 放在增长的背景下来看。';

  @override
  String get glossEps => '过去 12 个月的每股利润。EPS 逐年上升是公司健康的最强信号之一。';

  @override
  String get glossBeta => '股票随大盘波动的程度：1 = 与大盘相同，1.5 = 波动约大 50%，低于 1 = 更平稳。';

  @override
  String get glossRevenueTtm => '过去 12 个月的销售总额，未扣除任何成本。';

  @override
  String get glossNetIncomeTtm => '过去 12 个月扣除所有成本、利息和税费后剩下的利润。';

  @override
  String get glossGrossMargin => '扣除产品直接成本后剩余收入所占的比例。毛利率高通常意味着定价能力强。';

  @override
  String get glossOperatingMargin => '扣除经营成本（工资、租金、营销）后、利息和税前剩余收入所占的比例。';

  @override
  String get glossNetMargin => '收入中最终成为利润的比例。20% 表示每 100 的销售额中有 20 是利润。';

  @override
  String get glossRoe => '净资产收益率：年利润 ÷ 股东的资本。显示管理层运用股东资金的效率；高于约 15% 算是强劲。';

  @override
  String get glossRoa => '总资产收益率：年利润 ÷ 公司拥有的全部资产。应在同一行业内比较。';

  @override
  String get glossDebtToEquity => '负债 ÷ 股东的资本。越高表示借来的钱越多：利率上升或业务放缓时风险更大。';

  @override
  String get glossCurrentRatio => '流动资产 ÷ 一年内到期的负债。高于 1 表示公司能够支付近期的账单。';

  @override
  String get glossRevenueGrowth => '营业收入与一年前相比增长了多少。';

  @override
  String get glossEpsGrowth => '每股收益与一年前相比增长了多少。';

  @override
  String get glossDividendYield => '年度股息 ÷ 股价：您每年可获得的现金收入，占您所付价格的百分比。';

  @override
  String get glossDividendPerShare => '过去一年每股派发的股息。';

  @override
  String get glossPayoutRatio => '利润中以股息形式派发的比例。超过 100% 表示公司派发的比赚的还多，这很少能持久。';

  @override
  String get portfolioBeta => '投资组合贝塔系数';

  @override
  String get glossPortfolioBeta =>
      '按市值加权的持仓股票贝塔系数：大盘涨跌 1% 时，您的股票大约涨跌百分之几。高于 1 表示波动大于大盘，低于 1 则小于大盘。不含现金。';

  @override
  String get portfolioTop3 => '前三大持仓';

  @override
  String get glossPortfolioTop3 =>
      '您的股票市值中有多少集中在前三大持仓。比例越高，单一公司的坏消息对整个投资组合的冲击就越大。';

  @override
  String get glossDividendGrowth5y =>
      '过去五年每股股息平均每年增长多少。稳定增长通常意味着公司对自身现金流有信心；削减股息往往是一个警示信号。';

  @override
  String get glossYieldOnCost =>
      '最近12个月收到的股息，除以您为仍持有的股份所支付的金额。与股息率不同，它以您自己的买入价而非当前价格为基准。';

  @override
  String get glossTitle => '这是什么意思？';

  @override
  String get watchNewsTitle => '你的股票新闻';

  @override
  String get undo => '撤销';

  @override
  String get watchSort => '排序';

  @override
  String get watchSortOwn => '我的顺序';

  @override
  String get watchSortGainers => '涨幅最大优先';

  @override
  String get watchSortLosers => '跌幅最大优先';

  @override
  String get watchSortName => '按股票代码 (A–Z)';

  @override
  String get watchHint => '拖动手柄可重新排序，向左滑动可移除。线条显示最近 30 天。';

  @override
  String analysisReady(String symbol) {
    return '$symbol：分析已完成。';
  }

  @override
  String alertFromCost(String price) {
    return '基于你的平均买入价（$price）：';
  }

  @override
  String get briefTitle => '今天你的股票';

  @override
  String get briefButton => '总结今天';

  @override
  String get briefHint => 'AI 简短总结你的投资组合和自选股今天的走势，以及最新新闻对它们的说法。不消耗分析次数。';

  @override
  String get briefRefresh => '更新';

  @override
  String get sectionEarnings => '财报';

  @override
  String earningsNext(String date) {
    return '下次财报：$date';
  }

  @override
  String get earningsExpected => '预期每股收益';

  @override
  String get earningsReported => '实际每股收益';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: '最近 $total 个季度中有 $beats 个达到或超过预期每股收益',
      one: '1 个季度中有 $beats 个达到或超过预期每股收益',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol 明天发布季度财报';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol 今天发布季度财报';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return '$symbol 预计今天派息';
  }

  @override
  String dividendReminderBody(String amount) {
    return '约 $amount。到账后请记入投资组合。';
  }

  @override
  String get dividendRemindersTitle => '派息提醒';

  @override
  String get dividendRemindersSubtitle => '根据您记录的派息节奏，在预计派息当天发送通知，方便您及时记录';

  @override
  String get earningsRemindersTitle => '财报提醒';

  @override
  String get earningsRemindersSubtitle => '在你收藏或持仓的股票发布季度财报前一天发送通知';

  @override
  String addAllToFavorites(int count) {
    return '全部添加到收藏 ($count)';
  }

  @override
  String get portfolioImportPhoto => '从截图导入';

  @override
  String get holdingsReading => '正在读取你的持仓…';

  @override
  String get holdingsReviewTitle => '找到的持仓';

  @override
  String get holdingsReviewHint => '添加前请核对数字。价格是你每股的平均买入价，而非今日价格。';

  @override
  String get holdingsNoPrice => '图片中没有平均买入价';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '添加 $count 个持仓',
      one: '添加 1 个持仓',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone => '此图片中未找到股票持仓。请尝试使用券商持仓页面的截图。';

  @override
  String get week52Range => '52周区间';

  @override
  String week52BelowHigh(String percent) {
    return '较52周最高低$percent';
  }

  @override
  String get week52AtHigh => '处于52周最高';

  @override
  String get alertKindTrailing => '从高点回落';

  @override
  String get alertTrailingPercent => '从高点回落（%）';

  @override
  String get alertTrailingHint => '随价格上行跟踪：价格从设置以来的最高点回落此幅度时提醒。';

  @override
  String alertDescTrailing(String percent) {
    return '从高点回落 $percent';
  }

  @override
  String alertTrailingPeak(String price) {
    return '目前最高：$price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol 从高点回落 $percent';
  }

  @override
  String get sectionInsiders => '内部人交易';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 笔买入',
      one: '1 笔买入',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 笔卖出',
      one: '1 笔卖出',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return '净额：$shares 股';
  }

  @override
  String get insiderBuy => '买入';

  @override
  String get insiderSell => '卖出';

  @override
  String get insiderHint =>
      '过去 90 天内高管和董事在公开市场的买入和卖出（SEC Form 4）。不包括期权行权和股票奖励。';

  @override
  String get insiderNone => '过去 90 天内没有内部人在公开市场买入或卖出。';

  @override
  String get analystTrend => '观点逐月变化';

  @override
  String get watchListAll => '全部';

  @override
  String get watchListNew => '新建列表';

  @override
  String get watchListName => '列表名称';

  @override
  String get watchListRename => '重命名列表';

  @override
  String get watchListDelete => '删除列表';

  @override
  String get watchListAddTo => '添加到列表';

  @override
  String get watchListEmpty => '此列表中还没有股票。点按股票旁的列表按钮即可添加。';

  @override
  String get portfolioAskTitle => '关于你的投资组合的问题';

  @override
  String get rangeYtd => '年初至今';

  @override
  String get backupTitle => '备份';

  @override
  String get backupSave => '保存备份';

  @override
  String get backupSaveHint => '您的收藏、列表、投资组合、提醒和笔记都在一个文件中。';

  @override
  String get backupRestore => '从备份恢复';

  @override
  String get backupRestoreHint => '添加文件中的内容；不会删除您现有的任何数据。';

  @override
  String get backupRestored => '备份已恢复。';

  @override
  String get backupInvalid => '此文件不是 WhatStock 备份。';

  @override
  String get allocationPositions => '个股';

  @override
  String get allocationSectors => '板块';

  @override
  String get allocationCurrencies => '货币';

  @override
  String get allocationAccounts => '账户';

  @override
  String get compareReturn1y => '1年回报';

  @override
  String get compareFromHigh => '距52周最高';

  @override
  String get briefAutoTitle => '每日早间摘要';

  @override
  String get briefAutoSubtitle =>
      '应用运行期间，“今天你的股票”会在早上7点后自动生成；在电脑上会通过通知提醒你。占用每日提问次数，不消耗分析次数。';

  @override
  String get targetsButton => '目标配置';

  @override
  String get targetsTitle => '目标配置';

  @override
  String get targetsHint =>
      '设置每只股票在投资组合中应占的比例。留空表示不设目标。应用随后会显示需要买入或卖出多少才能达到目标。';

  @override
  String targetsSum(String percent) {
    return '合计：$percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return '买入 ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return '卖出 ≈ $amount';
  }

  @override
  String get rebalanceOk => '已达目标';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol 每股收益超出预期';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol 每股收益不及预期';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return '实际每股收益 $actual，预期 $estimate';
  }

  @override
  String get newsExplain => '这意味着什么？';

  @override
  String get watchAlertAll => '单日大幅波动提醒';

  @override
  String get watchAlertAllHint =>
      '为此列表中的每只股票设置价格提醒：单日上涨或下跌达到该幅度时提醒你。已设有此类提醒的股票将保留原有提醒。';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '已设置 $count 个提醒',
      one: '已设置 1 个提醒',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => '导出已实现盈亏 (CSV)';

  @override
  String get portfolioAnnualReturn => '年化收益率';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / 年';
  }

  @override
  String get portfolioAnnualReturnHint =>
      '资金加权年化收益率（XIRR）：会考虑你买入和卖出的时间，因此后来追加的资金不会造成偏差。首次买入满一年后显示；不含股息。';

  @override
  String get eventsAddToCalendar => '添加到日历 (.ics)';

  @override
  String get portfolioMoveAlertTitle => '持仓异动提醒';

  @override
  String get portfolioMoveAlertSubtitle => '当你的整体持仓单日波动达到此幅度时发送通知。';

  @override
  String get portfolioMoveAlertOff => '关闭';

  @override
  String portfolioMoveUp(String percent) {
    return '你的持仓今日上涨 $percent';
  }

  @override
  String portfolioMoveDown(String percent) {
    return '你的持仓今日下跌 $percent';
  }

  @override
  String get whatIfTitle => '如果当初投资了呢？';

  @override
  String get whatIfAmount => '金额';

  @override
  String whatIfResult(String amount, String period) {
    return '$period前投资的$amount，现在价值';
  }

  @override
  String get whatIfNote => '仅基于股价计算：不含股息、费用和税费。过往回报不代表未来表现。';

  @override
  String get watchShare => '分享列表';

  @override
  String get watchImport => '添加股票代码';

  @override
  String get watchImportHint => '粘贴以逗号、空格或换行分隔的股票代码，例如别人分享给你的列表。';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '已添加 $count 只股票',
      one: '已添加 1 只股票',
      zero: '没有新股票',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => '市值最大优先';

  @override
  String get positionsSortGain => '总收益率最高优先';

  @override
  String get positionsSortToday => '今日表现最佳优先';

  @override
  String get chartMyBuys => '你的买入';

  @override
  String get chartMySells => '你的卖出';

  @override
  String get shortcutsTitle => '键盘快捷键';

  @override
  String usMarketOpen(String time) {
    return '美股交易中 · $time后收盘';
  }

  @override
  String usMarketClosed(String time) {
    return '美股已收盘 · $time后开盘';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes 分钟';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours 小时 $minutes 分钟';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days 天 $hours 小时';
  }

  @override
  String get dividendGoalSet => '设定每月股息目标';

  @override
  String get dividendGoalTitle => '每月股息目标';

  @override
  String get dividendGoalAmount => '每月股息';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return '按当前股息率每月约 $amount：已达成 $percent · 目标 $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return '按当前股息率每月约 $amount：已达成 $goal 目标';
  }

  @override
  String get portfolioAccount => '账户';

  @override
  String get portfolioAccountHint => '例如 个人养老金（可选）';

  @override
  String get portfolioAccountAdd => '指定账户';

  @override
  String get portfolioAccountsAll => '全部账户';

  @override
  String get portfolioAccountNote => '仅显示此账户的交易。现金和股息显示在“全部账户”下。';

  @override
  String get portfolioNoAccount => '无账户';

  @override
  String get portfolioGoalSet => '设定目标';

  @override
  String get portfolioGoalTitle => '投资组合目标';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '已达成 $percent · 目标 $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return '已达成 $amount 目标';
  }

  @override
  String get portfolioGoalRemove => '移除目标';

  @override
  String get alertEdit => '编辑提醒';

  @override
  String get positionOpenLots => '仍持有（最早的在前）';

  @override
  String get lotRemoved => '已删除交易记录';

  @override
  String get alertDeleted => '已删除提醒';

  @override
  String get alertsClearTriggered => '清除已触发的提醒';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '已清除 $count 个提醒',
      one: '已清除 1 个提醒',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => '首页';

  @override
  String get allocationCountries => '国家';

  @override
  String get newsExplainNoteResearch =>
      'AI 解读：在网上查证事实，打开原文，并评估来源的可靠程度。不构成投资建议。占用每日提问次数，不消耗分析次数。';

  @override
  String get sourceOfficial => '官方';

  @override
  String get sourcePressRelease => '新闻稿';

  @override
  String get sourceMajorNews => '主流媒体';

  @override
  String get sourceOpinion => '观点';

  @override
  String get earningsSummaryButton => '最新财报说了什么？';

  @override
  String get earningsSummaryNote =>
      'AI 汇总公司的业绩公告以及在网上找到的媒体报道。不构成投资建议。占用每日提问次数，不消耗分析次数。';

  @override
  String get compareLastSurprise => '上季每股收益 vs 预期';

  @override
  String get compareNextReport => '下次财报';

  @override
  String get resolvingDescription => '正在确定你指的是哪只股票…';

  @override
  String get instrumentTitle => '关于该标的';

  @override
  String get instrumentHint =>
      '该代码没有公司资料，可能是 ETF、基金或存托凭证。问问 AI 它是什么、持有什么以及费用多少。';

  @override
  String get instrumentAsk => '这是什么？';

  @override
  String get instrumentNote =>
      'AI 根据发行方的基金页面以及在网上找到的财经网站进行说明。不构成投资建议。占用每日提问次数，不消耗分析次数。';

  @override
  String suggestAskAi(String query) {
    return '问问 AI：“$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return '$symbols暂无当前价格。';
  }

  @override
  String get eventsRecentResults => '最新财报';

  @override
  String get saveToNotes => '保存到我的笔记';

  @override
  String get savedToNotes => '已保存到您的笔记';

  @override
  String get portfolioDividendsReceived => '已收股息';

  @override
  String get portfolioDividendsThisYear => '今年';

  @override
  String get portfolioDividendsAllTime => '累计';

  @override
  String get portfolioAddDividend => '添加股息';

  @override
  String portfolioDividendAmount(String currency) {
    return '实收金额（$currency）';
  }

  @override
  String get portfolioDividendDate => '派息日期';

  @override
  String get portfolioDividendsEmpty =>
      '尚未记录任何股息。可手动添加，或导入券商的导出文件，其中的股息记录也会被识别。';

  @override
  String get portfolioSplit => '股票拆分';

  @override
  String portfolioSplitTitle(String symbol) {
    return '股票拆分：$symbol';
  }

  @override
  String get portfolioSplitHint => '拆分日期之前的买入和卖出将被调整：股数相乘、每股价格相除，因此成本保持不变。';

  @override
  String get portfolioSplitRatio => '比例（新 : 旧）';

  @override
  String get portfolioSplitRatioError => '请输入比例，例如 10:1；反向拆分（合股）则输入 1:10。';

  @override
  String get portfolioSplitDate => '拆分日期';

  @override
  String portfolioSplitRow(String ratio) {
    return '股票拆分 $ratio';
  }

  @override
  String get portfolioSplitRemoved => '已删除股票拆分';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '已添加 $count 项股票拆分',
      one: '已添加 1 项股票拆分',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '已添加 $count 笔股息',
      one: '已添加 1 笔股息',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => '导出股息（CSV）';

  @override
  String get portfolioDividendDeleted => '股息已删除';

  @override
  String get portfolioDividendsHint => '金额以到账时的派息货币显示；合计按今日汇率换算。报税请以券商对账单为准。';

  @override
  String get awayTitle => '您离开期间';

  @override
  String awaySince(String when) {
    return '自 $when 起';
  }

  @override
  String get awayQuiet => '没有明显变动。';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个提醒已触发',
      one: '1 个提醒已触发',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return '已公布财报：$symbols';
  }

  @override
  String get moveWhyButton => '今天为何波动？';

  @override
  String moveWhyTitle(String percent) {
    return '今日 $percent';
  }

  @override
  String get moveWhyNote =>
      'AI 根据网上找到的今日新闻给出的解释；真实原因可能未知或有所不同。不构成投资建议。消耗您的每日提问额度，而非分析额度。';

  @override
  String get sectionTechnical => '技术面';

  @override
  String get labelSma50 => '50日均线';

  @override
  String get labelSma200 => '200日均线';

  @override
  String get labelRsi => 'RSI（14日）';

  @override
  String get labelVolatility30 => '波动率（30日）';

  @override
  String techAbove(String percent) {
    return '高于均线 $percent';
  }

  @override
  String techBelow(String percent) {
    return '低于均线 $percent';
  }

  @override
  String get techOverbought => '超买';

  @override
  String get techOversold => '超卖';

  @override
  String get techNeutral => '中性';

  @override
  String get techGoldenCross => '50日均线位于200日均线之上——按传统解读为上升趋势。';

  @override
  String get techDeathCross => '50日均线位于200日均线之下——按传统解读为下降趋势。';

  @override
  String get glossSma50 => '最近50个交易日收盘价的平均值。价格在其上方通常被视为短期强势，在其下方则被视为弱势。';

  @override
  String get glossSma200 => '最近200个交易日收盘价的平均值——经典的长期趋势线。许多投资者把价格位于其上方视为长期上升趋势。';

  @override
  String get glossRsi =>
      '相对强弱指数：在0–100的区间内比较近期涨幅与近期跌幅。高于70通常称为超买（涨得太快），低于30称为超卖——但强势趋势可能长时间停留在这些区域。';

  @override
  String get glossVolatility =>
      '价格每日波动的幅度，按年折算：20%表示在典型的一年内价格大致在±20%范围内波动。波动率越高，涨跌幅度都越大。';

  @override
  String get techNote => '根据每日收盘价计算。技术信号描述的是过去，而非未来。';

  @override
  String portfolioAbove200(int above, int count) {
    return '$count 个持仓中有 $above 个高于其 200 日均线';
  }

  @override
  String get watchSignalsTitle => '信号';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · 超卖';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · 超买';
  }

  @override
  String get signalCrossedAbove => '上穿200日均线';

  @override
  String get signalCrossedBelow => '下穿200日均线';

  @override
  String get signalAlertsTitle => '技术信号通知';

  @override
  String get signalAlertsSubtitle =>
      '每天一次，当您关注的股票进入超卖或超买（RSI）状态，或其价格穿越200日均线时。';

  @override
  String get signalAlertsNotification => '技术信号';

  @override
  String get glossaryPageTitle => '术语表';

  @override
  String get glossaryPageSubtitle => '用通俗语言解释应用中显示的每个指标，从 P/E 到 RSI';

  @override
  String get glossarySearchHint => '搜索术语表';

  @override
  String get portfolioCash => '现金';

  @override
  String get portfolioCashTitle => '现金余额';

  @override
  String get portfolioCashHint => '券商账户中未投资的资金，按货币分列。计入总市值和配置，不计入收益。';

  @override
  String portfolioCashAmount(String currency) {
    return '金额 ($currency)';
  }

  @override
  String get portfolioCashEdit => '设置现金余额';

  @override
  String get portfolioDividendsByMonth => '按月';

  @override
  String get dividendsLegendReceived => '已收';

  @override
  String get dividendsLegendExpected => '预计';

  @override
  String get portfolioDividendsExpected => '预计下次';

  @override
  String get portfolioDividendsExpectedNote => '根据您记录的派息日期和金额估算；公司可能更改或取消派息。';

  @override
  String portfolioDividendAround(String date) {
    return '约 $date';
  }
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
  String get labelYieldOnCost => '成本股息率';

  @override
  String get labelDividendGrowth5y => '股息增長（5年）';

  @override
  String get dividendNone => '過去 12 個月未有派發股息。';

  @override
  String get dividendOnYourShares => '按你的持股，每年';

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
  String homeDividendsThisYear(String amount) {
    return '今年股息：$amount';
  }

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

  @override
  String get onboardTitle1 => '拍一張股票相片';

  @override
  String get onboardBody1 =>
      '證券商 App 畫面、報紙或公司商標都可以：WhatStock 會識別股票，並顯示其股價、走勢圖及主要數據。';

  @override
  String get onboardTitle2 => '數分鐘內輕鬆看懂';

  @override
  String get onboardBody2 =>
      'AI 分析會解釋推動股價的因素、風險、估值，以及股價未來走勢的三個情境——附有資料來源，並以你的語言呈現。';

  @override
  String get onboardTitle3 => '市況盡在掌握';

  @override
  String get onboardBody3 => '收藏、投資組合及價格提示助你緊貼最新動態。你的分析會儲存在裝置上，隨時可再次開啟。';

  @override
  String get onboardNext => '下一步';

  @override
  String get onboardStart => '開始使用';

  @override
  String get onboardSkip => '略過';

  @override
  String changesTitle(String date) {
    return '自上次分析以來（$date）';
  }

  @override
  String get changesPrice => '股價';

  @override
  String get changesNoMajor => '前景沒有實質變化。';

  @override
  String get changesPreviousSummary => '上次分析摘要';

  @override
  String get telemetryTitle => '協助改善 WhatStock';

  @override
  String get telemetryBody =>
      '分享匿名使用統計資料及當機報告：使用了哪些功能，以及出現了甚麼問題。絕不包括你的股票、分析或個人資料。你可隨時在「設定」中更改。';

  @override
  String get telemetryAllow => '允許';

  @override
  String get telemetryDecline => '不用了，謝謝';

  @override
  String get telemetrySetting => '匿名統計資料及當機報告';

  @override
  String get telemetrySettingHint => '功能使用頻率及錯誤報告，不包括個人資料，亦不包括你的搜尋及分析內容。';

  @override
  String get askButton => '就此分析提問';

  @override
  String askTitle(String symbol) {
    return '關於 $symbol 的問題';
  }

  @override
  String get askIntro =>
      '你可以就這份分析提出任何問題：某項風險代表甚麼、甚麼會改變前景、某個數字是怎樣計算出來的。回答以這份分析為基礎，並不構成投資建議。';

  @override
  String get askHint => '輸入問題…';

  @override
  String get askSend => '傳送';

  @override
  String get askThinking => '正在思考…';

  @override
  String get askSuggest1 => '最大的風險是甚麼？';

  @override
  String get askSuggest2 => '甚麼會改變前景？';

  @override
  String get askSuggest3 => '用簡單的說法解釋一下';

  @override
  String get askMaxReached => '這是此分析的最後一個問題。如要繼續提問，請產生新的分析。';

  @override
  String get errAskLimit => '你已達到今日的提問上限。請明天再試。';

  @override
  String get eventTomorrow => '明日';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days 日後',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => '季度業績';

  @override
  String get eventBeforeOpen => '開市前';

  @override
  String get eventAfterClose => '收市後';

  @override
  String eventEpsEstimate(String value) {
    return '預期每股盈利：$value';
  }

  @override
  String get eventFromAnalysis => '來自你的分析';

  @override
  String get eventDividend => '預計派息';

  @override
  String get eventDividendEstimate => '根據你記錄的派息估算';

  @override
  String get eventsHint =>
      '收藏及投資組合股票未來 90 日的業績公佈日期、你的分析所標示的有日期事件，以及根據你記錄的派息估算的預計派息。';

  @override
  String get eventsEmpty =>
      '未來 90 日沒有有日期的事件。加入收藏或投資組合股票，即可在此查看其業績公佈日期；已記錄的股息會在此顯示下一次預計派息。';

  @override
  String get compareTitle => '比較';

  @override
  String get compareAdd => '加入股票';

  @override
  String get compareRemove => '移除';

  @override
  String get compareTickerHint => '股票代號，例如 MSFT';

  @override
  String get compareHint => '主要數據並排顯示；每行最佳數值會突出顯示。金額以各股票本身的貨幣計算。';

  @override
  String get compareNoAnalysis => '暫無分析';

  @override
  String get portfolioDividends => '全年股息';

  @override
  String portfolioDividendYield(String percent) {
    return '股息率 $percent';
  }

  @override
  String get portfolioDividendNote => '預期全年股息根據過去 12 個月已派發的股息計算；日後派息並無保證。';

  @override
  String positionDividend(String amount) {
    return '股息：每年 $amount';
  }

  @override
  String get chartAvgCost => '你的均價';

  @override
  String get chartAlertLevel => '提示';

  @override
  String get marketsToday => '今日市場';

  @override
  String get notesTitle => '我的筆記';

  @override
  String get notesHint => '你為何買入？正在留意甚麼？甚麼情況下會賣出？';

  @override
  String get notesInfo => '只會儲存在此裝置上。AI 分析會參考你的筆記。';

  @override
  String notesSaved(String date) {
    return '儲存時間：$date';
  }

  @override
  String get peersTitle => '同類公司';

  @override
  String get portfolioExport => '匯出為 CSV';

  @override
  String get portfolioImport => '從 CSV 匯入';

  @override
  String get portfolioImportHint =>
      '每行貼上一筆買入：股票代號、數量、價格、貨幣、日期（YYYY-MM-DD）。各欄可用逗號、分號或定位字元分隔；標題行可省略。';

  @override
  String get portfolioImportButton => '匯入';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '已加入 $count 筆買入',
      one: '已加入 1 筆買入',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '已略過 $count 行',
      one: '已略過 1 行',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo => '投資組合、收藏、價格提示及筆記會在你的所有裝置之間同步。';

  @override
  String syncLast(String time) {
    return '上次同步：$time';
  }

  @override
  String get syncNow => '立即同步';

  @override
  String get syncFailed => '同步失敗，系統會自動重試。';

  @override
  String get alertEmailTitle => '提示觸發時發送電郵';

  @override
  String get alertEmailOn => '我們每隔幾分鐘檢查一次你的提示，即使程式已關閉，也會以電郵通知你。';

  @override
  String get alertEmailSignIn => '在設定中以電郵登入，即使程式已關閉，也能以電郵收到提示。';

  @override
  String get portfolioHistory => '市值走勢';

  @override
  String get portfolioReviewTitle => 'AI 投資組合診斷';

  @override
  String get portfolioReviewIntro =>
      'AI 會全面審視整個投資組合：集中度、行業及貨幣風險、持倉股票的共同風險，以及股息。用 1 次分析。';

  @override
  String get portfolioReviewButton => '診斷我的投資組合';

  @override
  String get portfolioReviewAgain => '重新診斷';

  @override
  String get portfolioReviewWorking => '正在診斷投資組合…';

  @override
  String get digestTitle => '每週電郵摘要';

  @override
  String get digestHint => '逢星期一：你的收藏及投資組合上週的走勢，以及即將公佈業績的日期。';

  @override
  String get benchmarkTitle => '與 S&P 500 比較';

  @override
  String get benchmarkTitleIndex => '與指數比較';

  @override
  String get benchmarkHintIndex => '假設每筆買入都在同日投入追蹤所選指數的基金。不包括股息；過往回報並不預示未來表現。';

  @override
  String get benchmarkYours => '你的買入';

  @override
  String benchmarkAhead(String points) {
    return '比指數高 $points 個百分點';
  }

  @override
  String benchmarkBehind(String points) {
    return '比指數低 $points 個百分點';
  }

  @override
  String get portfolioSell => '賣出';

  @override
  String portfolioSellTitle(String symbol) {
    return '賣出 $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return '每股賣出價格（$currency）';
  }

  @override
  String get portfolioSellDate => '賣出日期';

  @override
  String get portfolioSellAll => '全部';

  @override
  String portfolioSellTooMany(String quantity) {
    return '只持有 $quantity';
  }

  @override
  String get portfolioSold => '賣出';

  @override
  String get portfolioRealized => '已實現';

  @override
  String get portfolioClosed => '已清倉';

  @override
  String get portfolioClosedNote => '已全部賣出';

  @override
  String get portfolioTransactions => '交易記錄';

  @override
  String get portfolioRealizedByYear => '按年度已實現收益';

  @override
  String get portfolioRealizedHint =>
      '賣出優先與最早的買入配對（FIFO），按今日匯率換算。報稅時請以經紀的結單為準。';

  @override
  String staleNewResults(String symbol, String date) {
    return '此分析之後已公佈新一季業績（$symbol，$date）。';
  }

  @override
  String get newResultsBadge => '新業績';

  @override
  String get portfolioImportBrokers =>
      '亦能識別 Revolut、Trading 212 及 Interactive Brokers 的匯出檔案，包括賣出記錄；股息及入金會略過。';

  @override
  String get portfolioImportFile => '選擇檔案';

  @override
  String offlineBanner(String time) {
    return '沒有網絡連線 – 正在顯示上次儲存的數據（$time）。';
  }

  @override
  String get glossMarketCap => '整間公司在股市上的價值：股價 × 股份數目。';

  @override
  String get glossSharesOutstanding => '公司已發行的股份數目。數目增加時，每股所佔的份額變小；回購會令其減少。';

  @override
  String get glossPeTrailing =>
      '股價 ÷ 過去 12 個月的每股盈利：即你為多少年的現時盈利付錢。越低越便宜，但增長快的公司 P/E 通常較高。';

  @override
  String get glossPeForward =>
      '與 P/E 相似，但採用分析師預期未來 12 個月的盈利。低於歷史 P/E 即預期盈利會增長。';

  @override
  String get glossPb => '股價 ÷ 每股賬面值（資產減負債）。約 1 表示市場對公司的估值相當於其賬面上擁有的資產。';

  @override
  String get glossPs => '市值 ÷ 全年收入。適用於盈利仍然很少或未有盈利的公司；宜在同一行業內比較。';

  @override
  String get glossEvToFcf =>
      '包括債務在內的公司價值（EV）÷ 公司扣除投資後一年產生的現金。越低表示你付出的價錢能換到更多現金。';

  @override
  String get glossPeg => 'P/E ÷ 預期每年盈利增長（%）。約 1 通常被視為合理；它從增長角度衡量 P/E。';

  @override
  String get glossEps => '過去 12 個月的每股盈利。EPS 逐年上升是公司健康的最強訊號之一。';

  @override
  String get glossBeta => '股票隨大市波動的程度：1 = 與大市一樣，1.5 = 波幅約大 50%，低於 1 = 較平穩。';

  @override
  String get glossRevenueTtm => '過去 12 個月的銷售總額，未扣除任何成本。';

  @override
  String get glossNetIncomeTtm => '過去 12 個月扣除所有成本、利息及稅項後剩下的盈利。';

  @override
  String get glossGrossMargin => '扣除產品直接成本後所剩收入的比例。毛利率高通常代表有定價能力。';

  @override
  String get glossOperatingMargin => '扣除營運成本（薪金、租金、市場推廣）後、未計利息及稅項前所剩收入的比例。';

  @override
  String get glossNetMargin => '收入中最終成為盈利的比例。20% 即每 100 銷售額中有 20 是盈利。';

  @override
  String get glossRoe => '股本回報率：全年盈利 ÷ 股東資本。反映管理層運用股東資金的成效；高於約 15% 屬強勁。';

  @override
  String get glossRoa => '資產回報率：全年盈利 ÷ 公司擁有的一切資產。宜在同一行業內比較。';

  @override
  String get glossDebtToEquity => '負債 ÷ 股東資本。越高代表借貸越多：利率上升或業務放緩時風險更大。';

  @override
  String get glossCurrentRatio => '流動資產 ÷ 一年內到期的負債。高於 1 表示公司能應付短期內要付的賬項。';

  @override
  String get glossRevenueGrowth => '收入較一年前增長了多少。';

  @override
  String get glossEpsGrowth => '每股盈利較一年前增長了多少。';

  @override
  String get glossDividendYield => '全年股息 ÷ 股價：你每年可收到的現金收入，以所付價錢的百分比計算。';

  @override
  String get glossDividendPerShare => '過去一年每股派發的股息。';

  @override
  String get glossPayoutRatio => '盈利中以股息派發的比例。超過 100% 即公司派發多於所賺，這情況很少能持續。';

  @override
  String get portfolioBeta => '投資組合 Beta 值';

  @override
  String get glossPortfolioBeta =>
      '按市值加權的持股 Beta 值：大市升跌 1% 時，你的股票大約升跌百分之幾。高於 1 代表波幅大於大市，低於 1 則較小。不包括現金。';

  @override
  String get portfolioTop3 => '三大持倉';

  @override
  String get glossPortfolioTop3 =>
      '你的股票市值中有多少集中在三大持倉。比例越高，單一公司的壞消息對整個投資組合的打擊就越大。';

  @override
  String get glossDividendGrowth5y =>
      '過去五年每股股息平均每年增長多少。穩定增長通常代表公司對自身現金流有信心；削減股息往往是警號。';

  @override
  String get glossYieldOnCost =>
      '最近12個月收到的股息，除以你為仍然持有的股份所付出的金額。與股息率不同，它以你自己的買入價而非今日價格計算。';

  @override
  String get glossTitle => '這是甚麼意思？';

  @override
  String get watchNewsTitle => '你的股票新聞';

  @override
  String get undo => '復原';

  @override
  String get watchSort => '排序';

  @override
  String get watchSortOwn => '我的次序';

  @override
  String get watchSortGainers => '升幅最大優先';

  @override
  String get watchSortLosers => '跌幅最大優先';

  @override
  String get watchSortName => '按股票代號 (A–Z)';

  @override
  String get watchHint => '拖動手柄可重新排序，向左滑動可移除。線條顯示最近 30 日。';

  @override
  String analysisReady(String symbol) {
    return '$symbol：分析已完成。';
  }

  @override
  String alertFromCost(String price) {
    return '按你的平均買入價（$price）：';
  }

  @override
  String get briefTitle => '今天你的股票';

  @override
  String get briefButton => '總結今天';

  @override
  String get briefHint => 'AI 簡短總結你的投資組合和自選股今天的走勢，以及最新新聞對它們的說法。不消耗分析次數。';

  @override
  String get briefRefresh => '更新';

  @override
  String get sectionEarnings => '業績';

  @override
  String earningsNext(String date) {
    return '下次業績公佈：$date';
  }

  @override
  String get earningsExpected => '預期每股盈利';

  @override
  String get earningsReported => '實際每股盈利';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: '最近 $total 個季度中有 $beats 個達到或超過預期每股盈利',
      one: '1 個季度中有 $beats 個達到或超過預期每股盈利',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol 明日公布季度業績';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol 今日公布季度業績';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return '$symbol 預計今日派息';
  }

  @override
  String dividendReminderBody(String amount) {
    return '約 $amount。到賬後請記入投資組合。';
  }

  @override
  String get dividendRemindersTitle => '派息提示';

  @override
  String get dividendRemindersSubtitle => '根據你記錄的派息節奏，在預計派息當日發出通知，方便你記錄';

  @override
  String get earningsRemindersTitle => '業績提示';

  @override
  String get earningsRemindersSubtitle => '在你收藏或持倉的股票公布季度業績前一日發出通知';

  @override
  String addAllToFavorites(int count) {
    return '全部加入收藏 ($count)';
  }

  @override
  String get portfolioImportPhoto => '從截圖匯入';

  @override
  String get holdingsReading => '正在讀取你的持倉…';

  @override
  String get holdingsReviewTitle => '找到的持倉';

  @override
  String get holdingsReviewHint => '加入前請核對數字。價格是你每股的平均買入價，而非今日價格。';

  @override
  String get holdingsNoPrice => '圖片中沒有平均買入價';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '加入 $count 個持倉',
      one: '加入 1 個持倉',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone => '此圖片中找不到股票持倉。請試用券商持倉頁面的截圖。';

  @override
  String get week52Range => '52週波幅';

  @override
  String week52BelowHigh(String percent) {
    return '較52週高位低$percent';
  }

  @override
  String get week52AtHigh => '處於52週高位';

  @override
  String get alertKindTrailing => '從高位回落';

  @override
  String get alertTrailingPercent => '從高位回落（%）';

  @override
  String get alertTrailingHint => '隨價格上升跟蹤：價格由設定以來的最高位回落此幅度時提醒。';

  @override
  String alertDescTrailing(String percent) {
    return '從高位回落 $percent';
  }

  @override
  String alertTrailingPeak(String price) {
    return '至今最高：$price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol 從高位回落 $percent';
  }

  @override
  String get sectionInsiders => '內部人士交易';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 宗買入',
      one: '1 宗買入',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 宗賣出',
      one: '1 宗賣出',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return '淨額：$shares 股';
  }

  @override
  String get insiderBuy => '買入';

  @override
  String get insiderSell => '賣出';

  @override
  String get insiderHint => '過去 90 日內行政人員及董事在公開市場的買賣（SEC Form 4）。不包括行使期權及股份獎勵。';

  @override
  String get insiderNone => '過去 90 日內沒有內部人士在公開市場買入或賣出。';

  @override
  String get analystTrend => '觀點逐月變化';

  @override
  String get watchListAll => '全部';

  @override
  String get watchListNew => '新增清單';

  @override
  String get watchListName => '清單名稱';

  @override
  String get watchListRename => '重新命名清單';

  @override
  String get watchListDelete => '刪除清單';

  @override
  String get watchListAddTo => '加入清單';

  @override
  String get watchListEmpty => '此清單暫時未有股票。輕按股票旁的清單按鈕即可加入。';

  @override
  String get portfolioAskTitle => '關於你的投資組合的問題';

  @override
  String get rangeYtd => '年初至今';

  @override
  String get backupTitle => '備份';

  @override
  String get backupSave => '儲存備份';

  @override
  String get backupSaveHint => '你的收藏、清單、投資組合、提示和筆記都在一個檔案中。';

  @override
  String get backupRestore => '從備份還原';

  @override
  String get backupRestoreHint => '加入檔案中的內容；不會刪除你現有的任何資料。';

  @override
  String get backupRestored => '備份已還原。';

  @override
  String get backupInvalid => '此檔案並非 WhatStock 備份。';

  @override
  String get allocationPositions => '個股';

  @override
  String get allocationSectors => '板塊';

  @override
  String get allocationCurrencies => '貨幣';

  @override
  String get allocationAccounts => '帳戶';

  @override
  String get compareReturn1y => '1年回報';

  @override
  String get compareFromHigh => '距52週高位';

  @override
  String get briefAutoTitle => '每日早晨摘要';

  @override
  String get briefAutoSubtitle =>
      '應用程式運行期間，「今天你的股票」會在早上7時後自動產生；在電腦上會以通知提醒你。佔用每日提問次數，不消耗分析次數。';

  @override
  String get targetsButton => '目標配置';

  @override
  String get targetsTitle => '目標配置';

  @override
  String get targetsHint =>
      '設定每隻股票在投資組合中應佔的比例。留空即不設目標。應用程式隨後會顯示需要買入或賣出多少才能達到目標。';

  @override
  String targetsSum(String percent) {
    return '合計：$percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return '買入 ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return '賣出 ≈ $amount';
  }

  @override
  String get rebalanceOk => '已達目標';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol 每股盈利勝預期';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol 每股盈利遜預期';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return '實際每股盈利 $actual，預期 $estimate';
  }

  @override
  String get newsExplain => '這代表甚麼？';

  @override
  String get watchAlertAll => '單日大幅波動提醒';

  @override
  String get watchAlertAllHint =>
      '為此清單中的每隻股票設定價格提醒：單日上升或下跌達此幅度時通知你。已設有此類提醒的股票會保留原有提醒。';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '已設定 $count 個提醒',
      one: '已設定 1 個提醒',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => '匯出已實現盈虧 (CSV)';

  @override
  String get portfolioAnnualReturn => '年化回報率';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / 年';
  }

  @override
  String get portfolioAnnualReturnHint =>
      '資金加權年化回報率（XIRR）：會考慮你買入及賣出的時間，因此其後追加的資金不會造成偏差。首次買入滿一年後顯示；不包括股息。';

  @override
  String get eventsAddToCalendar => '加入日曆 (.ics)';

  @override
  String get portfolioMoveAlertTitle => '持倉異動提示';

  @override
  String get portfolioMoveAlertSubtitle => '當你的整體持倉單日波動達到此幅度時發出通知。';

  @override
  String get portfolioMoveAlertOff => '關閉';

  @override
  String portfolioMoveUp(String percent) {
    return '你的持倉今日上升 $percent';
  }

  @override
  String portfolioMoveDown(String percent) {
    return '你的持倉今日下跌 $percent';
  }

  @override
  String get whatIfTitle => '如果當初投資了？';

  @override
  String get whatIfAmount => '金額';

  @override
  String whatIfResult(String amount, String period) {
    return '$period前投資的$amount，現時價值';
  }

  @override
  String get whatIfNote => '只按股價計算：不包括股息、費用及稅項。過往回報並不預示未來表現。';

  @override
  String get watchShare => '分享清單';

  @override
  String get watchImport => '加入股票代號';

  @override
  String get watchImportHint => '貼上以逗號、空格或換行分隔的股票代號，例如別人分享給你的清單。';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '已加入 $count 隻股票',
      one: '已加入 1 隻股票',
      zero: '沒有新股票',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => '市值最大優先';

  @override
  String get positionsSortGain => '總回報最高優先';

  @override
  String get positionsSortToday => '今日表現最佳優先';

  @override
  String get chartMyBuys => '你的買入';

  @override
  String get chartMySells => '你的賣出';

  @override
  String get shortcutsTitle => '鍵盤快速鍵';

  @override
  String usMarketOpen(String time) {
    return '美股交易中 · $time後收市';
  }

  @override
  String usMarketClosed(String time) {
    return '美股已收市 · $time後開市';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes 分鐘';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours 小時 $minutes 分鐘';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days 日 $hours 小時';
  }

  @override
  String get dividendGoalSet => '設定每月股息目標';

  @override
  String get dividendGoalTitle => '每月股息目標';

  @override
  String get dividendGoalAmount => '每月股息';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return '按現時股息率每月約 $amount：已達成 $percent · 目標 $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return '按現時股息率每月約 $amount：已達成 $goal 目標';
  }

  @override
  String get portfolioAccount => '帳戶';

  @override
  String get portfolioAccountHint => '例如 強積金（可選）';

  @override
  String get portfolioAccountAdd => '指定帳戶';

  @override
  String get portfolioAccountsAll => '全部帳戶';

  @override
  String get portfolioAccountNote => '只顯示此帳戶的交易。現金及股息會在「全部帳戶」下顯示。';

  @override
  String get portfolioNoAccount => '無帳戶';

  @override
  String get portfolioGoalSet => '設定目標';

  @override
  String get portfolioGoalTitle => '投資組合目標';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '已達成 $percent · 目標 $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return '已達成 $amount 目標';
  }

  @override
  String get portfolioGoalRemove => '移除目標';

  @override
  String get alertEdit => '編輯提示';

  @override
  String get positionOpenLots => '仍持有（最早的在前）';

  @override
  String get lotRemoved => '已刪除交易記錄';

  @override
  String get alertDeleted => '已刪除提醒';

  @override
  String get alertsClearTriggered => '清除已觸發的提醒';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '已清除 $count 個提醒',
      one: '已清除 1 個提醒',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => '主頁';

  @override
  String get allocationCountries => '國家';

  @override
  String get newsExplainNoteResearch =>
      'AI 解讀：在網上查證事實，開啟原文，並評估來源的可靠程度。並不構成投資建議。佔用每日提問次數，不消耗分析次數。';

  @override
  String get sourceOfficial => '官方';

  @override
  String get sourcePressRelease => '新聞稿';

  @override
  String get sourceMajorNews => '主流傳媒';

  @override
  String get sourceOpinion => '觀點';

  @override
  String get earningsSummaryButton => '最新業績有甚麼內容？';

  @override
  String get earningsSummaryNote =>
      'AI 概括公司的業績公告，以及在網上找到的傳媒報道。並不構成投資建議。佔用每日提問次數，不消耗分析次數。';

  @override
  String get compareLastSurprise => '上季每股盈利 vs 預期';

  @override
  String get compareNextReport => '下次業績公佈';

  @override
  String get resolvingDescription => '正在確定你所指的股票…';

  @override
  String get instrumentTitle => '關於此產品';

  @override
  String get instrumentHint =>
      '此代號沒有公司資料，可能是 ETF、基金或預託證券。問問 AI 它是甚麼、持有甚麼以及費用多少。';

  @override
  String get instrumentAsk => '這是甚麼？';

  @override
  String get instrumentNote =>
      'AI 根據發行商的基金頁面以及在網上找到的財經網站作出解釋。並不構成投資建議。佔用每日提問次數，不消耗分析次數。';

  @override
  String suggestAskAi(String query) {
    return '問 AI：「$query」';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return '$symbols沒有目前股價。';
  }

  @override
  String get eventsRecentResults => '最新業績';

  @override
  String get saveToNotes => '儲存至我的筆記';

  @override
  String get savedToNotes => '已儲存至你的筆記';

  @override
  String get portfolioDividendsReceived => '已收股息';

  @override
  String get portfolioDividendsThisYear => '今年';

  @override
  String get portfolioDividendsAllTime => '累計';

  @override
  String get portfolioAddDividend => '新增股息';

  @override
  String portfolioDividendAmount(String currency) {
    return '實收金額（$currency）';
  }

  @override
  String get portfolioDividendDate => '派息日期';

  @override
  String get portfolioDividendsEmpty =>
      '尚未記錄任何股息。可手動新增，或匯入經紀商的匯出檔案，其中的股息記錄亦會被識別。';

  @override
  String get portfolioSplit => '股票分拆';

  @override
  String portfolioSplitTitle(String symbol) {
    return '股票分拆：$symbol';
  }

  @override
  String get portfolioSplitHint => '分拆日期之前的買入及賣出會被調整：股數相乘、每股價格相除，因此成本維持不變。';

  @override
  String get portfolioSplitRatio => '比例（新 : 舊）';

  @override
  String get portfolioSplitRatioError => '請輸入比例，例如 10:1；合股（反向分拆）則輸入 1:10。';

  @override
  String get portfolioSplitDate => '分拆日期';

  @override
  String portfolioSplitRow(String ratio) {
    return '股票分拆 $ratio';
  }

  @override
  String get portfolioSplitRemoved => '已刪除股票分拆';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '已新增 $count 項股票分拆',
      one: '已新增 1 項股票分拆',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '已新增 $count 筆股息',
      one: '已新增 1 筆股息',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => '匯出股息（CSV）';

  @override
  String get portfolioDividendDeleted => '股息已刪除';

  @override
  String get portfolioDividendsHint => '金額以到賬時的派息貨幣顯示；合計按今日匯率換算。報稅請以經紀商的結單為準。';

  @override
  String get awayTitle => '你離開期間';

  @override
  String awaySince(String when) {
    return '自 $when 起';
  }

  @override
  String get awayQuiet => '沒有明顯變動。';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 個提示已觸發',
      one: '1 個提示已觸發',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return '已公布業績：$symbols';
  }

  @override
  String get moveWhyButton => '今日為何波動？';

  @override
  String moveWhyTitle(String percent) {
    return '今日 $percent';
  }

  @override
  String get moveWhyNote =>
      'AI 根據網上搵到的今日新聞作出的解釋；真正原因可能未知或有所不同。不構成投資建議。會使用你的每日提問額度，而非分析。';

  @override
  String get sectionTechnical => '技術面';

  @override
  String get labelSma50 => '50日平均線';

  @override
  String get labelSma200 => '200日平均線';

  @override
  String get labelRsi => 'RSI（14日）';

  @override
  String get labelVolatility30 => '波幅（30日）';

  @override
  String techAbove(String percent) {
    return '高於平均線 $percent';
  }

  @override
  String techBelow(String percent) {
    return '低於平均線 $percent';
  }

  @override
  String get techOverbought => '超買';

  @override
  String get techOversold => '超賣';

  @override
  String get techNeutral => '中性';

  @override
  String get techGoldenCross => '50日平均線位於200日平均線之上——按傳統解讀屬上升趨勢。';

  @override
  String get techDeathCross => '50日平均線位於200日平均線之下——按傳統解讀屬下跌趨勢。';

  @override
  String get glossSma50 => '最近50個交易日收市價的平均值。價格高於此線通常被視為短線強勢，低於此線則被視為弱勢。';

  @override
  String get glossSma200 => '最近200個交易日收市價的平均值——經典的長線趨勢線。不少投資者把價格高於此線視為長線上升趨勢。';

  @override
  String get glossRsi =>
      '相對強弱指數：以0至100的刻度比較近期升幅與近期跌幅。高於70通常稱為超買（升得太急），低於30稱為超賣——但強勁趨勢可能長時間停留在這些區域。';

  @override
  String get glossVolatility =>
      '價格每日上落的幅度，按年折算：20%代表一般年份價格大約在±20%範圍內波動。波幅愈高，升跌幅度都愈大。';

  @override
  String get techNote => '按每日收市價計算。技術訊號描述過去，而非未來。';

  @override
  String portfolioAbove200(int above, int count) {
    return '$count 個持倉中有 $above 個高於其 200 日均線';
  }

  @override
  String get watchSignalsTitle => '訊號';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · 超賣';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · 超買';
  }

  @override
  String get signalCrossedAbove => '升穿200日平均線';

  @override
  String get signalCrossedBelow => '跌穿200日平均線';

  @override
  String get signalAlertsTitle => '技術訊號通知';

  @override
  String get signalAlertsSubtitle =>
      '每日一次，當你關注的股票進入超賣或超買（RSI）狀態，或其價格穿越200日平均線時。';

  @override
  String get signalAlertsNotification => '技術訊號';

  @override
  String get glossaryPageTitle => '詞彙表';

  @override
  String get glossaryPageSubtitle => '以淺白文字解釋應用程式顯示的每個指標，從 P/E 到 RSI';

  @override
  String get glossarySearchHint => '搜尋詞彙表';

  @override
  String get portfolioCash => '現金';

  @override
  String get portfolioCashTitle => '現金結餘';

  @override
  String get portfolioCashHint => '證券戶口中未投資的資金，按貨幣分列。計入總市值及配置，不計入回報。';

  @override
  String portfolioCashAmount(String currency) {
    return '金額 ($currency)';
  }

  @override
  String get portfolioCashEdit => '設定現金結餘';

  @override
  String get portfolioDividendsByMonth => '按月';

  @override
  String get dividendsLegendReceived => '已收';

  @override
  String get dividendsLegendExpected => '預計';

  @override
  String get portfolioDividendsExpected => '預計下次';

  @override
  String get portfolioDividendsExpectedNote => '根據你記錄的派息日期和金額估算；公司可能更改或取消派息。';

  @override
  String portfolioDividendAround(String date) {
    return '約 $date';
  }
}
