// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => '주식을 촬영하고 그 종목의 모든 것을 알아보세요.';

  @override
  String get homeHint =>
      '주권, 증권 앱 화면, 신문, 회사 로고 등 종목을 식별할 수 있는 것이면 무엇이든 가능합니다.';

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
  String get noCandidatesBody =>
      '이 이미지에서 종목을 식별할 수 없습니다. 더 선명한 사진을 사용하거나 티커를 직접 입력해 보세요.';

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
  String get disclaimer =>
      '이 앱은 정보 제공만을 목적으로 하며 투자 조언이 아닙니다. 데이터는 지연되거나 부정확할 수 있습니다.';

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
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '애널리스트 $count명',
      one: '애널리스트 1명',
    );
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
  String get errMissingAnthropicKey =>
      '이미지 인식이 설정되지 않았습니다(ANTHROPIC_API_KEY 없음). 티커를 직접 입력하세요.';

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
    return '어디서든 $shortcut 키를 눌러 WhatStock을 불러오세요.';
  }

  @override
  String get trayOpen => 'WhatStock 열기';

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
  String get aiDisclaimer =>
      '공개 데이터와 최근 뉴스를 바탕으로 AI가 생성한 분석입니다. 오류가 있거나 오래된 정보일 수 있으며 투자 조언이 아닙니다.';

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
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '체험 기간 $days일 남음',
      one: '체험 기간 1일 남음',
    );
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
  String get billingUnavailable =>
      '이 플랫폼에서는 아직 구매할 수 없습니다. 휴대폰이나 Mac에서 구독하면 모든 기기에서 요금제를 사용할 수 있습니다.';

  @override
  String get errQuotaExceeded =>
      '이번 기간에 남은 분석이 없습니다. 요금제를 업그레이드하거나 추가 분석을 구매하세요.';

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
  String get planFeaturesCommon =>
      '사진 인식, 실시간 데이터, 차트, 즐겨찾기, 120개 언어 전체가 모든 요금제에 포함됩니다. 할당량은 AI 분석에 적용됩니다.';

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
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '분석 $count회 사용',
    );
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
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '현재 요금제로 분석당 최대 $count회 웹 검색',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return '요금제별 표준 길이: 일반 $normal, Pro $pro, Max $max, Ultra $ultra. 간략은 2회 적게, 심층은 2회 많게 사용합니다.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '최대 $count회 웹 검색',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '분석당 웹 검색 $count회',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return '이 길이에는 분석 $needed회가 필요하지만 $left회만 남았습니다. 설정에서 더 짧은 길이를 선택하거나 추가 분석을 구매하세요.';
  }

  @override
  String get outlookMarketMood => '시장 심리';

  @override
  String get moodVeryPessimistic => '매우 비관적';

  @override
  String get moodPessimistic => '비관적';

  @override
  String get moodNeutral => '중립';

  @override
  String get moodOptimistic => '낙관적';

  @override
  String get moodVeryOptimistic => '매우 낙관적';

  @override
  String get scenarioBull => '강세 시나리오';

  @override
  String get scenarioBase => '기본 시나리오';

  @override
  String get scenarioBear => '약세 시나리오';

  @override
  String outlookCurrentPrice(String price) {
    return '현재가: $price';
  }

  @override
  String get outlookKeyLevels => '주요 가격대';

  @override
  String get keyLevelSupport => '지지선';

  @override
  String get keyLevelResistance => '저항선';

  @override
  String get keyLevelAnchor => '기준가';

  @override
  String get upcomingEvents => '예정된 이벤트';

  @override
  String get outlookChartNote => '가격 범위는 참고용이며, 확률은 대략적인 판단일 뿐 예측이 아닙니다.';

  @override
  String get accountTitle => '계정';

  @override
  String get signIn => '로그인';

  @override
  String get signOut => '로그아웃';

  @override
  String get notSignedIn => '로그인되지 않음';

  @override
  String get accountBenefit => '로그인하면 모든 기기에서 구독을 사용할 수 있습니다.';

  @override
  String get accountSyncedNote => '구독과 남은 분석 횟수는 모든 기기에서 동일합니다.';

  @override
  String get signInTitle => 'WhatStock에 로그인';

  @override
  String get emailLabel => '이메일 주소';

  @override
  String get continueWithEmail => '이메일로 계속';

  @override
  String codeSentTo(String email) {
    return '$email(으)로 6자리 코드를 보냈습니다. 코드는 10분간 유효합니다.';
  }

  @override
  String get codeLabel => '로그인 코드';

  @override
  String get resendCode => '새 코드 보내기';

  @override
  String get useDifferentEmail => '다른 이메일 사용';

  @override
  String get errInvalidCode => '코드가 올바르지 않거나 만료되었습니다.';

  @override
  String get errInvalidEmail => '올바른 이메일 주소를 입력하세요.';

  @override
  String get errSignInFailed => '로그인하지 못했습니다. 연결을 확인한 후 다시 시도하세요.';

  @override
  String get checkoutWaiting => '브라우저에서 결제를 완료하세요. 완료되면 앱이 자동으로 업데이트됩니다.';

  @override
  String get paymentViaStripe =>
      'Stripe를 통해 브라우저에서 안전하게 결제합니다. 언제든지 해지할 수 있습니다.';

  @override
  String get paymentViaStore =>
      'App Store 또는 Google Play 계정으로 청구됩니다. 스토어 설정에서 언제든지 해지할 수 있습니다.';

  @override
  String get keySpace => '스페이스';

  @override
  String get doubleOptionTitle => 'Option 키 두 번 누르기';

  @override
  String get doubleOptionSubtitle =>
      'Option 키를 빠르게 두 번 눌러도 WhatStock을 불러올 수 있습니다.';

  @override
  String get doubleOptionPermission =>
      '다른 앱에서도 작동하게 하려면 시스템 설정 → 개인정보 보호 및 보안 → 입력 모니터링에서 WhatStock을 허용한 다음 앱을 다시 여세요.';

  @override
  String get openSystemSettings => '시스템 설정 열기';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return '어디서든 $shortcut 키를 누르거나 Option 키를 두 번 눌러 WhatStock을 불러오세요.';
  }

  @override
  String get scenarioMostLikely => '가능성 가장 높음';

  @override
  String get longTermToday => '오늘';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years년',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '연 $range';
  }

  @override
  String longTermLikely(String price) {
    return '가장 유력 $price';
  }

  @override
  String get confidenceLow => '신뢰도 낮음';

  @override
  String get confidenceMedium => '신뢰도 보통';

  @override
  String get confidenceHigh => '신뢰도 높음';

  @override
  String get longTermNote =>
      '장기 범위는 제시된 가정에 근거하며 기간이 길수록 넓어집니다. 가격에는 배당이 포함되지 않습니다. 대략적인 판단이며 예측이 아닙니다.';

  @override
  String get portfolio => '포트폴리오';

  @override
  String get portfolioEmpty =>
      '아직 비어 있습니다. 종목을 열고 ‘포트폴리오에 추가’를 탭하면 보유 종목을 추적할 수 있습니다.';

  @override
  String get portfolioLocalNote =>
      '이 기기에만 저장됩니다. 합계는 ECB 기준 환율로 환산되며, 가격은 지연될 수 있습니다.';

  @override
  String get addToPortfolio => '포트폴리오에 추가';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol 추가';
  }

  @override
  String get portfolioQuantity => '주식 수';

  @override
  String portfolioBuyPrice(String currency) {
    return '주당 가격($currency)';
  }

  @override
  String get portfolioBuyDate => '매수일';

  @override
  String get portfolioAdd => '추가';

  @override
  String get portfolioInvalidNumber => '0보다 큰 숫자를 입력하세요.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol을(를) 포트폴리오에 추가했습니다.';
  }

  @override
  String get portfolioTotalValue => '총평가액';

  @override
  String get portfolioToday => '오늘';

  @override
  String get portfolioGainLoss => '손익';

  @override
  String get portfolioInvested => '투자 금액';

  @override
  String get portfolioAllocation => '비중';

  @override
  String get portfolioPositions => '보유 종목';

  @override
  String portfolioAvgCost(String price) {
    return '평균 단가 $price';
  }

  @override
  String get portfolioYourPosition => '내 보유 현황';

  @override
  String get portfolioPurchases => '매수 내역';

  @override
  String get portfolioRemove => '삭제';

  @override
  String get portfolioExcluded => '가격이나 환율이 없는 종목은 합계에서 제외됩니다.';

  @override
  String get priceAlerts => '가격 알림';

  @override
  String get setPriceAlert => '가격 알림 설정';

  @override
  String alertDialogTitle(String symbol) {
    return '가격 알림 · $symbol';
  }

  @override
  String get alertKindAbove => '이 가격 이상으로 오르면';

  @override
  String get alertKindBelow => '이 가격 이하로 내리면';

  @override
  String get alertKindMove => '하루에 크게 움직이면';

  @override
  String alertTargetPrice(String currency) {
    return '가격($currency)';
  }

  @override
  String get alertMovePercent => '일일 변동(%)';

  @override
  String get alertAlreadyMet => '가격이 이미 이 수준을 넘었습니다.';

  @override
  String get alertSave => '알림 설정';

  @override
  String alertCreated(String symbol) {
    return '$symbol 알림을 설정했습니다.';
  }

  @override
  String get alertsEmpty => '아직 알림이 없습니다. 종목을 열고 종 아이콘을 탭하세요.';

  @override
  String get alertsNote =>
      'WhatStock이 실행 중인 동안 5분마다 알림을 확인합니다. 컴퓨터에서는 메뉴 막대나 시스템 트레이에서 계속 실행되며, 휴대폰에서는 현재 앱이 열려 있을 때만 알립니다.';

  @override
  String alertDescAbove(String price) {
    return '$price 이상';
  }

  @override
  String alertDescBelow(String price) {
    return '$price 이하';
  }

  @override
  String alertDescMove(String percent) {
    return '일일 변동 ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return '$date에 $price에서 발동';
  }

  @override
  String get alertRearm => '다시 켜기';

  @override
  String get alertDelete => '삭제';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol이(가) $price 위로 올랐습니다';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol이(가) $price 아래로 내렸습니다';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol이(가) 오늘 $percent 움직였습니다';
  }

  @override
  String alertHitBody(String price) {
    return '현재가: $price';
  }

  @override
  String get alertOpen => '열기';

  @override
  String get keepInTrayTitle => '창을 닫아도 계속 실행';

  @override
  String get keepInTraySubtitle =>
      'WhatStock이 메뉴 막대나 시스템 트레이에 남아 단축키와 가격 알림이 계속 작동합니다.';

  @override
  String get termsOfUse => '이용약관';

  @override
  String get privacyPolicy => '개인정보 처리방침';

  @override
  String get subscriptionLegal =>
      '구독은 해지할 때까지 매월 자동으로 갱신됩니다. 구독하면 이용약관과 개인정보 처리방침에 동의하는 것입니다.';

  @override
  String get deleteAccount => '계정 삭제';

  @override
  String get deleteAccountTitle => '계정을 삭제할까요?';

  @override
  String get deleteAccountBody =>
      '계정과 서버에 저장된 모든 정보(이메일, 사용 한도, 이용 내역)가 영구 삭제되며, 사용하지 않은 분석은 소멸됩니다. 브라우저에서 결제한 구독은 즉시 해지되며, App Store 또는 Google Play 구독은 스토어 설정에서 해지해야 합니다.';

  @override
  String get deleteLocalData => '이 기기의 데이터도 삭제(포트폴리오, 알림, 즐겨찾기, 기록, 저장된 분석)';

  @override
  String get deleteAccountConfirm => '영구 삭제';

  @override
  String get accountDeleted => '계정이 삭제되었습니다.';

  @override
  String get errDeleteAccount => '계정을 삭제하지 못했습니다. 연결을 확인하고 다시 시도하세요.';

  @override
  String get aiTrialBriefNote =>
      '체험 분석은 간략하며 더 빠른 AI 모델로 작성됩니다. 요금제를 이용하면 가장 뛰어난 AI, 더 많은 웹 검색, 표준 및 심층 길이를 이용할 수 있습니다.';

  @override
  String get billingMonthly => '월간';

  @override
  String get billingYearly => '연간';

  @override
  String get yearlyDiscount => '2개월 무료';

  @override
  String get perYear => '/ 년';

  @override
  String pricePerMonthApprox(String price) {
    return '월 약 $price';
  }

  @override
  String get subscriptionLegalYearly =>
      '연간 구독은 해지할 때까지 매년 자동으로 갱신됩니다. 구독하면 이용약관과 개인정보 처리방침에 동의하는 것입니다.';

  @override
  String get myAnalyses => '내 분석';

  @override
  String get navAlerts => '알림';

  @override
  String get inviteTitle => '비공개 미리보기';

  @override
  String get inviteBody => 'WhatStock은 현재 초대받은 분만 이용할 수 있습니다. 받은 초대 코드를 입력하세요.';

  @override
  String get inviteCodeLabel => '초대 코드';

  @override
  String get inviteContinue => '계속';

  @override
  String get inviteInvalid => '유효하지 않은 초대 코드입니다.';

  @override
  String get inviteExpired => '초대가 만료되었습니다. 초대한 분에게 새 코드를 요청하세요.';

  @override
  String get inviteDeviceLimit => '이 초대 코드는 이미 최대 기기 수에서 사용 중입니다.';

  @override
  String get previewConfidential => '기밀 미리보기';

  @override
  String get errPreviewDailyLimit => '이 미리보기의 오늘 분석 한도에 도달했습니다. 내일 다시 시도하세요.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count시간 전',
      one: '1시간 전',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count일 전',
      one: '1일 전',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => '이 분석을 업데이트할까요?';

  @override
  String staleBody(String age) {
    return '이 분석은 $age에 만들어졌습니다. 그 이후로 가격, 뉴스, 실적이 바뀌었을 수 있습니다.';
  }

  @override
  String get staleKeep => '이전 분석 보기';

  @override
  String get staleRefresh => '새로 만들기';

  @override
  String seeAll(int count) {
    return '모두 보기($count)';
  }

  @override
  String get searchAnalyses => '내 분석 검색';

  @override
  String get deleteAnalysis => '삭제';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol 분석을 삭제했습니다';
  }

  @override
  String get keyLevelAlertHint => '가격대를 탭하면 주가가 그 가격에 도달했을 때 알림을 받을 수 있습니다.';

  @override
  String get shareAnalysisTitle => '분석 공유';

  @override
  String get shareAsImage => '이미지로 공유';

  @override
  String get shareAsText => '텍스트로 공유';

  @override
  String get shareCardFooter => 'WhatStock으로 제작';

  @override
  String get shareCardDisclaimer => 'AI 분석 · 투자 조언 아님';

  @override
  String get referralTitle => '친구 초대';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '추가 분석 $count회',
      one: '추가 분석 1회',
    );
    return '코드를 공유하세요. 친구는 바로 $_temp0를 받고, 친구가 첫 분석을 마치면 회원님도 같은 만큼 받습니다.';
  }

  @override
  String get referralYourCode => '내 코드';

  @override
  String referralStats(int invited, int rewarded) {
    return '초대: $invited · 보상: $rewarded';
  }

  @override
  String get referralHaveCode => '친구에게 받은 코드가 있나요?';

  @override
  String get referralRedeem => '사용';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '추가 분석 $count회가 지급되었습니다. 환영합니다!',
      one: '추가 분석 1회가 지급되었습니다. 환영합니다!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown => '존재하지 않는 코드입니다. 확인 후 다시 시도해 주세요.';

  @override
  String get referralErrOwn => '본인의 코드는 사용할 수 없습니다.';

  @override
  String get referralErrAlready => '이미 친구 코드를 사용했습니다.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '추가 분석 $count회',
      one: '추가 분석 1회',
    );
    return '저는 WhatStock으로 주식을 분석해요. 종목을 찍으면 AI가 설명해 줘요. 제 코드 $code 입력 시 $_temp0를 받을 수 있어요.';
  }

  @override
  String get referralCopied => '코드가 복사되었습니다';

  @override
  String get onboardTitle1 => '주식을 촬영하세요';

  @override
  String get onboardBody1 =>
      '증권 앱 화면, 신문, 회사 로고만 있으면 충분합니다. WhatStock이 종목을 인식해 주가, 차트, 핵심 지표를 보여 줍니다.';

  @override
  String get onboardTitle2 => '몇 분 만에 파악하세요';

  @override
  String get onboardBody2 =>
      'AI 분석이 주가를 움직이는 요인, 리스크, 밸류에이션, 그리고 주가 향방에 대한 세 가지 시나리오를 출처와 함께 사용자의 언어로 설명합니다.';

  @override
  String get onboardTitle3 => '놓치지 마세요';

  @override
  String get onboardBody3 =>
      '즐겨찾기, 포트폴리오, 가격 알림으로 최신 소식을 받아 보세요. 분석 결과는 기기에 저장되어 언제든 다시 열어 볼 수 있습니다.';

  @override
  String get onboardNext => '다음';

  @override
  String get onboardStart => '시작하기';

  @override
  String get onboardSkip => '건너뛰기';

  @override
  String changesTitle(String date) {
    return '이전 분석($date) 이후';
  }

  @override
  String get changesPrice => '주가';

  @override
  String get changesNoMajor => '전망에 큰 변화가 없습니다.';

  @override
  String get changesPreviousSummary => '이전 요약';

  @override
  String get telemetryTitle => 'WhatStock 개선에 도움을 주세요';

  @override
  String get telemetryBody =>
      '익명의 사용 통계와 비정상 종료 보고서를 공유합니다. 어떤 기능이 사용되는지, 어떤 문제가 발생했는지만 전송되며 보유 주식, 분석 내용 또는 개인 데이터는 절대 전송되지 않습니다. 설정에서 언제든지 변경할 수 있습니다.';

  @override
  String get telemetryAllow => '허용';

  @override
  String get telemetryDecline => '괜찮습니다';

  @override
  String get telemetrySetting => '익명 통계 및 비정상 종료 보고서';

  @override
  String get telemetrySettingHint =>
      '기능 사용 빈도와 오류 보고서이며, 개인 데이터나 검색 및 분석 내용은 포함되지 않습니다.';

  @override
  String get askButton => '이 분석에 대해 질문하기';

  @override
  String askTitle(String symbol) {
    return '$symbol에 대한 질문';
  }

  @override
  String get askIntro =>
      '분석에 대해 무엇이든 물어보세요. 리스크가 무엇을 의미하는지, 무엇이 전망을 바꿀 수 있는지, 숫자가 어떻게 계산되었는지 등을 물어볼 수 있습니다. 답변은 이 분석을 바탕으로 하며 투자 조언이 아닙니다.';

  @override
  String get askHint => '질문을 입력하세요…';

  @override
  String get askSend => '보내기';

  @override
  String get askThinking => '생각 중…';

  @override
  String get askSuggest1 => '가장 큰 리스크는 무엇인가요?';

  @override
  String get askSuggest2 => '무엇이 전망을 바꿀 수 있나요?';

  @override
  String get askSuggest3 => '쉽게 설명해 주세요';

  @override
  String get askMaxReached => '이 분석에 대한 마지막 질문이었습니다. 더 질문하려면 새 분석을 생성하세요.';

  @override
  String get errAskLimit => '오늘의 질문 한도에 도달했습니다. 내일 다시 시도하세요.';

  @override
  String get eventTomorrow => '내일';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days일 후',
      one: '1일 후',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => '분기 실적';

  @override
  String get eventBeforeOpen => '장 시작 전';

  @override
  String get eventAfterClose => '장 마감 후';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS 예상치: $value';
  }

  @override
  String get eventFromAnalysis => '내 분석에서';

  @override
  String get eventsHint =>
      '향후 90일간 즐겨찾기 및 포트폴리오 종목의 실적 발표일과 내 분석에서 찾은 날짜가 정해진 이벤트입니다.';

  @override
  String get eventsEmpty =>
      '향후 90일간 날짜가 정해진 이벤트가 없습니다. 즐겨찾기나 포트폴리오에 종목을 추가하면 여기에서 실적 발표일을 확인할 수 있습니다.';

  @override
  String get compareTitle => '비교';

  @override
  String get compareAdd => '종목 추가';

  @override
  String get compareRemove => '삭제';

  @override
  String get compareTickerHint => '티커(예: MSFT)';

  @override
  String get compareHint =>
      '주요 지표를 나란히 표시합니다. 각 행에서 가장 좋은 값이 강조 표시됩니다. 금액은 각 종목의 통화로 표시됩니다.';

  @override
  String get compareNoAnalysis => '아직 분석 없음';

  @override
  String get portfolioDividends => '연간 배당';

  @override
  String portfolioDividendYield(String percent) {
    return '수익률 $percent';
  }

  @override
  String get portfolioDividendNote =>
      '예상 연간 배당은 최근 12개월 동안 지급된 배당을 기준으로 하며, 향후 지급은 보장되지 않습니다.';

  @override
  String positionDividend(String amount) {
    return '배당: 연 $amount';
  }

  @override
  String get chartAvgCost => '내 평균 단가';

  @override
  String get chartAlertLevel => '알림';

  @override
  String get marketsToday => '오늘의 시장';

  @override
  String get notesTitle => '내 메모';

  @override
  String get notesHint => '왜 샀나요? 무엇을 지켜보고 있나요? 어떤 경우에 팔 건가요?';

  @override
  String get notesInfo => '이 기기에만 저장됩니다. AI 분석에 메모 내용이 반영됩니다.';

  @override
  String notesSaved(String date) {
    return '저장됨: $date';
  }

  @override
  String get peersTitle => '유사 기업';
}
