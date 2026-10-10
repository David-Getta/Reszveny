// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => 'StockLens';

  @override
  String get homeTagline => '주식을 촬영하고 그 종목의 모든 것을 알아보세요.';

  @override
  String get homeHint => '주권, 증권 앱 화면, 신문, 회사 로고 등 종목을 식별할 수 있는 것이면 무엇이든 가능합니다.';

  @override
  String get takePhoto => '사진 촬영';

  @override
  String get chooseFromGallery => '갤러리에서 선택';

  @override
  String get chooseImage => '이미지 선택';

  @override
  String get enterTickerManually => '티커 직접 입력';

  @override
  String get tickerInputLabel => '티커 심볼';

  @override
  String get tickerInputHint => '예: AAPL';

  @override
  String get lookUp => '조회';

  @override
  String demoModeBanner(String symbols) {
    return '데모 모드 – 시장 데이터 키가 설정되지 않았습니다. 샘플 데이터 제공 종목: $symbols.';
  }

  @override
  String get recognizing => '이미지 분석 중…';

  @override
  String get loadingData => '데이터 불러오는 중…';

  @override
  String get noCandidatesTitle => '종목을 인식하지 못했습니다';

  @override
  String get noCandidatesBody => '이 이미지에서 종목을 식별할 수 없습니다. 더 선명한 사진을 사용하거나 티커를 직접 입력해 보세요.';

  @override
  String get whatWeSaw => '인식된 내용';

  @override
  String get chooseCandidateTitle => '어떤 종목을 찾으시나요?';

  @override
  String confidencePercent(int percent) {
    return '신뢰도 $percent%';
  }

  @override
  String get settings => '설정';

  @override
  String get language => '언어';

  @override
  String get systemLanguage => '시스템 기본값';

  @override
  String get about => '정보';

  @override
  String get disclaimer => '이 앱은 정보 제공만을 목적으로 하며 투자 조언이 아닙니다. 데이터는 지연되거나 부정확할 수 있습니다.';

  @override
  String dataSource(String source) {
    return '데이터 출처: $source';
  }

  @override
  String recognizerSource(String source) {
    return '인식 엔진: $source';
  }

  @override
  String get retry => '다시 시도';

  @override
  String get cancel => '취소';

  @override
  String get ok => '확인';

  @override
  String get close => '닫기';

  @override
  String get errorGeneric => '문제가 발생했습니다.';

  @override
  String get errorSectionUnavailable => '이 섹션을 불러올 수 없습니다.';

  @override
  String get notAvailable => '해당 없음';

  @override
  String get sectionIdentity => '기본 정보';

  @override
  String get sectionPrice => '가격';

  @override
  String get sectionValuation => '밸류에이션';

  @override
  String get sectionFinancials => '재무';

  @override
  String get sectionDividend => '배당';

  @override
  String get sectionProfile => '기업 개요';

  @override
  String get sectionAnalysts => '애널리스트 평가';

  @override
  String get sectionNews => '뉴스';

  @override
  String get sectionRecognition => '인식 상세';

  @override
  String get labelSymbol => '티커';

  @override
  String get labelExchange => '거래소';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => '통화';

  @override
  String get labelCountry => '국가';

  @override
  String get labelIndustry => '산업';

  @override
  String get labelSector => '섹터';

  @override
  String get labelWebsite => '웹사이트';

  @override
  String get labelIpoDate => 'IPO 일자';

  @override
  String get labelMarketCap => '시가총액';

  @override
  String get labelSharesOutstanding => '발행 주식 수';

  @override
  String get labelEmployees => '직원 수';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => '본사';

  @override
  String get labelDescription => '설명';

  @override
  String get labelLastPrice => '현재가';

  @override
  String get labelChange => '변동';

  @override
  String get labelOpen => '시가';

  @override
  String get labelDayHigh => '당일 고가';

  @override
  String get labelDayLow => '당일 저가';

  @override
  String get labelPreviousClose => '전일 종가';

  @override
  String get labelWeek52High => '52주 최고가';

  @override
  String get labelWeek52Low => '52주 최저가';

  @override
  String get labelAverageVolume10d => '평균 거래량(10일)';

  @override
  String updatedAt(String time) {
    return '업데이트: $time';
  }

  @override
  String get labelPeTrailing => 'P/E(후행)';

  @override
  String get labelPeForward => 'P/E(선행)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / 잉여현금흐름';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS(TTM)';

  @override
  String get labelBeta => '베타';

  @override
  String get labelRevenueTtm => '매출(TTM)';

  @override
  String get labelNetIncomeTtm => '순이익(TTM)';

  @override
  String get labelGrossMargin => '매출총이익률';

  @override
  String get labelOperatingMargin => '영업이익률';

  @override
  String get labelNetMargin => '순이익률';

  @override
  String get labelRoe => '자기자본이익률';

  @override
  String get labelRoa => '총자산이익률';

  @override
  String get labelDebtToEquity => '부채비율';

  @override
  String get labelCurrentRatio => '유동비율';

  @override
  String get labelRevenueGrowth => '매출 성장률(YoY)';

  @override
  String get labelEpsGrowth => 'EPS 성장률(YoY)';

  @override
  String get labelDividendYield => '배당수익률';

  @override
  String get labelDividendPerShare => '주당 배당금';

  @override
  String get labelPayoutRatio => '배당성향';

  @override
  String get labelConsensus => '컨센서스';

  @override
  String get ratingStrongBuy => '적극 매수';

  @override
  String get ratingBuy => '매수';

  @override
  String get ratingHold => '보유';

  @override
  String get ratingSell => '매도';

  @override
  String get ratingStrongSell => '적극 매도';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '애널리스트 $count명', one: '애널리스트 1명');
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return '기간: $period';
  }

  @override
  String get noNews => '최근 뉴스가 없습니다.';

  @override
  String get openArticle => '기사 열기';

  @override
  String get openLinkFailed => '링크를 열 수 없습니다.';

  @override
  String get recognitionSummary => '요약';

  @override
  String get recognitionEvidence => '판단 근거';

  @override
  String get recognitionRawText => '이미지에서 읽은 텍스트';

  @override
  String get errMissingAnthropicKey => '이미지 인식이 설정되지 않았습니다(ANTHROPIC_API_KEY 없음). 티커를 직접 입력하세요.';

  @override
  String get errRecognitionUnreachable => '인식 서비스에 연결할 수 없습니다. 인터넷 연결을 확인하세요.';

  @override
  String errRecognitionHttp(String status) {
    return '인식 서비스에서 오류를 반환했습니다(HTTP $status).';
  }

  @override
  String get errRecognitionRefused => '인식 서비스가 이 이미지를 처리할 수 없습니다.';

  @override
  String get errRecognitionTruncated => '인식 응답이 중간에 끊겼습니다. 다시 시도해 주세요.';

  @override
  String get errRecognitionBadResponse => '인식 서비스에서 예상치 못한 응답을 받았습니다.';

  @override
  String get errRecognitionEmpty => '인식 서비스에서 빈 응답을 반환했습니다.';

  @override
  String get errMissingFinnhubKey => '시장 데이터가 설정되지 않았습니다(FINNHUB_API_KEY 없음).';

  @override
  String get errMarketUnreachable => '시장 데이터 서비스에 연결할 수 없습니다. 인터넷 연결을 확인하세요.';

  @override
  String get errMarketRateLimited => '시장 데이터 서비스 요청이 너무 많습니다. 1분 정도 기다려 주세요.';

  @override
  String errMarketHttp(String status) {
    return '시장 데이터 서비스에서 오류를 반환했습니다(HTTP $status).';
  }

  @override
  String get errMarketBadResponse => '시장 데이터 서비스에서 예상치 못한 응답을 받았습니다.';

  @override
  String errNoQuote(String symbol) {
    return '$symbol의 가격 데이터를 찾을 수 없습니다.';
  }

  @override
  String errNoProfile(String symbol) {
    return '$symbol의 기업 개요를 찾을 수 없습니다.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return '데모 모드는 $symbols만 지원합니다. 실시간 데이터를 보려면 FINNHUB_API_KEY를 추가하세요.';
  }

  @override
  String errUnknown(String detail) {
    return '문제가 발생했습니다: $detail';
  }

  @override
  String get newSearch => '새 검색';

  @override
  String get recentSearches => '최근';

  @override
  String get noRecentSearches => '아직 최근 검색이 없습니다.';

  @override
  String get clearRecent => '최근 기록 지우기';

  @override
  String get greeting => '어떤 종목을 살펴볼까요?';

  @override
  String get searchHint => '티커 또는 회사명';

  @override
  String get attachImage => '이미지 첨부';

  @override
  String get searchResultsTitle => '검색 결과';

  @override
  String errNoResults(String query) {
    return '“$query”에 해당하는 종목을 찾을 수 없습니다.';
  }

  @override
  String get quickBarHint => '티커 또는 회사명을 입력하세요…';

  @override
  String get openFullWindow => '창 열기';

  @override
  String hotkeyHint(String shortcut) {
    return '어디서든 $shortcut 키를 눌러 StockLens를 불러오세요.';
  }

  @override
  String get trayOpen => 'StockLens 열기';

  @override
  String get trayQuickSearch => '빠른 검색';

  @override
  String get trayQuit => '종료';

  @override
  String get appearance => '모양';

  @override
  String get themeSystem => '시스템';

  @override
  String get themeDark => '다크';

  @override
  String get themeLight => '라이트';

  @override
  String get back => '뒤로';

  @override
  String get aiSectionTitle => 'AI 분석';

  @override
  String get aiIntro =>
      'AI가 작성한 상세 개요: 최근 뉴스 요약, 사업 내용, 강점, 리스크와 숨겨진 요인, 밸류에이션, 심리적·사회적·기술적·거시적 관점의 시나리오를 담은 주가 전망, 주목할 점.';

  @override
  String get aiGenerate => '분석 생성';

  @override
  String get aiRegenerate => '다시 생성';

  @override
  String get aiGenerating => '분석을 준비하는 중… 1~2분 정도 걸릴 수 있습니다.';

  @override
  String get aiSources => '출처';

  @override
  String aiGeneratedAt(String time) {
    return '생성: $time';
  }

  @override
  String get aiDisclaimer => '공개 데이터와 최근 뉴스를 바탕으로 AI가 생성한 분석입니다. 오류가 있거나 오래된 정보일 수 있으며 투자 조언이 아닙니다.';

  @override
  String get errAiNotConfigured => 'AI 분석이 설정되지 않았습니다(ANTHROPIC_API_KEY 없음).';

  @override
  String get errAiUnreachable => 'AI 서비스에 연결할 수 없습니다. 인터넷 연결을 확인하세요.';

  @override
  String errAiHttp(String status) {
    return 'AI 서비스에서 오류를 반환했습니다(HTTP $status).';
  }

  @override
  String get errAiRefused => 'AI 서비스가 이 종목의 분석을 거부했습니다.';

  @override
  String get errAiBadResponse => 'AI 서비스에서 예상치 못한 응답을 받았습니다.';

  @override
  String get sectionChart => '가격 차트';

  @override
  String get rangeOneWeek => '1주';

  @override
  String get rangeOneMonth => '1개월';

  @override
  String get rangeThreeMonths => '3개월';

  @override
  String get rangeOneYear => '1년';

  @override
  String get rangeFiveYears => '5년';

  @override
  String get chartUnavailable => '현재 데이터 출처에서는 가격 이력을 제공하지 않습니다.';

  @override
  String get sectionStatements => '재무제표(연간)';

  @override
  String get labelFiscalYear => '회계연도';

  @override
  String get labelRevenue => '매출';

  @override
  String get labelNetIncome => '순이익';

  @override
  String get labelTotalAssets => '자산총계';

  @override
  String get labelTotalLiabilities => '부채총계';

  @override
  String get labelEquity => '자본총계';

  @override
  String get labelOperatingCashFlow => '영업활동현금흐름';

  @override
  String get statementsUnavailable => '이 종목의 공시 재무제표를 제공할 수 없습니다.';

  @override
  String get launchAtLogin => '로그인 시 실행';

  @override
  String get hotkeyLabel => '전역 단축키';

  @override
  String get hotkeyRecordHint => '여기를 클릭한 뒤 새 키 조합을 누르세요';

  @override
  String get hotkeyReset => '기본값으로 재설정';

  @override
  String get pasteImage => '클립보드에서 이미지 붙여넣기';

  @override
  String get errClipboardNoImage => '클립보드에 이미지가 없습니다.';

  @override
  String get favorites => '즐겨찾기';

  @override
  String get addToFavorites => '즐겨찾기에 추가';

  @override
  String get removeFromFavorites => '즐겨찾기에서 제거';

  @override
  String get noFavorites => '아직 즐겨찾기가 없습니다. 종목의 별을 탭하여 추가하세요.';

  @override
  String get displayCurrency => '표시 통화';

  @override
  String get displayCurrencyNone => '종목 통화만 표시';

  @override
  String labelConverted(String currency) {
    return '≈ $currency 환산';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return '환율: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => '업데이트';

  @override
  String currentVersion(String version) {
    return '버전 $version';
  }

  @override
  String get autoUpdate => '업데이트 자동 설치';

  @override
  String get checkForUpdates => '업데이트 확인';

  @override
  String get updateChecking => '업데이트 확인 중…';

  @override
  String get updateUpToDate => '최신 버전을 사용하고 있습니다.';

  @override
  String updateAvailable(String version) {
    return '$version 버전을 사용할 수 있습니다.';
  }

  @override
  String get updateDownloading => '백그라운드에서 업데이트를 다운로드하는 중…';

  @override
  String get updateDownloaded => '업데이트가 준비되었습니다. 설치하려면 다시 시작하세요.';

  @override
  String get updateNow => '업데이트';

  @override
  String get restartNow => '다시 시작';

  @override
  String get updatesViaStore => '업데이트는 앱 스토어를 통해 자동으로 제공됩니다.';

  @override
  String get updateCheckFailed => '업데이트를 확인할 수 없습니다.';

  @override
  String get subscription => '구독';

  @override
  String get planTrial => '체험';

  @override
  String get planNormal => '일반';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => '활성 요금제 없음';

  @override
  String planAnalysesPerMonth(int count) {
    return '월 $count회 분석';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$days일 무료 체험, 분석 $count회 포함';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: '체험 기간 $days일 남음', one: '체험 기간 1일 남음');
    return '$_temp0';
  }

  @override
  String get trialExpired => '무료 체험이 종료되었습니다. 분석을 계속하려면 요금제를 선택하세요.';

  @override
  String analysesRemaining(int remaining, int total) {
    return '이번 기간 분석 $total회 중 $remaining회 남음';
  }

  @override
  String extraCredits(int count) {
    return '추가 분석 $count회';
  }

  @override
  String renewsOn(String date) {
    return '$date 갱신';
  }

  @override
  String get choosePlan => '요금제 선택';

  @override
  String get currentPlan => '현재 요금제';

  @override
  String get subscribe => '구독하기';

  @override
  String get perMonth => '/ 월';

  @override
  String get extraPacksTitle => '더 필요하신가요? 추가 분석 구매';

  @override
  String get extraPacksHint => '추가 분석은 만료되지 않으며 월 할당량을 모두 사용한 후에 사용됩니다.';

  @override
  String get buy => '구매';

  @override
  String get restorePurchases => '구매 복원';

  @override
  String get manageSubscription => '구독 관리';

  @override
  String get purchaseSuccess => '감사합니다! 구매가 활성화되었습니다.';

  @override
  String get purchasePending => '구매 처리 중…';

  @override
  String get purchaseFailed => '구매를 완료할 수 없습니다.';

  @override
  String get purchaseCanceled => '구매가 취소되었습니다.';

  @override
  String get billingUnavailable => '이 플랫폼에서는 아직 구매할 수 없습니다. 휴대폰이나 Mac에서 구독하면 모든 기기에서 요금제를 사용할 수 있습니다.';

  @override
  String get errQuotaExceeded => '이번 기간에 남은 분석이 없습니다. 요금제를 업그레이드하거나 추가 분석을 구매하세요.';

  @override
  String get errTrialExpired => '무료 체험이 종료되었습니다. 계속하려면 요금제를 선택하세요.';

  @override
  String get errNoPlan => 'AI 분석에는 활성 요금제가 필요합니다.';

  @override
  String get viewPlans => '요금제 보기';

  @override
  String get usageTitle => '사용량';

  @override
  String get demoPurchaseNote => '데모 결제: 이 플랫폼에서는 구매가 시뮬레이션됩니다.';

  @override
  String get mostPopular => '가장 인기';

  @override
  String get bestValue => '최고의 가치';

  @override
  String get planFeaturesCommon => '사진 인식, 실시간 데이터, 차트, 즐겨찾기, 44개 언어 전체가 모든 요금제에 포함됩니다. 할당량은 AI 분석에 적용됩니다.';

  @override
  String get searchLanguages => '언어 검색…';

  @override
  String get noLanguageMatch => '일치하는 언어가 없습니다.';

  @override
  String get aiSettings => 'AI 분석';

  @override
  String get aiLength => '길이';

  @override
  String get aiDepthBrief => '간략';

  @override
  String get aiDepthStandard => '표준';

  @override
  String get aiDepthDeep => '심층';

  @override
  String get aiDepthBriefDesc => '핵심만 빠르게.';

  @override
  String get aiDepthStandardDesc => '모든 섹션을 담은 전체 리포트.';

  @override
  String get aiDepthDeepDesc => '더 많은 웹 검색, 동종 기업 비교, 더 깊이 있는 세부 내용.';

  @override
  String aiDepthWords(String min, String max) {
    return '약 $min–$max단어';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '분석 $count회 사용');
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => '독자 수준';

  @override
  String get aiReaderBeginner => '초보자';

  @override
  String get aiReaderExperienced => '숙련자';

  @override
  String get aiReaderBeginnerDesc => '쉬운 표현을 사용하며 모든 전문 용어를 설명합니다.';

  @override
  String get aiReaderExperiencedDesc => '표준 금융 용어를 사용한 더 밀도 높은 글.';

  @override
  String get aiCounterArgument => '가장 강력한 반론';

  @override
  String get aiCounterArgumentDesc => '요약은 항상 자체 결론에 대한 가장 강력한 반론으로 마무리됩니다.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '현재 요금제로 분석당 최대 $count회 웹 검색');
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return '요금제별 표준 길이: 일반 $normal, Pro $pro, Max $max, Ultra $ultra. 간략은 2회 적게, 심층은 2회 많게 사용합니다.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '최대 $count회 웹 검색');
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '분석당 웹 검색 $count회');
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return '이 길이에는 분석 $needed회가 필요하지만 $left회만 남았습니다. 설정에서 더 짧은 길이를 선택하거나 추가 분석을 구매하세요.';
  }
}
