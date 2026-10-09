// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hausa (`ha`).
class AppLocalizationsHa extends AppLocalizations {
  AppLocalizationsHa([String locale = 'ha']) : super(locale);

  @override
  String get appTitle => 'Reszveny';

  @override
  String get homeTagline => 'Ɗauki hoton hannun jari ka san duk abin da ya shafe shi.';

  @override
  String get homeHint =>
      'Takardar shaidar hannun jari, allon manhajar broker, jarida ko tambarin kamfani – duk abin da zai nuna hannun jari.';

  @override
  String get takePhoto => 'Ɗauki hoto';

  @override
  String get chooseFromGallery => 'Zaɓa daga gallery';

  @override
  String get chooseImage => 'Zaɓi hoto';

  @override
  String get enterTickerManually => 'Shigar da ticker da hannu';

  @override
  String get tickerInputLabel => 'Alamar ticker';

  @override
  String get tickerInputHint => 'misali AAPL';

  @override
  String get lookUp => 'Nema';

  @override
  String demoModeBanner(String symbols) {
    return 'Yanayin demo – ba a saita maɓallin bayanan kasuwa ba. Bayanan misali suna nan don: $symbols.';
  }

  @override
  String get recognizing => 'Ana nazarin hoton…';

  @override
  String get loadingData => 'Ana loda bayanai…';

  @override
  String get noCandidatesTitle => 'Ba a gane hannun jari ba';

  @override
  String get noCandidatesBody =>
      'Ba mu iya gane hannun jari a cikin wannan hoto ba. Gwada hoto mafi haske, ko shigar da ticker da hannu.';

  @override
  String get whatWeSaw => 'Abin da muka gani';

  @override
  String get chooseCandidateTitle => 'Wane hannun jari kake nufi?';

  @override
  String confidencePercent(int percent) {
    return 'Tabbaci $percent%';
  }

  @override
  String get settings => 'Saituna';

  @override
  String get language => 'Harshe';

  @override
  String get systemLanguage => 'Tsohon harshen na\'ura';

  @override
  String get about => 'Game da';

  @override
  String get disclaimer =>
      'Wannan manhaja tana ba da bayani ne kawai, ba shawarar zuba jari ba. Bayanai na iya jinkiri ko rashin daidaito.';

  @override
  String dataSource(String source) {
    return 'Tushen bayanai: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Ganewa: $source';
  }

  @override
  String get retry => 'Sake gwada';

  @override
  String get cancel => 'Soke';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Rufe';

  @override
  String get errorGeneric => 'Wani abu ya ɓaci.';

  @override
  String get errorSectionUnavailable => 'Ba a iya loda wannan sashe ba.';

  @override
  String get notAvailable => 'babu';

  @override
  String get sectionIdentity => 'Shaida';

  @override
  String get sectionPrice => 'Farashi';

  @override
  String get sectionValuation => 'Kimantawa';

  @override
  String get sectionFinancials => 'Bayanan kuɗi';

  @override
  String get sectionDividend => 'Rabon riba';

  @override
  String get sectionProfile => 'Bayanin kamfani';

  @override
  String get sectionAnalysts => 'Ƙimar manazarta';

  @override
  String get sectionNews => 'Labarai';

  @override
  String get sectionRecognition => 'Bayanan ganewa';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Kasuwar hannun jari';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Nau\'in kuɗi';

  @override
  String get labelCountry => 'Ƙasa';

  @override
  String get labelIndustry => 'Masana\'anta';

  @override
  String get labelSector => 'Sashe';

  @override
  String get labelWebsite => 'Gidan yanar gizo';

  @override
  String get labelIpoDate => 'Ranar IPO';

  @override
  String get labelMarketCap => 'Ƙimar kasuwa';

  @override
  String get labelSharesOutstanding => 'Hannun jarin da ke yawo';

  @override
  String get labelEmployees => 'Ma\'aikata';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Babban ofis';

  @override
  String get labelDescription => 'Bayani';

  @override
  String get labelLastPrice => 'Farashin ƙarshe';

  @override
  String get labelChange => 'Canji';

  @override
  String get labelOpen => 'Buɗewa';

  @override
  String get labelDayHigh => 'Mafi girma na rana';

  @override
  String get labelDayLow => 'Mafi ƙanƙanta na rana';

  @override
  String get labelPreviousClose => 'Rufewar baya';

  @override
  String get labelWeek52High => 'Mafi girma a makonni 52';

  @override
  String get labelWeek52Low => 'Mafi ƙanƙanta a makonni 52';

  @override
  String get labelAverageVolume10d => 'Matsakaicin volume (kwanaki 10)';

  @override
  String updatedAt(String time) {
    return 'An sabunta $time';
  }

  @override
  String get labelPeTrailing => 'P/E (trailing)';

  @override
  String get labelPeForward => 'P/E (forward)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / free cash flow';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Kuɗin shiga (TTM)';

  @override
  String get labelNetIncomeTtm => 'Tsantsar riba (TTM)';

  @override
  String get labelGrossMargin => 'Gross margin';

  @override
  String get labelOperatingMargin => 'Operating margin';

  @override
  String get labelNetMargin => 'Net margin';

  @override
  String get labelRoe => 'Ribar kan jari (ROE)';

  @override
  String get labelRoa => 'Ribar kan kadarori (ROA)';

  @override
  String get labelDebtToEquity => 'Bashi / jari';

  @override
  String get labelCurrentRatio => 'Current ratio';

  @override
  String get labelRevenueGrowth => 'Ƙaruwar kuɗin shiga (YoY)';

  @override
  String get labelEpsGrowth => 'Ƙaruwar EPS (YoY)';

  @override
  String get labelDividendYield => 'Yawan rabon riba';

  @override
  String get labelDividendPerShare => 'Rabon riba kan kowane hannun jari';

  @override
  String get labelPayoutRatio => 'Rabon biyan riba';

  @override
  String get labelConsensus => 'Matsayar manazarta';

  @override
  String get ratingStrongBuy => 'Saya sosai';

  @override
  String get ratingBuy => 'Saya';

  @override
  String get ratingHold => 'Riƙe';

  @override
  String get ratingSell => 'Sayar';

  @override
  String get ratingStrongSell => 'Sayar sosai';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'Manazarta $count', one: 'Manazarci 1');
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Lokaci: $period';
  }

  @override
  String get noNews => 'Babu sabbin labarai.';

  @override
  String get openArticle => 'Buɗe labarin';

  @override
  String get openLinkFailed => 'Ba a iya buɗe hanyar haɗin ba.';

  @override
  String get recognitionSummary => 'Taƙaitawa';

  @override
  String get recognitionEvidence => 'Dalilin da ya sa muke tunanin haka';

  @override
  String get recognitionRawText => 'Rubutun da aka karanta daga hoton';

  @override
  String get errMissingAnthropicKey =>
      'Ba a saita ganewar hoto ba (babu ANTHROPIC_API_KEY). Shigar da ticker da hannu.';

  @override
  String get errRecognitionUnreachable => 'Ba a iya kaiwa ga sabis na ganewa ba. Duba haɗin intanet ɗinka.';

  @override
  String errRecognitionHttp(String status) {
    return 'Sabis na ganewa ya dawo da kuskure (HTTP $status).';
  }

  @override
  String get errRecognitionRefused => 'Sabis na ganewa bai iya aiwatar da wannan hoto ba.';

  @override
  String get errRecognitionTruncated => 'An katse amsar ganewa. Da fatan a sake gwada.';

  @override
  String get errRecognitionBadResponse => 'Amsa da ba a yi tsammani ba daga sabis na ganewa.';

  @override
  String get errRecognitionEmpty => 'Sabis na ganewa ya dawo da amsa mara komai.';

  @override
  String get errMissingFinnhubKey => 'Ba a saita bayanan kasuwa ba (babu FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable => 'Ba a iya kaiwa ga sabis na bayanan kasuwa ba. Duba haɗin intanet ɗinka.';

  @override
  String get errMarketRateLimited => 'Buƙatu da yawa ga sabis na bayanan kasuwa. Da fatan a jira minti ɗaya.';

  @override
  String errMarketHttp(String status) {
    return 'Sabis na bayanan kasuwa ya dawo da kuskure (HTTP $status).';
  }

  @override
  String get errMarketBadResponse => 'Amsa da ba a yi tsammani ba daga sabis na bayanan kasuwa.';

  @override
  String errNoQuote(String symbol) {
    return 'Ba a sami bayanan farashi na $symbol ba.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Ba a sami bayanin kamfani na $symbol ba.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Yanayin demo yana goyon bayan $symbols kawai. Ƙara FINNHUB_API_KEY don bayanai kai tsaye.';
  }

  @override
  String errUnknown(String detail) {
    return 'Wani abu ya ɓaci: $detail';
  }

  @override
  String get newSearch => 'Sabon bincike';

  @override
  String get recentSearches => 'Na kwanan nan';

  @override
  String get noRecentSearches => 'Babu binciken kwanan nan tukuna.';

  @override
  String get clearRecent => 'Share na kwanan nan';

  @override
  String get greeting => 'Wane hannun jari za mu duba?';

  @override
  String get searchHint => 'Ticker ko sunan kamfani';

  @override
  String get attachImage => 'Haɗa hoto';

  @override
  String get searchResultsTitle => 'Sakamakon bincike';

  @override
  String errNoResults(String query) {
    return 'Ba a sami hannun jari don “$query” ba.';
  }

  @override
  String get quickBarHint => 'Rubuta ticker ko sunan kamfani…';

  @override
  String get openFullWindow => 'Buɗe taga';

  @override
  String hotkeyHint(String shortcut) {
    return 'Danna $shortcut a ko\'ina don kiran Reszveny.';
  }

  @override
  String get trayOpen => 'Buɗe Reszveny';

  @override
  String get trayQuickSearch => 'Bincike cikin sauri';

  @override
  String get trayQuit => 'Fita';

  @override
  String get appearance => 'Kamanni';

  @override
  String get themeSystem => 'Na\'ura';

  @override
  String get themeDark => 'Duhu';

  @override
  String get themeLight => 'Haske';

  @override
  String get back => 'Baya';

  @override
  String get aiSectionTitle => 'Nazarin AI';

  @override
  String get aiIntro =>
      'Cikakken bayani da AI ya rubuta: taƙaitaccen sabbin labarai, kasuwancin, ƙarfi, haɗari da abubuwan da ba a gani, ƙima da abin da za a sa ido a kai.';

  @override
  String get aiGenerate => 'Ƙirƙiri nazari';

  @override
  String get aiRegenerate => 'Sake ƙirƙira';

  @override
  String get aiGenerating => 'Ana shirya nazarin… wannan na iya ɗaukar minti ɗaya ko biyu.';

  @override
  String get aiSources => 'Madogara';

  @override
  String aiGeneratedAt(String time) {
    return 'An ƙirƙira $time';
  }

  @override
  String get aiDisclaimer =>
      'Nazarin da AI ya ƙirƙira bisa bayanan da ake samu a fili da sabbin labarai. Yana iya ƙunsar kurakurai ko ya zama tsoho, kuma ba shawarar zuba jari ba ne.';

  @override
  String get errAiNotConfigured => 'Ba a saita nazarin AI ba (babu ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable => 'Ba a iya kaiwa ga sabis na AI ba. Duba haɗin intanet ɗinka.';

  @override
  String errAiHttp(String status) {
    return 'Sabis na AI ya dawo da kuskure (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Sabis na AI ya ƙi yin nazarin wannan hannun jari.';

  @override
  String get errAiBadResponse => 'Amsa da ba a yi tsammani ba daga sabis na AI.';

  @override
  String get sectionChart => 'Jadawalin farashi';

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
  String get chartUnavailable => 'Tarihin farashi babu shi daga madogarar bayanai ta yanzu.';

  @override
  String get sectionStatements => 'Rahotannin kuɗi (na shekara-shekara)';

  @override
  String get labelFiscalYear => 'Shekarar kuɗi';

  @override
  String get labelRevenue => 'Kuɗin shiga';

  @override
  String get labelNetIncome => 'Tsantsar riba';

  @override
  String get labelTotalAssets => 'Jimillar kadarori';

  @override
  String get labelTotalLiabilities => 'Jimillar basussuka';

  @override
  String get labelEquity => 'Jarin masu hannun jari';

  @override
  String get labelOperatingCashFlow => 'Kwararar kuɗin ayyuka';

  @override
  String get statementsUnavailable => 'Babu rahotannin kuɗi da aka bayar na wannan hannun jari.';

  @override
  String get launchAtLogin => 'Buɗe lokacin shiga';

  @override
  String get hotkeyLabel => 'Gajeriyar hanya ta gabaɗaya';

  @override
  String get hotkeyRecordHint => 'Danna nan, sannan ka danna sabon haɗin maɓallan';

  @override
  String get hotkeyReset => 'Mayar da tsoho';

  @override
  String get pasteImage => 'Liƙa hoto daga clipboard';

  @override
  String get errClipboardNoImage => 'Babu hoto a clipboard.';
}
