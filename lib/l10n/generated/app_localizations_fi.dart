// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get appTitle => 'Reszveny';

  @override
  String get homeTagline => 'Kuvaa osake ja opi siitä kaikki.';

  @override
  String get homeHint =>
      'Osakekirja, välittäjäsovelluksen näyttö, sanomalehti tai yrityksen logo – mikä tahansa, mikä tunnistaa osakkeen.';

  @override
  String get takePhoto => 'Ota kuva';

  @override
  String get chooseFromGallery => 'Valitse galleriasta';

  @override
  String get chooseImage => 'Valitse kuva';

  @override
  String get enterTickerManually => 'Syötä tunnus manuaalisesti';

  @override
  String get tickerInputLabel => 'Osaketunnus';

  @override
  String get tickerInputHint => 'esim. AAPL';

  @override
  String get lookUp => 'Hae';

  @override
  String demoModeBanner(String symbols) {
    return 'Demotila – markkinadatan avainta ei ole määritetty. Esimerkkidataa on saatavilla: $symbols.';
  }

  @override
  String get recognizing => 'Analysoidaan kuvaa…';

  @override
  String get loadingData => 'Ladataan tietoja…';

  @override
  String get noCandidatesTitle => 'Osaketta ei tunnistettu';

  @override
  String get noCandidatesBody =>
      'Kuvasta ei löytynyt tunnistettavaa osaketta. Kokeile tarkempaa kuvaa tai syötä tunnus manuaalisesti.';

  @override
  String get whatWeSaw => 'Mitä näimme';

  @override
  String get chooseCandidateTitle => 'Mitä osaketta tarkoitit?';

  @override
  String confidencePercent(int percent) {
    return '$percent % varmuus';
  }

  @override
  String get settings => 'Asetukset';

  @override
  String get language => 'Kieli';

  @override
  String get systemLanguage => 'Järjestelmän oletus';

  @override
  String get about => 'Tietoja';

  @override
  String get disclaimer =>
      'Sovellus tarjoaa vain tietoa, eikä se ole sijoitusneuvontaa. Tiedot voivat olla viivästyneitä tai virheellisiä.';

  @override
  String dataSource(String source) {
    return 'Tietolähde: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Tunnistus: $source';
  }

  @override
  String get retry => 'Yritä uudelleen';

  @override
  String get cancel => 'Peruuta';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Sulje';

  @override
  String get errorGeneric => 'Jokin meni vikaan.';

  @override
  String get errorSectionUnavailable => 'Tätä osiota ei voitu ladata.';

  @override
  String get notAvailable => 'ei saatavilla';

  @override
  String get sectionIdentity => 'Tunnistetiedot';

  @override
  String get sectionPrice => 'Kurssi';

  @override
  String get sectionValuation => 'Arvostus';

  @override
  String get sectionFinancials => 'Tunnusluvut';

  @override
  String get sectionDividend => 'Osinko';

  @override
  String get sectionProfile => 'Yritysprofiili';

  @override
  String get sectionAnalysts => 'Analyytikkosuositukset';

  @override
  String get sectionNews => 'Uutiset';

  @override
  String get sectionRecognition => 'Tunnistuksen tiedot';

  @override
  String get labelSymbol => 'Tunnus';

  @override
  String get labelExchange => 'Pörssi';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Valuutta';

  @override
  String get labelCountry => 'Maa';

  @override
  String get labelIndustry => 'Toimiala';

  @override
  String get labelSector => 'Sektori';

  @override
  String get labelWebsite => 'Verkkosivusto';

  @override
  String get labelIpoDate => 'IPO-päivä';

  @override
  String get labelMarketCap => 'Markkina-arvo';

  @override
  String get labelSharesOutstanding => 'Ulkona olevat osakkeet';

  @override
  String get labelEmployees => 'Työntekijät';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Pääkonttori';

  @override
  String get labelDescription => 'Kuvaus';

  @override
  String get labelLastPrice => 'Viimeisin kurssi';

  @override
  String get labelChange => 'Muutos';

  @override
  String get labelOpen => 'Avaus';

  @override
  String get labelDayHigh => 'Päivän ylin';

  @override
  String get labelDayLow => 'Päivän alin';

  @override
  String get labelPreviousClose => 'Edellinen päätös';

  @override
  String get labelWeek52High => '52 viikon ylin';

  @override
  String get labelWeek52Low => '52 viikon alin';

  @override
  String get labelAverageVolume10d => 'Keskim. vaihto (10 pv)';

  @override
  String updatedAt(String time) {
    return 'Päivitetty $time';
  }

  @override
  String get labelPeTrailing => 'P/E (toteutunut)';

  @override
  String get labelPeForward => 'P/E (ennuste)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / vapaa kassavirta';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Liikevaihto (TTM)';

  @override
  String get labelNetIncomeTtm => 'Nettotulos (TTM)';

  @override
  String get labelGrossMargin => 'Bruttomarginaali';

  @override
  String get labelOperatingMargin => 'Liikevoittomarginaali';

  @override
  String get labelNetMargin => 'Nettomarginaali';

  @override
  String get labelRoe => 'Oman pääoman tuotto';

  @override
  String get labelRoa => 'Kokonaispääoman tuotto';

  @override
  String get labelDebtToEquity => 'Velka / oma pääoma';

  @override
  String get labelCurrentRatio => 'Current ratio';

  @override
  String get labelRevenueGrowth => 'Liikevaihdon kasvu (YoY)';

  @override
  String get labelEpsGrowth => 'EPS:n kasvu (YoY)';

  @override
  String get labelDividendYield => 'Osinkotuotto';

  @override
  String get labelDividendPerShare => 'Osinko per osake';

  @override
  String get labelPayoutRatio => 'Osingonjakosuhde';

  @override
  String get labelConsensus => 'Konsensus';

  @override
  String get ratingStrongBuy => 'Vahva osta';

  @override
  String get ratingBuy => 'Osta';

  @override
  String get ratingHold => 'Pidä';

  @override
  String get ratingSell => 'Myy';

  @override
  String get ratingStrongSell => 'Vahva myy';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analyytikkoa',
      one: '1 analyytikko',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Ajanjakso: $period';
  }

  @override
  String get noNews => 'Ei tuoreita uutisia.';

  @override
  String get openArticle => 'Avaa artikkeli';

  @override
  String get openLinkFailed => 'Linkkiä ei voitu avata.';

  @override
  String get recognitionSummary => 'Yhteenveto';

  @override
  String get recognitionEvidence => 'Miksi uskomme näin';

  @override
  String get recognitionRawText => 'Kuvasta luettu teksti';

  @override
  String get errMissingAnthropicKey =>
      'Kuvantunnistusta ei ole määritetty (ei ANTHROPIC_API_KEY). Syötä tunnus manuaalisesti.';

  @override
  String get errRecognitionUnreachable =>
      'Tunnistuspalveluun ei saatu yhteyttä. Tarkista internetyhteytesi.';

  @override
  String errRecognitionHttp(String status) {
    return 'Tunnistuspalvelu palautti virheen (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Tunnistuspalvelu ei pystynyt käsittelemään tätä kuvaa.';

  @override
  String get errRecognitionTruncated =>
      'Tunnistuspalvelun vastaus katkesi. Yritä uudelleen.';

  @override
  String get errRecognitionBadResponse =>
      'Odottamaton vastaus tunnistuspalvelulta.';

  @override
  String get errRecognitionEmpty =>
      'Tunnistuspalvelu palautti tyhjän vastauksen.';

  @override
  String get errMissingFinnhubKey =>
      'Markkinadataa ei ole määritetty (ei FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Markkinadatapalveluun ei saatu yhteyttä. Tarkista internetyhteytesi.';

  @override
  String get errMarketRateLimited =>
      'Liian monta pyyntöä markkinadatapalveluun. Odota hetki.';

  @override
  String errMarketHttp(String status) {
    return 'Markkinadatapalvelu palautti virheen (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Odottamaton vastaus markkinadatapalvelulta.';

  @override
  String errNoQuote(String symbol) {
    return 'Kurssitietoja ei löytynyt tunnukselle $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Yritysprofiilia ei löytynyt tunnukselle $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Demotila tukee vain: $symbols. Lisää FINNHUB_API_KEY saadaksesi reaaliaikaista dataa.';
  }

  @override
  String errUnknown(String detail) {
    return 'Jokin meni vikaan: $detail';
  }
}
