// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => '株式を撮影して、その銘柄のすべてを知る。';

  @override
  String get homeHint => '株券、証券アプリの画面、新聞、企業ロゴなど、銘柄を特定できるものなら何でも。';

  @override
  String get takePhoto => '写真を撮る';

  @override
  String get chooseFromGallery => 'ギャラリーから選択';

  @override
  String get chooseImage => '画像を選択';

  @override
  String get enterTickerManually => 'ティッカーを手動入力';

  @override
  String get tickerInputLabel => 'ティッカーシンボル';

  @override
  String get tickerInputHint => '例：AAPL';

  @override
  String get lookUp => '検索';

  @override
  String demoModeBanner(String symbols) {
    return 'デモモード – 市場データのキーが設定されていません。サンプルデータを利用できる銘柄：$symbols。';
  }

  @override
  String get recognizing => '画像を解析中…';

  @override
  String get loadingData => 'データを読み込み中…';

  @override
  String get noCandidatesTitle => '銘柄を認識できませんでした';

  @override
  String get noCandidatesBody =>
      'この画像から銘柄を特定できませんでした。より鮮明な写真を試すか、ティッカーを手動で入力してください。';

  @override
  String get whatWeSaw => '認識した内容';

  @override
  String get chooseCandidateTitle => 'どの銘柄ですか？';

  @override
  String confidencePercent(int percent) {
    return '信頼度 $percent%';
  }

  @override
  String get settings => '設定';

  @override
  String get language => '言語';

  @override
  String get systemLanguage => 'システムの既定';

  @override
  String get about => 'このアプリについて';

  @override
  String get disclaimer =>
      'このアプリは情報提供のみを目的としており、投資助言ではありません。データは遅延または不正確な場合があります。';

  @override
  String dataSource(String source) {
    return 'データ提供：$source';
  }

  @override
  String recognizerSource(String source) {
    return '認識エンジン：$source';
  }

  @override
  String get retry => '再試行';

  @override
  String get cancel => 'キャンセル';

  @override
  String get ok => 'OK';

  @override
  String get close => '閉じる';

  @override
  String get errorGeneric => '問題が発生しました。';

  @override
  String get errorSectionUnavailable => 'このセクションを読み込めませんでした。';

  @override
  String get notAvailable => 'N/A';

  @override
  String get sectionIdentity => '基本情報';

  @override
  String get sectionPrice => '株価';

  @override
  String get sectionValuation => 'バリュエーション';

  @override
  String get sectionFinancials => '財務';

  @override
  String get sectionDividend => '配当';

  @override
  String get sectionProfile => '企業プロフィール';

  @override
  String get sectionAnalysts => 'アナリスト評価';

  @override
  String get sectionNews => 'ニュース';

  @override
  String get sectionRecognition => '認識の詳細';

  @override
  String get labelSymbol => 'ティッカー';

  @override
  String get labelExchange => '取引所';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => '通貨';

  @override
  String get labelCountry => '国';

  @override
  String get labelIndustry => '業種';

  @override
  String get labelSector => 'セクター';

  @override
  String get labelWebsite => 'ウェブサイト';

  @override
  String get labelIpoDate => 'IPO 日';

  @override
  String get labelMarketCap => '時価総額';

  @override
  String get labelSharesOutstanding => '発行済株式数';

  @override
  String get labelEmployees => '従業員数';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => '本社';

  @override
  String get labelDescription => '概要';

  @override
  String get labelLastPrice => '現在値';

  @override
  String get labelChange => '前日比';

  @override
  String get labelOpen => '始値';

  @override
  String get labelDayHigh => '高値';

  @override
  String get labelDayLow => '安値';

  @override
  String get labelPreviousClose => '前日終値';

  @override
  String get labelWeek52High => '52週高値';

  @override
  String get labelWeek52Low => '52週安値';

  @override
  String get labelAverageVolume10d => '平均出来高（10日）';

  @override
  String updatedAt(String time) {
    return '更新：$time';
  }

  @override
  String get labelPeTrailing => 'P/E（実績）';

  @override
  String get labelPeForward => 'P/E（予想）';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / フリーキャッシュフロー';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS（TTM）';

  @override
  String get labelBeta => 'ベータ';

  @override
  String get labelRevenueTtm => '売上高（TTM）';

  @override
  String get labelNetIncomeTtm => '純利益（TTM）';

  @override
  String get labelGrossMargin => '売上総利益率';

  @override
  String get labelOperatingMargin => '営業利益率';

  @override
  String get labelNetMargin => '純利益率';

  @override
  String get labelRoe => '自己資本利益率（ROE）';

  @override
  String get labelRoa => '総資産利益率（ROA）';

  @override
  String get labelDebtToEquity => '負債資本比率';

  @override
  String get labelCurrentRatio => '流動比率';

  @override
  String get labelRevenueGrowth => '売上高成長率（YoY）';

  @override
  String get labelEpsGrowth => 'EPS 成長率（YoY）';

  @override
  String get labelDividendYield => '配当利回り';

  @override
  String get labelDividendPerShare => '1株配当';

  @override
  String get labelPayoutRatio => '配当性向';

  @override
  String get labelConsensus => 'コンセンサス';

  @override
  String get ratingStrongBuy => '強い買い';

  @override
  String get ratingBuy => '買い';

  @override
  String get ratingHold => '中立';

  @override
  String get ratingSell => '売り';

  @override
  String get ratingStrongSell => '強い売り';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'アナリスト$count名',
      one: 'アナリスト1名',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return '期間：$period';
  }

  @override
  String get noNews => '最近のニュースはありません。';

  @override
  String get openArticle => '記事を開く';

  @override
  String get openLinkFailed => 'リンクを開けませんでした。';

  @override
  String get recognitionSummary => '概要';

  @override
  String get recognitionEvidence => '判断の根拠';

  @override
  String get recognitionRawText => '画像から読み取ったテキスト';

  @override
  String get errMissingAnthropicKey =>
      '画像認識が設定されていません（ANTHROPIC_API_KEY がありません）。ティッカーを手動で入力してください。';

  @override
  String get errRecognitionUnreachable =>
      '認識サービスに接続できませんでした。インターネット接続を確認してください。';

  @override
  String errRecognitionHttp(String status) {
    return '認識サービスがエラーを返しました（HTTP $status）。';
  }

  @override
  String get errRecognitionRefused => '認識サービスはこの画像を処理できませんでした。';

  @override
  String get errRecognitionTruncated => '認識結果が途中で切れました。もう一度お試しください。';

  @override
  String get errRecognitionBadResponse => '認識サービスから予期しない応答がありました。';

  @override
  String get errRecognitionEmpty => '認識サービスから空の応答が返されました。';

  @override
  String get errMissingFinnhubKey => '市場データが設定されていません（FINNHUB_API_KEY がありません）。';

  @override
  String get errMarketUnreachable => '市場データサービスに接続できませんでした。インターネット接続を確認してください。';

  @override
  String get errMarketRateLimited => '市場データサービスへのリクエストが多すぎます。1分ほどお待ちください。';

  @override
  String errMarketHttp(String status) {
    return '市場データサービスがエラーを返しました（HTTP $status）。';
  }

  @override
  String get errMarketBadResponse => '市場データサービスから予期しない応答がありました。';

  @override
  String errNoQuote(String symbol) {
    return '$symbol の株価データが見つかりませんでした。';
  }

  @override
  String errNoProfile(String symbol) {
    return '$symbol の企業プロフィールが見つかりませんでした。';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'デモモードで対応しているのは $symbols のみです。リアルタイムデータには FINNHUB_API_KEY を追加してください。';
  }

  @override
  String errUnknown(String detail) {
    return '問題が発生しました：$detail';
  }

  @override
  String get newSearch => '新しい検索';

  @override
  String get recentSearches => '最近';

  @override
  String get noRecentSearches => '最近の検索はまだありません。';

  @override
  String get clearRecent => '履歴を消去';

  @override
  String get greeting => 'どの銘柄を見てみましょうか？';

  @override
  String get searchHint => 'ティッカーまたは会社名';

  @override
  String get attachImage => '画像を添付';

  @override
  String get searchResultsTitle => '検索結果';

  @override
  String errNoResults(String query) {
    return '「$query」に該当する銘柄は見つかりませんでした。';
  }

  @override
  String get quickBarHint => 'ティッカーまたは会社名を入力…';

  @override
  String get openFullWindow => 'ウィンドウを開く';

  @override
  String hotkeyHint(String shortcut) {
    return 'どこからでも $shortcut を押すと WhatStock を呼び出せます。';
  }

  @override
  String get trayOpen => 'WhatStock を開く';

  @override
  String get trayQuickSearch => 'クイック検索';

  @override
  String get trayQuit => '終了';

  @override
  String get appearance => '外観';

  @override
  String get themeSystem => 'システム';

  @override
  String get themeDark => 'ダーク';

  @override
  String get themeLight => 'ライト';

  @override
  String get back => '戻る';

  @override
  String get aiSectionTitle => 'AI 分析';

  @override
  String get aiIntro =>
      'AI が作成した詳細な概要：最近のニュースの要約、事業内容、強み、リスクと隠れた要因、バリュエーション、心理・社会・テクニカル・マクロの観点からのシナリオを含む株価見通し、注目ポイント。';

  @override
  String get aiGenerate => '分析を生成';

  @override
  String get aiRegenerate => '再生成';

  @override
  String get aiGenerating => '分析を準備中…1〜2分かかることがあります。';

  @override
  String get aiSources => '情報源';

  @override
  String aiGeneratedAt(String time) {
    return '生成：$time';
  }

  @override
  String get aiDisclaimer =>
      '公開データと最近のニュースに基づいて AI が生成した分析です。誤りや古い情報が含まれる場合があり、投資助言ではありません。';

  @override
  String get errAiNotConfigured => 'AI 分析が設定されていません（ANTHROPIC_API_KEY がありません）。';

  @override
  String get errAiUnreachable => 'AI サービスに接続できませんでした。インターネット接続を確認してください。';

  @override
  String errAiHttp(String status) {
    return 'AI サービスがエラーを返しました（HTTP $status）。';
  }

  @override
  String get errAiRefused => 'AI サービスがこの銘柄の分析を拒否しました。';

  @override
  String get errAiBadResponse => 'AI サービスから予期しない応答がありました。';

  @override
  String get sectionChart => '株価チャート';

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
  String get chartUnavailable => '現在のデータ提供元では株価の履歴を取得できません。';

  @override
  String get sectionStatements => '財務諸表（年次）';

  @override
  String get labelFiscalYear => '会計年度';

  @override
  String get labelRevenue => '売上高';

  @override
  String get labelNetIncome => '純利益';

  @override
  String get labelTotalAssets => '総資産';

  @override
  String get labelTotalLiabilities => '負債合計';

  @override
  String get labelEquity => '株主資本';

  @override
  String get labelOperatingCashFlow => '営業キャッシュフロー';

  @override
  String get statementsUnavailable => 'この銘柄の財務諸表は利用できません。';

  @override
  String get launchAtLogin => 'ログイン時に起動';

  @override
  String get hotkeyLabel => 'グローバルショートカット';

  @override
  String get hotkeyRecordHint => 'ここをクリックして、新しいキーの組み合わせを押してください';

  @override
  String get hotkeyReset => '既定値に戻す';

  @override
  String get pasteImage => 'クリップボードから画像を貼り付け';

  @override
  String get errClipboardNoImage => 'クリップボードに画像がありません。';

  @override
  String get favorites => 'お気に入り';

  @override
  String get addToFavorites => 'お気に入りに追加';

  @override
  String get removeFromFavorites => 'お気に入りから削除';

  @override
  String get noFavorites => 'お気に入りはまだありません。銘柄の星をタップして追加してください。';

  @override
  String get displayCurrency => '表示通貨';

  @override
  String get displayCurrencyNone => '銘柄の通貨のみ';

  @override
  String labelConverted(String currency) {
    return '≈ $currency換算';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'レート：1 $from = $rate $to（ECB、$date）';
  }

  @override
  String get updates => 'アップデート';

  @override
  String currentVersion(String version) {
    return 'バージョン $version';
  }

  @override
  String get autoUpdate => 'アップデートを自動的にインストール';

  @override
  String get checkForUpdates => 'アップデートを確認';

  @override
  String get updateChecking => 'アップデートを確認中…';

  @override
  String get updateUpToDate => '最新バージョンをご利用中です。';

  @override
  String updateAvailable(String version) {
    return 'バージョン $version が利用可能です。';
  }

  @override
  String get updateDownloading => 'バックグラウンドでアップデートをダウンロード中…';

  @override
  String get updateDownloaded => 'アップデートの準備ができました。再起動してインストールしてください。';

  @override
  String get updateNow => 'アップデート';

  @override
  String get restartNow => '再起動';

  @override
  String get updatesViaStore => 'アップデートはアプリストアから自動的に配信されます。';

  @override
  String get updateCheckFailed => 'アップデートを確認できませんでした。';

  @override
  String get subscription => 'サブスクリプション';

  @override
  String get planTrial => 'トライアル';

  @override
  String get planNormal => 'ノーマル';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => '有効なプランがありません';

  @override
  String planAnalysesPerMonth(int count) {
    return '月 $count 回の分析';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$days 日間の無料トライアル（分析 $count 回付き）';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'トライアル残り $days 日',
      one: 'トライアル残り 1 日',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired => '無料トライアルが終了しました。分析を続けるにはプランを選択してください。';

  @override
  String analysesRemaining(int remaining, int total) {
    return '今期の分析は残り $remaining / $total 回';
  }

  @override
  String extraCredits(int count) {
    return '追加分析 $count 回';
  }

  @override
  String renewsOn(String date) {
    return '$date に更新';
  }

  @override
  String get choosePlan => 'プランを選択';

  @override
  String get currentPlan => '現在のプラン';

  @override
  String get subscribe => '登録する';

  @override
  String get perMonth => '/ 月';

  @override
  String get extraPacksTitle => 'もっと必要ですか？追加分析を購入';

  @override
  String get extraPacksHint => '追加分析に有効期限はなく、月間の割り当てを使い切った後に使用されます。';

  @override
  String get buy => '購入';

  @override
  String get restorePurchases => '購入を復元';

  @override
  String get manageSubscription => 'サブスクリプションを管理';

  @override
  String get purchaseSuccess => 'ありがとうございます！購入が有効になりました。';

  @override
  String get purchasePending => '購入処理中…';

  @override
  String get purchaseFailed => '購入を完了できませんでした。';

  @override
  String get purchaseCanceled => '購入がキャンセルされました。';

  @override
  String get billingUnavailable =>
      'このプラットフォームではまだ購入できません。スマートフォンまたは Mac で登録すると、プランはすべてのデバイスで利用できます。';

  @override
  String get errQuotaExceeded =>
      '今期の分析回数を使い切りました。プランをアップグレードするか、追加分析を購入してください。';

  @override
  String get errTrialExpired => '無料トライアルが終了しました。続けるにはプランを選択してください。';

  @override
  String get errNoPlan => 'AI 分析には有効なプランが必要です。';

  @override
  String get viewPlans => 'プランを見る';

  @override
  String get usageTitle => '使用状況';

  @override
  String get demoPurchaseNote => 'デモ課金：このプラットフォームでの購入はシミュレーションです。';

  @override
  String get mostPopular => '一番人気';

  @override
  String get bestValue => '最もお得';

  @override
  String get planFeaturesCommon =>
      '写真認識、ライブデータ、チャート、お気に入り、120 言語すべてはどのプランにも含まれます。割り当ては AI 分析に適用されます。';

  @override
  String get searchLanguages => '言語を検索…';

  @override
  String get noLanguageMatch => '一致する言語がありません。';

  @override
  String get aiSettings => 'AI 分析';

  @override
  String get aiLength => '長さ';

  @override
  String get aiDepthBrief => '簡潔';

  @override
  String get aiDepthStandard => '標準';

  @override
  String get aiDepthDeep => '詳細';

  @override
  String get aiDepthBriefDesc => '要点をすばやく。';

  @override
  String get aiDepthStandardDesc => 'すべてのセクションを含む完全なレポート。';

  @override
  String get aiDepthDeepDesc => 'より多くのウェブ検索、同業他社との比較、より踏み込んだ詳細。';

  @override
  String aiDepthWords(String min, String max) {
    return '約 $min〜$max 語';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '分析 $count 回分を使用',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => '読者レベル';

  @override
  String get aiReaderBeginner => '初心者';

  @override
  String get aiReaderExperienced => '経験者';

  @override
  String get aiReaderBeginnerDesc => '平易な言葉で、専門用語はすべて説明します。';

  @override
  String get aiReaderExperiencedDesc => '標準的な金融用語を使った、より密度の高い文章。';

  @override
  String get aiCounterArgument => '最も有力な反論';

  @override
  String get aiCounterArgumentDesc => 'サマリーの最後には、必ず自らの結論に対する最も有力な反論を示します。';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ご利用のプランでは分析 1 回につき最大 $count 回のウェブ検索',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'プラン別の標準の長さ：ノーマル $normal、Pro $pro、Max $max、Ultra $ultra。簡潔は 2 回少なく、詳細は 2 回多くなります。';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '最大 $count 回のウェブ検索',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '分析 1 回につきウェブ検索 $count 回',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'この長さには分析 $needed 回分が必要ですが、残りは $left 回です。設定で短い長さを選ぶか、追加の分析を入手してください。';
  }

  @override
  String get outlookMarketMood => '市場センチメント';

  @override
  String get moodVeryPessimistic => '非常に悲観的';

  @override
  String get moodPessimistic => '悲観的';

  @override
  String get moodNeutral => '中立';

  @override
  String get moodOptimistic => '楽観的';

  @override
  String get moodVeryOptimistic => '非常に楽観的';

  @override
  String get scenarioBull => '強気シナリオ';

  @override
  String get scenarioBase => '基本シナリオ';

  @override
  String get scenarioBear => '弱気シナリオ';

  @override
  String outlookCurrentPrice(String price) {
    return '現在値：$price';
  }

  @override
  String get outlookKeyLevels => '重要な価格水準';

  @override
  String get keyLevelSupport => 'サポート';

  @override
  String get keyLevelResistance => 'レジスタンス';

  @override
  String get keyLevelAnchor => '基準価格';

  @override
  String get upcomingEvents => '今後のイベント';

  @override
  String get outlookChartNote => '価格帯は目安です。確率は大まかな見立てであり、予測ではありません。';

  @override
  String get accountTitle => 'アカウント';

  @override
  String get signIn => 'サインイン';

  @override
  String get signOut => 'サインアウト';

  @override
  String get notSignedIn => 'サインインしていません';

  @override
  String get accountBenefit => 'サインインすると、サブスクリプションをすべてのデバイスで利用できます。';

  @override
  String get accountSyncedNote => 'サブスクリプションと残りの分析回数は、どのデバイスでも共通です。';

  @override
  String get signInTitle => 'WhatStock にサインイン';

  @override
  String get emailLabel => 'メールアドレス';

  @override
  String get continueWithEmail => 'メールで続ける';

  @override
  String codeSentTo(String email) {
    return '$email に 6 桁のコードを送信しました。有効期限は 10 分です。';
  }

  @override
  String get codeLabel => 'サインインコード';

  @override
  String get resendCode => 'コードを再送信';

  @override
  String get useDifferentEmail => '別のメールアドレスを使う';

  @override
  String get errInvalidCode => 'コードが正しくないか、有効期限が切れています。';

  @override
  String get errInvalidEmail => '有効なメールアドレスを入力してください。';

  @override
  String get errSignInFailed => 'サインインできませんでした。接続を確認して、もう一度お試しください。';

  @override
  String get checkoutWaiting => 'ブラウザでお支払いを完了してください。完了するとアプリは自動的に更新されます。';

  @override
  String get paymentViaStripe => 'Stripe を通じてブラウザで安全にお支払いいただけます。いつでも解約できます。';

  @override
  String get paymentViaStore =>
      'App Store または Google Play のアカウントで請求されます。ストアの設定からいつでも解約できます。';

  @override
  String get keySpace => 'スペース';

  @override
  String get doubleOptionTitle => 'Option キーを2回押す';

  @override
  String get doubleOptionSubtitle => 'Option キーをすばやく2回押しても WhatStock を呼び出せます。';

  @override
  String get doubleOptionPermission =>
      '他のアプリでも使えるようにするには、「システム設定」→「プライバシーとセキュリティ」→「入力監視」で WhatStock を許可してから、アプリを開き直してください。';

  @override
  String get openSystemSettings => 'システム設定を開く';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'どこからでも $shortcut を押すか Option キーを2回押すと WhatStock を呼び出せます。';
  }

  @override
  String get scenarioMostLikely => '最も可能性が高い';

  @override
  String get longTermToday => '現在';

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
    return '年率 $range';
  }

  @override
  String longTermLikely(String price) {
    return '最有力 $price';
  }

  @override
  String get confidenceLow => '確度：低';

  @override
  String get confidenceMedium => '確度：中';

  @override
  String get confidenceHigh => '確度：高';

  @override
  String get longTermNote =>
      '長期の価格帯は示した前提に基づき、期間が長いほど広がります。価格は配当を含みません。大まかな見立てであり、予測ではありません。';

  @override
  String get portfolio => 'ポートフォリオ';

  @override
  String get portfolioEmpty =>
      'まだ何もありません。銘柄を開いて「ポートフォリオに追加」をタップすると、保有銘柄を管理できます。';

  @override
  String get portfolioLocalNote =>
      'この端末にのみ保存されます。合計はECBの参照レートで換算され、株価は遅延している場合があります。';

  @override
  String get addToPortfolio => 'ポートフォリオに追加';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbolを追加';
  }

  @override
  String get portfolioQuantity => '株数';

  @override
  String portfolioBuyPrice(String currency) {
    return '1株あたりの価格（$currency）';
  }

  @override
  String get portfolioBuyDate => '購入日';

  @override
  String get portfolioAdd => '追加';

  @override
  String get portfolioInvalidNumber => '0より大きい数値を入力してください。';

  @override
  String portfolioAdded(String symbol) {
    return '$symbolをポートフォリオに追加しました。';
  }

  @override
  String get portfolioTotalValue => '評価額合計';

  @override
  String get portfolioToday => '本日';

  @override
  String get portfolioGainLoss => '損益';

  @override
  String get portfolioInvested => '投資額';

  @override
  String get portfolioAllocation => '構成';

  @override
  String get portfolioPositions => '保有銘柄';

  @override
  String portfolioAvgCost(String price) {
    return '平均取得単価 $price';
  }

  @override
  String get portfolioYourPosition => '保有状況';

  @override
  String get portfolioPurchases => '購入履歴';

  @override
  String get portfolioRemove => '削除';

  @override
  String get portfolioExcluded => '株価または為替レートがない銘柄は合計に含まれません。';

  @override
  String get priceAlerts => '価格アラート';

  @override
  String get setPriceAlert => '価格アラートを設定';

  @override
  String alertDialogTitle(String symbol) {
    return '価格アラート · $symbol';
  }

  @override
  String get alertKindAbove => '上回ったら';

  @override
  String get alertKindBelow => '下回ったら';

  @override
  String get alertKindMove => '1日で大きく動いたら';

  @override
  String alertTargetPrice(String currency) {
    return '価格（$currency）';
  }

  @override
  String get alertMovePercent => '1日の変動（%）';

  @override
  String get alertAlreadyMet => '株価はすでにこの水準を超えています。';

  @override
  String get alertSave => 'アラートを設定';

  @override
  String alertCreated(String symbol) {
    return '$symbolのアラートを設定しました。';
  }

  @override
  String get alertsEmpty => 'アラートはまだありません。銘柄を開いてベルをタップしてください。';

  @override
  String get alertsNote =>
      'WhatStockの実行中は5分ごとにアラートを確認します。パソコンではメニューバーまたはタスクトレイで動作を続けます。スマートフォンでは現在、アプリを開いているときのみ通知します。';

  @override
  String alertDescAbove(String price) {
    return '$price以上';
  }

  @override
  String alertDescBelow(String price) {
    return '$price以下';
  }

  @override
  String alertDescMove(String percent) {
    return '1日の変動 ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return '$dateに$priceで発動';
  }

  @override
  String get alertRearm => '再設定';

  @override
  String get alertDelete => '削除';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbolが$priceを上回りました';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbolが$priceを下回りました';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbolは本日$percent動きました';
  }

  @override
  String alertHitBody(String price) {
    return '現在値：$price';
  }

  @override
  String get alertOpen => '開く';

  @override
  String get keepInTrayTitle => 'ウィンドウを閉じても実行を続ける';

  @override
  String get keepInTraySubtitle =>
      'WhatStockはメニューバーまたはタスクトレイに残り、ショートカットと価格アラートが引き続き機能します。';

  @override
  String get termsOfUse => '利用規約';

  @override
  String get privacyPolicy => 'プライバシーポリシー';

  @override
  String get subscriptionLegal =>
      'サブスクリプションは解約するまで毎月自動更新されます。購読すると、利用規約とプライバシーポリシーに同意したものとみなされます。';

  @override
  String get deleteAccount => 'アカウントを削除';

  @override
  String get deleteAccountTitle => 'アカウントを削除しますか？';

  @override
  String get deleteAccountBody =>
      'アカウントとサーバーに保存されているすべてのデータ（メールアドレス、利用枠、利用履歴）が完全に削除され、未使用の分析は失われます。ブラウザで支払ったサブスクリプションはすぐに解約されます。App StoreまたはGoogle Playのサブスクリプションはストアの設定で解約してください。';

  @override
  String get deleteLocalData => 'この端末のデータも削除する（ポートフォリオ、アラート、お気に入り、履歴、保存した分析）';

  @override
  String get deleteAccountConfirm => '完全に削除';

  @override
  String get accountDeleted => 'アカウントを削除しました。';

  @override
  String get errDeleteAccount => 'アカウントを削除できませんでした。接続を確認してもう一度お試しください。';

  @override
  String get aiTrialBriefNote =>
      'トライアルの分析は簡潔で、より高速な AI モデルで作成されます。プランでは最も高性能な AI、より多くのウェブ検索、標準・詳細の長さをご利用いただけます。';

  @override
  String get billingMonthly => '月払い';

  @override
  String get billingYearly => '年払い';

  @override
  String get yearlyDiscount => '2か月分無料';

  @override
  String get perYear => '/ 年';

  @override
  String pricePerMonthApprox(String price) {
    return '月あたり約 $price';
  }

  @override
  String get subscriptionLegalYearly =>
      '年間サブスクリプションは解約するまで毎年自動更新されます。購読すると、利用規約とプライバシーポリシーに同意したものとみなされます。';

  @override
  String get myAnalyses => '自分の分析';

  @override
  String get navAlerts => 'アラート';

  @override
  String get inviteTitle => '限定プレビュー';

  @override
  String get inviteBody => 'WhatStock は現在、招待制でのみご利用いただけます。受け取った招待コードを入力してください。';

  @override
  String get inviteCodeLabel => '招待コード';

  @override
  String get inviteContinue => '続行';

  @override
  String get inviteInvalid => 'この招待コードは無効です。';

  @override
  String get inviteExpired => 'この招待は有効期限が切れています。招待してくれた方に新しいコードを依頼してください。';

  @override
  String get inviteDeviceLimit => 'この招待コードは、すでに上限台数の端末で使用されています。';

  @override
  String get previewConfidential => '機密プレビュー';

  @override
  String get errPreviewDailyLimit => 'このプレビューの本日の分析上限に達しました。明日もう一度お試しください。';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 時間前',
      one: '1 時間前',
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
  String get staleTitle => 'この分析を更新しますか？';

  @override
  String staleBody(String age) {
    return 'この分析は$ageに作成されました。その後、株価やニュース、業績が変わっている可能性があります。';
  }

  @override
  String get staleKeep => '以前の分析を表示';

  @override
  String get staleRefresh => '新しく作成';

  @override
  String seeAll(int count) {
    return 'すべて表示 ($count)';
  }

  @override
  String get searchAnalyses => '分析を検索';

  @override
  String get deleteAnalysis => '削除';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol の分析を削除しました';
  }

  @override
  String get keyLevelAlertHint => '価格水準をタップすると、株価がその水準に達したときにアラートが届きます。';

  @override
  String get shareAnalysisTitle => '分析を共有';

  @override
  String get shareAsImage => '画像で共有';

  @override
  String get shareAsText => 'テキストで共有';

  @override
  String get shareCardFooter => 'WhatStock で作成';

  @override
  String get shareCardDisclaimer => 'AI 分析 · 投資助言ではありません';

  @override
  String get referralTitle => '友達を招待';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '追加分析 $count 回',
      one: '追加分析 1 回',
    );
    return 'コードをシェアしましょう。友達はすぐに$_temp0を受け取り、友達が初めて分析した後にあなたにも同じ回数が付与されます。';
  }

  @override
  String get referralYourCode => 'あなたのコード';

  @override
  String referralStats(int invited, int rewarded) {
    return '招待: $invited · 特典獲得: $rewarded';
  }

  @override
  String get referralHaveCode => '友達のコードをお持ちですか？';

  @override
  String get referralRedeem => '適用';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '追加分析 $count 回が付与されました。ようこそ！',
      one: '追加分析 1 回が付与されました。ようこそ！',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown => 'このコードは存在しません。確認してもう一度お試しください。';

  @override
  String get referralErrOwn => '自分のコードは使用できません。';

  @override
  String get referralErrAlready => '友達のコードはすでに使用済みです。';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '追加分析 $count 回',
      one: '追加分析 1 回',
    );
    return 'WhatStock で株を分析しています。銘柄を撮影すると AI が解説してくれます。私のコード $code で$_temp0がもらえます。';
  }

  @override
  String get referralCopied => 'コードをコピーしました';

  @override
  String get onboardTitle1 => '株を撮影するだけ';

  @override
  String get onboardBody1 =>
      '証券アプリの画面、新聞、企業ロゴがあれば十分。WhatStock が銘柄を認識し、株価、チャート、主要指標を表示します。';

  @override
  String get onboardTitle2 => '数分で理解できる';

  @override
  String get onboardBody2 =>
      'AI 分析が、株価を動かす要因、リスク、バリュエーション、そして株価の行方を示す3つのシナリオを、出典付きでお使いの言語で解説します。';

  @override
  String get onboardTitle3 => '最新の動きを見逃さない';

  @override
  String get onboardBody3 =>
      'お気に入り、ポートフォリオ、価格アラートで常に最新情報をお届けします。分析はデバイスに保存され、いつでも開き直せます。';

  @override
  String get onboardNext => '次へ';

  @override
  String get onboardStart => 'はじめる';

  @override
  String get onboardSkip => 'スキップ';

  @override
  String changesTitle(String date) {
    return '前回の分析（$date）以降';
  }

  @override
  String get changesPrice => '株価';

  @override
  String get changesNoMajor => '見通しに大きな変化はありません。';

  @override
  String get changesPreviousSummary => '前回の要約';

  @override
  String get telemetryTitle => 'WhatStock の改善にご協力ください';

  @override
  String get telemetryBody =>
      '匿名の使用状況統計とクラッシュレポートを共有します。どの機能が使われているか、何が問題だったかを送信します。保有銘柄、分析、個人データが送信されることはありません。この設定は「設定」でいつでも変更できます。';

  @override
  String get telemetryAllow => '許可';

  @override
  String get telemetryDecline => 'いいえ、結構です';

  @override
  String get telemetrySetting => '匿名の統計とクラッシュレポート';

  @override
  String get telemetrySettingHint => '機能の使用頻度とエラーレポート。個人データや検索・分析の内容は含まれません。';

  @override
  String get askButton => 'この分析について質問';

  @override
  String askTitle(String symbol) {
    return '$symbol についての質問';
  }

  @override
  String get askIntro =>
      '分析について何でも質問できます。リスクの意味、見通しを変えうる要因、数値の算出方法など。回答はこの分析に基づくもので、投資助言ではありません。';

  @override
  String get askHint => '質問を入力…';

  @override
  String get askSend => '送信';

  @override
  String get askThinking => '考え中…';

  @override
  String get askSuggest1 => '最大のリスクは？';

  @override
  String get askSuggest2 => '見通しを変える要因は？';

  @override
  String get askSuggest3 => 'わかりやすく説明して';

  @override
  String get askMaxReached => 'この分析への質問はこれが最後です。さらに質問するには、新しい分析を生成してください。';

  @override
  String get errAskLimit => '本日の質問の上限に達しました。明日もう一度お試しください。';

  @override
  String get eventTomorrow => '明日';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days 日後',
      one: '1 日後',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => '四半期決算';

  @override
  String get eventBeforeOpen => '取引開始前';

  @override
  String get eventAfterClose => '取引終了後';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS 予想: $value';
  }

  @override
  String get eventFromAnalysis => '自分の分析から';

  @override
  String get eventsHint =>
      'お気に入りとポートフォリオの銘柄の今後 90 日間の決算発表日と、分析で示された日付付きのイベントです。';

  @override
  String get eventsEmpty =>
      '今後 90 日間に日付付きのイベントはありません。お気に入りやポートフォリオに銘柄を追加すると、ここに決算発表日が表示されます。';

  @override
  String get compareTitle => '比較';

  @override
  String get compareAdd => '銘柄を追加';

  @override
  String get compareRemove => '削除';

  @override
  String get compareTickerHint => 'ティッカー（例：MSFT）';

  @override
  String get compareHint =>
      '主要指標を並べて表示します。各行で最も良い値がハイライトされます。金額は各銘柄の通貨で表示されます。';

  @override
  String get compareNoAnalysis => '分析はまだありません';

  @override
  String get portfolioDividends => '年間配当';

  @override
  String portfolioDividendYield(String percent) {
    return '利回り $percent';
  }

  @override
  String get portfolioDividendNote =>
      '予想年間配当は過去12か月に支払われた配当に基づいています。将来の支払いは保証されません。';

  @override
  String positionDividend(String amount) {
    return '配当: 年間 $amount';
  }

  @override
  String get chartAvgCost => '平均取得単価';

  @override
  String get chartAlertLevel => 'アラート';

  @override
  String get marketsToday => '本日の市場';
}
