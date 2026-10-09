// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get appTitle => 'Reszveny';

  @override
  String get homeTagline => 'Fotografera en aktie och lär dig allt om den.';

  @override
  String get homeHint =>
      'Ett aktiebrev, en skärm i en mäklarapp, en tidning eller en företagslogotyp – allt som identifierar en aktie.';

  @override
  String get takePhoto => 'Ta ett foto';

  @override
  String get chooseFromGallery => 'Välj från galleriet';

  @override
  String get chooseImage => 'Välj en bild';

  @override
  String get enterTickerManually => 'Ange ticker manuellt';

  @override
  String get tickerInputLabel => 'Tickersymbol';

  @override
  String get tickerInputHint => 't.ex. AAPL';

  @override
  String get lookUp => 'Sök';

  @override
  String demoModeBanner(String symbols) {
    return 'Demoläge – ingen marknadsdatanyckel konfigurerad. Exempeldata finns för: $symbols.';
  }

  @override
  String get recognizing => 'Analyserar bilden…';

  @override
  String get loadingData => 'Läser in data…';

  @override
  String get noCandidatesTitle => 'Ingen aktie identifierad';

  @override
  String get noCandidatesBody =>
      'Vi kunde inte identifiera någon aktie i bilden. Prova ett skarpare foto eller ange tickern manuellt.';

  @override
  String get whatWeSaw => 'Vad vi såg';

  @override
  String get chooseCandidateTitle => 'Vilken aktie menade du?';

  @override
  String confidencePercent(int percent) {
    return '$percent% säkerhet';
  }

  @override
  String get settings => 'Inställningar';

  @override
  String get language => 'Språk';

  @override
  String get systemLanguage => 'Systemstandard';

  @override
  String get about => 'Om';

  @override
  String get disclaimer =>
      'Appen tillhandahåller endast information och utgör inte investeringsrådgivning. Data kan vara fördröjd eller felaktig.';

  @override
  String dataSource(String source) {
    return 'Datakälla: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Igenkänning: $source';
  }

  @override
  String get retry => 'Försök igen';

  @override
  String get cancel => 'Avbryt';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Stäng';

  @override
  String get errorGeneric => 'Något gick fel.';

  @override
  String get errorSectionUnavailable =>
      'Det här avsnittet kunde inte läsas in.';

  @override
  String get notAvailable => 'ej tillg.';

  @override
  String get sectionIdentity => 'Identifiering';

  @override
  String get sectionPrice => 'Kurs';

  @override
  String get sectionValuation => 'Värdering';

  @override
  String get sectionFinancials => 'Nyckeltal';

  @override
  String get sectionDividend => 'Utdelning';

  @override
  String get sectionProfile => 'Företagsprofil';

  @override
  String get sectionAnalysts => 'Analytikerrekommendationer';

  @override
  String get sectionNews => 'Nyheter';

  @override
  String get sectionRecognition => 'Igenkänningsdetaljer';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Börs';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Valuta';

  @override
  String get labelCountry => 'Land';

  @override
  String get labelIndustry => 'Bransch';

  @override
  String get labelSector => 'Sektor';

  @override
  String get labelWebsite => 'Webbplats';

  @override
  String get labelIpoDate => 'IPO-datum';

  @override
  String get labelMarketCap => 'Börsvärde';

  @override
  String get labelSharesOutstanding => 'Utestående aktier';

  @override
  String get labelEmployees => 'Anställda';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Huvudkontor';

  @override
  String get labelDescription => 'Beskrivning';

  @override
  String get labelLastPrice => 'Senaste kurs';

  @override
  String get labelChange => 'Förändring';

  @override
  String get labelOpen => 'Öppning';

  @override
  String get labelDayHigh => 'Dagshögsta';

  @override
  String get labelDayLow => 'Dagslägsta';

  @override
  String get labelPreviousClose => 'Föregående stängning';

  @override
  String get labelWeek52High => '52-veckors högsta';

  @override
  String get labelWeek52Low => '52-veckors lägsta';

  @override
  String get labelAverageVolume10d => 'Snittvolym (10 dagar)';

  @override
  String updatedAt(String time) {
    return 'Uppdaterad $time';
  }

  @override
  String get labelPeTrailing => 'P/E (historiskt)';

  @override
  String get labelPeForward => 'P/E (framåtblickande)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / fritt kassaflöde';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Omsättning (TTM)';

  @override
  String get labelNetIncomeTtm => 'Nettoresultat (TTM)';

  @override
  String get labelGrossMargin => 'Bruttomarginal';

  @override
  String get labelOperatingMargin => 'Rörelsemarginal';

  @override
  String get labelNetMargin => 'Nettomarginal';

  @override
  String get labelRoe => 'Avkastning på eget kapital';

  @override
  String get labelRoa => 'Avkastning på tillgångar';

  @override
  String get labelDebtToEquity => 'Skuld / eget kapital';

  @override
  String get labelCurrentRatio => 'Balanslikviditet';

  @override
  String get labelRevenueGrowth => 'Omsättningstillväxt (YoY)';

  @override
  String get labelEpsGrowth => 'EPS-tillväxt (YoY)';

  @override
  String get labelDividendYield => 'Direktavkastning';

  @override
  String get labelDividendPerShare => 'Utdelning per aktie';

  @override
  String get labelPayoutRatio => 'Utdelningsandel';

  @override
  String get labelConsensus => 'Konsensus';

  @override
  String get ratingStrongBuy => 'Starkt köp';

  @override
  String get ratingBuy => 'Köp';

  @override
  String get ratingHold => 'Behåll';

  @override
  String get ratingSell => 'Sälj';

  @override
  String get ratingStrongSell => 'Starkt sälj';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analytiker',
      one: '1 analytiker',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Period: $period';
  }

  @override
  String get noNews => 'Inga aktuella nyheter.';

  @override
  String get openArticle => 'Öppna artikel';

  @override
  String get openLinkFailed => 'Länken kunde inte öppnas.';

  @override
  String get recognitionSummary => 'Sammanfattning';

  @override
  String get recognitionEvidence => 'Varför vi tror det';

  @override
  String get recognitionRawText => 'Text läst från bilden';

  @override
  String get errMissingAnthropicKey =>
      'Bildigenkänning är inte konfigurerad (ingen ANTHROPIC_API_KEY). Ange tickern manuellt.';

  @override
  String get errRecognitionUnreachable =>
      'Kunde inte nå igenkänningstjänsten. Kontrollera din internetanslutning.';

  @override
  String errRecognitionHttp(String status) {
    return 'Igenkänningstjänsten returnerade ett fel (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Igenkänningstjänsten kunde inte behandla bilden.';

  @override
  String get errRecognitionTruncated =>
      'Svaret från igenkänningstjänsten avbröts. Försök igen.';

  @override
  String get errRecognitionBadResponse =>
      'Oväntat svar från igenkänningstjänsten.';

  @override
  String get errRecognitionEmpty =>
      'Igenkänningstjänsten returnerade ett tomt svar.';

  @override
  String get errMissingFinnhubKey =>
      'Marknadsdata är inte konfigurerad (ingen FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Kunde inte nå marknadsdatatjänsten. Kontrollera din internetanslutning.';

  @override
  String get errMarketRateLimited =>
      'För många förfrågningar till marknadsdatatjänsten. Vänta en minut.';

  @override
  String errMarketHttp(String status) {
    return 'Marknadsdatatjänsten returnerade ett fel (HTTP $status).';
  }

  @override
  String get errMarketBadResponse => 'Oväntat svar från marknadsdatatjänsten.';

  @override
  String errNoQuote(String symbol) {
    return 'Inga kursdata hittades för $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Ingen företagsprofil hittades för $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Demoläget stöder endast $symbols. Lägg till en FINNHUB_API_KEY för realtidsdata.';
  }

  @override
  String errUnknown(String detail) {
    return 'Något gick fel: $detail';
  }
}
