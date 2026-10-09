// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Albanian (`sq`).
class AppLocalizationsSq extends AppLocalizations {
  AppLocalizationsSq([String locale = 'sq']) : super(locale);

  @override
  String get appTitle => 'Reszveny';

  @override
  String get homeTagline =>
      'Fotografoni një aksion dhe mësoni gjithçka për të.';

  @override
  String get homeHint =>
      'Një certifikatë aksionesh, ekrani i një aplikacioni brokerimi, një gazetë ose logoja e një kompanie – çdo gjë që identifikon një aksion.';

  @override
  String get takePhoto => 'Bëj një foto';

  @override
  String get chooseFromGallery => 'Zgjidh nga galeria';

  @override
  String get chooseImage => 'Zgjidh një imazh';

  @override
  String get enterTickerManually => 'Shkruaj simbolin manualisht';

  @override
  String get tickerInputLabel => 'Simboli i aksionit (ticker)';

  @override
  String get tickerInputHint => 'p.sh. AAPL';

  @override
  String get lookUp => 'Kërko';

  @override
  String demoModeBanner(String symbols) {
    return 'Modaliteti demo – nuk është konfiguruar çelës për të dhënat e tregut. Të dhëna shembull janë të disponueshme për: $symbols.';
  }

  @override
  String get recognizing => 'Duke analizuar imazhin…';

  @override
  String get loadingData => 'Duke ngarkuar të dhënat…';

  @override
  String get noCandidatesTitle => 'Nuk u njoh asnjë aksion';

  @override
  String get noCandidatesBody =>
      'Nuk mundëm të identifikojmë një aksion në këtë imazh. Provoni një foto më të qartë ose shkruani simbolin manualisht.';

  @override
  String get whatWeSaw => 'Çfarë pamë';

  @override
  String get chooseCandidateTitle => 'Cilin aksion kishit parasysh?';

  @override
  String confidencePercent(int percent) {
    return '$percent% siguri';
  }

  @override
  String get settings => 'Cilësimet';

  @override
  String get language => 'Gjuha';

  @override
  String get systemLanguage => 'Parazgjedhja e sistemit';

  @override
  String get about => 'Rreth aplikacionit';

  @override
  String get disclaimer =>
      'Ky aplikacion ofron vetëm informacion dhe nuk përbën këshillë investimi. Të dhënat mund të jenë të vonuara ose të pasakta.';

  @override
  String dataSource(String source) {
    return 'Burimi i të dhënave: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Njohja: $source';
  }

  @override
  String get retry => 'Provo përsëri';

  @override
  String get cancel => 'Anulo';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Mbyll';

  @override
  String get errorGeneric => 'Ndodhi një gabim.';

  @override
  String get errorSectionUnavailable => 'Ky seksion nuk mund të ngarkohej.';

  @override
  String get notAvailable => 'n/a';

  @override
  String get sectionIdentity => 'Identifikimi';

  @override
  String get sectionPrice => 'Çmimi';

  @override
  String get sectionValuation => 'Vlerësimi';

  @override
  String get sectionFinancials => 'Të dhënat financiare';

  @override
  String get sectionDividend => 'Dividendi';

  @override
  String get sectionProfile => 'Profili i kompanisë';

  @override
  String get sectionAnalysts => 'Vlerësimet e analistëve';

  @override
  String get sectionNews => 'Lajme';

  @override
  String get sectionRecognition => 'Detajet e njohjes';

  @override
  String get labelSymbol => 'Simboli';

  @override
  String get labelExchange => 'Bursa';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Monedha';

  @override
  String get labelCountry => 'Shteti';

  @override
  String get labelIndustry => 'Industria';

  @override
  String get labelSector => 'Sektori';

  @override
  String get labelWebsite => 'Faqja e internetit';

  @override
  String get labelIpoDate => 'Data e IPO-s';

  @override
  String get labelMarketCap => 'Kapitalizimi i tregut';

  @override
  String get labelSharesOutstanding => 'Aksione në qarkullim';

  @override
  String get labelEmployees => 'Punonjës';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Selia';

  @override
  String get labelDescription => 'Përshkrimi';

  @override
  String get labelLastPrice => 'Çmimi i fundit';

  @override
  String get labelChange => 'Ndryshimi';

  @override
  String get labelOpen => 'Hapja';

  @override
  String get labelDayHigh => 'Maksimumi ditor';

  @override
  String get labelDayLow => 'Minimumi ditor';

  @override
  String get labelPreviousClose => 'Mbyllja e mëparshme';

  @override
  String get labelWeek52High => 'Maksimumi 52-javor';

  @override
  String get labelWeek52Low => 'Minimumi 52-javor';

  @override
  String get labelAverageVolume10d => 'Vol. mesatar (10 ditë)';

  @override
  String updatedAt(String time) {
    return 'Përditësuar $time';
  }

  @override
  String get labelPeTrailing => 'P/E (aktual)';

  @override
  String get labelPeForward => 'P/E (i pritshëm)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / fluksi i lirë i parasë';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Të ardhurat (TTM)';

  @override
  String get labelNetIncomeTtm => 'Fitimi neto (TTM)';

  @override
  String get labelGrossMargin => 'Marzhi bruto';

  @override
  String get labelOperatingMargin => 'Marzhi operativ';

  @override
  String get labelNetMargin => 'Marzhi neto';

  @override
  String get labelRoe => 'Kthimi nga kapitali';

  @override
  String get labelRoa => 'Kthimi nga aktivet';

  @override
  String get labelDebtToEquity => 'Borxhi / kapitali';

  @override
  String get labelCurrentRatio => 'Raporti i likuiditetit';

  @override
  String get labelRevenueGrowth => 'Rritja e të ardhurave (YoY)';

  @override
  String get labelEpsGrowth => 'Rritja e EPS (YoY)';

  @override
  String get labelDividendYield => 'Rendimenti i dividendit';

  @override
  String get labelDividendPerShare => 'Dividendi për aksion';

  @override
  String get labelPayoutRatio => 'Raporti i shpërndarjes';

  @override
  String get labelConsensus => 'Konsensusi';

  @override
  String get ratingStrongBuy => 'Blerje e fortë';

  @override
  String get ratingBuy => 'Blerje';

  @override
  String get ratingHold => 'Mbaj';

  @override
  String get ratingSell => 'Shitje';

  @override
  String get ratingStrongSell => 'Shitje e fortë';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analistë',
      one: '1 analist',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Periudha: $period';
  }

  @override
  String get noNews => 'Nuk ka lajme të fundit.';

  @override
  String get openArticle => 'Hap artikullin';

  @override
  String get openLinkFailed => 'Lidhja nuk mund të hapej.';

  @override
  String get recognitionSummary => 'Përmbledhje';

  @override
  String get recognitionEvidence => 'Pse mendojmë kështu';

  @override
  String get recognitionRawText => 'Teksti i lexuar nga imazhi';

  @override
  String get errMissingAnthropicKey =>
      'Njohja e imazheve nuk është konfiguruar (mungon ANTHROPIC_API_KEY). Shkruani simbolin manualisht.';

  @override
  String get errRecognitionUnreachable =>
      'Shërbimi i njohjes nuk mund të arrihej. Kontrolloni lidhjen e internetit.';

  @override
  String errRecognitionHttp(String status) {
    return 'Shërbimi i njohjes ktheu një gabim (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Shërbimi i njohjes nuk mundi të përpunojë këtë imazh.';

  @override
  String get errRecognitionTruncated =>
      'Përgjigjja e njohjes u ndërpre. Ju lutemi provoni përsëri.';

  @override
  String get errRecognitionBadResponse =>
      'Përgjigje e papritur nga shërbimi i njohjes.';

  @override
  String get errRecognitionEmpty =>
      'Shërbimi i njohjes ktheu një përgjigje bosh.';

  @override
  String get errMissingFinnhubKey =>
      'Të dhënat e tregut nuk janë konfiguruar (mungon FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Shërbimi i të dhënave të tregut nuk mund të arrihej. Kontrolloni lidhjen e internetit.';

  @override
  String get errMarketRateLimited =>
      'Shumë kërkesa drejt shërbimit të të dhënave të tregut. Ju lutemi prisni një minutë.';

  @override
  String errMarketHttp(String status) {
    return 'Shërbimi i të dhënave të tregut ktheu një gabim (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Përgjigje e papritur nga shërbimi i të dhënave të tregut.';

  @override
  String errNoQuote(String symbol) {
    return 'Nuk u gjetën të dhëna çmimi për $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Nuk u gjet profil kompanie për $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Modaliteti demo mbështet vetëm $symbols. Shtoni një FINNHUB_API_KEY për të dhëna në kohë reale.';
  }

  @override
  String errUnknown(String detail) {
    return 'Ndodhi një gabim: $detail';
  }
}
