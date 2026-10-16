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
  String get homeHint =>
      'ໃບຮຸ້ນ ໜ້າຈໍແອັບນາຍໜ້າ ໜັງສືພິມ ຫຼື ໂລໂກ້ບໍລິສັດ – ອັນໃດກໍໄດ້ທີ່ບອກໄດ້ວ່າແມ່ນຮຸ້ນໃດ';

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
  String get noCandidatesBody =>
      'ພວກເຮົາບໍ່ສາມາດລະບຸຮຸ້ນຈາກຮູບນີ້ໄດ້ ລອງຖ່າຍຮູບໃຫ້ຊັດຂຶ້ນ ຫຼື ປ້ອນສັນຍາລັກຮຸ້ນເອງ';

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
  String get disclaimer =>
      'ແອັບນີ້ໃຫ້ຂໍ້ມູນເທົ່ານັ້ນ ບໍ່ແມ່ນຄຳແນະນຳການລົງທຶນ ຂໍ້ມູນອາດຊັກຊ້າ ຫຼື ບໍ່ຖືກຕ້ອງ';

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
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ນັກວິເຄາະ $count ຄົນ',
    );
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
  String get errRecognitionUnreachable =>
      'ບໍ່ສາມາດເຊື່ອມຕໍ່ບໍລິການຈຳແນກຮູບພາບໄດ້ ກະລຸນາກວດສອບການເຊື່ອມຕໍ່ອິນເຕີເນັດ';

  @override
  String errRecognitionHttp(String status) {
    return 'ບໍລິການຈຳແນກຮູບພາບແຈ້ງຂໍ້ຜິດພາດ (HTTP $status)';
  }

  @override
  String get errRecognitionRefused =>
      'ບໍລິການຈຳແນກຮູບພາບບໍ່ສາມາດປະມວນຜົນຮູບນີ້ໄດ້';

  @override
  String get errRecognitionTruncated =>
      'ການຕອບກັບຈາກບໍລິການຈຳແນກຮູບພາບຖືກຕັດຂາດ ກະລຸນາລອງໃໝ່';

  @override
  String get errRecognitionBadResponse =>
      'ໄດ້ຮັບການຕອບກັບທີ່ບໍ່ຄາດຄິດຈາກບໍລິການຈຳແນກຮູບພາບ';

  @override
  String get errRecognitionEmpty =>
      'ບໍລິການຈຳແນກຮູບພາບສົ່ງການຕອບກັບທີ່ຫວ່າງເປົ່າ';

  @override
  String get errMissingFinnhubKey =>
      'ຍັງບໍ່ໄດ້ຕັ້ງຄ່າຂໍ້ມູນຕະຫຼາດ (ບໍ່ມີ FINNHUB_API_KEY)';

  @override
  String get errMarketUnreachable =>
      'ບໍ່ສາມາດເຊື່ອມຕໍ່ບໍລິການຂໍ້ມູນຕະຫຼາດໄດ້ ກະລຸນາກວດສອບການເຊື່ອມຕໍ່ອິນເຕີເນັດ';

  @override
  String get errMarketRateLimited =>
      'ສົ່ງຄຳຮ້ອງຂໍໄປຫາບໍລິການຂໍ້ມູນຕະຫຼາດຫຼາຍເກີນໄປ ກະລຸນາລໍຖ້າໜຶ່ງນາທີ';

  @override
  String errMarketHttp(String status) {
    return 'ບໍລິການຂໍ້ມູນຕະຫຼາດແຈ້ງຂໍ້ຜິດພາດ (HTTP $status)';
  }

  @override
  String get errMarketBadResponse =>
      'ໄດ້ຮັບການຕອບກັບທີ່ບໍ່ຄາດຄິດຈາກບໍລິການຂໍ້ມູນຕະຫຼາດ';

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
  String get errAiNotConfigured =>
      'ຍັງບໍ່ໄດ້ຕັ້ງຄ່າການວິເຄາະດ້ວຍ AI (ບໍ່ມີ ANTHROPIC_API_KEY)';

  @override
  String get errAiUnreachable =>
      'ບໍ່ສາມາດເຊື່ອມຕໍ່ບໍລິການ AI ໄດ້ ກະລຸນາກວດສອບການເຊື່ອມຕໍ່ອິນເຕີເນັດ';

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
  String get statementsUnavailable =>
      'ບໍ່ມີບົດລາຍງານການເງິນທີ່ເຜີຍແຜ່ສຳລັບຮຸ້ນນີ້';

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
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'ເຫຼືອເວລາທົດລອງໃຊ້ $days ມື້',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'ໄລຍະທົດລອງໃຊ້ຟຣີຂອງທ່ານສິ້ນສຸດແລ້ວ ເລືອກແພັກເກັດເພື່ອວິເຄາະຕໍ່';

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
  String get extraPacksHint =>
      'ການວິເຄາະເພີ່ມເຕີມບໍ່ມີວັນໝົດອາຍຸ ແລະ ຈະຖືກໃຊ້ຫຼັງຈາກໂຄຕ້າລາຍເດືອນຂອງທ່ານໝົດແລ້ວ';

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
  String get errQuotaExceeded =>
      'ທ່ານໃຊ້ການວິເຄາະໃນຮອບນີ້ໝົດແລ້ວ ອັບເກຣດແພັກເກັດ ຫຼື ຊື້ການວິເຄາະເພີ່ມເຕີມ';

  @override
  String get errTrialExpired =>
      'ໄລຍະທົດລອງໃຊ້ຟຣີຂອງທ່ານສິ້ນສຸດແລ້ວ ເລືອກແພັກເກັດເພື່ອໃຊ້ງານຕໍ່';

  @override
  String get errNoPlan =>
      'ຕ້ອງມີແພັກເກັດທີ່ໃຊ້ງານຢູ່ຈຶ່ງຈະໃຊ້ການວິເຄາະດ້ວຍ AI ໄດ້';

  @override
  String get viewPlans => 'ເບິ່ງແພັກເກັດ';

  @override
  String get usageTitle => 'ການນຳໃຊ້';

  @override
  String get demoPurchaseNote =>
      'ການຊຳລະເງິນສາທິດ: ການຊື້ໃນແພລດຟອມນີ້ເປັນພຽງການຈຳລອງ';

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
  String get aiDepthDeepDesc =>
      'ຊອກຫາໃນເວັບຫຼາຍຂຶ້ນ ປຽບທຽບກັບບໍລິສັດຄູ່ແຂ່ງ ແລະ ລົງລາຍລະອຽດເລິກກວ່າ';

  @override
  String aiDepthWords(String min, String max) {
    return 'ປະມານ $min–$max ຄຳ';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ໃຊ້ການວິເຄາະ $count ຄັ້ງ',
    );
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
  String get aiReaderExperiencedDesc =>
      'ເນື້ອຫາເຂັ້ມຂຸ້ນຂຶ້ນ ໃຊ້ຄຳສັບການເງິນມາດຕະຖານ';

  @override
  String get aiCounterArgument => 'ຂໍ້ໂຕ້ແຍ້ງທີ່ໜັກແໜ້ນທີ່ສຸດ';

  @override
  String get aiCounterArgumentDesc =>
      'ບົດສະຫຼຸບຈະປິດທ້າຍດ້ວຍຂໍ້ໂຕ້ແຍ້ງທີ່ດີທີ່ສຸດຕໍ່ຂໍ້ສະຫຼຸບຂອງຕົນເອງສະເໝີ';

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
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ຊອກຫາໃນເວັບສູງສຸດ $count ຄັ້ງ',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ຊອກຫາໃນເວັບ $count ຄັ້ງຕໍ່ການວິເຄາະ',
    );
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
  String get outlookChartNote =>
      'ເປັນຊ່ວງລາຄາໂດຍປະມານ ຄວາມເປັນໄປໄດ້ເປັນພຽງການປະເມີນຄ່າວໆ ບໍ່ແມ່ນການພະຍາກອນ';

  @override
  String get accountTitle => 'ບັນຊີ';

  @override
  String get signIn => 'ເຂົ້າສູ່ລະບົບ';

  @override
  String get signOut => 'ອອກຈາກລະບົບ';

  @override
  String get notSignedIn => 'ຍັງບໍ່ໄດ້ເຂົ້າສູ່ລະບົບ';

  @override
  String get accountBenefit =>
      'ເຂົ້າສູ່ລະບົບເພື່ອໃຫ້ການສະໝັກສະມາຊິກໃຊ້ໄດ້ໃນທຸກອຸປະກອນຂອງທ່ານ';

  @override
  String get accountSyncedNote =>
      'ການສະໝັກສະມາຊິກ ແລະ ຈຳນວນການວິເຄາະທີ່ເຫຼືອຂອງທ່ານຈະຄືກັນໃນທຸກອຸປະກອນ';

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
  String get errSignInFailed =>
      'ເຂົ້າສູ່ລະບົບບໍ່ສຳເລັດ ກວດສອບການເຊື່ອມຕໍ່ແລ້ວລອງໃໝ່';

  @override
  String get checkoutWaiting =>
      'ຊຳລະເງິນໃຫ້ສຳເລັດໃນບຣາວເຊີຂອງທ່ານ ແອັບຈະອັບເດດອັດຕະໂນມັດເມື່ອສຳເລັດ';

  @override
  String get paymentViaStripe =>
      'ຊຳລະເງິນຢ່າງປອດໄພໃນບຣາວເຊີຜ່ານ Stripe ຍົກເລີກໄດ້ທຸກເວລາ';

  @override
  String get paymentViaStore =>
      'ເກັບເງິນຜ່ານບັນຊີ App Store ຫຼື Google Play ຂອງທ່ານ ຍົກເລີກໄດ້ທຸກເວລາໃນການຕັ້ງຄ່າຂອງຮ້ານ';

  @override
  String get keySpace => 'Space';

  @override
  String get doubleOptionTitle => 'ກົດ Option ສອງເທື່ອ';

  @override
  String get doubleOptionSubtitle =>
      'ການກົດປຸ່ມ Option ສອງເທື່ອຢ່າງໄວກໍເອີ້ນ WhatStock ໄດ້ເຊັ່ນກັນ';

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
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years ປີ',
    );
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
  String get portfolioEmpty =>
      'ຍັງບໍ່ມີຫຍັງຢູ່ນີ້ ເປີດຮຸ້ນແລ້ວແຕະ “ເພີ່ມໃສ່ພອດໂຟລິໂອ” ເພື່ອຕິດຕາມຮຸ້ນທີ່ທ່ານຖື';

  @override
  String get portfolioLocalNote =>
      'ເກັບໄວ້ໃນອຸປະກອນນີ້ເທົ່ານັ້ນ ຍອດລວມແປງຄ່າຕາມອັດຕາອ້າງອີງຂອງ ECB ລາຄາອາດຊັກຊ້າ';

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
  String get portfolioExcluded =>
      'ຮຸ້ນທີ່ບໍ່ມີລາຄາ ຫຼື ອັດຕາແລກປ່ຽນ ຈະບໍ່ຖືກນັບລວມໃນຍອດລວມ';

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
  String get alertsEmpty =>
      'ຍັງບໍ່ມີການແຈ້ງເຕືອນລາຄາ ເປີດຮຸ້ນແລ້ວແຕະຮູບກະດິ່ງເພື່ອຕັ້ງຄ່າ';

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
  String get errDeleteAccount =>
      'ບໍ່ສາມາດລຶບບັນຊີໄດ້ ກວດສອບການເຊື່ອມຕໍ່ແລ້ວລອງໃໝ່';

  @override
  String get aiTrialBriefNote =>
      'ການວິເຄາະໃນໄລຍະທົດລອງເປັນແບບສັ້ນ ແລະ ສ້າງດ້ວຍໂມເດວ AI ທີ່ໄວກວ່າ ເມື່ອມີແພັກເກັດ ທ່ານຈະໄດ້ AI ທີ່ມີຄວາມສາມາດສູງສຸດຂອງພວກເຮົາ ຊອກຫາໃນເວັບຫຼາຍຂຶ້ນ ແລະ ຄວາມຍາວມາດຕະຖານ ແລະ ເຈາະເລິກ';

  @override
  String get billingMonthly => 'ລາຍເດືອນ';

  @override
  String get billingYearly => 'ລາຍປີ';

  @override
  String get yearlyDiscount => 'ຟຣີ 2 ເດືອນ';

  @override
  String get perYear => '/ ປີ';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price ຕໍ່ເດືອນ';
  }

  @override
  String get subscriptionLegalYearly =>
      'ການສະໝັກສະມາຊິກລາຍປີຈະຕໍ່ອາຍຸອັດຕະໂນມັດທຸກປີຈົນກວ່າທ່ານຈະຍົກເລີກ ການສະໝັກສະມາຊິກຖືວ່າທ່ານຍອມຮັບຂໍ້ກຳນົດການນຳໃຊ້ ແລະ ນະໂຍບາຍຄວາມເປັນສ່ວນຕົວ';

  @override
  String get myAnalyses => 'ການວິເຄາະຂອງຂ້ອຍ';

  @override
  String get navAlerts => 'ແຈ້ງເຕືອນ';

  @override
  String get inviteTitle => 'ເວີຊັນຕົວຢ່າງແບບປິດ';

  @override
  String get inviteBody =>
      'ຕອນນີ້ WhatStock ໃຊ້ໄດ້ສະເພາະຜູ້ທີ່ໄດ້ຮັບເຊີນເທົ່ານັ້ນ ກະລຸນາປ້ອນລະຫັດເຊີນທີ່ທ່ານໄດ້ຮັບ';

  @override
  String get inviteCodeLabel => 'ລະຫັດເຊີນ';

  @override
  String get inviteContinue => 'ສືບຕໍ່';

  @override
  String get inviteInvalid => 'ລະຫັດເຊີນນີ້ບໍ່ຖືກຕ້ອງ';

  @override
  String get inviteExpired =>
      'ຄຳເຊີນນີ້ໝົດອາຍຸແລ້ວ ກະລຸນາຂໍລະຫັດໃໝ່ຈາກຜູ້ທີ່ເຊີນທ່ານ';

  @override
  String get inviteDeviceLimit =>
      'ລະຫັດເຊີນນີ້ຖືກໃຊ້ໃນອຸປະກອນຄົບຈຳນວນສູງສຸດແລ້ວ';

  @override
  String get previewConfidential => 'ເວີຊັນຕົວຢ່າງລັບ';

  @override
  String get errPreviewDailyLimit =>
      'ການວິເຄາະມື້ນີ້ຂອງເວີຊັນຕົວຢ່າງນີ້ຄົບກຳນົດແລ້ວ ກະລຸນາລອງໃໝ່ມື້ອື່ນ';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ຊົ່ວໂມງກ່ອນ',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ມື້ກ່ອນ',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'ອັບເດດການວິເຄາະນີ້ບໍ?';

  @override
  String staleBody(String age) {
    return 'ການວິເຄາະນີ້ຖືກສ້າງເມື່ອ $age. ນັບແຕ່ນັ້ນມາ ລາຄາ, ຂ່າວ ແລະ ຜົນປະກອບການອາດມີການປ່ຽນແປງ.';
  }

  @override
  String get staleKeep => 'ສະແດງອັນກ່ອນໜ້າ';

  @override
  String get staleRefresh => 'ສ້າງອັນໃໝ່';

  @override
  String seeAll(int count) {
    return 'ເບິ່ງທັງໝົດ ($count)';
  }

  @override
  String get searchAnalyses => 'ຊອກຫາການວິເຄາະຂອງທ່ານ';

  @override
  String get deleteAnalysis => 'ລຶບ';

  @override
  String analysisDeleted(String symbol) {
    return 'ລຶບການວິເຄາະ $symbol ແລ້ວ';
  }

  @override
  String get keyLevelAlertHint =>
      'ແຕະລະດັບລາຄາເພື່ອຮັບການແຈ້ງເຕືອນເມື່ອລາຄາໄປຮອດລະດັບນັ້ນ';

  @override
  String get shareAnalysisTitle => 'ແບ່ງປັນບົດວິເຄາະ';

  @override
  String get shareAsImage => 'ແບ່ງປັນເປັນຮູບພາບ';

  @override
  String get shareAsText => 'ແບ່ງປັນເປັນຂໍ້ຄວາມ';

  @override
  String get shareCardFooter => 'ສ້າງດ້ວຍ WhatStock';

  @override
  String get shareCardDisclaimer =>
      'ການວິເຄາະດ້ວຍ AI · ບໍ່ແມ່ນຄຳແນະນຳການລົງທຶນ';

  @override
  String get referralTitle => 'ເຊີນໝູ່';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ການວິເຄາະເພີ່ມເຕີມ $count ຄັ້ງ',
    );
    return 'ແບ່ງປັນລະຫັດຂອງທ່ານ ໝູ່ຂອງທ່ານຈະໄດ້ຮັບ$_temp0ທັນທີ ແລະ ທ່ານກໍຈະໄດ້ຮັບເທົ່າກັນຫຼັງຈາກການວິເຄາະຄັ້ງທຳອິດຂອງລາວ';
  }

  @override
  String get referralYourCode => 'ລະຫັດຂອງທ່ານ';

  @override
  String referralStats(int invited, int rewarded) {
    return 'ເຊີນແລ້ວ: $invited · ໄດ້ລາງວັນ: $rewarded';
  }

  @override
  String get referralHaveCode => 'ມີລະຫັດຈາກໝູ່ບໍ?';

  @override
  String get referralRedeem => 'ໃຊ້ລະຫັດ';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ເພີ່ມການວິເຄາະເພີ່ມເຕີມ $count ຄັ້ງແລ້ວ ຍິນດີຕ້ອນຮັບ!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown => 'ບໍ່ມີລະຫັດນີ້ ກະລຸນາກວດສອບ ແລ້ວລອງໃໝ່';

  @override
  String get referralErrOwn => 'ທ່ານບໍ່ສາມາດໃຊ້ລະຫັດຂອງຕົນເອງໄດ້';

  @override
  String get referralErrAlready => 'ທ່ານໄດ້ໃຊ້ລະຫັດຂອງໝູ່ແລ້ວ';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ການວິເຄາະເພີ່ມເຕີມ $count ຄັ້ງ',
    );
    return 'ຂ້ອຍວິເຄາະຮຸ້ນດ້ວຍ WhatStock: ຖ່າຍຮູບຮຸ້ນ ແລ້ວ AI ຈະອະທິບາຍໃຫ້ ໃຊ້ລະຫັດຂອງຂ້ອຍ $code ເພື່ອຮັບ$_temp0';
  }

  @override
  String get referralCopied => 'ສຳເນົາລະຫັດແລ້ວ';

  @override
  String get onboardTitle1 => 'ຖ່າຍຮູບຮຸ້ນ';

  @override
  String get onboardBody1 =>
      'ພຽງໜ້າຈໍແອັບນາຍໜ້າ, ໜັງສືພິມ ຫຼື ໂລໂກ້ບໍລິສັດກໍພຽງພໍ: WhatStock ຈະຈົດຈຳຮຸ້ນ ແລະ ສະແດງລາຄາ, ກຣາບ ແລະ ຕົວເລກສຳຄັນຂອງຮຸ້ນນັ້ນ.';

  @override
  String get onboardTitle2 => 'ເຂົ້າໃຈໄດ້ໃນບໍ່ເທົ່າໃດນາທີ';

  @override
  String get onboardBody2 =>
      'ການວິເຄາະດ້ວຍ AI ອະທິບາຍວ່າຫຍັງເຮັດໃຫ້ຮຸ້ນເໜັງຕີງ, ຄວາມສ່ຽງ, ການປະເມີນມູນຄ່າ ແລະ ສາມສະຖານະການວ່າລາຄາອາດໄປທາງໃດ ພ້ອມແຫຼ່ງຂໍ້ມູນ ແລະ ເປັນພາສາຂອງທ່ານ.';

  @override
  String get onboardTitle3 => 'ຕິດຕາມທຸກຄວາມເຄື່ອນໄຫວ';

  @override
  String get onboardBody3 =>
      'ລາຍການທີ່ມັກ, ພອດໂຟລິໂອຂອງທ່ານ ແລະ ການແຈ້ງເຕືອນລາຄາ ຈະແຈ້ງໃຫ້ທ່ານຮູ້ສະເໝີ. ການວິເຄາະຂອງທ່ານຢູ່ໃນອຸປະກອນຂອງທ່ານ ພ້ອມເປີດຄືນໄດ້ທຸກເວລາ.';

  @override
  String get onboardNext => 'ຕໍ່ໄປ';

  @override
  String get onboardStart => 'ເລີ່ມຕົ້ນ';

  @override
  String get onboardSkip => 'ຂ້າມ';

  @override
  String changesTitle(String date) {
    return 'ນັບແຕ່ການວິເຄາະກ່ອນໜ້າ ($date)';
  }

  @override
  String get changesPrice => 'ລາຄາ';

  @override
  String get changesNoMajor => 'ແນວໂນ້ມບໍ່ໄດ້ປ່ຽນແປງຢ່າງມີນັຍສຳຄັນ.';

  @override
  String get changesPreviousSummary => 'ສະຫຼຸບກ່ອນໜ້າ';

  @override
  String get telemetryTitle => 'ຊ່ວຍປັບປຸງ WhatStock';

  @override
  String get telemetryBody =>
      'ແບ່ງປັນສະຖິຕິການນຳໃຊ້ແບບບໍ່ລະບຸຕົວຕົນ ແລະ ລາຍງານການຂັດຂ້ອງ: ຄຸນສົມບັດໃດທີ່ຖືກນຳໃຊ້ ແລະ ມີຫຍັງຜິດພາດ. ບໍ່ມີຮຸ້ນ, ການວິເຄາະ ຫຼື ຂໍ້ມູນສ່ວນຕົວຂອງທ່ານເດັດຂາດ. ທ່ານສາມາດປ່ຽນແປງສິ່ງນີ້ໄດ້ທຸກເວລາໃນການຕັ້ງຄ່າ.';

  @override
  String get telemetryAllow => 'ອະນຸຍາດ';

  @override
  String get telemetryDecline => 'ບໍ່, ຂອບໃຈ';

  @override
  String get telemetrySetting => 'ສະຖິຕິແບບບໍ່ລະບຸຕົວຕົນ ແລະ ລາຍງານການຂັດຂ້ອງ';

  @override
  String get telemetrySettingHint =>
      'ຄວາມຖີ່ໃນການນຳໃຊ້ຄຸນສົມບັດ ແລະ ລາຍງານຂໍ້ຜິດພາດ ໂດຍບໍ່ມີຂໍ້ມູນສ່ວນຕົວ ຫຼື ເນື້ອຫາຂອງການຊອກຫາ ແລະ ການວິເຄາະຂອງທ່ານ.';

  @override
  String get askButton => 'ຖາມກ່ຽວກັບການວິເຄາະນີ້';

  @override
  String askTitle(String symbol) {
    return 'ຄຳຖາມກ່ຽວກັບ $symbol';
  }

  @override
  String get askIntro =>
      'ຖາມຫຍັງກໍໄດ້ກ່ຽວກັບການວິເຄາະ: ຄວາມສ່ຽງໃດໜຶ່ງໝາຍຄວາມວ່າແນວໃດ, ຫຍັງອາດປ່ຽນແປງແນວໂນ້ມ, ຕົວເລກໃດໜຶ່ງຄິດໄລ່ມາແນວໃດ ຄຳຕອບອີງໃສ່ການວິເຄາະນີ້ ແລະ ບໍ່ແມ່ນຄຳແນະນຳການລົງທຶນ';

  @override
  String get askHint => 'ພິມຄຳຖາມ…';

  @override
  String get askSend => 'ສົ່ງ';

  @override
  String get askThinking => 'ກຳລັງຄິດ…';

  @override
  String get askSuggest1 => 'ຄວາມສ່ຽງໃຫຍ່ທີ່ສຸດແມ່ນຫຍັງ?';

  @override
  String get askSuggest2 => 'ຫຍັງອາດປ່ຽນແປງແນວໂນ້ມ?';

  @override
  String get askSuggest3 => 'ອະທິບາຍແບບງ່າຍໆ';

  @override
  String get askMaxReached =>
      'ນີ້ແມ່ນຄຳຖາມສຸດທ້າຍສຳລັບການວິເຄາະນີ້ ສ້າງບົດວິເຄາະໃໝ່ເພື່ອຖາມຕື່ມ';

  @override
  String get errAskLimit =>
      'ທ່ານໃຊ້ຄຳຖາມຄົບກຳນົດຂອງມື້ນີ້ແລ້ວ ກະລຸນາລອງໃໝ່ມື້ອື່ນ';

  @override
  String get eventTomorrow => 'ມື້ອື່ນ';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'ອີກ $days ມື້',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'ຜົນປະກອບການລາຍໄຕມາດ';

  @override
  String get eventBeforeOpen => 'ກ່ອນຕະຫຼາດເປີດ';

  @override
  String get eventAfterClose => 'ຫຼັງຕະຫຼາດປິດ';

  @override
  String eventEpsEstimate(String value) {
    return 'ຄາດການ EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'ຈາກການວິເຄາະຂອງທ່ານ';

  @override
  String get eventsHint =>
      'ວັນທີປະກາດຜົນປະກອບການຂອງຫຸ້ນທີ່ມັກ ແລະ ຫຸ້ນໃນພອດໂຟລິໂອຂອງທ່ານໃນ 90 ມື້ຂ້າງໜ້າ ແລະ ເຫດການທີ່ມີວັນທີທີ່ການວິເຄາະຂອງທ່ານໝາຍໄວ້.';

  @override
  String get eventsEmpty =>
      'ບໍ່ມີເຫດການທີ່ມີວັນທີໃນ 90 ມື້ຂ້າງໜ້າ. ເພີ່ມລາຍການທີ່ມັກ ຫຼື ຫຸ້ນໃນພອດໂຟລິໂອ ເພື່ອເບິ່ງວັນທີປະກາດຜົນປະກອບການຢູ່ທີ່ນີ້.';

  @override
  String get compareTitle => 'ປຽບທຽບ';

  @override
  String get compareAdd => 'ເພີ່ມຮຸ້ນ';

  @override
  String get compareRemove => 'ລຶບອອກ';

  @override
  String get compareTickerHint => 'ສັນຍາລັກ, ເຊັ່ນ MSFT';

  @override
  String get compareHint =>
      'ຕົວເລກສຳຄັນຢູ່ຂ້າງກັນ; ຄ່າທີ່ດີທີ່ສຸດໃນແຕ່ລະແຖວຖືກເນັ້ນໄວ້. ຈຳນວນເງິນເປັນສະກຸນເງິນຂອງແຕ່ລະຮຸ້ນ.';

  @override
  String get compareNoAnalysis => 'ຍັງບໍ່ມີການວິເຄາະ';

  @override
  String get portfolioDividends => 'ເງິນປັນຜົນຕໍ່ປີ';

  @override
  String portfolioDividendYield(String percent) {
    return 'ຜົນຕອບແທນ $percent';
  }

  @override
  String get portfolioDividendNote =>
      'ເງິນປັນຜົນຕໍ່ປີທີ່ຄາດໄວ້ ອີງໃສ່ເງິນປັນຜົນທີ່ຈ່າຍໃນ 12 ເດືອນຜ່ານມາ ການຈ່າຍໃນອະນາຄົດບໍ່ມີການຮັບປະກັນ';

  @override
  String positionDividend(String amount) {
    return 'ເງິນປັນຜົນ: $amount ຕໍ່ປີ';
  }

  @override
  String get chartAvgCost => 'ສະເລ່ຍຂອງທ່ານ';

  @override
  String get chartAlertLevel => 'ແຈ້ງເຕືອນ';

  @override
  String get marketsToday => 'ຕະຫຼາດມື້ນີ້';

  @override
  String get notesTitle => 'ບັນທຶກຂອງຂ້ອຍ';

  @override
  String get notesHint =>
      'ເປັນຫຍັງທ່ານຈຶ່ງຊື້ ທ່ານກຳລັງຕິດຕາມຫຍັງ ແລະ ຫຍັງຈະເຮັດໃຫ້ທ່ານຂາຍ?';

  @override
  String get notesInfo =>
      'ເກັບໄວ້ໃນອຸປະກອນນີ້ເທົ່ານັ້ນ ການວິເຄາະດ້ວຍ AI ຈະພິຈາລະນາບັນທຶກຂອງທ່ານ';

  @override
  String notesSaved(String date) {
    return 'ບັນທຶກແລ້ວ $date';
  }

  @override
  String get peersTitle => 'ບໍລິສັດທີ່ຄ້າຍຄືກັນ';

  @override
  String get portfolioExport => 'ສົ່ງອອກເປັນ CSV';

  @override
  String get portfolioImport => 'ນຳເຂົ້າຈາກ CSV';

  @override
  String get portfolioImportHint =>
      'ວາງການຊື້ໜຶ່ງລາຍການຕໍ່ແຖວ: ສັນຍາລັກຮຸ້ນ, ຈຳນວນ, ລາຄາ, ສະກຸນເງິນ, ວັນທີ (YYYY-MM-DD). ຖັນສາມາດແຍກດ້ວຍເຄື່ອງໝາຍຈຸດ (,), ຈຸດໂຄ່ງ (;) ຫຼື ແທັບ; ແຖວຫົວຂໍ້ບໍ່ບັງຄັບ.';

  @override
  String get portfolioImportButton => 'ນຳເຂົ້າ';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ເພີ່ມການຊື້ $count ລາຍການແລ້ວ',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ຂ້າມ $count ແຖວແລ້ວ',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'ພອດໂຟລິໂອ, ລາຍການທີ່ມັກ, ການແຈ້ງເຕືອນລາຄາ ແລະ ບັນທຶກ ຈະຊິງຄ໌ໃນທຸກອຸປະກອນຂອງທ່ານ';

  @override
  String syncLast(String time) {
    return 'ຊິງຄ໌ຫຼ້າສຸດ $time';
  }

  @override
  String get syncNow => 'ຊິງຄ໌ດຽວນີ້';

  @override
  String get syncFailed => 'ຊິງຄ໌ບໍ່ສຳເລັດ. ຈະລອງໃໝ່ອັດຕະໂນມັດ';

  @override
  String get alertEmailTitle => 'ອີເມວເມື່ອການແຈ້ງເຕືອນເກີດຂຶ້ນ';

  @override
  String get alertEmailOn =>
      'ພວກເຮົາກວດສອບການແຈ້ງເຕືອນຂອງທ່ານທຸກໆສອງສາມນາທີ ແລະ ສົ່ງອີເມວຫາທ່ານ ເຖິງແມ່ນວ່າແອັບຈະປິດຢູ່ກໍຕາມ';

  @override
  String get alertEmailSignIn =>
      'ເຂົ້າສູ່ລະບົບດ້ວຍອີເມວຂອງທ່ານໃນການຕັ້ງຄ່າ ເພື່ອຮັບການແຈ້ງເຕືອນທາງອີເມວ ເຖິງແມ່ນວ່າແອັບຈະປິດຢູ່ກໍຕາມ';

  @override
  String get portfolioHistory => 'ມູນຄ່າຕາມເວລາ';

  @override
  String get portfolioReviewTitle => 'ການກວດສອບພອດໂຟລິໂອດ້ວຍ AI';

  @override
  String get portfolioReviewIntro =>
      'AI ຈະເບິ່ງພອດໂຟລິໂອທັງໝົດຂອງທ່ານ: ການກະຈຸກຕົວ, ຄວາມສ່ຽງດ້ານຂະແໜງ ແລະ ສະກຸນເງິນ, ຄວາມສ່ຽງທີ່ຫຸ້ນຂອງທ່ານມີຮ່ວມກັນ ແລະ ເງິນປັນຜົນ. ໃຊ້ການວິເຄາະ 1 ຄັ້ງ.';

  @override
  String get portfolioReviewButton => 'ກວດສອບພອດໂຟລິໂອຂອງຂ້ອຍ';

  @override
  String get portfolioReviewAgain => 'ກວດສອບອີກຄັ້ງ';

  @override
  String get portfolioReviewWorking => 'ກຳລັງກວດສອບພອດໂຟລິໂອຂອງທ່ານ…';

  @override
  String get digestTitle => 'ສະຫຼຸບປະຈຳອາທິດທາງອີເມວ';

  @override
  String get digestHint =>
      'ທຸກວັນຈັນ: ລາຍການທີ່ມັກ ແລະ ພອດໂຟລິໂອຂອງທ່ານເຄື່ອນໄຫວແນວໃດໃນອາທິດແລ້ວ ແລະ ວັນປະກາດຜົນປະກອບການທີ່ຈະມາເຖິງ';

  @override
  String get benchmarkTitle => 'ທຽບກັບ S&P 500';

  @override
  String get benchmarkYours => 'ການຊື້ຂອງທ່ານ';

  @override
  String get benchmarkIndex => 'ຈຳນວນດຽວກັນໃນ S&P 500';

  @override
  String benchmarkAhead(String points) {
    return 'ດີກວ່າດັດຊະນີ $points ຈຸດເປີເຊັນ';
  }

  @override
  String benchmarkBehind(String points) {
    return 'ຕ່ຳກວ່າດັດຊະນີ $points ຈຸດເປີເຊັນ';
  }

  @override
  String get benchmarkHint =>
      'ຄືກັບວ່າການຊື້ແຕ່ລະຄັ້ງໄດ້ລົງທຶນໃນກອງທຶນດັດຊະນີ S&P 500 ໃນມື້ດຽວກັນ. ບໍ່ລວມເງິນປັນຜົນ; ຜົນຕອບແທນໃນອະດີດບໍ່ໄດ້ຄາດຄະເນອະນາຄົດ.';

  @override
  String get portfolioSell => 'ຂາຍ';

  @override
  String portfolioSellTitle(String symbol) {
    return 'ຂາຍ $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'ລາຄາຂາຍຕໍ່ຮຸ້ນ ($currency)';
  }

  @override
  String get portfolioSellDate => 'ວັນທີຂາຍ';

  @override
  String get portfolioSellAll => 'ທັງໝົດ';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'ທ່ານມີ $quantity';
  }

  @override
  String get portfolioSold => 'ຂາຍແລ້ວ';

  @override
  String get portfolioRealized => 'ທີ່ເກີດຂຶ້ນຈິງ';

  @override
  String get portfolioClosed => 'ຮຸ້ນທີ່ປິດແລ້ວ';

  @override
  String get portfolioClosedNote => 'ຂາຍຮຸ້ນທັງໝົດແລ້ວ';

  @override
  String get portfolioTransactions => 'ທຸລະກຳ';

  @override
  String get portfolioRealizedByYear => 'ກຳໄລທີ່ເກີດຂຶ້ນຈິງຕາມປີ';

  @override
  String get portfolioRealizedHint =>
      'ການຂາຍຈະຖືກຈັບຄູ່ກັບການຊື້ທີ່ເກົ່າທີ່ສຸດຂອງທ່ານກ່ອນ (FIFO), ແປງຕາມອັດຕາແລກປ່ຽນຂອງມື້ນີ້. ສຳລັບການຍື່ນພາສີ, ໃຫ້ໃຊ້ໃບແຈ້ງຍອດຈາກນາຍໜ້າຂອງທ່ານ.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'ຫຼັງຈາກການວິເຄາະນີ້ ໄດ້ມີການປະກາດຜົນປະກອບການປະຈຳໄຕມາດໃໝ່ ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'ຜົນປະກອບການໃໝ່';

  @override
  String get portfolioImportBrokers =>
      'ການສົ່ງອອກຈາກ Revolut, Trading 212 ແລະ Interactive Brokers ກໍຖືກຮັບຮູ້ເຊັ່ນກັນ ລວມທັງການຂາຍ; ເງິນປັນຜົນ ແລະ ການຝາກເງິນຈະຖືກຂ້າມ.';

  @override
  String get portfolioImportFile => 'ເລືອກໄຟລ໌';

  @override
  String offlineBanner(String time) {
    return 'ບໍ່ມີການເຊື່ອມຕໍ່ – ກຳລັງສະແດງຂໍ້ມູນທີ່ບັນທຶກໄວ້ຫຼ້າສຸດ ($time)';
  }

  @override
  String get glossMarketCap =>
      'ມູນຄ່າຂອງບໍລິສັດທັງໝົດໃນຕະຫຼາດຫຼັກຊັບ: ລາຄາຮຸ້ນ × ຈຳນວນຮຸ້ນ.';

  @override
  String get glossSharesOutstanding =>
      'ຈຳນວນຮຸ້ນທີ່ບໍລິສັດອອກຈຳໜ່າຍ. ຖ້າມັນເພີ່ມຂຶ້ນ ແຕ່ລະຮຸ້ນຈະເປັນເຈົ້າຂອງສ່ວນທີ່ນ້ອຍລົງ; ການຊື້ຮຸ້ນຄືນຈະເຮັດໃຫ້ມັນຫຼຸດລົງ.';

  @override
  String get glossPeTrailing =>
      'ລາຄາ ÷ ກຳໄລຕໍ່ຮຸ້ນໃນ 12 ເດືອນຜ່ານມາ: ທ່ານກຳລັງຈ່າຍສຳລັບກຳໄລປັດຈຸບັນຈັກປີ. ຕ່ຳກວ່າໝາຍເຖິງຖືກກວ່າ ແຕ່ບໍລິສັດທີ່ເຕີບໂຕໄວມັກມີ P/E ສູງ.';

  @override
  String get glossPeForward =>
      'ຄືກັບ P/E ແຕ່ໃຊ້ກຳໄລທີ່ນັກວິເຄາະຄາດໄວ້ສຳລັບ 12 ເດືອນຂ້າງໜ້າ. ຖ້າຕ່ຳກວ່າ P/E ຍ້ອນຫຼັງ ໝາຍຄວາມວ່າຄາດວ່າກຳໄລຈະເຕີບໂຕ.';

  @override
  String get glossPb =>
      'ລາຄາ ÷ ມູນຄ່າທາງບັນຊີ (ຊັບສິນລົບໜີ້ສິນ) ຕໍ່ຮຸ້ນ. ປະມານ 1 ໝາຍຄວາມວ່າຕະຫຼາດໃຫ້ມູນຄ່າບໍລິສັດເທົ່າກັບສິ່ງທີ່ມັນມີຢູ່ໃນເອກະສານ.';

  @override
  String get glossPs =>
      'ມູນຄ່າຕະຫຼາດ ÷ ລາຍຮັບຕໍ່ປີ. ເປັນປະໂຫຍດສຳລັບບໍລິສັດທີ່ຍັງມີກຳໄລໜ້ອຍ ຫຼື ບໍ່ມີ; ໃຫ້ປຽບທຽບພາຍໃນອຸດສາຫະກຳດຽວກັນ.';

  @override
  String get glossEvToFcf =>
      'ມູນຄ່າບໍລິສັດລວມທັງໜີ້ (EV) ÷ ເງິນສົດທີ່ມັນສ້າງໄດ້ໃນໜຶ່ງປີຫຼັງການລົງທຶນ. ຕ່ຳກວ່າໝາຍຄວາມວ່າທ່ານໄດ້ເງິນສົດຫຼາຍກວ່າສຳລັບລາຄາທີ່ຈ່າຍ.';

  @override
  String get glossPeg =>
      'P/E ÷ ການເຕີບໂຕຂອງກຳໄລຕໍ່ປີທີ່ຄາດໄວ້ (%). ປະມານ 1 ມັກຖືວ່າສົມເຫດສົມຜົນ; ມັນເບິ່ງ P/E ໂດຍຄຳນຶງເຖິງການເຕີບໂຕ.';

  @override
  String get glossEps =>
      'ກຳໄລຕໍ່ຮຸ້ນໃນ 12 ເດືອນຜ່ານມາ. EPS ທີ່ເພີ່ມຂຶ້ນທຸກປີແມ່ນໜຶ່ງໃນສັນຍານທີ່ແຂງແຮງທີ່ສຸດຂອງບໍລິສັດທີ່ມີສຸຂະພາບດີ.';

  @override
  String get glossBeta =>
      'ຮຸ້ນມັກເໜັງຕີງໄປກັບຕະຫຼາດຫຼາຍປານໃດ: 1 = ຄືຕະຫຼາດ, 1,5 = ແກວ່ງແຮງກວ່າປະມານ 50%, ຕ່ຳກວ່າ 1 = ສະຫງົບກວ່າ.';

  @override
  String get glossRevenueTtm =>
      'ຍອດຂາຍທັງໝົດໃນ 12 ເດືອນຜ່ານມາ ກ່ອນຫັກຄ່າໃຊ້ຈ່າຍໃດໆ.';

  @override
  String get glossNetIncomeTtm =>
      'ກຳໄລທີ່ເຫຼືອຫຼັງຈາກຫັກຄ່າໃຊ້ຈ່າຍທັງໝົດ ດອກເບ້ຍ ແລະ ພາສີ ໃນ 12 ເດືອນຜ່ານມາ.';

  @override
  String get glossGrossMargin =>
      'ສ່ວນຂອງລາຍຮັບທີ່ເຫຼືອຫຼັງຈາກຕົ້ນທຶນໂດຍກົງຂອງສິນຄ້າ. ອັດຕາສູງມັກສະແດງເຖິງອຳນາດໃນການກຳນົດລາຄາ.';

  @override
  String get glossOperatingMargin =>
      'ສ່ວນຂອງລາຍຮັບທີ່ເຫຼືອຫຼັງຈາກຄ່າດຳເນີນທຸລະກິດ (ເງິນເດືອນ, ຄ່າເຊົ່າ, ການຕະຫຼາດ) ກ່ອນດອກເບ້ຍ ແລະ ພາສີ.';

  @override
  String get glossNetMargin =>
      'ສ່ວນຂອງລາຍຮັບທີ່ກາຍເປັນກຳໄລສຸດທ້າຍ. 20% ໝາຍຄວາມວ່າທຸກໆ 100 ຂອງຍອດຂາຍ ມີ 20 ເປັນກຳໄລ.';

  @override
  String get glossRoe =>
      'ຜົນຕອບແທນຕໍ່ທຶນຜູ້ຖືຮຸ້ນ: ກຳໄລຕໍ່ປີ ÷ ທຶນຂອງເຈົ້າຂອງ. ສະແດງວ່າຜູ້ບໍລິຫານໃຊ້ເງິນຂອງຜູ້ຖືຮຸ້ນໄດ້ດີປານໃດ; ສູງກວ່າປະມານ 15% ຖືວ່າແຂງແຮງ.';

  @override
  String get glossRoa =>
      'ຜົນຕອບແທນຕໍ່ຊັບສິນ: ກຳໄລຕໍ່ປີ ÷ ທຸກຢ່າງທີ່ບໍລິສັດເປັນເຈົ້າຂອງ. ໃຫ້ປຽບທຽບພາຍໃນອຸດສາຫະກຳດຽວກັນ.';

  @override
  String get glossDebtToEquity =>
      'ໜີ້ສິນ ÷ ທຶນຂອງເຈົ້າຂອງ. ສູງກວ່າໝາຍເຖິງເງິນກູ້ຫຼາຍກວ່າ: ຄວາມສ່ຽງຫຼາຍຂຶ້ນເມື່ອອັດຕາດອກເບ້ຍເພີ່ມຂຶ້ນ ຫຼື ທຸລະກິດຊ້າລົງ.';

  @override
  String get glossCurrentRatio =>
      'ຊັບສິນໄລຍະສັ້ນ ÷ ໜີ້ທີ່ຕ້ອງຈ່າຍພາຍໃນໜຶ່ງປີ. ສູງກວ່າ 1 ໝາຍຄວາມວ່າບໍລິສັດສາມາດຈ່າຍໜີ້ໄລຍະໃກ້ໄດ້.';

  @override
  String get glossRevenueGrowth => 'ລາຍຮັບເຕີບໂຕຂຶ້ນເທົ່າໃດເມື່ອທຽບກັບປີກ່ອນ.';

  @override
  String get glossEpsGrowth => 'ກຳໄລຕໍ່ຮຸ້ນເຕີບໂຕຂຶ້ນເທົ່າໃດເມື່ອທຽບກັບປີກ່ອນ.';

  @override
  String get glossDividendYield =>
      'ເງິນປັນຜົນຕໍ່ປີ ÷ ລາຄາຮຸ້ນ: ລາຍໄດ້ເປັນເງິນສົດທີ່ທ່ານຈະໄດ້ຮັບແຕ່ລະປີ ເປັນເປີເຊັນຂອງສິ່ງທີ່ທ່ານຈ່າຍ.';

  @override
  String get glossDividendPerShare =>
      'ເງິນປັນຜົນທີ່ຈ່າຍຕໍ່ໜຶ່ງຮຸ້ນໃນປີທີ່ຜ່ານມາ.';

  @override
  String get glossPayoutRatio =>
      'ສ່ວນຂອງກຳໄລທີ່ຈ່າຍເປັນເງິນປັນຜົນ. ສູງກວ່າ 100% ບໍລິສັດຈ່າຍຫຼາຍກວ່າທີ່ຫາໄດ້ ເຊິ່ງບໍ່ຄ່ອຍຍືນຍົງ.';

  @override
  String get glossTitle => 'ໝາຍຄວາມວ່າແນວໃດ?';

  @override
  String get watchNewsTitle => 'ຂ່າວຮຸ້ນຂອງທ່ານ';

  @override
  String get undo => 'ເອົາຄືນ';

  @override
  String get watchSort => 'ຈັດຮຽງ';

  @override
  String get watchSortOwn => 'ລຳດັບຂອງຂ້ອຍ';

  @override
  String get watchSortGainers => 'ຂຶ້ນຫຼາຍທີ່ສຸດກ່ອນ';

  @override
  String get watchSortLosers => 'ລົງຫຼາຍທີ່ສຸດກ່ອນ';

  @override
  String get watchSortName => 'ຕາມສັນຍາລັກ (A–Z)';

  @override
  String get watchHint =>
      'ລາກບ່ອນຈັບເພື່ອຈັດລຳດັບໃໝ່, ປັດໄປຊ້າຍເພື່ອລຶບອອກ. ເສັ້ນສະແດງ 30 ມື້ຫຼ້າສຸດ.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: ການວິເຄາະຂອງທ່ານພ້ອມແລ້ວ.';
  }

  @override
  String alertFromCost(String price) {
    return 'ຈາກລາຄາຊື້ສະເລ່ຍຂອງທ່ານ ($price):';
  }

  @override
  String get briefTitle => 'ມື້ນີ້ກັບຫຸ້ນຂອງທ່ານ';

  @override
  String get briefButton => 'ສະຫຼຸບມື້ນີ້';

  @override
  String get briefHint =>
      'ສະຫຼຸບ AI ສັ້ນໆກ່ຽວກັບວ່າພອດໂຟລິໂອ ແລະ ລາຍການທີ່ມັກຂອງທ່ານເຄື່ອນໄຫວແນວໃດມື້ນີ້ ແລະ ຂ່າວລ່າສຸດເວົ້າຫຍັງ. ບໍ່ໃຊ້ການວິເຄາະ.';

  @override
  String get briefRefresh => 'ອັບເດດ';

  @override
  String get sectionEarnings => 'ຜົນປະກອບການລາຍໄຕມາດ';

  @override
  String earningsNext(String date) {
    return 'ລາຍງານຄັ້ງຕໍ່ໄປ: $date';
  }

  @override
  String get earningsExpected => 'EPS ທີ່ຄາດໄວ້';

  @override
  String get earningsReported => 'EPS ທີ່ລາຍງານ';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: 'EPS ເທົ່າ ຫຼື ສູງກວ່າຄາດ $beats ໃນ $total ໄຕມາດຫຼ້າສຸດ',
      one: 'EPS ເທົ່າ ຫຼື ສູງກວ່າຄາດ $beats ໃນ 1 ໄຕມາດ',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol ຈະປະກາດຜົນປະກອບການລາຍໄຕມາດມື້ອື່ນ';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol ປະກາດຜົນປະກອບການລາຍໄຕມາດມື້ນີ້';
  }

  @override
  String get earningsRemindersTitle => 'ການແຈ້ງເຕືອນຜົນປະກອບການ';

  @override
  String get earningsRemindersSubtitle =>
      'ແຈ້ງເຕືອນລ່ວງໜ້າໜຶ່ງມື້ກ່ອນຫຸ້ນໃນລາຍການທີ່ມັກ ຫຼື ພອດໂຟລິໂອຂອງທ່ານປະກາດຜົນປະກອບການລາຍໄຕມາດ';

  @override
  String addAllToFavorites(int count) {
    return 'ເພີ່ມທັງໝົດໃສ່ລາຍການທີ່ມັກ ($count)';
  }

  @override
  String get portfolioImportPhoto => 'ນຳເຂົ້າຈາກພາບໜ້າຈໍ';

  @override
  String get holdingsReading => 'ກຳລັງອ່ານຫຸ້ນທີ່ທ່ານຖື…';

  @override
  String get holdingsReviewTitle => 'ຫຸ້ນທີ່ພົບ';

  @override
  String get holdingsReviewHint =>
      'ກວດເບິ່ງຕົວເລກກ່ອນເພີ່ມ. ລາຄານີ້ແມ່ນລາຄາຊື້ສະເລ່ຍຕໍ່ຫຸ້ນຂອງທ່ານ, ບໍ່ແມ່ນລາຄາມື້ນີ້.';

  @override
  String get holdingsNoPrice => 'ບໍ່ມີລາຄາຊື້ສະເລ່ຍໃນຮູບພາບ';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ເພີ່ມ $count ລາຍການ',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'ບໍ່ພົບຫຸ້ນທີ່ຖືຢູ່ໃນຮູບພາບນີ້. ລອງໃຊ້ພາບໜ້າຈໍຂອງໜ້າຫຸ້ນທີ່ຖືໃນແອັບນາຍໜ້າຂອງທ່ານ.';

  @override
  String get week52Range => 'ຊ່ວງ 52 ອາທິດ';

  @override
  String week52BelowHigh(String percent) {
    return 'ຕ່ຳກວ່າສູງສຸດໃນຮອບ 52 ອາທິດ $percent';
  }

  @override
  String get week52AtHigh => 'ຢູ່ທີ່ສູງສຸດໃນຮອບ 52 ອາທິດ';

  @override
  String get alertKindTrailing => 'ລົງຈາກຈຸດສູງສຸດ';

  @override
  String get alertTrailingPercent => 'ການລົງຈາກຈຸດສູງສຸດ (%)';

  @override
  String get alertTrailingHint =>
      'ຕິດຕາມລາຄາຂຶ້ນ: ແຈ້ງເຕືອນເມື່ອລາຄາລົງເທົ່ານີ້ຈາກລະດັບສູງສຸດນັບຕັ້ງແຕ່ທ່ານຕັ້ງໄວ້.';

  @override
  String alertDescTrailing(String percent) {
    return 'ລົງ $percent ຈາກຈຸດສູງສຸດ';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'ຈຸດສູງສຸດມາເຖິງຕອນນີ້: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol ລົງ $percent ຈາກຈຸດສູງສຸດ';
  }

  @override
  String get sectionInsiders => 'ທຸລະກຳຂອງຄົນພາຍໃນ';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ຊື້ $count ຄັ້ງ',
      one: 'ຊື້ 1 ຄັ້ງ',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ຂາຍ $count ຄັ້ງ',
      one: 'ຂາຍ 1 ຄັ້ງ',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'ສຸດທິ: $shares ຮຸ້ນ';
  }

  @override
  String get insiderBuy => 'ຊື້';

  @override
  String get insiderSell => 'ຂາຍ';

  @override
  String get insiderHint =>
      'ການຊື້ ແລະ ຂາຍໃນຕະຫຼາດເປີດໂດຍຜູ້ບໍລິຫານ ແລະ ກຳມະການ ໃນ 90 ວັນທີ່ຜ່ານມາ (SEC Form 4). ບໍ່ນັບການໃຊ້ສິດອອບຊັນ ແລະ ການມອບຮຸ້ນເປັນລາງວັນ.';

  @override
  String get insiderNone =>
      'ບໍ່ມີການຊື້ ຫຼື ຂາຍຂອງຄົນພາຍໃນໃນຕະຫຼາດເປີດ ໃນ 90 ວັນທີ່ຜ່ານມາ.';

  @override
  String get analystTrend => 'ຄວາມເຫັນປ່ຽນແປງແນວໃດໃນແຕ່ລະເດືອນ';

  @override
  String get watchListAll => 'ທັງໝົດ';

  @override
  String get watchListNew => 'ລາຍການໃໝ່';

  @override
  String get watchListName => 'ຊື່ລາຍການ';

  @override
  String get watchListRename => 'ປ່ຽນຊື່ລາຍການ';

  @override
  String get watchListDelete => 'ລຶບລາຍການ';

  @override
  String get watchListAddTo => 'ເພີ່ມໃສ່ລາຍການ';

  @override
  String get watchListEmpty =>
      'ຍັງບໍ່ມີຫຸ້ນໃນລາຍການນີ້. ແຕະປຸ່ມລາຍການຂ້າງຫຸ້ນເພື່ອເພີ່ມ.';
}
