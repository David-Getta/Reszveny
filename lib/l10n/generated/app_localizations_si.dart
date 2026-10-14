// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sinhala Sinhalese (`si`).
class AppLocalizationsSi extends AppLocalizations {
  AppLocalizationsSi([String locale = 'si']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'කොටසක ඡායාරූපයක් ගෙන ඒ ගැන සියල්ල දැනගන්න.';

  @override
  String get homeHint =>
      'කොටස් සහතිකයක්, තැරැව්කාර යෙදුමක තිරයක්, පුවත්පතක් හෝ සමාගම් ලාංඡනයක් – කොටසක් හඳුනාගත හැකි ඕනෑම දෙයක්.';

  @override
  String get takePhoto => 'ඡායාරූපයක් ගන්න';

  @override
  String get chooseFromGallery => 'ගැලරියෙන් තෝරන්න';

  @override
  String get chooseImage => 'රූපයක් තෝරන්න';

  @override
  String get enterTickerManually => 'ටිකර් අතින් ඇතුළු කරන්න';

  @override
  String get tickerInputLabel => 'ටිකර් සංකේතය';

  @override
  String get tickerInputHint => 'උදා. AAPL';

  @override
  String get lookUp => 'සොයන්න';

  @override
  String demoModeBanner(String symbols) {
    return 'ආදර්ශන ප්‍රකාරය – වෙළඳපොළ දත්ත යතුරක් වින්‍යාස කර නැත. නියැදි දත්ත ඇත්තේ මේවා සඳහා: $symbols.';
  }

  @override
  String get recognizing => 'රූපය විශ්ලේෂණය කරමින්…';

  @override
  String get loadingData => 'දත්ත පූරණය වෙමින්…';

  @override
  String get noCandidatesTitle => 'කොටසක් හඳුනා නොගැනිණි';

  @override
  String get noCandidatesBody =>
      'මෙම රූපයේ කොටසක් හඳුනාගැනීමට අපට නොහැකි විය. වඩා පැහැදිලි ඡායාරූපයක් උත්සාහ කරන්න, නැතහොත් ටිකර් අතින් ඇතුළු කරන්න.';

  @override
  String get whatWeSaw => 'අප දුටු දේ';

  @override
  String get chooseCandidateTitle => 'ඔබ අදහස් කළේ කුමන කොටසද?';

  @override
  String confidencePercent(int percent) {
    return '$percent% විශ්වාසය';
  }

  @override
  String get settings => 'සැකසීම්';

  @override
  String get language => 'භාෂාව';

  @override
  String get systemLanguage => 'පද්ධති පෙරනිමිය';

  @override
  String get about => 'යෙදුම ගැන';

  @override
  String get disclaimer =>
      'මෙම යෙදුම තොරතුරු පමණක් සපයන අතර එය ආයෝජන උපදෙසක් නොවේ. දත්ත ප්‍රමාද වී හෝ සාවද්‍ය විය හැක.';

  @override
  String dataSource(String source) {
    return 'දත්ත මූලාශ්‍රය: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'හඳුනාගැනීම: $source';
  }

  @override
  String get retry => 'නැවත උත්සාහ කරන්න';

  @override
  String get cancel => 'අවලංගු කරන්න';

  @override
  String get ok => 'හරි';

  @override
  String get close => 'වසන්න';

  @override
  String get errorGeneric => 'යමක් වැරදී ඇත.';

  @override
  String get errorSectionUnavailable => 'මෙම ඛණ්ඩය පූරණය කළ නොහැකි විය.';

  @override
  String get notAvailable => 'නොමැත';

  @override
  String get sectionIdentity => 'හඳුනාගැනීම';

  @override
  String get sectionPrice => 'මිල';

  @override
  String get sectionValuation => 'තක්සේරුව';

  @override
  String get sectionFinancials => 'මූල්‍ය දත්ත';

  @override
  String get sectionDividend => 'ලාභාංශ';

  @override
  String get sectionProfile => 'සමාගම් පැතිකඩ';

  @override
  String get sectionAnalysts => 'විශ්ලේෂක ශ්‍රේණිගත කිරීම්';

  @override
  String get sectionNews => 'පුවත්';

  @override
  String get sectionRecognition => 'හඳුනාගැනීමේ විස්තර';

  @override
  String get labelSymbol => 'ටිකර්';

  @override
  String get labelExchange => 'කොටස් හුවමාරුව';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'මුදල් ඒකකය';

  @override
  String get labelCountry => 'රට';

  @override
  String get labelIndustry => 'කර්මාන්තය';

  @override
  String get labelSector => 'අංශය';

  @override
  String get labelWebsite => 'වෙබ් අඩවිය';

  @override
  String get labelIpoDate => 'IPO දිනය';

  @override
  String get labelMarketCap => 'වෙළඳපොළ ප්‍රාග්ධනීකරණය';

  @override
  String get labelSharesOutstanding => 'නිකුත් කළ කොටස්';

  @override
  String get labelEmployees => 'සේවකයින්';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'ප්‍රධාන කාර්යාලය';

  @override
  String get labelDescription => 'විස්තරය';

  @override
  String get labelLastPrice => 'අවසාන මිල';

  @override
  String get labelChange => 'වෙනස';

  @override
  String get labelOpen => 'ආරම්භක මිල';

  @override
  String get labelDayHigh => 'දිනයේ ඉහළම';

  @override
  String get labelDayLow => 'දිනයේ පහළම';

  @override
  String get labelPreviousClose => 'පෙර දින අවසන් මිල';

  @override
  String get labelWeek52High => 'සති 52 ඉහළම';

  @override
  String get labelWeek52Low => 'සති 52 පහළම';

  @override
  String get labelAverageVolume10d => 'සාමාන්‍ය පරිමාව (දින 10)';

  @override
  String updatedAt(String time) {
    return 'යාවත්කාලීන කළේ: $time';
  }

  @override
  String get labelPeTrailing => 'P/E (පසුගිය)';

  @override
  String get labelPeForward => 'P/E (ඉදිරි)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / නිදහස් මුදල් ප්‍රවාහය';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'බීටා';

  @override
  String get labelRevenueTtm => 'ආදායම (TTM)';

  @override
  String get labelNetIncomeTtm => 'ශුද්ධ ලාභය (TTM)';

  @override
  String get labelGrossMargin => 'දළ ලාභ ආන්තිකය';

  @override
  String get labelOperatingMargin => 'මෙහෙයුම් ලාභ ආන්තිකය';

  @override
  String get labelNetMargin => 'ශුද්ධ ලාභ ආන්තිකය';

  @override
  String get labelRoe => 'ස්කන්ධය මත ප්‍රතිලාභය';

  @override
  String get labelRoa => 'වත්කම් මත ප්‍රතිලාභය';

  @override
  String get labelDebtToEquity => 'ණය / ස්කන්ධය';

  @override
  String get labelCurrentRatio => 'ජංගම අනුපාතය';

  @override
  String get labelRevenueGrowth => 'ආදායම් වර්ධනය (YoY)';

  @override
  String get labelEpsGrowth => 'EPS වර්ධනය (YoY)';

  @override
  String get labelDividendYield => 'ලාභාංශ ඵලදාව';

  @override
  String get labelDividendPerShare => 'කොටසකට ලාභාංශය';

  @override
  String get labelPayoutRatio => 'ලාභාංශ ගෙවීම් අනුපාතය';

  @override
  String get labelConsensus => 'එකඟතාව';

  @override
  String get ratingStrongBuy => 'දැඩි ලෙස මිලදී ගන්න';

  @override
  String get ratingBuy => 'මිලදී ගන්න';

  @override
  String get ratingHold => 'රඳවා ගන්න';

  @override
  String get ratingSell => 'විකුණන්න';

  @override
  String get ratingStrongSell => 'දැඩි ලෙස විකුණන්න';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'විශ්ලේෂකයින් $count දෙනෙක්',
      one: 'එක් විශ්ලේෂකයෙක්',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'කාලය: $period';
  }

  @override
  String get noNews => 'මෑත පුවත් නැත.';

  @override
  String get openArticle => 'ලිපිය විවෘත කරන්න';

  @override
  String get openLinkFailed => 'සබැඳිය විවෘත කළ නොහැකි විය.';

  @override
  String get recognitionSummary => 'සාරාංශය';

  @override
  String get recognitionEvidence => 'අප එසේ සිතන්නේ ඇයි';

  @override
  String get recognitionRawText => 'රූපයෙන් කියවූ පෙළ';

  @override
  String get errMissingAnthropicKey =>
      'රූප හඳුනාගැනීම වින්‍යාස කර නැත (ANTHROPIC_API_KEY නැත). ටිකර් අතින් ඇතුළු කරන්න.';

  @override
  String get errRecognitionUnreachable =>
      'හඳුනාගැනීමේ සේවාවට සම්බන්ධ විය නොහැකි විය. ඔබේ අන්තර්ජාල සම්බන්ධතාව පරීක්ෂා කරන්න.';

  @override
  String errRecognitionHttp(String status) {
    return 'හඳුනාගැනීමේ සේවාව දෝෂයක් ලබා දුන්නේය (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'හඳුනාගැනීමේ සේවාවට මෙම රූපය සැකසිය නොහැකි විය.';

  @override
  String get errRecognitionTruncated =>
      'හඳුනාගැනීමේ ප්‍රතිචාරය අතරමග නතර විය. කරුණාකර නැවත උත්සාහ කරන්න.';

  @override
  String get errRecognitionBadResponse =>
      'හඳුනාගැනීමේ සේවාවෙන් අනපේක්ෂිත ප්‍රතිචාරයක් ලැබිණි.';

  @override
  String get errRecognitionEmpty =>
      'හඳුනාගැනීමේ සේවාව හිස් ප්‍රතිචාරයක් ලබා දුන්නේය.';

  @override
  String get errMissingFinnhubKey =>
      'වෙළඳපොළ දත්ත වින්‍යාස කර නැත (FINNHUB_API_KEY නැත).';

  @override
  String get errMarketUnreachable =>
      'වෙළඳපොළ දත්ත සේවාවට සම්බන්ධ විය නොහැකි විය. ඔබේ අන්තර්ජාල සම්බන්ධතාව පරීක්ෂා කරන්න.';

  @override
  String get errMarketRateLimited =>
      'වෙළඳපොළ දත්ත සේවාවට ඉල්ලීම් වැඩිය. කරුණාකර මිනිත්තුවක් රැඳී සිටින්න.';

  @override
  String errMarketHttp(String status) {
    return 'වෙළඳපොළ දත්ත සේවාව දෝෂයක් ලබා දුන්නේය (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'වෙළඳපොළ දත්ත සේවාවෙන් අනපේක්ෂිත ප්‍රතිචාරයක් ලැබිණි.';

  @override
  String errNoQuote(String symbol) {
    return '$symbol සඳහා මිල දත්ත හමු නොවීය.';
  }

  @override
  String errNoProfile(String symbol) {
    return '$symbol සඳහා සමාගම් පැතිකඩක් හමු නොවීය.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'ආදර්ශන ප්‍රකාරය සහාය දක්වන්නේ $symbols සඳහා පමණි. සජීවී දත්ත සඳහා FINNHUB_API_KEY එක් කරන්න.';
  }

  @override
  String errUnknown(String detail) {
    return 'යමක් වැරදී ඇත: $detail';
  }

  @override
  String get newSearch => 'නව සෙවීම';

  @override
  String get recentSearches => 'මෑත';

  @override
  String get noRecentSearches => 'තවමත් මෑත සෙවීම් නැත.';

  @override
  String get clearRecent => 'මෑත ඒවා හිස් කරන්න';

  @override
  String get greeting => 'අපි කුමන කොටස බලමුද?';

  @override
  String get searchHint => 'ටිකර් හෝ සමාගමේ නම';

  @override
  String get attachImage => 'රූපයක් අමුණන්න';

  @override
  String get searchResultsTitle => 'සෙවුම් ප්‍රතිඵල';

  @override
  String errNoResults(String query) {
    return '“$query” සඳහා කොටස් හමු නොවීය.';
  }

  @override
  String get quickBarHint => 'ටිකර් හෝ සමාගමේ නම ටයිප් කරන්න…';

  @override
  String get openFullWindow => 'කවුළුව විවෘත කරන්න';

  @override
  String hotkeyHint(String shortcut) {
    return 'ඕනෑම තැනක සිට WhatStock කැඳවීමට $shortcut ඔබන්න.';
  }

  @override
  String get trayOpen => 'WhatStock විවෘත කරන්න';

  @override
  String get trayQuickSearch => 'ඉක්මන් සෙවීම';

  @override
  String get trayQuit => 'ඉවත් වන්න';

  @override
  String get appearance => 'පෙනුම';

  @override
  String get themeSystem => 'පද්ධතිය';

  @override
  String get themeDark => 'අඳුරු';

  @override
  String get themeLight => 'ආලෝක';

  @override
  String get back => 'ආපසු';

  @override
  String get aiSectionTitle => 'AI විශ්ලේෂණය';

  @override
  String get aiIntro =>
      'AI විසින් ලියූ සවිස්තරාත්මක දළ විශ්ලේෂණයක්: මෑත පුවත්වල සාරාංශය, ව්‍යාපාරය, ශක්තීන්, අවදානම් සහ සැඟවුණු සාධක, තක්සේරුව, මනෝවිද්‍යාත්මක, සමාජ විද්‍යාත්මක, තාක්ෂණික සහ සාර්ව ආර්ථික කෝණවලින් අවස්ථා සහිත මිල පෙරදැක්මක්, සහ අවධානය යොමු කළ යුතු දේ.';

  @override
  String get aiGenerate => 'විශ්ලේෂණය සාදන්න';

  @override
  String get aiRegenerate => 'නැවත සාදන්න';

  @override
  String get aiGenerating =>
      'විශ්ලේෂණය සූදානම් කරමින්… මෙයට මිනිත්තුවක් දෙකක් ගත විය හැක.';

  @override
  String get aiSources => 'මූලාශ්‍ර';

  @override
  String aiGeneratedAt(String time) {
    return 'සාදන ලද්දේ: $time';
  }

  @override
  String get aiDisclaimer =>
      'පොදු දත්ත සහ මෑත පුවත් මත පදනම් වූ AI-ජනිත විශ්ලේෂණයකි. එහි දෝෂ තිබිය හැකි හෝ එය යල් පැන ගොස් තිබිය හැකි අතර, එය ආයෝජන උපදෙසක් නොවේ.';

  @override
  String get errAiNotConfigured =>
      'AI විශ්ලේෂණය වින්‍යාස කර නැත (ANTHROPIC_API_KEY නැත).';

  @override
  String get errAiUnreachable =>
      'AI සේවාවට සම්බන්ධ විය නොහැකි විය. ඔබේ අන්තර්ජාල සම්බන්ධතාව පරීක්ෂා කරන්න.';

  @override
  String errAiHttp(String status) {
    return 'AI සේවාව දෝෂයක් ලබා දුන්නේය (HTTP $status).';
  }

  @override
  String get errAiRefused =>
      'AI සේවාව මෙම කොටස විශ්ලේෂණය කිරීම ප්‍රතික්ෂේප කළේය.';

  @override
  String get errAiBadResponse => 'AI සේවාවෙන් අනපේක්ෂිත ප්‍රතිචාරයක් ලැබිණි.';

  @override
  String get sectionChart => 'මිල ප්‍රස්තාරය';

  @override
  String get rangeOneWeek => '1W';

  @override
  String get rangeOneMonth => '1M';

  @override
  String get rangeThreeMonths => '3M';

  @override
  String get rangeOneYear => '1Y';

  @override
  String get rangeFiveYears => '5Y';

  @override
  String get chartUnavailable =>
      'වත්මන් දත්ත මූලාශ්‍රයෙන් මිල ඉතිහාසය ලබා ගත නොහැක.';

  @override
  String get sectionStatements => 'මූල්‍ය ප්‍රකාශන (වාර්ෂික)';

  @override
  String get labelFiscalYear => 'මූල්‍ය වර්ෂය';

  @override
  String get labelRevenue => 'ආදායම';

  @override
  String get labelNetIncome => 'ශුද්ධ ලාභය';

  @override
  String get labelTotalAssets => 'මුළු වත්කම්';

  @override
  String get labelTotalLiabilities => 'මුළු වගකීම්';

  @override
  String get labelEquity => 'කොටස්කරුවන්ගේ ස්කන්ධය';

  @override
  String get labelOperatingCashFlow => 'මෙහෙයුම් මුදල් ප්‍රවාහය';

  @override
  String get statementsUnavailable =>
      'මෙම කොටස සඳහා වාර්තා කළ මූල්‍ය ප්‍රකාශන නොමැත.';

  @override
  String get launchAtLogin => 'පුරනය වන විට ආරම්භ කරන්න';

  @override
  String get hotkeyLabel => 'ගෝලීය කෙටිමඟ';

  @override
  String get hotkeyRecordHint => 'මෙතැන ක්ලික් කර, පසුව නව යතුරු සංයෝජනය ඔබන්න';

  @override
  String get hotkeyReset => 'පෙරනිමියට යළි සකසන්න';

  @override
  String get pasteImage => 'පසුරු පුවරුවෙන් රූපය අලවන්න';

  @override
  String get errClipboardNoImage => 'පසුරු පුවරුවේ රූපයක් නැත.';

  @override
  String get favorites => 'ප්‍රියතම';

  @override
  String get addToFavorites => 'ප්‍රියතමවලට එක් කරන්න';

  @override
  String get removeFromFavorites => 'ප්‍රියතමවලින් ඉවත් කරන්න';

  @override
  String get noFavorites =>
      'තවමත් ප්‍රියතම නැත. එක් කිරීමට කොටසක තරු ලකුණ තට්ටු කරන්න.';

  @override
  String get displayCurrency => 'පෙන්වන මුදල් ඒකකය';

  @override
  String get displayCurrencyNone => 'කොටසේම මුදල් ඒකකය පමණි';

  @override
  String labelConverted(String currency) {
    return '≈ $currency වලින්';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'විනිමය අනුපාතය: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'යාවත්කාලීන';

  @override
  String currentVersion(String version) {
    return 'අනුවාදය $version';
  }

  @override
  String get autoUpdate => 'යාවත්කාලීන ස්වයංක්‍රීයව ස්ථාපනය කරන්න';

  @override
  String get checkForUpdates => 'යාවත්කාලීන සඳහා පරීක්ෂා කරන්න';

  @override
  String get updateChecking => 'යාවත්කාලීන සඳහා පරීක්ෂා කරමින්…';

  @override
  String get updateUpToDate => 'ඔබ සතුව නවතම අනුවාදය ඇත.';

  @override
  String updateAvailable(String version) {
    return 'අනුවාදය $version ලබා ගත හැක.';
  }

  @override
  String get updateDownloading => 'යාවත්කාලීනය පසුබිමින් බාගත වෙමින්…';

  @override
  String get updateDownloaded =>
      'යාවත්කාලීනය සූදානම්. එය ස්ථාපනය කිරීමට නැවත අරඹන්න.';

  @override
  String get updateNow => 'යාවත්කාලීන කරන්න';

  @override
  String get restartNow => 'නැවත අරඹන්න';

  @override
  String get updatesViaStore =>
      'යාවත්කාලීන යෙදුම් ගබඩාව හරහා ස්වයංක්‍රීයව ලැබේ.';

  @override
  String get updateCheckFailed => 'යාවත්කාලීන සඳහා පරීක්ෂා කළ නොහැකි විය.';

  @override
  String get subscription => 'දායකත්වය';

  @override
  String get planTrial => 'අත්හදා බැලීම';

  @override
  String get planNormal => 'සාමාන්‍ය';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'සක්‍රිය සැලසුමක් නැත';

  @override
  String planAnalysesPerMonth(int count) {
    return 'මසකට විශ්ලේෂණ $count';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'විශ්ලේෂණ $count සහිත දින $days නොමිලේ අත්හදා බැලීම';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'අත්හදා බැලීමට තව දින $days ඉතිරියි',
      one: 'අත්හදා බැලීමට තව දිනයක් ඉතිරියි',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'ඔබේ නොමිලේ අත්හදා බැලීම අවසන්. දිගටම විශ්ලේෂණය කිරීමට සැලසුමක් තෝරන්න.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'මෙම කාල සීමාවේ විශ්ලේෂණ $total අතරින් $remaining ඉතිරියි';
  }

  @override
  String extraCredits(int count) {
    return 'අමතර විශ්ලේෂණ $count';
  }

  @override
  String renewsOn(String date) {
    return '$date දින අලුත් වේ';
  }

  @override
  String get choosePlan => 'සැලසුමක් තෝරන්න';

  @override
  String get currentPlan => 'වත්මන් සැලසුම';

  @override
  String get subscribe => 'දායක වන්න';

  @override
  String get perMonth => '/ මසකට';

  @override
  String get extraPacksTitle => 'තව අවශ්‍යද? අමතර විශ්ලේෂණ මිලදී ගන්න';

  @override
  String get extraPacksHint =>
      'අමතර විශ්ලේෂණ කිසිදා කල් ඉකුත් නොවන අතර ඔබේ මාසික සීමාවෙන් පසු භාවිත වේ.';

  @override
  String get buy => 'මිලදී ගන්න';

  @override
  String get restorePurchases => 'මිලදී ගැනීම් ප්‍රතිසාධනය කරන්න';

  @override
  String get manageSubscription => 'දායකත්වය කළමනාකරණය කරන්න';

  @override
  String get purchaseSuccess => 'ස්තූතියි! ඔබේ මිලදී ගැනීම සක්‍රියයි.';

  @override
  String get purchasePending => 'මිලදී ගැනීම පොරොත්තුවෙන්…';

  @override
  String get purchaseFailed => 'මිලදී ගැනීම සම්පූර්ණ කළ නොහැකි විය.';

  @override
  String get purchaseCanceled => 'මිලදී ගැනීම අවලංගු විය.';

  @override
  String get billingUnavailable =>
      'මෙම වේදිකාවේ මිලදී ගැනීම් තවම නොමැත. ඔබේ දුරකථනයෙන් හෝ Mac එකෙන් දායක වන්න; ඔබේ සැලසුම සෑම උපාංගයකම ක්‍රියා කරයි.';

  @override
  String get errQuotaExceeded =>
      'මෙම කාල සීමාවට ඔබට විශ්ලේෂණ ඉතිරි නැත. ඔබේ සැලසුම උසස් කරන්න හෝ අමතර විශ්ලේෂණ මිලදී ගන්න.';

  @override
  String get errTrialExpired =>
      'ඔබේ නොමිලේ අත්හදා බැලීම අවසන්. දිගටම කරගෙන යාමට සැලසුමක් තෝරන්න.';

  @override
  String get errNoPlan => 'AI විශ්ලේෂණය සඳහා සක්‍රිය සැලසුමක් අවශ්‍යයි.';

  @override
  String get viewPlans => 'සැලසුම් බලන්න';

  @override
  String get usageTitle => 'භාවිතය';

  @override
  String get demoPurchaseNote =>
      'ආදර්ශන බිල්පත්: මෙම වේදිකාවේ මිලදී ගැනීම් අනුකරණය කෙරේ.';

  @override
  String get mostPopular => 'වඩාත්ම ජනප්‍රිය';

  @override
  String get bestValue => 'හොඳම වටිනාකම';

  @override
  String get planFeaturesCommon =>
      'ඡායාරූප හඳුනාගැනීම, සජීවී දත්ත, ප්‍රස්තාර, ප්‍රියතම සහ භාෂා 120ම සෑම සැලසුමකම ඇතුළත්‍ය. සීමාව අදාළ වන්නේ AI විශ්ලේෂණවලට ය.';

  @override
  String get searchLanguages => 'භාෂා සොයන්න…';

  @override
  String get noLanguageMatch => 'ගැළපෙන භාෂාවක් නැත.';

  @override
  String get aiSettings => 'AI විශ්ලේෂණය';

  @override
  String get aiLength => 'දිග';

  @override
  String get aiDepthBrief => 'කෙටි';

  @override
  String get aiDepthStandard => 'සම්මත';

  @override
  String get aiDepthDeep => 'ගැඹුරු';

  @override
  String get aiDepthBriefDesc => 'අත්‍යවශ්‍ය කරුණු, ඉක්මනින්.';

  @override
  String get aiDepthStandardDesc => 'සියලු ඛණ්ඩ සහිත සම්පූර්ණ වාර්තාව.';

  @override
  String get aiDepthDeepDesc =>
      'වැඩි වෙබ් සෙවීම්, සමාන සමාගම් සමඟ සැසඳීම සහ ගැඹුරු විස්තර.';

  @override
  String aiDepthWords(String min, String max) {
    return 'වචන $min–$max පමණ';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'විශ්ලේෂණ $countක් වැය වේ',
      one: 'විශ්ලේෂණ 1ක් වැය වේ',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'පාඨක මට්ටම';

  @override
  String get aiReaderBeginner => 'ආරම්භක';

  @override
  String get aiReaderExperienced => 'පළපුරුදු';

  @override
  String get aiReaderBeginnerDesc =>
      'සරල භාෂාව; සෑම තාක්ෂණික යෙදුමක්ම පැහැදිලි කෙරේ.';

  @override
  String get aiReaderExperiencedDesc => 'සම්මත මූල්‍ය පාරිභාෂිතය සහිත ඝන පෙළ.';

  @override
  String get aiCounterArgument => 'ප්‍රබලතම ප්‍රතිතර්කය';

  @override
  String get aiCounterArgumentDesc =>
      'සාරාංශය සැමවිටම අවසන් වන්නේ එහිම නිගමනයට එරෙහි ප්‍රබලතම තර්කයෙනි.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ඔබේ සැලසුම සමඟ විශ්ලේෂණයකට වෙබ් සෙවීම් $countක් දක්වා',
      one: 'ඔබේ සැලසුම සමඟ විශ්ලේෂණයකට වෙබ් සෙවීම් 1ක් දක්වා',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'සැලසුම අනුව සම්මත දිගෙහි වෙබ් සෙවීම්: සාමාන්‍ය $normal, Pro $pro, Max $max, Ultra $ultra. කෙටි දිගට 2ක් අඩුවෙන්, ගැඹුරු දිගට 2ක් වැඩියෙන්.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'වෙබ් සෙවීම් $countක් දක්වා',
      one: 'වෙබ් සෙවීම් 1ක් දක්වා',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'විශ්ලේෂණයකට වෙබ් සෙවීම් $count',
      one: 'විශ්ලේෂණයකට වෙබ් සෙවීම් 1',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'මෙම දිගට විශ්ලේෂණ $neededක් අවශ්‍ය වුවත්, ඉතිරිව ඇත්තේ $leftක් පමණි. සැකසීම්වල කෙටි දිගක් තෝරන්න හෝ තවත් විශ්ලේෂණ ලබා ගන්න.';
  }

  @override
  String get outlookMarketMood => 'වෙළඳපොළ මනෝභාවය';

  @override
  String get moodVeryPessimistic => 'ඉතා අශුභවාදී';

  @override
  String get moodPessimistic => 'අශුභවාදී';

  @override
  String get moodNeutral => 'මධ්‍යස්ථ';

  @override
  String get moodOptimistic => 'ශුභවාදී';

  @override
  String get moodVeryOptimistic => 'ඉතා ශුභවාදී';

  @override
  String get scenarioBull => 'ශුභවාදී අවස්ථාව';

  @override
  String get scenarioBase => 'මූලික අවස්ථාව';

  @override
  String get scenarioBear => 'අශුභවාදී අවස්ථාව';

  @override
  String outlookCurrentPrice(String price) {
    return 'වත්මන් මිල: $price';
  }

  @override
  String get outlookKeyLevels => 'ප්‍රධාන මට්ටම්';

  @override
  String get keyLevelSupport => 'සහාය';

  @override
  String get keyLevelResistance => 'ප්‍රතිරෝධය';

  @override
  String get keyLevelAnchor => 'යොමු මට්ටම';

  @override
  String get upcomingEvents => 'ඉදිරි සිදුවීම්';

  @override
  String get outlookChartNote =>
      'දළ පරාස; සම්භාවිතා යනු දළ ඇස්තමේන්තු මිස අනාවැකි නොවේ.';

  @override
  String get accountTitle => 'ගිණුම';

  @override
  String get signIn => 'පුරන්න';

  @override
  String get signOut => 'වරන්න';

  @override
  String get notSignedIn => 'පුරනය වී නැත';

  @override
  String get accountBenefit =>
      'ඔබේ දායකත්වය ඔබේ සියලු උපාංගවල ක්‍රියා කිරීමට පුරන්න.';

  @override
  String get accountSyncedNote =>
      'ඔබේ දායකත්වය සහ ඉතිරි විශ්ලේෂණ සෑම උපාංගයකම සමානයි.';

  @override
  String get signInTitle => 'WhatStock වෙත පුරන්න';

  @override
  String get emailLabel => 'ඊමේල් ලිපිනය';

  @override
  String get continueWithEmail => 'ඊමේල් සමඟ ඉදිරියට යන්න';

  @override
  String codeSentTo(String email) {
    return 'අපි $email වෙත ඉලක්කම් 6ක කේතයක් යැව්වෙමු. එය මිනිත්තු 10ක් වලංගු වේ.';
  }

  @override
  String get codeLabel => 'පුරනය වීමේ කේතය';

  @override
  String get resendCode => 'නව කේතයක් යවන්න';

  @override
  String get useDifferentEmail => 'වෙනත් ඊමේල් එකක් භාවිත කරන්න';

  @override
  String get errInvalidCode => 'කේතය වැරදියි හෝ කල් ඉකුත් වී ඇත.';

  @override
  String get errInvalidEmail => 'කරුණාකර වලංගු ඊමේල් ලිපිනයක් ඇතුළු කරන්න.';

  @override
  String get errSignInFailed =>
      'පුරනය අසාර්ථක විය. ඔබේ සම්බන්ධතාව පරීක්ෂා කර නැවත උත්සාහ කරන්න.';

  @override
  String get checkoutWaiting =>
      'ඔබේ බ්‍රවුසරයේ ගෙවීම සම්පූර්ණ කරන්න. එය අවසන් වූ විට යෙදුම ස්වයංක්‍රීයව යාවත්කාලීන වේ.';

  @override
  String get paymentViaStripe =>
      'Stripe හරහා ඔබේ බ්‍රවුසරයේ ආරක්ෂිත ගෙවීම. ඕනෑම වේලාවක අවලංගු කළ හැක.';

  @override
  String get paymentViaStore =>
      'ඔබේ App Store හෝ Google Play ගිණුම හරහා බිල් කෙරේ. ඔබේ ගබඩා සැකසීම්වල ඕනෑම වේලාවක අවලංගු කළ හැක.';

  @override
  String get keySpace => 'හිස්තැන';

  @override
  String get doubleOptionTitle => 'Option දෙවරක් ඔබන්න';

  @override
  String get doubleOptionSubtitle =>
      'Option යතුර ඉක්මනින් දෙවරක් එබීමෙන්ද WhatStock කැඳවිය හැක.';

  @override
  String get doubleOptionPermission =>
      'අනෙක් යෙදුම්වලද මෙය ක්‍රියා කිරීමට, System Settings → Privacy & Security → Input Monitoring යටතේ WhatStock වෙත අවසර දී, පසුව යෙදුම නැවත විවෘත කරන්න.';

  @override
  String get openSystemSettings => 'පද්ධති සැකසීම් විවෘත කරන්න';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'ඕනෑම තැනක සිට WhatStock කැඳවීමට $shortcut ඔබන්න හෝ Option දෙවරක් ඔබන්න.';
  }

  @override
  String get scenarioMostLikely => 'වඩාත්ම සම්භාවී';

  @override
  String get longTermToday => 'අද';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: 'වසර $years',
      one: 'වසර 1',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return 'වසරකට $range';
  }

  @override
  String longTermLikely(String price) {
    return 'වඩාත්ම සම්භාවී $price';
  }

  @override
  String get confidenceLow => 'අඩු විශ්වාසය';

  @override
  String get confidenceMedium => 'මධ්‍යම විශ්වාසය';

  @override
  String get confidenceHigh => 'ඉහළ විශ්වාසය';

  @override
  String get longTermNote =>
      'දිගුකාලීන පරාස ප්‍රකාශිත උපකල්පන මත පදනම් වන අතර කාලයත් සමඟ පුළුල් වේ. මිලවලට ලාභාංශ ඇතුළත් නොවේ. මේවා දළ ඇස්තමේන්තු මිස අනාවැකි නොවේ.';

  @override
  String get portfolio => 'කළඹ';

  @override
  String get portfolioEmpty =>
      'තවම මෙහි කිසිවක් නැත. කොටසක් විවෘත කර ඔබ සතු දේ නිරීක්ෂණය කිරීමට “කළඹට එක් කරන්න” තට්ටු කරන්න.';

  @override
  String get portfolioLocalNote =>
      'මෙම උපාංගයේ පමණක් ගබඩා වේ. මුළු අගයන් ECB යොමු අනුපාත අනුව පරිවර්තනය කෙරේ; මිල ප්‍රමාද විය හැක.';

  @override
  String get addToPortfolio => 'කළඹට එක් කරන්න';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol එක් කරන්න';
  }

  @override
  String get portfolioQuantity => 'කොටස් ගණන';

  @override
  String portfolioBuyPrice(String currency) {
    return 'කොටසක මිල ($currency)';
  }

  @override
  String get portfolioBuyDate => 'මිලදී ගත් දිනය';

  @override
  String get portfolioAdd => 'එක් කරන්න';

  @override
  String get portfolioInvalidNumber => 'බිංදුවට වඩා වැඩි අංකයක් ඇතුළු කරන්න.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol ඔබේ කළඹට එක් කෙරිණි.';
  }

  @override
  String get portfolioTotalValue => 'මුළු වටිනාකම';

  @override
  String get portfolioToday => 'අද';

  @override
  String get portfolioGainLoss => 'ලාභය/අලාභය';

  @override
  String get portfolioInvested => 'ආයෝජනය කළ';

  @override
  String get portfolioAllocation => 'බෙදීම';

  @override
  String get portfolioPositions => 'ස්ථාන';

  @override
  String portfolioAvgCost(String price) {
    return 'සාමාන්‍ය පිරිවැය $price';
  }

  @override
  String get portfolioYourPosition => 'ඔබේ ස්ථානය';

  @override
  String get portfolioPurchases => 'මිලදී ගැනීම්';

  @override
  String get portfolioRemove => 'ඉවත් කරන්න';

  @override
  String get portfolioExcluded =>
      'මිලක් හෝ විනිමය අනුපාතයක් නොමැති ස්ථාන මුළු අගයන්ට ඇතුළත් නොවේ.';

  @override
  String get priceAlerts => 'මිල ඇඟවීම්';

  @override
  String get setPriceAlert => 'මිල ඇඟවීමක් සකසන්න';

  @override
  String alertDialogTitle(String symbol) {
    return 'මිල ඇඟවීම · $symbol';
  }

  @override
  String get alertKindAbove => 'ඉහළට ගිය විට';

  @override
  String get alertKindBelow => 'පහළට වැටුණු විට';

  @override
  String get alertKindMove => 'දිනකදී විශාල ලෙස වෙනස් වූ විට';

  @override
  String alertTargetPrice(String currency) {
    return 'මිල ($currency)';
  }

  @override
  String get alertMovePercent => 'දෛනික වෙනස (%)';

  @override
  String get alertAlreadyMet => 'මිල දැනටමත් මෙම මට්ටම පසු කර ඇත.';

  @override
  String get alertSave => 'ඇඟවීම සකසන්න';

  @override
  String alertCreated(String symbol) {
    return '$symbol සඳහා ඇඟවීම සකසන ලදී.';
  }

  @override
  String get alertsEmpty =>
      'තවම මිල ඇඟවීම් නැත. එකක් සැකසීමට කොටසක් විවෘත කර සීනුව තට්ටු කරන්න.';

  @override
  String get alertsNote =>
      'WhatStock ක්‍රියාත්මක වන අතරතුර සෑම මිනිත්තු 5කට වරක් ඇඟවීම් පරීක්ෂා කෙරේ. පරිගණකයක එය මෙනු තීරුවේ හෝ පද්ධති තැටියේ දිගටම ක්‍රියා කරයි; දුරකථනයක දැනට ඇඟවීම් ලැබෙන්නේ යෙදුම විවෘතව ඇති විට පමණි.';

  @override
  String alertDescAbove(String price) {
    return '$priceට ඉහළින්';
  }

  @override
  String alertDescBelow(String price) {
    return '$priceට පහළින්';
  }

  @override
  String alertDescMove(String percent) {
    return 'දෛනික වෙනස ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return '$date දින, $price මිලේදී ක්‍රියාත්මක විය';
  }

  @override
  String get alertRearm => 'යළි සක්‍රිය කරන්න';

  @override
  String get alertDelete => 'මකන්න';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol $priceට ඉහළ ගියේය';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol $priceට පහළ වැටුණි';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol අද $percentකින් වෙනස් විය';
  }

  @override
  String alertHitBody(String price) {
    return 'වත්මන් මිල: $price';
  }

  @override
  String get alertOpen => 'විවෘත කරන්න';

  @override
  String get keepInTrayTitle => 'කවුළුව වැසූ පසුවත් ක්‍රියාත්මකව තබන්න';

  @override
  String get keepInTraySubtitle =>
      'WhatStock මෙනු තීරුවේ හෝ පද්ධති තැටියේ රැඳී සිටින නිසා කෙටිමඟ සහ මිල ඇඟවීම් දිගටම ක්‍රියා කරයි.';

  @override
  String get termsOfUse => 'භාවිත නියම';

  @override
  String get privacyPolicy => 'රහස්‍යතා ප්‍රතිපත්තිය';

  @override
  String get subscriptionLegal =>
      'ඔබ අවලංගු කරන තුරු දායකත්ව සෑම මසකම ස්වයංක්‍රීයව අලුත් වේ. දායක වීමෙන් ඔබ භාවිත නියම සහ රහස්‍යතා ප්‍රතිපත්තිය පිළිගනී.';

  @override
  String get deleteAccount => 'ගිණුම මකන්න';

  @override
  String get deleteAccountTitle => 'ඔබේ ගිණුම මකන්නද?';

  @override
  String get deleteAccountBody =>
      'ඔබේ ගිණුම සහ අපගේ සේවාදායකයේ ගබඩා කළ සියල්ල (ඊමේල්, සීමාව, භාවිතය) සදහටම මැකෙන අතර, භාවිත නොකළ විශ්ලේෂණ අහිමි වේ. බ්‍රවුසරයෙන් ගෙවූ දායකත්වයක් වහාම අවලංගු වේ; App Store හෝ Google Play දායකත්වයක් ගබඩාවේ සැකසීම්වලින් අවලංගු කළ යුතුය.';

  @override
  String get deleteLocalData =>
      'මෙම උපාංගයේ දත්තද මකන්න (කළඹ, ඇඟවීම්, ප්‍රියතම, ඉතිහාසය, සුරැකි විශ්ලේෂණ)';

  @override
  String get deleteAccountConfirm => 'සදහටම මකන්න';

  @override
  String get accountDeleted => 'ඔබේ ගිණුම මකා දමන ලදී.';

  @override
  String get errDeleteAccount =>
      'ගිණුම මැකිය නොහැකි විය. ඔබේ සම්බන්ධතාව පරීක්ෂා කර නැවත උත්සාහ කරන්න.';

  @override
  String get aiTrialBriefNote =>
      'අත්හදා බැලීමේ විශ්ලේෂණ කෙටි වන අතර වේගවත් AI මාදිලියකින් සකසනු ලැබේ. සැලසුමක් සමඟ ඔබට අපගේ වඩාත්ම බලවත් AI, වැඩි වෙබ් සෙවීම් සහ සම්මත හා ගැඹුරු දිග ලැබේ.';

  @override
  String get billingMonthly => 'මාසිකව';

  @override
  String get billingYearly => 'වාර්ෂිකව';

  @override
  String get yearlyDiscount => 'මාස 2ක් නොමිලේ';

  @override
  String get perYear => '/ වසරකට';

  @override
  String pricePerMonthApprox(String price) {
    return 'මසකට ≈ $price';
  }

  @override
  String get subscriptionLegalYearly =>
      'ඔබ අවලංගු කරන තුරු වාර්ෂික දායකත්ව සෑම වසරකම ස්වයංක්‍රීයව අලුත් වේ. දායක වීමෙන් ඔබ භාවිත නියම සහ රහස්‍යතා ප්‍රතිපත්තිය පිළිගනී.';

  @override
  String get myAnalyses => 'මගේ විශ්ලේෂණ';

  @override
  String get navAlerts => 'ඇඟවීම්';

  @override
  String get inviteTitle => 'සංවෘත පෙරදසුන';

  @override
  String get inviteBody =>
      'WhatStock දැනට ආරාධනා මගින් පමණක් ලබා ගත හැක. ඔබට ලැබුණු ආරාධනා කේතය ඇතුළත් කරන්න.';

  @override
  String get inviteCodeLabel => 'ආරාධනා කේතය';

  @override
  String get inviteContinue => 'ඉදිරියට';

  @override
  String get inviteInvalid => 'මෙම ආරාධනා කේතය වලංගු නොවේ.';

  @override
  String get inviteExpired =>
      'මෙම ආරාධනාව කල් ඉකුත් වී ඇත. ඔබට ආරාධනා කළ පුද්ගලයාගෙන් නව කේතයක් ඉල්ලන්න.';

  @override
  String get inviteDeviceLimit =>
      'මෙම ආරාධනා කේතය දැනටමත් උපරිම උපාංග ගණනක භාවිත වේ.';

  @override
  String get previewConfidential => 'රහසිගත පෙරදසුන';

  @override
  String get errPreviewDailyLimit =>
      'මෙම පෙරදසුනේ අද දින විශ්ලේෂණ සීමාවට ළඟා වී ඇත. හෙට නැවත උත්සාහ කරන්න.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'පැය $countකට පෙර',
      one: 'පැයකට පෙර',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'දින $countකට පෙර',
      one: 'දිනකට පෙර',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'මෙම විශ්ලේෂණය යාවත්කාලීන කරන්නද?';

  @override
  String staleBody(String age) {
    return 'මෙය සාදන ලද්දේ $age. එතැන් සිට මිල, පුවත් සහ ප්‍රතිඵල වෙනස් වී තිබිය හැක.';
  }

  @override
  String get staleKeep => 'පෙර එක පෙන්වන්න';

  @override
  String get staleRefresh => 'අලුත් එකක් සාදන්න';

  @override
  String seeAll(int count) {
    return 'සියල්ල බලන්න ($count)';
  }

  @override
  String get searchAnalyses => 'ඔබේ විශ්ලේෂණ සොයන්න';

  @override
  String get deleteAnalysis => 'මකන්න';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol විශ්ලේෂණය මකා දමන ලදී';
  }

  @override
  String get keyLevelAlertHint =>
      'මිල මට්ටමකට ළඟා වූ විට ඇඟවීමක් ලබා ගැනීමට එම මට්ටම තට්ටු කරන්න.';

  @override
  String get shareAnalysisTitle => 'විශ්ලේෂණය බෙදාගන්න';

  @override
  String get shareAsImage => 'රූපයක් ලෙස බෙදාගන්න';

  @override
  String get shareAsText => 'පෙළක් ලෙස බෙදාගන්න';

  @override
  String get shareCardFooter => 'WhatStock සමඟ සාදන ලදී';

  @override
  String get shareCardDisclaimer => 'AI විශ්ලේෂණය · ආයෝජන උපදෙසක් නොවේ';

  @override
  String get referralTitle => 'මිතුරන්ට ආරාධනා කරන්න';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'අමතර විශ්ලේෂණ $countක්',
      one: 'අමතර විශ්ලේෂණයක්',
    );
    return 'ඔබේ කේතය බෙදාගන්න. ඔබේ මිතුරාට වහාම $_temp0 ලැබෙන අතර, ඔවුන්ගේ පළමු විශ්ලේෂණයෙන් පසු ඔබටත් එපමණම ලැබේ.';
  }

  @override
  String get referralYourCode => 'ඔබේ කේතය';

  @override
  String referralStats(int invited, int rewarded) {
    return 'ආරාධිත: $invited · ත්‍යාග ලැබූ: $rewarded';
  }

  @override
  String get referralHaveCode => 'මිතුරෙකුගෙන් ලැබුණු කේතයක් තිබේද?';

  @override
  String get referralRedeem => 'භාවිත කරන්න';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'අමතර විශ්ලේෂණ $countක් එක් කළා. සාදරයෙන් පිළිගනිමු!',
      one: 'අමතර විශ්ලේෂණයක් එක් කළා. සාදරයෙන් පිළිගනිමු!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'මෙම කේතය නොපවතී. පරීක්ෂා කර නැවත උත්සාහ කරන්න.';

  @override
  String get referralErrOwn => 'ඔබට ඔබේම කේතය භාවිත කළ නොහැක.';

  @override
  String get referralErrAlready => 'ඔබ දැනටමත් මිතුරෙකුගේ කේතයක් භාවිත කර ඇත.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'අමතර විශ්ලේෂණ $countක්',
      one: 'අමතර විශ්ලේෂණයක්',
    );
    return 'මම WhatStock සමඟ කොටස් විශ්ලේෂණය කරමි: කොටසක ඡායාරූපයක් ගන්න, AI එය පැහැදිලි කරයි. මගේ $code කේතය සමඟ ඔබට $_temp0 ලැබේ.';
  }

  @override
  String get referralCopied => 'කේතය පිටපත් කළා';

  @override
  String get onboardTitle1 => 'කොටසක ඡායාරූපයක් ගන්න';

  @override
  String get onboardBody1 =>
      'තැරැව්කාර යෙදුමක තිරයක්, පුවත්පතක් හෝ සමාගම් ලාංඡනයක් ප්‍රමාණවත්: WhatStock කොටස හඳුනාගෙන එහි මිල, ප්‍රස්තාරය සහ ප්‍රධාන සංඛ්‍යා පෙන්වයි.';

  @override
  String get onboardTitle2 => 'මිනිත්තු කිහිපයකින් තේරුම් ගන්න';

  @override
  String get onboardBody2 =>
      'AI විශ්ලේෂණය කොටස චලනය කරන්නේ කුමක්ද, අවදානම්, තක්සේරුව සහ මිල යා හැකි දිශාව පිළිබඳ අවස්ථා තුනක් මූලාශ්‍ර සමඟ ඔබේ භාෂාවෙන් පැහැදිලි කරයි.';

  @override
  String get onboardTitle3 => 'සැමවිටම දැනුවත්ව සිටින්න';

  @override
  String get onboardBody3 =>
      'ප්‍රියතම, ඔබේ කළඹ සහ මිල ඇඟවීම් ඔබව දැනුවත් කරයි. ඔබේ විශ්ලේෂණ ඔබේ උපාංගයේම රැඳී ඇති අතර නැවත විවෘත කිරීමට සූදානම්.';

  @override
  String get onboardNext => 'ඊළඟ';

  @override
  String get onboardStart => 'අරඹන්න';

  @override
  String get onboardSkip => 'මඟ හරින්න';

  @override
  String changesTitle(String date) {
    return 'පෙර විශ්ලේෂණයේ සිට ($date)';
  }

  @override
  String get changesPrice => 'මිල';

  @override
  String get changesNoMajor => 'අපේක්ෂාවන් සැලකිය යුතු ලෙස වෙනස් වී නැත.';

  @override
  String get changesPreviousSummary => 'පෙර සාරාංශය';

  @override
  String get telemetryTitle => 'WhatStock වැඩිදියුණු කිරීමට උදව් කරන්න';

  @override
  String get telemetryBody =>
      'නිර්නාමික භාවිත සංඛ්‍යාලේඛන සහ බිඳවැටීම් වාර්තා බෙදා ගන්න: භාවිත කරන විශේෂාංග මොනවාද සහ වැරදුණේ කුමක්ද. ඔබේ කොටස්, විශ්ලේෂණ හෝ පුද්ගලික දත්ත කිසි විටෙකත් නැත. ඔබට මෙය ඕනෑම වේලාවක සැකසීම්හි වෙනස් කළ හැක.';

  @override
  String get telemetryAllow => 'ඉඩ දෙන්න';

  @override
  String get telemetryDecline => 'එපා, ස්තූතියි';

  @override
  String get telemetrySetting => 'නිර්නාමික සංඛ්‍යාලේඛන සහ බිඳවැටීම් වාර්තා';

  @override
  String get telemetrySettingHint =>
      'විශේෂාංග කොපමණ වාරයක් භාවිත වේද සහ දෝෂ වාර්තා, පුද්ගලික දත්ත හෝ ඔබේ සෙවීම් සහ විශ්ලේෂණවල අන්තර්ගතය නොමැතිව.';

  @override
  String get askButton => 'මෙම විශ්ලේෂණය ගැන අසන්න';

  @override
  String askTitle(String symbol) {
    return '$symbol ගැන ප්‍රශ්න';
  }

  @override
  String get askIntro =>
      'විශ්ලේෂණය ගැන ඕනෑම දෙයක් අසන්න: අවදානමක තේරුම කුමක්ද, අපේක්ෂාවන් වෙනස් කළ හැක්කේ කුමක්ද, සංඛ්‍යාවක් ගණනය කළේ කෙසේද. පිළිතුරු මෙම විශ්ලේෂණය මත පදනම් වන අතර ඒවා ආයෝජන උපදෙස් නොවේ.';

  @override
  String get askHint => 'ප්‍රශ්නයක් අසන්න…';

  @override
  String get askSend => 'යවන්න';

  @override
  String get askThinking => 'සිතමින්…';

  @override
  String get askSuggest1 => 'විශාලතම අවදානම කුමක්ද?';

  @override
  String get askSuggest2 => 'අපේක්ෂාවන් වෙනස් කළ හැක්කේ කුමක්ද?';

  @override
  String get askSuggest3 => 'සරලව පැහැදිලි කරන්න';

  @override
  String get askMaxReached =>
      'මෙම විශ්ලේෂණය සඳහා අවසාන ප්‍රශ්නය එයයි. තවත් ඇසීමට නව විශ්ලේෂණයක් සාදන්න.';

  @override
  String get errAskLimit =>
      'ඔබ අද දින ප්‍රශ්න සීමාවට ළඟා වී ඇත. හෙට නැවත උත්සාහ කරන්න.';

  @override
  String get eventTomorrow => 'හෙට';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'දින $daysකින්',
      one: 'දින 1කින්',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'කාර්තුමය ප්‍රතිඵල';

  @override
  String get eventBeforeOpen => 'වෙළඳපොළ විවෘත වීමට පෙර';

  @override
  String get eventAfterClose => 'වෙළඳපොළ වැසීමෙන් පසු';

  @override
  String eventEpsEstimate(String value) {
    return 'ඇස්තමේන්තුගත EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'ඔබේ විශ්ලේෂණයෙන්';

  @override
  String get eventsHint =>
      'ඉදිරි දින 90 තුළ ඔබේ ප්‍රියතම සහ කළඹේ කොටස්වල ප්‍රතිඵල දින, සහ ඔබේ විශ්ලේෂණ මගින් සලකුණු කළ දින සහිත සිදුවීම්.';

  @override
  String get eventsEmpty =>
      'ඉදිරි දින 90 තුළ දින සහිත සිදුවීම් නැත. ප්‍රතිඵල දින මෙහි බැලීමට ප්‍රියතම හෝ කළඹ කොටස් එක් කරන්න.';

  @override
  String get compareTitle => 'සංසන්දනය';

  @override
  String get compareAdd => 'කොටසක් එක් කරන්න';

  @override
  String get compareRemove => 'ඉවත් කරන්න';

  @override
  String get compareTickerHint => 'ටිකර්, උදා. MSFT';

  @override
  String get compareHint =>
      'ප්‍රධාන සංඛ්‍යා එකිනෙක අසල; එක් එක් පේළියේ හොඳම අගය උද්දීපනය කර ඇත. මුදල් ප්‍රමාණ එක් එක් කොටසේ මුදල් ඒකකයෙන් වේ.';

  @override
  String get compareNoAnalysis => 'තවම විශ්ලේෂණයක් නැත';

  @override
  String get portfolioDividends => 'වාර්ෂික ලාභාංශ';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent ඵලදාව';
  }

  @override
  String get portfolioDividendNote =>
      'අපේක්ෂිත වාර්ෂික ලාභාංශ පසුගිය මාස 12 තුළ ගෙවූ ලාභාංශ මත පදනම් වේ; අනාගත ගෙවීම් සහතික නොවේ.';

  @override
  String positionDividend(String amount) {
    return 'ලාභාංශ: වසරකට $amount';
  }

  @override
  String get chartAvgCost => 'ඔබේ සාමාන්‍යය';

  @override
  String get chartAlertLevel => 'ඇඟවීම';
}
