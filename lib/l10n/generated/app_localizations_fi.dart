// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get appTitle => 'StockLens';

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

  @override
  String get newSearch => 'Uusi haku';

  @override
  String get recentSearches => 'Viimeisimmät';

  @override
  String get noRecentSearches => 'Ei viimeaikaisia hakuja.';

  @override
  String get clearRecent => 'Tyhjennä viimeisimmät';

  @override
  String get greeting => 'Mitä osaketta tarkastellaan?';

  @override
  String get searchHint => 'Tunnus tai yrityksen nimi';

  @override
  String get attachImage => 'Liitä kuva';

  @override
  String get searchResultsTitle => 'Hakutulokset';

  @override
  String errNoResults(String query) {
    return 'Osakkeita ei löytynyt haulla ”$query”.';
  }

  @override
  String get quickBarHint => 'Kirjoita tunnus tai yrityksen nimi…';

  @override
  String get openFullWindow => 'Avaa ikkuna';

  @override
  String hotkeyHint(String shortcut) {
    return 'Paina $shortcut missä tahansa, niin StockLens avautuu.';
  }

  @override
  String get trayOpen => 'Avaa StockLens';

  @override
  String get trayQuickSearch => 'Pikahaku';

  @override
  String get trayQuit => 'Lopeta';

  @override
  String get appearance => 'Ulkoasu';

  @override
  String get themeSystem => 'Järjestelmä';

  @override
  String get themeDark => 'Tumma';

  @override
  String get themeLight => 'Vaalea';

  @override
  String get back => 'Takaisin';

  @override
  String get aiSectionTitle => 'Tekoälyanalyysi';

  @override
  String get aiIntro =>
      'Yksityiskohtainen, tekoälyn kirjoittama katsaus: tuoreiden uutisten yhteenveto, liiketoiminta, vahvuudet, riskit ja piilevät tekijät, arvostus, hintanäkymä skenaarioineen psykologisesta, sosiologisesta, teknisestä ja makrotalouden näkökulmasta sekä mitä seurata.';

  @override
  String get aiGenerate => 'Luo analyysi';

  @override
  String get aiRegenerate => 'Luo uudelleen';

  @override
  String get aiGenerating =>
      'Valmistellaan analyysia… tämä voi kestää minuutin tai kaksi.';

  @override
  String get aiSources => 'Lähteet';

  @override
  String aiGeneratedAt(String time) {
    return 'Luotu $time';
  }

  @override
  String get aiDisclaimer =>
      'Tekoälyn tuottama analyysi, joka perustuu julkisiin tietoihin ja tuoreisiin uutisiin. Se voi sisältää virheitä tai olla vanhentunut, eikä se ole sijoitusneuvontaa.';

  @override
  String get errAiNotConfigured =>
      'Tekoälyanalyysia ei ole määritetty (ei ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Tekoälypalveluun ei saatu yhteyttä. Tarkista internetyhteytesi.';

  @override
  String errAiHttp(String status) {
    return 'Tekoälypalvelu palautti virheen (HTTP $status).';
  }

  @override
  String get errAiRefused =>
      'Tekoälypalvelu kieltäytyi analysoimasta tätä osaketta.';

  @override
  String get errAiBadResponse => 'Odottamaton vastaus tekoälypalvelulta.';

  @override
  String get sectionChart => 'Kurssikaavio';

  @override
  String get rangeOneWeek => '1vk';

  @override
  String get rangeOneMonth => '1kk';

  @override
  String get rangeThreeMonths => '3kk';

  @override
  String get rangeOneYear => '1v';

  @override
  String get rangeFiveYears => '5v';

  @override
  String get chartUnavailable =>
      'Kurssihistoria ei ole saatavilla nykyisestä tietolähteestä.';

  @override
  String get sectionStatements => 'Tilinpäätöstiedot (vuosittain)';

  @override
  String get labelFiscalYear => 'Tilikausi';

  @override
  String get labelRevenue => 'Liikevaihto';

  @override
  String get labelNetIncome => 'Nettotulos';

  @override
  String get labelTotalAssets => 'Varat yhteensä';

  @override
  String get labelTotalLiabilities => 'Velat yhteensä';

  @override
  String get labelEquity => 'Oma pääoma';

  @override
  String get labelOperatingCashFlow => 'Liiketoiminnan rahavirta';

  @override
  String get statementsUnavailable =>
      'Raportoituja tilinpäätöstietoja ei ole saatavilla tälle osakkeelle.';

  @override
  String get launchAtLogin => 'Käynnistä sisäänkirjautuessa';

  @override
  String get hotkeyLabel => 'Yleinen pikanäppäin';

  @override
  String get hotkeyRecordHint =>
      'Napsauta tätä ja paina sitten uutta näppäinyhdistelmää';

  @override
  String get hotkeyReset => 'Palauta oletus';

  @override
  String get pasteImage => 'Liitä kuva leikepöydältä';

  @override
  String get errClipboardNoImage => 'Leikepöydällä ei ole kuvaa.';

  @override
  String get favorites => 'Suosikit';

  @override
  String get addToFavorites => 'Lisää suosikkeihin';

  @override
  String get removeFromFavorites => 'Poista suosikeista';

  @override
  String get noFavorites =>
      'Ei vielä suosikkeja. Napauta osakkeen tähteä lisätäksesi sen.';

  @override
  String get displayCurrency => 'Näyttövaluutta';

  @override
  String get displayCurrencyNone => 'Vain osakkeen oma valuutta';

  @override
  String labelConverted(String currency) {
    return '≈ valuutassa $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Kurssi: 1 $from = $rate $to (EKP, $date)';
  }

  @override
  String get updates => 'Päivitykset';

  @override
  String currentVersion(String version) {
    return 'Versio $version';
  }

  @override
  String get autoUpdate => 'Asenna päivitykset automaattisesti';

  @override
  String get checkForUpdates => 'Tarkista päivitykset';

  @override
  String get updateChecking => 'Tarkistetaan päivityksiä…';

  @override
  String get updateUpToDate => 'Käytössäsi on uusin versio.';

  @override
  String updateAvailable(String version) {
    return 'Versio $version on saatavilla.';
  }

  @override
  String get updateDownloading => 'Päivitystä ladataan taustalla…';

  @override
  String get updateDownloaded =>
      'Päivitys on valmis. Käynnistä sovellus uudelleen asentaaksesi sen.';

  @override
  String get updateNow => 'Päivitä';

  @override
  String get restartNow => 'Käynnistä uudelleen';

  @override
  String get updatesViaStore =>
      'Päivitykset saapuvat automaattisesti sovelluskaupan kautta.';

  @override
  String get updateCheckFailed => 'Päivityksiä ei voitu tarkistaa.';

  @override
  String get subscription => 'Tilaus';

  @override
  String get planTrial => 'Kokeilu';

  @override
  String get planNormal => 'Normaali';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max 1';

  @override
  String get planMax2 => 'Max 2';

  @override
  String get planNone => 'Ei aktiivista pakettia';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count analyysia kuukaudessa';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$days päivän ilmainen kokeilu, $count analyysia';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Kokeilua jäljellä $days päivää',
      one: 'Kokeilua jäljellä 1 päivä',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Ilmainen kokeilusi on päättynyt. Valitse paketti jatkaaksesi analysointia.';

  @override
  String analysesRemaining(int remaining, int total) {
    return '$remaining/$total analyysia jäljellä tällä jaksolla';
  }

  @override
  String extraCredits(int count) {
    return '$count lisäanalyysia';
  }

  @override
  String renewsOn(String date) {
    return 'Uusiutuu $date';
  }

  @override
  String get choosePlan => 'Valitse paketti';

  @override
  String get currentPlan => 'Nykyinen paketti';

  @override
  String get subscribe => 'Tilaa';

  @override
  String get perMonth => '/ kk';

  @override
  String get extraPacksTitle => 'Tarvitsetko lisää? Osta lisäanalyyseja';

  @override
  String get extraPacksHint =>
      'Lisäanalyysit eivät vanhene koskaan, ja ne käytetään kuukausikiintiön jälkeen.';

  @override
  String get buy => 'Osta';

  @override
  String get restorePurchases => 'Palauta ostokset';

  @override
  String get manageSubscription => 'Hallitse tilausta';

  @override
  String get purchaseSuccess => 'Kiitos! Ostoksesi on aktiivinen.';

  @override
  String get purchasePending => 'Ostos odottaa…';

  @override
  String get purchaseFailed => 'Ostosta ei voitu viedä loppuun.';

  @override
  String get purchaseCanceled => 'Ostos peruutettiin.';

  @override
  String get billingUnavailable =>
      'Ostokset eivät ole vielä saatavilla tällä alustalla. Tilaa puhelimella tai Macilla; pakettisi toimii kaikilla laitteilla.';

  @override
  String get errQuotaExceeded =>
      'Analyyseja ei ole jäljellä tällä jaksolla. Päivitä pakettisi tai osta lisäanalyyseja.';

  @override
  String get errTrialExpired =>
      'Ilmainen kokeilusi on päättynyt. Valitse paketti jatkaaksesi.';

  @override
  String get errNoPlan => 'Tekoälyanalyysi edellyttää aktiivista pakettia.';

  @override
  String get viewPlans => 'Näytä paketit';

  @override
  String get usageTitle => 'Käyttö';

  @override
  String get demoPurchaseNote =>
      'Demolaskutus: ostokset simuloidaan tällä alustalla.';

  @override
  String get mostPopular => 'Suosituin';

  @override
  String get bestValue => 'Paras vastine rahalle';

  @override
  String get planFeaturesCommon =>
      'Kuvantunnistus, reaaliaikaiset tiedot, kaaviot, suosikit ja kaikki 44 kieltä sisältyvät jokaiseen pakettiin. Kiintiö koskee tekoälyanalyyseja.';
}
