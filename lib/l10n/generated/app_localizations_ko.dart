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
  String get labelYieldOnCost => '매입가 대비 배당수익률';

  @override
  String get labelDividendGrowth5y => '배당 성장률(5년)';

  @override
  String get dividendNone => '최근 12개월 동안 지급된 배당이 없습니다.';

  @override
  String get dividendOnYourShares => '보유 주식 기준, 연간';

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
  String homeDividendsThisYear(String amount) {
    return '올해 배당금: $amount';
  }

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
  String get eventDividend => '배당금 예상';

  @override
  String get eventDividendEstimate => '기록한 배당 내역으로 추정';

  @override
  String get eventsHint =>
      '향후 90일간 즐겨찾기 및 포트폴리오 종목의 실적 발표일, 내 분석에서 찾은 날짜가 정해진 이벤트, 그리고 기록한 배당 내역으로 추정한 예상 배당금입니다.';

  @override
  String get eventsEmpty =>
      '향후 90일간 날짜가 정해진 이벤트가 없습니다. 즐겨찾기나 포트폴리오에 종목을 추가하면 여기에서 실적 발표일을 확인할 수 있습니다. 배당금을 기록하면 다음 예상 배당이 여기에 표시됩니다.';

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

  @override
  String get portfolioExport => 'CSV로 내보내기';

  @override
  String get portfolioImport => 'CSV에서 가져오기';

  @override
  String get portfolioImportHint =>
      '한 줄에 매수 1건씩 붙여 넣으세요: 티커 심볼, 수량, 가격, 통화, 날짜(YYYY-MM-DD). 열은 쉼표, 세미콜론 또는 탭으로 구분할 수 있으며, 머리글 행은 선택 사항입니다.';

  @override
  String get portfolioImportButton => '가져오기';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '매수 $count건이 추가되었습니다',
      one: '매수 1건이 추가되었습니다',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count줄을 건너뛰었습니다',
      one: '1줄을 건너뛰었습니다',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo => '포트폴리오, 즐겨찾기, 가격 알림, 메모가 모든 기기에서 동기화됩니다.';

  @override
  String syncLast(String time) {
    return '마지막 동기화: $time';
  }

  @override
  String get syncNow => '지금 동기화';

  @override
  String get syncFailed => '동기화하지 못했습니다. 자동으로 다시 시도합니다.';

  @override
  String get alertEmailTitle => '알림 발생 시 이메일 받기';

  @override
  String get alertEmailOn => '몇 분마다 알림을 확인하고 앱이 닫혀 있어도 이메일로 알려 드립니다.';

  @override
  String get alertEmailSignIn => '앱이 닫혀 있어도 이메일로 알림을 받으려면 설정에서 이메일로 로그인하세요.';

  @override
  String get portfolioHistory => '평가액 추이';

  @override
  String get portfolioReviewTitle => 'AI 포트폴리오 진단';

  @override
  String get portfolioReviewIntro =>
      'AI가 포트폴리오 전체를 살펴봅니다: 집중도, 섹터·통화 노출, 보유 종목들의 공통 리스크, 배당. 분석 1회를 사용합니다.';

  @override
  String get portfolioReviewButton => '내 포트폴리오 진단';

  @override
  String get portfolioReviewAgain => '다시 진단';

  @override
  String get portfolioReviewWorking => '포트폴리오를 진단하는 중…';

  @override
  String get digestTitle => '이메일 주간 요약';

  @override
  String get digestHint =>
      '매주 월요일: 지난주 즐겨찾기와 포트폴리오의 움직임, 그리고 다가오는 실적 발표일을 알려 드립니다.';

  @override
  String get benchmarkTitle => 'S&P 500과 비교';

  @override
  String get benchmarkYours => '내 매수';

  @override
  String get benchmarkIndex => '같은 금액을 S&P 500에';

  @override
  String benchmarkAhead(String points) {
    return '지수보다 $points%p 높음';
  }

  @override
  String benchmarkBehind(String points) {
    return '지수보다 $points%p 낮음';
  }

  @override
  String get benchmarkHint =>
      '각 매수 금액을 같은 날 S&P 500 인덱스 펀드에 투자했다고 가정한 결과입니다. 배당금 제외. 과거 수익률이 미래 수익률을 보장하지 않습니다.';

  @override
  String get portfolioSell => '매도';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbol 매도';
  }

  @override
  String portfolioSellPrice(String currency) {
    return '주당 매도 가격($currency)';
  }

  @override
  String get portfolioSellDate => '매도일';

  @override
  String get portfolioSellAll => '전체';

  @override
  String portfolioSellTooMany(String quantity) {
    return '$quantity주 보유 중';
  }

  @override
  String get portfolioSold => '매도';

  @override
  String get portfolioRealized => '실현';

  @override
  String get portfolioClosed => '청산된 종목';

  @override
  String get portfolioClosedNote => '전량 매도됨';

  @override
  String get portfolioTransactions => '거래 내역';

  @override
  String get portfolioRealizedByYear => '연도별 실현 손익';

  @override
  String get portfolioRealizedHint =>
      '매도는 가장 오래된 매수분부터 차감되며(FIFO), 오늘 환율로 환산됩니다. 세금 신고에는 증권사 거래 내역서를 사용하세요.';

  @override
  String staleNewResults(String symbol, String date) {
    return '이 분석 이후 새 분기 실적이 발표되었습니다($symbol, $date).';
  }

  @override
  String get newResultsBadge => '새 실적';

  @override
  String get portfolioImportBrokers =>
      'Revolut, Trading 212, Interactive Brokers의 내보내기 파일도 매도 내역과 함께 인식됩니다. 배당과 입금은 건너뜁니다.';

  @override
  String get portfolioImportFile => '파일 선택';

  @override
  String offlineBanner(String time) {
    return '연결 없음 – 마지막으로 저장된 데이터를 표시합니다($time).';
  }

  @override
  String get glossMarketCap => '주식시장에서 회사 전체의 가치: 주가 × 주식 수.';

  @override
  String get glossSharesOutstanding =>
      '회사가 발행한 주식의 수. 늘어나면 한 주가 차지하는 몫이 작아지고, 자사주 매입은 이를 줄입니다.';

  @override
  String get glossPeTrailing =>
      '주가 ÷ 최근 12개월 주당순이익: 현재 이익의 몇 년 치를 지불하는지 보여 줍니다. 낮을수록 싸지만, 빠르게 성장하는 회사는 보통 P/E가 높습니다.';

  @override
  String get glossPeForward =>
      'P/E와 같지만, 애널리스트가 예상하는 향후 12개월 이익을 사용합니다. 후행 P/E보다 낮으면 이익 증가가 예상된다는 뜻입니다.';

  @override
  String get glossPb =>
      '주가 ÷ 주당 장부가치(자산에서 부채를 뺀 것). 1 안팎이면 시장이 회사를 장부상 보유 자산만큼 평가한다는 뜻입니다.';

  @override
  String get glossPs => '시장가치 ÷ 연 매출. 아직 이익이 적거나 없는 회사에 유용하며, 같은 업종 안에서 비교하세요.';

  @override
  String get glossEvToFcf =>
      '부채를 포함한 회사 가치(EV) ÷ 투자 후 1년 동안 벌어들이는 현금. 낮을수록 지불한 가격에 비해 더 많은 현금을 얻습니다.';

  @override
  String get glossPeg =>
      'P/E ÷ 예상 연간 이익 성장률(%). 1 안팎이면 흔히 적정하다고 보며, 성장을 감안해 P/E를 보여 줍니다.';

  @override
  String get glossEps =>
      '최근 12개월 동안의 주당 이익. 해마다 늘어나는 EPS는 건강한 회사의 가장 강력한 신호 중 하나입니다.';

  @override
  String get glossBeta =>
      '주가가 시장과 얼마나 함께 움직이는지: 1 = 시장과 같음, 1.5 = 변동폭이 약 50% 더 큼, 1 미만 = 더 안정적.';

  @override
  String get glossRevenueTtm => '최근 12개월의 총 판매액(비용을 빼기 전).';

  @override
  String get glossNetIncomeTtm => '최근 12개월 동안 모든 비용, 이자, 세금을 뺀 뒤 남은 이익.';

  @override
  String get glossGrossMargin =>
      '제품의 직접 원가를 빼고 남는 매출의 비율. 높으면 가격 결정력이 있다는 뜻인 경우가 많습니다.';

  @override
  String get glossOperatingMargin =>
      '사업 운영비(인건비, 임대료, 마케팅)를 빼고 이자와 세금 전에 남는 매출의 비율.';

  @override
  String get glossNetMargin =>
      '매출 중 최종 이익이 되는 비율. 20%면 매출 100마다 20이 이익이라는 뜻입니다.';

  @override
  String get glossRoe =>
      '자기자본이익률: 연간 이익 ÷ 주주의 자본. 경영진이 주주의 돈을 얼마나 잘 쓰는지 보여 주며, 약 15%를 넘으면 우수합니다.';

  @override
  String get glossRoa => '총자산이익률: 연간 이익 ÷ 회사가 가진 모든 자산. 같은 업종 안에서 비교하세요.';

  @override
  String get glossDebtToEquity =>
      '부채 ÷ 주주의 자본. 높을수록 빌린 돈이 많아 금리가 오르거나 사업이 둔화될 때 위험이 커집니다.';

  @override
  String get glossCurrentRatio =>
      '단기 자산 ÷ 1년 안에 갚아야 할 부채. 1을 넘으면 회사가 가까운 시일의 지급을 감당할 수 있습니다.';

  @override
  String get glossRevenueGrowth => '1년 전과 비교해 매출이 얼마나 늘었는지.';

  @override
  String get glossEpsGrowth => '1년 전과 비교해 주당 이익이 얼마나 늘었는지.';

  @override
  String get glossDividendYield => '연간 배당금 ÷ 주가: 지불한 금액 대비 매년 받는 현금 수입의 비율.';

  @override
  String get glossDividendPerShare => '지난 1년 동안 한 주에 지급된 배당금.';

  @override
  String get glossPayoutRatio =>
      '이익 중 배당금으로 지급되는 비율. 100%를 넘으면 버는 것보다 많이 지급하는 것으로, 오래 지속되기 어렵습니다.';

  @override
  String get portfolioBeta => '포트폴리오 베타';

  @override
  String get glossPortfolioBeta =>
      '보유 종목의 베타를 평가액 기준으로 가중 평균한 값이에요. 시장이 1% 움직일 때 보유 종목이 대략 몇 % 움직이는지 보여 줘요. 1보다 크면 시장보다 크게, 1보다 작으면 덜 움직여요. 현금은 포함되지 않아요.';

  @override
  String get portfolioTop3 => '상위 3개 종목';

  @override
  String get glossPortfolioTop3 =>
      '보유 종목 평가액 중 가장 큰 3개 종목이 차지하는 비중이에요. 높을수록 한 회사의 악재가 포트폴리오 전체에 더 큰 타격을 줄 수 있어요.';

  @override
  String get glossDividendGrowth5y =>
      '지난 5년간 주당 배당금이 연평균 얼마나 늘었는지를 나타냅니다. 꾸준한 증가는 보통 회사가 현금 흐름에 자신이 있다는 뜻이며, 배당 삭감은 흔히 경고 신호입니다.';

  @override
  String get glossYieldOnCost =>
      '최근 12개월 동안 수령한 배당금을 지금도 보유 중인 주식의 매입 금액으로 나눈 값입니다. 배당수익률과 달리 오늘의 주가가 아닌 본인의 매입가를 기준으로 계산합니다.';

  @override
  String get glossTitle => '무슨 뜻인가요?';

  @override
  String get watchNewsTitle => '내 종목 뉴스';

  @override
  String get undo => '실행취소';

  @override
  String get watchSort => '정렬';

  @override
  String get watchSortOwn => '내 순서';

  @override
  String get watchSortGainers => '상승률 높은 순';

  @override
  String get watchSortLosers => '하락률 높은 순';

  @override
  String get watchSortName => '티커순 (A–Z)';

  @override
  String get watchHint =>
      '핸들을 끌어 순서를 바꾸고, 왼쪽으로 스와이프하여 제거합니다. 선은 최근 30일을 보여줍니다.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: 분석이 완료되었습니다.';
  }

  @override
  String alertFromCost(String price) {
    return '평균 매수가($price) 기준:';
  }

  @override
  String get briefTitle => '오늘의 내 종목';

  @override
  String get briefButton => '오늘 요약하기';

  @override
  String get briefHint =>
      '포트폴리오와 관심 종목이 오늘 어떻게 움직였는지, 최신 뉴스가 무엇을 말하는지 AI가 짧게 요약합니다. 분석 횟수는 차감되지 않습니다.';

  @override
  String get briefRefresh => '업데이트';

  @override
  String get sectionEarnings => '실적';

  @override
  String earningsNext(String date) {
    return '다음 실적 발표: $date';
  }

  @override
  String get earningsExpected => '예상 EPS';

  @override
  String get earningsReported => '실제 EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: '최근 $total개 분기 중 $beats개 분기에서 EPS 예상치 이상',
      one: '1개 분기 중 $beats개 분기에서 EPS 예상치 이상',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol 내일 분기 실적 발표';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol 오늘 분기 실적 발표';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return '$symbol 오늘 배당금 입금 예상';
  }

  @override
  String dividendReminderBody(String amount) {
    return '약 $amount. 입금되면 포트폴리오에 기록하세요.';
  }

  @override
  String get dividendRemindersTitle => '배당금 알림';

  @override
  String get dividendRemindersSubtitle =>
      '기록한 배당 내역의 주기를 바탕으로 배당금이 예상되는 날 알려 드려 바로 기록할 수 있습니다';

  @override
  String get earningsRemindersTitle => '실적 발표 알림';

  @override
  String get earningsRemindersSubtitle =>
      '즐겨찾기나 포트폴리오 종목의 분기 실적 발표 하루 전에 알려 드립니다';

  @override
  String addAllToFavorites(int count) {
    return '모두 즐겨찾기에 추가($count)';
  }

  @override
  String get portfolioImportPhoto => '스크린샷에서 가져오기';

  @override
  String get holdingsReading => '보유 종목을 읽는 중…';

  @override
  String get holdingsReviewTitle => '찾은 보유 종목';

  @override
  String get holdingsReviewHint =>
      '추가하기 전에 숫자를 확인하세요. 가격은 오늘 가격이 아니라 주당 평균 매수가입니다.';

  @override
  String get holdingsNoPrice => '이미지에 평균 매수가가 없습니다';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '보유 종목 $count개 추가',
      one: '보유 종목 1개 추가',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      '이 이미지에서 보유 종목을 찾지 못했습니다. 증권사 앱의 잔고 또는 보유 종목 화면 스크린샷을 사용해 보세요.';

  @override
  String get week52Range => '52주 범위';

  @override
  String week52BelowHigh(String percent) {
    return '52주 최고가 대비 $percent 낮음';
  }

  @override
  String get week52AtHigh => '52주 최고가 도달';

  @override
  String get alertKindTrailing => '고점 대비 하락하면';

  @override
  String get alertTrailingPercent => '고점 대비 하락(%)';

  @override
  String get alertTrailingHint => '가격 상승을 따라가다가, 설정 이후 최고점에서 이만큼 하락하면 알려 드립니다.';

  @override
  String alertDescTrailing(String percent) {
    return '고점 대비 $percent 하락';
  }

  @override
  String alertTrailingPeak(String price) {
    return '현재까지 고점: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol이(가) 고점 대비 $percent 하락했습니다';
  }

  @override
  String get sectionInsiders => '내부자 거래';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '매수 $count건',
      one: '매수 1건',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '매도 $count건',
      one: '매도 1건',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return '순매매: $shares주';
  }

  @override
  String get insiderBuy => '매수';

  @override
  String get insiderSell => '매도';

  @override
  String get insiderHint =>
      '최근 90일간 임원 및 이사의 공개 시장 매수·매도 (SEC Form 4). 스톡옵션 행사와 주식 보상은 포함되지 않습니다.';

  @override
  String get insiderNone => '최근 90일간 공개 시장에서의 내부자 매수 또는 매도가 없습니다.';

  @override
  String get analystTrend => '월별 의견 변화';

  @override
  String get watchListAll => '전체';

  @override
  String get watchListNew => '새 목록';

  @override
  String get watchListName => '목록 이름';

  @override
  String get watchListRename => '목록 이름 변경';

  @override
  String get watchListDelete => '목록 삭제';

  @override
  String get watchListAddTo => '목록에 추가';

  @override
  String get watchListEmpty => '이 목록에 아직 종목이 없습니다. 종목 옆의 목록 버튼을 탭하여 추가하세요.';

  @override
  String get portfolioAskTitle => '내 포트폴리오에 대한 질문';

  @override
  String get rangeYtd => '연초 이후';

  @override
  String get backupTitle => '백업';

  @override
  String get backupSave => '백업 저장';

  @override
  String get backupSaveHint => '즐겨찾기, 목록, 포트폴리오, 알림, 메모를 하나의 파일에 담습니다.';

  @override
  String get backupRestore => '백업에서 복원';

  @override
  String get backupRestoreHint => '파일에 있는 내용을 추가하며, 지금 있는 데이터는 하나도 삭제되지 않습니다.';

  @override
  String get backupRestored => '백업을 복원했습니다.';

  @override
  String get backupInvalid => '이 파일은 WhatStock 백업이 아닙니다.';

  @override
  String get allocationPositions => '종목';

  @override
  String get allocationSectors => '섹터';

  @override
  String get allocationCurrencies => '통화';

  @override
  String get compareReturn1y => '1년 수익률';

  @override
  String get compareFromHigh => '52주 최고가 대비';

  @override
  String get briefAutoTitle => '매일 아침 일일 요약';

  @override
  String get briefAutoSubtitle =>
      '앱이 실행 중이면 오전 7시 이후 ‘오늘의 내 종목’이 자동으로 만들어집니다. 컴퓨터에서는 알림으로 알려 드립니다. 분석 횟수가 아닌 하루 질문 한도가 사용됩니다.';

  @override
  String get targetsButton => '목표 비중';

  @override
  String get targetsTitle => '목표 비중';

  @override
  String get targetsHint =>
      '각 종목이 포트폴리오에서 차지할 비중을 설정하세요. 목표가 없으면 칸을 비워 두세요. 그러면 앱이 목표에 맞추려면 무엇을 매수하거나 매도해야 하는지 보여 줍니다.';

  @override
  String targetsSum(String percent) {
    return '합계: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return '매수 ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return '매도 ≈ $amount';
  }

  @override
  String get rebalanceOk => '목표 도달';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol 예상 EPS 상회';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol 예상 EPS 하회';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return '실제 EPS $actual, 예상 $estimate';
  }

  @override
  String get newsExplain => '이게 무슨 뜻인가요?';

  @override
  String get watchAlertAll => '큰 일일 변동 알림';

  @override
  String get watchAlertAllHint =>
      '이 목록의 모든 종목에 가격 알림을 설정합니다. 하루에 이만큼 오르거나 내리면 알려 줍니다. 이미 알림이 있는 종목은 기존 알림을 유지합니다.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '알림 $count개가 설정되었습니다',
      one: '알림 1개가 설정되었습니다',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => '실현 손익 내보내기 (CSV)';

  @override
  String get portfolioAnnualReturn => '연 수익률';

  @override
  String portfolioPerYear(String percent) {
    return '연 $percent';
  }

  @override
  String get portfolioAnnualReturnHint =>
      '금액가중 연 수익률(XIRR): 매수·매도 시점을 반영하므로 나중에 추가한 자금 때문에 수치가 왜곡되지 않습니다. 첫 매수 후 1년 이상 지나면 표시되며, 배당은 포함되지 않습니다.';

  @override
  String get eventsAddToCalendar => '캘린더에 추가 (.ics)';

  @override
  String get portfolioMoveAlertTitle => '포트폴리오 알림';

  @override
  String get portfolioMoveAlertSubtitle => '포트폴리오 전체가 하루에 이만큼 움직이면 알려 드립니다.';

  @override
  String get portfolioMoveAlertOff => '끄기';

  @override
  String portfolioMoveUp(String percent) {
    return '오늘 포트폴리오가 $percent 상승했습니다';
  }

  @override
  String portfolioMoveDown(String percent) {
    return '오늘 포트폴리오가 $percent 하락했습니다';
  }

  @override
  String get whatIfTitle => '그때 투자했다면?';

  @override
  String get whatIfAmount => '금액';

  @override
  String whatIfResult(String amount, String period) {
    return '$period 전에 투자한 $amount의 현재 가치';
  }

  @override
  String get whatIfNote =>
      '주가만을 기준으로 하며 배당금, 수수료, 세금은 포함되지 않습니다. 과거 수익률은 미래 수익률을 예측하지 않습니다.';

  @override
  String get watchShare => '목록 공유';

  @override
  String get watchImport => '티커 추가';

  @override
  String get watchImportHint =>
      '티커를 쉼표, 공백 또는 줄바꿈으로 구분해 붙여 넣으세요(예: 누군가 공유해 준 목록).';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '종목 $count개가 추가되었습니다',
      one: '종목 1개가 추가되었습니다',
      zero: '새 종목이 없습니다',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => '평가액 큰 순';

  @override
  String get positionsSortGain => '총수익률 높은 순';

  @override
  String get positionsSortToday => '오늘 수익률 높은 순';

  @override
  String get chartMyBuys => '내 매수';

  @override
  String get chartMySells => '내 매도';

  @override
  String get shortcutsTitle => '키보드 단축키';

  @override
  String usMarketOpen(String time) {
    return '미국 시장 개장 · $time 후 마감';
  }

  @override
  String usMarketClosed(String time) {
    return '미국 시장 마감 · $time 후 개장';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes분';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours시간 $minutes분';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days일 $hours시간';
  }

  @override
  String get dividendGoalSet => '월 배당 목표 설정';

  @override
  String get dividendGoalTitle => '월 배당 목표';

  @override
  String get dividendGoalAmount => '월 배당금';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return '현재 수익률 기준 월 약 $amount: $percent 달성 · 목표 $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return '현재 수익률 기준 월 약 $amount: 목표 $goal 달성';
  }

  @override
  String get portfolioGoalSet => '목표 설정';

  @override
  String get portfolioGoalTitle => '포트폴리오 목표';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent 달성 · 목표 $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return '목표 $amount 달성';
  }

  @override
  String get portfolioGoalRemove => '목표 삭제';

  @override
  String get alertEdit => '알림 수정';

  @override
  String get positionOpenLots => '보유 중 (오래된 순)';

  @override
  String get lotRemoved => '거래를 삭제했습니다';

  @override
  String get alertDeleted => '알림을 삭제했습니다';

  @override
  String get alertsClearTriggered => '발동된 알림 지우기';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '알림 $count개를 지웠습니다',
      one: '알림 1개를 지웠습니다',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => '홈 화면';

  @override
  String get allocationCountries => '국가';

  @override
  String get newsExplainNoteResearch =>
      'AI 설명입니다. 웹에서 사실을 찾아보고, 기사를 열어 출처가 얼마나 신뢰할 만한지 판단합니다. 투자 조언이 아닙니다. 분석 횟수가 아닌 하루 질문 한도가 사용됩니다.';

  @override
  String get sourceOfficial => '공식';

  @override
  String get sourcePressRelease => '보도자료';

  @override
  String get sourceMajorNews => '주요 언론';

  @override
  String get sourceOpinion => '의견';

  @override
  String get earningsSummaryButton => '최근 실적 발표 내용은?';

  @override
  String get earningsSummaryNote =>
      '회사의 실적 발표와 웹에서 찾은 언론 보도를 AI가 요약합니다. 투자 조언이 아닙니다. 분석 횟수가 아닌 하루 질문 한도가 사용됩니다.';

  @override
  String get compareLastSurprise => '지난 분기 EPS vs 예상';

  @override
  String get compareNextReport => '다음 실적 발표';

  @override
  String get resolvingDescription => '어떤 종목인지 확인 중…';

  @override
  String get instrumentTitle => '이 종목에 대해';

  @override
  String get instrumentHint =>
      '이 심볼에는 기업 프로필이 없습니다. ETF, 펀드 또는 예탁증서일 수 있습니다. 이것이 무엇인지, 무엇을 담고 있는지, 비용은 얼마인지 AI에게 물어보세요.';

  @override
  String get instrumentAsk => '이게 뭔가요?';

  @override
  String get instrumentNote =>
      '발행사의 펀드 페이지와 웹에서 찾은 금융 사이트를 바탕으로 AI가 설명합니다. 투자 조언이 아닙니다. 분석 횟수가 아닌 하루 질문 한도가 사용됩니다.';

  @override
  String suggestAskAi(String query) {
    return 'AI에게 질문: “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return '$symbols의 현재 가격이 없습니다.';
  }

  @override
  String get eventsRecentResults => '최근 발표된 실적';

  @override
  String get saveToNotes => '내 메모에 저장';

  @override
  String get savedToNotes => '메모에 저장됨';

  @override
  String get portfolioDividendsReceived => '수령한 배당금';

  @override
  String get portfolioDividendsThisYear => '올해';

  @override
  String get portfolioDividendsAllTime => '전체 기간';

  @override
  String get portfolioAddDividend => '배당금 추가';

  @override
  String portfolioDividendAmount(String currency) {
    return '수령 금액 ($currency)';
  }

  @override
  String get portfolioDividendDate => '지급일';

  @override
  String get portfolioDividendsEmpty =>
      '아직 기록된 배당금이 없습니다. 직접 추가하거나 증권사 내보내기 파일을 가져오세요. 배당금 행도 함께 인식됩니다.';

  @override
  String get portfolioSplit => '주식 분할';

  @override
  String portfolioSplitTitle(String symbol) {
    return '주식 분할: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      '분할 전 날짜의 매수·매도가 조정됩니다. 주식 수는 곱하고 주당 가격은 나누므로 매입 비용은 그대로 유지됩니다.';

  @override
  String get portfolioSplitRatio => '비율 (신 : 구)';

  @override
  String get portfolioSplitRatioError =>
      '10:1처럼 비율을 입력하세요. 주식 병합(역분할)은 1:10입니다.';

  @override
  String get portfolioSplitDate => '분할 날짜';

  @override
  String portfolioSplitRow(String ratio) {
    return '주식 분할 $ratio';
  }

  @override
  String get portfolioSplitRemoved => '주식 분할이 삭제되었습니다';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '주식 분할 $count건이 추가되었습니다',
      one: '주식 분할 1건이 추가되었습니다',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '배당금 $count건이 추가되었습니다',
      one: '배당금 1건이 추가되었습니다',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => '배당금 내보내기 (CSV)';

  @override
  String get portfolioDividendDeleted => '배당금이 삭제되었습니다';

  @override
  String get portfolioDividendsHint =>
      '금액은 계좌에 입금된 그대로 지급 통화로 표시되며, 합계는 오늘 환율로 환산됩니다. 세금 신고에는 증권사 명세서를 사용하세요.';

  @override
  String get awayTitle => '자리를 비운 동안';

  @override
  String awaySince(String when) {
    return '$when 이후';
  }

  @override
  String get awayQuiet => '큰 변동은 없었습니다.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '알림 $count건 발생',
      one: '알림 1건 발생',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return '실적 발표: $symbols';
  }

  @override
  String get moveWhyButton => '오늘 왜 움직이나요?';

  @override
  String moveWhyTitle(String percent) {
    return '오늘 $percent';
  }

  @override
  String get moveWhyNote =>
      '웹에서 찾은 오늘 뉴스를 바탕으로 한 AI 설명입니다. 실제 이유는 알 수 없거나 다를 수 있습니다. 투자 조언이 아닙니다. 분석이 아닌 일일 질문 한도를 사용합니다.';

  @override
  String get sectionTechnical => '기술적 분석';

  @override
  String get labelSma50 => '50일 이동평균';

  @override
  String get labelSma200 => '200일 이동평균';

  @override
  String get labelRsi => 'RSI (14일)';

  @override
  String get labelVolatility30 => '변동성 (30일)';

  @override
  String techAbove(String percent) {
    return '$percent 위';
  }

  @override
  String techBelow(String percent) {
    return '$percent 아래';
  }

  @override
  String get techOverbought => '과매수';

  @override
  String get techOversold => '과매도';

  @override
  String get techNeutral => '중립';

  @override
  String get techGoldenCross =>
      '50일 이동평균이 200일 이동평균 위에 있습니다 – 고전적인 해석으로는 상승 추세입니다.';

  @override
  String get techDeathCross =>
      '50일 이동평균이 200일 이동평균 아래에 있습니다 – 고전적인 해석으로는 하락 추세입니다.';

  @override
  String get glossSma50 =>
      '최근 50거래일 종가의 평균입니다. 주가가 그 위에 있으면 단기 강세, 아래에 있으면 약세로 읽는 경우가 많습니다.';

  @override
  String get glossSma200 =>
      '최근 200거래일 종가의 평균 – 고전적인 장기 추세선입니다. 많은 투자자가 주가가 그 위에 있으면 장기 상승 추세로 봅니다.';

  @override
  String get glossRsi =>
      '상대강도지수: 최근 상승폭과 최근 하락폭을 0~100 척도로 비교합니다. 70을 넘으면 과매수(빠르게 올랐음), 30 아래면 과매도라고 부르는 경우가 많지만, 강한 추세에서는 그 상태가 오래 이어질 수 있습니다.';

  @override
  String get glossVolatility =>
      '주가가 하루하루 얼마나 움직이는지를 연율로 환산한 값입니다. 20%라면 보통 한 해에 약 ±20% 범위에서 움직인다는 뜻입니다. 변동성이 높을수록 위아래로 더 크게 움직입니다.';

  @override
  String get techNote => '일별 종가로 계산했습니다. 기술적 신호는 과거를 설명할 뿐 미래를 말해주지 않습니다.';

  @override
  String portfolioAbove200(int above, int count) {
    return '보유 종목 $count개 중 $above개가 200일 이동평균 위';
  }

  @override
  String get watchSignalsTitle => '시그널';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · 과매도';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · 과매수';
  }

  @override
  String get signalCrossedAbove => '200일 이동평균 상향 돌파';

  @override
  String get signalCrossedBelow => '200일 이동평균 하향 이탈';

  @override
  String get signalAlertsTitle => '기술적 신호 알림';

  @override
  String get signalAlertsSubtitle =>
      '하루 한 번, 관심 종목이 과매도 또는 과매수(RSI) 상태가 되거나 주가가 200일 이동평균을 교차할 때 알려 드립니다.';

  @override
  String get signalAlertsNotification => '기술적 신호';

  @override
  String get glossaryPageTitle => '용어집';

  @override
  String get glossaryPageSubtitle => '앱에 표시되는 모든 수치를 쉽게 설명, P/E부터 RSI까지';

  @override
  String get glossarySearchHint => '용어집 검색';

  @override
  String get portfolioCash => '현금';

  @override
  String get portfolioCashTitle => '현금 잔고';

  @override
  String get portfolioCashHint =>
      '증권사 계좌에 있는 미투자 자금(통화별). 총평가액과 비중에는 포함되지만 수익률에는 포함되지 않습니다.';

  @override
  String portfolioCashAmount(String currency) {
    return '금액($currency)';
  }

  @override
  String get portfolioCashEdit => '현금 잔고 설정';

  @override
  String get portfolioDividendsByMonth => '월별';

  @override
  String get dividendsLegendReceived => '수령';

  @override
  String get dividendsLegendExpected => '예상';

  @override
  String get portfolioDividendsExpected => '다음 예상';

  @override
  String get portfolioDividendsExpectedNote =>
      '기록한 배당금의 지급일과 금액으로 추정한 값입니다. 기업이 변경하거나 지급하지 않을 수 있습니다.';

  @override
  String portfolioDividendAround(String date) {
    return '$date 무렵';
  }
}
