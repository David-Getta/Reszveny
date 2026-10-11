// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lao (`lo`).
class AppLocalizationsLo extends AppLocalizations {
  AppLocalizationsLo([String locale = 'lo']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'ຖ່າຍຮູບຮຸ້ນ ແລ້ວຮູ້ທຸກຢ່າງກ່ຽວກັບຮຸ້ນນັ້ນ';

  @override
  String get homeHint => 'ໃບຮຸ້ນ ໜ້າຈໍແອັບນາຍໜ້າ ໜັງສືພິມ ຫຼື ໂລໂກ້ບໍລິສັດ – ອັນໃດກໍໄດ້ທີ່ບອກໄດ້ວ່າແມ່ນຮຸ້ນໃດ';

  @override
  String get takePhoto => 'ຖ່າຍຮູບ';

  @override
  String get chooseFromGallery => 'ເລືອກຈາກຄັງຮູບ';

  @override
  String get chooseImage => 'ເລືອກຮູບພາບ';

  @override
  String get enterTickerManually => 'ປ້ອນສັນຍາລັກຮຸ້ນເອງ';

  @override
  String get tickerInputLabel => 'ສັນຍາລັກຮຸ້ນ';

  @override
  String get tickerInputHint => 'ເຊັ່ນ AAPL';

  @override
  String get lookUp => 'ຊອກຫາ';

  @override
  String demoModeBanner(String symbols) {
    return 'ໂໝດສາທິດ – ຍັງບໍ່ໄດ້ຕັ້ງຄ່າກະແຈຂໍ້ມູນຕະຫຼາດ ມີຂໍ້ມູນຕົວຢ່າງສຳລັບ: $symbols';
  }

  @override
  String get recognizing => 'ກຳລັງວິເຄາະຮູບພາບ…';

  @override
  String get loadingData => 'ກຳລັງໂຫຼດຂໍ້ມູນ…';

  @override
  String get noCandidatesTitle => 'ບໍ່ພົບຮຸ້ນໃນຮູບ';

  @override
  String get noCandidatesBody => 'ພວກເຮົາບໍ່ສາມາດລະບຸຮຸ້ນຈາກຮູບນີ້ໄດ້ ລອງຖ່າຍຮູບໃຫ້ຊັດຂຶ້ນ ຫຼື ປ້ອນສັນຍາລັກຮຸ້ນເອງ';

  @override
  String get whatWeSaw => 'ສິ່ງທີ່ພວກເຮົາເຫັນ';

  @override
  String get chooseCandidateTitle => 'ທ່ານໝາຍເຖິງຮຸ້ນໃດ?';

  @override
  String confidencePercent(int percent) {
    return 'ຄວາມໝັ້ນໃຈ $percent%';
  }

  @override
  String get settings => 'ການຕັ້ງຄ່າ';

  @override
  String get language => 'ພາສາ';

  @override
  String get systemLanguage => 'ຄ່າເລີ່ມຕົ້ນຂອງລະບົບ';

  @override
  String get about => 'ກ່ຽວກັບ';

  @override
  String get disclaimer => 'ແອັບນີ້ໃຫ້ຂໍ້ມູນເທົ່ານັ້ນ ບໍ່ແມ່ນຄຳແນະນຳການລົງທຶນ ຂໍ້ມູນອາດຊັກຊ້າ ຫຼື ບໍ່ຖືກຕ້ອງ';

  @override
  String dataSource(String source) {
    return 'ແຫຼ່ງຂໍ້ມູນ: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'ການຈຳແນກ: $source';
  }

  @override
  String get retry => 'ລອງໃໝ່';

  @override
  String get cancel => 'ຍົກເລີກ';

  @override
  String get ok => 'ຕົກລົງ';

  @override
  String get close => 'ປິດ';

  @override
  String get errorGeneric => 'ມີບາງຢ່າງຜິດພາດ';

  @override
  String get errorSectionUnavailable => 'ບໍ່ສາມາດໂຫຼດສ່ວນນີ້ໄດ້';

  @override
  String get notAvailable => 'ບໍ່ມີຂໍ້ມູນ';

  @override
  String get sectionIdentity => 'ຂໍ້ມູນລະບຸຮຸ້ນ';

  @override
  String get sectionPrice => 'ລາຄາ';

  @override
  String get sectionValuation => 'ການປະເມີນມູນຄ່າ';

  @override
  String get sectionFinancials => 'ຂໍ້ມູນການເງິນ';

  @override
  String get sectionDividend => 'ເງິນປັນຜົນ';

  @override
  String get sectionProfile => 'ຂໍ້ມູນບໍລິສັດ';

  @override
  String get sectionAnalysts => 'ຄຳແນະນຳຂອງນັກວິເຄາະ';

  @override
  String get sectionNews => 'ຂ່າວ';

  @override
  String get sectionRecognition => 'ລາຍລະອຽດການຈຳແນກ';

  @override
  String get labelSymbol => 'ສັນຍາລັກ';

  @override
  String get labelExchange => 'ຕະຫຼາດຫຼັກຊັບ';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'ສະກຸນເງິນ';

  @override
  String get labelCountry => 'ປະເທດ';

  @override
  String get labelIndustry => 'ອຸດສາຫະກຳ';

  @override
  String get labelSector => 'ຂະແໜງທຸລະກິດ';

  @override
  String get labelWebsite => 'ເວັບໄຊ';

  @override
  String get labelIpoDate => 'ວັນທີ IPO';

  @override
  String get labelMarketCap => 'ມູນຄ່າຕາມລາຄາຕະຫຼາດ';

  @override
  String get labelSharesOutstanding => 'ຈຳນວນຮຸ້ນທີ່ອອກຈຳໜ່າຍ';

  @override
  String get labelEmployees => 'ຈຳນວນພະນັກງານ';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'ສຳນັກງານໃຫຍ່';

  @override
  String get labelDescription => 'ຄຳອະທິບາຍ';

  @override
  String get labelLastPrice => 'ລາຄາລ່າສຸດ';

  @override
  String get labelChange => 'ການປ່ຽນແປງ';

  @override
  String get labelOpen => 'ລາຄາເປີດ';

  @override
  String get labelDayHigh => 'ສູງສຸດຂອງມື້';

  @override
  String get labelDayLow => 'ຕ່ຳສຸດຂອງມື້';

  @override
  String get labelPreviousClose => 'ລາຄາປິດກ່ອນໜ້າ';

  @override
  String get labelWeek52High => 'ສູງສຸດໃນຮອບ 52 ອາທິດ';

  @override
  String get labelWeek52Low => 'ຕ່ຳສຸດໃນຮອບ 52 ອາທິດ';

  @override
  String get labelAverageVolume10d => 'ປະລິມານຊື້ຂາຍສະເລ່ຍ (10 ມື້)';

  @override
  String updatedAt(String time) {
    return 'ອັບເດດ $time';
  }

  @override
  String get labelPeTrailing => 'P/E (ຍ້ອນຫຼັງ)';

  @override
  String get labelPeForward => 'P/E (ຄາດການ)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / ກະແສເງິນສົດອິດສະຫຼະ';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'ເບຕ້າ';

  @override
  String get labelRevenueTtm => 'ລາຍຮັບ (TTM)';

  @override
  String get labelNetIncomeTtm => 'ກຳໄລສຸດທິ (TTM)';

  @override
  String get labelGrossMargin => 'ອັດຕາກຳໄລຂັ້ນຕົ້ນ';

  @override
  String get labelOperatingMargin => 'ອັດຕາກຳໄລຈາກການດຳເນີນງານ';

  @override
  String get labelNetMargin => 'ອັດຕາກຳໄລສຸດທິ';

  @override
  String get labelRoe => 'ຜົນຕອບແທນຕໍ່ທຶນຜູ້ຖືຮຸ້ນ';

  @override
  String get labelRoa => 'ຜົນຕອບແທນຕໍ່ຊັບສິນ';

  @override
  String get labelDebtToEquity => 'ໜີ້ສິນ / ທຶນຜູ້ຖືຮຸ້ນ';

  @override
  String get labelCurrentRatio => 'ອັດຕາສ່ວນສະພາບຄ່ອງ';

  @override
  String get labelRevenueGrowth => 'ການເຕີບໂຕຂອງລາຍຮັບ (YoY)';

  @override
  String get labelEpsGrowth => 'ການເຕີບໂຕຂອງ EPS (YoY)';

  @override
  String get labelDividendYield => 'ອັດຕາຜົນຕອບແທນເງິນປັນຜົນ';

  @override
  String get labelDividendPerShare => 'ເງິນປັນຜົນຕໍ່ຮຸ້ນ';

  @override
  String get labelPayoutRatio => 'ອັດຕາການຈ່າຍເງິນປັນຜົນ';

  @override
  String get labelConsensus => 'ມຸມມອງລວມ';

  @override
  String get ratingStrongBuy => 'ຊື້ຢ່າງຍິ່ງ';

  @override
  String get ratingBuy => 'ຊື້';

  @override
  String get ratingHold => 'ຖື';

  @override
  String get ratingSell => 'ຂາຍ';

  @override
  String get ratingStrongSell => 'ຂາຍຢ່າງຍິ່ງ';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'ນັກວິເຄາະ $count ຄົນ');
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'ໄລຍະເວລາ: $period';
  }

  @override
  String get noNews => 'ບໍ່ມີຂ່າວລ່າສຸດ';

  @override
  String get openArticle => 'ເປີດບົດຄວາມ';

  @override
  String get openLinkFailed => 'ບໍ່ສາມາດເປີດລິ້ງໄດ້';

  @override
  String get recognitionSummary => 'ສະຫຼຸບ';

  @override
  String get recognitionEvidence => 'ເຫດຜົນທີ່ພວກເຮົາຄິດແນວນັ້ນ';

  @override
  String get recognitionRawText => 'ຂໍ້ຄວາມທີ່ອ່ານໄດ້ຈາກຮູບພາບ';

  @override
  String get errMissingAnthropicKey =>
      'ຍັງບໍ່ໄດ້ຕັ້ງຄ່າການຈຳແນກຮູບພາບ (ບໍ່ມີ ANTHROPIC_API_KEY) ກະລຸນາປ້ອນສັນຍາລັກຮຸ້ນເອງ';

  @override
  String get errRecognitionUnreachable => 'ບໍ່ສາມາດເຊື່ອມຕໍ່ບໍລິການຈຳແນກຮູບພາບໄດ້ ກະລຸນາກວດສອບການເຊື່ອມຕໍ່ອິນເຕີເນັດ';

  @override
  String errRecognitionHttp(String status) {
    return 'ບໍລິການຈຳແນກຮູບພາບແຈ້ງຂໍ້ຜິດພາດ (HTTP $status)';
  }

  @override
  String get errRecognitionRefused => 'ບໍລິການຈຳແນກຮູບພາບບໍ່ສາມາດປະມວນຜົນຮູບນີ້ໄດ້';

  @override
  String get errRecognitionTruncated => 'ການຕອບກັບຈາກບໍລິການຈຳແນກຮູບພາບຖືກຕັດຂາດ ກະລຸນາລອງໃໝ່';

  @override
  String get errRecognitionBadResponse => 'ໄດ້ຮັບການຕອບກັບທີ່ບໍ່ຄາດຄິດຈາກບໍລິການຈຳແນກຮູບພາບ';

  @override
  String get errRecognitionEmpty => 'ບໍລິການຈຳແນກຮູບພາບສົ່ງການຕອບກັບທີ່ຫວ່າງເປົ່າ';

  @override
  String get errMissingFinnhubKey => 'ຍັງບໍ່ໄດ້ຕັ້ງຄ່າຂໍ້ມູນຕະຫຼາດ (ບໍ່ມີ FINNHUB_API_KEY)';

  @override
  String get errMarketUnreachable => 'ບໍ່ສາມາດເຊື່ອມຕໍ່ບໍລິການຂໍ້ມູນຕະຫຼາດໄດ້ ກະລຸນາກວດສອບການເຊື່ອມຕໍ່ອິນເຕີເນັດ';

  @override
  String get errMarketRateLimited => 'ສົ່ງຄຳຮ້ອງຂໍໄປຫາບໍລິການຂໍ້ມູນຕະຫຼາດຫຼາຍເກີນໄປ ກະລຸນາລໍຖ້າໜຶ່ງນາທີ';

  @override
  String errMarketHttp(String status) {
    return 'ບໍລິການຂໍ້ມູນຕະຫຼາດແຈ້ງຂໍ້ຜິດພາດ (HTTP $status)';
  }

  @override
  String get errMarketBadResponse => 'ໄດ້ຮັບການຕອບກັບທີ່ບໍ່ຄາດຄິດຈາກບໍລິການຂໍ້ມູນຕະຫຼາດ';

  @override
  String errNoQuote(String symbol) {
    return 'ບໍ່ພົບຂໍ້ມູນລາຄາຂອງ $symbol';
  }

  @override
  String errNoProfile(String symbol) {
    return 'ບໍ່ພົບຂໍ້ມູນບໍລິສັດຂອງ $symbol';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'ໂໝດສາທິດຮອງຮັບສະເພາະ $symbols ເພີ່ມ FINNHUB_API_KEY ເພື່ອເບິ່ງຂໍ້ມູນແບບສົດ';
  }

  @override
  String errUnknown(String detail) {
    return 'ມີບາງຢ່າງຜິດພາດ: $detail';
  }

  @override
  String get newSearch => 'ຊອກຫາໃໝ່';

  @override
  String get recentSearches => 'ລ່າສຸດ';

  @override
  String get noRecentSearches => 'ຍັງບໍ່ມີການຊອກຫາລ່າສຸດ';

  @override
  String get clearRecent => 'ລຶບລາຍການລ່າສຸດ';

  @override
  String get greeting => 'ມື້ນີ້ເຮົາຈະເບິ່ງຮຸ້ນໃດດີ?';

  @override
  String get searchHint => 'ສັນຍາລັກ ຫຼື ຊື່ບໍລິສັດ';

  @override
  String get attachImage => 'ແນບຮູບພາບ';

  @override
  String get searchResultsTitle => 'ຜົນການຊອກຫາ';

  @override
  String errNoResults(String query) {
    return 'ບໍ່ພົບຮຸ້ນສຳລັບ “$query”';
  }

  @override
  String get quickBarHint => 'ພິມສັນຍາລັກ ຫຼື ຊື່ບໍລິສັດ…';

  @override
  String get openFullWindow => 'ເປີດໜ້າຕ່າງ';

  @override
  String hotkeyHint(String shortcut) {
    return 'ກົດ $shortcut ຈາກບ່ອນໃດກໍໄດ້ເພື່ອເອີ້ນ WhatStock';
  }

  @override
  String get trayOpen => 'ເປີດ WhatStock';

  @override
  String get trayQuickSearch => 'ຊອກຫາດ່ວນ';

  @override
  String get trayQuit => 'ອອກ';

  @override
  String get appearance => 'ຮູບລັກສະນະ';

  @override
  String get themeSystem => 'ຕາມລະບົບ';

  @override
  String get themeDark => 'ມືດ';

  @override
  String get themeLight => 'ແຈ້ງ';

  @override
  String get back => 'ກັບຄືນ';

  @override
  String get aiSectionTitle => 'ການວິເຄາະດ້ວຍ AI';

  @override
  String get aiIntro =>
      'ພາບລວມລະອຽດທີ່ຂຽນໂດຍ AI: ສະຫຼຸບຂ່າວລ່າສຸດ ທຸລະກິດ ຈຸດແຂງ ຄວາມສ່ຽງ ແລະ ປັດໄຈແອບແຝງ ການປະເມີນມູນຄ່າ ແນວໂນ້ມລາຄາພ້ອມສະຖານະການຈາກມຸມມອງດ້ານຈິດຕະວິທະຍາ ສັງຄົມວິທະຍາ ເຕັກນິກ ແລະ ເສດຖະກິດມະຫາພາກ ພ້ອມທັງສິ່ງທີ່ຄວນຕິດຕາມ';

  @override
  String get aiGenerate => 'ສ້າງບົດວິເຄາະ';

  @override
  String get aiRegenerate => 'ສ້າງໃໝ່';

  @override
  String get aiGenerating => 'ກຳລັງກະກຽມບົດວິເຄາະ… ອາດໃຊ້ເວລາໜຶ່ງຫາສອງນາທີ';

  @override
  String get aiSources => 'ແຫຼ່ງທີ່ມາ';

  @override
  String aiGeneratedAt(String time) {
    return 'ສ້າງເມື່ອ $time';
  }

  @override
  String get aiDisclaimer =>
      'ບົດວິເຄາະທີ່ສ້າງໂດຍ AI ອີງໃສ່ຂໍ້ມູນສາທາລະນະ ແລະ ຂ່າວລ່າສຸດ ອາດມີຂໍ້ຜິດພາດ ຫຼື ລ້າສະໄໝ ແລະ ບໍ່ແມ່ນຄຳແນະນຳການລົງທຶນ';

  @override
  String get errAiNotConfigured => 'ຍັງບໍ່ໄດ້ຕັ້ງຄ່າການວິເຄາະດ້ວຍ AI (ບໍ່ມີ ANTHROPIC_API_KEY)';

  @override
  String get errAiUnreachable => 'ບໍ່ສາມາດເຊື່ອມຕໍ່ບໍລິການ AI ໄດ້ ກະລຸນາກວດສອບການເຊື່ອມຕໍ່ອິນເຕີເນັດ';

  @override
  String errAiHttp(String status) {
    return 'ບໍລິການ AI ແຈ້ງຂໍ້ຜິດພາດ (HTTP $status)';
  }

  @override
  String get errAiRefused => 'ບໍລິການ AI ປະຕິເສດການວິເຄາະຮຸ້ນນີ້';

  @override
  String get errAiBadResponse => 'ໄດ້ຮັບການຕອບກັບທີ່ບໍ່ຄາດຄິດຈາກບໍລິການ AI';

  @override
  String get sectionChart => 'ເສັ້ນສະແດງລາຄາ';

  @override
  String get rangeOneWeek => '1 ອາທິດ';

  @override
  String get rangeOneMonth => '1 ເດືອນ';

  @override
  String get rangeThreeMonths => '3 ເດືອນ';

  @override
  String get rangeOneYear => '1 ປີ';

  @override
  String get rangeFiveYears => '5 ປີ';

  @override
  String get chartUnavailable => 'ແຫຼ່ງຂໍ້ມູນປັດຈຸບັນບໍ່ມີປະຫວັດລາຄາ';

  @override
  String get sectionStatements => 'ບົດລາຍງານການເງິນ (ປະຈຳປີ)';

  @override
  String get labelFiscalYear => 'ສົກປີ';

  @override
  String get labelRevenue => 'ລາຍຮັບ';

  @override
  String get labelNetIncome => 'ກຳໄລສຸດທິ';

  @override
  String get labelTotalAssets => 'ຊັບສິນທັງໝົດ';

  @override
  String get labelTotalLiabilities => 'ໜີ້ສິນທັງໝົດ';

  @override
  String get labelEquity => 'ທຶນຂອງຜູ້ຖືຮຸ້ນ';

  @override
  String get labelOperatingCashFlow => 'ກະແສເງິນສົດຈາກການດຳເນີນງານ';

  @override
  String get statementsUnavailable => 'ບໍ່ມີບົດລາຍງານການເງິນທີ່ເຜີຍແຜ່ສຳລັບຮຸ້ນນີ້';

  @override
  String get launchAtLogin => 'ເປີດເມື່ອເຂົ້າສູ່ລະບົບ';

  @override
  String get hotkeyLabel => 'ປຸ່ມລັດທົ່ວລະບົບ';

  @override
  String get hotkeyRecordHint => 'ຄລິກບ່ອນນີ້ ແລ້ວກົດປຸ່ມປະສົມໃໝ່';

  @override
  String get hotkeyReset => 'ຕັ້ງຄືນເປັນຄ່າເລີ່ມຕົ້ນ';

  @override
  String get pasteImage => 'ວາງຮູບພາບຈາກຄລິບບອດ';

  @override
  String get errClipboardNoImage => 'ບໍ່ມີຮູບພາບໃນຄລິບບອດ';

  @override
  String get favorites => 'ລາຍການທີ່ມັກ';

  @override
  String get addToFavorites => 'ເພີ່ມໃສ່ລາຍການທີ່ມັກ';

  @override
  String get removeFromFavorites => 'ລຶບອອກຈາກລາຍການທີ່ມັກ';

  @override
  String get noFavorites => 'ຍັງບໍ່ມີລາຍການທີ່ມັກ ແຕະຮູບດາວຢູ່ຮຸ້ນເພື່ອເພີ່ມ';

  @override
  String get displayCurrency => 'ສະກຸນເງິນທີ່ສະແດງ';

  @override
  String get displayCurrencyNone => 'ສະເພາະສະກຸນເງິນຂອງຮຸ້ນ';

  @override
  String labelConverted(String currency) {
    return '≈ ເປັນ $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'ອັດຕາ: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'ການອັບເດດ';

  @override
  String currentVersion(String version) {
    return 'ເວີຊັນ $version';
  }

  @override
  String get autoUpdate => 'ຕິດຕັ້ງການອັບເດດອັດຕະໂນມັດ';

  @override
  String get checkForUpdates => 'ກວດຫາການອັບເດດ';

  @override
  String get updateChecking => 'ກຳລັງກວດຫາການອັບເດດ…';

  @override
  String get updateUpToDate => 'ທ່ານກຳລັງໃຊ້ເວີຊັນລ່າສຸດແລ້ວ';

  @override
  String updateAvailable(String version) {
    return 'ມີເວີຊັນ $version ໃຫ້ໃຊ້ແລ້ວ';
  }

  @override
  String get updateDownloading => 'ກຳລັງດາວໂຫຼດການອັບເດດຢູ່ເບື້ອງຫຼັງ…';

  @override
  String get updateDownloaded => 'ການອັບເດດພ້ອມແລ້ວ ຣີສະຕາດເພື່ອຕິດຕັ້ງ';

  @override
  String get updateNow => 'ອັບເດດ';

  @override
  String get restartNow => 'ຣີສະຕາດ';

  @override
  String get updatesViaStore => 'ການອັບເດດຈະມາອັດຕະໂນມັດຜ່ານຮ້ານແອັບ';

  @override
  String get updateCheckFailed => 'ບໍ່ສາມາດກວດຫາການອັບເດດໄດ້';

  @override
  String get subscription => 'ການສະໝັກສະມາຊິກ';

  @override
  String get planTrial => 'ທົດລອງໃຊ້';

  @override
  String get planNormal => 'ທຳມະດາ';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'ບໍ່ມີແພັກເກັດທີ່ໃຊ້ງານຢູ່';

  @override
  String planAnalysesPerMonth(int count) {
    return 'ວິເຄາະໄດ້ $count ຄັ້ງຕໍ່ເດືອນ';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'ທົດລອງໃຊ້ຟຣີ $days ມື້ ພ້ອມການວິເຄາະ $count ຄັ້ງ';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: 'ເຫຼືອເວລາທົດລອງໃຊ້ $days ມື້');
    return '$_temp0';
  }

  @override
  String get trialExpired => 'ໄລຍະທົດລອງໃຊ້ຟຣີຂອງທ່ານສິ້ນສຸດແລ້ວ ເລືອກແພັກເກັດເພື່ອວິເຄາະຕໍ່';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'ເຫຼືອການວິເຄາະ $remaining ຈາກ $total ຄັ້ງໃນຮອບນີ້';
  }

  @override
  String extraCredits(int count) {
    return 'ການວິເຄາະເພີ່ມເຕີມ $count ຄັ້ງ';
  }

  @override
  String renewsOn(String date) {
    return 'ຕໍ່ອາຍຸວັນທີ $date';
  }

  @override
  String get choosePlan => 'ເລືອກແພັກເກັດ';

  @override
  String get currentPlan => 'ແພັກເກັດປັດຈຸບັນ';

  @override
  String get subscribe => 'ສະໝັກສະມາຊິກ';

  @override
  String get perMonth => '/ ເດືອນ';

  @override
  String get extraPacksTitle => 'ຕ້ອງການເພີ່ມບໍ? ຊື້ການວິເຄາະເພີ່ມເຕີມ';

  @override
  String get extraPacksHint => 'ການວິເຄາະເພີ່ມເຕີມບໍ່ມີວັນໝົດອາຍຸ ແລະ ຈະຖືກໃຊ້ຫຼັງຈາກໂຄຕ້າລາຍເດືອນຂອງທ່ານໝົດແລ້ວ';

  @override
  String get buy => 'ຊື້';

  @override
  String get restorePurchases => 'ກູ້ຄືນການຊື້';

  @override
  String get manageSubscription => 'ຈັດການການສະໝັກສະມາຊິກ';

  @override
  String get purchaseSuccess => 'ຂອບໃຈ! ການຊື້ຂອງທ່ານເປີດໃຊ້ງານແລ້ວ';

  @override
  String get purchasePending => 'ການຊື້ກຳລັງລໍຖ້າດຳເນີນການ…';

  @override
  String get purchaseFailed => 'ບໍ່ສາມາດດຳເນີນການຊື້ໃຫ້ສຳເລັດໄດ້';

  @override
  String get purchaseCanceled => 'ຍົກເລີກການຊື້ແລ້ວ';

  @override
  String get billingUnavailable =>
      'ຍັງບໍ່ສາມາດຊື້ໃນແພລດຟອມນີ້ໄດ້ ສະໝັກສະມາຊິກໃນໂທລະສັບ ຫຼື Mac ຂອງທ່ານ ແລ້ວແພັກເກັດຂອງທ່ານຈະໃຊ້ໄດ້ໃນທຸກອຸປະກອນ';

  @override
  String get errQuotaExceeded => 'ທ່ານໃຊ້ການວິເຄາະໃນຮອບນີ້ໝົດແລ້ວ ອັບເກຣດແພັກເກັດ ຫຼື ຊື້ການວິເຄາະເພີ່ມເຕີມ';

  @override
  String get errTrialExpired => 'ໄລຍະທົດລອງໃຊ້ຟຣີຂອງທ່ານສິ້ນສຸດແລ້ວ ເລືອກແພັກເກັດເພື່ອໃຊ້ງານຕໍ່';

  @override
  String get errNoPlan => 'ຕ້ອງມີແພັກເກັດທີ່ໃຊ້ງານຢູ່ຈຶ່ງຈະໃຊ້ການວິເຄາະດ້ວຍ AI ໄດ້';

  @override
  String get viewPlans => 'ເບິ່ງແພັກເກັດ';

  @override
  String get usageTitle => 'ການນຳໃຊ້';

  @override
  String get demoPurchaseNote => 'ການຊຳລະເງິນສາທິດ: ການຊື້ໃນແພລດຟອມນີ້ເປັນພຽງການຈຳລອງ';

  @override
  String get mostPopular => 'ນິຍົມທີ່ສຸດ';

  @override
  String get bestValue => 'ຄຸ້ມຄ່າທີ່ສຸດ';

  @override
  String get planFeaturesCommon =>
      'ການຈຳແນກຮູບພາບ ຂໍ້ມູນແບບສົດ ເສັ້ນສະແດງ ລາຍການທີ່ມັກ ແລະ ຄົບທັງ 120 ພາສາ ມີໃນທຸກແພັກເກັດ ໂຄຕ້າໃຊ້ສຳລັບການວິເຄາະດ້ວຍ AI';

  @override
  String get searchLanguages => 'ຊອກຫາພາສາ…';

  @override
  String get noLanguageMatch => 'ບໍ່ພົບພາສາທີ່ກົງກັນ';

  @override
  String get aiSettings => 'ການວິເຄາະດ້ວຍ AI';

  @override
  String get aiLength => 'ຄວາມຍາວ';

  @override
  String get aiDepthBrief => 'ສັ້ນ';

  @override
  String get aiDepthStandard => 'ມາດຕະຖານ';

  @override
  String get aiDepthDeep => 'ເຈາະເລິກ';

  @override
  String get aiDepthBriefDesc => 'ສະເພາະປະເດັນສຳຄັນ ວ່ອງໄວ';

  @override
  String get aiDepthStandardDesc => 'ບົດລາຍງານສະບັບເຕັມຄົບທຸກຫົວຂໍ້';

  @override
  String get aiDepthDeepDesc => 'ຊອກຫາໃນເວັບຫຼາຍຂຶ້ນ ປຽບທຽບກັບບໍລິສັດຄູ່ແຂ່ງ ແລະ ລົງລາຍລະອຽດເລິກກວ່າ';

  @override
  String aiDepthWords(String min, String max) {
    return 'ປະມານ $min–$max ຄຳ';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'ໃຊ້ການວິເຄາະ $count ຄັ້ງ');
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'ລະດັບຜູ້ອ່ານ';

  @override
  String get aiReaderBeginner => 'ມືໃໝ່';

  @override
  String get aiReaderExperienced => 'ມີປະສົບການ';

  @override
  String get aiReaderBeginnerDesc => 'ພາສາເຂົ້າໃຈງ່າຍ ອະທິບາຍທຸກຄຳສັບເຕັກນິກ';

  @override
  String get aiReaderExperiencedDesc => 'ເນື້ອຫາເຂັ້ມຂຸ້ນຂຶ້ນ ໃຊ້ຄຳສັບການເງິນມາດຕະຖານ';

  @override
  String get aiCounterArgument => 'ຂໍ້ໂຕ້ແຍ້ງທີ່ໜັກແໜ້ນທີ່ສຸດ';

  @override
  String get aiCounterArgumentDesc => 'ບົດສະຫຼຸບຈະປິດທ້າຍດ້ວຍຂໍ້ໂຕ້ແຍ້ງທີ່ດີທີ່ສຸດຕໍ່ຂໍ້ສະຫຼຸບຂອງຕົນເອງສະເໝີ';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ຊອກຫາໃນເວັບໄດ້ສູງສຸດ $count ຄັ້ງຕໍ່ການວິເຄາະຕາມແພັກເກັດຂອງທ່ານ',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'ຄວາມຍາວມາດຕະຖານຕາມແພັກເກັດ: ທຳມະດາ $normal, Pro $pro, Max $max, Ultra $ultra ແບບສັ້ນໃຊ້ໜ້ອຍກວ່າ 2 ຄັ້ງ ແບບເຈາະເລິກໃຊ້ຫຼາຍກວ່າ 2 ຄັ້ງ';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'ຊອກຫາໃນເວັບສູງສຸດ $count ຄັ້ງ');
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'ຊອກຫາໃນເວັບ $count ຄັ້ງຕໍ່ການວິເຄາະ');
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'ຄວາມຍາວນີ້ຕ້ອງໃຊ້ການວິເຄາະ $needed ຄັ້ງ ແຕ່ເຫຼືອພຽງ $left ຄັ້ງ ເລືອກຄວາມຍາວທີ່ສັ້ນກວ່າໃນການຕັ້ງຄ່າ ຫຼື ຮັບການວິເຄາະເພີ່ມ';
  }

  @override
  String get outlookMarketMood => 'ອາລົມຕະຫຼາດ';

  @override
  String get moodVeryPessimistic => 'ມອງໃນແງ່ຮ້າຍຫຼາຍ';

  @override
  String get moodPessimistic => 'ມອງໃນແງ່ຮ້າຍ';

  @override
  String get moodNeutral => 'ເປັນກາງ';

  @override
  String get moodOptimistic => 'ມອງໃນແງ່ດີ';

  @override
  String get moodVeryOptimistic => 'ມອງໃນແງ່ດີຫຼາຍ';

  @override
  String get scenarioBull => 'ກໍລະນີຂາຂຶ້ນ';

  @override
  String get scenarioBase => 'ກໍລະນີພື້ນຖານ';

  @override
  String get scenarioBear => 'ກໍລະນີຂາລົງ';

  @override
  String outlookCurrentPrice(String price) {
    return 'ລາຄາປັດຈຸບັນ: $price';
  }

  @override
  String get outlookKeyLevels => 'ລະດັບລາຄາສຳຄັນ';

  @override
  String get keyLevelSupport => 'ແນວຮັບ';

  @override
  String get keyLevelResistance => 'ແນວຕ້ານ';

  @override
  String get keyLevelAnchor => 'ລາຄາອ້າງອີງ';

  @override
  String get upcomingEvents => 'ເຫດການທີ່ກຳລັງຈະມາເຖິງ';

  @override
  String get outlookChartNote => 'ເປັນຊ່ວງລາຄາໂດຍປະມານ ຄວາມເປັນໄປໄດ້ເປັນພຽງການປະເມີນຄ່າວໆ ບໍ່ແມ່ນການພະຍາກອນ';

  @override
  String get accountTitle => 'ບັນຊີ';

  @override
  String get signIn => 'ເຂົ້າສູ່ລະບົບ';

  @override
  String get signOut => 'ອອກຈາກລະບົບ';

  @override
  String get notSignedIn => 'ຍັງບໍ່ໄດ້ເຂົ້າສູ່ລະບົບ';

  @override
  String get accountBenefit => 'ເຂົ້າສູ່ລະບົບເພື່ອໃຫ້ການສະໝັກສະມາຊິກໃຊ້ໄດ້ໃນທຸກອຸປະກອນຂອງທ່ານ';

  @override
  String get accountSyncedNote => 'ການສະໝັກສະມາຊິກ ແລະ ຈຳນວນການວິເຄາະທີ່ເຫຼືອຂອງທ່ານຈະຄືກັນໃນທຸກອຸປະກອນ';

  @override
  String get signInTitle => 'ເຂົ້າສູ່ລະບົບ WhatStock';

  @override
  String get emailLabel => 'ທີ່ຢູ່ອີເມວ';

  @override
  String get continueWithEmail => 'ສືບຕໍ່ດ້ວຍອີເມວ';

  @override
  String codeSentTo(String email) {
    return 'ພວກເຮົາໄດ້ສົ່ງລະຫັດ 6 ຕົວເລກໄປທີ່ $email ແລ້ວ ລະຫັດໃຊ້ໄດ້ 10 ນາທີ';
  }

  @override
  String get codeLabel => 'ລະຫັດເຂົ້າສູ່ລະບົບ';

  @override
  String get resendCode => 'ສົ່ງລະຫັດໃໝ່';

  @override
  String get useDifferentEmail => 'ໃຊ້ອີເມວອື່ນ';

  @override
  String get errInvalidCode => 'ລະຫັດບໍ່ຖືກຕ້ອງ ຫຼື ໝົດອາຍຸແລ້ວ';

  @override
  String get errInvalidEmail => 'ກະລຸນາປ້ອນທີ່ຢູ່ອີເມວທີ່ຖືກຕ້ອງ';

  @override
  String get errSignInFailed => 'ເຂົ້າສູ່ລະບົບບໍ່ສຳເລັດ ກວດສອບການເຊື່ອມຕໍ່ແລ້ວລອງໃໝ່';

  @override
  String get checkoutWaiting => 'ຊຳລະເງິນໃຫ້ສຳເລັດໃນບຣາວເຊີຂອງທ່ານ ແອັບຈະອັບເດດອັດຕະໂນມັດເມື່ອສຳເລັດ';

  @override
  String get paymentViaStripe => 'ຊຳລະເງິນຢ່າງປອດໄພໃນບຣາວເຊີຜ່ານ Stripe ຍົກເລີກໄດ້ທຸກເວລາ';

  @override
  String get paymentViaStore =>
      'ເກັບເງິນຜ່ານບັນຊີ App Store ຫຼື Google Play ຂອງທ່ານ ຍົກເລີກໄດ້ທຸກເວລາໃນການຕັ້ງຄ່າຂອງຮ້ານ';

  @override
  String get keySpace => 'Space';

  @override
  String get doubleOptionTitle => 'ກົດ Option ສອງເທື່ອ';

  @override
  String get doubleOptionSubtitle => 'ການກົດປຸ່ມ Option ສອງເທື່ອຢ່າງໄວກໍເອີ້ນ WhatStock ໄດ້ເຊັ່ນກັນ';

  @override
  String get doubleOptionPermission =>
      'ເພື່ອໃຫ້ໃຊ້ໄດ້ໃນແອັບອື່ນນຳ ໃຫ້ອະນຸຍາດ WhatStock ໃນ ການຕັ້ງຄ່າລະບົບ → ຄວາມເປັນສ່ວນຕົວ ແລະ ຄວາມປອດໄພ → ການຕິດຕາມການປ້ອນຂໍ້ມູນ ແລ້ວເປີດແອັບຄືນໃໝ່';

  @override
  String get openSystemSettings => 'ເປີດການຕັ້ງຄ່າລະບົບ';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'ກົດ $shortcut ຫຼື ກົດ Option ສອງເທື່ອຈາກບ່ອນໃດກໍໄດ້ເພື່ອເອີ້ນ WhatStock';
  }

  @override
  String get scenarioMostLikely => 'ເປັນໄປໄດ້ຫຼາຍທີ່ສຸດ';

  @override
  String get longTermToday => 'ມື້ນີ້';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(years, locale: localeName, other: '$years ປີ');
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range ຕໍ່ປີ';
  }

  @override
  String longTermLikely(String price) {
    return 'ໜ້າຈະຢູ່ທີ່ $price';
  }

  @override
  String get confidenceLow => 'ຄວາມໝັ້ນໃຈຕ່ຳ';

  @override
  String get confidenceMedium => 'ຄວາມໝັ້ນໃຈປານກາງ';

  @override
  String get confidenceHigh => 'ຄວາມໝັ້ນໃຈສູງ';

  @override
  String get longTermNote =>
      'ຊ່ວງລາຄາໄລຍະຍາວອີງໃສ່ສົມມຸດຕິຖານທີ່ລະບຸໄວ້ ແລະ ຈະກວ້າງຂຶ້ນຕາມເວລາ ລາຄາບໍ່ລວມເງິນປັນຜົນ ເປັນການປະເມີນຄ່າວໆ ບໍ່ແມ່ນການພະຍາກອນ';

  @override
  String get portfolio => 'ພອດໂຟລິໂອ';

  @override
  String get portfolioEmpty => 'ຍັງບໍ່ມີຫຍັງຢູ່ນີ້ ເປີດຮຸ້ນແລ້ວແຕະ “ເພີ່ມໃສ່ພອດໂຟລິໂອ” ເພື່ອຕິດຕາມຮຸ້ນທີ່ທ່ານຖື';

  @override
  String get portfolioLocalNote => 'ເກັບໄວ້ໃນອຸປະກອນນີ້ເທົ່ານັ້ນ ຍອດລວມແປງຄ່າຕາມອັດຕາອ້າງອີງຂອງ ECB ລາຄາອາດຊັກຊ້າ';

  @override
  String get addToPortfolio => 'ເພີ່ມໃສ່ພອດໂຟລິໂອ';

  @override
  String portfolioAddTitle(String symbol) {
    return 'ເພີ່ມ $symbol';
  }

  @override
  String get portfolioQuantity => 'ຈຳນວນຮຸ້ນ';

  @override
  String portfolioBuyPrice(String currency) {
    return 'ລາຄາຕໍ່ຮຸ້ນ ($currency)';
  }

  @override
  String get portfolioBuyDate => 'ວັນທີຊື້';

  @override
  String get portfolioAdd => 'ເພີ່ມ';

  @override
  String get portfolioInvalidNumber => 'ປ້ອນຕົວເລກທີ່ຫຼາຍກວ່າສູນ';

  @override
  String portfolioAdded(String symbol) {
    return 'ເພີ່ມ $symbol ໃສ່ພອດໂຟລິໂອຂອງທ່ານແລ້ວ';
  }

  @override
  String get portfolioTotalValue => 'ມູນຄ່າລວມ';

  @override
  String get portfolioToday => 'ມື້ນີ້';

  @override
  String get portfolioGainLoss => 'ກຳໄລ/ຂາດທຶນ';

  @override
  String get portfolioInvested => 'ເງິນລົງທຶນ';

  @override
  String get portfolioAllocation => 'ສັດສ່ວນການລົງທຶນ';

  @override
  String get portfolioPositions => 'ຮຸ້ນທີ່ຖື';

  @override
  String portfolioAvgCost(String price) {
    return 'ຕົ້ນທຶນສະເລ່ຍ $price';
  }

  @override
  String get portfolioYourPosition => 'ຮຸ້ນທີ່ທ່ານຖື';

  @override
  String get portfolioPurchases => 'ລາຍການຊື້';

  @override
  String get portfolioRemove => 'ລຶບ';

  @override
  String get portfolioExcluded => 'ຮຸ້ນທີ່ບໍ່ມີລາຄາ ຫຼື ອັດຕາແລກປ່ຽນ ຈະບໍ່ຖືກນັບລວມໃນຍອດລວມ';

  @override
  String get priceAlerts => 'ການແຈ້ງເຕືອນລາຄາ';

  @override
  String get setPriceAlert => 'ຕັ້ງການແຈ້ງເຕືອນລາຄາ';

  @override
  String alertDialogTitle(String symbol) {
    return 'ການແຈ້ງເຕືອນລາຄາ · $symbol';
  }

  @override
  String get alertKindAbove => 'ຂຶ້ນສູງກວ່າ';

  @override
  String get alertKindBelow => 'ລົງຕ່ຳກວ່າ';

  @override
  String get alertKindMove => 'ປ່ຽນແປງຫຼາຍໃນມື້ດຽວ';

  @override
  String alertTargetPrice(String currency) {
    return 'ລາຄາ ($currency)';
  }

  @override
  String get alertMovePercent => 'ການປ່ຽນແປງລາຍວັນ (%)';

  @override
  String get alertAlreadyMet => 'ລາຄາຜ່ານລະດັບນີ້ໄປແລ້ວ';

  @override
  String get alertSave => 'ຕັ້ງການແຈ້ງເຕືອນ';

  @override
  String alertCreated(String symbol) {
    return 'ຕັ້ງການແຈ້ງເຕືອນສຳລັບ $symbol ແລ້ວ';
  }

  @override
  String get alertsEmpty => 'ຍັງບໍ່ມີການແຈ້ງເຕືອນລາຄາ ເປີດຮຸ້ນແລ້ວແຕະຮູບກະດິ່ງເພື່ອຕັ້ງຄ່າ';

  @override
  String get alertsNote =>
      'ລະບົບຈະກວດສອບການແຈ້ງເຕືອນທຸກ 5 ນາທີ ໃນຂະນະທີ່ WhatStock ກຳລັງເຮັດວຽກ ໃນຄອມພິວເຕີ ແອັບຈະເຮັດວຽກຕໍ່ໃນແຖບເມນູ ຫຼື ຖາດລະບົບ ສ່ວນໃນໂທລະສັບ ຕອນນີ້ການແຈ້ງເຕືອນຈະມາເຖິງສະເພາະຕອນທີ່ເປີດແອັບຢູ່';

  @override
  String alertDescAbove(String price) {
    return 'ສູງກວ່າ $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'ຕ່ຳກວ່າ $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'ປ່ຽນແປງລາຍວັນ ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'ແຈ້ງເຕືອນເມື່ອ $date ທີ່ລາຄາ $price';
  }

  @override
  String get alertRearm => 'ເປີດໃຊ້ຄືນ';

  @override
  String get alertDelete => 'ລຶບ';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol ຂຶ້ນສູງກວ່າ $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol ລົງຕ່ຳກວ່າ $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol ປ່ຽນແປງ $percent ມື້ນີ້';
  }

  @override
  String alertHitBody(String price) {
    return 'ລາຄາປັດຈຸບັນ: $price';
  }

  @override
  String get alertOpen => 'ເປີດ';

  @override
  String get keepInTrayTitle => 'ເຮັດວຽກຕໍ່ເມື່ອປິດໜ້າຕ່າງ';

  @override
  String get keepInTraySubtitle =>
      'WhatStock ຈະຢູ່ໃນແຖບເມນູ ຫຼື ຖາດລະບົບ ເພື່ອໃຫ້ປຸ່ມລັດ ແລະ ການແຈ້ງເຕືອນລາຄາຍັງເຮັດວຽກຢູ່';

  @override
  String get termsOfUse => 'ຂໍ້ກຳນົດການນຳໃຊ້';

  @override
  String get privacyPolicy => 'ນະໂຍບາຍຄວາມເປັນສ່ວນຕົວ';

  @override
  String get subscriptionLegal =>
      'ການສະໝັກສະມາຊິກຈະຕໍ່ອາຍຸອັດຕະໂນມັດທຸກເດືອນຈົນກວ່າທ່ານຈະຍົກເລີກ ການສະໝັກສະມາຊິກຖືວ່າທ່ານຍອມຮັບຂໍ້ກຳນົດການນຳໃຊ້ ແລະ ນະໂຍບາຍຄວາມເປັນສ່ວນຕົວ';

  @override
  String get deleteAccount => 'ລຶບບັນຊີ';

  @override
  String get deleteAccountTitle => 'ລຶບບັນຊີຂອງທ່ານບໍ?';

  @override
  String get deleteAccountBody =>
      'ບັນຊີຂອງທ່ານ ແລະ ທຸກຢ່າງທີ່ເກັບໄວ້ໃນເຊີບເວີຂອງພວກເຮົາ (ອີເມວ ໂຄຕ້າ ການນຳໃຊ້) ຈະຖືກລຶບຖາວອນ ແລະ ການວິເຄາະທີ່ຍັງບໍ່ໄດ້ໃຊ້ຈະເສຍໄປ ການສະໝັກສະມາຊິກທີ່ຊຳລະຜ່ານບຣາວເຊີຈະຖືກຍົກເລີກທັນທີ ສ່ວນການສະໝັກສະມາຊິກຜ່ານ App Store ຫຼື Google Play ຕ້ອງຍົກເລີກໃນການຕັ້ງຄ່າຂອງຮ້ານ';

  @override
  String get deleteLocalData =>
      'ລຶບຂໍ້ມູນໃນອຸປະກອນນີ້ນຳ (ພອດໂຟລິໂອ ການແຈ້ງເຕືອນ ລາຍການທີ່ມັກ ປະຫວັດ ບົດວິເຄາະທີ່ບັນທຶກໄວ້)';

  @override
  String get deleteAccountConfirm => 'ລຶບຖາວອນ';

  @override
  String get accountDeleted => 'ລຶບບັນຊີຂອງທ່ານແລ້ວ';

  @override
  String get errDeleteAccount => 'ບໍ່ສາມາດລຶບບັນຊີໄດ້ ກວດສອບການເຊື່ອມຕໍ່ແລ້ວລອງໃໝ່';

  @override
  String get aiTrialBriefNote =>
      'ການວິເຄາະໃນໄລຍະທົດລອງເປັນແບບສັ້ນ ແລະ ສ້າງດ້ວຍໂມເດວ AI ທີ່ໄວກວ່າ ເມື່ອມີແພັກເກັດ ທ່ານຈະໄດ້ AI ທີ່ມີຄວາມສາມາດສູງສຸດຂອງພວກເຮົາ ຊອກຫາໃນເວັບຫຼາຍຂຶ້ນ ແລະ ຄວາມຍາວມາດຕະຖານ ແລະ ເຈາະເລິກ';
}
