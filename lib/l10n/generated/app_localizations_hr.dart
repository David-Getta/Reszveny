// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsHr extends AppLocalizations {
  AppLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get appTitle => 'Reszveny';

  @override
  String get homeTagline => 'Fotografirajte dionicu i saznajte sve o njoj.';

  @override
  String get homeHint =>
      'Potvrda o dionicama, zaslon brokerske aplikacije, novine ili logotip tvrtke – bilo što što identificira dionicu.';

  @override
  String get takePhoto => 'Snimi fotografiju';

  @override
  String get chooseFromGallery => 'Odaberi iz galerije';

  @override
  String get chooseImage => 'Odaberi sliku';

  @override
  String get enterTickerManually => 'Ručno unesi ticker';

  @override
  String get tickerInputLabel => 'Ticker simbol';

  @override
  String get tickerInputHint => 'npr. AAPL';

  @override
  String get lookUp => 'Pretraži';

  @override
  String demoModeBanner(String symbols) {
    return 'Demo način – ključ za tržišne podatke nije postavljen. Ogledni podaci dostupni su za: $symbols.';
  }

  @override
  String get recognizing => 'Analiza slike…';

  @override
  String get loadingData => 'Učitavanje podataka…';

  @override
  String get noCandidatesTitle => 'Dionica nije prepoznata';

  @override
  String get noCandidatesBody =>
      'Nismo uspjeli identificirati dionicu na ovoj slici. Pokušajte s oštrijom fotografijom ili ručno unesite ticker.';

  @override
  String get whatWeSaw => 'Što smo vidjeli';

  @override
  String get chooseCandidateTitle => 'Koju ste dionicu mislili?';

  @override
  String confidencePercent(int percent) {
    return '$percent% pouzdanosti';
  }

  @override
  String get settings => 'Postavke';

  @override
  String get language => 'Jezik';

  @override
  String get systemLanguage => 'Zadano sustavom';

  @override
  String get about => 'O aplikaciji';

  @override
  String get disclaimer =>
      'Ova aplikacija pruža samo informacije i nije investicijski savjet. Podaci mogu kasniti ili biti netočni.';

  @override
  String dataSource(String source) {
    return 'Izvor podataka: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Prepoznavanje: $source';
  }

  @override
  String get retry => 'Pokušaj ponovno';

  @override
  String get cancel => 'Odustani';

  @override
  String get ok => 'U redu';

  @override
  String get close => 'Zatvori';

  @override
  String get errorGeneric => 'Nešto je pošlo po krivu.';

  @override
  String get errorSectionUnavailable =>
      'Ovaj odjeljak nije bilo moguće učitati.';

  @override
  String get notAvailable => 'n/d';

  @override
  String get sectionIdentity => 'Identifikacija';

  @override
  String get sectionPrice => 'Cijena';

  @override
  String get sectionValuation => 'Vrednovanje';

  @override
  String get sectionFinancials => 'Financijski podaci';

  @override
  String get sectionDividend => 'Dividenda';

  @override
  String get sectionProfile => 'Profil tvrtke';

  @override
  String get sectionAnalysts => 'Ocjene analitičara';

  @override
  String get sectionNews => 'Vijesti';

  @override
  String get sectionRecognition => 'Detalji prepoznavanja';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Burza';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Valuta';

  @override
  String get labelCountry => 'Država';

  @override
  String get labelIndustry => 'Industrija';

  @override
  String get labelSector => 'Sektor';

  @override
  String get labelWebsite => 'Web-stranica';

  @override
  String get labelIpoDate => 'Datum IPO-a';

  @override
  String get labelMarketCap => 'Tržišna kapitalizacija';

  @override
  String get labelSharesOutstanding => 'Dionice u optjecaju';

  @override
  String get labelEmployees => 'Zaposlenici';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Sjedište';

  @override
  String get labelDescription => 'Opis';

  @override
  String get labelLastPrice => 'Zadnja cijena';

  @override
  String get labelChange => 'Promjena';

  @override
  String get labelOpen => 'Otvaranje';

  @override
  String get labelDayHigh => 'Dnevni maksimum';

  @override
  String get labelDayLow => 'Dnevni minimum';

  @override
  String get labelPreviousClose => 'Prethodno zatvaranje';

  @override
  String get labelWeek52High => '52-tjedni maksimum';

  @override
  String get labelWeek52Low => '52-tjedni minimum';

  @override
  String get labelAverageVolume10d => 'Prosj. volumen (10 dana)';

  @override
  String updatedAt(String time) {
    return 'Ažurirano $time';
  }

  @override
  String get labelPeTrailing => 'P/E (tekući)';

  @override
  String get labelPeForward => 'P/E (očekivani)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / slobodni novčani tok';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Prihodi (TTM)';

  @override
  String get labelNetIncomeTtm => 'Neto dobit (TTM)';

  @override
  String get labelGrossMargin => 'Bruto marža';

  @override
  String get labelOperatingMargin => 'Operativna marža';

  @override
  String get labelNetMargin => 'Neto marža';

  @override
  String get labelRoe => 'Povrat na kapital';

  @override
  String get labelRoa => 'Povrat na imovinu';

  @override
  String get labelDebtToEquity => 'Dug / kapital';

  @override
  String get labelCurrentRatio => 'Koeficijent tekuće likvidnosti';

  @override
  String get labelRevenueGrowth => 'Rast prihoda (YoY)';

  @override
  String get labelEpsGrowth => 'Rast EPS-a (YoY)';

  @override
  String get labelDividendYield => 'Dividendni prinos';

  @override
  String get labelDividendPerShare => 'Dividenda po dionici';

  @override
  String get labelPayoutRatio => 'Omjer isplate';

  @override
  String get labelConsensus => 'Konsenzus';

  @override
  String get ratingStrongBuy => 'Snažna kupnja';

  @override
  String get ratingBuy => 'Kupnja';

  @override
  String get ratingHold => 'Zadržati';

  @override
  String get ratingSell => 'Prodaja';

  @override
  String get ratingStrongSell => 'Snažna prodaja';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analitičara',
      few: '$count analitičara',
      one: '$count analitičar',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Razdoblje: $period';
  }

  @override
  String get noNews => 'Nema nedavnih vijesti.';

  @override
  String get openArticle => 'Otvori članak';

  @override
  String get openLinkFailed => 'Poveznicu nije bilo moguće otvoriti.';

  @override
  String get recognitionSummary => 'Sažetak';

  @override
  String get recognitionEvidence => 'Zašto tako mislimo';

  @override
  String get recognitionRawText => 'Tekst pročitan sa slike';

  @override
  String get errMissingAnthropicKey =>
      'Prepoznavanje slika nije postavljeno (nema ANTHROPIC_API_KEY). Ručno unesite ticker.';

  @override
  String get errRecognitionUnreachable =>
      'Nije moguće dohvatiti servis za prepoznavanje. Provjerite internetsku vezu.';

  @override
  String errRecognitionHttp(String status) {
    return 'Servis za prepoznavanje vratio je grešku (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Servis za prepoznavanje nije mogao obraditi ovu sliku.';

  @override
  String get errRecognitionTruncated =>
      'Odgovor prepoznavanja je prekinut. Pokušajte ponovno.';

  @override
  String get errRecognitionBadResponse =>
      'Neočekivan odgovor servisa za prepoznavanje.';

  @override
  String get errRecognitionEmpty =>
      'Servis za prepoznavanje vratio je prazan odgovor.';

  @override
  String get errMissingFinnhubKey =>
      'Tržišni podaci nisu postavljeni (nema FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Nije moguće dohvatiti servis tržišnih podataka. Provjerite internetsku vezu.';

  @override
  String get errMarketRateLimited =>
      'Previše zahtjeva prema servisu tržišnih podataka. Pričekajte minutu.';

  @override
  String errMarketHttp(String status) {
    return 'Servis tržišnih podataka vratio je grešku (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Neočekivan odgovor servisa tržišnih podataka.';

  @override
  String errNoQuote(String symbol) {
    return 'Nisu pronađeni podaci o cijeni za $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Nije pronađen profil tvrtke za $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Demo način podržava samo $symbols. Dodajte FINNHUB_API_KEY za podatke u stvarnom vremenu.';
  }

  @override
  String errUnknown(String detail) {
    return 'Nešto je pošlo po krivu: $detail';
  }
}
