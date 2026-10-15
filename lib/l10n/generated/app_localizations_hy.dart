// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Armenian (`hy`).
class AppLocalizationsHy extends AppLocalizations {
  AppLocalizationsHy([String locale = 'hy']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Լուսանկարեք բաժնետոմսը և իմացեք դրա մասին ամեն ինչ։';

  @override
  String get homeHint =>
      'Բաժնետոմսի սերտիֆիկատ, բրոքերային հավելվածի էկրան, թերթ կամ ընկերության լոգո՝ ցանկացած բան, որով կարելի է ճանաչել բաժնետոմսը։';

  @override
  String get takePhoto => 'Լուսանկարել';

  @override
  String get chooseFromGallery => 'Ընտրել պատկերասրահից';

  @override
  String get chooseImage => 'Ընտրել պատկեր';

  @override
  String get enterTickerManually => 'Մուտքագրել թիքերը ձեռքով';

  @override
  String get tickerInputLabel => 'Թիքեր';

  @override
  String get tickerInputHint => 'օր.՝ AAPL';

  @override
  String get lookUp => 'Որոնել';

  @override
  String demoModeBanner(String symbols) {
    return 'Դեմո ռեժիմ՝ շուկայական տվյալների բանալին կարգավորված չէ։ Օրինակային տվյալներ հասանելի են հետևյալի համար՝ $symbols։';
  }

  @override
  String get recognizing => 'Պատկերը վերլուծվում է…';

  @override
  String get loadingData => 'Տվյալները բեռնվում են…';

  @override
  String get noCandidatesTitle => 'Բաժնետոմս չի ճանաչվել';

  @override
  String get noCandidatesBody =>
      'Չհաջողվեց բաժնետոմս ճանաչել այս պատկերում։ Փորձեք ավելի հստակ լուսանկար կամ մուտքագրեք թիքերը ձեռքով։';

  @override
  String get whatWeSaw => 'Ինչ տեսանք';

  @override
  String get chooseCandidateTitle => 'Ո՞ր բաժնետոմսը նկատի ունեիք';

  @override
  String confidencePercent(int percent) {
    return 'Վստահություն՝ $percent%';
  }

  @override
  String get settings => 'Կարգավորումներ';

  @override
  String get language => 'Լեզու';

  @override
  String get systemLanguage => 'Համակարգի լեզուն';

  @override
  String get about => 'Հավելվածի մասին';

  @override
  String get disclaimer =>
      'Այս հավելվածը միայն տեղեկատվություն է տրամադրում և ներդրումային խորհուրդ չէ։ Տվյալները կարող են ուշացած կամ ոչ ճշգրիտ լինել։';

  @override
  String dataSource(String source) {
    return 'Տվյալների աղբյուր՝ $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Ճանաչում՝ $source';
  }

  @override
  String get retry => 'Կրկնել';

  @override
  String get cancel => 'Չեղարկել';

  @override
  String get ok => 'Եղավ';

  @override
  String get close => 'Փակել';

  @override
  String get errorGeneric => 'Ինչ-որ սխալ տեղի ունեցավ։';

  @override
  String get errorSectionUnavailable => 'Չհաջողվեց բեռնել այս բաժինը։';

  @override
  String get notAvailable => 'չկա';

  @override
  String get sectionIdentity => 'Նույնականացում';

  @override
  String get sectionPrice => 'Գին';

  @override
  String get sectionValuation => 'Գնահատում';

  @override
  String get sectionFinancials => 'Ֆինանսական ցուցանիշներ';

  @override
  String get sectionDividend => 'Շահաբաժիններ';

  @override
  String get sectionProfile => 'Ընկերության պրոֆիլ';

  @override
  String get sectionAnalysts => 'Վերլուծաբանների գնահատականներ';

  @override
  String get sectionNews => 'Նորություններ';

  @override
  String get sectionRecognition => 'Ճանաչման մանրամասներ';

  @override
  String get labelSymbol => 'Թիքեր';

  @override
  String get labelExchange => 'Բորսա';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Արժույթ';

  @override
  String get labelCountry => 'Երկիր';

  @override
  String get labelIndustry => 'Ճյուղ';

  @override
  String get labelSector => 'Ոլորտ';

  @override
  String get labelWebsite => 'Կայք';

  @override
  String get labelIpoDate => 'IPO-ի ամսաթիվ';

  @override
  String get labelMarketCap => 'Շուկայական կապիտալիզացիա';

  @override
  String get labelSharesOutstanding => 'Շրջանառվող բաժնետոմսեր';

  @override
  String get labelEmployees => 'Աշխատակիցներ';

  @override
  String get labelCeo => 'Գործադիր տնօրեն';

  @override
  String get labelHeadquarters => 'Կենտրոնակայան';

  @override
  String get labelDescription => 'Նկարագրություն';

  @override
  String get labelLastPrice => 'Վերջին գին';

  @override
  String get labelChange => 'Փոփոխություն';

  @override
  String get labelOpen => 'Բացում';

  @override
  String get labelDayHigh => 'Օրվա առավելագույն';

  @override
  String get labelDayLow => 'Օրվա նվազագույն';

  @override
  String get labelPreviousClose => 'Նախորդ փակում';

  @override
  String get labelWeek52High => '52 շաբաթվա առավելագույն';

  @override
  String get labelWeek52Low => '52 շաբաթվա նվազագույն';

  @override
  String get labelAverageVolume10d => 'Միջին ծավալ (10 օր)';

  @override
  String updatedAt(String time) {
    return 'Թարմացվել է՝ $time';
  }

  @override
  String get labelPeTrailing => 'P/E (ընթացիկ)';

  @override
  String get labelPeForward => 'P/E (կանխատեսվող)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / ազատ դրամական հոսք';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Բետա';

  @override
  String get labelRevenueTtm => 'Հասույթ (TTM)';

  @override
  String get labelNetIncomeTtm => 'Զուտ շահույթ (TTM)';

  @override
  String get labelGrossMargin => 'Համախառն մարժա';

  @override
  String get labelOperatingMargin => 'Գործառնական մարժա';

  @override
  String get labelNetMargin => 'Զուտ մարժա';

  @override
  String get labelRoe => 'Կապիտալի եկամտաբերություն';

  @override
  String get labelRoa => 'Ակտիվների եկամտաբերություն';

  @override
  String get labelDebtToEquity => 'Պարտք / սեփական կապիտալ';

  @override
  String get labelCurrentRatio => 'Ընթացիկ իրացվելիության գործակից';

  @override
  String get labelRevenueGrowth => 'Հասույթի աճ (տարեկան)';

  @override
  String get labelEpsGrowth => 'EPS-ի աճ (տարեկան)';

  @override
  String get labelDividendYield => 'Շահաբաժնային եկամտաբերություն';

  @override
  String get labelDividendPerShare => 'Շահաբաժին մեկ բաժնետոմսի դիմաց';

  @override
  String get labelPayoutRatio => 'Շահաբաժինների վճարման գործակից';

  @override
  String get labelConsensus => 'Կոնսենսուս';

  @override
  String get ratingStrongBuy => 'Ակտիվորեն գնել';

  @override
  String get ratingBuy => 'Գնել';

  @override
  String get ratingHold => 'Պահել';

  @override
  String get ratingSell => 'Վաճառել';

  @override
  String get ratingStrongSell => 'Ակտիվորեն վաճառել';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count վերլուծաբան',
      one: '$count վերլուծաբան',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Ժամանակահատված՝ $period';
  }

  @override
  String get noNews => 'Վերջին նորություններ չկան։';

  @override
  String get openArticle => 'Բացել հոդվածը';

  @override
  String get openLinkFailed => 'Չհաջողվեց բացել հղումը։';

  @override
  String get recognitionSummary => 'Ամփոփում';

  @override
  String get recognitionEvidence => 'Ինչու ենք այդպես կարծում';

  @override
  String get recognitionRawText => 'Պատկերից կարդացված տեքստ';

  @override
  String get errMissingAnthropicKey =>
      'Պատկերների ճանաչումը կարգավորված չէ (ANTHROPIC_API_KEY չկա)։ Մուտքագրեք թիքերը ձեռքով։';

  @override
  String get errRecognitionUnreachable =>
      'Չհաջողվեց կապ հաստատել ճանաչման ծառայության հետ։ Ստուգեք ինտերնետ կապը։';

  @override
  String errRecognitionHttp(String status) {
    return 'Ճանաչման ծառայությունը սխալ վերադարձրեց (HTTP $status)։';
  }

  @override
  String get errRecognitionRefused =>
      'Ճանաչման ծառայությունը չկարողացավ մշակել այս պատկերը։';

  @override
  String get errRecognitionTruncated =>
      'Ճանաչման պատասխանը կտրվեց։ Խնդրում ենք նորից փորձել։';

  @override
  String get errRecognitionBadResponse =>
      'Անսպասելի պատասխան ճանաչման ծառայությունից։';

  @override
  String get errRecognitionEmpty =>
      'Ճանաչման ծառայությունը դատարկ պատասխան վերադարձրեց։';

  @override
  String get errMissingFinnhubKey =>
      'Շուկայական տվյալները կարգավորված չեն (FINNHUB_API_KEY չկա)։';

  @override
  String get errMarketUnreachable =>
      'Չհաջողվեց կապ հաստատել շուկայական տվյալների ծառայության հետ։ Ստուգեք ինտերնետ կապը։';

  @override
  String get errMarketRateLimited =>
      'Շուկայական տվյալների ծառայությանը չափազանց շատ հարցումներ են ուղարկվել։ Խնդրում ենք սպասել մեկ րոպե։';

  @override
  String errMarketHttp(String status) {
    return 'Շուկայական տվյալների ծառայությունը սխալ վերադարձրեց (HTTP $status)։';
  }

  @override
  String get errMarketBadResponse =>
      'Անսպասելի պատասխան շուկայական տվյալների ծառայությունից։';

  @override
  String errNoQuote(String symbol) {
    return '$symbol-ի գնային տվյալներ չեն գտնվել։';
  }

  @override
  String errNoProfile(String symbol) {
    return '$symbol-ի համար ընկերության պրոֆիլ չի գտնվել։';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Դեմո ռեժիմում հասանելի են միայն՝ $symbols։ Իրական ժամանակի տվյալների համար ավելացրեք FINNHUB_API_KEY։';
  }

  @override
  String errUnknown(String detail) {
    return 'Ինչ-որ սխալ տեղի ունեցավ՝ $detail';
  }

  @override
  String get newSearch => 'Նոր որոնում';

  @override
  String get recentSearches => 'Վերջինները';

  @override
  String get noRecentSearches => 'Վերջին որոնումներ դեռ չկան։';

  @override
  String get clearRecent => 'Մաքրել վերջինները';

  @override
  String get greeting => 'Ո՞ր բաժնետոմսը դիտենք';

  @override
  String get searchHint => 'Թիքեր կամ ընկերության անվանում';

  @override
  String get attachImage => 'Կցել պատկեր';

  @override
  String get searchResultsTitle => 'Որոնման արդյունքներ';

  @override
  String errNoResults(String query) {
    return '«$query» հարցմամբ բաժնետոմսեր չեն գտնվել։';
  }

  @override
  String get quickBarHint => 'Մուտքագրեք թիքեր կամ ընկերության անվանում…';

  @override
  String get openFullWindow => 'Բացել պատուհանը';

  @override
  String hotkeyHint(String shortcut) {
    return 'Սեղմեք $shortcut ցանկացած տեղից՝ WhatStock-ը բացելու համար։';
  }

  @override
  String get trayOpen => 'Բացել WhatStock-ը';

  @override
  String get trayQuickSearch => 'Արագ որոնում';

  @override
  String get trayQuit => 'Դուրս գալ';

  @override
  String get appearance => 'Արտաքին տեսք';

  @override
  String get themeSystem => 'Համակարգային';

  @override
  String get themeDark => 'Մուգ';

  @override
  String get themeLight => 'Բաց';

  @override
  String get back => 'Հետ';

  @override
  String get aiSectionTitle => 'AI վերլուծություն';

  @override
  String get aiIntro =>
      'AI-ի կողմից գրված մանրամասն ակնարկ՝ վերջին նորությունների ամփոփում, բիզնեսը, ուժեղ կողմերը, ռիսկերն ու թաքնված գործոնները, գնահատումը, գնի հեռանկարը՝ սցենարներով հոգեբանական, սոցիոլոգիական, տեխնիկական և մակրոտնտեսական տեսանկյուններից, ինչպես նաև այն, ինչին պետք է հետևել։';

  @override
  String get aiGenerate => 'Ստեղծել վերլուծություն';

  @override
  String get aiRegenerate => 'Ստեղծել նորից';

  @override
  String get aiGenerating =>
      'Վերլուծությունը պատրաստվում է… սա կարող է տևել մեկ-երկու րոպե։';

  @override
  String get aiSources => 'Աղբյուրներ';

  @override
  String aiGeneratedAt(String time) {
    return 'Ստեղծվել է՝ $time';
  }

  @override
  String get aiDisclaimer =>
      'AI-ի կողմից ստեղծված վերլուծություն՝ հիմնված հանրային տվյալների և վերջին նորությունների վրա։ Այն կարող է սխալներ պարունակել կամ հնացած լինել և ներդրումային խորհուրդ չէ։';

  @override
  String get errAiNotConfigured =>
      'AI վերլուծությունը կարգավորված չէ (ANTHROPIC_API_KEY չկա)։';

  @override
  String get errAiUnreachable =>
      'Չհաջողվեց կապ հաստատել AI ծառայության հետ։ Ստուգեք ինտերնետ կապը։';

  @override
  String errAiHttp(String status) {
    return 'AI ծառայությունը սխալ վերադարձրեց (HTTP $status)։';
  }

  @override
  String get errAiRefused =>
      'AI ծառայությունը հրաժարվեց վերլուծել այս բաժնետոմսը։';

  @override
  String get errAiBadResponse => 'Անսպասելի պատասխան AI ծառայությունից։';

  @override
  String get sectionChart => 'Գնի գրաֆիկ';

  @override
  String get rangeOneWeek => '1Շ';

  @override
  String get rangeOneMonth => '1Ա';

  @override
  String get rangeThreeMonths => '3Ա';

  @override
  String get rangeOneYear => '1Տ';

  @override
  String get rangeFiveYears => '5Տ';

  @override
  String get chartUnavailable =>
      'Գնի պատմությունը հասանելի չէ տվյալների ընթացիկ աղբյուրից։';

  @override
  String get sectionStatements => 'Ֆինանսական հաշվետվություններ (տարեկան)';

  @override
  String get labelFiscalYear => 'Ֆինանսական տարի';

  @override
  String get labelRevenue => 'Հասույթ';

  @override
  String get labelNetIncome => 'Զուտ շահույթ';

  @override
  String get labelTotalAssets => 'Ընդհանուր ակտիվներ';

  @override
  String get labelTotalLiabilities => 'Ընդհանուր պարտավորություններ';

  @override
  String get labelEquity => 'Սեփական կապիտալ';

  @override
  String get labelOperatingCashFlow => 'Գործառնական դրամական հոսք';

  @override
  String get statementsUnavailable =>
      'Այս բաժնետոմսի համար հրապարակված ֆինանսական հաշվետվություններ հասանելի չեն։';

  @override
  String get launchAtLogin => 'Գործարկել համակարգ մուտք գործելիս';

  @override
  String get hotkeyLabel => 'Գլոբալ ստեղնային դյուրանցում';

  @override
  String get hotkeyRecordHint =>
      'Սեղմեք այստեղ, ապա սեղմեք ստեղների նոր համակցությունը';

  @override
  String get hotkeyReset => 'Վերականգնել կանխադրվածը';

  @override
  String get pasteImage => 'Տեղադրել պատկեր սեղմատախտակից';

  @override
  String get errClipboardNoImage => 'Սեղմատախտակում պատկեր չկա։';

  @override
  String get favorites => 'Ընտրյալներ';

  @override
  String get addToFavorites => 'Ավելացնել ընտրյալներում';

  @override
  String get removeFromFavorites => 'Հեռացնել ընտրյալներից';

  @override
  String get noFavorites =>
      'Ընտրյալներ դեռ չկան։ Հպեք բաժնետոմսի աստղիկին՝ այն ավելացնելու համար։';

  @override
  String get displayCurrency => 'Ցուցադրման արժույթ';

  @override
  String get displayCurrencyNone => 'Միայն բաժնետոմսի սեփական արժույթը';

  @override
  String labelConverted(String currency) {
    return '≈ $currency-ով';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Փոխարժեք՝ 1 $from = $rate $to (ԵԿԲ, $date)';
  }

  @override
  String get updates => 'Թարմացումներ';

  @override
  String currentVersion(String version) {
    return 'Տարբերակ $version';
  }

  @override
  String get autoUpdate => 'Ավտոմատ տեղադրել թարմացումները';

  @override
  String get checkForUpdates => 'Ստուգել թարմացումները';

  @override
  String get updateChecking => 'Թարմացումները ստուգվում են…';

  @override
  String get updateUpToDate => 'Դուք օգտագործում եք վերջին տարբերակը։';

  @override
  String updateAvailable(String version) {
    return 'Հասանելի է $version տարբերակը։';
  }

  @override
  String get updateDownloading => 'Թարմացումը ներբեռնվում է ֆոնային ռեժիմում…';

  @override
  String get updateDownloaded =>
      'Թարմացումը պատրաստ է։ Վերագործարկեք՝ այն տեղադրելու համար։';

  @override
  String get updateNow => 'Թարմացնել';

  @override
  String get restartNow => 'Վերագործարկել';

  @override
  String get updatesViaStore =>
      'Թարմացումները ստացվում են ավտոմատ կերպով՝ հավելվածների խանութի միջոցով։';

  @override
  String get updateCheckFailed => 'Չհաջողվեց ստուգել թարմացումները։';

  @override
  String get subscription => 'Բաժանորդագրություն';

  @override
  String get planTrial => 'Փորձնական';

  @override
  String get planNormal => 'Սովորական';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Ակտիվ պլան չկա';

  @override
  String planAnalysesPerMonth(int count) {
    return 'Ամսական $count վերլուծություն';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$days-օրյա անվճար փորձաշրջան՝ $count վերլուծությամբ';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Փորձաշրջանից մնացել է $days օր',
      one: 'Փորձաշրջանից մնացել է $days օր',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Ձեր անվճար փորձաշրջանն ավարտվել է։ Ընտրեք պլան՝ վերլուծությունները շարունակելու համար։';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Այս ժամանակահատվածում մնացել է $remaining վերլուծություն $total-ից';
  }

  @override
  String extraCredits(int count) {
    return '$count լրացուցիչ վերլուծություն';
  }

  @override
  String renewsOn(String date) {
    return 'Կերկարաձգվի $date';
  }

  @override
  String get choosePlan => 'Ընտրեք պլան';

  @override
  String get currentPlan => 'Ընթացիկ պլան';

  @override
  String get subscribe => 'Բաժանորդագրվել';

  @override
  String get perMonth => '/ ամիս';

  @override
  String get extraPacksTitle =>
      'Ավելի՞ն է պետք։ Գնեք լրացուցիչ վերլուծություններ';

  @override
  String get extraPacksHint =>
      'Լրացուցիչ վերլուծություններն անժամկետ են և օգտագործվում են ամսական սահմանաչափը սպառվելուց հետո։';

  @override
  String get buy => 'Գնել';

  @override
  String get restorePurchases => 'Վերականգնել գնումները';

  @override
  String get manageSubscription => 'Կառավարել բաժանորդագրությունը';

  @override
  String get purchaseSuccess => 'Շնորհակալություն։ Ձեր գնումն ակտիվ է։';

  @override
  String get purchasePending => 'Գնումը մշակվում է…';

  @override
  String get purchaseFailed => 'Չհաջողվեց ավարտել գնումը։';

  @override
  String get purchaseCanceled => 'Գնումը չեղարկվեց։';

  @override
  String get billingUnavailable =>
      'Այս հարթակում գնումները դեռ հասանելի չեն։ Բաժանորդագրվեք հեռախոսից կամ Mac-ից, և ձեր պլանը կաշխատի բոլոր սարքերում։';

  @override
  String get errQuotaExceeded =>
      'Այս ժամանակահատվածի համար վերլուծություններ չեն մնացել։ Անցեք ավելի բարձր պլանի կամ գնեք լրացուցիչ վերլուծություններ։';

  @override
  String get errTrialExpired =>
      'Ձեր անվճար փորձաշրջանն ավարտվել է։ Ընտրեք պլան՝ շարունակելու համար։';

  @override
  String get errNoPlan => 'AI վերլուծության համար անհրաժեշտ է ակտիվ պլան։';

  @override
  String get viewPlans => 'Դիտել պլանները';

  @override
  String get usageTitle => 'Օգտագործում';

  @override
  String get demoPurchaseNote =>
      'Դեմո վճարումներ՝ այս հարթակում գնումները նմանակվում են։';

  @override
  String get mostPopular => 'Ամենահայտնի';

  @override
  String get bestValue => 'Ամենաշահավետ';

  @override
  String get planFeaturesCommon =>
      'Լուսանկարների ճանաչումը, իրական ժամանակի տվյալները, գրաֆիկները, ընտրյալները և բոլոր 120 լեզուները ներառված են յուրաքանչյուր պլանում։ Սահմանաչափը վերաբերում է AI վերլուծություններին։';

  @override
  String get searchLanguages => 'Որոնել լեզուներ…';

  @override
  String get noLanguageMatch => 'Համապատասխան լեզու չկա։';

  @override
  String get aiSettings => 'AI վերլուծություն';

  @override
  String get aiLength => 'Երկարություն';

  @override
  String get aiDepthBrief => 'Համառոտ';

  @override
  String get aiDepthStandard => 'Ստանդարտ';

  @override
  String get aiDepthDeep => 'Խորքային';

  @override
  String get aiDepthBriefDesc => 'Գլխավորը՝ արագ։';

  @override
  String get aiDepthStandardDesc => 'Ամբողջական զեկույց՝ բոլոր բաժիններով։';

  @override
  String get aiDepthDeepDesc =>
      'Ավելի շատ վեբ որոնումներ, համեմատություն մրցակիցների հետ և ավելի խորը մանրամասներ։';

  @override
  String aiDepthWords(String min, String max) {
    return 'Մոտ $min–$max բառ';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'օգտագործում է $count վերլուծություն',
      one: 'օգտագործում է $count վերլուծություն',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Ընթերցողի մակարդակ';

  @override
  String get aiReaderBeginner => 'Սկսնակ';

  @override
  String get aiReaderExperienced => 'Փորձառու';

  @override
  String get aiReaderBeginnerDesc =>
      'Պարզ լեզու՝ յուրաքանչյուր մասնագիտական տերմինի բացատրությամբ։';

  @override
  String get aiReaderExperiencedDesc =>
      'Ավելի խիտ տեքստ՝ ստանդարտ ֆինանսական տերմինաբանությամբ։';

  @override
  String get aiCounterArgument => 'Ամենաուժեղ հակափաստարկը';

  @override
  String get aiCounterArgumentDesc =>
      'Ամփոփումը միշտ ավարտվում է սեփական եզրակացության դեմ ամենաուժեղ փաստարկով։';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Ձեր պլանով՝ մինչև $count վեբ որոնում յուրաքանչյուր վերլուծության համար',
      one:
          'Ձեր պլանով՝ մինչև $count վեբ որոնում յուրաքանչյուր վերլուծության համար',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Ստանդարտ երկարություն ըստ պլանի՝ Սովորական $normal, Pro $pro, Max $max, Ultra $ultra։ «Համառոտը»՝ 2-ով պակաս, «Խորքայինը»՝ 2-ով ավելի։';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'մինչև $count վեբ որոնում',
      one: 'մինչև $count վեբ որոնում',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count վեբ որոնում յուրաքանչյուր վերլուծության համար',
      one: '$count վեբ որոնում յուրաքանչյուր վերլուծության համար',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Այս երկարության համար անհրաժեշտ է $needed վերլուծություն, բայց մնացել է միայն $left։ Ընտրեք ավելի կարճ երկարություն Կարգավորումներում կամ ձեռք բերեք լրացուցիչ վերլուծություններ։';
  }

  @override
  String get outlookMarketMood => 'Շուկայի տրամադրություն';

  @override
  String get moodVeryPessimistic => 'Շատ հոռետեսական';

  @override
  String get moodPessimistic => 'Հոռետեսական';

  @override
  String get moodNeutral => 'Չեզոք';

  @override
  String get moodOptimistic => 'Լավատեսական';

  @override
  String get moodVeryOptimistic => 'Շատ լավատեսական';

  @override
  String get scenarioBull => 'Լավատեսական սցենար';

  @override
  String get scenarioBase => 'Բազային սցենար';

  @override
  String get scenarioBear => 'Հոռետեսական սցենար';

  @override
  String outlookCurrentPrice(String price) {
    return 'Ընթացիկ գին՝ $price';
  }

  @override
  String get outlookKeyLevels => 'Առանցքային մակարդակներ';

  @override
  String get keyLevelSupport => 'Աջակցություն';

  @override
  String get keyLevelResistance => 'Դիմադրություն';

  @override
  String get keyLevelAnchor => 'Խարիսխ';

  @override
  String get upcomingEvents => 'Առաջիկա իրադարձություններ';

  @override
  String get outlookChartNote =>
      'Մոտավոր միջակայքեր։ Հավանականությունները կոպիտ գնահատականներ են, ոչ թե կանխատեսումներ։';

  @override
  String get accountTitle => 'Հաշիվ';

  @override
  String get signIn => 'Մուտք գործել';

  @override
  String get signOut => 'Դուրս գալ';

  @override
  String get notSignedIn => 'Մուտք գործված չէ';

  @override
  String get accountBenefit =>
      'Մուտք գործեք, որպեսզի ձեր բաժանորդագրությունն աշխատի ձեր բոլոր սարքերում։';

  @override
  String get accountSyncedNote =>
      'Ձեր բաժանորդագրությունը և մնացած վերլուծությունները նույնն են բոլոր սարքերում։';

  @override
  String get signInTitle => 'Մուտք WhatStock';

  @override
  String get emailLabel => 'Էլ. փոստի հասցե';

  @override
  String get continueWithEmail => 'Շարունակել էլ. փոստով';

  @override
  String codeSentTo(String email) {
    return 'Մենք 6-նիշանոց կոդ ենք ուղարկել $email հասցեին։ Այն վավեր է 10 րոպե։';
  }

  @override
  String get codeLabel => 'Մուտքի կոդ';

  @override
  String get resendCode => 'Ուղարկել նոր կոդ';

  @override
  String get useDifferentEmail => 'Օգտագործել այլ էլ. փոստ';

  @override
  String get errInvalidCode => 'Կոդը սխալ է կամ ժամկետանց։';

  @override
  String get errInvalidEmail => 'Մուտքագրեք վավեր էլ. փոստի հասցե։';

  @override
  String get errSignInFailed =>
      'Մուտքը չհաջողվեց։ Ստուգեք կապը և նորից փորձեք։';

  @override
  String get checkoutWaiting =>
      'Ավարտեք վճարումը դիտարկիչում։ Հավելվածն ինքնաշխատ կթարմացվի, երբ վճարումն ավարտվի։';

  @override
  String get paymentViaStripe =>
      'Անվտանգ վճարում դիտարկիչում Stripe-ի միջոցով։ Կարող եք չեղարկել ցանկացած ժամանակ։';

  @override
  String get paymentViaStore =>
      'Վճարումը կատարվում է ձեր App Store կամ Google Play հաշվի միջոցով։ Կարող եք չեղարկել ցանկացած ժամանակ խանութի կարգավորումներում։';

  @override
  String get keySpace => 'Բացատ';

  @override
  String get doubleOptionTitle => 'Option-ի կրկնակի սեղմում';

  @override
  String get doubleOptionSubtitle =>
      'Option ստեղնի արագ կրկնակի սեղմումը նույնպես բացում է WhatStock-ը։';

  @override
  String get doubleOptionPermission =>
      'Որպեսզի սա աշխատի նաև այլ հավելվածներում, թույլատրեք WhatStock-ը «Համակարգի կարգավորումներ» → «Գաղտնիություն և անվտանգություն» → «Ներածման մոնիտորինգ» բաժնում, ապա վերաբացեք հավելվածը։';

  @override
  String get openSystemSettings => 'Բացել համակարգի կարգավորումները';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Սեղմեք $shortcut կամ կրկնակի սեղմեք Option ցանկացած տեղից՝ WhatStock-ը բացելու համար։';
  }

  @override
  String get scenarioMostLikely => 'Ամենահավանական';

  @override
  String get longTermToday => 'Այսօր';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years տարի',
      one: '$years տարի',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range տարեկան';
  }

  @override
  String longTermLikely(String price) {
    return 'ամենայն հավանականությամբ՝ $price';
  }

  @override
  String get confidenceLow => 'Ցածր վստահություն';

  @override
  String get confidenceMedium => 'Միջին վստահություն';

  @override
  String get confidenceHigh => 'Բարձր վստահություն';

  @override
  String get longTermNote =>
      'Երկարաժամկետ միջակայքերը հիմնված են նշված ենթադրությունների վրա և ժամանակի ընթացքում լայնանում են։ Գները չեն ներառում շահաբաժինները։ Սրանք կոպիտ գնահատականներ են, ոչ թե կանխատեսումներ։';

  @override
  String get portfolio => 'Պորտֆել';

  @override
  String get portfolioEmpty =>
      'Այստեղ դեռ ոչինչ չկա։ Բացեք բաժնետոմսը և հպեք «Ավելացնել պորտֆելում»՝ ձեր ակտիվներին հետևելու համար։';

  @override
  String get portfolioLocalNote =>
      'Պահվում է միայն այս սարքում։ Ընդհանուր գումարները փոխարկվում են ԵԿԲ-ի հղումային փոխարժեքներով, իսկ գները կարող են ուշանալ։';

  @override
  String get addToPortfolio => 'Ավելացնել պորտֆելում';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Ավելացնել $symbol';
  }

  @override
  String get portfolioQuantity => 'Բաժնետոմսերի քանակ';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Մեկ բաժնետոմսի գին ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Գնման ամսաթիվ';

  @override
  String get portfolioAdd => 'Ավելացնել';

  @override
  String get portfolioInvalidNumber => 'Մուտքագրեք զրոյից մեծ թիվ։';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol-ն ավելացվեց ձեր պորտֆելում։';
  }

  @override
  String get portfolioTotalValue => 'Ընդհանուր արժեք';

  @override
  String get portfolioToday => 'Այսօր';

  @override
  String get portfolioGainLoss => 'Շահույթ/վնաս';

  @override
  String get portfolioInvested => 'Ներդրված';

  @override
  String get portfolioAllocation => 'Բաշխում';

  @override
  String get portfolioPositions => 'Դիրքեր';

  @override
  String portfolioAvgCost(String price) {
    return 'միջ. գին՝ $price';
  }

  @override
  String get portfolioYourPosition => 'Ձեր դիրքը';

  @override
  String get portfolioPurchases => 'Գնումներ';

  @override
  String get portfolioRemove => 'Հեռացնել';

  @override
  String get portfolioExcluded =>
      'Առանց գնի կամ փոխարժեքի դիրքերը չեն ներառվում ընդհանուր գումարներում։';

  @override
  String get priceAlerts => 'Գնային ծանուցումներ';

  @override
  String get setPriceAlert => 'Սահմանել գնային ծանուցում';

  @override
  String alertDialogTitle(String symbol) {
    return 'Գնային ծանուցում · $symbol';
  }

  @override
  String get alertKindAbove => 'Բարձրանա շեմից վեր';

  @override
  String get alertKindBelow => 'Իջնի շեմից ցածր';

  @override
  String get alertKindMove => 'Մեկ օրում կտրուկ փոխվի';

  @override
  String alertTargetPrice(String currency) {
    return 'Գին ($currency)';
  }

  @override
  String get alertMovePercent => 'Օրական փոփոխություն (%)';

  @override
  String get alertAlreadyMet => 'Գինն արդեն անցել է այս մակարդակը։';

  @override
  String get alertSave => 'Սահմանել ծանուցում';

  @override
  String alertCreated(String symbol) {
    return '$symbol-ի համար ծանուցում է սահմանվել։';
  }

  @override
  String get alertsEmpty =>
      'Գնային ծանուցումներ դեռ չկան։ Բացեք բաժնետոմսը և հպեք զանգակին՝ ծանուցում սահմանելու համար։';

  @override
  String get alertsNote =>
      'Ծանուցումները ստուգվում են 5 րոպեն մեկ, քանի դեռ WhatStock-ն աշխատում է։ Համակարգչում այն շարունակում է աշխատել ընտրացանկի տողում կամ ծանուցումների գոտում, իսկ հեռախոսում ծանուցումները առայժմ ստացվում են միայն այն ժամանակ, երբ հավելվածը բաց է։';

  @override
  String alertDescAbove(String price) {
    return '$price-ից բարձր';
  }

  @override
  String alertDescBelow(String price) {
    return '$price-ից ցածր';
  }

  @override
  String alertDescMove(String percent) {
    return 'Օրական փոփոխություն ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Գործարկվել է $date՝ $price գնով';
  }

  @override
  String get alertRearm => 'Կրկին միացնել';

  @override
  String get alertDelete => 'Ջնջել';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol-ը բարձրացավ $price-ից վեր';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol-ն իջավ $price-ից ցածր';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol-ն այսօր փոխվեց $percent-ով';
  }

  @override
  String alertHitBody(String price) {
    return 'Ընթացիկ գին՝ $price';
  }

  @override
  String get alertOpen => 'Բացել';

  @override
  String get keepInTrayTitle => 'Աշխատել պատուհանը փակելուց հետո';

  @override
  String get keepInTraySubtitle =>
      'WhatStock-ը մնում է ընտրացանկի տողում կամ ծանուցումների գոտում, ուստի ստեղնային դյուրանցումը և գնային ծանուցումները շարունակում են աշխատել։';

  @override
  String get termsOfUse => 'Օգտագործման պայմաններ';

  @override
  String get privacyPolicy => 'Գաղտնիության քաղաքականություն';

  @override
  String get subscriptionLegal =>
      'Բաժանորդագրությունն ավտոմատ երկարաձգվում է ամեն ամիս, մինչև այն չեղարկեք։ Բաժանորդագրվելով՝ դուք ընդունում եք Օգտագործման պայմանները և Գաղտնիության քաղաքականությունը։';

  @override
  String get deleteAccount => 'Ջնջել հաշիվը';

  @override
  String get deleteAccountTitle => 'Ջնջե՞լ ձեր հաշիվը';

  @override
  String get deleteAccountBody =>
      'Ձեր հաշիվը և մեր սերվերում պահվող ամեն ինչ (էլ. փոստ, սահմանաչափ, օգտագործում) ընդմիշտ կջնջվեն, իսկ չօգտագործված վերլուծությունները կկորչեն։ Դիտարկիչում վճարված բաժանորդագրությունը չեղարկվում է անմիջապես, իսկ App Store-ի կամ Google Play-ի բաժանորդագրությունը պետք է չեղարկել խանութի կարգավորումներում։';

  @override
  String get deleteLocalData =>
      'Ջնջել նաև այս սարքի տվյալները (պորտֆել, ծանուցումներ, ընտրյալներ, պատմություն, պահված վերլուծություններ)';

  @override
  String get deleteAccountConfirm => 'Ջնջել ընդմիշտ';

  @override
  String get accountDeleted => 'Ձեր հաշիվը ջնջվել է։';

  @override
  String get errDeleteAccount =>
      'Չհաջողվեց ջնջել հաշիվը։ Ստուգեք կապը և նորից փորձեք։';

  @override
  String get aiTrialBriefNote =>
      'Փորձնական վերլուծությունները համառոտ են և կատարվում են ավելի արագ AI մոդելով։ Պլանով դուք ստանում եք մեր ամենահզոր AI-ն, ավելի շատ վեբ որոնումներ և Ստանդարտ ու Խորքային երկարությունները։';

  @override
  String get billingMonthly => 'Ամսական';

  @override
  String get billingYearly => 'Տարեկան';

  @override
  String get yearlyDiscount => '2 ամիս անվճար';

  @override
  String get perYear => '/ տարի';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price ամսական';
  }

  @override
  String get subscriptionLegalYearly =>
      'Տարեկան բաժանորդագրությունն ավտոմատ երկարաձգվում է ամեն տարի, մինչև այն չեղարկեք։ Բաժանորդագրվելով՝ դուք ընդունում եք Օգտագործման պայմանները և Գաղտնիության քաղաքականությունը։';

  @override
  String get myAnalyses => 'Իմ վերլուծությունները';

  @override
  String get navAlerts => 'Ծանուցումներ';

  @override
  String get inviteTitle => 'Փակ նախադիտում';

  @override
  String get inviteBody =>
      'WhatStock հավելվածը առայժմ հասանելի է միայն հրավերով։ Մուտքագրեք Ձեր ստացած հրավերի կոդը։';

  @override
  String get inviteCodeLabel => 'Հրավերի կոդ';

  @override
  String get inviteContinue => 'Շարունակել';

  @override
  String get inviteInvalid => 'Այս հրավերի կոդը վավեր չէ։';

  @override
  String get inviteExpired =>
      'Այս հրավերի ժամկետն անցել է։ Նոր կոդ խնդրեք Ձեզ հրավիրողից։';

  @override
  String get inviteDeviceLimit =>
      'Այս հրավերի կոդն արդեն օգտագործվում է թույլատրելի առավելագույն թվով սարքերում։';

  @override
  String get previewConfidential => 'Գաղտնի նախադիտում';

  @override
  String get errPreviewDailyLimit =>
      'Այս նախադիտման վերլուծությունների այսօրվա սահմանաչափը սպառվել է։ Փորձեք կրկին վաղը։';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ժամ առաջ',
      one: '$count ժամ առաջ',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count օր առաջ',
      one: '$count օր առաջ',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Թարմացնե՞լ այս վերլուծությունը';

  @override
  String staleBody(String age) {
    return 'Այս վերլուծությունը ստեղծվել է $age։ Այդ ժամանակից ի վեր գները, նորությունները և արդյունքները կարող էին փոխվել։';
  }

  @override
  String get staleKeep => 'Ցույց տալ նախորդը';

  @override
  String get staleRefresh => 'Ստեղծել նորը';

  @override
  String seeAll(int count) {
    return 'Տեսնել բոլորը ($count)';
  }

  @override
  String get searchAnalyses => 'Որոնել ձեր վերլուծություններում';

  @override
  String get deleteAnalysis => 'Ջնջել';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol-ի վերլուծությունը ջնջվեց';
  }

  @override
  String get keyLevelAlertHint =>
      'Հպեք մակարդակին՝ ծանուցում ստանալու համար, երբ գինը հասնի դրան։';

  @override
  String get shareAnalysisTitle => 'Կիսվել վերլուծությամբ';

  @override
  String get shareAsImage => 'Կիսվել որպես պատկեր';

  @override
  String get shareAsText => 'Կիսվել որպես տեքստ';

  @override
  String get shareCardFooter => 'Ստեղծված է WhatStock-ով';

  @override
  String get shareCardDisclaimer =>
      'AI վերլուծություն · ներդրումային խորհուրդ չէ';

  @override
  String get referralTitle => 'Հրավիրեք ընկերներին';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count լրացուցիչ վերլուծություն',
      one: '1 լրացուցիչ վերլուծություն',
    );
    return 'Կիսվեք ձեր կոդով։ Ձեր ընկերն անմիջապես կստանա $_temp0, իսկ դուք՝ նույնքան նրա առաջին վերլուծությունից հետո։';
  }

  @override
  String get referralYourCode => 'Ձեր կոդը';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Հրավիրված՝ $invited · Պարգևատրված՝ $rewarded';
  }

  @override
  String get referralHaveCode => 'Ընկերոջից կո՞դ ունեք';

  @override
  String get referralRedeem => 'Ակտիվացնել';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ավելացվեց $count լրացուցիչ վերլուծություն։ Բարի գալուստ։',
      one: 'Ավելացվեց 1 լրացուցիչ վերլուծություն։ Բարի գալուստ։',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Այս կոդը գոյություն չունի։ Ստուգեք այն և նորից փորձեք։';

  @override
  String get referralErrOwn => 'Դուք չեք կարող ակտիվացնել ձեր սեփական կոդը։';

  @override
  String get referralErrAlready => 'Դուք արդեն ակտիվացրել եք ընկերոջ կոդը։';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count լրացուցիչ վերլուծություն',
      one: '1 լրացուցիչ վերլուծություն',
    );
    return 'Ես բաժնետոմսերը վերլուծում եմ WhatStock-ով՝ լուսանկարում ես բաժնետոմսը, և AI-ն բացատրում է այն։ Իմ $code կոդով կստանաս $_temp0։';
  }

  @override
  String get referralCopied => 'Կոդը պատճենվեց';

  @override
  String get onboardTitle1 => 'Լուսանկարեք բաժնետոմսը';

  @override
  String get onboardBody1 =>
      'Բավական է բրոքերային հավելվածի էկրանը, թերթը կամ ընկերության լոգոն. WhatStock-ը ճանաչում է բաժնետոմսը և ցույց տալիս դրա գինը, գծապատկերը և հիմնական ցուցանիշները։';

  @override
  String get onboardTitle2 => 'Հասկացեք րոպեների ընթացքում';

  @override
  String get onboardBody2 =>
      'AI վերլուծությունը բացատրում է, թե ինչն է շարժում բաժնետոմսը, որոնք են ռիսկերը, ինչպիսին է գնահատումը, և ներկայացնում է երեք սցենար, թե ուր կարող է գնալ գինը՝ աղբյուրներով և ձեր լեզվով։';

  @override
  String get onboardTitle3 => 'Միշտ տեղեկացված եղեք';

  @override
  String get onboardBody3 =>
      'Ընտրյալները, ձեր պորտֆելը և գնային ծանուցումները ձեզ միշտ տեղեկացված կպահեն։ Ձեր վերլուծությունները մնում են ձեր սարքում՝ պատրաստ նորից բացվելու։';

  @override
  String get onboardNext => 'Հաջորդը';

  @override
  String get onboardStart => 'Սկսել';

  @override
  String get onboardSkip => 'Բաց թողնել';

  @override
  String changesTitle(String date) {
    return 'Նախորդ վերլուծությունից ի վեր ($date)';
  }

  @override
  String get changesPrice => 'Գին';

  @override
  String get changesNoMajor => 'Հեռանկարը էականորեն չի փոխվել։';

  @override
  String get changesPreviousSummary => 'Նախորդ ամփոփում';

  @override
  String get telemetryTitle => 'Օգնեք բարելավել WhatStock-ը';

  @override
  String get telemetryBody =>
      'Կիսվեք օգտագործման անանուն վիճակագրությամբ և խափանումների մասին հաշվետվություններով, որոնք ցույց են տալիս, թե որ գործառույթներն են օգտագործվում և ինչն է խափանվել։ Ձեր բաժնետոմսերը, վերլուծությունները կամ անձնական տվյալները երբեք չեն ուղարկվում։ Դա կարող եք փոխել ցանկացած պահի Կարգավորումներում։';

  @override
  String get telemetryAllow => 'Թույլատրել';

  @override
  String get telemetryDecline => 'Ոչ, շնորհակալություն';

  @override
  String get telemetrySetting =>
      'Անանուն վիճակագրություն և խափանումների հաշվետվություններ';

  @override
  String get telemetrySettingHint =>
      'Գործառույթների օգտագործման հաճախականությունը և սխալների հաշվետվությունները՝ առանց անձնական տվյալների կամ ձեր որոնումների ու վերլուծությունների բովանդակության։';

  @override
  String get askButton => 'Հարցրեք այս վերլուծության մասին';

  @override
  String askTitle(String symbol) {
    return 'Հարցեր՝ $symbol';
  }

  @override
  String get askIntro =>
      'Հարցրեք ցանկացած բան վերլուծության մասին՝ ինչ է նշանակում որևէ ռիսկ, ինչը կարող է փոխել հեռանկարը, ինչպես է հաշվարկվել որևէ թիվ։ Պատասխանները հիմնված են այս վերլուծության վրա և ներդրումային խորհուրդ չեն։';

  @override
  String get askHint => 'Գրեք ձեր հարցը…';

  @override
  String get askSend => 'Ուղարկել';

  @override
  String get askThinking => 'Մտածում եմ…';

  @override
  String get askSuggest1 => 'Ո՞րն է ամենամեծ ռիսկը';

  @override
  String get askSuggest2 => 'Ի՞նչը կարող է փոխել հեռանկարը';

  @override
  String get askSuggest3 => 'Բացատրիր պարզ բառերով';

  @override
  String get askMaxReached =>
      'Սա այս վերլուծության վերջին հարցն էր։ Նոր հարցերի համար ստեղծեք նոր վերլուծություն։';

  @override
  String get errAskLimit =>
      'Դուք սպառել եք այսօրվա հարցերի սահմանաչափը։ Փորձեք կրկին վաղը։';

  @override
  String get eventTomorrow => 'Վաղը';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days օր հետո',
      one: '1 օր հետո',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Եռամսյակային արդյունքներ';

  @override
  String get eventBeforeOpen => 'բորսայի բացումից առաջ';

  @override
  String get eventAfterClose => 'բորսայի փակումից հետո';

  @override
  String eventEpsEstimate(String value) {
    return 'Սպասվող EPS՝ $value';
  }

  @override
  String get eventFromAnalysis => 'Ձեր վերլուծությունից';

  @override
  String get eventsHint =>
      'Ձեր ընտրյալների և պորտֆելի բաժնետոմսերի արդյունքների ամսաթվերը առաջիկա 90 օրվա համար, ինչպես նաև ձեր վերլուծությունների նշած ամսաթվով իրադարձությունները։';

  @override
  String get eventsEmpty =>
      'Առաջիկա 90 օրում ամսաթվով իրադարձություններ չկան։ Ավելացրեք ընտրյալներ կամ պորտֆելի բաժնետոմսեր՝ այստեղ դրանց արդյունքների ամսաթվերը տեսնելու համար։';

  @override
  String get compareTitle => 'Համեմատել';

  @override
  String get compareAdd => 'Ավելացնել բաժնետոմս';

  @override
  String get compareRemove => 'Հեռացնել';

  @override
  String get compareTickerHint => 'Թիքեր, օր.՝ MSFT';

  @override
  String get compareHint =>
      'Հիմնական ցուցանիշները կողք կողքի. յուրաքանչյուր տողում լավագույն արժեքն ընդգծված է։ Գումարները ներկայացված են յուրաքանչյուր բաժնետոմսի սեփական արժույթով։';

  @override
  String get compareNoAnalysis => 'Վերլուծություն դեռ չկա';

  @override
  String get portfolioDividends => 'Տարեկան շահաբաժիններ';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent եկամտաբերություն';
  }

  @override
  String get portfolioDividendNote =>
      'Ակնկալվող տարեկան շահաբաժինները հիմնված են վերջին 12 ամսում վճարված շահաբաժինների վրա, իսկ ապագա վճարումները երաշխավորված չեն։';

  @override
  String positionDividend(String amount) {
    return 'Շահաբաժին՝ տարեկան $amount';
  }

  @override
  String get chartAvgCost => 'Ձեր միջ.';

  @override
  String get chartAlertLevel => 'Ծանուցում';

  @override
  String get marketsToday => 'Շուկաներն այսօր';

  @override
  String get notesTitle => 'Իմ նշումները';

  @override
  String get notesHint =>
      'Ինչո՞ւ եք գնել, ինչի՞ն եք հետևում, ի՞նչը կստիպի ձեզ վաճառել։';

  @override
  String get notesInfo =>
      'Պահվում է միայն այս սարքում։ AI վերլուծությունը հաշվի է առնում ձեր նշումները։';

  @override
  String notesSaved(String date) {
    return 'Պահվել է՝ $date';
  }

  @override
  String get peersTitle => 'Նմանատիպ ընկերություններ';

  @override
  String get portfolioExport => 'Արտահանել որպես CSV';

  @override
  String get portfolioImport => 'Ներմուծել CSV-ից';

  @override
  String get portfolioImportHint =>
      'Տեղադրեք մեկ գնում յուրաքանչյուր տողում՝ թիքեր, քանակ, գին, արժույթ, ամսաթիվ (ՏՏՏՏ-ԱԱ-ՕՕ)։ Սյունակները կարող են բաժանվել ստորակետերով, կետ-ստորակետերով կամ ներդիրներով (tab)։ Վերնագրի տողը պարտադիր չէ։';

  @override
  String get portfolioImportButton => 'Ներմուծել';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ավելացվեց $count գնում',
      one: 'Ավելացվեց 1 գնում',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Բաց թողնվեց $count տող',
      one: 'Բաց թողնվեց 1 տող',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Պորտֆելը, ընտրյալները, գնային ծանուցումները և նշումները համաժամացվում են ձեր բոլոր սարքերում։';

  @override
  String syncLast(String time) {
    return 'Վերջին համաժամացումը՝ $time';
  }

  @override
  String get syncNow => 'Համաժամացնել հիմա';

  @override
  String get syncFailed =>
      'Չհաջողվեց համաժամացնել։ Կրկին փորձ կարվի ավտոմատ կերպով։';

  @override
  String get alertEmailTitle => 'Էլ. նամակ, երբ ծանուցումը գործարկվում է';

  @override
  String get alertEmailOn =>
      'Մենք մի քանի րոպեն մեկ ստուգում ենք ձեր ծանուցումները և էլ. նամակ ենք ուղարկում, նույնիսկ երբ հավելվածը փակ է։';

  @override
  String get alertEmailSignIn =>
      'Մուտք գործեք ձեր էլ. փոստով Կարգավորումներում՝ ծանուցումները էլ. փոստով ստանալու համար, նույնիսկ երբ հավելվածը փակ է։';

  @override
  String get portfolioHistory => 'Արժեքի դինամիկա';
}
