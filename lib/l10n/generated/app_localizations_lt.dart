// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lithuanian (`lt`).
class AppLocalizationsLt extends AppLocalizations {
  AppLocalizationsLt([String locale = 'lt']) : super(locale);

  @override
  String get appTitle => 'Reszveny';

  @override
  String get homeTagline =>
      'Nufotografuokite akciją ir sužinokite apie ją viską.';

  @override
  String get homeHint =>
      'Akcijos sertifikatas, brokerio programėlės ekranas, laikraštis ar įmonės logotipas – bet kas, kas identifikuoja akciją.';

  @override
  String get takePhoto => 'Fotografuoti';

  @override
  String get chooseFromGallery => 'Pasirinkti iš galerijos';

  @override
  String get chooseImage => 'Pasirinkti vaizdą';

  @override
  String get enterTickerManually => 'Įvesti simbolį rankiniu būdu';

  @override
  String get tickerInputLabel => 'Akcijos simbolis';

  @override
  String get tickerInputHint => 'pvz. AAPL';

  @override
  String get lookUp => 'Ieškoti';

  @override
  String demoModeBanner(String symbols) {
    return 'Demonstracinis režimas – rinkos duomenų raktas nenustatytas. Pavyzdiniai duomenys prieinami: $symbols.';
  }

  @override
  String get recognizing => 'Analizuojamas vaizdas…';

  @override
  String get loadingData => 'Įkeliami duomenys…';

  @override
  String get noCandidatesTitle => 'Akcija neatpažinta';

  @override
  String get noCandidatesBody =>
      'Šiame vaizde nepavyko identifikuoti akcijos. Pabandykite ryškesnę nuotrauką arba įveskite simbolį rankiniu būdu.';

  @override
  String get whatWeSaw => 'Ką matėme';

  @override
  String get chooseCandidateTitle => 'Kurią akciją turėjote omenyje?';

  @override
  String confidencePercent(int percent) {
    return '$percent % tikrumas';
  }

  @override
  String get settings => 'Nustatymai';

  @override
  String get language => 'Kalba';

  @override
  String get systemLanguage => 'Sistemos numatytoji';

  @override
  String get about => 'Apie';

  @override
  String get disclaimer =>
      'Ši programėlė teikia tik informaciją ir nėra investavimo rekomendacija. Duomenys gali vėluoti arba būti netikslūs.';

  @override
  String dataSource(String source) {
    return 'Duomenų šaltinis: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Atpažinimas: $source';
  }

  @override
  String get retry => 'Bandyti dar kartą';

  @override
  String get cancel => 'Atšaukti';

  @override
  String get ok => 'Gerai';

  @override
  String get close => 'Užverti';

  @override
  String get errorGeneric => 'Kažkas nutiko ne taip.';

  @override
  String get errorSectionUnavailable => 'Nepavyko įkelti šios dalies.';

  @override
  String get notAvailable => 'n/d';

  @override
  String get sectionIdentity => 'Identifikacija';

  @override
  String get sectionPrice => 'Kaina';

  @override
  String get sectionValuation => 'Vertinimas';

  @override
  String get sectionFinancials => 'Finansai';

  @override
  String get sectionDividend => 'Dividendai';

  @override
  String get sectionProfile => 'Įmonės profilis';

  @override
  String get sectionAnalysts => 'Analitikų vertinimai';

  @override
  String get sectionNews => 'Naujienos';

  @override
  String get sectionRecognition => 'Atpažinimo detalės';

  @override
  String get labelSymbol => 'Simbolis';

  @override
  String get labelExchange => 'Birža';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Valiuta';

  @override
  String get labelCountry => 'Šalis';

  @override
  String get labelIndustry => 'Pramonės šaka';

  @override
  String get labelSector => 'Sektorius';

  @override
  String get labelWebsite => 'Svetainė';

  @override
  String get labelIpoDate => 'IPO data';

  @override
  String get labelMarketCap => 'Rinkos kapitalizacija';

  @override
  String get labelSharesOutstanding => 'Apyvartoje esančios akcijos';

  @override
  String get labelEmployees => 'Darbuotojai';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Būstinė';

  @override
  String get labelDescription => 'Aprašymas';

  @override
  String get labelLastPrice => 'Paskutinė kaina';

  @override
  String get labelChange => 'Pokytis';

  @override
  String get labelOpen => 'Atidarymo kaina';

  @override
  String get labelDayHigh => 'Dienos maksimumas';

  @override
  String get labelDayLow => 'Dienos minimumas';

  @override
  String get labelPreviousClose => 'Ankstesnė uždarymo kaina';

  @override
  String get labelWeek52High => '52 savaičių maksimumas';

  @override
  String get labelWeek52Low => '52 savaičių minimumas';

  @override
  String get labelAverageVolume10d => 'Vid. apimtis (10 d.)';

  @override
  String updatedAt(String time) {
    return 'Atnaujinta $time';
  }

  @override
  String get labelPeTrailing => 'P/E (praėjusių 12 mėn.)';

  @override
  String get labelPeForward => 'P/E (prognozuojamas)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / laisvasis pinigų srautas';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Pajamos (TTM)';

  @override
  String get labelNetIncomeTtm => 'Grynasis pelnas (TTM)';

  @override
  String get labelGrossMargin => 'Bendroji marža';

  @override
  String get labelOperatingMargin => 'Veiklos marža';

  @override
  String get labelNetMargin => 'Grynoji marža';

  @override
  String get labelRoe => 'Nuosavo kapitalo grąža';

  @override
  String get labelRoa => 'Turto grąža';

  @override
  String get labelDebtToEquity => 'Skola / nuosavas kapitalas';

  @override
  String get labelCurrentRatio => 'Einamojo likvidumo koeficientas';

  @override
  String get labelRevenueGrowth => 'Pajamų augimas (YoY)';

  @override
  String get labelEpsGrowth => 'EPS augimas (YoY)';

  @override
  String get labelDividendYield => 'Dividendų pajamingumas';

  @override
  String get labelDividendPerShare => 'Dividendas vienai akcijai';

  @override
  String get labelPayoutRatio => 'Išmokėjimo koeficientas';

  @override
  String get labelConsensus => 'Konsensusas';

  @override
  String get ratingStrongBuy => 'Tikrai pirkti';

  @override
  String get ratingBuy => 'Pirkti';

  @override
  String get ratingHold => 'Laikyti';

  @override
  String get ratingSell => 'Parduoti';

  @override
  String get ratingStrongSell => 'Tikrai parduoti';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analitikų',
      many: '$count analitiko',
      few: '$count analitikai',
      one: '$count analitikas',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Laikotarpis: $period';
  }

  @override
  String get noNews => 'Naujausių naujienų nėra.';

  @override
  String get openArticle => 'Atidaryti straipsnį';

  @override
  String get openLinkFailed => 'Nepavyko atidaryti nuorodos.';

  @override
  String get recognitionSummary => 'Santrauka';

  @override
  String get recognitionEvidence => 'Kodėl taip manome';

  @override
  String get recognitionRawText => 'Iš vaizdo nuskaitytas tekstas';

  @override
  String get errMissingAnthropicKey =>
      'Vaizdų atpažinimas nesukonfigūruotas (nėra ANTHROPIC_API_KEY). Įveskite simbolį rankiniu būdu.';

  @override
  String get errRecognitionUnreachable =>
      'Nepavyko pasiekti atpažinimo paslaugos. Patikrinkite interneto ryšį.';

  @override
  String errRecognitionHttp(String status) {
    return 'Atpažinimo paslauga grąžino klaidą (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Atpažinimo paslauga negalėjo apdoroti šio vaizdo.';

  @override
  String get errRecognitionTruncated =>
      'Atpažinimo paslaugos atsakymas buvo nutrauktas. Bandykite dar kartą.';

  @override
  String get errRecognitionBadResponse =>
      'Netikėtas atpažinimo paslaugos atsakymas.';

  @override
  String get errRecognitionEmpty =>
      'Atpažinimo paslauga grąžino tuščią atsakymą.';

  @override
  String get errMissingFinnhubKey =>
      'Rinkos duomenys nesukonfigūruoti (nėra FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Nepavyko pasiekti rinkos duomenų paslaugos. Patikrinkite interneto ryšį.';

  @override
  String get errMarketRateLimited =>
      'Per daug užklausų rinkos duomenų paslaugai. Palaukite minutę.';

  @override
  String errMarketHttp(String status) {
    return 'Rinkos duomenų paslauga grąžino klaidą (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Netikėtas rinkos duomenų paslaugos atsakymas.';

  @override
  String errNoQuote(String symbol) {
    return 'Kainos duomenų $symbol nerasta.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Įmonės profilio $symbol nerasta.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Demonstracinis režimas palaiko tik $symbols. Pridėkite FINNHUB_API_KEY, kad gautumėte realius duomenis.';
  }

  @override
  String errUnknown(String detail) {
    return 'Kažkas nutiko ne taip: $detail';
  }

  @override
  String get newSearch => 'Nauja paieška';

  @override
  String get recentSearches => 'Naujausios';

  @override
  String get noRecentSearches => 'Naujausių paieškų dar nėra.';

  @override
  String get clearRecent => 'Išvalyti naujausias';

  @override
  String get greeting => 'Kurią akciją pažiūrėsime?';

  @override
  String get searchHint => 'Simbolis arba įmonės pavadinimas';

  @override
  String get attachImage => 'Pridėti vaizdą';

  @override
  String get searchResultsTitle => 'Paieškos rezultatai';

  @override
  String errNoResults(String query) {
    return 'Pagal „$query“ akcijų nerasta.';
  }

  @override
  String get quickBarHint => 'Įveskite simbolį arba įmonės pavadinimą…';

  @override
  String get openFullWindow => 'Atverti langą';

  @override
  String hotkeyHint(String shortcut) {
    return 'Paspauskite $shortcut bet kur, kad iškviestumėte Reszveny.';
  }

  @override
  String get trayOpen => 'Atverti Reszveny';

  @override
  String get trayQuickSearch => 'Greitoji paieška';

  @override
  String get trayQuit => 'Baigti darbą';

  @override
  String get appearance => 'Išvaizda';

  @override
  String get themeSystem => 'Sistemos';

  @override
  String get themeDark => 'Tamsi';

  @override
  String get themeLight => 'Šviesi';

  @override
  String get back => 'Atgal';
}
