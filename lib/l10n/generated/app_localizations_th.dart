// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'ถ่ายรูปหุ้น แล้วรู้ทุกเรื่องเกี่ยวกับหุ้นตัวนั้น';

  @override
  String get homeHint =>
      'ใบหุ้น หน้าจอแอปโบรกเกอร์ หนังสือพิมพ์ หรือโลโก้บริษัท – อะไรก็ได้ที่บอกได้ว่าเป็นหุ้นตัวไหน';

  @override
  String get takePhoto => 'ถ่ายรูป';

  @override
  String get chooseFromGallery => 'เลือกจากคลังภาพ';

  @override
  String get chooseImage => 'เลือกรูปภาพ';

  @override
  String get enterTickerManually => 'ป้อนชื่อย่อหุ้นเอง';

  @override
  String get tickerInputLabel => 'ชื่อย่อหุ้น';

  @override
  String get tickerInputHint => 'เช่น AAPL';

  @override
  String get lookUp => 'ค้นหา';

  @override
  String demoModeBanner(String symbols) {
    return 'โหมดสาธิต – ยังไม่ได้ตั้งค่าคีย์ข้อมูลตลาด มีข้อมูลตัวอย่างสำหรับ: $symbols';
  }

  @override
  String get recognizing => 'กำลังวิเคราะห์รูปภาพ…';

  @override
  String get loadingData => 'กำลังโหลดข้อมูล…';

  @override
  String get noCandidatesTitle => 'ไม่พบหุ้นในรูปภาพ';

  @override
  String get noCandidatesBody =>
      'เราระบุหุ้นจากรูปภาพนี้ไม่ได้ ลองถ่ายรูปให้คมชัดขึ้น หรือป้อนชื่อย่อหุ้นเอง';

  @override
  String get whatWeSaw => 'สิ่งที่เราเห็น';

  @override
  String get chooseCandidateTitle => 'คุณหมายถึงหุ้นตัวไหน';

  @override
  String confidencePercent(int percent) {
    return 'ความมั่นใจ $percent%';
  }

  @override
  String get settings => 'การตั้งค่า';

  @override
  String get language => 'ภาษา';

  @override
  String get systemLanguage => 'ค่าเริ่มต้นของระบบ';

  @override
  String get about => 'เกี่ยวกับ';

  @override
  String get disclaimer =>
      'แอปนี้ให้ข้อมูลเท่านั้น ไม่ใช่คำแนะนำในการลงทุน ข้อมูลอาจล่าช้าหรือไม่ถูกต้อง';

  @override
  String dataSource(String source) {
    return 'แหล่งข้อมูล: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'การจดจำ: $source';
  }

  @override
  String get retry => 'ลองอีกครั้ง';

  @override
  String get cancel => 'ยกเลิก';

  @override
  String get ok => 'ตกลง';

  @override
  String get close => 'ปิด';

  @override
  String get errorGeneric => 'เกิดข้อผิดพลาดบางอย่าง';

  @override
  String get errorSectionUnavailable => 'โหลดส่วนนี้ไม่ได้';

  @override
  String get notAvailable => 'ไม่มีข้อมูล';

  @override
  String get sectionIdentity => 'ข้อมูลระบุหุ้น';

  @override
  String get sectionPrice => 'ราคา';

  @override
  String get sectionValuation => 'การประเมินมูลค่า';

  @override
  String get sectionFinancials => 'ข้อมูลทางการเงิน';

  @override
  String get sectionDividend => 'เงินปันผล';

  @override
  String get sectionProfile => 'ข้อมูลบริษัท';

  @override
  String get sectionAnalysts => 'คำแนะนำของนักวิเคราะห์';

  @override
  String get sectionNews => 'ข่าว';

  @override
  String get sectionRecognition => 'รายละเอียดการจดจำ';

  @override
  String get labelSymbol => 'ชื่อย่อ';

  @override
  String get labelExchange => 'ตลาดหลักทรัพย์';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'สกุลเงิน';

  @override
  String get labelCountry => 'ประเทศ';

  @override
  String get labelIndustry => 'อุตสาหกรรม';

  @override
  String get labelSector => 'หมวดธุรกิจ';

  @override
  String get labelWebsite => 'เว็บไซต์';

  @override
  String get labelIpoDate => 'วันที่ IPO';

  @override
  String get labelMarketCap => 'มูลค่าตามราคาตลาด';

  @override
  String get labelSharesOutstanding => 'จำนวนหุ้นที่ออกจำหน่าย';

  @override
  String get labelEmployees => 'จำนวนพนักงาน';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'สำนักงานใหญ่';

  @override
  String get labelDescription => 'คำอธิบาย';

  @override
  String get labelLastPrice => 'ราคาล่าสุด';

  @override
  String get labelChange => 'เปลี่ยนแปลง';

  @override
  String get labelOpen => 'ราคาเปิด';

  @override
  String get labelDayHigh => 'สูงสุดของวัน';

  @override
  String get labelDayLow => 'ต่ำสุดของวัน';

  @override
  String get labelPreviousClose => 'ราคาปิดก่อนหน้า';

  @override
  String get labelWeek52High => 'สูงสุดรอบ 52 สัปดาห์';

  @override
  String get labelWeek52Low => 'ต่ำสุดรอบ 52 สัปดาห์';

  @override
  String get labelAverageVolume10d => 'ปริมาณซื้อขายเฉลี่ย (10 วัน)';

  @override
  String updatedAt(String time) {
    return 'อัปเดต $time';
  }

  @override
  String get labelPeTrailing => 'P/E (ย้อนหลัง)';

  @override
  String get labelPeForward => 'P/E (คาดการณ์)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / กระแสเงินสดอิสระ';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'เบต้า';

  @override
  String get labelRevenueTtm => 'รายได้ (TTM)';

  @override
  String get labelNetIncomeTtm => 'กำไรสุทธิ (TTM)';

  @override
  String get labelGrossMargin => 'อัตรากำไรขั้นต้น';

  @override
  String get labelOperatingMargin => 'อัตรากำไรจากการดำเนินงาน';

  @override
  String get labelNetMargin => 'อัตรากำไรสุทธิ';

  @override
  String get labelRoe => 'ผลตอบแทนต่อส่วนผู้ถือหุ้น';

  @override
  String get labelRoa => 'ผลตอบแทนต่อสินทรัพย์';

  @override
  String get labelDebtToEquity => 'หนี้สิน / ส่วนผู้ถือหุ้น';

  @override
  String get labelCurrentRatio => 'อัตราส่วนสภาพคล่อง';

  @override
  String get labelRevenueGrowth => 'การเติบโตของรายได้ (YoY)';

  @override
  String get labelEpsGrowth => 'การเติบโตของ EPS (YoY)';

  @override
  String get labelDividendYield => 'อัตราผลตอบแทนเงินปันผล';

  @override
  String get labelDividendPerShare => 'เงินปันผลต่อหุ้น';

  @override
  String get labelPayoutRatio => 'อัตราการจ่ายเงินปันผล';

  @override
  String get labelConsensus => 'มุมมองโดยรวม';

  @override
  String get ratingStrongBuy => 'ซื้ออย่างยิ่ง';

  @override
  String get ratingBuy => 'ซื้อ';

  @override
  String get ratingHold => 'ถือ';

  @override
  String get ratingSell => 'ขาย';

  @override
  String get ratingStrongSell => 'ขายอย่างยิ่ง';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'นักวิเคราะห์ $count คน',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'ช่วงเวลา: $period';
  }

  @override
  String get noNews => 'ไม่มีข่าวล่าสุด';

  @override
  String get openArticle => 'เปิดบทความ';

  @override
  String get openLinkFailed => 'เปิดลิงก์ไม่ได้';

  @override
  String get recognitionSummary => 'สรุป';

  @override
  String get recognitionEvidence => 'เหตุผลที่เราคิดเช่นนั้น';

  @override
  String get recognitionRawText => 'ข้อความที่อ่านได้จากรูปภาพ';

  @override
  String get errMissingAnthropicKey =>
      'ยังไม่ได้ตั้งค่าการจดจำรูปภาพ (ไม่มี ANTHROPIC_API_KEY) โปรดป้อนชื่อย่อหุ้นเอง';

  @override
  String get errRecognitionUnreachable =>
      'เชื่อมต่อบริการจดจำรูปภาพไม่ได้ โปรดตรวจสอบการเชื่อมต่ออินเทอร์เน็ต';

  @override
  String errRecognitionHttp(String status) {
    return 'บริการจดจำรูปภาพแจ้งข้อผิดพลาด (HTTP $status)';
  }

  @override
  String get errRecognitionRefused => 'บริการจดจำรูปภาพประมวลผลรูปนี้ไม่ได้';

  @override
  String get errRecognitionTruncated =>
      'การตอบกลับจากบริการจดจำรูปภาพถูกตัดขาด โปรดลองอีกครั้ง';

  @override
  String get errRecognitionBadResponse =>
      'ได้รับการตอบกลับที่ไม่คาดคิดจากบริการจดจำรูปภาพ';

  @override
  String get errRecognitionEmpty => 'บริการจดจำรูปภาพส่งการตอบกลับที่ว่างเปล่า';

  @override
  String get errMissingFinnhubKey =>
      'ยังไม่ได้ตั้งค่าข้อมูลตลาด (ไม่มี FINNHUB_API_KEY)';

  @override
  String get errMarketUnreachable =>
      'เชื่อมต่อบริการข้อมูลตลาดไม่ได้ โปรดตรวจสอบการเชื่อมต่ออินเทอร์เน็ต';

  @override
  String get errMarketRateLimited =>
      'ส่งคำขอไปยังบริการข้อมูลตลาดมากเกินไป โปรดรอสักหนึ่งนาที';

  @override
  String errMarketHttp(String status) {
    return 'บริการข้อมูลตลาดแจ้งข้อผิดพลาด (HTTP $status)';
  }

  @override
  String get errMarketBadResponse =>
      'ได้รับการตอบกลับที่ไม่คาดคิดจากบริการข้อมูลตลาด';

  @override
  String errNoQuote(String symbol) {
    return 'ไม่พบข้อมูลราคาของ $symbol';
  }

  @override
  String errNoProfile(String symbol) {
    return 'ไม่พบข้อมูลบริษัทของ $symbol';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'โหมดสาธิตรองรับเฉพาะ $symbols เพิ่ม FINNHUB_API_KEY เพื่อดูข้อมูลแบบเรียลไทม์';
  }

  @override
  String errUnknown(String detail) {
    return 'เกิดข้อผิดพลาด: $detail';
  }

  @override
  String get newSearch => 'ค้นหาใหม่';

  @override
  String get recentSearches => 'ล่าสุด';

  @override
  String get noRecentSearches => 'ยังไม่มีการค้นหาล่าสุด';

  @override
  String get clearRecent => 'ล้างรายการล่าสุด';

  @override
  String get greeting => 'วันนี้เราจะดูหุ้นตัวไหนกันดี';

  @override
  String get searchHint => 'ชื่อย่อหรือชื่อบริษัท';

  @override
  String get attachImage => 'แนบรูปภาพ';

  @override
  String get searchResultsTitle => 'ผลการค้นหา';

  @override
  String errNoResults(String query) {
    return 'ไม่พบหุ้นสำหรับ “$query”';
  }

  @override
  String get quickBarHint => 'พิมพ์ชื่อย่อหรือชื่อบริษัท…';

  @override
  String get openFullWindow => 'เปิดหน้าต่าง';

  @override
  String hotkeyHint(String shortcut) {
    return 'กด $shortcut ได้จากทุกที่เพื่อเรียก WhatStock';
  }

  @override
  String get trayOpen => 'เปิด WhatStock';

  @override
  String get trayQuickSearch => 'ค้นหาด่วน';

  @override
  String get trayQuit => 'ออก';

  @override
  String get appearance => 'รูปลักษณ์';

  @override
  String get themeSystem => 'ตามระบบ';

  @override
  String get themeDark => 'มืด';

  @override
  String get themeLight => 'สว่าง';

  @override
  String get back => 'ย้อนกลับ';

  @override
  String get aiSectionTitle => 'การวิเคราะห์ด้วย AI';

  @override
  String get aiIntro =>
      'ภาพรวมแบบละเอียดที่เขียนโดย AI: สรุปข่าวล่าสุด ธุรกิจ จุดแข็ง ความเสี่ยงและปัจจัยแฝง การประเมินมูลค่า แนวโน้มราคาพร้อมสถานการณ์จำลองจากมุมมองด้านจิตวิทยา สังคมวิทยา เทคนิค และเศรษฐกิจมหภาค รวมถึงสิ่งที่ควรจับตา';

  @override
  String get aiGenerate => 'สร้างบทวิเคราะห์';

  @override
  String get aiRegenerate => 'สร้างใหม่';

  @override
  String get aiGenerating =>
      'กำลังเตรียมบทวิเคราะห์… อาจใช้เวลาหนึ่งถึงสองนาที';

  @override
  String get aiSources => 'แหล่งที่มา';

  @override
  String aiGeneratedAt(String time) {
    return 'สร้างเมื่อ $time';
  }

  @override
  String get aiDisclaimer =>
      'บทวิเคราะห์ที่สร้างโดย AI จากข้อมูลสาธารณะและข่าวล่าสุด อาจมีข้อผิดพลาดหรือล้าสมัย และไม่ใช่คำแนะนำในการลงทุน';

  @override
  String get errAiNotConfigured =>
      'ยังไม่ได้ตั้งค่าการวิเคราะห์ด้วย AI (ไม่มี ANTHROPIC_API_KEY)';

  @override
  String get errAiUnreachable =>
      'เชื่อมต่อบริการ AI ไม่ได้ โปรดตรวจสอบการเชื่อมต่ออินเทอร์เน็ต';

  @override
  String errAiHttp(String status) {
    return 'บริการ AI แจ้งข้อผิดพลาด (HTTP $status)';
  }

  @override
  String get errAiRefused => 'บริการ AI ปฏิเสธที่จะวิเคราะห์หุ้นตัวนี้';

  @override
  String get errAiBadResponse => 'ได้รับการตอบกลับที่ไม่คาดคิดจากบริการ AI';

  @override
  String get sectionChart => 'กราฟราคา';

  @override
  String get rangeOneWeek => '1 สัปดาห์';

  @override
  String get rangeOneMonth => '1 เดือน';

  @override
  String get rangeThreeMonths => '3 เดือน';

  @override
  String get rangeOneYear => '1 ปี';

  @override
  String get rangeFiveYears => '5 ปี';

  @override
  String get chartUnavailable => 'แหล่งข้อมูลปัจจุบันไม่มีประวัติราคา';

  @override
  String get sectionStatements => 'งบการเงิน (รายปี)';

  @override
  String get labelFiscalYear => 'ปีบัญชี';

  @override
  String get labelRevenue => 'รายได้';

  @override
  String get labelNetIncome => 'กำไรสุทธิ';

  @override
  String get labelTotalAssets => 'สินทรัพย์รวม';

  @override
  String get labelTotalLiabilities => 'หนี้สินรวม';

  @override
  String get labelEquity => 'ส่วนของผู้ถือหุ้น';

  @override
  String get labelOperatingCashFlow => 'กระแสเงินสดจากการดำเนินงาน';

  @override
  String get statementsUnavailable =>
      'ไม่มีงบการเงินที่เผยแพร่สำหรับหุ้นตัวนี้';

  @override
  String get launchAtLogin => 'เปิดเมื่อเข้าสู่ระบบ';

  @override
  String get hotkeyLabel => 'คีย์ลัดทั่วระบบ';

  @override
  String get hotkeyRecordHint => 'คลิกที่นี่ แล้วกดคีย์ผสมใหม่';

  @override
  String get hotkeyReset => 'รีเซ็ตเป็นค่าเริ่มต้น';

  @override
  String get pasteImage => 'วางรูปภาพจากคลิปบอร์ด';

  @override
  String get errClipboardNoImage => 'ไม่มีรูปภาพในคลิปบอร์ด';

  @override
  String get favorites => 'รายการโปรด';

  @override
  String get addToFavorites => 'เพิ่มในรายการโปรด';

  @override
  String get removeFromFavorites => 'ลบออกจากรายการโปรด';

  @override
  String get noFavorites => 'ยังไม่มีรายการโปรด แตะรูปดาวที่หุ้นเพื่อเพิ่ม';

  @override
  String get displayCurrency => 'สกุลเงินที่แสดง';

  @override
  String get displayCurrencyNone => 'เฉพาะสกุลเงินของหุ้น';

  @override
  String labelConverted(String currency) {
    return '≈ เป็น $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'อัตรา: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'การอัปเดต';

  @override
  String currentVersion(String version) {
    return 'เวอร์ชัน $version';
  }

  @override
  String get autoUpdate => 'ติดตั้งอัปเดตโดยอัตโนมัติ';

  @override
  String get checkForUpdates => 'ตรวจหาอัปเดต';

  @override
  String get updateChecking => 'กำลังตรวจหาอัปเดต…';

  @override
  String get updateUpToDate => 'คุณใช้เวอร์ชันล่าสุดอยู่แล้ว';

  @override
  String updateAvailable(String version) {
    return 'มีเวอร์ชัน $version ให้ใช้งานแล้ว';
  }

  @override
  String get updateDownloading => 'กำลังดาวน์โหลดอัปเดตในเบื้องหลัง…';

  @override
  String get updateDownloaded => 'อัปเดตพร้อมแล้ว รีสตาร์ทเพื่อติดตั้ง';

  @override
  String get updateNow => 'อัปเดต';

  @override
  String get restartNow => 'รีสตาร์ท';

  @override
  String get updatesViaStore => 'การอัปเดตจะมาโดยอัตโนมัติผ่านร้านค้าแอป';

  @override
  String get updateCheckFailed => 'ตรวจหาอัปเดตไม่ได้';

  @override
  String get subscription => 'การสมัครสมาชิก';

  @override
  String get planTrial => 'ทดลองใช้';

  @override
  String get planNormal => 'ปกติ';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'ไม่มีแพ็กเกจที่ใช้งานอยู่';

  @override
  String planAnalysesPerMonth(int count) {
    return 'วิเคราะห์ได้ $count ครั้งต่อเดือน';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'ทดลองใช้ฟรี $days วัน พร้อมการวิเคราะห์ $count ครั้ง';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'เหลือเวลาทดลองใช้ $days วัน',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'ช่วงทดลองใช้ฟรีของคุณสิ้นสุดแล้ว เลือกแพ็กเกจเพื่อวิเคราะห์ต่อ';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'เหลือการวิเคราะห์ $remaining จาก $total ครั้งในรอบนี้';
  }

  @override
  String extraCredits(int count) {
    return 'การวิเคราะห์เพิ่มเติม $count ครั้ง';
  }

  @override
  String renewsOn(String date) {
    return 'ต่ออายุวันที่ $date';
  }

  @override
  String get choosePlan => 'เลือกแพ็กเกจ';

  @override
  String get currentPlan => 'แพ็กเกจปัจจุบัน';

  @override
  String get subscribe => 'สมัครสมาชิก';

  @override
  String get perMonth => '/ เดือน';

  @override
  String get extraPacksTitle => 'ต้องการเพิ่มอีกไหม ซื้อการวิเคราะห์เพิ่มเติม';

  @override
  String get extraPacksHint =>
      'การวิเคราะห์เพิ่มเติมไม่มีวันหมดอายุ และจะถูกใช้หลังจากโควตารายเดือนของคุณหมดแล้ว';

  @override
  String get buy => 'ซื้อ';

  @override
  String get restorePurchases => 'กู้คืนการซื้อ';

  @override
  String get manageSubscription => 'จัดการการสมัครสมาชิก';

  @override
  String get purchaseSuccess => 'ขอบคุณ! การซื้อของคุณเปิดใช้งานแล้ว';

  @override
  String get purchasePending => 'การซื้อกำลังรอดำเนินการ…';

  @override
  String get purchaseFailed => 'ไม่สามารถดำเนินการซื้อให้เสร็จสมบูรณ์ได้';

  @override
  String get purchaseCanceled => 'ยกเลิกการซื้อแล้ว';

  @override
  String get billingUnavailable =>
      'ยังไม่สามารถซื้อบนแพลตฟอร์มนี้ได้ สมัครสมาชิกบนโทรศัพท์หรือ Mac ของคุณ แล้วแพ็กเกจจะใช้ได้กับทุกอุปกรณ์';

  @override
  String get errQuotaExceeded =>
      'คุณใช้การวิเคราะห์ในรอบนี้หมดแล้ว อัปเกรดแพ็กเกจหรือซื้อการวิเคราะห์เพิ่มเติม';

  @override
  String get errTrialExpired =>
      'ช่วงทดลองใช้ฟรีของคุณสิ้นสุดแล้ว เลือกแพ็กเกจเพื่อใช้งานต่อ';

  @override
  String get errNoPlan =>
      'ต้องมีแพ็กเกจที่ใช้งานอยู่จึงจะใช้การวิเคราะห์ด้วย AI ได้';

  @override
  String get viewPlans => 'ดูแพ็กเกจ';

  @override
  String get usageTitle => 'การใช้งาน';

  @override
  String get demoPurchaseNote =>
      'การชำระเงินสาธิต: การซื้อบนแพลตฟอร์มนี้เป็นเพียงการจำลอง';

  @override
  String get mostPopular => 'ยอดนิยม';

  @override
  String get bestValue => 'คุ้มค่าที่สุด';

  @override
  String get planFeaturesCommon =>
      'การจดจำรูปภาพ ข้อมูลเรียลไทม์ กราฟ รายการโปรด และครบทั้ง 120 ภาษา มีให้ในทุกแพ็กเกจ โควตาใช้สำหรับการวิเคราะห์ด้วย AI';

  @override
  String get searchLanguages => 'ค้นหาภาษา…';

  @override
  String get noLanguageMatch => 'ไม่พบภาษาที่ตรงกัน';

  @override
  String get aiSettings => 'การวิเคราะห์ด้วย AI';

  @override
  String get aiLength => 'ความยาว';

  @override
  String get aiDepthBrief => 'กระชับ';

  @override
  String get aiDepthStandard => 'มาตรฐาน';

  @override
  String get aiDepthDeep => 'เจาะลึก';

  @override
  String get aiDepthBriefDesc => 'เฉพาะประเด็นสำคัญ รวดเร็ว';

  @override
  String get aiDepthStandardDesc => 'รายงานฉบับเต็มครบทุกหัวข้อ';

  @override
  String get aiDepthDeepDesc =>
      'ค้นหาเว็บมากขึ้น เปรียบเทียบกับบริษัทคู่แข่ง และลงรายละเอียดลึกกว่า';

  @override
  String aiDepthWords(String min, String max) {
    return 'ประมาณ $min–$max คำ';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ใช้การวิเคราะห์ $count ครั้ง',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'ระดับผู้อ่าน';

  @override
  String get aiReaderBeginner => 'มือใหม่';

  @override
  String get aiReaderExperienced => 'มีประสบการณ์';

  @override
  String get aiReaderBeginnerDesc => 'ภาษาเข้าใจง่าย อธิบายศัพท์เทคนิคทุกคำ';

  @override
  String get aiReaderExperiencedDesc =>
      'เนื้อหาเข้มข้นขึ้น ใช้ศัพท์การเงินมาตรฐาน';

  @override
  String get aiCounterArgument => 'ข้อโต้แย้งที่หนักแน่นที่สุด';

  @override
  String get aiCounterArgumentDesc =>
      'บทสรุปจะปิดท้ายด้วยข้อโต้แย้งที่ดีที่สุดต่อข้อสรุปของตัวเองเสมอ';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ค้นหาเว็บได้สูงสุด $count ครั้งต่อการวิเคราะห์ตามแพ็กเกจของคุณ',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'ความยาวมาตรฐานตามแพ็กเกจ: ปกติ $normal, Pro $pro, Max $max, Ultra $ultra แบบกระชับใช้น้อยกว่า 2 ครั้ง แบบเจาะลึกใช้มากกว่า 2 ครั้ง';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ค้นหาเว็บสูงสุด $count ครั้ง',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ค้นหาเว็บ $count ครั้งต่อการวิเคราะห์',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'ความยาวนี้ต้องใช้การวิเคราะห์ $needed ครั้ง แต่เหลือเพียง $left ครั้ง เลือกความยาวที่สั้นลงในการตั้งค่า หรือรับการวิเคราะห์เพิ่ม';
  }

  @override
  String get outlookMarketMood => 'อารมณ์ตลาด';

  @override
  String get moodVeryPessimistic => 'มองแง่ร้ายมาก';

  @override
  String get moodPessimistic => 'มองแง่ร้าย';

  @override
  String get moodNeutral => 'เป็นกลาง';

  @override
  String get moodOptimistic => 'มองแง่ดี';

  @override
  String get moodVeryOptimistic => 'มองแง่ดีมาก';

  @override
  String get scenarioBull => 'กรณีขาขึ้น';

  @override
  String get scenarioBase => 'กรณีฐาน';

  @override
  String get scenarioBear => 'กรณีขาลง';

  @override
  String outlookCurrentPrice(String price) {
    return 'ราคาปัจจุบัน: $price';
  }

  @override
  String get outlookKeyLevels => 'ระดับราคาสำคัญ';

  @override
  String get keyLevelSupport => 'แนวรับ';

  @override
  String get keyLevelResistance => 'แนวต้าน';

  @override
  String get keyLevelAnchor => 'ราคาอ้างอิง';

  @override
  String get upcomingEvents => 'เหตุการณ์ที่กำลังจะมาถึง';

  @override
  String get outlookChartNote =>
      'เป็นช่วงราคาโดยประมาณ ความน่าจะเป็นเป็นเพียงการประเมินคร่าวๆ ไม่ใช่การพยากรณ์';

  @override
  String get accountTitle => 'บัญชี';

  @override
  String get signIn => 'ลงชื่อเข้าใช้';

  @override
  String get signOut => 'ออกจากระบบ';

  @override
  String get notSignedIn => 'ยังไม่ได้ลงชื่อเข้าใช้';

  @override
  String get accountBenefit =>
      'ลงชื่อเข้าใช้เพื่อให้การสมัครสมาชิกใช้ได้กับทุกอุปกรณ์ของคุณ';

  @override
  String get accountSyncedNote =>
      'การสมัครสมาชิกและจำนวนการวิเคราะห์ที่เหลือของคุณจะเหมือนกันในทุกอุปกรณ์';

  @override
  String get signInTitle => 'ลงชื่อเข้าใช้ WhatStock';

  @override
  String get emailLabel => 'ที่อยู่อีเมล';

  @override
  String get continueWithEmail => 'ดำเนินการต่อด้วยอีเมล';

  @override
  String codeSentTo(String email) {
    return 'เราส่งรหัส 6 หลักไปที่ $email แล้ว รหัสใช้ได้ 10 นาที';
  }

  @override
  String get codeLabel => 'รหัสลงชื่อเข้าใช้';

  @override
  String get resendCode => 'ส่งรหัสใหม่';

  @override
  String get useDifferentEmail => 'ใช้อีเมลอื่น';

  @override
  String get errInvalidCode => 'รหัสไม่ถูกต้องหรือหมดอายุแล้ว';

  @override
  String get errInvalidEmail => 'โปรดป้อนที่อยู่อีเมลที่ถูกต้อง';

  @override
  String get errSignInFailed =>
      'ลงชื่อเข้าใช้ไม่สำเร็จ ตรวจสอบการเชื่อมต่อแล้วลองอีกครั้ง';

  @override
  String get checkoutWaiting =>
      'ชำระเงินให้เสร็จในเบราว์เซอร์ของคุณ แอปจะอัปเดตโดยอัตโนมัติเมื่อเสร็จสิ้น';

  @override
  String get paymentViaStripe =>
      'ชำระเงินอย่างปลอดภัยในเบราว์เซอร์ผ่าน Stripe ยกเลิกได้ทุกเมื่อ';

  @override
  String get paymentViaStore =>
      'เรียกเก็บเงินผ่านบัญชี App Store หรือ Google Play ของคุณ ยกเลิกได้ทุกเมื่อในการตั้งค่าของสโตร์';

  @override
  String get keySpace => 'Space';

  @override
  String get doubleOptionTitle => 'กด Option สองครั้ง';

  @override
  String get doubleOptionSubtitle =>
      'การกดปุ่ม Option สองครั้งติดกันอย่างรวดเร็วจะเรียก WhatStock ได้เช่นกัน';

  @override
  String get doubleOptionPermission =>
      'หากต้องการให้ใช้งานได้ในแอปอื่นด้วย ให้อนุญาต WhatStock ใน การตั้งค่าระบบ → ความเป็นส่วนตัวและความปลอดภัย → การตรวจสอบการป้อนข้อมูล แล้วเปิดแอปใหม่';

  @override
  String get openSystemSettings => 'เปิดการตั้งค่าระบบ';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'กด $shortcut หรือกด Option สองครั้งได้จากทุกที่เพื่อเรียก WhatStock';
  }

  @override
  String get scenarioMostLikely => 'เป็นไปได้มากที่สุด';

  @override
  String get longTermToday => 'วันนี้';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years ปี',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range ต่อปี';
  }

  @override
  String longTermLikely(String price) {
    return 'น่าจะอยู่ที่ $price';
  }

  @override
  String get confidenceLow => 'ความมั่นใจต่ำ';

  @override
  String get confidenceMedium => 'ความมั่นใจปานกลาง';

  @override
  String get confidenceHigh => 'ความมั่นใจสูง';

  @override
  String get longTermNote =>
      'ช่วงราคาระยะยาวอิงตามสมมติฐานที่ระบุไว้ และจะกว้างขึ้นตามเวลา ราคาไม่รวมเงินปันผล เป็นการประเมินคร่าวๆ ไม่ใช่การพยากรณ์';

  @override
  String get portfolio => 'พอร์ตโฟลิโอ';

  @override
  String get portfolioEmpty =>
      'ยังไม่มีรายการ เปิดหุ้นแล้วแตะ “เพิ่มในพอร์ตโฟลิโอ” เพื่อติดตามหุ้นที่คุณถือ';

  @override
  String get portfolioLocalNote =>
      'จัดเก็บไว้ในอุปกรณ์นี้เท่านั้น ยอดรวมแปลงค่าตามอัตราอ้างอิงของ ECB ราคาอาจล่าช้า';

  @override
  String get addToPortfolio => 'เพิ่มในพอร์ตโฟลิโอ';

  @override
  String portfolioAddTitle(String symbol) {
    return 'เพิ่ม $symbol';
  }

  @override
  String get portfolioQuantity => 'จำนวนหุ้น';

  @override
  String portfolioBuyPrice(String currency) {
    return 'ราคาต่อหุ้น ($currency)';
  }

  @override
  String get portfolioBuyDate => 'วันที่ซื้อ';

  @override
  String get portfolioAdd => 'เพิ่ม';

  @override
  String get portfolioInvalidNumber => 'ป้อนตัวเลขที่มากกว่าศูนย์';

  @override
  String portfolioAdded(String symbol) {
    return 'เพิ่ม $symbol ในพอร์ตโฟลิโอของคุณแล้ว';
  }

  @override
  String get portfolioTotalValue => 'มูลค่ารวม';

  @override
  String get portfolioToday => 'วันนี้';

  @override
  String get portfolioGainLoss => 'กำไร/ขาดทุน';

  @override
  String get portfolioInvested => 'เงินลงทุน';

  @override
  String get portfolioAllocation => 'สัดส่วนการลงทุน';

  @override
  String get portfolioPositions => 'หุ้นที่ถือ';

  @override
  String portfolioAvgCost(String price) {
    return 'ต้นทุนเฉลี่ย $price';
  }

  @override
  String get portfolioYourPosition => 'หุ้นที่คุณถือ';

  @override
  String get portfolioPurchases => 'รายการซื้อ';

  @override
  String get portfolioRemove => 'ลบ';

  @override
  String get portfolioExcluded =>
      'หุ้นที่ไม่มีราคาหรืออัตราแลกเปลี่ยนจะไม่ถูกนับรวมในยอดรวม';

  @override
  String get priceAlerts => 'การแจ้งเตือนราคา';

  @override
  String get setPriceAlert => 'ตั้งการแจ้งเตือนราคา';

  @override
  String alertDialogTitle(String symbol) {
    return 'การแจ้งเตือนราคา · $symbol';
  }

  @override
  String get alertKindAbove => 'ขึ้นสูงกว่า';

  @override
  String get alertKindBelow => 'ลงต่ำกว่า';

  @override
  String get alertKindMove => 'เคลื่อนไหวแรงในวันเดียว';

  @override
  String alertTargetPrice(String currency) {
    return 'ราคา ($currency)';
  }

  @override
  String get alertMovePercent => 'การเปลี่ยนแปลงรายวัน (%)';

  @override
  String get alertAlreadyMet => 'ราคาผ่านระดับนี้ไปแล้ว';

  @override
  String get alertSave => 'ตั้งการแจ้งเตือน';

  @override
  String alertCreated(String symbol) {
    return 'ตั้งการแจ้งเตือนสำหรับ $symbol แล้ว';
  }

  @override
  String get alertsEmpty =>
      'ยังไม่มีการแจ้งเตือนราคา เปิดหุ้นแล้วแตะรูปกระดิ่งเพื่อตั้งค่า';

  @override
  String get alertsNote =>
      'ระบบจะตรวจสอบการแจ้งเตือนทุก 5 นาทีขณะที่ WhatStock ทำงานอยู่ บนคอมพิวเตอร์ แอปจะทำงานต่อในแถบเมนูหรือถาดระบบ ส่วนบนโทรศัพท์ ขณะนี้การแจ้งเตือนจะมาถึงเฉพาะตอนที่เปิดแอปอยู่';

  @override
  String alertDescAbove(String price) {
    return 'สูงกว่า $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'ต่ำกว่า $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'เปลี่ยนแปลงรายวัน ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'แจ้งเตือนเมื่อ $date ที่ราคา $price';
  }

  @override
  String get alertRearm => 'เปิดใช้อีกครั้ง';

  @override
  String get alertDelete => 'ลบ';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol ขึ้นสูงกว่า $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol ลงต่ำกว่า $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol เปลี่ยนแปลง $percent วันนี้';
  }

  @override
  String alertHitBody(String price) {
    return 'ราคาปัจจุบัน: $price';
  }

  @override
  String get alertOpen => 'เปิด';

  @override
  String get keepInTrayTitle => 'ทำงานต่อเมื่อปิดหน้าต่าง';

  @override
  String get keepInTraySubtitle =>
      'WhatStock จะอยู่ในแถบเมนูหรือถาดระบบ เพื่อให้คีย์ลัดและการแจ้งเตือนราคายังคงทำงาน';

  @override
  String get termsOfUse => 'ข้อกำหนดการใช้งาน';

  @override
  String get privacyPolicy => 'นโยบายความเป็นส่วนตัว';

  @override
  String get subscriptionLegal =>
      'การสมัครสมาชิกจะต่ออายุโดยอัตโนมัติทุกเดือนจนกว่าคุณจะยกเลิก การสมัครสมาชิกถือว่าคุณยอมรับข้อกำหนดการใช้งานและนโยบายความเป็นส่วนตัว';

  @override
  String get deleteAccount => 'ลบบัญชี';

  @override
  String get deleteAccountTitle => 'ต้องการลบบัญชีของคุณหรือไม่';

  @override
  String get deleteAccountBody =>
      'บัญชีของคุณและทุกอย่างที่จัดเก็บไว้บนเซิร์ฟเวอร์ของเรา (อีเมล โควตา การใช้งาน) จะถูกลบอย่างถาวร และการวิเคราะห์ที่ยังไม่ได้ใช้จะหายไป การสมัครสมาชิกที่ชำระเงินผ่านเบราว์เซอร์จะถูกยกเลิกทันที ส่วนการสมัครสมาชิกผ่าน App Store หรือ Google Play ต้องยกเลิกในการตั้งค่าของสโตร์';

  @override
  String get deleteLocalData =>
      'ลบข้อมูลในอุปกรณ์นี้ด้วย (พอร์ตโฟลิโอ การแจ้งเตือน รายการโปรด ประวัติ บทวิเคราะห์ที่บันทึกไว้)';

  @override
  String get deleteAccountConfirm => 'ลบถาวร';

  @override
  String get accountDeleted => 'ลบบัญชีของคุณแล้ว';

  @override
  String get errDeleteAccount =>
      'ลบบัญชีไม่ได้ ตรวจสอบการเชื่อมต่อแล้วลองอีกครั้ง';

  @override
  String get aiTrialBriefNote =>
      'การวิเคราะห์ช่วงทดลองใช้เป็นแบบกระชับและใช้โมเดล AI ที่เร็วกว่า เมื่อมีแพ็กเกจ คุณจะได้ AI ที่มีความสามารถสูงสุดของเรา การค้นหาเว็บมากขึ้น และความยาวแบบมาตรฐานและเจาะลึก';

  @override
  String get billingMonthly => 'รายเดือน';

  @override
  String get billingYearly => 'รายปี';

  @override
  String get yearlyDiscount => 'ฟรี 2 เดือน';

  @override
  String get perYear => '/ ปี';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price ต่อเดือน';
  }

  @override
  String get subscriptionLegalYearly =>
      'การสมัครสมาชิกรายปีจะต่ออายุโดยอัตโนมัติทุกปีจนกว่าคุณจะยกเลิก การสมัครสมาชิกถือว่าคุณยอมรับข้อกำหนดการใช้งานและนโยบายความเป็นส่วนตัว';

  @override
  String get myAnalyses => 'การวิเคราะห์ของฉัน';

  @override
  String get navAlerts => 'แจ้งเตือน';

  @override
  String get inviteTitle => 'พรีวิวแบบปิด';

  @override
  String get inviteBody =>
      'ขณะนี้ WhatStock เปิดให้ใช้งานเฉพาะผู้ที่ได้รับเชิญเท่านั้น กรอกรหัสเชิญที่คุณได้รับ';

  @override
  String get inviteCodeLabel => 'รหัสเชิญ';

  @override
  String get inviteContinue => 'ดำเนินการต่อ';

  @override
  String get inviteInvalid => 'รหัสเชิญนี้ไม่ถูกต้อง';

  @override
  String get inviteExpired => 'คำเชิญนี้หมดอายุแล้ว ขอรหัสใหม่จากผู้ที่เชิญคุณ';

  @override
  String get inviteDeviceLimit =>
      'รหัสเชิญนี้ถูกใช้งานบนอุปกรณ์ครบจำนวนสูงสุดแล้ว';

  @override
  String get previewConfidential => 'พรีวิวลับ';

  @override
  String get errPreviewDailyLimit =>
      'การวิเคราะห์ของพรีวิวนี้ครบโควตาของวันนี้แล้ว ลองอีกครั้งพรุ่งนี้';
}
