// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'StockLens';

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
  String get noCandidatesBody => 'この画像から銘柄を特定できませんでした。より鮮明な写真を試すか、ティッカーを手動で入力してください。';

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
  String get disclaimer => 'このアプリは情報提供のみを目的としており、投資助言ではありません。データは遅延または不正確な場合があります。';

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
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'アナリスト$count名', one: 'アナリスト1名');
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
  String get errMissingAnthropicKey => '画像認識が設定されていません（ANTHROPIC_API_KEY がありません）。ティッカーを手動で入力してください。';

  @override
  String get errRecognitionUnreachable => '認識サービスに接続できませんでした。インターネット接続を確認してください。';

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
    return 'どこからでも $shortcut を押すと StockLens を呼び出せます。';
  }

  @override
  String get trayOpen => 'StockLens を開く';

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
  String get aiIntro => 'AI が作成した詳細な概要：最近のニュースの要約、事業内容、強み、リスクと隠れた要因、バリュエーション、注目ポイント。';

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
  String get aiDisclaimer => '公開データと最近のニュースに基づいて AI が生成した分析です。誤りや古い情報が含まれる場合があり、投資助言ではありません。';

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
  String get displayCurrency => 'Display currency';

  @override
  String get displayCurrencyNone => 'Stock’s own currency only';

  @override
  String labelConverted(String currency) {
    return '≈ in $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Rate: 1 $from = $rate $to (ECB, $date)';
  }
}
