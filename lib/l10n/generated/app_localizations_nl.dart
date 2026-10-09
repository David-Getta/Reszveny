// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'Reszveny';

  @override
  String get homeTagline => 'Fotografeer een aandeel en ontdek er alles over.';

  @override
  String get homeHint =>
      'Een aandeelbewijs, een scherm van een brokerapp, een krant of een bedrijfslogo – alles wat een aandeel identificeert.';

  @override
  String get takePhoto => 'Foto maken';

  @override
  String get chooseFromGallery => 'Kiezen uit galerij';

  @override
  String get chooseImage => 'Afbeelding kiezen';

  @override
  String get enterTickerManually => 'Ticker handmatig invoeren';

  @override
  String get tickerInputLabel => 'Tickersymbool';

  @override
  String get tickerInputHint => 'bijv. AAPL';

  @override
  String get lookUp => 'Opzoeken';

  @override
  String demoModeBanner(String symbols) {
    return 'Demomodus – geen marktdatasleutel ingesteld. Voorbeelddata beschikbaar voor: $symbols.';
  }

  @override
  String get recognizing => 'Afbeelding wordt geanalyseerd…';

  @override
  String get loadingData => 'Gegevens laden…';

  @override
  String get noCandidatesTitle => 'Geen aandeel herkend';

  @override
  String get noCandidatesBody =>
      'We konden geen aandeel in deze afbeelding herkennen. Probeer een scherpere foto of voer de ticker handmatig in.';

  @override
  String get whatWeSaw => 'Wat we zagen';

  @override
  String get chooseCandidateTitle => 'Welk aandeel bedoelde je?';

  @override
  String confidencePercent(int percent) {
    return '$percent% zekerheid';
  }

  @override
  String get settings => 'Instellingen';

  @override
  String get language => 'Taal';

  @override
  String get systemLanguage => 'Systeemstandaard';

  @override
  String get about => 'Over';

  @override
  String get disclaimer =>
      'Deze app geeft uitsluitend informatie en is geen beleggingsadvies. Gegevens kunnen vertraagd of onjuist zijn.';

  @override
  String dataSource(String source) {
    return 'Gegevensbron: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Herkenning: $source';
  }

  @override
  String get retry => 'Opnieuw proberen';

  @override
  String get cancel => 'Annuleren';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Sluiten';

  @override
  String get errorGeneric => 'Er is iets misgegaan.';

  @override
  String get errorSectionUnavailable => 'Deze sectie kon niet worden geladen.';

  @override
  String get notAvailable => 'n.v.t.';

  @override
  String get sectionIdentity => 'Identificatie';

  @override
  String get sectionPrice => 'Koers';

  @override
  String get sectionValuation => 'Waardering';

  @override
  String get sectionFinancials => 'Financiële cijfers';

  @override
  String get sectionDividend => 'Dividend';

  @override
  String get sectionProfile => 'Bedrijfsprofiel';

  @override
  String get sectionAnalysts => 'Analistenadviezen';

  @override
  String get sectionNews => 'Nieuws';

  @override
  String get sectionRecognition => 'Herkenningsdetails';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Beurs';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Valuta';

  @override
  String get labelCountry => 'Land';

  @override
  String get labelIndustry => 'Branche';

  @override
  String get labelSector => 'Sector';

  @override
  String get labelWebsite => 'Website';

  @override
  String get labelIpoDate => 'IPO-datum';

  @override
  String get labelMarketCap => 'Marktkapitalisatie';

  @override
  String get labelSharesOutstanding => 'Uitstaande aandelen';

  @override
  String get labelEmployees => 'Werknemers';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Hoofdkantoor';

  @override
  String get labelDescription => 'Omschrijving';

  @override
  String get labelLastPrice => 'Laatste koers';

  @override
  String get labelChange => 'Verandering';

  @override
  String get labelOpen => 'Opening';

  @override
  String get labelDayHigh => 'Dagrecord hoog';

  @override
  String get labelDayLow => 'Dagrecord laag';

  @override
  String get labelPreviousClose => 'Vorige slotkoers';

  @override
  String get labelWeek52High => '52-weeks hoog';

  @override
  String get labelWeek52Low => '52-weeks laag';

  @override
  String get labelAverageVolume10d => 'Gem. volume (10 dagen)';

  @override
  String updatedAt(String time) {
    return 'Bijgewerkt $time';
  }

  @override
  String get labelPeTrailing => 'K/W (P/E, achterlopend)';

  @override
  String get labelPeForward => 'K/W (P/E, verwacht)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / vrije kasstroom';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Bèta';

  @override
  String get labelRevenueTtm => 'Omzet (TTM)';

  @override
  String get labelNetIncomeTtm => 'Nettowinst (TTM)';

  @override
  String get labelGrossMargin => 'Brutomarge';

  @override
  String get labelOperatingMargin => 'Operationele marge';

  @override
  String get labelNetMargin => 'Nettomarge';

  @override
  String get labelRoe => 'Rendement op eigen vermogen';

  @override
  String get labelRoa => 'Rendement op activa';

  @override
  String get labelDebtToEquity => 'Schuld / eigen vermogen';

  @override
  String get labelCurrentRatio => 'Current ratio';

  @override
  String get labelRevenueGrowth => 'Omzetgroei (YoY)';

  @override
  String get labelEpsGrowth => 'EPS-groei (YoY)';

  @override
  String get labelDividendYield => 'Dividendrendement';

  @override
  String get labelDividendPerShare => 'Dividend per aandeel';

  @override
  String get labelPayoutRatio => 'Uitkeringsratio';

  @override
  String get labelConsensus => 'Consensus';

  @override
  String get ratingStrongBuy => 'Sterk kopen';

  @override
  String get ratingBuy => 'Kopen';

  @override
  String get ratingHold => 'Houden';

  @override
  String get ratingSell => 'Verkopen';

  @override
  String get ratingStrongSell => 'Sterk verkopen';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analisten',
      one: '1 analist',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Periode: $period';
  }

  @override
  String get noNews => 'Geen recent nieuws.';

  @override
  String get openArticle => 'Artikel openen';

  @override
  String get openLinkFailed => 'De link kon niet worden geopend.';

  @override
  String get recognitionSummary => 'Samenvatting';

  @override
  String get recognitionEvidence => 'Waarom we dit denken';

  @override
  String get recognitionRawText => 'Tekst gelezen uit de afbeelding';

  @override
  String get errMissingAnthropicKey =>
      'Beeldherkenning is niet ingesteld (geen ANTHROPIC_API_KEY). Voer de ticker handmatig in.';

  @override
  String get errRecognitionUnreachable =>
      'De herkenningsdienst is niet bereikbaar. Controleer je internetverbinding.';

  @override
  String errRecognitionHttp(String status) {
    return 'De herkenningsdienst gaf een fout terug (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'De herkenningsdienst kon deze afbeelding niet verwerken.';

  @override
  String get errRecognitionTruncated =>
      'Het antwoord van de herkenningsdienst is afgebroken. Probeer het opnieuw.';

  @override
  String get errRecognitionBadResponse =>
      'Onverwacht antwoord van de herkenningsdienst.';

  @override
  String get errRecognitionEmpty =>
      'De herkenningsdienst gaf een leeg antwoord terug.';

  @override
  String get errMissingFinnhubKey =>
      'Marktdata is niet ingesteld (geen FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'De marktdatadienst is niet bereikbaar. Controleer je internetverbinding.';

  @override
  String get errMarketRateLimited =>
      'Te veel verzoeken aan de marktdatadienst. Wacht even een minuut.';

  @override
  String errMarketHttp(String status) {
    return 'De marktdatadienst gaf een fout terug (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Onverwacht antwoord van de marktdatadienst.';

  @override
  String errNoQuote(String symbol) {
    return 'Geen koersgegevens gevonden voor $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Geen bedrijfsprofiel gevonden voor $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'De demomodus ondersteunt alleen $symbols. Voeg een FINNHUB_API_KEY toe voor livedata.';
  }

  @override
  String errUnknown(String detail) {
    return 'Er is iets misgegaan: $detail';
  }
}
