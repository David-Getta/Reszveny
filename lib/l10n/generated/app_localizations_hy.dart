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

  @override
  String get portfolioReviewTitle => 'Պորտֆելի AI վերլուծություն';

  @override
  String get portfolioReviewIntro =>
      'AI-ը դիտարկում է ձեր ամբողջ պորտֆելը՝ կենտրոնացում, ոլորտային և արժութային ռիսկեր, ձեր բաժնետոմսերի ընդհանուր ռիսկեր և շահաբաժիններ։ Օգտագործում է 1 վերլուծություն։';

  @override
  String get portfolioReviewButton => 'Վերլուծել իմ պորտֆելը';

  @override
  String get portfolioReviewAgain => 'Վերլուծել նորից';

  @override
  String get portfolioReviewWorking => 'Ձեր պորտֆելը վերլուծվում է…';

  @override
  String get digestTitle => 'Շաբաթական ամփոփում էլ. փոստով';

  @override
  String get digestHint =>
      'Ամեն երկուշաբթի՝ ինչպես են անցյալ շաբաթ շարժվել ձեր ընտրյալներն ու պորտֆելը, և նրանց արդյունքների մոտակա ամսաթվերը։';

  @override
  String get benchmarkTitle => 'Համեմատած S&P 500-ի հետ';

  @override
  String get benchmarkYours => 'Ձեր գնումները';

  @override
  String get benchmarkIndex => 'Նույն գումարները S&P 500-ում';

  @override
  String benchmarkAhead(String points) {
    return 'Ինդեքսից $points տոկոսային կետով լավ';
  }

  @override
  String benchmarkBehind(String points) {
    return 'Ինդեքսից $points տոկոսային կետով հետ';
  }

  @override
  String get benchmarkHint =>
      'Կարծես յուրաքանչյուր գնում նույն օրը ներդրված լիներ S&P 500 ինդեքսային ֆոնդում։ Առանց շահաբաժինների․ անցյալ եկամտաբերությունը չի կանխատեսում ապագան։';

  @override
  String get portfolioSell => 'Վաճառել';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Վաճառել $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Մեկ բաժնետոմսի վաճառքի գին ($currency)';
  }

  @override
  String get portfolioSellDate => 'Վաճառքի ամսաթիվ';

  @override
  String get portfolioSellAll => 'Բոլորը';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Դուք ունեք $quantity';
  }

  @override
  String get portfolioSold => 'Վաճառված';

  @override
  String get portfolioRealized => 'Իրացված';

  @override
  String get portfolioClosed => 'Փակված դիրքեր';

  @override
  String get portfolioClosedNote => 'Բոլոր բաժնետոմսերը վաճառված են';

  @override
  String get portfolioTransactions => 'Գործարքներ';

  @override
  String get portfolioRealizedByYear => 'Իրացված շահույթ ըստ տարիների';

  @override
  String get portfolioRealizedHint =>
      'Վաճառքները նախ համադրվում են ձեր ամենահին գնումների հետ (FIFO) և փոխարկվում այսօրվա փոխարժեքով։ Հարկային հայտարարագրի համար օգտագործեք ձեր բրոքերի քաղվածքը։';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Այս վերլուծությունից հետո հրապարակվել են եռամսյակային նոր արդյունքներ ($symbol, $date)։';
  }

  @override
  String get newResultsBadge => 'Նոր արդյունքներ';

  @override
  String get portfolioImportBrokers =>
      'Ճանաչվում են նաև Revolut-ի, Trading 212-ի և Interactive Brokers-ի արտահանումները՝ վաճառքների հետ միասին. շահաբաժիններն ու մուտքերը բաց են թողնվում։';

  @override
  String get portfolioImportFile => 'Ընտրել ֆայլ';

  @override
  String offlineBanner(String time) {
    return 'Կապ չկա – ցուցադրվում են վերջին պահված տվյալները ($time)։';
  }

  @override
  String get glossMarketCap =>
      'Որքան արժե ամբողջ ընկերությունը բորսայում՝ բաժնետոմսի գին × բաժնետոմսերի քանակ։';

  @override
  String get glossSharesOutstanding =>
      'Քանի բաժնետոմս է թողարկել ընկերությունը։ Եթե քանակն աճում է, յուրաքանչյուր բաժնետոմսին ավելի փոքր մաս է բաժին ընկնում, իսկ հետգնումները այն նվազեցնում են։';

  @override
  String get glossPeTrailing =>
      'Գին ÷ մեկ բաժնետոմսին բաժին ընկնող շահույթը վերջին 12 ամսում՝ ներկայիս շահույթի քանի տարվա համար եք վճարում։ Ցածրն ավելի էժան է, բայց արագ աճող ընկերությունները սովորաբար բարձր P/E ունեն։';

  @override
  String get glossPeForward =>
      'Ինչպես P/E-ն, բայց վերլուծաբանների սպասած հաջորդ 12 ամսվա շահույթով։ Եթե ցածր է ընթացիկ P/E-ից, սպասվում է շահույթի աճ։';

  @override
  String get glossPb =>
      'Գին ÷ մեկ բաժնետոմսի հաշվեկշռային արժեք (ակտիվներ հանած պարտքեր)։ Մոտ 1-ը նշանակում է, որ շուկան ընկերությունը գնահատում է այնքան, որքան այն թղթի վրա ունի։';

  @override
  String get glossPs =>
      'Շուկայական արժեք ÷ տարեկան հասույթ։ Օգտակար է դեռ քիչ կամ առանց շահույթի ընկերությունների համար։ Համեմատեք նույն ոլորտի ներսում։';

  @override
  String get glossEvToFcf =>
      'Ընկերության արժեքը պարտքի հետ միասին (EV) ÷ ներդրումներից հետո տարվա ընթացքում ստեղծած դրամը։ Ցածրը նշանակում է, որ գնի դիմաց ավելի շատ դրամ եք ստանում։';

  @override
  String get glossPeg =>
      'P/E ÷ սպասվող տարեկան շահույթի աճ (%)։ Մոտ 1-ը հաճախ համարվում է արդարացի։ Այն P/E-ն դիտարկում է աճի համատեքստում։';

  @override
  String get glossEps =>
      'Մեկ բաժնետոմսին բաժին ընկնող շահույթը վերջին 12 ամսում։ Տարիների ընթացքում աճող EPS-ը առողջ ընկերության ամենաուժեղ նշաններից մեկն է։';

  @override
  String get glossBeta =>
      'Որքան է բաժնետոմսը շարժվում շուկայի հետ՝ 1 = ինչպես շուկան, 1,5 = մոտ 50%-ով ավելի մեծ տատանումներ, 1-ից ցածր = ավելի հանգիստ։';

  @override
  String get glossRevenueTtm =>
      'Վերջին 12 ամսվա ընդհանուր վաճառքը՝ մինչև որևէ ծախս։';

  @override
  String get glossNetIncomeTtm =>
      'Վերջին 12 ամսում բոլոր ծախսերից, տոկոսներից և հարկերից հետո մնացած շահույթը։';

  @override
  String get glossGrossMargin =>
      'Հասույթի այն մասը, որը մնում է ապրանքների ուղղակի ինքնարժեքից հետո։ Բարձր մարժան հաճախ գնագոյացման ուժ է ցույց տալիս։';

  @override
  String get glossOperatingMargin =>
      'Հասույթի այն մասը, որը մնում է բիզնեսի վարման ծախսերից (աշխատավարձ, վարձ, մարքեթինգ) հետո՝ մինչև տոկոսներն ու հարկերը։';

  @override
  String get glossNetMargin =>
      'Հասույթի այն մասը, որը դառնում է վերջնական շահույթ։ 20%-ը նշանակում է, որ յուրաքանչյուր 100 վաճառքից 20-ը շահույթ է։';

  @override
  String get glossRoe =>
      'Կապիտալի եկամտաբերություն՝ տարեկան շահույթ ÷ սեփականատերերի կապիտալ։ Ցույց է տալիս, թե որքան լավ է ղեկավարությունն օգտագործում բաժնետերերի գումարը։ Մոտ 15%-ից բարձրը ուժեղ է։';

  @override
  String get glossRoa =>
      'Ակտիվների եկամտաբերություն՝ տարեկան շահույթ ÷ ընկերության ամբողջ ունեցվածքը։ Համեմատեք նույն ոլորտի ներսում։';

  @override
  String get glossDebtToEquity =>
      'Պարտք ÷ սեփականատերերի կապիտալ։ Բարձրը նշանակում է ավելի շատ փոխառու միջոցներ՝ ավելի մեծ ռիսկ, երբ տոկոսադրույքներն աճում են կամ բիզնեսը դանդաղում է։';

  @override
  String get glossCurrentRatio =>
      'Կարճաժամկետ ակտիվներ ÷ մեկ տարվա ընթացքում վճարվելիք պարտավորություններ։ 1-ից բարձրը նշանակում է, որ ընկերությունը կարող է ծածկել մոտակա վճարումները։';

  @override
  String get glossRevenueGrowth =>
      'Որքանով է աճել հասույթը մեկ տարի առաջվա համեմատ։';

  @override
  String get glossEpsGrowth =>
      'Որքանով է աճել մեկ բաժնետոմսին բաժին ընկնող շահույթը մեկ տարի առաջվա համեմատ։';

  @override
  String get glossDividendYield =>
      'Տարեկան շահաբաժին ÷ բաժնետոմսի գին՝ ամեն տարի ստացվող դրամական եկամուտը՝ որպես վճարած գումարի տոկոս։';

  @override
  String get glossDividendPerShare =>
      'Վերջին տարում մեկ բաժնետոմսի դիմաց վճարված շահաբաժինը։';

  @override
  String get glossPayoutRatio =>
      'Շահույթի այն մասը, որը վճարվում է որպես շահաբաժին։ 100%-ից բարձրի դեպքում ընկերությունը վճարում է ավելին, քան վաստակում է, ինչը հազվադեպ է երկար տևում։';

  @override
  String get glossTitle => 'Ի՞նչ է սա նշանակում';

  @override
  String get watchNewsTitle => 'Նորություններ ձեր բաժնետոմսերի մասին';

  @override
  String get undo => 'Հետարկել';

  @override
  String get watchSort => 'Դասավորել';

  @override
  String get watchSortOwn => 'Իմ հերթականությունը';

  @override
  String get watchSortGainers => 'Ամենաշատ աճածները սկզբում';

  @override
  String get watchSortLosers => 'Ամենաշատ անկածները սկզբում';

  @override
  String get watchSortName => 'Ըստ թիքերի (A–Z)';

  @override
  String get watchHint =>
      'Քաշեք բռնակը՝ վերադասավորելու համար, սահեցրեք ձախ՝ հեռացնելու համար։ Գիծը ցույց է տալիս վերջին 30 օրը։';

  @override
  String analysisReady(String symbol) {
    return '$symbol․ ձեր վերլուծությունը պատրաստ է։';
  }

  @override
  String alertFromCost(String price) {
    return 'Ձեր միջին գնման գնի ($price) համեմատ՝';
  }

  @override
  String get briefTitle => 'Այսօր՝ ձեր բաժնետոմսերով';

  @override
  String get briefButton => 'Ամփոփել օրը';

  @override
  String get briefHint =>
      'Կարճ AI ամփոփում այն մասին, թե ինչպես են այսօր շարժվել ձեր պորտֆելը և ընտրյալները, և ինչ են ասում դրանց մասին վերջին լուրերը։ Վերլուծություն չի ծախսում։';

  @override
  String get briefRefresh => 'Թարմացնել';

  @override
  String get sectionEarnings => 'Եռամսյակային արդյունքներ';

  @override
  String earningsNext(String date) {
    return 'Հաջորդ հաշվետվությունը՝ $date';
  }

  @override
  String get earningsExpected => 'Սպասվող EPS';

  @override
  String get earningsReported => 'Հրապարակված EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'EPS-ը սպասվածին հավասար կամ բարձր՝ վերջին $total եռամսյակից $beats-ում',
      one: 'EPS-ը սպասվածին հավասար կամ բարձր՝ 1 եռամսյակից $beats-ում',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol-ը վաղը կհրապարակի եռամսյակային արդյունքները';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol-ը այսօր կհրապարակի եռամսյակային արդյունքները';
  }

  @override
  String get earningsRemindersTitle => 'Արդյունքների հիշեցումներ';

  @override
  String get earningsRemindersSubtitle =>
      'Ծանուցում՝ ընտրյալների կամ պորտֆելի բաժնետոմսերի եռամսյակային արդյունքների հրապարակումից մեկ օր առաջ';

  @override
  String addAllToFavorites(int count) {
    return 'Ավելացնել բոլորը ընտրյալներում ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Ներմուծել էկրանի նկարից';

  @override
  String get holdingsReading => 'Դիրքերը կարդացվում են…';

  @override
  String get holdingsReviewTitle => 'Գտնված դիրքեր';

  @override
  String get holdingsReviewHint =>
      'Ավելացնելուց առաջ ստուգիր թվերը։ Գինը մեկ բաժնետոմսի համար քո միջին գնման գինն է, ոչ թե այսօրվա գինը։';

  @override
  String get holdingsNoPrice => 'Պատկերում միջին գնման գին չկա';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ավելացնել $count դիրք',
      one: 'Ավելացնել 1 դիրք',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Այս պատկերում բաժնետոմսերի դիրքեր չգտնվեցին։ Փորձիր բրոքերիդ դիրքերի կամ ակտիվների էջի էկրանի նկարը։';

  @override
  String get week52Range => '52 շաբաթվա միջակայք';

  @override
  String week52BelowHigh(String percent) {
    return '52 շաբաթվա առավելագույնից $percent-ով ցածր';
  }

  @override
  String get week52AtHigh => '52 շաբաթվա առավելագույնում';

  @override
  String get alertKindTrailing => 'Իջնի գագաթից';

  @override
  String get alertTrailingPercent => 'Անկում գագաթից (%)';

  @override
  String get alertTrailingHint =>
      'Հետևում է գնին դեպի վեր. ծանուցում է, երբ գինն այսքան իջնի սահմանելուց ի վեր հասած ամենաբարձր մակարդակից։';

  @override
  String alertDescTrailing(String percent) {
    return 'Անկում գագաթից $percent-ով';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'գագաթն առայժմ՝ $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol-ն իջավ գագաթից $percent-ով';
  }

  @override
  String get sectionInsiders => 'Ինսայդերային գործարքներ';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count գնում',
      one: '1 գնում',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count վաճառք',
      one: '1 վաճառք',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Զուտ՝ $shares բաժնետոմս';
  }

  @override
  String get insiderBuy => 'Գնված';

  @override
  String get insiderSell => 'Վաճառված';

  @override
  String get insiderHint =>
      'Ղեկավարների և տնօրենների գնումներն ու վաճառքները բաց շուկայում վերջին 90 օրվա ընթացքում (SEC Form 4)։ Օպցիոնների իրացումը և բաժնետոմսերի պարգևները չեն հաշվվում։';

  @override
  String get insiderNone =>
      'Վերջին 90 օրվա ընթացքում բաց շուկայում ինսայդերային գնումներ կամ վաճառքներ չեն եղել։';

  @override
  String get analystTrend => 'Ինչպես են փոխվել կարծիքներն ամիս առ ամիս';

  @override
  String get watchListAll => 'Բոլորը';

  @override
  String get watchListNew => 'Նոր ցուցակ';

  @override
  String get watchListName => 'Ցուցակի անունը';

  @override
  String get watchListRename => 'Վերանվանել ցուցակը';

  @override
  String get watchListDelete => 'Ջնջել ցուցակը';

  @override
  String get watchListAddTo => 'Ավելացնել ցուցակում';

  @override
  String get watchListEmpty =>
      'Այս ցուցակում դեռ բաժնետոմսեր չկան։ Հպեք բաժնետոմսի կողքի ցուցակի կոճակին՝ այն ավելացնելու համար։';

  @override
  String get portfolioAskTitle => 'Հարցեր ձեր պորտֆելի մասին';

  @override
  String get rangeYtd => 'Այս տարի';

  @override
  String get backupTitle => 'Պահուստային պատճեն';

  @override
  String get backupSave => 'Պահել պահուստային պատճենը';

  @override
  String get backupSaveHint =>
      'Ձեր ընտրյալները, ցուցակները, պորտֆելը, ծանուցումները և նշումները մեկ ֆայլում։';

  @override
  String get backupRestore => 'Վերականգնել պահուստային պատճենից';

  @override
  String get backupRestoreHint =>
      'Ավելացնում է ֆայլում եղածը. ձեր ներկայիս տվյալներից ոչինչ չի ջնջվում։';

  @override
  String get backupRestored => 'Պահուստային պատճենը վերականգնվեց։';

  @override
  String get backupInvalid => 'Այս ֆայլը WhatStock-ի պահուստային պատճեն չէ։';

  @override
  String get allocationPositions => 'Բաժնետոմսեր';

  @override
  String get allocationSectors => 'Ոլորտներ';

  @override
  String get allocationCurrencies => 'Արժույթներ';

  @override
  String get compareReturn1y => '1 տարվա եկամտաբերություն';

  @override
  String get compareFromHigh => 'Հեռավորությունը 52 շաբաթվա առավելագույնից';

  @override
  String get briefAutoTitle => 'Օրվա ամփոփում ամեն առավոտ';

  @override
  String get briefAutoSubtitle =>
      '«Այսօր՝ ձեր բաժնետոմսերով»-ը պատրաստվում է ավտոմատ կերպով 7:00-ից հետո, քանի դեռ հավելվածն աշխատում է։ Համակարգիչներում ծանուցում կտեղեկացնի։ Օգտագործում է ձեր օրական հարցերի սահմանաչափը, ոչ թե վերլուծություն։';

  @override
  String get targetsButton => 'Թիրախային բաշխում';

  @override
  String get targetsTitle => 'Թիրախային բաշխում';

  @override
  String get targetsHint =>
      'Նշեք, թե պորտֆելի որ մասը պետք է կազմի յուրաքանչյուր բաժնետոմս։ Թողեք դաշտը դատարկ, եթե թիրախ չկա։ Այնուհետև հավելվածը ցույց կտա, թե ինչ գնել կամ վաճառել այնտեղ հասնելու համար։';

  @override
  String targetsSum(String percent) {
    return 'Ընդամենը՝ $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Գնել ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Վաճառել ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Թիրախում է';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol-ը գերազանցեց սպասվող EPS-ը';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol-ը չհասավ սպասվող EPS-ին';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'Հրապարակված EPS $actual, սպասվող $estimate';
  }

  @override
  String get newsExplain => 'Ի՞նչ է սա նշանակում';

  @override
  String get watchAlertAll => 'Ծանուցում օրական մեծ փոփոխությունների դեպքում';

  @override
  String get watchAlertAllHint =>
      'Գնային ծանուցում այս ցուցակի յուրաքանչյուր բաժնետոմսի համար. այն կաշխատի, երբ մեկ օրում այսքան փոխվի՝ վեր կամ վար։ Արդեն ծանուցում ունեցող բաժնետոմսերը կպահպանեն իրենցը։';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Սահմանվեց $count ծանուցում',
      one: 'Սահմանվեց 1 ծանուցում',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Արտահանել իրացված շահույթը (CSV)';

  @override
  String get portfolioAnnualReturn => 'Տարեկան եկամտաբերություն';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / տարի';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Դրամով կշռված տարեկան եկամտաբերություն (XIRR)։ Այն հաշվի է առնում, թե երբ եք գնել և վաճառել, ուստի ավելի ուշ ավելացված գումարը չի աղավաղում այն։ Ցուցադրվում է, երբ ձեր առաջին գնումից անցել է առնվազն մեկ տարի, իսկ շահաբաժինները ներառված չեն։';

  @override
  String get eventsAddToCalendar => 'Ավելացնել օրացույցում (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Պորտֆելի ծանուցում';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Ծանուցում, երբ ամբողջ պորտֆելը մեկ օրում այսքան է փոխվում։';

  @override
  String get portfolioMoveAlertOff => 'Անջատված';

  @override
  String portfolioMoveUp(String percent) {
    return 'Պորտֆելն այսօր աճել է $percent-ով';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Պորտֆելն այսօր նվազել է $percent-ով';
  }

  @override
  String get whatIfTitle => 'Իսկ եթե ներդնեիք?';

  @override
  String get whatIfAmount => 'Գումար';

  @override
  String whatIfResult(String amount, String period) {
    return '$period առաջ ներդրված $amount այսօր կարժենար';
  }

  @override
  String get whatIfNote =>
      'Միայն բաժնետոմսի գնի հիման վրա․ շահաբաժինները, միջնորդավճարները և հարկերը ներառված չեն։ Անցյալ եկամտաբերությունը չի կանխատեսում ապագան։';

  @override
  String get watchShare => 'Կիսվել ցուցակով';

  @override
  String get watchImport => 'Ավելացնել թիքերներ';

  @override
  String get watchImportHint =>
      'Տեղադրեք թիքերները՝ բաժանված ստորակետերով, բացատներով կամ նոր տողերով, օրինակ՝ ինչ-որ մեկի կողմից ձեզ հետ կիսված ցուցակ։';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ավելացվեց $count բաժնետոմս',
      one: 'Ավելացվեց 1 բաժնետոմս',
      zero: 'Նոր բաժնետոմսեր չկան',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Ամենամեծերը սկզբում';

  @override
  String get positionsSortGain =>
      'Ամենաբարձր ընդհանուր եկամտաբերությունը սկզբում';

  @override
  String get positionsSortToday => 'Այսօրվա լավագույնները սկզբում';

  @override
  String get chartMyBuys => 'Ձեր գնումները';

  @override
  String get chartMySells => 'Ձեր վաճառքները';

  @override
  String get shortcutsTitle => 'Ստեղնային դյուրանցումներ';

  @override
  String usMarketOpen(String time) {
    return 'ԱՄՆ շուկան բաց է · կփակվի $time հետո';
  }

  @override
  String usMarketClosed(String time) {
    return 'ԱՄՆ շուկան փակ է · կբացվի $time հետո';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes ր';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours ժ $minutes ր';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days օր $hours ժ';
  }

  @override
  String get portfolioGoalSet => 'Սահմանել նպատակ';

  @override
  String get portfolioGoalTitle => 'Պորտֆելի նպատակ';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · նպատակ՝ $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Նպատակը կատարված է՝ $amount';
  }

  @override
  String get portfolioGoalRemove => 'Հեռացնել նպատակը';

  @override
  String get alertEdit => 'Խմբագրել ծանուցումը';

  @override
  String get positionOpenLots => 'Դեռ պահվող (նախ՝ ամենահինները)';

  @override
  String get lotRemoved => 'Գործարքը ջնջվեց';

  @override
  String get alertDeleted => 'Ծանուցումը ջնջվեց';

  @override
  String get alertsClearTriggered => 'Մաքրել գործարկված ծանուցումները';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Մաքրվեց $count ծանուցում',
      one: 'Մաքրվեց 1 ծանուցում',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Գլխավոր էկրան';

  @override
  String get allocationCountries => 'Երկրներ';

  @override
  String get newsExplainNoteResearch =>
      'AI-ի բացատրություն՝ այն ստուգում է փաստերը համացանցում, բացում է հոդվածը և գնահատում, թե որքան հուսալի է աղբյուրը։ Ներդրումային խորհուրդ չէ։ Օգտագործում է ձեր օրական հարցերի սահմանաչափը, ոչ թե վերլուծություն։';

  @override
  String get sourceOfficial => 'Պաշտոնական';

  @override
  String get sourcePressRelease => 'Մամուլի հաղորդագրություն';

  @override
  String get sourceMajorNews => 'Խոշոր լրատվամիջոց';

  @override
  String get sourceOpinion => 'Կարծիք';

  @override
  String get earningsSummaryButton => 'Ի՞նչ կար վերջին հաշվետվությունում';

  @override
  String get earningsSummaryNote =>
      'AI-ի ամփոփում ընկերության արդյունքների հրապարակման և համացանցում գտած մամուլի արձագանքների մասին։ Ներդրումային խորհուրդ չէ։ Օգտագործում է ձեր օրական հարցերի սահմանաչափը, ոչ թե վերլուծություն։';

  @override
  String get compareLastSurprise => 'Վերջին եռամսյակի EPS vs սպասվող';

  @override
  String get compareNextReport => 'Հաջորդ հաշվետվություն';

  @override
  String get resolvingDescription =>
      'Պարզվում է, թե որ բաժնետոմսն եք նկատի ունեցել…';

  @override
  String get instrumentTitle => 'Այս գործիքի մասին';

  @override
  String get instrumentHint =>
      'Այս սիմվոլի համար ընկերության պրոֆիլ չկա. դա կարող է լինել ETF, ֆոնդ կամ դեպոզիտար ստացական։ Հարցրեք AI-ին, թե ինչ է դա, ինչ է պարունակում և ինչ արժե։';

  @override
  String get instrumentAsk => 'Ի՞նչ է սա';

  @override
  String get instrumentNote =>
      'AI-ի բացատրություն՝ թողարկողի ֆոնդի էջի և համացանցում գտած ֆինանսական կայքերի հիման վրա։ Ներդրումային խորհուրդ չէ։ Օգտագործում է ձեր օրական հարցերի սահմանաչափը, ոչ թե վերլուծություն։';

  @override
  String suggestAskAi(String query) {
    return 'Հարցնել AI-ին՝ «$query»';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return '$symbols-ի ընթացիկ գինը չկա։';
  }

  @override
  String get eventsRecentResults => 'Վերջերս հրապարակված արդյունքներ';

  @override
  String get saveToNotes => 'Պահել իմ նշումներում';

  @override
  String get savedToNotes => 'Պահվել է ձեր նշումներում';

  @override
  String get portfolioDividendsReceived => 'Ստացված շահաբաժիններ';

  @override
  String get portfolioDividendsThisYear => 'Այս տարի';

  @override
  String get portfolioDividendsAllTime => 'Ամբողջ ընթացքում';

  @override
  String get portfolioAddDividend => 'Ավելացնել շահաբաժին';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Ստացված գումար ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Վճարման ամսաթիվ';

  @override
  String get portfolioDividendsEmpty =>
      'Շահաբաժիններ դեռ գրանցված չեն։ Ավելացրեք ձեռքով կամ ներմուծեք ձեր բրոքերի արտահանումը՝ դրա շահաբաժինների տողերը նույնպես վերցվում են։';

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ավելացվել է $count շահաբաժին',
      one: 'Ավելացվել է 1 շահաբաժին',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Արտահանել շահաբաժինները (CSV)';

  @override
  String get portfolioDividendDeleted => 'Շահաբաժինը ջնջված է';

  @override
  String get portfolioDividendsHint =>
      'Գումարները՝ այնպես, ինչպես հասել են ձեր հաշվին, վճարման արժույթով. հանրագումարները փոխարկվում են այսօրվա փոխարժեքով։ Հարկային հայտարարագրի համար օգտագործեք ձեր բրոքերի քաղվածքը։';

  @override
  String get awayTitle => 'Քանի դեռ բացակայում էիք';

  @override
  String awaySince(String when) {
    return '$when-ից';
  }

  @override
  String get awayQuiet => 'Գրեթե ոչինչ չի փոխվել։';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Գործարկվել է $count ծանուցում',
      one: 'Գործարկվել է 1 ծանուցում',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Հրապարակել են արդյունքները՝ $symbols';
  }

  @override
  String get moveWhyButton => 'Ինչո՞ւ է այն շարժվում այսօր';

  @override
  String moveWhyTitle(String percent) {
    return '$percent այսօր';
  }

  @override
  String get moveWhyNote =>
      'ԱԲ բացատրություն համացանցում գտնված այսօրվա նորություններից․ իրական պատճառը կարող է անհայտ կամ այլ լինել։ Ներդրումային խորհուրդ չէ։ Օգտագործում է ձեր օրական հարցերի սահմանաչափը, ոչ թե վերլուծություն։';

  @override
  String get sectionTechnical => 'Տեխնիկական պատկեր';

  @override
  String get labelSma50 => '50-օրյա միջին';

  @override
  String get labelSma200 => '200-օրյա միջին';

  @override
  String get labelRsi => 'RSI (14 օր)';

  @override
  String get labelVolatility30 => 'Տատանողականություն (30 օր)';

  @override
  String techAbove(String percent) {
    return '$percent բարձր';
  }

  @override
  String techBelow(String percent) {
    return '$percent ցածր';
  }

  @override
  String get techOverbought => 'գերգնված';

  @override
  String get techOversold => 'գերվաճառված';

  @override
  String get techNeutral => 'չեզոք';

  @override
  String get techGoldenCross =>
      '50-օրյա միջինը 200-օրյա միջինից բարձր է՝ դասական ընթերցմամբ վերընթաց միտում։';

  @override
  String get techDeathCross =>
      '50-օրյա միջինը 200-օրյա միջինից ցածր է՝ դասական ընթերցմամբ վայրընթաց միտում։';

  @override
  String get glossSma50 =>
      'Վերջին 50 առևտրային օրերի միջին փակման գինը։ Դրանից բարձր գինը հաճախ ընկալվում է որպես կարճաժամկետ ուժ, ցածրը՝ որպես թուլություն։';

  @override
  String get glossSma200 =>
      'Վերջին 200 առևտրային օրերի միջին փակման գինը՝ դասական երկարաժամկետ միտման գիծը։ Շատ ներդրողներ դրանից բարձր գինը համարում են երկարաժամկետ վերընթաց միտում։';

  @override
  String get glossRsi =>
      'Հարաբերական ուժի ինդեքս՝ համեմատում է վերջին աճերը վերջին անկումների հետ 0–100 սանդղակով։ 70-ից բարձր բաժնետոմսը հաճախ անվանում են գերգնված (արագ է աճել), 30-ից ցածր՝ գերվաճառված, բայց ուժեղ միտումը կարող է այնտեղ երկար մնալ։';

  @override
  String get glossVolatility =>
      'Որքան է գինը տատանվում օրից օր, հաշվարկված տարվա կտրվածքով․ 20% նշանակում է, որ սովորական տարում գինը շարժվում է մոտավորապես ±20%-ի սահմաններում։ Ավելի բարձր տատանողականությունը նշանակում է ավելի մեծ շարժումներ երկու ուղղությամբ։';

  @override
  String get techNote =>
      'Հաշվարկված է օրական փակման գներից։ Տեխնիկական ազդանշանները նկարագրում են անցյալը, ոչ թե ապագան։';

  @override
  String portfolioAbove200(int above, int count) {
    return '$count դիրքից $above դիրք՝ իրենց 200-օրյա միջինից բարձր';
  }

  @override
  String get watchSignalsTitle => 'Ազդանշաններ';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · գերվաճառված';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · գերգնված';
  }

  @override
  String get signalCrossedAbove => 'հատել է 200-օրյա միջինը վերև';

  @override
  String get signalCrossedBelow => 'հատել է 200-օրյա միջինը ներքև';

  @override
  String get signalAlertsTitle => 'Տեխնիկական ազդանշանների ծանուցումներ';

  @override
  String get signalAlertsSubtitle =>
      'Օրը մեկ անգամ, երբ ձեր հետևած բաժնետոմսը դառնում է գերվաճառված կամ գերգնված (RSI), կամ դրա գինը հատում է 200-օրյա միջինը։';

  @override
  String get signalAlertsNotification => 'Տեխնիկական ազդանշաններ';
}
