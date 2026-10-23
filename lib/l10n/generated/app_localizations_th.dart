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
  String get labelYieldOnCost => 'ผลตอบแทนต่อต้นทุน';

  @override
  String get labelDividendGrowth5y => 'การเติบโตของเงินปันผล (5 ปี)';

  @override
  String get dividendNone => 'ไม่มีการจ่ายเงินปันผลในช่วง 12 เดือนที่ผ่านมา';

  @override
  String get dividendOnYourShares => 'จากหุ้นของคุณ ต่อปี';

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
  String homeDividendsThisYear(String amount) {
    return 'เงินปันผลปีนี้: $amount';
  }

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

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ชั่วโมงที่แล้ว',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count วันที่แล้ว',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'อัปเดตการวิเคราะห์นี้ไหม';

  @override
  String staleBody(String age) {
    return 'การวิเคราะห์นี้สร้างเมื่อ $age ราคา ข่าว และผลประกอบการอาจเปลี่ยนไปแล้วตั้งแต่นั้น';
  }

  @override
  String get staleKeep => 'ดูฉบับก่อนหน้า';

  @override
  String get staleRefresh => 'สร้างใหม่';

  @override
  String seeAll(int count) {
    return 'ดูทั้งหมด ($count)';
  }

  @override
  String get searchAnalyses => 'ค้นหาการวิเคราะห์ของคุณ';

  @override
  String get deleteAnalysis => 'ลบ';

  @override
  String analysisDeleted(String symbol) {
    return 'ลบการวิเคราะห์ $symbol แล้ว';
  }

  @override
  String get keyLevelAlertHint =>
      'แตะระดับราคาเพื่อรับการแจ้งเตือนเมื่อราคาไปถึงระดับนั้น';

  @override
  String get shareAnalysisTitle => 'แชร์บทวิเคราะห์';

  @override
  String get shareAsImage => 'แชร์เป็นรูปภาพ';

  @override
  String get shareAsText => 'แชร์เป็นข้อความ';

  @override
  String get shareCardFooter => 'สร้างด้วย WhatStock';

  @override
  String get shareCardDisclaimer =>
      'การวิเคราะห์ด้วย AI · ไม่ใช่คำแนะนำในการลงทุน';

  @override
  String get referralTitle => 'ชวนเพื่อน';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'การวิเคราะห์เพิ่มเติม $count ครั้ง',
    );
    return 'แชร์โค้ดของคุณ เพื่อนของคุณจะได้รับ$_temp0ทันที และคุณจะได้รับเท่ากันหลังจากเพื่อนวิเคราะห์ครั้งแรก';
  }

  @override
  String get referralYourCode => 'โค้ดของคุณ';

  @override
  String referralStats(int invited, int rewarded) {
    return 'เชิญแล้ว: $invited · ได้รางวัลแล้ว: $rewarded';
  }

  @override
  String get referralHaveCode => 'มีโค้ดจากเพื่อนไหม';

  @override
  String get referralRedeem => 'ใช้โค้ด';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ได้รับการวิเคราะห์เพิ่มเติม $count ครั้งแล้ว ยินดีต้อนรับ!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown => 'ไม่มีโค้ดนี้ โปรดตรวจสอบแล้วลองอีกครั้ง';

  @override
  String get referralErrOwn => 'คุณใช้โค้ดของตัวเองไม่ได้';

  @override
  String get referralErrAlready => 'คุณใช้โค้ดของเพื่อนไปแล้ว';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'การวิเคราะห์เพิ่มเติม $count ครั้ง',
    );
    return 'ฉันวิเคราะห์หุ้นด้วย WhatStock: ถ่ายรูปหุ้น แล้ว AI จะอธิบายให้ ใช้โค้ดของฉัน $code รับ$_temp0';
  }

  @override
  String get referralCopied => 'คัดลอกโค้ดแล้ว';

  @override
  String get onboardTitle1 => 'ถ่ายรูปหุ้น';

  @override
  String get onboardBody1 =>
      'แค่หน้าจอแอปโบรกเกอร์ หนังสือพิมพ์ หรือโลโก้บริษัทก็พอ WhatStock จะจดจำหุ้นและแสดงราคา กราฟ และตัวเลขสำคัญให้คุณ';

  @override
  String get onboardTitle2 => 'เข้าใจได้ในไม่กี่นาที';

  @override
  String get onboardBody2 =>
      'การวิเคราะห์ด้วย AI จะอธิบายว่าอะไรขับเคลื่อนหุ้น ความเสี่ยง มูลค่า และสามสถานการณ์ว่าราคาอาจไปทางไหน พร้อมแหล่งอ้างอิงและเป็นภาษาของคุณ';

  @override
  String get onboardTitle3 => 'ไม่พลาดทุกความเคลื่อนไหว';

  @override
  String get onboardBody3 =>
      'รายการโปรด พอร์ตโฟลิโอของคุณ และการแจ้งเตือนราคาจะคอยอัปเดตให้คุณรู้ การวิเคราะห์ของคุณเก็บไว้ในอุปกรณ์ พร้อมเปิดดูอีกครั้งได้ทุกเมื่อ';

  @override
  String get onboardNext => 'ถัดไป';

  @override
  String get onboardStart => 'เริ่มใช้งาน';

  @override
  String get onboardSkip => 'ข้าม';

  @override
  String changesTitle(String date) {
    return 'ตั้งแต่การวิเคราะห์ครั้งก่อน ($date)';
  }

  @override
  String get changesPrice => 'ราคา';

  @override
  String get changesNoMajor => 'แนวโน้มไม่ได้เปลี่ยนแปลงอย่างมีนัยสำคัญ';

  @override
  String get changesPreviousSummary => 'สรุปครั้งก่อน';

  @override
  String get telemetryTitle => 'ช่วยพัฒนา WhatStock ให้ดียิ่งขึ้น';

  @override
  String get telemetryBody =>
      'แชร์สถิติการใช้งานแบบไม่ระบุตัวตนและรายงานข้อขัดข้อง: ฟีเจอร์ใดที่มีการใช้งานและเกิดปัญหาอะไรขึ้น โดยจะไม่รวมหุ้น การวิเคราะห์ หรือข้อมูลส่วนตัวของคุณเด็ดขาด คุณเปลี่ยนแปลงได้ทุกเมื่อในการตั้งค่า';

  @override
  String get telemetryAllow => 'อนุญาต';

  @override
  String get telemetryDecline => 'ไม่เป็นไร ขอบคุณ';

  @override
  String get telemetrySetting => 'สถิติแบบไม่ระบุตัวตนและรายงานข้อขัดข้อง';

  @override
  String get telemetrySettingHint =>
      'ความถี่ในการใช้ฟีเจอร์และรายงานข้อผิดพลาด โดยไม่มีข้อมูลส่วนตัวหรือเนื้อหาการค้นหาและการวิเคราะห์ของคุณ';

  @override
  String get askButton => 'ถามเกี่ยวกับบทวิเคราะห์นี้';

  @override
  String askTitle(String symbol) {
    return 'คำถามเกี่ยวกับ $symbol';
  }

  @override
  String get askIntro =>
      'ถามอะไรก็ได้เกี่ยวกับบทวิเคราะห์ เช่น ความเสี่ยงหมายถึงอะไร อะไรจะทำให้แนวโน้มเปลี่ยนไป หรือตัวเลขคำนวณมาอย่างไร คำตอบอิงจากบทวิเคราะห์นี้และไม่ใช่คำแนะนำในการลงทุน';

  @override
  String get askHint => 'พิมพ์คำถาม…';

  @override
  String get askSend => 'ส่ง';

  @override
  String get askThinking => 'กำลังคิด…';

  @override
  String get askSuggest1 => 'ความเสี่ยงที่ใหญ่ที่สุดคืออะไร';

  @override
  String get askSuggest2 => 'อะไรจะทำให้แนวโน้มเปลี่ยนไป';

  @override
  String get askSuggest3 => 'อธิบายแบบเข้าใจง่าย';

  @override
  String get askMaxReached =>
      'นี่คือคำถามสุดท้ายสำหรับบทวิเคราะห์นี้ สร้างบทวิเคราะห์ใหม่เพื่อถามเพิ่ม';

  @override
  String get errAskLimit =>
      'คุณใช้โควตาคำถามของวันนี้ครบแล้ว ลองอีกครั้งพรุ่งนี้';

  @override
  String get eventTomorrow => 'พรุ่งนี้';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'อีก $days วัน',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'ผลประกอบการรายไตรมาส';

  @override
  String get eventBeforeOpen => 'ก่อนตลาดเปิด';

  @override
  String get eventAfterClose => 'หลังตลาดปิด';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS คาดการณ์: $value';
  }

  @override
  String get eventFromAnalysis => 'จากการวิเคราะห์ของคุณ';

  @override
  String get eventDividend => 'คาดว่าจะได้รับเงินปันผล';

  @override
  String get eventDividendEstimate => 'ประมาณจากการจ่ายที่คุณบันทึกไว้';

  @override
  String get eventsHint =>
      'วันประกาศผลประกอบการของหุ้นในรายการโปรดและพอร์ตโฟลิโอของคุณใน 90 วันข้างหน้า เหตุการณ์ที่มีวันที่ซึ่งการวิเคราะห์ของคุณระบุไว้ รวมถึงเงินปันผลที่คาดว่าจะได้รับโดยประมาณจากการจ่ายที่คุณบันทึกไว้';

  @override
  String get eventsEmpty =>
      'ไม่มีเหตุการณ์ที่มีวันที่ใน 90 วันข้างหน้า เพิ่มรายการโปรดหรือหุ้นในพอร์ตโฟลิโอเพื่อดูวันประกาศผลประกอบการที่นี่ เงินปันผลที่บันทึกไว้จะแสดงการจ่ายครั้งถัดไปที่คาดว่าจะได้รับ';

  @override
  String get compareTitle => 'เปรียบเทียบ';

  @override
  String get compareAdd => 'เพิ่มหุ้น';

  @override
  String get compareRemove => 'ลบออก';

  @override
  String get compareTickerHint => 'ชื่อย่อหุ้น เช่น MSFT';

  @override
  String get compareHint =>
      'ตัวเลขสำคัญแสดงเคียงข้างกัน ค่าที่ดีที่สุดในแต่ละแถวจะถูกไฮไลต์ จำนวนเงินแสดงในสกุลเงินของหุ้นแต่ละตัว';

  @override
  String get compareNoAnalysis => 'ยังไม่มีการวิเคราะห์';

  @override
  String get portfolioDividends => 'เงินปันผลต่อปี';

  @override
  String portfolioDividendYield(String percent) {
    return 'ผลตอบแทน $percent';
  }

  @override
  String get portfolioDividendNote =>
      'เงินปันผลต่อปีที่คาดการณ์อิงจากเงินปันผลที่จ่ายในช่วง 12 เดือนที่ผ่านมา ไม่รับประกันการจ่ายในอนาคต';

  @override
  String positionDividend(String amount) {
    return 'เงินปันผล: $amount ต่อปี';
  }

  @override
  String get chartAvgCost => 'ต้นทุนเฉลี่ยคุณ';

  @override
  String get chartAlertLevel => 'แจ้งเตือน';

  @override
  String get marketsToday => 'ตลาดวันนี้';

  @override
  String get notesTitle => 'บันทึกของฉัน';

  @override
  String get notesHint => 'ซื้อเพราะอะไร กำลังจับตาอะไร และอะไรจะทำให้คุณขาย';

  @override
  String get notesInfo =>
      'จัดเก็บไว้ในอุปกรณ์นี้เท่านั้น การวิเคราะห์ด้วย AI จะนำบันทึกของคุณมาพิจารณา';

  @override
  String notesSaved(String date) {
    return 'บันทึกเมื่อ $date';
  }

  @override
  String get peersTitle => 'บริษัทที่คล้ายกัน';

  @override
  String get portfolioExport => 'ส่งออกเป็น CSV';

  @override
  String get portfolioImport => 'นำเข้าจาก CSV';

  @override
  String get portfolioImportHint =>
      'วางรายการซื้อบรรทัดละหนึ่งรายการ: ชื่อย่อหุ้น, จำนวน, ราคา, สกุลเงิน, วันที่ (YYYY-MM-DD) คอลัมน์คั่นได้ด้วยจุลภาค อัฒภาค หรือแท็บ ส่วนแถวหัวตารางจะมีหรือไม่มีก็ได้';

  @override
  String get portfolioImportButton => 'นำเข้า';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'เพิ่มรายการซื้อ $count รายการแล้ว',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ข้าม $count บรรทัด',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'พอร์ตโฟลิโอ รายการโปรด การแจ้งเตือนราคา และบันทึกจะซิงค์ในทุกอุปกรณ์ของคุณ';

  @override
  String syncLast(String time) {
    return 'ซิงค์ล่าสุด $time';
  }

  @override
  String get syncNow => 'ซิงค์เลย';

  @override
  String get syncFailed => 'ซิงค์ไม่สำเร็จ ระบบจะลองอีกครั้งโดยอัตโนมัติ';

  @override
  String get alertEmailTitle => 'อีเมลเมื่อการแจ้งเตือนทำงาน';

  @override
  String get alertEmailOn =>
      'เราตรวจสอบการแจ้งเตือนของคุณทุก ๆ ไม่กี่นาทีและส่งอีเมลถึงคุณ แม้แอปจะปิดอยู่';

  @override
  String get alertEmailSignIn =>
      'ลงชื่อเข้าใช้ด้วยอีเมลของคุณในการตั้งค่าเพื่อรับการแจ้งเตือนทางอีเมล แม้แอปจะปิดอยู่';

  @override
  String get portfolioHistory => 'มูลค่าตามช่วงเวลา';

  @override
  String get portfolioReviewTitle => 'วิเคราะห์พอร์ตโฟลิโอด้วย AI';

  @override
  String get portfolioReviewIntro =>
      'AI จะตรวจดูพอร์ตโฟลิโอทั้งหมดของคุณ: การกระจุกตัว ความเสี่ยงด้านกลุ่มอุตสาหกรรมและสกุลเงิน ความเสี่ยงที่หุ้นของคุณมีร่วมกัน และเงินปันผล ใช้การวิเคราะห์ 1 ครั้ง';

  @override
  String get portfolioReviewButton => 'วิเคราะห์พอร์ตโฟลิโอของฉัน';

  @override
  String get portfolioReviewAgain => 'วิเคราะห์อีกครั้ง';

  @override
  String get portfolioReviewWorking => 'กำลังวิเคราะห์พอร์ตโฟลิโอของคุณ…';

  @override
  String get digestTitle => 'สรุปรายสัปดาห์ทางอีเมล';

  @override
  String get digestHint =>
      'ทุกวันจันทร์: ความเคลื่อนไหวของรายการโปรดและพอร์ตโฟลิโอของคุณในสัปดาห์ที่ผ่านมา และวันประกาศผลประกอบการที่กำลังจะมาถึง';

  @override
  String get benchmarkTitle => 'เทียบกับ S&P 500';

  @override
  String get benchmarkTitleIndex => 'เทียบกับดัชนี';

  @override
  String get benchmarkHintIndex =>
      'เสมือนว่าการซื้อแต่ละครั้งนำเงินไปลงในกองทุนที่อิงดัชนีที่เลือกในวันเดียวกัน ไม่รวมเงินปันผล ผลตอบแทนในอดีตไม่ได้บ่งชี้ผลตอบแทนในอนาคต';

  @override
  String get benchmarkYours => 'การซื้อของคุณ';

  @override
  String benchmarkAhead(String points) {
    return 'ดีกว่าดัชนี $points จุดเปอร์เซ็นต์';
  }

  @override
  String benchmarkBehind(String points) {
    return 'ต่ำกว่าดัชนี $points จุดเปอร์เซ็นต์';
  }

  @override
  String get portfolioSell => 'ขาย';

  @override
  String portfolioSellTitle(String symbol) {
    return 'ขาย $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'ราคาขายต่อหุ้น ($currency)';
  }

  @override
  String get portfolioSellDate => 'วันที่ขาย';

  @override
  String get portfolioSellAll => 'ทั้งหมด';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'คุณถือ $quantity';
  }

  @override
  String get portfolioSold => 'ขาย';

  @override
  String get portfolioRealized => 'รับรู้แล้ว';

  @override
  String get portfolioClosed => 'หุ้นที่ปิดสถานะแล้ว';

  @override
  String get portfolioClosedNote => 'ขายหุ้นทั้งหมดแล้ว';

  @override
  String get portfolioTransactions => 'รายการซื้อขาย';

  @override
  String get portfolioRealizedByYear => 'กำไรที่รับรู้แล้วรายปี';

  @override
  String get portfolioRealizedHint =>
      'การขายจะจับคู่กับการซื้อที่เก่าที่สุดของคุณก่อน (FIFO) และแปลงค่าด้วยอัตราแลกเปลี่ยนของวันนี้ สำหรับการยื่นภาษี โปรดใช้รายงานจากโบรกเกอร์ของคุณ';

  @override
  String staleNewResults(String symbol, String date) {
    return 'หลังจากการวิเคราะห์นี้ มีการประกาศผลประกอบการรายไตรมาสใหม่แล้ว ($symbol, $date)';
  }

  @override
  String get newResultsBadge => 'ผลประกอบการใหม่';

  @override
  String get portfolioImportBrokers =>
      'รองรับไฟล์ส่งออกจาก Revolut, Trading 212 และ Interactive Brokers ด้วย รวมถึงรายการขาย ส่วนเงินปันผลและการฝากเงินจะถูกข้าม';

  @override
  String get portfolioImportFile => 'เลือกไฟล์';

  @override
  String offlineBanner(String time) {
    return 'ไม่มีการเชื่อมต่อ – กำลังแสดงข้อมูลที่บันทึกไว้ล่าสุด ($time)';
  }

  @override
  String get glossMarketCap =>
      'มูลค่าของทั้งบริษัทในตลาดหุ้น: ราคาหุ้น × จำนวนหุ้น';

  @override
  String get glossSharesOutstanding =>
      'จำนวนหุ้นที่บริษัทออกจำหน่าย ถ้าเพิ่มขึ้น หุ้นแต่ละหุ้นจะเป็นเจ้าของส่วนที่เล็กลง ส่วนการซื้อหุ้นคืนจะทำให้จำนวนลดลง';

  @override
  String get glossPeTrailing =>
      'ราคา ÷ กำไรต่อหุ้นในช่วง 12 เดือนที่ผ่านมา: คุณจ่ายเงินเท่ากับกำไรปัจจุบันกี่ปี ยิ่งต่ำยิ่งถูก แต่บริษัทที่โตเร็วมักมี P/E สูง';

  @override
  String get glossPeForward =>
      'เหมือน P/E แต่ใช้กำไรที่นักวิเคราะห์คาดไว้สำหรับ 12 เดือนข้างหน้า ถ้าต่ำกว่า P/E ย้อนหลัง แปลว่าคาดว่ากำไรจะเติบโต';

  @override
  String get glossPb =>
      'ราคา ÷ มูลค่าทางบัญชี (สินทรัพย์ลบหนี้สิน) ต่อหุ้น ประมาณ 1 หมายถึงตลาดให้มูลค่าบริษัทเท่ากับสิ่งที่บริษัทมีอยู่บนกระดาษ';

  @override
  String get glossPs =>
      'มูลค่าตลาด ÷ รายได้ต่อปี มีประโยชน์กับบริษัทที่ยังมีกำไรน้อยหรือไม่มีเลย ควรเปรียบเทียบในอุตสาหกรรมเดียวกัน';

  @override
  String get glossEvToFcf =>
      'มูลค่ากิจการรวมหนี้ (EV) ÷ เงินสดที่บริษัทสร้างได้ในหนึ่งปีหลังหักการลงทุน ยิ่งต่ำแปลว่าคุณได้เงินสดมากขึ้นเมื่อเทียบกับราคาที่จ่าย';

  @override
  String get glossPeg =>
      'P/E ÷ อัตราการเติบโตของกำไรต่อปีที่คาดไว้ (%) ประมาณ 1 มักถือว่าสมเหตุสมผล ช่วยมอง P/E โดยคำนึงถึงการเติบโต';

  @override
  String get glossEps =>
      'กำไรต่อหุ้นในช่วง 12 เดือนที่ผ่านมา EPS ที่เพิ่มขึ้นทุกปีเป็นหนึ่งในสัญญาณที่ชัดที่สุดของบริษัทที่แข็งแรง';

  @override
  String get glossBeta =>
      'หุ้นมักเคลื่อนไหวตามตลาดมากแค่ไหน: 1 = เหมือนตลาด, 1.5 = แกว่งมากกว่าประมาณ 50%, ต่ำกว่า 1 = นิ่งกว่า';

  @override
  String get glossRevenueTtm =>
      'ยอดขายทั้งหมดในช่วง 12 เดือนที่ผ่านมา ก่อนหักค่าใช้จ่ายใด ๆ';

  @override
  String get glossNetIncomeTtm =>
      'กำไรที่เหลือหลังหักค่าใช้จ่ายทั้งหมด ดอกเบี้ย และภาษี ในช่วง 12 เดือนที่ผ่านมา';

  @override
  String get glossGrossMargin =>
      'สัดส่วนของรายได้ที่เหลือหลังหักต้นทุนโดยตรงของสินค้า อัตรากำไรที่สูงมักแสดงถึงอำนาจในการตั้งราคา';

  @override
  String get glossOperatingMargin =>
      'สัดส่วนของรายได้ที่เหลือหลังหักค่าใช้จ่ายในการดำเนินธุรกิจ (ค่าจ้าง ค่าเช่า การตลาด) ก่อนดอกเบี้ยและภาษี';

  @override
  String get glossNetMargin =>
      'สัดส่วนของรายได้ที่กลายเป็นกำไรสุดท้าย 20% หมายความว่าทุกยอดขาย 100 มีกำไร 20';

  @override
  String get glossRoe =>
      'ผลตอบแทนต่อส่วนผู้ถือหุ้น: กำไรต่อปี ÷ เงินทุนของเจ้าของ แสดงว่าผู้บริหารใช้เงินของผู้ถือหุ้นได้ดีแค่ไหน สูงกว่าประมาณ 15% ถือว่าดีมาก';

  @override
  String get glossRoa =>
      'ผลตอบแทนต่อสินทรัพย์: กำไรต่อปี ÷ ทุกสิ่งที่บริษัทเป็นเจ้าของ ควรเปรียบเทียบในอุตสาหกรรมเดียวกัน';

  @override
  String get glossDebtToEquity =>
      'หนี้สิน ÷ เงินทุนของเจ้าของ ยิ่งสูงยิ่งใช้เงินกู้มาก: เสี่ยงขึ้นเมื่อดอกเบี้ยขึ้นหรือธุรกิจชะลอตัว';

  @override
  String get glossCurrentRatio =>
      'สินทรัพย์ระยะสั้น ÷ หนี้ที่ต้องจ่ายภายในหนึ่งปี สูงกว่า 1 หมายความว่าบริษัทจ่ายหนี้ระยะใกล้ได้';

  @override
  String get glossRevenueGrowth => 'รายได้เติบโตขึ้นเท่าไรเมื่อเทียบกับปีก่อน';

  @override
  String get glossEpsGrowth => 'กำไรต่อหุ้นเติบโตขึ้นเท่าไรเมื่อเทียบกับปีก่อน';

  @override
  String get glossDividendYield =>
      'เงินปันผลต่อปี ÷ ราคาหุ้น: รายได้เงินสดที่คุณจะได้รับต่อปี คิดเป็นเปอร์เซ็นต์ของเงินที่คุณจ่าย';

  @override
  String get glossDividendPerShare =>
      'เงินปันผลที่จ่ายต่อหุ้นในช่วงปีที่ผ่านมา';

  @override
  String get glossPayoutRatio =>
      'สัดส่วนของกำไรที่จ่ายเป็นเงินปันผล ถ้าเกิน 100% บริษัทจ่ายมากกว่าที่หาได้ ซึ่งมักอยู่ได้ไม่นาน';

  @override
  String get portfolioBeta => 'เบต้าของพอร์ตโฟลิโอ';

  @override
  String get glossPortfolioBeta =>
      'เบต้าของหุ้นที่คุณถือ ถ่วงน้ำหนักตามมูลค่า: เมื่อตลาดขยับ 1% หุ้นของคุณจะขยับประมาณกี่เปอร์เซ็นต์ หากสูงกว่า 1 จะแกว่งมากกว่าตลาด ต่ำกว่า 1 จะแกว่งน้อยกว่า ไม่รวมเงินสด';

  @override
  String get portfolioTop3 => 'หุ้นที่ถือ 3 อันดับแรก';

  @override
  String get glossPortfolioTop3 =>
      'สัดส่วนมูลค่าหุ้นของคุณที่อยู่ในหุ้นที่ถือมากที่สุด 3 ตัว ยิ่งสูง ข่าวร้ายของบริษัทเดียวก็ยิ่งกระทบทั้งพอร์ตได้มาก';

  @override
  String get glossDividendGrowth5y =>
      'เงินปันผลต่อหุ้นเติบโตขึ้นเฉลี่ยปีละเท่าไรในช่วงห้าปีที่ผ่านมา การเติบโตอย่างสม่ำเสมอมักหมายความว่าบริษัทมั่นใจในกระแสเงินสดของตน ส่วนการลดเงินปันผลมักเป็นสัญญาณเตือน';

  @override
  String get glossYieldOnCost =>
      'เงินปันผลที่ได้รับใน 12 เดือนล่าสุด หารด้วยเงินที่คุณจ่ายซื้อหุ้นที่ยังถืออยู่ ต่างจากอัตราผลตอบแทนเงินปันผล ค่านี้วัดจากราคาที่คุณซื้อเอง ไม่ใช่ราคาวันนี้';

  @override
  String get glossTitle => 'หมายความว่าอะไร';

  @override
  String get watchNewsTitle => 'ข่าวหุ้นของคุณ';

  @override
  String get undo => 'เลิกทำ';

  @override
  String get watchSort => 'จัดเรียง';

  @override
  String get watchSortOwn => 'ลำดับของฉัน';

  @override
  String get watchSortGainers => 'ขึ้นมากที่สุดก่อน';

  @override
  String get watchSortLosers => 'ลงมากที่สุดก่อน';

  @override
  String get watchSortName => 'ตามชื่อย่อ (A–Z)';

  @override
  String get watchHint =>
      'ลากที่จับเพื่อจัดลำดับใหม่ ปัดไปทางซ้ายเพื่อลบ เส้นแสดง 30 วันล่าสุด';

  @override
  String analysisReady(String symbol) {
    return '$symbol: การวิเคราะห์ของคุณพร้อมแล้ว';
  }

  @override
  String alertFromCost(String price) {
    return 'จากราคาซื้อเฉลี่ยของคุณ ($price):';
  }

  @override
  String get briefTitle => 'วันนี้กับหุ้นของคุณ';

  @override
  String get briefButton => 'สรุปวันนี้';

  @override
  String get briefHint =>
      'สรุปสั้นๆ ด้วย AI ว่าพอร์ตและหุ้นโปรดของคุณเคลื่อนไหวอย่างไรวันนี้ และข่าวล่าสุดพูดถึงอะไร ไม่ใช้สิทธิ์การวิเคราะห์';

  @override
  String get briefRefresh => 'อัปเดต';

  @override
  String get sectionEarnings => 'ผลประกอบการ';

  @override
  String earningsNext(String date) {
    return 'รายงานครั้งถัดไป: $date';
  }

  @override
  String get earningsExpected => 'EPS คาดการณ์';

  @override
  String get earningsReported => 'EPS ที่รายงาน';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: 'เท่ากับหรือสูงกว่า EPS คาดการณ์ $beats จาก $total ไตรมาสล่าสุด',
      one: 'เท่ากับหรือสูงกว่า EPS คาดการณ์ $beats จาก 1 ไตรมาส',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol จะประกาศผลประกอบการรายไตรมาสพรุ่งนี้';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol ประกาศผลประกอบการรายไตรมาสวันนี้';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return '$symbol คาดว่าจะจ่ายเงินปันผลวันนี้';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'ประมาณ $amount บันทึกลงในพอร์ตโฟลิโอของคุณเมื่อได้รับแล้ว';
  }

  @override
  String get dividendRemindersTitle => 'แจ้งเตือนเงินปันผล';

  @override
  String get dividendRemindersSubtitle =>
      'แจ้งเตือนในวันที่คาดว่าจะได้รับเงินปันผลตามรอบการจ่ายที่คุณบันทึกไว้ เพื่อให้คุณบันทึกได้';

  @override
  String get earningsRemindersTitle => 'แจ้งเตือนผลประกอบการ';

  @override
  String get earningsRemindersSubtitle =>
      'แจ้งเตือนล่วงหน้าหนึ่งวันก่อนที่หุ้นในรายการโปรดหรือพอร์ตของคุณจะประกาศผลประกอบการรายไตรมาส';

  @override
  String addAllToFavorites(int count) {
    return 'เพิ่มทั้งหมดในรายการโปรด ($count)';
  }

  @override
  String get portfolioImportPhoto => 'นำเข้าจากภาพหน้าจอ';

  @override
  String get holdingsReading => 'กำลังอ่านหุ้นที่คุณถือ…';

  @override
  String get holdingsReviewTitle => 'รายการหุ้นที่พบ';

  @override
  String get holdingsReviewHint =>
      'ตรวจสอบตัวเลขก่อนเพิ่ม ราคาคือราคาซื้อเฉลี่ยต่อหุ้นของคุณ ไม่ใช่ราคาวันนี้';

  @override
  String get holdingsNoPrice => 'ไม่มีราคาซื้อเฉลี่ยในรูปภาพ';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'เพิ่มหุ้น $count รายการ',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'ไม่พบหุ้นที่ถืออยู่ในรูปภาพนี้ ลองใช้ภาพหน้าจอของหน้าพอร์ตหรือหุ้นที่ถือในแอปโบรกเกอร์ของคุณ';

  @override
  String get week52Range => 'ช่วง 52 สัปดาห์';

  @override
  String week52BelowHigh(String percent) {
    return 'ต่ำกว่าสูงสุดรอบ 52 สัปดาห์ $percent';
  }

  @override
  String get week52AtHigh => 'อยู่ที่สูงสุดรอบ 52 สัปดาห์';

  @override
  String get alertKindTrailing => 'ลดลงจากจุดสูงสุด';

  @override
  String get alertTrailingPercent => 'การลดลงจากจุดสูงสุด (%)';

  @override
  String get alertTrailingHint =>
      'ติดตามราคาขึ้นไป: แจ้งเตือนเมื่อราคาลดลงเท่านี้จากจุดสูงสุดนับตั้งแต่ตั้งค่า';

  @override
  String alertDescTrailing(String percent) {
    return 'ลดลง $percent จากจุดสูงสุด';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'สูงสุดจนถึงตอนนี้: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol ลดลง $percent จากจุดสูงสุด';
  }

  @override
  String get sectionInsiders => 'การซื้อขายของผู้บริหาร';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ซื้อ $count ครั้ง',
      one: 'ซื้อ 1 ครั้ง',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ขาย $count ครั้ง',
      one: 'ขาย 1 ครั้ง',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'สุทธิ: $shares หุ้น';
  }

  @override
  String get insiderBuy => 'ซื้อ';

  @override
  String get insiderSell => 'ขาย';

  @override
  String get insiderHint =>
      'การซื้อและขายในตลาดโดยผู้บริหารและกรรมการในช่วง 90 วันที่ผ่านมา (SEC Form 4) ไม่นับการใช้สิทธิออปชันและการให้หุ้นเป็นรางวัล';

  @override
  String get insiderNone =>
      'ไม่มีการซื้อหรือขายในตลาดโดยผู้บริหารในช่วง 90 วันที่ผ่านมา';

  @override
  String get analystTrend => 'มุมมองเปลี่ยนไปอย่างไรในแต่ละเดือน';

  @override
  String get watchListAll => 'ทั้งหมด';

  @override
  String get watchListNew => 'รายการใหม่';

  @override
  String get watchListName => 'ชื่อรายการ';

  @override
  String get watchListRename => 'เปลี่ยนชื่อรายการ';

  @override
  String get watchListDelete => 'ลบรายการ';

  @override
  String get watchListAddTo => 'เพิ่มลงในรายการ';

  @override
  String get watchListEmpty =>
      'ยังไม่มีหุ้นในรายการนี้ แตะปุ่มรายการข้างหุ้นเพื่อเพิ่ม';

  @override
  String get portfolioAskTitle => 'คำถามเกี่ยวกับพอร์ตโฟลิโอของคุณ';

  @override
  String get rangeYtd => 'ปีนี้';

  @override
  String get backupTitle => 'การสำรองข้อมูล';

  @override
  String get backupSave => 'บันทึกข้อมูลสำรอง';

  @override
  String get backupSaveHint =>
      'รายการโปรด รายการ พอร์ตโฟลิโอ การแจ้งเตือน และบันทึกของคุณในไฟล์เดียว';

  @override
  String get backupRestore => 'กู้คืนจากข้อมูลสำรอง';

  @override
  String get backupRestoreHint =>
      'เพิ่มสิ่งที่อยู่ในไฟล์ ข้อมูลที่คุณมีอยู่ตอนนี้จะไม่ถูกลบ';

  @override
  String get backupRestored => 'กู้คืนข้อมูลสำรองแล้ว';

  @override
  String get backupInvalid => 'ไฟล์นี้ไม่ใช่ข้อมูลสำรองของ WhatStock';

  @override
  String get allocationPositions => 'หุ้น';

  @override
  String get allocationSectors => 'หมวดธุรกิจ';

  @override
  String get allocationCurrencies => 'สกุลเงิน';

  @override
  String get allocationAccounts => 'บัญชี';

  @override
  String get compareReturn1y => 'ผลตอบแทน 1 ปี';

  @override
  String get compareFromHigh => 'ห่างจากสูงสุดรอบ 52 สัปดาห์';

  @override
  String get briefAutoTitle => 'สรุปประจำวันทุกเช้า';

  @override
  String get briefAutoSubtitle =>
      '“วันนี้กับหุ้นของคุณ” จะสร้างขึ้นอัตโนมัติหลัง 7:00 น. ขณะที่แอปทำงานอยู่ บนคอมพิวเตอร์จะมีการแจ้งเตือนให้ทราบ ใช้โควตาคำถามรายวันของคุณ ไม่ใช้สิทธิ์การวิเคราะห์';

  @override
  String get targetsButton => 'สัดส่วนเป้าหมาย';

  @override
  String get targetsTitle => 'สัดส่วนเป้าหมาย';

  @override
  String get targetsHint =>
      'กำหนดว่าหุ้นแต่ละตัวควรมีสัดส่วนเท่าใดในพอร์ต เว้นช่องว่างไว้หากไม่มีเป้าหมาย จากนั้นแอปจะแสดงว่าควรซื้อหรือขายอะไรเพื่อไปถึงเป้าหมาย';

  @override
  String targetsSum(String percent) {
    return 'รวม: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'ซื้อ ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'ขาย ≈ $amount';
  }

  @override
  String get rebalanceOk => 'ตรงเป้าหมาย';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol มี EPS สูงกว่าคาดการณ์';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol มี EPS ต่ำกว่าคาดการณ์';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'EPS ที่รายงาน $actual คาดการณ์ $estimate';
  }

  @override
  String get newsExplain => 'หมายความว่าอย่างไร';

  @override
  String get watchAlertAll => 'แจ้งเตือนเมื่อเคลื่อนไหวแรงรายวัน';

  @override
  String get watchAlertAllHint =>
      'การแจ้งเตือนราคาสำหรับหุ้นทุกตัวในรายการนี้ ซึ่งจะดังเมื่อหุ้นเคลื่อนไหวเท่านี้ภายในวันเดียว ทั้งขึ้นหรือลง หุ้นที่มีอยู่แล้วจะคงของเดิมไว้';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ตั้งการแจ้งเตือน $count รายการแล้ว',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'ส่งออกกำไรที่รับรู้แล้ว (CSV)';

  @override
  String get portfolioAnnualReturn => 'ผลตอบแทนต่อปี';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / ปี';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'ผลตอบแทนต่อปีแบบถ่วงน้ำหนักด้วยเงิน (XIRR): คำนึงถึงช่วงเวลาที่คุณซื้อและขาย เงินที่เพิ่มเข้ามาภายหลังจึงไม่ทำให้ตัวเลขผิดเพี้ยน จะแสดงเมื่อการซื้อครั้งแรกของคุณมีอายุอย่างน้อยหนึ่งปี ไม่รวมเงินปันผล';

  @override
  String get eventsAddToCalendar => 'เพิ่มในปฏิทิน (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'แจ้งเตือนพอร์ต';

  @override
  String get portfolioMoveAlertSubtitle =>
      'แจ้งเตือนเมื่อพอร์ตทั้งหมดของคุณเปลี่ยนแปลงมากขนาดนี้ภายในวันเดียว';

  @override
  String get portfolioMoveAlertOff => 'ปิด';

  @override
  String portfolioMoveUp(String percent) {
    return 'พอร์ตของคุณขึ้น $percent วันนี้';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'พอร์ตของคุณลง $percent วันนี้';
  }

  @override
  String get whatIfTitle => 'ถ้าคุณลงทุนไว้ล่ะ?';

  @override
  String get whatIfAmount => 'จำนวนเงิน';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount ที่ลงทุนเมื่อ $periodก่อน จะมีมูลค่าในวันนี้';
  }

  @override
  String get whatIfNote =>
      'คำนวณจากราคาหุ้นเท่านั้น ไม่รวมเงินปันผล ค่าธรรมเนียม และภาษี ผลตอบแทนในอดีตไม่ได้บ่งชี้ผลตอบแทนในอนาคต';

  @override
  String get watchShare => 'แชร์รายการ';

  @override
  String get watchImport => 'เพิ่มชื่อย่อหุ้น';

  @override
  String get watchImportHint =>
      'วางชื่อย่อหุ้นที่คั่นด้วยจุลภาค เว้นวรรค หรือขึ้นบรรทัดใหม่ เช่น รายการที่มีคนแชร์ให้คุณ';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'เพิ่มหุ้น $count ตัวแล้ว',
      one: 'เพิ่มหุ้น 1 ตัวแล้ว',
      zero: 'ไม่มีหุ้นใหม่',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'ใหญ่ที่สุดก่อน';

  @override
  String get positionsSortGain => 'ผลตอบแทนรวมสูงสุดก่อน';

  @override
  String get positionsSortToday => 'ดีที่สุดวันนี้ก่อน';

  @override
  String get chartMyBuys => 'การซื้อของคุณ';

  @override
  String get chartMySells => 'การขายของคุณ';

  @override
  String get shortcutsTitle => 'คีย์ลัดแป้นพิมพ์';

  @override
  String usMarketOpen(String time) {
    return 'ตลาดสหรัฐฯ เปิด · ปิดในอีก $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'ตลาดสหรัฐฯ ปิด · เปิดในอีก $time';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes นาที';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours ชม. $minutes นาที';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days วัน $hours ชม.';
  }

  @override
  String get dividendGoalSet => 'ตั้งเป้าหมายเงินปันผลรายเดือน';

  @override
  String get dividendGoalTitle => 'เป้าหมายเงินปันผลรายเดือน';

  @override
  String get dividendGoalAmount => 'เงินปันผลต่อเดือน';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'ประมาณ $amount ต่อเดือนตามอัตราผลตอบแทนปัจจุบัน: $percent ของเป้าหมาย $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'ประมาณ $amount ต่อเดือนตามอัตราผลตอบแทนปัจจุบัน: ถึงเป้าหมาย $goal แล้ว';
  }

  @override
  String get portfolioAccount => 'บัญชี';

  @override
  String get portfolioAccountHint => 'เช่น RMF (ไม่บังคับ)';

  @override
  String get portfolioAccountAdd => 'ระบุบัญชี';

  @override
  String get portfolioAccountsAll => 'ทุกบัญชี';

  @override
  String get portfolioAccountNote =>
      'เฉพาะรายการซื้อขายและเงินปันผลของบัญชีนี้ เงินสด เป้าหมาย และการวิเคราะห์ด้วย AI แสดงอยู่ใน “ทุกบัญชี”';

  @override
  String get portfolioNoAccount => 'ไม่มีบัญชี';

  @override
  String portfolioFee(String currency) {
    return 'ค่าธรรมเนียม ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'เพิ่มค่าธรรมเนียม';

  @override
  String portfolioFeeRow(String amount) {
    return 'ค่าธรรมเนียม: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'สรุปรายปี';

  @override
  String get portfolioProceeds => 'รายรับจากการขาย';

  @override
  String get portfolioCostBasis => 'ต้นทุนการได้มา';

  @override
  String get portfolioFeesPaid => 'ค่าธรรมเนียมที่จ่าย';

  @override
  String get portfolioAnnualSummaryNote =>
      'จำนวนเงินเป็นสกุลเงินเดิม ไม่ได้แปลงค่า รายรับจากการขายหักค่าธรรมเนียมการขายแล้ว ต้นทุนการได้มารวมค่าธรรมเนียมการซื้อ (FIFO) สำหรับการยื่นภาษี โปรดแปลงค่าด้วยอัตราแลกเปลี่ยนที่หน่วยงานภาษีของคุณกำหนด';

  @override
  String get portfolioGoalSet => 'ตั้งเป้าหมาย';

  @override
  String get portfolioGoalTitle => 'เป้าหมายพอร์ตโฟลิโอ';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent ของเป้าหมาย $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'ถึงเป้าหมาย $amount แล้ว';
  }

  @override
  String get portfolioGoalRemove => 'ลบเป้าหมาย';

  @override
  String get alertEdit => 'แก้ไขการแจ้งเตือน';

  @override
  String get positionOpenLots => 'ยังถืออยู่ (เก่าสุดก่อน)';

  @override
  String get lotRemoved => 'ลบรายการซื้อขายแล้ว';

  @override
  String get alertDeleted => 'ลบการแจ้งเตือนแล้ว';

  @override
  String get alertsClearTriggered => 'ล้างการแจ้งเตือนที่ทำงานแล้ว';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ล้างการแจ้งเตือน $count รายการแล้ว',
      one: 'ล้างการแจ้งเตือน 1 รายการแล้ว',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'หน้าจอหลัก';

  @override
  String get allocationCountries => 'ประเทศ';

  @override
  String get newsExplainNoteResearch =>
      'คำอธิบายจาก AI ที่ค้นหาข้อเท็จจริงบนเว็บ เปิดอ่านบทความ และประเมินว่าแหล่งที่มาน่าเชื่อถือเพียงใด ไม่ใช่คำแนะนำในการลงทุน ใช้โควตาคำถามรายวันของคุณ ไม่ใช้สิทธิ์การวิเคราะห์';

  @override
  String get sourceOfficial => 'ทางการ';

  @override
  String get sourcePressRelease => 'ข่าวประชาสัมพันธ์';

  @override
  String get sourceMajorNews => 'สื่อหลัก';

  @override
  String get sourceOpinion => 'ความเห็น';

  @override
  String get earningsSummaryButton => 'รายงานล่าสุดมีอะไรบ้าง';

  @override
  String get earningsSummaryNote =>
      'สรุปโดย AI จากการประกาศผลประกอบการของบริษัทและข่าวในสื่อที่ค้นพบบนเว็บ ไม่ใช่คำแนะนำในการลงทุน ใช้โควตาคำถามรายวันของคุณ ไม่ใช้สิทธิ์การวิเคราะห์';

  @override
  String get compareLastSurprise => 'EPS ไตรมาสล่าสุด vs คาดการณ์';

  @override
  String get compareNextReport => 'รายงานครั้งถัดไป';

  @override
  String get resolvingDescription => 'กำลังค้นหาว่าคุณหมายถึงหุ้นตัวใด…';

  @override
  String get instrumentTitle => 'เกี่ยวกับตราสารนี้';

  @override
  String get instrumentHint =>
      'ไม่มีข้อมูลบริษัทสำหรับสัญลักษณ์นี้ อาจเป็น ETF กองทุน หรือใบรับฝากหลักทรัพย์ ถาม AI ว่ามันคืออะไร ถืออะไรอยู่ และมีค่าใช้จ่ายเท่าไร';

  @override
  String get instrumentAsk => 'นี่คืออะไร';

  @override
  String get instrumentNote =>
      'คำอธิบายโดย AI จากหน้ากองทุนของผู้ออกและเว็บไซต์การเงินที่ค้นพบบนเว็บ ไม่ใช่คำแนะนำในการลงทุน ใช้โควตาคำถามรายวันของคุณ ไม่ใช้สิทธิ์การวิเคราะห์';

  @override
  String suggestAskAi(String query) {
    return 'ถาม AI: “$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'ไม่มีราคาปัจจุบันสำหรับ $symbols';
  }

  @override
  String get eventsRecentResults => 'ผลประกอบการที่รายงานล่าสุด';

  @override
  String get saveToNotes => 'เก็บไว้ในบันทึกของฉัน';

  @override
  String get savedToNotes => 'เก็บไว้ในบันทึกของคุณแล้ว';

  @override
  String get portfolioDividendsReceived => 'เงินปันผลที่ได้รับ';

  @override
  String get portfolioDividendsThisYear => 'ปีนี้';

  @override
  String get portfolioDividendsAllTime => 'ทั้งหมด';

  @override
  String get portfolioAddDividend => 'เพิ่มเงินปันผล';

  @override
  String portfolioDividendAmount(String currency) {
    return 'จำนวนเงินที่ได้รับ ($currency)';
  }

  @override
  String get portfolioDividendDate => 'วันที่จ่าย';

  @override
  String get portfolioDividendsEmpty =>
      'ยังไม่มีการบันทึกเงินปันผล เพิ่มด้วยตนเอง หรือนำเข้าไฟล์ส่งออกจากโบรกเกอร์ของคุณ ระบบจะดึงแถวเงินปันผลมาด้วย';

  @override
  String get portfolioSplit => 'การแตกหุ้น';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'การแตกหุ้น: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'รายการซื้อและขายที่ลงวันที่ก่อนการแตกหุ้นจะถูกปรับ: จำนวนหุ้นจะถูกคูณและราคาต่อหุ้นจะถูกหาร ดังนั้นต้นทุนจะยังคงเท่าเดิม';

  @override
  String get portfolioSplitRatio => 'อัตราส่วน (ใหม่ : เดิม)';

  @override
  String get portfolioSplitRatioError =>
      'กรอกอัตราส่วน เช่น 10:1 หรือ 1:10 สำหรับการรวมหุ้น (reverse split)';

  @override
  String get portfolioSplitDate => 'วันที่แตกหุ้น';

  @override
  String portfolioSplitRow(String ratio) {
    return 'การแตกหุ้น $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'ลบการแตกหุ้นแล้ว';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'เพิ่มการแตกหุ้น $count รายการแล้ว',
      one: 'เพิ่มการแตกหุ้น 1 รายการแล้ว',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'เพิ่มเงินปันผล $count รายการแล้ว',
      one: 'เพิ่มเงินปันผล 1 รายการแล้ว',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'ส่งออกเงินปันผล (CSV)';

  @override
  String get portfolioDividendDeleted => 'ลบเงินปันผลแล้ว';

  @override
  String get portfolioDividendsHint =>
      'จำนวนเงินตามที่เข้าบัญชีของคุณ ในสกุลเงินที่จ่าย ยอดรวมแปลงด้วยอัตราวันนี้ สำหรับการยื่นภาษี โปรดใช้รายงานจากโบรกเกอร์ของคุณ';

  @override
  String get awayTitle => 'ขณะที่คุณไม่อยู่';

  @override
  String awaySince(String when) {
    return 'ตั้งแต่ $when';
  }

  @override
  String get awayQuiet => 'ไม่มีอะไรเปลี่ยนแปลงมากนัก';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'การแจ้งเตือน $count รายการทำงาน',
      one: 'การแจ้งเตือน 1 รายการทำงาน',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'ประกาศผลประกอบการ: $symbols';
  }

  @override
  String get moveWhyButton => 'ทำไมวันนี้ราคาขยับ?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent วันนี้';
  }

  @override
  String get moveWhyNote =>
      'คำอธิบายจาก AI โดยอิงข่าววันนี้ที่พบบนเว็บ สาเหตุจริงอาจไม่ทราบหรือแตกต่างออกไป ไม่ใช่คำแนะนำการลงทุน ใช้โควตาคำถามรายวันของคุณ ไม่ใช่การวิเคราะห์';

  @override
  String get sectionTechnical => 'ภาพทางเทคนิค';

  @override
  String get labelSma50 => 'ค่าเฉลี่ย 50 วัน';

  @override
  String get labelSma200 => 'ค่าเฉลี่ย 200 วัน';

  @override
  String get labelRsi => 'RSI (14 วัน)';

  @override
  String get labelVolatility30 => 'ความผันผวน (30 วัน)';

  @override
  String techAbove(String percent) {
    return 'สูงกว่า $percent';
  }

  @override
  String techBelow(String percent) {
    return 'ต่ำกว่า $percent';
  }

  @override
  String get techOverbought => 'ซื้อมากเกินไป';

  @override
  String get techOversold => 'ขายมากเกินไป';

  @override
  String get techNeutral => 'เป็นกลาง';

  @override
  String get techGoldenCross =>
      'ค่าเฉลี่ย 50 วันอยู่เหนือค่าเฉลี่ย 200 วัน – แนวโน้มขาขึ้นตามการตีความแบบดั้งเดิม';

  @override
  String get techDeathCross =>
      'ค่าเฉลี่ย 50 วันอยู่ใต้ค่าเฉลี่ย 200 วัน – แนวโน้มขาลงตามการตีความแบบดั้งเดิม';

  @override
  String get glossSma50 =>
      'ราคาปิดเฉลี่ยของ 50 วันทำการล่าสุด ราคาที่อยู่เหนือเส้นนี้มักถูกมองว่าเป็นความแข็งแรงระยะสั้น ส่วนราคาที่อยู่ใต้เส้นถือเป็นความอ่อนแอ';

  @override
  String get glossSma200 =>
      'ราคาปิดเฉลี่ยของ 200 วันทำการล่าสุด – เส้นแนวโน้มระยะยาวแบบดั้งเดิม นักลงทุนจำนวนมากมองว่าราคาที่อยู่เหนือเส้นนี้คือแนวโน้มขาขึ้นระยะยาว';

  @override
  String get glossRsi =>
      'ดัชนีความแข็งแรงสัมพัทธ์: เปรียบเทียบกำไรล่าสุดกับขาดทุนล่าสุดบนสเกล 0–100 เหนือ 70 มักเรียกว่าหุ้นถูกซื้อมากเกินไป (ขึ้นเร็ว) ต่ำกว่า 30 เรียกว่าถูกขายมากเกินไป – แต่แนวโน้มที่แข็งแรงอาจอยู่ตรงนั้นได้นาน';

  @override
  String get glossVolatility =>
      'ราคาแกว่งตัววันต่อวันมากแค่ไหน คิดเป็นรายปี: 20% หมายความว่าในปีปกติราคาจะเคลื่อนไหวอยู่ในช่วงประมาณ ±20% ความผันผวนที่สูงขึ้นหมายถึงการเคลื่อนไหวที่ใหญ่ขึ้นทั้งสองทาง';

  @override
  String get techNote =>
      'คำนวณจากราคาปิดรายวัน สัญญาณทางเทคนิคบอกเล่าอดีต ไม่ใช่อนาคต';

  @override
  String portfolioAbove200(int above, int count) {
    return '$above จาก $count สถานะอยู่เหนือเส้นค่าเฉลี่ย 200 วันของตัวเอง';
  }

  @override
  String get watchSignalsTitle => 'สัญญาณ';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · ขายมากเกินไป';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · ซื้อมากเกินไป';
  }

  @override
  String get signalCrossedAbove => 'ทะลุขึ้นเหนือค่าเฉลี่ย 200 วัน';

  @override
  String get signalCrossedBelow => 'หลุดลงใต้ค่าเฉลี่ย 200 วัน';

  @override
  String get signalAlertsTitle => 'การแจ้งเตือนสัญญาณทางเทคนิค';

  @override
  String get signalAlertsSubtitle =>
      'วันละครั้ง เมื่อหุ้นที่คุณติดตามเข้าสู่ภาวะขายมากเกินไปหรือซื้อมากเกินไป (RSI) หรือราคาตัดผ่านค่าเฉลี่ย 200 วัน';

  @override
  String get signalAlertsNotification => 'สัญญาณทางเทคนิค';

  @override
  String get glossaryPageTitle => 'อภิธานศัพท์';

  @override
  String get glossaryPageSubtitle =>
      'คำอธิบายง่าย ๆ ของทุกตัวเลขที่แอปแสดง ตั้งแต่ P/E ถึง RSI';

  @override
  String get glossarySearchHint => 'ค้นหาในอภิธานศัพท์';

  @override
  String get portfolioCash => 'เงินสด';

  @override
  String get portfolioCashTitle => 'ยอดเงินสด';

  @override
  String get portfolioCashHint =>
      'เงินที่ยังไม่ได้ลงทุนในบัญชีโบรกเกอร์ของคุณ แยกตามสกุลเงิน นับรวมในมูลค่ารวมและสัดส่วนการลงทุน แต่ไม่นับในผลตอบแทน';

  @override
  String portfolioCashAmount(String currency) {
    return 'จำนวนเงิน ($currency)';
  }

  @override
  String get portfolioCashEdit => 'ตั้งค่ายอดเงินสด';

  @override
  String get portfolioDividendsByMonth => 'รายเดือน';

  @override
  String get dividendsLegendReceived => 'ได้รับแล้ว';

  @override
  String get dividendsLegendExpected => 'คาดการณ์';

  @override
  String get portfolioDividendsExpected => 'คาดว่าจะได้รับถัดไป';

  @override
  String get portfolioDividendsExpectedNote =>
      'ประมาณจากวันที่และจำนวนเงินของการจ่ายที่คุณบันทึกไว้ บริษัทอาจเปลี่ยนแปลงหรืองดจ่ายได้';

  @override
  String portfolioDividendAround(String date) {
    return 'ประมาณ $date';
  }
}
