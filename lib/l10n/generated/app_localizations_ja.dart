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

  @override
  String get notesTitle => '自分のメモ';

  @override
  String get notesHint => '購入した理由、注目している点、売却する条件は？';

  @override
  String get notesInfo => 'この端末にのみ保存されます。AI 分析はメモの内容を考慮します。';

  @override
  String notesSaved(String date) {
    return '保存：$date';
  }

  @override
  String get peersTitle => '類似企業';

  @override
  String get portfolioExport => 'CSVでエクスポート';

  @override
  String get portfolioImport => 'CSVからインポート';

  @override
  String get portfolioImportHint =>
      '1行に1件の購入を貼り付けてください：ティッカーシンボル、数量、価格、通貨、日付（YYYY-MM-DD）。列はカンマ、セミコロン、タブのいずれかで区切れます。見出し行は省略できます。';

  @override
  String get portfolioImportButton => 'インポート';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 件の購入を追加しました',
      one: '1 件の購入を追加しました',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 行をスキップしました',
      one: '1 行をスキップしました',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo => 'ポートフォリオ、お気に入り、価格アラート、メモはすべてのデバイスで同期されます。';

  @override
  String syncLast(String time) {
    return '最終同期：$time';
  }

  @override
  String get syncNow => '今すぐ同期';

  @override
  String get syncFailed => '同期できませんでした。自動的に再試行します。';

  @override
  String get alertEmailTitle => 'アラート発動時にメールで通知';

  @override
  String get alertEmailOn => '数分ごとにアラートを確認し、アプリを閉じていてもメールでお知らせします。';

  @override
  String get alertEmailSignIn =>
      'アプリを閉じていてもアラートをメールで受け取るには、設定からメールアドレスでサインインしてください。';

  @override
  String get portfolioHistory => '評価額の推移';

  @override
  String get portfolioReviewTitle => 'AI ポートフォリオ診断';

  @override
  String get portfolioReviewIntro =>
      'AI がポートフォリオ全体をチェックします：集中度、セクター・通貨のエクスポージャー、保有銘柄に共通するリスク、配当。分析を 1 回分使用します。';

  @override
  String get portfolioReviewButton => 'ポートフォリオを診断';

  @override
  String get portfolioReviewAgain => '再診断';

  @override
  String get portfolioReviewWorking => 'ポートフォリオを診断中…';

  @override
  String get digestTitle => '週間サマリーをメールで受け取る';

  @override
  String get digestHint => '毎週月曜日：お気に入りとポートフォリオの先週の値動きと、今後の決算発表日をお届けします。';

  @override
  String get benchmarkTitle => 'S&P 500との比較';

  @override
  String get benchmarkYours => 'あなたの購入';

  @override
  String get benchmarkIndex => '同額をS&P 500に';

  @override
  String benchmarkAhead(String points) {
    return '指数を$pointsポイント上回る';
  }

  @override
  String benchmarkBehind(String points) {
    return '指数を$pointsポイント下回る';
  }

  @override
  String get benchmarkHint =>
      '各購入額を同じ日にS&P 500インデックスファンドに投資した場合との比較です。配当は含みません。過去のリターンは将来のリターンを示すものではありません。';

  @override
  String get portfolioSell => '売却';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbolを売却';
  }

  @override
  String portfolioSellPrice(String currency) {
    return '1株あたりの売却価格（$currency）';
  }

  @override
  String get portfolioSellDate => '売却日';

  @override
  String get portfolioSellAll => 'すべて';

  @override
  String portfolioSellTooMany(String quantity) {
    return '保有数は$quantityです';
  }

  @override
  String get portfolioSold => '売却';

  @override
  String get portfolioRealized => '実現損益';

  @override
  String get portfolioClosed => '売却済み銘柄';

  @override
  String get portfolioClosedNote => '全株売却済み';

  @override
  String get portfolioTransactions => '取引履歴';

  @override
  String get portfolioRealizedByYear => '年別の実現損益';

  @override
  String get portfolioRealizedHint =>
      '売却は古い購入分から順に充当され（FIFO）、本日の為替レートで換算されます。確定申告には証券会社の取引報告書をご利用ください。';

  @override
  String staleNewResults(String symbol, String date) {
    return 'この分析の後、新しい四半期決算が発表されました（$symbol、$date）。';
  }

  @override
  String get newResultsBadge => '新しい決算';

  @override
  String get portfolioImportBrokers =>
      'Revolut、Trading 212、Interactive Brokers のエクスポートも売却を含めて認識されます。配当と入金はスキップされます。';

  @override
  String get portfolioImportFile => 'ファイルを選択';

  @override
  String offlineBanner(String time) {
    return 'オフライン – 最後に保存したデータを表示しています（$time）。';
  }

  @override
  String get glossMarketCap => '株式市場での会社全体の価値：株価 × 発行済株式数。';

  @override
  String get glossSharesOutstanding =>
      '会社が発行している株式の数。増えると1株あたりの取り分が小さくなり、自社株買いで減ります。';

  @override
  String get glossPeTrailing =>
      '株価 ÷ 直近12か月の1株あたり利益：今の利益の何年分を払っているか。低いほど割安ですが、急成長企業はふつうP/Eが高めです。';

  @override
  String get glossPeForward =>
      'P/Eと同じですが、アナリストが予想する今後12か月の利益を使います。実績P/Eより低ければ、利益の増加が見込まれています。';

  @override
  String get glossPb =>
      '株価 ÷ 1株あたり純資産（資産から負債を引いたもの）。1前後なら、市場は会社を帳簿上の持ち分どおりに評価しています。';

  @override
  String get glossPs => '時価総額 ÷ 年間売上高。利益がまだ少ないか出ていない会社に便利です。同じ業界内で比べましょう。';

  @override
  String get glossEvToFcf =>
      '負債を含めた会社の価値（EV）÷ 投資後に1年間で生み出す現金。低いほど、払う価格に対して多くの現金が得られます。';

  @override
  String get glossPeg =>
      'P/E ÷ 予想される年間利益成長率（%）。1前後がしばしば妥当とされ、P/Eを成長と照らして見られます。';

  @override
  String get glossEps => '直近12か月の1株あたり利益。年々増えるEPSは、健全な会社を示す最も強いサインの一つです。';

  @override
  String get glossBeta =>
      '株価が市場とどれだけ連動して動くか：1 = 市場並み、1.5 = 値動きが約50%大きい、1未満 = より穏やか。';

  @override
  String get glossRevenueTtm => '直近12か月の売上の合計（費用を差し引く前）。';

  @override
  String get glossNetIncomeTtm => '直近12か月で、すべての費用・利息・税金を払った後に残る利益。';

  @override
  String get glossGrossMargin => '製品の直接コストを差し引いた後に残る売上の割合。高いと価格決定力があることが多いです。';

  @override
  String get glossOperatingMargin =>
      '事業の運営費（人件費、家賃、マーケティング）を差し引いた後、利息と税金の前に残る売上の割合。';

  @override
  String get glossNetMargin => '売上のうち最終的な利益になる割合。20%なら、売上100ごとに20が利益です。';

  @override
  String get glossRoe =>
      '自己資本利益率：年間利益 ÷ 株主の資本。経営陣が株主のお金をどれだけうまく使っているかを示し、約15%を超えると優秀です。';

  @override
  String get glossRoa => '総資産利益率：年間利益 ÷ 会社が持つすべての資産。同じ業界内で比べましょう。';

  @override
  String get glossDebtToEquity =>
      '負債 ÷ 株主の資本。高いほど借入が多く、金利上昇や業績悪化のときにリスクが大きくなります。';

  @override
  String get glossCurrentRatio => '短期の資産 ÷ 1年以内に支払う負債。1を超えれば、近いうちの支払いをまかなえます。';

  @override
  String get glossRevenueGrowth => '売上高が1年前と比べてどれだけ増えたか。';

  @override
  String get glossEpsGrowth => '1株あたり利益が1年前と比べてどれだけ増えたか。';

  @override
  String get glossDividendYield => '年間配当 ÷ 株価：払った金額に対して毎年受け取れる現金収入の割合。';

  @override
  String get glossDividendPerShare => '過去1年間に1株あたりに支払われた配当。';

  @override
  String get glossPayoutRatio =>
      '利益のうち配当として支払われる割合。100%を超えると稼いだ以上を払っていることになり、長続きはまれです。';

  @override
  String get glossTitle => 'どういう意味？';

  @override
  String get watchNewsTitle => 'マイ銘柄のニュース';

  @override
  String get undo => '元に戻す';

  @override
  String get watchSort => '並べ替え';

  @override
  String get watchSortOwn => '自分の順序';

  @override
  String get watchSortGainers => '値上がり率の高い順';

  @override
  String get watchSortLosers => '値下がり率の高い順';

  @override
  String get watchSortName => 'ティッカー順 (A–Z)';

  @override
  String get watchHint => 'ハンドルをドラッグして並べ替え、左にスワイプして削除します。線は過去30日間を示します。';

  @override
  String analysisReady(String symbol) {
    return '$symbol：分析が完成しました。';
  }

  @override
  String alertFromCost(String price) {
    return '平均取得価格（$price）から：';
  }

  @override
  String get briefTitle => '今日のあなたの銘柄';

  @override
  String get briefButton => '今日をまとめる';

  @override
  String get briefHint =>
      'ポートフォリオとお気に入り銘柄が今日どう動いたか、最新ニュースが何を伝えているかをAIが短くまとめます。分析回数は消費しません。';

  @override
  String get briefRefresh => '更新';

  @override
  String get sectionEarnings => '決算';

  @override
  String earningsNext(String date) {
    return '次回決算: $date';
  }

  @override
  String get earningsExpected => 'EPS 予想';

  @override
  String get earningsReported => 'EPS 実績';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: '直近 $total 四半期中 $beats 回で EPS が予想以上',
      one: '1 四半期中 $beats 回で EPS が予想以上',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbolは明日、四半期決算を発表します';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbolは本日、四半期決算を発表します';
  }

  @override
  String get earningsRemindersTitle => '決算リマインダー';

  @override
  String get earningsRemindersSubtitle => 'お気に入りやポートフォリオの銘柄が四半期決算を発表する前日に通知します';

  @override
  String addAllToFavorites(int count) {
    return 'すべてお気に入りに追加 ($count)';
  }

  @override
  String get portfolioImportPhoto => 'スクリーンショットからインポート';

  @override
  String get holdingsReading => '保有銘柄を読み取り中…';

  @override
  String get holdingsReviewTitle => '見つかった保有銘柄';

  @override
  String get holdingsReviewHint =>
      '追加する前に数値を確認してください。価格は今日の株価ではなく、1株あたりの平均取得単価です。';

  @override
  String get holdingsNoPrice => '画像に平均取得単価がありません';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 件の保有銘柄を追加',
      one: '1 件の保有銘柄を追加',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'この画像から保有銘柄が見つかりませんでした。証券会社アプリの保有銘柄（ポジション）画面のスクリーンショットをお試しください。';

  @override
  String get week52Range => '52週レンジ';

  @override
  String week52BelowHigh(String percent) {
    return '52週高値を$percent下回る';
  }

  @override
  String get week52AtHigh => '52週高値に到達';

  @override
  String get alertKindTrailing => '高値から下落したら';

  @override
  String get alertTrailingPercent => '高値からの下落（%）';

  @override
  String get alertTrailingHint => '価格の上昇に追随し、設定後の最高値からこの割合だけ下落したら通知します。';

  @override
  String alertDescTrailing(String percent) {
    return '高値から$percent下落';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'これまでの高値：$price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbolは高値から$percent下落しました';
  }

  @override
  String get sectionInsiders => 'インサイダー売買';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '買い$count件',
      one: '買い1件',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '売り$count件',
      one: '売り1件',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return '差し引き：$shares株';
  }

  @override
  String get insiderBuy => '購入';

  @override
  String get insiderSell => '売却';

  @override
  String get insiderHint =>
      '過去90日間に役員・取締役が公開市場で行った株式の購入と売却（SEC Form 4）。オプション行使や株式報酬は含みません。';

  @override
  String get insiderNone => '過去90日間、公開市場でのインサイダーによる購入・売却はありません。';

  @override
  String get analystTrend => '評価の月ごとの推移';

  @override
  String get watchListAll => 'すべて';

  @override
  String get watchListNew => '新しいリスト';

  @override
  String get watchListName => 'リスト名';

  @override
  String get watchListRename => 'リスト名を変更';

  @override
  String get watchListDelete => 'リストを削除';

  @override
  String get watchListAddTo => 'リストに追加';

  @override
  String get watchListEmpty => 'このリストにはまだ銘柄がありません。銘柄の横にあるリストボタンをタップして追加してください。';

  @override
  String get portfolioAskTitle => 'ポートフォリオについての質問';

  @override
  String get rangeYtd => '年初来';

  @override
  String get backupTitle => 'バックアップ';

  @override
  String get backupSave => 'バックアップを保存';

  @override
  String get backupSaveHint => 'お気に入り、リスト、ポートフォリオ、アラート、メモを1つのファイルにまとめます。';

  @override
  String get backupRestore => 'バックアップから復元';

  @override
  String get backupRestoreHint => 'ファイルの内容を追加します。現在のデータは何も削除されません。';

  @override
  String get backupRestored => 'バックアップを復元しました。';

  @override
  String get backupInvalid => 'このファイルはWhatStockのバックアップではありません。';

  @override
  String get allocationPositions => '銘柄';

  @override
  String get allocationSectors => 'セクター';

  @override
  String get allocationCurrencies => '通貨';

  @override
  String get compareReturn1y => '1年リターン';

  @override
  String get compareFromHigh => '52週高値からの乖離';

  @override
  String get briefAutoTitle => '毎朝のデイリーサマリー';

  @override
  String get briefAutoSubtitle =>
      'アプリの起動中は、朝7時以降に「今日のあなたの銘柄」が自動で作成されます。パソコンでは通知でお知らせします。1日の質問回数を使い、分析回数は消費しません。';

  @override
  String get targetsButton => '目標構成';

  @override
  String get targetsTitle => '目標構成';

  @override
  String get targetsHint =>
      '各銘柄がポートフォリオに占めるべき割合を設定します。目標がない場合は空欄のままにします。アプリが目標に近づけるために購入・売却すべき内容を表示します。';

  @override
  String targetsSum(String percent) {
    return '合計：$percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return '購入 ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return '売却 ≈ $amount';
  }

  @override
  String get rebalanceOk => '目標どおり';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbolはEPS予想を上回りました';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbolはEPS予想を下回りました';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'EPS実績 $actual、予想 $estimate';
  }

  @override
  String get newsExplain => 'これはどういう意味？';

  @override
  String get newsExplainNote =>
      '見出しと要約だけに基づく AI の解説です。投資助言ではありません。1日の質問回数を使い、分析回数は消費しません。';

  @override
  String get watchAlertAll => '1日の大きな変動でアラート';

  @override
  String get watchAlertAllHint =>
      'このリストのすべての銘柄に価格アラートを設定します。1日でこれだけ上下に動くと通知します。すでにアラートがある銘柄はそのまま残ります。';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 件のアラートを設定しました',
      one: '1 件のアラートを設定しました',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => '実現損益をCSVでエクスポート';

  @override
  String get portfolioAnnualReturn => '年率リターン';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / 年';
  }

  @override
  String get portfolioAnnualReturnHint =>
      '金額加重の年率リターン（XIRR）：購入・売却のタイミングを考慮するため、あとから追加した資金で数値がゆがむことはありません。最初の購入から1年以上経過すると表示されます。配当は含まれません。';

  @override
  String get eventsAddToCalendar => 'カレンダーに追加 (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'ポートフォリオ通知';

  @override
  String get portfolioMoveAlertSubtitle => 'ポートフォリオ全体が1日でこれだけ動いたときに通知します。';

  @override
  String get portfolioMoveAlertOff => 'オフ';

  @override
  String portfolioMoveUp(String percent) {
    return '本日、ポートフォリオが$percent上昇しました';
  }

  @override
  String portfolioMoveDown(String percent) {
    return '本日、ポートフォリオが$percent下落しました';
  }

  @override
  String get whatIfTitle => 'もし投資していたら？';

  @override
  String get whatIfAmount => '金額';

  @override
  String whatIfResult(String amount, String period) {
    return '$period前に投資した$amountの現在の価値';
  }

  @override
  String get whatIfNote =>
      '株価のみに基づく計算です。配当、手数料、税金は含まれません。過去のリターンは将来のリターンを示すものではありません。';

  @override
  String get watchShare => 'リストを共有';

  @override
  String get watchImport => 'ティッカーを追加';

  @override
  String get watchImportHint =>
      'ティッカーシンボルをカンマ、スペース、または改行で区切って貼り付けてください（例：誰かから共有されたリスト）。';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 銘柄を追加しました',
      one: '1 銘柄を追加しました',
      zero: '新しい銘柄はありません',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => '評価額の大きい順';

  @override
  String get positionsSortGain => 'トータルリターンの高い順';

  @override
  String get positionsSortToday => '本日の騰落率の高い順';

  @override
  String get chartMyBuys => 'あなたの購入';

  @override
  String get chartMySells => 'あなたの売却';

  @override
  String get shortcutsTitle => 'キーボードショートカット';

  @override
  String usMarketOpen(String time) {
    return '米国市場 取引中 · 終了まで $time';
  }

  @override
  String usMarketClosed(String time) {
    return '米国市場 取引時間外 · 開始まで $time';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes 分';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours 時間 $minutes 分';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days 日 $hours 時間';
  }
}
